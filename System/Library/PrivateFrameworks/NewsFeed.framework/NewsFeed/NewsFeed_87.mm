uint64_t sub_1D6306BB4(uint64_t *a1, void (*a2)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a1[1];
  swift_retain_n();
  result = sub_1D726449C();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D5C82990(0, &qword_1EC885930);
        v11 = sub_1D726276C();
        *(v11 + 16) = v10;
      }

      v12[0] = (v11 + 32);
      v12[1] = v10;

      sub_1D630610C(v12, v13, a1, v9, a2, a3);

      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {

    sub_1D62FAB18(0, v7, 1, a1, a2, a3);
  }
}

void sub_1D6306D3C()
{
  if (!qword_1EDF01D40)
  {
    sub_1D630B814(255, &qword_1EDF046B8, MEMORY[0x1E69E66A8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF01D40);
    }
  }
}

uint64_t sub_1D6306DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D6306E10()
{
  if (!qword_1EC88EAD0)
  {
    sub_1D5C82990(255, &qword_1EC885930);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88EAD0);
    }
  }
}

uint64_t sub_1D6306E88(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_1D5C82990(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D6306EF4()
{
  if (!qword_1EC885948)
  {
    sub_1D5C82990(255, &unk_1EC88EAF0);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC885948);
    }
  }
}

void sub_1D6306F5C()
{
  if (!qword_1EC88EB00)
  {
    sub_1D5C82990(255, &qword_1EC885950);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88EB00);
    }
  }
}

unint64_t sub_1D6306FC4()
{
  result = qword_1EDF1B480;
  if (!qword_1EDF1B480)
  {
    sub_1D5B7F04C(255, &qword_1EDF3C930, &type metadata for FeedSlot, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B480);
  }

  return result;
}

unint64_t sub_1D63070F0()
{
  result = qword_1EDF39C68;
  if (!qword_1EDF39C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF39C68);
  }

  return result;
}

unint64_t sub_1D63071A0()
{
  result = qword_1EDF12E38;
  if (!qword_1EDF12E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12E38);
  }

  return result;
}

unint64_t sub_1D6307250()
{
  result = qword_1EDF15500;
  if (!qword_1EDF15500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15500);
  }

  return result;
}

uint64_t sub_1D63072A4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a6)
{
  v7 = v6;
  v12 = swift_allocObject();
  v134 = a5;
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v116 = a3;
  v117 = a6;
  v13 = a3[1];
  if (v13 < 1)
  {
    swift_retain_n();
    v15 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v118 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    v95 = swift_allocObject();
    *(v95 + 16) = v134;
    *(v95 + 24) = a6;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v15 = sub_1D62FF50C(v15);
    }

    v133 = v15;
    v96 = *(v15 + 16);
    if (v96 >= 2)
    {
      do
      {
        v97 = *v116;
        if (!*v116)
        {
          goto LABEL_130;
        }

        v98 = v7;
        v99 = *(v15 + 16 * v96);
        v100 = v15;
        v101 = *(v15 + 16 * (v96 - 1) + 40);
        v102 = (v97 + 160 * v99);
        v103 = (v97 + 160 * *(v15 + 16 * (v96 - 1) + 32));
        v104 = (v97 + 160 * v101);
        v15 = v117;

        sub_1D62FE478(v102, v103, v104, v118, v134, v117);
        v7 = v98;
        if (v98)
        {
        }

        if (v101 < v99)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_1D62FF50C(v100);
        }

        if (v96 - 2 >= *(v100 + 2))
        {
          goto LABEL_120;
        }

        v105 = &v100[16 * v96];
        *v105 = v99;
        *(v105 + 1) = v101;
        v133 = v100;
        sub_1D62FF480(v96 - 1);
        v15 = v133;
        v96 = *(v133 + 16);
      }

      while (v96 > 1);
    }
  }

  swift_retain_n();
  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  v109 = a4;
  while (1)
  {
    v16 = v14;
    v17 = v14 + 1;
    if (v17 >= v13)
    {
      v13 = v17;
    }

    else
    {
      v118 = v15;
      v18 = (*v116 + 160 * v17);
      v15 = 160 * v16;
      v19 = (*v116 + 160 * v16);
      v20 = *v19;
      *&v124 = *v18;
      sub_1D5EE5AF8((v18 + 1), &v124 + 8);
      v122 = v20;
      sub_1D5EE5AF8((v19 + 1), v123);
      v134(&v121, &v124, &v122);
      sub_1D6306DB0(&v122, &unk_1EDF046E8, &type metadata for FeedTag, sub_1D630B5A4);
      sub_1D6306DB0(&v124, &unk_1EDF046E8, &type metadata for FeedTag, sub_1D630B5A4);
      v21 = v121;
      v108 = v16;
      v22 = v16 + 2;
      v23 = (v19 + 41);
      while (v13 != v22)
      {
        v24 = *(v23 - 168);
        *&v124 = *(v23 - 8);
        sub_1D5EE5AF8(v23, &v124 + 8);
        v122 = v24;
        sub_1D5EE5AF8(v23 - 160, v123);
        v134(&v121, &v124, &v122);
        sub_1D6306DB0(&v122, &unk_1EDF046E8, &type metadata for FeedTag, sub_1D630B5A4);
        sub_1D6306DB0(&v124, &unk_1EDF046E8, &type metadata for FeedTag, sub_1D630B5A4);
        ++v22;
        v23 += 160;
        if (v21 != v121)
        {
          v13 = v22 - 1;
          goto LABEL_9;
        }
      }

      v16 = v108;
      if (!v21)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (v13 < v108)
      {
        goto LABEL_123;
      }

      if (v108 < v13)
      {
        v25 = 160 * v13 - 160;
        v26 = v13;
        do
        {
          if (v16 != --v26)
          {
            v28 = *v116;
            if (!*v116)
            {
              goto LABEL_129;
            }

            v27 = (v28 + v25);
            v130 = *(v28 + v15 + 96);
            v131 = *(v28 + v15 + 112);
            v132[0] = *(v28 + v15 + 128);
            *(v132 + 9) = *(v28 + v15 + 137);
            v126 = *(v28 + v15 + 32);
            v127 = *(v28 + v15 + 48);
            v128 = *(v28 + v15 + 64);
            v129 = *(v28 + v15 + 80);
            v124 = *(v28 + v15);
            v125 = *(v28 + v15 + 16);
            memmove((v28 + v15), (v28 + v25), 0xA0uLL);
            v27[6] = v130;
            v27[7] = v131;
            v27[8] = v132[0];
            *(v27 + 137) = *(v132 + 9);
            v27[2] = v126;
            v27[3] = v127;
            v27[4] = v128;
            v27[5] = v129;
            *v27 = v124;
            v27[1] = v125;
          }

          ++v16;
          v25 -= 160;
          v15 += 160;
        }

        while (v16 < v26);
        v15 = v118;
        v16 = v108;
        a4 = v109;
      }

      else
      {
LABEL_19:
        v15 = v118;
        a4 = v109;
      }
    }

    v29 = v116[1];
    if (v13 < v29)
    {
      if (__OFSUB__(v13, v16))
      {
        goto LABEL_122;
      }

      if (v13 - v16 < a4)
      {
        if (__OFADD__(v16, a4))
        {
          goto LABEL_124;
        }

        if (v16 + a4 >= v29)
        {
          v30 = v116[1];
        }

        else
        {
          v30 = v16 + a4;
        }

        if (v30 < v16)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v13 != v30)
        {
          break;
        }
      }
    }

    v31 = v13;
    if (v13 < v16)
    {
      goto LABEL_121;
    }

LABEL_31:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1D698BA94(0, *(v15 + 16) + 1, 1, v15);
    }

    v32 = v15;
    v15 = *(v15 + 16);
    v118 = v32;
    v33 = *(v32 + 24);
    v34 = v15 + 1;
    if (v15 >= v33 >> 1)
    {
      v118 = sub_1D698BA94((v33 > 1), v15 + 1, 1, v118);
    }

    *(v118 + 2) = v34;
    v35 = &v118[16 * v15];
    *(v35 + 4) = v16;
    *(v35 + 5) = v31;
    v111 = v31;
    v119 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (v15)
    {
      while (1)
      {
        v36 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        v37 = v118;
        if (v34 == 3)
        {
          v38 = *(v118 + 4);
          v39 = *(v118 + 5);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_50:
          if (v41)
          {
            goto LABEL_110;
          }

          v54 = &v37[16 * v34];
          v56 = *v54;
          v55 = *(v54 + 1);
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_113;
          }

          v60 = &v37[16 * v36 + 32];
          v62 = *v60;
          v61 = *(v60 + 1);
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_117;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v36 = v34 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v64 = &v118[16 * v34];
        v66 = *v64;
        v65 = *(v64 + 1);
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_64:
        if (v59)
        {
          goto LABEL_112;
        }

        v67 = &v37[16 * v36];
        v69 = *(v67 + 4);
        v68 = *(v67 + 5);
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_115;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_71:
        v75 = v36 - 1;
        if (v36 - 1 >= v34)
        {
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
          goto LABEL_125;
        }

        v76 = *v116;
        if (!*v116)
        {
          goto LABEL_128;
        }

        v77 = *&v37[16 * v75 + 32];
        v78 = *&v37[16 * v36 + 40];
        v79 = (v76 + 160 * v77);
        v80 = (v76 + 160 * *&v37[16 * v36 + 32]);
        v15 = v76 + 160 * v78;

        sub_1D62FE478(v79, v80, v15, v119, v134, v117);
        if (v7)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_106;
        }

        v81 = v118;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_1D62FF50C(v118);
        }

        if (v75 >= *(v81 + 2))
        {
          goto LABEL_107;
        }

        v82 = &v81[16 * v75];
        *(v82 + 4) = v77;
        *(v82 + 5) = v78;
        v133 = v81;
        sub_1D62FF480(v36);
        v118 = v133;
        v34 = *(v133 + 16);
        if (v34 <= 1)
        {
          goto LABEL_3;
        }
      }

      v37 = v118;
      v42 = &v118[16 * v34 + 32];
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_108;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_109;
      }

      v49 = &v118[16 * v34];
      v51 = *v49;
      v50 = *(v49 + 1);
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_111;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_114;
      }

      if (v53 >= v45)
      {
        v71 = &v118[16 * v36 + 32];
        v73 = *v71;
        v72 = *(v71 + 1);
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_118;
        }

        if (v40 < v74)
        {
          v36 = v34 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    a6 = v117;
    v13 = v116[1];
    v14 = v111;
    v15 = v118;
    a4 = v109;
    if (v111 >= v13)
    {
      goto LABEL_92;
    }
  }

  v107 = v7;
  v118 = v15;
  v120 = *v116;
  v83 = *v116 + 160 * v13 + 8;
  v84 = v16 - v13;
  v112 = v30;
LABEL_82:
  v114 = v83;
  v115 = v13;
  v113 = v84;
  while (1)
  {
    v85 = (v83 - 8);
    v87 = (v83 - 168);
    v86 = *(v83 - 168);
    v88 = v83 - 160;
    *&v124 = *(v83 - 8);
    sub_1D5EE5AF8(v83, &v124 + 8);
    v122 = v86;
    sub_1D5EE5AF8(v88, v123);
    v134(&v121, &v124, &v122);
    sub_1D6306DB0(&v122, &unk_1EDF046E8, &type metadata for FeedTag, sub_1D630B5A4);
    sub_1D6306DB0(&v124, &unk_1EDF046E8, &type metadata for FeedTag, sub_1D630B5A4);
    if (v121 != 1)
    {
LABEL_81:
      v13 = v115 + 1;
      v83 = v114 + 160;
      v31 = v112;
      v84 = v113 - 1;
      if (v115 + 1 != v112)
      {
        goto LABEL_82;
      }

      v7 = v107;
      v15 = v118;
      if (v112 < v16)
      {
        goto LABEL_121;
      }

      goto LABEL_31;
    }

    if (!v120)
    {
      break;
    }

    v130 = v85[6];
    v131 = v85[7];
    v132[0] = v85[8];
    *(v132 + 9) = *(v85 + 137);
    v126 = v85[2];
    v127 = v85[3];
    v128 = v85[4];
    v129 = v85[5];
    v124 = *v85;
    v125 = v85[1];
    v89 = v87[7];
    v85[6] = v87[6];
    v85[7] = v89;
    v90 = v87[9];
    v85[8] = v87[8];
    v85[9] = v90;
    v91 = v87[3];
    v85[2] = v87[2];
    v85[3] = v91;
    v92 = v87[5];
    v85[4] = v87[4];
    v85[5] = v92;
    v93 = v87[1];
    *v85 = *v87;
    v85[1] = v93;
    v87[6] = v130;
    v87[7] = v131;
    v87[8] = v132[0];
    *(v87 + 137) = *(v132 + 9);
    v87[2] = v126;
    v87[3] = v127;
    v87[4] = v128;
    v87[5] = v129;
    *v87 = v124;
    v87[1] = v125;
    v83 = v88;
    if (__CFADD__(v84++, 1))
    {
      goto LABEL_81;
    }
  }

  __break(1u);
LABEL_128:

  __break(1u);
LABEL_129:

  __break(1u);
LABEL_130:

  __break(1u);
LABEL_131:

  __break(1u);
LABEL_132:

  __break(1u);
  return result;
}

uint64_t sub_1D6307D4C(uint64_t *a1, void (*a2)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a1[1];
  swift_retain_n();
  result = sub_1D726449C();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D5C82990(0, &qword_1EDF04760);
        v11 = sub_1D726276C();
        *(v11 + 16) = v10;
      }

      v12[0] = (v11 + 32);
      v12[1] = v10;

      sub_1D63072A4(v12, v13, a1, v9, a2, a3);

      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {

    sub_1D62FA68C(0, v7, 1, a1, a2, a3);
  }
}

uint64_t sub_1D6307ED4(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a6, unint64_t *a7, void (*a8)(uint64_t), unint64_t *a9, void (*a10)(uint64_t), uint64_t a11, uint64_t (*a12)(void), uint64_t a13, void (*a14)(uint64_t, uint64_t, uint64_t, uint64_t, void (*)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t))
{
  v15 = v14;
  v166 = a1;
  v174 = a14;
  v183 = a7;
  v184 = a8;
  sub_1D5C17CEC(0, a7, a8);
  v191 = v20;
  v175 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v170 = v164 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v180 = v164 - v25;
  v189 = a9;
  v190 = a10;
  v26 = a3;
  sub_1D5C14BE8(0, a9, a10);
  v188 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v187 = (v164 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30, v31);
  v186 = (v164 - v32);
  v33 = swift_allocObject();
  v192 = a5;
  *(v33 + 16) = a5;
  *(v33 + 24) = a6;
  v164[1] = v33;
  v34 = a3[1];
  v193 = a6;
  v176 = a3;
  if (v34 < 1)
  {
    swift_retain_n();
    v36 = MEMORY[0x1E69E7CC0];
LABEL_98:
    v194 = *v166;
    if (!v194)
    {
      goto LABEL_137;
    }

    v151 = swift_allocObject();
    *(v151 + 16) = v192;
    *(v151 + 24) = a6;
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v191 = v151;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_100;
  }

  v164[0] = a4;
  v185 = a12;
  swift_retain_n();
  v35 = 0;
  v36 = MEMORY[0x1E69E7CC0];
  v37 = v191;
  while (1)
  {
    v38 = v35;
    v39 = v35 + 1;
    v168 = v36;
    if (v39 >= v34)
    {
      v56 = v39;
    }

    else
    {
      v177 = v34;
      v165 = v15;
      v40 = v37;
      v41 = *v26;
      v42 = *(v175 + 72);
      v179 = v42 * v39;
      v43 = (v41 + v42 * v39);
      v44 = v41;
      v45 = (v41 + v42 * v38);
      v46 = *v43;
      v47 = *(v40 + 48);
      v194 = *v45;
      v48 = v186;
      *v186 = v46;
      v49 = v188;
      v50 = v48 + *(v188 + 48);
      v167 = v38;
      v51 = v185;
      sub_1D5BD86D4(v43 + v47, v50, v185);
      v52 = v187;
      *v187 = v194;
      sub_1D5BD86D4(v45 + v47, v52 + *(v49 + 48), v51);
      v192((&v195 + 1), v48, v52);
      v54 = v189;
      v53 = v190;
      sub_1D630B668(v52, v189, v190, sub_1D5C14BE8);
      sub_1D630B668(v48, v54, v53, sub_1D5C14BE8);
      LODWORD(v181) = BYTE1(v195);
      v55 = v167 + 2;
      v182 = v42;
      v178 = v42 * (v167 + 2);
      while (1)
      {
        v56 = v177;
        if (v177 == v55)
        {
          break;
        }

        v57 = v44;
        v58 = v44 + v178;
        v59 = v44 + v179;
        v60 = *(v44 + v178);
        v194 = v55;
        v61 = *(v191 + 48);
        v62 = *(v44 + v179);
        v63 = v185;
        v64 = v186;
        *v186 = v60;
        v65 = v188;
        sub_1D5BD86D4(v58 + v61, v64 + *(v188 + 48), v63);
        v66 = v187;
        *v187 = v62;
        sub_1D5BD86D4(v59 + v61, v66 + *(v65 + 48), v63);
        v192(&v195, v64, v66);
        v68 = v189;
        v67 = v190;
        sub_1D630B668(v66, v189, v190, sub_1D5C14BE8);
        sub_1D630B668(v64, v68, v67, sub_1D5C14BE8);
        v55 = v194 + 1;
        v44 = v57 + v182;
        if (v181 != v195)
        {
          v56 = v194;
          break;
        }
      }

      v15 = v165;
      v26 = v176;
      v36 = v168;
      v37 = v191;
      if (v181)
      {
        v38 = v167;
        if (v56 < v167)
        {
          goto LABEL_128;
        }

        if (v167 < v56)
        {
          v69 = v182 * (v56 - 1);
          v70 = v56 * v182;
          v177 = v56;
          v71 = v56;
          v72 = v167;
          v73 = v167 * v182;
          do
          {
            if (v72 != --v71)
            {
              v74 = *v26;
              if (!*v26)
              {
                goto LABEL_134;
              }

              sub_1D630BA20(v74 + v73, v170, v183, v184);
              if (v73 < v69 || v74 + v73 >= (v74 + v70))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v73 != v69)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D630BA20(v170, v74 + v69, v183, v184);
              v26 = v176;
              v36 = v168;
            }

            ++v72;
            v69 -= v182;
            v70 -= v182;
            v73 += v182;
          }

          while (v72 < v71);
          v15 = v165;
          v37 = v191;
          v38 = v167;
          v56 = v177;
        }
      }

      else
      {
        v38 = v167;
      }
    }

    v75 = *(v26 + 8);
    if (v56 >= v75)
    {
      goto LABEL_34;
    }

    if (__OFSUB__(v56, v38))
    {
      goto LABEL_127;
    }

    if (v56 - v38 >= v164[0])
    {
      goto LABEL_34;
    }

    if (__OFADD__(v38, v164[0]))
    {
      goto LABEL_129;
    }

    if (v38 + v164[0] >= v75)
    {
      v76 = *(v26 + 8);
    }

    else
    {
      v76 = v38 + v164[0];
    }

    if (v76 < v38)
    {
      goto LABEL_130;
    }

    if (v56 == v76)
    {
LABEL_34:
      v77 = v56;
      if (v56 < v38)
      {
        goto LABEL_126;
      }
    }

    else
    {
      v165 = v15;
      v132 = *v26;
      v133 = *(v175 + 72);
      v182 = v133 * (v56 - 1);
      v178 = -v133;
      v167 = v38;
      v134 = v38 - v56;
      v169 = v133;
      v181 = v56 * v133;
      v179 = v132;
      v171 = v76;
      do
      {
        v177 = v56;
        v173 = v134;
        v135 = v134;
        v172 = v132;
        while (1)
        {
          v194 = v135;
          v136 = v132 + v181;
          v26 = v132 + v182;
          v137 = *(v37 + 48);
          v138 = *(v132 + v182);
          v140 = v185;
          v139 = v186;
          *v186 = *(v132 + v181);
          v141 = v188;
          sub_1D5BD86D4(v136 + v137, v139 + *(v188 + 48), v140);
          v142 = v187;
          *v187 = v138;
          sub_1D5BD86D4(v26 + v137, v142 + *(v141 + 48), v140);
          v192((&v195 + 2), v139, v142);
          v143 = v189;
          v144 = v190;
          sub_1D630B668(v142, v189, v190, sub_1D5C14BE8);
          sub_1D630B668(v139, v143, v144, sub_1D5C14BE8);
          if (BYTE2(v195) != 1)
          {
            break;
          }

          v145 = v194;
          if (!v179)
          {

            __break(1u);
LABEL_133:

            __break(1u);
LABEL_134:

            __break(1u);
LABEL_135:

            __break(1u);
LABEL_136:

            __break(1u);
LABEL_137:

            __break(1u);
            return result;
          }

          v146 = v180;
          v148 = v183;
          v147 = v184;
          sub_1D630BA20(v136, v180, v183, v184);
          v37 = v191;
          swift_arrayInitWithTakeFrontToBack();
          sub_1D630BA20(v146, v26, v148, v147);
          v132 += v178;
          v149 = __CFADD__(v145, 1);
          v135 = v145 + 1;
          if (v149)
          {
            goto LABEL_86;
          }
        }

        v37 = v191;
LABEL_86:
        v56 = v177 + 1;
        v132 = v172 + v169;
        v134 = v173 - 1;
        v77 = v171;
      }

      while (v177 + 1 != v171);
      v15 = v165;
      v36 = v168;
      v38 = v167;
      if (v171 < v167)
      {
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        v36 = sub_1D62FF50C(v36);
LABEL_100:
        v153 = v15;
        v196 = v36;
        v154 = *(v36 + 16);
        if (v154 < 2)
        {
LABEL_108:
        }

        while (1)
        {
          v155 = *v26;
          if (!*v26)
          {
            goto LABEL_135;
          }

          v26 = v154 - 1;
          v15 = *(v36 + 16 * v154);
          v156 = v36;
          v157 = *(v36 + 16 * (v154 - 1) + 32);
          v36 = *(v36 + 16 * (v154 - 1) + 40);
          v158 = *(v175 + 72);
          v159 = v155 + v158 * v15;
          v160 = v155 + v158 * v157;
          v161 = v155 + v158 * v36;
          v162 = v193;

          v174(v159, v160, v161, v194, v192, v162);
          if (v153)
          {
          }

          if (v36 < v15)
          {
            goto LABEL_124;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v156 = sub_1D62FF50C(v156);
          }

          if (v154 - 2 >= *(v156 + 2))
          {
            goto LABEL_125;
          }

          v163 = &v156[16 * v154];
          *v163 = v15;
          *(v163 + 1) = v36;
          v196 = v156;
          sub_1D62FF480(v154 - 1);
          v36 = v196;
          v154 = *(v196 + 16);
          v26 = v176;
          if (v154 <= 1)
          {
            goto LABEL_108;
          }
        }
      }
    }

    v78 = swift_isUniquelyReferenced_nonNull_native();
    v171 = v77;
    if ((v78 & 1) == 0)
    {
      v36 = sub_1D698BA94(0, *(v36 + 16) + 1, 1, v36);
    }

    v80 = *(v36 + 16);
    v79 = *(v36 + 24);
    v81 = v80 + 1;
    if (v80 >= v79 >> 1)
    {
      v36 = sub_1D698BA94((v79 > 1), v80 + 1, 1, v36);
    }

    *(v36 + 16) = v81;
    v82 = v36 + 16 * v80;
    v83 = v171;
    *(v82 + 32) = v38;
    *(v82 + 40) = v83;
    v194 = *v166;
    if (!v194)
    {
      goto LABEL_136;
    }

    if (v80)
    {
      break;
    }

LABEL_3:
    v26 = v176;
    v34 = v176[1];
    v35 = v171;
    a6 = v193;
    if (v171 >= v34)
    {
      goto LABEL_98;
    }
  }

  while (1)
  {
    v26 = v81 - 1;
    if (v81 >= 4)
    {
      v89 = v36 + 32 + 16 * v81;
      v90 = *(v89 - 64);
      v91 = *(v89 - 56);
      v95 = __OFSUB__(v91, v90);
      v92 = v91 - v90;
      if (v95)
      {
        goto LABEL_113;
      }

      v94 = *(v89 - 48);
      v93 = *(v89 - 40);
      v95 = __OFSUB__(v93, v94);
      v87 = v93 - v94;
      v88 = v95;
      if (v95)
      {
        goto LABEL_114;
      }

      v84 = v36;
      v96 = (v36 + 16 * v81);
      v98 = *v96;
      v97 = v96[1];
      v95 = __OFSUB__(v97, v98);
      v99 = v97 - v98;
      if (v95)
      {
        goto LABEL_116;
      }

      v95 = __OFADD__(v87, v99);
      v100 = v87 + v99;
      if (v95)
      {
        goto LABEL_119;
      }

      if (v100 >= v92)
      {
        v118 = (v36 + 32 + 16 * v26);
        v120 = *v118;
        v119 = v118[1];
        v95 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v95)
        {
          goto LABEL_123;
        }

        if (v87 < v121)
        {
          v26 = v81 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

    v84 = v36;
    if (v81 == 3)
    {
      v85 = *(v36 + 32);
      v86 = *(v36 + 40);
      v95 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      v88 = v95;
LABEL_54:
      if (v88)
      {
        goto LABEL_115;
      }

      v101 = (v84 + 16 * v81);
      v103 = *v101;
      v102 = v101[1];
      v104 = __OFSUB__(v102, v103);
      v105 = v102 - v103;
      v106 = v104;
      if (v104)
      {
        goto LABEL_118;
      }

      v107 = (v84 + 32 + 16 * v26);
      v109 = *v107;
      v108 = v107[1];
      v95 = __OFSUB__(v108, v109);
      v110 = v108 - v109;
      if (v95)
      {
        goto LABEL_121;
      }

      if (__OFADD__(v105, v110))
      {
        goto LABEL_122;
      }

      if (v105 + v110 >= v87)
      {
        if (v87 < v110)
        {
          v26 = v81 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_68;
    }

    v111 = (v36 + 16 * v81);
    v113 = *v111;
    v112 = v111[1];
    v95 = __OFSUB__(v112, v113);
    v105 = v112 - v113;
    v106 = v95;
LABEL_68:
    if (v106)
    {
      goto LABEL_117;
    }

    v114 = v84 + 16 * v26;
    v116 = *(v114 + 32);
    v115 = *(v114 + 40);
    v95 = __OFSUB__(v115, v116);
    v117 = v115 - v116;
    if (v95)
    {
      goto LABEL_120;
    }

    if (v117 < v105)
    {
      goto LABEL_3;
    }

LABEL_75:
    v122 = v26 - 1;
    if (v26 - 1 >= v81)
    {
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
      goto LABEL_126;
    }

    v123 = *v176;
    if (!*v176)
    {
      goto LABEL_133;
    }

    v124 = *(v84 + 32 + 16 * v122);
    v125 = *(v84 + 32 + 16 * v26 + 8);
    v126 = *(v175 + 72);
    v127 = v123 + v126 * v124;
    v128 = v123 + v126 * *(v84 + 32 + 16 * v26);
    v129 = v123 + v126 * v125;
    v130 = v193;

    v174(v127, v128, v129, v194, v192, v130);
    if (v15)
    {
      break;
    }

    if (v125 < v124)
    {
      goto LABEL_111;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_1D62FF50C(v36);
    }

    if (v122 >= *(v36 + 16))
    {
      goto LABEL_112;
    }

    v131 = v36 + 16 * v122;
    *(v131 + 32) = v124;
    *(v131 + 40) = v125;
    v196 = v36;
    sub_1D62FF480(v26);
    v36 = v196;
    v81 = *(v196 + 16);
    v37 = v191;
    if (v81 <= 1)
    {
      goto LABEL_3;
    }
  }
}

uint64_t sub_1D6308BB0(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a1[1];
  swift_retain_n();
  result = sub_1D726449C();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D5C17CEC(0, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
        v11 = sub_1D726276C();
        *(v11 + 16) = v10;
      }

      sub_1D5C17CEC(0, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
      v13[0] = v11 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80));
      v13[1] = v10;

      sub_1D6307ED4(v13, v14, a1, v9, a2, a3, &qword_1EDF04730, type metadata accessor for FeedWebEmbed, &qword_1EDF046C8, type metadata accessor for FeedWebEmbed, &unk_1F5144768, type metadata accessor for FeedWebEmbed, &unk_1F5144790, sub_1D62FDDE4);

      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {

    sub_1D62FA30C(0, v7, 1, a1, a2, a3);
  }
}

uint64_t sub_1D6308E04(void **a1, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a3)
{
  sub_1D5C17CEC(0, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
  v7 = *(v6 - 8);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1D62FFC5C(v9);
  }

  v10 = v9[2];
  v12[0] = v9 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v12[1] = v10;

  sub_1D6308BB0(v12, a2, a3);

  *a1 = v9;
}

uint64_t sub_1D6308F38(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a6)
{
  v9 = swift_allocObject();
  v137 = a5;
  *(v9 + 16) = a5;
  *(v9 + 24) = a6;
  v114 = a3;
  v10 = a3[1];
  v118 = a6;
  if (v10 < 1)
  {
    swift_retain_n();
    v12 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v113 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    v94 = swift_allocObject();
    *(v94 + 16) = v137;
    *(v94 + 24) = a6;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v12 = sub_1D62FF50C(v12);
    }

    v136 = v12;
    v95 = *(v12 + 16);
    if (v95 >= 2)
    {
      do
      {
        v96 = *v114;
        if (!*v114)
        {
          goto LABEL_130;
        }

        v97 = *(v12 + 16 * v95);
        v98 = v12;
        v99 = *(v12 + 16 * (v95 - 1) + 40);
        v100 = (v96 + 216 * v97);
        v101 = (v96 + 216 * *(v12 + 16 * (v95 - 1) + 32));
        v102 = (v96 + 216 * v99);
        v12 = v118;

        sub_1D62FD9B4(v100, v101, v102, v113, v137, v118);
        if (v117)
        {
        }

        if (v99 < v97)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_1D62FF50C(v98);
        }

        if (v95 - 2 >= *(v98 + 2))
        {
          goto LABEL_120;
        }

        v103 = &v98[16 * v95];
        *v103 = v97;
        *(v103 + 1) = v99;
        v136 = v98;
        sub_1D62FF480(v95 - 1);
        v12 = v136;
        v95 = *(v136 + 16);
      }

      while (v95 > 1);
    }
  }

  swift_retain_n();
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v11 + 1 >= v10)
    {
      v19 = v11 + 1;
    }

    else
    {
      v105 = v12;
      v13 = (*v114 + 216 * (v11 + 1));
      v12 = 216 * v11;
      v14 = (*v114 + 216 * v11);
      v15 = *v14;
      *&v122 = *v13;
      sub_1D5F2DEAC((v13 + 1), &v122 + 8);
      v120 = v15;
      sub_1D5F2DEAC((v14 + 1), v121);
      v137(&v119, &v122, &v120);
      sub_1D6306DB0(&v120, &unk_1EDF046D8, &type metadata for FeedPuzzle, sub_1D630B5A4);
      sub_1D6306DB0(&v122, &unk_1EDF046D8, &type metadata for FeedPuzzle, sub_1D630B5A4);
      v16 = v119;
      v107 = v11;
      v17 = v11 + 2;
      v18 = (v14 + 55);
      while (1)
      {
        v19 = v10;
        if (v10 == v17)
        {
          break;
        }

        v20 = *(v18 - 224);
        *&v122 = *(v18 - 8);
        sub_1D5F2DEAC(v18, &v122 + 8);
        v120 = v20;
        sub_1D5F2DEAC(v18 - 216, v121);
        v137(&v119, &v122, &v120);
        sub_1D6306DB0(&v120, &unk_1EDF046D8, &type metadata for FeedPuzzle, sub_1D630B5A4);
        sub_1D6306DB0(&v122, &unk_1EDF046D8, &type metadata for FeedPuzzle, sub_1D630B5A4);
        ++v17;
        v18 += 216;
        if (v16 != v119)
        {
          v19 = v17 - 1;
          goto LABEL_9;
        }
      }

      v11 = v107;
      if (!v16)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (v19 < v107)
      {
        goto LABEL_123;
      }

      if (v107 < v19)
      {
        v21 = 216 * v19 - 216;
        v22 = v19;
        do
        {
          if (v11 != --v22)
          {
            v24 = *v114;
            if (!*v114)
            {
              goto LABEL_129;
            }

            v23 = v24 + v21;
            v132 = *(v24 + v12 + 160);
            v133 = *(v24 + v12 + 176);
            v134 = *(v24 + v12 + 192);
            v135 = *(v24 + v12 + 208);
            v128 = *(v24 + v12 + 96);
            v129 = *(v24 + v12 + 112);
            v130 = *(v24 + v12 + 128);
            v131 = *(v24 + v12 + 144);
            v124 = *(v24 + v12 + 32);
            v125 = *(v24 + v12 + 48);
            v126 = *(v24 + v12 + 64);
            v127 = *(v24 + v12 + 80);
            v122 = *(v24 + v12);
            v123 = *(v24 + v12 + 16);
            memmove((v24 + v12), (v24 + v21), 0xD8uLL);
            *(v23 + 160) = v132;
            *(v23 + 176) = v133;
            *(v23 + 192) = v134;
            *(v23 + 208) = v135;
            *(v23 + 96) = v128;
            *(v23 + 112) = v129;
            *(v23 + 128) = v130;
            *(v23 + 144) = v131;
            *(v23 + 32) = v124;
            *(v23 + 48) = v125;
            *(v23 + 64) = v126;
            *(v23 + 80) = v127;
            *v23 = v122;
            *(v23 + 16) = v123;
          }

          ++v11;
          v21 -= 216;
          v12 += 216;
        }

        while (v11 < v22);
        v12 = v105;
        v11 = v107;
      }

      else
      {
LABEL_19:
        v12 = v105;
      }
    }

    v25 = v114[1];
    if (v19 < v25)
    {
      if (__OFSUB__(v19, v11))
      {
        goto LABEL_122;
      }

      if (v19 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_124;
        }

        if (v11 + a4 >= v25)
        {
          v26 = v114[1];
        }

        else
        {
          v26 = v11 + a4;
        }

        if (v26 < v11)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v19 != v26)
        {
          break;
        }
      }
    }

    v27 = v19;
    if (v19 < v11)
    {
      goto LABEL_121;
    }

