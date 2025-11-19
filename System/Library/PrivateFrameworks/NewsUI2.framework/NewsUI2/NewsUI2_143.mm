uint64_t sub_2196B0F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v114 = a4;
  v128 = a1;
  v111 = sub_219BDBD34();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_219BDF7C4();
  v108 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v115 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FEC(0);
  MEMORY[0x28223BE20](v7 - 8);
  v105 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_219BE0724();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v85 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_219BDF0E4();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_219BEC504();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_219BDF094();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v13 - 8);
  v95 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_219BE16D4();
  v97 = *(v98 - 8);
  v15 = MEMORY[0x28223BE20](v98);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v96 = &v80 - v18;
  v94 = sub_219BE0444();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B612C();
  v117 = v20;
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B61C0(0, &qword_280EE37B0, MEMORY[0x277D6EC60]);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v28 = &v80 - v27;
  v112 = sub_219BDFCE4();
  v29 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v31 = &v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = swift_projectBox();
  sub_2196B61C0(0, &unk_280EE5140, MEMORY[0x277D6DA48]);
  v33 = v32;
  sub_219BE7594();
  v118 = v33;
  v119 = a2;
  sub_219BE7564();
  v34 = sub_2196B6B28(&qword_280EE8DF0, MEMORY[0x277D2FBA8]);
  result = sub_219BEB304();
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

  v81 = v17;
  sub_219BDFCD4();
  v36 = *(v21 + 8);
  v89 = v21 + 8;
  v87 = v36;
  v36(v23, v117);
  v37 = *(v26 + 8);
  v88 = v26 + 8;
  v86 = v37;
  v37(v28, v25);
  sub_2196B6ABC(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v39 = v38;
  v40 = sub_219BDCD44();
  v90 = v34;
  v41 = v40;
  v42 = *(v40 - 8);
  v43 = *(v42 + 72);
  v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v120 = *(v42 + 80);
  v121 = v43;
  v113 = v39;
  v45 = swift_allocObject();
  v124 = xmmword_219C09BA0;
  *(v45 + 16) = xmmword_219C09BA0;
  v46 = *(v42 + 104);
  v126 = *MEMORY[0x277CEAD18];
  v122 = v42 + 104;
  v123 = v41;
  v125 = v46;
  v46(v45 + v44);
  sub_2196B6B28(&unk_280EE8590, MEMORY[0x277D2E058]);
  v127 = "articleFooterContext";
  v47 = v112;
  sub_219BDCCC4();

  (*(v29 + 8))(v31, v47);
  sub_219BE7594();
  sub_219BE7564();
  result = sub_219BEB314();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v48 = v92;
  sub_219BE0434();
  v87(v23, v117);
  v86(v28, v25);
  v49 = swift_allocObject();
  *(v49 + 16) = v124;
  v50 = v123;
  v125(v49 + v44, v126, v123);
  sub_2196B6B28(&unk_280EE8400, MEMORY[0x277D2E530]);
  v51 = v94;
  sub_219BDCCC4();

  (*(v93 + 8))(v48, v51);
  v52 = v91;
  swift_beginAccess();
  v53 = v52;
  v54 = v95;
  sub_2196B6404(v53, v95, sub_218B58D58);
  v55 = v97;
  v56 = v98;
  if ((*(v97 + 48))(v54, 1, v98) == 1)
  {
    sub_2196B6A5C(v54, sub_218B58D58);
  }

  else
  {
    v57 = v96;
    (*(v55 + 32))(v96, v54, v56);
    (*(v55 + 16))(v81, v57, v56);
    v58 = v82;
    sub_219BDF084();
    v59 = swift_allocObject();
    *(v59 + 16) = v124;
    v125(v59 + v44, v126, v50);
    sub_2196B6B28(&unk_280EE88C0, MEMORY[0x277D2D888]);
    v60 = v84;
    sub_219BDCCC4();

    (*(v83 + 8))(v58, v60);
    v61 = swift_allocObject();
    *(v61 + 16) = v124;
    v125(v61 + v44, v126, v123);
    sub_2196B6B28(&unk_280EE7FB0, MEMORY[0x277D2F590]);
    v62 = v96;
    sub_219BDCCC4();

    (*(v55 + 8))(v62, v56);
  }

  v63 = v107;
  v64 = v105;
  v65 = v101;
  v66 = v100;
  v67 = v99;
  sub_2196B646C();
  v112 = v68;
  sub_219BF07D4();
  v69 = sub_219BEC4F4();
  (*(v66 + 8))(v67, v65);
  swift_getObjectType();
  v70 = v102;
  sub_219BF67F4();
  v71 = swift_allocObject();
  *(v71 + 16) = v124;
  v125(v71 + v44, v126, v123);
  sub_2196B6B28(&qword_280EE88B0, MEMORY[0x277D2D8A8]);
  v72 = v104;
  sub_219BDCCC4();

  (*(v103 + 8))(v70, v72);
  v117 = v69;
  sub_219BF6824();
  v73 = v106;
  if ((*(v106 + 48))(v64, 1, v63) == 1)
  {
    sub_2196B6A5C(v64, sub_218B58FEC);
  }

  else
  {
    v74 = v64;
    v75 = v85;
    (*(v73 + 32))(v85, v74, v63);
    v76 = swift_allocObject();
    *(v76 + 16) = v124;
    v125(v76 + v44, v126, v123);
    sub_2196B6B28(&unk_27CC0DC50, MEMORY[0x277D2E738]);
    sub_219BDCCC4();

    (*(v73 + 8))(v75, v63);
  }

  sub_219BF07B4();
  sub_219BDF7B4();
  sub_2196B6B28(&qword_280EE8680, MEMORY[0x277D2DD68]);
  sub_219BDCCC4();
  sub_219BE0A94();
  v77 = v109;
  sub_219BE75A4();
  sub_2196B6B28(&qword_280EE8228, MEMORY[0x277D2EA68]);
  sub_219BDCC64();
  v78 = *(v110 + 8);
  v79 = v111;
  v78(v77, v111);
  sub_219BE7574();
  sub_219BDCC74();
  swift_unknownObjectRelease();
  v78(v77, v79);
  return (*(v108 + 8))(v115, v116);
}

