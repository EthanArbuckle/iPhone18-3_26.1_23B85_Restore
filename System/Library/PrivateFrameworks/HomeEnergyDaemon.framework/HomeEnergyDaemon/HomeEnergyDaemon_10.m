void sub_22B21AAAC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22B35DE9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22B36052C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_28140BD10);
  swift_beginAccess();
  (*(v10 + 16))(v13, v14, v9);
  (*(v5 + 16))(v8, a1, v4);
  v31 = v9;
  v15 = v10;
  v16 = sub_22B36050C();
  v17 = sub_22B360D2C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30 = a1;
    v19 = v18;
    v28 = swift_slowAlloc();
    v32 = v28;
    *v19 = 136315138;
    sub_22B21CA9C(&qword_28140B488, MEMORY[0x277CC9578]);
    v20 = sub_22B36131C();
    v29 = v2;
    v22 = v21;
    (*(v5 + 8))(v8, v4);
    v23 = sub_22B1A7B20(v20, v22, &v32);
    v2 = v29;

    *(v19 + 4) = v23;
    _os_log_impl(&dword_22B116000, v16, v17, "Delete TOU Peaks older than %s", v19, 0xCu);
    v24 = v28;
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x23188F650](v24, -1, -1);
    v25 = v19;
    a1 = v30;
    MEMORY[0x23188F650](v25, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  (*(v15 + 8))(v13, v31);
  if (*(v2 + 112))
  {
    v26 = *(v2 + 120);
    v27 = v26;

    sub_22B2191D0(a1, v26);
  }
}

uint64_t sub_22B21AE30()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_22B21AEB4(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v3 = v2;
  v6 = *(sub_22B35FF8C() - 8);
  v7 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_22B21CA88(v7);
  }

  v8 = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v9 = v7[2];
  sub_22B21AF9C(a1, a2);
  *v3 = v7;
}

void sub_22B21AF9C(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  v6 = sub_22B36130C();
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22B35FF8C();
        v9 = sub_22B360A8C();
        *(v9 + 16) = v8;
      }

      v10 = *(sub_22B35FF8C() - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_22B21B3C4(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_22B21B0D8(0, v5, 1, a1, a2);
  }
}

void sub_22B21B0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5)
{
  v7 = v6;
  v53 = a5;
  v54 = a4;
  v11 = sub_22B35FF8C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v48 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v55 = &v39 - v15;
  v19 = MEMORY[0x28223BE20](v16);
  v40 = a2;
  if (a3 != a2)
  {
    v51 = &v39 - v17;
    v20 = *v5;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v49 = v22;
    v50 = (v21 - 8);
    v52 = v21;
    v46 = (v21 + 16);
    v47 = v20;
    v24 = (v20 + v23 * (a3 - 1));
    v45 = -v23;
    v25 = a1 - a3;
    v39 = v23;
    v26 = v20 + v23 * a3;
    v27 = v55;
    while (2)
    {
      v43 = v24;
      v44 = a3;
      v41 = v26;
      v42 = v25;
      v28 = v24;
      while (1)
      {
        v29 = v51;
        v30 = v49;
        (v49)(v51, v26, v11, v19);
        v30(v27, v28, v11);
        v31 = v54(v29, v27);
        if (v7)
        {
          v38 = *v50;
          (*v50)(v27, v11);
          v38(v29, v11);
          return;
        }

        v32 = v31;
        v33 = v27;
        v34 = *v50;
        (*v50)(v33, v11);
        v34(v29, v11);
        if ((v32 & 1) == 0)
        {
          break;
        }

        if (!v47)
        {
          __break(1u);
          return;
        }

        v35 = *v46;
        v36 = v48;
        (*v46)(v48, v26, v11);
        swift_arrayInitWithTakeFrontToBack();
        v35(v28, v36, v11);
        v28 += v45;
        v26 += v45;
        v37 = __CFADD__(v25++, 1);
        v27 = v55;
        v7 = 0;
        if (v37)
        {
          goto LABEL_11;
        }
      }

      v27 = v55;
      v7 = 0;
LABEL_11:
      a3 = v44 + 1;
      v24 = &v43[v39];
      v25 = v42 - 1;
      v26 = v41 + v39;
      if (v44 + 1 != v40)
      {
        continue;
      }

      break;
    }
  }
}

void sub_22B21B3C4(int64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v143 = a1;
  v164 = sub_22B35FF8C();
  v12 = *(*(v164 - 8) + 64);
  MEMORY[0x28223BE20](v164);
  v147 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v150 = &v135 - v15;
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v135 - v19;
  MEMORY[0x28223BE20](v21);
  v141 = &v135 - v22;
  MEMORY[0x28223BE20](v23);
  v30 = MEMORY[0x28223BE20](&v135 - v24);
  v162 = v27;
  v163 = a3;
  v31 = a3[1];
  if (v31 < 1)
  {
    v33 = MEMORY[0x277D84F90];
    v34 = a4;
LABEL_104:
    a4 = *v143;
    if (*v143)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_106;
    }

    goto LABEL_147;
  }

  v142 = &v135 - v26;
  v140 = v25;
  v152 = v20;
  v148 = v29;
  v149 = v28;
  v138 = a6;
  v32 = 0;
  v160 = (v27 + 8);
  v161 = v27 + 16;
  v156 = (v27 + 32);
  v33 = MEMORY[0x277D84F90];
  v157 = a5;
  v34 = a4;
  v159 = a4;
  while (1)
  {
    v35 = v32;
    v144 = v33;
    if ((v32 + 1) < v31)
    {
      v145 = v32;
      v146 = v31;
      v36 = *v163;
      v37 = *(v162 + 72);
      a4 = *v163 + v37 * (v32 + 1);
      v38 = *(v162 + 16);
      v39 = v164;
      v38(v142, a4, v164, v30);
      v158 = v37;
      v139 = v36;
      v40 = &v36[v37 * v145];
      v41 = v140;
      v153 = v38;
      (v38)(v140, v40, v39);
      v42 = v142;
      LODWORD(v155) = v34(v142, v41);
      if (v7)
      {
        v134 = *v160;
        (*v160)(v41, v39);
        v134(v42, v39);
        goto LABEL_117;
      }

      v165 = 0;
      v43 = *v160;
      (*v160)(v41, v39);
      v151 = v43;
      (v43)(v42, v39);
      v137 = v146 - 1;
      v154 = v146 - 2;
      v44 = v145;
      a5 = v157;
      v45 = v158;
      v46 = &v139[v158 * (v145 + 2)];
      v47 = v141;
      while (v154 != v44)
      {
        v48 = v164;
        v49 = v153;
        (v153)(v47, v46, v164);
        v50 = a5;
        v51 = v152;
        (v49)(v152, a4, v48);
        v52 = v50;
        v53 = v165;
        v54 = v159(v47, v51);
        v165 = v53;
        if (v53)
        {
          v132 = v151;
          (v151)(v51, v48);
          v132(v47, v48);
LABEL_117:

          return;
        }

        v55 = v54;
        v56 = v151;
        (v151)(v51, v48);
        v56(v47, v48);
        ++v44;
        v45 = v158;
        v46 += v158;
        a4 += v158;
        a5 = v52;
        if ((v155 ^ v55))
        {
          v57 = v44 + 1;
          goto LABEL_12;
        }
      }

      v44 = v137;
      v57 = v146;
LABEL_12:
      v35 = v145;
      if (v155)
      {
        if (v57 < v145)
        {
          goto LABEL_141;
        }

        v33 = v164;
        if (v145 <= v44)
        {
          a4 = v45 * (v57 - 1);
          v58 = v57;
          v59 = v57 * v45;
          v146 = v58;
          v60 = v58;
          v61 = v145;
          v62 = v145 * v45;
          do
          {
            if (v61 != --v60)
            {
              v64 = *v163;
              if (!*v163)
              {
                goto LABEL_145;
              }

              v65 = *v156;
              (*v156)(v147, &v64[v62], v164);
              if (v62 < a4 || &v64[v62] >= &v64[v59])
              {
                v63 = v164;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v63 = v164;
                if (v62 != a4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v65(&v64[a4], v147, v63);
              a5 = v157;
              v45 = v158;
              v33 = v63;
            }

            ++v61;
            a4 -= v45;
            v59 -= v45;
            v62 += v45;
          }

          while (v61 < v60);
          v7 = v165;
          v34 = v159;
          v35 = v145;
          v57 = v146;
        }

        else
        {
          v7 = v165;
          v34 = v159;
        }
      }

      else
      {
        v33 = v164;
        v7 = v165;
        v34 = v159;
      }
    }

    else
    {
      v57 = (v32 + 1);
      v33 = v164;
    }

    v66 = v163[1];
    if (v57 < v66)
    {
      if (__OFSUB__(v57, v35))
      {
        goto LABEL_137;
      }

      if (v57 - v35 < v138)
      {
        if (__OFADD__(v35, v138))
        {
          __break(1u);
        }

        else
        {
          v146 = v57;
          if (&v35[v138] >= v66)
          {
            v67 = v66;
          }

          else
          {
            v67 = &v35[v138];
          }

          if (v67 >= v35)
          {
            if (v146 == v67)
            {
              v57 = v146;
              goto LABEL_38;
            }

            v165 = v7;
            v114 = *v163;
            v115 = *(v162 + 72);
            v158 = *(v162 + 16);
            v116 = (v114 + v115 * (v146 - 1));
            v154 = -v115;
            v155 = v114;
            v145 = v35;
            v117 = &v35[-v146];
            v136 = v115;
            a4 = v114 + v146 * v115;
            v153 = v67;
            while (1)
            {
              v137 = a4;
              v139 = v117;
              v151 = v116;
              while (1)
              {
                v118 = v148;
                v119 = v158;
                (v158)(v148, a4, v33, v30);
                v120 = v149;
                v119(v149, v116, v33);
                v121 = v165;
                v122 = v159(v118, v120);
                v165 = v121;
                if (v121)
                {
                  v133 = *v160;
                  (*v160)(v120, v33);
                  v133(v118, v33);
                  goto LABEL_117;
                }

                v123 = v122;
                v124 = *v160;
                (*v160)(v120, v33);
                v124(v118, v33);
                if ((v123 & 1) == 0)
                {
                  break;
                }

                if (!v155)
                {
                  goto LABEL_143;
                }

                v125 = *v156;
                v126 = v150;
                v33 = v164;
                (*v156)(v150, a4, v164);
                swift_arrayInitWithTakeFrontToBack();
                v125(v116, v126, v33);
                v116 += v154;
                a4 += v154;
                v127 = __CFADD__(v117++, 1);
                a5 = v157;
                if (v127)
                {
                  goto LABEL_101;
                }
              }

              a5 = v157;
              v33 = v164;
LABEL_101:
              v116 = &v151[v136];
              v117 = v139 - 1;
              a4 = v137 + v136;
              v57 = v153;
              if (++v146 == v153)
              {
                v34 = v159;
                v7 = v165;
                v35 = v145;
                goto LABEL_38;
              }
            }
          }
        }

        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }
    }

LABEL_38:
    v33 = v144;
    if (v57 < v35)
    {
      goto LABEL_136;
    }

    a4 = v34;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_22B21C984(0, *(v33 + 2) + 1, 1, v33);
    }

    v69 = *(v33 + 2);
    v68 = *(v33 + 3);
    v70 = v69 + 1;
    if (v69 >= v68 >> 1)
    {
      v33 = sub_22B21C984((v68 > 1), v69 + 1, 1, v33);
    }

    *(v33 + 2) = v70;
    v71 = &v33[16 * v69];
    *(v71 + 4) = v35;
    *(v71 + 5) = v57;
    v153 = v57;
    v72 = *v143;
    if (!*v143)
    {
      goto LABEL_146;
    }

    if (v69)
    {
      break;
    }

    a5 = v157;
    v34 = a4;
LABEL_90:
    v31 = v163[1];
    v32 = v153;
    if (v153 >= v31)
    {
      goto LABEL_104;
    }
  }

  a5 = v157;
  v34 = a4;
  while (1)
  {
    a4 = v70 - 1;
    if (v70 >= 4)
    {
      v77 = &v33[16 * v70 + 32];
      v78 = *(v77 - 64);
      v79 = *(v77 - 56);
      v83 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v83)
      {
        goto LABEL_123;
      }

      v82 = *(v77 - 48);
      v81 = *(v77 - 40);
      v83 = __OFSUB__(v81, v82);
      v75 = v81 - v82;
      v76 = v83;
      if (v83)
      {
        goto LABEL_124;
      }

      v84 = &v33[16 * v70];
      v86 = *v84;
      v85 = *(v84 + 1);
      v83 = __OFSUB__(v85, v86);
      v87 = v85 - v86;
      if (v83)
      {
        goto LABEL_126;
      }

      v83 = __OFADD__(v75, v87);
      v88 = v75 + v87;
      if (v83)
      {
        goto LABEL_129;
      }

      if (v88 >= v80)
      {
        v106 = &v33[16 * a4 + 32];
        v108 = *v106;
        v107 = *(v106 + 1);
        v83 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v83)
        {
          goto LABEL_135;
        }

        if (v75 < v109)
        {
          a4 = v70 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

    if (v70 == 3)
    {
      v73 = *(v33 + 4);
      v74 = *(v33 + 5);
      v83 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      v76 = v83;
LABEL_59:
      if (v76)
      {
        goto LABEL_125;
      }

      v89 = &v33[16 * v70];
      v91 = *v89;
      v90 = *(v89 + 1);
      v92 = __OFSUB__(v90, v91);
      v93 = v90 - v91;
      v94 = v92;
      if (v92)
      {
        goto LABEL_128;
      }

      v95 = &v33[16 * a4 + 32];
      v97 = *v95;
      v96 = *(v95 + 1);
      v83 = __OFSUB__(v96, v97);
      v98 = v96 - v97;
      if (v83)
      {
        goto LABEL_131;
      }

      if (__OFADD__(v93, v98))
      {
        goto LABEL_132;
      }

      if (v93 + v98 >= v75)
      {
        if (v75 < v98)
        {
          a4 = v70 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_73;
    }

    v99 = &v33[16 * v70];
    v101 = *v99;
    v100 = *(v99 + 1);
    v83 = __OFSUB__(v100, v101);
    v93 = v100 - v101;
    v94 = v83;
LABEL_73:
    if (v94)
    {
      goto LABEL_127;
    }

    v102 = &v33[16 * a4];
    v104 = *(v102 + 4);
    v103 = *(v102 + 5);
    v83 = __OFSUB__(v103, v104);
    v105 = v103 - v104;
    if (v83)
    {
      goto LABEL_130;
    }

    if (v105 < v93)
    {
      goto LABEL_90;
    }

LABEL_80:
    v110 = a4 - 1;
    if (a4 - 1 >= v70)
    {
      break;
    }

    if (!*v163)
    {
      goto LABEL_142;
    }

    v111 = *&v33[16 * v110 + 32];
    v112 = *&v33[16 * a4 + 40];
    sub_22B21BFD0(*v163 + *(v162 + 72) * v111, *v163 + *(v162 + 72) * *&v33[16 * a4 + 32], *v163 + *(v162 + 72) * v112, v72, v34, a5);
    if (v7)
    {
      goto LABEL_117;
    }

    if (v112 < v111)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_22B21C768(v33);
    }

    if (v110 >= *(v33 + 2))
    {
      goto LABEL_122;
    }

    v113 = &v33[16 * v110];
    *(v113 + 4) = v111;
    *(v113 + 5) = v112;
    v166 = v33;
    sub_22B21C6DC(a4);
    v33 = v166;
    v70 = *(v166 + 2);
    if (v70 <= 1)
    {
      goto LABEL_90;
    }
  }

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
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  v33 = sub_22B21C768(v33);
LABEL_106:
  v166 = v33;
  v128 = *(v33 + 2);
  if (v128 < 2)
  {
    goto LABEL_117;
  }

  while (*v163)
  {
    v129 = *&v33[16 * v128];
    v130 = *&v33[16 * v128 + 24];
    sub_22B21BFD0(*v163 + *(v162 + 72) * v129, *v163 + *(v162 + 72) * *&v33[16 * v128 + 16], *v163 + *(v162 + 72) * v130, a4, v34, a5);
    if (v7)
    {
      goto LABEL_117;
    }

    if (v130 < v129)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_22B21C768(v33);
    }

    if (v128 - 2 >= *(v33 + 2))
    {
      goto LABEL_134;
    }

    v131 = &v33[16 * v128];
    *v131 = v129;
    *(v131 + 1) = v130;
    v166 = v33;
    sub_22B21C6DC(v128 - 1);
    v33 = v166;
    v128 = *(v166 + 2);
    if (v128 <= 1)
    {
      goto LABEL_117;
    }
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

void sub_22B21BFD0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, uint64_t), uint64_t a6)
{
  v78 = a6;
  v79 = a5;
  v77 = sub_22B35FF8C();
  v11 = *(v77 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v77);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v69 - v17;
  MEMORY[0x28223BE20](v19);
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v24 = &v69 - v20;
  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_67;
  }

  v25 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v23 != -1)
  {
    v26 = (a2 - a1) / v23;
    v85 = a1;
    v84 = a4;
    v80 = v23;
    if (v26 < v25 / v23)
    {
      v27 = v26 * v23;
      if (a4 < a1 || a1 + v27 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v76 = a4 + v27;
      v83 = a4 + v27;
      if (v27 >= 1 && a2 < a3)
      {
        v53 = *(v11 + 16);
        v74 = v18;
        v75 = v11 + 16;
        v72 = v53;
        v73 = (v11 + 8);
        v54 = v24;
        v55 = v77;
        v56 = v6;
        v71 = a3;
        while (1)
        {
          v81 = a1;
          v57 = v72;
          v72(v54, a2, v55);
          v58 = a2;
          v59 = v54;
          v60 = v74;
          v57(v74, a4, v55);
          v61 = v79(v59, v60);
          if (v56)
          {
            break;
          }

          v62 = v61;
          v82 = 0;
          v63 = *v73;
          (*v73)(v60, v55);
          v63(v59, v55);
          v54 = v59;
          if (v62)
          {
            v64 = v80;
            v65 = v81;
            a2 = v58 + v80;
            if (v81 < v58 || v81 >= a2)
            {
              v55 = v77;
              swift_arrayInitWithTakeFrontToBack();
              v64 = v80;
              v56 = v82;
            }

            else
            {
              v56 = v82;
              v55 = v77;
              if (v81 != v58)
              {
                swift_arrayInitWithTakeBackToFront();
                v64 = v80;
              }
            }
          }

          else
          {
            v64 = v80;
            v65 = v81;
            v66 = a4 + v80;
            a2 = v58;
            if (v81 < a4 || v81 >= v66)
            {
              v55 = v77;
              swift_arrayInitWithTakeFrontToBack();
              v64 = v80;
              v56 = v82;
            }

            else
            {
              v56 = v82;
              v55 = v77;
              if (v81 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
                v64 = v80;
              }
            }

            v84 = v66;
            a4 = v66;
          }

          a1 = v65 + v64;
          v85 = a1;
          if (a4 >= v76 || a2 >= v71)
          {
            goto LABEL_65;
          }
        }

        v67 = *v73;
        (*v73)(v60, v55);
        v67(v59, v55);
      }

LABEL_65:
      sub_22B21C7AC(&v85, &v84, &v83, MEMORY[0x277D180E0]);
      return;
    }

    v76 = v21;
    v28 = a3;
    v29 = a2;
    v30 = v25 / v23 * v23;
    if (a4 < v29 || v29 + v30 <= a4)
    {
      v31 = v29;
      v32 = v77;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v31 = v29;
      v32 = v77;
      if (a4 == v29)
      {
LABEL_24:
        v82 = v6;
        v34 = a4 + v30;
        if (v30 >= 1)
        {
          v35 = -v23;
          v69 = a4;
          v70 = (v11 + 16);
          v72 = (v11 + 8);
          v36 = a4 + v30;
          v37 = v28;
          v38 = v76;
          v81 = a1;
          v74 = -v23;
          do
          {
            v75 = v34;
            v71 = v34;
            v39 = v31;
            v77 = v31 + v35;
            v73 = v31;
            while (1)
            {
              if (v39 <= a1)
              {
                v85 = v39;
                v34 = v71;
                goto LABEL_64;
              }

              v40 = v37;
              v41 = v74;
              v80 = v36;
              v42 = v36 + v74;
              v43 = *v70;
              (*v70)(v38, v36 + v74, v32);
              v43(v14, v77, v32);
              v44 = v38;
              v45 = v82;
              v46 = v79(v38, v14);
              v82 = v45;
              if (v45)
              {
                v68 = *v72;
                (*v72)(v14, v32);
                v68(v44, v32);
                v85 = v73;
                v34 = v75;
                goto LABEL_64;
              }

              v47 = v46;
              v48 = &v40[v41];
              v49 = v14;
              v50 = *v72;
              v51 = v49;
              (*v72)();
              v50(v44, v32);
              if (v47)
              {
                break;
              }

              v37 = &v40[v41];
              if (v40 < v80 || v48 >= v80)
              {
                swift_arrayInitWithTakeFrontToBack();
                v14 = v51;
                v38 = v76;
              }

              else
              {
                v14 = v51;
                v38 = v76;
                if (v40 != v80)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v75 = v42;
              v36 = v42;
              a1 = v81;
              v39 = v73;
              if (v42 <= v69)
              {
                v31 = v73;
                v34 = v75;
                goto LABEL_63;
              }
            }

            v37 = &v40[v41];
            if (v40 < v73 || v48 >= v73)
            {
              v31 = v77;
              swift_arrayInitWithTakeFrontToBack();
              v52 = v69;
              v14 = v51;
              v38 = v76;
            }

            else
            {
              v38 = v76;
              v31 = v77;
              v52 = v69;
              v14 = v51;
              if (v40 != v73)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v36 = v80;
            a1 = v81;
            v35 = v74;
            v34 = v75;
          }

          while (v80 > v52);
        }

LABEL_63:
        v85 = v31;
LABEL_64:
        v83 = v34;
        goto LABEL_65;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v23 = v80;
    goto LABEL_24;
  }

LABEL_68:
  __break(1u);
}

uint64_t sub_22B21C6DC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22B21C768(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_22B21C7AC(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

uint64_t sub_22B21C894(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA870, &unk_22B366480);
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

char *sub_22B21C984(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA850, &qword_22B365EF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_22B21CA9C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22B21CAE4()
{
  v1 = *(sub_22B35DE9C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_22B219510(v0 + v2, v3);
}

uint64_t type metadata accessor for CDTOUPeak()
{
  result = qword_27D8BA878;
  if (!qword_27D8BA878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B21CC24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CDTOUPeak();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_22B21CC88()
{
  v0 = sub_22B36052C();
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v3 = MEMORY[0x23188EEB0](v2);
  sub_22B217524(&v6, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

void sub_22B21CF2C()
{
  sub_22B35DE9C();
  if (v0 <= 0x3F)
  {
    sub_22B21CFC8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22B21CFC8()
{
  if (!qword_27D8BA888)
  {
    sub_22B35FF8C();
    v0 = sub_22B360AAC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8BA888);
    }
  }
}

uint64_t HomeEnergyStatusCode.description.getter(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0xD000000000000013;
      }

      if (a1 == 3)
      {
        return 0xD000000000000015;
      }

      return 0xD000000000000014;
    }

    if (!a1)
    {
      return 0x73736563637553;
    }

    if (a1 == 1)
    {
      return 0xD000000000000017;
    }

LABEL_22:
    result = sub_22B36138C();
    __break(1u);
    return result;
  }

  if (a1 > 6)
  {
    switch(a1)
    {
      case 7:
        return 0xD000000000000011;
      case 8:
        return 0x2065636976726553;
      case 9:
        return 0xD000000000000023;
    }

    goto LABEL_22;
  }

  if (a1 == 5)
  {
    return 0x6573616261746144;
  }

  else
  {
    return 0x6961676120797254;
  }
}

uint64_t sub_22B21D218()
{
  v1 = *v0;
  sub_22B36149C();
  MEMORY[0x23188EDD0](v1);
  return sub_22B3614DC();
}

uint64_t sub_22B21D28C()
{
  v1 = *v0;
  sub_22B36149C();
  MEMORY[0x23188EDD0](v1);
  return sub_22B3614DC();
}

unint64_t sub_22B21D2D0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22B21D30C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_22B21D30C(unint64_t result)
{
  if (result > 9)
  {
    return 0;
  }

  return result;
}

unint64_t sub_22B21D320()
{
  result = qword_27D8BA890;
  if (!qword_27D8BA890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BA890);
  }

  return result;
}

uint64_t sub_22B21D384()
{
  type metadata accessor for LoadEventsDownloaderAndProcessor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  qword_27D8BB1C8 = v0;
  return result;
}

uint64_t sub_22B21D3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = sub_22B360B6C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_22B12B3CC(a1, v19);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a2;
  sub_22B11A02C(v19, (v15 + 5));
  v15[10] = a3;
  v15[11] = a4;
  v15[12] = a5;

  v16 = sub_22B145224(0, 0, v13, &unk_22B3660F8, v15);
  sub_22B118DDC(v13);
  return v16;
}

uint64_t sub_22B21D550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_22B21D578, 0, 0);
}

uint64_t sub_22B21D578()
{
  v1 = v0[5];
  v2 = v0[6];

  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_22B21D640;
  v4 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  v8 = v0[2];

  return (sub_22B346628)(v7, v8, v6, v4, v5);
}

uint64_t sub_22B21D640()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22B21D774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = sub_22B36052C();
  v3[23] = v4;
  v5 = *(v4 - 8);
  v3[24] = v5;
  v6 = *(v5 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B21D868, 0, 0);
}

uint64_t sub_22B21D868()
{
  v21 = v0;
  v0[30] = os_transaction_create();
  sub_22B220980();
  if (qword_28140A0C8[0] != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[21];
  v5 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[31] = v5;
  swift_beginAccess();
  v6 = *(v3 + 16);
  v0[32] = v6;
  v0[33] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);

  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[29];
  v11 = v0[23];
  v12 = v0[24];
  if (v9)
  {
    v14 = v0[20];
    v13 = v0[21];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_22B1A7B20(v14, v13, &v20);
    _os_log_impl(&dword_22B116000, v7, v8, "[LoadEventsDownloaderAndProcessor] Executing task %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23188F650](v16, -1, -1);
    MEMORY[0x23188F650](v15, -1, -1);
  }

  v17 = *(v12 + 8);
  v17(v10, v11);
  v0[34] = v17;
  if (qword_27D8B9FA8 != -1)
  {
    swift_once();
  }

  v18 = qword_27D8BB1C8;
  v0[35] = qword_27D8BB1C8;

  return MEMORY[0x2822009F8](sub_22B21DAD4, v18, 0);
}

uint64_t sub_22B21DAD4()
{
  v1 = *(v0 + 280);
  if (*(v1 + 112))
  {
    v2 = sub_22B21E28C;
  }

  else
  {
    *(v1 + 112) = 1;
    v2 = sub_22B21DB14;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B21DB14()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 176);
  }

  else
  {
    v2 = sub_22B35EABC();
    *(v0 + 16) = sub_22B35EAAC();
    *(v0 + 40) = v2;
    *(v0 + 48) = &off_283EF8EA8;
    type metadata accessor for ActivityLogCoordinator();
    v1 = swift_allocObject();
    v3 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v2);
    v4 = *(v2 - 8);
    v5 = *(v4 + 64) + 15;
    v6 = swift_task_alloc();
    (*(v4 + 16))(v6, v3, v2);
    v7 = *v6;
    v1[5] = v2;
    v1[6] = &off_283EF8EA8;
    v1[2] = v7;
    v1[7] = 5000;
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  *(v0 + 80) = &type metadata for DefaultLoadEventUploader;
  *(v0 + 88) = &off_283EFC910;
  type metadata accessor for LoadEventsProcessor();
  v8 = swift_allocObject();
  *(v0 + 288) = v8;
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, &type metadata for DefaultLoadEventUploader);
  *(v0 + 120) = &type metadata for DefaultLoadEventUploader;
  *(v0 + 128) = &off_283EFC910;

  swift_defaultActor_initialize();
  sub_22B11A02C((v0 + 96), v8 + 112);
  *(v8 + 152) = v1;
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v9 = swift_task_alloc();
  *(v0 + 296) = v9;
  *v9 = v0;
  v9[1] = sub_22B21DD18;

  return sub_22B1F628C();
}

uint64_t sub_22B21DD18(char a1)
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 312) = a1;

  return MEMORY[0x2822009F8](sub_22B21DE38, 0, 0);
}

uint64_t sub_22B21DE38()
{
  if (*(v0 + 312) == 1)
  {
    v1 = *(v0 + 264);
    (*(v0 + 256))(*(v0 + 224), *(v0 + 248), *(v0 + 184));
    v2 = sub_22B36050C();
    v3 = sub_22B360CFC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_22B116000, v2, v3, "[LoadEventsDownloaderAndProcessor] Cleanup of load events was successful. Reset retry counter", v4, 2u);
      MEMORY[0x23188F650](v4, -1, -1);
    }

    v6 = *(v0 + 272);
    v5 = *(v0 + 280);
    v7 = *(v0 + 224);
    v8 = *(v0 + 184);
    v9 = *(v0 + 192);

    v6(v7, v8);
    v10 = sub_22B21DF74;
    v11 = v5;
  }

  else
  {
    v11 = *(v0 + 280);
    v10 = sub_22B21DF9C;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t sub_22B21DF74()
{
  v1 = *(v0 + 280);
  *(v0 + 313) = 1;
  *(v1 + 120) = 0;
  return MEMORY[0x2822009F8](sub_22B21E1C0, v1, 0);
}

uint64_t sub_22B21DFC4()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = v0[23];
  if (v0[38] >= 2)
  {
    v2(v0[27], v3, v4);
    v14 = sub_22B36050C();
    v15 = sub_22B360D1C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22B116000, v14, v15, "[LoadEventsDownloaderAndProcessor] Cleanup of load events was not successful. Current retry counter >= 2. Reset counter and halt", v16, 2u);
      MEMORY[0x23188F650](v16, -1, -1);
    }

    v17 = v0[34];
    v8 = v0[35];
    v18 = v0[27];
    v19 = v0[23];
    v20 = v0[24];

    v17(v18, v19);
    v13 = sub_22B221440;
  }

  else
  {
    v2(v0[26], v3, v4);
    v5 = sub_22B36050C();
    v6 = sub_22B360D1C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22B116000, v5, v6, "[LoadEventsDownloaderAndProcessor] Cleanup of load events was not successful. Current retry counter < 2. Increment counter and retry", v7, 2u);
      MEMORY[0x23188F650](v7, -1, -1);
    }

    v9 = v0[34];
    v8 = v0[35];
    v10 = v0[26];
    v11 = v0[23];
    v12 = v0[24];

    v9(v10, v11);
    v13 = sub_22B21E194;
  }

  return MEMORY[0x2822009F8](v13, v8, 0);
}

