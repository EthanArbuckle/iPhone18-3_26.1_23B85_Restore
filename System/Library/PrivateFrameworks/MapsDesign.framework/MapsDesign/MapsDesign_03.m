void sub_213E105E4()
{
  v1 = v0;
  v2 = sub_213E10C08(0);
  v3 = v2;
  v53 = v2;
  if (v2 >> 62)
  {
LABEL_60:
    v4 = sub_213F4F7E0();
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x216052B30](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v9 = [v6 menu];
      if (v9)
      {
        break;
      }

      v10 = [v7 _secondaryActionsProvider];
      if (v10)
      {
        v12 = v10;

        _Block_release(v12);
        goto LABEL_17;
      }

      ++v5;
      if (v8 == v4)
      {
        goto LABEL_14;
      }
    }

LABEL_17:
    [v1 layoutIfNeeded];
    v13 = *&v1[OBJC_IVAR____TtC10MapsDesign9ActionBar_sizingToolBar];
    sub_213E15130(0, &qword_281182400, 0x277D751E0);

    v14 = sub_213F4F3E0();
    [v13 setItems:v14 animated:0];

    [v13 layoutIfNeeded];
    v15 = [v1 traitCollection];
    v16 = [v15 layoutDirection];

    v17 = sub_213E123D8(v7, v3);
    v19 = v18;

    if ((v19 & 1) == 0 && v17 >= 1)
    {
      while (2)
      {
        v20 = v3 >> 62;
        if (v16 == 1)
        {
          if (v20)
          {
            v21 = sub_213F4F7E0();
            if (!v21)
            {
              goto LABEL_37;
            }

LABEL_22:
            v22 = __OFSUB__(v21, 1);
            v23 = v21 - 1;
            if (v22)
            {
              goto LABEL_55;
            }

            if ((v3 & 0xC000000000000001) != 0)
            {
              v24 = MEMORY[0x216052B30](v23, v3);
            }

            else
            {
              if ((v23 & 0x8000000000000000) != 0)
              {
                goto LABEL_57;
              }

              if (v23 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_58;
              }

              v24 = *(v3 + 8 * v23 + 32);
            }

            v25 = v24;
          }

          else
          {
            v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v21)
            {
              goto LABEL_22;
            }

LABEL_37:
            v25 = 0;
          }

          [v13 _frameOfBarButtonItem_];
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v37 = v36;

          v55.origin.x = v31;
          v55.origin.y = v33;
          v55.size.width = v35;
          v55.size.height = v37;
          MinX = CGRectGetMinX(v55);
          [v1 bounds];
          if (MinX >= CGRectGetMinX(v56))
          {
            goto LABEL_48;
          }

LABEL_43:

          v3 = v53;

          v48 = sub_213F4F3E0();
          [v13 setItems:v48 animated:0];

          [v13 layoutIfNeeded];
          v17 = sub_213E123D8(v7, v53);
          v50 = v49;

          if ((v50 & 1) != 0 || v17 <= 0)
          {
            goto LABEL_48;
          }

          continue;
        }

        break;
      }

      if (v20)
      {
        v26 = sub_213F4F7E0();
        if (!v26)
        {
          goto LABEL_41;
        }

LABEL_30:
        v22 = __OFSUB__(v26, 1);
        v27 = v26 - 1;
        if (v22)
        {
          goto LABEL_54;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x216052B30](v27, v3);
        }

        else
        {
          if ((v27 & 0x8000000000000000) != 0)
          {
            goto LABEL_56;
          }

          if (v27 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_59;
          }

          v28 = *(v3 + 8 * v27 + 32);
        }

        v29 = v28;
      }

      else
      {
        v26 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v26)
        {
          goto LABEL_30;
        }

LABEL_41:
        v29 = 0;
      }

      [v13 _frameOfBarButtonItem_];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;

      v57.origin.x = v40;
      v57.origin.y = v42;
      v57.size.width = v44;
      v57.size.height = v46;
      MaxX = CGRectGetMaxX(v57);
      [v1 bounds];
      if (CGRectGetMaxX(v58) >= MaxX)
      {
        goto LABEL_48;
      }

      goto LABEL_43;
    }

LABEL_48:
    v51 = *&v1[OBJC_IVAR____TtC10MapsDesign9ActionBar_toolBar];
    v52 = sub_213F4F3E0();
    [v51 setItems_animated_];
  }

  else
  {
LABEL_14:

    v11 = *&v1[OBJC_IVAR____TtC10MapsDesign9ActionBar_toolBar];
    sub_213E15130(0, &qword_281182400, 0x277D751E0);
    v52 = sub_213F4F3E0();
    [v11 setItems_animated_];
  }
}

Swift::Void __swiftcall ActionBar.layoutSubviews()()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC10MapsDesign9ActionBar_lastWidth;
  v2 = *&v0[OBJC_IVAR____TtC10MapsDesign9ActionBar_lastWidth];
  [v0 frame];
  if (v2 != v3)
  {
    sub_213E105E4();
    [v0 frame];
    *&v0[v1] = v4;
  }
}