uint64_t sub_2196B2124(uint64_t a1)
{
  sub_2196B61C0(0, &qword_280EE45E8, MEMORY[0x277D6E3A0]);
  v3 = v2;
  v151 = *(v2 - 8);
  v149 = *(v151 + 64);
  MEMORY[0x28223BE20](v2);
  v150 = &v123 - v4;
  sub_2196B6ABC(0, &unk_280EE8380, MEMORY[0x277D2E6C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v148 = &v123 - v6;
  v7 = sub_219BE16E4();
  MEMORY[0x28223BE20](v7 - 8);
  v161 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_219BDE874();
  v160 = *(v155 - 8);
  v9 = MEMORY[0x28223BE20](v155);
  v146 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v138 = &v123 - v12;
  MEMORY[0x28223BE20](v11);
  v152 = &v123 - v13;
  v128 = sub_219BEC504();
  v133 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v127 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B646C();
  v126 = v15;
  v130 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v125 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_219BF0F34();
  v132 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v135 = &v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B6554();
  v137 = v18;
  v131 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v134 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_219BDDA04();
  v129 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v153 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v144 = &v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v165 = &v123 - v24;
  v156 = sub_219BDF584();
  v164 = *(v156 - 8);
  v25 = MEMORY[0x28223BE20](v156);
  v159 = &v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v163 = &v123 - v27;
  sub_2196B61C0(0, &qword_280EE37B0, MEMORY[0x277D6EC60]);
  v142 = v28;
  v141 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v162 = &v123 - v29;
  v147 = sub_219BE16D4();
  v145 = *(v147 - 8);
  v30 = MEMORY[0x28223BE20](v147);
  v143 = &v123 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = v31;
  MEMORY[0x28223BE20](v30);
  v157 = &v123 - v32;
  sub_2196B612C();
  v169 = v33;
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v168 = &v123 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B663C();
  v37 = v36 - 8;
  MEMORY[0x28223BE20](v36);
  v39 = &v123 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v123 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E847D8();
  v44 = v43;
  v45 = *(v43 - 8);
  v46 = MEMORY[0x28223BE20](v43);
  v48 = &v123 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v50 = &v123 - v49;
  sub_219BE8EF4();
  v158 = v42;
  v166 = a1;
  v167 = v3;
  sub_219BE8F24();
  v176 = MEMORY[0x277D84F90];
  v179 = MEMORY[0x277D84F90];
  v139 = v45;
  v51 = *(v45 + 16);
  v170 = v50;
  v51(v48, v50, v44);
  sub_2196B6B28(&qword_280EE59C8, sub_218E847D8);
  sub_219BF56A4();
  v52 = *(v37 + 44);
  sub_2196B6B28(&qword_280EE59C0, sub_218E847D8);
  v177 = v44;
  sub_219BF5E84();
  if (*&v39[v52] != v178)
  {
    v175 = (v34 + 16);
    v174 = (v129 + 11);
    LODWORD(v173) = *MEMORY[0x277D2FB98];
    LODWORD(v172) = *MEMORY[0x277D2FBA0];
    v77 = (v34 + 8);
    v171 = (v129 + 1);
    v129 += 12;
    v124 = (v130 + 4);
    v123 = v133 + 1;
    ++v130;
    v133 = (v131 + 1);
    v131 += 4;
    ++v132;
    v176 = MEMORY[0x277D84F90];
    do
    {
      v78 = v154;
      v79 = v153;
      v80 = v168;
      v81 = v169;
      while (1)
      {
        v82 = sub_219BF5EC4();
        (*v175)(v80);
        v82(&v178, 0);
        sub_219BF5E94();
        sub_219BE5FC4();
        v83 = (*v174)(v79, v78);
        if (v83 == v173)
        {
          (*v129)(v79, v78);
          v84 = v134;
          v85 = v79;
          v86 = v137;
          (*v131)(v134, v85, v137);
          v87 = v135;
          sub_219BF07D4();
          sub_219BF0F14();
          (*v132)(v87, v136);
          (*v133)(v84, v86);
          v88 = (*v77)(v168, v169);
          goto LABEL_23;
        }

        if (v83 == v172)
        {
          break;
        }

        (*v77)(v80, v81);
        (*v171)(v79, v78);
        sub_219BF5E84();
        if (*&v39[v52] == v178)
        {
          goto LABEL_2;
        }
      }

      (*v129)(v79, v78);
      sub_2196B66D0();
      v176 = *(v89 + 48);
      v90 = v125;
      v91 = v126;
      (*v124)(v125, v79, v126);
      v92 = v127;
      sub_219BF07D4();
      sub_219BEC4F4();
      (*v123)(v92, v128);
      (*v130)(v90, v91);
      (*v77)(v168, v169);
      v88 = (*v133)(&v79[v176], v137);
LABEL_23:
      MEMORY[0x21CECC690](v88);
      if (*((v179 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v179 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v176 = *((v179 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v176 = v179;
      sub_219BF5E84();
    }

    while (*&v39[v52] != v178);
  }

LABEL_2:
  sub_2196B6A5C(v39, sub_2196B663C);
  sub_219BE8F04();
  v54 = v163;
  v53 = v164;
  v55 = v156;
  (*(v164 + 104))(v163, *MEMORY[0x277D2DB50], v156);
  v56 = sub_219BDF474();
  (*(*(v56 - 8) + 56))(v165, 1, 1, v56);
  v57 = v170;
  result = sub_218E66970();
  if (v59)
  {
    goto LABEL_47;
  }

  v60 = result;
  v61 = sub_219690144(v158, v57);
  (*(v53 + 16))(v159, v54, v55);
  v62 = v152;
  sub_219BE6934();
  sub_219A5E7F0(v161);
  v63 = *(v160 + 8);
  v64 = v155;
  v63(v62, v155);
  v65 = sub_219BE6944();
  if (v60 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (v60 > 0x7FFFFFFF)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v171 = v63;
  v172 = v66;
  v62 = v176;
  LODWORD(v174) = v61;
  if (v176 >> 62)
  {
LABEL_45:
    v122 = v65;
    v67 = sub_219BF7214();
    v65 = v122;
    goto LABEL_7;
  }

  v67 = *((v176 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v175 = v60;
  v173 = v65;
  if (!v67)
  {
    goto LABEL_32;
  }

  v178 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v67 & ~(v67 >> 63), 0);
  if ((v67 & 0x8000000000000000) == 0)
  {
    v68 = v178;
    if ((v62 & 0xC000000000000001) != 0)
    {
      v69 = 0;
      do
      {
        MEMORY[0x21CECE0F0](v69, v176);
        v70 = [swift_unknownObjectRetain() articleID];
        v71 = sub_219BF5414();
        v73 = v72;
        swift_unknownObjectRelease_n();

        v178 = v68;
        v75 = *(v68 + 16);
        v74 = *(v68 + 24);
        if (v75 >= v74 >> 1)
        {
          sub_21870B65C((v74 > 1), v75 + 1, 1);
          v68 = v178;
        }

        ++v69;
        *(v68 + 16) = v75 + 1;
        v76 = v68 + 16 * v75;
        *(v76 + 32) = v71;
        *(v76 + 40) = v73;
      }

      while (v67 != v69);
    }

    else
    {
      v93 = (v62 + 32);
      do
      {
        v94 = [swift_unknownObjectRetain_n() articleID];
        v95 = sub_219BF5414();
        v97 = v96;
        swift_unknownObjectRelease_n();

        v178 = v68;
        v99 = *(v68 + 16);
        v98 = *(v68 + 24);
        if (v99 >= v98 >> 1)
        {
          sub_21870B65C((v98 > 1), v99 + 1, 1);
          v68 = v178;
        }

        *(v68 + 16) = v99 + 1;
        v100 = v68 + 16 * v99;
        *(v100 + 32) = v95;
        *(v100 + 40) = v97;
        v93 += 8;
        --v67;
      }

      while (v67);
    }

    v64 = v155;
    v55 = v156;
LABEL_32:
    v101 = v138;
    sub_219BE6934();
    v102 = v160;
    v103 = v146;
    (*(v160 + 32))(v146, v101, v64);
    v104 = (*(v102 + 88))(v103, v64);
    v105 = v148;
    v106 = v171;
    if (v104 == *MEMORY[0x277D301C0] || v104 == *MEMORY[0x277D301B8] || v104 == *MEMORY[0x277D301A0] || v104 == *MEMORY[0x277D30198] || v104 == *MEMORY[0x277D301B0])
    {
      v171(v103, v64);
      v107 = MEMORY[0x277D2E6B0];
    }

    else
    {
      if (v104 != *MEMORY[0x277D301C8])
      {
        v110 = *MEMORY[0x277D2E6C0];
        v109 = sub_219BE0674();
        (*(*(v109 - 8) + 104))(v105, v110, v109);
        v106(v103, v64);
        goto LABEL_42;
      }

      v171(v103, v64);
      v107 = MEMORY[0x277D2E6C0];
    }

    v108 = *v107;
    v109 = sub_219BE0674();
    (*(*(v109 - 8) + 104))(v105, v108, v109);
LABEL_42:
    sub_219BE0674();
    (*(*(v109 - 8) + 56))(v105, 0, 1, v109);
    v111 = v165;
    sub_2196B6404(v165, v144, sub_218B58F30);
    v112 = v157;
    sub_219BE15E4();

    sub_2196B6A5C(v111, sub_218B58F30);
    (*(v164 + 8))(v163, v55);
    (*(v141 + 8))(v162, v142);
    v113 = v145;
    v114 = v143;
    v115 = v147;
    (*(v145 + 16))(v143, v112, v147);
    v116 = v151;
    v117 = v150;
    v118 = v167;
    (*(v151 + 16))(v150, v166, v167);
    v119 = (*(v113 + 80) + 16) & ~*(v113 + 80);
    v120 = (v140 + *(v116 + 80) + v119) & ~*(v116 + 80);
    v121 = swift_allocObject();
    (*(v113 + 32))(v121 + v119, v114, v115);
    (*(v116 + 32))(v121 + v120, v117, v118);

    sub_219BDD154();

    (*(v113 + 8))(v157, v115);
    sub_2196B6A5C(v158, sub_218B58900);
    return (*(v139 + 8))(v170, v177);
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_2196B3754()
{
  v0 = sub_219BDBD34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B6ABC(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v4 = sub_219BDCD44();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  (*(v5 + 104))(v7 + v6, *MEMORY[0x277CEAD18], v4);
  sub_219BE16D4();
  sub_2196B6B28(&unk_280EE7FB0, MEMORY[0x277D2F590]);
  sub_219BDCCC4();

  sub_219BE0794();
  sub_2196B61C0(0, &qword_280EE45E8, MEMORY[0x277D6E3A0]);
  sub_219BE8F14();
  sub_2196B6B28(&qword_280EE82F8, MEMORY[0x277D2E7F0]);
  sub_219BDCC64();
  v8 = *(v1 + 8);
  v8(v3, v0);
  sub_219BE8EE4();
  sub_219BDCC74();
  return (v8)(v3, v0);
}

uint64_t sub_2196B3A5C()
{
  v0 = sub_219BDD0A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_219BDDA04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B612C();
  sub_219BE5FC4();
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277D2FB98])
  {
    *v3 = 0x656E696C64616568;
    v3[1] = 0xE800000000000000;
    (*(v1 + 104))(v3, *MEMORY[0x277CEAE48], v0);

    sub_219BDD204();

    (*(v1 + 8))(v3, v0);
  }

  else if (v8 == *MEMORY[0x277D2FBA0])
  {
    (*(v5 + 96))(v7, v4);
    sub_2196B66D0();
    v10 = *(v9 + 48);
    sub_2196B6554();
    (*(*(v11 - 8) + 8))(&v7[v10], v11);
    sub_2196B646C();
    return (*(*(v12 - 8) + 8))(v7, v12);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2196B3D10(uint64_t a1, void (**a2)(char *))
{
  v143 = a2;
  sub_2196B612C();
  v4 = v3;
  v142 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v139 = v5;
  v141 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B61C0(0, &qword_280EE37B0, MEMORY[0x277D6EC60]);
  v7 = v6;
  v137 = *(v6 - 8);
  v135 = *(v137 + 64);
  MEMORY[0x28223BE20](v6);
  v136 = &v108 - v8;
  sub_2196B6ABC(0, &unk_280EE8380, MEMORY[0x277D2E6C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v122 = &v108 - v10;
  v11 = sub_219BE16E4();
  MEMORY[0x28223BE20](v11 - 8);
  v128 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_219BDE874();
  v126 = *(v144 - 8);
  v13 = MEMORY[0x28223BE20](v144);
  v125 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v118 = &v108 - v16;
  MEMORY[0x28223BE20](v15);
  v123 = &v108 - v17;
  sub_218B58F30(0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v121 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v132 = &v108 - v21;
  sub_218B58900(0);
  MEMORY[0x28223BE20](v22 - 8);
  v130 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_219BDF584();
  v129 = *(v131 - 8);
  v24 = MEMORY[0x28223BE20](v131);
  v127 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v146 = &v108 - v26;
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v27);
  v120 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E847D8();
  v30 = v29;
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v145 = &v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B62B4(0);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v36 = &v108 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = &v108 - v37;
  v39 = v4;
  v40 = a1;
  sub_219BE5F84();
  v138 = v7;
  v41 = v143;
  sub_219BEB244();

  v42 = v31;
  v133 = swift_allocBox();
  v44 = v43;
  v45 = sub_219BE16D4();
  v46 = *(v45 - 8);
  v47 = *(v46 + 56);
  v119 = v46 + 56;
  v47(v44, 1, 1, v45);
  v134 = v38;
  sub_2196B6404(v38, v36, sub_2196B62B4);
  v48 = (*(v42 + 48))(v36, 1, v30);
  v140 = v40;
  if (v48 == 1)
  {
    v49 = v142;
    v50 = v39;
    sub_2196B6A5C(v36, sub_2196B62B4);
LABEL_31:
    v146 = *(v147 + 16);
    v96 = v136;
    v97 = v137;
    v98 = v41;
    v99 = v138;
    (*(v137 + 16))(v136, v98, v138);
    v100 = v141;
    (*(v49 + 16))(v141, v140, v50);
    v101 = (*(v97 + 80) + 16) & ~*(v97 + 80);
    v102 = (v135 + *(v49 + 80) + v101) & ~*(v49 + 80);
    v103 = (v139 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
    v104 = swift_allocObject();
    (*(v97 + 32))(v104 + v101, v96, v99);
    (*(v49 + 32))(v104 + v102, v100, v50);
    *(v104 + v103) = v133;

    sub_219BDD154();

    sub_219BDD134();

    sub_2196B6A5C(v134, sub_2196B62B4);
  }

  v113 = v47;
  v114 = v45;
  v115 = v44;
  v117 = v39;
  v116 = v42;
  v51 = v145;
  (*(v42 + 32))(v145, v36, v30);
  v52 = v30;
  v53 = sub_2196B4CCC(v41);
  v54 = v129;
  v55 = v131;
  (*(v129 + 104))(v146, *MEMORY[0x277D2DB50], v131);
  v56 = sub_219BE97D4();
  v57 = v130;
  (*(*(v56 - 8) + 56))(v130, 1, 1, v56);
  v58 = sub_219BDF474();
  (*(*(v58 - 8) + 56))(v132, 1, 1, v58);
  result = sub_218E66970();
  if (v60)
  {
    goto LABEL_36;
  }

  v61 = result;
  v112 = sub_219690144(v57, v51);
  (*(v54 + 16))(v127, v146, v55);
  v62 = v123;
  sub_219BE6934();
  sub_219A5E7F0(v128);
  v63 = *(v126 + 8);
  v123 = (v126 + 8);
  v111 = v63;
  v63(v62, v144);
  v124 = v52;
  v64 = sub_219BE6944();
  if (v61 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_33;
  }

  v52 = v61;
  if (v61 > 0x7FFFFFFF)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v53 >> 62)
  {
LABEL_34:
    v105 = v64;
    v106 = v65;
    v107 = sub_219BF7214();
    v65 = v106;
    v66 = v107;
    v64 = v105;
    goto LABEL_8;
  }

  v66 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  v110 = v52;
  v109 = v64;
  v108 = v65;
  if (!v66)
  {
LABEL_21:
    v84 = v118;
    sub_219BE6934();
    v85 = v126;
    v86 = v125;
    v87 = v144;
    (*(v126 + 32))(v125, v84, v144);
    v88 = (*(v85 + 88))(v86, v87);
    v89 = v122;
    if (v88 == *MEMORY[0x277D301C0] || v88 == *MEMORY[0x277D301B8] || v88 == *MEMORY[0x277D301A0] || v88 == *MEMORY[0x277D30198] || v88 == *MEMORY[0x277D301B0])
    {
      v49 = v142;
      v111(v125, v144);
      v92 = *MEMORY[0x277D2E6B0];
      v91 = sub_219BE0674();
      (*(*(v91 - 8) + 104))(v89, v92, v91);
    }

    else
    {
      v49 = v142;
      if (v88 == *MEMORY[0x277D301C8])
      {
        v111(v125, v144);
        v90 = *MEMORY[0x277D2E6C0];
        v91 = sub_219BE0674();
        (*(*(v91 - 8) + 104))(v89, v90, v91);
      }

      else
      {
        v93 = *MEMORY[0x277D2E6C0];
        v91 = sub_219BE0674();
        (*(*(v91 - 8) + 104))(v89, v93, v91);
        v111(v125, v144);
      }
    }

    v50 = v117;
    sub_219BE0674();
    (*(*(v91 - 8) + 56))(v89, 0, 1, v91);
    v94 = v132;
    sub_2196B6404(v132, v121, sub_218B58F30);
    v95 = v120;
    sub_219BE15E4();

    sub_2196B6A5C(v94, sub_218B58F30);
    sub_2196B6A5C(v130, sub_218B58900);
    (*(v129 + 8))(v146, v131);
    (*(v116 + 8))(v145, v124);
    v113(v95, 0, 1, v114);
    sub_218B58ECC(v95, v115);
    goto LABEL_31;
  }

  v148 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v66 & ~(v66 >> 63), 0);
  if ((v66 & 0x8000000000000000) == 0)
  {
    v67 = v148;
    if ((v53 & 0xC000000000000001) != 0)
    {
      v68 = 0;
      do
      {
        MEMORY[0x21CECE0F0](v68, v53);
        v69 = [swift_unknownObjectRetain() articleID];
        v70 = sub_219BF5414();
        v72 = v71;
        swift_unknownObjectRelease_n();

        v148 = v67;
        v74 = *(v67 + 16);
        v73 = *(v67 + 24);
        if (v74 >= v73 >> 1)
        {
          sub_21870B65C((v73 > 1), v74 + 1, 1);
          v67 = v148;
        }

        ++v68;
        *(v67 + 16) = v74 + 1;
        v75 = v67 + 16 * v74;
        *(v75 + 32) = v70;
        *(v75 + 40) = v72;
      }

      while (v66 != v68);
    }

    else
    {
      v76 = v53 + 32;
      do
      {
        v77 = [swift_unknownObjectRetain_n() articleID];
        v78 = sub_219BF5414();
        v80 = v79;
        swift_unknownObjectRelease_n();

        v148 = v67;
        v82 = *(v67 + 16);
        v81 = *(v67 + 24);
        if (v82 >= v81 >> 1)
        {
          sub_21870B65C((v81 > 1), v82 + 1, 1);
          v67 = v148;
        }

        *(v67 + 16) = v82 + 1;
        v83 = v67 + 16 * v82;
        *(v83 + 32) = v78;
        *(v83 + 40) = v80;
        v76 += 8;
        --v66;
      }

      while (v66);
    }

    v41 = v143;
    goto LABEL_21;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_2196B4CCC(void (**a1)(char *))
{
  v73 = a1;
  v55 = sub_219BEC504();
  v60 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B646C();
  v3 = v2;
  v59 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v53 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_219BF0F34();
  v58 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B6554();
  v64 = v6;
  v57 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v61 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_219BDDA04();
  v56 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B612C();
  v10 = v9;
  v70 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v65 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B663C();
  v72 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B62B4(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E847D8();
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v46 - v24;
  sub_219BE5F84();
  sub_2196B61C0(0, &qword_280EE37B0, MEMORY[0x277D6EC60]);
  sub_219BEB244();
  v26 = v20;

  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    sub_2196B6A5C(v17, sub_2196B62B4);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v51 = v3;
    (*(v20 + 32))(v25, v17, v19);
    v27 = MEMORY[0x277D84F90];
    v75 = MEMORY[0x277D84F90];
    v52 = v26;
    (*(v26 + 16))(v23, v25, v19);
    sub_2196B6B28(&qword_280EE59C8, sub_218E847D8);
    sub_219BF56A4();
    v28 = *(v72 + 9);
    sub_2196B6B28(&qword_280EE59C0, sub_218E847D8);
    sub_219BF5E84();
    if (*&v14[v28] != v74[0])
    {
      v73 = (v70 + 2);
      v72 = (v56 + 11);
      v71 = *MEMORY[0x277D2FB98];
      v69 = *MEMORY[0x277D2FBA0];
      ++v70;
      v68 = v56 + 1;
      v56 += 12;
      v49 = (v59 + 4);
      v48 = (v60 + 8);
      v47 = v59 + 1;
      v59 = (v57 + 1);
      v57 += 4;
      ++v58;
      v50 = v25;
      do
      {
        v60 = v27;
        v29 = v10;
        v30 = v66;
        v31 = v67;
        v32 = v65;
        while (1)
        {
          v33 = sub_219BF5EC4();
          (*v73)(v32);
          v33(v74, 0);
          sub_219BF5E94();
          v34 = v29;
          sub_219BE5FC4();
          v35 = (*v72)(v30, v31);
          v36 = v32;
          if (v35 == v71)
          {
            (*v56)(v30, v31);
            v37 = v61;
            v38 = v30;
            v39 = v64;
            (*v57)(v61, v38, v64);
            v40 = v62;
            sub_219BF07D4();
            v60 = sub_219BF0F14();
            (*v58)(v40, v63);
            (*v59)(v37, v39);
            v10 = v34;
            v41 = (*v70)(v36, v34);
            goto LABEL_12;
          }

          if (v35 == v69)
          {
            break;
          }

          v29 = v34;
          (*v70)(v32, v34);
          (*v68)(v30, v31);
          sub_219BF5E84();
          if (*&v14[v28] == v74[0])
          {
            v25 = v50;
            v27 = v60;
            goto LABEL_15;
          }
        }

        (*v56)(v30, v31);
        sub_2196B66D0();
        v46 = *(v42 + 48);
        v43 = v53;
        (*v49)();
        v44 = v54;
        sub_219BF07D4();
        v60 = sub_219BEC4F4();
        (*v48)(v44, v55);
        (*v47)(v43, v51);
        v10 = v34;
        (*v70)(v32, v34);
        v41 = (*v59)(&v30[v46], v64);
LABEL_12:
        MEMORY[0x21CECC690](v41);
        v25 = v50;
        if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v46 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_219BF5A14();
        }

        sub_219BF5A54();
        v27 = v75;
        sub_219BF5E84();
      }

      while (*&v14[v28] != v74[0]);
    }

LABEL_15:
    sub_2196B6A5C(v14, sub_2196B663C);
    (*(v52 + 8))(v25, v19);
  }

  return v27;
}

uint64_t sub_2196B5760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v52 = a4;
  v50 = a2;
  v5 = sub_219BDF094();
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v7 - 8);
  v47 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE16D4();
  v48 = *(v9 - 8);
  v49 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v38 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v39 = &v38 - v12;
  v13 = sub_219BE0444();
  v45 = *(v13 - 8);
  v46 = v13;
  MEMORY[0x28223BE20](v13);
  v44 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDFCE4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BE14C4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BE14A4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = swift_projectBox();
  (*(v20 + 104))(v22, *MEMORY[0x277D2F2E8], v19);
  sub_219BE1484();
  sub_2196B6B28(&qword_280EE8010, MEMORY[0x277D2F280]);
  v52 = a1;
  sub_219BDCCC4();
  (*(v24 + 8))(v26, v23);
  sub_2196B61C0(0, &qword_280EE37B0, MEMORY[0x277D6EC60]);
  sub_2196B6B28(&qword_280EE8DF0, MEMORY[0x277D2FBA8]);
  result = sub_219BEB304();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_219BDFCD4();
  sub_2196B6B28(&unk_280EE8590, MEMORY[0x277D2E058]);
  sub_219BDCCC4();
  (*(v16 + 8))(v18, v15);
  result = sub_219BEB314();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v28 = v44;
  sub_219BE0434();
  sub_2196B6B28(&unk_280EE8400, MEMORY[0x277D2E530]);
  v29 = v46;
  sub_219BDCCC4();
  (*(v45 + 8))(v28, v29);
  v30 = v43;
  swift_beginAccess();
  v31 = v30;
  v32 = v47;
  sub_2196B6404(v31, v47, sub_218B58D58);
  v34 = v48;
  v33 = v49;
  if ((*(v48 + 48))(v32, 1, v49) == 1)
  {
    return sub_2196B6A5C(v32, sub_218B58D58);
  }

  v35 = v39;
  (*(v34 + 32))(v39, v32, v33);
  (*(v34 + 16))(v38, v35, v33);
  v36 = v40;
  sub_219BDF084();
  sub_2196B6B28(&unk_280EE88C0, MEMORY[0x277D2D888]);
  v37 = v42;
  sub_219BDCCC4();
  (*(v41 + 8))(v36, v37);
  sub_2196B6B28(&unk_280EE7FB0, MEMORY[0x277D2F590]);
  sub_219BDCCC4();
  return (*(v34 + 8))(v35, v33);
}

uint64_t sub_2196B5F64()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);

  return swift_deallocClassInstance();
}

uint64_t sub_2196B5FE8()
{

  sub_219BDD154();
}

void sub_2196B612C()
{
  if (!qword_280EE5D48)
  {
    sub_219BDDA04();
    sub_2196B6B28(&unk_280EE8DE0, MEMORY[0x277D2FBA8]);
    v0 = sub_219BE5FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5D48);
    }
  }
}

void sub_2196B61C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = sub_219BDE874();
    v8[1] = sub_219BDDA04();
    v8[2] = sub_2196B6B28(&unk_280EE8AF0, MEMORY[0x277D301D0]);
    v8[3] = sub_2196B6B28(&unk_280EE8DE0, MEMORY[0x277D2FBA8]);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2196B62E8(uint64_t a1)
{
  sub_2196B61C0(0, &qword_280EE37B0, MEMORY[0x277D6EC60]);
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  sub_2196B612C();
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2196B5760(a1, v1 + v4, v1 + v8, v9);
}

uint64_t sub_2196B6404(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2196B646C()
{
  if (!qword_280E90E88)
  {
    sub_219BEC504();
    sub_219BDD9F4();
    v0 = MEMORY[0x277D2D6B0];
    sub_2196B6B28(&unk_280EE32C0, MEMORY[0x277D2D6B0]);
    sub_2196B6B28(&qword_280EE32D0, v0);
    v1 = sub_219BF0854();
    if (!v2)
    {
      atomic_store(v1, &qword_280E90E88);
    }
  }
}

void sub_2196B6554()
{
  if (!qword_27CC1DF30)
  {
    sub_219BF0F34();
    sub_219BDD9F4();
    v0 = MEMORY[0x277D33058];
    sub_2196B6B28(&unk_280E90A40, MEMORY[0x277D33058]);
    sub_2196B6B28(&qword_280E90A50, v0);
    v1 = sub_219BF0854();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1DF30);
    }
  }
}

void sub_2196B663C()
{
  if (!qword_280E8D508)
  {
    sub_218E847D8();
    sub_2196B6B28(&qword_280EE59C0, sub_218E847D8);
    v0 = sub_219BF7494();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D508);
    }
  }
}

void sub_2196B66D0()
{
  if (!qword_27CC1DF40)
  {
    sub_2196B646C();
    sub_2196B6554();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1DF40);
    }
  }
}

uint64_t sub_2196B6744()
{
  sub_219BE16D4();
  sub_2196B61C0(0, &qword_280EE45E8, MEMORY[0x277D6E3A0]);

  return sub_2196B3754();
}

uint64_t sub_2196B6834(uint64_t a1)
{
  sub_2196B61C0(0, &unk_280EE5140, MEMORY[0x277D6DA48]);
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2196B646C();
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(*(v6 - 8) + 80) + 8) & ~*(*(v6 - 8) + 80));

  return sub_2196B0F88(a1, v1 + v4, v7, v8);
}

uint64_t sub_2196B6934(uint64_t a1)
{
  sub_2196B61C0(0, &unk_280EE5140, MEMORY[0x277D6DA48]);
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;
  sub_2196B6554();
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = *(v1 + v7);
  v13 = v1 + ((v7 + *(*(v8 - 8) + 80) + 8) & ~*(*(v8 - 8) + 80));

  return sub_2196AF278(a1, v1 + v4, v9, v10, v11, v12, v13);
}

uint64_t sub_2196B6A5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2196B6ABC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2196B6B28(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2196B6B70(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_219BF71C4();
    sub_2186C6148(0, &qword_280E8DA50);
    sub_218F86FB4();
    sub_219BF5D94();
    v1 = v20;
    v2 = v21;
    v3 = v22;
    v4 = v23;
    v5 = v24;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v19 = v1;
  while (v1 < 0)
  {
    if (!sub_219BF7244() || (sub_2186C6148(0, &qword_280E8DA50), swift_dynamicCast(), v9 = v25, v12 = v4, v13 = v5, !v25))
    {
LABEL_27:
      sub_21892DE98();
      return;
    }

LABEL_20:
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v9;
    }

    sub_2186C6148(0, &unk_280E8D980);
    v16 = sub_219BF6F14();
    v17 = v16;
    if (!v14)
    {
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_9;
    }

    if (!v16)
    {
      v17 = v14;
LABEL_9:

      v9 = v17;
      goto LABEL_10;
    }

    sub_2186C6148(0, &qword_280E8E700);
    v18 = sub_219BF6DD4();

    if (v18)
    {
      goto LABEL_27;
    }

LABEL_10:
    v1 = v19;

    v4 = v12;
    v5 = v13;
  }

  v10 = v4;
  v11 = v5;
  v12 = v4;
  if (v5)
  {
LABEL_16:
    v13 = (v11 - 1) & v11;
    v9 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v9)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v3 + 64) >> 6))
    {
      goto LABEL_27;
    }

    v11 = *(v2 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_2196B6E0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v1273 = a1;
  v1272 = a2;
  v1247 = *v2;
  v4 = MEMORY[0x277D83D88];
  sub_218834E54(0, &qword_280E8FE00, MEMORY[0x277D34450], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v1183 = &v1167 - v6;
  v1198 = sub_219BF2EB4();
  v1184 = *(v1198 - 8);
  MEMORY[0x28223BE20](v1198);
  *&v1269 = &v1167 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218834E54(0, &qword_280E90470, MEMORY[0x277D338C0], v4);
  MEMORY[0x28223BE20](v8 - 8);
  v1219 = &v1167 - v9;
  v10 = sub_219BF24E4();
  v1224 = *(v10 - 8);
  v1225 = v10;
  MEMORY[0x28223BE20](v10);
  v1201 = &v1167 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v1202 = &v1167 - v13;
  v1213 = type metadata accessor for PuzzleModel();
  MEMORY[0x28223BE20](v1213);
  v1229 = &v1167 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE3CB4();
  v1217 = *(v15 - 8);
  v1218 = v15;
  MEMORY[0x28223BE20](v15);
  v1215 = &v1167 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1216 = sub_219BE3EE4();
  v1214 = *(v1216 - 8);
  MEMORY[0x28223BE20](v1216);
  v1246 = &v1167 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1238 = sub_219BE3CA4();
  v1237 = *(v1238 - 8);
  MEMORY[0x28223BE20](v1238);
  v1236 = &v1167 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218834E54(0, &unk_280EE6490, MEMORY[0x277D34E88], v4);
  MEMORY[0x28223BE20](v19 - 8);
  v1256 = (&v1167 - v20);
  sub_218834E54(0, qword_280ED3E78, type metadata accessor for CampaignRouteModel, v4);
  MEMORY[0x28223BE20](v21 - 8);
  v1233 = &v1167 - v22;
  v23 = sub_219BDBD64();
  v1196 = *(v23 - 8);
  v1197 = v23;
  MEMORY[0x28223BE20](v23);
  v1195 = &v1167 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1212 = type metadata accessor for PreBuyFlowRouteModel();
  MEMORY[0x28223BE20](v1212);
  v1255 = &v1167 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for WebLinkRouteModel(0);
  MEMORY[0x28223BE20](v26 - 8);
  v1200 = &v1167 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1210 = type metadata accessor for WebLinkViewControllerType(0);
  MEMORY[0x28223BE20](v1210);
  v1211 = &v1167 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v1228 = &v1167 - v30;
  sub_218834E54(0, &qword_280ED6F90, sub_219535290, v4);
  MEMORY[0x28223BE20](v31 - 8);
  v1209 = &v1167 - v32;
  v1194 = type metadata accessor for WebEmbedResource();
  MEMORY[0x28223BE20](v1194);
  v1220 = &v1167 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218834E54(0, &qword_280EE8E10, MEMORY[0x277D2FB40], v4);
  MEMORY[0x28223BE20](v34 - 8);
  v1193 = &v1167 - v35;
  v36 = sub_219BDD804();
  v1191 = *(v36 - 8);
  v1192 = v36;
  MEMORY[0x28223BE20](v36);
  v1190 = &v1167 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218834E54(0, &qword_280EE64A0, MEMORY[0x277D34D78], v4);
  MEMORY[0x28223BE20](v38 - 8);
  v1254 = &v1167 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v1222 = &v1167 - v41;
  v1243 = sub_219BEC544();
  v1242 = *(v1243 - 8);
  MEMORY[0x28223BE20](v1243);
  v1241 = &v1167 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1271 = sub_219BE4524();
  v1245 = *(v1271 - 1);
  MEMORY[0x28223BE20](v1271);
  v1244 = &v1167 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for FollowingNotificationsPrewarm();
  MEMORY[0x28223BE20](v44 - 8);
  v1230 = &v1167 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1232 = type metadata accessor for CampaignRouteModel();
  v1231 = *(v1232 - 8);
  MEMORY[0x28223BE20](v1232);
  v1221 = (&v1167 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = type metadata accessor for AudioFeedTrack(0);
  MEMORY[0x28223BE20](v47 - 8);
  v1240 = &v1167 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_219BE7784();
  MEMORY[0x28223BE20](v49 - 8);
  v1208 = &v1167 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218834E54(0, &unk_280E90420, sub_218932F68, v4);
  MEMORY[0x28223BE20](v51 - 8);
  v1169 = &v1167 - v52;
  v53 = sub_219BDE294();
  v1174 = *(v53 - 8);
  v1175 = v53;
  MEMORY[0x28223BE20](v53);
  v1173 = &v1167 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218932F68(0);
  v1177 = *(v55 - 8);
  v1178 = v55;
  MEMORY[0x28223BE20](v55);
  v1176 = &v1167 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C5110();
  v58 = v57;
  v1257 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v1249 = &v1167 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1248 = v59;
  MEMORY[0x28223BE20](v60);
  v1185 = &v1167 - v61;
  v1258 = sub_219BDB954();
  v1259 = *(v1258 - 1);
  MEMORY[0x28223BE20](v1258);
  v1235 = &v1167 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v1253 = &v1167 - v64;
  MEMORY[0x28223BE20](v65);
  v1199 = &v1167 - v66;
  MEMORY[0x28223BE20](v67);
  v1207 = &v1167 - v68;
  MEMORY[0x28223BE20](v69);
  v1179 = &v1167 - v70;
  MEMORY[0x28223BE20](v71);
  v1206 = &v1167 - v72;
  MEMORY[0x28223BE20](v73);
  v1227 = &v1167 - v74;
  MEMORY[0x28223BE20](v75);
  v1181 = &v1167 - v76;
  MEMORY[0x28223BE20](v77);
  v1172 = &v1167 - v78;
  sub_218834E54(0, &unk_280EE8C10, MEMORY[0x277D30048], v4);
  MEMORY[0x28223BE20](v79 - 8);
  v1189 = &v1167 - v80;
  v81 = sub_219BDD944();
  v1186 = *(v81 - 8);
  v1187 = v81;
  MEMORY[0x28223BE20](v81);
  v1182 = &v1167 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v83);
  v1170 = &v1167 - v84;
  MEMORY[0x28223BE20](v85);
  v1171 = &v1167 - v86;
  MEMORY[0x28223BE20](v87);
  v1188 = &v1167 - v88;
  v1252 = sub_219BF1D74();
  v1251 = *(v1252 - 8);
  MEMORY[0x28223BE20](v1252);
  v1250 = &v1167 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218834E54(0, &qword_280E902A0, MEMORY[0x277D33BC8], v4);
  MEMORY[0x28223BE20](v90 - 8);
  v1205 = (&v1167 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v92);
  v1239 = (&v1167 - v93);
  v94 = type metadata accessor for NewsActivity2.Article(0);
  v1180 = *(v94 - 8);
  v95 = *(v1180 + 64);
  MEMORY[0x28223BE20](v94 - 8);
  v96 = &v1167 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v97);
  v1223 = &v1167 - v98;
  MEMORY[0x28223BE20](v99);
  v1203 = &v1167 - v100;
  MEMORY[0x28223BE20](v101);
  v1234 = &v1167 - v102;
  sub_218834E54(0, &unk_280EE4470, MEMORY[0x277D6E658], v4);
  MEMORY[0x28223BE20](v103 - 8);
  v1264 = (&v1167 - v104);
  v1260 = sub_219BE92E4();
  v1261 = *(v1260 - 8);
  MEMORY[0x28223BE20](v1260);
  v1263 = &v1167 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v106);
  v1262 = &v1167 - v107;
  v1266 = sub_219BE9EC4();
  v1267 = *(v1266 - 8);
  MEMORY[0x28223BE20](v1266);
  v1204 = &v1167 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v109);
  v1226 = &v1167 - v110;
  MEMORY[0x28223BE20](v111);
  v113 = &v1167 - v112;
  MEMORY[0x28223BE20](v114);
  v116 = &v1167 - v115;
  MEMORY[0x28223BE20](v117);
  v119 = &v1167 - v118;
  MEMORY[0x28223BE20](v120);
  v122 = &v1167 - v121;
  MEMORY[0x28223BE20](v123);
  v1265 = &v1167 - v124;
  v1270 = v3;
  v1268 = v3[7];
  if (sub_21909C5CC())
  {
    v1168 = v58;
    v125 = sub_219BEA7A4();
    v126 = v1293;
    v127 = v1269;
    v128 = v1271;
    switch((v126 >> 58) & 0x3C | (v126 >> 1) & 3)
    {
      case 1uLL:
        sub_2187B2C48();
        v438 = v126;
        v440 = v439;
        v1167 = v438;
        v441 = swift_projectBox();
        v442 = *(v441 + *(v440 + 48));
        v443 = v1234;
        sub_2196C8D0C(v441, v1234, type metadata accessor for NewsActivity2.Article);

        v444 = v1239;
        sub_2196C1694(v443, v1239);
        v445 = v1270;
        v446 = v1270[9];
        v447 = v1251;
        v448 = v1250;
        v449 = v1252;
        (*(v1251 + 104))(v1250, *MEMORY[0x277D33600], v1252);
        v450 = v446;
        v451 = v445;
        LOBYTE(v445) = sub_218AA147C(v444, v1273, v450, v448);
        (*(v447 + 8))(v448, v449);
        sub_2196C8E20(v444, &qword_280E902A0, MEMORY[0x277D33BC8]);
        if (v445)
        {
          sub_2196C8A38(v443, type metadata accessor for NewsActivity2.Article);

          goto LABEL_331;
        }

        v797 = v1203;
        sub_2196C8D0C(v443, v1203, type metadata accessor for NewsActivity2.Article);
        sub_2196C8470(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

        v798 = v1188;
        sub_2196C8AA4(v797, v1188, MEMORY[0x277D2FB40]);
        v799 = v1189;
        sub_219BDD934();
        sub_2196C8A38(v798, MEMORY[0x277D2FB40]);
        v800 = sub_219BDE544();
        if ((*(*(v800 - 8) + 48))(v799, 1, v800) == 1)
        {
          v801 = v1168;
          (*(v1257 + 16))(v1185, v1273, v1168);
          v802 = v451;
          v803 = [v451[21] narrativeAudio];
          v804 = v1234;
          if (v803)
          {
            v1273 = v442;
            sub_2196C8D0C(v1234, v797, type metadata accessor for NewsActivity2.Article);

            v805 = v1171;
            sub_2196C8AA4(v797, v1171, MEMORY[0x277D2FB40]);
            v806 = v804;
            v807 = v1173;
            sub_219BDD8E4();
            sub_2196C8A38(v805, MEMORY[0x277D2FB40]);
            v809 = v1174;
            v808 = v1175;
            if ((*(v1174 + 88))(v807, v1175) == *MEMORY[0x277D2FF00])
            {
              (*(v809 + 96))(v807, v808);
              (*(v1177 + 32))(v1176, v807, v1178);
              sub_2196C8D0C(v806, v797, type metadata accessor for NewsActivity2.Article);

              v810 = v1170;
              sub_2196C8AA4(v797, v1170, MEMORY[0x277D2FB40]);
              v811 = sub_219BDD914();
              sub_2196C8A38(v810, MEMORY[0x277D2FB40]);
              v804 = v806;
              if (v811)
              {
                __swift_project_boxed_opaque_existential_1(v802 + 2, v802[5]);
                sub_2186C709C(0, qword_280EB1710);
                sub_219BE1E34();
                v442 = v1273;
                if (!*(&v1274[1] + 1))
                {
                  (*(v1177 + 8))(v1176, v1178);
                  swift_unknownObjectRelease();
                  sub_2196C8C94(v1274, &qword_27CC1DFA0, qword_280EB1710, &protocol descriptor for AudioFeedRoutingEvaluatorType);
                  goto LABEL_384;
                }

                sub_2186CB1F0(v1274, v1279);
                __swift_project_boxed_opaque_existential_1(v1279, *(&v1279[1] + 1));
                if (sub_218FD3110(v811))
                {
                  (*(v1177 + 8))(v1176, v1178);
                  swift_unknownObjectRelease();
                  __swift_destroy_boxed_opaque_existential_1(v1279);
LABEL_384:
                  v797 = v1203;
                  v801 = v1168;
                  goto LABEL_385;
                }

                swift_getObjectType();
                sub_219BEAC64();
                v1162 = v1177;
                v1163 = v1169;
                v1164 = v1178;
                (*(v1177 + 16))(v1169, v1176, v1178);
                (*(v1162 + 56))(v1163, 0, 1, v1164);
                sub_219BE7094();

                swift_unknownObjectRelease();
                sub_2196C8E20(v1163, &unk_280E90420, sub_218932F68);
                (*(v1177 + 8))(v1176, v1178);
                (*(v1257 + 8))(v1185, v1168);
                v1122 = v804;
LABEL_336:
                sub_2196C8A38(v1122, type metadata accessor for NewsActivity2.Article);
                goto LABEL_337;
              }

              (*(v1177 + 8))(v1176, v1178);
              v801 = v1168;
            }

            else
            {
              (*(v809 + 8))(v807, v808);
              v801 = v1168;
              v804 = v806;
            }

            v442 = v1273;
          }

LABEL_385:
          if (sub_219093144(5u, v442))
          {
            __swift_project_boxed_opaque_existential_1(v802 + 2, v802[5]);
            sub_2186C709C(0, &unk_27CC1DF90);
            sub_219BE1E34();
            if (!*(&v1274[1] + 1))
            {
LABEL_396:
              __break(1u);
LABEL_397:
              __break(1u);
LABEL_398:
              __break(1u);
LABEL_399:
              result = sub_219BF7514();
              __break(1u);
              return result;
            }

            sub_2186CB1F0(v1274, v1279);
            __swift_project_boxed_opaque_existential_1(v1279, *(&v1279[1] + 1));
            sub_219BDE824();
            v1154 = v1249;
            v1155 = v1185;
            sub_219BEA774();

            v1156 = v1257;
            (*(v1257 + 8))(v1155, v801);
            (*(v1156 + 32))(v1155, v1154, v801);
            sub_218718690(v1279, v1274);
            v1157 = swift_allocObject();
            sub_2186CB1F0(v1274, v1157 + 16);
            *(v1157 + 56) = v802;

            __swift_destroy_boxed_opaque_existential_1(v1279);
            v1158 = sub_2196C8C88;
          }

          else
          {
            sub_2196C8D0C(v804, v797, type metadata accessor for NewsActivity2.Article);
            v1159 = (*(v1180 + 80) + 24) & ~*(v1180 + 80);
            v1160 = swift_allocObject();
            *(v1160 + 16) = v802;
            sub_2196C8AA4(v797, v1160 + v1159, type metadata accessor for NewsActivity2.Article);

            v1158 = sub_2196C8C14;
            v1155 = v1185;
          }

          v1161 = sub_218AA1DB4(v1155, v804, v442);

          if (v1161)
          {
            v1158(v1161);
          }

          (*(v1257 + 8))(v1155, v801);
          sub_2196C8A38(v804, type metadata accessor for NewsActivity2.Article);

          goto LABEL_308;
        }

        v1047 = v451;
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v1119 = v1259;
          v1120 = v1172;
          v1121 = v1258;
          (v1259[4])(v1172, v799, v1258);
          __swift_project_boxed_opaque_existential_1(v1047 + 2, v1047[5]);
          sub_2186C709C(0, &qword_280EE5700);
          sub_219BE1E34();
          if (!*(&v1274[1] + 1))
          {
            goto LABEL_395;
          }

          sub_2186CB1F0(v1274, v1279);
          __swift_project_boxed_opaque_existential_1(v1279, *(&v1279[1] + 1));
          sub_219BE6DC4();
          (v1119[1])(v1120, v1121);
          v1122 = v1234;
          goto LABEL_336;
        }

        v1048 = v1259;
        v1049 = v1181;
        v1050 = v1258;
        (v1259[4])(v1181, v799, v1258);
        v1051 = sub_218CF8A44(v1273);
        if (v1051)
        {
          v1052 = *MEMORY[0x277D6E530];
          v1273 = v1051;
          v1053 = sub_219BE92D4();
          v1054 = *(*(v1053 - 8) + 104);
          v1055 = v1262;
          v1054(v1262, v1052, v1053);
          v1056 = *MEMORY[0x277D6E518];
          v1057 = *(v1261 + 104);
          v1058 = v1260;
          v1057(v1055, v1056, v1260);
          v1059 = v1263;
          v1054(v1263, *MEMORY[0x277D6E538], v1053);
          v1057(v1059, v1056, v1058);
          v1060 = v1265;
          sub_219BE9EB4();
          v1061 = sub_219BE94F4();
          v1062 = v1264;
          (*(*(v1061 - 8) + 56))(v1264, 1, 1, v1061);
          v1063 = v1273;
          sub_21909BA64(v1273, v1060, v1062);

          sub_2196C8E20(v1062, &unk_280EE4470, MEMORY[0x277D6E658]);
          (*(v1267 + 8))(v1060, v1266);
          (v1259[1])(v1181, v1258);
        }

        else
        {
          (v1048[1])(v1049, v1050);
        }

        sub_2196C8A38(v1234, type metadata accessor for NewsActivity2.Article);
        goto LABEL_308;
      case 2uLL:
        sub_2187B2C48();
        v408 = v126;
        v410 = v409;
        v236 = v408;
        v411 = swift_projectBox();
        v412 = *(v411 + *(v410 + 48));
        v413 = v1223;
        sub_2196C8D0C(v411, v1223, type metadata accessor for NewsActivity2.Article);
        Strong = swift_unknownObjectWeakLoadStrong();

        v415 = v1273;
        if (!Strong)
        {
          goto LABEL_321;
        }

        v416 = sub_219BF6534();

        objc_opt_self();
        v417 = swift_dynamicCastObjCClass();
        if (v417 && (v418 = [v417 visibleViewController]) != 0)
        {
          v419 = v418;
          ObjectType = swift_getObjectType();
          v421 = swift_conformsToProtocol2();
          if (v421 && ((*(v421 + 8))(ObjectType, v421) & 1) != 0)
          {
            sub_2196C8D0C(v413, v1203, type metadata accessor for NewsActivity2.Article);
            v422 = v1257;
            (*(v1257 + 16))(v1249, v415, v1168);
            v423 = (*(v1180 + 80) + 16) & ~*(v1180 + 80);
            v424 = (v95 + v423 + 7) & 0xFFFFFFFFFFFFFFF8;
            v425 = (*(v422 + 80) + v424 + 8) & ~*(v422 + 80);
            v1273 = ((v1248 + v425 + 7) & 0xFFFFFFFFFFFFFFF8);
            v426 = swift_allocObject();
            sub_2196C8AA4(v1203, v426 + v423, type metadata accessor for NewsActivity2.Article);
            *(v426 + v424) = v1270;
            (*(v422 + 32))(v426 + v425, v1249, v1168);
            *(v1273 + v426) = v412;
            *&v1279[2] = sub_2196C8B0C;
            *(&v1279[2] + 1) = v426;
            *&v1279[0] = MEMORY[0x277D85DD0];
            *(&v1279[0] + 1) = 1107296256;
            *&v1279[1] = sub_218793E0C;
            *(&v1279[1] + 1) = &block_descriptor_31_3;
            v427 = _Block_copy(v1279);

            v428 = v419;

            [v428 dismissViewControllerAnimated:1 completion:v427];

            _Block_release(v427);
            v429 = v1223;
            goto LABEL_322;
          }
        }

        else
        {
          v419 = v416;
        }

LABEL_321:
        sub_2196C20D4(v413, v1270, v415, v412);

        v429 = v413;
LABEL_322:
        sub_2196C8A38(v429, type metadata accessor for NewsActivity2.Article);
        goto LABEL_323;
      case 3uLL:
        v172 = v1293;
        v432 = sub_218AAC1BC(v1273, *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x18), *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x20), *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x28));
        v433 = v1265;
        sub_218A56C8C(v1265);
        goto LABEL_113;
      case 4uLL:
        v351 = swift_projectBox();
        v352 = v1259;
        v353 = v1227;
        v354 = v1258;
        (v1259[2])(v1227, v351, v1258);
        sub_219BE7DC4();
        v1167 = v126;
        v355 = sub_219BDB804();
        MEMORY[0x28223BE20](v355);
        *(&v1167 - 4) = v1270;
        *(&v1167 - 3) = v353;
        sub_219BE7774();
        v1165 = &v1167 - 6;
        v356 = sub_219BE7D74();
        v357 = v1265;
        sub_218A554EC(v1265);
        v358 = sub_219BE94F4();
        v359 = v1264;
        (*(*(v358 - 8) + 56))(v1264, 1, 1, v358);
        sub_21909BA64(v356, v357, v359);

        sub_2196C8E20(v359, &unk_280EE4470, MEMORY[0x277D6E658]);
        (*(v1267 + 8))(v357, v1266);
        (v352[1])(v353, v354);
        goto LABEL_308;
      case 5uLL:
        v477 = swift_projectBox();
        v478 = v1240;
        sub_2196C8D0C(v477, v1240, type metadata accessor for AudioFeedTrack);
        v1167 = v126;
        v1273 = sub_218ADDE38(v478);
        LODWORD(v1271) = *MEMORY[0x277D6E528];
        v479 = v1271;
        v480 = sub_219BE92D4();
        v481 = *(*(v480 - 8) + 104);
        v482 = v1262;
        v481(v1262, v479, v480);
        v483 = *MEMORY[0x277D6E4F8];
        v484 = *(v1261 + 104);
        v485 = v1260;
        v484(v482, v483, v1260);
        v486 = v1263;
        v481(v1263, v1271, v480);
        v484(v486, v483, v485);
        v487 = v1265;
        sub_219BE9EB4();
        v488 = sub_219BE94F4();
        v489 = v1264;
        (*(*(v488 - 8) + 56))(v1264, 1, 1, v488);
        v490 = v1273;
        sub_21909BA64(v1273, v487, v489);

        sub_2196C8E20(v489, &unk_280EE4470, MEMORY[0x277D6E658]);
        (*(v1267 + 8))(v487, v1266);
        sub_2196C8A38(v1240, type metadata accessor for AudioFeedTrack);
        goto LABEL_308;
      case 6uLL:
        v504 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v503 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x18);
        sub_219092608(v504, v503);
        v505 = v1273;
        v506 = v126;
        if (sub_2189A44C0(v1273))
        {
          v507 = *MEMORY[0x277D6E358];
          v508 = sub_219BE8DE4();
          (*(*(v508 - 8) + 104))(v1272, v507, v508);
          sub_21909261C(v504, v503);
          v180 = v506;
          goto LABEL_333;
        }

        v1167 = v126;
        v818 = swift_unknownObjectWeakLoadStrong();
        if (!v818)
        {
          goto LABEL_303;
        }

        v819 = v818;
        v820 = sub_219BF6534();

        objc_opt_self();
        v821 = swift_dynamicCastObjCClass();
        if (v821 && (v822 = [v821 visibleViewController]) != 0)
        {
          v823 = v822;
          swift_getObjectType();
          if (swift_conformsToProtocol2())
          {
            v1271 = swift_allocObject();
            swift_weakInit();
            v824 = v1257;
            v825 = v1249;
            v826 = v1168;
            (*(v1257 + 16))(v1249, v505, v1168);
            v827 = (*(v824 + 80) + 40) & ~*(v824 + 80);
            v828 = swift_allocObject();
            *(v828 + 2) = v1271;
            *(v828 + 3) = v504;
            *(v828 + 4) = v503;
            (*(v824 + 32))(&v828[v827], v825, v826);
            *&v1279[2] = sub_2196C89D0;
            *(&v1279[2] + 1) = v828;
            *&v1279[0] = MEMORY[0x277D85DD0];
            *(&v1279[0] + 1) = 1107296256;
            *&v1279[1] = sub_218793E0C;
            *(&v1279[1] + 1) = &block_descriptor_155;
            v829 = _Block_copy(v1279);
            v830 = v823;

            [v830 dismissViewControllerAnimated:1 completion:v829];
            _Block_release(v829);

            goto LABEL_308;
          }
        }

        else
        {
          v823 = v820;
        }