uint64_t sub_22B21E194()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 304) + 1;
  *(v0 + 313) = 0;
  *(v1 + 120) = v2;
  return MEMORY[0x2822009F8](sub_22B21E1C0, v1, 0);
}

uint64_t sub_22B21E1E4()
{
  v1 = *(v0 + 240);
  swift_unknownObjectRelease();
  v2 = *(v0 + 313);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v6 = *(v0 + 208);
  v5 = *(v0 + 216);
  v7 = *(v0 + 200);

  v8 = *(v0 + 8);

  return v8(v2);
}

uint64_t sub_22B21E28C()
{
  v1 = *(v0 + 264);
  (*(v0 + 256))(*(v0 + 200), *(v0 + 248), *(v0 + 184));
  v2 = sub_22B36050C();
  v3 = sub_22B360D2C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 272);
  v6 = *(v0 + 240);
  v8 = *(v0 + 192);
  v7 = *(v0 + 200);
  v9 = *(v0 + 184);
  if (v4)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22B116000, v2, v3, "[LoadEventsDownloaderAndProcessor] In progress already", v10, 2u);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  swift_unknownObjectRelease();

  v5(v7, v9);
  v12 = *(v0 + 224);
  v11 = *(v0 + 232);
  v14 = *(v0 + 208);
  v13 = *(v0 + 216);
  v15 = *(v0 + 200);

  v16 = *(v0 + 8);

  return v16(1);
}

uint64_t sub_22B21E404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22B21E428, 0, 0);
}

uint64_t sub_22B21E428()
{
  v1 = v0[4];

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_22B21E4E0;
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  return sub_22B346B20(v4, v5, v3);
}

uint64_t sub_22B21E4E0()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_22B21E5F0(uint64_t a1)
{
  v1[20] = a1;
  v2 = sub_22B36052C();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B21E6E0, 0, 0);
}

uint64_t sub_22B21E6E0()
{
  v18 = v0;
  v0[28] = os_transaction_create();
  sub_22B220980();
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = v0[21];
  v3 = v0[22];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[29] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[30] = v5;
  v0[31] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[27];
  v10 = v0[21];
  v11 = v0[22];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_22B1A7B20(0xD000000000000032, 0x800000022B36CB20, &v17);
    _os_log_impl(&dword_22B116000, v6, v7, "[LoadEventsDownloaderAndProcessor] Executing task %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);
  }

  v14 = *(v11 + 8);
  v14(v9, v10);
  v0[32] = v14;
  if (qword_27D8B9FA8 != -1)
  {
    swift_once();
  }

  v15 = qword_27D8BB1C8;
  v0[33] = qword_27D8BB1C8;

  return MEMORY[0x2822009F8](sub_22B21E940, v15, 0);
}

uint64_t sub_22B21E940()
{
  v1 = *(v0 + 264);
  if (*(v1 + 112))
  {
    v2 = sub_22B21F0FC;
  }

  else
  {
    *(v1 + 112) = 1;
    v2 = sub_22B21E980;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B21E980()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    v2 = sub_22B35EABC();
    *(v0 + 16) = sub_22B35EAAC();
    *(v0 + 40) = v2;
    *(v0 + 48) = &off_283EF8EA8;
    type metadata accessor for ActivityLogCoordinator();
    v1 = swift_allocObject();
    v3 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v2);
    v4 = *(v2 - 8);
    v5 = *(v4 + 64) + 15;
    v6 = swift_task_alloc();
    (*(v4 + 16))(v6, v3, v2);
    v7 = *v6;
    v1[5] = v2;
    v1[6] = &off_283EF8EA8;
    v1[2] = v7;
    v1[7] = 5000;
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  *(v0 + 80) = &type metadata for DefaultLoadEventUploader;
  *(v0 + 88) = &off_283EFC910;
  type metadata accessor for LoadEventsProcessor();
  v8 = swift_allocObject();
  *(v0 + 272) = v8;
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, &type metadata for DefaultLoadEventUploader);
  *(v0 + 120) = &type metadata for DefaultLoadEventUploader;
  *(v0 + 128) = &off_283EFC910;

  swift_defaultActor_initialize();
  sub_22B11A02C((v0 + 96), v8 + 112);
  *(v8 + 152) = v1;
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v9 = swift_task_alloc();
  *(v0 + 280) = v9;
  *v9 = v0;
  v9[1] = sub_22B21EB88;

  return sub_22B1F195C(0);
}

uint64_t sub_22B21EB88(char a1)
{
  v2 = *(*v1 + 280);
  v3 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 296) = a1;

  return MEMORY[0x2822009F8](sub_22B21ECA8, 0, 0);
}

uint64_t sub_22B21ECA8()
{
  if (*(v0 + 296) == 1)
  {
    v1 = *(v0 + 248);
    (*(v0 + 240))(*(v0 + 208), *(v0 + 232), *(v0 + 168));
    v2 = sub_22B36050C();
    v3 = sub_22B360CFC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_22B116000, v2, v3, "[LoadEventsDownloaderAndProcessor] Processed load events with result successful. Reset retry counter", v4, 2u);
      MEMORY[0x23188F650](v4, -1, -1);
    }

    v6 = *(v0 + 256);
    v5 = *(v0 + 264);
    v7 = *(v0 + 208);
    v8 = *(v0 + 168);
    v9 = *(v0 + 176);

    v6(v7, v8);
    v10 = sub_22B21EDE4;
    v11 = v5;
  }

  else
  {
    v11 = *(v0 + 264);
    v10 = sub_22B21EE0C;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t sub_22B21EDE4()
{
  v1 = *(v0 + 264);
  *(v0 + 297) = 1;
  *(v1 + 120) = 0;
  return MEMORY[0x2822009F8](sub_22B21F030, v1, 0);
}

uint64_t sub_22B21EE34()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v4 = v0[21];
  if (v0[36] >= 2)
  {
    v2(v0[25], v3, v4);
    v14 = sub_22B36050C();
    v15 = sub_22B360D1C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22B116000, v14, v15, "[LoadEventsDownloaderAndProcessor] Processed load events with result not successful. Current retry counter >= 2. Reset counter and halt", v16, 2u);
      MEMORY[0x23188F650](v16, -1, -1);
    }

    v17 = v0[32];
    v8 = v0[33];
    v18 = v0[25];
    v19 = v0[21];
    v20 = v0[22];

    v17(v18, v19);
    v13 = sub_22B221444;
  }

  else
  {
    v2(v0[24], v3, v4);
    v5 = sub_22B36050C();
    v6 = sub_22B360D1C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22B116000, v5, v6, "[LoadEventsDownloaderAndProcessor] Processed load events with result not successful. Current retry counter < 2. Increment counter and retry", v7, 2u);
      MEMORY[0x23188F650](v7, -1, -1);
    }

    v9 = v0[32];
    v8 = v0[33];
    v10 = v0[24];
    v11 = v0[21];
    v12 = v0[22];

    v9(v10, v11);
    v13 = sub_22B21F004;
  }

  return MEMORY[0x2822009F8](v13, v8, 0);
}

uint64_t sub_22B21F004()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 288) + 1;
  *(v0 + 297) = 0;
  *(v1 + 120) = v2;
  return MEMORY[0x2822009F8](sub_22B21F030, v1, 0);
}

uint64_t sub_22B21F054()
{
  v1 = *(v0 + 224);
  swift_unknownObjectRelease();
  v2 = *(v0 + 297);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v6 = *(v0 + 192);
  v5 = *(v0 + 200);
  v7 = *(v0 + 184);

  v8 = *(v0 + 8);

  return v8(v2);
}

uint64_t sub_22B21F0FC()
{
  v1 = *(v0 + 248);
  (*(v0 + 240))(*(v0 + 184), *(v0 + 232), *(v0 + 168));
  v2 = sub_22B36050C();
  v3 = sub_22B360D2C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 256);
  v6 = *(v0 + 224);
  v8 = *(v0 + 176);
  v7 = *(v0 + 184);
  v9 = *(v0 + 168);
  if (v4)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22B116000, v2, v3, "[LoadEventsDownloaderAndProcessor] In progress already", v10, 2u);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  swift_unknownObjectRelease();

  v5(v7, v9);
  v12 = *(v0 + 208);
  v11 = *(v0 + 216);
  v14 = *(v0 + 192);
  v13 = *(v0 + 200);
  v15 = *(v0 + 184);

  v16 = *(v0 + 8);

  return v16(1);
}

uint64_t sub_22B21F274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = sub_22B360B6C();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_22B12B3CC(a1, v18);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a2;
  sub_22B11A02C(v18, (v14 + 5));
  v14[10] = a3;

  v15 = sub_22B145224(0, 0, v12, a5, v14);
  sub_22B118DDC(v12);
  return v15;
}

uint64_t sub_22B21F3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22B21F3DC, 0, 0);
}

uint64_t sub_22B21F3DC()
{
  v1 = v0[4];

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_22B22143C;
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  return sub_22B347010(v4, v5, v3);
}

uint64_t sub_22B21F494(uint64_t a1)
{
  v1[50] = a1;
  v2 = sub_22B35F6FC();
  v1[51] = v2;
  v3 = *(v2 - 8);
  v1[52] = v3;
  v4 = *(v3 + 64) + 15;
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v5 = sub_22B35DE9C();
  v1[55] = v5;
  v6 = *(v5 - 8);
  v1[56] = v6;
  v7 = *(v6 + 64) + 15;
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v8 = sub_22B36052C();
  v1[60] = v8;
  v9 = *(v8 - 8);
  v1[61] = v9;
  v10 = *(v9 + 64) + 15;
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B21F660, 0, 0);
}

uint64_t sub_22B21F660()
{
  v18 = v0;
  v0[67] = os_transaction_create();
  sub_22B220980();
  v0[68] = 0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[66];
  v2 = v0[60];
  v3 = v0[61];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[69] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[70] = v5;
  v0[71] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[66];
  v10 = v0[60];
  v11 = v0[61];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_22B1A7B20(0xD000000000000026, 0x800000022B36A4C0, &v17);
    _os_log_impl(&dword_22B116000, v6, v7, "[LoadEventsDownloaderAndProcessor] Executing task %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);
  }

  v14 = *(v11 + 8);
  v14(v9, v10);
  v0[72] = v14;
  if (qword_27D8B9FA8 != -1)
  {
    swift_once();
  }

  v15 = qword_27D8BB1C8;
  v0[73] = qword_27D8BB1C8;

  return MEMORY[0x2822009F8](sub_22B21F8C8, v15, 0);
}

uint64_t sub_22B21F8C8()
{
  v1 = *(v0 + 584);
  if (*(v1 + 112))
  {
    v2 = sub_22B2207E4;
  }

  else
  {
    *(v1 + 112) = 1;
    v2 = sub_22B21F908;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B21F908()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 472);
  v3 = *(v0 + 440);
  v4 = *(v0 + 448);
  sub_22B35DE6C();
  sub_22B35DDCC();
  v5 = *(v4 + 8);
  *(v0 + 592) = v5;
  *(v0 + 600) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v39 = v5;
  v5(v1, v3);
  if (sub_22B35EEBC())
  {
    if (qword_27D8B9FF8 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 424);
    v6 = *(v0 + 432);
    v8 = *(v0 + 408);
    v9 = *(v0 + 416);
    v10 = __swift_project_value_buffer(v8, qword_27D8BB230);
    swift_beginAccess();
    v38 = *(v9 + 16);
    v38(v6, v10, v8);
    sub_22B35F6AC();
    sub_22B221204(&qword_27D8BA820);
    v11 = sub_22B36103C();
    v12 = *(v9 + 8);
    v12(v7, v8);
    v12(v6, v8);
    if (v11)
    {
      v14 = *(v0 + 424);
      v13 = *(v0 + 432);
      v15 = *(v0 + 408);
      v38(v13, v10, v15);
      sub_22B35F6BC();
      v16 = sub_22B36103C();
      v12(v14, v15);
      v12(v13, v15);
      if (v16)
      {
        goto LABEL_7;
      }

      v18 = *(v0 + 424);
      v17 = *(v0 + 432);
      v19 = *(v0 + 408);
      v38(v17, v10, v19);
      sub_22B35F6CC();
      v20 = sub_22B36103C();
      v12(v18, v19);
      v12(v17, v19);
      if (v20)
      {
LABEL_7:
        v22 = *(v0 + 464);
        v21 = *(v0 + 472);
        v24 = *(v0 + 448);
        v23 = *(v0 + 456);
        v25 = *(v0 + 440);
        sub_22B35DE6C();
        sub_22B35DDCC();
        v39(v23, v25);
        v39(v21, v25);
        (*(v24 + 32))(v21, v22, v25);
      }
    }
  }

  if (*(v0 + 400))
  {
    v26 = *(v0 + 400);
  }

  else
  {
    v27 = sub_22B35EABC();
    v28 = sub_22B35EAAC();
    *(v0 + 40) = v27;
    *(v0 + 48) = &off_283EF8EA8;
    *(v0 + 16) = v28;
    type metadata accessor for ActivityLogCoordinator();
    v26 = swift_allocObject();
    v29 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v27);
    v30 = *(v27 - 8);
    v31 = *(v30 + 64) + 15;
    v32 = swift_task_alloc();
    (*(v30 + 16))(v32, v29, v27);
    v33 = *v32;
    v26[5] = v27;
    v26[6] = &off_283EF8EA8;
    v26[2] = v33;
    v26[7] = 5000;
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  *(v0 + 80) = &type metadata for DefaultLoadEventUploader;
  *(v0 + 88) = &off_283EFC910;
  type metadata accessor for LoadEventsProcessor();
  v34 = swift_allocObject();
  *(v0 + 608) = v34;
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, &type metadata for DefaultLoadEventUploader);
  *(v0 + 120) = &type metadata for DefaultLoadEventUploader;
  *(v0 + 128) = &off_283EFC910;

  swift_defaultActor_initialize();
  sub_22B11A02C((v0 + 96), v34 + 112);
  *(v34 + 152) = v26;
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v35 = swift_task_alloc();
  *(v0 + 616) = v35;
  *v35 = v0;
  v35[1] = sub_22B21FDAC;
  v36 = *(v0 + 472);

  return sub_22B1F3330(v36);
}

uint64_t sub_22B21FDAC(char a1)
{
  v2 = *(*v1 + 616);
  v3 = *(*v1 + 608);
  v5 = *v1;
  *(*v1 + 632) = a1;

  return MEMORY[0x2822009F8](sub_22B21FECC, 0, 0);
}

uint64_t sub_22B21FECC()
{
  if (sub_22B35EEBC())
  {
    if (qword_27D8B9FF8 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 424);
    v1 = *(v0 + 432);
    v3 = *(v0 + 408);
    v4 = *(v0 + 416);
    v5 = __swift_project_value_buffer(v3, qword_27D8BB230);
    swift_beginAccess();
    v6 = *(v4 + 16);
    v28 = v5;
    v6(v1, v5, v3);
    sub_22B35F6AC();
    sub_22B221204(&qword_27D8BA820);
    v7 = sub_22B36103C();
    v8 = *(v4 + 8);
    v8(v2, v3);
    v8(v1, v3);
    if (v7)
    {
      v10 = *(v0 + 424);
      v9 = *(v0 + 432);
      v11 = *(v0 + 408);
      v6(v9, v28, v11);
      sub_22B35F6CC();
      v12 = sub_22B36103C();
      v8(v10, v11);
      v8(v9, v11);
      if (v12)
      {
        v13 = *(v0 + 432);
        v15 = *(v0 + 408);
        v14 = *(v0 + 416);
        *(v0 + 392) = 0;
        sub_22B221204(&qword_27D8BA898);
        sub_22B3614EC();
        swift_beginAccess();
        (*(v14 + 40))(v28, v13, v15);
        swift_endAccess();
      }
    }
  }

  if (*(v0 + 632) == 1)
  {
    v16 = *(v0 + 568);
    (*(v0 + 560))(*(v0 + 520), *(v0 + 552), *(v0 + 480));
    v17 = sub_22B36050C();
    v18 = sub_22B360CFC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22B116000, v17, v18, "[LoadEventsDownloaderAndProcessor] Processed load events with result successful. Reset retry counter", v19, 2u);
      MEMORY[0x23188F650](v19, -1, -1);
    }

    v20 = *(v0 + 584);
    v21 = *(v0 + 576);
    v22 = *(v0 + 520);
    v23 = *(v0 + 480);
    v24 = *(v0 + 488);

    v21(v22, v23);
    v25 = sub_22B2201FC;
    v26 = v20;
  }

  else
  {
    v26 = *(v0 + 584);
    v25 = sub_22B22033C;
  }

  return MEMORY[0x2822009F8](v25, v26, 0);
}

uint64_t sub_22B220220()
{
  if (qword_281409448 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 544);
  *(v0 + 240) = &type metadata for BackgroundSystemTaskScheduler;
  *(v0 + 248) = &off_283EFE540;
  sub_22B220B58(1.0, v0 + 216, 0xD000000000000032, 0x800000022B36CB20);
  if (v1)
  {
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  *(v0 + 280) = &type metadata for BackgroundSystemTaskScheduler;
  *(v0 + 288) = &off_283EFE540;
  sub_22B220F14(60.0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  *(v0 + 633) = 1;
  v2 = *(v0 + 584);

  return MEMORY[0x2822009F8](sub_22B2206B0, v2, 0);
}

uint64_t sub_22B220364()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[60];
  if (v0[78] >= 2)
  {
    v2(v0[64], v3, v4);
    v14 = sub_22B36050C();
    v15 = sub_22B360D1C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22B116000, v14, v15, "[LoadEventsDownloaderAndProcessor] Processed load events with result not successful. Current retry counter >= 2. Reset counter and halt", v16, 2u);
      MEMORY[0x23188F650](v16, -1, -1);
    }

    v8 = v0[73];
    v17 = v0[72];
    v18 = v0[64];
    v19 = v0[60];
    v20 = v0[61];

    v17(v18, v19);
    v13 = sub_22B220540;
  }

  else
  {
    v2(v0[63], v3, v4);
    v5 = sub_22B36050C();
    v6 = sub_22B360D1C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22B116000, v5, v6, "[LoadEventsDownloaderAndProcessor] Processed load events with result not successful. Current retry counter < 2. Increment counter and retry", v7, 2u);
      MEMORY[0x23188F650](v7, -1, -1);
    }

    v8 = v0[73];
    v9 = v0[72];
    v10 = v0[63];
    v11 = v0[60];
    v12 = v0[61];

    v9(v10, v11);
    v13 = sub_22B220680;
  }

  return MEMORY[0x2822009F8](v13, v8, 0);
}

uint64_t sub_22B220564()
{
  if (qword_281409448 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 544);
  *(v0 + 160) = &type metadata for BackgroundSystemTaskScheduler;
  *(v0 + 168) = &off_283EFE540;
  sub_22B220B58(1.0, v0 + 136, 0xD000000000000032, 0x800000022B36CB20);
  if (v1)
  {
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  *(v0 + 200) = &type metadata for BackgroundSystemTaskScheduler;
  *(v0 + 208) = &off_283EFE540;
  sub_22B220F14(60.0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  *(v0 + 633) = 1;
  v2 = *(v0 + 584);

  return MEMORY[0x2822009F8](sub_22B2206B0, v2, 0);
}

uint64_t sub_22B220680()
{
  *(*(v0 + 584) + 120) = *(v0 + 624) + 1;
  *(v0 + 633) = 0;
  return MEMORY[0x2822009F8](sub_22B2206B0, *(v0 + 584), 0);
}

uint64_t sub_22B2206D4()
{
  v1 = *(v0 + 536);
  swift_unknownObjectRelease();
  v14 = *(v0 + 633);
  v2 = *(v0 + 600);
  v3 = *(v0 + 464);
  v4 = *(v0 + 432);
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);
  v8 = *(v0 + 504);
  v7 = *(v0 + 512);
  v9 = *(v0 + 496);
  v10 = *(v0 + 456);
  v13 = *(v0 + 424);
  (*(v0 + 592))(*(v0 + 472), *(v0 + 440));

  v11 = *(v0 + 8);

  return v11(v14);
}

uint64_t sub_22B2207E4()
{
  v1 = *(v0 + 568);
  (*(v0 + 560))(*(v0 + 496), *(v0 + 552), *(v0 + 480));
  v2 = sub_22B36050C();
  v3 = sub_22B360D2C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 536);
  v6 = *(v0 + 488);
  if (v4)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v2, v3, "[LoadEventsDownloaderAndProcessor] In progress already", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  swift_unknownObjectRelease();

  v8 = *(v0 + 528);
  v9 = *(v0 + 520);
  v11 = *(v0 + 504);
  v10 = *(v0 + 512);
  v12 = *(v0 + 472);
  v14 = *(v0 + 456);
  v13 = *(v0 + 464);
  v15 = *(v0 + 432);
  v18 = *(v0 + 424);
  (*(v0 + 576))(*(v0 + 496), *(v0 + 480));

  v16 = *(v0 + 8);

  return v16(1);
}

uint64_t sub_22B220980()
{
  v0 = sub_22B36052C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_28140BD10);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "[LoadEventsDownloaderAndProcessor] Taking extended lifetime", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_22B220B58(double a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_22B36052C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() sharedScheduler];
  v14 = sub_22B36081C();
  v15 = [v13 taskRequestForIdentifier_];

  if (v15)
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v8, qword_28140BD10);
    swift_beginAccess();
    (*(v9 + 16))(v12, v16, v8);

    v17 = sub_22B36050C();
    v18 = sub_22B360D2C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24[1] = v4;
      v25 = v20;
      v21 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_22B1A7B20(a3, a4, &v25);
      _os_log_impl(&dword_22B116000, v17, v18, "[BackgroundTask] %s is already scheduled", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x23188F650](v21, -1, -1);
      MEMORY[0x23188F650](v19, -1, -1);
    }

    return (*(v9 + 8))(v12, v8);
  }

  else
  {
    v26[3] = &type metadata for BackgroundSystemTaskRequest;
    v26[4] = &off_283EFE7E8;
    v23 = swift_allocObject();
    v26[0] = v23;
    *(v23 + 16) = a3;
    *(v23 + 24) = a4;
    *(v23 + 32) = a1;
    *(v23 + 40) = 0;

    sub_22B348FC8(v26, 1, 1);
    return __swift_destroy_boxed_opaque_existential_0(v26);
  }
}

uint64_t sub_22B220E4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B124D88;

  return sub_22B21F3B8(a1, v4, v5, v6, (v1 + 5), v7);
}

uint64_t sub_22B220F14(double a1)
{
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() sharedScheduler];
  v8 = sub_22B36081C();
  v9 = [v7 taskRequestForIdentifier_];

  if (v9)
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v2, qword_28140BD10);
    swift_beginAccess();
    (*(v3 + 16))(v6, v10, v2);
    v11 = sub_22B36050C();
    v12 = sub_22B360D2C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_22B1A7B20(0xD000000000000026, 0x800000022B36CB60, &v17);
      _os_log_impl(&dword_22B116000, v11, v12, "[BackgroundTask] %s is already scheduled", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x23188F650](v14, -1, -1);
      MEMORY[0x23188F650](v13, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    v18[3] = &type metadata for BackgroundSystemTaskRequest;
    v18[4] = &off_283EFE7E8;
    v16 = swift_allocObject();
    v18[0] = v16;
    *(v16 + 16) = 0xD000000000000026;
    *(v16 + 24) = 0x800000022B36CB60;
    *(v16 + 32) = a1;
    *(v16 + 40) = 0;
    sub_22B348FC8(v18, 1, 1);
    return __swift_destroy_boxed_opaque_existential_0(v18);
  }
}