uint64_t sub_213E10C08(int a1)
{
  LODWORD(v177) = a1;
  v2 = &v207;
  v3 = sub_213F4CB60();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v175 = &v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_213F4F210();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v169 - v12;
  v224 = MEMORY[0x277D84F90];
  v14 = *(v1 + OBJC_IVAR____TtC10MapsDesign9ActionBar_showAddedToast);
  v181 = v1;
  if (v14 == 1)
  {
    sub_213F4F200();
    v200 = v7[2];
    v200(v11, v13, v6);
    if (qword_281182510 != -1)
    {
      swift_once();
    }

    v15 = qword_281182518;
    sub_213F4CB50();
    v16 = v15;
    v17 = sub_213F4F260();
    v199 = v18;
    v19 = v7[1];
    v19(v13, v6);
    sub_213F4F200();
    v200(v11, v13, v6);
    sub_213F4CB50();
    v20 = sub_213F4F260();
    v22 = v21;
    v19(v13, v6);
    *&v207 = 0;
    *(&v207 + 1) = v17;
    goto LABEL_9;
  }

  v173 = v11;
  v174 = v7;
  if (*(v1 + OBJC_IVAR____TtC10MapsDesign9ActionBar_showFavoritedToast) == 1)
  {
    v23 = &v169 - v12;
    sub_213F4F200();
    v24 = v173;
    v25 = v174;
    v26 = v174[2];
    v26(v173, v23, v6);
    if (qword_281182510 != -1)
    {
      swift_once();
    }

    v27 = qword_281182518;
    sub_213F4CB50();
    v28 = v27;
    v29 = sub_213F4F260();
    v199 = v30;
    v200 = v29;
    v31 = v25[1];
    v31(v23, v6);
    sub_213F4F200();
    v26(v24, v23, v6);
    sub_213F4CB50();
    v20 = sub_213F4F260();
    v22 = v32;
    v31(v23, v6);
    *&v207 = 1;
    *(&v207 + 1) = v200;
LABEL_9:
    v2 = &v207;
    *&v208 = v199;
    *(&v208 + 1) = v20;
    v209 = v22;
    LOBYTE(v210) = 5;
    DWORD1(v210) = *(&v219 + 3);
    *(&v210 + 1) = v219;
    *(&v210 + 1) = 0;
    v211 = 0;
    v221 = v22;
    v222 = v210;
    v223 = 0;
    v219 = v207;
    v220 = v208;
    sub_213E12578(0, &v219);
    v34 = v33;
    sub_213E1473C(&v207);
    v35 = v34;
    MEMORY[0x2160527D0]();
    if (*((v224 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v224 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_122;
    }

    goto LABEL_10;
  }

  v171 = &v169 - v12;
  v172 = v6;
  v94 = (v1 + OBJC_IVAR____TtC10MapsDesign9ActionBar_model);
  v35 = v1;
  swift_beginAccess();
  v95 = v94 + 2;
  if ((v177 & 1) == 0)
  {
    v95 = v94;
  }

  v96 = *v95;
  v180 = *(*v95 + 16);
  if (!v180)
  {
    v36 = MEMORY[0x277D84F90];
    v37 = v35;
    v139 = v94[5];
    if (!v139)
    {
LABEL_109:
      v153 = v94[4];
      if (v153 && (v177 & 1) == 0)
      {
        sub_213E15130(0, &qword_281182400, 0x277D751E0);
        v154 = v153;
        v155 = sub_213F4F220();
        v156 = [objc_opt_self() systemImageNamed_];

        v35 = v154;
        v157 = sub_213F4F540();
        [v157 setPreferredMenuElementOrder_];
        v158 = v157;
        v159 = v171;
        sub_213F4F200();
        v160 = v174;
        v161 = v172;
        (v174[2])(v173, v159, v172);
        if (qword_281182510 != -1)
        {
          swift_once();
        }

        v162 = qword_281182518;
        sub_213F4CB50();
        sub_213F4F260();
        (v160[1])(v159, v161);
        v163 = sub_213F4F220();

        [v158 setAccessibilityLabel_];

        v164 = sub_213F4F220();
        [v158 setAccessibilityIdentifier_];

        v165 = v158;
        MEMORY[0x2160527D0]();
        v2 = &v207;
        if (*((v224 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v224 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v168 = *((v224 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_213F4F400();
        }

        sub_213F4F420();

        goto LABEL_11;
      }

      goto LABEL_13;
    }

LABEL_103:
    if ((v177 & 1) == 0)
    {
      v140 = v94[6];
      sub_213E15130(0, &qword_281182400, 0x277D751E0);

      v141 = sub_213F4F220();
      v142 = [objc_opt_self() systemImageNamed_];

      v143 = sub_213F4F540();
      [v143 setPreferredMenuElementOrder_];
      *&v209 = v139;
      *(&v209 + 1) = v140;
      *&v207 = MEMORY[0x277D85DD0];
      *(&v207 + 1) = 1107296256;
      *&v208 = sub_213E13270;
      *(&v208 + 1) = &block_descriptor_72;
      v144 = _Block_copy(&v207);

      [v143 _setSecondaryActionsProvider_];
      _Block_release(v144);
      v145 = v143;
      v146 = v171;
      sub_213F4F200();
      v147 = v174;
      v148 = v172;
      (v174[2])(v173, v146, v172);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v149 = qword_281182518;
      sub_213F4CB50();
      sub_213F4F260();
      (v147[1])(v146, v148);
      v150 = sub_213F4F220();

      [v145 setAccessibilityLabel_];

      v151 = sub_213F4F220();
      [v145 setAccessibilityIdentifier_];

      v152 = v145;
      MEMORY[0x2160527D0]();
      v2 = &v207;
      if (*((v224 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v224 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v167 = *((v224 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_213F4F400();
        v2 = &v207;
      }

      sub_213F4F420();
      sub_213DD7558(v139);

      goto LABEL_12;
    }

    goto LABEL_109;
  }

  v170 = v94;
  v97 = *(v1 + OBJC_IVAR____TtC10MapsDesign9ActionBar_toolBar);
  v178 = v96 + 32;
  v179 = v97;

  v98 = 0;
  v176 = v96;
  do
  {
    v99 = v178 + 72 * v98;
    v219 = *v99;
    v100 = *(v99 + 16);
    v101 = *(v99 + 32);
    v102 = *(v99 + 48);
    v223 = *(v99 + 64);
    v221 = v101;
    v222 = v102;
    v220 = v100;
    sub_213E14704(&v219, &v207);
    v103 = [v179 items];
    if (!v103)
    {
      goto LABEL_92;
    }

    v104 = v103;
    sub_213E15130(0, &qword_281182400, 0x277D751E0);
    v35 = sub_213F4F3F0();

    v182 = v98;
    if (v35 >> 62)
    {
      v105 = sub_213F4F7E0();
      if (!v105)
      {
LABEL_91:

        v96 = v176;
        v98 = v182;
LABEL_92:
        v208 = v220;
        v209 = v221;
        v210 = v222;
        v211 = v223;
        v207 = v219;
        sub_213E12578(0, &v207);
        v136 = v135;
        sub_213E1473C(&v219);
        v134 = v136;
        MEMORY[0x2160527D0]();
        if (*((v224 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v224 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v35 = *((v224 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_213F4F400();
        }

        sub_213F4F420();
        goto LABEL_95;
      }
    }

    else
    {
      v105 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v105)
      {
        goto LABEL_91;
      }
    }

    v106 = 0;
    v185 = v105;
    *&v186 = *(&v221 + 1);
    v192 = v35 & 0xC000000000000001;
    v193 = v219;
    v190 = v35;
    v191 = v35 & 0xFFFFFFFFFFFFFF8;
    v198 = v222;
    v188 = v220;
    v189 = *(&v219 + 1);
    *(&v186 + 1) = v221;
    v187 = *(&v220 + 1);
    while (1)
    {
      if (v192)
      {
        v118 = MEMORY[0x216052B30](v106, v35);
      }

      else
      {
        if (v106 >= *(v191 + 16))
        {
          goto LABEL_119;
        }

        v118 = *(v35 + 8 * v106 + 32);
      }

      v2 = v118;
      if (__OFADD__(v106, 1))
      {
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

      v199 = v106 + 1;
      v119 = type metadata accessor for ActionBarButton();
      v200 = v2;
      v120 = swift_dynamicCastClass();
      if (!v120)
      {
        v125 = 0;
        v126 = 0;
        v123 = 0;
        v124 = 0;
        v121 = 0;
        v122 = 0;
LABEL_80:
        v127 = v193;
        if (v198 == 255)
        {
          sub_213E0CBA0(v193, v189, v188, v187, *(&v186 + 1), v186, 255);

          sub_213E150A0(v122, v121, v124, v123, v126, v125, 255);
          v2 = &v207;
          goto LABEL_85;
        }

        v194 = v122;
        v195 = v126;
        v196 = v121;
        v197 = v124;
        v114 = v123;
        v116 = v125;
        v108 = v188;
        v107 = v189;
        v112 = *(&v186 + 1);
        v109 = v187;
        v111 = v186;
        sub_213E0CBA0(v193, v189, v188, v187, *(&v186 + 1), v186, v198);

        v117 = v127;
        LOBYTE(v127) = -1;
        goto LABEL_68;
      }

      v127 = v120 + OBJC_IVAR____TtC10MapsDesign15ActionBarButton_model;
      swift_beginAccess();
      v122 = *v127;
      v121 = *(v127 + 8);
      v124 = *(v127 + 16);
      v123 = *(v127 + 24);
      v126 = *(v127 + 32);
      v125 = *(v127 + 40);
      LODWORD(v127) = *(v127 + 48);
      sub_213E0CBA0(v122, v121, v124, v123, v126, v125, v127);
      if (v127 == 255)
      {
        goto LABEL_80;
      }

      v196 = v119;
      *&v207 = v122;
      *(&v207 + 1) = v121;
      *&v208 = v124;
      *(&v208 + 1) = v123;
      *&v209 = v126;
      *(&v209 + 1) = v125;
      LOBYTE(v210) = v127;
      if (v198 != 255)
      {
        break;
      }

      v183 = v125;
      v184 = v123;
      v107 = v189;
      v196 = v121;
      v197 = v124;
      v109 = v187;
      v108 = v188;
      v110 = v122;
      v112 = *(&v186 + 1);
      v111 = v186;
      sub_213E0CBA0(v193, v189, v188, v187, *(&v186 + 1), v186, 255);
      sub_213E150B4(v110, v196, v197, v184, v126, v183, v127);

      v194 = v110;
      v195 = v126;
      v113 = v110;
      v114 = v184;
      v115 = v126;
      v116 = v183;
      sub_213E14680(v113, v196, v197, v184, v115, v183, v127);
      v117 = v193;
LABEL_68:
      *&v207 = v194;
      *(&v207 + 1) = v196;
      *&v208 = v197;
      *(&v208 + 1) = v114;
      *&v209 = v195;
      *(&v209 + 1) = v116;
      v2 = &v207;
      LOBYTE(v210) = v127;
      *(&v210 + 1) = v218[0];
      DWORD1(v210) = *(v218 + 3);
      *(&v210 + 1) = v117;
      v211 = v107;
      v212 = v108;
      v213 = v109;
      v214 = v112;
      v215 = v111;
      v216 = v198;
      sub_213DE36FC(&v207, &qword_27C8F8BB8, &qword_213F563E8);
LABEL_69:
      v35 = v190;
      ++v106;
      if (v199 == v185)
      {
        goto LABEL_91;
      }
    }

    v201 = v193;
    v202 = v189;
    v203 = v188;
    v204 = v187;
    *&v205 = *(&v186 + 1);
    *(&v205 + 1) = v186;
    v206 = v198;
    sub_213E0CBA0(v193, v189, v188, v187, *(&v186 + 1), v186, v198);
    sub_213E150B4(v122, v121, v124, v123, v126, v125, v127);
    LODWORD(v197) = _s10MapsDesign24ActionBarButtonViewModelV0cdE4TypeO2eeoiySbAE_AEtFZ_0(&v207, &v201);
    sub_213E14680(v201, v202, v203, v204, v205, *(&v205 + 1), v206);
    sub_213E14680(v207, *(&v207 + 1), v208, *(&v208 + 1), v209, *(&v209 + 1), v210);
    sub_213E150A0(v122, v121, v124, v123, v126, v125, v127);
    if ((v197 & 1) == 0)
    {

      v2 = &v207;
      goto LABEL_69;
    }

    v2 = &v207;
LABEL_85:
    v128 = v200;
    v129 = swift_dynamicCastClass();
    v96 = v176;
    v98 = v182;
    v130 = v128;
    if (v129)
    {
      v131 = v128;
    }

    v208 = v220;
    v209 = v221;
    v210 = v222;
    v211 = v223;
    v207 = v219;
    sub_213E12578(v129, &v207);
    v133 = v132;

    sub_213E1473C(&v219);
    v35 = v133;
    MEMORY[0x2160527D0]();
    if (*((v224 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v224 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v137 = *((v224 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_213F4F400();
    }

    sub_213F4F420();

    v134 = v130;
LABEL_95:
    ++v98;

    if (v98 == v180)
    {
      v36 = v224;

      v37 = v181;
      v94 = v170;
      v139 = v170[5];
      if (!v139)
      {
        goto LABEL_109;
      }

      goto LABEL_103;
    }
  }

  while (v98 < *(v96 + 16));
  while (2)
  {
    __break(1u);
LABEL_122:
    sub_213F4F400();
LABEL_10:
    sub_213F4F420();
LABEL_11:

LABEL_12:
    v36 = *(v2 + 248);
    v37 = v181;
LABEL_13:
    v35 = v37 + OBJC_IVAR____TtC10MapsDesign9ActionBar_model;
    swift_beginAccess();
    v38 = 8;
    if (v177)
    {
      v38 = 24;
    }

    if (!*(*(v35 + v38) + 16))
    {
      return v36;
    }

    [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
    MEMORY[0x2160527D0]();
    if (*((*(v2 + 248) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 248) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v166 = *((*(v2 + 248) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_213F4F400();
    }

    sub_213F4F420();
    v39 = 8;
    if (v177)
    {
      v39 = 24;
    }

    v40 = *(v35 + v39);
    v180 = *(v40 + 16);
    if (!v180)
    {
      return *(v2 + 248);
    }

    v41 = *(v181 + OBJC_IVAR____TtC10MapsDesign9ActionBar_toolBar);
    v178 = v40 + 32;
    v179 = v41;
    v177 = v40;

    v42 = 0;
LABEL_22:
    v182 = v42;
    v43 = v178 + 72 * v42;
    *(v2 + 144) = *v43;
    v44 = *(v43 + 16);
    v45 = *(v43 + 32);
    v46 = *(v43 + 48);
    *(v2 + 208) = *(v43 + 64);
    *(v2 + 176) = v45;
    *(v2 + 192) = v46;
    *(v2 + 160) = v44;
    sub_213E14704(&v219, &v207);
    v47 = [v179 items];
    if (!v47)
    {
      goto LABEL_52;
    }

    v48 = v47;
    sub_213E15130(0, &qword_281182400, 0x277D751E0);
    v49 = sub_213F4F3F0();

    if (v49 >> 62)
    {
      v50 = sub_213F4F7E0();
      if (!v50)
      {
LABEL_51:

        v2 = &v207;
LABEL_52:
        v86 = *(v2 + 176);
        v87 = *(v2 + 192);
        v88 = *(v2 + 144);
        *(v2 + 16) = *(v2 + 160);
        *(v2 + 32) = v86;
        *(v2 + 48) = v87;
        *(v2 + 64) = *(v2 + 208);
        v207 = v88;
        sub_213E12578(0, &v207);
        v90 = v89;
        sub_213E1473C(&v219);
        v35 = v90;
        MEMORY[0x2160527D0]();
        if (*((*(v2 + 248) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 248) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v91 = v35;
          v92 = *((*(v2 + 248) & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_213F4F400();
          v35 = v91;
        }

        sub_213F4F420();
        goto LABEL_55;
      }
    }

    else
    {
      v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v50)
      {
        goto LABEL_51;
      }
    }

    v2 = 0;
    v195 = *(&v220 + 1);
    v196 = v220;
    v186 = v221;
    v190 = v49 & 0xC000000000000001;
    v191 = v219;
    v188 = v49;
    v189 = v49 & 0xFFFFFFFFFFFFFF8;
    v198 = v222;
    v185 = v50;
    v187 = *(&v219 + 1);
    while (2)
    {
      if (v190)
      {
        v61 = MEMORY[0x216052B30](v2, v49);
      }

      else
      {
        if (v2 >= *(v189 + 16))
        {
          goto LABEL_117;
        }

        v61 = *(v49 + 8 * v2 + 32);
      }

      v62 = v61;
      v60 = (v2 + 1);
      if (__OFADD__(v2, 1))
      {
        __break(1u);
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      v63 = type metadata accessor for ActionBarButton();
      v64 = swift_dynamicCastClass();
      if (!v64)
      {
        v194 = v63;
        v199 = 0;
        v78 = 0;
        v73 = 0;
        v59 = 0;
        v197 = 0;
        v35 = 0;
        v79 = v191;
        v74 = v196;
LABEL_40:
        if (v198 == 255)
        {
          sub_213E0CBA0(v79, v187, v74, v195, v186, *(&v186 + 1), 255);

          sub_213E150A0(v35, v197, v59, v73, v78, v199, 255);
          goto LABEL_45;
        }

        v194 = v73;
        v200 = v78;
        v192 = v2 + 1;
        v51 = *(&v186 + 1);
        v52 = v187;
        v53 = v186;
        v54 = v198;
        v71 = v62;
        v58 = v79;
        sub_213E0CBA0(v79, v187, v74, v195, v186, *(&v186 + 1), v198);

        LOBYTE(v71) = -1;
        goto LABEL_27;
      }

      v71 = (v64 + OBJC_IVAR____TtC10MapsDesign15ActionBarButton_model);
      swift_beginAccess();
      v65 = *v71;
      v66 = v71[1];
      v67 = v71[2];
      v68 = v71[3];
      v69 = v71[4];
      v70 = v71[5];
      LODWORD(v71) = *(v71 + 48);
      v193 = v65;
      v72 = v67;
      v73 = v68;
      v200 = v69;
      sub_213E0CBA0(v65, v66, v67, v68, v69, v70, v71);
      v74 = v196;
      v199 = v70;
      v197 = v66;
      if (v71 == 255)
      {
        v194 = v63;
        v79 = v191;
        v78 = v200;
        v59 = v72;
        v35 = v193;
        goto LABEL_40;
      }

      v184 = v62;
      *&v207 = v193;
      *(&v207 + 1) = v66;
      v75 = v66;
      *&v208 = v72;
      *(&v208 + 1) = v73;
      *&v209 = v200;
      *(&v209 + 1) = v70;
      LOBYTE(v210) = v71;
      if (v198 == 255)
      {
        v192 = v2 + 1;
        v51 = *(&v186 + 1);
        v52 = v187;
        v183 = v72;
        v53 = v186;
        v194 = v73;
        v54 = -1;
        sub_213E0CBA0(v191, v187, v196, v195, v186, *(&v186 + 1), 255);
        v55 = v193;
        sub_213E150B4(v193, v75, v183, v194, v200, v70, v71);

        v35 = v55;
        v56 = v55;
        v57 = v75;
        v58 = v191;
        v59 = v183;
        sub_213E14680(v56, v57, v183, v194, v200, v199, v71);
LABEL_27:
        *&v207 = v35;
        *(&v207 + 1) = v197;
        *&v208 = v59;
        *(&v208 + 1) = v194;
        *&v209 = v200;
        *(&v209 + 1) = v199;
        LOBYTE(v210) = v71;
        *(&v210 + 1) = *v217;
        DWORD1(v210) = *&v217[3];
        *(&v210 + 1) = v58;
        v211 = v52;
        v212 = v196;
        v213 = v195;
        v214 = v53;
        v215 = v51;
        v216 = v54;
        sub_213DE36FC(&v207, &qword_27C8F8BB8, &qword_213F563E8);
        v49 = v188;
        v60 = v192;
        goto LABEL_28;
      }

      v201 = v191;
      v202 = v187;
      v203 = v196;
      v204 = v195;
      v205 = v186;
      v206 = v198;
      sub_213E0CBA0(v191, v187, v196, v195, v186, *(&v186 + 1), v198);
      v76 = v70;
      v35 = v193;
      v77 = v200;
      sub_213E150B4(v193, v66, v72, v73, v200, v76, v71);
      LODWORD(v194) = _s10MapsDesign24ActionBarButtonViewModelV0cdE4TypeO2eeoiySbAE_AEtFZ_0(&v207, &v201);
      sub_213E14680(v201, v202, v203, v204, v205, *(&v205 + 1), v206);
      sub_213E14680(v207, *(&v207 + 1), v208, *(&v208 + 1), v209, *(&v209 + 1), v210);
      sub_213E150A0(v35, v197, v72, v73, v77, v199, v71);
      if ((v194 & 1) == 0)
      {

        v49 = v188;
LABEL_28:
        ++v2;
        if (v60 == v185)
        {
          goto LABEL_51;
        }

        continue;
      }

      break;
    }

    v62 = v184;
LABEL_45:
    v80 = swift_dynamicCastClass();
    v2 = &v207;
    v81 = v62;
    if (v80)
    {
      v82 = v62;
    }

    v208 = v220;
    v209 = v221;
    v210 = v222;
    v211 = v223;
    v207 = v219;
    sub_213E12578(v80, &v207);
    v84 = v83;

    sub_213E1473C(&v219);
    v85 = v84;
    MEMORY[0x2160527D0]();
    if (*((v224 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v224 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v93 = *((v224 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_213F4F400();
    }

    sub_213F4F420();

    v35 = v81;
LABEL_55:
    v42 = v182 + 1;

    if (v42 != v180)
    {
      if (v42 >= *(v177 + 16))
      {
LABEL_120:
        __break(1u);
        continue;
      }

      goto LABEL_22;
    }

    break;
  }

  v36 = *(v2 + 248);

  return v36;
}

unint64_t sub_213E123D8(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_213F4F7E0();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x216052B30](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_213E15130(0, &qword_281182400, 0x277D751E0);
    v8 = sub_213F4F610();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_213E124E8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_213E13F54(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

void sub_213E12578(void *a1, __int128 *a2)
{
  v89 = sub_213F4F0A0();
  v88 = *(v89 - 1);
  v5 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_213F4F080();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2[3];
  v108 = a2[2];
  v109 = v13;
  v110 = *(a2 + 8);
  v14 = a2[1];
  v106 = *a2;
  v107 = v14;
  v15 = type metadata accessor for ActionBarButton();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC10MapsDesign15ActionBarButton_model];
  v18 = a2[3];
  *(v17 + 2) = a2[2];
  *(v17 + 3) = v18;
  *(v17 + 8) = *(a2 + 8);
  v19 = a2[1];
  *v17 = *a2;
  *(v17 + 1) = v19;
  sub_213E14704(&v106, &v99);
  v98.receiver = v16;
  v98.super_class = v15;
  v20 = objc_msgSendSuper2(&v98, sel_init);
  [v20 setStyle_];
  v86 = v2;
  [v20 setTarget_];
  [v20 setAction_];

  if (a1)
  {
    v21 = a1;

    v20 = v21;
  }

  v23 = *(&v106 + 1);
  v22 = v106;
  v24 = *(&v107 + 1);
  v25 = v107;
  v92 = *(&v108 + 1);
  v93 = v108;
  v26 = v109;
  v90 = v107;
  if (v109 > 2u)
  {
LABEL_14:
    if (v26 != 3)
    {
      if (v26 != 4)
      {
        v52 = 0x72616D6B63656863;
        if (v22)
        {
          v52 = 0x6C69662E72617473;
        }

        v89 = v52;
        v53 = 0xE90000000000006BLL;
        if (v22)
        {
          v53 = 0xE90000000000006CLL;
        }

        v88 = v53;
        v54 = v22;
        v55 = type metadata accessor for ActionBarToastButton();
        v56 = objc_allocWithZone(v55);
        v57 = OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_symbolContainerView;
        v58 = objc_allocWithZone(MEMORY[0x277D75D18]);
        v59 = v24;
        v91 = v24;
        v60 = v58;
        sub_213E14704(&v106, &v99);
        sub_213E0CBA0(v54, v23, v90, v59, v93, v92, 5);
        *&v56[v57] = [v60 init];
        v61 = OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_symbolView;
        *&v56[v61] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
        v62 = OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_titleView;
        *&v56[v62] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
        v63 = OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_subtitleView;
        *&v56[v63] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
        *&v56[OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton____lazy_storage___textsStack] = 0;
        *&v56[OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton____lazy_storage___mainStack] = 0;
        v64 = &v56[OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_model];
        *v64 = v106;
        v66 = v108;
        v65 = v109;
        v67 = v107;
        *(v64 + 8) = v110;
        *(v64 + 2) = v66;
        *(v64 + 3) = v65;
        *(v64 + 1) = v67;
        v97.receiver = v56;
        v97.super_class = v55;
        v68 = objc_msgSendSuper2(&v97, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
        sub_213E0DB14();

        [v68 addTarget:v86 action:sel_toastSelectedWithSender_ forControlEvents:64];
        v69 = objc_allocWithZone(v15);
        v70 = &v69[OBJC_IVAR____TtC10MapsDesign15ActionBarButton_model];
        *v70 = v106;
        v72 = v108;
        v71 = v109;
        v73 = v107;
        *(v70 + 8) = v110;
        *(v70 + 2) = v72;
        *(v70 + 3) = v71;
        *(v70 + 1) = v73;
        sub_213E14704(&v106, &v99);
        v96.receiver = v69;
        v96.super_class = v15;
        v74 = v68;
        v75 = objc_msgSendSuper2(&v96, sel_init);
        [v75 setCustomView_];

        v76 = v20;
        v20 = v74;
        goto LABEL_53;
      }

      v87 = v22;

      v85 = v23;
      if (v24)
      {

        v27 = v20;
        v28 = sub_213F4F220();

        v29 = &selRef_setTitle_;
        v30 = v93;
        v31 = v92;
LABEL_35:
        [v20 *v29];

        if (v110)
        {
          v49 = v20;
        }

        else
        {
          v99 = v87;
          v100 = v85;
          v101 = v90;
          v102 = v24;
          v103 = v30;
          v104 = v31;
          v105 = v26;
          v50 = v20;
          ActionBarButtonViewModel.ActionBarButtonType.accessibilityLabel.getter();
        }

        v51 = sub_213F4F220();

        [v20 setAccessibilityLabel_];

        v99 = 0;
        v100 = 0xE000000000000000;
        if (v26 <= 1)
        {
          if (v26)
          {
            v31 = 0xE800000000000000;
            v30 = 0x657469726F766146;
          }

          else
          {
            v31 = 0xE300000000000000;
            v30 = 6579265;
          }
        }

        else if (v26 == 2)
        {
          v31 = 0xE400000000000000;
          v30 = 1702125906;
        }

        else if (v26 == 3)
        {
          v31 = 0xEA0000000000736ELL;
          v30 = 0x6F69746365726944;
        }

        else
        {
        }

        MEMORY[0x216052710](v30, v31);

        MEMORY[0x216052710](0x6E6F74747542, 0xE600000000000000);
        v74 = sub_213F4F220();

        [v20 setAccessibilityIdentifier_];
        v76 = v20;
LABEL_53:

        return;
      }

      v91 = 0;
LABEL_34:
      v30 = v93;
      v31 = v92;
      v47 = v20;
      v48 = sub_213F4F220();

      v28 = [objc_opt_self() systemImageNamed_];

      v29 = &selRef_setImage_;
      v24 = v91;
      goto LABEL_35;
    }

LABEL_26:
    v87 = v22;
    v85 = v23;
    if (v24)
    {
      v32 = HIBYTE(v24) & 0xF;
      if ((v24 & 0x2000000000000000) == 0)
      {
        v32 = v25 & 0xFFFFFFFFFFFFLL;
      }

      if (v32)
      {
        v89 = type metadata accessor for ActionBarDirectionButton();
        v33 = objc_allocWithZone(v89);
        v34 = OBJC_IVAR____TtC10MapsDesign24ActionBarDirectionButton_symbolImageView;
        v35 = v24;
        v36 = objc_allocWithZone(MEMORY[0x277D755E8]);
        sub_213E14704(&v106, &v99);
        v37 = v87;
        v38 = v85;
        sub_213E0CBA0(v87, v85, v25, v35, v93, v92, 3);
        *&v33[v34] = [v36 init];
        v39 = OBJC_IVAR____TtC10MapsDesign24ActionBarDirectionButton_textLabel;
        *&v33[v39] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
        v40 = &v33[OBJC_IVAR____TtC10MapsDesign24ActionBarDirectionButton_model];
        *v40 = v106;
        v42 = v108;
        v41 = v109;
        v43 = v107;
        *(v40 + 8) = v110;
        *(v40 + 2) = v42;
        *(v40 + 3) = v41;
        *(v40 + 1) = v43;
        v95.receiver = v33;
        v95.super_class = v89;
        v44 = objc_msgSendSuper2(&v95, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
        sub_213E0EA78();

        if (v110)
        {
          v45 = v44;
        }

        else
        {
          v99 = v37;
          v100 = v38;
          v101 = v25;
          v102 = v35;
          v103 = v93;
          v104 = v92;
          v105 = 3;
          v77 = v44;
          ActionBarButtonViewModel.ActionBarButtonType.accessibilityLabel.getter();
        }

        v78 = sub_213F4F220();

        [v44 setAccessibilityLabel_];

        v79 = sub_213F4F220();
        [v44 setAccessibilityIdentifier_];

        [v44 addTarget:v86 action:sel_directionSelectedWithSender_ forControlEvents:1];
        v80 = objc_allocWithZone(v15);
        v81 = &v80[OBJC_IVAR____TtC10MapsDesign15ActionBarButton_model];
        *v81 = v106;
        v83 = v108;
        v82 = v109;
        v84 = v107;
        *(v81 + 8) = v110;
        *(v81 + 2) = v83;
        *(v81 + 3) = v82;
        *(v81 + 1) = v84;
        sub_213E14704(&v106, &v99);
        v94.receiver = v80;
        v94.super_class = v15;
        v74 = v44;
        v76 = objc_msgSendSuper2(&v94, sel_init);
        [v76 setCustomView_];

        [v76 setStyle_];
        goto LABEL_53;
      }
    }

    v91 = v24;
    [v20 setStyle_];
    goto LABEL_34;
  }

  v91 = *(&v107 + 1);
  v85 = *(&v106 + 1);
  v87 = v106;
  if (!v109)
  {
    if (v106)
    {
      v25 = 0x72616D6B63656863;
    }

    else
    {
      v25 = 1937075312;
    }

    if (v106)
    {
      v15 = 0xE90000000000006BLL;
    }

    else
    {
      v15 = 0xE400000000000000;
    }

    v23 = sub_213F4F220();
    v24 = [objc_opt_self() systemImageNamed_];

    if (!v24)
    {
      __break(1u);
      goto LABEL_26;
    }

    goto LABEL_33;
  }

  if (v109 == 1)
  {
    if (v106)
    {
      v25 = 0x6C69662E72617473;
    }

    else
    {
      v25 = 1918989427;
    }

    if (v106)
    {
      v15 = 0xE90000000000006CLL;
    }

    else
    {
      v15 = 0xE400000000000000;
    }

    v23 = sub_213F4F220();
    v24 = [objc_opt_self() systemImageNamed_];

    if (!v24)
    {
      __break(1u);
      goto LABEL_14;
    }

LABEL_33:
    sub_213F4F070();
    sub_213F4F090();
    sub_213E150D8();
    sub_213F4F530();

    (*(v88 + 8))(v7, v89);
    (*(v9 + 8))(v12, v8);
    goto LABEL_34;
  }

  v46 = sub_213F4F220();
  v24 = [objc_opt_self() systemImageNamed_];

  if (v24)
  {
    goto LABEL_33;
  }

  __break(1u);
}

id sub_213E13270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v9 = a2;
    sub_213E150C8(&v9, v11);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(v11, 0, sizeof(v11));
  if (a3)
  {
LABEL_3:
    sub_213E15130(0, &unk_281182428, 0x277D75720);
    v3 = sub_213F4F3F0();
  }

LABEL_4:

  swift_unknownObjectRetain();
  v7 = v6(v11, v3);

  sub_213DE36FC(v11, &unk_27C8F8BC0, &qword_213F563F0);

  return v7;
}

uint64_t sub_213E13364(char *a1)
{
  v3 = &a1[OBJC_IVAR____TtC10MapsDesign15ActionBarButton_model];
  swift_beginAccess();
  v4 = *(v3 + 1);
  v5 = *(v3 + 3);
  v29 = *(v3 + 2);
  v30 = v5;
  v31 = *(v3 + 8);
  v28[0] = *v3;
  v28[1] = v4;
  v34 = v29;
  v35 = v5;
  v32 = v28[0];
  v33 = v4;
  *&v36 = v31;
  *(&v36 + 1) = a1;
  v6 = *v3;
  if (v3[48] == 1)
  {
    if ((v6 & 1) == 0)
    {
      v1[OBJC_IVAR____TtC10MapsDesign9ActionBar_showFavoritedToast] = 1;
      sub_213E14704(v28, &v23);
      v14 = a1;
      sub_213E105E4();
      v15 = objc_opt_self();
      v16 = swift_allocObject();
      *(v16 + 16) = v1;
      *&v25 = sub_213E14E14;
      *(&v25 + 1) = v16;
      *&v23 = MEMORY[0x277D85DD0];
      *(&v23 + 1) = 1107296256;
      *&v24 = sub_213E13658;
      *(&v24 + 1) = &block_descriptor;
      v10 = _Block_copy(&v23);
      v17 = v1;

      v12 = [v15 scheduledTimerWithTimeInterval:0 repeats:v10 block:2.0];
      goto LABEL_8;
    }

LABEL_6:
    sub_213E14704(v28, &v23);
    v13 = a1;
    goto LABEL_9;
  }

  if (v3[48] || (v6 & 1) != 0)
  {
    goto LABEL_6;
  }

  v1[OBJC_IVAR____TtC10MapsDesign9ActionBar_showAddedToast] = 1;
  sub_213E14704(v28, &v23);
  v7 = a1;
  sub_213E105E4();
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *&v25 = sub_213E14E5C;
  *(&v25 + 1) = v9;
  *&v23 = MEMORY[0x277D85DD0];
  *(&v23 + 1) = 1107296256;
  *&v24 = sub_213E13658;
  *(&v24 + 1) = &block_descriptor_52;
  v10 = _Block_copy(&v23);
  v11 = v1;

  v12 = [v8 scheduledTimerWithTimeInterval:0 repeats:v10 block:2.0];
LABEL_8:
  v18 = v12;
  _Block_release(v10);

LABEL_9:
  v19 = &v1[OBJC_IVAR____TtC10MapsDesign9ActionBar_onSelect];
  swift_beginAccess();
  v20 = *v19;
  if (*v19)
  {
    v21 = *(v19 + 1);
    v25 = v34;
    v26 = v35;
    v27 = v36;
    v23 = v32;
    v24 = v33;

    v20(&v23);
    sub_213DD7558(v20);
  }

  return sub_213E14DE4(&v32);
}

void sub_213E13658(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_213E13728(char *a1)
{
  v3 = &a1[OBJC_IVAR____TtC10MapsDesign24ActionBarDirectionButton_model];
  swift_beginAccess();
  v4 = *(v3 + 3);
  v15 = *(v3 + 2);
  v16 = v4;
  v17 = *(v3 + 8);
  v5 = *(v3 + 1);
  v14[0] = *v3;
  v14[1] = v5;
  v20 = v15;
  v21 = v4;
  v18 = v14[0];
  v19 = v5;
  v6 = v1 + OBJC_IVAR____TtC10MapsDesign9ActionBar_onSelect;
  *&v22 = v17;
  *(&v22 + 1) = a1;
  swift_beginAccess();
  v7 = *v6;
  if (*v6)
  {
    v8 = *(v6 + 8);
    v13[2] = v20;
    v13[3] = v21;
    v13[4] = v22;
    v13[0] = v18;
    v13[1] = v19;
    sub_213E14704(v14, v12);
    v9 = a1;
    sub_213DD74C4(v7);
    v7(v13);
    sub_213DD7558(v7);
  }

  else
  {
    sub_213E14704(v14, v13);
    v10 = a1;
  }

  return sub_213E14DE4(&v18);
}

id _s10MapsDesign20ActionBarToastButtonC5frameACSo6CGRectV_tcfC_0(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

__n128 ActionBarWrapper.init(model:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  result = *(a1 + 41);
  *(a2 + 41) = result;
  return result;
}

char *ActionBarWrapper.makeUIView(context:)()
{
  v1 = v0[1];
  v9[0] = *v0;
  v9[1] = v1;
  v10[0] = v0[2];
  *(v10 + 9) = *(v0 + 41);
  v2 = objc_allocWithZone(type metadata accessor for ActionBar());
  sub_213E147B0(v9, &v8);
  v3 = ActionBar.init(model:)(v0);
  v4 = &v3[OBJC_IVAR____TtC10MapsDesign9ActionBar_onSelect];
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = sub_213E13AEC;
  v4[1] = 0;
  sub_213DD7558(v5);
  return v3;
}

uint64_t sub_213E13AEC(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = *(result + 24);
  v5 = *(result + 32);
  v6 = *(result + 40);
  v7 = *(result + 48);
  if (*(result + 48))
  {
    if (v7 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8BA8, &unk_213F563D8);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_213F55C80;
      *(v12 + 56) = &type metadata for ActionBarButtonViewModel.ActionBarButtonType;
      v10 = swift_allocObject();
      *(v12 + 32) = v10;
      *(v10 + 16) = v1;
      *(v10 + 24) = v2;
      *(v10 + 32) = v3;
      *(v10 + 40) = v4;
      *(v10 + 48) = v5;
      *(v10 + 56) = v6;
      v11 = 1;
    }

    else
    {
      if (v7 != 5)
      {
        return result;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8BA8, &unk_213F563D8);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_213F55C80;
      *(v8 + 56) = &type metadata for ActionBarButtonViewModel.ActionBarButtonType;
      v9 = swift_allocObject();
      *(v8 + 32) = v9;
      *(v9 + 16) = v1;
      *(v9 + 24) = v2;
      *(v9 + 32) = v3;
      *(v9 + 40) = v4;
      *(v9 + 48) = v5;
      *(v9 + 56) = v6;
      *(v9 + 64) = 5;

      sub_213F4F860();

      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_213F51DE0;
      *(v10 + 56) = MEMORY[0x277D837D0];
      strcpy((v10 + 32), "Toast Type: ");
      *(v10 + 45) = 0;
      *(v10 + 46) = -5120;
      *(v10 + 88) = &type metadata for ActionBarButtonViewModel.ActionBarToastType;
      v11 = v1 & 1;
    }

    *(v10 + 64) = v11;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8BA8, &unk_213F563D8);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_213F55C80;
    *(v13 + 56) = &type metadata for ActionBarButtonViewModel.ActionBarButtonType;
    v14 = swift_allocObject();
    *(v13 + 32) = v14;
    *(v14 + 16) = v1;
    *(v14 + 24) = v2;
    *(v14 + 32) = v3;
    *(v14 + 40) = v4;
    *(v14 + 48) = v5;
    *(v14 + 56) = v6;
    *(v14 + 64) = 0;
  }

  sub_213F4F860();
}

char *sub_213E13D58()
{
  v1 = v0[1];
  v13[0] = *v0;
  v13[1] = v1;
  v3 = *v0;
  v2 = v0[1];
  v14[0] = v0[2];
  *(v14 + 9) = *(v0 + 41);
  v11[0] = v3;
  v11[1] = v2;
  v12[0] = v0[2];
  *(v12 + 9) = *(v0 + 41);
  v4 = objc_allocWithZone(type metadata accessor for ActionBar());
  sub_213E147B0(v13, &v10);
  v5 = ActionBar.init(model:)(v11);
  v6 = &v5[OBJC_IVAR____TtC10MapsDesign9ActionBar_onSelect];
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = sub_213E13AEC;
  v6[1] = 0;
  sub_213DD7558(v7);
  return v5;
}

uint64_t sub_213E13E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213E1504C();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_213E13EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213E1504C();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_213E13F2C()
{
  sub_213E1504C();
  sub_213F4DB60();
  __break(1u);
}

uint64_t sub_213E13F54(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_213F4F7E0();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_213F4F740();
}

uint64_t _s10MapsDesign24ActionBarButtonViewModelV0cdE4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = *(a2 + 32);
  v13 = *(a2 + 40);
  v15 = *(a2 + 48);
  v79[0] = *a1;
  v79[1] = v3;
  v79[2] = v4;
  v79[3] = v5;
  v79[4] = v7;
  v79[5] = v6;
  v80 = v8;
  v81 = v10;
  v82 = v9;
  v83 = v11;
  v84 = v12;
  v85 = v14;
  v86 = v13;
  v87 = v15;
  if (v8 > 2)
  {
    if (v8 != 3)
    {
      if (v8 == 4)
      {
        if (v15 == 4)
        {
          if (v2 == v10 && v3 == v9 || (v67 = v7, v73 = v6, v16 = v2, v17 = sub_213F4F830(), v2 = v16, v7 = v67, v6 = v73, (v17 & 1) != 0))
          {
            if (v5)
            {
              if (v12)
              {
                if (v4 == v11 && v5 == v12)
                {
                  goto LABEL_17;
                }

                v68 = v7;
                v74 = v6;
                v18 = v2;
                v19 = sub_213F4F830();
                v2 = v18;
                v7 = v68;
                v6 = v74;
                if (v19)
                {
                  goto LABEL_17;
                }
              }
            }

            else if (!v12)
            {
LABEL_17:
              v20 = v2;
              if (v7 != v14 || v6 != v13)
              {
                v72 = v7;
                v78 = v6;
                v65 = sub_213F4F830();
                sub_213E0CBA0(v10, v9, v11, v12, v14, v13, 4);
                sub_213E0CBA0(v20, v3, v4, v5, v72, v78, 4);
                sub_213DE36FC(v79, &unk_27C8F8BD0, &qword_213F563F8);
                v36 = v65;
                return v36 & 1;
              }

              v21 = v9;
              v22 = v11;
              v23 = v7;
              v24 = v6;
              sub_213E0CBA0(v10, v21, v22, v12, v7, v6, 4);
              v25 = v20;
              v26 = v3;
              v27 = v4;
              v28 = v5;
              v29 = v23;
              v30 = v24;
              v31 = 4;
              goto LABEL_41;
            }
          }

          v51 = v9;
          v52 = v11;
          v53 = v7;
          v54 = v6;
          v55 = v2;
          sub_213E0CBA0(v10, v51, v52, v12, v14, v13, 4);
          v38 = v55;
          v39 = v3;
          v40 = v4;
          v41 = v5;
          v42 = v53;
          v43 = v54;
          v44 = 4;
          goto LABEL_46;
        }
      }

      else if (v15 == 5)
      {
        v71 = v7;
        v77 = v6;
        v37 = v2;
        if ((v10 ^ v2))
        {
          sub_213E0CBA0(v10, v9, v11, v12, v14, v13, 5);
          v38 = v37;
        }

        else
        {
          v64 = v2;
          if (v3 == v9 && v4 == v11 || (sub_213F4F830() & 1) != 0)
          {
            if (v5 != v12 || v71 != v14)
            {
              v63 = sub_213F4F830();
              sub_213E0CBA0(v10, v9, v11, v12, v14, v13, 5);
              sub_213E0CBA0(v64, v3, v4, v5, v71, v77, 5);
              sub_213DE36FC(v79, &unk_27C8F8BD0, &qword_213F563F8);
              v36 = v63;
              return v36 & 1;
            }

            sub_213E0CBA0(v10, v9, v11, v5, v71, v13, 5);
            v25 = v64;
            v26 = v3;
            v27 = v4;
            v28 = v5;
            v29 = v71;
            v30 = v77;
            v31 = 5;
            goto LABEL_41;
          }

          sub_213E0CBA0(v10, v9, v11, v12, v14, v13, 5);
          v38 = v64;
        }

        v39 = v3;
        v40 = v4;
        v41 = v5;
        v42 = v71;
        v43 = v77;
        v44 = 5;
        goto LABEL_46;
      }

LABEL_44:

      goto LABEL_45;
    }

    if (v15 != 3)
    {
      goto LABEL_44;
    }

    if (v2 == v10 && v3 == v9 || (v69 = v7, v75 = v6, v32 = v2, v33 = sub_213F4F830(), v2 = v32, v7 = v69, v6 = v75, (v33 & 1) != 0))
    {
      if (!v5)
      {
        v46 = v9;
        v47 = v11;
        v48 = v7;
        v49 = v6;
        v50 = v2;
        sub_213E0CBA0(v10, v46, v47, v12, v14, v13, 3);
        sub_213E0CBA0(v50, v3, v4, 0, v48, v49, 3);

        sub_213DE36FC(v79, &unk_27C8F8BD0, &qword_213F563F8);
        if (v12)
        {

          goto LABEL_47;
        }

        goto LABEL_61;
      }

      if (v12)
      {
        v34 = v2;
        v70 = v7;
        v76 = v6;
        if (v4 == v11 && v5 == v12)
        {
          sub_213E0CBA0(v10, v9, v4, v5, v14, v13, 3);
          v25 = v34;
          v26 = v3;
          v27 = v4;
          v28 = v5;
          v29 = v70;
          v30 = v76;
          v31 = 3;
LABEL_41:
          sub_213E0CBA0(v25, v26, v27, v28, v29, v30, v31);
          sub_213DE36FC(v79, &unk_27C8F8BD0, &qword_213F563F8);
          v36 = 1;
          return v36 & 1;
        }

        v66 = sub_213F4F830();
        sub_213E0CBA0(v10, v9, v11, v12, v14, v13, 3);
        sub_213E0CBA0(v34, v3, v4, v5, v70, v76, 3);
        sub_213DE36FC(v79, &unk_27C8F8BD0, &qword_213F563F8);
        if ((v66 & 1) == 0)
        {
          goto LABEL_47;
        }

LABEL_61:
        v36 = 1;
        return v36 & 1;
      }

      v56 = v10;
      v57 = v9;
      v58 = v11;
      v59 = 0;
    }

    else
    {
      v56 = v10;
      v57 = v9;
      v58 = v11;
      v59 = v12;
    }

    v60 = v7;
    v61 = v6;
    v62 = v2;
    sub_213E0CBA0(v56, v57, v58, v59, v14, v13, 3);
    v38 = v62;
    v39 = v3;
    v40 = v4;
    v41 = v5;
    v42 = v60;
    v43 = v61;
    v44 = 3;
    goto LABEL_46;
  }

  if (!v8)
  {
    if (!v15)
    {
      goto LABEL_32;
    }

LABEL_45:
    v38 = v10;
    v39 = v9;
    v40 = v11;
    v41 = v12;
    v42 = v14;
    v43 = v13;
    v44 = v15;
LABEL_46:
    sub_213E0CBA0(v38, v39, v40, v41, v42, v43, v44);
    sub_213DE36FC(v79, &unk_27C8F8BD0, &qword_213F563F8);
LABEL_47:
    v36 = 0;
    return v36 & 1;
  }

  if (v8 == 1)
  {
    if (v15 != 1)
    {
      goto LABEL_45;
    }

    goto LABEL_32;
  }

  if (v15 != 2)
  {
    goto LABEL_45;
  }

LABEL_32:
  v35 = v2;
  sub_213DE36FC(v79, &unk_27C8F8BD0, &qword_213F563F8);
  v36 = v10 ^ v35 ^ 1;
  return v36 & 1;
}

uint64_t sub_213E14680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != 3 && a7 != 5)
  {
    if (a7 != 4)
    {
      return result;
    }
  }
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_213E14840()
{
  result = qword_27C8F8B68;
  if (!qword_27C8F8B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8B68);
  }

  return result;
}

unint64_t sub_213E14898()
{
  result = qword_2811847F0;
  if (!qword_2811847F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811847F0);
  }

  return result;
}

unint64_t sub_213E148EC()
{
  result = qword_27C8F8B78;
  if (!qword_27C8F8B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8B78);
  }

  return result;
}

unint64_t sub_213E14944()
{
  result = qword_27C8F8B80;
  if (!qword_27C8F8B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8B80);
  }

  return result;
}

uint64_t sub_213E149B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_213E14A0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t sub_213E14A90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 49))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 48);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_213E14AD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_ypSgSaySo13UIMenuElementCGSgSo0A0CSgIegngo_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_213E14B88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213E14BD0(uint64_t result, int a2, int a3)
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
      *(result + 72) = (a2 - 1);
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

uint64_t sub_213E14D3C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213E14D84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_213E14E8C()
{
  v1 = OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_symbolContainerView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v2 = OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_symbolView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v3 = OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_titleView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v4 = OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_subtitleView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *(v0 + OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton____lazy_storage___textsStack) = 0;
  *(v0 + OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton____lazy_storage___mainStack) = 0;
  sub_213F4F7C0();
  __break(1u);
}

uint64_t sub_213E14F88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_213E14FB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_213E14FD8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v7 = a2;
  v3(&v6, a1, &v7);
  return v6;
}

uint64_t sub_213E15018@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  result = v5(a1, *a2);
  *a3 = result;
  return result;
}

unint64_t sub_213E1504C()
{
  result = qword_27C8F8BA0;
  if (!qword_27C8F8BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8BA0);
  }

  return result;
}

uint64_t sub_213E150A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_213E14680(a1, a2, a3, a4, a5, a6, a7);
  }

  return a1;
}

uint64_t sub_213E150B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_213E0CBA0(a1, a2, a3, a4, a5, a6, a7);
  }

  return a1;
}

_OWORD *sub_213E150C8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_213E150D8()
{
  result = qword_281182550;
  if (!qword_281182550)
  {
    sub_213F4F080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182550);
  }

  return result;
}

uint64_t sub_213E15130(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t ActionBarItemType.hashValue.getter()
{
  v1 = *v0;
  sub_213F4F880();
  MEMORY[0x216052C90](v1);
  return sub_213F4F8C0();
}

uint64_t sub_213E15294@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_213E153A4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id;
  swift_beginAccess();
  v4 = sub_213F4CB40();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_213E154BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_213E1575C(&qword_27C8F8BF8, MEMORY[0x277CC95F0]);
  v15[0] = a1;
  LOBYTE(a1) = sub_213F4F1F0();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (a1)
  {
    v10(v8, v15[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v9, v8, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13 = v15[0];
    v15[-2] = v2;
    v15[-1] = v13;
    v15[1] = v2;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  return (v11)(v15[0], v4);
}

uint64_t sub_213E1575C(unint64_t *a1, void (*a2)(uint64_t))
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

void (*sub_213E157C8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E15234();
  return sub_213E15900;
}

uint64_t sub_213E1596C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_213E15A30(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_213E15B2C(&v4);
}

uint64_t sub_213E15A68@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

uint64_t sub_213E15B2C(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type;
  result = swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  return result;
}

uint64_t sub_213E15C50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void (*sub_213E15CAC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E1590C();
  return sub_213E15DE4;
}

void (*sub_213E15EE8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E15DF0();
  return sub_213E16020;
}

uint64_t sub_213E160A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
  sub_213F4CB80();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t sub_213E161A4(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
  sub_213F4CB80();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_213E16280(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  return result;
}

void (*sub_213E163BC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E1602C();
  return sub_213E164F4;
}

void (*sub_213E165F0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E16500();
  return sub_213E16728;
}

uint64_t sub_213E167A8@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
  sub_213F4CB80();

  v6 = (v5 + *a2);
  swift_beginAccess();
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
}

uint64_t keypath_set_16Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_213E168EC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
  sub_213F4CB80();

  v4 = (v2 + *a2);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];

  return v6;
}

uint64_t sub_213E169DC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  if (v7)
  {
    if (a2)
    {
      if (*v6 == a1 && v7 == a2)
      {
        goto LABEL_8;
      }

      v9 = v6[1];
      if (sub_213F4F830())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v6 = a1;
    v6[1] = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
  sub_213F4CB70();
}

uint64_t sub_213E16B44(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = (a1 + *a4);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a2;
  v6[1] = a3;
}

void (*sub_213E16BDC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E16734();
  return sub_213E16D14;
}

uint64_t sub_213E16D80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_213E16E48(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_213E16F34(v4);
}

uint64_t sub_213E16E74()
{
  swift_getKeyPath();
  v4 = v0;
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
  sub_213F4CB80();

  v1 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_213E16F34(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor;
  swift_beginAccess();
  if (!*(v1 + v3))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = *(v1 + v3);

  v5 = sub_213F4E890();

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v1 + v3);
LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_213E17098(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

void (*sub_213E17124(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E16D20();
  return sub_213E1725C;
}

uint64_t ActionBarItemViewModel.__allocating_init(_:disabled:toggled:symbol:label:tintColor:)(_BYTE *a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a7;
  v27 = a8;
  v15 = sub_213F4CB40();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v8 + 48);
  v21 = *(v8 + 52);
  v22 = swift_allocObject();
  LOBYTE(a1) = *a1;
  sub_213F4CB30();
  (*(v16 + 32))(v22 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id, v19, v15);
  v23 = (v22 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v22 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label);
  *v24 = 0;
  v24[1] = 0;
  *(v22 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor) = 0;
  sub_213F4CBB0();
  *(v22 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type) = a1;
  *(v22 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled) = a2;
  *(v22 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled) = a3;
  sub_213E165A0(a4, a5);
  sub_213E169B4(a6, v26);
  sub_213E16F34(v27);
  return v22;
}

uint64_t ActionBarItemViewModel.init(_:disabled:toggled:symbol:label:tintColor:)(_BYTE *a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a7;
  v24 = a8;
  v15 = sub_213F4CB40();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  sub_213F4CB30();
  (*(v16 + 32))(v8 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id, v19, v15);
  v20 = (v8 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v8 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label);
  *v21 = 0;
  v21[1] = 0;
  *(v8 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor) = 0;
  sub_213F4CBB0();
  *(v8 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type) = a1;
  *(v8 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled) = a2;
  *(v8 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled) = a3;
  sub_213E165A0(a4, a5);
  sub_213E169B4(a6, v23);
  sub_213E16F34(v24);
  return v8;
}

uint64_t ActionBarItemViewModel.__allocating_init(_:)(char *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ActionBarItemViewModel.init(_:)(a1);
  return v5;
}

uint64_t ActionBarItemViewModel.init(_:)(char *a1)
{
  v2 = v1;
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_213F4CB30();
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id, v8, v4);
  v10 = (v2 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v2 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label);
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor;
  *(v2 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor) = 0;
  sub_213F4CBB0();
  *(v2 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type) = v9;
  *(v2 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled) = 0;
  *(v2 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled) = 0;
  swift_beginAccess();
  if (v10[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v17[-3] = 0;
    v17[-2] = 0;
    v17[-4] = v2;
    v17[6] = v2;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v10 = 0;
    v10[1] = 0;
  }

  swift_beginAccess();
  if (v11[1])
  {
    v14 = swift_getKeyPath();
    MEMORY[0x28223BE20](v14);
    v17[-3] = 0;
    v17[-2] = 0;
    v17[-4] = v2;
    v17[3] = v2;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v11 = 0;
    v11[1] = 0;
  }

  swift_beginAccess();
  if (*(v2 + v12))
  {
    v15 = swift_getKeyPath();
    MEMORY[0x28223BE20](v15);
    v17[-2] = v2;
    v17[-1] = 0;
    v17[2] = v2;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  return v2;
}

uint64_t ActionBarItemViewModel.init(_:toggled:)(char *a1, char a2)
{
  v3 = v2;
  v6 = sub_213F4CB40();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  sub_213F4CB30();
  (*(v7 + 32))(v3 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id, v10, v6);
  v12 = (v3 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v3 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label);
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor;
  *(v3 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor) = 0;
  sub_213F4CBB0();
  *(v3 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type) = v11;
  *(v3 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled) = 0;
  *(v3 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled) = a2;
  swift_beginAccess();
  if (v12[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v19[-3] = 0;
    v19[-2] = 0;
    v19[-4] = v3;
    v19[6] = v3;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v12 = 0;
    v12[1] = 0;
  }

  swift_beginAccess();
  if (v13[1])
  {
    v16 = swift_getKeyPath();
    MEMORY[0x28223BE20](v16);
    v19[-3] = 0;
    v19[-2] = 0;
    v19[-4] = v3;
    v19[3] = v3;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v13 = 0;
    v13[1] = 0;
  }

  swift_beginAccess();
  if (*(v3 + v14))
  {
    v17 = swift_getKeyPath();
    MEMORY[0x28223BE20](v17);
    v19[-2] = v3;
    v19[-1] = 0;
    v19[2] = v3;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  return v3;
}

uint64_t sub_213E17DB0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  a3(a1, a2);
  return v9;
}

uint64_t ActionBarItemViewModel.init(_:disabled:)(char *a1, char a2)
{
  v3 = v2;
  v6 = sub_213F4CB40();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  sub_213F4CB30();
  (*(v7 + 32))(v3 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id, v10, v6);
  v12 = (v3 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v3 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label);
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor;
  *(v3 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor) = 0;
  sub_213F4CBB0();
  *(v3 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type) = v11;
  *(v3 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled) = a2;
  *(v3 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled) = 0;
  swift_beginAccess();
  if (v12[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v19[-3] = 0;
    v19[-2] = 0;
    v19[-4] = v3;
    v19[6] = v3;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v12 = 0;
    v12[1] = 0;
  }

  swift_beginAccess();
  if (v13[1])
  {
    v16 = swift_getKeyPath();
    MEMORY[0x28223BE20](v16);
    v19[-3] = 0;
    v19[-2] = 0;
    v19[-4] = v3;
    v19[3] = v3;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v13 = 0;
    v13[1] = 0;
  }

  swift_beginAccess();
  if (*(v3 + v14))
  {
    v17 = swift_getKeyPath();
    MEMORY[0x28223BE20](v17);
    v19[-2] = v3;
    v19[-1] = 0;
    v19[2] = v3;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  return v3;
}

unint64_t sub_213E181E0()
{
  v1 = v0;
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
  sub_213F4CB80();

  v2 = (v0 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    swift_getKeyPath();
    sub_213F4CB80();

    v6 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type;
    swift_beginAccess();
    v3 = 0;
    switch(*(v1 + v6))
    {
      case 1:
        v3 = 0x6461622E74786574;
        break;
      case 2:
        v3 = 0xD000000000000028;
        break;
      case 3:
        v3 = 0xD000000000000013;
        break;
      case 4:
        v3 = 0x697966696E67616DLL;
        break;
      case 5:
        v3 = 0x6C69636E6570;
        break;
      case 6:
        v3 = 0x6873617274;
        break;
      case 7:
        swift_getKeyPath();
        sub_213F4CB80();

        v9 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled;
        swift_beginAccess();
        if (*(v1 + v9))
        {
          v3 = 0x72616D6B63656863;
        }

        else
        {
          v3 = 1937075312;
        }

        *(v1 + v9);
        break;
      case 8:
        swift_getKeyPath();
        sub_213F4CB80();

        v7 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled;
        swift_beginAccess();
        if (*(v1 + v7))
        {
          v3 = 0x6C69662E72617473;
        }

        else
        {
          v3 = 1918989427;
        }

        *(v1 + v7);
        break;
      case 9:
        swift_getKeyPath();
        sub_213F4CB80();

        v8 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled;
        swift_beginAccess();
        if (*(v1 + v8))
        {
          v3 = 0xD000000000000012;
        }

        else
        {
          v3 = 0x7568742E646E6168;
        }

        *(v1 + v8);
        break;
      case 0xA:
        v3 = 0xD00000000000002DLL;
        break;
      case 0xB:
        v3 = 0x6B72616D78;
        break;
      case 0xC:
        v3 = 0x72616D6B63656863;
        break;
      case 0xD:
        break;
      default:
        v3 = 0x7070612E73756C70;
        break;
    }
  }

  return v3;
}

uint64_t sub_213E185F8()
{
  swift_getKeyPath();
  v3 = v0;
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
  sub_213F4CB80();

  v1 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type;
  swift_beginAccess();
  result = 0x73694C6F54646441;
  switch(*(v3 + v1))
  {
    case 1:
      result = 0x6975476F54646441;
      break;
    case 2:
      result = 0x7463656C6553;
      break;
    case 3:
      result = 1953656659;
      break;
    case 4:
      result = 0x686372616553;
      break;
    case 5:
      result = 1953064005;
      break;
    case 6:
      result = 0x6574656C6544;
      break;
    case 7:
      result = 6579265;
      break;
    case 8:
      result = 0x657469726F766146;
      break;
    case 9:
      result = 1702125906;
      break;
    case 0xA:
      result = 0x6F69746365726944;
      break;
    case 0xB:
      result = 0x6C65636E6143;
      break;
    case 0xC:
      result = 1701736260;
      break;
    case 0xD:
      result = 0x7261656C43;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_213E187F0()
{
  v1 = sub_213F4CB60();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v32 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_213F4F210();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v32 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v32 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v32 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  swift_getKeyPath();
  v36 = v0;
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
  sub_213F4CB80();

  v20 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type;
  swift_beginAccess();
  switch(*(v0 + v20))
  {
    case 7:
      swift_getKeyPath();
      v35 = v0;
      sub_213F4CB80();

      v22 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled;
      swift_beginAccess();
      *(v0 + v22);
      sub_213F4F200();
      v29 = v33;
      v28 = v34;
      (*(v33 + 16))(v19, v14, v34);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v31 = qword_281182518;
      sub_213F4CB50();
      v24 = sub_213F4F260();
      v19 = v14;
      break;
    case 8:
      swift_getKeyPath();
      v35 = v0;
      sub_213F4CB80();

      v26 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled;
      swift_beginAccess();
      *(v0 + v26);
      sub_213F4F200();
      v29 = v33;
      v28 = v34;
      (*(v33 + 16))(v19, v11, v34);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v27 = qword_281182518;
      sub_213F4CB50();
      v24 = sub_213F4F260();
      v19 = v11;
      break;
    case 9:
      swift_getKeyPath();
      v35 = v0;
      sub_213F4CB80();

      v21 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled;
      swift_beginAccess();
      *(v0 + v21);
      sub_213F4F200();
      v29 = v33;
      v28 = v34;
      (*(v33 + 16))(v19, v8, v34);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v30 = qword_281182518;
      sub_213F4CB50();
      v24 = sub_213F4F260();
      v19 = v8;
      break;
    default:
      sub_213F4F200();
      v29 = v33;
      v28 = v34;
      (*(v33 + 16))(v17, v19, v34);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v23 = qword_281182518;
      sub_213F4CB50();
      v24 = sub_213F4F260();
      break;
  }

  (*(v29 + 8))(v19, v28);
  return v24;
}

uint64_t ActionBarItemViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol + 8);

  v4 = *(v0 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label + 8);

  v5 = *(v0 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor);

  v6 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel___observationRegistrar;
  v7 = sub_213F4CBC0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t ActionBarItemViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol + 8);

  v4 = *(v0 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label + 8);

  v5 = *(v0 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor);

  v6 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel___observationRegistrar;
  v7 = sub_213F4CBC0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_213E1913C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_213E19294@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_213E193A4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = sub_213F4CB40();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a1);
  v13 = *a2;
  return a5(v11);
}

uint64_t sub_213E19478@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel);
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__id;
  swift_beginAccess();
  v4 = sub_213F4CB40();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_213E19570(uint64_t a1)
{
  v2 = v1;
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__id;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_213E1575C(&qword_27C8F8BF8, MEMORY[0x277CC95F0]);
  v15[0] = a1;
  LOBYTE(a1) = sub_213F4F1F0();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (a1)
  {
    v10(v8, v15[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v9, v8, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13 = v15[0];
    v15[-2] = v2;
    v15[-1] = v13;
    v15[1] = v2;
    sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel);
    sub_213F4CB70();
  }

  return (v11)(v15[0], v4);
}

uint64_t sub_213E19810(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_213F4CB40();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a2, v6);
  v11 = *a3;
  swift_beginAccess();
  (*(v7 + 40))(a1 + v11, v10, v6);
  return swift_endAccess();
}

void (*sub_213E19934(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E19234();
  return sub_213E19A6C;
}

void (*sub_213E19B40(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E19A78();
  return sub_213E19C78;
}

void (*sub_213E19D4C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E19C84();
  return sub_213E19E84;
}

void (*sub_213E19F58(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E19E90();
  return sub_213E1A090;
}

void (*sub_213E1A164(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E1A09C();
  return sub_213E1A29C;
}

void (*sub_213E1A370(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E1A2A8();
  return sub_213E1A4A8;
}

uint64_t sub_213E1A528@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel);
  sub_213F4CB80();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_213E1A614(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel);
  sub_213F4CB70();
}

uint64_t sub_213E1A6E4(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel);
  sub_213F4CB80();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
}

uint64_t sub_213E1A7BC()
{
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel);
  sub_213F4CB70();
}

uint64_t sub_213E1A884(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = *(a1 + v5);
  *(a1 + v5) = a2;
}

void (*sub_213E1A8F0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E1A4B4();
  return sub_213E1AA28;
}

uint64_t sub_213E1AA94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__forceExpandedSearch;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_213E1AB80()
{
  swift_getKeyPath();
  v3 = v0;
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel);
  sub_213F4CB80();

  v1 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__forceExpandedSearch;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_213E1AC3C(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__forceExpandedSearch;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel);
    sub_213F4CB70();
  }

  return result;
}

void (*sub_213E1AD68(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E1AA34();
  return sub_213E1AEA0;
}

uint64_t ActionBarViewModel.__allocating_init(leadingItems:centeredItems:trailingItems:leadingEditItems:centeredEditItems:trailingEditItems:forceExpandedSearch:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  v17 = swift_allocObject();
  sub_213F4CB30();
  sub_213F4CBB0();
  *(v17 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingItems) = a1;
  *(v17 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__centeredItems) = a2;
  *(v17 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingItems) = a3;
  *(v17 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingEditItems) = a4;
  *(v17 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__centeredEditItems) = a5;
  *(v17 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingEditItems) = a6;
  *(v17 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__forceExpandedSearch) = a7;
  return v17;
}

uint64_t ActionBarViewModel.init(leadingItems:centeredItems:trailingItems:leadingEditItems:centeredEditItems:trailingEditItems:forceExpandedSearch:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v21 = a7;
  v14 = sub_213F4CB40();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213F4CB30();
  (*(v15 + 32))(v7 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__id, v18, v14);
  sub_213F4CBB0();
  *(v7 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingItems) = a1;
  *(v7 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__centeredItems) = a2;
  *(v7 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingItems) = a3;
  *(v7 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingEditItems) = a4;
  *(v7 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__centeredEditItems) = a5;
  *(v7 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingEditItems) = a6;
  *(v7 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__forceExpandedSearch) = v21;
  return v7;
}

uint64_t sub_213E1B0F8(uint64_t result, char a2)
{
  v30 = *(result + 16);
  if (v30)
  {
    v2 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__centeredItems;
    v3 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingItems;
    v4 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingEditItems;
    v5 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__centeredEditItems;
    v25 = result + 32;
    v6 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingEditItems;
    v29 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingItems;
    swift_beginAccess();
    v28 = v2;
    swift_beginAccess();
    swift_beginAccess();
    v27 = v4;
    swift_beginAccess();
    v26 = v5;
    swift_beginAccess();
    swift_beginAccess();
    for (i = 0; ; ++i)
    {
      v32 = i;
      v34 = *(v25 + i);
      swift_getKeyPath();
      sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel);
      sub_213F4CB80();

      v8 = *(v31 + v29);
      swift_getKeyPath();

      sub_213F4CB80();

      v9 = *(v31 + v28);

      sub_213E27300(v10);
      swift_getKeyPath();
      sub_213F4CB80();

      v11 = *(v31 + v3);

      sub_213E27300(v12);
      swift_getKeyPath();
      sub_213F4CB80();

      v13 = *(v31 + v27);

      sub_213E27300(v14);
      swift_getKeyPath();
      sub_213F4CB80();

      v15 = *(v31 + v26);

      sub_213E27300(v16);
      swift_getKeyPath();
      sub_213F4CB80();

      v17 = *(v31 + v6);

      result = sub_213E27300(v18);
      if (v8 >> 62)
      {
        result = sub_213F4F7E0();
        v19 = result;
      }

      else
      {
        v19 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v19)
      {
        break;
      }

LABEL_3:

      if (v32 + 1 == v30)
      {
        return result;
      }
    }

    if (v19 >= 1)
    {
      v20 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x216052B30](v20, v8);
        }

        else
        {
          v21 = *(v8 + 8 * v20 + 32);
        }

        swift_getKeyPath();
        sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
        sub_213F4CB80();

        v22 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type;
        swift_beginAccess();
        if (*(v21 + v22) == v34)
        {
          v23 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled;
          swift_beginAccess();
          if (*(v21 + v23) != (a2 & 1))
          {
            KeyPath = swift_getKeyPath();
            MEMORY[0x28223BE20](KeyPath);
            sub_213F4CB70();

            goto LABEL_11;
          }

          *(v21 + v23) = a2 & 1;
        }

LABEL_11:
        if (v19 == ++v20)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_213E1B6E4(unsigned __int8 *a1, char a2)
{
  v3 = v2;
  v31 = *a1;
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel);
  sub_213F4CB80();

  v5 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingItems;
  swift_beginAccess();
  v6 = *(v3 + v5);
  swift_getKeyPath();

  sub_213F4CB80();

  v7 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__centeredItems;
  swift_beginAccess();
  v8 = *(v3 + v7);

  sub_213E27300(v9);
  swift_getKeyPath();
  sub_213F4CB80();

  v10 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingItems;
  swift_beginAccess();
  v11 = *(v3 + v10);

  sub_213E27300(v12);
  swift_getKeyPath();
  sub_213F4CB80();

  v13 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingEditItems;
  swift_beginAccess();
  v14 = *(v3 + v13);

  sub_213E27300(v15);
  swift_getKeyPath();
  sub_213F4CB80();

  v16 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__centeredEditItems;
  swift_beginAccess();
  v17 = *(v3 + v16);

  sub_213E27300(v18);
  swift_getKeyPath();
  sub_213F4CB80();

  v19 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingEditItems;
  swift_beginAccess();
  v20 = *(v3 + v19);

  result = sub_213E27300(v21);
  v23 = v6;
  if (v6 >> 62)
  {
    result = sub_213F4F7E0();
    v23 = v6;
    v24 = result;
  }

  else
  {
    v24 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v31;
  if (!v24)
  {
  }

  if (v24 >= 1)
  {
    v26 = 0;
    v32 = v23 & 0xC000000000000001;
    v33 = v23;
    while (1)
    {
      if (v32)
      {
        v27 = MEMORY[0x216052B30](v26);
      }

      else
      {
        v27 = *(v23 + 8 * v26 + 32);
      }

      swift_getKeyPath();
      sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
      sub_213F4CB80();

      v28 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type;
      swift_beginAccess();
      if (*(v27 + v28) == v25)
      {
        v29 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled;
        swift_beginAccess();
        if (*(v27 + v29) != (a2 & 1))
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          sub_213F4CB70();

          v25 = v31;
          goto LABEL_8;
        }

        *(v27 + v29) = a2 & 1;
      }

LABEL_8:
      ++v26;
      v23 = v33;
      if (v24 == v26)
      {
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_213E1BBE0(unsigned __int8 *a1)
{
  v2 = v1;
  v27 = *a1;
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel);
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingItems;
  swift_beginAccess();
  v4 = *(v2 + v3);
  swift_getKeyPath();

  sub_213F4CB80();

  v5 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__centeredItems;
  swift_beginAccess();
  v6 = *(v2 + v5);

  sub_213E27300(v7);
  swift_getKeyPath();
  sub_213F4CB80();

  v8 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingItems;
  swift_beginAccess();
  v9 = *(v2 + v8);

  sub_213E27300(v10);
  swift_getKeyPath();
  sub_213F4CB80();

  v11 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingEditItems;
  swift_beginAccess();
  v12 = *(v2 + v11);

  sub_213E27300(v13);
  swift_getKeyPath();
  sub_213F4CB80();

  v14 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__centeredEditItems;
  swift_beginAccess();
  v15 = *(v2 + v14);

  sub_213E27300(v16);
  swift_getKeyPath();
  sub_213F4CB80();

  v17 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingEditItems;
  swift_beginAccess();
  v18 = *(v2 + v17);

  sub_213E27300(v19);
  v20 = v4;
  if (v4 >> 62)
  {
LABEL_15:
    v21 = sub_213F4F7E0();
    if (v21)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
LABEL_3:
      v22 = 0;
      do
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x216052B30](v22, v20);
          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:

            return v23;
          }
        }

        else
        {
          if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v23 = *(v20 + 8 * v22 + 32);

          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_12;
          }
        }

        swift_getKeyPath();
        sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
        sub_213F4CB80();

        v25 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type;
        swift_beginAccess();
        if (*(v23 + v25) == v27)
        {
          goto LABEL_13;
        }

        ++v22;
      }

      while (v24 != v21);
    }
  }

  return 0;
}

uint64_t ActionBarViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingItems);

  v4 = *(v0 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__centeredItems);

  v5 = *(v0 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingItems);

  v6 = *(v0 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingEditItems);

  v7 = *(v0 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__centeredEditItems);

  v8 = *(v0 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingEditItems);

  v9 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel___observationRegistrar;
  v10 = sub_213F4CBC0();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  return v0;
}

uint64_t ActionBarViewModel.__deallocating_deinit()
{
  ActionBarViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_213E1C144@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_213E1C23C@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = type metadata accessor for ActionBarItem(0);
  v3 = v2 - 8;
  v63 = *(v2 - 8);
  v4 = *(v63 + 64);
  MEMORY[0x28223BE20](v2);
  *&v64 = v5;
  *&v65 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E00, &qword_213F56C98);
  v6 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v69 = (&v60 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E08, &qword_213F56CA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v60 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E10, &qword_213F56CA8);
  v12 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v14 = &v60 - v13;
  v15 = sub_213F4D9A0();
  v66 = *(v15 - 8);
  v16 = *(v66 + 8);
  MEMORY[0x28223BE20](v15);
  v70 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + 28);
  v62 = v1;
  v19 = *(v1 + v18);
  swift_getKeyPath();
  *&v76 = v19;
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
  sub_213F4CB80();

  v20 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type;
  swift_beginAccess();
  if (*(v19 + v20) == 4)
  {
    v21 = v70;
    sub_213F4D990();
    v22 = v66;
    (*(v66 + 2))(v11, v21, v15);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E40, &qword_213F56CC8);
    sub_213E1575C(&qword_27C8F8E30, MEMORY[0x277CDDEB0]);
    sub_213E29130();
    sub_213F4DBA0();
    sub_213DE3164(v14, v69, &qword_27C8F8E10, &qword_213F56CA8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E20, &qword_213F56CC0);
    sub_213E29074();
    sub_213DE3AE4(&qword_27C8F8E68, &qword_27C8F8E20, &qword_213F56CC0);
    v23 = v71;
    sub_213F4DBA0();
    sub_213DE36FC(v14, &qword_27C8F8E10, &qword_213F56CA8);
    (*(v22 + 1))(v70, v15);
    v24 = 0;
    v25 = v23;
  }

  else
  {
    v60 = v8;
    v66 = v11;
    v70 = v15;
    v61 = v14;
    swift_getKeyPath();
    *&v76 = v19;
    sub_213F4CB80();

    v26 = (v19 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label);
    swift_beginAccess();
    v27 = v26[1];
    if (v27)
    {
      v28 = *v26;
      swift_getKeyPath();
      *&v76 = v19;

      sub_213F4CB80();

      if (*(v19 + v20) == 10 && (v29 = sub_213E181E0(), v30))
      {
        v31 = v29;
        v32 = v30;
        v33 = v65;
        sub_213E29808(v62, v65, type metadata accessor for ActionBarItem);
        v34 = (*(v63 + 80) + 16) & ~*(v63 + 80);
        v35 = (v64 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
        v36 = swift_allocObject();
        sub_213E29870(v33, v36 + v34, type metadata accessor for ActionBarItem);
        v37 = (v36 + v35);
        *v37 = v31;
        v37[1] = v32;
        v38 = (v36 + ((v35 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v38 = v28;
        v38[1] = v27;
        v72 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
        sub_213E29028();
        sub_213F4EA90();
        v72 = sub_213E29328;
        v73 = v36;
        v74 = v76;
        v75 = 0;
      }

      else
      {
        v39 = v65;
        sub_213E29808(v62, v65, type metadata accessor for ActionBarItem);
        v40 = (*(v63 + 80) + 32) & ~*(v63 + 80);
        v41 = swift_allocObject();
        *(v41 + 16) = v28;
        *(v41 + 24) = v27;
        sub_213E29870(v39, v41 + v40, type metadata accessor for ActionBarItem);
        v72 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
        sub_213E29028();
        sub_213F4EA90();
        v72 = sub_213E29210;
        v73 = v41;
        v74 = v76;
        v75 = 1;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E50, &qword_213F56CD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E60, &qword_213F56CD8);
      sub_213DE3AE4(&qword_27C8F8E48, &qword_27C8F8E50, &qword_213F56CD0);
      sub_213DE3AE4(&qword_27C8F8E58, &qword_27C8F8E60, &qword_213F56CD8);
      sub_213F4DBA0();
      v42 = v77;
      v43 = v78;
      v44 = v61;
      v64 = v76;
      v65 = v77;
      v45 = v66;
      *v66 = v76;
      *(v45 + 1) = v42;
      v45[32] = v43;
      swift_storeEnumTagMultiPayload();
      v46 = v64;
      v47 = v65;
      sub_213E29294(v64, *(&v64 + 1), v65);
      sub_213E29294(v46, *(&v46 + 1), v47);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E40, &qword_213F56CC8);
      sub_213E1575C(&qword_27C8F8E30, MEMORY[0x277CDDEB0]);
      sub_213E29130();
      sub_213F4DBA0();
      sub_213DE3164(v44, v69, &qword_27C8F8E10, &qword_213F56CA8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E20, &qword_213F56CC0);
      sub_213E29074();
      sub_213DE3AE4(&qword_27C8F8E68, &qword_27C8F8E20, &qword_213F56CC0);
      v25 = v71;
      sub_213F4DBA0();
      sub_213E292E4(v46, *(&v46 + 1), v47);
      sub_213E292E4(v46, *(&v46 + 1), v47);
      sub_213DE36FC(v61, &qword_27C8F8E10, &qword_213F56CA8);
    }

    else
    {
      v48 = sub_213E181E0();
      if (!v49)
      {
        v24 = 1;
        v25 = v71;
        goto LABEL_12;
      }

      v50 = v48;
      v51 = v49;
      *&v76 = 0;
      *(&v76 + 1) = 0xE000000000000000;
      swift_getKeyPath();
      v72 = v19;
      sub_213F4CB80();

      LOBYTE(v72) = *(v19 + v20);
      sub_213F4F7B0();
      v52 = v76;
      v53 = v65;
      sub_213E29808(v62, v65, type metadata accessor for ActionBarItem);
      v54 = (*(v63 + 80) + 48) & ~*(v63 + 80);
      v55 = swift_allocObject();
      *(v55 + 16) = v52;
      *(v55 + 32) = v50;
      *(v55 + 40) = v51;
      sub_213E29870(v53, v55 + v54, type metadata accessor for ActionBarItem);
      v72 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
      sub_213E29028();
      sub_213F4EA90();
      v56 = v76;
      v57 = v69;
      *v69 = sub_213E28FA0;
      v57[1] = v55;
      *(v57 + 1) = v56;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E20, &qword_213F56CC0);
      sub_213E29074();
      sub_213DE3AE4(&qword_27C8F8E68, &qword_27C8F8E20, &qword_213F56CC0);
      v25 = v71;
      sub_213F4DBA0();
    }

    v24 = 0;
  }

LABEL_12:
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E18, &unk_213F56CB0);
  return (*(*(v58 - 8) + 56))(v25, v24, 1, v58);
}

uint64_t sub_213E1CE14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v50 = a6;
  v49 = a5;
  v48 = a4;
  v47 = a3;
  v46 = a1;
  v58 = a7;
  v56 = sub_213F4DCA0();
  v57 = *(v56 - 8);
  v8 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionBarItem(0);
  v12 = v11 - 8;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E70, &qword_213F56CE0);
  v53 = *(v52 - 8);
  v16 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  v18 = &v45 - v17;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E78, &qword_213F56CE8);
  v54 = *(v55 - 8);
  v19 = *(v54 + 64);
  MEMORY[0x28223BE20](v55);
  v45 = &v45 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E80, &qword_213F56CF0);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v51 = &v45 - v24;
  sub_213E29808(a2, v15, type metadata accessor for ActionBarItem);
  v25 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v26 = (v14 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  sub_213E29870(v15, v27 + v25, type metadata accessor for ActionBarItem);
  v28 = v46;
  *(v27 + v26) = v46;
  v59 = v47;
  v60 = v48;
  v61 = a2;
  v62 = v49;
  v63 = v50;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E88, &qword_213F56CF8);
  sub_213E29428(&qword_27C8F8E90, &qword_27C8F8E88, &qword_213F56CF8, sub_213E293F8);
  sub_213F4EB00();
  sub_213F4DC90();
  sub_213DE3AE4(&qword_27C8F8EC8, &qword_27C8F8E70, &qword_213F56CE0);
  sub_213E1575C(&qword_281182998, MEMORY[0x277CDE0B8]);
  v30 = v45;
  v31 = v52;
  v32 = v56;
  sub_213F4E3B0();
  (*(v57 + 8))(v10, v32);
  (*(v53 + 8))(v18, v31);
  sub_213F4EEE0();
  sub_213F4D4E0();
  v33 = v51;
  (*(v54 + 32))(v51, v30, v55);
  v34 = (v33 + *(v22 + 44));
  v35 = v70;
  v34[4] = v69;
  v34[5] = v35;
  v34[6] = v71;
  v36 = v66;
  *v34 = v65;
  v34[1] = v36;
  v37 = v68;
  v34[2] = v67;
  v34[3] = v37;
  v38 = *(a2 + *(v12 + 28));
  swift_getKeyPath();
  v64 = v38;
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
  sub_213F4CB80();

  v39 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled;
  swift_beginAccess();
  LOBYTE(v38) = *(v38 + v39);
  KeyPath = swift_getKeyPath();
  v41 = swift_allocObject();
  *(v41 + 16) = v38;
  v42 = v58;
  sub_213DE2B44(v33, v58, &qword_27C8F8E80, &qword_213F56CF0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8ED0, &qword_213F56D50);
  v44 = (v42 + *(result + 36));
  *v44 = KeyPath;
  v44[1] = sub_213E29590;
  v44[2] = v41;
  return result;
}

uint64_t sub_213E1D4D0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = sub_213F4D290();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  *a4 = sub_213F4D8A0();
  *(a4 + 8) = 0x4010000000000000;
  *(a4 + 16) = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8ED8, &qword_213F56D58);
  sub_213E1D75C(a1, a2, a3, a4 + *(v16 + 44));
  v17 = sub_213F4E8F0();
  *(a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8EB0, &qword_213F56D08) + 36)) = v17;
  LOBYTE(v17) = sub_213F4E080();
  sub_213DBBD08(v15);
  sub_213F4D280();
  sub_213F4D270();
  v18 = *(v9 + 8);
  v18(v13, v8);
  v18(v15, v8);
  sub_213F4CDA0();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8EA0, &qword_213F56D00) + 36);
  *v27 = v17;
  *(v27 + 8) = v20;
  *(v27 + 16) = v22;
  *(v27 + 24) = v24;
  *(v27 + 32) = v26;
  *(v27 + 40) = 0;
  LOBYTE(v17) = sub_213F4E0A0();
  sub_213DBBD08(v15);
  sub_213F4D280();
  sub_213F4D270();
  v18(v13, v8);
  v18(v15, v8);
  sub_213F4CDA0();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E88, &qword_213F56CF8);
  v37 = a4 + *(result + 36);
  *v37 = v17;
  *(v37 + 8) = v29;
  *(v37 + 16) = v31;
  *(v37 + 24) = v33;
  *(v37 + 32) = v35;
  *(v37 + 40) = 0;
  return result;
}