LABEL_303:
        *&v1279[0] = v504;
        *(&v1279[0] + 1) = v503;
        v1101 = sub_2190FC0D8(v1279, v505);
        sub_21909261C(v504, v503);
        if (v1101)
        {
          LODWORD(v1271) = *MEMORY[0x277D6E528];
          v1102 = v1271;
          v1103 = sub_219BE92D4();
          v1104 = *(*(v1103 - 8) + 104);
          v1105 = v1262;
          v1104(v1262, v1102, v1103);
          v1106 = *MEMORY[0x277D6E518];
          v1107 = *(v1261 + 104);
          v1273 = v1101;
          v1108 = v1260;
          v1107(v1105, v1106, v1260);
          v1109 = v1263;
          v1104(v1263, v1271, v1103);
          v1107(v1109, v1106, v1108);
          v793 = v1265;
          sub_219BE9EB4();
          v1110 = sub_219BE94F4();
          v795 = v1264;
          (*(*(v1110 - 8) + 56))(v1264, 1, 1, v1110);
          v1111 = v1273;
          sub_21909BA64(v1273, v793, v795);

          goto LABEL_305;
        }

        if (qword_27CC08558 != -1)
        {
          swift_once();
        }

        sub_219BF6214();
        sub_219BE5314();
        goto LABEL_308;
      case 7uLL:
        v1167 = v1293;
        v434 = swift_projectBox();
        v435 = v1221;
        sub_2196C8D0C(v434, v1221, type metadata accessor for CampaignRouteModel);
        if (v435[1])
        {
          v436 = *v435;
          v437 = v435[1];
        }

        else
        {
          v437 = 0x8000000219D09BA0;
          v436 = 0xD000000000000012;
        }

        v891 = v1270;
        v892 = v1205;
        *v1205 = v436;
        *(v892 + 8) = v437;
        v893 = *MEMORY[0x277D33B80];
        v894 = sub_219BF2CB4();
        v895 = *(v894 - 8);
        (*(v895 + 104))(v892, v893, v894);
        (*(v895 + 56))(v892, 0, 1, v894);
        v896 = v891[9];
        v897 = v1251;
        v898 = v1250;
        v899 = v1252;
        (*(v1251 + 104))(v1250, *MEMORY[0x277D33600], v1252);

        v900 = v1273;
        LOBYTE(v896) = sub_218AA147C(v892, v1273, v896, v898);
        (*(v897 + 8))(v898, v899);
        sub_2196C8E20(v892, &qword_280E902A0, MEMORY[0x277D33BC8]);
        if (v896)
        {
          sub_2196C8A38(v435, type metadata accessor for CampaignRouteModel);
          goto LABEL_331;
        }

        v901 = sub_2199EF978(v900, v435);
        v902 = [objc_opt_self() sharedApplication];
        v903 = [v902 connectedScenes];

        sub_2186C6148(0, &qword_280E8DA50);
        sub_218F86FB4();
        v904 = sub_219BF5D44();

        sub_2196B6B70(v904);
        v906 = v905;

        if (v906)
        {
          sub_219BE5CD4();
          v907 = swift_dynamicCastClass();
          v908 = v907;
          if (v907)
          {
            v909 = [v907 keyWindow];
            if (v909)
            {
              v910 = v909;
              v911 = [v909 rootViewController];

              if (v911)
              {
                type metadata accessor for MainTabBarController();
                sub_219BF6584();

                v912 = *&v1279[0];
                if (*&v1279[0])
                {
                  LODWORD(v1270) = *MEMORY[0x277D6E528];
                  v913 = v1270;
                  v914 = sub_219BE92D4();
                  v915 = *(v914 - 8);
                  *&v1269 = *(v915 + 104);
                  v1271 = (v915 + 104);
                  v916 = v1262;
                  (v1269)(v1262, v913, v914);
                  v917 = *MEMORY[0x277D6E518];
                  v918 = *(v1261 + 104);
                  v919 = v1260;
                  v918(v916, v917, v1260);
                  v1273 = v912;
                  v920 = v1263;
                  (v1269)(v1263, v1270, v914);
                  v918(v920, v917, v919);
                  v921 = v1265;
                  sub_219BE9EB4();
                  v922 = sub_219BE94F4();
                  v923 = v1264;
                  (*(*(v922 - 8) + 56))(v1264, 1, 1, v922);
                  v924 = v1273;
                  sub_218FDEB54(v901, v921, v923, 0, 0);

                  sub_2196C8E20(v923, &unk_280EE4470, MEMORY[0x277D6E658]);
                  (*(v1267 + 8))(v921, v1266);
                  sub_2196C8A38(v1221, type metadata accessor for CampaignRouteModel);
                  goto LABEL_308;
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
          v908 = 0;
        }

        if (qword_280EE5F98 != -1)
        {
          swift_once();
        }

        v1123 = sub_219BE5434();
        __swift_project_value_buffer(v1123, qword_280F62610);
        v1124 = sub_219BE5414();
        v1125 = sub_219BF61F4();
        if (os_log_type_enabled(v1124, v1125))
        {
          v1126 = swift_slowAlloc();
          *v1126 = 0;
          _os_log_impl(&dword_2186C1000, v1124, v1125, "Unable to show campaign landing page because no valid presenting VC is available!", v1126, 2u);
          MEMORY[0x21CECF960](v1126, -1, -1);
        }

        sub_2196C8A38(v435, type metadata accessor for CampaignRouteModel);
        goto LABEL_308;
      case 8uLL:
        v537 = swift_projectBox();
        sub_2196C8D0C(v537, v96, type metadata accessor for NewsActivity2.Article);
        v172 = v126;
        v538 = sub_218AA1DB4(v1273, v96, MEMORY[0x277D84F90]);
        if (v538)
        {
          v539 = v538;
          v540 = v1265;
          sub_218A5576C(v1265);
          v541 = sub_219BE94F4();
          v542 = v1264;
          (*(*(v541 - 8) + 56))(v1264, 1, 1, v541);
          sub_21909BA64(v539, v540, v542);

          sub_2196C8E20(v542, &unk_280EE4470, MEMORY[0x277D6E658]);
          (*(v1267 + 8))(v540, v1266);
        }

        sub_2196C8A38(v96, type metadata accessor for NewsActivity2.Article);
        goto LABEL_134;
      case 9uLL:
        v385 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v386 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x18);
        v387 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v388 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x21);
        v390 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x28);
        v389 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x30);
        *&v1274[0] = v385;
        *(&v1274[0] + 1) = v386;
        LOBYTE(v1274[1]) = v387;
        BYTE1(v1274[1]) = v388;
        *(&v1274[1] + 1) = v390;
        *&v1274[2] = v389;

        sub_2188202A8(v390);
        v391 = v1273;
        sub_2199EFE20(v1274, v1279);
        v1167 = v126;
        if ((BYTE8(v1279[2]) & 1) == 0)
        {
          v782 = *&v1279[0];
          v1259 = *&v1279[0];
          v783 = sub_219BEA784();
          v783(v782);

          LODWORD(v1258) = *MEMORY[0x277D6E528];
          v784 = v1258;
          v785 = sub_219BE92D4();
          v1271 = v386;
          v786 = v785;
          v787 = *(*(v785 - 8) + 104);
          v1273 = v389;
          *&v1269 = v385;
          v788 = v1262;
          v787(v1262, v784, v785);
          v789 = *MEMORY[0x277D6E518];
          v790 = *(v1261 + 104);
          v791 = v1260;
          v790(v788, v789, v1260);
          v1270 = v390;
          v792 = v1263;
          v787(v1263, v1258, v786);
          v790(v792, v789, v791);
          v793 = v1265;
          sub_219BE9EB4();
          v794 = sub_219BE94F4();
          v795 = v1264;
          (*(*(v794 - 8) + 56))(v1264, 1, 1, v794);
          v796 = v1259;
          sub_21909BA64(v1259, v793, v795);

          sub_2187FABEC(v1270);
LABEL_305:
          sub_2196C8E20(v795, &unk_280EE4470, MEMORY[0x277D6E658]);
          v211 = *(v1267 + 8);
          v212 = v793;
          goto LABEL_306;
        }

        sub_2186CB1F0(v1279, &v1282);
        if (v388)
        {
          __swift_destroy_boxed_opaque_existential_1(&v1282);
        }

        else
        {
          sub_218718690(&v1282, v1274);
          sub_219BEA744();
          swift_allocObject();
          v1032 = sub_219BEA6C4();
          *&v1274[0] = v1032;
          BYTE8(v1274[2]) = 0;

          v1033 = sub_218CF86B0(v391, v1274);
          sub_2189A4E34(v1274);
          if (v1033)
          {
            LODWORD(v1257) = *MEMORY[0x277D6E528];
            v1034 = v1257;
            v1035 = sub_219BE92D4();
            v1036 = *(v1035 - 8);
            v1259 = v1032;
            v1037 = *(v1036 + 104);
            v1271 = v386;
            v1273 = v389;
            v1038 = v1262;
            v1037(v1262, v1034, v1035);
            v1039 = *MEMORY[0x277D6E518];
            v1270 = v390;
            v1258 = v1033;
            v1040 = *(v1261 + 104);
            *&v1269 = v385;
            v1041 = v1260;
            v1040(v1038, v1039, v1260);
            v1042 = v1263;
            v1037(v1263, v1257, v1035);
            v1040(v1042, v1039, v1041);
            v1043 = v1265;
            sub_219BE9EB4();
            v1044 = sub_219BE94F4();
            v1045 = v1264;
            (*(*(v1044 - 8) + 56))(v1264, 1, 1, v1044);
            v1046 = v1258;
            sub_21909BA64(v1258, v1043, v1045);

            sub_2187FABEC(v1270);

            sub_2196C8E20(v1045, &unk_280EE4470, MEMORY[0x277D6E658]);
            (*(v1267 + 8))(v1043, v1266);
            __swift_destroy_boxed_opaque_existential_1(&v1282);
            goto LABEL_308;
          }

          __swift_destroy_boxed_opaque_existential_1(&v1282);
        }

        v630 = v390;
        goto LABEL_346;
      case 0xAuLL:
        v522 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v1274[0] = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v1274[1] = v522;
        v523 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x40);
        v1274[2] = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x30);
        v1274[3] = v523;
        v1275 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x50);
        LOBYTE(v1276) = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x60);
        v524 = v1293;
        v525 = v1274[0];
        v526 = v1274[1];
        v527 = v1274[2];
        v1282 = v1274[0];
        v1283 = v1274[1];
        LOBYTE(v1284) = v1274[2];
        v528 = *(&v1274[2] + 1);
        sub_218B5A004(v1274, v1279);
        sub_21908FD7C(v525, *(&v525 + 1), v526, *(&v526 + 1), v527);
        v529 = v1265;
        sub_218A56C88(v530);
        v1279[0] = 0uLL;
        *&v1279[1] = 1;
        *(&v1279[1] + 8) = 0u;
        *(&v1279[2] + 8) = 0u;
        *(&v1279[3] + 8) = 0u;
        *(&v1279[4] + 8) = 0u;
        v531 = sub_2195D0028(v1273, &v1282, v528, v529, v1279);
        v532 = *(v1267 + 8);
        v533 = v1266;
        v532(v529, v1266);
        v534 = sub_21896FBB0(v1282, *(&v1282 + 1), v1283, *(&v1283 + 1), v1284);
        if (v531)
        {
          sub_218A56C88(v534);
          v535 = sub_219BE94F4();
          v536 = v1264;
          (*(*(v535 - 8) + 56))(v1264, 1, 1, v535);
          sub_21909BA64(v531, v529, v536);

          sub_218B5A060(v1274);
          sub_2196C8E20(v536, &unk_280EE4470, MEMORY[0x277D6E658]);
          v532(v529, v533);
        }

        else
        {
          sub_218B5A060(v1274);
        }

        goto LABEL_250;
      case 0xBuLL:
        v1167 = v1293;
        v322 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v1282 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v1283 = v322;
        v323 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x40);
        v1284 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x30);
        v1285 = v323;
        v1286 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x50);
        v1287 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x60);
        v325 = *(&v1282 + 1);
        v324 = v1282;
        v327 = *(&v1283 + 1);
        v326 = v1283;
        LODWORD(v328) = v1284;
        v1274[0] = v1282;
        v1274[1] = v1283;
        LOBYTE(v1274[2]) = v1284;
        sub_218B5A004(&v1282, v1279);
        if (NewsActivity2.Feed.shouldPresentAsModal.getter())
        {
          LODWORD(v1257) = *MEMORY[0x277D6E528];
          v329 = v1257;
          v330 = sub_219BE92D4();
          v1256 = *(*(v330 - 8) + 104);
          v1271 = v324;
          v1265 = v326;
          v331 = v1262;
          (v1256)(v1262, v329, v330);
          LODWORD(v1258) = v328;
          v328 = *MEMORY[0x277D6E518];
          v1259 = v327;
          v332 = *(v1261 + 104);
          v333 = v1260;
          v332(v331, v328, v1260);
          *&v1269 = v325;
          v334 = v1263;
          (v1256)(v1263, v1257, v330);
          v324 = v1271;
          v335 = v328;
          LOBYTE(v328) = v1258;
          v332(v334, v335, v333);
          v327 = v1259;
          v326 = v1265;
          v325 = v1269;
          sub_219BE9EB4();
        }

        else
        {
          sub_218A56C8C(v122);
        }

        v1288 = v324;
        v1289 = v325;
        v1290 = v326;
        v1291 = v327;
        v1292 = v328;
        v776 = *(&v1284 + 1);
        LOBYTE(v1274[0]) = 1;
        *&v1274[1] = 0;
        *(&v1274[0] + 1) = 0;
        *(&v1274[1] + 8) = v1285;
        *(&v1274[2] + 8) = v1286;
        BYTE8(v1274[3]) = v1287;
        *&v1276 = 0;
        v1275 = 0uLL;
        sub_218F20858(v1285, *(&v1285 + 1), v1286, *(&v1286 + 1), v1287);
        sub_21908FD7C(v324, v325, v326, v327, v328);
        v777 = sub_2195D0028(v1273, &v1288, v776, v122, v1274);
        v1279[2] = v1274[2];
        v1279[3] = v1274[3];
        v1279[4] = v1275;
        *&v1279[5] = v1276;
        v1279[0] = v1274[0];
        v1279[1] = v1274[1];
        sub_2196C8400(v1279, &qword_280EA94E0, &type metadata for FeedViewControllerCreateOptions);
        sub_21896FBB0(v1288, v1289, v1290, v1291, v1292);
        v778 = v1267;
        v779 = v1266;
        if (v777)
        {
          v780 = sub_219BE94F4();
          v781 = v1264;
          (*(*(v780 - 8) + 56))(v1264, 1, 1, v780);
          sub_21909BA64(v777, v122, v781);

          sub_218B5A060(&v1282);
          sub_2196C8E20(v781, &unk_280EE4470, MEMORY[0x277D6E658]);
          (*(v778 + 8))(v122, v779);
        }

        else
        {
          (*(v1267 + 8))(v122, v1266);
LABEL_237:
          sub_218B5A060(&v1282);
        }

        goto LABEL_308;
      case 0xCuLL:
        v381 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v197 = v1293;
        v382 = sub_2190FC1CC(v1273);
        if (v382)
        {
          v383 = v382;
          v384 = v1265;
          sub_218A56538(v1265);
          sub_21909CA28(v383, v384, v381);

          (*(v1267 + 8))(v384, v1266);
        }

        goto LABEL_300;
      case 0xDuLL:
        *&v1279[0] = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);

        v1167 = v126;
        v1273 = sub_2190FC74C(v1273, v1279);

        LODWORD(v1271) = *MEMORY[0x277D6E528];
        v499 = v1271;
        v217 = sub_219BE92D4();
        v218 = *(*(v217 - 8) + 104);
        v252 = v1262;
        v218(v1262, v499, v217);
        v253 = MEMORY[0x277D6E518];
        goto LABEL_95;
      case 0xEuLL:
        v288 = swift_projectBox();
        v289 = v1230;
        sub_2196C8D0C(v288, v1230, type metadata accessor for FollowingNotificationsPrewarm);
        v290 = v1273;
        v197 = v126;
        if (sub_2189A44C0(v1273))
        {
          sub_2196C8A38(v289, type metadata accessor for FollowingNotificationsPrewarm);
          goto LABEL_200;
        }

        v1273 = sub_2190FCB44(v290, v289);
        LODWORD(v1271) = *MEMORY[0x277D6E528];
        v727 = v1271;
        v728 = sub_219BE92D4();
        v729 = *(*(v728 - 8) + 104);
        v730 = v1262;
        v729(v1262, v727, v728);
        v1167 = v197;
        v731 = *MEMORY[0x277D6E518];
        v732 = *(v1261 + 104);
        v733 = v1260;
        v732(v730, v731, v1260);
        v734 = v1263;
        v729(v1263, v1271, v728);
        v732(v734, v731, v733);
        v735 = v1265;
        sub_219BE9EB4();
        v736 = sub_219BE94F4();
        v737 = v1264;
        (*(*(v736 - 8) + 56))(v1264, 1, 1, v736);
        v738 = v1273;
        sub_21909BA64(v1273, v735, v737);

        sub_2196C8E20(v737, &unk_280EE4470, MEMORY[0x277D6E658]);
        (*(v1267 + 8))(v735, v1266);
        sub_2196C8A38(v1230, type metadata accessor for FollowingNotificationsPrewarm);
        goto LABEL_308;
      case 0xFuLL:
        v430 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        memset(v1279, 0, 32);
        LOBYTE(v1279[2]) = -1;
        v172 = v1293;
        v431 = sub_2195D1848(v1273, v430, v1279);
        if (!v431)
        {
          goto LABEL_134;
        }

        v432 = v431;
        v433 = v1265;
        sub_218A56C88(v431);
        goto LABEL_113;
      case 0x10uLL:
        v1167 = v1293;
        v254 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v1282 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v1283 = v254;
        v255 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x40);
        v1284 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x30);
        v1285 = v255;
        v1286 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x50);
        v1287 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x60);
        v256 = *(&v1282 + 1);
        *&v1269 = v1282;
        v1261 = *(&v1283 + 1);
        v257 = v1283;
        v1259 = *(&v1282 + 1);
        if (v1284)
        {
          v256 = v1283;
          if (v1284 != 1)
          {
            goto LABEL_399;
          }
        }

        LODWORD(v1263) = v1284;
        v259 = *(&v1285 + 1);
        v258 = v1285;
        v260 = v1286;
        v261 = v1287;
        v1274[0] = v1285;
        v1274[1] = v1286;
        LOBYTE(v1274[2]) = v1287;
        v262 = v256;
        sub_218B5A004(&v1282, v1279);
        v263 = v258;
        v264 = v259;
        v1260 = *(&v260 + 1);
        v1262 = v260;
        LODWORD(v1271) = v261;
        sub_218F20858(v258, v259, v260, *(&v260 + 1), v261);
        v265 = sub_2195D1848(v1273, v262, v1274);

        v266 = sub_218DFAEC4(*&v1274[0], *(&v1274[0] + 1), *&v1274[1], *(&v1274[1] + 1), v1274[2]);
        v267 = v1267;
        if (!v265)
        {
          goto LABEL_147;
        }

        sub_218A56C88(v266);
        goto LABEL_146;
      case 0x11uLL:
        sub_218932F9C(v1293);
        v454 = sub_218E2CBEC(v1273);
        if (v454)
        {
          v379 = v454;
          v380 = v1265;
          sub_218A54C74(v1265);
LABEL_85:
          v455 = sub_219BE94F4();
          v456 = v1264;
          (*(*(v455 - 8) + 56))(v1264, 1, 1, v455);
          sub_21909BA64(v379, v380, v456);

          sub_2196C8E20(v456, &unk_280EE4470, MEMORY[0x277D6E658]);
          (*(v1267 + 8))(v380, v1266);
        }

        goto LABEL_310;
      case 0x12uLL:
        v509 = swift_projectBox();
        (*(v1245 + 16))(v1244, v509, v128);
        __swift_project_boxed_opaque_existential_1(v1270 + 2, v1270[5]);
        v1167 = v126;
        sub_2186C709C(0, &unk_27CC1DF80);
        sub_219BE1E34();
        if (!*(&v1274[1] + 1))
        {
          goto LABEL_394;
        }

        sub_2186CB1F0(v1274, v1279);
        __swift_project_boxed_opaque_existential_1(v1279, *(&v1279[1] + 1));
        v1273 = sub_219BE45A4();
        LODWORD(v1270) = *MEMORY[0x277D6E528];
        v510 = v1270;
        v511 = sub_219BE92D4();
        v512 = *(*(v511 - 8) + 104);
        v513 = v1262;
        v512(v1262, v510, v511);
        v514 = *MEMORY[0x277D6E518];
        v515 = *(v1261 + 104);
        v516 = v1260;
        v515(v513, v514, v1260);
        v517 = v1263;
        v512(v1263, v1270, v511);
        v515(v517, v514, v516);
        v518 = v1265;
        sub_219BE9EB4();
        v519 = sub_219BE94F4();
        v520 = v1264;
        (*(*(v519 - 8) + 56))(v1264, 1, 1, v519);
        v521 = v1273;
        sub_21909BA64(v1273, v518, v520);

        sub_2196C8E20(v520, &unk_280EE4470, MEMORY[0x277D6E658]);
        (*(v1267 + 8))(v518, v1266);
        (*(v1245 + 8))(v1244, v1271);
        goto LABEL_337;
      case 0x13uLL:
        v571 = swift_projectBox();
        (*(v1242 + 16))(v1241, v571, v1243);
        v1167 = v126;
        v1273 = sub_21953B0F8();
        LODWORD(v1271) = *MEMORY[0x277D6E528];
        v572 = v1271;
        v573 = sub_219BE92D4();
        v574 = *(*(v573 - 8) + 104);
        v575 = v1262;
        v574(v1262, v572, v573);
        v576 = *MEMORY[0x277D6E518];
        v577 = *(v1261 + 104);
        v578 = v1260;
        v577(v575, v576, v1260);
        v579 = v1263;
        v574(v1263, v1271, v573);
        v577(v579, v576, v578);
        v580 = v1265;
        sub_219BE9EB4();
        v581 = sub_219BE94F4();
        v582 = v1264;
        (*(*(v581 - 8) + 56))(v1264, 1, 1, v581);
        v583 = v1273;
        sub_21909BA64(v1273, v580, v582);

        sub_2196C8E20(v582, &unk_280EE4470, MEMORY[0x277D6E658]);
        (*(v1267 + 8))(v580, v1266);
        (*(v1242 + 8))(v1241, v1243);
        goto LABEL_308;
      case 0x14uLL:
        v465 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x30);
        v1279[1] = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v1279[2] = v465;
        v1279[3] = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x40);
        *&v1279[4] = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x50);
        v466 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v1279[0] = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v467 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x30);
        v468 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x40);
        v1274[1] = v466;
        v1274[2] = v467;
        v1274[3] = v468;
        *&v1275 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x50);
        v1274[0] = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        sub_219092568(v1279, &v1282);
        v172 = v126;
        v469 = sub_2191651D0(v1273, v1274, 0, 0, MEMORY[0x277D84F90]);
        if (v469)
        {
          v432 = v469;
          v433 = v1265;
          v470 = sub_218A56C90(v1265);
          v1274[2] = v1279[2];
          v1274[3] = v1279[3];
          *&v1275 = *&v1279[4];
          v1274[0] = v1279[0];
          v1274[1] = v1279[1];
          v471 = v1264;
          NewsActivity2.Issue.transitionIdentifier.getter(v470, v472, v473, v474, v475, v476, v1264);
          sub_21909BA64(v432, v433, v471);
          sub_218AAFFC4(v1279);
LABEL_133:

          sub_2196C8E20(v471, &unk_280EE4470, MEMORY[0x277D6E658]);
          (*(v1267 + 8))(v433, v1266);
        }

        else
        {
          sub_218AAFFC4(v1279);
        }

        goto LABEL_134;
      case 0x15uLL:
        v491 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x30);
        v1279[1] = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v1279[2] = v491;
        v1279[3] = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x40);
        v492 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x58);
        *&v1279[4] = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x50);
        v493 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v1279[0] = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v494 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x30);
        v495 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x40);
        v1274[1] = v493;
        v1274[2] = v494;
        v1274[3] = v495;
        *&v1275 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x50);
        v1274[0] = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v496 = v1273;
        v497 = 0;
        v498 = 0;
        goto LABEL_130;
      case 0x16uLL:
        v559 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x30);
        v1279[1] = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v1279[2] = v559;
        v1279[3] = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x40);
        v497 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x58);
        *&v1279[4] = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x50);
        v560 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v1279[0] = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v561 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x30);
        v562 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x40);
        v1274[1] = v560;
        v1274[2] = v561;
        v498 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x60);
        v1274[3] = v562;
        *&v1275 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x50);
        v1274[0] = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v492 = MEMORY[0x277D84F90];
        goto LABEL_129;
      case 0x17uLL:
        v607 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x30);
        v1279[1] = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v1279[2] = v607;
        v1279[3] = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x40);
        v497 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x58);
        *&v1279[4] = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x50);
        v608 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v1279[0] = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v609 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x30);
        v610 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x40);
        v1274[1] = v608;
        v1274[2] = v609;
        v498 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x60);
        v492 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x68);
        v1274[3] = v610;
        *&v1275 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x50);
        v1274[0] = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
LABEL_129:
        v496 = v1273;
LABEL_130:
        v172 = v1293;
        v611 = sub_2191651D0(v496, v1274, v497, v498, v492);
        if (!v611)
        {
          goto LABEL_134;
        }

        v432 = v611;
        v433 = v1265;
        v612 = sub_218A56C90(v1265);
        v1274[2] = v1279[2];
        v1274[3] = v1279[3];
        *&v1275 = *&v1279[4];
        v1274[0] = v1279[0];
        v1274[1] = v1279[1];
        v471 = v1264;
        NewsActivity2.Issue.transitionIdentifier.getter(v612, v613, v614, v615, v616, v617, v1264);
        goto LABEL_132;
      case 0x18uLL:
        v404 = swift_projectBox();
        v405 = v1259;
        v406 = v1206;
        v407 = v1258;
        (v1259[2])(v1206, v404, v1258);
        __swift_project_boxed_opaque_existential_1(v1270 + 2, v1270[5]);
        v197 = v126;
        sub_2186C709C(0, &qword_280EE5700);
        sub_219BE1E34();
        if (*(&v1274[1] + 1))
        {
          sub_2186CB1F0(v1274, v1279);
          __swift_project_boxed_opaque_existential_1(v1279, *(&v1279[1] + 1));
          sub_219BE6DC4();
          (v405[1])(v406, v407);
          __swift_destroy_boxed_opaque_existential_1(v1279);
          goto LABEL_300;
        }

        __break(1u);
LABEL_394:
        __break(1u);
LABEL_395:
        __break(1u);
        goto LABEL_396;
      case 0x19uLL:
        sub_21896FC94((v1293 & 0xFFFFFFFFFFFFFF9) + 16, v1279);
        v1167 = v126;
        v1273 = sub_218F73AF0(v1273, v1279);
        LODWORD(v1271) = *MEMORY[0x277D6E528];
        v392 = v1271;
        v393 = sub_219BE92D4();
        v394 = *(*(v393 - 8) + 104);
        v395 = v1262;
        v394(v1262, v392, v393);
        v396 = *MEMORY[0x277D6E518];
        v397 = *(v1261 + 104);
        v398 = v1260;
        v397(v395, v396, v1260);
        v399 = v1263;
        v394(v1263, v1271, v393);
        v397(v399, v396, v398);
        v400 = v1265;
        sub_219BE9EB4();
        v401 = sub_219BE94F4();
        v402 = v1264;
        (*(*(v401 - 8) + 56))(v1264, 1, 1, v401);
        v403 = v1273;
        sub_21909BA64(v1273, v400, v402);

        sub_2196C8E20(v402, &unk_280EE4470, MEMORY[0x277D6E658]);
        (*(v1267 + 8))(v400, v1266);
        sub_218C113E0(v1279);
        goto LABEL_308;
      case 0x1AuLL:
        sub_21896FC94((v1293 & 0xFFFFFFFFFFFFFF9) + 16, v1279);
        v172 = v126;
        v655 = sub_219B4E2DC(v1273, v1279);
        v656 = v1265;
        sub_218A55E28(v1265);
        v657 = sub_219BE94F4();
        v658 = v1264;
        (*(*(v657 - 8) + 56))(v1264, 1, 1, v657);
        sub_21909BA64(v655, v656, v658);

        sub_2196C8E20(v658, &unk_280EE4470, MEMORY[0x277D6E658]);
        (*(v1267 + 8))(v656, v1266);
        sub_218C113E0(v1279);
        goto LABEL_134;
      case 0x1BuLL:
        v247 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v1279[0] = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        LOBYTE(v1279[1]) = v247;
        v197 = v1293;
        v248 = sub_219B4EBD0(v1273, v1279);
        if (v248)
        {
          v250 = v248;
          if (v247 == 255)
          {
            sub_218A56150(v249);
          }

          else
          {
            sub_218A56C94(v249);
          }

          v1097 = v1267;
          v1098 = v1266;
          v1099 = sub_219BE94F4();
          v1100 = v1264;
          (*(*(v1099 - 8) + 56))(v1264, 1, 1, v1099);
          sub_21909BA64(v250, v119, v1100);

          sub_2196C8E20(v1100, &unk_280EE4470, MEMORY[0x277D6E658]);
          (*(v1097 + 8))(v119, v1098);
        }

        goto LABEL_300;
      case 0x1CuLL:
        v1167 = v1293;
        v619 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x18);
        v620 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x20);
        if (*((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10) - 5) >= 2 && (v620 == 2 || (v620))
        {
          memset(v1279, 0, 32);
          LOBYTE(v1279[2]) = -1;
          v879 = v1273;
          v880 = v1270;
          v881 = sub_2195CFAE4(v1273, v619, v1279);
          if (v881)
          {
            v882 = v881;
            v883 = v1265;
            sub_218A54C90(v1265);
            v884 = sub_219BE94F4();
            v885 = v1264;
            (*(*(v884 - 8) + 56))(v1264, 1, 1, v884);
            sub_21909BA64(v882, v883, v885);

            sub_2196C8E20(v885, &unk_280EE4470, MEMORY[0x277D6E658]);
            (*(v1267 + 8))(v883, v1266);
          }

          v618 = v1167;
          if (v620 != 2 && (v620 & 1) != 0)
          {
            if (qword_280E8D818 != -1)
            {
              swift_once();
            }

            sub_2196C8698(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
            v886 = swift_allocObject();
            *(v886 + 16) = xmmword_219C09BA0;
            *&v1279[0] = 0;
            *(&v1279[0] + 1) = 0xE000000000000000;
            sub_219BEA7A4();
            v887 = *&v1274[0];
            *&v1282 = *&v1274[0];
            sub_219BF7484();
            sub_218932F9C(v887);
            v888 = v1279[0];
            *(v886 + 56) = MEMORY[0x277D837D0];
            *(v886 + 64) = sub_2186FC3BC();
            *(v886 + 32) = v888;
            sub_219BF6214();
            sub_219BE5314();

            MEMORY[0x28223BE20](v889);
            v1165 = v880;
            v1166 = v879;
            type metadata accessor for SportsOnboardingRedirectRoute(0);
            sub_219BE3204();
            v890 = sub_219BE1C44();
            sub_219BE2F94();

            goto LABEL_308;
          }

          goto LABEL_309;
        }

        v1271 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v621 = OBJC_IVAR___TSFeedViewContext_openedFromNews;
        swift_beginAccess();
        v622 = (v619[v621] == 2) | v619[v621];
        v623 = v1273;
        LODWORD(v1269) = (v619[v621] == 2) | v619[v621];
        if (v620 == 2)
        {
          v624 = v1168;
          if (v622)
          {
            goto LABEL_274;
          }
        }

        else
        {
          v624 = v1168;
          if (((v620 & 1) == 0) | v622 & 1)
          {
LABEL_274:
            v1273 = v619;
            if (qword_280E8D818 != -1)
            {
              swift_once();
            }

            sub_2196C8698(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
            v1004 = swift_allocObject();
            *(v1004 + 16) = xmmword_219C09BA0;
            *&v1279[0] = 0;
            *(&v1279[0] + 1) = 0xE000000000000000;
            sub_219BEA7A4();
            v1005 = v1282;
            v1288 = v1282;
            sub_219BF7484();
            sub_218932F9C(v1005);
            v1006 = *&v1279[0];
            v1007 = v623;
            v1008 = *(&v1279[0] + 1);
            *(v1004 + 56) = MEMORY[0x277D837D0];
            *(v1004 + 64) = sub_2186FC3BC();
            *(v1004 + 32) = v1006;
            *(v1004 + 40) = v1008;
            sub_219BF6214();
            sub_219BE5314();

            MEMORY[0x28223BE20](v1009);
            v1165 = v1270;
            v1166 = v1007;
            type metadata accessor for SportsOnboardingRedirectRoute(0);
            sub_219BE3204();
            v1010 = sub_219BE1C44();
            v1011 = v1257;
            v1012 = v1249;
            (*(v1257 + 16))(v1249, v1007, v624);
            v1013 = (*(v1011 + 80) + 24) & ~*(v1011 + 80);
            v1014 = (v1248 + v1013 + 7) & 0xFFFFFFFFFFFFFFF8;
            v1015 = swift_allocObject();
            *(v1015 + 16) = v1271;
            (*(v1011 + 32))(v1015 + v1013, v1012, v624);
            v1016 = v1015 + v1014;
            v1017 = v1273;
            *v1016 = v1273;
            *(v1016 + 8) = v1269 & 1;
            v1018 = v1017;
            sub_219BE2F94();

            goto LABEL_277;
          }
        }

        if (qword_280E8D818 != -1)
        {
          swift_once();
        }

        sub_2196C8698(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
        v994 = swift_allocObject();
        *(v994 + 16) = xmmword_219C09BA0;
        *&v1279[0] = 0;
        *(&v1279[0] + 1) = 0xE000000000000000;
        sub_219BEA7A4();
        v995 = v1282;
        v1288 = v1282;
        sub_219BF7484();
        sub_218932F9C(v995);
        v997 = *(&v1279[0] + 1);
        v996 = *&v1279[0];
        *(v994 + 56) = MEMORY[0x277D837D0];
        *(v994 + 64) = sub_2186FC3BC();
        *(v994 + 32) = __PAIR128__(v997, v996);
        v623 = v1273;
        sub_219BF6214();
        sub_219BE5314();

        memset(v1279, 0, 32);
        LOBYTE(v1279[2]) = -1;
        v998 = sub_2195CFAE4(v623, v619, v1279);
        if (v998)
        {
          v999 = v998;
          v1000 = v1265;
          sub_218A54C90(v1265);
          v1001 = sub_219BE94F4();
          v1002 = v1264;
          (*(*(v1001 - 8) + 56))(v1264, 1, 1, v1001);
          sub_21909BA64(v999, v1000, v1002);

          sub_2196C8E20(v1002, &unk_280EE4470, MEMORY[0x277D6E658]);
          v1003 = v1000;
          v623 = v1273;
          (*(v1267 + 8))(v1003, v1266);
        }

        goto LABEL_274;
      case 0x1DuLL:
        v626 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v625 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x18);
        *&v1279[0] = v626;
        *(&v1279[0] + 1) = v625;
        sub_2188202A8(v626);
        v197 = v126;
        v627 = sub_219163D7C(v1273, v1279);
        if (!v627)
        {
          sub_2187FABEC(v626);
          goto LABEL_300;
        }

        v628 = v627;
        v1167 = v126;
        sub_219BE8AE4();
        if ((sub_219BE8AD4() & 1) == 0)
        {
          v1273 = v628;
          sub_219BE8A94();
          LODWORD(v1270) = *MEMORY[0x277D6E528];
          v1019 = v1270;
          v1020 = sub_219BE92D4();
          v1021 = *(v1020 - 8);
          *&v1269 = *(v1021 + 104);
          v1271 = (v1021 + 104);
          v1022 = v1262;
          (v1269)(v1262, v1019, v1020);
          v1023 = *MEMORY[0x277D6E518];
          v1024 = *(v1261 + 104);
          v1025 = v1260;
          v1024(v1022, v1023, v1260);
          v1026 = v1263;
          (v1269)(v1263, v1270, v1020);
          v1024(v1026, v1023, v1025);
          v232 = v1265;
          sub_219BE9EB4();
          v1027 = sub_219BE94F4();
          v234 = v1264;
          (*(*(v1027 - 8) + 56))(v1264, 1, 1, v1027);
          v1028 = v1273;
          sub_21909BA64(v1273, v232, v234);
          sub_2187FABEC(v626);

LABEL_279:
          sub_2196C8E20(v234, &unk_280EE4470, MEMORY[0x277D6E658]);
          v211 = *(v1267 + 8);
          v212 = v232;
          goto LABEL_306;
        }

        sub_2186C6148(0, &qword_280E8D790);
        v629 = sub_219BF6F44();
        sub_219BF6214();
        sub_219BE5314();

        v630 = v626;
LABEL_346:
        sub_2187FABEC(v630);
        goto LABEL_308;
      case 0x1EuLL:
        v236 = v1293;
        v543 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v544 = v1270[21];

        if (([v544 useFood] & 1) == 0)
        {
          v831 = v1190;
          sub_219BDE5F4();
          v832 = v1193;
          sub_219BDD7E4();
          (*(v1191 + 8))(v831, v1192);
          if ((*(v1186 + 48))(v832, 1, v1187) == 1)
          {

            sub_2196C8E20(v832, &qword_280EE8E10, MEMORY[0x277D2FB40]);
            v833 = *MEMORY[0x277D6E358];
            v834 = sub_219BE8DE4();
            (*(*(v834 - 8) + 104))(v1272, v833, v834);
          }

          else
          {
            v1069 = v1182;
            sub_2196C8AA4(v832, v1182, MEMORY[0x277D2FB40]);
            sub_2196C8470(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);
            v1071 = *(v1070 + 48);
            v1072 = v1203;
            sub_2196C8D0C(v1069, v1203, MEMORY[0x277D2FB40]);
            v1073 = MEMORY[0x277D84F90];
            *(v1072 + v1071) = MEMORY[0x277D84F90];
            sub_2187B2C48();
            v1075 = v1074;
            v1076 = swift_allocBox();
            v1078 = v1077;
            v1079 = *(v1075 + 48);
            sub_2196C8D0C(v1072, v1077, type metadata accessor for NewsActivity2.Article);
            *(v1078 + v1079) = v1073;
            *&v1279[0] = v1076 | 2;
            sub_2186CF9A8();
            v1080 = v1249;
            v1081 = v1168;
            sub_219BEA7C4();
            sub_2196B6E0C(v1080);

            (*(v1257 + 8))(v1080, v1081);
            sub_2196C8A38(v1072, type metadata accessor for NewsActivity2.Article);
            sub_2196C8A38(v1069, MEMORY[0x277D2FB40]);
          }

          v180 = v236;
          goto LABEL_333;
        }

        v545 = sub_21988B198(v1273, v543);
        if (!v545)
        {
          v1115 = *MEMORY[0x277D6E358];
          v1116 = sub_219BE8DE4();
          (*(*(v1116 - 8) + 104))(v1272, v1115, v1116);

          v180 = v236;
          goto LABEL_333;
        }

        v546 = v545;
        v547 = v1265;
        sub_218A56C8C(v1265);
        v548 = v1264;
        sub_219BDE654();
        sub_21909BA64(v546, v547, v548);

        sub_2196C8E20(v548, &unk_280EE4470, MEMORY[0x277D6E658]);
        (*(v1267 + 8))(v547, v1266);
LABEL_323:
        v618 = v236;
        goto LABEL_309;
      case 0x1FuLL:
        v197 = v1293;
        v452 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v453 = [v1270[21] useFood];
        if (v453)
        {
          if (v452)
          {
            sub_218A56708(v116);
          }

          else
          {
            sub_218A56C88(v453);
          }

          v1064 = v1267;
          v1065 = v1266;
          v1066 = sub_2190FD6AC(v1273, v116, v452);
          v1067 = sub_219BE94F4();
          v1068 = v1264;
          (*(*(v1067 - 8) + 56))(v1264, 1, 1, v1067);
          sub_21909BA64(v1066, v116, v1068);

          sub_2196C8E20(v1068, &unk_280EE4470, MEMORY[0x277D6E658]);
          (*(v1064 + 8))(v116, v1065);
          goto LABEL_300;
        }

        if (qword_280EE5F38 != -1)
        {
          swift_once();
        }

        v812 = sub_219BE5434();
        __swift_project_value_buffer(v812, qword_280F62568);
        v813 = sub_219BE5414();
        v814 = sub_219BF6214();
        if (os_log_type_enabled(v813, v814))
        {
          v815 = swift_slowAlloc();
          *v815 = 0;
          MEMORY[0x21CECF960](v815, -1, -1);
        }

LABEL_200:
        v816 = *MEMORY[0x277D6E358];
        v817 = sub_219BE8DE4();
        (*(*(v817 - 8) + 104))(v1272, v816, v817);
        v180 = v197;
        goto LABEL_333;
      case 0x20uLL:
        v549 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        memset(v1279, 0, 32);
        LOBYTE(v1279[2]) = -1;
        v172 = v1293;
        v550 = sub_2195D1D8C(v1273, v549, v1279, 0, 0, 0);
        if (!v550)
        {
          goto LABEL_134;
        }

        v432 = v550;
        v433 = v1265;
        sub_218A56C8C(v1265);
LABEL_113:
        v551 = sub_219BE94F4();
        v471 = v1264;
        (*(*(v551 - 8) + 56))(v1264, 1, 1, v551);
LABEL_132:
        sub_21909BA64(v432, v433, v471);
        goto LABEL_133;
      case 0x21uLL:
        v291 = v1293;
        v292 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v293 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x18);
        v294 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v295 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x28);
        __swift_project_boxed_opaque_existential_1(v1270 + 66, v1270[69]);
        v296 = v292;

        if (sub_219BEED54())
        {
          memset(v1279, 0, 32);
          LOBYTE(v1279[2]) = -1;
          v297 = sub_2195D1D8C(v1273, v296, v1279, v293, v294, v295);
          if (v297)
          {
            v298 = v297;
            v299 = v1265;
            sub_218A56C8C(v1265);
            v300 = sub_219BE94F4();
            v301 = v1264;
            (*(*(v300 - 8) + 56))(v1264, 1, 1, v300);
            sub_21909BA64(v298, v299, v301);

            sub_2196C8E20(v301, &unk_280EE4470, MEMORY[0x277D6E658]);
            (*(v1267 + 8))(v299, v1266);
          }

          else
          {
          }

          goto LABEL_313;
        }

        if (qword_27CC085D0 != -1)
        {
          swift_once();
        }

        v739 = sub_219BE5434();
        __swift_project_value_buffer(v739, qword_27CCD8AF8);
        v740 = sub_219BE5414();
        v741 = sub_219BF6214();
        if (os_log_type_enabled(v740, v741))
        {
          v742 = swift_slowAlloc();
          *v742 = 0;
          MEMORY[0x21CECF960](v742, -1, -1);
        }

        v743 = *MEMORY[0x277D6E358];
        v744 = sub_219BE8DE4();
        (*(*(v744 - 8) + 104))(v1272, v743, v744);
        v180 = v291;
        goto LABEL_333;
      case 0x22uLL:
        v197 = v1293;
        if (sub_2189A44C0(v1273))
        {
          goto LABEL_200;
        }

        v1273 = sub_218AAC77C();
        LODWORD(v1271) = *MEMORY[0x277D6E528];
        v251 = v1271;
        v217 = sub_219BE92D4();
        v218 = *(*(v217 - 8) + 104);
        v252 = v1262;
        v218(v1262, v251, v217);
        v253 = MEMORY[0x277D6E4F8];
        v1167 = v197;
LABEL_95:
        v220 = *v253;
        v221 = *(v1261 + 104);
        v222 = v252;
        v223 = v220;
        goto LABEL_96;
      case 0x23uLL:
        LOBYTE(v1279[0]) = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        *(v1279 + 8) = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x18);
        v1269 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x28);
        *(&v1279[1] + 8) = v1269;
        v1271 = *(&v1279[0] + 1);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v1167 = v126;
        v1273 = sub_21988C550(v1273, v1279);
        LODWORD(v1270) = *MEMORY[0x277D6E528];
        v224 = v1270;
        v225 = sub_219BE92D4();
        v226 = *(*(v225 - 8) + 104);
        v227 = v1262;
        v226(v1262, v224, v225);
        v228 = *MEMORY[0x277D6E518];
        v229 = *(v1261 + 104);
        v230 = v1260;
        v229(v227, v228, v1260);
        v231 = v1263;
        v226(v1263, v1270, v225);
        v229(v231, v228, v230);
        v232 = v1265;
        sub_219BE9EB4();
        v233 = sub_219BE94F4();
        v234 = v1264;
        (*(*(v233 - 8) + 56))(v1264, 1, 1, v233);
        v235 = v1273;
        sub_21909BA64(v1273, v232, v234);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        goto LABEL_279;
      case 0x24uLL:
        v236 = v1293;
        v237 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v238 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x18);
        if (sub_21909C564())
        {
          v239 = sub_2190FC1CC(v1273);
          v240 = v1267;
          v241 = v1266;
          if (v239)
          {
            v242 = v239;
            v243 = v1265;
            sub_218A56538(v1265);
            v244 = sub_219BE94F4();
            v245 = v1264;
            (*(*(v244 - 8) + 56))(v1264, 1, 1, v244);
            sub_21909BA64(v242, v243, v245);
            sub_2196C8E20(v245, &unk_280EE4470, MEMORY[0x277D6E658]);
            (*(v240 + 8))(v243, v241);
            type metadata accessor for FollowingViewController();
            sub_219BF6584();
            v246 = *&v1279[0];
            if (*&v1279[0])
            {

              sub_218AE58B4(v237, v238);
            }
          }
        }

        else
        {
          v720 = sub_219430CDC(v237, v238);
          v721 = v1267;
          v722 = v1266;
          if (v720)
          {
            v723 = v720;
            v724 = v1265;
            sub_218A557E8(v1265);
            v725 = sub_219BE94F4();
            v726 = v1264;
            (*(*(v725 - 8) + 56))(v1264, 1, 1, v725);
            sub_21909BA64(v723, v724, v726);

            sub_2196C8E20(v726, &unk_280EE4470, MEMORY[0x277D6E658]);
            (*(v721 + 8))(v724, v722);
          }
        }

        goto LABEL_323;
      case 0x25uLL:
        sub_2194314FC((v1293 & 0xFFFFFFFFFFFFFF9) + 16, v1279);
        v170 = sub_219BF2CB4();
        v171 = v1239;
        (*(*(v170 - 8) + 56))(v1239, 1, 1, v170);
        v172 = v126;
        v173 = v1270[14];
        v174 = v1251;
        v175 = v1250;
        v176 = v1252;
        (*(v1251 + 104))(v1250, *MEMORY[0x277D335E0], v1252);
        v177 = v1273;
        LOBYTE(v173) = sub_218AA1908(v171, v1273, v173, v175);
        (*(v174 + 8))(v175, v176);
        sub_2196C8E20(v171, &qword_280E902A0, MEMORY[0x277D33BC8]);
        if (v173)
        {
          sub_2196C88C0(v1279);
          v178 = *MEMORY[0x277D6E358];
          v179 = sub_219BE8DE4();
          (*(*(v179 - 8) + 104))(v1272, v178, v179);
          v180 = v172;
          goto LABEL_333;
        }

        v716 = sub_219430F5C(v177, v1279);
        v717 = v1265;
        sub_218A56C90(v1265);
        v718 = sub_219BE94F4();
        v719 = v1264;
        (*(*(v718 - 8) + 56))(v1264, 1, 1, v718);
        sub_21909BA64(v716, v717, v719);

        sub_2196C8E20(v719, &unk_280EE4470, MEMORY[0x277D6E658]);
        (*(v1267 + 8))(v717, v1266);
        sub_2196C88C0(v1279);
