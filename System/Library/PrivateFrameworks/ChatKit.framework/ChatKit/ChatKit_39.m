double sub_190B7FFC8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for AttributedTapbackItem();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v13 = v0;
  sub_190B81E4C();
  sub_190D51C20();

  v9 = OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__selectedItem;
  swift_beginAccess();
  sub_190B81ED4(v1 + v9, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_19022EEA4(v4, &unk_1EAD5E5C0);
    swift_getKeyPath();
    v12 = v1;
    sub_190D51C20();

    if (*(*(v1 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__tapbackItems) + 16) == 1)
    {
      return 22.0;
    }

    else
    {
      return 18.0;
    }
  }

  else
  {
    sub_190B81FD0(v4, v8);
    if (*(*(v8 + 3) + 16) == 1)
    {
      v10 = 30.0;
    }

    else
    {
      v10 = 26.0;
    }

    sub_19090B450(v8);
  }

  return v10;
}

uint64_t sub_190B80204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedTapbackItem();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56D90);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_190B81ED4(a1, &v20 - v13);
  sub_190B81ED4(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_190B81ED4(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_190B81FD0(&v14[v15], v7);
      v18 = sub_190AE3DCC(v10, v7);
      sub_19090B450(v7);
      sub_19090B450(v10);
      sub_19022EEA4(v14, &unk_1EAD5E5C0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_19090B450(v10);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_19022EEA4(v14, &qword_1EAD56D90);
    v17 = 1;
    return v17 & 1;
  }

  sub_19022EEA4(v14, &unk_1EAD5E5C0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_190B80474(void *a1)
{
  v181 = sub_190D518A0();
  v2 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v180 = &v167 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v193 = &v167 - v5;
  v6 = sub_190D51840();
  v177 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v170 = &v167 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v167 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v187 = &v167 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v183 = &v167 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v185 = &v167 - v16;
  v17 = MEMORY[0x1E69E7CC0];
  v202 = sub_190823AA8(MEMORY[0x1E69E7CC0]);
  v18 = sub_190823BCC(v17);
  v201 = v18;
  v19 = [a1 visibleAssociatedMessageChatItems];
  if (!v19)
  {
    goto LABEL_138;
  }

  v20 = v19;
  sub_1902188FC(0, &qword_1EAD44F88);
  v21 = sub_190D57180();

  v22 = [objc_opt_self() sharedManager];
  v168 = v22;
  if (v22)
  {
    v172 = [v22 isFeatureEnabled];
  }

  else
  {
    v172 = 0;
  }

  v199 = v2;
  v200[0] = v17;
  v23 = v21 & 0xFFFFFFFFFFFFFF8;
  if (v21 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_190D581C0())
  {
    v179 = v18;
    v169 = v10;
    if (i)
    {
      v25 = 0;
      v10 = (v21 & 0xC000000000000001);
      do
      {
        v26 = v25;
        while (1)
        {
          if (v10)
          {
            v27 = MEMORY[0x193AF3B90](v26, v21);
          }

          else
          {
            if (v26 >= *(v23 + 16))
            {
              goto LABEL_40;
            }

            v27 = *(v21 + 8 * v26 + 32);
          }

          v18 = v27;
          v25 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            __break(1u);
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v26;
          if (v25 == i)
          {
            goto LABEL_21;
          }
        }

        MEMORY[0x193AF29E0]();
        if (*((v200[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v200[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v18 = *((v200[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_190D571A0();
        }

        sub_190D571E0();
        v17 = v200[0];
      }

      while (v25 != i);
    }

LABEL_21:
    v182 = v6;

    v6 = v17 & 0xFFFFFFFFFFFFFF8;
    if (v17 >> 62)
    {
      break;
    }

    v21 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_45;
    }

LABEL_23:
    v10 = 0;
    v28 = MEMORY[0x1E69E7CC0];
    v18 = &selRef__titleLabelFontForCurrentStyle;
LABEL_24:
    v23 = v10;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x193AF3B90](v23, v17);
      }

      else
      {
        if (v23 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v29 = *(v17 + 8 * v23 + 32);
      }

      v30 = v29;
      v10 = (v23 + 1);
      if (__OFADD__(v23, 1))
      {
        break;
      }

      v31 = [v29 acknowledgments];
      if (v31)
      {
        v32 = v31;
        sub_1902188FC(0, &qword_1EAD5E5E0);
        v33 = sub_190D57180();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_1908356F0(0, *(v28 + 2) + 1, 1, v28);
        }

        v35 = *(v28 + 2);
        v34 = *(v28 + 3);
        if (v35 >= v34 >> 1)
        {
          v28 = sub_1908356F0((v34 > 1), v35 + 1, 1, v28);
        }

        *(v28 + 2) = v35 + 1;
        *&v28[8 * v35 + 32] = v33;
        if (v10 != v21)
        {
          goto LABEL_24;
        }

        goto LABEL_46;
      }

      ++v23;
      if (v10 == v21)
      {
        goto LABEL_46;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

  v21 = sub_190D581C0();
  if (v21)
  {
    goto LABEL_23;
  }

LABEL_45:
  v28 = MEMORY[0x1E69E7CC0];
LABEL_46:

  v36 = sub_19086D20C(v28);

  if ((v36 & 0x8000000000000000) != 0 || (v36 & 0x4000000000000000) != 0)
  {
LABEL_143:
    v38 = sub_190D581C0();
  }

  else
  {
    v38 = *(v36 + 2);
  }

  v39 = v182;
  v40 = v185;
  if (!v38)
  {
LABEL_137:

    v165 = v202;
    MEMORY[0x1EEE9AC00](v164);
    *(&v167 - 2) = &v201;
    v17 = sub_190B7FC88(v165, sub_190B82110, (&v167 - 4));

LABEL_138:

    return v17;
  }

  v41 = 0;
  v191 = v36 & 0xC000000000000001;
  v186 = (v177 + 32);
  v190 = (v177 + 56);
  v174 = (v177 + 48);
  v189 = (v177 + 8);
  v178 = (v199 + 8);
  v176 = (v177 + 16);
  v173 = (v177 + 40);
  *&v37 = 138412290;
  v171 = v37;
  v175 = xmmword_190DD1D90;
  v192 = v36;
  v188 = v38;
  while (1)
  {
    if (v191)
    {
      v44 = MEMORY[0x193AF3B90](v41, v36);
      v45 = (v41 + 1);
      if (__OFADD__(v41, 1))
      {
        goto LABEL_139;
      }
    }

    else
    {
      if (v41 >= *(v36 + 2))
      {
        goto LABEL_141;
      }

      v44 = *&v36[8 * v41 + 32];
      v45 = (v41 + 1);
      if (__OFADD__(v41, 1))
      {
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
        goto LABEL_143;
      }
    }

    v195 = v45;
    v46 = v44;
    v47 = [v46 sender];
    v48 = objc_allocWithZone(CKEntity);
    v196 = v47;
    v49 = [v48 initWithIMHandle_];
    v50 = v49;
    if (v49)
    {
      v51 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
      v52 = sub_190D57160();
      v199 = [v51 cnContactWithKeys_];
    }

    else
    {
      v199 = 0;
    }

    v53 = [v46 time];

    v197 = v50;
    if (v53)
    {
      v54 = v183;
      sub_190D517E0();

      v55 = *v186;
      v56 = v193;
      (*v186)(v193, v54, v39);
      (*v190)(v56, 0, 1, v39);
      v55(v40, v56, v39);
      v50 = v197;
    }

    else
    {
      v57 = v193;
      (*v190)(v193, 1, 1, v39);
      sub_190D51830();
      if ((*v174)(v57, 1, v39) != 1)
      {
        sub_19022EEA4(v193, &unk_1EAD5E5D0);
      }
    }

    v58 = [v46 tapback];
    if (v58)
    {
      v59 = v58;
      objc_opt_self();
      v60 = swift_dynamicCastObjCClass();
      if (v60)
      {
        v61 = v40;
        v62 = [v60 associatedMessageEmoji];
        v63 = sub_190D56F10();
        v65 = v64;

        sub_190D52690();
        v66 = 1;
        if (!v50)
        {
          goto LABEL_98;
        }

        goto LABEL_94;
      }
    }

    v67 = [v46 tapback];
    if (v67)
    {
      v68 = v67;
      v61 = v40;
      objc_opt_self();
      v69 = swift_dynamicCastObjCClass();
      if (v69)
      {
        v63 = v69;
        v70 = v68;
        v65 = 0;
        v66 = 0;
        if (!v50)
        {
          goto LABEL_98;
        }

        goto LABEL_94;
      }
    }

    v71 = [v46 tapback];
    if (!v71)
    {
      goto LABEL_88;
    }

    v72 = v71;
    v61 = v40;
    objc_opt_self();
    v73 = swift_dynamicCastObjCClass();
    if (!v73)
    {

LABEL_88:
      if (qword_1EAD52008 != -1)
      {
        swift_once();
      }

      v83 = sub_190D53040();
      __swift_project_value_buffer(v83, qword_1EAD9E5D8);
      v84 = v46;
      v85 = sub_190D53020();
      v86 = sub_190D576A0();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        *v87 = v171;
        v89 = [v84 tapback];
        *(v87 + 4) = v89;
        *v88 = v89;
        _os_log_impl(&dword_19020E000, v85, v86, "While building a tapback view model, encountered unhandled tapback %@.", v87, 0xCu);
        sub_19022EEA4(v88, &unk_1EAD54610);
        v90 = v88;
        v50 = v197;
        MEMORY[0x193AF7A40](v90, -1, -1);
        v91 = v87;
        v61 = v185;
        MEMORY[0x193AF7A40](v91, -1, -1);
      }

      else
      {
        v61 = v40;
      }

      v66 = 1;
      v65 = 0xE100000000000000;
      v63 = 63;
      if (!v50)
      {
        goto LABEL_98;
      }

      goto LABEL_94;
    }

    v63 = v73;
    if (v172 && [v73 commSafetySensitivityState] == 1)
    {

      if (qword_1EAD52008 != -1)
      {
        swift_once();
      }

      v74 = sub_190D53040();
      __swift_project_value_buffer(v74, qword_1EAD9E5D8);
      v75 = v46;
      v76 = sub_190D53020();
      v77 = sub_190D57680();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *v78 = v171;
        *(v78 + 4) = v75;
        *v79 = v75;
        v80 = v75;
        _os_log_impl(&dword_19020E000, v76, v77, "A tapback item correlating with %@ is being filtered out.", v78, 0xCu);
        sub_19022EEA4(v79, &unk_1EAD54610);
        v81 = v79;
        v50 = v197;
        MEMORY[0x193AF7A40](v81, -1, -1);
        v40 = v185;
        MEMORY[0x193AF7A40](v78, -1, -1);
        v75 = v196;
      }

      else
      {
        v40 = v61;
        v80 = v76;
        v76 = v196;
      }

      (*v189)(v40, v39);
      goto LABEL_97;
    }

    v82 = v72;
    v65 = 0;
    v66 = 2;
    if (!v50)
    {
      goto LABEL_98;
    }

LABEL_94:
    v92 = [v50 abbreviatedDisplayName];
    if (v92)
    {
      v93 = v92;
      v94 = sub_190D56F10();
      v198 = v95;

      if (!v199)
      {
        goto LABEL_96;
      }

      goto LABEL_99;
    }

LABEL_98:
    v94 = 0;
    v198 = 0xE000000000000000;
    if (!v199)
    {
LABEL_96:
      (*v189)(v61, v39);
      sub_19083F1AC(v63, v65, v66);

      v96 = v63;
      v40 = v61;
      sub_190B820FC(v96, v65, v66);
      v38 = v188;
LABEL_97:
      v43 = v195;
      v36 = v192;
      goto LABEL_53;
    }

LABEL_99:
    v97 = v180;
    sub_190D50450();
    v98 = sub_190D51850();
    v194 = v99;
    (*v178)(v97, v181);
    v100 = v202;
    if (v202[2])
    {
      sub_190876340(v63, v65, v66);
      if (v101)
      {
        break;
      }
    }

    v184 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BCA0);
    v115 = swift_allocObject();
    *(v115 + 16) = v175;
    v117 = v198;
    v116 = v199;
    *(v115 + 32) = v94;
    *(v115 + 40) = v117;
    *(v115 + 48) = v116;
    *(v115 + 56) = 0;
    *(v115 + 64) = v98;
    v36 = v194;
    *(v115 + 72) = v194;
    v118 = v116;
    sub_190D52690();
    sub_190D52690();
    sub_190824730(v63, v65, v66);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v200[0] = v100;
    v120 = v115;
    v121 = v185;
    sub_190C1D28C(v120, v63, v65, v66, isUniquelyReferenced_nonNull_native);
    sub_19083F1AC(v63, v65, v66);
    v202 = v200[0];
    v122 = v121;
    (*v176)(v187, v121, v39);
    v123 = v201;
    v124 = swift_isUniquelyReferenced_nonNull_native();
    v200[0] = v123;
    v125 = sub_190876340(v63, v65, v66);
    v127 = v123[2];
    v128 = (v126 & 1) == 0;
    v129 = __OFADD__(v127, v128);
    v130 = v127 + v128;
    if (v129)
    {
      goto LABEL_140;
    }

    v36 = v126;
    if (v123[3] >= v130)
    {
      if ((v124 & 1) == 0)
      {
        v161 = v125;
        sub_190B6A000();
        v125 = v161;
        v122 = v185;
      }
    }

    else
    {
      sub_190B669E4(v130, v124);
      v125 = sub_190876340(v63, v65, v66);
      if ((v36 & 1) != (v131 & 1))
      {
        goto LABEL_146;
      }
    }

    v39 = v182;
    v132 = v200[0];
    v179 = v200[0];
    if (v36)
    {
      v42 = v177;
      (*(v177 + 40))(v200[0][7] + *(v177 + 72) * v125, v187, v182);
      sub_190B820FC(v63, v65, v66);
      sub_19083F1AC(v63, v65, v66);

      v40 = v122;
      (*(v42 + 8))(v122, v39);
    }

    else
    {
      v200[0][(v125 >> 6) + 8] |= 1 << v125;
      v133 = v132[6] + 24 * v125;
      *v133 = v63;
      *(v133 + 8) = v65;
      *(v133 + 16) = v66;
      v134 = v177;
      (*(v177 + 32))(v132[7] + *(v177 + 72) * v125, v187, v39);
      sub_190B820FC(v63, v65, v66);

      v40 = v122;
      (*(v134 + 8))(v122, v39);
      v135 = v132[2];
      v129 = __OFADD__(v135, 1);
      v136 = v135 + 1;
      if (v129)
      {
        goto LABEL_142;
      }

      v132[2] = v136;
    }

    v201 = v132;
    v36 = v192;
    v38 = v188;
    v43 = v195;
    v41 = v184;
LABEL_53:
    ++v41;
    if (v43 == v38)
    {
      goto LABEL_137;
    }
  }

  v102 = sub_190C2B5A0(v200, v63, v65, v66);
  v104 = *v103;
  if (*v103)
  {
    v105 = v103;
    v184 = v102;
    v106 = v199;
    sub_190D52690();
    sub_190D52690();
    v107 = swift_isUniquelyReferenced_nonNull_native();
    *v105 = v104;
    if ((v107 & 1) == 0)
    {
      v104 = sub_190836C5C(0, *(v104 + 2) + 1, 1, v104);
      *v105 = v104;
    }

    v109 = *(v104 + 2);
    v108 = *(v104 + 3);
    v110 = v109 + 1;
    if (v109 >= v108 >> 1)
    {
      v167 = v109 + 1;
      v162 = sub_190836C5C((v108 > 1), v109 + 1, 1, v104);
      v110 = v167;
      v104 = v162;
      *v105 = v162;
    }

    *(v104 + 2) = v110;
    v111 = &v104[48 * v109];
    v113 = v198;
    v112 = v199;
    *(v111 + 4) = v94;
    *(v111 + 5) = v113;
    *(v111 + 6) = v112;
    *(v111 + 7) = 0;
    v114 = v194;
    *(v111 + 8) = v98;
    *(v111 + 9) = v114;
    (v184)(v200, 0);
    v61 = v185;
  }

  else
  {
    (v102)(v200, 0);
  }

  v36 = v192;
  v137 = v179;
  v39 = v182;
  v138 = v197;
  if (!v179[2] || (v139 = sub_190876340(v63, v65, v66), (v140 & 1) == 0))
  {
    sub_190B820FC(v63, v65, v66);
    sub_19083F1AC(v63, v65, v66);

    v40 = v61;
    (*v189)(v61, v39);
    goto LABEL_136;
  }

  v141 = v137[7];
  v184 = *(v177 + 72);
  v142 = *(v177 + 16);
  v143 = v169;
  v142(v169, v141 + v184 * v139, v39);
  if ((sub_190D51790() & 1) == 0)
  {
    sub_190B820FC(v63, v65, v66);
    sub_19083F1AC(v63, v65, v66);

    v153 = *v189;
    (*v189)(v143, v39);

    v153(v61, v39);
    v40 = v61;
    goto LABEL_135;
  }

  v142(v170, v61, v39);
  v144 = v201;
  v145 = swift_isUniquelyReferenced_nonNull_native();
  v200[0] = v144;
  v146 = sub_190876340(v63, v65, v66);
  v148 = v144[2];
  v149 = (v147 & 1) == 0;
  v129 = __OFADD__(v148, v149);
  v150 = v148 + v149;
  if (!v129)
  {
    v151 = v147;
    if (v144[3] >= v150)
    {
      if ((v145 & 1) == 0)
      {
        v163 = v146;
        sub_190B6A000();
        v146 = v163;
      }
    }

    else
    {
      sub_190B669E4(v150, v145);
      v146 = sub_190876340(v63, v65, v66);
      if ((v151 & 1) != (v152 & 1))
      {
        goto LABEL_146;
      }
    }

    v154 = v197;
    v155 = v200[0];
    v179 = v200[0];
    if (v151)
    {
      (*v173)(v200[0][7] + v146 * v184, v170, v39);
      sub_190B820FC(v63, v65, v66);
      sub_19083F1AC(v63, v65, v66);

      v156 = *v189;
      (*v189)(v169, v39);

      v40 = v185;
      v156(v185, v39);
    }

    else
    {
      v200[0][(v146 >> 6) + 8] |= 1 << v146;
      v157 = v155[6] + 24 * v146;
      *v157 = v63;
      *(v157 + 8) = v65;
      *(v157 + 16) = v66;
      (*v186)(v155[7] + v146 * v184, v170, v39);
      sub_190B820FC(v63, v65, v66);

      v158 = *v189;
      (*v189)(v169, v39);

      v40 = v185;
      v158(v185, v39);
      v159 = v155[2];
      v129 = __OFADD__(v159, 1);
      v160 = v159 + 1;
      if (v129)
      {
        goto LABEL_145;
      }

      v155[2] = v160;
    }

    v201 = v155;
LABEL_135:
    v36 = v192;
LABEL_136:
    v38 = v188;
    v43 = v195;
    goto LABEL_53;
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  result = sub_190D587C0();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for TapbackAttributionViewModel()
{
  result = qword_1EAD5E5A0;
  if (!qword_1EAD5E5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_190B81B2C(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__tapbackItems;
  *&v2[OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__tapbackItems] = MEMORY[0x1E69E7CC0];
  v6 = OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__selectedItem;
  v7 = type metadata accessor for AttributedTapbackItem();
  (*(*(v7 - 8) + 56))(&v2[v6], 1, 1, v7);
  v8 = &v2[OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__measuredContentSize];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v2[OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__maxViewWidth];
  *v9 = 0;
  v9[8] = 1;
  v2[OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__applyHoverEffect] = 1;
  v2[OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__itemPlatterMaskState] = 0;
  sub_190D51C50();
  *&v2[OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel_messagePartChatItem] = a1;
  v14 = a2;
  v10 = a1;
  sub_190D52690();
  sub_190B7EBCC(&v14);

  v11 = v14;

  *&v2[v5] = v11;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for TapbackAttributionViewModel();
  return objc_msgSendSuper2(&v13, sel_init);
}

void sub_190B81CB4()
{
  sub_190B81DDC();
  if (v0 <= 0x3F)
  {
    sub_190D51C60();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_190B81DDC()
{
  if (!qword_1EAD5E5B0)
  {
    type metadata accessor for AttributedTapbackItem();
    v0 = sub_190D58050();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD5E5B0);
    }
  }
}

unint64_t sub_190B81E4C()
{
  result = qword_1EAD56B18;
  if (!qword_1EAD56B18)
  {
    type metadata accessor for TapbackAttributionViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56B18);
  }

  return result;
}

__n128 sub_190B81EBC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__measuredContentSize) = result;
  return result;
}

uint64_t sub_190B81ED4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190B81F44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_190B81FD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedTapbackItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190B82034()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__tapbackItems) = *(v0 + 24);
  sub_190D52690();
}

void sub_190B82078()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__maxViewWidth;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

uint64_t sub_190B82098(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedTapbackItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_190B820FC(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_19083F1AC(a1, a2, a3);
  }
}

uint64_t sub_190B82128()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_190B82194(uint64_t result, uint64_t a2, unint64_t a3)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x193AF3B90](v6, a3);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);

        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);
      sub_190D50920();
      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_190D581C0();
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_190B822A8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = CKIsRunningInMacCatalyst() != 0;
      v7 = [objc_allocWithZone(CKConversationConfirmationAlertsDisplayConfiguration) init];
      [v7 setPresentationViewController_];
      [v7 setMessagesCount_];
      [v7 setAlertControllerStyle_];
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9 = swift_allocObject();
      *(v9 + 16) = a1;
      *(v9 + 24) = v8;
      aBlock[4] = sub_190B82714;
      aBlock[5] = v9;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_190840E6C;
      aBlock[3] = &block_descriptor_94;
      v10 = _Block_copy(aBlock);
      sub_190D52690();

      [v7 setAlertsCompletedBlock_];
      _Block_release(v10);
      v11 = [objc_allocWithZone(CKConversationConfirmationAlertsController) initWithConfiguration_];
      [v11 presentRecoverableMessageDeletionConfirmations];

      v3 = v11;
    }
  }
}

void sub_190B82494(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = CKIsRunningInMacCatalyst() != 0;
      v7 = [objc_allocWithZone(CKConversationConfirmationAlertsDisplayConfiguration) init];
      [v7 setPresentationViewController_];
      [v7 setMessagesCount_];
      [v7 setAlertControllerStyle_];
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9 = swift_allocObject();
      *(v9 + 16) = a1;
      *(v9 + 24) = v8;
      aBlock[4] = sub_190B844EC;
      aBlock[5] = v9;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_190840E6C;
      aBlock[3] = &block_descriptor_18_1;
      v10 = _Block_copy(aBlock);
      sub_190D52690();

      [v7 setAlertsCompletedBlock_];
      _Block_release(v10);
      v11 = [objc_allocWithZone(CKConversationConfirmationAlertsController) initWithConfiguration_];
      [v11 presentRecoverableMessageDeletionConfirmations];

      v3 = v11;
    }
  }
}

uint64_t sub_190B82680(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 32;
    swift_beginAccess();
    do
    {
      sub_19083B854(v2, v5);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        sub_190B8271C(v5);
      }

      result = __swift_destroy_boxed_opaque_existential_0(v5);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_190B8271C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E5E8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &aBlock[-1] - v3;
  v5 = _s14descr1F03EACB9V10AttachmentVMa(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = (*(v10 + 24))(v9, v10);
  v12 = [v11 messageGUID];

  if (v12)
  {
    sub_190D56F10();
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  sub_19083B854(a1, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E390);
  if (swift_dynamicCast())
  {

    (*(v6 + 56))(v4, 0, 1, v5);
    sub_190B843DC(v4, v8, _s14descr1F03EACB9V10AttachmentVMa);
    v15 = [v8[2] item];
    v16 = [v15 uniqueIdentifier];

    v17 = sub_190D56F10();
    v19 = v18;

    sub_190D52690();
    v20 = sub_190D56ED0();

    v21 = IMMessageGuidFromIMFileTransferGuid();

    if (!v21)
    {

      sub_190B84444(v8, _s14descr1F03EACB9V10AttachmentVMa);
      return;
    }

    sub_190D56F10();

    sub_190B84444(v8, _s14descr1F03EACB9V10AttachmentVMa);
  }

  else
  {
    (*(v6 + 56))(v4, 1, 1, v5);
    sub_190B82B70(v4);
    if (!v14)
    {
      return;
    }

    v17 = 0;
    v19 = 0;
  }

  v22 = [objc_opt_self() sharedInstance];
  if (v22)
  {
    v23 = v22;
    v24 = sub_190D56ED0();

    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_19083B854(a1, v30);
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = v17;
    v26[4] = v19;
    sub_19029058C(v30, (v26 + 5));
    aBlock[4] = sub_190B82E14;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190D22EF4;
    aBlock[3] = &block_descriptor_10;
    v27 = _Block_copy(aBlock);

    [v23 loadMessageItemWithGUID:v24 completionBlock:v27];
    _Block_release(v27);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_190B82B70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E5E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_190B82BD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a1)
    {
      v12 = *(Strong + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation);
      v13 = a1;
      v14 = [v12 chat];
      if (v14)
      {
        v15 = v14;
        if (a5)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C80);
          v16 = swift_allocObject();
          *(v16 + 16) = xmmword_190DD1D90;
          *(v16 + 32) = a4;
          *(v16 + 40) = a5;
          sub_190D52690();
          v17 = sub_190D57160();

          [v15 deleteChatItemsWithTransferGUIDs:v17 fromMessageItem:v13];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_190DD55F0;
          *(v18 + 32) = v13;
          sub_1902188FC(0, &qword_1EAD5B540);
          v19 = v13;
          v17 = sub_190D57160();

          [v15 deleteIMMessageItems_];
        }
      }
    }

    v20 = OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_contextMenuActionDelegates;
    v21 = swift_beginAccess();
    v22 = *&v11[v20];
    MEMORY[0x1EEE9AC00](v21);
    v23[2] = a6;
    sub_190D52690();
    sub_190B82194(sub_190B82E98, v23, v22);
  }
}

