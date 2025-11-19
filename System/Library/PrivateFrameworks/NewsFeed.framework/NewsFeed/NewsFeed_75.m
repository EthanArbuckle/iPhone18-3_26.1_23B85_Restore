uint64_t sub_1D6215F90(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    for (i = (a3 + 32); ; i = (i + 104))
    {
      v8 = i[3];
      v9 = i[5];
      v32 = i[4];
      v33 = v9;
      v10 = i[1];
      v29[0] = *i;
      v29[1] = v10;
      v11 = i[3];
      v13 = *i;
      v12 = i[1];
      v30 = i[2];
      v31 = v11;
      v14 = i[5];
      v26 = v32;
      v27 = v14;
      v22 = v13;
      v23 = v12;
      v34 = *(i + 12);
      v28 = *(i + 12);
      v24 = v30;
      v25 = v8;
      sub_1D5C5C4CC(v29, &v15);
      FormatSourceMapNode.bind(binder:context:)(v6, a2);
      if (v3)
      {
        break;
      }

      v19 = v26;
      v20 = v27;
      v21 = v28;
      v15 = v22;
      v16 = v23;
      v17 = v24;
      v18 = v25;
      result = sub_1D5C5C540(&v15);
      if (!--v4)
      {
        return result;
      }
    }

    v19 = v26;
    v20 = v27;
    v21 = v28;
    v15 = v22;
    v16 = v23;
    v17 = v24;
    v18 = v25;
    return sub_1D5C5C540(&v15);
  }

  return result;
}