LABEL_31:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1D698BA94(0, *(v12 + 16) + 1, 1, v12);
    }

    v28 = v12;
    v12 = *(v12 + 16);
    v29 = v28;
    v30 = *(v28 + 24);
    v31 = v12 + 1;
    if (v12 >= v30 >> 1)
    {
      v29 = sub_1D698BA94((v30 > 1), v12 + 1, 1, v29);
    }

    *(v29 + 2) = v31;
    v32 = &v29[16 * v12];
    *(v32 + 4) = v11;
    *(v32 + 5) = v27;
    v110 = v27;
    v115 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (v12)
    {
      while (1)
      {
        v33 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        v34 = v29;
        if (v31 == 3)
        {
          v35 = *(v29 + 4);
          v36 = *(v29 + 5);
          v45 = __OFSUB__(v36, v35);
          v37 = v36 - v35;
          v38 = v45;
LABEL_50:
          if (v38)
          {
            goto LABEL_110;
          }

          v51 = &v34[16 * v31];
          v53 = *v51;
          v52 = *(v51 + 1);
          v54 = __OFSUB__(v52, v53);
          v55 = v52 - v53;
          v56 = v54;
          if (v54)
          {
            goto LABEL_113;
          }

          v57 = &v34[16 * v33 + 32];
          v59 = *v57;
          v58 = *(v57 + 1);
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v55, v60))
          {
            goto LABEL_117;
          }

          if (v55 + v60 >= v37)
          {
            if (v37 < v60)
            {
              v33 = v31 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v61 = &v29[16 * v31];
        v63 = *v61;
        v62 = *(v61 + 1);
        v45 = __OFSUB__(v62, v63);
        v55 = v62 - v63;
        v56 = v45;
LABEL_64:
        if (v56)
        {
          goto LABEL_112;
        }

        v64 = &v34[16 * v33];
        v66 = *(v64 + 4);
        v65 = *(v64 + 5);
        v45 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v45)
        {
          goto LABEL_115;
        }

        if (v67 < v55)
        {
          goto LABEL_3;
        }

LABEL_71:
        v72 = v33 - 1;
        if (v33 - 1 >= v31)
        {
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
          goto LABEL_125;
        }

        v73 = *v114;
        if (!*v114)
        {
          goto LABEL_128;
        }

        v74 = *&v34[16 * v72 + 32];
        v75 = *&v34[16 * v33 + 40];
        v76 = (v73 + 216 * v74);
        v77 = (v73 + 216 * *&v34[16 * v33 + 32]);
        v12 = v73 + 216 * v75;

        sub_1D62FD9B4(v76, v77, v12, v115, v137, v118);
        if (v117)
        {
        }

        if (v75 < v74)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1D62FF50C(v29);
        }

        if (v72 >= *(v29 + 2))
        {
          goto LABEL_107;
        }

        v78 = &v29[16 * v72];
        *(v78 + 4) = v74;
        *(v78 + 5) = v75;
        v136 = v29;
        sub_1D62FF480(v33);
        v29 = v136;
        v31 = *(v136 + 16);
        if (v31 <= 1)
        {
          goto LABEL_3;
        }
      }

      v39 = &v29[16 * v31 + 32];
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_108;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_109;
      }

      v34 = v29;
      v46 = &v29[16 * v31];
      v48 = *v46;
      v47 = *(v46 + 1);
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_111;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_114;
      }

      if (v50 >= v42)
      {
        v68 = &v29[16 * v33 + 32];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_118;
        }

        if (v37 < v71)
        {
          v33 = v31 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    v10 = v114[1];
    v11 = v110;
    a6 = v118;
    v12 = v29;
    if (v110 >= v10)
    {
      goto LABEL_92;
    }
  }

  v106 = v12;
  v79 = v19;
  v80 = *v114;
  v81 = *v114 + 216 * v79 + 8;
  v116 = v79;
  v82 = v11 - v79;
  v111 = v26;
LABEL_82:
  v112 = v82;
  v113 = v81;
  while (1)
  {
    v83 = v81 - 8;
    v85 = v81 - 224;
    v84 = *(v81 - 224);
    v86 = v81 - 216;
    *&v122 = *(v81 - 8);
    sub_1D5F2DEAC(v81, &v122 + 8);
    v120 = v84;
    sub_1D5F2DEAC(v86, v121);
    v137(&v119, &v122, &v120);
    sub_1D6306DB0(&v120, &unk_1EDF046D8, &type metadata for FeedPuzzle, sub_1D630B5A4);
    sub_1D6306DB0(&v122, &unk_1EDF046D8, &type metadata for FeedPuzzle, sub_1D630B5A4);
    if (v119 != 1)
    {
LABEL_81:
      v81 = (v113 + 216);
      v82 = v112 - 1;
      v27 = v111;
      if (++v116 != v111)
      {
        goto LABEL_82;
      }

      v12 = v106;
      if (v111 < v11)
      {
        goto LABEL_121;
      }

      goto LABEL_31;
    }

    if (!v80)
    {
      break;
    }

    v132 = *(v83 + 160);
    v133 = *(v83 + 176);
    v134 = *(v83 + 192);
    v135 = *(v83 + 208);
    v128 = *(v83 + 96);
    v129 = *(v83 + 112);
    v130 = *(v83 + 128);
    v131 = *(v83 + 144);
    v124 = *(v83 + 32);
    v125 = *(v83 + 48);
    v126 = *(v83 + 64);
    v127 = *(v83 + 80);
    v122 = *v83;
    v123 = *(v83 + 16);
    v87 = *(v85 + 176);
    *(v83 + 160) = *(v85 + 160);
    *(v83 + 176) = v87;
    *(v83 + 192) = *(v85 + 192);
    *(v83 + 208) = *(v85 + 208);
    v88 = *(v85 + 112);
    *(v83 + 96) = *(v85 + 96);
    *(v83 + 112) = v88;
    v89 = *(v85 + 144);
    *(v83 + 128) = *(v85 + 128);
    *(v83 + 144) = v89;
    v90 = *(v85 + 48);
    *(v83 + 32) = *(v85 + 32);
    *(v83 + 48) = v90;
    v91 = *(v85 + 80);
    *(v83 + 64) = *(v85 + 64);
    *(v83 + 80) = v91;
    v92 = *(v85 + 16);
    *v83 = *v85;
    *(v83 + 16) = v92;
    *(v85 + 160) = v132;
    *(v85 + 176) = v133;
    *(v85 + 192) = v134;
    *(v85 + 208) = v135;
    *(v85 + 96) = v128;
    *(v85 + 112) = v129;
    *(v85 + 128) = v130;
    *(v85 + 144) = v131;
    *(v85 + 32) = v124;
    *(v85 + 48) = v125;
    *(v85 + 64) = v126;
    *(v85 + 80) = v127;
    *v85 = v122;
    *(v85 + 16) = v123;
    v81 = v86;
    if (__CFADD__(v82++, 1))
    {
      goto LABEL_81;
    }
  }

  __break(1u);
LABEL_128:

  __break(1u);
LABEL_129:

  __break(1u);
LABEL_130:

  __break(1u);
LABEL_131:

  __break(1u);
LABEL_132:

  __break(1u);
  return result;
}

uint64_t sub_1D6309A4C(uint64_t *a1, void (*a2)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a1[1];
  swift_retain_n();
  result = sub_1D726449C();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D5C82990(0, &unk_1EDF04750);
        v11 = sub_1D726276C();
        *(v11 + 16) = v10;
      }

      v12[0] = (v11 + 32);
      v12[1] = v10;

      sub_1D6308F38(v12, v13, a1, v9, a2, a3);

      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {

    sub_1D62FA01C(0, v7, 1, a1, a2, a3);
  }
}

uint64_t sub_1D6309BD4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, char *, uint64_t, char *), uint64_t a6)
{
  v152 = a6;
  v117 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v10 = *v117;
    if (*v117)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_124;
      }

      goto LABEL_95;
    }

    goto LABEL_133;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = &unk_1EC88F4D0;
  while (1)
  {
    v11 = v8;
    v12 = v8 + 1;
    v123 = v8;
    if (v8 + 1 >= v7)
    {
      v37 = v8 + 1;
    }

    else
    {
      v121 = v7;
      v13 = *a3;
      v14 = *a3 + 72 * v12;
      v141 = *v14;
      v15 = *(v14 + 16);
      v16 = *(v14 + 32);
      v17 = *(v14 + 48);
      v145 = *(v14 + 64);
      v143 = v16;
      v144 = v17;
      v142 = v15;
      v18 = (v13 + 72 * v11);
      v20 = v18[2];
      v19 = v18[3];
      v21 = v18[1];
      v150 = *(v18 + 8);
      v148 = v20;
      v149 = v19;
      v147 = v21;
      v146 = *v18;
      v138 = v143;
      v139 = v144;
      v118 = v141;
      v140 = v145;
      v136 = v141;
      v137 = v142;
      v22 = v11;
      v23 = v146;
      v132 = v18[1];
      v133 = v18[2];
      v134 = v18[3];
      v135 = *(v18 + 8);
      v131 = *v18;
      sub_1D6306E88(&v141, v129, &unk_1EC88F4D0);
      sub_1D6306E88(&v146, v129, &unk_1EC88F4D0);
      v119 = a5(v118, &v136 + 8, v23, &v131 + 8);
      if (v6)
      {
LABEL_104:
        sub_1D6306DB0(&v146, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
        sub_1D6306DB0(&v141, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
      }

      sub_1D6306DB0(&v146, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
      result = sub_1D6306DB0(&v141, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
      v24 = v22 + 2;
      v11 = v22;
      if (v22 + 2 >= v121)
      {
        v37 = v22 + 2;
        if (v119)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v25 = v13 + 72 * v22 + 72;
        while (1)
        {
          v26 = v24;
          v131 = *(v25 + 72);
          v27 = *(v25 + 88);
          v28 = *(v25 + 104);
          v29 = *(v25 + 120);
          v135 = *(v25 + 136);
          v133 = v28;
          v134 = v29;
          v132 = v27;
          v31 = *(v25 + 32);
          v30 = *(v25 + 48);
          v32 = *(v25 + 16);
          v140 = *(v25 + 64);
          v138 = v31;
          v139 = v30;
          v137 = v32;
          v136 = *v25;
          v129[2] = v133;
          v129[3] = v134;
          v33 = v131;
          v130 = v135;
          v129[0] = v131;
          v129[1] = v132;
          v34 = v136;
          v35 = *(v25 + 48);
          v127[2] = *(v25 + 32);
          v127[3] = v35;
          v128 = *(v25 + 64);
          v36 = *(v25 + 16);
          v127[0] = *v25;
          v127[1] = v36;
          v10 = &type metadata for FeedPuzzleType;
          sub_1D6306E88(&v131, v126, &unk_1EC88F4D0);
          sub_1D6306E88(&v136, v126, &unk_1EC88F4D0);
          LODWORD(v33) = a5(v33, v129 + 8, v34, v127 + 8);
          sub_1D6306DB0(&v136, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
          result = sub_1D6306DB0(&v131, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
          if ((v119 ^ v33))
          {
            break;
          }

          v24 = v26 + 1;
          v25 += 72;
          v37 = v121;
          if (v121 == v26 + 1)
          {
            v12 = v26;
            goto LABEL_15;
          }
        }

        v37 = v26;
        v12 = v26 - 1;
LABEL_15:
        v11 = v123;
        if (v119)
        {
LABEL_16:
          if (v37 < v11)
          {
            goto LABEL_127;
          }

          if (v11 <= v12)
          {
            v38 = 72 * v37 - 72;
            v10 = 72 * v11;
            v39 = v37;
            v40 = v11;
            do
            {
              if (v40 != --v37)
              {
                v41 = *a3;
                if (!*a3)
                {
                  goto LABEL_131;
                }

                v42 = v41 + v38;
                v137 = *(v41 + v10 + 16);
                v138 = *(v41 + v10 + 32);
                v139 = *(v41 + v10 + 48);
                v140 = *(v41 + v10 + 64);
                v136 = *(v41 + v10);
                result = memmove((v41 + v10), (v41 + v38), 0x48uLL);
                *(v42 + 16) = v137;
                *(v42 + 32) = v138;
                *(v42 + 48) = v139;
                *(v42 + 64) = v140;
                *v42 = v136;
                v11 = v123;
              }

              ++v40;
              v38 -= 72;
              v10 += 72;
            }

            while (v40 < v37);
            v37 = v39;
          }
        }
      }
    }

    v43 = a3[1];
    if (v37 >= v43)
    {
      goto LABEL_136;
    }

    if (__OFSUB__(v37, v11))
    {
      goto LABEL_123;
    }

    if (v37 - v11 >= a4)
    {
      goto LABEL_136;
    }

    v44 = v11 + a4;
    if (__OFADD__(v11, a4))
    {
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v44 >= v43)
    {
      v44 = a3[1];
    }

    if (v44 < v11)
    {
      goto LABEL_126;
    }

    if (v37 == v44)
    {
LABEL_136:
      if (v37 < v11)
      {
        goto LABEL_122;
      }
    }

    else
    {
      v122 = *a3;
      v91 = *a3 + 72 * v37 - 72;
      v92 = v11 - v37 + 1;
      v113 = v44;
      do
      {
        v120 = v37;
        v114 = v92;
        v115 = v91;
        for (i = v92; ; ++i)
        {
          v141 = *(v91 + 72);
          v94 = *(v91 + 88);
          v95 = *(v91 + 104);
          v96 = *(v91 + 120);
          v145 = *(v91 + 136);
          v143 = v95;
          v144 = v96;
          v142 = v94;
          v98 = *(v91 + 32);
          v97 = *(v91 + 48);
          v99 = *(v91 + 16);
          v150 = *(v91 + 64);
          v148 = v98;
          v149 = v97;
          v147 = v99;
          v146 = *v91;
          v138 = v143;
          v139 = v144;
          v100 = v141;
          v140 = v145;
          v136 = v141;
          v137 = v142;
          v101 = v146;
          v132 = *(v91 + 16);
          v133 = *(v91 + 32);
          v134 = *(v91 + 48);
          v135 = *(v91 + 64);
          v131 = *v91;
          sub_1D6306E88(&v141, v129, &unk_1EC88F4D0);
          sub_1D6306E88(&v146, v129, &unk_1EC88F4D0);
          v102 = a5(v100, &v136 + 8, v101, &v131 + 8);
          if (v6)
          {
            goto LABEL_104;
          }

          v103 = v102;
          v10 = sub_1D5C82990;
          sub_1D6306DB0(&v146, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
          result = sub_1D6306DB0(&v141, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
          if ((v103 & 1) == 0)
          {
            break;
          }

          if (!v122)
          {
            goto LABEL_129;
          }

          v137 = *(v91 + 88);
          v138 = *(v91 + 104);
          v139 = *(v91 + 120);
          v140 = *(v91 + 136);
          v136 = *(v91 + 72);
          v104 = *v91;
          *(v91 + 88) = *(v91 + 16);
          v105 = *(v91 + 48);
          *(v91 + 104) = *(v91 + 32);
          *(v91 + 120) = v105;
          *(v91 + 136) = *(v91 + 64);
          *(v91 + 72) = v104;
          *v91 = v136;
          v106 = v137;
          v107 = v138;
          v108 = v139;
          *(v91 + 64) = v140;
          *(v91 + 32) = v107;
          *(v91 + 48) = v108;
          *(v91 + 16) = v106;
          if (!i)
          {
            break;
          }

          v91 -= 72;
        }

        v37 = v120 + 1;
        v91 = v115 + 72;
        v92 = v114 - 1;
      }

      while (v120 + 1 != v113);
      v37 = v113;
      if (v113 < v123)
      {
        goto LABEL_122;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D698BA94(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v46 = *(v9 + 2);
    v45 = *(v9 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_1D698BA94((v45 > 1), v46 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v47;
    v48 = &v9[16 * v46];
    *(v48 + 4) = v123;
    *(v48 + 5) = v37;
    v8 = v37;
    v49 = *v117;
    if (!*v117)
    {
      goto LABEL_132;
    }

    if (v46)
    {
      break;
    }

LABEL_3:
    v7 = a3[1];
    v10 = &unk_1EC88F4D0;
    if (v8 >= v7)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v10 = v47 - 1;
    if (v47 >= 4)
    {
      v54 = &v9[16 * v47 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_109;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_110;
      }

      v61 = &v9[16 * v47];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_112;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_115;
      }

      if (v65 >= v57)
      {
        v83 = &v9[16 * v10 + 32];
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
          v10 = v47 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

    if (v47 == 3)
    {
      v50 = *(v9 + 4);
      v51 = *(v9 + 5);
      v60 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      v53 = v60;
LABEL_52:
      if (v53)
      {
        goto LABEL_111;
      }

      v66 = &v9[16 * v47];
      v68 = *v66;
      v67 = *(v66 + 1);
      v69 = __OFSUB__(v67, v68);
      v70 = v67 - v68;
      v71 = v69;
      if (v69)
      {
        goto LABEL_114;
      }

      v72 = &v9[16 * v10 + 32];
      v74 = *v72;
      v73 = *(v72 + 1);
      v60 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v60)
      {
        goto LABEL_117;
      }

      if (__OFADD__(v70, v75))
      {
        goto LABEL_118;
      }

      if (v70 + v75 >= v52)
      {
        if (v52 < v75)
        {
          v10 = v47 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_66;
    }

    v76 = &v9[16 * v47];
    v78 = *v76;
    v77 = *(v76 + 1);
    v60 = __OFSUB__(v77, v78);
    v70 = v77 - v78;
    v71 = v60;
LABEL_66:
    if (v71)
    {
      goto LABEL_113;
    }

    v79 = &v9[16 * v10];
    v81 = *(v79 + 4);
    v80 = *(v79 + 5);
    v60 = __OFSUB__(v80, v81);
    v82 = v80 - v81;
    if (v60)
    {
      goto LABEL_116;
    }

    if (v82 < v70)
    {
      goto LABEL_3;
    }

LABEL_73:
    v87 = v10 - 1;
    if (v10 - 1 >= v47)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_128;
    }

    v88 = *&v9[16 * v87 + 32];
    v89 = *&v9[16 * v10 + 40];
    sub_1D62FD2E4((*a3 + 72 * v88), (*a3 + 72 * *&v9[16 * v10 + 32]), (*a3 + 72 * v89), v49, a5);
    if (v6)
    {
    }

    if (v89 < v88)
    {
      goto LABEL_107;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1D62FF50C(v9);
    }

    if (v87 >= *(v9 + 2))
    {
      goto LABEL_108;
    }

    v90 = &v9[16 * v87];
    *(v90 + 4) = v88;
    *(v90 + 5) = v89;
    v151 = v9;
    result = sub_1D62FF480(v10);
    v9 = v151;
    v47 = *(v151 + 2);
    if (v47 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  result = sub_1D62FF50C(v9);
  v9 = result;
LABEL_95:
  v151 = v9;
  v109 = *(v9 + 2);
  if (v109 < 2)
  {
  }

  while (*a3)
  {
    v110 = *&v9[16 * v109];
    v111 = *&v9[16 * v109 + 24];
    sub_1D62FD2E4((*a3 + 72 * v110), (*a3 + 72 * *&v9[16 * v109 + 16]), (*a3 + 72 * v111), v10, a5);
    if (v6)
    {
    }

    if (v111 < v110)
    {
      goto LABEL_119;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1D62FF50C(v9);
    }

    if (v109 - 2 >= *(v9 + 2))
    {
      goto LABEL_120;
    }

    v112 = &v9[16 * v109];
    *v112 = v110;
    *(v112 + 1) = v111;
    v151 = v9;
    result = sub_1D62FF480(v109 - 1);
    v9 = v151;
    v109 = *(v151 + 2);
    if (v109 <= 1)
    {
    }
  }

LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}

uint64_t sub_1D630A6D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, char *, uint64_t, char *))
{
  v47 = a5;
  if (a3 != a2)
  {
    v31 = *a4;
    v6 = *a4 + 72 * a3 - 72;
    v7 = result - a3 + 1;
LABEL_5:
    v29 = v6;
    v30 = a3;
    v28 = v7;
    while (1)
    {
      v40 = *(v6 + 72);
      v8 = *(v6 + 88);
      v9 = *(v6 + 104);
      v10 = *(v6 + 120);
      v44 = *(v6 + 136);
      v42 = v9;
      v43 = v10;
      v41 = v8;
      v12 = *(v6 + 32);
      v11 = *(v6 + 48);
      v13 = *(v6 + 16);
      v46 = *(v6 + 64);
      v45[2] = v12;
      v45[3] = v11;
      v45[1] = v13;
      v45[0] = *v6;
      v37 = v42;
      v38 = v43;
      v14 = v40;
      v39 = v44;
      v35 = v40;
      v36 = v41;
      v15 = *&v45[0];
      v16 = *(v6 + 48);
      v33[2] = *(v6 + 32);
      v33[3] = v16;
      v34 = *(v6 + 64);
      v17 = *(v6 + 16);
      v33[0] = *v6;
      v33[1] = v17;
      sub_1D6306E88(&v40, v32, &unk_1EC88F4D0);
      sub_1D6306E88(v45, v32, &unk_1EC88F4D0);
      v18 = v47(v14, &v35 + 8, v15, v33 + 8);
      sub_1D6306DB0(v45, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
      result = sub_1D6306DB0(&v40, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
      if (v5)
      {
        break;
      }

      if ((v18 & 1) == 0)
      {
        goto LABEL_4;
      }

      if (!v31)
      {
        __break(1u);
        return result;
      }

      v19 = *(v6 + 88);
      v20 = *(v6 + 120);
      v37 = *(v6 + 104);
      v38 = v20;
      v39 = *(v6 + 136);
      v35 = *(v6 + 72);
      v36 = v19;
      v21 = *v6;
      *(v6 + 88) = *(v6 + 16);
      v22 = *(v6 + 48);
      *(v6 + 104) = *(v6 + 32);
      *(v6 + 120) = v22;
      *(v6 + 136) = *(v6 + 64);
      *(v6 + 72) = v21;
      v23 = v35;
      v24 = v36;
      v25 = v37;
      v26 = v38;
      *(v6 + 64) = v39;
      *(v6 + 32) = v25;
      *(v6 + 48) = v26;
      *v6 = v23;
      *(v6 + 16) = v24;
      if (!v7)
      {
LABEL_4:
        a3 = v30 + 1;
        v6 = v29 + 72;
        v7 = v28 - 1;
        if (v30 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      v6 -= 72;
      ++v7;
    }
  }

  return result;
}

uint64_t sub_1D630A910(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1D62FFC34(v6);
  }

  v7 = v6[2];
  v9[0] = v6 + 4;
  v9[1] = v7;
  result = sub_1D63052E0(v9, a2, a3, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D6309BD4, sub_1D630A6D0);
  *a1 = v6;
  return result;
}

uint64_t sub_1D630A9CC(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a1[1];
  swift_retain_n();
  result = sub_1D726449C();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D5C17CEC(0, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
        v11 = sub_1D726276C();
        *(v11 + 16) = v10;
      }

      sub_1D5C17CEC(0, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
      v13[0] = v11 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80));
      v13[1] = v10;

      sub_1D6307ED4(v13, v14, a1, v9, a2, a3, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic, &qword_1EC885978, type metadata accessor for FeedPuzzleStatistic, &unk_1F5144970, type metadata accessor for FeedPuzzleStatistic, &unk_1F5144998, sub_1D62FCC50);

      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {

    sub_1D62F9C9C(0, v7, 1, a1, a2, a3);
  }
}

uint64_t sub_1D630AC20(void **a1, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a3)
{
  sub_1D5C17CEC(0, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
  v7 = *(v6 - 8);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1D62FFC20(v9);
  }

  v10 = v9[2];
  v12[0] = v9 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v12[1] = v10;

  sub_1D630A9CC(v12, a2, a3);

  *a1 = v9;
}

uint64_t sub_1D630AD54(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a1[1];
  swift_retain_n();
  result = sub_1D726449C();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D5C17CEC(0, &unk_1EDF04740, type metadata accessor for FeedRecipe);
        v11 = sub_1D726276C();
        *(v11 + 16) = v10;
      }

      sub_1D5C17CEC(0, &unk_1EDF04740, type metadata accessor for FeedRecipe);
      v13[0] = v11 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80));
      v13[1] = v10;

      sub_1D6307ED4(v13, v14, a1, v9, a2, a3, &unk_1EDF04740, type metadata accessor for FeedRecipe, &qword_1EDF046D0, type metadata accessor for FeedRecipe, &unk_1F5144A60, type metadata accessor for FeedRecipe, &unk_1F5144A88, sub_1D62FC5BC);

      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {

    sub_1D62F991C(0, v7, 1, a1, a2, a3);
  }
}

uint64_t sub_1D630AFA8(void **a1, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a3)
{
  sub_1D5C17CEC(0, &unk_1EDF04740, type metadata accessor for FeedRecipe);
  v7 = *(v6 - 8);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1D62FFC0C(v9);
  }

  v10 = v9[2];
  v12[0] = v9 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v12[1] = v10;

  sub_1D630AD54(v12, a2, a3);

  *a1 = v9;
}

uint64_t sub_1D630B0DC(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a1[1];
  swift_retain_n();
  result = sub_1D726449C();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D5C17CEC(0, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
        v11 = sub_1D726276C();
        *(v11 + 16) = v10;
      }

      sub_1D5C17CEC(0, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
      v13[0] = v11 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80));
      v13[1] = v10;

      sub_1D6307ED4(v13, v14, a1, v9, a2, a3, &qword_1EDF04780, type metadata accessor for FeedCustomItem, &qword_1EDF046F8, type metadata accessor for FeedCustomItem, &unk_1F5144B50, type metadata accessor for FeedCustomItem, &unk_1F5144B78, sub_1D62FBF28);

      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {

    sub_1D62F959C(0, v7, 1, a1, a2, a3);
  }
}

uint64_t sub_1D630B330(void **a1, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a3)
{
  sub_1D5C17CEC(0, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
  v7 = *(v6 - 8);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1D62FFBF8(v9);
  }

  v10 = v9[2];
  v12[0] = v9 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v12[1] = v10;

  sub_1D630B0DC(v12, a2, a3);

  *a1 = v9;
}

void sub_1D630B464()
{
  if (!qword_1EDF01D50)
  {
    sub_1D5C82990(255, &qword_1EDF04760);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF01D50);
    }
  }
}

void sub_1D630B4CC()
{
  if (!qword_1EC885968)
  {
    sub_1D5C82990(255, &unk_1EDF04750);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC885968);
    }
  }
}

void sub_1D630B53C()
{
  if (!qword_1EC885970)
  {
    sub_1D5C82990(255, &unk_1EC88F4D0);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC885970);
    }
  }
}

void sub_1D630B5A4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D630B5FC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D5C17CEC(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D630B668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D630B6C8()
{
  if (!qword_1EDF1ACA8)
  {
    sub_1D5B49474(255, &qword_1EDF41FC0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1ACA8);
    }
  }
}

void sub_1D630B744()
{
  if (!qword_1EDF1AC70)
  {
    sub_1D5B49474(255, &qword_1EDF41FC0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1AC70);
    }
  }
}

void sub_1D630B7BC()
{
  if (!qword_1EDF19510)
  {
    sub_1D630B6C8();
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19510);
    }
  }
}

void sub_1D630B814(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D630B874()
{
  result = qword_1EC885998;
  if (!qword_1EC885998)
  {
    sub_1D630B814(255, &qword_1EC885990, MEMORY[0x1E69E6D08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885998);
  }

  return result;
}

uint64_t sub_1D630B9B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D725AA4C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D630BA20(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D5C17CEC(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1D630BA8C(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D5C17CEC(255, a3, a4);
    v5 = sub_1D72644CC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D630BAE4()
{
  result = qword_1EC88F5D0;
  if (!qword_1EC88F5D0)
  {
    sub_1D630BB34();
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EC88F5D0);
  }

  return result;
}

void sub_1D630BB34()
{
  if (!qword_1EDF34AB8)
  {
    sub_1D5B49474(255, &qword_1EDF41FC0);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF34AB8);
    }
  }
}

uint64_t static FormatItemNodeSwipeActionStyleDimension.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1D633A310(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1D633A310(v2, v3);
}

unint64_t sub_1D630BC2C(uint64_t a1)
{
  result = sub_1D630BC54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D630BC54()
{
  result = qword_1EC8859B8;
  if (!qword_1EC8859B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8859B8);
  }

  return result;
}

unint64_t sub_1D630BCA8(void *a1)
{
  a1[1] = sub_1D630BCE0();
  a1[2] = sub_1D630BD34();
  result = sub_1D630BD88();
  a1[3] = result;
  return result;
}

unint64_t sub_1D630BCE0()
{
  result = qword_1EC8859C0;
  if (!qword_1EC8859C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8859C0);
  }

  return result;
}

unint64_t sub_1D630BD34()
{
  result = qword_1EC8859C8;
  if (!qword_1EC8859C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8859C8);
  }

  return result;
}

unint64_t sub_1D630BD88()
{
  result = qword_1EC8859D0;
  if (!qword_1EC8859D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8859D0);
  }

  return result;
}

