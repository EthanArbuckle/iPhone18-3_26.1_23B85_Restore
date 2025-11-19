void sub_219634308(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v26 = a1;
  v25 = sub_219BDD6C4();
  v4 = *(v25 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v25);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDEE04();
  v20 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [*(v2 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_contentSizeManager) contentSizeCategoryForArticle_];
  swift_unknownObjectRelease();
  v10 = v2;
  v23 = *(v2 + 32);
  (*(v7 + 16))(v9, a2, v6);
  v11 = v22;
  v12 = v25;
  (*(v4 + 16))(v22, v26, v25);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = (v8 + *(v4 + 80) + v13) & ~*(v4 + 80);
  v15 = swift_allocObject();
  v16 = v20;
  v17 = v21;
  *(v15 + 16) = v10;
  *(v15 + 24) = v17;
  (*(v7 + 32))(v15 + v13, v9, v16);
  (*(v4 + 32))(v15 + v14, v11, v12);

  v18 = v17;
  sub_219BDD154();

  sub_219635374(v24);
}

uint64_t sub_2196345A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v61 = a5;
  v66 = a4;
  v68 = a1;
  v7 = sub_219BDBD34();
  v63 = *(v7 - 8);
  v64 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v60 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v62 = &v56 - v10;
  sub_218748080(0, &unk_280EE8690, MEMORY[0x277D2DD28], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v56 - v12;
  v14 = sub_219BDF754();
  v57 = *(v14 - 8);
  v58 = v14;
  MEMORY[0x28223BE20](v14);
  v56 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BE03F4();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v56 - v21;
  v65 = sub_219BE03A4();
  v59 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v69 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a2;
  v24 = *(a2 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_startContentSizeCategory);
  if (v24)
  {
    if (a3)
    {
      goto LABEL_6;
    }

LABEL_5:
    v26 = *MEMORY[0x277D76838];
    goto LABEL_6;
  }

  v25 = *MEMORY[0x277D76838];
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_6:
  v27 = v24;
  v28 = a3;
  sub_219BDCC94();
  sub_219BE0394();
  v29 = MEMORY[0x277CEAD18];
  if (*(v67 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_activeExperiment + 8))
  {

    sub_219BE03E4();
    (*(v17 + 32))(v22, v20, v16);
    sub_218748080(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v30 = sub_219BDCD44();
    v31 = *(v30 - 8);
    v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_219C09BA0;
    (*(v31 + 104))(v33 + v32, *MEMORY[0x277CEAD18], v30);
    sub_21963E0E4(&qword_27CC1D568, MEMORY[0x277D2E510]);
    sub_219BDCCC4();

    (*(v17 + 8))(v22, v16);
    v29 = MEMORY[0x277CEAD18];
  }

  v34 = v29;
  sub_219BDEDF4();
  swift_getObjectType();
  sub_219BF6804();
  swift_unknownObjectRelease();
  v36 = v57;
  v35 = v58;
  if ((*(v57 + 48))(v13, 1, v58) == 1)
  {
    sub_218745B8C(v13, &unk_280EE8690, MEMORY[0x277D2DD28], MEMORY[0x277D83D88], sub_218748080);
    v37 = *v34;
    v38 = v68;
    v39 = &unk_219C09000;
  }

  else
  {
    (*(v36 + 32))(v56, v13, v35);
    sub_218748080(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v40 = sub_219BDCD44();
    v41 = *(v40 - 8);
    v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v43 = swift_allocObject();
    v39 = &unk_219C09000;
    *(v43 + 16) = xmmword_219C09BA0;
    v37 = *v34;
    (*(v41 + 104))(v43 + v42, v37, v40);
    sub_21963E0E4(&unk_280EE86A0, MEMORY[0x277D2DD28]);
    v44 = v56;
    v38 = v68;
    sub_219BDCCC4();

    (*(v36 + 8))(v44, v35);
  }

  sub_218748080(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v45 = sub_219BDCD44();
  v46 = *(v45 - 8);
  v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = v39[186];
  (*(v46 + 104))(v48 + v47, v37, v45);
  sub_21963E0E4(&unk_280EE8420, MEMORY[0x277D2E4F0]);
  sub_219BDCCC4();

  sub_219BDFB74();
  v49 = v62;
  sub_219BDD694();
  sub_21963E0E4(&qword_280EE85D0, MEMORY[0x277D2DF70]);
  sub_219BDCC64();
  v50 = v64;
  v51 = *(v63 + 8);
  v51(v49, v64);
  v52 = v60;
  sub_219BDD694();
  sub_219BDD6B4();
  sub_219BDBBF4();
  v51(v52, v50);
  sub_219BDEDF4();
  v70[3] = sub_219BDF4D4();
  __swift_allocate_boxed_opaque_existential_1(v70);
  sub_219BDF4C4();
  v53 = swift_allocObject();
  v54 = v67;
  *(v53 + 16) = v38;
  *(v53 + 24) = v54;

  sub_219BDCC84();

  v51(v49, v50);
  (*(v59 + 8))(v69, v65);
  return sub_218745B8C(v70, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186D0DDC);
}

uint64_t sub_219635028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_activeIssueViewingSession);
  if (v3)
  {
    v4 = v3;
    sub_219BDCE04();
  }

  sub_219BDCC54();

  sub_219BDF434();
  sub_21963E0E4(&qword_280EE87D0, MEMORY[0x277D2DA88]);
  sub_219BDCC44();
  sub_219BDF2F4();
  sub_21963E0E4(&qword_280EE8800, MEMORY[0x277D2D9E8]);
  sub_219BDCC44();
  sub_219BE0754();
  sub_21963E0E4(&qword_280EE8308, MEMORY[0x277D2E770]);
  sub_219BDCC44();
  sub_219BDFD94();
  sub_21963E0E4(&qword_280EE8550, MEMORY[0x277D2E0C8]);
  sub_219BDCC44();
  sub_219BE0364();
  sub_21963E0E4(&qword_280EE8430, MEMORY[0x277D2E4C0]);
  sub_219BDCC44();
  sub_219BDF654();
  sub_21963E0E4(&qword_280EE8700, MEMORY[0x277D2DC88]);
  sub_219BDCC44();
  sub_219BDCC44();
  sub_219BDF034();
  sub_21963E0E4(&unk_280EE88E0, MEMORY[0x277D2D7D8]);
  sub_219BDCC44();
  sub_219BE06D4();
  sub_21963E0E4(&unk_280EE8350, MEMORY[0x277D2E6F8]);
  return sub_219BDCC44();
}

uint64_t sub_219635374(uint64_t a1)
{
  v22[2] = a1;
  v2 = MEMORY[0x277CC9260];
  v3 = MEMORY[0x277D83D88];
  sub_218748080(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v22 - v5;
  v7 = sub_219BDE294();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *(v1 + 104);
  sub_2187B2C48();
  v12 = v11;
  v13 = swift_allocBox();
  v15 = v14;
  v16 = *(v12 + 48);
  sub_2187B2DA0();
  v18 = *(v17 + 48);
  (*(v8 + 104))(v10, *MEMORY[0x277D2FF08], v7);
  v19 = sub_219BDB954();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_219BDD904();
  sub_218745B8C(v6, &unk_280EE9D00, v2, v3, sub_218748080);
  (*(v8 + 8))(v10, v7);
  v20 = MEMORY[0x277D84F90];
  *(v15 + v18) = MEMORY[0x277D84F90];
  *(v15 + v16) = v20;
  v22[3] = v13 | 2;

  sub_219BE7864();
}

uint64_t sub_2196355E8(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_activeIssueViewingSession);
  if (v4)
  {
    v5 = v4;
    sub_219BDCE04();
  }

  sub_219BDD124();

  return sub_219635374(a2);
}

uint64_t sub_219635684(uint64_t a1)
{
  v247 = a1;
  v222 = sub_219BDDDC4();
  v220 = *(v222 - 8);
  v1 = MEMORY[0x28223BE20](v222);
  v221 = &v213 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = v2;
  MEMORY[0x28223BE20](v1);
  v224 = &v213 - v3;
  v218 = sub_219BDD884();
  v217 = *(v218 - 8);
  v4 = MEMORY[0x28223BE20](v218);
  v216 = &v213 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = v5;
  MEMORY[0x28223BE20](v4);
  v223 = &v213 - v6;
  v229 = sub_219BDEB34();
  v227 = *(v229 - 1);
  v7 = MEMORY[0x28223BE20](v229);
  v226 = &v213 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = v8;
  MEMORY[0x28223BE20](v7);
  v228 = &v213 - v9;
  v232 = sub_219BDE374();
  v234 = *(v232 - 1);
  v10 = *(v234 + 64);
  v11 = MEMORY[0x28223BE20](v232);
  v230 = &v213 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v231 = &v213 - v12;
  v242 = sub_219BDE524();
  v237 = *(v242 - 8);
  v13 = MEMORY[0x28223BE20](v242);
  v245 = &v213 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = v14;
  MEMORY[0x28223BE20](v13);
  v246 = &v213 - v15;
  sub_218748080(0, &unk_280EE8D38, MEMORY[0x277D2FCC8], MEMORY[0x277D83D88]);
  v233 = *(v16 - 8);
  v17 = *(v233 + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v239 = &v213 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v240 = (&v213 - v19);
  v250 = sub_219BDDAF4();
  v248 = *(v250 - 1);
  v20 = MEMORY[0x28223BE20](v250);
  v244 = &v213 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = v21;
  MEMORY[0x28223BE20](v20);
  v249 = &v213 - v22;
  v23 = sub_219BDDB34();
  v24 = *(v23 - 8);
  v25 = *(v24 + 8);
  v26 = MEMORY[0x28223BE20](v23);
  v27 = &v213 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v213 - v28;
  v30 = sub_219BDD674();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v213 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v33, v247, v30);
  v34 = (*(v31 + 88))(v33, v30);
  if (v34 == *MEMORY[0x277D2FA40])
  {
    (*(v31 + 96))(v33, v30);
    sub_21963D084(0);
    v36 = *&v33[v35[12]];
    v37 = *&v33[v35[16]];
    v38 = *&v33[v35[20]];
    v39 = *(v24 + 4);
    v39(v29, v33, v23);
    v40 = v251;
    (*(v24 + 2))(v27, v29, v23);
    v41 = (v24[80] + 48) & ~v24[80];
    v42 = swift_allocObject();
    *(v42 + 2) = v36;
    *(v42 + 3) = v37;
    *(v42 + 4) = v38;
    *(v42 + 5) = v40;
    v39(&v42[v41], v27, v23);

    sub_219BDD154();

    return (*(v24 + 1))(v29, v23);
  }

  v247 = v25;
  v214 = &v213 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = v29;
  v241 = v24;
  v243 = v23;
  if (v34 == *MEMORY[0x277D2FA70])
  {
    (*(v31 + 96))(v33, v30);
    sub_21963C4B4(0);
    v45 = v44[12];
    v46 = v44[16];
    v47 = v44[20];
    v48 = v248;
    v49 = *(v248 + 32);
    v227 = (v248 + 32);
    v229 = v49;
    v51 = v249;
    v50 = v250;
    (v49)(v249, v33, v250);
    v52 = *(v241 + 4);
    v231 = v241 + 32;
    v232 = v52;
    v53 = v238;
    (v52)(v238, &v33[v45], v243);
    v54 = v240;
    sub_21963C604(&v33[v46], v240);
    v55 = v237;
    v228 = *(v237 + 32);
    v56 = &v33[v47];
    v57 = v246;
    v58 = v242;
    (v228)(v246, v56, v242);
    v230 = *(v251 + 32);
    (*(v48 + 16))(v244, v51, v50);
    v234 = MEMORY[0x277D2FCC8];
    sub_21963E064(v54, v239, &unk_280EE8D38, MEMORY[0x277D2FCC8]);
    (*(v55 + 16))(v245, v57, v58);
    v59 = v241;
    v60 = v214;
    (*(v241 + 2))(v214, v53, v243);
    v61 = (*(v48 + 80) + 24) & ~*(v48 + 80);
    v62 = (v235 + *(v233 + 80) + v61) & ~*(v233 + 80);
    v63 = (v17 + *(v55 + 80) + v62) & ~*(v55 + 80);
    v64 = (v236 + v59[80] + v63) & ~v59[80];
    v65 = swift_allocObject();
    v66 = v250;
    *(v65 + 16) = v251;
    (v229)(v65 + v61, v244, v66);
    sub_21963C604(v239, v65 + v62);
    (v228)(v65 + v63, v245, v58);
    v67 = v243;
    (v232)(v65 + v64, v60, v243);

    sub_219BDD154();

    (*(v55 + 8))(v246, v58);
    sub_218745B8C(v240, &unk_280EE8D38, v234, MEMORY[0x277D83D88], sub_218748080);
    (*(v241 + 1))(v238, v67);
    return (*(v248 + 8))(v249, v250);
  }

  if (v34 == *MEMORY[0x277D2FA30])
  {
    (*(v31 + 96))(v33, v30);
    sub_21963C8A8(0);
    v69 = v68[12];
    v70 = v68[16];
    v71 = v68[20];
    v72 = v248;
    v73 = *(v248 + 32);
    v228 = (v248 + 32);
    v229 = v73;
    v74 = v250;
    (v73)(v249, v33, v250);
    v75 = v241;
    v76 = *(v241 + 4);
    v239 = v241 + 32;
    v240 = v76;
    (v76)(v238, &v33[v69], v243);
    v77 = *(v234 + 32);
    v226 = (v234 + 32);
    v227 = v77;
    v78 = &v33[v70];
    v79 = v231;
    v80 = v232;
    (v77)(v231, v78, v232);
    v81 = v237;
    v224 = *(v237 + 32);
    v225 = v237 + 32;
    v82 = &v33[v71];
    v83 = v246;
    v84 = v242;
    (v224)(v246, v82, v242);
    v233 = *(v251 + 32);
    v85 = v72;
    (*(v72 + 16))(v244, v249, v74);
    (*(v81 + 16))(v245, v83, v84);
    v86 = v234;
    (*(v234 + 16))(v230, v79, v80);
    v87 = v75;
    v88 = *(v75 + 2);
    v89 = v214;
    v88(v214, v238, v243);
    v90 = (*(v85 + 80) + 24) & ~*(v85 + 80);
    v91 = (v235 + *(v81 + 80) + v90) & ~*(v81 + 80);
    v92 = (v236 + *(v86 + 80) + v91) & ~*(v86 + 80);
    v93 = (v10 + v87[80] + v92) & ~v87[80];
    v94 = swift_allocObject();
    *(v94 + 16) = v251;
    v95 = v94 + v90;
    v96 = v250;
    (v229)(v95, v244, v250);
    v97 = v94 + v91;
    v98 = v242;
    (v224)(v97, v245, v242);
    v99 = v232;
    (v227)(v94 + v92, v230, v232);
    v100 = v243;
    (v240)(v94 + v93, v89, v243);

    sub_219BDD154();

    (*(v81 + 8))(v246, v98);
    (*(v234 + 8))(v231, v99);
    (*(v241 + 1))(v238, v100);
    return (*(v248 + 8))(v249, v96);
  }

  else
  {
    if (v34 == *MEMORY[0x277D2FA58])
    {
      (*(v31 + 96))(v33, v30);
      sub_21963C6E0();
      v102 = *(v101 + 48);
      v103 = *(v101 + 64);
      v104 = v249;
      v105 = *(v248 + 32);
      v239 = (v248 + 32);
      v241 = v105;
      v106 = v250;
      (v105)(v249, v33, v250);
      v107 = v227;
      v108 = *(v227 + 4);
      v240 = v227 + 32;
      v243 = v108;
      v109 = &v33[v102];
      v110 = v228;
      v108(v228, v109, v229);
      v111 = v237;
      v238 = *(v237 + 32);
      v112 = &v33[v103];
      v113 = v246;
      v114 = v242;
      (v238)(v246, v112, v242);
      v115 = v251;
      v247 = *(v251 + 32);
      v116 = v248;
      (*(v248 + 16))(v244, v104, v106);
      (*(v111 + 16))(v245, v113, v114);
      v117 = v226;
      v118 = v110;
      v119 = v229;
      (*(v107 + 2))(v226, v118, v229);
      v120 = (*(v116 + 80) + 24) & ~*(v116 + 80);
      v121 = (v235 + *(v111 + 80) + v120) & ~*(v111 + 80);
      v122 = (v236 + v107[80] + v121) & ~v107[80];
      v123 = swift_allocObject();
      *(v123 + 16) = v115;
      (v241)(v123 + v120, v244, v250);
      v124 = v123 + v121;
      v125 = v242;
      (v238)(v124, v245, v242);
      v243(v123 + v122, v117, v119);

      sub_219BDD154();

      (*(v111 + 8))(v246, v125);
      (*(v107 + 1))(v228, v119);
      return (*(v248 + 8))(v249, v250);
    }

    if (v34 == *MEMORY[0x277D2FA48])
    {
      (*(v31 + 96))(v33, v30);
      sub_21963C4B4(0);
      v127 = v126[12];
      v128 = v126[16];
      v129 = v126[20];
      v130 = v248;
      v131 = *(v248 + 32);
      v227 = (v248 + 32);
      v229 = v131;
      v132 = v249;
      v133 = v250;
      (v131)(v249, v33, v250);
      v134 = *(v241 + 4);
      v231 = v241 + 32;
      v232 = v134;
      v135 = v238;
      (v134)(v238, &v33[v127], v243);
      v136 = v240;
      sub_21963C604(&v33[v128], v240);
      v137 = v237;
      v228 = *(v237 + 32);
      v138 = &v33[v129];
      v139 = v246;
      v140 = v242;
      (v228)(v246, v138, v242);
      v230 = *(v251 + 32);
      (*(v130 + 16))(v244, v132, v133);
      v234 = MEMORY[0x277D2FCC8];
      sub_21963E064(v136, v239, &unk_280EE8D38, MEMORY[0x277D2FCC8]);
      (*(v137 + 16))(v245, v139, v140);
      v141 = v241;
      v142 = v214;
      v143 = v135;
      v144 = v243;
      (*(v241 + 2))(v214, v143, v243);
      v145 = (*(v130 + 80) + 24) & ~*(v130 + 80);
      v146 = (v235 + *(v233 + 80) + v145) & ~*(v233 + 80);
      v147 = (v17 + *(v137 + 80) + v146) & ~*(v137 + 80);
      v148 = (v236 + v141[80] + v147) & ~v141[80];
      v149 = swift_allocObject();
      *(v149 + 16) = v251;
      v150 = v149 + v145;
      v151 = v250;
      (v229)(v150, v244, v250);
      sub_21963C604(v239, v149 + v146);
      v152 = v242;
      (v228)(v149 + v147, v245, v242);
      (v232)(v149 + v148, v142, v144);

      sub_219BDD154();

      (*(v137 + 8))(v246, v152);
      sub_218745B8C(v240, &unk_280EE8D38, v234, MEMORY[0x277D83D88], sub_218748080);
      (*(v241 + 1))(v238, v144);
      return (*(v248 + 8))(v249, v151);
    }

    else if (v34 == *MEMORY[0x277D2FA50])
    {
      (*(v31 + 96))(v33, v30);
      sub_21963C1E8(0, &unk_280EE8D98, MEMORY[0x277D30020]);
      v154 = *(v153 + 48);
      v155 = v241;
      v249 = *(v241 + 4);
      v156 = v238;
      v157 = v243;
      (v249)(v238, v33, v243);
      v158 = v237;
      v248 = *(v237 + 32);
      v159 = &v33[v154];
      v160 = v246;
      v161 = v242;
      (v248)(v246, v159, v242);
      v162 = v251;
      v250 = *(v251 + 32);
      (*(v158 + 16))(v245, v160, v161);
      v163 = v214;
      (*(v155 + 2))(v214, v156, v157);
      v164 = (*(v158 + 80) + 24) & ~*(v158 + 80);
      v165 = (v236 + v155[80] + v164) & ~v155[80];
      v166 = swift_allocObject();
      *(v166 + 16) = v162;
      (v248)(v166 + v164, v245, v161);
      v167 = v243;
      (v249)(v166 + v165, v163, v243);

      sub_219BDD154();

      (*(v158 + 8))(v246, v161);
      return (*(v155 + 1))(v238, v167);
    }

    else
    {
      v168 = v251;
      v169 = v243;
      if (v34 == *MEMORY[0x277D2FA68])
      {
        (*(v31 + 96))(v33, v30);
        v170 = v217;
        v171 = *(v217 + 32);
        v172 = v223;
        v173 = v33;
        v174 = v218;
        v171(v223, v173, v218);
        v175 = v216;
        (*(v170 + 16))(v216, v172, v174);
        v176 = (*(v170 + 80) + 16) & ~*(v170 + 80);
        v177 = (v215 + v176 + 7) & 0xFFFFFFFFFFFFFFF8;
        v178 = v168;
        v179 = swift_allocObject();
        v171((v179 + v176), v175, v174);
        *(v179 + v177) = v178;

        sub_219BDD154();

        return (*(v170 + 8))(v223, v174);
      }

      else if (v34 == *MEMORY[0x277D2FA38])
      {
        (*(v31 + 96))(v33, v30);
        sub_21963C1E8(0, &qword_280EE8D90, MEMORY[0x277D2FD58]);
        v181 = *(v180 + 48);
        v182 = v241;
        v250 = *(v241 + 4);
        v183 = v238;
        (v250)(v238, v33, v169);
        v184 = v169;
        v185 = v220;
        v249 = *(v220 + 32);
        v186 = &v33[v181];
        v187 = v224;
        v188 = v222;
        (v249)(v224, v186, v222);
        v251 = *(v168 + 32);
        (*(v185 + 16))(v221, v187, v188);
        v189 = v214;
        (*(v182 + 2))(v214, v183, v184);
        v190 = (*(v185 + 80) + 16) & ~*(v185 + 80);
        v191 = (v219 + v182[80] + v190) & ~v182[80];
        v192 = swift_allocObject();
        (v249)(v192 + v190, v221, v188);
        (v250)(v192 + v191, v189, v184);
        sub_219BDD154();

        (*(v185 + 8))(v224, v188);
        return (*(v182 + 1))(v238, v184);
      }

      else
      {
        v193 = v241;
        v194 = v238;
        if (v34 == *MEMORY[0x277D2FA60])
        {
          (*(v31 + 96))(v33, v30);
          sub_21963C078();
          v196 = *(v195 + 48);
          v197 = *&v33[*(v195 + 64)];
          v249 = *(v193 + 4);
          v250 = v197;
          (v249)(v194, v33, v169);
          v198 = v220;
          v248 = *(v220 + 32);
          v199 = &v33[v196];
          v200 = v224;
          v201 = v222;
          (v248)(v224, v199, v222);
          v251 = *(v251 + 32);
          v202 = v221;
          (*(v198 + 16))(v221, v200, v201);
          (*(v193 + 2))(v214, v194, v169);
          v203 = (*(v198 + 80) + 16) & ~*(v198 + 80);
          v204 = (v219 + v203 + 7) & 0xFFFFFFFFFFFFFFF8;
          v205 = v193;
          v206 = v169;
          v207 = (v193[80] + v204 + 8) & ~v193[80];
          v208 = swift_allocObject();
          v209 = v208 + v203;
          v210 = v222;
          (v248)(v209, v202, v222);
          v211 = v250;
          *(v208 + v204) = v250;
          (v249)(v208 + v207, v214, v206);
          v212 = v211;
          sub_219BDD154();

          (*(v198 + 8))(v224, v210);
          return (*(v205 + 1))(v238, v206);
        }

        else
        {
          result = sub_219BF7514();
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t sub_219637294()
{
  v1 = sub_219BDD4F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BDF7E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_articleModel, v1);
  sub_219BDD4E4();
  (*(v2 + 8))(v4, v1);
  sub_219BDF7D4();
  sub_21963E0E4(&unk_280EE8670, MEMORY[0x277D2DD78]);
  sub_219BDD1F4();
  (*(v6 + 8))(v8, v5);
  sub_219BDFAD4();
  sub_21963E0E4(&qword_280EE85F8, MEMORY[0x277D2DF30]);
  sub_219BDD214();
  sub_219BE0A04();
  sub_21963E0E4(&unk_280EE8250, MEMORY[0x277D2E9E8]);
  return sub_219BDD214();
}

uint64_t sub_21963755C()
{
  sub_219BDFAD4();
  sub_21963E0E4(&qword_280EE85F8, MEMORY[0x277D2DF30]);
  return sub_219BDCC74();
}

uint64_t sub_2196375E4()
{
  v0 = sub_219BE1594();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getErrorValue();
  sub_219BF7A14();
  sub_21963E0E4(&qword_280EE7FC0, MEMORY[0x277D2F440]);
  sub_219BDCCC4();
  (*(v1 + 8))(v3, v0);
  sub_219BE0A04();
  sub_21963E0E4(&unk_280EE8250, MEMORY[0x277D2E9E8]);
  return sub_219BDCC34();
}

void *sub_21963779C(uint64_t a1)
{
  v28 = sub_219BDF3D4();
  v2 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_219BDF3C4();
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(sub_219BE4194() - 8);
    v10 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = *(v9 + 72);
    v21 = *MEMORY[0x277D2DA38];
    v11 = (v2 + 104);
    v23 = *MEMORY[0x277D2DA70];
    v25 = *MEMORY[0x277D2DA40];
    v20 = *MEMORY[0x277D2DA50];
    v22 = *MEMORY[0x277D2DA48];
    v24 = *MEMORY[0x277D2DA60];
    v19 = *MEMORY[0x277D2DA58];
    v12 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_219BE4174();
      v13 = sub_219BE4184();
      if (v13 > 2)
      {
        v14 = v25;
        if (v13 == 3)
        {
          goto LABEL_12;
        }

        v14 = v23;
        if (v13 == 4)
        {
          goto LABEL_12;
        }

        v14 = v21;
        if (v13 == 5)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v14 = v24;
        if (!v13)
        {
          goto LABEL_12;
        }

        v14 = v22;
        if (v13 == 1)
        {
          goto LABEL_12;
        }

        v14 = v20;
        if (v13 == 2)
        {
          goto LABEL_12;
        }
      }

      v14 = v19;
LABEL_12:
      (*v11)(v4, v14, v28);
      sub_219BDF3B4();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_2191F99D0(0, v12[2] + 1, 1, v12);
      }

      v16 = v12[2];
      v15 = v12[3];
      if (v16 >= v15 >> 1)
      {
        v12 = sub_2191F99D0(v15 > 1, v16 + 1, 1, v12);
      }

      v12[2] = v16 + 1;
      (*(v5 + 32))(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, v7, v27);
      v10 += v26;
      if (!--v8)
      {
        return v12;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_219637AF4()
{
  v1 = v0;
  v2 = sub_219BE0784();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDF6A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0[4];
  (*(v3 + 104))(v5, *MEMORY[0x277D2E7E0], v2);
  sub_219BDF694();
  sub_21963E0E4(&qword_27CC1D560, MEMORY[0x277D2DCA8]);
  sub_219BDD1F4();
  (*(v7 + 8))(v9, v6);
  v11 = v1[8];
  v12 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v11);
  return (*(v12 + 8))(v10, v11, v12);
}

uint64_t sub_219637D0C()
{
  sub_218774F78(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_articleModel;
  v2 = sub_219BDD4F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_218745B8C(v0 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_urlReferralData, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218748080);
  sub_219638D78(*(v0 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_activeExperiment), *(v0 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_activeExperiment + 8));
  return v0;
}

uint64_t sub_219637E70()
{
  sub_219637D0C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArticleCoordinator()
{
  result = qword_280ED42A8;
  if (!qword_280ED42A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219637F1C()
{
  sub_219BDD4F4();
  if (v0 <= 0x3F)
  {
    sub_218748080(319, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void (*sub_219638090(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_218963B4C;
}

uint64_t sub_2196381DC(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_21963E0E4(a4, a5);
  return sub_219BDD234();
}

uint64_t sub_2196382C4(uint64_t a1, void *a2)
{
  v4 = *v2;
  v5 = *(v4 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_lastScrollPosition);
  *(v4 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_lastScrollPosition) = a2;

  v6 = a2;
  return sub_21963089C();
}

uint64_t sub_219638338()
{
  v0 = sub_219BDBD34();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  sub_219BDBD24();
  (*(v1 + 16))(v4, v6, v0);
  v7 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v8 = swift_allocObject();
  (*(v1 + 32))(v8 + v7, v4, v0);
  sub_219BDD264();

  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_2196384B8(void *a1)
{
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  sub_219BDBD24();
  (*(v3 + 16))(v6, v8, v2);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  (*(v3 + 32))(v10 + v9, v6, v2);
  v11 = a1;
  sub_219BDD264();

  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_219638668(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  sub_218748080(0, &unk_280EE8200, MEMORY[0x277D2EB90], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_219BDF194();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDF184();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, *a3, v7);
  v15 = sub_219BE0BC4();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  sub_219BDF174();
  sub_21963E0E4(&qword_280EE8860, MEMORY[0x277D2D928]);
  sub_219BDD1F4();
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_219638904(uint64_t a1, uint64_t a2)
{
  sub_219634308(a2, a1);
  sub_219BDF184();
  sub_21963E0E4(&qword_280EE8860, MEMORY[0x277D2D928]);
  sub_219BDD1C4();
  return sub_219630108(a2, a1);
}

uint64_t sub_2196389B0(uint64_t a1)
{
  v2 = sub_219BE02A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21963779C(a1);
  sub_219BE0294();
  sub_21963E0E4(&qword_280EE8448, MEMORY[0x277D2E440]);
  sub_219BDD1F4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_219638AF4()
{
  v0 = sub_219BE0784();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDF6A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277D2E7E0], v0);
  sub_219BDF694();
  sub_21963E0E4(&qword_27CC1D560, MEMORY[0x277D2DCA8]);
  sub_219BDD1F4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219638CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*v4 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_activeExperiment);
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;

  return sub_219638D78(v6, v7);
}

uint64_t sub_219638D78(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_219638DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v50 = a2;
  v58 = a1;
  v54 = sub_219BDBD34();
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v51 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE03F4();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v41 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v42 = v38 - v7;
  v8 = sub_219BDF5C4();
  v9 = *(v8 - 8);
  v48 = v8;
  v49 = v9;
  MEMORY[0x28223BE20](v8);
  v47 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDF984();
  v46 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDF974();
  sub_218748080(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v57 = v14;
  v15 = sub_219BDCD44();
  v45 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = *(v16 + 80);
  v19 = swift_allocObject();
  v55 = xmmword_219C09BA0;
  *(v19 + 16) = xmmword_219C09BA0;
  v20 = *MEMORY[0x277CEAD18];
  v21 = *(v16 + 104);
  v21(v19 + ((v18 + 32) & ~v18), v20, v15);
  v56 = "activeExperiment";
  sub_21963E0E4(&qword_280EE8620, MEMORY[0x277D2DEC0]);
  sub_219BDCCC4();

  (*(v46 + 8))(v13, v11);
  v22 = v47;
  sub_219BDF5B4();
  v46 = v17;
  v40 = v18;
  v23 = (v18 + 32) & ~v18;
  v24 = v16 + 104;
  v25 = v45;
  v26 = swift_allocObject();
  *(v26 + 16) = v55;
  v39 = v20;
  v38[1] = v24;
  v21(v26 + v23, v20, v25);
  sub_21963E0E4(&qword_280EE8738, MEMORY[0x277D2DB88]);
  v27 = v22;
  v28 = v48;
  sub_219BDCCC4();

  (*(v49 + 8))(v27, v28);
  if (*(v50 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_activeExperiment + 8))
  {

    v29 = v41;
    sub_219BE03E4();
    v31 = v43;
    v30 = v44;
    v32 = v42;
    (*(v43 + 32))(v42, v29, v44);
    v33 = swift_allocObject();
    *(v33 + 16) = v55;
    v21(v33 + v23, v39, v25);
    sub_21963E0E4(&qword_27CC1D568, MEMORY[0x277D2E510]);
    sub_219BDCCC4();

    (*(v31 + 8))(v32, v30);
  }

  sub_219BE0194();
  v34 = v51;
  sub_219BDDB24();
  sub_21963E0E4(&qword_280EE8490, MEMORY[0x277D2E388]);
  sub_219BDCC64();
  v35 = *(v52 + 8);
  v36 = v54;
  v35(v34, v54);
  sub_219BDDB14();
  sub_219BDCC74();
  return (v35)(v34, v36);
}

uint64_t sub_2196394DC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v58 = a6;
  v55 = a5;
  v51 = a4;
  v48 = a3;
  v7 = sub_219BDBD34();
  v59 = *(v7 - 8);
  v60 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDE374();
  v53 = *(v10 - 8);
  v54 = v10;
  MEMORY[0x28223BE20](v10);
  v52 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE0464();
  v13 = *(v12 - 8);
  v56 = v12;
  v57 = v13;
  MEMORY[0x28223BE20](v12);
  v49 = MEMORY[0x277D30020];
  v50 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x277D83D88];
  sub_218748080(0, &qword_280EE8C38, MEMORY[0x277D30020], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v45 - v17;
  v47 = MEMORY[0x277D2FC38];
  sub_218748080(0, &unk_280EE8D80, MEMORY[0x277D2FC38], v15);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v45 - v20;
  v46 = MEMORY[0x277D2FCC8];
  sub_218748080(0, &unk_280EE8D38, MEMORY[0x277D2FCC8], v15);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v45 - v23;
  v25 = MEMORY[0x277D2FC00];
  sub_218748080(0, &qword_280EE8DB8, MEMORY[0x277D2FC00], v15);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v45 - v27;
  v29 = sub_219BDDAF4();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v28, v48, v29);
  (*(v30 + 56))(v28, 0, 1, v29);
  v31 = sub_219BDDCA4();
  (*(*(v31 - 8) + 56))(v24, 1, 1, v31);
  v32 = sub_219BDDB34();
  (*(*(v32 - 8) + 56))(v21, 1, 1, v32);
  v33 = sub_219BDE524();
  v34 = *(v33 - 8);
  (*(v34 + 16))(v18, v51, v33);
  (*(v34 + 56))(v18, 0, 1, v33);
  sub_21963D204(a1, v28, v24, v21, v18);
  sub_218745B8C(v18, &qword_280EE8C38, v49, v15, sub_218748080);
  sub_218745B8C(v21, &unk_280EE8D80, v47, v15, sub_218748080);
  sub_218745B8C(v24, &unk_280EE8D38, v46, v15, sub_218748080);
  sub_218745B8C(v28, &qword_280EE8DB8, v25, v15, sub_218748080);
  v35 = v52;
  (*(v53 + 16))(v52, v55, v54);
  v36 = v50;
  sub_218977448(v35, v50);
  sub_218748080(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v37 = sub_219BDCD44();
  v38 = *(v37 - 8);
  v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_219C09BA0;
  (*(v38 + 104))(v40 + v39, *MEMORY[0x277CEAD18], v37);
  sub_21963E0E4(&qword_27CC1D5A0, MEMORY[0x277D2E540]);
  v41 = v56;
  sub_219BDCCC4();

  (*(v57 + 8))(v36, v41);
  sub_219BDFD44();
  sub_219BDDB24();
  sub_21963E0E4(&qword_27CC1D5A8, MEMORY[0x277D2E0A8]);
  sub_219BDCC64();
  v42 = v60;
  v43 = *(v59 + 8);
  v43(v9, v60);
  sub_219BDDB14();
  sub_219BDCC74();
  return (v43)(v9, v42);
}

uint64_t sub_219639CA8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a5;
  v58 = a1;
  v54 = a4;
  v52 = a3;
  v5 = sub_219BDFFD4();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDEB34();
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE1084();
  v49 = *(v10 - 8);
  v50 = v10;
  MEMORY[0x28223BE20](v10);
  v48 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x277D30020];
  v12 = MEMORY[0x277D83D88];
  sub_218748080(0, &qword_280EE8C38, MEMORY[0x277D30020], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v45 - v14;
  v51 = MEMORY[0x277D2FC38];
  sub_218748080(0, &unk_280EE8D80, MEMORY[0x277D2FC38], v12);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v45 - v17;
  v19 = MEMORY[0x277D2FCC8];
  sub_218748080(0, &unk_280EE8D38, MEMORY[0x277D2FCC8], v12);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v45 - v21;
  v23 = MEMORY[0x277D2FC00];
  sub_218748080(0, &qword_280EE8DB8, MEMORY[0x277D2FC00], v12);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v45 - v25;
  v27 = sub_219BDDAF4();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v26, v52, v27);
  (*(v28 + 56))(v26, 0, 1, v27);
  v29 = sub_219BDDCA4();
  (*(*(v29 - 8) + 56))(v22, 1, 1, v29);
  v30 = sub_219BDDB34();
  (*(*(v30 - 8) + 56))(v18, 1, 1, v30);
  v31 = sub_219BDE524();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v15, v54, v31);
  (*(v32 + 56))(v15, 0, 1, v31);
  sub_21963D204(v58, v26, v22, v18, v15);
  sub_218745B8C(v15, &qword_280EE8C38, v53, v12, sub_218748080);
  sub_218745B8C(v18, &unk_280EE8D80, v51, v12, sub_218748080);
  sub_218745B8C(v22, &unk_280EE8D38, v19, v12, sub_218748080);
  v33 = v26;
  v34 = v23;
  v36 = v55;
  v35 = v56;
  sub_218745B8C(v33, &qword_280EE8DB8, v34, v12, sub_218748080);
  (*(v36 + 16))(v9, v57, v35);
  result = sub_219BDEB24();
  if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v38 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v38 < 9.22337204e18)
  {
    (*(v46 + 104))(v45, *MEMORY[0x277D2E2B0], v47);
    v39 = v48;
    sub_219BE1074();
    (*(v36 + 8))(v9, v35);
    sub_218748080(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v40 = sub_219BDCD44();
    v41 = *(v40 - 8);
    v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_219C09BA0;
    (*(v41 + 104))(v43 + v42, *MEMORY[0x277CEAD18], v40);
    sub_21963E0E4(&qword_27CC1D5B0, MEMORY[0x277D2EEC0]);
    v44 = v50;
    sub_219BDCCC4();

    (*(v49 + 8))(v39, v44);
    sub_219BE0B74();
    sub_21963E0E4(&unk_27CC1D5B8, MEMORY[0x277D2EB70]);
    memset(v59, 0, sizeof(v59));
    sub_219BDCCE4();
    return sub_218745B8C(v59, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186D0DDC);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_21963A4E0(char *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, void (*a7)(void), unint64_t *a8, void (*a9)(uint64_t), uint64_t a10)
{
  v39 = a7;
  v40 = a6;
  v36 = a5;
  v37 = a1;
  v38 = a4;
  v34 = a3;
  v42 = a9;
  v43 = a8;
  v41 = a10;
  v44 = sub_219BDBD34();
  v10 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x277D30020];
  v13 = MEMORY[0x277D83D88];
  sub_218748080(0, &qword_280EE8C38, MEMORY[0x277D30020], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v33 - v15;
  v17 = MEMORY[0x277D2FC38];
  sub_218748080(0, &unk_280EE8D80, MEMORY[0x277D2FC38], v13);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v33 - v19;
  v21 = MEMORY[0x277D2FC00];
  sub_218748080(0, &qword_280EE8DB8, MEMORY[0x277D2FC00], v13);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v33 - v23;
  v25 = sub_219BDDAF4();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v24, v34, v25);
  (*(v26 + 56))(v24, 0, 1, v25);
  v27 = sub_219BDDB34();
  (*(*(v27 - 8) + 56))(v20, 1, 1, v27);
  v28 = sub_219BDE524();
  v29 = *(v28 - 8);
  (*(v29 + 16))(v16, v36, v28);
  (*(v29 + 56))(v16, 0, 1, v28);
  sub_21963D204(v37, v24, v38, v20, v16);
  sub_218745B8C(v16, &qword_280EE8C38, v35, v13, sub_218748080);
  sub_218745B8C(v20, &unk_280EE8D80, v17, v13, sub_218748080);
  sub_218745B8C(v24, &qword_280EE8DB8, v21, v13, sub_218748080);
  v39(0);
  sub_219BDDB24();
  sub_21963E0E4(v43, v42);
  sub_219BDCC64();
  v30 = *(v10 + 8);
  v31 = v44;
  v30(v12, v44);
  sub_219BDDB14();
  sub_219BDCC74();
  return (v30)(v12, v31);
}

uint64_t sub_21963A948(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a1;
  v35 = a4;
  v33 = a3;
  v4 = sub_219BDBD34();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x277D30020];
  v7 = MEMORY[0x277D83D88];
  sub_218748080(0, &qword_280EE8C38, MEMORY[0x277D30020], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v31 = MEMORY[0x277D2FC38];
  sub_218748080(0, &unk_280EE8D80, MEMORY[0x277D2FC38], v7);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - v12;
  v14 = MEMORY[0x277D2FCC8];
  sub_218748080(0, &unk_280EE8D38, MEMORY[0x277D2FCC8], v7);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v30 - v16;
  v18 = MEMORY[0x277D2FC00];
  sub_218748080(0, &qword_280EE8DB8, MEMORY[0x277D2FC00], v7);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v30 - v20;
  v22 = sub_219BDDAF4();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  v23 = sub_219BDDCA4();
  (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  v24 = sub_219BDDB34();
  (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
  v25 = sub_219BDE524();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v10, v33, v25);
  (*(v26 + 56))(v10, 0, 1, v25);
  sub_21963D204(v34, v21, v17, v13, v10);
  sub_218745B8C(v10, &qword_280EE8C38, v32, v7, sub_218748080);
  sub_218745B8C(v13, &unk_280EE8D80, v31, v7, sub_218748080);
  sub_218745B8C(v17, &unk_280EE8D38, v14, v7, sub_218748080);
  sub_218745B8C(v21, &qword_280EE8DB8, v18, v7, sub_218748080);
  sub_219BE0C14();
  sub_219BDDB24();
  sub_21963E0E4(&unk_280EE81C8, MEMORY[0x277D2EBC0]);
  sub_219BDCC64();
  v27 = v37;
  v28 = *(v36 + 8);
  v28(v6, v37);
  sub_219BDDB14();
  sub_219BDCC74();
  return (v28)(v6, v27);
}

uint64_t sub_21963AE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v36 = a1;
  v3 = sub_219BE03F4();
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v31 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v32 = &v26 - v6;
  v7 = sub_219BDB954();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE1464();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDD864();
  sub_219BDB804();
  (*(v8 + 8))(v10, v7);
  sub_219BDD874();
  sub_219BE1454();
  sub_218748080(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v15 = sub_219BDCD44();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v29 = *(v16 + 72);
  v18 = swift_allocObject();
  v26 = xmmword_219C09BA0;
  *(v18 + 16) = xmmword_219C09BA0;
  v19 = *(v16 + 104);
  v28 = *MEMORY[0x277CEAD18];
  v27 = v19;
  v19(v18 + v17);
  sub_21963E0E4(&qword_280EE8020, MEMORY[0x277D2F270]);
  v30 = "activeExperiment";
  sub_219BDCCC4();

  (*(v12 + 8))(v14, v11);
  if (*(v35 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_activeExperiment + 8))
  {

    v20 = v31;
    sub_219BE03E4();
    v22 = v32;
    v21 = v33;
    v23 = v34;
    (*(v33 + 32))(v32, v20, v34);
    v24 = swift_allocObject();
    *(v24 + 16) = v26;
    v27(v24 + v17, v28, v15);
    sub_21963E0E4(&qword_27CC1D568, MEMORY[0x277D2E510]);
    sub_219BDCCC4();

    (*(v21 + 8))(v22, v23);
  }

  sub_219BE0384();
  sub_21963E0E4(&unk_27CC1D5C8, MEMORY[0x277D2E4E0]);
  memset(v37, 0, sizeof(v37));
  sub_219BDCCE4();
  return sub_218745B8C(v37, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186D0DDC);
}

uint64_t sub_21963B3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[1] = a1;
  v21[2] = a3;
  v22 = sub_219BDBD34();
  v3 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDB954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDF464();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDDDB4();
  sub_219BDB804();
  (*(v7 + 8))(v9, v6);
  sub_219BDF454();
  sub_218748080(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v14 = sub_219BDCD44();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_219C09BA0;
  (*(v15 + 104))(v17 + v16, *MEMORY[0x277CEAD18], v14);
  sub_21963E0E4(&qword_280EE87C0, MEMORY[0x277D2DAA8]);
  sub_219BDCCC4();

  (*(v11 + 8))(v13, v10);
  sub_219BE00D4();
  sub_219BDDB24();
  sub_21963E0E4(&qword_280EE84B8, MEMORY[0x277D2E338]);
  sub_219BDCC64();
  v18 = *(v3 + 8);
  v19 = v22;
  v18(v5, v22);
  sub_219BDDB14();
  sub_219BDCC74();
  return (v18)(v5, v19);
}

uint64_t sub_21963B7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v27[1] = a1;
  v27[2] = a3;
  v4 = sub_219BDBD34();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE1594();
  v8 = *(v7 - 8);
  v28 = v7;
  v29 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDB954();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDF464();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDDDB4();
  sub_219BDB804();
  (*(v12 + 8))(v14, v11);
  sub_219BDF454();
  sub_218748080(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v19 = sub_219BDCD44();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_219C09BA0;
  (*(v20 + 104))(v22 + v21, *MEMORY[0x277CEAD18], v19);
  sub_21963E0E4(&qword_280EE87C0, MEMORY[0x277D2DAA8]);
  sub_219BDCCC4();

  (*(v16 + 8))(v18, v15);
  swift_getErrorValue();
  sub_219BF7A14();
  sub_21963E0E4(&qword_280EE7FC0, MEMORY[0x277D2F440]);
  v23 = v28;
  sub_219BDCCC4();
  (*(v29 + 8))(v10, v23);
  sub_219BE0C04();
  sub_219BDDB24();
  sub_21963E0E4(&unk_280EE81E0, MEMORY[0x277D2EBA8]);
  sub_219BDCC64();
  v24 = v32;
  v25 = *(v31 + 8);
  v25(v6, v32);
  sub_219BDDB14();
  sub_219BDCC74();
  return (v25)(v6, v24);
}

uint64_t sub_21963BD38(uint64_t a1)
{
  v3 = *(sub_219BDEE04() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_219BDD6C4() - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_219BDF074() - 8);
  v11 = *(v1 + v5);
  v12 = *(v1 + v6);
  v13 = v1 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));
  v14 = *(v13 + *(v10 + 64));

  return sub_219631854(a1, v1 + v4, v11, v12, v1 + v8, v13, v14);
}

uint64_t sub_21963BEB4(uint64_t a1)
{
  v3 = *(sub_219BDEE04() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BDD6C4() - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2196345A0(a1, v7, v8, v1 + v4, v9);
}

uint64_t sub_21963BF94()
{
  sub_219BDBD34();

  return sub_2196375E4();
}

uint64_t sub_21963C008()
{
  sub_219BDBD34();

  return sub_21963755C();
}

void sub_21963C078()
{
  if (!qword_27CC1D570)
  {
    sub_219BDDB34();
    sub_219BDDDC4();
    sub_218A450F0();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC1D570);
    }
  }
}

uint64_t sub_21963C104(uint64_t a1)
{
  v3 = *(sub_219BDDDC4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_219BDDB34() - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_21963B7F8(a1, v1 + v4, v7, v8);
}

void sub_21963C1E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_219BDDB34();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_21963C26C(uint64_t a1)
{
  v3 = *(sub_219BDDDC4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BDDB34() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_21963B3D4(a1, v1 + v4, v7);
}

uint64_t sub_21963C340(uint64_t a1)
{
  v3 = *(sub_219BDD884() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21963AE4C(a1, v1 + v4, v5);
}

uint64_t sub_21963C3DC(char *a1)
{
  v3 = *(sub_219BDE524() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BDDB34() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_21963A948(a1, v7, v1 + v4, v8);
}

void sub_21963C4B4(uint64_t a1)
{
  if (!qword_280EE8DC0)
  {
    MEMORY[0x28223BE20](a1);
    sub_219BDDAF4();
    sub_219BDDB34();
    sub_218748080(255, &unk_280EE8D38, MEMORY[0x277D2FCC8], MEMORY[0x277D83D88]);
    sub_219BDE524();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_280EE8DC0);
    }
  }
}

uint64_t sub_21963C604(uint64_t a1, uint64_t a2)
{
  sub_218748080(0, &unk_280EE8D38, MEMORY[0x277D2FCC8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21963C6E0()
{
  if (!qword_27CC1D578)
  {
    sub_219BDDAF4();
    sub_219BDEB34();
    sub_219BDE524();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC1D578);
    }
  }
}

uint64_t sub_21963C76C(char *a1)
{
  v3 = *(sub_219BDDAF4() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BDE524() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_219BDEB34() - 8);
  v10 = *(v1 + 16);
  v11 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_219639CA8(a1, v10, v1 + v4, v1 + v7, v11);
}

void sub_21963C8A8(uint64_t a1)
{
  if (!qword_27CC1D580)
  {
    MEMORY[0x28223BE20](a1);
    sub_219BDDAF4();
    sub_219BDDB34();
    sub_219BDE374();
    sub_219BDE524();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27CC1D580);
    }
  }
}

uint64_t sub_21963C9C8(char *a1)
{
  v3 = *(sub_219BDDAF4() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BDE524() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_219BDE374() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_219BDDB34() - 8);
  v13 = *(v1 + 16);
  v14 = v1 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_2196394DC(a1, v13, v1 + v4, v1 + v7, v1 + v10, v14);
}

uint64_t objectdestroy_28Tm_0()
{
  v1 = sub_219BDDAF4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  sub_218748080(0, &unk_280EE8D38, MEMORY[0x277D2FCC8], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v4 + v6) & ~v6;
  v19 = *(*(v5 - 8) + 64);
  v20 = sub_219BDE524();
  v8 = *(v20 - 8);
  v9 = *(v8 + 80);
  v17 = *(v8 + 64);
  v18 = sub_219BDDB34();
  v10 = *(v18 - 8);
  v11 = *(v10 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  v12 = sub_219BDDCA4();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v7, 1, v12))
  {
    (*(v13 + 8))(v0 + v7, v12);
  }

  v14 = (v7 + v19 + v9) & ~v9;
  v15 = (v14 + v17 + v11) & ~v11;
  (*(v8 + 8))(v0 + v14, v20);
  (*(v10 + 8))(v0 + v15, v18);

  return swift_deallocObject();
}

uint64_t sub_21963CE94(char *a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v11 = *(sub_219BDDAF4() - 8);
  v12 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v13 = v12 + *(v11 + 64);
  sub_218748080(0, &unk_280EE8D38, MEMORY[0x277D2FCC8], MEMORY[0x277D83D88]);
  v15 = (v13 + *(*(v14 - 8) + 80)) & ~*(*(v14 - 8) + 80);
  v16 = *(*(v14 - 8) + 64);
  v17 = *(sub_219BDE524() - 8);
  v18 = (v15 + v16 + *(v17 + 80)) & ~*(v17 + 80);
  v19 = *(v17 + 64);
  v20 = *(sub_219BDDB34() - 8);
  return sub_21963A4E0(a1, *(v5 + 16), v5 + v12, (v5 + v15), v5 + v18, v5 + ((v18 + v19 + *(v20 + 80)) & ~*(v20 + 80)), a2, a3, a4, a5);
}

void sub_21963D084(uint64_t a1)
{
  if (!qword_280EE8DA8)
  {
    MEMORY[0x28223BE20](a1);
    sub_219BDDB34();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_280EE8DA8);
    }
  }
}

uint64_t sub_21963D188(uint64_t a1)
{
  v3 = *(sub_219BDDB34() - 8);
  v4 = *(v1 + 40);
  v5 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_219638DBC(a1, v4, v5);
}

uint64_t sub_21963D204(char *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v104 = a5;
  v99 = a3;
  v101 = a2;
  v6 = sub_219BDFA94();
  v93 = *(v6 - 8);
  v94 = v6;
  MEMORY[0x28223BE20](v6);
  v92 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_218748080(0, &qword_280EE8C38, MEMORY[0x277D30020], MEMORY[0x277D83D88]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v91 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v90 = &v80 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v89 = &v80 - v15;
  MEMORY[0x28223BE20](v14);
  v103 = &v80 - v16;
  v17 = sub_219BDF154();
  v87 = *(v17 - 8);
  v88 = v17;
  MEMORY[0x28223BE20](v17);
  v86 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218748080(0, &unk_280EE8D38, MEMORY[0x277D2FCC8], v8);
  MEMORY[0x28223BE20](v19 - 8);
  v97 = &v80 - v20;
  v98 = sub_219BDDCA4();
  v100 = *(v98 - 8);
  v21 = MEMORY[0x28223BE20](v98);
  v85 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v95 = &v80 - v23;
  v24 = sub_219BE1744();
  v96 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x277D2FC00];
  sub_218748080(0, &qword_280EE8DB8, MEMORY[0x277D2FC00], v8);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v80 - v29;
  v31 = sub_219BDDAF4();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v80 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v102 = &v80 - v36;
  sub_21963E064(v101, v30, &qword_280EE8DB8, v27);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_218745B8C(v30, &qword_280EE8DB8, MEMORY[0x277D2FC00], MEMORY[0x277D83D88], sub_218748080);
  }

  else
  {
    v37 = v102;
    (*(v32 + 32))(v102, v30, v31);
    (*(v32 + 16))(v35, v37, v31);
    sub_219BA9AE0(v35);
    sub_218748080(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v39 = v38;
    v40 = sub_219BDCD44();
    v41 = *(v40 - 8);
    v42 = a1;
    v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v83 = *(v41 + 72);
    v84 = v39;
    v44 = swift_allocObject();
    v82 = xmmword_219C09BA0;
    *(v44 + 16) = xmmword_219C09BA0;
    v45 = *(v41 + 104);
    v81 = *MEMORY[0x277CEAD18];
    v101 = v40;
    v80 = v45;
    v45(v44 + v43);
    sub_21963E0E4(&qword_280EE7F50, MEMORY[0x277D2F8B0]);
    sub_219BDCCC4();

    (*(v96 + 8))(v26, v24);
    v46 = v97;
    sub_21963E064(v99, v97, &unk_280EE8D38, MEMORY[0x277D2FCC8]);
    v47 = v98;
    if ((*(v100 + 48))(v46, 1, v98) == 1)
    {
      (*(v32 + 8))(v102, v31);
      sub_218745B8C(v46, &unk_280EE8D38, MEMORY[0x277D2FCC8], MEMORY[0x277D83D88], sub_218748080);
    }

    else
    {
      v48 = v95;
      v99 = "activeExperiment";
      v49 = v100;
      (*(v100 + 32))(v95, v46, v47);
      v50 = v85;
      (*(v49 + 16))(v85, v48, v47);
      v51 = v86;
      sub_218ADE16C(v50);
      v52 = swift_allocObject();
      *(v52 + 16) = v82;
      v80(v52 + v43, v81, v101);
      sub_21963E0E4(&unk_280EE8868, MEMORY[0x277D2D900]);
      v53 = v88;
      sub_219BDCCC4();

      (*(v87 + 8))(v51, v53);
      (*(v49 + 8))(v95, v47);
      (*(v32 + 8))(v102, v31);
    }

    a1 = v42;
  }

  v54 = v103;
  v55 = v104;
  sub_21963E064(v104, v103, &qword_280EE8C38, MEMORY[0x277D30020]);
  v56 = sub_219BDE524();
  v57 = *(v56 - 8);
  v58 = *(v57 + 48);
  if (v58(v54, 1, v56) == 1)
  {
    return sub_218745B8C(v54, &qword_280EE8C38, MEMORY[0x277D30020], MEMORY[0x277D83D88], sub_218748080);
  }

  v102 = a1;
  v60 = sub_219BDE514();
  v62 = v61;
  v63 = *(v57 + 8);
  result = v63(v54, v56);
  if (v62)
  {
    v103 = v60;
    v64 = v89;
    sub_21963E064(v55, v89, &qword_280EE8C38, MEMORY[0x277D30020]);
    if (v58(v64, 1, v56) == 1)
    {
      sub_218745B8C(v64, &qword_280EE8C38, MEMORY[0x277D30020], MEMORY[0x277D83D88], sub_218748080);
      v65 = v90;
    }

    else
    {
      v66 = sub_219BDE504();
      v68 = v67;
      v63(v64, v56);
      v65 = v90;
      if (v68)
      {
        goto LABEL_14;
      }
    }

    v66 = 0;
LABEL_14:
    v101 = v66;
    sub_21963E064(v55, v65, &qword_280EE8C38, MEMORY[0x277D30020]);
    if (v58(v65, 1, v56) == 1)
    {
      sub_218745B8C(v65, &qword_280EE8C38, MEMORY[0x277D30020], MEMORY[0x277D83D88], sub_218748080);
      v69 = v91;
    }

    else
    {
      sub_219BDE4E4();
      v71 = v70;
      v63(v65, v56);
      v69 = v91;
      if (v71)
      {
        goto LABEL_18;
      }
    }

LABEL_18:
    sub_21963E064(v104, v69, &qword_280EE8C38, MEMORY[0x277D30020]);
    if (v58(v69, 1, v56) == 1)
    {
      sub_218745B8C(v69, &qword_280EE8C38, MEMORY[0x277D30020], MEMORY[0x277D83D88], sub_218748080);
    }

    else
    {
      sub_219BDE4F4();
      v73 = v72;
      v63(v69, v56);
      if (v73)
      {
LABEL_22:
        v74 = v92;
        sub_219BDFA84();
        sub_218748080(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v75 = sub_219BDCD44();
        v76 = *(v75 - 8);
        v77 = (*(v76 + 80) + 32) & ~*(v76 + 80);
        v78 = swift_allocObject();
        *(v78 + 16) = xmmword_219C09BA0;
        (*(v76 + 104))(v78 + v77, *MEMORY[0x277CEAD18], v75);
        sub_21963E0E4(&qword_280EE8608, MEMORY[0x277D2DF00]);
        v79 = v94;
        sub_219BDCCC4();

        return (*(v93 + 8))(v74, v79);
      }
    }

    goto LABEL_22;
  }

  return result;
}

uint64_t sub_21963E064(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_218748080(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21963E0E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21963E12C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_21963E150, 0, 0);
}

uint64_t sub_21963E150()
{
  v1 = type metadata accessor for SuggestionTodayFeedGroupEmitterCursor();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v2[1] = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_21963E23C;

  return MEMORY[0x282190858](v0 + 16, v1, &unk_219C94CC8, v2, v1);
}

uint64_t sub_21963E23C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_21963E604;
  }

  else
  {

    v2 = sub_21963E358;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21963E358()
{
  v1 = v0[9];
  v2 = v0[2];
  v0[10] = v2;
  sub_219BEF164();
  if (v1)
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[3];
    v0[11] = v5;

    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_21963E47C;
    v7 = v0[5];
    v8 = v0[4];

    return sub_21963F41C(v8, v7, v5, v2);
  }
}

uint64_t sub_21963E47C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_21963E668;
  }

  else
  {

    v2 = sub_21963E5A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21963E5A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21963E604()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21963E668()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21963E6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_218D42644;

  return sub_21963E778(a3);
}

uint64_t sub_21963E778(uint64_t a1)
{
  v2[201] = v1;
  v2[195] = a1;
  v2[207] = sub_219BE1BF4();
  v2[208] = swift_task_alloc();
  v3 = sub_219BEEF54();
  v2[209] = v3;
  v4 = *(v3 - 8);
  v2[210] = v4;
  v2[211] = *(v4 + 64);
  v2[212] = swift_task_alloc();
  v2[213] = swift_task_alloc();
  v2[214] = swift_task_alloc();
  v5 = sub_219BF00A4();
  v2[215] = v5;
  v2[216] = *(v5 - 8);
  v2[217] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21963E8E8, 0, 0);
}

uint64_t sub_21963E8E8()
{
  sub_219BEF164();
  v1 = v0[201];
  v2 = v0[195];
  v0[218] = v0[171];
  v3 = swift_allocObject();
  v0[219] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  sub_2186E2394();
  swift_asyncLet_begin();

  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 82, v0 + 167, sub_21963EA90, v0 + 162);
}

uint64_t sub_21963EA90()
{
  v1[220] = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21963F2E8, 0, 0);
  }

  else
  {
    v1[221] = v1[167];
    v2 = v1[168];
    v1[222] = v2;
    v1[223] = v1[169];
    v1[224] = v1[170];

    v3 = v2;

    return MEMORY[0x282200928](v1 + 2, v1 + 177, sub_21963EB78, v1 + 184);
  }
}

uint64_t sub_21963EB94()
{
  v1 = v0[223];
  v2 = v0[222];
  v3 = v0[221];
  v4 = v0[218];
  v5 = v0[217];
  v6 = v0[195];
  v7 = v0[177];

  sub_2196437D4(v6, v4, v3, v2, v1, v7, v5);

  v8 = sub_219BF0094();
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v0[211];
    v11 = v0[210];
    v40 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v12 = *(v11 + 16);
    v11 += 16;
    v30 = v12;
    v13 = *(v11 + 64);
    v14 = v8 + ((v13 + 32) & ~v13);
    v29 = *(v11 + 56);
    v37 = (v13 + 24) & ~v13;
    v36 = (v11 + 16);
    v27 = (v11 - 8);
    v28 = (v37 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v39 = v14;
      v35 = v9;
      v15 = v0[214];
      v38 = v15;
      v16 = v0[213];
      v34 = v16;
      v17 = v0[212];
      v18 = v0[209];
      v19 = v0[201];
      v33 = v0[195];
      v30(v15, v14, v18);
      v30(v16, v15, v18);
      v30(v17, v15, v18);
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      v31 = *v36;
      (*v36)(v20 + v37, v17, v18);
      v0[183] = MEMORY[0x277D84F90];
      sub_219645910(&qword_280EE7E70, MEMORY[0x277D6CA70]);
      sub_2186D8DC4(0, &qword_280E8F610, MEMORY[0x277D6CA70], MEMORY[0x277D83940]);
      sub_218711654();

      sub_219BF7164();
      v21 = MEMORY[0x277D6CEE8];
      sub_2186D8DC4(0, &unk_280EE7120, sub_2196464F0, MEMORY[0x277D6CEE8]);
      swift_allocObject();
      v32 = sub_219BE2D14();
      v30(v17, v15, v18);
      v22 = swift_allocObject();
      *(v22 + 16) = v19;
      v31(v22 + v37, v17, v18);
      *(v22 + v28) = v33;
      v0[189] = MEMORY[0x277D84F90];

      sub_219BF7164();
      sub_2186D8DC4(0, &qword_280EE7130, sub_219646620, v21);
      swift_allocObject();
      v23 = sub_219BE2D14();
      (*v27)(v38, v18);
      type metadata accessor for SuggestionTodayFeedGroupEmitterCursor.Suggestion();
      v24 = swift_allocObject();
      v31(v24 + OBJC_IVAR____TtCC7NewsUI237SuggestionTodayFeedGroupEmitterCursor10Suggestion_cluster, v34, v18);
      *(v24 + OBJC_IVAR____TtCC7NewsUI237SuggestionTodayFeedGroupEmitterCursor10Suggestion_tag) = v32;
      *(v24 + OBJC_IVAR____TtCC7NewsUI237SuggestionTodayFeedGroupEmitterCursor10Suggestion_headlines) = v23;
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v14 = v39 + v29;
      v9 = v35 - 1;
    }

    while (v35 != 1);

    v25 = v40;
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  v0[225] = v25;

  return MEMORY[0x282200928](v0 + 2, v0 + 177, sub_21963F104, v0 + 190);
}

uint64_t sub_21963F120()
{
  v1 = v0[225];
  (*(v0[216] + 8))(v0[217], v0[215]);
  v2 = v0[177];
  type metadata accessor for SuggestionTodayFeedGroupEmitterCursor();
  v3 = swift_allocObject();
  v0[226] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  return MEMORY[0x282200920](v0 + 82, v0 + 167, sub_21963F1CC, v0 + 196);
}

uint64_t sub_21963F224()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 1808);

  return v1(v2);
}

uint64_t sub_21963F360()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21963F41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[211] = v4;
  v5[205] = a4;
  v5[199] = a3;
  v5[193] = a2;
  v5[187] = a1;
  type metadata accessor for TodayFeedGroup();
  v5[217] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21963F4BC, 0, 0);
}