uint64_t sub_190B82E24(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(a2, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_190B82EB4(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1[2] && (v4 = a1[7], v5 = a1[8], __swift_project_boxed_opaque_existential_1(a1 + 4, v4), v6 = (*(v5 + 24))(v4, v5), v7 = [v6 messageGUID], v6, v7))
    {
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        [v8 detailsCoordinatorRequestedOpenToMessageGUID:v3 messageGUID:v7];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_190B82FBC(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1[2] && (v4 = a1[7], v5 = a1[8], __swift_project_boxed_opaque_existential_1(a1 + 4, v4), v6 = (*(v5 + 24))(v4, v5), v7 = [v6 messageGUID], v6, v7))
    {
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        [v8 detailsCoordinatorRequestedOpenToMessageGUID:v3 messageGUID:v7];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_190B830C4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v55 = Strong;
    v6 = MEMORY[0x1E69E7CC0];
    v58 = MEMORY[0x1E69E7CC0];
    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = 0;
      v9 = a1 + 32;
      v10 = 40;
      do
      {
        v11 = (v9 + 40 * v8);
        v12 = v8;
        while (1)
        {
          if (v12 >= v7)
          {
            __break(1u);
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

          v8 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_53;
          }

          sub_190B83D3C(v11, &v57);
          if (v57)
          {
            break;
          }

          ++v12;
          v11 += 5;
          if (v8 == v7)
          {
            goto LABEL_13;
          }
        }

        MEMORY[0x193AF29E0]();
        if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_190D571A0();
        }

        sub_190D571E0();
        v6 = v58;
      }

      while (v8 != v7);
    }

LABEL_13:
    v10 = v55;
    if (v6 >> 62)
    {
      goto LABEL_56;
    }

    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      while (1)
      {
        sub_1908A25A8(v6);
        v13 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
        v14 = sub_190D57160();

        v15 = [v13 initWithActivityItems:v14 applicationActivities:0];

        if (!a3)
        {
          goto LABEL_37;
        }

        v16 = swift_unknownObjectWeakLoadStrong();
        if (!v16)
        {
          goto LABEL_37;
        }

        v17 = v16;
        v18 = a3;
        v19 = [v17 toolbarItems];

        if (!v19)
        {
          break;
        }

        v54 = v18;
        sub_1902188FC(0, &qword_1EAD46690);
        a3 = sub_190D57180();

        v52 = v15;
        if (a3 >> 62)
        {
          v20 = sub_190D581C0();
          v21 = v18;
          if (!v20)
          {
LABEL_59:

            v10 = v55;
            v15 = v52;
            if (!IMSharedHelperDeviceIsiPad())
            {
              goto LABEL_60;
            }

            goto LABEL_38;
          }
        }

        else
        {
          v20 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v21 = v18;
          if (!v20)
          {
            goto LABEL_59;
          }
        }

        v10 = 0;
        v22 = &selRef_green_chevronImage;
        v53 = v6;
        while (1)
        {
          if ((a3 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x193AF3B90](v10, a3);
          }

          else
          {
            if (v10 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_55;
            }

            v23 = *(a3 + 8 * v10 + 32);
          }

          v24 = v23;
          v25 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          v26 = [v23 primaryAction];
          v56 = v24;
          if (v26)
          {
            v27 = v26;
            v28 = [v26 v22[360]];
          }

          else
          {
            v28 = 0;
          }

          v29 = v22;
          v30 = [v21 v22[360]];
          v31 = v30;
          if (v28)
          {
            v32 = sub_190D56F10();
            v34 = v33;
            if (v32 == sub_190D56F10() && v34 == v35)
            {

              v21 = v54;
LABEL_48:

              v15 = v52;
              v47 = [v52 popoverPresentationController];
              v10 = v55;
              if (v47)
              {
                v48 = v47;
                v49 = v56;
                [v48 setBarButtonItem_];
              }

              else
              {
              }

              goto LABEL_61;
            }

            v36 = sub_190D58760();

            v6 = v53;
            v21 = v54;
            if (v36)
            {
              goto LABEL_48;
            }
          }

          else
          {
          }

          ++v10;
          v22 = v29;
          if (v25 == v20)
          {
            goto LABEL_59;
          }
        }

LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        if (!sub_190D581C0())
        {
          goto LABEL_57;
        }
      }

LABEL_37:
      if (!IMSharedHelperDeviceIsiPad())
      {
LABEL_60:

        goto LABEL_61;
      }

LABEL_38:
      v37 = v15;
      v38 = [v37 popoverPresentationController];
      if (v38)
      {
        v39 = v38;
        v40 = swift_unknownObjectWeakLoadStrong();
        if (v40)
        {
          v41 = v40;
          v42 = [v40 view];

          if (!v42)
          {
            __break(1u);
            return;
          }

          v43 = [v42 window];

          v44 = [v43 rootViewController];
          v45 = [v44 view];
        }

        else
        {

          v45 = 0;
        }

        [v39 setSourceView_];
      }

      else
      {
      }

      v46 = [v37 popoverPresentationController];

      if (v46)
      {
        [v46 setPermittedArrowDirections_];
      }

LABEL_61:
      v50 = swift_unknownObjectWeakLoadStrong();
      if (v50)
      {
        v51 = v50;
        [v50 presentViewController:v15 animated:1 completion:0];
      }
    }

    else
    {
LABEL_57:
    }
  }
}

void sub_190B83700(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v55 = Strong;
    v6 = MEMORY[0x1E69E7CC0];
    v58 = MEMORY[0x1E69E7CC0];
    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = 0;
      v9 = a1 + 32;
      v10 = 40;
      do
      {
        v11 = (v9 + 40 * v8);
        v12 = v8;
        while (1)
        {
          if (v12 >= v7)
          {
            __break(1u);
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

          v8 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_53;
          }

          sub_190B83D3C(v11, &v57);
          if (v57)
          {
            break;
          }

          ++v12;
          v11 += 5;
          if (v8 == v7)
          {
            goto LABEL_13;
          }
        }

        MEMORY[0x193AF29E0]();
        if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_190D571A0();
        }

        sub_190D571E0();
        v6 = v58;
      }

      while (v8 != v7);
    }

LABEL_13:
    v10 = v55;
    if (v6 >> 62)
    {
      goto LABEL_56;
    }

    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      while (1)
      {
        sub_1908A25A8(v6);
        v13 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
        v14 = sub_190D57160();

        v15 = [v13 initWithActivityItems:v14 applicationActivities:0];

        if (!a3)
        {
          goto LABEL_37;
        }

        v16 = swift_unknownObjectWeakLoadStrong();
        if (!v16)
        {
          goto LABEL_37;
        }

        v17 = v16;
        v18 = a3;
        v19 = [v17 toolbarItems];

        if (!v19)
        {
          break;
        }

        v54 = v18;
        sub_1902188FC(0, &qword_1EAD46690);
        a3 = sub_190D57180();

        v52 = v15;
        if (a3 >> 62)
        {
          v20 = sub_190D581C0();
          v21 = v18;
          if (!v20)
          {
LABEL_59:

            v10 = v55;
            v15 = v52;
            if (!IMSharedHelperDeviceIsiPad())
            {
              goto LABEL_60;
            }

            goto LABEL_38;
          }
        }

        else
        {
          v20 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v21 = v18;
          if (!v20)
          {
            goto LABEL_59;
          }
        }

        v10 = 0;
        v22 = &selRef_green_chevronImage;
        v53 = v6;
        while (1)
        {
          if ((a3 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x193AF3B90](v10, a3);
          }

          else
          {
            if (v10 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_55;
            }

            v23 = *(a3 + 8 * v10 + 32);
          }

          v24 = v23;
          v25 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          v26 = [v23 primaryAction];
          v56 = v24;
          if (v26)
          {
            v27 = v26;
            v28 = [v26 v22[360]];
          }

          else
          {
            v28 = 0;
          }

          v29 = v22;
          v30 = [v21 v22[360]];
          v31 = v30;
          if (v28)
          {
            v32 = sub_190D56F10();
            v34 = v33;
            if (v32 == sub_190D56F10() && v34 == v35)
            {

              v21 = v54;
LABEL_48:

              v15 = v52;
              v47 = [v52 popoverPresentationController];
              v10 = v55;
              if (v47)
              {
                v48 = v47;
                v49 = v56;
                [v48 setBarButtonItem_];
              }

              else
              {
              }

              goto LABEL_61;
            }

            v36 = sub_190D58760();

            v6 = v53;
            v21 = v54;
            if (v36)
            {
              goto LABEL_48;
            }
          }

          else
          {
          }

          ++v10;
          v22 = v29;
          if (v25 == v20)
          {
            goto LABEL_59;
          }
        }

LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        if (!sub_190D581C0())
        {
          goto LABEL_57;
        }
      }

LABEL_37:
      if (!IMSharedHelperDeviceIsiPad())
      {
LABEL_60:

        goto LABEL_61;
      }

LABEL_38:
      v37 = v15;
      v38 = [v37 popoverPresentationController];
      if (v38)
      {
        v39 = v38;
        v40 = swift_unknownObjectWeakLoadStrong();
        if (v40)
        {
          v41 = v40;
          v42 = [v40 view];

          if (!v42)
          {
            __break(1u);
            return;
          }

          v43 = [v42 window];

          v44 = [v43 rootViewController];
          v45 = [v44 view];
        }

        else
        {

          v45 = 0;
        }

        [v39 setSourceView_];
      }

      else
      {
      }

      v46 = [v37 popoverPresentationController];

      if (v46)
      {
        [v46 setPermittedArrowDirections_];
      }

LABEL_61:
      v50 = swift_unknownObjectWeakLoadStrong();
      if (v50)
      {
        v51 = v50;
        [v50 presentViewController:v15 animated:1 completion:0];
      }
    }

    else
    {
LABEL_57:
    }
  }
}

void sub_190B83D3C(void *a1@<X0>, void *a2@<X8>)
{
  v46 = a2;
  v43 = _s4LinkVMa(0);
  v3 = MEMORY[0x1EEE9AC00](v43);
  v41 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v40 - v5;
  v6 = _s10WalletPassVMa(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - v9;
  v11 = _s8LocationVMa(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - v15;
  v17 = _s14descr1F03EACB9V10AttachmentVMa(0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v40 - v21;
  v45 = a1;
  sub_19083B854(a1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E390);
  if (swift_dynamicCast())
  {
    sub_190B843DC(v22, v20, _s14descr1F03EACB9V10AttachmentVMa);
    v23 = [objc_allocWithZone(CKAttachmentsSearchController) init];
    v24 = [v23 _activityItemProviderForResult_];

    v25 = v20;
    v26 = _s14descr1F03EACB9V10AttachmentVMa;
  }

  else if (swift_dynamicCast())
  {
    sub_190B843DC(v16, v14, _s8LocationVMa);
    v27 = [objc_allocWithZone(CKLocationSearchController) init];
    v24 = [v27 _activityItemProviderForResult_];

    v25 = v14;
    v26 = _s8LocationVMa;
  }

  else if (swift_dynamicCast())
  {
    v28 = v44;
    sub_190B843DC(v10, v44, _s10WalletPassVMa);
    v29 = [objc_allocWithZone(CKWalletItemSearchController) init];
    v30 = *(v28 + 16);
    v31 = *(v28 + *(v6 + 36));
    if (v31)
    {
      v32 = *(v31 + 16);
    }

    else
    {
      v32 = 0;
    }

    v24 = [v29 _activityItemProviderForResult_thumbnail_];

    v26 = _s10WalletPassVMa;
    v25 = v28;
  }

  else
  {
    v33 = v42;
    if (!swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v47);
LABEL_14:
      v36 = [objc_allocWithZone(CKLinkSearchController) init];
      v37 = v45[3];
      v38 = v45[4];
      __swift_project_boxed_opaque_existential_1(v45, v37);
      v39 = (*(v38 + 24))(v37, v38);
      v24 = [v36 _activityItemProviderForResult_];

      goto LABEL_15;
    }

    v34 = v41;
    sub_190B843DC(v33, v41, _s4LinkVMa);
    v35 = [objc_allocWithZone(CKLinkSearchController) init];
    v24 = [v35 _activityItemProviderForResult_];

    v25 = v34;
    v26 = _s4LinkVMa;
  }

  sub_190B84444(v25, v26);
  __swift_destroy_boxed_opaque_existential_0(v47);
  if (!v24)
  {
    goto LABEL_14;
  }

LABEL_15:
  *v46 = v24;
}

void sub_190B84270(uint64_t a1)
{
  v12 = MEMORY[0x1E69E7CC0];
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    do
    {
      sub_19083B854(v2, v9);
      v3 = v10;
      v4 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      v5 = (*(v4 + 80))(v3, v4);
      v6 = __swift_destroy_boxed_opaque_existential_0(v9);
      if (v5)
      {
        MEMORY[0x193AF29E0](v6);
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_190D571A0();
        }

        sub_190D571E0();
      }

      v2 += 40;
      --v1;
    }

    while (v1);
  }

  v7 = [objc_opt_self() generalPasteboard];
  sub_1902188FC(0, &qword_1EAD55968);
  v8 = sub_190D57160();

  [v7 setItemProviders_];
}

uint64_t sub_190B843DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_190B84444(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_2Tm_3()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *SendMenuViewControllerContentProvider.networkMonitor.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_190B84520(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v54 = sub_190D52FC0();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_190D52F80();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - v12;
  v14 = sub_190D52FB0();
  v56 = *(v14 - 8);
  v57 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D52FA0();
  sub_190D52F70();
  v60 = v16;
  v17 = sub_190D52F90();
  v18 = sub_190D57940();
  if (sub_190D58020())
  {
    v19 = a1;
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = sub_190D52F60();
    _os_signpost_emit_with_name_impl(&dword_19020E000, v17, v18, v21, "SendMenuSort", "", v20, 2u);
    v22 = v20;
    a1 = v19;
    MEMORY[0x193AF7A40](v22, -1, -1);
  }

  (*(v5 + 16))(v10, v13, v4);
  sub_190D52FF0();
  swift_allocObject();
  v23 = sub_190D52FE0();
  v24 = *(v5 + 8);
  v24(v13, v4);
  if (qword_1EAD45B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_190D50920();
  v25 = sub_190BC8A24(v58);

  v26 = sub_190D52F90();
  sub_190D52FD0();
  v27 = sub_190D57930();
  v28 = sub_190D58020();
  v58 = v25;
  v59 = v23;
  if (v28)
  {
    sub_190D50920();
    v29 = v52;
    sub_190D53000();

    v30 = v53;
    v31 = v54;
    if ((*(v53 + 88))(v29, v54) == *MEMORY[0x1E69E93E8])
    {
      v32 = a1;
      v33 = "[Error] Interval already ended";
    }

    else
    {
      v34 = v29;
      v32 = a1;
      (*(v30 + 8))(v34, v31);
      v33 = "";
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = sub_190D52F60();
    _os_signpost_emit_with_name_impl(&dword_19020E000, v26, v27, v36, "SendMenuSort", v33, v35, 2u);
    MEMORY[0x193AF7A40](v35, -1, -1);
    a1 = v32;
    v25 = v58;
  }

  v24(v7, v4);
  if (a1)
  {
    *&v64[0] = a1;
    result = sub_190D58790();
    __break(1u);
  }

  else
  {
    v37 = *(v25 + 24);
    v38 = *(v37 + 16);
    if (v38)
    {
      v65 = MEMORY[0x1E69E7CC0];
      sub_190D52690();
      sub_19082DF84(0, v38, 0);
      v39 = v65;
      v40 = *(v55 + 16);
      v55 = v37;
      v41 = (v37 + 40);
      do
      {
        v43 = *(v41 - 1);
        v42 = *v41;
        sub_190D52690();
        sub_190B84BE0(v43, v42, &v61);
        if (v40 && [v40 attachmentPolicy] == 1)
        {
          v45 = v62;
          v44 = v63;
          __swift_project_boxed_opaque_existential_1(&v61, v62);
          v46 = (*(v44 + 72))(v45, v44);
        }

        else
        {
          v46 = 1;
        }

        v47 = v62;
        v48 = v63;
        __swift_mutable_project_boxed_opaque_existential_1(&v61, v62);
        (*(v48 + 88))(v46 & 1, v47, v48);

        sub_19029058C(&v61, v64);
        v65 = v39;
        v50 = *(v39 + 16);
        v49 = *(v39 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_19082DF84((v49 > 1), v50 + 1, 1);
          v39 = v65;
        }

        *(v39 + 16) = v50 + 1;
        sub_19029058C(v64, v39 + 40 * v50 + 32);
        v41 += 2;
        --v38;
      }

      while (v38);
      (*(v56 + 8))(v60, v57);
    }

    else
    {

      (*(v56 + 8))(v60, v57);
      return MEMORY[0x1E69E7CC0];
    }

    return v39;
  }

  return result;
}

void sub_190B84BE0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (qword_1EAD45A08 != -1)
  {
    swift_once();
  }

  v6 = qword_1EAD45A10 == a1 && *algn_1EAD45A18 == a2;
  if (v6 || (sub_190D58760() & 1) != 0)
  {
    v7 = type metadata accessor for CameraSendMenuListItem();
    swift_allocObject();
    sub_190A43454();
    v9 = &protocol witness table for CameraSendMenuListItem;
LABEL_9:
    a3[3] = v7;
    a3[4] = v9;
    *a3 = v8;
    return;
  }

  if (qword_1EAD459A0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EAD459A8 == a1 && qword_1EAD459B0 == a2;
  if (v10 || (sub_190D58760() & 1) != 0)
  {
    v7 = type metadata accessor for PhotosSendMenuListItem();
    swift_allocObject();
    sub_190A43D1C();
    v9 = &protocol witness table for PhotosSendMenuListItem;
    goto LABEL_9;
  }

  if (qword_1EAD45828 != -1)
  {
    swift_once();
  }

  if (qword_1EAD45830 == a1 && *algn_1EAD45838 == a2 || (sub_190D58760() & 1) != 0)
  {
    v7 = type metadata accessor for StickersSendMenuListItem();
    swift_allocObject();
    v8 = sub_190A4A860();
    v9 = &protocol witness table for StickersSendMenuListItem;
    goto LABEL_9;
  }

  if (qword_1EAD45890 != -1)
  {
    swift_once();
  }

  if (qword_1EAD45898 == a1 && qword_1EAD458A0 == a2 || (sub_190D58760() & 1) != 0)
  {
    v7 = type metadata accessor for ApplePaySendMenuListItem();
    swift_allocObject();
    v8 = sub_190A4A860();
    v9 = &protocol witness table for ApplePaySendMenuListItem;
    goto LABEL_9;
  }

  if (qword_1EAD45AF8 != -1)
  {
    swift_once();
  }

  if (qword_1EAD45B00 == a1 && *algn_1EAD45B08 == a2 || (sub_190D58760() & 1) != 0)
  {
    v7 = type metadata accessor for AudioSendMenuListItem();
    swift_allocObject();
    sub_190A44ABC();
    v9 = &protocol witness table for AudioSendMenuListItem;
    goto LABEL_9;
  }

  if (qword_1EAD45860 != -1)
  {
    swift_once();
  }

  if (qword_1EAD45868 == a1 && qword_1EAD45870 == a2 || (sub_190D58760() & 1) != 0)
  {
    v7 = type metadata accessor for LocationSendMenuListItem();
    swift_allocObject();
    v8 = sub_190A4A860();
    v9 = &protocol witness table for LocationSendMenuListItem;
    goto LABEL_9;
  }

  if (qword_1EAD458A8 != -1)
  {
    swift_once();
  }

  if (qword_1EAD458B0 == a1 && *algn_1EAD458B8 == a2 || (sub_190D58760() & 1) != 0)
  {
    v7 = type metadata accessor for AppStoreSendMenuListItem();
    swift_allocObject();
    sub_190A456E0();
    v9 = &protocol witness table for AppStoreSendMenuListItem;
    goto LABEL_9;
  }

  if (qword_1EAD45920 != -1)
  {
    swift_once();
  }

  if (qword_1EAD45928 == a1 && qword_1EAD45930 == a2 || (sub_190D58760() & 1) != 0)
  {
    v7 = type metadata accessor for CheckInSendMenuListItem();
    swift_allocObject();
    v8 = sub_190A4A860();
    v9 = &protocol witness table for CheckInSendMenuListItem;
    goto LABEL_9;
  }

  if (qword_1EAD459D8 != -1)
  {
    swift_once();
  }

  v12 = qword_1EAD459E0;
  v11 = *algn_1EAD459E8;
  if (qword_1EAD459E0 == a1 && *algn_1EAD459E8 == a2 || (sub_190D58760() & 1) != 0)
  {
    v13 = type metadata accessor for MemojiSendMenuListItem();
LABEL_60:
    v14 = v13;
    *(swift_allocObject() + 104) = 0;
    v15 = DefaultSendMenuListItem.init(extensionIdentifier:)(v12, v11);
    a3[3] = v14;
    a3[4] = &protocol witness table for DefaultSendMenuListItem;
    *a3 = v15;
    goto LABEL_61;
  }

  if (qword_1EAD45560 != -1)
  {
    swift_once();
  }

  v12 = qword_1EAD45568;
  v11 = *algn_1EAD45570;
  if (qword_1EAD45568 == a1 && *algn_1EAD45570 == a2 || (sub_190D58760() & 1) != 0)
  {
    v13 = type metadata accessor for DigitalTouchSendMenuListItem();
    goto LABEL_60;
  }

  if (qword_1EAD45508 != -1)
  {
    swift_once();
  }

  v12 = qword_1EAD45510;
  v11 = qword_1EAD45518[0];
  if (qword_1EAD45510 == a1 && qword_1EAD45518[0] == a2 || (sub_190D58760() & 1) != 0)
  {
    v13 = type metadata accessor for HashtagImagesSendMenuListItem();
    goto LABEL_60;
  }

  if (qword_1EAD45A30 != -1)
  {
    swift_once();
  }

  v12 = qword_1EAD45A38;
  v11 = qword_1EAD45A40;
  if (qword_1EAD45A38 == a1 && qword_1EAD45A40 == a2 || (sub_190D58760() & 1) != 0)
  {
    v13 = type metadata accessor for MusicSendMenuListItem();
    goto LABEL_60;
  }

  if (qword_1EAD456B8 != -1)
  {
    swift_once();
  }

  v12 = qword_1EAD456C0;
  v11 = qword_1EAD456C8[0];
  if (qword_1EAD456C0 == a1 && qword_1EAD456C8[0] == a2 || (sub_190D58760() & 1) != 0)
  {
    v13 = type metadata accessor for TapToRadarSendMenuListItem();
    goto LABEL_60;
  }

  if (qword_1EAD46160 != -1)
  {
    swift_once();
  }

  if (qword_1EAD46168 == a1 && *algn_1EAD46170 == a2 || (sub_190D58760() & 1) != 0)
  {
    v7 = type metadata accessor for SendLaterSendMenuListItem();
    swift_allocObject();
    v8 = sub_190A45CC0();
    v9 = &protocol witness table for SendLaterSendMenuListItem;
    goto LABEL_9;
  }

  if (qword_1EAD453B8 != -1)
  {
    swift_once();
  }

  if (qword_1EAD453C0 == a1 && *algn_1EAD453C8 == a2 || (sub_190D58760() & 1) != 0)
  {
    v7 = type metadata accessor for GenerativePlaygroundSendMenuListItem();
    swift_allocObject();
    v8 = sub_190A47218();
    v9 = &protocol witness table for GenerativePlaygroundSendMenuListItem;
    goto LABEL_9;
  }

  if (qword_1EAD45840 != -1)
  {
    swift_once();
  }

  v12 = qword_1EAD45848;
  v11 = *algn_1EAD45850;
  if (qword_1EAD45848 == a1 && *algn_1EAD45850 == a2 || (sub_190D58760() & 1) != 0)
  {
    v13 = type metadata accessor for PollsAppSendMenuListItem();
    goto LABEL_60;
  }

  if (qword_1EAD458D8 != -1)
  {
    swift_once();
  }

  if (qword_1EAD458E0 == a1 && *algn_1EAD458E8 == a2 || (sub_190D58760() & 1) != 0)
  {
    v7 = type metadata accessor for GenmojiSendMenuListItem();
    swift_allocObject();
    v8 = sub_190A4A860();
    v9 = &protocol witness table for GenmojiSendMenuListItem;
    goto LABEL_9;
  }

  v16 = type metadata accessor for DefaultSendMenuListItem();
  swift_allocObject();
  v17 = DefaultSendMenuListItem.init(extensionIdentifier:)(a1, a2);
  a3[3] = v16;
  a3[4] = &protocol witness table for DefaultSendMenuListItem;
  *a3 = v17;
LABEL_61:

  sub_190D52690();
}

uint64_t SendMenuViewControllerContentProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_190B855C4()
{
  v1 = *(*v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_190B85614(uint64_t a1)
{
  type metadata accessor for SendMenuSortOrder();
  v2 = swift_allocObject();
  *(v2 + 16) = 263;
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  v4 = qword_1EAD45B10;
  sub_190D52690();
  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = off_1EAD45B18;
  swift_beginAccess();
  v6 = v5[3];
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 8);
  swift_unknownObjectRetain();
  v8(v2, ObjectType, v6);

  return swift_unknownObjectRelease();
}

uint64_t sub_190B857D4()
{
  result = sub_190D56ED0();
  qword_1EAD9E340 = result;
  return result;
}

uint64_t sub_190B8580C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = type metadata accessor for ClarityUITranscriptView(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v5;
  v39 = type metadata accessor for ClarityUITranscriptView;
  v35 = v6;
  sub_190B89548(v1, v6, type metadata accessor for ClarityUITranscriptView);
  v41 = *(v4 + 80);
  v7 = (v41 + 16) & ~v41;
  v36 = v7;
  v8 = swift_allocObject();
  v34[1] = v8;
  v40 = type metadata accessor for ClarityUITranscriptView;
  sub_190B89AC0(v6, v8 + v7, type metadata accessor for ClarityUITranscriptView);
  v46 = sub_190B895B0;
  v47 = v8;
  v9 = v2[3];
  v50 = v2[2];
  v51[0] = v9;
  *(v51 + 9) = *(v2 + 57);
  v10 = v2[1];
  v48 = *v2;
  v49 = v10;
  *&v55[0] = sub_19091D9F4();
  *(&v55[0] + 1) = v11;
  sub_19081E484();
  v12 = sub_190D555F0();
  v14 = v13;
  v34[0] = v15;
  v17 = v16;
  v18 = v2[1];
  v19 = v2[3];
  v53 = v2[2];
  v54[0] = v19;
  *(v54 + 9) = *(v2 + 57);
  v20 = v2[1];
  v52[0] = *v2;
  v52[1] = v20;
  v21 = v2[3];
  v44 = v53;
  v45[0] = v21;
  *(v45 + 9) = *(v2 + 57);
  v42 = v52[0];
  v43 = v18;
  sub_1909B8804(v52, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E688);
  sub_190233640(&qword_1EAD5E690, &qword_1EAD5E688);
  sub_190B0ED0C();
  v22 = v37;
  sub_190D55890();
  sub_19081E474(v12, v14, v17 & 1);

  v55[2] = v44;
  v56[0] = v45[0];
  *(v56 + 9) = *(v45 + 9);
  v55[0] = v42;
  v55[1] = v43;
  sub_190B89630(v55);

  v23 = v35;
  v24 = v39;
  sub_190B89548(v2, v35, v39);
  v25 = v36;
  v26 = swift_allocObject();
  sub_190B89AC0(v23, v26 + v25, v40);
  v27 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E698) + 36));
  *v27 = sub_190B89940;
  v27[1] = v26;
  v27[2] = 0;
  v27[3] = 0;
  v28 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E6A0) + 36));
  *v28 = 0;
  v28[1] = 0;
  v28[2] = sub_190B870E8;
  v28[3] = 0;
  v29 = [objc_opt_self() defaultCenter];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E6A8);
  sub_190D579C0();

  sub_190B89548(v2, v23, v24);
  v31 = swift_allocObject();
  result = sub_190B89AC0(v23, v31 + v25, v40);
  v33 = (v22 + *(v30 + 56));
  *v33 = sub_190B89958;
  v33[1] = v31;
  return result;
}