uint64_t sub_213E1D75C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v57 = a2;
  v58 = a3;
  v56 = a1;
  v60 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v48 - v6;
  v8 = sub_213F4D290();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7798, &unk_213F61D50);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v59 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = (&v48 - v21);

  v51 = sub_213F4E9F0();
  sub_213DBBD08(v15);
  sub_213F4D280();
  sub_213F4D270();
  v23 = *(v9 + 8);
  v55 = v8;
  v23(v13, v8);
  v23(v15, v8);
  sub_213F4E110();
  v53 = sub_213F4E0F0();
  v24 = *(v53 - 8);
  v52 = *(v24 + 56);
  v54 = v24 + 56;
  v52(v7, 1, 1, v53);
  v49 = sub_213F4E190();
  sub_213DE36FC(v7, &qword_27C8F7668, &qword_213F52190);
  KeyPath = swift_getKeyPath();
  v26 = v22;
  v27 = (v22 + *(v17 + 44));
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76B0, &qword_213F518C0) + 28);
  v29 = *MEMORY[0x277CE1050];
  v30 = sub_213F4EA30();
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  *v27 = swift_getKeyPath();
  v50 = v26;
  *v26 = v51;
  v26[1] = KeyPath;
  v26[2] = v49;
  v61 = v57;
  v62 = v58;
  sub_213DBC9EC();

  v31 = sub_213F4E310();
  v33 = v32;
  LOBYTE(KeyPath) = v34;
  sub_213DBBD08(v15);
  sub_213F4D280();
  sub_213F4D270();
  v35 = v13;
  v36 = v55;
  v23(v35, v55);
  v23(v15, v36);
  sub_213F4E110();
  v52(v7, 1, 1, v53);
  sub_213F4E190();
  sub_213DE36FC(v7, &qword_27C8F7668, &qword_213F52190);
  v37 = sub_213F4E2E0();
  v39 = v38;
  LOBYTE(v7) = v40;
  v42 = v41;

  sub_213DBCA40(v31, v33, KeyPath & 1);

  v43 = v50;
  v44 = v59;
  sub_213DE3164(v50, v59, &qword_27C8F7798, &unk_213F61D50);
  v45 = v60;
  sub_213DE3164(v44, v60, &qword_27C8F7798, &unk_213F61D50);
  v46 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8EE0, &qword_213F56DC8) + 48);
  *v46 = v37;
  *(v46 + 8) = v39;
  *(v46 + 16) = v7 & 1;
  *(v46 + 24) = v42;
  sub_213DBCA50(v37, v39, v7 & 1);

  sub_213DE36FC(v43, &qword_27C8F7798, &unk_213F61D50);
  sub_213DBCA40(v37, v39, v7 & 1);

  return sub_213DE36FC(v44, &qword_27C8F7798, &unk_213F61D50);
}

