uint64_t sub_216B206AC(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_statesMap;
  swift_beginAccess();
  *a1 = *(a2 + v4);
  sub_21700DF14();

  return sub_216B1E3E4(0);
}

uint64_t sub_216B2071C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = sub_21700DF14();
    sub_216B1DDDC(v1);
    sub_216B1E3FC();
  }

  return result;
}

uint64_t sub_216B20784(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_216B207CC()
{
  result = qword_27CAC2EC8;
  if (!qword_27CAC2EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2EC8);
  }

  return result;
}

uint64_t sub_216B20898(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  OUTLINED_FUNCTION_36(Friends);
  v8 = v7;
  v9 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_216C6BB48();
    v9 = v10;
  }

  v11 = *(v9 + 16);
  v13[0] = v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v13[1] = v11;
  result = sub_216B20954(v13, a2, a3);
  *a1 = v9;
  return result;
}

uint64_t sub_216B20954(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_21700F774();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for SocialFindFriendsController.Friend(0);
        v10 = sub_21700E8A4();
        *(v10 + 16) = v9;
      }

      Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
      OUTLINED_FUNCTION_36(Friends);
      v13[0] = v10 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v13[1] = v9;
      a2(v13, v14, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_216B20A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  v9 = MEMORY[0x28223BE20](Friends);
  v42 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v33 - v16;
  v35 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v40 = -v19;
    v41 = v18;
    v21 = a1 - a3;
    v34 = v19;
    v22 = v18 + v19 * a3;
    while (2)
    {
      v38 = v20;
      v39 = a3;
      v36 = v22;
      v37 = v21;
      while (1)
      {
        sub_216B24400();
        sub_216B24400();
        v23 = *(Friends + 56);
        if (*&v17[v23 + 8])
        {
          v24 = sub_21700E5C4();
          v26 = v25;
          v23 = *(Friends + 56);
        }

        else
        {
          v24 = 0;
          v26 = 0xE000000000000000;
        }

        if (*&v13[v23 + 8])
        {
          v27 = sub_21700E5C4();
          v29 = v28;
        }

        else
        {
          v27 = 0;
          v29 = 0xE000000000000000;
        }

        if (v24 == v27 && v26 == v29)
        {
          break;
        }

        v31 = sub_21700F7D4();

        sub_21699C20C(v13, type metadata accessor for SocialFindFriendsController.Friend);
        result = sub_21699C20C(v17, type metadata accessor for SocialFindFriendsController.Friend);
        if (v31)
        {
          if (!v41)
          {
            __break(1u);
            return result;
          }

          sub_216B2448C();
          swift_arrayInitWithTakeFrontToBack();
          result = sub_216B2448C();
          v20 += v40;
          v22 += v40;
          if (!__CFADD__(v21++, 1))
          {
            continue;
          }
        }

        goto LABEL_20;
      }

      sub_21699C20C(v13, type metadata accessor for SocialFindFriendsController.Friend);
      result = sub_21699C20C(v17, type metadata accessor for SocialFindFriendsController.Friend);
LABEL_20:
      a3 = v39 + 1;
      v20 = v38 + v34;
      v21 = v37 - 1;
      v22 = v36 + v34;
      if (v39 + 1 != v35)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_216B20DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  v9 = MEMORY[0x28223BE20](Friends);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  result = MEMORY[0x28223BE20](v10);
  v16 = &v27 - v15;
  v29 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v34 = v17;
    v28 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v32 = v19;
      v33 = a3;
      v30 = v22;
      v31 = v21;
      do
      {
        sub_216B24400();
        sub_216B24400();
        v23 = *(Friends + 60);
        v24 = *&v16[v23];
        v25 = *&v12[v23];
        sub_21699C20C(v12, type metadata accessor for SocialFindFriendsController.Friend);
        result = sub_21699C20C(v16, type metadata accessor for SocialFindFriendsController.Friend);
        if (v25 >= v24)
        {
          break;
        }

        if (!v34)
        {
          __break(1u);
          return result;
        }

        sub_216B2448C();
        swift_arrayInitWithTakeFrontToBack();
        result = sub_216B2448C();
        v19 += v20;
        v22 += v20;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v33 + 1;
      v19 = v32 + v28;
      v21 = v31 - 1;
      v22 = v30 + v28;
      if (v33 + 1 != v29)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_216B20FF0(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v142 = a1;
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  v149 = *(Friends - 8);
  v9 = MEMORY[0x28223BE20](Friends);
  v146 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v154 = &v136 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v157 = &v136 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v156 = &v136 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v153 = &v136 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v152 = &v136 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v143 = &v136 - v22;
  MEMORY[0x28223BE20](v21);
  v141 = &v136 - v23;
  v151 = a3;
  v24 = a3[1];
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_132:
    v157 = *v142;
    if (!v157)
    {
      goto LABEL_173;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_134:
      v129 = v26 + 16;
      v130 = *(v26 + 2);
      while (v130 >= 2)
      {
        if (!*v151)
        {
          goto LABEL_170;
        }

        v131 = v26;
        v26 += 16 * v130;
        v132 = *v26;
        v133 = &v129[2 * v130];
        v134 = *(v133 + 1);
        sub_216B224BC(*v151 + *(v149 + 72) * *v26, *v151 + *(v149 + 72) * *v133, *v151 + *(v149 + 72) * v134, v157);
        if (v5)
        {
          break;
        }

        if (v134 < v132)
        {
          goto LABEL_158;
        }

        if (v130 - 2 >= *v129)
        {
          goto LABEL_159;
        }

        *v26 = v132;
        *(v26 + 1) = v134;
        v135 = *v129 - v130;
        if (*v129 < v130)
        {
          goto LABEL_160;
        }

        v130 = *v129 - 1;
        sub_216C6B848(v133 + 16, v135, v133);
        *v129 = v130;
        v26 = v131;
      }

LABEL_142:

      return;
    }

LABEL_167:
    v26 = sub_216C6B740(v26);
    goto LABEL_134;
  }

  v137 = a4;
  v25 = 0;
  v26 = MEMORY[0x277D84F90];
  v155 = Friends;
  while (1)
  {
    v27 = v25;
    v28 = v25 + 1;
    if (v25 + 1 < v24)
    {
      v147 = v24;
      v29 = *v151;
      v30 = *(v149 + 72);
      v31 = v25 + 1;
      v32 = v141;
      sub_216B24400();
      v150 = v30;
      sub_216B24400();
      v33 = *(Friends + 56);
      if (*(v32 + v33 + 8))
      {
        v34 = sub_21700E5C4();
        v36 = v35;
        v33 = *(Friends + 56);
      }

      else
      {
        v34 = 0;
        v36 = 0xE000000000000000;
      }

      if (*(v143 + v33 + 8))
      {
        v37 = sub_21700E5C4();
        v39 = v38;
      }

      else
      {
        v37 = 0;
        v39 = 0xE000000000000000;
      }

      v40 = v34 == v37 && v36 == v39;
      v138 = v26;
      v139 = v5;
      if (v40)
      {
        LODWORD(v148) = 0;
      }

      else
      {
        LODWORD(v148) = sub_21700F7D4();
      }

      sub_21699C20C(v143, type metadata accessor for SocialFindFriendsController.Friend);
      sub_21699C20C(v141, type metadata accessor for SocialFindFriendsController.Friend);
      v140 = v27;
      v41 = v27 + 2;
      v42 = v150 * (v27 + 2);
      v43 = v29 + v42;
      v44 = v150 * v31;
      v45 = v29 + v150 * v31;
      v46 = v31;
      do
      {
        v5 = v41;
        v47 = v46;
        v48 = v44;
        v26 = v42;
        if (v41 >= v147)
        {
          break;
        }

        v49 = v152;
        sub_216B24400();
        sub_216B24400();
        v50 = v155;
        v51 = *(v155 + 56);
        if (*(v49 + v51 + 8))
        {
          v52 = sub_21700E5C4();
          v54 = v53;
          v51 = *(v50 + 56);
        }

        else
        {
          v52 = 0;
          v54 = 0xE000000000000000;
        }

        if (*(v153 + v51 + 8))
        {
          v55 = sub_21700E5C4();
          v57 = v56;
        }

        else
        {
          v55 = 0;
          v57 = 0xE000000000000000;
        }

        v58 = v52 == v55 && v54 == v57;
        v59 = v58 ? 0 : sub_21700F7D4();

        sub_21699C20C(v153, type metadata accessor for SocialFindFriendsController.Friend);
        sub_21699C20C(v152, type metadata accessor for SocialFindFriendsController.Friend);
        v41 = v5 + 1;
        v43 += v150;
        v45 += v150;
        v46 = v47 + 1;
        v44 = v48 + v150;
        v42 = &v26[v150];
      }

      while (((v148 ^ v59) & 1) == 0);
      if (v148)
      {
        v60 = v140;
        Friends = v155;
        if (v5 < v140)
        {
          goto LABEL_164;
        }

        if (v140 >= v5)
        {
          v28 = v5;
          v26 = v138;
          v5 = v139;
          v27 = v140;
          goto LABEL_51;
        }

        v61 = v140 * v150;
        do
        {
          if (v60 != v47)
          {
            v62 = *v151;
            if (!*v151)
            {
              goto LABEL_171;
            }

            sub_216B2448C();
            v63 = v61 < v48 || v62 + v61 >= &v26[v62];
            if (v63)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v61 != v48)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_216B2448C();
          }

          ++v60;
          v48 -= v150;
          v26 -= v150;
          v61 += v150;
          v64 = v60 < v47--;
        }

        while (v64);
        v28 = v5;
        v26 = v138;
        v5 = v139;
      }

      else
      {
        v28 = v5;
        v26 = v138;
        v5 = v139;
        Friends = v155;
      }

      v27 = v140;
    }

LABEL_51:
    v65 = v151[1];
    if (v28 < v65)
    {
      if (__OFSUB__(v28, v27))
      {
        goto LABEL_163;
      }

      if (v28 - v27 < v137)
      {
        break;
      }
    }

LABEL_80:
    if (v28 < v27)
    {
      goto LABEL_162;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_216938194();
      v26 = v127;
    }

    v85 = *(v26 + 2);
    v86 = v85 + 1;
    if (v85 >= *(v26 + 3) >> 1)
    {
      sub_216938194();
      v26 = v128;
    }

    *(v26 + 2) = v86;
    v87 = v26 + 32;
    v88 = &v26[16 * v85 + 32];
    *v88 = v27;
    *(v88 + 1) = v28;
    v148 = *v142;
    if (!v148)
    {
      goto LABEL_172;
    }

    v150 = v28;
    if (v85)
    {
      while (1)
      {
        v89 = v86 - 1;
        v90 = &v87[16 * v86 - 16];
        v91 = &v26[16 * v86];
        if (v86 >= 4)
        {
          break;
        }

        if (v86 == 3)
        {
          v92 = *(v26 + 4);
          v93 = *(v26 + 5);
          v102 = __OFSUB__(v93, v92);
          v94 = v93 - v92;
          v95 = v102;
LABEL_100:
          if (v95)
          {
            goto LABEL_149;
          }

          v107 = *v91;
          v106 = *(v91 + 1);
          v108 = __OFSUB__(v106, v107);
          v109 = v106 - v107;
          v110 = v108;
          if (v108)
          {
            goto LABEL_152;
          }

          v111 = *(v90 + 1);
          v112 = v111 - *v90;
          if (__OFSUB__(v111, *v90))
          {
            goto LABEL_155;
          }

          if (__OFADD__(v109, v112))
          {
            goto LABEL_157;
          }

          if (v109 + v112 >= v94)
          {
            if (v94 < v112)
            {
              v89 = v86 - 2;
            }

            goto LABEL_122;
          }

          goto LABEL_115;
        }

        if (v86 < 2)
        {
          goto LABEL_151;
        }

        v114 = *v91;
        v113 = *(v91 + 1);
        v102 = __OFSUB__(v113, v114);
        v109 = v113 - v114;
        v110 = v102;
LABEL_115:
        if (v110)
        {
          goto LABEL_154;
        }

        v116 = *v90;
        v115 = *(v90 + 1);
        v102 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v102)
        {
          goto LABEL_156;
        }

        if (v117 < v109)
        {
          goto LABEL_129;
        }

LABEL_122:
        if (v89 - 1 >= v86)
        {
          __break(1u);
LABEL_144:
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
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
          goto LABEL_166;
        }

        if (!*v151)
        {
          goto LABEL_169;
        }

        v121 = v26;
        v122 = &v87[16 * v89 - 16];
        v26 = *v122;
        v123 = v89;
        v124 = &v87[16 * v89];
        v125 = *(v124 + 1);
        sub_216B224BC(*v151 + *(v149 + 72) * *v122, *v151 + *(v149 + 72) * *v124, *v151 + *(v149 + 72) * v125, v148);
        if (v5)
        {
          goto LABEL_142;
        }

        if (v125 < v26)
        {
          goto LABEL_144;
        }

        v5 = *(v121 + 2);
        if (v123 > v5)
        {
          goto LABEL_145;
        }

        *v122 = v26;
        *(v122 + 1) = v125;
        if (v123 >= v5)
        {
          goto LABEL_146;
        }

        v126 = v123;
        v86 = v5 - 1;
        sub_216C6B848(v124 + 16, v5 - 1 - v126, v124);
        v26 = v121;
        *(v121 + 2) = v5 - 1;
        v64 = v5 > 2;
        v5 = 0;
        if (!v64)
        {
          goto LABEL_129;
        }
      }

      v96 = &v87[16 * v86];
      v97 = *(v96 - 8);
      v98 = *(v96 - 7);
      v102 = __OFSUB__(v98, v97);
      v99 = v98 - v97;
      if (v102)
      {
        goto LABEL_147;
      }

      v101 = *(v96 - 6);
      v100 = *(v96 - 5);
      v102 = __OFSUB__(v100, v101);
      v94 = v100 - v101;
      v95 = v102;
      if (v102)
      {
        goto LABEL_148;
      }

      v103 = *(v91 + 1);
      v104 = v103 - *v91;
      if (__OFSUB__(v103, *v91))
      {
        goto LABEL_150;
      }

      v102 = __OFADD__(v94, v104);
      v105 = v94 + v104;
      if (v102)
      {
        goto LABEL_153;
      }

      if (v105 >= v99)
      {
        v119 = *v90;
        v118 = *(v90 + 1);
        v102 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v102)
        {
          goto LABEL_161;
        }

        if (v94 < v120)
        {
          v89 = v86 - 2;
        }

        goto LABEL_122;
      }

      goto LABEL_100;
    }

LABEL_129:
    v25 = v150;
    v24 = v151[1];
    Friends = v155;
    if (v150 >= v24)
    {
      goto LABEL_132;
    }
  }

  v66 = v27 + v137;
  if (__OFADD__(v27, v137))
  {
    goto LABEL_165;
  }

  if (v66 >= v65)
  {
    v66 = v151[1];
  }

  if (v66 < v27)
  {
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  if (v28 == v66)
  {
    goto LABEL_80;
  }

  v138 = v26;
  v139 = v5;
  v67 = *v151;
  v68 = *(v149 + 72);
  v69 = *v151 + v68 * (v28 - 1);
  v70 = -v68;
  v140 = v27;
  v71 = v27 - v28;
  v144 = v68;
  v145 = v66;
  v72 = v67 + v28 * v68;
LABEL_60:
  v150 = v28;
  v73 = v72;
  v147 = v71;
  v148 = v69;
  while (1)
  {
    v74 = v156;
    sub_216B24400();
    sub_216B24400();
    v75 = *(Friends + 56);
    if (*(v74 + v75 + 8))
    {
      v76 = Friends;
      v77 = sub_21700E5C4();
      v79 = v78;
      v75 = *(v76 + 56);
    }

    else
    {
      v77 = 0;
      v79 = 0xE000000000000000;
    }

    if (*(v157 + v75 + 8))
    {
      v80 = sub_21700E5C4();
      v82 = v81;
    }

    else
    {
      v80 = 0;
      v82 = 0xE000000000000000;
    }

    if (v77 == v80 && v79 == v82)
    {

      sub_21699C20C(v157, type metadata accessor for SocialFindFriendsController.Friend);
      sub_21699C20C(v156, type metadata accessor for SocialFindFriendsController.Friend);
LABEL_77:
      Friends = v155;
LABEL_78:
      v28 = v150 + 1;
      v69 = v148 + v144;
      v71 = v147 - 1;
      v72 += v144;
      if (v150 + 1 == v145)
      {
        v28 = v145;
        v26 = v138;
        v5 = v139;
        v27 = v140;
        goto LABEL_80;
      }

      goto LABEL_60;
    }

    v84 = sub_21700F7D4();

    sub_21699C20C(v157, type metadata accessor for SocialFindFriendsController.Friend);
    sub_21699C20C(v156, type metadata accessor for SocialFindFriendsController.Friend);
    if ((v84 & 1) == 0)
    {
      goto LABEL_77;
    }

    if (!v67)
    {
      break;
    }

    sub_216B2448C();
    Friends = v155;
    swift_arrayInitWithTakeFrontToBack();
    sub_216B2448C();
    v69 += v70;
    v73 += v70;
    v63 = __CFADD__(v71++, 1);
    if (v63)
    {
      goto LABEL_78;
    }
  }

  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
}

uint64_t sub_216B21B64(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v113 = a1;
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  v120 = *(Friends - 8);
  v10 = MEMORY[0x28223BE20](Friends);
  v116 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v124 = &v109 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v125 = &v109 - v15;
  result = MEMORY[0x28223BE20](v14);
  v18 = &v109 - v17;
  v121 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_100:
    v5 = *v113;
    if (!*v113)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_102:
      v103 = (v21 + 16);
      v104 = *(v21 + 16);
      for (i = v21; v104 >= 2; v21 = i)
      {
        if (!*v121)
        {
          goto LABEL_138;
        }

        v105 = (v21 + 16 * v104);
        v21 = *v105;
        v106 = &v103[2 * v104];
        v107 = *(v106 + 1);
        sub_216B22AC4(*v121 + *(v120 + 72) * *v105, *v121 + *(v120 + 72) * *v106, *v121 + *(v120 + 72) * v107, v5);
        if (v6)
        {
          break;
        }

        if (v107 < v21)
        {
          goto LABEL_126;
        }

        if (v104 - 2 >= *v103)
        {
          goto LABEL_127;
        }

        *v105 = v21;
        v105[1] = v107;
        v108 = *v103 - v104;
        if (*v103 < v104)
        {
          goto LABEL_128;
        }

        v104 = *v103 - 1;
        result = sub_216C6B848(v106 + 16, v108, v106);
        *v103 = v104;
      }
    }

LABEL_135:
    result = sub_216C6B740(v21);
    v21 = result;
    goto LABEL_102;
  }

  v111 = a4;
  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v126 = result;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    if (v20 + 1 < v19)
    {
      v24 = *v121;
      v25 = *(v120 + 72);
      v123 = v20 + 1;
      v26 = v24 + v25 * v23;
      v118 = v24;
      v119 = v19;
      v27 = result;
      sub_216B24400();
      v5 = v22;
      v28 = v125;
      sub_216B24400();
      v29 = *(v27 + 60);
      v30 = *&v18[v29];
      v31 = *(v28 + v29);
      sub_21699C20C(v28, type metadata accessor for SocialFindFriendsController.Friend);
      sub_21699C20C(v18, type metadata accessor for SocialFindFriendsController.Friend);
      v32 = v119;
      v112 = v5;
      v33 = v5 + 2;
      i = v25;
      v34 = v118 + v25 * (v5 + 2);
      while (1)
      {
        v35 = v33;
        if (++v123 >= v32)
        {
          break;
        }

        sub_216B24400();
        v5 = v125;
        sub_216B24400();
        v36 = *(v126 + 60);
        v37 = *&v18[v36];
        v38 = *(v5 + v36);
        sub_21699C20C(v5, type metadata accessor for SocialFindFriendsController.Friend);
        sub_21699C20C(v18, type metadata accessor for SocialFindFriendsController.Friend);
        v32 = v119;
        v34 += i;
        v26 += i;
        v33 = v35 + 1;
        if (v31 < v30 == v38 >= v37)
        {
          goto LABEL_9;
        }
      }

      v123 = v32;
LABEL_9:
      if (v31 >= v30)
      {
        v23 = v123;
        v22 = v112;
        result = v126;
      }

      else
      {
        v23 = v123;
        if (v123 < v112)
        {
          goto LABEL_132;
        }

        result = v126;
        if (v112 >= v123)
        {
          v22 = v112;
        }

        else
        {
          v5 = v21;
          v110 = v6;
          if (v32 >= v35)
          {
            v39 = v35;
          }

          else
          {
            v39 = v32;
          }

          v40 = i * (v39 - 1);
          v41 = i * v39;
          v42 = v112 * i;
          v43 = v112;
          do
          {
            if (v43 != --v23)
            {
              v44 = *v121;
              if (!*v121)
              {
                goto LABEL_139;
              }

              sub_216B2448C();
              v45 = v42 < v40 || v44 + v42 >= (v44 + v41);
              if (v45)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v42 != v40)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_216B2448C();
            }

            ++v43;
            v40 -= i;
            v41 -= i;
            v42 += i;
          }

          while (v43 < v23);
          v6 = v110;
          v21 = v5;
          result = v126;
          v23 = v123;
          v22 = v112;
        }
      }
    }

    v46 = v121[1];
    if (v23 < v46)
    {
      if (__OFSUB__(v23, v22))
      {
        goto LABEL_131;
      }

      if (v23 - v22 < v111)
      {
        break;
      }
    }

LABEL_47:
    if (v23 < v22)
    {
      goto LABEL_130;
    }

    v59 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_216938194();
      v21 = v101;
    }

    v60 = *(v21 + 16);
    v61 = v60 + 1;
    if (v60 >= *(v21 + 24) >> 1)
    {
      sub_216938194();
      v21 = v102;
    }

    result = v59;
    *(v21 + 16) = v61;
    v62 = v21 + 32;
    v63 = (v21 + 32 + 16 * v60);
    *v63 = v22;
    v63[1] = v23;
    v119 = *v113;
    if (!v119)
    {
      goto LABEL_140;
    }

    v123 = v23;
    if (v60)
    {
      i = v21;
      while (1)
      {
        v64 = v61 - 1;
        v65 = (v62 + 16 * (v61 - 1));
        v66 = (v21 + 16 * v61);
        if (v61 >= 4)
        {
          break;
        }

        if (v61 == 3)
        {
          v67 = *(v21 + 32);
          v68 = *(v21 + 40);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_68:
          if (v70)
          {
            goto LABEL_117;
          }

          v82 = *v66;
          v81 = v66[1];
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_120;
          }

          v86 = v65[1];
          v87 = v86 - *v65;
          if (__OFSUB__(v86, *v65))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v84, v87))
          {
            goto LABEL_125;
          }

          if (v84 + v87 >= v69)
          {
            if (v69 < v87)
            {
              v64 = v61 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v61 < 2)
        {
          goto LABEL_119;
        }

        v89 = *v66;
        v88 = v66[1];
        v77 = __OFSUB__(v88, v89);
        v84 = v88 - v89;
        v85 = v77;
LABEL_83:
        if (v85)
        {
          goto LABEL_122;
        }

        v91 = *v65;
        v90 = v65[1];
        v77 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v77)
        {
          goto LABEL_124;
        }

        if (v92 < v84)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v64 - 1 >= v61)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v121)
        {
          goto LABEL_137;
        }

        v5 = v18;
        v96 = (v62 + 16 * (v64 - 1));
        v97 = *v96;
        v98 = v64;
        v99 = v62 + 16 * v64;
        v21 = *(v99 + 8);
        sub_216B22AC4(*v121 + *(v120 + 72) * *v96, *v121 + *(v120 + 72) * *v99, *v121 + *(v120 + 72) * v21, v119);
        if (v6)
        {
        }

        if (v21 < v97)
        {
          goto LABEL_112;
        }

        v6 = *(i + 16);
        if (v98 > v6)
        {
          goto LABEL_113;
        }

        *v96 = v97;
        v96[1] = v21;
        if (v98 >= v6)
        {
          goto LABEL_114;
        }

        v61 = v6 - 1;
        sub_216C6B848((v99 + 16), v6 - 1 - v98, v99);
        v21 = i;
        *(i + 16) = v6 - 1;
        v100 = v6 > 2;
        v6 = 0;
        result = v126;
        v18 = v5;
        if (!v100)
        {
          goto LABEL_97;
        }
      }

      v71 = v62 + 16 * v61;
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_115;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_116;
      }

      v78 = v66[1];
      v79 = v78 - *v66;
      if (__OFSUB__(v78, *v66))
      {
        goto LABEL_118;
      }

      v77 = __OFADD__(v69, v79);
      v80 = v69 + v79;
      if (v77)
      {
        goto LABEL_121;
      }

      if (v80 >= v74)
      {
        v94 = *v65;
        v93 = v65[1];
        v77 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v77)
        {
          goto LABEL_129;
        }

        if (v69 < v95)
        {
          v64 = v61 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v19 = v121[1];
    v20 = v123;
    if (v123 >= v19)
    {
      goto LABEL_100;
    }
  }

  v47 = v22 + v111;
  if (__OFADD__(v22, v111))
  {
    goto LABEL_133;
  }

  if (v47 >= v46)
  {
    v47 = v121[1];
  }

  if (v47 < v22)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v23 == v47)
  {
    goto LABEL_47;
  }

  i = v21;
  v110 = v6;
  v48 = *v121;
  v49 = *(v120 + 72);
  v50 = *v121 + v49 * (v23 - 1);
  v51 = -v49;
  v112 = v22;
  v52 = v22 - v23;
  v114 = v49;
  v115 = v47;
  v53 = v48 + v23 * v49;
