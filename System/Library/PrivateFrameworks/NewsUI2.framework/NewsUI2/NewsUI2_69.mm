uint64_t sub_218E790F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v90 = a5;
  v108 = a4;
  v117 = a3;
  v122 = a1;
  v109 = sub_219BDBD34();
  v94 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v93 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v7 - 8);
  v89 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_219BE16D4();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v85 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v10 - 8);
  v105 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDF4A4();
  v106 = *(v12 - 8);
  v107 = v12;
  MEMORY[0x28223BE20](v12);
  v84 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BDF1E4();
  v103 = *(v14 - 8);
  v104 = v14;
  MEMORY[0x28223BE20](v14);
  v102 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_219BDFCE4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_219BE1444();
  v111 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v110 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953870();
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951F54();
  v120 = v23;
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D51CC0();
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951DB0();
  v31 = v30;
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v121 = &v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E82FA4();
  v35 = v34;
  sub_219BE7594();
  v118 = a2;
  v119 = v35;
  sub_219BE7564();
  sub_219BE5F84();
  v36 = *(v20 + 8);
  v112 = v22;
  v98 = v19;
  v37 = v20 + 8;
  v38 = v120;
  v96 = v37;
  v95 = v36;
  v36(v22, v19);
  sub_219BEB244();

  v39 = *(v24 + 8);
  v97 = v24 + 8;
  v39(v26, v38);
  if ((*(v32 + 48))(v29, 1, v31) == 1)
  {
    return sub_218E728E8(v29, sub_218D51CC0);
  }

  v80 = v39;
  v82 = v32;
  v41 = *(v32 + 32);
  v88 = v31;
  v41(v121, v29, v31);
  v42 = [v117 identifier];
  sub_219BF5414();

  v43 = v110;
  sub_219BE1424();
  sub_218E72884(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v45 = v44;
  v46 = sub_219BDCD44();
  v47 = *(v46 - 8);
  v48 = *(v47 + 72);
  v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v117 = *(v47 + 80);
  v87 = v45;
  v50 = swift_allocObject();
  v115 = xmmword_219C09BA0;
  *(v50 + 16) = xmmword_219C09BA0;
  v51 = *(v47 + 104);
  v116 = *MEMORY[0x277CEAD18];
  v114 = v47 + 104;
  v86 = v51;
  v51(v50 + v49);
  sub_218E7283C(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
  v81 = "Unknown enum case.";
  v52 = v113;
  sub_219BDCCC4();

  (*(v111 + 8))(v43, v52);
  sub_219BE7594();
  v53 = v112;
  sub_219BE7564();
  sub_218E7283C(&qword_280ED5CC8, 255, type metadata accessor for MagazineFeedModel);
  result = sub_219BEB304();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v54 = v99;
  sub_219BDFCD4();
  v95(v53, v98);
  v80(v26, v38);
  v83 = v46;
  v120 = v48;
  v55 = swift_allocObject();
  *(v55 + 16) = v115;
  v56 = v86;
  v86(v55 + v49, v116, v46);
  sub_218E7283C(&unk_280EE8590, 255, MEMORY[0x277D2E058]);
  v57 = v49;
  v58 = v101;
  sub_219BDCCC4();

  (*(v100 + 8))(v54, v58);
  sub_219BE6944();
  v59 = v102;
  sub_219BDF1C4();
  v60 = v83;
  v61 = swift_allocObject();
  *(v61 + 16) = v115;
  v56(v61 + v57, v116, v60);
  sub_218E7283C(&unk_280EE8840, 255, MEMORY[0x277D2D970]);
  v62 = v104;
  sub_219BDCCC4();

  (*(v103 + 8))(v59, v62);
  v63 = v105;
  sub_218E83700(v108, v105, sub_218B59134);
  v65 = v106;
  v64 = v107;
  v66 = (*(v106 + 48))(v63, 1, v107);
  v79 = v57;
  if (v66 == 1)
  {
    sub_218E728E8(v63, sub_218B59134);
  }

  else
  {
    v67 = v84;
    (*(v65 + 32))(v84, v63, v64);
    v68 = swift_allocObject();
    *(v68 + 16) = v115;
    v86(v68 + v57, v116, v60);
    sub_218E7283C(&unk_280EE8790, 255, MEMORY[0x277D2DAD8]);
    sub_219BDCCC4();

    (*(v65 + 8))(v67, v64);
  }

  v69 = v94;
  v70 = v93;
  v71 = v92;
  v72 = v91;
  v73 = v89;
  sub_218E83700(v90, v89, sub_218B58D58);
  if ((*(v72 + 48))(v73, 1, v71) == 1)
  {
    sub_218E728E8(v73, sub_218B58D58);
  }

  else
  {
    v74 = v85;
    (*(v72 + 32))(v85, v73, v71);
    v75 = v79;
    v76 = swift_allocObject();
    *(v76 + 16) = v115;
    v86(v76 + v75, v116, v83);
    sub_218E7283C(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
    sub_219BDCCC4();

    (*(v72 + 8))(v74, v71);
  }

  sub_219BDFEC4();
  sub_219BE75A4();
  sub_218E7283C(&unk_280EE8520, 255, MEMORY[0x277D2E1D0]);
  sub_219BDCC64();
  v77 = *(v69 + 8);
  v78 = v109;
  v77(v70, v109);
  sub_219BE7574();
  sub_219BDCC74();
  v77(v70, v78);
  return (*(v82 + 8))(v121, v88);
}

uint64_t sub_218E7A094(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v91 = a5;
  v95 = a4;
  v101 = a3;
  v104 = a1;
  v6 = sub_219BDBD34();
  v86 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDF8A4();
  v93 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v92 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE09E4();
  v89 = *(v11 - 8);
  v90 = v11;
  MEMORY[0x28223BE20](v11);
  v88 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_219BDF104();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_219BEF9C4();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDFFE4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v82 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_219BDEFE4();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BDFCE4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E82FA4();
  v24 = v23;
  sub_218E7283C(&qword_280ED5CC8, 255, type metadata accessor for MagazineFeedModel);
  v87 = v24;
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    sub_219BDFCD4();
    sub_218E72884(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v70 = v15;
    v94 = v26;
    v27 = sub_219BDCD44();
    v71 = v16;
    v97 = v27;
    v28 = *(v27 - 8);
    v75 = v6;
    v98 = *(v28 + 72);
    v72 = v9;
    v102 = *(v28 + 80);
    v29 = v28;
    v30 = (v102 + 32) & ~v102;
    v31 = swift_allocObject();
    v74 = a2;
    v73 = v8;
    v105 = xmmword_219C09BA0;
    *(v31 + 16) = xmmword_219C09BA0;
    v103 = *MEMORY[0x277CEAD18];
    v100 = *(v29 + 104);
    v100(v31 + v30);
    v69 = v29 + 104;
    v99 = "Unknown enum case.";
    sub_218E7283C(&unk_280EE8590, 255, MEMORY[0x277D2E058]);
    sub_219BDCCC4();

    (*(v20 + 8))(v22, v19);
    v32 = v101;
    v33 = [v101 identifier];
    sub_219BF5414();

    [v32 isPaid];
    v34 = [v32 totalTime];
    sub_219BF5414();

    v35 = v76;
    sub_219BDEFB4();
    v96 = v30;
    v36 = swift_allocObject();
    *(v36 + 16) = v105;
    v37 = v97;
    (v100)(v36 + v30, v103, v97);
    sub_218E7283C(&qword_280EE8900, 255, MEMORY[0x277D2D798]);
    v38 = v78;
    sub_219BDCCC4();

    (*(v77 + 8))(v35, v38);
    v39 = v80;
    v40 = v79;
    v41 = v81;
    (*(v80 + 104))(v79, *MEMORY[0x277D32840], v81);
    v42 = v82;
    v43 = v101;
    sub_219BE02B4();
    (*(v39 + 8))(v40, v41);
    v44 = v96;
    v45 = swift_allocObject();
    *(v45 + 16) = v105;
    v46 = v103;
    v47 = v100;
    (v100)(v45 + v44, v103, v37);
    sub_218E7283C(&unk_280EE84E0, 255, MEMORY[0x277D2E2C0]);
    v48 = v70;
    sub_219BDCCC4();

    (*(v71 + 8))(v42, v48);
    v95 = *(v95 + 88);
    v49 = [v43 sourceChannel];
    v50 = v83;
    sub_219BE01F4();
    swift_unknownObjectRelease();
    v51 = v96;
    v52 = swift_allocObject();
    *(v52 + 16) = v105;
    v53 = v46;
    v54 = v97;
    v47(v52 + v51, v53, v97);
    sub_218E7283C(&unk_280EE8890, 255, MEMORY[0x277D2D8B8]);
    v55 = v85;
    sub_219BDCCC4();

    (*(v84 + 8))(v50, v55);
    v56 = [v101 sourceChannel];
    v57 = v88;
    sub_219BE01E4();
    swift_unknownObjectRelease();
    v58 = v96;
    v59 = swift_allocObject();
    *(v59 + 16) = v105;
    v60 = v54;
    v61 = v100;
    (v100)(v59 + v58, v103, v60);
    sub_218E7283C(&qword_280EE8270, 255, MEMORY[0x277D2E9C0]);
    v62 = v90;
    sub_219BDCCC4();

    (*(v89 + 8))(v57, v62);
    v63 = v92;
    sub_219BDF894();
    v64 = swift_allocObject();
    *(v64 + 16) = v105;
    (v61)(v64 + v58, v103, v97);
    sub_218E7283C(&qword_280EE8640, 255, MEMORY[0x277D2DE40]);
    v65 = v72;
    sub_219BDCCC4();

    (*(v93 + 8))(v63, v65);
    sub_219BE04C4();
    v66 = v73;
    sub_219BE75A4();
    sub_218E7283C(&unk_280EE83D0, 255, MEMORY[0x277D2E570]);
    sub_219BDCC64();
    v67 = *(v86 + 8);
    v68 = v75;
    v67(v66, v75);
    sub_219BE7574();
    sub_219BDCC74();
    return (v67)(v66, v68);
  }

  __break(1u);
  return result;
}

uint64_t sub_218E7ADEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v202 = a6;
  v199 = a5;
  v211 = a4;
  v216 = a3;
  v228 = a1;
  v181 = sub_219BDBD34();
  v180 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v179 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3B80(0);
  MEMORY[0x28223BE20](v8 - 8);
  v176 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_219BDF754();
  v177 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v163 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_219BDBD64();
  v152 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v151 = &v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_219BDFFB4();
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v154 = &v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_219BE1714();
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v148 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_219BE0444();
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v160 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F64(0);
  MEMORY[0x28223BE20](v15 - 8);
  v166 = &v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58CA4();
  v208 = v17;
  v212 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v204 = &v148 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD7A90();
  v207 = v19;
  v206 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v203 = &v148 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F98(0);
  MEMORY[0x28223BE20](v21 - 8);
  v205 = &v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FCC(0);
  v210 = v23;
  v209 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v182 = &v148 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_219BE09E4();
  v172 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v171 = &v148 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_219BDF104();
  v169 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v168 = &v148 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FEC(0);
  MEMORY[0x28223BE20](v27 - 8);
  v198 = &v148 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_219BE0724();
  v200 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v165 = &v148 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_219BE1774();
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v167 = &v148 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v31 - 8);
  v195 = &v148 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_219BE16D4();
  v196 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v164 = &v148 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_219BDF8A4();
  v193 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v192 = &v148 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_219BEFBD4();
  v187 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v186 = &v148 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_219BDF1A4();
  v190 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v189 = &v148 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_219BDFCE4();
  v184 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v183 = &v148 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_219BE0D44();
  v217 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v214 = &v148 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_219BDF0E4();
  v213 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v41 = &v148 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = a2;
  ObjectType = swift_getObjectType();
  sub_219BF67F4();
  sub_218E72884(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v226 = v42;
  v43 = sub_219BDCD44();
  v44 = *(v43 - 8);
  v45 = *(v44 + 80);
  v46 = (v45 + 32) & ~v45;
  v47 = v46 + *(v44 + 72);
  v48 = swift_allocObject();
  v230 = xmmword_219C09BA0;
  *(v48 + 16) = xmmword_219C09BA0;
  v224 = *MEMORY[0x277CEAD18];
  v49 = *(v44 + 104);
  v49(v48 + v46);
  v229 = "Unknown enum case.";
  sub_218E7283C(&qword_280EE88B0, 255, MEMORY[0x277D2D8A8]);
  sub_219BDCCC4();

  (*(v213 + 8))(v41, v39);
  v50 = v214;
  v51 = v46;
  sub_219BF6834();
  v52 = v224;
  v227 = v47;
  v53 = swift_allocObject();
  *(v53 + 16) = v230;
  v225 = v43;
  v221 = v44 + 104;
  v218 = v49;
  (v49)(v53 + v51, v52, v43);
  v54 = sub_218E7283C(&qword_280EE8190, 255, MEMORY[0x277D2ECA0]);
  v55 = v215;
  sub_219BDCCC4();

  v56 = v217[1];
  ++v217;
  v56(v50, v55);
  sub_218B58D38(0);
  v58 = v57;
  v59 = sub_218E7283C(&qword_280E908F0, 255, MEMORY[0x277D33320]);
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v159 = v59;
  v213 = v58;
  v61 = v183;
  sub_219BDFCD4();
  v62 = swift_allocObject();
  v175 = v56;
  *(v62 + 16) = v230;
  v223 = v45;
  v174 = v54;
  v220 = (v45 + 32) & ~v45;
  v63 = v218;
  (v218)(v62 + v51, v52, v225);
  sub_218E7283C(&unk_280EE8590, 255, MEMORY[0x277D2E058]);
  v64 = v185;
  sub_219BDCCC4();

  (*(v184 + 8))(v61, v64);
  v65 = v187;
  v66 = v186;
  v67 = v188;
  (*(v187 + 104))(v186, *MEMORY[0x277D32930], v188);
  v68 = v189;
  sub_219BE02C4();
  (*(v65 + 8))(v66, v67);
  v69 = swift_allocObject();
  *(v69 + 16) = v230;
  v70 = v224;
  (v63)(v69 + v51, v224, v225);
  sub_218E7283C(&unk_280EE8850, 255, MEMORY[0x277D2D950]);
  v71 = v191;
  sub_219BDCCC4();

  (*(v190 + 8))(v68, v71);
  v72 = v214;
  sub_219BF6834();
  v73 = swift_allocObject();
  *(v73 + 16) = v230;
  v74 = v220;
  v75 = v225;
  (v63)(v73 + v220, v70, v225);
  v76 = v215;
  sub_219BDCCC4();

  v77 = v76;
  v78 = v74;
  v79 = v75;
  v80 = v70;
  v175(v72, v77);
  v81 = v192;
  sub_219BDF894();
  v82 = swift_allocObject();
  *(v82 + 16) = v230;
  (v63)(v82 + v78, v80, v75);
  sub_218E7283C(&qword_280EE8640, 255, MEMORY[0x277D2DE40]);
  v83 = v194;
  sub_219BDCCC4();

  (*(v193 + 8))(v81, v83);
  v84 = v195;
  sub_218E83700(v202, v195, sub_218B58D58);
  v85 = v196;
  v86 = v197;
  if ((*(v196 + 48))(v84, 1, v197) == 1)
  {
    v87 = v79;
    sub_218E728E8(v84, sub_218B58D58);
  }

  else
  {
    v88 = v164;
    (*(v85 + 32))(v164, v84, v86);
    v89 = swift_allocObject();
    *(v89 + 16) = v230;
    v90 = v89 + v78;
    v87 = v79;
    (v218)(v90, v224, v79);
    sub_218E7283C(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
    sub_219BDCCC4();

    (*(v85 + 8))(v88, v86);
  }

  v91 = v201;
  v92 = v200;
  v93 = v222;
  v94 = [v222 scoreProfile];
  if (v94)
  {
    v95 = v94;
    if ([v94 hasShadowScores])
    {
      [v95 shadowTabiScore];
      [v95 shadowAgedPersonalizationScore];
      sub_219BE1764();
      v96 = swift_allocObject();
      *(v96 + 16) = v230;
      (v218)(v96 + v220, v224, v87);
      sub_218E7283C(&unk_280EE7F40, 255, MEMORY[0x277D2F8F0]);
      v97 = v158;
      sub_219BDCCC4();

      (*(v157 + 8))(v167, v97);
    }

    else
    {
    }
  }

  v98 = v198;
  sub_219BF6824();
  if ((*(v92 + 48))(v98, 1, v91) == 1)
  {
    sub_218E728E8(v98, sub_218B58FEC);
  }

  else
  {
    v99 = v91;
    v100 = v165;
    (*(v92 + 32))(v165, v98, v99);
    v101 = swift_allocObject();
    *(v101 + 16) = v230;
    (v218)(v101 + v220, v224, v225);
    sub_218E7283C(&unk_27CC0DC50, 255, MEMORY[0x277D2E738]);
    sub_219BDCCC4();

    (*(v92 + 8))(v100, v99);
  }

  v102 = v212;
  v103 = [v93 sourceChannel];
  if (v103)
  {
    v104 = v168;
    v217 = v103;
    sub_219BE01F4();
    v105 = swift_allocObject();
    *(v105 + 16) = v230;
    v106 = v220;
    v107 = v218;
    (v218)(v105 + v220, v224, v225);
    sub_218E7283C(&unk_280EE8890, 255, MEMORY[0x277D2D8B8]);
    v108 = v170;
    sub_219BDCCC4();

    (*(v169 + 8))(v104, v108);
    v109 = v171;
    sub_219BE01E4();
    v110 = swift_allocObject();
    *(v110 + 16) = v230;
    (v107)(v110 + v106, v224, v225);
    sub_218E7283C(&qword_280EE8270, 255, MEMORY[0x277D2E9C0]);
    v111 = v173;
    sub_219BDCCC4();
    swift_unknownObjectRelease();

    v112 = v109;
    v102 = v212;
    (*(v172 + 8))(v112, v111);
  }

  v113 = v203;
  sub_219BE7594();
  v114 = v204;
  sub_219BE7564();
  v115 = v208;
  sub_219BE5F84();
  (*(v102 + 8))(v114, v115);
  v116 = v205;
  v117 = v207;
  sub_219BEB244();
  v118 = v116;

  (*(v206 + 8))(v113, v117);
  v119 = v209;
  v120 = v116;
  v121 = v210;
  if ((*(v209 + 48))(v120, 1, v210) == 1)
  {
    sub_218E728E8(v118, sub_218B58F98);
    v122 = v218;
    goto LABEL_20;
  }

  (*(v119 + 32))(v182, v118, v121);
  v123 = v166;
  sub_219BE7564();
  (*(v102 + 56))(v123, 0, 1, v115);
  v124 = sub_219BE6A34();
  result = sub_218E728E8(v123, sub_218B58F64);
  if (v124 < 0xFFFFFFFF80000000)
  {
    goto LABEL_29;
  }

  if (v124 > 0x7FFFFFFF)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v125 = v160;
  sub_219BE0434();
  v126 = swift_allocObject();
  *(v126 + 16) = v230;
  v122 = v218;
  (v218)(v126 + v220, v224, v225);
  sub_218E7283C(&unk_280EE8400, 255, MEMORY[0x277D2E530]);
  v127 = v162;
  sub_219BDCCC4();

  (*(v161 + 8))(v125, v127);
  (*(v119 + 8))(v182, v121);
LABEL_20:
  v128 = v222;
  if ([v222 respondsToSelector_])
  {
    v129 = [v128 parentIssue];
    if (v129)
    {
      v130 = v148;
      v217 = v129;
      sub_21934C4BC();
      v131 = swift_allocObject();
      *(v131 + 16) = v230;
      v132 = v220;
      (v122)(v131 + v220, v224, v225);
      sub_218E7283C(&unk_280EE7F60, 255, MEMORY[0x277D2F890]);
      v133 = v150;
      sub_219BDCCC4();

      (*(v149 + 8))(v130, v133);
      v134 = v151;
      sub_219BDBD54();
      sub_219BDBD44();
      (*(v152 + 8))(v134, v153);
      v135 = v154;
      sub_219BDFFA4();
      v136 = swift_allocObject();
      *(v136 + 16) = v230;
      (v122)(v136 + v132, v224, v225);
      sub_218E7283C(&unk_280EE84F0, 255, MEMORY[0x277D2E290]);
      v137 = v156;
      sub_219BDCCC4();

      (*(v155 + 8))(v135, v137);
    }
  }

  v138 = v176;
  sub_219BF6804();
  v139 = v177;
  v140 = v178;
  v141 = (*(v177 + 48))(v138, 1, v178);
  v142 = v220;
  if (v141 == 1)
  {
    sub_218E728E8(v138, sub_218BD3B80);
  }

  else
  {
    v143 = v163;
    (*(v139 + 32))(v163, v138, v140);
    v144 = swift_allocObject();
    *(v144 + 16) = v230;
    (v122)(v144 + v142, v224, v225);
    sub_218E7283C(&unk_280EE86A0, 255, MEMORY[0x277D2DD28]);
    sub_219BDCCC4();

    (*(v139 + 8))(v143, v140);
  }

  sub_219BE0834();
  v145 = v179;
  sub_219BE75A4();
  sub_218E7283C(&qword_280EE82C0, 255, MEMORY[0x277D2E858]);
  sub_219BDCC64();
  v146 = *(v180 + 8);
  v147 = v181;
  v146(v145, v181);
  sub_219BE7574();
  v231[3] = sub_219BDF4D4();
  __swift_allocate_boxed_opaque_existential_1(v231);
  swift_unknownObjectRetain();
  sub_219BDF4C4();
  sub_219BDCC84();
  v146(v145, v147);
  return sub_218806FD0(v231);
}

uint64_t sub_218E7CFFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v98 = a8;
  v91 = a7;
  v114 = a6;
  v87 = a4;
  v124 = a1;
  v104 = sub_219BDBD34();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v11 - 8);
  v99 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_219BE16D4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v80 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_219BDF8A4();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_219BE09E4();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_219BDF104();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_219BDF1A4();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_219BDFCE4();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BDBD64();
  v108 = *(v19 - 8);
  v109 = v19;
  MEMORY[0x28223BE20](v19);
  v107 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BDFFB4();
  v22 = *(v21 - 8);
  v110 = v21;
  v111 = v22;
  MEMORY[0x28223BE20](v21);
  v106 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BE1714();
  v105 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = a2;
  sub_21934C4BC();
  sub_218E72884(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v28 = v27;
  v29 = sub_219BDCD44();
  v30 = *(v29 - 8);
  v31 = *(v30 + 80);
  v32 = (v31 + 32) & ~v31;
  v118 = v32 + *(v30 + 72);
  v33 = swift_allocObject();
  v123 = xmmword_219C09BA0;
  *(v33 + 16) = xmmword_219C09BA0;
  v122 = *MEMORY[0x277CEAD18];
  v34 = *(v30 + 104);
  v34(v33 + v32);
  v117 = "Unknown enum case.";
  sub_218E7283C(&unk_280EE7F60, 255, MEMORY[0x277D2F890]);
  sub_219BDCCC4();

  v35 = v26;
  v36 = v28;
  v37 = v30 + 104;
  (*(v105 + 8))(v35, v24);
  v38 = v107;
  sub_219BDBD54();
  sub_219BDBD44();
  (*(v108 + 8))(v38, v109);
  v39 = v106;
  sub_219BDFFA4();
  v115 = v31;
  v119 = v36;
  v40 = swift_allocObject();
  *(v40 + 16) = v123;
  v112 = v32;
  v120 = v29;
  v121 = v37;
  v41 = v29;
  v42 = v34;
  (v34)(v40 + v32, v122, v41);
  sub_218E7283C(&unk_280EE84F0, 255, MEMORY[0x277D2E290]);
  v43 = v110;
  sub_219BDCCC4();

  (*(v111 + 8))(v39, v43);
  sub_218B58D38(0);
  v45 = v44;
  sub_218E7283C(&qword_280E908F0, 255, MEMORY[0x277D33320]);
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v110 = a9;
  v111 = v45;
  v47 = v81;
  sub_219BDFCD4();
  v48 = swift_allocObject();
  *(v48 + 16) = v123;
  v49 = v112;
  v50 = v122;
  v116 = v42;
  (v42)(v48 + v112, v122, v120);
  sub_218E7283C(&unk_280EE8590, 255, MEMORY[0x277D2E058]);
  v51 = v83;
  sub_219BDCCC4();

  (*(v82 + 8))(v47, v51);
  v52 = v84;
  sub_219BF6AC4();
  v53 = swift_allocObject();
  *(v53 + 16) = v123;
  v54 = v120;
  v116(v53 + v49, v50, v120);
  sub_218E7283C(&unk_280EE8850, 255, MEMORY[0x277D2D950]);
  v55 = v86;
  sub_219BDCCC4();

  (*(v85 + 8))(v52, v55);
  v109 = *(v91 + 88);
  v56 = [v113 sourceChannel];
  v57 = v88;
  sub_219BE01F4();
  swift_unknownObjectRelease();
  v58 = swift_allocObject();
  *(v58 + 16) = v123;
  v116(v58 + v49, v50, v54);
  sub_218E7283C(&unk_280EE8890, 255, MEMORY[0x277D2D8B8]);
  v59 = v90;
  sub_219BDCCC4();

  (*(v89 + 8))(v57, v59);
  v60 = [v113 sourceChannel];
  v61 = v92;
  sub_219BE01E4();
  swift_unknownObjectRelease();
  v62 = swift_allocObject();
  *(v62 + 16) = v123;
  v63 = v50;
  v64 = v120;
  v65 = v116;
  v116(v62 + v49, v63, v120);
  sub_218E7283C(&qword_280EE8270, 255, MEMORY[0x277D2E9C0]);
  v66 = v94;
  sub_219BDCCC4();

  (*(v93 + 8))(v61, v66);
  v67 = v95;
  sub_219BDF894();
  v68 = v112;
  v69 = swift_allocObject();
  *(v69 + 16) = v123;
  v65(v69 + v68, v122, v64);
  sub_218E7283C(&qword_280EE8640, 255, MEMORY[0x277D2DE40]);
  v70 = v97;
  sub_219BDCCC4();

  (*(v96 + 8))(v67, v70);
  v71 = v99;
  sub_218E83700(v110, v99, sub_218B58D58);
  v72 = v100;
  v73 = v101;
  if ((*(v100 + 48))(v71, 1, v101) == 1)
  {
    sub_218E728E8(v71, sub_218B58D58);
  }

  else
  {
    v74 = v80;
    (*(v72 + 32))(v80, v71, v73);
    v75 = swift_allocObject();
    *(v75 + 16) = v123;
    v65(v75 + v68, v122, v120);
    sub_218E7283C(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
    sub_219BDCCC4();

    (*(v72 + 8))(v74, v73);
  }

  sub_219BE0274();
  v76 = v102;
  sub_219BE75A4();
  sub_218E7283C(&unk_280EE8460, 255, MEMORY[0x277D2E418]);
  sub_219BDCC64();
  v77 = *(v103 + 8);
  v78 = v104;
  v77(v76, v104);
  sub_219BE7574();
  sub_219BDCC74();
  return (v77)(v76, v78);
}

uint64_t sub_218E7E048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v75 = a4;
  v95 = a3;
  v96 = a1;
  v72 = sub_219BDBD34();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v5 - 8);
  v74 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE16D4();
  v84 = *(v7 - 8);
  v85 = v7;
  MEMORY[0x28223BE20](v7);
  v64 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_219BE0444();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F64(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58CA4();
  v83 = v13;
  v81 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v77 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD7A90();
  v79 = *(v15 - 8);
  v80 = v15;
  MEMORY[0x28223BE20](v15);
  v76 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F98(0);
  MEMORY[0x28223BE20](v17 - 8);
  v78 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FCC(0);
  v86 = v19;
  v82 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v73 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BDFCE4();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BDF464();
  v68 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDB804();
  sub_219BDF454();
  sub_218E72884(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v29 = v28;
  v30 = sub_219BDCD44();
  v31 = *(v30 - 8);
  v32 = *(v31 + 72);
  v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v90 = *(v31 + 80);
  v91 = v32;
  v93 = v29;
  v34 = swift_allocObject();
  v87 = xmmword_219C09BA0;
  *(v34 + 16) = xmmword_219C09BA0;
  v35 = *(v31 + 104);
  v89 = *MEMORY[0x277CEAD18];
  v94 = v30;
  v92 = v31 + 104;
  v88 = v35;
  v35(v34 + v33);
  sub_218E7283C(&qword_280EE87C0, 255, MEMORY[0x277D2DAA8]);
  v67 = v27;
  v69 = v25;
  sub_219BDCCC4();

  sub_218B58D38(0);
  v65 = sub_218E7283C(&qword_280E908F0, 255, MEMORY[0x277D33320]);
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v60 = v12;
  sub_219BDFCD4();
  v37 = swift_allocObject();
  *(v37 + 16) = v87;
  v88(v37 + v33, v89, v94);
  sub_218E7283C(&unk_280EE8590, 255, MEMORY[0x277D2E058]);
  v66 = "Unknown enum case.";
  sub_219BDCCC4();

  (*(v22 + 8))(v24, v21);
  v38 = v76;
  sub_219BE7594();
  v39 = v77;
  sub_219BE7564();
  v40 = v83;
  sub_219BE5F84();
  v41 = v81;
  (*(v81 + 8))(v39, v40);
  v42 = v78;
  v43 = v80;
  sub_219BEB244();

  (*(v79 + 8))(v38, v43);
  v44 = v82;
  v45 = v86;
  if ((*(v82 + 48))(v42, 1, v86) != 1)
  {
    (*(v44 + 32))(v73, v42, v45);
    v48 = v60;
    sub_219BE7564();
    (*(v41 + 56))(v48, 0, 1, v40);
    v49 = sub_219BE6A34();
    result = sub_218E728E8(v48, sub_218B58F64);
    v47 = v84;
    v46 = v85;
    if (v49 >= 0xFFFFFFFF80000000)
    {
      if (v49 <= 0x7FFFFFFF)
      {
        v50 = v61;
        sub_219BE0434();
        v51 = swift_allocObject();
        *(v51 + 16) = v87;
        v88(v51 + v33, v89, v94);
        sub_218E7283C(&unk_280EE8400, 255, MEMORY[0x277D2E530]);
        v52 = v63;
        sub_219BDCCC4();

        (*(v62 + 8))(v50, v52);
        (*(v44 + 8))(v73, v86);
        goto LABEL_8;
      }

LABEL_15:
      __break(1u);
      return result;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_218E728E8(v42, sub_218B58F98);
  v47 = v84;
  v46 = v85;
LABEL_8:
  v53 = v74;
  sub_218E83700(v75, v74, sub_218B58D58);
  if ((*(v47 + 48))(v53, 1, v46) == 1)
  {
    sub_218E728E8(v53, sub_218B58D58);
  }

  else
  {
    v54 = v64;
    (*(v47 + 32))(v64, v53, v46);
    v55 = swift_allocObject();
    *(v55 + 16) = v87;
    v88(v55 + v33, v89, v94);
    sub_218E7283C(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
    sub_219BDCCC4();

    (*(v47 + 8))(v54, v46);
  }

  sub_219BE08D4();
  v56 = v70;
  sub_219BE75A4();
  sub_218E7283C(&qword_280EE82B0, 255, MEMORY[0x277D2E8B8]);
  sub_219BDCC64();
  v57 = *(v71 + 8);
  v58 = v72;
  v57(v56, v72);
  sub_219BE7574();
  sub_219BDCC74();
  v57(v56, v58);
  return (*(v68 + 8))(v67, v69);
}

uint64_t sub_218E7ED9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v120 = a5;
  v125 = a4;
  v142 = a3;
  v152 = a1;
  v140 = sub_219BDBD34();
  v122 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v121 = v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v7 - 8);
  v119 = v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_219BDF4A4();
  v126 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v115 = v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v10 - 8);
  v123 = v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_219BE16D4();
  v124 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v114 = v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_219BF1904();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BF33A4();
  MEMORY[0x28223BE20](v14 - 8);
  v106 = v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v16 - 8);
  v107 = v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_219BDF474();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v102[0] = v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_219BE0444();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v103 = v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F64(0);
  MEMORY[0x28223BE20](v20 - 8);
  v116 = v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58CA4();
  v135 = *(v22 - 8);
  v136 = v22;
  MEMORY[0x28223BE20](v22);
  v131 = v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD7A90();
  v133 = *(v24 - 8);
  v134 = v24;
  MEMORY[0x28223BE20](v24);
  v130 = v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F98(0);
  MEMORY[0x28223BE20](v26 - 8);
  v132 = v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FCC(0);
  v139 = v28;
  v141 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v117 = v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_219BDFCE4();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v127 = v102 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_219BF1DF4();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = v102 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_219BDF674();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = v102 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEDA84();
  sub_219BF1DB4();
  (*(v32 + 8))(v34, v31);
  v113 = a2;
  sub_219BEDAC4();
  sub_219BDF664();
  sub_218E72884(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v40 = v39;
  v41 = sub_219BDCD44();
  v42 = *(v41 - 8);
  v43 = *(v42 + 72);
  v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v148 = *(v42 + 80);
  v149 = v43;
  v150 = v40;
  v45 = swift_allocObject();
  v145 = xmmword_219C09BA0;
  *(v45 + 16) = xmmword_219C09BA0;
  v47 = *(v42 + 104);
  v46 = v42 + 104;
  v147 = *MEMORY[0x277CEAD18];
  v151 = v41;
  v146 = v47;
  v47(v45 + v44);
  sub_218E7283C(&unk_280EE86E0, 255, MEMORY[0x277D2DC98]);
  v144 = "Unknown enum case.";
  sub_219BDCCC4();

  (*(v36 + 8))(v38, v35);
  sub_218B58D38(0);
  v49 = v48;
  v50 = sub_218E7283C(&qword_280E908F0, 255, MEMORY[0x277D33320]);
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v102[1] = v50;
  v52 = v127;
  sub_219BDFCD4();
  v53 = swift_allocObject();
  *(v53 + 16) = v145;
  v118 = v44;
  v143 = v46;
  v146(v53 + v44, v147, v151);
  sub_218E7283C(&unk_280EE8590, 255, MEMORY[0x277D2E058]);
  v54 = v129;
  sub_219BDCCC4();

  (*(v128 + 8))(v52, v54);
  v55 = v130;
  sub_219BE7594();
  v56 = v131;
  sub_219BE7564();
  v57 = v136;
  sub_219BE5F84();
  v58 = v135;
  (*(v135 + 8))(v56, v57);
  v59 = v132;
  v60 = v134;
  sub_219BEB244();
  v61 = v59;

  (*(v133 + 8))(v55, v60);
  v62 = v141;
  v63 = v59;
  v64 = v139;
  if ((*(v141 + 48))(v63, 1, v139) != 1)
  {
    v73 = *(v62 + 32);
    v74 = v117;
    v73(v117, v61, v64);
    v75 = v116;
    sub_219BE7564();
    (*(v58 + 56))(v75, 0, 1, v57);
    v76 = v74;
    v77 = sub_219BE6A34();
    result = sub_218E728E8(v75, sub_218B58F64);
    v66 = v137;
    v67 = v138;
    if (v77 >= 0xFFFFFFFF80000000)
    {
      if (v77 <= 0x7FFFFFFF)
      {
        v78 = v103;
        sub_219BE0434();
        v72 = v118;
        v79 = swift_allocObject();
        *(v79 + 16) = v145;
        v146(v79 + v72, v147, v151);
        sub_218E7283C(&unk_280EE8400, 255, MEMORY[0x277D2E530]);
        v80 = v105;
        sub_219BDCCC4();

        (*(v104 + 8))(v78, v80);
        v81 = v106;
        sub_219BE6934();
        v82 = v64;
        v83 = v108;
        sub_219BF3394();
        sub_218E728E8(v81, MEMORY[0x277D33DA8]);
        sub_219BEDA94();
        v84 = v76;
        v85 = v107;
        sub_219BF17B4();
        v86 = v85;

        (*(v109 + 8))(v83, v110);
        v87 = v111;
        v88 = v112;
        if ((*(v111 + 48))(v86, 1, v112) == 1)
        {
          (*(v141 + 8))(v84, v82);
          sub_218E728E8(v86, sub_218B58F30);
        }

        else
        {
          v89 = *(v87 + 32);
          v136 = v49;
          v90 = v102[0];
          v89(v102[0], v86, v88);
          v91 = swift_allocObject();
          *(v91 + 16) = v145;
          v146(v91 + v72, v147, v151);
          sub_218E7283C(&unk_280EE87B0, 255, MEMORY[0x277D2DAB8]);
          sub_219BDCCC4();

          (*(v87 + 8))(v90, v88);
          (*(v141 + 8))(v84, v139);
        }

        v65 = v140;
        v69 = v125;
        v70 = v124;
        v71 = v123;
        v68 = v126;
        goto LABEL_11;
      }

LABEL_21:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_218E728E8(v61, sub_218B58F98);
  v65 = v140;
  v66 = v137;
  v67 = v138;
  v68 = v126;
  v69 = v125;
  v70 = v124;
  v71 = v123;
  v72 = v118;
LABEL_11:
  sub_218E83700(v69, v71, sub_218B58D58);
  if ((*(v70 + 48))(v71, 1, v66) == 1)
  {
    sub_218E728E8(v71, sub_218B58D58);
  }

  else
  {
    v92 = v67;
    v93 = v68;
    v94 = v114;
    (*(v70 + 32))(v114, v71, v66);
    v95 = swift_allocObject();
    *(v95 + 16) = v145;
    v146(v95 + v72, v147, v151);
    sub_218E7283C(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
    sub_219BDCCC4();

    v96 = v94;
    v68 = v93;
    v67 = v92;
    v65 = v140;
    (*(v70 + 8))(v96, v66);
  }

  v97 = v119;
  sub_218E83700(v120, v119, sub_218B59134);
  if ((*(v68 + 48))(v97, 1, v67) == 1)
  {
    sub_218E728E8(v97, sub_218B59134);
  }

  else
  {
    v98 = v115;
    (*(v68 + 32))(v115, v97, v67);
    v99 = swift_allocObject();
    *(v99 + 16) = v145;
    v146(v99 + v72, v147, v151);
    sub_218E7283C(&unk_280EE8790, 255, MEMORY[0x277D2DAD8]);
    sub_219BDCCC4();

    (*(v68 + 8))(v98, v67);
  }

  sub_219BE0A64();
  v100 = v121;
  sub_219BE75A4();
  sub_218E7283C(&qword_280EE8230, 255, MEMORY[0x277D2EA20]);
  sub_219BDCC64();
  v101 = *(v122 + 8);
  v101(v100, v65);
  sub_219BE7574();
  sub_219BDCC74();
  return (v101)(v100, v65);
}

uint64_t sub_218E80214(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v69 = a7;
  v64 = a6;
  v62 = a5;
  v58 = a4;
  LODWORD(v73) = a3;
  v72 = a2;
  v77 = a1;
  v70 = sub_219BDBD34();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v8 - 8);
  v63 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE16D4();
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x28223BE20](v10);
  v55 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v12 - 8);
  v59 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BDF4A4();
  v60 = *(v14 - 8);
  v61 = v14;
  MEMORY[0x28223BE20](v14);
  v54 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_219BDF3E4();
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v48 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_219BDFDE4();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_219BDF8A4();
  v57 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E72884(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v76 = v20;
  v21 = sub_219BDCD44();
  v22 = *(v21 - 8);
  v74 = *(v22 + 72);
  v23 = *(v22 + 80);
  v24 = (v23 + 32) & ~v23;
  v25 = swift_allocObject();
  v75 = xmmword_219C09BA0;
  *(v25 + 16) = xmmword_219C09BA0;
  v26 = *MEMORY[0x277CEAD18];
  v27 = *(v22 + 104);
  v27(v25 + v24, v26, v21);
  sub_219BDEF94();
  sub_218E7283C(&qword_280EE8910, 255, MEMORY[0x277D2D788]);
  sub_219BDCCC4();

  sub_219BDF894();
  v73 = v23;
  v28 = swift_allocObject();
  *(v28 + 16) = v75;
  LODWORD(v72) = v26;
  v71 = v27;
  v27(v28 + v24, v26, v21);
  sub_218E7283C(&qword_280EE8640, 255, MEMORY[0x277D2DE40]);
  v29 = v56;
  sub_219BDCCC4();

  (*(v57 + 8))(v19, v29);
  if (sub_219BF0A34())
  {
    (*(v49 + 104))(v48, *MEMORY[0x277D2DA78], v50);
    v30 = v51;
    sub_219BDFDD4();
    v31 = swift_allocObject();
    *(v31 + 16) = v75;
    v71(v31 + v24, v72, v21);
    sub_218E7283C(&unk_27CC18730, 255, MEMORY[0x277D2E148]);
    v32 = v53;
    sub_219BDCCC4();

    (*(v52 + 8))(v30, v32);
  }

  v33 = v59;
  sub_218E83700(v62, v59, sub_218B59134);
  v35 = v60;
  v34 = v61;
  if ((*(v60 + 48))(v33, 1, v61) == 1)
  {
    sub_218E728E8(v33, sub_218B59134);
  }

  else
  {
    v36 = v54;
    (*(v35 + 32))(v54, v33, v34);
    v37 = swift_allocObject();
    *(v37 + 16) = v75;
    v71(v37 + v24, v72, v21);
    sub_218E7283C(&unk_280EE8790, 255, MEMORY[0x277D2DAD8]);
    sub_219BDCCC4();

    (*(v35 + 8))(v36, v34);
  }

  v39 = v65;
  v38 = v66;
  v40 = v63;
  sub_218E83700(v64, v63, sub_218B58D58);
  if ((*(v39 + 48))(v40, 1, v38) == 1)
  {
    sub_218E728E8(v40, sub_218B58D58);
  }

  else
  {
    v41 = v55;
    (*(v39 + 32))(v55, v40, v38);
    v42 = swift_allocObject();
    *(v42 + 16) = v75;
    v71(v42 + v24, v72, v21);
    sub_218E7283C(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
    sub_219BDCCC4();

    (*(v39 + 8))(v41, v38);
  }

  sub_219BE0494();
  sub_218B58D38(0);
  v43 = v67;
  sub_219BE75A4();
  sub_218E7283C(&unk_280EE83E0, 255, MEMORY[0x277D2E560]);
  sub_219BDCC64();
  v44 = *(v68 + 8);
  v45 = v70;
  v44(v43, v70);
  sub_219BE7574();
  sub_219BDCC74();
  return (v44)(v43, v45);
}

uint64_t sub_218E80D0C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v90 = a5;
  v108 = a4;
  v117 = a3;
  v122 = a1;
  v109 = sub_219BDBD34();
  v94 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v93 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v7 - 8);
  v89 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_219BE16D4();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v85 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v10 - 8);
  v105 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDF4A4();
  v106 = *(v12 - 8);
  v107 = v12;
  MEMORY[0x28223BE20](v12);
  v84 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BDF1E4();
  v103 = *(v14 - 8);
  v104 = v14;
  MEMORY[0x28223BE20](v14);
  v102 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_219BDFCE4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_219BE1444();
  v111 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v110 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58CA4();
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD7A90();
  v120 = v23;
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F98(0);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FCC(0);
  v31 = v30;
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v121 = &v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D38(0);
  v35 = v34;
  sub_219BE7594();
  v118 = a2;
  v119 = v35;
  sub_219BE7564();
  sub_219BE5F84();
  v36 = *(v20 + 8);
  v112 = v22;
  v98 = v19;
  v37 = v20 + 8;
  v38 = v120;
  v96 = v37;
  v95 = v36;
  v36(v22, v19);
  sub_219BEB244();

  v39 = *(v24 + 8);
  v97 = v24 + 8;
  v39(v26, v38);
  if ((*(v32 + 48))(v29, 1, v31) == 1)
  {
    return sub_218E728E8(v29, sub_218B58F98);
  }

  v80 = v39;
  v82 = v32;
  v41 = *(v32 + 32);
  v88 = v31;
  v41(v121, v29, v31);
  v42 = [v117 identifier];
  sub_219BF5414();

  v43 = v110;
  sub_219BE1424();
  sub_218E72884(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v45 = v44;
  v46 = sub_219BDCD44();
  v47 = *(v46 - 8);
  v48 = *(v47 + 72);
  v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v117 = *(v47 + 80);
  v87 = v45;
  v50 = swift_allocObject();
  v115 = xmmword_219C09BA0;
  *(v50 + 16) = xmmword_219C09BA0;
  v51 = *(v47 + 104);
  v116 = *MEMORY[0x277CEAD18];
  v114 = v47 + 104;
  v86 = v51;
  v51(v50 + v49);
  sub_218E7283C(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
  v81 = "Unknown enum case.";
  v52 = v113;
  sub_219BDCCC4();

  (*(v111 + 8))(v43, v52);
  sub_219BE7594();
  v53 = v112;
  sub_219BE7564();
  sub_218E7283C(&qword_280E908F0, 255, MEMORY[0x277D33320]);
  result = sub_219BEB304();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v54 = v99;
  sub_219BDFCD4();
  v95(v53, v98);
  v80(v26, v38);
  v83 = v46;
  v120 = v48;
  v55 = swift_allocObject();
  *(v55 + 16) = v115;
  v56 = v86;
  v86(v55 + v49, v116, v46);
  sub_218E7283C(&unk_280EE8590, 255, MEMORY[0x277D2E058]);
  v57 = v49;
  v58 = v101;
  sub_219BDCCC4();

  (*(v100 + 8))(v54, v58);
  sub_219BE6944();
  v59 = v102;
  sub_219BDF1C4();
  v60 = v83;
  v61 = swift_allocObject();
  *(v61 + 16) = v115;
  v56(v61 + v57, v116, v60);
  sub_218E7283C(&unk_280EE8840, 255, MEMORY[0x277D2D970]);
  v62 = v104;
  sub_219BDCCC4();

  (*(v103 + 8))(v59, v62);
  v63 = v105;
  sub_218E83700(v108, v105, sub_218B59134);
  v65 = v106;
  v64 = v107;
  v66 = (*(v106 + 48))(v63, 1, v107);
  v79 = v57;
  if (v66 == 1)
  {
    sub_218E728E8(v63, sub_218B59134);
  }

  else
  {
    v67 = v84;
    (*(v65 + 32))(v84, v63, v64);
    v68 = swift_allocObject();
    *(v68 + 16) = v115;
    v86(v68 + v57, v116, v60);
    sub_218E7283C(&unk_280EE8790, 255, MEMORY[0x277D2DAD8]);
    sub_219BDCCC4();

    (*(v65 + 8))(v67, v64);
  }

  v69 = v94;
  v70 = v93;
  v71 = v92;
  v72 = v91;
  v73 = v89;
  sub_218E83700(v90, v89, sub_218B58D58);
  if ((*(v72 + 48))(v73, 1, v71) == 1)
  {
    sub_218E728E8(v73, sub_218B58D58);
  }

  else
  {
    v74 = v85;
    (*(v72 + 32))(v85, v73, v71);
    v75 = v79;
    v76 = swift_allocObject();
    *(v76 + 16) = v115;
    v86(v76 + v75, v116, v83);
    sub_218E7283C(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
    sub_219BDCCC4();

    (*(v72 + 8))(v74, v71);
  }

  sub_219BDFEC4();
  sub_219BE75A4();
  sub_218E7283C(&unk_280EE8520, 255, MEMORY[0x277D2E1D0]);
  sub_219BDCC64();
  v77 = *(v69 + 8);
  v78 = v109;
  v77(v70, v109);
  sub_219BE7574();
  sub_219BDCC74();
  v77(v70, v78);
  return (*(v82 + 8))(v121, v88);
}

uint64_t sub_218E81CAC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v88 = a5;
  v90 = a4;
  v96 = a3;
  v100 = a1;
  v6 = sub_219BDBD34();
  v84 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDF8A4();
  v76 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v89 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_219BEF9C4();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDFFE4();
  v86 = *(v12 - 8);
  v87 = v12;
  MEMORY[0x28223BE20](v12);
  v83 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_219BE09E4();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDF104();
  v75 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v74 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_219BDEFE4();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BDFCE4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D38(0);
  v24 = v23;
  sub_218E7283C(&qword_280E908F0, 255, MEMORY[0x277D33320]);
  v85 = v24;
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    sub_219BDFCD4();
    sub_218E72884(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v67 = v15;
    v92 = v26;
    v27 = sub_219BDCD44();
    v70 = a2;
    v69 = v8;
    v94 = v27;
    v28 = *(v27 - 8);
    v68 = v9;
    v97 = *(v28 + 72);
    v93 = *(v28 + 80);
    v29 = v28;
    v30 = (v93 + 32) & ~v93;
    v31 = swift_allocObject();
    v71 = v6;
    v101 = xmmword_219C09BA0;
    *(v31 + 16) = xmmword_219C09BA0;
    v91 = *MEMORY[0x277CEAD18];
    v99 = *(v29 + 104);
    v95 = v29 + 104;
    v99(v31 + v30);
    v98 = "Unknown enum case.";
    sub_218E7283C(&unk_280EE8590, 255, MEMORY[0x277D2E058]);
    sub_219BDCCC4();

    (*(v20 + 8))(v22, v19);
    v32 = v96;
    v33 = [v96 identifier];
    sub_219BF5414();

    [v32 isPaid];
    v34 = [v32 totalTime];
    sub_219BF5414();

    sub_219BDEFB4();
    v66 = v30;
    v35 = swift_allocObject();
    *(v35 + 16) = v101;
    v36 = v91;
    v37 = v94;
    (v99)(v35 + v30, v91, v94);
    sub_218E7283C(&qword_280EE8900, 255, MEMORY[0x277D2D798]);
    v38 = v73;
    sub_219BDCCC4();

    (*(v72 + 8))(v18, v38);
    v73 = *(v90 + 88);
    v39 = v96;
    v40 = [v96 sourceChannel];
    v41 = v74;
    sub_219BE01F4();
    swift_unknownObjectRelease();
    v42 = v66;
    v43 = swift_allocObject();
    *(v43 + 16) = v101;
    v44 = v99;
    (v99)(v43 + v42, v36, v37);
    sub_218E7283C(&unk_280EE8890, 255, MEMORY[0x277D2D8B8]);
    v45 = v67;
    sub_219BDCCC4();

    (*(v75 + 8))(v41, v45);
    v46 = [v39 sourceChannel];
    v47 = v77;
    sub_219BE01E4();
    swift_unknownObjectRelease();
    v48 = swift_allocObject();
    *(v48 + 16) = v101;
    (v44)(v48 + v42, v91, v94);
    sub_218E7283C(&qword_280EE8270, 255, MEMORY[0x277D2E9C0]);
    v49 = v79;
    sub_219BDCCC4();

    (*(v78 + 8))(v47, v49);
    v50 = v81;
    v51 = v80;
    v52 = v82;
    (*(v81 + 104))(v80, *MEMORY[0x277D32840], v82);
    v53 = v83;
    sub_219BE02B4();
    (*(v50 + 8))(v51, v52);
    v54 = swift_allocObject();
    *(v54 + 16) = v101;
    v55 = v91;
    v56 = v94;
    (v99)(v54 + v42, v91, v94);
    sub_218E7283C(&unk_280EE84E0, 255, MEMORY[0x277D2E2C0]);
    v57 = v87;
    sub_219BDCCC4();

    (*(v86 + 8))(v53, v57);
    v58 = v89;
    sub_219BDF894();
    v59 = swift_allocObject();
    *(v59 + 16) = v101;
    (v99)(v59 + v42, v55, v56);
    sub_218E7283C(&qword_280EE8640, 255, MEMORY[0x277D2DE40]);
    v60 = v68;
    sub_219BDCCC4();

    (*(v76 + 8))(v58, v60);
    sub_219BE04C4();
    v61 = v69;
    sub_219BE75A4();
    sub_218E7283C(&unk_280EE83D0, 255, MEMORY[0x277D2E570]);
    v62 = v61;
    sub_219BDCC64();
    v63 = *(v84 + 8);
    v64 = v71;
    v63(v62, v71);
    sub_219BE7574();
    sub_219BDCC74();
    return (v63)(v62, v64);
  }

  __break(1u);
  return result;
}

uint64_t sub_218E82A00()
{
  v0 = type metadata accessor for MagazineFeedModel(0);
  v1 = MEMORY[0x28223BE20](v0);
  v20[0] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v4 = v20 - v3;
  sub_218953870();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - v11;
  sub_218E82CE8();
  sub_219BE8BA4();
  sub_219BE5FC4();
  v13 = *(v7 + 8);
  v13(v12, v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v19 = sub_219BF1584();
      return (*(*(v19 - 8) + 8))(v4, v19);
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
      goto LABEL_2;
    case 6u:
      sub_218E728E8(v4, type metadata accessor for MagazineFeedModel);
      sub_219BE8BA4();
      v4 = v20[0];
      sub_219BE5FC4();
      v13(v10, v6);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v17 = sub_219BE5B64();
        swift_getObjectType();
        v20[1] = v17;
        sub_219BEB4E4();
      }

      else
      {
LABEL_2:
        v14 = type metadata accessor for MagazineFeedModel;
        v15 = v4;
        return sub_218E728E8(v15, v14);
      }

    default:

      sub_2186F6F00();
      v14 = type metadata accessor for MagazineFeedGapLocation;
      v15 = &v4[*(v18 + 48)];
      return sub_218E728E8(v15, v14);
  }
}

void sub_218E82CE8()
{
  if (!qword_280EE4790)
  {
    type metadata accessor for MagazineFeedSectionDescriptor();
    type metadata accessor for MagazineFeedModel(255);
    sub_218E7283C(&qword_280EB0350, 255, type metadata accessor for MagazineFeedSectionDescriptor);
    sub_218E7283C(&qword_280ED5CC0, 255, type metadata accessor for MagazineFeedModel);
    v0 = sub_219BE8BC4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4790);
    }
  }
}