LABEL_134:
        v618 = v172;
        goto LABEL_309;
      case 0x26uLL:
        v1167 = v1293;
        v631 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v1282 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v1283 = v631;
        v632 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x40);
        v1284 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x30);
        v1285 = v632;
        v1286 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x50);
        v1287 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x60);
        v633 = *(&v1282 + 1);
        *&v1269 = v1282;
        v1261 = *(&v1283 + 1);
        v257 = v1283;
        v1259 = *(&v1282 + 1);
        if (v1284)
        {
          v633 = v1283;
          if (v1284 != 1)
          {
            goto LABEL_399;
          }
        }

        LODWORD(v1263) = v1284;
        v635 = *(&v1285 + 1);
        v634 = v1285;
        v636 = v1286;
        v637 = v1287;
        v1274[0] = v1285;
        v1274[1] = v1286;
        LOBYTE(v1274[2]) = v1287;
        v638 = v633;
        sub_218B5A004(&v1282, v1279);
        v263 = v634;
        v264 = v635;
        v1260 = *(&v636 + 1);
        v1262 = v636;
        LODWORD(v1271) = v637;
        sub_218F20858(v634, v635, v636, *(&v636 + 1), v637);
        v265 = sub_2195CFAE4(v1273, v638, v1274);

        sub_218DFAEC4(*&v1274[0], *(&v1274[0] + 1), *&v1274[1], *(&v1274[1] + 1), v1274[2]);
        v267 = v1267;
        if (v265)
        {
          sub_218A54C90(v1265);
LABEL_146:
          v639 = sub_219BE94F4();
          v640 = v1264;
          (*(*(v639 - 8) + 56))(v1264, 1, 1, v639);
          sub_21909BA64(v265, v1265, v640);

          v641 = v1265;
          sub_2196C8E20(v640, &unk_280EE4470, MEMORY[0x277D6E658]);
          (*(v267 + 8))(v641, v1266);
        }

LABEL_147:
        v642 = v1269;
        v643 = v1259;
        v1288 = v1269;
        v1289 = v1259;
        v644 = v1261;
        v1290 = v257;
        v1291 = v1261;
        v645 = v1263;
        v1292 = v1263;
        v1258 = *(&v1284 + 1);
        v646 = v1262;
        v647 = v1260;
        sub_218F20858(v263, v264, v1262, v1260, v1271);
        v648 = v643;
        v649 = v1265;
        sub_21908FD7C(v642, v648, v257, v644, v645);
        sub_218A56C8C(v649);
        LOBYTE(v1274[0]) = 0;
        *&v1274[1] = 0;
        *(&v1274[0] + 1) = 0;
        *(&v1274[1] + 1) = v263;
        *&v1274[2] = v264;
        *(&v1274[2] + 1) = v646;
        *&v1274[3] = v647;
        BYTE8(v1274[3]) = v1271;
        *&v1276 = 0;
        v1275 = 0uLL;
        v650 = sub_2195D0028(v1273, &v1288, v1258, v649, v1274);
        v1279[2] = v1274[2];
        v1279[3] = v1274[3];
        v1279[4] = v1275;
        *&v1279[5] = v1276;
        v1279[0] = v1274[0];
        v1279[1] = v1274[1];
        sub_2196C8400(v1279, &qword_280EA94E0, &type metadata for FeedViewControllerCreateOptions);
        v651 = *(v1267 + 8);
        v652 = v1266;
        v651(v649, v1266);
        sub_21896FBB0(v1288, v1289, v1290, v1291, v1292);
        if (!v650)
        {
          goto LABEL_237;
        }

        sub_218A56C8C(v649);
        v653 = sub_219BE94F4();
        v654 = v1264;
        (*(*(v653 - 8) + 56))(v1264, 1, 1, v653);
        sub_21909BA64(v650, v649, v654);

        sub_218B5A060(&v1282);
        sub_2196C8E20(v654, &unk_280EE4470, MEMORY[0x277D6E658]);
        v651(v649, v652);
        goto LABEL_308;
      case 0x27uLL:
        v1167 = v1293;
        v564 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v563 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x18);
        v565 = qword_280E8D818;

        if (v565 != -1)
        {
          swift_once();
        }

        sub_219BF6214();
        sub_219BE5314();
        v566 = v1273;
        v567 = v1270;
        v568 = sub_2189A44C0(v1273);
        if (v568)
        {
          v569 = *MEMORY[0x277D6E358];
          v570 = sub_219BE8DE4();
          (*(*(v570 - 8) + 104))(v1272, v569, v570);

          goto LABEL_332;
        }

        v1271 = v564;
        MEMORY[0x28223BE20](v568);
        v1165 = v567;
        v1166 = v566;
        type metadata accessor for SportsOnboardingRedirectRoute(0);
        sub_219BE3204();
        *&v1269 = sub_219BE1C44();
        v835 = v1257;
        v836 = v1249;
        v837 = v1168;
        (*(v1257 + 16))(v1249, v566, v1168);
        v838 = (*(v835 + 80) + 16) & ~*(v835 + 80);
        v839 = (v1248 + v838 + 7) & 0xFFFFFFFFFFFFFFF8;
        v840 = swift_allocObject();
        (*(v835 + 32))(v840 + v838, v836, v837);
        v841 = (v840 + v839);
        *v841 = v1271;
        v841[1] = v563;
        v842 = v1269;
        sub_219BE2F94();

LABEL_277:

        goto LABEL_308;
      case 0x28uLL:
        v1271 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v360 = v1271;
        swift_unknownObjectRetain();
        v1167 = v126;
        v1273 = sub_219048E18(v1273, v360);
        LODWORD(v1270) = *MEMORY[0x277D6E528];
        v361 = v1270;
        v362 = sub_219BE92D4();
        v363 = *(*(v362 - 8) + 104);
        v364 = v1262;
        v363(v1262, v361, v362);
        v365 = *MEMORY[0x277D6E4F8];
        v366 = *(v1261 + 104);
        v367 = v1260;
        v366(v364, v365, v1260);
        v368 = v1263;
        v363(v1263, v1270, v362);
        v366(v368, v365, v367);
        v369 = v1265;
        sub_219BE9EB4();
        v370 = sub_219BE94F4();
        v371 = v1264;
        (*(*(v370 - 8) + 56))(v1264, 1, 1, v370);
        v372 = v1273;
        sub_21909BA64(v1273, v369, v371);
        swift_unknownObjectRelease();

        v373 = MEMORY[0x277D6E658];
        v374 = v371;
        goto LABEL_216;
      case 0x29uLL:
        sub_218932F9C(v1293);
        if (qword_280E8D818 != -1)
        {
          swift_once();
        }

        sub_219BF6214();
        v457 = sub_219BE5314();
        MEMORY[0x28223BE20](v457);
        v458 = v1273;
        v1165 = v1270;
        v1166 = v1273;
        type metadata accessor for SportsOnboardingRedirectRoute(0);
        sub_219BE3204();
        v459 = sub_219BE1C44();
        v460 = v1257;
        v461 = v1249;
        v462 = v1168;
        (*(v1257 + 16))(v1249, v458, v1168);
        v463 = (*(v460 + 80) + 16) & ~*(v460 + 80);
        v464 = swift_allocObject();
        (*(v460 + 32))(v464 + v463, v461, v462);
        sub_219BE2F94();

        goto LABEL_89;
      case 0x2AuLL:
        v585 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v586 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x18);
        v587 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x20);
        *&v1279[0] = v585;
        *(&v1279[0] + 1) = v586;
        LOBYTE(v1279[1]) = v587;
        sub_219092540(v585, v586, v587);
        v152 = v126;
        sub_2189B5068(v1279);
        sub_219092554(v585, v586, v587);
        goto LABEL_233;
      case 0x2BuLL:
        sub_218932F9C(v1293);
        v167 = v1209;
        sub_219534E68(v1273, v1209);
        sub_219535290();
        v169 = v168;
        if ((*(*(v168 - 8) + 48))(v167, 1, v168) == 1)
        {
          sub_2196C8E20(v167, &qword_280ED6F90, sub_219535290);
        }

        else
        {
          v1273 = *(v167 + *(v169 + 48));
          v703 = v1220;
          sub_2196C8AA4(v167, v1220, type metadata accessor for WebEmbedResource);
          v704 = *(v703 + *(v1194 + 24));
          LODWORD(v1271) = *MEMORY[0x277D6E528];
          v705 = v1271;
          v706 = sub_219BE92D4();
          v1270 = *(*(v706 - 8) + 104);
          v707 = v1262;
          (v1270)(v1262, v705, v706);
          v708 = *(v1261 + 104);
          v709 = MEMORY[0x277D6E4F8];
          if (!v704)
          {
            v709 = MEMORY[0x277D6E518];
          }

          v710 = *v709;
          v711 = v1260;
          v708(v707, v710, v1260);
          v712 = v1263;
          (v1270)(v1263, v1271, v706);
          v708(v712, v710, v711);
          sub_219BE9EB4();
          v713 = sub_219BE94F4();
          v714 = v1264;
          (*(*(v713 - 8) + 56))(v1264, 1, 1, v713);
          v715 = v1273;
          sub_21909BA64(v1273, v113, v714);

          sub_2196C8E20(v714, &unk_280EE4470, MEMORY[0x277D6E658]);
          (*(v1267 + 8))(v113, v1266);
          sub_2196C8A38(v1220, type metadata accessor for WebEmbedResource);
        }

        goto LABEL_310;
      case 0x2CuLL:
        v1167 = v1293;
        v268 = swift_projectBox();
        v269 = v1228;
        sub_2196C8D0C(v268, v1228, type metadata accessor for WebLinkViewControllerType);
        v270 = v1211;
        sub_2196C8D0C(v269, v1211, type metadata accessor for WebLinkViewControllerType);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          v272 = v1259;
          v273 = v1258;
          if (EnumCaseMultiPayload == 1)
          {
            v274 = v1199;
            (v1259[4])(v1199, v270, v1258);
            v275 = sub_218CF8A44(v1273);
            if (v275)
            {
              v276 = *MEMORY[0x277D6E530];
              v1273 = v275;
              v277 = sub_219BE92D4();
              v278 = *(*(v277 - 8) + 104);
              v279 = v1262;
              v278(v1262, v276, v277);
              v280 = *MEMORY[0x277D6E518];
              v281 = *(v1261 + 104);
              v282 = v1260;
              v281(v279, v280, v1260);
              v283 = v1263;
              v278(v1263, *MEMORY[0x277D6E538], v277);
              v281(v283, v280, v282);
              v284 = v1265;
              sub_219BE9EB4();
              v285 = sub_219BE94F4();
              v286 = v1264;
              (*(*(v285 - 8) + 56))(v1264, 1, 1, v285);
              v287 = v1273;
              sub_21909BA64(v1273, v284, v286);

              sub_2196C8E20(v286, &unk_280EE4470, MEMORY[0x277D6E658]);
              (*(v1267 + 8))(v284, v1266);
              (v1259[1])(v1199, v1258);
LABEL_268:
              sub_2196C8A38(v1228, type metadata accessor for WebLinkViewControllerType);
              goto LABEL_308;
            }

            (v272[1])(v274, v273);
          }

          else
          {
            v980 = v1200;
            sub_2196C8AA4(v270, v1200, type metadata accessor for WebLinkRouteModel);
            v981 = sub_218CF8D3C(v1273, v980);
            if (v981)
            {
              LODWORD(v1271) = *MEMORY[0x277D6E528];
              v982 = v1271;
              v1273 = v981;
              v983 = sub_219BE92D4();
              v984 = *(*(v983 - 8) + 104);
              v985 = v1262;
              v984(v1262, v982, v983);
              v986 = *MEMORY[0x277D6E518];
              v987 = *(v1261 + 104);
              v988 = v1260;
              v987(v985, v986, v1260);
              v989 = v1263;
              v984(v1263, v1271, v983);
              v987(v989, v986, v988);
              v990 = v1265;
              sub_219BE9EB4();
              v991 = sub_219BE94F4();
              v992 = v1264;
              (*(*(v991 - 8) + 56))(v1264, 1, 1, v991);
              v993 = v1273;
              sub_21909BA64(v1273, v990, v992);

              sub_2196C8E20(v992, &unk_280EE4470, MEMORY[0x277D6E658]);
              (*(v1267 + 8))(v990, v1266);
              sub_2196C8A38(v1200, type metadata accessor for WebLinkRouteModel);
              goto LABEL_268;
            }

            sub_2196C8A38(v980, type metadata accessor for WebLinkRouteModel);
          }
        }

        else
        {
          v974 = v1259;
          v975 = v1227;
          v976 = v1258;
          (v1259[4])(v1227, v270, v1258);
          v977 = [objc_opt_self() sharedApplication];
          v978 = sub_219BDB854();
          sub_2194B115C(MEMORY[0x277D84F90]);
          type metadata accessor for OpenExternalURLOptionsKey(0);
          sub_2196C8DD8(&qword_27CC0A770, type metadata accessor for OpenExternalURLOptionsKey);
          v979 = sub_219BF5204();

          [v977 openURL:v978 options:v979 completionHandler:0];

          (v974[1])(v975, v976);
        }

        sub_2196C8A38(v269, type metadata accessor for WebLinkViewControllerType);
        goto LABEL_308;
      case 0x2DuLL:
        sub_218C24040();
        v552 = v126;
        v554 = v553;
        v1167 = v552;
        v555 = swift_projectBox();
        v556 = *(v554 + 48);
        v557 = *(v554 + 64);
        (v1259[2])(v1253, v555, v1258);
        sub_2196C8588(v555 + v556, v1254, &qword_280EE64A0, MEMORY[0x277D34D78]);
        sub_2196C8588(v555 + v557, v1256, &unk_280EE6490, MEMORY[0x277D34E88]);
        v558 = v1270;
        __swift_project_boxed_opaque_existential_1(v1270 + 2, v1270[5]);
        sub_2186C709C(0, &qword_280EA6BB0);
        sub_219BE1E34();
        sub_2196C8608(v1279, v1274);
        if (*(&v1274[1] + 1))
        {
          __swift_project_boxed_opaque_existential_1(v1274, *(&v1274[1] + 1));
          sub_2187AC958(0);
          __swift_destroy_boxed_opaque_existential_1(v1274);
        }

        else
        {
          sub_2196C8C94(v1274, &qword_27CC1DF78, &qword_280EA6BB0, &protocol descriptor for EngagementUpsellOfferManagerType);
        }

        __swift_project_boxed_opaque_existential_1(v558 + 30, v558[33]);
        v925 = v1233;
        (*(v1231 + 56))(v1233, 1, 1, v1232);
        sub_2199F33C0(v925);
        sub_2196C8E20(v925, qword_280ED3E78, type metadata accessor for CampaignRouteModel);
        v1273 = sub_219BE4674();

        LODWORD(v1271) = *MEMORY[0x277D6E528];
        v926 = v1271;
        v927 = sub_219BE92D4();
        v928 = *(*(v927 - 8) + 104);
        v929 = v1262;
        v928(v1262, v926, v927);
        v930 = *MEMORY[0x277D6E518];
        v931 = *(v1261 + 104);
        v932 = v1260;
        v931(v929, v930, v1260);
        v933 = v1263;
        v928(v1263, v1271, v927);
        v931(v933, v930, v932);
        v934 = v1265;
        sub_219BE9EB4();
        v935 = sub_219BE94F4();
        v936 = v1264;
        (*(*(v935 - 8) + 56))(v1264, 1, 1, v935);
        v937 = v1273;
        sub_21909BA64(v1273, v934, v936);

        sub_2196C8E20(v936, &unk_280EE4470, MEMORY[0x277D6E658]);
        (*(v1267 + 8))(v934, v1266);
        sub_2196C8C94(v1279, &qword_27CC1DF78, &qword_280EA6BB0, &protocol descriptor for EngagementUpsellOfferManagerType);
        sub_2196C8E20(v1256, &unk_280EE6490, MEMORY[0x277D34E88]);
        sub_2196C8E20(v1254, &qword_280EE64A0, MEMORY[0x277D34D78]);
        v211 = v1259[1];
        v212 = v1253;
        goto LABEL_253;
      case 0x2EuLL:
        v197 = v1293;
        v686 = swift_projectBox();
        v687 = v1259;
        v688 = v1207;
        v689 = v1258;
        (v1259[2])(v1207, v686, v1258);
        v690 = sub_219BE3D64();
        v691 = v1222;
        (*(*(v690 - 8) + 56))(v1222, 1, 1, v690);
        v692 = sub_2199F0118();
        sub_2196C8E20(v691, &qword_280EE64A0, MEMORY[0x277D34D78]);
        if (v692)
        {
          v693 = swift_unknownObjectWeakLoadStrong();
          if (v693)
          {
            v694 = v693;
            v695 = sub_219BF6534();

            [v695 presentViewController:v692 animated:1 completion:0];
          }

          else
          {
          }
        }

        (v687[1])(v688, v689);
        goto LABEL_300;
      case 0x2FuLL:
        v193 = swift_projectBox();
        v194 = v1259;
        v195 = v1235;
        v196 = v1258;
        (v1259[2])(v1235, v193, v1258);
        v197 = v126;
        v198 = sub_2199F04B8();
        if (v198)
        {
          LODWORD(v1271) = *MEMORY[0x277D6E528];
          v199 = v1271;
          v1273 = v198;
          v200 = sub_219BE92D4();
          v201 = *(*(v200 - 8) + 104);
          v202 = v1262;
          v201(v1262, v199, v200);
          v1167 = v197;
          v203 = *MEMORY[0x277D6E518];
          v204 = *(v1261 + 104);
          v205 = v1260;
          v204(v202, v203, v1260);
          v206 = v1263;
          v201(v1263, v1271, v200);
          v204(v206, v203, v205);
          v207 = v1265;
          sub_219BE9EB4();
          v208 = sub_219BE94F4();
          v209 = v1264;
          (*(*(v208 - 8) + 56))(v1264, 1, 1, v208);
          v210 = v1273;
          sub_21909BA64(v1273, v207, v209);

          sub_2196C8E20(v209, &unk_280EE4470, MEMORY[0x277D6E658]);
          (*(v1267 + 8))(v207, v1266);
          v211 = v1259[1];
          v212 = v1235;
LABEL_253:
          v938 = v1258;
          goto LABEL_307;
        }

        (v194[1])(v195, v196);
LABEL_300:
        v618 = v197;
        goto LABEL_309;
      case 0x30uLL:
        v1167 = v1293;
        v302 = swift_projectBox();
        v303 = v1255;
        sub_2196C8D0C(v302, v1255, type metadata accessor for PreBuyFlowRouteModel);
        if (*(v303 + *(v1212 + 28)))
        {
          v304 = v1195;
          sub_219BDBD54();
          sub_219BDBD44();
          (*(v1196 + 8))(v304, v1197);
        }

        else
        {
          v745 = v1233;
          (*(v1231 + 56))(v1233, 1, 1, v1232);
          sub_2199F33C0(v745);
          sub_2196C8E20(v745, qword_280ED3E78, type metadata accessor for CampaignRouteModel);
        }

        __swift_project_boxed_opaque_existential_1(v1270 + 30, v1270[33]);
        v1273 = sub_219BE4684();

        LODWORD(v1271) = *MEMORY[0x277D6E528];
        v746 = v1271;
        v747 = sub_219BE92D4();
        v748 = *(*(v747 - 8) + 104);
        v749 = v1262;
        v748(v1262, v746, v747);
        v750 = *MEMORY[0x277D6E518];
        v751 = *(v1261 + 104);
        v752 = v1260;
        v751(v749, v750, v1260);
        v753 = v1263;
        v748(v1263, v1271, v747);
        v751(v753, v750, v752);
        v754 = v1265;
        sub_219BE9EB4();
        v755 = sub_219BE94F4();
        v756 = v1264;
        (*(*(v755 - 8) + 56))(v1264, 1, 1, v755);
        v757 = v1273;
        sub_21909BA64(v1273, v754, v756);

        sub_2196C8E20(v756, &unk_280EE4470, MEMORY[0x277D6E658]);
        (*(v1267 + 8))(v754, v1266);
        sub_2196C8A38(v1255, type metadata accessor for PreBuyFlowRouteModel);
        goto LABEL_308;
      case 0x31uLL:
        v336 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v337 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x18);
        v338 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v339 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x28);
        v340 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x30);
        *&v1282 = v336;
        *(&v1282 + 1) = v337;
        *&v1283 = v338;
        *(&v1283 + 1) = v339;
        LOBYTE(v1284) = v340;
        LODWORD(v1271) = v340;
        sub_21908FD7C(v336, v337, v338, v339, v340);
        v341 = v1265;
        sub_218A5652C(v1265);
        LOBYTE(v1274[0]) = 0;
        *(v1274 + 8) = 0u;
        *(&v1274[1] + 8) = 0u;
        *(&v1274[2] + 8) = 0u;
        BYTE8(v1274[3]) = -1;
        *&v1276 = 0;
        v1275 = 0uLL;
        v1167 = v126;
        v342 = sub_2195D0028(v1273, &v1282, 0, v341, v1274);
        v1279[2] = v1274[2];
        v1279[3] = v1274[3];
        v1279[4] = v1275;
        *&v1279[5] = v1276;
        v1279[0] = v1274[0];
        v1279[1] = v1274[1];
        sub_2196C8400(v1279, &qword_280EA94E0, &type metadata for FeedViewControllerCreateOptions);
        v343 = *(v1267 + 8);
        v344 = v1266;
        (v343)(v341, v1266);
        if (v342)
        {
          sub_218A5652C(v341);
          v345 = sub_219BE94F4();
          v346 = *(*(v345 - 8) + 56);
          v1270 = v339;
          v347 = v338;
          v348 = v337;
          v349 = v336;
          v350 = v1264;
          v346(v1264, 1, 1, v345);
          v1273 = v343;
          sub_21909BA64(v342, v341, v350);
          sub_21896FBB0(v349, v348, v347, v1270, v1271);

          sub_2196C8E20(v350, &unk_280EE4470, MEMORY[0x277D6E658]);
          (v1273)(v341, v344);
        }

        else
        {
          sub_21896FBB0(v336, v337, v338, v339, v1271);
        }

        goto LABEL_308;
      case 0x32uLL:
        v148 = swift_projectBox();
        v149 = v1237;
        v150 = v1236;
        v151 = v1238;
        (*(v1237 + 16))(v1236, v148, v1238);
        v152 = v126;
        v153 = sub_2199F05A4(v1273, v150);
        if (v153)
        {
          LODWORD(v1271) = *MEMORY[0x277D6E528];
          v154 = v1271;
          v1273 = v153;
          v155 = sub_219BE92D4();
          v156 = *(v155 - 8);
          v1167 = v152;
          v157 = *(v156 + 104);
          v158 = v1262;
          v157(v1262, v154, v155);
          v159 = *MEMORY[0x277D6E518];
          v160 = *(v1261 + 104);
          v161 = v1260;
          v160(v158, v159, v1260);
          v162 = v1263;
          v157(v1263, v1271, v155);
          v160(v162, v159, v161);
          v163 = v1265;
          sub_219BE9EB4();
          v164 = sub_219BE94F4();
          v165 = v1264;
          (*(*(v164 - 8) + 56))(v1264, 1, 1, v164);
          v166 = v1273;
          sub_21909BA64(v1273, v163, v165);

          sub_2196C8E20(v165, &unk_280EE4470, MEMORY[0x277D6E658]);
          (*(v1267 + 8))(v163, v1266);
          (*(v1237 + 8))(v1236, v1238);
          goto LABEL_308;
        }

        (*(v149 + 8))(v150, v151);