uint64_t sub_21963F4BC()
{
  if (!v0[205])
  {
    v23 = sub_219BEEDD4();
    sub_219645910(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D323C8], v23);
    swift_willThrow();
LABEL_28:

    v28 = v0[1];

    return v28();
  }

  sub_219BEF0A4();
  type metadata accessor for TodayFeedServiceConfig();
  sub_2187DF448();
  v1 = sub_219BEDC44();

  v2 = sub_218987DF8(v1);
  v4 = v3;

  v0[223] = v2;
  v0[229] = v4;
  if (!v2)
  {
    v26 = sub_219BEEDD4();
    sub_219645910(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D32390], v26);
    swift_willThrow();

    goto LABEL_28;
  }

  v0[235] = OBJC_IVAR____TtCC7NewsUI237SuggestionTodayFeedGroupEmitterCursor10Suggestion_cluster;

  v5 = sub_219BEEF44();
  v60 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    goto LABEL_49;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v55 = v4;
    v7 = v0[199];
    v8 = OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines;
    v0[236] = OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines;
    v56 = v0;
    if (!v6)
    {
      break;
    }

    v9 = 0;
    v57 = v7 + v8;
    v58 = v5 & 0xFFFFFFFFFFFFFF8;
    v59 = v5 & 0xC000000000000001;
    v54 = v5;
    v4 = v5 + 32;
    while (1)
    {
      if (v59)
      {
        v5 = MEMORY[0x21CECE0F0](v9, v54);
      }

      else
      {
        if (v9 >= *(v58 + 16))
        {
          goto LABEL_48;
        }

        v5 = *(v4 + 8 * v9);
      }

      v10 = v5;
      if (__OFADD__(v9++, 1))
      {
        break;
      }

      v12 = v6;
      v0 = *(v57 + 16);
      v13 = [v5 identifier];
      v14 = sub_219BF5414();
      v16 = v15;

      if (v0[2] && (sub_219BF7AA4(), sub_219BF5524(), v17 = sub_219BF7AE4(), v18 = -1 << *(v0 + 32), v19 = v17 & ~v18, ((*(v0 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v19) & 1) != 0))
      {
        v20 = ~v18;
        while (1)
        {
          v21 = (v0[6] + 16 * v19);
          v22 = *v21 == v14 && v21[1] == v16;
          if (v22 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v0 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v19) & 1) == 0)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
LABEL_7:

        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        v5 = sub_219BF73E4();
      }

      v6 = v12;
      if (v9 == v12)
      {
        v25 = v60;
        v0 = v56;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v53 = v5;
    v6 = sub_219BF7214();
    v5 = v53;
  }

  v25 = MEMORY[0x277D84F90];
LABEL_32:
  v0[237] = v25;

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v0[238] = qword_280F616D8;
  sub_2186F20D4();
  v0[239] = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_219C0B8C0;
  v32 = sub_219BEEF34();
  v34 = v33;
  *(v31 + 56) = MEMORY[0x277D837D0];
  v35 = sub_2186FC3BC();
  v0[240] = v35;
  *(v31 + 64) = v35;
  *(v31 + 32) = v32;
  *(v31 + 40) = v34;
  v36 = sub_219BEEF44();
  if (v36 >> 62)
  {
    v37 = sub_219BF7214();
  }

  else
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = MEMORY[0x277D83B88];
  v39 = MEMORY[0x277D83C10];
  *(v31 + 96) = MEMORY[0x277D83B88];
  *(v31 + 104) = v39;
  *(v31 + 72) = v37;
  if (v25 < 0 || (v25 & 0x4000000000000000) != 0)
  {
    v40 = sub_219BF7214();
  }

  else
  {
    v40 = *(v25 + 16);
  }

  *(v31 + 136) = v38;
  *(v31 + 144) = v39;
  *(v31 + 112) = v40;
  sub_219BF6214();
  sub_219BE5314();

  v41 = sub_219BEEF14();
  v42 = [v41 minClusterSizeAutoFavorite];

  if ((v40 & 0x8000000000000000) != 0 || v40 < v42)
  {

    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_219C0B8C0;
    v44 = sub_219BEEF34();
    *(v43 + 56) = MEMORY[0x277D837D0];
    *(v43 + 64) = v35;
    *(v43 + 32) = v44;
    *(v43 + 40) = v45;
    *(v43 + 96) = v38;
    *(v43 + 104) = v39;
    *(v43 + 72) = v40;
    v46 = sub_219BEEF14();
    v47 = [v46 minClusterSizeAutoFavorite];

    v48 = MEMORY[0x277D83ED0];
    *(v43 + 136) = MEMORY[0x277D83E88];
    *(v43 + 144) = v48;
    *(v43 + 112) = v47;
    sub_219BF6214();
    sub_219BE5314();

    v49 = swift_task_alloc();
    v56[248] = v49;
    *v49 = v56;
    v49[1] = sub_219640648;
    v50 = v56[199];
    v51 = v56[193];
    v52 = v56[187];

    return sub_21963F41C(v52, v51, v50, v55);
  }

  else
  {

    sub_2186D6710(0, &qword_280E8E680);
    swift_asyncLet_begin();

    sub_2187E7248();
    swift_asyncLet_begin();

    return MEMORY[0x282200930](v56 + 2, v56 + 169, sub_21963FCDC, v56 + 162);
  }
}