uint64_t sub_190B85C34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E6C0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E6C8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v17 - v8);
  v10 = type metadata accessor for ClarityUITranscriptView(0);
  v19 = *(a2 + *(v10 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E6B0);
  sub_190D55FD0();
  v11 = v18;
  if (v18)
  {
    v12 = a2 + *(v10 + 44);
    v13 = *v12;
    v14 = *(v12 + 8);
    LOBYTE(v19) = v13;
    *(&v19 + 1) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190);
    sub_190D55FD0();
    if (v18 == 1)
    {
      *v9 = v11;
      swift_storeEnumTagMultiPayload();
      sub_190B899C8();
      sub_190233640(&qword_1EAD5E6E0, &qword_1EAD5E6C0);
      return sub_190D54C50();
    }
  }

  *v6 = sub_190D54AC0();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E6D0);
  sub_190B85EE8(a2, a1, &v6[*(v16 + 44)]);
  sub_19022FD14(v6, v9, &qword_1EAD5E6C0);
  swift_storeEnumTagMultiPayload();
  sub_190B899C8();
  sub_190233640(&qword_1EAD5E6E0, &qword_1EAD5E6C0);
  sub_190D54C50();
  return sub_19022EEA4(v6, &qword_1EAD5E6C0);
}

id sub_190B85EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v119 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E6E8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v103 = &v99 - v6;
  v7 = type metadata accessor for ClarityUITranscriptView(0);
  v109 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v102 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v110 = &v99 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v108 = &v99 - v12;
  v112 = type metadata accessor for ClarityUIEntryView(0);
  MEMORY[0x1EEE9AC00](v112);
  v113 = (&v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E6F0);
  v14 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v101 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v100 = &v99 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E6F8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v117 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v121 = &v99 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56AC8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v115 = &v99 - v23;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E700);
  MEMORY[0x1EEE9AC00](v114);
  v25 = &v99 - v24;
  *&v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E708);
  v26 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v28 = &v99 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E710);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v118 = &v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v99 - v32;
  v124 = *(a1 + *(v7 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E6B0);
  sub_190D55FD0();
  v111 = a2;
  v107 = v7;
  if (v127)
  {
    v34 = v127;
    sub_190D53D20();
    v36 = v35;
    v37 = a1 + *(v7 + 28);
    v38 = *v37;
    v39 = *(v37 + 16);
    v127 = v38;
    v128 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A928);
    sub_190D55FF0();
    v105 = v124;
    v104 = v125;
    v106 = v28;
    v40 = v126;
    type metadata accessor for ChatControllerWrapper(0);
    v116 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);
    sub_190D55FF0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E660);
    sub_190D55FF0();
    *v25 = v34;
    *(v25 + 1) = v36;
    *(v25 + 1) = v105;
    *(v25 + 4) = v104;
    *(v25 + 5) = v40;
    v41 = sub_190D552B0();
    v42 = v115;
    v25[*(v114 + 36)] = v41;
    v14 = v116;
    sub_190D55FD0();
    sub_190B89B28();
    v43 = v106;
    sub_190D55AF0();

    sub_19022EEA4(v42, &qword_1EAD56AC8);
    sub_19022EEA4(v25, &qword_1EAD5E700);
    v44 = v120;
    (*(v26 + 32))(v33, v43, v120);
    v45 = 0;
    v46 = v44;
  }

  else
  {
    v45 = 1;
    v46 = v120;
  }

  v47 = 1;
  (*(v26 + 56))(v33, v45, 1, v46);
  if ((*(a1 + 24) & 1) != 0 || ![objc_opt_self() isMessagesTheDefaultTextApp])
  {
    goto LABEL_10;
  }

  v115 = v33;
  v116 = v14;
  v48 = a1 + *(v107 + 28);
  v49 = *v48;
  v50 = *(v48 + 16);
  v127 = v49;
  v128 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A928);
  sub_190D55FF0();
  v120 = v124;
  v51 = v125;
  v52 = v126;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);
  v53 = v108;
  sub_190D55FF0();
  v54 = v110;
  sub_190B89548(a1, v110, type metadata accessor for ClarityUITranscriptView);
  v55 = (*(v109 + 80) + 16) & ~*(v109 + 80);
  v109 = *(v109 + 80);
  v56 = swift_allocObject();
  v114 = v55;
  sub_190B89AC0(v54, v56 + v55, type metadata accessor for ClarityUITranscriptView);
  v57 = v113;
  *v113 = v120;
  *(v57 + 16) = v51;
  *(v57 + 24) = v52;
  v58 = v112;
  sub_19081E40C(v53, v57 + *(v112 + 20), &qword_1EAD576A0);
  v59 = v58[6];
  v60 = sub_190D53D60();
  (*(*(v60 - 8) + 16))(v57 + v59, v111, v60);
  v61 = (v57 + v58[7]);
  *v61 = sub_190B89A1C;
  v61[1] = v56;
  v62 = v57 + v58[8];
  LOBYTE(v127) = 0;
  sub_190D55FC0();
  v63 = *(&v124 + 1);
  *v62 = v124;
  *(v62 + 8) = v63;
  v64 = v57 + v58[9];
  LOBYTE(v127) = 0;
  sub_190D55FC0();
  v65 = *(&v124 + 1);
  *v64 = v124;
  *(v64 + 8) = v65;
  v66 = v57 + v58[10];
  *v66 = sub_190D539F0() & 1;
  *(v66 + 8) = v67;
  *(v66 + 16) = v68 & 1;
  v69 = (v57 + v58[11]);
  *&v127 = 0;
  sub_190D55FC0();
  v70 = *(&v124 + 1);
  *v69 = v124;
  v69[1] = v70;
  v71 = v57 + v58[12];
  LOBYTE(v127) = 0;
  sub_190D55FC0();
  v72 = *(&v124 + 1);
  *v71 = v124;
  *(v71 + 8) = v72;
  v73 = v58[13];
  v74 = objc_opt_self();
  v75 = [v74 currentDevice];
  v76 = [v75 userInterfaceIdiom];

  *(v57 + v73) = v76 == 1;
  v77 = v58[14];
  sub_190D54280();
  *(v57 + v77) = v78;
  v79 = v58[15];
  sub_190D54280();
  *(v57 + v79) = v80 * 0.5;
  v81 = [v74 currentDevice];
  v82 = [v81 userInterfaceIdiom];

  v83 = 114.0;
  if (v82 == 1)
  {
    v83 = 143.0;
  }

  *(v57 + v58[16]) = v83;
  result = CKFrameworkBundle();
  if (result)
  {
    v85 = result;
    sub_190D51210();

    v86 = v102;
    sub_190B89548(a1, v102, type metadata accessor for ClarityUITranscriptView);
    v87 = v114;
    v88 = swift_allocObject();
    sub_190B89AC0(v86, v88 + v87, type metadata accessor for ClarityUITranscriptView);
    v89 = v103;
    sub_190D55220();
    v90 = sub_190D55230();
    (*(*(v90 - 8) + 56))(v89, 0, 1, v90);
    v91 = v101;
    sub_19081E40C(v89, &v101[*(v122 + 36)], &qword_1EAD5E6E8);
    sub_190B89AC0(v57, v91, type metadata accessor for ClarityUIEntryView);
    v92 = v91;
    v93 = v100;
    sub_19081E40C(v92, v100, &qword_1EAD5E6F0);
    sub_19081E40C(v93, v121, &qword_1EAD5E6F0);
    v47 = 0;
    v33 = v115;
    v14 = v116;
LABEL_10:
    v94 = v121;
    (*(v14 + 56))(v121, v47, 1, v122);
    v95 = v118;
    sub_19022FD14(v33, v118, &qword_1EAD5E710);
    v96 = v117;
    sub_19022FD14(v94, v117, &qword_1EAD5E6F8);
    v97 = v119;
    sub_19022FD14(v95, v119, &qword_1EAD5E710);
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E718);
    sub_19022FD14(v96, v97 + *(v98 + 48), &qword_1EAD5E6F8);
    sub_19022EEA4(v94, &qword_1EAD5E6F8);
    sub_19022EEA4(v33, &qword_1EAD5E710);
    sub_19022EEA4(v96, &qword_1EAD5E6F8);
    return sub_19022EEA4(v95, &qword_1EAD5E710);
  }

  __break(1u);
  return result;
}

uint64_t sub_190B86C00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - v4;
  v6 = [objc_opt_self() defaultCenter];
  if (qword_1EAD51E58 != -1)
  {
    swift_once();
  }

  [v6 postNotificationName:qword_1EAD9E340 object:0];

  v7 = sub_190D515F0();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  type metadata accessor for ClarityUITranscriptView(0);
  sub_19022FD14(v5, v2, &unk_1EAD55F20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);
  sub_190D55FE0();
  return sub_19022EEA4(v5, &unk_1EAD55F20);
}

uint64_t sub_190B86DBC()
{
  v0 = [objc_opt_self() defaultCenter];
  if (qword_1EAD51E58 != -1)
  {
    swift_once();
  }

  [v0 postNotificationName:qword_1EAD9E340 object:0];

  type metadata accessor for ClarityUITranscriptView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A928);
  return sub_190D55FE0();
}

void sub_190B86EA4(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E6B8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = a1[3];
  v25[2] = a1[2];
  v26[0] = v5;
  *(v26 + 9) = *(a1 + 57);
  v6 = a1[1];
  v25[0] = *a1;
  v25[1] = v6;
  v7 = sub_190C40F28(v25);
  v8 = type metadata accessor for ClarityUITranscriptView(0);
  v9 = (a1 + *(v8 + 40));
  v11 = v9[1];
  v23 = *v9;
  v10 = v23;
  v24 = v11;
  v22 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E6B0);
  sub_190D55FE0();
  v23 = v10;
  v24 = v11;
  sub_190D55FD0();
  v12 = v22;
  if (v22)
  {
    v13 = [v22 chat];

    if (v13)
    {
      v14 = [v13 allowedByScreenTime];
      v15 = a1 + *(v8 + 44);
      v16 = *(v15 + 1);
      LOBYTE(v23) = *v15;
      v24 = v16;
      LOBYTE(v22) = v14 ^ 1;
      sub_190D50920();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190);
      sub_190D55FE0();
    }
  }

  v17 = objc_opt_self();
  sub_1909CD03C(v4);
  v18 = sub_190D540E0();
  (*(*(v18 - 8) + 56))(v4, 0, 1, v18);
  v19 = sub_190D579F0();
  v20 = [objc_allocWithZone(MEMORY[0x1E69DC8C0]) initWithContentSizeCategory_];

  [v17 overrideSystemWithPreference_];
}

id sub_190B870E8()
{
  v0 = objc_opt_self();

  return [v0 resetSystemPreferenceOverride];
}

void sub_190B87120(uint64_t a1, uint64_t a2)
{
  sub_190D50F90();
  if (v9)
  {
    sub_1902188FC(0, &qword_1EAD44EE0);
    if (swift_dynamicCast())
    {
      v3 = type metadata accessor for ClarityUITranscriptView(0);
      v8 = *(a2 + *(v3 + 40));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E6B0);
      sub_190D55FD0();
      if (v7 && (v4 = [v7 chat], v7, v4))
      {
        sub_1902188FC(0, &qword_1EAD46500);
        if (sub_190D57D90())
        {
          [v7 allowedByScreenTime];
          v5 = a2 + *(v3 + 44);
          v6 = *(v5 + 8);
          LOBYTE(v8) = *v5;
          *(&v8 + 1) = v6;
          sub_190D50920();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190);
          sub_190D55FE0();
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_19022EEA4(&v8, &unk_1EAD551C0);
  }
}

uint64_t sub_190B872CC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56AC8);
  MEMORY[0x1EEE9AC00](v30);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  v17 = a1[3];
  *(a3 + 32) = a1[2];
  *(a3 + 48) = v17;
  *(a3 + 57) = *(a1 + 57);
  v18 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v18;
  *(a3 + 80) = a2;
  v19 = type metadata accessor for ClarityUITranscriptView(0);
  v20 = v19[6];
  *(a3 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  swift_storeEnumTagMultiPayload();
  v21 = a3 + v19[7];
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_190D55FC0();
  v22 = v34;
  *v21 = v33;
  *(v21 + 16) = v22;
  v23 = sub_190D515F0();
  (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
  sub_19022FD14(v16, v13, &unk_1EAD55F20);
  sub_190D55FC0();
  sub_19022EEA4(v16, &unk_1EAD55F20);
  v24 = sub_190D55200();
  (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
  sub_19022FD14(v10, v7, &qword_1EAD56AC8);
  sub_190D55FC0();
  sub_19022EEA4(v10, &qword_1EAD56AC8);
  v25 = v19[10];
  v31 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E658);
  sub_190D55FC0();
  *(a3 + v25) = v33;
  v26 = a3 + v19[11];
  LOBYTE(v31) = 0;
  result = sub_190D55FC0();
  v28 = *(&v33 + 1);
  *v26 = v33;
  *(v26 + 8) = v28;
  return result;
}

void sub_190B87610(int a1, id a2)
{
  v2 = a2;
  v3 = [a2 recipients];
  v4 = sub_190D57180();

  v5 = *(v4 + 16);
  if (v5)
  {
    v30 = v2;
    v6 = 0;
    v7 = v4 + 32;
    v8 = MEMORY[0x1E69E7CC0];
    v9 = &qword_1EAD44E80;
    v10 = off_1E72E4DE8;
    while (v6 < *(v4 + 16))
    {
      sub_19021834C(v7, v33);
      sub_19021834C(v33, v32);
      sub_1902188FC(0, v9);
      if (swift_dynamicCast())
      {
        v11 = v8;
        v12 = v4;
        v13 = v10;
        v14 = v9;
        v15 = [v31 defaultIMHandle];

        if (!v15)
        {
          goto LABEL_17;
        }

        v16 = [v15 ID];

        v17 = sub_190D56F10();
        v19 = v18;

        __swift_destroy_boxed_opaque_existential_0(v33);
        v20 = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1908354D4(0, *(v11 + 2) + 1, 1, v11);
        }

        v22 = *(v20 + 2);
        v21 = *(v20 + 3);
        v23 = v20;
        if (v22 >= v21 >> 1)
        {
          v23 = sub_1908354D4((v21 > 1), v22 + 1, 1, v20);
        }

        *(v23 + 2) = v22 + 1;
        v8 = v23;
        v24 = &v23[16 * v22];
        *(v24 + 4) = v17;
        *(v24 + 5) = v19;
        v9 = v14;
        v10 = v13;
        v4 = v12;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v33);
      }

      ++v6;
      v7 += 32;
      if (v5 == v6)
      {

        v2 = v30;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {

LABEL_15:
    v25 = [v2 contactNameByHandle];
    sub_190D56D90();

    v26 = sub_190D56ED0();
    v27 = sub_190D57160();

    v28 = sub_190D56D60();

    v29 = [objc_opt_self() lockoutViewControllerWithBundleIdentifier:v26 contactsHandles:v27 contactNameByHandle:v28 type:3];

    [v29 removeCommunicationLimitsBlockingViewBackground];
  }
}

uint64_t sub_190B87940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190B89BE4();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_190B879A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190B89BE4();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_190B87A08()
{
  sub_190B89BE4();
  sub_190D55130();
  __break(1u);
}

id sub_190B87A30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E640);
  sub_190D55210();
  v3[OBJC_IVAR____TtCV7ChatKitP33_093978188F67B65A90613E40AA80756421ChatControllerWrapper11Coordinator_shouldSuppressBindingUpdates] = 1;

  v0 = [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
  sub_190B87AF8(v0);

  sub_190D55210();
  v3[OBJC_IVAR____TtCV7ChatKitP33_093978188F67B65A90613E40AA80756421ChatControllerWrapper11Coordinator_shouldSuppressBindingUpdates] = 0;

  return v0;
}

void sub_190B87AF8(void *a1)
{
  v3 = [objc_allocWithZone(type metadata accessor for ClarityUIChatController()) initWithConversation_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E640);
  sub_190D55210();
  *&v3[OBJC_IVAR____TtC7ChatKit23ClarityUIChatController_clarityUIDelegate + 8] = &off_1F041B730;
  swift_unknownObjectWeakAssign();

  v4 = *(v1 + 8);
  v5 = *&v3[OBJC_IVAR____TtC7ChatKit23ClarityUIChatController_navigationBarTopInset];
  *&v3[OBJC_IVAR____TtC7ChatKit23ClarityUIChatController_navigationBarTopInset] = v4;
  if (v5 != v4)
  {
    [v3 updateScrollGeometryWithoutAnimationForReason_];
  }

  v6 = v3;
  [a1 addChildViewController_];
  v7 = [a1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  v9 = [v6 view];
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9;
  [v8 addSubview_];

  v11 = [v6 view];
  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = [a1 view];
  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v11 setFrame_];
  v22 = [v6 view];

  if (v22)
  {
    [v22 setAutoresizingMask_];

    [v6 didMoveToParentViewController_];
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_190B87D4C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v123 = &v115 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v115 - v12;
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v17 = &v115 - v16;
  v18 = [a1 childViewControllers];
  v19 = sub_1902188FC(0, &qword_1EAD45060);
  v20 = sub_190D57180();

  if (!(v20 >> 62))
  {
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!sub_190D581C0())
  {
    goto LABEL_54;
  }

LABEL_3:
  v120 = v8;
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x193AF3B90](0, v20);
    goto LABEL_6;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v20 + 32);
LABEL_6:
    v22 = v21;

    type metadata accessor for ClarityUIChatController();
    v23 = swift_dynamicCastClass();
    if (v23)
    {
      v24 = v23;
      v125 = v22;
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E640);
      sub_190D55210();
      v25 = v129;
      *(v129 + OBJC_IVAR____TtCV7ChatKitP33_093978188F67B65A90613E40AA80756421ChatControllerWrapper11Coordinator_shouldSuppressBindingUpdates) = 1;

      v126 = v24;
      v26 = [v24 conversation];
      v27 = [v26 uniqueIdentifier];

      v28 = sub_190D56F10();
      v30 = v29;

      v124 = v3;
      v31 = [*v3 uniqueIdentifier];
      v32 = sub_190D56F10();
      v34 = v33;

      v121 = a2;
      if (v28 == v32 && v30 == v34)
      {

        v35 = v125;
      }

      else
      {
        v36 = sub_190D58760();

        v35 = v125;
        if ((v36 & 1) == 0)
        {
          v38 = v124;
          v40 = &unk_1EAD5E000;
          if (qword_1EAD51CB8 != -1)
          {
            swift_once();
          }

          v41 = sub_190D53040();
          __swift_project_value_buffer(v41, qword_1EAD9E058);
          v42 = sub_190D53020();
          v43 = sub_190D576C0();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            _os_log_impl(&dword_19020E000, v42, v43, "Replacing chat controller.", v44, 2u);
            MEMORY[0x193AF7A40](v44, -1, -1);
          }

          sub_190D55210();
          v45 = v129;
          *(v129 + OBJC_IVAR____TtCV7ChatKitP33_093978188F67B65A90613E40AA80756421ChatControllerWrapper11Coordinator_shouldSuppressBindingUpdates) = 1;

          v46 = v125;
          v47 = v126;
          [v126 willMoveToParentViewController:0];
          v48 = [v47 view];

          if (!v48)
          {
            goto LABEL_66;
          }

          [v48 removeFromSuperview];

          [v47 removeFromParentViewController];
          sub_190B87AF8(a1);
          v39 = v49;
          sub_190D55210();
          v50 = v129;
          *(v129 + OBJC_IVAR____TtCV7ChatKitP33_093978188F67B65A90613E40AA80756421ChatControllerWrapper11Coordinator_shouldSuppressBindingUpdates) = 0;

          v35 = v125;
LABEL_19:
          v126 = v39;
          v51 = [v39 composition];

          if (v51)
          {
            v52 = [v51 text];
            if (v52)
            {
              v53 = v52;
              v54 = [v52 string];

              v55 = sub_190D56F10();
              v57 = v56;
            }

            else
            {

              v55 = 0;
              v57 = 0xE000000000000000;
            }
          }

          else
          {
            v55 = 0;
            v57 = 0;
          }

          v59 = v38[2];
          v58 = v38[3];
          v60 = v38[4];
          v61 = v38[5];
          v129 = v59;
          v130 = v58;
          v118 = v60;
          v119 = v58;
          v131 = v60;
          v132 = v61;
          v117 = v61;
          v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E648);
          MEMORY[0x193AF1A80](&v127);
          if (v57)
          {
            if (v55 == v127 && v57 == v128)
            {

              goto LABEL_30;
            }

            v62 = sub_190D58760();

            if (v62)
            {
LABEL_30:
              type metadata accessor for ChatControllerWrapper(0);
              v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0);
              MEMORY[0x193AF1A80](v63);
              v64 = sub_190D515F0();
              v65 = (*(*(v64 - 8) + 48))(v17, 1, v64);
              sub_19022EEA4(v17, &unk_1EAD55F20);
              if (v65 == 1)
              {
LABEL_50:
                v99 = *(v38 + 1);
                v100 = v126;
                v101 = *(&v126->isa + OBJC_IVAR____TtC7ChatKit23ClarityUIChatController_navigationBarTopInset);
                *(&v126->isa + OBJC_IVAR____TtC7ChatKit23ClarityUIChatController_navigationBarTopInset) = v99;
                if (v101 != v99)
                {
                  [v100 updateScrollGeometryWithoutAnimationForReason:@"NavigationBarTopInsetChanged"];
                }

                [v100 setAdditionalSafeAreaInsets:0.0, 16.0, 0.0, 16.0];
                sub_190D55210();

                v102 = v129;
                *(v129 + v40[190]) = 0;

                return;
              }
            }
          }

          else
          {
          }

          type metadata accessor for ChatControllerWrapper(0);
          v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0);
          MEMORY[0x193AF1A80]();
          v67 = sub_190D515F0();
          v68 = *(v67 - 8);
          v69 = *(v68 + 48);
          v70 = v69(v13, 1, v67);
          sub_19022EEA4(v13, &unk_1EAD55F20);
          if (v70 == 1)
          {
            v71 = [v126 composition];
            if (v71)
            {
              v72 = v71;
              v73 = [v71 text];
              v38 = v124;
              v35 = v125;
              if (v73)
              {
                v74 = v73;
                v75 = [v73 string];

                v76 = sub_190D56F10();
                v78 = v77;
              }

              else
              {

                v76 = 0;
                v78 = 0xE000000000000000;
              }
            }

            else
            {
              v76 = 0;
              v78 = 0;
              v38 = v124;
              v35 = v125;
            }

            v129 = v59;
            v130 = v119;
            v131 = v118;
            v132 = v117;
            MEMORY[0x193AF1A80](&v127, v116);
            v40 = &unk_1EAD5E000;
            if (v78)
            {
              if (v76 == v127 && v78 == v128)
              {

                goto LABEL_50;
              }

              v93 = sub_190D58760();

              if (v93)
              {
                goto LABEL_50;
              }
            }

            else
            {
            }

            v129 = v59;
            v130 = v119;
            v131 = v118;
            v132 = v117;
            MEMORY[0x193AF1A80](&v127, v116);
            v94 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
            v95 = sub_190D56ED0();

            v96 = [v94 initWithString_];

            v35 = v125;
            v97 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) init];
            v98 = [objc_allocWithZone(CKComposition) initWithText:v96 subject:v97];

            [v126 setComposition:v98];
            goto LABEL_50;
          }

          v79 = v123;
          MEMORY[0x193AF1A80](v66);
          if (v69(v79, 1, v67) == 1)
          {
            __break(1u);
          }

          else
          {
            v119 = sub_190D51560();
            v80 = v79;
            v81 = *(v68 + 8);
            v81(v80, v67);
            v82 = [objc_opt_self() sharedInstance];
            if (v82)
            {
              v83 = v82;
              v84 = v120;
              MEMORY[0x193AF1A80](v66);
              if (v69(v84, 1, v67) == 1)
              {
                v85 = 0;
              }

              else
              {
                v85 = sub_190D51570();
                v81(v84, v67);
              }

              v35 = v125;
              v86 = sub_190D56ED0();

              sub_190821644(MEMORY[0x1E69E7CC0]);
              v87 = sub_190D56D60();

              v88 = [v83 mediaObjectWithFileURL:v85 filename:v86 transcoderUserInfo:v87];

              v89 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
              v90 = v88;
              v91 = [v89 init];
              v92 = [objc_opt_self() compositionWithMediaObject:v90 subject:v91];

              [v126 setComposition:v92];
              v38 = v124;
              v40 = &unk_1EAD5E000;
              goto LABEL_50;
            }
          }

          __break(1u);