LABEL_233:
        v618 = v152;
        goto LABEL_309;
      case 0x33uLL:
        v1167 = v1293;
        v696 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x60);
        v1279[4] = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x50);
        v1279[5] = v696;
        v1280 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x70);
        v1281 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x80);
        v697 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v1279[0] = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v1279[1] = v697;
        v698 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x40);
        v1279[2] = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x30);
        v1279[3] = v698;
        v699 = swift_unknownObjectWeakLoadStrong();
        sub_2189EB2A8(v1279, v1274);
        v700 = [v699 presentedViewController];

        if (v700)
        {

          if (qword_280E8D8F0 != -1)
          {
            swift_once();
          }

          sub_2196C8698(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
          v701 = swift_allocObject();
          *(v701 + 16) = xmmword_219C09BA0;
          v702 = v1279[0];
          *(v701 + 56) = MEMORY[0x277D837D0];
          *(v701 + 64) = sub_2186FC3BC();
          *(v701 + 32) = v702;

          sub_219BF6214();
          sub_219BE5314();

          goto LABEL_166;
        }

        v1275 = v1279[4];
        v1276 = v1279[5];
        v1277 = v1280;
        v1278 = v1281;
        v1274[0] = v1279[0];
        v1274[1] = v1279[1];
        v1274[2] = v1279[2];
        v1274[3] = v1279[3];
        v959 = swift_unknownObjectWeakLoadStrong();
        v960 = sub_2195E1C48(v1273, v1274, v959);

        if (!v960)
        {
LABEL_166:
          sub_2189EB304(v1279);
          goto LABEL_308;
        }

        v1273 = v960;
        if (qword_280E8D8F0 != -1)
        {
          swift_once();
        }

        sub_2196C8698(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
        v961 = swift_allocObject();
        *(v961 + 16) = xmmword_219C09BA0;
        v962 = *(&v1279[0] + 1);
        v963 = *&v1279[0];
        *(v961 + 56) = MEMORY[0x277D837D0];
        *(v961 + 64) = sub_2186FC3BC();
        *(v961 + 32) = __PAIR128__(v962, v963);

        sub_219BF6214();
        sub_219BE5314();

        LODWORD(v1271) = *MEMORY[0x277D6E530];
        v964 = v1271;
        v965 = sub_219BE92D4();
        v966 = *(*(v965 - 8) + 104);
        v967 = v1262;
        v966(v1262, v964, v965);
        v968 = *MEMORY[0x277D6E518];
        v969 = *(v1261 + 104);
        v970 = v1260;
        v969(v967, v968, v1260);
        v971 = v1263;
        v966(v1263, v1271, v965);
        v969(v971, v968, v970);
        v190 = v1265;
        sub_219BE9EB4();
        v972 = sub_219BE94F4();
        v192 = v1264;
        (*(*(v972 - 8) + 56))(v1264, 1, 1, v972);
        v973 = v1273;
        sub_21909BA64(v1273, v190, v192);

        sub_2189EB304(v1279);
LABEL_98:
        sub_2196C8E20(v192, &unk_280EE4470, MEMORY[0x277D6E658]);
        v211 = *(v1267 + 8);
        v212 = v190;
LABEL_306:
        v938 = v1266;
LABEL_307:
        v211(v212, v938);
        goto LABEL_308;
      case 0x34uLL:
        v678 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v679 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x18);
        v680 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x20);
        *&v1279[0] = v678;
        *(&v1279[0] + 1) = v679;
        *&v1279[1] = v680;
        sub_218DFB8E8(v678, v679, v680);
        v524 = v126;
        v681 = sub_2198CCC6C(v1273, v1279);
        if (!v681)
        {
          if (qword_280EE5F98 != -1)
          {
            swift_once();
          }

          v953 = sub_219BE5434();
          __swift_project_value_buffer(v953, qword_280F62610);
          v954 = sub_219BE5414();
          v955 = sub_219BF61F4();
          if (os_log_type_enabled(v954, v955))
          {
            v956 = swift_slowAlloc();
            *v956 = 0;
            _os_log_impl(&dword_2186C1000, v954, v955, "Failed to create TipViewController", v956, 2u);
            MEMORY[0x21CECF960](v956, -1, -1);
          }

          sub_218DFB934(v678, v679, v680);

          v957 = *MEMORY[0x277D6E358];
          v958 = sub_219BE8DE4();
          (*(*(v958 - 8) + 104))(v1272, v957, v958);
          v180 = v524;
          goto LABEL_333;
        }

        v682 = v681;
        v683 = swift_allocObject();
        swift_weakInit();
        v684 = swift_allocObject();
        v684[2] = v683;
        v684[3] = v678;
        v684[4] = v679;
        v684[5] = v680;
        v684[6] = v682;
        sub_218DFB8E8(v678, v679, v680);

        v685 = v682;
        sub_219BF64D4();

        sub_218DFB934(v678, v679, v680);
LABEL_250:
        v618 = v524;
        goto LABEL_309;
      case 0x35uLL:
        v1273 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v1167 = v1293;
        LODWORD(v1271) = *MEMORY[0x277D6E528];
        v181 = v1271;
        v182 = sub_219BE92D4();
        v183 = *(*(v182 - 8) + 104);
        v184 = v1262;
        v183(v1262, v181, v182);
        v185 = *MEMORY[0x277D6E518];
        v186 = *(v1261 + 104);
        v187 = v1260;
        v186(v184, v185, v1260);
        v188 = v1263;
        v183(v1263, v1271, v182);
        v186(v188, v185, v187);
        v189 = v1273;
        v190 = v1265;
        sub_219BE9EB4();
        v191 = sub_219BE94F4();
        v192 = v1264;
        (*(*(v191 - 8) + 56))(v1264, 1, 1, v191);
        goto LABEL_97;
      case 0x36uLL:
        sub_2196C8470(0, &qword_27CC1DF70, MEMORY[0x277D34E88], MEMORY[0x277D34D18]);
        v659 = v126;
        v661 = v660;
        v197 = v659;
        v662 = swift_projectBox();
        v663 = *(v661 + 48);
        v664 = v1214;
        v665 = v1246;
        v666 = v1216;
        (*(v1214 + 16))(v1246, v662, v1216);
        v668 = v1217;
        v667 = v1218;
        v669 = v1215;
        (*(v1217 + 16))(v1215, v662 + v663, v1218);
        v670 = swift_unknownObjectWeakLoadStrong();
        if (v670)
        {
          v671 = v670;
          __swift_project_boxed_opaque_existential_1(v1270 + 40, v1270[43]);
          v665 = v1246;
          sub_219BE4264();
        }

        (*(v668 + 8))(v669, v667);
        (*(v664 + 8))(v665, v666);
        goto LABEL_300;
      case 0x37uLL:
        sub_218718690((v1293 & 0xFFFFFFFFFFFFFF9) + 16, v1279);
        v672 = swift_unknownObjectWeakLoadStrong();
        v291 = v126;
        v673 = [v672 presentedViewController];

        if (!v673)
        {
          sub_219BDE3D4();
          v939 = sub_219BDE3C4();
          v1271 = v939;
          v940 = sub_219BEA784();
          v940(v939);

          LODWORD(v1273) = *MEMORY[0x277D6E530];
          v941 = v1273;
          v942 = sub_219BE92D4();
          v943 = *(*(v942 - 8) + 104);
          v944 = v1262;
          v943(v1262, v941, v942);
          v945 = *MEMORY[0x277D6E518];
          v946 = *(v1261 + 104);
          v947 = v1260;
          v946(v944, v945, v1260);
          v1167 = v291;
          v948 = v1263;
          v943(v1263, v1273, v942);
          v946(v948, v945, v947);
          v949 = v1265;
          sub_219BE9EB4();
          v950 = sub_219BE94F4();
          v951 = v1264;
          (*(*(v950 - 8) + 56))(v1264, 1, 1, v950);
          v952 = v1271;
          sub_21909BA64(v1271, v949, v951);

          sub_2196C8E20(v951, &unk_280EE4470, MEMORY[0x277D6E658]);
          (*(v1267 + 8))(v949, v1266);
LABEL_337:
          __swift_destroy_boxed_opaque_existential_1(v1279);
          goto LABEL_308;
        }

        if (qword_280E8D818 != -1)
        {
          swift_once();
        }

        sub_2196C8698(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
        v674 = swift_allocObject();
        *(v674 + 16) = xmmword_219C09BA0;
        __swift_project_boxed_opaque_existential_1(v1279, *(&v1279[1] + 1));
        v675 = sub_219BDDE64();
        v677 = v676;
        *(v674 + 56) = MEMORY[0x277D837D0];
        *(v674 + 64) = sub_2186FC3BC();
        *(v674 + 32) = v675;
        *(v674 + 40) = v677;
        sub_219BF6214();
        sub_219BE5314();

        __swift_destroy_boxed_opaque_existential_1(v1279);
LABEL_313:
        v618 = v291;
        goto LABEL_309;
      case 0x38uLL:
        v213 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x18);
        *&v1279[0] = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        *(&v1279[0] + 1) = v213;

        v214 = v126;
        v215 = sub_2199F0234(v1273, v1279);

        if (!v215)
        {
          v618 = v214;
          goto LABEL_309;
        }

        LODWORD(v1271) = *MEMORY[0x277D6E528];
        v216 = v1271;
        v217 = sub_219BE92D4();
        v218 = *(*(v217 - 8) + 104);
        v219 = v1262;
        v218(v1262, v216, v217);
        v220 = *MEMORY[0x277D6E518];
        v1167 = v214;
        v221 = *(v1261 + 104);
        v222 = v219;
        v223 = v220;
        v1273 = v215;
LABEL_96:
        v500 = v1260;
        v221(v222, v223, v1260);
        v501 = v1263;
        v218(v1263, v1271, v217);
        v221(v501, v220, v500);
        v190 = v1265;
        sub_219BE9EB4();
        v502 = sub_219BE94F4();
        v192 = v1264;
        (*(*(v502 - 8) + 56))(v1264, 1, 1, v502);
        v189 = v1273;
LABEL_97:
        sub_21909BA64(v189, v190, v192);

        goto LABEL_98;
      case 0x39uLL:
        v1167 = v1293;
        v584 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v369 = v1226;
        if (*((v1293 & 0xFFFFFFFFFFFFFF9) + 0x28))
        {
          sub_218A55E1C(v1226);
        }

        else
        {
          sub_218A56C84(v125);
        }

        v843 = v1273;
        memset(v1274, 0, 32);
        LOBYTE(v1274[2]) = -1;
        sub_2195D133C(v1273, v584, v369, v1274, v1279);
        if (BYTE8(v1279[2]) == 1)
        {
          sub_2186CB1F0(v1279, &v1282);
          sub_218718690(&v1282, v1274);
          sub_219BEA744();
          swift_allocObject();
          v844 = sub_219BEA6C4();
          *&v1274[0] = v844;
          BYTE8(v1274[2]) = 0;

          v845 = sub_218CF86B0(v843, v1274);
          sub_2189A4E34(v1274);
          if (v845)
          {
            LODWORD(v1270) = *MEMORY[0x277D6E528];
            v846 = v1270;
            v847 = sub_219BE92D4();
            v848 = *(*(v847 - 8) + 104);
            v849 = v1262;
            v848(v1262, v846, v847);
            v850 = *MEMORY[0x277D6E518];
            v1273 = v844;
            v851 = *(v1261 + 104);
            v1271 = v845;
            v852 = v1260;
            v851(v849, v850, v1260);
            v853 = v1263;
            v848(v1263, v1270, v847);
            v851(v853, v850, v852);
            v854 = v1265;
            sub_219BE9EB4();
            v855 = sub_219BE94F4();
            v856 = v1264;
            (*(*(v855 - 8) + 56))(v1264, 1, 1, v855);
            v857 = v1271;
            sub_21909BA64(v1271, v854, v856);

            sub_2196C8E20(v856, &unk_280EE4470, MEMORY[0x277D6E658]);
            v858 = *(v1267 + 8);
            v859 = v1266;
            v858(v854, v1266);
            __swift_destroy_boxed_opaque_existential_1(&v1282);
            v858(v1226, v859);
            goto LABEL_308;
          }

          __swift_destroy_boxed_opaque_existential_1(&v1282);
          goto LABEL_217;
        }

        v860 = *&v1279[0];
        if (*&v1279[0])
        {
          v861 = sub_219BE94F4();
          v862 = v1264;
          (*(*(v861 - 8) + 56))(v1264, 1, 1, v861);
          sub_21909BA64(v860, v369, v862);

          v373 = MEMORY[0x277D6E658];
          v374 = v862;
LABEL_216:
          sub_2196C8E20(v374, &unk_280EE4470, v373);
LABEL_217:
          v211 = *(v1267 + 8);
          v212 = v369;
          goto LABEL_306;
        }

        (*(v1267 + 8))(v369, v1266);
LABEL_331:
        v1117 = *MEMORY[0x277D6E358];
        v1118 = sub_219BE8DE4();
        (*(*(v1118 - 8) + 104))(v1272, v1117, v1118);
LABEL_332:
        v180 = v1167;
LABEL_333:
        result = sub_218932F9C(v180);
        break;
      case 0x3AuLL:
        v1167 = v1293;
        v306 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v305 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x18);
        v307 = *((v1293 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v308 = v1204;
        sub_218A56C8C(v1204);
        v309 = v1270;
        v310 = [objc_opt_self() sharedAccount];
        v311 = [v310 isContentStoreFrontSupported];

        if (v311)
        {
          v312 = [v309[21] puzzlesEnabled];
          v313 = v1267;
          if (v312)
          {
            v1288 = v306;
            v1289 = v305;
            v1290 = v307;
            v1291 = MEMORY[0x277D84F90];
            v1292 = 1;
            LOBYTE(v1274[0]) = 1;
            *(v1274 + 8) = 0u;
            *(&v1274[1] + 8) = 0u;
            *(&v1274[2] + 8) = 0u;
            BYTE8(v1274[3]) = -1;
            *&v1276 = 0;
            v1275 = 0uLL;

            v314 = v307;
            v315 = sub_2195D0028(v1273, &v1288, 11, v308, v1274);
            v1279[2] = v1274[2];
            v1279[3] = v1274[3];
            v1279[4] = v1275;
            *&v1279[5] = v1276;
            v1279[0] = v1274[0];
            v1279[1] = v1274[1];
            sub_2196C8400(v1279, &qword_280EA94E0, &type metadata for FeedViewControllerCreateOptions);
            v316 = *(v313 + 8);
            v317 = v308;
            v318 = v1266;
            v316(v317, v1266);

            *&v1282 = v315;
            BYTE8(v1284) = 0;
            if (!v315)
            {
              goto LABEL_331;
            }

            v319 = v1265;
            sub_218A56C8C(v1265);
            v320 = sub_219BE94F4();
            v321 = v1264;
            (*(*(v320 - 8) + 56))(v1264, 1, 1, v320);
            sub_21909BA64(v315, v319, v321);

            sub_2196C8E20(v321, &unk_280EE4470, MEMORY[0x277D6E658]);
            v316(v319, v318);
LABEL_308:
            v618 = v1167;
LABEL_309:
            sub_218932F9C(v618);
LABEL_310:
            v1112 = MEMORY[0x277D6E348];
LABEL_311:
            v1113 = *v1112;
            v1114 = sub_219BE8DE4();
            return (*(*(v1114 - 8) + 104))(v1272, v1113, v1114);
          }

          if ((sub_219BF1AE4() & 1) == 0)
          {
            (*(v313 + 8))(v308, v1266);
            *&v1282 = 0;
            BYTE8(v1284) = 0;
            goto LABEL_331;
          }

          if (qword_27CC089E8 != -1)
          {
            swift_once();
          }

          v1029 = sub_219BF1584();
          v1030 = __swift_project_value_buffer(v1029, qword_27CCD8FE8);
          *(&v1283 + 1) = type metadata accessor for AlertDeviceOffline();
          *&v1284 = sub_2196C8DD8(&qword_27CC0C708, type metadata accessor for AlertDeviceOffline);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v1282);
          (*(*(v1029 - 8) + 16))(boxed_opaque_existential_1, v1030, v1029);
        }

        else
        {
          *(&v1283 + 1) = &type metadata for AlertContentRegionUnavailable;
          *&v1284 = sub_2189F7F2C();
          v313 = v1267;
        }

        v758 = v1273;
        v761 = *(v313 + 8);
        v760 = v313 + 8;
        v759 = v761;
        (v761)(v308, v1266);
        BYTE8(v1284) = 1;
        sub_2186CB1F0(&v1282, v1274);
        sub_218718690(v1274, v1279);
        sub_219BEA744();
        swift_allocObject();
        v762 = sub_219BEA6C4();
        *&v1279[0] = v762;
        BYTE8(v1279[2]) = 0;

        v763 = sub_218CF86B0(v758, v1279);
        sub_2189A4E34(v1279);
        if (v763)
        {
          LODWORD(v1269) = *MEMORY[0x277D6E528];
          v764 = v1269;
          v765 = sub_219BE92D4();
          v766 = *(*(v765 - 8) + 104);
          v767 = v1262;
          v766(v1262, v764, v765);
          v1271 = v762;
          v768 = *MEMORY[0x277D6E518];
          v1267 = v760;
          v1273 = v759;
          v769 = *(v1261 + 104);
          v1270 = v763;
          v770 = v1260;
          v769(v767, v768, v1260);
          v771 = v1263;
          v766(v1263, v1269, v765);
          v769(v771, v768, v770);
          v772 = v1265;
          sub_219BE9EB4();
          v773 = sub_219BE94F4();
          v774 = v1264;
          (*(*(v773 - 8) + 56))(v1264, 1, 1, v773);
          v775 = v1270;
          sub_21909BA64(v1270, v772, v774);

          sub_2196C8E20(v774, &unk_280EE4470, MEMORY[0x277D6E658]);
          (v1273)(v772, v1266);
        }

        else
        {
        }

        __swift_destroy_boxed_opaque_existential_1(v1274);
        goto LABEL_308;
      case 0x3BuLL:
        v588 = swift_projectBox();
        v589 = v1229;
        sub_2196C8D0C(v588, v1229, type metadata accessor for PuzzleModel);
        v590 = v1219;
        sub_2196C8588(v589 + *(v1213 + 20), v1219, &qword_280E90470, MEMORY[0x277D338C0]);
        v592 = v1224;
        v591 = v1225;
        v593 = (*(v1224 + 48))(v590, 1, v1225);
        v1167 = v126;
        if (v593 == 1)
        {
          sub_2196C8E20(v590, &qword_280E90470, MEMORY[0x277D338C0]);
          v594 = sub_2197472E8(v1273, v589);
          if (v594)
          {
            LODWORD(v1271) = *MEMORY[0x277D6E540];
            v595 = v1271;
            v1273 = v594;
            v596 = sub_219BE92D4();
            v597 = *(*(v596 - 8) + 104);
            v598 = v1262;
            v597(v1262, v595, v596);
            v599 = *MEMORY[0x277D6E518];
            v600 = *(v1261 + 104);
            v601 = v1260;
            v600(v598, v599, v1260);
            v602 = v1263;
            v597(v1263, v1271, v596);
            v600(v602, v599, v601);
            v603 = v1265;
            sub_219BE9EB4();
            v604 = sub_219BE94F4();
            v605 = v1264;
            (*(*(v604 - 8) + 56))(v1264, 1, 1, v604);
            v606 = v1273;
            sub_21909BA64(v1273, v603, v605);

            sub_2196C8E20(v605, &unk_280EE4470, MEMORY[0x277D6E658]);
            (*(v1267 + 8))(v603, v1266);
            sub_2196C8A38(v1229, type metadata accessor for PuzzleModel);
            goto LABEL_308;
          }

          sub_2196C8A38(v589, type metadata accessor for PuzzleModel);
          goto LABEL_331;
        }

        v863 = v1202;
        (*(v592 + 32))(v1202, v590, v591);
        v864 = v1201;
        (*(v592 + 16))(v1201, v863, v591);
        v865 = (*(v592 + 88))(v864, v591);
        v866 = v1273;
        if (v865 != *MEMORY[0x277D338B0])
        {
          v1082 = sub_2197472E8(v1273, v589);
          if (v1082)
          {
            LODWORD(v1271) = *MEMORY[0x277D6E540];
            v1083 = v1271;
            v1273 = v1082;
            v1084 = sub_219BE92D4();
            v1085 = *(*(v1084 - 8) + 104);
            v1086 = v1262;
            v1085(v1262, v1083, v1084);
            v1087 = *MEMORY[0x277D6E518];
            v1088 = *(v1261 + 104);
            v1089 = v1260;
            v1088(v1086, v1087, v1260);
            v1090 = v1263;
            v1085(v1263, v1271, v1084);
            v1088(v1090, v1087, v1089);
            v1091 = v1265;
            sub_219BE9EB4();
            v1092 = sub_219BE94F4();
            v1093 = v1264;
            (*(*(v1092 - 8) + 56))(v1264, 1, 1, v1092);
            v1094 = v1273;
            sub_21909BA64(v1273, v1091, v1093);

            sub_2196C8E20(v1093, &unk_280EE4470, MEMORY[0x277D6E658]);
            (*(v1267 + 8))(v1091, v1266);
            v1095 = v1225;
            v1096 = *(v1224 + 8);
            v1096(v1202, v1225);
            sub_2196C8A38(v1229, type metadata accessor for PuzzleModel);
            v1096(v1201, v1095);
            goto LABEL_308;
          }

          v1129 = *(v592 + 8);
          v1129(v863, v591);
          sub_2196C8A38(v589, type metadata accessor for PuzzleModel);
          v1130 = *MEMORY[0x277D6E358];
          v1131 = sub_219BE8DE4();
          (*(*(v1131 - 8) + 104))(v1272, v1130, v1131);
          v1129(v864, v591);
          goto LABEL_332;
        }

        (*(v592 + 96))(v864, v591);
        v867 = v1184;
        (*(v1184 + 32))(v127, v864, v1198);
        v868 = v1183;
        sub_219BF2E84();
        v869 = sub_219746AF0(v866, v589, v868);
        sub_2196C8E20(v868, &qword_280E8FE00, MEMORY[0x277D34450]);
        v870 = v1272;
        if (!v869)
        {
          (*(v867 + 8))(v127, v1198);
          (*(v592 + 8))(v1202, v591);
          sub_2196C8A38(v589, type metadata accessor for PuzzleModel);
          v1127 = *MEMORY[0x277D6E358];
          v1128 = sub_219BE8DE4();
          (*(*(v1128 - 8) + 104))(v870, v1127, v1128);
          goto LABEL_332;
        }

        sub_2196C84EC();
        sub_219BF6584();
        v871 = *&v1279[0];
        if (*&v1279[0])
        {
          v872 = *(&v1279[0] + 1);
          v873 = swift_allocObject();
          swift_weakInit();
          v874 = swift_allocObject();
          *(v874 + 2) = v873;
          *(v874 + 3) = v869;
          *(v874 + 4) = v871;
          *(v874 + 5) = v872;
          v875 = &v871[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_embedDidLoadCompletion];
          v876 = *&v871[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_embedDidLoadCompletion];
          *v875 = sub_2196C8568;
          v875[1] = v874;

          v877 = v869;
          v878 = v871;
          sub_2187FABEC(v876);

          [v878 loadViewIfNeeded];
        }

        else
        {
        }

        (*(v1184 + 8))(v1269, v1198);
        (*(v592 + 8))(v1202, v591);
        sub_2196C8A38(v589, type metadata accessor for PuzzleModel);
        goto LABEL_308;
      case 0x3CuLL:
        v375 = v1267;
        v376 = v1266;
        v377 = v1265;
        switch(__ROR8__(v1293 + 0x1000000000000000, 3))
        {
          case 1:
            v1134 = sub_21897C9C4();
            sub_218A54940();
            goto LABEL_373;
          case 2:
            v1134 = sub_218AA0DF8();
            sub_218A56C80();
            goto LABEL_373;
          case 3:
            v1134 = sub_2190FCFC4();
            sub_218A56C84(v1134);
            goto LABEL_373;
          case 4:
            __swift_project_boxed_opaque_existential_1(v1270 + 2, v1270[5]);
            sub_219BE5A54();
            v1132 = sub_219BE1E24();
            if (!v1132)
            {
              goto LABEL_397;
            }

            v1133 = v1132;
            sub_219BE5A24();

            goto LABEL_310;
          case 5:
            __swift_project_boxed_opaque_existential_1(v1270 + 2, v1270[5]);
            sub_2186C709C(0, &qword_280EE6260);
            sub_219BE1E34();
            v1135 = v1258;
            if (!*(&v1274[1] + 1))
            {
              goto LABEL_398;
            }

            sub_2186CB1F0(v1274, v1279);
            __swift_project_boxed_opaque_existential_1(v1279, *(&v1279[1] + 1));
            sub_219BE46D4();
            v1136 = *MEMORY[0x277D34D70];
            v1137 = sub_219BE3D64();
            v1138 = *(v1137 - 8);
            v1139 = v1222;
            (*(v1138 + 104))(v1222, v1136, v1137);
            (*(v1138 + 56))(v1139, 0, 1, v1137);
            v1140 = sub_2199F0118();
            sub_2196C8E20(v1139, &qword_280EE64A0, MEMORY[0x277D34D78]);
            if (v1140)
            {
              v1141 = swift_unknownObjectWeakLoadStrong();
              if (v1141)
              {
                v1142 = v1141;
                v1143 = sub_219BF6534();

                [v1143 presentViewController:v1140 animated:1 completion:0];
                v1140 = v1143;
              }
            }

            (v1259[1])(v1179, v1135);
            __swift_destroy_boxed_opaque_existential_1(v1279);
            goto LABEL_310;
          case 6:
            v1134 = sub_219B4EFA0(v1273);
            sub_218A55E28(v377);
            goto LABEL_373;
          case 7:
            [objc_opt_self() openNewsSettings];
            goto LABEL_310;
          case 8:
            v1134 = sub_2190FD33C();
            sub_218A554E8(v377);
            goto LABEL_373;
          case 9:
            v1134 = sub_2190FD89C();
            sub_218A56C88(v1134);
LABEL_373:
            v1148 = sub_219BE94F4();
            v1149 = v1264;
            (*(*(v1148 - 8) + 56))(v1264, 1, 1, v1148);
            sub_21909BA64(v1134, v377, v1149);

            sub_2196C8E20(v1149, &unk_280EE4470, MEMORY[0x277D6E658]);
            (*(v375 + 8))(v377, v376);
            goto LABEL_310;
          case 0xALL:
            if (qword_280E8D818 != -1)
            {
              swift_once();
            }

            sub_219BF6214();
            sub_219BE5314();
            v1144 = v1273;
            v1145 = v1270;
            v1146 = sub_2189A44C0(v1273);
            v1147 = v1168;
            if (v1146)
            {
              v1112 = MEMORY[0x277D6E358];
              goto LABEL_311;
            }

            MEMORY[0x28223BE20](v1146);
            v1165 = v1145;
            v1166 = v1144;
            type metadata accessor for SportsOnboardingRedirectRoute(0);
            sub_219BE3204();
            v459 = sub_219BE1C44();
            v1150 = v1257;
            v1151 = v1249;
            (*(v1257 + 16))(v1249, v1144, v1147);
            v1152 = (*(v1150 + 80) + 16) & ~*(v1150 + 80);
            v1153 = swift_allocObject();
            (*(v1150 + 32))(v1153 + v1152, v1151, v1147);
            sub_219BE2F94();

            break;
          case 0xBLL:
            [objc_opt_self() openAppleAccountLoginSettings];
            goto LABEL_310;
          case 0xCLL:
            sub_2192DE80C();
            goto LABEL_310;
          case 0xDLL:
            __swift_project_boxed_opaque_existential_1(v1270 + 2, v1270[5]);
            sub_2186C709C(0, &unk_280E8FEC0);
            sub_219BE1E34();
            if (*&v1279[0])
            {
              swift_getObjectType();
              swift_unknownObjectRetain();
              sub_219BF42C4();

              swift_unknownObjectRelease_n();
            }

            goto LABEL_310;
          default:
            v378 = sub_218DAF3DC(v1273);
            if (!v378)
            {
              goto LABEL_310;
            }

            v379 = v378;
            v380 = v1265;
            sub_218A54924(v1265);
            goto LABEL_85;
        }

LABEL_89:

        goto LABEL_310;
      default:
        v1167 = v1293;
        sub_218CF89E8(v1293 + 16, v1279);
        v129 = sub_218CF86B0(v1273, v1279);
        if (v129)
        {
          LODWORD(v1271) = *MEMORY[0x277D6E528];
          v130 = v1271;
          v1273 = v129;
          v131 = sub_219BE92D4();
          v132 = *(*(v131 - 8) + 104);
          v133 = v1262;
          v132(v1262, v130, v131);
          v134 = *MEMORY[0x277D6E518];
          v135 = *(v1261 + 104);
          v136 = v1260;
          v135(v133, v134, v1260);
          v137 = v1263;
          v132(v1263, v1271, v131);
          v135(v137, v134, v136);
          v138 = v1265;
          sub_219BE9EB4();
          v139 = sub_219BE94F4();
          v140 = v1264;
          (*(*(v139 - 8) + 56))(v1264, 1, 1, v139);
          v141 = v1273;
          sub_21909BA64(v1273, v138, v140);

          sub_2196C8E20(v140, &unk_280EE4470, MEMORY[0x277D6E658]);
          (*(v1267 + 8))(v138, v1266);
        }

        sub_2189A4E34(v1279);
        goto LABEL_308;
    }
  }

  else
  {
    v142 = *MEMORY[0x277D6E358];
    v143 = sub_219BE8DE4();
    v144 = *(*(v143 - 8) + 104);
    v145 = v143;
    v146 = v1272;

    return v144(v146, v142, v145);
  }

  return result;
}

uint64_t sub_2196C1694@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDD944();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  sub_2196C8D0C(a1, v6, type metadata accessor for NewsActivity2.Article);
  sub_2196C8470(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

  sub_2196C8AA4(v6, v12, MEMORY[0x277D2FB40]);
  v13 = sub_219BDD914();
  sub_2196C8A38(v12, MEMORY[0x277D2FB40]);
  if (v13)
  {
    *a2 = v13;
    v14 = MEMORY[0x277D33BC0];
  }

  else
  {
    sub_2196C8D0C(a1, v6, type metadata accessor for NewsActivity2.Article);

    sub_2196C8AA4(v6, v9, MEMORY[0x277D2FB40]);
    v15 = sub_219BDD8C4();
    v17 = v16;
    sub_2196C8A38(v9, MEMORY[0x277D2FB40]);
    *a2 = v15;
    a2[1] = v17;
    v14 = MEMORY[0x277D33B80];
  }

  v18 = *v14;
  v19 = sub_219BF2CB4();
  v20 = *(v19 - 8);
  (*(v20 + 104))(a2, v18, v19);
  return (*(v20 + 56))(a2, 0, 1, v19);
}

void sub_2196C1954(uint64_t a1, void *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v4 = sub_219BDE834();
  v16 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  v5 = [v16 sheetPresentationController];
  if (v5)
  {
    v6 = v5;
    [v5 setPrefersGrabberVisible_];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_219BF6534();

    v10 = swift_allocObject();
    *(v10 + 16) = a3;
    *(v10 + 24) = v16;
    aBlock[4] = sub_2196C8D04;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218793E0C;
    aBlock[3] = &block_descriptor_43_1;
    v11 = _Block_copy(aBlock);

    v12 = v16;

    [v9 dismissViewControllerAnimated:0 completion:v11];

    _Block_release(v11);
  }

  else
  {
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      v15 = sub_219BF6534();

      [v15 presentViewController:v16 animated:1 completion:0];
    }
  }
}