void sub_218E82DDC()
{
  if (!qword_280EE45E0)
  {
    type metadata accessor for MagazineFeedSectionDescriptor();
    type metadata accessor for MagazineFeedModel(255);
    sub_218E7283C(&qword_280EB0350, 255, type metadata accessor for MagazineFeedSectionDescriptor);
    sub_218E7283C(&qword_280ED5CC0, 255, type metadata accessor for MagazineFeedModel);
    v0 = sub_219BE8F34();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE45E0);
    }
  }
}

char *sub_218E82ED0(uint64_t a1)
{
  sub_218E82DDC();
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = *(sub_219BE16D4() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_218E6D420(a1, v1 + v4, v7);
}

void sub_218E82FA4()
{
  if (!qword_280EE50D0)
  {
    type metadata accessor for MagazineFeedSectionDescriptor();
    type metadata accessor for MagazineFeedModel(255);
    sub_218E7283C(&qword_280EB0350, 255, type metadata accessor for MagazineFeedSectionDescriptor);
    sub_218E7283C(&qword_280ED5CC0, 255, type metadata accessor for MagazineFeedModel);
    v0 = sub_219BE75C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE50D0);
    }
  }
}

uint64_t sub_218E830C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218E8312C(uint64_t a1)
{
  sub_218E82FA4();
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_218B58D58(0);
  v7 = (v5 + *(*(v6 - 8) + 80) + 9) & ~*(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  sub_218B59134(0);
  v10 = *(v1 + 16);
  v11 = *(v1 + v5);
  v12 = *(v1 + v5 + 8);
  v13 = v1 + ((v7 + v8 + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80));

  return sub_218E72948(a1, v10, v1 + v4, v11, v12, v1 + v7, v13);
}

uint64_t sub_218E832B4(uint64_t a1)
{
  sub_218B58D58(0);
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = *(sub_219BF07A4() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  sub_218E82FA4();
  v10 = *(v9 - 8);
  v11 = (v7 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v1 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 8);

  return sub_218E74DF4(a1, v1 + v4, v1 + v7, v1 + v11, v13, v14);
}

uint64_t sub_218E834D4(uint64_t a1)
{
  v3 = *(sub_219BDEF94() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  sub_218B59134(0);
  v7 = (v5 + *(*(v6 - 8) + 80) + 1) & ~*(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  sub_218B58D58(0);
  v10 = (v7 + v8 + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80);
  v11 = *(*(v9 - 8) + 64);
  v12 = *(sub_219BF0AC4() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = *(v12 + 64);
  sub_218E82FA4();
  v16 = *(v1 + v5);
  v17 = v1 + ((v13 + v14 + *(*(v15 - 8) + 80)) & ~*(*(v15 - 8) + 80));

  return sub_218E78588(a1, v1 + v4, v16, v1 + v7, v1 + v10, v1 + v13, v17);
}

uint64_t sub_218E83700(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218E83768(uint64_t a1)
{
  sub_218B58D38(0);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_218B58D58(0);
  v7 = *(v1 + 16);
  v8 = *(v1 + v5);
  v9 = *(v1 + v5 + 8);
  v10 = v1 + ((v5 + *(*(v6 - 8) + 80) + 9) & ~*(*(v6 - 8) + 80));

  return sub_218E7ADEC(a1, v7, v1 + v4, v8, v9, v10);
}

uint64_t sub_218E83858(uint64_t a1)
{
  sub_218B58D38(0);
  v4 = (*(*(v3 - 8) + 80) + 41) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_218B58D58(0);
  v7 = 256;
  if (!*(v1 + 25))
  {
    v7 = 0;
  }

  v8 = v7 | *(v1 + 24);
  v9 = 0x10000;
  if (!*(v1 + 26))
  {
    v9 = 0;
  }

  v10 = 0x1000000;
  if (!*(v1 + 27))
  {
    v10 = 0;
  }

  v11 = v8 | v9 | v10;
  v12 = 0x100000000;
  if (!*(v1 + 28))
  {
    v12 = 0;
  }

  return sub_218E7CFFC(a1, *(v1 + 16), v11 | v12, *(v1 + 32), *(v1 + 40), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), v1 + ((v5 + *(*(v6 - 8) + 80) + 9) & ~*(*(v6 - 8) + 80)));
}

uint64_t sub_218E839A4(uint64_t a1)
{
  v3 = *(sub_219BDB954() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  sub_218B58D38(0);
  v7 = (v4 + v5 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  sub_218B58D58(0);
  v10 = v1 + ((v7 + v8 + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80));

  return sub_218E7E048(a1, v1 + v4, v1 + v7, v10);
}

uint64_t objectdestroy_20Tm_0(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = a2(0);
  v9 = *(v8 - 8);
  v10 = (v6 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  sub_218B58D58(0);
  v22 = *(*(v12 - 8) + 80);
  v13 = (v10 + v11 + v22) & ~v22;
  v14 = *(*(v12 - 8) + 64);
  sub_218B59134(0);
  v16 = (v13 + v14 + *(*(v15 - 8) + 80)) & ~*(*(v15 - 8) + 80);
  (*(v5 + 8))(v2 + v6, v4);
  (*(v9 + 8))(v2 + v10, v8);
  v17 = sub_219BE16D4();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v2 + v13, 1, v17))
  {
    (*(v18 + 8))(v2 + v13, v17);
  }

  v19 = sub_219BDF4A4();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v2 + v16, 1, v19))
  {
    (*(v20 + 8))(v2 + v16, v19);
  }

  return swift_deallocObject();
}

uint64_t sub_218E83E48(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, unint64_t, unint64_t, unint64_t, uint64_t))
{
  v7 = *(a2(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(a3(0) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  sub_218B58D58(0);
  v14 = (v11 + v12 + *(*(v13 - 8) + 80)) & ~*(*(v13 - 8) + 80);
  v15 = *(*(v13 - 8) + 64);
  sub_218B59134(0);
  v17 = v4 + ((v14 + v15 + *(*(v16 - 8) + 80)) & ~*(*(v16 - 8) + 80));

  return a4(a1, v4 + v8, v4 + v11, v4 + v14, v17);
}

uint64_t sub_218E83FFC(uint64_t a1)
{
  v3 = *(sub_219BDEF94() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_219BF0AC4() - 8);
  v7 = (v5 + *(v6 + 80) + 1) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  sub_218B59134(0);
  v10 = (v7 + v8 + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80);
  v11 = *(*(v9 - 8) + 64);
  sub_218B58D58(0);
  v13 = (v10 + v11 + *(*(v12 - 8) + 80)) & ~*(*(v12 - 8) + 80);
  v14 = *(*(v12 - 8) + 64);
  sub_218B58D38(0);
  v16 = *(v1 + v5);
  v17 = v1 + ((v13 + v14 + *(*(v15 - 8) + 80)) & ~*(*(v15 - 8) + 80));

  return sub_218E80214(a1, v1 + v4, v16, v1 + v7, v1 + v10, v1 + v13, v17);
}

uint64_t objectdestroy_29Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_218B59134(0);
  v7 = (v5 + *(*(v6 - 8) + 80) + 8) & ~*(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  sub_218B58D58(0);
  v10 = (v7 + v8 + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80);
  (*(v3 + 8))(v1 + v4, v2);
  swift_unknownObjectRelease();
  v11 = sub_219BDF4A4();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v1 + v7, 1, v11))
  {
    (*(v12 + 8))(v1 + v7, v11);
  }

  v13 = sub_219BE16D4();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v1 + v10, 1, v13))
  {
    (*(v14 + 8))(v1 + v10, v13);
  }

  return swift_deallocObject();
}

uint64_t sub_218E844D0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, unint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_218B59134(0);
  v9 = (v7 + *(*(v8 - 8) + 80) + 8) & ~*(*(v8 - 8) + 80);
  v10 = *(*(v8 - 8) + 64);
  sub_218B58D58(0);
  v12 = *(v3 + v7);
  v13 = v3 + ((v9 + v10 + *(*(v11 - 8) + 80)) & ~*(*(v11 - 8) + 80));

  return a3(a1, v3 + v6, v12, v3 + v9, v13);
}

uint64_t objectdestroy_11Tm_2(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_218E84710(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v3 + v7);
  v9 = (v3 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = *(v9 + 8);

  return a3(a1, v3 + v6, v8, v10, v11);
}

void sub_218E847D8()
{
  if (!qword_280EE59B8)
  {
    sub_219BDE874();
    sub_219BDDA04();
    sub_218E7283C(&unk_280EE8AF0, 255, MEMORY[0x277D301D0]);
    sub_218E7283C(&unk_280EE8DE0, 255, MEMORY[0x277D2FBA8]);
    v0 = sub_219BE6A54();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE59B8);
    }
  }
}