LABEL_66:
          __break(1u);
          return;
        }
      }

      v37 = v35;
      v38 = v124;
      v39 = v126;
      v40 = &unk_1EAD5E000;
      goto LABEL_19;
    }

LABEL_55:
    if (qword_1EAD51CB8 == -1)
    {
      goto LABEL_56;
    }

    goto LABEL_63;
  }

  __break(1u);
LABEL_63:
  swift_once();
LABEL_56:
  v103 = sub_190D53040();
  __swift_project_value_buffer(v103, qword_1EAD9E058);
  v104 = a1;
  v126 = sub_190D53020();
  v105 = sub_190D576A0();

  if (os_log_type_enabled(v126, v105))
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v129 = v107;
    *v106 = 136315138;
    v108 = [v104 childViewControllers];
    v109 = sub_190D57180();

    v110 = MEMORY[0x193AF2A20](v109, v19);
    v112 = v111;

    v113 = sub_19021D9F8(v110, v112, &v129);

    *(v106 + 4) = v113;
    _os_log_impl(&dword_19020E000, v126, v105, "Unexpected child view controllers for ClarityUITranscriptView: %s", v106, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v107);
    MEMORY[0x193AF7A40](v107, -1, -1);
    MEMORY[0x193AF7A40](v106, -1, -1);
  }

  else
  {
    v114 = v126;
  }
}

uint64_t sub_190B88A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  v13 = type metadata accessor for ChatControllerWrapper(0);
  result = MEMORY[0x1EEE9AC00](v13);
  v16 = (&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((*(v3 + OBJC_IVAR____TtCV7ChatKitP33_093978188F67B65A90613E40AA80756421ChatControllerWrapper11Coordinator_shouldSuppressBindingUpdates) & 1) == 0)
  {
    v21 = OBJC_IVAR____TtCV7ChatKitP33_093978188F67B65A90613E40AA80756421ChatControllerWrapper11Coordinator_configuration;
    sub_190B89548(v3 + OBJC_IVAR____TtCV7ChatKitP33_093978188F67B65A90613E40AA80756421ChatControllerWrapper11Coordinator_configuration, v16, type metadata accessor for ChatControllerWrapper);
    v22 = a3;
    v17 = v16[3];
    v18 = a1;
    v19 = v16[4];
    v20 = v16[5];
    v25 = v16[2];
    v26 = v17;
    v27 = v19;
    v28 = v20;
    v23 = v18;
    v24 = a2;
    sub_190D50920();
    sub_190D50920();
    sub_190D52690();
    sub_190D52690();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E648);
    sub_190D56200();
    sub_1909035AC(v16);

    sub_190B89548(v3 + v21, v16, type metadata accessor for ChatControllerWrapper);
    sub_19022FD14(v22, v12, &unk_1EAD55F20);
    sub_19022FD14(v12, v10, &unk_1EAD55F20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0);
    sub_190D56200();
    sub_19022EEA4(v12, &unk_1EAD55F20);
    return sub_1909035AC(v16);
  }

  return result;
}

id sub_190B88D04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChatControllerWrapper.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190B88D74()
{
  result = type metadata accessor for ChatControllerWrapper(319);
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

void sub_190B88E58()
{
  sub_1902188FC(319, &qword_1EAD466B0);
  if (v0 <= 0x3F)
  {
    sub_190B894DC(319, &qword_1EAD5E620, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
    if (v1 <= 0x3F)
    {
      sub_190B89478(319, &qword_1EAD5E628, &unk_1EAD55F20, &unk_190DD75D0, MEMORY[0x1E6981948]);
      if (v2 <= 0x3F)
      {
        sub_190B89478(319, &qword_1EAD5E630, &qword_1EAD56AC8, &unk_190DF62E0, MEMORY[0x1E6981948]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_190B88FA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190B89548(v2, v5, type metadata accessor for ChatControllerWrapper);
  v6 = type metadata accessor for ChatControllerWrapper.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  v7[OBJC_IVAR____TtCV7ChatKitP33_093978188F67B65A90613E40AA80756421ChatControllerWrapper11Coordinator_shouldSuppressBindingUpdates] = 0;
  sub_190B89548(v5, &v7[OBJC_IVAR____TtCV7ChatKitP33_093978188F67B65A90613E40AA80756421ChatControllerWrapper11Coordinator_configuration], type metadata accessor for ChatControllerWrapper);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = sub_1909035AC(v5);
  *a2 = v8;
  return result;
}

uint64_t sub_190B8909C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190B89214(&qword_1EAD5E650);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_190B8911C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190B89214(&qword_1EAD5E650);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_190B8919C()
{
  sub_190B89214(&qword_1EAD5E650);
  sub_190D55130();
  __break(1u);
}

uint64_t sub_190B89214(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ChatControllerWrapper(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_190B892A0()
{
  type metadata accessor for ClarityUIConversationList();
  if (v0 <= 0x3F)
  {
    sub_19083C22C();
    if (v1 <= 0x3F)
    {
      sub_190B894DC(319, &qword_1EAD5A888, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_190B89478(319, &qword_1EAD57648, &unk_1EAD55F20, &unk_190DD75D0, MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_190B89478(319, &qword_1EAD5E678, &qword_1EAD56AC8, &unk_190DF62E0, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_190B89478(319, &qword_1EAD5E680, &qword_1EAD5E658, &unk_190DF6408, MEMORY[0x1E6981790]);
            if (v5 <= 0x3F)
            {
              sub_190B894DC(319, &qword_1EAD55F80, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
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

void sub_190B89478(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_190B894DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_190B89548(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_190B895B0(uint64_t a1)
{
  v3 = *(type metadata accessor for ClarityUITranscriptView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_190B85C34(a1, v4);
}

uint64_t objectdestroyTm_34()
{
  v1 = type metadata accessor for ClarityUITranscriptView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  sub_19091E6E0(*(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72));

  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_190D540E0();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v5 + v1[8];
  v9 = sub_190D515F0();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);

  v11 = v5 + v1[9];
  v12 = sub_190D55200();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v11, 1, v12))
  {
    (*(v13 + 8))(v11, v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E660);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void sub_190B89958(uint64_t a1)
{
  v3 = *(type metadata accessor for ClarityUITranscriptView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_190B87120(a1, v4);
}

unint64_t sub_190B899C8()
{
  result = qword_1EAD5E6D8;
  if (!qword_1EAD5E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E6D8);
  }

  return result;
}

uint64_t sub_190B89A34(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ClarityUITranscriptView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_190B89AC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_190B89B28()
{
  result = qword_1EAD5E720;
  if (!qword_1EAD5E720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E700);
    sub_190B89214(&qword_1EAD5E638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E720);
  }

  return result;
}

unint64_t sub_190B89BE4()
{
  result = qword_1EAD5E730;
  if (!qword_1EAD5E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E730);
  }

  return result;
}

unint64_t sub_190B89C4C()
{
  result = qword_1EAD5E738;
  if (!qword_1EAD5E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E738);
  }

  return result;
}

uint64_t sub_190B89CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_190D54800();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_19022FD14(v2 + *(a1 + 48), &v15 - v10, &qword_1EAD55AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_190D53A60();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_190D576B0();
    v14 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_190B89EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_190D54800();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_19022FD14(v2 + *(a1 + 52), &v15 - v10, &qword_1EAD5F690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_190D54190();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_190D576B0();
    v14 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_190B8A0A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v49 = a2;
  v2 = a1 - 8;
  v47 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v45 = v3;
  v46 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_190D56170();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v36 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E848);
  v5 = *(v2 + 24);
  sub_190D58050();
  sub_190D54200();
  sub_190D54200();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E850);
  sub_190D54200();
  swift_getTupleTypeMetadata2();
  sub_190D56620();
  swift_getWitnessTable();
  v6 = sub_190D561D0();
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  v9 = sub_190D54200();
  v42 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_190D54200();
  v43 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v39 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v41 = &v34 - v15;
  sub_190D564B0();
  v16 = *(v2 + 32);
  v44 = v5;
  v50 = v5;
  v51 = v16;
  v34 = v16;
  v17 = v37;
  v52 = v37;
  sub_190D561C0();
  v18 = v36;
  sub_190D56160();
  MEMORY[0x193AF1E20](v18, 0.0);
  (*(v38 + 8))(v18, v40);
  v57 = *v17;
  WitnessTable = swift_getWitnessTable();
  sub_190B89C4C();
  v40 = v11;
  sub_190D55C50();

  (*(v35 + 8))(v8, v6);
  if (qword_1EAD51E60 != -1)
  {
    swift_once();
  }

  v21 = v46;
  v20 = v47;
  v22 = v48;
  (*(v47 + 16))(v46, v17, v48);
  v23 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v24 = swift_allocObject();
  v25 = v34;
  *(v24 + 16) = v44;
  *(v24 + 24) = v25;
  (*(v20 + 32))(v24 + v23, v21, v22);
  v26 = sub_190233640(&qword_1EAD5E858, &qword_1EAD5E850);
  v55 = WitnessTable;
  v56 = v26;
  v27 = swift_getWitnessTable();
  v28 = v39;
  v29 = v40;
  sub_190D55830();

  (*(v42 + 8))(v29, v9);
  v53 = v27;
  v54 = MEMORY[0x1E69805A0];
  v30 = swift_getWitnessTable();
  v31 = v41;
  sub_19096BC74(v28, v12, v30);
  v32 = *(v43 + 8);
  v32(v28, v12);
  sub_19096BC74(v31, v12, v30);
  return (v32)(v31, v12);
}

uint64_t sub_190B8A76C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v104 = a4;
  v103 = sub_190D56170();
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v98 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a2;
  v91 = sub_190D58050();
  v93 = sub_190D54200();
  v96 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v90 = &v76 - v8;
  v95 = sub_190D54200();
  v100 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v92 = &v76 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E850);
  v99 = sub_190D54200();
  v101 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v94 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v97 = &v76 - v12;
  v88 = sub_190D54190();
  v86 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v76 - v15;
  v81 = sub_190D548F0();
  v16 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TapbackAttributionItemPlatterView();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v76 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E860);
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22);
  v79 = &v76 - v24;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E848);
  MEMORY[0x1EEE9AC00](v105);
  v89 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v83 = &v76 - v27;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v84 = &v76 - v30;
  v31 = a1;
  (*(v19 + 16))(v21, a1, v18, v29);
  v32 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v33 = swift_allocObject();
  v34 = v78;
  *(v33 + 16) = v78;
  *(v33 + 24) = a3;
  v82 = a3;
  v35 = *(v19 + 32);
  v76 = v18;
  v35(v33 + v32, v21, v18);
  v106 = v34;
  v107 = a3;
  v108 = v31;
  (*(v16 + 104))(v80, *MEMORY[0x1E697F3A0], v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E868);
  sub_190233640(&qword_1EAD5E870, &qword_1EAD5E868);
  v36 = v79;
  sub_190D560A0();
  v77 = v31;
  sub_190D56500();
  sub_190D53C60();
  v37 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E878) + 36));
  v38 = v114;
  *v37 = v113;
  v37[1] = v38;
  v37[2] = v115;
  KeyPath = swift_getKeyPath();
  v40 = (v36 + *(v23 + 44));
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53E60);
  v42 = *MEMORY[0x1E697E7D0];
  v43 = v86;
  v44 = *(v86 + 104);
  v45 = v88;
  v44(v40 + *(v41 + 28), v42, v88);
  *v40 = KeyPath;
  v46 = v85;
  sub_190B89EA4(v76, v85);
  v47 = v87;
  v44(v87, v42, v45);
  v48 = v47;
  LOBYTE(v47) = sub_190D54180();
  v49 = *(v43 + 8);
  v49(v48, v45);
  v49(v46, v45);
  if (v47)
  {
    v50 = 1.0;
  }

  else
  {
    v50 = -1.0;
  }

  sub_190D56690();
  v52 = v51;
  v54 = v53;
  v55 = v83;
  sub_19081E40C(v36, v83, &qword_1EAD5E860);
  v56 = v55 + *(v105 + 36);
  *v56 = v50;
  *(v56 + 8) = 0x3FF0000000000000;
  *(v56 + 16) = v52;
  *(v56 + 24) = v54;
  v57 = v84;
  sub_19081E40C(v55, v84, &qword_1EAD5E848);
  sub_190D56500();
  v112[8] = v82;
  WitnessTable = swift_getWitnessTable();
  v59 = v77;
  v60 = v90;
  sub_190D55B70();
  v112[6] = WitnessTable;
  v112[7] = MEMORY[0x1E697E040];
  v61 = v93;
  v62 = swift_getWitnessTable();
  v63 = v92;
  sub_190D55BA0();
  (*(v96 + 8))(v60, v61);
  v64 = v98;
  sub_190D56160();
  MEMORY[0x193AF1E20](v64, 0.0);
  (*(v102 + 8))(v64, v103);
  LOBYTE(v112[0]) = *v59;
  v112[4] = v62;
  v112[5] = MEMORY[0x1E697E270];
  v65 = v95;
  v66 = swift_getWitnessTable();
  sub_190B89C4C();
  v67 = v94;
  sub_190D55C50();

  (*(v100 + 8))(v63, v65);
  v68 = sub_190233640(&qword_1EAD5E858, &qword_1EAD5E850);
  v112[2] = v66;
  v112[3] = v68;
  v69 = v99;
  v70 = swift_getWitnessTable();
  v71 = v97;
  sub_19096BC74(v67, v69, v70);
  v72 = v101;
  v73 = *(v101 + 8);
  v73(v67, v69);
  v74 = v89;
  sub_190281DE8(v57, v89);
  v112[0] = v74;
  (*(v72 + 16))(v67, v71, v69);
  v112[1] = v67;
  v111[0] = v105;
  v111[1] = v69;
  v109 = sub_190B8D1B0();
  v110 = v70;
  sub_190B74A3C(v112, 2uLL, v111);
  v73(v71, v69);
  sub_190281E58(v57);
  v73(v67, v69);
  return sub_190281E58(v74);
}

uint64_t sub_190B8B3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v59 = a4;
  v63 = a2;
  v64 = sub_190D53A60();
  v61 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v60 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D54150();
  v65 = *(v6 - 8);
  v66 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_190D54100();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v55 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v55 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E8B8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v68 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v55 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v55 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v55 - v30;
  v67 = a1;
  v72 = 0;
  sub_190D540F0();
  v72 = 1;
  sub_190D540F0();
  v72 = 2;
  v32 = v31;
  sub_190D540F0();
  sub_19022FD14(v31, v22, &qword_1EAD5E8B8);
  v33 = *(v9 + 48);
  v34 = v8;
  if (v33(v22, 1, v8) == 1)
  {
    sub_190B8D3AC(v25);
    sub_190B8D3AC(v28);
    sub_190B8D3AC(v32);
    return sub_190B8D3AC(v22);
  }

  else
  {
    v56 = v32;
    v57 = v25;
    v36 = *(v9 + 32);
    v37 = v71;
    v36(v71, v22, v34);
    sub_19022FD14(v28, v19, &qword_1EAD5E8B8);
    if (v33(v19, 1, v34) == 1)
    {
      sub_190B8D3AC(v57);
      sub_190B8D3AC(v28);
      sub_190B8D3AC(v56);
      sub_190B8D3AC(v19);
      return (*(v9 + 8))(v37, v34);
    }

    else
    {
      v36(v70, v19, v34);
      v38 = v57;
      v39 = v68;
      sub_19022FD14(v57, v68, &qword_1EAD5E8B8);
      if (v33(v39, 1, v34) == 1)
      {
        sub_190B8D3AC(v38);
        sub_190B8D3AC(v28);
        sub_190B8D3AC(v56);
        sub_190B8D3AC(v39);
        v40 = *(v9 + 8);
        v40(v70, v34);
        return (v40)(v71, v34);
      }

      else
      {
        v36(v69, v39, v34);
        sub_190D55D90();
        v41 = type metadata accessor for TapbackAttributionItemPlatterView();
        v42 = *(v41 + 40);
        v59 = v28;
        v43 = v63 + v42;
        sub_190D55DF0();
        v68 = v9;

        v55 = v43;
        v44 = v62;
        sub_190D54140();

        sub_190D54160();
        v58 = v34;
        v45 = v66;
        v46 = *(v65 + 8);
        v46(v44, v66);
        v47 = v60;
        sub_190B89CA0(v41, v60);
        sub_190B8BB10(v47, v41);
        (*(v61 + 8))(v47, v64);
        sub_190D54120();

        sub_190D54160();
        v46(v44, v45);
        sub_190D54130();
        sub_190D54160();
        v48 = (v46)(v44, v45);
        MEMORY[0x1EEE9AC00](v48);
        v50 = v70;
        v49 = v71;
        *(&v55 - 4) = v71;
        *(&v55 - 3) = v50;
        v51 = v69;
        *(&v55 - 2) = v69;
        sub_190D54170();
        sub_190B8D3AC(v57);
        sub_190B8D3AC(v59);
        sub_190B8D3AC(v56);
        v52 = *(v68 + 8);
        v53 = v51;
        v54 = v58;
        v52(v53, v58);
        v52(v50, v54);
        return (v52)(v49, v54);
      }
    }
  }
}

uint64_t sub_190B8BB10(uint64_t a1, uint64_t a2)
{
  v4 = sub_190D53A60();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E697DBA8], v4, v6);
  v9 = sub_190D53A50();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.282 alpha:1.0];
  }

  else
  {
    v10 = [objc_opt_self() whiteColor];
  }

  v11 = v10;
  v12 = *(v2 + *(a2 + 44));
  v13 = [objc_opt_self() whiteColor];
  v14 = v13;
  if ((v12 & 1) == 0)
  {
    v15 = [v13 colorWithAlphaComponent_];

    v14 = v15;
  }

  v16 = v11;
  v17 = sub_190D55CE0();

  return v17;
}

uint64_t sub_190B8BCCC()
{
  sub_190D56660();
  sub_190D54110();
  sub_190D56660();
  sub_190D54110();
  sub_190D56660();
  return sub_190D54110();
}

uint64_t sub_190B8BD70@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X8>)
{
  v62 = a1;
  v66 = a2;
  v67 = sub_190D56170();
  v3 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E8A8);
  v70 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v69 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v64 = &v61 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v61 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v61 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v61 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v61 - v18;
  v61 = sub_190D55D40();
  v20 = &a1[*(type metadata accessor for TapbackAttributionItemPlatterView() + 40)];
  sub_190D56500();
  sub_190D53C60();
  *&v73[3] = *&v73[27];
  *&v73[11] = *&v73[35];
  *&v73[19] = *&v73[43];
  v21 = *(v20 + 11);
  sub_190D56660();
  v23 = v22;
  v25 = v24;
  v26 = *(v20 + 14);
  v27 = *(v20 + 15);
  sub_190D56160();
  v28 = MEMORY[0x193AF1E20](v5, 0.0);
  v29 = *(v3 + 8);
  v63 = v3 + 8;
  v30 = v67;
  v29(v5, v67);
  v31 = *&v73[8];
  *(v19 + 10) = *v73;
  LODWORD(v3) = *v62;
  *v19 = v61;
  *(v19 + 4) = 256;
  *(v19 + 26) = v31;
  *(v19 + 42) = *&v73[16];
  *(v19 + 7) = *&v73[23];
  *(v19 + 8) = v21;
  *(v19 + 9) = v21;
  *(v19 + 10) = v23;
  *(v19 + 11) = v25;
  *(v19 + 12) = v26;
  *(v19 + 13) = v27;
  *(v19 + 14) = v28;
  v19[120] = v3;
  LODWORD(v62) = v3;
  *(v19 + 16) = 0;
  v19[136] = 1;
  v61 = sub_190D55D50();
  sub_190D56500();
  sub_190D53C60();
  *&v72[6] = *&v73[51];
  *&v72[22] = *&v73[59];
  *&v72[38] = *&v73[67];
  v32 = *(v20 + 12);
  sub_190D56660();
  v34 = v33;
  v36 = v35;
  v37 = *(v20 + 16);
  v38 = *(v20 + 17);
  sub_190D56160();
  v39 = MEMORY[0x193AF1E20](v5, 0.0);
  v29(v5, v30);
  v40 = *&v72[16];
  *(v16 + 10) = *v72;
  *v16 = v61;
  *(v16 + 4) = 256;
  *(v16 + 26) = v40;
  *(v16 + 42) = *&v72[32];
  *(v16 + 7) = *&v72[46];
  *(v16 + 8) = v32;
  *(v16 + 9) = v32;
  *(v16 + 10) = v34;
  *(v16 + 11) = v36;
  *(v16 + 12) = v37;
  *(v16 + 13) = v38;
  *(v16 + 14) = v39;
  v16[120] = v3;
  *(v16 + 16) = 1;
  v16[136] = 1;
  v41 = sub_190D55DB0();
  sub_190D56500();
  sub_190D53C60();
  *&v71[6] = *&v73[75];
  *&v71[22] = *&v73[83];
  *&v71[38] = *&v73[91];
  v42 = *(v20 + 13);
  sub_190D56660();
  v44 = v43;
  v46 = v45;
  v47 = *(v20 + 18);
  v48 = *(v20 + 19);
  sub_190D56160();
  v49 = MEMORY[0x193AF1E20](v5, 0.0);
  v29(v5, v67);
  v50 = *&v71[16];
  *(v13 + 10) = *v71;
  *v13 = v41;
  *(v13 + 4) = 256;
  *(v13 + 26) = v50;
  *(v13 + 42) = *&v71[32];
  *(v13 + 7) = *&v71[46];
  *(v13 + 8) = v42;
  *(v13 + 9) = v42;
  *(v13 + 10) = v44;
  *(v13 + 11) = v46;
  *(v13 + 12) = v47;
  *(v13 + 13) = v48;
  *(v13 + 14) = v49;
  v13[120] = v62;
  *(v13 + 16) = 2;
  v13[136] = 1;
  v51 = *(v70 + 16);
  v52 = v68;
  v53 = v65;
  v51(v68, v19, v65);
  v54 = v64;
  v51(v64, v16, v53);
  v51(v69, v13, v53);
  v55 = v66;
  v51(v66, v52, v53);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E8B0);
  v51(&v55[*(v56 + 48)], v54, v53);
  v57 = &v55[*(v56 + 64)];
  v58 = v69;
  v51(v57, v69, v53);
  v59 = *(v70 + 8);
  v59(v13, v53);
  v59(v16, v53);
  v59(v19, v53);
  v59(v58, v53);
  v59(v54, v53);
  return (v59)(v68, v53);
}