uint64_t sub_22B221204(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22B35F6FC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_24Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  v3 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_22B221298(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B124D88;

  return sub_22B21E404(a1, v4, v5, v6, (v1 + 5), v7);
}

uint64_t sub_22B221360(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22B119A60;

  return sub_22B21D550(a1, v4, v5, v6, (v1 + 5), v7, v8, v9);
}

uint64_t sub_22B221448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v135 = a8;
  v136 = a7;
  v143 = a6;
  v142 = a5;
  v134 = a4;
  v133 = a3;
  v132 = a2;
  v131 = a1;
  v139 = sub_22B3604BC();
  v141 = *(v139 - 8);
  v9 = *(v141 + 64);
  MEMORY[0x28223BE20](v139);
  v129[4] = v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v140 = v129 - v12;
  v13 = sub_22B36052C();
  v156 = *(v13 - 8);
  v157 = v13;
  v14 = *(v156 + 64);
  MEMORY[0x28223BE20](v13);
  v129[3] = v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v144 = v129 - v17;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA078, &unk_22B362BB0);
  v18 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v148);
  v138 = v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v137 = v129 - v21;
  MEMORY[0x28223BE20](v22);
  v149 = v129 - v23;
  v24 = sub_22B3604AC();
  v25 = *(v24 - 8);
  v26 = v25[8];
  MEMORY[0x28223BE20](v24);
  v129[6] = v129 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v152 = v129 - v29;
  MEMORY[0x28223BE20](v30);
  v150 = v129 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = v129 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = v129 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = v129 - v39;
  v41 = sub_22B36047C();
  v154 = *(v41 - 8);
  v155 = v41;
  v42 = *(v154 + 64);
  MEMORY[0x28223BE20](v41);
  v129[5] = v129 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v151 = v129 - v45;
  MEMORY[0x28223BE20](v46);
  v48 = v129 - v47;
  MEMORY[0x28223BE20](v49);
  v51 = v129 - v50;
  if (qword_281408E08 != -1)
  {
    swift_once();
  }

  v52 = __swift_project_value_buffer(v24, qword_28140BC88);
  v162 = v24;
  v53 = v52;
  v54 = v25 + 2;
  v55 = v25[2];
  v55(v40, v52, v162);
  sub_22B36048C();
  sub_22B36045C();
  v57 = v25[1];
  v56 = v25 + 1;
  v161 = v57;
  v57(v40, v162);
  v158 = v53;
  v159 = v55;
  v58 = v53;
  v59 = v162;
  v160 = v54;
  v55(v37, v58, v162);
  v60 = sub_22B36048C();
  v61 = sub_22B360E2C();
  v62 = sub_22B360FDC();
  v153 = v51;
  if (v62)
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    v64 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v60, v61, v64, "cdChangesMonth", "", v63, 2u);
    v65 = v63;
    v51 = v153;
    MEMORY[0x23188F650](v65, -1, -1);
  }

  (*(v154 + 16))(v48, v51, v155);
  v66 = sub_22B3604EC();
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  swift_allocObject();
  v146 = sub_22B3604DC();
  v161(v37, v59);
  v159(v34, v158, v59);
  v69 = sub_22B36048C();
  v70 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    v72 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v69, v70, v72, "getting results from CD", "", v71, 2u);
    MEMORY[0x23188F650](v71, -1, -1);
  }

  v147 = v56;
  v161(v34, v59);
  v73 = sub_22B35DE9C();
  v130 = *(v73 - 8);
  v74 = *(v130 + 16);
  v75 = v149;
  v74(v149, v142, v73);
  v76 = v75 + *(v148 + 48);
  v77 = v143;
  v143 = v73;
  v74(v76, v77, v73);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v78 = v157;
  v79 = __swift_project_value_buffer(v157, qword_28140BD10);
  swift_beginAccess();
  v80 = v156;
  v81 = v156 + 16;
  v82 = v144;
  v142 = *(v156 + 16);
  v142(v144, v79, v78);
  v83 = sub_22B36050C();
  v84 = sub_22B360D2C();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    *v85 = 0;
    _os_log_impl(&dword_22B116000, v83, v84, "Get interval readings", v85, 2u);
    v86 = v85;
    v80 = v156;
    MEMORY[0x23188F650](v86, -1, -1);
  }

  v89 = *(v80 + 8);
  v88 = v80 + 8;
  v87 = v89;
  (v89)(v82, v157);
  v90 = v145[14];
  if (v90)
  {
    v156 = v88;
    v92 = v145[15];
    v91 = v145[16];
    if (v91)
    {
      v129[1] = v81;
      v129[2] = v79;
      v144 = v87;
      v145 = a9;
      v93 = v137;
      sub_22B123130(v75, v137);
      v94 = v148;
      v95 = *(v148 + 48);
      v96 = v138;
      v97 = v143;
      v74(v138, v93, v143);
      v98 = v96 + *(v94 + 48);
      v148 = v95;
      v74(v98, v93 + v95, v97);
      sub_22B1231A0(v90, v92);
      v99 = v91;
      v100 = MEMORY[0x23188EEB0]();
      v163 = MEMORY[0x277D84F98];
      MEMORY[0x28223BE20](v100);
      v101 = v131;
      v129[-12] = v99;
      v129[-11] = v101;
      v102 = v133;
      v129[-10] = v132;
      v129[-9] = v102;
      v103 = v135;
      v129[-8] = v134;
      v129[-7] = v103;
      v104 = v145;
      v129[-6] = v96;
      v129[-5] = v104;
      LOBYTE(v129[-4]) = 1;
      v129[-3] = v136;
      v129[-2] = &v163;
      sub_22B360E7C();
      v106 = v163;
      objc_autoreleasePoolPop(v100);

      sub_22B123284(v149, &qword_27D8BA078, &unk_22B362BB0);
      sub_22B123284(v96, &qword_27D8BA078, &unk_22B362BB0);
      v107 = *(v130 + 8);
      v107(v93 + v148, v97);
      v107(v93, v97);
    }

    else
    {

      v105 = v92;
      sub_22B123284(v75, &qword_27D8BA078, &unk_22B362BB0);

      v106 = 0;
    }
  }

  else
  {
    sub_22B123284(v75, &qword_27D8BA078, &unk_22B362BB0);
    v106 = 0;
  }

  v108 = v153;
  v159(v150, v158, v162);
  v109 = sub_22B36048C();
  v110 = sub_22B360E3C();
  v111 = sub_22B360FDC();
  v112 = v140;
  if (v111)
  {
    v113 = swift_slowAlloc();
    *v113 = 0;
    v114 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v109, v110, v114, "Retrieved results from CD", "", v113, 2u);
    MEMORY[0x23188F650](v113, -1, -1);
  }

  v115 = v162;
  v161(v150, v162);
  v159(v152, v158, v115);
  v116 = sub_22B36048C();
  sub_22B3604CC();
  v117 = sub_22B360E1C();
  v118 = sub_22B360FDC();
  v119 = v141;
  if (v118)
  {

    sub_22B3604FC();

    v120 = v139;
    if ((*(v119 + 88))(v112, v139) == *MEMORY[0x277D85B00])
    {
      v121 = "[Error] Interval already ended";
    }

    else
    {
      (*(v119 + 8))(v112, v120);
      v121 = "";
    }

    v123 = swift_slowAlloc();
    *v123 = 0;
    v124 = v151;
    v125 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v116, v117, v125, "intervalReading", v121, v123, 2u);
    MEMORY[0x23188F650](v123, -1, -1);

    v122 = v124;
  }

  else
  {

    v122 = v151;
  }

  v126 = v155;
  v127 = *(v154 + 8);
  v127(v122, v155);
  v161(v152, v162);
  v127(v108, v126);
  return v106;
}

void *sub_22B2224D0()
{
  type metadata accessor for EnergySiteManager();
  v0 = swift_allocObject();
  result = sub_22B23DED0();
  qword_28140BDD8 = v0;
  return result;
}

uint64_t sub_22B22250C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 89) = a4;
  *(v5 + 88) = a3;
  *(v5 + 16) = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8A0, &unk_22B365970) - 8) + 64) + 15;
  *(v5 + 40) = swift_task_alloc();
  v7 = type metadata accessor for CDEnergySite();
  *(v5 + 48) = v7;
  v8 = *(v7 - 8);
  *(v5 + 56) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B222610, v4, 0);
}

uint64_t sub_22B222610()
{
  if (*(v0 + 89))
  {
    if (qword_28140B2D8 != -1)
    {
      swift_once();
    }

    v1 = qword_28140BDD0;
    *(v0 + 80) = qword_28140BDD0;

    return MEMORY[0x2822009F8](sub_22B2228E8, v1, 0);
  }

  else
  {
    if (qword_28140B2D8 != -1)
    {
      swift_once();
    }

    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_22B222740;

    return sub_22B142D7C();
  }
}

uint64_t sub_22B222740()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B222850, v2, 0);
}

uint64_t sub_22B222850()
{
  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BDD0;
  *(v0 + 80) = qword_28140BDD0;

  return MEMORY[0x2822009F8](sub_22B2228E8, v1, 0);
}

uint64_t sub_22B2228E8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  sub_22B141AE8(*(v0 + 16), *(v0 + 24), *(v0 + 88), *(v0 + 40));

  return MEMORY[0x2822009F8](sub_22B22295C, v2, 0);
}

uint64_t sub_22B22295C()
{
  v1 = v0[6];
  v2 = v0[5];
  if ((*(v0[7] + 48))(v2, 1, v1) == 1)
  {
    sub_22B123284(v2, &qword_27D8BA8A0, &unk_22B365970);
    v11 = 0;
  }

  else
  {
    v3 = v0[8];
    sub_22B144DC0(v2, v3);
    sub_22B35EAFC();
    v5 = *v3;
    v4 = v3[1];
    v6 = (v3 + *(v1 + 28));
    v7 = *v6;
    v8 = v6[1];
    v9 = v3[2];
    v10 = v3[3];

    sub_22B144B30(v7, v8);

    v11 = sub_22B35EAEC();
    sub_22B23E068(v0[8], type metadata accessor for CDEnergySite);

    sub_22B12F174(v7, v8);
  }

  v12 = v0[8];
  v13 = v0[5];

  v14 = v0[1];

  return v14(v11);
}

uint64_t sub_22B222B30(uint64_t a1)
{
  v2[62] = a1;
  v2[63] = v1;
  v3 = sub_22B36052C();
  v2[64] = v3;
  v4 = *(v3 - 8);
  v2[65] = v4;
  v5 = *(v4 + 64) + 15;
  v2[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B222BF0, v1, 0);
}

uint64_t sub_22B222BF0()
{
  v1 = v0[62];
  v2 = sub_22B35F3AC();
  v4 = v3;
  v0[67] = v3;
  v5 = swift_task_alloc();
  v0[68] = v5;
  *v5 = v0;
  v5[1] = sub_22B222CAC;
  v6 = v0[63];

  return sub_22B22250C(v2, v4, 0, 0);
}

uint64_t sub_22B222CAC(uint64_t a1)
{
  v2 = *(*v1 + 544);
  v3 = *(*v1 + 536);
  v4 = *(*v1 + 504);
  v6 = *v1;
  *(*v1 + 552) = a1;

  return MEMORY[0x2822009F8](sub_22B222DE0, v4, 0);
}

uint64_t sub_22B222DE0()
{
  v1 = v0[69];
  if (v1)
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v2 = v0[66];
    v3 = v0[65];
    v4 = v0[64];
    v5 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    (*(v3 + 16))(v2, v5, v4);
    v6 = sub_22B36050C();
    v7 = sub_22B360D1C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[66];
    v10 = v0[65];
    v11 = v0[64];
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22B116000, v6, v7, "Site already exists", v12, 2u);
      MEMORY[0x23188F650](v12, -1, -1);
    }

    (*(v10 + 8))(v9, v11);
    v13 = v0[66];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = swift_task_alloc();
    v0[70] = v16;
    *v16 = v0;
    v16[1] = sub_22B222FE0;
    v17 = v0[62];

    return EKEnergySite.createCKZone()();
  }
}

uint64_t sub_22B222FE0()
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[66];

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    v2[71] = v8;
    *v8 = v4;
    v8[1] = sub_22B223164;
    v9 = v2[62];

    return EKEnergySite.save(reset:tokenUpdate:)(0, 0);
  }
}

uint64_t sub_22B223164()
{
  v2 = *v1;
  v3 = *(*v1 + 568);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 528);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = *(v2 + 504);

    return MEMORY[0x2822009F8](sub_22B2232B0, v8, 0);
  }
}

uint64_t sub_22B2232B0()
{
  v1 = *(v0 + 496);
  v2 = *(*(v0 + 504) + 112);
  sub_22B35EEEC();
  v3 = sub_22B36081C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA960, &qword_22B365F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3634B0;
  *(v0 + 480) = sub_22B35EE9C();
  *(v0 + 488) = v5;
  v6 = MEMORY[0x277D837D0];
  sub_22B36110C();
  v7 = sub_22B35F3AC();
  *(inited + 96) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = v8;
  sub_22B321BDC(inited);
  swift_setDeallocating();
  sub_22B123284(inited + 32, &unk_27D8BACC0, &unk_22B3662C0);
  v9 = sub_22B3606CC();

  [v2 postNotificationName:v3 object:0 userInfo:v9 deliverImmediately:1];

  sub_22B23E8B0(v0 + 184);
  type metadata accessor for EnergyKitAnalyticsEvent();
  v10 = swift_allocObject();
  v11 = *(v0 + 296);
  v13 = *(v0 + 312);
  v12 = *(v0 + 328);
  *(v0 + 144) = v13;
  *(v0 + 160) = v12;
  v14 = *(v0 + 232);
  v15 = *(v0 + 264);
  v16 = *(v0 + 280);
  *(v0 + 80) = *(v0 + 248);
  *(v0 + 96) = v15;
  v17 = *(v0 + 264);
  v18 = *(v0 + 296);
  *(v0 + 112) = *(v0 + 280);
  *(v0 + 128) = v18;
  v19 = *(v0 + 200);
  *(v0 + 16) = *(v0 + 184);
  *(v0 + 32) = v19;
  *(v0 + 48) = *(v0 + 216);
  *(v0 + 64) = v14;
  *(v10 + 136) = v11;
  *(v10 + 152) = v13;
  *(v10 + 168) = *(v0 + 328);
  *(v10 + 72) = *(v0 + 232);
  *(v10 + 88) = *(v0 + 248);
  *(v10 + 104) = v17;
  *(v10 + 16) = 0;
  *(v0 + 176) = *(v0 + 344);
  *(v10 + 184) = *(v0 + 344);
  *(v10 + 120) = v16;
  *(v10 + 24) = *(v0 + 184);
  *(v10 + 40) = *(v0 + 200);
  *(v10 + 56) = *(v0 + 216);
  sub_22B123284(v0 + 16, &unk_27D8BACF0, &qword_22B3662D0);
  sub_22B1A81C0(v10);

  v20 = *(v0 + 528);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_22B223504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v7 = sub_22B36052C();
  v4[7] = v7;
  v8 = *(v7 - 8);
  v4[8] = v8;
  v9 = *(v8 + 64) + 15;
  v4[9] = swift_task_alloc();
  v10 = swift_task_alloc();
  v4[10] = v10;
  *v10 = v4;
  v10[1] = sub_22B223610;

  return sub_22B22250C(a1, a2, 0, 0);
}

uint64_t sub_22B223610(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_22B223728, v3, 0);
}

uint64_t sub_22B223728()
{
  v33 = v0;
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = sub_22B35F12C();
    if (!v3)
    {
      goto LABEL_13;
    }

    v4 = v2;
    v5 = v3;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v8 = *(v0 + 64);
      v7 = *(v0 + 72);
      v9 = *(v0 + 56);
      v10 = __swift_project_value_buffer(v9, qword_28140BD10);
      swift_beginAccess();
      (*(v8 + 16))(v7, v10, v9);
      v11 = v1;
      v12 = sub_22B36050C();
      v13 = sub_22B360D1C();

      v14 = os_log_type_enabled(v12, v13);
      v16 = *(v0 + 64);
      v15 = *(v0 + 72);
      v17 = *(v0 + 56);
      if (v14)
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v32 = v19;
        *v18 = 136315138;
        v20 = sub_22B35F3AC();
        v22 = sub_22B1A7B20(v20, v21, &v32);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_22B116000, v12, v13, "Site %s is already onboarded. Cannot update location.", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x23188F650](v19, -1, -1);
        MEMORY[0x23188F650](v18, -1, -1);
      }

      (*(v16 + 8))(v15, v17);
      v23 = *(v0 + 72);

      v24 = *(v0 + 8);
      v25 = *(v0 + 88);

      return v24(v25);
    }

    else
    {
LABEL_13:
      v27 = *(v0 + 40);
      sub_22B35F3EC();
      v28 = swift_task_alloc();
      *(v0 + 96) = v28;
      *v28 = v0;
      v28[1] = sub_22B223A58;

      return EKEnergySite.save(reset:tokenUpdate:)(0, 0);
    }
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v29 = 10;
    swift_willThrow();
    v30 = *(v0 + 72);

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_22B223A58()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {
    v4 = v3[6];

    return MEMORY[0x2822009F8](sub_22B223B98, v4, 0);
  }

  else
  {
    v5 = v3[9];

    v6 = v3[1];
    v7 = v3[11];

    return v6(v7);
  }
}

uint64_t sub_22B223B98()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22B223C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[5] = a3;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v9 = sub_22B36052C();
  v5[9] = v9;
  v10 = *(v9 - 8);
  v5[10] = v10;
  v11 = *(v10 + 64) + 15;
  v5[11] = swift_task_alloc();
  v12 = swift_task_alloc();
  v5[12] = v12;
  *v12 = v5;
  v12[1] = sub_22B223D4C;

  return sub_22B22250C(a1, a2, 0, 0);
}

uint64_t sub_22B223D4C(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_22B223E64, v3, 0);
}

uint64_t sub_22B223E64()
{
  v51 = v0;
  v1 = v0[13];
  if (!v1)
  {
    sub_22B134CDC();
    swift_allocError();
    *v10 = 10;
    swift_willThrow();
LABEL_17:
    v20 = v0[11];
    v21 = v0[8];

    v22 = v0[1];

    return v22();
  }

  v2 = sub_22B35F12C();
  if (v3)
  {
    v4 = v2;
    v5 = v3;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = sub_22B35F41C();
      v9 = v0[6];
      if (v8)
      {
        if (v7 == v0[5] && v8 == v9)
        {

LABEL_23:
          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v28 = v0[10];
          v27 = v0[11];
          v29 = v0[9];
          v30 = v0[6];
          v31 = __swift_project_value_buffer(v29, qword_28140BD10);
          swift_beginAccess();
          (*(v28 + 16))(v27, v31, v29);
          v32 = v1;

          v33 = sub_22B36050C();
          v34 = sub_22B360D1C();

          v35 = os_log_type_enabled(v33, v34);
          v37 = v0[10];
          v36 = v0[11];
          v38 = v0[9];
          if (v35)
          {
            v48 = v0[5];
            v49 = v0[6];
            v39 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            v50[0] = v40;
            *v39 = 136315394;
            v41 = sub_22B35F3AC();
            v43 = sub_22B1A7B20(v41, v42, v50);

            *(v39 + 4) = v43;
            *(v39 + 12) = 2080;
            *(v39 + 14) = sub_22B1A7B20(v48, v49, v50);
            _os_log_impl(&dword_22B116000, v33, v34, "Site %s is already onboarded.Timezone %s is the same or empty", v39, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x23188F650](v40, -1, -1);
            MEMORY[0x23188F650](v39, -1, -1);
          }

          (*(v37 + 8))(v36, v38);
          v44 = v0[11];
          v45 = v0[8];

          v46 = v0[1];
          v47 = v0[13];

          return v46(v47);
        }

        v11 = v0[6];
        v12 = sub_22B36134C();

        if (v12)
        {
          goto LABEL_23;
        }
      }

      v13 = v0[5] & 0xFFFFFFFFFFFFLL;
      if ((v9 & 0x2000000000000000) != 0)
      {
        v13 = HIBYTE(v9) & 0xF;
      }

      if (!v13)
      {
        goto LABEL_23;
      }
    }
  }

  v14 = v0[8];
  v15 = v0[5];
  v16 = v0[6];
  sub_22B35E05C();
  v17 = sub_22B35E0BC();
  v18 = (*(*(v17 - 8) + 48))(v14, 1, v17);
  sub_22B123284(v14, &unk_27D8BA080, &unk_22B364280);
  if (v18 == 1)
  {
    sub_22B134CDC();
    swift_allocError();
    *v19 = 17;
    swift_willThrow();

    goto LABEL_17;
  }

  v25 = v0[5];
  v24 = v0[6];

  sub_22B35F42C();
  v26 = swift_task_alloc();
  v0[14] = v26;
  *v26 = v0;
  v26[1] = sub_22B224308;

  return EKEnergySite.save(reset:tokenUpdate:)(0, 0);
}

uint64_t sub_22B224308()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {
    v4 = v3[7];

    return MEMORY[0x2822009F8](sub_22B224458, v4, 0);
  }

  else
  {
    v5 = v3[11];
    v6 = v3[8];

    v7 = v3[1];
    v8 = v3[13];

    return v7(v8);
  }
}

uint64_t sub_22B224458()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22B2244D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[119] = v3;
  v4[118] = a3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  v4[120] = swift_task_alloc();
  v4[121] = swift_task_alloc();
  v4[122] = swift_task_alloc();
  v4[123] = swift_task_alloc();
  v4[124] = swift_task_alloc();
  v4[125] = swift_task_alloc();
  v8 = sub_22B35DE9C();
  v4[126] = v8;
  v9 = *(v8 - 8);
  v4[127] = v9;
  v10 = *(v9 + 64) + 15;
  v4[128] = swift_task_alloc();
  v4[129] = swift_task_alloc();
  v11 = sub_22B36052C();
  v4[130] = v11;
  v12 = *(v11 - 8);
  v4[131] = v12;
  v13 = *(v12 + 64) + 15;
  v4[132] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280) - 8) + 64) + 15;
  v4[133] = swift_task_alloc();
  v15 = swift_task_alloc();
  v4[134] = v15;
  *v15 = v4;
  v15[1] = sub_22B2246F4;

  return sub_22B22250C(a1, a2, 0, 0);
}

uint64_t sub_22B2246F4(uint64_t a1)
{
  v2 = *(*v1 + 1072);
  v3 = *(*v1 + 952);
  v5 = *v1;
  *(*v1 + 1080) = a1;

  return MEMORY[0x2822009F8](sub_22B22480C, v3, 0);
}

uint64_t sub_22B22480C()
{
  v186 = v0;
  v1 = *(v0 + 1080);
  if (!v1)
  {
    sub_22B134CDC();
    swift_allocError();
    *v18 = 10;
    swift_willThrow();
    goto LABEL_12;
  }

  v2 = *(v0 + 944);
  if (*(v2 + 16))
  {
    v3 = *(v0 + 944);
    v4 = sub_22B33B28C(1701667182, 0xE400000000000000);
    if (v5)
    {
      sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v4, v0 + 16);
      if (swift_dynamicCast())
      {
        v6 = *(v0 + 920);
        v7 = *(v0 + 928);
        sub_22B35F40C();
      }
    }
  }

  if (*(v2 + 16))
  {
    v8 = *(v0 + 944);
    v9 = sub_22B33B28C(0x656E6F5A656D6974, 0xE800000000000000);
    if (v10)
    {
      sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v9, v0 + 624);
      if (swift_dynamicCast())
      {
        v11 = *(v0 + 1064);
        v12 = *(v0 + 888);
        v13 = *(v0 + 896);
        sub_22B35E05C();
        v14 = sub_22B35E0BC();
        v15 = (*(*(v14 - 8) + 48))(v11, 1, v14);
        v16 = *(v0 + 1064);
        if (v15 == 1)
        {

          sub_22B123284(v16, &unk_27D8BA080, &unk_22B364280);
          sub_22B134CDC();
          swift_allocError();
          *v17 = 17;
          swift_willThrow();

LABEL_12:
          v19 = *(v0 + 1064);
          v20 = *(v0 + 1056);
          v21 = *(v0 + 1032);
          v22 = *(v0 + 1024);
          v23 = *(v0 + 1000);
          v24 = *(v0 + 992);
          v25 = *(v0 + 984);
          v26 = *(v0 + 976);
          v27 = *(v0 + 968);
          v28 = *(v0 + 960);

          v29 = *(v0 + 8);

          return v29();
        }

        sub_22B123284(*(v0 + 1064), &unk_27D8BA080, &unk_22B364280);
        v31 = sub_22B35F12C();
        if (!v32)
        {
          goto LABEL_28;
        }

        v33 = v31;
        v34 = v32;

        v35 = HIBYTE(v34) & 0xF;
        if ((v34 & 0x2000000000000000) == 0)
        {
          v35 = v33 & 0xFFFFFFFFFFFFLL;
        }

        if (!v35)
        {
          goto LABEL_28;
        }

        v36 = sub_22B35F41C();
        if (v37)
        {
          if (v36 == v12 && v37 == v13 || (v38 = sub_22B36134C(), , , (v38 & 1) != 0))
          {

LABEL_29:
            if (qword_28140A0C8 != -1)
            {
              swift_once();
            }

            v40 = *(v0 + 1056);
            v41 = *(v0 + 1048);
            v42 = *(v0 + 1040);
            v43 = __swift_project_value_buffer(v42, qword_28140BD10);
            swift_beginAccess();
            (*(v41 + 16))(v40, v43, v42);

            v44 = v1;
            v45 = sub_22B36050C();
            LOBYTE(v42) = sub_22B360D1C();

            v183 = v42;
            v46 = os_log_type_enabled(v45, v42);
            v47 = *(v0 + 1056);
            v48 = *(v0 + 1048);
            v184 = *(v0 + 1040);
            if (v46)
            {
              v182 = *(v0 + 1056);
              v49 = swift_slowAlloc();
              v181 = swift_slowAlloc();
              v185[0] = v181;
              *v49 = 136315394;
              log = v45;
              v50 = sub_22B35F3AC();
              v52 = sub_22B1A7B20(v50, v51, v185);

              *(v49 + 4) = v52;
              *(v49 + 12) = 2080;
              v53 = sub_22B1A7B20(v12, v13, v185);

              *(v49 + 14) = v53;
              _os_log_impl(&dword_22B116000, log, v183, "Site %s is already onboarded.Timezone %s is the same or empty", v49, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x23188F650](v181, -1, -1);
              MEMORY[0x23188F650](v49, -1, -1);

              (*(v48 + 8))(v182, v184);
            }

            else
            {

              (*(v48 + 8))(v47, v184);
            }

            goto LABEL_34;
          }
        }

        else
        {
        }

        v39 = HIBYTE(v13) & 0xF;
        if ((v13 & 0x2000000000000000) == 0)
        {
          v39 = v12 & 0xFFFFFFFFFFFFLL;
        }

        if (v39)
        {
LABEL_28:
          sub_22B35F42C();
          goto LABEL_34;
        }

        goto LABEL_29;
      }
    }
  }