uint64_t sub_213E1DC84@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a4;
  v53 = a1;
  v62 = a5;
  v8 = sub_213F4DCA0();
  v9 = *(v8 - 8);
  v59 = v8;
  v60 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v55 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ActionBarItem(0);
  v13 = *(v12 - 8);
  v61 = v12 - 8;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8EE8, &qword_213F56DD0);
  v56 = *(v54 - 8);
  v16 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8EF0, &qword_213F56DD8);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v53 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8EF8, &qword_213F56DE0);
  v25 = v24 - 8;
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v57 = &v53 - v27;
  *&v64 = a2;
  *(&v64 + 1) = a3;
  sub_213E29808(a4, v15, type metadata accessor for ActionBarItem);
  v28 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v29 = (v14 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_213E29870(v15, v30 + v28, type metadata accessor for ActionBarItem);
  v31 = v53;
  *(v30 + v29) = v53;
  sub_213DBC9EC();

  v32 = v31;
  sub_213F4EB10();
  v33 = v55;
  sub_213F4DC90();
  sub_213DE3AE4(&qword_281182728, &qword_27C8F8EE8, &qword_213F56DD0);
  sub_213E1575C(&qword_281182998, MEMORY[0x277CDE0B8]);
  v34 = v54;
  v35 = v59;
  sub_213F4E3B0();
  (*(v60 + 8))(v33, v35);
  (*(v56 + 8))(v18, v34);
  LOBYTE(v18) = sub_213F4E040();
  sub_213F4CDA0();
  v36 = &v23[*(v20 + 44)];
  *v36 = v18;
  *(v36 + 1) = v37;
  *(v36 + 2) = v38;
  *(v36 + 3) = v39;
  *(v36 + 4) = v40;
  v36[40] = 0;
  sub_213F4EEE0();
  sub_213F4D4E0();
  v41 = v57;
  sub_213DE2B44(v23, v57, &qword_27C8F8EF0, &qword_213F56DD8);
  v42 = (v41 + *(v25 + 44));
  v43 = v69;
  v42[4] = v68;
  v42[5] = v43;
  v42[6] = v70;
  v44 = v65;
  *v42 = v64;
  v42[1] = v44;
  v45 = v67;
  v42[2] = v66;
  v42[3] = v45;
  v46 = *(v58 + *(v61 + 28));
  swift_getKeyPath();
  v63 = v46;
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
  sub_213F4CB80();

  v47 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled;
  swift_beginAccess();
  LOBYTE(v46) = *(v46 + v47);
  KeyPath = swift_getKeyPath();
  v49 = swift_allocObject();
  *(v49 + 16) = v46;
  v50 = v62;
  sub_213DE2B44(v41, v62, &qword_27C8F8EF8, &qword_213F56DE0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F00, &qword_213F56DE8);
  v52 = (v50 + *(result + 36));
  *v52 = KeyPath;
  v52[1] = sub_213E2AAD8;
  v52[2] = v49;
  return result;
}