void sub_2196C1B64(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_219BF6534();

    [v5 presentViewController:a2 animated:1 completion:0];
  }
}

uint64_t sub_2196C1BEC(void *a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v48 = a1;
  v4 = sub_219BDD944();
  MEMORY[0x28223BE20](v4 - 8);
  v47 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v6 - 8);
  v43 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x277D6E658];
  sub_218834E54(0, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v44 = v35 - v9;
  v49 = sub_219BE92E4();
  v10 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v39 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v35 - v13;
  v35[1] = v35 - v13;
  v15 = sub_219BE9EC4();
  v41 = *(v15 - 8);
  v42 = v15;
  MEMORY[0x28223BE20](v15);
  v38 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(a2 + 56);
  sub_2196C8470(0, &qword_280EE4520, MEMORY[0x277D6E4E8], MEMORY[0x277D6E510]);
  v18 = v17;
  v19 = *(v17 + 48);
  v37 = *MEMORY[0x277D6E4C0];
  v20 = v37;
  v21 = sub_219BE92A4();
  v36 = *(*(v21 - 8) + 104);
  v36(v14, v20, v21);
  v22 = *MEMORY[0x277D6E500];
  v23 = sub_219BE92B4();
  v24 = *(*(v23 - 8) + 104);
  v24(&v14[v19], v22, v23);
  v25 = *MEMORY[0x277D6E4F0];
  v26 = *(v10 + 104);
  v26(v14, v25, v49);
  v27 = *(v18 + 48);
  v28 = v39;
  v36(v39, v37, v21);
  v24(&v28[v27], *MEMORY[0x277D6E508], v23);
  v26(v28, v25, v49);
  v29 = v38;
  sub_219BE9EB4();
  v30 = v43;
  sub_2196C8D0C(v45, v43, type metadata accessor for NewsActivity2.Article);
  sub_2196C8470(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

  v31 = v30;
  v32 = v47;
  sub_2196C8AA4(v31, v47, MEMORY[0x277D2FB40]);
  v33 = v44;
  sub_219BDD8D4();
  sub_2196C8A38(v32, MEMORY[0x277D2FB40]);
  sub_21909BA64(v48, v29, v33);
  sub_2196C8E20(v33, &unk_280EE4470, v46);
  return (*(v41 + 8))(v29, v42);
}

uint64_t sub_2196C20D4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v78 = a4;
  v79 = a3;
  v6 = MEMORY[0x277D83D88];
  sub_218834E54(0, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v73 = &v67 - v8;
  v74 = sub_219BE92E4();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v67 - v11;
  v75 = sub_219BE9EC4();
  v77 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v76 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BDB954();
  v15 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v67 - v19;
  sub_218834E54(0, &unk_280EE8C10, MEMORY[0x277D30048], v6);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v67 - v22;
  v24 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BDD944();
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196C8D0C(a1, v26, type metadata accessor for NewsActivity2.Article);
  sub_2196C8470(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

  sub_2196C8AA4(v26, v29, MEMORY[0x277D2FB40]);
  sub_219BDD934();
  sub_2196C8A38(v29, MEMORY[0x277D2FB40]);
  v30 = sub_219BDE544();
  if ((*(*(v30 - 8) + 48))(v23, 1, v30) == 1)
  {
    v82[0] = v78;

    sub_2191F0504(&unk_282A290B0);
    v31 = sub_218AA1DB4(v79, a1, v82[0]);

    if (v31)
    {
      v79 = a2[7];
      sub_2196C8470(0, &qword_280EE4520, MEMORY[0x277D6E4E8], MEMORY[0x277D6E510]);
      v34 = v33;
      v78 = *(v33 + 48);
      *v12 = 0x44656C6369747261;
      *(v12 + 1) = 0xEF6B6E696C706565;
      LODWORD(v69) = *MEMORY[0x277D6E4B8];
      v35 = v69;
      v36 = sub_219BE92A4();
      v37 = *(v36 - 8);
      v68 = *(v37 + 104);
      v70 = v37 + 104;
      v68(v12, v35, v36);
      v38 = v12;
      v39 = *MEMORY[0x277D6E500];
      v40 = sub_219BE92B4();
      v41 = v71;
      v67 = *(*(v40 - 8) + 104);
      v42 = v72;
      v67(&v38[v78], v39, v40);
      v43 = *MEMORY[0x277D6E4F0];
      v78 = v31;
      v44 = *(v42 + 104);
      v45 = v74;
      v44(v38, v43, v74);
      v46 = *(v34 + 48);
      *v41 = 0x44656C6369747261;
      *(v41 + 1) = 0xEF6B6E696C706565;
      v68(v41, v69, v36);
      v67(&v41[v46], *MEMORY[0x277D6E508], v40);
      v44(v41, v43, v45);
      v47 = v76;
      sub_219BE9EB4();
      v48 = sub_219BE94F4();
      v49 = v73;
      (*(*(v48 - 8) + 56))(v73, 1, 1, v48);
      v50 = v78;
      sub_21909BA64(v78, v47, v49);

      sub_2196C8E20(v49, &unk_280EE4470, MEMORY[0x277D6E658]);
      return (*(v77 + 8))(v47, v75);
    }
  }

  else
  {
    v51 = v79;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v53 = *(v15 + 32);
    if (EnumCaseMultiPayload == 1)
    {
      v53(v17, v23, v14);
      v54 = sub_218CF8A44(v51);
      if (v54)
      {
        v70 = a2[7];
        v55 = *MEMORY[0x277D6E530];
        v69 = v54;
        v56 = sub_219BE92D4();
        v57 = *(*(v56 - 8) + 104);
        v79 = v15;
        v57(v12, v55, v56);
        v58 = *MEMORY[0x277D6E518];
        v78 = v14;
        v59 = *(v72 + 104);
        v60 = v12;
        v61 = v71;
        v62 = v74;
        v59(v60, v58, v74);
        v57(v61, *MEMORY[0x277D6E538], v56);
        v59(v61, v58, v62);
        v63 = v76;
        sub_219BE9EB4();
        v64 = sub_219BE94F4();
        v65 = v73;
        (*(*(v64 - 8) + 56))(v73, 1, 1, v64);
        v66 = v69;
        sub_21909BA64(v69, v63, v65);

        sub_2196C8E20(v65, &unk_280EE4470, MEMORY[0x277D6E658]);
        (*(v77 + 8))(v63, v75);
        return (*(v79 + 8))(v17, v78);
      }

      else
      {
        return (*(v15 + 8))(v17, v14);
      }
    }

    else
    {
      v53(v20, v23, v14);
      __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
      sub_2186C709C(0, &qword_280EE5700);
      result = sub_219BE1E34();
      if (v81)
      {
        sub_2186CB1F0(&v80, v82);
        __swift_project_boxed_opaque_existential_1(v82, v82[3]);
        sub_219BE6DC4();
        (*(v15 + 8))(v20, v14);
        return __swift_destroy_boxed_opaque_existential_1(v82);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_2196C2ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_218834E54(0, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v10 = sub_219BE92E4();
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - v14;
  v16 = sub_219BE9EC4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    v43[0] = a2;
    v43[1] = a3;
    v22 = sub_2190FC0D8(v43, a4);
    if (v22)
    {
      v37 = *(v21 + 56);
      v23 = *MEMORY[0x277D6E528];
      v36 = v22;
      v24 = sub_219BE92D4();
      v39 = v16;
      v25 = v24;
      v26 = *(*(v24 - 8) + 104);
      v38 = v17;
      v26(v15, v23, v24);
      v34 = v19;
      v35 = v9;
      v27 = *MEMORY[0x277D6E518];
      v40 = v21;
      v28 = v42;
      v29 = *(v41 + 104);
      v29(v15, v27, v42);
      v26(v12, v23, v25);
      v29(v12, v27, v28);
      v30 = v34;
      sub_219BE9EB4();
      v31 = sub_219BE94F4();
      v32 = v35;
      (*(*(v31 - 8) + 56))(v35, 1, 1, v31);
      v33 = v36;
      sub_21909BA64(v36, v30, v32);

      sub_2196C8E20(v32, &unk_280EE4470, MEMORY[0x277D6E658]);
      (*(v38 + 8))(v30, v39);
    }

    else
    {
      if (qword_27CC08558 != -1)
      {
        swift_once();
      }

      sub_219BF6214();
      sub_219BE5314();
    }
  }

  return result;
}

uint64_t sub_2196C2EB0(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = sub_219BED174();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v42 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_219BED1D4();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BED214();
  v48 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v46 = &v33 - v10;
  sub_2187C5110();
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  v19 = type metadata accessor for SportsOnboardingRedirectRoute(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196C8D0C(a1, v21, type metadata accessor for SportsOnboardingRedirectRoute);
  result = (*(v13 + 48))(v21, 2, v12);
  if (!result)
  {
    v36 = v6;
    v38 = v18;
    v34 = *(v13 + 32);
    v34(v18, v21, v12);
    sub_2186C6148(0, &qword_280E8E3B0);
    v35 = sub_219BF66A4();
    sub_219BED1F4();
    sub_219BED244();
    v23 = *(v48 + 8);
    v48 += 8;
    v37 = v23;
    v23(v8, v6);
    v24 = swift_allocObject();
    swift_weakInit();
    (*(v13 + 16))(v15, v38, v12);
    v25 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    v34((v26 + v25), v15, v12);
    aBlock[4] = sub_2196C8D74;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218793E0C;
    aBlock[3] = &block_descriptor_51_2;
    v27 = _Block_copy(aBlock);

    v28 = v40;
    sub_219BED1A4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2196C8DD8(&qword_280E927E0, MEMORY[0x277D85198]);
    sub_218834E54(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_21874EB68();
    v29 = v42;
    v30 = v45;
    sub_219BF7164();
    v31 = v46;
    v32 = v35;
    MEMORY[0x21CECD420](v46, v28, v29, v27);
    _Block_release(v27);

    (*(v44 + 8))(v29, v30);
    (*(v41 + 8))(v28, v43);
    v37(v31, v36);
    return (*(v13 + 8))(v38, v12);
  }

  return result;
}

uint64_t sub_2196C3484(uint64_t a1, uint64_t a2)
{
  sub_218834E54(0, &qword_27CC1DFA8, MEMORY[0x277D6E360], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2196B6E0C(a2);

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_219BE8DE4();
  (*(*(v7 - 8) + 56))(v5, v6, 1, v7);
  return sub_2196C8E20(v5, &qword_27CC1DFA8, MEMORY[0x277D6E360]);
}

uint64_t sub_2196C35D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  v64 = a6;
  v62 = a5;
  v63 = a4;
  v65 = a3;
  v68 = a2;
  sub_218834E54(0, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v61 = &v59 - v8;
  v67 = sub_219BE9EC4();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v59 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v59 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v59 - v13;
  v15 = sub_219BE8DE4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C5110();
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SportsOnboardingRedirectRoute(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196C8D0C(a1, v26, type metadata accessor for SportsOnboardingRedirectRoute);
  v27 = (*(v21 + 48))(v26, 2, v20);
  if (v27)
  {
    if (v27 == 1)
    {
      if (v65 == 6)
      {
        v41 = v59;
        sub_218A55078(v64 & 1, v59);
        v42 = [objc_msgSend(*(v68 + 360) possiblyUnfetchedAppConfiguration)];
        swift_unknownObjectRelease();
        v43 = v67;
        v44 = v66;
        if (v42)
        {
          v45 = sub_219BF5414();
          v47 = v46;

          v72 = v45;
          v73 = v47;
          v74 = v62;
          v75 = MEMORY[0x277D84F90];
          v76 = 1;
          v69[0] = 1;
          memset(&v69[8], 0, 48);
          v69[56] = -1;
          v71 = 0;
          v70 = 0uLL;
          v48 = v62;
          v49 = sub_2195D0028(v63, &v72, 6, v41, v69);
          v50 = *(v44 + 8);
          v50(v41, v43);
          v79 = *&v69[32];
          v80 = *&v69[48];
          v81 = v70;
          v82 = v71;
          v77 = *v69;
          v78 = *&v69[16];
          sub_2196C8400(&v77, &qword_280EA94E0, &type metadata for FeedViewControllerCreateOptions);

          if (v49)
          {
            v51 = v60;
            sub_218A55078(v64 & 1, v60);
            v52 = sub_219BE94F4();
            v53 = v61;
            (*(*(v52 - 8) + 56))(v61, 1, 1, v52);
            sub_21909BA64(v49, v51, v53);

            sub_2196C8E20(v53, &unk_280EE4470, MEMORY[0x277D6E658]);
            return (v50)(v51, v43);
          }
        }

        else
        {
          return (*(v66 + 8))(v41, v67);
        }
      }

      else
      {
        v28 = v67;
        v29 = v66;
        v30 = v68;
        if (v65 == 5)
        {
          sub_218A55078(v64 & 1, v14);
          v31 = [objc_msgSend(*(v30 + 360) possiblyUnfetchedAppConfiguration)];
          swift_unknownObjectRelease();
          if (v31)
          {
            v32 = sub_219BF5414();
            v34 = v33;

            v72 = v32;
            v73 = v34;
            v74 = v62;
            v75 = MEMORY[0x277D84F90];
            v76 = 1;
            v69[0] = 1;
            memset(&v69[8], 0, 48);
            v69[56] = -1;
            v71 = 0;
            v70 = 0uLL;
            v35 = v62;
            v36 = sub_2195D0028(v63, &v72, 5, v14, v69);
            v37 = *(v29 + 8);
            v37(v14, v28);
            v79 = *&v69[32];
            v80 = *&v69[48];
            v81 = v70;
            v82 = v71;
            v77 = *v69;
            v78 = *&v69[16];
            sub_2196C8400(&v77, &qword_280EA94E0, &type metadata for FeedViewControllerCreateOptions);

            if (v36)
            {
              v38 = v60;
              sub_218A55078(v64 & 1, v60);
              v39 = sub_219BE94F4();
              v40 = v61;
              (*(*(v39 - 8) + 56))(v61, 1, 1, v39);
              sub_21909BA64(v36, v38, v40);

              sub_2196C8E20(v40, &unk_280EE4470, MEMORY[0x277D6E658]);
              return (v37)(v38, v28);
            }
          }

          else
          {
            return (*(v29 + 8))(v14, v28);
          }
        }

        else
        {
          v77 = 0u;
          v78 = 0u;
          LOBYTE(v79) = -1;
          result = sub_2195CFAE4(v63, v62, &v77);
          if (result)
          {
            v55 = result;
            v56 = v60;
            sub_218A54C90(v60);
            v57 = sub_219BE94F4();
            v58 = v61;
            (*(*(v57 - 8) + 56))(v61, 1, 1, v57);
            sub_21909BA64(v55, v56, v58);

            sub_2196C8E20(v58, &unk_280EE4470, MEMORY[0x277D6E658]);
            return (*(v29 + 8))(v56, v28);
          }
        }
      }
    }

    else
    {
      if (qword_280E8D818 != -1)
      {
        swift_once();
      }

      sub_219BF6214();
      return sub_219BE5314();
    }
  }

  else
  {
    (*(v21 + 32))(v23, v26, v20);
    sub_2196B6E0C(v23);
    (*(v16 + 8))(v18, v15);
    return (*(v21 + 8))(v23, v20);
  }

  return result;
}

uint64_t sub_2196C3FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, void *a6)
{
  v47 = a5;
  v48 = a6;
  v45 = a4;
  v42 = a3;
  v52 = a2;
  v53 = a1;
  sub_218834E54(0, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = &v42 - v7;
  v44 = sub_219BE92E4();
  v8 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  v13 = sub_219BE9EC4();
  v49 = *(v13 - 8);
  v50 = v13;
  MEMORY[0x28223BE20](v13);
  v46 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE8DE4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C5110();
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SportsOnboardingRedirectRoute(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196C8D0C(v53, v26, type metadata accessor for SportsOnboardingRedirectRoute);
  v27 = (*(v21 + 48))(v26, 2, v20);
  if (v27)
  {
    if (v27 == 1)
    {
      v28 = v52;
      v48 = v45(v42);
      v53 = *(v28 + 56);
      LODWORD(v52) = *MEMORY[0x277D6E528];
      v29 = v52;
      v30 = sub_219BE92D4();
      v31 = *(*(v30 - 8) + 104);
      v31(v12, v29, v30);
      v32 = *MEMORY[0x277D6E4F8];
      v33 = *(v8 + 104);
      v34 = v12;
      v35 = v44;
      v33(v34, v32, v44);
      v36 = v43;
      v31(v43, v52, v30);
      v33(v36, v32, v35);
      v37 = v46;
      sub_219BE9EB4();
      v38 = sub_219BE94F4();
      v39 = v51;
      (*(*(v38 - 8) + 56))(v51, 1, 1, v38);
      v40 = v48;
      sub_21909BA64(v48, v37, v39);

      sub_2196C8E20(v39, &unk_280EE4470, MEMORY[0x277D6E658]);
      return (*(v49 + 8))(v37, v50);
    }

    else
    {
      if (qword_280E8D818 != -1)
      {
        swift_once();
      }

      sub_219BF6214();
      return sub_219BE5314();
    }
  }

  else
  {
    (*(v21 + 32))(v23, v26, v20);
    sub_2196B6E0C(v23);
    (*(v16 + 8))(v18, v15);
    return (*(v21 + 8))(v23, v20);
  }
}

uint64_t sub_2196C458C(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 368), *(a1 + 392));
  v3 = off_282A31BD8[0];
  v4 = type metadata accessor for SportsOnboardingFlowManager(0);
  return v3(a2, 1, v4);
}

uint64_t sub_2196C4618(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v42 = a5;
  v43 = a3;
  v45 = a4;
  v51 = a2;
  v52 = a1;
  sub_218834E54(0, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v41 - v6;
  v46 = sub_219BE92E4();
  v7 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v44 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = sub_219BE9EC4();
  v48 = *(v12 - 8);
  v49 = v12;
  MEMORY[0x28223BE20](v12);
  v47 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE8DE4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C5110();
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SportsOnboardingRedirectRoute(0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196C8D0C(v52, v25, type metadata accessor for SportsOnboardingRedirectRoute);
  v26 = (*(v20 + 48))(v25, 2, v19);
  if (v26)
  {
    if (v26 == 1)
    {
      v27 = v51;
      v45 = sub_219048A48(v43, v45, v42);
      v52 = *(v27 + 56);
      LODWORD(v51) = *MEMORY[0x277D6E528];
      v28 = v51;
      v29 = sub_219BE92D4();
      v30 = *(*(v29 - 8) + 104);
      v30(v11, v28, v29);
      v31 = *MEMORY[0x277D6E4F8];
      v32 = *(v7 + 104);
      v33 = v11;
      v34 = v46;
      v32(v33, v31, v46);
      v35 = v44;
      v30(v44, v51, v29);
      v32(v35, v31, v34);
      v36 = v47;
      sub_219BE9EB4();
      v37 = sub_219BE94F4();
      v38 = v50;
      (*(*(v37 - 8) + 56))(v50, 1, 1, v37);
      v39 = v45;
      sub_21909BA64(v45, v36, v38);

      sub_2196C8E20(v38, &unk_280EE4470, MEMORY[0x277D6E658]);
      return (*(v48 + 8))(v36, v49);
    }

    else
    {
      if (qword_280E8D818 != -1)
      {
        swift_once();
      }

      sub_219BF6214();
      return sub_219BE5314();
    }
  }

  else
  {
    (*(v20 + 32))(v22, v25, v19);
    sub_2196B6E0C(v22);
    (*(v15 + 8))(v17, v14);
    return (*(v20 + 8))(v22, v19);
  }
}

void sub_2196C4BCC(void *a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7)
{
  v57 = a7;
  v59 = a4;
  v60 = a6;
  v10 = sub_219BE7224();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_219BEB674();
  v58 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    if (a2)
    {
      v19 = a1;
      if (qword_280EE5F98 != -1)
      {
        swift_once();
      }

      v20 = sub_219BE5434();
      __swift_project_value_buffer(v20, qword_280F62610);
      v21 = a1;
      v22 = sub_219BE5414();
      v23 = sub_219BF61F4();
      sub_219087C70(a1, 1);
      if (!os_log_type_enabled(v22, v23))
      {

        sub_219087C70(a1, 1);
        return;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v61[0] = v25;
      *v24 = 136446210;
      swift_getErrorValue();
      v26 = sub_219BF7A04();
      v28 = sub_2186D1058(v26, v27, v61);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_2186C1000, v22, v23, "Failed to load assets in TipViewController: [%{public}s]", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x21CECF960](v25, -1, -1);
      MEMORY[0x21CECF960](v24, -1, -1);
      sub_219087C70(a1, 1);
    }

    else
    {
      v56 = v11;
      if (qword_280EE5F90 != -1)
      {
        swift_once();
      }

      v29 = sub_219BE5434();
      __swift_project_value_buffer(v29, qword_280F625F8);
      v31 = v59;
      v30 = v60;
      sub_218DFB8E8(v59, a5, v60);
      v32 = sub_219BE5414();
      v33 = sub_219BF6214();
      sub_218DFB934(v31, a5, v30);
      v55 = v33;
      v34 = v33;
      v35 = v32;
      v36 = a5 >> 61;
      if (os_log_type_enabled(v32, v34))
      {
        v54[1] = v18;
        v37 = swift_slowAlloc();
        v54[0] = swift_slowAlloc();
        v61[0] = v54[0];
        v38 = 0xE800000000000000;
        v39 = 0x6465776F6C6C6F66;
        *v37 = 136446210;
        v40 = 0xEF736569726F7453;
        v41 = 0x73756C507377656ELL;
        if (v36 != 6)
        {
          v41 = 0x6843657069636572;
          v40 = 0xEC000000656D6F72;
        }

        v42 = 0x8000000219CF99A0;
        if (v36 == 4)
        {
          v43 = 0xD000000000000016;
        }

        else
        {
          v43 = 0xD000000000000015;
        }

        if (v36 != 4)
        {
          v42 = 0x8000000219CF9980;
        }

        if (v36 <= 5)
        {
          v41 = v43;
          v40 = v42;
        }

        v44 = 0xEB0000000065726FLL;
        v45 = 0x63537374726F7073;
        if (v36 != 2)
        {
          v45 = 0x7548656C7A7A7570;
          v44 = 0xED00006F666E4962;
        }

        if (v36)
        {
          v39 = 0x74756374726F6873;
          v38 = 0xE900000000000073;
        }

        if (v36 > 1)
        {
          v39 = v45;
          v38 = v44;
        }

        if (v36 <= 3)
        {
          v46 = v39;
        }

        else
        {
          v46 = v41;
        }

        if (v36 <= 3)
        {
          v47 = v38;
        }

        else
        {
          v47 = v40;
        }

        v48 = sub_2186D1058(v46, v47, v61);

        *(v37 + 4) = v48;
        _os_log_impl(&dword_2186C1000, v35, v55, "Tip view controller completed loading assets for tip source=%{public}s", v37, 0xCu);
        v49 = v54[0];
        __swift_destroy_boxed_opaque_existential_1(v54[0]);
        MEMORY[0x21CECF960](v49, -1, -1);
        MEMORY[0x21CECF960](v37, -1, -1);
      }

      else
      {
      }

      v50 = v56;
      v61[0] = v59;
      v61[1] = a5;
      v61[2] = v60;
      sub_219092084(v16);
      if (v36)
      {
        v52 = MEMORY[0x277D6D948];
      }

      else
      {
        *v13 = sub_219BE82C4();
        v13[1] = v51;
        v52 = MEMORY[0x277D6D950];
      }

      (*(v50 + 104))(v13, *v52, v10);
      v53 = sub_219BE5924();
      (*(v50 + 8))(v13, v10);
      (*(v58 + 8))(v16, v14);
      if (v53)
      {

        sub_219BE5944();
      }
    }
  }
}

uint64_t sub_2196C5214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = sub_219BF6534();

      [v8 presentViewController:a2 animated:1 completion:0];
    }

    v9 = (a3 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_embedDidLoadCompletion);
    v10 = *(a3 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_embedDidLoadCompletion);
    *v9 = 0;
    v9[1] = 0;
    return sub_2187FABEC(v10);
  }

  return result;
}

uint64_t sub_2196C52DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v379 = a2;
  v3 = sub_219BDB954();
  v355 = *(v3 - 8);
  v356 = v3;
  MEMORY[0x28223BE20](v3);
  v354 = &v346 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v357 = type metadata accessor for WebLinkViewControllerType(0);
  v5 = MEMORY[0x28223BE20](v357);
  v358 = &v346 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v365 = (&v346 - v7);
  v8 = sub_219BE15B4();
  v350 = *(v8 - 8);
  v351 = v8;
  MEMORY[0x28223BE20](v8);
  v347 = &v346 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDD0A4();
  v348 = *(v10 - 8);
  v349 = v10;
  MEMORY[0x28223BE20](v10);
  v346 = &v346 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v352 = type metadata accessor for TagFeedAsyncConfig();
  MEMORY[0x28223BE20](v352);
  v353 = (&v346 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v373 = sub_219BE92E4();
  v375 = *(v373 - 8);
  v13 = MEMORY[0x28223BE20](v373);
  v370 = &v346 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v371 = &v346 - v15;
  v16 = sub_219BE9EC4();
  v17 = *(v16 - 8);
  v376 = v16;
  v377 = v17;
  v18 = MEMORY[0x28223BE20](v16);
  v364 = &v346 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v361 = &v346 - v21;
  MEMORY[0x28223BE20](v20);
  v372 = &v346 - v22;
  sub_218834E54(0, &unk_280EE8C10, MEMORY[0x277D30048], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v23 - 8);
  v363 = &v346 - v24;
  v25 = sub_219BDD944();
  MEMORY[0x28223BE20](v25 - 8);
  v362 = &v346 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v369 = sub_219BF2CB4();
  *&v368 = *(v369 - 8);
  v27 = MEMORY[0x28223BE20](v369);
  v360 = (&v346 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x28223BE20](v27);
  v359 = (&v346 - v30);
  MEMORY[0x28223BE20](v29);
  v32 = (&v346 - v31);
  *&v367 = sub_219BF2634();
  *&v366 = *(v367 - 8);
  v33 = MEMORY[0x28223BE20](v367);
  v35 = &v346 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v346 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v346 - v39;
  v41 = type metadata accessor for NewsActivity2.Article(0);
  v42 = MEMORY[0x28223BE20](v41 - 8);
  v44 = &v346 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v346 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = &v346 - v48;
  sub_2187C5110();
  v374 = a1;
  sub_219BEA7A4();
  switch((v398 >> 58) & 0x3C | (v398 >> 1) & 3)
  {
    case 1uLL:
      v125 = v398;
      sub_2187B2C48();
      v364 = v125;
      v126 = swift_projectBox();
      sub_2196C8D0C(v126, v49, type metadata accessor for NewsActivity2.Article);
      v127 = v378;
      __swift_project_boxed_opaque_existential_1((v378 + 528), *(v378 + 552));
      if (sub_219BEED44())
      {
        __swift_project_boxed_opaque_existential_1(v127 + 61, v127[64]);
        sub_2196C8018(v49, v32);
        sub_219BF4794();
        (*(v368 + 8))(v32, v369);
        v128 = sub_219BF2614();
        (*(v366 + 8))(v40, v367);
        if ((v128 & 1) == 0)
        {
          goto LABEL_73;
        }
      }

      sub_2196C8D0C(v49, v47, type metadata accessor for NewsActivity2.Article);
      sub_2196C8470(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

      v129 = v362;
      sub_2196C8AA4(v47, v362, MEMORY[0x277D2FB40]);
      v130 = v363;
      sub_219BDD934();
      sub_2196C8A38(v129, MEMORY[0x277D2FB40]);
      v131 = sub_219BDE544();
      if ((*(*(v131 - 8) + 48))(v130, 1, v131) == 1)
      {
        v132 = sub_218AA1DB4(v374, v49, &unk_282A290D8);
        if (v132)
        {
          v378 = v127[7];
          v374 = v132;
          sub_2196C8470(0, &qword_280EE4520, MEMORY[0x277D6E4E8], MEMORY[0x277D6E510]);
          v134 = v133;
          v135 = *(v133 + 48);
          LODWORD(v367) = *MEMORY[0x277D6E4C0];
          v136 = v367;
          v137 = sub_219BE92A4();
          v138 = *(v137 - 8);
          *&v366 = *(v138 + 104);
          *&v368 = v138 + 104;
          v139 = v371;
          (v366)(v371, v136, v137);
          *&v369 = v49;
          v140 = *MEMORY[0x277D6E500];
          v141 = sub_219BE92B4();
          v142 = *(v141 - 8);
          v363 = *(v142 + 104);
          v365 = (v142 + 104);
          (v363)(&v139[v135], v140, v141);
          v143 = *MEMORY[0x277D6E4F0];
          v144 = *(v375 + 104);
          v145 = v373;
          v144(v139, v143, v373);
          v146 = *(v134 + 48);
          v147 = v370;
          (v366)(v370, v367, v137);
          (v363)(&v147[v146], *MEMORY[0x277D6E508], v141);
          v144(v147, v143, v145);
          v148 = v372;
          sub_219BE9EB4();
          v124 = v374;
          sub_21909C8A4(v374, v148);
          (*(v377 + 8))(v148, v376);
          sub_2196C8A38(v369, type metadata accessor for NewsActivity2.Article);
          goto LABEL_95;
        }

LABEL_73:
        sub_2196C8A38(v49, type metadata accessor for NewsActivity2.Article);
        goto LABEL_96;
      }

      sub_2196C8A38(v49, type metadata accessor for NewsActivity2.Article);
      v281 = *MEMORY[0x277D6DEF8];
      v282 = sub_219BE8464();
      (*(*(v282 - 8) + 104))(v379, v281, v282);
      v283 = MEMORY[0x277D30048];
      v284 = v130;
      goto LABEL_77;
    case 8uLL:
      v149 = v398;
      v150 = swift_projectBox();
      sub_2196C8D0C(v150, v44, type metadata accessor for NewsActivity2.Article);
      v151 = v378;
      __swift_project_boxed_opaque_existential_1((v378 + 528), *(v378 + 552));
      if ((sub_219BEED44() & 1) == 0 || (__swift_project_boxed_opaque_existential_1((v151 + 488), *(v151 + 512)), sub_2196C8018(v44, v32), sub_219BF4794(), (*(v368 + 8))(v32, v369), v152 = sub_219BF2614(), (*(v366 + 8))(v40, v367), (v152)) && (v153 = sub_218AA1DB4(v374, v44, &unk_282A29100)) != 0)
      {
        v154 = v153;
        v155 = v372;
        sub_218A5576C(v372);
        sub_21909C8A4(v154, v155);
        (*(v377 + 8))(v155, v376);
        sub_2196C8A38(v44, type metadata accessor for NewsActivity2.Article);
        v156 = v379;
        *v379 = v154;
        v157 = *MEMORY[0x277D6DF00];
        v158 = sub_219BE8464();
        (*(*(v158 - 8) + 104))(v156, v157, v158);
      }

      else
      {
        sub_2196C8A38(v44, type metadata accessor for NewsActivity2.Article);
        v245 = *MEMORY[0x277D6DEF8];
        v246 = sub_219BE8464();
        (*(*(v246 - 8) + 104))(v379, v245, v246);
      }

      return sub_218932F9C(v149);
    case 0xAuLL:
      v100 = v398;
      v161 = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v394 = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v395 = v161;
      v396 = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x50);
      v397 = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x60);
      v162 = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v392 = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v393 = v162;
      __swift_project_boxed_opaque_existential_1((v378 + 528), *(v378 + 552));
      sub_218B5A004(&v392, &v386);
      if ((sub_219BEED44() & 1) == 0)
      {
        v383 = v392;
        v384 = v393;
        v385 = v394;
        v163 = *(&v394 + 1);
        sub_21908FD7C(v392, *(&v392 + 1), v393, *(&v393 + 1), v394);
        v164 = v372;
        sub_218A56C88(v165);
        LOBYTE(v380[0]) = 0;
        *(v380 + 8) = 0u;
        *(&v380[1] + 8) = 0u;
        *(&v380[2] + 8) = 0u;
        BYTE8(v380[3]) = -1;
        v382 = 0;
        v381 = 0uLL;
        v103 = sub_2195D0028(v374, &v383, v163, v164, v380);
        v388 = v380[2];
        v389 = v380[3];
        v390 = v381;
        v391 = v382;
        v386 = v380[0];
        v387 = v380[1];
        sub_2196C8400(&v386, &qword_280EA94E0, &type metadata for FeedViewControllerCreateOptions);
        v166 = v376;
        v167 = *(v377 + 8);
        v167(v164, v376);
        v168 = sub_21896FBB0(v383, *(&v383 + 1), v384, *(&v384 + 1), v385);
        if (v103)
        {
          sub_218A56C88(v168);
          sub_21909C8A4(v103, v164);
          sub_218B5A060(&v392);
          v167(v164, v166);
          goto LABEL_29;
        }
      }

      v243 = *MEMORY[0x277D6DEF8];
      v244 = sub_219BE8464();
      (*(*(v244 - 8) + 104))(v379, v243, v244);
      sub_218B5A060(&v392);
      return sub_218932F9C(v100);
    case 0xBuLL:
    case 0x10uLL:
    case 0x26uLL:
      v54 = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v388 = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v389 = v54;
      v390 = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x50);
      LOBYTE(v391) = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x60);
      v55 = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v386 = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v387 = v55;
      v56 = v398;
      sub_218B5A004(&v386, v380);
      sub_218932F9C(v56);
      v57 = v391;
      v58 = *(&v388 + 1);
      v59 = v388;
      v366 = v386;
      v367 = v387;
      v392 = v386;
      v393 = v387;
      LOBYTE(v394) = v388;
      *(&v394 + 1) = *(&v388 + 1);
      v368 = v389;
      v369 = v390;
      v395 = v389;
      v396 = v390;
      v397 = v391;
      __swift_project_boxed_opaque_existential_1((v378 + 528), *(v378 + 552));
      if (sub_219BEED44())
      {
        v60 = *MEMORY[0x277D6DEF8];
        v61 = sub_219BE8464();
        (*(*(v61 - 8) + 104))(v379, v60, v61);
        return sub_218B5A060(&v392);
      }

      v384 = v367;
      v383 = v366;
      v385 = v59;
      sub_2196C8470(0, &qword_280EE4520, MEMORY[0x277D6E4E8], MEMORY[0x277D6E510]);
      v63 = v62;
      v64 = *(v62 + 48);
      LODWORD(v364) = *MEMORY[0x277D6E4C0];
      v65 = v364;
      v66 = sub_219BE92A4();
      LODWORD(v358) = v57;
      v67 = v66;
      v68 = *(v66 - 8);
      v365 = *(v68 + 104);
      v363 = (v68 + 104);
      v359 = v58;
      v69 = v371;
      (v365)(v371, v65, v66);
      LODWORD(v357) = v59;
      v70 = *MEMORY[0x277D6E500];
      v71 = sub_219BE92B4();
      v72 = *(v71 - 8);
      v73 = *(v72 + 104);
      v74 = (v72 + 104);
      LODWORD(v352) = v70;
      v73(&v69[v64], v70, v71);
      v75 = *MEMORY[0x277D6E4F0];
      v77 = v375 + 104;
      v76 = *(v375 + 104);
      v76(v69, v75, v373);
      v356 = v63;
      v375 = *(v63 + 48);
      v78 = v370;
      v362 = v67;
      (v365)(v370, v364, v67);
      v79 = *MEMORY[0x277D6E508];
      v80 = *MEMORY[0x277D6E508];
      v361 = v71;
      v354 = v74;
      v355 = v73;
      v73(&v78[v375], v80, v71);
      LODWORD(v360) = v75;
      v375 = v77;
      v353 = v76;
      v76(v78, v75, v373);
      v81 = v378;
      LOBYTE(v75) = v358;
      sub_218F20858(v368, *(&v368 + 1), v369, *(&v369 + 1), v358);
      sub_21908FD7C(v366, *(&v366 + 1), v367, *(&v367 + 1), v357);
      v82 = v78;
      v83 = v372;
      v84 = v69;
      sub_219BE9EB4();
      LOBYTE(v380[0]) = 0;
      *(&v380[0] + 1) = 0;
      *&v380[1] = 0;
      *(&v380[2] + 8) = v369;
      *(&v380[1] + 8) = v368;
      BYTE8(v380[3]) = v75;
      v382 = 0;
      v381 = 0uLL;
      v85 = sub_2195D0028(v374, &v383, v359, v83, v380);
      sub_218B5A060(&v392);
      v388 = v380[2];
      v389 = v380[3];
      v390 = v381;
      v391 = v382;
      v386 = v380[0];
      v387 = v380[1];
      sub_2196C8400(&v386, &qword_280EA94E0, &type metadata for FeedViewControllerCreateOptions);
      v86 = v377 + 8;
      v374 = *(v377 + 8);
      (v374)(v83, v376);
      sub_21896FBB0(v383, *(&v383 + 1), v384, *(&v384 + 1), v385);
      if (v85)
      {
        v87 = *(v81 + 56);
        v377 = v86;
        v378 = v87;
        v88 = v356;
        v89 = *(v356 + 48);
        *&v369 = v85;
        v90 = v364;
        LODWORD(v368) = v79;
        (v365)(v84, v364, v362);
        v91 = &v84[v89];
        v92 = v355;
        v355(v91, v352, v361);
        v93 = v353;
        v353(v84, v360, v373);
        v94 = *(v88 + 48);
        (v365)(v82, v90, v362);
        v92(&v82[v94], v368, v361);
        v93(v82, v360, v373);
        v95 = v372;
        sub_219BE9EB4();
        v96 = v369;
        sub_21909C8A4(v369, v95);
        (v374)(v95, v376);
        goto LABEL_9;
      }

      v50 = MEMORY[0x277D6DEF8];
      goto LABEL_4;
    case 0xFuLL:
      v100 = v398;
      v101 = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x10);
      if (([*(v378 + 168) useFood] & 1) == 0)
      {
        if (qword_280EE5F60 != -1)
        {
          swift_once();
        }

        v247 = sub_219BE5434();
        __swift_project_value_buffer(v247, qword_280F625B0);
        v248 = sub_219BE5414();
        v249 = sub_219BF6214();
        if (os_log_type_enabled(v248, v249))
        {
          v250 = swift_slowAlloc();
          *v250 = 0;
          MEMORY[0x21CECF960](v250, -1, -1);
        }

        v251 = *MEMORY[0x277D6DEF8];
        goto LABEL_101;
      }

      v386 = 0u;
      v387 = 0u;
      LOBYTE(v388) = -1;
      v102 = sub_2195D1848(v374, v101, &v386);
      if (!v102)
      {
        v251 = *MEMORY[0x277D6DEF8];
LABEL_101:
        v335 = sub_219BE8464();
        (*(*(v335 - 8) + 104))(v379, v251, v335);
        return sub_218932F9C(v100);
      }

      v103 = v102;
      v104 = v372;
      sub_218A56C88(v102);
      sub_21909C8A4(v103, v104);
      (*(v377 + 8))(v104, v376);
LABEL_29:
      v169 = v379;
      *v379 = v103;
      v170 = *MEMORY[0x277D6DF00];
      v171 = sub_219BE8464();
      (*(*(v171 - 8) + 104))(v169, v170, v171);
      return sub_218932F9C(v100);
    case 0x14uLL:
      v364 = v398;
      v209 = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v387 = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v388 = v209;
      v389 = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x40);
      *&v390 = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x50);
      v386 = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v210 = v378;
      __swift_project_boxed_opaque_existential_1((v378 + 528), *(v378 + 552));
      sub_219092568(&v386, v380);
      v211 = sub_219BEED44();
      v212 = v371;
      if ((v211 & 1) == 0)
      {
        goto LABEL_85;
      }

      v213 = v210[64];
      v365 = v210[65];
      v214 = __swift_project_boxed_opaque_existential_1(v210 + 61, v213);
      v363 = v214;
      v220 = *(&v386 + 1);
      if (((HIBYTE(v388) << 48) & 0xC0000000000000) == 0x40000000000000)
      {
        v221 = v359;
        *v359 = v386;
        v221[1] = v220;
        v222 = v368;
        v223 = v369;
        (*(v368 + 104))(v221, *MEMORY[0x277D33B80], v369);
      }

      else
      {
        v380[0] = v386;
        v380[1] = v387;
        *&v380[2] = v388;
        BYTE8(v380[2]) = BYTE8(v388) & 1;
        v290 = sub_219BD4870(v214, v215, v216, v217, v218, v219);
        v221 = v359;
        *v359 = v290;
        v222 = v368;
        v223 = v369;
        (*(v368 + 104))(v221, *MEMORY[0x277D33BA0], v369);
        v291 = v290;
      }

      v292 = v367;
      sub_219BF4794();
      (*(v222 + 8))(v221, v223);
      v293 = sub_219BF2614();
      (*(v366 + 8))(v38, v292);
      if ((v293 & 1) == 0)
      {
        v308 = *MEMORY[0x277D6DEF8];
      }

      else
      {
LABEL_85:
        v380[2] = v388;
        v380[3] = v389;
        *&v381 = v390;
        v380[0] = v386;
        v380[1] = v387;
        v294 = sub_2191651D0(v374, v380, 0, 0, MEMORY[0x277D84F90]);
        if (v294)
        {
          v378 = v210[7];
          v374 = v294;
          sub_2196C8470(0, &qword_280EE4520, MEMORY[0x277D6E4E8], MEMORY[0x277D6E510]);
          v296 = v295;
          v297 = *(v295 + 48);
          LODWORD(v368) = *MEMORY[0x277D6E4D0];
          v298 = v368;
          v299 = sub_219BE92A4();
          v300 = *(v299 - 8);
          *&v367 = *(v300 + 104);
          *&v369 = v300 + 104;
          (v367)(v212, v298, v299);
          v301 = *MEMORY[0x277D6E500];
          v302 = sub_219BE92B4();
          *&v366 = *(*(v302 - 8) + 104);
          (v366)(&v212[v297], v301, v302);
          v303 = *MEMORY[0x277D6E4F0];
          v304 = *(v375 + 104);
          v305 = v373;
          v304(v212, v303, v373);
          v306 = *(v296 + 48);
          v307 = v370;
          (v367)(v370, v368, v299);
          (v366)(&v307[v306], *MEMORY[0x277D6E508], v302);
          v304(v307, v303, v305);
          v123 = v372;
          sub_219BE9EB4();
          v124 = v374;
          sub_21909C8A4(v374, v123);
          sub_218AAFFC4(&v386);
          goto LABEL_94;
        }

        v308 = *MEMORY[0x277D6DEF8];
      }

      v309 = sub_219BE8464();
      (*(*(v309 - 8) + 104))(v379, v308, v309);
      sub_218AAFFC4(&v386);
      return sub_218932F9C(v364);
    case 0x15uLL:
      v225 = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v224 = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v226 = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v227 = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x28);
      v364 = v398;
      v365 = v226;
      v362 = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v363 = v227;
      LODWORD(v361) = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x38);
      v228 = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x39) | ((*((v398 & 0xFFFFFFFFFFFFFF9) + 0x3D) | (*((v398 & 0xFFFFFFFFFFFFFF9) + 0x3F) << 16)) << 32);
      v230 = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v229 = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x48);
      v231 = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x58);
      v358 = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x50);
      v359 = v229;
      v232 = v378;
      __swift_project_boxed_opaque_existential_1((v378 + 528), *(v378 + 552));
      if (sub_219BEED44())
      {
        v356 = v230;
        v357 = v231;
        v233 = v232[64];
        v355 = v232[65];
        v234 = __swift_project_boxed_opaque_existential_1(v232 + 61, v233);
        v354 = v234;
        if ((v228 & 0xC0000000000000) == 0x40000000000000)
        {
          v240 = v360;
          *v360 = v225;
          v240[1] = v224;
          v241 = v368;
          v242 = v369;
          (*(v368 + 104))(v240, *MEMORY[0x277D33B80], v369);
        }

        else
        {
          *&v386 = v225;
          *(&v386 + 1) = v224;
          *&v387 = v365;
          *(&v387 + 1) = v363;
          *&v388 = v362;
          BYTE8(v388) = v361 & 1;
          v310 = sub_219BD4870(v234, v235, v236, v237, v238, v239);
          v311 = v360;
          *v360 = v310;
          v241 = v368;
          v242 = v369;
          (*(v368 + 104))(v311, *MEMORY[0x277D33BA0], v369);
          v312 = v310;
          v240 = v311;
        }

        sub_219BF4794();
        (*(v241 + 8))(v240, v242);
        v313 = sub_219BF2614();
        (*(v366 + 8))(v35, v367);
        v232 = v378;
        v230 = v356;
        v231 = v357;
        if ((v313 & 1) == 0)
        {
          goto LABEL_96;
        }
      }

      *&v386 = v225;
      *(&v386 + 1) = v224;
      *&v387 = v365;
      *(&v387 + 1) = v363;
      *&v388 = v362;
      BYTE8(v388) = v361;
      *(&v388 + 9) = v228;
      HIBYTE(v388) = BYTE6(v228);
      *(&v388 + 13) = WORD2(v228);
      *&v389 = v230;
      *(&v389 + 1) = v359;
      *&v390 = v358;
      v314 = sub_2191651D0(v374, &v386, 0, 0, v231);
      if (v314)
      {
        v378 = v232[7];
        v374 = v314;
        sub_2196C8470(0, &qword_280EE4520, MEMORY[0x277D6E4E8], MEMORY[0x277D6E510]);
        v316 = v315;
        v317 = *(v315 + 48);
        LODWORD(v368) = *MEMORY[0x277D6E4D0];
        v318 = v368;
        v319 = sub_219BE92A4();
        v320 = *(v319 - 8);
        *&v367 = *(v320 + 104);
        *&v369 = v320 + 104;
        v321 = v371;
        (v367)(v371, v318, v319);
        v322 = *MEMORY[0x277D6E500];
        v323 = sub_219BE92B4();
        v324 = *(v323 - 8);
        v365 = *(v324 + 104);
        *&v366 = v324 + 104;
        (v365)(&v321[v317], v322, v323);
        v325 = *MEMORY[0x277D6E4F0];
        v326 = *(v375 + 104);
        v327 = v373;
        v326(v321, v325, v373);
        v328 = *(v316 + 48);
        v329 = v370;
        (v367)(v370, v368, v319);
        (v365)(&v329[v328], *MEMORY[0x277D6E508], v323);
        v326(v329, v325, v327);
        v123 = v372;
        sub_219BE9EB4();
        v124 = v374;
        sub_21909C8A4(v374, v123);
        goto LABEL_94;
      }

      v333 = *MEMORY[0x277D6DEF8];
      goto LABEL_97;
    case 0x1EuLL:
      v364 = v398;
      v105 = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v106 = v378;
      v107 = sub_21988B198(v374, v105);
      if (!v107)
      {
        v279 = *MEMORY[0x277D6DEF8];
        v280 = sub_219BE8464();
        (*(*(v280 - 8) + 104))(v379, v279, v280);

        return sub_218932F9C(v364);
      }

      v378 = *(v106 + 56);
      v374 = v107;
      sub_2196C8470(0, &qword_280EE4520, MEMORY[0x277D6E4E8], MEMORY[0x277D6E510]);
      v109 = v108;
      v110 = *(v108 + 48);
      LODWORD(v368) = *MEMORY[0x277D6E4C0];
      v111 = v368;
      v112 = sub_219BE92A4();
      v113 = *(v112 - 8);
      *&v367 = *(v113 + 104);
      *&v369 = v113 + 104;
      v114 = v371;
      (v367)(v371, v111, v112);
      v115 = *MEMORY[0x277D6E500];
      v116 = sub_219BE92B4();
      v117 = *(v116 - 8);
      v365 = *(v117 + 104);
      *&v366 = v117 + 104;
      (v365)(&v114[v110], v115, v116);
      v118 = *MEMORY[0x277D6E4F0];
      v119 = *(v375 + 104);
      v375 = v105;
      v120 = v373;
      v119(v114, v118, v373);
      v121 = *(v109 + 48);
      v122 = v370;
      (v367)(v370, v368, v112);
      (v365)(&v122[v121], *MEMORY[0x277D6E508], v116);
      v119(v122, v118, v120);
      v123 = v372;
      sub_219BE9EB4();
      v124 = v374;
      sub_21909C8A4(v374, v123);