double sub_190B8C3F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_190D548D0();
  v4 = MEMORY[0x193AEF8E0](v3);
  return v4 - *(a2 + *(type metadata accessor for TapbackAttributionItemPlatterView() + 40) + 48);
}

uint64_t sub_190B8C468()
{
  sub_190B8C498();
  result = sub_190D548E0();
  qword_1EAD9E348 = result;
  return result;
}

unint64_t sub_190B8C498()
{
  result = qword_1EAD5E740[0];
  if (!qword_1EAD5E740[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAD5E740);
  }

  return result;
}

void sub_190B8C4FC()
{
  sub_190D58050();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TapbackAttributionItemPlatterView.VisualProvider();
    if (v1 <= 0x3F)
    {
      sub_1909570C0(319, &qword_1EAD55988, MEMORY[0x1E697DBD0]);
      if (v2 <= 0x3F)
      {
        sub_1909570C0(319, &qword_1EAD5F6C0, MEMORY[0x1E697E7E0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_190B8C610(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v28 = *(a3 + 16);
  v5 = *(v28 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(sub_190D53A60() - 8);
  v10 = *(v9 + 64);
  if (v10 <= 8)
  {
    v10 = 8;
  }

  v29 = v10;
  v11 = *(sub_190D54190() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v5 + 80);
  v14 = *(v5 + 64);
  if (!v6)
  {
    ++v14;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v14 + 7;
  if (a2 > v8)
  {
    v16 = *(v9 + 80) & 0xF8 | 7;
    v17 = *(v11 + 80) & 0xF8 | 7;
    v18 = v12 + ((v29 + v17 + ((v16 + ((v15 + ((v13 + 1) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 161) & ~v16) + 1) & ~v17) + 1;
    v19 = 8 * v18;
    if (v18 > 3)
    {
      goto LABEL_17;
    }

    v21 = ((a2 - v8 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_35;
      }

      goto LABEL_24;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_35;
      }

      goto LABEL_24;
    }

    if (v21 >= 2)
    {
LABEL_17:
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_35;
      }

LABEL_24:
      v22 = (v20 - 1) << v19;
      if (v18 > 3)
      {
        v22 = 0;
      }

      if (v18)
      {
        if (v18 > 3)
        {
          LODWORD(v18) = 4;
        }

        if (v18 > 2)
        {
          if (v18 == 3)
          {
            LODWORD(v18) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v18) = *a1;
          }
        }

        else if (v18 == 1)
        {
          LODWORD(v18) = *a1;
        }

        else
        {
          LODWORD(v18) = *a1;
        }
      }

      v27 = v8 + (v18 | v22);
      return (v27 + 1);
    }
  }

LABEL_35:
  v23 = (a1 + v13 + 1) & ~v13;
  if (v7 < 0xFE)
  {
    v26 = *(((v15 + v23) & 0xFFFFFFFFFFFFFFF8) + 160);
    if (v26 < 2)
    {
      return 0;
    }

    v27 = (v26 + 2147483646) & 0x7FFFFFFF;
    return (v27 + 1);
  }

  v24 = (*(v5 + 48))(v23, v6, v28);
  if (v24 >= 2)
  {
    return v24 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_190B8C900(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v34 = v6;
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_190D53A60() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = sub_190D54190();
  v13 = v7;
  v14 = 0;
  v15 = *(v12 - 8);
  if (*(v15 + 64) <= 8uLL)
  {
    v16 = 8;
  }

  else
  {
    v16 = *(v15 + 64);
  }

  v17 = *(v6 + 80);
  if (v13)
  {
    v18 = *(v6 + 64);
  }

  else
  {
    v18 = *(v6 + 64) + 1;
  }

  v19 = *(v10 + 80) & 0xF8 | 7;
  v20 = *(v15 + 80) & 0xF8 | 7;
  v21 = v16 + ((v11 + v20 + ((v19 + ((v18 + 7 + ((v17 + 1) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 161) & ~v19) + 1) & ~v20) + 1;
  if (a3 <= v9)
  {
    goto LABEL_27;
  }

  if (v21 <= 3)
  {
    v22 = ((a3 - v9 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v22))
    {
      v14 = 4;
      if (v9 >= a2)
      {
        goto LABEL_37;
      }

      goto LABEL_28;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (v22 >= 2)
    {
      v14 = v23;
    }

    else
    {
      v14 = 0;
    }

LABEL_27:
    if (v9 >= a2)
    {
      goto LABEL_37;
    }

    goto LABEL_28;
  }

  v14 = 1;
  if (v9 >= a2)
  {
LABEL_37:
    if (v14 > 1)
    {
      if (v14 != 2)
      {
        *&a1[v21] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_44;
      }

      *&a1[v21] = 0;
    }

    else if (v14)
    {
      a1[v21] = 0;
      if (!a2)
      {
        return;
      }

LABEL_44:
      v27 = ~v17;
      v28 = &a1[v17 + 1];
      v29 = (v28 & v27);
      if (v8 < 0xFE)
      {
        *((&v29[v18 + 7] & 0xFFFFFFFFFFFFFFF8) + 160) = a2 + 1;
      }

      else if (v8 >= a2)
      {
        v33 = *(v34 + 56);

        v33(v28 & v27, a2 + 1);
      }

      else
      {
        if (v18 <= 3)
        {
          v30 = ~(-1 << (8 * v18));
        }

        else
        {
          v30 = -1;
        }

        if (v18)
        {
          v31 = v30 & (~v8 + a2);
          if (v18 <= 3)
          {
            v32 = v18;
          }

          else
          {
            v32 = 4;
          }

          bzero(v29, v18);
          if (v32 > 2)
          {
            if (v32 == 3)
            {
              *v29 = v31;
              v29[2] = BYTE2(v31);
            }

            else
            {
              *v29 = v31;
            }
          }

          else if (v32 == 1)
          {
            *v29 = v31;
          }

          else
          {
            *v29 = v31;
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

LABEL_28:
  v24 = ~v9 + a2;
  if (v21 >= 4)
  {
    bzero(a1, v21);
    *a1 = v24;
    v25 = 1;
    if (v14 > 1)
    {
      goto LABEL_67;
    }

    goto LABEL_64;
  }

  v25 = (v24 >> (8 * v21)) + 1;
  if (!v21)
  {
LABEL_63:
    if (v14 > 1)
    {
      goto LABEL_67;
    }

    goto LABEL_64;
  }

  v26 = v24 & ~(-1 << (8 * v21));
  bzero(a1, v21);
  if (v21 == 3)
  {
    *a1 = v26;
    a1[2] = BYTE2(v26);
    goto LABEL_63;
  }

  if (v21 == 2)
  {
    *a1 = v26;
    if (v14 > 1)
    {
LABEL_67:
      if (v14 == 2)
      {
        *&a1[v21] = v25;
      }

      else
      {
        *&a1[v21] = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v14 > 1)
    {
      goto LABEL_67;
    }
  }

LABEL_64:
  if (v14)
  {
    a1[v21] = v25;
  }
}

uint64_t sub_190B8CD40()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_190B8CDA8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 160))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_190B8CDC8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 152) = 0;
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

  *(result + 160) = v3;
  return result;
}

double sub_190B8CE6C(uint64_t a1)
{
  v3 = *(type metadata accessor for TapbackAttributionItemPlatterView() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_190B8C3F8(a1, v4);
}

uint64_t objectdestroyTm_35()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for TapbackAttributionItemPlatterView();
  v3 = *(*(v2 - 1) + 80);
  v4 = *(*(v2 - 1) + 64);
  v5 = (v3 + 32) & ~v3;
  v6 = v0 + v5;
  v7 = v2[9];
  v8 = *(v1 - 8);
  if (!(*(v8 + 48))(v0 + v5 + v7, 1, v1))
  {
    (*(v8 + 8))(v6 + v7, v1);
  }

  v9 = v2[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_190D53A60();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  else
  {
  }

  v11 = v2[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_190D54190();
    (*(*(v12 - 8) + 8))(v6 + v11, v12);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + v4, v3 | 7);
}

uint64_t sub_190B8D100(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for TapbackAttributionItemPlatterView() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_190B8B3B0(a1, v6, v3, v4);
}

unint64_t sub_190B8D1B0()
{
  result = qword_1EAD5E880;
  if (!qword_1EAD5E880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E848);
    sub_190B8D23C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E880);
  }

  return result;
}

unint64_t sub_190B8D23C()
{
  result = qword_1EAD5E888;
  if (!qword_1EAD5E888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E860);
    sub_190B8D2F4();
    sub_190233640(&qword_1EAD53E90, &qword_1EAD53E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E888);
  }

  return result;
}

unint64_t sub_190B8D2F4()
{
  result = qword_1EAD5E890;
  if (!qword_1EAD5E890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E878);
    sub_190233640(&qword_1EAD5E898, &qword_1EAD5E8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E890);
  }

  return result;
}

uint64_t sub_190B8D3AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E8B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190B8D434()
{
  swift_getKeyPath();
  sub_190B8DB70();
  sub_190D51C20();

  v1 = [*(v0 + 16) handles];
  sub_19086E9EC();
  v2 = sub_190D57180();

  return v2;
}

uint64_t sub_190B8D4DC()
{
  swift_getKeyPath();
  sub_190B8DB70();
  sub_190D51C20();

  v1 = *(v0 + 24);
  sub_190D52690();
  return v1;
}

uint64_t sub_190B8D564(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  sub_190D52690();
}

uint64_t sub_190B8D5A4()
{
  swift_getKeyPath();
  sub_190B8DB70();
  sub_190D51C20();

  sub_190C69010();
  swift_getKeyPath();
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D52690();
  sub_190D51C10();
}

uint64_t sub_190B8D71C()
{
  swift_getKeyPath();
  sub_190B8DB70();
  sub_190D51C20();

  v1 = *(v0 + 48);
  sub_190D52690();
  return v1;
}

uint64_t sub_190B8D7A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190B8DB70();
  sub_190D51C20();

  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  *a2 = *(v3 + 48);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return sub_190D52690();
}

uint64_t sub_190B8D834()
{
  swift_getKeyPath();
  sub_190B8DB70();
  sub_190D51C10();
}

uint64_t sub_190B8D9BC()
{

  v1 = OBJC_IVAR____TtCVV7ChatKit18DetailsInfoTabView22EncryptionStatusFooter9ViewModel___observationRegistrar;
  v2 = sub_190D51C60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s9ViewModelCMa_6()
{
  result = qword_1EAD5E8C8;
  if (!qword_1EAD5E8C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190B8DAC4()
{
  result = sub_190D51C60();
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

unint64_t sub_190B8DB70()
{
  result = qword_1EAD58F10[0];
  if (!qword_1EAD58F10[0])
  {
    _s9ViewModelCMa_6();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAD58F10);
  }

  return result;
}

uint64_t sub_190B8DBE0()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  *(v1 + 24) = *(v0 + 24);
  *(v1 + 32) = v3;
  *(v1 + 40) = v2;
  sub_190D52690();
}

uint64_t sub_190B8DC28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  *(v1 + 48) = *(v0 + 24);
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  sub_190D52690();

  return sub_190B8D5A4();
}

uint64_t sub_190B8DC84(void *a1)
{
  v2 = v1;
  *(v2 + 24) = 1;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 32) = 0;
  *(v2 + 40) = v4;
  sub_190D51C50();
  *(v2 + 16) = a1;
  v5 = a1;
  *(v2 + 48) = sub_190C690DC();
  *(v2 + 56) = v6 & 1;
  *(v2 + 64) = v7;
  v8 = [objc_opt_self() defaultCenter];
  v9 = qword_1EAD45038;
  sub_190D50920();
  if (v9 != -1)
  {
    swift_once();
  }

  [v8 addObserver:v2 selector:sel_handleKeyTransparencyStatusChanged_ name:qword_1EAD9D558 object:0];

  return v2;
}

void *sub_190B8DE0C()
{
  v1 = [v0 chat];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  if (([v1 allowedByScreenTime] & 1) == 0)
  {

    return &unk_1F0403490;
  }

  if ([v2 isFiltered] == 2 && objc_msgSend(objc_opt_self(), sel_spamInboxEnabled))
  {

    return &unk_1F04034C0;
  }

  if (![v2 inUnknownSendersFilter])
  {

    return MEMORY[0x1E69E7CC0];
  }

  v4 = [v2 canUnsubscribe];

  if (v4)
  {
    return &unk_1F04034F0;
  }

  else
  {
    return &unk_1F0403520;
  }
}

uint64_t CKTranscriptCollectionViewController.generateConversationFooterActions(conversation:)()
{
  v0 = sub_190B8DE0C();
  v12 = MEMORY[0x1E69E7CC0];
  v1 = v0[2];
  if (v1)
  {
    v2 = 4;
    do
    {
      v3 = v0[v2];
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      *(v5 + 24) = v3;
      v6 = objc_allocWithZone(type metadata accessor for FooterButtonAction());
      swift_getObjectType();
      sub_190D50920();
      sub_190BDE144(v3);
      v7 = sub_190D57DC0();
      swift_getObjectType();
      swift_deallocPartialClassInstance();
      v8 = OBJC_IVAR___CKFooterButtonAction_type;
      swift_beginAccess();
      *(v7 + v8) = v3;

      MEMORY[0x193AF29E0](v9);
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_190D571A0();
      }

      sub_190D571E0();
      ++v2;
      --v1;
    }

    while (v1);
    v10 = v12;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v10;
}

void sub_190B8E168(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong delegate];
    if (v7)
    {
      v8 = v7;
      if ([v7 respondsToSelector_])
      {
        v9 = v6;
        swift_unknownObjectRetain();
        if ([a1 sender])
        {
          sub_190D58140();
          swift_unknownObjectRelease();
        }

        else
        {
          v12 = 0u;
          v13 = 0u;
        }

        v14[0] = v12;
        v14[1] = v13;
        if (*(&v13 + 1))
        {
          sub_190956C24();
          if (swift_dynamicCast())
          {
            v10 = v11;
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          sub_19021E7D8(v14);
          v10 = 0;
        }

        [v8 transcriptCollectionViewController:v9 didTapIntroductionsButton:v10 ofType:a3];

        swift_unknownObjectRelease_n();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

void sub_190B8E468(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7ChatKit27CKSuggestedReplyBalloonView_view;
  v5 = *&v2[OBJC_IVAR____TtC7ChatKit27CKSuggestedReplyBalloonView_view];
  if (v5)
  {
    [v5 removeFromSuperview];
  }

  v6 = objc_allocWithZone(type metadata accessor for CKSuggestedReplyView());
  v7 = sub_190B58008(a1);
  v8 = *&v2[v4];
  *&v2[v4] = v7;
  v9 = v7;

  v10 = v9;
  [v2 addSubview_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_190DD86A0;
  v13 = [v10 topAnchor];
  v14 = [v2 topAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v12 + 32) = v15;
  v16 = [v10 leadingAnchor];

  v17 = [v2 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v12 + 40) = v18;
  v19 = [v10 trailingAnchor];

  v20 = [v2 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v12 + 48) = v21;
  v22 = [v10 bottomAnchor];

  v23 = [v2 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v12 + 56) = v24;
  sub_19086225C();
  v25 = sub_190D57160();

  [v11 activateConstraints_];

  [v2 balloonDescriptor];
  v26 = [objc_allocWithZone(type metadata accessor for CKBalloonMaskLayer()) initWithDescriptor_];
  v27 = OBJC_IVAR____TtC7ChatKit27CKSuggestedReplyBalloonView_balloonMask;
  v28 = *&v2[OBJC_IVAR____TtC7ChatKit27CKSuggestedReplyBalloonView_balloonMask];
  *&v2[OBJC_IVAR____TtC7ChatKit27CKSuggestedReplyBalloonView_balloonMask] = v26;

  v29 = [v10 layer];
  [v29 setMask_];
}

id sub_190B8E7AC()
{
  v1 = v0;
  v2 = sub_190D56C50();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CKSuggestedReplyBalloonView();
  v21.receiver = v0;
  v21.super_class = v6;
  objc_msgSendSuper2(&v21, sel_layoutSubviews);
  v7 = *&v0[OBJC_IVAR____TtC7ChatKit27CKSuggestedReplyBalloonView_balloonMask];
  if (v7)
  {
    v8 = v7;
    [v1 bounds];
    [v8 setFrame_];
  }

  [v1 balloonDescriptor];
  [v1 bounds];
  v10 = v9;
  v12 = v11;
  sub_190248D60(v5);
  v13 = MEMORY[0x193AF2490](v5, v10, v12);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  (*(v3 + 8))(v5, v2);
  result = *&v1[OBJC_IVAR____TtC7ChatKit27CKSuggestedReplyBalloonView_view];
  if (result)
  {
    return [result setLayoutMargins_];
  }

  return result;
}

void sub_190B8E9A0()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for CKSuggestedReplyBalloonView();
  objc_msgSendSuper2(&v5, sel_prepareForReuse);
  v1 = OBJC_IVAR____TtC7ChatKit27CKSuggestedReplyBalloonView_view;
  v2 = *&v0[OBJC_IVAR____TtC7ChatKit27CKSuggestedReplyBalloonView_view];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;

  v4 = *&v0[OBJC_IVAR____TtC7ChatKit27CKSuggestedReplyBalloonView_balloonMask];
  *&v0[OBJC_IVAR____TtC7ChatKit27CKSuggestedReplyBalloonView_balloonMask] = 0;
}

id sub_190B8EB20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKSuggestedReplyBalloonView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PopRenderer.__allocating_init(device:pixelFormat:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  PopRenderer.init(device:pixelFormat:parameters:)(a1, a2, a3);
  return v6;
}

uint64_t PopRenderer.Pass.hashValue.getter()
{
  v1 = *v0;
  sub_190D58870();
  MEMORY[0x193AF4110](v1);
  return sub_190D588C0();
}

__n128 PopRenderer.Parameters.explosion.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 29) = *(v1 + 61);
  return result;
}

__n128 PopRenderer.Parameters.explosion.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v3;
  *(v1 + 61) = *(a1 + 29);
  return result;
}

uint64_t PopRenderer.Parameters.preMatteChoke.setter(uint64_t result, float a2, float a3)
{
  *(v3 + 84) = result;
  *(v3 + 88) = a2;
  *(v3 + 92) = a3;
  return result;
}

uint64_t PopRenderer.Parameters.vectorBlur.setter(uint64_t result, float a2)
{
  *(v2 + 96) = a2;
  *(v2 + 100) = result;
  return result;
}

uint64_t PopRenderer.Parameters.postMatteChoke.setter(uint64_t result, float a2, float a3)
{
  *(v3 + 104) = result;
  *(v3 + 108) = a2;
  *(v3 + 112) = a3;
  return result;
}

__n128 sub_190B8EF54@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  *(a1 + 64) = *(v1 + 80);
  *(a1 + 80) = v3;
  *(a1 + 96) = *(v1 + 112);
  *(a1 + 112) = *(v1 + 128);
  v4 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v4;
  result = *(v1 + 48);
  v6 = *(v1 + 64);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

__n128 sub_190B8EFB8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 80);
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = v3;
  *(v1 + 112) = *(a1 + 96);
  *(v1 + 128) = *(a1 + 112);
  v4 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(v1 + 48) = result;
  *(v1 + 64) = v6;
  return result;
}

uint64_t sub_190B8F06C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 136) = v2;
  sub_190D52690();
}

uint64_t sub_190B8F104(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 136) = a1;
}

uint64_t PopRenderer.init(device:pixelFormat:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_1908B036C(&unk_1F0403468);
  *(v5 + 184) = 0;
  *(v5 + 136) = v9;
  *(v5 + 144) = a1;
  *(v5 + 152) = a2;
  v10 = *(a3 + 80);
  *(v5 + 80) = *(a3 + 64);
  *(v5 + 96) = v10;
  *(v5 + 112) = *(a3 + 96);
  *(v5 + 128) = *(a3 + 112);
  v11 = *(a3 + 16);
  *(v5 + 16) = *a3;
  *(v5 + 32) = v11;
  v12 = *(a3 + 48);
  *(v5 + 48) = *(a3 + 32);
  *(v5 + 64) = v12;
  v13 = *(a3 + 48);
  v20 = *(a3 + 32);
  v21[0] = v13;
  *(v21 + 13) = *(a3 + 61);
  type metadata accessor for PopExplosionRenderer();
  swift_allocObject();
  v14 = swift_unknownObjectRetain_n();
  PopExplosionRenderer.init(device:pixelFormat:parameters:)(v14, a2, &v20);
  if (v4)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    type metadata accessor for PopRenderer();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v5 + 160) = v15;
    type metadata accessor for PopGaussianBlurRenderer();
    v16 = swift_allocObject();
    v16[4] = 0;
    v16[5] = 0;
    v16[2] = a1;
    v16[3] = a2;
    *(v5 + 168) = v16;
    type metadata accessor for PopVectorBlurRenderer();
    swift_allocObject();
    v17 = swift_unknownObjectRetain();
    PopVectorBlurRenderer.init(device:pixelFormat:)(v17, a2);
    *(v5 + 176) = v19;
  }

  return v5;
}

void sub_190B8F32C(void *a1, id a2, void *a3, float a4, double a5)
{
  v6 = v5;
  v120[21] = *MEMORY[0x1E69E9840];
  v12 = [a2 colorAttachments];
  v13 = [v12 objectAtIndexedSubscript_];

  if (!v13)
  {
LABEL_82:
    __break(1u);
  }

  v14 = [v13 texture];

  if (!v14)
  {
    return;
  }

  v15 = a5;
  v16 = [a1 height] / v15;
  swift_beginAccess();
  v17 = (v16 - *(v6 + 16)) / (*(v6 + 20) - *(v6 + 16));
  v18 = 0.0;
  if (v17 < 0.0)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = (v16 - *(v6 + 16)) / (*(v6 + 20) - *(v6 + 16));
  }

  if (v17 <= 1.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1.0;
  }

  v21 = *(v6 + 24);
  if ((a4 / v21) < 0.0)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = a4 / v21;
  }

  if ((a4 / v21) <= 1.0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 1.0;
  }

  v24 = (v21 * v23) + 0.0;
  v25 = 1.0 - v21;
  v26 = (a4 - v21) / (1.0 - v21);
  if (v26 < 0.0)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = (a4 - v21) / (1.0 - v21);
  }

  if (v26 <= 1.0)
  {
    v28 = v27;
  }

  else
  {
    v28 = 1.0;
  }

  v29 = v21 + (*(v6 + 28) + ((*(v6 + 32) - *(v6 + 28)) * v20));
  v30 = v29 + (v28 * (1.0 - v29));
  if (v21 <= a4)
  {
    v24 = v30;
  }

  if ((v24 / v29) < 0.0)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = v24 / v29;
  }

  if ((v24 / v29) <= 1.0)
  {
    v32 = v31;
  }

  else
  {
    v32 = 1.0;
  }

  v33 = v24 - v21;
  v34 = v33 / v25;
  if ((v33 / v25) < 0.0)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = v33 / v25;
  }

  if (v34 <= 1.0)
  {
    v36 = v35;
  }

  else
  {
    v36 = 1.0;
  }

  v110 = v36;
  v37 = v33 / (v29 - v21);
  if (v37 >= 0.0)
  {
    v18 = v37;
  }

  if (v37 <= 1.0)
  {
    v38 = v18;
  }

  else
  {
    v38 = 1.0;
  }

  v114 = v38;
  v39 = [v14 width];
  v40 = [v14 height];
  v41 = *(v6 + 184);
  if (!v41 || [v41 width] != v39)
  {
    goto LABEL_44;
  }

  v42 = *(v6 + 184);
  if (!v42)
  {
    goto LABEL_84;
  }

  if ([v42 height] != v40)
  {
LABEL_44:
    v43 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v6 + 152) width:v39 height:v40 mipmapped:0];
    [v43 setUsage_];
    v44 = [*(v6 + 144) newTextureWithDescriptor_];

    *(v6 + 184) = v44;
    swift_unknownObjectRelease();
  }

  v45 = *(v6 + 184);
  if (v45)
  {
    swift_beginAccess();
    if (sub_190CACFC0(1, *(v6 + 136)))
    {
      *v46.i32 = (v32 * *(v6 + 36)) + 0.0;
      v47 = vdup_lane_s32(v46, 0);
      *v46.i32 = (v32 * (*(v6 + 40) + -1.0)) + 1.0;
      v48 = vdup_lane_s32(v46, 0);
      swift_unknownObjectRetain();
      v49 = [a1 width];
      v111 = v49 / [v14 width];
      v50 = [a1 height];
      v51 = [v14 height];
      *v52.i32 = v111;
      *&v52.i32[1] = v50 / v51;
      v112 = v52;
      v53 = *(v6 + 160);
      swift_beginAccess();
      v53[7] = v47;
      v54 = 0;
    }

    else
    {
      v53 = *(v6 + 160);
      v55 = qword_1EAD51E68;
      swift_unknownObjectRetain();
      if (v55 != -1)
      {
        swift_once();
      }

      v48 = *(&xmmword_1EAD5E900 + 8);
      v56 = xmmword_1EAD5E900;
      v54 = qword_1EAD5E910;
      v112 = unk_1EAD5E918;
      swift_beginAccess();
      v53[7] = v56;
    }

    v53[8] = v48;
    v53[9] = v54;
    v53[10] = v112;
    if ((sub_190CACFC0(0, *(v6 + 136)) & 1) == 0)
    {
      v70 = 0.0;
LABEL_64:
      sub_190B92014(a1, v45, a3, v70);
      v71 = 0.0;
      sub_19083BB7C(v45, a3, (v114 * (*(v6 + 96) * v15)) + 0.0);
      if (v72)
      {
        v73 = v72;
        v109 = *(v6 + 100);
        v74 = *(v6 + 104);
        v108 = sub_190CACFC0(2, *(v6 + 136));
        v75 = *(v6 + 112) * v15;
        v113 = *(v6 + 116);
        if (sub_190CACFC0(3, *(v6 + 136)))
        {
          v71 = (v114 * v75) + 0.0;
        }

        v76 = *(v6 + 120);
        v77 = *(v6 + 124);
        v78 = sub_190CACFC0(4, *(v6 + 136));
        v79 = *(v6 + 176);
        swift_unknownObjectRetain();
        v80 = [a2 colorAttachments];
        v81 = [v80 objectAtIndexedSubscript_];

        if (v81)
        {
          v82 = [v81 texture];

          if (v82)
          {
            v105 = sub_1909E59E4(v45, v82);
            v101 = v83;
            v107 = v84;
            v103 = v85;
            v104 = sub_1909E59E4(v73, v82);
            v100 = v86;
            v106 = v87;
            v102 = v88;
            v89 = [a3 renderCommandEncoderWithDescriptor_];
            if (v89)
            {
              v90 = v89;
              [v89 setRenderPipelineState_];
              LODWORD(v91) = v101;
              __asm { FMOV            V5.2S, #-1.0 }

              v120[0] = -_D5;
              *&v120[1] = __PAIR64__(LODWORD(v105), v101);
              LODWORD(v97) = v102;
              __asm { FMOV            V16.2S, #1.0 }

              *&v120[2] = __PAIR64__(LODWORD(v104), v100);
              v120[3] = _D16;
              *&v120[4] = __PAIR64__(LODWORD(v105), v103);
              *&v120[5] = __PAIR64__(LODWORD(v104), v102);
              HIDWORD(v91) = v107;
              v120[6] = _D5;
              v120[7] = v91;
              HIDWORD(v97) = v106;
              *&v120[8] = __PAIR64__(v106, v100);
              v120[9] = -_D16;
              *&v120[10] = __PAIR64__(v107, v103);
              v120[11] = v97;
              [v90 setVertexBytes:v120 length:96 atIndex:0];
              v99 = [v82 pixelFormat] != 81;
              LOBYTE(v116) = v108 & v109 & 1;
              *v117 = vadd_f32(vmul_n_f32(v74, v110), 0);
              *&v117[8] = v71;
              *&v117[12] = v113;
              v117[16] = v78 & v76 & 1;
              *&v117[20] = vadd_f32(vmul_n_f32(v77, v114), 0);
              LOBYTE(v118) = v99;
              [v90 setFragmentBytes:&v116 length:36 atIndex:0];
              [v90 setFragmentTexture:v45 atIndex:0];
              [v90 setFragmentTexture:v73 atIndex:1];
              [v90 drawPrimitives:4 vertexStart:0 vertexCount:4];
              [v90 endEncoding];
              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_74;
        }

        __break(1u);
LABEL_84:
        __break(1u);
        return;
      }

      swift_unknownObjectRelease();
      goto LABEL_74;
    }

    *v115 = *(v6 + 52);
    *&v115[12] = *(v6 + 64);
    v57 = *(v6 + 80);
    v58 = *(v6 + 84);
    v60 = *(v6 + 88);
    v59 = *(v6 + 92);
    v61 = *(v6 + 48);
    v62 = *(v6 + 44) * v15;
    v63 = roundf([a1 width] / v62);
    if ((LODWORD(v63) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v63 > -9.2234e18)
    {
      if (v63 < 9.2234e18)
      {
        v64 = roundf([a1 height] / v62);
        if ((LODWORD(v64) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          if (v64 > -9.2234e18)
          {
            if (v64 < 9.2234e18)
            {
              v65 = v61 + (v20 * (v60 - v61));
              v66 = v57 + (v20 * (v59 - v57));
              v67 = v64;
              swift_beginAccess();
              v69 = v53[22];
              v68 = v53[23];
              v53[22] = v63;
              v53[23] = v67;
              if (*&v69 != v63 || *&v68 != v67)
              {
                v53[24].i8[0] = 0;
              }

              *v117 = *v115;
              *&v117[12] = *&v115[12];
              v116 = v65;
              v118 = v66;
              v119 = v58;
              sub_190B908C8(&v116);
              v70 = v110;
              goto LABEL_64;
            }

            goto LABEL_81;
          }

LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    __break(1u);
    goto LABEL_78;
  }

LABEL_74:
  swift_unknownObjectRelease();
}

uint64_t PopRenderer.deinit()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t PopRenderer.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_190B8FCDC()
{
  result = qword_1EAD5E8F0;
  if (!qword_1EAD5E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E8F0);
  }

  return result;
}

__n128 __swift_memcpy116_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 28);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_190B8FEA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 116))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 68);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_190B8FEEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 116) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 116) = 0;
    }

    if (a2)
    {
      *(result + 68) = a2 + 1;
    }
  }

  return result;
}