void sub_1D62160B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v142 = &v134 - v14;
  v15 = type metadata accessor for FormatItemNodeAction();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v143 = &v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54684(0, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v134 - v21;
  v146 = *(a3 + 16);
  if (v146)
  {
    v140 = v11;
    v23 = 0;
    v147 = a3 + 32;
    v148 = a1;
    v141 = (v16 + 48);
    v144 = &v134 - v21;
    v145 = v15;
    while (1)
    {
      v25 = (v147 + (v23 << 6));
      v26 = v25[1];
      v209[0] = *v25;
      v209[1] = v26;
      v27 = v25[3];
      v209[2] = v25[2];
      v209[3] = v27;
      ++v23;
      v28 = *&v209[0];
      switch(v27 >> 59)
      {
        case 1uLL:

          v24 = v4;
          FormatTextNodeStyle.bind(binder:context:)(a1, a2);
          goto LABEL_4;
        case 2uLL:

          v24 = v4;
          FormatImageNodeStyle.bind(binder:context:)(a1, a2);
          goto LABEL_4;
        case 3uLL:
          v64 = *(*&v209[0] + 64);
          v198 = *(*&v209[0] + 48);
          v199 = v64;
          v65 = *(*&v209[0] + 96);
          v200 = *(*&v209[0] + 80);
          v201 = v65;
          LOBYTE(v202) = *(*&v209[0] + 112);
          if ((v202 & 0xFE) == 0x7E)
          {
          }

          else
          {
            v83 = v198;
            if ((~v198 & 0xF000000000000007) != 0)
            {
              *&v177 = v198;
              sub_1D5C8C900(v209, &v188);
              sub_1D62B5354(&v198, &v188, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
              sub_1D5CFCFAC(v83);
              FormatColor.bind(binder:context:)(v148, a2);
              if (v4)
              {
                sub_1D5D0ABCC(&v198, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
                sub_1D5C8C974(v209);
LABEL_218:

                return;
              }

              sub_1D5D0ABCC(&v198, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
              a1 = v148;
              v22 = v144;
              v15 = v145;
            }

            else
            {

              a1 = v148;
            }
          }

          v98 = *(v28 + 120);
          *(v190 + 9) = *(v28 + 161);
          v99 = *(v28 + 136);
          v188 = v98;
          v189 = v99;
          v190[0] = *(v28 + 152);
          if (BYTE8(v190[1]) > 1u)
          {
            goto LABEL_146;
          }

          v100 = v188;
          v101 = *&v190[1];
          if (BYTE8(v190[1]))
          {
            if ((v188 & 0xF000000000000007) == 0xD000000000000007)
            {
LABEL_124:
              sub_1D5D0ABCC(&v188, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
              v22 = v144;
              a1 = v148;
            }

            else if ((v188 & 0xF000000000000007) == 0xF000000000000007)
            {
              sub_1D5D0ABCC(&v188, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
              sub_1D5D0ABCC(&v188, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
              v22 = v144;
              a1 = v148;
            }

            else
            {
              *&v166 = v188;
              v138 = v189;
              v139 = *(&v188 + 1);
              v136 = *&v190[0];
              v137 = *(&v189 + 1);
              v135 = *(&v190[0] + 1);
              sub_1D62B5354(&v188, &v177, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
              sub_1D62B5354(&v188, &v177, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
              sub_1D62B54E4(v100, v139, v138, v137, v136, v135, v101, 1);
              a1 = v148;
              FormatFloat.bind(binder:context:)(v148, a2);
              if (v4)
              {
                sub_1D5D0ABCC(&v188, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
                sub_1D5D0ABCC(&v188, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
                sub_1D5C8C974(v209);
                goto LABEL_218;
              }

              sub_1D5D0ABCC(&v188, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
              sub_1D5D0ABCC(&v188, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);

              v22 = v144;
            }

            v15 = v145;
            goto LABEL_146;
          }

          v102 = *&v190[1] & 0xF000000000000007;
          if ((*&v190[1] & 0xF000000000000007) == 0xD000000000000007)
          {
            goto LABEL_124;
          }

          if ((~v188 & 0xF000000000000007) != 0)
          {
            *&v166 = v188;
            sub_1D62B5354(&v188, &v177, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
            sub_1D62B5354(&v188, &v177, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
            sub_1D5CFCFAC(v100);
            FormatColor.bind(binder:context:)(v148, a2);
            if (v4)
            {
              goto LABEL_226;
            }
          }

          else
          {
            v103 = *(&v188 + 1);
            v138 = *(&v189 + 1);
            v139 = v189;
            v136 = *(&v190[0] + 1);
            v137 = *&v190[0];
            sub_1D62B5354(&v188, &v177, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
            sub_1D62B54E4(v100, v103, v139, v138, v137, v136, v101, 0);
          }

          v113 = v102 == 0xF000000000000007;
          v22 = v144;
          v15 = v145;
          if (v113)
          {
            sub_1D5D0ABCC(&v188, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
            sub_1D5D0ABCC(&v188, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
            a1 = v148;
          }

          else
          {
            *&v177 = v101;

            a1 = v148;
            FormatFloat.bind(binder:context:)(v148, a2);
            if (v4)
            {
LABEL_226:
              sub_1D5D0ABCC(&v188, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
              sub_1D5C8C974(v209);

              sub_1D5D0ABCC(&v188, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
              return;
            }

            sub_1D5D0ABCC(&v188, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);

            sub_1D5D0ABCC(&v188, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
          }

LABEL_146:
          sub_1D5C00D70(v28 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction, v22, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
          if ((*v141)(v22, 1, v15) == 1)
          {
            sub_1D5B6EF64(v22, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
            goto LABEL_150;
          }

          sub_1D62B50EC(v22, v143, type metadata accessor for FormatItemNodeAction);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if ((EnumCaseMultiPayload - 2) >= 6)
          {
            if (EnumCaseMultiPayload)
            {
              v125 = v140;
              sub_1D5D5E33C(v143, v140, type metadata accessor for FormatCommandOpenURL);
              sub_1D5F86DA0(a2);
              if (v4)
              {
                sub_1D5C8C974(v209);
                sub_1D62B51D0(v125, type metadata accessor for FormatCommandOpenURL);
LABEL_225:
                sub_1D62B51D0(v22, type metadata accessor for FormatItemNodeAction);
                return;
              }

              sub_1D62B51D0(v125, type metadata accessor for FormatCommandOpenURL);
              goto LABEL_149;
            }

            sub_1D62B5F18(v143, &v166);
            sub_1D62B5F18(&v166, &v177);
            v121 = *(&v178 + 1);
            v122 = v180;
            if (BYTE2(v180))
            {
              v123 = 8;
            }

            else
            {
              v123 = 0;
            }

            v124 = v123 & 0xFFFFFFF8 | (v180 >> 11) & 7;
            if (v124 > 4)
            {
              v127 = v142;
              if (v124 <= 6)
              {
                if (v124 != 5)
                {
                  v22 = v144;
                  v15 = v145;
                  if (BYTE8(v178) >> 6 && BYTE8(v178) >> 6 != 1)
                  {
                    a1 = v148;
                    v130 = v4;
                    sub_1D624011C(v148, a2, v177, *(&v177 + 1), v178, BYTE8(v178) & 0x3F);
                  }

                  else
                  {
                    v155 = v177;
                    LOBYTE(v156) = v178;
                    a1 = v148;
                    v130 = v4;
                    FormatTagBinding.Command.bind(binder:context:)(v148, a2);
                  }

                  goto LABEL_213;
                }
              }

              else
              {
                if (v124 != 7)
                {
                  a1 = v148;
                  v22 = v144;
                  v15 = v145;
                  goto LABEL_214;
                }

                if (v180 >> 14)
                {
                  if (v180 >> 14 != 1)
                  {
                    v155 = v177;
                    v156 = v178;
                    v138 = *(&v179 + 1);
                    v139 = v179;
                    v157 = v179;
                    LOWORD(v158) = v180 & 0x7FF;
                    v136 = *(&v177 + 1);
                    v133 = v177;
                    v137 = v178;
                    FormatTextNodeBinding.bind(binder:context:)(v148, a2);
                    if (v4)
                    {
                      sub_1D5C8C974(v209);
                      sub_1D62B5F74(&v166);
                      v22 = v144;
                      goto LABEL_225;
                    }

                    *&v149 = v133;
                    *(&v149 + 1) = v136;
                    v150 = v137;
                    v151 = v121;
                    v152 = v139;
                    v153 = v138;
                    v154 = v122 & 0x7FF;
                    a1 = v148;
                    FormatTextNodeBinding.bind(binder:context:)(v148, a2);
                    v4 = 0;
                    sub_1D62B5F74(&v166);
                    v22 = v144;
                    v15 = v145;
                    goto LABEL_149;
                  }

                  v149 = v177;
                  v150 = v178;
                  v210 = 5;
                  v131 = v177;
                  sub_1D62B7EFC(&v166, &v155);
                  v132 = sub_1D703E0C8(&v149, &v210);
                  if (v4)
                  {
                    sub_1D62B5F74(&v166);
                    sub_1D5C8C974(v209);
                    v22 = v144;
                    goto LABEL_225;
                  }

                  sub_1D6BEBFEC(v131, *(&v131 + 1), v132, 1, v127);
                  v4 = 0;
                  sub_1D5B6EF64(v127, &qword_1EDF337F0, type metadata accessor for FormatOption);
                }
              }

              sub_1D62B5F74(&v166);
              a1 = v148;
              v22 = v144;
              v15 = v145;
            }

            else
            {
              if (v124 <= 1)
              {
                v22 = v144;
                v15 = v145;
                if (!v124)
                {
                  v128 = (DWORD2(v178) >> 3) & 7;
                  if (v128 <= 1)
                  {
                    a1 = v148;
                    if (!v128 && v178 == 1 && (~v177 & 0xF000000000000007) != 0)
                    {
                      *&v155 = v177;

                      v129 = a1;
                      goto LABEL_205;
                    }

                    goto LABEL_214;
                  }

                  if (v128 != 2 && v128 != 3)
                  {
                    v155 = v177;
                    *&v156 = v178;
                    BYTE8(v156) = BYTE8(v178) & 0xC7;
                    a1 = v148;
                    v130 = v4;
                    FormatSportsEventBinding.Command.bind(binder:context:)(v148, a2);
LABEL_213:
                    v4 = v130;
                    if (v130)
                    {
                      sub_1D5C8C974(v209);
                      sub_1D62B5F74(&v166);
                      goto LABEL_225;
                    }

LABEL_214:
                    sub_1D62B5F74(&v166);
                    goto LABEL_149;
                  }

                  if (v178 == 1 && (~v177 & 0xF000000000000007) != 0)
                  {
                    *&v155 = v177;

                    v129 = v148;
LABEL_205:
                    v139 = a2;
                    FormatTextContent.bind(binder:context:)(v129, a2);
                    if (v4)
                    {
                      sub_1D62B5F74(&v166);
                      sub_1D5C8C974(v209);

                      v22 = v144;
                      goto LABEL_225;
                    }

                    sub_1D62B5F74(&v166);

                    v22 = v144;
                    v15 = v145;
                    a1 = v148;
                    a2 = v139;
                    goto LABEL_149;
                  }
                }
              }

              else
              {
                v22 = v144;
                v15 = v145;
                if (v124 != 2)
                {
                  a1 = v148;
                  if (v124 == 3 && v178 == 1 && (~v177 & 0xF000000000000007) != 0)
                  {
                    *&v155 = v177;
                    v139 = v177;

                    FormatTextContent.bind(binder:context:)(a1, a2);
                    if (v4)
                    {
                      sub_1D62B5F74(&v166);
                      sub_1D5C8C974(v209);

                      goto LABEL_225;
                    }

                    sub_1D62B5F74(&v166);

                    goto LABEL_149;
                  }

                  goto LABEL_214;
                }
              }

              sub_1D62B5F74(&v166);
              a1 = v148;
            }
          }

LABEL_149:
          sub_1D62B51D0(v22, type metadata accessor for FormatItemNodeAction);
LABEL_150:
          v115 = *(v28 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
          if (v115 >= 4)
          {
            v139 = v23;
            v116 = v22;
            v117 = a1;
            v118 = *(v28 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle + 8);
            sub_1D62B5DD0(v115);
            sub_1D620B270(v117, a2, v115);
            if (v4)
            {
              sub_1D5C8C974(v209);
              sub_1D62B5E14(v115);
              return;
            }

            sub_1D620B270(v117, a2, v118);
            v4 = 0;
            sub_1D62B5E14(v115);
            a1 = v148;
            v15 = v145;
            v22 = v116;
            v23 = v139;
          }

          v119 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle__selectors;
          swift_beginAccess();
          v120 = *(v28 + v119);

          sub_1D62188B8(a1, a2, v120);
          if (v4)
          {
LABEL_216:
            sub_1D5C8C974(v209);

            return;
          }

LABEL_5:
          sub_1D5C8C974(v209);
LABEL_6:
          if (v23 == v146)
          {
            return;
          }

          break;
        case 4uLL:
        case 0x10uLL:
          goto LABEL_6;
        case 5uLL:
          v75 = *(*&v209[0] + 56);
          if (v75)
          {

            sub_1D6213004(a1, a2, v75);
            if (v4)
            {
LABEL_217:
              sub_1D5C8C974(v209);
              return;
            }
          }

          else
          {
          }

          swift_beginAccess();
          v92 = *(v28 + 64);
          v93 = *(v92 + 16);

          if (v93)
          {
            v94 = (v92 + 56);
            do
            {
              v95 = *v94;
              if (*v94)
              {

                sub_1D6213004(v148, a2, v95);
                if (v4)
                {
                  goto LABEL_215;
                }
              }

              v94 += 4;
              --v93;
            }

            while (v93);
          }

LABEL_89:

          sub_1D5C8C974(v209);
          v22 = v144;
          v15 = v145;
          a1 = v148;
          goto LABEL_6;
        case 6uLL:
          swift_beginAccess();
          v58 = *(v28 + 56);
          sub_1D5C8C900(v209, &v198);

          sub_1D621AA44(a1, a2, v58);
          if (v4)
          {
            goto LABEL_216;
          }

          if (*(v28 + 74) == 255)
          {
            goto LABEL_5;
          }

          v59 = *(v28 + 72) | (*(v28 + 74) << 16);
          if (!WORD1(v59))
          {
            goto LABEL_5;
          }

          v60 = *(v28 + 64);
          if (WORD1(v59) == 1)
          {
            if ((v59 & 0x100) == 0)
            {
              sub_1D610CA74(v60, v59, 1, sub_1D610CA28, sub_1D610CA5C);
              sub_1D620B270(a1, a2, v60);
LABEL_180:
              sub_1D5C8C974(v209);
              sub_1D62B6F70(v60, v59);
              goto LABEL_6;
            }

            if (v59 >= 4u)
            {
              goto LABEL_126;
            }

            if (!v60)
            {
              sub_1D62B6F70(0, v59);
              v109 = 0;
              goto LABEL_127;
            }

            if (v60 == 1)
            {
              sub_1D62B6F70(1, v59);
              v109 = 1;
              goto LABEL_127;
            }

            sub_1D62B7DCC(v60, v59);
            v110 = v60;
            v111 = v59;
            v112 = 1;
LABEL_178:
            sub_1D610CA74(v110, v111, v112, sub_1D610CA28, sub_1D610CA5C);
            sub_1D620B270(a1, a2, v60);
LABEL_179:
            sub_1D62B6F70(v60, v59);
            goto LABEL_180;
          }

          if (BYTE1(v59) == 255)
          {
            goto LABEL_126;
          }

          if ((v59 & 0x100) == 0)
          {
            sub_1D62B7DCC(v60, v59);
            v110 = v60;
            v111 = v59;
            v112 = 2;
            goto LABEL_178;
          }

          if (v59 >= 4u)
          {
            sub_1D62B6F70(v60, v59);
LABEL_126:
            v109 = v60;
LABEL_127:
            sub_1D62B6F70(v109, v59);
            goto LABEL_5;
          }

          if (v60)
          {
            if (v60 != 1)
            {
              sub_1D62B7DCC(v60, v59);
              sub_1D62B7DCC(v60, v59);
              sub_1D610CA74(v60, v59, 2, sub_1D610CA28, sub_1D610CA5C);
              sub_1D620B270(a1, a2, v60);
              sub_1D62B6F70(v60, v59);
              goto LABEL_179;
            }

            sub_1D62B6F70(1, v59);
            sub_1D62B6F70(1, v59);
            v126 = 1;
          }

          else
          {
            sub_1D62B6F70(0, v59);
            sub_1D62B6F70(0, v59);
            v126 = 0;
          }

          sub_1D610CA74(v126, v59, 2, sub_1D60CF6A8, sub_1D60CF6DC);
          goto LABEL_5;
        case 7uLL:
          swift_beginAccess();
          v76 = *(v28 + 48);
          sub_1D5C8C900(v209, &v198);

          v38 = v4;
          sub_1D621B440(a1, a2, v76);
          goto LABEL_59;
        case 8uLL:

          v24 = v4;
          FormatLayeredMediaNodeStyle.bind(binder:context:)(a1, a2);
          goto LABEL_4;
        case 9uLL:

          v24 = v4;
          FormatVideoNodeStyle.bind(binder:context:)(a1, a2);
          goto LABEL_4;
        case 0xAuLL:
          swift_beginAccess();
          v37 = *(v28 + 48);
          sub_1D5C8C900(v209, &v198);

          v38 = v4;
          sub_1D621BBC4(a1, a2, v37);
LABEL_59:
          v4 = v38;
          if (v38)
          {
            goto LABEL_216;
          }

          v77 = *(v28 + 56);
          if (v77)
          {

            sub_1D620B270(a1, a2, v77);
          }

          v78 = *(v28 + 64);
          if (v78)
          {
            sub_1D620E744(a1, a2, v78);
          }

          v79 = *(v28 + 176);
          if (v79 == 254)
          {
            goto LABEL_5;
          }

          v80 = *(v28 + 144);
          v190[0] = *(v28 + 128);
          v190[1] = v80;
          v191 = *(v28 + 160);
          v82 = *(v28 + 96);
          v81 = *(v28 + 112);
          v188 = v82;
          v189 = v81;
          LOBYTE(v192) = v79;
          v200 = v190[0];
          v201 = v80;
          v202 = v191;
          v199 = v81;
          goto LABEL_104;
        case 0xBuLL:
          swift_beginAccess();
          v39 = *(v28 + 48);
          sub_1D5C8C900(v209, &v198);

          sub_1D621C350(a1, a2, v39);
          if (v4)
          {
            goto LABEL_216;
          }

          v40 = *(v28 + 56);
          if (v40)
          {

            sub_1D620B270(a1, a2, v40);
          }

          v41 = *(v28 + 64);
          if (v41)
          {
            sub_1D620E744(a1, a2, v41);
          }

          v42 = *(v28 + 176);
          if (v42 != 254)
          {
            v43 = *(v28 + 144);
            v190[0] = *(v28 + 128);
            v190[1] = v43;
            v191 = *(v28 + 160);
            v44 = *(v28 + 112);
            v188 = *(v28 + 96);
            v189 = v44;
            LOBYTE(v192) = v42;
            v200 = v190[0];
            v201 = v43;
            v202 = v191;
            v199 = v44;
            v198 = v188;
            LOBYTE(v203) = v42;
            sub_1D62B7F58(&v198, &v177);
            FormatShadow.bind(binder:context:)(a1, a2);
            v179 = v190[0];
            v180 = v190[1];
            v181 = v191;
            LOBYTE(v182) = v192;
            v177 = v188;
            v178 = v189;
            sub_1D601144C(&v177);
          }

          v45 = *(v28 + 296);
          v46 = *(v28 + 328);
          v195 = *(v28 + 312);
          v196 = v46;
          v197 = *(v28 + 344);
          v47 = *(v28 + 248);
          v48 = *(v28 + 264);
          v49 = *(v28 + 280);
          v190[1] = *(v28 + 232);
          v191 = v47;
          v192 = v48;
          v51 = *(v28 + 264);
          v50 = *(v28 + 280);
          v194 = *(v28 + 296);
          v193 = v50;
          v52 = *(v28 + 200);
          v188 = *(v28 + 184);
          v189 = v52;
          v190[0] = *(v28 + 216);
          v53 = *(v28 + 328);
          v206 = v195;
          v207 = v53;
          v208 = *(v28 + 344);
          v202 = *(v28 + 248);
          v203 = v51;
          v54 = *(v28 + 232);
          v205 = v45;
          v204 = v49;
          v55 = *(v28 + 200);
          v198 = *(v28 + 184);
          v199 = v55;
          v56 = *(v28 + 216);
          v201 = v54;
          v200 = v56;
          if (sub_1D60081E0(&v198) == 1)
          {
            goto LABEL_5;
          }

          v185 = v206;
          v186 = v207;
          v187 = v208;
          v181 = v202;
          v182 = v203;
          v183 = v204;
          v184 = v205;
          v177 = v198;
          v178 = v199;
          v179 = v200;
          v180 = v201;
          v57 = sub_1D62B4E2C(&v177);
          if (v57 <= 1)
          {
            sub_1D5D04BC4(&v177);
            goto LABEL_5;
          }

          if (v57 != 2)
          {
            goto LABEL_5;
          }

          v108 = sub_1D5D04BC4(&v177);
          v162 = *(v108 + 112);
          v163 = *(v108 + 128);
          v164 = *(v108 + 144);
          v165 = *(v108 + 160);
          v158 = *(v108 + 48);
          v159 = *(v108 + 64);
          v160 = *(v108 + 80);
          v161 = *(v108 + 96);
          v155 = *v108;
          v156 = *(v108 + 16);
          v157 = *(v108 + 32);
          v166 = v188;
          v167 = v189;
          v170 = v191;
          v171 = v192;
          v168 = v190[0];
          v169 = v190[1];
          v176 = v197;
          v174 = v195;
          v175 = v196;
          v172 = v193;
          v173 = v194;
          sub_1D60864C0(&v166, &v149);
          FormatGlassEffect.bind(binder:context:)(a1, a2);
          sub_1D5C8C974(v209);
          sub_1D5D0ABCC(&v188, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
          goto LABEL_6;
        case 0xCuLL:
          swift_beginAccess();
          v66 = *(v28 + 48);
          sub_1D5C8C900(v209, &v198);

          sub_1D621CB10(a1, a2, v66);
          if (v4)
          {
            goto LABEL_216;
          }

          v67 = *(v28 + 56);
          v68 = *(v28 + 104);
          LOBYTE(v170) = *(v28 + 120);
          v69 = *(v28 + 72);
          v166 = v67;
          v167 = v69;
          v168 = *(v28 + 88);
          v169 = v68;
          v70 = v67;
          if (v170 <= 1u)
          {
            if (v170)
            {
              v200 = v168;
              v201 = v169;
              LOBYTE(v202) = v170;
              v199 = v167;
              v198 = v166;
              sub_1D619916C(&v198, &v188);
              sub_1D6213184(a1, a2, v70);
              sub_1D5D0ABCC(&v166, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
            }

LABEL_70:
            v22 = v144;
            v74 = *(v28 + 128);
            if (!v74)
            {
              goto LABEL_72;
            }

LABEL_71:
            sub_1D620E744(a1, a2, v74);
            goto LABEL_72;
          }

          if (v170 != 2)
          {
            goto LABEL_70;
          }

          v71 = v169;
          v200 = v168;
          v201 = v169;
          LOBYTE(v202) = v170;
          v199 = v167;
          v198 = v166;
          sub_1D619916C(&v198, &v188);
          sub_1D6212DD8(a1, a2, v70);
          v22 = v144;
          if (v71)
          {
            v72 = v144;

            v73 = v148;
            sub_1D620B270(v148, a2, v71);
            sub_1D620B270(v73, a2, *(&v71 + 1));
            v4 = 0;
            sub_1D5CDE22C(v71);
            sub_1D5D0ABCC(&v166, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
            a1 = v148;
            v15 = v145;
            v22 = v72;
            v74 = *(v28 + 128);
            if (!v74)
            {
              goto LABEL_72;
            }

            goto LABEL_71;
          }

          sub_1D5D0ABCC(&v166, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
          a1 = v148;
          v15 = v145;
          v74 = *(v28 + 128);
          if (v74)
          {
            goto LABEL_71;
          }

LABEL_72:
          v79 = *(v28 + 216);
          if (v79 == 254)
          {
            goto LABEL_5;
          }

          v84 = *(v28 + 152);
          v85 = *(v28 + 168);
          v86 = *(v28 + 184);
          v190[0] = v85;
          v190[1] = v86;
          v87 = *(v28 + 200);
          v191 = v87;
          v82 = *(v28 + 136);
LABEL_103:
          v188 = v82;
          v189 = v84;
          LOBYTE(v192) = v79;
          v200 = v85;
          v201 = v86;
          v202 = v87;
          v199 = v84;
LABEL_104:
          v198 = v82;
          LOBYTE(v203) = v79;
          sub_1D62B7F58(&v198, &v177);
          FormatShadow.bind(binder:context:)(a1, a2);
          sub_1D5C8C974(v209);
          v179 = v190[0];
          v180 = v190[1];
          v181 = v191;
          LOBYTE(v182) = v192;
          v177 = v188;
          v178 = v189;
          sub_1D601144C(&v177);
          goto LABEL_6;
        case 0xDuLL:
          swift_beginAccess();
          v36 = *(v28 + 72);
          if (v36)
          {
            sub_1D5C8C900(v209, &v198);

            sub_1D621397C(a1, a2, v36);
            if (v4)
            {
              goto LABEL_216;
            }
          }

          else
          {
          }

          swift_beginAccess();
          v88 = *(v28 + 88);
          v89 = *(v88 + 16);

          if (!v89)
          {
            goto LABEL_89;
          }

          v90 = (v88 + 72);
          while (2)
          {
            v91 = *v90;
            if (!*v90)
            {
              goto LABEL_77;
            }

            sub_1D621397C(v148, a2, v91);
            if (!v4)
            {

LABEL_77:
              v90 += 7;
              if (!--v89)
              {
                goto LABEL_89;
              }

              continue;
            }

            break;
          }

LABEL_215:

          goto LABEL_216;
        case 0xEuLL:

          v24 = v4;
          FormatVideoPlayerNodeStyle.bind(binder:context:)(a1, a2);
LABEL_4:
          v4 = v24;
          if (!v24)
          {
            goto LABEL_5;
          }

          goto LABEL_217;
        case 0xFuLL:
          swift_beginAccess();
          v33 = *(v28 + 48);
          sub_1D5C8C900(v209, &v198);

          sub_1D621D5F8(a1, a2, v33);
          if (v4)
          {
            goto LABEL_216;
          }

          v34 = *(v28 + 56);
          if (v34)
          {

            sub_1D620B270(a1, a2, v34);
            v35 = v22;
          }

          else
          {
            v35 = v22;
          }

          if ((~*(v28 + 64) & 0xF000000000000007) != 0)
          {
            *&v198 = *(v28 + 64);

            FormatColor.bind(binder:context:)(a1, a2);
          }

          if ((~*(v28 + 72) & 0xF000000000000007) != 0)
          {
            *&v198 = *(v28 + 72);

            FormatColor.bind(binder:context:)(a1, a2);
            sub_1D5C8C974(v209);
          }

          else
          {
            sub_1D5C8C974(v209);
          }

          goto LABEL_121;
        case 0x11uLL:
          swift_beginAccess();
          v61 = *(v28 + 48);
          sub_1D5C8C900(v209, &v198);

          sub_1D621D854(a1, a2, v61);
          if (v4)
          {
            goto LABEL_216;
          }

          v35 = v22;

          if ((~*(v28 + 56) & 0xF000000000000007) != 0)
          {
            *&v198 = *(v28 + 56);

            FormatColor.bind(binder:context:)(a1, a2);
          }

          if ((~*(v28 + 64) & 0xF000000000000007) != 0)
          {
            *&v198 = *(v28 + 64);

            FormatColor.bind(binder:context:)(a1, a2);
          }

          v62 = *(v28 + 80);
          v63 = v145;
          switch(v62)
          {
            case 0uLL:
              sub_1D5C8C974(v209);
              v104 = 0;
LABEL_118:
              sub_1D5D0A5AC(v104);
LABEL_119:
              v15 = v63;
              goto LABEL_6;
            case 1uLL:
              sub_1D5C8C974(v209);
              v104 = 1;
              goto LABEL_118;
            case 2uLL:
              sub_1D5C8C974(v209);
              goto LABEL_119;
          }

          v105 = a1;
          v107 = *(v62 + 16);
          v106 = *(v62 + 24);
          sub_1D5D0A59C(v62);
          sub_1D5D0A57C(v107);
          sub_1D5D0A57C(v106);
          sub_1D6248A90(v105, a2, v107, v106);
          sub_1D5C8C974(v209);
          sub_1D5D0A58C(v107);
          sub_1D5D0A58C(v106);
          sub_1D5D0A5AC(v62);
          a1 = v148;
LABEL_121:
          v22 = v35;
          v15 = v145;
          goto LABEL_6;
        default:
          swift_beginAccess();
          v29 = *(v28 + 48);
          sub_1D5C8C900(v209, &v198);

          sub_1D62180F8(a1, a2, v29);
          if (v4)
          {
            goto LABEL_216;
          }

          v30 = *(v28 + 56);
          if (v30)
          {

            sub_1D620B270(a1, a2, v30);
            v31 = a2;
            v32 = v22;
          }

          else
          {
            v31 = a2;
            v32 = v22;
          }

          if ((~*(v28 + 64) & 0xF000000000000007) != 0)
          {
            *&v198 = *(v28 + 64);

            FormatBackground.bind(binder:context:)(a1, v31);
          }

          v96 = v145;
          v22 = v32;
          v97 = *(v28 + 72);
          a2 = v31;
          if (v97)
          {
            sub_1D620E744(a1, v31, v97);
          }

          v15 = v96;
          v79 = *(v28 + 184);
          if (v79 == 254)
          {
            goto LABEL_5;
          }

          v84 = *(v28 + 120);
          v85 = *(v28 + 136);
          v86 = *(v28 + 152);
          v190[0] = v85;
          v190[1] = v86;
          v87 = *(v28 + 168);
          v191 = v87;
          v82 = *(v28 + 104);
          goto LABEL_103;
      }
    }
  }
}

uint64_t sub_1D62180F8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v30 = *(a3 + 16);
  if (!v30)
  {
    return result;
  }

  v5 = result;
  v6 = 0;
  v39 = a3 + 32;
  while (1)
  {
    v7 = (v39 + 160 * v6);
    v8 = v7[7];
    v37[3] = v7[6];
    v37[4] = v8;
    *v38 = v7[8];
    *&v38[9] = *(v7 + 137);
    v9 = v7[3];
    v36 = v7[2];
    v37[0] = v9;
    v10 = v7[5];
    v37[1] = v7[4];
    v37[2] = v10;
    v11 = v7[1];
    v34 = *v7;
    v35 = v11;
    v12 = v11;
    if ((~v11 & 0xF000000000000007) == 0)
    {
      sub_1D5D044D4(&v34, &v31);
      v13 = *(&v35 + 1);
      if (!*(&v35 + 1))
      {
        goto LABEL_10;
      }

LABEL_9:
      sub_1D620E744(v5, a2, v13);
      if (v3)
      {
        return sub_1D5D04BEC(&v34);
      }

      goto LABEL_10;
    }

    sub_1D5D044D4(&v34, &v31);
    sub_1D5D04BD4(v12);
    FormatBackground.bind(binder:context:)(v5, a2);
    if (v3)
    {
      goto LABEL_46;
    }

    v13 = *(&v35 + 1);
    if (*(&v35 + 1))
    {
      goto LABEL_9;
    }

LABEL_10:
    v14 = v38[8];
    if (v38[8] != 254)
    {
      sub_1D62B5354(v37 + 8, &v31, &qword_1EDF33718, &type metadata for FormatShadow);

      FormatColor.bind(binder:context:)(v5, a2);
      if (v3)
      {
        sub_1D5D0ABCC(v37 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
LABEL_46:

        return sub_1D5D04BEC(&v34);
      }

      if (v14 <= 2)
      {
        if (v14)
        {
          if (v14 == 1)
          {
            sub_1D5B49474(0, &qword_1EDF329A8);
            if (swift_dynamicCast())
            {
              v18 = *(&v32 + 1);
              v17 = v33;
              __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
              (*(v17 + 8))(v5, a2, v18, v17);
              __swift_destroy_boxed_opaque_existential_1(&v31);
            }

            else
            {
              v33 = 0;
              v31 = 0u;
              v32 = 0u;
              sub_1D5BFB774(&v31, &qword_1EDF329A0, &qword_1EDF329A8);
            }

            if (!swift_dynamicCast())
            {
LABEL_36:
              sub_1D5D0ABCC(v37 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
              v31 = 0u;
              v32 = 0u;
              v33 = 0;
              sub_1D5BFB774(&v31, &qword_1EDF329A0, &qword_1EDF329A8);
              goto LABEL_37;
            }

            goto LABEL_33;
          }

          goto LABEL_22;
        }
      }

      else
      {
        if (v14 <= 4)
        {
          if (v14 != 3)
          {
            sub_1D5B49474(0, &qword_1EDF329A8);
            if (swift_dynamicCast())
            {
              v15 = *(&v32 + 1);
              v16 = v33;
              __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
              (*(v16 + 8))(v5, a2, v15, v16);
              __swift_destroy_boxed_opaque_existential_1(&v31);
              goto LABEL_32;
            }

            goto LABEL_31;
          }

LABEL_22:
          sub_1D5B49474(0, &qword_1EDF329A8);
          if (swift_dynamicCast())
          {
            v19 = *(&v32 + 1);
            v20 = v33;
            __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
            (*(v20 + 8))(v5, a2, v19, v20);
            __swift_destroy_boxed_opaque_existential_1(&v31);
          }

          else
          {
            v33 = 0;
            v31 = 0u;
            v32 = 0u;
            sub_1D5BFB774(&v31, &qword_1EDF329A0, &qword_1EDF329A8);
          }

          if (swift_dynamicCast())
          {
            v21 = *(&v32 + 1);
            v22 = v33;
            __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
            (*(v22 + 8))(v5, a2, v21, v22);
            __swift_destroy_boxed_opaque_existential_1(&v31);
          }

          else
          {
            v33 = 0;
            v31 = 0u;
            v32 = 0u;
            sub_1D5BFB774(&v31, &qword_1EDF329A0, &qword_1EDF329A8);
          }

          if (swift_dynamicCast())
          {
            v23 = *(&v32 + 1);
            v24 = v33;
            __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
            (*(v24 + 8))(v5, a2, v23, v24);
            __swift_destroy_boxed_opaque_existential_1(&v31);
            goto LABEL_32;
          }

LABEL_31:
          v33 = 0;
          v31 = 0u;
          v32 = 0u;
          sub_1D5BFB774(&v31, &qword_1EDF329A0, &qword_1EDF329A8);
LABEL_32:
          if (!swift_dynamicCast())
          {
            goto LABEL_36;
          }

LABEL_33:
          v25 = *(&v32 + 1);
          v26 = v33;
          __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
          (*(v26 + 8))(v5, a2, v25, v26);
          sub_1D5D0ABCC(v37 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
          __swift_destroy_boxed_opaque_existential_1(&v31);
          goto LABEL_37;
        }

        if (v14 == 5)
        {
          goto LABEL_22;
        }
      }

      sub_1D5D0ABCC(v37 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
    }

LABEL_37:
    if (*&v38[16])
    {
      v27 = *(*&v38[16] + 16);
      if (v27)
      {
        break;
      }
    }

LABEL_3:
    result = sub_1D5D04BEC(&v34);
    if (++v6 == v30)
    {
      return result;
    }
  }

  v28 = (*&v38[16] + 40);
  while (1)
  {
    if ((*v28 & 1) == 0)
    {
      *&v31 = *(v28 - 1);
      v29 = v31;
      swift_retain_n();
      FormatFloat.bind(binder:context:)(v5, a2);
      sub_1D62B72BC(v29, 0);

      if (v3)
      {
        return sub_1D5D04BEC(&v34);
      }
    }

    v28 += 16;
    if (!--v27)
    {
      goto LABEL_3;
    }
  }
}

void sub_1D62188B8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v228 = &v205 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = type metadata accessor for FormatOption();
  v11 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225, v12);
  v212 = &v205 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v211 = &v205 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v219 = (&v205 - v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v214 = &v205 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v213 = &v205 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v229 = &v205 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v221 = &v205 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v220 = &v205 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v222 = (&v205 - v37);
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v216 = &v205 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v215 = &v205 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v218 = &v205 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v217 = &v205 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v224 = &v205 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v223 = &v205 - v55;
  v236 = type metadata accessor for FormatItemNodeAction();
  v56 = *(v236 - 8);
  MEMORY[0x1EEE9AC00](v236, v57);
  v232 = &v205 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54684(0, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  MEMORY[0x1EEE9AC00](v59 - 8, v60);
  v62 = &v205 - v61;
  v240 = type metadata accessor for FormatItemNodeStyle.Selector(0);
  MEMORY[0x1EEE9AC00](v240, v63);
  v66 = &v205 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *(a3 + 16);
  if (!v67)
  {
    return;
  }

  v68 = a3 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
  v235 = (v56 + 48);
  v209 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;
  v210 = (v11 + 56);
  v69 = *(v64 + 72);
  v233 = a1;
  v234 = v69;
  v238 = v67 - 1;
  v70 = qword_1EDF2AF80;
  v237 = a2;
  v230 = &v205 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    v239 = v68;
    sub_1D62B50EC(v68, v66, type metadata accessor for FormatItemNodeStyle.Selector);
    v258 = v66[80];
    v71 = *(v66 + 2);
    v257[0] = *(v66 + 1);
    v257[1] = v71;
    v72 = *(v66 + 4);
    v257[2] = *(v66 + 3);
    v257[3] = v72;
    v73 = *&v257[0];
    if ((v258 & 0xFE) != 0x7E && (*&v257[0] & 0xF000000000000007) != 0xF000000000000007)
    {
      v244 = *&v257[0];
      sub_1D62B5354(v257, &v241, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
      sub_1D5CFCFAC(v73);
      FormatColor.bind(binder:context:)(v233, v237);
      if (v4)
      {
        sub_1D5D0ABCC(v257, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);

        v177 = type metadata accessor for FormatItemNodeStyle.Selector;
        v178 = v66;
        goto LABEL_167;
      }

      sub_1D5D0ABCC(v257, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
    }

    v75 = *(v66 + 88);
    *(v243 + 9) = *(v66 + 129);
    v76 = *(v66 + 104);
    v241 = v75;
    v242 = v76;
    v243[0] = *(v66 + 120);
    if (BYTE8(v243[1]) > 1u)
    {
      goto LABEL_20;
    }

    v77 = v241;
    v78 = *&v243[1];
    if (BYTE8(v243[1]))
    {
      if ((v241 & 0xF000000000000007) == 0xD000000000000007)
      {
        goto LABEL_19;
      }

      if ((v241 & 0xF000000000000007) == 0xF000000000000007)
      {
        sub_1D5D0ABCC(&v241, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
LABEL_19:
        sub_1D5D0ABCC(&v241, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
LABEL_20:
        v90 = v236;
        v91 = v70;
        goto LABEL_29;
      }

      v92 = *(&v241 + 1);
      v256[0] = v241;
      v231 = v4;
      v93 = *(&v242 + 1);
      v226 = *(&v243[0] + 1);
      v94 = *&v243[0];
      v227 = v242;
      sub_1D62B5354(&v241, &v244, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
      sub_1D62B5354(&v241, &v244, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
      v95 = v77;
      v96 = v237;
      sub_1D62B54E4(v95, v92, v227, v93, v94, v226, v78, 1);
      v97 = v231;
      FormatFloat.bind(binder:context:)(v233, v96);
      v4 = v97;
      if (v97)
      {
        sub_1D5D0ABCC(&v241, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
        sub_1D5D0ABCC(&v241, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);

        v177 = type metadata accessor for FormatItemNodeStyle.Selector;
        v178 = v230;
        goto LABEL_167;
      }

      sub_1D5D0ABCC(&v241, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
      sub_1D5D0ABCC(&v241, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);

      v66 = v230;
      goto LABEL_28;
    }

    v79 = *&v243[1] & 0xF000000000000007;
    if ((*&v243[1] & 0xF000000000000007) == 0xD000000000000007)
    {
      goto LABEL_27;
    }

    if ((~v241 & 0xF000000000000007) != 0)
    {
      v256[0] = v241;
      sub_1D62B5354(&v241, &v244, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
      sub_1D62B5354(&v241, &v244, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
      sub_1D5CFCFAC(v77);
      FormatColor.bind(binder:context:)(v233, v237);
      if (v4)
      {
        goto LABEL_173;
      }

      v89 = v237;
    }

    else
    {
      v227 = v62;
      v80 = *(&v241 + 1);
      v81 = v242;
      v231 = v4;
      v82 = *(&v242 + 1);
      v83 = *(&v243[0] + 1);
      v84 = *&v243[0];
      sub_1D62B5354(&v241, &v244, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
      v85 = v81;
      v62 = v227;
      v86 = v82;
      v87 = v84;
      v66 = v230;
      v4 = v231;
      v88 = v83;
      v89 = v237;
      sub_1D62B54E4(v77, v80, v85, v86, v87, v88, v78, 0);
    }

    if (v79 == 0xF000000000000007)
    {
      sub_1D5D0ABCC(&v241, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
LABEL_27:
      sub_1D5D0ABCC(&v241, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
LABEL_28:
      v90 = v236;
      v91 = qword_1EDF2AF80;
      goto LABEL_29;
    }

    v244 = v78;

    FormatFloat.bind(binder:context:)(v233, v89);
    v91 = qword_1EDF2AF80;
    if (v4)
    {
LABEL_173:
      sub_1D5D0ABCC(&v241, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);

      sub_1D62B51D0(v66, type metadata accessor for FormatItemNodeStyle.Selector);
      sub_1D5D0ABCC(&v241, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
      return;
    }

    sub_1D5D0ABCC(&v241, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);

    sub_1D5D0ABCC(&v241, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
    v90 = v236;
LABEL_29:
    sub_1D5C00D70(&v66[*(v240 + 28)], v62, v91, type metadata accessor for FormatItemNodeAction);
    if ((*v235)(v62, 1, v90) == 1)
    {
      sub_1D5B6EF64(v62, v91, type metadata accessor for FormatItemNodeAction);
      goto LABEL_33;
    }

    sub_1D62B50EC(v62, v232, type metadata accessor for FormatItemNodeAction);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 2) >= 6)
    {
      break;
    }

LABEL_32:
    sub_1D62B51D0(v62, type metadata accessor for FormatItemNodeAction);
LABEL_33:
    v99 = &v66[*(v240 + 40)];
    v100 = *v99;
    v101 = v99[1];
    if (*v99 > 1)
    {
      if (v100 == 2 || v100 == 3)
      {
LABEL_38:
        v70 = v91;
        sub_1D62B51D0(v66, type metadata accessor for FormatItemNodeStyle.Selector);
        goto LABEL_39;
      }
    }

    else if (v100 < 2)
    {
      goto LABEL_38;
    }

    sub_1D62B5DD0(*v99);
    v102 = v233;
    v103 = v237;
    sub_1D620B270(v233, v237, v100);
    if (v4)
    {
      sub_1D62B51D0(v66, type metadata accessor for FormatItemNodeStyle.Selector);
      sub_1D62B5E14(v100);
      return;
    }

    sub_1D620B270(v102, v103, v101);
    v4 = 0;
    v70 = v91;
    sub_1D62B51D0(v66, type metadata accessor for FormatItemNodeStyle.Selector);
    sub_1D62B5E14(v100);
LABEL_39:
    if (!v238)
    {
      return;
    }

    --v238;
    v68 = v239 + v234;
  }

  if (EnumCaseMultiPayload)
  {
    v111 = v228;
    sub_1D5D5E33C(v232, v228, type metadata accessor for FormatCommandOpenURL);
    sub_1D5F86DA0(v237);
    if (v4)
    {
      sub_1D62B51D0(v111, type metadata accessor for FormatCommandOpenURL);
      sub_1D62B51D0(v66, type metadata accessor for FormatItemNodeStyle.Selector);
      goto LABEL_172;
    }

    sub_1D62B51D0(v111, type metadata accessor for FormatCommandOpenURL);
    goto LABEL_32;
  }

  sub_1D62B5F18(v232, v256);
  sub_1D62B5F18(v256, &v244);
  v104 = v244;
  v105 = v245;
  v106 = v246;
  v107 = v248;
  if (v249)
  {
    v108 = 8;
  }

  else
  {
    v108 = 0;
  }

  v109 = v108 & 0xFFFFFFF8 | (v248 >> 11) & 7;
  v110 = v229;
  if (v109 <= 4)
  {
    if (v109 > 1)
    {
      if (v109 != 3)
      {
        goto LABEL_101;
      }

LABEL_81:
      if (v246 != 1 || (~v244 & 0xF000000000000007) == 0)
      {
        goto LABEL_101;
      }

      *&v250 = v244;

      FormatTextContent.bind(binder:context:)(v233, v237);
      if (v4)
      {
LABEL_175:

        goto LABEL_179;
      }

LABEL_84:

LABEL_101:
      sub_1D62B5F74(v256);
      goto LABEL_32;
    }

    if (v109)
    {
      goto LABEL_101;
    }

    v112 = (v247 >> 3) & 7;
    if (v112 <= 1)
    {
      if (!v112)
      {
        goto LABEL_81;
      }

      goto LABEL_101;
    }

    if (v112 == 2 || v112 == 3 || !(v247 >> 6) || v247 >> 6 == 1)
    {
      goto LABEL_81;
    }

    v113 = v247 & 7;
    if (v113 > 1)
    {
      goto LABEL_101;
    }

LABEL_70:
    if (!v113 || (~v245 & 0xF000000000000007) == 0)
    {
      goto LABEL_101;
    }

    *&v250 = v245;

    FormatTextContent.bind(binder:context:)(v233, v237);
    if (v4)
    {
      goto LABEL_175;
    }

    goto LABEL_84;
  }

  if (v109 <= 6)
  {
    if (v109 == 5)
    {
      goto LABEL_101;
    }

    if (!(v247 >> 6) || v247 >> 6 == 1)
    {
      goto LABEL_81;
    }

    v113 = v247 & 0x3F;
    if (v113 > 1)
    {
      goto LABEL_101;
    }

    goto LABEL_70;
  }

  if (v109 != 7 || !(v248 >> 14))
  {
    goto LABEL_101;
  }

  if (v248 >> 14 == 1)
  {
    v253 = v244;
    v254 = v245;
    v255 = v246;
    v259 = 5;
    sub_1D62B7EFC(v256, &v250);
    v227 = sub_1D703E0C8(&v253, &v259);
    if (v4)
    {
      goto LABEL_179;
    }

    v231 = v104;
    v114 = *(v237 + v209);
    v115 = *(v114 + 16);
    swift_beginAccess();
    if (*(*(v115 + 16) + 16))
    {
      sub_1D5B69D90(v231, v105);
      if (v116)
      {
        swift_endAccess();
        v117 = v221;
        sub_1D5D25108(v221);
        v118 = v117;
        v119 = v220;
        sub_1D5D5E33C(v118, v220, type metadata accessor for FormatOption);
        v120 = v224;
        sub_1D5D5E33C(v119, v224, type metadata accessor for FormatOption);
        goto LABEL_95;
      }
    }

    swift_endAccess();
    swift_beginAccess();
    if (*(*(v114 + 24) + 16))
    {
      sub_1D5B69D90(v231, v105);
      if (v132)
      {
        swift_endAccess();
        v120 = v224;
        sub_1D5D25108(v224);
LABEL_95:
        v231 = *v210;
        (v231)(v120, 0, 1, v225);
        v133 = v222;
        sub_1D5D5E33C(v120, v222, type metadata accessor for FormatOption);
        *&v250 = v133[2];
        v134 = v227;

        FormatOptionValue.type.getter(&v253);
        v135 = v134;
        if (sub_1D6183C84(v253, v134))
        {
          swift_bridgeObjectRelease_n();
          v136 = v133;
          v137 = v223;
          sub_1D5D5E33C(v136, v223, type metadata accessor for FormatOption);
          (v231)(v137, 0, 1, v225);
          goto LABEL_99;
        }

        v240 = type metadata accessor for FormatDerivedDataError();
        sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
        swift_allocError();
        v180 = v179;
        v181 = *v133;
        v182 = v133[1];
        v183 = v133;
        *&v250 = v133[2];

        FormatOptionValue.type.getter(&v253);
        v184 = v253;
        *v180 = v181;
        *(v180 + 8) = v182;
        *(v180 + 16) = v184;
        *(v180 + 24) = v135;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
LABEL_177:

        sub_1D62B51D0(v230, type metadata accessor for FormatItemNodeStyle.Selector);
        v185 = type metadata accessor for FormatOption;
        v186 = v183;
        goto LABEL_180;
      }
    }

    swift_endAccess();
    v138 = v225;
    v139 = *v210;
    (*v210)(v224, 1, 1, v225);

    sub_1D5B6EF64(v224, &qword_1EDF337F0, type metadata accessor for FormatOption);
    if ((*(v237 + 48) & 1) == 0)
    {
      type metadata accessor for FormatLayoutError();
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      *v187 = v231;
      v187[1] = v105;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      goto LABEL_179;
    }

    v137 = v223;
    (v139)(v223, 1, 1, v138);
LABEL_99:
    v140 = v137;
LABEL_100:
    sub_1D5B6EF64(v140, &qword_1EDF337F0, type metadata accessor for FormatOption);
    goto LABEL_101;
  }

  v121 = (v248 >> 7) & 0xE | (v248 >> 3) & 1;
  v122 = 1 << ((v248 >> 7) & 0xE | ((v248 & 8) != 0));
  if ((v122 & 0x6FE0) != 0)
  {
LABEL_87:
    switch(v121)
    {
      case 0u:
      case 1u:
      case 5u:
      case 6u:
      case 7u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xDu:
      case 0xEu:
        goto LABEL_101;
      case 2u:
        v166 = v107 >> 4;
        goto LABEL_142;
      case 3u:
      case 4u:
        v231 = v104;
        v253 = v104;
        v254 = v105;
        v255 = v106;
        v259 = 5;
        v123 = v106;
        sub_1D62B7EFC(v256, &v250);

        v227 = v123;

        v208 = sub_1D703E0C8(&v253, &v259);
        if (v4)
        {
          goto LABEL_182;
        }

        v124 = *(v237 + v209);
        v125 = *(v124 + 16);
        swift_beginAccess();
        v126 = v219;
        if (*(*(v125 + 16) + 16))
        {
          sub_1D5B69D90(v231, v105);
          if (v127)
          {
            swift_endAccess();
            v128 = v212;
            sub_1D5D25108(v212);
            v129 = v128;
            v130 = v211;
            sub_1D5D5E33C(v129, v211, type metadata accessor for FormatOption);
            v131 = v216;
            sub_1D5D5E33C(v130, v216, type metadata accessor for FormatOption);
LABEL_115:
            v231 = *v210;
            (v231)(v131, 0, 1, v225);
            sub_1D5D5E33C(v131, v126, type metadata accessor for FormatOption);
            *&v250 = v126[2];
            v159 = v208;

            FormatOptionValue.type.getter(&v253);
            v160 = v159;
            if ((sub_1D6183C84(v253, v159) & 1) == 0)
            {
              v240 = type metadata accessor for FormatDerivedDataError();
              sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
              swift_allocError();
              v196 = v195;
              v226 = v105;
              v197 = v219;
              v198 = *v219;
              v199 = v219[1];
              *&v250 = v219[2];

              FormatOptionValue.type.getter(&v253);
              v200 = v253;
              *v196 = v198;
              *(v196 + 8) = v199;
              *(v196 + 16) = v200;
              *(v196 + 24) = v160;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();

              sub_1D62B51D0(v230, type metadata accessor for FormatItemNodeStyle.Selector);
              v185 = type metadata accessor for FormatOption;
              v186 = v197;
              goto LABEL_180;
            }

            swift_bridgeObjectRelease_n();
            v161 = v215;
            sub_1D5D5E33C(v219, v215, type metadata accessor for FormatOption);
            (v231)(v161, 0, 1, v225);
            goto LABEL_145;
          }
        }

        swift_endAccess();
        swift_beginAccess();
        if (*(*(v124 + 24) + 16))
        {
          sub_1D5B69D90(v231, v105);
          if (v158)
          {
            swift_endAccess();
            v131 = v216;
            sub_1D5D25108(v216);
            goto LABEL_115;
          }
        }

        swift_endAccess();
        v171 = v216;
        v207 = *v210;
        (v207)(v216, 1, 1, v225);

        sub_1D5B6EF64(v171, &qword_1EDF337F0, type metadata accessor for FormatOption);
        if (*(v237 + 48))
        {

          v161 = v215;
          (v207)(v215, 1, 1, v225);
LABEL_145:
          v140 = v161;
          goto LABEL_100;
        }

        type metadata accessor for FormatLayoutError();
        sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
        swift_allocError();
        *v201 = v231;
        v201[1] = v105;
        break;
      case 0xCu:
        v162 = v105;
        goto LABEL_134;
      default:
        goto LABEL_123;
    }

LABEL_187:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_179;
  }

  if ((v122 & 0x18) != 0)
  {
    v207 = ((v248 >> 7) & 0xE | (v248 >> 3) & 1u);
    v231 = v244;
    v253 = v244;
    v254 = v245;
    v255 = v246;
    v259 = 5;
    v141 = v246;
    sub_1D62B7EFC(v256, &v250);

    v227 = v141;

    v208 = sub_1D703E0C8(&v253, &v259);
    if (v4)
    {
LABEL_182:
      sub_1D62B51D0(v66, type metadata accessor for FormatItemNodeStyle.Selector);

      goto LABEL_181;
    }

    v142 = *(v237 + v209);
    v143 = *(v142 + 16);
    swift_beginAccess();
    v144 = *(*(v143 + 16) + 16);
    v145 = v218;
    v226 = v105;
    if (v144)
    {
      sub_1D5B69D90(v231, v105);
      if (v146)
      {
        swift_endAccess();
        v147 = v214;
        sub_1D5D25108(v214);
        v148 = v147;
        v149 = v213;
        sub_1D5D5E33C(v148, v213, type metadata accessor for FormatOption);
        sub_1D5D5E33C(v149, v145, type metadata accessor for FormatOption);
        goto LABEL_110;
      }
    }

    swift_endAccess();
    swift_beginAccess();
    if (*(*(v142 + 24) + 16) && (sub_1D5B69D90(v231, v105), (v150 & 1) != 0))
    {
      swift_endAccess();
      sub_1D5D25108(v145);
LABEL_110:
      v151 = v145;
      v152 = v145;
      v153 = v225;
      v206 = *v210;
      (v206)(v151, 0, 1, v225);
      sub_1D5D5E33C(v152, v110, type metadata accessor for FormatOption);
      *&v250 = v110[2];
      v154 = v208;

      FormatOptionValue.type.getter(&v253);
      v155 = v154;
      if ((sub_1D6183C84(v253, v154) & 1) == 0)
      {
        v240 = type metadata accessor for FormatDerivedDataError();
        sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
        swift_allocError();
        v189 = v188;
        v183 = v110;
        v190 = *v110;
        v191 = v110[1];
        *&v250 = v183[2];

        FormatOptionValue.type.getter(&v253);
        v192 = v253;
        *v189 = v190;
        *(v189 + 8) = v191;
        *(v189 + 16) = v192;
        *(v189 + 24) = v155;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        goto LABEL_177;
      }

      swift_bridgeObjectRelease_n();
      v156 = v110;
      v157 = v217;
      sub_1D5D5E33C(v156, v217, type metadata accessor for FormatOption);
      (v206)(v157, 0, 1, v153);
      v66 = v230;
    }

    else
    {
      swift_endAccess();
      v168 = *v210;
      (*v210)(v145, 1, 1, v225);

      sub_1D5B6EF64(v145, &qword_1EDF337F0, type metadata accessor for FormatOption);
      v66 = v230;
      if ((*(v237 + 48) & 1) == 0)
      {
        type metadata accessor for FormatLayoutError();
        sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
        swift_allocError();
        v193 = v226;
        *v194 = v231;
        v194[1] = v193;
        goto LABEL_187;
      }

      v157 = v217;
      v168();
    }

    v104 = v231;
    sub_1D5B6EF64(v157, &qword_1EDF337F0, type metadata accessor for FormatOption);
    v91 = qword_1EDF2AF80;
    v105 = v226;
    v106 = v227;
    v121 = v207;
    goto LABEL_87;
  }

  if (v121 == 12)
  {
    v162 = v245;
    if ((v245 & 0x80) != 0)
    {
      LOBYTE(v253) = v245 & 0x3F;
      sub_1D5B49474(0, &qword_1EDF329A8);
      if (swift_dynamicCast())
      {
        v105 = v66;
        v163 = *(&v251 + 1);
        v164 = v252;
        __swift_project_boxed_opaque_existential_1(&v250, *(&v251 + 1));
        (*(v164 + 8))(v233, v237, v163, v164);
        if (v4)
        {
          goto LABEL_188;
        }

        __swift_destroy_boxed_opaque_existential_1(&v250);
        v66 = v105;
        v91 = qword_1EDF2AF80;
        v165 = v162 >> 6;
        if (!(v162 >> 6))
        {
          goto LABEL_101;
        }
      }

      else
      {
        v252 = 0;
        v250 = 0u;
        v251 = 0u;
        sub_1D5BFB774(&v250, &qword_1EDF329A0, &qword_1EDF329A8);
        v165 = v105 >> 6;
        if (!(v105 >> 6))
        {
          goto LABEL_101;
        }
      }
    }

    else
    {
LABEL_134:
      v165 = v162 >> 6;
      if (!(v162 >> 6))
      {
        goto LABEL_101;
      }
    }

    if (v165 != 1)
    {
      LOBYTE(v253) = v162 & 0x3F;
      sub_1D5B49474(0, &qword_1EDF329A8);
      if (swift_dynamicCast())
      {
        v105 = v66;
        goto LABEL_138;
      }

      v252 = 0;
      v250 = 0u;
      v251 = 0u;
      sub_1D5BFB774(&v250, &qword_1EDF329A0, &qword_1EDF329A8);
    }

    goto LABEL_101;
  }

LABEL_123:
  if (v121 < 2)
  {
    goto LABEL_87;
  }

  v166 = v107 >> 4;
  if (((1 << v166) & 0x1EF7) != 0)
  {
LABEL_142:
    switch(v166)
    {
      case 3:
        goto LABEL_154;
      case 8:
        goto LABEL_162;
      default:
        goto LABEL_101;
    }
  }

  if (v166 == 3)
  {
    v167 = v106;
    if (BYTE1(v106) >= 4u || v106 > 0xFDu)
    {
      goto LABEL_153;
    }

    v253 = v104;
    v254 = v105;
    LOBYTE(v255) = v106;
    sub_1D62B7EFC(v256, &v250);
    sub_1D62B40EC(v237);
    if (!v4)
    {
      sub_1D5E1E15C(v253, v254, v255);
LABEL_153:
      LOWORD(v106) = v167;
LABEL_154:
      if (BYTE1(v106) < 4u && v106 <= 0xFDu)
      {
        *&v250 = v104;
        *(&v250 + 1) = v105;
        LOBYTE(v251) = v106;
        sub_1D5E1DCBC(v104, v105, v106);
        sub_1D62B40EC(v237);
        if (v4)
        {
          v203 = *(&v250 + 1);
          v202 = v250;
          v204 = v251;
          goto LABEL_191;
        }

        sub_1D5E1E15C(v250, *(&v250 + 1), v251);
      }

      sub_1D62B5F74(v256);
LABEL_159:
      v91 = qword_1EDF2AF80;
      goto LABEL_32;
    }

    v202 = v253;
    v203 = v254;
    v204 = v255;
LABEL_191:
    sub_1D5E1E15C(v202, v203, v204);
LABEL_179:
    v185 = type metadata accessor for FormatItemNodeStyle.Selector;
    v186 = v66;
LABEL_180:
    sub_1D62B51D0(v186, v185);
    goto LABEL_181;
  }

  if ((v105 & 0x80) == 0)
  {
    goto LABEL_162;
  }

  v172 = v105;
  v105 = v66;
  v173 = v172;
  LOBYTE(v253) = v172 & 0x3F;
  sub_1D5B49474(0, &qword_1EDF329A8);
  if (!swift_dynamicCast())
  {
    v252 = 0;
    v250 = 0u;
    v251 = 0u;
    sub_1D5BFB774(&v250, &qword_1EDF329A0, &qword_1EDF329A8);
LABEL_161:
    v66 = v105;
    v91 = qword_1EDF2AF80;
    LOBYTE(v105) = v173;
LABEL_162:
    if (v105 >> 6 && v105 >> 6 != 1)
    {
      v176 = v105;
      v105 = v66;
      LOBYTE(v253) = v176 & 0x3F;
      sub_1D5B49474(0, &qword_1EDF329A8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v252 = 0;
        v250 = 0u;
        v251 = 0u;
        sub_1D5BFB774(&v250, &qword_1EDF329A0, &qword_1EDF329A8);
LABEL_140:
        sub_1D62B5F74(v256);
        v66 = v105;
        goto LABEL_159;
      }

LABEL_138:
      v169 = *(&v251 + 1);
      v170 = v252;
      __swift_project_boxed_opaque_existential_1(&v250, *(&v251 + 1));
      (*(v170 + 8))(v233, v237, v169, v170);
      if (v4)
      {
        goto LABEL_188;
      }

      __swift_destroy_boxed_opaque_existential_1(&v250);
      goto LABEL_140;
    }

    goto LABEL_101;
  }

  v174 = *(&v251 + 1);
  v175 = v252;
  __swift_project_boxed_opaque_existential_1(&v250, *(&v251 + 1));
  (*(v175 + 8))(v233, v237, v174, v175);
  if (!v4)
  {
    __swift_destroy_boxed_opaque_existential_1(&v250);
    goto LABEL_161;
  }

LABEL_188:
  sub_1D62B51D0(v105, type metadata accessor for FormatItemNodeStyle.Selector);
  __swift_destroy_boxed_opaque_existential_1(&v250);
LABEL_181:
  sub_1D62B5F74(v256);
LABEL_172:
  v177 = type metadata accessor for FormatItemNodeAction;
  v178 = v62;
LABEL_167:
  sub_1D62B51D0(v178, v177);
}

uint64_t sub_1D621A990(uint64_t result, uint64_t a2, void *a3)
{
  v4 = a3[2];
  if (v4)
  {
    v6 = result;
    v7 = v4 - 1;
    v9 = a3 + 11;
    v8 = a3[7];
    if (!v8)
    {
      goto LABEL_4;
    }

LABEL_3:

    sub_1D6213004(v6, a2, v8);

    if (!v3)
    {
LABEL_4:
      while (v7)
      {
        --v7;
        v10 = *v9;
        v9 += 4;
        v8 = v10;
        if (v10)
        {
          goto LABEL_3;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D621AA44(uint64_t result, uint64_t a2, uint64_t a3)
{
  v43 = result;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return result;
  }

  v5 = 0;
  v6 = a3 + 32;
  v41 = a3 + 32;
  v42 = *(a3 + 16);
  while (1)
  {
    v7 = v6 + 40 * v5;
    v8 = *(v7 + 32) | (*(v7 + 34) << 16);
    v9 = WORD1(v8);
    if (*(v7 + 34) == 255 || v9 == 0)
    {
      goto LABEL_6;
    }

    v11 = *(v7 + 24);
    if (v9 != 1)
    {
      break;
    }

    if ((*(v7 + 32) & 0x100) == 0)
    {
      v12 = *(v11 + 16);

      sub_1D62B7DCC(v11, v8);
      sub_1D62B7DCC(v11, v8);
      if (v12)
      {
        v13 = (v11 + 40);
        while (1)
        {
          if ((*v13 & 1) == 0)
          {
            v14 = *(v13 - 1);
            swift_retain_n();
            FormatFloat.bind(binder:context:)(v43, a2);
            sub_1D62B72BC(v14, 0);
            if (v3)
            {

              goto LABEL_119;
            }
          }

          v13 += 16;
          if (!--v12)
          {
            goto LABEL_113;
          }
        }
      }

      goto LABEL_113;
    }

    v18 = *(v7 + 32);
    if (v8 <= 1u)
    {
      if (!v18)
      {
        if (!v11)
        {
          goto LABEL_71;
        }

        if (v11 == 1)
        {
          goto LABEL_70;
        }

        v25 = *(v11 + 16);
        sub_1D62B7DCC(v11, v8);

        sub_1D62B7DCC(v11, v8);
        sub_1D62B7DCC(v11, v8);
        if (v25)
        {
          v26 = (v11 + 40);
          while (1)
          {
            if ((*v26 & 1) == 0)
            {
              v27 = *(v26 - 1);
              swift_retain_n();
              FormatFloat.bind(binder:context:)(v43, a2);
              sub_1D62B72BC(v27, 0);

              if (v3)
              {
                goto LABEL_118;
              }
            }

            v26 += 16;
            if (!--v25)
            {
              goto LABEL_112;
            }
          }
        }

        goto LABEL_112;
      }

      if (!v11)
      {
LABEL_71:

        sub_1D62B7DCC(0, v8);
        sub_1D62B6F70(0, v8);
        v31 = 0;
LABEL_72:
        sub_1D62B6F70(v31, v8);
LABEL_97:

        goto LABEL_5;
      }

      if (v11 == 1)
      {
        goto LABEL_70;
      }

      v37 = *(v11 + 16);
      sub_1D62B7DCC(v11, v8);

      sub_1D62B7DCC(v11, v8);
      sub_1D62B7DCC(v11, v8);
      if (v37)
      {
        v38 = (v11 + 40);
        do
        {
          if ((*v38 & 1) == 0)
          {
            v21 = *(v38 - 1);
            swift_retain_n();
            FormatFloat.bind(binder:context:)(v43, a2);
            if (v3)
            {
LABEL_116:
              sub_1D62B72BC(v21, 0);

              goto LABEL_118;
            }

            sub_1D62B72BC(v21, 0);
          }

          v38 += 16;
          --v37;
        }

        while (v37);
      }
    }

    else
    {
      if (v18 != 2)
      {
        if (v18 != 3)
        {
          goto LABEL_5;
        }

        if (!v11)
        {
          goto LABEL_71;
        }

        if (v11 == 1)
        {
          goto LABEL_70;
        }

        v19 = *(v11 + 16);
        sub_1D62B7DCC(v11, v8);

        sub_1D62B7DCC(v11, v8);
        sub_1D62B7DCC(v11, v8);
        if (v19)
        {
          v20 = (v11 + 40);
          while (1)
          {
            if ((*v20 & 1) == 0)
            {
              v21 = *(v20 - 1);
              swift_retain_n();
              FormatFloat.bind(binder:context:)(v43, a2);
              if (v3)
              {
                goto LABEL_116;
              }

              sub_1D62B72BC(v21, 0);
            }

            v20 += 16;
            if (!--v19)
            {
              goto LABEL_112;
            }
          }
        }

        goto LABEL_112;
      }

      if (!v11)
      {
        goto LABEL_71;
      }

      if (v11 == 1)
      {
LABEL_70:

        sub_1D62B7DCC(1, v8);
        sub_1D62B6F70(1, v8);
        v31 = 1;
        goto LABEL_72;
      }

      v29 = *(v11 + 16);
      sub_1D62B7DCC(v11, v8);

      sub_1D62B7DCC(v11, v8);
      sub_1D62B7DCC(v11, v8);
      if (v29)
      {
        v30 = (v11 + 40);
        do
        {
          if ((*v30 & 1) == 0)
          {
            v21 = *(v30 - 1);
            swift_retain_n();
            FormatFloat.bind(binder:context:)(v43, a2);
            if (v3)
            {
              goto LABEL_116;
            }

            sub_1D62B72BC(v21, 0);
          }

          v30 += 16;
          --v29;
        }

        while (v29);
      }
    }

LABEL_112:
    sub_1D62B6F70(v11, v8);
LABEL_113:

LABEL_4:
    sub_1D62B6F70(v11, v8);
    v6 = v41;
    v4 = v42;
LABEL_5:
    result = sub_1D62B6F70(v11, v8);
LABEL_6:
    if (++v5 == v4)
    {
      return result;
    }
  }

  if (HIBYTE(*(v7 + 32)) == 255)
  {
    goto LABEL_5;
  }

  if ((*(v7 + 32) & 0x100) == 0)
  {
    v15 = *(v11 + 16);
    sub_1D62B7DCC(v11, v8);

    sub_1D62B7DCC(v11, v8);
    sub_1D62B7DCC(v11, v8);
    if (v15)
    {
      v16 = (v11 + 40);
      do
      {
        if ((*v16 & 1) == 0)
        {
          v17 = *(v16 - 1);
          swift_retain_n();
          FormatFloat.bind(binder:context:)(v43, a2);
          if (v3)
          {
            sub_1D62B72BC(v17, 0);

            sub_1D62B6F70(v11, v8);
            goto LABEL_119;
          }

          sub_1D62B72BC(v17, 0);
        }

        v16 += 16;
        --v15;
      }

      while (v15);
    }

    sub_1D62B6F70(v11, v8);
    goto LABEL_4;
  }

  v22 = *(v7 + 32);
  if (v8 > 1u)
  {
    if (v22 != 2)
    {
      if (v22 != 3)
      {
        sub_1D62B6F70(v11, v8);
        goto LABEL_5;
      }

      if (!v11)
      {
        goto LABEL_95;
      }

      if (v11 == 1)
      {
        goto LABEL_94;
      }

      v23 = *(v11 + 16);
      sub_1D62B7DCC(v11, v8);
      sub_1D62B7DCC(v11, v8);

      sub_1D62B7DCC(v11, v8);
      sub_1D62B7DCC(v11, v8);
      if (v23)
      {
        v24 = (v11 + 40);
        while (1)
        {
          if ((*v24 & 1) == 0)
          {
            v28 = *(v24 - 1);
            swift_retain_n();
            FormatFloat.bind(binder:context:)(v43, a2);
            if (v3)
            {
              goto LABEL_117;
            }

            sub_1D62B72BC(v28, 0);
          }

          v24 += 16;
          if (!--v23)
          {
            goto LABEL_111;
          }
        }
      }

      goto LABEL_111;
    }

    if (!v11)
    {
      goto LABEL_95;
    }

    if (v11 != 1)
    {
      v34 = *(v11 + 16);
      sub_1D62B7DCC(v11, v8);
      sub_1D62B7DCC(v11, v8);

      sub_1D62B7DCC(v11, v8);
      sub_1D62B7DCC(v11, v8);
      if (v34)
      {
        v35 = (v11 + 40);
        do
        {
          if ((*v35 & 1) == 0)
          {
            v28 = *(v35 - 1);
            swift_retain_n();
            FormatFloat.bind(binder:context:)(v43, a2);
            if (v3)
            {
              goto LABEL_117;
            }

            sub_1D62B72BC(v28, 0);
          }

          v35 += 16;
          --v34;
        }

        while (v34);
      }

LABEL_111:
      sub_1D62B6F70(v11, v8);
      goto LABEL_112;
    }

LABEL_94:

    sub_1D62B7DCC(1, v8);
    sub_1D62B6F70(1, v8);
    sub_1D62B6F70(1, v8);
    v36 = 1;
LABEL_96:
    sub_1D610CA74(v36, v8, 2, sub_1D60CF6A8, sub_1D60CF6DC);
    goto LABEL_97;
  }

  if (!v22)
  {
    if (!v11)
    {
      goto LABEL_95;
    }

    if (v11 == 1)
    {
      goto LABEL_94;
    }

    v32 = *(v11 + 16);
    sub_1D62B7DCC(v11, v8);
    sub_1D62B7DCC(v11, v8);

    sub_1D62B7DCC(v11, v8);
    sub_1D62B7DCC(v11, v8);
    if (v32)
    {
      v33 = (v11 + 40);
      while (1)
      {
        if ((*v33 & 1) == 0)
        {
          v28 = *(v33 - 1);
          swift_retain_n();
          FormatFloat.bind(binder:context:)(v43, a2);
          if (v3)
          {
            goto LABEL_117;
          }

          sub_1D62B72BC(v28, 0);
        }

        v33 += 16;
        if (!--v32)
        {
          goto LABEL_111;
        }
      }
    }

    goto LABEL_111;
  }

  if (!v11)
  {
LABEL_95:

    sub_1D62B7DCC(0, v8);
    sub_1D62B6F70(0, v8);
    sub_1D62B6F70(0, v8);
    v36 = 0;
    goto LABEL_96;
  }

  if (v11 == 1)
  {
    goto LABEL_94;
  }

  v39 = *(v11 + 16);
  sub_1D62B7DCC(v11, v8);
  sub_1D62B7DCC(v11, v8);

  sub_1D62B7DCC(v11, v8);
  sub_1D62B7DCC(v11, v8);
  if (!v39)
  {
    goto LABEL_111;
  }

  v40 = (v11 + 40);
  while (1)
  {
    if (*v40)
    {
      goto LABEL_107;
    }

    v28 = *(v40 - 1);
    swift_retain_n();
    FormatFloat.bind(binder:context:)(v43, a2);
    if (v3)
    {
      break;
    }

    sub_1D62B72BC(v28, 0);

LABEL_107:
    v40 += 16;
    if (!--v39)
    {
      goto LABEL_111;
    }
  }

LABEL_117:
  sub_1D62B72BC(v28, 0);

  sub_1D62B6F70(v11, v8);
LABEL_118:
  sub_1D62B6F70(v11, v8);

LABEL_119:
  sub_1D62B6F70(v11, v8);
  return sub_1D62B6F70(v11, v8);
}

uint64_t sub_1D621B440(uint64_t result, uint64_t a2, uint64_t a3)
{
  v31 = *(a3 + 16);
  if (v31)
  {
    v5 = result;
    v6 = 0;
    v40 = a3 + 32;
    while (1)
    {
      v7 = (v40 + 144 * v6);
      v8 = v7[7];
      v38[3] = v7[6];
      *v39 = v8;
      *&v39[10] = *(v7 + 122);
      v9 = v7[3];
      v37 = v7[2];
      v38[0] = v9;
      v10 = v7[5];
      v38[1] = v7[4];
      v38[2] = v10;
      v11 = v7[1];
      v35 = *v7;
      v36 = v11;
      v12 = v11;
      if (v11)
      {
        v13 = *(v36 + 16);
        sub_1D62B7998(&v35, &v32);
        if (v13)
        {
          v14 = (v12 + 40);
          do
          {
            if ((*v14 & 1) == 0)
            {
              *&v32 = *(v14 - 1);
              v15 = v32;
              swift_retain_n();
              FormatFloat.bind(binder:context:)(v5, a2);
              if (v3)
              {
                sub_1D62B72BC(v15, 0);
                goto LABEL_46;
              }

              sub_1D62B72BC(v15, 0);
            }

            v14 += 16;
            --v13;
          }

          while (v13);
        }
      }

      else
      {
        sub_1D62B7998(&v35, &v32);
      }

      if (*(&v36 + 1))
      {
        sub_1D620E744(v5, a2, *(&v36 + 1));
        if (v3)
        {
          return sub_1D62B79F4(&v35);
        }
      }

      v16 = v39[24];
      if (v39[24] == 254)
      {
        goto LABEL_41;
      }

      sub_1D62B5354(v38 + 8, &v32, &qword_1EDF33718, &type metadata for FormatShadow);

      FormatColor.bind(binder:context:)(v5, a2);
      if (v3)
      {
        sub_1D5D0ABCC(v38 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
LABEL_46:

        return sub_1D62B79F4(&v35);
      }

      if (v16 > 2)
      {
        break;
      }

      if (!v16)
      {
        goto LABEL_27;
      }

      if (v16 != 1)
      {
        goto LABEL_25;
      }

      sub_1D5B49474(0, &qword_1EDF329A8);
      if (swift_dynamicCast())
      {
        v20 = *(&v33 + 1);
        v19 = v34;
        __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
        (*(v19 + 8))(v5, a2, v20, v19);
        __swift_destroy_boxed_opaque_existential_1(&v32);
      }

      else
      {
        v34 = 0;
        v32 = 0u;
        v33 = 0u;
        sub_1D5BFB774(&v32, &qword_1EDF329A0, &qword_1EDF329A8);
      }

      if (!swift_dynamicCast())
      {
        goto LABEL_40;
      }

      v29 = *(&v33 + 1);
      v30 = v34;
      __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      (*(v30 + 8))(v5, a2, v29, v30);
      sub_1D5D0ABCC(v38 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
      __swift_destroy_boxed_opaque_existential_1(&v32);
      result = sub_1D62B79F4(&v35);
LABEL_42:
      if (++v6 == v31)
      {
        return result;
      }
    }

    if (v16 > 4)
    {
      if (v16 != 5)
      {
LABEL_27:
        sub_1D5D0ABCC(v38 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
        goto LABEL_41;
      }
    }

    else if (v16 != 3)
    {
      sub_1D5B49474(0, &qword_1EDF329A8);
      if (swift_dynamicCast())
      {
        v17 = *(&v33 + 1);
        v18 = v34;
        __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
        (*(v18 + 8))(v5, a2, v17, v18);
        __swift_destroy_boxed_opaque_existential_1(&v32);
        goto LABEL_35;
      }

      goto LABEL_34;
    }

LABEL_25:
    sub_1D5B49474(0, &qword_1EDF329A8);
    if (swift_dynamicCast())
    {
      v21 = *(&v33 + 1);
      v22 = v34;
      __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      (*(v22 + 8))(v5, a2, v21, v22);
      __swift_destroy_boxed_opaque_existential_1(&v32);
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      sub_1D5BFB774(&v32, &qword_1EDF329A0, &qword_1EDF329A8);
    }

    if (swift_dynamicCast())
    {
      v23 = *(&v33 + 1);
      v24 = v34;
      __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      (*(v24 + 8))(v5, a2, v23, v24);
      __swift_destroy_boxed_opaque_existential_1(&v32);
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      sub_1D5BFB774(&v32, &qword_1EDF329A0, &qword_1EDF329A8);
    }

    if (swift_dynamicCast())
    {
      v25 = *(&v33 + 1);
      v26 = v34;
      __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      (*(v26 + 8))(v5, a2, v25, v26);
      __swift_destroy_boxed_opaque_existential_1(&v32);
      goto LABEL_35;
    }

LABEL_34:
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    sub_1D5BFB774(&v32, &qword_1EDF329A0, &qword_1EDF329A8);
LABEL_35:
    if (swift_dynamicCast())
    {
      v27 = *(&v33 + 1);
      v28 = v34;
      __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      (*(v28 + 8))(v5, a2, v27, v28);
      sub_1D5D0ABCC(v38 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
      __swift_destroy_boxed_opaque_existential_1(&v32);
    }

    else
    {
LABEL_40:
      sub_1D5D0ABCC(v38 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
      v32 = 0u;
      v33 = 0u;
      v34 = 0;
      sub_1D5BFB774(&v32, &qword_1EDF329A0, &qword_1EDF329A8);
    }

LABEL_41:
    result = sub_1D62B79F4(&v35);
    goto LABEL_42;
  }

  return result;
}

uint64_t sub_1D621BBC4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v31 = *(a3 + 16);
  if (v31)
  {
    v5 = result;
    v6 = 0;
    v41 = a3 + 32;
    while (1)
    {
      v7 = (v41 + 152 * v6);
      v8 = v7[7];
      v38[3] = v7[6];
      v38[4] = v8;
      v39 = v7[8];
      v40 = *(v7 + 18);
      v9 = v7[3];
      v37 = v7[2];
      v38[0] = v9;
      v10 = v7[5];
      v38[1] = v7[4];
      v38[2] = v10;
      v11 = v7[1];
      v35 = *v7;
      v36 = v11;
      v12 = v11;
      if (v11)
      {
        v13 = *(v36 + 16);
        sub_1D615EAA0(&v35, &v32);
        if (v13)
        {
          v14 = (v12 + 40);
          do
          {
            if ((*v14 & 1) == 0)
            {
              *&v32 = *(v14 - 1);
              v15 = v32;
              swift_retain_n();
              FormatFloat.bind(binder:context:)(v5, a2);
              if (v3)
              {
                sub_1D62B72BC(v15, 0);
                goto LABEL_46;
              }

              sub_1D62B72BC(v15, 0);
            }

            v14 += 16;
            --v13;
          }

          while (v13);
        }
      }

      else
      {
        sub_1D615EAA0(&v35, &v32);
      }

      if (*(&v36 + 1))
      {
        sub_1D620E744(v5, a2, *(&v36 + 1));
        if (v3)
        {
          return sub_1D615EAD8(&v35);
        }
      }

      v16 = BYTE8(v39);
      if (BYTE8(v39) == 254)
      {
        goto LABEL_41;
      }

      sub_1D62B5354(v38 + 8, &v32, &qword_1EDF33718, &type metadata for FormatShadow);

      FormatColor.bind(binder:context:)(v5, a2);
      if (v3)
      {
        sub_1D5D0ABCC(v38 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
LABEL_46:

        return sub_1D615EAD8(&v35);
      }

      if (v16 > 2)
      {
        break;
      }

      if (!v16)
      {
        goto LABEL_27;
      }

      if (v16 != 1)
      {
        goto LABEL_25;
      }

      sub_1D5B49474(0, &qword_1EDF329A8);
      if (swift_dynamicCast())
      {
        v20 = *(&v33 + 1);
        v19 = v34;
        __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
        (*(v19 + 8))(v5, a2, v20, v19);
        __swift_destroy_boxed_opaque_existential_1(&v32);
      }

      else
      {
        v34 = 0;
        v32 = 0u;
        v33 = 0u;
        sub_1D5BFB774(&v32, &qword_1EDF329A0, &qword_1EDF329A8);
      }

      if (!swift_dynamicCast())
      {
        goto LABEL_40;
      }

      v29 = *(&v33 + 1);
      v30 = v34;
      __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      (*(v30 + 8))(v5, a2, v29, v30);
      sub_1D5D0ABCC(v38 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
      __swift_destroy_boxed_opaque_existential_1(&v32);
      result = sub_1D615EAD8(&v35);
LABEL_42:
      if (++v6 == v31)
      {
        return result;
      }
    }

    if (v16 > 4)
    {
      if (v16 != 5)
      {
LABEL_27:
        sub_1D5D0ABCC(v38 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
        goto LABEL_41;
      }
    }

    else if (v16 != 3)
    {
      sub_1D5B49474(0, &qword_1EDF329A8);
      if (swift_dynamicCast())
      {
        v17 = *(&v33 + 1);
        v18 = v34;
        __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
        (*(v18 + 8))(v5, a2, v17, v18);
        __swift_destroy_boxed_opaque_existential_1(&v32);
        goto LABEL_35;
      }

      goto LABEL_34;
    }

LABEL_25:
    sub_1D5B49474(0, &qword_1EDF329A8);
    if (swift_dynamicCast())
    {
      v21 = *(&v33 + 1);
      v22 = v34;
      __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      (*(v22 + 8))(v5, a2, v21, v22);
      __swift_destroy_boxed_opaque_existential_1(&v32);
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      sub_1D5BFB774(&v32, &qword_1EDF329A0, &qword_1EDF329A8);
    }

    if (swift_dynamicCast())
    {
      v23 = *(&v33 + 1);
      v24 = v34;
      __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      (*(v24 + 8))(v5, a2, v23, v24);
      __swift_destroy_boxed_opaque_existential_1(&v32);
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      sub_1D5BFB774(&v32, &qword_1EDF329A0, &qword_1EDF329A8);
    }

    if (swift_dynamicCast())
    {
      v25 = *(&v33 + 1);
      v26 = v34;
      __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      (*(v26 + 8))(v5, a2, v25, v26);
      __swift_destroy_boxed_opaque_existential_1(&v32);
      goto LABEL_35;
    }

LABEL_34:
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    sub_1D5BFB774(&v32, &qword_1EDF329A0, &qword_1EDF329A8);
LABEL_35:
    if (swift_dynamicCast())
    {
      v27 = *(&v33 + 1);
      v28 = v34;
      __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      (*(v28 + 8))(v5, a2, v27, v28);
      sub_1D5D0ABCC(v38 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
      __swift_destroy_boxed_opaque_existential_1(&v32);
    }

    else
    {
LABEL_40:
      sub_1D5D0ABCC(v38 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
      v32 = 0u;
      v33 = 0u;
      v34 = 0;
      sub_1D5BFB774(&v32, &qword_1EDF329A0, &qword_1EDF329A8);
    }

LABEL_41:
    result = sub_1D615EAD8(&v35);
    goto LABEL_42;
  }

  return result;
}

uint64_t sub_1D621C350(uint64_t result, uint64_t a2, uint64_t a3)
{
  v64 = result;
  v33 = *(a3 + 16);
  if (!v33)
  {
    return result;
  }

  v4 = a2;
  v5 = 0;
  v34 = a3 + 32;
  while (1)
  {
    memcpy(__dst, (v34 + 320 * v5), 0x13AuLL);
    v6 = __dst[2];
    if (__dst[2])
    {
      sub_1D60101A0(__dst, &v52);
      sub_1D620E744(v64, v4, v6);
      if (v3)
      {
        return sub_1D60101D8(__dst);
      }
    }

    else
    {
      sub_1D60101A0(__dst, &v52);
    }

    v7 = LOBYTE(__dst[16]);
    if (LOBYTE(__dst[16]) == 254)
    {
      v4 = a2;
      v8 = __dst[17];
      if (__dst[17])
      {
        goto LABEL_38;
      }

      goto LABEL_44;
    }

    v9 = __dst[12];
    v31 = __dst[14];
    v32 = __dst[13];
    v10 = __dst[11];
    *&v50[0] = __dst[10];
    sub_1D62B5354(&__dst[6], &v52, &qword_1EDF33718, &type metadata for FormatShadow);

    FormatColor.bind(binder:context:)(v64, a2);
    if (v3)
    {
      sub_1D5D0ABCC(&__dst[6], &qword_1EDF33718, &type metadata for FormatShadow);

      return sub_1D60101D8(__dst);
    }

    if (v7 <= 2)
    {
      v4 = a2;
      if (!v7)
      {
        goto LABEL_22;
      }

      if (v7 != 1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v4 = a2;
      if (v7 > 4)
      {
        if (v7 != 5)
        {
LABEL_22:
          sub_1D5D0ABCC(&__dst[6], &qword_1EDF33718, &type metadata for FormatShadow);
          v8 = __dst[17];
          if (__dst[17])
          {
            goto LABEL_38;
          }

          goto LABEL_44;
        }

LABEL_20:
        *&v50[0] = v10;
        sub_1D5B49474(0, &qword_1EDF329A8);
        if (swift_dynamicCast())
        {
          v13 = *(&v53 + 1);
          v14 = v54;
          __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
          (*(v14 + 8))(v64, v4, v13, v14);
          __swift_destroy_boxed_opaque_existential_1(&v52);
        }

        else
        {
          *&v54 = 0;
          v52 = 0u;
          v53 = 0u;
          sub_1D5BFB774(&v52, &qword_1EDF329A0, &qword_1EDF329A8);
        }

        *&v50[0] = v9;
        if (swift_dynamicCast())
        {
          v15 = *(&v53 + 1);
          v16 = v54;
          __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
          (*(v16 + 8))(v64, v4, v15, v16);
          __swift_destroy_boxed_opaque_existential_1(&v52);
        }

        else
        {
          *&v54 = 0;
          v52 = 0u;
          v53 = 0u;
          sub_1D5BFB774(&v52, &qword_1EDF329A0, &qword_1EDF329A8);
        }

        *&v50[0] = v32;
        if (swift_dynamicCast())
        {
          v17 = *(&v53 + 1);
          v18 = v54;
          __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
          (*(v18 + 8))(v64, v4, v17, v18);
          __swift_destroy_boxed_opaque_existential_1(&v52);
        }

        else
        {
          *&v54 = 0;
          v52 = 0u;
          v53 = 0u;
          sub_1D5BFB774(&v52, &qword_1EDF329A0, &qword_1EDF329A8);
        }

        *&v50[0] = v31;
        goto LABEL_34;
      }

      if (v7 == 3)
      {
        goto LABEL_20;
      }
    }

    *&v50[0] = v10;
    sub_1D5B49474(0, &qword_1EDF329A8);
    if (swift_dynamicCast())
    {
      v11 = *(&v53 + 1);
      v12 = v54;
      __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
      (*(v12 + 8))(v64, v4, v11, v12);
      __swift_destroy_boxed_opaque_existential_1(&v52);
    }

    else
    {
      *&v54 = 0;
      v52 = 0u;
      v53 = 0u;
      sub_1D5BFB774(&v52, &qword_1EDF329A0, &qword_1EDF329A8);
    }

    *&v50[0] = v9;
LABEL_34:
    if (!swift_dynamicCast())
    {
      break;
    }

    v19 = *(&v53 + 1);
    v20 = v54;
    __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
    (*(v20 + 8))(v64, v4, v19, v20);
    sub_1D5D0ABCC(&__dst[6], &qword_1EDF33718, &type metadata for FormatShadow);
    __swift_destroy_boxed_opaque_existential_1(&v52);
    v8 = __dst[17];
    if (__dst[17])
    {
      goto LABEL_38;
    }

LABEL_44:
    v60 = *&__dst[35];
    v61 = *&__dst[37];
    v62 = __dst[39];
    v56 = *&__dst[27];
    v57 = *&__dst[29];
    v58 = *&__dst[31];
    v59 = *&__dst[33];
    v52 = *&__dst[19];
    v53 = *&__dst[21];
    v54 = *&__dst[23];
    v55 = *&__dst[25];
    if (sub_1D60081E0(&v52) != 1)
    {
      v50[8] = v60;
      v50[9] = v61;
      v51 = v62;
      v50[4] = v56;
      v50[5] = v57;
      v50[6] = v58;
      v50[7] = v59;
      v50[0] = v52;
      v50[1] = v53;
      v50[2] = v54;
      v50[3] = v55;
      v24 = sub_1D62B4E2C(v50);
      if (v24 > 1)
      {
        if (v24 == 2)
        {
          v25 = sub_1D5D04BC4(v50);
          v26 = *(v25 + 144);
          v45 = *(v25 + 128);
          v46 = v26;
          v47 = *(v25 + 160);
          v27 = *(v25 + 80);
          v41 = *(v25 + 64);
          v42 = v27;
          v28 = *(v25 + 112);
          v43 = *(v25 + 96);
          v44 = v28;
          v29 = *(v25 + 16);
          v37 = *v25;
          v38 = v29;
          v30 = *(v25 + 48);
          v39 = *(v25 + 32);
          v40 = v30;
          v48[0] = *&__dst[19];
          v48[1] = *&__dst[21];
          v48[4] = *&__dst[27];
          v48[5] = *&__dst[29];
          v48[2] = *&__dst[23];
          v48[3] = *&__dst[25];
          v49 = __dst[39];
          v48[8] = *&__dst[35];
          v48[9] = *&__dst[37];
          v48[6] = *&__dst[31];
          v48[7] = *&__dst[33];
          sub_1D60864C0(v48, v36);
          FormatGlassEffect.bind(binder:context:)(v64, v4);
          sub_1D5D0ABCC(&__dst[19], &qword_1EDF2D860, &type metadata for FormatVisualEffect);
          result = sub_1D60101D8(__dst);
          if (v3)
          {
            return result;
          }

          goto LABEL_51;
        }
      }

      else
      {
        sub_1D5D04BC4(v50);
      }
    }

    result = sub_1D60101D8(__dst);
LABEL_51:
    if (++v5 == v33)
    {
      return result;
    }
  }

  sub_1D5D0ABCC(&__dst[6], &qword_1EDF33718, &type metadata for FormatShadow);
  v52 = 0u;
  v53 = 0u;
  *&v54 = 0;
  sub_1D5BFB774(&v52, &qword_1EDF329A0, &qword_1EDF329A8);
  v8 = __dst[17];
  if (!__dst[17])
  {
    goto LABEL_44;
  }

LABEL_38:
  v21 = *(v8 + 16);
  if (!v21)
  {
    goto LABEL_44;
  }

  v22 = (v8 + 40);
  while (1)
  {
    if ((*v22 & 1) == 0)
    {
      *&v52 = *(v22 - 1);
      v23 = v52;
      swift_retain_n();
      FormatFloat.bind(binder:context:)(v64, v4);
      sub_1D62B72BC(v23, 0);

      if (v3)
      {
        return sub_1D60101D8(__dst);
      }
    }

    v22 += 16;
    if (!--v21)
    {
      goto LABEL_44;
    }
  }
}

uint64_t sub_1D621CB10(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return result;
  }

  v6 = a2;
  v7 = result;
  v8 = (a3 + 32);
  v44 = result;
  while (1)
  {
    v9 = v8[9];
    v42[2] = v8[8];
    v42[3] = v9;
    v42[4] = v8[10];
    v43 = *(v8 + 176);
    v10 = v8[5];
    v40 = v8[4];
    v41 = v10;
    v11 = v8[7];
    v42[0] = v8[6];
    v42[1] = v11;
    v12 = v8[1];
    v38 = *v8;
    v39[0] = v12;
    v13 = v8[3];
    v39[1] = v8[2];
    v39[2] = v13;
    v14 = *&v39[0];
    if (v41 <= 1u)
    {
      break;
    }

    if (v41 != 2)
    {
      goto LABEL_10;
    }

    v16 = v40;
    sub_1D62B7804(&v38, &v35);
    sub_1D62B5354(v39, &v35, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
    sub_1D6212DD8(v7, v6, v14);
    if (v4)
    {
      goto LABEL_56;
    }

    if (v16)
    {

      sub_1D620B270(v7, v6, v16);
      sub_1D620B270(v7, v6, *(&v16 + 1));
      v4 = 0;
      sub_1D5CDE22C(v16);
    }

    sub_1D5D0ABCC(v39, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
    v15 = *(&v41 + 1);
    if (*(&v41 + 1))
    {
      goto LABEL_19;
    }

LABEL_20:
    v17 = v43;
    if (v43 != 254)
    {
      sub_1D62B5354(v42, &v35, &qword_1EDF33718, &type metadata for FormatShadow);

      FormatColor.bind(binder:context:)(v44, a2);
      if (v4)
      {
        sub_1D5D0ABCC(v42, &qword_1EDF33718, &type metadata for FormatShadow);

        return sub_1D62B7860(&v38);
      }

      if (v17 <= 2)
      {
        if (!v17)
        {
          goto LABEL_34;
        }

        if (v17 == 1)
        {
          sub_1D5B49474(0, &qword_1EDF329A8);
          if (swift_dynamicCast())
          {
            v20 = *(&v36 + 1);
            v21 = v37;
            __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
            (*(v21 + 8))(v44, a2, v20, v21);
            __swift_destroy_boxed_opaque_existential_1(&v35);
          }

          else
          {
            v37 = 0;
            v35 = 0u;
            v36 = 0u;
            sub_1D5BFB774(&v35, &qword_1EDF329A0, &qword_1EDF329A8);
          }

          if (swift_dynamicCast())
          {
            v30 = *(&v36 + 1);
            v31 = v37;
            __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
            v6 = a2;
            (*(v31 + 8))(v44, a2, v30, v31);
            sub_1D5D0ABCC(v42, &qword_1EDF33718, &type metadata for FormatShadow);
            __swift_destroy_boxed_opaque_existential_1(&v35);
            result = sub_1D62B7860(&v38);
          }

          else
          {
            sub_1D5D0ABCC(v42, &qword_1EDF33718, &type metadata for FormatShadow);
            v35 = 0u;
            v36 = 0u;
            v37 = 0;
            sub_1D5BFB774(&v35, &qword_1EDF329A0, &qword_1EDF329A8);
            result = sub_1D62B7860(&v38);
            v6 = a2;
          }

          goto LABEL_4;
        }
      }

      else if (v17 > 4)
      {
        if (v17 != 5)
        {
LABEL_34:
          sub_1D5D0ABCC(v42, &qword_1EDF33718, &type metadata for FormatShadow);
          result = sub_1D62B7860(&v38);
          v7 = v44;
          v6 = a2;
          goto LABEL_5;
        }
      }

      else if (v17 != 3)
      {
        sub_1D5B49474(0, &qword_1EDF329A8);
        if (swift_dynamicCast())
        {
          v18 = *(&v36 + 1);
          v19 = v37;
          __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
          (*(v19 + 8))(v44, a2, v18, v19);
          __swift_destroy_boxed_opaque_existential_1(&v35);
        }

        else
        {
          v37 = 0;
          v35 = 0u;
          v36 = 0u;
          sub_1D5BFB774(&v35, &qword_1EDF329A0, &qword_1EDF329A8);
        }

        if (!swift_dynamicCast())
        {
          sub_1D5D0ABCC(v42, &qword_1EDF33718, &type metadata for FormatShadow);
          v35 = 0u;
          v36 = 0u;
          v37 = 0;
          sub_1D5BFB774(&v35, &qword_1EDF329A0, &qword_1EDF329A8);
          result = sub_1D62B7860(&v38);
          v6 = a2;
          v7 = v44;
          goto LABEL_5;
        }

        v32 = *(&v36 + 1);
        v33 = v37;
        __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
        v6 = a2;
        (*(v33 + 8))(v44, a2, v32, v33);
LABEL_51:
        sub_1D5D0ABCC(v42, &qword_1EDF33718, &type metadata for FormatShadow);
        __swift_destroy_boxed_opaque_existential_1(&v35);
        goto LABEL_52;
      }

      sub_1D5B49474(0, &qword_1EDF329A8);
      if (swift_dynamicCast())
      {
        v22 = *(&v36 + 1);
        v23 = v37;
        __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
        (*(v23 + 8))(v44, a2, v22, v23);
        __swift_destroy_boxed_opaque_existential_1(&v35);
      }

      else
      {
        v37 = 0;
        v35 = 0u;
        v36 = 0u;
        sub_1D5BFB774(&v35, &qword_1EDF329A0, &qword_1EDF329A8);
      }

      if (swift_dynamicCast())
      {
        v24 = *(&v36 + 1);
        v25 = v37;
        __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
        v6 = a2;
        (*(v25 + 8))(v44, a2, v24, v25);
        __swift_destroy_boxed_opaque_existential_1(&v35);
      }

      else
      {
        v37 = 0;
        v35 = 0u;
        v36 = 0u;
        sub_1D5BFB774(&v35, &qword_1EDF329A0, &qword_1EDF329A8);
        v6 = a2;
      }

      if (swift_dynamicCast())
      {
        v26 = *(&v36 + 1);
        v27 = v37;
        __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
        (*(v27 + 8))(v44, v6, v26, v27);
        __swift_destroy_boxed_opaque_existential_1(&v35);
      }

      else
      {
        v37 = 0;
        v35 = 0u;
        v36 = 0u;
        sub_1D5BFB774(&v35, &qword_1EDF329A0, &qword_1EDF329A8);
      }

      if (swift_dynamicCast())
      {
        v28 = *(&v36 + 1);
        v29 = v37;
        __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
        (*(v29 + 8))(v44, v6, v28, v29);
        goto LABEL_51;
      }

      sub_1D5D0ABCC(v42, &qword_1EDF33718, &type metadata for FormatShadow);
      v35 = 0u;
      v36 = 0u;
      v37 = 0;
      sub_1D5BFB774(&v35, &qword_1EDF329A0, &qword_1EDF329A8);
LABEL_52:
      result = sub_1D62B7860(&v38);
      goto LABEL_4;
    }

    result = sub_1D62B7860(&v38);
    v6 = a2;
LABEL_4:
    v7 = v44;
LABEL_5:
    v8 = (v8 + 184);
    if (!--v5)
    {
      return result;
    }
  }

  if (!v41)
  {
LABEL_10:
    sub_1D62B7804(&v38, &v35);
    v15 = *(&v41 + 1);
    if (!*(&v41 + 1))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  sub_1D62B7804(&v38, &v35);
  sub_1D62B5354(v39, &v35, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
  sub_1D6213184(v7, v6, v14);
  if (!v4)
  {
    sub_1D5D0ABCC(v39, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
    v15 = *(&v41 + 1);
    if (!*(&v41 + 1))
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1D620E744(v7, v6, v15);
    if (v4)
    {
      return sub_1D62B7860(&v38);
    }

    goto LABEL_20;
  }

LABEL_56:
  sub_1D5D0ABCC(v39, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
  return sub_1D62B7860(&v38);
}

uint64_t sub_1D621D544(uint64_t result, uint64_t a2, void *a3)
{
  v4 = a3[2];
  if (v4)
  {
    v6 = result;
    v7 = v4 - 1;
    v9 = a3 + 16;
    v8 = a3[9];
    if (!v8)
    {
      goto LABEL_4;
    }

LABEL_3:

    sub_1D621397C(v6, a2, v8);

    if (!v3)
    {
LABEL_4:
      while (v7)
      {
        --v7;
        v10 = *v9;
        v9 += 7;
        v8 = v10;
        if (v10)
        {
          goto LABEL_3;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D621D5F8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v15 = *(a3 + 16);
  if (!v15)
  {
    return result;
  }

  v4 = result;
  v5 = 0;
  v16 = a3 + 32;
  while (1)
  {
    v6 = (v16 + 48 * v5);
    v7 = v6[2];
    v9 = v6[3];
    v8 = v6[4];
    if (v7)
    {
      v10 = *(v7 + 16);

      sub_1D5CFCFAC(v9);
      sub_1D5CFCFAC(v8);
      if (v10)
      {
        v11 = (v7 + 40);
        do
        {
          if ((*v11 & 1) == 0)
          {
            v12 = *(v11 - 1);
            swift_retain_n();
            FormatFloat.bind(binder:context:)(v4, a2);
            if (v3)
            {
              sub_1D62B72BC(v12, 0);

              sub_1D5C84FF4(v9);
              v14 = v8;
              return sub_1D5C84FF4(v14);
            }

            sub_1D62B72BC(v12, 0);
          }

          v11 += 16;
          --v10;
        }

        while (v10);
      }
    }

    else
    {

      sub_1D5CFCFAC(v9);
      sub_1D5CFCFAC(v8);
    }

    if ((~v9 & 0xF000000000000007) == 0)
    {
      v13 = v8;
      if ((~v8 & 0xF000000000000007) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_18;
    }

    FormatColor.bind(binder:context:)(v4, a2);
    v13 = v8;
    if (v3)
    {
      break;
    }

    if ((~v8 & 0xF000000000000007) == 0)
    {
LABEL_3:

      sub_1D5C84FF4(v9);
      result = sub_1D5C84FF4(v13);
      goto LABEL_4;
    }

LABEL_18:

    FormatColor.bind(binder:context:)(v4, a2);

    sub_1D5C84FF4(v9);
    result = sub_1D5C84FF4(v13);
    if (v3)
    {
      return result;
    }

LABEL_4:
    if (++v5 == v15)
    {
      return result;
    }
  }

  sub_1D5C84FF4(v9);
  v14 = v8;
  return sub_1D5C84FF4(v14);
}

unint64_t sub_1D621D854(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return result;
  }

  v5 = result;
  v6 = (a3 + 72);
  while (1)
  {
    v7 = *(v6 - 3);
    v8 = *(v6 - 2);
    v9 = *v6;
    if ((~v7 & 0xF000000000000007) != 0)
    {

      sub_1D5CFCFAC(v7);
      sub_1D5CFCFAC(v8);
      sub_1D5D0A59C(v9);
      sub_1D5CFCFAC(v7);
      FormatColor.bind(binder:context:)(v5, a2);
      if (v3)
      {
        goto LABEL_16;
      }

      if ((~v8 & 0xF000000000000007) != 0)
      {
LABEL_11:

        FormatColor.bind(binder:context:)(v5, a2);
        if (v3)
        {
LABEL_16:

          goto LABEL_19;
        }

        v10 = v9 == 2;
        if (v9 < 2)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    else
    {

      sub_1D5CFCFAC(v7);
      sub_1D5CFCFAC(v8);
      sub_1D5D0A59C(v9);
      if ((~v8 & 0xF000000000000007) != 0)
      {
        goto LABEL_11;
      }
    }

    v10 = v9 == 2;
    if (v9 < 2)
    {
      goto LABEL_3;
    }

LABEL_13:
    if (v10)
    {
      goto LABEL_4;
    }

    v11 = *(v9 + 16);
    v12 = *(v9 + 24);
    sub_1D5D0A59C(v9);
    sub_1D5D0A57C(v11);
    sub_1D5D0A57C(v12);
    sub_1D6248A90(v5, a2, v11, v12);
    sub_1D5D0A58C(v11);
    sub_1D5D0A58C(v12);
    if (v3)
    {
      break;
    }

LABEL_3:
    sub_1D5D0A5AC(v9);
LABEL_4:
    v6 += 6;

    sub_1D5C84FF4(v7);
    sub_1D5C84FF4(v8);
    result = sub_1D5D0A5AC(v9);
    if (!--v4)
    {
      return result;
    }
  }

  sub_1D5D0A5AC(v9);

LABEL_19:
  sub_1D5C84FF4(v7);
  sub_1D5C84FF4(v8);
  return sub_1D5D0A5AC(v9);
}

uint64_t sub_1D621DA6C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return result;
  }

  v6 = a2;
  v7 = result;
  v8 = (a3 + 56);
  v47 = result;
  while (1)
  {
    v9 = *v8;
    v10 = *v8 >> 61;
    if (v10 > 2)
    {
      goto LABEL_4;
    }

    v11 = *(v8 - 3);
    v12 = *(v8 - 2);
    v13 = *(v8 - 8);
    v60 = v13;
    if (!v10)
    {
      break;
    }

    if (v10 == 1)
    {
      v14 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v55 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v56 = v14;
      v15 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v57 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v58 = v15;
      v16 = v56;
      v52 = v11;
      if (v56 == 255 || (v56 & 1) == 0)
      {
        sub_1D5D03180(v11, v12, v13);

        sub_1D62B6004(&v55, v54);
      }

      else
      {
        v17 = v55;
        v45 = *(v55 + 24);
        sub_1D5D03180(v11, v12, v13);

        sub_1D62B6004(&v55, v54);
        sub_1D62B7ECC(v17, *(&v17 + 1), v16);
        sub_1D621E2E4(v7, v6, v45);
        if (v4)
        {
          sub_1D62B5FEC(v17, *(&v17 + 1), v16);
          goto LABEL_39;
        }

        sub_1D6251BE4(v7, v6);
        v4 = 0;
        sub_1D62B5FEC(v17, *(&v17 + 1), v16);
        v6 = a2;
        v7 = v47;
      }

      v31 = v57;
      if (v57 != 255 && (v57 & 1) != 0)
      {
        v32 = v12;
        v33 = v6;
        v34 = *(&v56 + 1);
        v51 = v4;
        v35 = *(*(&v56 + 1) + 24);
        sub_1D62B5FC8(*(&v56 + 1), 1);
        sub_1D621E140(v7, v33, v35);
        if (v51)
        {
          sub_1D62B5FD4(v34, v31);
          v12 = v32;
LABEL_39:
          sub_1D62B6060(&v55);
          v40 = v52;
          v41 = v12;
LABEL_40:
          sub_1D5D07BA8(v40, v41, v60);
        }

        sub_1D6251AD4(v7, v33, v34[4]);
        v4 = 0;
        v12 = v32;
        sub_1D62B5FD4(v34, v31);
        v7 = v47;
        v6 = a2;
      }

      sub_1D621E474(v7, v6, *(&v58 + 1));
      if (v4)
      {
        goto LABEL_39;
      }

      sub_1D62B6060(&v55);
      sub_1D5D07BA8(v52, v12, v60);
    }

    else
    {
      v50 = v5;
      v25 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v26 = v12;
      v27 = v4;
      v28 = *(v25 + 24);
      v29 = v11;
      v30 = v26;
      sub_1D5D03180(v11, v26, v13);

      sub_1D621DA6C(v7, v6, v28);
      if (v27)
      {

        v40 = v29;
        v41 = v30;
        goto LABEL_40;
      }

      sub_1D6251838(v7, v6, *(v25 + 32));
      v4 = 0;

      sub_1D5D07BA8(v29, v30, v60);

      v5 = v50;
    }

LABEL_4:
    v8 += 4;
    if (!--v5)
    {
      return result;
    }
  }

  v49 = v12;
  v53 = v11;
  v18 = *(v9 + 16);
  v19 = *(v9 + 24);
  v20 = *(v9 + 40);
  v21 = *(v9 + 48);
  v44 = v19;
  v59 = *(v9 + 32);
  v46 = v18;
  if ((v59 & 1) == 0)
  {
    sub_1D5D03180(v11, v49, v13);

    sub_1D5F26358(v18, v19, 0);
    sub_1D62B5FC8(v20, v21);

    v6 = a2;
    if (!v21)
    {
      goto LABEL_3;
    }

LABEL_29:
    sub_1D621E140(v47, v6, v20[3]);
    if (v4)
    {
      sub_1D5F26348(v46, v19, v59);
      sub_1D5FC4E9C(v20, 1);
      goto LABEL_41;
    }

    v54[0] = v20[4];
    v36 = v54[0];
    sub_1D62B7E2C();
    sub_1D5B49474(0, &qword_1EDF329A8);
    v37 = v36;
    if (swift_dynamicCast())
    {
      v39 = *(&v56 + 1);
      v38 = v57;
      __swift_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
      (*(v38 + 8))(v47, a2, v39, v38);
      __swift_destroy_boxed_opaque_existential_1(&v55);
    }

    else
    {
      *&v57 = 0;
      v55 = 0u;
      v56 = 0u;
      sub_1D5BFB774(&v55, &qword_1EDF329A0, &qword_1EDF329A8);
    }

    sub_1D5F26348(v46, v44, v59);
    sub_1D5FC4E9C(v20, 1);

    sub_1D5D07BA8(v53, v49, v60);

    v7 = v47;
    v6 = a2;
    goto LABEL_4;
  }

  v42 = v18[3];
  sub_1D5D03180(v11, v49, v13);

  sub_1D5F26358(v18, v19, 1);
  sub_1D62B5FC8(v20, v21);

  sub_1D621E2E4(v47, a2, v42);
  if (!v4)
  {
    v43 = v21;
    v22 = v18[5];
    v54[0] = v18[4];
    v54[1] = v22;
    sub_1D5B49474(0, &qword_1EDF329A8);

    if (swift_dynamicCast())
    {
      v23 = *(&v56 + 1);
      v24 = v57;
      __swift_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
      (*(v24 + 8))(v47, a2, v23, v24);
      __swift_destroy_boxed_opaque_existential_1(&v55);
      v6 = a2;
      if (!v43)
      {
        goto LABEL_3;
      }
    }

    else
    {
      *&v57 = 0;
      v55 = 0u;
      v56 = 0u;
      sub_1D5BFB774(&v55, &qword_1EDF329A0, &qword_1EDF329A8);
      v6 = a2;
      if (!v21)
      {
LABEL_3:
        sub_1D5F26348(v46, v19, v59);
        sub_1D5FC4E9C(v20, 0);

        sub_1D5D07BA8(v53, v49, v60);

        v7 = v47;
        goto LABEL_4;
      }
    }

    goto LABEL_29;
  }

  sub_1D5F26348(v18, v19, 1);
  sub_1D5FC4E9C(v20, v21);
LABEL_41:

  sub_1D5D07BA8(v53, v49, v60);
}

uint64_t sub_1D621E140(uint64_t result, uint64_t a2, uint64_t a3)
{
  v14 = result;
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = &qword_1EDF329A8;
    v5 = (a3 + 56);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 8);
      v21 = *v5;
      v9 = v21;
      sub_1D5D03180(v6, v7, v8);
      sub_1D62B7E2C();
      sub_1D5B49474(0, v4);
      v10 = v9;
      if (swift_dynamicCast())
      {
        v16 = v10;
        v11 = v4;
        v12 = *(&v19 + 1);
        v13 = v20;
        __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
        (*(v13 + 8))(v14, a2, v12, v13);
        sub_1D5D07BA8(v6, v7, v8);

        result = __swift_destroy_boxed_opaque_existential_1(&v18);
        if (v17)
        {
          return result;
        }

        v4 = v11;
      }

      else
      {
        sub_1D5D07BA8(v6, v7, v8);

        v20 = 0;
        v18 = 0u;
        v19 = 0u;
        result = sub_1D5BFB774(&v18, &qword_1EDF329A0, v4);
      }

      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D621E2E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v11 = result;
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = a3 + 64;
    do
    {
      v6 = *(v4 - 32);
      v5 = *(v4 - 24);
      v7 = *(v4 - 16);
      sub_1D5D03180(v6, v5, v7);
      sub_1D5B49474(0, &qword_1EDF329A8);
      swift_bridgeObjectRetain_n();
      if (swift_dynamicCast())
      {
        v8 = *(&v14 + 1);
        v9 = v15;
        __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
        v10 = v16;
        (*(v9 + 8))(v11, a2, v8, v9);
        sub_1D5D07BA8(v6, v5, v7);

        result = __swift_destroy_boxed_opaque_existential_1(&v13);
        v16 = v10;
        if (v10)
        {
          return result;
        }
      }

      else
      {
        sub_1D5D07BA8(v6, v5, v7);

        v15 = 0;
        v13 = 0u;
        v14 = 0u;
        result = sub_1D5BFB774(&v13, &qword_1EDF329A0, &qword_1EDF329A8);
      }

      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D621E474(uint64_t result, uint64_t a2, uint64_t a3)
{
  v23 = result;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return result;
  }

  v5 = &qword_1EDF329A8;
  for (i = a3 + 40; ; i += 48)
  {
    v26 = v4;
    v7 = v5;
    v9 = *(i - 8);
    v8 = *i;
    v10 = *(i + 8);
    v11 = *(i + 16);
    v12 = *(i + 24);
    v32 = *i;
    v27 = v9;
    v25 = v10;
    if (v10 == 1)
    {
      break;
    }

    sub_1D5F26358(v9, v8, 0);
    sub_1D62B5FC8(v11, v12);

    v5 = v7;
    if (v12)
    {
      goto LABEL_13;
    }

LABEL_3:
    sub_1D5F26348(v27, v32, v10);
    sub_1D5FC4E9C(v11, 0);

LABEL_4:
    v4 = v26 - 1;
    if (v26 == 1)
    {
      return result;
    }
  }

  v13 = *(v9 + 24);
  sub_1D5F26358(v9, v8, 1);
  sub_1D62B5FC8(v11, v12);

  sub_1D621E2E4(v23, a2, v13);
  if (v3)
  {
    sub_1D5F26348(v9, v32, 1);
    v20 = v11;
    v21 = v12;
    goto LABEL_19;
  }

  v5 = v7;
  sub_1D5B49474(0, v7);

  if (swift_dynamicCast())
  {
    v22 = v11;
    v14 = *(&v30 + 1);
    v15 = v31;
    __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
    (*(v15 + 8))(v23, a2, v14, v15);
    __swift_destroy_boxed_opaque_existential_1(&v29);
    v5 = &qword_1EDF329A8;
    v11 = v22;
    LOBYTE(v10) = 1;
    if (v12)
    {
      goto LABEL_13;
    }

    goto LABEL_3;
  }

  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  sub_1D5BFB774(&v29, &qword_1EDF329A0, v7);
  LOBYTE(v10) = 1;
  if (!v12)
  {
    goto LABEL_3;
  }

LABEL_13:
  sub_1D621E140(v23, a2, v11[3]);
  if (!v3)
  {
    v16 = v11;
    v28 = v11[4];
    sub_1D62B7E2C();
    sub_1D5B49474(0, v5);
    v17 = v28;
    if (swift_dynamicCast())
    {
      v18 = *(&v30 + 1);
      v19 = v31;
      __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
      (*(v19 + 8))(v23, a2, v18, v19);
      __swift_destroy_boxed_opaque_existential_1(&v29);
      sub_1D5F26348(v27, v32, v25);
      sub_1D5FC4E9C(v16, 1);

      v5 = &qword_1EDF329A8;
    }

    else
    {
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      sub_1D5BFB774(&v29, &qword_1EDF329A0, v5);
      sub_1D5F26348(v27, v32, v25);
      sub_1D5FC4E9C(v11, 1);
    }

    goto LABEL_4;
  }

  sub_1D5F26348(v27, v32, v10);
  v20 = v11;
  v21 = 1;
LABEL_19:
  sub_1D5FC4E9C(v20, v21);
}

void sub_1D621E8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v197 = a2;
  v195 = a1;
  v194 = type metadata accessor for FormatOption();
  v4 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194, v5);
  v7 = &v173 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v173 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v189 = &v173 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v188 = &v173 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v173 - v20;
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  MEMORY[0x1EEE9AC00](v26, v27);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v173 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  MEMORY[0x1EEE9AC00](&v173 - v34, v35);
  v193 = &v173 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v192 = &v173 - v43;
  v44 = *(a3 + 16);
  if (v44)
  {
    v181 = v39;
    v182 = v31;
    v178 = v42;
    v183 = v41;
    v184 = v40;
    v180 = v7;
    v191 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;
    v186 = (v4 + 48);
    v190 = (v4 + 56);
    v45 = (a3 + 56);
    v179 = v11;
    v185 = v21;
    while (1)
    {
      v46 = *(v45 - 3);
      v47 = *(v45 - 2);
      v48 = *(v45 - 8);
      v49 = *v45;
      v50 = *v45 >> 62;
      if (!v50)
      {
        break;
      }

      if (v50 != 1)
      {
        goto LABEL_6;
      }

      v51 = *((v49 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v202 = *((v49 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v199 = v49 & 0x3FFFFFFFFFFFFFFFLL;
      v198 = *((v49 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v52 = *(v51 + 32);
      v211 = *(v51 + 16);
      v212 = v52;
      *v213 = *(v51 + 48);
      *&v213[15] = *(v51 + 63);
      v53 = *(&v211 + 1);
      v54 = v52;
      v55 = (*&v213[15] >> 8);
      if ((*&v213[15] & 0x1000000) != 0)
      {
        v56 = 8;
      }

      else
      {
        v56 = 0;
      }

      v57 = v56 & 0xFFFFFFF8 | (v55 >> 11) & 7;
      v214 = v48;
      v201 = v47;
      v200 = v46;
      if (v57 <= 4)
      {
        v58 = v195;
        if (v57 > 1)
        {
          if (v57 != 3)
          {
            goto LABEL_121;
          }

          v59 = v52;
          if (v52 > 1u)
          {
            goto LABEL_81;
          }

          v60 = v198;
          if (v52)
          {
            v61 = v203;
LABEL_40:
            v82 = v202;
            if ((~v211 & 0xF000000000000007) != 0)
            {
              *&v209 = v211;
              v83 = v211;
              sub_1D5D03180(v46, v47, v48);

              sub_1D5CFCFAC(v83);
              v84 = v61;
              FormatTextContent.bind(binder:context:)(v58, v197);
              if (v61)
              {
                goto LABEL_189;
              }

LABEL_42:

              goto LABEL_125;
            }

            goto LABEL_80;
          }

          goto LABEL_84;
        }

        if (v57)
        {
          goto LABEL_121;
        }

        v81 = (DWORD2(v52) >> 3) & 7;
        if (v81 <= 1)
        {
          if (v81)
          {
            goto LABEL_121;
          }

LABEL_77:
          v59 = v52;
          if (v52 <= 1u)
          {
            v60 = v198;
            if (v52)
            {
              v61 = v203;
              v82 = v202;
              if ((~v211 & 0xF000000000000007) != 0)
              {
                *&v209 = v211;
                v114 = v211;
                sub_1D5D03180(v46, v47, v48);

                sub_1D5CFCFAC(v114);
                v84 = v61;
                FormatTextContent.bind(binder:context:)(v58, v197);
                if (v61)
                {
LABEL_189:

                  goto LABEL_172;
                }

                goto LABEL_42;
              }

LABEL_80:
              sub_1D5D03180(v46, v47, v48);

              goto LABEL_91;
            }

            goto LABEL_84;
          }

LABEL_81:
          v60 = v198;
          if (v59 != 2 && v211 != 0)
          {
            v61 = v203;
LABEL_88:
            sub_1D5D03180(v46, v47, v48);
            goto LABEL_89;
          }

LABEL_84:
          v61 = v203;
LABEL_85:
          sub_1D5D03180(v46, v47, v48);
          v84 = v61;
          goto LABEL_123;
        }

        if (v81 == 2 || v81 == 3 || !(BYTE8(v52) >> 6) || BYTE8(v52) >> 6 == 1)
        {
          goto LABEL_77;
        }

        if ((BYTE8(v52) & 7u) > 1)
        {
          if ((BYTE8(v52) & 7) != 2 && *(&v211 + 1) | v52)
          {
            v61 = v203;
LABEL_103:
            sub_1D5D03180(v46, v47, v48);
            v60 = v198;
LABEL_89:

LABEL_90:

            v82 = v202;
LABEL_91:

            v84 = v61;
            goto LABEL_125;
          }

LABEL_121:
          v61 = v203;
LABEL_122:
          sub_1D5D03180(v46, v47, v48);
          v84 = v61;
          v60 = v198;
LABEL_123:

LABEL_124:

          v82 = v202;

          goto LABEL_125;
        }

        if ((BYTE8(v52) & 7) == 0)
        {
          goto LABEL_121;
        }

        v61 = v203;
        goto LABEL_98;
      }

      v61 = v203;
      v58 = v195;
      if (v57 <= 6)
      {
        if (v57 == 5)
        {
          goto LABEL_50;
        }

        if (!(BYTE8(v52) >> 6) || BYTE8(v52) >> 6 == 1)
        {
          if (v52 > 1u)
          {
            v60 = v198;
            if (v52 != 2 && v211 != 0)
            {
              goto LABEL_88;
            }
          }

          else
          {
            v60 = v198;
            if (v52)
            {
              goto LABEL_40;
            }
          }

          goto LABEL_85;
        }

        if ((BYTE8(v52) & 0x3Fu) > 1)
        {
          if ((BYTE8(v52) & 0x3F) != 2 && *(&v211 + 1) | v52)
          {
            goto LABEL_103;
          }

          goto LABEL_122;
        }

        if ((BYTE8(v52) & 0x3F) == 0)
        {
          goto LABEL_122;
        }

LABEL_98:
        v60 = v198;
        if ((~*(&v211 + 1) & 0xF000000000000007) == 0)
        {
          goto LABEL_88;
        }

        *&v209 = *(&v211 + 1);
        sub_1D5D03180(v46, v47, v48);

        sub_1D5CFCFAC(v53);
        v84 = v61;
        FormatTextContent.bind(binder:context:)(v58, v197);
        if (v61)
        {
          goto LABEL_189;
        }

        v82 = v202;
        goto LABEL_125;
      }

      if (v57 != 7)
      {
        sub_1D5D03180(v46, v47, v48);
        v60 = v198;

        goto LABEL_90;
      }

      if (!(v55 >> 14))
      {
LABEL_50:
        sub_1D5D03180(v46, v47, v48);
        v84 = v61;
        v60 = v198;

        goto LABEL_124;
      }

      v177 = v211;
      if (v55 >> 14 == 1)
      {
        *v204 = v211;
        *&v204[16] = v52;
        LOBYTE(v207) = 5;
        v85 = v211;
        sub_1D5D03180(v46, v47, v48);

        sub_1D62B5248(&v211, &v209);
        v86 = sub_1D703E0C8(v204, &v207);
        if (v61)
        {

          sub_1D5D07BA8(v200, v201, v214);
          goto LABEL_181;
        }

        v176 = v86;
        v203 = 0;
        v87 = v197;
        v88 = v182;
        FormatOptionCollection.subscript.getter(v85, v53, v182);
        if ((*v186)(v88, 1, v194) == 1)
        {
          sub_1D5B6EF64(v88, &qword_1EDF337F0, type metadata accessor for FormatOption);
          if ((*(v87 + 48) & 1) == 0)
          {
            type metadata accessor for FormatLayoutError();
            sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
            swift_allocError();
            *v172 = v177;
            v172[1] = v53;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            goto LABEL_187;
          }

          v89 = 1;
          v58 = v195;
          v90 = v181;
        }

        else
        {
          v111 = v179;
          sub_1D5D5E33C(v88, v179, type metadata accessor for FormatOption);
          *&v209 = v111[2];
          v112 = v176;

          FormatOptionValue.type.getter(v204);
          v113 = sub_1D6183C84(v204[0], v112);
          v58 = v195;
          if ((v113 & 1) == 0)
          {
            type metadata accessor for FormatDerivedDataError();
            sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
            swift_allocError();
            v168 = v167;
            v169 = *v111;
            v170 = v111[1];
            *&v209 = v111[2];

            FormatOptionValue.type.getter(v204);
            v171 = v204[0];
            *v168 = v169;
            *(v168 + 8) = v170;
            *(v168 + 16) = v171;
            *(v168 + 24) = v112;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            sub_1D62B51D0(v111, type metadata accessor for FormatOption);
LABEL_187:

            sub_1D5D07BA8(v200, v201, v214);
            goto LABEL_181;
          }

          v90 = v181;
          sub_1D5D5E33C(v111, v181, type metadata accessor for FormatOption);
          v89 = 0;
        }

        (*v190)(v90, v89, 1, v194);
        sub_1D5B6EF64(v90, &qword_1EDF337F0, type metadata accessor for FormatOption);

        v84 = v203;
        v82 = v202;
        v60 = v198;
      }

      else
      {
        v174 = (*&v213[15] >> 8) & 0x7FF;
        v175 = *&v213[8];
        v176 = *v213;
        v187 = v51;
        v196 = v44;
        switch((((*&v213[15] >> 8) & 0x700u) >> 7) & 0xFFFFFFFE | ((*&v213[15] >> 8) >> 3) & 1)
        {
          case 3u:
          case 4u:
            *v204 = v211;
            *&v204[16] = v52;
            LOBYTE(v207) = 5;
            v118 = v211;
            sub_1D5D03180(v46, v47, v48);

            sub_1D62B5248(&v211, &v209);

            v119 = v203;
            v120 = sub_1D703E0C8(v204, &v207);
            if (v119)
            {

              goto LABEL_180;
            }

            *(&v173 + 1) = v120;
            sub_1D6BEBFEC(v118, v53, v120, 1, v178);
            v203 = 0;

            v104 = v53;

            sub_1D5B6EF64(v178, &qword_1EDF337F0, type metadata accessor for FormatOption);
LABEL_94:
            v105 = v174;
            v106 = v177;
            *&v209 = v177;
            *(&v209 + 1) = v104;
            *v210 = v54;
            v173 = v54;
            v107 = v176;
            v108 = v175;
            *&v210[16] = v176;
            *&v210[24] = v175;
            v210[32] = v55;
            v210[33] = BYTE1(v174);
            v109 = v195;
            v110 = v197;
            v84 = v203;
            FormatTextNodeBinding.bindChildren(binder:context:)(v195, v197);
            if (v84)
            {
LABEL_154:

              goto LABEL_180;
            }

            *v204 = v106;
            *&v204[8] = v104;
            *&v204[16] = v173;
            *&v204[32] = v107;
            v205 = v108;
            v206 = v105;
            FormatTextNodeBinding.bind(binder:context:)(v109, v110);
            v58 = v109;
            v82 = v202;
            v60 = v198;
            v51 = v187;
            v44 = v196;
            break;
          default:
            v104 = *(&v211 + 1);
            sub_1D5D03180(v46, v47, v48);

            goto LABEL_94;
        }
      }

LABEL_125:
      sub_1D621E8B0(v58, v197, v82);
      if (v84)
      {

        goto LABEL_172;
      }

      if (v60 >> 62)
      {
        if (v60 >> 62 != 1)
        {
          v203 = 0;
LABEL_139:

          goto LABEL_4;
        }

        v121 = v60 & 0x3FFFFFFFFFFFFFFFLL;
        v122 = *((v60 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v123 = *((v60 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v124 = *(v121 + 32);
        v125 = *(v122 + 24);
        v126 = *(v122 + 32);
        v127 = *(v122 + 40);
        v128 = *(v122 + 64);
        if (*(v122 + 66))
        {
          v129 = 8;
        }

        else
        {
          v129 = 0;
        }

        v130 = v129 & 0xFFFFFFF8 | (v128 >> 11) & 7;
        if (v130 <= 3)
        {
          if ((v130 - 1) >= 2)
          {
            *&v209 = *(v122 + 16);
            *(&v209 + 1) = v125;
            if (v130)
            {
              v210[0] = v126;
              FormatTagBinding.Command.bind(binder:context:)(v195, v197);
            }

            else
            {
              *v210 = v126;
              v210[8] = v127;
              FormatGroupBinding.Command.bind(binder:context:)(v195, v197);
            }
          }
        }

        else if (((1 << v130) & 0x330) == 0)
        {
          *&v209 = *(v122 + 16);
          *(&v209 + 1) = v125;
          *v210 = v126;
          if (v130 == 6)
          {
            v210[8] = v127;
            FormatSportsEventBinding.Command.bind(binder:context:)(v195, v197);
          }

          else
          {
            *&v210[8] = v127;
            *&v210[16] = *(v122 + 48);
            *&v210[32] = v128 & 0xC7FF;
            FormatString.bind(binder:context:)(v195, v197);
          }
        }

        sub_1D621E8B0(v195, v197, v123);
        v203 = 0;
        if (!(v124 >> 62))
        {
          v148 = *(v124 + 32);
          v209 = *(v124 + 16);
          *v210 = v148;
          *&v210[16] = *(v124 + 48);
          *&v210[32] = *(v124 + 64);
          FormatTextNodeBinding.bind(binder:context:)(v195, v197);
          v203 = 0;
LABEL_3:

          goto LABEL_4;
        }

        if (v124 >> 62 != 1)
        {
          goto LABEL_3;
        }

        v187 = v51;
        v141 = v124 & 0x3FFFFFFFFFFFFFFFLL;
        v142 = *((v124 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v143 = *((v124 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v144 = *(v141 + 32);
        v145 = *(v142 + 32);
        v209 = *(v142 + 16);
        *v210 = v145;
        *&v210[16] = *(v142 + 48);
        *&v210[31] = *(v142 + 63);
        v146 = v195;
        v147 = v197;
        FormatCommandBinding.bind(binder:context:)(v195, v197);
        sub_1D621E8B0(v146, v147, v143);
        sub_1D6EAF49C(v146, v147, v144);
        v203 = 0;
      }

      else
      {
        v131 = *(v60 + 32);
        v209 = *(v60 + 16);
        *v210 = v131;
        v132 = *(v60 + 48);
        *&v210[32] = *(v60 + 64);
        *&v210[16] = v132;
        v133 = *(&v209 + 1);
        v134 = v209;
        v135 = v131;
        v136 = v210[32];
        switch((2 * v210[33]) | ((v210[32] & 8) != 0))
        {
          case 2:
            v203 = 0;
            v149 = *&v210[8];
            v150 = *&v210[24];
LABEL_153:
            *v204 = v134;
            *&v204[8] = v133;
            *&v204[16] = v135;
            *&v204[24] = v149;
            v205 = v150;
            LOBYTE(v206) = v136 & 0xF7;
            v84 = v203;
            FormatGroupBinding.Text.bind(binder:context:)(v58, v197);
            if (v84)
            {
              goto LABEL_154;
            }

            goto LABEL_136;
          case 3:
          case 4:
            v207 = v209;
            v208 = v131;
            v215 = 5;
            sub_1D5FD78CC(&v209, v204);

            v177 = sub_1D703E0C8(&v207, &v215);
            v203 = 0;
            v137 = v197;
            v138 = v184;
            FormatOptionCollection.subscript.getter(v134, v133, v184);
            if ((*v186)(v138, 1, v194) == 1)
            {

              sub_1D5B6EF64(v138, &qword_1EDF337F0, type metadata accessor for FormatOption);
              if ((*(v137 + 48) & 1) == 0)
              {
                type metadata accessor for FormatLayoutError();
                sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
                swift_allocError();
                *v166 = v134;
                v166[1] = v133;
                swift_storeEnumTagMultiPayload();
                swift_willThrow();

                goto LABEL_172;
              }

              v139 = 1;
              v140 = v183;
            }

            else
            {
              v151 = v180;
              sub_1D5D5E33C(v138, v180, type metadata accessor for FormatOption);
              *v204 = v151[2];
              v152 = v177;

              FormatOptionValue.type.getter(&v207);
              if ((sub_1D6183C84(v207, v152) & 1) == 0)
              {
                v197 = type metadata accessor for FormatDerivedDataError();
                sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
                swift_allocError();
                v163 = v162;
                v164 = v151[1];
                v203 = *v151;
                *v204 = v151[2];

                FormatOptionValue.type.getter(&v207);
                v165 = v207;
                *v163 = v203;
                *(v163 + 8) = v164;
                *(v163 + 16) = v165;
                *(v163 + 24) = v152;
                swift_storeEnumTagMultiPayload();
                swift_willThrow();

                sub_1D62B51D0(v151, type metadata accessor for FormatOption);

                goto LABEL_172;
              }

              swift_bridgeObjectRelease_n();
              v140 = v183;
              sub_1D5D5E33C(v151, v183, type metadata accessor for FormatOption);
              v139 = 0;
            }

            (*v190)(v140, v139, 1, v194);
            sub_1D5B6EF64(v140, &qword_1EDF337F0, type metadata accessor for FormatOption);
            v133 = *(&v209 + 1);
            v136 = v210[32];
            v84 = v203;
            v58 = v195;
            switch((2 * v210[33]) | ((v210[32] & 8) != 0))
            {
              case 2:
                v150 = *&v210[24];
                v149 = *&v210[8];
                v135 = *v210;
                v134 = v209;
                goto LABEL_153;
              case 12:
                goto LABEL_159;
              default:
                goto LABEL_139;
            }

          case 12:
LABEL_159:
            v203 = v84;
            if (!(v133 >> 6) || v133 >> 6 == 1)
            {
              goto LABEL_139;
            }

            LOBYTE(v207) = v133 & 0x3F;
            sub_1D5B49474(0, &qword_1EDF329A8);
            if ((swift_dynamicCast() & 1) == 0)
            {
              memset(v204, 0, sizeof(v204));
              sub_1D5BFB774(v204, &qword_1EDF329A0, &qword_1EDF329A8);
              goto LABEL_139;
            }

            v153 = *&v204[24];
            v154 = *&v204[32];
            __swift_project_boxed_opaque_existential_1(v204, *&v204[24]);
            v155 = v203;
            (*(v154 + 8))(v58, v197, v153, v154);
            if (v155)
            {
              __swift_destroy_boxed_opaque_existential_1(v204);

LABEL_172:

              sub_1D5D07BA8(v200, v201, v214);
LABEL_181:

              return;
            }

            v203 = 0;
            __swift_destroy_boxed_opaque_existential_1(v204);

            break;
          default:
LABEL_136:
            v203 = v84;
            goto LABEL_139;
        }
      }

LABEL_4:

      sub_1D5D07BA8(v200, v201, v214);
LABEL_5:

LABEL_6:
      v45 += 4;
      if (!--v44)
      {
        return;
      }
    }

    v196 = v44;
    v62 = *(v49 + 32);
    v211 = *(v49 + 16);
    v212 = v62;
    v63 = *(v49 + 48);
    *&v213[16] = *(v49 + 64);
    *v213 = v63;
    v65 = *(&v211 + 1);
    v64 = v211;
    v66 = v62;
    v67 = v213[16];
    switch((2 * v213[17]) | ((v213[16] & 8) != 0))
    {
      case 2:
        v200 = v46;
        v201 = v47;
        v214 = v48;
        sub_1D5D03180(v46, v47, v48);

        sub_1D5FD78CC(&v211, &v209);
LABEL_64:
        switch(v67 >> 4)
        {
          case 3u:
            if (BYTE1(v66) <= 1u)
            {
              if (v66 > 0xFDu)
              {
LABEL_73:
                sub_1D5FD7B18(&v211);
                goto LABEL_74;
              }
            }

            else if (BYTE1(v66) != 2 && BYTE1(v66) != 3 || v66 > 0xFDu)
            {
              goto LABEL_73;
            }

            *v204 = v64;
            *&v204[8] = v65;
            v204[16] = v66 & 1;
            sub_1D5FD78CC(&v211, &v209);
            sub_1D5FD78CC(&v211, &v209);
            v156 = v203;
            sub_1D60ECF10(v197);
            v203 = v156;
            if (v156)
            {
              sub_1D5FD7B18(&v211);
              sub_1D5D2F2C8(*v204, *&v204[8], v204[16]);
              sub_1D5FD7B18(&v211);
              sub_1D5D07BA8(v200, v201, v214);

              return;
            }

            sub_1D5FD7B18(&v211);
            sub_1D5D2F2C8(*v204, *&v204[8], v204[16]);
            goto LABEL_73;
          case 8u:
            if (!(v65 >> 6) || v65 >> 6 == 1)
            {
              goto LABEL_73;
            }

            v204[0] = v65 & 0x3F;
            sub_1D5B49474(0, &qword_1EDF329A8);
            if ((swift_dynamicCast() & 1) == 0)
            {
              v209 = 0u;
              memset(v210, 0, 24);
              sub_1D5BFB774(&v209, &qword_1EDF329A0, &qword_1EDF329A8);
              goto LABEL_73;
            }

            v115 = *&v210[8];
            v116 = *&v210[16];
            __swift_project_boxed_opaque_existential_1(&v209, *&v210[8]);
            v117 = v203;
            (*(v116 + 8))(v195, v197, v115, v116);
            v44 = v196;
            if (v117)
            {
              __swift_destroy_boxed_opaque_existential_1(&v209);
              goto LABEL_174;
            }

            v203 = 0;
            __swift_destroy_boxed_opaque_existential_1(&v209);
            sub_1D5FD7B18(&v211);
LABEL_62:
            sub_1D5D07BA8(v200, v201, v214);
            break;
          default:
            goto LABEL_73;
        }

        goto LABEL_5;
      case 3:
      case 4:
        *v204 = v211;
        *&v204[16] = v62;
        LOBYTE(v207) = 5;
        v68 = v46;
        v69 = v47;
        v70 = v48;
        sub_1D5FD78CC(&v211, &v209);
        v200 = v68;
        v201 = v69;
        v214 = v70;
        sub_1D5D03180(v68, v69, v70);

        sub_1D5FD78CC(&v211, &v209);

        v71 = v203;
        v72 = sub_1D703E0C8(v204, &v207);
        if (v71)
        {

LABEL_174:
          sub_1D5FD7B18(&v211);
LABEL_180:
          sub_1D5D07BA8(v200, v201, v214);
          goto LABEL_181;
        }

        v199 = v72;
        v203 = 0;
        v73 = *(v197 + v191);
        v74 = *(v73 + 16);
        swift_beginAccess();
        v75 = *(*(v74 + 16) + 16);
        v202 = v66;
        if (v75 && (sub_1D5B69D90(v64, v65), (v76 & 1) != 0))
        {
          swift_endAccess();
          v77 = v189;
          sub_1D5D25108(v189);
          v78 = v77;
          v79 = v188;
          sub_1D5D5E33C(v78, v188, type metadata accessor for FormatOption);
          v80 = v193;
          sub_1D5D5E33C(v79, v193, type metadata accessor for FormatOption);
        }

        else
        {
          swift_endAccess();
          swift_beginAccess();
          if (!*(*(v73 + 24) + 16) || (sub_1D5B69D90(v64, v65), (v91 & 1) == 0))
          {
            swift_endAccess();
            v101 = *v190;
            v102 = v193;
            v103 = v194;
            (*v190)(v193, 1, 1, v194);

            sub_1D5B6EF64(v102, &qword_1EDF337F0, type metadata accessor for FormatOption);
            if (*(v197 + 48))
            {

              v97 = v192;
              v101(v192, 1, 1, v103);
              goto LABEL_72;
            }

            type metadata accessor for FormatLayoutError();
            sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
            swift_allocError();
            *v161 = v64;
            v161[1] = v65;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

LABEL_178:
            sub_1D5FD7B18(&v211);
            sub_1D5D07BA8(v200, v201, v214);
            goto LABEL_181;
          }

          swift_endAccess();
          v80 = v193;
          sub_1D5D25108(v193);
        }

        v92 = *v190;
        v93 = v194;
        (*v190)(v80, 0, 1, v194);
        v94 = v185;
        sub_1D5D5E33C(v80, v185, type metadata accessor for FormatOption);
        *&v209 = v94[2];
        v95 = v199;

        FormatOptionValue.type.getter(v204);
        v96 = v95;
        if (sub_1D6183C84(v204[0], v95))
        {

          swift_bridgeObjectRelease_n();
          v97 = v192;
          sub_1D5D5E33C(v94, v192, type metadata accessor for FormatOption);
          v92(v97, 0, 1, v93);
LABEL_72:
          sub_1D5B6EF64(v97, &qword_1EDF337F0, type metadata accessor for FormatOption);
          v65 = *(&v211 + 1);
          v67 = v213[16];
          switch((2 * v213[17]) | ((v213[16] & 8) != 0))
          {
            case 1:
            case 5:
            case 6:
            case 7:
            case 9:
            case 10:
            case 11:
            case 13:
              goto LABEL_74;
            case 2:
              LOWORD(v66) = v212;
              v64 = v211;
              goto LABEL_64;
            case 12:
              goto LABEL_57;
            default:
              goto LABEL_73;
          }
        }

        type metadata accessor for FormatDerivedDataError();
        sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
        swift_allocError();
        v158 = v157;
        v159 = v94[1];
        v203 = *v94;
        *&v209 = v94[2];

        FormatOptionValue.type.getter(v204);
        v160 = v204[0];
        *v158 = v203;
        *(v158 + 8) = v159;
        *(v158 + 16) = v160;
        *(v158 + 24) = v96;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        sub_1D62B51D0(v94, type metadata accessor for FormatOption);
        goto LABEL_178;
      case 12:
        v200 = v46;
        v201 = v47;
        v214 = v48;
        sub_1D5D03180(v46, v47, v48);

LABEL_57:
        if (!(v65 >> 6) || v65 >> 6 == 1)
        {
          goto LABEL_74;
        }

        v204[0] = v65 & 0x3F;
        sub_1D5B49474(0, &qword_1EDF329A8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v209 = 0u;
          memset(v210, 0, 24);
          sub_1D5BFB774(&v209, &qword_1EDF329A0, &qword_1EDF329A8);
LABEL_74:
          sub_1D5D07BA8(v200, v201, v214);

LABEL_75:
          v44 = v196;
          goto LABEL_6;
        }

        v98 = *&v210[8];
        v99 = *&v210[16];
        __swift_project_boxed_opaque_existential_1(&v209, *&v210[8]);
        v100 = v203;
        (*(v99 + 8))(v195, v197, v98, v99);
        v44 = v196;
        if (v100)
        {
          __swift_destroy_boxed_opaque_existential_1(&v209);
          goto LABEL_180;
        }

        v203 = 0;
        __swift_destroy_boxed_opaque_existential_1(&v209);
        goto LABEL_62;
      default:
        goto LABEL_75;
    }
  }
}

uint64_t sub_1D6220CF8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v11 = result;
    v7 = (a3 + 56);
    do
    {
      if ((*v7 & 0x8000000000000000) != 0)
      {
        v8 = *(v7 - 2);
        v9 = *(v7 - 8);
        v10 = *((*v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
        v12 = *(v10 + 24);
        v13 = *(v7 - 3);
        sub_1D5D03180(v13, v8, v9);

        sub_1D6220CF8(v11, a2, v12);
        if (v4)
        {

          sub_1D5D07BA8(v13, v8, v9);
        }

        sub_1D6251CF0(v11, a2, *(v10 + 32));
        v4 = 0;

        sub_1D5D07BA8(v13, v8, v9);
      }

      v7 += 4;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1D6220E24(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = result;
    v8 = (a3 + 32);
    do
    {
      v9 = v8[5];
      v10 = v8[7];
      v74 = v8[6];
      v75 = v10;
      v11 = v8[1];
      v12 = v8[3];
      v70 = v8[2];
      v71 = v12;
      v13 = v8[3];
      v14 = v8[5];
      v72 = v8[4];
      v73 = v14;
      v15 = v8[1];
      v68 = *v8;
      v69 = v15;
      v16 = v8[7];
      v77[6] = v74;
      v77[7] = v16;
      v77[2] = v70;
      v77[3] = v13;
      v77[4] = v72;
      v77[5] = v9;
      v76 = *(v8 + 128);
      v78 = *(v8 + 128);
      v77[0] = v68;
      v77[1] = v11;
      v17 = sub_1D5F78DC4(v77);
      if (v17)
      {
        if (v17 == 1)
        {
          v18 = sub_1D5DEA32C(v77);
          v59 = *v18;
          v19 = *(v18 + 64);
          v21 = *(v18 + 16);
          v20 = *(v18 + 32);
          v62 = *(v18 + 48);
          v63 = v19;
          v60 = v21;
          v61 = v20;
          v23 = *(v18 + 96);
          v22 = *(v18 + 112);
          v24 = *(v18 + 80);
          v67 = *(v18 + 128);
          v65 = v23;
          v66 = v22;
          v64 = v24;
          if (sub_1D6011234(&v59) != 1)
          {
            v29 = sub_1D5D756B8(&v59);
            v30 = v29[3];
            v32 = *v29;
            v31 = v29[1];
            v48[2] = v29[2];
            v48[3] = v30;
            v48[0] = v32;
            v48[1] = v31;
            v33 = v29[7];
            v35 = v29[4];
            v34 = v29[5];
            v48[6] = v29[6];
            v48[7] = v33;
            v48[4] = v35;
            v48[5] = v34;
            if (sub_1D6011280(v48) == 1)
            {
              v36 = *(sub_1D5D756C8(v48) + 112);
              v58 = v76;
              v56 = v74;
              v57 = v75;
              v52 = v70;
              v53 = v71;
              v54 = v72;
              v55 = v73;
              v50 = v68;
              v51 = v69;
              v37 = sub_1D5DEA32C(&v50);
              sub_1D5F78E88(v37, v49);
              sub_1D6212DD8(v7, a2, v36);
              if (v4)
              {
                return sub_1D5ECEFDC(&v68);
              }
            }

            else
            {
              v43 = sub_1D5D756C8(v48);
              v44 = *v43;
              v46 = v43[6];
              v45 = v43[7];
              v50 = v68;
              v51 = v69;
              v56 = v74;
              v57 = v75;
              v58 = v76;
              v52 = v70;
              v53 = v71;
              v54 = v72;
              v55 = v73;
              v47 = sub_1D5DEA32C(&v50);
              sub_1D5F78E88(v47, v49);
              sub_1D6212DD8(v7, a2, v44);
              if (v4)
              {
                return sub_1D5ECEFDC(&v68);
              }

              if (v46)
              {

                sub_1D620B270(v7, a2, v46);
                sub_1D620B270(v7, a2, v45);
                v4 = 0;
                sub_1D5CDE22C(v46);
              }
            }

LABEL_23:
            result = sub_1D5ECEFDC(&v68);
            goto LABEL_4;
          }

          *&v48[0] = *sub_1D5D756B8(&v59);
          v52 = v70;
          v53 = v71;
          v50 = v68;
          v51 = v69;
          v58 = v76;
          v56 = v74;
          v57 = v75;
          v54 = v72;
          v55 = v73;
          v25 = sub_1D5DEA32C(&v50);
          sub_1D5ECEF80(&v68, v49);
          sub_1D5F78E88(v25, v49);
          FormatColor.bind(binder:context:)(v7, a2);
          if (v4)
          {
            sub_1D5ECEFDC(&v68);
          }

          sub_1D5ECEFDC(&v68);
        }

        else
        {
          result = sub_1D5DEA32C(v77);
        }
      }

      else
      {
        v26 = sub_1D5DEA32C(v77);
        sub_1D5F78F40(v26, v49);
        v54 = v49[4];
        v55 = v49[5];
        v56 = v49[6];
        v57 = v49[7];
        v50 = v49[0];
        v51 = v49[1];
        v52 = v49[2];
        v53 = v49[3];
        if (sub_1D6011280(&v50) == 1)
        {
          v27 = *(sub_1D5D756C8(&v50) + 112);
          v67 = v76;
          v65 = v74;
          v66 = v75;
          v61 = v70;
          v62 = v71;
          v63 = v72;
          v64 = v73;
          v59 = v68;
          v60 = v69;
          v28 = sub_1D5DEA32C(&v59);
          sub_1D5F78EE4(v28, v48);
          sub_1D6212DD8(v7, a2, v27);
        }

        else
        {
          v38 = sub_1D5D756C8(&v50);
          v39 = *v38;
          v41 = v38[6];
          v40 = v38[7];
          v59 = v68;
          v60 = v69;
          v65 = v74;
          v66 = v75;
          v67 = v76;
          v61 = v70;
          v62 = v71;
          v63 = v72;
          v64 = v73;
          v42 = sub_1D5DEA32C(&v59);
          sub_1D5F78EE4(v42, v48);
          sub_1D6212DD8(v7, a2, v39);
          if (v4)
          {
            return sub_1D5ECEFDC(&v68);
          }

          if (!v41)
          {
            goto LABEL_23;
          }

          sub_1D620B270(v7, a2, v41);
          sub_1D620B270(v7, a2, v40);
          v4 = 0;
          sub_1D5CDE22C(v41);
        }

        result = sub_1D5ECEFDC(&v68);
        if (v4)
        {
          return result;
        }
      }

LABEL_4:
      v8 = (v8 + 136);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1D62212CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for FormatPropertyDefinition(0);
  v67 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v44 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  if (!v11)
  {
    return;
  }

  v12 = 0;
  v13 = a3 + 32;
  v45 = a3 + 32;
  v46 = v11;
  v14 = a2;
  v15 = a1;
  v47 = a1;
  v48 = a2;
  while (1)
  {
    v16 = v13 + 88 * v12;
    v17 = *(v16 + 48);
    v63 = *(v16 + 32);
    v64 = v17;
    v65 = *(v16 + 64);
    v66 = *(v16 + 80);
    v18 = v66;
    v19 = *(v16 + 16);
    v62[0] = *v16;
    v62[1] = v19;
    v20 = v66 >> 6;
    if (!v20)
    {
      goto LABEL_4;
    }

    v21 = v63;
    v22 = v64;
    v23 = v65;
    if (v20 != 1)
    {
      break;
    }

    if ((v66 & 1) == 0)
    {
      v24 = *(v64 + 32);
      v56 = *(v64 + 16);
      v57 = v24;
      v58[0] = *(v64 + 48);
      *(v58 + 15) = *(v64 + 63);
      v54 = *(&v63 + 1);
      sub_1D62B7D1C(v62, &v59);
      v52 = v18;
      sub_1D618EC0C(v21, v54, v22, *(&v22 + 1), v23, *(&v23 + 1), v18);
      v53 = v22;
      v51 = *(&v23 + 1);
      sub_1D618ECBC(v22, *(&v22 + 1), v23, *(&v23 + 1), 0);
      v25 = v47;
      v26 = v48;
      FormatCommandBinding.bind(binder:context:)(v47, v48);
      if (v4)
      {
        v42 = v53;
        v43 = v51;
        sub_1D60CF6F4(v21, v54, v53, *(&v22 + 1), v23, v51, v52);
        sub_1D62B7D78(v62);
        sub_1D5E32940(v42, *(&v22 + 1), v23, v43, 0);
        return;
      }

      v55 = *(&v22 + 1);
      sub_1D620BE38(v25, v26, *(&v22 + 1));
      v4 = 0;
      v27 = v51;
      *&v56 = v23;
      *(&v56 + 1) = v51;
      sub_1D5B49474(0, &qword_1EDF329A8);

      v28 = swift_dynamicCast();
      v29 = v53;
      if (v28)
      {
        v31 = *(&v60 + 1);
        v30 = v61;
        __swift_project_boxed_opaque_existential_1(&v59, *(&v60 + 1));
        (*(v30 + 8))(v47, v48, v31, v30);
        __swift_destroy_boxed_opaque_existential_1(&v59);
        v29 = v53;
        v32 = v55;
        sub_1D60CF6F4(v21, v54, v53, v55, v23, v27, v52);
      }

      else
      {
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
        sub_1D5BFB774(&v59, &qword_1EDF329A0, &qword_1EDF329A8);
        v32 = v55;
        sub_1D60CF6F4(v21, v54, v29, v55, v23, v27, v52);
      }

      sub_1D62B7D78(v62);
      sub_1D5E32940(v29, v32, v23, v27, 0);
      v13 = v45;
      v11 = v46;
      v15 = v47;
      v14 = v48;
    }

LABEL_4:
    if (++v12 == v11)
    {
      return;
    }
  }

  v49 = v12;
  v50 = v65;
  v33 = v64;
  v34 = v15;
  v52 = v66;
  v55 = *(&v64 + 1);
  v35 = v14;
  v36 = *(v63 + 16);
  v37 = *(&v63 + 1);
  sub_1D62B7D1C(v62, &v59);
  v53 = v33;
  v54 = v37;
  v38 = v37;
  v39 = v52;
  v51 = *(&v23 + 1);
  sub_1D618EC0C(v21, v38, v33, v55, v50, *(&v23 + 1), v52);
  if (!v36)
  {
LABEL_3:
    sub_1D62B7D78(v62);
    sub_1D60CF6F4(v21, v54, v53, v55, v50, v51, v39);
    v14 = v35;
    v15 = v34;
    v13 = v45;
    v11 = v46;
    v12 = v49;
    goto LABEL_4;
  }

  v40 = 0;
  v41 = v44;
  while (v40 < *(v21 + 16))
  {
    sub_1D62B50EC(v21 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v40, v41, type metadata accessor for FormatPropertyDefinition);
    FormatPropertyDefinition.bind(binder:context:)(v34, v35);
    if (v4)
    {
      sub_1D62B51D0(v41, type metadata accessor for FormatPropertyDefinition);
      sub_1D62B7D78(v62);
      sub_1D60CF6F4(v21, v54, v53, v55, v50, v51, v39);
      return;
    }

    ++v40;
    sub_1D62B51D0(v41, type metadata accessor for FormatPropertyDefinition);
    if (v36 == v40)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
}

uint64_t sub_1D6221808(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    for (i = (a3 + 64); ; i += 5)
    {
      v8 = *i;

      swift_bridgeObjectRetain_n();
      sub_1D6215F90(v6, a2, v8);
      if (v3)
      {
        break;
      }

      swift_bridgeObjectRelease_n();

      if (!--v4)
      {
        return result;
      }
    }

    swift_bridgeObjectRelease_n();
  }

  return result;
}

void sub_1D62218D8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v219 = type metadata accessor for FormatOption();
  v6 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219, v7);
  v9 = &v206 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v206 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v206 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v206 - v20;
  v22 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v218 = &v206 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = *(a3 + 16);
  if (!v28)
  {
    return;
  }

  v217 = &v206 - v27;
  v212 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;
  v211 = (v6 + 48);
  v209 = (v6 + 56);
  v207 = v13;
  v208 = v9;
  v29 = (a3 + 56);
  v226 = a2;
  v225 = a1;
  v213 = v17;
  v30 = a2;
  v210 = v21;
  while (1)
  {
    v37 = *(v29 - 3);
    v36 = *(v29 - 2);
    v38 = *(v29 - 8);
    v39 = *v29;
    v40 = *v29 >> 61;
    if (v40 <= 1)
    {
      break;
    }

    if (v40 == 2)
    {
      *&v224 = v29;
      v227 = v28;
      v31 = *((v39 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v32 = *((v39 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v33 = v38;
      v34 = v36;
      sub_1D5D03180(v37, v36, v38);

      v35 = v237;
      sub_1D62433FC(a1, v30, v31, v32);
      v237 = v35;
      if (v35)
      {

        v188 = v37;
        v189 = v34;
        v190 = v33;
        goto LABEL_218;
      }

      sub_1D5D07BA8(v37, v34, v33);

      v28 = v227;
      v29 = v224;
    }

    else if (v40 == 3)
    {
      v222 = *(v29 - 3);
      v41 = v36;
      v42 = v39 & 0x1FFFFFFFFFFFFFFFLL;
      v44 = *((v39 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v43 = *((v39 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v45 = *((v39 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v46 = *(v44 + 32);
      v228 = *(v44 + 16);
      *v229 = v46;
      *&v229[16] = *(v44 + 48);
      *&v229[31] = *(v44 + 63);
      v47 = *(&v228 + 1);
      v48 = v46;
      v49 = v229[32];
      if (v229[34])
      {
        v50 = 8;
      }

      else
      {
        v50 = 0;
      }

      v51 = v50 & 0xFFFFFFF8 | (*&v229[32] >> 11) & 7;
      v223 = v38;
      v227 = v28;
      if (v51 <= 4)
      {
        if (v51 > 1)
        {
          if (v51 == 3)
          {
            goto LABEL_117;
          }

LABEL_122:
          v130 = v222;
          v86 = v36;
LABEL_125:
          sub_1D5D03180(v130, v36, v38);

          v88 = v237;
LABEL_126:
          sub_1D62218D8(v225, v226, v43);
          if (!v88)
          {
            v131 = v45 >> 61;
            if ((v45 >> 61) > 1)
            {
              if (v131 == 2)
              {
                v30 = v226;
                sub_1D62433FC(v225, v226, *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x10), *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x18));
                v237 = 0;

                sub_1D5D07BA8(v222, v86, v223);
              }

              else
              {
                if (v131 == 3)
                {
                  v220 = v42;
                  v221 = v86;
                  *&v224 = v29;
                  v132 = v222;
                  v133 = *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                  v134 = *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                  v135 = *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                  v136 = *(v133 + 24);
                  v137 = *(v133 + 32);
                  v138 = *(v133 + 40);
                  v139 = *(v133 + 64);
                  if (*(v133 + 66))
                  {
                    v140 = 8;
                  }

                  else
                  {
                    v140 = 0;
                  }

                  v141 = v140 & 0xFFFFFFF8 | (v139 >> 11) & 7;
                  if (v141 <= 3)
                  {
                    v142 = v226;
                    if ((v141 - 1) >= 2)
                    {
                      *v233 = *(v133 + 16);
                      *&v233[8] = v136;
                      if (v141)
                      {
                        v233[16] = v137;
                        FormatTagBinding.Command.bind(binder:context:)(v225, v226);
                      }

                      else
                      {
                        *&v233[16] = v137;
                        v233[24] = v138;
                        FormatGroupBinding.Command.bind(binder:context:)(v225, v226);
                      }
                    }
                  }

                  else
                  {
                    v142 = v226;
                    if (((1 << v141) & 0x330) == 0)
                    {
                      *v233 = *(v133 + 16);
                      *&v233[8] = v136;
                      *&v233[16] = v137;
                      if (v141 == 6)
                      {
                        v233[24] = v138;
                        FormatSportsEventBinding.Command.bind(binder:context:)(v225, v226);
                      }

                      else
                      {
                        *&v233[24] = v138;
                        *&v233[32] = *(v133 + 48);
                        *&v233[48] = v139 & 0xC7FF;
                        FormatString.bind(binder:context:)(v225, v226);
                      }
                    }
                  }

                  v176 = v225;
                  sub_1D62218D8(v225, v142, v134);
                  sub_1D625C2EC(v176, v142, v135, v177);
                  v237 = 0;

                  sub_1D5D07BA8(v132, v221, v223);

                  v28 = v227;
                  v29 = v224;
                  a1 = v225;
                  v30 = v142;
                  goto LABEL_5;
                }

                v237 = 0;

                sub_1D5D07BA8(v222, v86, v223);

                v30 = v226;
              }

              v28 = v227;
              goto LABEL_169;
            }

            *&v224 = v29;
            v221 = v86;
            v220 = v42;
            if (!v131)
            {
              v143 = *(v45 + 40);
              v144 = *(v45 + 48);
              v145 = *(v45 + 56);
              v146 = *(v45 + 64);
              v147 = *(v45 + 72);
              if ((v143 & 4) != 0)
              {
                *v233 = *(v45 + 16);
                FormatTextContent.bind(binder:context:)(v225, v226);
              }

              else
              {
                sub_1D6245970(v225, v226, *(v45 + 16), *(v45 + 24), *(v45 + 32), v143);
              }

              v216 = v45;
              if ((v146 & 0x2000000000000000) != 0)
              {
                *v233 = v144;
                FormatSyncImageContent.bind(binder:context:)(v225, v226);
                v161 = v223;
                v162 = v222;
              }

              else
              {
                v158 = *(v144 + 32);
                *v233 = *(v144 + 16);
                *&v233[16] = v158;
                *&v233[32] = *(v144 + 48);
                *&v233[47] = *(v144 + 63);
                v159 = v225;
                v160 = v226;
                FormatCommandBinding.bind(binder:context:)(v225, v226);
                sub_1D6226080(v159, v160, v145);
                v161 = v223;
                *v233 = v146;

                FormatSyncImageContent.bind(binder:context:)(v159, v160);
                v162 = v222;
              }

              v167 = v147 >> 62;
              if ((v147 >> 62) > 1)
              {
                if (v167 == 2)
                {
                  sub_1D6245CC4(v225, v226, *((v147 & 0x3FFFFFFFFFFFFFFFLL) + 0x10), *((v147 & 0x3FFFFFFFFFFFFFFFLL) + 0x18));
                }

                v237 = 0;
              }

              else
              {
                if (v167)
                {
                  v170 = *((v147 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                  v171 = *(v170 + 32);
                  *v233 = *(v170 + 16);
                  *&v233[16] = v171;
                  *&v233[32] = *(v170 + 48);
                  *&v233[47] = *(v170 + 63);
                  FormatCommandBinding.bind(binder:context:)(v225, v226);
                  v237 = 0;
                }

                else
                {
                  v168 = swift_projectBox();
                  v169 = v218;
                  sub_1D62B50EC(v168, v218, type metadata accessor for FormatCommandOpenURL);
                  sub_1D5F86DA0(v226);
                  v237 = 0;
                  sub_1D62B51D0(v169, type metadata accessor for FormatCommandOpenURL);
                }
              }

              sub_1D5D07BA8(v162, v221, v161);

              v30 = v226;
              v28 = v227;
              v29 = v224;
LABEL_169:
              a1 = v225;
              goto LABEL_5;
            }

            v215 = v43;
            v214 = v44;
            v148 = *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v150 = *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
            v149 = *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
            v151 = *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
            v152 = *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
            v153 = *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
            if ((~v148 & 0xF000000000000007) == 0 && (*((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x28) & 7) == 7)
            {
              v30 = v226;
              v29 = v224;
            }

            else
            {
              v216 = *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
              v237 = v152;
              v155 = v153;
              v156 = *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
              v157 = *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              *v233 = v157;
              *&v233[8] = v148;
              *&v233[16] = v156;
              *&v233[24] = v150;
              sub_1D62B7098(v157, v148, v156, v150);
              FormatMenuTitle.bind(binder:context:)(v225, v226);
              sub_1D62B7130(v157, v148, v156, v150);
              v30 = v226;
              v29 = v224;
              v153 = v155;
              v152 = v237;
              v151 = v216;
            }

            if ((v149 & 0x3000000000000007 & v152) == 0x3000000000000007)
            {
              goto LABEL_155;
            }

            *v233 = v149;
            *&v233[8] = v151;
            *&v233[16] = v152;
            v163 = v151;
            v237 = 0;
            sub_1D62B6FC0(v149, v151, v152);
            v164 = v237;
            FormatMenuImage.bind(binder:context:)(v225, v30);
            if (!v164)
            {
              sub_1D62B703C(v149, v163, v152);
LABEL_155:
              a1 = v225;
              sub_1D6223ECC(v225, v30, v153);
              v237 = 0;
              v165 = v221;
              v166 = v222;

              sub_1D5D07BA8(v166, v165, v223);
              goto LABEL_93;
            }

            sub_1D62B703C(v149, v163, v152);

            sub_1D5D07BA8(v222, v221, v223);
LABEL_221:

            return;
          }

LABEL_206:

          sub_1D5D07BA8(v222, v86, v223);
          goto LABEL_221;
        }

        if (v51)
        {
          goto LABEL_122;
        }

        v84 = (v229[8] >> 3) & 7;
        if (v84 <= 1)
        {
          if (!v84)
          {
            goto LABEL_117;
          }

          goto LABEL_122;
        }

        if (v84 != 2 && v84 != 3 && v229[8] >> 6 && v229[8] >> 6 != 1)
        {
          v85 = v229[8] & 7;
          if (v85 > 1)
          {
            goto LABEL_122;
          }

          goto LABEL_59;
        }

        goto LABEL_117;
      }

      if (v51 <= 6)
      {
        if (v51 == 5)
        {
          goto LABEL_122;
        }

        if (v229[8] >> 6 && v229[8] >> 6 != 1)
        {
          v85 = v229[8] & 0x3F;
          if (v85 > 1)
          {
            goto LABEL_122;
          }

LABEL_59:
          if (v85)
          {
            v86 = v36;
            if ((~*(&v228 + 1) & 0xF000000000000007) != 0)
            {
              *v233 = *(&v228 + 1);
              v87 = *(&v228 + 1);
              sub_1D5D03180(v222, v36, v38);

              sub_1D5CFCFAC(v87);
              v88 = v237;
              FormatTextContent.bind(binder:context:)(v225, v226);
              if (v88)
              {
                goto LABEL_226;
              }

              goto LABEL_126;
            }

LABEL_124:
            v130 = v222;
            v36 = v86;
            goto LABEL_125;
          }

          goto LABEL_122;
        }

LABEL_117:
        if (v46 > 1u)
        {
          v86 = v36;
        }

        else
        {
          v86 = v36;
          if (v46 && (~v228 & 0xF000000000000007) != 0)
          {
            *v233 = v228;
            v129 = v228;
            sub_1D5D03180(v222, v36, v38);
            v216 = v45;

            sub_1D5CFCFAC(v129);
            v88 = v237;
            FormatTextContent.bind(binder:context:)(v225, v226);
            if (v88)
            {
LABEL_226:

              goto LABEL_206;
            }

            goto LABEL_183;
          }
        }

        goto LABEL_124;
      }

      if (v51 != 7 || !(*&v229[32] >> 14))
      {
        goto LABEL_122;
      }

      v216 = v45;
      v206 = v228;
      if (*&v229[32] >> 14 != 1)
      {
        v215 = v43;
        v214 = v44;
        v220 = v42;
        v221 = v36;
        v172 = *&v229[24];
        v173 = *&v229[32] & 0x7FF;
        v224 = *&v229[8];
        switch((*&v229[32] >> 7) & 0xE | (*&v229[32] >> 3) & 1)
        {
          case 2:
            sub_1D5D03180(v222, v221, v223);
            v186 = v49 >> 4;

            v88 = v237;
            v175 = v224;
            if (((1 << v186) & 0x1EF7) != 0)
            {
              v174 = v47;
              goto LABEL_174;
            }

            v174 = v47;
            if (v186 == 3)
            {
              *v233 = v206;
              *&v233[8] = v47;
              *&v233[16] = v48;
              sub_1D62B416C(v226);
              if (v88)
              {
                goto LABEL_233;
              }

              goto LABEL_198;
            }

            if ((v47 & 0x80) == 0)
            {
              goto LABEL_174;
            }

            LOBYTE(v235) = v47 & 0x3F;
            sub_1D5B49474(0, &qword_1EDF329A8);
            if (swift_dynamicCast())
            {
              goto LABEL_191;
            }

            goto LABEL_195;
          case 3:
          case 4:
            v235 = v228;
            v236 = v46;
            v234 = 5;
            v174 = *(&v228 + 1);
            v180 = v228;
            sub_1D5D03180(v222, v221, v223);

            sub_1D62B5248(&v228, v233);

            v88 = v237;
            v181 = sub_1D703E0C8(&v235, &v234);
            if (v88)
            {

              goto LABEL_225;
            }

            v182 = v172;
            v183 = v207;
            sub_1D6BEBFEC(v180, v174, v181, 1, v207);

            sub_1D5B6EF64(v183, &qword_1EDF337F0, type metadata accessor for FormatOption);
            v175 = v224;
            v172 = v182;
            goto LABEL_174;
          case 0xC:
            sub_1D5D03180(v222, v221, v223);

            v174 = v47;
            if ((v47 & 0x80) == 0)
            {
              goto LABEL_172;
            }

            LOBYTE(v235) = v47 & 0x3F;
            sub_1D5B49474(0, &qword_1EDF329A8);
            if (swift_dynamicCast())
            {
LABEL_191:
              v184 = *&v233[24];
              v185 = *&v233[32];
              __swift_project_boxed_opaque_existential_1(v233, *&v233[24]);
              v88 = v237;
              (*(v185 + 8))(v225, v226, v184, v185);
              if (v88)
              {
                __swift_destroy_boxed_opaque_existential_1(v233);
LABEL_233:

                goto LABEL_224;
              }

              __swift_destroy_boxed_opaque_existential_1(v233);
            }

            else
            {
LABEL_195:
              memset(v233, 0, 40);
              sub_1D5BFB774(v233, &qword_1EDF329A0, &qword_1EDF329A8);
              v88 = v237;
            }

LABEL_198:
            v174 = v47;
LABEL_173:
            v175 = v224;
LABEL_174:
            *v233 = v206;
            *&v233[8] = v174;
            *&v233[24] = v175;
            *&v233[16] = v48;
            *&v233[40] = v172;
            *&v233[48] = v173;
            FormatTextNodeBinding.bind(binder:context:)(v225, v226);
            if (!v88)
            {
              v86 = v221;
              v42 = v220;
              v44 = v214;
              v43 = v215;
LABEL_183:
              v45 = v216;
              goto LABEL_126;
            }

LABEL_224:

LABEL_225:
            sub_1D5D07BA8(v222, v221, v223);
            goto LABEL_221;
          default:
            sub_1D5D03180(v222, v221, v223);

            v174 = v47;
LABEL_172:
            v88 = v237;
            goto LABEL_173;
        }
      }

      *&v224 = v29;
      v235 = v228;
      v236 = v46;
      v234 = 5;
      v99 = v43;
      v100 = v228;
      sub_1D5D03180(v222, v36, v38);

      v101 = v99;

      sub_1D62B5248(&v228, v233);
      v102 = v237;
      v103 = sub_1D703E0C8(&v235, &v234);
      v237 = v102;
      if (v102)
      {

        sub_1D5D07BA8(v222, v41, v223);
        goto LABEL_219;
      }

      v214 = v103;
      v104 = v213;
      v105 = v226;
      v215 = v47;
      FormatOptionCollection.subscript.getter(v100, v47, v213);
      if ((*v211)(v104, 1, v219) == 1)
      {
        sub_1D5B6EF64(v104, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v43 = v101;
        if (*(v105 + 48))
        {
          v106 = 1;
          v107 = v210;
          v86 = v41;
LABEL_182:
          (*v209)(v107, v106, 1, v219);
          sub_1D5B6EF64(v107, &qword_1EDF337F0, type metadata accessor for FormatOption);

          v88 = v237;
          v29 = v224;
          goto LABEL_183;
        }

        type metadata accessor for FormatLayoutError();
        sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
        v193 = swift_allocError();
        v194 = v215;
        *v195 = v206;
        v195[1] = v194;
        swift_storeEnumTagMultiPayload();
        v237 = v193;
        swift_willThrow();

        v196 = v41;
        v197 = v223;
        v198 = v222;
      }

      else
      {
        v220 = v42;
        v178 = v208;
        sub_1D5D5E33C(v104, v208, type metadata accessor for FormatOption);
        *v233 = *(v178 + 16);
        v179 = v214;

        FormatOptionValue.type.getter(&v235);
        v43 = v101;
        if (sub_1D6183C84(v235, v179))
        {

          v107 = v210;
          sub_1D5D5E33C(v178, v210, type metadata accessor for FormatOption);
          v106 = 0;
          v86 = v41;
          v42 = v220;
          goto LABEL_182;
        }

        v237 = type metadata accessor for FormatDerivedDataError();
        sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
        v199 = swift_allocError();
        v200 = v178;
        v202 = v201;
        v221 = v41;
        v215 = v101;
        v204 = *v200;
        v203 = v200[1];
        *v233 = v200[2];

        FormatOptionValue.type.getter(&v235);
        v205 = v235;
        *v202 = v204;
        *(v202 + 8) = v203;
        v196 = v221;
        v198 = v222;
        *(v202 + 16) = v205;
        *(v202 + 24) = v179;
        v197 = v223;
        swift_storeEnumTagMultiPayload();
        v237 = v199;
        swift_willThrow();
        sub_1D62B51D0(v200, type metadata accessor for FormatOption);
      }

      v188 = v198;
      v189 = v196;
      v190 = v197;
LABEL_218:
      sub_1D5D07BA8(v188, v189, v190);
      goto LABEL_219;
    }

LABEL_5:
    v29 += 4;
    if (!--v28)
    {
      return;
    }
  }

  v227 = v28;
  if (!v40)
  {
    v52 = *(v39 + 32);
    *v233 = *(v39 + 16);
    *&v233[16] = v52;
    v53 = *(v39 + 64);
    *&v233[32] = *(v39 + 48);
    *&v233[48] = v53;
    v54 = *v233;
    v55 = *&v233[24];
    v223 = v38;
    v221 = v36;
    if ((v233[24] & 4) != 0)
    {
      *&v235 = *v233;
      sub_1D5D03180(v37, v36, v38);

      sub_1D5CFBAA8(v233, &v228);
      v60 = v237;
      FormatTextContent.bind(binder:context:)(a1, v30);
      if (v60)
      {
        sub_1D5D08954(v233);
        v187 = v37;
        goto LABEL_203;
      }
    }

    else
    {
      *&v224 = *&v233[16];
      v222 = *&v233[8];
      v56 = v37;
      v57 = v37;
      v58 = v36;
      v59 = v38;
      sub_1D5D03180(v57, v36, v38);

      sub_1D5CFBAA8(v233, &v228);
      v60 = v237;
      sub_1D6245970(a1, v226, v54, v222, v224, v55);
      if (v60)
      {
        sub_1D5D08954(v233);
        sub_1D5D07BA8(v56, v58, v59);
        goto LABEL_221;
      }

      v37 = v56;
      v30 = v226;
      a1 = v225;
    }

    v70 = *&v233[48];
    if ((*&v233[48] & 0x2000000000000000) == 0)
    {
      v71 = *&v233[40];
      v72 = *(*&v233[32] + 32);
      v228 = *(*&v233[32] + 16);
      *v229 = v72;
      *&v229[16] = *(*&v233[32] + 48);
      *&v229[31] = *(*&v233[32] + 63);
      FormatCommandBinding.bind(binder:context:)(a1, v30);
      sub_1D6226080(a1, v30, v71);
      *&v228 = v70;

      FormatSyncImageContent.bind(binder:context:)(a1, v30);
      v237 = 0;

      goto LABEL_85;
    }

    if (!(*&v233[32] >> 62))
    {
      v89 = *(*&v233[32] + 80);
      *&v229[32] = *(*&v233[32] + 64);
      v90 = *(*&v233[32] + 96);
      v230 = v89;
      v231 = v90;
      v232 = *(*&v233[32] + 112);
      v91 = *(*&v233[32] + 32);
      v228 = *(*&v233[32] + 16);
      *v229 = v91;
      *&v229[16] = *(*&v233[32] + 48);
      FormatSymbolImage.bind(binder:context:)(a1, v30);
      v237 = v60;
      goto LABEL_85;
    }

    v222 = v37;
    if (*&v233[32] >> 62 == 1)
    {
      v74 = *((*&v233[32] & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v73 = *((*&v233[32] & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      v75 = *((*&v233[32] & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      if (v75 <= 1)
      {
        if (*((*&v233[32] & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
        {
          sub_1D5E433E0(v74, v73, 1u);
          sub_1D620B270(a1, v30, v74);
          v237 = v60;
          v76 = v74;
          v77 = v73;
          v78 = 1;
        }

        else
        {
          sub_1D5E433E0(v74, v73, 0);
          sub_1D620B270(a1, v30, v74);
          v237 = v60;
          v76 = v74;
          v77 = v73;
          v78 = 0;
        }

        goto LABEL_83;
      }

      v237 = v60;
      if (v75 == 2)
      {
        sub_1D5E433E0(v74, v73, 2u);
        v108 = v237;
        sub_1D620B270(a1, v30, v74);
        if (!v108)
        {
          sub_1D620B270(a1, v30, v73);
          v237 = 0;
          v76 = v74;
          v77 = v73;
          v78 = 2;
LABEL_83:
          sub_1D5E4342C(v76, v77, v78);
          goto LABEL_84;
        }

        sub_1D5E4342C(v74, v73, 2u);
        sub_1D5D08954(v233);
        v187 = v222;
LABEL_203:
        sub_1D5D07BA8(v187, v221, v223);
        goto LABEL_221;
      }

LABEL_84:
      v37 = v222;
LABEL_85:
      v115 = *&v233[56] >> 62;
      if ((*&v233[56] >> 62) > 1)
      {
        if (v115 != 2)
        {
          goto LABEL_92;
        }

        v119 = v237;
        sub_1D6245CC4(a1, v30, *((*&v233[56] & 0x3FFFFFFFFFFFFFFFLL) + 0x10), *((*&v233[56] & 0x3FFFFFFFFFFFFFFFLL) + 0x18));
      }

      else
      {
        if (!v115)
        {
          v116 = swift_projectBox();
          v117 = v217;
          sub_1D62B50EC(v116, v217, type metadata accessor for FormatCommandOpenURL);
          v118 = v237;
          sub_1D5F86DA0(v30);
          v237 = v118;
          if (!v118)
          {
            sub_1D62B51D0(v117, type metadata accessor for FormatCommandOpenURL);
LABEL_92:
            sub_1D5D08954(v233);
            sub_1D5D07BA8(v37, v221, v223);
LABEL_93:

            v28 = v227;
            goto LABEL_5;
          }

          sub_1D62B51D0(v117, type metadata accessor for FormatCommandOpenURL);
LABEL_215:
          sub_1D5D08954(v233);
          sub_1D5D07BA8(v37, v221, v223);
          goto LABEL_219;
        }

        v120 = *((*&v233[56] & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v121 = *(v120 + 16);
        v122 = *(v120 + 24);
        v123 = *(v120 + 32);
        v124 = *(v120 + 40);
        v125 = *(v120 + 64);
        if (*(v120 + 66))
        {
          v126 = 8;
        }

        else
        {
          v126 = 0;
        }

        v127 = v126 & 0xFFFFFFF8 | (v125 >> 11) & 7;
        if (v127 <= 4)
        {
          v119 = v237;
          if (v127 > 1)
          {
            if (v127 != 3 || *(v120 + 32) != 1 || (~v121 & 0xF000000000000007) == 0)
            {
              goto LABEL_92;
            }

            *&v228 = *(v120 + 16);

            FormatTextContent.bind(binder:context:)(a1, v30);
            v237 = v119;
            if (!v119)
            {

              goto LABEL_92;
            }

            goto LABEL_215;
          }

          if (v127)
          {
            goto LABEL_92;
          }

          v128 = (v124 >> 3) & 7;
          if (v128 <= 1)
          {
            if (v128)
            {
              goto LABEL_92;
            }
          }

          else if (v128 != 2 && v128 != 3)
          {
            *&v228 = v121;
            *(&v228 + 1) = v122;
            *v229 = v123;
            v229[8] = v124 & 0xC7;
            FormatSportsEventBinding.Command.bind(binder:context:)(a1, v30);
            goto LABEL_91;
          }

LABEL_186:
          *&v228 = v121;
          *(&v228 + 1) = v122;
          v229[0] = v123;
          FormatTagBinding.Command.bind(binder:context:)(a1, v30);
          goto LABEL_91;
        }

        v119 = v237;
        if (v127 <= 6)
        {
          if (v127 == 5)
          {
            goto LABEL_92;
          }

          if (v124 >> 6 && v124 >> 6 != 1)
          {
            sub_1D624011C(a1, v30, v121, v122, v123, v124 & 0x3F);
            goto LABEL_91;
          }

          goto LABEL_186;
        }

        if (v127 != 7)
        {
          goto LABEL_92;
        }

        *&v228 = *(v120 + 16);
        *(&v228 + 1) = v122;
        *v229 = v123;
        *&v229[8] = v124;
        *&v229[16] = *(v120 + 48);
        *&v229[32] = v125 & 0xC7FF;
        FormatString.bind(binder:context:)(a1, v30);
      }

LABEL_91:
      v237 = v119;
      if (v119)
      {
        goto LABEL_215;
      }

      goto LABEL_92;
    }

    v93 = *((*&v233[32] & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v92 = *((*&v233[32] & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (v93 >> 62)
    {
      if (v93 >> 62 != 1)
      {
        v237 = *((*&v233[32] & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v96 = v29;
        v113 = v93 & 0x3FFFFFFFFFFFFFFFLL;
        v114 = *(v113 + 24);
        *&v228 = *(v113 + 16);

        FormatSyncImageContent.bind(binder:context:)(a1, v30);

        sub_1D622B230(a1, v30, v114);

        v30 = v226;
        goto LABEL_80;
      }

      v94 = v93 & 0x3FFFFFFFFFFFFFFFLL;
      v95 = *(v94 + 64);
      if (v95 != 255)
      {
        v237 = *((*&v233[32] & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v96 = v29;
        v98 = *(v94 + 56);
        *&v228 = *(v94 + 48);
        v97 = v228;
        *(&v228 + 1) = v98;
        v229[0] = v95;

        sub_1D5E433CC(v97, v98, v95);
        FormatBundleImageSize.bind(binder:context:)(a1, v226);
        sub_1D5E43440(v97, v98, v95);

        v30 = v226;
        a1 = v225;
LABEL_80:
        v29 = v96;
        v92 = v237;
      }
    }

    else
    {
      v109 = *((*&v233[32] & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v110 = *(v93 + 80);
      *&v229[32] = *(v93 + 64);
      v111 = *(v93 + 96);
      v230 = v110;
      v231 = v111;
      v232 = *(v93 + 112);
      v112 = *(v93 + 32);
      v228 = *(v93 + 16);
      *v229 = v112;
      *&v229[16] = *(v93 + 48);

      FormatSymbolImage.bind(binder:context:)(a1, v30);

      v92 = v109;
    }

    sub_1D622B230(a1, v30, v92);
    v237 = v60;
    goto LABEL_84;
  }

  *&v224 = v29;
  v61 = v36;
  v62 = *((v39 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
  v228 = *((v39 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  *v229 = v62;
  v63 = *((v39 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
  *&v229[16] = *((v39 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
  *&v229[32] = v63;
  *&v230 = *((v39 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
  v64 = v228;
  v65 = *v229;
  v66 = *&v229[8];
  if ((~*(&v228 + 1) & 0xF000000000000007) != 0 || (v229[8] & 7) != 7)
  {
    if ((v229[8] & 4) != 0)
    {
      *&v235 = v228;
      v68 = v38;
      sub_1D5D03180(v37, v36, v38);

      sub_1D62B72DC(&v228, v233);
      sub_1D62B738C(v64, *(&v64 + 1), v65, v66);
      v69 = v237;
      FormatTextContent.bind(binder:context:)(v225, v226);
    }

    else
    {
      v68 = v38;
      sub_1D5D03180(v37, v36, v38);

      sub_1D62B72DC(&v228, v233);
      sub_1D62B738C(v64, *(&v64 + 1), v65, v66);
      v69 = v237;
      sub_1D6245970(v225, v226, v64, *(&v64 + 1), v65, v66);
    }

    v237 = v69;
    if (v69)
    {
      sub_1D62B7110(v64, *(&v64 + 1), v65, v66);
      goto LABEL_211;
    }

    sub_1D62B7110(v64, *(&v64 + 1), v65, v66);
    v67 = v61;
  }

  else
  {
    v67 = v36;
    v68 = v38;
    sub_1D5D03180(v37, v36, v38);

    sub_1D62B72DC(&v228, v233);
  }

  v79 = *&v229[16];
  v80 = *&v229[32];
  if ((*&v229[16] & 0x3000000000000007 & *&v229[32]) == 0x3000000000000007)
  {
LABEL_45:
    a1 = v225;
    v30 = v226;
    v83 = v237;
    sub_1D6223ECC(v225, v226, v230);
    v237 = v83;
    if (v83)
    {
      sub_1D62B7338(&v228);
      v191 = v37;
      v192 = v67;
      goto LABEL_212;
    }

    sub_1D62B7338(&v228);
    sub_1D5D07BA8(v37, v67, v68);

    v28 = v227;
    v29 = v224;
    goto LABEL_5;
  }

  v81 = *&v229[24];
  if ((*&v229[32] & 0x2000000000000000) != 0)
  {
    *v233 = *&v229[16];
    sub_1D62B6FC0(*&v229[16], *&v229[24], *&v229[32]);
    v82 = v237;
    FormatSyncImageContent.bind(binder:context:)(v225, v226);
  }

  else
  {
    sub_1D62B6FC0(*&v229[16], *&v229[24], *&v229[32]);
    v82 = v237;
    sub_1D6209F10(v225, v226, v79, v81);
  }

  v237 = v82;
  if (!v82)
  {
    sub_1D62B7020(v79, v81, v80);
    v67 = v61;
    goto LABEL_45;
  }

  sub_1D62B7020(v79, v81, v80);
LABEL_211:
  sub_1D62B7338(&v228);
  v191 = v37;
  v192 = v61;
LABEL_212:
  sub_1D5D07BA8(v191, v192, v68);
LABEL_219:
}

void sub_1D6223ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v241 = a1;
  v242 = a2;
  v4 = type metadata accessor for FormatOption();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v218 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v218 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v218 - v15;
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v218 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v235 = &v218 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v237 = &v218 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v236 = &v218 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v239 = &v218 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v238 = &v218 - v35;
  v36 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v39 = &v218 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(a3 + 16);
  if (!v40)
  {
    return;
  }

  v240 = v39;
  v226 = v12;
  v227 = v20;
  v228 = v8;
  v233 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;
  v234 = v4;
  v41 = (a3 + 32);
  v232 = (v5 + 48);
  v230 = v16;
  v231 = (v5 + 56);
  v43 = v241;
  v42 = v242;
  v44 = v40;
  while (2)
  {
    v45 = v41[1];
    v259 = *v41;
    v260 = v45;
    v46 = v41[3];
    v261 = v41[2];
    v262 = v46;
    v47 = v259;
    v48 = *(&v260 + 1);
    if ((BYTE8(v260) & 4) != 0)
    {
      *&v245 = v259;
      sub_1D5CFBAA8(&v259, &v252);
      v51 = v263;
      FormatTextContent.bind(binder:context:)(v43, v42);
      if (v51)
      {
LABEL_169:
        v263 = v51;
        goto LABEL_170;
      }
    }

    else
    {
      v49 = *(&v259 + 1);
      v50 = v260;
      sub_1D5CFBAA8(&v259, &v252);
      v51 = v263;
      sub_1D6245970(v43, v42, v47, v49, v50, v48);
      if (v51)
      {
        goto LABEL_169;
      }

      v43 = v241;
      v42 = v242;
    }

    v52 = v262;
    if ((v262 & 0x2000000000000000) == 0)
    {
      v53 = *(&v261 + 1);
      v54 = *(v261 + 32);
      v252 = *(v261 + 16);
      v253 = v54;
      v254[0] = *(v261 + 48);
      *(v254 + 15) = *(v261 + 63);
      FormatCommandBinding.bind(binder:context:)(v43, v42);
      sub_1D6226080(v43, v42, v53);
      *&v252 = v52;

      FormatSyncImageContent.bind(binder:context:)(v43, v42);
      v263 = 0;
LABEL_65:

      goto LABEL_66;
    }

    if (v261 >> 62)
    {
      if (v261 >> 62 == 1)
      {
        v56 = *((v261 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
        v55 = *((v261 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
        v57 = *((v261 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
        if (v57 > 1)
        {
          v263 = v51;
          if (v57 == 2)
          {
            sub_1D5E433E0(v56, v55, 2u);
            v75 = v263;
            sub_1D620B270(v43, v42, v56);
            if (v75)
            {
              v263 = v75;
              sub_1D5E4342C(v56, v55, 2u);
              goto LABEL_170;
            }

            sub_1D620B270(v43, v42, v55);
            v263 = 0;
            sub_1D5E4342C(v56, v55, 2u);
          }
        }

        else
        {
          if (*((v261 & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
          {
            sub_1D5E433E0(v56, v55, 1u);
            sub_1D620B270(v43, v42, v56);
            v263 = v51;
            v58 = v56;
            v59 = v55;
            v60 = 1;
          }

          else
          {
            sub_1D5E433E0(v56, v55, 0);
            sub_1D620B270(v43, v42, v56);
            v263 = v51;
            v58 = v56;
            v59 = v55;
            v60 = 0;
          }

          sub_1D5E4342C(v58, v59, v60);
        }

        goto LABEL_66;
      }

      v68 = *((v261 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v67 = *((v261 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      if (!(v68 >> 62))
      {
        v76 = *(v68 + 80);
        v254[1] = *(v68 + 64);
        v255 = v76;
        v256 = *(v68 + 96);
        v257 = *(v68 + 112);
        v77 = *(v68 + 32);
        v252 = *(v68 + 16);
        v253 = v77;
        v78 = *(v68 + 64);
        v254[0] = *(v68 + 48);
        v79 = *(v68 + 80);
        v80 = *(v68 + 96);
        v248 = v78;
        v249 = v79;
        v250 = v80;
        v251 = *(v68 + 112);
        v81 = *(v68 + 32);
        v245 = *(v68 + 16);
        v246 = v81;
        v247 = *(v68 + 48);
        swift_retain_n();

        sub_1D5D0322C(&v252, &v243);
        FormatSymbolImage.bind(binder:context:)(v43, v42);
        v263 = v51;
        sub_1D5D07BBC(&v252);

        v51 = v263;
        goto LABEL_63;
      }

      if (v68 >> 62 == 1)
      {
        v69 = *((v68 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
        v70 = *((v68 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
        v71 = *((v68 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
        if (v71 > 1)
        {
          if (v71 != 2)
          {

            v42 = v242;
            goto LABEL_63;
          }

          swift_retain_n();
          v229 = v67;

          v263 = v51;
          sub_1D5E433CC(v69, v70, 2u);
          v93 = v70;
          v94 = v242;
          v95 = v263;
          sub_1D620B270(v43, v242, v69);
          if (v95)
          {
            v263 = v95;

            sub_1D5E4342C(v69, v93, 2u);
            goto LABEL_198;
          }

          sub_1D620B270(v43, v94, v93);
          v263 = 0;
          v72 = v69;
          v73 = v93;
          v74 = 2;
        }

        else
        {
          v229 = *((v261 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          if (v71)
          {
            swift_retain_n();

            sub_1D5E433CC(v69, v70, 1u);
            sub_1D620B270(v43, v242, v69);
            v263 = v51;
            v72 = v69;
            v73 = v70;
            v74 = 1;
          }

          else
          {
            swift_retain_n();

            sub_1D5E433CC(v69, v70, 0);
            sub_1D620B270(v43, v242, v69);
            v263 = v51;
            v72 = v69;
            v73 = v70;
            v74 = 0;
          }
        }

        sub_1D5E4342C(v72, v73, v74);

        v51 = v263;
        v42 = v242;
        v67 = v229;
LABEL_63:
        sub_1D622B230(v43, v42, v67);
        v263 = v51;
        if (v51)
        {

          goto LABEL_198;
        }

        goto LABEL_65;
      }

      v82 = *((v68 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v83 = *((v68 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v225 = v82;
      if (!(v82 >> 62))
      {
        v96 = *(v82 + 80);
        v254[1] = *(v82 + 64);
        v255 = v96;
        v256 = *(v82 + 96);
        v257 = *(v82 + 112);
        v97 = *(v82 + 32);
        v252 = *(v82 + 16);
        v253 = v97;
        v98 = *(v82 + 64);
        v254[0] = *(v82 + 48);
        v99 = *(v82 + 80);
        v100 = *(v82 + 96);
        v248 = v98;
        v249 = v99;
        v250 = v100;
        v251 = *(v82 + 112);
        v101 = *(v82 + 32);
        v245 = *(v82 + 16);
        v246 = v101;
        v247 = *(v82 + 48);
        swift_retain_n();
        v224 = v83;

        v229 = v68 & 0x3FFFFFFFFFFFFFFFLL;
        swift_retain_n();

        sub_1D5D0322C(&v252, &v243);
        FormatSymbolImage.bind(binder:context:)(v43, v42);
        v263 = v51;
        sub_1D5D07BBC(&v252);

        v51 = v263;
LABEL_56:
        v83 = v224;
LABEL_61:
        sub_1D622B230(v43, v42, v83);
        v263 = v51;
        if (v51)
        {

          goto LABEL_170;
        }

        v51 = v263;
        goto LABEL_63;
      }

      if (v82 >> 62 == 1)
      {
        v224 = v83;
        v84 = *((v82 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
        v222 = *((v82 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
        v223 = (v82 & 0x3FFFFFFFFFFFFFFFLL);
        v85 = *((v82 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
        if (v85 > 1)
        {
          if (v85 != 2)
          {
            swift_retain_n();

            v83 = v224;

            goto LABEL_61;
          }

          swift_retain_n();
          v229 = v67;

          swift_retain_n();

          v108 = v222;
          v263 = v51;
          sub_1D5E433CC(v84, v222, 2u);
          v221 = v84;
          v109 = v263;
          sub_1D620B270(v43, v42, v84);
          if (!v109)
          {
            sub_1D620B270(v43, v42, v108);
            sub_1D5E4342C(v221, v108, 2u);

            v51 = 0;
LABEL_55:
            v67 = v229;
            goto LABEL_56;
          }

          v263 = v109;

          v191 = v221;
          v192 = v108;
          v193 = 2;
        }

        else
        {
          v229 = v67;
          v263 = v51;
          if (v85)
          {
            swift_retain_n();

            swift_retain_n();

            v122 = v222;
            sub_1D5E433CC(v84, v222, 1u);
            v123 = v263;
            sub_1D620B270(v43, v42, v84);
            v263 = v123;
            if (v123)
            {

              sub_1D5E4342C(v84, v122, 1u);

              goto LABEL_198;
            }

            v90 = v84;
            v91 = v122;
            v92 = 1;
            goto LABEL_54;
          }

          swift_retain_n();

          swift_retain_n();

          v86 = v84;
          v87 = v84;
          v88 = v222;
          sub_1D5E433CC(v87, v222, 0);
          v89 = v263;
          sub_1D620B270(v43, v42, v86);
          v263 = v89;
          if (!v89)
          {
            v90 = v86;
            v91 = v88;
            v92 = 0;
LABEL_54:
            sub_1D5E4342C(v90, v91, v92);

            v51 = v263;
            goto LABEL_55;
          }

          v191 = v86;
          v192 = v88;
          v193 = 0;
        }

        sub_1D5E4342C(v191, v192, v193);
LABEL_188:

        goto LABEL_198;
      }

      v229 = v44;
      v263 = v51;
      v103 = *((v82 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v102 = *((v82 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      if (v103 >> 62)
      {
        if (v103 >> 62 == 1)
        {
          v104 = *((v103 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
          if (v104 == 255)
          {
            swift_retain_n();

            swift_retain_n();
          }

          else
          {
            v105 = *((v103 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
            v221 = *((v103 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
            v219 = v105;
            *&v252 = v105;
            *(&v252 + 1) = v221;
            LOBYTE(v253) = v104;
            LODWORD(v222) = v104;
            swift_retain_n();

            swift_retain_n();
            v224 = v83;

            v220 = v103 & 0x3FFFFFFFFFFFFFFFLL;
            swift_retain_n();
            v223 = v102;

            v106 = v219;
            sub_1D5E433CC(v219, v221, v222);
            v107 = v263;
            FormatBundleImageSize.bind(binder:context:)(v241, v242);
            v263 = v107;
            if (v107)
            {

              sub_1D5E43440(v106, v221, v222);

              goto LABEL_188;
            }

            sub_1D5E43440(v106, v221, v222);

            v102 = v223;
            v83 = v224;
          }
        }

        else
        {
          v222 = v82 & 0x3FFFFFFFFFFFFFFFLL;
          v117 = *((v103 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          *&v252 = *((v103 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v221 = v252;
          swift_retain_n();
          v220 = v117;

          swift_retain_n();

          swift_retain_n();
          v224 = v83;

          v219 = v103 & 0x3FFFFFFFFFFFFFFFLL;
          swift_retain_n();
          v223 = v102;

          v119 = v241;
          v118 = v242;
          v120 = v263;
          FormatSyncImageContent.bind(binder:context:)(v241, v242);
          v263 = v120;
          if (v120)
          {

            goto LABEL_170;
          }

          v121 = v263;
          sub_1D622B230(v119, v118, v220);
          v263 = v121;
          if (v121)
          {

            goto LABEL_170;
          }

          v102 = v223;
          v83 = v224;
        }
      }

      else
      {
        v110 = *(v103 + 80);
        v254[1] = *(v103 + 64);
        v255 = v110;
        v256 = *(v103 + 96);
        v257 = *(v103 + 112);
        v111 = *(v103 + 32);
        v252 = *(v103 + 16);
        v253 = v111;
        v112 = *(v103 + 64);
        v254[0] = *(v103 + 48);
        v113 = *(v103 + 80);
        v114 = *(v103 + 96);
        v248 = v112;
        v249 = v113;
        v250 = v114;
        v251 = *(v103 + 112);
        v115 = *(v103 + 32);
        v245 = *(v103 + 16);
        v246 = v115;
        v247 = *(v103 + 48);
        swift_retain_n();
        v223 = v102;

        swift_retain_n();

        swift_retain_n();

        sub_1D5D0322C(&v252, &v243);
        v116 = v263;
        FormatSymbolImage.bind(binder:context:)(v241, v242);
        v263 = v116;
        if (v116)
        {

          sub_1D5D07BBC(&v252);

          goto LABEL_198;
        }

        sub_1D5D07BBC(&v252);

        v102 = v223;
      }

      v124 = v263;
      sub_1D622B230(v241, v242, v102);
      v263 = v124;
      if (v124)
      {

        goto LABEL_198;
      }

      v51 = v263;
      v43 = v241;
      v42 = v242;
      v44 = v229;
      goto LABEL_61;
    }

    v61 = *(v261 + 80);
    v254[1] = *(v261 + 64);
    v255 = v61;
    v256 = *(v261 + 96);
    v257 = *(v261 + 112);
    v62 = *(v261 + 32);
    v252 = *(v261 + 16);
    v253 = v62;
    v63 = *(v261 + 64);
    v254[0] = *(v261 + 48);
    v64 = *(v261 + 80);
    v65 = *(v261 + 96);
    v248 = v63;
    v249 = v64;
    v250 = v65;
    v251 = *(v261 + 112);
    v66 = *(v261 + 32);
    v245 = *(v261 + 16);
    v246 = v66;
    v247 = *(v261 + 48);
    sub_1D5D0322C(&v252, &v243);
    FormatSymbolImage.bind(binder:context:)(v43, v42);
    v263 = v51;
    sub_1D5D07BBC(&v252);
LABEL_66:
    v125 = *(&v262 + 1) >> 62;
    if ((*(&v262 + 1) >> 62) > 1)
    {
      if (v125 == 2)
      {
        v129 = *((*(&v262 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v130 = *((*(&v262 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

        v131 = v263;
        sub_1D6245CC4(v43, v42, v129, v130);
        v263 = v131;
        if (v131)
        {

          goto LABEL_170;
        }
      }

      goto LABEL_73;
    }

    if (!v125)
    {
      v126 = swift_projectBox();
      v127 = v240;
      sub_1D62B50EC(v126, v240, type metadata accessor for FormatCommandOpenURL);
      v128 = v263;
      sub_1D5F86DA0(v42);
      v263 = v128;
      if (v128)
      {
        sub_1D62B51D0(v127, type metadata accessor for FormatCommandOpenURL);
        goto LABEL_170;
      }

      sub_1D62B51D0(v127, type metadata accessor for FormatCommandOpenURL);
      goto LABEL_73;
    }

    v132 = *((*(&v262 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v133 = *(v132 + 32);
    v252 = *(v132 + 16);
    v253 = v133;
    v134 = *(v132 + 48);
    *(v254 + 15) = *(v132 + 63);
    v254[0] = v134;
    v135 = *(&v252 + 1);
    v136 = v252;
    v137 = v133;
    v138 = v254[1];
    if (BYTE2(v254[1]))
    {
      v139 = 8;
    }

    else
    {
      v139 = 0;
    }

    v140 = v139 & 0xFFFFFFF8 | (LOWORD(v254[1]) >> 11) & 7;
    if (v140 <= 4)
    {
      if (v140 > 1)
      {
        if (v140 != 3)
        {
          goto LABEL_145;
        }

        goto LABEL_110;
      }

      if (v140)
      {
        goto LABEL_145;
      }

      v141 = (DWORD2(v133) >> 3) & 7;
      if (v141 > 1)
      {
        if (v141 == 2 || v141 == 3 || !(BYTE8(v133) >> 6) || BYTE8(v133) >> 6 == 1)
        {
          goto LABEL_110;
        }

        v142 = BYTE8(v133) & 7;
        if (v142 > 1)
        {
          goto LABEL_93;
        }

LABEL_99:
        if (!v142)
        {
          goto LABEL_117;
        }

        v42 = v242;
        if ((~*(&v252 + 1) & 0xF000000000000007) == 0)
        {
          goto LABEL_73;
        }

        *&v243 = *(&v252 + 1);

        sub_1D62B5248(&v252, &v245);
        sub_1D5CFCFAC(v135);
        v143 = v263;
        FormatTextContent.bind(binder:context:)(v43, v42);
        v263 = v143;
        if (v143)
        {
          goto LABEL_180;
        }

LABEL_114:

        goto LABEL_123;
      }

      if (v141)
      {
        goto LABEL_117;
      }

LABEL_110:
      if (v133 > 1u)
      {
        v42 = v242;
        if (v133 == 2)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v42 = v242;
        if (v133)
        {
          if ((~v252 & 0xF000000000000007) != 0)
          {
            *&v243 = v252;

            sub_1D62B5248(&v252, &v245);
            sub_1D5CFCFAC(v136);
            v151 = v263;
            FormatTextContent.bind(binder:context:)(v43, v42);
            v263 = v151;
            if (v151)
            {
LABEL_180:

              goto LABEL_197;
            }

            goto LABEL_114;
          }

LABEL_73:
          sub_1D5D08954(&v259);
          goto LABEL_74;
        }
      }

      sub_1D5D085FC(&v252);
      goto LABEL_73;
    }

    if (v140 <= 6)
    {
      if (v140 == 5)
      {
        goto LABEL_145;
      }

      if (BYTE8(v133) >> 6 && BYTE8(v133) >> 6 != 1)
      {
        v142 = BYTE8(v133) & 0x3F;
        if (v142 > 1)
        {
LABEL_93:
          if (v142 != 2)
          {
LABEL_117:
            sub_1D5D085FC(&v252);
          }

          goto LABEL_145;
        }

        goto LABEL_99;
      }

      goto LABEL_110;
    }

    if (v140 != 7)
    {
      v42 = v242;
      goto LABEL_73;
    }

    if (!(LOWORD(v254[1]) >> 14))
    {
      goto LABEL_145;
    }

    if (LOWORD(v254[1]) >> 14 == 1)
    {
      v243 = v252;
      v244 = v133;
      v258 = 5;
      sub_1D62B5248(&v252, &v245);

      sub_1D62B5248(&v252, &v245);
      v144 = v263;
      v145 = sub_1D703E0C8(&v243, &v258);
      v263 = v144;
      if (v144)
      {
        goto LABEL_197;
      }

      v146 = v145;
      v229 = v44;
      v147 = v242;
      v148 = v239;
      FormatOptionCollection.subscript.getter(v136, v135, v239);
      if ((*v232)(v148, 1, v234) == 1)
      {

        sub_1D5B6EF64(v148, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v44 = v229;
        if ((*(v147 + 48) & 1) == 0)
        {
          type metadata accessor for FormatLayoutError();
          sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
          v194 = swift_allocError();
          *v195 = v136;
          v195[1] = v135;
          swift_storeEnumTagMultiPayload();
          v263 = v194;
          swift_willThrow();

          goto LABEL_197;
        }

        v42 = v147;
        v149 = 1;
        v43 = v241;
        v150 = v238;
LABEL_122:
        (*v231)(v150, v149, 1, v234);
        sub_1D5B6EF64(v150, &qword_1EDF337F0, type metadata accessor for FormatOption);
LABEL_123:
        sub_1D5D085FC(&v252);

        goto LABEL_73;
      }

      v152 = v230;
      sub_1D5D5E33C(v148, v230, type metadata accessor for FormatOption);
      *&v245 = v152[2];

      FormatOptionValue.type.getter(&v243);
      v153 = sub_1D6183C84(v243, v146);
      v43 = v241;
      v44 = v229;
      if (v153)
      {
        swift_bridgeObjectRelease_n();
        v150 = v238;
        sub_1D5D5E33C(v152, v238, type metadata accessor for FormatOption);
        v149 = 0;
        v42 = v242;
        goto LABEL_122;
      }

      v263 = type metadata accessor for FormatDerivedDataError();
      sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
      v196 = swift_allocError();
      v198 = v197;
      v199 = *v152;
      v200 = v152[1];
      *&v245 = v152[2];

      FormatOptionValue.type.getter(&v243);
      v201 = v243;
      *v198 = v199;
      *(v198 + 8) = v200;
      *(v198 + 16) = v201;
      *(v198 + 24) = v146;
      swift_storeEnumTagMultiPayload();
      v263 = v196;
      swift_willThrow();

      v202 = v152;
LABEL_196:
      sub_1D62B51D0(v202, type metadata accessor for FormatOption);
      goto LABEL_197;
    }

    switch((LOWORD(v254[1]) >> 7) & 0xE | (LOWORD(v254[1]) >> 3) & 1)
    {
      case 1:
      case 5:
      case 6:
      case 7:
      case 9:
      case 0xA:
      case 0xB:
      case 0xD:

        goto LABEL_144;
      case 2:

        sub_1D62B5248(&v252, &v245);
        v166 = v138 >> 4;
        v167 = v263;
        if (((1 << v166) & 0x1EF7) != 0)
        {
          switch(v138 >> 4)
          {
            case 3:
              goto LABEL_156;
            case 8:
              goto LABEL_164;
            default:
              goto LABEL_144;
          }
        }

        if (v166 != 3)
        {
          if ((v135 & 0x80) != 0)
          {
            v229 = v135;
            LOBYTE(v243) = v135 & 0x3F;
            sub_1D5B49474(0, &qword_1EDF329A8);
            if (swift_dynamicCast())
            {
              v188 = *(&v246 + 1);
              v189 = v247;
              __swift_project_boxed_opaque_existential_1(&v245, *(&v246 + 1));
              v190 = v263;
              (*(v189 + 8))(v43, v242, v188, v189);
              v263 = v190;
              if (v190)
              {
LABEL_199:
                __swift_destroy_boxed_opaque_existential_1(&v245);
                goto LABEL_197;
              }

              __swift_destroy_boxed_opaque_existential_1(&v245);
              v167 = v263;
              v43 = v241;
            }

            else
            {
              *&v247 = 0;
              v245 = 0u;
              v246 = 0u;
              sub_1D5BFB774(&v245, &qword_1EDF329A0, &qword_1EDF329A8);
              v167 = v263;
            }

            LOBYTE(v135) = v229;
          }

LABEL_164:
          v263 = v167;
          if (!(v135 >> 6) || v135 >> 6 == 1)
          {
            goto LABEL_144;
          }

          LOBYTE(v243) = v135 & 0x3F;
          sub_1D5B49474(0, &qword_1EDF329A8);
          if ((swift_dynamicCast() & 1) == 0)
          {
            *&v247 = 0;
            v245 = 0u;
            v246 = 0u;
            sub_1D5BFB774(&v245, &qword_1EDF329A0, &qword_1EDF329A8);
LABEL_144:
            sub_1D5D085FC(&v252);

LABEL_145:
            sub_1D5D08954(&v259);
            v42 = v242;
            goto LABEL_74;
          }

          v182 = *(&v246 + 1);
          v183 = v247;
          __swift_project_boxed_opaque_existential_1(&v245, *(&v246 + 1));
          v184 = *(v183 + 8);
          v185 = v43;
          v186 = v242;
LABEL_151:
          v187 = v263;
          v184(v185, v186, v182, v183);
          v263 = v187;
          if (v187)
          {
            goto LABEL_199;
          }

          __swift_destroy_boxed_opaque_existential_1(&v245);
          sub_1D5D085FC(&v252);

          sub_1D5D08954(&v259);
          v43 = v241;
          v42 = v242;
LABEL_74:
          v41 += 4;
          if (!--v44)
          {
            return;
          }

          continue;
        }

        *&v245 = v136;
        *(&v245 + 1) = v135;
        LOWORD(v246) = v137;
        sub_1D62B416C(v242);
        if (!v167)
        {
LABEL_156:
          *&v245 = v136;
          *(&v245 + 1) = v135;
          LOWORD(v246) = v137;
          v42 = v242;
          sub_1D62B416C(v242);
          v263 = v167;
          if (v167)
          {
            goto LABEL_197;
          }

          goto LABEL_123;
        }

        v263 = v167;
LABEL_197:
        sub_1D5D085FC(&v252);
LABEL_198:

LABEL_170:
        sub_1D5D08954(&v259);
        return;
      case 3:
      case 4:
        v243 = v252;
        v244 = v133;
        v258 = 5;
        sub_1D62B5248(&v252, &v245);

        sub_1D62B5248(&v252, &v245);

        v154 = v263;
        v155 = sub_1D703E0C8(&v243, &v258);
        v263 = v154;
        if (v154)
        {
          goto LABEL_191;
        }

        v225 = v155;
        v229 = v44;
        v156 = v242;
        v157 = v237;
        FormatOptionCollection.subscript.getter(v136, v135, v237);
        v158 = *v232;
        v159 = (*v232)(v157, 1, v234);
        v224 = v158;
        if (v159 == 1)
        {

          sub_1D5B6EF64(v157, &qword_1EDF337F0, type metadata accessor for FormatOption);
          if ((*(v156 + 48) & 1) == 0)
          {
            goto LABEL_192;
          }

          v160 = 1;
          v161 = v236;
        }

        else
        {
          v168 = v157;
          v169 = v226;
          sub_1D5D5E33C(v168, v226, type metadata accessor for FormatOption);
          *&v245 = *(v169 + 16);
          v170 = v225;

          FormatOptionValue.type.getter(&v243);
          if ((sub_1D6183C84(v243, v170) & 1) == 0)
          {
            v205 = type metadata accessor for FormatDerivedDataError();
            v229 = v135;
            v263 = v205;
            sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
            v206 = swift_allocError();
            v207 = v169;
            v209 = v208;
            v211 = *v207;
            v210 = v207[1];
            *&v245 = v207[2];

            FormatOptionValue.type.getter(&v243);
            v212 = v243;
            *v209 = v211;
            *(v209 + 8) = v210;
            *(v209 + 16) = v212;
            *(v209 + 24) = v225;
            swift_storeEnumTagMultiPayload();
            v263 = v206;
            swift_willThrow();

            goto LABEL_195;
          }

          swift_bridgeObjectRelease_n();
          v161 = v236;
          sub_1D5D5E33C(v169, v236, type metadata accessor for FormatOption);
          v160 = 0;
        }

        v171 = *v231;
        v172 = v234;
        (*v231)(v161, v160, 1, v234);
        sub_1D5B6EF64(v161, &qword_1EDF337F0, type metadata accessor for FormatOption);
        *&v243 = v136;
        *(&v243 + 1) = v135;
        v244 = v137;
        v258 = 5;
        sub_1D62B5248(&v252, &v245);

        v173 = v263;
        v174 = sub_1D703E0C8(&v243, &v258);
        v263 = v173;
        if (v173)
        {
LABEL_191:

          goto LABEL_197;
        }

        v225 = v174;
        v223 = v171;
        v175 = v227;
        FormatOptionCollection.subscript.getter(v136, v135, v227);
        if (v224(v175, 1, v172) == 1)
        {

          sub_1D5B6EF64(v175, &qword_1EDF337F0, type metadata accessor for FormatOption);
          v44 = v229;
          if ((*(v242 + 48) & 1) == 0)
          {
LABEL_192:
            type metadata accessor for FormatLayoutError();
            sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
            v203 = swift_allocError();
            *v204 = v136;
            v204[1] = v135;
            swift_storeEnumTagMultiPayload();
            v263 = v203;
            swift_willThrow();

            goto LABEL_197;
          }

          v176 = 1;
          v43 = v241;
          v177 = v235;
          goto LABEL_143;
        }

        v178 = v228;
        sub_1D5D5E33C(v175, v228, type metadata accessor for FormatOption);
        *&v245 = v178[2];
        v179 = v225;

        FormatOptionValue.type.getter(&v243);
        v180 = sub_1D6183C84(v243, v179);
        v43 = v241;
        v44 = v229;
        if (v180)
        {

          swift_bridgeObjectRelease_n();
          v177 = v235;
          sub_1D5D5E33C(v228, v235, type metadata accessor for FormatOption);
          v176 = 0;
LABEL_143:
          v223(v177, v176, 1, v234);
          sub_1D5B6EF64(v177, &qword_1EDF337F0, type metadata accessor for FormatOption);
          goto LABEL_144;
        }

        v263 = type metadata accessor for FormatDerivedDataError();
        sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
        v213 = swift_allocError();
        v215 = v214;
        v229 = v135;
        v207 = v228;
        v216 = v228[1];
        v242 = *v228;
        *&v245 = v228[2];

        FormatOptionValue.type.getter(&v243);
        v217 = v243;
        *v215 = v242;
        *(v215 + 8) = v216;
        *(v215 + 16) = v217;
        *(v215 + 24) = v179;
        swift_storeEnumTagMultiPayload();
        v263 = v213;
        swift_willThrow();

LABEL_195:

        v202 = v207;
        goto LABEL_196;
      case 0xC:
        v162 = BYTE8(v252);

        if ((v135 & 0x80) == 0)
        {
          goto LABEL_147;
        }

        LOBYTE(v243) = v162 & 0x3F;
        sub_1D5B49474(0, &qword_1EDF329A8);
        if (swift_dynamicCast())
        {
          v163 = *(&v246 + 1);
          v164 = v247;
          __swift_project_boxed_opaque_existential_1(&v245, *(&v246 + 1));
          v165 = v263;
          (*(v164 + 8))(v43, v242, v163, v164);
          v263 = v165;
          if (v165)
          {
            goto LABEL_199;
          }

          __swift_destroy_boxed_opaque_existential_1(&v245);
        }

        else
        {
          *&v247 = 0;
          v245 = 0u;
          v246 = 0u;
          sub_1D5BFB774(&v245, &qword_1EDF329A0, &qword_1EDF329A8);
        }

LABEL_147:
        v42 = v242;
        if (!(v162 >> 6) || v162 >> 6 == 1)
        {
          goto LABEL_123;
        }

        LOBYTE(v243) = v162 & 0x3F;
        sub_1D5B49474(0, &qword_1EDF329A8);
        if (swift_dynamicCast())
        {
          v181 = v42;
          v182 = *(&v246 + 1);
          v183 = v247;
          __swift_project_boxed_opaque_existential_1(&v245, *(&v246 + 1));
          v184 = *(v183 + 8);
          v185 = v43;
          v186 = v181;
          goto LABEL_151;
        }

        *&v247 = 0;
        v245 = 0u;
        v246 = 0u;
        sub_1D5BFB774(&v245, &qword_1EDF329A0, &qword_1EDF329A8);
        goto LABEL_123;
      default:

        sub_1D62B5248(&v252, &v245);
        goto LABEL_144;
    }
  }
}

uint64_t sub_1D6226080(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return result;
  }

  v4 = a2;
  v5 = result;
  v6 = 0;
  v261 = a3 + 32;
  v264 = result;
  v256 = *(a3 + 16);
  while (1)
  {
    v10 = v261 + 32 * v6;
    v12 = *v10;
    v11 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    if (v14 >> 62)
    {
      break;
    }

    v25 = *(v14 + 80);
    v276 = *(v14 + 64);
    v277 = v25;
    v278 = *(v14 + 96);
    v279 = *(v14 + 112);
    v26 = *(v14 + 32);
    v273 = *(v14 + 16);
    v274 = v26;
    v275 = *(v14 + 48);
    v27 = *(v14 + 96);
    v270 = *(v14 + 80);
    v271 = v27;
    v272 = *(v14 + 112);
    v28 = *(v14 + 32);
    v266 = *(v14 + 16);
    v267 = v28;
    v29 = *(v14 + 64);
    v268 = *(v14 + 48);
    v269 = v29;
    v30 = v11;
    sub_1D5D03180(v12, v11, v13);
    swift_retain_n();
    sub_1D5D0322C(&v273, v265);
    v31 = v280;
    FormatSymbolImage.bind(binder:context:)(v5, v4);
    v280 = v31;
    if (v31)
    {
      sub_1D5D07BA8(v12, v30, v13);

      sub_1D5D07BBC(&v273);
    }

    sub_1D5D07BA8(v12, v30, v13);

    sub_1D5D07BBC(&v273);

LABEL_6:
    if (++v6 == v3)
    {
      return result;
    }
  }

  if (v14 >> 62 != 1)
  {
    v33 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v32 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v260 = v6;
    v257 = *(v10 + 8);
    if (!(v33 >> 62))
    {
      v45 = *(v33 + 80);
      v276 = *(v33 + 64);
      v277 = v45;
      v278 = *(v33 + 96);
      v279 = *(v33 + 112);
      v46 = *(v33 + 32);
      v273 = *(v33 + 16);
      v274 = v46;
      v275 = *(v33 + 48);
      v47 = *(v33 + 96);
      v270 = *(v33 + 80);
      v271 = v47;
      v272 = *(v33 + 112);
      v48 = *(v33 + 32);
      v266 = *(v33 + 16);
      v267 = v48;
      v49 = *(v33 + 64);
      v268 = *(v33 + 48);
      v269 = v49;
      sub_1D5D03180(v12, v11, v13);
      swift_retain_n();

      swift_retain_n();
      sub_1D5D0322C(&v273, v265);
      v50 = v280;
      FormatSymbolImage.bind(binder:context:)(v5, v4);
      v280 = v50;
      if (v50)
      {

        sub_1D5D07BA8(v12, v257, v13);

        sub_1D5D07BBC(&v273);
      }

      sub_1D5D07BBC(&v273);

      v51 = v32;
LABEL_232:
      v208 = v280;
      sub_1D622B230(v5, v4, v51);
      v280 = v208;
      if (v208)
      {

        sub_1D5D07BA8(v12, v257, v13);
      }

      sub_1D5D07BA8(v12, v257, v13);

      goto LABEL_5;
    }

    if (v33 >> 62 == 1)
    {
      v254 = *v10;
      v35 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v34 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      if (*((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) > 1u)
      {
        if (*((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) == 2)
        {
          sub_1D5D03180(v254, v11, v13);
          swift_retain_n();
          swift_retain_n();

          sub_1D5E433CC(v35, v34, 2u);
          v66 = v280;
          sub_1D620B270(v264, a2, v35);
          v280 = v66;
          if (v66)
          {

            sub_1D5D07BA8(v254, v257, v13);

            sub_1D5E4342C(v35, v34, 2u);
            goto LABEL_245;
          }

          sub_1D620B270(v264, a2, v34);
          v280 = 0;
          sub_1D5E4342C(v35, v34, 2u);

          v4 = a2;
          v5 = v264;
          v12 = v254;
          v3 = v256;
          v51 = v32;
        }

        else
        {
          v12 = *v10;
          sub_1D5D03180(v254, v11, v13);
          swift_retain_n();

          v51 = v32;

          v4 = a2;
          v5 = v264;
          v3 = v256;
        }
      }

      else
      {
        if (*((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
        {
          v80 = *(v35 + 16);
          sub_1D5D03180(v254, v11, v13);
          swift_retain_n();
          swift_retain_n();

          sub_1D5E433CC(v35, v34, 1u);
          if (v80)
          {
            v81 = (v35 + 40);
            do
            {
              if ((*v81 & 1) == 0)
              {
                *&v273 = *(v81 - 1);
                v82 = v273;
                swift_retain_n();
                v83 = v280;
                FormatFloat.bind(binder:context:)(v264, a2);
                v280 = v83;
                if (v83)
                {
                  sub_1D62B72BC(v82, 0);

                  sub_1D5D07BA8(v254, v257, v13);

                  v212 = v35;
                  v213 = v34;
                  v214 = 1;
                  goto LABEL_244;
                }

                sub_1D62B72BC(v82, 0);
              }

              v81 += 16;
              --v80;
            }

            while (v80);
          }

          v84 = v35;
          v85 = v34;
          v86 = 1;
        }

        else
        {
          v36 = *(v35 + 16);
          sub_1D5D03180(v254, v11, v13);
          swift_retain_n();
          swift_retain_n();

          sub_1D5E433CC(v35, v34, 0);
          if (v36)
          {
            v37 = (v35 + 40);
            do
            {
              if ((*v37 & 1) == 0)
              {
                *&v273 = *(v37 - 1);
                v38 = v273;
                swift_retain_n();
                v39 = v280;
                FormatFloat.bind(binder:context:)(v264, a2);
                v280 = v39;
                if (v39)
                {
                  sub_1D62B72BC(v38, 0);

                  sub_1D5D07BA8(v254, v257, v13);

                  v212 = v35;
                  v213 = v34;
                  v214 = 0;
LABEL_244:
                  sub_1D5E4342C(v212, v213, v214);
LABEL_245:
                }

                sub_1D62B72BC(v38, 0);
              }

              v37 += 16;
              --v36;
            }

            while (v36);
          }

          v84 = v35;
          v85 = v34;
          v86 = 0;
        }

        sub_1D5E4342C(v84, v85, v86);

        v12 = v254;
        v3 = v256;
        v4 = a2;
        v5 = v264;
        v51 = v32;
      }

      goto LABEL_232;
    }

    v52 = v33 & 0x3FFFFFFFFFFFFFFFLL;
    v53 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v54 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (!(v53 >> 62))
    {
      v67 = *(v53 + 80);
      v276 = *(v53 + 64);
      v277 = v67;
      v278 = *(v53 + 96);
      v279 = *(v53 + 112);
      v68 = *(v53 + 32);
      v273 = *(v53 + 16);
      v274 = v68;
      v275 = *(v53 + 48);
      v69 = *(v53 + 96);
      v270 = *(v53 + 80);
      v271 = v69;
      v272 = *(v53 + 112);
      v70 = *(v53 + 32);
      v266 = *(v53 + 16);
      v267 = v70;
      v71 = *(v53 + 64);
      v268 = *(v53 + 48);
      v269 = v71;
      sub_1D5D03180(v12, v11, v13);
      swift_retain_n();
      v55 = v54;

      swift_retain_n();
      swift_retain_n();

      sub_1D5D0322C(&v273, v265);
      v72 = v280;
      FormatSymbolImage.bind(binder:context:)(v264, v4);
      v280 = v72;
      if (v72)
      {

        sub_1D5D07BA8(v12, v257, v13);

        sub_1D5D07BBC(&v273);
      }

      sub_1D5D07BBC(&v273);

      v51 = v32;
      goto LABEL_69;
    }

    v253 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (v53 >> 62 == 1)
    {
      v55 = v54;
      v57 = *((v53 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v56 = *((v53 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      if (*((v53 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) <= 1u)
      {
        v248 = *((v53 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
        v250 = v55;
        v19 = v280;
        if (*((v53 & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
        {
          v102 = *(v57 + 16);
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v57, v248, 1u);
          if (v102)
          {
            v103 = (v57 + 40);
            do
            {
              if ((*v103 & 1) == 0)
              {
                *&v273 = *(v103 - 1);
                v104 = v273;
                swift_retain_n();
                FormatFloat.bind(binder:context:)(v264, a2);
                if (v19)
                {
                  sub_1D62B72BC(v104, 0);

                  sub_1D5D07BA8(v12, v257, v13);

                  v215 = v57;
                  v216 = v248;
                  v217 = 1;
                  goto LABEL_249;
                }

                sub_1D62B72BC(v104, 0);
              }

              v103 += 16;
              --v102;
            }

            while (v102);
          }

          v280 = v19;
          v105 = v57;
          v106 = v248;
          v107 = 1;
        }

        else
        {
          v58 = *(v57 + 16);
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v57, v248, 0);
          if (v58)
          {
            v59 = (v57 + 40);
            do
            {
              if ((*v59 & 1) == 0)
              {
                *&v273 = *(v59 - 1);
                v65 = v273;
                swift_retain_n();
                FormatFloat.bind(binder:context:)(v264, a2);
                if (v19)
                {
                  sub_1D62B72BC(v65, 0);

                  sub_1D5D07BA8(v12, v257, v13);

                  v215 = v57;
                  v216 = v248;
                  v217 = 0;
LABEL_249:
                  sub_1D5E4342C(v215, v216, v217);

                  goto LABEL_239;
                }

                sub_1D62B72BC(v65, 0);
              }

              v59 += 16;
              --v58;
            }

            while (v58);
          }

          v280 = v19;
          v105 = v57;
          v106 = v248;
          v107 = 0;
        }

        sub_1D5E4342C(v105, v106, v107);

        v4 = a2;
        v51 = v253;
        v54 = v250;
        goto LABEL_230;
      }

      if (*((v53 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) != 2)
      {
        sub_1D5D03180(v12, v11, v13);
        swift_retain_n();
        swift_retain_n();

        v51 = v253;

        v54 = v55;

        v4 = a2;
        goto LABEL_230;
      }

      sub_1D5D03180(v12, v11, v13);
      swift_retain_n();
      swift_retain_n();

      swift_retain_n();

      sub_1D5E433CC(v57, v56, 2u);
      v87 = v280;
      sub_1D620B270(v264, a2, v57);
      v280 = v87;
      if (v87)
      {

        sub_1D5D07BA8(v12, v257, v13);

        sub_1D5E4342C(v57, v56, 2u);

        goto LABEL_245;
      }

      sub_1D620B270(v264, a2, v56);
      v280 = 0;
      sub_1D5E4342C(v57, v56, 2u);

      v4 = a2;
      v51 = v253;
LABEL_69:
      v54 = v55;
LABEL_230:
      v207 = v280;
      sub_1D622B230(v264, v4, v54);
      v280 = v207;
      if (v207)
      {

        sub_1D5D07BA8(v12, v257, v13);
LABEL_266:
      }

      v5 = v264;
      v3 = v256;
      goto LABEL_232;
    }

    v255 = *v10;
    v73 = *((v53 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v74 = *((v53 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (!(v73 >> 62))
    {
      v88 = *(v73 + 80);
      v276 = *(v73 + 64);
      v277 = v88;
      v278 = *(v73 + 96);
      v279 = *(v73 + 112);
      v89 = *(v73 + 32);
      v273 = *(v73 + 16);
      v274 = v89;
      v275 = *(v73 + 48);
      v90 = *(v73 + 96);
      v270 = *(v73 + 80);
      v271 = v90;
      v272 = *(v73 + 112);
      v91 = *(v73 + 32);
      v266 = *(v73 + 16);
      v267 = v91;
      v92 = *(v73 + 64);
      v268 = *(v73 + 48);
      v269 = v92;
      sub_1D5D03180(v12, v11, v13);
      swift_retain_n();

      swift_retain_n();
      swift_retain_n();

      swift_retain_n();

      sub_1D5D0322C(&v273, v265);
      v93 = v280;
      FormatSymbolImage.bind(binder:context:)(v264, v4);
      v280 = v93;
      if (v93)
      {

        sub_1D5D07BA8(v12, v257, v13);

        sub_1D5D07BBC(&v273);
      }

      sub_1D5D07BBC(&v273);

LABEL_228:
      v206 = v280;
      sub_1D622B230(v264, v4, v74);
      v280 = v206;
      if (v206)
      {

        sub_1D5D07BA8(v255, v257, v13);

        goto LABEL_266;
      }

      v51 = v253;
      v12 = v255;
      goto LABEL_230;
    }

    v249 = v74;
    if (v73 >> 62 == 1)
    {
      v76 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v75 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      if (*((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) > 1u)
      {
        if (*((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) == 2)
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v76, v75, 2u);
          v108 = v280;
          sub_1D620B270(v264, a2, v76);
          v280 = v108;
          if (v108)
          {

            sub_1D5D07BA8(v12, v257, v13);

            sub_1D5E4342C(v76, v75, 2u);

            goto LABEL_245;
          }

          sub_1D620B270(v264, a2, v75);
          v280 = 0;
          sub_1D5E4342C(v76, v75, 2u);

          v4 = a2;
        }

        else
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          v4 = a2;
        }
      }

      else
      {
        v247 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
        v19 = v280;
        if (*((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
        {
          v123 = *(v76 + 16);
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v76, v247, 1u);
          if (v123)
          {
            v124 = (v76 + 40);
            do
            {
              if ((*v124 & 1) == 0)
              {
                *&v273 = *(v124 - 1);
                v125 = v273;
                swift_retain_n();
                FormatFloat.bind(binder:context:)(v264, a2);
                if (v19)
                {
                  sub_1D62B72BC(v125, 0);

                  sub_1D5D07BA8(v12, v257, v13);

                  v218 = v76;
                  v219 = v247;
                  v220 = 1;
LABEL_255:
                  sub_1D5E4342C(v218, v219, v220);

                  goto LABEL_239;
                }

                sub_1D62B72BC(v125, 0);

                v74 = v249;
              }

              v124 += 16;
              --v123;
            }

            while (v123);
          }

          v280 = v19;
          v126 = v76;
          v127 = v247;
          v128 = 1;
        }

        else
        {
          v77 = *(v76 + 16);
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v76, v247, 0);
          if (v77)
          {
            v78 = (v76 + 40);
            do
            {
              if ((*v78 & 1) == 0)
              {
                *&v273 = *(v78 - 1);
                v79 = v273;
                swift_retain_n();
                FormatFloat.bind(binder:context:)(v264, a2);
                if (v19)
                {
                  sub_1D62B72BC(v79, 0);

                  sub_1D5D07BA8(v12, v257, v13);

                  v218 = v76;
                  v219 = v247;
                  v220 = 0;
                  goto LABEL_255;
                }

                sub_1D62B72BC(v79, 0);

                v74 = v249;
              }

              v78 += 16;
              --v77;
            }

            while (v77);
          }

          v280 = v19;
          v126 = v76;
          v127 = v247;
          v128 = 0;
        }

        sub_1D5E4342C(v126, v127, v128);

        v4 = a2;
      }

      goto LABEL_228;
    }

    v94 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v95 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (!(v94 >> 62))
    {
      v109 = *(v94 + 80);
      v276 = *(v94 + 64);
      v277 = v109;
      v278 = *(v94 + 96);
      v279 = *(v94 + 112);
      v110 = *(v94 + 32);
      v273 = *(v94 + 16);
      v274 = v110;
      v275 = *(v94 + 48);
      v111 = *(v94 + 96);
      v270 = *(v94 + 80);
      v271 = v111;
      v272 = *(v94 + 112);
      v112 = *(v94 + 32);
      v266 = *(v94 + 16);
      v267 = v112;
      v113 = *(v94 + 64);
      v268 = *(v94 + 48);
      v269 = v113;
      sub_1D5D03180(v12, v11, v13);
      swift_retain_n();

      swift_retain_n();
      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      sub_1D5D0322C(&v273, v265);
      v114 = v280;
      FormatSymbolImage.bind(binder:context:)(v264, a2);
      v280 = v114;
      if (v114)
      {

        sub_1D5D07BA8(v12, v257, v13);

        sub_1D5D07BBC(&v273);
      }

      sub_1D5D07BBC(&v273);

      goto LABEL_226;
    }

    if (v94 >> 62 == 1)
    {
      v251 = *((v94 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v244 = *((v94 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      if (*((v94 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) > 1u)
      {
        if (*((v94 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) == 2)
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v251, v244, 2u);
          v129 = v280;
          sub_1D620B270(v264, a2, v251);
          v280 = v129;
          if (v129)
          {

            sub_1D5D07BA8(v12, v257, v13);

            sub_1D5E4342C(v251, v244, 2u);
          }

          sub_1D620B270(v264, a2, v244);
          v280 = 0;
          sub_1D5E4342C(v251, v244, 2u);
        }

        else
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();
        }
      }

      else if (*((v94 & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
      {
        sub_1D5D03180(v12, v11, v13);
        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        sub_1D5E433CC(v251, v244, 1u);
        v142 = v280;
        sub_1D620B270(v264, a2, v251);
        v280 = v142;
        if (v142)
        {

          sub_1D5D07BA8(v12, v257, v13);

          sub_1D5E4342C(v251, v244, 1u);

          goto LABEL_245;
        }

        sub_1D5E4342C(v251, v244, 1u);
      }

      else
      {
        v96 = *(v251 + 16);
        v262 = *(v10 + 16);
        sub_1D5D03180(v12, v11, v13);
        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        sub_1D5E433CC(v251, v244, 0);
        if (v96)
        {
          v97 = (v251 + 40);
          do
          {
            if ((*v97 & 1) == 0)
            {
              v98 = v52;
              v99 = v95;
              *&v273 = *(v97 - 1);
              v100 = v273;
              swift_retain_n();
              v101 = v280;
              FormatFloat.bind(binder:context:)(v264, a2);
              v280 = v101;
              if (v101)
              {
                sub_1D62B72BC(v100, 0);

                sub_1D5D07BA8(v255, v257, v262);

                sub_1D5E4342C(v251, v244, 0);

                goto LABEL_245;
              }

              sub_1D62B72BC(v100, 0);

              v13 = v262;
              v95 = v99;
              v52 = v98;
            }

            v97 += 16;
            --v96;
          }

          while (v96);
        }

        sub_1D5E4342C(v251, v244, 0);
      }

LABEL_226:
      v205 = v280;
      sub_1D622B230(v264, a2, v95);
      v280 = v205;
      if (v205)
      {

        sub_1D5D07BA8(v255, v257, v13);

        goto LABEL_266;
      }

      v4 = a2;
      v74 = v249;
      goto LABEL_228;
    }

    v246 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v116 = *((v94 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v115 = *((v94 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (!(v116 >> 62))
    {
      v130 = *(v116 + 80);
      v276 = *(v116 + 64);
      v277 = v130;
      v278 = *(v116 + 96);
      v279 = *(v116 + 112);
      v131 = *(v116 + 32);
      v273 = *(v116 + 16);
      v274 = v131;
      v275 = *(v116 + 48);
      v132 = *(v116 + 96);
      v270 = *(v116 + 80);
      v271 = v132;
      v272 = *(v116 + 112);
      v133 = *(v116 + 32);
      v266 = *(v116 + 16);
      v267 = v133;
      v134 = *(v116 + 64);
      v268 = *(v116 + 48);
      v269 = v134;
      sub_1D5D03180(v12, v11, v13);
      swift_retain_n();

      swift_retain_n();
      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      sub_1D5D0322C(&v273, v265);
      v135 = v280;
      FormatSymbolImage.bind(binder:context:)(v264, a2);
      v280 = v135;
      if (v135)
      {

        sub_1D5D07BA8(v12, v257, v13);

        sub_1D5D07BBC(&v273);

        goto LABEL_245;
      }

      sub_1D5D07BBC(&v273);

LABEL_224:
      v204 = v280;
      sub_1D622B230(v264, a2, v115);
      v280 = v204;
      if (v204)
      {

        sub_1D5D07BA8(v12, v257, v13);

        goto LABEL_266;
      }

      v95 = v246;
      goto LABEL_226;
    }

    if (v116 >> 62 == 1)
    {
      v117 = *((v116 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v118 = *((v116 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      if (*((v116 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) > 1u)
      {
        if (*((v116 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) == 2)
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v117, v118, 2u);
          v143 = v280;
          sub_1D620B270(v264, a2, v117);
          v280 = v143;
          if (v143)
          {

            sub_1D5D07BA8(v12, v257, v13);

            sub_1D5E4342C(v117, v118, 2u);

            goto LABEL_276;
          }

          sub_1D620B270(v264, a2, v118);
          v280 = 0;
          sub_1D5E4342C(v117, v118, 2u);
        }

        else
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();
        }
      }

      else
      {
        if (*((v116 & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v117, v118, 1u);
          v157 = v280;
          sub_1D620B270(v264, a2, v117);
          v280 = v157;
          if (v157)
          {

            sub_1D5D07BA8(v12, v257, v13);

            v221 = v117;
            v222 = v118;
            v223 = 1;
LABEL_275:
            sub_1D5E4342C(v221, v222, v223);

LABEL_276:
          }

          v120 = v117;
          v121 = v118;
          v122 = 1;
        }

        else
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v117, v118, 0);
          v119 = v280;
          sub_1D620B270(v264, a2, v117);
          v280 = v119;
          if (v119)
          {

            sub_1D5D07BA8(v12, v257, v13);

            v221 = v117;
            v222 = v118;
            v223 = 0;
            goto LABEL_275;
          }

          v120 = v117;
          v121 = v118;
          v122 = 0;
        }

        sub_1D5E4342C(v120, v121, v122);
      }

      goto LABEL_224;
    }

    v245 = v115;
    v252 = v54;
    v136 = *((v116 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v137 = *((v116 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (!(v136 >> 62))
    {
      v144 = *(v136 + 80);
      v276 = *(v136 + 64);
      v277 = v144;
      v278 = *(v136 + 96);
      v279 = *(v136 + 112);
      v145 = *(v136 + 32);
      v273 = *(v136 + 16);
      v274 = v145;
      v275 = *(v136 + 48);
      v146 = *(v136 + 96);
      v270 = *(v136 + 80);
      v271 = v146;
      v272 = *(v136 + 112);
      v147 = *(v136 + 32);
      v266 = *(v136 + 16);
      v267 = v147;
      v148 = *(v136 + 64);
      v268 = *(v136 + 48);
      v269 = v148;
      sub_1D5D03180(v12, v11, v13);
      swift_retain_n();

      swift_retain_n();
      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      sub_1D5D0322C(&v273, v265);
      v149 = v280;
      FormatSymbolImage.bind(binder:context:)(v264, a2);
      v280 = v149;
      if (v149)
      {

        sub_1D5D07BA8(v12, v257, v13);

        sub_1D5D07BBC(&v273);

LABEL_289:

        goto LABEL_245;
      }

      sub_1D5D07BBC(&v273);

      goto LABEL_222;
    }

    if (v136 >> 62 == 1)
    {
      v241 = *((v136 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      v242 = *((v136 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      if (*((v136 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) > 1u)
      {
        if (*((v136 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) == 2)
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v242, v241, 2u);
          v158 = v280;
          sub_1D620B270(v264, a2, v242);
          if (v158)
          {
            v280 = v158;

            sub_1D5D07BA8(v12, v257, v13);

            sub_1D5E4342C(v242, v241, 2u);

            goto LABEL_245;
          }

          sub_1D620B270(v264, a2, v241);
          v280 = 0;
          sub_1D5E4342C(v242, v241, 2u);
        }

        else
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();
        }
      }

      else
      {
        if (*((v136 & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v242, v241, 1u);
          v169 = v280;
          sub_1D620B270(v264, a2, v242);
          v280 = v169;
          if (v169)
          {

            sub_1D5D07BA8(v12, v257, v13);

            v224 = v242;
            v225 = v241;
            v226 = 1;
            goto LABEL_282;
          }

          v139 = v242;
          v140 = v241;
          v141 = 1;
        }

        else
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v242, v241, 0);
          v138 = v280;
          sub_1D620B270(v264, a2, v242);
          v280 = v138;
          if (v138)
          {

            sub_1D5D07BA8(v12, v257, v13);

            v224 = v242;
            v225 = v241;
            v226 = 0;
LABEL_282:
            sub_1D5E4342C(v224, v225, v226);

            goto LABEL_245;
          }

          v139 = v242;
          v140 = v241;
          v141 = 0;
        }

        sub_1D5E4342C(v139, v140, v141);
      }

      goto LABEL_222;
    }

    v150 = *((v136 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v151 = *((v136 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (!(v150 >> 62))
    {
      v159 = *(v150 + 80);
      v276 = *(v150 + 64);
      v277 = v159;
      v278 = *(v150 + 96);
      v279 = *(v150 + 112);
      v160 = *(v150 + 32);
      v273 = *(v150 + 16);
      v274 = v160;
      v275 = *(v150 + 48);
      v161 = *(v150 + 96);
      v270 = *(v150 + 80);
      v271 = v161;
      v272 = *(v150 + 112);
      v162 = *(v150 + 32);
      v266 = *(v150 + 16);
      v267 = v162;
      v163 = *(v150 + 64);
      v268 = *(v150 + 48);
      v269 = v163;
      sub_1D5D03180(v12, v11, v13);
      swift_retain_n();

      swift_retain_n();
      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      sub_1D5D0322C(&v273, v265);
      v164 = v280;
      FormatSymbolImage.bind(binder:context:)(v264, a2);
      v280 = v164;
      if (v164)
      {

        sub_1D5D07BA8(v12, v257, v13);

        sub_1D5D07BBC(&v273);

        goto LABEL_289;
      }

      sub_1D5D07BBC(&v273);

      goto LABEL_220;
    }

    if (v150 >> 62 == 1)
    {
      v152 = *((v150 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v239 = *((v150 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      if (*((v150 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) > 1u)
      {
        if (*((v150 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) == 2)
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v152, v239, 2u);
          v170 = v280;
          sub_1D620B270(v264, a2, v152);
          if (v170)
          {
            v280 = v170;

            sub_1D5D07BA8(v12, v257, v13);

            sub_1D5E4342C(v152, v239, 2u);

            goto LABEL_289;
          }

          sub_1D620B270(v264, a2, v239);
          v280 = 0;
          sub_1D5E4342C(v152, v239, 2u);
        }

        else
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();
        }
      }

      else
      {
        if (*((v150 & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v152, v239, 1u);
          v184 = v280;
          sub_1D620B270(v264, a2, v152);
          v280 = v184;
          if (v184)
          {

            sub_1D5D07BA8(v12, v257, v13);

            v227 = v152;
            v228 = v239;
            v229 = 1;
            goto LABEL_288;
          }

          v154 = v152;
          v155 = v239;
          v156 = 1;
        }

        else
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v152, v239, 0);
          v153 = v280;
          sub_1D620B270(v264, a2, v152);
          v280 = v153;
          if (v153)
          {

            sub_1D5D07BA8(v12, v257, v13);

            v227 = v152;
            v228 = v239;
            v229 = 0;
LABEL_288:
            sub_1D5E4342C(v227, v228, v229);

            goto LABEL_289;
          }

          v154 = v152;
          v155 = v239;
          v156 = 0;
        }

        sub_1D5E4342C(v154, v155, v156);
      }

      goto LABEL_220;
    }

    v240 = v151;
    v165 = *((v150 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v238 = *((v150 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (!(v165 >> 62))
    {
      v171 = *(v165 + 80);
      v276 = *(v165 + 64);
      v277 = v171;
      v278 = *(v165 + 96);
      v279 = *(v165 + 112);
      v172 = *(v165 + 32);
      v273 = *(v165 + 16);
      v274 = v172;
      v275 = *(v165 + 48);
      v173 = *(v165 + 96);
      v270 = *(v165 + 80);
      v271 = v173;
      v272 = *(v165 + 112);
      v174 = *(v165 + 32);
      v266 = *(v165 + 16);
      v267 = v174;
      v175 = *(v165 + 64);
      v268 = *(v165 + 48);
      v269 = v175;
      sub_1D5D03180(v12, v11, v13);
      swift_retain_n();

      swift_retain_n();
      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      sub_1D5D0322C(&v273, v265);
      v176 = v280;
      FormatSymbolImage.bind(binder:context:)(v264, a2);
      v280 = v176;
      if (v176)
      {

        sub_1D5D07BA8(v12, v257, v13);

        sub_1D5D07BBC(&v273);

LABEL_299:

        goto LABEL_245;
      }

      sub_1D5D07BBC(&v273);

      v151 = v240;
      v167 = v238;
      goto LABEL_218;
    }

    v243 = v137;
    if (v165 >> 62 == 1)
    {
      v235 = *((v165 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      v237 = *((v165 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      if (*((v165 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) > 1u)
      {
        if (*((v165 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) != 2)
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();
          v151 = v240;

          v167 = v238;

          goto LABEL_218;
        }

        sub_1D5D03180(v12, v11, v13);
        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();
        v167 = v238;

        sub_1D5E433CC(v237, v235, 2u);

        v185 = v280;
        sub_1D620B270(v264, a2, v237);
        v280 = v185;
        if (v185 || (, , v186 = v280, sub_1D620B270(v264, a2, v235), (v280 = v186) != 0))
        {

          sub_1D5D07BA8(v12, v257, v13);

          sub_1D5E4342C(v237, v235, 2u);

          goto LABEL_299;
        }

        sub_1D5E4342C(v237, v235, 2u);
      }

      else if (*((v165 & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
      {
        v197 = *(v10 + 8);
        sub_1D5D03180(v12, v11, v13);
        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();
        v167 = v238;

        sub_1D5E433CC(v237, v235, 1u);
        v198 = v280;
        sub_1D620B270(v264, a2, v237);
        v280 = v198;
        if (v198)
        {

          sub_1D5D07BA8(v12, v197, v13);

          v231 = v235;
          v230 = v237;
          v232 = 1;
LABEL_297:
          sub_1D5E4342C(v230, v231, v232);

          goto LABEL_299;
        }

        sub_1D5E4342C(v237, v235, 1u);
      }

      else
      {
        v166 = *(v10 + 8);
        sub_1D5D03180(v12, v11, v13);
        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();
        v167 = v238;

        sub_1D5E433CC(v237, v235, 0);
        v168 = v280;
        sub_1D620B270(v264, a2, v237);
        v280 = v168;
        if (v168)
        {

          sub_1D5D07BA8(v12, v166, v13);

          v231 = v235;
          v230 = v237;
          v232 = 0;
          goto LABEL_297;
        }

        sub_1D5E4342C(v237, v235, 0);
      }

      v151 = v240;
LABEL_218:
      v201 = v280;
      sub_1D622B230(v264, a2, v167);
      v280 = v201;
      if (v201)
      {

        sub_1D5D07BA8(v12, v257, v13);

        goto LABEL_289;
      }

LABEL_220:
      v202 = v280;
      sub_1D622B230(v264, a2, v151);
      v280 = v202;
      if (v202)
      {

        sub_1D5D07BA8(v12, v257, v13);

        goto LABEL_245;
      }

LABEL_222:
      v203 = v280;
      sub_1D622B230(v264, a2, v137);
      v280 = v203;
      if (v203)
      {

        sub_1D5D07BA8(v12, v257, v13);

        goto LABEL_266;
      }

      v54 = v252;
      v115 = v245;
      goto LABEL_224;
    }

    v177 = *((v165 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v236 = *((v165 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (!(v177 >> 62))
    {
      v187 = *(v177 + 80);
      v276 = *(v177 + 64);
      v277 = v187;
      v278 = *(v177 + 96);
      v279 = *(v177 + 112);
      v188 = *(v177 + 32);
      v273 = *(v177 + 16);
      v274 = v188;
      v275 = *(v177 + 48);
      v189 = *(v177 + 96);
      v270 = *(v177 + 80);
      v271 = v189;
      v272 = *(v177 + 112);
      v190 = *(v177 + 32);
      v266 = *(v177 + 16);
      v267 = v190;
      v191 = *(v177 + 64);
      v268 = *(v177 + 48);
      v269 = v191;
      sub_1D5D03180(v12, v11, v13);
      swift_retain_n();

      swift_retain_n();
      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();
      v151 = v240;

      swift_retain_n();

      sub_1D5D0322C(&v273, v265);
      v192 = v280;
      FormatSymbolImage.bind(binder:context:)(v264, a2);
      v193 = v192;
      if (v192)
      {
        v280 = v192;

        sub_1D5D07BA8(v12, v257, v13);

        sub_1D5D07BBC(&v273);

        goto LABEL_293;
      }

      sub_1D5D07BBC(&v273);

      v194 = v236;
      v167 = v238;
      goto LABEL_216;
    }

    if (v177 >> 62 == 1)
    {
      v178 = *(v10 + 8);
      v179 = *((v177 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v234 = *((v177 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      v233 = *((v177 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      if (v233 > 1u)
      {
        if (*((v177 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) != 2)
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();
          v167 = v238;
          v151 = v240;

          v194 = v236;

          v193 = v280;
          goto LABEL_216;
        }

        sub_1D5D03180(v12, v11, v13);
        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        sub_1D5E433CC(v179, v234, 2u);
        v199 = v280;
        sub_1D620B270(v264, a2, v179);
        v280 = v199;
        if (v199)
        {
          goto LABEL_292;
        }

        sub_1D620B270(v264, a2, v234);
        v280 = 0;
        v181 = v179;
        v182 = v234;
        v183 = 2;
      }

      else if (*((v177 & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
      {
        sub_1D5D03180(v12, v11, v13);
        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        sub_1D5E433CC(v179, v234, 1u);
        v200 = v280;
        sub_1D620B270(v264, a2, v179);
        v280 = v200;
        if (v200)
        {
LABEL_292:

          sub_1D5D07BA8(v12, v178, v13);

          sub_1D5E4342C(v179, v234, v233);

LABEL_293:

LABEL_294:

          goto LABEL_299;
        }

        v181 = v179;
        v182 = v234;
        v183 = 1;
      }

      else
      {
        sub_1D5D03180(v12, v11, v13);
        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        sub_1D5E433CC(v179, v234, 0);
        v180 = v280;
        sub_1D620B270(v264, a2, v179);
        v280 = v180;
        if (v180)
        {
          goto LABEL_292;
        }

        v181 = v179;
        v182 = v234;
        v183 = 0;
      }

      sub_1D5E4342C(v181, v182, v183);

      v193 = v280;
      v167 = v238;
      v151 = v240;
    }

    else
    {
      v195 = *((v177 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      *&v273 = *((v177 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D5D03180(v12, v11, v13);
      swift_retain_n();

      swift_retain_n();
      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      v196 = v280;
      FormatSyncImageContent.bind(binder:context:)(v264, a2);
      v193 = v196;
      if (v196)
      {
        v280 = v196;

        sub_1D5D07BA8(v12, v257, v13);

        goto LABEL_294;
      }

      sub_1D622B230(v264, a2, v195);

      v151 = v240;
      v167 = v238;
    }

    v194 = v236;
LABEL_216:
    sub_1D622B230(v264, a2, v194);
    v280 = v193;
    v137 = v243;
    if (v193)
    {

      sub_1D5D07BA8(v12, v257, v13);

      goto LABEL_299;
    }

    goto LABEL_218;
  }

  v15 = v5;
  v16 = v14 & 0x3FFFFFFFFFFFFFFFLL;
  v17 = *(v16 + 48);
  v18 = *(v16 + 56);
  if (*(v16 + 64) > 1u)
  {
    if (*(v16 + 64) != 2)
    {
      v4 = a2;
      v5 = v15;
      goto LABEL_6;
    }

    v260 = v6;
    v19 = v280;
    v40 = *(v17 + 16);
    v41 = *v10;
    v258 = *(v10 + 8);
    sub_1D5D03180(v12, v11, v13);
    swift_retain_n();
    v42 = v18;
    sub_1D5E433CC(v17, v18, 2u);
    if (v40)
    {
      v43 = (v17 + 40);
      do
      {
        if ((*v43 & 1) == 0)
        {
          v44 = *(v43 - 1);
          *&v273 = v44;
          swift_retain_n();
          FormatFloat.bind(binder:context:)(v264, a2);
          if (v19)
          {
LABEL_235:
            sub_1D62B72BC(v44, 0);

            sub_1D5D07BA8(v41, v258, v13);

            v209 = v17;
            v210 = v42;
            v211 = 2;
            goto LABEL_238;
          }

          sub_1D62B72BC(v44, 0);
        }

        v43 += 16;
        --v40;
      }

      while (v40);
    }

    v63 = *(v42 + 16);
    if (v63)
    {
      v64 = (v42 + 40);
      do
      {
        if ((*v64 & 1) == 0)
        {
          v44 = *(v64 - 1);
          *&v273 = v44;
          swift_retain_n();
          FormatFloat.bind(binder:context:)(v264, a2);
          if (v19)
          {
            goto LABEL_235;
          }

          sub_1D62B72BC(v44, 0);
        }

        v64 += 16;
        --v63;
      }

      while (v63);
    }

    v280 = v19;
    sub_1D5D07BA8(v41, v258, v13);

    v7 = v17;
    v8 = v42;
    v9 = 2;
    goto LABEL_4;
  }

  v259 = *(v16 + 56);
  v19 = v280;
  v20 = *v10;
  v21 = *(v10 + 8);
  v260 = v6;
  if (!*(v16 + 64))
  {
    v22 = *(v17 + 16);
    sub_1D5D03180(v20, v11, v13);
    swift_retain_n();
    sub_1D5E433CC(v17, v259, 0);
    if (v22)
    {
      v23 = (v17 + 40);
      do
      {
        if ((*v23 & 1) == 0)
        {
          *&v273 = *(v23 - 1);
          v24 = v273;
          swift_retain_n();
          FormatFloat.bind(binder:context:)(v264, a2);
          if (v19)
          {
            sub_1D62B72BC(v24, 0);

            sub_1D5D07BA8(v20, v21, v13);

            v209 = v17;
            v210 = v259;
            v211 = 0;
            goto LABEL_238;
          }

          sub_1D62B72BC(v24, 0);
        }

        v23 += 16;
        --v22;
      }

      while (v22);
    }

    v280 = v19;
    sub_1D5D07BA8(v20, v21, v13);

    v7 = v17;
    v8 = v259;
    v9 = 0;
    goto LABEL_4;
  }

  v60 = *(v17 + 16);
  sub_1D5D03180(v20, v11, v13);
  swift_retain_n();
  sub_1D5E433CC(v17, v259, 1u);
  if (!v60)
  {
LABEL_51:
    v280 = v19;
    sub_1D5D07BA8(v20, v21, v13);

    v7 = v17;
    v8 = v259;
    v9 = 1;
LABEL_4:
    sub_1D5E4342C(v7, v8, v9);

    v4 = a2;
    v5 = v264;
    v3 = v256;
LABEL_5:
    v6 = v260;
    goto LABEL_6;
  }

  v61 = (v17 + 40);
  while ((*v61 & 1) != 0)
  {
LABEL_46:
    v61 += 16;
    if (!--v60)
    {
      goto LABEL_51;
    }
  }

  *&v273 = *(v61 - 1);
  v62 = v273;
  swift_retain_n();
  FormatFloat.bind(binder:context:)(v264, a2);
  if (!v19)
  {
    sub_1D62B72BC(v62, 0);

    goto LABEL_46;
  }

  sub_1D62B72BC(v62, 0);

  sub_1D5D07BA8(v20, v21, v13);

  v209 = v17;
  v210 = v259;
  v211 = 1;
LABEL_238:
  sub_1D5E4342C(v209, v210, v211);
LABEL_239:

  v280 = v19;
  return result;
}