LABEL_34:
  if (*(v2 + 16))
  {
    v54 = *(v0 + 944);
    v55 = sub_22B33B28C(0xD000000000000016, 0x800000022B36CE20);
    if (v56)
    {
      sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v55, v0 + 48);
      if (swift_dynamicCast())
      {
        v57 = *(v0 + 872);
        v58 = *(v0 + 880);
        sub_22B35F39C();
      }
    }
  }

  if (*(v2 + 16))
  {
    v59 = *(v0 + 944);
    v60 = sub_22B33B28C(0x497974696C697475, 0xE900000000000044);
    if (v61)
    {
      sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v60, v0 + 80);
      if (swift_dynamicCast())
      {
        v62 = *(v0 + 864);
        v63 = HIBYTE(v62) & 0xF;
        if ((v62 & 0x2000000000000000) == 0)
        {
          v63 = *(v0 + 856) & 0xFFFFFFFFFFFFLL;
        }

        if (!v63)
        {
          v64 = *(v0 + 864);
        }

        sub_22B35F44C();
      }
    }
  }

  if (*(v2 + 16))
  {
    v65 = *(v0 + 944);
    v66 = sub_22B33B28C(0x7069726373627573, 0xEE0044496E6F6974);
    if (v67)
    {
      sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v66, v0 + 112);
      if (swift_dynamicCast())
      {
        v68 = *(v0 + 848);
        v69 = HIBYTE(v68) & 0xF;
        if ((v68 & 0x2000000000000000) == 0)
        {
          v69 = *(v0 + 840) & 0xFFFFFFFFFFFFLL;
        }

        if (!v69)
        {
          v70 = *(v0 + 848);
        }

        sub_22B35F13C();
      }
    }
  }

  if (!*(v2 + 16) || (v71 = *(v0 + 944), v72 = sub_22B33B28C(0x6F54737365636361, 0xEB000000006E656BLL), (v73 & 1) == 0) || (sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v72, v0 + 144), (swift_dynamicCast() & 1) == 0))
  {
    v77 = 0;
    if (!*(v2 + 16))
    {
      goto LABEL_71;
    }

    goto LABEL_64;
  }

  v74 = *(v0 + 832);
  v75 = HIBYTE(v74) & 0xF;
  if ((v74 & 0x2000000000000000) == 0)
  {
    v75 = *(v0 + 824) & 0xFFFFFFFFFFFFLL;
  }

  if (!v75)
  {
    v76 = *(v0 + 832);
  }

  sub_22B35F07C();
  v77 = 1;
  if (*(v2 + 16))
  {
LABEL_64:
    v78 = *(v0 + 944);
    v79 = sub_22B33B28C(0x5468736572666572, 0xEC0000006E656B6FLL);
    if (v80)
    {
      sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v79, v0 + 176);
      if (swift_dynamicCast())
      {
        v81 = *(v0 + 816);
        v82 = HIBYTE(v81) & 0xF;
        if ((v81 & 0x2000000000000000) == 0)
        {
          v82 = *(v0 + 808) & 0xFFFFFFFFFFFFLL;
        }

        if (!v82)
        {
          v83 = *(v0 + 816);
        }

        sub_22B35F0CC();
        v77 = 1;
      }
    }
  }

LABEL_71:
  if (*(v2 + 16))
  {
    v84 = *(v0 + 944);
    v85 = sub_22B33B28C(0x6974636E75466B63, 0xEF6E656B6F546E6FLL);
    if (v86)
    {
      sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v85, v0 + 208);
      if (swift_dynamicCast())
      {
        v87 = *(v0 + 800);
        v88 = HIBYTE(v87) & 0xF;
        if ((v87 & 0x2000000000000000) == 0)
        {
          v88 = *(v0 + 792) & 0xFFFFFFFFFFFFLL;
        }

        if (!v88)
        {
          v89 = *(v0 + 800);
        }

        sub_22B35F15C();
        v77 = 1;
      }
    }
  }

  if (*(v2 + 16))
  {
    v90 = *(v0 + 944);
    v91 = sub_22B33B28C(0x72656D6F74737563, 0xEC000000656D614ELL);
    if (v92)
    {
      sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v91, v0 + 240);
      if (swift_dynamicCast())
      {
        v93 = *(v0 + 784);
        v94 = HIBYTE(v93) & 0xF;
        if ((v93 & 0x2000000000000000) == 0)
        {
          v94 = *(v0 + 776) & 0xFFFFFFFFFFFFLL;
        }

        if (!v94)
        {
          v95 = *(v0 + 784);
        }

        sub_22B35F09C();
      }
    }
  }

  if (*(v2 + 16))
  {
    v96 = *(v0 + 944);
    v97 = sub_22B33B28C(0x4E746E756F636361, 0xED00007265626D75);
    if (v98)
    {
      sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v97, v0 + 272);
      if (swift_dynamicCast())
      {
        v99 = *(v0 + 768);
        v100 = HIBYTE(v99) & 0xF;
        if ((v99 & 0x2000000000000000) == 0)
        {
          v100 = *(v0 + 760) & 0xFFFFFFFFFFFFLL;
        }

        if (!v100)
        {
          v101 = *(v0 + 768);
        }

        sub_22B35F0EC();
      }
    }
  }

  if (*(v2 + 16))
  {
    v102 = *(v0 + 944);
    v103 = sub_22B33B28C(0x4165636976726573, 0xEE00737365726464);
    if (v104)
    {
      sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v103, v0 + 304);
      if (swift_dynamicCast())
      {
        v105 = *(v0 + 752);
        v106 = HIBYTE(v105) & 0xF;
        if ((v105 & 0x2000000000000000) == 0)
        {
          v106 = *(v0 + 744) & 0xFFFFFFFFFFFFLL;
        }

        if (!v106)
        {
          v107 = *(v0 + 752);
        }

        sub_22B35F3CC();
      }
    }
  }

  if (*(v2 + 16))
  {
    v108 = *(v0 + 944);
    v109 = sub_22B33B28C(0xD000000000000011, 0x800000022B36CE40);
    if (v110)
    {
      sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v109, v0 + 336);
      if (swift_dynamicCast())
      {
        v111 = *(v0 + 736);
        v112 = HIBYTE(v111) & 0xF;
        if ((v111 & 0x2000000000000000) == 0)
        {
          v112 = *(v0 + 728) & 0xFFFFFFFFFFFFLL;
        }

        if (!v112)
        {
          v113 = *(v0 + 736);
        }

        sub_22B35F1DC();
      }
    }
  }

  if (*(v2 + 16))
  {
    v114 = *(v0 + 944);
    v115 = sub_22B33B28C(0xD000000000000012, 0x800000022B36CE60);
    if (v116)
    {
      sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v115, v0 + 368);
      if (swift_dynamicCast())
      {
        v117 = *(v0 + 720);
        v118 = HIBYTE(v117) & 0xF;
        if ((v117 & 0x2000000000000000) == 0)
        {
          v118 = *(v0 + 712) & 0xFFFFFFFFFFFFLL;
        }

        if (!v118)
        {
          v119 = *(v0 + 720);
        }

        sub_22B35F1BC();
      }
    }
  }

  if (*(v2 + 16) && (v120 = *(v0 + 944), v121 = sub_22B33B28C(0xD000000000000019, 0x800000022B36CE80), (v122 & 1) != 0))
  {
    v123 = *(v0 + 1016);
    v124 = *(v0 + 1008);
    v125 = *(v0 + 1000);
    sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v121, v0 + 400);
    v126 = swift_dynamicCast();
    v127 = *(v123 + 56);
    v127(v125, v126 ^ 1u, 1, v124);
    if ((*(v123 + 48))(v125, 1, v124) != 1)
    {
      v128 = *(v0 + 1032);
      v129 = *(v0 + 1016);
      v130 = *(v0 + 1008);
      v131 = *(v0 + 992);
      (*(v129 + 32))(v128, *(v0 + 1000), v130);
      (*(v129 + 16))(v131, v128, v130);
      v127(v131, 0, 1, v130);
      sub_22B35F2DC();
      (*(v129 + 8))(v128, v130);
      goto LABEL_131;
    }
  }

  else
  {
    v127 = *(*(v0 + 1016) + 56);
    v127(*(v0 + 1000), 1, 1, *(v0 + 1008));
  }

  sub_22B123284(*(v0 + 1000), &qword_27D8BA340, &qword_22B363FB0);
  if (*(v2 + 16))
  {
    v132 = *(v0 + 944);
    v133 = sub_22B33B28C(0xD000000000000019, 0x800000022B36CE80);
    if (v134)
    {
      sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v133, v0 + 432);
      if (swift_dynamicCast())
      {
        v135 = *(v0 + 696);
        v136 = *(v0 + 704);
        v137 = sub_22B35F5EC();
        v138 = sub_22B36081C();

        v139 = [v137 dateFromString_];

        if (v139)
        {
          v140 = *(v0 + 984);
          sub_22B35DE5C();

          v141 = 0;
        }

        else
        {
          v141 = 1;
        }

        v142 = *(v0 + 1016) + 56;
        v127(*(v0 + 984), v141, 1, *(v0 + 1008));
        sub_22B35F2DC();
      }
    }
  }

LABEL_131:
  if (*(v2 + 16))
  {
    v143 = *(v0 + 944);
    v144 = sub_22B33B28C(0xD000000000000019, 0x800000022B36CEA0);
    if (v145)
    {
      sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v144, v0 + 464);
      if (swift_dynamicCast())
      {
        v146 = *(v0 + 904);
        v147 = *(v0 + 912);
        v148 = sub_22B35F5EC();
        v149 = sub_22B36081C();

        v150 = [v148 dateFromString_];

        if (v150)
        {
          v151 = *(v0 + 976);
          sub_22B35DE5C();

          v152 = 0;
        }

        else
        {
          v152 = 1;
        }

        v153 = *(v0 + 1016) + 56;
        v127(*(v0 + 976), v152, 1, *(v0 + 1008));
        sub_22B35F33C();
      }
    }
  }

  if (!*(v2 + 16) || (v154 = *(v0 + 944), v155 = sub_22B33B28C(0xD000000000000012, 0x800000022B36CEC0), (v156 & 1) == 0))
  {
    v165 = *(v0 + 1016) + 56;
    v127(*(v0 + 968), 1, 1, *(v0 + 1008));
    goto LABEL_143;
  }

  v157 = *(v0 + 1016);
  v158 = *(v0 + 1008);
  v159 = *(v0 + 968);
  sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v155, v0 + 496);
  v160 = swift_dynamicCast();
  v127(v159, v160 ^ 1u, 1, v158);
  if ((*(v157 + 48))(v159, 1, v158) == 1)
  {
LABEL_143:
    sub_22B123284(*(v0 + 968), &qword_27D8BA340, &qword_22B363FB0);
    if (*(v2 + 16))
    {
      v166 = *(v0 + 944);
      v167 = sub_22B33B28C(0xD000000000000012, 0x800000022B36CEC0);
      if (v168)
      {
        sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v167, v0 + 528);
        if (swift_dynamicCast())
        {
          v169 = *(v0 + 680);
          v170 = *(v0 + 688);
          v171 = sub_22B35F5EC();
          v172 = sub_22B36081C();

          v173 = [v171 dateFromString_];

          if (v173)
          {
            v174 = *(v0 + 960);
            sub_22B35DE5C();

            v175 = 0;
          }

          else
          {
            v175 = 1;
          }

          v176 = *(v0 + 1016) + 56;
          v127(*(v0 + 960), v175, 1, *(v0 + 1008));
          sub_22B35F20C();
        }
      }
    }

    goto LABEL_150;
  }

  v161 = *(v0 + 1024);
  v162 = *(v0 + 1016);
  v163 = *(v0 + 1008);
  v164 = *(v0 + 992);
  (*(v162 + 32))(v161, *(v0 + 968), v163);
  (*(v162 + 16))(v164, v161, v163);
  v127(v164, 0, 1, v163);
  sub_22B35F20C();
  (*(v162 + 8))(v161, v163);
LABEL_150:
  sub_22B2AC400(0xD000000000000011, 0x800000022B36CEE0, *(v0 + 944), (v0 + 560));
  if (*(v0 + 584))
  {
    if (swift_dynamicCast())
    {
      v177 = *(v0 + 1104);
      sub_22B35F03C();
    }
  }

  else
  {
    sub_22B123284(v0 + 560, &unk_27D8BA950, &qword_22B364940);
  }

  sub_22B2AC400(0xD000000000000010, 0x800000022B36C000, *(v0 + 944), (v0 + 592));
  if (*(v0 + 616))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
    if (swift_dynamicCast())
    {
      v178 = *(v0 + 936);
      sub_22B35F19C();
    }
  }

  else
  {
    sub_22B123284(v0 + 592, &unk_27D8BA950, &qword_22B364940);
  }

  v179 = swift_task_alloc();
  *(v0 + 1088) = v179;
  *v179 = v0;
  v179[1] = sub_22B225BEC;

  return EKEnergySite.save(reset:tokenUpdate:)(0, v77);
}

uint64_t sub_22B225BEC()
{
  v2 = *(*v1 + 1088);
  v3 = *v1;
  v3[137] = v0;

  if (v0)
  {
    v4 = v3[119];

    return MEMORY[0x2822009F8](sub_22B225DD0, v4, 0);
  }

  else
  {
    v5 = v3[133];
    v6 = v3[132];
    v7 = v3[129];
    v8 = v3[128];
    v9 = v3[125];
    v10 = v3[124];
    v11 = v3[123];
    v12 = v3[122];
    v13 = v3[121];
    v17 = v3[120];

    v14 = v3[1];
    v15 = v3[135];

    return v14(v15);
  }
}

uint64_t sub_22B225DD0()
{
  v13 = *(v0 + 1096);
  v1 = *(v0 + 1064);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 1024);
  v5 = *(v0 + 1000);
  v6 = *(v0 + 992);
  v7 = *(v0 + 984);
  v8 = *(v0 + 976);
  v9 = *(v0 + 968);
  v10 = *(v0 + 960);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22B225ED0(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 16) = v3;
  *(v4 + 56) = a3;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_22B225F84;

  return sub_22B22250C(a1, a2, 1, 0);
}

uint64_t sub_22B225F84(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_22B22609C, v3, 0);
}

uint64_t sub_22B22609C()
{
  if (*(v0 + 32))
  {
    v1 = sub_22B35F12C();
    if (v2)
    {
      v3 = v1;
      v4 = v2;

      v5 = HIBYTE(v4) & 0xF;
      if ((v4 & 0x2000000000000000) == 0)
      {
        v5 = v3 & 0xFFFFFFFFFFFFLL;
      }

      if (v5)
      {
        *(v0 + 56);
        sub_22B35F2FC();
      }
    }

    v9 = swift_task_alloc();
    *(v0 + 40) = v9;
    *v9 = v0;
    v9[1] = sub_22B226204;

    return EKEnergySite.save(reset:tokenUpdate:)(0, 0);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v6 = 10;
    swift_willThrow();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_22B226204()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {
    v4 = v3[2];

    return MEMORY[0x2822009F8](sub_22B22633C, v4, 0);
  }

  else
  {
    v5 = v3[1];
    v6 = v3[4];

    return v5(v6);
  }
}

uint64_t sub_22B22633C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B2263A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = *MEMORY[0x277D85DE8];
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v9 = sub_22B35FF8C();
  v6[17] = v9;
  v10 = *(v9 - 8);
  v6[18] = v10;
  v11 = *(v10 + 64) + 15;
  v6[19] = swift_task_alloc();
  v12 = sub_22B35EC2C();
  v6[20] = v12;
  v13 = *(v12 - 8);
  v6[21] = v13;
  v14 = *(v13 + 64) + 15;
  v6[22] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280) - 8) + 64) + 15;
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v17 = sub_22B35DE9C();
  v6[27] = v17;
  v18 = *(v17 - 8);
  v6[28] = v18;
  v19 = *(v18 + 64) + 15;
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v20 = sub_22B35F7CC();
  v6[36] = v20;
  v21 = *(v20 - 8);
  v6[37] = v21;
  v22 = *(v21 + 64) + 15;
  v6[38] = swift_task_alloc();
  v23 = *(type metadata accessor for CDUsagePointRecords() - 8);
  v6[39] = v23;
  v24 = *(v23 + 64) + 15;
  v6[40] = swift_task_alloc();
  v25 = sub_22B35EC0C();
  v6[41] = v25;
  v26 = *(v25 - 8);
  v6[42] = v26;
  v27 = *(v26 + 64) + 15;
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA560, &unk_22B366200) - 8) + 64) + 15;
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v29 = sub_22B36052C();
  v6[48] = v29;
  v30 = *(v29 - 8);
  v6[49] = v30;
  v31 = *(v30 + 64) + 15;
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v32 = swift_task_alloc();
  v6[52] = v32;
  *v32 = v6;
  v32[1] = sub_22B226844;
  v33 = *MEMORY[0x277D85DE8];

  return sub_22B22250C(a1, a2, 0, 0);
}

uint64_t sub_22B226844(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 416);
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 424) = a1;

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22B226988, v3, 0);
}

uint64_t sub_22B226988()
{
  v168 = v0;
  v167[2] = *MEMORY[0x277D85DE8];
  v1 = v0[53];
  if (v1)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v2 = v0[51];
    v4 = v0[48];
    v3 = v0[49];
    v5 = v0[12];
    v6 = __swift_project_value_buffer(v4, qword_28140BD10);
    v0[54] = v6;
    swift_beginAccess();
    v7 = *(v3 + 16);
    v0[55] = v7;
    v0[56] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v7(v2, v6, v4);

    v8 = sub_22B36050C();
    v9 = sub_22B360D2C();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[51];
    v13 = v0[48];
    v12 = v0[49];
    if (v10)
    {
      v15 = v0[11];
      v14 = v0[12];
      v162 = v1;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v167[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_22B1A7B20(v15, v14, v167);
      _os_log_impl(&dword_22B116000, v8, v9, "Refresh Tariff Profiles for %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x23188F650](v17, -1, -1);
      v18 = v16;
      v1 = v162;
      MEMORY[0x23188F650](v18, -1, -1);
    }

    v19 = *(v12 + 8);
    v19(v11, v13);
    v0[57] = v19;
    v0[58] = sub_22B35F43C();
    v0[59] = v20;
    if (v20)
    {
      v0[60] = sub_22B35F41C();
      v0[61] = v21;
      if (v21)
      {
        v22 = v0[13];
        v0[9] = MEMORY[0x277D84FA0];
        if (v22)
        {

          v24 = sub_22B31A80C(v23);

          v25 = v24;
          v0[9] = v24;
LABEL_10:
          v0[69] = 0;
          v0[70] = v25;
          v26 = v0[61];
          if (*(v25 + 16))
          {
            v163 = v25;
            v27 = v0[60];
            v28 = v0[34];
            v29 = v0[26];
            sub_22B35DE6C();
            sub_22B35E05C();
            v30 = sub_22B35E0BC();
            v0[71] = v30;
            v31 = *(v30 - 8);
            v157 = *(v31 + 48);
            v32 = v157(v29, 1, v30);
            if (v32 == 1)
            {
              __break(1u);
            }

            else
            {
              v36 = v0[34];
              v35 = v0[35];
              v38 = v0[27];
              v37 = v0[28];
              v39 = v0[26];
              v40 = v0[24];
              v143 = v0[33];
              v147 = v0[14];
              sub_22B35F50C();
              v41 = *(v37 + 8);
              v0[72] = v41;
              v0[73] = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v150 = v41;
              v41(v36, v38);
              v42 = *(v31 + 8);
              v0[74] = v42;
              v0[75] = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v154 = v30;
              v42(v39, v30);
              sub_22B35DDCC();
              sub_22B170BE0(v147, v40, &qword_27D8BA340, &qword_22B363FB0);
              v43 = *(v37 + 48);
              if (v43(v40, 1, v38) == 1)
              {
                sub_22B123284(v0[24], &qword_27D8BA340, &qword_22B363FB0);
              }

              else
              {
                v73 = v0[35];
                v74 = v0[32];
                v75 = v0[27];
                v76 = v0[28];
                v78 = v0[23];
                v77 = v0[24];
                v141 = v0[15];
                v150(v73, v75);
                v145 = *(v76 + 32);
                v145(v74, v77, v75);
                (*(v76 + 16))(v73, v74, v75);
                sub_22B170BE0(v141, v78, &qword_27D8BA340, &qword_22B363FB0);
                if (v43(v78, 1, v75) == 1)
                {
                  v79 = v0[35];
                  v81 = v0[32];
                  v80 = v0[33];
                  v82 = v0[31];
                  v83 = v0[27];
                  sub_22B123284(v0[23], &qword_27D8BA340, &qword_22B363FB0);
                  sub_22B35DDCC();
                  v150(v81, v83);
                  v150(v80, v83);
                  v84 = v80;
                  v85 = v82;
                  v86 = v83;
                }

                else
                {
                  v99 = v0[33];
                  v100 = v0[27];
                  v101 = v0[23];
                  v150(v0[32], v100);
                  v150(v99, v100);
                  v84 = v99;
                  v85 = v101;
                  v86 = v100;
                }

                v145(v84, v85, v86);
              }

              v102 = v0[60];
              v152 = v0[61];
              v103 = v0[35];
              v104 = v0[33];
              v106 = v0[29];
              v105 = v0[30];
              v108 = v0[27];
              v107 = v0[28];
              v109 = v0[25];
              v110 = v0[22];
              sub_22B35EC1C();
              v111 = *(v107 + 16);
              v111(v105, v103, v108);
              v111(v106, v104, v108);

              sub_22B35E05C();
              v32 = v157(v109, 1, v154);
              if (v32 != 1)
              {
                v112 = v0[61];
                v113 = v0[59];

                v114 = swift_task_alloc();
                v0[76] = v114;
                *v114 = v0;
                v114[1] = sub_22B227E28;
                v115 = v0[58];
                v116 = v0[29];
                v117 = v0[30];
                v118 = v0[25];
                v119 = *MEMORY[0x277D85DE8];

                return sub_22B313FE4(v117, v116, v163, v115, v113, v118);
              }
            }

            __break(1u);
            return MEMORY[0x2822009F8](v32, v33, v34);
          }

          v71 = v0[59];
          v72 = v0[53];

          goto LABEL_49;
        }

        v57 = v0[47];
        v59 = v0[20];
        v58 = v0[21];
        sub_22B35F16C();
        v60 = (*(v58 + 48))(v57, 1, v59);
        v61 = v0[47];
        if (v60)
        {
          sub_22B123284(v0[47], &qword_27D8BA560, &unk_22B366200);
        }

        else
        {
          v87 = sub_22B35EBAC();
          sub_22B123284(v61, &qword_27D8BA560, &unk_22B366200);
          v88 = *(v87 + 16);
          if (v88)
          {
            v89 = v0[42];
            v91 = *(v89 + 16);
            v90 = v89 + 16;
            v165 = v91;
            v92 = v87 + ((*(v90 + 64) + 32) & ~*(v90 + 64));
            v93 = *(v90 + 56);
            do
            {
              v94 = v0[45];
              v95 = v0[41];
              v165(v94, v92, v95);
              v96 = sub_22B35EBCC();
              v98 = v97;
              (*(v90 - 8))(v94, v95);
              sub_22B32DF50(v167, v96, v98);

              v92 += v93;
              --v88;
            }

            while (v88);

            v25 = v0[9];
            goto LABEL_10;
          }
        }

        v62 = sub_22B35F12C();
        v0[62] = v62;
        v0[63] = v63;
        if (v63)
        {
          v64 = v62;
          v65 = v63;
          v66 = sub_22B35F43C();
          v0[64] = v66;
          v0[65] = v67;
          if (v67)
          {
            v68 = HIBYTE(v65) & 0xF;
            if ((v65 & 0x2000000000000000) == 0)
            {
              v68 = v64 & 0xFFFFFFFFFFFFLL;
            }

            if (v68)
            {
              v69 = HIBYTE(v67) & 0xF;
              if ((v67 & 0x2000000000000000) == 0)
              {
                v69 = v66 & 0xFFFFFFFFFFFFLL;
              }

              if (v69)
              {
                if (qword_2814096B8 != -1)
                {
                  swift_once();
                }

                v33 = qword_28140BCE8;
                v0[66] = qword_28140BCE8;
                v70 = *MEMORY[0x277D85DE8];
                v32 = sub_22B227550;
                v34 = 0;

                return MEMORY[0x2822009F8](v32, v33, v34);
              }
            }
          }
        }
      }

      else
      {
      }
    }

    else
    {
    }

LABEL_49:
    v122 = v0[50];
    v121 = v0[51];
    v124 = v0[46];
    v123 = v0[47];
    v126 = v0[44];
    v125 = v0[45];
    v127 = v0[43];
    v128 = v0[40];
    v129 = v0[38];
    v130 = v0[35];
    v133 = v0[34];
    v135 = v0[33];
    v137 = v0[32];
    v139 = v0[31];
    v142 = v0[30];
    v146 = v0[29];
    v149 = v0[26];
    v153 = v0[25];
    v156 = v0[24];
    v159 = v0[23];
    v161 = v0[22];
    v166 = v0[19];

    v55 = v0[1];
    v131 = *MEMORY[0x277D85DE8];
    goto LABEL_50;
  }

  sub_22B134CDC();
  swift_allocError();
  *v44 = 10;
  swift_willThrow();
  v46 = v0[50];
  v45 = v0[51];
  v48 = v0[46];
  v47 = v0[47];
  v50 = v0[44];
  v49 = v0[45];
  v51 = v0[43];
  v52 = v0[40];
  v53 = v0[38];
  v54 = v0[35];
  v132 = v0[34];
  v134 = v0[33];
  v136 = v0[32];
  v138 = v0[31];
  v140 = v0[30];
  v144 = v0[29];
  v148 = v0[26];
  v151 = v0[25];
  v155 = v0[24];
  v158 = v0[23];
  v160 = v0[22];
  v164 = v0[19];

  v55 = v0[1];
  v56 = *MEMORY[0x277D85DE8];
LABEL_50:

  return v55();
}

uint64_t sub_22B227550()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[66];
  sub_22B32C2B8(v0[62], v0[63], v0[64], v0[65], 0, 0);
  v0[67] = v2;
  v0[68] = 0;
  v3 = v0[65];
  v4 = v0[63];
  v5 = v0[16];

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22B227668, v5, 0);
}