LABEL_40:
  v123 = v23;
  v117 = v53;
  v118 = v52;
  v119 = v50;
  v54 = v50;
  v5 = v126;
  while (1)
  {
    sub_216B24400();
    v55 = v125;
    sub_216B24400();
    v56 = *(v5 + 60);
    v57 = *&v18[v56];
    v58 = *(v55 + v56);
    sub_21699C20C(v55, type metadata accessor for SocialFindFriendsController.Friend);
    result = sub_21699C20C(v18, type metadata accessor for SocialFindFriendsController.Friend);
    if (v58 >= v57)
    {
LABEL_45:
      v23 = v123 + 1;
      v50 = v119 + v114;
      v52 = v118 - 1;
      v53 = v117 + v114;
      if (v123 + 1 == v115)
      {
        v23 = v115;
        v6 = v110;
        v21 = i;
        result = v126;
        v22 = v112;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v48)
    {
      break;
    }

    sub_216B2448C();
    v5 = v126;
    swift_arrayInitWithTakeFrontToBack();
    sub_216B2448C();
    v54 += v51;
    v53 += v51;
    v45 = __CFADD__(v52++, 1);
    if (v45)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_216B224BC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v72 = a3;
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  v8 = MEMORY[0x28223BE20](Friends);
  v9 = MEMORY[0x28223BE20](v8);
  v71 = &v65 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v65 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v65 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    return result;
  }

  v20 = a2 - a1;
  v21 = a2 - a1 == 0x8000000000000000 && v19 == -1;
  if (v21)
  {
    goto LABEL_83;
  }

  v22 = v72 - a2;
  if (v72 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_84;
  }

  v69 = v15;
  v73 = result;
  v24 = v20 / v19;
  v76 = a1;
  v75 = a4;
  v25 = v22 / v19;
  if (v20 / v19 < v22 / v19)
  {
    sub_216939798(a1, v20 / v19, a4);
    v71 = a4 + v24 * v19;
    v74 = v71;
    v26 = v73;
    while (1)
    {
      if (a4 >= v71 || a2 >= v72)
      {
        goto LABEL_81;
      }

      v28 = a2;
      sub_216B24400();
      sub_216B24400();
      v29 = *(v26 + 56);
      if (*&v17[v29 + 8])
      {
        v30 = v26;
        v31 = sub_21700E5C4();
        v33 = v32;
        v29 = *(v30 + 56);
      }

      else
      {
        v31 = 0;
        v33 = 0xE000000000000000;
      }

      if (*&v13[v29 + 8])
      {
        v34 = sub_21700E5C4();
        v36 = v35;
      }

      else
      {
        v34 = 0;
        v36 = 0xE000000000000000;
      }

      if (v31 == v34 && v33 == v36)
      {

        sub_21699C20C(v13, type metadata accessor for SocialFindFriendsController.Friend);
        sub_21699C20C(v17, type metadata accessor for SocialFindFriendsController.Friend);
      }

      else
      {
        v38 = sub_21700F7D4();

        sub_21699C20C(v13, type metadata accessor for SocialFindFriendsController.Friend);
        sub_21699C20C(v17, type metadata accessor for SocialFindFriendsController.Friend);
        if (v38)
        {
          a2 = v28 + v19;
          v39 = a1 < v28 || a1 >= a2;
          v26 = v73;
          if (v39)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          goto LABEL_43;
        }
      }

      v40 = a1 < a4 || a1 >= a4 + v19;
      v26 = v73;
      if (v40)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v75 = a4 + v19;
      a4 += v19;
      a2 = v28;
LABEL_43:
      a1 += v19;
      v76 = a1;
    }
  }

  sub_216939798(a2, v22 / v19, a4);
  v41 = a2;
  v42 = a4 + v25 * v19;
  v43 = -v19;
  v44 = v42;
  v46 = v72;
  v45 = v73;
  v47 = v69;
  v70 = v43;
LABEL_47:
  v72 = v41;
  v68 = v41 + v43;
  v48 = v46;
  v66 = v44;
  while (1)
  {
    if (v42 <= a4)
    {
      v76 = v72;
      v74 = v44;
      goto LABEL_81;
    }

    if (v72 <= a1)
    {
      break;
    }

    v67 = v44;
    v49 = v42 + v43;
    v50 = v71;
    sub_216B24400();
    sub_216B24400();
    v51 = *(v45 + 56);
    if (*(v50 + v51 + 8))
    {
      v52 = sub_21700E5C4();
      v54 = v53;
      v51 = *(v45 + 56);
    }

    else
    {
      v52 = 0;
      v54 = 0xE000000000000000;
    }

    if (*(v47 + v51 + 8))
    {
      v55 = sub_21700E5C4();
      v57 = v56;
    }

    else
    {
      v55 = 0;
      v57 = 0xE000000000000000;
    }

    if (v52 == v55 && v54 == v57)
    {
      v59 = 0;
    }

    else
    {
      v59 = sub_21700F7D4();
    }

    v47 = v69;
    v46 = v48 + v70;
    sub_21699C20C(v69, type metadata accessor for SocialFindFriendsController.Friend);
    sub_21699C20C(v71, type metadata accessor for SocialFindFriendsController.Friend);
    if (v59)
    {
      v45 = v73;
      if (v48 < v72 || v46 >= v72)
      {
        v62 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v41 = v62;
        v44 = v67;
        v43 = v70;
      }

      else
      {
        v44 = v67;
        v21 = v48 == v72;
        v63 = v68;
        v41 = v68;
        v43 = v70;
        if (!v21)
        {
          v64 = v67;
          swift_arrayInitWithTakeBackToFront();
          v41 = v63;
          v44 = v64;
        }
      }

      goto LABEL_47;
    }

    v60 = v48 < v42 || v46 >= v42;
    v45 = v73;
    if (v60)
    {
      swift_arrayInitWithTakeFrontToBack();
      v48 = v46;
      v42 = v49;
      v44 = v49;
      v43 = v70;
    }

    else
    {
      v44 = v49;
      v21 = v42 == v48;
      v48 = v46;
      v42 = v49;
      v43 = v70;
      if (!v21)
      {
        swift_arrayInitWithTakeBackToFront();
        v48 = v46;
        v42 = v49;
        v44 = v49;
      }
    }
  }

  v76 = v72;
  v74 = v66;
LABEL_81:
  sub_216C6B754(&v76, &v75, &v74);
  return 1;
}

uint64_t sub_216B22AC4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  v9 = MEMORY[0x28223BE20](Friends);
  v56 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v51 - v12;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v16 = a2 - a1;
  v17 = a2 - a1 == 0x8000000000000000 && v15 == -1;
  if (v17)
  {
    goto LABEL_61;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v20 = v16 / v15;
  v60 = a1;
  v59 = a4;
  v21 = v18 / v15;
  v51[1] = v4;
  if (v16 / v15 >= v18 / v15)
  {
    sub_216939798(a2, v18 / v15, a4);
    v30 = a4 + v21 * v15;
    v31 = -v15;
    v32 = v30;
    v33 = a3;
    v53 = a1;
    v54 = -v15;
LABEL_37:
    v55 = a2 + v31;
    v34 = v33;
    v51[0] = v32;
    while (1)
    {
      if (v30 <= a4)
      {
        v60 = a2;
        v58 = v32;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v52 = v32;
      v35 = a2;
      v36 = a4;
      v37 = v34 + v54;
      v38 = v30 + v54;
      v39 = v30;
      v40 = v34;
      sub_216B24400();
      v41 = v13;
      v42 = v56;
      sub_216B24400();
      v43 = *(Friends + 60);
      v44 = *(v41 + v43);
      v45 = *&v42[v43];
      v46 = v42;
      v13 = v41;
      sub_21699C20C(v46, type metadata accessor for SocialFindFriendsController.Friend);
      sub_21699C20C(v41, type metadata accessor for SocialFindFriendsController.Friend);
      if (v45 < v44)
      {
        v48 = v40 < v35 || v37 >= v35;
        v33 = v37;
        a4 = v36;
        if (v48)
        {
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
          v32 = v52;
          a1 = v53;
          v31 = v54;
          v30 = v39;
        }

        else
        {
          v32 = v52;
          v17 = v40 == v35;
          v31 = v54;
          v49 = v55;
          a2 = v55;
          v30 = v39;
          a1 = v53;
          if (!v17)
          {
            v50 = v52;
            swift_arrayInitWithTakeBackToFront();
            v30 = v39;
            a2 = v49;
            v32 = v50;
          }
        }

        goto LABEL_37;
      }

      v47 = v40 < v39 || v37 >= v39;
      a4 = v36;
      if (v47)
      {
        swift_arrayInitWithTakeFrontToBack();
        v34 = v37;
        v30 = v38;
        v32 = v38;
        a2 = v35;
        a1 = v53;
      }

      else
      {
        v32 = v38;
        v17 = v39 == v40;
        v34 = v37;
        v30 = v38;
        a2 = v35;
        a1 = v53;
        if (!v17)
        {
          swift_arrayInitWithTakeBackToFront();
          v34 = v37;
          v30 = v38;
          v32 = v38;
        }
      }
    }

    v60 = a2;
    v58 = v51[0];
  }

  else
  {
    sub_216939798(a1, v16 / v15, a4);
    v22 = a4 + v20 * v15;
    v58 = v22;
    while (a4 < v22 && a2 < a3)
    {
      sub_216B24400();
      v24 = v56;
      sub_216B24400();
      v25 = *(Friends + 60);
      v26 = *&v13[v25];
      v27 = *(v24 + v25);
      sub_21699C20C(v24, type metadata accessor for SocialFindFriendsController.Friend);
      sub_21699C20C(v13, type metadata accessor for SocialFindFriendsController.Friend);
      if (v27 >= v26)
      {
        if (a1 < a4 || a1 >= a4 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v59 = a4 + v15;
        a4 += v15;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v15;
      }

      a1 += v15;
      v60 = a1;
    }
  }

LABEL_59:
  sub_216C6B754(&v60, &v59, &v58);
  return 1;
}

uint64_t sub_216B22F58(unint64_t a1, uint64_t a2)
{
  v90 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1B20);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v68 - v9);
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  v83 = *(Friends - 8);
  v11 = MEMORY[0x28223BE20](Friends);
  v80 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v68 - v14;
  MEMORY[0x28223BE20](v13);
  v71 = &v68 - v16;
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v73 = v8;
  v68 = 0;
  v18 = a1 + 56;
  v17 = *(a1 + 56);
  v19 = -1 << *(a1 + 32);
  v77 = ~v19;
  if (-v19 < 64)
  {
    v20 = ~(-1 << -v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v17;
  v22 = (63 - v19) >> 6;
  v84 = (a2 + 56);
  v75 = a1;
  sub_21700DF14();
  v23 = 0;
  v74 = v22;
  v70 = v10;
  v79 = a2;
LABEL_6:
  v24 = v21;
  v25 = v23;
  v81 = v23;
  if (v21)
  {
LABEL_11:
    v27 = (v24 - 1) & v24;
    a1 = v75;
    sub_216B24400();
    v28 = 0;
    v26 = v25;
LABEL_12:
    v29 = Friends;
    __swift_storeEnumTagSinglePayload(v10, v28, 1, Friends);
    v85 = a1;
    v86 = v18;
    v87 = v77;
    v88 = v26;
    v82 = v27;
    v89 = v27;
    if (__swift_getEnumTagSinglePayload(v10, 1, v29) == 1)
    {
      goto LABEL_44;
    }

    v81 = v26;
    v30 = v71;
    sub_216B2448C();
    sub_21700F8F4();
    v78 = *(v30 + 16);
    sub_21700E614();
    v31 = sub_21700F944();
    v32 = ~(-1 << *(a2 + 32));
    while (1)
    {
      v10 = (v31 & v32);
      v25 = (v31 & v32) >> 6;
      v2 = 1 << (v31 & v32);
      if ((v2 & v84[v25]) == 0)
      {
        sub_21699C20C(v71, type metadata accessor for SocialFindFriendsController.Friend);
        v23 = v81;
        v21 = v82;
        v22 = v74;
        v10 = v70;
        a2 = v79;
        goto LABEL_6;
      }

      a1 = *(v83 + 72);
      sub_216B24400();
      sub_21700F8F4();
      sub_21700E614();
      v33 = sub_21700F944();
      sub_21700F8F4();
      sub_21700E614();
      v34 = sub_21700F944();
      sub_21699C20C(v15, type metadata accessor for SocialFindFriendsController.Friend);
      if (v33 == v34)
      {
        break;
      }

      v31 = v10 + 1;
    }

    v83 = a1;
    v35 = sub_21699C20C(v71, type metadata accessor for SocialFindFriendsController.Friend);
    a2 = v79;
    v36 = *(v79 + 32);
    a1 = ((1 << v36) + 63) >> 6;
    v21 = 8 * a1;
    if ((v36 & 0x3Fu) <= 0xD)
    {
LABEL_20:
      v69 = a1;
      v70 = &v68;
      MEMORY[0x28223BE20](v35);
      v37 = &v68 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v37, v84, v21);
      v38 = *&v37[8 * v25] & ~v2;
      v39 = *(a2 + 16);
      v78 = v37;
      *&v37[8 * v25] = v38;
      v40 = v39 - 1;
      v41 = v73;
      v43 = v81;
      v42 = v82;
      v44 = v74;
      v45 = v75;
      v72 = v18;
      while (1)
      {
        v71 = v40;
LABEL_22:
        if (!v42)
        {
          break;
        }

LABEL_27:
        v47 = (v42 - 1) & v42;
        sub_216B24400();
        v48 = 0;
LABEL_28:
        v49 = Friends;
        __swift_storeEnumTagSinglePayload(v41, v48, 1, Friends);
        v85 = v45;
        v86 = v18;
        v87 = v77;
        v88 = v43;
        v89 = v47;
        if (__swift_getEnumTagSinglePayload(v41, 1, v49) == 1)
        {
          sub_216697664(v41, &qword_27CAC1B20);
          a2 = sub_216B23D98(v78, v69, v71, a2);
          goto LABEL_40;
        }

        v81 = v43;
        v82 = v47;
        v50 = v80;
        sub_216B2448C();
        sub_21700F8F4();
        v10 = *(v50 + 16);
        sub_21700E614();
        v51 = sub_21700F944();
        v52 = a2;
        v53 = ~(-1 << *(a2 + 32));
        do
        {
          v54 = v51 & v53;
          v55 = (v51 & v53) >> 6;
          v56 = 1 << (v51 & v53);
          if ((v56 & v84[v55]) == 0)
          {
            sub_21699C20C(v80, type metadata accessor for SocialFindFriendsController.Friend);
            a2 = v52;
            v45 = v75;
            v18 = v72;
            v41 = v73;
            v43 = v81;
            v42 = v82;
            v44 = v74;
            goto LABEL_22;
          }

          sub_216B24400();
          sub_21700F8F4();
          sub_21700E614();
          v57 = sub_21700F944();
          sub_21700F8F4();
          sub_21700E614();
          v58 = sub_21700F944();
          sub_21699C20C(v15, type metadata accessor for SocialFindFriendsController.Friend);
          v51 = v54 + 1;
        }

        while (v57 != v58);
        sub_21699C20C(v80, type metadata accessor for SocialFindFriendsController.Friend);
        v59 = v78[v55];
        v78[v55] = v59 & ~v56;
        v60 = (v59 & v56) == 0;
        a2 = v52;
        v45 = v75;
        v18 = v72;
        v41 = v73;
        v43 = v81;
        v42 = v82;
        v44 = v74;
        if (v60)
        {
          goto LABEL_22;
        }

        v40 = v71 - 1;
        if (__OFSUB__(v71, 1))
        {
          __break(1u);
        }

        if (v71 == 1)
        {

          a2 = MEMORY[0x277D84FA0];
          goto LABEL_40;
        }
      }

      while (1)
      {
        v46 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          break;
        }

        if (v46 >= v44)
        {
          v47 = 0;
          v48 = 1;
          goto LABEL_28;
        }

        v42 = *(v18 + 8 * v46);
        ++v43;
        if (v42)
        {
          v43 = v46;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_44:
      sub_216697664(v10, &qword_27CAC1B20);
LABEL_40:
      sub_216687978();
      return a2;
    }
  }

  else
  {
    v26 = v23;
    while (1)
    {
      v25 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v25 >= v22)
      {
        v27 = 0;
        v28 = 1;
        a1 = v75;
        goto LABEL_12;
      }

      v24 = *(v18 + 8 * v25);
      ++v26;
      if (v24)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_20;
  }

  v62 = swift_slowAlloc();
  v63 = a1;
  v64 = a1;
  v65 = v68;
  v66 = sub_216B23D10(v62, v63, v84, v64, a2, v10, &v85);
  if (!v65)
  {
    v67 = v66;

    MEMORY[0x21CEA1440](v62, -1, -1);
    v77 = v87;
    a2 = v67;
    goto LABEL_40;
  }

  result = MEMORY[0x21CEA1440](v62, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_216B238EC(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v41 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1B20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v40 - v10;
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  v49 = *(Friends - 8);
  v12 = MEMORY[0x28223BE20](Friends);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v47 = &v40 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18) & ((-1 << a4) - 1);
  v43 = a1;
  v44 = v11;
  *(a1 + v18) = v19;
  v20 = v17 - 1;
  v50 = a3;
  v48 = a3 + 56;
  v45 = a5;
  while (1)
  {
    v42 = v20;
LABEL_3:
    v21 = *a5;
    v22 = a5[1];
    v23 = a5[2];
    v24 = a5[3];
    v25 = a5[4];
    if (!v25)
    {
      break;
    }

LABEL_8:
    v27 = (v25 - 1) & v25;
    sub_216B24400();
    v28 = 0;
LABEL_9:
    v29 = Friends;
    __swift_storeEnumTagSinglePayload(v11, v28, 1, Friends);
    *a5 = v21;
    a5[1] = v22;
    a5[2] = v23;
    a5[3] = v24;
    a5[4] = v27;
    if (__swift_getEnumTagSinglePayload(v11, 1, v29) == 1)
    {
      sub_216697664(v11, &qword_27CAC1B20);
      v39 = v50;

      return sub_216B23D98(v43, v41, v42, v39);
    }

    sub_216B2448C();
    v30 = v50;
    sub_21700F8F4();
    sub_21700E614();
    v31 = sub_21700F944();
    v32 = ~(-1 << *(v30 + 32));
    do
    {
      v33 = v31 & v32;
      v34 = (v31 & v32) >> 6;
      v35 = 1 << (v31 & v32);
      if ((v35 & *(v48 + 8 * v34)) == 0)
      {
        result = sub_21699C20C(v47, type metadata accessor for SocialFindFriendsController.Friend);
        v11 = v44;
        a5 = v45;
        goto LABEL_3;
      }

      sub_216B24400();
      sub_21700F8F4();
      sub_21700E614();
      v36 = sub_21700F944();
      sub_21700F8F4();
      sub_21700E614();
      v37 = sub_21700F944();
      sub_21699C20C(v14, type metadata accessor for SocialFindFriendsController.Friend);
      v31 = v33 + 1;
    }

    while (v36 != v37);
    result = sub_21699C20C(v47, type metadata accessor for SocialFindFriendsController.Friend);
    v11 = v44;
    v38 = v43[v34];
    v43[v34] = v38 & ~v35;
    a5 = v45;
    if ((v38 & v35) == 0)
    {
      goto LABEL_3;
    }

    v20 = v42 - 1;
    if (__OFSUB__(v42, 1))
    {
      goto LABEL_22;
    }

    if (v42 == 1)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= ((v23 + 64) >> 6))
    {
      v27 = 0;
      v28 = 1;
      goto LABEL_9;
    }

    v25 = *(v22 + 8 * v26);
    ++v24;
    if (v25)
    {
      v24 = v26;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_216B23D10(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_216B238EC(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_216B23D98(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  MEMORY[0x28223BE20](Friends - 8);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EF0);
  result = sub_21700F394();
  v9 = result;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  v12 = 0;
  v13 = result + 56;
  while (v11)
  {
    v11 &= v11 - 1;
LABEL_16:
    sub_216B24400();
    sub_21700F8F4();
    sub_21700E614();
    result = sub_21700F944();
    v16 = -1 << *(v9 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v13 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v13 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v13 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v13 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    result = sub_216B2448C();
    ++*(v9 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    if (!a3)
    {
LABEL_27:

      return v9;
    }
  }

  v14 = v12;
  while (1)
  {
    v12 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      goto LABEL_27;
    }

    v15 = a1[v12];
    ++v14;
    if (v15)
    {
      v11 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_216B2405C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v30 = a4;
  v26 = a2;
  v27 = a1;
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  v29 = *(Friends - 8);
  result = MEMORY[0x28223BE20](Friends - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0;
  v10 = 0;
  v31 = a3;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_11:
    v21 = v18 | (v10 << 6);
    sub_216B24400();
    v22 = v30(v9);
    result = sub_21699C20C(v9, type metadata accessor for SocialFindFriendsController.Friend);
    if (v4)
    {
      return result;
    }

    if (v22)
    {
      *(v27 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_16:
        v24 = v31;

        return sub_216B23D98(v27, v26, v28, v24);
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v20 = *(v12 + 8 * v10);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_216B24274(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_216B2405C(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

void sub_216B24318(uint64_t a1, void *a2, char a3)
{
  if (a3 != -1)
  {
    sub_21693B50C(a1, a2, a3 & 1);
  }
}

id sub_216B24330(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    sub_21700DF14();
    v3 = a2;
  }

  else
  {
    sub_21700DF14();
    v3 = a2;
  }

  return v3;
}

uint64_t sub_216B24390(void *a1)
{
  v2 = [a1 thumbnailImageData];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_217005FB4();

  return v3;
}

uint64_t sub_216B24400()
{
  v2 = OUTLINED_FUNCTION_102();
  v3(v2);
  OUTLINED_FUNCTION_34();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_216B2448C()
{
  v2 = OUTLINED_FUNCTION_102();
  v3(v2);
  OUTLINED_FUNCTION_34();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t SelectTabAction.init(actionMetrics:tabIdentifier:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v6 + 32))(a3, a1);
  result = type metadata accessor for SelectTabAction();
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t SelectTabAction.TabIdentifier.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v12 = sub_21700CDB4();
  v14 = v13;
  v15 = v11;
  v16 = *(v8 + 8);
  v16(v15, v6);
  if (v14)
  {
    v17 = v12 == 0x6F4E6E657473696CLL && v14 == 0xE900000000000077;
    if (v17 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
    {
      v18 = 0;
LABEL_8:

      sub_21700CF34();
      OUTLINED_FUNCTION_34();
      (*(v19 + 8))(a2);
      result = (v16)(a1, v6);
      *a3 = v18;
      return result;
    }

    v29 = v12 == 0x6573776F7262 && v14 == 0xE600000000000000;
    if (v29 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
    {
      v18 = 1;
      goto LABEL_8;
    }

    v30 = v12 == 0x6F69646172 && v14 == 0xE500000000000000;
    if (v30 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
    {
      v18 = 2;
      goto LABEL_8;
    }

    v31 = v12 == 0x686372616573 && v14 == 0xE600000000000000;
    if (v31 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
    {
      v18 = 3;
      goto LABEL_8;
    }

    v32 = v12 == 0x7972617262696CLL && v14 == 0xE700000000000000;
    if (v32 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
    {
      v18 = 4;
      goto LABEL_8;
    }

    v33 = v12 == 0x736F65646976 && v14 == 0xE600000000000000;
    if (v33 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
    {
      v18 = 5;
      goto LABEL_8;
    }

    v34 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    *v35 = v12;
    v35[1] = v14;
    v35[2] = &type metadata for SelectTabAction.TabIdentifier;
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D22520], v34);
  }

  else
  {
    v21 = sub_21700E2E4();
    sub_2167B1EA4();
    v36[1] = OUTLINED_FUNCTION_1_109();
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71E0);
    v24 = swift_allocObject();
    v37 = v16;
    v25 = v24;
    *(v24 + 16) = xmmword_217013DA0;
    *(v24 + 32) = OUTLINED_FUNCTION_1_109();
    *v26 = 1684957547;
    v26[1] = 0xE400000000000000;
    v26[2] = &type metadata for SelectTabAction.TabIdentifier;
    v27 = *(*(v21 - 8) + 104);
    v27(v26, *MEMORY[0x277D22530], v21);
    *v23 = &type metadata for SelectTabAction.TabIdentifier;
    v23[1] = v25;
    v16 = v37;
    v27(v23, *MEMORY[0x277D22538], v21);
  }

  swift_willThrow();
  sub_21700CF34();
  OUTLINED_FUNCTION_34();
  (*(v28 + 8))(a2);
  return (v16)(a1, v6);
}

uint64_t SelectTabAction.TabIdentifier.hashValue.getter()
{
  v1 = *v0;
  sub_21700F8F4();
  MEMORY[0x21CEA0720](v1);
  return sub_21700F944();
}

uint64_t SelectTabAction.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v49 = v9;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v10);
  v51 = v47 - v11;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v12);
  v14 = v47 - v13;
  v56 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v48 = v18;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v19);
  v50 = v47 - v20;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v21);
  v22 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v53 = v23;
  MEMORY[0x28223BE20](v24);
  v26 = v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1;
  sub_21700CE04();
  v27 = *(v7 + 16);
  v55 = v5;
  v28 = v5;
  v29 = v27;
  v27(v14, a2, v28);
  v30 = v54;
  sub_21700D224();
  if (v30)
  {
    (*(v7 + 8))(a2, v55);
    return (*(v16 + 8))(v57, v56);
  }

  else
  {
    v54 = v16;
    v47[0] = v22;
    v47[1] = v7;
    v32 = v52;
    (*(v53 + 32))(v52, v26, v22);
    sub_21700CE04();
    v33 = a2;
    v34 = a2;
    v35 = v55;
    v29(v51, v34, v55);
    sub_216B24EE8();
    sub_21700D734();
    v36 = v58;
    v37 = v32;
    if (v58 == 6)
    {
      v38 = v48;
      v39 = v57;
      sub_21700CE04();
      v40 = v49;
      v29(v49, v33, v35);
      SelectTabAction.TabIdentifier.init(deserializing:using:)(v38, v40, &v59);
      v41 = v56;
      v42 = v54;
      v45 = OUTLINED_FUNCTION_2_106();
      v46(v45);
      (*(v42 + 8))(v39, v41);
      v36 = v59;
    }

    else
    {
      v43 = OUTLINED_FUNCTION_2_106();
      v44(v43);
      (*(v54 + 8))(v57, v56);
    }

    result = type metadata accessor for SelectTabAction();
    *(v37 + *(result + 20)) = v36;
  }

  return result;
}

unint64_t sub_216B24EE8()
{
  result = qword_27CAC2F00;
  if (!qword_27CAC2F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2F00);
  }

  return result;
}

uint64_t SelectTabAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t SelectTabAction.tabIdentifier.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SelectTabAction();
  *a1 = *(v1 + *(result + 20));
  return result;
}

unint64_t sub_216B24FD4()
{
  result = qword_27CAC2F08;
  if (!qword_27CAC2F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2F08);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SelectTabAction.TabIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_216B2515C()
{
  result = qword_280E31D20[0];
  if (!qword_280E31D20[0])
  {
    type metadata accessor for UnifiedMessagesRequestAction();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E31D20);
  }

  return result;
}

uint64_t sub_216B251B4(uint64_t a1)
{
  v2 = type metadata accessor for UnifiedMessagesRequestAction();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  type metadata accessor for UnifiedMessages.Coordinator();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v9 = v31;
  if (qword_280E2C180 != -1)
  {
    swift_once();
  }

  v10 = sub_217007CA4();
  __swift_project_value_buffer(v10, qword_280E2C188);
  sub_216B258CC(a1, v8);
  v11 = sub_217007C84();
  v12 = sub_21700EDA4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v29 = v3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v28 = v9;
    v16 = v15;
    *v14 = 136315138;
    v17 = &v8[*(v2 + 20)];
    v30 = a1;
    v19 = *v17;
    v18 = *(v17 + 1);
    v31 = 46;
    v32 = 0xE100000000000000;
    v33 = v15;
    sub_21700DF14();
    MEMORY[0x21CE9F490](v19, v18);
    v20 = v31;
    v21 = v32;
    sub_216B25930(v8);

    v22 = sub_2166A85FC(v20, v21, &v33);

    *(v14 + 4) = v22;
    a1 = v30;
    _os_log_impl(&dword_216679000, v11, v12, "💬 JS-initiated UM request for placement=%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    v23 = v16;
    v9 = v28;
    MEMORY[0x21CEA1440](v23, -1, -1);
    v24 = v14;
    v3 = v29;
    MEMORY[0x21CEA1440](v24, -1, -1);
  }

  else
  {

    sub_216B25930(v8);
  }

  sub_216B258CC(a1, v5);
  v25 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v9;
  sub_216B2598C(v5, v26 + v25);
  return sub_216ECDBF4(&unk_217046388, v26);
}

uint64_t sub_216B254A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216B25544, 0, 0);
}

uint64_t sub_216B25544()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = type metadata accessor for UnifiedMessagesRequestAction();
  v4 = (v2 + *(v3 + 20));
  v5 = v4[1];
  v0[2] = *v4;
  v0[3] = v5;
  v6 = sub_21700D194();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v6);
  v7 = *(v2 + *(v3 + 24));
  sub_21700DF14();
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_216B25648;
  v9 = v0[7];

  return sub_2169FF314(v0 + 2, v9, v7);
}

uint64_t sub_216B25648(void *a1)
{
  v3 = *(*v1 + 56);

  sub_2168116E4(v3);

  return MEMORY[0x2822009F8](sub_216B2578C, 0, 0);
}

uint64_t sub_216B2578C()
{
  v1 = *(v0 + 32);
  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_21700D2A4();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_216B2584C()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_280E2C188);
  __swift_project_value_buffer(v0, qword_280E2C188);
  return sub_217007C94();
}

uint64_t sub_216B258CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedMessagesRequestAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B25930(uint64_t a1)
{
  v2 = type metadata accessor for UnifiedMessagesRequestAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216B2598C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedMessagesRequestAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B259F0(uint64_t a1)
{
  v4 = *(type metadata accessor for UnifiedMessagesRequestAction() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2166DFAC0;

  return sub_216B254A4(a1, v6, v1 + v5);
}

uint64_t type metadata accessor for TabBanner()
{
  result = qword_280E2B5A0;
  if (!qword_280E2B5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216B25B48()
{
  sub_216688154();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_21668A38C();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_216689C64();
      v1 = v5;
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_216B25C10@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v65 = a2;
  v5 = sub_21700CF34();
  v6 = *(v5 - 8);
  v63 = v5;
  v64 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v59 = v7;
  MEMORY[0x28223BE20](v8);
  v62 = &v50 - v9;
  v61 = sub_21700CDF4();
  v10 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_1_0();
  v58 = v11;
  MEMORY[0x28223BE20](v12);
  v57 = &v50 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  sub_21700CE04();
  v17 = sub_21700CDB4();
  v19 = v18;
  v20 = *(v10 + 8);
  v21 = OUTLINED_FUNCTION_194();
  v20(v21);
  *a3 = v17;
  a3[1] = v19;
  sub_21700CE04();
  v22 = sub_21700CDB4();
  v24 = v23;
  v25 = OUTLINED_FUNCTION_194();
  v20(v25);
  v26 = a3;
  a3[2] = v22;
  a3[3] = v24;
  type metadata accessor for Artwork();
  sub_21700CE04();
  v27 = *(v64 + 16);
  v55 = v64 + 16;
  v56 = v27;
  v27(v62, v65, v63);
  v28 = type metadata accessor for TabBanner();
  sub_21668F180(&qword_280E2BF60, type metadata accessor for Artwork);
  OUTLINED_FUNCTION_194();
  sub_21700D734();
  sub_21700CE04();
  v29 = sub_21700CDB4();
  v31 = v30;
  v32 = v61;
  (v20)(v16, v61);
  v33 = *(v28 + 28);
  v60 = v26;
  v34 = (v26 + v33);
  *v34 = v29;
  v34[1] = v31;
  sub_21700CE04();
  sub_21700D2E4();
  v35 = OUTLINED_FUNCTION_194();
  v36 = v32;
  v20(v35);
  sub_21700CE04();
  v54 = v28;
  v37 = v60;
  sub_21700D2E4();
  (v20)(v16, v36);
  v53 = v20;
  v38 = v57;
  v51 = a1;
  sub_21700CE04();
  LOBYTE(v29) = sub_21700CD44();
  v52 = v10 + 8;
  (v20)(v38, v36);
  *(v37 + *(v28 + 40)) = v29 & 1;
  sub_21700CE04();
  v39 = v62;
  v40 = v63;
  v41 = v65;
  v42 = v56;
  v56(v62, v65, v63);
  sub_21700CE04();
  v42(v59, v39, v40);
  sub_216AC7114();
  v44 = v43;
  v45 = *(v64 + 8);
  v45(v39, v40);
  v46 = v16;
  v47 = v61;
  v48 = v53;
  (v53)(v46, v61);
  v45(v41, v40);
  result = v48(v51, v47);
  *(v60 + *(v54 + 44)) = v44;
  return result;
}

uint64_t sub_216B2620C(uint64_t a1)
{
  result = sub_21668F180(qword_280E2B5B0, type metadata accessor for TabBanner);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B26264()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_216B262A8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216B262E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_216B26398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34[1] = a2;
  v34[0] = sub_2170067A4();
  v5 = *(v34[0] - 8);
  MEMORY[0x28223BE20](v34[0]);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2F18);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  v11 = v34 - v10;
  *v11 = sub_2170093C4();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2F20);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  sub_216B2665C(v14, &v11[*(v12 + 44)]);
  v15 = sub_217009C94();
  sub_216B26B04();
  sub_217007F24();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2F28) + 36)];
  *v24 = v15;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  v25 = sub_217009CA4();
  sub_217007F24();
  v26 = &v11[*(v8 + 36)];
  *v26 = v25;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  sub_216CCC124();
  v31 = swift_allocObject();
  v31[2] = v13;
  v31[3] = v14;
  memcpy(v31 + 4, v3, 0x49uLL);
  (*(*(a1 - 8) + 16))(v35, v3, a1);
  sub_216B273E8();
  sub_216B2752C();
  v32 = v34[0];
  sub_21700AB04();

  (*(v5 + 8))(v7, v32);
  return sub_216697664(v11, &qword_27CAC2F18);
}

uint64_t sub_216B2665C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v19 = a1;
  v21 = a2;
  v22 = sub_217009314();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HeaderComponentModel();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9868();
  v8 = &v7[*(v5 + 32)];
  v9 = *(v8 + 1);
  v18 = *v8;
  sub_21700DF14();
  sub_216B27584(v7, type metadata accessor for HeaderComponentModel);
  if (qword_27CAB5DA8 != -1)
  {
    swift_once();
  }

  v10 = qword_27CAC2F10;
  KeyPath = swift_getKeyPath();

  v16 = sub_21700AD14();
  v15 = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v24[0] = 1;
  type metadata accessor for TitleHeaderView();
  v12 = sub_216B26994();
  v13 = swift_getKeyPath();
  sub_216B26A44();
  sub_217008BB4();
  memcpy(&v25[7], __src, 0x70uLL);
  v23[0] = v18;
  v23[1] = v9;
  v23[2] = 0;
  v23[3] = MEMORY[0x277D84F90];
  v23[4] = KeyPath;
  v23[5] = v10;
  v23[6] = v15;
  v23[7] = v16;
  v23[8] = v11;
  v23[9] = 0;
  LOBYTE(v23[10]) = 1;
  v23[11] = v13;
  LOBYTE(v23[12]) = v12;
  memcpy(&v23[12] + 1, v25, 0x77uLL);
  sub_217009304();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EE0);
  sub_216B275DC();
  sub_21700A504();
  (*(v20 + 8))(v3, v22);
  memcpy(v24, v23, sizeof(v24));
  return sub_216697664(v24, &qword_27CAB7EE0);
}

uint64_t sub_216B26994()
{
  v0 = type metadata accessor for HeaderComponentModel();
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9868();
  LOBYTE(v1) = v3[*(v1 + 44)];
  sub_216B27584(v3, type metadata accessor for HeaderComponentModel);
  return 0x10200u >> (8 * v1);
}

uint64_t sub_216B26A44()
{
  v0 = type metadata accessor for HeaderComponentModel();
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9868();
  v4 = v3[*(v1 + 44)];
  sub_216B27584(v3, type metadata accessor for HeaderComponentModel);
  if (!v4)
  {
    return sub_21700B3C4();
  }

  if (v4 == 1)
  {
    return sub_21700B3D4();
  }

  return sub_21700B3B4();
}

double sub_216B26B04()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v0 + 32);
  v5 = *(v0 + 24);
  v10 = v5;
  if (v11 == 1)
  {
    v6 = v5;
  }

  else
  {

    sub_21700ED94();
    v7 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216697664(&v10, &qword_27CAC2F50);
    (*(v2 + 8))(v4, v1);
    v6 = v9[15];
  }

  result = 30.0;
  if (v6 < 2)
  {
    return 20.0;
  }

  return result;
}