uint64_t sub_21963FCDC()
{
  v1[241] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 82, v1 + 175, sub_219640A1C, v1 + 170);
  }

  else
  {
    v1[242] = v1[169];
    swift_unknownObjectRetain();

    return MEMORY[0x282200930](v1 + 82, v1 + 175, sub_21963FD98, v1 + 182);
  }
}

uint64_t sub_21963FD98()
{
  *(v1 + 1944) = v0;
  if (v0)
  {

    v2 = sub_219640C14;
  }

  else
  {
    v2 = sub_21963FE18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_21963FE18()
{
  v1 = *(v0 + 1400);
  if (v1 >> 62)
  {
LABEL_30:
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    v22 = v0;
    v23 = v1;
    v24 = *(v0 + 1592) + *(v0 + 1888);
    v25 = v1 & 0xFFFFFFFFFFFFFF8;
    v26 = v1 & 0xC000000000000001;
    v4 = v1 + 32;
    while (1)
    {
      if (v26)
      {
        v1 = MEMORY[0x21CECE0F0](v3, v23);
        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
LABEL_23:
          __break(1u);
LABEL_24:
          v0 = v22;
          break;
        }
      }

      else
      {
        if (v3 >= *(v25 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        v1 = *(v4 + 8 * v3);
        swift_unknownObjectRetain();
        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
          goto LABEL_23;
        }
      }

      v0 = *(v24 + 16);
      v6 = [v1 identifier];
      v7 = sub_219BF5414();
      v9 = v8;

      if (*(v0 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v10 = sub_219BF7AE4(), v11 = -1 << *(v0 + 32), v12 = v10 & ~v11, ((*(v0 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0))
      {
        v13 = ~v11;
        while (1)
        {
          v14 = (*(v0 + 48) + 16 * v12);
          v15 = *v14 == v7 && v14[1] == v9;
          if (v15 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v12 = (v12 + 1) & v13;
          if (((*(v0 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        swift_unknownObjectRelease();
        if (v3 == v2)
        {
          goto LABEL_24;
        }
      }

      else
      {
LABEL_5:

        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        if (v3 == v2)
        {
          goto LABEL_24;
        }
      }
    }
  }

  sub_2186D6710(0, &qword_280E8E260);
  v16 = sub_219BF5904();
  v17 = FCPromoteOneHeadline();

  if (v17)
  {

    v18 = sub_219BF5924();
    *(v0 + 1952) = v18;

    v19 = swift_task_alloc();
    *(v0 + 1960) = v19;
    *v19 = v0;
    v19[1] = sub_219640154;
    v20 = *(v0 + 1936);
    v21 = *(v0 + 1544);

    sub_21964198C(v21, v20, v18);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219640154(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1968) = a1;
  *(v3 + 1976) = v1;

  if (v1)
  {
    v4 = sub_219640E78;
  }

  else
  {

    v4 = sub_219640280;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_219640280()
{
  v1 = v0[229];
  sub_219642BCC(v0[246], v0[217]);
  if (v1)
  {
    v2 = v0[229];
    v3 = v0[217];
    v4 = v0[187];
    sub_218B8B468();
    v6 = (v4 + *(v5 + 48));
    sub_21964625C(v3, v4, type metadata accessor for TodayFeedGroup);
    v6[3] = type metadata accessor for SuggestionTodayFeedGroupEmitterCursor();

    swift_unknownObjectRelease();
    *v6 = v2;
    sub_219646018(v3, type metadata accessor for TodayFeedGroup);
    sub_2196468C8(0, &qword_280E91700, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D324E8]);
    swift_storeEnumTagMultiPayload();
    v7 = sub_219640494;
    v8 = v0 + 82;
    v9 = v0 + 175;
    v10 = v0 + 224;
  }

  else
  {
    v11 = v0[217];
    v12 = v0[187];

    swift_unknownObjectRelease();
    sub_218D90770(v11, v12);
    sub_2196468C8(0, &qword_280E91700, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D324E8]);
    swift_storeEnumTagMultiPayload();
    v7 = sub_219640574;
    v8 = v0 + 82;
    v9 = v0 + 175;
    v10 = v0 + 212;
  }

  return MEMORY[0x282200920](v8, v9, v7, v10);
}

uint64_t sub_2196404EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2196405CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219640648()
{
  *(*v1 + 1992) = v0;

  if (v0)
  {
    v2 = sub_2196407E4;
  }

  else
  {
    v2 = sub_21964075C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21964075C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2196407E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21964086C()
{
  *(*v1 + 2016) = v0;

  if (v0)
  {
    v2 = sub_2196410E8;
  }

  else
  {
    v2 = sub_219640980;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219640980()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219640A74()
{
  v1 = v0[241];
  v0[250] = v1;
  v2 = v0[240];
  sub_219BF61F4();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09EC0;
  v4 = sub_219BEEF34();
  v5 = MEMORY[0x277D837D0];
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = v2;
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v0[167] = 0;
  v0[168] = 0xE000000000000000;
  v0[181] = v1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v7 = v0[167];
  v8 = v0[168];
  *(v3 + 96) = v5;
  *(v3 + 104) = v2;
  *(v3 + 72) = v7;
  *(v3 + 80) = v8;
  sub_219BE5314();

  v9 = swift_task_alloc();
  v0[251] = v9;
  *v9 = v0;
  v9[1] = sub_21964086C;
  v10 = v0[229];
  v11 = v0[199];
  v12 = v0[193];
  v13 = v0[187];

  return sub_21963F41C(v13, v12, v11, v10);
}

uint64_t sub_219640C14()
{
  swift_unknownObjectRelease();

  return MEMORY[0x282200920](v0 + 656, v0 + 1400, sub_219640C80, v0 + 1504);
}

uint64_t sub_219640CD8()
{
  v1 = v0[243];
  v0[250] = v1;
  v2 = v0[240];
  sub_219BF61F4();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09EC0;
  v4 = sub_219BEEF34();
  v5 = MEMORY[0x277D837D0];
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = v2;
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v0[167] = 0;
  v0[168] = 0xE000000000000000;
  v0[181] = v1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v7 = v0[167];
  v8 = v0[168];
  *(v3 + 96) = v5;
  *(v3 + 104) = v2;
  *(v3 + 72) = v7;
  *(v3 + 80) = v8;
  sub_219BE5314();

  v9 = swift_task_alloc();
  v0[251] = v9;
  *v9 = v0;
  v9[1] = sub_21964086C;
  v10 = v0[229];
  v11 = v0[199];
  v12 = v0[193];
  v13 = v0[187];

  return sub_21963F41C(v13, v12, v11, v10);
}

uint64_t sub_219640E78()
{

  swift_unknownObjectRelease();

  return MEMORY[0x282200920](v0 + 656, v0 + 1400, sub_219640EF0, v0 + 1600);
}

uint64_t sub_219640F48()
{
  v1 = v0[247];
  v0[250] = v1;
  v2 = v0[240];
  sub_219BF61F4();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09EC0;
  v4 = sub_219BEEF34();
  v5 = MEMORY[0x277D837D0];
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = v2;
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v0[167] = 0;
  v0[168] = 0xE000000000000000;
  v0[181] = v1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v7 = v0[167];
  v8 = v0[168];
  *(v3 + 96) = v5;
  *(v3 + 104) = v2;
  *(v3 + 72) = v7;
  *(v3 + 80) = v8;
  sub_219BE5314();

  v9 = swift_task_alloc();
  v0[251] = v9;
  *v9 = v0;
  v9[1] = sub_21964086C;
  v10 = v0[229];
  v11 = v0[199];
  v12 = v0[193];
  v13 = v0[187];

  return sub_21963F41C(v13, v12, v11, v10);
}

uint64_t sub_2196410E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219641184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_2186D8DC4(0, qword_280EDB700, type metadata accessor for TodayFeedGroup, MEMORY[0x277D83D88]);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for TodayFeedGroup();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2196412A4, 0, 0);
}

uint64_t sub_2196412A4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_2196468C8(0, &qword_280E91120, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D32AB8]);
  v5 = v4;
  sub_219BEFDA4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2196462C4(*(v0 + 48), qword_280EDB700, type metadata accessor for TodayFeedGroup);
  }

  else
  {
    sub_218D90770(*(v0 + 48), *(v0 + 72));
    sub_219BEF164();
    v8 = *(v0 + 72);
    v10 = sub_21899D954(*(v0 + 16));

    sub_219646018(v8, type metadata accessor for TodayFeedGroup);
    if (v10)
    {
      sub_219034698(*(v0 + 40), *(v0 + 24));
      v6 = 0;
      goto LABEL_4;
    }
  }

  v6 = 1;
LABEL_4:
  (*(*(v5 - 8) + 56))(*(v0 + 24), v6, 1, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2196414B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_2196414D8, 0, 0);
}

uint64_t sub_2196414D8()
{
  sub_219BE2CF4();
  v1 = v0[2];
  v0[5] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  v3 = sub_2186D6710(0, &qword_280E8E680);
  v4 = sub_2186CFDE4(0, &qword_280E8B580);
  *v2 = v0;
  v2[1] = sub_2196415E4;
  v5 = v0[3];
  v6 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v5, v1, v3, v4, v6);
}

uint64_t sub_2196415E4()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2196469E0;
  }

  else
  {
    v2 = sub_2196469E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2196416F8(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_219641718, 0, 0);
}

uint64_t sub_219641718()
{
  sub_219BE2CF4();
  v1 = v0[2];
  v0[5] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  sub_2187E7248();
  v4 = v3;
  v5 = sub_2186CFDE4(0, &qword_280E8B580);
  *v2 = v0;
  v2[1] = sub_219641814;
  v6 = v0[3];
  v7 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v6, v1, v4, v5, v7);
}

uint64_t sub_219641814()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_219641928;
  }

  else
  {
    v2 = sub_2189E3250;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219641928()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21964198C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = MEMORY[0x277D83D88];
  sub_2186D8DC4(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v4[6] = swift_task_alloc();
  sub_2186D8DC4(0, &qword_280E90150, MEMORY[0x277D33EC8], v5);
  v4[7] = swift_task_alloc();
  sub_2186D8DC4(0, &unk_280E91A10, sub_2189AE994, v5);
  v4[8] = swift_task_alloc();
  v6 = sub_219BF2AB4();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_219BF2034();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  sub_2186D8DC4(0, &unk_280E8FF30, sub_218A42400, v5);
  v4[15] = swift_task_alloc();
  sub_2186D8DC4(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v5);
  v4[16] = swift_task_alloc();
  v8 = sub_219BDBD64();
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  v9 = sub_219BF26F4();
  v4[20] = v9;
  v4[21] = *(v9 - 8);
  v4[22] = swift_task_alloc();
  v10 = sub_219BF1364();
  v4[23] = v10;
  v4[24] = *(v10 - 8);
  v4[25] = swift_task_alloc();
  v11 = sub_219BF3C84();
  v4[26] = v11;
  v4[27] = *(v11 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v12 = sub_219BF3E84();
  v4[30] = v12;
  v4[31] = *(v12 - 8);
  v4[32] = swift_task_alloc();
  v13 = sub_219BF1214();
  v4[33] = v13;
  v4[34] = *(v13 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = type metadata accessor for SuggestionTodayFeedGroupConfigData();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v14 = sub_219BF1934();
  v4[39] = v14;
  v4[40] = *(v14 - 8);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219641F20, 0, 0);
}

uint64_t sub_219641F20()
{
  v95 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v92 = *(v0 + 280);
  v5 = *(v0 + 272);
  v87 = *(v0 + 288);
  v89 = *(v0 + 264);
  v85 = *(v0 + 336);
  sub_2186E0AA8();
  sub_219BEDD14();
  (*(v2 + 16))(v85, v4, v1);
  sub_219646018(v4, type metadata accessor for SuggestionTodayFeedGroupConfigData);
  sub_219BEF174();
  sub_219BEDD14();
  (*(v5 + 16))(v92, v3 + *(v87 + 20), v89);
  sub_219646018(v3, type metadata accessor for SuggestionTodayFeedGroupConfigData);
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 336);
  v8 = *(v0 + 312);
  v7 = *(v0 + 320);
  v10 = *(v0 + 272);
  v9 = *(v0 + 280);
  v11 = *(v0 + 264);
  v12 = *(v0 + 32);
  v13 = qword_280F616D8;
  sub_219BF1774();

  (*(v10 + 8))(v9, v11);
  v14 = *(v7 + 8);
  *(v0 + 352) = v14;
  *(v0 + 360) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v6, v8);
  if (v12 >> 62)
  {
    v15 = sub_219BF7214();
  }

  else
  {
    v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x277D84F90];
  v86 = v13;
  if (v15)
  {
    v94[0] = MEMORY[0x277D84F90];
    v17 = sub_218C34A88(0, v15 & ~(v15 >> 63), 0);
    if (v15 < 0)
    {
      __break(1u);
      return MEMORY[0x2821921B8](v17, v18, v19, v20, v21);
    }

    v22 = v94[0];
    v23 = *(v0 + 216);
    if ((v12 & 0xC000000000000001) != 0)
    {
      v24 = 0;
      v25 = *MEMORY[0x277D34128];
      do
      {
        v26 = *(v0 + 232);
        v27 = *(v0 + 208);
        *v26 = MEMORY[0x21CECE0F0](v24, *(v0 + 32));
        (*(v23 + 104))(v26, v25, v27);
        v94[0] = v22;
        v29 = *(v22 + 16);
        v28 = *(v22 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_218C34A88(v28 > 1, v29 + 1, 1);
          v22 = v94[0];
        }

        v30 = *(v0 + 232);
        v31 = *(v0 + 208);
        ++v24;
        *(v22 + 16) = v29 + 1;
        (*(v23 + 32))(v22 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v29, v30, v31);
      }

      while (v15 != v24);
    }

    else
    {
      v32 = (*(v0 + 32) + 32);
      v90 = *(v23 + 104);
      do
      {
        **(v0 + 224) = *v32;
        v90();
        v94[0] = v22;
        v34 = *(v22 + 16);
        v33 = *(v22 + 24);
        swift_unknownObjectRetain();
        if (v34 >= v33 >> 1)
        {
          sub_218C34A88(v33 > 1, v34 + 1, 1);
          v22 = v94[0];
        }

        v35 = *(v0 + 224);
        v36 = *(v0 + 208);
        *(v22 + 16) = v34 + 1;
        (*(v23 + 32))(v22 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v34, v35, v36);
        ++v32;
        --v15;
      }

      while (v15);
    }

    v16 = MEMORY[0x277D84F90];
  }

  v74 = *(v0 + 256);
  v75 = *(v0 + 248);
  v76 = *(v0 + 240);
  v38 = *(v0 + 192);
  v37 = *(v0 + 200);
  v39 = *(v0 + 176);
  v78 = *(v0 + 184);
  v79 = *(v0 + 168);
  v81 = *(v0 + 160);
  v67 = *(v0 + 152);
  v69 = *(v0 + 144);
  v71 = *(v0 + 136);
  v91 = *(v0 + 128);
  v72 = *(v0 + 120);
  v77 = *(v0 + 64);
  v84 = *(v0 + 48);
  v93 = *(v0 + 40);
  v40 = *(v0 + 24);
  v83 = *(v0 + 56);
  sub_218F0B984(v16);
  sub_218F0BA7C(v16);
  sub_218F0BB90(v16);
  sub_219BF3E74();
  v88 = v40;
  swift_getObjectType();
  sub_2194F6464(v37);
  v73 = MEMORY[0x277D84560];
  sub_2186D8DC4(0, &qword_280E8B850, MEMORY[0x277D334E0], MEMORY[0x277D84560]);
  sub_219BF1A44();
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_219C09BA0;
  v42 = swift_allocBox();
  (*(v38 + 16))(v43, v37, v78);
  *v39 = v42;
  v44 = *MEMORY[0x277D33748];
  v45 = sub_219BF2124();
  (*(*(v45 - 8) + 104))(v39, v44, v45);
  (*(v79 + 104))(v39, *MEMORY[0x277D339C8], v81);
  sub_219BF1A04();
  v80 = *(v93 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_formatService + 24);
  v82 = *(v93 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_formatService + 32);
  __swift_project_boxed_opaque_existential_1((v93 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_formatService), v80);
  v94[0] = 0;
  v94[1] = 0xE000000000000000;
  sub_219BF7314();

  strcpy(v94, "suggestion::");
  BYTE5(v94[1]) = 0;
  HIWORD(v94[1]) = -5120;
  v46 = v40;
  v47 = [v40 identifier];
  v48 = sub_219BF5414();
  v50 = v49;

  MEMORY[0x21CECC330](v48, v50);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  sub_219BDBD54();
  v51 = sub_219BDBD44();
  v53 = v52;
  (*(v69 + 8))(v67, v71);
  MEMORY[0x21CECC330](v51, v53);

  v54 = [v46 identifier];
  sub_219BF5414();

  v70 = sub_219BEC004();
  v68 = *(*(v70 - 8) + 56);
  v68(v91, 1, 1, v70);
  v94[0] = sub_219BF1714();
  sub_2191EED30(v41);
  sub_218A42400(0);
  (*(*(v55 - 8) + 56))(v72, 1, 1, v55);
  sub_219BF1764();

  sub_2196462C4(v72, &unk_280E8FF30, sub_218A42400);
  sub_2196462C4(v91, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  sub_2186DEF40(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_219C146A0;
  *(v56 + 32) = v88;
  sub_2186D8DC4(0, &unk_280E8B790, MEMORY[0x277D34258], v73);
  v57 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_219C09BA0;
  (*(v75 + 16))(v58 + v57, v74, v76);
  v68(v91, 1, 1, v70);
  swift_unknownObjectRetain();
  sub_219A95188(v16);
  sub_219A95188(v16);
  sub_219A951A0(v16);
  sub_219A951B8(v16);
  sub_219A952CC(v16);
  sub_219A952E4(v16);
  sub_219A953F8(v16);
  sub_219BF2024();
  v59 = OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_knobs;
  sub_2189AE994(0);
  v61 = v60;
  v62 = *(v60 - 8);
  (*(v62 + 16))(v77, v93 + v59, v60);
  (*(v62 + 56))(v77, 0, 1, v61);
  v63 = sub_219BF35D4();
  (*(*(v63 - 8) + 56))(v83, 1, 1, v63);
  *(v0 + 392) = 14;
  sub_2196468C8(0, &qword_280E90070, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  v64 = sub_219BF2774();
  (*(*(v64 - 8) + 56))(v84, 1, 1, v64);
  *MEMORY[0x277D30BC8];
  v86;
  sub_219BF2A84();
  v65 = swift_task_alloc();
  *(v0 + 368) = v65;
  *v65 = v0;
  v65[1] = sub_2195E00E4;
  v18 = *(v0 + 112);
  v19 = *(v0 + 88);
  v17 = *(v0 + 328);
  v20 = v80;
  v21 = v82;

  return MEMORY[0x2821921B8](v17, v18, v19, v20, v21);
}

uint64_t sub_219642BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[3] = a1;
  v13 = a2;
  sub_2186D8DC4(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_219BEF554();
  v4 = MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  v12 = sub_219BED8D4();
  v5 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0AA8();

  v8 = sub_219BEDCB4();
  v11[1] = v9;
  v11[2] = v8;
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2189AE994(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  type metadata accessor for SuggestionTodayFeedGroupKnobs();
  sub_2196468C8(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  sub_219BEEC84();
  sub_219BED834();
  (*(v5 + 32))(v13, v7, v12);
  type metadata accessor for TodayFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219642F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_2193CEC5C;

  return sub_219642FB4(a3);
}

uint64_t sub_219642FB4(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x2822009F8](sub_219642FD4, 0, 0);
}

uint64_t sub_219642FD4()
{
  v18 = v0;
  v0[4] = MEMORY[0x277D84FA0];
  sub_219BEF0B4();
  v1 = *(v0[5] + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_featureAvailability);
  swift_unknownObjectRetain();

  v2 = [v1 useFood];
  swift_unknownObjectRelease();
  if (v2)
  {
    sub_219BEF0B4();
    v3 = *(v0[11] + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
    swift_unknownObjectRetain();

    v4 = [v3 foodHubTagID];
    swift_unknownObjectRelease();
    if (v4)
    {
      v5 = sub_219BF5414();
      v7 = v6;

      sub_219497B60(&v17, v5, v7);
    }
  }

  sub_219BEF0B4();
  v8 = *(v0[6] + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_sportsOnboardingState);

  if (v8 == 1 && (sub_219BEF0B4(), v9 = *(v0[7] + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig), swift_unknownObjectRetain(), , v10 = [v9 mySportsTagID], swift_unknownObjectRelease(), v10) && (sub_219BEF0B4(), v11 = *(v0[8] + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_subscriptionController), , v12 = objc_msgSend(v11, sel_hasMutedSubscriptionForTagID_, v10), v10, v11, (v12 & 1) == 0))
  {
    __swift_project_boxed_opaque_existential_1((v0[13] + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_sportsGraphManager), *(v0[13] + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_sportsGraphManager + 24));
    v0[14] = sub_219BF4434();
    v16 = swift_task_alloc();
    v0[15] = v16;
    *v16 = v0;
    v16[1] = sub_2196432A4;

    return MEMORY[0x2821D23D8](v0 + 9);
  }

  else
  {
    v13 = v0[4];
    v14 = v0[1];

    return v14(v13);
  }
}

uint64_t sub_2196432A4()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_219643438;
  }

  else
  {

    v2 = sub_2196433C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2196433C0()
{
  v1 = sub_219BF29C4();
  sub_218DD88E0(v1);

  v2 = *(v0 + 32);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_219643438()
{

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  sub_219BF61F4();
  sub_2186F20D4();
  v2 = swift_allocObject();
  v0[2] = 0;
  *(v2 + 16) = xmmword_219C09BA0;
  v0[3] = 0xE000000000000000;
  v0[10] = v1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v3 = v0[2];
  v4 = v0[3];
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2186FC3BC();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_219BE5314();

  v5 = v0[4];
  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_2196435BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_2196435DC, 0, 0);
}

uint64_t sub_2196435DC()
{
  sub_219BE2CF4();
  v0[5] = v0[2];
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_219643698;
  v2 = v0[3];

  return MEMORY[0x2821D23D8](v2);
}

uint64_t sub_219643698()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2196469E0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2196437D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v142 = a6;
  v147 = a5;
  v143 = a4;
  v144 = a3;
  v134 = a2;
  v136 = a7;
  v141 = sub_219BF0BD4();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v139 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_219BF0114();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v135 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_219BDBD34();
  v10 = *(v171 - 8);
  v11 = MEMORY[0x28223BE20](v171);
  v152 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v146 = &v134 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  *&v165 = &v134 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v161 = &v134 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v154 = &v134 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v153 = &v134 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v134 - v23;
  sub_2196468C8(0, &qword_280E91728, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D324D0]);
  v26 = v25;
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v29 = &v134 - v28;
  sub_2196468C8(0, &qword_280E91290, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32858]);
  v31 = v30;
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v34 = &v134 - v33;
  v149 = a1;
  sub_219BEF144();
  sub_219BEE374();

  LOBYTE(v172) = 14;
  v35 = sub_219BEFA24();
  (*(v32 + 8))(v34, v31);
  v170 = *(v35 + 16);
  if (v170)
  {
    v159 = v24;
    v36 = 0;
    v169 = (v35 + ((*(v27 + 80) + 32) & ~*(v27 + 80)));
    v168 = v27 + 16;
    v151 = v10 + 16;
    v166 = (v10 + 32);
    v158 = v10 + 8;
    v167 = (v27 + 8);
    v157 = (v10 + 40);
    v37 = MEMORY[0x277D84F98];
    v38 = v10;
    v163 = v27;
    v164 = v10;
    v162 = v35;
    v145 = v29;
    v150 = v26;
    while (1)
    {
      if (v36 >= *(v35 + 16))
      {
        __break(1u);
        goto LABEL_72;
      }

      (*(v27 + 16))(v29, &v169[*(v27 + 72) * v36], v26);
      v39 = sub_219BEF004();
      if (v40)
      {
        break;
      }

      (*v167)(v29, v26);
LABEL_4:
      if (v170 == ++v36)
      {
        goto LABEL_35;
      }
    }

    v41 = v39;
    v42 = v40;
    if (*(v37 + 16))
    {
      v43 = sub_21870F700(v39, v40);
      if (v44)
      {
        v156 = v41;
        v45 = *(v37 + 56);
        v155 = *(v38 + 72);
        v46 = v153;
        v47 = v171;
        (*(v38 + 16))(v153, v45 + v155 * v43, v171);
        v48 = v159;
        v160 = *(v38 + 32);
        v160(v159, v46, v47);
        v49 = v154;
        sub_219BEF014();
        LOBYTE(v46) = sub_219BDBC24();
        v50 = *(v38 + 8);
        v50(v49, v47);
        if (v46)
        {
          v148 = v50;
          v51 = v146;
          v26 = v150;
          sub_219BEF014();
          v160(v152, v51, v47);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v172 = v37;
          v53 = v156;
          v54 = sub_21870F700(v156, v42);
          v56 = *(v37 + 16);
          v57 = (v55 & 1) == 0;
          v58 = __OFADD__(v56, v57);
          v59 = v56 + v57;
          if (v58)
          {
            goto LABEL_76;
          }

          v60 = v55;
          if (*(v37 + 24) >= v59)
          {
            v27 = v163;
            v29 = v145;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v81 = v54;
              sub_219491E54();
              v54 = v81;
              v38 = v164;
              if (v60)
              {
                goto LABEL_28;
              }

              goto LABEL_32;
            }
          }

          else
          {
            sub_219480C64(v59, isUniquelyReferenced_nonNull_native);
            v54 = sub_21870F700(v53, v42);
            v27 = v163;
            v29 = v145;
            if ((v60 & 1) != (v61 & 1))
            {
              goto LABEL_89;
            }
          }

          v38 = v164;
          if (v60)
          {
LABEL_28:
            v78 = v54;

            v79 = v171;
            v80 = v172[7] + v78 * v155;
            v37 = v172;
            (*v157)(v80, v152, v171);
            v148(v159, v79);
            (*v167)(v29, v26);
            goto LABEL_24;
          }

LABEL_32:
          v82 = v171;
          v37 = v172;
          v172[(v54 >> 6) + 8] |= 1 << v54;
          v83 = (*(v37 + 48) + 16 * v54);
          *v83 = v53;
          v83[1] = v42;
          v160((*(v37 + 56) + v54 * v155), v152, v82);
          v148(v159, v82);
          (*v167)(v29, v26);
          v84 = *(v37 + 16);
          v58 = __OFADD__(v84, 1);
          v85 = v84 + 1;
          if (v58)
          {
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            result = sub_219BF79A4();
            __break(1u);
            return result;
          }

          *(v37 + 16) = v85;
          goto LABEL_24;
        }

        v50(v48, v47);
        v26 = v150;
        (*v167)(v29, v150);
        v27 = v163;
        v38 = v164;
LABEL_24:
        v35 = v162;
        goto LABEL_4;
      }
    }

    v62 = v161;
    sub_219BEF014();
    v63 = v37;
    v37 = *v166;
    (*v166)(v165, v62, v171);
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v172 = v63;
    v66 = sub_21870F700(v41, v42);
    v67 = v63[2];
    v68 = (v65 & 1) == 0;
    v69 = v67 + v68;
    if (__OFADD__(v67, v68))
    {
      goto LABEL_74;
    }

    v70 = v65;
    if (v63[3] < v69)
    {
      sub_219480C64(v69, v64);
      v71 = sub_21870F700(v41, v42);
      if ((v70 & 1) != (v72 & 1))
      {
        goto LABEL_89;
      }

      v66 = v71;
      v38 = v164;
      if ((v70 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_22:

      v37 = v172;
      (*(v38 + 40))(v172[7] + *(v38 + 72) * v66, v165, v171);
      (*v167)(v29, v26);
LABEL_23:
      v27 = v163;
      goto LABEL_24;
    }

    if (v64)
    {
      v38 = v164;
      if (v65)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_219491E54();
      v38 = v164;
      if (v70)
      {
        goto LABEL_22;
      }
    }

LABEL_18:
    v73 = v171;
    v74 = v172;
    v172[(v66 >> 6) + 8] |= 1 << v66;
    v75 = (v74[6] + 16 * v66);
    *v75 = v41;
    v75[1] = v42;
    (v37)(v74[7] + *(v38 + 72) * v66, v165, v73);
    v37 = v74;
    (*v167)(v29, v26);
    v76 = v74[2];
    v58 = __OFADD__(v76, 1);
    v77 = v76 + 1;
    if (v58)
    {
      goto LABEL_75;
    }

    v74[2] = v77;
    goto LABEL_23;
  }

  v37 = MEMORY[0x277D84F98];
LABEL_35:

  if (qword_280E8D7A0 != -1)
  {
    goto LABEL_77;
  }

  while (1)
  {
    v86 = qword_280F616D8;
    sub_2186F20D4();
    v166 = v87;
    v88 = swift_allocObject();
    v165 = xmmword_219C09BA0;
    *(v88 + 16) = xmmword_219C09BA0;
    v89 = *(v37 + 16);
    v90 = MEMORY[0x277D83C10];
    *(v88 + 56) = MEMORY[0x277D83B88];
    *(v88 + 64) = v90;
    *(v88 + 32) = v89;
    sub_219BF6214();
    v167 = v86;
    sub_219BE5314();

    v164 = swift_allocObject();
    *(v164 + 16) = v37;
    v168 = v37;

    sub_219BEF0B4();
    v163 = *(v174 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
    swift_unknownObjectRetain();

    v173 = MEMORY[0x277D84F90];
    v37 = v144;
    v91 = v144 >> 62 ? sub_219BF7214() : *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v92 = MEMORY[0x277D84F90];
    if (!v91)
    {
      break;
    }

    v93 = 0;
    v169 = (v134 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines);
    v170 = v37 & 0xFFFFFFFFFFFFFF8;
    v171 = v37 & 0xC000000000000001;
    v94 = (v37 + 32);
    while (1)
    {
      if (v171)
      {
        v95 = MEMORY[0x21CECE0F0](v93, v144);
      }

      else
      {
        if (v93 >= *(v170 + 16))
        {
          goto LABEL_73;
        }

        v95 = v94[v93];
      }

      v96 = v95;
      v58 = __OFADD__(v93++, 1);
      if (v58)
      {
        break;
      }

      v97 = *(v169 + 2);
      v98 = [v95 identifier];
      v99 = sub_219BF5414();
      v101 = v100;

      if (*(v97 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v102 = sub_219BF7AE4(), v37 = v97 + 56, v103 = -1 << *(v97 + 32), v104 = v102 & ~v103, ((*(v97 + 56 + ((v104 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v104) & 1) != 0))
      {
        v105 = ~v103;
        while (1)
        {
          v106 = (*(v97 + 48) + 16 * v104);
          v107 = *v106 == v99 && v106[1] == v101;
          if (v107 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v104 = (v104 + 1) & v105;
          if (((*(v37 + ((v104 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v104) & 1) == 0)
          {
            goto LABEL_40;
          }
        }

        if (v93 == v91)
        {
LABEL_58:
          v108 = v173;
          v92 = MEMORY[0x277D84F90];
          goto LABEL_60;
        }
      }

      else
      {
LABEL_40:

        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        if (v93 == v91)
        {
          goto LABEL_58;
        }
      }
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    swift_once();
  }

  v108 = MEMORY[0x277D84F90];
LABEL_60:
  v109 = v143;

  v171 = sub_219822674();
  sub_219BEF0A4();
  type metadata accessor for TodayFeedServiceConfig();
  sub_2187DF448();
  v110 = sub_219BEDC44();

  if (v110 >> 62)
  {
    v111 = sub_219BF7214();
    if (v111)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v111 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v111)
    {
LABEL_62:
      v172 = v92;
      sub_21870B65C(0, v111 & ~(v111 >> 63), 0);
      if (v111 < 0)
      {
        goto LABEL_87;
      }

      v169 = v109;
      v170 = v108;
      v112 = 0;
      v113 = v172;
      do
      {
        if ((v110 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21CECE0F0](v112, v110);
        }

        else
        {
          swift_unknownObjectRetain();
        }

        v114 = [swift_unknownObjectRetain() identifier];
        v115 = sub_219BF5414();
        v117 = v116;
        swift_unknownObjectRelease_n();

        v172 = v113;
        v119 = *(v113 + 16);
        v118 = *(v113 + 24);
        if (v119 >= v118 >> 1)
        {
          sub_21870B65C((v118 > 1), v119 + 1, 1);
          v113 = v172;
        }

        ++v112;
        *(v113 + 16) = v119 + 1;
        v120 = v113 + 16 * v119;
        *(v120 + 32) = v115;
        *(v120 + 40) = v117;
      }

      while (v111 != v112);

      goto LABEL_81;
    }
  }

  v113 = MEMORY[0x277D84F90];
LABEL_81:
  v121 = sub_2194B1FF0(v113, v171);

  type metadata accessor for SuggestionTodayFeedGroupKnobs();
  v122 = v139;
  sub_219BEF134();
  v123 = sub_219BEEDF4();
  (*(v140 + 8))(v122, v141);
  v124 = sub_2194796A0(v123, v121);

  v126 = sub_2194796A0(v125, v124);
  sub_219BEF0B4();
  v127 = *(v172 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
  swift_unknownObjectRetain();

  if (([v127 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_88;
  }

  v128 = [v127 deprecatedSportsTopicTagIds];
  swift_unknownObjectRelease();
  if (v128)
  {
    v129 = sub_219BF5924();
  }

  else
  {
    v129 = MEMORY[0x277D84F90];
  }

  sub_2194B1FF0(v129, v126);

  v130 = v135;
  sub_219BF0104();
  sub_219BF0134();
  v131 = swift_allocObject();
  *(v131 + 16) = v165;
  v132 = *(sub_219BF0094() + 16);

  *(v131 + 56) = MEMORY[0x277D83B88];
  *(v131 + 64) = MEMORY[0x277D83C10];
  *(v131 + 32) = v132;
  sub_219BF6214();
  sub_219BE5314();

  return (*(v137 + 8))(v130, v138);
}

uint64_t sub_219644A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_219BEEF54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_2186D8DC4(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = sub_219BF5BF4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v7 + 16))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v13 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = a1;
  (*(v7 + 32))(&v14[v13], &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  result = sub_2195E79DC(0, 0, v11, &unk_219C94D40, v14);
  *a3 = result;
  return result;
}

uint64_t sub_219644C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_219644C50, 0, 0);
}

uint64_t sub_219644C50()
{
  __swift_project_boxed_opaque_existential_1((v0[3] + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_tagService), *(v0[3] + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_tagService + 24));
  sub_219BEEF34();
  v0[5] = sub_219BF1C14();

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_219644D40;
  v2 = v0[2];

  return MEMORY[0x2821D23D8](v2);
}

uint64_t sub_219644D40()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_219641928, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_219644E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_219BEEF54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_2186D8DC4(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v18 - v12;
  v14 = sub_219BF5BF4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v9 + 16))(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v15 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = a1;
  (*(v9 + 32))(&v16[v15], &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *&v16[(v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8] = a3;

  result = sub_2195E76F4(0, 0, v13, &unk_219C94D30, v16);
  *a4 = result;
  return result;
}

uint64_t sub_2196450A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a4;
  return MEMORY[0x2822009F8](sub_2196450CC, 0, 0);
}

uint64_t sub_2196450CC()
{
  __swift_project_boxed_opaque_existential_1((v0[4] + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_headlineService), *(v0[4] + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_headlineService + 24));
  sub_219BEEF44();
  sub_219BEEF04();
  v1 = sub_219BEEF24();
  sub_219BEF0B4();
  swift_unknownObjectRetain();

  v0[7] = sub_219BF27A4();

  swift_unknownObjectRelease();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_219645250;
  v3 = v0[3];

  return MEMORY[0x2821D23D8](v3);
}

uint64_t sub_219645250()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2194FF3C4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_21964538C()
{
  sub_219BDBD34();
  sub_219645910(&qword_280EE9C90, MEMORY[0x277CC9578]);
  return sub_219BF5964();
}

uint64_t sub_219645428@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2186D8DC4(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  if (*(a2 + 16) && (v9 = sub_21870F700(*a1, a1[1]), (v10 & 1) != 0))
  {
    v11 = v9;
    v12 = *(a2 + 56);
    v13 = sub_219BDBD34();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v8, v12 + *(v14 + 72) * v11, v13);
    (*(v14 + 56))(v8, 0, 1, v13);
    return (*(v14 + 32))(a3, v8, v13);
  }

  else
  {
    v16 = sub_219BDBD34();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v8, 1, 1, v16);
    sub_219BDBBB4();
    result = (*(v17 + 48))(v8, 1, v16);
    if (result != 1)
    {
      return sub_2196462C4(v8, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }
  }

  return result;
}

uint64_t sub_219645674()
{
  v1 = OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_config;
  sub_2186E0AA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_219646018(v0 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_knobs, type metadata accessor for SuggestionTodayFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_formatService);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_tagService);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_headlineService);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_sportsGraphManager);

  return v0;
}

uint64_t sub_21964576C()
{
  sub_219645674();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SuggestionTodayFeedGroupEmitter()
{
  result = qword_280EA79F8;
  if (!qword_280EA79F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219645818()
{
  sub_2186E0AA8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SuggestionTodayFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_219645910(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219645958(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_21963E12C(a1, a2);
}

uint64_t sub_219645A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2187608D4;

  return sub_219641184(a1, a2, a3);
}

uint64_t sub_219645AB4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_name);

  return v1;
}

uint64_t sub_219645AF4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_config;
  sub_2186E0AA8();
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for TodayFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219645B88@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for SuggestionTodayFeedGroupKnobs();
  a1[4] = sub_219645910(&qword_280EAE928, type metadata accessor for SuggestionTodayFeedGroupKnobs);
  a1[5] = sub_219645910(&qword_280EAE930, type metadata accessor for SuggestionTodayFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_21964625C(v3 + v4, boxed_opaque_existential_1, type metadata accessor for SuggestionTodayFeedGroupKnobs);
}

uint64_t sub_219645CEC@<X0>(uint64_t *a1@<X8>)
{
  sub_2186D8DC4(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186E0AA8();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_219646018(inited + 32, sub_2188317B0);
  sub_2186D8DC4(0, &qword_280EE77D8, type metadata accessor for SuggestionTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_219646958();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_219645E8C()
{
  sub_219645910(&qword_280EA7A18, type metadata accessor for SuggestionTodayFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_219646018(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219646078(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2187609C8;

  return sub_21963E6D8(a1, v5, v4);
}

uint64_t sub_219646124(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187609C8;

  return sub_2196414B8(a1, v1);
}

uint64_t sub_2196461C0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187608D4;

  return sub_2196416F8(a1, v1);
}

uint64_t sub_21964625C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2196462C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186D8DC4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219646334(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2187609C8;

  return sub_219642F14(a1, v5, v4);
}

uint64_t sub_2196463E0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187609C8;

  return sub_2196435BC(a1, v1);
}

uint64_t sub_21964647C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_219BEEF54() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_219644A1C(v4, v5, a1);
}

void sub_2196464F0()
{
  if (!qword_280E8EA88)
  {
    sub_2186D6710(255, &qword_280E8E680);
    sub_2186CFDE4(255, &qword_280E8B580);
    v0 = sub_219BF5C24();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8EA88);
    }
  }
}

uint64_t sub_219646580@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_219BEEF54() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_219644E7C(v5, v1 + v4, v6, a1);
}

void sub_219646620()
{
  if (!qword_280E8EA98)
  {
    sub_2187E7248();
    sub_2186CFDE4(255, &qword_280E8B580);
    v0 = sub_219BF5C24();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8EA98);
    }
  }
}

uint64_t sub_2196466A0(uint64_t a1)
{
  v4 = *(sub_219BEEF54() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2187609C8;

  return sub_2196450A8(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_2196467D0(uint64_t a1)
{
  v4 = *(sub_219BEEF54() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2187609C8;

  return sub_219644C2C(a1, v6, v7, v8, v1 + v5);
}

void sub_2196468C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_219646958()
{
  result = qword_280EE77E0;
  if (!qword_280EE77E0)
  {
    sub_2186D8DC4(255, &qword_280EE77D8, type metadata accessor for SuggestionTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE77E0);
  }

  return result;
}

uint64_t sub_2196469E8()
{
  v1 = [*(v0 + 16) appConfiguration];
  if ([v1 respondsToSelector_])
  {
    v2 = [v1 articleLinkBehaviorConfig];
    swift_unknownObjectRelease();
    v3 = [v2 openArticlesAsModals];

    if (v3)
    {
      return 1;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_280EE91C0 != -1)
  {
    swift_once();
  }

  sub_219BDC8A4();

  return v5;
}

uint64_t sub_219646AEC()
{
  if (sub_2196469E8())
  {
    return 0;
  }

  v2 = [*(v0 + 16) appConfiguration];
  if ([v2 respondsToSelector_])
  {
    v3 = [v2 articleLinkBehaviorConfig];
    swift_unknownObjectRelease();
    v4 = [v3 lohAnimationCompletesInArticle];

    if (v4)
    {
      return 1;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_27CC087E0 != -1)
  {
    swift_once();
  }

  sub_219BDC8A4();

  return v5;
}

uint64_t sub_219646C00()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_219BDBD34();
  v70 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v62 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v62 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v62 - v13;
  if (qword_280EE6088 != -1)
  {
    swift_once();
  }

  v15 = sub_219BE5434();
  __swift_project_value_buffer(v15, qword_280F627C0);
  v16 = sub_219BE5414();
  v17 = sub_219BF6214();
  v18 = os_log_type_enabled(v16, v17);
  v69 = v6;
  if (v18)
  {
    v19 = v3;
    v20 = v9;
    v21 = v12;
    v22 = v2;
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_2186C1000, v16, v17, "ArticleLinkBehaviorConfigManager - checking eligibility for interlude display", v23, 2u);
    v24 = v23;
    v2 = v22;
    v12 = v21;
    v9 = v20;
    v3 = v19;
    MEMORY[0x21CECF960](v24, -1, -1);
  }

  v25 = [v1[2] possiblyUnfetchedAppConfiguration];
  if (([v25 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v26 = [v25 articleLinkBehaviorConfig];
  swift_unknownObjectRelease();
  if (![v26 lohAnimationEnabled])
  {

LABEL_14:
    v37 = sub_219BE5414();
    v38 = sub_219BF6214();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2186C1000, v37, v38, "ArticleLinkBehaviorConfigManager - not eligible for interlude display due to missing or disabled config", v39, 2u);
      MEMORY[0x21CECF960](v39, -1, -1);
    }

    goto LABEL_16;
  }

  if (qword_27CC08800 != -1)
  {
    swift_once();
  }

  v28 = qword_27CCD8EE8;
  v29 = sub_219647740(&unk_27CC1D5E0, v27, type metadata accessor for ArticleLinkBehaviorConfigManager);
  v66 = v28;
  v67 = v29;
  v68 = v2;
  sub_219BDC7D4();
  v30 = v71;
  if (v30 < [v26 animationCampaignVersion])
  {
    v65 = v26;
    v31 = sub_219BE5414();
    v32 = sub_219BF6214();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v63 = v3;
      v64 = v14;
      v34 = v33;
      *v33 = 67109120;
      v35 = v65;
      *(v33 + 1) = [v65 animationCampaignVersion];

      _os_log_impl(&dword_2186C1000, v31, v32, "ArticleLinkBehaviorConfigManager - the current campaign version has updated to %d.\nResetting tracked Interlude data before proceeding with eligibility check.", v34, 8u);
      v36 = v34;
      v3 = v63;
      v14 = v64;
      MEMORY[0x21CECF960](v36, -1, -1);
    }

    else
    {

      v31 = v65;
    }

    v71 = [v65 animationCampaignVersion];
    sub_219647740(&unk_27CC1D5F0, v41, type metadata accessor for ArticleLinkBehaviorConfigManager);
    sub_219BDCA54();
    if (qword_27CC08850 != -1)
    {
      swift_once();
    }

    sub_219BDCA64();
  }

  v42 = v14;
  if (qword_27CC087F0 != -1)
  {
    swift_once();
  }

  sub_219BDC7D4();
  v43 = v71;
  if (v43 >= [v26 animationMaxCount])
  {
    v37 = v26;
    v47 = sub_219BE5414();
    v48 = sub_219BF6214();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 134218240;
      *(v49 + 4) = v43;
      *(v49 + 12) = 1024;
      *(v49 + 14) = [v37 &selRef_fetchCachedRecipeWithID_completionHandler_ + 6];

      _os_log_impl(&dword_2186C1000, v47, v48, "ArticleLinkBehaviorConfigManager - not eligible for interlude display due to current display count (%ld) meeting or exceeding max display count (%d)", v49, 0x12u);
      MEMORY[0x21CECF960](v49, -1, -1);
    }

    else
    {
    }

LABEL_16:

    return 0;
  }

  if (qword_27CC087F8 != -1)
  {
    swift_once();
  }

  sub_219BDC7D4();
  sub_219BDBD24();
  [v26 animationQuiescenceInterval];
  sub_219BDBC44();
  v44 = v70;
  v45 = *(v70 + 8);
  v45(v9, v3);
  v46 = sub_219BDBC24();
  v45(v12, v3);
  if ((v46 & 1) == 0)
  {
    v50 = v69;
    (*(v44 + 16))(v69, v42, v3);
    v51 = v26;
    v52 = sub_219BE5414();
    v53 = sub_219BF6214();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v71 = v70;
      *v54 = 136315394;
      sub_219647740(&qword_280EE9C60, 255, MEMORY[0x277CC9578]);
      v55 = sub_219BF7894();
      LODWORD(v68) = v53;
      v56 = v55;
      v58 = v57;
      v45(v50, v3);
      v59 = sub_2186D1058(v56, v58, &v71);

      *(v54 + 4) = v59;
      *(v54 + 12) = 2048;
      v60 = [v51 animationQuiescenceInterval];

      *(v54 + 14) = v60;
      _os_log_impl(&dword_2186C1000, v52, v68, "ArticleLinkBehaviorConfigManager - not eligible for interlude display due to recent prior display (%s.\nThe current quiescence interval is %lld", v54, 0x16u);
      v61 = v70;
      __swift_destroy_boxed_opaque_existential_1(v70);
      MEMORY[0x21CECF960](v61, -1, -1);
      MEMORY[0x21CECF960](v54, -1, -1);
    }

    else
    {

      v45(v50, v3);
    }

    v45(v42, v3);
    return 0;
  }

  v45(v42, v3);

  return 1;
}

void sub_2196474F8(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + 16) possiblyUnfetchedAppConfiguration];
  if ([v3 respondsToSelector_])
  {
    v4 = [v3 articleLinkBehaviorConfig];
    swift_unknownObjectRelease();
    v5 = [v4 animationTitleLine1];
    v6 = sub_219BF5414();
    v8 = v7;

    v9 = [v4 animationTitleLine2];
    v10 = sub_219BF5414();
    v12 = v11;

    v13 = [v4 animationBody];
    v14 = sub_219BF5414();
    v16 = v15;
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_280EE6088 != -1)
    {
      swift_once();
    }

    v17 = sub_219BE5434();
    __swift_project_value_buffer(v17, qword_280F627C0);
    v18 = sub_219BE5414();
    v19 = sub_219BF6214();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2186C1000, v18, v19, "ArticleLinkBehaviorConfigManager - could not return content for interlude display due to missing or disabled config", v20, 2u);
      MEMORY[0x21CECF960](v20, -1, -1);
    }

    v6 = 0;
    v8 = 0;
    v10 = 0;
    v12 = 0;
    v14 = 0;
    v16 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  a1[2] = v10;
  a1[3] = v12;
  a1[4] = v14;
  a1[5] = v16;
}

uint64_t sub_219647740(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for PuzzleEmbedMenuConfigMessageHandler()
{
  result = qword_27CC1D630;
  if (!qword_27CC1D630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2196478A4()
{
  sub_21964B938(319, &qword_27CC1D640, MEMORY[0x277D33F10]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21964797C(uint64_t a1, unsigned int *a2)
{
  v68 = sub_219BF1FE4();
  v4 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D336F0];
  sub_21964B6F4(0, &qword_27CC1D658, &unk_27CC1D660, MEMORY[0x277D336F0]);
  v64 = v7;
  MEMORY[0x28223BE20](v7);
  v65 = &v49 - v8;
  sub_21964B938(0, &unk_27CC1D660, v6);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v57 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  v72 = sub_219BF1F44();
  v17 = MEMORY[0x28223BE20](v72);
  v55 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v71 = &v49 - v20;
  v21 = *(a1 + 16);
  if (v21)
  {
    v66 = v14;
    v67 = v16;
    v23 = *(v19 + 16);
    v22 = v19 + 16;
    v61 = v23;
    v51 = (*(v22 + 64) + 32) & ~*(v22 + 64);
    v24 = a1 + v51;
    v63 = *(v22 + 56);
    v60 = *a2;
    v58 = (v4 + 56);
    v59 = (v4 + 104);
    v70 = (v4 + 48);
    v49 = (v4 + 32);
    v52 = (v4 + 8);
    v53 = (v22 - 8);
    v54 = (v22 + 16);
    v56 = MEMORY[0x277D84F90];
    v25 = v57;
    v62 = v22;
    v26 = v65;
    while (1)
    {
      v69 = v21;
      v29 = v25;
      v61(v71, v24, v72);
      v30 = v67;
      sub_219BF1F14();
      v31 = v66;
      v32 = v68;
      (*v59)(v66, v60, v68);
      (*v58)(v31, 0, 1, v32);
      v33 = *(v64 + 48);
      v34 = MEMORY[0x277D336F0];
      sub_21964B7B4(v30, v26, &unk_27CC1D660, MEMORY[0x277D336F0]);
      sub_21964B7B4(v31, v26 + v33, &unk_27CC1D660, v34);
      v35 = *v70;
      if ((*v70)(v26, 1, v32) == 1)
      {
        break;
      }

      v25 = v29;
      sub_21964B7B4(v26, v29, &unk_27CC1D660, MEMORY[0x277D336F0]);
      if (v35(v26 + v33, 1, v32) == 1)
      {
        v27 = MEMORY[0x277D336F0];
        sub_21964B758(v66, &unk_27CC1D660, MEMORY[0x277D336F0]);
        sub_21964B758(v67, &unk_27CC1D660, v27);
        (*v52)(v29, v32);
LABEL_4:
        sub_21964B820(v26, &qword_27CC1D658, &unk_27CC1D660, MEMORY[0x277D336F0]);
        goto LABEL_5;
      }

      v37 = v50;
      (*v49)(v50, v26 + v33, v32);
      sub_21964B9F0(&qword_27CC1AC40, MEMORY[0x277D336F0]);
      v38 = sub_219BF53A4();
      v39 = *v52;
      v40 = v37;
      v25 = v57;
      (*v52)(v40, v68);
      v41 = MEMORY[0x277D336F0];
      sub_21964B758(v66, &unk_27CC1D660, MEMORY[0x277D336F0]);
      sub_21964B758(v67, &unk_27CC1D660, v41);
      v39(v25, v68);
      sub_21964B758(v65, &unk_27CC1D660, v41);
      if (v38)
      {
        goto LABEL_12;
      }

LABEL_5:
      (*v53)(v71, v72);
      v28 = v63;
LABEL_6:
      v24 += v28;
      v21 = v69 - 1;
      if (v69 == 1)
      {
        return v56;
      }
    }

    v36 = MEMORY[0x277D336F0];
    sub_21964B758(v31, &unk_27CC1D660, MEMORY[0x277D336F0]);
    sub_21964B758(v30, &unk_27CC1D660, v36);
    v25 = v29;
    if (v35(v26 + v33, 1, v32) == 1)
    {
      sub_21964B758(v26, &unk_27CC1D660, MEMORY[0x277D336F0]);
LABEL_12:
      v42 = *v54;
      (*v54)(v55, v71, v72);
      v43 = v56;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = v43;
      v73 = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_218C37DA0(0, *(v43 + 16) + 1, 1);
        v45 = v73;
      }

      v47 = *(v45 + 16);
      v46 = *(v45 + 24);
      v28 = v63;
      if (v47 >= v46 >> 1)
      {
        sub_218C37DA0(v46 > 1, v47 + 1, 1);
        v28 = v63;
        v45 = v73;
      }

      *(v45 + 16) = v47 + 1;
      v56 = v45;
      v42((v45 + v51 + v47 * v28), v55, v72);
      v25 = v57;
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2196480AC(uint64_t a1)
{
  v2 = sub_219BF1FE4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v57 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D336F0];
  sub_21964B6F4(0, &qword_27CC1D658, &unk_27CC1D660, MEMORY[0x277D336F0]);
  v64 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v56 - v7;
  sub_21964B938(0, &unk_27CC1D660, v5);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v59 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v56 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v56 - v16;
  MEMORY[0x28223BE20](v15);
  v74 = &v56 - v18;
  v65 = sub_219BF1F44();
  v19 = MEMORY[0x28223BE20](v65);
  v77 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v56 - v21;
  v24 = *(a1 + 16);
  if (v24)
  {
    v67 = v17;
    v68 = v14;
    v26 = *(v22 + 16);
    v25 = v22 + 16;
    v72 = v26;
    v66 = (*(v25 + 64) + 32) & ~*(v25 + 64);
    v27 = a1 + v66;
    v28 = *(v25 + 56);
    v29 = (v3 + 48);
    v63 = *MEMORY[0x277D336E8];
    v61 = (v3 + 56);
    v62 = (v3 + 104);
    v56 = (v3 + 32);
    v58 = (v3 + 8);
    v60 = (v25 - 8);
    v76 = (v25 + 16);
    v78 = MEMORY[0x277D84F90];
    v79 = (v3 + 48);
    v69 = v8;
    v30 = v2;
    v31 = v65;
    v75 = &v56 - v21;
    v73 = v25;
    v71 = v28;
    v26(v23, a1 + v66, v65);
    while (1)
    {
      v35 = v74;
      sub_219BF1F14();
      v36 = *v29;
      v37 = (*v29)(v35, 1, v30);
      sub_21964B758(v35, &unk_27CC1D660, MEMORY[0x277D336F0]);
      if (v37 != 1)
      {
        v70 = v24;
        v43 = v67;
        sub_219BF1F14();
        v44 = v30;
        v45 = v68;
        (*v62)(v68, v63, v44);
        (*v61)(v45, 0, 1, v44);
        v46 = *(v64 + 48);
        v47 = MEMORY[0x277D336F0];
        sub_21964B7B4(v43, v8, &unk_27CC1D660, MEMORY[0x277D336F0]);
        sub_21964B7B4(v45, &v8[v46], &unk_27CC1D660, v47);
        if (v36(v8, 1, v44) == 1)
        {
          v48 = MEMORY[0x277D336F0];
          sub_21964B758(v45, &unk_27CC1D660, MEMORY[0x277D336F0]);
          sub_21964B758(v43, &unk_27CC1D660, v48);
          v49 = v36(&v8[v46], 1, v44);
          v30 = v44;
          v31 = v65;
          if (v49 != 1)
          {
            goto LABEL_4;
          }

          sub_21964B758(v8, &unk_27CC1D660, MEMORY[0x277D336F0]);
          v23 = v75;
          v24 = v70;
        }

        else
        {
          v50 = v59;
          sub_21964B7B4(v8, v59, &unk_27CC1D660, MEMORY[0x277D336F0]);
          v30 = v44;
          if (v36(&v8[v46], 1, v44) == 1)
          {
            v32 = v50;
            v33 = MEMORY[0x277D336F0];
            sub_21964B758(v68, &unk_27CC1D660, MEMORY[0x277D336F0]);
            sub_21964B758(v67, &unk_27CC1D660, v33);
            (*v58)(v32, v44);
            v31 = v65;
LABEL_4:
            sub_21964B820(v8, &qword_27CC1D658, &unk_27CC1D660, MEMORY[0x277D336F0]);
            v23 = v75;
            v24 = v70;
LABEL_5:
            (*v60)(v23, v31);
            v34 = v71;
            goto LABEL_6;
          }

          v51 = v57;
          (*v56)(v57, &v8[v46], v44);
          sub_21964B9F0(&qword_27CC1AC40, MEMORY[0x277D336F0]);
          v52 = sub_219BF53A4();
          v53 = *v58;
          (*v58)(v51, v44);
          v54 = MEMORY[0x277D336F0];
          sub_21964B758(v68, &unk_27CC1D660, MEMORY[0x277D336F0]);
          sub_21964B758(v67, &unk_27CC1D660, v54);
          v53(v50, v44);
          v8 = v69;
          sub_21964B758(v69, &unk_27CC1D660, v54);
          v31 = v65;
          v23 = v75;
          v24 = v70;
          if ((v52 & 1) == 0)
          {
            goto LABEL_5;
          }
        }
      }

      v38 = *v76;
      (*v76)(v77, v23, v31);
      v39 = v78;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v80 = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_218C37DA0(0, *(v39 + 16) + 1, 1);
        v39 = v80;
      }

      v34 = v71;
      v42 = *(v39 + 16);
      v41 = *(v39 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_218C37DA0(v41 > 1, v42 + 1, 1);
        v39 = v80;
      }

      *(v39 + 16) = v42 + 1;
      v78 = v39;
      v38((v39 + v66 + v42 * v34), v77, v31);
      v8 = v69;
      v23 = v75;
LABEL_6:
      v27 += v34;
      --v24;
      v29 = v79;
      if (!v24)
      {
        return v78;
      }

      v72(v23, v27, v31);
    }
  }

  return MEMORY[0x277D84F90];
}

void sub_219648890(uint64_t a1)
{
  v2 = sub_219BF3724();
  v18[3] = v2;
  v18[4] = MEMORY[0x277D33EF8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, a1, v2);
  v4 = objc_allocWithZone(sub_219BF2224());
  v5 = sub_219BF2214();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC7NewsUI235PuzzleEmbedMenuConfigMessageHandler_scriptsManager);
    v8 = Strong;
    swift_unknownObjectRetain();

    v9 = v5;
    [v7 executeScript:v9 completion:0];

    swift_unknownObjectRelease();
  }

  v11 = sub_219BF3714();
  v12 = v10;
  if (v11 == 0x735F6C6165766572 && v10 == 0xED00006572617571 || (sub_219BF78F4() & 1) != 0)
  {

    v13 = 2;
  }

  else if (v11 == 0x775F6C6165766572 && v12 == 0xEB0000000064726FLL || (sub_219BF78F4() & 1) != 0)
  {

    v13 = 1;
  }

  else if (v11 == 0x705F6C6165766572 && v12 == 0xED0000656C7A7A75)
  {

    v13 = 0;
  }

  else
  {
    v17 = sub_219BF78F4();

    v13 = 0;
    if ((v17 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = v15;
      sub_21964B87C(v13);
      swift_unknownObjectRelease();
    }
  }

LABEL_11:
}

uint64_t sub_219648BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v114 = a2;
  sub_21964B938(0, &unk_27CC1D660, MEMORY[0x277D336F0]);
  MEMORY[0x28223BE20](v5 - 8);
  v100 = &v93 - v6;
  sub_21964B938(0, &qword_27CC1D678, MEMORY[0x277D33688]);
  MEMORY[0x28223BE20](v7 - 8);
  v99 = &v93 - v8;
  v116 = sub_219BF1F44();
  v112 = *(v116 - 8);
  v9 = MEMORY[0x28223BE20](v116);
  v98 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v93 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v93 - v15;
  MEMORY[0x28223BE20](v14);
  v115 = &v93 - v17;
  sub_218C3FF38();
  v111 = v18;
  v102 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v97 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v96 = &v93 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v101 = &v93 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v110 = &v93 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v109 = &v93 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v93 - v29;
  v31 = MEMORY[0x277D33F10];
  sub_21964B938(0, &qword_27CC1D640, MEMORY[0x277D33F10]);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v93 - v33;
  v35 = sub_219BF37B4();
  MEMORY[0x28223BE20](v35);
  v37 = &v93 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v38;
  v40 = v31;
  v42 = v41;
  sub_21964B7B4(a1, v34, &qword_27CC1D640, v40);
  if ((*(v39 + 48))(v34, 1, v42) == 1)
  {
    result = sub_21964B758(v34, &qword_27CC1D640, MEMORY[0x277D33F10]);
LABEL_18:
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
LABEL_30:
    *a3 = v63;
    a3[1] = v64;
    a3[2] = v65;
    a3[3] = v66;
    a3[4] = v67;
    a3[5] = v68;
    return result;
  }

  (*(v39 + 32))(v37, v34, v42);
  v44 = *(sub_219BF37A4() + 16);

  v45 = *(sub_219BF37A4() + 16);

  if (v44 != v45)
  {
    result = (*(v39 + 8))(v37, v42);
    goto LABEL_18;
  }

  v93 = v13;
  v94 = v16;
  v95 = a3;
  v46 = sub_219BF37A4();
  result = sub_219BF37A4();
  v114 = result;
  v47 = *(v46 + 16);
  v107 = v42;
  v108 = v39;
  v105 = v47;
  v106 = v37;
  if (!v47)
  {
    v49 = MEMORY[0x277D84F90];
LABEL_20:

LABEL_22:
    if (*(v49 + 16) == 1)
    {
      v69 = v96;
      sub_21964BA94(v49 + ((*(v102 + 80) + 32) & ~*(v102 + 80)), v96);

      v70 = v69;
      v71 = v101;
      sub_21964B98C(v70, v101);
      v72 = v97;
      sub_21964BA94(v71, v97);
      v73 = v112;
      v74 = *(v111 + 48);
      v75 = *(v112 + 32);
      v76 = v94;
      v77 = v116;
      v75(v94, v72, v116);
      v78 = v93;
      v75(v93, v72 + v74, v77);
      v115 = sub_219BF1F04();
      sub_219BF1EC4();
      v79 = sub_219BF1EF4();
      v80 = v99;
      (*(*(v79 - 8) + 56))(v99, 1, 1, v79);
      v81 = sub_219BF1FE4();
      v82 = v100;
      (*(*(v81 - 8) + 56))(v100, 1, 1, v81);
      v83 = v98;
      sub_219BF1F24();

      sub_21964B758(v82, &unk_27CC1D660, MEMORY[0x277D336F0]);
      sub_21964B758(v80, &qword_27CC1D678, MEMORY[0x277D33688]);
      LOBYTE(v74) = MEMORY[0x21CEC8C70](v83, v78);
      v84 = *(v73 + 8);
      v84(v83, v77);
      if (v74)
      {
        v85 = sub_219BF1EA4();
        if (v86)
        {
          v67 = v85;
          v68 = v86;
          v63 = sub_219BF1F04();
          v87 = v76;
          v64 = v88;
          v65 = sub_219BF1EC4();
          v66 = v89;
          v90 = v78;
          v91 = v116;
          v84(v90, v116);
          v84(v87, v91);
          sub_21964BA38(v101);
          result = (*(v108 + 8))(v106, v107);
LABEL_29:
          a3 = v95;
          goto LABEL_30;
        }
      }

      v92 = v116;
      v84(v78, v116);
      v84(v76, v92);
      sub_21964BA38(v101);
      result = (*(v108 + 8))(v106, v107);
    }

    else
    {
      (*(v39 + 8))(v37, v42);
    }

    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    goto LABEL_29;
  }

  v48 = 0;
  v113 = v112 + 16;
  v103 = (v112 + 32);
  v49 = MEMORY[0x277D84F90];
  v104 = v46;
  while (v48 < *(v46 + 16))
  {
    v50 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v51 = *(v112 + 72) * v48;
    v52 = *(v112 + 16);
    result = v52(v115, v46 + v50 + v51, v116);
    v53 = *(v114 + 16);
    if (v48 == v53)
    {

      (*(v112 + 8))(v115, v116);
      v39 = v108;
      goto LABEL_22;
    }

    if (v48 >= v53)
    {
      goto LABEL_32;
    }

    v54 = v114 + v50;
    v55 = *(v111 + 48);
    v56 = v30;
    v57 = v109;
    v58 = v116;
    (*v103)(v109, v115, v116);
    v52(&v57[v55], v54 + v51, v58);
    v59 = v57;
    v30 = v56;
    sub_21964B98C(v59, v56);
    sub_21964B9F0(&unk_27CC1A278, MEMORY[0x277D33690]);
    if (sub_219BF53A4())
    {
      result = sub_21964BA38(v56);
      v42 = v107;
      v39 = v108;
      v37 = v106;
      v46 = v104;
    }

    else
    {
      sub_21964B98C(v56, v110);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v117 = v49;
      v37 = v106;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_218C37DF0(0, *(v49 + 16) + 1, 1);
        v49 = v117;
      }

      v42 = v107;
      v46 = v104;
      v62 = *(v49 + 16);
      v61 = *(v49 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_218C37DF0(v61 > 1, v62 + 1, 1);
        v49 = v117;
      }

      *(v49 + 16) = v62 + 1;
      result = sub_21964B98C(v110, v49 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v62);
      v39 = v108;
    }

    if (v105 == ++v48)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_219649678(void *a1, uint64_t a2)
{
  if (*(a2 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentRightMenuItems))
  {
    v3 = *(a2 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentRightMenuItems);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (*(a2 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentLeftMenuItems))
  {
    v4 = *(a2 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentLeftMenuItems);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v17 = v3;

  result = sub_2191EDAB0(v4);
  if (v17 >> 62)
  {
    result = sub_219BF7214();
    v6 = result;
    if (result)
    {
      goto LABEL_9;
    }

LABEL_27:
  }

  v6 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_27;
  }

LABEL_9:
  if (v6 >= 1)
  {
    v7 = 0;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CECE0F0](v7, v17);
      }

      else
      {
        v10 = *(v17 + 8 * v7 + 32);
      }

      v9 = v10;
      sub_219BE7274();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = v11;
        if (sub_219BE7254() == *a1 && v13 == a1[1])
        {

LABEL_22:
          v15 = a1[3];
          v16 = v9;
          if (v15)
          {
            v15 = sub_219BF53D4();
          }

          [v12 setTitle_];

          if (a1[5])
          {
            v8 = sub_219BF53D4();
          }

          else
          {
            v8 = 0;
          }

          [v12 setAccessibilityLabel_];

          v9 = v8;
          goto LABEL_13;
        }

        v14 = sub_219BF78F4();

        if (v14)
        {
          goto LABEL_22;
        }
      }

LABEL_13:
      ++v7;

      if (v6 == v7)
      {
        goto LABEL_27;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_219649874(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_219649678(a1, Strong);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2196498F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a2;
  ObjectType = swift_getObjectType();
  sub_21964B938(0, &qword_27CC1D670, MEMORY[0x277D33808]);
  MEMORY[0x28223BE20](v5 - 8);
  v88 = v78 - v6;
  v93 = sub_219BF22F4();
  v87 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v92 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE4914();
  v83 = *(v8 - 8);
  v84 = v8;
  MEMORY[0x28223BE20](v8);
  v82 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_219BF28F4();
  v10 = *(v94 - 8);
  v11 = MEMORY[0x28223BE20](v94);
  v91 = v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v78 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v78 - v16;
  *(a3 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentPuzzleBarButtonItems) = sub_219BF2B44();

  v18 = sub_219BF2B64();
  v19 = MEMORY[0x277D84F90];
  v95 = MEMORY[0x277D84F90];
  v20 = *(v18 + 16);
  v85 = a1;
  v86 = a3;
  v89 = v10;
  if (v20)
  {
    v21 = v10 + 16;
    v90 = *(v10 + 16);
    v22 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v79 = v18;
    v23 = v18 + v22;
    v24 = *(v10 + 72);
    do
    {
      v25 = v94;
      v90(v17, v23, v94);
      sub_219BF28A4();
      v26 = (*(v21 - 8))(v17, v25);
      MEMORY[0x21CECC690](v26);
      if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v23 += v24;
      --v20;
    }

    while (v20);
    v27 = v95;

    a3 = v86;
    v10 = v89;
    v19 = MEMORY[0x277D84F90];
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  v79 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentRightMenuItems;
  *(a3 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentRightMenuItems) = v27;

  v28 = sub_219BF2B54();
  v95 = v19;
  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = v10 + 16;
    v31 = *(v10 + 16);
    v32 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v90 = v28;
    v33 = v28 + v32;
    v34 = *(v10 + 72);
    v35 = v94;
    do
    {
      v31(v15, v33, v35);
      sub_219BF28A4();
      v36 = (*(v30 - 8))(v15, v35);
      MEMORY[0x21CECC690](v36);
      if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v78[1] = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v33 += v34;
      --v29;
    }

    while (v29);
    v37 = v95;

    a3 = v86;
    v10 = v89;
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
  }

  *(a3 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentLeftMenuItems) = v37;

  if (!NFInternalBuild())
  {
    goto LABEL_32;
  }

  sub_219BDC734();
  sub_21964B9F0(&qword_27CC21C90, type metadata accessor for PuzzleViewController);
  sub_219BDC7D4();

  if (v95)
  {
    goto LABEL_32;
  }

  v38 = [objc_opt_self() currentTraitCollection];
  v39 = [v38 horizontalSizeClass];

  if (v39 == 2)
  {
    goto LABEL_32;
  }

  v40 = *(a3 + v79);
  if (v40)
  {
    if (v40 >> 62)
    {
      v41 = sub_219BF7214();
      if (v41)
      {
LABEL_21:
        if ((v40 & 0xC000000000000001) != 0)
        {

          v77 = MEMORY[0x21CECE0F0](0, v40);

          v41 = v77;
        }

        else
        {
          if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v41 = *(v40 + 32);
        }
      }
    }

    else
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v41)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v41 = 0;
  }

  v42 = v41;
  v43 = [v42 menu];
  v44 = v43;
  if (v43)
  {
    v45 = [v43 children];
    sub_2186C6148(0, &unk_280E8E710);
    v46 = sub_219BF5924();
  }

  else
  {
    v46 = MEMORY[0x277D84F90];
  }

  sub_2186C6148(0, &qword_280E8DAF0);
  v47 = sub_219BF6C04();
  if (v44)
  {
    sub_218725F94();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C189F0;
    *(inited + 32) = v47;
    v49 = v44;
    v50 = v47;
    *(inited + 40) = sub_2199A12E0();
    v95 = v46;
    sub_2191EEC00(inited);
    sub_2186C6148(0, &unk_280E8E710);
    v51 = sub_219BF5904();

    v52 = [v49 menuByReplacingChildren_];
  }

  else
  {

    v52 = 0;
  }

  [v42 setMenu_];

LABEL_32:
  v53 = sub_219BF2B44();
  v54 = *(v53 + 16);
  if (v54)
  {
    v56 = *(v10 + 16);
    v55 = v10 + 16;
    v57 = *(v55 + 64);
    v85 = v53;
    v58 = v53 + ((v57 + 32) & ~v57);
    v89 = *(v55 + 56);
    v90 = v56;
    v59 = (v55 - 8);
    v60 = v88;
    v61 = (v87 + 48);
    v62 = (v87 + 32);
    v63 = MEMORY[0x277D84F90];
    do
    {
      v64 = v91;
      v65 = v94;
      v90(v91, v58, v94);
      sub_219BF28B4();
      (*v59)(v64, v65);
      v66 = v93;
      if ((*v61)(v60, 1, v93) == 1)
      {
        sub_21964B758(v60, &qword_27CC1D670, MEMORY[0x277D33808]);
      }

      else
      {
        v67 = *v62;
        (*v62)(v92, v60, v66);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_2191F8F90(0, *(v63 + 2) + 1, 1, v63);
        }

        v69 = *(v63 + 2);
        v68 = *(v63 + 3);
        if (v69 >= v68 >> 1)
        {
          v63 = sub_2191F8F90(v68 > 1, v69 + 1, 1, v63);
        }

        *(v63 + 2) = v69 + 1;
        v67(&v63[((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v69], v92, v93);
        v60 = v88;
      }

      v58 += v89;
      --v54;
    }

    while (v54);

    a3 = v86;
  }

  else
  {

    v63 = MEMORY[0x277D84F90];
  }

  *(a3 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentToolbarMenuItems) = v63;

  v70 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_didSetInitialTitle;
  if ((*(a3 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_didSetInitialTitle) & 1) == 0)
  {
    v71 = *(a3 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzle);
    if (v71)
    {
      v72 = [v71 puzzleType];
      *(a3 + v70) = 1;
      sub_2199A5B00(v72);
      swift_unknownObjectRelease();
    }
  }

  v73 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_paywall;
  swift_beginAccess();
  v75 = v83;
  v74 = v84;
  v76 = v82;
  (*(v83 + 16))(v82, a3 + v73, v84);
  LOBYTE(v73) = sub_219BE48A4();
  (*(v75 + 8))(v76, v74);
  if ((v73 & 1) == 0)
  {
    sub_2199A2478(v80);
  }

  sub_2199A77B8(0, 0);
}

uint64_t sub_21964A358(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_2196498F4(a1, a2, Strong);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21964A3E0(void *a1)
{
  v132 = sub_219BF2B74();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v130 = &v120 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v138 = sub_219BF1FE4();
  v137 = *(v138 - 8);
  v3 = MEMORY[0x28223BE20](v138);
  v136 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v135 = &v120 - v5;
  v6 = MEMORY[0x277D33F10];
  sub_21964B6F4(0, &qword_27CC1D648, &qword_27CC1D640, MEMORY[0x277D33F10]);
  v8 = v7;
  MEMORY[0x28223BE20](v7);
  v10 = &v120 - v9;
  sub_21964B938(0, &qword_27CC1D640, v6);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v139 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v133 = &v120 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v120 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v120 - v19;
  v21 = sub_219BF37B4();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v134 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v141 = &v120 - v25;
  v26 = [a1 body];
  v27 = sub_219BF5214();

  v28 = sub_2187A1A2C(v27);

  if (!v28)
  {
    goto LABEL_4;
  }

  sub_219BF3794();
  v29 = v22[6];
  if (v29(v20, 1, v21) == 1)
  {

    sub_21964B758(v20, &qword_27CC1D640, MEMORY[0x277D33F10]);
LABEL_4:
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v30 = sub_219BE5434();
    __swift_project_value_buffer(v30, qword_280F625E0);
    swift_unknownObjectRetain();
    v31 = sub_219BE5414();
    v32 = sub_219BF61F4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v148[0] = v34;
      *v33 = 136315138;
      v35 = [a1 body];
      sub_219BF5214();

      v36 = sub_219BF5224();
      v38 = v37;

      v39 = sub_2186D1058(v36, v38, v148);

      *(v33 + 4) = v39;
      _os_log_impl(&dword_2186C1000, v31, v32, "PuzzleEmbedMenuConfigMessageHandler received invalid message %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x21CECF960](v34, -1, -1);
      MEMORY[0x21CECF960](v33, -1, -1);
    }

    return;
  }

  v40 = v22[4];
  v41 = v141;
  v122 = v22 + 4;
  v121 = v40;
  v40(v141, v20, v21);
  v42 = v22[2];
  v126 = v22 + 2;
  v125 = v42;
  v42(v18, v41, v21);
  v128 = v22;
  v43 = v22[7];
  v124 = v22 + 7;
  v123 = v43;
  v43(v18, 0, 1, v21);
  v129 = v29;
  v44 = v21;
  v45 = OBJC_IVAR____TtC7NewsUI235PuzzleEmbedMenuConfigMessageHandler_lastReceivedConfig;
  v46 = v140;
  swift_beginAccess();
  v47 = *(v8 + 48);
  v48 = MEMORY[0x277D33F10];
  sub_21964B7B4(v18, v10, &qword_27CC1D640, MEMORY[0x277D33F10]);
  v127 = v45;
  v49 = v46 + v45;
  v50 = v44;
  v51 = v129;
  sub_21964B7B4(v49, &v10[v47], &qword_27CC1D640, v48);
  if (v51(v10, 1, v44) == 1)
  {
    sub_21964B758(v18, &qword_27CC1D640, MEMORY[0x277D33F10]);
    if (v51(&v10[v47], 1, v44) == 1)
    {

      sub_21964B758(v10, &qword_27CC1D640, MEMORY[0x277D33F10]);
      v52 = v141;
LABEL_24:
      v74 = v128;
      if (qword_280EE5F80 != -1)
      {
        swift_once();
      }

      v75 = sub_219BE5434();
      __swift_project_value_buffer(v75, qword_280F625E0);
      v76 = sub_219BE5414();
      v77 = sub_219BF6214();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_2186C1000, v76, v77, "No changes detected for the received menu config. Skipping...", v78, 2u);
        MEMORY[0x21CECF960](v78, -1, -1);
      }

      (v74[1])(v52, v50);
      return;
    }

    goto LABEL_14;
  }

  v53 = v133;
  sub_21964B7B4(v10, v133, &qword_27CC1D640, MEMORY[0x277D33F10]);
  if (v51(&v10[v47], 1, v44) == 1)
  {
    sub_21964B758(v18, &qword_27CC1D640, MEMORY[0x277D33F10]);
    (v128[1])(v53, v44);
LABEL_14:
    sub_21964B820(v10, &qword_27CC1D648, &qword_27CC1D640, MEMORY[0x277D33F10]);
    v52 = v141;
    goto LABEL_15;
  }

  v69 = &v10[v47];
  v70 = v134;
  v121(v134, v69, v44);
  sub_21964B9F0(&qword_27CC1D650, MEMORY[0x277D33F10]);
  v71 = sub_219BF53A4();
  v72 = v128[1];
  v72(v70, v44);
  v73 = MEMORY[0x277D33F10];
  sub_21964B758(v18, &qword_27CC1D640, MEMORY[0x277D33F10]);
  v72(v53, v44);
  sub_21964B758(v10, &qword_27CC1D640, v73);
  v52 = v141;
  if (v71)
  {

    goto LABEL_24;
  }

LABEL_15:
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v54 = sub_219BE5434();
  __swift_project_value_buffer(v54, qword_280F625E0);

  v55 = sub_219BE5414();
  v56 = sub_219BF6214();

  v57 = os_log_type_enabled(v55, v56);
  v58 = v140;
  if (v57)
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v148[0] = v60;
    *v59 = 136315138;
    v61 = sub_219BF5224();
    v63 = v62;

    v64 = sub_2186D1058(v61, v63, v148);
    v52 = v141;

    *(v59 + 4) = v64;
    _os_log_impl(&dword_2186C1000, v55, v56, "PuzzleEmbedMenuConfigMessageHandler received: %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v60);
    MEMORY[0x21CECF960](v60, -1, -1);
    MEMORY[0x21CECF960](v59, -1, -1);
  }

  else
  {
  }

  v142 = MEMORY[0x277D84FA0];
  v65 = sub_219BF37A4();
  v66 = MEMORY[0x277D336D8];
  v67 = sub_21964797C(v65, MEMORY[0x277D336D8]);

  v68 = v127;
  if (v129((v58 + v127), 1, v44))
  {

LABEL_30:
    v82 = *v66;
    v83 = v137;
    v84 = v136;
    v85 = v138;
    (*(v137 + 104))(v136, v82, v138);
    v86 = v135;
    sub_21949B8D0(v135, v84);
    (*(v83 + 8))(v86, v85);
    goto LABEL_31;
  }

  v79 = v134;
  v125(v134, v58 + v68, v44);
  v80 = sub_219BF37A4();
  (v128[1])(v79, v44);
  v81 = sub_21964797C(v80, MEMORY[0x277D336D8]);

  LOBYTE(v80) = sub_21941B0F0(v67, v81);

  if ((v80 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_31:
  v87 = sub_219BF37A4();
  v88 = MEMORY[0x277D336E0];
  v89 = sub_21964797C(v87, MEMORY[0x277D336E0]);

  if (v129((v58 + v68), 1, v44))
  {
    goto LABEL_32;
  }

  v90 = v134;
  v125(v134, v58 + v68, v44);
  v91 = sub_219BF37A4();
  v92 = v128[1];
  v92(v90, v44);
  v93 = sub_21964797C(v91, MEMORY[0x277D336E0]);

  LOBYTE(v91) = sub_21941B0F0(v89, v93);

  if ((v91 & 1) == 0)
  {
    goto LABEL_36;
  }

  v94 = sub_219BF37A4();
  v95 = sub_2196480AC(v94);

  v96 = v127;
  if (v129((v58 + v127), 1, v44))
  {
LABEL_32:

LABEL_36:
    v100 = *v88;
    v101 = v137;
    v102 = v136;
    v103 = v138;
    (*(v137 + 104))(v136, v100, v138);
    v104 = v135;
    sub_21949B8D0(v135, v102);
    (*(v101 + 8))(v104, v103);
    goto LABEL_37;
  }

  v97 = v134;
  v125(v134, v58 + v96, v44);
  v98 = sub_219BF37A4();
  v92(v97, v44);
  v99 = sub_2196480AC(v98);

  LOBYTE(v98) = sub_21941B0F0(v95, v99);

  if ((v98 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_37:
  v105 = MEMORY[0x277D33F10];
  v106 = v127;
  v107 = v139;
  sub_21964B7B4(v58 + v127, v139, &qword_27CC1D640, MEMORY[0x277D33F10]);
  sub_219648BA8(v107, v52, &v143);
  sub_21964B758(v107, &qword_27CC1D640, v105);
  v108 = v147;
  if (v147)
  {
    v109 = v143;
    v138 = v144;
    v110 = v145;
    v111 = v146;
    v112 = v142;

    v114 = sub_21947C254(v113, v112);

    if (v114)
    {

      if (swift_unknownObjectWeakLoadStrong())
      {
        v148[0] = v111;
        v148[1] = v108;
        v148[2] = v109;
        v149 = v138;
        v150 = v110;
        sub_219649874(v148);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v118 = v139;
      v121(v139, v141, v50);
      v123(v118, 0, 1, v50);
      v119 = v127;
      swift_beginAccess();
      sub_21964B66C(v118, v58 + v119);
      swift_endAccess();
      return;
    }

    v52 = v141;
    v106 = v127;
  }

  v115 = v139;
  v125(v139, v52, v50);
  v123(v115, 0, 1, v50);
  swift_beginAccess();
  sub_21964B66C(v115, v58 + v106);
  swift_endAccess();
  v116 = v142;
  *(v58 + OBJC_IVAR____TtC7NewsUI235PuzzleEmbedMenuConfigMessageHandler_lastPositionChanges) = v142;

  swift_getObjectType();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v117 = v130;
  sub_219BF4824();

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_21964A358(v117, v116);
    swift_unknownObjectRelease();
  }

  (*(v131 + 8))(v117, v132);
  (v128[1])(v52, v50);
}

uint64_t sub_21964B66C(uint64_t a1, uint64_t a2)
{
  sub_21964B938(0, &qword_27CC1D640, MEMORY[0x277D33F10]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_21964B6F4(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_21964B938(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_21964B758(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_21964B938(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21964B7B4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_21964B938(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21964B820(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_21964B6F4(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_21964B87C(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_beginAccess();
      sub_219499DFC(&v3, a1);
      swift_endAccess();
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_21964B938(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_21964B98C(uint64_t a1, uint64_t a2)
{
  sub_218C3FF38();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21964B9F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21964BA38(uint64_t a1)
{
  sub_218C3FF38();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21964BA94(uint64_t a1, uint64_t a2)
{
  sub_218C3FF38();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21964BB1C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_21964BBE8()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_21964BCB0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

double sub_21964BDA4@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_219BEEA84();
  v24 = *(v5 - 8);
  v6 = v24;
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AudioPlaylistFeedContentConfig();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2[1];
  v23[0] = *v2;
  v23[1] = v12;
  sub_21964C058(a1, v11);
  v13 = type metadata accessor for AudioPlaylistFeedServiceConfig();
  v14 = *(v2 + v13[6]);
  v15 = *(v2 + v13[7]);
  v16 = *(v6 + 16);
  v17 = v2 + v13[9];
  v18 = v25;
  v16(v8, v17, v25);
  *a2 = v23[0];
  *(a2 + 1) = v12;
  sub_21964C058(v11, &a2[v13[5]]);
  *&a2[v13[6]] = v14;
  *&a2[v13[7]] = v15;
  v19 = v18;
  v16(&a2[v13[9]], v8, v18);
  v20 = v14;
  swift_unknownObjectRetain();

  v21 = [v15 autoRefreshMinimumInterval];
  (*(v24 + 8))(v8, v19);
  sub_21964C0BC(v11);
  result = v21;
  *&a2[v13[8]] = v21;
  return result;
}

unint64_t sub_21964C004()
{
  result = qword_27CC1D688;
  if (!qword_27CC1D688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D688);
  }

  return result;
}

uint64_t sub_21964C058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioPlaylistFeedContentConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21964C0BC(uint64_t a1)
{
  v2 = type metadata accessor for AudioPlaylistFeedContentConfig();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for AudioPlaylistFeedRefreshRequest()
{
  result = qword_27CC1D690;
  if (!qword_27CC1D690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21964C1BC()
{
  result = sub_219BF0BD4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id FeedViewContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void FeedViewContext.set(presentationReason:)(unint64_t a1)
{
  if (a1 >= 5)
  {
    sub_219BF7974();
    __break(1u);
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
    v3 = OBJC_IVAR___TSFeedViewContext_presentationReason;
    swift_beginAccess();
    v4 = *(v1 + v3);
    *(v1 + v3) = v2;
  }
}

Swift::Void __swiftcall FeedViewContext.set(externalAnalyticsFeedReferrer:)(NewsUI2::FeedViewReferrer externalAnalyticsFeedReferrer)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v3 = OBJC_IVAR___TSFeedViewContext_externalAnalyticsFeedReferrer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
}

void FeedViewContext.set(feedPickerSection:)(unint64_t a1)
{
  if (a1 >= 6)
  {
    sub_219BF7974();
    __break(1u);
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
    v3 = OBJC_IVAR___TSFeedViewContext_feedPickerSection;
    swift_beginAccess();
    v4 = *(v1 + v3);
    *(v1 + v3) = v2;
  }
}

Swift::Void __swiftcall FeedViewContext.set(showSubscribedAlert:)(Swift::Bool showSubscribedAlert)
{
  v3 = OBJC_IVAR___TSFeedViewContext_showSubscribedAlert;
  swift_beginAccess();
  *(v1 + v3) = showSubscribedAlert;
}

uint64_t FeedViewContext.feedTagType.getter()
{
  v1 = v0 + OBJC_IVAR___TSFeedViewContext_feedTagType;
  swift_beginAccess();
  return *v1;
}

uint64_t FeedViewContext.feedTagType.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___TSFeedViewContext_feedTagType;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t FeedViewContext.openedFromNews.getter()
{
  v1 = OBJC_IVAR___TSFeedViewContext_openedFromNews;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t FeedViewContext.openedFromNews.setter(char a1)
{
  v3 = OBJC_IVAR___TSFeedViewContext_openedFromNews;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *FeedViewContext.presentationReason.getter()
{
  v1 = OBJC_IVAR___TSFeedViewContext_presentationReason;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *FeedViewContext.feedPickerSection.getter()
{
  v1 = OBJC_IVAR___TSFeedViewContext_feedPickerSection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *FeedViewContext.feedPickerType.getter()
{
  v1 = OBJC_IVAR___TSFeedViewContext_feedPickerType;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *FeedViewContext.displayRank.getter()
{
  v1 = OBJC_IVAR___TSFeedViewContext_displayRank;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *FeedViewContext.externalAnalyticsFeedReferrer.getter()
{
  v1 = OBJC_IVAR___TSFeedViewContext_externalAnalyticsFeedReferrer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *FeedViewContext.previousArticleVersion.getter()
{
  v1 = OBJC_IVAR___TSFeedViewContext_previousArticleVersion;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t FeedViewContext.showSubscribedAlert.getter()
{
  v1 = OBJC_IVAR___TSFeedViewContext_showSubscribedAlert;
  swift_beginAccess();
  return *(v0 + v1);
}

void *FeedViewContext.referral.getter()
{
  v1 = OBJC_IVAR___TSFeedViewContext_referral;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void FeedViewContext.referral.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___TSFeedViewContext_referral;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t FeedViewContext.sourceURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___TSFeedViewContext_sourceURL;
  swift_beginAccess();
  return sub_2188383F8(v1 + v3, a1);
}

uint64_t FeedViewContext.sourceURL.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___TSFeedViewContext_sourceURL;
  swift_beginAccess();
  sub_218FA6590(a1, v1 + v3);
  return swift_endAccess();
}

void *FeedViewContext.maximumAdRequestsForCurrentAdPreviewID.getter()
{
  v1 = OBJC_IVAR___TSFeedViewContext_maximumAdRequestsForCurrentAdPreviewID;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void FeedViewContext.maximumAdRequestsForCurrentAdPreviewID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___TSFeedViewContext_maximumAdRequestsForCurrentAdPreviewID;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_21964D60C(uint64_t a1, uint64_t *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v2 + v5);
  *(v2 + v5) = v4;
}

void sub_21964D690(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v8 = a1;
  v9 = [v7 initWithInt_];
  v10 = *a4;
  swift_beginAccess();
  v11 = *&v8[v10];
  *&v8[v10] = v9;
}

void FeedViewContext.set(feedPickerType:)(unint64_t a1)
{
  if (a1 >= 4)
  {
    sub_219BF7974();
    __break(1u);
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
    v3 = OBJC_IVAR___TSFeedViewContext_feedPickerType;
    swift_beginAccess();
    v4 = *(v1 + v3);
    *(v1 + v3) = v2;
  }
}

uint64_t FeedViewContext.set(sourceURL:)(uint64_t a1)
{
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDB954();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = OBJC_IVAR___TSFeedViewContext_sourceURL;
  swift_beginAccess();
  sub_218FA6590(v5, v1 + v8);
  return swift_endAccess();
}

id FeedViewContext.set(referral:)(void *a1)
{
  v2 = OBJC_IVAR___TSFeedViewContext_referral;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;

  return a1;
}

void sub_21964DBA0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

uint64_t sub_21964DC08(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

void sub_21964DC84(uint64_t a1, uint64_t *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v2 + v5);
  *(v2 + v5) = v4;
}

void sub_21964DD08(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v8 = a1;
  v9 = [v7 initWithInteger_];
  v10 = *a4;
  swift_beginAccess();
  v11 = *&v8[v10];
  *&v8[v10] = v9;
}

uint64_t FeedViewContext.set(feedTagType:)(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___TSFeedViewContext_feedTagType;
  result = swift_beginAccess();
  *v3 = a1;
  *(v3 + 8) = 0;
  return result;
}

id FeedViewContext.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR___TSFeedViewContext_feedTagType];
  *v2 = 0;
  v2[8] = 1;
  v0[OBJC_IVAR___TSFeedViewContext_openedFromNews] = 2;
  *&v0[OBJC_IVAR___TSFeedViewContext_presentationReason] = 0;
  *&v0[OBJC_IVAR___TSFeedViewContext_feedPickerSection] = 0;
  *&v0[OBJC_IVAR___TSFeedViewContext_feedPickerType] = 0;
  *&v0[OBJC_IVAR___TSFeedViewContext_displayRank] = 0;
  *&v0[OBJC_IVAR___TSFeedViewContext_externalAnalyticsFeedReferrer] = 0;
  v3 = &v0[OBJC_IVAR___TSFeedViewContext_previousArticleID];
  *v3 = 0;
  v3[1] = 0;
  *&v0[OBJC_IVAR___TSFeedViewContext_previousArticleVersion] = 0;
  v0[OBJC_IVAR___TSFeedViewContext_showSubscribedAlert] = 0;
  *&v0[OBJC_IVAR___TSFeedViewContext_referral] = 0;
  v4 = OBJC_IVAR___TSFeedViewContext_sourceURL;
  v5 = sub_219BDB954();
  (*(*(v5 - 8) + 56))(&v0[v4], 1, 1, v5);
  v6 = &v0[OBJC_IVAR___TSFeedViewContext_title];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v0[OBJC_IVAR___TSFeedViewContext_tagName];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v0[OBJC_IVAR___TSFeedViewContext_sourceApplication];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v0[OBJC_IVAR___TSFeedViewContext_userActivityType];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v0[OBJC_IVAR___TSFeedViewContext_sourceSearchText];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v0[OBJC_IVAR___TSFeedViewContext_adPreviewID];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v0[OBJC_IVAR___TSFeedViewContext_adPreviewSessionID];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v0[OBJC_IVAR___TSFeedViewContext_adQToken];
  *v13 = 0;
  v13[1] = 0;
  *&v0[OBJC_IVAR___TSFeedViewContext_maximumAdRequestsForCurrentAdPreviewID] = 0;
  v15.receiver = v0;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

id FeedViewContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for FeedViewContext()
{
  result = qword_280EDA708;
  if (!qword_280EDA708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21964E210()
{
  sub_21873F65C(319);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_21964E304()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    v3 = objc_allocWithZone(MEMORY[0x277D75348]);
    v9[4] = sub_21964E5A0;
    v9[5] = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_218FEA284;
    v9[3] = &block_descriptor_150;
    v4 = _Block_copy(v9);
    v5 = [v3 initWithDynamicProvider_];
    _Block_release(v4);

    v6 = *(v0 + 56);
    *(v0 + 56) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

id sub_21964E434(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 secondarySystemBackgroundColor];
  v4 = [v2 systemBackgroundColor];
  v5 = [a1 userInterfaceStyle];
  if (v5 == 2)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (v5 == 2)
  {
    v7 = v4;
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

id sub_21964E4EC(void *a1, void *a2, SEL *a3, SEL *a4)
{
  v7 = [a1 userInterfaceStyle];
  if (v7 == 2)
  {
    if (a2)
    {
      result = [a2 *a4];
      if (!result)
      {
        return result;
      }

      goto LABEL_8;
    }

    return 0;
  }

  if (v7 != 1 || !a2)
  {
    return 0;
  }

  result = [a2 *a3];
  if (result)
  {
LABEL_8:
    v9 = result;
    v10 = [result ne_color];

    return v10;
  }

  return result;
}

uint64_t sub_21964E5B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter()
{
  result = qword_280E93F40;
  if (!qword_280E93F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21964E660()
{
  sub_2186EC3A4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs();
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

uint64_t sub_21964E704()
{
  v0 = sub_219BF1934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter();
  v20 = 4;
  sub_2186E3B14();
  v18 = sub_219BEE964();
  sub_2186E4C38(0, &unk_280E8B8B0, sub_218C6086C, MEMORY[0x277D84560]);
  sub_218C6086C(0);
  v17 = v8;
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09BA0;
  sub_2186EC3A4();
  sub_219BEDD14();
  (*(v1 + 16))(v3, &v7[*(v5 + 28)], v0);
  sub_2188176C4(v7, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData);
  v12 = sub_219BF1784();
  v14 = v13;
  (*(v1 + 8))(v3, v0);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v14;
  sub_2186F91B8(0, &unk_280E91220, MEMORY[0x277D328E0]);
  swift_allocObject();
  *(v11 + v10) = sub_219BEFB94();
  (*(v9 + 104))(v11 + v10, *MEMORY[0x277D32308], v17);
  v19 = v18;
  sub_2191EE154(v11);
  return v19;
}

uint64_t sub_21964EA40(uint64_t a1)
{
  v3 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE3204();
  sub_21965127C(v1, v6, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18[1] = v7 + v5;
  v8 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  sub_219651034(v6, v9 + v7);
  *(v9 + v8) = a1;

  v10 = sub_219BE2E54();
  sub_219BF2754();
  sub_219BE2F64();

  v11 = v18[0];
  sub_21965127C(v18[0], v6, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter);
  v12 = swift_allocObject();
  sub_219651034(v6, v12 + v7);
  *(v12 + v8) = a1;

  v13 = sub_219BE2E54();
  sub_218C5FB88();
  sub_219BE2F74();

  sub_21965127C(v11, v6, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter);
  v14 = swift_allocObject();
  sub_219651034(v6, v14 + v7);
  v15 = sub_219BE2E54();
  v16 = sub_219BE3064();

  return v16;
}

uint64_t sub_21964ECF0(uint64_t a1, uint64_t a2)
{
  v99 = a2;
  v111 = a1;
  v3 = MEMORY[0x277D83D88];
  sub_2186E4C38(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v104 = &v77 - v5;
  sub_2186E4C38(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v103 = &v77 - v7;
  sub_2186E4C38(0, &unk_280E919B0, sub_2186E3B14, v3);
  MEMORY[0x28223BE20](v8 - 8);
  v102 = &v77 - v9;
  v10 = sub_219BF2AB4();
  v108 = *(v10 - 8);
  v109 = v10;
  MEMORY[0x28223BE20](v10);
  v105 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF2034();
  v106 = *(v12 - 8);
  v107 = v12;
  MEMORY[0x28223BE20](v12);
  v115 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_219BEF9C4();
  v94 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v95 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_219BEF564();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4C38(0, &unk_280E90FA0, MEMORY[0x277D32C48], v3);
  MEMORY[0x28223BE20](v16 - 8);
  v88 = &v77 - v17;
  v87 = sub_219BEFBD4();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v84 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BF0BD4();
  MEMORY[0x28223BE20](v19 - 8);
  v80 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4C38(0, &qword_280E90300, MEMORY[0x277D33AA8], v3);
  MEMORY[0x28223BE20](v21 - 8);
  v110 = &v77 - v22;
  v98 = sub_219BF2774();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v113 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A89A94(0);
  MEMORY[0x28223BE20](v24 - 8);
  v101 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FE720();
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData();
  v30 = v29 - 8;
  v85 = v29 - 8;
  v31 = MEMORY[0x28223BE20](v29);
  v89 = &v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v77 - v33;
  v35 = sub_219BF1934();
  v36 = *(v35 - 8);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v77 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v112 = &v77 - v40;
  sub_2186EC3A4();
  v82 = v41;
  sub_219BEDD14();
  (*(v36 + 16))(v39, &v34[*(v30 + 28)], v35);
  v83 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData;
  sub_2188176C4(v34, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData);
  sub_219BEDCA4();
  v42 = sub_219BEC004();
  (*(*(v42 - 8) + 56))(v28, 1, 1, v42);
  sub_218A42400(0);
  v44 = v101;
  (*(*(v43 - 8) + 56))(v101, 1, 1, v43);
  sub_219BF1764();

  sub_2188176C4(v44, sub_218A89A94);
  sub_2188176C4(v28, sub_2186FE720);
  v45 = *(v36 + 8);
  v100 = v36 + 8;
  v101 = v35;
  v90 = v45;
  v45(v39, v35);
  v46 = v111;
  sub_219BEF134();
  v78 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter();
  v47 = *(v78 + 20);
  v77 = v2;
  v48 = v2 + v47;
  v79 = v2 + v47;
  v81 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs();
  v114[3] = v81;
  v114[4] = sub_21964E5B8(&qword_280E94F08, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v114);
  sub_21965127C(v48, boxed_opaque_existential_1, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs);
  v50 = v110;
  sub_219BF2AC4();
  v51 = sub_219BF2AD4();
  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  sub_2196507B4(v46);
  v52 = *(v99 + 8);

  v53 = sub_219BEF0A4();
  v54 = sub_21921D080(v53);

  v55 = sub_219BEF074();
  v56 = sub_21921D080(v55);

  sub_2194796A0(v56, v54);
  (*(v86 + 104))(v84, *MEMORY[0x277D32930], v87);
  v57 = sub_219BF02F4();
  (*(*(v57 - 8) + 56))(v88, 1, 1, v57);
  (*(v92 + 104))(v91, *MEMORY[0x277D32670], v93);
  (v94[13])(v95, *MEMORY[0x277D32840], v96);

  v58 = v113;
  v110 = v52;
  sub_219BF2764();
  v59 = (v77 + *(v78 + 24));
  v60 = v59[3];
  v95 = v59[4];
  v96 = v60;
  v94 = __swift_project_boxed_opaque_existential_1(v59, v60);
  sub_219B6CEDC(v112, v115);
  sub_2186E3B14();
  v62 = v61;
  v63 = *(v61 - 8);
  v64 = v102;
  (*(v63 + 16))(v102, v79, v61);
  (*(v63 + 56))(v64, 0, 1, v62);
  v65 = sub_219BF35D4();
  (*(*(v65 - 8) + 56))(v103, 1, 1, v65);
  LOBYTE(v114[0]) = 4;
  sub_2186F91B8(0, &qword_280E90058, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  v66 = v104;
  v67 = v89;
  sub_219BEDD14();
  sub_2188176C4(v67, v83);
  v68 = v97;
  v69 = v98;
  (*(v97 + 16))(v66, v58, v98);
  v70 = v68;
  v71 = v69;
  (*(v68 + 56))(v66, 0, 1, v69);
  v72 = qword_280E8D920;
  *MEMORY[0x277D30B70];
  if (v72 != -1)
  {
    swift_once();
  }

  qword_280F617C8;
  v73 = v105;
  sub_219BF2A84();
  v74 = v112;
  v75 = sub_219BF2184();
  (*(v108 + 8))(v73, v109);
  (*(v106 + 8))(v115, v107);
  (*(v70 + 8))(v113, v71);
  v90(v74, v101);
  return v75;
}

uint64_t sub_21964FBF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_21964FC50(a2, *a1, a3);
  sub_218C5FB88();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21964FC50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a1;
  sub_2186E4C38(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v79 = &v63 - v6;
  v72 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v72);
  v73 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEF554();
  v70 = *(v8 - 8);
  v71 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v76 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v74 = &v63 - v11;
  v12 = sub_219BED8D4();
  v77 = *(v12 - 8);
  v78 = v12;
  MEMORY[0x28223BE20](v12);
  v75 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FE720();
  MEMORY[0x28223BE20](v14 - 8);
  v69 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7A90C(0);
  MEMORY[0x28223BE20](v16 - 8);
  v68 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7A940(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7A974(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DCF58();
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BF1904();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v63 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  MEMORY[0x28223BE20](v35);
  v66 = v36;
  v67 = &v63 - v37;
  sub_219BF2734();
  v38 = sub_219BDBD34();
  v39 = v26;
  (*(*(v38 - 8) + 56))(v26, 1, 1, v38);
  v83 = a2;
  sub_219BF2734();
  v40 = sub_219BF18D4();
  v41 = *(v28 + 8);
  v41(v34, v27);
  if (v40 >> 62)
  {
    result = sub_219BF7214();
    v82 = a3;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v43 = 0;
    goto LABEL_9;
  }

  result = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v82 = a3;
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v40 & 0xC000000000000001) != 0)
  {
    MEMORY[0x21CECE0F0](0, v40);
  }

  else
  {
    if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_20;
    }

    swift_unknownObjectRetain();
  }

  swift_getObjectType();
  v43 = sub_219BF6864();
  swift_unknownObjectRelease();
LABEL_9:
  sub_219BF2734();
  v44 = sub_219BF18D4();
  v41(v31, v27);
  if (v44 >> 62)
  {
    result = sub_219BF7214();
  }

  else
  {
    result = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v65 = v41;
  v64 = v27;
  if (!result)
  {
    goto LABEL_15;
  }

  if ((v44 & 0xC000000000000001) != 0)
  {
    MEMORY[0x21CECE0F0](0, v44);
    goto LABEL_15;
  }

  if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
LABEL_15:
    v45 = v43;

    v46 = sub_219BF1AD4();
    (*(*(v46 - 8) + 56))(v23, 1, 1, v46);
    v47 = sub_219BEFC64();
    (*(*(v47 - 8) + 56))(v20, 1, 1, v47);
    v48 = sub_219BF4334();
    v49 = v68;
    (*(*(v48 - 8) + 56))(v68, 1, 1, v48);
    v50 = sub_219BEC004();
    v51 = v69;
    (*(*(v50 - 8) + 56))(v69, 1, 1, v50);
    v52 = v66;
    v53 = v67;
    sub_219BF1854();

    swift_unknownObjectRelease();
    sub_2188176C4(v51, sub_2186FE720);
    sub_2188176C4(v49, sub_218D7A90C);
    sub_2188176C4(v20, sub_218D7A940);
    sub_2188176C4(v23, sub_218D7A974);
    sub_2188176C4(v39, sub_2186DCF58);
    v54 = v64;
    v55 = v65;
    v65(v52, v64);
    v83 = sub_219BF2744();
    v55(v53, v54);
    sub_2186EC3A4();
    v57 = v56;
    v58 = v81;
    v69 = sub_219BEDCB4();
    sub_219BEDCC4();
    v59 = v73;
    sub_219BEDD14();
    (*(v70 + 16))(v76, v59 + *(v72 + 28), v71);
    sub_2188176C4(v59, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData);
    type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter();
    sub_2186E3B14();
    sub_219BEE9B4();
    sub_219BEE984();
    sub_219BEE9D4();
    type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs();
    sub_2186F91B8(0, &qword_280E91830, MEMORY[0x277D32318]);
    sub_219BEEC84();
    v60 = v75;
    sub_219BED834();
    v61 = v82;
    (*(*(v57 - 8) + 16))(v82, v58, v57);
    v62 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
    (*(v77 + 32))(v61 + *(v62 + 20), v60, v78);
    type metadata accessor for MagazineFeedGroup();
    return swift_storeEnumTagMultiPayload();
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2196506C0()
{
  type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter();
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  type metadata accessor for MagazineFeedGroup();
  sub_21964E5B8(&qword_280ED5E20, type metadata accessor for MagazineFeedGroup);
  return sub_219BEF194();
}

uint64_t sub_2196507B4(uint64_t a1)
{
  v24 = a1;
  v1 = sub_219BF3924();
  v2 = *(v1 - 8);
  v3 = v2;
  v4 = MEMORY[0x28223BE20](v1);
  v21 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v20 = &v19 - v6;
  v23 = sub_219BF0BD4();
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4C38(0, &unk_280E8B7B0, MEMORY[0x277D33FB8], MEMORY[0x277D84560]);
  v10 = *(v2 + 72);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C0B8C0;
  v13 = *MEMORY[0x277D33F90];
  v22 = v3;
  v14 = *(v3 + 104);
  v14(v12 + v11, v13, v1);
  v14(v12 + v11 + v10, *MEMORY[0x277D33FA8], v1);
  v14(v12 + v11 + 2 * v10, *MEMORY[0x277D33FB0], v1);
  v15 = sub_2194B2A30(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v26 = v15;
  type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter();
  type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  (*(v7 + 8))(v9, v23);
  if (v25 == 1)
  {
    v16 = v21;
    v14(v21, *MEMORY[0x277D33F98], v1);
    v17 = v20;
    sub_2194995E4(v20, v16);
    (*(v22 + 8))(v17, v1);
  }

  return v26;
}

uint64_t sub_219650AF0()
{
  sub_2186E4C38(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_219650B70@<X0>(uint64_t *a1@<X8>)
{
  sub_2186EC3A4();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x3000000000000000;
  return result;
}

uint64_t sub_219650BE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs();
  a2[4] = sub_21964E5B8(&qword_280E94EF8, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs);
  a2[5] = sub_21964E5B8(&qword_280E94F00, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_21965127C(v2 + v4, boxed_opaque_existential_1, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs);
}

uint64_t sub_219650CB0()
{
  sub_2186EC3A4();

  return sub_219BEDCA4();
}

uint64_t sub_219650CDC@<X0>(uint64_t *a1@<X8>)
{
  sub_2186E4C38(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186EC3A4();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2188176C4(inited + 32, sub_2188317B0);
  sub_2196512E4(0);
  a1[3] = v5;
  a1[4] = sub_21964E5B8(&qword_280EE75D8, sub_2196512E4);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_219650E60()
{
  sub_21964E5B8(&qword_280E93F58, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_219651034(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219651098(_OWORD *a1)
{
  v3 = *(type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = a1[3];
  v8[2] = a1[2];
  v8[3] = v5;
  v8[4] = a1[4];
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  return sub_21964ECF0(v4, v8);
}

uint64_t sub_21965127C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219651418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v5[25] = type metadata accessor for AudioPlaylistFeedLayoutModel();
  v5[26] = swift_task_alloc();
  v6 = sub_219BEF974();
  v5[27] = v6;
  v5[28] = *(v6 - 8);
  v5[29] = swift_task_alloc();
  sub_218C3F654();
  v5[30] = v7;
  v5[31] = *(v7 - 8);
  v5[32] = swift_task_alloc();
  v8 = sub_219BE9FA4();
  v5[33] = v8;
  v5[34] = *(v8 - 8);
  v5[35] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280EE9048, MEMORY[0x277D6D1A0]);
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v9 = sub_219BDCB14();
  v5[40] = v9;
  v5[41] = *(v9 - 8);
  v5[42] = swift_task_alloc();
  v10 = sub_219BEE074();
  v5[43] = v10;
  v5[44] = *(v10 - 8);
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E91990, MEMORY[0x277D32218]);
  v5[47] = swift_task_alloc();
  v11 = sub_219BED8D4();
  v5[48] = v11;
  v5[49] = *(v11 - 8);
  v5[50] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E91548, MEMORY[0x277D325F8]);
  v5[51] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E924F8, MEMORY[0x277D31DD0]);
  v5[52] = swift_task_alloc();
  v12 = sub_219BF1904();
  v5[53] = v12;
  v5[54] = *(v12 - 8);
  v5[55] = swift_task_alloc();
  v5[56] = type metadata accessor for ArticleListAudioPlaylistFeedGroup();
  v5[57] = swift_task_alloc();
  type metadata accessor for AudioPlaylistFeedSectionDescriptor();
  v5[58] = swift_task_alloc();
  sub_21965358C();
  v5[59] = v13;
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  sub_218C3F6E8();
  v5[62] = v14;
  v5[63] = *(v14 - 8);
  v5[64] = swift_task_alloc();
  sub_219653614();
  v5[65] = swift_task_alloc();
  v15 = sub_219BE8944();
  v5[66] = v15;
  v5[67] = *(v15 - 8);
  v5[68] = swift_task_alloc();
  v16 = sub_219BE8164();
  v5[69] = v16;
  v5[70] = *(v16 - 8);
  v5[71] = swift_task_alloc();
  sub_219BEF6B4();
  v5[72] = swift_task_alloc();
  v17 = sub_219BEF594();
  v5[73] = v17;
  v5[74] = *(v17 - 8);
  v5[75] = swift_task_alloc();
  sub_219BEF5B4();
  v5[76] = swift_task_alloc();
  sub_219BEF604();
  v5[77] = swift_task_alloc();
  sub_219BEF644();
  v5[78] = swift_task_alloc();
  sub_219BEF664();
  v5[79] = swift_task_alloc();
  v18 = sub_219BEF694();
  v5[80] = v18;
  v5[81] = *(v18 - 8);
  v5[82] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E91358, MEMORY[0x277D326A8]);
  v5[83] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E91368, MEMORY[0x277D32698]);
  v5[84] = swift_task_alloc();
  v19 = sub_219BEF6C4();
  v5[85] = v19;
  v5[86] = *(v19 - 8);
  v5[87] = swift_task_alloc();
  sub_219BDCAF4();
  v5[88] = swift_task_alloc();
  v20 = sub_219BDCAE4();
  v5[89] = v20;
  v5[90] = *(v20 - 8);
  v5[91] = swift_task_alloc();
  v21 = sub_219BDCAB4();
  v5[92] = v21;
  v5[93] = *(v21 - 8);
  v5[94] = swift_task_alloc();
  sub_2189BD6B0(0, &unk_280E90C60, MEMORY[0x277D32FE0]);
  v5[95] = swift_task_alloc();
  v22 = sub_219BF0634();
  v5[96] = v22;
  v5[97] = *(v22 - 8);
  v5[98] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219651E68, 0, 0);
}

uint64_t sub_219651E68()
{
  v96 = v0[96];
  v98 = v0[97];
  v1 = v0[95];
  v2 = v0[94];
  v3 = v0[93];
  v89 = v0[98];
  v4 = v0[92];
  v121 = v0[91];
  v104 = v0[90];
  v110 = v0[89];
  v94 = v0[87];
  v100 = v0[86];
  v102 = v0[85];
  v74 = v0[84];
  v76 = v0[83];
  v5 = v0[81];
  v77 = v0[82];
  v78 = v0[80];
  v6 = v0[74];
  v83 = v0[75];
  v85 = v0[73];
  v103 = v0[70];
  v106 = v0[69];
  v108 = v0[71];
  v111 = v0[67];
  v113 = v0[66];
  v114 = v0[68];
  v7 = v0[22];
  v115 = v0[21];
  v118 = v0[65];
  (*(v98 + 104))();
  v8 = sub_219BF0BD4();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  (*(v3 + 104))(v2, *MEMORY[0x277D6D178], v4);
  sub_219BE8004();
  sub_219BF6B74();
  sub_219BE8004();
  sub_219BE8044();
  sub_219BE7FD4();
  sub_219BE8064();
  sub_219BE8034();
  sub_219BE7FF4();
  sub_219BE8024();
  sub_219BE8084();
  sub_219BE8014();
  sub_219BEE674();
  sub_219BEE664();
  sub_219BEE654();

  sub_219BDCAC4();
  v9 = sub_219BEF624();
  (*(*(v9 - 8) + 56))(v74, 1, 1, v9);
  v10 = sub_219BEF684();
  (*(*(v10 - 8) + 56))(v76, 1, 1, v10);
  (*(v5 + 104))(v77, *MEMORY[0x277D326B0], v78);
  sub_219BEF654();
  sub_219BEF5F4();
  sub_219BEF5F4();
  (*(v6 + 104))(v83, *MEMORY[0x277D32680], v85);
  sub_219BEF5A4();
  sub_219BEF6A4();

  sub_219BEF5C4();
  sub_219BEE0E4();
  (*(v100 + 8))(v94, v102);
  (*(v104 + 8))(v121, v110);
  (*(v3 + 8))(v2, v4);
  sub_218864B10(v1, &unk_280E90C60, MEMORY[0x277D32FE0]);
  (*(v98 + 8))(v89, v96);
  (*(v103 + 16))(v108, v7, v106);
  (*(v111 + 104))(v114, *MEMORY[0x277D6E080], v113);
  sub_218A6C9A4(0);
  (*(*(v11 - 8) + 16))(v118, v115, v11);
  sub_218795D38(&qword_27CC0D310, sub_218A6C9A4);
  v12 = sub_219BF5E44();
  if (v12)
  {
    v13 = v12;
    v123 = MEMORY[0x277D84F90];
    sub_218C37E40(0, v12 & ~(v12 >> 63), 0);
    v14 = v123;
    result = sub_219BF5DF4();
    if ((v13 & 0x8000000000000000) == 0)
    {
      v16 = v0;
      v17 = 0;
      v18 = v0[14];
      v82 = v0 + 7;
      v109 = v0[59];
      v81 = v0[56];
      v19 = v0[44];
      v79 = (v0[54] + 8);
      v80 = (v0[49] + 16);
      v84 = (v0[41] + 8);
      v71 = (v0[34] + 104);
      v72 = (v19 + 16);
      v67 = v0[28];
      v112 = v0[31];
      v70 = (v19 + 8);
      v69 = *MEMORY[0x277D6E980];
      v73 = v0[63];
      v75 = v13;
      v68 = *MEMORY[0x277D6E988];
      while (1)
      {
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v116 = v17;
        v21 = v16[61];
        v22 = *(v109 + 48);
        v16[15] = v18;
        result = sub_219BF5DF4();
        if (v18 < v16[16])
        {
          goto LABEL_21;
        }

        result = sub_219BF5E84();
        if (v18 >= v16[17])
        {
          goto LABEL_22;
        }

        v86 = v20;
        v87 = v18;
        v107 = v14;
        v23 = v16[58];
        v119 = v16[60];
        v122 = v16[57];
        v88 = v16[55];
        v105 = v16[53];
        v24 = v16[50];
        v90 = v16[52];
        v91 = v16[48];
        v92 = v16[51];
        v93 = v16[47];
        v95 = v16[39];
        v97 = v16[38];
        v99 = v16[37];
        v101 = v16[36];
        v25 = sub_219BF5EC4();
        v27 = v26;
        sub_2196536A8(0, &qword_27CC17670, MEMORY[0x277D6D710]);
        v29 = v28;
        v30 = *(v28 - 8);
        (*(v30 + 16))(v21 + v22, v27, v28);
        v25(v82, 0);
        *v119 = v116;
        (*(v30 + 32))(&v119[*(v109 + 48)], v21 + v22, v29);
        sub_219BE6934();
        sub_218A6DD44(v23, v122);
        v31 = *(v81 + 20);
        sub_219BED874();
        v32 = sub_219BEDB64();
        (*(*(v32 - 8) + 56))(v90, 1, 1, v32);
        (*v80)(v24, v122 + v31, v91);
        sub_219BEF4D4();
        v33 = sub_219BEF4E4();
        (*(*(v33 - 8) + 56))(v92, 0, 1, v33);
        v34 = sub_219BEEA64();
        (*(*(v34 - 8) + 56))(v93, 1, 1, v34);
        sub_218795D38(&qword_27CC1D710, type metadata accessor for AudioPlaylistFeedSectionDescriptor);
        sub_218795D38(&qword_27CC1D718, type metadata accessor for AudioPlaylistFeedModel);
        sub_219BE69F4();
        sub_218864B10(v93, &qword_280E91990, MEMORY[0x277D32218]);
        sub_218864B10(v92, &qword_280E91548, MEMORY[0x277D325F8]);
        sub_218864B10(v90, &qword_280E924F8, MEMORY[0x277D31DD0]);
        v35 = *v79;
        (*v79)(v88, v105);
        sub_219BED874();
        v36 = sub_219BF44B4();
        v35(v88, v105);
        v16[5] = sub_219BF3594();
        v16[6] = MEMORY[0x277D33EB8];
        v16[2] = v36;
        v37 = sub_219BDCB24();
        v38 = *(*(v37 - 8) + 56);
        v38(v95, 1, 1, v37);
        v38(v97, 1, 1, v37);
        v38(v99, 1, 1, v37);
        v38(v101, 1, 1, v37);

        sub_219BDCB04();
        sub_219BEE0B4();
        v40 = v16[45];
        v39 = v16[46];
        v41 = v16[43];
        v42 = v16[35];
        v43 = v16[33];
        (*v84)(v16[42], v16[40]);

        sub_218864B10((v16 + 2), &qword_280E91020, sub_2189BD704);
        (*v72)(v40, v39, v41);
        v16[11] = sub_21897F174(v40);
        v16[12] = v44;
        v16[13] = v45;
        v46 = sub_219BE9F84();
        (*(*(v46 - 8) + 104))(v42, v69, v46);
        (*v71)(v42, v68, v43);
        v47 = sub_219BEE004();
        v48 = *(v47 + 16);
        v49 = v16;
        if (v48)
        {
          v124 = MEMORY[0x277D84F90];
          sub_218C37E90(0, v48, 0);
          v50 = v47 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
          v117 = *(v67 + 16);
          v120 = *(v67 + 72);
          do
          {
            v51 = v49[29];
            v53 = v49[26];
            v52 = v49[27];
            v117(v51, v50, v52);
            v117(v53, v51, v52);
            sub_218795D38(&qword_27CC0F6A0, type metadata accessor for AudioPlaylistFeedLayoutModel);
            sub_219BE75D4();
            (*(v67 + 8))(v51, v52);
            v55 = *(v124 + 16);
            v54 = *(v124 + 24);
            if (v55 >= v54 >> 1)
            {
              sub_218C37E90(v54 > 1, v55 + 1, 1);
            }

            v56 = v49[32];
            v57 = v49[30];
            *(v124 + 16) = v55 + 1;
            (*(v112 + 32))(v124 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v55, v56, v57);
            v50 += v120;
            --v48;
          }

          while (v48);
        }

        v58 = v49[60];
        v59 = v49[57];
        v60 = v49[46];
        v61 = v49[43];
        v16 = v49;
        sub_21897F120();
        sub_218795D38(&qword_27CC13CC0, type metadata accessor for AudioPlaylistFeedLayoutModel);
        sub_219BE81A4();

        (*v70)(v60, v61);
        sub_21965379C(v59, type metadata accessor for ArticleListAudioPlaylistFeedGroup);
        sub_21965379C(v58, sub_21965358C);
        v14 = v107;
        v63 = *(v107 + 16);
        v62 = *(v107 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_218C37E40(v62 > 1, v63 + 1, 1);
          v14 = v107;
        }

        v64 = v49[64];
        v65 = v49[62];
        *(v14 + 16) = v63 + 1;
        (*(v73 + 32))(v14 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v63, v64, v65);
        v49[19] = v87;
        result = sub_219BF5E54();
        v18 = v49[18];
        v17 = v86;
        if (v86 == v75)
        {
          sub_21965379C(v49[65], sub_219653614);
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_21965379C(v0[65], sub_219653614);
    v16 = v0;
LABEL_17:
    sub_21897F120();
    sub_218795D38(&qword_27CC13CC0, type metadata accessor for AudioPlaylistFeedLayoutModel);
    sub_219BE6564();
    sub_219BEE0C4();

    v66 = v16[1];

    return v66();
  }

  return result;
}

uint64_t sub_2196534C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2187608D4;

  return sub_219651418(a1, a2, a3, a4);
}

void sub_21965358C()
{
  if (!qword_27CC1D700)
  {
    sub_2196536A8(255, &qword_27CC17670, MEMORY[0x277D6D710]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1D700);
    }
  }
}

void sub_219653614()
{
  if (!qword_27CC1D708)
  {
    sub_218A6C9A4(255);
    sub_218795D38(&qword_27CC13FC0, sub_218A6C9A4);
    v0 = sub_219BF7544();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1D708);
    }
  }
}

void sub_2196536A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioPlaylistFeedSectionDescriptor();
    v8[1] = type metadata accessor for AudioPlaylistFeedModel();
    v8[2] = sub_218795D38(&unk_27CC11BE0, type metadata accessor for AudioPlaylistFeedSectionDescriptor);
    v8[3] = sub_218795D38(&unk_27CC0B7F0, type metadata accessor for AudioPlaylistFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_21965379C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t WebLinkRouteModel.init(identifier:url:config:observer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  v12 = type metadata accessor for WebLinkRouteModel(0);
  result = sub_218FECB94(a3, a7 + v12[5]);
  *(a7 + v12[6]) = a4;
  v14 = (a7 + v12[7]);
  *v14 = a5;
  v14[1] = a6;
  return result;
}

uint64_t sub_219653898(void *a1, uint64_t a2)
{
  v4 = sub_219BF2124();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_219BDB954();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 identifier];
  if (!v10)
  {
    sub_219BF5414();
    v10 = sub_219BF53D4();
  }

  v11 = [objc_opt_self() nss:v10 NewsURLForTagID:6 feedConfiguration:?];

  sub_219BDB8B4();
  sub_218EEDEFC();
  sub_219BF14C4();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09EC0;
  sub_219BF20E4();
  sub_219BF14A4();
  sub_219653B24(a2);
  sub_219BF20F4();

  sub_219BF14A4();
  (*(v6 + 8))(v9, v5);
  return v12;
}

uint64_t sub_219653B24(uint64_t a1)
{
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  if (*(a1 + 16))
  {
    type metadata accessor for SportsHighlights(0);
    sub_2191B4878(v5);
    (*(v3 + 32))(v8, v5, v2);
    v9 = sub_218A9EC28();
    (*(v3 + 8))(v8, v2);
    v10 = v9[2];
  }

  else
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    v10 = sub_219BDB5E4();
  }

  return v10;
}

uint64_t sub_219653D4C(void *a1)
{
  sub_219659228(0, &qword_27CC1D7E8, sub_219658D10, &type metadata for UserNotification.IssueData.Issue.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219658D10();
  sub_219BF7B44();
  v12 = 0;
  sub_219BF77F4();
  if (!v1)
  {
    v11 = 1;
    sub_219BF77F4();
    v10 = 2;
    sub_219BF77F4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219653EF8()
{
  v1 = 0x4E6C656E6E616863;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x44496575737369;
  }
}

uint64_t sub_219653F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_219657ACC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_219653F88(uint64_t a1)
{
  v2 = sub_219658D10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219653FC4(uint64_t a1)
{
  v2 = sub_219658D10();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_219654000@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_219657BF0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_21965405C(void *a1)
{
  v3 = v1;
  sub_219659228(0, &qword_27CC1D7C0, sub_219658B3C, &type metadata for UserNotification.IssueData.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219658B3C();
  sub_219BF7B44();
  v12 = *v3;
  v11[15] = 0;
  sub_2187AC848(0, &qword_280E8F2E8, &type metadata for UserNotification.IssueData.Issue, MEMORY[0x277D83940]);
  sub_219658C2C(&qword_27CC1D7C8, sub_219658CBC);
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for UserNotification.IssueData(0);
    v11[14] = 1;
    sub_219BDBD34();
    sub_219658BE4(&qword_280EE9CA0, MEMORY[0x277CC9578]);
    sub_219BF7834();
    v11[13] = 2;
    sub_219BF77F4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2196542F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v25 = sub_219BDBD34();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219659228(0, &qword_27CC1D7A0, sub_219658B3C, &type metadata for UserNotification.IssueData.CodingKeys, MEMORY[0x277D844C8]);
  v26 = v5;
  v24 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v21 - v6;
  v8 = type metadata accessor for UserNotification.IssueData(0);
  MEMORY[0x28223BE20](v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219658B3C();
  v27 = v7;
  v11 = v28;
  sub_219BF7B34();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v24;
  v12 = v25;
  v28 = v10;
  sub_2187AC848(0, &qword_280E8F2E8, &type metadata for UserNotification.IssueData.Issue, MEMORY[0x277D83940]);
  v31 = 0;
  sub_219658C2C(&qword_27CC1D7B0, sub_219658B90);
  v14 = v26;
  sub_219BF7734();
  v21[1] = v32;
  *v28 = v32;
  v30 = 1;
  sub_219658BE4(&unk_280EE9C70, MEMORY[0x277CC9578]);
  sub_219BF7734();
  (*(v23 + 32))(v28 + *(v8 + 20), v4, v12);
  v29 = 2;
  v21[0] = 0;
  v15 = sub_219BF76F4();
  v17 = v16;
  (*(v13 + 8))(v27, v14);
  v18 = v28;
  v19 = (v28 + *(v8 + 24));
  *v19 = v15;
  v19[1] = v17;
  sub_2187ADB6C(v18, v22, type metadata accessor for UserNotification.IssueData);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_219657A18(v18, type metadata accessor for UserNotification.IssueData);
}

uint64_t sub_21965477C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[2] = a5;
  v13[1] = a4;
  sub_219659228(0, &qword_27CC1D798, sub_219658AE8, &type metadata for UserNotification.RevokeData.CodingKeys, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219658AE8();
  sub_219BF7B44();
  v15 = 0;
  v11 = v13[3];
  sub_219BF77F4();
  if (!v11)
  {
    v14 = 1;
    sub_219BF77F4();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_219654918(void *a1)
{
  sub_219659228(0, &qword_27CC1D860, sub_2196591D4, &type metadata for UserNotification.PuzzleStreakData.PuzzleStreak.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2196591D4();
  sub_219BF7B44();
  v12 = 0;
  sub_219BF77F4();
  if (!v1)
  {
    v11 = 1;
    sub_219BF7824();
    v10 = 2;
    sub_219BF77F4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219654AC4()
{
  v1 = 0xD000000000000018;
  if (*v0 != 1)
  {
    v1 = 0x696669746E656469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736575737369;
  }
}

uint64_t sub_219654B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_219657E74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_219654B4C(uint64_t a1)
{
  v2 = sub_219658B3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219654B88(uint64_t a1)
{
  v2 = sub_219658B3C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219654BF4()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_219654C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000219D2BDE0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219D2BE00 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_219654D14(uint64_t a1)
{
  v2 = sub_219658AE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219654D50(uint64_t a1)
{
  v2 = sub_219658AE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219654D8C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_219657F98(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_219654DDC()
{
  v1 = 1937334628;
  if (*v0 != 1)
  {
    v1 = 0x4E79616C70736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7550737961646F74;
  }
}

uint64_t sub_219654E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2196581AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_219654E6C(uint64_t a1)
{
  v2 = sub_2196591D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219654EA8(uint64_t a1)
{
  v2 = sub_2196591D4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_219654EE4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2196582D0(a1, v6);
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

uint64_t sub_219654F44(void *a1)
{
  v3 = v1;
  sub_219659228(0, &qword_27CC1D770, sub_21965895C, &type metadata for UserNotification.PuzzleStreakData.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21965895C();
  sub_219BF7B44();
  v12 = *v3;
  v11[15] = 0;
  sub_2187AC848(0, &qword_27CC1D758, &type metadata for UserNotification.PuzzleStreakData.PuzzleStreak, MEMORY[0x277D83940]);
  sub_219658A04(&qword_27CC1D778, sub_219658A94);
  sub_219BF7834();
  if (!v2)
  {
    v11[14] = 1;
    sub_219BF7794();
    v11[13] = 2;
    sub_219BF77F4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_219655168()
{
  v1 = 0x7548656C7A7A7570;
  if (*v0 != 1)
  {
    v1 = 0x696669746E656469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7453656C7A7A7570;
  }
}

uint64_t sub_2196551E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21965853C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_219655208(uint64_t a1)
{
  v2 = sub_21965895C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219655244(uint64_t a1)
{
  v2 = sub_21965895C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_219655280@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21965866C(a1, v6);
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

uint64_t sub_2196552E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v121 = a1;
  sub_2186DDF98(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v116 - v8;
  v10 = sub_219BDB954();
  v117 = *(v10 - 8);
  v118 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DDF98(0, qword_280ED7148, type metadata accessor for UserNotification.IssueData);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v116 - v14;
  v16 = type metadata accessor for UserNotification.IssueData(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DDF98(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v20 - 8);
  v119 = &v116 - v21;
  v22 = sub_219BF5414();
  if (!a3)
  {

    sub_219BF5414();

    sub_219BF5414();

    sub_219BF5414();

    sub_219BF5414();

    sub_219BF5414();

    sub_219BF5414();

    sub_219BF5414();

    sub_219BF5414();

    sub_219BF5414();

    goto LABEL_6;
  }

  v120 = a4;
  if (v22 == a2 && v23 == a3)
  {

LABEL_10:
    v124 = sub_219BF5414();
    v125 = v26;
    sub_219BF72A4();
    v27 = v121;
    if (*(v121 + 16) && (v28 = sub_21931EECC(v128), (v29 & 1) != 0))
    {
      sub_2186D1230(*(v27 + 56) + 32 * v28, &v126);
      sub_218B6B67C(v128);
      sub_2187AC8F4();
      if (swift_dynamicCast())
      {
        v30 = v124;
        v124 = sub_219BF5414();
        v125 = v31;
        sub_219BF72A4();
        if (v30[2] && (v32 = sub_21931EECC(v128), (v33 & 1) != 0))
        {
          sub_2186D1230(v30[7] + 32 * v32, &v126);
          sub_218B6B67C(v128);
          if (swift_dynamicCast())
          {
            v121 = v124;
            v118 = v125;
            *&v126 = sub_219BF5414();
            *(&v126 + 1) = v34;
            sub_219BF72A4();
            if (v30[2] && (v35 = sub_21931EECC(v128), (v36 & 1) != 0))
            {
              sub_2186D1230(v30[7] + 32 * v35, &v126);
              sub_218B6B67C(v128);
              v37 = swift_dynamicCast();
              if (v37)
              {
                v38 = v124;
              }

              else
              {
                v38 = 0;
              }

              if (v37)
              {
                v39 = v125;
              }

              else
              {
                v39 = 0;
              }
            }

            else
            {
              sub_218B6B67C(v128);
              v38 = 0;
              v39 = 0;
            }

            *&v126 = sub_219BF5414();
            *(&v126 + 1) = v45;
            sub_219BF72A4();
            if (v30[2] && (v46 = sub_21931EECC(v128), (v47 & 1) != 0))
            {
              sub_2186D1230(v30[7] + 32 * v46, &v126);
              sub_218B6B67C(v128);
              v48 = swift_dynamicCast();
              if (v48)
              {
                v49 = v124;
              }

              else
              {
                v49 = 0;
              }

              if (v48)
              {
                v50 = v125;
              }

              else
              {
                v50 = 0;
              }
            }

            else
            {
              sub_218B6B67C(v128);
              v49 = 0;
              v50 = 0;
            }

            *&v126 = sub_219BF5414();
            *(&v126 + 1) = v51;
            sub_219BF72A4();
            if (v30[2] && (v52 = sub_21931EECC(v128), (v53 & 1) != 0))
            {
              sub_2186D1230(v30[7] + 32 * v52, &v126);
              sub_218B6B67C(v128);
              v54 = swift_dynamicCast();
              if (v54)
              {
                v55 = v124;
              }

              else
              {
                v55 = 0;
              }

              if (v54)
              {
                v56 = v125;
              }

              else
              {
                v56 = 0;
              }
            }

            else
            {
              sub_218B6B67C(v128);
              v55 = 0;
              v56 = 0;
            }

            sub_219656A08(v30, v119);
            *&v126 = sub_219BF5414();
            *(&v126 + 1) = v57;
            sub_219BF72A4();
            if (v30[2] && (v58 = sub_21931EECC(v128), (v59 & 1) != 0))
            {
              sub_2186D1230(v30[7] + 32 * v58, &v126);
              sub_218B6B67C(v128);
              v60 = swift_dynamicCast();
              if (v60)
              {
                v61 = v124;
              }

              else
              {
                v61 = 0;
              }

              if (v60)
              {
                v62 = v125;
              }

              else
              {
                v62 = 0;
              }
            }

            else
            {
              sub_218B6B67C(v128);
              v61 = 0;
              v62 = 0;
            }

            v63 = v120;
            v64 = v118;
            *v120 = v121;
            v63[1] = v64;
            v63[2] = v49;
            v63[3] = v50;
            v63[4] = v38;
            v63[5] = v39;
            v63[6] = v55;
            v63[7] = v56;
            v65 = type metadata accessor for UserNotification.ArticleData(0);
            sub_218A5DD60(v119, v63 + v65[8]);
            v66 = (v63 + v65[9]);
            *v66 = v61;
            v66[1] = v62;
            *(v63 + v65[10]) = v30;
            type metadata accessor for UserNotification.Kind(0);
            return swift_storeEnumTagMultiPayload();
          }
        }

        else
        {

          sub_218B6B67C(v128);
        }
      }
    }

    else
    {
      sub_218B6B67C(v128);
    }

LABEL_25:
    type metadata accessor for UserNotification.Kind(0);
    return swift_storeEnumTagMultiPayload();
  }

  v25 = sub_219BF78F4();

  if (v25)
  {
    goto LABEL_10;
  }

  if (sub_219BF5414() == a2 && v40 == a3)
  {
    goto LABEL_28;
  }

  v41 = sub_219BF78F4();

  if (v41)
  {
    goto LABEL_30;
  }

  if (sub_219BF5414() == a2 && v42 == a3)
  {
LABEL_28:

LABEL_30:
    sub_219658BE4(&qword_27CC1D740, type metadata accessor for UserNotification.IssueData);

    sub_219BF5D24();
    if ((*(v17 + 48))(v15, 1, v16) != 1)
    {
      sub_2196579B0(v15, v19, type metadata accessor for UserNotification.IssueData);
      sub_2196579B0(v19, v120, type metadata accessor for UserNotification.IssueData);
      type metadata accessor for UserNotification.Kind(0);
      return swift_storeEnumTagMultiPayload();
    }

    sub_2187BC824(v15, qword_280ED7148, type metadata accessor for UserNotification.IssueData);
    goto LABEL_25;
  }

  v43 = sub_219BF78F4();

  if (v43)
  {
    goto LABEL_30;
  }

  if (sub_219BF5414() == a2 && v44 == a3)
  {

LABEL_73:
    v124 = 1937204590;
    v125 = 0xE400000000000000;
    sub_219BF72A4();
    v68 = v121;
    if (*(v121 + 16) && (v69 = sub_21931EECC(v128), (v70 & 1) != 0))
    {
      sub_2186D1230(*(v68 + 56) + 32 * v69, &v126);
      sub_218B6B67C(v128);
      sub_2186C6148(0, &qword_27CC1D738);
      if (swift_dynamicCast())
      {
        v71 = v124;
        v72 = sub_219BF53D4();
        v73 = [v71 valueForKey_];

        if (v73)
        {
          sub_219BF70B4();
          swift_unknownObjectRelease();
        }

        else
        {
          v126 = 0u;
          v127 = 0u;
        }

        v128[0] = v126;
        v128[1] = v127;
        if (*(&v127 + 1))
        {
          if (swift_dynamicCast())
          {
            v78 = v124;
            v77 = v125;
            sub_219BDB914();
            v79 = v117;
            v80 = v118;
            if ((*(v117 + 48))(v9, 1, v118) == 1)
            {

              sub_2187BC824(v9, &unk_280EE9D00, MEMORY[0x277CC9260]);
              if (qword_280E8D870 == -1)
              {
                goto LABEL_96;
              }

              goto LABEL_163;
            }

            v121 = v78;
            (*(v79 + 32))(v12, v9, v80);
            (*(v79 + 16))(v120, v12, v80);
            v82 = sub_219BF53D4();
            v83 = [v71 valueForKey_];

            if (v83)
            {
              sub_219BF70B4();

              swift_unknownObjectRelease();
              (*(v79 + 8))(v12, v80);
            }

            else
            {
              (*(v79 + 8))(v12, v80);

              v126 = 0u;
              v127 = 0u;
            }

            sub_2187ACC2C();
            v92 = (v120 + *(v91 + 48));
            v128[0] = v126;
            v128[1] = v127;
            if (*(&v127 + 1))
            {
              if (swift_dynamicCast())
              {
                v93 = v124;
                v94 = v125;

                v77 = v94;
LABEL_119:
                *v92 = v93;
                v92[1] = v77;
                type metadata accessor for UserNotification.Kind(0);
                return swift_storeEnumTagMultiPayload();
              }
            }

            else
            {
              sub_218806FD0(v128);
            }

            v93 = v121;
            goto LABEL_119;
          }
        }

        else
        {
          sub_218806FD0(v128);
        }

        if (qword_280E8D870 == -1)
        {
LABEL_96:
          sub_219BF61F4();
          sub_219BE5314();

          goto LABEL_25;
        }

LABEL_163:
        swift_once();
        goto LABEL_96;
      }
    }

    else
    {
      sub_218B6B67C(v128);
    }

    if (qword_280E8D870 == -1)
    {
LABEL_80:
      sub_219BF61F4();
      sub_219BE5314();
      goto LABEL_25;
    }

LABEL_144:
    swift_once();
    goto LABEL_80;
  }

  v67 = sub_219BF78F4();

  if (v67)
  {
    goto LABEL_73;
  }

  if (sub_219BF5414() == a2 && v74 == a3)
  {
    goto LABEL_83;
  }

  v75 = sub_219BF78F4();

  if ((v75 & 1) == 0)
  {
    if (sub_219BF5414() == a2 && v76 == a3)
    {
LABEL_83:

      goto LABEL_6;
    }

    v81 = sub_219BF78F4();

    if ((v81 & 1) == 0)
    {
      if (sub_219BF5414() == a2 && v84 == a3)
      {

LABEL_105:
        v122 = 1937204590;
        v123 = 0xE400000000000000;
        sub_219BF72A4();
        v86 = v121;
        if (*(v121 + 16) && (v87 = sub_21931EECC(v128), (v88 & 1) != 0))
        {
          sub_2186D1230(*(v86 + 56) + 32 * v87, &v124);
          sub_218B6B67C(v128);
          sub_2186C6148(0, &qword_27CC1D738);
          if (swift_dynamicCast())
          {
            v89 = v122;
            *&v128[0] = 6580577;
            *(&v128[0] + 1) = 0xE300000000000000;
            v90 = [v122 __swift_objectForKeyedSubscript_];
            swift_unknownObjectRelease();

            if (v90)
            {
              sub_219BF70B4();
              swift_unknownObjectRelease();
            }

            else
            {
              memset(v128, 0, sizeof(v128));
            }

            v126 = v128[0];
            v127 = v128[1];
            if (*(&v128[1] + 1))
            {
              if (swift_dynamicCast())
              {
                v101 = *(&v128[0] + 1);
                v102 = v120;
                *v120 = *&v128[0];
                v102[1] = v101;
                type metadata accessor for UserNotification.Kind(0);
                return swift_storeEnumTagMultiPayload();
              }

              goto LABEL_25;
            }

            goto LABEL_112;
          }
        }

        else
        {
          sub_218B6B67C(v128);
        }

        v126 = 0u;
        v127 = 0u;
LABEL_112:
        sub_218806FD0(&v126);
        goto LABEL_25;
      }

      v85 = sub_219BF78F4();

      if (v85)
      {
        goto LABEL_105;
      }

      if (sub_219BF5414() == a2 && v95 == a3)
      {

LABEL_124:
        v124 = 1937204590;
        v125 = 0xE400000000000000;
        sub_219BF72A4();
        if (*(v121 + 16) && (v97 = sub_21931EECC(v128), (v98 & 1) != 0))
        {
          sub_2186D1230(*(v121 + 56) + 32 * v97, &v126);
          sub_218B6B67C(v128);
          sub_2186C6148(0, &qword_27CC1D738);
          if (swift_dynamicCast())
          {
            v71 = v124;
            *&v126 = 25705;
            *(&v126 + 1) = 0xE200000000000000;
            v99 = [v124 __swift_objectForKeyedSubscript_];
            swift_unknownObjectRelease();
            if (v99)
            {
              sub_219BF70B4();
              swift_unknownObjectRelease();
            }

            else
            {
              v126 = 0u;
              v127 = 0u;
            }

            v128[0] = v126;
            v128[1] = v127;
            if (*(&v127 + 1))
            {
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_160;
              }

              v111 = v124;
              v110 = v125;
              *&v126 = 1684631154;
              *(&v126 + 1) = 0xE400000000000000;
              v112 = [v71 __swift_objectForKeyedSubscript_];
              swift_unknownObjectRelease();
              if (v112)
              {
                sub_219BF70B4();
                swift_unknownObjectRelease();
              }

              else
              {
                v126 = 0u;
                v127 = 0u;
              }

              v128[0] = v126;
              v128[1] = v127;
              if (*(&v127 + 1))
              {
                if (swift_dynamicCast())
                {

                  v113 = v124;
                  v114 = v125;
                  v115 = v120;
                  *v120 = v111;
                  v115[1] = v110;
                  v115[2] = v113;
                  v115[3] = v114;
                  type metadata accessor for UserNotification.Kind(0);
                  return swift_storeEnumTagMultiPayload();
                }

LABEL_160:
                if (qword_280E8D870 == -1)
                {
                  goto LABEL_96;
                }

                goto LABEL_163;
              }
            }

            sub_218806FD0(v128);
            goto LABEL_160;
          }
        }

        else
        {
          sub_218B6B67C(v128);
        }

        if (qword_280E8D870 == -1)
        {
          goto LABEL_80;
        }

        goto LABEL_144;
      }

      v96 = sub_219BF78F4();

      if (v96)
      {
        goto LABEL_124;
      }

      if (sub_219BF5414() == a2 && v100 == a3)
      {
        goto LABEL_134;
      }

      v103 = sub_219BF78F4();

      if ((v103 & 1) == 0)
      {
        if (sub_219BF5414() == a2 && v108 == a3)
        {
LABEL_134:

          goto LABEL_140;
        }

        v109 = sub_219BF78F4();

        if ((v109 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

LABEL_140:
      sub_219657A78();

      sub_219BF5D24();
      if (*&v128[0])
      {
        v105 = *(&v128[1] + 1);
        v104 = v129;
        v106 = *(v128 + 8);
        v107 = v120;
        *v120 = *&v128[0];
        *(v107 + 1) = v106;
        v107[3] = v105;
        v107[4] = v104;
        type metadata accessor for UserNotification.Kind(0);
        return swift_storeEnumTagMultiPayload();
      }

      if (qword_280E8D870 == -1)
      {
        goto LABEL_80;
      }

      goto LABEL_144;
    }
  }

LABEL_6:
  type metadata accessor for UserNotification.Kind(0);

  return swift_storeEnumTagMultiPayload();
}