uint64_t sub_213E1E28C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v54 = a6;
  v50 = a4;
  v51 = a5;
  v49 = a3;
  v48 = a2;
  v47 = a1;
  v56 = a7;
  v8 = sub_213F4F0A0();
  v60 = *(v8 - 8);
  v61 = v8;
  v9 = *(v60 + 64);
  MEMORY[0x28223BE20](v8);
  v57 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_213F4F080();
  v12 = *(v11 - 8);
  v58 = v11;
  v59 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v55 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_213F4DCA0();
  v16 = *(v15 - 8);
  v52 = v15;
  v53 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ActionBarItem(0);
  v21 = v20 - 8;
  v22 = *(v20 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F08, &unk_213F56DF0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v46 - v27;
  sub_213E29808(a6, &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionBarItem);
  v29 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v30 = swift_allocObject();
  sub_213E29870(&v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for ActionBarItem);
  v31 = v47;
  *(v30 + ((v23 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = v47;
  v65[0] = v48;
  v65[1] = v49;
  v62 = v65;
  v63 = v50;
  v64 = v51;

  v32 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F10, &qword_213F57850);
  sub_213DE3AE4(&qword_27C8F8F18, &qword_27C8F8F10, &qword_213F57850);
  sub_213F4EB00();

  sub_213F4DC90();
  sub_213DE3AE4(&qword_281182720, &qword_27C8F8F08, &unk_213F56DF0);
  sub_213E1575C(&qword_281182998, MEMORY[0x277CDE0B8]);
  v33 = v56;
  v34 = v52;
  sub_213F4E3B0();
  (*(v53 + 8))(v19, v34);
  (*(v25 + 8))(v28, v24);
  v35 = v55;
  sub_213F4F070();
  v36 = v57;
  sub_213F4F090();
  v37 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F20, &unk_213F56E00) + 36));
  v38 = v33;
  LODWORD(v28) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F28, &qword_213F61E10) + 28);
  sub_213E1575C(&qword_281182550, MEMORY[0x277CE1598]);
  v39 = v58;
  sub_213F4D550();
  (*(v60 + 8))(v36, v61);
  (*(v59 + 8))(v35, v39);
  *v37 = swift_getKeyPath();
  v40 = *(v54 + *(v21 + 28));
  swift_getKeyPath();
  v65[0] = v40;
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
  sub_213F4CB80();

  v41 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled;
  swift_beginAccess();
  LOBYTE(v40) = *(v40 + v41);
  KeyPath = swift_getKeyPath();
  v43 = swift_allocObject();
  *(v43 + 16) = v40;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F30, &qword_213F56E40);
  v45 = (v38 + *(result + 36));
  *v45 = KeyPath;
  v45[1] = sub_213E2AAD8;
  v45[2] = v43;
  return result;
}

uint64_t ActionBarModifier.init(model:onSelect:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for ActionBarModifier(0);
  v7 = a3 + v6[5];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v8 = v6[6];
  type metadata accessor for ActionBarViewModel(0);
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel);
  result = sub_213F4ED60();
  v10 = (a3 + v6[7]);
  *v10 = a1;
  v10[1] = a2;
  return result;
}

uint64_t sub_213E1EA2C@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = sub_213F4D7F0();
  v24 = *(v2 - 8);
  v25 = v2;
  v3 = *(v24 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v23 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8D50, &unk_213F5E0A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_213F4EDA0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213DE3164(v1, v9, &qword_27C8F8C80, &qword_213F57940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_213E2A810(v9, v13);
  }

  else
  {
    v19 = *v9;
    sub_213F4F520();
    v20 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    (*(v24 + 8))(v5, v25);
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8FC8, &qword_213F61200);
  if ((*(*(v21 - 8) + 48))(v13, 1, v21) == 1)
  {
    sub_213DE36FC(v13, &qword_27C8F8D50, &unk_213F5E0A0);
    return (*(v15 + 104))(v26, *MEMORY[0x277CDF0D8], v14);
  }

  else
  {
    MEMORY[0x216052020](v21);
    sub_213DE36FC(v13, &qword_27C8F8FC8, &qword_213F61200);
    return (*(v15 + 32))(v26, v18, v14);
  }
}

uint64_t sub_213E1ED98()
{
  v1 = sub_213F4D7F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for ActionBarModifier(0) + 20);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_213F4F520();
    v8 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    sub_213E053BC(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  if (v7)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_213E1EEF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v4 = type metadata accessor for ActionBarModifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = type metadata accessor for ActionBarItem(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F90E0, &qword_213F56F78);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v21 - v13;
  sub_213E29808(v2, v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionBarModifier);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_213E29870(v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for ActionBarModifier);
  *(v16 + ((v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  *(v10 + *(v7 + 20)) = a1;
  v17 = (v10 + *(v7 + 24));
  *v17 = sub_213E2A698;
  v17[1] = v16;
  swift_retain_n();
  v22 = sub_213E185F8();
  v23 = v18;

  MEMORY[0x216052710](0x6E6F74747542, 0xE600000000000000);

  sub_213E1575C(&qword_27C8F90E8, type metadata accessor for ActionBarItem);
  sub_213F4E6D0();

  sub_213E2A73C(v10, type metadata accessor for ActionBarItem);
  v22 = sub_213E187F0();
  v23 = v19;
  sub_213DBC9EC();
  sub_213F4D3C0();

  return sub_213DE36FC(v14, &qword_27C8F90E0, &qword_213F56F78);
}

uint64_t sub_213E1F228@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9128, &qword_213F56F98);
  v46 = *(v48 - 8);
  v5 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v45 = &v41 - v6;
  v7 = sub_213F4DC40();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9118, &qword_213F56F90);
  v42 = *(v9 - 8);
  v10 = *(v42 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9110, &qword_213F56F88);
  v44 = *(v13 - 8);
  v14 = *(v44 + 64);
  MEMORY[0x28223BE20](v13);
  v43 = &v41 - v15;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9100, &qword_213F56F80);
  v16 = *(*(v47 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v47);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - v20;
  v22 = *a1;
  LODWORD(a1) = *(type metadata accessor for ActionBarModifier(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8CD0, &qword_213F56720);
  sub_213F4ED40();
  LOBYTE(v52) = v22;
  v23 = sub_213E1BBE0(&v52);

  if (v23)
  {
    v41 = v13;
    v24 = sub_213F4DC30();
    MEMORY[0x28223BE20](v24);
    *(&v41 - 2) = v3;
    *(&v41 - 1) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9130, &qword_213F56FA0);
    sub_213E2A5E0();
    sub_213F4CF90();
    swift_getKeyPath();
    v52 = v23;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB80();

    v25 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor;
    swift_beginAccess();
    v26 = v12;
    if (!*(v23 + v25))
    {
      sub_213F4E8B0();
    }

    v31 = v48;
    v32 = sub_213DE3AE4(&qword_27C8F9120, &qword_27C8F9118, &qword_213F56F90);

    v33 = v43;
    sub_213F4D340();

    (*(v42 + 8))(v26, v9);
    v50 = v9;
    v51 = v32;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v35 = v45;
    v36 = v41;
    MEMORY[0x2160510F0](v33, v41, OpaqueTypeConformance2);
    v37 = v46;
    (*(v46 + 16))(v19, v35, v31);
    (*(v37 + 56))(v19, 0, 1, v31);
    v50 = v36;
    v51 = OpaqueTypeConformance2;
    v38 = swift_getOpaqueTypeConformance2();
    MEMORY[0x216051120](v19, v31, v38);

    sub_213DE36FC(v19, &qword_27C8F9100, &qword_213F56F80);
    (*(v37 + 8))(v35, v31);
    (*(v44 + 8))(v33, v36);
  }

  else
  {
    v27 = v48;
    (*(v46 + 56))(v19, 1, 1, v48);
    v28 = sub_213DE3AE4(&qword_27C8F9120, &qword_27C8F9118, &qword_213F56F90);
    v52 = v9;
    v53 = v28;
    v29 = swift_getOpaqueTypeConformance2();
    v52 = v13;
    v53 = v29;
    v30 = swift_getOpaqueTypeConformance2();
    MEMORY[0x216051120](v19, v27, v30);
    sub_213DE36FC(v19, &qword_27C8F9100, &qword_213F56F80);
  }

  v39 = sub_213E2A4A0();
  MEMORY[0x2160510F0](v21, v47, v39);
  return sub_213DE36FC(v21, &qword_27C8F9100, &qword_213F56F80);
}

uint64_t sub_213E1F8D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_213E1EEF8(a1, a2);
  v3 = sub_213F4E8F0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9130, &qword_213F56FA0);
  *(a2 + *(result + 36)) = v3;
  return result;
}

uint64_t sub_213E1F920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionBarModifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v10[1] = a1;
  sub_213E29808(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionBarModifier);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_213E29870(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for ActionBarModifier);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9140, &qword_213F56FD8);
  sub_213F4CB40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F90E0, &qword_213F56F78);
  sub_213DE3AE4(&qword_27C8F9148, &qword_27C8F9140, &qword_213F56FD8);
  sub_213E2A2BC();
  sub_213E1575C(&qword_27C8F9150, type metadata accessor for ActionBarItemViewModel);
  return sub_213F4ECD0();
}

uint64_t sub_213E1FB28@<X0>(uint64_t a1@<X8>)
{
  v248 = a1;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9028, &qword_213F56EE8);
  v2 = *(*(v247 - 8) + 64);
  MEMORY[0x28223BE20](v247);
  v246 = &v219 - v3;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9030, &qword_213F56EF0);
  v4 = *(*(v233 - 8) + 64);
  MEMORY[0x28223BE20](v233);
  v232 = &v219 - v5;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9038, &qword_213F56EF8);
  v244 = *(v245 - 8);
  v6 = *(v244 + 64);
  MEMORY[0x28223BE20](v245);
  v234 = &v219 - v7;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9040, &qword_213F56F00);
  v228 = *(v230 - 8);
  v8 = *(v228 + 64);
  MEMORY[0x28223BE20](v230);
  v227 = &v219 - v9;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9048, &qword_213F56F08);
  v10 = *(*(v229 - 8) + 64);
  MEMORY[0x28223BE20](v229);
  v224 = &v219 - v11;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9050, &qword_213F56F10);
  v225 = *(v226 - 8);
  v12 = *(v225 + 64);
  MEMORY[0x28223BE20](v226);
  v221 = &v219 - v13;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9058, &qword_213F56F18);
  v222 = *(v223 - 8);
  v14 = *(v222 + 64);
  MEMORY[0x28223BE20](v223);
  v220 = &v219 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9060, &qword_213F56F20);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v219 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9068, &qword_213F56F28);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v242 = &v219 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v219 - v24;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9070, &qword_213F56F30);
  v26 = *(*(v240 - 8) + 64);
  MEMORY[0x28223BE20](v240);
  v239 = &v219 - v27;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9078, &qword_213F56F38);
  v252 = *(v253 - 8);
  v28 = *(v252 + 64);
  MEMORY[0x28223BE20](v253);
  v241 = &v219 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9080, &qword_213F56F40);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v251 = &v219 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v266 = &v219 - v34;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9088, &qword_213F56F48);
  v35 = *(*(v235 - 8) + 64);
  MEMORY[0x28223BE20](v235);
  v236 = &v219 - v36;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9090, &qword_213F56F50);
  v37 = *(v250 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v250);
  v237 = &v219 - v39;
  v40 = sub_213F4D020();
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v261 = &v219 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = sub_213F4D1D0();
  v270 = *(v260 - 8);
  v43 = *(v270 + 64);
  v44 = MEMORY[0x28223BE20](v260);
  v254 = &v219 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v238 = &v219 - v47;
  MEMORY[0x28223BE20](v46);
  v271 = &v219 - v48;
  v49 = sub_213F4DC40();
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v267 = &v219 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9098, &qword_213F56F58);
  v257 = *(v258 - 8);
  v52 = *(v257 + 64);
  MEMORY[0x28223BE20](v258);
  v256 = &v219 - v53;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F90A0, &qword_213F56F60);
  v269 = *(v259 - 8);
  v54 = *(v269 + 64);
  MEMORY[0x28223BE20](v259);
  v268 = &v219 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F90A8, &qword_213F56F68);
  v57 = *(*(v56 - 8) + 64);
  v58 = MEMORY[0x28223BE20](v56 - 8);
  v249 = &v219 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v265 = &v219 - v60;
  v61 = sub_213F4EDA0();
  v62 = *(v61 - 8);
  v63 = v62[8];
  v64 = MEMORY[0x28223BE20](v61);
  v66 = &v219 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v68 = (&v219 - v67);
  v69 = *(type metadata accessor for ActionBarModifier(0) + 24);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8CD0, &qword_213F56720);
  v262 = v69;
  v276 = v70;
  sub_213F4ED40();
  v71 = v285;
  v278 = v1;
  sub_213E1EA2C(v68);
  v72 = v62[13];
  v273 = *MEMORY[0x277CDF0D0];
  v274 = v62 + 13;
  v272 = v72;
  v72(v66);
  v73 = sub_213F4ED80();
  v74 = v62[1];
  v264 = v66;
  v74(v66, v61);
  v263 = v68;
  v275 = v74;
  v277 = (v62 + 1);
  v74(v68, v61);
  swift_getKeyPath();
  v285 = v71;
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel);
  sub_213F4CB80();

  if (v73)
  {
    v75 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingEditItems;
  }

  else
  {
    v75 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingItems;
  }

  v76 = (v71 + v75);
  swift_beginAccess();
  v77 = *v76;

  if (v77 >> 62)
  {
    v78 = sub_213F4F7E0();
  }

  else
  {
    v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v231 = v19;
  v243 = v25;
  v255 = v61;
  if (v78 < 1)
  {

    v98 = v249;
    v99 = v250;
    (*(v37 + 56))(v249, 1, 1, v250);
    v100 = sub_213DE3AE4(&qword_27C8F90B0, &qword_27C8F9090, &qword_213F56F50);
    MEMORY[0x216051120](v98, v99, v100);
    sub_213DE36FC(v98, &qword_27C8F90A8, &qword_213F56F68);
  }

  else
  {
    v79 = sub_213F4DC30();
    MEMORY[0x28223BE20](v79);
    v80 = v278;
    *(&v219 - 2) = v77;
    *(&v219 - 1) = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F90C8, &qword_213F56F70);
    sub_213E2A240(&qword_27C8F90D0, &qword_27C8F90C8, &qword_213F56F70, sub_213E2A2BC);
    v81 = v256;
    sub_213F4D4A0();

    v82 = sub_213DE3AE4(&qword_27C8F90F0, &qword_27C8F9098, &qword_213F56F58);
    v83 = v268;
    v84 = v258;
    MEMORY[0x2160510F0](v81, v258, v82);
    (*(v257 + 8))(v81, v84);
    sub_213F4D010();
    sub_213F4DC30();
    v85 = v271;
    sub_213F4D1E0();
    v86 = *(v235 + 48);
    v87 = v269;
    v88 = v236;
    v89 = v259;
    (*(v269 + 16))(v236, v83, v259);
    v90 = v270;
    v91 = &v88[v86];
    v92 = v260;
    (*(v270 + 16))(v91, v85, v260);
    v93 = v237;
    sub_213F4DAC0();
    v94 = v249;
    v95 = v250;
    (*(v37 + 16))(v249, v93, v250);
    (*(v37 + 56))(v94, 0, 1, v95);
    v96 = sub_213DE3AE4(&qword_27C8F90B0, &qword_27C8F9090, &qword_213F56F50);
    MEMORY[0x216051120](v94, v95, v96);
    sub_213DE36FC(v94, &qword_27C8F90A8, &qword_213F56F68);
    v97 = v93;
    v61 = v255;
    (*(v37 + 8))(v97, v95);
    (*(v90 + 8))(v85, v92);
    (*(v87 + 8))(v83, v89);
  }

  sub_213F4ED40();
  v101 = v284;
  v102 = v263;
  sub_213E1EA2C(v263);
  v103 = v264;
  v272(v264, v273, v61);
  v104 = sub_213F4ED80();
  v105 = v275;
  v275(v103, v61);
  v105(v102, v61);
  swift_getKeyPath();
  v284 = v101;
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel);
  sub_213F4CB80();

  if (v104)
  {
    v106 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__centeredEditItems;
  }

  else
  {
    v106 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__centeredItems;
  }

  v107 = (v101 + v106);
  swift_beginAccess();
  v108 = *v107;

  if (v108 >> 62)
  {
    if (sub_213F4F7E0() >= 1)
    {
      goto LABEL_14;
    }
  }

  else if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_14:
    sub_213F4D010();
    sub_213F4DC30();
    sub_213F4D1E0();
    v109 = sub_213F4DC30();
    MEMORY[0x28223BE20](v109);
    v110 = v278;
    *(&v219 - 2) = v108;
    *(&v219 - 1) = v110;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F90C8, &qword_213F56F70);
    sub_213E2A240(&qword_27C8F90D0, &qword_27C8F90C8, &qword_213F56F70, sub_213E2A2BC);
    v111 = v256;
    sub_213F4D4A0();

    v112 = sub_213DE3AE4(&qword_27C8F90F0, &qword_27C8F9098, &qword_213F56F58);
    v113 = v268;
    v114 = v258;
    MEMORY[0x2160510F0](v111, v258, v112);
    (*(v257 + 8))(v111, v114);
    sub_213F4D010();
    sub_213F4DC30();
    v115 = v238;
    sub_213F4D1E0();
    v116 = *(v240 + 48);
    v117 = *(v240 + 64);
    v118 = *(v270 + 16);
    v119 = v239;
    v120 = v260;
    v118(v239, v271, v260);
    v121 = v259;
    (*(v269 + 16))(&v119[v116], v113, v259);
    v118(&v119[v117], v115, v120);
    v103 = v264;
    v122 = v241;
    sub_213F4DAC0();
    v123 = v252;
    v124 = v251;
    v125 = v253;
    (*(v252 + 16))(v251, v122, v253);
    (*(v123 + 56))(v124, 0, 1, v125);
    v126 = sub_213DE3AE4(&qword_27C8F90B8, &qword_27C8F9078, &qword_213F56F38);
    MEMORY[0x216051120](v124, v125, v126);
    sub_213DE36FC(v124, &qword_27C8F9080, &qword_213F56F40);
    (*(v123 + 8))(v122, v125);
    v61 = v255;
    v127 = *(v270 + 8);
    v127(v115, v120);
    (*(v269 + 8))(v268, v121);
    v128 = v120;
    v102 = v263;
    v127(v271, v128);
    goto LABEL_18;
  }

  v129 = v251;
  v130 = v253;
  (*(v252 + 56))(v251, 1, 1, v253);
  v131 = sub_213DE3AE4(&qword_27C8F90B8, &qword_27C8F9078, &qword_213F56F38);
  MEMORY[0x216051120](v129, v130, v131);
  sub_213DE36FC(v129, &qword_27C8F9080, &qword_213F56F40);