uint64_t sub_216B26C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2170067A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930);
  MEMORY[0x28223BE20](v9 - 8);
  v26 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v27 = v25 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = v25 - v14;
  sub_216B2752C();
  if ((sub_21700E494() & 1) == 0 || (v25[1] = *(a3 + 8), type metadata accessor for CatalogPagePresenter(), swift_getWitnessTable(), sub_217008CB4(), sub_216A3FFDC(), , v16 = type metadata accessor for ToolbarConfiguration(0), EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16), result = sub_216697664(v15, &qword_27CAB7930), EnumTagSinglePayload == 1))
  {
    (*(v6 + 16))(v8, a2, v5);
    v19 = (*(v6 + 88))(v8, v5);
    v20 = *MEMORY[0x277D2A410];
    result = (*(v6 + 8))(v8, v5);
    if (v19 != v20)
    {
      type metadata accessor for CatalogPagePresenter();
      swift_getWitnessTable();
      sub_217008CB4();
      v21 = v27;
      sub_216A3FFDC();

      v22 = type metadata accessor for ToolbarConfiguration(0);
      if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
      {
        sub_216697664(v21, &qword_27CAB7930);
      }

      else
      {
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        result = sub_216B27584(v21, type metadata accessor for ToolbarConfiguration);
        if (EnumCaseMultiPayload == 1)
        {
          return result;
        }
      }

      sub_217008CB4();
      type metadata accessor for TitleHeaderView();
      v24 = v26;
      sub_216B27070(v26);
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v22);
      sub_216A3FFF0();
    }
  }

  return result;
}

uint64_t sub_216B27070@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for HeaderComponentModel();
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9868();
  sub_216919014(&v5[*(v3 + 40)], a1);
  sub_216B27584(v5, type metadata accessor for HeaderComponentModel);
  type metadata accessor for GenericMusicItemToolbarContent(0);
  sub_216CCC124();
  v6 = (a1 + *(type metadata accessor for GenericMusicItemToolbarContentProvider(0) + 20));
  v7 = *(type metadata accessor for ToolbarProperties(0) + 24);
  v8 = *MEMORY[0x277CDDDC0];
  v9 = sub_217009124();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  *v6 = 0u;
  *(v6 + 1) = 0u;
  type metadata accessor for MenuContext(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_216B271C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for CatalogPagePresenter();
  swift_getWitnessTable();
  v4 = sub_217008CF4();
  v6 = v5;
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a2 = a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = 0;
  *(a2 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  return result;
}

uint64_t sub_216B2735C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B27398()
{
  sub_217009D34();
  sub_217009D94();
  v0 = sub_217009E34();

  qword_27CAC2F10 = v0;
  return result;
}

unint64_t sub_216B273E8()
{
  result = qword_27CAC2F30;
  if (!qword_27CAC2F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2F18);
    sub_216B27474();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2F30);
  }

  return result;
}

unint64_t sub_216B27474()
{
  result = qword_27CAC2F38;
  if (!qword_27CAC2F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2F28);
    sub_2166D9530(&qword_27CAC2F40, &qword_27CAC2F48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2F38);
  }

  return result;
}

unint64_t sub_216B2752C()
{
  result = qword_280E4A478;
  if (!qword_280E4A478)
  {
    sub_2170067A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E4A478);
  }

  return result;
}

uint64_t sub_216B27584(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216B275DC()
{
  result = qword_27CAC2F58;
  if (!qword_27CAC2F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7EE0);
    sub_216B27668();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2F58);
  }

  return result;
}

unint64_t sub_216B27668()
{
  result = qword_27CAC2F60;
  if (!qword_27CAC2F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2F68);
    sub_216ADEEA8();
    sub_2166D9530(&qword_280E2A730, &qword_27CAB8688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2F60);
  }

  return result;
}

uint64_t sub_216B27748@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v43 = a3;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v40 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v45 = v14;
  v46 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v42 = v15;
  MEMORY[0x28223BE20](v16);
  v41 = &v37 - v17;
  MEMORY[0x28223BE20](v18);
  v19 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v39 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  sub_21700CE04();
  v24 = a2;
  v47 = v7;
  v25 = *(v7 + 16);
  v26 = v5;
  v25(v12, v24, v5);
  v27 = v44;
  sub_21700D224();
  if (v27)
  {
    (*(v47 + 8))(v24, v5);
    return (*(v45 + 8))(v48, v46);
  }

  else
  {
    v44 = type metadata accessor for SearchAction();
    v29 = v43;
    (*(v39 + 32))(&v43[*(v44 + 20)], v23, v19);
    v30 = v41;
    v31 = v48;
    v38 = v24;
    sub_21700CE04();
    v37 = v26;
    v25(v40, v24, v26);
    sub_216B27BC4();
    sub_21700D734();
    v32 = v29;
    memcpy(v29, __src, 0x48uLL);
    sub_21700CE04();
    sub_216B27C18();
    sub_21700CD14();
    v33 = v46;
    v34 = *(v45 + 8);
    v34(v30, v46);
    v35 = v44;
    v32[*(v44 + 24)] = __src[95];
    v36 = v42;
    sub_21700CE04();
    LOBYTE(v32) = sub_21700CD44();
    (*(v47 + 8))(v38, v37);
    v34(v31, v33);
    result = (v34)(v36, v33);
    v43[*(v35 + 28)] = (v32 == 2) | v32 & 1;
  }

  return result;
}

unint64_t sub_216B27BC4()
{
  result = qword_27CAC2F70;
  if (!qword_27CAC2F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2F70);
  }

  return result;
}

unint64_t sub_216B27C18()
{
  result = qword_27CAC2F78;
  if (!qword_27CAC2F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2F78);
  }

  return result;
}

uint64_t type metadata accessor for ReportAConcern()
{
  result = qword_280E42E30;
  if (!qword_280E42E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216B27CE0()
{
  sub_216B27D64();
  if (v0 <= 0x3F)
  {
    sub_21694CB7C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216B27D64()
{
  if (!qword_280E2B3D8)
  {
    type metadata accessor for ReportAConcernPresenter();
    sub_216B27DC8();
    v0 = sub_2170081D4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2B3D8);
    }
  }
}

unint64_t sub_216B27DC8()
{
  result = qword_280E379A8;
  if (!qword_280E379A8)
  {
    type metadata accessor for ReportAConcernPresenter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E379A8);
  }

  return result;
}

uint64_t sub_216B27E3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v11[1] = a1;
  v11[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2F80);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v3);
  v5 = v11 - v4;
  *v5 = sub_2170093B4();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2F88);
  sub_216B28068(v2, &v5[*(v6 + 44)]);
  v11[8] = sub_216983738(271);
  v11[9] = v7;
  type metadata accessor for ReportAConcernPresenter();
  sub_216B27DC8();
  sub_2170081C4();
  swift_getKeyPath();
  sub_2170086A4();

  v11[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2F90);
  OUTLINED_FUNCTION_1_132();
  sub_2166D9530(v8, &qword_27CAC2F80);
  sub_2167B2E14();
  OUTLINED_FUNCTION_2_107();
  sub_2166D9530(v9, &qword_27CAC2F90);
  sub_21700A9B4();

  return sub_216697664(v5, &qword_27CAC2F80);
}

uint64_t sub_216B28068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB2B0);
  MEMORY[0x28223BE20](v70);
  v77 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v75 = &v53 - v5;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2FA8);
  v55 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v54 = &v53 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB2A8);
  MEMORY[0x28223BE20](v7 - 8);
  v74 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v80 = &v53 - v10;
  v11 = type metadata accessor for ReportAConcern();
  v79 = *(v11 - 8);
  v12 = *(v79 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB2A0);
  v72 = *(v14 - 8);
  v73 = v14;
  MEMORY[0x28223BE20](v14);
  v71 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v82 = &v53 - v17;
  v18 = sub_216983738(269);
  v67 = v19;
  v68 = v18;
  v66 = sub_217009D74();
  KeyPath = swift_getKeyPath();
  v20 = sub_216983738(272);
  v63 = v21;
  v64 = v20;
  v62 = sub_217009D44();
  v61 = swift_getKeyPath();
  v56 = *a1;
  v22 = *(a1 + 16);
  type metadata accessor for ReportAConcernPresenter();
  v23 = sub_216B27DC8();
  sub_2170081B4();
  sub_2169C3FB0();
  v25 = v24;

  v26 = swift_getKeyPath();
  v69 = a1;
  sub_216B29628(a1, v13);
  v27 = *(v79 + 80);
  v28 = (v27 + 16) & ~v27;
  v57 = v28 + v12;
  v58 = v27;
  v29 = swift_allocObject();
  v59 = v28;
  v60 = v13;
  sub_216B2968C(v13, v29 + v28);
  v87 = v25;
  v83 = &v87;
  v84 = v26;
  v85 = sub_216B298B0;
  v86 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2FB0);
  sub_216B29944();
  sub_217009ED4();

  LODWORD(v79) = v22;
  v78 = v23;
  sub_2170081B4();
  LOBYTE(v26) = sub_2169C3F08();

  v30 = 1;
  if (v26)
  {
    v31 = sub_216983738(55);
    v53 = v32;
    sub_2170081C4();
    swift_getKeyPath();
    sub_2170086A4();

    v112 = v31;
    v113 = v53;
    sub_2167B2E14();
    v33 = v54;
    v34 = v80;
    sub_21700B4C4();
    (*(v55 + 32))(v34, v33, v81);
    v30 = 0;
  }

  v35 = v80;
  __swift_storeEnumTagSinglePayload(v80, v30, 1, v81);
  v36 = v60;
  sub_216B29628(v69, v60);
  v37 = swift_allocObject();
  v38 = sub_216B2968C(v36, v37 + v59);
  MEMORY[0x28223BE20](v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2FD0);
  sub_216B29A88();
  v39 = v75;
  sub_21700AF14();
  sub_2170081B4();
  LOBYTE(v36) = sub_2169C4318();

  v40 = swift_getKeyPath();
  v41 = swift_allocObject();
  *(v41 + 16) = v36 & 1;
  v42 = (v39 + *(v70 + 36));
  *v42 = v40;
  v42[1] = sub_2167D2420;
  v42[2] = v41;
  sub_21700B3B4();
  sub_2170083C4();
  v70 = v125;
  v81 = v129;
  v78 = v127;
  v79 = v130;
  v124 = 1;
  v122 = v126;
  v120 = v128;
  v106 = v68;
  v107 = v67;
  v108 = 0;
  v109 = MEMORY[0x277D84F90];
  v110 = KeyPath;
  v111 = v66;
  v100 = v64;
  v101 = v63;
  v102 = 0;
  v103 = MEMORY[0x277D84F90];
  v104 = v61;
  v105 = v62;
  v112 = &v106;
  v113 = &v100;
  v98 = 0;
  v99 = 1;
  v114 = &v98;
  v44 = v71;
  v43 = v72;
  v45 = v82;
  v46 = v73;
  (*(v72 + 16))(v71, v82, v73);
  v115 = v44;
  v47 = v35;
  v48 = v35;
  v49 = v74;
  sub_216681B04(v47, v74, &qword_27CABB2A8);
  v116 = v49;
  v50 = v77;
  sub_216681B04(v39, v77, &qword_27CABB2B0);
  v87 = 0;
  v88 = v124;
  *v89 = *v123;
  *&v89[3] = *&v123[3];
  v90 = v70;
  v91 = v122;
  *v92 = *v121;
  *&v92[3] = *&v121[3];
  v93 = v78;
  v94 = v120;
  *v95 = *v119;
  *&v95[3] = *&v119[3];
  v96 = v81;
  v97 = v79;
  v117 = v50;
  v118 = &v87;
  sub_2168AACD0(&v112, v76);
  sub_216697664(v39, &qword_27CABB2B0);
  sub_216697664(v48, &qword_27CABB2A8);
  v51 = *(v43 + 8);
  v51(v45, v46);
  sub_216697664(v50, &qword_27CABB2B0);
  sub_216697664(v49, &qword_27CABB2A8);
  v51(v44, v46);
  sub_2167C4DF0(v100, v101, v102, v103);

  sub_2167C4DF0(v106, v107, v108, v109);
}