void sub_218E848CC()
{
  if (!qword_280EE37B0)
  {
    sub_219BDE874();
    sub_219BDDA04();
    sub_218E7283C(&unk_280EE8AF0, 255, MEMORY[0x277D301D0]);
    sub_218E7283C(&unk_280EE8DE0, 255, MEMORY[0x277D2FBA8]);
    v0 = sub_219BEB334();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE37B0);
    }
  }
}

unint64_t sub_218E849C4()
{
  result = qword_280ED8740;
  if (!qword_280ED8740)
  {
    type metadata accessor for HistoryFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED8740);
  }

  return result;
}

uint64_t sub_218E84A1C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x21CECE0F0](v3, a1);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_15;
      }

LABEL_7:
      v7 = [v5 identifier];
      v8 = sub_219BF5414();
      v10 = v9;
      swift_unknownObjectRelease();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_218840D24(0, *(v4 + 2) + 1, 1, v4);
      }

      v12 = *(v4 + 2);
      v11 = *(v4 + 3);
      if (v12 >= v11 >> 1)
      {
        v4 = sub_218840D24((v11 > 1), v12 + 1, 1, v4);
      }

      *(v4 + 2) = v12 + 1;
      v13 = &v4[16 * v12];
      *(v13 + 4) = v8;
      *(v13 + 5) = v10;
      ++v3;
      if (v6 == i)
      {
        goto LABEL_19;
      }
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    v5 = *(a1 + 8 * v3 + 32);
    swift_unknownObjectRetain();
    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_19:
  v14 = sub_218845F78(v4);

  *(swift_allocObject() + 16) = v14;
  v15 = sub_219BE2E54();
  v16 = sub_219BE2F74();

  return v16;
}

unint64_t *sub_218E84C34@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v5 = *result;
  v25 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