uint64_t sub_22B227668()
{
  v112 = v0;
  v111[2] = *MEMORY[0x277D85DE8];
  v1 = v0[67];
  if (v1)
  {
    v101 = *(v1 + 16);
    if (v101)
    {
      v2 = 0;
      v94 = v0[39];
      v97 = v0[40];
      v87 = v0[67];
      v90 = v1 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
      v85 = v0[37];
      do
      {
        if (v2 >= *(v1 + 16))
        {
          __break(1u);
        }

        v3 = v0[40];
        sub_22B23E004(v90 + *(v94 + 72) * v2, v3);
        v4 = *(v97 + 32);

        sub_22B23E068(v3, type metadata accessor for CDUsagePointRecords);
        v5 = *(v4 + 16);
        if (v5)
        {
          v106 = v2;
          v6 = v4 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
          v108 = *(v85 + 72);
          v7 = *(v85 + 16);
          do
          {
            v8 = v0[38];
            v9 = v0[36];
            v7(v8, v6, v9);
            v10 = sub_22B35F75C();
            v12 = v11;
            (*(v85 + 8))(v8, v9);
            sub_22B32DF50(v111, v10, v12);

            v6 += v108;
            --v5;
          }

          while (v5);

          v1 = v87;
          v2 = v106;
        }

        else
        {
        }

        ++v2;
      }

      while (v2 != v101);
    }

    v0[69] = v0[68];
    v13 = v0[9];
    v0[70] = v13;
    v14 = v0[61];
    if (*(v13 + 16))
    {
      v109 = v13;
      v15 = v0[60];
      v16 = v0[34];
      v17 = v0[26];
      sub_22B35DE6C();
      sub_22B35E05C();
      v18 = sub_22B35E0BC();
      v0[71] = v18;
      v19 = *(v18 - 8);
      v104 = *(v19 + 48);
      result = v104(v17, 1, v18);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        v22 = v0[34];
        v21 = v0[35];
        v24 = v0[27];
        v23 = v0[28];
        v25 = v0[26];
        v26 = v0[24];
        v91 = v0[33];
        v95 = v0[14];
        sub_22B35F50C();
        v27 = *(v23 + 8);
        v0[72] = v27;
        v0[73] = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v98 = v27;
        v27(v22, v24);
        v28 = *(v19 + 8);
        v0[74] = v28;
        v0[75] = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v102 = v18;
        v28(v25, v18);
        sub_22B35DDCC();
        sub_22B170BE0(v95, v26, &qword_27D8BA340, &qword_22B363FB0);
        v29 = *(v23 + 48);
        if (v29(v26, 1, v24) == 1)
        {
          sub_22B123284(v0[24], &qword_27D8BA340, &qword_22B363FB0);
        }

        else
        {
          v46 = v0[35];
          v47 = v0[32];
          v48 = v0[27];
          v49 = v0[28];
          v51 = v0[23];
          v50 = v0[24];
          v89 = v0[15];
          v98(v46, v48);
          v93 = *(v49 + 32);
          v93(v47, v50, v48);
          (*(v49 + 16))(v46, v47, v48);
          sub_22B170BE0(v89, v51, &qword_27D8BA340, &qword_22B363FB0);
          if (v29(v51, 1, v48) == 1)
          {
            v52 = v0[35];
            v54 = v0[32];
            v53 = v0[33];
            v55 = v0[31];
            v56 = v0[27];
            sub_22B123284(v0[23], &qword_27D8BA340, &qword_22B363FB0);
            sub_22B35DDCC();
            v98(v54, v56);
            v98(v53, v56);
            v57 = v53;
            v58 = v55;
            v59 = v56;
          }

          else
          {
            v60 = v0[33];
            v61 = v0[27];
            v62 = v0[23];
            v98(v0[32], v61);
            v98(v60, v61);
            v57 = v60;
            v58 = v62;
            v59 = v61;
          }

          v93(v57, v58, v59);
        }

        v63 = v0;
        v64 = v0[60];
        v100 = v0[61];
        v65 = v0[35];
        v66 = v0[33];
        v68 = v0[29];
        v67 = v0[30];
        v69 = v0[28];
        v70 = v63[27];
        v71 = v63[25];
        v72 = v63[22];
        sub_22B35EC1C();
        v73 = *(v69 + 16);
        v73(v67, v65, v70);
        v73(v68, v66, v70);

        sub_22B35E05C();
        result = v104(v71, 1, v102);
        if (result != 1)
        {
          v74 = v63[61];
          v75 = v63[59];

          v76 = swift_task_alloc();
          v63[76] = v76;
          *v76 = v63;
          v76[1] = sub_22B227E28;
          v77 = v63[58];
          v78 = v63[29];
          v79 = v63[25];
          v80 = *MEMORY[0x277D85DE8];
          v81 = v63[30];

          return sub_22B313FE4(v81, v78, v109, v77, v75, v79);
        }
      }

      __break(1u);
      return result;
    }

    v33 = v0[59];
    v32 = v0[53];
  }

  else
  {
    v30 = v0[61];
    v31 = v0[59];
    v32 = v0[53];
  }

  v35 = v0[50];
  v34 = v0[51];
  v37 = v0[46];
  v36 = v0[47];
  v39 = v0[44];
  v38 = v0[45];
  v40 = v0[43];
  v41 = v0[40];
  v42 = v0[38];
  v43 = v0[35];
  v82 = v0[34];
  v83 = v0[33];
  v84 = v0[32];
  v86 = v0[31];
  v88 = v0[30];
  v92 = v0[29];
  v96 = v0[26];
  v99 = v0[25];
  v103 = v0[24];
  v105 = v0[23];
  v107 = v0[22];
  v110 = v0[19];

  v44 = v0[1];
  v45 = *MEMORY[0x277D85DE8];

  return v44();
}

uint64_t sub_22B227E28(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 608);
  v16 = *(*v1 + 600);
  v15 = *(*v1 + 592);
  v3 = *(*v1 + 584);
  v4 = *(*v1 + 576);
  v14 = *(*v1 + 568);
  v5 = *(*v1 + 560);
  v6 = *(*v1 + 472);
  v7 = *(*v1 + 240);
  v8 = *(*v1 + 232);
  v9 = *(*v1 + 216);
  v10 = *(*v1 + 200);
  v13 = *(*v1 + 128);
  v18 = *v1;
  *(*v1 + 616) = a1;

  v4(v8, v9);
  v4(v7, v9);
  v15(v10, v14);
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22B2280B4, v13, 0);
}

uint64_t sub_22B2280B4()
{
  v1 = 0;
  v136 = *MEMORY[0x277D85DE8];
  v2 = v0[77];
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v106 = v0[77];
  v7 = -1 << *(v106 + 32);
  v8 = v0[42];
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v9 = v6 & v3;
  v10 = (63 - v7) >> 6;
  v122 = v0[18];
  v126 = (v122 + 8);
  v96 = (v8 + 16);
  v98 = v0[42];
  v104 = (v8 + 8);
  v11 = v0[69];
  v100 = v4;
  v97 = v10;
  if (v9)
  {
    while (1)
    {
      v12 = v133;
LABEL_10:
      v14 = v12[44];
      v109 = v1;
      v112 = v9;
      v15 = __clz(__rbit64(v9)) | (v1 << 6);
      v16 = (*(v106 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      v19 = (*(v106 + 56) + 24 * v15);
      v21 = *v19;
      v20 = v19[1];
      v22 = v19[2];

      sub_22B35EBFC();

      sub_22B35EBBC();

      sub_22B35EBDC();
      v129 = *(v21 + 16);
      if (v129)
      {
        break;
      }

LABEL_19:

      v40 = objc_opt_self();
      v41 = sub_22B360A3C();

      v133[10] = 0;
      v42 = [v40 archivedDataWithRootObject:v41 requiringSecureCoding:0 error:v133 + 10];

      v43 = v133[10];
      if (!v42)
      {
        v88 = v133[77];
        v89 = v133[73];
        v90 = v133[72];
        v91 = v133[53];
        v64 = v133;
        v118 = v133[44];
        v92 = v133[41];
        v132 = v133[35];
        v93 = v133[27];
        v94 = v133[21];
        v125 = v133[22];
        v128 = v133[33];
        v121 = v133[20];
        v95 = v43;
        sub_22B35DB9C();

        swift_willThrow();

        (*v104)(v118, v92);
        (*(v94 + 8))(v125, v121);
        v90(v128, v93);
        v90(v132, v93);
        goto LABEL_27;
      }

      v44 = v133[43];
      v45 = v133[44];
      v46 = v133[41];
      v47 = v133[22];
      v48 = v43;
      v49 = sub_22B35DCDC();
      v51 = v50;

      sub_22B144B30(v49, v51);
      sub_22B35EBEC();
      (*v96)(v44, v45, v46);
      v52 = sub_22B35EB9C();
      v54 = v53;
      v55 = *v53;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v54 = v55;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v55 = sub_22B32D1F0(0, v55[2] + 1, 1, v55);
        *v54 = v55;
      }

      v58 = v55[2];
      v57 = v55[3];
      if (v58 >= v57 >> 1)
      {
        v55 = sub_22B32D1F0(v57 > 1, v58 + 1, 1, v55);
        *v54 = v55;
      }

      v59 = v133[44];
      v60 = v133[43];
      v61 = v133[41];
      v55[2] = v58 + 1;
      v62 = v55 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
      v9 = (v112 - 1) & v112;
      (*(v98 + 32))(&v62[*(v98 + 72) * v58], v60, v61);
      v52();
      sub_22B12F174(v49, v51);
      (*(v98 + 8))(v59, v61);
      v4 = v100;
      v10 = v97;
      v1 = v109;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v23 = 0;
    v24 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v23 >= *(v21 + 16))
      {
        __break(1u);
LABEL_35:
        __break(1u);
      }

      v25 = v21;
      v26 = (*(v122 + 16))(v12[19], v21 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v23, v12[17]);
      v27 = MEMORY[0x23188EEB0](v26);
      v28 = sub_22B35D82C();
      v29 = *(v28 + 48);
      v30 = *(v28 + 52);
      swift_allocObject();
      sub_22B35D81C();
      sub_22B23E468(&qword_27D8BA848, 255, MEMORY[0x277D180E0]);
      v31 = sub_22B35D80C();
      if (v11)
      {
        break;
      }

      v33 = v31;
      v34 = v32;
      v35 = v12[19];
      v36 = v12[17];

      objc_autoreleasePoolPop(v27);
      (*v126)(v35, v36);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_22B32D0BC(0, *(v24 + 2) + 1, 1, v24);
      }

      v38 = *(v24 + 2);
      v37 = *(v24 + 3);
      v12 = v133;
      if (v38 >= v37 >> 1)
      {
        v24 = sub_22B32D0BC((v37 > 1), v38 + 1, 1, v24);
      }

      v11 = 0;
      ++v23;
      *(v24 + 2) = v38 + 1;
      v39 = &v24[16 * v38];
      *(v39 + 4) = v33;
      *(v39 + 5) = v34;
      v21 = v25;
      if (v129 == v23)
      {
        goto LABEL_19;
      }
    }

    v63 = v12[77];
    v64 = v12;
    v130 = v12[72];
    v134 = v12[73];
    v65 = v12[53];
    v107 = v64[41];
    v110 = v64[44];
    v119 = v64[33];
    v123 = v64[35];
    v66 = v64[27];
    v67 = v64[21];
    v113 = v64[20];
    v115 = v64[22];
    v99 = v64[17];
    v101 = v64[19];

    objc_autoreleasePoolPop(v27);

    (*v126)(v101, v99);
    (*v104)(v110, v107);
    (*(v67 + 8))(v115, v113);
    v130(v119, v66);
    v130(v123, v66);

LABEL_27:
    v69 = v64[50];
    v68 = v64[51];
    v70 = v64[46];
    v71 = v64[47];
    v73 = v64[44];
    v72 = v64[45];
    v74 = v64[43];
    v75 = v64[40];
    v76 = v64[38];
    v102 = v64[35];
    v103 = v64[34];
    v105 = v64[33];
    v108 = v64[32];
    v111 = v64[31];
    v114 = v64[30];
    v116 = v64[29];
    v117 = v64[26];
    v120 = v64[25];
    v124 = v64[24];
    v127 = v64[23];
    v131 = v64[22];
    v135 = v64[19];

    v77 = v64[1];
    v78 = *MEMORY[0x277D85DE8];

    return v77();
  }

  else
  {
LABEL_5:
    v12 = v133;
    while (1)
    {
      v13 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        goto LABEL_35;
      }

      if (v13 >= v10)
      {
        break;
      }

      v9 = *(v4 + 8 * v13);
      ++v1;
      if (v9)
      {
        v1 = v13;
        goto LABEL_10;
      }
    }

    v80 = v133[77];
    v81 = v133[53];
    v82 = v133[46];
    v84 = v133[21];
    v83 = v133[22];
    v85 = v133[20];

    (*(v84 + 16))(v82, v83, v85);
    (*(v84 + 56))(v82, 0, 1, v85);
    sub_22B35F17C();
    v86 = swift_task_alloc();
    v133[78] = v86;
    *v86 = v133;
    v86[1] = sub_22B228A04;
    v87 = *MEMORY[0x277D85DE8];

    return EKEnergySite.save(reset:tokenUpdate:)(0, 0);
  }
}

uint64_t sub_22B228A04()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 624);
  v4 = *v1;
  *(*v1 + 632) = v0;

  v5 = *(v2 + 128);
  if (v0)
  {
    v6 = sub_22B229078;
  }

  else
  {
    v6 = sub_22B228B5C;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B228B5C()
{
  v54 = v0;
  v53[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 448);
  v2 = *(v0 + 96);
  (*(v0 + 440))(*(v0 + 400), *(v0 + 432), *(v0 + 384));

  v3 = sub_22B36050C();
  v4 = sub_22B360D2C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 576);
  v7 = *(v0 + 456);
  v41 = *(v0 + 424);
  v43 = *(v0 + 392);
  v45 = *(v0 + 384);
  v47 = *(v0 + 400);
  v8 = *(v0 + 280);
  v9 = *(v0 + 264);
  v10 = *(v0 + 216);
  v11 = *(v0 + 168);
  v12 = *(v0 + 160);
  v49 = v12;
  v51 = *(v0 + 176);
  if (v5)
  {
    v37 = *(v0 + 584);
    v39 = *(v0 + 280);
    v14 = *(v0 + 88);
    v13 = *(v0 + 96);
    v35 = *(v0 + 264);
    v15 = swift_slowAlloc();
    v33 = v7;
    v16 = swift_slowAlloc();
    v53[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_22B1A7B20(v14, v13, v53);
    _os_log_impl(&dword_22B116000, v3, v4, "Refresh Tariff Profiles complete %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23188F650](v16, -1, -1);
    MEMORY[0x23188F650](v15, -1, -1);

    v33(v47, v45);
    (*(v11 + 8))(v51, v49);
    v6(v35, v10);
    v17 = v39;
  }

  else
  {

    v7(v47, v45);
    (*(v11 + 8))(v51, v49);
    v6(v9, v10);
    v17 = v8;
  }

  v6(v17, v10);
  v19 = *(v0 + 400);
  v18 = *(v0 + 408);
  v21 = *(v0 + 368);
  v20 = *(v0 + 376);
  v23 = *(v0 + 352);
  v22 = *(v0 + 360);
  v24 = *(v0 + 344);
  v25 = *(v0 + 320);
  v26 = *(v0 + 304);
  v27 = *(v0 + 280);
  v31 = *(v0 + 272);
  v32 = *(v0 + 264);
  v34 = *(v0 + 256);
  v36 = *(v0 + 248);
  v38 = *(v0 + 240);
  v40 = *(v0 + 232);
  v42 = *(v0 + 208);
  v44 = *(v0 + 200);
  v46 = *(v0 + 192);
  v48 = *(v0 + 184);
  v50 = *(v0 + 176);
  v52 = *(v0 + 152);

  v28 = *(v0 + 8);
  v29 = *MEMORY[0x277D85DE8];

  return v28();
}

uint64_t sub_22B228EC4()
{
  v27 = *MEMORY[0x277D85DE8];

  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v4 = *(v0 + 368);
  v3 = *(v0 + 376);
  v6 = *(v0 + 352);
  v5 = *(v0 + 360);
  v7 = *(v0 + 344);
  v8 = *(v0 + 320);
  v9 = *(v0 + 304);
  v10 = *(v0 + 280);
  v14 = *(v0 + 544);
  v15 = *(v0 + 272);
  v16 = *(v0 + 264);
  v17 = *(v0 + 256);
  v18 = *(v0 + 248);
  v19 = *(v0 + 240);
  v20 = *(v0 + 232);
  v21 = *(v0 + 208);
  v22 = *(v0 + 200);
  v23 = *(v0 + 192);
  v24 = *(v0 + 184);
  v25 = *(v0 + 176);
  v26 = *(v0 + 152);

  v11 = *(v0 + 8);
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_22B229078()
{
  v35 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 280);
  v4 = *(v0 + 264);
  v5 = *(v0 + 216);
  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  v8 = *(v0 + 160);

  (*(v7 + 8))(v6, v8);
  v2(v4, v5);
  v2(v3, v5);
  v10 = *(v0 + 400);
  v9 = *(v0 + 408);
  v12 = *(v0 + 368);
  v11 = *(v0 + 376);
  v14 = *(v0 + 352);
  v13 = *(v0 + 360);
  v15 = *(v0 + 344);
  v16 = *(v0 + 320);
  v17 = *(v0 + 304);
  v18 = *(v0 + 280);
  v22 = *(v0 + 632);
  v23 = *(v0 + 272);
  v24 = *(v0 + 264);
  v25 = *(v0 + 256);
  v26 = *(v0 + 248);
  v27 = *(v0 + 240);
  v28 = *(v0 + 232);
  v29 = *(v0 + 208);
  v30 = *(v0 + 200);
  v31 = *(v0 + 192);
  v32 = *(v0 + 184);
  v33 = *(v0 + 176);
  v34 = *(v0 + 152);

  v19 = *(v0 + 8);
  v20 = *MEMORY[0x277D85DE8];

  return v19();
}

uint64_t sub_22B229278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v63 = a7;
  v64 = a8;
  v60 = a5;
  v61 = a6;
  v65 = a2;
  v51 = a1;
  v62 = a13;
  v54 = a4;
  v55 = a12;
  v58 = a3;
  v59 = a11;
  v53 = a10;
  v56 = a14;
  v57 = a9;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  v48 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - v18;
  v50 = &v45 - v18;
  v20 = sub_22B35DE9C();
  v47 = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v49 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v45 - v25;
  v52 = &v45 - v25;
  v27 = sub_22B360B6C();
  (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
  (*(v21 + 16))(&v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), a15, v20);
  v46 = v16;
  (*(v16 + 16))(v19, v51, v15);
  v29 = sub_22B23E468(&qword_27D8BA2B0, v28, type metadata accessor for EnergySiteManager);
  v30 = (*(v21 + 80) + 136) & ~*(v21 + 80);
  v31 = (v22 + *(v16 + 80) + v30) & ~*(v16 + 80);
  v32 = swift_allocObject();
  v33 = v65;
  *(v32 + 2) = v65;
  *(v32 + 3) = v29;
  v34 = v58;
  *(v32 + 4) = v33;
  *(v32 + 5) = v34;
  v35 = v53;
  v36 = v60;
  v37 = v61;
  *(v32 + 6) = v54;
  *(v32 + 7) = v36;
  v38 = v63;
  v39 = v64;
  *(v32 + 8) = v37;
  *(v32 + 9) = v38;
  v41 = v56;
  v40 = v57;
  *(v32 + 10) = v39;
  *(v32 + 11) = v40;
  v42 = v59;
  *(v32 + 12) = v35;
  *(v32 + 13) = v42;
  v43 = v62;
  *(v32 + 14) = v55;
  *(v32 + 15) = v43;
  *(v32 + 16) = v41;
  (*(v21 + 32))(&v32[v30], v49, v47);
  (*(v46 + 32))(&v32[v31], v50, v48);

  swift_retain_n();

  sub_22B123DF0(0, 0, v52, &unk_22B366298, v32);
}

uint64_t sub_22B229628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 640) = v48;
  *(v8 + 632) = v47;
  *(v8 + 616) = v46;
  *(v8 + 600) = v45;
  *(v8 + 584) = v44;
  *(v8 + 568) = v43;
  *(v8 + 560) = a8;
  *(v8 + 552) = a7;
  *(v8 + 544) = a6;
  *(v8 + 536) = a5;
  *(v8 + 528) = a4;
  v11 = sub_22B35DE9C();
  *(v8 + 648) = v11;
  v12 = *(v11 - 8);
  *(v8 + 656) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 664) = swift_task_alloc();
  *(v8 + 672) = swift_task_alloc();
  *(v8 + 680) = swift_task_alloc();
  v14 = sub_22B35EE4C();
  *(v8 + 688) = v14;
  v15 = *(v14 - 8);
  *(v8 + 696) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 704) = swift_task_alloc();
  v17 = sub_22B36052C();
  *(v8 + 712) = v17;
  v18 = *(v17 - 8);
  *(v8 + 720) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 728) = swift_task_alloc();
  *(v8 + 736) = swift_task_alloc();
  *(v8 + 744) = swift_task_alloc();
  *(v8 + 752) = swift_task_alloc();
  *(v8 + 760) = swift_task_alloc();
  *(v8 + 768) = swift_task_alloc();
  *(v8 + 776) = swift_task_alloc();
  *(v8 + 784) = swift_task_alloc();
  *(v8 + 792) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280) - 8) + 64) + 15;
  *(v8 + 800) = swift_task_alloc();
  *(v8 + 808) = swift_task_alloc();
  *(v8 + 816) = swift_task_alloc();
  v21 = sub_22B35E0BC();
  *(v8 + 824) = v21;
  v22 = *(v21 - 8);
  *(v8 + 832) = v22;
  v23 = *(v22 + 64) + 15;
  *(v8 + 840) = swift_task_alloc();
  v24 = sub_22B35DD8C();
  *(v8 + 848) = v24;
  v25 = *(v24 - 8);
  *(v8 + 856) = v25;
  v26 = *(v25 + 64) + 15;
  *(v8 + 864) = swift_task_alloc();
  v27 = sub_22B35DD6C();
  *(v8 + 872) = v27;
  v28 = *(v27 - 8);
  *(v8 + 880) = v28;
  v29 = *(v28 + 64) + 15;
  *(v8 + 888) = swift_task_alloc();
  v30 = sub_22B35DD4C();
  *(v8 + 896) = v30;
  v31 = *(v30 - 8);
  *(v8 + 904) = v31;
  v32 = *(v31 + 64) + 15;
  *(v8 + 912) = swift_task_alloc();
  v33 = sub_22B35DD5C();
  *(v8 + 920) = v33;
  v34 = *(v33 - 8);
  *(v8 + 928) = v34;
  v35 = *(v34 + 64) + 15;
  *(v8 + 936) = swift_task_alloc();
  v36 = sub_22B35DDBC();
  *(v8 + 944) = v36;
  v37 = *(v36 - 8);
  *(v8 + 952) = v37;
  v38 = *(v37 + 64) + 15;
  *(v8 + 960) = swift_task_alloc();
  v39 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  *(v8 + 968) = swift_task_alloc();
  *(v8 + 976) = swift_task_alloc();
  *(v8 + 984) = swift_task_alloc();
  *(v8 + 992) = swift_task_alloc();
  *(v8 + 1000) = swift_task_alloc();
  *(v8 + 1008) = swift_task_alloc();
  *(v8 + 1016) = swift_task_alloc();
  *(v8 + 1024) = swift_task_alloc();
  v40 = swift_task_alloc();
  *(v8 + 1032) = v40;
  *v40 = v8;
  v40[1] = sub_22B229BB4;

  return sub_22B22250C(a5, a6, 0, 0);
}

uint64_t sub_22B229BB4(uint64_t a1)
{
  v2 = *(*v1 + 1032);
  v3 = *(*v1 + 528);
  v5 = *v1;
  *(*v1 + 1040) = a1;

  return MEMORY[0x2822009F8](sub_22B229CCC, v3, 0);
}

uint64_t sub_22B229CCC()
{
  if (v0[130])
  {
    v1 = v0[70];
    sub_22B36012C();
    v2 = *(MEMORY[0x277D18208] + 4);

    v3 = swift_task_alloc();
    v0[131] = v3;
    *v3 = v0;
    v3[1] = sub_22B229FD4;
    v4 = v0[70];
    v5 = v0[69];

    return MEMORY[0x282172500](v5, v4);
  }

  else
  {
    sub_22B134CDC();
    v6 = swift_allocError();
    *v7 = 10;
    swift_willThrow();
    v8 = v0[80];
    v0[63] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
    sub_22B360ADC();
    v9 = v0[128];
    v10 = v0[127];
    v11 = v0[126];
    v12 = v0[125];
    v13 = v0[124];
    v14 = v0[123];
    v15 = v0[122];
    v16 = v0[121];
    v17 = v0[120];
    v18 = v0[117];
    v21 = v0[114];
    v22 = v0[111];
    v23 = v0[108];
    v24 = v0[105];
    v25 = v0[102];
    v26 = v0[101];
    v27 = v0[100];
    v28 = v0[99];
    v29 = v0[98];
    v30 = v0[97];
    v31 = v0[96];
    v32 = v0[95];
    v33 = v0[94];
    v34 = v0[93];
    v35 = v0[92];
    v36 = v0[91];
    v37 = v0[88];
    v38 = v0[85];
    v39 = v0[84];
    v40 = v0[83];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_22B229FD4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1048);
  v6 = *v2;
  *(v4 + 1056) = a1;
  *(v4 + 1064) = v1;

  v7 = *(v3 + 528);
  if (v1)
  {
    v8 = sub_22B22EB20;
  }

  else
  {
    v8 = sub_22B22A10C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22B22A10C()
{
  v1 = *(v0[66] + 120);
  v0[134] = v1;
  v2 = *(MEMORY[0x277D181A0] + 4);
  v11 = (*MEMORY[0x277D181A0] + MEMORY[0x277D181A0]);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[135] = v4;
  *v4 = v0;
  v4[1] = sub_22B22A1E4;
  v5 = v0[132];
  v6 = v0[74];
  v7 = v0[73];
  v8 = v0[72];
  v9 = v0[71];

  return v11(v9, v8, v7, v6, v3);
}

uint64_t sub_22B22A1E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1080);
  v9 = *v2;
  *(v3 + 1088) = a1;
  *(v3 + 1096) = v1;

  if (v1)
  {
    v5 = *(v3 + 528);
    v6 = sub_22B22ED5C;
  }

  else
  {
    v7 = *(v3 + 528);

    v6 = sub_22B22A310;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B22A310()
{
  v1 = v0[114];
  v2 = v0[113];
  v3 = v0[112];
  v4 = v0[111];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[107];
  v33 = v0[106];
  v34 = v0[108];
  v8 = v0[104];
  v35 = v0[103];
  v9 = v0[102];
  (*(v0[116] + 104))(v0[117], *MEMORY[0x277CC9460], v0[115]);
  (*(v2 + 104))(v1, *MEMORY[0x277CC9458], v3);
  (*(v5 + 104))(v4, *MEMORY[0x277CC9468], v6);
  (*(v7 + 104))(v34, *MEMORY[0x277CC9480], v33);
  sub_22B35E08C();
  v10 = *(v8 + 48);
  v0[138] = v10;
  v0[139] = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v11 = v10(v9, 1, v35);
  if (v11 == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = v0[137];
    v13 = v0[136];
    v14 = v0[128];
    v15 = v0[120];
    v16 = v0[117];
    v17 = v0[114];
    v18 = v0[111];
    v19 = v0[108];
    (*(v0[104] + 32))(v0[105], v0[102], v0[103]);
    sub_22B35DD7C();
    v20 = sub_22B36013C();
    sub_22B3601BC();

    sub_22B35DD9C();
    v21 = v12;
    v22 = v0[120];
    v23 = v0[119];
    v24 = v0[118];
    if (v21)
    {

      (*(v23 + 8))(v22, v24);
      v25 = 1;
    }

    else
    {
      (*(v23 + 8))(v0[120], v0[118]);

      v25 = 0;
    }

    v26 = v0[128];
    v27 = v0[81];
    v28 = v0[66];
    v29 = *(v0[82] + 56);
    v0[140] = v29;
    v29(v26, v25, 1, v27);
    v30 = *(v28 + 120);
    v0[141] = v30;
    v0[2] = v0;
    v0[3] = sub_22B22A664;
    v31 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD20, &qword_22B366250);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_22B30F28C;
    v0[21] = &block_descriptor_79;
    v0[22] = v31;
    [v30 resetWithCompletionHandler_];
    v11 = (v0 + 2);
  }

  return MEMORY[0x282200938](v11);
}

uint64_t sub_22B22A664()
{
  v1 = *(*v0 + 528);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B22A758, v1, 0);
}

uint64_t sub_22B22A758()
{
  v133 = v0;
  v1 = *(v0 + 1088);

  v2 = sub_22B36013C();
  v3 = sub_22B3601AC();

  v4 = v3 >> 62;
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_56;
  }