uint64_t sub_216B289E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2169C389C(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_216B28A1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportAConcern();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  sub_216B29628(a2, &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_216B2968C(&v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11);
  v13 = v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v13 = v7;
  *(v13 + 8) = v8;
  *(v13 + 16) = v9;
  *(v13 + 24) = v10;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = a2;
  sub_216B29C10(v7, v8, v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2FF8);
  sub_2166D9530(&qword_27CAC3000, &qword_27CAC2FF8);
  return sub_21700AF14();
}

uint64_t sub_216B28BEC(uint64_t a1, void *a2)
{
  type metadata accessor for ReportAConcernPresenter();
  sub_216B27DC8();
  sub_2170081B4();
  sub_2169C4358(a2);
}

__n128 sub_216B28C90@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_2170091A4();
  v21 = 1;
  sub_216B28D44(a1, a2, a3, a4 & 1, v17);
  v11 = v18;
  v12 = v19;
  v13 = v20;
  result = v17[0];
  v15 = v17[1];
  v16 = v21;
  *a5 = v10;
  *(a5 + 8) = 0;
  *(a5 + 16) = v16;
  *(a5 + 24) = result;
  *(a5 + 40) = v15;
  *(a5 + 56) = v11;
  *(a5 + 64) = v12;
  *(a5 + 72) = v13;
  return result;
}

uint64_t sub_216B28D44@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_2169C38A8(a1, a2, a3, a4 & 1);
  v12 = v11;
  v13 = sub_2169C389C(a1, a2, a3, a4 & 1);
  v15 = v14;
  type metadata accessor for ReportAConcernPresenter();
  sub_216B27DC8();
  sub_2170081B4();
  v16 = sub_2169C3BFC();
  v18 = v17;

  if (v18)
  {
    if (v13 == v16 && v18 == v15)
    {
    }

    else
    {
      v20 = sub_21700F7D4();

      if ((v20 & 1) == 0)
      {
        v18 = 0;
        goto LABEL_11;
      }
    }

    v18 = sub_21700ADB4();
  }

  else
  {
  }

LABEL_11:
  v21 = MEMORY[0x277D84F90];
  sub_2167770D0(v10, v12, 0, MEMORY[0x277D84F90]);
  *a5 = v10;
  *(a5 + 8) = v12;
  *(a5 + 16) = 0;
  *(a5 + 24) = v21;
  *(a5 + 32) = 0;
  *(a5 + 40) = 1;
  *(a5 + 48) = v18;

  return sub_2167C4DF0(v10, v12, 0, v21);
}

uint64_t sub_216B28EF4()
{
  type metadata accessor for ReportAConcernPresenter();
  sub_216B27DC8();
  sub_2170081B4();
  sub_2169C4430();
}

uint64_t sub_216B28F64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2FE0);
  MEMORY[0x28223BE20](v0);
  v2 = (&v11 - v1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7BD0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  type metadata accessor for ReportAConcernPresenter();
  sub_216B27DC8();
  sub_2170081B4();
  v7 = sub_2169C3CE4();

  if (v7)
  {
    sub_217008294();
    (*(v4 + 16))(v2, v6, v3);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668);
    sub_2166D9530(&qword_27CAB7BC8, &qword_27CAB7BD0);
    sub_2167C4D74();
    sub_217009554();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    *v2 = sub_216983738(339);
    v2[1] = v9;
    v10 = MEMORY[0x277D84F90];
    v2[2] = 0;
    v2[3] = v10;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668);
    sub_2166D9530(&qword_27CAB7BC8, &qword_27CAB7BD0);
    sub_2167C4D74();
    return sub_217009554();
  }
}

uint64_t sub_216B2921C(uint64_t a1)
{
  v2 = type metadata accessor for ReportAConcern();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_216B29628(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_216B2968C(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668);
  sub_2167C4D74();
  return sub_21700AF14();
}

uint64_t sub_216B2935C(uint64_t a1)
{
  v16 = sub_2170090F4();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_217008424();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ReportAConcern();
  sub_216681B04(a1 + *(v12 + 20), v7, &qword_27CAB80B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_21700ED94();
    v13 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_217008414();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_216B295E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216983738(181);
  *a1 = result;
  a1[1] = v3;
  v4 = MEMORY[0x277D84F90];
  a1[2] = 0;
  a1[3] = v4;
  return result;
}

uint64_t sub_216B29628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportAConcern();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B2968C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportAConcern();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B29708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_21700DF14();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2FE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2FC8);
  sub_2166D9530(&qword_27CAC2FF0, &qword_27CAC2FE8);
  sub_2166D9530(&qword_27CAC2FC0, &qword_27CAC2FC8);
  return sub_21700B154();
}

uint64_t sub_216B2986C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(void *))
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  v7 = a4 & 1;
  return a5(v6);
}

uint64_t sub_216B298B0(uint64_t a1)
{
  v3 = *(type metadata accessor for ReportAConcern() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_216B28A1C(a1, v4);
}

unint64_t sub_216B29944()
{
  result = qword_27CAC2FB8;
  if (!qword_27CAC2FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2FB0);
    sub_2166D9530(&qword_27CAC2FC0, &qword_27CAC2FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2FB8);
  }

  return result;
}

uint64_t sub_216B29A0C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ReportAConcern() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_216B29A88()
{
  result = qword_27CAC2FD8;
  if (!qword_27CAC2FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2FD0);
    sub_2166D9530(&qword_27CAB7BC8, &qword_27CAB7BD0);
    sub_2167C4D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2FD8);
  }

  return result;
}

uint64_t sub_216B29B64()
{
  v1 = *(type metadata accessor for ReportAConcern() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_216B28BEC(v0 + v2, v3);
}

id sub_216B29C10(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;

    return sub_21700DF14();
  }

  else
  {

    return a1;
  }
}

uint64_t sub_216B29C5C()
{
  type metadata accessor for ReportableMusicItem();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_66();
  sub_216B2AAA8(v0, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_0_157();
  sub_216B2AB74(v1, v4);
  if (EnumCaseMultiPayload > 5)
  {
    return 0;
  }

  else
  {
    return qword_217046980[EnumCaseMultiPayload];
  }
}

uint64_t sub_216B29D34()
{
  v1 = v0;
  v34 = type metadata accessor for SocialProfileDescriptor(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  v5 = v4 - v3;
  sub_217006E94();
  OUTLINED_FUNCTION_1();
  v32 = v7;
  v33 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v11 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v31 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v16 = v15 - v14;
  v17 = sub_21700C084();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7();
  v23 = v22 - v21;
  v24 = type metadata accessor for ReportableMusicItem();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7();
  v28 = v27 - v26;
  sub_216B2AAA8(v1, v27 - v26);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v32 + 32))(v10, v28, v33);
      v24 = v10;
      sub_217006E64();
      OUTLINED_FUNCTION_8_70();
      (*(v32 + 8))(v10, v33);
      break;
    case 2u:
    case 3u:
      (*(v19 + 32))(v23, v28, v17);
      v24 = v23;
      sub_21700BFF4();
      OUTLINED_FUNCTION_8_70();
      (*(v19 + 8))(v23, v17);
      break;
    case 4u:
      sub_216B15D78(v28, v5);
      v24 = *(v5 + *(v34 + 20));
      sub_21700DF14();
      OUTLINED_FUNCTION_3_105();
      sub_216B2AB74(v5, v29);
      break;
    case 5u:
      sub_21700DF14();
      sub_21700BA64();
      OUTLINED_FUNCTION_8_70();

      break;
    default:
      (*(v31 + 32))(v16, v28, v11);
      v24 = v16;
      sub_21700C7C4();
      OUTLINED_FUNCTION_8_70();
      (*(v31 + 8))(v16, v11);
      break;
  }

  return v24;
}

uint64_t sub_216B2A098()
{
  type metadata accessor for ReportableMusicItem();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  v4 = (v3 - v2);
  sub_216B2AAA8(v0, v3 - v2);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013DA0;
    *(inited + 32) = 1836216166;
    *(inited + 40) = 0xE400000000000000;
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_217013D90;
    *(v9 + 32) = 0x6554686372616573;
    *(v9 + 40) = 0xEA00000000006D72;
    v10 = MEMORY[0x277D837D0];
    *(v9 + 48) = v5;
    *(v9 + 56) = v6;
    *(v9 + 72) = v10;
    strcpy((v9 + 80), "queryContext");
    *(v9 + 93) = 0;
    *(v9 + 94) = -5120;
    *(v9 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3020);
    *(v9 + 96) = v7;
    v11 = sub_21700E384();
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *(inited + 48) = v11;
    return sub_21700E384();
  }

  else
  {
    sub_216B2AB74(v4, type metadata accessor for ReportableMusicItem);
    return 0;
  }
}

uint64_t sub_216B2A278()
{
  type metadata accessor for ReportableMusicItem();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_66();
  sub_216B2AAA8(v0, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_0_157();
  sub_216B2AB74(v1, v4);
  result = 0x7473696C79616C70;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      result = 0x7241746964657263;
      break;
    case 2:
      v6 = 0x746964657263;
      goto LABEL_6;
    case 3:
      v6 = 0x73636972796CLL;
LABEL_6:
      result = v6 & 0xFFFFFFFFFFFFLL | 0x6F53000000000000;
      break;
    case 4:
      result = 0x72506C6169636F73;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static ReportableMusicItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v85 = a1;
  v86 = a2;
  v3 = type metadata accessor for SocialProfileDescriptor(0);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_7();
  v78 = v5 - v4;
  sub_21700C084();
  OUTLINED_FUNCTION_1();
  v83 = v7;
  v84 = v6;
  v8 = MEMORY[0x28223BE20](v6);
  v77 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v76 = &v75 - v10;
  sub_217006E94();
  OUTLINED_FUNCTION_1();
  v81 = v12;
  v82 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v75 = (v14 - v13);
  sub_21700C924();
  OUTLINED_FUNCTION_1();
  v79 = v16;
  v80 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_66();
  type metadata accessor for ReportableMusicItem();
  OUTLINED_FUNCTION_34();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = (&v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v75 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v75 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v75 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v75 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v75 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3008);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v38 = &v75 - v37;
  v39 = (&v75 + *(v36 + 56) - v37);
  sub_216B2AAA8(v85, &v75 - v37);
  sub_216B2AAA8(v86, v39);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_216B2AAA8(v38, v32);
      if (OUTLINED_FUNCTION_6_74() == 1)
      {
        v55 = v81;
        v54 = v82;
        v56 = v75;
        (*(v81 + 32))(v75, v39, v82);
        v41 = sub_217006E54();
        v57 = *(v55 + 8);
        v57(v56, v54);
        v57(v32, v54);
        goto LABEL_30;
      }

      v66 = v82;
      v64 = *(v81 + 8);
      v65 = v32;
      goto LABEL_25;
    case 2u:
      sub_216B2AAA8(v38, v29);
      if (OUTLINED_FUNCTION_6_74() == 2)
      {
        v43 = v83;
        v42 = v84;
        OUTLINED_FUNCTION_7_74();
        v44 = v76;
        v45(v76, v39, v42);
        v41 = sub_21700BFE4();
        v46 = *(v43 + 8);
        v46(v44, v42);
        v47 = v29;
        v48 = v42;
        goto LABEL_10;
      }

      v64 = *(v83 + 8);
      v65 = v29;
      goto LABEL_23;
    case 3u:
      sub_216B2AAA8(v38, v26);
      if (OUTLINED_FUNCTION_6_74() == 3)
      {
        v49 = v83;
        OUTLINED_FUNCTION_7_74();
        v50 = v77;
        v51 = v39;
        v52 = v84;
        v53(v77, v51, v84);
        v41 = sub_21700BFE4();
        v46 = *(v49 + 8);
        v46(v50, v52);
        v47 = v26;
        v48 = v52;
LABEL_10:
        v46(v47, v48);
        goto LABEL_30;
      }

      v64 = *(v83 + 8);
      v65 = v26;
LABEL_23:
      v66 = v84;
LABEL_25:
      v64(v65, v66);
      goto LABEL_26;
    case 4u:
      sub_216B2AAA8(v38, v23);
      if (OUTLINED_FUNCTION_6_74() == 4)
      {
        v40 = v78;
        sub_216B15D78(v39, v78);
        v41 = static SocialProfileDescriptor.== infix(_:_:)(v23, v40);
        sub_216B2AB74(v40, type metadata accessor for SocialProfileDescriptor);
        sub_216B2AB74(v23, type metadata accessor for SocialProfileDescriptor);
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_3_105();
      sub_216B2AB74(v23, v63);
      goto LABEL_26;
    case 5u:
      sub_216B2AAA8(v38, v20);
      v59 = *v20;
      v58 = v20[1];
      if (OUTLINED_FUNCTION_6_74() != 5)
      {

        goto LABEL_26;
      }

      if (v59 == *v39 && v58 == v39[1])
      {
      }

      else
      {
        v61 = sub_21700F7D4();

        if ((v61 & 1) == 0)
        {
          OUTLINED_FUNCTION_0_157();
          sub_216B2AB74(v38, v62);
          goto LABEL_27;
        }
      }

      OUTLINED_FUNCTION_0_157();
      sub_216B2AB74(v38, v74);
      v41 = 1;
      break;
    default:
      sub_216B2AAA8(v38, v34);
      if (OUTLINED_FUNCTION_6_74())
      {
        (*(v79 + 8))(v34, v80);
LABEL_26:
        sub_216B2AB0C(v38);
LABEL_27:
        v41 = 0;
      }

      else
      {
        v67 = v79;
        OUTLINED_FUNCTION_7_74();
        v68 = v39;
        v69 = v80;
        v70(v2, v68, v80);
        v41 = sub_21700C7B4();
        v71 = *(v67 + 8);
        v71(v2, v69);
        v71(v34, v69);
LABEL_30:
        OUTLINED_FUNCTION_0_157();
        sub_216B2AB74(v38, v72);
      }

      break;
  }

  return v41 & 1;
}

uint64_t sub_216B2AAA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportableMusicItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B2AB0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3008);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216B2AB74(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t ReportableMusicItem.hash(into:)()
{
  v1 = type metadata accessor for SocialProfileDescriptor(0);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_7();
  v4 = v3 - v2;
  v5 = sub_21700C084();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_66();
  v7 = sub_217006E94();
  OUTLINED_FUNCTION_1();
  v32 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  v13 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  v19 = v18 - v17;
  type metadata accessor for ReportableMusicItem();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7();
  v23 = v22 - v21;
  sub_216B2AAA8(v33, v22 - v21);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v32 + 32))(v12, v23, v7);
      MEMORY[0x21CEA0720](1);
      sub_216B2B0E0(&qword_27CAC3010, MEMORY[0x277D2A958]);
      sub_21700E434();
      result = (*(v32 + 8))(v12, v7);
      break;
    case 2u:
      v27 = OUTLINED_FUNCTION_5_79();
      v28(v27);
      v29 = 2;
      goto LABEL_6;
    case 3u:
      v30 = OUTLINED_FUNCTION_5_79();
      v31(v30);
      v29 = 3;
LABEL_6:
      MEMORY[0x21CEA0720](v29);
      sub_216B2B0E0(&qword_27CABC530, MEMORY[0x277CD8238]);
      sub_21700E434();
      result = (*(v4 + 8))(v0, v5);
      break;
    case 4u:
      sub_216B15D78(v23, v4);
      MEMORY[0x21CEA0720](4);
      SocialProfileDescriptor.hash(into:)();
      OUTLINED_FUNCTION_3_105();
      result = sub_216B2AB74(v4, v26);
      break;
    case 5u:
      MEMORY[0x21CEA0720](5);
      sub_21700E614();

      break;
    default:
      OUTLINED_FUNCTION_7_74();
      v24(v19, v23, v13);
      MEMORY[0x21CEA0720](0);
      sub_216B2B0E0(&unk_27CACA4B0, MEMORY[0x277CD8608]);
      sub_21700E434();
      result = (*(v15 + 8))(v19, v13);
      break;
  }

  return result;
}

uint64_t ReportableMusicItem.hashValue.getter()
{
  sub_21700F8F4();
  ReportableMusicItem.hash(into:)();
  return sub_21700F944();
}

uint64_t sub_216B2B05C()
{
  sub_21700F8F4();
  ReportableMusicItem.hash(into:)();
  return sub_21700F944();
}

uint64_t sub_216B2B0E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216B2B128@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = type metadata accessor for MappedSection.Content(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MappedSection(0);
  sub_2169728B8(v2 + *(v8 + 28), v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!(!_ZF & _CF))
  {
    switch(EnumCaseMultiPayload)
    {
      case '4':
        v14 = OUTLINED_FUNCTION_0_158();
        sub_216C71128(v14, v15);
        goto LABEL_23;
      case '5':

        v18 = 0;
        v27 = 34.0;
        if (a2 <= 726.0)
        {
          v27 = 20.0;
        }

        if (a2 <= 374.0)
        {
          v27 = 16.0;
        }

        v19 = 0uLL;
        *&v23 = 0;
        *(&v23 + 1) = v27;
        __asm { FMOV            V4.2D, #18.0 }

        *(&_Q4 + 1) = v27;
        v17 = 0x3FF0000000000000;
        LOBYTE(v20) = 64;
        v21 = 0uLL;
        v22 = 0uLL;
        goto LABEL_31;
      case '6':
      case '7':
      case '8':
      case ':':
      case ';':
      case '<':
        goto LABEL_15;
      case '9':
        OUTLINED_FUNCTION_0_158();
        sub_216C713BC(v25, v26);
        goto LABEL_23;
      case '=':
        v30 = OUTLINED_FUNCTION_0_158();
        sub_216C71520(v30, v31);
        goto LABEL_23;
      default:
        JUMPOUT(0);
    }
  }

  switch(EnumCaseMultiPayload)
  {
    case 31:
      sub_216B2B790(v7);
      v38 = HIBYTE(*(v2 + *(v8 + 32)));
      if (v38 <= 0xFE)
      {
        if (!v38)
        {
          v41 = *(v2 + *(v8 + 32));
          goto LABEL_33;
        }

        if (v38 == 1)
        {
          OUTLINED_FUNCTION_1_133();
          *(&v57 + 1) = &unk_28291FA68;
          v58 = &off_28291DBE0;
          v39 = swift_allocObject();
          OUTLINED_FUNCTION_3_106(v39);
          *(v2 + 80) = &unk_28291FB08;
          *(v2 + 88) = &off_28291F9F0;
          *(v2 + 56) = 0;
          *(v2 + 64) = 0;
          *(v2 + 72) = 64;
LABEL_34:
          sub_216A906C4(v48);
          *(v2 + 96) = 0;
          *(v2 + 104) = 0;
          *(v2 + 112) = 0;
          *(v2 + 120) = 0x4032000000000000;
          __swift_project_boxed_opaque_existential_1(&v56, &unk_28291FA68);
          v34 = OUTLINED_FUNCTION_2_108();
          v36 = &unk_28291FA68;
          v37 = &off_28291DBE0;
          goto LABEL_24;
        }
      }

      v41 = 1;
LABEL_33:
      OUTLINED_FUNCTION_1_133();
      *(&v57 + 1) = &unk_28291FA68;
      v58 = &off_28291DBE0;
      v42 = swift_allocObject();
      OUTLINED_FUNCTION_3_106(v42);
      *(v2 + 80) = &unk_28291FB08;
      *(v2 + 88) = &off_28291F9F0;
      *(v2 + 56) = v41;
      *(v2 + 64) = 0;
      *(v2 + 72) = 0;
      goto LABEL_34;
    case 11:
      sub_216B2B790(v7);
      v58 = 0;
      v56 = 0u;
      v57 = 0u;
      sub_21698F234(&v56, v48);
      *(&v51 + 1) = &unk_28291FB08;
      *&v52 = &off_28291F9F0;
      v50 = 0uLL;
      v40 = 0x80;
LABEL_29:
      LOBYTE(v51) = v40;
      sub_216A906C4(&v56);
      *(&v52 + 1) = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0x4032000000000000;
      sub_21694930C(&v56, a2);
      v47 = v56;
      v46 = v57;
      v45 = v59;
      v44 = v60;
      v43 = v61;
      v20 = v58;
      v17 = v62;
      result = sub_216B2B7EC(v48);
      goto LABEL_30;
    case 18:
      sub_216B2B790(v7);
      *(&v57 + 1) = &_s14LinkViewLayoutVN;
      v58 = &off_282932C90;
      sub_21698F234(&v56, v48);
      *(&v51 + 1) = &unk_28291FB08;
      *&v52 = &off_28291F9F0;
      v50 = 0uLL;
      v40 = 64;
      goto LABEL_29;
    case 26:
      OUTLINED_FUNCTION_0_158();
      sub_216C70EDC();
LABEL_23:

      v32 = *(&v57 + 1);
      v33 = v58;
      __swift_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
      v34 = OUTLINED_FUNCTION_2_108();
      v36 = v32;
      v37 = v33;
LABEL_24:
      v35(v34, v36, v37);
      v47 = v48[0];
      v46 = v48[1];
      v20 = v49;
      v45 = v50;
      v44 = v51;
      v43 = v52;
      v17 = v53;
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v56);
LABEL_30:
      _Q4 = v43;
      v22 = v45;
      v23 = v44;
      v21 = v46;
      v19 = v47;
      v18 = v20 & 0xFFFFFFFFFFFFFF00;
      goto LABEL_31;
    case 7:
      v12 = OUTLINED_FUNCTION_0_158();
      sub_216C70C50(v12, v13);
      goto LABEL_23;
  }

LABEL_15:
  result = sub_216B2B790(v7);
  v17 = 0;
  v18 = 0;
  v19 = 0uLL;
  LOBYTE(v20) = 126;
  v21 = 0uLL;
  v22 = 0uLL;
  v23 = 0uLL;
  _Q4 = 0uLL;
LABEL_31:
  *a1 = v19;
  *(a1 + 16) = v21;
  *(a1 + 32) = v18 | v20;
  *(a1 + 40) = v22;
  *(a1 + 56) = v23;
  *(a1 + 72) = _Q4;
  *(a1 + 88) = v17;
  return result;
}

