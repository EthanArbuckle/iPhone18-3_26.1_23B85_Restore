void sub_1C4C5F9A4()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C4EFEEF8();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = sub_1C4EFF8A8();
  v14 = sub_1C43FCDF8(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  v22 = type metadata accessor for LiveGlobalKnowledgeTriple();
  v23 = sub_1C44057B8(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v29 = v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = *(v1 + 16);
  if (v69)
  {
    v66 = v12;
    v62[1] = v4;
    v30 = 0;
    v64 = v26;
    v31 = *(v26 + 24);
    v68 = v1 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v32 = v3 + 56;
    v71 = v16 + 8;
    v72 = v16 + 16;
    v65 = MEMORY[0x1E69E7CC0];
    v67 = *(v27 + 72);
    v62[0] = v7 + 8;
    v33 = v3;
    do
    {
      v70 = v30;
      sub_1C4412888();
      sub_1C4C62810(v34, v29, v35);
      if (*(v33 + 16))
      {
        v36 = *(v33 + 40);
        sub_1C4420740();
        sub_1C4C6279C(&qword_1EDDFE808, v37);
        v38 = sub_1C4F00FD8();
        v39 = v33;
        v40 = ~(-1 << *(v33 + 32));
        while (1)
        {
          v41 = v38 & v40;
          v33 = v39;
          if (((*(v32 + (((v38 & v40) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v38 & v40)) & 1) == 0)
          {
            break;
          }

          (*(v16 + 16))(v21, *(v39 + 48) + *(v16 + 72) * v41, v13);
          sub_1C4420740();
          sub_1C4C6279C(&unk_1EDDFCC80, v42);
          v43 = sub_1C4F010B8();
          (*(v16 + 8))(v21, v13);
          v38 = v41 + 1;
          if (v43)
          {
            v44 = *(v64 + 28);
            sub_1C4EFE558();
            sub_1C440B6A8();
            sub_1C4C6279C(&off_1EDDFCCA8, v45);
            sub_1C4F01578();
            sub_1C4F01578();
            if (v75 == v73 && v76 == v74)
            {
              v49 = sub_1C441C5B0();
              v50(v49);
            }

            else
            {
              LODWORD(v63) = sub_1C4F02938();
              v47 = sub_1C441C5B0();
              v48(v47);

              v33 = v39;
              if ((v63 & 1) == 0)
              {
                break;
              }
            }

            v51 = &v29[*(v64 + 32)];
            v53 = *v51;
            v52 = *(v51 + 1);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C49327BC(v29);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v63 = v53;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v59 = *(v65 + 16);
              sub_1C43FCEC0();
              sub_1C443D664();
              v65 = v60;
            }

            v56 = *(v65 + 16);
            v55 = *(v65 + 24);
            if (v56 >= v55 >> 1)
            {
              sub_1C43FCFE8(v55);
              sub_1C443D664();
              v65 = v61;
            }

            v57 = v65;
            *(v65 + 16) = v56 + 1;
            v58 = v57 + 16 * v56;
            *(v58 + 32) = v63;
            *(v58 + 40) = v52;
            v33 = v39;
            goto LABEL_19;
          }
        }
      }

      sub_1C49327BC(v29);
LABEL_19:
      v30 = v70 + 1;
    }

    while (v70 + 1 != v69);
  }

  else
  {
    v65 = MEMORY[0x1E69E7CC0];
  }

  sub_1C43FE9F0();
}

void sub_1C4C5FE28()
{
  sub_1C43FBD3C();
  v57 = sub_1C4EFF428();
  v0 = sub_1C43FCDF8(v57);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FD2D8();
  v56 = v5;
  v6 = sub_1C456902C(&qword_1EC0B8FD0, &qword_1C4F0EAB0);
  v55 = sub_1C43FCDF8(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBC74();
  v58 = v10;
  sub_1C43FBE44();
  v11 = sub_1C4EFF458();
  v12 = sub_1C43FCDF8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  v20 = sub_1C4EFF988();
  v21 = sub_1C43FCDF8(v20);
  v52 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v27 = v26 - v25;
  sub_1C45D9E24();
  v29 = v28;
  v30 = *(v28 + 16);
  if (v30)
  {
    v50 = v14;
    v51 = v11;
    v59 = MEMORY[0x1E69E7CC0];
    sub_1C459DA68();
    v31 = v59;
    v33 = *(v2 + 16);
    v32 = v2 + 16;
    v54 = v33;
    v34 = *(v32 + 64);
    sub_1C43FC354();
    v36 = v29 + v35;
    v53 = *(v32 + 56);
    v37 = v58;
    do
    {
      v54(v56, v36, v57);
      v38 = *(v55 + 48);
      v54(v37, v56, v57);
      sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
      v39 = sub_1C4EFEEF8();
      sub_1C43FCF7C(v39);
      v41 = *(v40 + 72);
      v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      *(swift_allocObject() + 16) = xmmword_1C4F0CE60;
      sub_1C4EFEEE8();
      v37 = v58;
      sub_1C4EFE8E8();
      sub_1C4D504A4();
      v45 = v44;
      (*(v32 - 8))(v56, v57);
      *(v58 + v38) = v45;
      v47 = *(v59 + 16);
      v46 = *(v59 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_1C43FCFE8(v46);
        sub_1C459DA68();
      }

      *(v59 + 16) = v47 + 1;
      sub_1C43FBF6C();
      sub_1C4C6272C(v58, v59 + v48 + *(v49 + 72) * v47);
      v36 += v53;
      --v30;
    }

    while (v30);

    v11 = v51;
    v14 = v50;
  }

  else
  {

    v31 = MEMORY[0x1E69E7CC0];
  }

  sub_1C4BA029C(v31);
  (*(v52 + 104))(v27, *MEMORY[0x1E69A9A50], v20);
  (*(v14 + 104))(v19, *MEMORY[0x1E69A9900], v11);
  sub_1C4EFF378();
  sub_1C43FE9F0();
}

uint64_t sub_1C4C602B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v68 = a1;
  v51 = sub_1C4F00978();
  v50 = *(v51 - 8);
  v5 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1C4EFF8A8();
  v7 = *(v67 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1C4EFEEF8();
  v10 = *(v65 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v49 - v14;
  v62 = sub_1C4EFF0C8();
  v15 = *(v62 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for LiveGlobalKnowledgeTriple();
  v59 = *(v18 - 8);
  v60 = v18;
  v19 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v54 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C4EFD9A8();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0;
  v26 = *(a2 + 16);
  v69 = a2;
  v70 = v26;
  v56 = (v10 + 16);
  v57 = (v15 + 16);
  v52 = (v27 + 8);
  v53 = (v7 + 16);
  v58 = v28;
  v55 = v24;
  v29 = v63;
  while (1)
  {
    v72 = v3;
    if (v70 == v25)
    {
      break;
    }

    v30 = v69 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
    v31 = *(v59 + 72);
    v71 = v25;
    v32 = v30 + v31 * v25;
    v33 = v54;
    sub_1C4C62810(v32, v54, type metadata accessor for LiveGlobalKnowledgeTriple);
    (*v57)(v61, v33, v62);
    v34 = v60;
    v35 = *v56;
    v36 = v65;
    (*v56)(v29, v33 + v60[5], v65);
    (*v53)(v66, v33 + v34[6], v67);
    v35(v64, v33 + v34[7], v36);
    v37 = v34[8];
    v38 = v55;
    v39 = (v33 + v37);
    v40 = *v39;
    v41 = v39[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v42 = v58;
    sub_1C4EFD998();
    sub_1C49327BC(v33);
    sub_1C4C6279C(&qword_1EC0C50B8, MEMORY[0x1E69A93A8]);
    v43 = v72;
    sub_1C4EFB6C8();
    v3 = v43;
    if (v43)
    {
      return (*v52)(v38, v42);
    }

    v25 = v71 + 1;
    (*v52)(v38, v42);
  }

  v44 = v49;
  sub_1C4F00178();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v45 = sub_1C4F00968();
  v46 = sub_1C4F01CF8();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 134217984;
    *(v47 + 4) = v70;

    _os_log_impl(&dword_1C43F8000, v45, v46, "SportsSchedulesViewGenerator: performUpdate: inserted %ld team triples.", v47, 0xCu);
    MEMORY[0x1C6942830](v47, -1, -1);
  }

  else
  {
  }

  return (*(v50 + 8))(v44, v51);
}

uint64_t sub_1C4C608D0(uint64_t a1, uint64_t a2)
{
  v181 = a2;
  v133 = sub_1C4F00978();
  v132 = *(v133 - 8);
  v3 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v134 = &v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_1C4EF9648();
  v170 = *(v147 - 8);
  v5 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v147);
  v146 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_1C4EF9F88();
  v169 = *(v145 - 8);
  v7 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v145);
  v144 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_1C4EF9CD8();
  v163 = *(v143 - 8);
  v9 = *(v163 + 8);
  MEMORY[0x1EEE9AC00](v143);
  v142 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_1C4EFF0C8();
  v178 = *(v173 - 8);
  v11 = v178[8];
  MEMORY[0x1EEE9AC00](v173);
  v172 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C4EFD9A8();
  v162 = *(v13 - 8);
  v14 = *(v162 + 8);
  MEMORY[0x1EEE9AC00](v13);
  v136 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v137 = &v130 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v149 = &v130 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v141 = &v130 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v160 = &v130 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v161 = &v130 - v25;
  v158 = sub_1C4EFD548();
  v155 = *(v158 - 8);
  v26 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v157 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1C4EFF8A8();
  v154 = *(v28 - 8);
  v29 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v164 = &v130 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v130 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v130 - v35;
  v177 = sub_1C4EFEEF8();
  v37 = *(v177 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v177);
  v148 = &v130 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v168 = &v130 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v167 = &v130 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v130 - v45;
  v175 = type metadata accessor for LiveGlobalKnowledgeTriple();
  v47 = *(v175 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v175);
  v135 = &v130 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v176 = &v130 - v51;
  v180 = a1;
  v130 = sub_1C4EFBF28();
  v52 = *(v181 + 16);
  if (!v52)
  {
LABEL_28:
    v118 = v134;
    sub_1C4F00178();

    v119 = sub_1C4F00968();
    v120 = sub_1C4F01CF8();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 134217984;
      result = sub_1C4EFBF28();
      if (__OFSUB__(result, v130))
      {
        __break(1u);
        return result;
      }

      *(v121 + 4) = result - v130;

      _os_log_impl(&dword_1C43F8000, v119, v120, "SportsSchedulesViewGenerator: performUpdate: inserted %ld game triples.", v121, 0xCu);
      MEMORY[0x1C6942830](v121, -1, -1);
    }

    else
    {
    }

    return (*(v132 + 8))(v118, v133);
  }

  v53 = v181 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
  v166 = (v37 + 8);
  v178 += 2;
  v131 = (v37 + 16);
  v174 = (v154 + 16);
  v159 = (v162 + 8);
  v153 = (v155 + 8);
  v154 += 8;
  v140 = (v170 + 8);
  v139 = (v169 + 8);
  v138 = (v163 + 8);
  v155 = *(v47 + 72);
  v181 = v28;
  v54 = v176;
  v165 = v36;
  v171 = v33;
  v179 = v13;
  v156 = v46;
  while (1)
  {
    v169 = v53;
    v170 = v52;
    sub_1C4C62810(v53, v54, type metadata accessor for LiveGlobalKnowledgeTriple);
    v55 = *(v175 + 20);
    sub_1C4EFEEE8();
    sub_1C4C6279C(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
    sub_1C4F01578();
    sub_1C4F01578();
    v56 = v185 == v183 && v186 == v184;
    v57 = v56 ? 1 : sub_1C4F02938();
    v58 = *v166;
    v59 = v46;
    v60 = v177;
    (*v166)(v59, v177);

    if ((v57 & 1) == 0)
    {
      break;
    }

    v61 = (v54 + *(v175 + 32));
    v63 = *v61;
    v62 = v61[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C49F2108(v63, v62);
    if (v64)
    {
      sub_1C4C626B8();
      v123 = swift_allocError();
      *v124 = v63;
      *(v124 + 8) = v62;
      *(v124 + 16) = 3;
      v182 = v123;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      return sub_1C49327BC(v54);
    }

    v65 = v157;
    sub_1C4EFD168();
    v66 = v165;
    sub_1C4EFF838();
    v163 = *v178;
    v163(v172, v54, v173);
    sub_1C4EFECF8();
    v152 = *v174;
    v152(v171, v66, v181);
    sub_1C4EFEBB8();
    sub_1C4EFD168();
    sub_1C4EFD2F8();
    (*v153)(v65, v158);
    sub_1C4EFD998();
    v67 = sub_1C4C6279C(&qword_1EC0C50B8, MEMORY[0x1E69A93A8]);
    v68 = v179;
    v69 = v182;
    sub_1C4EFB6C8();
    v182 = v69;
    if (v69)
    {
      (*v159)(v161, v68);
      v125 = *v154;
      v126 = v165;
LABEL_36:
      v128 = v181;
      goto LABEL_40;
    }

    v162 = v67;
    v70 = v142;
    sub_1C4EF9C48();
    v71 = v144;
    sub_1C4EF9F58();
    if (qword_1EDDF4920 != -1)
    {
      swift_once();
    }

    v72 = v146;
    sub_1C4EF9EA8();
    v151 = sub_1C44CDAD4();
    v150 = v73;
    (*v140)(v72, v147);
    (*v139)(v71, v145);
    (*v138)(v70, v143);
    v74 = v172;
    v75 = v173;
    v163(v172, v176, v173);
    sub_1C4EFECF8();
    v76 = v171;
    v77 = v152;
    v152(v171, v165, v181);
    sub_1C4EFEEE8();
    v78 = v74;
    v79 = v76;
    sub_1C4EFD998();
    v80 = v179;
    v81 = v182;
    sub_1C4EFB6C8();
    v82 = v165;
    v182 = v81;
    if (v81)
    {
      v127 = *v159;
      (*v159)(v160, v80);
      v127(v161, v80);
      v125 = *v154;
      v126 = v82;
      goto LABEL_36;
    }

    sub_1C4EF9AF8();
    v163(v78, v176, v75);
    sub_1C4EFECF8();
    v83 = v82;
    v84 = v181;
    v77(v79, v82, v181);
    sub_1C4EFE7B8();
    v185 = 0;
    v186 = 0xE000000000000000;
    sub_1C4F01A28();
    v85 = v141;
    sub_1C4EFD998();
    v86 = v179;
    v87 = v182;
    sub_1C4EFB6C8();
    v182 = v87;
    if (v87)
    {
      v129 = *v159;
      (*v159)(v85, v86);
      v129(v160, v86);
      v129(v161, v86);
      (*v154)(v83, v84);
      goto LABEL_41;
    }

    v88 = *v159;
    (*v159)(v85, v86);
    v88(v160, v86);
    v88(v161, v86);
    (*v154)(v83, v84);
    v54 = v176;
LABEL_27:
    sub_1C49327BC(v54);
    v53 = v169 + v155;
    v52 = v170 - 1;
    v46 = v156;
    if (v170 == 1)
    {
      goto LABEL_28;
    }
  }

  v89 = v148;
  sub_1C4EFE8E8();
  sub_1C4F01578();
  sub_1C4F01578();
  if (v185 == v183 && v186 == v184)
  {
    v58(v89, v60);

    v92 = v164;
    v93 = v178;
    v94 = v174;
    goto LABEL_25;
  }

  v91 = sub_1C4F02938();
  v58(v89, v60);

  v92 = v164;
  v93 = v178;
  v94 = v174;
  if (v91)
  {
LABEL_25:
    v105 = v157;
    sub_1C4EFD2D8();
    sub_1C4EFF838();
    v106 = v172;
    v163 = *v93;
    v163(v172, v54, v173);
    sub_1C4EFE408();
    v162 = *v94;
    (v162)(v171, v92, v181);
    sub_1C4EFEBB8();
    sub_1C4EFD2D8();
    sub_1C4EFD2F8();
    (*v153)(v105, v158);
    v107 = v106;
    v108 = v171;
    sub_1C4EFD998();
    sub_1C4C6279C(&qword_1EC0C50B8, MEMORY[0x1E69A93A8]);
    v109 = v182;
    sub_1C4EFB6C8();
    if (v109)
    {
      (*v159)(v149, v179);
      (*v154)(v164, v181);
      v54 = v176;
      v182 = v109;
      return sub_1C49327BC(v54);
    }

    v110 = v176;
    (v163)(v107);
    sub_1C4EFE408();
    (v162)(v108, v164, v181);
    sub_1C4EFE8E8();
    v111 = &v110[*(v175 + 32)];
    v112 = v110;
    v114 = *v111;
    v113 = *(v111 + 1);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v115 = v137;
    sub_1C4EFD998();
    v116 = v179;
    sub_1C4EFB6C8();
    v54 = v112;
    v182 = 0;
    v117 = *v159;
    (*v159)(v115, v116);
    v117(v149, v116);
    (*v154)(v164, v181);
    goto LABEL_27;
  }

  v95 = v135;
  sub_1C4C62810(v54, v135, type metadata accessor for LiveGlobalKnowledgeTriple);
  (*v93)(v172, v95, v173);
  v96 = v175;
  v97 = *v131;
  v98 = v177;
  (*v131)(v167, v95 + *(v175 + 20), v177);
  (*v94)(v171, v95 + v96[6], v181);
  v97(v168, v95 + v96[7], v98);
  v99 = (v95 + v96[8]);
  v101 = *v99;
  v100 = v99[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v102 = v136;
  sub_1C4EFD998();
  sub_1C49327BC(v95);
  sub_1C4C6279C(&qword_1EC0C50B8, MEMORY[0x1E69A93A8]);
  v103 = v179;
  v104 = v182;
  sub_1C4EFB6C8();
  v182 = v104;
  if (!v104)
  {
    (*v159)(v102, v103);
    v54 = v176;
    goto LABEL_27;
  }

  v125 = *v159;
  v126 = v102;
  v128 = v103;
LABEL_40:
  v125(v126, v128);
LABEL_41:
  v54 = v176;
  return sub_1C49327BC(v54);
}

uint64_t sub_1C4C61E60(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1C4EFF448();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v9 = *a1;
  v8 = a1[1];
  (*(v10 + 16))(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C4EFF3E8();
}

uint64_t sub_1C4C61FE8()
{
  sub_1C4C6279C(&qword_1EC0C50B8, MEMORY[0x1E69A93A8]);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4C6216C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4C6279C(&qword_1EC0C50C8, MEMORY[0x1E69A93A8]);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1C4C62214()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1C4C622BC;
  v2 = *(v0 + 16);

  return sub_1C4C623C8();
}

uint64_t sub_1C4C622BC()
{
  sub_1C43FBCD4();
  sub_1C43FDB88();
  v4 = *(v3 + 24);
  v5 = *v2;
  sub_1C43FBDAC();
  *v6 = v5;

  sub_1C43FBCF0();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_1C4C623C8()
{
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_1C4C624E4;
  v2 = swift_continuation_init();
  v1[17] = sub_1C456902C(&qword_1EC0BD240, qword_1C4F5F810);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1C47CDA90;
  v1[13] = &unk_1F4405890;
  v1[14] = v2;
  [v0 requestedSchedulesForTeamsWithReply_];

  return MEMORY[0x1EEE6DEC8](v1 + 2);
}

uint64_t sub_1C4C624E4()
{
  sub_1C43FCF70();
  v1 = *v0;
  sub_1C43FBE64();
  *v4 = v2;
  v5 = *v0;
  *v4 = *v0;
  if (*(v3 + 48))
  {
    v6 = *(v3 + 48);
    swift_willThrow();
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = *(v2 + 144);
    v10 = *(v5 + 8);

    return v10(v9);
  }
}

uint64_t sub_1C4C6261C(void *a1)
{
  v1 = [a1 umcid];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

unint64_t sub_1C4C626B8()
{
  result = qword_1EC0C50C0;
  if (!qword_1EC0C50C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C50C0);
  }

  return result;
}

uint64_t sub_1C4C6272C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B8FD0, &qword_1C4F0EAB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4C6279C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4C62810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4C62880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[3] = &type metadata for SportsSchedulesDatabaseTable;
  a5[4] = &off_1F43FD4F8;
  v10 = swift_allocObject();
  *a5 = v10;
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C4C62924(void *a1@<X8>)
{
  sub_1C44E9220();
  if (!v1)
  {
    v4 = v3;
    a1[3] = &type metadata for SportsSchedulesDatabaseTable;
    a1[4] = &off_1F43FD4F8;
    v5 = swift_allocObject();
    *a1 = v5;
    v5[2] = 0x6870617267;
    v5[3] = 0xE500000000000000;
    v6 = MEMORY[0x1E69E7CC0];
    v5[4] = v4;
    v5[5] = v6;
  }
}

void sub_1C4C629C4()
{
  sub_1C44E9220();
  if (!v0)
  {
    sub_1C4B44868(0x6870617267, 0xE500000000000000, v1);
  }
}

void sub_1C4C62A3C()
{
  sub_1C44E9220();
  if (!v0)
  {
    v2 = *(v1 + 16);
    sub_1C446C37C(sub_1C4B44BB4, 0);
  }
}

uint64_t sub_1C4C62B0C(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  result = sub_1C4428DA0();
  v6 = result;
  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1C6940F90](v7, a3);
      goto LABEL_6;
    }

    if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v8 = *(a3 + 8 * v7 + 32);

LABEL_6:
    v12 = v8;
    v9 = a1(&v12);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1C4C62C14(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(sub_1C456902C(&qword_1EC0B89E8, &unk_1C4F3E630) - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

uint64_t sub_1C4C62D14(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(type metadata accessor for ViewDatabaseArtifact.Property() - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

uint64_t sub_1C4C62DF8(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  sub_1C442E860(a2, v4 + 40);
  sub_1C441D670(a2, v13);
  sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
  sub_1C456902C(&qword_1EC0C50F8, &qword_1C4F5FBA8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
  }

  *(v4 + 80) = v10;
  *(v4 + 96) = v11;
  *(v4 + 112) = v12;
  *(v4 + 24) = a4;
  *(v4 + 32) = a1;
  *(v4 + 16) = a3;
  return v4;
}

uint64_t sub_1C4C62EC4()
{
  v1 = v0;
  v2 = v0[8];
  v3 = v0[9];
  sub_1C4409678(v0 + 5, v2);
  (*(v3 + 16))(v15, v2, v3);
  v4 = v16;
  v5 = v17;
  sub_1C4409678(v15, v16);
  v6 = *((*(v5 + 16))(v4, v5) + 16);

  sub_1C4418704(sub_1C4C66A1C, v1, v7, v8, v9, v10, v11, v12, v14, v15[0]);

  return sub_1C440962C(v15);
}

uint64_t sub_1C4C62FB4(uint64_t a1, void *a2)
{
  v5 = a2[8];
  v6 = a2[9];
  sub_1C4409678(a2 + 5, v5);
  (*(v6 + 16))(v15, v5, v6);
  v7 = v16;
  v8 = v17;
  sub_1C4409678(v15, v16);
  sub_1C4BC62DC(a1, v7, v8);
  result = sub_1C440962C(v15);
  if (!v2)
  {
    sub_1C4C66A38((a2 + 10), v15);
    v10 = v16;
    if (v16)
    {
      v12 = v17;
      v11 = v18;
      sub_1C4409678(v15, v16);
      v13 = *(v12 + 8);
      sub_1C4C6EE08(a1, 0, 0, 1, 0, v10, v11);
      if (v14)
      {
        sub_1C4B8B8EC();
      }

      return sub_1C440962C(v15);
    }

    else
    {
      return sub_1C4420C3C(v15, &qword_1EC0C50D0, &unk_1C4F5FAD0);
    }
  }

  return result;
}

uint64_t sub_1C4C63104(uint64_t *a1)
{
  v5 = 0;
  v2 = *a1;
  v1 = a1[1];
  v4[3] = a1;
  v4[4] = &v5;
  result = sub_1C4C84428(v2, v1, sub_1C4C666D8, v4);
  if (v5)
  {
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C4C631E8(uint64_t a1)
{
  v3 = *(a1 + 56);
  v5 = *(v3 + 88);
  v4 = *(v3 + 96);
  if (*(v3 + 80) == 1)
  {
    v6 = 0uLL;
    if (v4 >> 60 == 15)
    {
      v57 = v1;
    }

    else
    {
      v9 = sub_1C43FE99C();
      sub_1C4431E64(v9, v10);
      v11 = sub_1C43FE99C();
      sub_1C44344B8(v11, v12);
      v13 = sub_1C43FE99C();
      sub_1C44F9344(v13, v14);
      if (v2)
      {
        goto LABEL_24;
      }

      v57 = v1;
      *(&v6 + 1) = v15;
    }

    v55 = v6;
    v56 = v4 >> 60 == 15;
  }

  else
  {
    v57 = v1;
    v55 = 0uLL;
    v56 = 1;
    v7 = sub_1C43FE99C();
    sub_1C4431E64(v7, v8);
  }

  if (*(v3 + 32) != 1)
  {
    goto LABEL_14;
  }

  sub_1C4441C50(*(v3 + 33));
  if (v17 == 0x7165527261656C63 && v16 == 0xED00006465726975)
  {

LABEL_22:
    sub_1C4C62EC4();
    if (!v2)
    {
      sub_1C4D0E478();
    }

LABEL_24:
    v30 = sub_1C43FE99C();
    return sub_1C441DFEC(v30, v31);
  }

  v19 = sub_1C4F02938();

  if (v19)
  {
    goto LABEL_22;
  }

LABEL_14:
  v50 = v5;
  v51 = v4;
  v20 = sub_1C444E0CC();
  v21 = v20 + 32;
  v22 = -*(v20 + 16);
  v23 = -1;
  do
  {
    if (v22 + v23 == -1)
    {
      break;
    }

    if (++v23 >= *(v20 + 16))
    {
      __break(1u);
LABEL_34:

      result = sub_1C440962C(v52);
      __break(1u);
      return result;
    }

    sub_1C442E860(v21, v52);
    v24 = sub_1C4C6361C(v52);
    if (v2)
    {
      goto LABEL_34;
    }

    v25 = v24;
    v21 += 40;
    sub_1C440962C(v52);
  }

  while ((v25 & 1) == 0);

  v26 = v57;
  v27 = v57[4];
  _s27SQLConnectionViewGenerationC14SubjectBundlerCMa();
  swift_initStackObject();

  v29 = sub_1C4C6645C(v28);
  if (v2)
  {
    v30 = v50;
    v31 = v51;
    return sub_1C441DFEC(v30, v31);
  }

  MEMORY[0x1EEE9AC00](v29);
  sub_1C4C647E8();
  v33 = v26[8];
  v34 = v26[9];
  sub_1C4409678(v26 + 5, v33);
  (*(v34 + 16))(v52, v33, v34);
  v35 = v53;
  v36 = v54;
  sub_1C4409678(v52, v53);
  v37 = *((*(v36 + 16))(v35, v36) + 16);

  MEMORY[0x1EEE9AC00](v38);
  sub_1C487C188();
  v40 = v39;
  v42 = v41;
  v44 = v43;

  sub_1C440962C(v52);
  if (*(v3 + 80))
  {
    if (v44)
    {
      v45 = 0;
      v46 = 0xF000000000000000;
    }

    else
    {
      v45 = sub_1C44F95AC(v40, v42);
      v46 = v49;
    }

    sub_1C4CCDA9C(v45, v46);
    sub_1C441DFEC(v45, v46);
    v47 = v50;
    v48 = v51;
  }

  else
  {
    sub_1C444F17C();
    v47 = v50;
    v48 = v51;
  }

  sub_1C441DFEC(v47, v48);
}

uint64_t sub_1C4C6361C(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_1C4409678(a1, v2);
  v4 = *(v3 + 72);
  v5 = v4(v2, v3);
  sub_1C4450520(v5);
  if (v7 == 0xD000000000000014 && 0x80000001C4F84230 == v6)
  {
LABEL_12:

    goto LABEL_13;
  }

  v9 = sub_1C4F02938();

  if ((v9 & 1) == 0)
  {
    v10 = v4(v2, v3);
    sub_1C4450520(v10);
    if (v12 != 0xD000000000000010 || 0x80000001C4F84260 != v11)
    {
      v14 = sub_1C4F02938();

      if ((v14 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:
  v15 = a1[3];
  v16 = a1[4];
  sub_1C4409678(a1, v15);
  v17 = (*(v16 + 48))(v15, v16);
  sub_1C4441C50(v17);
  if (v19 == 0xD000000000000013 && 0x80000001C4F87C40 == v18)
  {
    goto LABEL_24;
  }

  v21 = sub_1C4F02938();

  if (v21)
  {
    goto LABEL_25;
  }

  v22 = a1[3];
  v23 = a1[4];
  sub_1C4409678(a1, v22);
  v24 = (*(v23 + 48))(v22, v23);
  sub_1C4441C50(v24);
  if (v26 == 0x7165527261656C63 && v25 == 0xED00006465726975)
  {
LABEL_24:

    goto LABEL_25;
  }

  v28 = sub_1C4F02938();

  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  v30 = a1[3];
  v31 = a1[4];
  sub_1C4409678(a1, v30);
  return (*(v31 + 40))(v30, v31) & 1;
}

uint64_t sub_1C4C63888(char *a1, char *a2, uint64_t a3, int a4, uint64_t a5)
{
  v62 = a5;
  v71 = a4;
  v73 = a2;
  v72 = a1;
  v64 = sub_1C4F00758();
  v7 = *(v64 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v57 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57 - v15;
  v67 = a3;
  result = sub_1C444E0CC();
  v18 = result;
  v19 = *(result + 16);
  if (!v19)
  {
  }

  v63 = v16;
  v57 = v10;
  v20 = 0;
  v69 = result + 32;
  v66 = 0x80000001C4F84260;
  v70 = 0x80000001C4F84230;
  v61 = 0x80000001C4F87C40;
  v60 = 0x80000001C4F87C20;
  v58 = (v7 + 32);
  v59 = (v7 + 8);
  v65 = v19;
  v68 = result;
  while (1)
  {
    if (v20 >= *(v18 + 16))
    {
      __break(1u);
      return result;
    }

    sub_1C442E860(v69 + 40 * v20, &v82);
    if ((v71 & 1) == 0)
    {
      v21 = v83;
      v22 = v84;
      sub_1C4409678(&v82, v83);
      switch((*(v22 + 72))(v21, v22))
      {
        case 1u:
        case 2u:
        case 3u:
        case 4u:
        case 5u:
          v23 = sub_1C4F02938();

          v18 = v68;
          if ((v23 & 1) == 0)
          {
            v24 = v83;
            v25 = v84;
            sub_1C4409678(&v82, v83);
            v26 = (*(v25 + 72))(v24, v25);
            v19 = v65;
            switch(v26)
            {
              case 4:
                goto LABEL_8;
              default:
                v27 = sub_1C4F02938();

                v18 = v68;
                if (v27)
                {
                  goto LABEL_10;
                }

                goto LABEL_34;
            }
          }

          break;
        default:
LABEL_8:

          v18 = v68;
          break;
      }
    }

LABEL_10:
    v28 = v83;
    v29 = v84;
    sub_1C4409678(&v82, v83);
    if ((*(v29 + 40))(v28, v29) & 1) != 0 || (*(*(v67 + 56) + 32))
    {
      break;
    }

    v32 = v83;
    v33 = v84;
    sub_1C4409678(&v82, v83);
    (*(v33 + 128))(v32, v33);
LABEL_34:
    ++v20;
    result = sub_1C440962C(&v82);
    if (v20 == v19)
    {
    }
  }

  v30 = v83;
  v31 = v84;
  sub_1C4409678(&v82, v83);
  switch((*(v31 + 48))(v30, v31))
  {
    case 2u:

      goto LABEL_24;
    default:
      v34 = sub_1C4F02938();

      if (v34)
      {
LABEL_24:
        v41 = v83;
        v42 = v84;
        sub_1C4409678(&v82, v83);
        (*(v42 + 112))(v41, v42);
        goto LABEL_34;
      }

      sub_1C442E860(&v82, v81);
      sub_1C456902C(&qword_1EC0B87C8, &unk_1C4F0E940);
      sub_1C456902C(&qword_1EC0C50E8, &qword_1C4F5FB28);
      if (!swift_dynamicCast())
      {
        _s20KnowledgeGraphSourceCMa();
        if (swift_dynamicCast())
        {
          v37 = *(v74[0] + 152);
          while (1)
          {
            v38 = sub_1C4CDF950(v37, 0, 0, 1);
            v37 = v39;
            v40 = v38;
            if (!*(v38 + 16))
            {
              break;
            }

            v79 = sub_1C456902C(&qword_1EC0C50F0, qword_1C4F5FB30);
            v80 = sub_1C4401CBC(&qword_1EDDF0340, &qword_1EC0C50F0, qword_1C4F5FB30);
            *&v77 = v40;
            *(&v77 + 1) = sub_1C4C647BC;
            v78 = 0;
            (v72)(&v77);
            if (v5)
            {

              v56 = &v77;
              goto LABEL_38;
            }

            sub_1C440962C(&v77);
          }

          sub_1C4CDF674(*&v37);
        }

        else
        {
          _s26GlobalKnowledgeGraphSourceCMa();
          if (!swift_dynamicCast())
          {
            v54 = v83;
            v55 = v84;
            sub_1C4409678(&v82, v83);
            (*(v55 + 104))(v54, v55);
            goto LABEL_33;
          }

          sub_1C4CD90DC();
        }

LABEL_33:
        sub_1C440962C(v81);
        goto LABEL_34;
      }

      sub_1C441D670(&v77, v74);
      v35 = v75;
      v36 = v76;
      sub_1C4409678(v74, v75);
      if (v71)
      {
        (*(v36 + 16))(v35, v36);
      }

      else
      {
        (*(v36 + 24))(v35, v36);
      }

      if (!v5)
      {
        (*v58)(v63, v13, v64);
        v43 = *(v62 + 32);
        v44 = v75;
        v45 = v76;
        sub_1C4409678(v74, v75);
        v47 = v13;
        v46 = (*(v45 + 8))(v44, v45);
        MEMORY[0x1EEE9AC00](v46);
        v48 = v73;
        *(&v57 - 2) = v72;
        *(&v57 - 1) = v48;
        v49 = v57;
        sub_1C4F00648();

        v50 = v75;
        v51 = v76;
        sub_1C4409678(v74, v75);
        (*(v51 + 32))(v49, v50, v51);
        v52 = *v59;
        v53 = v64;
        (*v59)(v49, v64);
        v52(v63, v53);
        sub_1C440962C(v74);
        v13 = v47;
        v19 = v65;
        v18 = v68;
        goto LABEL_33;
      }

      v56 = v74;
LABEL_38:
      sub_1C440962C(v56);
      sub_1C440962C(v81);
      return sub_1C440962C(&v82);
  }
}

uint64_t sub_1C4C6436C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v40 = a3;
  v36 = a2;
  v4 = sub_1C4F00588();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  sub_1C4F006D8();
  v11 = sub_1C4F006B8();

  if (!*(v11 + 16))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v31 = v5;
  v32 = v4;
  v14 = *(v5 + 16);
  v13 = v5 + 16;
  v28 = (*(v13 + 64) + 32) & ~*(v13 + 64);
  v29 = v14;
  v34 = v10;
  v30 = v13;
  v14(v10, v11 + v28, v4);

  v35 = xmmword_1C4F0D130;
  while (1)
  {
    sub_1C4F006D8();
    v15 = sub_1C4F006A8();
    if (v3)
    {
      (*(v31 + 8))(v34, v32);
    }

    v16 = v15;

    if ((v16 & 1) == 0)
    {
      break;
    }

    v18 = MEMORY[0x1C693F260](v17);
    sub_1C456902C(&qword_1EC0B8C78, &unk_1C4F0E0B0);
    v19 = swift_allocObject();
    *(v19 + 16) = v35;
    *(v19 + 32) = v18;
    v38 = sub_1C456902C(&qword_1EC0BC860, &unk_1C4F29660);
    v39 = sub_1C4401CBC(&qword_1EDDF05E8, &qword_1EC0BC860, &unk_1C4F29660);
    v37[0] = v19;
    v36(v37);
    sub_1C440962C(v37);
  }

  sub_1C4F006E8();
  v20 = sub_1C4F006B8();

  if (!*(v20 + 16))
  {
    goto LABEL_13;
  }

  v21 = v32;
  v29(v33, v20 + v28, v32);

  while (1)
  {
    sub_1C4F006E8();
    v22 = sub_1C4F006A8();

    if ((v22 & 1) == 0)
    {
      break;
    }

    v24 = MEMORY[0x1C693F260](v23);
    sub_1C456902C(&qword_1EC0B8C78, &unk_1C4F0E0B0);
    v25 = swift_allocObject();
    *(v25 + 16) = v35;
    *(v25 + 32) = v24;
    v38 = sub_1C456902C(&qword_1EC0BC860, &unk_1C4F29660);
    v39 = sub_1C4401CBC(&qword_1EDDF05E8, &qword_1EC0BC860, &unk_1C4F29660);
    v37[0] = v25;
    v36(v37);
    sub_1C440962C(v37);
  }

  v26 = *(v31 + 8);
  v26(v33, v21);
  return (v26)(v34, v21);
}

uint64_t sub_1C4C647BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4EFF0A8();
  *a1 = result;
  return result;
}

uint64_t sub_1C4C64848@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_1C4C66A38((a2 + 10), v25);
  v11 = v26;
  if (v26)
  {
    v13 = v27;
    v12 = v28;
    sub_1C4409678(v25, v26);
    v14 = *(v13 + 8);
    sub_1C4C6EE08(a1, *a3, *(a3 + 8), *(a3 + 16), 0, v11, v12);
    v11 = v15;
    result = sub_1C440962C(v25);
    if (v5)
    {
      return result;
    }

    if (a4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_1C4420C3C(v25, &qword_1EC0C50D0, &unk_1C4F5FAD0);
    if (a4)
    {
LABEL_4:
      v17 = a2[8];
      v18 = a2[9];
      sub_1C4409678(a2 + 5, v17);
      (*(v18 + 16))(v25, v17, v18);
      v19 = v26;
      v20 = v27;
      sub_1C4409678(v25, v26);
      sub_1C4BC62DC(a1, v19, v20);
      if (v5)
      {

        return sub_1C440962C(v25);
      }

      sub_1C440962C(v25);
      if (v11)
      {

        sub_1C4B8B8EC();
      }

      goto LABEL_11;
    }
  }

  sub_1C4C64A78();
  if (v5)
  {
  }

LABEL_11:
  result = sub_1C4C64D00(a1, v11);
  if (v11)
  {

    sub_1C4B8BB5C();
    v22 = v21;
    v24 = v23;

    *a5 = v22;
    *(a5 + 8) = v24;
    *(a5 + 16) = 0;
  }

  else
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 1;
  }

  return result;
}

uint64_t sub_1C4C64A78()
{
  sub_1C4C66A38(v0 + 80, &v16);
  if (!v17)
  {
    return sub_1C4420C3C(&v16, &qword_1EC0C50D0, &unk_1C4F5FAD0);
  }

  sub_1C460986C(&v16, v18);
  *&v16 = 0;
  *(&v16 + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4FB3840);
  v2 = v19;
  v3 = v20;
  sub_1C4409678(v18, v19);
  (*(v3 + 16))(&v16, v2, v3);
  sub_1C4409678(&v16, v17);
  v4 = sub_1C4407FBC();
  v6 = v5(v4);
  MEMORY[0x1C6940010](v6);

  sub_1C440962C(&v16);
  MEMORY[0x1C6940010](0xD000000000000015, 0x80000001C4FB3860);
  sub_1C4409678(v18, v19);
  v7 = sub_1C4407FBC();
  v9 = v8(v7);
  MEMORY[0x1C6940010](v9);

  MEMORY[0x1C6940010](0xD00000000000001DLL, 0x80000001C4FBD8A0);
  sub_1C4409678(v18, v19);
  v10 = sub_1C4407FBC();
  v12 = v11(v10);
  MEMORY[0x1C6940010](v12);

  MEMORY[0x1C6940010](34, 0xE100000000000000);
  sub_1C4EFBE98();

  if (!v1)
  {
    v14 = *(v0 + 32);
    MEMORY[0x1EEE9AC00](v13);
    sub_1C4F00638();
  }

  return sub_1C440962C(v18);
}

uint64_t sub_1C4C64D00(uint64_t a1, uint64_t a2)
{
  v80 = a1;
  v77 = a2;
  ppStmt[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1C456902C(&qword_1EC0BD2A0, &qword_1C4F2DA68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v76 - v6;
  v8 = v2[2];
  v9 = v2[3];
  v78 = v2;
  *&v82 = v8;
  *(&v82 + 1) = v9;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0BD2B8, &unk_1C4F5FAE0);
  sub_1C4EFCB88();
  v10 = sub_1C4A7A230();
  v74 = sub_1C4A7A284();
  *&v75 = sub_1C4401CBC(&unk_1EDDEFFF8, &qword_1EC0BD2A0, &qword_1C4F2DA68);
  v73 = v10;
  v11 = v79;
  sub_1C4F01C08();
  (*(v4 + 8))(v7, v3);

  v12 = v85;
  v13 = sub_1C4EFBF08();
  if (v13)
  {
    v14 = v13;
    v76[1] = v12;
    v80 = v11;
    *&v85 = 0;
    *(&v85 + 1) = 0xE000000000000000;
    sub_1C4F02248();
    v82 = v85;
    MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4FBA000);
    v15 = v78;
    v16 = v78[8];
    v17 = v78[9];
    sub_1C4432D30(v78 + 5);
    v18 = sub_1C44078DC();
    v19(v18);
    sub_1C4413AE4();
    v21 = *(v20 + 8);
    v22 = sub_1C44078DC();
    v24 = v23(v22);
    MEMORY[0x1C6940010](v24);

    sub_1C440962C(&v85);
    MEMORY[0x1C6940010](0xD000000000000017, 0x80000001C4FBA020);
    v25 = v15[8];
    v26 = v15[9];
    sub_1C4432D30(v15 + 5);
    v27 = sub_1C44078DC();
    v28(v27);
    sub_1C4413AE4();
    v30 = *(v29 + 24);
    v31 = sub_1C44078DC();
    v33 = *(v32(v31) + 16);
    if (v33)
    {
      v79 = *(&v12 + 1);
      v86 = MEMORY[0x1E69E7CC0];
      sub_1C44CD9C0();
      v34 = v86;
      v35 = *(v86 + 16);
      v36 = 16 * v35;
      do
      {
        v86 = v34;
        v37 = v35 + 1;
        if (v35 >= *(v34 + 24) >> 1)
        {
          sub_1C44CD9C0();
          v34 = v86;
        }

        *(v34 + 16) = v37;
        v38 = v34 + v36;
        *(v38 + 32) = 63;
        *(v38 + 40) = 0xE100000000000000;
        v36 += 16;
        v35 = v37;
        --v33;
      }

      while (v33);
    }

    else
    {

      v34 = MEMORY[0x1E69E7CC0];
    }

    sub_1C440962C(&v85);
    *&v85 = v34;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C4401CBC(&qword_1EDDFCED0, &unk_1EC0B9620, &unk_1C4F0E870);
    v40 = sub_1C4F01048();
    v42 = v41;

    MEMORY[0x1C6940010](v40, v42);

    MEMORY[0x1C6940010](0x29202020200ALL, 0xE600000000000000);
    v43 = v82;
    ppStmt[0] = 0;
    v44 = sub_1C4F011C8();
    v45 = sqlite3_prepare_v2(v14, (v44 + 32), -1, ppStmt, 0);

    v81 = v45;
    if (!v45)
    {
      v49 = ppStmt[0];
      if (ppStmt[0])
      {
        v86 = 0;
        v87 = 1;
        v50 = v78;
        sub_1C4C66A38((v78 + 10), &v82);
        if (v83)
        {
          sub_1C460986C(&v82, &v85);
          v51 = v50[8];
          v52 = v50[9];
          sub_1C4432D30(v50 + 5);
          v53 = sub_1C44078DC();
          v54(v53);
          v55 = v84;
          sub_1C4409678(&v82, v83);
          v56 = *(v55 + 24);
          v57 = sub_1C44078DC();
          v59 = v58(v57);
          MEMORY[0x1EEE9AC00](v59);
          *&v75 = &v85;
          v60 = v80;
          v61 = sub_1C4C62D14(sub_1C4C66ACC, &v73, v59);
          LOBYTE(v55) = v62;
          v80 = v60;

          sub_1C440962C(&v82);
          v86 = v61;
          v87 = v55 & 1;
          if (v55)
          {

            *&v82 = 0;
            *(&v82 + 1) = 0xE000000000000000;
            sub_1C4F02248();

            *&v82 = 0xD00000000000001ELL;
            *(&v82 + 1) = 0x80000001C4FBD850;
            sub_1C4413AE4();
            v64 = *(v63 + 8);
            v65 = sub_1C44078DC();
            v67 = v66(v65);
            MEMORY[0x1C6940010](v67);

            v68 = v82;
            sub_1C446D0DC();
            sub_1C43FFB2C();
            *v69 = v68;
            *(v69 + 16) = 2;
            swift_willThrow();
            sub_1C440962C(&v85);
LABEL_21:
            result = sqlite3_finalize(v49);
            goto LABEL_13;
          }

          v70 = sub_1C440962C(&v85);
          v50 = v78;
        }

        else
        {
          v70 = sub_1C4420C3C(&v82, &qword_1EC0C50D0, &unk_1C4F5FAD0);
        }

        v71 = v50[4];
        MEMORY[0x1EEE9AC00](v70);
        v72 = v77;
        v76[-6] = v49;
        v76[-5] = v72;
        v73 = &v86;
        v74 = &v81;
        v75 = v43;
        sub_1C4F00638();

        goto LABEL_21;
      }
    }

    *&v85 = 0;
    *(&v85 + 1) = 0xE000000000000000;
    sub_1C4F02248();

    *&v85 = 0xD00000000000001CLL;
    *(&v85 + 1) = 0x80000001C4FBD830;
    MEMORY[0x1C6940010](v43, *(&v43 + 1));

    v46 = v85;
    sub_1C446D0DC();
    sub_1C43FFB2C();
    *v39 = v46;
  }

  else
  {

    sub_1C446D0DC();
    sub_1C43FFB2C();
    *v39 = 0xD000000000000014;
    *(v39 + 8) = 0x80000001C4FB9FE0;
  }

  *(v39 + 16) = 2;
  result = swift_willThrow();
LABEL_13:
  v48 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C4C654FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v31 = a2;
  v5 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v28 - v7;
  v9 = sub_1C4EFB768();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C4F00588();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  result = sub_1C4F006B8();
  if (*(result + 16))
  {
    v28 = v15;
    v29 = v14;
    v20 = *(v15 + 16);
    v21 = result + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v33 = v18;
    v20(v18, v21, v14);

    v30 = xmmword_1C4F0D130;
    v22 = MEMORY[0x1E69E7360];
    while (1)
    {
      v23 = sub_1C4F006A8();
      if (v3 || (v23 & 1) == 0)
      {
        break;
      }

      v24 = MEMORY[0x1C693F260]();
      sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
      v25 = swift_allocObject();
      *(v25 + 16) = v30;
      *(v25 + 56) = v22;
      *(v25 + 64) = MEMORY[0x1E69A01D0];
      *(v25 + 32) = v24;
      sub_1C4EFB728();
      sub_1C4EFC088();
      (*(v10 + 8))(v13, v9);
      sub_1C440BAA8(v8, 1, 1, v9);
      v35 = 0;
      memset(v34, 0, sizeof(v34));
      sub_1C4EFB9A8();
      sub_1C4420C3C(v34, &unk_1EC0BC770, &qword_1C4F10DC0);
      sub_1C4420C3C(v8, &unk_1EC0C06C0, &unk_1C4F10DB0);
      if ((v36 & 1) == 0)
      {
        if (v37)
        {
          *&v34[0] = v24;
          v26 = sub_1C4F02858();
          sub_1C4B8BF6C(v26, v27);
        }
      }
    }

    return (*(v28 + 8))(v33, v29);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C4C658DC@<X0>(uint64_t *a1@<X8>)
{
  sub_1C4F02248();
  swift_getKeyPath();
  sub_1C456902C(&qword_1EC0C50D8, &qword_1C4F5FB20);
  sub_1C4EFCBE8();

  v2 = MEMORY[0x1C693FEF0](0, 0xE000000000000000);
  v4 = v3;

  result = MEMORY[0x1C6940010](0xD00000000000002DLL, 0x80000001C4FBD870);
  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C4C659CC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[3];
  v5 = a2[5];
  sub_1C4409678(a2, v4);
  if (v2 == (*(v5 + 8))(v4, v5) && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C4F02938();
  }

  return v8 & 1;
}

uint64_t sub_1C4C65A78(uint64_t a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v43 = a6;
  v44 = a7;
  v45 = a5;
  v46 = a1;
  v51 = a4;
  v56 = a2;
  v59 = sub_1C4F00588();
  v10 = *(v59 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&qword_1EC0C4C78, &unk_1C4F5FAF0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v49 = (&v43 - v16);
  v17 = sub_1C456902C(&qword_1EC0C4C80, &unk_1C4F5DC90);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v43 - v22;
  v48 = v10 + 16;
  v50 = v10;
  v52 = a3;
  v53 = (v10 + 8);
  while (2)
  {
    result = sub_1C4F006A8();
    if (!v8 && (result & 1) != 0)
    {
      v47 = 0;
      sqlite3_reset(v56);
      result = sub_1C4F006B8();
      v25 = 0;
      v26 = *(result + 16);
      v54 = v26;
      for (i = result; ; result = i)
      {
        if (v25 == v26)
        {
          v27 = 1;
          v25 = v26;
        }

        else
        {
          if ((v25 & 0x8000000000000000) != 0)
          {
            goto LABEL_27;
          }

          if (v25 >= *(result + 16))
          {
            goto LABEL_28;
          }

          v29 = v49;
          v28 = v50;
          v30 = result + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25;
          v31 = *(v14 + 48);
          *v49 = v25;
          (*(v28 + 16))(v29 + v31, v30, v59);
          sub_1C49328EC(v29, v20, &qword_1EC0C4C78, &unk_1C4F5FAF0);
          v27 = 0;
          ++v25;
        }

        sub_1C440BAA8(v20, v27, 1, v14);
        sub_1C49328EC(v20, v23, &qword_1EC0C4C80, &unk_1C4F5DC90);
        if (sub_1C44157D4(v23, 1, v14) == 1)
        {
          break;
        }

        v32 = *v23;
        result = (*(v10 + 32))(v13, &v23[*(v14 + 48)], v59);
        if (a3 && (*(v51 + 8) & 1) == 0 && v32 == *v51)
        {

          v57 = MEMORY[0x1C693F260](v33);
          v34 = sub_1C4F02858();
          v35 = v47;
          sub_1C4B8BF6C(v34, v36);
          v47 = v35;
          if (v35)
          {
            (*v53)(v13, v59);
          }
        }

        v37 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          return result;
        }

        if (v37 < 0xFFFFFFFF80000000)
        {
          goto LABEL_25;
        }

        if (v37 > 0x7FFFFFFF)
        {
          goto LABEL_26;
        }

        v38 = sub_1C4F00568();
        sqlite3_bind_value(v56, v32 + 1, v38);
        (*v53)(v13, v59);
        a3 = v52;
        v26 = v54;
      }

      v39 = sqlite3_step(v56);
      *v45 = v39;
      v8 = v47;
      if ((v39 & 0xFFFFFFFE) == 0x64)
      {
        continue;
      }

      v57 = 0;
      v58 = 0xE000000000000000;
      sub_1C4F02248();

      v57 = 0x747320726F727265;
      v58 = 0xEF20676E69707065;
      MEMORY[0x1C6940010](v43, v44);
      v40 = v57;
      v41 = v58;
      sub_1C446D0DC();
      swift_allocError();
      *v42 = v40;
      *(v42 + 8) = v41;
      *(v42 + 16) = 2;
      return swift_willThrow();
    }

    return result;
  }
}

void *sub_1C4C65F24()
{
  v1 = v0[3];

  v2 = v0[4];

  sub_1C440962C(v0 + 5);
  sub_1C4420C3C((v0 + 10), &qword_1EC0C50D0, &unk_1C4F5FAD0);
  return v0;
}

uint64_t sub_1C4C65F6C()
{
  sub_1C4C65F24();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C65FC4(uint64_t *a1)
{
  sub_1C4C63104(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C4C6603C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Configuration();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v31[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s10ViewConfigVMa(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v31[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_unownedRetainStrong();
  sub_1C4C81AA0();
  if (v4)
  {
  }

  else
  {

    sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
    sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
    if (swift_dynamicCast())
    {
      sub_1C441D670(v31, v34);
      swift_unownedRetainStrong();
      v16 = *(a4 + 16);

      sub_1C443A738(a1, a2, v17, v18, v19, v20, v21, v22);

      v24 = v15[26];
      if (v24)
      {
        v25 = v15[25];
        sub_1C4F00688();
        swift_unownedRetainStrong();
        sub_1C44098F0(a4 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_config, v11);

        v29 = sub_1C4B45B18(v15);
        sub_1C4420758();
        sub_1C442E860(v34, v33);
        _s27SQLConnectionViewGenerationCMa();
        a1 = swift_allocObject();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4C62DF8(v29, v33, v25, v24);
      }

      else
      {
        sub_1C450B034();
        sub_1C43FFB2C();
        *v26 = a1;
        *(v26 + 8) = a2;
        *(v26 + 16) = 0xD000000000000041;
        *(v26 + 24) = 0x80000001C4FB2690;
        v27 = v33[1];
        *(v26 + 32) = v33[0];
        *(v26 + 48) = v27;
        *(v26 + 64) = 3;
        swift_willThrow();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      sub_1C440962C(v34);
      sub_1C442D738();
    }

    else
    {
      memset(v31, 0, sizeof(v31));
      v32 = 0;
      sub_1C4420C3C(v31, &unk_1EC0C06B0, &qword_1C4F5FBA0);
      sub_1C450B034();
      sub_1C43FFB2C();
      *v23 = a1;
      *(v23 + 8) = a2;
      *(v23 + 16) = xmmword_1C4F5B670;
      *(v23 + 32) = 0xD000000000000025;
      *(v23 + 40) = 0x80000001C4FB83A0;
      *(v23 + 48) = v30;
      *(v23 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a1;
}

uint64_t sub_1C4C663B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C6603C(a1, a2, a3, *v3);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4C6645C(uint64_t a1)
{
  *(v1 + 16) = a1;

  sub_1C4F005F8();

  if (v2)
  {
  }

  return v1;
}

uint64_t sub_1C4C664D0()
{
  v1 = v0;
  v2 = *(v0 + 16);

  sub_1C4F005F8();

  v3 = *(v1 + 16);

  return v1;
}

uint64_t sub_1C4C66680()
{
  sub_1C4C664D0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C666E4(void *a1)
{
  v1 = a1[3];
  v2 = sub_1C4409678(a1, v1);
  v3 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v6 + 16))(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1C4422F90(v14);
  sub_1C4F01478();
  while (1)
  {
    sub_1C4418280(v14, AssociatedTypeWitness);
    sub_1C4F01FA8();
    if (v13)
    {
      break;
    }

    v7 = v12[1];
    v8 = sub_1C4F006C8();
    if (!sqlite3_reset(v8))
    {
      v9 = sub_1C4F006C8();
      if (!sqlite3_bind_int64(v9, 1, v7))
      {
        v10 = sub_1C4F006C8();
        if (sqlite3_step(v10) == 101)
        {
          continue;
        }
      }
    }

    sub_1C4F00688();
    sub_1C4F006C8();
    sub_1C4F00628();
    sub_1C4C66B64();
    swift_allocError();
    sub_1C4F005B8();
    swift_willThrow();
    return sub_1C440962C(v14);
  }

  return sub_1C440962C(v14);
}

uint64_t sub_1C4C66A38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C50D0, &unk_1C4F5FAD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4C66B08(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(sub_1C4C66B48, a1);
}

unint64_t sub_1C4C66B64()
{
  result = qword_1EC0C50E0;
  if (!qword_1EC0C50E0)
  {
    sub_1C4F00628();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C50E0);
  }

  return result;
}

void sub_1C4C66BE8()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v23 = v5;
  v24 = v4;
  v6 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  sub_1C43FCDF8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v22 = sub_1C4EFCB28();
  v14 = sub_1C43FCDF8(v22);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v20 = &v21 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFC178();
  v25 = v3;
  v26 = v1;
  sub_1C47DCB64();
  sub_1C4EFCAE8();
  sub_1C456902C(&qword_1EC0BD2B8, &unk_1C4F5FAE0);
  sub_1C456902C(&qword_1EC0BD2A0, &qword_1C4F2DA68);
  sub_1C4401CBC(&unk_1EDDEFFF8, &qword_1EC0BD2A0, &qword_1C4F2DA68);
  sub_1C4401CBC(&qword_1EDDFA248, &qword_1EC0BD298, &qword_1C4F2DA60);
  sub_1C4EFCAB8();
  (*(v8 + 8))(v13, v6);
  (*(v16 + 8))(v20, v22);
  sub_1C43FE9F0();
}

uint64_t sub_1C4C66E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = a4;
  v19 = a1;
  v6 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  v17 = sub_1C4EFCB28();
  v11 = *(v17 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFC178();
  v20 = a2;
  v21 = a3;
  sub_1C47DCB64();
  sub_1C4EFCAE8();
  sub_1C456902C(&qword_1EC0C0698, &qword_1C4F3EFB8);
  sub_1C456902C(&qword_1EC0C0690, &qword_1C4F3EFB0);
  sub_1C4401CBC(&qword_1EDDF0008, &qword_1EC0C0690, &qword_1C4F3EFB0);
  sub_1C4401CBC(&qword_1EDDFA248, &qword_1EC0BD298, &qword_1C4F2DA60);
  sub_1C4EFCAB8();
  (*(v7 + 8))(v10, v6);
  return (*(v11 + 8))(v14, v17);
}

uint64_t sub_1C4C6704C()
{
  v0 = sub_1C456902C(&qword_1EC0C0690, &qword_1C4F3EFB0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - v3;
  sub_1C4AA0ED8();
  sub_1C4401CBC(&qword_1EDDF0008, &qword_1EC0C0690, &qword_1C4F3EFB0);
  sub_1C4EFCB68();
  sub_1C4EFCBB8();
  (*(v1 + 8))(v4, v0);
}

void sub_1C4C67230()
{
  sub_1C43FBD3C();
  sub_1C440929C();
  v1 = sub_1C456902C(&qword_1EC0BD280, &qword_1C4F2DA08);
  sub_1C43FCDF8(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C44011E8();
  sub_1C4407FD4();
  sub_1C4401CBC(v5, &qword_1EC0BD280, &qword_1C4F2DA08);
  sub_1C4EFCB68();
  sub_1C4413B04();
  if (v0)
  {

    v6 = sub_1C44128A0();
    v7(v6);
    v8 = sub_1C456902C(&qword_1EC0BD278, &unk_1C4F2D9F0);
    sub_1C43FCABC(v8);
  }

  else
  {
    v9 = sub_1C44128A0();
    v10(v9);
  }

  sub_1C43FE9F0();
}

void sub_1C4C67368()
{
  sub_1C43FBD3C();
  sub_1C440929C();
  v1 = sub_1C456902C(&qword_1EC0BE568, &unk_1C4F374A0);
  sub_1C43FCDF8(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C44011E8();
  sub_1C4407FD4();
  sub_1C4401CBC(v5, &qword_1EC0BE568, &unk_1C4F374A0);
  sub_1C4EFCB68();
  sub_1C4413B04();
  if (v0)
  {

    v6 = sub_1C44128A0();
    v7(v6);
    v8 = sub_1C456902C(&qword_1EC0BE578, qword_1C4F374B0);
    sub_1C43FCABC(v8);
  }

  else
  {
    v9 = sub_1C44128A0();
    v10(v9);
  }

  sub_1C43FE9F0();
}

void sub_1C4C674A0()
{
  sub_1C43FBD3C();
  v1 = v0;
  v106 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_1C456902C(&qword_1EC0C5100, &qword_1C4F5FC60);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v103 = &v99 - v11;
  v104 = sub_1C456902C(&qword_1EC0C0688, &qword_1C4F3EFA8);
  v12 = sub_1C43FCDF8(v104);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBD08();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v99 - v21;
  v109 = v6;
  v110 = v4;
  strcpy(v115, "$SUBJECT_IDS");
  BYTE5(v115[1]) = 0;
  HIWORD(v115[1]) = -5120;
  v105 = sub_1C4415EA8();
  v23 = *(sub_1C4F01FC8() + 16);

  v109 = MEMORY[0x1E69E7CC0];
  v24 = v23 - 2;
  if (v23 < 2)
  {
    goto LABEL_45;
  }

  v100 = v19;
  v25 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3B44(v25);
  v26 = v109;
  if (v23 == 2)
  {
LABEL_17:
    v101 = v22;
    v102 = v1;
    v99 = v14;
    v108 = v6;
    v41 = *(v106 + 8);
    v40 = v106 + 16;
    v42 = *(v106 + 32);
    sub_1C43FD030();
    v45 = v44 & v43;
    v47 = (v46 + 63) >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v48 = 0;
    if (!v45)
    {
      goto LABEL_19;
    }

    do
    {
      v49 = v4;
      v50 = v48;
LABEL_23:
      v51 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v52 = (v50 << 10) | (16 * v51);
      v53 = (*(v106 + 6) + v52);
      v55 = *v53;
      v54 = v53[1];
      v56 = *(v106 + 7) + v52;
      v57 = *(v56 + 8);
      v107 = *v56;
      v109 = 31524;
      v110 = 0xE200000000000000;
      v115[0] = v55;
      v115[1] = v54;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v58 = MEMORY[0x1E69E6158];
      v59 = sub_1C4F01438();
      MEMORY[0x1C6940010](v59);

      MEMORY[0x1C6940010](125, 0xE100000000000000);
      v60 = v109;
      v61 = v110;
      v109 = v108;
      v110 = v49;
      v115[0] = v60;
      v115[1] = v61;
      v113 = v107;
      v114 = v57;
      sub_1C440FDE0();
      v99 = v58;
      v100 = v62;
      sub_1C44113D8();
      v108 = sub_1C4F02008();
      v4 = v63;
    }

    while (v45);
    while (1)
    {
LABEL_19:
      v50 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v50 >= v47)
      {
        break;
      }

      v45 = *&v40[2 * v50];
      ++v48;
      if (v45)
      {
        v49 = v4;
        v48 = v50;
        goto LABEL_23;
      }
    }

    if (qword_1EDDF6970 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_26;
  }

  v27 = *(v1 + 16);
  while (1)
  {
    v28 = *(v26 + 16);
    v29 = v28 + v27;
    if (__OFADD__(v28, v27))
    {
      break;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v29 <= *(v26 + 24) >> 1)
    {
      if (!v27)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v28 <= v29)
      {
        v38 = v28 + v27;
      }

      else
      {
        v38 = v28;
      }

      sub_1C44D45E4(isUniquelyReferenced_nonNull_native, v38, 1, v26);
      v26 = v39;
      if (!v27)
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    v31 = (*(v26 + 24) >> 1) - *(v26 + 16);
    v32 = *(sub_1C4EFF0C8() - 8);
    if (v31 < v27)
    {
      goto LABEL_43;
    }

    v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v34 = *(v32 + 72);
    swift_arrayInitWithCopy();

    v35 = *(v26 + 16);
    v36 = __OFADD__(v35, v27);
    v37 = v35 + v27;
    if (v36)
    {
      goto LABEL_44;
    }

    *(v26 + 16) = v37;
LABEL_16:
    if (!--v24)
    {
      goto LABEL_17;
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  sub_1C4420780();
  swift_once();
LABEL_26:
  v64 = sub_1C456902C(&qword_1EC0C0690, &qword_1C4F3EFB0);
  sub_1C442B738(v64, qword_1EDE2CEA8);
  v65 = v103;
  v66 = v108;
  sub_1C4C6704C();
  v67 = v104;
  if (sub_1C44157D4(v65, 1, v104) == 1)
  {
    sub_1C4423A0C(v65, &qword_1EC0C5100, &qword_1C4F5FC60);
  }

  else
  {
    v68 = v65;
    v69 = v99;
    v70 = v101;
    (*(v99 + 32))(v101, v68, v67);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v71 = sub_1C4F00978();
    sub_1C442B738(v71, qword_1EDE2DF70);
    v72 = v100;
    (*(v69 + 16))(v100, v70, v67);
    v73 = sub_1C4F00968();
    v74 = v69;
    v75 = sub_1C4F01CD8();
    if (os_log_type_enabled(v73, v75))
    {
      v76 = swift_slowAlloc();
      v106 = v76;
      v107 = swift_slowAlloc();
      v115[0] = v107;
      *v76 = 136315138;
      swift_getKeyPath();
      sub_1C4EFCBE8();

      v77 = MEMORY[0x1C693FEF0](v109, v110, v111, v112);
      v78 = v4;
      v80 = v79;

      v81 = *(v74 + 8);
      v81(v72, v67);
      v82 = sub_1C441D828(v77, v80, v115);
      v4 = v78;

      v83 = v106;
      *(v106 + 1) = v82;
      v84 = v75;
      v85 = v83;
      _os_log_impl(&dword_1C43F8000, v73, v84, "Unaccounted view dependency names found in SQL code: %s", v83, 0xCu);
      v86 = v107;
      sub_1C440962C(v107);
      MEMORY[0x1C6942830](v86, -1, -1);
      MEMORY[0x1C6942830](v85, -1, -1);

      v81(v101, v67);
    }

    else
    {

      v87 = *(v74 + 8);
      v87(v72, v67);
      v87(v70, v67);
    }

    v66 = v108;
  }

  v88 = *(v102 + 16);
  v89 = MEMORY[0x1E69E7CC0];
  if (v88)
  {
    v90 = v4;
    v109 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v89 = v109;
    v91 = *(v109 + 16);
    v92 = 16 * v91;
    do
    {
      v109 = v89;
      v93 = v91 + 1;
      if (v91 >= *(v89 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v89 = v109;
      }

      *(v89 + 16) = v93;
      v94 = v89 + v92;
      *(v94 + 32) = 63;
      *(v94 + 40) = 0xE100000000000000;
      v92 += 16;
      v91 = v93;
      --v88;
    }

    while (v88);
    v4 = v90;
  }

  v109 = v89;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4401CBC(&qword_1EDDFCED0, &unk_1EC0B9620, &unk_1C4F0E870);
  v95 = sub_1C4F01048();
  v97 = v96;

  v109 = v66;
  v110 = v4;
  v114 = v97;
  strcpy(v115, "$SUBJECT_IDS");
  BYTE5(v115[1]) = 0;
  HIWORD(v115[1]) = -5120;
  v113 = v95;
  sub_1C440FDE0();
  v100 = v98;
  v99 = MEMORY[0x1E69E6158];
  sub_1C44113D8();
  sub_1C4F02008();

  sub_1C43FE9F0();
}

uint64_t sub_1C4C67CE4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = v1 == 0x6C616E7265747865 && v2 == 0xE800000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1C4F013F8() ^ 1;
  }

  return v4 & 1;
}

void sub_1C4C67D64()
{
  sub_1C43FE96C();
  v55 = v1;
  v56 = v0;
  v53 = v2;
  v54 = v3;
  v51 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_1C4F01188();
  v10 = sub_1C43FBD18(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBD08();
  v52 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  sub_1C43FBD18(v16);
  v18 = *(v17 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v49 - v20;
  v22 = sub_1C4EF98F8();
  v23 = sub_1C43FCDF8(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBD08();
  v28 = v26 - v27;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v49 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v49 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v38 = &v49 - v37;
  if (v8)
  {
    if (v6)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      v50 = v36;
      sub_1C44600A0(v54, v21, &unk_1EC0BABB0, &qword_1C4F16ED0);
      if (sub_1C44157D4(v21, 1, v22) == 1)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4423A0C(v21, &unk_1EC0BABB0, &qword_1C4F16ED0);
      }

      else
      {
        v54 = *(v50 + 32);
        v54(v38, v21, v22);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9888();
        if (v55)
        {
          sub_1C4EF9898();
          (*(v50 + 8))(v35, v22);
          v54(v35, v32, v22);
        }

        sub_1C4EF98E8();
        sub_1C4F01178();
        v43 = v56;
        sub_1C4F010F8();
        if (!v43)
        {

          v48 = *(v50 + 8);
          v48(v35, v22);
          v48(v38, v22);
          goto LABEL_14;
        }

        v44 = *(v50 + 8);
        v44(v35, v22);
        v44(v38, v22);
      }

      sub_1C4EF9888();

      if (v55)
      {
        sub_1C4EF9898();
        v45 = v50;
        (*(v50 + 8))(v28, v22);
        (*(v45 + 32))(v28, v32, v22);
      }

      sub_1C4EF98E8();
      sub_1C4F01178();
      sub_1C4F010F8();
      v46 = sub_1C440DAB4();
      v47(v46);
    }
  }

  else
  {
    sub_1C450B034();
    v39 = swift_allocError();
    sub_1C440E94C(v39, v40);
    sub_1C4411340(v57, v58, v41, v42);
  }

LABEL_14:
  sub_1C43FBC80();
}

void sub_1C4C68220()
{
  sub_1C43FE96C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v77 = sub_1C4EF9488();
  v6 = sub_1C43FCDF8(v77);
  v75 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v76 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&qword_1EC0C5100, &qword_1C4F5FC60);
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v74 - v15;
  v17 = sub_1C456902C(&qword_1EC0C0688, &qword_1C4F3EFA8);
  sub_1C43FCDF8(v17);
  v19 = *(v18 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  v82 = (&v74 - v21);
  v80 = (v22 + 32);
  v78 = (v22 + 8);
  swift_bridgeObjectRetain_n();
  v23 = MEMORY[0x1E69E7CC0];
  for (i = v16; ; v16 = i)
  {
    if (qword_1EDDF6970 != -1)
    {
      sub_1C4420780();
      swift_once();
    }

    v24 = sub_1C456902C(&qword_1EC0C0690, &qword_1C4F3EFB0);
    sub_1C442B738(v24, qword_1EDE2CEA8);
    sub_1C4EFCBA8();
    if (v1)
    {
      swift_bridgeObjectRelease_n();

LABEL_24:
      sub_1C43FBC80();
      return;
    }

    v25 = sub_1C44157D4(v16, 1, v17);
    v81 = 0;
    if (v25 == 1)
    {

      sub_1C4423A0C(v16, &qword_1EC0C5100, &qword_1C4F5FC60);
      v54 = *(v23 + 16);
      if (v54)
      {
        v87 = MEMORY[0x1E69E7CC0];
        sub_1C44CD9C0();
        v55 = v87;
        v82 = (v75 + 8);
        v56 = sub_1C4C6AB3C(&qword_1EDDFCD90, MEMORY[0x1E69680B8]);
        i = v23;
        v80 = v56;
        v57 = (v23 + 56);
        do
        {
          v58 = *(v57 - 1);
          v59 = *v57;
          v84 = *(v57 - 3);
          v85 = v58;
          v86 = v59;
          v83 = &unk_1F43DA620;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C456902C(&qword_1EC0C3978, &unk_1C4F540A0);
          sub_1C4401CBC(&qword_1EDDFA558, &qword_1EC0C3978, &unk_1C4F540A0);
          v60 = v76;
          v61 = v77;
          sub_1C4F020C8();
          sub_1C45D4DA4();
          v62 = sub_1C4F01FF8();
          v64 = v63;
          (*v82)(v60, v61);

          v65 = *(v87 + 16);
          if (v65 >= *(v87 + 24) >> 1)
          {
            sub_1C44CD9C0();
          }

          *(v87 + 16) = v65 + 1;
          v66 = v87 + 16 * v65;
          *(v66 + 32) = v62;
          *(v66 + 40) = v64;
          v57 += 4;
          --v54;
        }

        while (v54);
      }

      else
      {

        v55 = MEMORY[0x1E69E7CC0];
      }

      sub_1C4499940(v55, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, i, v80, v81, v82, v83, v84, *(&v84 + 1), v85, v86);
      goto LABEL_24;
    }

    (*v80)(v82, v16, v17);
    v26 = sub_1C4EFCBF8();
    sub_1C4EFCBF8();
    if (v27 >> 14 < v26 >> 14)
    {
      break;
    }

    v28 = v5;
    v29 = sub_1C4F01448();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = *(v23 + 16);
      sub_1C458B7F4();
      v23 = v52;
    }

    v36 = v23;
    v37 = *(v23 + 16);
    v38 = v36;
    if (v37 >= *(v36 + 24) >> 1)
    {
      sub_1C458B7F4();
      v38 = v53;
    }

    *(v38 + 16) = v37 + 1;
    v39 = (v38 + 32 * v37);
    v23 = v38;
    v39[4] = v29;
    v39[5] = v31;
    v39[6] = v33;
    v39[7] = v35;
    v40 = v82;
    sub_1C4EFCBF8();
    v42 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v42 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (4 * v42 < v41 >> 14)
    {
      goto LABEL_26;
    }

    v43 = sub_1C4F01448();
    v45 = v44;
    v47 = v46;
    v49 = v48;

    v5 = MEMORY[0x1C693FEF0](v43, v45, v47, v49);
    v3 = v50;

    (*v78)(v40, v17);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v1 = v81;
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_1C4C687F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C48685EC();
  if (*(&v39 + 1))
  {
    v34 = a2;
    v4 = &v43;
    v43 = v39;
    sub_1C441D670(&v40, &v44);

    sub_1C441D670(&v44, v47);
    v5 = v48;
    v6 = v49;
    sub_1C4409678(v47, v48);
    (*(v6 + 16))(&v43, v5, v6);
    v7 = *(&v44 + 1);
    v8 = v45;
    v9 = sub_1C4409678(&v43, *(&v44 + 1));
    v35 = (*(v8 + 16))(v7, v8);
    sub_1C440962C(&v43);
    v11 = a1 + 64;
    v10 = *(a1 + 64);
    v12 = *(a1 + 32);
    sub_1C43FD030();
    v15 = v14 & v13;
    v17 = (v16 + 63) >> 6;
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v19 = 0;
    if (!v15)
    {
      goto LABEL_4;
    }

    do
    {
      v20 = v19;
LABEL_8:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = sub_1C4417A28(v21 | (v20 << 6));
      sub_1C442E860(v22, &v36);
      *&v39 = v4;
      *(&v39 + 1) = v9;
      sub_1C441D670(&v36, &v40);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_9:
      v43 = v39;
      v44 = v40;
      v45 = v41;
      v46 = v42;
      v23 = *(&v39 + 1);
      if (!*(&v39 + 1))
      {

        v34[3] = type metadata accessor for ViewDatabaseArtifact();
        v34[4] = &off_1F4405BC8;
        *v34 = v35;
        return sub_1C440962C(v47);
      }

      v4 = v43;
      sub_1C441D670(&v44, &v39);
      v50 = *(v35 + 16);
      v24 = *(&v40 + 1);
      v25 = v41;
      sub_1C4409678(&v39, *(&v40 + 1));
      (*(v25 + 16))(&v36, v24, v25);
      v26 = v37.n128_u64[1];
      v27 = v38;
      sub_1C4409678(&v36, v37.n128_i64[1]);
      v9 = *((*(v27 + 16))(v26, v27) + 16);

      sub_1C440962C(&v36);
      if (v50 != v9)
      {
        sub_1C450B034();
        v32 = swift_allocError();
        v33->n128_u64[0] = v4;
        v33->n128_u64[1] = v23;
        v33[1].n128_u64[0] = 0xD000000000000031;
        v33[1].n128_u64[1] = 0x80000001C4FBDA50;
        sub_1C4411340(v36, v37, v32, v33);

        sub_1C440962C(&v39);
        return sub_1C440962C(v47);
      }

      result = sub_1C440962C(&v39);
    }

    while (v15);
LABEL_4:
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        v15 = 0;
        v42 = 0;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        goto LABEL_9;
      }

      v15 = *(v11 + 8 * v20);
      ++v19;
      if (v15)
      {
        v19 = v20;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1C4423A0C(&v39, &unk_1EC0C5130, &qword_1C4F5FDC0);
    sub_1C450B034();
    v28 = swift_allocError();
    sub_1C440E94C(v28, v29);
    return sub_1C4411340(v36, v37, v30, v31);
  }

  return result;
}

uint64_t sub_1C4C68B88(uint64_t a1)
{
  v2 = a1 + 64;
  v1 = *(a1 + 64);
  v3 = *(a1 + 32);
  sub_1C43FD030();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC8];
  v35 = v8;
  v36 = v2;
  if (v6)
  {
    while (1)
    {
      v39 = v10;
LABEL_7:
      v12 = sub_1C4417A28(__clz(__rbit64(v6)) | (v9 << 6));
      sub_1C442E860(v12, v46);
      v45[0] = v8;
      v45[1] = v10;
      sub_1C44600A0(v45, v43, &qword_1EC0C4FA0, &qword_1C4F5E4B8);
      v13 = v43[0];
      v14 = v43[1];
      v15 = v47;
      v16 = v48;
      sub_1C4409678(v46, v47);
      v17 = *(v16 + 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v17(v40, v15, v16);
      v18 = v41;
      v19 = v42;
      sub_1C4409678(v40, v41);
      v37 = (*(v19 + 8))(v18, v19);
      v38 = v20;
      swift_isUniquelyReferenced_nonNull_native();
      v49 = v39;
      v21 = sub_1C445FAA8(v13, v14);
      if (__OFADD__(v39[2], (v22 & 1) == 0))
      {
        break;
      }

      v23 = v21;
      v24 = v22;
      sub_1C456902C(&qword_1EC0BA720, &qword_1C4F23540);
      if (sub_1C4F02458())
      {
        v25 = sub_1C445FAA8(v13, v14);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_21;
        }

        v23 = v25;
      }

      if (v24)
      {

        v10 = v49;
        v27 = (v49[7] + 16 * v23);
        v28 = v27[1];
        *v27 = v37;
        v27[1] = v38;
      }

      else
      {
        v10 = v49;
        v49[(v23 >> 6) + 8] |= 1 << v23;
        v29 = (v10[6] + 16 * v23);
        *v29 = v13;
        v29[1] = v14;
        v30 = (v10[7] + 16 * v23);
        *v30 = v37;
        v30[1] = v38;
        v31 = v10[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_20;
        }

        v10[2] = v33;
      }

      v6 &= v6 - 1;
      sub_1C440962C(v40);
      sub_1C440962C(v44);
      sub_1C4423A0C(v45, &qword_1EC0C4FA0, &qword_1C4F5E4B8);
      v8 = v35;
      v2 = v36;
      if (!v6)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return v10;
      }

      v6 = *(v2 + 8 * v11);
      ++v9;
      if (v6)
      {
        v39 = v10;
        v9 = v11;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C4C68E70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657461647075 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656C6564 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4C68F38(char a1)
{
  if (a1)
  {
    return 0x6574656C6564;
  }

  else
  {
    return 0x657461647075;
  }
}

void sub_1C4C68F60()
{
  sub_1C43FE96C();
  v14[0] = v1;
  v14[1] = v2;
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0C5120, &qword_1C4F5FCA0);
  sub_1C43FCDF8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v14 - v11;
  v13 = v4[4];
  sub_1C4409678(v4, v4[3]);
  sub_1C4C6A8F4();
  sub_1C4F02BF8();
  sub_1C4F02798();
  if (!v0)
  {
    sub_1C4F02738();
  }

  (*(v7 + 8))(v12, v5);
  sub_1C43FBC80();
}

void sub_1C4C690B8()
{
  sub_1C43FE96C();
  v2 = v1;
  v3 = sub_1C456902C(&qword_1EC0C5118, &qword_1C4F5FC98);
  sub_1C43FCDF8(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = v2[4];
  sub_1C4409678(v2, v2[3]);
  sub_1C4C6A8F4();
  sub_1C4F02BC8();
  if (!v0)
  {
    sub_1C4F02678();
    sub_1C4F02618();
    v8 = sub_1C4402F74();
    v9(v8);
  }

  sub_1C440962C(v2);
  sub_1C43FBC80();
}

uint64_t sub_1C4C6926C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C68E70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4C69294(uint64_t a1)
{
  v2 = sub_1C4C6A8F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C692D0(uint64_t a1)
{
  v2 = sub_1C4C6A8F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4C6930C(void *a1@<X8>)
{
  sub_1C4C690B8();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

void sub_1C4C6933C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1C4C68F60();
}

uint64_t sub_1C4C6935C()
{
  v0 = sub_1C456902C(&qword_1EC0C0690, &qword_1C4F3EFB0);
  sub_1C44F9918(v0, qword_1EDE2CEA8);
  sub_1C442B738(v0, qword_1EDE2CEA8);
  sub_1C456902C(&qword_1EC0C0698, &qword_1C4F3EFB8);
  sub_1C4407FD4();
  sub_1C4401CBC(v1, &qword_1EC0C0690, &qword_1C4F3EFB0);
  return sub_1C4EFCB98();
}

uint64_t sub_1C4C69424@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  v2 = *(v1 - 8);
  v50 = v1;
  v51 = v2;
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v48 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v40 - v6;
  v7 = sub_1C456902C(&qword_1EC0BD2A0, &qword_1C4F2DA68);
  v45 = *(v7 - 8);
  v8 = *(v45 + 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - v9;
  v49 = sub_1C456902C(&qword_1EC0C0690, &qword_1C4F3EFB0);
  v47 = *(v49 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v13 = &v40 - v12;
  v14 = sub_1C4EFCB28();
  v43 = v14;
  v54 = *(v14 - 8);
  v15 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C456902C(&qword_1EC0BD2C8, &unk_1C4F4A7C0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v40 - v20;
  v44 = sub_1C456902C(&qword_1EC0C5108, &qword_1C4F5FC88);
  v53 = *(v44 - 8);
  v22 = *(v53 + 64);
  v23 = MEMORY[0x1EEE9AC00](v44);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v42 = &v40 - v26;
  v57 = 31524;
  v58 = 0xE200000000000000;
  v27 = sub_1C47DCB64();
  MEMORY[0x1C693AE20](v59, &v57, MEMORY[0x1E69E6158], v27);
  v28 = sub_1C4EFCB78();
  sub_1C440BAA8(v21, 1, 1, v28);
  sub_1C4EFC178();
  sub_1C4C69A80(v10);
  v29 = sub_1C456902C(&qword_1EC0C0698, &qword_1C4F3EFB8);
  v40 = MEMORY[0x1E69E9290];
  sub_1C4401CBC(&unk_1EDDEFFF8, &qword_1EC0BD2A0, &qword_1C4F2DA68);
  sub_1C4EFCB18();
  (*(v45 + 1))(v10, v7);
  v30 = *(v54 + 8);
  v54 += 8;
  v45 = v30;
  v30(v17, v14);
  sub_1C4423A0C(v21, &qword_1EC0BD2C8, &unk_1C4F4A7C0);
  MEMORY[0x1C693AE40](v13, v29);
  v31 = sub_1C4401CBC(&qword_1EDDF0028, &qword_1EC0C5108, &qword_1C4F5FC88);
  v32 = v42;
  v33 = v44;
  MEMORY[0x1C693AE20](v25, v44, v31);
  v34 = *(v53 + 8);
  v53 += 8;
  v41 = v34;
  v34(v25, v33);
  v55 = 125;
  v56 = 0xE100000000000000;
  MEMORY[0x1C693AE20](&v57, &v55, MEMORY[0x1E69E6158], v27);
  v55 = v59[0];
  v56 = v59[1];
  v35 = v46;
  sub_1C4EFC148();

  sub_1C4EFC178();
  sub_1C4401CBC(&qword_1EDDFA248, &qword_1EC0BD298, &qword_1C4F2DA60);
  v36 = v48;
  v37 = v50;
  sub_1C4EFCAE8();
  sub_1C4EFCAB8();
  v38 = *(v51 + 8);
  v38(v36, v37);
  v45(v17, v43);
  sub_1C4C66E04(v13, v57, v58, v52);

  (*(v47 + 8))(v13, v49);
  v38(v35, v37);
  return v41(v32, v33);
}

uint64_t sub_1C4C69A80@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - v7;
  v9 = sub_1C456902C(&qword_1EC0BD2A0, &qword_1C4F2DA68);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v31 - v11;
  v13 = sub_1C4EFCB28();
  v33 = *(v13 - 8);
  v34 = v13;
  v14 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C456902C(&qword_1EC0BD2A8, &unk_1C4F2DA70);
  v35 = *(v17 - 8);
  v18 = *(v35 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v31 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v32 = &v31 - v21;
  sub_1C4EFC178();
  if (qword_1EDDE82A8 != -1)
  {
    swift_once();
  }

  v22 = sub_1C442B738(v1, qword_1EDE2D5B8);
  v23 = sub_1C4401CBC(&qword_1EDDFA248, &qword_1EC0BD298, &qword_1C4F2DA60);
  MEMORY[0x1C693AE20](v22, v1, v23);
  sub_1C4EFC148();
  v24 = *(v2 + 8);
  v24(v6, v1);
  v25 = sub_1C456902C(&qword_1EC0BD2B8, &unk_1C4F5FAE0);
  sub_1C4EFCAF8();
  v24(v8, v1);
  (*(v33 + 8))(v16, v34);
  v26 = v31;
  MEMORY[0x1C693AEB0](v12, v25);
  v27 = sub_1C4401CBC(&qword_1EDDF0018, &qword_1EC0BD2A8, &unk_1C4F2DA70);
  v28 = v32;
  MEMORY[0x1C693AE20](v26, v17, v27);
  v29 = *(v35 + 8);
  v29(v26, v17);
  sub_1C4EFC148();
  return (v29)(v28, v17);
}

uint64_t sub_1C4C69EA0()
{
  v0 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v7 - v4;
  sub_1C44F9918(v3, qword_1EDE2D5B8);
  sub_1C442B738(v0, qword_1EDE2D5B8);
  sub_1C4401CBC(&qword_1EDDFA248, &qword_1EC0BD298, &qword_1C4F2DA60);
  sub_1C4EFCB98();
  sub_1C4EFCBD8();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_1C4C69FFC@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = sub_1C456902C(&qword_1EC0BD2E0, &qword_1C4F4A7D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v41 - v7;
  v9 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  v10 = *(v9 - 8);
  v48 = v9;
  v49 = v10;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v43 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v41 - v14;
  v15 = sub_1C4EFCB28();
  v46 = *(v15 - 8);
  v47 = v15;
  v16 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v42 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C456902C(&qword_1EC0BD2C8, &unk_1C4F4A7C0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v41 - v20;
  v22 = sub_1C456902C(&qword_1EC0C5110, &qword_1C4F5FC90);
  v44 = *(v22 - 8);
  v23 = *(v44 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v41 - v27;
  v29 = sub_1C4EFCB78();
  sub_1C440BAA8(v21, 1, 1, v29);
  sub_1C4EFC178();
  sub_1C4EFC1E8();
  v30 = sub_1C4401CBC(&qword_1EDDFA258, &qword_1EC0BD2E0, &qword_1C4F4A7D0);
  MEMORY[0x1C693AE20](v6, v1, v30);
  v31 = *(v2 + 8);
  v31(v6, v1);
  v32 = v43;
  sub_1C4EFC148();
  v31(v8, v1);
  sub_1C4401CBC(&qword_1EDDFA248, &qword_1EC0BD298, &qword_1C4F2DA60);
  v33 = v45;
  v34 = v32;
  v35 = MEMORY[0x1E69E67B0];
  v36 = v48;
  v37 = v42;
  sub_1C4EFCAC8();
  (*(v49 + 8))(v34, v36);
  (*(v46 + 8))(v37, v47);
  sub_1C4423A0C(v21, &qword_1EC0BD2C8, &unk_1C4F4A7C0);
  MEMORY[0x1C693AE50](v33, v35);
  v38 = sub_1C4401CBC(&qword_1EDDF0020, &qword_1EC0C5110, &qword_1C4F5FC90);
  MEMORY[0x1C693AE20](v26, v22, v38);
  v39 = *(v44 + 8);
  v39(v26, v22);
  sub_1C4EFC148();
  return (v39)(v28, v22);
}

uint64_t sub_1C4C6A51C@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v30 - v3;
  v5 = sub_1C4EFCB28();
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&qword_1EC0BD2E0, &qword_1C4F4A7D0);
  v10 = *(v9 - 8);
  v31 = v9;
  v32 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  v14 = sub_1C4EFC188();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v30 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v30 - v23;
  sub_1C4EFCB58();
  v25 = sub_1C4C6AB3C(&qword_1EDDFA260, MEMORY[0x1E69E8250]);
  MEMORY[0x1C693AE00](v22, v14, v25);
  v26 = *(v15 + 8);
  v26(v22, v14);
  sub_1C4EFCB48();
  MEMORY[0x1C693AE00](v19, v14, v25);
  v26(v19, v14);
  v27 = v13;
  sub_1C4EFC128();
  sub_1C4EFC178();
  sub_1C4401CBC(&qword_1EDDFA258, &qword_1EC0BD2E0, &qword_1C4F4A7D0);
  v28 = v31;
  sub_1C4EFCAD8();
  (*(v33 + 8))(v8, v34);
  MEMORY[0x1C693AEC0](v4, MEMORY[0x1E69E67B0]);
  (*(v32 + 8))(v27, v28);
  v26(v22, v14);
  return (v26)(v24, v14);
}

unint64_t sub_1C4C6A8F4()
{
  result = qword_1EDDFB7D8;
  if (!qword_1EDDFB7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB7D8);
  }

  return result;
}

_BYTE *_s7SQLViewO12ViewSQLPathsV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4C6AA38()
{
  result = qword_1EC0C5128;
  if (!qword_1EC0C5128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5128);
  }

  return result;
}

unint64_t sub_1C4C6AA90()
{
  result = qword_1EDDFD988;
  if (!qword_1EDDFD988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD988);
  }

  return result;
}

unint64_t sub_1C4C6AAE8()
{
  result = qword_1EDDFD990;
  if (!qword_1EDDFD990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD990);
  }

  return result;
}

uint64_t sub_1C4C6AB3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s11StatusStoreVMa()
{
  result = qword_1EDDF6A70;
  if (!qword_1EDDF6A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1C4C6ABF8(char a1)
{
  v4 = type metadata accessor for Configuration();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C44098F0(v1, v7);
  v8 = sub_1C4C6ACDC(a1);
  v10 = v9;
  v11 = type metadata accessor for KeyValueStore();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  result = KeyValueStore.init(config:domain:)(v7, v8, v10);
  if (!v2)
  {
    KeyValueStore.clear()();
  }

  return result;
}

unint64_t sub_1C4C6ACDC(char a1)
{
  v1 = (a1 & 1) == 0;
  if (a1)
  {
    v2 = 0x73756F6976657270;
  }

  else
  {
    v2 = 0x746E6572727563;
  }

  if (v1)
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  MEMORY[0x1C6940010](v2, v3);

  return 0xD000000000000016;
}

uint64_t sub_1C4C6AD68@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  a1[3] = &type metadata for SubgraphDatabaseTable;
  a1[4] = &off_1F43FE900;
  v3 = swift_allocObject();
  *a1 = v3;
  memcpy((v3 + 16), v1, 0x60uLL);
  return sub_1C4AF9A80(__dst, &v5);
}

uint64_t sub_1C4C6AE10(uint64_t a1)
{
  v3 = *(a1 + 64);
  if (sub_1C4428DA0())
  {
    sub_1C4431590(0, (v3 & 0xC000000000000001) == 0);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1C6940F90](0, v3);
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v6 = *(*(v1 + 32) + 16);
    MEMORY[0x1EEE9AC00](v5);

    sub_1C49A56B8();
    v8 = v7;
    v10 = v9;
    v12 = v11;

    sub_1C4D0E5C0();
    if (*(*(a1 + 56) + 80) == 1)
    {
    }

    else
    {
      v19 = sub_1C4F02938();

      if ((v19 & 1) == 0)
      {
      }
    }

    if (v12)
    {
      v20 = 0;
      v21 = 0xF000000000000000;
    }

    else
    {
      v20 = sub_1C44F95AC(v8, v10);
      v21 = v22;
    }

    sub_1C4CCDA9C(v20, v21);
    sub_1C441DFEC(v20, v21);
  }

  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v13 = sub_1C4F00978();
  sub_1C442B738(v13, qword_1EDDFECB8);
  v14 = sub_1C4F00968();
  v15 = sub_1C4F01CD8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1C43F8000, v14, v15, "Expected at least one KG config", v16, 2u);
    MEMORY[0x1C6942830](v16, -1, -1);
  }

  sub_1C446D0DC();
  swift_allocError();
  *v17 = 0xD00000000000001FLL;
  *(v17 + 8) = 0x80000001C4FB9EF0;
  *(v17 + 16) = 2;
  return swift_willThrow();
}

void sub_1C4C6B0E0(void *a1@<X1>, uint64_t a2@<X8>)
{
  v26 = 0;
  v5 = a1[15];
  if (v5)
  {
    v7 = a1[19];
    v6 = a1[20];
    v9 = a1[17];
    v8 = a1[18];
    v10 = a1[16];
    v19 = a1[14];
    v20 = v5;
    v21 = v10;
    v22 = v9;
    v23 = v8;
    v24 = v7;
    v25 = v6;
    _s23UpdatedObjectDiffWriterCMa();
    swift_allocObject();
    sub_1C4BC3C1C(v19, v5);

    sub_1C4B8B458();
    if (v2)
    {
      return;
    }

    v12 = v11;

    sub_1C4B8B8EC();
  }

  else
  {
    v12 = 0;
  }

  v13 = memcpy(__dst, a1 + 2, sizeof(__dst));
  MEMORY[0x1EEE9AC00](v13);
  sub_1C4B77B4C();
  if (v2)
  {
  }

  else if (v12)
  {

    sub_1C4B8BB5C();
    v15 = v14;
    v17 = v16;

    *a2 = v15;
    *(a2 + 8) = v17;
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }
}

unint64_t sub_1C4C6B33C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v9 = *(a2 + 64);
  v10 = sub_1C4428DA0();
  v23 = v9 & 0xC000000000000001;
  v11 = v9 & 0xFFFFFFFFFFFFFF8;
  v22 = v9;
  v12 = v9 + 32;
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (*a1 >= v10)
    {
      return v13;
    }

    result = *a1;
    if (v23)
    {
      v15 = MEMORY[0x1C6940F90](result, v22);
      goto LABEL_7;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    if (result >= *(v11 + 16))
    {
      goto LABEL_13;
    }

    v15 = *(v12 + 8 * result);

LABEL_7:
    v16 = *a3;
    *a3 = v15;

    v17 = *a4;
    v18 = *(a5 + 72);
    v24[0] = *(a5 + 56);
    v24[1] = v18;
    v25 = *(a5 + 88);
    v19 = sub_1C4CDFB34(v17, 0, v24, 0, 1);
    v21 = v20;
    v13 = v19;

    *a4 = v21;
    if (*(v13 + 16))
    {
      return v13;
    }

    if (__OFADD__(*a1, 1))
    {
      goto LABEL_14;
    }

    ++*a1;
    *a4 = 0;
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1C4C6B4A0(uint64_t a1)
{
  v3 = *(a1 + 56);
  v4 = *(v3 + 88);
  v5 = *(v3 + 96);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v46 = v6 + 16;
  *(v6 + 24) = 0;
  *(v6 + 32) = 1;
  v7 = *(v3 + 80) == 1;
  v53 = v6;
  v48 = v4;
  if (v7)
  {
    v8 = 0uLL;
    if (v5 >> 60 == 15)
    {
      v47 = v5;
    }

    else
    {
      v9 = sub_1C4401D48();
      sub_1C4431E64(v9, v10);
      v11 = sub_1C4401D48();
      sub_1C44344B8(v11, v12);
      v13 = sub_1C4401D48();
      sub_1C44F9344(v13, v14);
      if (v1)
      {
        v16 = sub_1C4401D48();
        sub_1C441DFEC(v16, v17);
      }

      v47 = v5;
      *(&v8 + 1) = v15;
      v6 = v53;
    }

    *(v6 + 16) = v8;
    *(v6 + 32) = v5 >> 60 == 15;
  }

  else
  {
    v47 = v5;
    sub_1C4431E64(v4, v5);
  }

  v18 = sub_1C4D0E2C0();
  if (v18)
  {
    sub_1C4C6B8B8();
    sub_1C4D0E478();
LABEL_13:

    return sub_1C4407FEC();
  }

  sub_1C4D0E664(v18, v19, v20, v21, v22, v23, v24, v25, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5]);
  if (v26)
  {
    sub_1C4C6AE10(a1);
    goto LABEL_13;
  }

  v52 = *(a1 + 64);
  result = sub_1C4428DA0();
  v45 = v1;
  if (!result)
  {
LABEL_26:
    if (*(v3 + 80) != 1)
    {
      sub_1C444F17C();
      sub_1C4407FEC();
    }

    swift_beginAccess();
    if (*(v53 + 32))
    {
      v41 = 0;
      v42 = 0xF000000000000000;
    }

    else
    {
      v41 = sub_1C44F95AC(*(v53 + 16), *(v53 + 24));
      v42 = v43;
    }

    sub_1C4CCDA9C(v41, v42);
    sub_1C4407FEC();
    sub_1C441DFEC(v41, v42);
  }

  v28 = result;
  if (result >= 1)
  {
    v29 = 0;
    v51 = v52 & 0xC000000000000001;
    v49 = v3;
    do
    {
      if (v51)
      {
        v30 = MEMORY[0x1C6940F90](v29, v52);
      }

      else
      {
        v30 = *(v52 + 8 * v29 + 32);
      }

      if (*(v3 + 32) & 1) != 0 || *(v30 + 32) == 1 && (sub_1C4C149D8())
      {
        v31 = v50;
        v32 = *(v50 + 72);
        v58[0] = *(v50 + 56);
        v58[1] = v32;
        v59 = *(v50 + 88);
        v33 = sub_1C4CDFB34(0, 1, v58, 0, 1);
        v35 = v34;
        v36 = v33;
        memcpy(__dst, (v31 + 16), sizeof(__dst));
        v37 = swift_allocObject();
        v38 = v53;
        v37[2] = v31;
        v37[3] = v38;
        v37[4] = v36;
        v39 = *(__dst[2] + 16);
        MEMORY[0x1EEE9AC00](v37);
        v44[2] = __dst;
        v44[3] = v36;
        v44[4] = sub_1C4C6C700;
        v44[5] = v40;

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C446C37C(sub_1C4C4D56C, v44);

        v3 = v49;
        sub_1C4CDF41C(v35);
      }

      else
      {
        *(v30 + 34) = 1;
      }

      ++v29;
    }

    while (v28 != v29);
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C6B8B8()
{
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  v1 = *(__dst[2] + 16);
  sub_1C4AF9A80(__dst, &v3);

  sub_1C446C37C(sub_1C4C6C720, v0);

  return sub_1C4AF9ADC(__dst);
}

void sub_1C4C6B938(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2[14];
  v6 = a2[15];
  v8 = a2[16];
  v9 = a2[17];
  v11 = a2[18];
  v10 = a2[19];
  v12 = a2[20];
  swift_beginAccess();
  if (v6)
  {
    v26 = *(a3 + 32);
    v24 = *(a3 + 16);
    v25 = *(a3 + 24);
    v30[8] = v7;
    v30[9] = v6;
    v30[10] = v8;
    v30[11] = v9;
    v30[12] = v11;
    v30[13] = v10;
    v30[14] = v12;
    _s23UpdatedObjectDiffWriterCMa();
    swift_allocObject();
    v13 = v7;
    v14 = v6;
    sub_1C4BC3C1C(v13, v6);

    sub_1C4B8B458();
    if (v4)
    {
      return;
    }

    v30[3] = sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
    v30[4] = sub_1C4C6C73C();
    v31 = MEMORY[0x1E69E7CD0];
    v15 = *(a4 + 16);
    v16 = (a4 + 32);

    for (; v15; --v15)
    {
      memcpy(__dst, v16, 0x92uLL);
      v28 = __dst[5];
      sub_1C45E8CE0(__dst, v27);
      v17 = sub_1C4F02858();
      sub_1C44869B4(v27, v17, v18);
      sub_1C45E8D3C(__dst);

      v16 += 152;
    }

    v30[0] = v31;
    sub_1C4B8C0BC();

    sub_1C440962C(v30);

    sub_1C4B8BB5C();
    v20 = v19;
    v22 = v21;

    v6 = v14;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  swift_beginAccess();
  *(a3 + 16) = v20;
  *(a3 + 24) = v22;
  *(a3 + 32) = v6 == 0;
}

void sub_1C4C6BBC8(uint64_t a1, void *a2)
{
  memcpy(__dst, a2 + 2, 0x60uLL);
  sub_1C4AF9A80(__dst, v11);
  sub_1C4D03DB4();
  sub_1C4AF9ADC(__dst);
  if (!v2)
  {
    v4 = a2[15];
    if (v4)
    {
      v6 = a2[19];
      v5 = a2[20];
      v8 = a2[17];
      v7 = a2[18];
      v9 = a2[16];
      v10 = a2[14];
      v11[12] = v10;
      v11[13] = v4;
      v11[14] = v9;
      v11[15] = v8;
      v11[16] = v7;
      v11[17] = v6;
      v11[18] = v5;
      _s23UpdatedObjectDiffWriterCMa();
      v13 = swift_allocObject();
      sub_1C4BC3C1C(v10, v4);

      sub_1C4B8B458();
      sub_1C4B8B8EC();
    }
  }
}

uint64_t sub_1C4C6BD08()
{
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_1C4C6C7A0(__dst);
  return swift_deallocClassInstance();
}

uint64_t sub_1C4C6BD78(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1C4C6BDB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C4C6BE28(uint64_t a1)
{
  sub_1C4C6B4A0(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C4C6BEA0(uint64_t a1)
{
  sub_1C4C6AE10(a1);
  v2 = *(v1 + 8);

  return v2();
}

void sub_1C4C6BF18(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v19 = 0uLL;
  sub_1C44E9220();
  if (!v4)
  {
    v10 = v9;
    v11 = *(a3 + 232);
    if (v11)
    {
      v12 = *(a3 + 224);
      v13 = *(a3 + 250);
      v14 = *(a3 + 248);
      v15 = *(a3 + 240);
      swift_bridgeObjectRetain_n();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4B75EC0();
      v24 = v29;
      v25 = v30;
      __src[0] = v12;
      __src[1] = v11;
      __src[2] = v10;
      LOWORD(__src[3]) = v14 & 0x101;
      BYTE2(__src[3]) = ((v14 | (v13 << 16)) >> 16) & 1;
      *&__src[5] = v29;
      *&__src[7] = v30;
      __src[4] = v15;
      __src[9] = v31;
      __src[10] = 0x7463656A627573;
      __src[11] = 0xE700000000000000;
      *&v19 = v12;
      *(&v19 + 1) = v11;
      v20 = v10;
      v21 = v14 & 1;
      v22 = __PAIR16__(BYTE2(__src[3]), BYTE1(v14) & 1);
      v26 = v31;
      v27 = 0x7463656A627573;
      v23 = v15;
      v28 = 0xE700000000000000;
      sub_1C4AF9A80(__src, &v17);
      sub_1C4AF9ADC(&v19);
      memcpy(a4, __src, 0x60uLL);
    }

    else
    {
      sub_1C450B034();
      swift_allocError();
      *v16 = a1;
      *(v16 + 8) = a2;
      *(v16 + 16) = 0xD000000000000011;
      *(v16 + 24) = 0x80000001C4FBDB00;
      *(v16 + 32) = 0;
      *(v16 + 40) = 0xE000000000000000;
      *(v16 + 48) = v19;
      *(v16 + 64) = 1;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

void sub_1C4C6C108(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1C4C6BF18(a1, a2, a3, v7);
  if (!v4)
  {
    a4[3] = &type metadata for SubgraphDatabaseTable;
    a4[4] = &off_1F43FE900;
    v6 = swift_allocObject();
    *a4 = v6;
    memcpy((v6 + 16), v7, 0x60uLL);
  }
}

void sub_1C4C6C184(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, a2, 0x60uLL);
  sub_1C4EFBFD8();
  if (!v2)
  {
    sub_1C4B76B30();
    v4 = *(a2 + 104);
    if (v4)
    {
      v5 = *(a2 + 96);
      v6 = *(a2 + 128);
      v8 = *(a2 + 112);
      v9 = v6;
      v10 = *(a2 + 144);
      __dst[12] = v5;
      __dst[13] = v4;
      sub_1C4B8C8BC();
    }
  }
}

void sub_1C4C6C248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  sub_1C4C6BF18(a1, a2, a3, v23);
  if (!v7)
  {
    v9 = (a3 + *(_s6ConfigVMa() + 52));
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    v13 = v9[3];
    v14 = v9[4];
    v15 = v9[5];
    v19 = v9[6];
    v20 = v10;
    memcpy(v22, v23, 0x60uLL);
    v22[12] = v10;
    v22[13] = v11;
    v22[14] = v12;
    v22[15] = v13;
    v22[16] = v14;
    v22[17] = v15;
    v22[18] = v19;
    v16 = memcpy(__dst, v22, 0x98uLL);
    v21 = &v19;
    v17 = *(v23[2] + 16);
    MEMORY[0x1EEE9AC00](v16);
    v18[2] = __dst;
    sub_1C4BC3C1C(v20, v11);

    sub_1C446C37C(v25, v18);
    sub_1C4C6C7A0(v22);
  }
}

void sub_1C4C6C384(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  sub_1C4D03DB4();
  if (!v2)
  {
    v4 = *(a2 + 112);
    v7[0] = *(a2 + 96);
    v7[1] = v4;
    v7[2] = *(a2 + 128);
    v8 = *(a2 + 144);
    if (*(&v7[0] + 1))
    {
      v5 = *(a2 + 128);
      v11 = *(a2 + 112);
      v12 = v5;
      v13 = *(a2 + 144);
      v10 = v7[0];
      _s23UpdatedObjectDiffWriterCMa();
      swift_allocObject();
      sub_1C4BE2FBC(v7, v6);

      sub_1C4B8B458();
      sub_1C4B8B8EC();
    }
  }
}

uint64_t sub_1C4C6C4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4C81AA0();
  if (!v4)
  {
    sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
    if (swift_dynamicCast())
    {
      _s21SubgraphViewGeneratorCMa();
      a4 = swift_allocObject();
      memcpy((a4 + 16), __src, 0x98uLL);
    }

    else
    {
      a4 = 0x80000001C4FB83A0;
      sub_1C450B034();
      swift_allocError();
      *v8 = a1;
      *(v8 + 8) = a2;
      *(v8 + 16) = xmmword_1C4F5B670;
      *(v8 + 32) = 0xD000000000000025;
      *(v8 + 40) = 0x80000001C4FB83A0;
      *(v8 + 48) = v10;
      *(v8 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a4;
}

uint64_t sub_1C4C6C610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C6C4F4(a1, a2, a3, *v3);
  v6 = *(v4 + 8);

  return v6(v5);
}

void sub_1C4C6C6BC(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_1C4C6B0E0(*(v1 + 16), a1);
}

unint64_t sub_1C4C6C73C()
{
  result = qword_1EDDFCEA0;
  if (!qword_1EDDFCEA0)
  {
    sub_1C4572308(&qword_1EC0B9178, &qword_1C4F11B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCEA0);
  }

  return result;
}

id sub_1C4C6C820()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v5 = v3;
  v6 = objc_autoreleasePoolPush();
  v7 = objc_opt_self();
  v8 = sub_1C4F01108();
  LOBYTE(v12) = 0;
  v9 = [v7 publisherForStream:v8 device:v5 account:v4 startTime:0 endTime:0 maxEvents:0 lastN:0 reversed:v12];

  objc_autoreleasePoolPop(v6);

  if (!v9)
  {
    sub_1C4F02248();

    MEMORY[0x1C6940010](v1, v2);
    sub_1C4C6D7FC();
    swift_allocError();
    *v10 = 0xD000000000000017;
    *(v10 + 8) = 0x80000001C4FBDB70;
    *(v10 + 16) = 0;
    swift_willThrow();
  }

  return v9;
}

uint64_t sub_1C4C6C988(uint64_t a1, uint64_t a2)
{
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)();

  if (!v2)
  {
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      _s29SyncedStreamTestViewGeneratorCMa();
      result = swift_allocObject();
      *(result + 16) = v8;
      *(result + 24) = v9;
      *(result + 40) = v10;
    }

    else
    {
      sub_1C450B034();
      swift_allocError();
      *v6 = a1;
      *(v6 + 8) = a2;
      *(v6 + 16) = xmmword_1C4F5B670;
      *(v6 + 32) = 0xD000000000000025;
      *(v6 + 40) = 0x80000001C4FB83A0;
      *(v6 + 48) = v7;
      *(v6 + 64) = 0;
      swift_willThrow();
      return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return result;
}

uint64_t sub_1C4C6CACC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_1C4C6C988(a1, a2);
  v6 = *(v3 + 8);

  return v6(v5);
}

void sub_1C4C6CD30(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = objc_autoreleasePoolPush();
  sub_1C4C6CDC0(a1, v3, a2, &v7, &v8);
  objc_autoreleasePoolPop(v6);
}

uint64_t sub_1C4C6CDC0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, void *a4@<X3>, void *a5@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = *(a1 + 136);
  if (v9)
  {
    v10 = [*(a1 + 136) deviceIdentifier];
    v26 = sub_1C4F01138();
    v12 = v11;

    v25 = [v9 platform];
    v13 = [v9 model];
    v14 = sub_1C4F01138();
    v16 = v15;
  }

  else
  {
    v25 = 0;
    v26 = 0x746E6572727563;
    v16 = 0xE700000000000000;
    v14 = 0x6E776F6E6B6E75;
    v12 = 0xE700000000000000;
  }

  v17 = sub_1C4C6C820();
  if (v5)
  {

    *a4 = v5;
  }

  else
  {
    v19 = v17;
    v30 = a2[2];
    v23 = a2[4];
    v24 = a2[3];
    v22 = a2[5];
    v20 = swift_allocObject();
    *(v20 + 16) = v8;
    *(v20 + 24) = a1;
    *(v20 + 32) = v19;
    *(v20 + 40) = a3 & 1;
    *(v20 + 48) = v26;
    *(v20 + 56) = v12;
    *(v20 + 64) = v25;
    *(v20 + 72) = v14;
    *(v20 + 80) = v16;

    v21 = v19;
    sub_1C4BF9FB0(sub_1C4C6D850, v20, v30, v24, v23, v22);

    swift_beginAccess();
    *a5 = *(v8 + 16);
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1C4C6CFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a6)
  {
    v15 = 0;
  }

  else
  {
    sub_1C4CC0AAC();
    v15 = v16;
  }

  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a7;
  v17[5] = a8;
  v17[6] = a9;
  v17[7] = a10;
  v17[8] = a11;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v18 = sub_1C4C6D2DC(a5, v15, sub_1C4C6D890, v17);

  result = swift_unknownObjectRelease();
  if (!v23)
  {
    swift_beginAccess();
    v20 = *(a3 + 16);
    *(a3 + 16) = v18;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C4C6D10C(void *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (![a1 eventBody])
  {
    goto LABEL_11;
  }

  v30 = a7;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {
    swift_unknownObjectRelease();
LABEL_11:
    v27 = 0;
    return v27 & 1;
  }

  v16 = v15;
  sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
  v29 = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C4F13950;
  [a1 timestamp];
  v18 = MEMORY[0x1E69A0168];
  *(v17 + 56) = MEMORY[0x1E69E63B0];
  *(v17 + 64) = v18;
  v19 = MEMORY[0x1E69E6158];
  *(v17 + 32) = v20;
  v21 = MEMORY[0x1E69A0138];
  *(v17 + 96) = v19;
  *(v17 + 104) = v21;
  *(v17 + 72) = a4;
  *(v17 + 80) = a5;
  v22 = MEMORY[0x1E69A0180];
  *(v17 + 136) = MEMORY[0x1E69E6530];
  *(v17 + 144) = v22;
  *(v17 + 112) = a6;
  *(v17 + 176) = v19;
  *(v17 + 184) = v21;
  *(v17 + 152) = v30;
  *(v17 + 160) = a8;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v23 = sub_1C4632064(v16);
  *(v17 + 216) = v19;
  *(v17 + 224) = v21;
  if (v24)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  v26 = 0xE000000000000000;
  if (v24)
  {
    v26 = v24;
  }

  *(v17 + 192) = v25;
  *(v17 + 200) = v26;
  v29(v17);
  if (v8)
  {
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    v27 = 1;
  }

  return v27 & 1;
}

uint64_t sub_1C4C6D2DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C43FBDBC();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = v6 + 16;
  sub_1C43FBDBC();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  v24 = sub_1C4C6D8BC;
  v25 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1C4442530;
  v23 = &unk_1F4406000;
  v10 = _Block_copy(&aBlock);

  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = v8;
  v24 = sub_1C4C6D8C4;
  v25 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1C462BCF4;
  v23 = &unk_1F4406050;
  v12 = _Block_copy(&aBlock);

  v13 = [a1 drivableSinkWithBookmark:a2 completion:v10 shouldContinue:v12];
  _Block_release(v12);
  _Block_release(v10);

  swift_beginAccess();
  v14 = *(v8 + 16);
  if (v14)
  {
    v15 = *(v8 + 16);
    swift_willThrow();
    v16 = v14;
  }

  else
  {
    swift_beginAccess();
    v7 = *(v6 + 16);
    swift_unknownObjectRetain();
  }

  return v7;
}

uint64_t sub_1C4C6D548()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C6D5C8()
{
  sub_1C4C6CB78();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1C4C6D640(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ([a1 state] == 1)
  {
    v8 = [a1 error];
    swift_beginAccess();
    v9 = *(a3 + 16);
    *(a3 + 16) = v8;
  }

  else
  {
    swift_beginAccess();
    v10 = *(a4 + 16);
    *(a4 + 16) = a2;
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
  }
}

uint64_t sub_1C4C6D6F8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRetain();
  if (swift_dynamicCastObjCProtocolConditional())
  {
    v6 = a2();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    sub_1C446D0DC();
    v7 = swift_allocError();
    *v8 = 0xD000000000000029;
    *(v8 + 8) = 0x80000001C4FBDB90;
    *(v8 + 16) = 2;
    swift_willThrow();
    swift_beginAccess();
    v9 = *(a4 + 16);
    *(a4 + 16) = v7;

    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_1C4C6D7FC()
{
  result = qword_1EC0C5140;
  if (!qword_1EC0C5140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5140);
  }

  return result;
}

uint64_t sub_1C4C6D8EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C43FCE64();
  v5 = v4;
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v11, v9);
  return (*(v5 + 32))(a2, v11, a1);
}

uint64_t FeatureProviderChange.isStarting.setter(char a1)
{
  result = type metadata accessor for FeatureProviderChange(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*FeatureProviderChange.isStarting.modify())(void)
{
  v0 = sub_1C4403FC0();
  v1 = *(type metadata accessor for FeatureProviderChange(v0) + 20);
  return nullsub_1;
}

uint64_t FeatureProviderChange.features.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeatureProviderChange(0) + 24));

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t FeatureProviderChange.features.setter()
{
  v2 = sub_1C4403FC0();
  v3 = *(type metadata accessor for FeatureProviderChange(v2) + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t (*FeatureProviderChange.features.modify())(void)
{
  v0 = sub_1C4403FC0();
  v1 = *(type metadata accessor for FeatureProviderChange(v0) + 24);
  return nullsub_1;
}

void static FeatureProviderChange.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1C4EF9C68())
  {
    v4 = type metadata accessor for FeatureProviderChange(0);
    v5 = *(v4 + 20);
    v6 = *(a1 + v5);
    v7 = *(a2 + v5);
    if (v6 == 2)
    {
      if (v7 != 2)
      {
        return;
      }
    }

    else if (v7 == 2 || ((v7 ^ v6) & 1) != 0)
    {
      return;
    }

    v8 = *(v4 + 24);
    v9 = *(a1 + v8);
    v10 = *(a2 + v8);

    sub_1C47C7400();
  }
}

uint64_t FeatureProviderSnapshot.features.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeatureProviderSnapshot(0) + 20));

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4C6DBD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(MEMORY[0x1E69E85A8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v7 = sub_1C4408024(v6);

  return MEMORY[0x1EEE6D8C8](v7);
}

uint64_t sub_1C4C6DC74(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C4C6EBEC;

  return sub_1C4C6DBD4(a1, a2);
}

uint64_t sub_1C4C6DD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x1E69E85D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_1C4C6EBE8;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1C4C6DDF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  sub_1C43FCE64();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C43FCE64();
  v16 = v15;
  v18 = *(v17 + 64);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v24 - v21;
  (*(v6 + 16))(v11, v2, v4, v20);
  sub_1C4F019A8();
  return (*(v16 + 32))(a2, v22, AssociatedTypeWitness);
}

void sub_1C4C6DFD8()
{
  sub_1C4EF9CD8();
  if (v0 <= 0x3F)
  {
    sub_1C4C6E074();
    if (v1 <= 0x3F)
    {
      sub_1C4C6E0C4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C4C6E074()
{
  if (!qword_1EDDFEA48)
  {
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDFEA48);
    }
  }
}

void sub_1C4C6E0C4()
{
  if (!qword_1EC0C51C8)
  {
    sub_1C4572308(&qword_1EC0BA860, &unk_1C4F1EF30);
    v0 = sub_1C4F00FA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0C51C8);
    }
  }
}

void sub_1C4C6E160()
{
  sub_1C4EF9CD8();
  if (v0 <= 0x3F)
  {
    sub_1C4C6E0C4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C4C6E260(void *a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *a1, a1[1]);

  return swift_getWitnessTable();
}

uint64_t sub_1C4C6E30C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C4C6DDF0(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1C4C6E3B4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4C6E3F0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4C6E444(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return sub_1C44157D4(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return sub_1C44157D4(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1C4C6E580(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_1C440BAA8(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C4C6E79C(uint64_t *a1, void (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = a1[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  a2(255, AssociatedTypeWitness, AssociatedConformanceWitness);

  return swift_getWitnessTable();
}

uint64_t sub_1C4C6E844(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(MEMORY[0x1E69E85A8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v7 = sub_1C4408024(v6);

  return MEMORY[0x1EEE6D8C8](v7);
}

uint64_t sub_1C4C6E8E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C4C6EBEC;

  return sub_1C4C6E844(a1, a2);
}

uint64_t sub_1C4C6E98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x1E69E85D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_1C4C6EA60;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1C4C6EA60()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_1C4C6EB70(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4C6EBAC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1C4C6EC08(char a1)
{
  switch(a1)
  {
    case 9:
      sub_1C443F3D8();
      break;
    case 11:
      sub_1C43FE984();
      break;
    default:
      return;
  }
}

uint64_t sub_1C4C6EDBC(char a1)
{
  if (a1)
  {
    return 0x4F64657461647075;
  }

  else
  {
    return 0x6E61684377656976;
  }
}

void sub_1C4C6EE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  (*(a7 + 16))(&v7, a6, a7);
  if (v8)
  {
    v12 = v7;
    v13 = v8;
    v14 = v9;
    v15 = v10;
    v16 = v11;
    _s23UpdatedObjectDiffWriterCMa();
    swift_allocObject();

    sub_1C4B8B458();
  }
}

void sub_1C4C6EF10(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1C4BDA284(a1, a2, a3, __src);
  if (!v4)
  {
    v10[3] = &_s26ContextualEventsViewClientVN;
    v10[4] = &off_1F4401B70;
    v10[0] = swift_allocObject();
    memcpy((v10[0] + 16), __src, 0x50uLL);
    v6 = sub_1C4409678(v10, &_s26ContextualEventsViewClientVN);
    v7 = off_1F4401B78;
    a4[3] = &_s26ContextualEventsViewClientVN;
    a4[4] = v7;
    v8 = sub_1C4422F90(a4);
    (*(off_1F4401B48 + 2))(v8, v6, &_s26ContextualEventsViewClientVN);
    sub_1C440962C(v10);
  }
}

void sub_1C4C6EFF8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a3[4];
  if (v7)
  {
    v9 = a3[3];
    v10 = a3[5];
    sub_1C44E9220();
    if (!v4)
    {
      v12 = v11;
      v19[3] = &_s22UnstructuredViewClientVN;
      v19[4] = &off_1F4406790;
      v13 = swift_allocObject();
      v19[0] = v13;
      v13[2] = v9;
      v13[3] = v7;
      v13[4] = v12;
      v13[5] = v10;
      v14 = sub_1C4409678(v19, &_s22UnstructuredViewClientVN);
      v15 = off_1F4406798;
      a4[3] = &_s22UnstructuredViewClientVN;
      a4[4] = v15;
      v16 = sub_1C4422F90(a4);
      (*(off_1F4406768 + 2))(v16, v14, &_s22UnstructuredViewClientVN);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C440962C(v19);
    }
  }

  else
  {
    sub_1C450B034();
    swift_allocError();
    *v17 = a1;
    *(v17 + 8) = a2;
    *(v17 + 16) = 0xD000000000000015;
    *(v17 + 24) = 0x80000001C4FBE050;
    *(v17 + 32) = 0;
    *(v17 + 40) = 0xE000000000000000;
    *(v17 + 48) = v18;
    *(v17 + 64) = 1;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4C6F188(uint64_t *a1@<X8>)
{
  sub_1C44E9220();
  if (!v1)
  {
    v4 = v3;
    v10[3] = &_s25SportsSchedulesViewClientVN;
    v10[4] = &off_1F4405B00;
    v5 = swift_allocObject();
    v10[0] = v5;
    v5[2] = 0x6870617267;
    v5[3] = 0xE500000000000000;
    v6 = MEMORY[0x1E69E7CC0];
    v5[4] = v4;
    v5[5] = v6;
    v7 = sub_1C4409678(v10, &_s25SportsSchedulesViewClientVN);
    v8 = off_1F4405B08;
    a1[3] = &_s25SportsSchedulesViewClientVN;
    a1[4] = v8;
    v9 = sub_1C4422F90(a1);
    (*(off_1F4405AD8 + 2))(v9, v7, &_s25SportsSchedulesViewClientVN);
    sub_1C440962C(v10);
  }
}

void sub_1C4C6F288(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = (a3 + *(_s6ConfigVMa() + 56));
  v9 = v8[1];
  if (v9)
  {
    v10 = *v8;
    v11 = *(v8 + 16);
    sub_1C44E9220();
    if (!v4)
    {
      v33 = v12;
      sub_1C456902C(&qword_1EC0BBBF8, &qword_1C4F5C950);
      v13 = (type metadata accessor for ViewDatabaseArtifact.Property() - 8);
      v14 = *(*v13 + 72);
      v30 = v11;
      v15 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1C4F0D480;
      v17 = (v16 + v15);
      v18 = v13[7];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFBDD8();
      *v17 = 1684628589;
      *(v17 + 1) = 0xE400000000000000;
      v19 = v10;
      v20 = &v17[v14 + v13[7]];
      sub_1C4EFBDE8();
      strcpy(&v17[v14], "relevanceScore");
      v17[v14 + 15] = -18;
      v21 = &v17[2 * v14];
      v22 = &v21[v13[7]];
      sub_1C4EFBDD8();
      *v21 = 0x74616E616C707865;
      *(v21 + 1) = 0xEB000000006E6F69;
      v23 = &v17[3 * v14];
      v24 = &v23[v13[7]];
      sub_1C4EFBE08();
      *v23 = 0xD000000000000010;
      *(v23 + 1) = 0x80000001C4FB97A0;
      v32[3] = &_s32EntityRelevanceRankingViewClientVN;
      v32[4] = &off_1F4402C98;
      v25 = swift_allocObject();
      v32[0] = v25;
      *(v25 + 16) = v19;
      *(v25 + 24) = v9;
      *(v25 + 32) = v30;
      *(v25 + 40) = v33;
      *(v25 + 48) = v16;
      v26 = sub_1C4409678(v32, &_s32EntityRelevanceRankingViewClientVN);
      v27 = off_1F4402CA0;
      a4[3] = &_s32EntityRelevanceRankingViewClientVN;
      a4[4] = v27;
      v28 = sub_1C4422F90(a4);
      (*(off_1F4402C70 + 2))(v28, v26, &_s32EntityRelevanceRankingViewClientVN);
      sub_1C440962C(v32);
    }
  }

  else
  {
    sub_1C450B034();
    swift_allocError();
    *v29 = a1;
    *(v29 + 8) = a2;
    *(v29 + 16) = 0xD00000000000001FLL;
    *(v29 + 24) = 0x80000001C4FB9780;
    *(v29 + 32) = 0;
    *(v29 + 40) = 0xE000000000000000;
    *(v29 + 48) = v31;
    *(v29 + 64) = 1;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4C6F594(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = (a3 + *(_s6ConfigVMa() + 60));
  v9 = v8[1];
  if (v9)
  {
    v10 = *v8;
    v11 = v8[2];
    sub_1C44E9220();
    if (!v4)
    {
      v13 = v12;
      v20[3] = &_s32EntityTaggingInferenceViewClientVN;
      v20[4] = &off_1F4402F80;
      v14 = swift_allocObject();
      v20[0] = v14;
      v14[2] = v10;
      v14[3] = v9;
      v14[4] = v13;
      v14[5] = v11;
      v15 = sub_1C4409678(v20, &_s32EntityTaggingInferenceViewClientVN);
      v16 = off_1F4402F88;
      a4[3] = &_s32EntityTaggingInferenceViewClientVN;
      a4[4] = v16;
      v17 = sub_1C4422F90(a4);
      (*(off_1F4402F58 + 2))(v17, v15, &_s32EntityTaggingInferenceViewClientVN);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C440962C(v20);
    }
  }

  else
  {
    sub_1C450B034();
    swift_allocError();
    *v18 = a1;
    *(v18 + 8) = a2;
    *(v18 + 16) = 0xD000000000000016;
    *(v18 + 24) = 0x80000001C4FB99D0;
    *(v18 + 32) = 0;
    *(v18 + 40) = 0xE000000000000000;
    *(v18 + 48) = v19;
    *(v18 + 64) = 1;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4C6F74C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1C4C6BF18(a1, a2, a3, __src);
  if (!v4)
  {
    v7 = (a3 + *(_s6ConfigVMa() + 52));
    v9 = v7[1];
    v21 = *v7;
    v8 = v21;
    v10 = v7[2];
    v11 = v7[3];
    v12 = v7[4];
    v18 = v7[5];
    v17 = v7[6];
    v19[3] = &unk_1F4405DA0;
    v19[4] = &off_1F4405DD8;
    v13 = swift_allocObject();
    v19[0] = v13;
    memcpy(v13 + 2, __src, 0x60uLL);
    v13[14] = v8;
    v13[15] = v9;
    v13[16] = v10;
    v13[17] = v11;
    v13[18] = v12;
    v13[19] = v18;
    v13[20] = v17;
    v14 = sub_1C4409678(v19, &unk_1F4405DA0);
    v15 = off_1F4405DE0;
    a4[3] = &unk_1F4405DA0;
    a4[4] = v15;
    v16 = sub_1C4422F90(a4);
    (*(off_1F4405D98 + 2))(v16, v14, &unk_1F4405DA0);
    sub_1C4BC3C1C(v21, v9);
    sub_1C440962C(v19);
  }
}

void sub_1C4C6F8B0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1C44E9220();
  if (!v4)
  {
    v10 = v9;
    v11 = a3[9];
    if (v11)
    {
      v12 = a3[14];
      v28 = a3[12];
      v36 = a3[11];
      v13 = a3[10];
      v29 = v13;
      v30 = a3[8];
      v14 = MEMORY[0x1E69E7CC0];
      if (v12)
      {
        v14 = v12;
      }

      v31 = v14;
      v33 = a3[8];
      swift_bridgeObjectRetain_n();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](1937008223, 0xE400000000000000);
      v15 = (a3 + *(_s6ConfigVMa() + 52));
      v16 = v15[1];
      v18 = v15[2];
      v17 = v15[3];
      v19 = v15[4];
      v26 = *v15;
      v27 = v15[5];
      v25 = v15[6];
      v35[3] = &_s19CustomRowViewClientVN;
      v35[4] = &off_1F4401D48;
      v20 = swift_allocObject();
      v35[0] = v20;
      v20[2] = v10;
      v20[3] = v30;
      v20[4] = v11;
      v20[5] = v29;
      v20[6] = v36;
      v20[7] = v28;
      v20[8] = v31;
      v20[9] = v33;
      v20[10] = v11;
      v20[11] = v26;
      v20[12] = v16;
      v20[13] = v18;
      v20[14] = v17;
      v20[15] = v19;
      v20[16] = v27;
      v20[17] = v25;
      v21 = sub_1C4409678(v35, &_s19CustomRowViewClientVN);
      v22 = off_1F4401D50;
      a4[3] = &_s19CustomRowViewClientVN;
      a4[4] = v22;
      v23 = sub_1C4422F90(a4);
      (*(off_1F4401D08 + 2))(v23, v21, &_s19CustomRowViewClientVN);
      sub_1C4BC3C1C(v26, v16);
      sub_1C440962C(v35);
    }

    else
    {
      sub_1C450B034();
      swift_allocError();
      *v24 = a1;
      *(v24 + 8) = a2;
      *(v24 + 16) = 0xD000000000000038;
      *(v24 + 24) = 0x80000001C4FB8ED0;
      *(v24 + 32) = v32;
      *(v24 + 48) = v34;
      *(v24 + 64) = 3;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

void sub_1C4C6FB24(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1C44E9220();
  if (!v4)
  {
    v10 = v9;
    v11 = a3[22];
    if (v11)
    {
      v12 = a3[27];
      v29 = a3[25];
      v33 = a3[24];
      v13 = a3[23];
      v30 = v13;
      v31 = a3[21];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      swift_bridgeObjectRetain_n();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](1937008223, 0xE400000000000000);
      v14 = MEMORY[0x1E69E7CC0];
      if (v12)
      {
        v14 = v12;
      }

      v28 = v14;
      v15 = (a3 + *(_s6ConfigVMa() + 52));
      v16 = v15[1];
      v18 = v15[2];
      v17 = v15[3];
      v19 = v15[4];
      v26 = *v15;
      v27 = v15[5];
      v25 = v15[6];
      v32[3] = &_s19ObjectRowViewClientVN;
      v32[4] = &off_1F4404A80;
      v20 = swift_allocObject();
      v32[0] = v20;
      v20[2] = v31;
      v20[3] = v11;
      v20[4] = v10;
      v20[5] = v30;
      v20[6] = v33;
      v20[7] = v29;
      v20[8] = v31;
      v20[9] = v11;
      v20[10] = v28;
      v20[11] = v26;
      v20[12] = v16;
      v20[13] = v18;
      v20[14] = v17;
      v20[15] = v19;
      v20[16] = v27;
      v20[17] = v25;
      v21 = sub_1C4409678(v32, &_s19ObjectRowViewClientVN);
      v22 = off_1F4404A88;
      a4[3] = &_s19ObjectRowViewClientVN;
      a4[4] = v22;
      v23 = sub_1C4422F90(a4);
      (*(off_1F4404A40 + 2))(v23, v21, &_s19ObjectRowViewClientVN);
      sub_1C4BC3C1C(v26, v16);
      sub_1C440962C(v32);
    }

    else
    {
      sub_1C450B034();
      swift_allocError();
      *v24 = a1;
      *(v24 + 8) = a2;
      *(v24 + 16) = 0xD000000000000012;
      *(v24 + 24) = 0x80000001C4FBC0C0;
      *(v24 + 32) = 0;
      *(v24 + 40) = 0xE000000000000000;
      *(v24 + 48) = 0uLL;
      *(v24 + 64) = 1;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

uint64_t sub_1C4C6FD9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C4C1162C(a1, a2, v10);
  if (!v3)
  {
    v6 = v11;
    v7 = v12;
    v8 = sub_1C4409678(v10, v11);
    a3[3] = v6;
    a3[4] = *(v7 + 8);
    v9 = sub_1C4422F90(a3);
    (*(*(v6 - 8) + 16))(v9, v8, v6);
    return sub_1C440962C(v10);
  }

  return result;
}

void sub_1C4C6FE64(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v22 = a6;
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v11 = sub_1C4F00978();
  sub_1C442B738(v11, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = sub_1C4F00968();
  v13 = sub_1C4F01CF8();

  if (os_log_type_enabled(v12, v13))
  {
    v20 = a3;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1C441D828(a1, a2, v21);
    _os_log_impl(&dword_1C43F8000, v12, v13, "Custom truncateArtifact method is not defined for %s. Defaulting to clearArtifact", v14, 0xCu);
    sub_1C440962C(v15);
    MEMORY[0x1C6942830](v15, -1, -1);
    v16 = v14;
    v7 = v6;
    a3 = v20;
    MEMORY[0x1C6942830](v16, -1, -1);
  }

  sub_1C4BDA284(a1, a2, a3, v21);
  if (!v7)
  {
    v18 = *(v21[3] + 16);
    MEMORY[0x1EEE9AC00](v17);
    v19[2] = v21;

    sub_1C446C37C(sub_1C4BDA854, v19);

    sub_1C4AF9C44(v21);
  }
}

void sub_1C4C70090(uint64_t a1, unint64_t a2, void *a3, uint64_t *a4)
{
  v5 = v4;
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v10 = sub_1C4F00978();
  sub_1C442B738(v10, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CF8();

  if (os_log_type_enabled(v11, v12))
  {
    v47 = v4;
    v13 = swift_slowAlloc();
    v40 = a4;
    v14 = a3;
    v15 = swift_slowAlloc();
    *&v43[0] = v15;
    *v13 = 136315138;
    *(v13 + 4) = sub_1C441D828(a1, a2, v43);
    _os_log_impl(&dword_1C43F8000, v11, v12, "Custom truncateArtifact method is not defined for %s. Defaulting to clearArtifact", v13, 0xCu);
    sub_1C440962C(v15);
    v16 = v15;
    a3 = v14;
    MEMORY[0x1C6942830](v16, -1, -1);
    v17 = v13;
    v5 = v47;
    MEMORY[0x1C6942830](v17, -1, -1);
  }

  v44 = 0;
  v45 = 0;
  sub_1C44E9220();
  if (!v5)
  {
    v19 = a3[9];
    if (v19)
    {
      v20 = a3[14];
      v22 = a3[11];
      v21 = a3[12];
      v23 = a3[10];
      v47 = v18;
      v24 = a3[8];
      v25 = MEMORY[0x1E69E7CC0];
      if (v20)
      {
        v25 = v20;
      }

      v40 = v25;
      *&v43[0] = v24;
      *(&v43[0] + 1) = v19;
      swift_bridgeObjectRetain_n();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](1937008223, 0xE400000000000000);
      v42[0] = v47;
      v42[1] = v24;
      v42[2] = v19;
      v42[3] = v23;
      v42[4] = v22;
      v42[5] = v21;
      v42[6] = v40;
      *&v42[7] = v43[0];
      v26 = (a3 + *(_s6ConfigVMa() + 52));
      v27 = *v26;
      v38 = v26[1];
      v39 = v27;
      v28 = v26[2];
      v29 = v26[3];
      v30 = v26[4];
      v31 = v26[5];
      v32 = v26[6];
      memcpy(v43, v42, 0x48uLL);
      *(&v43[4] + 1) = v27;
      *&v43[5] = v38;
      *(&v43[5] + 1) = v28;
      *&v43[6] = v29;
      *(&v43[6] + 1) = v30;
      *&v43[7] = v31;
      *(&v43[7] + 1) = v32;
      v33 = memcpy(__dst, v43, 0x80uLL);
      v40 = &v38;
      v34 = *(v47 + 16);
      MEMORY[0x1EEE9AC00](v33);
      v37[2] = __dst;
      sub_1C4BC3C1C(v39, v38);
      sub_1C46A9810(v42, &v41);

      sub_1C446C37C(sub_1C4BE324C, v37);
      sub_1C4BCDE54(v43);

      sub_1C4AF99F4(v42);
    }

    else
    {
      sub_1C450B034();
      swift_allocError();
      *v35 = a1;
      *(v35 + 8) = a2;
      *(v35 + 16) = 0xD000000000000038;
      *(v35 + 24) = 0x80000001C4FB8ED0;
      v36 = v43[1];
      *(v35 + 32) = v43[0];
      *(v35 + 48) = v36;
      *(v35 + 64) = 3;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

void sub_1C4C70438(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v32 = a5;
  v33 = a7;
  v36 = a1;
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v11 = sub_1C4F00978();
  sub_1C442B738(v11, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = sub_1C4F00968();
  v13 = sub_1C4F01CF8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v34 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1C441D828(v36, a2, &v34);
    _os_log_impl(&dword_1C43F8000, v12, v13, "Custom truncateArtifact method is not defined for %s. Defaulting to clearArtifact", v14, 0xCu);
    sub_1C440962C(v15);
    v16 = v15;
    v8 = v7;
    MEMORY[0x1C6942830](v16, -1, -1);
    MEMORY[0x1C6942830](v14, -1, -1);
  }

  v17 = (a3 + *(_s6ConfigVMa() + 72));
  v18 = v17[1];
  if (v18)
  {
    v19 = *v17;
    v20 = v17[2];
    v21 = v17[3];
    v34 = 0uLL;
    sub_1C44E9220();
    if (!v8)
    {
      v23 = v22;
      v24 = *(*(v22 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
      swift_retain_n();

      v25 = v32;

      sub_1C4C7CF78();
      v27 = v26;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C470336C(v23, v19, v18, v20, v27, v35);

      v29 = *(v35[4] + 16);
      MEMORY[0x1EEE9AC00](v28);
      v31[2] = v35;
      sub_1C446C37C(sub_1C4707C54, v31);
      sub_1C46EEFDC(v35);
    }
  }

  else
  {
    sub_1C450B034();
    swift_allocError();
    *v30 = v36;
    *(v30 + 8) = a2;
    *(v30 + 16) = 0xD00000000000002ALL;
    *(v30 + 24) = 0x80000001C4F936F0;
    *(v30 + 32) = 0;
    *(v30 + 40) = 0xE000000000000000;
    *(v30 + 48) = v34;
    *(v30 + 64) = 1;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4C70774(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v37 = a1;
  v4 = v3;
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CF8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v31 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1C441D828(v37, a2, &v31);
    _os_log_impl(&dword_1C43F8000, v8, v9, "Custom truncateArtifact method is not defined for %s. Defaulting to clearArtifact", v10, 0xCu);
    sub_1C440962C(v11);
    v12 = v11;
    v4 = v3;
    MEMORY[0x1C6942830](v12, -1, -1);
    MEMORY[0x1C6942830](v10, -1, -1);
  }

  v13 = (a3 + *(_s6ConfigVMa() + 56));
  v14 = v13[1];
  if (v14)
  {
    v15 = *v13;
    v16 = *(v13 + 16);
    v31 = 0uLL;
    sub_1C44E9220();
    if (!v4)
    {
      v18 = v17;
      sub_1C456902C(&qword_1EC0BBBF8, &qword_1C4F5C950);
      LODWORD(v37) = v16;
      v19 = (type metadata accessor for ViewDatabaseArtifact.Property() - 8);
      v20 = *(*v19 + 72);
      v21 = (*(*v19 + 80) + 32) & ~*(*v19 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1C4F0D480;
      v23 = (v22 + v21);
      v24 = v19[7];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFBDD8();
      *v23 = 1684628589;
      *(v23 + 1) = 0xE400000000000000;
      v25 = &v23[v20 + v19[7]];
      sub_1C4EFBDE8();
      strcpy(&v23[v20], "relevanceScore");
      v23[v20 + 15] = -18;
      v26 = &v23[2 * v20];
      v27 = &v26[v19[7]];
      sub_1C4EFBDD8();
      *v26 = 0x74616E616C707865;
      *(v26 + 1) = 0xEB000000006E6F69;
      v28 = &v23[3 * v20];
      v29 = &v28[v19[7]];
      sub_1C4EFBE08();
      *v28 = 0xD000000000000010;
      *(v28 + 1) = 0x80000001C4FB97A0;
      v32 = v15;
      v33 = v14;
      v34 = v37;
      v35 = v18;
      v36 = v22;
      sub_1C4CFDDC4();
    }
  }

  else
  {
    sub_1C450B034();
    swift_allocError();
    *v30 = v37;
    *(v30 + 8) = a2;
    *(v30 + 16) = 0xD00000000000001FLL;
    *(v30 + 24) = 0x80000001C4FB9780;
    *(v30 + 32) = 0;
    *(v30 + 40) = 0xE000000000000000;
    *(v30 + 48) = v31;
    *(v30 + 64) = 1;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4C70B34(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v21 = a1;
  v4 = v3;
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CF8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v20 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1C441D828(v21, a2, &v20);
    _os_log_impl(&dword_1C43F8000, v8, v9, "Custom truncateArtifact method is not defined for %s. Defaulting to clearArtifact", v10, 0xCu);
    sub_1C440962C(v11);
    v12 = v11;
    v4 = v3;
    MEMORY[0x1C6942830](v12, -1, -1);
    MEMORY[0x1C6942830](v10, -1, -1);
  }

  v13 = (a3 + *(_s6ConfigVMa() + 60));
  v14 = v13[1];
  if (v14)
  {
    v15 = *v13;
    v16 = v13[2];
    v20 = 0uLL;
    sub_1C44E9220();
    if (!v4)
    {
      v18 = v17;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4CFDCF8(v15, v14, v18, v16);
    }
  }

  else
  {
    sub_1C450B034();
    swift_allocError();
    *v19 = v21;
    *(v19 + 8) = a2;
    *(v19 + 16) = 0xD000000000000016;
    *(v19 + 24) = 0x80000001C4FB99D0;
    *(v19 + 32) = 0;
    *(v19 + 40) = 0xE000000000000000;
    *(v19 + 48) = v20;
    *(v19 + 64) = 1;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4C70DAC(uint64_t a1, unint64_t a2)
{
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1C441D828(a1, a2, &v9);
    _os_log_impl(&dword_1C43F8000, v5, v6, "Custom truncateArtifact method is not defined for %s. Defaulting to clearArtifact", v7, 0xCu);
    sub_1C440962C(v8);
    MEMORY[0x1C6942830](v8, -1, -1);
    MEMORY[0x1C6942830](v7, -1, -1);
  }

  sub_1C4C0C9A8(a1, a2);
}

void sub_1C4C70F64(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v10 = sub_1C4F00978();
  sub_1C442B738(v10, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CF8();

  if (os_log_type_enabled(v11, v12))
  {
    v42 = a4;
    v37 = a3;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1C441D828(a1, a2, v40);
    _os_log_impl(&dword_1C43F8000, v11, v12, "Custom truncateArtifact method is not defined for %s. Defaulting to clearArtifact", v13, 0xCu);
    sub_1C440962C(v14);
    v15 = v14;
    v5 = v4;
    MEMORY[0x1C6942830](v15, -1, -1);
    v16 = v13;
    a3 = v37;
    MEMORY[0x1C6942830](v16, -1, -1);
  }

  *v40 = 0uLL;
  sub_1C44E9220();
  if (!v5)
  {
    v18 = a3[22];
    if (v18)
    {
      v42 = v17;
      v19 = a3[27];
      v20 = a3[25];
      v37 = a3[24];
      v21 = a3[23];
      v22 = a3[21];
      v40[0] = v22;
      v40[1] = v18;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      swift_bridgeObjectRetain_n();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](1937008223, 0xE400000000000000);
      v23 = MEMORY[0x1E69E7CC0];
      if (v19)
      {
        v23 = v19;
      }

      *v39 = v22;
      *&v39[8] = v18;
      *&v39[16] = v42;
      *&v39[24] = v21;
      *&v39[32] = v37;
      *&v39[40] = v20;
      *&v39[48] = *v40;
      *&v39[64] = v23;
      v24 = (a3 + *(_s6ConfigVMa() + 52));
      v25 = *v24;
      v35 = v24[1];
      v36 = v25;
      v26 = v24[2];
      v27 = v24[3];
      v28 = v24[4];
      v29 = v24[5];
      v30 = v24[6];
      memcpy(v40, v39, 0x48uLL);
      v40[9] = v25;
      v40[10] = v35;
      v40[11] = v26;
      v40[12] = v27;
      v40[13] = v28;
      v40[14] = v29;
      v40[15] = v30;
      v31 = memcpy(__dst, v40, 0x80uLL);
      v37 = &v35;
      v32 = *(v42 + 16);
      MEMORY[0x1EEE9AC00](v31);
      v34[2] = __dst;
      sub_1C4BC3C1C(v36, v35);
      sub_1C4A4CA50(v39, &v38);

      sub_1C446C37C(sub_1C4C44B5C, v34);
      sub_1C4C449F8(v40);

      sub_1C4AF9888(v39);
    }

    else
    {
      sub_1C450B034();
      swift_allocError();
      *v33 = a1;
      *(v33 + 8) = a2;
      *(v33 + 16) = 0xD000000000000012;
      *(v33 + 24) = 0x80000001C4FBC0C0;
      *(v33 + 32) = 0;
      *(v33 + 40) = 0xE000000000000000;
      *(v33 + 48) = *v40;
      *(v33 + 64) = 1;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

void sub_1C4C71318()
{
  sub_1C43FE96C();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v7 = v6;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v8 = sub_1C4F00978();
  sub_1C442B738(v8, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CF8();

  if (os_log_type_enabled(v9, v10))
  {
    sub_1C43FECF0();
    v11 = v2;
    v12 = swift_slowAlloc();
    sub_1C43FEC60();
    v13 = swift_slowAlloc();
    v22[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1C441D828(v7, v5, v22);
    _os_log_impl(&dword_1C43F8000, v9, v10, "Custom truncateArtifact method is not defined for %s. Defaulting to clearArtifact", v12, 0xCu);
    sub_1C440962C(v13);
    v3 = v0;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v2 = v11;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v22[0] = 0;
  v22[1] = 0;
  sub_1C44E9220();
  if (!v3)
  {
    v15 = *(v14 + 16);
    MEMORY[0x1EEE9AC00](v14);
    strcpy(v18, "interactions");
    v18[13] = 0;
    v19 = -5120;
    v20 = v16;
    v21 = MEMORY[0x1E69E7CC0];
    sub_1C446C37C(v2, &v17);
  }

  sub_1C43FBC80();
}

void sub_1C4C71504(uint64_t a1, unint64_t a2)
{
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v5 = sub_1C4F00978();
  sub_1C442B738(v5, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v6 = sub_1C4F00968();
  v7 = sub_1C4F01CF8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1C441D828(a1, a2, v12);
    _os_log_impl(&dword_1C43F8000, v6, v7, "Custom truncateArtifact method is not defined for %s. Defaulting to clearArtifact", v8, 0xCu);
    sub_1C440962C(v9);
    MEMORY[0x1C6942830](v9, -1, -1);
    MEMORY[0x1C6942830](v8, -1, -1);
  }

  v12[0] = 0;
  v12[1] = 0;
  sub_1C44E9220();
  if (!v2)
  {
    v11 = *(v10 + 16);
    sub_1C446C37C(sub_1C4B44BB4, 0);
  }
}

void sub_1C4C716C0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v12 = sub_1C4F00978();
  sub_1C442B738(v12, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = sub_1C4F00968();
  v14 = sub_1C4F01CF8();

  if (os_log_type_enabled(v13, v14))
  {
    v34 = v6;
    v15 = swift_slowAlloc();
    LODWORD(v30) = a6;
    v16 = swift_slowAlloc();
    v31[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1C441D828(a1, a2, v31);
    _os_log_impl(&dword_1C43F8000, v13, v14, "Custom truncateArtifact method is not defined for %s. Defaulting to clearArtifact", v15, 0xCu);
    sub_1C440962C(v16);
    MEMORY[0x1C6942830](v16, -1, -1);
    v17 = v15;
    v7 = v34;
    MEMORY[0x1C6942830](v17, -1, -1);
  }

  sub_1C4C6BF18(a1, a2, a3, v32);
  if (!v7)
  {
    v18 = (a3 + *(_s6ConfigVMa() + 52));
    v19 = *v18;
    v29 = v18[1];
    v30 = v19;
    v20 = v18[2];
    v21 = v18[3];
    v22 = v18[4];
    v23 = v18[5];
    v24 = v18[6];
    memcpy(v31, v32, 0x60uLL);
    v31[12] = v19;
    v31[13] = v29;
    v31[14] = v20;
    v31[15] = v21;
    v31[16] = v22;
    v31[17] = v23;
    v31[18] = v24;
    v25 = memcpy(__dst, v31, 0x98uLL);
    v34 = &v28;
    v26 = *(v32[2] + 16);
    MEMORY[0x1EEE9AC00](v25);
    v27[2] = __dst;
    sub_1C4BC3C1C(v30, v29);

    sub_1C446C37C(sub_1C4C6C7E8, v27);
    sub_1C4C6C7A0(v31);
  }
}

void sub_1C4C7195C()
{
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v0 = sub_1C4F00978();
  sub_1C442B738(v0, qword_1EDE2DF70);
  sub_1C43FBD30();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v1 = sub_1C4F00968();
  v2 = sub_1C4F01CF8();

  if (os_log_type_enabled(v1, v2))
  {
    sub_1C43FECF0();
    v3 = swift_slowAlloc();
    sub_1C43FEC60();
    v9 = swift_slowAlloc();
    *v3 = 136315138;
    v4 = sub_1C43FE99C();
    *(v3 + 4) = sub_1C441D828(v4, v5, v6);
    sub_1C4403218(&dword_1C43F8000, v7, v8, "Custom truncateArtifact method is not defined for %s. Defaulting to clearArtifact");
    sub_1C440962C(v9);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }
}

void sub_1C4C71A78(uint64_t a1, unint64_t a2, void *a3)
{
  v20 = a1;
  v4 = v3;
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CF8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v19 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1C441D828(v20, a2, &v19);
    _os_log_impl(&dword_1C43F8000, v8, v9, "Custom truncateArtifact method is not defined for %s. Defaulting to clearArtifact", v10, 0xCu);
    sub_1C440962C(v11);
    v12 = v11;
    v4 = v3;
    MEMORY[0x1C6942830](v12, -1, -1);
    MEMORY[0x1C6942830](v10, -1, -1);
  }

  v13 = a3[4];
  if (v13)
  {
    v14 = a3[3];
    v15 = a3[5];
    v19 = 0uLL;
    sub_1C44E9220();
    if (!v4)
    {
      v17 = v16;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4CFDBF8(v14, v13, v17, v15);
    }
  }

  else
  {
    sub_1C450B034();
    swift_allocError();
    *v18 = v20;
    *(v18 + 8) = a2;
    *(v18 + 16) = 0xD000000000000015;
    *(v18 + 24) = 0x80000001C4FBE050;
    *(v18 + 32) = 0;
    *(v18 + 40) = 0xE000000000000000;
    *(v18 + 48) = v19;
    *(v18 + 64) = 1;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void *sub_1C4C71CD8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v8 = sub_1C4F00978();
  sub_1C442B738(v8, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CF8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = a1;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1C441D828(v11, a2, &v21);
    _os_log_impl(&dword_1C43F8000, v9, v10, "Custom truncateArtifact method is not defined for %s. Defaulting to clearArtifact", v12, 0xCu);
    sub_1C440962C(v13);
    MEMORY[0x1C6942830](v13, -1, -1);
    v14 = v12;
    a1 = v11;
    v4 = v3;
    MEMORY[0x1C6942830](v14, -1, -1);
  }

  result = sub_1C4C7E25C(a1, a2, a3);
  if (!v4)
  {
    v16 = result[2];
    sub_1C4EFC278();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = sub_1C4F00968();
    v18 = sub_1C4F01CF8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1C441D828(a1, a2, &v21);
      _os_log_impl(&dword_1C43F8000, v17, v18, "Clearing VectorDB for %s.", v19, 0xCu);
      sub_1C440962C(v20);
      MEMORY[0x1C6942830](v20, -1, -1);
      MEMORY[0x1C6942830](v19, -1, -1);
    }
  }

  return result;
}

uint64_t sub_1C4C71F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v9 = sub_1C4F00978();
  sub_1C442B738(v9, qword_1EDE2DF70);
  sub_1C43FBD30();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v10 = sub_1C4F00968();
  v11 = sub_1C4F01CF8();

  if (os_log_type_enabled(v10, v11))
  {
    sub_1C43FECF0();
    v12 = swift_slowAlloc();
    sub_1C43FEC60();
    v22 = swift_slowAlloc();
    *v12 = 136315138;
    v13 = sub_1C43FE99C();
    *(v12 + 4) = sub_1C441D828(v13, v14, v15);
    sub_1C4403218(&dword_1C43F8000, v16, v17, "Custom truncateArtifact method is not defined for %s. Defaulting to clearArtifact");
    sub_1C440962C(v22);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v18 = *(a8 + 40);
  v19 = sub_1C43FE99C();
  return v20(v19);
}

void sub_1C4C7211C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C4BDA284(a1, a2, a3, __src);
  if (!v6)
  {
    v42 = &_s26ContextualEventsViewClientVN;
    v43 = &off_1F4401B70;
    v41[0] = swift_allocObject();
    memcpy((v41[0] + 16), __src, 0x50uLL);
    sub_1C442E860(v41, v39);
    sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
    sub_1C456902C(&qword_1EC0C50F8, &qword_1C4F5FBA8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      sub_1C4420C3C(&v36, &qword_1EC0C50D0, &unk_1C4F5FAD0);
LABEL_11:
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F0D130;
      v24 = v42;
      v25 = v43;
      sub_1C4409678(v41, v42);
      (v25[2])(__src, v24, v25);
      v26 = *(&__src[1] + 1);
      v27 = *&__src[2];
      sub_1C4409678(__src, *(&__src[1] + 1));
      *(inited + 32) = (*(v27 + 8))(v26, v27);
      *(inited + 40) = v28;
      sub_1C440962C(__src);
      sub_1C4C74408();
      swift_setDeallocating();
      sub_1C44DEE40();
      goto LABEL_12;
    }

    sub_1C460986C(&v36, __src);
    v13 = _s6ConfigVMa();
    v14 = *(a3 + *(v13 + 48));
    if (v14 != 2)
    {
      v15 = v13;
      if (v14)
      {

        goto LABEL_8;
      }

      v16 = sub_1C4F02938();

      if (v16)
      {
LABEL_8:
        v17 = a3 + *(v15 + 52);
        v18 = *(v17 + 8);
        if (v18)
        {
          v19 = *(v17 + 48);
          v21 = *(v17 + 32);
          v20 = *(v17 + 40);
          v22 = *(v17 + 16);
          v44[0] = *v17;
          v44[1] = v18;
          v45 = v22;
          v46 = v21;
          v47 = v20;
          v48 = v19;
          sub_1C4C76508(a1, a2, __src, a3, v44, a4, a5, a6, sub_1C4C7D498, sub_1C4C7D300, sub_1C4C7D364, v29, v30, v31, v32, v33, v34, v35, v36, *(&v36 + 1), v37, *(&v37 + 1), v38);
          sub_1C440962C(__src);
LABEL_12:
          sub_1C440962C(v41);
          return;
        }
      }
    }

    sub_1C440962C(__src);
    goto LABEL_11;
  }
}

void sub_1C4C7249C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3[4];
  if (!v9)
  {
    sub_1C450B034();
    swift_allocError();
    *v20 = a1;
    *(v20 + 8) = a2;
    *(v20 + 16) = 0xD000000000000015;
    *(v20 + 24) = 0x80000001C4FBE050;
    *(v20 + 32) = 0;
    *(v20 + 40) = 0xE000000000000000;
    *(v20 + 48) = *v45;
    *(v20 + 64) = 1;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return;
  }

  v56 = a6;
  v12 = a3[3];
  v13 = a3[5];
  *v45 = 0uLL;
  sub_1C44E9220();
  if (v6)
  {
    return;
  }

  v15 = v14;
  v49 = &_s22UnstructuredViewClientVN;
  v50 = &off_1F4406790;
  v16 = swift_allocObject();
  v48[0] = v16;
  v16[2] = v12;
  v16[3] = v9;
  v16[4] = v15;
  v16[5] = v13;
  sub_1C442E860(v48, v44);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
  sub_1C456902C(&qword_1EC0C50F8, &qword_1C4F5FBA8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    sub_1C4420C3C(&v41, &qword_1EC0C50D0, &unk_1C4F5FAD0);
LABEL_13:
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    v29 = v49;
    v30 = v50;
    sub_1C4409678(v48, v49);
    (v30[2])(v45, v29, v30);
    v31 = v46;
    v32 = v47;
    sub_1C4409678(v45, v46);
    *(inited + 32) = (*(v32 + 8))(v31, v32);
    *(inited + 40) = v33;
    sub_1C440962C(v45);
    sub_1C4C74408();
    swift_setDeallocating();
    sub_1C44DEE40();
    goto LABEL_14;
  }

  sub_1C460986C(&v41, v45);
  v17 = _s6ConfigVMa();
  v18 = *(a3 + *(v17 + 48));
  if (v18 == 2)
  {
    goto LABEL_12;
  }

  v19 = v17;
  if (v18)
  {

    goto LABEL_10;
  }

  v21 = sub_1C4F02938();

  if ((v21 & 1) == 0)
  {
LABEL_12:
    sub_1C440962C(v45);
    goto LABEL_13;
  }

LABEL_10:
  v22 = a3 + *(v19 + 52);
  v23 = *(v22 + 1);
  if (!v23)
  {
    goto LABEL_12;
  }

  v24 = *(v22 + 6);
  v26 = *(v22 + 4);
  v25 = *(v22 + 5);
  v27 = *(v22 + 1);
  v51[0] = *v22;
  v51[1] = v23;
  v52 = v27;
  v53 = v26;
  v54 = v25;
  v55 = v24;
  sub_1C4C76EE8(a1, a2, v45, a3, v51, a4, a5, v56, sub_1C4C7D498, sub_1C4C7D40C, sub_1C4C7D44C, a4, v35, v36, v37, v38, v39, v40, v41, *(&v41 + 1), v42, *(&v42 + 1), v43);
  sub_1C440962C(v45);
LABEL_14:
  sub_1C440962C(v48);
}

void sub_1C4C728A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = 0uLL;
  sub_1C44E9220();
  if (!v6)
  {
    v14 = v13;
    v48 = &_s25SportsSchedulesViewClientVN;
    v49 = &off_1F4405B00;
    v15 = swift_allocObject();
    v47[0] = v15;
    v15[2] = 0x6870617267;
    v15[3] = 0xE500000000000000;
    v16 = MEMORY[0x1E69E7CC0];
    v15[4] = v14;
    v15[5] = v16;
    sub_1C442E860(v47, v43);
    sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
    sub_1C456902C(&qword_1EC0C50F8, &qword_1C4F5FBA8);
    if (!swift_dynamicCast())
    {
      v41 = 0u;
      v42 = 0u;
      v40 = 0u;
      sub_1C4420C3C(&v40, &qword_1EC0C50D0, &unk_1C4F5FAD0);
LABEL_11:
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F0D130;
      v28 = v48;
      v29 = v49;
      sub_1C4409678(v47, v48);
      (v29[2])(&v44, v28, v29);
      v30 = v45;
      v31 = v46;
      sub_1C4409678(&v44, v45);
      *(inited + 32) = (*(v31 + 8))(v30, v31);
      *(inited + 40) = v32;
      sub_1C440962C(&v44);
      sub_1C4C74408();
      swift_setDeallocating();
      sub_1C44DEE40();
      goto LABEL_12;
    }

    sub_1C460986C(&v40, &v44);
    v17 = _s6ConfigVMa();
    v18 = *(a3 + *(v17 + 48));
    if (v18 != 2)
    {
      v19 = v17;
      if (v18)
      {

        goto LABEL_8;
      }

      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_8:
        v21 = a3 + *(v19 + 52);
        v22 = *(v21 + 8);
        if (v22)
        {
          v23 = *(v21 + 48);
          v25 = *(v21 + 32);
          v24 = *(v21 + 40);
          v26 = *(v21 + 16);
          v50[0] = *v21;
          v50[1] = v22;
          v51 = v26;
          v52 = v25;
          v53 = v24;
          v54 = v23;
          sub_1C4C76EE8(a1, a2, &v44, a3, v50, a4, a5, a6, sub_1C4C7D498, sub_1C4C7D4B0, sub_1C4C7D538, v33, v34, v35, v36, v37, v38, v39, v40, *(&v40 + 1), v41, *(&v41 + 1), v42);
          sub_1C440962C(&v44);
LABEL_12:
          sub_1C440962C(v47);
          return;
        }
      }
    }

    sub_1C440962C(&v44);
    goto LABEL_11;
  }
}

void sub_1C4C72C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = _s6ConfigVMa();
  v14 = a3 + *(v13 + 56);
  v15 = *(v14 + 8);
  if (!v15)
  {
    sub_1C450B034();
    swift_allocError();
    *v31 = a1;
    *(v31 + 8) = a2;
    *(v31 + 16) = 0xD00000000000001FLL;
    *(v31 + 24) = 0x80000001C4FB9780;
    *(v31 + 32) = 0;
    *(v31 + 40) = 0xE000000000000000;
    *(v31 + 48) = v62;
    *(v31 + 64) = 1;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return;
  }

  v16 = v13;
  v54 = *v14;
  v73 = *(v14 + 16);
  v62 = 0uLL;
  sub_1C44E9220();
  if (!v6)
  {
    v48 = a6;
    v49 = a4;
    v51 = a5;
    v52 = a1;
    v53 = a2;
    v50 = v17;
    sub_1C456902C(&qword_1EC0BBBF8, &qword_1C4F5C950);
    v18 = (type metadata accessor for ViewDatabaseArtifact.Property() - 8);
    v19 = *(*v18 + 72);
    v20 = (*(*v18 + 80) + 32) & ~*(*v18 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1C4F0D480;
    v22 = (v21 + v20);
    v23 = v18[7];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFBDD8();
    *v22 = 1684628589;
    *(v22 + 1) = 0xE400000000000000;
    v24 = &v22[v19 + v18[7]];
    sub_1C4EFBDE8();
    strcpy(&v22[v19], "relevanceScore");
    v22[v19 + 15] = -18;
    v25 = &v22[2 * v19];
    v26 = &v25[v18[7]];
    sub_1C4EFBDD8();
    *v25 = 0x74616E616C707865;
    *(v25 + 1) = 0xEB000000006E6F69;
    v27 = &v22[3 * v19];
    v28 = &v27[v18[7]];
    sub_1C4EFBE08();
    *v27 = 0xD000000000000010;
    *(v27 + 1) = 0x80000001C4FB97A0;
    v66 = &_s32EntityRelevanceRankingViewClientVN;
    v67 = &off_1F4402C98;
    v29 = swift_allocObject();
    v65[0] = v29;
    *(v29 + 16) = v54;
    *(v29 + 24) = v15;
    *(v29 + 32) = v73;
    *(v29 + 40) = v50;
    *(v29 + 48) = v21;
    sub_1C442E860(v65, v61);
    sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
    sub_1C456902C(&qword_1EC0C50F8, &qword_1C4F5FBA8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      memset(v60, 0, sizeof(v60));
      sub_1C4420C3C(v60, &qword_1EC0C50D0, &unk_1C4F5FAD0);
      goto LABEL_8;
    }

    sub_1C460986C(v60, &v62);
    v30 = *(a3 + *(v16 + 48));
    if (v30 == 2)
    {
LABEL_5:
      sub_1C440962C(&v62);
LABEL_8:
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F0D130;
      v33 = v66;
      v34 = v67;
      sub_1C4409678(v65, v66);
      (v34[2])(&v62, v33, v34);
      v35 = v63;
      v36 = v64;
      sub_1C4409678(&v62, v63);
      *(inited + 32) = (*(v36 + 8))(v35, v36);
      *(inited + 40) = v37;
      sub_1C440962C(&v62);
      sub_1C4C74408();
      swift_setDeallocating();
      sub_1C44DEE40();
LABEL_9:
      sub_1C440962C(v65);
      return;
    }

    if (v30)
    {

      v39 = v52;
      v38 = v53;
      v40 = v49;
    }

    else
    {
      v41 = sub_1C4F02938();

      v39 = v52;
      v38 = v53;
      v40 = v49;
      if ((v41 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v42 = a3 + *(v16 + 52);
    v43 = *(v42 + 8);
    if (v43)
    {
      v44 = *(v42 + 48);
      v46 = *(v42 + 32);
      v45 = *(v42 + 40);
      v47 = *(v42 + 16);
      v68[0] = *v42;
      v68[1] = v43;
      v69 = v47;
      v70 = v46;
      v71 = v45;
      v72 = v44;
      sub_1C4C76508(v39, v38, &v62, a3, v68, v40, v51, v48, sub_1C4C7D498, sub_1C4C7D300, sub_1C4C7D550, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
      sub_1C440962C(&v62);
      goto LABEL_9;
    }

    goto LABEL_5;
  }
}

void sub_1C4C731D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = _s6ConfigVMa();
  v14 = (a3 + *(v13 + 60));
  v15 = v14[1];
  if (!v15)
  {
    sub_1C450B034();
    swift_allocError();
    *v26 = a1;
    *(v26 + 8) = a2;
    *(v26 + 16) = 0xD000000000000016;
    *(v26 + 24) = 0x80000001C4FB99D0;
    *(v26 + 32) = 0;
    *(v26 + 40) = 0xE000000000000000;
    *(v26 + 48) = v52;
    *(v26 + 64) = 1;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return;
  }

  v16 = v13;
  v41 = a4;
  v63 = a6;
  v17 = *v14;
  v18 = v14[2];
  v52 = 0uLL;
  sub_1C44E9220();
  if (v6)
  {
    return;
  }

  v20 = a1;
  v21 = v19;
  v40 = v20;
  v56 = &_s32EntityTaggingInferenceViewClientVN;
  v57 = &off_1F4402F80;
  v22 = swift_allocObject();
  v55[0] = v22;
  v22[2] = v17;
  v22[3] = v15;
  v22[4] = v21;
  v22[5] = v18;
  sub_1C442E860(v55, v51);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
  sub_1C456902C(&qword_1EC0C50F8, &qword_1C4F5FBA8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    sub_1C4420C3C(&v48, &qword_1EC0C50D0, &unk_1C4F5FAD0);
LABEL_13:
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    v35 = v56;
    v36 = v57;
    sub_1C4409678(v55, v56);
    (v36[2])(&v52, v35, v36);
    v37 = v53;
    v38 = v54;
    sub_1C4409678(&v52, v53);
    *(inited + 32) = (*(v38 + 8))(v37, v38);
    *(inited + 40) = v39;
    sub_1C440962C(&v52);
    sub_1C4C74408();
    swift_setDeallocating();
    sub_1C44DEE40();
    goto LABEL_14;
  }

  sub_1C460986C(&v48, &v52);
  v23 = *(a3 + *(v16 + 48));
  if (v23 == 2)
  {
    goto LABEL_12;
  }

  if (v23)
  {

    v24 = v63;
    v25 = v41;
    goto LABEL_10;
  }

  v27 = sub_1C4F02938();

  v24 = v63;
  v25 = v41;
  if ((v27 & 1) == 0)
  {
LABEL_12:
    sub_1C440962C(&v52);
    goto LABEL_13;
  }

LABEL_10:
  v28 = a3 + *(v16 + 52);
  v29 = *(v28 + 8);
  if (!v29)
  {
    goto LABEL_12;
  }

  v30 = *(v28 + 48);
  v32 = *(v28 + 32);
  v31 = *(v28 + 40);
  v33 = *(v28 + 16);
  v58[0] = *v28;
  v58[1] = v29;
  v59 = v33;
  v60 = v32;
  v61 = v31;
  v62 = v30;
  sub_1C4C76508(v40, a2, &v52, a3, v58, v25, a5, v24, sub_1C4C7D498, sub_1C4C7D300, sub_1C4C7D550, v40, a5, v41, v42, v43, v44, v45, v46, v47, v48, *(&v48 + 1), v49);
  sub_1C440962C(&v52);
LABEL_14:
  sub_1C440962C(v55);
}

void sub_1C4C7360C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C4C6BF18(a1, a2, a3, __src);
  if (!v6)
  {
    v35 = a4;
    v36 = a6;
    v39 = a1;
    v40 = a2;
    v41 = a5;
    v61 = 0;
    v37 = a3;
    v38 = _s6ConfigVMa();
    v13 = (a3 + *(v38 + 52));
    v15 = *v13;
    v14 = v13[1];
    v17 = v13[2];
    v16 = v13[3];
    v18 = v13[4];
    v19 = v13[5];
    v20 = v13[6];
    v53 = &unk_1F4405DA0;
    v54 = &off_1F4405DD8;
    v21 = swift_allocObject();
    v52[0] = v21;
    memcpy(v21 + 2, __src, 0x60uLL);
    v21[14] = v15;
    v21[15] = v14;
    v21[16] = v17;
    v21[17] = v16;
    v21[18] = v18;
    v21[19] = v19;
    v21[20] = v20;
    sub_1C442E860(v52, v48);
    sub_1C4BC3C1C(v15, v14);
    sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
    sub_1C456902C(&qword_1EC0C50F8, &qword_1C4F5FBA8);
    if (!swift_dynamicCast())
    {
      memset(v47, 0, sizeof(v47));
      sub_1C4420C3C(v47, &qword_1EC0C50D0, &unk_1C4F5FAD0);
LABEL_11:
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F0D130;
      v30 = v53;
      v31 = v54;
      sub_1C4409678(v52, v53);
      (v31[2])(&v49, v30, v31);
      v32 = v50;
      v33 = v51;
      sub_1C4409678(&v49, v50);
      *(inited + 32) = (*(v33 + 8))(v32, v33);
      *(inited + 40) = v34;
      sub_1C440962C(&v49);
      sub_1C4C74408();
      swift_setDeallocating();
      sub_1C44DEE40();
      goto LABEL_12;
    }

    sub_1C460986C(v47, &v49);
    v22 = *(v37 + *(v38 + 48));
    if (v22 != 2)
    {
      if (v22)
      {

        goto LABEL_8;
      }

      v23 = sub_1C4F02938();

      if (v23)
      {
LABEL_8:
        v24 = v13[1];
        if (v24)
        {
          v25 = v13[6];
          v27 = v13[4];
          v26 = v13[5];
          v28 = *(v13 + 1);
          v56[0] = *v13;
          v56[1] = v24;
          v57 = v28;
          v58 = v27;
          v59 = v26;
          v60 = v25;
          sub_1C4C76EE8(v39, v40, &v49, v37, v56, v35, v41, v36, sub_1C4C7D498, sub_1C4C7D4B0, sub_1C4C7D538, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
          sub_1C440962C(&v49);
LABEL_12:
          sub_1C440962C(v52);
          return;
        }
      }
    }

    sub_1C440962C(&v49);
    goto LABEL_11;
  }
}

void sub_1C4C739D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v52 = 0;
  v53 = 0;
  sub_1C44E9220();
  if (!v4)
  {
    v62 = v9;
    v10 = a3[9];
    if (!v10)
    {
      sub_1C450B034();
      swift_allocError();
      *v22 = a1;
      *(v22 + 8) = a2;
      *(v22 + 16) = 0xD000000000000038;
      *(v22 + 24) = 0x80000001C4FB8ED0;
      v23 = v50;
      *(v22 + 32) = v49;
      *(v22 + 48) = v23;
      *(v22 + 64) = 3;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      return;
    }

    v37 = a4;
    v45 = a1;
    v46 = a2;
    v11 = a3[12];
    v44 = a3[11];
    v40 = v11;
    v41 = a3[10];
    v42 = a3[8];
    v12 = MEMORY[0x1E69E7CC0];
    if (a3[14])
    {
      v12 = a3[14];
    }

    v43 = v12;
    *&v49 = a3[8];
    *(&v49 + 1) = v10;
    swift_bridgeObjectRetain_n();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](1937008223, 0xE400000000000000);
    v39 = v49;
    v36 = _s6ConfigVMa();
    v13 = (a3 + *(v36 + 52));
    v14 = v13[1];
    v38 = *v13;
    v15 = v13[2];
    v16 = v13[3];
    v18 = v13[4];
    v17 = v13[5];
    v19 = v13[6];
    v55 = &_s19CustomRowViewClientVN;
    v56 = &off_1F4401D48;
    v20 = swift_allocObject();
    v54[0] = v20;
    v20[2] = v62;
    v20[3] = v42;
    v20[4] = v10;
    v20[5] = v41;
    v20[6] = v44;
    v20[7] = v40;
    v20[8] = v43;
    v20[9] = v39;
    v20[10] = v10;
    v20[11] = v38;
    v20[12] = v14;
    v20[13] = v15;
    v20[14] = v16;
    v20[15] = v18;
    v20[16] = v17;
    v20[17] = v19;
    sub_1C442E860(v54, v48);
    sub_1C4BC3C1C(v38, v14);
    sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
    sub_1C456902C(&qword_1EC0C50F8, &qword_1C4F5FBA8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      memset(v47, 0, sizeof(v47));
      sub_1C4420C3C(v47, &qword_1EC0C50D0, &unk_1C4F5FAD0);
LABEL_15:
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F0D130;
      v31 = v55;
      v32 = v56;
      sub_1C4409678(v54, v55);
      (v32[2])(&v49, v31, v32);
      v33 = *(&v50 + 1);
      v34 = v51;
      sub_1C4409678(&v49, *(&v50 + 1));
      *(inited + 32) = (*(v34 + 8))(v33, v34);
      *(inited + 40) = v35;
      sub_1C440962C(&v49);
      sub_1C4C74408();
      swift_setDeallocating();
      sub_1C44DEE40();
      goto LABEL_16;
    }

    sub_1C460986C(v47, &v49);
    v21 = *(a3 + *(v36 + 48));
    if (v21 != 2)
    {
      if (v21)
      {

        goto LABEL_12;
      }

      v24 = sub_1C4F02938();

      if (v24)
      {
LABEL_12:
        v25 = v13[1];
        if (v25)
        {
          v26 = v13[6];
          v28 = v13[4];
          v27 = v13[5];
          v29 = *(v13 + 1);
          v57[0] = *v13;
          v57[1] = v25;
          v58 = v29;
          v59 = v28;
          v60 = v27;
          v61 = v26;
          sub_1C4C76978(v45, v46, &v49, a3, v57, v37);
          sub_1C440962C(&v49);
LABEL_16:
          sub_1C440962C(v54);
          return;
        }
      }
    }

    sub_1C440962C(&v49);
    goto LABEL_15;
  }
}

void sub_1C4C73E8C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = 0uLL;
  sub_1C44E9220();
  if (!v6)
  {
    v14 = v13;
    v15 = a3[22];
    if (!v15)
    {
      sub_1C450B034();
      swift_allocError();
      *v27 = a1;
      *(v27 + 8) = a2;
      *(v27 + 16) = 0xD000000000000012;
      *(v27 + 24) = 0x80000001C4FBC0C0;
      *(v27 + 32) = 0;
      *(v27 + 40) = 0xE000000000000000;
      *(v27 + 48) = v55;
      *(v27 + 64) = 1;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      return;
    }

    v42 = a4;
    v40 = a6;
    v50 = a5;
    v51 = a1;
    v52 = a2;
    v66 = 0;
    v16 = a3[27];
    v17 = a3[25];
    v46 = v17;
    v47 = a3[23];
    v48 = a3[21];
    v49 = a3[24];
    *&v55 = v48;
    *(&v55 + 1) = v15;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_bridgeObjectRetain_n();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](1937008223, 0xE400000000000000);
    v18 = MEMORY[0x1E69E7CC0];
    if (v16)
    {
      v18 = v16;
    }

    v45 = v18;
    v41 = _s6ConfigVMa();
    v19 = (a3 + *(v41 + 52));
    v20 = *v19;
    v21 = v19[2];
    v22 = v19[3];
    v24 = v19[4];
    v23 = v19[5];
    v43 = v19[6];
    v44 = v19[1];
    v59 = &_s19ObjectRowViewClientVN;
    v60 = &off_1F4404A80;
    v25 = swift_allocObject();
    v58[0] = v25;
    v25[2] = v48;
    v25[3] = v15;
    v25[4] = v14;
    v25[5] = v47;
    v25[6] = v49;
    v25[7] = v46;
    v25[8] = v48;
    v25[9] = v15;
    v25[10] = v45;
    v25[11] = v20;
    v25[12] = v44;
    v25[13] = v21;
    v25[14] = v22;
    v25[15] = v24;
    v25[16] = v23;
    v25[17] = v43;
    sub_1C442E860(v58, v54);
    sub_1C4BC3C1C(v20, v44);
    sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
    sub_1C456902C(&qword_1EC0C50F8, &qword_1C4F5FBA8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      memset(v53, 0, sizeof(v53));
      sub_1C4420C3C(v53, &qword_1EC0C50D0, &unk_1C4F5FAD0);
LABEL_15:
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F0D130;
      v35 = v59;
      v36 = v60;
      sub_1C4409678(v58, v59);
      (v36[2])(&v55, v35, v36);
      v37 = v56;
      v38 = v57;
      sub_1C4409678(&v55, v56);
      *(inited + 32) = (*(v38 + 8))(v37, v38);
      *(inited + 40) = v39;
      sub_1C440962C(&v55);
      sub_1C4C74408();
      swift_setDeallocating();
      sub_1C44DEE40();
      goto LABEL_16;
    }

    sub_1C460986C(v53, &v55);
    v26 = *(a3 + *(v41 + 48));
    if (v26 != 2)
    {
      if (v26)
      {

        goto LABEL_12;
      }

      v28 = sub_1C4F02938();

      if (v28)
      {
LABEL_12:
        v29 = v19[1];
        if (v29)
        {
          v30 = v19[6];
          v32 = v19[4];
          v31 = v19[5];
          v33 = *(v19 + 1);
          v61[0] = *v19;
          v61[1] = v29;
          v62 = v33;
          v63 = v32;
          v64 = v31;
          v65 = v30;
          sub_1C4C76EE8(v51, v52, &v55, a3, v61, v42, v50, v40, sub_1C4C7D498, sub_1C4C7D4B0, sub_1C4C7D538, v40, v41, v42, v43, v44, v45, v15, v48, v46, v47, v48, v49);
          sub_1C440962C(&v55);
LABEL_16:
          sub_1C440962C(v58);
          return;
        }
      }
    }

    sub_1C440962C(&v55);
    goto LABEL_15;
  }
}

void sub_1C4C74408()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1C44E9220();
  if (!v0)
  {
    sub_1C4401F14();
    v10 = v9;
    sub_1C4416B8C();
    sub_1C4418704(v6, v10, v11, v12, v13, v14, v15, v16, 0, 0);
    sub_1C441CEF4();

    sub_1C444C3D4();
    MEMORY[0x1EEE9AC00](v17);
    sub_1C441E81C();
    *(v18 - 16) = v8;

    sub_1C4414334(v4, v19, v20, v21, v22, v23, v24, v25, v38, v40);
    sub_1C441CEF4();

    sub_1C444C3D4();
    MEMORY[0x1EEE9AC00](v26);
    sub_1C441E81C();
    *(v27 - 16) = v8;

    sub_1C4414334(v2, v28, v29, v30, v31, v32, v33, v34, v39, v41);
    sub_1C441CEF4();

    v35 = sub_1C4404BB0();
    sub_1C4C77544(v35, v36, v37);
  }

  sub_1C4402144();
  sub_1C43FBC80();
}

void sub_1C4C74574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C44E9220();
  if (!v3)
  {
    sub_1C4401F14();
    v6 = v5;
    sub_1C4416B8C();
    sub_1C4418704(sub_1C4C7CF24, v6, v7, v8, v9, v10, v11, v12, 0, 0);
    sub_1C441CEF4();

    sub_1C444C3D4();
    MEMORY[0x1EEE9AC00](v13);
    sub_1C441E81C();
    *(v14 - 16) = a3;

    sub_1C4414334(sub_1C4C7CF40, v15, v16, v17, v18, v19, v20, v21, v34, v36);

    sub_1C444C3D4();
    MEMORY[0x1EEE9AC00](v22);
    sub_1C441E81C();
    *(v23 - 16) = a3;

    sub_1C4414334(sub_1C4C7CF5C, v24, v25, v26, v27, v28, v29, v30, v35, v37);

    v31 = sub_1C4404BB0();
    sub_1C4C77544(v31, v32, v33);
  }
}

void sub_1C4C74958(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v25 = sub_1C4EFB768();
  v4 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v24 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = *(a2 + 16);
  v11 = (v10 + 8);
  v22 = a2;
  v23 = v9;
  v12 = (a2 + 16 * v9 + 24);
  if (v9)
  {
    while (1)
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v26 = 0;
      v27 = 0xE000000000000000;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F02248();

      v26 = 0xD000000000000011;
      v27 = 0x80000001C4FBDD70;
      MEMORY[0x1C6940010](v13, v14);

      sub_1C4EFB758();
      sub_1C4EFBFF8();
      if (v2)
      {
        break;
      }

      (*v11)(v8, v25);

      v12 -= 2;
      if (!--v9)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v20 = "= ?;\n    INSERT INTO main.";
    v21 = 0x80000001C4FBDD90;
    v15 = v23;
    v16 = (v22 + 40);
    v17 = v24;
    if (!v23)
    {
      return;
    }

    while (1)
    {
      v18 = *(v16 - 1);
      v19 = *v16;
      v26 = 0;
      v27 = 0xE000000000000000;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F02248();

      v26 = 0xD000000000000011;
      v27 = v21;
      MEMORY[0x1C6940010](v18, v19);
      MEMORY[0x1C6940010](0xD000000000000015, v20 | 0x8000000000000000);
      MEMORY[0x1C6940010](v18, v19);

      sub_1C4EFB758();
      sub_1C4EFBFF8();
      if (v2)
      {
        break;
      }

      (*v11)(v17, v25);

      v16 += 2;
      if (!--v15)
      {
        return;
      }
    }

    v8 = v17;
  }

  (*v11)(v8, v25);
}

void sub_1C4C74C28(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v14 = sub_1C4EFB768();
  v4 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  v9 = (v8 + 8);
  v10 = (a2 + 16 * v7 + 24);
  if (v7)
  {
    while (1)
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v15 = 0;
      v16 = 0xE000000000000000;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F02248();

      v15 = 0xD000000000000012;
      v16 = 0x80000001C4FBDD50;
      MEMORY[0x1C6940010](v11, v12);

      sub_1C4EFB758();
      sub_1C4EFBFF8();
      if (v2)
      {
        break;
      }

      (*v9)(v6, v14);

      v10 -= 2;
      if (!--v7)
      {
        return;
      }
    }

    (*v9)(v6, v14);
  }
}

uint64_t sub_1C4C74DDC(uint64_t a1, uint64_t a2, void (**a3)(char *, uint64_t))
{
  v8 = sub_1C4EFB768();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &i - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C46A9F90(a2, a3, 0x7865646E69, 0xE500000000000000);
  if (v3)
  {
    return v4;
  }

  v4 = v13;
  v61 = a2;
  v62 = a3;
  i = v9;
  v58 = v8;
  v59 = v12;
  v64 = a1;
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v19 = 0;
  if (v17)
  {
    while (1)
    {
      v20 = v19;
LABEL_9:
      v21 = (v20 << 10) | (16 * __clz(__rbit64(v17)));
      v22 = (*(v4 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v12 = *(*(v4 + 56) + v21 + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFBF58();
      v17 &= v17 - 1;

      v19 = v20;
      if (!v17)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      (*v62)(v12, v58);

      return v4;
    }

    if (v20 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v20);
    ++v19;
    if (v17)
    {
      goto LABEL_9;
    }
  }

  v25 = sub_1C46A9F90(v61, v62, 0x656C626174, 0xE500000000000000);
  v26 = sub_1C4C7D19C(v25);

  v27 = v26 + 64;
  v28 = 1 << *(v26 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v26 + 64);
  v31 = (v28 + 63) >> 6;

  v33 = 0;
  v60 = v26;
  if (v30)
  {
    while (1)
    {
      v34 = v33;
LABEL_18:
      v35 = (v34 << 10) | (16 * __clz(__rbit64(v30)));
      v36 = *(v26 + 56);
      v37 = (*(v26 + 48) + v35);
      v38 = *v37;
      v39 = v37[1];
      v40 = *(v36 + v35 + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFBF68();
      v30 &= v30 - 1;

      v33 = v34;
      v26 = v60;
      if (!v30)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
LABEL_15:
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v34 >= v31)
    {
      break;
    }

    v30 = *(v27 + 8 * v34);
    ++v33;
    if (v30)
    {
      goto LABEL_18;
    }
  }

  v41 = sub_1C46A9F90(v61, v62, 0x72656767697274, 0xE700000000000000);
  v42 = v41;
  v43 = v41 + 64;
  v44 = 1 << *(v41 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v41 + 64);
  v47 = (v44 + 63) >> 6;
  v62 = (i + 8);
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v48 = 0;
  v61 = v43;
  for (i = v47; v46; v47 = i)
  {
    v49 = v48;
LABEL_29:
    v50 = (v49 << 10) | (16 * __clz(__rbit64(v46)));
    v51 = v42;
    v52 = (*(v42 + 48) + v50);
    v53 = *v52;
    v54 = v52[1];
    v55 = *(*(v42 + 56) + v50 + 8);
    strcpy(v63, "DROP TRIGGER ");
    v63[7] = -4864;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v53, v54);

    v56 = v59;
    sub_1C4EFB758();
    sub_1C4EFBFF8();
    v46 &= v46 - 1;
    (*v62)(v56, v58);

    v48 = v49;
    v43 = v61;
    v42 = v51;
  }

  while (1)
  {
    v49 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v49 >= v47)
    {

      return v4;
    }

    v46 = *(v43 + 8 * v49);
    ++v48;
    if (v46)
    {
      goto LABEL_29;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_1C4C75350()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  sub_1C43FBE94();
  v5 = sub_1C4EFB768();
  v6 = sub_1C43FCDF8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v12 = sub_1C46A9F90(v4, v2, 0x7865646E69, 0xE500000000000000);
  if (v0)
  {
LABEL_16:
    sub_1C4402144();
    sub_1C43FBC80();
    return;
  }

  v13 = v12;
  v59 = v5;
  v60 = v11;
  v15 = v12 + 64;
  v14 = *(v12 + 64);
  v16 = *(v12 + 32);
  sub_1C43FD030();
  sub_1C449DB50();
  v18 = v17 >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v19 = 0;
  if (v4)
  {
    while (1)
    {
      v20 = v19;
LABEL_7:
      sub_1C443DFE8();
      v22 = (v20 << 10) | (16 * v21);
      v23 = (*(v13 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v13 + 56) + v22 + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4440AC8();
      sub_1C4EFBF58();
      if (v24)
      {
        break;
      }

      sub_1C4458594();

      v19 = v20;
    }

LABEL_10:

    goto LABEL_16;
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_25:
      sub_1C440A8E0();
      v58(v11, v59);

      goto LABEL_10;
    }

    if (v20 >= v18)
    {
      break;
    }

    ++v19;
    if (*(v15 + 8 * v20))
    {
      goto LABEL_7;
    }
  }

  sub_1C4440AC8();
  v31 = sub_1C46A9F90(v27, v28, v29, v30);
  v32 = sub_1C4C7D19C(v31);
  sub_1C441CEF4();

  v33 = *(v32 + 64);
  v34 = *(v32 + 32);
  sub_1C43FD030();
  sub_1C449DB50();
  v36 = v35 >> 6;

  v37 = 0;
  v61 = v32;
  while (1)
  {
    v38 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v38 >= v36)
    {
      break;
    }

    ++v37;
    if (*(v32 + 64 + 8 * v38))
    {
      while (1)
      {
        sub_1C443DFE8();
        v40 = *(v32 + 48);
        v41 = *(v32 + 56);
        sub_1C4C7D568((v38 << 10) | (16 * v39));
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4440AC8();
        sub_1C4EFBF68();
        sub_1C4458594();

        v32 = v61;
      }
    }
  }

  sub_1C4440AC8();
  v46 = sub_1C46A9F90(v42, v43, v44, v45);
  v48 = v46 + 64;
  v47 = *(v46 + 64);
  v49 = *(v46 + 32);
  sub_1C43FD030();
  sub_1C449DB50();
  v51 = v50 >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v52 = 0;
  while (1)
  {
    v53 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      break;
    }

    if (v53 >= v51)
    {

      goto LABEL_16;
    }

    ++v52;
    if (*(v48 + 8 * v53))
    {
      while (1)
      {
        sub_1C443DFE8();
        v55 = *(v46 + 48);
        v56 = *(v46 + 56);
        sub_1C4C7D568((v53 << 10) | (16 * v54));
        strcpy(v62, "DROP TRIGGER ");
        v63 = -4864;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        MEMORY[0x1C6940010](v48, v32);

        v11 = v60;
        sub_1C4EFB758();
        sub_1C4440AC8();
        sub_1C4EFBFF8();
        if (v48)
        {
          break;
        }

        sub_1C4458594();
        sub_1C440A8E0();
        v57(v60, v59);

        v32 = v61;
        v48 = v46 + 64;
      }

      goto LABEL_25;
    }
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_1C4C75800(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v73 = a4;
  v75 = a3;
  v76 = a1;
  v79 = sub_1C4EFB768();
  v7 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79);
  v71 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v70 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v70 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v70 - v15;
  v17 = a2 + 64;
  v18 = 1 << *(a2 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a2 + 64);
  v21 = (v18 + 63) >> 6;
  v77 = (v14 + 8);
  v74 = a2;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v23 = 0;
  if (v20)
  {
    while (1)
    {
      v24 = v23;
LABEL_8:
      v25 = (v24 << 10) | (16 * __clz(__rbit64(v20)));
      v26 = *(*(v74 + 48) + v25 + 8);
      v27 = (*(v74 + 56) + v25);
      v28 = *v27;
      v29 = v27[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFB758();
      sub_1C4EFBFF8();
      if (v4)
      {
        break;
      }

      v20 &= v20 - 1;

      result = (*v77)(v16, v79);
      v23 = v24;
      if (!v20)
      {
        goto LABEL_5;
      }
    }

    return (*v77)(v16, v79);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_49;
      }

      if (v24 >= v21)
      {
        break;
      }

      v20 = *(v17 + 8 * v24);
      ++v23;
      if (v20)
      {
        goto LABEL_8;
      }
    }

    v30 = v75 + 64;
    v31 = 1 << *(v75 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v75 + 64);
    v34 = (v31 + 63) >> 6;
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v35 = 0;
    v36 = v70;
    if (v33)
    {
      while (1)
      {
        v37 = v35;
LABEL_18:
        v38 = (v37 << 10) | (16 * __clz(__rbit64(v33)));
        v39 = *(*(v75 + 48) + v38 + 8);
        v40 = (*(v75 + 56) + v38);
        v41 = *v40;
        v42 = v40[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EFB758();
        sub_1C4EFBFF8();
        if (v4)
        {
          break;
        }

        v33 &= v33 - 1;

        result = (*v77)(v36, v79);
        v35 = v37;
        if (!v33)
        {
          goto LABEL_15;
        }
      }

      return (*v77)(v36, v79);
    }

LABEL_15:
    while (1)
    {
      v37 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v37 >= v34)
      {

        v43 = v73 + 64;
        v44 = 1 << *(v73 + 32);
        v45 = -1;
        if (v44 < 64)
        {
          v45 = ~(-1 << v44);
        }

        v46 = v45 & *(v73 + 64);
        v47 = (v44 + 63) >> 6;
        result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v48 = 0;
        if (!v46)
        {
LABEL_25:
          v50 = v72;
          while (1)
          {
            v49 = v48 + 1;
            if (__OFADD__(v48, 1))
            {
              goto LABEL_50;
            }

            if (v49 >= v47)
            {

              v58 = 1 << *(v75 + 32);
              v59 = -1;
              if (v58 < 64)
              {
                v59 = ~(-1 << v58);
              }

              v60 = v59 & *(v75 + 64);
              v61 = (v58 + 63) >> 6;
              v74 = "DataCollectionMetadata.";
              result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v62 = 0;
              if (v60)
              {
                while (1)
                {
                  v63 = v62;
LABEL_40:
                  v64 = (v63 << 10) | (16 * __clz(__rbit64(v60)));
                  v65 = (*(v75 + 48) + v64);
                  v66 = *v65;
                  v67 = v65[1];
                  v68 = *(*(v75 + 56) + v64 + 8);
                  v78[0] = 0;
                  v78[1] = 0xE000000000000000;
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  sub_1C4F02248();

                  strcpy(v78, "INSERT INTO ");
                  BYTE5(v78[1]) = 0;
                  HIWORD(v78[1]) = -5120;
                  MEMORY[0x1C6940010](v66, v67);
                  MEMORY[0x1C6940010](40, 0xE100000000000000);
                  MEMORY[0x1C6940010](v66, v67);

                  MEMORY[0x1C6940010](0xD000000000000014, v74 | 0x8000000000000000);
                  v69 = v71;
                  sub_1C4EFB758();
                  sub_1C4EFBFF8();
                  if (v5)
                  {
                    break;
                  }

                  v60 &= v60 - 1;
                  (*v77)(v69, v79);

                  v62 = v63;
                  if (!v60)
                  {
                    goto LABEL_37;
                  }
                }

                (*v77)(v69, v79);
              }

LABEL_37:
              while (1)
              {
                v63 = v62 + 1;
                if (__OFADD__(v62, 1))
                {
                  goto LABEL_51;
                }

                if (v63 >= v61)
                {
                }

                v60 = *(v30 + 8 * v63);
                ++v62;
                if (v60)
                {
                  goto LABEL_40;
                }
              }
            }

            v46 = *(v43 + 8 * v49);
            ++v48;
            if (v46)
            {
              v74 = v5;
              goto LABEL_30;
            }
          }
        }

        while (1)
        {
          v74 = v5;
          v49 = v48;
          v50 = v72;
LABEL_30:
          v51 = (v49 << 10) | (16 * __clz(__rbit64(v46)));
          v52 = *(*(v73 + 48) + v51 + 8);
          v53 = (*(v73 + 56) + v51);
          v54 = *v53;
          v55 = v53[1];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v56 = v50;
          sub_1C4EFB758();
          v57 = v74;
          sub_1C4EFBFF8();
          if (v57)
          {
            break;
          }

          v46 &= v46 - 1;

          result = (*v77)(v56, v79);
          v48 = v49;
          v5 = 0;
          if (!v46)
          {
            goto LABEL_25;
          }
        }

        return (*v77)(v56, v79);
      }

      v33 = *(v30 + 8 * v37);
      ++v35;
      if (v33)
      {
        goto LABEL_18;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }

  return result;
}

void sub_1C4C75EF8()
{
  sub_1C43FE96C();
  v1 = v0;
  v73 = v2;
  v75 = v4;
  v76 = v3;
  v6 = v5;
  v79 = sub_1C4EFB768();
  v7 = sub_1C43FCDF8(v79);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v70 - v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v70 - v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v70 - v16;
  v18 = *(v6 + 64);
  v19 = *(v6 + 32);
  sub_1C43FD030();
  v22 = v21 & v20;
  v24 = (v23 + 63) >> 6;
  v77 = v25 + 8;
  v74 = v6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v26 = 0;
  if (v22)
  {
    while (1)
    {
      v27 = v26;
LABEL_6:
      sub_1C43FCADC((v27 << 10) | (16 * __clz(__rbit64(v22))));
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFB758();
      sub_1C43FD168();
      sub_1C4EFBFF8();
      if (v0)
      {
        break;
      }

      v22 &= v22 - 1;

      sub_1C440A8E0();
      v28(v17, v79);
      v26 = v27;
      if (!v22)
      {
        goto LABEL_3;
      }
    }

    sub_1C440A8E0();
    v67 = v17;
LABEL_38:
    v66(v67, v79);
LABEL_42:
    sub_1C4402144();
    sub_1C43FBC80();
  }

  else
  {
    while (1)
    {
LABEL_3:
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v27 >= v24)
      {
        break;
      }

      v22 = *(v6 + 64 + 8 * v27);
      ++v26;
      if (v22)
      {
        goto LABEL_6;
      }
    }

    v30 = *(v75 + 64);
    v29 = v75 + 64;
    v31 = *(v75 + 32);
    sub_1C43FD030();
    v34 = v33 & v32;
    v36 = (v35 + 63) >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v37 = 0;
    v38 = v70;
    if (!v34)
    {
      goto LABEL_11;
    }

    do
    {
      v39 = v37;
LABEL_14:
      sub_1C43FCADC((v39 << 10) | (16 * __clz(__rbit64(v34))));
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFB758();
      sub_1C43FD168();
      sub_1C4EFBFF8();
      if (v0)
      {

        sub_1C440A8E0();
        v67 = v38;
        goto LABEL_38;
      }

      v34 &= v34 - 1;

      sub_1C440A8E0();
      v40(v38, v79);
      v37 = v39;
    }

    while (v34);
LABEL_11:
    while (1)
    {
      v39 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v39 >= v36)
      {

        v42 = *(v73 + 64);
        v41 = v73 + 64;
        v43 = *(v73 + 32);
        sub_1C43FD030();
        sub_1C449DB50();
        v45 = v44 >> 6;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v46 = 0;
        if (v39)
        {
          while (1)
          {
            v74 = v1;
            v47 = v46;
            v48 = v72;
LABEL_24:
            sub_1C443DFE8();
            sub_1C43FCADC((v47 << 10) | (16 * v49));
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v50 = v48;
            sub_1C4EFB758();
            sub_1C43FD168();
            v51 = v74;
            sub_1C4EFBFF8();
            if (v51)
            {
              break;
            }

            sub_1C4458594();

            sub_1C440A8E0();
            v52(v50, v79);
            v46 = v47;
            v1 = 0;
          }

          sub_1C440A8E0();
          v68(v50, v79);
          goto LABEL_42;
        }

        v48 = v72;
        while (1)
        {
          v47 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            goto LABEL_45;
          }

          if (v47 >= v45)
          {

            v53 = 1 << *(v75 + 32);
            v54 = -1;
            if (v53 < 64)
            {
              v54 = ~(-1 << v53);
            }

            v55 = v54 & *(v75 + 64);
            v56 = (v53 + 63) >> 6;
            v74 = "DataCollectionMetadata.";
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v57 = 0;
            if (v55)
            {
              while (1)
              {
                v58 = v57;
LABEL_33:
                v59 = (v58 << 10) | (16 * __clz(__rbit64(v55)));
                v60 = (*(v75 + 48) + v59);
                v61 = *v60;
                v62 = v60[1];
                v63 = *(*(v75 + 56) + v59 + 8);
                *&v78 = 0;
                *(&v78 + 1) = 0xE000000000000000;
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                sub_1C4F02248();

                strcpy(&v78, "INSERT INTO ");
                BYTE13(v78) = 0;
                HIWORD(v78) = -5120;
                MEMORY[0x1C6940010](v61, v62);
                MEMORY[0x1C6940010](40, 0xE100000000000000);
                MEMORY[0x1C6940010](v61, v62);

                MEMORY[0x1C6940010](0xD000000000000014, v74 | 0x8000000000000000);
                v64 = v71;
                sub_1C4EFB758();
                sub_1C4EFBFF8();
                if (v1)
                {
                  break;
                }

                v55 &= v55 - 1;
                sub_1C440A8E0();
                v65(v64, v79);

                v57 = v58;
                if (!v55)
                {
                  goto LABEL_30;
                }
              }

              sub_1C440A8E0();
              v69(v64, v79);

LABEL_41:

              goto LABEL_42;
            }

LABEL_30:
            while (1)
            {
              v58 = v57 + 1;
              if (__OFADD__(v57, 1))
              {
                goto LABEL_46;
              }

              if (v58 >= v56)
              {
                goto LABEL_41;
              }

              v55 = *(v29 + 8 * v58);
              ++v57;
              if (v55)
              {
                goto LABEL_33;
              }
            }
          }

          ++v46;
          if (*(v41 + 8 * v47))
          {
            v74 = v1;
            goto LABEL_24;
          }
        }
      }

      v34 = *(v29 + 8 * v39);
      ++v37;
      if (v34)
      {
        goto LABEL_14;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }
}

void sub_1C4C76508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = type metadata accessor for ViewDatabaseArtifact.Property();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  sub_1C43FBCC4();
  v41 = (v40 - v39);
  sub_1C44952B4();
  sub_1C44E9220();
  if (!v23)
  {
    v114 = v42;
    v115 = v37;
    v113 = v27;
    sub_1C44952B4();
    sub_1C44E9220();
    v43 = v35;
    v45 = v44;
    v112 = v43;
    v46 = a21;
    sub_1C4416B8C();
    sub_1C4418704(v46, v45, v47, v48, v49, v50, v51, v52, v104, v105);
    sub_1C441CEF4();

    v108 = v33;
    v109 = v45;
    v110 = v31;
    v111 = v29;
    v107 = a22;
    v53 = v31[4];
    sub_1C4409678(v31, v31[3]);
    v54 = *(v53 + 16);
    v55 = sub_1C4408DF8();
    v56(v55);
    sub_1C440622C(v120);
    v58 = *(v57 + 24);
    v59 = sub_1C4408DF8();
    v61 = v60(v59);
    v62 = v61[2];
    if (v62)
    {
      v106 = 0;
      v119 = MEMORY[0x1E69E7CC0];
      sub_1C44CD9C0();
      v63 = v119;
      v64 = (*(v115 + 80) + 32) & ~*(v115 + 80);
      v105 = v61;
      v65 = v61 + v64;
      v115 = *(v115 + 72);
      v116 = "INSERT INTO main.";
      do
      {
        sub_1C44312C0(v65, v41);
        sub_1C4F02248();

        sub_1C440F050();
        v117 = v66;
        v118 = 0xEB00000000222E65;
        v67 = *v41;
        v68 = v41[1];
        sub_1C44884A4();
        MEMORY[0x1C6940010](0xD000000000000011, v116 | 0x8000000000000000);
        sub_1C44884A4();
        sub_1C441DE98();
        v69 = v117;
        sub_1C43FE990();
        sub_1C44543D8();
        v119 = v63;
        v70 = *(v63 + 16);
        if (v70 >= *(v63 + 24) >> 1)
        {
          sub_1C44CD9C0();
          v63 = v119;
        }

        *(v63 + 16) = v70 + 1;
        v71 = v63 + 16 * v70;
        *(v71 + 32) = v69;
        *(v71 + 40) = 0xEB00000000222E65;
        v65 += v115;
        --v62;
      }

      while (v62);
    }

    else
    {

      v63 = MEMORY[0x1E69E7CC0];
    }

    v72 = v114;
    sub_1C440962C(v120);
    v120[0] = v63;
    v73 = sub_1C43FD168();
    sub_1C456902C(v73, v74);
    sub_1C442E670(&qword_1EDDFCED0);
    v75 = sub_1C44347C0();
    v77 = v76;

    v79 = *(v114 + 16);
    MEMORY[0x1EEE9AC00](v78);
    v80 = v110;
    v81 = v111;
    *(&v104 - 8) = &a10;
    *(&v104 - 7) = v80;
    v82 = v112;
    *(&v104 - 6) = v113;
    *(&v104 - 5) = v81;
    *(&v104 - 4) = v75;
    *(&v104 - 3) = v77;
    v83 = v108;
    *(&v104 - 2) = v82;
    *(&v104 - 1) = v83;

    sub_1C4414334(v107, v84, v85, v86, v87, v88, v89, v90, v104, v105);
    if (&v104 == 80)
    {
      v92 = a23;

      sub_1C440B6C0();
      v93 = v109;
      v95 = sub_1C4C77544(v72, v109, v94);
      v96 = *(v93 + 16);
      MEMORY[0x1EEE9AC00](v95);
      *(&v104 - 4) = &a10;
      *(&v104 - 3) = v80;
      *(&v104 - 2) = v81;

      sub_1C4414334(v92, v97, v98, v99, v100, v101, v102, v103, v104, v105);
      sub_1C441CEF4();
    }

    else
    {

      sub_1C440B6C0();
      sub_1C4C77544(v72, v109, v91);
    }
  }

  sub_1C4402144();
  sub_1C43FBC80();
}