LABEL_49:
  if (sub_22B36109C() != 1)
  {
LABEL_56:
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v91 = *(v0 + 728);
    v92 = *(v0 + 720);
    v93 = *(v0 + 712);
    v94 = __swift_project_value_buffer(v93, qword_28140BD10);
    swift_beginAccess();
    (*(v92 + 16))(v91, v94, v93);

    v95 = sub_22B36050C();
    v96 = sub_22B360D1C();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v131 = v98;
      *v97 = 136315394;
      *(v97 + 4) = sub_22B1A7B20(0xD000000000000085, 0x800000022B369350, &v131);
      *(v97 + 12) = 2048;
      if (v4)
      {
        v99 = sub_22B36109C();
      }

      else
      {
        v99 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v103 = *(v0 + 728);
      v104 = *(v0 + 720);
      v105 = *(v0 + 712);

      *(v97 + 14) = v99;

      _os_log_impl(&dword_22B116000, v95, v96, "%s multiple customer agreements not supported: %ld", v97, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v98);
      MEMORY[0x23188F650](v98, -1, -1);
      MEMORY[0x23188F650](v97, -1, -1);

      (*(v104 + 8))(v103, v105);
    }

    else
    {
      v100 = *(v0 + 728);
      v101 = *(v0 + 720);
      v102 = *(v0 + 712);
      swift_bridgeObjectRelease_n();

      (*(v101 + 8))(v100, v102);
    }

    v35 = swift_task_alloc();
    *(v0 + 1384) = v35;
    *v35 = v0;
    v36 = sub_22B22E780;
    goto LABEL_71;
  }

  if (!sub_22B36109C())
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v79 = *(v0 + 736);
    v80 = *(v0 + 720);
    v81 = *(v0 + 712);
    v82 = __swift_project_value_buffer(v81, qword_28140BD10);
    swift_beginAccess();
    (*(v80 + 16))(v79, v82, v81);
    v83 = sub_22B36050C();
    v84 = sub_22B360D1C();
    v85 = os_log_type_enabled(v83, v84);
    v86 = *(v0 + 736);
    v87 = *(v0 + 720);
    v88 = *(v0 + 712);
    if (v85)
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v131 = v90;
      *v89 = 136315138;
      *(v89 + 4) = sub_22B1A7B20(0xD000000000000085, 0x800000022B369350, &v131);
      _os_log_impl(&dword_22B116000, v83, v84, "%s customer agreement is nil", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v90);
      MEMORY[0x23188F650](v90, -1, -1);
      MEMORY[0x23188F650](v89, -1, -1);
    }

    (*(v87 + 8))(v86, v88);
    v35 = swift_task_alloc();
    *(v0 + 1376) = v35;
    *v35 = v0;
    v36 = sub_22B22E3E4;
LABEL_71:
    v35[1] = v36;
    v118 = *(v0 + 1088);
    v119 = *(v0 + 560);
    v120 = *(v0 + 552);

    return sub_22B22EFA8(v118, v120, v119);
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x23188EAC0](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_75;
    }

    v5 = *(v3 + 32);
  }

  *(v0 + 1136) = v5;

  v6 = sub_22B3600BC();
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v7)
    {
      goto LABEL_8;
    }

LABEL_67:
    if (qword_28140A0C8 == -1)
    {
LABEL_68:
      v106 = *(v0 + 792);
      v107 = *(v0 + 720);
      v108 = *(v0 + 712);
      v109 = __swift_project_value_buffer(v108, qword_28140BD10);
      swift_beginAccess();
      (*(v107 + 16))(v106, v109, v108);
      v110 = sub_22B36050C();
      v111 = sub_22B360D1C();
      v112 = os_log_type_enabled(v110, v111);
      v113 = *(v0 + 792);
      v114 = *(v0 + 720);
      v115 = *(v0 + 712);
      if (v112)
      {
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v131 = v117;
        *v116 = 136315394;
        *(v116 + 4) = sub_22B1A7B20(0xD000000000000085, 0x800000022B369350, &v131);
        *(v116 + 12) = 2048;
        *(v116 + 14) = 0;
        _os_log_impl(&dword_22B116000, v110, v111, "%s accounts without meters not supported: %ld", v116, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v117);
        MEMORY[0x23188F650](v117, -1, -1);
        MEMORY[0x23188F650](v116, -1, -1);
      }

      (*(v114 + 8))(v113, v115);
      v35 = swift_task_alloc();
      *(v0 + 1144) = v35;
      *v35 = v0;
      v36 = sub_22B22B5F0;
      goto LABEL_71;
    }

LABEL_75:
    swift_once();
    goto LABEL_68;
  }

  v7 = sub_22B36109C();

  if (!v7)
  {
    goto LABEL_67;
  }

LABEL_8:
  if (v7 >= 2)
  {
    v9 = sub_22B3600BC();
    v3 = v9;
    v10 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v9 >> 62)
    {
      v11 = sub_22B36109C();
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = 0;
    v129 = MEMORY[0x277D84F90];
    while (v11 != v4)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x23188EAC0](v4, v3);
      }

      else
      {
        if (v4 >= *(v10 + 16))
        {
          goto LABEL_48;
        }

        v12 = *(v3 + 8 * v4 + 32);
      }

      v13 = v12;
      v14 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v15 = sub_22B3601CC();
      v17 = v16;

      ++v4;
      if (v17)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v129 = sub_22B32CD20(0, *(v129 + 2) + 1, 1, v129);
        }

        v19 = *(v129 + 2);
        v18 = *(v129 + 3);
        if (v19 >= v18 >> 1)
        {
          v129 = sub_22B32CD20((v18 > 1), v19 + 1, 1, v129);
        }

        *(v129 + 2) = v19 + 1;
        v20 = &v129[16 * v19];
        *(v20 + 4) = v15;
        *(v20 + 5) = v17;
        v4 = v14;
      }
    }

    v21 = sub_22B31A80C(v129);

    v22 = *(v21 + 16);

    if (v22 <= 1)
    {
      goto LABEL_30;
    }

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 784);
    v24 = *(v0 + 720);
    v25 = *(v0 + 712);
    v26 = __swift_project_value_buffer(v25, qword_28140BD10);
    swift_beginAccess();
    (*(v24 + 16))(v23, v26, v25);
    v27 = sub_22B36050C();
    v28 = sub_22B360D1C();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 784);
    v31 = *(v0 + 720);
    v32 = *(v0 + 712);
    if (v29)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v131 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_22B1A7B20(0xD000000000000085, 0x800000022B369350, &v131);
      _os_log_impl(&dword_22B116000, v27, v28, "%s usage points found!", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x23188F650](v34, -1, -1);
      MEMORY[0x23188F650](v33, -1, -1);
    }

    (*(v31 + 8))(v30, v32);
    v35 = swift_task_alloc();
    *(v0 + 1152) = v35;
    *v35 = v0;
    v36 = sub_22B22B998;
    goto LABEL_71;
  }

LABEL_30:
  v37 = *(v0 + 1088);
  v130 = MEMORY[0x23188EEB0](v8);
  *(v0 + 1160) = sub_22B3600CC();
  *(v0 + 1168) = v38;
  *(v0 + 1176) = sub_22B3600AC();
  *(v0 + 1184) = v39;
  v40 = sub_22B36013C();
  v41 = sub_22B36019C();

  v42 = sub_22B36009C();
  v43 = [objc_allocWithZone(MEMORY[0x277CBDB60]) init];
  sub_22B35FFFC();
  v44 = sub_22B36000C();
  if (v45)
  {
    v46 = HIBYTE(v45) & 0xF;
    if ((v45 & 0x2000000000000000) == 0)
    {
      v46 = v44 & 0xFFFFFFFFFFFFLL;
    }

    if (v46)
    {
      v131 = 10;
      v132 = 0xE100000000000000;
      MEMORY[0x23188E270]();

      MEMORY[0x23188E270](10, 0xE100000000000000);
    }
  }

  v47 = sub_22B36001C();
  if (v48)
  {
    v49 = HIBYTE(v48) & 0xF;
    if ((v48 & 0x2000000000000000) == 0)
    {
      v49 = v47 & 0xFFFFFFFFFFFFLL;
    }

    if (v49)
    {
      v131 = 10;
      v132 = 0xE100000000000000;
      MEMORY[0x23188E270]();

      MEMORY[0x23188E270](10, 0xE100000000000000);
    }
  }

  v50 = *(v0 + 1120);
  v121 = *(v0 + 1040);
  v122 = *(v0 + 1088);
  v124 = *(v0 + 1016);
  v125 = *(v0 + 1008);
  v128 = *(v0 + 704);
  v51 = *(v0 + 696);
  v126 = *(v0 + 1000);
  v127 = *(v0 + 688);
  v52 = *(v0 + 656);
  v53 = *(v0 + 648);
  v123 = *(v0 + 632);
  v54 = sub_22B36081C();

  [v43 setStreet_];

  sub_22B36002C();
  v55 = sub_22B36081C();

  [v43 setCity_];

  sub_22B36003C();
  v56 = sub_22B36081C();

  [v43 setState_];

  sub_22B35FFEC();
  v57 = sub_22B36081C();

  [v43 setPostalCode_];

  sub_22B36004C();
  v58 = sub_22B36090C();

  sub_22B36004C();
  v59 = sub_22B36081C();

  v60 = &selRef_setISOCountryCode_;
  if (v58 != 2)
  {
    v60 = &selRef_setCountry_;
  }

  [v43 *v60];

  v61 = [objc_opt_self() stringFromPostalAddress:v43 style:0];
  v62 = sub_22B36084C();
  v64 = v63;

  *(v0 + 1192) = v62;
  *(v0 + 1200) = v64;
  objc_autoreleasePoolPop(v130);
  v65 = sub_22B35F3AC();
  v67 = v66;
  *(v0 + 1208) = v65;
  *(v0 + 1216) = v66;
  v68 = sub_22B36013C();
  v69 = sub_22B36018C();
  v71 = v70;
  *(v0 + 488) = v69;
  *(v0 + 496) = v70;

  *(v0 + 1224) = v71;
  *(v0 + 1232) = sub_22B36014C();
  *(v0 + 1240) = v72;
  v74 = *(v52 + 16);
  v73 = v52 + 16;
  *(v0 + 1248) = v74;
  *(v0 + 1256) = v73 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v74(v124, v123, v53);
  *(v0 + 1264) = (v73 + 40) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v50(v124, 0, 1, v53);
  sub_22B35DE6C();
  v50(v125, 0, 1, v53);
  v50(v126, 1, 1, v53);
  (*(v51 + 104))(v128, *MEMORY[0x277D07358], v127);
  *(v0 + 1272) = sub_22B35EE3C();
  *(v0 + 1280) = v75;
  (*(v51 + 8))(v128, v127);
  v76 = swift_task_alloc();
  *(v0 + 1288) = v76;
  *v76 = v0;
  v76[1] = sub_22B22BD40;
  v77 = *(v0 + 528);

  return sub_22B22250C(v65, v67, 0, 0);
}

uint64_t sub_22B22B5F0()
{
  v1 = *(*v0 + 1144);
  v2 = *(*v0 + 528);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B22B700, v2, 0);
}

uint64_t sub_22B22B700()
{
  v1 = v0[142];
  v2 = v0[136];
  v3 = v0[132];
  v4 = v0[130];
  v5 = v0[128];
  sub_22B134CDC();
  v6 = swift_allocError();
  *v7 = 26;
  swift_willThrow();

  sub_22B123284(v5, &qword_27D8BA340, &qword_22B363FB0);
  v8 = v0[80];
  v0[63] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  sub_22B360ADC();
  v9 = v0[128];
  v10 = v0[127];
  v11 = v0[126];
  v12 = v0[125];
  v13 = v0[124];
  v14 = v0[123];
  v15 = v0[122];
  v16 = v0[121];
  v17 = v0[120];
  v18 = v0[117];
  v21 = v0[114];
  v22 = v0[111];
  v23 = v0[108];
  v24 = v0[105];
  v25 = v0[102];
  v26 = v0[101];
  v27 = v0[100];
  v28 = v0[99];
  v29 = v0[98];
  v30 = v0[97];
  v31 = v0[96];
  v32 = v0[95];
  v33 = v0[94];
  v34 = v0[93];
  v35 = v0[92];
  v36 = v0[91];
  v37 = v0[88];
  v38 = v0[85];
  v39 = v0[84];
  v40 = v0[83];

  v19 = v0[1];

  return v19();
}

uint64_t sub_22B22B998()
{
  v1 = *(*v0 + 1152);
  v2 = *(*v0 + 528);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B22BAA8, v2, 0);
}

uint64_t sub_22B22BAA8()
{
  v1 = v0[142];
  v2 = v0[136];
  v3 = v0[132];
  v4 = v0[130];
  v5 = v0[128];
  sub_22B134CDC();
  v6 = swift_allocError();
  *v7 = 25;
  swift_willThrow();

  sub_22B123284(v5, &qword_27D8BA340, &qword_22B363FB0);
  v8 = v0[80];
  v0[63] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  sub_22B360ADC();
  v9 = v0[128];
  v10 = v0[127];
  v11 = v0[126];
  v12 = v0[125];
  v13 = v0[124];
  v14 = v0[123];
  v15 = v0[122];
  v16 = v0[121];
  v17 = v0[120];
  v18 = v0[117];
  v21 = v0[114];
  v22 = v0[111];
  v23 = v0[108];
  v24 = v0[105];
  v25 = v0[102];
  v26 = v0[101];
  v27 = v0[100];
  v28 = v0[99];
  v29 = v0[98];
  v30 = v0[97];
  v31 = v0[96];
  v32 = v0[95];
  v33 = v0[94];
  v34 = v0[93];
  v35 = v0[92];
  v36 = v0[91];
  v37 = v0[88];
  v38 = v0[85];
  v39 = v0[84];
  v40 = v0[83];

  v19 = v0[1];

  return v19();
}

uint64_t sub_22B22BD40(uint64_t a1)
{
  v2 = *(*v1 + 1288);
  v3 = *(*v1 + 528);
  v5 = *v1;
  *(*v1 + 1296) = a1;

  return MEMORY[0x2822009F8](sub_22B22BE58, v3, 0);
}

uint64_t sub_22B22BE58()
{
  if (v0[162])
  {
    v1 = v0[153];
    v2 = v0[61];
    v3 = v0[127];
    v4 = v0[124];
    v5 = v0[76];
    v32 = v0[75];
    v33 = v0[155];
    v6 = v0[74];
    v31 = v0[73];
    v7 = v0[70];
    v8 = v0[69];

    sub_22B35F13C();

    sub_22B35F44C();
    sub_22B170BE0(v3, v4, &qword_27D8BA340, &qword_22B363FB0);
    sub_22B35F2DC();

    sub_22B35F07C();

    sub_22B35F0CC();

    sub_22B35F0CC();
    if (v33)
    {
      v9 = v0[155];
      v10 = v0[154];

      sub_22B35F15C();
    }

    if (v0[78])
    {
      v11 = v0[77];
      v12 = v0[78];

      sub_22B35F09C();
    }

    v13 = v0[150];
    v14 = v0[149];
    v15 = v0[146];
    v16 = v0[145];

    sub_22B35F0EC();

    sub_22B35F3CC();
    v17 = [objc_allocWithZone(MEMORY[0x277CBFBE8]) init];
    v0[163] = v17;
    v18 = sub_22B36081C();
    v0[164] = v18;
    v0[10] = v0;
    v0[15] = v0 + 64;
    v0[11] = sub_22B22C1F8;
    v19 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA8E0, qword_22B366260);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_22B164948;
    v0[29] = &block_descriptor_85;
    v0[30] = v19;
    [v17 geocodeAddressString:v18 completionHandler:v0 + 26];

    return MEMORY[0x282200938](v0 + 10);
  }

  else
  {
    v20 = v0[160];
    v21 = v0[155];
    v22 = v0[153];
    v23 = v0[152];

    v24 = v0[127];
    v25 = v0[126];
    sub_22B123284(v0[125], &qword_27D8BA340, &qword_22B363FB0);
    sub_22B123284(v25, &qword_27D8BA340, &qword_22B363FB0);
    sub_22B123284(v24, &qword_27D8BA340, &qword_22B363FB0);
    v26 = swift_task_alloc();
    v0[171] = v26;
    *v26 = v0;
    v26[1] = sub_22B22E014;
    v27 = v0[136];
    v28 = v0[70];
    v29 = v0[69];

    return sub_22B22EFA8(v27, v29, v28);
  }
}

uint64_t sub_22B22C1F8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 1320) = v3;
  v4 = *(v1 + 528);
  if (v3)
  {
    v5 = sub_22B22CF88;
  }

  else
  {
    v5 = sub_22B22C318;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22B22C318()
{
  v145 = v1;
  v4 = *(v1 + 512);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v63 = *(v1 + 512);
    }

    if (sub_22B36109C())
    {
LABEL_3:
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x23188EAC0](0, v4);
      }

      else
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_45;
        }

        v5 = *(v4 + 32);
      }

      v3 = v5;
      v6 = *(v1 + 1312);

      v7 = [v3 location];
      if (!v7)
      {
LABEL_11:
        v27 = [v3 timeZone];
        if (v27)
        {
          v28 = *(v1 + 800);
          v29 = v27;
          sub_22B35E0AC();

          v30 = 0;
        }

        else
        {
          v30 = 1;
        }

        v31 = *(v1 + 1112);
        v32 = *(v1 + 1104);
        v33 = *(v1 + 824);
        v34 = *(v1 + 808);
        v35 = *(v1 + 800);
        (*(*(v1 + 832) + 56))(v35, v30, 1, v33);
        sub_22B23E3A4(v35, v34);
        if (v32(v34, 1, v33) == 1)
        {
          v36 = *(v1 + 1216);
          v37 = *(v1 + 808);

          sub_22B123284(v37, &unk_27D8BA080, &unk_22B364280);
        }

        else
        {
          v38 = *(v1 + 1296);
          v39 = *(v1 + 832);
          v40 = *(v1 + 824);
          v41 = *(v1 + 808);
          v42 = sub_22B35E06C();
          v44 = v43;
          (*(v39 + 8))(v41, v40);

          sub_22B35F42C();
          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v45 = *(v1 + 1216);
          v46 = *(v1 + 760);
          v47 = *(v1 + 720);
          v48 = *(v1 + 712);
          v49 = __swift_project_value_buffer(v48, qword_28140BD10);
          swift_beginAccess();
          (*(v47 + 16))(v46, v49, v48);

          v50 = sub_22B36050C();
          v51 = sub_22B360D2C();

          v52 = os_log_type_enabled(v50, v51);
          v53 = *(v1 + 1216);
          if (v52)
          {
            v54 = *(v1 + 1208);
            v130 = *(v1 + 720);
            v132 = *(v1 + 712);
            v135 = *(v1 + 760);
            v55 = swift_slowAlloc();
            v140 = v3;
            v144 = swift_slowAlloc();
            v56 = v144;
            *v55 = 136315650;
            *(v55 + 4) = sub_22B1A7B20(0xD00000000000011ALL, 0x800000022B36A810, &v144);
            *(v55 + 12) = 2080;
            v57 = sub_22B1A7B20(v54, v53, &v144);

            *(v55 + 14) = v57;
            *(v55 + 22) = 2080;
            v58 = sub_22B1A7B20(v42, v44, &v144);

            *(v55 + 24) = v58;
            _os_log_impl(&dword_22B116000, v50, v51, "%s site %s set time zone to %s", v55, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x23188F650](v56, -1, -1);
            MEMORY[0x23188F650](v55, -1, -1);

            (*(v130 + 8))(v135, v132);
          }

          else
          {
            v59 = *(v1 + 760);
            v60 = *(v1 + 720);
            v61 = *(v1 + 712);
            v62 = *(v1 + 1216);

            (*(v60 + 8))(v59, v61);
          }
        }

        goto LABEL_29;
      }

      v0 = v7;
      v8 = *(v1 + 1296);
      v2 = v7;
      sub_22B35F3EC();
      if (qword_28140A0C8 == -1)
      {
LABEL_8:
        v9 = *(v1 + 1216);
        v10 = *(v1 + 768);
        v11 = *(v1 + 720);
        v12 = *(v1 + 712);
        v13 = __swift_project_value_buffer(v12, qword_28140BD10);
        swift_beginAccess();
        (*(v11 + 16))(v10, v13, v12);

        v14 = v2;
        v15 = sub_22B36050C();
        v16 = sub_22B360D2C();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = *(v1 + 1208);
          v134 = *(v1 + 768);
          v18 = *(v1 + 720);
          v129 = *(v1 + 1216);
          v131 = *(v1 + 712);
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v139 = v3;
          v144 = swift_slowAlloc();
          v21 = v144;
          *v19 = 136315650;
          *(v19 + 4) = sub_22B1A7B20(0xD00000000000011ALL, 0x800000022B36A810, &v144);
          *(v19 + 12) = 2080;
          *(v19 + 14) = sub_22B1A7B20(v17, v129, &v144);
          *(v19 + 22) = 2112;
          *(v19 + 24) = v14;
          *v20 = v0;
          v22 = v14;
          _os_log_impl(&dword_22B116000, v15, v16, "%s site %s set location to %@", v19, 0x20u);
          sub_22B123284(v20, &unk_27D8BAA90, &unk_22B362BC0);
          MEMORY[0x23188F650](v20, -1, -1);
          swift_arrayDestroy();
          v23 = v21;
          v3 = v139;
          MEMORY[0x23188F650](v23, -1, -1);
          MEMORY[0x23188F650](v19, -1, -1);

          (*(v18 + 8))(v134, v131);
        }

        else
        {
          v24 = *(v1 + 768);
          v25 = *(v1 + 720);
          v26 = *(v1 + 712);

          (*(v25 + 8))(v24, v26);
        }

        goto LABEL_11;
      }

LABEL_45:
      swift_once();
      goto LABEL_8;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v64 = *(v1 + 1312);
  v65 = *(v1 + 1304);

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v66 = *(v1 + 1216);
  v67 = *(v1 + 1200);
  v68 = *(v1 + 776);
  v69 = *(v1 + 720);
  v70 = *(v1 + 712);
  v71 = __swift_project_value_buffer(v70, qword_28140BD10);
  swift_beginAccess();
  (*(v69 + 16))(v68, v71, v70);

  v72 = sub_22B36050C();
  v73 = sub_22B360D1C();

  v74 = os_log_type_enabled(v72, v73);
  v75 = *(v1 + 1216);
  if (v74)
  {
    v76 = *(v1 + 1208);
    v77 = *(v1 + 1192);
    v141 = *(v1 + 776);
    v78 = *(v1 + 720);
    v133 = *(v1 + 1200);
    v136 = *(v1 + 712);
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v144 = v80;
    *v79 = 136315650;
    *(v79 + 4) = sub_22B1A7B20(0xD00000000000011ALL, 0x800000022B36A810, &v144);
    *(v79 + 12) = 2080;
    v81 = sub_22B1A7B20(v76, v75, &v144);

    *(v79 + 14) = v81;
    *(v79 + 22) = 2080;
    *(v79 + 24) = sub_22B1A7B20(v77, v133, &v144);
    _os_log_impl(&dword_22B116000, v72, v73, "%s site %s could not get placemark from %s", v79, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v80, -1, -1);
    MEMORY[0x23188F650](v79, -1, -1);

    (*(v78 + 8))(v141, v136);
  }

  else
  {
    v82 = *(v1 + 776);
    v83 = *(v1 + 720);
    v84 = *(v1 + 712);
    v85 = *(v1 + 1216);

    (*(v83 + 8))(v82, v84);
  }