double sub_216B2B5F4(double a1)
{
  v3 = type metadata accessor for MappedSection.Content(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MappedSection(0);
  sub_2169728B8(v1 + *(v6 + 28), v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_216B2B790(v5);
  if (!(!v9 & v8))
  {
    switch(EnumCaseMultiPayload)
    {
      case '4':
        return a1;
      case '5':
        return a1 * 2.44444444;
      case '6':
      case '7':
      case '8':
      case ':':
      case ';':
      case '<':
        return 0.0;
      case '9':
        v11 = [objc_opt_self() defaultMetrics];
        [v11 scaledValueForValue_];
        v13 = v12;

        return fmin(v13, 68.0);
      case '=':
        v10 = 1.77777778;
        return a1 / v10;
      default:
        JUMPOUT(0);
    }
  }

  if (EnumCaseMultiPayload != 7)
  {
    switch(EnumCaseMultiPayload)
    {
      case 31:
        return 102.0;
      case 18:
        return 40.0;
      case 26:
        break;
      case 11:
        v10 = 1.5;
        return a1 / v10;
      default:
        return 0.0;
    }
  }

  return a1;
}

uint64_t sub_216B2B790(uint64_t a1)
{
  v2 = type metadata accessor for MappedSection.Content(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216B2B840(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  *(v1 + 16) = a1;
  type metadata accessor for ObjectGraph();

  sub_21700E094();

  (*(v5 + 32))(v1 + OBJC_IVAR____TtC7MusicUI33ClassicalArtistMenuActionProvider_actionDispatcher, v8, v3);
  return v1;
}

uint64_t sub_216B2B948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_216B2BA5C(a1, a2, a3, &v13 - v7);
  v9 = sub_21678C1C4();
  sub_2166997CC(v8, &qword_27CAB6DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = v9;
  v11 = sub_2167A2998(inited);
  swift_setDeallocating();
  sub_2169FAC94();
  return v11;
}

uint64_t sub_216B2BA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a3;
  v99 = a2;
  v104 = a4;
  v102 = sub_2170075A4();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v98 = v6;
  v100 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for OpenInClassicalExperienceAction();
  v95 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v97 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v7;
  MEMORY[0x28223BE20](v8);
  v94 = &v72 - v9;
  v92 = sub_21700CFB4();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_217005EF4();
  v76 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v75 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_21700D704();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v85 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v79 = &v72 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v15 - 8);
  v78 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v105 = &v72 - v18;
  v87 = sub_21700D284();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v84 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7F8);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v72 - v21;
  v23 = sub_21700DFD4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v4;
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  type metadata accessor for ClassicalArtistPresenter();
  v27 = sub_21700C384();
  v28 = *(v27 - 8);
  v81 = *(v28 + 16);
  v80 = v28 + 16;
  v81(v22, a1, v27);
  v82 = v27;
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v27);
  LOBYTE(v27) = sub_216B4ED40(v22);
  sub_2166997CC(v22, &qword_27CABB7F8);
  if (v27)
  {
    v73 = v24;
    v74 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v30 = (v77 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v31 = v30[1];
    v32 = MEMORY[0x277D837D0];
    *(inited + 48) = *v30;
    *(inited + 56) = v31;
    *(inited + 72) = v32;
    *(inited + 80) = 1684957547;
    *(inited + 120) = v32;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = 0x747369747261;
    *(inited + 104) = 0xE600000000000000;
    sub_21700DF14();
    v33 = sub_21700E384();
    v34 = v105;
    v35 = a1;
    sub_216B4EF80(v105);
    v36 = v79;
    sub_21700D6F4();
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v108 = v33;
    sub_2166EF9C4(&v108, &v107);
    v37 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v106 = v37;
    sub_2166EF9D4();
    v38 = v106;
    v109 = v32;
    *&v108 = 0x657461676976616ELL;
    *(&v108 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v108, &v107);
    swift_isUniquelyReferenced_nonNull_native();
    v106 = v38;
    sub_2166EF9D4();
    v39 = v106;
    v109 = v32;
    *&v108 = 0xD000000000000010;
    *(&v108 + 1) = 0x80000002170801D0;
    sub_2166EF9C4(&v108, &v107);
    swift_isUniquelyReferenced_nonNull_native();
    v106 = v39;
    sub_2166EF9D4();
    v40 = v106;
    v41 = v78;
    sub_2167DE934(v34, v78);
    v42 = v83;
    if (__swift_getEnumTagSinglePayload(v41, 1, v83) == 1)
    {
      sub_2166997CC(v41, &qword_27CABA820);
    }

    else
    {
      v45 = v76;
      v46 = v75;
      (*(v76 + 32))(v75, v41, v42);
      v47 = sub_217005DE4();
      v109 = v32;
      *&v108 = v47;
      *(&v108 + 1) = v48;
      sub_2166EF9C4(&v108, &v107);
      swift_isUniquelyReferenced_nonNull_native();
      v106 = v40;
      sub_2166EF9D4();
      v40 = v106;
      (*(v45 + 8))(v46, v42);
    }

    v49 = v36;
    v83 = v35;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v50 = sub_21700CF84();
    v51 = __swift_project_value_buffer(v50, qword_280E73DB0);
    v52 = v90;
    MEMORY[0x21CE9DD70](0xD000000000000014, 0x80000002170890D0, 0x6E6F74747562, 0xE600000000000000, v40, v51);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v53 = v91;
    v54 = (*(v91 + 80) + 32) & ~*(v91 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_217013DA0;
    v56 = v55 + v54;
    v57 = v92;
    (*(v53 + 16))(v56, v52, v92);
    v58 = v88;
    v59 = v89;
    (*(v88 + 16))(v85, v49, v89);
    v60 = v84;
    sub_21700D244();
    (*(v53 + 8))(v52, v57);
    (*(v58 + 8))(v49, v59);
    sub_2166997CC(v105, &qword_27CABA820);
    (*(v73 + 8))(v26, v74);
    v61 = v94;
    v81(&v94[*(v93 + 20)], v83, v82);
    (*(v86 + 32))(v61, v60, v87);
    type metadata accessor for MenuActionType();
    v62 = v104;
    swift_storeEnumTagMultiPayload();
    v63 = v97;
    sub_216B2C928(v61, v97);
    v64 = v101;
    v65 = v100;
    v66 = v102;
    (*(v101 + 16))(v100, v99, v102);
    v67 = (*(v95 + 80) + 24) & ~*(v95 + 80);
    v68 = (v96 + *(v64 + 80) + v67) & ~*(v64 + 80);
    v69 = swift_allocObject();
    *(v69 + 16) = v103;
    sub_216B2C928(v63, v69 + v67);
    (*(v64 + 32))(v69 + v68, v65, v66);
    v70 = type metadata accessor for MenuAction();
    v71 = (v62 + *(v70 + 20));
    *v71 = sub_216B2C98C;
    v71[1] = v69;
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v70);
  }

  else
  {
    (*(v24 + 8))(v26, v23);
    v43 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v104, 1, 1, v43);
  }
}

uint64_t sub_216B2C760(uint64_t a1, uint64_t a2)
{
  v5[3] = type metadata accessor for OpenInClassicalExperienceAction();
  v5[4] = sub_216B2CA5C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  sub_216B2CAB4(a2, boxed_opaque_existential_1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_216B2C80C()
{

  v1 = OBJC_IVAR____TtC7MusicUI33ClassicalArtistMenuActionProvider_actionDispatcher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for ClassicalArtistMenuActionProvider()
{
  result = qword_280E2F410;
  if (!qword_280E2F410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216B2C928(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenInClassicalExperienceAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B2C98C()
{
  v1 = *(type metadata accessor for OpenInClassicalExperienceAction() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  sub_2170075A4();
  v3 = *(v0 + 16);

  return sub_216B2C760(v3, v0 + v2);
}

unint64_t sub_216B2CA5C()
{
  result = qword_27CAC3028;
  if (!qword_27CAC3028)
  {
    type metadata accessor for OpenInClassicalExperienceAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3028);
  }

  return result;
}

uint64_t sub_216B2CAB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenInClassicalExperienceAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B2CB54()
{
  v1 = *(*v0 + 128);
  v2 = sub_21700F164();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 136);
  v4 = sub_21700F164();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_weakDestroy();
  swift_weakDestroy();
  return v0;
}

uint64_t sub_216B2CC78()
{
  v0 = sub_216B2CB54();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_216B2CCCC()
{
  v1 = v0;
  if (*(v0 + qword_280E2BCA0))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_21700EF44();
    swift_unknownObjectRelease();
  }

  v2 = qword_280E2BC10;
  sub_217007CA4();
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(v1 + v2);

  swift_unknownObjectRelease();
  v4 = qword_280E2BCA8;
  sub_21700EF04();
  OUTLINED_FUNCTION_9_0();
  (*(v5 + 8))(v1 + v4);
  return v1;
}

uint64_t sub_216B2CDC4()
{
  sub_216B2CCCC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_216B2CE64()
{
  type metadata accessor for EmptyStateLockup();
  if (v0 <= 0x3F)
  {
    sub_2166DB764(319, &qword_280E2B460, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_216B2CF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v36 = a1;
  v37 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v4 - 8);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v35 = &v32 - v7;
  MEMORY[0x28223BE20](v8);
  v33 = &v32 - v9;
  v10 = sub_2170080D4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA338);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v32 - v15;
  v17 = type metadata accessor for ColorSchemeArtwork();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for BubbleLockup();
  sub_216683A80(v2 + *(v21 + 52), v16, &qword_27CABA338);
  OUTLINED_FUNCTION_1_87(v16);
  if (v22)
  {
    sub_216697664(v16, &qword_27CABA338);
    return sub_216683A80(v2 + *(v21 + 60), v37, &qword_27CAB6D60);
  }

  v24 = v2;
  v25 = v37;
  sub_216B32258(v16, v20, type metadata accessor for ColorSchemeArtwork);
  (*(v11 + 16))(v13, v36, v10);
  v26 = (*(v11 + 88))(v13, v10);
  if (v26 == *MEMORY[0x277CDF3D0])
  {
    v27 = v20;
    v28 = v35;
    goto LABEL_8;
  }

  if (v26 == *MEMORY[0x277CDF3C0])
  {
    v27 = &v20[*(v17 + 20)];
    v28 = v33;
LABEL_8:
    sub_216683A80(v27, v28, &qword_27CAB6D60);
    OUTLINED_FUNCTION_3_107();
    type metadata accessor for Artwork();
    OUTLINED_FUNCTION_1_87(v28);
    if (v22)
    {
      sub_216683A80(v3 + *(v21 + 60), v25, &qword_27CAB6D60);
      result = OUTLINED_FUNCTION_1_87(v28);
      if (!v22)
      {
        return sub_216697664(v28, &qword_27CAB6D60);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_134();
      sub_216B32258(v28, v25, v29);
      return OUTLINED_FUNCTION_9_69();
    }

    return result;
  }

  v30 = v34;
  sub_216683A80(v20, v34, &qword_27CAB6D60);
  OUTLINED_FUNCTION_3_107();
  type metadata accessor for Artwork();
  OUTLINED_FUNCTION_1_87(v30);
  if (v22)
  {
    sub_216683A80(v24 + *(v21 + 60), v25, &qword_27CAB6D60);
    OUTLINED_FUNCTION_1_87(v30);
    if (!v22)
    {
      sub_216697664(v30, &qword_27CAB6D60);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_134();
    sub_216B32258(v30, v25, v31);
    OUTLINED_FUNCTION_9_69();
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_216B2D390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a1;
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v4 - 8);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = &v30 - v7;
  MEMORY[0x28223BE20](v8);
  v31 = &v30 - v9;
  v10 = sub_2170080D4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA338);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v30 - v15;
  v17 = type metadata accessor for ColorSchemeArtwork();
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for EmptyStateLockup();
  sub_216683A80(v2 + *(v20 + 44), v16, &qword_27CABA338);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_216697664(v16, &qword_27CABA338);
    return sub_216683A80(v2 + *(v20 + 40), v35, &qword_27CAB6D60);
  }

  v22 = v2;
  v23 = v35;
  sub_216B32258(v16, v19, type metadata accessor for ColorSchemeArtwork);
  (*(v11 + 16))(v13, v34, v10);
  v24 = (*(v11 + 88))(v13, v10);
  if (v24 == *MEMORY[0x277CDF3D0])
  {
    v25 = v19;
    v26 = v33;
    goto LABEL_7;
  }

  if (v24 == *MEMORY[0x277CDF3C0])
  {
    v25 = &v19[*(v17 + 20)];
    v26 = v31;
LABEL_7:
    sub_216683A80(v25, v26, &qword_27CAB6D60);
    sub_216B32200(v19, type metadata accessor for ColorSchemeArtwork);
    v27 = type metadata accessor for Artwork();
    if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
    {
      sub_216683A80(v3 + *(v20 + 40), v23, &qword_27CAB6D60);
      result = __swift_getEnumTagSinglePayload(v26, 1, v27);
      if (result != 1)
      {
        return sub_216697664(v26, &qword_27CAB6D60);
      }
    }

    else
    {
      sub_216B32258(v26, v23, type metadata accessor for Artwork);
      return __swift_storeEnumTagSinglePayload(v23, 0, 1, v27);
    }

    return result;
  }

  v28 = v32;
  sub_216683A80(v19, v32, &qword_27CAB6D60);
  sub_216B32200(v19, type metadata accessor for ColorSchemeArtwork);
  v29 = type metadata accessor for Artwork();
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    sub_216683A80(v22 + *(v20 + 40), v23, &qword_27CAB6D60);
    if (__swift_getEnumTagSinglePayload(v28, 1, v29) != 1)
    {
      sub_216697664(v28, &qword_27CAB6D60);
    }
  }

  else
  {
    sub_216B32258(v28, v23, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v29);
  }

  return (*(v11 + 8))(v13, v10);
}

void *sub_216B2D8A0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3030);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &__src[-v4];
  *v5 = sub_2170093B4();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3038);
  sub_216B2D9E8(v1, &v5[*(v6 + 44)]);
  sub_21700B3B4();
  sub_217008BB4();
  sub_2167C5834(v5, a1, &qword_27CAC3030);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3040);
  return memcpy((a1 + *(v7 + 36)), __src, 0x70uLL);
}

uint64_t sub_216B2D9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v144 = a2;
  v145 = a1;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3048);
  v117 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v116 = &v105 - v2;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3050);
  MEMORY[0x28223BE20](v128);
  v130 = &v105 - v3;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3058);
  MEMORY[0x28223BE20](v143);
  v131 = &v105 - v4;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3060);
  MEMORY[0x28223BE20](v127);
  v113 = (&v105 - v5);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3068);
  v115 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v114 = &v105 - v6;
  v125 = type metadata accessor for EmptyStateLockupInlineBackgroundView(0);
  MEMORY[0x28223BE20](v125);
  v8 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3070);
  MEMORY[0x28223BE20](v122);
  v124 = &v105 - v9;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3078);
  MEMORY[0x28223BE20](v137);
  v126 = &v105 - v10;
  v111 = sub_2170080D4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v12 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for EmptyStateLockupArtworkView(0);
  MEMORY[0x28223BE20](v123);
  v112 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB75D0);
  MEMORY[0x28223BE20](v107);
  v15 = &v105 - v14;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3080);
  MEMORY[0x28223BE20](v106);
  v17 = (&v105 - v16);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3088);
  MEMORY[0x28223BE20](v120);
  v19 = &v105 - v18;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3090);
  v109 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v108 = &v105 - v20;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3098);
  MEMORY[0x28223BE20](v139);
  v140 = &v105 - v21;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC30A0);
  MEMORY[0x28223BE20](v133);
  v135 = &v105 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC30A8);
  MEMORY[0x28223BE20](v23);
  v25 = &v105 - v24;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC30B0);
  MEMORY[0x28223BE20](v134);
  v119 = &v105 - v26;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC30B8);
  MEMORY[0x28223BE20](v138);
  v136 = &v105 - v27;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA540);
  v28 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v30 = &v105 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC30C0);
  MEMORY[0x28223BE20](v31 - 8);
  v142 = &v105 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v141 = &v105 - v34;
  v35 = type metadata accessor for EmptyStateLockup();
  switch(*(v145 + v35[6]))
  {
    case 1:
      sub_216B2F224(v145, v17);
      v83 = *MEMORY[0x277CDF9D8];
      v84 = sub_217008844();
      (*(*(v84 - 8) + 104))(v15, v83, v84);
      sub_216B2FC3C(&qword_280E2B340, MEMORY[0x277CDFA28]);
      result = sub_21700E494();
      if (result)
      {
        sub_216B31EE0();
        sub_2166D9530(&qword_280E29AE8, &qword_27CAB75D0);
        sub_21700A5B4();
        sub_216697664(v15, &qword_27CAB75D0);
        sub_216697664(v17, &qword_27CAC3080);
        v86 = sub_217009C74();
        sub_217007F24();
        v87 = v120;
        v88 = &v19[*(v120 + 36)];
        *v88 = v86;
        *(v88 + 1) = v89;
        *(v88 + 2) = v90;
        *(v88 + 3) = v91;
        *(v88 + 4) = v92;
        v88[40] = 0;
        sub_217009C64();
        sub_21700B3B4();
        v93 = sub_216B31DB8();
        v46 = v108;
        sub_21700A834();
        sub_216697664(v19, &qword_27CAC3088);
        v48 = v109;
        v49 = v121;
        (*(v109 + 16))(v25, v46, v121);
        swift_storeEnumTagMultiPayload();
        sub_2166D9530(&qword_280E2A860, &qword_27CABA540);
        v146 = v87;
        v147 = v93;
        swift_getOpaqueTypeConformance2();
        v94 = v119;
        sub_217009554();
        sub_216683A80(v94, v135, &qword_27CAC30B0);
        swift_storeEnumTagMultiPayload();
        sub_216B31CBC();
        sub_216B31F90();
        v50 = v136;
        sub_217009554();
        sub_216697664(v94, &qword_27CAC30B0);
        v51 = &qword_27CAC30B8;
        sub_216683A80(v50, v140, &qword_27CAC30B8);
        goto LABEL_9;
      }

      __break(1u);
      return result;
    case 2:
      v52 = (v145 + v35[7]);
      v53 = v52[1];
      *v8 = *v52;
      *(v8 + 1) = v53;
      *(v8 + 2) = swift_getKeyPath();
      *(v8 + 3) = 0;
      *(v8 + 4) = 0;
      *(v8 + 5) = 0;
      v8[48] = 0;
      v54 = v125;
      v55 = *(v125 + 24);
      *&v8[v55] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
      swift_storeEnumTagMultiPayload();
      v56 = &v8[*(v54 + 28)];
      *v56 = swift_getKeyPath();
      v56[8] = 0;
      sub_216B321A4(v8, v124, type metadata accessor for EmptyStateLockupInlineBackgroundView);
      swift_storeEnumTagMultiPayload();
      sub_216B2FC3C(&qword_27CAC3110, type metadata accessor for EmptyStateLockupArtworkView);
      sub_216B2FC3C(&qword_27CAC3118, type metadata accessor for EmptyStateLockupInlineBackgroundView);
      sub_21700DF14();
      v57 = v126;
      sub_217009554();
      sub_216683A80(v57, v135, &qword_27CAC3078);
      swift_storeEnumTagMultiPayload();
      sub_216B31CBC();
      sub_216B31F90();
      v58 = v136;
      sub_217009554();
      sub_216697664(v57, &qword_27CAC3078);
      sub_216683A80(v58, v140, &qword_27CAC30B8);
      swift_storeEnumTagMultiPayload();
      sub_216B31C30();
      sub_216B3207C();
      v40 = v141;
      sub_217009554();
      sub_216697664(v58, &qword_27CAC30B8);
      v59 = type metadata accessor for EmptyStateLockupInlineBackgroundView;
      v60 = v8;
      goto LABEL_6;
    case 3:
      v61 = v145;
      v62 = type metadata accessor for EmptyStateLockupView(0);
      sub_216C0C924(v62, v63, v64, v65, v66, v67, v68, v69, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
      v70 = v112;
      sub_216B2D390(v12, v112);
      (*(v110 + 8))(v12, v111);
      v71 = (v61 + v35[7]);
      v72 = *v71;
      v73 = v71[1];
      v74 = (v61 + v35[9]);
      v75 = *v74;
      v76 = v74[1];
      v77 = v123;
      v78 = (v70 + *(v123 + 20));
      *v78 = v72;
      v78[1] = v73;
      v79 = (v70 + *(v77 + 24));
      *v79 = v75;
      v79[1] = v76;
      v80 = v70 + *(v77 + 28);
      *v80 = swift_getKeyPath();
      *(v80 + 8) = 0;
      *(v80 + 16) = 0;
      *(v80 + 24) = 0;
      *(v80 + 32) = 0;
      sub_216B321A4(v70, v124, type metadata accessor for EmptyStateLockupArtworkView);
      swift_storeEnumTagMultiPayload();
      sub_216B2FC3C(&qword_27CAC3110, type metadata accessor for EmptyStateLockupArtworkView);
      sub_216B2FC3C(&qword_27CAC3118, type metadata accessor for EmptyStateLockupInlineBackgroundView);
      sub_21700DF14();
      sub_21700DF14();
      v81 = v126;
      sub_217009554();
      sub_216683A80(v81, v135, &qword_27CAC3078);
      swift_storeEnumTagMultiPayload();
      sub_216B31CBC();
      sub_216B31F90();
      v82 = v136;
      sub_217009554();
      sub_216697664(v81, &qword_27CAC3078);
      sub_216683A80(v82, v140, &qword_27CAC30B8);
      swift_storeEnumTagMultiPayload();
      sub_216B31C30();
      sub_216B3207C();
      v40 = v141;
      sub_217009554();
      sub_216697664(v82, &qword_27CAC30B8);
      v59 = type metadata accessor for EmptyStateLockupArtworkView;
      v60 = v70;
LABEL_6:
      sub_216B32200(v60, v59);
      goto LABEL_12;
    case 4:
      v41 = v145;
      v42 = sub_2170093B4();
      v43 = v113;
      *v113 = v42;
      v43[1] = 0;
      *(v43 + 16) = 1;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3130);
      sub_216B2F64C(v41, v43 + *(v44 + 44));
      sub_217009C64();
      sub_21700B3B4();
      v45 = sub_2166D9530(&qword_27CAC30C8, &qword_27CAC3060);
      v46 = v114;
      v47 = v127;
      sub_21700A834();
      sub_216697664(v43, &qword_27CAC3060);
      v48 = v115;
      v49 = v129;
      (*(v115 + 16))(v130, v46, v129);
      swift_storeEnumTagMultiPayload();
      v146 = v47;
      v147 = v45;
      swift_getOpaqueTypeConformance2();
      sub_2166D9530(&qword_27CAC30D0, &qword_27CAC3048);
      v50 = v131;
      sub_217009554();
      v51 = &qword_27CAC3058;
      sub_216683A80(v50, v140, &qword_27CAC3058);
LABEL_9:
      swift_storeEnumTagMultiPayload();
      sub_216B31C30();
      sub_216B3207C();
      v40 = v141;
      sub_217009554();
      sub_216697664(v50, v51);
      (*(v48 + 8))(v46, v49);
      goto LABEL_12;
    case 5:
      MEMORY[0x28223BE20](v145);
      MEMORY[0x28223BE20](v95);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA420);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668);
      sub_2166D9530(&qword_280E2A5E0, &qword_27CABA420);
      sub_2167C4D74();
      v96 = v116;
      sub_2170097D4();
      v97 = v117;
      v98 = v132;
      (*(v117 + 16))(v130, v96, v132);
      swift_storeEnumTagMultiPayload();
      v99 = sub_2166D9530(&qword_27CAC30C8, &qword_27CAC3060);
      v146 = v127;
      v147 = v99;
      swift_getOpaqueTypeConformance2();
      sub_2166D9530(&qword_27CAC30D0, &qword_27CAC3048);
      v100 = v131;
      sub_217009554();
      sub_216683A80(v100, v140, &qword_27CAC3058);
      swift_storeEnumTagMultiPayload();
      sub_216B31C30();
      sub_216B3207C();
      v40 = v141;
      sub_217009554();
      sub_216697664(v100, &qword_27CAC3058);
      (*(v97 + 8))(v96, v98);
      goto LABEL_12;
    default:
      sub_2170097E4();
      v36 = v118;
      (*(v28 + 16))(v25, v30, v118);
      swift_storeEnumTagMultiPayload();
      sub_2166D9530(&qword_280E2A860, &qword_27CABA540);
      v37 = sub_216B31DB8();
      v146 = v120;
      v147 = v37;
      swift_getOpaqueTypeConformance2();
      v38 = v119;
      sub_217009554();
      sub_216683A80(v38, v135, &qword_27CAC30B0);
      swift_storeEnumTagMultiPayload();
      sub_216B31CBC();
      sub_216B31F90();
      v39 = v136;
      sub_217009554();
      sub_216697664(v38, &qword_27CAC30B0);
      sub_216683A80(v39, v140, &qword_27CAC30B8);
      swift_storeEnumTagMultiPayload();
      sub_216B31C30();
      sub_216B3207C();
      v40 = v141;
      sub_217009554();
      sub_216697664(v39, &qword_27CAC30B8);
      (*(v28 + 8))(v30, v36);
