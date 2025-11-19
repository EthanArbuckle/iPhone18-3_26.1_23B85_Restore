uint64_t sub_1C6B58884(uint64_t a1, uint64_t a2)
{
  v168[3] = *MEMORY[0x1E69E9840];
  v161 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v4 = *(v161 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v155 = (&v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1E69E6720];
  sub_1C6B62540(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v156 = (&v133 - v10);
  sub_1C6B61994(0, &qword_1EC1D6BA8, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v159 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v163 = &v133 - v13;
  v144 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec(0);
  v158 = *(v144 - 8);
  v14 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v146 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B62540(0, &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec, v7);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v141 = &v133 - v18;
  sub_1C6B61994(0, &qword_1EC1D6BB8, &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
  v143 = v19;
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v147 = &v133 - v21;
  v160 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec(0);
  v22 = *(v160 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v160);
  v150 = &v133 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B62540(0, &qword_1EC1D6BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec, v7);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v151 = &v133 - v27;
  sub_1C6B61994(0, &qword_1EC1D6BC8, &qword_1EC1D6BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
  v153 = v28;
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v154 = &v133 - v30;
  v149 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken(0);
  v31 = *(v149 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v165 = (&v133 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C6B62540(0, &qword_1EC1D6BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken, v7);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v164 = (&v133 - v36);
  sub_1C6B61994(0, &qword_1EC1D6BD8, &qword_1EC1D6BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
  v162 = v37;
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v133 - v39;
  v166 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding(0);
  v41 = *(*(v166 - 8) + 64);
  MEMORY[0x1EEE9AC00](v166);
  v43 = &v133 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v133 - v46;
  v48 = *(a1 + 16);
  if (v48 != *(a2 + 16))
  {
    goto LABEL_102;
  }

  if (!v48 || a1 == a2)
  {
    v130 = 1;
    goto LABEL_103;
  }

  v136 = 0;
  v49 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v50 = a1 + v49;
  v145 = (v31 + 48);
  v51 = a2 + v49;
  v152 = (v22 + 48);
  v135 = (v158 + 48);
  v142 = (v4 + 48);
  v140 = *(v45 + 72);
  v52 = v149;
  v148 = v43;
  v138 = &v133 - v46;
  v137 = v40;
  while (1)
  {
    v158 = v50;
    sub_1C6B5F654(v50, v47, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding);
    v157 = v51;
    sub_1C6B5F654(v51, v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding);
    v53 = *(v166 + 20);
    v54 = *(v162 + 48);
    sub_1C6B61A0C(&v47[v53], v40, &qword_1EC1D6BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
    sub_1C6B61A0C(&v43[v53], &v40[v54], &qword_1EC1D6BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
    v55 = *v145;
    if ((*v145)(v40, 1, v52) == 1)
    {
      if (v55(&v40[v54], 1, v52) != 1)
      {
        goto LABEL_89;
      }

      sub_1C6B61A8C(v40, &qword_1EC1D6BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
      goto LABEL_29;
    }

    v139 = v48;
    v56 = v43;
    v57 = v164;
    sub_1C6B61A0C(v40, v164, &qword_1EC1D6BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
    if (v55(&v40[v54], 1, v52) == 1)
    {
      sub_1C6B62664(v57, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
LABEL_89:
      sub_1C6B624E4(v40, &qword_1EC1D6BD8, &qword_1EC1D6BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
      goto LABEL_101;
    }

    v58 = v165;
    sub_1C6B5F6DC(&v40[v54], v165, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
    if ((*v57 != *v58 || v57[1] != v58[1]) && (sub_1C6D7A130() & 1) == 0)
    {
      goto LABEL_100;
    }

    v59 = *(v52 + 24);
    v60 = *(v153 + 48);
    v61 = v57 + v59;
    v62 = v154;
    sub_1C6B61A0C(v61, v154, &qword_1EC1D6BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
    sub_1C6B61A0C(v165 + v59, v62 + v60, &qword_1EC1D6BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
    v63 = *v152;
    v64 = v160;
    if ((*v152)(v62, 1, v160) == 1)
    {
      v65 = v63(v62 + v60, 1, v64) == 1;
      v66 = v62;
      if (!v65)
      {
        goto LABEL_93;
      }

      sub_1C6B61A8C(v62, &qword_1EC1D6BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
      goto LABEL_28;
    }

    v67 = v151;
    sub_1C6B61A0C(v62, v151, &qword_1EC1D6BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
    if (v63(v62 + v60, 1, v64) == 1)
    {
      sub_1C6B62664(v67, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
      v66 = v62;
LABEL_93:
      sub_1C6B624E4(v66, &qword_1EC1D6BC8, &qword_1EC1D6BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
      goto LABEL_99;
    }

    v68 = v150;
    sub_1C6B5F6DC(v62 + v60, v150, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
    if (*v67 != *v68)
    {
      goto LABEL_98;
    }

    v69 = *(v160 + 24);
    v70 = *(v143 + 48);
    v71 = v147;
    sub_1C6B61A0C(&v67[v69], v147, &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
    sub_1C6B61A0C(&v68[v69], v71 + v70, &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
    v72 = *v135;
    v73 = v144;
    if ((*v135)(v71, 1, v144) != 1)
    {
      break;
    }

    if (v72(v71 + v70, 1, v73) != 1)
    {
      goto LABEL_96;
    }

    sub_1C6B61A8C(v71, &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
    v56 = v148;
    v68 = v150;
    v67 = v151;
LABEL_27:
    v79 = *(v160 + 20);
    sub_1C6D78A40();
    sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
    v80 = sub_1C6D79560();
    sub_1C6B62664(v68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
    sub_1C6B62664(v67, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
    sub_1C6B61A8C(v154, &qword_1EC1D6BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
    v57 = v164;
    v52 = v149;
    if ((v80 & 1) == 0)
    {
      goto LABEL_100;
    }

LABEL_28:
    v81 = *(v52 + 20);
    sub_1C6D78A40();
    sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
    v82 = v165;
    v83 = sub_1C6D79560();
    sub_1C6B62664(v82, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
    sub_1C6B62664(v164, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
    v40 = v137;
    sub_1C6B61A8C(v137, &qword_1EC1D6BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
    v43 = v56;
    v48 = v139;
    if ((v83 & 1) == 0)
    {
      goto LABEL_101;
    }

LABEL_29:
    v84 = v40;
    v85 = *(v166 + 24);
    v86 = *(v159 + 48);
    v87 = v163;
    sub_1C6B61A0C(&v47[v85], v163, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6B61A0C(&v43[v85], v87 + v86, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v88 = *v142;
    v89 = v161;
    if ((*v142)(v87, 1, v161) != 1)
    {
      v90 = v156;
      sub_1C6B61A0C(v87, v156, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      if (v88(v87 + v86, 1, v89) == 1)
      {
        sub_1C6B62664(v90, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        v47 = v138;
LABEL_91:
        sub_1C6B624E4(v87, &qword_1EC1D6BA8, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        v43 = v148;
        goto LABEL_101;
      }

      v91 = v155;
      sub_1C6B5F6DC(v87 + v86, v155, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v92 = *v90;
      v93 = v90[1];
      v94 = *v91;
      v95 = v91[1];
      v96 = v93 >> 62;
      v97 = v95 >> 62;
      if (v93 >> 62 == 3)
      {
        v98 = 0;
        if (v92)
        {
          v40 = v84;
        }

        else
        {
          v40 = v84;
          if (v93 == 0xC000000000000000)
          {
            v43 = v148;
            if (v95 >> 62 != 3)
            {
              goto LABEL_45;
            }

            v98 = 0;
            if (v94 || v95 != 0xC000000000000000)
            {
              goto LABEL_45;
            }

            goto LABEL_82;
          }
        }

LABEL_55:
        v43 = v148;
        if (v97 > 1)
        {
          goto LABEL_56;
        }

LABEL_46:
        if (v97)
        {
          LODWORD(v102) = HIDWORD(v94) - v94;
          if (__OFSUB__(HIDWORD(v94), v94))
          {
            goto LABEL_105;
          }

          v102 = v102;
        }

        else
        {
          v102 = BYTE6(v95);
        }
      }

      else
      {
        if (v96 <= 1)
        {
          v40 = v84;
          if (!v96)
          {
            v98 = BYTE6(v93);
            goto LABEL_55;
          }

          LODWORD(v98) = HIDWORD(v92) - v92;
          v43 = v148;
          if (__OFSUB__(HIDWORD(v92), v92))
          {
            goto LABEL_107;
          }

          v98 = v98;
          if (v97 > 1)
          {
            goto LABEL_56;
          }

          goto LABEL_46;
        }

        v40 = v84;
        if (v96 != 2)
        {
          v98 = 0;
          goto LABEL_55;
        }

        v100 = *(v92 + 16);
        v99 = *(v92 + 24);
        v101 = __OFSUB__(v99, v100);
        v98 = v99 - v100;
        v43 = v148;
        if (v101)
        {
          goto LABEL_106;
        }

LABEL_45:
        if (v97 <= 1)
        {
          goto LABEL_46;
        }

LABEL_56:
        if (v97 != 2)
        {
          if (v98)
          {
            goto LABEL_87;
          }

          goto LABEL_82;
        }

        v104 = *(v94 + 16);
        v103 = *(v94 + 24);
        v101 = __OFSUB__(v103, v104);
        v102 = v103 - v104;
        if (v101)
        {
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
        }
      }

      if (v98 != v102)
      {
        goto LABEL_87;
      }

      if (v98 >= 1)
      {
        if (v96 > 1)
        {
          if (v96 == 2)
          {
            v108 = *(v92 + 16);
            v134 = *(v92 + 24);
            v139 = v94;
            sub_1C6B1CD10(v94, v95);
            v109 = sub_1C6D75BF0();
            if (v109)
            {
              v110 = v108;
              v111 = v109;
              v112 = sub_1C6D75C20();
              if (__OFSUB__(v110, v112))
              {
                goto LABEL_110;
              }

              v113 = v110;
              v133 = v110 - v112 + v111;
              v114 = v134;
            }

            else
            {
              v133 = 0;
              v114 = v134;
              v113 = v108;
            }

            if (__OFSUB__(v114, v113))
            {
              goto LABEL_109;
            }

            sub_1C6D75C10();
            v122 = v139;
            v123 = v136;
            sub_1C6B5DAE8(v133, v139, v95, v168);
            v136 = v123;
            sub_1C6B1C9F0(v122, v95);
            v89 = v161;
            if ((v168[0] & 1) == 0)
            {
              goto LABEL_87;
            }

            goto LABEL_82;
          }

          memset(v168, 0, 14);
          v120 = v94;
          sub_1C6B1CD10(v94, v95);
          v121 = v136;
          sub_1C6B5DAE8(v168, v120, v95, &v167);
          v136 = v121;
          v107 = v120;
        }

        else
        {
          if (v96)
          {
            v115 = v92;
            v116 = v92 >> 32;
            v134 = v116 - v115;
            if (v116 < v115)
            {
              goto LABEL_108;
            }

            v139 = v94;
            sub_1C6B1CD10(v94, v95);
            v117 = sub_1C6D75BF0();
            if (v117)
            {
              v118 = v117;
              v119 = sub_1C6D75C20();
              if (__OFSUB__(v115, v119))
              {
                goto LABEL_111;
              }

              v133 = v115 - v119 + v118;
            }

            else
            {
              v133 = 0;
            }

            v89 = v161;
            sub_1C6D75C10();
            v124 = v139;
            v125 = v136;
            sub_1C6B5DAE8(v133, v139, v95, v168);
            v136 = v125;
            sub_1C6B1C9F0(v124, v95);
            if ((v168[0] & 1) == 0)
            {
LABEL_87:
              sub_1C6B62664(v155, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
              sub_1C6B62664(v156, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
              sub_1C6B61A8C(v163, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
              v47 = v138;
              goto LABEL_101;
            }

            goto LABEL_82;
          }

          v168[0] = v92;
          LOWORD(v168[1]) = v93;
          BYTE2(v168[1]) = BYTE2(v93);
          BYTE3(v168[1]) = BYTE3(v93);
          BYTE4(v168[1]) = BYTE4(v93);
          BYTE5(v168[1]) = BYTE5(v93);
          v105 = v94;
          sub_1C6B1CD10(v94, v95);
          v106 = v136;
          sub_1C6B5DAE8(v168, v105, v95, &v167);
          v136 = v106;
          v107 = v105;
        }

        sub_1C6B1C9F0(v107, v95);
        if (!v167)
        {
          goto LABEL_87;
        }
      }

LABEL_82:
      v126 = *(v89 + 20);
      sub_1C6D78A40();
      sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v127 = v155;
      v128 = v156;
      v129 = sub_1C6D79560();
      sub_1C6B62664(v127, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      sub_1C6B62664(v128, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      sub_1C6B61A8C(v163, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v47 = v138;
      if ((v129 & 1) == 0)
      {
        goto LABEL_101;
      }

      goto LABEL_83;
    }

    if (v88(v87 + v86, 1, v89) != 1)
    {
      goto LABEL_91;
    }

    sub_1C6B61A8C(v87, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v40 = v84;
    v43 = v148;
LABEL_83:
    sub_1C6D78A40();
    sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
    v130 = sub_1C6D79560();
    sub_1C6B62664(v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding);
    sub_1C6B62664(v47, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding);
    if (v130)
    {
      v51 = v157 + v140;
      v50 = v158 + v140;
      if (--v48)
      {
        continue;
      }
    }

    goto LABEL_103;
  }

  v74 = v141;
  sub_1C6B61A0C(v71, v141, &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
  if (v72(v71 + v70, 1, v73) != 1)
  {
    v75 = v146;
    sub_1C6B5F6DC(v71 + v70, v146, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
    if (*v74 != *v75 || (*(v74 + 1) != *(v146 + 1) || *(v74 + 2) != *(v146 + 2)) && (sub_1C6D7A130() & 1) == 0)
    {
      sub_1C6B62664(v146, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
      sub_1C6B62664(v74, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
      sub_1C6B61A8C(v147, &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
      v56 = v148;
      v47 = v138;
      goto LABEL_97;
    }

    v76 = *(v73 + 24);
    sub_1C6D78A40();
    sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
    v77 = v146;
    v78 = sub_1C6D79560();
    sub_1C6B62664(v77, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
    sub_1C6B62664(v74, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
    sub_1C6B61A8C(v147, &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
    v56 = v148;
    v47 = v138;
    v68 = v150;
    v67 = v151;
    if ((v78 & 1) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_27;
  }

  sub_1C6B62664(v74, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
  v47 = v138;
LABEL_96:
  sub_1C6B624E4(v71, &qword_1EC1D6BB8, &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
  v56 = v148;
LABEL_97:
  v68 = v150;
  v67 = v151;
LABEL_98:
  sub_1C6B62664(v68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
  sub_1C6B62664(v67, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
  sub_1C6B61A8C(v154, &qword_1EC1D6BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
LABEL_99:
  v57 = v164;
LABEL_100:
  sub_1C6B62664(v165, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
  sub_1C6B62664(v57, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
  sub_1C6B61A8C(v137, &qword_1EC1D6BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
  v43 = v56;
LABEL_101:
  sub_1C6B62664(v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding);
  sub_1C6B62664(v47, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding);
LABEL_102:
  v130 = 0;
LABEL_103:
  v131 = *MEMORY[0x1E69E9840];
  return v130 & 1;
}

uint64_t sub_1C6B5A06C(uint64_t a1, uint64_t a2)
{
  v81 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v4 = *(v81 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v72 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6720];
  sub_1C6B62540(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v67 - v10;
  sub_1C6B61994(0, &unk_1EC1D6C40, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v76 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v67 - v14;
  v79 = sub_1C6D789A0();
  v15 = *(v79 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v74 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69AA900];
  sub_1C6B62540(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], v7);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v67 - v21;
  sub_1C6B61994(0, &qword_1EC1D6C50, &qword_1EDCE66F0, v18);
  v77 = v23;
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v67 - v25;
  v82 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v27 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v67 - v31;
  v33 = *(a1 + 16);
  if (v33 != *(a2 + 16))
  {
LABEL_27:
    v61 = 0;
    return v61 & 1;
  }

  if (!v33 || a1 == a2)
  {
    v61 = 1;
    return v61 & 1;
  }

  v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v35 = a1 + v34;
  v36 = a2 + v34;
  v75 = (v15 + 48);
  v67 = (v15 + 32);
  v68 = (v15 + 8);
  v73 = (v4 + 48);
  v71 = *(v30 + 72);
  v80 = v11;
  v83 = &v67 - v31;
  v69 = v22;
  while (1)
  {
    result = sub_1C6B5F654(v35, v32, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    if (!v33)
    {
      break;
    }

    v38 = v84;
    sub_1C6B5F654(v36, v84, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    v39 = *(v82 + 24);
    v40 = *(v77 + 48);
    v41 = MEMORY[0x1E69AA900];
    sub_1C6B61A0C(&v32[v39], v26, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    sub_1C6B61A0C(v38 + v39, &v26[v40], &qword_1EDCE66F0, v41);
    v42 = *v75;
    v43 = v79;
    if ((*v75)(v26, 1, v79) == 1)
    {
      v44 = v42(&v26[v40], 1, v43);
      v45 = v78;
      if (v44 != 1)
      {
        goto LABEL_22;
      }

      sub_1C6B61A8C(v26, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      v46 = v80;
      v47 = v73;
    }

    else
    {
      v48 = v69;
      sub_1C6B61A0C(v26, v69, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      v49 = v42(&v26[v40], 1, v43);
      v45 = v78;
      if (v49 == 1)
      {
        (*v68)(v48, v43);
LABEL_22:
        v63 = &qword_1EC1D6C50;
        v64 = &qword_1EDCE66F0;
        v65 = MEMORY[0x1E69AA900];
        v66 = v26;
LABEL_25:
        sub_1C6B624E4(v66, v63, v64, v65);
LABEL_26:
        sub_1C6B62664(v84, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
        sub_1C6B62664(v83, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
        goto LABEL_27;
      }

      v50 = v74;
      (*v67)(v74, &v26[v40], v43);
      sub_1C6B5F7C4(&qword_1EC1D6C58, MEMORY[0x1E69AA900]);
      v70 = sub_1C6D79560();
      v51 = *v68;
      (*v68)(v50, v43);
      v51(v48, v43);
      sub_1C6B61A8C(v26, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      v46 = v80;
      v47 = v73;
      if ((v70 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v52 = *(v76 + 48);
    sub_1C6B61A0C(v83, v45, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6B61A0C(v84, v45 + v52, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v53 = *v47;
    if ((*v47)(v45, 1, v81) == 1)
    {
      if (v53(v45 + v52, 1, v81) != 1)
      {
        goto LABEL_24;
      }

      sub_1C6B61A8C(v45, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    }

    else
    {
      sub_1C6B61A0C(v45, v46, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      if (v53(v45 + v52, 1, v81) == 1)
      {
        sub_1C6B62664(v46, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_24:
        v63 = &unk_1EC1D6C40;
        v64 = qword_1EDCE5660;
        v65 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event;
        v66 = v45;
        goto LABEL_25;
      }

      v54 = v72;
      sub_1C6B5F6DC(v45 + v52, v72, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v55 = static Com_Apple_News_Personalization_SessionEvent.OneOf_Event.== infix(_:_:)(v80, v54);
      v56 = v54;
      v57 = v80;
      sub_1C6B62664(v56, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      sub_1C6B62664(v57, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      sub_1C6B61A8C(v45, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      if ((v55 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v58 = *(v82 + 20);
    sub_1C6D78A40();
    sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
    v59 = v83;
    v60 = v84;
    v61 = sub_1C6D79560();
    sub_1C6B62664(v60, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    sub_1C6B62664(v59, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    if (v61)
    {
      v36 += v71;
      v35 += v71;
      v62 = v33-- == 1;
      v32 = v83;
      if (!v62)
      {
        continue;
      }
    }

    return v61 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6B5A9B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v11 = (&v20 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_13:
    v18 = 0;
    return v18 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1C6B5F654(v14, v11, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData);
      sub_1C6B5F654(v15, v8, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData);
      if (*v11 != *v8 || v11[1] != v8[1] || v11[2] != v8[2])
      {
        break;
      }

      v17 = *(v4 + 28);
      sub_1C6D78A40();
      sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v18 = sub_1C6D79560();
      sub_1C6B62664(v8, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData);
      sub_1C6B62664(v11, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData);
      if (v18)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_1C6B62664(v8, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData);
    sub_1C6B62664(v11, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData);
    goto LABEL_13;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1C6B5AC24(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6B5AC80(uint64_t a1, uint64_t a2)
{
  v81 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v4 = *(v81 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v72 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6720];
  sub_1C6B62540(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v67 - v10;
  sub_1C6B61994(0, &qword_1EC1D6CB0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v76 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v67 - v14;
  v79 = sub_1C6D789A0();
  v15 = *(v79 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v74 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69AA900];
  sub_1C6B62540(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], v7);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v67 - v21;
  sub_1C6B61994(0, &qword_1EC1D6C50, &qword_1EDCE66F0, v18);
  v77 = v23;
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v67 - v25;
  v82 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0);
  v27 = *(*(v82 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v82);
  v84 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v67 - v31;
  v33 = *(a1 + 16);
  if (v33 != *(a2 + 16))
  {
LABEL_27:
    v61 = 0;
    return v61 & 1;
  }

  if (!v33 || a1 == a2)
  {
    v61 = 1;
    return v61 & 1;
  }

  v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v35 = a1 + v34;
  v36 = a2 + v34;
  v75 = (v15 + 48);
  v67 = (v15 + 32);
  v68 = (v15 + 8);
  v73 = (v4 + 48);
  v71 = *(v30 + 72);
  v80 = v11;
  v83 = &v67 - v31;
  v69 = v22;
  while (1)
  {
    result = sub_1C6B5F654(v35, v32, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
    if (!v33)
    {
      break;
    }

    v38 = v84;
    sub_1C6B5F654(v36, v84, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
    v39 = *(v82 + 24);
    v40 = *(v77 + 48);
    v41 = MEMORY[0x1E69AA900];
    sub_1C6B61A0C(&v32[v39], v26, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    sub_1C6B61A0C(v38 + v39, &v26[v40], &qword_1EDCE66F0, v41);
    v42 = *v75;
    v43 = v79;
    if ((*v75)(v26, 1, v79) == 1)
    {
      v44 = v42(&v26[v40], 1, v43);
      v45 = v78;
      if (v44 != 1)
      {
        goto LABEL_22;
      }

      sub_1C6B61A8C(v26, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      v46 = v80;
      v47 = v73;
    }

    else
    {
      v48 = v69;
      sub_1C6B61A0C(v26, v69, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      v49 = v42(&v26[v40], 1, v43);
      v45 = v78;
      if (v49 == 1)
      {
        (*v68)(v48, v43);
LABEL_22:
        v63 = &qword_1EC1D6C50;
        v64 = &qword_1EDCE66F0;
        v65 = MEMORY[0x1E69AA900];
        v66 = v26;
LABEL_25:
        sub_1C6B624E4(v66, v63, v64, v65);
LABEL_26:
        sub_1C6B62664(v84, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
        sub_1C6B62664(v83, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
        goto LABEL_27;
      }

      v50 = v74;
      (*v67)(v74, &v26[v40], v43);
      sub_1C6B5F7C4(&qword_1EC1D6C58, MEMORY[0x1E69AA900]);
      v70 = sub_1C6D79560();
      v51 = *v68;
      (*v68)(v50, v43);
      v51(v48, v43);
      sub_1C6B61A8C(v26, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      v46 = v80;
      v47 = v73;
      if ((v70 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v52 = *(v76 + 48);
    sub_1C6B61A0C(v83, v45, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6B61A0C(v84, v45 + v52, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v53 = *v47;
    if ((*v47)(v45, 1, v81) == 1)
    {
      if (v53(v45 + v52, 1, v81) != 1)
      {
        goto LABEL_24;
      }

      sub_1C6B61A8C(v45, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    }

    else
    {
      sub_1C6B61A0C(v45, v46, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      if (v53(v45 + v52, 1, v81) == 1)
      {
        sub_1C6B62664(v46, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_24:
        v63 = &qword_1EC1D6CB0;
        v64 = qword_1EDCE3EB8;
        v65 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event;
        v66 = v45;
        goto LABEL_25;
      }

      v54 = v72;
      sub_1C6B5F6DC(v45 + v52, v72, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v55 = static Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event.== infix(_:_:)(v80, v54);
      v56 = v54;
      v57 = v80;
      sub_1C6B62664(v56, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      sub_1C6B62664(v57, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      sub_1C6B61A8C(v45, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      if ((v55 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v58 = *(v82 + 20);
    sub_1C6D78A40();
    sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
    v59 = v83;
    v60 = v84;
    v61 = sub_1C6D79560();
    sub_1C6B62664(v60, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
    sub_1C6B62664(v59, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
    if (v61)
    {
      v36 += v71;
      v35 += v71;
      v62 = v33-- == 1;
      v32 = v83;
      if (!v62)
      {
        continue;
      }
    }

    return v61 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6B5B5C4(uint64_t a1, uint64_t a2)
{
  sub_1C6B62430(0, &qword_1EC1D6C90, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
  v52 = v4;
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v47 - v6;
  v58 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata(0);
  v7 = *(v58 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v50 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B62540(0, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v47 - v12;
  sub_1C6B61994(0, &qword_1EC1D6CA0, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
  v15 = v14;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v47 - v17;
  v57 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
  v19 = *(*(v57 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v57);
  v22 = (&v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v55 = &v47 - v24;
  v25 = *(a1 + 16);
  if (v25 != *(a2 + 16))
  {
    goto LABEL_22;
  }

  if (!v25 || a1 == a2)
  {
    v43 = 1;
    return v43 & 1;
  }

  v48 = v15;
  v49 = v13;
  v26 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v27 = a1 + v26;
  v28 = a2 + v26;
  v53 = *(v23 + 72);
  v54 = (v7 + 48);
  v29 = v55;
  while (1)
  {
    result = sub_1C6B5F654(v27, v29, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    if (!v25)
    {
      __break(1u);
      return result;
    }

    sub_1C6B5F654(v28, v22, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    if (*v29 != *v22)
    {
      sub_1C6B62664(v22, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      v44 = v29;
      goto LABEL_21;
    }

    v56 = v25;
    v31 = v22;
    v32 = *(v57 + 20);
    v33 = *(v15 + 48);
    sub_1C6B61A0C(v29 + v32, v18, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    v34 = v31 + v32;
    v22 = v31;
    sub_1C6B61A0C(v34, &v18[v33], &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    v35 = *v54;
    if ((*v54)(v18, 1, v58) == 1)
    {
      if (v35(&v18[v33], 1, v58) == 1)
      {
        sub_1C6B61A8C(v18, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
        goto LABEL_12;
      }

      sub_1C6B62664(v31, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      v45 = v29;
      v46 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle;
LABEL_19:
      sub_1C6B62664(v45, v46);
      sub_1C6B624E4(v18, &qword_1EC1D6CA0, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
      goto LABEL_22;
    }

    v36 = v49;
    sub_1C6B61A0C(v18, v49, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    if (v35(&v18[v33], 1, v58) == 1)
    {
      sub_1C6B62664(v31, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      sub_1C6B62664(v29, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      v46 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata;
      v45 = v36;
      goto LABEL_19;
    }

    v37 = &v18[v33];
    v38 = v50;
    sub_1C6B5F6DC(v37, v50, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    v39 = v51;
    v40 = *(v52 + 48);
    sub_1C6B5F654(v36, v51, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    sub_1C6B5F654(v38, v39 + v40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    v41 = static Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.== infix(_:_:)(v39, v39 + v40);
    sub_1C6B62664(v38, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    sub_1C6B62664(v39 + v40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    sub_1C6B62664(v39, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    v22 = v31;
    sub_1C6B62664(v36, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    sub_1C6B61A8C(v18, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    v15 = v48;
    if ((v41 & 1) == 0)
    {
      break;
    }

LABEL_12:
    v42 = *(v57 + 24);
    sub_1C6D78A40();
    sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
    v29 = v55;
    v43 = sub_1C6D79560();
    sub_1C6B62664(v22, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    sub_1C6B62664(v29, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    if (v43)
    {
      v25 = v56 - 1;
      v28 += v53;
      v27 += v53;
      if (v56 != 1)
      {
        continue;
      }
    }

    return v43 & 1;
  }

  sub_1C6B62664(v31, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
  v44 = v55;
LABEL_21:
  sub_1C6B62664(v44, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
LABEL_22:
  v43 = 0;
  return v43 & 1;
}

uint64_t sub_1C6B5BCD8(uint64_t a1, uint64_t a2)
{
  v81 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  v4 = *(v81 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v72 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6720];
  sub_1C6B62540(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v67 - v10;
  sub_1C6B61994(0, &qword_1EC1D6C60, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v76 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v67 - v14;
  v79 = sub_1C6D789A0();
  v15 = *(v79 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v74 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69AA900];
  sub_1C6B62540(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], v7);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v67 - v21;
  sub_1C6B61994(0, &qword_1EC1D6C50, &qword_1EDCE66F0, v18);
  v77 = v23;
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v67 - v25;
  v82 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
  v27 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v67 - v31;
  v33 = *(a1 + 16);
  if (v33 != *(a2 + 16))
  {
LABEL_27:
    v61 = 0;
    return v61 & 1;
  }

  if (!v33 || a1 == a2)
  {
    v61 = 1;
    return v61 & 1;
  }

  v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v35 = a1 + v34;
  v36 = a2 + v34;
  v75 = (v15 + 48);
  v67 = (v15 + 32);
  v68 = (v15 + 8);
  v73 = (v4 + 48);
  v71 = *(v30 + 72);
  v80 = v11;
  v83 = &v67 - v31;
  v69 = v22;
  while (1)
  {
    result = sub_1C6B5F654(v35, v32, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);
    if (!v33)
    {
      break;
    }

    v38 = v84;
    sub_1C6B5F654(v36, v84, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);
    v39 = *(v82 + 24);
    v40 = *(v77 + 48);
    v41 = MEMORY[0x1E69AA900];
    sub_1C6B61A0C(&v32[v39], v26, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    sub_1C6B61A0C(v38 + v39, &v26[v40], &qword_1EDCE66F0, v41);
    v42 = *v75;
    v43 = v79;
    if ((*v75)(v26, 1, v79) == 1)
    {
      v44 = v42(&v26[v40], 1, v43);
      v45 = v78;
      if (v44 != 1)
      {
        goto LABEL_22;
      }

      sub_1C6B61A8C(v26, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      v46 = v80;
      v47 = v73;
    }

    else
    {
      v48 = v69;
      sub_1C6B61A0C(v26, v69, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      v49 = v42(&v26[v40], 1, v43);
      v45 = v78;
      if (v49 == 1)
      {
        (*v68)(v48, v43);
LABEL_22:
        v63 = &qword_1EC1D6C50;
        v64 = &qword_1EDCE66F0;
        v65 = MEMORY[0x1E69AA900];
        v66 = v26;
LABEL_25:
        sub_1C6B624E4(v66, v63, v64, v65);
LABEL_26:
        sub_1C6B62664(v84, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);
        sub_1C6B62664(v83, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);
        goto LABEL_27;
      }

      v50 = v74;
      (*v67)(v74, &v26[v40], v43);
      sub_1C6B5F7C4(&qword_1EC1D6C58, MEMORY[0x1E69AA900]);
      v70 = sub_1C6D79560();
      v51 = *v68;
      (*v68)(v50, v43);
      v51(v48, v43);
      sub_1C6B61A8C(v26, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      v46 = v80;
      v47 = v73;
      if ((v70 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v52 = *(v76 + 48);
    sub_1C6B61A0C(v83, v45, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    sub_1C6B61A0C(v84, v45 + v52, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    v53 = *v47;
    if ((*v47)(v45, 1, v81) == 1)
    {
      if (v53(v45 + v52, 1, v81) != 1)
      {
        goto LABEL_24;
      }

      sub_1C6B61A8C(v45, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    }

    else
    {
      sub_1C6B61A0C(v45, v46, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
      if (v53(v45 + v52, 1, v81) == 1)
      {
        sub_1C6B62664(v46, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
LABEL_24:
        v63 = &qword_1EC1D6C60;
        v64 = qword_1EDCE50F8;
        v65 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event;
        v66 = v45;
        goto LABEL_25;
      }

      v54 = v72;
      sub_1C6B5F6DC(v45 + v52, v72, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
      v55 = static Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event.== infix(_:_:)(v80, v54);
      v56 = v54;
      v57 = v80;
      sub_1C6B62664(v56, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
      sub_1C6B62664(v57, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
      sub_1C6B61A8C(v45, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
      if ((v55 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v58 = *(v82 + 20);
    sub_1C6D78A40();
    sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
    v59 = v83;
    v60 = v84;
    v61 = sub_1C6D79560();
    sub_1C6B62664(v60, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);
    sub_1C6B62664(v59, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);
    if (v61)
    {
      v36 += v71;
      v35 += v71;
      v62 = v33-- == 1;
      v32 = v83;
      if (!v62)
      {
        continue;
      }
    }

    return v61 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6B5C61C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6B5C678(uint64_t a1, uint64_t a2)
{
  v34[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v3 = 0;
      v4 = (a1 + 40);
      v5 = (a2 + 40);
      while (1)
      {
        v7 = *(v4 - 1);
        v6 = *v4;
        v9 = *(v5 - 1);
        v8 = *v5;
        v10 = *v4 >> 62;
        v11 = *v5 >> 62;
        if (v10 == 3)
        {
          break;
        }

        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v20 = *(v7 + 16);
            v19 = *(v7 + 24);
            v17 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v17)
            {
              goto LABEL_63;
            }

            goto LABEL_28;
          }

          v13 = 0;
          if (v11 <= 1)
          {
            goto LABEL_29;
          }
        }

        else if (v10)
        {
          LODWORD(v13) = HIDWORD(v7) - v7;
          if (__OFSUB__(HIDWORD(v7), v7))
          {
            goto LABEL_64;
          }

          v13 = v13;
          if (v11 <= 1)
          {
LABEL_29:
            if (v11)
            {
              LODWORD(v18) = HIDWORD(v9) - v9;
              if (__OFSUB__(HIDWORD(v9), v9))
              {
                __break(1u);
LABEL_62:
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
              }

              v18 = v18;
            }

            else
            {
              v18 = BYTE6(v8);
            }

            goto LABEL_33;
          }
        }

        else
        {
          v13 = BYTE6(v6);
          if (v11 <= 1)
          {
            goto LABEL_29;
          }
        }

LABEL_22:
        if (v11 != 2)
        {
          if (v13)
          {
            goto LABEL_58;
          }

          goto LABEL_6;
        }

        v16 = *(v9 + 16);
        v15 = *(v9 + 24);
        v17 = __OFSUB__(v15, v16);
        v18 = v15 - v16;
        if (v17)
        {
          goto LABEL_62;
        }

LABEL_33:
        if (v13 != v18)
        {
          goto LABEL_58;
        }

        if (v13 < 1)
        {
          goto LABEL_6;
        }

        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v32 = v3;
            v21 = *(v7 + 16);
            v31 = *(v7 + 24);
            sub_1C6B1CD10(v7, v6);
            sub_1C6B1CD10(v9, v8);
            v22 = sub_1C6D75BF0();
            if (v22)
            {
              v23 = sub_1C6D75C20();
              if (__OFSUB__(v21, v23))
              {
                goto LABEL_67;
              }

              v22 += v21 - v23;
            }

            if (__OFSUB__(v31, v21))
            {
              goto LABEL_66;
            }

            sub_1C6D75C10();
            v24 = v22;
            v25 = v9;
            v26 = v8;
            v3 = v32;
            goto LABEL_54;
          }

          memset(v34, 0, 14);
          sub_1C6B1CD10(v7, v6);
          sub_1C6B1CD10(v9, v8);
        }

        else
        {
          if (v10)
          {
            if (v7 >> 32 < v7)
            {
              goto LABEL_65;
            }

            sub_1C6B1CD10(v7, v6);
            sub_1C6B1CD10(v9, v8);
            v27 = sub_1C6D75BF0();
            if (v27)
            {
              v28 = sub_1C6D75C20();
              if (__OFSUB__(v7, v28))
              {
                goto LABEL_68;
              }

              v27 += v7 - v28;
            }

            sub_1C6D75C10();
            v24 = v27;
            v25 = v9;
            v26 = v8;
LABEL_54:
            sub_1C6B5DAE8(v24, v25, v26, v34);
            sub_1C6B1C9F0(v9, v8);
            sub_1C6B1C9F0(v7, v6);
            if ((v34[0] & 1) == 0)
            {
              goto LABEL_58;
            }

            goto LABEL_6;
          }

          v34[0] = *(v4 - 1);
          LOWORD(v34[1]) = v6;
          BYTE2(v34[1]) = BYTE2(v6);
          BYTE3(v34[1]) = BYTE3(v6);
          BYTE4(v34[1]) = BYTE4(v6);
          BYTE5(v34[1]) = BYTE5(v6);
          sub_1C6B1CD10(v7, v6);
          sub_1C6B1CD10(v9, v8);
        }

        sub_1C6B5DAE8(v34, v9, v8, &v33);
        sub_1C6B1C9F0(v9, v8);
        sub_1C6B1C9F0(v7, v6);
        if (!v33)
        {
          goto LABEL_58;
        }

LABEL_6:
        v4 += 2;
        v5 += 2;
        if (!--v2)
        {
          goto LABEL_59;
        }
      }

      if (v7)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6 == 0xC000000000000000;
      }

      v13 = 0;
      v14 = v12 && *v5 >> 62 == 3;
      if (v14 && !v9 && v8 == 0xC000000000000000)
      {
        goto LABEL_6;
      }

LABEL_28:
      if (v11 <= 1)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

LABEL_59:
    result = 1;
  }

  else
  {
LABEL_58:
    result = 0;
  }

  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C6B5CA84(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1C6B5CAE0(uint64_t a1, uint64_t a2)
{
  v58 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer(0);
  v4 = *(v58 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v7 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v54 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v54 - v12;
  sub_1C6B625A4(0, &qword_1EC1D6B90, &unk_1EC1D6B98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v60 = a2;
  if (a1 != a2 && *(a1 + 16) == *(v60 + 16))
  {
    v55 = a1;
    v56 = &v54 - v16;
    v59 = v17;
    v18 = 0;
    v19 = *(a1 + 64);
    v54 = a1 + 64;
    v20 = 1 << *(a1 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & v19;
    v23 = (v20 + 63) >> 6;
    while (v22)
    {
      v61 = (v22 - 1) & v22;
      v24 = __clz(__rbit64(v22)) | (v18 << 6);
LABEL_16:
      v30 = (*(v55 + 48) + 16 * v24);
      v32 = *v30;
      v31 = v30[1];
      v33 = v57;
      sub_1C6B5F654(*(v55 + 56) + *(v4 + 72) * v24, v57, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
      sub_1C6B625FC(0, &unk_1EC1D6B98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
      v35 = v34;
      v36 = *(v34 + 48);
      v37 = v59;
      *v59 = v32;
      v37[1] = v31;
      v38 = v33;
      v27 = v37;
      sub_1C6B5F6DC(v38, v37 + v36, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
      (*(*(v35 - 8) + 56))(v27, 0, 1, v35);

LABEL_17:
      v39 = v27;
      v40 = v56;
      sub_1C6B61924(v39, v56, &qword_1EC1D6B90, &unk_1EC1D6B98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
      sub_1C6B625FC(0, &unk_1EC1D6B98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
      if ((*(*(v35 - 8) + 48))(v40, 1, v35) == 1)
      {
        return;
      }

      v41 = v40;
      v42 = v7;
      v43 = *(v35 + 48);
      v44 = *v41;
      v45 = v41[1];
      sub_1C6B5F6DC(v41 + v43, v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
      v46 = v44;
      v47 = v60;
      v48 = sub_1C6B5DEA8(v46, v45);
      v50 = v49;

      if ((v50 & 1) == 0)
      {
        goto LABEL_25;
      }

      v7 = v42;
      sub_1C6B5F654(*(v47 + 56) + *(v4 + 72) * v48, v42, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
      if ((sub_1C6B58600(*v42, *v10) & 1) == 0)
      {
        sub_1C6B62664(v42, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
LABEL_25:
        sub_1C6B62664(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
        return;
      }

      v51 = *(v58 + 20);
      sub_1C6D78A40();
      sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v52 = sub_1C6D79560();
      sub_1C6B62664(v42, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
      sub_1C6B62664(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
      v22 = v61;
      if ((v52 & 1) == 0)
      {
        return;
      }
    }

    if (v23 <= v18 + 1)
    {
      v25 = v18 + 1;
    }

    else
    {
      v25 = v23;
    }

    v26 = v25 - 1;
    v27 = v59;
    while (1)
    {
      v28 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v28 >= v23)
      {
        sub_1C6B625FC(0, &unk_1EC1D6B98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
        v35 = v53;
        (*(*(v53 - 8) + 56))(v27, 1, 1, v53);
        v61 = 0;
        v18 = v26;
        goto LABEL_17;
      }

      v29 = *(v54 + 8 * v28);
      ++v18;
      if (v29)
      {
        v61 = (v29 - 1) & v29;
        v24 = __clz(__rbit64(v29)) | (v28 << 6);
        v18 = v28;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C6B5D074(uint64_t a1, uint64_t a2)
{
  v90 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v4 = *(v90 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v77 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v73 - v9;
  sub_1C6B61994(0, &qword_1EC1D6CC0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v83 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v73 - v13;
  v82 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  v88 = *(v82 - 8);
  v15 = *(v88 + 64);
  v16 = MEMORY[0x1EEE9AC00](v82);
  v89 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v73 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v81 = &v73 - v21;
  sub_1C6B625A4(0, &unk_1EC1D6CD8, &qword_1EDCDFB70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = (&v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v24);
  v84 = (&v73 - v28);
  v85 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v85 + 16))
  {
    return 0;
  }

  v29 = 0;
  v78 = a1;
  v79 = v26;
  v30 = *(a1 + 64);
  v75 = a1 + 64;
  v76 = v10;
  v31 = 1 << *(a1 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v30;
  v74 = (v31 + 63) >> 6;
  v80 = (v4 + 48);
  while (v33)
  {
    v87 = (v33 - 1) & v33;
    v37 = __clz(__rbit64(v33)) | (v29 << 6);
LABEL_17:
    v43 = (*(v78 + 48) + 16 * v37);
    v44 = *v43;
    v45 = v43[1];
    v46 = v81;
    sub_1C6B5F654(*(v78 + 56) + *(v88 + 72) * v37, v81, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    sub_1C6B625FC(0, &qword_1EDCDFB70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    v48 = v47;
    v49 = *(v47 + 48);
    *v26 = v44;
    v26[1] = v45;
    sub_1C6B5F6DC(v46, v26 + v49, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    (*(*(v48 - 8) + 56))(v26, 0, 1, v48);

    v40 = v84;
LABEL_18:
    sub_1C6B61924(v26, v40, &unk_1EC1D6CD8, &qword_1EDCDFB70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    sub_1C6B625FC(0, &qword_1EDCDFB70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    v50 = (*(*(v48 - 8) + 48))(v40, 1, v48);
    v86 = v50 == 1;
    if (v50 == 1)
    {
      return v86;
    }

    v51 = v14;
    v52 = v90;
    v53 = *(v48 + 48);
    v54 = *v40;
    v55 = v40[1];
    sub_1C6B5F6DC(v40 + v53, v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    v56 = v85;
    v57 = sub_1C6B5DEA8(v54, v55);
    v58 = v20;
    v60 = v59;

    if ((v60 & 1) == 0)
    {
      goto LABEL_31;
    }

    v61 = *(v56 + 56);
    v62 = v89;
    sub_1C6B5F654(v61 + *(v88 + 72) * v57, v89, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    v63 = *(v83 + 48);
    v64 = v62;
    v14 = v51;
    sub_1C6B61A0C(v64, v51, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6B61A0C(v58, v51 + v63, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    v65 = *v80;
    v20 = v58;
    if ((*v80)(v51, 1, v52) == 1)
    {
      v66 = v65(v51 + v63, 1, v90);
      v26 = v79;
      if (v66 != 1)
      {
        goto LABEL_29;
      }

      sub_1C6B61A8C(v14, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    }

    else
    {
      v67 = v51;
      v68 = v76;
      sub_1C6B61A0C(v51, v76, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      v69 = v65(v51 + v63, 1, v90);
      v26 = v79;
      if (v69 == 1)
      {
        sub_1C6B62664(v68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
        v14 = v67;
        v20 = v58;
LABEL_29:
        sub_1C6B624E4(v14, &qword_1EC1D6CC0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
LABEL_30:
        sub_1C6B62664(v89, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
        v58 = v20;
LABEL_31:
        sub_1C6B62664(v58, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
        return 0;
      }

      v70 = v77;
      sub_1C6B5F6DC(v67 + v63, v77, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      v71 = _s19NewsPersonalization010Com_Apple_A31_Algorithms_Proto_Model_FeatureV10OneOf_KindO2eeoiySbAE_AEtFZ_0(v68, v70);
      sub_1C6B62664(v70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      sub_1C6B62664(v68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      sub_1C6B61A8C(v67, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      v14 = v67;
      v20 = v58;
      if ((v71 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    v34 = *(v82 + 20);
    sub_1C6D78A40();
    sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
    v35 = v89;
    v36 = sub_1C6D79560();
    sub_1C6B62664(v35, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    result = sub_1C6B62664(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    v33 = v87;
    if ((v36 & 1) == 0)
    {
      return v86;
    }
  }

  if (v74 <= v29 + 1)
  {
    v38 = v29 + 1;
  }

  else
  {
    v38 = v74;
  }

  v39 = v38 - 1;
  v40 = v84;
  while (1)
  {
    v41 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v41 >= v74)
    {
      sub_1C6B625FC(0, &qword_1EDCDFB70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      v48 = v72;
      (*(*(v72 - 8) + 56))(v26, 1, 1, v72);
      v87 = 0;
      v29 = v39;
      goto LABEL_18;
    }

    v42 = *(v75 + 8 * v41);
    ++v29;
    if (v42)
    {
      v87 = (v42 - 1) & v42;
      v37 = __clz(__rbit64(v42)) | (v41 << 6);
      v29 = v41;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

void sub_1C6B5D968(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = v16;
      v18 = sub_1C6B5DEA8(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = sub_1C6D79BC0();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C6B5DAE8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1C6D75BF0();
    if (v10)
    {
      v11 = sub_1C6D75C20();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1C6D75C10();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1C6D75BF0();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1C6D75C20();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1C6D75C10();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1C6B5DD18(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1C6B5DFD8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1C6B1C9F0(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_1C6B5DAE8(v14, a3, a4, &v13);
  v10 = v4;
  sub_1C6B1C9F0(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

unint64_t sub_1C6B5DEA8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1C6D7A260();
  sub_1C6D79610();
  v6 = sub_1C6D7A2B0();

  return sub_1C6B5DF20(a1, a2, v6);
}

unint64_t sub_1C6B5DF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1C6D7A130())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1C6B5DFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1C6D75BF0();
  v11 = result;
  if (result)
  {
    result = sub_1C6D75C20();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1C6D75C10();
  sub_1C6B5DAE8(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1C6B5E090(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1C6B1CD10(a3, a4);
          return sub_1C6B5DD18(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s19NewsPersonalization010Com_Apple_A33_Algorithms_Proto_Model_FloatListV2eeoiySbAC_ACtFZ_0(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_10:
    v8 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0) + 20);
    sub_1C6D78A40();
    sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
    return sub_1C6D79560() & 1;
  }

  else
  {
    v6 = (v2 + 32);
    v7 = (v3 + 32);
    while (v4)
    {
      if (*v6 != *v7)
      {
        return 0;
      }

      ++v6;
      ++v7;
      if (!--v4)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _s19NewsPersonalization010Com_Apple_A31_Algorithms_Proto_Model_FeatureV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  sub_1C6B61994(0, &qword_1EC1D6CC0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1C6B61A0C(a1, &v24 - v16, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  sub_1C6B61A0C(a2, &v17[v18], qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_1C6B61A8C(v17, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
LABEL_9:
      v22 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0) + 20);
      sub_1C6D78A40();
      sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v20 = sub_1C6D79560();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_1C6B61A0C(v17, v12, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_1C6B62664(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
LABEL_6:
    sub_1C6B624E4(v17, &qword_1EC1D6CC0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    goto LABEL_7;
  }

  sub_1C6B5F6DC(&v17[v18], v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v21 = _s19NewsPersonalization010Com_Apple_A31_Algorithms_Proto_Model_FeatureV10OneOf_KindO2eeoiySbAE_AEtFZ_0(v12, v8);
  sub_1C6B62664(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  sub_1C6B62664(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  sub_1C6B61A8C(v17, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s19NewsPersonalization010Com_Apple_A31_Algorithms_Proto_Model_FeatureV10OneOf_KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v72 = a1;
  v73 = a2;
  v65 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v2 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v68 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0);
  v4 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v67 = (&v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0);
  v6 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v71 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v70 = (&v62 - v21);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v69 = &v62 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = (&v62 - v25);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v62 - v27;
  sub_1C6B62430(0, &unk_1EC1D6CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v33 = &v62 - v32;
  v34 = *(v31 + 56);
  sub_1C6B5F654(v72, &v62 - v32, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  sub_1C6B5F654(v73, &v33[v34], type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1C6B5F654(v33, v26, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v55 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List;
        v56 = v26;
        goto LABEL_31;
      }

      v42 = v33;
      v51 = &v33[v34];
      v52 = v11;
      sub_1C6B5F6DC(v51, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
      if (sub_1C6B5AC24(*v26, *v11))
      {
        v53 = *(v8 + 20);
        sub_1C6D78A40();
        sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
        if (sub_1C6D79560())
        {
          v49 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List;
          sub_1C6B62664(v52, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
          v50 = v26;
          goto LABEL_24;
        }
      }

      v59 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List;
      sub_1C6B62664(v52, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
      v60 = v26;
      goto LABEL_40;
    }

    sub_1C6B5F654(v33, v28, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C6B5F6DC(&v33[v34], v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
      if (sub_1C6B5CA84(*v28, *v15))
      {
        v61 = *(v12 + 20);
        sub_1C6D78A40();
        sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
        if (sub_1C6D79560())
        {
          sub_1C6B62664(v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
          sub_1C6B62664(v28, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
          v40 = v33;
          goto LABEL_25;
        }
      }

      sub_1C6B62664(v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
      sub_1C6B62664(v28, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
      v58 = v33;
      goto LABEL_41;
    }

    v41 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList;
    goto LABEL_29;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v28 = v69;
    sub_1C6B5F654(v33, v69, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v42 = v33;
      v43 = &v33[v34];
      v44 = v66;
      sub_1C6B5F6DC(v43, v66, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
      if (sub_1C6B5C61C(*v28, *v44))
      {
        v45 = *(v63 + 20);
        sub_1C6D78A40();
        sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
        if (sub_1C6D79560())
        {
          v46 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List;
LABEL_19:
          v49 = v46;
          sub_1C6B62664(v44, v46);
          v50 = v28;
LABEL_24:
          sub_1C6B62664(v50, v49);
          v40 = v42;
          goto LABEL_25;
        }
      }

      v57 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List;
      goto LABEL_35;
    }

    v41 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List;
LABEL_29:
    v55 = v41;
    v56 = v28;
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v28 = v71;
    sub_1C6B5F654(v33, v71, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v42 = v33;
      v47 = &v33[v34];
      v44 = v68;
      sub_1C6B5F6DC(v47, v68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      if (sub_1C6B5E090(*v28, *(v28 + 1), *v44, *(v44 + 8)))
      {
        v48 = *(v65 + 20);
        sub_1C6D78A40();
        sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
        if (sub_1C6D79560())
        {
          v46 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List;
          goto LABEL_19;
        }
      }

      v57 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List;
LABEL_35:
      v59 = v57;
      sub_1C6B62664(v44, v57);
      v60 = v28;
LABEL_40:
      sub_1C6B62664(v60, v59);
      v58 = v42;
LABEL_41:
      sub_1C6B62664(v58, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      return 0;
    }

    v41 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List;
    goto LABEL_29;
  }

  v36 = v70;
  sub_1C6B5F654(v33, v70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v37 = v67;
    sub_1C6B5F6DC(&v33[v34], v67, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    if (sub_1C6B5C678(*v36, *v37))
    {
      v38 = v33;
      v39 = *(v64 + 20);
      sub_1C6D78A40();
      sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v33 = v38;
      if (sub_1C6D79560())
      {
        sub_1C6B62664(v37, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
        sub_1C6B62664(v36, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
        v40 = v38;
LABEL_25:
        sub_1C6B62664(v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
        return 1;
      }
    }

    sub_1C6B62664(v37, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    sub_1C6B62664(v36, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    v58 = v33;
    goto LABEL_41;
  }

  v55 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList;
  v56 = v36;
LABEL_31:
  sub_1C6B62664(v56, v55);
  sub_1C6B626C4(v33);
  return 0;
}

unint64_t sub_1C6B5F0C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C6B615B0(0, &unk_1EDCDF710, MEMORY[0x1E69E35A8], MEMORY[0x1E69E6EC8]);
    v3 = sub_1C6D79F20();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C6B5DEA8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_1C6B5F204(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C6B615B0(0, &qword_1EDCDF678, sub_1C6B61624, MEMORY[0x1E69E6EC8]);
    v3 = sub_1C6D79F20();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_1C6B5DEA8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_1C6B5F348(uint64_t a1)
{
  sub_1C6B61724(0, &unk_1EDCDFB30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1C6B615B0(0, &qword_1EC1D6CF8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature, MEMORY[0x1E69E6EC8]);
    v9 = sub_1C6D79F20();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1C6B6273C(v11, v7, &unk_1EDCDFB30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1C6B5DEA8(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
      result = sub_1C6B5F6DC(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

uint64_t sub_1C6B5F5A0(uint64_t a1, uint64_t a2)
{
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6B5F654(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6B5F6DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6B5F7C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6B6005C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    result = sub_1C6D78A40();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C6B601B0()
{
  result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_1C6B6029C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  sub_1C6B6052C(319, a4);
  if (v4 <= 0x3F)
  {
    sub_1C6D78A40();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C6D78A40();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6D78A40();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1C6B6052C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C6D79820();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1C6B605A0()
{
  result = sub_1C6D78A40();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C6B6061C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C6B62490(0, &qword_1EC1D6CB8);
    v3 = sub_1C6D79F20();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C6B5DEA8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_1C6B6072C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C6B62490(0, &qword_1EC1D6B70);
    v3 = sub_1C6D79F20();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C6B5DEA8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

unint64_t sub_1C6B60858(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_1C6B61548(0, a2, a3, a4);
    v6 = sub_1C6D79F20();

    for (i = (a1 + 48); ; i += 3)
    {
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      v11 = v10;
      result = sub_1C6B5DEA8(v8, v9);
      if (v13)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v6[6] + 16 * result);
      *v14 = v8;
      v14[1] = v9;
      *(v6[7] + 8 * result) = v11;
      v15 = v6[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v6[2] = v17;
      if (!--v4)
      {

        return v6;
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

unint64_t sub_1C6B60950(uint64_t a1)
{
  sub_1C6B61724(0, &qword_1EDCDFB48, sub_1C6B61790);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1C6B615B0(0, &qword_1EC1D6B88, sub_1C6B61790, MEMORY[0x1E69E6EC8]);
    v9 = sub_1C6D79F20();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1C6B6273C(v11, v7, &qword_1EDCDFB48, sub_1C6B61790);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1C6B5DEA8(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      sub_1C6B61790();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v17, v7 + v10, v20);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

unint64_t sub_1C6B60B8C(uint64_t a1)
{
  sub_1C6B620B4();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1C6B62154();
    v9 = sub_1C6D79F20();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1C6B5F654(v11, v7, sub_1C6B620B4);
      result = sub_1C6B64E18(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_1C6D763D0();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      *(v9[7] + 8 * v15) = *&v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

unint64_t sub_1C6B60D60(uint64_t a1)
{
  sub_1C6B61724(0, &qword_1EDCE0168, MEMORY[0x1E6996170]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = v27 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1C6B61488();
    v9 = sub_1C6D79F20();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1C6B6273C(v11, v7, &qword_1EDCE0168, MEMORY[0x1E6996170]);
      v13 = *(v7 + 1);
      v27[0] = *v7;
      v27[1] = v13;
      v27[2] = *(v7 + 2);
      v28 = *(v7 + 6);
      result = sub_1C6B64FC0(v27);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = v9[6] + 56 * result;
      v18 = *(v7 + 5);
      v19 = *(v7 + 6);
      v20 = *(v7 + 8);
      v21 = *(v7 + 24);
      *v17 = *v7;
      *(v17 + 8) = v20;
      *(v17 + 24) = v21;
      *(v17 + 40) = v18;
      *(v17 + 48) = v19;
      v22 = v9[7];
      v23 = sub_1C6D78810();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v16, &v7[v10], v23);
      v24 = v9[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v9[2] = v26;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

unint64_t sub_1C6B60FAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C6B61688();
    v3 = sub_1C6D79F20();
    for (i = (a1 + 36); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1C6B6502C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + 4 * result) = v6;
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

unint64_t sub_1C6B61098(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1C6B62490(0, &qword_1EDCEA470);
    v5 = sub_1C6D79F20();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = a2(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v2)
      {

        return v5;
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

unint64_t sub_1C6B611B8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1C6B62490(0, &qword_1EC1D6BF8);
    v5 = sub_1C6D79F20();

    for (i = (a1 + 56); ; i += 4)
    {
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      result = a2(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      v14 = (v5[7] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
      v15 = v5[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v5[2] = v17;
      if (!--v2)
      {

        return v5;
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

unint64_t sub_1C6B612F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C6B613F0();
    v3 = sub_1C6D79F20();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C6B5DEA8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

void sub_1C6B613F0()
{
  if (!qword_1EDCDF6C0)
  {
    sub_1C6B62540(255, &qword_1EDCDFA70, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData, MEMORY[0x1E69E62F8]);
    v0 = sub_1C6D79F30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDF6C0);
    }
  }
}

void sub_1C6B61488()
{
  if (!qword_1EDCDF740)
  {
    sub_1C6D78810();
    sub_1C6B614F4();
    v0 = sub_1C6D79F30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDF740);
    }
  }
}

unint64_t sub_1C6B614F4()
{
  result = qword_1EDCE0178[0];
  if (!qword_1EDCE0178[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCE0178);
  }

  return result;
}

void sub_1C6B61548(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1C6B0C69C(255, a3, a4);
    v5 = sub_1C6D79F30();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C6B615B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x1E69E6158], v7, MEMORY[0x1E69E6168]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1C6B61624()
{
  result = qword_1EDCE6570;
  if (!qword_1EDCE6570)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDCE6570);
  }

  return result;
}

void sub_1C6B61688()
{
  if (!qword_1EC1D6B78)
  {
    type metadata accessor for COMAPPLEFELDSPARPROTOCOLLIVERPOOLNotabilityScore_Type(255);
    sub_1C6B5F7C4(&qword_1EC1D6B80, type metadata accessor for COMAPPLEFELDSPARPROTOCOLLIVERPOOLNotabilityScore_Type);
    v0 = sub_1C6D79F30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D6B78);
    }
  }
}

void sub_1C6B61724(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1C6B61790()
{
  if (!qword_1EDCE6270)
  {
    sub_1C6D76500();
    sub_1C6D76510();
    sub_1C6D76520();
    sub_1C6D764F0();
    sub_1C6D764C0();
    sub_1C6D764D0();
    sub_1C6D76530();
    sub_1C6D764E0();
    sub_1C6B5F7C4(&qword_1EDCE62B8, MEMORY[0x1E69E3388]);
    sub_1C6B5F7C4(&qword_1EDCE62C0, MEMORY[0x1E69E3358]);
    v0 = sub_1C6D766E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6270);
    }
  }
}

uint64_t sub_1C6B61924(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, void (*a5)(uint64_t))
{
  sub_1C6B625A4(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

void sub_1C6B61994(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1C6B62540(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1C6B61A0C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6B62540(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6B61A8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6B62540(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1C6B61AFC(uint64_t a1)
{
  sub_1C6B61724(0, &qword_1EC1D6C80, type metadata accessor for SportsRecommendedScoredTag);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1C6B615B0(0, &qword_1EC1D6C88, type metadata accessor for SportsRecommendedScoredTag, MEMORY[0x1E69E6EC8]);
    v9 = sub_1C6D79F20();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1C6B6273C(v11, v7, &qword_1EC1D6C80, type metadata accessor for SportsRecommendedScoredTag);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1C6B5DEA8(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for SportsRecommendedScoredTag();
      result = sub_1C6B5F6DC(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for SportsRecommendedScoredTag);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

unint64_t sub_1C6B61D34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C6B62490(0, &qword_1EC1D6C68);
    v3 = sub_1C6D79F20();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C6B5F654(v4, v13, sub_1C6B623BC);
      result = sub_1C6B65098(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1C6B62420(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_1C6B61E7C(uint64_t a1)
{
  sub_1C6B61724(0, &qword_1EC1D6BE0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1C6B615B0(0, &unk_1EC1D6BE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer, MEMORY[0x1E69E6EC8]);
    v9 = sub_1C6D79F20();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1C6B6273C(v11, v7, &qword_1EC1D6BE0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1C6B5DEA8(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer(0);
      result = sub_1C6B5F6DC(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

void sub_1C6B620B4()
{
  if (!qword_1EDCEA7F0)
  {
    sub_1C6D763D0();
    sub_1C6B615B0(255, &unk_1EDCEA518, MEMORY[0x1E69E32C0], MEMORY[0x1E69E5E28]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCEA7F0);
    }
  }
}

void sub_1C6B62154()
{
  if (!qword_1EDCEA480)
  {
    sub_1C6D763D0();
    sub_1C6B615B0(255, &unk_1EDCEA518, MEMORY[0x1E69E32C0], MEMORY[0x1E69E5E28]);
    sub_1C6B5F7C4(&qword_1EDCEA800, MEMORY[0x1E69E32D8]);
    v0 = sub_1C6D79F30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCEA480);
    }
  }
}

uint64_t sub_1C6B62230(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3 >> 5;
  if (v3 > 2)
  {
    if (v3 != 3 && v3 != 4 && v3 != 5)
    {
      return result;
    }
  }

  if (!(a3 >> 5))
  {
    return sub_1C6B6227C(result, a2, a3 & 1);
  }

  if (v3 == 1 || v3 == 2)
  {
  }

  return result;
}

uint64_t sub_1C6B6227C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1C6B62288(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3 >> 5;
  if (v3 > 2)
  {
    if (v3 != 3 && v3 != 4 && v3 != 5)
    {
      return result;
    }
  }

  if (!(a3 >> 5))
  {
    return sub_1C6B360A8(result, a2, a3 & 1);
  }

  if (v3 == 1 || v3 == 2)
  {
  }

  return result;
}

uint64_t sub_1C6B622DC(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1C6B622F8(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

void sub_1C6B623BC()
{
  if (!qword_1EC1D6C70)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D6C70);
    }
  }
}

_OWORD *sub_1C6B62420(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1C6B62430(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1C6B62490(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C6D79F30();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1C6B624E4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6B61994(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1C6B62540(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6B625A4(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1C6B625FC(255, a3, a4);
    v5 = sub_1C6D79C00();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C6B625FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1C6B62664(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6B626C4(uint64_t a1)
{
  sub_1C6B62430(0, &unk_1EC1D6CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6B6273C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1C6B61724(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6B627EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 5131843;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1313887045;
    }

    else
    {
      v4 = 1330659671;
    }

    v5 = 0xE400000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x696C6F505F4E4E43;
    }

    else
    {
      v4 = 5131843;
    }

    if (v3)
    {
      v5 = 0xEC00000073636974;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 1313887045;
  if (a2 != 2)
  {
    v7 = 1330659671;
  }

  if (a2)
  {
    v2 = 0x696C6F505F4E4E43;
    v6 = 0xEC00000073636974;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1C6D7A130();
  }

  return v10 & 1;
}

uint64_t sub_1C6B62918(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 29799;
  v5 = 0xE200000000000000;
  v6 = 29804;
  v7 = 6648940;
  v8 = 0xE300000000000000;
  if (a1 != 4)
  {
    v7 = 25966;
    v8 = 0xE200000000000000;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 6648935;
  if (a1 != 1)
  {
    v9 = 7106917;
  }

  if (a1)
  {
    v4 = v9;
    v3 = 0xE300000000000000;
  }

  if (a1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE200000000000000;
      if (v10 != 29804)
      {
        goto LABEL_33;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE300000000000000;
      if (v10 != 6648940)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v12 = 0xE200000000000000;
      if (v10 != 25966)
      {
LABEL_33:
        v13 = sub_1C6D7A130();
        goto LABEL_34;
      }
    }
  }

  else if (a2)
  {
    v12 = 0xE300000000000000;
    if (a2 == 1)
    {
      if (v10 != 6648935)
      {
        goto LABEL_33;
      }
    }

    else if (v10 != 7106917)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v12 = 0xE200000000000000;
    if (v10 != 29799)
    {
      goto LABEL_33;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_33;
  }

  v13 = 1;
LABEL_34:

  return v13 & 1;
}

uint64_t sub_1C6B62A9C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x6569724264616572;
  v5 = 0xE900000000000066;
  v6 = 0xE800000000000000;
  v7 = 0x676E6F4C64616572;
  if (a1 != 4)
  {
    v7 = 1702257011;
    v6 = 0xE400000000000000;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE400000000000000;
  v9 = 1701538156;
  if (a1 != 1)
  {
    v9 = 0x656B696C736964;
    v8 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x746E6573657270;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE900000000000066;
      if (v10 != 0x6569724264616572)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x676E6F4C64616572)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1702257011)
      {
LABEL_34:
        v13 = sub_1C6D7A130();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1701538156)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x656B696C736964)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x746E6573657270)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1C6B62C6C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7500899;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x736B63696C63;
    }

    else
    {
      v4 = 0x6973736572706D69;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEB00000000736E6FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x756F43746E657665;
    }

    else
    {
      v4 = 7500899;
    }

    if (v3)
    {
      v5 = 0xEA0000000000746ELL;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x736B63696C63;
  if (a2 != 2)
  {
    v8 = 0x6973736572706D69;
    v7 = 0xEB00000000736E6FLL;
  }

  if (a2)
  {
    v2 = 0x756F43746E657665;
    v6 = 0xEA0000000000746ELL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C6D7A130();
  }

  return v11 & 1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Com_Apple_News_PersonalizationStorage_CompressedSession.validate()()
{
  v2 = v0;
  v3 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v218 = &v193 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata(0);
  v6 = *(v224 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v224);
  v217 = &v193 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v216 = &v193 - v10;
  sub_1C6B1DCF0(0, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v225 = &v193 - v13;
  v223 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
  v14 = *(v223 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v223);
  v226 = (&v193 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v193 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v193 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v204 = (&v193 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v203 = (&v193 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v202 = (&v193 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v201 = (&v193 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v200 = (&v193 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v210 = *(v40 - 8);
  v41 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v219 = &v193 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B64BC4(0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v206 = &v193 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v198 = &v193 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v220 = &v193 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v193 - v51;
  v53 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0);
  v209 = *(v53 - 8);
  v54 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v53 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v212 = &v193 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v214 = &v193 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v193 - v61;
  if (!v2[7])
  {
    sub_1C6B688CC();
    swift_allocError();
    v88 = 3;
    goto LABEL_113;
  }

  v194 = v24;
  v195 = v20;
  v196 = v14;
  v197 = v6;
  v199 = v60;
  v205 = v1;
  v63 = v2[2];
  v64 = *(v63 + 16);
  v65 = MEMORY[0x1E69E7CC0];
  v215 = v40;
  v208 = v2;
  v207 = v63;
  if (!v64)
  {
    v213 = MEMORY[0x1E69E7CC0];
    v220 = MEMORY[0x1E69E7CC0];
    v221 = MEMORY[0x1E69E7CC0];
    goto LABEL_59;
  }

  v66 = v63 + ((*(v209 + 80) + 32) & ~*(v209 + 80));
  v67 = *(v209 + 72);
  *&v227 = v210 + 48;
  v221 = MEMORY[0x1E69E7CC0];
  v211 = v66;
  v222 = v67;
  do
  {
    sub_1C6B68C0C(v66, v62, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
    sub_1C6B68C0C(v62, v52, sub_1C6B64BC4);
    v68 = *v227;
    if ((*v227)(v52, 1, v40) == 1)
    {
      sub_1C6B64BF8(v52, sub_1C6B64BC4);
      sub_1C6B64BF8(v62, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
    }

    else
    {
      v69 = sub_1C6B883C4();
      sub_1C6B64BF8(v52, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      sub_1C6B64BF8(v62, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
      if ((v69 & 0x100000000) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v221 = sub_1C6B65AD8(0, *(v221 + 2) + 1, 1, v221);
        }

        v71 = *(v221 + 2);
        v70 = *(v221 + 3);
        if (v71 >= v70 >> 1)
        {
          v221 = sub_1C6B65AD8((v70 > 1), v71 + 1, 1, v221);
        }

        v72 = v221;
        *(v221 + 2) = v71 + 1;
        *&v72[4 * v71 + 32] = v69;
        v40 = v215;
        v67 = v222;
      }
    }

    v66 += v67;
    --v64;
  }

  while (v64);
  v73 = *(v207 + 16);
  if (!v73)
  {
    v213 = MEMORY[0x1E69E7CC0];
    v220 = MEMORY[0x1E69E7CC0];
    v2 = v208;
    goto LABEL_59;
  }

  v213 = MEMORY[0x1E69E7CC0];
  v74 = v211;
  v75 = v211;
  v76 = v214;
  do
  {
    sub_1C6B68C0C(v75, v76, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
    v77 = v220;
    sub_1C6B68C0C(v76, v220, sub_1C6B64BC4);
    if (v68(v77, 1, v40) == 1)
    {
      sub_1C6B64BF8(v77, sub_1C6B64BC4);
      goto LABEL_16;
    }

    sub_1C6B68C0C(v77, v219, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 10)
    {
      if (EnumCaseMultiPayload <= 17)
      {
        if ((EnumCaseMultiPayload - 12) < 6)
        {
          goto LABEL_26;
        }

        v82 = v195;
        sub_1C6B689E4(v219, v195, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
        v80 = *v82;
        v83 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView;
        goto LABEL_37;
      }

      if (EnumCaseMultiPayload == 18)
      {
        v82 = v200;
        sub_1C6B689E4(v219, v200, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
        v80 = *v82;
        v83 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen;
        goto LABEL_37;
      }

      if (EnumCaseMultiPayload == 19)
      {
        v82 = v204;
        sub_1C6B689E4(v219, v204, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
        v80 = *v82;
        v83 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore;
LABEL_37:
        sub_1C6B64BF8(v82, v83);
        v76 = v214;
        goto LABEL_38;
      }

LABEL_26:
      sub_1C6B64BF8(v219, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v67 = v222;
      sub_1C6B64BF8(v77, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v76 = v214;
LABEL_16:
      sub_1C6B64BF8(v76, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload <= 6)
    {
      goto LABEL_26;
    }

    if (EnumCaseMultiPayload > 8)
    {
      v76 = v214;
      if (EnumCaseMultiPayload == 9)
      {
        v79 = v203;
        sub_1C6B689E4(v219, v203, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
        v80 = *v79;
        v81 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed;
      }

      else
      {
        v79 = v194;
        sub_1C6B689E4(v219, v194, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
        v80 = *v79;
        v81 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed;
      }
    }

    else
    {
      v76 = v214;
      if (EnumCaseMultiPayload == 7)
      {
        v79 = v201;
        sub_1C6B689E4(v219, v201, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
        v80 = *v79;
        v81 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted;
      }

      else
      {
        v79 = v202;
        sub_1C6B689E4(v219, v202, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
        v80 = *v79;
        v81 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted;
      }
    }

    sub_1C6B64BF8(v79, v81);
LABEL_38:
    sub_1C6B64BF8(v220, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6B64BF8(v76, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v213 = sub_1C6B65AD8(0, *(v213 + 2) + 1, 1, v213);
    }

    v85 = *(v213 + 2);
    v84 = *(v213 + 3);
    if (v85 >= v84 >> 1)
    {
      v213 = sub_1C6B65AD8((v84 > 1), v85 + 1, 1, v213);
    }

    v86 = v213;
    *(v213 + 2) = v85 + 1;
    *&v86[4 * v85 + 32] = v80;
    v40 = v215;
    v74 = v211;
    v67 = v222;
LABEL_17:
    v75 += v67;
    --v73;
  }

  while (v73);
  v89 = *(v207 + 16);
  v2 = v208;
  if (v89)
  {
    v220 = MEMORY[0x1E69E7CC0];
    v90 = v198;
    v91 = v212;
    do
    {
      sub_1C6B68C0C(v74, v91, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
      sub_1C6B68C0C(v91, v90, sub_1C6B64BC4);
      if (v68(v90, 1, v40) == 1)
      {
        sub_1C6B64BF8(v90, sub_1C6B64BC4);
        sub_1C6B64BF8(v91, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
      }

      else
      {
        v92 = sub_1C6B88C1C();
        sub_1C6B64BF8(v90, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
        sub_1C6B64BF8(v91, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
        if ((v92 & 0x100000000) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v220 = sub_1C6B65AD8(0, *(v220 + 2) + 1, 1, v220);
          }

          v94 = *(v220 + 2);
          v93 = *(v220 + 3);
          if (v94 >= v93 >> 1)
          {
            v220 = sub_1C6B65AD8((v93 > 1), v94 + 1, 1, v220);
          }

          v95 = v220;
          *(v220 + 2) = v94 + 1;
          *&v95[4 * v94 + 32] = v92;
          v40 = v215;
        }

        v91 = v212;
      }

      v74 += v222;
      --v89;
    }

    while (v89);
  }

  else
  {
    v220 = MEMORY[0x1E69E7CC0];
  }

LABEL_59:
  v96 = v2[3];
  v97 = *(v96 + 16);
  if (v97)
  {
    v228 = v65;
    sub_1C6B39310(0, v97, 0);
    v98 = v228;
    v99 = v96 + ((*(v196 + 80) + 32) & ~*(v196 + 80));
    v222 = *(v196 + 72);
    v100 = (v197 + 48);
    v227 = xmmword_1C6D7E630;
    while (1)
    {
      v101 = v226;
      sub_1C6B68C0C(v99, v226, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      sub_1C6B1D64C(0, &qword_1EDCE7CD0);
      v102 = swift_allocObject();
      *(v102 + 16) = v227;
      *(v102 + 32) = *v101;
      v103 = v101 + *(v223 + 20);
      v104 = v225;
      sub_1C6B676FC(v103, v225);
      v105 = (*v100)(v104, 1, v224);
      v106 = v65;
      if (v105 != 1)
      {
        v107 = v216;
        sub_1C6B689E4(v225, v216, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
        v108 = v217;
        sub_1C6B68C0C(v107, v217, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
        v109 = v108;
        v110 = v218;
        sub_1C6B689E4(v109, v218, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
        v111 = swift_allocObject();
        *(v111 + 16) = v227;
        *(v111 + 32) = *(v110 + 8);
        v112 = *v110;
        v229 = v111;

        sub_1C6B38654(v113);
        v114 = *(v110 + 16);

        sub_1C6B38654(v115);
        sub_1C6B64BF8(v110, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
        v106 = v229;
        sub_1C6B64BF8(v107, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
      }

      v116 = *(v106 + 2);
      v117 = *(v102 + 16);
      v118 = v117 + v116;
      if (__OFADD__(v117, v116))
      {
        goto LABEL_164;
      }

      if (v118 > *(v102 + 24) >> 1)
      {
        if (v117 <= v118)
        {
          v123 = v117 + v116;
        }

        else
        {
          v123 = *(v102 + 16);
        }

        v102 = sub_1C6B65AD8(1, v123, 1, v102);
        v117 = *(v102 + 16);
        if (!*(v106 + 2))
        {
LABEL_74:

          if (v116)
          {
            goto LABEL_165;
          }

          goto LABEL_75;
        }
      }

      else
      {
        v119 = *(v106 + 2);
        if (!v116)
        {
          goto LABEL_74;
        }
      }

      if (((*(v102 + 24) >> 1) - v117) < v116)
      {
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
        return;
      }

      memcpy((v102 + 4 * v117 + 32), v106 + 32, 4 * v116);

      if (v116)
      {
        v120 = *(v102 + 16);
        v121 = __OFADD__(v120, v116);
        v122 = v120 + v116;
        if (v121)
        {
          goto LABEL_170;
        }

        *(v102 + 16) = v122;
      }

LABEL_75:
      sub_1C6B64BF8(v226, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      v228 = v98;
      v125 = *(v98 + 2);
      v124 = *(v98 + 3);
      v126 = v125 + 1;
      if (v125 >= v124 >> 1)
      {
        sub_1C6B39310((v124 > 1), v125 + 1, 1);
        v98 = v228;
      }

      *(v98 + 2) = v126;
      *&v98[8 * v125 + 32] = v102;
      v99 += v222;
      if (!--v97)
      {
        v2 = v208;
        goto LABEL_80;
      }
    }
  }

  v126 = *(v65 + 2);
  v98 = v65;
  if (!v126)
  {
LABEL_97:

    v228 = v221;
    sub_1C6B38654(v213);
    sub_1C6B38654(v220);
    sub_1C6B38654(v65);
    v138 = sub_1C6B68850(v228);

    v139 = *(v138 + 16);
    if (v139)
    {
      v140 = sub_1C6B673E8(*(v138 + 16), 0);
      v141 = sub_1C6B68120(&v228, v140 + 8, v139, v138);
      sub_1C6B688C4();
      if (v141 == v139)
      {
        goto LABEL_101;
      }

      __break(1u);
    }

    v140 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v228 = v140;

    v142 = v205;
    sub_1C6B64C58(&v228);
    v106 = v142;
    if (v142)
    {
      goto LABEL_173;
    }

    v143 = v228;
    v144 = *(v228 + 2);
    if (v144 >> 31)
    {
      goto LABEL_171;
    }

    if (v144)
    {
      v145 = sub_1C6B673E8(*(v228 + 2), 0);
      if (sub_1C6B67F28(&v228, (v145 + 4), v144, v144 << 32) == v144)
      {
LABEL_107:
        v146 = sub_1C6B5AC24(v143, v145);

        if (v146)
        {
          v147 = v2[4];
          v148 = *(v147 + 16);
          if (v148 == v144)
          {
            v228 = MEMORY[0x1E69E7CD0];
            v149 = sub_1C6B64B1C(v147);

            if (v149)
            {
              v150 = sub_1C6B88068();
              v151 = *(v207 + 16);
              if (v151)
              {
                v152 = v207 + ((*(v209 + 80) + 32) & ~*(v209 + 80));
                v153 = *(v209 + 72);
                v154 = (v210 + 48);
                *&v227 = MEMORY[0x1E69E7CC0];
                v155 = v206;
                do
                {
                  v157 = v199;
                  sub_1C6B68C0C(v152, v199, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
                  sub_1C6B68C0C(v157, v155, sub_1C6B64BC4);
                  if ((*v154)(v155, 1, v215) == 1)
                  {
                    sub_1C6B64BF8(v157, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
                    sub_1C6B64BF8(v155, sub_1C6B64BC4);
                  }

                  else
                  {
                    v158 = sub_1C6B883C4();
                    sub_1C6B64BF8(v157, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
                    sub_1C6B64BF8(v155, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
                    if ((v158 & 0x100000000) == 0)
                    {
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        *&v227 = sub_1C6B65AD8(0, *(v227 + 16) + 1, 1, v227);
                      }

                      v160 = *(v227 + 16);
                      v159 = *(v227 + 24);
                      if (v160 >= v159 >> 1)
                      {
                        *&v227 = sub_1C6B65AD8((v159 > 1), v160 + 1, 1, v227);
                      }

                      v161 = v227;
                      *(v227 + 16) = v160 + 1;
                      *(v161 + 4 * v160 + 32) = v158;
                    }

                    v155 = v206;
                  }

                  v152 += v153;
                  --v151;
                }

                while (v151);
              }

              else
              {
                *&v227 = MEMORY[0x1E69E7CC0];
              }

              v165 = *(v227 + 16);
              if (v165)
              {
                v166 = (v227 + 32);
                v167 = MEMORY[0x1E69E7CC0];
                do
                {
                  v171 = *v166++;
                  v170 = v171;
                  if (!*(v150 + 16) || (sub_1C6B64DD0(v170), (v172 & 1) == 0))
                  {
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v228 = v167;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      sub_1C6B392F0(0, *(v167 + 2) + 1, 1);
                      v167 = v228;
                    }

                    v169 = *(v167 + 2);
                    v168 = *(v167 + 3);
                    if (v169 >= v168 >> 1)
                    {
                      sub_1C6B392F0((v168 > 1), v169 + 1, 1);
                      v167 = v228;
                    }

                    *(v167 + 2) = v169 + 1;
                    *&v167[4 * v169 + 32] = v170;
                  }

                  --v165;
                }

                while (v165);
              }

              else
              {
                v167 = MEMORY[0x1E69E7CC0];
              }

              if (!*(v167 + 2))
              {

                v175 = 0;
                v176 = 1 << *(v150 + 32);
                v177 = -1;
                if (v176 < 64)
                {
                  v177 = ~(-1 << v176);
                }

                v178 = v177 & *(v150 + 64);
                v179 = (v176 + 63) >> 6;
                v180 = v227 + 32;
                v181 = MEMORY[0x1E69E7CC0];
                v226 = (v227 + 32);
LABEL_146:
                while (1)
                {
                  v182 = v175;
                  if (!v178)
                  {
                    break;
                  }

LABEL_150:
                  v183 = __clz(__rbit64(v178));
                  v178 &= v178 - 1;
                  v184 = *(*(v150 + 48) + ((v175 << 8) | (4 * v183)));
                  v185 = *(v227 + 16);
                  v186 = v180;
                  while (v185)
                  {
                    v187 = *v186++;
                    --v185;
                    if (v187 == v184)
                    {
                      goto LABEL_146;
                    }
                  }

                  v188 = swift_isUniquelyReferenced_nonNull_native();
                  v228 = v181;
                  if ((v188 & 1) == 0)
                  {
                    sub_1C6B392F0(0, *(v181 + 2) + 1, 1);
                    v181 = v228;
                  }

                  v190 = *(v181 + 2);
                  v189 = *(v181 + 3);
                  v191 = v190 + 1;
                  if (v190 >= v189 >> 1)
                  {
                    v225 = v190 + 1;
                    sub_1C6B392F0((v189 > 1), v190 + 1, 1);
                    v191 = v225;
                    v181 = v228;
                  }

                  *(v181 + 2) = v191;
                  *&v181[4 * v190 + 32] = v184;
                  v180 = v226;
                }

                while (1)
                {
                  v175 = v182 + 1;
                  if (__OFADD__(v182, 1))
                  {
                    goto LABEL_172;
                  }

                  if (v175 >= v179)
                  {

                    if (!*(v181 + 2))
                    {
                      goto LABEL_167;
                    }

                    v192 = sub_1C6B68850(v181);

                    sub_1C6B688CC();
                    swift_allocError();
                    *v87 = v192;
                    v156 = 6;
                    goto LABEL_114;
                  }

                  v178 = *(v150 + 64 + 8 * v175);
                  ++v182;
                  if (v178)
                  {
                    goto LABEL_150;
                  }
                }
              }

              v174 = sub_1C6B68850(v167);

              sub_1C6B688CC();
              swift_allocError();
              *v87 = v174;
              v156 = 5;
            }

            else
            {
              v163 = sub_1C6B64A54(v147);
              sub_1C6B688CC();
              swift_allocError();
              *v87 = v163;
              v156 = 4;
            }
          }

          else if (v144 >= v148)
          {
            v164 = sub_1C6B648A4(v148 | (v144 << 32));
            sub_1C6B688CC();
            swift_allocError();
            *v87 = v164;
            v156 = 3;
          }

          else
          {
            v162 = sub_1C6B68920(v147 + 32, v144, (2 * v148) | 1);
            sub_1C6B688CC();
            swift_allocError();
            *v87 = v162;
            v156 = 2;
          }

LABEL_114:
          *(v87 + 8) = v156;
          swift_willThrow();
          return;
        }

        sub_1C6B688CC();
        swift_allocError();
        v88 = 2;
LABEL_113:
        *v87 = v88;
        v156 = 7;
        goto LABEL_114;
      }

      __break(1u);
    }

    v145 = MEMORY[0x1E69E7CC0];
    goto LABEL_107;
  }

LABEL_80:
  v127 = 0;
  v65 = MEMORY[0x1E69E7CC0];
  while (v127 < *(v98 + 2))
  {
    v128 = &v98[8 * v127];
    v106 = *(v128 + 4);
    v129 = *(v106 + 2);
    v130 = *(v65 + 2);
    v131 = v130 + v129;
    if (__OFADD__(v130, v129))
    {
      goto LABEL_162;
    }

    v132 = *(v128 + 4);

    v133 = swift_isUniquelyReferenced_nonNull_native();
    if (v133 && v131 <= *(v65 + 3) >> 1)
    {
      if (*(v106 + 2))
      {
        goto LABEL_93;
      }
    }

    else
    {
      if (v130 <= v131)
      {
        v134 = v130 + v129;
      }

      else
      {
        v134 = v130;
      }

      v65 = sub_1C6B65AD8(v133, v134, 1, v65);
      if (*(v106 + 2))
      {
LABEL_93:
        v135 = *(v65 + 2);
        if ((*(v65 + 3) >> 1) - v135 < v129)
        {
          goto LABEL_166;
        }

        memcpy(&v65[4 * v135 + 32], v106 + 32, 4 * v129);

        if (v129)
        {
          v136 = *(v65 + 2);
          v121 = __OFADD__(v136, v129);
          v137 = v136 + v129;
          if (v121)
          {
            goto LABEL_169;
          }

          *(v65 + 2) = v137;
        }

        goto LABEL_82;
      }
    }

    if (v129)
    {
      goto LABEL_163;
    }

LABEL_82:
    if (v126 == ++v127)
    {
      goto LABEL_97;
    }
  }

  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
}

uint64_t sub_1C6B647AC(uint64_t a1)
{
  result = MEMORY[0x1CCA55E50](*(a1 + 16), MEMORY[0x1E69E72F0], MEMORY[0x1E69E7300]);
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = sub_1C6C2420C(&v10, *(*(a1 + 48) + ((v8 << 8) | (4 * v9)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v11;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6B648A4(unint64_t a1)
{
  v1 = a1;
  v2 = HIDWORD(a1);
  v3 = sub_1C6B67ED0(a1);
  result = MEMORY[0x1CCA55E50](v3, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7300]);
  v7 = result;
  if (v1 != v2)
  {
    if (v2 >= v1)
    {
      while (v1 < v2)
      {
        v5 = v1 + 1;
        result = sub_1C6C2420C(&v6, v1);
        v1 = (v1 + 1);
        if (v2 == v5)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C6B64938(uint64_t a1)
{
  result = MEMORY[0x1CCA55E50](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1C6B1E6A8(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6B64A54(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CD0];
  v9 = MEMORY[0x1E69E7CD0];
  v10 = MEMORY[0x1E69E7CD0];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      swift_bridgeObjectRetain_n();
      v6 = sub_1C6B1E6A8(&v8, v5, v4);

      if ((v6 & 1) == 0)
      {
        sub_1C6B1E6A8(&v8, v5, v4);
      }

      v3 += 2;
      --v2;
    }

    while (v2);
    v1 = v9;
  }

  return v1;
}

BOOL sub_1C6B64B1C(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = v1 + 2;
    v5 = *(v1 - 1);
    v4 = *v1;
    swift_bridgeObjectRetain_n();
    LOBYTE(v5) = sub_1C6B1E6A8(&v7, v5, v4);

    v1 = v3;
  }

  while ((v5 & 1) != 0);
  return v2 == 0;
}

uint64_t sub_1C6B64BF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6B64C58(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C6C73F58(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1C6D7A0C0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 4;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1C6D797F0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1C6B67790(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

unint64_t sub_1C6B64D8C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1C6D7A250();

  return sub_1C6B65120(a1, v4);
}

unint64_t sub_1C6B64DD0(unsigned int a1)
{
  v3 = MEMORY[0x1CCA56710](*(v1 + 40), a1, 4);

  return sub_1C6B6518C(a1, v3);
}

unint64_t sub_1C6B64E18(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1C6D763D0();
  v5 = MEMORY[0x1E69E32D8];
  sub_1C6B68FD0(&qword_1EDCEA800, MEMORY[0x1E69E32D8]);
  v6 = sub_1C6D79500();
  return sub_1C6B651F8(a1, v6, MEMORY[0x1E69E32D8], &qword_1EDCEA7F8, v5, MEMORY[0x1E69E32E8]);
}

unint64_t sub_1C6B64EEC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1C6D770E0();
  v5 = MEMORY[0x1E69E39F8];
  sub_1C6B68FD0(&unk_1EDCE61C0, MEMORY[0x1E69E39F8]);
  v6 = sub_1C6D79500();
  return sub_1C6B651F8(a1, v6, MEMORY[0x1E69E39F8], &qword_1EDCE61B8, v5, MEMORY[0x1E69E3A10]);
}

unint64_t sub_1C6B64FC0(uint64_t *a1)
{
  v3 = *(v1 + 40);
  sub_1C6D7A260();
  sub_1C6BFDBDC();
  v4 = sub_1C6D7A2B0();

  return sub_1C6B65398(a1, v4);
}

unint64_t sub_1C6B6502C(int a1)
{
  v3 = *(v1 + 40);
  sub_1C6D7A260();
  sub_1C6D7A290();
  v4 = sub_1C6D7A2B0();

  return sub_1C6B6518C(a1, v4);
}

unint64_t sub_1C6B65098(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1C6D79CF0();

  return sub_1C6B6552C(a1, v5);
}

unint64_t sub_1C6B650DC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1C6D79BB0();

  return sub_1C6B655F4(a1, v5);
}

unint64_t sub_1C6B65120(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C6B6518C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C6B651F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v25 = a4;
  v23[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v13 = v23 - v12;
  v24 = v6;
  v14 = -1 << *(v6 + 32);
  v15 = a2 & ~v14;
  v23[0] = v6 + 64;
  if ((*(v6 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v13, *(v24 + 48) + v20 * v15, v8, v11);
      sub_1C6B68FD0(v25, v26);
      v21 = sub_1C6D79560();
      (*(v18 - 8))(v13, v8);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
    }

    while (((*(v23[0] + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  return v15;
}

unint64_t sub_1C6B65398(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v7 = *a1;
    v21 = *(a1 + 1);
    v22 = *(a1 + 3);
    v8 = *(a1 + 5);
    v9 = a1[6];
    v10 = *(v2 + 48);
    do
    {
      v11 = v10 + 56 * v5;
      v12 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(v11 + 8), v21), vceqq_f64(*(v11 + 24), v22)), xmmword_1C6D80110)) & 0xF;
      if (*v11 == *&v7 && v12 == 0 && *(v11 + 40) == v8)
      {
        v15 = *(v11 + 48);
        v16 = *(v15 + 16);
        if (v16 == *(v9 + 16))
        {
          if (!v16 || v15 == v9)
          {
            return v5;
          }

          v17 = (v15 + 40);
          for (i = (v9 + 40); ; i += 2)
          {
            v19 = *(v17 - 1) == *(i - 1) && *v17 == *i;
            if (!v19 && (sub_1C6D7A130() & 1) == 0)
            {
              break;
            }

            v17 += 2;
            if (!--v16)
            {
              return v5;
            }
          }
        }
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1C6B6552C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1C6B68D84(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1CCA561D0](v9, a1);
      sub_1C6B68DE0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1C6B655F4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1C6B0C69C(0, &qword_1EDCDF860, 0x1E69B5450);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1C6D79BC0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

char *sub_1C6B656C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C6B1D64C(0, &qword_1EDCE7CF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1C6B657D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C6B1DCF0(0, &qword_1EDCE6450, sub_1C6B68A4C, MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C6B6592C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C6B1D64C(0, &qword_1EDCEA8B0);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C6B65AD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C6B1D64C(0, &qword_1EDCE7CD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1C6B65C14(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C6B1D64C(0, &unk_1EDCE7D30);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C6B65D24(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C6B1D64C(0, &unk_1EC1D6D88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1C6B65E88(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C6B3CB50();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B3CAFC(0, &qword_1EDCDFB60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6B65FD0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C6B3C188();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B3C984(0, &qword_1EDCDFB10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C6B66118(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C6B1D64C(0, &unk_1EC1D6820);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6B66228(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C6B3C554();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B3C984(0, &unk_1EC1D6840);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6B663C8(void *result, int64_t a2, char a3, void *a4, void (*a5)(void), unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    a5(0);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[3 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 24 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B3C984(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1C6B66518(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C6B1DCF0(0, &unk_1EC1D6D70, sub_1C6B3B6A4, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B3B6A4();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C6B66700(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C6B1D64C(0, &qword_1EC1D6D98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6B6687C(void *result, int64_t a2, char a3, void *a4, void (*a5)(void), void (*a6)(void))
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    a5(0);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[3 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 24 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    a6(0);
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1C6B66A5C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C6B3B5C4();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B3CAFC(0, &unk_1EDCDFBB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6B66BA0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C6B3C260();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B3C4F0(0, &qword_1EDCDFBC8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6B66CE4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C6B3C480();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B3C4F0(0, &qword_1EDCDFBC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6B66E5C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C6B1DCF0(0, &qword_1EDCDF3F8, sub_1C6B68AA4, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B68AA4();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6B66FA8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C6B68B1C();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B3CAFC(0, &qword_1EDCDFB58);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6B67110(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C6B1DCF0(0, &unk_1EDCDF430, sub_1C6B68C74, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B68C74(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6B6732C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C6B1D64C(0, &qword_1EDCEA8B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1C6B673E8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C6B1D64C(0, &qword_1EDCE7CD0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_1C6B67470(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C6B1D64C(0, &qword_1EDCEA420);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

size_t sub_1C6B67534(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C6B1DCF0(0, a3, a4, MEMORY[0x1E69E6F90]);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1C6B67648(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C6B1DCF0(0, &unk_1EC1D6850, sub_1C6B3C6B0, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

uint64_t sub_1C6B676FC(uint64_t a1, uint64_t a2)
{
  sub_1C6B1DCF0(0, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6B67790(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1C6C73C90(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1C6B67CDC((*a3 + 4 * *v77), (*a3 + 4 * *v79), (*a3 + 4 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 4 * v17);
            *(v20 + 4 * v17) = *(v20 + 4 * v16);
            *(v20 + 4 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C6B657D0(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1C6B657D0((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
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
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1C6B67CDC((*a3 + 4 * *v70), (*a3 + 4 * *v72), (*a3 + 4 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 4 * v7 - 4;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 4 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 4;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1C6B67CDC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 4)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 4;
    v5 -= 4;
    v18 = v14;
    do
    {
      v19 = v5 + 4;
      v21 = *(v18 - 4);
      v18 -= 4;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 4, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 4;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFFCLL])
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

uint64_t sub_1C6B67ED0(uint64_t result)
{
  v1 = HIDWORD(result);
  if (result < 0 == result < 0)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      return HIDWORD(result) - result;
    }

    goto LABEL_14;
  }

  if (result >= 0)
  {
    v2 = result;
  }

  else
  {
    v2 = -result;
  }

  if (result < 0)
  {
    LODWORD(v1) = -HIDWORD(result);
  }

  v3 = __CFADD__(v2, v1);
  v4 = (v2 + v1);
  if (v3)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (result < 0)
  {
    return v4;
  }

  else
  {
    return -v4;
  }
}

uint64_t sub_1C6B67F28(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
LABEL_15:
    LODWORD(v5) = a4;
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (a4 <= SHIDWORD(a4))
    {
      v4 = HIDWORD(a4);
    }

    else
    {
      v4 = a4;
    }

    if (a4 != HIDWORD(a4))
    {
      v5 = 0;
      v6 = (v4 - a4);
      while (SHIDWORD(a4) >= a4)
      {
        if (v6 == v5)
        {
          goto LABEL_19;
        }

        *(a2 + 4 * v5) = a4 + v5;
        if (a3 - 1 == v5)
        {
          LODWORD(v5) = a4 + v5 + 1;
          goto LABEL_16;
        }

        if (!(a4 - HIDWORD(a4) + ++v5))
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_13:
    v5 = HIDWORD(a4);
    a3 = (HIDWORD(a4) - a4);
LABEL_16:
    *result = a4;
    *(result + 8) = v5;
    return a3;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_1C6B67FC8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1C6B68120(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1C6B68220(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1C6B68378(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1C6B68478(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6B3C1F8();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v31 = &v28 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v17 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    v17 = 0;
    v28 = v14;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v32;
      a1 = *(v33 + 72);
      sub_1C6B68C0C(*(a4 + 56) + a1 * (v22 | (v17 << 6)), v32, sub_1C6B3C1F8);
      v24 = v23;
      v25 = v31;
      sub_1C6B689E4(v24, v31, sub_1C6B3C1F8);
      sub_1C6B689E4(v25, a2, sub_1C6B3C1F8);
      if (v19 == v30)
      {
        a1 = v29;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a1 = v29;
LABEL_23:
    v14 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1C6B686DC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v25 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        v24 = v20;
        goto LABEL_23;
      }

      v11 += 3;

      v21 = v20;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1C6B68850(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1CCA55E50](v2, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7300]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1C6C2420C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_1C6B688CC()
{
  result = qword_1EC1D6D68;
  if (!qword_1EC1D6D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D6D68);
  }

  return result;
}

uint64_t sub_1C6B68920(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  result = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  result = MEMORY[0x1CCA55E50](result, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v14 = result;
  v7 = v4 - a2;
  if (v4 != a2)
  {
    if (a2 <= v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = a2;
    }

    v9 = v8 - a2;
    v10 = (a1 + 16 * a2 + 8);
    while (v9)
    {
      v12 = *(v10 - 1);
      v11 = *v10;

      sub_1C6B1E6A8(&v13, v12, v11);

      --v9;
      v10 += 2;
      if (!--v7)
      {
        return v14;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1C6B689E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1C6B68A4C()
{
  if (!qword_1EDCE65A8)
  {
    v0 = sub_1C6D79A70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE65A8);
    }
  }
}

void sub_1C6B68AA4()
{
  if (!qword_1EDCDF8C0)
  {
    sub_1C6B0F7A8(255, &qword_1EDCE6580, &protocolRef_FCRecipeScorable);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCDF8C0);
    }
  }
}

void sub_1C6B68B1C()
{
  if (!qword_1EDCDF480)
  {
    sub_1C6B3CAFC(255, &qword_1EDCDFB58);
    v0 = sub_1C6D7A0F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDF480);
    }
  }
}

void sub_1C6B68B8C()
{
  if (!qword_1EC1D9340)
  {
    sub_1C6B0F7A8(255, &qword_1EDCE6570, &protocolRef_FCHeadlineProviding);
    sub_1C6D75F50();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D9340);
    }
  }
}

uint64_t sub_1C6B68C0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1C6B68CA8()
{
  if (!qword_1EDCE7B20)
  {
    sub_1C6D75DE0();
    sub_1C6B68D1C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCE7B20);
    }
  }
}

void sub_1C6B68D1C()
{
  if (!qword_1EDCEA3C0)
  {
    sub_1C6B0C69C(255, &unk_1EDCE7E40, 0x1E696B050);
    v0 = sub_1C6D75BC0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCEA3C0);
    }
  }
}

uint64_t sub_1C6B68E34(uint64_t a1)
{
  v2 = sub_1C6D783E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1C6B68FD0(&qword_1EDCE7A68, MEMORY[0x1E6996088]);
  result = MEMORY[0x1CCA55E50](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1C6C242F4(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1C6B68FD0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6B6904C()
{
  if (!qword_1EDCE8F90[0])
  {
    sub_1C6B0C69C(255, &qword_1EDCE7D78, 0x1E69B6CB0);
    v0 = type metadata accessor for ArticleTopicConversionStats();
    if (!v1)
    {
      atomic_store(v0, qword_1EDCE8F90);
    }
  }
}

void sub_1C6B690F0()
{
  if (!qword_1EDCE9798[0])
  {
    sub_1C6B0C69C(255, &qword_1EDCE7D80, 0x1E69B6CA0);
    v0 = type metadata accessor for ArticleTopicCohorts();
    if (!v1)
    {
      atomic_store(v0, qword_1EDCE9798);
    }
  }
}

id NTPBPersonalizationAggregate.identifier.getter()
{
  result = [v0 featureKey];
  if (result)
  {
    v2 = result;
    v3 = sub_1C6D795A0();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}