LABEL_94:
      (*(v377 + 8))(v123, v376);
      goto LABEL_95;
    case 0x1FuLL:
      v364 = v398;
      LODWORD(v372) = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v175 = [*(v378 + 168) useFood];
      v176 = v375;
      if ((v175 & 1) == 0)
      {
        if (qword_280EE5F38 != -1)
        {
          swift_once();
        }

        v271 = sub_219BE5434();
        __swift_project_value_buffer(v271, qword_280F62568);
        v272 = sub_219BE5414();
        v273 = sub_219BF6214();
        if (os_log_type_enabled(v272, v273))
        {
          v274 = swift_slowAlloc();
          *v274 = 0;
          MEMORY[0x21CECF960](v274, -1, -1);
        }

        goto LABEL_96;
      }

      if (v372)
      {
        sub_2196C8470(0, &qword_280EE4520, MEMORY[0x277D6E4E8], MEMORY[0x277D6E510]);
        v178 = v177;
        *&v367 = *(v177 + 48);
        LODWORD(v369) = *MEMORY[0x277D6E4C0];
        v179 = v369;
        v180 = sub_219BE92A4();
        *&v368 = *(*(v180 - 8) + 104);
        v181 = v371;
        (v368)(v371, v179, v180);
        v182 = *MEMORY[0x277D6E500];
        v183 = sub_219BE92B4();
        v184 = *(v183 - 8);
        v365 = *(v184 + 104);
        *&v366 = v184 + 104;
        (v365)(&v181[v367], v182, v183);
        v185 = *MEMORY[0x277D6E4F0];
        v186 = *(v176 + 104);
        v375 = v176 + 104;
        v187 = v373;
        v186(v181, v185, v373);
        v188 = *(v178 + 48);
        v189 = v370;
        (v368)(v370, v369, v180);
        (v365)(&v189[v188], *MEMORY[0x277D6E508], v183);
        v186(v189, v185, v187);
        v190 = v361;
        sub_219BE9EB4();
      }

      else
      {
        v190 = v361;
        sub_218A56C88(v175);
      }

      v287 = v376;
      v124 = sub_2190FD6AC(v374, v190, v372);
      sub_21909C8A4(v124, v190);
      (*(v377 + 8))(v190, v287);
LABEL_95:
      v330 = v379;
      *v379 = v124;
      v331 = *MEMORY[0x277D6DF00];
      v332 = sub_219BE8464();
      (*(*(v332 - 8) + 104))(v330, v331, v332);
      return sub_218932F9C(v364);
    case 0x2CuLL:
      v364 = v398;
      v159 = swift_projectBox();
      v160 = v365;
      sub_2196C8D0C(v159, v365, type metadata accessor for WebLinkViewControllerType);
      __swift_project_boxed_opaque_existential_1((v378 + 528), *(v378 + 552));
      if (sub_219BEED44())
      {
        goto LABEL_25;
      }

      v252 = v358;
      sub_2196C8D0C(v160, v358, type metadata accessor for WebLinkViewControllerType);
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        sub_2196C8A38(v160, type metadata accessor for WebLinkViewControllerType);
        v285 = *MEMORY[0x277D6DEF8];
        v286 = sub_219BE8464();
        (*(*(v286 - 8) + 104))(v379, v285, v286);
        v284 = v252;
        v283 = type metadata accessor for WebLinkViewControllerType;
LABEL_77:
        sub_2196C8A38(v284, v283);
      }

      else
      {
        v254 = v354;
        v253 = v355;
        v255 = v356;
        (*(v355 + 4))(v354, v252, v356);
        v256 = v378;
        v257 = sub_218CF8A44(v374);
        v253[1](v254, v255);
        if (v257)
        {
          v378 = *(v256 + 56);
          v258 = *MEMORY[0x277D6E530];
          v259 = sub_219BE92D4();
          v260 = *(*(v259 - 8) + 104);
          v261 = v371;
          v260(v371, v258, v259);
          v262 = *MEMORY[0x277D6E518];
          v374 = v257;
          v263 = *(v375 + 104);
          v264 = v373;
          v263(v261, v262, v373);
          v265 = v370;
          v260(v370, *MEMORY[0x277D6E538], v259);
          v263(v265, v262, v264);
          v266 = v372;
          sub_219BE9EB4();
          v267 = v374;
          sub_21909C8A4(v374, v266);
          (*(v377 + 8))(v266, v376);
          sub_2196C8A38(v365, type metadata accessor for WebLinkViewControllerType);
          v268 = v379;
          *v379 = v267;
          v269 = *MEMORY[0x277D6DF00];
          v270 = sub_219BE8464();
          (*(*(v270 - 8) + 104))(v268, v269, v270);
        }

        else
        {
LABEL_25:
          sub_2196C8A38(v160, type metadata accessor for WebLinkViewControllerType);
LABEL_96:
          v333 = *MEMORY[0x277D6DEF8];
LABEL_97:
          v334 = sub_219BE8464();
          (*(*(v334 - 8) + 104))(v379, v333, v334);
        }
      }

      return sub_218932F9C(v364);
    case 0x39uLL:
      v191 = v398;
      v192 = *((v398 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v193 = v378;
      if ([*(v378 + 168) puzzlesEnabled])
      {
        v194 = v364;
        sub_218A56C84();
        v195 = [objc_opt_self() sharedAccount];
        v196 = [v195 isContentStoreFrontSupported];

        if (v196)
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          v198 = v376;
          if (Strong)
          {
            v199 = Strong;
            v200 = sub_218FE7680(0x7548656C7A7A7570, 0xE900000000000062, v364);

            if (v200)
            {
              sub_219BEA7B4();
              if (*(&v380[1] + 1))
              {
                sub_219BDD274();
                v201 = swift_dynamicCast();
                v202 = v372;
                if (v201)
                {
                  v204 = v350;
                  v203 = v351;
                  v205 = v347;
                  (*(v350 + 104))(v347, *MEMORY[0x277D2F518], v351);
                  v206 = v346;
                  sub_219BDD094();
                  (*(v204 + 8))(v205, v203);
                  sub_219BDD204();

                  v207 = v206;
                  v198 = v376;
                  (*(v348 + 8))(v207, v349);
                }

                v208 = *(v377 + 8);
                v208(v364, v198);
                goto LABEL_115;
              }

              v208 = *(v377 + 8);
              v208(v364, v198);
              sub_2196C8400(v380, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8);
LABEL_114:
              v202 = v372;
LABEL_115:
              v342 = v200;
              sub_218A56C84();
              sub_21909C8A4(v342, v202);

              v208(v202, v198);
              v343 = v379;
              *v379 = v342;
              v344 = *MEMORY[0x277D6DF00];
              v345 = sub_219BE8464();
              (*(*(v345 - 8) + 104))(v343, v344, v345);
              return sub_218932F9C(v191);
            }
          }

          __swift_project_boxed_opaque_existential_1((v193 + 16), *(v193 + 40));
          sub_2186C709C(0, &qword_280EC68C0);
          result = sub_219BE1E34();
          if (!*(&v393 + 1))
          {
            __break(1u);
            return result;
          }

          sub_2186CB1F0(&v392, v380);
          v336 = v364;
          if (qword_280EE5F48 != -1)
          {
            swift_once();
          }

          v337 = sub_219BE5434();
          v338 = __swift_project_value_buffer(v337, qword_280F62580);
          v339 = v353;
          (*(*(v337 - 8) + 16))(v353 + *(v352 + 36), v338, v337);
          *v339 = 0;
          *(v339 + 8) = 9;
          *(v339 + 16) = v192;
          *(v339 + 24) = 0x7548656C7A7A7570;
          *(v339 + 32) = 0xE900000000000062;
          *(v339 + 40) = 0u;
          *(v339 + 56) = 0u;
          *(v339 + 72) = -1;
          __swift_project_boxed_opaque_existential_1(v380, *(&v380[1] + 1));
          v340 = v192;
          v341 = sub_21940500C(v339);
          sub_2196C8A38(v339, type metadata accessor for TagFeedAsyncConfig);
          v208 = *(v377 + 8);
          v208(v336, v198);
          *&v386 = v341;
          __swift_destroy_boxed_opaque_existential_1(v380);
          v200 = v386;
          if (v386)
          {
            goto LABEL_114;
          }
        }

        else
        {
          *(&v387 + 1) = &type metadata for AlertContentRegionUnavailable;
          *&v388 = sub_2189F7F2C();
          (*(v377 + 8))(v194, v376);
          BYTE8(v388) = 1;
          sub_2196C83AC(&v386);
        }
      }

      else
      {
        if (qword_280EE5F80 != -1)
        {
          swift_once();
        }

        v275 = sub_219BE5434();
        __swift_project_value_buffer(v275, qword_280F625E0);
        v276 = sub_219BE5414();
        v277 = sub_219BF6214();
        if (os_log_type_enabled(v276, v277))
        {
          v278 = swift_slowAlloc();
          *v278 = 0;
          MEMORY[0x21CECF960](v278, -1, -1);
        }
      }

      v288 = *MEMORY[0x277D6DEF8];
      v289 = sub_219BE8464();
      (*(*(v289 - 8) + 104))(v379, v288, v289);
      return sub_218932F9C(v191);
    case 0x3CuLL:
      v172 = __ROR8__(v398 + 0x1000000000000000, 3);
      v173 = v376;
      v174 = v372;
      if (v172 > 0xD)
      {
        goto LABEL_110;
      }

      if (((1 << v172) & 0x3CF0) != 0)
      {
        goto LABEL_3;
      }

      if (v172 == 8)
      {
        v96 = sub_2190FD33C();
        sub_218A554E8(v174);
      }

      else if (v172 == 9)
      {
        v96 = sub_2190FD89C();
        sub_218A56C88(v96);
      }

      else
      {
LABEL_110:
        if (v172 < 3)
        {
LABEL_3:
          v50 = MEMORY[0x277D6DEF0];
LABEL_4:
          v51 = *v50;
          v52 = sub_219BE8464();
          return (*(*(v52 - 8) + 104))(v379, v51, v52);
        }

        v96 = sub_2190FCFC4();
        sub_218A56C84();
      }

      sub_21909C8A4(v96, v174);
      (*(v377 + 8))(v174, v173);
LABEL_9:
      v97 = v379;
      *v379 = v96;
      v98 = *MEMORY[0x277D6DF00];
      v99 = sub_219BE8464();
      return (*(*(v99 - 8) + 104))(v97, v98, v99);
    default:
      sub_218932F9C(v398);
      goto LABEL_3;
  }
}

uint64_t sub_2196C8018@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDD944();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  sub_2196C8D0C(a1, v6, type metadata accessor for NewsActivity2.Article);
  sub_2196C8470(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

  sub_2196C8AA4(v6, v12, MEMORY[0x277D2FB40]);
  v13 = sub_219BDD914();
  sub_2196C8A38(v12, MEMORY[0x277D2FB40]);
  if (v13)
  {
    *a2 = v13;
    v14 = MEMORY[0x277D33BC0];
  }

  else
  {
    sub_2196C8D0C(a1, v6, type metadata accessor for NewsActivity2.Article);

    sub_2196C8AA4(v6, v10, MEMORY[0x277D2FB40]);
    v15 = sub_219BDD8C4();
    v17 = v16;
    sub_2196C8A38(v10, MEMORY[0x277D2FB40]);
    *a2 = v15;
    a2[1] = v17;
    v14 = MEMORY[0x277D33B80];
  }

  v18 = *v14;
  v19 = sub_219BF2CB4();
  return (*(*(v19 - 8) + 104))(a2, v18, v19);
}

id *sub_2196C8288()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 23));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 30));
  __swift_destroy_boxed_opaque_existential_1((v0 + 35));
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 46));
  __swift_destroy_boxed_opaque_existential_1((v0 + 51));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 61));
  __swift_destroy_boxed_opaque_existential_1((v0 + 66));
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 74));
  return v0;
}

uint64_t sub_2196C8370()
{
  sub_2196C8288();

  return swift_deallocClassInstance();
}

uint64_t sub_2196C8400(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_2186F8688(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2196C8470(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_2196C84EC()
{
  result = qword_27CC1DF60;
  if (!qword_27CC1DF60)
  {
    sub_2186C6148(255, &qword_280E8E480);
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CC1DF60);
  }

  return result;
}

uint64_t sub_2196C8588(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_218834E54(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2196C8608(uint64_t a1, uint64_t a2)
{
  sub_2196C8698(0, &qword_27CC1DF78, &qword_280EA6BB0, &protocol descriptor for EngagementUpsellOfferManagerType, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2196C8698(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186C709C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2196C8704(uint64_t a1, uint64_t a2)
{
  sub_2187C5110();
  v6 = (*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  v7 = v2 + ((*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_2196C4618(a1, a2, v2 + v6, *v7, *(v7 + 8));
}

uint64_t sub_2196C8914(uint64_t a1, uint64_t a2)
{
  sub_2187C5110();
  v6 = (*(*(v5 - 8) + 80) + 24) & ~*(*(v5 - 8) + 80);
  v7 = v2 + ((*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_2196C35D4(a1, a2, *(v2 + 16), v2 + v6, *v7, *(v7 + 8));
}

uint64_t sub_2196C89D0()
{
  sub_2187C5110();
  v2 = *(v1 - 8);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80));

  return sub_2196C2ABC(v3, v4, v5, v6);
}

uint64_t sub_2196C8A38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2196C8AA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2196C8B0C()
{
  v1 = *(type metadata accessor for NewsActivity2.Article(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2187C5110();
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v0 + v3);
  v8 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2196C20D4(v0 + v2, v7, v0 + v6, v8);
}

uint64_t sub_2196C8C14(void *a1)
{
  v3 = *(type metadata accessor for NewsActivity2.Article(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_2196C1BEC(a1, v4, v5);
}

uint64_t sub_2196C8C94(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_2196C8698(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2196C8D0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2196C8D74()
{
  sub_2187C5110();
  v2 = *(v1 - 8);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_2196C3484(v3, v4);
}

uint64_t sub_2196C8DD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2196C8E20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218834E54(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2196C8ED0()
{
  sub_2196C9308(v0, v9);
  v1 = v10;
  v2 = v11;
  v3 = v12;
  v7[0] = v10;
  v7[1] = v11;
  v8 = v12;
  v6[2] = v7;
  sub_218AB7B18(v10, v11, v12);
  v4 = sub_218FAE36C(sub_2196C9340, v6, &unk_282A22AE8);
  sub_218C113E0(v9);
  sub_21896755C(v1, v2, v3);
  return v4 & 1;
}

uint64_t sub_2196C8F88()
{
  sub_2196C9308(v0, v5);
  v3[8] = v5[8];
  v4[0] = v6[0];
  *(v4 + 9) = *(v6 + 9);
  v3[4] = v5[4];
  v3[5] = v5[5];
  v3[6] = v5[6];
  v3[7] = v5[7];
  v3[0] = v5[0];
  v3[1] = v5[1];
  v3[2] = v5[2];
  v3[3] = v5[3];
  v1 = *&v5[0];

  sub_218C113E0(v3);
  return v1;
}

uint64_t sub_2196C9010(uint64_t a1, uint64_t a2)
{
  v4 = sub_2196C925C();

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_2196C905C(uint64_t a1, uint64_t a2)
{
  sub_2196C9308(a1, v9);
  sub_2196C9308(a2, v11);
  v7[8] = v9[8];
  v8[0] = v10[0];
  *(v8 + 9) = *(v10 + 9);
  v7[4] = v9[4];
  v7[5] = v9[5];
  v7[6] = v9[6];
  v7[7] = v9[7];
  v7[0] = v9[0];
  v7[1] = v9[1];
  v7[2] = v9[2];
  v7[3] = v9[3];
  v5[8] = v11[8];
  v6[0] = v12[0];
  *(v6 + 9) = *(v12 + 9);
  v5[4] = v11[4];
  v5[5] = v11[5];
  v5[6] = v11[6];
  v5[7] = v11[7];
  v5[0] = v11[0];
  v5[1] = v11[1];
  v5[2] = v11[2];
  v5[3] = v11[3];
  if (v9[0] == v11[0])
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_219BF78F4();
  }

  sub_218C113E0(v5);
  sub_218C113E0(v7);
  return v3 & 1;
}

unint64_t sub_2196C9154()
{
  result = qword_280EC4648;
  if (!qword_280EC4648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC4648);
  }

  return result;
}

unint64_t sub_2196C91AC()
{
  result = qword_280EC4650;
  if (!qword_280EC4650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC4650);
  }

  return result;
}

unint64_t sub_2196C9204()
{
  result = qword_280EC4678;
  if (!qword_280EC4678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC4678);
  }

  return result;
}

unint64_t sub_2196C925C()
{
  result = qword_280EC4670;
  if (!qword_280EC4670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC4670);
  }

  return result;
}

unint64_t sub_2196C92B4()
{
  result = qword_280EC4668;
  if (!qword_280EC4668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC4668);
  }

  return result;
}

uint64_t sub_2196C9340(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v4 = *(v2 + 16);
  v8 = *a1;
  v9 = v3;
  v6 = *v2;
  v7 = v4;
  return _s7NewsUI225MagazineSectionConfigKindO2eeoiySbAC_ACtFZ_0(&v8, &v6) & 1;
}

uint64_t sub_2196C93C0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC08890 != -1)
  {
    swift_once();
  }

  sub_219BDC924();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC088A0 != -1)
  {
    swift_once();
  }

  sub_219BDC924();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC088B0 != -1)
  {
    swift_once();
  }

  return sub_219BDC924();
}

uint64_t sub_2196C9580(void *a1)
{
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC088D8 != -1)
  {
    swift_once();
  }

  v8 = 0;
  sub_219BDC924();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC088C8 != -1)
  {
    swift_once();
  }

  v7 = 0;
  sub_219BDC924();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC088D0 != -1)
  {
    swift_once();
  }

  sub_219BDBBB4();
  sub_21871DBD4();
  sub_219BDC924();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2196C97E8(void *a1)
{
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC088F0 != -1)
  {
    swift_once();
  }

  v8 = 0;
  sub_219BDC924();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC088E0 != -1)
  {
    swift_once();
  }

  v7 = 0;
  sub_219BDC924();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC088E8 != -1)
  {
    swift_once();
  }

  sub_219BDBBB4();
  sub_21871DBD4();
  sub_219BDC924();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2196C9A50(void *a1)
{
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC088F8 != -1)
  {
    swift_once();
  }

  v7[1] = 0;
  sub_219BDC924();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC08900 != -1)
  {
    swift_once();
  }

  sub_219BDBBB4();
  sub_21871DBD4();
  sub_219BDC924();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2196C9C48(void *a1)
{
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_280EE9998 != -1)
  {
    swift_once();
  }

  v7[1] = 0;
  sub_219BDC924();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_280EE9980 != -1)
  {
    swift_once();
  }

  sub_219BDBBB4();
  sub_21871DBD4();
  sub_219BDC924();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2196C9E40(void *a1)
{
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC08908 != -1)
  {
    swift_once();
  }

  v7[1] = 0;
  sub_219BDC924();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_280EE9970 != -1)
  {
    swift_once();
  }

  sub_219BDBBB4();
  sub_21871DBD4();
  sub_219BDC924();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2196CA038(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC08918 != -1)
  {
    swift_once();
  }

  return sub_219BDC924();
}