LABEL_12:
      v101 = v144;
      v102 = v142;
      sub_216683A80(v40, v142, &qword_27CAC30C0);
      *v101 = 0;
      *(v101 + 8) = 1;
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3128);
      sub_216683A80(v102, v101 + *(v103 + 48), &qword_27CAC30C0);
      v104 = v101 + *(v103 + 64);
      *v104 = 0;
      *(v104 + 8) = 1;
      sub_216697664(v40, &qword_27CAC30C0);
      return sub_216697664(v102, &qword_27CAC30C0);
  }
}

uint64_t sub_216B2F224@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7640);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v37 - v4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1508);
  MEMORY[0x28223BE20](v39);
  v7 = &v37 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3138);
  MEMORY[0x28223BE20](v38);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v37 = type metadata accessor for EmptyStateLockup();
  v15 = *(v37 + 28);
  v42 = a1;
  v16 = (a1 + v15);
  if (v16[1])
  {
    v17 = *v16;
    v18 = v16[1];
  }

  else
  {
    v17 = sub_216983738(61);
    v18 = v19;
  }

  sub_21700DF14();
  v20 = sub_217009E24();
  KeyPath = swift_getKeyPath();
  v45 = v17;
  v46 = v18;
  v47 = 0;
  v48 = MEMORY[0x277D84F90];
  v49 = KeyPath;
  v50 = v20;
  sub_217009DC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660);
  sub_2167C4CBC();
  sub_21700A304();

  v22 = sub_21700AD14();
  v23 = swift_getKeyPath();
  (*(v40 + 32))(v7, v5, v41);
  v24 = &v7[*(v39 + 36)];
  *v24 = v23;
  v24[1] = v22;
  v25 = swift_getKeyPath();
  sub_2167C5834(v7, v11, &qword_27CAC1508);
  v26 = &v11[*(v38 + 36)];
  *v26 = v25;
  v26[8] = 1;
  sub_2167C5834(v11, v14, &qword_27CAC3138);
  v27 = (v42 + *(v37 + 36));
  v28 = v27[1];
  if (v28)
  {
    v29 = *v27;
    v30 = MEMORY[0x277D84F90];
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  v31 = v43;
  sub_216683A80(v14, v43, &qword_27CAC3138);
  v32 = v44;
  *v44 = 0;
  *(v32 + 8) = 1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3140);
  sub_216683A80(v31, v32 + v33[12], &qword_27CAC3138);
  v34 = (v32 + v33[16]);
  *v34 = v29;
  v34[1] = v28;
  v34[2] = 0;
  v34[3] = v30;
  v35 = v32 + v33[20];
  *v35 = 0;
  v35[8] = 1;
  sub_21700DF14();
  sub_2167770D0(v29, v28, 0, v30);
  sub_216697664(v14, &qword_27CAC3138);
  sub_2167C4DF0(v29, v28, 0, v30);
  return sub_216697664(v31, &qword_27CAC3138);
}

uint64_t sub_216B2F64C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7BD0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  sub_217008294();
  v10 = (a1 + *(type metadata accessor for EmptyStateLockup() + 28));
  v11 = v10[1];
  if (v11)
  {
    v41 = *v10;
    v40 = v11;
  }

  else
  {
    v41 = sub_216983738(145);
    v40 = v12;
  }

  sub_21700DF14();
  v38 = sub_217009D44();
  KeyPath = swift_getKeyPath();
  v13 = sub_217009834();
  v14 = sub_217009C94();
  sub_217007F24();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v54 = 0;
  v23 = swift_getKeyPath();
  v24 = v4;
  v25 = *(v4 + 16);
  v25(v6, v9, v3);
  v37 = v9;
  v26 = v3;
  v27 = v42;
  v25(v42, v6, v26);
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3148) + 48);
  v39 = v6;
  v29 = v41;
  __src[0] = v41;
  v30 = v40;
  __src[1] = v40;
  __src[2] = 0;
  __src[3] = MEMORY[0x277D84F90];
  v31 = KeyPath;
  __src[4] = KeyPath;
  v32 = v38;
  __src[5] = v38;
  LODWORD(__src[6]) = v13;
  LOBYTE(__src[7]) = v14;
  __src[8] = v16;
  __src[9] = v18;
  __src[10] = v20;
  __src[11] = v22;
  LOBYTE(__src[12]) = 0;
  __src[13] = v23;
  LOBYTE(__src[14]) = 1;
  memcpy(&v27[v28], __src, 0x71uLL);
  sub_216683A80(__src, v44, &qword_27CAC3150);
  v33 = *(v24 + 8);
  v33(v37, v26);
  v44[0] = v29;
  v44[1] = v30;
  v44[2] = 0;
  v44[3] = MEMORY[0x277D84F90];
  v44[4] = v31;
  v44[5] = v32;
  v45 = v13;
  v46 = v14;
  v47 = v16;
  v48 = v18;
  v49 = v20;
  v50 = v22;
  v51 = 0;
  v52 = v23;
  v53 = 1;
  sub_216697664(v44, &qword_27CAC3150);
  return (v33)(v39, v26);
}

uint64_t sub_216B2F9D0(uint64_t a1)
{
  if (!*(a1 + *(type metadata accessor for EmptyStateLockup() + 28) + 8))
  {
    sub_216983738(61);
  }

  sub_2167B2E14();
  sub_21700DF14();
  sub_21700DF14();
  return sub_21700AE34();
}

uint64_t sub_216B2FA9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for EmptyStateLockup() + 36));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
  v7 = MEMORY[0x277D84F90];
  a2[2] = 0;
  a2[3] = v7;

  return sub_21700DF14();
}

uint64_t sub_216B2FB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_216B32258(a1, a2, type metadata accessor for EmptyStateLockup);
  v3 = *(type metadata accessor for EmptyStateLockupView(0) + 20);
  *(a2 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_216B2FBE4(uint64_t a1)
{
  result = sub_216B2FC3C(qword_280E3C4F0, type metadata accessor for EmptyStateLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B2FC3C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_216B2FC84@<D0>(uint64_t a1@<X8>)
{
  v111 = a1;
  v110 = sub_2170080D4();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = &v91 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v107 = &v91 - v4;
  v103 = sub_2170090F4();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7640);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v7 = &v91 - v6;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1508);
  MEMORY[0x28223BE20](v94);
  v9 = &v91 - v8;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3138);
  MEMORY[0x28223BE20](v92);
  v95 = &v91 - v10;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC31E0);
  MEMORY[0x28223BE20](v93);
  v113 = &v91 - v11;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC31E8);
  MEMORY[0x28223BE20](v98);
  v100 = &v91 - v12;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC31F0);
  MEMORY[0x28223BE20](v99);
  v105 = &v91 - v13;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC31F8);
  MEMORY[0x28223BE20](v104);
  v106 = &v91 - v14;
  v15 = v1[1];
  v112 = v1;
  if (v15)
  {
    v16 = *v1;
    v17 = MEMORY[0x277D84F90];
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  sub_21700DF14();
  v18 = sub_217009E24();
  KeyPath = swift_getKeyPath();
  __src[0] = v16;
  __src[1] = v15;
  __src[2] = 0;
  __src[3] = v17;
  __src[4] = KeyPath;
  __src[5] = v18;
  sub_217009DC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660);
  sub_2167C4CBC();
  sub_21700A304();
  sub_2167C4DF0(v16, v15, 0, v17);

  v20 = sub_21700AD34();
  v21 = swift_getKeyPath();
  (*(v96 + 32))(v9, v7, v97);
  v22 = &v9[*(v94 + 36)];
  *v22 = v21;
  v22[1] = v20;
  v23 = swift_getKeyPath();
  v24 = v95;
  sub_2167C5834(v9, v95, &qword_27CAC1508);
  v25 = v24 + *(v92 + 36);
  *v25 = v23;
  *(v25 + 8) = 1;
  LOBYTE(v23) = sub_217009C84();
  sub_217007F24();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v24;
  v35 = v113;
  sub_2167C5834(v34, v113, &qword_27CAC3138);
  v36 = v35 + *(v93 + 36);
  *v36 = v23;
  *(v36 + 8) = v27;
  *(v36 + 16) = v29;
  *(v36 + 24) = v31;
  *(v36 + 32) = v33;
  *(v36 + 40) = 0;
  v37 = type metadata accessor for EmptyStateLockupInlineBackgroundView(0);
  v38 = v112 + *(v37 + 28);
  v39 = *v38;
  v40 = v112;
  if (v38[8] != 1)
  {

    sub_21700ED94();
    v41 = sub_217009C34();
    sub_217007BC4();

    v42 = v101;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v39, 0);
    (*(v102 + 8))(v42, v103);
  }

  v43 = v40[3];
  v44 = v40[5];
  if (*(v40 + 48) != 1)
  {
    v97 = v37;
    v45 = v40[2];
    v46 = v40[4];

    sub_21700ED94();
    v47 = sub_217009C34();
    sub_217007BC4();

    v48 = v101;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_21680E444(v45, v43, v46, v44, 0);
    v49 = *(v102 + 8);
    v50 = v103;
    v49(v48, v103);

    sub_21700ED94();
    v51 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_21680E444(v45, v43, v46, v44, 0);
    v49(v48, v50);
  }

  sub_21700B3B4();
  sub_2170083C4();
  v52 = v100;
  sub_2167C5834(v113, v100, &qword_27CAC31E0);
  v53 = (v52 + *(v98 + 36));
  v54 = v115;
  *v53 = v114;
  v53[1] = v54;
  v53[2] = v116;
  sub_21700B3B4();
  sub_217008BB4();
  v55 = v105;
  sub_2167C5834(v52, v105, &qword_27CAC31E8);
  memcpy((v55 + *(v99 + 36)), __src, 0x70uLL);
  v56 = sub_21700B3B4();
  v58 = v57;
  v59 = v107;
  sub_216C0C924(v56, v57, v60, v61, v62, v63, v64, v65, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102);
  v66 = v109;
  v67 = v108;
  v68 = v110;
  (*(v109 + 104))(v108, *MEMORY[0x277CDF3C0], v110);
  v69 = sub_2170080C4();
  v70 = *(v66 + 8);
  v70(v67, v68);
  v70(v59, v68);
  v71 = objc_opt_self();
  v72 = &selRef_tertiarySystemBackgroundColor;
  if ((v69 & 1) == 0)
  {
    v72 = &selRef_secondarySystemBackgroundColor;
  }

  v73 = [v71 *v72];
  v74 = v106;
  v75 = &v106[*(v104 + 36)];
  v76 = sub_21700AC44();
  v77 = &v75[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8798) + 36)];
  v78 = *(sub_217008B44() + 20);
  v79 = *MEMORY[0x277CE0118];
  v80 = sub_217009294();
  (*(*(v80 - 8) + 104))(&v77[v78], v79, v80);
  __asm { FMOV            V0.2D, #14.0 }

  *v77 = _Q0;
  *&v77[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438) + 36)] = 256;
  *v75 = v76;
  *(v75 + 4) = 256;
  v86 = &v75[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3200) + 36)];
  *v86 = v56;
  v86[1] = v58;
  sub_2167C5834(v55, v74, &qword_27CAC31F0);
  sub_21700B3B4();
  sub_2170083C4();
  v87 = v111;
  sub_2167C5834(v74, v111, &qword_27CAC31F8);
  v88 = (v87 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3208) + 36));
  v89 = v119;
  *v88 = v118;
  v88[1] = v89;
  result = *&v120;
  v88[2] = v120;
  return result;
}

__n128 sub_216B30870@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2170090F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = sub_2170093B4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3188);
  sub_216B30A54(v2, (a1 + *(v8 + 44)));
  v9 = v2 + *(type metadata accessor for EmptyStateLockupArtworkView(0) + 28);
  v11 = *v9;
  v10 = *(v9 + 16);
  LOBYTE(v9) = *(v9 + 32);
  v17 = v11;
  v18 = v10;
  if ((v9 & 1) == 0)
  {
    v12 = v11;

    sub_21700ED94();
    v13 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_21680E444(v12, v17.n128_i64[1], v18, *(&v18 + 1), 0);
    (*(v5 + 8))(v7, v4);
    v17 = v19;
    v18 = v20;
  }

  v14 = sub_217009C84();
  v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3190) + 36);
  *v15 = v14;
  result = v17;
  *(v15 + 24) = v18;
  *(v15 + 8) = result;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_216B30A54@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v76 = a1;
  v91 = a2;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3198);
  MEMORY[0x28223BE20](v88);
  v3 = &v76 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC31A0);
  v89 = *(v4 - 8);
  v90 = v4;
  MEMORY[0x28223BE20](v4);
  v99 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v98 = &v76 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  MEMORY[0x28223BE20](v8 - 8);
  v84 = &v76 - v9;
  v10 = sub_21700C444();
  v85 = *(v10 - 8);
  v86 = v10;
  MEMORY[0x28223BE20](v10);
  v83 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v76 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v76 - v19;
  v82 = sub_217007474();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v76 - v24;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v76 - v26;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC850);
  MEMORY[0x28223BE20](v80);
  v28 = &v76 - v27;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC31A8);
  v87 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v100 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v94 = &v76 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC31B0);
  v95 = *(v32 - 8);
  v96 = v32;
  MEMORY[0x28223BE20](v32);
  v93 = &v76 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v76 - v35;
  v101 = 0;
  v102 = 1;
  sub_217009C64();
  sub_21700B394();
  v92 = v36;
  v37 = v76;
  sub_21700A834();
  sub_216683A80(v37, v17, &qword_27CAB6D60);
  v38 = type metadata accessor for Artwork();
  if (__swift_getEnumTagSinglePayload(v17, 1, v38) == 1)
  {
    sub_216697664(v17, &qword_27CAB6D60);
    v39 = sub_21700C4B4();
    v40 = v20;
    v41 = 1;
  }

  else
  {
    v42 = v37;
    v43 = sub_21700C4B4();
    (*(*(v43 - 8) + 16))(v20, v17, v43);
    sub_216B32200(v17, type metadata accessor for Artwork);
    v40 = v20;
    v41 = 0;
    v39 = v43;
    v37 = v42;
  }

  __swift_storeEnumTagSinglePayload(v40, v41, 1, v39);
  sub_217007464();
  sub_216683A80(v37, v14, &qword_27CAB6D60);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v38);
  v45 = v86;
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v14, &qword_27CAB6D60);
    v46 = v84;
    __swift_storeEnumTagSinglePayload(v84, 1, 1, v45);
    v47 = v83;
    sub_21700C404();
    v48 = __swift_getEnumTagSinglePayload(v46, 1, v45);
    v49 = v85;
    if (v48 != 1)
    {
      sub_216697664(v46, &qword_27CAB7530);
    }
  }

  else
  {
    v50 = *(v38 + 20);
    v51 = v84;
    v49 = v85;
    (*(v85 + 16))(v84, &v14[v50], v86);
    sub_216B32200(v14, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v51, 0, 1, v45);
    v47 = v83;
    (*(v49 + 32))(v83, v51, v45);
  }

  sub_2170073E4();
  (*(v49 + 8))(v47, v45);
  v52 = *(v81 + 8);
  v53 = v22;
  v54 = v82;
  v52(v53, v82);
  *(swift_allocObject() + 16) = xmmword_217016ED0;
  sub_2167C505C();
  v55 = v77;
  sub_2170073F4();

  v52(v25, v54);
  (*(v78 + 32))(v28, v55, v79);
  v56 = &v28[*(v80 + 36)];
  *v56 = 0x3FF0000000000000;
  *(v56 + 4) = 0;
  sub_217009C64();
  sub_21700B3B4();
  sub_216B32658();
  v57 = v94;
  sub_21700A834();
  sub_216697664(v28, &qword_27CABC850);
  *v3 = sub_2170093B4();
  *(v3 + 1) = 0x4020000000000000;
  v3[16] = 0;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC31C0);
  sub_216B3164C(v37, &v3[*(v58 + 44)]);
  sub_217009C64();
  sub_21700B3B4();
  sub_2166D9530(&qword_27CAC31C8, &qword_27CAC3198);
  v59 = v98;
  sub_21700A834();
  sub_216697664(v3, &qword_27CAC3198);
  v60 = v96;
  v61 = *(v95 + 16);
  v62 = v93;
  v61(v93, v92, v96);
  v63 = v87;
  v88 = *(v87 + 16);
  v88(v100, v57, v97);
  v64 = v89;
  v86 = *(v89 + 16);
  v65 = v59;
  v66 = v90;
  v86(v99, v65, v90);
  v67 = v91;
  v61(v91, v62, v60);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC31D0);
  v69 = v97;
  v88(&v67[*(v68 + 48)], v100, v97);
  v70 = v99;
  v86(&v67[*(v68 + 64)], v99, v66);
  v71 = *(v64 + 8);
  v71(v98, v66);
  v72 = *(v63 + 8);
  v72(v94, v69);
  v73 = v96;
  v74 = *(v95 + 8);
  v74(v92, v96);
  v71(v70, v66);
  v72(v100, v69);
  return (v74)(v93, v73);
}

uint64_t sub_216B3164C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v52 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7640);
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v4 = &v38 - v3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1508);
  MEMORY[0x28223BE20](v41);
  v42 = &v38 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3138);
  MEMORY[0x28223BE20](v40);
  v51 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  MEMORY[0x28223BE20](v10);
  v50 = &v38 - v11;
  v12 = type metadata accessor for EmptyStateLockupArtworkView(0);
  v13 = (a1 + *(v12 + 20));
  v14 = v13[1];
  if (v14)
  {
    v47 = *v13;
    v48 = MEMORY[0x277D84F90];
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  v49 = v14;
  sub_21700DF14();
  v44 = sub_217009D74();
  KeyPath = swift_getKeyPath();
  v54 = sub_21700AD14();
  v39 = swift_getKeyPath();
  v53 = swift_getKeyPath();
  v15 = (a1 + *(v12 + 24));
  v16 = v15[1];
  if (v16)
  {
    v17 = *v15;
    v18 = MEMORY[0x277D84F90];
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  sub_21700DF14();
  v19 = sub_217009E54();
  v20 = swift_getKeyPath();
  v56 = v17;
  v57 = v16;
  v58 = 0;
  v59 = v18;
  v60 = v20;
  v61 = v19;
  sub_217009DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660);
  sub_2167C4CBC();
  sub_21700A304();
  sub_2167C4DF0(v17, v16, 0, v18);

  v21 = sub_21700AD34();
  v22 = swift_getKeyPath();
  v23 = v42;
  (*(v45 + 32))(v42, v4, v46);
  v24 = (v23 + *(v41 + 36));
  *v24 = v22;
  v24[1] = v21;
  v25 = swift_getKeyPath();
  sub_2167C5834(v23, v9, &qword_27CAC1508);
  v26 = &v9[*(v40 + 36)];
  *v26 = v25;
  v26[8] = 1;
  v27 = v50;
  sub_2167C5834(v9, v50, &qword_27CAC3138);
  v28 = v51;
  sub_216683A80(v27, v51, &qword_27CAC3138);
  v29 = v52;
  *v52 = 0;
  *(v29 + 8) = 1;
  v30 = v47;
  v31 = v49;
  __src[0] = v47;
  __src[1] = v49;
  v32 = v48;
  __src[2] = 0;
  __src[3] = v48;
  v33 = KeyPath;
  v34 = v44;
  __src[4] = KeyPath;
  __src[5] = v44;
  v35 = v39;
  __src[6] = v39;
  __src[7] = v54;
  __src[8] = v53;
  LOBYTE(__src[9]) = 1;
  memcpy(v29 + 2, __src, 0x49uLL);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC31D8);
  sub_216683A80(v28, v29 + *(v36 + 64), &qword_27CAC3138);
  sub_216683A80(__src, &v56, &qword_27CABA1B8);
  sub_216697664(v27, &qword_27CAC3138);
  sub_216697664(v28, &qword_27CAC3138);
  v56 = v30;
  v57 = v31;
  v58 = 0;
  v59 = v32;
  v60 = v33;
  v61 = v34;
  v62 = v35;
  v63 = v54;
  v64 = v53;
  v65 = 1;
  return sub_216697664(&v56, &qword_27CABA1B8);
}

unint64_t sub_216B31C30()
{
  result = qword_27CAC30D8;
  if (!qword_27CAC30D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC30B8);
    sub_216B31CBC();
    sub_216B31F90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC30D8);
  }

  return result;
}

unint64_t sub_216B31CBC()
{
  result = qword_27CAC30E0;
  if (!qword_27CAC30E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC30B0);
    sub_2166D9530(&qword_280E2A860, &qword_27CABA540);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3088);
    sub_216B31DB8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC30E0);
  }

  return result;
}

unint64_t sub_216B31DB8()
{
  result = qword_27CAC30E8;
  if (!qword_27CAC30E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3088);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3080);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB75D0);
    sub_216B31EE0();
    sub_2166D9530(&qword_280E29AE8, &qword_27CAB75D0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC30E8);
  }

  return result;
}

unint64_t sub_216B31EE0()
{
  result = qword_27CAC30F0;
  if (!qword_27CAC30F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3080);
    sub_2166D9530(&qword_27CAC30F8, &qword_27CAC3100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC30F0);
  }

  return result;
}

unint64_t sub_216B31F90()
{
  result = qword_27CAC3108;
  if (!qword_27CAC3108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3078);
    sub_216B2FC3C(&qword_27CAC3110, type metadata accessor for EmptyStateLockupArtworkView);
    sub_216B2FC3C(&qword_27CAC3118, type metadata accessor for EmptyStateLockupInlineBackgroundView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3108);
  }

  return result;
}

unint64_t sub_216B3207C()
{
  result = qword_27CAC3120;
  if (!qword_27CAC3120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3058);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3060);
    sub_2166D9530(&qword_27CAC30C8, &qword_27CAC3060);
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_27CAC30D0, &qword_27CAC3048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3120);
  }

  return result;
}

uint64_t sub_216B321A4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216B32200(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216B32258(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

void sub_216B322DC()
{
  sub_2166DAA20(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2166DAA20(319, &qword_280E2B468, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_2166DB764(319, &qword_280E2B460, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_2166DAA20(319, &qword_280E2B480, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_216B32454()
{
  sub_2166DB764(319, &qword_280E2BF20, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2166DAA20(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2166DAA20(319, &qword_280E2B468, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_216B32568()
{
  result = qword_27CAC3178;
  if (!qword_27CAC3178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3040);
    sub_2166D9530(&qword_27CAC3180, &qword_27CAC3030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3178);
  }

  return result;
}

unint64_t sub_216B32658()
{
  result = qword_27CAC31B8;
  if (!qword_27CAC31B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC850);
    sub_2167C505C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC31B8);
  }

  return result;
}

unint64_t sub_216B32710()
{
  result = qword_27CAC3210;
  if (!qword_27CAC3210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3190);
    sub_2166D9530(&qword_27CAC3218, &qword_27CAC3220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3210);
  }

  return result;
}

unint64_t sub_216B327C8()
{
  result = qword_27CAC3228;
  if (!qword_27CAC3228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3208);
    sub_216B32854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3228);
  }

  return result;
}

unint64_t sub_216B32854()
{
  result = qword_27CAC3230;
  if (!qword_27CAC3230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC31F8);
    sub_216B3290C();
    sub_2166D9530(&qword_27CAC3260, &qword_27CAC3200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3230);
  }

  return result;
}

unint64_t sub_216B3290C()
{
  result = qword_27CAC3238;
  if (!qword_27CAC3238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC31F0);
    sub_216B32998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3238);
  }

  return result;
}

unint64_t sub_216B32998()
{
  result = qword_27CAC3240;
  if (!qword_27CAC3240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC31E8);
    sub_216B32A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3240);
  }

  return result;
}

unint64_t sub_216B32A24()
{
  result = qword_27CAC3248;
  if (!qword_27CAC3248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC31E0);
    sub_216B32AB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3248);
  }

  return result;
}

unint64_t sub_216B32AB0()
{
  result = qword_27CAC3250;
  if (!qword_27CAC3250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3138);
    sub_216B32B68();
    sub_2166D9530(&qword_280E2A730, &qword_27CAB8688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3250);
  }

  return result;
}

unint64_t sub_216B32B68()
{
  result = qword_27CAC3258;
  if (!qword_27CAC3258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1508);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7660);
    sub_2167C4CBC();
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A718, &qword_27CAB7BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3258);
  }

  return result;
}