LABEL_29:
  v86 = *(v1 + 1296);
  v87 = *(v1 + 1184);
  v88 = *(v1 + 576);
  v89 = *(v1 + 568);

  sub_22B35F1DC();
  if (v87)
  {
    v90 = *(v1 + 1296);
    v91 = *(v1 + 1184);
    v92 = *(v1 + 1176);

    sub_22B35F1BC();
  }

  v93 = *(v1 + 984);
  v94 = *(v1 + 656);
  v95 = *(v1 + 648);
  sub_22B170BE0(*(v1 + 1008), v93, &qword_27D8BA340, &qword_22B363FB0);
  v96 = *(v94 + 48);
  if (v96(v93, 1, v95) == 1)
  {
    sub_22B123284(*(v1 + 984), &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v137 = *(v1 + 1264);
    v142 = *(v1 + 1296);
    v97 = *(v1 + 1256);
    v98 = *(v1 + 1248);
    v99 = *(v1 + 1120);
    v100 = *(v1 + 992);
    v101 = *(v1 + 680);
    v102 = *(v1 + 656);
    v103 = *(v1 + 648);
    (*(v102 + 32))(v101, *(v1 + 984), v103);
    v98(v100, v101, v103);
    v99(v100, 0, 1, v103);
    sub_22B35F2BC();
    (*(v102 + 8))(v101, v103);
  }

  v104 = *(v1 + 976);
  v105 = *(v1 + 648);
  sub_22B170BE0(*(v1 + 1024), v104, &qword_27D8BA340, &qword_22B363FB0);
  if (v96(v104, 1, v105) == 1)
  {
    sub_22B123284(*(v1 + 976), &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v138 = *(v1 + 1264);
    v143 = *(v1 + 1296);
    v106 = *(v1 + 1256);
    v107 = *(v1 + 1248);
    v108 = *(v1 + 1120);
    v109 = *(v1 + 992);
    v110 = *(v1 + 672);
    v111 = *(v1 + 656);
    v112 = *(v1 + 648);
    (*(v111 + 32))(v110, *(v1 + 976), v112);
    v107(v109, v110, v112);
    v108(v109, 0, 1, v112);
    sub_22B35F23C();
    (*(v111 + 8))(v110, v112);
  }

  v113 = *(v1 + 968);
  v114 = *(v1 + 648);
  sub_22B170BE0(*(v1 + 1000), v113, &qword_27D8BA340, &qword_22B363FB0);
  if (v96(v113, 1, v114) == 1)
  {
    sub_22B123284(*(v1 + 968), &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v115 = *(v1 + 1296);
    v116 = *(v1 + 1264);
    v117 = *(v1 + 1256);
    v118 = *(v1 + 1248);
    v119 = *(v1 + 1120);
    v120 = *(v1 + 992);
    v121 = *(v1 + 664);
    v122 = *(v1 + 656);
    v123 = *(v1 + 648);
    (*(v122 + 32))(v121, *(v1 + 968), v123);
    v118(v120, v121, v123);
    v119(v120, 0, 1, v123);
    sub_22B35F10C();
    (*(v122 + 8))(v121, v123);
  }

  v124 = *(v1 + 1296);
  v125 = *(v1 + 1280);
  v126 = *(v1 + 1272);
  sub_22B35F39C();
  LOBYTE(v144) = 0;
  sub_22B35F2FC();
  v127 = swift_task_alloc();
  *(v1 + 1328) = v127;
  *v127 = v1;
  v127[1] = sub_22B22D5CC;

  return EKEnergySite.save(reset:tokenUpdate:)(0, 1);
}

uint64_t sub_22B22CF88()
{
  v75 = v0;
  v1 = v0[165];
  v2 = v0[164];
  v3 = v0[163];
  swift_willThrow();

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v4 = v0[152];
  v5 = v0[150];
  v6 = v0[97];
  v7 = v0[90];
  v8 = v0[89];
  v9 = __swift_project_value_buffer(v8, qword_28140BD10);
  swift_beginAccess();
  (*(v7 + 16))(v6, v9, v8);

  v10 = sub_22B36050C();
  v11 = sub_22B360D1C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[152];
  if (v12)
  {
    v14 = v0[151];
    v15 = v0[149];
    v71 = v0[97];
    v16 = v0[90];
    v67 = v0[150];
    v68 = v0[89];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v74[0] = v18;
    *v17 = 136315650;
    *(v17 + 4) = sub_22B1A7B20(0xD00000000000011ALL, 0x800000022B36A810, v74);
    *(v17 + 12) = 2080;
    v19 = sub_22B1A7B20(v14, v13, v74);

    *(v17 + 14) = v19;
    *(v17 + 22) = 2080;
    *(v17 + 24) = sub_22B1A7B20(v15, v67, v74);
    _os_log_impl(&dword_22B116000, v10, v11, "%s site %s could not get placemark from %s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v18, -1, -1);
    MEMORY[0x23188F650](v17, -1, -1);

    (*(v16 + 8))(v71, v68);
  }

  else
  {
    v20 = v0[97];
    v21 = v0[90];
    v22 = v0[89];
    v23 = v0[152];

    (*(v21 + 8))(v20, v22);
  }

  v24 = v0[162];
  v25 = v0[148];
  v26 = v0[72];
  v27 = v0[71];

  sub_22B35F1DC();
  if (v25)
  {
    v28 = v0[162];
    v29 = v0[148];
    v30 = v0[147];

    sub_22B35F1BC();
  }

  v31 = v0[123];
  v32 = v0[82];
  v33 = v0[81];
  sub_22B170BE0(v0[126], v31, &qword_27D8BA340, &qword_22B363FB0);
  v34 = *(v32 + 48);
  if (v34(v31, 1, v33) == 1)
  {
    sub_22B123284(v0[123], &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v69 = v0[158];
    v72 = v0[162];
    v35 = v0[157];
    v36 = v0[156];
    v37 = v0[140];
    v38 = v0[124];
    v39 = v0[85];
    v40 = v0[82];
    v41 = v0[81];
    (*(v40 + 32))(v39, v0[123], v41);
    v36(v38, v39, v41);
    v37(v38, 0, 1, v41);
    sub_22B35F2BC();
    (*(v40 + 8))(v39, v41);
  }

  v42 = v0[122];
  v43 = v0[81];
  sub_22B170BE0(v0[128], v42, &qword_27D8BA340, &qword_22B363FB0);
  if (v34(v42, 1, v43) == 1)
  {
    sub_22B123284(v0[122], &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v70 = v0[158];
    v73 = v0[162];
    v44 = v0[157];
    v45 = v0[156];
    v46 = v0[140];
    v47 = v0[124];
    v48 = v0[84];
    v49 = v0[82];
    v50 = v0[81];
    (*(v49 + 32))(v48, v0[122], v50);
    v45(v47, v48, v50);
    v46(v47, 0, 1, v50);
    sub_22B35F23C();
    (*(v49 + 8))(v48, v50);
  }

  v51 = v0[121];
  v52 = v0[81];
  sub_22B170BE0(v0[125], v51, &qword_27D8BA340, &qword_22B363FB0);
  if (v34(v51, 1, v52) == 1)
  {
    sub_22B123284(v0[121], &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v53 = v0[162];
    v54 = v0[158];
    v55 = v0[157];
    v56 = v0[156];
    v57 = v0[140];
    v58 = v0[124];
    v59 = v0[83];
    v60 = v0[82];
    v61 = v0[81];
    (*(v60 + 32))(v59, v0[121], v61);
    v56(v58, v59, v61);
    v57(v58, 0, 1, v61);
    sub_22B35F10C();
    (*(v60 + 8))(v59, v61);
  }

  v62 = v0[162];
  v63 = v0[160];
  v64 = v0[159];
  sub_22B35F39C();
  LOBYTE(v74[0]) = 0;
  sub_22B35F2FC();
  v65 = swift_task_alloc();
  v0[166] = v65;
  *v65 = v0;
  v65[1] = sub_22B22D5CC;

  return EKEnergySite.save(reset:tokenUpdate:)(0, 1);
}

uint64_t sub_22B22D5CC()
{
  v2 = *v1;
  v3 = *(*v1 + 1328);
  v4 = *v1;
  *(*v1 + 1336) = v0;

  v5 = *(v2 + 528);
  if (v0)
  {
    v6 = sub_22B22DF00;
  }

  else
  {
    v6 = sub_22B22D6F8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B22D6F8()
{
  v1 = v0[155];
  v2 = v0[153];
  v3 = v0[127];
  v4 = v0[126];
  v5 = v0[125];

  sub_22B123284(v5, &qword_27D8BA340, &qword_22B363FB0);
  sub_22B123284(v4, &qword_27D8BA340, &qword_22B363FB0);
  sub_22B123284(v3, &qword_27D8BA340, &qword_22B363FB0);
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v0[168] = qword_28140BCB0;

  v6 = swift_task_alloc();
  v0[169] = v6;
  *v6 = v0;
  v6[1] = sub_22B22D858;
  v7 = v0[70];
  v8 = v0[69];

  return sub_22B202CC8(v8, v7);
}

uint64_t sub_22B22D858(uint64_t a1)
{
  v2 = *(*v1 + 1352);
  v3 = *(*v1 + 1344);
  v4 = *(*v1 + 528);
  v6 = *v1;
  *(*v1 + 1360) = a1;

  return MEMORY[0x2822009F8](sub_22B22D98C, v4, 0);
}

uint64_t sub_22B22D98C()
{
  v71 = v0;
  v1 = v0[170];
  v70[0] = 60.0;
  if (v1 && (v2 = v1, v3 = sub_22B35FFCC(), v2, v3 >= 60))
  {
    v13 = v3;
    v70[0] = v3;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v4 = v0 + 94;
    v14 = v0[94];
    v15 = v0[90];
    v16 = v0[89];
    v17 = __swift_project_value_buffer(v16, qword_28140BD10);
    swift_beginAccess();
    (*(v15 + 16))(v14, v17, v16);
    v9 = sub_22B36050C();
    v10 = sub_22B360D2C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v13;
      v12 = "Using server defined delay of %f";
      goto LABEL_11;
    }
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v4 = v0 + 93;
    v5 = v0[93];
    v6 = v0[90];
    v7 = v0[89];
    v8 = __swift_project_value_buffer(v7, qword_28140BD10);
    swift_beginAccess();
    (*(v6 + 16))(v5, v8, v7);
    v9 = sub_22B36050C();
    v10 = sub_22B360D2C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = 0x404E000000000000;
      v12 = "Using default delay of %f";
LABEL_11:
      _os_log_impl(&dword_22B116000, v9, v10, v12, v11, 0xCu);
      v18 = *v4;
      MEMORY[0x23188F650](v11, -1, -1);
      goto LABEL_13;
    }
  }

  v18 = *v4;
LABEL_13:
  v19 = v0[167];
  v20 = v0[90];
  v21 = v0[89];
  v22 = v0[68];
  v23 = v0[67];

  (*(v20 + 8))(v18, v21);
  v24 = os_transaction_create();
  result = sub_22B235AA8(v70, v23, v22, v24, v25, &unk_283EFD020, sub_22B23E774, &block_descriptor_96);
  if (!v19)
  {
    v27 = v0[162];
    v28 = v0[150];
    v64 = v0[148];
    v29 = v0[146];
    v30 = v0[142];
    v31 = v0[136];
    v32 = v0[132];
    v33 = v0[130];
    v66 = v0[128];
    v68 = v0[170];
    v34 = v0[80];
    v0[65] = v27;
    v35 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
    sub_22B360AEC();

    swift_unknownObjectRelease();

    sub_22B123284(v66, &qword_27D8BA340, &qword_22B363FB0);
    v36 = v0[128];
    v37 = v0[127];
    v38 = v0[126];
    v39 = v0[125];
    v40 = v0[124];
    v41 = v0[123];
    v42 = v0[122];
    v43 = v0[121];
    v44 = v0[120];
    v45 = v0[117];
    v47 = v0[114];
    v48 = v0[111];
    v49 = v0[108];
    v50 = v0[105];
    v51 = v0[102];
    v52 = v0[101];
    v53 = v0[100];
    v54 = v0[99];
    v55 = v0[98];
    v56 = v0[97];
    v57 = v0[96];
    v58 = v0[95];
    v59 = v0[94];
    v60 = v0[93];
    v61 = v0[92];
    v62 = v0[91];
    v63 = v0[88];
    v65 = v0[85];
    v67 = v0[84];
    v69 = v0[83];

    v46 = v0[1];

    return v46();
  }

  return result;
}

uint64_t sub_22B22DF00()
{
  v1 = v0[167];
  v2 = v0[162];
  v3 = v0[155];
  v4 = v0[153];

  v5 = v0[127];
  v6 = v0[126];
  sub_22B123284(v0[125], &qword_27D8BA340, &qword_22B363FB0);
  sub_22B123284(v6, &qword_27D8BA340, &qword_22B363FB0);
  sub_22B123284(v5, &qword_27D8BA340, &qword_22B363FB0);
  v7 = swift_task_alloc();
  v0[171] = v7;
  *v7 = v0;
  v7[1] = sub_22B22E014;
  v8 = v0[136];
  v9 = v0[70];
  v10 = v0[69];

  return sub_22B22EFA8(v8, v10, v9);
}

uint64_t sub_22B22E014()
{
  v1 = *(*v0 + 1368);
  v2 = *(*v0 + 528);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B22E124, v2, 0);
}

uint64_t sub_22B22E124()
{
  v1 = v0[150];
  v42 = v0[148];
  v2 = v0[146];
  v3 = v0[142];
  v4 = v0[136];
  v5 = v0[132];
  v6 = v0[130];
  v7 = v0[128];
  sub_22B134CDC();
  v8 = swift_allocError();
  *v9 = 12;
  swift_willThrow();

  sub_22B123284(v7, &qword_27D8BA340, &qword_22B363FB0);
  v10 = v0[80];
  v0[63] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  sub_22B360ADC();
  v11 = v0[128];
  v12 = v0[127];
  v13 = v0[126];
  v14 = v0[125];
  v15 = v0[124];
  v16 = v0[123];
  v17 = v0[122];
  v18 = v0[121];
  v19 = v0[120];
  v20 = v0[117];
  v23 = v0[114];
  v24 = v0[111];
  v25 = v0[108];
  v26 = v0[105];
  v27 = v0[102];
  v28 = v0[101];
  v29 = v0[100];
  v30 = v0[99];
  v31 = v0[98];
  v32 = v0[97];
  v33 = v0[96];
  v34 = v0[95];
  v35 = v0[94];
  v36 = v0[93];
  v37 = v0[92];
  v38 = v0[91];
  v39 = v0[88];
  v40 = v0[85];
  v41 = v0[84];
  v43 = v0[83];

  v21 = v0[1];

  return v21();
}

uint64_t sub_22B22E3E4()
{
  v1 = *(*v0 + 1376);
  v2 = *(*v0 + 528);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B22E4F4, v2, 0);
}

uint64_t sub_22B22E4F4()
{
  v1 = v0[136];
  v2 = v0[132];
  v3 = v0[130];
  v4 = v0[128];
  sub_22B134CDC();
  v5 = swift_allocError();
  *v6 = 0;
  swift_willThrow();

  sub_22B123284(v4, &qword_27D8BA340, &qword_22B363FB0);
  v7 = v0[80];
  v0[63] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  sub_22B360ADC();
  v8 = v0[128];
  v9 = v0[127];
  v10 = v0[126];
  v11 = v0[125];
  v12 = v0[124];
  v13 = v0[123];
  v14 = v0[122];
  v15 = v0[121];
  v16 = v0[120];
  v17 = v0[117];
  v20 = v0[114];
  v21 = v0[111];
  v22 = v0[108];
  v23 = v0[105];
  v24 = v0[102];
  v25 = v0[101];
  v26 = v0[100];
  v27 = v0[99];
  v28 = v0[98];
  v29 = v0[97];
  v30 = v0[96];
  v31 = v0[95];
  v32 = v0[94];
  v33 = v0[93];
  v34 = v0[92];
  v35 = v0[91];
  v36 = v0[88];
  v37 = v0[85];
  v38 = v0[84];
  v39 = v0[83];

  v18 = v0[1];

  return v18();
}

uint64_t sub_22B22E780()
{
  v1 = *(*v0 + 1384);
  v2 = *(*v0 + 528);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B22E890, v2, 0);
}

uint64_t sub_22B22E890()
{
  v1 = v0[136];
  v2 = v0[132];
  v3 = v0[130];
  v4 = v0[128];
  sub_22B134CDC();
  v5 = swift_allocError();
  *v6 = 24;
  swift_willThrow();

  sub_22B123284(v4, &qword_27D8BA340, &qword_22B363FB0);
  v7 = v0[80];
  v0[63] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  sub_22B360ADC();
  v8 = v0[128];
  v9 = v0[127];
  v10 = v0[126];
  v11 = v0[125];
  v12 = v0[124];
  v13 = v0[123];
  v14 = v0[122];
  v15 = v0[121];
  v16 = v0[120];
  v17 = v0[117];
  v20 = v0[114];
  v21 = v0[111];
  v22 = v0[108];
  v23 = v0[105];
  v24 = v0[102];
  v25 = v0[101];
  v26 = v0[100];
  v27 = v0[99];
  v28 = v0[98];
  v29 = v0[97];
  v30 = v0[96];
  v31 = v0[95];
  v32 = v0[94];
  v33 = v0[93];
  v34 = v0[92];
  v35 = v0[91];
  v36 = v0[88];
  v37 = v0[85];
  v38 = v0[84];
  v39 = v0[83];

  v18 = v0[1];

  return v18();
}

uint64_t sub_22B22EB20()
{
  v1 = *(v0 + 640);
  *(v0 + 504) = *(v0 + 1064);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  sub_22B360ADC();
  v2 = *(v0 + 1024);
  v3 = *(v0 + 1016);
  v4 = *(v0 + 1008);
  v5 = *(v0 + 1000);
  v6 = *(v0 + 992);
  v7 = *(v0 + 984);
  v8 = *(v0 + 976);
  v9 = *(v0 + 968);
  v10 = *(v0 + 960);
  v11 = *(v0 + 936);
  v14 = *(v0 + 912);
  v15 = *(v0 + 888);
  v16 = *(v0 + 864);
  v17 = *(v0 + 840);
  v18 = *(v0 + 816);
  v19 = *(v0 + 808);
  v20 = *(v0 + 800);
  v21 = *(v0 + 792);
  v22 = *(v0 + 784);
  v23 = *(v0 + 776);
  v24 = *(v0 + 768);
  v25 = *(v0 + 760);
  v26 = *(v0 + 752);
  v27 = *(v0 + 744);
  v28 = *(v0 + 736);
  v29 = *(v0 + 728);
  v30 = *(v0 + 704);
  v31 = *(v0 + 680);
  v32 = *(v0 + 672);
  v33 = *(v0 + 664);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22B22ED5C()
{
  v1 = *(v0 + 1056);
  v2 = *(v0 + 1040);

  v3 = *(v0 + 640);
  *(v0 + 504) = *(v0 + 1096);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  sub_22B360ADC();
  v4 = *(v0 + 1024);
  v5 = *(v0 + 1016);
  v6 = *(v0 + 1008);
  v7 = *(v0 + 1000);
  v8 = *(v0 + 992);
  v9 = *(v0 + 984);
  v10 = *(v0 + 976);
  v11 = *(v0 + 968);
  v12 = *(v0 + 960);
  v13 = *(v0 + 936);
  v16 = *(v0 + 912);
  v17 = *(v0 + 888);
  v18 = *(v0 + 864);
  v19 = *(v0 + 840);
  v20 = *(v0 + 816);
  v21 = *(v0 + 808);
  v22 = *(v0 + 800);
  v23 = *(v0 + 792);
  v24 = *(v0 + 784);
  v25 = *(v0 + 776);
  v26 = *(v0 + 768);
  v27 = *(v0 + 760);
  v28 = *(v0 + 752);
  v29 = *(v0 + 744);
  v30 = *(v0 + 736);
  v31 = *(v0 + 728);
  v32 = *(v0 + 704);
  v33 = *(v0 + 680);
  v34 = *(v0 + 672);
  v35 = *(v0 + 664);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_22B22EFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_22B36052C();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B22F06C, 0, 0);
}

uint64_t sub_22B22F06C()
{
  v1 = v0[5];
  v2 = sub_22B36014C();
  v0[11] = v3;
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  sub_22B36012C();
  v6 = sub_22B36013C();
  v7 = sub_22B36018C();
  v9 = v8;

  v0[12] = v9;
  sub_22B3602DC();
  v10 = sub_22B36029C();
  v0[13] = v10;
  v11 = *(MEMORY[0x277D181A8] + 4);
  v12 = swift_task_alloc();
  v0[14] = v12;
  *v12 = v0;
  v12[1] = sub_22B22F184;
  v13 = v0[6];
  v14 = v0[7];

  return MEMORY[0x2821724D0](v4, v5, v7, v9, v13, v14, v10);
}

uint64_t sub_22B22F184(char a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 112);
  v7 = *v2;

  v8 = v4[13];
  v9 = v4[12];
  v10 = v4[11];
  if (v1)
  {

    v11 = sub_22B22F56C;
  }

  else
  {

    *(v5 + 121) = a1 & 1;
    v11 = sub_22B22F338;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_22B22F338()
{
  v21 = v0;
  v1 = *(v0 + 121);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_22B36050C();
  v7 = sub_22B360D1C();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  v11 = *(v0 + 64);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_22B1A7B20(0x2928656B6F766572, 0xE800000000000000, &v20);
    *(v12 + 12) = 2080;
    *(v0 + 120) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA628, &qword_22B3656C8);
    v14 = sub_22B3608BC();
    v16 = sub_22B1A7B20(v14, v15, &v20);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_22B116000, v6, v7, "%s Revoking newly created subscription %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);
  }

  (*(v10 + 8))(v9, v11);
  v17 = *(v0 + 80);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_22B22F56C()
{
  v20 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D1C();
  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v10 = *(v0 + 64);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_22B1A7B20(0x2928656B6F766572, 0xE800000000000000, &v19);
    *(v11 + 12) = 2080;
    *(v0 + 120) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA628, &qword_22B3656C8);
    v13 = sub_22B3608BC();
    v15 = sub_22B1A7B20(v13, v14, &v19);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_22B116000, v5, v6, "%s Revoking newly created subscription %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v16 = *(v0 + 80);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_22B22F7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_22B36052C();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B22F86C, 0, 0);
}

uint64_t sub_22B22F86C()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[11] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[12] = v5;
  v0[13] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "Performing first fetch of AMI Data", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v9 = v0[10];
  v10 = v0[7];
  v11 = v0[8];

  v12 = *(v11 + 8);
  v0[14] = v12;
  v12(v9, v10);
  if (qword_28140A0B8 != -1)
  {
    swift_once();
  }

  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_22B22FA58;
  v15 = v0[5];
  v14 = v0[6];

  return sub_22B2E2A14(v15, v14);
}

uint64_t sub_22B22FA58()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B22FB54, 0, 0);
}

uint64_t sub_22B22FB54()
{
  v1 = *(v0 + 104);
  (*(v0 + 96))(*(v0 + 72), *(v0 + 88), *(v0 + 56));
  v2 = sub_22B36050C();
  v3 = sub_22B360D2C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B116000, v2, v3, "Completed first fetch of AMI Data", v4, 2u);
    MEMORY[0x23188F650](v4, -1, -1);
  }

  v5 = *(v0 + 112);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);

  v5(v7, v8);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22B22FC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v69 = a8;
  v70 = a4;
  v64 = a5;
  v65 = a6;
  v71 = a2;
  v55 = a1;
  v67 = a7;
  v68 = a16;
  v66 = a15;
  v62 = a3;
  v63 = a13;
  v60 = a14;
  v61 = a11;
  v57 = a10;
  v58 = a12;
  v59 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  v52 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v49 - v20;
  v54 = &v49 - v20;
  v22 = sub_22B35DE9C();
  v51 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v53 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v49 - v27;
  v56 = &v49 - v27;
  v29 = sub_22B360B6C();
  (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
  (*(v23 + 16))(&v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), a17, v22);
  v50 = v18;
  (*(v18 + 16))(v21, v55, v17);
  v31 = sub_22B23E468(&qword_27D8BA2B0, v30, type metadata accessor for EnergySiteManager);
  v32 = (*(v23 + 80) + 152) & ~*(v23 + 80);
  v33 = (v24 + *(v18 + 80) + v32) & ~*(v18 + 80);
  v34 = swift_allocObject();
  v35 = v71;
  *(v34 + 2) = v71;
  *(v34 + 3) = v31;
  v36 = v62;
  *(v34 + 4) = v35;
  *(v34 + 5) = v36;
  v37 = v69;
  v38 = v64;
  v39 = v65;
  *(v34 + 6) = v70;
  *(v34 + 7) = v38;
  v40 = v67;
  v41 = v68;
  *(v34 + 8) = v39;
  *(v34 + 9) = v40;
  v43 = v58;
  v42 = v59;
  *(v34 + 10) = v37;
  *(v34 + 11) = v42;
  v45 = v60;
  v44 = v61;
  *(v34 + 12) = v57;
  *(v34 + 13) = v44;
  v46 = v63;
  *(v34 + 14) = v43;
  *(v34 + 15) = v46;
  v47 = v66;
  *(v34 + 16) = v45;
  *(v34 + 17) = v47;
  *(v34 + 18) = v41;
  (*(v23 + 32))(&v34[v32], v53, v51);
  (*(v50 + 32))(&v34[v33], v54, v52);

  swift_retain_n();

  sub_22B123DF0(0, 0, v56, &unk_22B366248, v34);
}

uint64_t sub_22B230044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 656) = v49;
  *(v8 + 648) = v48;
  *(v8 + 632) = v47;
  *(v8 + 616) = v46;
  *(v8 + 600) = v45;
  *(v8 + 584) = v44;
  *(v8 + 568) = v43;
  *(v8 + 560) = a8;
  *(v8 + 552) = a7;
  *(v8 + 544) = a6;
  *(v8 + 536) = a5;
  *(v8 + 528) = a4;
  v11 = sub_22B35DE9C();
  *(v8 + 664) = v11;
  v12 = *(v11 - 8);
  *(v8 + 672) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 680) = swift_task_alloc();
  *(v8 + 688) = swift_task_alloc();
  *(v8 + 696) = swift_task_alloc();
  v14 = sub_22B35EE4C();
  *(v8 + 704) = v14;
  v15 = *(v14 - 8);
  *(v8 + 712) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 720) = swift_task_alloc();
  v17 = sub_22B36052C();
  *(v8 + 728) = v17;
  v18 = *(v17 - 8);
  *(v8 + 736) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 744) = swift_task_alloc();
  *(v8 + 752) = swift_task_alloc();
  *(v8 + 760) = swift_task_alloc();
  *(v8 + 768) = swift_task_alloc();
  *(v8 + 776) = swift_task_alloc();
  *(v8 + 784) = swift_task_alloc();
  *(v8 + 792) = swift_task_alloc();
  *(v8 + 800) = swift_task_alloc();
  *(v8 + 808) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280) - 8) + 64) + 15;
  *(v8 + 816) = swift_task_alloc();
  *(v8 + 824) = swift_task_alloc();
  *(v8 + 832) = swift_task_alloc();
  v21 = sub_22B35E0BC();
  *(v8 + 840) = v21;
  v22 = *(v21 - 8);
  *(v8 + 848) = v22;
  v23 = *(v22 + 64) + 15;
  *(v8 + 856) = swift_task_alloc();
  v24 = sub_22B35DD8C();
  *(v8 + 864) = v24;
  v25 = *(v24 - 8);
  *(v8 + 872) = v25;
  v26 = *(v25 + 64) + 15;
  *(v8 + 880) = swift_task_alloc();
  v27 = sub_22B35DD6C();
  *(v8 + 888) = v27;
  v28 = *(v27 - 8);
  *(v8 + 896) = v28;
  v29 = *(v28 + 64) + 15;
  *(v8 + 904) = swift_task_alloc();
  v30 = sub_22B35DD4C();
  *(v8 + 912) = v30;
  v31 = *(v30 - 8);
  *(v8 + 920) = v31;
  v32 = *(v31 + 64) + 15;
  *(v8 + 928) = swift_task_alloc();
  v33 = sub_22B35DD5C();
  *(v8 + 936) = v33;
  v34 = *(v33 - 8);
  *(v8 + 944) = v34;
  v35 = *(v34 + 64) + 15;
  *(v8 + 952) = swift_task_alloc();
  v36 = sub_22B35DDBC();
  *(v8 + 960) = v36;
  v37 = *(v36 - 8);
  *(v8 + 968) = v37;
  v38 = *(v37 + 64) + 15;
  *(v8 + 976) = swift_task_alloc();
  v39 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  *(v8 + 984) = swift_task_alloc();
  *(v8 + 992) = swift_task_alloc();
  *(v8 + 1000) = swift_task_alloc();
  *(v8 + 1008) = swift_task_alloc();
  *(v8 + 1016) = swift_task_alloc();
  *(v8 + 1024) = swift_task_alloc();
  *(v8 + 1032) = swift_task_alloc();
  *(v8 + 1040) = swift_task_alloc();
  v40 = swift_task_alloc();
  *(v8 + 1048) = v40;
  *v40 = v8;
  v40[1] = sub_22B2305DC;

  return sub_22B22250C(a5, a6, 0, 0);
}

uint64_t sub_22B2305DC(uint64_t a1)
{
  v2 = *(*v1 + 1048);
  v3 = *(*v1 + 528);
  v5 = *v1;
  *(*v1 + 1056) = a1;

  return MEMORY[0x2822009F8](sub_22B2306F4, v3, 0);
}

uint64_t sub_22B2306F4()
{
  if (v0[132])
  {
    v1 = v0[70];
    sub_22B36012C();
    v2 = *(MEMORY[0x277D18208] + 4);

    v3 = swift_task_alloc();
    v0[133] = v3;
    *v3 = v0;
    v3[1] = sub_22B2309FC;
    v4 = v0[70];
    v5 = v0[69];

    return MEMORY[0x282172500](v5, v4);
  }

  else
  {
    sub_22B134CDC();
    v6 = swift_allocError();
    *v7 = 10;
    swift_willThrow();
    v8 = v0[82];
    v0[63] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
    sub_22B360ADC();
    v9 = v0[130];
    v10 = v0[129];
    v11 = v0[128];
    v12 = v0[127];
    v13 = v0[126];
    v14 = v0[125];
    v15 = v0[124];
    v16 = v0[123];
    v17 = v0[122];
    v18 = v0[119];
    v21 = v0[116];
    v22 = v0[113];
    v23 = v0[110];
    v24 = v0[107];
    v25 = v0[104];
    v26 = v0[103];
    v27 = v0[102];
    v28 = v0[101];
    v29 = v0[100];
    v30 = v0[99];
    v31 = v0[98];
    v32 = v0[97];
    v33 = v0[96];
    v34 = v0[95];
    v35 = v0[94];
    v36 = v0[93];
    v37 = v0[90];
    v38 = v0[87];
    v39 = v0[86];
    v40 = v0[85];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_22B2309FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1064);
  v6 = *v2;
  *(v4 + 1072) = a1;
  *(v4 + 1080) = v1;

  v7 = *(v3 + 528);
  if (v1)
  {
    v8 = sub_22B235290;
  }

  else
  {
    v8 = sub_22B230B34;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22B230B34()
{
  v1 = *(v0[66] + 120);
  v0[136] = v1;
  v2 = *(MEMORY[0x277D181A0] + 4);
  v11 = (*MEMORY[0x277D181A0] + MEMORY[0x277D181A0]);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[137] = v4;
  *v4 = v0;
  v4[1] = sub_22B230C0C;
  v5 = v0[134];
  v6 = v0[74];
  v7 = v0[73];
  v8 = v0[72];
  v9 = v0[71];

  return v11(v9, v8, v7, v6, v3);
}

uint64_t sub_22B230C0C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1096);
  v9 = *v2;
  *(v3 + 1104) = a1;
  *(v3 + 1112) = v1;

  if (v1)
  {
    v5 = *(v3 + 528);
    v6 = sub_22B2354CC;
  }

  else
  {
    v7 = *(v3 + 528);

    v6 = sub_22B230D38;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B230D38()
{
  v1 = v0[116];
  v2 = v0[115];
  v3 = v0[114];
  v4 = v0[113];
  v5 = v0[112];
  v6 = v0[111];
  v7 = v0[109];
  v33 = v0[108];
  v34 = v0[110];
  v8 = v0[106];
  v35 = v0[105];
  v9 = v0[104];
  (*(v0[118] + 104))(v0[119], *MEMORY[0x277CC9460], v0[117]);
  (*(v2 + 104))(v1, *MEMORY[0x277CC9458], v3);
  (*(v5 + 104))(v4, *MEMORY[0x277CC9468], v6);
  (*(v7 + 104))(v34, *MEMORY[0x277CC9480], v33);
  sub_22B35E08C();
  v10 = *(v8 + 48);
  v0[140] = v10;
  v0[141] = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v11 = v10(v9, 1, v35);
  if (v11 == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = v0[139];
    v13 = v0[138];
    v14 = v0[130];
    v15 = v0[122];
    v16 = v0[119];
    v17 = v0[116];
    v18 = v0[113];
    v19 = v0[110];
    (*(v0[106] + 32))(v0[107], v0[104], v0[105]);
    sub_22B35DD7C();
    v20 = sub_22B36013C();
    sub_22B3601BC();

    sub_22B35DD9C();
    v21 = v12;
    v22 = v0[122];
    v23 = v0[121];
    v24 = v0[120];
    if (v21)
    {

      (*(v23 + 8))(v22, v24);
      v25 = 1;
    }

    else
    {
      (*(v23 + 8))(v0[122], v0[120]);

      v25 = 0;
    }

    v26 = v0[130];
    v27 = v0[83];
    v28 = v0[66];
    v29 = *(v0[84] + 56);
    v0[142] = v29;
    v29(v26, v25, 1, v27);
    v30 = *(v28 + 120);
    v0[143] = v30;
    v0[2] = v0;
    v0[3] = sub_22B23108C;
    v31 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD20, &qword_22B366250);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_22B30F28C;
    v0[21] = &block_descriptor_18;
    v0[22] = v31;
    [v30 resetWithCompletionHandler_];
    v11 = (v0 + 2);
  }

  return MEMORY[0x282200938](v11);
}

uint64_t sub_22B23108C()
{
  v1 = *(*v0 + 528);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B231180, v1, 0);
}