uint64_t CKCoreChatController.indexPathOfParentChatItem(forIndexPath:)@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55490);
  *&v4 = MEMORY[0x1EEE9AC00](v3 - 8).n128_u64[0];
  v6 = &v17 - v5;
  v7 = [v1 collectionViewController];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = sub_190D51BB0();
    v11 = [v9 indexPathOfParentChatItemForIndexPath_];

    if (v11)
    {
      sub_190D51BC0();

      v12 = sub_190D51C00();
      (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
    }

    else
    {

      v16 = sub_190D51C00();
      (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    }

    return sub_190B90154(v6, a1);
  }

  else
  {

    v13 = sub_190D51C00();
    v14 = *(*(v13 - 8) + 56);

    return v14(a1, 1, 1, v13);
  }
}

uint64_t sub_190B90154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55490);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190B9036C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v18 - v3;
  v5 = sub_190D515F0();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 phoneNumber];
  v11 = sub_190D56F10();
  v13 = v12;

  strcpy(v18, "telprompt://");
  HIBYTE(v18[6]) = 0;
  v18[7] = -5120;
  MEMORY[0x193AF28B0](v11, v13);

  sub_190D515E0();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_19084CF50(v4);
  }

  (*(v6 + 32))(v9, v4, v5);
  v15 = [objc_opt_self() sharedApplication];
  v16 = sub_190D51570();
  sub_19082233C(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_190964630();
  v17 = sub_190D56D60();

  [v15 openURL:v16 options:v17 completionHandler:0];

  return (*(v6 + 8))(v9, v5);
}

uint64_t PopExplosionRenderer.__allocating_init(device:pixelFormat:parameters:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  PopExplosionRenderer.init(device:pixelFormat:parameters:)(a1, a2, a3);
  return v6;
}

uint64_t PopExplosionRenderer.PieceShape.hashValue.getter()
{
  v1 = *v0;
  sub_190D58870();
  MEMORY[0x193AF4110](v1);
  return sub_190D588C0();
}

__n128 sub_190B9087C@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 16);
  v4 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 29) = *(v1 + 45);
  return result;
}

void sub_190B908C8(uint64_t a1)
{
  swift_beginAccess();
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 52);
  v7 = *(v1 + 16);
  v8 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v8;
  *(v1 + 45) = *(a1 + 29);
  v9 = *(v1 + 52);
  if ((vminv_u16(vmovn_s32(vceqq_f32(*(v1 + 16), v7))) & 1) == 0 || (*(v1 + 48) == v5 ? (v10 = *(v1 + 32) != v4) : (v10 = 1), !v10 ? (v11 = *(v1 + 40) == v3) : (v11 = 0), !v11))
  {
    if (((v9 ^ v6) & 1) == 0)
    {
LABEL_14:
      sub_190B91B5C();
      return;
    }

LABEL_13:
    *(v1 + 192) = 0;
    goto LABEL_14;
  }

  if ((v6 ^ v9))
  {
    goto LABEL_13;
  }
}

void (*sub_190B90988(uint64_t *a1))(__int128 **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  swift_beginAccess();
  v5 = *(v1 + 16);
  v6 = *(v1 + 32);
  *(v4 + 29) = *(v1 + 45);
  *v4 = v5;
  *(v4 + 16) = v6;
  return sub_190B90A1C;
}

void sub_190B90A1C(__int128 **a1)
{
  v1 = *a1;
  v2 = (*a1)[1];
  v3 = **a1;
  v4[0] = v2;
  *(v4 + 13) = *(v1 + 29);
  sub_190B908C8(&v3);

  free(v1);
}

double sub_190B90A74()
{
  result = 0.0;
  __asm { FMOV            V1.2S, #1.0 }

  *&xmmword_1EAD5E900 = 0;
  *(&xmmword_1EAD5E900 + 1) = _D1;
  qword_1EAD5E910 = 0;
  unk_1EAD5E918 = _D1;
  return result;
}

double static PopExplosionRenderer.noBulge.getter()
{
  if (qword_1EAD51E68 != -1)
  {
    swift_once();
  }

  return *&xmmword_1EAD5E900;
}

uint64_t sub_190B90B20(double a1, double a2, double a3, double a4)
{
  result = swift_beginAccess();
  v4[7] = a1;
  v4[8] = a2;
  v4[9] = a3;
  v4[10] = a4;
  return result;
}

uint64_t sub_190B90BC8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  result = swift_beginAccess();
  v6 = *(v4 + 176);
  v7 = *(v4 + 184);
  *(v4 + 176) = v2;
  *(v4 + 184) = v3;
  if (v2 != v6 || v3 != v7)
  {
    *(v4 + 192) = 0;
  }

  return result;
}

uint64_t sub_190B90C5C(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v6 = *(v2 + 176);
  v7 = *(v2 + 184);
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  if (v6 != a1 || v7 != a2)
  {
    *(v2 + 192) = 0;
  }

  return result;
}

void (*sub_190B90CBC(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + 176);
  return sub_190B90D48;
}

void sub_190B90D48(void **a1)
{
  v1 = *a1;
  v2 = v1[3];
  v4 = v1[4];
  v3 = v1[5];
  v5 = *(v3 + 176);
  v6 = *(v3 + 184);
  *(v3 + 176) = v2;
  *(v3 + 184) = v4;
  if (v2 != v5 || v4 != v6)
  {
    *(v1[5] + 192) = 0;
  }

  free(v1);
}