LABEL_18:
  sub_213F4ED40();
  v132 = v283;
  sub_213E1EA2C(v102);
  v272(v103, v273, v61);
  v133 = sub_213F4ED80();
  v134 = v275;
  v275(v103, v61);
  v134(v102, v61);
  swift_getKeyPath();
  v283 = v132;
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel);
  sub_213F4CB80();

  if (v133)
  {
    v135 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingEditItems;
  }

  else
  {
    v135 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingItems;
  }

  v136 = (v132 + v135);
  swift_beginAccess();
  v137 = *v136;

  if (!(v137 >> 62))
  {
    if (*((v137 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_23;
    }

LABEL_67:

    v208 = v242;
    v209 = v245;
    (*(v244 + 56))(v242, 1, 1, v245);
    v210 = sub_213DE3AE4(&qword_27C8F90C0, &qword_27C8F9038, &qword_213F56EF8);
    v207 = v243;
    MEMORY[0x216051120](v208, v209, v210);
    sub_213DE36FC(v208, &qword_27C8F9068, &qword_213F56F28);
    goto LABEL_68;
  }

LABEL_66:
  if (sub_213F4F7E0() < 1)
  {
    goto LABEL_67;
  }

LABEL_23:
  sub_213F4D010();
  sub_213F4DC30();
  sub_213F4D1E0();
  sub_213F4ED40();
  v138 = v281;
  sub_213E1EA2C(v102);
  v272(v103, v273, v61);
  v139 = sub_213F4ED80();
  v140 = v275;
  v275(v103, v61);
  v140(v102, v61);
  v271 = v137;
  if (v139)
  {
    swift_getKeyPath();
    v141 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel___observationRegistrar;
    v281 = v138;
    v142 = sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel);
    v253 = v141;
    v252 = v142;
    sub_213F4CB80();

    v143 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingEditItems;
    swift_beginAccess();
    v251 = v143;
    v144 = *&v138[v143];
    v261 = v138;
    v103 = v144 & 0xFFFFFFFFFFFFFF8;
    if (v144 >> 62)
    {
      v137 = sub_213F4F7E0();
    }

    else
    {
      v137 = *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v61 = v144 & 0xC000000000000001;

    v145 = 0;
    v102 = &qword_27C8F8BE8;
    do
    {
      if (v137 == v145)
      {
        goto LABEL_36;
      }

      if (v61)
      {
        v146 = MEMORY[0x216052B30](v145, v144);
        if (__OFADD__(v145, 1))
        {
LABEL_35:
          __break(1u);
LABEL_36:

          v61 = v255;
          v103 = v264;
          v102 = v263;
          v137 = v271;
          goto LABEL_37;
        }
      }

      else
      {
        if (v145 >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        v146 = *(v144 + 8 * v145 + 32);

        if (__OFADD__(v145, 1))
        {
          goto LABEL_35;
        }
      }

      swift_getKeyPath();
      v281 = v146;
      sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
      sub_213F4CB80();

      v147 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type;
      swift_beginAccess();
      LODWORD(v147) = *(v146 + v147);

      ++v145;
    }

    while (v147 != 12);
LABEL_51:

    swift_getKeyPath();
    v159 = v261;
    v281 = v261;
    sub_213F4CB80();

    v160 = *&v251[v159];
    v137 = v271;
    if (v160 >> 62)
    {
      if (v160 < 0)
      {
        v217 = *&v251[v159];
      }

      v161 = sub_213F4F7E0();
    }

    else
    {
      v161 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v61 = v255;
    v103 = v264;
    v102 = v263;

    if (v161 == 1)
    {

      LOBYTE(v281) = 12;
      v162 = v220;
      sub_213E1F228(&v281, v220);
      v163 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9100, &qword_213F56F80);
      v164 = sub_213E2A4A0();
      v281 = v163;
      v282 = v164;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v166 = v221;
      v167 = v223;
      MEMORY[0x2160510F0](v162, v223, OpaqueTypeConformance2);
      v281 = v167;
      v282 = OpaqueTypeConformance2;
      v168 = swift_getOpaqueTypeConformance2();
      v169 = v224;
      v170 = v226;
      MEMORY[0x216051100](v166, v226, v226, v168, v168);
      v171 = sub_213E2A3A8();
      v172 = sub_213DE3AE4(&qword_27C8F90F0, &qword_27C8F9098, &qword_213F56F58);
      v281 = v258;
      v282 = v172;
      v173 = swift_getOpaqueTypeConformance2();
      v281 = v259;
      v282 = v173;
      goto LABEL_62;
    }
  }

  else
  {
LABEL_37:
  }

  sub_213F4ED40();
  v148 = v281;
  sub_213E1EA2C(v102);
  v272(v103, v273, v61);
  v149 = sub_213F4ED80();
  v150 = v275;
  v275(v103, v61);
  v150(v102, v61);
  if (v149)
  {
LABEL_56:
  }

  else
  {
    swift_getKeyPath();
    v151 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel___observationRegistrar;
    v281 = v148;
    v152 = sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel);
    v276 = v151;
    v275 = v152;
    sub_213F4CB80();

    v153 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingItems;
    swift_beginAccess();
    v277 = v148;
    v274 = v153;
    v154 = *&v148[v153];
    v103 = v154 & 0xFFFFFFFFFFFFFF8;
    if (v154 >> 62)
    {
      v155 = sub_213F4F7E0();
    }

    else
    {
      v155 = *((v154 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v61 = v154 & 0xC000000000000001;

    v156 = 0;
    v137 = &qword_27C8F8000;
    v102 = &qword_27C8F8BE8;
    do
    {
      if (v155 == v156)
      {

        v137 = v271;
        goto LABEL_56;
      }

      if (v61)
      {
        v157 = MEMORY[0x216052B30](v156, v154);
        if (__OFADD__(v156, 1))
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v156 >= *((v154 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_65;
        }

        v157 = *(v154 + 8 * v156 + 32);

        if (__OFADD__(v156, 1))
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }
      }

      swift_getKeyPath();
      v279 = v157;
      sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
      sub_213F4CB80();

      v158 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type;
      swift_beginAccess();
      LODWORD(v158) = *(v157 + v158);

      ++v156;
    }

    while (v158 != 10);

    swift_getKeyPath();
    v187 = v277;
    v279 = v277;
    sub_213F4CB80();

    v188 = *(v274 + v187);
    v137 = v271;
    if (v188 >> 62)
    {
      if (v188 < 0)
      {
        v218 = *(v274 + v187);
      }

      v189 = sub_213F4F7E0();
    }

    else
    {
      v189 = *((v188 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v189 == 1)
    {

      LOBYTE(v279) = 10;
      v162 = v220;
      sub_213E1F228(&v279, v220);
      v190 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9100, &qword_213F56F80);
      v191 = sub_213E2A4A0();
      v279 = v190;
      v280 = v191;
      v192 = swift_getOpaqueTypeConformance2();
      v166 = v221;
      v167 = v223;
      MEMORY[0x2160510F0](v162, v223, v192);
      v279 = v167;
      v280 = v192;
      v193 = swift_getOpaqueTypeConformance2();
      v169 = v224;
      v170 = v226;
      MEMORY[0x216051110](v166, v226, v226, v193, v193);
      v171 = sub_213E2A3A8();
      v194 = sub_213DE3AE4(&qword_27C8F90F0, &qword_27C8F9098, &qword_213F56F58);
      v279 = v258;
      v280 = v194;
      v195 = swift_getOpaqueTypeConformance2();
      v279 = v259;
      v280 = v195;
LABEL_62:
      v196 = swift_getOpaqueTypeConformance2();
      v185 = v231;
      MEMORY[0x216051100](v169, v229, v230, v171, v196);
      sub_213DE36FC(v169, &qword_27C8F9048, &qword_213F56F08);
      (*(v225 + 8))(v166, v170);
      (*(v222 + 8))(v162, v167);
      goto LABEL_63;
    }
  }

  v174 = sub_213F4DC30();
  MEMORY[0x28223BE20](v174);
  v175 = v278;
  *(&v219 - 2) = v137;
  *(&v219 - 1) = v175;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F90C8, &qword_213F56F70);
  sub_213E2A240(&qword_27C8F90D0, &qword_27C8F90C8, &qword_213F56F70, sub_213E2A2BC);
  v176 = v256;
  sub_213F4D4A0();

  v177 = sub_213DE3AE4(&qword_27C8F90F0, &qword_27C8F9098, &qword_213F56F58);
  v178 = v268;
  v179 = v258;
  MEMORY[0x2160510F0](v176, v258, v177);
  (*(v257 + 8))(v176, v179);
  v279 = v179;
  v280 = v177;
  v180 = swift_getOpaqueTypeConformance2();
  v181 = v227;
  v182 = v259;
  MEMORY[0x2160510F0](v178, v259, v180);
  v183 = sub_213E2A3A8();
  v279 = v182;
  v280 = v180;
  v184 = swift_getOpaqueTypeConformance2();
  v185 = v231;
  v186 = v230;
  MEMORY[0x216051110](v181, v229, v230, v183, v184);
  (*(v228 + 8))(v181, v186);
  (*(v269 + 8))(v178, v182);
LABEL_63:
  v197 = *(v233 + 48);
  v198 = v270;
  v199 = v232;
  v200 = v254;
  v201 = v260;
  (*(v270 + 16))(v232, v254, v260);
  sub_213DE3164(v185, &v199[v197], &qword_27C8F9060, &qword_213F56F20);
  v202 = v234;
  sub_213F4DAC0();
  v203 = v244;
  v204 = v242;
  v205 = v245;
  (*(v244 + 16))(v242, v202, v245);
  (*(v203 + 56))(v204, 0, 1, v205);
  v206 = sub_213DE3AE4(&qword_27C8F90C0, &qword_27C8F9038, &qword_213F56EF8);
  v207 = v243;
  MEMORY[0x216051120](v204, v205, v206);
  sub_213DE36FC(v204, &qword_27C8F9068, &qword_213F56F28);
  (*(v203 + 8))(v202, v205);
  sub_213DE36FC(v185, &qword_27C8F9060, &qword_213F56F20);
  (*(v198 + 8))(v200, v201);
LABEL_68:
  v211 = *(v247 + 48);
  v212 = *(v247 + 64);
  v213 = v265;
  v214 = v246;
  sub_213DE3164(v265, v246, &qword_27C8F90A8, &qword_213F56F68);
  v215 = v266;
  sub_213DE3164(v266, v214 + v211, &qword_27C8F9080, &qword_213F56F40);
  sub_213DE3164(v207, v214 + v212, &qword_27C8F9068, &qword_213F56F28);
  sub_213F4DAC0();
  sub_213DE36FC(v207, &qword_27C8F9068, &qword_213F56F28);
  sub_213DE36FC(v215, &qword_27C8F9080, &qword_213F56F40);
  return sub_213DE36FC(v213, &qword_27C8F90A8, &qword_213F56F68);
}

uint64_t ActionBarModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  *&v86 = a1;
  v85 = a2;
  v76 = sub_213F4DCE0();
  v75 = *(v76 - 8);
  v4 = *(v75 + 64);
  MEMORY[0x28223BE20](v76);
  v74 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C88, &qword_213F566E8);
  v73 = *(v6 - 8);
  v7 = *(v73 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v64 - v8;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C90, &qword_213F566F0);
  v77 = *(v83 - 8);
  v10 = *(v77 + 64);
  MEMORY[0x28223BE20](v83);
  v12 = &v64 - v11;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C98, &qword_213F566F8);
  v82 = *(v84 - 8);
  v13 = *(v82 + 64);
  MEMORY[0x28223BE20](v84);
  v79 = &v64 - v14;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8CA0, &qword_213F56700);
  v80 = *(v81 - 8);
  v15 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v78 = &v64 - v16;
  v87 = v2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8CA8, &qword_213F56708);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8CB0, &qword_213F56710);
  v19 = sub_213DE3AE4(&qword_27C8F8CB8, &qword_27C8F8CA8, &qword_213F56708);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8CC0, &qword_213F56718);
  v21 = sub_213DE3AE4(&qword_27C8F8CC8, &qword_27C8F8CC0, &qword_213F56718);
  v88 = v20;
  v89 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v72 = v9;
  v71 = v17;
  v70 = v18;
  v69 = v19;
  v68 = OpaqueTypeConformance2;
  sub_213F4E7E0();
  LODWORD(v9) = *(type metadata accessor for ActionBarModifier(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8CD0, &qword_213F56720);
  sub_213F4ED40();
  v23 = v88;
  swift_getKeyPath();
  v24 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel___observationRegistrar;
  v88 = v23;
  v25 = sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel);
  sub_213F4CB80();

  v26 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingItems;
  swift_beginAccess();
  v27 = *(v23 + v26);
  swift_getKeyPath();
  v88 = v23;

  sub_213F4CB80();

  v28 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__centeredItems;
  swift_beginAccess();
  v29 = *(v23 + v28);
  v92 = v27;

  sub_213E27300(v30);
  swift_getKeyPath();
  v88 = v23;
  *&v86 = v24;
  v67 = v25;
  sub_213F4CB80();

  v31 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingItems;
  swift_beginAccess();
  v32 = *(v23 + v31);

  sub_213E27300(v33);
  v34 = v92;
  if (!(v92 >> 62))
  {
    if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      v64 = v12;
      v65 = v6;
      v66 = v3;
      v35 = 1;
      goto LABEL_4;
    }

LABEL_21:

LABEL_22:
    v41 = v76;
    v42 = v75;
    v43 = v74;
    v44 = v71;
    goto LABEL_23;
  }

LABEL_19:
  if (sub_213F4F7E0() != 1)
  {
    goto LABEL_21;
  }

  v64 = v12;
  v65 = v6;
  v66 = v3;
  v35 = sub_213F4F7E0();
LABEL_4:
  v12 = 0;
  v6 = v34 & 0xC000000000000001;
  v3 = &qword_27C8F8BE8;
  do
  {
    if (v35 == v12)
    {
      goto LABEL_14;
    }

    if (v6)
    {
      v36 = MEMORY[0x216052B30](v12, v34);
      if (__OFADD__(v12, 1))
      {
LABEL_13:
        __break(1u);
LABEL_14:

        v6 = v65;
        v12 = v64;
        goto LABEL_22;
      }
    }

    else
    {
      if (v12 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_19;
      }

      v36 = *(v34 + 8 * v12 + 32);

      if (__OFADD__(v12, 1))
      {
        goto LABEL_13;
      }
    }

    swift_getKeyPath();
    v88 = v36;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB80();

    v37 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type;
    swift_beginAccess();
    LODWORD(v37) = *(v36 + v37);

    ++v12;
  }

  while (v37 != 4);

  swift_getKeyPath();
  v88 = v23;
  sub_213F4CB80();

  v38 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__forceExpandedSearch;
  swift_beginAccess();
  v39 = *(v23 + v38);

  v40 = v39 == 1;
  v6 = v65;
  v12 = v64;
  v41 = v76;
  v42 = v75;
  v43 = v74;
  v44 = v71;
  if (v40)
  {
    sub_213F4DCD0();
    goto LABEL_24;
  }

LABEL_23:
  sub_213F4DCC0();
LABEL_24:
  v88 = v44;
  v89 = v70;
  v90 = v69;
  v91 = v68;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v72;
  sub_213F4E690();
  (*(v42 + 8))(v43, v41);
  (*(v73 + 8))(v46, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8CD8, &qword_213F56728);
  v47 = *(sub_213F4D4D0() - 8);
  v48 = *(v47 + 72);
  v49 = v12;
  v50 = *(v47 + 80);
  v51 = swift_allocObject();
  v86 = xmmword_213F55C80;
  *(v51 + 16) = xmmword_213F55C80;
  sub_213F4D4B0();
  v88 = v6;
  v89 = v45;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = v79;
  v54 = v83;
  MEMORY[0x2160519A0](2, v51, v83, v52);

  (*(v77 + 8))(v49, v54);
  v55 = sub_213E1ED98();
  v56 = swift_allocObject();
  *(v56 + 16) = v86;
  sub_213F4D4C0();
  v88 = v54;
  v89 = v52;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = v78;
  v59 = v84;
  MEMORY[0x2160519A0](v55, v56, v84, v57);

  (*(v82 + 8))(v53, v59);
  v60 = sub_213F4EF60();
  LOBYTE(v55) = sub_213E1ED98();
  v61 = v85;
  (*(v80 + 32))(v85, v58, v81);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8CE0, &qword_213F56730);
  v63 = v61 + *(result + 36);
  *v63 = v60;
  *(v63 + 8) = v55;
  return result;
}

uint64_t sub_213E22DDC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8CC0, &qword_213F56718);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - v3;
  sub_213E1FB28(&v7 - v3);
  v5 = sub_213DE3AE4(&qword_27C8F8CC8, &qword_27C8F8CC0, &qword_213F56718);
  MEMORY[0x2160510F0](v4, v0, v5);
  return (*(v1 + 8))(v4, v0);
}

uint64_t View.actionBar(_:onSelect:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a5;
  v8 = type metadata accessor for ActionBarModifier(0);
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *v11 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
  swift_storeEnumTagMultiPayload();
  v13 = v11 + v8[5];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = v8[6];
  type metadata accessor for ActionBarViewModel(0);
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel);

  sub_213F4ED60();
  v15 = (v11 + v8[7]);
  *v15 = sub_213E27834;
  v15[1] = v12;
  MEMORY[0x216051BF0](v11, a4, v8, v17);
  return sub_213E2A73C(v11, type metadata accessor for ActionBarModifier);
}

uint64_t EnvironmentValues.shouldShowActionBar.getter()
{
  sub_213E2785C();
  sub_213F4D800();
  return v1;
}

uint64_t sub_213E2310C@<X0>(_BYTE *a1@<X8>)
{
  sub_213E2785C();
  result = sub_213F4D800();
  *a1 = v3;
  return result;
}

uint64_t sub_213E2315C(char *a1)
{
  v2 = *a1;
  sub_213E2785C();
  return sub_213F4D810();
}

uint64_t (*EnvironmentValues.shouldShowActionBar.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_213E2785C();
  sub_213F4D800();
  *(a1 + 16) = *(a1 + 17);
  return sub_213E2324C;
}

uint64_t sub_213E2324C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_213F4D810();
}

uint64_t UITraitCollection.shouldShowActionBar.getter()
{
  sub_213E278B0();

  return sub_213F4F590();
}

uint64_t UIMutableTraits.shouldShowActionBar.setter()
{
  sub_213E278B0();

  return sub_213F4CC80();
}

uint64_t sub_213E2331C@<X0>(_BYTE *a1@<X8>)
{
  sub_213E278B0();
  result = sub_213F4F590();
  *a1 = result & 1;
  return result;
}

uint64_t sub_213E23360(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  return UIMutableTraits.shouldShowActionBar.setter();
}

uint64_t UIMutableTraits.shouldShowActionBar.getter()
{
  sub_213E278B0();

  return sub_213F4CC70();
}

uint64_t (*UIMutableTraits.shouldShowActionBar.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  sub_213E278B0();
  *(a1 + 24) = sub_213F4CC70() & 1;
  return sub_213E234D0;
}

uint64_t sub_213E234D0(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  v4 = *(a1 + 24);
  sub_213E278B0();
  return sub_213F4CC80();
}

uint64_t sub_213E23524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_213F4CB40();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_213E23598(uint64_t a1)
{
  sub_213F4F880();
  v3 = *v1;
  v4 = v1[1];
  sub_213F4F2C0();
  v5 = *(a1 + 20);
  sub_213F4CB40();
  sub_213E1575C(&qword_281188810, MEMORY[0x277CC95F0]);
  sub_213F4F1B0();
  return sub_213F4F8C0();
}

uint64_t sub_213E23640(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  sub_213F4F2C0();
  v6 = *(a2 + 20);
  sub_213F4CB40();
  sub_213E1575C(&qword_281188810, MEMORY[0x277CC95F0]);
  return sub_213F4F1B0();
}

uint64_t sub_213E236CC(uint64_t a1, uint64_t a2)
{
  sub_213F4F880();
  v4 = *v2;
  v5 = v2[1];
  sub_213F4F2C0();
  v6 = *(a2 + 20);
  sub_213F4CB40();
  sub_213E1575C(&qword_281188810, MEMORY[0x277CC95F0]);
  sub_213F4F1B0();
  return sub_213F4F8C0();
}

uint64_t sub_213E23770(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_213F4F830() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);

  return _s10MapsDesign26RoutePlanningCellViewModelV2eeoiySbAC_ACtFZ_0();
}

uint64_t ActionBarModifierPreview.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_213F4EDA0();
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = *(v52 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v51 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v50 = &v47 - v6;
  v7 = sub_213F4CB40();
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = *(v48 + 64);
  MEMORY[0x28223BE20](v7);
  v47 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8CF0, &qword_213F56738);
  v10 = (type metadata accessor for ActionBarModifierPreview.Ocean(0) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_213F56400;
  v14 = (v13 + v12);
  *v14 = 0x63696669636150;
  v14[1] = 0xE700000000000000;
  v15 = v14 + v10[7];
  sub_213F4CB30();
  v16 = (v14 + v11);
  *v16 = 0x6369746E616C7441;
  v16[1] = 0xE800000000000000;
  v17 = v10[7];
  sub_213F4CB30();
  v18 = (v14 + 2 * v11);
  *v18 = 0x6E6169646E49;
  v18[1] = 0xE600000000000000;
  v19 = v18 + v10[7];
  sub_213F4CB30();
  v20 = (v14 + 3 * v11);
  *v20 = 0x6E72656874756F53;
  v20[1] = 0xE800000000000000;
  v21 = v20 + v10[7];
  sub_213F4CB30();
  v22 = (v14 + 4 * v11);
  *v22 = 0x63696669636150;
  v22[1] = 0xE700000000000000;
  v23 = v22 + v10[7];
  sub_213F4CB30();
  v24 = (v14 + 5 * v11);
  *v24 = 0x6369746E616C7441;
  v24[1] = 0xE800000000000000;
  v25 = v24 + v10[7];
  sub_213F4CB30();
  v26 = (v14 + 6 * v11);
  *v26 = 0x6E6169646E49;
  v26[1] = 0xE600000000000000;
  v27 = v26 + v10[7];
  sub_213F4CB30();
  v28 = (v14 + 7 * v11);
  *v28 = 0x6E72656874756F53;
  v28[1] = 0xE800000000000000;
  v29 = v28 + v10[7];
  sub_213F4CB30();
  *a1 = v13;
  v54 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8CF8, &qword_213F56740);
  sub_213F4EA90();
  v30 = *(&v56 + 1);
  *(a1 + 8) = v56;
  *(a1 + 16) = v30;
  v54 = 0;
  v55 = 0xE000000000000000;
  sub_213F4EA90();
  v31 = v57;
  *(a1 + 24) = v56;
  *(a1 + 40) = v31;
  v32 = type metadata accessor for ActionBarViewModel(0);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  v35 = swift_allocObject();
  v36 = v47;
  sub_213F4CB30();
  (*(v48 + 32))(v35 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__id, v36, v49);
  sub_213F4CBB0();
  v37 = MEMORY[0x277D84F90];
  *(v35 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingItems) = MEMORY[0x277D84F90];
  *(v35 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__centeredItems) = v37;
  *(v35 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingItems) = v37;
  *(v35 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingEditItems) = v37;
  *(v35 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__centeredEditItems) = v37;
  *(v35 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingEditItems) = v37;
  *(v35 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__forceExpandedSearch) = 0;
  v54 = v35;
  sub_213F4EA90();
  v38 = *(&v56 + 1);
  *(a1 + 48) = v56;
  *(a1 + 56) = v38;
  v39 = type metadata accessor for ActionBarModifierPreview(0);
  v40 = *(v39 + 32);
  v42 = v52;
  v41 = v53;
  v43 = v50;
  (*(v52 + 104))(v50, *MEMORY[0x277CDF0D8], v53);
  (*(v42 + 16))(v51, v43, v41);
  sub_213F4EA90();
  (*(v42 + 8))(v43, v41);
  v44 = a1 + *(v39 + 36);
  LOBYTE(v54) = 1;
  result = sub_213F4EA90();
  v46 = *(&v56 + 1);
  *v44 = v56;
  *(v44 + 8) = v46;
  return result;
}

uint64_t ActionBarModifierPreview.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8D00, &qword_213F56748);
  sub_213DE3AE4(&qword_27C8F8D08, &qword_27C8F8D00, &qword_213F56748);
  return sub_213F4D410();
}