uint64_t sub_1D630BE2C(void *a1)
{
  v3 = v1;
  sub_1D6311538(0, &qword_1EC885A88, sub_1D63114E4, &type metadata for A18_V17.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D63114E4();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D63115A0(&qword_1EC8801E8, type metadata accessor for CGRect);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5B49714(0, &qword_1EDF1B268);
    sub_1D5BD47D0(&qword_1EC8806A0, sub_1D5C0B904);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D630C074(uint64_t a1)
{
  v2 = sub_1D63114E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D630C0B0(uint64_t a1)
{
  v2 = sub_1D63114E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D630C0EC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6311244(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D630C14C()
{
  sub_1D6310E24();

  return sub_1D725A24C();
}

uint64_t sub_1D630C1C8@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D6311538(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D630C284@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v143 = a2;
  v147 = a1;
  v129 = a3;
  v6 = type metadata accessor for FeedHeadline(0);
  v144 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v140 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v130 = &v128 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v141 = &v128 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v131 = &v128 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v159 = &v128 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v145 = &v128 - v23;
  v24 = sub_1D725895C();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for GroupLayoutContext();
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139, v29);
  v142 = &v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v128 - v33;
  v136 = &v128 - v33;
  v146 = type metadata accessor for GroupLayoutBindingContext();
  v35 = *(v146 - 1);
  MEMORY[0x1EEE9AC00](v146, v36);
  v38 = &v128 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *v5;
  v135 = *v5;
  v40 = *(v5 + 1);
  LOBYTE(v5) = v5[16];
  sub_1D5BE3ED8(v147, v38, type metadata accessor for GroupLayoutBindingContext);
  v137 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v143, v34, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v134 = sub_1D725893C();
  v133 = v41;
  (*(v25 + 8))(v28, v24);
  v157 = &type metadata for A18_V17;
  v42 = sub_1D5ECE28C();
  v158 = v42;
  LOBYTE(v155) = v39;
  v43 = v40;
  *(&v155 + 1) = v40;
  v156 = v5;
  type metadata accessor for GroupLayoutKey();
  v44 = swift_allocObject();
  sub_1D5BEE8A0(v40, v5);
  v148[0] = sub_1D7264C5C();
  v148[1] = v45;
  v153 = 95;
  v154 = 0xE100000000000000;
  v151 = 45;
  v152 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v46 = sub_1D7263A6C();
  v48 = v47;

  *(v44 + 16) = v46;
  *(v44 + 24) = v48;
  v49 = (v44 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v50 = v133;
  *v49 = v134;
  v49[1] = v50;
  sub_1D5B68374(&v155, v44 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v51 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDAA3C(v38, v44 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v35 + 56))(v44 + v51, 0, 1, v146);
  v52 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDAA3C(v136, v44 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  v53 = *(v138 + 56);
  v138 = v44;
  v53(v44 + v52, 0, 1, v139);
  __swift_destroy_boxed_opaque_existential_1(&v155);
  v157 = &type metadata for A18_V17;
  v158 = v42;
  LOBYTE(v155) = v135;
  *(&v155 + 1) = v43;
  v156 = v5;
  sub_1D5BE3ED8(v143, v142, v137);
  sub_1D5BD3920(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
  v137 = v54;
  v55 = swift_allocObject();
  v56 = MEMORY[0x1E69E7CC0];
  v143 = v55;
  *(v55 + 16) = MEMORY[0x1E69E7CC0];
  v57 = v55 + 16;
  swift_beginAccess();
  sub_1D5BEE8A0(v43, v5);
  v58 = sub_1D5C0F8FC(0, 1, 1, v56);
  v60 = *(v58 + 16);
  v59 = *(v58 + 24);
  v61 = v60 + 1;
  if (v60 >= v59 >> 1)
  {
    goto LABEL_94;
  }

  while (1)
  {
    v62 = 0xEC000000656E696CLL;
    *(v58 + 16) = v61;
    v63 = v58 + 16 * v60;
    *(v63 + 32) = sub_1D63106DC;
    *(v63 + 40) = 0;
    *v57 = v58;
    swift_endAccess();
    v64 = v147;
    v139 = v146[14];
    v65 = *&v147[v139];
    if (*(v65 + 16) && (v66 = sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v67 & 1) != 0) && (v65 = *(*(v65 + 56) + 8 * v66), v68 = , v61 = sub_1D5C14D80(v68), , v61))
    {
      v69 = *(v61 + 16);
      if (v69)
      {
        v70 = 0;
        v58 = MEMORY[0x1E69E7CC0];
        v57 = v144;
        v60 = v145;
        while (1)
        {
          v59 = *(v61 + 16);
          if (v70 >= v59)
          {
            break;
          }

          v38 = (*(v57 + 80) + 32) & ~*(v57 + 80);
          v71 = *(v57 + 72);
          sub_1D5BE3ED8(v61 + v38 + v71 * v70, v60, type metadata accessor for FeedHeadline);
          if ((*(v60 + 32) & 4) != 0)
          {
            sub_1D5BDAA3C(v60, v159, type metadata accessor for FeedHeadline);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v148[0] = v58;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D5C0F91C(0, *(v58 + 16) + 1, 1);
              v57 = v144;
              v58 = v148[0];
            }

            v44 = *(v58 + 16);
            v73 = *(v58 + 24);
            if (v44 >= v73 >> 1)
            {
              sub_1D5C0F91C(v73 > 1, v44 + 1, 1);
              v57 = v144;
              v58 = v148[0];
            }

            *(v58 + 16) = v44 + 1;
            sub_1D5BDAA3C(v159, v58 + v38 + v44 * v71, type metadata accessor for FeedHeadline);
            v60 = v145;
          }

          else
          {
            sub_1D5BE79EC(v60, type metadata accessor for FeedHeadline);
          }

          if (v69 == ++v70)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
        goto LABEL_93;
      }

      v58 = MEMORY[0x1E69E7CC0];
LABEL_23:
      v77 = v147;
      if ((*v147 & 1) == 0)
      {

        v78 = sub_1D62F071C(v58);

        v58 = v78;
      }

      v79 = *&v77[v146[18]];
      v80 = *&v77[v146[19]];
      if (__OFSUB__(v79, v80))
      {
        __break(1u);
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      v81 = v77;
      v82 = sub_1D5C0FAD4(v58, v79 - v80);
      v44 = sub_1D5C11E10(&unk_1F51135E0, v82, v61);

      if (v44)
      {
      }

      else
      {
        v44 = sub_1D5C11E10(&unk_1F51135E0, v58, v61);

        if (!v44)
        {
          v148[0] = &unk_1F51135E0;
          v4 = v132;
          sub_1D5E239F4(v148);
          if (v4)
          {
            goto LABEL_106;
          }

          if (*(v148[0] + 2))
          {
            v114 = *(v148[0] + 4);

            sub_1D5ED8048();
            swift_allocError();
            strcpy(v115, "FeedHeadline");
            v115[13] = 0;
            *(v115 + 7) = -5120;
            *(v115 + 2) = 0;
            *(v115 + 3) = 0;
            *(v115 + 4) = 4;
            *(v115 + 5) = v114;
            *(v115 + 6) = 0;
            *(v115 + 7) = 0;
            v115[64] = 0;
            swift_willThrow();
            swift_setDeallocating();

            goto LABEL_20;
          }

          goto LABEL_103;
        }
      }

      strcpy(v148, "FeedHeadline");
      BYTE5(v148[1]) = 0;
      HIWORD(v148[1]) = -5120;
      v149 = 0;
      v150 = 0;

      v61 = sub_1D5C107C4(v83);

      sub_1D5BDACA8(v148, v61);
      v60 = v143;
      swift_setDeallocating();

      swift_deallocClassInstance();

      v62 = 0xEC000000656E696CLL;

      v64 = v81;
    }

    else
    {
      if (qword_1F5113600)
      {
        v148[0] = &unk_1F51135E0;
        v4 = v132;
        sub_1D5E239F4(v148);
        if (v4)
        {
          goto LABEL_106;
        }

        v74 = *(v148[0] + 2);
        if (!v74)
        {
          goto LABEL_96;
        }

        v75 = *(v148[0] + 4);

        sub_1D5ED8048();
        swift_allocError();
        strcpy(v76, "FeedHeadline");
        v76[13] = 0;
        *(v76 + 7) = -5120;
        *(v76 + 2) = 0;
        *(v76 + 3) = 0;
        *(v76 + 4) = 4;
        *(v76 + 5) = v75;
        *(v76 + 6) = 0;
        *(v76 + 7) = 0;
        v76[64] = 0;
        swift_willThrow();

        swift_setDeallocating();
LABEL_20:
        swift_deallocClassInstance();
        goto LABEL_48;
      }

      v61 = v143;
      swift_setDeallocating();
      swift_deallocClassInstance();
      v44 = MEMORY[0x1E69E7CC0];
    }

    v58 = v139;
    v65 = *&v64[v139];
    if (!*(v65 + 16))
    {
      break;
    }

    v84 = sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0);
    if ((v85 & 1) == 0)
    {
      break;
    }

    v65 = *(*(v65 + 56) + 8 * v84);

    v61 = sub_1D5C14D80(v86);

    if (!v61)
    {
      break;
    }

    v159 = v44;
    v87 = *(v61 + 16);
    if (!v87)
    {
      v58 = MEMORY[0x1E69E7CC0];
LABEL_51:
      v97 = v147;
      v98 = *&v147[v146[18]];
      v99 = *&v147[v146[19]];
      if (!__OFSUB__(v98, v99))
      {
        v100 = sub_1D5C0FAD4(v58, v98 - v99);
        v96 = sub_1D5C11E10(&unk_1F5113608, v100, v61);

        if (v96)
        {

LABEL_55:
          strcpy(v148, "FeedHeadline");
          BYTE5(v148[1]) = 0;
          HIWORD(v148[1]) = -5120;
          v149 = 0;
          v150 = 0;

          v102 = sub_1D5C107C4(v101);

          sub_1D5BDACA8(v148, v102);

          v64 = v97;
          v58 = v139;
          v44 = v159;
          goto LABEL_56;
        }

        v96 = sub_1D5C11E10(&unk_1F5113608, v58, v61);

        if (v96)
        {
          goto LABEL_55;
        }

        v148[0] = &unk_1F5113608;
        v4 = v132;
        sub_1D5E239F4(v148);
        if (v4)
        {
          goto LABEL_106;
        }

        v92 = v148[0];
        if (*(v148[0] + 2))
        {
          goto LABEL_47;
        }

LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v44 = 0;
    v58 = MEMORY[0x1E69E7CC0];
    v57 = v144;
    v60 = v131;
    while (1)
    {
      v59 = *(v61 + 16);
      if (v44 >= v59)
      {
        break;
      }

      v38 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v88 = *(v57 + 72);
      sub_1D5BE3ED8(v61 + v38 + v88 * v44, v60, type metadata accessor for FeedHeadline);
      if ((*(v60 + 32) & 4) != 0)
      {
        sub_1D5BDAA3C(v60, v141, type metadata accessor for FeedHeadline);
        v89 = swift_isUniquelyReferenced_nonNull_native();
        v148[0] = v58;
        if ((v89 & 1) == 0)
        {
          sub_1D5C0F91C(0, *(v58 + 16) + 1, 1);
          v57 = v144;
          v58 = v148[0];
        }

        v91 = *(v58 + 16);
        v90 = *(v58 + 24);
        if (v91 >= v90 >> 1)
        {
          sub_1D5C0F91C(v90 > 1, v91 + 1, 1);
          v57 = v144;
          v58 = v148[0];
        }

        *(v58 + 16) = v91 + 1;
        sub_1D5BDAA3C(v141, v58 + v38 + v91 * v88, type metadata accessor for FeedHeadline);
        v60 = v131;
      }

      else
      {
        sub_1D5BE79EC(v60, type metadata accessor for FeedHeadline);
      }

      if (v87 == ++v44)
      {
        goto LABEL_51;
      }
    }

LABEL_93:
    __break(1u);
LABEL_94:
    v58 = sub_1D5C0F8FC((v59 > 1), v61, 1, v58);
  }

  if (!qword_1F5113628)
  {

    v96 = MEMORY[0x1E69E7CC0];
LABEL_56:
    v148[0] = v44;
    sub_1D5C122E4(v96);
    v38 = v148[0];
    v44 = swift_allocObject();
    v103 = MEMORY[0x1E69E7CC0];
    *(v44 + 16) = MEMORY[0x1E69E7CC0];
    v65 = v44 + 16;
    swift_beginAccess();
    v62 = sub_1D5C0F8FC(0, 1, 1, v103);
    v61 = v62[2];
    v74 = v62[3];
    v60 = v61 + 1;
    if (v61 >= v74 >> 1)
    {
      goto LABEL_98;
    }

    while (1)
    {
      v62[2] = v60;
      v104 = &v62[2 * v61];
      v104[4] = sub_1D63106DC;
      v104[5] = 0;
      *v65 = v62;
      swift_endAccess();
      if (!*(*&v64[v58] + 16) || (sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v105 & 1) == 0) || (v106 = , v60 = sub_1D5C14D80(v106), , !v60))
      {
        if (!qword_1F5113650)
        {

          swift_setDeallocating();
          swift_deallocClassInstance();
          v113 = MEMORY[0x1E69E7CC0];
LABEL_85:
          v148[0] = v38;
          sub_1D5C122E4(v113);
          v122 = v148[0];
          v123 = type metadata accessor for A18_V17.Bound();
          v124 = v129;
          v129[3] = v123;
          v124[4] = sub_1D63115A0(&qword_1EC8859E8, type metadata accessor for A18_V17.Bound);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v124);
          *boxed_opaque_existential_1 = v138;
          sub_1D5B63F14(&v155, (boxed_opaque_existential_1 + 1));
          result = sub_1D5BDAA3C(v142, boxed_opaque_existential_1 + *(v123 + 24), type metadata accessor for GroupLayoutContext);
          *(boxed_opaque_existential_1 + *(v123 + 28)) = v122;
          return result;
        }

        v148[0] = &unk_1F5113630;
        v4 = v132;
        sub_1D5E239F4(v148);
        if (v4)
        {
          goto LABEL_106;
        }

        if (*(v148[0] + 2))
        {
          v111 = *(v148[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v112, "FeedHeadline");
          v112[13] = 0;
          *(v112 + 7) = -5120;
          *(v112 + 2) = 0;
          *(v112 + 3) = 0;
          *(v112 + 4) = 0;
          *(v112 + 5) = v111;
          *(v112 + 6) = 0;
          *(v112 + 7) = 0;
          v112[64] = 0;
          swift_willThrow();

          swift_setDeallocating();
          goto LABEL_20;
        }

        goto LABEL_100;
      }

      v145 = v38;
      v159 = v44;
      v44 = *(v60 + 16);
      if (!v44)
      {
        break;
      }

      v38 = 0;
      v64 = MEMORY[0x1E69E7CC0];
      v65 = v144;
      while (1)
      {
        v74 = *(v60 + 16);
        if (v38 >= v74)
        {
          break;
        }

        v107 = (*(v65 + 80) + 32) & ~*(v65 + 80);
        v58 = *(v65 + 72);
        v108 = v130;
        sub_1D5BE3ED8(v60 + v107 + v58 * v38, v130, type metadata accessor for FeedHeadline);
        sub_1D5BDAA3C(v108, v140, type metadata accessor for FeedHeadline);
        v109 = swift_isUniquelyReferenced_nonNull_native();
        v148[0] = v64;
        if ((v109 & 1) == 0)
        {
          sub_1D5C0F91C(0, *(v64 + 2) + 1, 1);
          v65 = v144;
          v64 = v148[0];
        }

        v61 = *(v64 + 2);
        v110 = *(v64 + 3);
        v62 = (v61 + 1);
        if (v61 >= v110 >> 1)
        {
          sub_1D5C0F91C(v110 > 1, v61 + 1, 1);
          v65 = v144;
          v64 = v148[0];
        }

        ++v38;
        *(v64 + 2) = v62;
        sub_1D5BDAA3C(v140, &v64[v107 + v61 * v58], type metadata accessor for FeedHeadline);
        if (v44 == v38)
        {
          goto LABEL_78;
        }
      }

      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      v62 = sub_1D5C0F8FC((v74 > 1), v60, 1, v62);
    }

    v64 = MEMORY[0x1E69E7CC0];
LABEL_78:
    if ((*v147 & 1) == 0)
    {

      v116 = sub_1D62F071C(v64);

      v64 = v116;
    }

    v117 = *&v147[v146[18]];
    v118 = *&v147[v146[19]];
    if (__OFSUB__(v117, v118))
    {
      goto LABEL_102;
    }

    v119 = sub_1D5C0FAD4(v64, v117 - v118);
    v113 = sub_1D5C11E10(&unk_1F5113630, v119, v60);

    if (v113)
    {

      goto LABEL_84;
    }

    v113 = sub_1D5C11E10(&unk_1F5113630, v64, v60);

    if (v113)
    {
LABEL_84:
      strcpy(v148, "FeedHeadline");
      BYTE5(v148[1]) = 0;
      HIWORD(v148[1]) = -5120;
      v149 = 0;
      v150 = 0;

      v121 = sub_1D5C107C4(v120);

      sub_1D5BDACA8(v148, v121);
      swift_setDeallocating();

      swift_deallocClassInstance();

      v38 = v145;
      goto LABEL_85;
    }

    v148[0] = &unk_1F5113630;
    v4 = v132;
    sub_1D5E239F4(v148);
    if (v4)
    {
      goto LABEL_106;
    }

    if (!*(v148[0] + 2))
    {
      goto LABEL_105;
    }

    v126 = *(v148[0] + 4);

    sub_1D5ED8048();
    swift_allocError();
    strcpy(v127, "FeedHeadline");
    v127[13] = 0;
    *(v127 + 7) = -5120;
    *(v127 + 2) = 0;
    *(v127 + 3) = 0;
    *(v127 + 4) = 0;
    *(v127 + 5) = v126;
    *(v127 + 6) = 0;
    *(v127 + 7) = 0;
    v127[64] = 0;
    swift_willThrow();
    swift_setDeallocating();

    goto LABEL_20;
  }

  v148[0] = &unk_1F5113608;
  v4 = v132;
  sub_1D5E239F4(v148);
  if (!v4)
  {

    v92 = v148[0];
    v74 = *(v148[0] + 2);
    if (!v74)
    {
      goto LABEL_97;
    }

LABEL_47:
    v93 = *(v92 + 4);

    sub_1D5ED8048();
    swift_allocError();
    strcpy(v94, "FeedHeadline");
    v94[13] = 0;
    *(v94 + 7) = -5120;
    *(v94 + 2) = 0;
    *(v94 + 3) = 0;
    *(v94 + 4) = 4;
    *(v94 + 5) = v93;
    *(v94 + 6) = 0;
    *(v94 + 7) = 0;
    v94[64] = 0;
    swift_willThrow();
LABEL_48:
    sub_1D5BE79EC(v142, type metadata accessor for GroupLayoutContext);
    return __swift_destroy_boxed_opaque_existential_1(&v155);
  }

LABEL_106:

  __break(1u);
  return result;
}

uint64_t sub_1D630D878@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v41 = sub_1D725A36C();
  v3 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for A18_V17.Bound();
  v8 = v1 + *(v7 + 24);
  v9 = type metadata accessor for GroupLayoutContext();
  v10 = *(v8 + *(v9 + 40));
  v11 = *(v10 + 16);
  v12 = *(v8 + *(v9 + 32));
  sub_1D5B68374(v11 + 16, v52);
  sub_1D5B68374(v11 + 56, v51);
  v13 = v12 * *(v11 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  inited = swift_initStackObject();
  sub_1D5B63F14(v52, inited + 16);
  sub_1D5B63F14(v51, inited + 56);
  *(inited + 96) = v13;
  v50[0] = 1;
  FeedLayoutStylerFactory.styler(withHeading:)(v50, v53);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(inited + 16);
  __swift_destroy_boxed_opaque_existential_1(inited + 56);
  sub_1D5B49474(0, &qword_1EDF27C08);
  v15 = sub_1D726276C();
  *(v15 + 16) = 3;
  sub_1D5B68374(v53, v15 + 32);
  sub_1D5B68374(v53, v15 + 72);
  sub_1D5B63F14(v53, v15 + 112);
  v16 = *(v10 + 16);
  sub_1D5B68374(v16 + 16, v52);
  sub_1D5B68374(v16 + 56, v51);
  v17 = v12 * *(v16 + 96);
  v18 = swift_initStackObject();
  sub_1D5B63F14(v52, v18 + 16);
  sub_1D5B63F14(v51, v18 + 56);
  *(v18 + 96) = v17;
  v50[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v50, v53);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v18 + 16);
  __swift_destroy_boxed_opaque_existential_1(v18 + 56);
  v19 = sub_1D6F50B74(v53, *(*(v2 + *(v7 + 28)) + 16) - 2);
  *&v53[0] = v15;
  sub_1D698609C(v19);
  v20 = *&v53[0];
  v42 = v2;
  v49[2] = v2;

  v22 = sub_1D6310828(v21, v20, sub_1D6310820, v49);

  v23 = *(v22 + 16);
  if (v23 >= 3)
  {
    v24 = 3;
  }

  else
  {
    v24 = *(v22 + 16);
  }

  v25 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
  v26 = v22 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  v27 = (2 * v23) | 1;
  v28 = *MEMORY[0x1E69D7130];
  v29 = sub_1D7259D1C();
  (*(*(v29 - 8) + 104))(v6, v28, v29);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7370], v41);
  v44 = v22;
  v45 = v22;
  v46 = v26;
  v47 = v24;
  v48 = v27;
  sub_1D6310EF4(0, &qword_1EC885A08, MEMORY[0x1E69D73B8]);
  swift_allocObject();

  v41 = sub_1D725A4CC();
  sub_1D725A4DC();
  v30 = v54;
  sub_1D5BD3920(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D5B49714(0, &qword_1EDF1B268);
  sub_1D5BD48FC();
  v31 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268);
  v39 = v53[1];
  v40 = v53[0];
  *&v53[0] = v22;
  *&v52[0] = v30;
  MEMORY[0x1EEE9AC00](v31, v32);

  v33 = sub_1D725C00C();

  v34 = v43;
  *v43 = 0;
  v35 = v40;
  *(v34 + 24) = v39;
  *(v34 + 8) = v35;
  *&v53[0] = v33;
  sub_1D5B49714(0, &qword_1EDF1B4C8);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8);
  sub_1D5BDEFF8();
  v36 = sub_1D72623BC();

  v38 = MEMORY[0x1E69E7CC0];
  *(v34 + 5) = v36;
  *(v34 + 6) = v38;
  return result;
}

uint64_t sub_1D630DE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D630DF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D6311538(0, &qword_1EC885A20, sub_1D6310DD0, &type metadata for A18_V17.Layout, MEMORY[0x1E69D74B0]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v21[-v16];
  v27 = a1;
  v18 = swift_allocObject();
  *(v18 + 16) = 18;
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69D7490], v13);
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v19 = MEMORY[0x1E69D7150];
  sub_1D6310EF4(0, &qword_1EC885A28, MEMORY[0x1E69D7150]);
  sub_1D6310EB0(&qword_1EC885A30, &qword_1EC885A28, v19);
  sub_1D7259A2C();
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1D630E150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v66 = a6;
  v65 = a5;
  v64 = a4;
  v63 = a3;
  v76 = a2;
  v62 = sub_1D6310DD0;
  sub_1D6311538(0, &qword_1EC885A20, sub_1D6310DD0, &type metadata for A18_V17.Layout, MEMORY[0x1E69D74B0]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = (v51 - v11);
  v83 = a1;
  v13 = sub_1D725994C();
  v71 = v13;
  v14 = swift_allocBox();
  v74 = *MEMORY[0x1E69D6F50];
  v15 = *(v13 - 8);
  v73 = *(v15 + 104);
  v75 = v15 + 104;
  v73(v16);
  *v12 = v14;
  v72 = *MEMORY[0x1E69D73C0];
  v70 = *(v9 + 104);
  v70(v12);
  v69 = v9 + 104;
  v17 = MEMORY[0x1E69D6F38];
  sub_1D6310EF4(0, &qword_1EC885A38, MEMORY[0x1E69D6F38]);
  v67 = v18;
  v19 = sub_1D6310EB0(&qword_1EC885A40, &qword_1EC885A38, v17);
  sub_1D7259A9C();
  v20 = *(v9 + 8);
  v68 = v9 + 8;
  v20(v12, v8);
  v21 = v20;
  v83 = a1;
  sub_1D5C14C4C(0, &qword_1EDF1AC88, MEMORY[0x1E69D7358]);
  v23 = v22;
  v24 = swift_allocBox();
  v26 = v25;
  v27 = *(v23 + 48);
  *v25 = 11;
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
  *v12 = v24;
  v30 = v70;
  (v70)(v12, *MEMORY[0x1E69D73E0], v8);
  v82 = v76;
  v31 = v19;
  sub_1D72599EC();
  v53 = v21;
  v21(v12, v8);
  v32 = a1;
  v83 = a1;
  v33 = v71;
  v34 = swift_allocBox();
  (v73)(v35, v74, v33);
  *v12 = v34;
  (v30)(v12, v72, v8);
  v51[1] = v31;
  sub_1D7259A9C();
  v21(v12, v8);
  v83 = v32;
  v61 = *MEMORY[0x1E69D74A8];
  v30(v12);
  sub_1D6310F80();
  v60 = v36;
  sub_1D6311538(0, &qword_1EC885A50, v62, &type metadata for A18_V17.Layout, MEMORY[0x1E69D70D8]);
  v56 = v37;
  v38 = *(v37 - 8);
  v62 = *(v38 + 72);
  v59 = *(v38 + 80);
  v39 = v38;
  v40 = (v59 + 32) & ~v59;
  v52 = v40;
  v41 = swift_allocObject();
  v58 = xmmword_1D7273AE0;
  *(v41 + 16) = xmmword_1D7273AE0;
  v54 = *MEMORY[0x1E69D7098];
  v42 = *(v39 + 104);
  v55 = v39 + 104;
  v57 = v42;
  v42(v41 + v40);
  v81 = v76;
  sub_1D72599EC();

  v43 = v53;
  v53(v12, v8);
  v83 = v32;
  v44 = v71;
  v45 = swift_allocBox();
  (v73)(v46, v74, v44);
  *v12 = v45;
  v47 = v70;
  (v70)(v12, v72, v8);
  sub_1D7259A9C();
  v43(v12, v8);
  v83 = v32;
  (v47)(v12, v61, v8);
  v48 = v52;
  v49 = swift_allocObject();
  *(v49 + 16) = v58;
  v57(v49 + v48, v54, v56);
  v77 = v63;
  v78 = v64;
  v79 = v65;
  v80 = v66;
  sub_1D72599EC();

  return (v43)(v12, v8);
}

uint64_t sub_1D630E910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HeadlineViewLayout.Context(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6311538(0, &qword_1EC885A20, sub_1D6310DD0, &type metadata for A18_V17.Layout, MEMORY[0x1E69D74B0]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v27 - v17;
  v27[1] = a1;
  swift_getKeyPath();
  result = (*(v15 + 104))(v18, *MEMORY[0x1E69D74A8], v14);
  if (*(a2 + 16))
  {
    sub_1D5BE3ED8(a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v12, type metadata accessor for HeadlineViewLayout.Context);
    v27[0] = v14;
    v20 = v4[5];
    v21 = *MEMORY[0x1E69D7348];
    v22 = sub_1D725A34C();
    v23 = *(v22 - 8);
    (*(v23 + 104))(&v7[v20], v21, v22);
    (*(v23 + 56))(&v7[v20], 0, 1, v22);
    v24 = *MEMORY[0x1E69DDC70];
    *v7 = 1;
    *&v7[v4[6]] = 0;
    *&v7[v4[7]] = v24;
    v25 = v24;
    sub_1D61F750C(v12, v7);
    sub_1D5BE79EC(v7, type metadata accessor for HeadlineViewLayout.Options);
    sub_1D5BE79EC(v12, type metadata accessor for HeadlineViewLayout.Context);
    v26 = MEMORY[0x1E69D6F38];
    sub_1D6310EF4(0, &qword_1EC885A38, MEMORY[0x1E69D6F38]);
    sub_1D6310EB0(&qword_1EC885A40, &qword_1EC885A38, v26);
    sub_1D5BE8850();
    sub_1D7259A4C();

    return (*(v15 + 8))(v18, v27[0]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D630ECEC(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v18 = a1;
  sub_1D6311538(0, &qword_1EC885A20, sub_1D6310DD0, &type metadata for A18_V17.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v17 - v8);
  v21 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 9;
  *v9 = v10;
  v11 = *MEMORY[0x1E69D7490];
  v12 = *(v6 + 104);
  v12(v9, v11, v5);
  v20 = a2;
  v13 = MEMORY[0x1E69D6F38];
  sub_1D6310EF4(0, &qword_1EC885A38, MEMORY[0x1E69D6F38]);
  sub_1D6310EB0(&qword_1EC885A40, &qword_1EC885A38, v13);
  sub_1D7259A2C();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v21 = v18;
  v15 = swift_allocObject();
  *(v15 + 16) = 9;
  *v9 = v15;
  v12(v9, v11, v5);
  v19 = v17;
  sub_1D7259A2C();
  return (v14)(v9, v5);
}

uint64_t sub_1D630EF90(uint64_t a1, uint64_t a2)
{
  KeyPath = a1;
  v3 = sub_1D725A36C();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725A19C();
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HeadlineViewLayout.Context(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6311538(0, &qword_1EC885A20, sub_1D6310DD0, &type metadata for A18_V17.Layout, MEMORY[0x1E69D74B0]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v39 - v23;
  v46 = KeyPath;
  KeyPath = swift_getKeyPath();
  (*(v21 + 104))(v24, *MEMORY[0x1E69D74A8], v20);
  if (*(a2 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v39 = v6;
  v40 = v20;
  sub_1D5BE3ED8(a2 + *(v15 + 72) + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v18, type metadata accessor for HeadlineViewLayout.Context);
  v25 = v10[5];
  v26 = *MEMORY[0x1E69D7348];
  v27 = sub_1D725A34C();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v13[v25], v26, v27);
  (*(v28 + 56))(&v13[v25], 0, 1, v27);
  v29 = MEMORY[0x1E69DDC70];
  *v13 = 0;
  *&v13[v10[6]] = 0;
  v30 = *v29;
  *&v13[v10[7]] = v30;
  v31 = qword_1EDF386E8;
  v32 = v30;
  if (v31 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  *(&v39 - 4) = v18;
  *(&v39 - 3) = v13;
  v38 = v9;
  (*(v41 + 104))(v43, *MEMORY[0x1E69D7378], v42, v35);
  sub_1D5BED904();
  swift_allocObject();
  sub_1D725A4CC();
  (*(v44 + 8))(v9, v39);
  sub_1D5BE79EC(v13, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE79EC(v18, type metadata accessor for HeadlineViewLayout.Context);
  v36 = MEMORY[0x1E69D6F38];
  sub_1D6310EF4(0, &qword_1EC885A38, MEMORY[0x1E69D6F38]);
  sub_1D6310EB0(&qword_1EC885A40, &qword_1EC885A38, v36);
  v38 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v21 + 8))(v24, v40);
}

uint64_t sub_1D630F56C(uint64_t a1, uint64_t a2)
{
  KeyPath = a1;
  v3 = sub_1D725A36C();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725A19C();
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HeadlineViewLayout.Context(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6311538(0, &qword_1EC885A20, sub_1D6310DD0, &type metadata for A18_V17.Layout, MEMORY[0x1E69D74B0]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v39 - v23;
  v46 = KeyPath;
  KeyPath = swift_getKeyPath();
  (*(v21 + 104))(v24, *MEMORY[0x1E69D74A8], v20);
  if (*(a2 + 16) < 3uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v39 = v6;
  v40 = v20;
  sub_1D5BE3ED8(a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + 2 * *(v15 + 72), v18, type metadata accessor for HeadlineViewLayout.Context);
  v25 = v10[5];
  v26 = *MEMORY[0x1E69D7348];
  v27 = sub_1D725A34C();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v13[v25], v26, v27);
  (*(v28 + 56))(&v13[v25], 0, 1, v27);
  v29 = MEMORY[0x1E69DDC70];
  *v13 = 0;
  *&v13[v10[6]] = 0;
  v30 = *v29;
  *&v13[v10[7]] = v30;
  v31 = qword_1EDF386E8;
  v32 = v30;
  if (v31 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  *(&v39 - 4) = v18;
  *(&v39 - 3) = v13;
  v38 = v9;
  (*(v41 + 104))(v43, *MEMORY[0x1E69D7378], v42, v35);
  sub_1D5BED904();
  swift_allocObject();
  sub_1D725A4CC();
  (*(v44 + 8))(v9, v39);
  sub_1D5BE79EC(v13, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE79EC(v18, type metadata accessor for HeadlineViewLayout.Context);
  v36 = MEMORY[0x1E69D6F38];
  sub_1D6310EF4(0, &qword_1EC885A38, MEMORY[0x1E69D6F38]);
  sub_1D6310EB0(&qword_1EC885A40, &qword_1EC885A38, v36);
  v38 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v21 + 8))(v24, v40);
}

void sub_1D630FB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v39 = a3;
  sub_1D6311538(0, &qword_1EC885A20, sub_1D6310DD0, &type metadata for A18_V17.Layout, MEMORY[0x1E69D74B0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = (&v30 - v13);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0) - 8;
  MEMORY[0x1EEE9AC00](v15, v16);
  v19 = a5 >> 1;
  v20 = __OFSUB__(a5 >> 1, a4);
  v21 = (a5 >> 1) - a4;
  if (v20)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v21 != 3)
  {
    return;
  }

  if (v19 <= a4)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v22 = *(v17 + 72);
  v35 = *MEMORY[0x1E69D7490];
  v33 = (v11 + 8);
  v34 = (v11 + 104);
  v36 = v22;
  v37 = a2;
  v23 = v39 + v22 * a4;
  v31 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v38 = v10;
  v24 = v31;
  do
  {
    sub_1D5BE3ED8(v23, v24, type metadata accessor for HeadlineViewLayout.Context);
    v41 = a1;
    v25 = swift_allocObject();
    *(v25 + 16) = 6;
    *v14 = v25;
    v26 = (*v34)(v14, v35, v10);
    v40 = &v30;
    MEMORY[0x1EEE9AC00](v26, v27);
    *(&v30 - 6) = v24;
    *(&v30 - 5) = a2;
    *(&v30 - 4) = v39;
    *(&v30 - 3) = a4;
    v28 = MEMORY[0x1E69D6F38];
    sub_1D6310EF4(0, &qword_1EC885A38, MEMORY[0x1E69D6F38]);
    v29 = sub_1D6310EB0(&qword_1EC885A40, &qword_1EC885A38, v28);
    a1 = v32;
    a2 = v37;
    v10 = v38;
    sub_1D7259A2C();
    (*v33)(v14, v10);
    sub_1D5BE79EC(v24, type metadata accessor for HeadlineViewLayout.Context);
    v23 += v36;
    --v21;
  }

  while (v21);
}

uint64_t sub_1D630FEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v57 = a2;
  v62 = a1;
  v58 = sub_1D725A36C();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v9);
  v60 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1D725A19C();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61, v11);
  v54 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HeadlineViewLayout.Context(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v51, v18);
  v20 = (&v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6311538(0, &qword_1EC885A20, sub_1D6310DD0, &type metadata for A18_V17.Layout, MEMORY[0x1E69D74B0]);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v50 - v25;
  v63 = v62;
  KeyPath = swift_getKeyPath();
  v27 = *MEMORY[0x1E69D7460];
  v55 = v23;
  v28 = *(v23 + 104);
  v53 = v26;
  v62 = v22;
  v28(v26, v27, v22);
  if (a5 <= (a6 >> 1))
  {
    v29 = a6 >> 1;
  }

  else
  {
    v29 = a5;
  }

  while (a6 >> 1 != a5)
  {
    if (v29 == a5)
    {
      __break(1u);
      goto LABEL_12;
    }

    sub_1D5BE3ED8(a4 + *(v14 + 72) * a5++, v17, type metadata accessor for HeadlineViewLayout.Context);
    v30 = *&v17[*(v13 + 20) + 32];
    sub_1D5BE79EC(v17, type metadata accessor for HeadlineViewLayout.Context);
    if ((v30 & 4) == 0)
    {
      v31 = 2;
      goto LABEL_9;
    }
  }

  v31 = 0;
LABEL_9:
  v32 = v51;
  v33 = *(v51 + 20);
  v34 = *MEMORY[0x1E69D7348];
  v35 = sub_1D725A34C();
  v36 = *(v35 - 8);
  (*(v36 + 104))(v20 + v33, v34, v35);
  (*(v36 + 56))(v20 + v33, 0, 1, v35);
  v37 = MEMORY[0x1E69DDC70];
  *v20 = v31;
  *(v20 + *(v32 + 24)) = 0;
  v38 = *v37;
  *(v20 + *(v32 + 28)) = v38;
  v39 = qword_1EDF386E8;
  v40 = v38;
  if (v39 == -1)
  {
    goto LABEL_10;
  }

LABEL_12:
  swift_once();
LABEL_10:

  v41 = v54;
  sub_1D725972C();

  v44 = MEMORY[0x1EEE9AC00](v42, v43);
  v45 = v56;
  *(&v50 - 4) = v57;
  *(&v50 - 3) = v20;
  v49 = v41;
  (*(v45 + 104))(v60, *MEMORY[0x1E69D7378], v58, v44);
  sub_1D5BED904();
  swift_allocObject();
  sub_1D725A4CC();
  (*(v59 + 8))(v41, v61);
  sub_1D5BE79EC(v20, type metadata accessor for HeadlineViewLayout.Options);
  v46 = MEMORY[0x1E69D6F38];
  sub_1D6310EF4(0, &qword_1EC885A38, MEMORY[0x1E69D6F38]);
  sub_1D6310EB0(&qword_1EC885A40, &qword_1EC885A38, v46);
  v49 = sub_1D5BE8850();
  v47 = v53;
  sub_1D7259A4C();

  return (*(v55 + 8))(v47, v62);
}

uint64_t sub_1D63104F0@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28();
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A18_V17.Bound() + 24);
  result = type metadata accessor for GroupLayoutContext();
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D6310604(uint64_t a1)
{
  *(a1 + 8) = sub_1D6310634();
  result = sub_1D6310688();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6310634()
{
  result = qword_1EC8859D8;
  if (!qword_1EC8859D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8859D8);
  }

  return result;
}

unint64_t sub_1D6310688()
{
  result = qword_1EC8859E0;
  if (!qword_1EC8859E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8859E0);
  }

  return result;
}

uint64_t sub_1D63106DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *a1;
  sub_1D5C14C4C(0, &qword_1EDF1AC80, type metadata accessor for FeedHeadline);
  result = sub_1D614C5B4(v6, a1 + *(v7 + 48), *a2, a2 + *(v7 + 48));
  *a3 = result & 1;
  return result;
}

uint64_t type metadata accessor for A18_V17.Bound()
{
  result = qword_1EC8859F0;
  if (!qword_1EC8859F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D63107C8(uint64_t a1)
{
  result = sub_1D63115A0(&qword_1EC885A00, type metadata accessor for A18_V17.Bound);
  *(a1 + 8) = result;
  return result;
}

size_t sub_1D6310828(uint64_t a1, uint64_t a2, void (*a3)(char *, char *), uint64_t a4)
{
  v64 = a3;
  v65 = a4;
  v6 = type metadata accessor for HeadlineViewLayout.Context(0);
  v63 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v57 = &v54 - v12;
  v13 = type metadata accessor for FeedHeadline(0);
  v66 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v56 = &v54 - v19;
  sub_1D6311044();
  v62 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v59 = &v54 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v58 = &v54 - v29;
  v67 = a1;
  v30 = *(a1 + 16);
  v68 = *(a2 + 16);
  if (v68 >= v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = v68;
  }

  v69 = MEMORY[0x1E69E7CC0];
  result = sub_1D6997C30(0, v31, 0);
  v33 = v69;
  v60 = v31;
  v61 = v30;
  v55 = a2;
  if (v31)
  {
    v34 = 0;
    v35 = a2 + 32;
    while (v30 != v34)
    {
      result = sub_1D5BE3ED8(v67 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v34, v16, type metadata accessor for FeedHeadline);
      if (v68 == v34)
      {
        goto LABEL_25;
      }

      v36 = *(v62 + 48);
      v37 = v16;
      sub_1D5BDAA3C(v16, v23, type metadata accessor for FeedHeadline);
      sub_1D5B68374(v35, &v23[v36]);
      v64(v23, &v23[v36]);
      sub_1D5BE79EC(v23, sub_1D6311044);
      v69 = v33;
      v38 = v9;
      v40 = *(v33 + 16);
      v39 = *(v33 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1D6997C30(v39 > 1, v40 + 1, 1);
        v33 = v69;
      }

      ++v34;
      *(v33 + 16) = v40 + 1;
      result = sub_1D5BDAA3C(v38, v33 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v40, type metadata accessor for HeadlineViewLayout.Context);
      v35 += 40;
      v30 = v61;
      v9 = v38;
      v16 = v37;
      if (v60 == v34)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_11:
    v41 = v68;
    if (v30 <= v68)
    {
      return v33;
    }

    v42 = v56;
    v43 = v60;
    v44 = v55 + 40 * v60 + 32;
    v45 = v57;
    while (v43 < v30)
    {
      result = sub_1D5BE3ED8(v67 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v43, v42, type metadata accessor for FeedHeadline);
      v46 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_27;
      }

      if (v41 == v43)
      {
        sub_1D5BE79EC(v42, type metadata accessor for FeedHeadline);
        return v33;
      }

      if (v43 >= v41)
      {
        goto LABEL_28;
      }

      v47 = v62;
      v48 = *(v62 + 48);
      v49 = v59;
      sub_1D5BDAA3C(v42, v59, type metadata accessor for FeedHeadline);
      sub_1D5B68374(v44, v49 + v48);
      v50 = v58;
      sub_1D5BDAA3C(v49, v58, sub_1D6311044);
      v64(v50, (v50 + *(v47 + 48)));
      sub_1D5BE79EC(v50, sub_1D6311044);
      v69 = v33;
      v52 = *(v33 + 16);
      v51 = *(v33 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_1D6997C30(v51 > 1, v52 + 1, 1);
        v33 = v69;
      }

      ++v43;
      v44 += 40;
      *(v33 + 16) = v52 + 1;
      result = sub_1D5BDAA3C(v45, v33 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v52, type metadata accessor for HeadlineViewLayout.Context);
      v53 = v46 == v61;
      v30 = v61;
      v41 = v68;
      if (v53)
      {
        return v33;
      }
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_1D6310DD0()
{
  result = qword_1EC885A10;
  if (!qword_1EC885A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885A10);
  }

  return result;
}

unint64_t sub_1D6310E24()
{
  result = qword_1EC885A18;
  if (!qword_1EC885A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885A18);
  }

  return result;
}

uint64_t sub_1D6310EB0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D6310EF4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6310EF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A18_V17.Layout;
    v8[1] = &type metadata for A18_V17.Layout.Attributes;
    v8[2] = sub_1D6310DD0();
    v8[3] = sub_1D6310E24();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6310F80()
{
  if (!qword_1EC885A48)
  {
    sub_1D6311538(255, &qword_1EC885A50, sub_1D6310DD0, &type metadata for A18_V17.Layout, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC885A48);
    }
  }
}

void sub_1D6311044()
{
  if (!qword_1EDF34AC0)
  {
    type metadata accessor for FeedHeadline(255);
    sub_1D5B49474(255, &qword_1EDF27C08);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF34AC0);
    }
  }
}

unint64_t sub_1D63110E8()
{
  result = qword_1EC885A58;
  if (!qword_1EC885A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885A58);
  }

  return result;
}

unint64_t sub_1D6311140()
{
  result = qword_1EC885A60;
  if (!qword_1EC885A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885A60);
  }

  return result;
}

unint64_t sub_1D6311198()
{
  result = qword_1EC885A68;
  if (!qword_1EC885A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885A68);
  }

  return result;
}

unint64_t sub_1D63111F0()
{
  result = qword_1EC885A70;
  if (!qword_1EC885A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885A70);
  }

  return result;
}

uint64_t sub_1D6311244@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D6311538(0, &qword_1EC885A78, sub_1D63114E4, &type metadata for A18_V17.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D63114E4();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D63115A0(&qword_1EDF1A740, type metadata accessor for CGRect);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5B49714(0, &qword_1EDF1B268);
  v20 = 1;
  sub_1D5BD47D0(&qword_1EDF1B258, sub_1D5BEE208);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D63114E4()
{
  result = qword_1EC885A80;
  if (!qword_1EC885A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885A80);
  }

  return result;
}

void sub_1D6311538(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D63115A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D63115FC()
{
  result = qword_1EC885A90;
  if (!qword_1EC885A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885A90);
  }

  return result;
}

unint64_t sub_1D6311654()
{
  result = qword_1EC885A98;
  if (!qword_1EC885A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885A98);
  }

  return result;
}