uint64_t sub_2196CA114(void *a1)
{
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC08928 != -1)
  {
    swift_once();
  }

  v8 = 0;
  sub_219BDC924();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC08930 != -1)
  {
    swift_once();
  }

  sub_219BDBBB4();
  sub_21871DBD4();
  sub_219BDC924();
  (*(v3 + 8))(v5, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC08938 != -1)
  {
    swift_once();
  }

  v7[7] = 0;
  return sub_219BDC924();
}

uint64_t sub_2196CA37C(void *a1)
{
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC08940 != -1)
  {
    swift_once();
  }

  v7[1] = 0;
  sub_219BDC924();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC08948 != -1)
  {
    swift_once();
  }

  sub_219BDBBB4();
  sub_21871DBD4();
  sub_219BDC924();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2196CA574(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_280EE99B0 != -1)
  {
    swift_once();
  }

  return sub_219BDC924();
}

uint64_t sub_2196CA66C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_2196CA6C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_2196CA730()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_2196CA7EC()
{
  v1 = *(v0 + 8);

  return v1;
}

void *sub_2196CA81C()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t sub_2196CA874()
{
  sub_219BF7AA4();
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_2196CA8E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2196CAAA0();

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_2196CA92C()
{
  sub_219BF7AA4();
  sub_219BF52F4();
  return sub_219BF7AE4();
}

unint64_t sub_2196CA998()
{
  result = qword_27CC1E000;
  if (!qword_27CC1E000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E000);
  }

  return result;
}

unint64_t sub_2196CA9F0()
{
  result = qword_27CC1E008;
  if (!qword_27CC1E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E008);
  }

  return result;
}

unint64_t sub_2196CAA48()
{
  result = qword_27CC1E010;
  if (!qword_27CC1E010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E010);
  }

  return result;
}

unint64_t sub_2196CAAA0()
{
  result = qword_27CC1E018;
  if (!qword_27CC1E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E018);
  }

  return result;
}

unint64_t sub_2196CAAF8()
{
  result = qword_27CC1E020;
  if (!qword_27CC1E020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E020);
  }

  return result;
}

void sub_2196CAB4C()
{
  sub_219BED0C4();
  v0 = objc_opt_self();
  v1 = sub_219BF53D4();
  sub_218A293AC();
  v2 = sub_219BF6BB4();
  v3 = [objc_opt_self() configurationWithFont_];

  v4 = [v0 ts:v1 internalSystemImageNamed:v3 withConfiguration:?];
  if (v4)
  {
    [v4 imageWithRenderingMode_];
  }

  else
  {
    __break(1u);
  }
}

void sub_2196CAC68()
{
  v1 = v0[5];
  ObjectType = swift_getObjectType();
  (*(v1 + 64))(ObjectType, v1);
  __swift_project_boxed_opaque_existential_1(v0 + 6, v0[9]);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_2196CAD40()
{
  v1 = type metadata accessor for ChannelPickerElementModel();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
  sub_218951C88();
  sub_219BE5FC4();
  sub_218F24588(v3);
  return sub_2189DA478(v3);
}

uint64_t sub_2196CADE8(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for EngagementAction();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a2 + 11, a2[14]);
  sub_218D2F4F4(a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_219194CCC(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_219BDD154();

  v9 = __swift_project_boxed_opaque_existential_1(a2 + 6, a2[9]);
  __swift_project_boxed_opaque_existential_1((*v9 + 24), *(*v9 + 48));
  sub_218D2F5C8();
  result = sub_219BE1E34();
  if (v12)
  {
    sub_21875F93C(&v11, v13);
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_219BE6DC4();
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2196CAF9C(uint64_t a1)
{
  v3 = *(type metadata accessor for EngagementAction() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_219B5D804(a1, v4);
}

uint64_t ContinueReadingContent.identifier.getter()
{
  v1 = *v0;

  return v1;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2196CB0A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2196CB124()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2196CB198()
{
  v1 = *(*v0 + 48);

  return v1;
}

uint64_t sub_2196CB1CC(void *a1, double a2, double a3)
{
  v4 = v3;
  *(v4 + 24) = a1;
  sub_2196CB378();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x8000000219D2E620;
  *(inited + 72) = sub_21897A4D4();
  *(inited + 80) = sub_2189EB528();
  *(inited + 48) = a1;
  v9 = a1;
  v10 = sub_2194AEC1C(inited);
  swift_setDeallocating();
  sub_218A4724C(inited + 32);
  *(v4 + 16) = v10;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  v11 = [v9 uniqueKey];
  v12 = sub_219BF5414();
  v14 = v13;

  *(v4 + 64) = v12;
  *(v4 + 72) = v14;
  v15 = [v9 uniqueKey];
  v16 = sub_219BF5414();
  v18 = v17;

  MEMORY[0x21CECC330](v16, v18);

  MEMORY[0x21CECC330](45, 0xE100000000000000);
  type metadata accessor for CGSize(0);
  sub_219BF7484();
  MEMORY[0x21CECC330](41, 0xE100000000000000);
  *(v4 + 48) = 0;
  *(v4 + 56) = 0xE000000000000000;
  return v4;
}

void sub_2196CB378()
{
  if (!qword_280E8B718)
  {
    sub_218A471D4();
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8B718);
    }
  }
}

uint64_t sub_2196CB3D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v40 = a2;
  v41 = a3;
  v45 = a4;
  v7 = type metadata accessor for EmailSignupViewModel(0);
  v42 = *(v7 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v43 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v44 = v39 - v10;
  v11 = type metadata accessor for EmailSignupViewModelFactoryResult(0);
  MEMORY[0x28223BE20](v11);
  v13 = (v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = (v39 - v15);
  v17 = *a1;
  v18 = a1[1];
  v19 = *(a1 + 16);
  v46 = *(a1 + 17);
  v47 = v19;
  __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
  sub_2196CB8C4();
  result = sub_219BE1E34();
  if (v51)
  {
    sub_2186CB1F0(&v48, v52);
    __swift_project_boxed_opaque_existential_1(v52, v52[3]);
    *&v48 = v17;
    *(&v48 + 1) = v18;
    v49 = v47;
    v50 = v46;
    sub_219AE48D0(&v48, v16);
    sub_2196CB98C(v16, v13, type metadata accessor for EmailSignupViewModelFactoryResult);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      sub_2196CBAD4(v16, type metadata accessor for EmailSignupViewModelFactoryResult);
      v22 = v13;
      v23 = v45;
      sub_2186CB1F0(v22, v45);
LABEL_6:
      *(v23 + 40) = EnumCaseMultiPayload == 1;
      return __swift_destroy_boxed_opaque_existential_1(v52);
    }

    v24 = v44;
    sub_2196CB928(v13, v44);
    v25 = v5[5];
    v39[1] = v5[6];
    v39[0] = __swift_project_boxed_opaque_existential_1(v5 + 2, v25);
    type metadata accessor for EmailSignupViewController();
    v26 = v24;
    v27 = v43;
    sub_2196CB98C(v26, v43, type metadata accessor for EmailSignupViewModel);
    v28 = (*(v42 + 80) + 34) & ~*(v42 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v17;
    *(v29 + 24) = v18;
    v30 = v46;
    *(v29 + 32) = v47;
    *(v29 + 33) = v30;
    sub_2196CB928(v27, v29 + v28);

    v31 = sub_219BE1E04();

    if (v31)
    {
      v32 = *(v31 + OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_eventHandler + 8);
      ObjectType = swift_getObjectType();
      (*(v32 + 32))(ObjectType, v32);
      v34 = swift_allocObject();
      v35 = v40;
      v36 = v41;
      *(v34 + 16) = v40;
      *(v34 + 24) = v36;
      sub_218CB34F0(v35);
      v37 = sub_219BE2E54();
      sub_218AB5E74();
      sub_219BE2F74();

      sub_2196CBAD4(v44, type metadata accessor for EmailSignupViewModel);
      sub_2196CBAD4(v16, type metadata accessor for EmailSignupViewModelFactoryResult);
      v38 = v45;
      *v45 = v31;
      v23 = v38;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2196CB7FC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE1BA4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for EmailSignupViewModel(0);
  return sub_219BE1BA4();
}

unint64_t sub_2196CB8C4()
{
  result = qword_280EA96A8[0];
  if (!qword_280EA96A8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280EA96A8);
  }

  return result;
}

uint64_t sub_2196CB928(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmailSignupViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2196CB98C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2196CB9F4(void *a1)
{
  type metadata accessor for EmailSignupViewModel(0);

  return sub_2196CB7FC(a1);
}

void *sub_2196CBA80@<X0>(void *result@<X0>, BOOL *a2@<X8>)
{
  v4 = *(v2 + 16);
  if (v4)
  {
    result = v4(*result);
  }

  *a2 = v4 == 0;
  return result;
}

uint64_t sub_2196CBAD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for SportsScheduleTagFeedGroupConfigData()
{
  result = qword_280E9A450;
  if (!qword_280E9A450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2196CBBA8()
{
  result = sub_219BF1934();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2196CBC2C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v19 = a2;
  v4 = sub_219BF1934();
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196CC2E4(0, &qword_27CC1E028, MEMORY[0x277D844C8]);
  v21 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2196CC23C();
  sub_219BF7B34();
  if (!v2)
  {
    v11 = v8;
    v12 = v20;
    v24 = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    v13 = v4;
    v22 = 2;
    sub_2196CC290();
    sub_219BF7734();
    (*(v11 + 8))(v10, v21);
    v15 = v23;
    v16 = v19;
    *v19 = 13;
    v17 = type metadata accessor for SportsScheduleTagFeedGroupConfigData();
    (*(v12 + 32))(&v16[*(v17 + 20)], v6, v13);
    v16[*(v17 + 24)] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2196CBF00(void *a1)
{
  v3 = v1;
  sub_2196CC2E4(0, &qword_27CC1E040, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2196CC23C();
  sub_219BF7B44();
  v12[15] = *v3;
  v12[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for SportsScheduleTagFeedGroupConfigData();
    v12[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
    v12[12] = v3[*(v10 + 24)];
    v12[11] = 2;
    sub_2196CC348();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2196CC114()
{
  v1 = 0x746E65746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x72756F5361746164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684957547;
  }
}

uint64_t sub_2196CC16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2196CC4B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2196CC194(uint64_t a1)
{
  v2 = sub_2196CC23C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2196CC1D0(uint64_t a1)
{
  v2 = sub_2196CC23C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2196CC23C()
{
  result = qword_27CC1E030;
  if (!qword_27CC1E030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E030);
  }

  return result;
}

unint64_t sub_2196CC290()
{
  result = qword_27CC1E038;
  if (!qword_27CC1E038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E038);
  }

  return result;
}

void sub_2196CC2E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2196CC23C();
    v7 = a3(a1, &type metadata for SportsScheduleTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2196CC348()
{
  result = qword_27CC1E048;
  if (!qword_27CC1E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E048);
  }

  return result;
}

unint64_t sub_2196CC3B0()
{
  result = qword_27CC1E050;
  if (!qword_27CC1E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E050);
  }

  return result;
}

unint64_t sub_2196CC408()
{
  result = qword_27CC1E058;
  if (!qword_27CC1E058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E058);
  }

  return result;
}

unint64_t sub_2196CC460()
{
  result = qword_27CC1E060;
  if (!qword_27CC1E060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E060);
  }

  return result;
}

uint64_t sub_2196CC4B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72756F5361746164 && a2 == 0xEA00000000006563)
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

uint64_t sub_2196CC5D4()
{
  sub_21896FA3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  v8 = *(v0 + 24);
  v9 = swift_allocObject();
  v10 = sub_219BDFA44();
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v34 = v8;
  sub_2187B14CC(v35, &v29, &unk_280EE7DB0, &qword_280EE7DC0);
  if (!*(&v30 + 1))
  {
    sub_2187448D0(&v29, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v15 = qword_280ED32D8;
    v16 = qword_280ED32E0;
    v17 = qword_280ED32E8;

    sub_2188202A8(v16);
    goto LABEL_8;
  }

  sub_21875F93C(&v29, &v31);
  __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
  sub_2187A53A0();
  result = sub_219BE1E24();
  if (result)
  {
    v12 = result;
    __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
    sub_2187367A8();
    result = sub_219BE1E24();
    if (result)
    {
      v13 = sub_219BED5B4();

      MEMORY[0x28223BE20](v14);
      *(&v26 - 2) = v12;
      *(&v26 - 1) = v13;
      sub_2186F8278(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
      swift_allocObject();
      v15 = sub_219BE30B4();

      __swift_destroy_boxed_opaque_existential_1(&v31);
      v16 = 0;
      v17 = 0;
LABEL_8:
      v28 = v9 | 0x4000000000000002;
      v30 = 0u;
      v29 = 0u;
      sub_2189B4E2C(v7, v5);
      sub_2187B14CC(v37, &v31, &qword_280EE33A0, &qword_280EE33B0);
      v18 = (*(v2 + 80) + 24) & ~*(v2 + 80);
      v19 = (v3 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
      v20 = (v19 + 47) & 0xFFFFFFFFFFFFFFF8;
      v27 = v7;
      v21 = swift_allocObject();
      *(v21 + 16) = 0;
      sub_2189B4EAC(v5, v21 + v18);
      v22 = v21 + v19;
      v23 = v32;
      *v22 = v31;
      *(v22 + 16) = v23;
      *(v22 + 32) = v33;
      v24 = (v21 + v20);
      v25 = (v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v24 = 0;
      v24[1] = 0;
      *v25 = v15;
      v25[1] = v16;
      v25[2] = v17;

      sub_2188202A8(v16);
      sub_2186CF94C();
      sub_2196CCD0C(&qword_280EE5A90, 255, sub_2186CF94C);
      sub_219BEB464();

      sub_2187FABEC(v16);
      sub_2187448D0(v35, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      sub_2187448D0(v37, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      sub_218A42D80(v27);
      sub_2187448D0(&v29, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2196CCD0C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2196CCD54(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  sub_21896FA3C();
  v63 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v4;
  MEMORY[0x28223BE20](v5);
  v66 = &v62 - v6;
  v7 = sub_219BE8C14();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE9414();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - v16;
  v18 = sub_219BDD944();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v20;
  v21 = type metadata accessor for SavedFeedRouteModel();
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196CE020(a1, v23, type metadata accessor for SavedFeedRouteModel);
  v24 = v20;
  v25 = v67;
  sub_218B5E238(v23, v24, MEMORY[0x277D2FB40]);
  (*(v8 + 16))(v10, v25, v7);
  sub_219BE9424();
  (*(v12 + 104))(v14, *MEMORY[0x277D6E598], v11);
  sub_2186F7DF8(&unk_280EE44E0, MEMORY[0x277D6E5A8]);
  v69 = v17;
  LOBYTE(a1) = sub_219BF53A4();
  v26 = *(v12 + 8);
  v70 = v11;
  v71 = v12 + 8;
  v26(v14, v11);
  if ((a1 & 1) == 0)
  {
    v27 = sub_219BE8BF4();
    if (v27)
    {
      v28 = v27;
      sub_218C1A2CC(v81);
      v29 = v81[0];
      if ((~v81[0] & 0xF000000000000007) != 0)
      {
        v61 = v69;
        sub_219BE6474();

        v26(v61, v70);
        sub_218D0E588(v72, MEMORY[0x277D2FB40]);
        return sub_218970170(v29);
      }
    }
  }

  v30 = v68;
  v31 = *(v68 + 112);
  sub_2187B2C48();
  v33 = v32;
  v34 = swift_allocBox();
  v36 = v35;
  v37 = *(v33 + 48);
  sub_2187B2DA0();
  v39 = *(v38 + 48);
  sub_2196CE020(v72, v36, MEMORY[0x277D2FB40]);
  v40 = MEMORY[0x277D84F90];
  *(v36 + v39) = MEMORY[0x277D84F90];
  *(v36 + v37) = v40;
  v67 = v34;
  v41 = v34 | 2;
  v42 = *(v30 + 64);
  v43 = sub_219BDFA44();
  v44 = v66;
  (*(*(v43 - 8) + 56))(v66, 1, 1, v43);
  sub_218718690(v30 + 72, v81);
  v80 = 0;
  memset(v79, 0, sizeof(v79));
  v78 = v31;
  sub_21896FEF0(v79, &v74, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  v62 = v26;
  if (v75)
  {
    sub_21875F93C(&v74, v76);
    *&v74 = v41;
    v45 = sub_2194DA78C(v76);
    v68 = v46;
    v48 = v47;
    __swift_destroy_boxed_opaque_existential_1(v76);
  }

  else
  {
    sub_21896FF74(&v74, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v45 = qword_280ED32D8;
    v49 = qword_280ED32E0;
    v48 = qword_280ED32E8;

    v68 = v49;
    sub_2188202A8(v49);
  }

  v73 = v41;
  v75 = sub_219BDD274();
  *&v74 = v42;
  v50 = v65;
  sub_2196CE020(v44, v65, sub_21896FA3C);
  sub_21896FEF0(v81, v76, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v51 = (*(v63 + 80) + 24) & ~*(v63 + 80);
  v52 = (v64 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v52 + 47) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  *(v54 + 16) = v42;
  sub_218B5E238(v50, v54 + v51, sub_21896FA3C);
  v55 = v54 + v52;
  v56 = v76[1];
  *v55 = v76[0];
  *(v55 + 16) = v56;
  *(v55 + 32) = v77;
  v57 = (v54 + v53);
  v58 = (v54 + ((v53 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v57 = 0;
  v57[1] = 0;
  v59 = v68;
  *v58 = v45;
  v58[1] = v59;
  v58[2] = v48;
  swift_retain_n();

  sub_2188202A8(v59);
  sub_2186CF94C();
  sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v59);
  sub_21896FF74(v79, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_21896FF74(v81, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218D0E588(v44, sub_21896FA3C);
  v62(v69, v70);
  sub_218D0E588(v72, MEMORY[0x277D2FB40]);
  sub_218806FD0(&v74);
}

uint64_t sub_2196CD744(uint64_t a1)
{
  sub_21896F9B8();
  v59 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NewsActivity2.Article(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v62 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v63 = &v58 - v8;
  sub_21896FA3C();
  v64 = *(v9 - 8);
  v10 = *(v64 + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v65 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - v12;
  v61 = sub_219BDD944();
  v14 = MEMORY[0x28223BE20](v61);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v60 = &v58 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v58 - v19;
  v21 = type metadata accessor for SavedFeedRouteModel();
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196CE020(a1, v23, type metadata accessor for SavedFeedRouteModel);
  sub_218B5E238(v23, v20, MEMORY[0x277D2FB40]);
  v24 = *(v1 + 112);
  sub_2187B2C48();
  v26 = v25;
  v66 = swift_allocBox();
  v28 = v27;
  v29 = *(v26 + 48);
  sub_2187B2DA0();
  v31 = *(v30 + 48);
  v67 = v20;
  sub_2196CE020(v20, v28, MEMORY[0x277D2FB40]);
  v32 = MEMORY[0x277D84F90];
  *(v28 + v31) = MEMORY[0x277D84F90];
  v33 = v13;
  *(v28 + v29) = v32;
  v34 = *(v1 + 64);
  v35 = sub_219BDFA44();
  (*(*(v35 - 8) + 56))(v13, 1, 1, v35);
  sub_218718690(v1 + 72, v71);
  v70[5] = v24;
  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_280EE9210 != -1)
  {
    swift_once();
  }

  v36 = sub_219BDC8C4();

  if (v36)
  {
    v37 = v28;
    v38 = v63;
    sub_2196CE020(v37, v63, type metadata accessor for NewsActivity2.Article);
    v39 = v62;
    sub_2196CE020(v38, v62, type metadata accessor for NewsActivity2.Article);

    sub_218B5E238(v39, v16, MEMORY[0x277D2FB40]);
    sub_218D0E588(v38, type metadata accessor for NewsActivity2.Article);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v40 = swift_projectBox();
      v41 = v58;
      sub_2196CE020(v40, v58, sub_21896F9B8);
      v42 = v60;
      sub_218B5E238(v41 + *(v59 + 48), v60, MEMORY[0x277D2FB40]);
      __swift_destroy_boxed_opaque_existential_1(v41);

      sub_2186C66AC();
      v43 = sub_219BF6F44();
      sub_2186C6FC8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_219C09BA0;
      v45 = sub_219BDD8C4();
      v47 = v46;
      *(v44 + 56) = MEMORY[0x277D837D0];
      *(v44 + 64) = sub_2186FC3BC();
      *(v44 + 32) = v45;
      *(v44 + 40) = v47;
      sub_219BF6214();
      sub_219BE5314();

      v48 = MEMORY[0x277D2FB40];
      sub_218D0E588(v42, MEMORY[0x277D2FB40]);
      sub_21896FF74(v71, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_218D0E588(v33, sub_21896FA3C);
      sub_218D0E588(v67, v48);

      return 0;
    }

    sub_218D0E588(v16, MEMORY[0x277D2FB40]);
  }

  v70[4] = v66 | 2;
  v70[3] = sub_219BDD274();
  v70[0] = v34;
  v49 = v65;
  sub_2196CE020(v33, v65, sub_21896FA3C);
  sub_21896FEF0(v71, v68, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v50 = (*(v64 + 80) + 24) & ~*(v64 + 80);
  v51 = (v10 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 16) = v34;
  sub_218B5E238(v49, v52 + v50, sub_21896FA3C);
  v53 = v52 + v51;
  v54 = v68[1];
  *v53 = v68[0];
  *(v53 + 16) = v54;
  *(v53 + 32) = v69;
  v55 = (v52 + ((v51 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v55 = 0;
  v55[1] = 0;
  sub_2186CF94C();
  sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
  swift_retain_n();
  v57 = sub_219BEB454();

  sub_21896FF74(v71, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218D0E588(v33, sub_21896FA3C);
  sub_218D0E588(v67, MEMORY[0x277D2FB40]);
  sub_218806FD0(v70);

  return v57;
}

uint64_t sub_2196CE020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_2196CE088(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC7NewsUI233SubscriberStatusConditionProvider_statusConditions;
  v11 = MEMORY[0x277D84F90];
  sub_2196CE6B0(0, &qword_280EE7B40, sub_2196CE67C, MEMORY[0x277D6CB60]);
  swift_allocObject();
  *&v2[v6] = sub_219BE20D4();
  *&v2[OBJC_IVAR____TtC7NewsUI233SubscriberStatusConditionProvider_appConfigurationManager] = a1;
  *&v2[OBJC_IVAR____TtC7NewsUI233SubscriberStatusConditionProvider_bundleSubscriptionManager] = a2;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = objc_msgSendSuper2(&v10, sel_init);
  [a1 addAppConfigObserver_];
  [a2 addObserver_];
  v8 = [a1 possiblyUnfetchedAppConfiguration];
  sub_2196CEB6C();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_2196CE1F0@<X0>(void *a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_219BEBF64();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v17 = [a1 unsignedIntegerValue];
  if (v17)
  {
    if (v17 == 2)
    {
      v20 = [a2 identifier];
      sub_219BF5414();

      v21 = [*(a4 + OBJC_IVAR____TtC7NewsUI233SubscriberStatusConditionProvider_bundleSubscriptionManager) cachedSubscription];
      LODWORD(v20) = [v21 isServicesBundleUser];

      if (v20)
      {
        if (a3)
        {
          v22 = MEMORY[0x277D2D478];
        }

        else
        {
          v22 = MEMORY[0x277D2D480];
        }

        (*(v11 + 104))(v14, *v22, v10);
      }

      else
      {
        (*(v11 + 104))(v14, *MEMORY[0x277D2D480], v10);
      }

      goto LABEL_16;
    }

    if (v17 == 1)
    {
      v18 = [a2 identifier];
      sub_219BF5414();

      v19 = MEMORY[0x277D2D478];
      if ((a3 & 1) == 0)
      {
        v19 = MEMORY[0x277D2D480];
      }

      (*(v11 + 104))(v16, *v19, v10);
LABEL_16:
      sub_219BEBF54();
      v26 = sub_219BEBF74();
      return (*(*(v26 - 8) + 56))(a5, 0, 1, v26);
    }
  }

  v23 = sub_219BEBF74();
  v24 = *(*(v23 - 8) + 56);

  return v24(a5, 1, 1, v23);
}

void sub_2196CE5A4(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7NewsUI233SubscriberStatusConditionProvider_appConfigurationManager];
  v3 = a1;
  v2 = [v1 possiblyUnfetchedAppConfiguration];
  sub_2196CEB6C();
  swift_unknownObjectRelease();
}

void sub_2196CE6B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2196CE714(unint64_t a1, void (*a2)(id, id), uint64_t a3)
{
  v51 = a2;
  v52 = a3;
  sub_2196CEFA0(0);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_219BEBF74();
  v7 = *(v53 - 8);
  v8 = MEMORY[0x28223BE20](v53);
  v45 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v42 = &v42 - v10;
  v47 = v3;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = sub_219BF74D4() | 0x8000000000000000;
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v12 = ~v15;
    v11 = a1 + 64;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v13 = v17 & *(a1 + 64);
    v14 = a1;
  }

  v19 = 0;
  v46 = v12;
  v49 = (v7 + 48);
  v43 = v7;
  v44 = (v7 + 32);
  v48 = MEMORY[0x277D84F90];
  v54 = v14;
LABEL_8:
  v20 = v19;
  v21 = v13;
  if ((v14 & 0x8000000000000000) != 0)
  {
    do
    {
      v29 = sub_219BF7504();
      if (!v29)
      {
        goto LABEL_25;
      }

      v31 = v30;
      v55 = v29;
      sub_2186C6148(0, &qword_280E8DA20);
      swift_dynamicCast();
      v27 = v56;
      v55 = v31;
      sub_2186C6148(0, &unk_280E8E2C8);
      swift_dynamicCast();
      v28 = v56;
      v19 = v20;
      v13 = v21;
      if (!v27)
      {
        goto LABEL_25;
      }

LABEL_17:
      v32 = v50;
      v51(v27, v28);

      if ((*v49)(v32, 1, v53) != 1)
      {
        v33 = *v44;
        v34 = v42;
        v35 = v32;
        v36 = v53;
        (*v44)(v42, v35, v53);
        v33(v45, v34, v36);
        v37 = v48;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_2191FA5A4(0, v37[2] + 1, 1, v37);
        }

        v38 = v43;
        v40 = v37[2];
        v39 = v37[3];
        if (v40 >= v39 >> 1)
        {
          v37 = sub_2191FA5A4(v39 > 1, v40 + 1, 1, v37);
        }

        v37[2] = v40 + 1;
        v41 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v48 = v37;
        result = (v33)(v37 + v41 + *(v38 + 72) * v40, v45, v53);
        v14 = v54;
        goto LABEL_8;
      }

      result = sub_21874576C(v32, sub_2196CEFA0);
      v20 = v19;
      v21 = v13;
      v14 = v54;
    }

    while ((v54 & 0x8000000000000000) != 0);
  }

  v22 = v20;
  v23 = v21;
  v19 = v20;
  if (v21)
  {
LABEL_13:
    v13 = (v23 - 1) & v23;
    v24 = (v19 << 9) | (8 * __clz(__rbit64(v23)));
    v25 = *(*(v14 + 48) + v24);
    v26 = *(*(v14 + 56) + v24);
    v27 = v25;
    v28 = v26;
    if (v27)
    {
      goto LABEL_17;
    }

LABEL_25:
    sub_21892DE98();
    return v48;
  }

  while (1)
  {
    v19 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v19 >= ((v12 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v23 = *(v11 + 8 * v19);
    ++v22;
    if (v23)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2196CEB6C()
{
  v1 = [objc_msgSend(*(v0 + OBJC_IVAR____TtC7NewsUI233SubscriberStatusConditionProvider_appConfigurationManager) appConfiguration)];
  result = swift_unknownObjectRelease();
  if (v1)
  {
    v3 = [v1 adStatusConditionsByType];

    if (!v3)
    {
      *&v17 = MEMORY[0x277D84F90];
      sub_2196CEEC4();
      return sub_219BE2114();
    }

    sub_2186C6148(0, &qword_280E8DA20);
    sub_2186C6148(0, &unk_280E8E2C8);
    sub_218B9E44C();
    v4 = sub_219BF5214();

    v5 = [*(v0 + OBJC_IVAR____TtC7NewsUI233SubscriberStatusConditionProvider_bundleSubscriptionManager) cachedSubscription];
    if (objc_getAssociatedObject(v5, v5 + 1))
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    v17 = v15;
    v18 = v16;
    if (*(&v16 + 1))
    {
      if (swift_dynamicCast())
      {
        v6 = v14;
        v7 = [v14 integerValue];
        if (v7 == -1)
        {
          goto LABEL_20;
        }

        goto LABEL_13;
      }
    }

    else
    {
      sub_21874576C(&v17, sub_21880702C);
    }

    v6 = 0;
    v7 = 0;
LABEL_13:
    if (objc_getAssociatedObject(v5, ~v7))
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    v17 = v15;
    v18 = v16;
    if (*(&v16 + 1))
    {
      if (swift_dynamicCast())
      {
        v8 = v14;
        [v8 integerValue];

LABEL_21:
        MEMORY[0x28223BE20](v9);
        v12[16] = v10 & 1;
        v13 = v0;
        v11 = sub_2196CE714(v4, sub_2196CEF94, v12);

        *&v17 = v11;
        sub_2196CEEC4();
        sub_219BE2114();
      }
    }

    else
    {
      sub_21874576C(&v17, sub_21880702C);
    }

LABEL_20:

    goto LABEL_21;
  }

  __break(1u);
  return result;
}

unint64_t sub_2196CEEC4()
{
  result = qword_280E8F480;
  if (!qword_280E8F480)
  {
    sub_2196CE67C(255);
    sub_2196CEF3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F480);
  }

  return result;
}

unint64_t sub_2196CEF3C()
{
  result = qword_280EE3428;
  if (!qword_280EE3428)
  {
    sub_219BEBF74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE3428);
  }

  return result;
}

uint64_t FCAudioPlaybackState.description.getter(uint64_t a1)
{
  v1 = 0x646573756170;
  v2 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v2 = 0x676E6979616C70;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x646570706F7473;
  }
}