void PopExplosionRenderer.init(device:pixelFormat:parameters:)(void *a1, uint64_t a2, uint64_t a3)
{
  v44[1] = *MEMORY[0x1E69E9840];
  if (qword_1EAD51E68 != -1)
  {
    v41 = a3;
    swift_once();
    a3 = v41;
  }

  v6 = xmmword_1EAD5E900;
  *(v3 + 88) = a1;
  v7 = qword_1EAD5E910;
  v8 = unk_1EAD5E918;
  *(v3 + 56) = v6;
  *(v3 + 72) = v7;
  *(v3 + 80) = v8;
  *(v3 + 96) = 1;
  *(v3 + 168) = 0;
  *(v3 + 176) = vdupq_n_s64(1uLL);
  *(v3 + 192) = 0;
  v9 = *(a3 + 16);
  *(v3 + 16) = *a3;
  *(v3 + 32) = v9;
  *(v3 + 45) = *(a3 + 29);
  type metadata accessor for PopExplosionRenderer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();
  swift_unknownObjectRetain();
  v43 = [v11 bundleForClass_];
  v44[0] = 0;
  v12 = [a1 newDefaultLibraryWithBundle_error_];
  if (!v12)
  {
    v38 = v44[0];
    sub_190D51420();

    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_18;
  }

  v13 = v12;
  v14 = objc_allocWithZone(MEMORY[0x1E6974148]);
  v15 = 0;
  v16 = [v14 init];
  v17 = [v16 colorAttachments];
  v18 = [v17 objectAtIndexedSubscript_];

  if (v18)
  {
    [v18 setPixelFormat_];

    v19 = sub_190D56ED0();
    v20 = [v13 newFunctionWithName_];

    [v16 setVertexFunction_];
    swift_unknownObjectRelease();
    v21 = sub_190D56ED0();
    v22 = [v13 newFunctionWithName_];

    [v16 setFragmentFunction_];
    swift_unknownObjectRelease();
    v44[0] = 0;
    v23 = [a1 newRenderPipelineStateWithDescriptor:v16 error:v44];
    v24 = v44[0];
    if (v23)
    {
      *(v3 + 112) = v23;
      v25 = objc_allocWithZone(MEMORY[0x1E6974030]);
      v26 = v24;
      v27 = [v25 init];
      [v27 setThreadGroupSizeIsMultipleOfThreadExecutionWidth_];
      v28 = sub_190D56ED0();
      v29 = [v13 newFunctionWithName_];

      [v27 setComputeFunction_];
      swift_unknownObjectRelease();
      v44[0] = 0;
      v30 = [a1 newComputePipelineStateWithDescriptor:v27 options:0 reflection:0 error:v44];
      v31 = v44[0];
      if (v30)
      {
        *(v3 + 104) = v30;
        *(v3 + 136) = 1;
        *(v3 + 120) = 1;
        *(v3 + 152) = 1;
        v32 = v31;
        v42 = [a1 newBufferWithLength:2 options:1];
        v33 = *(v3 + 120);
        if ((v33 - 0x400000000000000) >> 59 == 31)
        {
          v34 = [a1 newBufferWithLength:32 * v33 options:1];
          if ((*(v3 + 152) * 144) >> 64 == (144 * *(v3 + 152)) >> 63)
          {
            v35 = v34;
            v36 = [a1 newBufferWithLength_options_];
            v37 = v36;
            if (v42 && v35 && v36)
            {
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              *(v3 + 144) = v42;
              *(v3 + 128) = v35;
              *(v3 + 160) = v37;
              return;
            }

            sub_190B92850();
            swift_allocError();
            swift_willThrow();

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_17;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
      }

      v40 = v44[0];
      sub_190D51420();

      swift_willThrow();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

LABEL_17:
      swift_unknownObjectRelease();
      goto LABEL_18;
    }

    v39 = v44[0];
    sub_190D51420();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

LABEL_18:
    swift_unknownObjectRelease();
    swift_deallocPartialClassInstance();
    return;
  }

  __break(1u);
}

void sub_190B91350()
{
  if (*(v0 + 192))
  {
    return;
  }

  *(v0 + 192) = 1;
  swift_beginAccess();
  if (*(v0 + 52))
  {
    swift_beginAccess();
    v3 = *(v0 + 176);
    v4 = *(v0 + 184);
    v5 = v3 * v4;
    if ((v3 * v4) >> 64 != (v3 * v4) >> 63)
    {
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    v6 = 5 * v5;
    if ((v5 * 5) >> 64 != (5 * v5) >> 63)
    {
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    *(v0 + 136) = v6;
    v7 = 4 * v5;
  }

  else
  {
    swift_beginAccess();
    v8 = *(v0 + 176);
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    v11 = *(v0 + 184);
    v12 = v10 * v11;
    if ((v10 * v11) >> 64 != (v10 * v11) >> 63)
    {
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    if ((v12 - 0x1000000000000000) >> 61 != 7)
    {
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    v6 = 8 * v12;
    *(v0 + 136) = 8 * v12;
    v5 = 2 * v12;
    v7 = 6 * v12;
  }

  *(v0 + 120) = v7;
  *(v0 + 152) = v5;
  if (v6 + 0x4000000000000000 < 0)
  {
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v13 = *(v0 + 88);
  v14 = [v13 newBufferWithLength:2 * v6 options:1];
  v15 = *(v0 + 120);
  if ((v15 - 0x400000000000000) >> 59 != 31)
  {
    goto LABEL_99;
  }

  v16 = v14;
  v17 = [v13 newBufferWithLength:32 * v15 options:1];
  if ((*(v0 + 152) * 144) >> 64 != (144 * *(v0 + 152)) >> 63)
  {
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
    goto LABEL_110;
  }

  v18 = v17;
  v19 = [v13 newBufferWithLength_options_];
  v20 = v19;
  if (v16 && v18 && v19)
  {
    *(v0 + 144) = v16;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(v0 + 128) = v18;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(v0 + 160) = v20;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v21 = [swift_unknownObjectRetain() contents];
    v22 = v18;
    v23 = [swift_unknownObjectRetain() contents];
    v24 = v16;
    v25 = [swift_unknownObjectRetain() contents];
    v26 = v20;
    v95 = *(v0 + 168);
    v27 = swift_beginAccess();
    v30 = *(v0 + 184);
    if (v30 < 0)
    {
LABEL_117:
      __break(1u);
      return;
    }

    if (!v30)
    {
LABEL_73:
      sub_190B91B5C(v27);
      swift_unknownObjectRelease_n();
      swift_unknownObjectRelease_n();
      swift_unknownObjectRelease_n();
      return;
    }

    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v27 = *(v0 + 176);
    *v28.i32 = v27;
    v35 = *&v95 / v27;
    v36 = v30;
    v37 = *(&v95 + 1) / v30;
    *&v38 = v37 * 0.5;
    v39 = v37 * -0.5;
    *&v40 = 0;
    *(&v40 + 1) = v38;
    *&v47 = COERCE_UNSIGNED_INT(v35 * -0.5);
    v41 = COERCE_UNSIGNED_INT(v35 * -0.5);
    *(&v41 + 2) = v39;
    *&v48 = COERCE_UNSIGNED_INT(v35 * 0.5);
    v42 = COERCE_UNSIGNED_INT(v35 * 0.5);
    *(&v42 + 2) = v39;
    v43 = *MEMORY[0x1E69E9B18];
    v44 = *(MEMORY[0x1E69E9B18] + 16);
    v45 = *(MEMORY[0x1E69E9B18] + 32);
    v46 = *(MEMORY[0x1E69E9B18] + 48);
    *(&v47 + 1) = v38;
    *(&v48 + 1) = v38;
    *&v49 = 0;
    *(&v49 + 1) = LODWORD(v39);
    v50 = v30;
    v94 = v27;
    while (1)
    {
      v52 = *(v0 + 52);
      v53 = v52 ^ 1u;
      v54 = v27 + v53;
      if (__OFADD__(v27, v53))
      {
        break;
      }

      if ((v54 & 0x8000000000000000) != 0)
      {
        goto LABEL_116;
      }

      v55 = v31 + 1;
      if (v54)
      {
        v56 = 0;
        v57 = v31;
        v58 = v31 / v36;
        v59 = v31 & 1;
        v60 = v57 + 0.5;
        v61 = (1.0 - ((v57 + 0.5) / v36)) + -0.5;
        v62 = v57 / v50;
        v63 = (1.0 - (v60 / v50)) + -0.5;
        while (1)
        {
          if (v56 >= v54)
          {
            goto LABEL_93;
          }

          v64 = v56 + 1;
          if (__OFADD__(v56, 1))
          {
            break;
          }

          *v29.i32 = v56;
          if ((v52 & 1) == 0)
          {
            v77 = 0;
            v78 = 0;
            *v1.i32 = *v29.i32 + -0.5;
            v79 = &v25[144 * v33 + 128];
            v80 = &v21[32 * v34 + 48];
            while (1)
            {
              v82 = v34 + v77;
              v83 = v34 - 0xFFFF + v77;
              if (v59 == v78)
              {
                if ((v33 & 0x8000000000000000) != 0)
                {
                  goto LABEL_75;
                }

                if (v33 >> 16)
                {
                  goto LABEL_77;
                }

                *&v84 = (*v1.i32 + -0.5) / *v28.i32;
                *(&v84 + 1) = v58;
                *(v80 - 48) = v47;
                *(v80 - 32) = v84;
                *(v80 - 24) = v33;
                if ((v82 & 0x8000000000000000) != 0)
                {
                  goto LABEL_78;
                }

                if (v82 >> 16)
                {
                  goto LABEL_81;
                }

                v23[v32] = v82;
                v85 = v32 + 1;
                if (__OFADD__(v32, 1))
                {
                  goto LABEL_82;
                }

                *v2.i32 = (*v1.i32 + 0.5) / *v28.i32;
                *&v2.i32[1] = v58;
                *(v80 - 16) = v48;
                *v80 = v2.i64[0];
                *(v80 + 8) = v33;
                if (!v83)
                {
                  goto LABEL_84;
                }

                v23[v85] = v34 + v77 + 1;
                v9 = __OFADD__(v85, 1);
                v86 = v32 + 2;
                if (v9)
                {
                  goto LABEL_87;
                }

                *v2.i32 = *v1.i32 / *v28.i32;
                v1 = v2;
                *&v1.i32[1] = v55 / v36;
                *(v80 + 16) = v49;
                *(v80 + 32) = v1.i64[0];
                *(v80 + 40) = v33;
                if (v82 > 0xFFFD)
                {
                  goto LABEL_88;
                }

                v23[v86] = v34 + v77 + 2;
                v9 = __OFADD__(v86, 1);
                v87 = v32 + 3;
                if (v9)
                {
                  goto LABEL_90;
                }

                v1.i64[0] = *(v0 + 168);
                v23[v87] = -1;
                v32 += 4;
                if (__OFADD__(v87, 1))
                {
                  goto LABEL_92;
                }
              }

              else
              {
                if ((v33 & 0x8000000000000000) != 0)
                {
                  __break(1u);
LABEL_75:
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
                  __break(1u);
LABEL_83:
                  __break(1u);
LABEL_84:
                  __break(1u);
LABEL_85:
                  __break(1u);
LABEL_86:
                  __break(1u);
LABEL_87:
                  __break(1u);
LABEL_88:
                  __break(1u);
LABEL_89:
                  __break(1u);
LABEL_90:
                  __break(1u);
LABEL_91:
                  __break(1u);
LABEL_92:
                  __break(1u);
LABEL_93:
                  __break(1u);
                  goto LABEL_94;
                }

                if (v33 >> 16)
                {
                  goto LABEL_76;
                }

                *v2.i32 = *v1.i32 / *v28.i32;
                *&v88 = *v1.i32 / *v28.i32;
                *(&v88 + 1) = v58;
                *(v80 - 48) = v40;
                *(v80 - 32) = v88;
                *(v80 - 24) = v33;
                if ((v82 & 0x8000000000000000) != 0)
                {
                  goto LABEL_79;
                }

                if (v82 >> 16)
                {
                  goto LABEL_80;
                }

                v23[v32] = v82;
                v89 = v32 + 1;
                if (__OFADD__(v32, 1))
                {
                  goto LABEL_83;
                }

                *&v90 = (*v1.i32 + -0.5) / *v28.i32;
                *(&v90 + 1) = v55 / v36;
                *(v80 - 16) = v41;
                *v80 = v90;
                *(v80 + 8) = v33;
                if (!v83)
                {
                  goto LABEL_85;
                }

                v23[v89] = v34 + v77 + 1;
                v9 = __OFADD__(v89, 1);
                v91 = v32 + 2;
                if (v9)
                {
                  goto LABEL_86;
                }

                *&v92 = (*v1.i32 + 0.5) / *v28.i32;
                *(&v92 + 1) = v55 / v36;
                *(v80 + 16) = v42;
                *(v80 + 32) = v92;
                *(v80 + 40) = v33;
                if (v82 > 0xFFFD)
                {
                  goto LABEL_89;
                }

                v23[v91] = v34 + v77 + 2;
                v9 = __OFADD__(v91, 1);
                v93 = v32 + 3;
                if (v9)
                {
                  goto LABEL_91;
                }

                v1.i64[0] = *(v0 + 168);
                v23[v93] = -1;
                v32 += 4;
                if (__OFADD__(v93, 1))
                {
                  __break(1u);
                  goto LABEL_71;
                }
              }

              v81.f32[0] = *v2.i32 + -0.5;
              v81.f32[1] = v61;
              *v1.i8 = vmul_f32(v81, *v1.i8);
              *(v79 - 32) = 0;
              v1 = vtrn2q_s32(vrev64q_s32(vzip1q_s32(v1, v28)), 0);
              *(v79 - 7) = v1;
              *(v79 - 6) = 0uLL;
              *(v79 - 5) = 0uLL;
              *(v79 - 16) = 0;
              *(v79 - 3) = v43;
              *(v79 - 2) = v44;
              ++v33;
              v80 += 96;
              v77 += 3;
              *(v79 - 1) = v45;
              *v79 = v46;
              v79 += 144;
              v1.i32[0] = v29.i32[0];
              v78 = 1;
              if (v77 == 6)
              {
                v34 += v77;
                goto LABEL_27;
              }
            }
          }

          if ((v33 & 0x8000000000000000) != 0)
          {
            goto LABEL_95;
          }

          if (v33 >> 16)
          {
            goto LABEL_96;
          }

          v1.i32[1] = 0;
          *v1.i32 = *v29.i32 / *v28.i32;
          v2 = v1;
          *&v2.i32[1] = v62;
          v65 = &v21[32 * v34];
          *v65 = v47;
          *(v65 + 2) = v2.i64[0];
          *(v65 + 12) = v33;
          if ((v34 & 0x8000000000000000) != 0)
          {
            goto LABEL_98;
          }

          if (v34 >> 16)
          {
            goto LABEL_100;
          }

          v23[v32] = v34;
          v66 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_102;
          }

          *&v67 = v64 / *v28.i32;
          *(&v67 + 1) = v62;
          v68 = &v21[32 * v34 + 32];
          *v68 = v48;
          *(v68 + 2) = v67;
          *(v68 + 12) = v33;
          if (v34 == 0xFFFF)
          {
            goto LABEL_103;
          }

          v23[v66] = v34 + 1;
          v9 = __OFADD__(v66, 1);
          v69 = v32 + 2;
          if (v9)
          {
            goto LABEL_104;
          }

          *&v1.i32[1] = v55 / v50;
          v70 = &v21[32 * v34 + 64];
          *v70 = v41;
          *(v70 + 2) = v1.i64[0];
          *(v70 + 12) = v33;
          if (v34 > 0xFFFD)
          {
            goto LABEL_105;
          }

          v23[v69] = v34 + 2;
          v9 = __OFADD__(v69, 1);
          v71 = v32 + 3;
          if (v9)
          {
            goto LABEL_106;
          }

          *(&v72 + 1) = v55 / v50;
          v73 = &v21[32 * v34 + 96];
          *v73 = v42;
          *&v72 = v64 / *v28.i32;
          *(v73 + 2) = v72;
          *(v73 + 12) = v33;
          if (v34 == 65533)
          {
            goto LABEL_107;
          }

          v23[v71] = v34 + 3;
          v9 = __OFADD__(v71, 1);
          v74 = v32 + 4;
          if (v9)
          {
            goto LABEL_108;
          }

          v75 = *(v0 + 168);
          v23[v74] = -1;
          v32 += 5;
          if (__OFADD__(v74, 1))
          {
            goto LABEL_109;
          }

          *v29.i32 = ((*v29.i32 + 0.5) / *v28.i32) + -0.5;
          *&v29.i32[1] = v63;
          *v29.i8 = vmul_f32(*v29.i8, v75);
          v76 = &v25[144 * v33];
          v76->i32[0] = 0;
          v29 = vtrn2q_s32(vrev64q_s32(vzip1q_s32(v29, v28)), 0);
          v76[1] = v29;
          v76[2] = 0uLL;
          v76[3] = 0uLL;
          v76[4].i32[0] = 0;
          v76[5] = v43;
          v76[6] = v44;
          v34 += 4;
          v76[7] = v45;
          v76[8] = v46;
          ++v33;
LABEL_27:
          v56 = v64;
          if (v64 == v54)
          {
            goto LABEL_21;
          }
        }

LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

LABEL_21:
      v31 = v55;
      v51 = v55 == v30;
      v27 = v94;
      if (v51)
      {
        goto LABEL_73;
      }
    }

LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

LABEL_71:
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void sub_190B91B5C()
{
  sub_190B91350();
  v1 = *(v0 + 160);
  v2 = [swift_unknownObjectRetain() contents];
  v3 = v1;
  v4 = *(v0 + 152);
  if (v4 < 0)
  {
LABEL_29:
    __break(1u);
    return;
  }

  if (v4)
  {
    swift_beginAccess();
    v7 = v2 + 32;
    while (1)
    {
      v8 = (v7 - 16);
      v5.i64[0] = *vld2_f32(v8).val;
      v9 = *(v0 + 168);
      if (*v9.i32 >= *&v9.i32[1])
      {
        v9.i32[0] = HIDWORD(*(v0 + 168));
      }

      *v9.i32 = *v9.i32 * 0.5;
      *v5.i8 = vdiv_f32(*v5.i8, vdup_lane_s32(v9, 0));
      v10 = fabsf(sqrtf(1.0 - fminf(sqrtf(vaddv_f32(vmul_f32(*v5.i8, *v5.i8))), 1.0)));
      v11 = vzip1q_s32(v5, v5);
      v11.f32[1] = -v10;
      v12 = vmulq_f32(v11, v11);
      *&v13 = v12.f32[2] + vaddv_f32(*v12.f32);
      v14 = vrsqrte_f32(v13);
      v15 = vmul_f32(v14, vrsqrts_f32(v13, vmul_f32(v14, v14)));
      v16 = vmulq_n_f32(v11, vmul_f32(v15, vrsqrts_f32(v13, vmul_f32(v15, v15))).f32[0]);
      v16.i32[3] = v6;
      v34 = v6;
      *v17.i64 = sub_190B91EA8(v16, *(v0 + 24));
      v18 = (*(v0 + 16) * *(v0 + 20)) * 0.5;
      if (v18 < 0.0)
      {
        break;
      }

      if (COERCE_INT(fabs(v18 + v18)) > 2139095039)
      {
        goto LABEL_26;
      }

      v33 = v17;
      v19 = sub_190B92730(0x1000001uLL);
      v20 = ((v18 + v18) * vcvts_n_f32_u32(v19, 0x18uLL)) - v18;
      if (v19 == 0x1000000)
      {
        v20 = v18;
      }

      v21 = fabsf(*(v0 + 16) + v20);
      *&v22 = vmulq_n_f32(v33, v21).u64[0];
      *(&v22 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(v21, v33, 2));
      *v7 = v22;
      *(v7 + 8) = *(v0 + 28);
      *&v23 = sub_190B91DF8();
      *(v7 + 1) = v23;
      *&v23 = *vld2_f32(v8).val;
      *&v23 = vdiv_f32(*&v23, vmul_f32(*(v0 + 168), 0x3F0000003F000000));
      v24 = sqrtf(vaddv_f32(vmul_f32(*&v23, *&v23)));
      if (v24 < 0.0)
      {
        v25 = 0.0;
      }

      else
      {
        v25 = v24;
      }

      if (v24 <= 1.0)
      {
        v26 = v25;
      }

      else
      {
        v26 = 1.0;
      }

      v27 = *(v0 + 40);
      v28 = v27 * 0.5;
      if ((v27 * 0.5) < 0.0)
      {
        goto LABEL_27;
      }

      if (COERCE_INT(fabs(v28 + v28)) > 2139095039)
      {
        goto LABEL_28;
      }

      v29 = sub_190B92730(0x1000001uLL);
      *v5.i32 = ((v28 + v28) * vcvts_n_f32_u32(v29, 0x18uLL)) - v28;
      if (v29 == 0x1000000)
      {
        *v5.i32 = v28;
      }

      v30 = *(v0 + 32);
      v31 = *v5.i32 + v30;
      if (v31 < 0.0)
      {
        v32 = -0.0;
      }

      else
      {
        v32 = -v31;
      }

      *(v7 - 8) = v32 + (v26 * (-fabsf(*v5.i32) - v32));
      v7 += 144;
      --v4;
      v6 = v34;
      if (!v4)
      {
        return;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }
}

double sub_190B91DF8()
{
  v0 = sub_190B92730(0x1000001uLL);
  v1 = (vcvts_n_f32_u32(v0, 0x18uLL) * 6.2832) + 0.0;
  if (v0 == 0x1000000)
  {
    v2 = 6.2832;
  }

  else
  {
    v2 = v1;
  }

  v3 = vcvts_n_f32_u32(sub_190B92730(0x1000001uLL), 0x18uLL);
  v4 = acosf(1.0 - ((v3 + 0.0) + (v3 + 0.0)));
  sinval = __sincosf_stret(v4).__sinval;
  v6 = __sincosf_stret(v2);
  *&v7 = sinval * v6.__cosval;
  *(&v7 + 1) = sinval * v6.__sinval;
  return v7;
}

double sub_190B91EA8(float32x4_t a1, float a2)
{
  v3 = vcvts_n_f32_u32(sub_190B92730(0x1000001uLL), 0x18uLL) + 0.0;
  v4 = cosf(a2);
  v24 = v4 + ((1.0 - v4) * v3);
  v5 = sub_190B92730(0x1000001uLL);
  v6 = (vcvts_n_f32_u32(v5, 0x18uLL) * 6.2832) + 0.0;
  if (v5 == 0x1000000)
  {
    v6 = 6.2832;
  }

  v7 = sqrtf(1.0 - (v24 * v24));
  v8 = __sincosf_stret(v6);
  *v9.i64 = simd_quaternion(a1);
  v10 = vmulq_f32(v9, xmmword_190DF6C00);
  v11 = vnegq_f32(v10);
  v12 = vtrn2q_s32(v10, vtrn1q_s32(v10, v11));
  v13 = vmlaq_n_f32(vmulq_n_f32(vextq_s8(v10, v11, 8uLL), v8.__sinval * v7), vextq_s8(v12, v12, 8uLL), v8.__cosval * v7);
  v14 = vrev64q_s32(v10);
  v14.i32[0] = v11.i32[1];
  v14.i32[3] = v11.i32[2];
  v15 = vmlaq_n_f32(v13, v14, v24);
  v16 = vnegq_f32(v15);
  v17 = vtrn2q_s32(v15, vtrn1q_s32(v15, v16));
  v18 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v15, v16, 8uLL), *v9.f32, 1), vextq_s8(v17, v17, 8uLL), v9.f32[0]);
  v19 = vrev64q_s32(v15);
  v19.i32[0] = v16.i32[1];
  v19.i32[3] = v16.i32[2];
  v20 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v15, v9, 3), v19, v9, 2), v18);
  v21 = vmulq_f32(v20, v20);
  v19.f32[0] = v21.f32[2] + vaddv_f32(*v21.f32);
  *v21.f32 = vrsqrte_f32(v19.u32[0]);
  *v21.f32 = vmul_f32(*v21.f32, vrsqrts_f32(v19.u32[0], vmul_f32(*v21.f32, *v21.f32)));
  *&result = vmulq_n_f32(v20, vmul_f32(*v21.f32, vrsqrts_f32(v19.u32[0], vmul_f32(*v21.f32, *v21.f32))).f32[0]).u64[0];
  return result;
}

void sub_190B92014(void *a1, void *a2, void *a3, double a4)
{
  v70 = *MEMORY[0x1E69E9840];
  v9 = [a1 height];
  v10 = v9 / [a1 width];
  __asm { FMOV            V2.2S, #1.0 }

  *(&_D2 + 1) = v10;
  v15 = *(v4 + 168);
  *(v4 + 168) = _D2;
  if (*&v15 != 1.0 || v10 != *(&v15 + 1))
  {
    *(v4 + 192) = 0;
  }

  sub_190B91350();
  v16 = [a3 computeCommandEncoder];
  if (v16)
  {
    v17 = v16;
    v18 = *(v4 + 104);
    [v16 setComputePipelineState_];
    swift_beginAccess();
    v19 = *(v4 + 152);
    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v19))
    {
      v20 = a4;
      v21 = *(v4 + 48);
      *v67 = v20;
      v67[1] = v21;
      v67[2] = v19;
      [v17 setBytes:v67 length:12 atIndex:0];
      [v17 setBuffer:*(v4 + 160) offset:0 atIndex:1];
      v22 = [v18 threadExecutionWidth];
      v23 = [v18 maxTotalThreadsPerThreadgroup];
      v24 = [v18 threadExecutionWidth];
      if (v24)
      {
        if (v23 == 0x8000000000000000 && v24 == -1)
        {
          goto LABEL_33;
        }

        v25 = v22 * (v23 / v24);
        if ((v22 * (v23 / v24)) >> 64 == v25 >> 63)
        {
          v26 = *(v4 + 152);
          _VF = __OFADD__(v26, v25);
          v27 = v26 + v25;
          if (!_VF)
          {
            _VF = __OFSUB__(v27, 1);
            v28 = v27 - 1;
            if (!_VF)
            {
              if (v25)
              {
                if (v28 != 0x8000000000000000 || v25 != -1)
                {
                  *v57 = v28 / v25;
                  *&v57[8] = vdupq_n_s64(1uLL);
                  v68 = v22 * (v23 / v24);
                  v69 = *&v57[8];
                  [v17 dispatchThreadgroups:v57 threadsPerThreadgroup:&v68];
                  [v17 endEncoding];
                  swift_unknownObjectRelease();
                  v30 = [a2 width];
                  v56 = 1.7321 / (v30 / [a2 height]);
                  v31 = [a1 width];
                  v32 = [a2 width];
                  LODWORD(v33) = 0;
                  *(&v33 + 1) = COERCE_FLOAT(*(v4 + 168)) / ((-2.0 / v56) * (v31 / v32));
                  v34 = sub_190B928A4(xmmword_190DCE980, v33, xmmword_190DD0BB0);
                  v54 = v35;
                  v55 = v34;
                  v52 = v37;
                  v53 = v36;
                  v38 = [objc_allocWithZone(MEMORY[0x1E6974128]) init];
                  v39 = [v38 colorAttachments];
                  v40 = [v39 objectAtIndexedSubscript_];

                  if (v40)
                  {
                    [v40 setLoadAction_];

                    v41 = [v38 colorAttachments];
                    v42 = [v41 objectAtIndexedSubscript_];

                    if (v42)
                    {
                      [v42 setClearColor_];

                      v43 = [v38 colorAttachments];
                      v44 = [v43 objectAtIndexedSubscript_];

                      if (v44)
                      {
                        [v44 setStoreAction_];

                        v45 = [v38 colorAttachments];
                        v46 = [v45 objectAtIndexedSubscript_];

                        if (v46)
                        {
                          [v46 setTexture_];

                          v47 = [a3 renderCommandEncoderWithDescriptor_];
                          if (v47)
                          {
                            v48 = v47;
                            [v47 setRenderPipelineState_];
                            swift_beginAccess();
                            v49 = *(v4 + 56);
                            v50 = *(v4 + 72);
                            v51 = *(v4 + 80);
                            *v57 = v55;
                            *&v57[16] = v54;
                            v58 = v53;
                            v59 = v52;
                            v60 = LODWORD(v56);
                            v61 = xmmword_190DF6C10;
                            v62 = xmmword_190DF6C20;
                            v63 = xmmword_190DF6C30;
                            v64 = v49;
                            v65 = v50;
                            v66 = v51;
                            [v48 setVertexBytes:v57 length:160 atIndex:0];
                            [v48 setVertexBuffer:*(v4 + 128) offset:0 atIndex:1];
                            [v48 setVertexBuffer:*(v4 + 160) offset:0 atIndex:2];
                            v67[0] = 0;
                            [v48 setFragmentBytes:v67 length:4 atIndex:0];
                            [v48 setFragmentTexture:a1 atIndex:0];
                            [v48 drawIndexedPrimitives:4 indexCount:*(v4 + 136) indexType:0 indexBuffer:*(v4 + 144) indexBufferOffset:0];
                            [v48 endEncoding];
                            swift_unknownObjectRelease();
                          }

                          return;
                        }

LABEL_38:
                        __break(1u);
                        return;
                      }

LABEL_37:
                      __break(1u);
                      goto LABEL_38;
                    }
                  }

                  else
                  {
                    __break(1u);
                  }

                  __break(1u);
                  goto LABEL_37;
                }

LABEL_34:
                __break(1u);
              }

              goto LABEL_32;
            }

LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_28;
  }
}

uint64_t PopExplosionRenderer.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t PopExplosionRenderer.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_190B926A4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x193AF7A60](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x193AF7A60](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_190B92730(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    v5 = 0;
    MEMORY[0x193AF7A60](&v5, 8);
    v3 = v5 * v2;
    if (v3 < v1)
    {
      for (i = -v1 % v1; i > v3; v3 = v5 * v2)
      {
        v5 = 0;
        MEMORY[0x193AF7A60](&v5, 8);
      }
    }

    return HIDWORD(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s7ChatKit20PopExplosionRendererC10ParametersV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if ((vminv_u16(vmovn_s32(vceqq_f32(*a1, *a2))) & 1) != 0 && *(a1 + 32) == *(a2 + 32) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    v2 = *(a2 + 36) ^ *(a1 + 36) ^ 1;
  }

  return v2 & 1;
}

unint64_t sub_190B92850()
{
  result = qword_1EAD5E920;
  if (!qword_1EAD5E920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E920);
  }

  return result;
}

__n128 sub_190B928A4(float32x4_t a1, float32x4_t a2, float32x4_t a3)
{
  v3 = vsubq_f32(a2, a1);
  v4 = vmulq_f32(v3, v3);
  v5 = vaddv_f32(*v4.f32);
  *v4.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v5));
  *v4.f32 = vmul_f32(*v4.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v5), vmul_f32(*v4.f32, *v4.f32)));
  v6 = vmulq_n_f32(v3, vmul_f32(*v4.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v5), vmul_f32(*v4.f32, *v4.f32))).f32[0]);
  v7 = vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL);
  v8 = vmlaq_f32(vmulq_f32(v7, vnegq_f32(a3)), v6, vextq_s8(vuzp1q_s32(a3, a3), a3, 0xCuLL));
  v25 = v6;
  v9 = vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL);
  v10 = vmulq_f32(v8, v8);
  *&v11 = v10.f32[1] + (v10.f32[2] + v10.f32[0]);
  *v10.f32 = vrsqrte_f32(v11);
  *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32)));
  v24 = vmulq_n_f32(v9, vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32))).f32[0]);
  v12 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL), vnegq_f32(v6)), v24, v7);
  v26 = vextq_s8(v12, v12, 0xCuLL);
  v27 = vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL);
  v28 = vdupq_laneq_s32(v12, 2).u32[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E938);
  v13 = swift_allocObject();
  *&v14 = __PAIR64__(v28, v24.u32[0]);
  *(&v14 + 1) = v25.u32[0];
  v29 = v14;
  *&v15 = __PAIR64__(v26.u32[1], v24.u32[1]);
  *(&v15 + 1) = v25.u32[1];
  v13[2] = v14;
  v13[3] = v15;
  *&v14 = __PAIR64__(v26.u32[2], v24.u32[2]);
  *(&v14 + 1) = v25.u32[2];
  v16 = v14;
  v17 = vmulq_f32(v24, a2);
  v18 = vmulq_f32(v27, a2);
  v19 = vadd_f32(vzip1_s32(*v17.i8, *v18.i8), vzip2_s32(*v17.i8, *v18.i8));
  v20 = vextq_s8(v17, v17, 8uLL);
  *v20.f32 = vadd_f32(vzip1_s32(*v20.f32, *&vextq_s8(v18, v18, 8uLL)), v19);
  v21 = vmulq_f32(v25, a2);
  *&v22 = vnegq_f32(v20).u64[0];
  *(&v22 + 1) = __PAIR64__(1.0, -(v21.f32[2] + vaddv_f32(*v21.f32)));
  v13[4] = v16;
  v13[5] = v22;
  swift_setDeallocating();
  swift_deallocClassInstance();
  return v29;
}

unint64_t sub_190B92AA0()
{
  result = qword_1EAD5E928;
  if (!qword_1EAD5E928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E928);
  }

  return result;
}

__n128 __swift_memcpy37_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_190B92D0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 37))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 36);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_190B92D50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 37) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 37) = 0;
    }

    if (a2)
    {
      *(result + 36) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_190B92DC0()
{
  result = qword_1EAD5E930;
  if (!qword_1EAD5E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E930);
  }

  return result;
}

double simd_quaternion(float32x4_t a1)
{
  v1 = vmulq_f32(a1, xmmword_190DD0BB0);
  if ((v1.f32[2] + vaddv_f32(*v1.f32)) >= 0.0)
  {
    v34 = vaddq_f32(a1, xmmword_190DD0BB0);
    v35 = vmulq_f32(v34, v34);
    *&v36 = v35.f32[2] + vaddv_f32(*v35.f32);
    *v35.f32 = vrsqrte_f32(v36);
    *v35.f32 = vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32)));
    v37 = vmulq_n_f32(v34, vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32))).f32[0]);
    v38 = vmulq_f32(v37, xmmword_190DF6C40);
    v39 = vmlaq_f32(vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL), xmmword_190DCE960, v37);
    *&result = vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL).u64[0];
  }

  else
  {
    v2 = vrsqrte_f32(1065353216);
    v3 = vmul_f32(v2, vrsqrts_f32(1065353216, vmul_f32(v2, v2)));
    LODWORD(v4) = vmul_f32(v3, vrsqrts_f32(1065353216, vmul_f32(v3, v3))).u32[0];
    v6 = vmulq_f32(a1, a1);
    v5 = vaddv_f32(*v6.f32);
    v6.i32[1] = 0;
    *&v7 = v6.f32[2] + v5;
    v8 = vrsqrte_f32(COERCE_UNSIGNED_INT(v6.f32[2] + v5));
    v9 = vmul_f32(v8, vrsqrts_f32(v7, vmul_f32(v8, v8)));
    v10 = vaddq_f32(vmulq_n_f32(xmmword_190DD0BB0, v4), vmulq_n_f32(a1, vmul_f32(v9, vrsqrts_f32(v7, vmul_f32(v9, v9))).f32[0]));
    v11 = vmulq_f32(v10, v10);
    v12 = v11.f32[2] + vaddv_f32(*v11.f32);
    if (v12 <= 1.4211e-14)
    {
      *&result = vmulq_n_f32(xmmword_190DCE980, v4).u64[0];
    }

    else
    {
      v13 = v12;
      v14 = vrsqrte_f32(LODWORD(v12));
      v15 = vmul_f32(v14, vrsqrts_f32(LODWORD(v13), vmul_f32(v14, v14)));
      v16 = vmulq_n_f32(v10, vmul_f32(v15, vrsqrts_f32(LODWORD(v13), vmul_f32(v15, v15))).f32[0]);
      v17 = vaddq_f32(v16, xmmword_190DD0BB0);
      v18 = vmulq_f32(v17, v17);
      *&v19 = v18.f32[2] + vaddv_f32(*v18.f32);
      *v18.f32 = vrsqrte_f32(v19);
      *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32)));
      v20 = vmulq_n_f32(v17, vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32))).f32[0]);
      v21 = vmulq_f32(v20, xmmword_190DF6C40);
      v22 = vmlaq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), xmmword_190DCE960, v20);
      v23 = vmulq_f32(v20, xmmword_190DD0BB0);
      v24 = vaddq_f32(a1, v16);
      v25 = vmulq_f32(v24, v24);
      v6.f32[0] = v25.f32[2] + vaddv_f32(*v25.f32);
      *v25.f32 = vrsqrte_f32(*v6.f32);
      *v25.f32 = vmul_f32(*v25.f32, vrsqrts_f32(*v6.f32, vmul_f32(*v25.f32, *v25.f32)));
      v26 = vmulq_n_f32(v24, vmul_f32(*v25.f32, vrsqrts_f32(*v6.f32, vmul_f32(*v25.f32, *v25.f32))).f32[0]);
      v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), vnegq_f32(v16)), v26, vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL));
      v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
      v29 = vmulq_f32(v16, v26);
      v28.f32[3] = v29.f32[2] + vaddv_f32(*v29.f32);
      v30 = vnegq_f32(v28);
      v31 = vtrn2q_s32(v28, vtrn1q_s32(v28, v30));
      v32 = vrev64q_s32(v28);
      v32.i32[0] = v30.i32[1];
      v32.i32[3] = v30.i32[2];
      *&result = vaddq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, v23.f32[2] + vaddv_f32(*v23.f32)), v32, *v22.f32, 1), vmlaq_laneq_f32(vmulq_n_f32(vextq_s8(v28, v30, 8uLL), v22.f32[0]), vextq_s8(v31, v31, 8uLL), v22, 2)).u64[0];
    }
  }

  return result;
}