unint64_t sub_1D63116AC()
{
  result = qword_1EC885AA0;
  if (!qword_1EC885AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885AA0);
  }

  return result;
}

uint64_t sub_1D6311700(uint64_t a1)
{
  sub_1D5B49800(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v25 - v9;
  v11 = sub_1D72608BC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v25 - v19;
  if (*v1 > 1u)
  {
    if (*v1 == 2)
    {
      sub_1D606BE74(a1, v10);
      if ((*(v12 + 48))(v10, 1, v11) != 1)
      {
        (*(v12 + 32))(v20, v10, v11);
        v21 = sub_1D726085C();
        (*(v12 + 8))(v20, v11);
        return v21 & 1;
      }

      v22 = v10;
    }

    else
    {
      sub_1D606BE74(a1, v6);
      if ((*(v12 + 48))(v6, 1, v11) != 1)
      {
        (*(v12 + 32))(v15, v6, v11);
        v23 = sub_1D726085C();
        (*(v12 + 8))(v15, v11);
        v21 = v23 ^ 1;
        return v21 & 1;
      }

      v22 = v6;
    }

    sub_1D6311B84(v22);
    v21 = 0;
  }

  else if (*v1)
  {
    v21 = (*(v12 + 48))(a1, 1, v11, v18) != 1;
  }

  else
  {
    v21 = (*(v12 + 48))(a1, 1, v11, v18) == 1;
  }

  return v21 & 1;
}

uint64_t FormatBindingSponsorshipExpressionLogic.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6311A3C()
{
  result = qword_1EC885AA8;
  if (!qword_1EC885AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885AA8);
  }

  return result;
}

unint64_t sub_1D6311A90(uint64_t a1)
{
  result = sub_1D6311AB8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6311AB8()
{
  result = qword_1EC885AB0;
  if (!qword_1EC885AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885AB0);
  }

  return result;
}