uint64_t sub_216B32C60(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  *(v2 + 16) = a1;
  type metadata accessor for ObjectGraph();

  sub_21700E094();
  (*(v6 + 32))(v2 + OBJC_IVAR____TtC7MusicUI32ReportAConcernMenuActionProvider_actionDispatcher, v9, v4);
  type metadata accessor for UserSocialProfileCoordinator();
  sub_21700D4B4();

  *(v2 + OBJC_IVAR____TtC7MusicUI32ReportAConcernMenuActionProvider_userSocialProfileCoordinator) = v11[1];
  return v2;
}

void sub_216B32D90()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_16_48();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_108_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_42_2();
  sub_217006E94();
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(v0, v1);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_4_87();
  OUTLINED_FUNCTION_0_159();
  sub_216B34D98(v0, v6);
  sub_21678C1C4();
  OUTLINED_FUNCTION_14_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_11_60(inited, xmmword_217013DA0);
  OUTLINED_FUNCTION_26_5();
  sub_2169FAC94();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216B32ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X8>)
{
  v102 = a2;
  v107 = a5;
  v105 = sub_2170075A4();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v101 = v8;
  v103 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for ReportMusicItemConcernAction();
  v98 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v100 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v9;
  MEMORY[0x28223BE20](v10);
  v97 = &v79 - v11;
  v95 = sub_21700CFB4();
  v12 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v94 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_217005EF4();
  v80 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v79 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_21700D704();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v86 = &v79 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v84 = &v79 - v23;
  v90 = sub_21700D284();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v25);
  v27 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ReportableMusicItem();
  MEMORY[0x28223BE20](v28);
  v85 = &v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v79 - v31;
  v83 = *a4;
  v108 = a1;
  sub_216B34DF0(a1, &v79 - v31, type metadata accessor for ReportableMusicItem);
  v87 = v28;
  LODWORD(a4) = swift_getEnumCaseMultiPayload();
  sub_216B34D98(v32, type metadata accessor for ReportableMusicItem);
  if (a4 == 2 && (v33 = *(type metadata accessor for MenuConfiguration(0) + 20), swift_storeEnumTagMultiPayload(), LOBYTE(v33) = sub_216B88F54(a3 + v33, v27), sub_216B34D98(v27, type metadata accessor for MenuContext), (v33 & 1) == 0))
  {
    v49 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v107, 1, 1, v49);
  }

  else
  {
    v81 = sub_216B29D34();
    v82 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x657461676976616ELL;
    *(inited + 40) = 0xEA00000000006F54;
    v36 = MEMORY[0x277D837D0];
    strcpy((inited + 48), "ReportAConcern");
    *(inited + 63) = -18;
    *(inited + 72) = v36;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v37 = (a3 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v38 = v37[1];
    *(inited + 96) = *v37;
    *(inited + 104) = v38;
    *(inited + 120) = v36;
    *(inited + 128) = 1684957547;
    *(inited + 136) = 0xE400000000000000;
    sub_21700DF14();
    v39 = sub_216B2A278();
    *(inited + 168) = v36;
    *(inited + 144) = v39;
    *(inited + 152) = v40;
    v41 = sub_21700E384();
    v42 = v84;
    __swift_storeEnumTagSinglePayload(v84, 1, 1, v14);
    v43 = v86;
    sub_21700D6F4();
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v111 = v41;
    sub_2166EF9C4(&v111, &v110);
    v44 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v109 = v44;
    sub_2166EF9D4();
    v45 = v109;
    v112 = v36;
    v46 = 0xE800000000000000;
    *&v111 = 0x657461676976616ELL;
    *(&v111 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v111, &v110);
    swift_isUniquelyReferenced_nonNull_native();
    v109 = v45;
    sub_2166EF9D4();
    v47 = v109;
    v48 = 0x6472616F6279656BLL;
    switch(v83)
    {
      case 1:
        v46 = 0xE500000000000000;
        v48 = 0x79726F7473;
        break;
      case 2:
        v46 = 0xE400000000000000;
        v48 = 1701998445;
        break;
      case 3:
        v46 = 0xE500000000000000;
        v48 = 0x636972796CLL;
        break;
      case 4:
        v48 = 0xD000000000000010;
        v46 = 0x80000002170801D0;
        break;
      case 5:
        v46 = 0x80000002170801F0;
        v48 = 0xD000000000000012;
        break;
      case 6:
        v46 = 0xE900000000000075;
        v48 = 0x6E654D6570697773;
        break;
      case 7:
        v46 = 0x8000000217080210;
        v48 = 0xD000000000000015;
        break;
      default:
        break;
    }

    v112 = v36;
    *&v111 = v48;
    *(&v111 + 1) = v46;
    sub_2166EF9C4(&v111, &v110);
    swift_isUniquelyReferenced_nonNull_native();
    v109 = v47;
    sub_2166EF9D4();
    v51 = v109;
    sub_216681B04(v42, v21, &qword_27CABA820);
    if (__swift_getEnumTagSinglePayload(v21, 1, v14) == 1)
    {
      sub_216697664(v21, &qword_27CABA820);
    }

    else
    {
      v52 = v80;
      v53 = v79;
      (*(v80 + 32))(v79, v21, v14);
      v54 = sub_217005DE4();
      v112 = v36;
      *&v111 = v54;
      *(&v111 + 1) = v55;
      sub_2166EF9C4(&v111, &v110);
      swift_isUniquelyReferenced_nonNull_native();
      v109 = v51;
      sub_2166EF9D4();
      v51 = v109;
      (*(v52 + 8))(v53, v14);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v56 = sub_21700CF84();
    v57 = __swift_project_value_buffer(v56, qword_280E73DB0);
    v58 = v94;
    MEMORY[0x21CE9DD70](v81, v82, 0x6E6F74747562, 0xE600000000000000, v51, v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v59 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_217013DA0;
    v61 = v60 + v59;
    v62 = v95;
    (*(v12 + 16))(v61, v58, v95);
    v63 = v92;
    v64 = v93;
    (*(v92 + 16))(v91, v43, v93);
    v65 = v88;
    sub_21700D244();
    (*(v12 + 8))(v58, v62);
    (*(v63 + 8))(v43, v64);
    sub_216697664(v42, &qword_27CABA820);
    v66 = v85;
    sub_216B34DF0(v108, v85, type metadata accessor for ReportableMusicItem);
    v67 = v97;
    (*(v89 + 32))(v97, v65, v90);
    v68 = *(v96 + 20);
    sub_216B34C6C(v66, v67 + v68, type metadata accessor for ReportableMusicItem);
    __swift_storeEnumTagSinglePayload(v67 + v68, 0, 1, v87);
    type metadata accessor for MenuActionType();
    v69 = v107;
    swift_storeEnumTagMultiPayload();
    v70 = v100;
    sub_216B34C6C(v67, v100, type metadata accessor for ReportMusicItemConcernAction);
    v71 = v104;
    v72 = v103;
    v73 = v105;
    (*(v104 + 16))(v103, v102, v105);
    v74 = (*(v98 + 80) + 24) & ~*(v98 + 80);
    v75 = (v99 + *(v71 + 80) + v74) & ~*(v71 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v106;
    sub_216B34C6C(v70, v76 + v74, type metadata accessor for ReportMusicItemConcernAction);
    (*(v71 + 32))(v76 + v75, v72, v73);
    v77 = type metadata accessor for MenuAction();
    v78 = (v69 + *(v77 + 20));
    *v78 = sub_216B34CCC;
    v78[1] = v76;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v77);
  }
}

void sub_216B33CE8()
{
  OUTLINED_FUNCTION_49();
  v48 = v1;
  v49 = v0;
  v47 = v2;
  v4 = v3;
  v44 = type metadata accessor for ReportableMusicItem();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v46 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - v10;
  v11 = sub_21700C7E4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v42 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3268) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3270);
  v22 = OUTLINED_FUNCTION_36(v21);
  MEMORY[0x28223BE20](v22);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v42 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v42 - v29;
  v43 = v4;
  sub_21700C7F4();
  (*(v13 + 104))(v27, *MEMORY[0x277CD8528], v11);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v11);
  v31 = *(v17 + 56);
  sub_216681B04(v30, v20, &qword_27CAC3270);
  sub_216681B04(v27, &v20[v31], &qword_27CAC3270);
  v32 = &unk_217013000;
  if (__swift_getEnumTagSinglePayload(v20, 1, v11) != 1)
  {
    sub_216681B04(v20, v24, &qword_27CAC3270);
    if (__swift_getEnumTagSinglePayload(&v20[v31], 1, v11) != 1)
    {
      v33 = v42;
      (*(v13 + 32))(v42, &v20[v31], v11);
      sub_216B34E50(&qword_27CAC3278, MEMORY[0x277CD8530]);
      v34 = sub_21700E494();
      v35 = *(v13 + 8);
      v35(v33, v11);
      sub_216697664(v27, &qword_27CAC3270);
      sub_216697664(v30, &qword_27CAC3270);
      v35(v24, v11);
      v32 = &unk_217013000;
      sub_216697664(v20, &qword_27CAC3270);
      if ((v34 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    sub_216697664(v27, &qword_27CAC3270);
    sub_216697664(v30, &qword_27CAC3270);
    (*(v13 + 8))(v24, v11);
LABEL_6:
    sub_216697664(v20, &qword_27CAC3268);
    goto LABEL_10;
  }

  sub_216697664(v27, &qword_27CAC3270);
  sub_216697664(v30, &qword_27CAC3270);
  if (__swift_getEnumTagSinglePayload(&v20[v31], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_216697664(v20, &qword_27CAC3270);
LABEL_9:
  sub_21700C924();
  OUTLINED_FUNCTION_34();
  v37 = v46;
  (*(v36 + 16))(v46, v43);
  swift_storeEnumTagMultiPayload();
  v50[0] = 4;
  v38 = v45;
  sub_216B32ED8(v37, v47, v48, v50, v45);
  OUTLINED_FUNCTION_0_159();
  sub_216B34D98(v37, v39);
  sub_21678C1C4();
  sub_216697664(v38, &qword_27CAB6DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_11_60(inited, v32[218]);
  OUTLINED_FUNCTION_26_5();
  sub_2169FAC94();
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
  v41 = swift_initStackObject();
  OUTLINED_FUNCTION_11_60(v41, v32[218]);
  OUTLINED_FUNCTION_26_5();
  sub_2169FAC94();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

void sub_216B34270()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  type metadata accessor for ReportableMusicItem();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  OUTLINED_FUNCTION_36(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_108_0();
  v14 = *(v0 + OBJC_IVAR____TtC7MusicUI32ReportAConcernMenuActionProvider_userSocialProfileCoordinator);
  v15 = &unk_217013000;
  if (v14)
  {
    v40 = v5;
    v41 = v3;
    v16 = type metadata accessor for SocialProfileDescriptor(0);
    v17 = (v7 + *(v16 + 20));
    v19 = *v17;
    v18 = v17[1];
    sub_21700DF14();
    v20 = v14;
    v21 = sub_216CAC650();
    if (v22)
    {
      if (v19 == v21 && v22 == v18)
      {
        goto LABEL_20;
      }

      v24 = sub_21700F7D4();

      if (v24)
      {
        goto LABEL_26;
      }
    }

    else
    {
    }

    v25 = (v7 + *(v16 + 24));
    v26 = v25[1];
    v39 = *v25;
    v27 = *&v20[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
    v28 = *(v27 + 16);
    sub_21700DF14();
    v20 = v20;
    os_unfair_lock_lock(v28);
    v29 = *&v20[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
    v30 = *(v27 + 16);
    v31 = v29;
    os_unfair_lock_unlock(v30);

    if (v29)
    {
      v32 = sub_2167DEA8C(v31);
      if (v26)
      {
        if (v33)
        {
          if (v39 != v32 || v26 != v33)
          {
            v35 = sub_21700F7D4();

            v15 = &unk_217013000;
            if (v35)
            {

              goto LABEL_28;
            }

            goto LABEL_25;
          }

LABEL_20:

LABEL_27:
          v15 = &unk_217013000;
          goto LABEL_28;
        }
      }

      else if (!v33)
      {
LABEL_26:

        goto LABEL_27;
      }
    }

    else if (!v26)
    {
      goto LABEL_26;
    }

    v15 = &unk_217013000;
LABEL_25:
    sub_216B34DF0(v7, v11, type metadata accessor for SocialProfileDescriptor);
    swift_storeEnumTagMultiPayload();
    v42 = 4;
    sub_216B32ED8(v11, v40, v41, &v42, v1);
    OUTLINED_FUNCTION_0_159();
    sub_216B34D98(v11, v36);
    sub_21678C1C4();
    sub_216697664(v1, &qword_27CAB6DF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_11_60(inited, v15[218]);
    OUTLINED_FUNCTION_26_5();
    sub_2169FAC94();
  }

LABEL_28:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
  v38 = swift_initStackObject();
  OUTLINED_FUNCTION_11_60(v38, v15[218]);
  OUTLINED_FUNCTION_26_5();
  sub_2169FAC94();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

void sub_216B345CC()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v5 = v4;
  type metadata accessor for MenuContext(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  type metadata accessor for ReportableMusicItem();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_108_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  OUTLINED_FUNCTION_36(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_42_2();
  sub_21700C084();
  OUTLINED_FUNCTION_34();
  (*(v13 + 16))(v0, v5);
  swift_storeEnumTagMultiPayload();
  v14 = *(type metadata accessor for MenuConfiguration(0) + 20);
  swift_storeEnumTagMultiPayload();
  sub_216B88F54(v3 + v14, v9);
  sub_216B34D98(v9, type metadata accessor for MenuContext);
  OUTLINED_FUNCTION_4_87();
  OUTLINED_FUNCTION_0_159();
  sub_216B34D98(v0, v15);
  sub_21678C1C4();
  sub_216697664(v1, &qword_27CAB6DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_11_60(inited, xmmword_217013DA0);
  OUTLINED_FUNCTION_26_5();
  sub_2169FAC94();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

void sub_216B347C4()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_16_48();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_108_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_42_2();
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  *v0 = v5;
  v0[1] = v6;
  v0[2] = v7;
  swift_storeEnumTagMultiPayload();
  sub_21700DF14();
  sub_21700DF14();
  OUTLINED_FUNCTION_4_87();
  OUTLINED_FUNCTION_0_159();
  sub_216B34D98(v0, v8);
  sub_21678C1C4();
  OUTLINED_FUNCTION_14_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_11_60(inited, xmmword_217013DA0);
  OUTLINED_FUNCTION_26_5();
  sub_2169FAC94();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216B348F8(uint64_t a1, uint64_t a2)
{
  v5[3] = type metadata accessor for ReportMusicItemConcernAction();
  v5[4] = sub_216B34E50(&qword_280E47630, type metadata accessor for ReportMusicItemConcernAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  sub_216B34DF0(a2, boxed_opaque_existential_1, type metadata accessor for ReportMusicItemConcernAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_216B349E8()
{

  v1 = OBJC_IVAR____TtC7MusicUI32ReportAConcernMenuActionProvider_actionDispatcher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_216B34A64()
{
  sub_216B349E8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ReportAConcernMenuActionProvider()
{
  result = qword_280E2F778;
  if (!qword_280E2F778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216B34B10()
{
  sub_216692BBC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_216B34C6C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216B34CCC()
{
  v1 = *(type metadata accessor for ReportMusicItemConcernAction() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = sub_2170075A4();
  OUTLINED_FUNCTION_36(v3);
  v4 = *(v0 + 16);

  return sub_216B348F8(v4, v0 + v2);
}

uint64_t sub_216B34D98(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216B34DF0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216B34E50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216B34EB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_216B34ED0, 0, 0);
}

void sub_216B34ED0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedServerObjectDatabase];
  v3 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v4 = sub_2166BF480(v1);
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v1 & 0xFFFFFFFFFFFFFF8;
  v8 = v1 + 32;
  while (v4 != v5)
  {
    if (v6)
    {
      v9 = MEMORY[0x21CEA0220](v5, v15[2]);
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        goto LABEL_17;
      }

      v9 = *(v8 + 8 * v5);
    }

    v10 = v9;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    v11 = [v2 modelObjectMatchingIdentifierSet:v9 propertySet:v15[3]];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 innermostModelObject];

      MEMORY[0x21CE9F610]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21700E874();
      }

      sub_21700E8C4();
      v3 = v16;
      ++v5;
    }

    else
    {

      ++v5;
    }
  }

  v14 = v15[1];

  v14(v3);
}

uint64_t dispatch thunk of ModelObjectProvider.fetchModelObjects(matching:with:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 88) + **(*v2 + 88));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_216848948;

  return v8(a1, a2);
}

uint64_t sub_216B35258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v43 = a3;
  v46 = a2;
  v45 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v39 = v10;
  v40 = v9;
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v44 = a1;
  sub_21700CE04();
  v20 = sub_21700CDB4();
  v22 = v21;
  v23 = v19;
  v24 = *(v15 + 8);
  v24(v23, v13);
  if (v22)
  {
    v41 = v24;
    v25 = v43;
    v26 = v44;
    *v43 = v20;
    v25[1] = v22;
    sub_21700CE04();
    (*(v5 + 16))(v8, v46, v45);
    v27 = v42;
    sub_21700D224();
    v28 = OUTLINED_FUNCTION_1_23();
    v29(v28);
    v41(v26, v13);
    if (v27)
    {
    }

    else
    {
      v37 = type metadata accessor for CancelFollowUserRequestAction();
      return (*(v39 + 32))(v43 + *(v37 + 20), v12, v40);
    }
  }

  else
  {
    v31 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    v33 = v32;
    v34 = type metadata accessor for CancelFollowUserRequestAction();
    *v33 = 0x72506C6169636F73;
    v33[1] = 0xEF4449656C69666FLL;
    v33[2] = v34;
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D22530], v31);
    swift_willThrow();
    v35 = OUTLINED_FUNCTION_1_23();
    v36(v35);
    return (v24)(v44, v13);
  }
}

uint64_t sub_216B35648()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_216B3569C()
{
  OUTLINED_FUNCTION_33();
  v0[24] = v13;
  v0[25] = v14;
  v0[22] = v1;
  v0[23] = v2;
  v0[20] = v3;
  v0[21] = v4;
  v0[18] = v5;
  v0[19] = v6;
  v0[17] = v7;
  v0[26] = *(v14 + 16);
  v0[27] = swift_getAssociatedTypeWitness();
  v8 = sub_21700F164();
  v0[28] = v8;
  v0[29] = *(v8 - 8);
  v0[30] = swift_task_alloc();
  type metadata accessor for PlaybackItemsPresenter.PlaybackItems(0);
  v0[31] = swift_task_alloc();
  sub_21700EA34();
  v0[32] = sub_21700EA24();
  v10 = sub_21700E9B4();
  v0[33] = v10;
  v0[34] = v9;

  return MEMORY[0x2822009F8](sub_216B357FC, v10, v9);
}

uint64_t sub_216B357FC()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 216);
  v4 = *(v0 + 192);
  v5 = *(v0 + 176);
  v6 = *(v0 + 152);
  v7 = *(v0 + 144);
  (*(*(v3 - 8) + 16))(v1, *(v0 + 160), v3);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_216C95998(v7, v6, v1, v5, v3, v4, AssociatedConformanceWitness, v2);
  v9 = *(v0 + 248);
  v10 = *(v0 + 192);
  v11 = *(v0 + 176);
  (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A30);
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  sub_216EAA8A0(v9, (v0 + 16), v11, v10, (v0 + 56));
  v12 = swift_task_alloc();
  *(v0 + 280) = v12;
  v13 = *(v0 + 192);
  *(v0 + 96) = *(v0 + 176);
  *(v0 + 112) = v13;
  type metadata accessor for MapPlayActionImplementation();
  swift_getWitnessTable();
  *v12 = v0;
  v12[1] = sub_216B35AAC;

  return sub_216B6DB60();
}

uint64_t sub_216B35AAC()
{
  OUTLINED_FUNCTION_33();
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 264);
  v4 = *(v2 + 272);
  if (v0)
  {
    v5 = sub_216B35C44;
  }

  else
  {
    v5 = sub_216B35BBC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_216B35BBC()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 248);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  sub_216913F30(v1);

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216B35C44()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 248);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  sub_216913F30(v1);

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216B35CC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2167C6580;

  return sub_216B3569C();
}

uint64_t sub_216B35DA4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B35DE8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B35E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216ED7B54(a1, a2, a3, WitnessTable);
}

uint64_t sub_216B35EF4(uint64_t a1, uint64_t a2)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  OUTLINED_FUNCTION_1();
  v41 = v4;
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - v6;
  v39 = type metadata accessor for PresentSheetAction();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  type metadata accessor for MusicAppDestination(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDEB8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v38 - v16;
  v18 = type metadata accessor for ReportableMusicItem();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  v22 = v21 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v44 = v23;
  MEMORY[0x28223BE20](v24);
  type metadata accessor for ObjectGraph();
  v42 = a2;
  sub_21700E094();
  v25 = type metadata accessor for ReportMusicItemConcernAction();
  sub_216B363C4(a1 + *(v25 + 20), v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_216B36434(v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0);
    sub_216B3649C();
    swift_allocError();
    v26 = sub_21700E1E4();
    v27 = OUTLINED_FUNCTION_2_109();
    v28(v27);
  }

  else
  {
    sub_216B364F0(v17, v22);
    sub_216B3659C(v22, v14, type metadata accessor for ReportableMusicItem);
    swift_storeEnumTagMultiPayload();
    v29 = v39;
    sub_216B3659C(v14, v10 + *(v39 + 20), type metadata accessor for MusicAppDestination);
    type metadata accessor for ModalActionModelDestinations.Destination();
    swift_storeEnumTagMultiPayload();
    sub_21700D284();
    OUTLINED_FUNCTION_34();
    (*(v30 + 16))(v10, a1);
    v45[3] = v29;
    v45[4] = sub_216B36554(qword_280E3EA78, type metadata accessor for PresentSheetAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
    sub_216B3659C(v10, boxed_opaque_existential_1, type metadata accessor for PresentSheetAction);
    v32 = v40;
    v33 = v41;
    v34 = v43;
    (*(v41 + 104))(v40, *MEMORY[0x277D21E18], v43);
    v26 = sub_21700D5E4();
    (*(v33 + 8))(v32, v34);
    sub_216B365FC(v10, type metadata accessor for PresentSheetAction);
    sub_216B365FC(v14, type metadata accessor for MusicAppDestination);
    sub_216B365FC(v22, type metadata accessor for ReportableMusicItem);
    v35 = OUTLINED_FUNCTION_2_109();
    v36(v35);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
  }

  return v26;
}

uint64_t sub_216B363C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDEB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B36434(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDEB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216B3649C()
{
  result = qword_27CAC3280;
  if (!qword_27CAC3280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3280);
  }

  return result;
}

uint64_t sub_216B364F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportableMusicItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B36554(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216B3659C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216B365FC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for ReportMusicItemConcernActionImplementation.PerformError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_216B36704()
{
  result = qword_27CAC3288[0];
  if (!qword_27CAC3288[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CAC3288);
  }

  return result;
}

unint64_t sub_216B3676C()
{
  result = qword_27CAB7F10;
  if (!qword_27CAB7F10)
  {
    type metadata accessor for CancelFollowUserRequestAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7F10);
  }

  return result;
}

void sub_216B368A8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  sub_21667E91C(v3);
  v4 = [objc_opt_self() defaultCenter];
  v5 = v4;
  if (qword_280E38808 != -1)
  {
    OUTLINED_FUNCTION_0_160();
    v4 = v5;
  }

  [v4 addObserver:v2 selector:sel_eventDidFire name:qword_280E73C70 object:0];
}

void sub_216B36974()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v1;
  if (qword_280E38808 != -1)
  {
    OUTLINED_FUNCTION_0_160();
    v1 = v2;
  }

  [v1 removeObserver:v0 name:qword_280E73C70 object:0];
}

uint64_t PlaylistAddableItem.addableItem.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PlaylistAddableItem();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_80();
  sub_216B36B5C(v1, v1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v4 = sub_21700C084();
      v5 = MEMORY[0x277CD81E0];
      break;
    case 2u:
      v4 = sub_21700BA44();
      v5 = MEMORY[0x277CD7E08];
      break;
    case 3u:
      v4 = sub_21700C1E4();
      v5 = MEMORY[0x277CD8288];
      break;
    default:
      v4 = sub_21700C924();
      v5 = MEMORY[0x277CD85F8];
      break;
  }

  a1[3] = v4;
  a1[4] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return (*(*(v4 - 8) + 32))(boxed_opaque_existential_1, v1, v4);
}

uint64_t sub_216B36B5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistAddableItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PlaylistAddableItem.itemTitle.getter()
{
  sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v35 = v2;
  v36 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_80();
  sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v33 = v4;
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  v8 = sub_21700C084();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v14 = v13 - v12;
  v15 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7();
  v21 = v20 - v19;
  v22 = type metadata accessor for PlaylistAddableItem();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7();
  v26 = v25 - v24;
  sub_216B36B5C(v37, v25 - v24);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_7_75();
      v31(v14, v26, v8);
      v22 = sub_21700C014();
      (*(v10 + 8))(v14, v8);
      return v22;
    case 2u:
      v30 = v34;
      (*(v33 + 32))(v7, v26, v34);
      sub_21700BA14();
      OUTLINED_FUNCTION_3_108();
      v28 = v7;
      goto LABEL_5;
    case 3u:
      v30 = v36;
      (*(v35 + 32))(v0, v26, v36);
      sub_21700C184();
      OUTLINED_FUNCTION_3_108();
      v28 = v0;
LABEL_5:
      v29 = v30;
      goto LABEL_6;
    default:
      (*(v17 + 32))(v21, v26, v15);
      sub_21700C804();
      OUTLINED_FUNCTION_3_108();
      v28 = v21;
      v29 = v15;
LABEL_6:
      v27(v28, v29);
      return v22;
  }
}

uint64_t static PlaylistAddableItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v66 = a1;
  v67 = a2;
  sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v64 = v4;
  v65 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v58 = v6 - v5;
  sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v62 = v8;
  v63 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v57 = v10 - v9;
  sub_21700C084();
  OUTLINED_FUNCTION_1();
  v60 = v12;
  v61 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v15 = v14 - v13;
  v16 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v59 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_80();
  type metadata accessor for PlaylistAddableItem();
  OUTLINED_FUNCTION_34();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v56 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v56 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v56 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3310);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v34 = &v56 - v33;
  v35 = *(v32 + 56);
  sub_216B36B5C(v66, &v56 - v33);
  sub_216B36B5C(v67, &v34[v35]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_216B36B5C(v34, v28);
      if (OUTLINED_FUNCTION_8_71() == 1)
      {
        v50 = v60;
        v49 = v61;
        OUTLINED_FUNCTION_4_88();
        v51(v15);
        v40 = sub_21700BFE4();
        v41 = *(v50 + 8);
        v41(v15, v49);
        v42 = v28;
        v43 = v49;
        goto LABEL_10;
      }

      (*(v60 + 8))(v28, v61);
      goto LABEL_14;
    case 2u:
      sub_216B36B5C(v34, v25);
      if (OUTLINED_FUNCTION_8_71() != 2)
      {
        (*(v62 + 8))(v25, v63);
        goto LABEL_14;
      }

      v37 = v62;
      v36 = v63;
      OUTLINED_FUNCTION_4_88();
      v38 = v57;
      v39(v57);
      v40 = sub_21700B9E4();
      v41 = *(v37 + 8);
      v41(v38, v36);
      v42 = v25;
      v43 = v36;
LABEL_10:
      v41(v42, v43);
      goto LABEL_16;
    case 3u:
      sub_216B36B5C(v34, v22);
      if (OUTLINED_FUNCTION_8_71() == 3)
      {
        v45 = v64;
        v44 = v65;
        OUTLINED_FUNCTION_4_88();
        v46 = v58;
        v47(v58);
        v40 = sub_21700C154();
        v48 = *(v45 + 8);
        v48(v46, v44);
        v48(v22, v44);
        goto LABEL_16;
      }

      (*(v64 + 8))(v22, v65);
      goto LABEL_14;
    default:
      sub_216B36B5C(v34, v30);
      if (OUTLINED_FUNCTION_8_71())
      {
        (*(v59 + 8))(v30, v16);
LABEL_14:
        sub_216B3744C(v34);
        v40 = 0;
      }

      else
      {
        v52 = v59;
        OUTLINED_FUNCTION_4_88();
        v53(v2);
        v40 = sub_21700C7B4();
        v54 = *(v52 + 8);
        v54(v2, v16);
        v54(v30, v16);
LABEL_16:
        sub_216AEE250(v34);
      }

      return v40 & 1;
  }
}