Swift::Bool __swiftcall CKTextBalloonView.beginTextSelection()()
{
  if (CKIsRunningInMacCatalyst())
  {
    LOBYTE(v1) = 0;
  }

  else
  {
    v1 = [v0 textView];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 respondsToSelector_];
      if (v3)
      {
        v4 = [v0 color];
        objc_opt_self();
        v5 = v0;
        if (swift_dynamicCastObjCClass())
        {
          v6 = -1;
        }

        else
        {
          v6 = v4;
        }

        if (qword_1EAD46228 != -1)
        {
          swift_once();
        }

        v7 = sub_190D53040();
        __swift_project_value_buffer(v7, qword_1EAD9D748);
        v8 = sub_190D53020();
        v9 = sub_190D576C0();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&dword_19020E000, v8, v9, "Starting text selection", v10, 2u);
          MEMORY[0x193AF7A40](v10, -1, -1);
        }

        [v5 setIgnoreSelectionEvent_];
        if ([v2 respondsToSelector_])
        {
          [v2 startSelectionForColor_];
        }
      }

      LOBYTE(v1) = v3;
    }
  }

  return v1;
}

uint64_t sub_190B93264()
{
  v1 = *v0;
  sub_190D58870();
  MEMORY[0x193AF4110](qword_190DF7010[v1]);
  return sub_190D588C0();
}

uint64_t sub_190B932EC()
{
  v1 = *v0;
  sub_190D58870();
  MEMORY[0x193AF4110](qword_190DF7010[v1]);
  return sub_190D588C0();
}

void *sub_190B93338@<X0>(void *result@<X0>, char *a2@<X8>)
{
  v2 = *result + 1;
  if (v2 >= 4)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0x2010300u >> (8 * v2);
  }

  *a2 = v3;
  return result;
}

uint64_t sub_190B9337C(uint64_t a1, uint64_t a2)
{
  v4 = sub_190B94E90();
  v5 = sub_190B94EE4();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

uint64_t CKChatInputController.commitPayload(_:forPlugin:allowAllCommits:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 209) = a4;
  *(v5 + 160) = a3;
  *(v5 + 168) = v4;
  *(v5 + 144) = a1;
  *(v5 + 152) = a2;
  return MEMORY[0x1EEE6DFA0](sub_190B933FC, 0, 0);
}

uint64_t sub_190B933FC()
{
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_190B93518;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD551D0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_190892610;
  v0[13] = &block_descriptor_95;
  v0[14] = v2;
  [v1 checkForTouchInRemoteProcessIfNecessaryWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_190B93518()
{

  return MEMORY[0x1EEE6DFA0](sub_190B935F8, 0, 0);
}

uint64_t sub_190B935F8()
{
  *(v0 + 210) = *(v0 + 208);
  v1 = IMBalloonExtensionIDWithSuffix();
  if (v1)
  {
    v3 = *(v0 + 152);
    v2 = *(v0 + 160);
    v4 = v1;
    v5 = sub_190D56F10();
    v7 = v6;

    if (v5 == v3 && v7 == v2)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_190D58760();
    }
  }

  else
  {
    v9 = 0;
  }

  *(v0 + 211) = v9 & 1;
  v10 = *(v0 + 144);
  if (v10)
  {
    v11 = v10;
    v12 = swift_task_alloc();
    *(v0 + 176) = v12;
    *v12 = v0;
    v12[1] = sub_190B93780;
    v13 = *(v0 + 168);
    v14 = *(v0 + 144);
  }

  else
  {
    v15 = swift_task_alloc();
    *(v0 + 200) = v15;
    *v15 = v0;
    v15[1] = sub_190B93C08;
    v13 = *(v0 + 168);
    v14 = 0;
  }

  return sub_190B93D60(v14, v13);
}

uint64_t sub_190B93780(char a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_190B93CFC;
  }

  else
  {
    *(v4 + 212) = a1 & 1;
    v5 = sub_190B938AC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_190B938AC()
{
  if (*(v0 + 212))
  {
    goto LABEL_12;
  }

  v1 = *(v0 + 160);
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = *(v0 + 152) & 0xFFFFFFFFFFFFLL;
  }

  if (!v2 || (*(v0 + 211) & 1) == 0 && (v3 = *(v0 + 168), v4 = sub_190D56ED0(), LODWORD(v3) = [v3 switcherPluginCanMessageAPIOnBehalfOfPlugin_], v4, !v3))
  {
LABEL_12:
    v9 = *(v0 + 144);
    sub_190B94024();
    swift_allocError();
    v11 = 2;
    goto LABEL_13;
  }

  v5 = [*(v0 + 168) delegate];
  if (!v5)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }

  v8 = [v5 chatInputControllerCanSend_];
  swift_unknownObjectRelease();
  if ((v8 & 1) == 0)
  {
    v9 = *(v0 + 144);
    sub_190B94024();
    swift_allocError();
    *v14 = 0;
    goto LABEL_14;
  }

  v9 = *(v0 + 144);
  if ((*(v0 + 209) & 1) != 0 || *(v0 + 210))
  {
    [*(v0 + 144) setUseDirectSend_];
    v15 = [v9 pluginBundleID];
    v16 = *(v0 + 144);
    if (v15)
    {
    }

    else
    {
      v17 = sub_190D56ED0();
      [v16 setPluginBundleID_];
    }

    sub_190D572A0();
    *(v0 + 192) = sub_190D57290();
    v18 = sub_190D57240();
    v20 = v19;
    v5 = sub_190B93B20;
    v6 = v18;
    v7 = v20;

    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }

  sub_190B94024();
  swift_allocError();
  v11 = 1;
LABEL_13:
  *v10 = v11;
LABEL_14:
  swift_willThrow();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_190B93B20()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);

  [v1 deferredCommitPayload_];

  return MEMORY[0x1EEE6DFA0](sub_190B93BA4, 0, 0);
}

uint64_t sub_190B93BA4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_190B93C08()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_190B93CFC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_190B93D60(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_190B93D80, 0, 0);
}

uint64_t sub_190B93D80()
{
  if (([*(v0 + 24) currentPluginIsDT] & 1) == 0 && (objc_msgSend(*(v0 + 24), sel_handwritingIsDisplayed) & 1) == 0)
  {
    v1 = [*(v0 + 24) currentPluginIsPhotos];
    if (!v1)
    {
      v10 = *(v0 + 8);
      goto LABEL_14;
    }
  }

  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = [v2 pluginBundleID];
    if (v3)
    {
      v4 = v3;
      v5 = sub_190D56F10();
      v7 = v6;

      v8 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v8 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        sub_190B94024();
        swift_allocError();
        *v9 = 2;
        swift_willThrow();
        v10 = *(v0 + 8);
        v1 = 0;
LABEL_14:

        return v10(v1);
      }
    }
  }

  v11 = swift_task_alloc();
  *(v0 + 32) = v11;
  *v11 = v0;
  v11[1] = sub_190B93F20;
  v12 = *(v0 + 16);

  return sub_190B94078(v12);
}

uint64_t sub_190B93F20()
{
  v4 = *v1;

  v2 = *(v4 + 8);

  return v2(v0 == 0);
}

unint64_t sub_190B94024()
{
  result = qword_1EAD5E940;
  if (!qword_1EAD5E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E940);
  }

  return result;
}

uint64_t sub_190B94078(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_190B94120, 0, 0);
}

uint64_t sub_190B94120()
{
  v65 = v0;
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = qword_1EAD51CF8;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = sub_190D53040();
    __swift_project_value_buffer(v4, qword_1EAD9E118);
    v5 = v3;
    v6 = sub_190D53020();
    v7 = sub_190D576C0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 16);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v5;
      *v10 = v8;
      v11 = v5;
      _os_log_impl(&dword_19020E000, v6, v7, "handling empty payload: %@", v9, 0xCu);
      sub_19022EEA4(v10, &unk_1EAD54610);
      MEMORY[0x193AF7A40](v10, -1, -1);
      MEMORY[0x193AF7A40](v9, -1, -1);
    }

    v12 = v5;
    v13 = [v12 pluginBundleID];
    if (!v13)
    {
      if ([*(v0 + 24) currentPluginIsDT] && objc_msgSend(v12, sel_shouldExpire))
      {
        v14 = [v12 fileURL];
        v15 = v14 == 0;
        if (v14)
        {
          v16 = v14;
          sub_190D515B0();

          v17 = 0;
        }

        else
        {
          v17 = 1;
        }

        v31 = *(v0 + 40);
        v32 = sub_190D515F0();
        (*(*(v32 - 8) + 56))(v31, v17, 1, v32);
        sub_19022EEA4(v31, &unk_1EAD55F20);
      }

      else
      {
        v15 = 0;
      }

      if ([*(v0 + 24) currentPluginIsPhotos] && (objc_msgSend(v12, sel_shouldExpire) & 1) == 0)
      {
        v33 = [v12 fileURL];
        v34 = *(v0 + 32);
        if (v33)
        {
          v35 = v33;
          sub_190D515B0();

          v36 = sub_190D515F0();
          (*(*(v36 - 8) + 56))(v34, 0, 1, v36);
          sub_19022EEA4(v34, &unk_1EAD55F20);
        }

        else
        {
          v37 = sub_190D515F0();
          (*(*(v37 - 8) + 56))(v34, 1, 1, v37);
          sub_19022EEA4(v34, &unk_1EAD55F20);
          if (!v15)
          {
            goto LABEL_36;
          }
        }
      }

      else if (!v15)
      {
LABEL_36:
        v39 = [v12 pluginBundleID];

        if (v39)
        {
          v40 = sub_190D56F10();
          v42 = v41;

          v43 = HIBYTE(v42) & 0xF;
          if ((v42 & 0x2000000000000000) == 0)
          {
            v43 = v40 & 0xFFFFFFFFFFFFLL;
          }

          if (v43)
          {
            v44 = v12;
            v45 = sub_190D53020();
            v46 = sub_190D576C0();

            if (os_log_type_enabled(v45, v46))
            {
              v47 = *(v0 + 16);
              v48 = swift_slowAlloc();
              v49 = swift_slowAlloc();
              *v48 = 138412290;
              *(v48 + 4) = v44;
              *v49 = v47;
              v50 = v44;
              _os_log_impl(&dword_19020E000, v45, v46, "handling empty payload by deferring commit with payload: %@", v48, 0xCu);
              sub_19022EEA4(v49, &unk_1EAD54610);
              MEMORY[0x193AF7A40](v49, -1, -1);
              MEMORY[0x193AF7A40](v48, -1, -1);
            }

            sub_190D572A0();
            *(v0 + 48) = sub_190D57290();
            v22 = sub_190D57240();
            v24 = v51;
            v25 = sub_190B949C0;
LABEL_43:

            return MEMORY[0x1EEE6DFA0](v25, v22, v24);
          }
        }

        v52 = v12;
        v53 = sub_190D53020();
        v54 = sub_190D576A0();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v64 = v56;
          *v55 = 136315138;
          v57 = [v52 pluginBundleID];
          if (v57)
          {

            v58 = 0xE800000000000000;
            v59 = 0x7974706D65207369;
          }

          else
          {
            v58 = 0xE600000000000000;
            v59 = 0x6C696E207369;
          }

          v60 = sub_19021D9F8(v59, v58, &v64);

          *(v55 + 4) = v60;
          _os_log_impl(&dword_19020E000, v53, v54, "payload.pluginBundleID %s", v55, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v56);
          MEMORY[0x193AF7A40](v56, -1, -1);
          MEMORY[0x193AF7A40](v55, -1, -1);
        }

        sub_190B94024();
        swift_allocError();
        *v61 = 2;
        swift_willThrow();

        goto LABEL_52;
      }

      v38 = [*(v0 + 24) pluginBundleID];
      if (!v38)
      {
        sub_190D56F10();
        v38 = sub_190D56ED0();
      }

      [v12 setPluginBundleID_];
      v13 = v38;
    }

    goto LABEL_36;
  }

  if ([*(v0 + 24) handwritingIsDisplayed])
  {
    if (qword_1EAD51CF8 != -1)
    {
      swift_once();
    }

    v18 = sub_190D53040();
    __swift_project_value_buffer(v18, qword_1EAD9E118);
    v19 = sub_190D53020();
    v20 = sub_190D576C0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_19020E000, v19, v20, "handling empty payload: handwritingIsDisplayed", v21, 2u);
      MEMORY[0x193AF7A40](v21, -1, -1);
    }

    sub_190D572A0();
    *(v0 + 56) = sub_190D57290();
    v22 = sub_190D57240();
    v24 = v23;
    v25 = sub_190B94AB8;
    goto LABEL_43;
  }

  if (qword_1EAD51CF8 != -1)
  {
    swift_once();
  }

  v26 = sub_190D53040();
  __swift_project_value_buffer(v26, qword_1EAD9E118);
  v27 = sub_190D53020();
  v28 = sub_190D576C0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_19020E000, v27, v28, "handling empty payload: nil payload", v29, 2u);
    MEMORY[0x193AF7A40](v29, -1, -1);
  }

  sub_190B94024();
  swift_allocError();
  *v30 = 2;
  swift_willThrow();
LABEL_52:

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_190B949C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  [v2 deferredCommitPayload_];

  return MEMORY[0x1EEE6DFA0](sub_190B94A40, 0, 0);
}

uint64_t sub_190B94A40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_190B94AB8()
{
  v1 = *(v0 + 24);

  [v1 dismissOrHideHandwritingBrowser];

  return MEMORY[0x1EEE6DFA0](sub_190B94B34, 0, 0);
}

uint64_t sub_190B94B34()
{
  if (qword_1EAD51CF8 != -1)
  {
    swift_once();
  }

  v1 = sub_190D53040();
  __swift_project_value_buffer(v1, qword_1EAD9E118);
  v2 = sub_190D53020();
  v3 = sub_190D576C0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_19020E000, v2, v3, "handling empty payload: nil payload", v4, 2u);
    MEMORY[0x193AF7A40](v4, -1, -1);
  }

  sub_190B94024();
  swift_allocError();
  *v5 = 2;
  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

unint64_t sub_190B94E3C()
{
  result = qword_1EAD5E948;
  if (!qword_1EAD5E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E948);
  }

  return result;
}

unint64_t sub_190B94E90()
{
  result = qword_1EAD5E950;
  if (!qword_1EAD5E950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E950);
  }

  return result;
}

unint64_t sub_190B94EE4()
{
  result = qword_1EAD5E958;
  if (!qword_1EAD5E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E958);
  }

  return result;
}

uint64_t sub_190B94F38(void *a1, int a2, char a3, void *aBlock, void *a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v9 = sub_190D56F10();
  v11 = v10;
  v5[5] = v10;
  v12 = a1;
  a5;
  v13 = swift_task_alloc();
  v5[6] = v13;
  *v13 = v5;
  v13[1] = sub_190B95028;

  return CKChatInputController.commitPayload(_:forPlugin:allowAllCommits:)(a1, v9, v11, a3);
}

uint64_t sub_190B95028()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = sub_190D51410();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_190B951E8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_190221DA0;

  return sub_190B94F38(v2, v3, v4, v6, v5);
}

uint64_t ChatBotActionButton.__allocating_init(with:delegate:backgroundStyle:showTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = objc_allocWithZone(v4);
  swift_getObjectType();
  v10 = sub_190B96A60(a1, a2, a3, a4, v9);
  swift_unknownObjectRelease();
  return v10;
}

uint64_t ChatBotActionButton.init(with:delegate:backgroundStyle:showTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  swift_getObjectType();
  v9 = sub_190B96A60(a1, a2, a3, a4, v4);
  swift_unknownObjectRelease();
  return v9;
}

void sub_190B954B0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v56 - v5;
  v7 = *&v2[OBJC_IVAR___CKChatBotActionButton_blurView];
  v8 = &selRef_activePinningInputViewReasons;
  if (v7)
  {
    v9 = v7;
    [v9 setUserInteractionEnabled_];
    [v9 _setCornerRadius_];
    [v2 addSubview_];
  }

  v10 = sub_190D57FB0();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  sub_190D57FE0();
  [v2 setContentHorizontalAlignment_];
  v12 = *&v2[OBJC_IVAR___CKChatBotActionButton_actionList];
  v13 = v12 >> 62;
  v14 = &unk_1EAD5E000;
  if (!(v12 >> 62))
  {
    v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15 > 1)
    {
      goto LABEL_5;
    }

LABEL_28:
    if (!v15)
    {
      goto LABEL_37;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      v46 = MEMORY[0x193AF3B90](0);
    }

    else
    {
      if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v46 = *(v12 + 32);
    }

    v47 = v46;
    if (v2[OBJC_IVAR___CKChatBotActionButton_showTitle] == 1)
    {
      v48 = [v46 suggestion];
      v49 = [v48 displayText];

      if (!v49)
      {
        sub_190D56F10();
        v49 = sub_190D56ED0();
      }

      [v2 setTitle:v49 forState:0];
    }

    v50 = sub_190B95FAC();
    v51 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

    v52 = *&v2[OBJC_IVAR___CKChatBotActionButton_iconView];
    *&v2[OBJC_IVAR___CKChatBotActionButton_iconView] = v51;

    [v2 addTarget:v2 action:sel_touchedButton forControlEvents:64];
    goto LABEL_37;
  }

  v44 = *&v2[OBJC_IVAR___CKChatBotActionButton_actionList];
  v45 = sub_190D581C0();
  v12 = v44;
  if (v45 < 2)
  {
    v15 = sub_190D581C0();
    v12 = v44;
    goto LABEL_28;
  }

LABEL_5:
  v16 = v12;
  v17 = objc_opt_self();
  v18 = sub_190D56ED0();
  v19 = [v17 __systemImageNamedSwift_];

  v20 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  v21 = [objc_opt_self() preferredFontForTextStyle_];
  v22 = [objc_opt_self() configurationWithFont:v21 scale:1];

  v57 = v22;
  [v20 setPreferredSymbolConfiguration_];
  v23 = *&v2[OBJC_IVAR___CKChatBotActionButton_iconView];
  *&v2[OBJC_IVAR___CKChatBotActionButton_iconView] = v20;
  v56 = v20;

  v24 = CKFrameworkBundle();
  if (!v24)
  {
LABEL_45:
    __break(1u);
    return;
  }

  v25 = v24;
  v26 = sub_190D56ED0();
  v27 = sub_190D56ED0();
  v28 = [v25 localizedStringForKey:v26 value:0 table:v27];

  if (!v28)
  {
    sub_190D56F10();
    v28 = sub_190D56ED0();
  }

  [v2 setTitle:v28 forState:0];

  v61 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v29 = sub_190D581C0();
    if (v29)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v29 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
LABEL_10:
      v60 = sub_1902188FC(0, &qword_1EAD464F0);
      v59 = objc_opt_self();
      if (v29 >= 1)
      {
        v30 = 0;
        v31 = v16;
        v58 = v16 & 0xC000000000000001;
        v32 = v16;
        do
        {
          if (v58)
          {
            v33 = MEMORY[0x193AF3B90](v30, v31);
          }

          else
          {
            v33 = *(v31 + 8 * v30 + 32);
          }

          v34 = v33;
          v35 = [v33 suggestion];
          v36 = [v35 displayText];

          sub_190D56F10();
          sub_1908DB0AC();
          v37 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v38 = swift_allocObject();
          *(v38 + 16) = v34;
          *(v38 + 24) = v37;
          v39 = v34;
          v40 = sub_190D57DC0();
          v41 = [v39 type];
          if (([v59 actionIsSupported_] & 1) == 0)
          {
            [v40 setAttributes_];
          }

          v42 = v40;
          MEMORY[0x193AF29E0]();
          if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_190D571A0();
          }

          ++v30;
          sub_190D571E0();

          v31 = v32;
        }

        while (v29 != v30);
        v8 = &selRef_activePinningInputViewReasons;
        v14 = &unk_1EAD5E000;
        if (!(v61 >> 62))
        {
          goto LABEL_21;
        }

LABEL_25:
        sub_1902188FC(0, &unk_1EAD45090);
        sub_190D52690();
        sub_190D58530();

        goto LABEL_22;
      }

      __break(1u);
      goto LABEL_44;
    }
  }

  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_25;
  }

LABEL_21:
  sub_190D52690();
  sub_190D58770();
  sub_1902188FC(0, &unk_1EAD45090);
LABEL_22:

  sub_1902188FC(0, &unk_1EAD44ED0);
  v43 = sub_190D57C90();
  [v2 setMenu_];
  [v2 setShowsMenuAsPrimaryAction_];

LABEL_37:
  if (CKIsRunningInMessagesNotificationExtension())
  {
    [v2 setMenu_];
    [v2 setShowsMenuAsPrimaryAction_];
    [v2 addTarget:v2 action:sel_touchedButton forControlEvents:64];
  }

  v53 = *&v2[v14[300]];
  if (v53)
  {
    v54 = v53;
    [v2 v8[164]];
    v55 = [objc_opt_self() secondaryLabelColor];
    [v54 setTintColor_];
  }
}

void sub_190B95D98(uint64_t a1, void *a2)
{
  if (qword_1EAD51D18 != -1)
  {
    swift_once();
  }

  v3 = sub_190D53040();
  __swift_project_value_buffer(v3, qword_1EAD9E160);
  v4 = a2;
  v5 = sub_190D53020();
  v6 = sub_190D57680();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136315138;
    v9 = [v4 suggestion];
    v10 = [v9 displayText];

    v11 = sub_190D56F10();
    v13 = v12;

    v14 = sub_19021D9F8(v11, v13, v18);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_19020E000, v5, v6, "From carousel cards, trigger action: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x193AF7A40](v8, -1, -1);
    MEMORY[0x193AF7A40](v7, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      [v17 chatBotActionButton:v16 didSelectChipAction:v4];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id sub_190B95FAC()
{
  v1 = [v0 type];
  v2 = 0;
  if (v1 <= 5)
  {
    if (v1 > 2 || v1 < 2 || v1 == 2)
    {
      goto LABEL_14;
    }
  }

  else if (v1 <= 8 || (v1 - 9) < 2 || v1 == 11 || v1 == 12)
  {
LABEL_14:
    v3 = sub_190D56ED0();
    v2 = [objc_opt_self() systemImageNamed_];
  }

  return v2;
}

void sub_190B9618C()
{
  if (CKIsRunningInMessagesNotificationExtension())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong openAppFromNotificationExtensionWith_];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR___CKChatBotActionButton_actionList);
    if (v2 >> 62)
    {
      if (!sub_190D581C0())
      {
        return;
      }
    }

    else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x193AF3B90](0, v2);
    }

    else
    {
      if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v3 = *(v2 + 32);
    }

    v4 = v3;
    v5 = v0;
    if (qword_1EAD51D18 != -1)
    {
      swift_once();
    }

    v6 = sub_190D53040();
    __swift_project_value_buffer(v6, qword_1EAD9E160);
    v18 = v4;
    v7 = sub_190D53020();
    v8 = sub_190D57680();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136315138;
      v11 = [v18 suggestion];
      v12 = [v11 displayText];

      v13 = sub_190D56F10();
      v15 = v14;

      v16 = sub_19021D9F8(v13, v15, &v19);

      *(v9 + 4) = v16;
      _os_log_impl(&dword_19020E000, v7, v8, "From single card, trigger action: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x193AF7A40](v10, -1, -1);
      MEMORY[0x193AF7A40](v9, -1, -1);
    }

    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      [v17 chatBotActionButton:v5 didSelectChipAction:v18];
      swift_unknownObjectRelease();
    }
  }
}