unint64_t sub_1D6311B0C(void *a1)
{
  a1[1] = sub_1D5F2E710();
  a1[2] = sub_1D5F2E764();
  result = sub_1D6311A3C();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6311B84(uint64_t a1)
{
  sub_1D5B49800(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6311C04(void *a1)
{
  v3 = v1;
  sub_1D5C2FF94(0, &qword_1EDF02770, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B5C();
  if (*(v3 + 56))
  {
    if (*(v3 + 56) == 1)
    {
      v11 = v3[1];
      v25 = *v3;
      v26 = v11;
      v27 = v3[2];
      v28 = *(v3 + 6);
      LOBYTE(v16) = 1;
      sub_1D6312988();
      v17 = 0uLL;
      sub_1D726443C();
      if (!v2)
      {
        v17 = v25;
        v18 = v26;
        v19 = v27;
        v12 = v28;
LABEL_9:
        v20 = v12;
        v16 = xmmword_1D7279980;
        sub_1D63129DC();
        sub_1D726443C();
      }
    }

    else
    {
      v14 = v3[1];
      v29 = *v3;
      v30 = v14;
      v31 = v3[2];
      v32 = *(v3 + 6);
      LOBYTE(v16) = 2;
      sub_1D6312988();
      v17 = 0uLL;
      sub_1D726443C();
      if (!v2)
      {
        v17 = v29;
        v18 = v30;
        v19 = v31;
        v12 = v32;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v13 = v3[1];
    v21 = *v3;
    v22 = v13;
    v23 = v3[2];
    v24 = *(v3 + 6);
    LOBYTE(v16) = 0;
    sub_1D6312988();
    v17 = 0uLL;
    sub_1D726443C();
    if (!v2)
    {
      v17 = v21;
      v18 = v22;
      v19 = v23;
      v12 = v24;
      goto LABEL_9;
    }
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6311EC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x74657070696E73;
  if (v2 != 1)
  {
    v5 = 0x656C797473;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6567616B636170;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x74657070696E73;
  if (*a2 != 1)
  {
    v8 = 0x656C797473;
    v3 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6567616B636170;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6311FBC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D631205C()
{
  sub_1D72621EC();
}

uint64_t sub_1D63120E8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6312184@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D631266C();
  *a1 = result;
  return result;
}

void sub_1D63121B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x74657070696E73;
  if (v2 != 1)
  {
    v5 = 0x656C797473;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6567616B636170;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

double sub_1D63122C0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D63126B8(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1D6312324()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  sub_1D72621EC();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D63123A8()
{
  sub_1D72621EC();
  sub_1D72621EC();

  return sub_1D72621EC();
}

uint64_t sub_1D6312414()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  sub_1D72621EC();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

BOOL sub_1D6312494(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_1D6312548(v5, v7);
}

unint64_t sub_1D63124F4()
{
  result = qword_1EC885AB8;
  if (!qword_1EC885AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885AB8);
  }

  return result;
}

BOOL sub_1D6312548(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = *(a1 + 56);
  v12 = *a2;
  v13 = a2[1];
  v15 = a2[2];
  v14 = a2[3];
  v17 = a2[4];
  v16 = a2[5];
  v18 = a2[6];
  v19 = *(a2 + 56);
  if (v11)
  {
    if (v11 == 1)
    {
      if (v19 != 1)
      {
        return 0;
      }
    }

    else if (v19 != 2)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  return (v4 == v12 && v5 == v13 || (sub_1D72646CC() & 1) != 0) && (v6 == v15 && v8 == v14 || (sub_1D72646CC() & 1) != 0) && (sub_1D633FE6C(v10, v18) & 1) != 0 && (v7 == v17 && v9 == v16 || (sub_1D72646CC() & 1) != 0);
}

uint64_t sub_1D631266C()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D63126B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5C2FF94(0, &qword_1EDF3C650, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1D63128E0();
  v25 = 0;
  v26 = 0;
  sub_1D726431C();
  v11 = v27;
  v18[1] = xmmword_1D7279980;
  sub_1D6312934();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v12 = v19;
  v13 = v20;
  v14 = v21;
  v15 = v22;
  v16 = v23;
  v18[0] = v24;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v18[0];
  *(a2 + 56) = v11;
  return result;
}

unint64_t sub_1D63128E0()
{
  result = qword_1EC885AC0;
  if (!qword_1EC885AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885AC0);
  }

  return result;
}

unint64_t sub_1D6312934()
{
  result = qword_1EC885AC8;
  if (!qword_1EC885AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885AC8);
  }

  return result;
}

unint64_t sub_1D6312988()
{
  result = qword_1EC885AD0;
  if (!qword_1EC885AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885AD0);
  }

  return result;
}

unint64_t sub_1D63129DC()
{
  result = qword_1EC885AD8;
  if (!qword_1EC885AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885AD8);
  }

  return result;
}

unint64_t sub_1D6312A44()
{
  result = qword_1EC885AE0;
  if (!qword_1EC885AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885AE0);
  }

  return result;
}

unint64_t sub_1D6312A98()
{
  result = qword_1EC885AE8;
  if (!qword_1EC885AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885AE8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed24DebugFormatUploadRequestO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D6312B14(uint64_t a1)
{
  v2 = type metadata accessor for DebugFormatWorkspaceGroup();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DebugFormatWorkspace();
  v8 = *(v7 + 36);
  v19 = *(a1 + *(v7 + 32));
  v9 = *(a1 + v8);
  v18 = MEMORY[0x1E69E7CC0];
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = *(v2 + 20);
    v12 = v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);

    v14 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D63130B8(v12, v6, type metadata accessor for DebugFormatWorkspaceGroup);
      v15 = *&v6[v11];

      v16 = sub_1D6313120(v6, type metadata accessor for DebugFormatWorkspaceGroup);
      if (v15)
      {
        MEMORY[0x1DA6F9CE0](v16);
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v14 = v18;
      }

      v12 += v13;
      --v10;
    }

    while (v10);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  sub_1D6986E2C(v14);
  return v19;
}

unint64_t sub_1D6312CD4(uint64_t a1)
{
  v2 = type metadata accessor for DebugFormatWorkspaceGroup();
  v21 = *(v2 - 8);
  v22 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E7CC0];
  v27 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  if (v25)
  {
    v7 = type metadata accessor for DebugFormatWorkspace();
    v8 = 0;
    v9 = *(v7 - 8);
    v24 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v23 = *(v9 + 72);
    do
    {
      v10 = v24 + v23 * v8;

      sub_1D6986E2C(v11);
      v12 = *(v10 + *(v7 + 36));
      v26 = v6;
      v13 = *(v12 + 16);
      if (v13)
      {
        v14 = *(v22 + 20);
        v15 = v12 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
        v16 = *(v21 + 72);
        do
        {
          sub_1D63130B8(v15, v5, type metadata accessor for DebugFormatWorkspaceGroup);
          v17 = *&v5[v14];

          v18 = sub_1D6313120(v5, type metadata accessor for DebugFormatWorkspaceGroup);
          if (v17)
          {
            MEMORY[0x1DA6F9CE0](v18);
            if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D726272C();
            }

            sub_1D726278C();
            v6 = v26;
          }

          v15 += v16;
          --v13;
        }

        while (v13);
      }

      ++v8;
      sub_1D6986E2C(v6);
      v6 = MEMORY[0x1E69E7CC0];
    }

    while (v8 != v25);
    return v27;
  }

  return v6;
}

uint64_t sub_1D6312F2C(uint64_t a1)
{
  v2 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 208);
  v14 = *(a1 + 200);
  v8 = *(v7 + 16);
  if (v8)
  {
    v13 = MEMORY[0x1E69E7CC0];

    sub_1D7263ECC();
    v9 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_1D63130B8(v9, v6, type metadata accessor for DebugFormatEditorWorkspaceGroup);

      sub_1D6313120(v6, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      v9 += v10;
      --v8;
    }

    while (v8);
    v11 = v13;
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  sub_1D6986E2C(v11);
  return v14;
}

uint64_t sub_1D63130B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6313120(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1D6313180()
{
  v1 = type metadata accessor for FormatWebEmbed();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FormatContentSlotItemObject();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D631F9C8(v0, v8, type metadata accessor for FormatContentSlotItemObject);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v29 = *v8;
      sub_1D5B5D358(0, &unk_1EDF19710);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      *(v9 + 32) = v29;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 1;
      return v9;
    case 2u:
      v12 = *v8;
      sub_1D5B5D358(0, &unk_1EDF19710);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      *(v9 + 32) = v12;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 2;
      return v9;
    case 3u:
      v18 = *v8;
      sub_1D5B5D358(0, &unk_1EDF19710);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      *(v9 + 32) = v18;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 3;
      return v9;
    case 4u:
      v10 = *v8;
      sub_1D5B5D358(0, &unk_1EDF19710);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      *(v9 + 32) = v10;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 4;
      return v9;
    case 5u:
      sub_1D631FAC8(v8, v4, type metadata accessor for FormatWebEmbed);
      v31 = &v4[v1[8]];
      v32 = *(v31 + 1);
      v33 = MEMORY[0x1E69E7CC0];
      if (v32)
      {
        v34 = *v31;
        sub_1D5B5D358(0, &unk_1EDF01FA0);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_1D7273AE0;

        v36 = sub_1D725856C();
        *(v35 + 32) = v34;
        *(v35 + 40) = v32;
        *(v35 + 48) = v36;
        *(v35 + 56) = v37;
      }

      else
      {
        v35 = MEMORY[0x1E69E7CC0];
      }

      v52 = *(v35 + 16);
      v88 = v1;
      v89 = v4;
      if (v52)
      {
        v91 = v33;
        sub_1D6999198(0, v52, 0);
        v53 = v91;
        v87 = v35;
        v54 = (v35 + 56);
        do
        {
          v55 = *(v54 - 3);
          v56 = *(v54 - 2);
          v57 = *(v54 - 1);
          v58 = *v54;
          v91 = v53;
          v59 = *(v53 + 16);
          v60 = *(v53 + 24);

          if (v59 >= v60 >> 1)
          {
            sub_1D6999198((v60 > 1), v59 + 1, 1);
            v53 = v91;
          }

          v54 += 4;
          *(v53 + 16) = v59 + 1;
          v61 = v53 + 48 * v59;
          *(v61 + 32) = v55;
          *(v61 + 40) = v56;
          *(v61 + 48) = v57;
          *(v61 + 56) = v58;
          *(v61 + 64) = 0;
          *(v61 + 72) = 17;
          --v52;
        }

        while (v52);

        v1 = v88;
        v4 = v89;
        v33 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v53 = MEMORY[0x1E69E7CC0];
      }

      v62 = &v4[v1[9]];
      v63 = *(v62 + 1);
      if (v63)
      {
        v64 = *v62;
        sub_1D5B5D358(0, &qword_1EC88F580);
        v65 = swift_allocObject();
        *(v65 + 16) = xmmword_1D7273AE0;
        *(v65 + 32) = v64;
        *(v65 + 40) = v63;
        v66 = 1;
      }

      else
      {
        v66 = *(v33 + 16);
        if (!v66)
        {

          v67 = MEMORY[0x1E69E7CC0];

          goto LABEL_51;
        }

        v65 = v33;
      }

      v91 = v33;

      sub_1D6999198(0, v66, 0);
      v67 = v91;
      v87 = v65;
      v68 = (v65 + 40);
      do
      {
        v69 = *(v68 - 1);
        v70 = *v68;
        v91 = v67;
        v72 = *(v67 + 16);
        v71 = *(v67 + 24);

        if (v72 >= v71 >> 1)
        {
          sub_1D6999198((v71 > 1), v72 + 1, 1);
          v67 = v91;
        }

        *(v67 + 16) = v72 + 1;
        v73 = v67 + 48 * v72;
        *(v73 + 32) = v69;
        *(v73 + 40) = v70;
        *(v73 + 56) = 0;
        *(v73 + 64) = 0;
        *(v73 + 48) = 0;
        *(v73 + 72) = 18;
        v68 += 2;
        --v66;
      }

      while (v66);

      v1 = v88;
      v4 = v89;
LABEL_51:
      v90 = v53;
      sub_1D6985628(v67);
      v20 = *&v4[v1[7]];
      if (!v20)
      {
        goto LABEL_70;
      }

      v74 = sub_1D71D8FBC();
      v5 = v74;
      if (v74 >> 62)
      {
        goto LABEL_67;
      }

      v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v75)
      {
        goto LABEL_54;
      }

      goto LABEL_68;
    case 6u:
      v38 = *v8;
      sub_1D5B5D358(0, &unk_1EDF19710);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      *(v9 + 32) = v38;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 5;
      return v9;
    case 7u:
      v19 = *v8;
      sub_1D5B5D358(0, &unk_1EDF19710);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      *(v9 + 32) = v19;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 6;
      return v9;
    case 8u:
      v42 = *v8;
      v43 = *(v8 + 1);
      v44 = *(v8 + 4);
      sub_1D5B5D358(0, &unk_1EDF19710);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      *(v9 + 32) = v42;
      *(v9 + 40) = v43;
      *(v9 + 48) = *(v8 + 1);
      *(v9 + 64) = v44;
      *(v9 + 72) = 7;
      return v9;
    case 9u:
      v11 = *v8;
      sub_1D5B5D358(0, &unk_1EDF19710);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      *(v9 + 32) = v11;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 8;
      return v9;
    case 0xAu:
      v40 = *v8;
      v41 = *(v8 + 1);
      sub_1D5B5D358(0, &unk_1EDF19710);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      *(v9 + 32) = v40;
      *(v9 + 40) = v41;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      *(v9 + 48) = 0;
      *(v9 + 72) = 9;
      return v9;
    case 0xBu:
    case 0xCu:
      sub_1D631E0C8(v8, type metadata accessor for FormatContentSlotItemObject);
      return MEMORY[0x1E69E7CC0];
    case 0xDu:
      v30 = *v8;
      sub_1D5B5D358(0, &unk_1EDF19710);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      *(v9 + 32) = v30;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 10;
      return v9;
    case 0xEu:
      v46 = *v8;
      sub_1D5B5D358(0, &unk_1EDF19710);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7270C10;
      v48 = *(v46 + 16);
      v47 = *(v46 + 24);
      type metadata accessor for FormatTag();
      v49 = swift_allocObject();
      v49[2] = v48;
      v49[3] = v47;
      swift_beginAccess();
      v49[4] = MEMORY[0x1E69E7CD0];
      swift_beginAccess();
      v49[5] = MEMORY[0x1E69E7CC0];
      *(v9 + 32) = v49;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 3;
      *(v9 + 80) = v46;
      *(v9 + 88) = 0u;
      *(v9 + 104) = 0u;
      v17 = 11;
      goto LABEL_31;
    case 0xFu:
      v13 = *v8;
      sub_1D5B5D358(0, &unk_1EDF19710);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7270C10;
      v15 = *(v13 + 16);
      v14 = *(v13 + 24);
      type metadata accessor for FormatTag();
      v16 = swift_allocObject();
      v16[2] = v15;
      v16[3] = v14;
      swift_beginAccess();
      v16[4] = MEMORY[0x1E69E7CD0];
      swift_beginAccess();
      v16[5] = MEMORY[0x1E69E7CC0];
      *(v9 + 32) = v16;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 3;
      *(v9 + 80) = v13;
      *(v9 + 88) = 0u;
      *(v9 + 104) = 0u;
      v17 = 12;
LABEL_31:
      *(v9 + 120) = v17;

      return v9;
    case 0x10u:
      v51 = *v8;
      sub_1D5B5D358(0, &unk_1EDF19710);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      *(v9 + 32) = v51;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 13;
      return v9;
    case 0x11u:
      v39 = *v8;
      sub_1D5B5D358(0, &unk_1EDF19710);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      *(v9 + 32) = v39;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 14;
      return v9;
    case 0x12u:
      v45 = *v8;
      sub_1D5B5D358(0, &unk_1EDF19710);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      *(v9 + 32) = v45;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 15;
      return v9;
    case 0x13u:
      v50 = *v8;
      sub_1D5B5D358(0, &unk_1EDF19710);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      *(v9 + 32) = v50;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 16;
      return v9;
    default:
      v20 = *v8;
      v21 = sub_1D71D8FBC();
      v22 = v21;
      if (!(v21 >> 62))
      {
        v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
          goto LABEL_12;
        }

LABEL_65:

        return MEMORY[0x1E69E7CC0];
      }

      v23 = sub_1D7263BFC();
      if (!v23)
      {
        goto LABEL_65;
      }

LABEL_12:
      v91 = MEMORY[0x1E69E7CC0];
      sub_1D6999198(0, v23 & ~(v23 >> 63), 0);
      if ((v23 & 0x8000000000000000) == 0)
      {
        v24 = 0;
        v9 = v91;
        do
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v25 = MEMORY[0x1DA6FB460](v24, v22);
          }

          else
          {
            v25 = *(v22 + 8 * v24 + 32);
          }

          v91 = v9;
          v27 = *(v9 + 16);
          v26 = *(v9 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_1D6999198((v26 > 1), v27 + 1, 1);
            v9 = v91;
          }

          *(v9 + 16) = v27 + 1;
          v28 = v9 + 48 * v27;
          *(v28 + 32) = v25;
          ++v24;
          *(v28 + 40) = 0u;
          *(v28 + 56) = 0u;
          *(v28 + 72) = 0;
        }

        while (v23 != v24);

        return v9;
      }

      __break(1u);
LABEL_67:
      v75 = sub_1D7263BFC();
      if (!v75)
      {
LABEL_68:

        v78 = MEMORY[0x1E69E7CC0];
        goto LABEL_69;
      }

LABEL_54:
      v87 = v20;
      v91 = MEMORY[0x1E69E7CC0];
      result = sub_1D6999198(0, v75 & ~(v75 >> 63), 0);
      if ((v75 & 0x8000000000000000) == 0)
      {
        v77 = 0;
        v78 = v91;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v79 = MEMORY[0x1DA6FB460](v77, v5);
          }

          else
          {
            v79 = *(v5 + 8 * v77 + 32);
          }

          v91 = v78;
          v81 = *(v78 + 16);
          v80 = *(v78 + 24);
          if (v81 >= v80 >> 1)
          {
            sub_1D6999198((v80 > 1), v81 + 1, 1);
            v78 = v91;
          }

          *(v78 + 16) = v81 + 1;
          v82 = v78 + 48 * v81;
          *(v82 + 32) = v79;
          ++v77;
          *(v82 + 40) = 0u;
          *(v82 + 56) = 0u;
          *(v82 + 72) = 0;
        }

        while (v75 != v77);

        v4 = v89;
LABEL_69:
        sub_1D6985628(v78);

LABEL_70:
        sub_1D725838C();
        if (v83)
        {

          v9 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1D698C34C(0, *(v9 + 16) + 1, 1, v9);
          }

          v85 = *(v9 + 16);
          v84 = *(v9 + 24);
          if (v85 >= v84 >> 1)
          {
            v9 = sub_1D698C34C((v84 > 1), v85 + 1, 1, v9);
          }

          sub_1D631E0C8(v4, type metadata accessor for FormatWebEmbed);
          *(v9 + 16) = v85 + 1;
          v86 = v9 + 48 * v85;
          *(v86 + 32) = 0u;
          *(v86 + 48) = 0u;
          *(v86 + 64) = 0;
          *(v86 + 72) = 19;
        }

        else
        {
          sub_1D631E0C8(v4, type metadata accessor for FormatWebEmbed);
          return v90;
        }

        return v9;
      }

      __break(1u);
      return result;
  }
}