uint64_t sub_213E23DB8@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v95 = a2;
  v84 = sub_213F4DC20();
  v83 = *(v84 - 8);
  v3 = *(v83 + 64);
  MEMORY[0x28223BE20](v84);
  v80 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F38, &qword_213F56E48);
  v82 = *(v81 - 8);
  v5 = *(v82 + 64);
  MEMORY[0x28223BE20](v81);
  v78 = &v75 - v6;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F40, &qword_213F56E50);
  v7 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v79 = &v75 - v8;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F48, &qword_213F56E58);
  v93 = *(v94 - 8);
  v9 = *(v93 + 64);
  v10 = MEMORY[0x28223BE20](v94);
  v92 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v101 = &v75 - v12;
  v13 = type metadata accessor for ActionBarModifierPreview(0);
  v14 = *(v13 - 8);
  v85 = v13 - 8;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v99 = v16;
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v17;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8EE8, &qword_213F56DD0);
  v102 = *(v91 - 8);
  v18 = v102[8];
  v19 = MEMORY[0x28223BE20](v91);
  v89 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v100 = &v75 - v21;
  v96 = type metadata accessor for ActionBarModifierPreview;
  sub_213E29808(a1, v17, type metadata accessor for ActionBarModifierPreview);
  v22 = *(v14 + 80);
  v23 = (v22 + 16) & ~v22;
  v97 = v23;
  v98 = v22;
  v24 = swift_allocObject();
  sub_213E29870(v17, v24 + v23, type metadata accessor for ActionBarModifierPreview);
  sub_213F4EB00();
  v76 = a1;
  v25 = *a1;
  v88 = a1[1];
  v87 = a1[2];
  *&v108 = v88;
  *(&v108 + 1) = v87;

  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F50, &qword_213F56E60);
  sub_213F4EAC0();
  v106 = v25;
  v103 = &v106;
  v104 = sub_213E24A90;
  v105 = 0;
  sub_213F4CB40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F58, &qword_213F56E68);
  sub_213E1575C(&qword_281188810, MEMORY[0x277CC95F0]);
  sub_213E2A240(&qword_27C8F8F60, &qword_27C8F8F58, &qword_213F56E68, sub_213E29A60);
  v26 = v78;
  sub_213F4E250();

  v27 = v76;
  v28 = v76[5];
  v108 = *(v76 + 3);
  v109 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F98, &qword_213F56E90);
  sub_213F4EAC0();
  v29 = v80;
  sub_213F4DC10();
  sub_213DE3AE4(&qword_27C8F8FA0, &qword_27C8F8F38, &qword_213F56E48);
  v30 = v81;
  v31 = v79;
  sub_213F4E390();

  (*(v83 + 8))(v29, v84);
  (*(v82 + 8))(v26, v30);
  v32 = v27;
  v33 = *(v27 + 56);
  v106 = *(v27 + 48);
  v107 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8FA8, &qword_213F56E98);
  sub_213F4EAA0();
  v34 = v77;
  v35 = v96;
  sub_213E29808(v27, v77, v96);
  v36 = v97;
  v37 = swift_allocObject();
  sub_213E29870(v34, v37 + v36, v35);
  v38 = swift_allocObject();
  *(v38 + 16) = sub_213E29D7C;
  *(v38 + 24) = v37;
  v39 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8FB0, &qword_213F56EA0) + 36)];
  v40 = v31;
  *v39 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
  swift_storeEnumTagMultiPayload();
  v41 = type metadata accessor for ActionBarModifier(0);
  v42 = v39 + v41[5];
  *v42 = swift_getKeyPath();
  v42[8] = 0;
  v43 = v41[6];
  type metadata accessor for ActionBarViewModel(0);
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel);
  sub_213F4ED60();
  v44 = (v39 + v41[7]);
  *v44 = sub_213E2A9D4;
  v44[1] = v38;
  KeyPath = swift_getKeyPath();
  v46 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8FB8, &qword_213F56EA8) + 36)];
  v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8FC0, &unk_213F56EB0) + 28);
  v48 = v85;
  v49 = *(v85 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8D60, &unk_213F56AB0);
  sub_213F4EAC0();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8FC8, &qword_213F61200);
  (*(*(v50 - 8) + 56))(v46 + v47, 0, 1, v50);
  *v46 = KeyPath;
  v51 = swift_getKeyPath();
  v52 = v32 + *(v48 + 44);
  v53 = *v52;
  v54 = *(v52 + 8);
  LOBYTE(v106) = v53;
  v107 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  LOBYTE(v49) = v108;
  v55 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8FD0, &qword_213F56EC8) + 36);
  *v55 = v51;
  *(v55 + 8) = v49;
  v56 = v96;
  sub_213E29808(v32, v34, v96);
  v57 = v97;
  v58 = swift_allocObject();
  sub_213E29870(v34, v58 + v57, v56);
  v59 = (v40 + *(v90 + 36));
  *v59 = sub_213E29DFC;
  v59[1] = v58;
  v59[2] = 0;
  v59[3] = 0;
  v106 = v88;
  v107 = v87;
  sub_213F4EAA0();
  v60 = *(v108 + 16);

  v106 = v60;
  sub_213E29808(v32, v34, v56);
  v61 = swift_allocObject();
  sub_213E29870(v34, v61 + v57, v56);
  sub_213E29F08();
  v62 = v101;
  sub_213F4E810();

  sub_213DE36FC(v40, &qword_27C8F8F40, &qword_213F56E50);
  v63 = v102[2];
  v64 = v89;
  v65 = v91;
  v63(v89, v100, v91);
  v66 = v93;
  v67 = *(v93 + 16);
  v68 = v92;
  v69 = v94;
  v67(v92, v62, v94);
  v70 = v95;
  v63(v95, v64, v65);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9008, &qword_213F56ED8);
  v67(&v70[*(v71 + 48)], v68, v69);
  v72 = *(v66 + 8);
  v72(v101, v69);
  v73 = v102[1];
  v73(v100, v65);
  v72(v68, v69);
  return (v73)(v64, v65);
}

uint64_t sub_213E249C4(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for ActionBarModifierPreview(0) + 36));
  v2 = *v1;
  v3 = *(v1 + 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  sub_213F4EAB0();
}

double sub_213E24A70@<D0>(uint64_t a1@<X8>)
{
  result = 2.78966638e39;
  *a1 = xmmword_213F56410;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

double sub_213E24A90@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = *a1;
  sub_213DBC9EC();

  v3 = sub_213F4E310();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_213F4E050();
  sub_213F4EEF0();
  sub_213F4D4E0();
  *&v12[55] = v16;
  *&v12[71] = v17;
  *&v12[87] = v18;
  *&v12[103] = v19;
  *&v12[7] = v13;
  *&v12[23] = v14;
  *&v12[39] = v15;
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 137) = *&v12[64];
  *(a2 + 153) = *&v12[80];
  *(a2 + 169) = *&v12[96];
  *(a2 + 73) = *v12;
  *(a2 + 89) = *&v12[16];
  *(a2 + 105) = *&v12[32];
  result = 0.0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 72) = 1;
  *(a2 + 184) = *(&v19 + 1);
  *(a2 + 121) = *&v12[48];
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0;
  return result;
}

uint64_t sub_213E24BF0(uint64_t a1)
{
  v2 = sub_213F4EDA0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  swift_getKeyPath();
  v24 = a1;
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
  sub_213F4CB80();

  v10 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type;
  swift_beginAccess();
  switch(*(a1 + v10))
  {
    case 2:
    case 5:
      v14 = MEMORY[0x277CDF0D0];
      goto LABEL_7;
    case 7:
    case 8:
    case 9:
      swift_getKeyPath();
      v23 = a1;
      sub_213F4CB80();

      v23 = a1;
      swift_getKeyPath();
      sub_213F4CBA0();

      v13 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled;
      swift_beginAccess();
      *(a1 + v13) = (*(a1 + v13) & 1) == 0;
      v21 = a1;
      swift_getKeyPath();
      sub_213F4CB90();

    case 0xA:
      swift_getKeyPath();
      v23 = a1;
      sub_213F4CB80();

      v16 = a1 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label;
      swift_beginAccess();
      if (*(v16 + 8))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        *(&v20 - 3) = 0;
        *(&v20 - 2) = 0;
        *(&v20 - 4) = a1;
        v21 = a1;
        sub_213F4CB70();

        v18 = (a1 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol);
        swift_beginAccess();
        if (v18[1])
        {
          v19 = swift_getKeyPath();
          MEMORY[0x28223BE20](v19);
          *(&v20 - 3) = 0;
          *(&v20 - 2) = 0;
          *(&v20 - 4) = a1;
          v22 = a1;
          sub_213F4CB70();
        }

        else
        {
          *v18 = 0;
          v18[1] = 0;
        }
      }

      else
      {
        sub_213E169B4(0x6E696D203534, 0xE600000000000000);
        sub_213E165A0(0x6C6C69662E726163, 0xE800000000000000);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8BA8, &unk_213F563D8);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_213F55C80;
      *(v11 + 56) = &type metadata for ActionBarItemType;
      swift_getKeyPath();
      v22 = a1;
      goto LABEL_3;
    case 0xB:
    case 0xC:
      v14 = MEMORY[0x277CDF0D8];
LABEL_7:
      (*(v3 + 104))(v9, *v14, v2);
      v15 = *(type metadata accessor for ActionBarModifierPreview(0) + 32);
      (*(v3 + 16))(v7, v9, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8D60, &unk_213F56AB0);
      sub_213F4EAB0();
      return (*(v3 + 8))(v9, v2);
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8BA8, &unk_213F563D8);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_213F55C80;
      *(v11 + 56) = &type metadata for ActionBarItemType;
      swift_getKeyPath();
      v23 = a1;
LABEL_3:
      sub_213F4CB80();

      *(v11 + 32) = *(a1 + v10);
      sub_213F4F860();
  }
}

uint64_t sub_213E251A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8D50, &unk_213F5E0A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_213DE3164(a1, &v6 - v4, &qword_27C8F8D50, &unk_213F5E0A0);
  return sub_213F4D760();
}

uint64_t sub_213E25250(uint64_t a1)
{
  v99 = a1;
  v1 = sub_213F4CB40();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8BB0, &qword_213F51CE0);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_213F56420;
  v6 = type metadata accessor for ActionBarItemViewModel(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v106 = v6;
  v9 = swift_allocObject();
  sub_213F4CB30();
  v10 = *(v2 + 32);
  v108 = v5;
  v109 = v2 + 32;
  v110 = v1;
  v107 = v10;
  v10(v9 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id, v5, v1);
  v11 = (v9 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v9 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label);
  *v12 = 0;
  v12[1] = 0;
  v13 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor;
  *(v9 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor) = 0;
  sub_213F4CBB0();
  *(v9 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type) = 0;
  *(v9 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled) = 0;
  *(v9 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled) = 0;
  swift_beginAccess();
  if (v11[1])
  {
    KeyPath = swift_getKeyPath();
    v103 = &v98;
    MEMORY[0x28223BE20](KeyPath);
    *(&v98 - 3) = 0;
    *(&v98 - 2) = 0;
    *(&v98 - 4) = v9;
    v136 = v9;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v11 = 0;
    v11[1] = 0;
  }

  swift_beginAccess();
  if (v12[1])
  {
    v15 = swift_getKeyPath();
    MEMORY[0x28223BE20](v15);
    *(&v98 - 3) = 0;
    *(&v98 - 2) = 0;
    *(&v98 - 4) = v9;
    v135 = v9;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v12 = 0;
    v12[1] = 0;
  }

  swift_beginAccess();
  if (*(v9 + v13))
  {
    v16 = swift_getKeyPath();
    MEMORY[0x28223BE20](v16);
    *(&v98 - 2) = v9;
    *(&v98 - 1) = 0;
    v134 = v9;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  v17 = v106;
  *(v105 + 32) = v9;
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v21 = v108;
  sub_213F4CB30();
  v107(v20 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id, v21, v110);
  v22 = (v20 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v20 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label);
  *v23 = 0;
  v23[1] = 0;
  v24 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor;
  *(v20 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor) = 0;
  sub_213F4CBB0();
  *(v20 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type) = 2;
  *(v20 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled) = 0;
  *(v20 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled) = 0;
  swift_beginAccess();
  if (v22[1])
  {
    v25 = swift_getKeyPath();
    MEMORY[0x28223BE20](v25);
    *(&v98 - 3) = 0;
    *(&v98 - 2) = 0;
    *(&v98 - 4) = v20;
    v133 = v20;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v22 = 0;
    v22[1] = 0;
  }

  swift_beginAccess();
  if (v23[1])
  {
    v26 = swift_getKeyPath();
    MEMORY[0x28223BE20](v26);
    *(&v98 - 3) = 0;
    *(&v98 - 2) = 0;
    *(&v98 - 4) = v20;
    v132 = v20;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v23 = 0;
    v23[1] = 0;
  }

  swift_beginAccess();
  if (*(v20 + v24))
  {
    v27 = swift_getKeyPath();
    MEMORY[0x28223BE20](v27);
    *(&v98 - 2) = v20;
    *(&v98 - 1) = 0;
    v131 = v20;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  v28 = v106;
  *(v105 + 40) = v20;
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();
  v32 = v108;
  sub_213F4CB30();
  v107(v31 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id, v32, v110);
  v33 = (v31 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol);
  *v33 = 0;
  v33[1] = 0;
  v34 = (v31 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label);
  *v34 = 0;
  v34[1] = 0;
  v35 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor;
  *(v31 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor) = 0;
  sub_213F4CBB0();
  *(v31 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type) = 3;
  *(v31 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled) = 0;
  *(v31 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled) = 0;
  swift_beginAccess();
  if (v33[1])
  {
    v36 = swift_getKeyPath();
    MEMORY[0x28223BE20](v36);
    *(&v98 - 3) = 0;
    *(&v98 - 2) = 0;
    *(&v98 - 4) = v31;
    v130 = v31;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v33 = 0;
    v33[1] = 0;
  }

  swift_beginAccess();
  if (v34[1])
  {
    v37 = swift_getKeyPath();
    MEMORY[0x28223BE20](v37);
    *(&v98 - 3) = 0;
    *(&v98 - 2) = 0;
    *(&v98 - 4) = v31;
    v129 = v31;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v34 = 0;
    v34[1] = 0;
  }

  swift_beginAccess();
  if (*(v31 + v35))
  {
    v38 = swift_getKeyPath();
    MEMORY[0x28223BE20](v38);
    *(&v98 - 2) = v31;
    *(&v98 - 1) = 0;
    v128 = v31;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  *(v105 + 48) = v31;
  v102 = swift_allocObject();
  v100 = xmmword_213F51BA0;
  *(v102 + 16) = xmmword_213F51BA0;
  v39 = *(v106 + 48);
  v40 = *(v106 + 52);
  v41 = swift_allocObject();
  v42 = v108;
  sub_213F4CB30();
  v107(v41 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id, v42, v110);
  v43 = (v41 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol);
  *v43 = 0;
  v43[1] = 0;
  v44 = (v41 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label);
  *v44 = 0;
  v44[1] = 0;
  v45 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor;
  *(v41 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor) = 0;
  sub_213F4CBB0();
  *(v41 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type) = 4;
  *(v41 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled) = 0;
  *(v41 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled) = 0;
  swift_beginAccess();
  if (v43[1])
  {
    v46 = swift_getKeyPath();
    MEMORY[0x28223BE20](v46);
    *(&v98 - 3) = 0;
    *(&v98 - 2) = 0;
    *(&v98 - 4) = v41;
    v127 = v41;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v43 = 0;
    v43[1] = 0;
  }

  swift_beginAccess();
  if (v44[1])
  {
    v47 = swift_getKeyPath();
    MEMORY[0x28223BE20](v47);
    *(&v98 - 3) = 0;
    *(&v98 - 2) = 0;
    *(&v98 - 4) = v41;
    v126 = v41;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v44 = 0;
    v44[1] = 0;
  }

  swift_beginAccess();
  if (*(v41 + v45))
  {
    v48 = swift_getKeyPath();
    MEMORY[0x28223BE20](v48);
    *(&v98 - 2) = v41;
    *(&v98 - 1) = 0;
    v125 = v41;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  *(v102 + 32) = v41;
  v101 = swift_allocObject();
  *(v101 + 16) = v100;
  v49 = *(v106 + 48);
  v50 = *(v106 + 52);
  v51 = swift_allocObject();
  v52 = v108;
  sub_213F4CB30();
  v107(v51 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id, v52, v110);
  v53 = (v51 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol);
  *v53 = 0;
  v53[1] = 0;
  v54 = (v51 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label);
  *v54 = 0;
  v54[1] = 0;
  v55 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor;
  *(v51 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor) = 0;
  sub_213F4CBB0();
  *(v51 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type) = 11;
  *(v51 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled) = 0;
  *(v51 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled) = 0;
  swift_beginAccess();
  if (v53[1])
  {
    v56 = swift_getKeyPath();
    MEMORY[0x28223BE20](v56);
    *(&v98 - 3) = 0;
    *(&v98 - 2) = 0;
    *(&v98 - 4) = v51;
    v124 = v51;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v53 = 0;
    v53[1] = 0;
  }

  swift_beginAccess();
  if (v54[1])
  {
    v57 = swift_getKeyPath();
    MEMORY[0x28223BE20](v57);
    *(&v98 - 3) = 0;
    *(&v98 - 2) = 0;
    *(&v98 - 4) = v51;
    v123 = v51;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v54 = 0;
    v54[1] = 0;
  }

  swift_beginAccess();
  if (*(v51 + v55))
  {
    v58 = swift_getKeyPath();
    MEMORY[0x28223BE20](v58);
    *(&v98 - 2) = v51;
    *(&v98 - 1) = 0;
    v122 = v51;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  *(v101 + 32) = v51;
  v103 = swift_allocObject();
  *(v103 + 1) = xmmword_213F55C60;
  v59 = *(v106 + 48);
  v60 = *(v106 + 52);
  v61 = swift_allocObject();
  v62 = v108;
  sub_213F4CB30();
  v107(v61 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id, v62, v110);
  v63 = (v61 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol);
  *v63 = 0;
  v63[1] = 0;
  v64 = (v61 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label);
  *v64 = 0;
  v64[1] = 0;
  v65 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor;
  *(v61 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor) = 0;
  sub_213F4CBB0();
  *(v61 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type) = 6;
  *(v61 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled) = 1;
  *(v61 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled) = 0;
  swift_beginAccess();
  if (v63[1])
  {
    v66 = swift_getKeyPath();
    MEMORY[0x28223BE20](v66);
    *(&v98 - 3) = 0;
    *(&v98 - 2) = 0;
    *(&v98 - 4) = v61;
    v121 = v61;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v63 = 0;
    v63[1] = 0;
  }

  swift_beginAccess();
  if (v64[1])
  {
    v67 = swift_getKeyPath();
    MEMORY[0x28223BE20](v67);
    *(&v98 - 3) = 0;
    *(&v98 - 2) = 0;
    *(&v98 - 4) = v61;
    v120 = v61;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v64 = 0;
    v64[1] = 0;
  }

  swift_beginAccess();
  if (*(v61 + v65))
  {
    v68 = swift_getKeyPath();
    MEMORY[0x28223BE20](v68);
    *(&v98 - 2) = v61;
    *(&v98 - 1) = 0;
    v119 = v61;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  v103[4] = v61;
  v69 = *(v106 + 48);
  v70 = *(v106 + 52);
  v71 = swift_allocObject();
  v72 = v108;
  sub_213F4CB30();
  v107(v71 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id, v72, v110);
  v73 = (v71 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol);
  *v73 = 0;
  v73[1] = 0;
  v74 = (v71 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label);
  *v74 = 0;
  v74[1] = 0;
  v75 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor;
  *(v71 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor) = 0;
  sub_213F4CBB0();
  *(v71 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type) = 1;
  *(v71 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled) = 1;
  *(v71 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled) = 0;
  swift_beginAccess();
  if (v73[1])
  {
    v76 = swift_getKeyPath();
    MEMORY[0x28223BE20](v76);
    *(&v98 - 3) = 0;
    *(&v98 - 2) = 0;
    *(&v98 - 4) = v71;
    v118 = v71;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v73 = 0;
    v73[1] = 0;
  }

  swift_beginAccess();
  if (v74[1])
  {
    v77 = swift_getKeyPath();
    MEMORY[0x28223BE20](v77);
    *(&v98 - 3) = 0;
    *(&v98 - 2) = 0;
    *(&v98 - 4) = v71;
    v117 = v71;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v74 = 0;
    v74[1] = 0;
  }

  swift_beginAccess();
  if (*(v71 + v75))
  {
    v78 = swift_getKeyPath();
    MEMORY[0x28223BE20](v78);
    *(&v98 - 2) = v71;
    *(&v98 - 1) = 0;
    v116 = v71;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  v103[5] = v71;
  v104 = swift_allocObject();
  *(v104 + 16) = v100;
  v79 = *(v106 + 48);
  v80 = *(v106 + 52);
  v81 = swift_allocObject();
  v82 = v108;
  sub_213F4CB30();
  v107(v81 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id, v82, v110);
  v83 = (v81 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol);
  *v83 = 0;
  v83[1] = 0;
  v84 = (v81 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label);
  *v84 = 0;
  v84[1] = 0;
  v85 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor;
  *(v81 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor) = 0;
  sub_213F4CBB0();
  *(v81 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type) = 12;
  *(v81 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled) = 1;
  *(v81 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled) = 0;
  swift_beginAccess();
  if (v83[1])
  {
    v86 = swift_getKeyPath();
    MEMORY[0x28223BE20](v86);
    *(&v98 - 3) = 0;
    *(&v98 - 2) = 0;
    *(&v98 - 4) = v81;
    v115 = v81;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v83 = 0;
    v83[1] = 0;
  }

  swift_beginAccess();
  if (v84[1])
  {
    v87 = swift_getKeyPath();
    MEMORY[0x28223BE20](v87);
    *(&v98 - 3) = 0;
    *(&v98 - 2) = 0;
    *(&v98 - 4) = v81;
    v114 = v81;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v84 = 0;
    v84[1] = 0;
  }

  swift_beginAccess();
  if (*(v81 + v85))
  {
    v88 = swift_getKeyPath();
    MEMORY[0x28223BE20](v88);
    *(&v98 - 2) = v81;
    *(&v98 - 1) = 0;
    v112 = v81;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  v89 = v104;
  *(v104 + 32) = v81;
  v90 = type metadata accessor for ActionBarViewModel(0);
  v91 = *(v90 + 48);
  v92 = *(v90 + 52);
  v93 = swift_allocObject();
  v94 = v108;
  sub_213F4CB30();
  v107(v93 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__id, v94, v110);
  sub_213F4CBB0();
  *(v93 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingItems) = v105;
  *(v93 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__centeredItems) = MEMORY[0x277D84F90];
  v95 = v101;
  *(v93 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingItems) = v102;
  *(v93 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingEditItems) = v95;
  *(v93 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__centeredEditItems) = v103;
  *(v93 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingEditItems) = v89;
  *(v93 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__forceExpandedSearch) = 0;
  v96 = *(v99 + 56);
  v112 = *(v99 + 48);
  v113 = v96;
  v111 = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8FA8, &qword_213F56E98);
  return sub_213F4EAB0();
}

uint64_t sub_213E26E88(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v5 = *(a3 + 48);
  v6 = *(a3 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8FA8, &qword_213F56E98);
  sub_213F4EAA0();
  sub_213E1B0F8(&unk_282643B08, v3 == 0);
}

uint64_t sub_213E26EF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8D00, &qword_213F56748);
  sub_213DE3AE4(&qword_27C8F8D08, &qword_27C8F8D00, &qword_213F56748);
  return sub_213F4D410();
}

uint64_t sub_213E270FC(uint64_t a1)
{
  v2 = sub_213F4D560();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_213F4D660();
}

__n128 sub_213E271C4@<Q0>(void (*a1)(__int128 *__return_ptr)@<X1>, uint64_t a2@<X8>)
{
  a1(&v11);
  v38 = v23;
  v39 = v24;
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v37 = v22;
  v30 = v15;
  v31 = v16;
  v32 = v17;
  v33 = v18;
  v26 = v11;
  v27 = v12;
  v28 = v13;
  v29 = v14;
  v41[12] = v23;
  v41[13] = v24;
  v41[8] = v19;
  v41[9] = v20;
  v41[10] = v21;
  v41[11] = v22;
  v41[4] = v15;
  v41[5] = v16;
  v41[6] = v17;
  v41[7] = v18;
  v41[0] = v11;
  v41[1] = v12;
  v40 = v25;
  v42 = v25;
  v41[2] = v13;
  v41[3] = v14;
  sub_213DE3164(&v26, &v10, &qword_27C8F8F70, &qword_213F56E70);
  sub_213DE36FC(v41, &qword_27C8F8F70, &qword_213F56E70);
  v3 = v39;
  *(a2 + 192) = v38;
  *(a2 + 208) = v3;
  *(a2 + 224) = v40;
  v4 = v35;
  *(a2 + 128) = v34;
  *(a2 + 144) = v4;
  v5 = v37;
  *(a2 + 160) = v36;
  *(a2 + 176) = v5;
  v6 = v31;
  *(a2 + 64) = v30;
  *(a2 + 80) = v6;
  v7 = v33;
  *(a2 + 96) = v32;
  *(a2 + 112) = v7;
  v8 = v27;
  *a2 = v26;
  *(a2 + 16) = v8;
  result = v29;
  *(a2 + 32) = v28;
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_213E27300(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_213F4F7E0();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_213F4F7E0();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_213E274E8(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_213E27588(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_213E273F0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_213F1E18C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_213E274E8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_213F4F7E0();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_213F4F740();
  *v1 = result;
  return result;
}

uint64_t sub_213E27588(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_213F4F7E0();
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
      result = sub_213F4F7E0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_213DE3AE4(&qword_27C8F9158, &qword_27C8F9140, &qword_213F56FD8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9140, &qword_213F56FD8);
            v9 = sub_213E2772C(v13, i, a3);
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
        type metadata accessor for ActionBarItemViewModel(0);
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

uint64_t (*sub_213E2772C(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x216052B30](a2, a3);
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
    *v3 = v5;
    return sub_213E277AC;
  }

  __break(1u);
  return result;
}

uint64_t sub_213E277B4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

uint64_t sub_213E27834()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_213E2785C()
{
  result = qword_27C8F8CE8;
  if (!qword_27C8F8CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8CE8);
  }

  return result;
}

unint64_t sub_213E278B0()
{
  result = qword_2811847E8;
  if (!qword_2811847E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811847E8);
  }

  return result;
}

unint64_t sub_213E27950()
{
  result = qword_27C8F8D10;
  if (!qword_27C8F8D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8D10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActionBarItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActionBarItemType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_213E27B34()
{
  result = sub_213F4CB40();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_213F4CBC0();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_213E28088()
{
  result = sub_213F4CB40();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_213F4CBC0();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_213E2863C()
{
  sub_213E289F4(319, &qword_281183508, &qword_27C8F8D50, &unk_213F5E0A0, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_213E28A58(319, &qword_281183500, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_213E28990(319, &qword_27C8F8D58, type metadata accessor for ActionBarViewModel, MEMORY[0x277CE12F8]);
      if (v2 <= 0x3F)
      {
        sub_213DE22E8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_213E287A8()
{
  sub_213E28990(319, &qword_27C8F8D78, type metadata accessor for ActionBarModifierPreview.Ocean, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_213E289F4(319, &qword_27C8F8D80, &qword_27C8F8CF8, &qword_213F56740, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_213E28A58(319, &qword_27C8F8D88, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_213E28990(319, &qword_27C8F8D90, type metadata accessor for ActionBarViewModel, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_213E28990(319, &qword_27C8F8D98, MEMORY[0x277CDF0E0], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_213E28A58(319, &qword_2811827B0, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_213E28990(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_213E289F4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_213E28A58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_213E28AA8()
{
  result = qword_27C8F8DA0;
  if (!qword_27C8F8DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8CE0, &qword_213F56730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8C98, &qword_213F566F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8C90, &qword_213F566F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8C88, &qword_213F566E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8CA8, &qword_213F56708);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8CB0, &qword_213F56710);
    sub_213DE3AE4(&qword_27C8F8CB8, &qword_27C8F8CA8, &qword_213F56708);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8CC0, &qword_213F56718);
    sub_213DE3AE4(&qword_27C8F8CC8, &qword_27C8F8CC0, &qword_213F56718);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_27C8F8DA8, &qword_27C8F8DB0, &qword_213F56AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8DA0);
  }

  return result;
}

uint64_t sub_213E28D44()
{
  result = sub_213F4CB40();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_213E28E18()
{
  sub_213E28990(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ActionBarItemViewModel(319);
    if (v1 <= 0x3F)
    {
      sub_213DE22E8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_213E28F4C()
{
  result = qword_27C8F8DF8;
  if (!qword_27C8F8DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8DF8);
  }

  return result;
}

uint64_t sub_213E28FA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ActionBarItem(0) - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_213E1E28C(a1, v6, v7, v8, v9, v10, a2);
}

unint64_t sub_213E29028()
{
  result = qword_281182328;
  if (!qword_281182328)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281182328);
  }

  return result;
}

unint64_t sub_213E29074()
{
  result = qword_27C8F8E28;
  if (!qword_27C8F8E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8E10, &qword_213F56CA8);
    sub_213E1575C(&qword_27C8F8E30, MEMORY[0x277CDDEB0]);
    sub_213E29130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8E28);
  }

  return result;
}

unint64_t sub_213E29130()
{
  result = qword_27C8F8E38;
  if (!qword_27C8F8E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8E40, &qword_213F56CC8);
    sub_213DE3AE4(&qword_27C8F8E48, &qword_27C8F8E50, &qword_213F56CD0);
    sub_213DE3AE4(&qword_27C8F8E58, &qword_27C8F8E60, &qword_213F56CD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8E38);
  }

  return result;
}

uint64_t sub_213E29210@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ActionBarItem(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_213E1DC84(a1, v6, v7, v8, a2);
}

id sub_213E29294(uint64_t a1, uint64_t a2, void *a3)
{

  return a3;
}

uint64_t sub_213E292E4(uint64_t a1, uint64_t a2, void *a3)
{
}

uint64_t sub_213E29328@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ActionBarItem(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v2 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v2 + v8);
  v13 = *(v2 + v8 + 8);

  return sub_213E1CE14(a1, v2 + v6, v10, v11, v12, v13, a2);
}

uint64_t sub_213E293E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_213E1D4D0(v1[4], v1[5], v1[6], a1);
}

uint64_t sub_213E29428(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_213E294AC()
{
  result = qword_27C8F8EA8;
  if (!qword_27C8F8EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8EB0, &qword_213F56D08);
    sub_213DE3AE4(&qword_27C8F8EB8, &qword_27C8F8EC0, &unk_213F56D10);
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8EA8);
  }

  return result;
}

uint64_t objectdestroy_194Tm()
{
  v1 = type metadata accessor for ActionBarItem(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D290();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = *(v4 + *(v1 + 20));

  v8 = *(v4 + *(v1 + 24) + 8);

  return swift_deallocObject();
}

uint64_t sub_213E296DC()
{
  v1 = type metadata accessor for ActionBarItem(0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = v0 + *(v1 + 24) + v3;
  v6 = *(v5 + 8);
  return (*v5)(v4);
}

uint64_t sub_213E2977C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_213DBC9EC();

  return sub_213F4EA80();
}

uint64_t sub_213E297FC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_213E2977C(*(v0 + 16));
}

uint64_t sub_213E29808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213E29870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_213E298F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9010, &qword_213F56EE0);
  sub_213F4CB40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F70, &qword_213F56E70);
  sub_213DE3AE4(&qword_27C8F9018, &qword_27C8F9010, &qword_213F56EE0);
  sub_213E29A60();
  sub_213E1575C(&qword_27C8F9020, type metadata accessor for ActionBarModifierPreview.Ocean);
  return sub_213F4ECD0();
}

unint64_t sub_213E29A60()
{
  result = qword_27C8F8F68;
  if (!qword_27C8F8F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8F70, &qword_213F56E70);
    sub_213E29B18();
    sub_213DE3AE4(&qword_281182968, &qword_27C8F8F90, &qword_213F57930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8F68);
  }

  return result;
}

unint64_t sub_213E29B18()
{
  result = qword_27C8F8F78;
  if (!qword_27C8F8F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8F80, &qword_213F56E78);
    sub_213E29BA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8F78);
  }

  return result;
}

unint64_t sub_213E29BA4()
{
  result = qword_281183338;
  if (!qword_281183338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8F88, &unk_213F56E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183338);
  }

  return result;
}

uint64_t objectdestroy_231Tm()
{
  v1 = (type metadata accessor for ActionBarModifierPreview(0) - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = *v3;

  v5 = v3[1];

  v6 = v3[2];

  v7 = v3[4];

  v8 = v3[5];

  v9 = v3[6];

  v10 = v3[7];

  v11 = v3 + v1[10];
  v12 = sub_213F4EDA0();
  (*(*(v12 - 8) + 8))(v11, v12);
  v13 = *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8D60, &unk_213F56AB0) + 28)];

  v14 = *(v3 + v1[11] + 8);

  return swift_deallocObject();
}

uint64_t sub_213E29D7C(uint64_t a1)
{
  v2 = *(*(type metadata accessor for ActionBarModifierPreview(0) - 8) + 80);

  return sub_213E24BF0(a1);
}

uint64_t sub_213E29E14(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ActionBarModifierPreview(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_213E29E88(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for ActionBarModifierPreview(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_213E26E88(a1, a2, v6);
}

unint64_t sub_213E29F08()
{
  result = qword_27C8F8FD8;
  if (!qword_27C8F8FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8F40, &qword_213F56E50);
    sub_213E29F94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8FD8);
  }

  return result;
}

unint64_t sub_213E29F94()
{
  result = qword_27C8F8FE0;
  if (!qword_27C8F8FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8FD0, &qword_213F56EC8);
    sub_213E2A04C();
    sub_213DE3AE4(&qword_281182848, &qword_27C8F9000, &qword_213F56ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8FE0);
  }

  return result;
}

unint64_t sub_213E2A04C()
{
  result = qword_27C8F8FE8;
  if (!qword_27C8F8FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8FB8, &qword_213F56EA8);
    sub_213E2A104();
    sub_213DE3AE4(&qword_27C8F8FF8, &qword_27C8F8FC0, &unk_213F56EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8FE8);
  }

  return result;
}

unint64_t sub_213E2A104()
{
  result = qword_27C8F8FF0;
  if (!qword_27C8F8FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8FB0, &qword_213F56EA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8F38, &qword_213F56E48);
    sub_213DE3AE4(&qword_27C8F8FA0, &qword_27C8F8F38, &qword_213F56E48);
    swift_getOpaqueTypeConformance2();
    sub_213E1575C(&qword_27C8F8DB8, type metadata accessor for ActionBarModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8FF0);
  }

  return result;
}

double sub_213E2A230@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *&result = sub_213E271C4(*(v1 + 16), a1).n128_u64[0];
  return result;
}