LABEL_25:
    result = sub_219BF7214();
    v6 = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v23 = v5 & 0xFFFFFFFFFFFFFF8;
      v24 = v5 & 0xC000000000000001;
      v20 = v5;
      v22 = v5 + 32;
      v8 = a2 + 56;
      while (1)
      {
        if (v24)
        {
          result = MEMORY[0x21CECE0F0](v7, v20);
          v9 = result;
          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
LABEL_22:
            __break(1u);
LABEL_23:
            v19 = v25;
            a3 = v21;
            goto LABEL_27;
          }
        }

        else
        {
          if (v7 >= *(v23 + 16))
          {
            __break(1u);
            goto LABEL_25;
          }

          v9 = *(v22 + 8 * v7);
          result = swift_unknownObjectRetain();
          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
            goto LABEL_22;
          }
        }

        v11 = [v9 identifier];
        v12 = sub_219BF5414();
        v14 = v13;

        if (*(a2 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v15 = sub_219BF7AE4(), v16 = -1 << *(a2 + 32), a3 = v15 & ~v16, ((*(v8 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0))
        {
          v5 = ~v16;
          while (1)
          {
            v17 = (*(a2 + 48) + 16 * a3);
            v18 = *v17 == v12 && v17[1] == v14;
            if (v18 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            a3 = (a3 + 1) & v5;
            if (((*(v8 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          swift_unknownObjectRelease();

          if (v7 == v6)
          {
            goto LABEL_23;
          }
        }

        else
        {
LABEL_4:

          a3 = &v25;
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          result = sub_219BF73E4();
          if (v7 == v6)
          {
            goto LABEL_23;
          }
        }
      }
    }
  }

  v19 = MEMORY[0x277D84F90];
LABEL_27:
  *a3 = v19;
  return result;
}

uint64_t sub_218E84E7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ArticleListHistoryFeedGroup();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HistoryFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B73EE8(a1, v10);
  sub_218B73F4C(v10, v7);
  v11 = *&v7[*(v5 + 32)];

  sub_218B73FB0(v7);
  v12 = sub_218E84A1C(v11);
  v14 = v13;

  *a2 = v12;
  a2[1] = v14;
  return result;
}

uint64_t sub_218E84FD0()
{
  sub_218E8538C();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BE1394();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v32 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v26 = &v22 - v7;
  v8 = sub_219BEDFF4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BEDFC4();
  v31 = *(v27 + 16);
  if (v31)
  {
    v12 = 0;
    v29 = v9 + 16;
    v30 = (v9 + 8);
    v28 = (v4 + 48);
    v13 = (v4 + 32);
    v14 = MEMORY[0x277D84F90];
    v24 = v4;
    v25 = v3;
    v15 = v27;
    v23 = v8;
    while (v12 < *(v15 + 16))
    {
      (*(v9 + 16))(v11, v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v12, v8);
      sub_218E853E4(v2);
      (*v30)(v11, v8);
      if ((*v28)(v2, 1, v3) == 1)
      {
        sub_218E85980(v2);
      }

      else
      {
        v16 = *v13;
        v17 = v26;
        (*v13)(v26, v2, v3);
        v16(v32, v17, v3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_2191F785C(0, v14[2] + 1, 1, v14);
        }

        v19 = v14[2];
        v18 = v14[3];
        if (v19 >= v18 >> 1)
        {
          v14 = sub_2191F785C(v18 > 1, v19 + 1, 1, v14);
        }

        v14[2] = v19 + 1;
        v20 = v14 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v19;
        v3 = v25;
        v16(v20, v32, v25);
        v8 = v23;
        v15 = v27;
      }

      if (v31 == ++v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);

    (*v30)(v11, v8);

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_13:

    return v14;
  }

  return result;
}

void sub_218E8538C()
{
  if (!qword_280EE8068)
  {
    sub_219BE1394();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE8068);
    }
  }
}

uint64_t sub_218E853E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_219BEFE54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BEF2F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEDFE4();
  sub_219BEF2E4();
  (*(v7 + 8))(v9, v6);
  v10 = (*(v3 + 88))(v5, v2);
  if (v10 == *MEMORY[0x277D32AE8] || v10 == *MEMORY[0x277D32AE0])
  {
    (*(v3 + 96))(v5, v2);
    sub_2186CB1F0(v5, v34);
    v32 = 0;
    v33 = 0xE000000000000000;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    *&v29 = swift_getAssociatedTypeWitness();
    *(&v29 + 1) = swift_getAssociatedConformanceWitness();
    *&v30 = swift_getAssociatedConformanceWitness();
    *(&v30 + 1) = swift_getAssociatedConformanceWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v28);
    sub_219BF10F4();
    v12 = AssociatedConformanceWitness;
    v21 = v29;
    v13 = v29;
    v22 = v30;
    v14 = __swift_project_boxed_opaque_existential_1(v28, v29);
    v25 = v21;
    v26 = v22;
    v27 = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
    (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v14, v13);
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v23[3] = swift_getAssociatedTypeWitness();
    __swift_allocate_boxed_opaque_existential_1(v23);
    sub_219BF5874();
    sub_219BF7484();
    __swift_destroy_boxed_opaque_existential_1(v23);
    __swift_destroy_boxed_opaque_existential_1(v24);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x21CECC330](32, 0xE100000000000000);
    __swift_project_boxed_opaque_existential_1(v34, v35);
    v16 = sub_219BE1D74();
    MEMORY[0x21CECC330](v16);

    sub_219BE1384();
    v17 = sub_219BE1394();
    (*(*(v17 - 8) + 56))(a1, 0, 1, v17);
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  if (v10 == *MEMORY[0x277D32B08])
  {
    (*(v3 + 96))(v5, v2);

    __swift_destroy_boxed_opaque_existential_1(v5);
LABEL_12:
    v19 = sub_219BE1394();
    return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
  }

  if (v10 == *MEMORY[0x277D32B00] || v10 == *MEMORY[0x277D32AF0])
  {
    (*(v3 + 8))(v5, v2);
    goto LABEL_12;
  }

  v20 = sub_219BE1394();
  (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_218E85980(uint64_t a1)
{
  sub_218E8538C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218E859DC(void *a1)
{
  sub_218E86434(0, &qword_27CC12C08, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E86320();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BED8D4();
  sub_218E86498(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for RecentlyViewedRecipesTagFeedGroup();
    v9[14] = 1;
    sub_219BF7824();
    v9[13] = 2;
    sub_219BF7814();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218E85BD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_219BED8D4();
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v24 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E86434(0, &qword_27CC12BF8, MEMORY[0x277D844C8]);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E86320();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v13 = v21;
  v27 = 0;
  sub_218E86498(&unk_280E92630, MEMORY[0x277D31C50]);
  v14 = v23;
  sub_219BF7734();
  v15 = *(v13 + 32);
  v16 = v24;
  v24 = v4;
  v15(v12, v16, v4);
  v26 = 1;
  *(v12 + *(v9 + 20)) = sub_219BF7724();
  v25 = 2;
  sub_219BF7714();
  v18 = v17;
  (*(v22 + 8))(v8, v14);
  *(v12 + *(v9 + 24)) = v18;
  sub_218E86374(v12, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_218E863D8(v12);
}

uint64_t sub_218E85F60()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x65674178616DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x724774616D726F66;
  }
}

uint64_t sub_218E85FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218E865F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218E85FEC(uint64_t a1)
{
  v2 = sub_218E86320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218E86028(uint64_t a1)
{
  v2 = sub_218E86320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218E86194(uint64_t a1)
{
  result = sub_218E86498(&unk_27CC1C5F0, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218E861EC(void *a1)
{
  a1[1] = sub_218E86498(&qword_27CC12BE0, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
  a1[2] = sub_218E86498(&qword_27CC12BE8, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
  result = sub_218E86498(&qword_27CC12BF0, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_218E86298(uint64_t a1)
{
  v2 = sub_218E86498(&qword_27CC12BE0, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_218E86320()
{
  result = qword_27CC12C00;
  if (!qword_27CC12C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12C00);
  }

  return result;
}

uint64_t sub_218E86374(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218E863D8(uint64_t a1)
{
  v2 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218E86434(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218E86320();
    v7 = a3(a1, &type metadata for RecentlyViewedRecipesTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218E86498(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218E864F4()
{
  result = qword_27CC12C10;
  if (!qword_27CC12C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12C10);
  }

  return result;
}

unint64_t sub_218E8654C()
{
  result = qword_27CC12C18;
  if (!qword_27CC12C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12C18);
  }

  return result;
}

unint64_t sub_218E865A4()
{
  result = qword_27CC12C20;
  if (!qword_27CC12C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12C20);
  }

  return result;
}

uint64_t sub_218E865F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x724774616D726F66 && a2 == 0xEB0000000070756FLL;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65674178616DLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_218E8672C()
{
  if (!qword_280E91FB0)
  {
    type metadata accessor for RecentlyViewedRecipesTagFeedGroupConfigData();
    sub_218E867F8(&qword_280E940F8, type metadata accessor for RecentlyViewedRecipesTagFeedGroupConfigData);
    sub_218E867F8(&qword_280E94100, type metadata accessor for RecentlyViewedRecipesTagFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91FB0);
    }
  }
}

uint64_t sub_218E867F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for RecentlyViewedRecipesTagFeedGroupEmitter()
{
  result = qword_280E95D58;
  if (!qword_280E95D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218E868A0()
{
  sub_218E8672C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_218C5D8B8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_218E86944(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218E869EC(a1, a2);
}

uint64_t sub_218E869EC(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_219BF0BD4();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = type metadata accessor for RecentlyViewedRecipesTagFeedGroup();
  v3[14] = swift_task_alloc();
  v5 = MEMORY[0x277D83D88];
  sub_2186ECC04(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v3[15] = swift_task_alloc();
  sub_2186ECC04(0, &qword_280E90150, MEMORY[0x277D33EC8], v5);
  v3[16] = swift_task_alloc();
  sub_2186ECC04(0, &qword_280E91A70, sub_2189AD5C8, v5);
  v3[17] = swift_task_alloc();
  v6 = sub_219BF2AB4();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  sub_2186F97D4(0);
  v3[21] = swift_task_alloc();
  v7 = sub_219BEF554();
  v3[22] = v7;
  v3[23] = *(v7 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = type metadata accessor for RecentlyViewedRecipesTagFeedGroupConfigData();
  v3[27] = swift_task_alloc();
  v8 = sub_219BED8D4();
  v3[28] = v8;
  v3[29] = *(v8 - 8);
  v3[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218E86D54, 0, 0);
}

uint64_t sub_218E86D54()
{
  v1 = v0;
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[21];
  v25 = v0[17];
  v26 = v0[16];
  v27 = v0[15];
  v5 = v0[9];
  v6 = type metadata accessor for RecentlyViewedRecipesTagFeedGroupEmitter();
  __swift_project_boxed_opaque_existential_1((v5 + *(v6 + 24)), *(v5 + *(v6 + 24) + 24));
  sub_218E8672C();
  v29 = v3;
  sub_219BEDD14();
  v7 = *(v2 + 20);
  *(v1 + 66) = v7;
  sub_219BEDCC4();
  sub_219BEDCC4();
  v8 = sub_219BEE5D4();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = *(v6 + 20);
  *(v1 + 67) = v9;
  sub_2189AD5C8();
  v11 = v10;
  v12 = *(v10 - 8);
  (*(v12 + 16))(v25, v5 + v9, v10);
  (*(v12 + 56))(v25, 0, 1, v11);
  sub_219BEF0B4();
  v13 = *(v1[2] + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v14 = sub_219BF35D4();
  (*(*(v14 - 8) + 56))(v26, 1, 1, v14);
  *(v1 + 272) = 30;
  sub_218E87E54(0, &qword_280E90090, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v15 = *(v1[4] + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v16 = sub_219BF2774();
  (*(*(v16 - 8) + 56))(v27, 1, 1, v16);
  v17 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v17 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  sub_219BF2A84();
  v18 = swift_task_alloc();
  v1[31] = v18;
  *v18 = v1;
  v18[1] = sub_218E871AC;
  v19 = v1[30];
  v21 = v1[24];
  v20 = v1[25];
  v22 = v1[21];
  v23 = MEMORY[0x277D84F90];

  return sub_218F0A5B4(v19, v29 + v7, 0x73657069636572, 0xE700000000000000, v20, v21, v23, v22);
}

uint64_t sub_218E871AC()
{
  v15 = *(*v1 + 264);
  v14 = *(*v1 + 216);
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  v5 = *(*v1 + 176);
  v6 = *(*v1 + 168);
  v7 = *(*v1 + 160);
  v8 = *(*v1 + 152);
  v9 = *(*v1 + 144);
  *(*v1 + 256) = v0;

  (*(v8 + 8))(v7, v9);
  sub_218DCF544(v6, sub_2186F97D4);
  v10 = *(v4 + 8);
  v10(v3, v5);
  v10(v2, v5);
  v11 = sub_219BF1934();
  (*(*(v11 - 8) + 8))(v14 + v15, v11);
  if (v0)
  {
    v12 = sub_218E87670;
  }

  else
  {
    v12 = sub_218E8743C;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_218E8743C()
{
  v1 = v0[29];
  v10 = v0[30];
  v11 = v0[28];
  v2 = v0[12];
  v12 = v0[14];
  v13 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v14 = v0[7];
  (*(v1 + 16))();
  type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  v5 = *(v3 + 8);
  v5(v2, v4);
  v9 = v0[5];
  sub_219BEF134();
  sub_219BEF524();
  v5(v2, v4);
  (*(v1 + 8))(v10, v11);
  v6 = v0[6];
  *(v12 + *(v13 + 20)) = v9;
  *(v12 + *(v13 + 24)) = v6;
  sub_218E87DF0(v12, v14);
  type metadata accessor for TagFeedGroup();
  swift_storeEnumTagMultiPayload();
  sub_218A59C84();
  swift_storeEnumTagMultiPayload();

  v7 = v0[1];

  return v7();
}

uint64_t sub_218E87670()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218E87760@<X0>(uint64_t *a1@<X8>)
{
  sub_218E8672C();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x7000000000000002;
  return result;
}

uint64_t sub_218E877E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs();
  a2[4] = sub_218E867F8(&qword_280E980B0, type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs);
  a2[5] = sub_218E867F8(&qword_27CC12C48, type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);

  return sub_218E87EF0(v2 + v4, boxed_opaque_existential_1);
}

uint64_t sub_218E878A0()
{
  type metadata accessor for RecentlyViewedRecipesTagFeedGroupEmitter();
  sub_2189AD5C8();
  v0 = sub_219BEE964();
  sub_2186ECC04(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  sub_218E87E54(0, &qword_280E91240, MEMORY[0x277D328E0]);
  swift_allocObject();
  *(v5 + v4) = sub_219BEFB94();
  (*(v3 + 104))(v5 + v4, *MEMORY[0x277D32308], v2);
  sub_2191EDA0C(v5);
  return v0;
}

uint64_t sub_218E87A6C()
{
  sub_218E8672C();

  return sub_219BEDCA4();
}

uint64_t sub_218E87A98@<X0>(uint64_t *a1@<X8>)
{
  sub_2186ECC04(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_218E8672C();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218DCF544(inited + 32, sub_2188317B0);
  sub_218E87F54(0);
  a1[3] = v5;
  a1[4] = sub_218E867F8(&qword_27CC12C58, sub_218E87F54);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_218E87C1C()
{
  sub_218E867F8(&qword_27CC12C38, type metadata accessor for RecentlyViewedRecipesTagFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_218E87DF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218E87E54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TagFeedServiceConfig();
    v7 = sub_218E867F8(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_218E87EF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for RecentlyViewedRecipesTagFeedGroupConfigData()
{
  result = qword_280E940E8;
  if (!qword_280E940E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218E87FFC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E8852C(0, &qword_280E8C6D0, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E884D8();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 30;
    v13 = type metadata accessor for RecentlyViewedRecipesTagFeedGroupConfigData();
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218E88264(void *a1)
{
  v3 = v1;
  sub_218E8852C(0, &qword_27CC12C60, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E884D8();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for RecentlyViewedRecipesTagFeedGroupConfigData();
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218E88430(uint64_t a1)
{
  v2 = sub_218E884D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218E8846C(uint64_t a1)
{
  v2 = sub_218E884D8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218E884D8()
{
  result = qword_280E94118;
  if (!qword_280E94118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E94118);
  }

  return result;
}

void sub_218E8852C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218E884D8();
    v7 = a3(a1, &type metadata for RecentlyViewedRecipesTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218E885A4()
{
  result = qword_27CC12C68;
  if (!qword_27CC12C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12C68);
  }

  return result;
}

unint64_t sub_218E885FC()
{
  result = qword_280E94108;
  if (!qword_280E94108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E94108);
  }

  return result;
}

unint64_t sub_218E88654()
{
  result = qword_280E94110;
  if (!qword_280E94110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E94110);
  }

  return result;
}

uint64_t type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs()
{
  result = qword_280E980A0;
  if (!qword_280E980A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218E8871C()
{
  sub_2189AD5C8();
  if (v0 <= 0x3F)
  {
    sub_2186F9548();
    if (v1 <= 0x3F)
    {
      sub_2186ECA28();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_218E887B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2189ADE0C();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE64(a1, v10);
  v16 = *(v13 + 48);
  if (v16(v10, 1, v12) == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    v19 = a2;
    sub_21877C6C0(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    a2 = v19;
    sub_219BEE974();
    if (v16(v10, 1, v12) != 1)
    {
      sub_2189ADEC8(v10);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v10, v12);
  }

  (*(v13 + 32))(a4, v15, v12);
  if (!a2)
  {
    v20 = 12;
    sub_2186F9548();
    swift_allocObject();
    a2 = sub_219BEF534();
  }

  v17 = type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs();
  *(a4 + *(v17 + 20)) = a2;
  if (!a3)
  {
    v20 = 0x4143C68000000000;
    sub_2186ECA28();
    swift_allocObject();
    a3 = sub_219BEF534();
  }

  result = sub_2189ADEC8(a1);
  *(a4 + *(v17 + 24)) = a3;
  return result;
}

uint64_t sub_218E88AB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  sub_2189AD5C8();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v5);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE0C();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v49 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = v39 - v11;
  sub_218E895B4(0, &qword_280E8C770, MEMORY[0x277D844C8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = v39 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E894FC();
  v17 = v51;
  sub_219BF7B34();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v42 = 0;
  v43 = v14;
  v44 = a1;
  v51 = v7;
  LOBYTE(v54) = 0;
  sub_21877C6C0(&qword_280E91A88, sub_2189AD5C8);
  v19 = v50;
  v20 = v46;
  sub_219BF7674();
  sub_2186F9548();
  v22 = v21;
  LOBYTE(v53) = 1;
  sub_21877C6C0(&qword_280E913B8, sub_2186F9548);
  v39[0] = v22;
  sub_219BF7674();
  v40 = v54;
  sub_2186ECA28();
  v24 = v23;
  LOBYTE(v52) = 2;
  sub_21877C6C0(&qword_280E913D8, sub_2186ECA28);
  v25 = v13;
  v39[1] = v24;
  sub_219BF7674();
  v41 = v53;
  v26 = v49;
  sub_2189ADE64(v19, v49);
  v27 = v45;
  v28 = *(v45 + 48);
  if (v28(v26, 1, v20) == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_21877C6C0(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v29 = v47;
    sub_219BEE974();
    v30 = v28(v26, 1, v20);
    v31 = v44;
    if (v30 != 1)
    {
      sub_2189ADEC8(v49);
    }
  }

  else
  {
    v29 = v47;
    (*(v27 + 32))(v47, v26, v20);
    v31 = v44;
  }

  v32 = v51;
  (*(v27 + 32))(v51, v29, v20);
  v33 = v25;
  v34 = v40;
  if (!v40)
  {
    v52 = 12;
    swift_allocObject();
    v34 = sub_219BEF534();
  }

  v35 = v48;
  v36 = v50;
  v37 = v43;
  *(v32 + *(v5 + 20)) = v34;
  v38 = v41;
  if (!v41)
  {
    v52 = 0x4143C68000000000;
    swift_allocObject();
    v38 = sub_219BEF534();
  }

  sub_2189ADEC8(v36);
  (*(v37 + 8))(v16, v33);
  *(v32 + *(v5 + 24)) = v38;
  sub_218E89550(v32, v35);
  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t sub_218E8906C(void *a1)
{
  v3 = v1;
  sub_218E895B4(0, &qword_27CC12C70, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E894FC();
  sub_219BF7B44();
  LOBYTE(v13) = 0;
  sub_2189AD5C8();
  sub_21877C6C0(&qword_27CC0BEC8, sub_2189AD5C8);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs();
    v13 = *(v3 + *(v10 + 20));
    HIBYTE(v12) = 1;
    sub_2186F9548();
    sub_21877C6C0(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
    v13 = *(v3 + *(v10 + 24));
    HIBYTE(v12) = 2;
    sub_2186ECA28();
    sub_21877C6C0(&qword_280E913E0, sub_2186ECA28);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218E89304()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x65674178616DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656C7572;
  }
}

uint64_t sub_218E8935C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218E89730(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218E89384(uint64_t a1)
{
  v2 = sub_218E894FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218E893C0(uint64_t a1)
{
  v2 = sub_218E894FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218E8942C()
{
  type metadata accessor for TagFeedServiceConfig();
  sub_21877C6C0(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    return 0;
  }

  sub_2186F9548();
  if ((sub_219BEF504() & 1) == 0)
  {
    return 0;
  }

  sub_2186ECA28();
  return sub_219BEF504() & 1;
}

unint64_t sub_218E894FC()
{
  result = qword_280E980C8[0];
  if (!qword_280E980C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E980C8);
  }

  return result;
}

uint64_t sub_218E89550(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218E895B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218E894FC();
    v7 = a3(a1, &type metadata for RecentlyViewedRecipesTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218E8962C()
{
  result = qword_27CC12C78;
  if (!qword_27CC12C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12C78);
  }

  return result;
}

unint64_t sub_218E89684()
{
  result = qword_280E980B8;
  if (!qword_280E980B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E980B8);
  }

  return result;
}

unint64_t sub_218E896DC()
{
  result = qword_280E980C0;
  if (!qword_280E980C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E980C0);
  }

  return result;
}

uint64_t sub_218E89730(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65674178616DLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_218E898D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_219BE4864();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_218E89968()
{
  v5 = type metadata accessor for ArticlesSearchFeedGroupConfigData();
  MEMORY[0x28223BE20](v5);
  v0 = sub_219BEF874();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2187089D4(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  MEMORY[0x28223BE20](v2);
  v3 = sub_219BEF554();
  MEMORY[0x28223BE20](v3 - 8);
  sub_218736A44();
  sub_219BEDD44();
  sub_219BEDCA4();

  sub_219BEDCC4();
  sub_219BEDC94();
  sub_219BEDC84();
  sub_219BEDCF4();
  sub_219BEDD04();
  sub_219BEDCD4();
  sub_219BEDCE4();
  sub_219BEDD74();
  sub_219BEDD14();
  sub_218713498(&qword_280EA3EA0, type metadata accessor for ArticlesSearchFeedGroupConfigData);
  sub_218713498(&qword_280EA3EA8, type metadata accessor for ArticlesSearchFeedGroupConfigData);
  return sub_219BEDD34();
}

uint64_t sub_218E89C2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_219BF1934();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v17 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E8A17C(0, &qword_280E8C9C8, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E8A128();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v15;
    v11 = v16;
    v18 = 0;
    sub_218713498(&qword_280E90808, MEMORY[0x277D33478]);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *(v11 + *(type metadata accessor for ArticlesSearchFeedGroupConfigData() + 20)) = 0;
    (*(v12 + 32))(v11, v17, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218E89EA0(void *a1)
{
  v3 = v1;
  sub_218E8A17C(0, &qword_27CC12C80, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E8A128();
  sub_219BF7B44();
  v11[15] = 0;
  sub_219BF1934();
  sub_218713498(&qword_280E90810, MEMORY[0x277D33478]);
  sub_219BF7834();
  if (!v2)
  {
    v11[14] = *(v3 + *(type metadata accessor for ArticlesSearchFeedGroupConfigData() + 20));
    v11[13] = 1;
    sub_218C94574();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218E8A080(uint64_t a1)
{
  v2 = sub_218E8A128();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218E8A0BC(uint64_t a1)
{
  v2 = sub_218E8A128();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218E8A128()
{
  result = qword_280EA3EC0[0];
  if (!qword_280EA3EC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA3EC0);
  }

  return result;
}

void sub_218E8A17C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218E8A128();
    v7 = a3(a1, &type metadata for ArticlesSearchFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218E8A1F4()
{
  result = qword_27CC12C88;
  if (!qword_27CC12C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12C88);
  }

  return result;
}

unint64_t sub_218E8A24C()
{
  result = qword_280EA3EB0;
  if (!qword_280EA3EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA3EB0);
  }

  return result;
}

unint64_t sub_218E8A2A4()
{
  result = qword_280EA3EB8;
  if (!qword_280EA3EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA3EB8);
  }

  return result;
}

uint64_t sub_218E8A318()
{
  v1 = sub_218831A70(MEMORY[0x277D84F90]);
  *(v0 + 24) = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_218E8A3C4;

  return sub_21965E960(v1);
}

uint64_t sub_218E8A3C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_218E8A4F8()
{
  sub_218760638();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  v5 = sub_219BF5BF4();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;

  sub_218AB3D80(0, 0, v3, &unk_219C41580, v6);
}

uint64_t sub_218E8A5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  result = NFInternalBuild();
  if (result)
  {
    sub_219BDC734();
    sub_218E8A67C();
    sub_219BDC7D4();

    return (v6 & 1) == 0 && (v4 - 9) < 2;
  }

  return result;
}

unint64_t sub_218E8A67C()
{
  result = qword_27CC12C90;
  if (!qword_27CC12C90)
  {
    type metadata accessor for PuzzleTapToRadarCommandHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12C90);
  }

  return result;
}

uint64_t sub_218E8A6D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187608D4;

  return sub_218E8A2F8(a1, v4, v5, v6);
}

uint64_t sub_218E8A784(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874ED84(0, &qword_280EE5A80, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for NewsActivityInfoDeserializer();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    type metadata accessor for NewsShortcutItemHandler();
    swift_allocObject();
    return sub_218E8A968(v3, v4, v5);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218E8A8A0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v2 = type metadata accessor for NewsShortcutItemHandler();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5[3] = v2;
    v5[4] = sub_218721A14(&qword_27CC12C98, type metadata accessor for NewsShortcutItemHandler);
    v5[0] = v4;
    sub_219BE9134();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218E8A968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21874ED84(0, &qword_280EE5D88, MEMORY[0x277D6D350]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v15 - v10;
  v15[1] = a1;
  v12 = OBJC_IVAR____TtC7NewsUI223NewsShortcutItemHandler_patterns;
  sub_218E8ABA8();
  sub_219BE9174();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_219C09EC0;
  sub_219BE9164();
  sub_219BE9164();
  *(v3 + v12) = v13;
  sub_21874ED84(0, &qword_280EE5A80, MEMORY[0x277D6D5F0]);
  sub_2189B4DD4();
  sub_219BE5D14();
  (*(v9 + 32))(v3 + OBJC_IVAR____TtC7NewsUI223NewsShortcutItemHandler_navigator, v11, v8);
  *(v3 + OBJC_IVAR____TtC7NewsUI223NewsShortcutItemHandler_userActivityDeserializer) = a2;
  *(v3 + OBJC_IVAR____TtC7NewsUI223NewsShortcutItemHandler_tracker) = a3;
  return v3;
}

void sub_218E8ABA8()
{
  if (!qword_27CC12CA0)
  {
    sub_219BE9174();
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC12CA0);
    }
  }
}

void sub_218E8AC00(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[1] = a2;
  v24 = sub_219BDFAB4();
  v23[0] = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E8AF7C();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDCC14();
  MEMORY[0x28223BE20](v13);
  (*(v15 + 16))(v23 - v14, a1, v13);
  if (swift_dynamicCast())
  {
    (*(v10 + 8))(v12, v9);
    v16 = sub_219BDCC04();
    v17 = sub_219BDD084();
    v19 = v18;

    if (!v3)
    {
      sub_218E8B010(&qword_27CC12CA8, MEMORY[0x277D2DF10]);
      v20 = v24;
      sub_219BE1974();
      sub_2186C6190(v17, v19);
      (*(v23[0] + 32))(a3, v7, v20);
      v21 = type metadata accessor for EngagementEvent();
      swift_storeEnumTagMultiPayload();
      (*(*(v21 - 8) + 56))(a3, 0, 1, v21);
    }
  }

  else
  {
    v22 = type metadata accessor for EngagementEvent();
    (*(*(v22 - 8) + 56))(a3, 1, 1, v22);
  }
}

void sub_218E8AF7C()
{
  if (!qword_280EE8FC8)
  {
    sub_219BDFAC4();
    sub_218E8B010(&qword_280EE8600, MEMORY[0x277D2DF20]);
    v0 = sub_219BDCC14();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE8FC8);
    }
  }
}

uint64_t sub_218E8B010(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218E8B058(uint64_t a1)
{
  v2 = sub_219BF2124();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FeedGroupSectionTitle(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218E8C6DC(a1, v8, type metadata accessor for FeedGroupSectionTitle);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v9 = sub_219BF20D4();
    v11 = v10;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v12 = [*v8 name];
    v9 = sub_219BF5414();
    v11 = v13;
    swift_unknownObjectRelease();
  }

  MEMORY[0x21CECC330](v9, v11);
}

uint64_t sub_218E8B22C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_219BF20F4();

  type metadata accessor for FeedGroupSectionTitle(0);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for FeedGroupSectionHeader(0);
  v7 = *(v6 + 20);
  v8 = type metadata accessor for FeedGroupSectionSubtitle(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = *(v6 + 24);
  v10 = sub_219BDB954();
  (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  if (a1 >> 62)
  {
    v11 = sub_219BF7214();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    v14 = MEMORY[0x277D84F90];
LABEL_17:
    v28 = type metadata accessor for SportsSection();
    *(a2 + v28[5]) = v14;
    v29 = sub_2194AD74C(&unk_282A24A90);
    sub_2189AD3D8(&unk_282A24AB0);

    *(a2 + v28[6]) = v29;
    *(a2 + v28[7]) = 0;
    return result;
  }

  v31 = MEMORY[0x277D84F90];
  result = sub_218C35EB8(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v30 = a2;
    v14 = v31;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v15 = 0;
      v16 = MEMORY[0x277D84FA0];
      do
      {
        v17 = MEMORY[0x21CECE0F0](v15, a1);
        v32 = v14;
        v19 = *(v14 + 16);
        v18 = *(v14 + 24);
        if (v19 >= v18 >> 1)
        {
          v21 = v17;
          sub_218C35EB8((v18 > 1), v19 + 1, 1);
          v17 = v21;
          v14 = v32;
        }

        ++v15;
        *(v14 + 16) = v19 + 1;
        v20 = (v14 + 24 * v19);
        v20[4] = v17;
        v20[5] = v12;
        v20[6] = v16;
      }

      while (v11 != v15);
    }

    else
    {
      v22 = (a1 + 32);
      v23 = MEMORY[0x277D84FA0];
      do
      {
        v24 = *v22;
        v26 = *(v31 + 16);
        v25 = *(v31 + 24);
        swift_unknownObjectRetain();
        if (v26 >= v25 >> 1)
        {
          sub_218C35EB8((v25 > 1), v26 + 1, 1);
        }

        *(v31 + 16) = v26 + 1;
        v27 = (v31 + 24 * v26);
        v27[4] = v24;
        v27[5] = v12;
        v27[6] = v23;
        ++v22;
        --v11;
      }

      while (v11);
    }

    a2 = v30;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_218E8B578@<X0>(void *a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = swift_unknownObjectRetain();
  sub_2198F3F1C(v6, a3);
  if (a2 >> 62)
  {
    v7 = sub_219BF7214();
  }

  else
  {
    v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_17:
    v24 = type metadata accessor for SportsSection();
    *&a3[v24[5]] = v10;
    sub_218E8C844(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C09BA0;
    strcpy(v34, "section-tag-");
    BYTE5(v34[1]) = 0;
    HIWORD(v34[1]) = -5120;
    v26 = [a1 identifier];
    v27 = sub_219BF5414();
    v29 = v28;

    MEMORY[0x21CECC330](v27, v29);

    v30 = v34[1];
    *(inited + 32) = v34[0];
    *(inited + 40) = v30;
    v31 = sub_2194AD74C(inited);
    swift_setDeallocating();
    sub_2189AD3D8(inited + 32);

    *&a3[v24[6]] = v31;

    *&a3[v24[7]] = a1;
    return result;
  }

  v34[0] = MEMORY[0x277D84F90];
  result = sub_218C35EB8(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v32 = a3;
    v33 = a1;
    v10 = v34[0];
    if ((a2 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      v12 = MEMORY[0x277D84FA0];
      do
      {
        v13 = MEMORY[0x21CECE0F0](v11, a2);
        v34[0] = v10;
        v15 = *(v10 + 16);
        v14 = *(v10 + 24);
        if (v15 >= v14 >> 1)
        {
          v17 = v13;
          sub_218C35EB8((v14 > 1), v15 + 1, 1);
          v13 = v17;
          v10 = v34[0];
        }

        ++v11;
        *(v10 + 16) = v15 + 1;
        v16 = (v10 + 24 * v15);
        v16[4] = v13;
        v16[5] = v8;
        v16[6] = v12;
      }

      while (v7 != v11);
    }

    else
    {
      v18 = (a2 + 32);
      v19 = MEMORY[0x277D84FA0];
      do
      {
        v20 = *v18;
        v34[0] = v10;
        v21 = *(v10 + 16);
        v22 = *(v10 + 24);
        swift_unknownObjectRetain();
        if (v21 >= v22 >> 1)
        {
          sub_218C35EB8((v22 > 1), v21 + 1, 1);
          v10 = v34[0];
        }

        *(v10 + 16) = v21 + 1;
        v23 = (v10 + 24 * v21);
        v23[4] = v20;
        v23[5] = v8;
        v23[6] = v19;
        ++v18;
        --v7;
      }

      while (v7);
    }

    a3 = v32;
    a1 = v33;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_218E8B844@<X0>(unint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, char *a4@<X8>)
{
  v45 = swift_unknownObjectRetain();
  sub_2198F3F1C(v45, a4);
  v43 = a2;
  v7 = *(a2 + 8);
  v8 = v7[2];
  v9 = MEMORY[0x277D84F90];
  v47 = a1;
  if (v8)
  {
    v48[0] = MEMORY[0x277D84F90];
    sub_218C35EB8(0, v8, 0);
    v9 = v48[0];
    v7 += 6;
    do
    {
      v11 = *(v7 - 2);
      v10 = *(v7 - 1);
      v12 = *v7;
      swift_unknownObjectRetain();

      v13 = sub_2194B1FF0(&unk_282A24AC0, v12);
      sub_2189AD3D8(&unk_282A24AE0);
      v48[0] = v9;
      v4 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v4 >= v14 >> 1)
      {
        sub_218C35EB8((v14 > 1), v4 + 1, 1);
        v9 = v48[0];
      }

      *(v9 + 16) = v4 + 1;
      v15 = (v9 + 24 * v4);
      v15[4] = v11;
      v15[5] = v10;
      v15[6] = v13;
      v7 += 3;
      --v8;
    }

    while (v8);
    a1 = v47;
  }

  if (a1 >> 62)
  {
    v16 = sub_219BF7214();
  }

  else
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v48[0] = MEMORY[0x277D84F90];
    v18 = v48;
    sub_218C35EB8(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v19 = 0;
    v20 = v47;
    v21 = v48[0];
    do
    {
      if ((v47 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x21CECE0F0](v19, v20);
      }

      else
      {
        v22 = *(v20 + 8 * v19 + 32);
        swift_unknownObjectRetain();
      }

      v48[0] = v21;
      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_218C35EB8((v23 > 1), v24 + 1, 1);
        v20 = v47;
        v21 = v48[0];
      }

      ++v19;
      *(v21 + 16) = v24 + 1;
      v25 = (v21 + 24 * v24);
      v25[4] = v22;
      v25[5] = v17;
      v25[6] = MEMORY[0x277D84FA0];
    }

    while (v16 != v19);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v48[0] = v9;
  sub_2191EEDC0(v21);
  v18 = sub_219A79734(a3, v48[0]);
  if ((v28 & 1) == 0)
  {
LABEL_21:
    sub_218B66F8C(v18, v26, v27, v28);
    v30 = v29;
    v31 = v45;
LABEL_28:
    swift_unknownObjectRelease();
    goto LABEL_29;
  }

  v4 = v28;
  v7 = v27;
  v9 = v26;
  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v32 = swift_dynamicCastClass();
  if (!v32)
  {
    swift_unknownObjectRelease();
    v32 = MEMORY[0x277D84F90];
  }

  v33 = *(v32 + 16);

  if (__OFSUB__(v4 >> 1, v7))
  {
    goto LABEL_32;
  }

  if (v33 != (v4 >> 1) - v7)
  {
LABEL_33:
    swift_unknownObjectRelease();
    v28 = v4;
    v27 = v7;
    v26 = v9;
    goto LABEL_21;
  }

  v30 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v31 = v45;
  if (!v30)
  {
    v30 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

LABEL_29:
  v34 = type metadata accessor for SportsSection();
  *&a4[v34[5]] = v30;
  sub_218E8C844(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  strcpy(v48, "section-tag-");
  BYTE5(v48[1]) = 0;
  HIWORD(v48[1]) = -5120;
  v36 = [v31 identifier];
  v37 = sub_219BF5414();
  v39 = v38;

  MEMORY[0x21CECC330](v37, v39);

  v40 = v48[1];
  *(inited + 32) = v48[0];
  *(inited + 40) = v40;
  v41 = sub_2194AD74C(inited);
  swift_setDeallocating();
  sub_2189AD3D8(inited + 32);
  sub_218E8C680(v43);

  *&a4[v34[6]] = v41;

  *&a4[v34[7]] = v31;
  return result;
}

uint64_t sub_218E8BC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TagFeedCurationHeader(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TagFeedCuration(0);
  sub_218E8C6DC(a1 + *(v9 + 36), v8, type metadata accessor for TagFeedCurationHeader);
  sub_2198F40EC(v8, a3);
  result = sub_219A79734(a2, *(a1 + 8));
  v14 = v13 >> 1;
  v15 = (v13 >> 1) - v12;
  if (__OFSUB__(v13 >> 1, v12))
  {
    goto LABEL_16;
  }

  v16 = result;
  v42 = a1;
  v43 = a3;
  if (v15)
  {
    v17 = v11;
    v18 = v12;
    v44[0] = MEMORY[0x277D84F90];

    result = sub_218C35EB8(0, v15 & ~(v15 >> 63), 0);
    if (v15 < 0)
    {
LABEL_17:
      __break(1u);
      return result;
    }

    v41[1] = v16;
    v19 = v44[0];
    if (v18 <= v14)
    {
      v20 = v14;
    }

    else
    {
      v20 = v18;
    }

    v21 = v20 - v18;
    v22 = (v17 + 24 * v18 + 8);
    while (v21)
    {
      v23 = *(v22 - 1);
      v24 = *v22;
      v25 = v22[1];
      swift_unknownObjectRetain();

      v26 = sub_2194B1FF0(&unk_282A24AF0, v25);
      result = sub_2189AD3D8(&unk_282A24B10);
      v44[0] = v19;
      v28 = *(v19 + 16);
      v27 = *(v19 + 24);
      if (v28 >= v27 >> 1)
      {
        result = sub_218C35EB8((v27 > 1), v28 + 1, 1);
        v19 = v44[0];
      }

      *(v19 + 16) = v28 + 1;
      v29 = (v19 + 24 * v28);
      v29[4] = v23;
      v29[5] = v24;
      v29[6] = v26;
      --v21;
      v22 += 3;
      if (!--v15)
      {
        swift_unknownObjectRelease();
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  swift_unknownObjectRelease();
  v19 = MEMORY[0x277D84F90];
LABEL_14:
  v30 = type metadata accessor for SportsSection();
  v31 = v43;
  *(v43 + v30[5]) = v19;
  sub_218E8C844(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  strcpy(v44, "section-tag-");
  BYTE5(v44[1]) = 0;
  HIWORD(v44[1]) = -5120;
  v33 = v42;
  v34 = *v42;
  v35 = [*v42 identifier];
  v36 = sub_219BF5414();
  v38 = v37;

  MEMORY[0x21CECC330](v36, v38);

  v39 = v44[1];
  *(inited + 32) = v44[0];
  *(inited + 40) = v39;
  *(inited + 48) = 0xD000000000000010;
  *(inited + 56) = 0x8000000219CFD080;
  v40 = sub_2194AD74C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v31 + v30[6]) = v40;
  swift_unknownObjectRetain();
  result = sub_218E8C680(v33);
  *(v31 + v30[7]) = v34;
  return result;
}

uint64_t sub_218E8BFB8()
{
  v1 = *(v0 + *(type metadata accessor for SportsSection() + 20));
  v27 = *(v1 + 16);
  if (!v27)
  {
    return MEMORY[0x277D84F98];
  }

  v2 = 0;
  v3 = v1 + 48;
  v4 = MEMORY[0x277D84F98];
  v26 = v1;
  while (v2 < *(v1 + 16))
  {
    v6 = *(v3 - 16);
    v7 = *(v3 - 8);
    swift_unknownObjectRetain();

    v8 = [v6 identifier];
    v9 = sub_219BF5414();
    v11 = v10;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_21870F700(v9, v11);
    v15 = v4[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      goto LABEL_19;
    }

    v19 = v14;
    if (v4[3] < v18)
    {
      sub_219482D2C(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_21870F700(v9, v11);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      if (v19)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v24 = v13;
    sub_2194933E4();
    v13 = v24;
    if (v19)
    {
LABEL_3:
      v5 = v13;

      *(v4[7] + 8 * v5) = v7;

      swift_unknownObjectRelease();

      goto LABEL_4;
    }

LABEL_12:
    v4[(v13 >> 6) + 8] |= 1 << v13;
    v21 = (v4[6] + 16 * v13);
    *v21 = v9;
    v21[1] = v11;
    *(v4[7] + 8 * v13) = v7;

    swift_unknownObjectRelease();
    v22 = v4[2];
    v17 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v17)
    {
      goto LABEL_20;
    }

    v4[2] = v23;
LABEL_4:
    ++v2;
    v3 += 24;
    v1 = v26;
    if (v27 == v2)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_219BF79A4();
  __break(1u);
  return result;
}

uint64_t sub_218E8C1FC()
{
  v1 = *(v0 + *(type metadata accessor for SportsSection() + 20));
  v27 = *(v1 + 16);
  if (!v27)
  {
    return MEMORY[0x277D84F98];
  }

  v2 = 0;
  v3 = (v1 + 48);
  v4 = MEMORY[0x277D84F98];
  v26 = v1;
  while (v2 < *(v1 + 16))
  {
    v6 = *(v3 - 2);
    v7 = *v3;
    swift_unknownObjectRetain();

    v8 = [v6 identifier];
    v9 = sub_219BF5414();
    v11 = v10;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_21870F700(v9, v11);
    v15 = v4[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      goto LABEL_19;
    }

    v19 = v14;
    if (v4[3] < v18)
    {
      sub_219482D74(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_21870F700(v9, v11);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      if (v19)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v24 = v13;
    sub_21949342C();
    v13 = v24;
    if (v19)
    {
LABEL_3:
      v5 = v13;

      *(v4[7] + 8 * v5) = v7;

      swift_unknownObjectRelease();

      goto LABEL_4;
    }

LABEL_12:
    v4[(v13 >> 6) + 8] |= 1 << v13;
    v21 = (v4[6] + 16 * v13);
    *v21 = v9;
    v21[1] = v11;
    *(v4[7] + 8 * v13) = v7;

    swift_unknownObjectRelease();
    v22 = v4[2];
    v17 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v17)
    {
      goto LABEL_20;
    }

    v4[2] = v23;
LABEL_4:
    ++v2;
    v3 += 3;
    v1 = v26;
    if (v27 == v2)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_219BF79A4();
  __break(1u);
  return result;
}

uint64_t sub_218E8C440()
{
  sub_219BF7314();
  MEMORY[0x21CECC330](0x3D7265646165687BLL, 0xE800000000000000);
  sub_218E8B058(v0);
  MEMORY[0x21CECC330](0x696C64616568202CLL, 0xEC0000003D73656ELL);
  v1 = *(v0 + *(type metadata accessor for SportsSection() + 20));
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v17 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v2, 0);
    v3 = v17;
    v4 = v1 + 48;
    do
    {
      v5 = *(v4 - 16);
      swift_unknownObjectRetain();

      v6 = [v5 identifier];
      v7 = sub_219BF5414();
      v9 = v8;

      swift_unknownObjectRelease();

      v11 = *(v17 + 16);
      v10 = *(v17 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_21870B65C((v10 > 1), v11 + 1, 1);
      }

      *(v17 + 16) = v11 + 1;
      v12 = v17 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  v13 = MEMORY[0x21CECC6D0](v3, MEMORY[0x277D837D0]);
  v15 = v14;

  MEMORY[0x21CECC330](v13, v15);

  MEMORY[0x21CECC330](125, 0xE100000000000000);
  return 0;
}

uint64_t type metadata accessor for SportsSection()
{
  result = qword_280EDD8B0;
  if (!qword_280EDD8B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218E8C680(uint64_t a1)
{
  v2 = type metadata accessor for TagFeedCuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218E8C6DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_218E8C76C()
{
  type metadata accessor for FeedGroupSectionHeader(319);
  if (v0 <= 0x3F)
  {
    sub_218E8C844(319, &qword_280E8F190, &type metadata for SportsSectionHeadline, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_2186E2394();
      if (v2 <= 0x3F)
      {
        sub_21880962C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_218E8C844(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_218E8C894(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v87 = a1;
  v85 = a3;
  v86 = a2;
  v3 = sub_219BE6DF4();
  v83 = *(v3 - 8);
  v84 = v3;
  MEMORY[0x28223BE20](v3);
  v82 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E8E120(0, &qword_27CC0EF98, MEMORY[0x277D6DF88]);
  v80 = *(v5 - 8);
  v81 = v5;
  MEMORY[0x28223BE20](v5);
  v79 = &v69 - v6;
  sub_218E8E120(0, &qword_27CC0AED0, MEMORY[0x277D6D710]);
  v8 = v7;
  v76 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v71 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v70 = &v69 - v12;
  MEMORY[0x28223BE20](v11);
  v73 = &v69 - v13;
  v14 = sub_219BE35B4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x277D83D88];
  sub_218E8E468(0, &qword_27CC12CB0, type metadata accessor for ChannelPickerEngagementModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v69 - v20;
  sub_218E8E468(0, &unk_280EE6660, MEMORY[0x277D31550], v18);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v69 - v23;
  sub_218E8E1E0();
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v28 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v72 = &v69 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v69 - v32;
  MEMORY[0x28223BE20](v31);
  v78 = &v69 - v34;
  sub_218E8E120(0, &qword_27CC0AF00, MEMORY[0x277D6EC60]);
  MEMORY[0x28223BE20](v35);
  v74 = &v69 - v36;
  v75 = v37;
  v38 = *(v37 + 16);
  v77 = v39;
  v38();
  sub_218E8E254(v88, v21, &qword_27CC12CB0, type metadata accessor for ChannelPickerEngagementModel);
  v40 = type metadata accessor for ChannelPickerEngagementModel();
  if ((*(*(v40 - 8) + 48))(v21, 1, v40) == 1)
  {
    sub_218E8E2D4(v21, &qword_27CC12CB0, type metadata accessor for ChannelPickerEngagementModel);
    v41 = 1;
  }

  else
  {
    (*(v15 + 16))(v17, &v21[*(v40 + 20)], v14);
    sub_218E8E364(v21, type metadata accessor for ChannelPickerEngagementModel);
    sub_219BE35A4();
    (*(v15 + 8))(v17, v14);
    v41 = 0;
  }

  v42 = sub_219BE3514();
  v43 = (*(*(v42 - 8) + 56))(v24, v41, 1, v42);
  MEMORY[0x28223BE20](v43);
  v68 = v24;
  v44 = v78;
  sub_218D65B90(sub_218E8E344, &v66, v78);
  sub_218E8E2D4(v24, &unk_280EE6660, MEMORY[0x277D31550]);
  sub_218E8D348(v33);
  v45 = v76;
  v46 = *(v76 + 48);
  if (v46(v33, 1, v8) != 1)
  {
    v54 = *(v45 + 32);
    v55 = v73;
    v54(v73, v33, v8);
    v56 = v72;
    sub_218E8E3C4(v44, v72, sub_218E8E1E0);
    v57 = v46(v56, 1, v8);
    v48 = v82;
    if (v57 == 1)
    {
      (*(v45 + 8))(v55, v8);
      sub_218E8E364(v56, sub_218E8E1E0);
      v50 = v83;
      v49 = v84;
      v51 = v79;
      v52 = v77;
      v53 = v74;
    }

    else
    {
      v61 = v70;
      v54(v70, v56, v8);
      v52 = v77;
      v53 = v74;
      sub_219BEB234();
      v62 = *(v45 + 8);
      v62(v61, v8);
      v62(v55, v8);
      v50 = v83;
      v49 = v84;
      v51 = v79;
    }

    goto LABEL_11;
  }

  sub_218E8E364(v33, sub_218E8E1E0);
  sub_218E8E3C4(v44, v28, sub_218E8E1E0);
  v47 = v46(v28, 1, v8);
  v48 = v82;
  if (v47 == 1)
  {
    sub_218E8E364(v28, sub_218E8E1E0);
    v50 = v83;
    v49 = v84;
    v51 = v79;
    v52 = v77;
    v53 = v74;
LABEL_11:
    (*(v50 + 104))(v48, *MEMORY[0x277D6D868], v49);
    type metadata accessor for ChannelPickerElementModel();
    v63 = sub_218951A90();
    v64 = sub_218E8E4CC(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel);
    v67 = v63;
    v68 = v64;
    v66 = v64;
    sub_219BE8594();
    goto LABEL_12;
  }

  v58 = v71;
  (*(v45 + 32))(v71, v28, v8);
  sub_219BE6944();
  v52 = v77;
  v53 = v74;
  sub_219BEB214();

  (*(v45 + 8))(v58, v8);
  v50 = v83;
  v49 = v84;
  (*(v83 + 104))(v48, *MEMORY[0x277D6D868], v84);
  type metadata accessor for ChannelPickerElementModel();
  v59 = sub_218951A90();
  v60 = sub_218E8E4CC(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel);
  v67 = v59;
  v68 = v60;
  v66 = v60;
  v51 = v79;
  sub_219BE85D4();
LABEL_12:
  (*(v50 + 8))(v48, v49);
  v86(v51);
  (*(v80 + 8))(v51, v81);
  sub_218E8E364(v44, sub_218E8E1E0);
  return (*(v75 + 8))(v53, v52);
}

uint64_t sub_218E8D348@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  sub_218BFAEC4();
  MEMORY[0x28223BE20](v1 - 8);
  v45 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for ChannelPickerElementModel();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE38C4();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE3514();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E8E468(0, &qword_27CC12CB0, type metadata accessor for ChannelPickerEngagementModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for ChannelPickerEngagementModel();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E8E254(v46, v12, &qword_27CC12CB0, type metadata accessor for ChannelPickerEngagementModel);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_218E8E2D4(v12, &qword_27CC12CB0, type metadata accessor for ChannelPickerEngagementModel);
    sub_218E8E120(0, &qword_27CC0AED0, MEMORY[0x277D6D710]);
    return (*(*(v17 - 8) + 56))(v47, 1, 1, v17);
  }

  else
  {
    v19 = v16;
    sub_218980AD8(v12, v16);
    sub_219BE35A4();
    sub_218E8E4CC(&qword_280EE6670, MEMORY[0x277D31550]);
    *&v51[0] = sub_219BF7894();
    *(&v51[0] + 1) = v20;
    (*(v7 + 8))(v9, v6);
    MEMORY[0x21CECC330](45, 0xE100000000000000);
    v21 = sub_219BE3554();
    MEMORY[0x21CECC330](v21);

    MEMORY[0x21CECC330](45, 0xE100000000000000);
    v22 = v39;
    sub_219BE3574();
    sub_218E8E4CC(&unk_280EE65D0, MEMORY[0x277D31758]);
    v23 = v41;
    v24 = sub_219BF7894();
    MEMORY[0x21CECC330](v24);

    (*(v40 + 8))(v22, v23);
    v26 = *(&v51[0] + 1);
    v25 = *&v51[0];
    *&v51[0] = 0x656D656761676E65;
    *(&v51[0] + 1) = 0xEB000000002D746ELL;
    MEMORY[0x21CECC330](v25, v26);

    v27 = v51[0];
    v28 = MEMORY[0x277D84560];
    sub_218E8E468(0, &qword_27CC16970, type metadata accessor for ChannelPickerElementModel, MEMORY[0x277D84560]);
    v29 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v30 = swift_allocObject();
    v46 = xmmword_219C09BA0;
    *(v30 + 16) = xmmword_219C09BA0;
    sub_218E8E3C4(v19, v30 + v29, type metadata accessor for ChannelPickerEngagementModel);
    swift_storeEnumTagMultiPayload();
    sub_218D2E5FC(v49);
    *(&v51[18] + 8) = v49[7];
    *(&v51[19] + 8) = v50[0];
    *(&v51[20] + 1) = *(v50 + 9);
    *(&v51[16] + 8) = v49[5];
    *(&v51[17] + 8) = v49[6];
    *(&v51[13] + 8) = v49[2];
    *(&v51[14] + 8) = v49[3];
    *(&v51[15] + 8) = v49[4];
    *(&v51[11] + 8) = v49[0];
    v48[0] = 1;
    v48[360] = 1;
    v48[352] = 1;
    v48[344] = 1;
    *(&v51[12] + 8) = v49[1];
    memset(v51, 0, 32);
    LOWORD(v51[2]) = 1024;
    *(&v51[2] + 8) = v27;
    *(&v51[3] + 1) = v30;
    v51[4] = 0uLL;
    LOBYTE(v51[5]) = 1;
    *(&v51[5] + 1) = 0;
    LOBYTE(v51[6]) = 1;
    *(&v51[6] + 1) = 0;
    LOBYTE(v51[7]) = 1;
    v51[8] = 0uLL;
    *(&v51[7] + 1) = 0;
    LOBYTE(v51[9]) = 1;
    *(&v51[10] + 8) = 0u;
    *(&v51[9] + 8) = 0u;
    sub_218E8E42C(v51);
    memcpy(v48, v51, 0x151uLL);
    sub_218E8E468(0, &unk_27CC0F990, sub_218951C88, v28);
    sub_218951C88();
    v32 = v31;
    v33 = swift_allocObject();
    *(v33 + 16) = v46;
    sub_218E8E3C4(v19, v43, type metadata accessor for ChannelPickerEngagementModel);
    swift_storeEnumTagMultiPayload();
    sub_218E8E4CC(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel);
    sub_219BE5FB4();
    v34 = sub_218E8E4CC(&qword_27CC0EF88, sub_218951C88);
    v35 = sub_218E8E4CC(&qword_27CC0EF90, sub_218951C88);
    MEMORY[0x21CEB9150](v33, v32, v34, v35);
    sub_218951A90();
    v36 = v47;
    sub_219BE6924();
    sub_218E8E364(v19, type metadata accessor for ChannelPickerEngagementModel);
    sub_218E8E120(0, &qword_27CC0AED0, MEMORY[0x277D6D710]);
    return (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
  }
}

uint64_t sub_218E8DC28(uint64_t a1)
{
  v2 = sub_218E8E4CC(&qword_27CC12CD8, type metadata accessor for ChannelPickerEngagementBlueprintModifier);

  return MEMORY[0x2821D4040](a1, v2);
}

uint64_t sub_218E8DC94(uint64_t a1)
{
  v2 = 0x656D656761676E65;
  v3 = MEMORY[0x277D31550];
  sub_218E8E468(0, &unk_280EE6660, MEMORY[0x277D31550], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_219BE3514();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E8E254(a1, v6, &unk_280EE6660, v3);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_218E8E2D4(v6, &unk_280EE6660, MEMORY[0x277D31550]);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v13[0] = 0x656D656761676E65;
    v13[1] = 0xEB000000002D746ELL;
    sub_218E8E4CC(&qword_280EE6670, MEMORY[0x277D31550]);
    v11 = sub_219BF7894();
    MEMORY[0x21CECC330](v11);

    v2 = v13[0];
    (*(v8 + 8))(v10, v7);
  }

  return v2;
}

uint64_t sub_218E8DEEC(uint64_t a1, uint64_t a2)
{
  sub_218E8E120(0, &qword_27CC0AED0, MEMORY[0x277D6D710]);
  sub_219BE6944();
  sub_218E8DC94(a2);
  v3 = sub_219BF5624();

  return v3 & 1;
}

uint64_t type metadata accessor for ChannelPickerEngagementBlueprintModifier()
{
  result = qword_27CC12CB8;
  if (!qword_27CC12CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218E8DFF4()
{
  sub_218E8E468(319, &qword_27CC12CB0, type metadata accessor for ChannelPickerEngagementModel, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_218E8E120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for ChannelPickerSectionDescriptor;
    v8[1] = type metadata accessor for ChannelPickerElementModel();
    v8[2] = sub_218951A90();
    v8[3] = sub_218E8E4CC(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218E8E1E0()
{
  if (!qword_27CC12CD0)
  {
    sub_218E8E120(255, &qword_27CC0AED0, MEMORY[0x277D6D710]);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC12CD0);
    }
  }
}

uint64_t sub_218E8E254(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_218E8E468(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_218E8E2D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218E8E468(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218E8E364(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218E8E3C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_218E8E42C(void *result)
{
  v1 = result[10] & 1;
  v2 = result[12] & 1;
  v3 = result[14] & 1;
  v4 = result[18] & 1;
  result[4] = *(result + 16);
  result[10] = v1;
  result[12] = v2;
  result[14] = v3;
  result[18] = v4;
  return result;
}

void sub_218E8E468(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218E8E4CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218E8E514()
{
  if (*v0)
  {
    return 0x73696C6863746177;
  }

  else
  {
    return 1937204590;
  }
}

unint64_t sub_218E8E560()
{
  result = qword_27CC12CE0;
  if (!qword_27CC12CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12CE0);
  }

  return result;
}

uint64_t sub_218E8E5C4()
{
  v1 = 0x7374726F7053794DLL;
  if (*v0 != 1)
  {
    v1 = 0x627548646F6F46;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7548656C7A7A7550;
  }
}

unint64_t sub_218E8E628()
{
  result = qword_27CC12CE8;
  if (!qword_27CC12CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12CE8);
  }

  return result;
}

uint64_t sub_218E8E67C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65736F6C63;
  }

  else
  {
    v3 = 1852141679;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x65736F6C63;
  }

  else
  {
    v5 = 1852141679;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_218E8E718()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218E8E790()
{
  sub_219BF5524();
}

uint64_t sub_218E8E7F4()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218E8E868@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_218E8E8C8(uint64_t *a1@<X8>)
{
  v2 = 1852141679;
  if (*v1)
  {
    v2 = 0x65736F6C63;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_218E8E8FC(void *a1)
{

  v2 = sub_219BF53D4();

  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(&v4, &v5);
    swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_218E8E9E0(void **a1, void *a2)
{
  v3 = *a1;
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_2186E801C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  v5 = [v3 description];
  v6 = sub_219BF5414();
  v8 = v7;

  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2186FC3BC();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  sub_219BE5314();

  v9 = sub_219BF53D4();

  [a2 setObject:v3 forKey:v9];

  MEMORY[0x28223BE20](v10);
  sub_2186E801C(0, &unk_27CC0F190, sub_218C1353C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_219BE30B4();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = v3;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_218C135AC;
  *(v12 + 24) = v11;
  v13 = v3;
  v14 = sub_219BE2E54();
  v15 = sub_219BE2F64();

  return v15;
}

uint64_t sub_218E8ECE0()
{
  v0 = sub_219BE16E4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C135D4();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E801C(0, &qword_280EE7F78, MEMORY[0x277D2F870], MEMORY[0x277D83D88]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v22 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v22 - v15;
  sub_2187FAD00();
  sub_219BE6934();
  sub_21968BE24(v22[1], v16);

  (*(v1 + 104))(v14, *MEMORY[0x277D2F5C8], v0);
  (*(v1 + 56))(v14, 0, 1, v0);
  v17 = *(v5 + 56);
  sub_218C13668(v16, v7);
  sub_218C13668(v14, &v7[v17]);
  v18 = *(v1 + 48);
  if (v18(v7, 1, v0) != 1)
  {
    sub_218C13668(v7, v11);
    if (v18(&v7[v17], 1, v0) != 1)
    {
      (*(v1 + 32))(v3, &v7[v17], v0);
      sub_21874E1C8(&unk_280EE7F80, MEMORY[0x277D2F870]);
      v19 = sub_219BF53A4();
      v20 = *(v1 + 8);
      v20(v3, v0);
      sub_218C136FC(v14);
      sub_218C136FC(v16);
      v20(v11, v0);
      sub_218C136FC(v7);
      return v19 & 1;
    }

    sub_218C136FC(v14);
    sub_218C136FC(v16);
    (*(v1 + 8))(v11, v0);
    goto LABEL_6;
  }

  sub_218C136FC(v14);
  sub_218C136FC(v16);
  if (v18(&v7[v17], 1, v0) != 1)
  {
LABEL_6:
    sub_218C13788(v7);
    v19 = 0;
    return v19 & 1;
  }

  sub_218C136FC(v7);
  v19 = 1;
  return v19 & 1;
}

void sub_218E8F0B4(void *a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  v10 = [a1 application];
  v11 = swift_allocObject();
  *(v11 + 16) = a2 & 1;
  *(v11 + 24) = a3;
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;
  *(v11 + 48) = a1;
  v15[4] = sub_218E90184;
  v15[5] = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_218793E0C;
  v15[3] = &block_descriptor_64;
  v12 = _Block_copy(v15);

  v13 = a5;
  v14 = a1;

  [v10 ts:v12 installCACommitCompletionBlock:?];
  _Block_release(v12);
}

uint64_t sub_218E8F244(char a1, uint64_t (*a2)(void), uint64_t a3, void *a4, void *a5)
{
  v35 = a4;
  v36 = a5;
  v39 = a2;
  v7 = sub_219BED174();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BED1D4();
  v37 = *(v11 - 8);
  v38 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BED214();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  if (a1)
  {
    v33 = a3;
    v34 = v8;
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    sub_2186C6148(0, &qword_280E8E3B0);
    v31 = sub_219BF66A4();
    sub_219BED1F4();
    sub_219BED244();
    v32 = *(v15 + 8);
    v32(v18, v14);
    v21 = swift_allocObject();
    v30 = v14;
    v23 = v35;
    v22 = v36;
    v21[2] = v35;
    v21[3] = v22;
    v24 = v33;
    v21[4] = v39;
    v21[5] = v24;
    aBlock[4] = sub_218E90194;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218793E0C;
    aBlock[3] = &block_descriptor_28_1;
    v25 = _Block_copy(aBlock);
    v26 = v23;
    v27 = v22;

    sub_219BED1A4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21874E1C8(&qword_280E927E0, MEMORY[0x277D85198]);
    sub_2186E801C(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_21874EB68();
    sub_219BF7164();
    v28 = v31;
    MEMORY[0x21CECD420](v20, v13, v10, v25);
    _Block_release(v25);

    (*(v34 + 8))(v10, v7);
    (*(v37 + 8))(v13, v38);
    return (v32)(v20, v30);
  }

  else
  {
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    return v39(0);
  }
}

void sub_218E8F724(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  swift_getObjectType();
  sub_218805EA0();
  sub_219BEA9A4();
  sub_219BE70A4();

  v7 = [a2 application];
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  aBlock[4] = sub_218E901A0;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_34;
  v9 = _Block_copy(aBlock);

  [v7 ts:v9 installCACommitCompletionBlock:?];
  _Block_release(v9);
}

uint64_t sub_218E8F980(uint64_t (*a1)(void))
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  return a1(0);
}

void sub_218E8FAEC(void *a1, void *a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  sub_218E8E8FC(a1);
  if (v7 == 2)
  {
    *&v33[0] = 0;
    *(&v33[0] + 1) = 0xE000000000000000;
    sub_219BF7314();
    v35 = 0;
    v36 = 0xE000000000000000;
    MEMORY[0x21CECC330](0xD00000000000003BLL, 0x8000000219CFD140);

    v8 = sub_219BF53D4();

    v9 = [a1 objectForKey_];

    if (v9)
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
      sub_218751558(v32, v33);
      swift_dynamicCast();
      LOBYTE(v33[0]) = v34;
      v10 = PPT.Test.rawValue.getter();
      MEMORY[0x21CECC330](v10);

      v11 = objc_allocWithZone(MEMORY[0x277D6D138]);
      v12 = sub_219BF53D4();

      v13 = [v11 initWithMessage_];

      (a3)[2](a3, v13);
LABEL_8:

      return;
    }

    _Block_release(a3);
    __break(1u);
  }

  else
  {
    v14 = v7;
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_2186E801C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_219C09BA0;
    *&v33[0] = 0;
    *(&v33[0] + 1) = 0xE000000000000000;
    v16 = v14 & 1;
    LOBYTE(v32[0]) = v14 & 1;
    sub_219BF7484();
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = sub_2186FC3BC();
    *(v15 + 32) = 0;
    *(v15 + 40) = 0xE000000000000000;
    sub_219BE5314();

    v17 = sub_219BF53D4();

    v18 = [a1 objectForKey_];

    if (v18)
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
      sub_218751558(v32, v33);
      sub_2186C6148(0, &qword_280E8E480);
      swift_dynamicCast();
      v19 = v35;
      sub_218AAFB68();
      sub_2186C6148(0, &qword_280E8E3B0);
      v20 = sub_219BF66A4();
      *(swift_allocObject() + 16) = v19;
      type metadata accessor for TodayViewController();
      v21 = v19;
      sub_219BE2FB4();

      *(swift_allocObject() + 16) = v21;
      v22 = v21;
      v23 = sub_219BE2E54();
      sub_219BE3054();

      v24 = sub_219BE1C44();
      *(swift_allocObject() + 16) = a1;
      v25 = a1;
      sub_219BE2F64();

      v26 = swift_allocObject();
      *(v26 + 16) = v25;
      *(v26 + 24) = v16;
      *(v26 + 32) = sub_218967168;
      *(v26 + 40) = v6;
      *(v26 + 48) = a2;
      v27 = swift_allocObject();
      *(v27 + 16) = sub_218E90170;
      *(v27 + 24) = v26;
      v28 = v25;

      v29 = a2;
      v30 = sub_219BE2E54();
      sub_219BE2F74();

      v31 = swift_allocObject();
      *(v31 + 16) = sub_218967168;
      *(v31 + 24) = v6;

      v13 = sub_219BE2E54();
      sub_219BE2FD4();

      goto LABEL_8;
    }
  }

  _Block_release(a3);
  __break(1u);
}

unint64_t sub_218E901BC()
{
  result = qword_27CC12D08;
  if (!qword_27CC12D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12D08);
  }

  return result;
}

uint64_t PrefetchedArticlesFetchResult.selectedArticleID.getter()
{
  v1 = *(v0 + OBJC_IVAR___TSPrefetchedArticlesFetchResult_selectedArticleID);

  return v1;
}

id PrefetchedArticlesFetchResult.__allocating_init(selectedArticleID:articleIDs:prefetchedHeadlines:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___TSPrefetchedArticlesFetchResult_selectedArticleID];
  *v10 = a1;
  *(v10 + 1) = a2;
  *&v9[OBJC_IVAR___TSPrefetchedArticlesFetchResult_articleIDs] = a3;
  *&v9[OBJC_IVAR___TSPrefetchedArticlesFetchResult_prefetchedHeadlines] = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id PrefetchedArticlesFetchResult.init(selectedArticleID:articleIDs:prefetchedHeadlines:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR___TSPrefetchedArticlesFetchResult_selectedArticleID];
  *v10 = a1;
  *(v10 + 1) = a2;
  *&v4[OBJC_IVAR___TSPrefetchedArticlesFetchResult_articleIDs] = a3;
  *&v4[OBJC_IVAR___TSPrefetchedArticlesFetchResult_prefetchedHeadlines] = a4;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

id PrefetchedArticlesFetchResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PrefetchedArticlesFetchResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AudioTrackDetailsRouteModel()
{
  result = qword_27CC12D28;
  if (!qword_27CC12D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218E90758@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_219BE1D94();
  sub_21872CB70(&qword_27CC0B2F0, MEMORY[0x277D6CAF0]);
  swift_allocError();
  (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D6CAD0], v2);
  sub_2189FE994(0);
  swift_allocObject();
  result = sub_219BE2FF4();
  *a1 = result;
  return result;
}

uint64_t sub_218E90890@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_219BF02B4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_219BF0334();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_219BEFE34();
  MEMORY[0x28223BE20](v4 - 8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_clusteringResultProvider);

    v8 = v6(v7);
  }

  else
  {
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    sub_219BF6204();
    v10 = MEMORY[0x277D84F90];
    sub_219BE5314();
    sub_219BF0314();
    sub_219BF0294();
    sub_2194B0B04(v10);
    sub_219BEFDD4();
    sub_2189FE994(0);
    swift_allocObject();
    result = sub_219BE3014();
    v8 = result;
  }

  *a1 = v8;
  return result;
}

uint64_t sub_218E90ACC()
{
  v1 = OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_analyticsData;
  v2 = sub_219BE0FE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_218E919AC(v0 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_articleScoreSummaryDataList);

  return swift_deallocClassInstance();
}

uint64_t _s11MyHeadlinesCMa()
{
  result = qword_280EDD160;
  if (!qword_280EDD160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218E90C10()
{
  sub_219BE0FE4();
  if (v0 <= 0x3F)
  {
    sub_218E91948(319, &qword_280EE8150, MEMORY[0x277D2EDE8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

char *sub_218E90D40(uint64_t a1, unint64_t a2)
{
  v93 = a1;
  v3 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v3);
  v5 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E91948(0, &qword_280EE8150, MEMORY[0x277D2EDE8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v92 = &v82 - v7;
  v91 = sub_219BE0FE4();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BEDC04();
  v103 = *(v9 - 8);
  v104 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v95 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v100 = &v82 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v99 = &v82 - v15;
  MEMORY[0x28223BE20](v14);
  v102 = &v82 - v16;
  if (a2 >> 62)
  {
    goto LABEL_55;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    v18 = MEMORY[0x277D84F90];
    v88 = v5;
    v87 = v3;
    if (!i)
    {
      goto LABEL_12;
    }

    v105 = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v20 = 0;
    v18 = v105;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x21CECE0F0](v20, a2);
      }

      else
      {
        v21 = *(a2 + 8 * v20 + 32);
        swift_unknownObjectRetain();
      }

      v22 = [v21 identifier];
      v23 = sub_219BF5414();
      v25 = v24;
      swift_unknownObjectRelease();

      v105 = v18;
      v27 = *(v18 + 16);
      v26 = *(v18 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_21870B65C((v26 > 1), v27 + 1, 1);
        v18 = v105;
      }

      ++v20;
      *(v18 + 16) = v27 + 1;
      v28 = v18 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
    }

    while (i != v20);
LABEL_12:
    v5 = sub_218845F78(v18);

    v3 = *(v93 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_scoredItems);
    v29 = *(v3 + 16);
    v101 = v3;
    v97 = v29;
    if (v29)
    {
      v30 = 0;
      v96 = v103 + 16;
      v31 = v5 + 56;
      v94 = (v103 + 8);
      v98 = (v103 + 32);
      v32 = MEMORY[0x277D84F90];
      while (v30 < *(v3 + 16))
      {
        v33 = (*(v103 + 80) + 32) & ~*(v103 + 80);
        a2 = *(v103 + 72);
        (*(v103 + 16))(v102, v3 + v33 + a2 * v30, v104);
        v34 = sub_219BEDBA4();
        v36 = v35;
        if (*(v5 + 2) && (v37 = v34, sub_219BF7AA4(), sub_219BF5524(), v38 = sub_219BF7AE4(), v39 = -1 << v5[32], v40 = v38 & ~v39, ((*&v31[(v40 >> 3) & 0xFFFFFFFFFFFFFF8] >> v40) & 1) != 0))
        {
          v41 = ~v39;
          while (1)
          {
            v42 = (*(v5 + 6) + 16 * v40);
            v43 = *v42 == v37 && v42[1] == v36;
            if (v43 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v40 = (v40 + 1) & v41;
            if (((*&v31[(v40 >> 3) & 0xFFFFFFFFFFFFFF8] >> v40) & 1) == 0)
            {
              goto LABEL_26;
            }
          }

          (*v94)(v102, v104);
        }

        else
        {
LABEL_26:

          v44 = *v98;
          (*v98)(v99, v102, v104);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v106 = v32;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_218C34908(0, *(v32 + 16) + 1, 1);
            v32 = v106;
          }

          v47 = *(v32 + 16);
          v46 = *(v32 + 24);
          if (v47 >= v46 >> 1)
          {
            sub_218C34908(v46 > 1, v47 + 1, 1);
            v32 = v106;
          }

          *(v32 + 16) = v47 + 1;
          (v44)(v32 + v33 + v47 * a2, v99, v104);
        }

        ++v30;
        v3 = v101;
        if (v30 == v97)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
    }

    else
    {
      v32 = MEMORY[0x277D84F90];
LABEL_32:
      v96 = v32;
      v48 = v93;
      v49 = *(v93 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_clusteringResultProvider + 8);
      v86 = *(v93 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_clusteringResultProvider);
      v94 = v49;
      v50 = *(v90 + 16);
      v85 = v90 + 16;
      v84 = v50;
      v50(v89, (v93 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_analyticsData), v91);
      sub_218E918B4(v48 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_articleScoreSummaryDataList, v92);
      v83 = *(v48 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_consumedScoredItems);
      v51 = MEMORY[0x277D84F90];
      v102 = *(v3 + 16);
      if (!v102)
      {
LABEL_52:

        v105 = v83;

        sub_2191EEEC8(v51);
        v69 = v105;
        v70 = *(v93 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_decayedPublisherDiversificationPenalty);
        v71 = swift_allocObject();
        v72 = v86;
        v73 = v94;
        v71[2] = v86;
        v71[3] = v73;
        v74 = v96;
        v71[4] = v96;

        v75 = sub_219BE2CE4();

        _s11MyHeadlinesCMa();
        v76 = swift_allocObject();
        v77 = OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_clusteringResult;
        v105 = MEMORY[0x277D84F90];
        sub_21872CB70(&qword_280EE7E70, MEMORY[0x277D6CA70]);
        sub_218A4E214(0);
        sub_21872CB70(&qword_280E8F600, sub_218A4E214);
        sub_219BF7164();
        sub_218E91948(0, &qword_280EE7188, sub_2189FE994, MEMORY[0x277D6CEE8]);
        swift_allocObject();
        *(v76 + v77) = sub_219BE2D14();
        v78 = v89;
        v79 = v91;
        v84(v76 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_analyticsData, v89, v91);
        v80 = v92;
        sub_218E918B4(v92, v76 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_articleScoreSummaryDataList);
        *(v76 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_consumedScoredItems) = v69;
        *(v76 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_decayedPublisherDiversificationPenalty) = v70;
        *(v76 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_scoredItems) = v74;
        v81 = (v76 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_clusteringResultProvider);
        *v81 = v72;
        v81[1] = v73;

        sub_218E919AC(v80);
        (*(v90 + 8))(v78, v79);
        *(v76 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_clusteringResult) = v75;

        return v76;
      }

      v52 = 0;
      v53 = v5 + 56;
      v97 = (v103 + 32);
      v98 = (v103 + 8);
      v99 = (v103 + 16);
      while (v52 < *(v3 + 16))
      {
        v54 = (*(v103 + 80) + 32) & ~*(v103 + 80);
        a2 = *(v103 + 72);
        (*(v103 + 16))(v100, v3 + v54 + a2 * v52, v104);
        v55 = sub_219BEDBA4();
        v57 = v56;
        if (*(v5 + 2) && (v58 = v55, sub_219BF7AA4(), sub_219BF5524(), v59 = sub_219BF7AE4(), v60 = -1 << v5[32], v61 = v59 & ~v60, ((*&v53[(v61 >> 3) & 0xFFFFFFFFFFFFFF8] >> v61) & 1) != 0))
        {
          v62 = ~v60;
          while (1)
          {
            v63 = (*(v5 + 6) + 16 * v61);
            v64 = *v63 == v58 && v63[1] == v57;
            if (v64 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v61 = (v61 + 1) & v62;
            if (((*&v53[(v61 >> 3) & 0xFFFFFFFFFFFFFF8] >> v61) & 1) == 0)
            {
              goto LABEL_34;
            }
          }

          v65 = *v97;
          (*v97)(v95, v100, v104);
          v66 = swift_isUniquelyReferenced_nonNull_native();
          v106 = v51;
          if ((v66 & 1) == 0)
          {
            sub_218C34908(0, *(v51 + 16) + 1, 1);
            v51 = v106;
          }

          v68 = *(v51 + 16);
          v67 = *(v51 + 24);
          if (v68 >= v67 >> 1)
          {
            sub_218C34908(v67 > 1, v68 + 1, 1);
            v51 = v106;
          }

          *(v51 + 16) = v68 + 1;
          v65((v51 + v54 + v68 * a2), v95, v104);
        }

        else
        {
LABEL_34:

          (*v98)(v100, v104);
        }

        ++v52;
        v3 = v101;
        if (v52 == v102)
        {
          goto LABEL_52;
        }
      }
    }

    __break(1u);
LABEL_55:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_218E918B4(uint64_t a1, uint64_t a2)
{
  sub_218E91948(0, &qword_280EE8150, MEMORY[0x277D2EDE8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_218E91948(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218E919AC(uint64_t a1)
{
  sub_218E91948(0, &qword_280EE8150, MEMORY[0x277D2EDE8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_218E91A38(unint64_t a1, unint64_t a2)
{
  v84 = a1;
  v3 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v3);
  v5 = v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E91948(0, &qword_280EE8150, MEMORY[0x277D2EDE8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v83 = v78 - v7;
  v82 = sub_219BE0FE4();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BEDC04();
  v94 = *(v9 - 8);
  v95 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v90 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v91 = v78 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v86 = v78 - v15;
  MEMORY[0x28223BE20](v14);
  v93 = v78 - v16;
  if (a2 >> 62)
  {
    goto LABEL_55;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    v18 = MEMORY[0x277D84F90];
    v78[3] = v5;
    v78[2] = v3;
    if (!i)
    {
      goto LABEL_12;
    }

    v96 = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v20 = 0;
    v18 = v96;
    v3 = a2 & 0xC000000000000001;
    do
    {
      if (v3)
      {
        v21 = MEMORY[0x21CECE0F0](v20, a2);
      }

      else
      {
        v21 = *(a2 + 8 * v20 + 32);
        swift_unknownObjectRetain();
      }

      v22 = [v21 identifier];
      v5 = sub_219BF5414();
      v24 = v23;
      swift_unknownObjectRelease();

      v96 = v18;
      v26 = *(v18 + 16);
      v25 = *(v18 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_21870B65C((v25 > 1), v26 + 1, 1);
        v18 = v96;
      }

      ++v20;
      *(v18 + 16) = v26 + 1;
      v27 = v18 + 16 * v26;
      *(v27 + 32) = v5;
      *(v27 + 40) = v24;
    }

    while (i != v20);
LABEL_12:
    v28 = sub_218845F78(v18);

    v79 = *(v84 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_scoredItems);
    a2 = *(v84 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_consumedScoredItems);
    v29 = *(a2 + 16);
    v92 = a2;
    v89 = v29;
    if (v29)
    {
      v30 = 0;
      v88 = v94 + 16;
      v31 = v28 + 56;
      v85 = (v94 + 32);
      v87 = (v94 + 8);
      v32 = MEMORY[0x277D84F90];
      while (v30 < *(a2 + 16))
      {
        v3 = (*(v94 + 80) + 32) & ~*(v94 + 80);
        v33 = *(v94 + 72);
        (*(v94 + 16))(v93, a2 + v3 + v33 * v30, v95);
        v34 = sub_219BEDBA4();
        v36 = v35;
        if (*(v28 + 16) && (v5 = v34, sub_219BF7AA4(), sub_219BF5524(), v37 = sub_219BF7AE4(), v38 = -1 << *(v28 + 32), v39 = v37 & ~v38, ((*(v31 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) != 0))
        {
          v40 = ~v38;
          while (1)
          {
            v41 = (*(v28 + 48) + 16 * v39);
            v42 = *v41 == v5 && v41[1] == v36;
            if (v42 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v39 = (v39 + 1) & v40;
            if (((*(v31 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          v43 = *v85;
          (*v85)(v86, v93, v95);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v97 = v32;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_218C34908(0, *(v32 + 16) + 1, 1);
            v32 = v97;
          }

          v46 = *(v32 + 16);
          v45 = *(v32 + 24);
          v5 = v46 + 1;
          if (v46 >= v45 >> 1)
          {
            sub_218C34908(v45 > 1, v46 + 1, 1);
            v32 = v97;
          }

          *(v32 + 16) = v5;
          v43((v32 + v3 + v46 * v33), v86, v95);
        }

        else
        {
LABEL_14:

          (*v87)(v93, v95);
        }

        ++v30;
        a2 = v92;
        if (v30 == v89)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
    }

    else
    {
      v32 = MEMORY[0x277D84F90];
LABEL_33:
      v96 = v79;

      sub_2191EEEC8(v32);
      v85 = v96;
      v5 = v84;
      v47 = *(v84 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_clusteringResultProvider + 8);
      v79 = *(v84 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_clusteringResultProvider);
      v86 = v47;
      v48 = *(v81 + 16);
      v78[1] = v81 + 16;
      v78[0] = v48;
      v48(v80, v84 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_analyticsData, v82);
      sub_218E918B4(v5 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_articleScoreSummaryDataList, v83);
      v49 = MEMORY[0x277D84F90];
      v89 = *(a2 + 16);
      if (!v89)
      {
LABEL_52:

        v66 = *(v84 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_decayedPublisherDiversificationPenalty);
        v67 = swift_allocObject();
        v68 = v79;
        v69 = v86;
        v67[2] = v79;
        v67[3] = v69;
        v70 = v85;
        v67[4] = v85;

        v71 = sub_219BE2CE4();

        _s11MyHeadlinesCMa();
        v72 = swift_allocObject();
        v73 = OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_clusteringResult;
        v96 = MEMORY[0x277D84F90];
        sub_21872CB70(&qword_280EE7E70, MEMORY[0x277D6CA70]);
        sub_218A4E214(0);
        sub_21872CB70(&qword_280E8F600, sub_218A4E214);
        sub_219BF7164();
        sub_218E91948(0, &qword_280EE7188, sub_2189FE994, MEMORY[0x277D6CEE8]);
        swift_allocObject();
        *(v72 + v73) = sub_219BE2D14();
        v74 = v80;
        v75 = v82;
        (v78[0])(v72 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_analyticsData, v80, v82);
        v76 = v83;
        sub_218E918B4(v83, v72 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_articleScoreSummaryDataList);
        *(v72 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_consumedScoredItems) = v49;
        *(v72 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_decayedPublisherDiversificationPenalty) = v66;
        *(v72 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_scoredItems) = v70;
        v77 = (v72 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_clusteringResultProvider);
        *v77 = v68;
        v77[1] = v69;

        sub_218E919AC(v76);
        (*(v81 + 8))(v74, v75);
        *(v72 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_clusteringResult) = v71;

        return v72;
      }

      v50 = 0;
      v51 = v28 + 56;
      v87 = (v94 + 8);
      v88 = v94 + 16;
      v93 = (v94 + 32);
      while (v50 < *(a2 + 16))
      {
        v52 = (*(v94 + 80) + 32) & ~*(v94 + 80);
        v53 = a2 + v52;
        v54 = *(v94 + 72);
        (*(v94 + 16))(v91, v53 + v54 * v50, v95);
        v55 = sub_219BEDBA4();
        v57 = v56;
        if (*(v28 + 16) && (v3 = v55, sub_219BF7AA4(), sub_219BF5524(), v58 = sub_219BF7AE4(), v59 = -1 << *(v28 + 32), v60 = v58 & ~v59, ((*(v51 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) != 0))
        {
          v5 = ~v59;
          while (1)
          {
            v61 = (*(v28 + 48) + 16 * v60);
            v62 = *v61 == v3 && v61[1] == v57;
            if (v62 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v60 = (v60 + 1) & v5;
            if (((*(v51 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
            {
              goto LABEL_47;
            }
          }

          (*v87)(v91, v95);
        }

        else
        {
LABEL_47:

          v63 = *v93;
          (*v93)(v90, v91, v95);
          v64 = swift_isUniquelyReferenced_nonNull_native();
          v97 = v49;
          if ((v64 & 1) == 0)
          {
            sub_218C34908(0, *(v49 + 16) + 1, 1);
            v49 = v97;
          }

          v5 = *(v49 + 16);
          v65 = *(v49 + 24);
          v3 = v5 + 1;
          if (v5 >= v65 >> 1)
          {
            sub_218C34908(v65 > 1, v5 + 1, 1);
            v49 = v97;
          }

          *(v49 + 16) = v3;
          v63(v49 + v52 + v5 * v54, v90, v95);
        }

        ++v50;
        a2 = v92;
        if (v50 == v89)
        {
          goto LABEL_52;
        }
      }
    }

    __break(1u);
LABEL_55:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_218E925C4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))(*(v1 + 32));
  *a1 = result;
  return result;
}

uint64_t sub_218E9264C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v39 = a3;
  v38 = a2;
  v40 = a4;
  sub_218E92F48(0, &qword_280E919D8, sub_2186F6D38);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = &v33 - v6;
  v37 = type metadata accessor for ArticleListHistoryFeedGroupKnobs();
  v7 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E92F48(0, qword_280EA71B0, type metadata accessor for ArticleListHistoryFeedGroupKnobs);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  sub_218E92F48(0, &qword_280ECACA0, type metadata accessor for HistoryFeedGroupKnobs);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v33 - v16;
  v18 = type metadata accessor for HistoryFeedGroupKnobs();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E92F9C(a1, v17, &qword_280ECACA0, type metadata accessor for HistoryFeedGroupKnobs);
  v22 = *(v19 + 48);
  if (v22(v17, 1, v18) == 1)
  {
    v34 = a1;
    v23 = v37;
    (*(v7 + 56))(v14, 1, 1, v37);
    sub_218E92F9C(v14, v12, qword_280EA71B0, type metadata accessor for ArticleListHistoryFeedGroupKnobs);
    v24 = *(v7 + 48);
    if (v24(v12, 1, v23) == 1)
    {
      sub_2186F6D38(0);
      v26 = *(*(v25 - 8) + 56);
      v33 = v22;
      v27 = v35;
      v26(v35, 1, 1, v25);
      v28 = v36;
      v29 = v27;
      v22 = v33;
      sub_219AF8758(v29, 0, v36);
      sub_218E93008(v14, qword_280EA71B0, type metadata accessor for ArticleListHistoryFeedGroupKnobs);
      if (v24(v12, 1, v37) != 1)
      {
        sub_218E93008(v12, qword_280EA71B0, type metadata accessor for ArticleListHistoryFeedGroupKnobs);
      }
    }

    else
    {
      sub_218E93008(v14, qword_280EA71B0, type metadata accessor for ArticleListHistoryFeedGroupKnobs);
      v28 = v36;
      sub_218E93064(v12, v36, type metadata accessor for ArticleListHistoryFeedGroupKnobs);
    }

    sub_218E93064(v28, v21, type metadata accessor for ArticleListHistoryFeedGroupKnobs);
    sub_218E93008(v34, &qword_280ECACA0, type metadata accessor for HistoryFeedGroupKnobs);
    if (v22(v17, 1, v18) != 1)
    {
      sub_218E93008(v17, &qword_280ECACA0, type metadata accessor for HistoryFeedGroupKnobs);
    }
  }

  else
  {
    sub_218E93008(a1, &qword_280ECACA0, type metadata accessor for HistoryFeedGroupKnobs);
    sub_218E93064(v17, v21, type metadata accessor for HistoryFeedGroupKnobs);
  }

  v30 = v40;
  sub_218E93064(v21, v40, type metadata accessor for HistoryFeedGroupKnobs);
  if (v39)
  {
    v31 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v31 = v38 & ~(v38 >> 63);
  }

  result = type metadata accessor for HistoryFeedKnobsConfig();
  *(v30 + *(result + 20)) = v31;
  return result;
}

uint64_t sub_218E92BBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_218E92F48(0, &qword_280ECACA0, type metadata accessor for HistoryFeedGroupKnobs);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  sub_218E930CC();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E93128();
  sub_219BF7B34();
  if (!v2)
  {
    type metadata accessor for HistoryFeedGroupKnobs();
    v18 = 0;
    sub_218780CE0(&qword_280ECACE0, type metadata accessor for HistoryFeedGroupKnobs);
    sub_219BF7674();
    v17 = 1;
    sub_219BF7674();
    sub_218E9264C(v6, v15, v16, v14);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218E92DE8@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_218E92E48@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_218E92EAC(uint64_t a1)
{
  v2 = sub_218E93128();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218E92EE8(uint64_t a1)
{
  v2 = sub_218E93128();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_218E92F48(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_218E92F9C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_218E92F48(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_218E93008(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218E92F48(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218E93064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_218E930CC()
{
  if (!qword_280E8CE58)
  {
    sub_218E93128();
    v0 = sub_219BF7774();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8CE58);
    }
  }
}

unint64_t sub_218E93128()
{
  result = qword_280EC8220[0];
  if (!qword_280EC8220[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EC8220);
  }

  return result;
}

uint64_t sub_218E9317C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoryFeedGroupKnobs();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_218E931F4()
{
  result = qword_27CC12D38;
  if (!qword_27CC12D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12D38);
  }

  return result;
}

unint64_t sub_218E9324C()
{
  result = qword_280EC8210;
  if (!qword_280EC8210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC8210);
  }

  return result;
}

unint64_t sub_218E932A4()
{
  result = qword_280EC8218;
  if (!qword_280EC8218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC8218);
  }

  return result;
}

id sub_218E9331C(double a1)
{
  v2 = sub_219BF53D4();
  sub_21899E550();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  v4 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v5 = objc_opt_self();
  v6 = *MEMORY[0x277D743F8];
  v7 = v4;
  v8 = [v5 systemFontOfSize:21.0 weight:v6];
  *(inited + 64) = sub_2186C6148(0, &qword_280E8DB00);
  *(inited + 40) = v8;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_21899E5A8(inited + 32);
  type metadata accessor for Key(0);
  sub_21899E604();
  v9 = sub_219BF5204();

  [v2 sizeWithAttributes_];
  v11 = v10;

  v12 = 17.5;
  if (v11 <= a1)
  {
    v12 = 21.0;
  }

  v13 = [v5 systemFontOfSize:v12 weight:v6];

  return v13;
}

id sub_218E934DC(double a1)
{
  v2 = sub_219BF53D4();
  sub_21899E550();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  v4 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v5 = objc_opt_self();
  v6 = *MEMORY[0x277D74408];
  v7 = v4;
  v8 = [v5 systemFontOfSize:17.0 weight:v6];
  *(inited + 64) = sub_2186C6148(0, &qword_280E8DB00);
  *(inited + 40) = v8;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_21899E5A8(inited + 32);
  type metadata accessor for Key(0);
  sub_21899E604();
  v9 = sub_219BF5204();

  [v2 sizeWithAttributes_];
  v11 = v10;

  v12 = 14.0;
  if (v11 > a1)
  {
    v12 = 17.0;
  }

  v13 = [v5 systemFontOfSize:v12 weight:v6];

  return v13;
}

id sub_218E93694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), SEL *a4)
{
  v5 = a3();
  sub_21899E550();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  v7 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v8 = sub_2186C6148(0, &qword_280E8DB00);
  *(inited + 40) = v5;
  v9 = *MEMORY[0x277D740C0];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = objc_opt_self();
  v11 = v7;
  v12 = v5;
  v13 = v9;
  v14 = [v10 *a4];
  *(inited + 104) = sub_2186C6148(0, &qword_280E8DA80);
  *(inited + 80) = v14;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588();
  swift_arrayDestroy();
  v15 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v16 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_21899E604();
  v17 = sub_219BF5204();

  v18 = [v15 initWithString:v16 attributes:v17];

  return v18;
}

uint64_t sub_218E93858(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_218C82C04(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_218E96E40(v6);
  return sub_219BF73E4();
}

uint64_t sub_218E938E8@<X0>(id *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = [*a1 subscribedTags];
  sub_2186D6710(0, &qword_280E8E680);
  v7 = sub_219BF5924();

  if (a2)
  {
    v8 = [v5 autoFavoriteTags];
    v9 = sub_219BF5924();

    v10 = v9;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  result = sub_2191ED550(v10);
  *a3 = v7;
  return result;
}

void sub_218E93A34()
{
  v1 = v0;
  v2 = [*(v0 + 32) autoFavoriteTagIDs];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = [*(v0 + 16) slowCachedTagsForIDs_];

  if (!v4)
  {
LABEL_39:
    __break(1u);
    return;
  }

  sub_2186D6710(0, &qword_280E8E680);
  v5 = sub_219BF5214();

  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = sub_2194B7E58(v6, 0);
    v9 = sub_2194B7E40(&v19, v8 + 32, v6, v5);

    sub_218E5B79C();
    if (v9 != v6)
    {
      __break(1u);
      goto LABEL_38;
    }

    v19 = v7;
    if (v8 < 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
    v19 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_33;
    }
  }

  if ((v8 & 0x4000000000000000) == 0)
  {
    v10 = *(v8 + 16);
    goto LABEL_10;
  }

LABEL_33:
  v10 = sub_219BF7214();
LABEL_10:
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v12, v8);
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v12 >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_33;
        }

        swift_unknownObjectRetain();
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v14 = v19;
          if ((v19 & 0x8000000000000000) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_34;
        }
      }

      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      ++v12;
      if (v13 == v10)
      {
        goto LABEL_20;
      }
    }
  }

  v14 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_34;
  }

LABEL_23:
  if ((v14 & 0x4000000000000000) == 0)
  {
    v15 = *(v14 + 16);
    if (v15)
    {
      goto LABEL_25;
    }

LABEL_35:

    return;
  }

LABEL_34:
  v15 = sub_219BF7214();
  if (!v15)
  {
    goto LABEL_35;
  }

LABEL_25:
  v19 = v11;
  sub_219BF73F4();
  if (v15 < 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v16 = 0;
  v17 = MEMORY[0x277D84FA0];
  do
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x21CECE0F0](v16, v14);
    }

    else
    {
      v18 = *(v14 + 8 * v16 + 32);
      swift_unknownObjectRetain();
    }

    ++v16;
    swift_getObjectType();
    sub_218E97B80(v18, v17, v17, 0, v1);
    swift_unknownObjectRelease();
    sub_219BF73D4();
    sub_219BF7414();
    sub_219BF7424();
    sub_219BF73E4();
  }

  while (v15 != v16);
}

void sub_218E93D80()
{
  v1 = v0;
  v2 = [*(v0 + 32) mutedTagIDs];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = sub_219BF5924();
  v20 = sub_218845F78(v4);
  v5 = [*(v0 + 16) slowCachedTagsForIDs_];

  if (!v5)
  {
LABEL_39:
    __break(1u);
    return;
  }

  sub_2186D6710(0, &qword_280E8E680);
  v6 = sub_219BF5214();

  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v9 = sub_2194B7E58(v7, 0);
    v10 = sub_2194B7E40(&v21, v9 + 32, v7, v6);

    sub_218E5B79C();
    if (v10 != v7)
    {
      __break(1u);
      goto LABEL_38;
    }

    v21 = v8;
    if (v9 < 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
    v21 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_33;
    }
  }

  if ((v9 & 0x4000000000000000) == 0)
  {
    v11 = *(v9 + 16);
    goto LABEL_10;
  }

LABEL_33:
  v11 = sub_219BF7214();
LABEL_10:
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v13, v9);
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v13 >= *(v9 + 16))
        {
          __break(1u);
          goto LABEL_33;
        }

        swift_unknownObjectRetain();
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v15 = v21;
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_34;
        }
      }

      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      ++v13;
      if (v14 == v11)
      {
        goto LABEL_20;
      }
    }
  }

  v15 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_34;
  }

LABEL_23:
  if ((v15 & 0x4000000000000000) == 0)
  {
    v16 = *(v15 + 16);
    if (v16)
    {
      goto LABEL_25;
    }

LABEL_35:

    return;
  }

LABEL_34:
  v16 = sub_219BF7214();
  if (!v16)
  {
    goto LABEL_35;
  }

LABEL_25:
  v21 = v12;
  sub_219BF73F4();
  if (v16 < 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v17 = 0;
  v18 = MEMORY[0x277D84FA0];
  do
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x21CECE0F0](v17, v15);
    }

    else
    {
      v19 = *(v15 + 8 * v17 + 32);
      swift_unknownObjectRetain();
    }

    ++v17;
    swift_getObjectType();
    sub_218E97B80(v19, v18, v20, 0, v1);
    swift_unknownObjectRelease();
    sub_219BF73D4();
    sub_219BF7414();
    sub_219BF7424();
    sub_219BF73E4();
  }

  while (v16 != v17);
}

uint64_t sub_218E940FC()
{
  v1 = v0;
  v2 = *(v0 + 32);
  v3 = [v2 orderedCachedSubscribedTags];
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  sub_2186D6710(0, &qword_280E8E680);
  v5 = sub_219BF5924();

  v6 = [*(v1 + 40) allPurchasedTagIDs];
  if (v6)
  {
    v7 = v6;
    v33 = sub_219BF5D44();
  }

  else
  {
    v33 = MEMORY[0x277D84FA0];
  }

  v9 = [v2 mutedTagIDs];
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v11 = v9;
    v12 = sub_219BF5924();
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v13 = sub_218845F78(v12);

  v15 = sub_218846010(v14);

  v16 = sub_218E984F4(v15, v33, v13, v1, v33);

  v18 = sub_218846010(v17);

  v32 = v13;
  v30 = sub_218E9883C(v18, v33, v13, v1, v16);

  v19 = sub_218846010(v5);
  v20 = v19;
  v34 = v10;
  if (v19 >> 62)
  {
LABEL_36:
    v21 = sub_219BF7214();
  }

  else
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = v1;
  if (v21)
  {
    v22 = 0;
    v1 = v20 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x21CECE0F0](v22, v20);
        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_36;
        }

        v23 = *(v20 + 8 * v22 + 32);
        swift_unknownObjectRetain();
        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
LABEL_22:
          __break(1u);
LABEL_23:
          v25 = v34;
          if ((v34 & 0x8000000000000000) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_37;
        }
      }

      if ([v23 tagType] == 1)
      {
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v22;
      if (v24 == v21)
      {
        goto LABEL_23;
      }
    }
  }

  v25 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_37;
  }

LABEL_26:
  if ((v25 & 0x4000000000000000) == 0)
  {
    v26 = *(v25 + 16);
    v27 = v31;
    if (v26)
    {
      goto LABEL_28;
    }

LABEL_38:

    return v30;
  }

LABEL_37:
  v26 = sub_219BF7214();
  v27 = v31;
  if (!v26)
  {
    goto LABEL_38;
  }

LABEL_28:
  result = sub_219BF73F4();
  if ((v26 & 0x8000000000000000) == 0)
  {
    v28 = 0;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x21CECE0F0](v28, v25);
      }

      else
      {
        v29 = *(v25 + 8 * v28 + 32);
        swift_unknownObjectRetain();
      }

      ++v28;
      swift_getObjectType();
      sub_218E97B80(v29, v33, v32, 0, v27);
      swift_unknownObjectRelease();
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
    }

    while (v26 != v28);
    goto LABEL_38;
  }

  __break(1u);
  return result;
}

BOOL sub_218E94530(void *a1, unint64_t a2)
{
  if ([a1 tagType] != 2)
  {
    return 0;
  }

  if (a2 >> 62)
  {
LABEL_20:
    v17 = a2 & 0xFFFFFFFFFFFFFF8;
    v18 = sub_219BF7214();
  }

  else
  {
    v17 = a2 & 0xFFFFFFFFFFFFFF8;
    v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v6 = v18 == v4;
    if (v18 == v4)
    {
      break;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x21CECE0F0](v4, a2);
      if (__OFADD__(v4, 1))
      {
LABEL_15:
        __break(1u);
LABEL_16:

        return 0;
      }
    }

    else
    {
      if (v4 >= *(v17 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      v7 = *(a2 + 8 * v4 + 32);

      if (__OFADD__(v4, 1))
      {
        goto LABEL_15;
      }
    }

    v8 = [*(v7 + 16) identifier];
    v9 = sub_219BF5414();
    v11 = v10;

    v12 = [a1 identifier];
    v13 = sub_219BF5414();
    v15 = v14;

    if (v9 == v13 && v11 == v15)
    {
      goto LABEL_16;
    }

    v5 = sub_219BF78F4();

    ++v4;
  }

  while ((v5 & 1) == 0);
  return v6;
}

uint64_t sub_218E946F8()
{
  v0 = sub_218845E04();
  v1 = v0;
  v8 = MEMORY[0x277D84F90];
  if (v0 >> 62)
  {
LABEL_16:
    v2 = sub_219BF7214();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x21CECE0F0](v3, v1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_13:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v4 = *(v1 + 8 * v3 + 32);

          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_13;
          }
        }

        if (*(v4 + 25) == 1)
        {
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }

        else
        {
        }

        ++v3;
      }

      while (v5 != v2);
    }
  }

  v8 = sub_219759084(v6);
  sub_218E93858(&v8);

  return v8;
}

void sub_218E94884(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = a1 + 40;
    v6 = MEMORY[0x277D84F90];
    v37 = a1 + 40;
    do
    {
      v39 = v6;
      v7 = (v5 + 16 * v4);
      v8 = v4;
      while (1)
      {
        if (v8 >= v3)
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v4 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_29;
        }

        v10 = *(v7 - 1);
        v9 = *v7;
        v11 = objc_opt_self();

        v12 = sub_219BF53D4();
        LOBYTE(v11) = [v11 isPuzzleTypeIdentifier_];

        if (v11)
        {
          break;
        }

        ++v8;
        v7 += 2;
        if (v4 == v3)
        {
          goto LABEL_14;
        }
      }

      v6 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21870B65C(0, *(v39 + 16) + 1, 1);
        v6 = v39;
      }

      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_21870B65C((v13 > 1), v14 + 1, 1);
        v6 = v39;
      }

      *(v6 + 16) = v14 + 1;
      v15 = v6 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v9;
      v5 = v37;
    }

    while (v4 != v3);
LABEL_14:
    v16 = 0;
    v17 = a1 + 40;
    v38 = MEMORY[0x277D84F90];
LABEL_15:
    v18 = (v17 + 16 * v16);
    v19 = v16;
    while (v19 < v3)
    {
      v16 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_31;
      }

      v21 = *(v18 - 1);
      v20 = *v18;
      v22 = objc_opt_self();

      v23 = sub_219BF53D4();
      LOBYTE(v22) = [v22 isPuzzleTypeIdentifier_];

      if ((v22 & 1) == 0)
      {
        v24 = v38;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21870B65C(0, *(v38 + 16) + 1, 1);
          v24 = v38;
        }

        v26 = *(v24 + 16);
        v25 = *(v24 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_21870B65C((v25 > 1), v26 + 1, 1);
          v24 = v38;
        }

        *(v24 + 16) = v26 + 1;
        v38 = v24;
        v27 = v24 + 16 * v26;
        *(v27 + 32) = v21;
        *(v27 + 40) = v20;
        v17 = a1 + 40;
        if (v16 == v3)
        {
LABEL_26:
          FCCurrentQoSOrUtilityIfMain();
          v28 = FCDispatchQueueForQualityOfService();
          MEMORY[0x28223BE20](v28);
          sub_218E9AED8(0, &qword_280EE6B90, sub_218E99B88, MEMORY[0x277D6CF30]);
          swift_allocObject();
          sub_219BE30B4();

          MEMORY[0x28223BE20](v29);
          swift_allocObject();
          sub_219BE30B4();

          sub_219BE31C4();
          v30 = swift_allocObject();
          v30[2] = a1;
          v30[3] = a2;
          v30[4] = a3;

          v31 = sub_219BE2E54();
          sub_219BE2F94();

          v32 = swift_allocObject();
          *(v32 + 16) = a2;
          *(v32 + 24) = a3;

          v33 = sub_219BE2E54();
          sub_219BE2FD4();

          return;
        }

        goto LABEL_15;
      }

      ++v19;
      v18 += 2;
      if (v16 == v3)
      {
        goto LABEL_26;
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    a2(MEMORY[0x277D84F90], 0);
  }
}

void sub_218E94DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = *(a5 + 16);

  sub_218ACE2AC(a6);
  v16 = sub_219BF5904();

  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = sub_218C1DDD4;
  v17[5] = v14;
  v19[4] = sub_218E99CE0;
  v19[5] = v17;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_218E938D4;
  v19[3] = &block_descriptor_40_0;
  v18 = _Block_copy(v19);

  [v15 fetchTagsForTagIDs:v16 qualityOfService:25 callbackQueue:a7 completionHandler:v18];
  _Block_release(v18);
}

void sub_218E94F24(int a1, id a2, void (*a3)(id), uint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    v7 = a2;
    a3(a2);
  }

  else
  {
    a5();
  }
}

void sub_218E94F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = *(a5 + 24);

  sub_218ACE2AC(a6);
  v16 = sub_219BF5904();

  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = sub_218846958;
  v17[5] = v14;
  v19[4] = sub_218E99C54;
  v19[5] = v17;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_218E95C94;
  v19[3] = &block_descriptor_65;
  v18 = _Block_copy(v19);

  [v15 fetchPuzzleTypesForPuzzleTypeIDs:v16 cachePolicy:0 qualityOfService:25 callbackQueue:a7 completionHandler:v18];
  _Block_release(v18);
}

void sub_218E95118(uint64_t a1, id a2, void (*a3)(id), uint64_t a4, void (*a5)(unint64_t))
{
  if (a2)
  {
    v7 = a2;
    a3(a2);
  }

  else
  {
    if (a1)
    {
      v9 = sub_218E951C8(a1);
      a5(v9);
    }

    else
    {
      a5(0);
    }
  }
}

unint64_t sub_218E951C8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_218E99C60(0, &unk_280E8D110, MEMORY[0x277D84460]);
    v1 = sub_219BF75B4();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v4)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        v12 = (*(a1 + 48) + 16 * (v11 | (v10 << 6)));
        v14 = *v12;
        v13 = v12[1];
        sub_2186D6710(0, &qword_280E8E130);
        sub_2186D6710(0, &qword_280E8E680);

        swift_unknownObjectRetain();
        swift_dynamicCast();
        result = sub_21870F700(v14, v13);
        if (v15)
        {
          v8 = (v1[6] + 16 * result);
          *v8 = v14;
          v8[1] = v13;
          v9 = result;

          *(v1[7] + 8 * v9) = v21;
          result = swift_unknownObjectRelease();
          v7 = v10;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v1[2] >= v1[3])
          {
            goto LABEL_20;
          }

          *(v1 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v16 = (v1[6] + 16 * result);
          *v16 = v14;
          v16[1] = v13;
          *(v1[7] + 8 * result) = v21;
          v17 = v1[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_21;
          }

          v1[2] = v19;
          v7 = v10;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_218E95428(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_218768CF4(0, &qword_280E8D068, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84460]);
    v2 = sub_219BF75B4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_218751558(&v22, v24);
        sub_218751558(v24, v25);
        sub_218751558(v25, &v23);
        result = sub_21870F700(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          result = sub_218751558(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_218751558(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_218E956A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_218768CF4(0, &qword_280E8D020, MEMORY[0x277D84030], MEMORY[0x277D84038], MEMORY[0x277D84460]);
    v2 = sub_219BF75B4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2186D1230(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_218751558(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_218751558(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_218751558(v31, v32);
    result = sub_219BF7284();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_218751558(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_218E95988(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_218768CF4(0, &qword_280E8D020, MEMORY[0x277D84030], MEMORY[0x277D84038], MEMORY[0x277D84460]);
    v2 = sub_219BF75B4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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

  v9 = 0;
  v10 = MEMORY[0x277D837D0];
  while (v5)
  {
LABEL_15:
    v14 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v15 = v14[1];
    *&v31[0] = *v14;
    *(&v31[0] + 1) = v15;

    swift_dynamicCast();
    sub_218768CF4(0, qword_280E8FA40, v10, MEMORY[0x277D837E0], MEMORY[0x277D834F8]);
    swift_dynamicCast();
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_218751558(&v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_218751558(v30, v31);
    result = sub_219BF7284();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v18);
        if (v22 != -1)
        {
          v11 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v11 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
    v12 = *(v2 + 48) + 40 * v11;
    *v12 = v23;
    *(v12 + 16) = v24;
    *(v12 + 32) = v25;
    result = sub_218751558(v31, (*(v2 + 56) + 32 * v11));
    ++*(v2 + 16);
  }

  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v9;
    if (v5)
    {
      v9 = v13;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_218E95CA8(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (a2)
  {
    sub_2186D6710(0, a4);
    v5 = sub_219BF5214();
  }

  v7 = a3;
  v6(v5, a3);
}

uint64_t sub_218E95D54(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(unint64_t, void))
{
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    v16 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v9 = *a1;
  v8 = a1[1];
  v28 = MEMORY[0x277D84F90];
  sub_219BF73F4();
  v10 = (a3 + 40);
  do
  {
    v11 = *(v10 - 1);
    v12 = *v10;
    if (v9)
    {
      v13 = *(v9 + 16);

      if (v13)
      {
        sub_21870F700(v11, v12);
        if (v14)
        {
LABEL_12:
          swift_unknownObjectRetain();
          goto LABEL_3;
        }
      }
    }

    else
    {
    }

    if (v8)
    {
      if (*(v8 + 16))
      {
        sub_21870F700(v11, v12);
        if (v15)
        {
          goto LABEL_12;
        }
      }
    }

LABEL_3:

    sub_219BF73D4();
    sub_219BF7414();
    sub_219BF7424();
    sub_219BF73E4();
    v10 += 2;
    --v5;
  }

  while (v5);
  v16 = v28;
LABEL_15:
  v17 = 0;
  v18 = *(v16 + 16);
  v19 = v6;
  while (1)
  {
    if (v18 == v17)
    {

      if (v19 >> 62)
      {
        goto LABEL_32;
      }

      v22 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
        goto LABEL_24;
      }

LABEL_33:

      v26 = MEMORY[0x277D84F90];
LABEL_34:
      a4(v26, 0);
    }

    if (v17 >= *(v16 + 16))
    {
      break;
    }

    if (*(v16 + 8 * v17++ + 32))
    {
      v21 = swift_unknownObjectRetain();
      MEMORY[0x21CECC690](v21);
      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v19 = v6;
    }
  }

  __break(1u);
LABEL_32:
  v22 = sub_219BF7214();
  if (!v22)
  {
    goto LABEL_33;
  }

LABEL_24:
  result = sub_219BF73F4();
  if ((v22 & 0x8000000000000000) == 0)
  {
    v24 = 0;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x21CECE0F0](v24, v19);
      }

      else
      {
        v25 = *(v19 + 8 * v24 + 32);
        swift_unknownObjectRetain();
      }

      ++v24;
      swift_getObjectType();
      sub_218E97A74(v25, 0, a2);
      swift_unknownObjectRelease();
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
    }

    while (v22 != v24);

    v26 = v6;
    goto LABEL_34;
  }

  __break(1u);
  return result;
}

uint64_t sub_218E96058(uint64_t result)
{
  v2 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v3 = *(result + 16);
  if (v3)
  {
    v4 = v1;
    v5 = 0;
    v6 = result + 40;
    v20 = result + 40;
    do
    {
      v21 = v2;
      v7 = v6 + 16 * v5;
      for (i = v5; ; ++i)
      {
        if (i >= v3)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          return result;
        }

        v5 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_18;
        }

        v9 = objc_opt_self();

        v10 = sub_219BF53D4();
        LODWORD(v9) = [v9 isPuzzleTypeIdentifier_];

        if (v9)
        {
          v11 = *(v4 + 24);
          v12 = sub_219BF53D4();
          v13 = [v11 cachedPuzzleTypeForID_];

          if (v13)
          {
            break;
          }
        }

        v14 = *(v4 + 16);
        v15 = sub_219BF53D4();
        v16 = [v14 slowCachedTagForID_];

        if (v16)
        {
          swift_getObjectType();
          v17 = swift_unknownObjectRetain();
          sub_218E97A74(v17, 0, v4);

          v18 = swift_unknownObjectRelease_n();
          goto LABEL_13;
        }

        v7 += 16;
        if (v5 == v3)
        {
          return v21;
        }
      }

      swift_getObjectType();
      v19 = swift_unknownObjectRetain();
      sub_218E97A74(v19, 0, v4);
      swift_unknownObjectRelease_n();

LABEL_13:
      MEMORY[0x21CECC690](v18);
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      result = sub_219BF5A54();
      v2 = v22;
      v6 = v20;
    }

    while (v5 != v3);
  }

  return v2;
}

id sub_218E962AC()
{
  v1 = objc_opt_self();
  v2 = sub_219BF53D4();
  LODWORD(v1) = [v1 isPuzzleTypeIdentifier_];

  if (v1 && (v3 = *(v0 + 24), v4 = sub_219BF53D4(), v5 = [v3 cachedPuzzleTypeForID_], v4, v5))
  {
    swift_getObjectType();
    v6 = swift_unknownObjectRetain();
    v7 = sub_218E97A74(v6, 0, v0);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = *(v0 + 16);
    v9 = sub_219BF53D4();
    v10 = [v8 slowCachedTagForID_];

    if (!v10)
    {
      return 0;
    }

    swift_getObjectType();
    v7 = sub_218E97A74(v10, 0, v0);
  }

  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_218E96400(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  sub_2186D0C98(0, &qword_280E8B750, MEMORY[0x277D84560]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_219C09BA0;
  *(v15 + 32) = a6;
  *(v15 + 40) = a7;
  swift_bridgeObjectRetain_n();

  sub_218E9A31C(v15, a5, a3, a4, a6, a7, sub_218846958, v14);

  swift_bridgeObjectRelease_n();
}

void sub_218E96530(unint64_t a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  if (a2)
  {
    a3();
    return;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    v8 = a1;
    v18 = a6;
    v19 = a3;
    v20 = a5;
    v21 = a7;
    v12 = sub_219BF7214();
    a5 = v20;
    a7 = v21;
    a6 = v18;
    a3 = v19;
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_12:
    v13 = a3;
    v14 = a6;
    v15 = a5;
    sub_219BF7314();

    MEMORY[0x21CECC330](v15, v14);
    sub_218E9A2C0();
    v16 = swift_allocError();
    *v17 = 0xD000000000000018;
    *(v17 + 8) = 0x8000000219CFD560;
    *(v17 + 16) = 0;
    v13();

    return;
  }

  v8 = a1;
  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_5:
  v9 = v8;
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = a7;
    v11 = MEMORY[0x21CECE0F0](0, v9);
  }

  else
  {
    if (!*(v7 + 16))
    {
      __break(1u);
      return;
    }

    v10 = a7;
    v11 = *(v9 + 32);
  }

  v10(v11);
}

uint64_t sub_218E966EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  sub_218E9A8EC(a6, a5, sub_218846958, v12, a3, a4);
}

uint64_t sub_218E967B4(unint64_t a1)
{
  v2 = v1;
  v4 = [*(v1 + 40) allPurchasedTagIDs];
  if (v4)
  {
    v5 = v4;
    v6 = sub_219BF5D44();
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
  }

  v7 = [*(v2 + 32) mutedTagIDs];
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v9 = v7;
    v10 = sub_219BF5924();
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v11 = sub_218845F78(v10);

  if (!(a1 >> 62))
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_9;
    }

LABEL_17:

    return MEMORY[0x277D84F90];
  }

  v12 = sub_219BF7214();
  if (!v12)
  {
    goto LABEL_17;
  }

LABEL_9:
  v16 = v8;
  result = sub_219BF73F4();
  if (v12 < 0)
  {
    __break(1u);
  }

  else
  {
    v14 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x21CECE0F0](v14, a1);
      }

      else
      {
        v15 = *(a1 + 8 * v14 + 32);
        swift_unknownObjectRetain();
      }

      ++v14;
      swift_getObjectType();
      sub_218E97B80(v15, v6, v11, 0, v2);
      swift_unknownObjectRelease();
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
    }

    while (v12 != v14);

    return v16;
  }

  return result;
}

id sub_218E969B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_opt_self();
  v8 = sub_219BF53D4();
  LODWORD(v7) = [v7 isPuzzleTypeIdentifier_];

  if (v7)
  {
    v9 = *(v3 + 24);
    v10 = sub_219BF53D4();
    v11 = [v9 cachedPuzzleTypeForID_];

    if (v11)
    {
      goto LABEL_7;
    }

    v12 = sub_219BF53D4();
    v13 = [v9 cachedPuzzleTypeForID_];
  }

  else
  {
    v14 = *(v3 + 16);
    v15 = sub_219BF53D4();
    v11 = [v14 fastCachedTagForID_];

    if (v11)
    {
      goto LABEL_7;
    }

    v12 = sub_219BF53D4();
    v13 = [v14 slowCachedTagForID_];
  }

  v11 = v13;

  if (!v11)
  {
    sub_2186F20D4();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_219C09BA0;
    *(v24 + 56) = MEMORY[0x277D837D0];
    *(v24 + 64) = sub_2186FC3BC();
    *(v24 + 32) = a1;
    *(v24 + 40) = a2;
    sub_2186C6148(0, &qword_280E8D790);

    v25 = sub_219BF6F44();
    sub_219BF6214();
    sub_219BE5314();

    return 0;
  }

LABEL_7:
  swift_unknownObjectRetain();
  result = [*(v3 + 40) allPurchasedTagIDs];
  if (result)
  {
    v17 = result;
    v18 = sub_219BF5D44();

    v19 = [*(v3 + 32) mutedTagIDs];
    if (v19)
    {
      v20 = v19;
      v21 = sub_219BF5924();
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    v22 = sub_218845F78(v21);

    swift_getObjectType();
    v23 = sub_218E97B80(v11, v18, v22, a3, v3);

    swift_unknownObjectRelease_n();
    return v23;
  }

  __break(1u);
  return result;
}

uint64_t sub_218E96CC4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 6));

  return swift_deallocClassInstance();
}

uint64_t sub_218E96D24()
{
  sub_218E9AED8(0, &qword_27CC12D50, type metadata accessor for TagModel, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_218E96DB4()
{
  sub_218E9AED8(0, &qword_280EE6AF0, sub_218A3A1C4, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_218E96E40(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_219BF7884();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for TagModel();
        v6 = sub_219BF5A34();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_218E97024(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_218E96F44(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_218E96F44(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = result - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;

      v12 = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(v8, v11);

      if (!v12)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v13 = *v10;
      v8 = v10[1];
      *v10 = v8;
      v10[1] = v13;
      --v10;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}