uint64_t sub_22B231180()
{
  v109 = v0;
  v1 = *(v0 + 1104);

  v2 = sub_22B36013C();
  v3 = sub_22B3601AC();

  v4 = v3 >> 62;
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_42;
  }

LABEL_35:
  if (sub_22B36109C() != 1)
  {
LABEL_42:
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v71 = *(v0 + 744);
    v72 = *(v0 + 736);
    v73 = *(v0 + 728);
    v74 = __swift_project_value_buffer(v73, qword_28140BD10);
    swift_beginAccess();
    (*(v72 + 16))(v71, v74, v73);

    v75 = sub_22B36050C();
    v76 = sub_22B360D1C();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v108 = v78;
      *v77 = 136315394;
      *(v77 + 4) = sub_22B1A7B20(0xD00000000000008DLL, 0x800000022B3693E0, &v108);
      *(v77 + 12) = 2048;
      if (v4)
      {
        v79 = sub_22B36109C();
      }

      else
      {
        v79 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v83 = *(v0 + 744);
      v84 = *(v0 + 736);
      v85 = *(v0 + 728);

      *(v77 + 14) = v79;

      _os_log_impl(&dword_22B116000, v75, v76, "%s multiple customer agreements not supported: %ld", v77, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v78);
      MEMORY[0x23188F650](v78, -1, -1);
      MEMORY[0x23188F650](v77, -1, -1);

      (*(v84 + 8))(v83, v85);
    }

    else
    {
      v80 = *(v0 + 744);
      v81 = *(v0 + 736);
      v82 = *(v0 + 728);
      swift_bridgeObjectRelease_n();

      (*(v81 + 8))(v80, v82);
    }

    v35 = swift_task_alloc();
    *(v0 + 1384) = v35;
    *v35 = v0;
    v36 = sub_22B234EF0;
    goto LABEL_57;
  }

  if (!sub_22B36109C())
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v59 = *(v0 + 752);
    v60 = *(v0 + 736);
    v61 = *(v0 + 728);
    v62 = __swift_project_value_buffer(v61, qword_28140BD10);
    swift_beginAccess();
    (*(v60 + 16))(v59, v62, v61);
    v63 = sub_22B36050C();
    v64 = sub_22B360D1C();
    v65 = os_log_type_enabled(v63, v64);
    v66 = *(v0 + 752);
    v67 = *(v0 + 736);
    v68 = *(v0 + 728);
    if (v65)
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v108 = v70;
      *v69 = 136315138;
      *(v69 + 4) = sub_22B1A7B20(0xD00000000000008DLL, 0x800000022B3693E0, &v108);
      _os_log_impl(&dword_22B116000, v63, v64, "%s customer agreement is nil", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x23188F650](v70, -1, -1);
      MEMORY[0x23188F650](v69, -1, -1);
    }

    (*(v67 + 8))(v66, v68);
    v35 = swift_task_alloc();
    *(v0 + 1376) = v35;
    *v35 = v0;
    v36 = sub_22B234B54;
LABEL_57:
    v35[1] = v36;
    v98 = *(v0 + 1104);
    v99 = *(v0 + 560);
    v100 = *(v0 + 552);

    return sub_22B235718(v98, v100, v99);
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x23188EAC0](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_61;
    }

    v5 = *(v3 + 32);
  }

  *(v0 + 1152) = v5;

  v6 = sub_22B3600BC();
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v7)
    {
      goto LABEL_8;
    }

LABEL_53:
    if (qword_28140A0C8 == -1)
    {
LABEL_54:
      v86 = *(v0 + 808);
      v87 = *(v0 + 736);
      v88 = *(v0 + 728);
      v89 = __swift_project_value_buffer(v88, qword_28140BD10);
      swift_beginAccess();
      (*(v87 + 16))(v86, v89, v88);
      v90 = sub_22B36050C();
      v91 = sub_22B360D1C();
      v92 = os_log_type_enabled(v90, v91);
      v93 = *(v0 + 808);
      v94 = *(v0 + 736);
      v95 = *(v0 + 728);
      if (v92)
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v108 = v97;
        *v96 = 136315394;
        *(v96 + 4) = sub_22B1A7B20(0xD00000000000008DLL, 0x800000022B3693E0, &v108);
        *(v96 + 12) = 2048;
        *(v96 + 14) = 0;
        _os_log_impl(&dword_22B116000, v90, v91, "%s accounts without meters not supported: %ld", v96, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v97);
        MEMORY[0x23188F650](v97, -1, -1);
        MEMORY[0x23188F650](v96, -1, -1);
      }

      (*(v94 + 8))(v93, v95);
      v35 = swift_task_alloc();
      *(v0 + 1160) = v35;
      *v35 = v0;
      v36 = sub_22B231D80;
      goto LABEL_57;
    }

LABEL_61:
    swift_once();
    goto LABEL_54;
  }

  v7 = sub_22B36109C();

  if (!v7)
  {
    goto LABEL_53;
  }

LABEL_8:
  if (v7 >= 2)
  {
    v9 = sub_22B3600BC();
    v3 = v9;
    v10 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v9 >> 62)
    {
      v11 = sub_22B36109C();
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = 0;
    v106 = MEMORY[0x277D84F90];
    while (v11 != v4)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x23188EAC0](v4, v3);
      }

      else
      {
        if (v4 >= *(v10 + 16))
        {
          goto LABEL_34;
        }

        v12 = *(v3 + 8 * v4 + 32);
      }

      v13 = v12;
      v14 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v15 = sub_22B3601CC();
      v17 = v16;

      ++v4;
      if (v17)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_22B32CD20(0, *(v106 + 2) + 1, 1, v106);
        }

        v19 = *(v106 + 2);
        v18 = *(v106 + 3);
        if (v19 >= v18 >> 1)
        {
          v106 = sub_22B32CD20((v18 > 1), v19 + 1, 1, v106);
        }

        *(v106 + 2) = v19 + 1;
        v20 = &v106[16 * v19];
        *(v20 + 4) = v15;
        *(v20 + 5) = v17;
        v4 = v14;
      }
    }

    v21 = sub_22B31A80C(v106);

    v22 = *(v21 + 16);

    if (v22 <= 1)
    {
      goto LABEL_30;
    }

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 800);
    v24 = *(v0 + 736);
    v25 = *(v0 + 728);
    v26 = __swift_project_value_buffer(v25, qword_28140BD10);
    swift_beginAccess();
    (*(v24 + 16))(v23, v26, v25);
    v27 = sub_22B36050C();
    v28 = sub_22B360D1C();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 800);
    v31 = *(v0 + 736);
    v32 = *(v0 + 728);
    if (v29)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v108 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_22B1A7B20(0xD00000000000008DLL, 0x800000022B3693E0, &v108);
      _os_log_impl(&dword_22B116000, v27, v28, "%s usage points found!", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x23188F650](v34, -1, -1);
      MEMORY[0x23188F650](v33, -1, -1);
    }

    (*(v31 + 8))(v30, v32);
    v35 = swift_task_alloc();
    *(v0 + 1168) = v35;
    *v35 = v0;
    v36 = sub_22B232128;
    goto LABEL_57;
  }

LABEL_30:
  v37 = *(v0 + 1136);
  v38 = *(v0 + 1104);
  v39 = *(v0 + 1056);
  v40 = *(v0 + 1032);
  v102 = *(v0 + 1024);
  v103 = *(v0 + 1016);
  v41 = *(v0 + 712);
  v104 = *(v0 + 704);
  v105 = *(v0 + 720);
  v42 = *(v0 + 672);
  v43 = *(v0 + 664);
  v101 = *(v0 + 648);
  v44 = MEMORY[0x23188EEB0](v8);
  *(v0 + 1176) = sub_22B3600CC();
  *(v0 + 1184) = v45;
  *(v0 + 1192) = sub_22B3600AC();
  *(v0 + 1200) = v46;
  objc_autoreleasePoolPop(v44);
  v107 = sub_22B35F3AC();
  v48 = v47;
  *(v0 + 1208) = v107;
  *(v0 + 1216) = v47;
  v49 = sub_22B36013C();
  v50 = sub_22B36018C();
  v52 = v51;
  *(v0 + 488) = v50;
  *(v0 + 496) = v51;

  *(v0 + 1224) = v52;
  *(v0 + 1232) = sub_22B36014C();
  *(v0 + 1240) = v53;
  v54 = *(v42 + 16);
  v42 += 16;
  *(v0 + 1248) = v54;
  *(v0 + 1256) = v42 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v54(v40, v101, v43);
  *(v0 + 1264) = (v42 + 40) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v37(v40, 0, 1, v43);
  sub_22B35DE6C();
  v37(v102, 0, 1, v43);
  v37(v103, 1, 1, v43);
  (*(v41 + 104))(v105, *MEMORY[0x277D07358], v104);
  *(v0 + 1272) = sub_22B35EE3C();
  *(v0 + 1280) = v55;
  (*(v41 + 8))(v105, v104);
  v56 = swift_task_alloc();
  *(v0 + 1288) = v56;
  *v56 = v0;
  v56[1] = sub_22B2324D0;
  v57 = *(v0 + 528);

  return sub_22B22250C(v107, v48, 0, 0);
}

uint64_t sub_22B231D80()
{
  v1 = *(*v0 + 1160);
  v2 = *(*v0 + 528);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B231E90, v2, 0);
}

uint64_t sub_22B231E90()
{
  v1 = v0[144];
  v2 = v0[138];
  v3 = v0[134];
  v4 = v0[132];
  v5 = v0[130];
  sub_22B134CDC();
  v6 = swift_allocError();
  *v7 = 26;
  swift_willThrow();

  sub_22B123284(v5, &qword_27D8BA340, &qword_22B363FB0);
  v8 = v0[82];
  v0[63] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  sub_22B360ADC();
  v9 = v0[130];
  v10 = v0[129];
  v11 = v0[128];
  v12 = v0[127];
  v13 = v0[126];
  v14 = v0[125];
  v15 = v0[124];
  v16 = v0[123];
  v17 = v0[122];
  v18 = v0[119];
  v21 = v0[116];
  v22 = v0[113];
  v23 = v0[110];
  v24 = v0[107];
  v25 = v0[104];
  v26 = v0[103];
  v27 = v0[102];
  v28 = v0[101];
  v29 = v0[100];
  v30 = v0[99];
  v31 = v0[98];
  v32 = v0[97];
  v33 = v0[96];
  v34 = v0[95];
  v35 = v0[94];
  v36 = v0[93];
  v37 = v0[90];
  v38 = v0[87];
  v39 = v0[86];
  v40 = v0[85];

  v19 = v0[1];

  return v19();
}

uint64_t sub_22B232128()
{
  v1 = *(*v0 + 1168);
  v2 = *(*v0 + 528);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B232238, v2, 0);
}

uint64_t sub_22B232238()
{
  v1 = v0[144];
  v2 = v0[138];
  v3 = v0[134];
  v4 = v0[132];
  v5 = v0[130];
  sub_22B134CDC();
  v6 = swift_allocError();
  *v7 = 25;
  swift_willThrow();

  sub_22B123284(v5, &qword_27D8BA340, &qword_22B363FB0);
  v8 = v0[82];
  v0[63] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  sub_22B360ADC();
  v9 = v0[130];
  v10 = v0[129];
  v11 = v0[128];
  v12 = v0[127];
  v13 = v0[126];
  v14 = v0[125];
  v15 = v0[124];
  v16 = v0[123];
  v17 = v0[122];
  v18 = v0[119];
  v21 = v0[116];
  v22 = v0[113];
  v23 = v0[110];
  v24 = v0[107];
  v25 = v0[104];
  v26 = v0[103];
  v27 = v0[102];
  v28 = v0[101];
  v29 = v0[100];
  v30 = v0[99];
  v31 = v0[98];
  v32 = v0[97];
  v33 = v0[96];
  v34 = v0[95];
  v35 = v0[94];
  v36 = v0[93];
  v37 = v0[90];
  v38 = v0[87];
  v39 = v0[86];
  v40 = v0[85];

  v19 = v0[1];

  return v19();
}

uint64_t sub_22B2324D0(uint64_t a1)
{
  v2 = *(*v1 + 1288);
  v3 = *(*v1 + 528);
  v5 = *v1;
  *(*v1 + 1296) = a1;

  return MEMORY[0x2822009F8](sub_22B2325E8, v3, 0);
}

uint64_t sub_22B2325E8()
{
  if (v0[162])
  {
    v1 = v0[153];
    v2 = v0[61];
    v3 = v0[129];
    v4 = v0[126];
    v5 = v0[76];
    v32 = v0[75];
    v33 = v0[155];
    v6 = v0[74];
    v31 = v0[73];
    v7 = v0[70];
    v8 = v0[69];

    sub_22B35F13C();

    sub_22B35F44C();
    sub_22B170BE0(v3, v4, &qword_27D8BA340, &qword_22B363FB0);
    sub_22B35F2DC();

    sub_22B35F07C();

    sub_22B35F0CC();

    sub_22B35F0CC();
    if (v33)
    {
      v9 = v0[155];
      v10 = v0[154];

      sub_22B35F15C();
    }

    if (v0[78])
    {
      v11 = v0[77];
      v12 = v0[78];

      sub_22B35F09C();
    }

    v13 = v0[148];
    v14 = v0[147];
    v15 = v0[80];
    v16 = v0[79];

    sub_22B35F0EC();

    sub_22B35F3CC();
    v17 = [objc_allocWithZone(MEMORY[0x277CBFBE8]) init];
    v0[163] = v17;
    v18 = sub_22B36081C();
    v0[164] = v18;
    v0[10] = v0;
    v0[15] = v0 + 64;
    v0[11] = sub_22B232988;
    v19 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA8E0, qword_22B366260);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_22B164948;
    v0[29] = &block_descriptor_52;
    v0[30] = v19;
    [v17 geocodeAddressString:v18 completionHandler:v0 + 26];

    return MEMORY[0x282200938](v0 + 10);
  }

  else
  {
    v20 = v0[160];
    v21 = v0[155];
    v22 = v0[153];
    v23 = v0[152];

    v24 = v0[129];
    v25 = v0[128];
    sub_22B123284(v0[127], &qword_27D8BA340, &qword_22B363FB0);
    sub_22B123284(v25, &qword_27D8BA340, &qword_22B363FB0);
    sub_22B123284(v24, &qword_27D8BA340, &qword_22B363FB0);
    v26 = swift_task_alloc();
    v0[171] = v26;
    *v26 = v0;
    v26[1] = sub_22B234794;
    v27 = v0[138];
    v28 = v0[70];
    v29 = v0[69];

    return sub_22B235718(v27, v29, v28);
  }
}

uint64_t sub_22B232988()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 1320) = v3;
  v4 = *(v1 + 528);
  if (v3)
  {
    v5 = sub_22B233718;
  }

  else
  {
    v5 = sub_22B232AA8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22B232AA8()
{
  v145 = v1;
  v4 = *(v1 + 512);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v63 = *(v1 + 512);
    }

    if (sub_22B36109C())
    {
LABEL_3:
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x23188EAC0](0, v4);
      }

      else
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_45;
        }

        v5 = *(v4 + 32);
      }

      v3 = v5;
      v6 = *(v1 + 1312);

      v7 = [v3 location];
      if (!v7)
      {
LABEL_11:
        v27 = [v3 timeZone];
        if (v27)
        {
          v28 = *(v1 + 816);
          v29 = v27;
          sub_22B35E0AC();

          v30 = 0;
        }

        else
        {
          v30 = 1;
        }

        v31 = *(v1 + 1128);
        v32 = *(v1 + 1120);
        v33 = *(v1 + 840);
        v34 = *(v1 + 824);
        v35 = *(v1 + 816);
        (*(*(v1 + 848) + 56))(v35, v30, 1, v33);
        sub_22B23E3A4(v35, v34);
        if (v32(v34, 1, v33) == 1)
        {
          v36 = *(v1 + 1216);
          v37 = *(v1 + 824);

          sub_22B123284(v37, &unk_27D8BA080, &unk_22B364280);
        }

        else
        {
          v38 = *(v1 + 1296);
          v39 = *(v1 + 848);
          v40 = *(v1 + 840);
          v41 = *(v1 + 824);
          v42 = sub_22B35E06C();
          v44 = v43;
          (*(v39 + 8))(v41, v40);

          sub_22B35F42C();
          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v45 = *(v1 + 1216);
          v46 = *(v1 + 776);
          v47 = *(v1 + 736);
          v48 = *(v1 + 728);
          v49 = __swift_project_value_buffer(v48, qword_28140BD10);
          swift_beginAccess();
          (*(v47 + 16))(v46, v49, v48);

          v50 = sub_22B36050C();
          v51 = sub_22B360D2C();

          v52 = os_log_type_enabled(v50, v51);
          v53 = *(v1 + 1216);
          if (v52)
          {
            v54 = *(v1 + 1208);
            v130 = *(v1 + 736);
            v132 = *(v1 + 728);
            v135 = *(v1 + 776);
            v55 = swift_slowAlloc();
            v140 = v3;
            v144 = swift_slowAlloc();
            v56 = v144;
            *v55 = 136315650;
            *(v55 + 4) = sub_22B1A7B20(0xD00000000000011ALL, 0x800000022B36A810, &v144);
            *(v55 + 12) = 2080;
            v57 = sub_22B1A7B20(v54, v53, &v144);

            *(v55 + 14) = v57;
            *(v55 + 22) = 2080;
            v58 = sub_22B1A7B20(v42, v44, &v144);

            *(v55 + 24) = v58;
            _os_log_impl(&dword_22B116000, v50, v51, "%s site %s set time zone to %s", v55, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x23188F650](v56, -1, -1);
            MEMORY[0x23188F650](v55, -1, -1);

            (*(v130 + 8))(v135, v132);
          }

          else
          {
            v59 = *(v1 + 776);
            v60 = *(v1 + 736);
            v61 = *(v1 + 728);
            v62 = *(v1 + 1216);

            (*(v60 + 8))(v59, v61);
          }
        }

        goto LABEL_29;
      }

      v0 = v7;
      v8 = *(v1 + 1296);
      v2 = v7;
      sub_22B35F3EC();
      if (qword_28140A0C8 == -1)
      {
LABEL_8:
        v9 = *(v1 + 1216);
        v10 = *(v1 + 784);
        v11 = *(v1 + 736);
        v12 = *(v1 + 728);
        v13 = __swift_project_value_buffer(v12, qword_28140BD10);
        swift_beginAccess();
        (*(v11 + 16))(v10, v13, v12);

        v14 = v2;
        v15 = sub_22B36050C();
        v16 = sub_22B360D2C();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = *(v1 + 1208);
          v134 = *(v1 + 784);
          v18 = *(v1 + 736);
          v129 = *(v1 + 1216);
          v131 = *(v1 + 728);
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v139 = v3;
          v144 = swift_slowAlloc();
          v21 = v144;
          *v19 = 136315650;
          *(v19 + 4) = sub_22B1A7B20(0xD00000000000011ALL, 0x800000022B36A810, &v144);
          *(v19 + 12) = 2080;
          *(v19 + 14) = sub_22B1A7B20(v17, v129, &v144);
          *(v19 + 22) = 2112;
          *(v19 + 24) = v14;
          *v20 = v0;
          v22 = v14;
          _os_log_impl(&dword_22B116000, v15, v16, "%s site %s set location to %@", v19, 0x20u);
          sub_22B123284(v20, &unk_27D8BAA90, &unk_22B362BC0);
          MEMORY[0x23188F650](v20, -1, -1);
          swift_arrayDestroy();
          v23 = v21;
          v3 = v139;
          MEMORY[0x23188F650](v23, -1, -1);
          MEMORY[0x23188F650](v19, -1, -1);

          (*(v18 + 8))(v134, v131);
        }

        else
        {
          v24 = *(v1 + 784);
          v25 = *(v1 + 736);
          v26 = *(v1 + 728);

          (*(v25 + 8))(v24, v26);
        }

        goto LABEL_11;
      }

LABEL_45:
      swift_once();
      goto LABEL_8;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v64 = *(v1 + 1312);
  v65 = *(v1 + 1304);

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v66 = *(v1 + 1216);
  v67 = *(v1 + 792);
  v68 = *(v1 + 736);
  v69 = *(v1 + 728);
  v70 = *(v1 + 640);
  v71 = __swift_project_value_buffer(v69, qword_28140BD10);
  swift_beginAccess();
  (*(v68 + 16))(v67, v71, v69);

  v72 = sub_22B36050C();
  v73 = sub_22B360D1C();

  v74 = os_log_type_enabled(v72, v73);
  v75 = *(v1 + 1216);
  if (v74)
  {
    v76 = *(v1 + 1208);
    v77 = *(v1 + 736);
    v136 = *(v1 + 728);
    v141 = *(v1 + 792);
    v133 = *(v1 + 640);
    v78 = *(v1 + 632);
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v144 = v80;
    *v79 = 136315650;
    *(v79 + 4) = sub_22B1A7B20(0xD00000000000011ALL, 0x800000022B36A810, &v144);
    *(v79 + 12) = 2080;
    v81 = sub_22B1A7B20(v76, v75, &v144);

    *(v79 + 14) = v81;
    *(v79 + 22) = 2080;
    *(v79 + 24) = sub_22B1A7B20(v78, v133, &v144);
    _os_log_impl(&dword_22B116000, v72, v73, "%s site %s could not get placemark from %s", v79, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v80, -1, -1);
    MEMORY[0x23188F650](v79, -1, -1);

    (*(v77 + 8))(v141, v136);
  }

  else
  {
    v82 = *(v1 + 792);
    v83 = *(v1 + 736);
    v84 = *(v1 + 728);
    v85 = *(v1 + 1216);

    (*(v83 + 8))(v82, v84);
  }

LABEL_29:
  v86 = *(v1 + 1296);
  v87 = *(v1 + 1200);
  v88 = *(v1 + 576);
  v89 = *(v1 + 568);

  sub_22B35F1DC();
  if (v87)
  {
    v90 = *(v1 + 1296);
    v91 = *(v1 + 1200);
    v92 = *(v1 + 1192);

    sub_22B35F1BC();
  }

  v93 = *(v1 + 1000);
  v94 = *(v1 + 672);
  v95 = *(v1 + 664);
  sub_22B170BE0(*(v1 + 1024), v93, &qword_27D8BA340, &qword_22B363FB0);
  v96 = *(v94 + 48);
  if (v96(v93, 1, v95) == 1)
  {
    sub_22B123284(*(v1 + 1000), &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v137 = *(v1 + 1264);
    v142 = *(v1 + 1296);
    v97 = *(v1 + 1256);
    v98 = *(v1 + 1248);
    v99 = *(v1 + 1136);
    v100 = *(v1 + 1008);
    v101 = *(v1 + 696);
    v102 = *(v1 + 672);
    v103 = *(v1 + 664);
    (*(v102 + 32))(v101, *(v1 + 1000), v103);
    v98(v100, v101, v103);
    v99(v100, 0, 1, v103);
    sub_22B35F2BC();
    (*(v102 + 8))(v101, v103);
  }

  v104 = *(v1 + 992);
  v105 = *(v1 + 664);
  sub_22B170BE0(*(v1 + 1040), v104, &qword_27D8BA340, &qword_22B363FB0);
  if (v96(v104, 1, v105) == 1)
  {
    sub_22B123284(*(v1 + 992), &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v138 = *(v1 + 1264);
    v143 = *(v1 + 1296);
    v106 = *(v1 + 1256);
    v107 = *(v1 + 1248);
    v108 = *(v1 + 1136);
    v109 = *(v1 + 1008);
    v110 = *(v1 + 688);
    v111 = *(v1 + 672);
    v112 = *(v1 + 664);
    (*(v111 + 32))(v110, *(v1 + 992), v112);
    v107(v109, v110, v112);
    v108(v109, 0, 1, v112);
    sub_22B35F23C();
    (*(v111 + 8))(v110, v112);
  }

  v113 = *(v1 + 984);
  v114 = *(v1 + 664);
  sub_22B170BE0(*(v1 + 1016), v113, &qword_27D8BA340, &qword_22B363FB0);
  if (v96(v113, 1, v114) == 1)
  {
    sub_22B123284(*(v1 + 984), &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v115 = *(v1 + 1296);
    v116 = *(v1 + 1264);
    v117 = *(v1 + 1256);
    v118 = *(v1 + 1248);
    v119 = *(v1 + 1136);
    v120 = *(v1 + 1008);
    v121 = *(v1 + 680);
    v122 = *(v1 + 672);
    v123 = *(v1 + 664);
    (*(v122 + 32))(v121, *(v1 + 984), v123);
    v118(v120, v121, v123);
    v119(v120, 0, 1, v123);
    sub_22B35F10C();
    (*(v122 + 8))(v121, v123);
  }

  v124 = *(v1 + 1296);
  v125 = *(v1 + 1280);
  v126 = *(v1 + 1272);
  sub_22B35F39C();
  LOBYTE(v144) = 0;
  sub_22B35F2FC();
  v127 = swift_task_alloc();
  *(v1 + 1328) = v127;
  *v127 = v1;
  v127[1] = sub_22B233D5C;

  return EKEnergySite.save(reset:tokenUpdate:)(0, 1);
}