uint64_t sub_213E2A240(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_213E2A2BC()
{
  result = qword_27C8F90D8;
  if (!qword_27C8F90D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F90E0, &qword_213F56F78);
    sub_213E1575C(&qword_27C8F90E8, type metadata accessor for ActionBarItem);
    sub_213E1575C(&qword_281182838, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F90D8);
  }

  return result;
}

unint64_t sub_213E2A3A8()
{
  result = qword_27C8F90F8;
  if (!qword_27C8F90F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9048, &qword_213F56F08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9058, &qword_213F56F18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9100, &qword_213F56F80);
    sub_213E2A4A0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F90F8);
  }

  return result;
}

unint64_t sub_213E2A4A0()
{
  result = qword_27C8F9108;
  if (!qword_27C8F9108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9100, &qword_213F56F80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9110, &qword_213F56F88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9118, &qword_213F56F90);
    sub_213DE3AE4(&qword_27C8F9120, &qword_27C8F9118, &qword_213F56F90);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9108);
  }

  return result;
}

unint64_t sub_213E2A5E0()
{
  result = qword_27C8F9138;
  if (!qword_27C8F9138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9130, &qword_213F56FA0);
    sub_213E2A2BC();
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9138);
  }

  return result;
}

uint64_t sub_213E2A698(uint64_t a1)
{
  v3 = type metadata accessor for ActionBarModifier(0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = v1 + *(v3 + 28) + v5;
  v8 = *(v7 + 8);
  return (*v7)(v6, a1);
}

uint64_t sub_213E2A73C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213E2A79C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ActionBarModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_213E1EEF8(*a1, a2);
}

uint64_t sub_213E2A810(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8D50, &unk_213F5E0A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_213E2A880()
{
  result = qword_27C8F9160;
  if (!qword_27C8F9160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9168, &unk_213F56FE0);
    sub_213E2A904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9160);
  }

  return result;
}

unint64_t sub_213E2A904()
{
  result = qword_27C8F9170;
  if (!qword_27C8F9170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8E18, &unk_213F56CB0);
    sub_213E29074();
    sub_213DE3AE4(&qword_27C8F8E68, &qword_27C8F8E20, &qword_213F56CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9170);
  }

  return result;
}

uint64_t sub_213E2AB40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E2B0BC(&qword_27C8F9180, type metadata accessor for CategoryTileViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_213E2AC38(uint64_t a1, uint64_t *a2)
{
  v4 = sub_213F4CB40();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return sub_213E2AE1C(v7);
}

uint64_t sub_213E2AD04@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_213E2B0BC(&qword_27C8F9180, type metadata accessor for CategoryTileViewModel);
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel__id;
  swift_beginAccess();
  v4 = sub_213F4CB40();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_213E2AE1C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel__id;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_213E2B0BC(&qword_27C8F8BF8, MEMORY[0x277CC95F0]);
  v15[0] = a1;
  LOBYTE(a1) = sub_213F4F1F0();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (a1)
  {
    v10(v8, v15[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v9, v8, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13 = v15[0];
    v15[-2] = v2;
    v15[-1] = v13;
    v15[1] = v2;
    sub_213E2B0BC(&qword_27C8F9180, type metadata accessor for CategoryTileViewModel);
    sub_213F4CB70();
  }

  return (v11)(v15[0], v4);
}

uint64_t sub_213E2B0BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_213E2B104(uint64_t a1, uint64_t a2)
{
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  v9 = OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel__id;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

void (*sub_213E2B23C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E2B0BC(&qword_27C8F9180, type metadata accessor for CategoryTileViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E2AAE0();
  return sub_213E2B374;
}

void sub_213E2B374(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_213F4CB90();

  free(v1);
}

uint64_t CategoryTileViewModel.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_title);
  v2 = *(v0 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_title + 8);

  return v1;
}

uint64_t CategoryTileViewModel.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_subtitle);
  v2 = *(v0 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_subtitle + 8);

  return v1;
}

uint64_t CategoryTileViewModel.colorGradient.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_colorGradient);
  v2 = *(v0 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_colorGradient + 8);

  return v1;
}

uint64_t CategoryTileViewModel.__allocating_init(title:subtitle:imageProvider:colorGradient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v15 = a5[3];
  v16 = a5[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a5, v15);
  v18 = sub_213E2EAEC(a1, a2, a3, a4, v17, a6, a7, v7, v15, v16);
  __swift_destroy_boxed_opaque_existential_1(a5);
  return v18;
}

uint64_t CategoryTileViewModel.init(title:subtitle:imageProvider:colorGradient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v15 = a5[3];
  v14 = a5[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a5, v15);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v21 = sub_213E2E948(a1, a2, a3, a4, v19, a6, a7, v23[1], v15, v14);
  __swift_destroy_boxed_opaque_existential_1(a5);
  return v21;
}

uint64_t CategoryTileViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_title + 8);

  v4 = *(v0 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_subtitle + 8);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_imageProvider));
  v6 = *(v0 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_colorGradient);
  v5 = *(v0 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_colorGradient + 8);

  v7 = OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel___observationRegistrar;
  v8 = sub_213F4CBC0();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t CategoryTileViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_title + 8);

  v4 = *(v0 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_subtitle + 8);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_imageProvider));
  v6 = *(v0 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_colorGradient);
  v5 = *(v0 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_colorGradient + 8);

  v7 = OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel___observationRegistrar;
  v8 = sub_213F4CBC0();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_213E2B8DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213F4D7F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_213DE3164(v2, &v17 - v11, &qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_213F4D290();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_213F4F520();
    v16 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_213E2BADC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4D7F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for CategoryTile(0);
  sub_213DE3164(v1 + *(v12 + 24), v11, &qword_27C8F9190, &qword_213F58FE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_213F4D390();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_213F4F520();
    v16 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_213E2BCE4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_213E2B0BC(&qword_27C8F9180, type metadata accessor for CategoryTileViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t CategoryTile.init(model:tapHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for CategoryTile(0);
  v9 = v8[5];
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v10 = v8[6];
  *(a4 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v11 = a4 + v8[9];
  result = sub_213F4EA90();
  *v11 = v14;
  *(v11 + 1) = v15;
  *(a4 + v8[7]) = a1;
  v13 = (a4 + v8[8]);
  *v13 = a2;
  v13[1] = a3;
  return result;
}

double sub_213E2BF14()
{
  v1 = sub_213F4D390();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v17[-v7];
  v9 = (v0 + *(type metadata accessor for CategoryTile(0) + 36));
  v10 = *v9;
  v11 = *(v9 + 1);
  v17[16] = v10;
  v18 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  if (v17[15])
  {
    return 32.0;
  }

  sub_213E2BADC(v8);
  v13 = v2[13];
  v13(v6, *MEMORY[0x277CDFA00], v1);
  v14 = sub_213F4D380();
  v15 = v2[1];
  v15(v6, v1);
  v15(v8, v1);
  result = 12.0;
  if ((v14 & 1) == 0)
  {
    sub_213E2BADC(v8);
    v13(v6, *MEMORY[0x277CDF988], v1);
    sub_213E2B0BC(&qword_281183490, MEMORY[0x277CDFA28]);
    v16 = sub_213F4F1D0();
    v15(v6, v1);
    v15(v8, v1);
    result = 32.0;
    if (v16)
    {
      return 20.0;
    }
  }

  return result;
}

double sub_213E2C178()
{
  v1 = sub_213F4D390();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-v7];
  v9 = (v0 + *(type metadata accessor for CategoryTile(0) + 36));
  v10 = *v9;
  v11 = *(v9 + 1);
  v15[16] = v10;
  v16 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  result = 0.0;
  if ((v15[15] & 1) == 0)
  {
    sub_213E2BADC(v8);
    (*(v2 + 104))(v6, *MEMORY[0x277CDF988], v1);
    sub_213E2B0BC(&qword_281183490, MEMORY[0x277CDFA28]);
    v13 = sub_213F4F1D0();
    v14 = *(v2 + 8);
    v14(v6, v1);
    v14(v8, v1);
    result = 0.0;
    if (v13)
    {
      return 12.0;
    }
  }

  return result;
}

uint64_t sub_213E2C354@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v3 = type metadata accessor for MapsDesignImage();
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9300, &qword_213F57360);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v63 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9308, &qword_213F57368);
  v13 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v15 = &v63 - v14;
  v64 = type metadata accessor for CategoryTile(0);
  sub_213DEBAA8(*(v2 + *(v64 + 28)) + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_imageProvider, &v7[v4[10]]);
  v16 = sub_213F4EEE0();
  v63 = v17;
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v18 = v4[7];
  *&v7[v18] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v19 = v4[8];
  *&v7[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v20 = v4[9];
  *&v7[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v21 = &v7[v4[14]];
  v22 = &v7[v4[15]];
  v23 = &v7[v4[16]];
  v67 = 0;
  v68 = 0;
  memset(v69, 0, sizeof(v69));
  sub_213F4EA90();
  v24 = v71;
  v25 = v72;
  v26 = v73;
  v27 = v74;
  v28 = v75;
  *v23 = v70;
  *(v23 + 2) = v24;
  v23[24] = v25;
  v23[25] = v26;
  v23[26] = v27;
  *(v23 + 4) = v28;
  v29 = v4[17];
  v67 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v7[v29] = v70;
  v7[v4[11]] = 0;
  v30 = &v7[v4[12]];
  v31 = v63;
  *v30 = v16;
  v30[1] = v31;
  v7[v4[13]] = 1;
  *v21 = 0;
  *(v21 + 1) = 0;
  *v22 = 0;
  *(v22 + 1) = 0;
  sub_213E2F560(v7, v12, type metadata accessor for MapsDesignImage);
  v32 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8360, &unk_213F537D0) + 36)];
  *v32 = 0x3FFD1745D1745D17;
  *(v32 + 4) = 0;
  sub_213DEBB74(v7);
  LOBYTE(v21) = sub_213F4E060();
  sub_213E2BF14();
  sub_213F4CDA0();
  v33 = &v12[*(v9 + 44)];
  *v33 = v21;
  *(v33 + 1) = v34;
  *(v33 + 2) = v35;
  *(v33 + 3) = v36;
  *(v33 + 4) = v37;
  v33[40] = 0;
  v38 = sub_213F4E070();
  v39 = (v2 + *(v64 + 36));
  v40 = *v39;
  v41 = *(v39 + 1);
  LOBYTE(v70) = v40;
  *(&v70 + 1) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  if (v67 == 1)
  {
    sub_213E2BF14();
  }

  sub_213F4CDA0();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  sub_213DE2B44(v12, v15, &qword_27C8F9300, &qword_213F57360);
  v50 = &v15[*(v65 + 36)];
  *v50 = v38;
  *(v50 + 1) = v43;
  *(v50 + 2) = v45;
  *(v50 + 3) = v47;
  *(v50 + 4) = v49;
  v50[40] = 0;
  v51 = sub_213F4E040();
  sub_213E2C178();
  sub_213F4CDA0();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = v66;
  sub_213DE2B44(v15, v66, &qword_27C8F9308, &qword_213F57368);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92E8, &qword_213F57348);
  v62 = v60 + *(result + 36);
  *v62 = v51;
  *(v62 + 8) = v53;
  *(v62 + 16) = v55;
  *(v62 + 24) = v57;
  *(v62 + 32) = v59;
  *(v62 + 40) = 0;
  return result;
}