uint64_t sub_1D6313F08(uint64_t *a1, char *a2, uint64_t *a3)
{
  v1071 = a2;
  v1092 = a1;
  v1087 = 0;
  sub_1D5E4CF90();
  v1052 = v4;
  v1051 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v1050 = &v1049 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v1049 = &v1049 - v9;
  v1061 = sub_1D725895C();
  v1060 = *(v1061 - 8);
  MEMORY[0x1EEE9AC00](v1061, v10);
  v1059 = &v1049 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D631F8C0(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v1063 = &v1049 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v1065 = &v1049 - v17;
  v1064 = type metadata accessor for FormatCustomItem.Resolved();
  MEMORY[0x1EEE9AC00](v1064, v18);
  v1066 = (&v1049 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1075 = type metadata accessor for FormatCustomItem();
  MEMORY[0x1EEE9AC00](v1075, v20);
  v1076 = &v1049 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PuzzleStatistic();
  v1058 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v1049 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v1062 = &v1049 - v28;
  v1080 = type metadata accessor for FormatWebEmbed.Resolved();
  MEMORY[0x1EEE9AC00](v1080, v29);
  v1069 = &v1049 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v1057 = &v1049 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v1056 = &v1049 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v1055 = &v1049 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v1053 = &v1049 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v1073 = &v1049 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v1054 = &v1049 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  v1079 = &v1049 - v51;
  v1090 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  v1083 = *(v1090 - 8);
  MEMORY[0x1EEE9AC00](v1090, v52);
  v54 = &v1049 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55, v56);
  v1070 = &v1049 - v57;
  v1086 = sub_1D72585BC();
  v1084 = *(v1086 - 1);
  MEMORY[0x1EEE9AC00](v1086, v58);
  v1074 = &v1049 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60, v61);
  v1078 = (&v1049 - v62);
  MEMORY[0x1EEE9AC00](v63, v64);
  v66 = &v1049 - v65;
  sub_1D631F958(0);
  MEMORY[0x1EEE9AC00](v67 - 8, v68);
  v1068 = &v1049 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70, v71);
  v1082 = &v1049 - v72;
  v1085 = type metadata accessor for FormatWebEmbed();
  MEMORY[0x1EEE9AC00](v1085, v73);
  v1072 = (&v1049 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v75, v76);
  v1077 = (&v1049 - v77);
  MEMORY[0x1EEE9AC00](v78, v79);
  v1067 = (&v1049 - v80);
  MEMORY[0x1EEE9AC00](v81, v82);
  v1081 = (&v1049 - v83);
  v1088 = type metadata accessor for FormatContentSlotItemResolution();
  v1094 = *(v1088 - 8);
  MEMORY[0x1EEE9AC00](v1088, v84);
  v86 = &v1049 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v87, v88);
  v90 = (&v1049 - v89);
  MEMORY[0x1EEE9AC00](v91, v92);
  v94 = (&v1049 - v93);
  MEMORY[0x1EEE9AC00](v95, v96);
  v98 = (&v1049 - v97);
  v99 = type metadata accessor for FormatContentSlotItemObject();
  MEMORY[0x1EEE9AC00](v99, v100);
  v102 = (&v1049 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0));
  v103 = a3[1];
  v1091 = *a3;
  v1093 = v103;
  sub_1D631F9C8(v1089, v102, type metadata accessor for FormatContentSlotItemObject);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v162 = *v102;
      v316 = v1092[1];
      if (!*(v316 + 16))
      {
        goto LABEL_180;
      }

      v317 = *(v162 + 16);
      v318 = *(v162 + 24);

      v319 = sub_1D5B69D90(v317, v318);
      v321 = v320;

      if ((v321 & 1) == 0)
      {
        goto LABEL_180;
      }

      v322 = *(*(v316 + 56) + 8 * v319);
      if (v322 >> 62)
      {
        v323 = sub_1D7263BFC();
        if (!v323)
        {
          goto LABEL_180;
        }
      }

      else
      {
        v323 = *((v322 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v323)
        {
          goto LABEL_180;
        }
      }

      v1092 = v162;
      *aBlock = MEMORY[0x1E69E7CC0];

      v171 = aBlock;
      sub_1D6997C80(0, v323 & ~(v323 >> 63), 0);
      if (v323 < 0)
      {
        goto LABEL_297;
      }

      v324 = 0;
      v25 = *aBlock;
      v325 = MEMORY[0x1E69E7CD0];
      v326 = v1088;
      do
      {
        if ((v322 & 0xC000000000000001) != 0)
        {
          v327 = MEMORY[0x1DA6FB460](v324, v322);
        }

        else
        {
          v327 = swift_unknownObjectRetain();
        }

        *v98 = v327;
        swift_storeEnumTagMultiPayload();
        v328 = (v98 + v326[5]);
        v329 = v1091;
        v330 = v1093;
        *v328 = v1091;
        v328[1] = v330;
        *(v98 + v326[6]) = v325;
        *(v98 + v326[7]) = MEMORY[0x1E69E7CC0];
        sub_1D5D615EC(v329);
        *aBlock = v25;
        v332 = *(v25 + 2);
        v331 = *(v25 + 3);
        if (v332 >= v331 >> 1)
        {
          sub_1D6997C80(v331 > 1, v332 + 1, 1);
          v326 = v1088;
          v25 = *aBlock;
        }

        ++v324;
        *(v25 + 2) = v332 + 1;
        sub_1D631FAC8(v98, &v25[((v1094[80] + 32) & ~v1094[80]) + *(v1094 + 9) * v332], type metadata accessor for FormatContentSlotItemResolution);
      }

      while (v323 != v324);
      goto LABEL_33;
    case 2u:
      v214 = *v102;
      v215 = v1092;
      v216 = v1092[2];
      if (!*(v216 + 16))
      {
        goto LABEL_180;
      }

      v217 = v214[2];
      v218 = v214[3];

      v219 = sub_1D5B69D90(v217, v218);
      v221 = v220;

      if ((v221 & 1) == 0)
      {
        goto LABEL_180;
      }

      v222 = *(*(v216 + 56) + 8 * v219);
      sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
      v223 = (v1094[80] + 32) & ~v1094[80];
      v25 = swift_allocObject();
      *(v25 + 1) = xmmword_1D7273AE0;
      v202 = &v25[v223];
      *v202 = v222;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      v204 = v214[8];
      v224 = swift_beginAccess();
      v207 = v214[9];
      MEMORY[0x1EEE9AC00](v224, v225);
      v209 = &v1049 - 4;
      *(&v1049 - 2) = v215;
      v226 = v222;
      v211 = v1091;
      v212 = v1093;
      sub_1D5D615EC(v1091);
      v213 = v226;

      goto LABEL_42;
    case 3u:
      v288 = *v102;
      v289 = v1092[3];
      if (!*(v289 + 16))
      {
        goto LABEL_180;
      }

      v290 = v288[2];
      v291 = v288[3];

      v292 = sub_1D5B69D90(v290, v291);
      v294 = v293;

      if ((v294 & 1) == 0)
      {
        goto LABEL_180;
      }

      v295 = *(*(v289 + 56) + 8 * v292);
      swift_beginAccess();
      v296 = v288[5];
      swift_beginAccess();
      v297 = v288[4];
      swift_unknownObjectRetain_n();

      sub_1D5EEC8D4(v296, v297);
      v299 = v298;

      if (v299)
      {
        v300 = sub_1D726203C();
      }

      else
      {
        v300 = 0;
      }

      v615 = v1093;
      v616 = v1091;
      [v295 updateDismissingIdentifier_];
      swift_unknownObjectRelease();

      sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
      v617 = (v1094[80] + 32) & ~v1094[80];
      v25 = swift_allocObject();
      *(v25 + 1) = xmmword_1D7273AE0;
      v618 = &v25[v617];
      *&v25[v617] = v295;
      v619 = swift_storeEnumTagMultiPayload();
      v620 = v288[4];
      v621 = v288[5];
      MEMORY[0x1EEE9AC00](v619, v622);
      v623 = &v1049 - 4;
      *(&v1049 - 2) = v1092;
      sub_1D5D615EC(v616);

      goto LABEL_172;
    case 4u:
      v162 = *v102;
      v163 = v1092[4];
      if (!*(v163 + 16))
      {
        goto LABEL_180;
      }

      v164 = *(v162 + 16);
      v165 = *(v162 + 24);

      v166 = sub_1D5B69D90(v164, v165);
      v168 = v167;

      if ((v168 & 1) == 0)
      {
        goto LABEL_180;
      }

      v169 = *(*(v163 + 56) + 8 * v166);
      if (v169 >> 62)
      {
        goto LABEL_291;
      }

      v170 = *((v169 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v170)
      {
        goto LABEL_25;
      }

      goto LABEL_180;
    case 5u:
      v351 = v1081;
      sub_1D631FAC8(v102, v1081, type metadata accessor for FormatWebEmbed);
      v352 = v1092;
      v1089 = sub_1D631BA64(v351, v1092);
      v354 = v353;
      v356 = v355;
      v357 = v1085[5];
      v358 = sub_1D725838C();
      v360 = v1071;
      v1076 = v354;
      v1075 = v356;
      if (!v359)
      {
        goto LABEL_137;
      }

      v361 = v352[22];
      if (*(v361 + 16))
      {
        v362 = sub_1D5B69D90(v358, v359);
        v364 = v363;

        if (v364)
        {
          v365 = (*(v361 + 56) + 24 * v362);
          v367 = *v365;
          v366 = v365[1];
          v368 = v365[2];
          v369 = *(v360 + 14);
          if (v369)
          {
            v371 = *(v360 + 15);
            v370 = *(v360 + 16);
            v372 = *(v1071 + 13);

            v373 = v372;
            v360 = v1071;
            sub_1D69F65B4(v351 + v357, v373, v369, v371, v370, v66);

            v374 = v1086;
            v375 = v1084;
          }

          else
          {
            v375 = v1084;
            v374 = v1086;
            (*(v1084 + 16))(v66, v351 + v357, v1086);
          }

          v701 = v1082;
          *v1082 = v367;
          *(v701 + 1) = v366;
          v702 = type metadata accessor for GenericDataVisualization();
          (*(v375 + 32))(&v701[*(v702 + 20)], v66, v374);
          *&v701[*(v702 + 24)] = v368;
          (*(*(v702 - 8) + 56))(v701, 0, 1, v702);
LABEL_138:
          sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
          v1074 = (v1094[80] + 32) & ~v1094[80];
          v25 = swift_allocObject();
          *(v25 + 1) = xmmword_1D7273AE0;
          v535 = *(v360 + 14);
          if (v535)
          {
            v537 = *(v360 + 15);
            v536 = *(v360 + 16);
            v538 = *(v360 + 13);

            sub_1D69F65B4(v351 + v357, v538, v535, v537, v536, v1078);
          }

          else
          {
            (*(v1084 + 16))(v1078, v351 + v357, v1086);
          }

          v539 = *v351;
          v540 = v351[1];
          if (v539 == sub_1D72583DC() && v540 == v541)
          {
          }

          else
          {
            v542 = sub_1D72646CC();

            if ((v542 & 1) == 0)
            {

LABEL_147:
              v543 = *(v360 + 16);
              *aBlock = *(v360 + 13);
              *&aBlock[8] = *(v360 + 7);
              *&aBlock[24] = v543;
              v544 = v1085;
              v545 = v1085[6];

              sub_1D69F6394(v351 + v545, v1079);

              v546 = *(v351 + v544[7]);
              v547 = (v351 + v544[8]);
              v548 = v547[1];
              v1073 = *v547;
              v549 = v544[10];
              v550 = v351 + v544[9];
              v1071 = *v550;
              v551 = v351;
              v552 = *(v550 + 1);
              v1072 = *(v551 + v549);
              v553 = *(v551 + v544[11]);
              v554 = *(v551 + v544[12]);

              v1094 = v554;
              v1083 = v553;
              v1066 = sub_1D5EEC8D4(v554, v553);
              v1065 = v555;
              v556 = v1078;
              (*(v1084 + 16))(v1077 + v544[5], v1078, v1086);
              if (!v540)
              {
                v539 = sub_1D72583DC();
                v540 = v557;
              }

              v558 = v1085;
              v559 = v1077;
              v560 = (v1077 + v1085[13]);
              *v1077 = v539;
              v559[1] = v540;
              v561 = v1079;
              sub_1D631F9C8(v1079, v559 + v558[6], sub_1D5B4D3E0);
              *(v559 + v558[7]) = v546;
              v562 = (v559 + v558[8]);
              *v562 = v1073;
              v562[1] = v548;
              v563 = (v559 + v558[9]);
              *v563 = v1071;
              v563[1] = v552;
              *(v559 + v558[10]) = v1072;
              *(v559 + v558[11]) = v1083;

              sub_1D631E0C8(v561, sub_1D5B4D3E0);
              (*(v1084 + 8))(v556, v1086);
              *(v559 + v558[12]) = v1094;
              v564 = v1065;
              *v560 = v1066;
              v560[1] = v564;
              v565 = v1067;
              sub_1D631FAC8(v559, v1067, type metadata accessor for FormatWebEmbed);
              v566 = v1081;
              v567 = sub_1D6D62024(v1081);
              v568 = sub_1D6D621AC(v566);
              v569 = v1089;
              if (v1089)
              {
                swift_unknownObjectRetain();
              }

              v1086 = &v25[v1074];
              v570 = v1068;
              sub_1D631F9C8(v1082, v1068, sub_1D631F958);
              v571 = v565[1];
              v572 = v1069;
              *v1069 = *v565;
              *(v572 + 8) = v571;
              v573 = v1080;
              sub_1D631F9C8(v565, v572 + *(v1080 + 20), type metadata accessor for FormatWebEmbed);
              *(v572 + v573[6]) = v567;
              *(v572 + v573[7]) = v568;
              v574 = v573[9];

              sub_1D6B42B58(v569, v572 + v574);
              sub_1D631E0C8(v565, type metadata accessor for FormatWebEmbed);
              v575 = type metadata accessor for GenericDataVisualization();
              v576 = (*(*(v575 - 8) + 48))(v570, 1, v575);
              v577 = v1091;
              v578 = v1070;
              if (v576 == 1)
              {
                sub_1D631E0C8(v570, sub_1D631F958);
                v579 = v573[8];
                v580 = type metadata accessor for WebEmbedDataVisualization();
                (*(*(v580 - 8) + 56))(v572 + v579, 1, 1, v580);
              }

              else
              {
                v581 = v573[8];
                sub_1D631FAC8(v570, v572 + v581, type metadata accessor for GenericDataVisualization);
                v582 = type metadata accessor for WebEmbedDataVisualization();
                swift_storeEnumTagMultiPayload();
                (*(*(v582 - 8) + 56))(v572 + v581, 0, 1, v582);
              }

              sub_1D631FAC8(v572, v578, type metadata accessor for FormatWebEmbed.Resolved);
              swift_storeEnumTagMultiPayload();
              v583 = v1089;
              if (v1089)
              {
                sub_1D5D615EC(v577);
                v584 = v1076;
                v585 = v1075;
                sub_1D631FA7C(v583);
                swift_unknownObjectRelease();

                v586 = sub_1D5D6021C(v584, v1083);
                swift_unknownObjectRetain();

                swift_unknownObjectRelease();
                v587 = v585;
              }

              else
              {
                sub_1D5D615EC(v577);
                v586 = sub_1D5D6021C(MEMORY[0x1E69E7CD0], v1083);
                v587 = MEMORY[0x1E69E7CC0];
              }

              *aBlock = v1094;

              v588 = sub_1D6985530(v587);
              v589 = *aBlock;
              MEMORY[0x1EEE9AC00](v588, v590);
              *(&v1049 - 2) = v1092;
              v591 = sub_1D7195F4C(sub_1D631FB38, (&v1049 - 4), v589);

              v592 = v1086;
              sub_1D631FAC8(v578, v1086, type metadata accessor for FormatContentSlotItemObject.Resolved);
              v593 = v1088;
              v594 = (v592 + *(v1088 + 20));
              v595 = v1093;
              *v594 = v577;
              v594[1] = v595;
              *(v592 + *(v593 + 24)) = v586;
              *(v592 + *(v593 + 28)) = v591;
              sub_1D631FA30(v583);
              sub_1D631E0C8(v1082, sub_1D631F958);
              v458 = type metadata accessor for FormatWebEmbed;
              v459 = aBlock;
LABEL_158:
              sub_1D631E0C8(*(v459 - 32), v458);
              return v25;
            }
          }

          v539 = 0;
          v540 = 0;
          goto LABEL_147;
        }
      }

      else
      {
      }

LABEL_137:
      v534 = type metadata accessor for GenericDataVisualization();
      (*(*(v534 - 8) + 56))(v1082, 1, 1, v534);
      goto LABEL_138;
    case 6u:
      v393 = *v102;
      v394 = v1092[6];
      if (!*(v394 + 16))
      {
        goto LABEL_180;
      }

      v395 = v393[2];
      v396 = v393[3];

      v397 = sub_1D5B69D90(v395, v396);
      v399 = v398;

      if ((v399 & 1) == 0)
      {
        goto LABEL_180;
      }

      v400 = *(*(v394 + 56) + 8 * v397);
      swift_beginAccess();
      v401 = v393[23];
      swift_beginAccess();
      v402 = v393[22];
      swift_unknownObjectRetain();

      sub_1D5EEC8D4(v401, v402);
      v404 = v403;

      if (v404)
      {
        v405 = sub_1D726203C();
      }

      else
      {
        v405 = 0;
      }

      v615 = v1093;
      v616 = v1091;
      [v400 updateDismissingIdentifier_];

      sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
      v660 = (v1094[80] + 32) & ~v1094[80];
      v25 = swift_allocObject();
      *(v25 + 1) = xmmword_1D7273AE0;
      v618 = &v25[v660];
      *&v25[v660] = v400;
      v661 = swift_storeEnumTagMultiPayload();
      v620 = v393[22];
      v621 = v393[23];
      MEMORY[0x1EEE9AC00](v661, v662);
      v623 = &v1049 - 4;
      *(&v1049 - 2) = v1092;
      sub_1D5D615EC(v616);
      swift_unknownObjectRetain();

LABEL_172:
      v630 = sub_1D7195F4C(sub_1D631FB38, v623, v621);

      v631 = v1088;
      v663 = &v618[*(v1088 + 20)];
      *v663 = v616;
      v663[1] = v615;
      goto LABEL_173;
    case 7u:
      v301 = *v102;
      v302 = v1092[7];
      if (!*(v302 + 16))
      {
        goto LABEL_180;
      }

      v303 = v301[2];
      v304 = v301[3];

      v305 = sub_1D5B69D90(v303, v304);
      v307 = v306;

      if ((v307 & 1) == 0)
      {
        goto LABEL_180;
      }

      v308 = *(*(v302 + 56) + 8 * v305);
      v309 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__properties;
      swift_beginAccess();
      v310 = *(v301 + v309);
      v311 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__selectors;
      swift_beginAccess();
      v312 = *(v301 + v311);
      swift_unknownObjectRetain();

      sub_1D5EEC8D4(v310, v312);
      v314 = v313;

      if (v314)
      {
        v315 = sub_1D726203C();
      }

      else
      {
        v315 = 0;
      }

      [v308 updateDismissingIdentifier_];

      sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
      v624 = (v1094[80] + 32) & ~v1094[80];
      v25 = swift_allocObject();
      *(v25 + 1) = xmmword_1D7273AE0;
      v618 = &v25[v624];
      *&v25[v624] = v308;
      v625 = swift_storeEnumTagMultiPayload();
      v620 = *(v301 + v311);
      v626 = *(v301 + v309);
      MEMORY[0x1EEE9AC00](v625, v627);
      *(&v1049 - 2) = v1092;
      v628 = v1091;
      v629 = v1093;
      sub_1D5D615EC(v1091);
      swift_unknownObjectRetain();

      v630 = sub_1D7195F4C(sub_1D631FB38, (&v1049 - 4), v626);

      v631 = v1088;
      v632 = &v618[*(v1088 + 20)];
      *v632 = v628;
      v632[1] = v629;
LABEL_173:
      *&v618[*(v631 + 24)] = v620;
      *&v618[*(v631 + 28)] = v630;

      swift_unknownObjectRelease();
      return v25;
    case 8u:
      v438 = v102[1];
      v440 = v102[2];
      v439 = v102[3];
      v441 = v102[4];
      v442 = v1092;
      v443 = v1092[8];
      v444 = *(*v102 + 24);
      *aBlock = *(*v102 + 16);
      *&aBlock[8] = v444;

      MEMORY[0x1DA6F9910](v438, v440);
      if (*(v443 + 16))
      {
        v445 = sub_1D5B69D90(*aBlock, *&aBlock[8]);
        v447 = v446;

        if (v447)
        {
          sub_1D631F9C8(*(v443 + 56) + *(v1058 + 72) * v445, v25, type metadata accessor for PuzzleStatistic);
          v448 = v1062;
          sub_1D631FAC8(v25, v1062, type metadata accessor for PuzzleStatistic);
          sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
          v449 = (v1094[80] + 32) & ~v1094[80];
          v25 = swift_allocObject();
          *(v25 + 1) = xmmword_1D7273AE0;
          v450 = &v25[v449];
          sub_1D631F9C8(v448, v450, type metadata accessor for PuzzleStatistic);
          v451 = swift_storeEnumTagMultiPayload();
          MEMORY[0x1EEE9AC00](v451, v452);
          *(&v1049 - 2) = v442;
          v453 = v1091;
          v454 = v1093;
          sub_1D5D615EC(v1091);

          v455 = sub_1D7195F4C(sub_1D631FB38, (&v1049 - 4), v441);

          v456 = v1088;
          v457 = (v450 + *(v1088 + 20));
          *v457 = v453;
          v457[1] = v454;
          *(v450 + *(v456 + 24)) = v439;
          *(v450 + *(v456 + 28)) = v455;

          v458 = type metadata accessor for PuzzleStatistic;
          v459 = &v1094;
          goto LABEL_158;
        }
      }

      else
      {
      }

      goto LABEL_180;
    case 9u:
      v192 = *v102;
      v193 = v1092;
      v194 = v1092[9];
      if (!*(v194 + 16))
      {
        goto LABEL_180;
      }

      v195 = *(v192 + 16);
      v196 = *(v192 + 24);

      v197 = sub_1D5B69D90(v195, v196);
      v199 = v198;

      if ((v199 & 1) == 0)
      {
        goto LABEL_180;
      }

      v200 = *(*(v194 + 56) + 8 * v197);
      sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
      v201 = (v1094[80] + 32) & ~v1094[80];
      v25 = swift_allocObject();
      *(v25 + 1) = xmmword_1D7273AE0;
      v202 = &v25[v201];
      *v202 = v200;
      swift_storeEnumTagMultiPayload();
      v203 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__selectors;
      swift_beginAccess();
      v204 = *(v192 + v203);
      v205 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__properties;
      v206 = swift_beginAccess();
      v207 = *(v192 + v205);
      MEMORY[0x1EEE9AC00](v206, v208);
      v209 = &v1049 - 4;
      *(&v1049 - 2) = v193;
      v210 = v200;
      v211 = v1091;
      v212 = v1093;
      sub_1D5D615EC(v1091);
      v213 = v210;

LABEL_42:
      v227 = sub_1D7195F4C(sub_1D631FB38, v209, v207);

      v228 = v1088;
      v229 = &v202[*(v1088 + 20)];
      *v229 = v211;
      v229[1] = v212;
      *&v202[*(v228 + 24)] = v204;
      *&v202[*(v228 + 28)] = v227;

      return v25;
    case 0xAu:
      v424 = v1092[10];
      if (!*(v424 + 16))
      {
        goto LABEL_127;
      }

      v425 = sub_1D5B69D90(*v102, v102[1]);
      v427 = v426;

      if ((v427 & 1) == 0)
      {
        return MEMORY[0x1E69E7CC0];
      }

      v162 = *(*(v424 + 56) + 8 * v425);
      if (v162 >> 62)
      {
        v428 = sub_1D7263BFC();
      }

      else
      {
        v428 = *((v162 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v429 = MEMORY[0x1E69E7CC0];
      if (!v428)
      {
        return MEMORY[0x1E69E7CC0];
      }

      *aBlock = MEMORY[0x1E69E7CC0];

      v171 = aBlock;
      sub_1D6997C80(0, v428 & ~(v428 >> 63), 0);
      if (v428 < 0)
      {
        goto LABEL_298;
      }

      v430 = 0;
      v25 = *aBlock;
      v431 = v1088;
      do
      {
        if ((v162 & 0xC000000000000001) != 0)
        {
          v432 = MEMORY[0x1DA6FB460](v430, v162);
        }

        else
        {
          v432 = *(v162 + 8 * v430 + 32);
        }

        *v90 = v432;
        swift_storeEnumTagMultiPayload();
        v433 = (v90 + v431[5]);
        v434 = v1091;
        v435 = v1093;
        *v433 = v1091;
        v433[1] = v435;
        *(v90 + v431[6]) = MEMORY[0x1E69E7CD0];
        *(v90 + v431[7]) = v429;
        sub_1D5D615EC(v434);
        *aBlock = v25;
        v437 = *(v25 + 2);
        v436 = *(v25 + 3);
        if (v437 >= v436 >> 1)
        {
          sub_1D6997C80(v436 > 1, v437 + 1, 1);
          v431 = v1088;
          v25 = *aBlock;
        }

        ++v430;
        *(v25 + 2) = v437 + 1;
        sub_1D631FAC8(v90, &v25[((v1094[80] + 32) & ~v1094[80]) + *(v1094 + 9) * v437], type metadata accessor for FormatContentSlotItemResolution);
      }

      while (v428 != v430);

      return v25;
    case 0xBu:
      v155 = *v102;
      v154 = v102[1];
      if (v102[2])
      {
        sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
        v156 = (v1094[80] + 32) & ~v1094[80];
        v25 = swift_allocObject();
        *(v25 + 1) = xmmword_1D7273AE0;
        v157 = &v25[v156];
        *v157 = v155;
        *(v157 + 1) = v154;
        v157[16] = 0;
        swift_storeEnumTagMultiPayload();
        v158 = v1088;
        v159 = &v157[*(v1088 + 20)];
        v160 = v1091;
        v161 = v1093;
        *v159 = v1091;
        *(v159 + 1) = v161;
        *&v157[*(v158 + 24)] = MEMORY[0x1E69E7CD0];
        *&v157[*(v158 + 28)] = MEMORY[0x1E69E7CC0];
        sub_1D5D615EC(v160);
        return v25;
      }

      v479 = v1092[11];
      if (!*(v479 + 16))
      {
LABEL_127:

        return MEMORY[0x1E69E7CC0];
      }

      v480 = sub_1D5B69D90(*v102, v102[1]);
      v169 = v481;

      if ((v169 & 1) == 0)
      {
        return MEMORY[0x1E69E7CC0];
      }

      v482 = (*(v479 + 56) + (v480 << 6));
      v483 = v482[3];
      v484 = *v482;
      v485 = v482[1];
      v1099 = v482[2];
      v1100 = v483;
      *aBlock = v484;
      *&aBlock[16] = v485;
      v486 = v485;
      v162 = *(v485 + 16);
      v25 = MEMORY[0x1E69E7CC0];
      if (!v162)
      {
        return v25;
      }

      v1097 = MEMORY[0x1E69E7CC0];
      sub_1D5E2A788(aBlock, &v1095);
      v1093 = v486;
      sub_1D6E76EBC(v162);
      v487 = v1093;
      v488 = 0;
      v489 = v1093 + ((*(v1083 + 80) + 32) & ~*(v1083 + 80));
      v94 = v1087;
      while (2)
      {
        if (v488 < *(v487 + 16))
        {
          sub_1D631F9C8(v489 + v1083[9] * v488, v54, type metadata accessor for FormatContentSlotItemObject.Resolved);
          sub_1D631BBF4(v54, aBlock, v86);
          sub_1D631E0C8(v54, type metadata accessor for FormatContentSlotItemObject.Resolved);
          v25 = v1097;
          if (!v94)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1D6997C80(0, *(v25 + 2) + 1, 1);
              v487 = v1093;
              v25 = v1097;
            }

            v491 = *(v25 + 2);
            v490 = *(v25 + 3);
            v169 = v491 + 1;
            if (v491 >= v490 >> 1)
            {
              sub_1D6997C80(v490 > 1, v491 + 1, 1);
              v487 = v1093;
              v25 = v1097;
            }

            ++v488;
            *(v25 + 2) = v169;
            sub_1D631FAC8(v86, &v25[((v1094[80] + 32) & ~v1094[80]) + *(v1094 + 9) * v491], type metadata accessor for FormatContentSlotItemResolution);
            if (v162 == v488)
            {
              sub_1D5ECF270(aBlock);
              return v25;
            }

            continue;
          }

          __break(1u);
          return result;
        }

        break;
      }

      __break(1u);
LABEL_291:
      v170 = sub_1D7263BFC();
      if (!v170)
      {
        goto LABEL_180;
      }

LABEL_25:
      v1092 = v162;
      *aBlock = MEMORY[0x1E69E7CC0];
      v54 = (v170 & ~(v170 >> 63));

      v171 = aBlock;
      sub_1D6997C80(0, v54, 0);
      if ((v170 & 0x8000000000000000) == 0)
      {
        v172 = 0;
        v25 = *aBlock;
        v173 = MEMORY[0x1E69E7CD0];
        v174 = v1088;
        do
        {
          if ((v169 & 0xC000000000000001) != 0)
          {
            v175 = MEMORY[0x1DA6FB460](v172, v169);
          }

          else
          {
            v175 = swift_unknownObjectRetain();
          }

          *v94 = v175;
          swift_storeEnumTagMultiPayload();
          v176 = (v94 + v174[5]);
          v177 = v1091;
          v178 = v1093;
          *v176 = v1091;
          v176[1] = v178;
          *(v94 + v174[6]) = v173;
          *(v94 + v174[7]) = MEMORY[0x1E69E7CC0];
          sub_1D5D615EC(v177);
          *aBlock = v25;
          v180 = *(v25 + 2);
          v179 = *(v25 + 3);
          if (v180 >= v179 >> 1)
          {
            sub_1D6997C80(v179 > 1, v180 + 1, 1);
            v174 = v1088;
            v25 = *aBlock;
          }

          ++v172;
          *(v25 + 2) = v180 + 1;
          sub_1D631FAC8(v94, &v25[((v1094[80] + 32) & ~v1094[80]) + *(v1094 + 9) * v180], type metadata accessor for FormatContentSlotItemResolution);
        }

        while (v170 != v172);
LABEL_33:

        return v25;
      }

      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
      goto LABEL_299;
    case 0xCu:
      v181 = v1076;
      sub_1D631FAC8(v102, v1076, type metadata accessor for FormatCustomItem);
      v182 = v181[1];
      v1089 = *v181;
      v184 = v181[2];
      v183 = v181[3];
      v185 = v1063;
      sub_1D631F9C8(v181 + *(v1075 + 24), v1063, sub_1D631F8C0);
      v186 = type metadata accessor for FormatCustomItem.Action();
      v187 = *(v186 - 8);
      v188 = 1;
      LODWORD(v181) = (*(v187 + 48))(v185, 1, v186);

      v189 = sub_1D631F8C0;
      if (v181 == 1)
      {
        v190 = v1091;
        v191 = v1065;
      }

      else
      {
        v191 = v1065;
        sub_1D6C92DDC(v1071, v1065);
        v188 = 0;
        v189 = type metadata accessor for FormatCustomItem.Action;
        v190 = v1091;
      }

      sub_1D631E0C8(v185, v189);
      v492 = (*(v187 + 56))(v191, v188, 1, v186);
      v493 = v1075;
      v494 = v1076;
      v495 = *&v1076[*(v1075 + 28)];
      MEMORY[0x1EEE9AC00](v492, v496);
      *(&v1049 - 2) = v1092;
      v497 = sub_1D7195F4C(sub_1D631FB38, (&v1049 - 4), v495);
      v498 = *&v494[*(v493 + 32)];
      v499 = sub_1D5EEC8D4(v495, v498);
      v501 = v500;
      v502 = v191;
      v503 = v1066;
      *v1066 = v1089;
      v503[1] = v182;
      v503[2] = v184;
      v503[3] = v183;
      v504 = v1064;
      sub_1D631FAC8(v502, v503 + *(v1064 + 24), sub_1D631F8C0);
      *(v503 + *(v504 + 28)) = v497;
      v505 = (v503 + *(v504 + 32));
      *v505 = v499;
      v505[1] = v501;
      sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
      v506 = (v1094[80] + 32) & ~v1094[80];
      v25 = swift_allocObject();
      *(v25 + 1) = xmmword_1D7273AE0;
      v507 = &v25[v506];
      sub_1D631F9C8(v503, v507, type metadata accessor for FormatCustomItem.Resolved);
      swift_storeEnumTagMultiPayload();
      v508 = v1088;
      v509 = (v507 + *(v1088 + 20));
      v510 = v1093;
      *v509 = v190;
      v509[1] = v510;
      *(v507 + *(v508 + 24)) = v498;
      *(v507 + *(v508 + 28)) = MEMORY[0x1E69E7CC0];
      sub_1D5D615EC(v190);

      sub_1D631E0C8(v503, type metadata accessor for FormatCustomItem.Resolved);
      sub_1D631E0C8(v494, type metadata accessor for FormatCustomItem);
      return v25;
    case 0xDu:
      v376 = *v102;
      v377 = v1092[15];
      if (!*(v377 + 16))
      {
        goto LABEL_180;
      }

      v378 = *(v376 + 4);
      v379 = *(v376 + 5);

      v380 = sub_1D5B69D90(v378, v379);
      v382 = v381;

      if ((v382 & 1) == 0)
      {
        goto LABEL_180;
      }

      v383 = *(*(v377 + 56) + 8 * v380);
      v384 = *(v383 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config);
      v385 = *(v383 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 8);
      v386 = *(v383 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 16);
      v387 = *(v383 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 24);
      v388 = *(v383 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 32);
      v389 = *(v383 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 40);
      v1079 = v376;
      v1078 = v383;
      v1076 = v388;
      v1075 = v389;
      if (v385)
      {

        v1070 = v384;
        v1089 = v385;
        v1083 = v386;
        v390 = v387;
        v391 = v388;
        v1082 = v389;
        v392 = v384;
        goto LABEL_264;
      }

      v651 = v1092[3];
      v652 = *(v651 + 16);
      v1069 = v384;
      v1068 = v386;
      v1067 = 0;
      v1066 = v387;
      if (v652)
      {
        v654 = *(v376 + 2);
        v653 = *(v376 + 3);

        v655 = sub_1D5B69D90(v654, v653);
        v656 = v1061;
        v657 = v1060;
        if (v658)
        {
          v659 = *(*(v651 + 56) + 8 * v655);
          swift_unknownObjectRetain();
        }

        else
        {
          v659 = 0;
        }
      }

      else
      {

        v659 = 0;
        v656 = v1061;
        v657 = v1060;
      }

      v799 = *(v383 + 64);
      v800 = v1079;
      swift_beginAccess();
      v801 = v800[6];
      v802 = swift_beginAccess();
      v803 = v800[7];
      MEMORY[0x1EEE9AC00](v802, v804);
      *(&v1049 - 2) = v1092;
      swift_unknownObjectRetain();
      v1081 = v801;

      v805 = v1087;
      v806 = sub_1D7195F4C(sub_1D631F9AC, (&v1049 - 4), v803);
      v1087 = v805;

      swift_beginAccess();
      v807 = v800[8];
      v808 = v800[9];

      v809 = sub_1D6C2B5D8(v807, v808);

      v810 = v1059;
      sub_1D725894C();
      v811 = sub_1D725893C();
      v1089 = v812;
      (*(v657 + 8))(v810, v656);
      if (v659)
      {
        v1083 = [v659 asSports];
      }

      else
      {
        v1083 = 0;
      }

      v813 = v1086;
      aBlock[0] = 0;
      v814 = sub_1D69229B4(v659, v806, aBlock);

      *aBlock = MEMORY[0x1E69E7CC0];
      if (v659)
      {
        swift_getObjectType();
        LOBYTE(v1096) = 0;
        v815 = v1054;
        sub_1D6924500(&v1096, v1054);
        sub_1D631E0C8(v815, sub_1D5B4D3E0);
        v816 = [v659 asSports];
        if (v816)
        {
          v817 = [v816 UMCCanonicalID];
          if (v817)
          {
            v1077 = v814;
            v818 = v817;
            v819 = sub_1D726207C();
            v821 = v820;

            v822 = sub_1D698CCE4(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v824 = *(v822 + 2);
            v823 = *(v822 + 3);
            if (v824 >= v823 >> 1)
            {
              v822 = sub_1D698CCE4((v823 > 1), v824 + 1, 1, v822);
            }

            swift_unknownObjectRelease();
            *(v822 + 2) = v824 + 1;
            v825 = &v822[32 * v824];
            *(v825 + 4) = 0x7463656A627573;
            *(v825 + 5) = 0xE700000000000000;
            *(v825 + 6) = v819;
            *(v825 + 7) = v821;
            *aBlock = v822;
            v814 = v1077;
LABEL_255:
            if (v799)
            {
              v913 = [swift_unknownObjectRetain() UMCCanonicalID];
              if (v913)
              {
                v914 = v913;
                v915 = sub_1D726207C();
                v917 = v916;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v822 = sub_1D698CCE4(0, *(v822 + 2) + 1, 1, v822);
                }

                v919 = *(v822 + 2);
                v918 = *(v822 + 3);
                if (v919 >= v918 >> 1)
                {
                  v822 = sub_1D698CCE4((v918 > 1), v919 + 1, 1, v822);
                }

                swift_unknownObjectRelease();
                *(v822 + 2) = v919 + 1;
                v920 = &v822[32 * v919];
                *(v920 + 4) = 0x65756761656CLL;
                *(v920 + 5) = 0xE600000000000000;
                *(v920 + 6) = v915;
                *(v920 + 7) = v917;
                *aBlock = v822;
              }

              else
              {
                swift_unknownObjectRelease();
              }
            }

            sub_1D5B5D358(0, &unk_1EDF01EA8);
            v921 = swift_allocObject();
            *(v921 + 16) = xmmword_1D7270C10;
            *(v921 + 32) = 0x756F724764656566;
            *(v921 + 40) = 0xE900000000000070;
            *(v921 + 48) = 0x64657461727563;
            *(v921 + 56) = 0xE700000000000000;
            *(v921 + 64) = 0xD000000000000011;
            *(v921 + 72) = 0x80000001D73CAA10;
            *(v921 + 80) = 0x746C7561666564;
            *(v921 + 88) = 0xE700000000000000;
            sub_1D6987B44(v921);
            sub_1D6987B44(v809);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v1082 = *aBlock;
            v390 = v1081;
            v391 = v814;
            v392 = v1069;
            v1070 = v811;
            v385 = v1067;
LABEL_264:
            v1077 = v391;
            v1081 = v390;
            v922 = v391;
            sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
            v923 = (v1094[80] + 32) & ~v1094[80];
            v25 = swift_allocObject();
            *(v25 + 1) = xmmword_1D7273AE0;
            v1071 = &v25[v923];
            v924 = swift_allocObject();
            *aBlock = v1070;
            *&aBlock[8] = v1089;
            *&aBlock[16] = v1083;
            *&aBlock[24] = v390;
            *&v1099 = v922;
            *(&v1099 + 1) = v1082;
            sub_1D5F8B638(v392, v385);
            *(v924 + 16) = SportsScoreDataVisualization.with(config:)(aBlock);
            *aBlock = v924;
            v1094 = v924;
            v925 = v1074;
            SportsDataVisualization.configuredEmbedUrl.getter(v1074);
            v1096 = v924;
            v926 = SportsDataVisualization.identifier.getter();
            v928 = v927;
            v929 = v1084;
            v1075 = *(v1084 + 56);
            v1076 = (v1084 + 56);
            v930 = v1073;
            v931 = v1086;
            (v1075)(v1073, 1, 1, v1086);
            v932 = v1085;
            v933 = v1072;
            v934 = v1072 + v1085[13];
            (*(v929 + 16))(v1072 + v1085[5], v925, v931);
            *v933 = v926;
            v933[1] = v928;
            sub_1D631F9C8(v930, v933 + v932[6], sub_1D5B4D3E0);
            *(v933 + v932[7]) = 0;
            v935 = (v933 + v932[8]);
            *v935 = 0;
            v935[1] = 0;
            v936 = (v933 + v932[9]);
            *v936 = 0;
            v936[1] = 0;
            *(v933 + v932[10]) = 0;
            *(v933 + v932[11]) = MEMORY[0x1E69E7CD0];
            sub_1D631E0C8(v930, sub_1D5B4D3E0);
            v937 = v925;
            v938 = v931;
            (*(v929 + 8))(v937, v931);
            *(v933 + v932[12]) = MEMORY[0x1E69E7CC0];
            *v934 = 0;
            *(v934 + 1) = 0;
            v939 = v1071;
            *v1071 = v926;
            *(v939 + 1) = v928;
            v940 = v1080;
            sub_1D631F9C8(v933, &v939[*(v1080 + 20)], type metadata accessor for FormatWebEmbed);
            v941 = v1075;
            (v1075)(v930, 1, 1, v938);
            sub_1D631F8F4(0, &unk_1EDF43A70, sub_1D5B4D3E0, MEMORY[0x1E69D6B18]);
            swift_allocObject();

            *&v939[v940[6]] = sub_1D725BB1C();
            v941(v930, 1, 1, v1086);
            swift_allocObject();
            v942 = sub_1D725BB1C();
            sub_1D631E0C8(v933, type metadata accessor for FormatWebEmbed);
            *&v939[v940[7]] = v942;
            v943 = v940[9];
            sub_1D631F8F4(0, &qword_1EDF43A20, sub_1D5B5D6A0, MEMORY[0x1E69D6C08]);
            (*(*(v944 - 8) + 56))(&v939[v943], 1, 1, v944);
            v945 = v940[8];
            *&v939[v945] = v1094;
            v946 = type metadata accessor for WebEmbedDataVisualization();
            swift_storeEnumTagMultiPayload();
            (*(*(v946 - 8) + 56))(&v939[v945], 0, 1, v946);
            swift_storeEnumTagMultiPayload();
            v947 = v1079;
            swift_beginAccess();
            v948 = v947[6];
            v949 = swift_beginAccess();
            v950 = v947[7];
            MEMORY[0x1EEE9AC00](v949, v951);
            *(&v1049 - 2) = v1092;
            v952 = v1091;
            v953 = v1093;
            sub_1D5D615EC(v1091);

            v954 = sub_1D7195F4C(sub_1D631FB38, (&v1049 - 4), v950);

            v955 = v1088;
            v956 = &v939[*(v1088 + 20)];
            *v956 = v952;
            v956[1] = v953;
            *&v939[*(v955 + 24)] = v948;
            *&v939[*(v955 + 28)] = v954;

            goto LABEL_288;
          }

          swift_unknownObjectRelease();
        }
      }

      else
      {
        v826 = v1054;
        (*(v1084 + 56))(v1054, 1, 1, v813);
        sub_1D631E0C8(v826, sub_1D5B4D3E0);
      }

      v822 = MEMORY[0x1E69E7CC0];
      goto LABEL_255;
    case 0xEu:
      v131 = *v102;
      v132 = v1092;
      v133 = v1092[16];
      if (!*(v133 + 16))
      {
        goto LABEL_180;
      }

      v134 = v131[2];
      v135 = v131[3];

      v136 = sub_1D5B69D90(v134, v135);
      LOBYTE(v134) = v137;

      if ((v134 & 1) == 0)
      {
        goto LABEL_180;
      }

      v138 = v132[3];
      if (!*(v138 + 16))
      {
        goto LABEL_180;
      }

      v139 = *(*(v133 + 56) + 8 * v136);
      v140 = v131[2];
      v141 = v131[3];

      v142 = sub_1D5B69D90(v140, v141);
      v144 = v143;

      if ((v144 & 1) == 0)
      {
        goto LABEL_179;
      }

      v145 = *(*(v138 + 56) + 8 * v142);
      v146 = *(v139 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config);
      v147 = *(v139 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 8);
      v149 = *(v139 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 16);
      v148 = *(v139 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 24);
      v150 = *(v139 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 32);
      v151 = *(v139 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 40);
      v1089 = v145;
      v1077 = v147;
      v1076 = v146;
      v1075 = v151;
      v1070 = v148;
      v1069 = v150;
      if (v147)
      {
        swift_unknownObjectRetain();
        v152 = v149;
        v153 = v147;
        v1068 = v146;
      }

      else
      {
        v757 = v139[7];
        swift_beginAccess();
        v758 = v131[6];
        v759 = swift_beginAccess();
        v1083 = &v1049;
        v760 = v131[7];
        MEMORY[0x1EEE9AC00](v759, v761);
        *(&v1049 - 2) = v1092;
        swift_unknownObjectRetain();

        swift_unknownObjectRetain_n();
        v762 = v1087;
        v763 = sub_1D7195F4C(sub_1D631FB38, (&v1049 - 4), v760);
        v1087 = v762;

        swift_beginAccess();
        v764 = v131[4];
        v765 = v131[5];

        v766 = sub_1D6C2B5D8(v764, v765);

        LOBYTE(v1096) = 2;
        sub_1D69219B4(v145, v757, 0, v758, v763, v766, &v1096, aBlock);
        v153 = *&aBlock[8];
        v1068 = *aBlock;
        v148 = *&aBlock[24];
        v152 = *&aBlock[16];
        v151 = *(&v1099 + 1);
        v150 = v1099;
      }

      sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
      v767 = (v1094[80] + 32) & ~v1094[80];
      v25 = swift_allocObject();
      *(v25 + 1) = xmmword_1D7273AE0;
      v1071 = &v25[v767];
      v768 = swift_allocObject();
      *aBlock = v1068;
      *&aBlock[8] = v153;
      v1082 = v153;
      v1083 = v152;
      *&aBlock[16] = v152;
      *&aBlock[24] = v148;
      v1081 = v148;
      v1079 = v150;
      *&v1099 = v150;
      *(&v1099 + 1) = v151;
      v1078 = v151;
      sub_1D5F8B638(v1076, v1077);
      *(v768 + 16) = SportsStandingDataVisualization.with(config:)(aBlock);
      v1076 = (v768 | 0x2000000000000000);
      *aBlock = v768 | 0x2000000000000000;
      v769 = v1074;
      SportsDataVisualization.configuredEmbedUrl.getter(v1074);
      v1096 = v768 | 0x2000000000000000;
      v770 = SportsDataVisualization.identifier.getter();
      v772 = v771;
      v1077 = v139;
      v773 = v1084;
      v1075 = *(v1084 + 56);
      v1094 = (v1084 + 56);
      v774 = v1073;
      v775 = v1086;
      (v1075)(v1073, 1, 1, v1086);
      v776 = v1085;
      v777 = v1072;
      v1070 = v1072 + v1085[13];
      (*(v773 + 16))(v1072 + v1085[5], v769, v775);
      *v777 = v770;
      v777[1] = v772;
      sub_1D631F9C8(v774, v777 + v776[6], sub_1D5B4D3E0);
      *(v777 + v776[7]) = 0;
      v778 = (v777 + v776[8]);
      *v778 = 0;
      v778[1] = 0;
      v779 = (v777 + v776[9]);
      *v779 = 0;
      v779[1] = 0;
      *(v777 + v776[10]) = 0;
      *(v777 + v776[11]) = MEMORY[0x1E69E7CD0];
      sub_1D631E0C8(v774, sub_1D5B4D3E0);
      (*(v773 + 8))(v769, v775);
      *(v777 + v776[12]) = MEMORY[0x1E69E7CC0];
      v780 = v1070;
      *v1070 = 0;
      *(v780 + 1) = 0;
      v781 = v1071;
      *v1071 = v770;
      *(v781 + 1) = v772;
      v782 = v1080;
      sub_1D631F9C8(v777, &v781[*(v1080 + 20)], type metadata accessor for FormatWebEmbed);
      v783 = v775;
      v784 = v1075;
      (v1075)(v774, 1, 1, v783);
      sub_1D631F8F4(0, &unk_1EDF43A70, sub_1D5B4D3E0, MEMORY[0x1E69D6B18]);
      swift_allocObject();

      *&v781[v782[6]] = sub_1D725BB1C();
      v784(v774, 1, 1, v1086);
      swift_allocObject();
      v785 = sub_1D725BB1C();
      sub_1D631E0C8(v777, type metadata accessor for FormatWebEmbed);
      *&v781[v782[7]] = v785;
      v786 = v782[9];
      sub_1D631F8F4(0, &qword_1EDF43A20, sub_1D5B5D6A0, MEMORY[0x1E69D6C08]);
      (*(*(v787 - 8) + 56))(&v781[v786], 1, 1, v787);
      v788 = v782[8];
      *&v781[v788] = v1076;
      v789 = type metadata accessor for WebEmbedDataVisualization();
      swift_storeEnumTagMultiPayload();
      (*(*(v789 - 8) + 56))(&v781[v788], 0, 1, v789);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      v790 = v131[6];
      v791 = swift_beginAccess();
      v792 = v131[7];
      MEMORY[0x1EEE9AC00](v791, v793);
      *(&v1049 - 2) = v1092;
      v794 = v1091;
      v795 = v1093;
      sub_1D5D615EC(v1091);

      v796 = sub_1D7195F4C(sub_1D631FB38, (&v1049 - 4), v792);

      v797 = v1088;
      v798 = &v781[*(v1088 + 20)];
      *v798 = v794;
      v798[1] = v795;
      *&v781[*(v797 + 24)] = v790;
      *&v781[*(v797 + 28)] = v796;

      swift_unknownObjectRelease();

      goto LABEL_288;
    case 0xFu:
      v230 = *v102;
      v231 = v1092;
      v232 = v1092[17];
      if (!*(v232 + 16))
      {
        goto LABEL_180;
      }

      v233 = *(v230 + 2);
      v234 = *(v230 + 3);

      v235 = sub_1D5B69D90(v233, v234);
      LOBYTE(v233) = v236;

      if ((v233 & 1) == 0)
      {
        goto LABEL_180;
      }

      v237 = v231[3];
      if (!*(v237 + 16))
      {
        goto LABEL_180;
      }

      v238 = *(*(v232 + 56) + 8 * v235);
      v239 = *(v230 + 2);
      v240 = *(v230 + 3);

      v241 = sub_1D5B69D90(v239, v240);
      v243 = v242;

      if (v243)
      {
        v1089 = *(*(v237 + 56) + 8 * v241);
        v246 = v1089;
        MEMORY[0x1EEE9AC00](v244, v245);
        *(&v1049 - 4) = v246;
        *(&v1049 - 3) = v230;
        *(&v1049 - 2) = v231;
        type metadata accessor for SportsBracketDataVisualization();
        swift_unknownObjectRetain();
        v1083 = v238;
        v247 = v1049;
        v248 = v1052;
        v249 = v1087;
        sub_1D725BE7C();
        v1087 = v249;
        v250 = v1051;
        v251 = v1050;
        (*(v1051 + 16))(v1050, v247, v248);
        type metadata accessor for SportsBracketGroupDataVisualization();
        swift_allocObject();
        v252 = SportsBracketGroupDataVisualization.init(visualizations:)(v251);
        (*(v250 + 8))(v247, v248);
        sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
        v253 = (v1094[80] + 32) & ~v1094[80];
        v25 = swift_allocObject();
        *(v25 + 1) = xmmword_1D7273AE0;
        v1094 = &v25[v253];
        v254 = swift_allocObject();
        v1082 = v252;
        *(v254 + 16) = v252;
        *aBlock = v254 | 0x4000000000000000;
        v255 = v254 | 0x4000000000000000;
        v1081 = (v254 | 0x4000000000000000);

        v256 = v1074;
        SportsDataVisualization.configuredEmbedUrl.getter(v1074);
        v1095 = v255;
        v257 = SportsDataVisualization.identifier.getter();
        v1077 = v258;
        v259 = v1084;
        v260 = *(v1084 + 56);
        v1078 = (v1084 + 56);
        v1079 = v260;
        v261 = v1073;
        v262 = v1086;
        (v260)(v1073, 1, 1, v1086);
        v263 = v1085;
        v264 = v1072;
        v265 = v1072 + v1085[13];
        (*(v259 + 16))(v1072 + v1085[5], v256, v262);
        v266 = v1077;
        *v264 = v257;
        v264[1] = v266;
        sub_1D631F9C8(v261, v264 + v263[6], sub_1D5B4D3E0);
        *(v264 + v263[7]) = 0;
        v267 = (v264 + v263[8]);
        *v267 = 0;
        v267[1] = 0;
        v268 = (v264 + v263[9]);
        *v268 = 0;
        v268[1] = 0;
        *(v264 + v263[10]) = 0;
        *(v264 + v263[11]) = MEMORY[0x1E69E7CD0];
        sub_1D631E0C8(v261, sub_1D5B4D3E0);
        (*(v259 + 8))(v1074, v262);
        *(v264 + v263[12]) = MEMORY[0x1E69E7CC0];
        *v265 = 0;
        *(v265 + 1) = 0;
        v269 = v1094;
        *v1094 = v257;
        *(v269 + 1) = v266;
        sub_1D631F9C8(v264, &v269[*(v1080 + 20)], type metadata accessor for FormatWebEmbed);
        v270 = v1079;
        (v1079)(v261, 1, 1, v262);
        sub_1D631F8F4(0, &unk_1EDF43A70, sub_1D5B4D3E0, MEMORY[0x1E69D6B18]);
        swift_allocObject();

        v271 = sub_1D725BB1C();
        v272 = v1080;
        v273 = v1094;
        *&v1094[*(v1080 + 24)] = v271;
        v270(v261, 1, 1, v1086);
        swift_allocObject();
        v274 = sub_1D725BB1C();
        sub_1D631E0C8(v264, type metadata accessor for FormatWebEmbed);
        *&v273[v272[7]] = v274;
        v275 = v272[9];
        sub_1D631F8F4(0, &qword_1EDF43A20, sub_1D5B5D6A0, MEMORY[0x1E69D6C08]);
        (*(*(v276 - 8) + 56))(&v273[v275], 1, 1, v276);
        v277 = v272[8];
        *&v273[v277] = v1081;
        v278 = type metadata accessor for WebEmbedDataVisualization();
        swift_storeEnumTagMultiPayload();
        (*(*(v278 - 8) + 56))(&v273[v277], 0, 1, v278);
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        v279 = *(v230 + 6);
        v280 = swift_beginAccess();
        v281 = *(v230 + 7);
        MEMORY[0x1EEE9AC00](v280, v282);
        *(&v1049 - 2) = v1092;
        v283 = v1091;
        v284 = v1093;
        sub_1D5D615EC(v1091);

        v285 = sub_1D7195F4C(sub_1D631FB38, (&v1049 - 4), v281);

        v286 = v1088;
        v287 = &v273[*(v1088 + 20)];
        *v287 = v283;
        v287[1] = v284;
        *&v273[*(v286 + 24)] = v279;
        *&v273[*(v286 + 28)] = v285;

        swift_unknownObjectRelease();

        return v25;
      }

LABEL_179:

LABEL_180:

      return MEMORY[0x1E69E7CC0];
    case 0x10u:
      v113 = *v102;
      v114 = v1092[18];
      if (!*(v114 + 16))
      {
        goto LABEL_180;
      }

      v115 = v113[2];
      v116 = v113[3];

      v117 = sub_1D5B69D90(v115, v116);
      v119 = v118;

      if ((v119 & 1) == 0)
      {
        goto LABEL_180;
      }

      v120 = *(*(v114 + 56) + 8 * v117);
      v122 = *(v120 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config);
      v121 = *(v120 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 8);
      v124 = *(v120 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 16);
      v123 = *(v120 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 24);
      v125 = *(v120 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 32);
      v126 = *(v120 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 40);
      v1078 = v113;
      v1081 = v120;
      v1077 = v122;
      v1076 = v125;
      v1075 = v126;
      v1071 = v124;
      if (v121)
      {

        v1070 = v122;
        v127 = v121;
        v128 = v124;
        v129 = v123;
        v130 = v125;
        v1089 = v126;
        goto LABEL_241;
      }

      v1068 = v123;
      v1069 = 0;
      v596 = v1092;
      v597 = v1092[3];
      v598 = v113[4];
      v599 = v113[5];

      v600 = sub_1D5EC4C04(v598, v599, v597);
      v601 = [*(v120 + 48) eventLeagueTag];
      swift_beginAccess();
      v602 = v113[6];
      v603 = swift_beginAccess();
      v604 = v113[7];
      MEMORY[0x1EEE9AC00](v603, v605);
      *(&v1049 - 2) = v596;
      v1083 = v602;

      v606 = v1087;
      v607 = sub_1D7195F4C(sub_1D631FB38, (&v1049 - 4), v604);
      v1087 = v606;

      swift_beginAccess();
      v608 = v113[8];
      v609 = v113[9];

      v610 = sub_1D6C2B5D8(v608, v609);

      v611 = v1059;
      sub_1D725894C();
      v1070 = sub_1D725893C();
      v613 = v612;
      (*(v1060 + 8))(v611, v1061);
      if (v600)
      {
        v614 = [v600 asSports];
      }

      else
      {
        v614 = 0;
      }

      aBlock[0] = 4;
      v703 = sub_1D69229B4(v600, v607, aBlock);

      *aBlock = MEMORY[0x1E69E7CC0];
      v1082 = v614;
      if (v600)
      {
        swift_getObjectType();
        LOBYTE(v1096) = 4;
        v704 = v1053;
        sub_1D6924500(&v1096, v1053);
        sub_1D631E0C8(v704, sub_1D5B4D3E0);
        v705 = [v600 asSports];
        if (v705)
        {
          v25 = v613;
          v706 = [v705 UMCCanonicalID];
          if (v706)
          {
            v1089 = v610;
            v1067 = v601;
            v1079 = v703;
            v707 = v706;
            v708 = sub_1D726207C();
            v710 = v709;

            v162 = sub_1D698CCE4(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v712 = *(v162 + 16);
            v711 = *(v162 + 24);
            if (v712 >= v711 >> 1)
            {
              v162 = sub_1D698CCE4((v711 > 1), v712 + 1, 1, v162);
            }

            swift_unknownObjectRelease();
            *(v162 + 16) = v712 + 1;
            v713 = (v162 + 32 * v712);
            v713[4] = 0x7463656A627573;
            v713[5] = 0xE700000000000000;
            v713[6] = v708;
            v713[7] = v710;
            *aBlock = v162;
            v25 = v613;
            v703 = v1079;
            v610 = v1089;
LABEL_234:
            v827 = [swift_unknownObjectRetain() UMCCanonicalID];
            if (v827)
            {
              v1089 = v610;
              v1079 = v703;
              v828 = v827;
              v171 = sub_1D726207C();
              v54 = v829;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
LABEL_299:
                v162 = sub_1D698CCE4(0, *(v162 + 16) + 1, 1, v162);
              }

              v831 = *(v162 + 16);
              v830 = *(v162 + 24);
              if (v831 >= v830 >> 1)
              {
                v162 = sub_1D698CCE4((v830 > 1), v831 + 1, 1, v162);
              }

              swift_unknownObjectRelease();
              *(v162 + 16) = v831 + 1;
              v832 = (v162 + 32 * v831);
              v832[4] = 0x65756761656CLL;
              v832[5] = 0xE600000000000000;
              v832[6] = v171;
              v832[7] = v54;
              *aBlock = v162;
              v130 = v1079;
              v610 = v1089;
            }

            else
            {
              v130 = v703;
              swift_unknownObjectRelease();
            }

            sub_1D5B5D358(0, &unk_1EDF01EA8);
            v833 = swift_allocObject();
            *(v833 + 16) = xmmword_1D7270C10;
            *(v833 + 32) = 0x756F724764656566;
            *(v833 + 40) = 0xE900000000000070;
            *(v833 + 48) = 0x64657461727563;
            *(v833 + 56) = 0xE700000000000000;
            *(v833 + 64) = 0xD000000000000011;
            *(v833 + 72) = 0x80000001D73CAA10;
            *(v833 + 80) = 0x746C7561666564;
            *(v833 + 88) = 0xE700000000000000;
            sub_1D6987B44(v833);
            sub_1D6987B44(v610);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v1089 = *aBlock;
            v129 = v1083;
            v121 = v1069;
            v127 = v25;
            v128 = v1082;
LABEL_241:
            v1079 = v130;
            v1082 = v128;
            v1069 = v127;
            v1083 = v129;
            v834 = v128;
            v835 = v127;
            sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
            v836 = (v1094[80] + 32) & ~v1094[80];
            v25 = swift_allocObject();
            *(v25 + 1) = xmmword_1D7273AE0;
            v1068 = &v25[v836];
            v837 = swift_allocObject();
            *aBlock = v1070;
            *&aBlock[8] = v835;
            *&aBlock[16] = v834;
            *&aBlock[24] = v129;
            *&v1099 = v130;
            *(&v1099 + 1) = v1089;
            sub_1D5F8B638(v1077, v121);
            *(v837 + 16) = SportsBoxScoreDataVisualization.with(config:)(aBlock);
            v838 = v837 | 0x6000000000000000;
            v1094 = (v837 | 0x6000000000000000);
            *aBlock = v837 | 0x6000000000000000;
            v839 = v1074;
            SportsDataVisualization.configuredEmbedUrl.getter(v1074);
            v1096 = v838;
            v840 = SportsDataVisualization.identifier.getter();
            v842 = v841;
            v843 = v1084;
            v1076 = *(v1084 + 56);
            v1077 = (v1084 + 56);
            v844 = v1073;
            v845 = v1086;
            (v1076)(v1073, 1, 1, v1086);
            v846 = v1085;
            v847 = v1072;
            v848 = v1072 + v1085[13];
            (*(v843 + 16))(v1072 + v1085[5], v839, v845);
            *v847 = v840;
            v847[1] = v842;
            sub_1D631F9C8(v844, v847 + v846[6], sub_1D5B4D3E0);
            *(v847 + v846[7]) = 0;
            v849 = (v847 + v846[8]);
            *v849 = 0;
            v849[1] = 0;
            v850 = (v847 + v846[9]);
            *v850 = 0;
            v850[1] = 0;
            *(v847 + v846[10]) = 0;
            *(v847 + v846[11]) = MEMORY[0x1E69E7CD0];
            sub_1D631E0C8(v844, sub_1D5B4D3E0);
            (*(v843 + 8))(v839, v845);
            *(v847 + v846[12]) = MEMORY[0x1E69E7CC0];
            *v848 = 0;
            *(v848 + 1) = 0;
            v851 = v1068;
            *v1068 = v840;
            *(v851 + 1) = v842;
            v852 = v1080;
            sub_1D631F9C8(v847, &v851[*(v1080 + 20)], type metadata accessor for FormatWebEmbed);
            v853 = v1076;
            (v1076)(v844, 1, 1, v845);
            sub_1D631F8F4(0, &unk_1EDF43A70, sub_1D5B4D3E0, MEMORY[0x1E69D6B18]);
            swift_allocObject();

            *&v851[v852[6]] = sub_1D725BB1C();
            v853(v844, 1, 1, v1086);
            swift_allocObject();
            v854 = sub_1D725BB1C();
            sub_1D631E0C8(v847, type metadata accessor for FormatWebEmbed);
            *&v851[v852[7]] = v854;
            v855 = v852[9];
            sub_1D631F8F4(0, &qword_1EDF43A20, sub_1D5B5D6A0, MEMORY[0x1E69D6C08]);
            (*(*(v856 - 8) + 56))(&v851[v855], 1, 1, v856);
            v857 = v852[8];
            *&v851[v857] = v1094;
            v858 = type metadata accessor for WebEmbedDataVisualization();
            swift_storeEnumTagMultiPayload();
            (*(*(v858 - 8) + 56))(&v851[v857], 0, 1, v858);
            swift_storeEnumTagMultiPayload();
            v859 = v1078;
            swift_beginAccess();
            v860 = *(v859 + 48);
            v861 = swift_beginAccess();
            v862 = *(v859 + 56);
            MEMORY[0x1EEE9AC00](v861, v863);
            *(&v1049 - 2) = v1092;
            v864 = v1091;
            v865 = v1093;
            sub_1D5D615EC(v1091);

            v866 = sub_1D7195F4C(sub_1D631FB38, (&v1049 - 4), v862);

            v867 = v1088;
            v868 = &v851[*(v1088 + 20)];
            *v868 = v864;
            v868[1] = v865;
            *&v851[*(v867 + 24)] = v860;
            *&v851[*(v867 + 28)] = v866;

            goto LABEL_289;
          }

          swift_unknownObjectRelease();
        }

        else
        {
          v25 = v613;
        }
      }

      else
      {
        v25 = v613;
        v714 = v1053;
        (*(v1084 + 56))(v1053, 1, 1, v1086);
        sub_1D631E0C8(v714, sub_1D5B4D3E0);
      }

      v162 = MEMORY[0x1E69E7CC0];
      goto LABEL_234;
    case 0x11u:
      v333 = *v102;
      v334 = v1092[19];
      if (!*(v334 + 16))
      {
        goto LABEL_180;
      }

      v335 = v333[2];
      v336 = v333[3];

      v337 = sub_1D5B69D90(v335, v336);
      v339 = v338;

      if ((v339 & 1) == 0)
      {
        goto LABEL_180;
      }

      v340 = *(*(v334 + 56) + 8 * v337);
      v341 = *(v340 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config);
      v342 = *(v340 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 8);
      v344 = *(v340 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 16);
      v343 = *(v340 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 24);
      v345 = *(v340 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 32);
      v346 = *(v340 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 40);
      v1077 = v333;
      v1078 = v340;
      v1076 = v341;
      v1075 = v345;
      v1071 = v346;
      v1070 = v343;
      if (v342)
      {

        v347 = v341;
        v348 = v342;
        v349 = v344;
        v350 = v343;
        v1083 = v345;
        v1089 = v346;
        goto LABEL_252;
      }

      v1069 = 0;
      v1067 = v344;
      v633 = v1092;
      v634 = v1092[3];
      v635 = v333[4];
      v636 = v333[5];

      v637 = sub_1D5EC4C04(v635, v636, v634);
      v638 = [*(v340 + 48) eventLeagueTag];
      swift_beginAccess();
      v639 = v333[6];
      v640 = swift_beginAccess();
      v641 = v333[7];
      MEMORY[0x1EEE9AC00](v640, v642);
      *(&v1049 - 2) = v633;
      v1082 = v639;

      v643 = v1087;
      v644 = sub_1D7195F4C(sub_1D631FB38, (&v1049 - 4), v641);
      v1087 = v643;

      swift_beginAccess();
      v645 = v333[8];
      v646 = v333[9];

      v647 = sub_1D6C2B5D8(v645, v646);

      v648 = v1059;
      sub_1D725894C();
      v649 = sub_1D725893C();
      v1081 = v650;
      (*(v1060 + 8))(v648, v1061);
      v1068 = v649;
      if (v637)
      {
        v1079 = [v637 asSports];
      }

      else
      {
        v1079 = 0;
      }

      v715 = v1084;
      aBlock[0] = 5;
      v716 = sub_1D69229B4(v637, v644, aBlock);

      *aBlock = MEMORY[0x1E69E7CC0];
      if (!v637)
      {
        v728 = v1055;
        (*(v715 + 56))(v1055, 1, 1, v1086);
        sub_1D631E0C8(v728, sub_1D5B4D3E0);
        goto LABEL_243;
      }

      swift_getObjectType();
      LOBYTE(v1096) = 5;
      v717 = v1055;
      sub_1D6924500(&v1096, v1055);
      sub_1D631E0C8(v717, sub_1D5B4D3E0);
      v718 = [v637 asSports];
      if (!v718)
      {
LABEL_243:
        v723 = MEMORY[0x1E69E7CC0];
        goto LABEL_244;
      }

      v719 = [v718 UMCCanonicalID];
      if (!v719)
      {
        swift_unknownObjectRelease();
        goto LABEL_243;
      }

      v720 = v719;
      v721 = sub_1D726207C();
      v1089 = v722;

      v723 = sub_1D698CCE4(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v725 = *(v723 + 2);
      v724 = *(v723 + 3);
      if (v725 >= v724 >> 1)
      {
        v723 = sub_1D698CCE4((v724 > 1), v725 + 1, 1, v723);
      }

      swift_unknownObjectRelease();
      *(v723 + 2) = v725 + 1;
      v726 = &v723[32 * v725];
      *(v726 + 4) = 0x7463656A627573;
      *(v726 + 5) = 0xE700000000000000;
      v727 = v1089;
      *(v726 + 6) = v721;
      *(v726 + 7) = v727;
      *aBlock = v723;
LABEL_244:
      v869 = [swift_unknownObjectRetain() UMCCanonicalID];
      if (v869)
      {
        v870 = v869;
        v871 = sub_1D726207C();
        v873 = v872;

        v874 = v716;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v723 = sub_1D698CCE4(0, *(v723 + 2) + 1, 1, v723);
        }

        v876 = *(v723 + 2);
        v875 = *(v723 + 3);
        if (v876 >= v875 >> 1)
        {
          v723 = sub_1D698CCE4((v875 > 1), v876 + 1, 1, v723);
        }

        swift_unknownObjectRelease();
        *(v723 + 2) = v876 + 1;
        v877 = &v723[32 * v876];
        *(v877 + 4) = 0x65756761656CLL;
        *(v877 + 5) = 0xE600000000000000;
        *(v877 + 6) = v871;
        *(v877 + 7) = v873;
        *aBlock = v723;
      }

      else
      {
        v874 = v716;
        swift_unknownObjectRelease();
      }

      v1083 = v874;
      sub_1D5B5D358(0, &unk_1EDF01EA8);
      v878 = swift_allocObject();
      *(v878 + 16) = xmmword_1D7270C10;
      *(v878 + 32) = 0x756F724764656566;
      *(v878 + 40) = 0xE900000000000070;
      *(v878 + 48) = 0x64657461727563;
      *(v878 + 56) = 0xE700000000000000;
      *(v878 + 64) = 0xD000000000000011;
      *(v878 + 72) = 0x80000001D73CAA10;
      *(v878 + 80) = 0x746C7561666564;
      *(v878 + 88) = 0xE700000000000000;
      sub_1D6987B44(v878);
      sub_1D6987B44(v647);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v1089 = *aBlock;
      v350 = v1082;
      v348 = v1081;
      v349 = v1079;
      v342 = v1069;
      v347 = v1068;
LABEL_252:
      v1081 = v348;
      v1079 = v349;
      v1082 = v350;
      v879 = v349;
      sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
      v880 = (v1094[80] + 32) & ~v1094[80];
      v25 = swift_allocObject();
      *(v25 + 1) = xmmword_1D7273AE0;
      v1069 = &v25[v880];
      v881 = swift_allocObject();
      *aBlock = v347;
      *&aBlock[8] = v348;
      *&aBlock[16] = v879;
      *&aBlock[24] = v350;
      *&v1099 = v1083;
      *(&v1099 + 1) = v1089;
      sub_1D5F8B638(v1076, v342);
      *(v881 + 16) = SportsLineScoreDataVisualization.with(config:)(aBlock);
      v882 = v881 | 0x8000000000000000;
      v1094 = (v881 | 0x8000000000000000);
      *aBlock = v881 | 0x8000000000000000;
      v883 = v1074;
      SportsDataVisualization.configuredEmbedUrl.getter(v1074);
      v1096 = v882;
      v884 = SportsDataVisualization.identifier.getter();
      v886 = v885;
      v887 = v1084;
      v1075 = *(v1084 + 56);
      v1076 = (v1084 + 56);
      v888 = v1073;
      v889 = v1086;
      (v1075)(v1073, 1, 1, v1086);
      v890 = v1085;
      v891 = v1072;
      v892 = v1072 + v1085[13];
      (*(v887 + 16))(v1072 + v1085[5], v883, v889);
      *v891 = v884;
      v891[1] = v886;
      sub_1D631F9C8(v888, v891 + v890[6], sub_1D5B4D3E0);
      *(v891 + v890[7]) = 0;
      v893 = (v891 + v890[8]);
      *v893 = 0;
      v893[1] = 0;
      v894 = (v891 + v890[9]);
      *v894 = 0;
      v894[1] = 0;
      *(v891 + v890[10]) = 0;
      *(v891 + v890[11]) = MEMORY[0x1E69E7CD0];
      sub_1D631E0C8(v888, sub_1D5B4D3E0);
      (*(v887 + 8))(v883, v889);
      *(v891 + v890[12]) = MEMORY[0x1E69E7CC0];
      *v892 = 0;
      *(v892 + 1) = 0;
      v895 = v1069;
      *v1069 = v884;
      *(v895 + 1) = v886;
      v896 = v1080;
      sub_1D631F9C8(v891, &v895[*(v1080 + 20)], type metadata accessor for FormatWebEmbed);
      v897 = v1075;
      (v1075)(v888, 1, 1, v889);
      sub_1D631F8F4(0, &unk_1EDF43A70, sub_1D5B4D3E0, MEMORY[0x1E69D6B18]);
      swift_allocObject();

      *&v895[v896[6]] = sub_1D725BB1C();
      v897(v888, 1, 1, v1086);
      swift_allocObject();
      v898 = sub_1D725BB1C();
      sub_1D631E0C8(v891, type metadata accessor for FormatWebEmbed);
      *&v895[v896[7]] = v898;
      v899 = v896[9];
      sub_1D631F8F4(0, &qword_1EDF43A20, sub_1D5B5D6A0, MEMORY[0x1E69D6C08]);
      (*(*(v900 - 8) + 56))(&v895[v899], 1, 1, v900);
      v901 = v896[8];
      *&v895[v901] = v1094;
      v902 = type metadata accessor for WebEmbedDataVisualization();
      swift_storeEnumTagMultiPayload();
      (*(*(v902 - 8) + 56))(&v895[v901], 0, 1, v902);
      swift_storeEnumTagMultiPayload();
      v903 = v1077;
      swift_beginAccess();
      v904 = v903[6];
      v905 = swift_beginAccess();
      v906 = v903[7];
      MEMORY[0x1EEE9AC00](v905, v907);
      *(&v1049 - 2) = v1092;
      v908 = v1091;
      v909 = v1093;
      sub_1D5D615EC(v1091);

      v910 = sub_1D7195F4C(sub_1D631FB38, (&v1049 - 4), v906);

      v911 = v1088;
      v912 = &v895[*(v1088 + 20)];
      *v912 = v908;
      v912[1] = v909;
      *&v895[*(v911 + 24)] = v904;
      *&v895[*(v911 + 28)] = v910;
LABEL_276:

LABEL_288:

LABEL_289:
      swift_unknownObjectRelease();
      return v25;
    case 0x12u:
      v406 = *v102;
      v407 = v1092[20];
      if (!*(v407 + 16))
      {
        goto LABEL_180;
      }

      v408 = v406[2];
      v409 = v406[3];

      v410 = sub_1D5B69D90(v408, v409);
      v412 = v411;

      if ((v412 & 1) == 0)
      {
        goto LABEL_180;
      }

      v413 = *(*(v407 + 56) + 8 * v410);
      v414 = *(v413 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config);
      v415 = *(v413 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config + 8);
      v417 = *(v413 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config + 16);
      v416 = *(v413 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config + 24);
      v418 = *(v413 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config + 32);
      v419 = *(v413 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config + 40);
      v1077 = v406;
      v1078 = v413;
      v1076 = v414;
      v1075 = v418;
      v1071 = v419;
      v1070 = v416;
      if (v415)
      {

        v420 = v414;
        v421 = v415;
        v422 = v417;
        v423 = v416;
        v1083 = v418;
        v1089 = v419;
        goto LABEL_275;
      }

      v1069 = 0;
      v1067 = v417;
      v664 = v1092;
      v665 = v1092[3];
      v666 = v406[4];
      v667 = v406[5];

      v668 = sub_1D5EC4C04(v666, v667, v665);
      v669 = [*(v413 + 48) eventLeagueTag];
      swift_beginAccess();
      v670 = v406[6];
      v671 = swift_beginAccess();
      v672 = v406[7];
      MEMORY[0x1EEE9AC00](v671, v673);
      *(&v1049 - 2) = v664;
      v1082 = v670;

      v674 = v1087;
      v675 = sub_1D7195F4C(sub_1D631FB38, (&v1049 - 4), v672);
      v1087 = v674;

      swift_beginAccess();
      v676 = v406[8];
      v677 = v406[9];

      v678 = sub_1D6C2B5D8(v676, v677);

      v679 = v1059;
      sub_1D725894C();
      v680 = sub_1D725893C();
      v1081 = v681;
      (*(v1060 + 8))(v679, v1061);
      v1068 = v680;
      if (v668)
      {
        v1079 = [v668 asSports];
      }

      else
      {
        v1079 = 0;
      }

      v729 = v1084;
      aBlock[0] = 6;
      v730 = sub_1D69229B4(v668, v675, aBlock);

      *aBlock = MEMORY[0x1E69E7CC0];
      if (v668)
      {
        swift_getObjectType();
        LOBYTE(v1096) = 6;
        v731 = v1056;
        sub_1D6924500(&v1096, v1056);
        sub_1D631E0C8(v731, sub_1D5B4D3E0);
        v732 = [v668 asSports];
        if (v732)
        {
          v733 = [v732 UMCCanonicalID];
          if (v733)
          {
            v734 = v733;
            v735 = sub_1D726207C();
            v1089 = v736;

            v737 = sub_1D698CCE4(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v739 = *(v737 + 2);
            v738 = *(v737 + 3);
            if (v739 >= v738 >> 1)
            {
              v737 = sub_1D698CCE4((v738 > 1), v739 + 1, 1, v737);
            }

            swift_unknownObjectRelease();
            *(v737 + 2) = v739 + 1;
            v740 = &v737[32 * v739];
            *(v740 + 4) = 0x7463656A627573;
            *(v740 + 5) = 0xE700000000000000;
            v741 = v1089;
            *(v740 + 6) = v735;
            *(v740 + 7) = v741;
            *aBlock = v737;
LABEL_267:
            v957 = [swift_unknownObjectRetain() UMCCanonicalID];
            if (v957)
            {
              v958 = v957;
              v959 = sub_1D726207C();
              v961 = v960;

              v962 = v730;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v737 = sub_1D698CCE4(0, *(v737 + 2) + 1, 1, v737);
              }

              v964 = *(v737 + 2);
              v963 = *(v737 + 3);
              if (v964 >= v963 >> 1)
              {
                v737 = sub_1D698CCE4((v963 > 1), v964 + 1, 1, v737);
              }

              swift_unknownObjectRelease();
              *(v737 + 2) = v964 + 1;
              v965 = &v737[32 * v964];
              *(v965 + 4) = 0x65756761656CLL;
              *(v965 + 5) = 0xE600000000000000;
              *(v965 + 6) = v959;
              *(v965 + 7) = v961;
              *aBlock = v737;
            }

            else
            {
              v962 = v730;
              swift_unknownObjectRelease();
            }

            v1083 = v962;
            sub_1D5B5D358(0, &unk_1EDF01EA8);
            v966 = swift_allocObject();
            *(v966 + 16) = xmmword_1D7270C10;
            *(v966 + 32) = 0x756F724764656566;
            *(v966 + 40) = 0xE900000000000070;
            *(v966 + 48) = 0x64657461727563;
            *(v966 + 56) = 0xE700000000000000;
            *(v966 + 64) = 0xD000000000000011;
            *(v966 + 72) = 0x80000001D73CAA10;
            *(v966 + 80) = 0x746C7561666564;
            *(v966 + 88) = 0xE700000000000000;
            sub_1D6987B44(v966);
            sub_1D6987B44(v678);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v1089 = *aBlock;
            v423 = v1082;
            v421 = v1081;
            v422 = v1079;
            v415 = v1069;
            v420 = v1068;
LABEL_275:
            v1081 = v421;
            v1079 = v422;
            v1082 = v423;
            v967 = v422;
            sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
            v968 = (v1094[80] + 32) & ~v1094[80];
            v25 = swift_allocObject();
            *(v25 + 1) = xmmword_1D7273AE0;
            v1069 = &v25[v968];
            v969 = swift_allocObject();
            *aBlock = v420;
            *&aBlock[8] = v421;
            *&aBlock[16] = v967;
            *&aBlock[24] = v423;
            *&v1099 = v1083;
            *(&v1099 + 1) = v1089;
            sub_1D5F8B638(v1076, v415);
            *(v969 + 16) = SportsInjuryReportDataVisualization.with(config:)(aBlock);
            v970 = v969 | 0xA000000000000000;
            v1094 = (v969 | 0xA000000000000000);
            *aBlock = v969 | 0xA000000000000000;
            v971 = v1074;
            SportsDataVisualization.configuredEmbedUrl.getter(v1074);
            v1096 = v970;
            v972 = SportsDataVisualization.identifier.getter();
            v974 = v973;
            v975 = v1084;
            v1075 = *(v1084 + 56);
            v1076 = (v1084 + 56);
            v976 = v1073;
            v977 = v1086;
            (v1075)(v1073, 1, 1, v1086);
            v978 = v1085;
            v979 = v1072;
            v980 = v1072 + v1085[13];
            (*(v975 + 16))(v1072 + v1085[5], v971, v977);
            *v979 = v972;
            v979[1] = v974;
            sub_1D631F9C8(v976, v979 + v978[6], sub_1D5B4D3E0);
            *(v979 + v978[7]) = 0;
            v981 = (v979 + v978[8]);
            *v981 = 0;
            v981[1] = 0;
            v982 = (v979 + v978[9]);
            *v982 = 0;
            v982[1] = 0;
            *(v979 + v978[10]) = 0;
            *(v979 + v978[11]) = MEMORY[0x1E69E7CD0];
            sub_1D631E0C8(v976, sub_1D5B4D3E0);
            (*(v975 + 8))(v971, v977);
            *(v979 + v978[12]) = MEMORY[0x1E69E7CC0];
            *v980 = 0;
            *(v980 + 1) = 0;
            v983 = v1069;
            *v1069 = v972;
            *(v983 + 1) = v974;
            v984 = v1080;
            sub_1D631F9C8(v979, &v983[*(v1080 + 20)], type metadata accessor for FormatWebEmbed);
            v985 = v1075;
            (v1075)(v976, 1, 1, v977);
            sub_1D631F8F4(0, &unk_1EDF43A70, sub_1D5B4D3E0, MEMORY[0x1E69D6B18]);
            swift_allocObject();

            *&v983[v984[6]] = sub_1D725BB1C();
            v985(v976, 1, 1, v1086);
            swift_allocObject();
            v986 = sub_1D725BB1C();
            sub_1D631E0C8(v979, type metadata accessor for FormatWebEmbed);
            *&v983[v984[7]] = v986;
            v987 = v984[9];
            sub_1D631F8F4(0, &qword_1EDF43A20, sub_1D5B5D6A0, MEMORY[0x1E69D6C08]);
            (*(*(v988 - 8) + 56))(&v983[v987], 1, 1, v988);
            v989 = v984[8];
            *&v983[v989] = v1094;
            v990 = type metadata accessor for WebEmbedDataVisualization();
            swift_storeEnumTagMultiPayload();
            (*(*(v990 - 8) + 56))(&v983[v989], 0, 1, v990);
            swift_storeEnumTagMultiPayload();
            v991 = v1077;
            swift_beginAccess();
            v992 = v991[6];
            v993 = swift_beginAccess();
            v994 = v991[7];
            MEMORY[0x1EEE9AC00](v993, v995);
            *(&v1049 - 2) = v1092;
            v996 = v1091;
            v997 = v1093;
            sub_1D5D615EC(v1091);

            v998 = sub_1D7195F4C(sub_1D631FB38, (&v1049 - 4), v994);

            v999 = v1088;
            v1000 = &v983[*(v1088 + 20)];
            *v1000 = v996;
            v1000[1] = v997;
            *&v983[*(v999 + 24)] = v992;
            *&v983[*(v999 + 28)] = v998;
            goto LABEL_276;
          }

          swift_unknownObjectRelease();
        }
      }

      else
      {
        v742 = v1056;
        (*(v729 + 56))(v1056, 1, 1, v1086);
        sub_1D631E0C8(v742, sub_1D5B4D3E0);
      }

      v737 = MEMORY[0x1E69E7CC0];
      goto LABEL_267;
    case 0x13u:
      v460 = *v102;
      v461 = v1092[21];
      if (!*(v461 + 16))
      {
        goto LABEL_180;
      }

      v462 = v460[2];
      v463 = v460[3];

      v464 = sub_1D5B69D90(v462, v463);
      v466 = v465;

      if ((v466 & 1) == 0)
      {
        goto LABEL_180;
      }

      v467 = *(*(v461 + 56) + 8 * v464);
      v468 = *(v467 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config);
      v469 = *(v467 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 8);
      v471 = *(v467 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 16);
      v470 = *(v467 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 24);
      v473 = *(v467 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 32);
      v472 = *(v467 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 40);
      v1078 = v460;
      v1081 = v467;
      v1077 = v468;
      v1076 = v469;
      v1075 = v473;
      v1071 = v472;
      v1070 = v471;
      if (v469)
      {

        v474 = v468;
        v475 = v469;
        v476 = v471;
        v477 = v470;
        v478 = v473;
        v1089 = v472;
        goto LABEL_287;
      }

      v1069 = v470;
      v682 = v1092;
      v683 = v1092[3];
      v684 = v460[4];
      v685 = v460[5];

      v686 = sub_1D5EC4C04(v684, v685, v683);
      [*(v467 + 48) eventLeagueTag];
      swift_beginAccess();
      v687 = v460[6];
      v688 = swift_beginAccess();
      v689 = v460[7];
      MEMORY[0x1EEE9AC00](v688, v690);
      *(&v1049 - 2) = v682;
      v1083 = v687;

      v691 = v1087;
      v692 = sub_1D7195F4C(sub_1D631FB38, (&v1049 - 4), v689);
      v1087 = v691;

      swift_beginAccess();
      v693 = v460[8];
      v694 = v460[9];

      v695 = sub_1D6C2B5D8(v693, v694);

      v696 = v1059;
      sub_1D725894C();
      v697 = sub_1D725893C();
      v475 = v698;
      (*(v1060 + 8))(v696, v1061);
      v1068 = v697;
      if (v686)
      {
        v699 = [v686 asSports];
      }

      else
      {
        v699 = 0;
      }

      aBlock[0] = 7;
      v743 = sub_1D69229B4(v686, v692, aBlock);

      *aBlock = MEMORY[0x1E69E7CC0];
      if (v686)
      {
        swift_getObjectType();
        LOBYTE(v1096) = 7;
        v744 = v1057;
        sub_1D6924500(&v1096, v1057);
        sub_1D631E0C8(v744, sub_1D5B4D3E0);
        v745 = [v686 asSports];
        if (v745)
        {
          v746 = [v745 UMCCanonicalID];
          if (v746)
          {
            v1089 = v695;
            v1082 = v743;
            v747 = v475;
            v748 = v746;
            v749 = sub_1D726207C();
            v1079 = v750;

            v751 = sub_1D698CCE4(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v753 = *(v751 + 2);
            v752 = *(v751 + 3);
            if (v753 >= v752 >> 1)
            {
              v751 = sub_1D698CCE4((v752 > 1), v753 + 1, 1, v751);
            }

            swift_unknownObjectRelease();
            *(v751 + 2) = v753 + 1;
            v754 = &v751[32 * v753];
            *(v754 + 4) = 0x7463656A627573;
            *(v754 + 5) = 0xE700000000000000;
            v755 = v1079;
            *(v754 + 6) = v749;
            *(v754 + 7) = v755;
            *aBlock = v751;
            v475 = v747;
            v743 = v1082;
            v695 = v1089;
LABEL_279:
            v1001 = [swift_unknownObjectRetain() UMCCanonicalID];
            if (v1001)
            {
              v1089 = v695;
              v1082 = v743;
              v1079 = v699;
              v1002 = v475;
              v1003 = v1001;
              v1004 = sub_1D726207C();
              v1006 = v1005;

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *aBlock = v751;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v751 = sub_1D698CCE4(0, *(v751 + 2) + 1, 1, v751);
                *aBlock = v751;
              }

              v1009 = *(v751 + 2);
              v1008 = *(v751 + 3);
              if (v1009 >= v1008 >> 1)
              {
                v751 = sub_1D698CCE4((v1008 > 1), v1009 + 1, 1, v751);
              }

              swift_unknownObjectRelease();
              *(v751 + 2) = v1009 + 1;
              v1010 = &v751[32 * v1009];
              *(v1010 + 4) = 0x65756761656CLL;
              *(v1010 + 5) = 0xE600000000000000;
              *(v1010 + 6) = v1004;
              *(v1010 + 7) = v1006;
              *aBlock = v751;
              v475 = v1002;
              v1011 = v1079;
              v743 = v1082;
              v695 = v1089;
            }

            else
            {
              v1011 = v699;
              swift_unknownObjectRelease();
            }

            sub_1D5B5D358(0, &unk_1EDF01EA8);
            v1012 = swift_allocObject();
            *(v1012 + 16) = xmmword_1D7270C10;
            *(v1012 + 32) = 0x756F724764656566;
            *(v1012 + 40) = 0xE900000000000070;
            *(v1012 + 48) = 0x64657461727563;
            *(v1012 + 56) = 0xE700000000000000;
            *(v1012 + 64) = 0xD000000000000011;
            *(v1012 + 72) = 0x80000001D73CAA10;
            *(v1012 + 80) = 0x746C7561666564;
            *(v1012 + 88) = 0xE700000000000000;
            sub_1D6987B44(v1012);
            sub_1D6987B44(v695);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v1089 = *aBlock;
            v477 = v1083;
            v474 = v1068;
            v476 = v1011;
            v478 = v743;
LABEL_287:
            v1082 = v478;
            v1079 = v476;
            v1069 = v475;
            v1083 = v477;
            v1013 = v476;
            sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
            v1014 = (v1094[80] + 32) & ~v1094[80];
            v25 = swift_allocObject();
            *(v25 + 1) = xmmword_1D7273AE0;
            v1068 = &v25[v1014];
            v1015 = swift_allocObject();
            *aBlock = v474;
            *&aBlock[8] = v475;
            *&aBlock[16] = v1013;
            *&aBlock[24] = v477;
            *&v1099 = v478;
            *(&v1099 + 1) = v1089;
            sub_1D5F8B638(v1077, v1076);
            *(v1015 + 16) = SportsKeyPlayerDataVisualization.with(config:)(aBlock);
            v1016 = v1015 | 0xC000000000000000;
            v1094 = (v1015 | 0xC000000000000000);
            *aBlock = v1015 | 0xC000000000000000;
            v1017 = v1074;
            SportsDataVisualization.configuredEmbedUrl.getter(v1074);
            v1096 = v1016;
            v1018 = SportsDataVisualization.identifier.getter();
            v1020 = v1019;
            v1021 = v1084;
            v1076 = *(v1084 + 56);
            v1077 = (v1084 + 56);
            v1022 = v1073;
            v1023 = v1086;
            (v1076)(v1073, 1, 1, v1086);
            v1024 = v1085;
            v1025 = v1072;
            v1026 = v1072 + v1085[13];
            (*(v1021 + 16))(v1072 + v1085[5], v1017, v1023);
            *v1025 = v1018;
            v1025[1] = v1020;
            sub_1D631F9C8(v1022, v1025 + v1024[6], sub_1D5B4D3E0);
            *(v1025 + v1024[7]) = 0;
            v1027 = (v1025 + v1024[8]);
            *v1027 = 0;
            v1027[1] = 0;
            v1028 = (v1025 + v1024[9]);
            *v1028 = 0;
            v1028[1] = 0;
            *(v1025 + v1024[10]) = 0;
            *(v1025 + v1024[11]) = MEMORY[0x1E69E7CD0];
            sub_1D631E0C8(v1022, sub_1D5B4D3E0);
            v1029 = v1017;
            v1030 = v1023;
            (*(v1021 + 8))(v1029, v1023);
            *(v1025 + v1024[12]) = MEMORY[0x1E69E7CC0];
            *v1026 = 0;
            *(v1026 + 1) = 0;
            v1031 = v1068;
            *v1068 = v1018;
            *(v1031 + 1) = v1020;
            v1032 = v1080;
            sub_1D631F9C8(v1025, &v1031[*(v1080 + 20)], type metadata accessor for FormatWebEmbed);
            v1033 = v1076;
            (v1076)(v1022, 1, 1, v1030);
            sub_1D631F8F4(0, &unk_1EDF43A70, sub_1D5B4D3E0, MEMORY[0x1E69D6B18]);
            swift_allocObject();

            *&v1031[v1032[6]] = sub_1D725BB1C();
            v1033(v1022, 1, 1, v1086);
            swift_allocObject();
            v1034 = sub_1D725BB1C();
            sub_1D631E0C8(v1025, type metadata accessor for FormatWebEmbed);
            *&v1031[v1032[7]] = v1034;
            v1035 = v1032[9];
            sub_1D631F8F4(0, &qword_1EDF43A20, sub_1D5B5D6A0, MEMORY[0x1E69D6C08]);
            (*(*(v1036 - 8) + 56))(&v1031[v1035], 1, 1, v1036);
            v1037 = v1032[8];
            *&v1031[v1037] = v1094;
            v1038 = type metadata accessor for WebEmbedDataVisualization();
            swift_storeEnumTagMultiPayload();
            (*(*(v1038 - 8) + 56))(&v1031[v1037], 0, 1, v1038);
            swift_storeEnumTagMultiPayload();
            v1039 = v1078;
            swift_beginAccess();
            v1040 = *(v1039 + 48);
            v1041 = swift_beginAccess();
            v1042 = *(v1039 + 56);
            MEMORY[0x1EEE9AC00](v1041, v1043);
            *(&v1049 - 2) = v1092;
            v1044 = v1091;
            v1045 = v1093;
            sub_1D5D615EC(v1091);

            v1046 = sub_1D7195F4C(sub_1D631FB38, (&v1049 - 4), v1042);

            v1047 = v1088;
            v1048 = &v1031[*(v1088 + 20)];
            *v1048 = v1044;
            v1048[1] = v1045;
            *&v1031[*(v1047 + 24)] = v1040;
            *&v1031[*(v1047 + 28)] = v1046;

            goto LABEL_288;
          }

          swift_unknownObjectRelease();
        }
      }

      else
      {
        v756 = v1057;
        (*(v1084 + 56))(v1057, 1, 1, v1086);
        sub_1D631E0C8(v756, sub_1D5B4D3E0);
      }

      v751 = MEMORY[0x1E69E7CC0];
      goto LABEL_279;
    default:
      v104 = *v102;
      v105 = *(*v102 + OBJC_IVAR____TtC8NewsFeed13FormatArticle_alternate);
      v106 = *v1092;
      swift_retain_n();
      v107 = v104;
      if (*(v106 + 16))
      {
        goto LABEL_3;
      }

LABEL_5:

      while (1)
      {

        if (!v105)
        {
          break;
        }

        v107 = v105;
        v105 = *(v105 + OBJC_IVAR____TtC8NewsFeed13FormatArticle_alternate);
        if (!*(v106 + 16))
        {
          goto LABEL_5;
        }

LABEL_3:
        v108 = *(v107 + 16);
        v109 = *(v107 + 24);

        v110 = sub_1D5B69D90(v108, v109);
        v112 = v111;

        if (v112)
        {
          v511 = *(*(v106 + 56) + 8 * v110);
          v512 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__properties;
          swift_beginAccess();
          v513 = *(v104 + v512);
          swift_unknownObjectRetain();

          v514 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__selectors;
          swift_beginAccess();
          v515 = *(v107 + v514);

          v516 = sub_1D5EEC8D4(v513, v515);
          v518 = v517;

          if (v518)
          {
            v519 = swift_allocObject();
            *(v519 + 16) = v516;
            *(v519 + 24) = v518;
            *&v1099 = sub_1D631FB30;
            *(&v1099 + 1) = v519;
            *aBlock = MEMORY[0x1E69E9820];
            *&aBlock[8] = 1107296256;
            *&aBlock[16] = sub_1D5C3BF74;
            *&aBlock[24] = &block_descriptor_35;
            v520 = _Block_copy(aBlock);

            v521 = FCMutateHeadlineWithBlock();
            _Block_release(v520);
            if (v521)
            {
              swift_unknownObjectRelease();
              v511 = v521;
            }
          }

          v1089 = v511;
          sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
          v522 = (v1094[80] + 32) & ~v1094[80];
          v25 = swift_allocObject();
          *(v25 + 1) = xmmword_1D7273AE0;
          v523 = &v25[v522];
          *&v25[v522] = v511;
          swift_storeEnumTagMultiPayload();
          v524 = *(v107 + v514);
          v525 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__properties;
          v526 = swift_beginAccess();
          v1094 = &v1049;
          v527 = *(v107 + v525);
          MEMORY[0x1EEE9AC00](v526, v528);
          *(&v1049 - 2) = v1092;
          swift_unknownObjectRetain();
          v529 = v1091;
          v530 = v1093;
          sub_1D5D615EC(v1091);

          v531 = sub_1D7195F4C(sub_1D631FB38, (&v1049 - 4), v527);

          v532 = v1088;
          v533 = &v523[*(v1088 + 20)];
          *v533 = v529;
          v533[1] = v530;
          *&v523[*(v532 + 24)] = v524;
          *&v523[*(v532 + 28)] = v531;

          swift_unknownObjectRelease();

          return v25;
        }
      }

      return MEMORY[0x1E69E7CC0];
  }
}