uint64_t sub_216B3744C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PlaylistAddableItem.hash(into:)()
{
  sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v32 = v2;
  v33 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  v5 = v4 - v3;
  v6 = sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v31 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v12 = sub_21700C084();
  OUTLINED_FUNCTION_1();
  v30 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v17 = v16 - v15;
  v18 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7();
  v24 = v23 - v22;
  type metadata accessor for PlaylistAddableItem();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_80();
  sub_216B36B5C(v34, v0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_7_75();
      v29(v17, v0, v12);
      MEMORY[0x21CEA0720](1);
      sub_216B379E0(&qword_27CABC530, MEMORY[0x277CD8238]);
      OUTLINED_FUNCTION_34_2();
      sub_21700E434();
      result = (*(v30 + 8))(v17, v12);
      break;
    case 2u:
      OUTLINED_FUNCTION_7_75();
      v28(v11, v0, v6);
      MEMORY[0x21CEA0720](2);
      sub_216B379E0(&qword_27CABC548, MEMORY[0x277CD7E58]);
      OUTLINED_FUNCTION_34_2();
      sub_21700E434();
      result = (*(v31 + 8))(v11, v6);
      break;
    case 3u:
      (*(v32 + 32))(v5, v0, v33);
      MEMORY[0x21CEA0720](3);
      sub_216B379E0(&qword_27CACA4A0, MEMORY[0x277CD82C8]);
      OUTLINED_FUNCTION_34_2();
      sub_21700E434();
      result = (*(v32 + 8))(v5, v33);
      break;
    default:
      OUTLINED_FUNCTION_7_75();
      v26(v24, v0, v18);
      MEMORY[0x21CEA0720](0);
      sub_216B379E0(&unk_27CACA4B0, MEMORY[0x277CD8608]);
      OUTLINED_FUNCTION_34_2();
      sub_21700E434();
      result = (*(v20 + 8))(v24, v18);
      break;
  }

  return result;
}

uint64_t PlaylistAddableItem.hashValue.getter()
{
  sub_21700F8F4();
  PlaylistAddableItem.hash(into:)();
  return sub_21700F944();
}

uint64_t sub_216B3795C()
{
  sub_21700F8F4();
  PlaylistAddableItem.hash(into:)();
  return sub_21700F944();
}

uint64_t sub_216B379E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216B37A50@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v44 = a3;
  v45 = a2;
  v48 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v47 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  v42 = v7;
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v39 = v9;
  v40 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v43 = v10;
  v11 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  v46 = a1;
  sub_21700CE04();
  v21 = sub_21700CDB4();
  v23 = v22;
  v24 = *(v13 + 8);
  v24(v20, v11);
  if (v23)
  {
    v41 = v3;
    v25 = v44;
    *v44 = v21;
    v25[1] = v23;
    v26 = v46;
    sub_21700CE04();
    v27 = sub_21700CD44();
    v24(v17, v11);
    *(v25 + 16) = v27 & 1;
    sub_21700CE04();
    (*(v47 + 16))(v42, v45, v48);
    v28 = v43;
    v29 = v41;
    sub_21700D224();
    v30 = OUTLINED_FUNCTION_2_110();
    v31(v30);
    v24(v26, v11);
    if (v29)
    {
    }

    else
    {
      v37 = type metadata accessor for FollowUserAction();
      return (*(v39 + 32))(v44 + *(v37 + 24), v28, v40);
    }
  }

  else
  {
    v33 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    v35 = v34;
    v36 = type metadata accessor for FollowUserAction();
    *v35 = 0x72506C6169636F73;
    v35[1] = 0xEF4449656C69666FLL;
    v35[2] = v36;
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D22530], v33);
    swift_willThrow();
    (*(v47 + 8))(v45, v48);
    return (v24)(v46, v11);
  }
}

uint64_t sub_216B37F10(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

void sub_216B37F58()
{
  OUTLINED_FUNCTION_22_3();
  v88 = v1;
  v89 = v2;
  v90 = v3;
  v84 = v4;
  v5 = *(*v0 + 80);
  v6 = *v0;
  v87 = v0;
  v7 = *(v6 + 88);
  OUTLINED_FUNCTION_6_5();
  type metadata accessor for PageUpdateDescriptor();
  OUTLINED_FUNCTION_1();
  v81 = v9;
  v82 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v86 = v10;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_4();
  v80 = v12;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_4();
  v78 = v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_47_1();
  v79 = v16;
  v17 = OUTLINED_FUNCTION_4_1();
  v18 = _s7SectionVMa(v17);
  v19 = OUTLINED_FUNCTION_36(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_0();
  v76 = v20;
  OUTLINED_FUNCTION_4_1();
  v21 = type metadata accessor for PageChangeInstruction.Instruction();
  OUTLINED_FUNCTION_1();
  v85 = v22;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  v25 = &v75 - v24;
  OUTLINED_FUNCTION_6_5();
  v26 = sub_21700F164();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v29);
  v31 = (&v75 - v30);
  OUTLINED_FUNCTION_16();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_0();
  v77 = v35;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_4();
  v83 = v37;
  OUTLINED_FUNCTION_3_1();
  v39 = MEMORY[0x28223BE20](v38);
  v41 = &v75 - v40;
  (*(v28 + 16))(v31, v90, v26, v39);
  if (__swift_getEnumTagSinglePayload(v31, 1, v5) == 1)
  {
    (*(v28 + 8))(v31, v26);
    OUTLINED_FUNCTION_6_5();
    type metadata accessor for PageChangeInstructionPerformer.PageChangeInstructionUpdateError();
    OUTLINED_FUNCTION_14_51();
    OUTLINED_FUNCTION_4();
    *v42 = 0;
    swift_willThrow();
  }

  else
  {
    v75 = v7;
    v90 = v33;
    v43 = *(v33 + 32);
    v43(v41, v31, v5);
    (*(v85 + 16))(v25, v89, v21);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v45 = v86;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_13_49();
        v65 = v76;
        sub_2166C63AC();
        v54 = v79;
        OUTLINED_FUNCTION_15_50();
        sub_216B3861C();
        sub_216AD16E8(v65, v31);
        if (!v1)
        {
          goto LABEL_15;
        }

        v66 = OUTLINED_FUNCTION_31_37();
        v67(v66);
        break;
      case 2:
        OUTLINED_FUNCTION_15_50();
        sub_216B3A0BC();
        goto LABEL_7;
      case 3:
        v54 = v78;
        OUTLINED_FUNCTION_15_50();
        sub_216B38C28(v55, v56, v57, v58, v59, v60, v61, v62, v75, v76);
        if (v1)
        {
          goto LABEL_10;
        }

LABEL_15:
        (*(v81 + 32))(v84, v54, v82);
        goto LABEL_16;
      case 4:
        v45 = v80;
        OUTLINED_FUNCTION_15_50();
        sub_216B397D8();
LABEL_7:
        if (v1)
        {
LABEL_10:
          v63 = OUTLINED_FUNCTION_31_37();
          v64(v63);
        }

        else
        {

          (*(v81 + 32))(v84, v45, v82);
LABEL_16:
          v51 = v90;
LABEL_17:
          OUTLINED_FUNCTION_6_5();
          v74 = *(v89 + *(type metadata accessor for PageChangeInstruction() + 36));
          if (v74 != 1)
          {
            sub_2168E6C28(v74);
          }

          (*(v51 + 8))(v41, v5);
        }

        break;
      case 5:
        v51 = v90;
        (*(v90 + 16))(v83, v41, v5);
        OUTLINED_FUNCTION_24_30();
        sub_216E41D9C(v68, v69, v70, v71, v72, v5, v73);
        goto LABEL_17;
      default:
        v46 = v83;
        v43(v83, v25, v5);
        v47 = v87;
        sub_2168E689C();
        v86 = &v75;
        MEMORY[0x28223BE20](v48);
        v49 = v75;
        *(&v75 - 4) = v5;
        *(&v75 - 3) = v49;
        *(&v75 - 2) = v46;
        _s15ContentObserverCMa();
        OUTLINED_FUNCTION_32();
        sub_21700E984();
        sub_21700DF14();
        OUTLINED_FUNCTION_0_161();
        swift_getWitnessTable();
        sub_21700E7A4();
        v50 = v49;

        v51 = v90;
        v52 = v77;
        (*(v90 + 16))(v77, v46, v5);
        v53 = sub_216E427CC(v5, v50);
        sub_216E41D9C(v52, v53, *(v47 + 32), 1, 0, v5, v84);
        (*(v51 + 8))(v46, v5);
        goto LABEL_17;
    }
  }

  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216B3860C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

void sub_216B3861C()
{
  OUTLINED_FUNCTION_22_3();
  v3 = v2;
  v5 = v4;
  v68 = v6;
  v7 = *v0;
  v8 = *(*v0 + 80);
  OUTLINED_FUNCTION_16();
  v71 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v67 = v11;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_47_1();
  v70 = v13;
  OUTLINED_FUNCTION_4_1();
  v14 = type metadata accessor for SectionContent();
  v15 = OUTLINED_FUNCTION_36(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v74 = v16;
  v17 = OUTLINED_FUNCTION_4_1();
  v75 = _s7SectionVMa(v17);
  OUTLINED_FUNCTION_1();
  v73 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_0();
  v76 = v20;
  v69 = v0;
  v21 = *(v7 + 88);
  v22 = *(v21 + 16);
  v24 = v22 + 32;
  v23 = *(v22 + 32);
  v25 = v23(v8, v22);
  v79 = v5;
  v77[2] = v5;
  v26 = sub_216CE0F88(sub_216B3AC5C, v77, v25);
  v28 = v27;
  v72 = v1;

  if (v28)
  {
    type metadata accessor for PageChangeInstructionPerformer.PageChangeInstructionUpdateError();
    OUTLINED_FUNCTION_14_51();
    OUTLINED_FUNCTION_4();
    *v29 = 1;
    swift_willThrow();
LABEL_11:
    OUTLINED_FUNCTION_21_4();
    return;
  }

  v65 = v21;
  v66 = v8;
  v30 = v3;
  v31 = v23(v8, v22);
  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v30 = v31;
  if (v26 >= *(v31 + 16))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    sub_216E15A14();
    v45 = v62;
    *v8 = v62;
    goto LABEL_8;
  }

  v64 = v3;
  v28 = (*(v73 + 80) + 32) & ~*(v73 + 80);
  v32 = *(v73 + 72) * v26;
  OUTLINED_FUNCTION_1_135();
  v23 = v76;
  sub_216B3ADD0();

  v33 = v72;
  sub_2169B6454(v79 + *(v75 + 52), v34, v35, v36, v37, v38, v39, v40, v63, v3, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
  if (v33)
  {
    OUTLINED_FUNCTION_1_117();
    v42 = v76;
LABEL_10:
    sub_216AD16E8(v42, v41);
    goto LABEL_11;
  }

  v73 = v32;
  OUTLINED_FUNCTION_6_75();
  sub_216B3AF08();
  v43 = *(v71 + 16);
  v24 = v66;
  v74 = v71 + 16;
  v72 = v43;
  v43(v70, v64, v66);
  v30 = (*(v22 + 48))(v78, v66, v22);
  v8 = v44;
  v45 = *v44;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v45;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v47 = v65;
  if (v26 < *(v45 + 16))
  {
    sub_216B3AD10(v23, v45 + v28 + v73);
    v48 = v30(v78, 0);
    v78[0] = *(v69 + 24);
    MEMORY[0x28223BE20](v48);
    *(&v63 - 4) = v24;
    *(&v63 - 3) = v47;
    *(&v63 - 2) = v49;
    _s15ContentObserverCMa();
    OUTLINED_FUNCTION_32();
    sub_21700E984();
    sub_21700DF14();
    OUTLINED_FUNCTION_0_161();
    swift_getWitnessTable();
    sub_21700E7A4();

    v50 = v70;
    v72(v67, v70, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1D98);
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC1DA0) - 8);
    v52 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_217013DA0;
    v54 = (v53 + v52);
    v55 = v79[1];
    *v54 = *v79;
    v54[1] = v55;
    OUTLINED_FUNCTION_12_55();
    sub_216B3ADD0();
    sub_21700DF14();
    sub_21700E384();
    (*(v71 + 8))(v50, v24);
    OUTLINED_FUNCTION_24_30();
    sub_216E41D9C(v56, v57, v58, v59, v60, v24, v61);
    v42 = v76;
    v41 = &v63 - 6;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_216B38BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_216ABD99C(a2, result, a3, a4);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_216B38C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22_3();
  v138 = v11;
  v13 = v12;
  v134 = v14;
  v111 = v15;
  v16 = *v10;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC15B8);
  OUTLINED_FUNCTION_36(v17);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v116 = &v109 - v19;
  OUTLINED_FUNCTION_4_1();
  v20 = type metadata accessor for SectionContent();
  OUTLINED_FUNCTION_1();
  v131 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_47_1();
  v127 = v25;
  v26 = OUTLINED_FUNCTION_4_1();
  v128 = _s7SectionVMa(v26);
  OUTLINED_FUNCTION_1();
  v130 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_47_1();
  v121 = v30;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3338);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v31);
  v123 = &v109 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3340);
  v34 = OUTLINED_FUNCTION_36(v33);
  MEMORY[0x28223BE20](v34);
  v36 = &v109 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_47_1();
  v135 = v38;
  v39 = *(v16 + 80);
  OUTLINED_FUNCTION_16();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1_0();
  v129 = v43;
  OUTLINED_FUNCTION_3_1();
  v45 = MEMORY[0x28223BE20](v44);
  v47 = &v109 - v46;
  v48 = *(v41 + 16);
  i = v13;
  v137 = v48;
  v48(&v109 - v46, v13, v39, v45);
  v141[0] = v134;
  v117 = v20;
  v141[4] = sub_21700E384();
  v139 = v39;
  v118 = v10;
  v49 = *(v16 + 88);
  v140 = v49;
  type metadata accessor for PageChangeInstruction.Instruction.ItemUpdateDescriptor();
  OUTLINED_FUNCTION_32();
  sub_21700E984();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC3348);
  OUTLINED_FUNCTION_0_161();
  swift_getWitnessTable();
  v50 = v138;
  sub_21700E794();
  if (v50)
  {
    goto LABEL_2;
  }

  v134 = v36;
  v138 = 0;
  v125 = sub_21700E384();
  v114 = v49;
  v51 = *(v49 + 16);
  v52 = *(v51 + 32);
  v126 = v39;
  v53 = v52(v39, v51);
  v54 = 0;
  v55 = *(v53 + 16);
  v113 = v51;
  v112 = v51 + 48;
  v110 = v41;
  v115 = v47;
  v56 = v129;
  v124 = v41 + 16;
  v57 = v136;
  v58 = v137;
  v59 = v131;
  v60 = v119;
  v61 = v121;
  v132 = v55;
  for (i = v53; ; v53 = i)
  {
    if (v54 == v55)
    {
      v62 = 1;
      v54 = v55;
      v63 = v134;
    }

    else
    {
      if (v54 >= *(v53 + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v64 = v54 + 1;
      OUTLINED_FUNCTION_21_1();
      *v65 = v54;
      OUTLINED_FUNCTION_1_135();
      v67 = v66;
      sub_216B3ADD0();
      v63 = v134;
      sub_216972A6C(v67, v134, &qword_27CAC3338);
      v62 = 0;
      v54 = v64;
      v59 = v131;
    }

    __swift_storeEnumTagSinglePayload(v63, v62, 1, v57);
    v68 = v63;
    v69 = v135;
    sub_216972A6C(v68, v135, &qword_27CAC3340);
    if (__swift_getEnumTagSinglePayload(v69, 1, v57) == 1)
    {
      v61 = v115;

      v60 = v126;
      if (!*(a10 + 16))
      {
LABEL_28:
        v58(v56, v61, v60);
        OUTLINED_FUNCTION_24_30();
        sub_216E41D9C(v101, v102, v103, v104, v105, v60, v106);

        (*(v110 + 8))(v61, v60);
        goto LABEL_29;
      }

      if (qword_27CAB5DB0 == -1)
      {
LABEL_25:
        v92 = sub_217007CA4();
        __swift_project_value_buffer(v92, qword_27CAC3320);
        v93 = sub_217007C84();
        v94 = sub_21700ED84();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v141[0] = v96;
          *v95 = 136446210;
          sub_21700DF14();
          v97 = sub_21700E394();
          v99 = v98;

          v100 = sub_2166A85FC(v97, v99, v141);
          v56 = v129;

          *(v95 + 4) = v100;
          _os_log_impl(&dword_216679000, v93, v94, "Unable to update items in sections with IDs: %{public}s", v95, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v96);
          OUTLINED_FUNCTION_6();
          v58 = v137;
          OUTLINED_FUNCTION_6();
        }

        goto LABEL_28;
      }

LABEL_34:
      OUTLINED_FUNCTION_16_49();
      goto LABEL_25;
    }

    v70 = *v69;
    OUTLINED_FUNCTION_1_135();
    sub_2166C63AC();
    v58 = a10;
    if (!*(a10 + 16))
    {
      goto LABEL_19;
    }

    v56 = *v61;
    v71 = v61[1];
    sub_2166AF66C(*v61, v71);
    if ((v72 & 1) == 0)
    {
      OUTLINED_FUNCTION_22_38();
LABEL_19:
      v58 = v137;
      goto LABEL_22;
    }

    v120 = *(v59 + 72);
    sub_216B3ADD0();
    sub_2166C63AC();
    v73 = v138;
    sub_2169A4B24();
    if (v73)
    {
      break;
    }

    v138 = 0;
    v74 = v115;
    v61 = (*(v113 + 48))(v141, v126);
    v76 = v75;
    v77 = *v75;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v76 = v77;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_216E15A14();
      v77 = v91;
      *v76 = v91;
    }

    v60 = v141;
    if ((v70 & 0x8000000000000000) != 0)
    {
      goto LABEL_32;
    }

    if (v70 >= *(v77 + 16))
    {
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_6_75();
    sub_216B3AF08();
    v79 = (v61)(v141, 0);
    v122 = &v109;
    v141[0] = v118[3];
    MEMORY[0x28223BE20](v79);
    v80 = v114;
    *(&v109 - 4) = v126;
    *(&v109 - 3) = v80;
    *(&v109 - 2) = v74;
    *(&v109 - 1) = v70;
    _s15ContentObserverCMa();
    OUTLINED_FUNCTION_32();
    sub_21700E984();
    sub_21700DF14();
    OUTLINED_FUNCTION_0_161();
    swift_getWitnessTable();
    v81 = v138;
    sub_21700E7A4();
    v138 = v81;

    OUTLINED_FUNCTION_1_135();
    v61 = v121;
    sub_216B3ADD0();
    sub_21700DF14();
    v82 = v125;
    swift_isUniquelyReferenced_nonNull_native();
    v141[0] = v82;
    sub_216939D04();

    v125 = v141[0];
    sub_2166AF66C(v56, v71);
    if (v83)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v141[0] = a10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD170);
      sub_21700F554();
      v84 = v141[0];

      v85 = v116;
      sub_2166C63AC();
      OUTLINED_FUNCTION_8();
      v86 = v117;
      sub_21700F574();
      a10 = v84;
      OUTLINED_FUNCTION_22_38();
      v58 = v137;
    }

    else
    {
      v86 = v117;
      OUTLINED_FUNCTION_22_38();
      v58 = v137;
      v85 = v116;
    }

    v88 = v127;
    __swift_storeEnumTagSinglePayload(v85, v87, 1, v86);
    sub_216B3AE24(v85);
    OUTLINED_FUNCTION_11_61();
    sub_216AD16E8(v88, v89);
    v59 = v131;
    v60 = v119;
LABEL_22:
    OUTLINED_FUNCTION_1_117();
    sub_216AD16E8(v61, v90);
    v57 = v136;
    v55 = v132;
  }

  OUTLINED_FUNCTION_11_61();
  sub_216AD16E8(v127, v107);

  OUTLINED_FUNCTION_1_117();
  sub_216AD16E8(v121, v108);

  v41 = v110;
  v47 = v115;
  v39 = v126;
LABEL_2:
  (*(v41 + 8))(v47, v39);
LABEL_29:
  OUTLINED_FUNCTION_21_4();
}