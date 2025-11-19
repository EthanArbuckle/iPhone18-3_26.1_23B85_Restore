uint64_t sub_22C73DB2C(uint64_t a1)
{
  v2[45] = a1;
  v2[46] = v1;
  v3 = sub_22C3A5908(&qword_27D9BFA78, &qword_22C923D70);
  sub_22C369914(v3);
  v5 = *(v4 + 64);
  v2[47] = sub_22C36D0D4();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v6 = sub_22C90339C();
  v2[51] = v6;
  sub_22C3699B8(v6);
  v2[52] = v7;
  v9 = *(v8 + 64);
  v2[53] = sub_22C36D0D4();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v10 = _s14TypedCandidateVMa(0);
  v2[59] = v10;
  sub_22C3699B8(v10);
  v2[60] = v11;
  v13 = *(v12 + 64);
  v2[61] = sub_22C36D0D4();
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v14 = sub_22C3A5908(&qword_27D9BFA80, &qword_22C923D78);
  v2[65] = v14;
  sub_22C369914(v14);
  v16 = *(v15 + 64) + 15;
  v2[66] = swift_task_alloc();
  v17 = sub_22C3A5908(&qword_27D9BFA88, &qword_22C923D80);
  sub_22C369914(v17);
  v19 = *(v18 + 64);
  v2[67] = sub_22C36D0D4();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v20 = sub_22C9063DC();
  v2[71] = v20;
  sub_22C3699B8(v20);
  v2[72] = v21;
  v23 = *(v22 + 64);
  v2[73] = sub_22C36D0D4();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v24 = sub_22C90634C();
  v2[78] = v24;
  sub_22C3699B8(v24);
  v2[79] = v25;
  v27 = *(v26 + 64);
  v2[80] = sub_22C36D0D4();
  v2[81] = swift_task_alloc();
  v28 = sub_22C90636C();
  v2[82] = v28;
  sub_22C3699B8(v28);
  v2[83] = v29;
  v31 = *(v30 + 64);
  v2[84] = sub_22C36D0D4();
  v2[85] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C73DE8C, 0, 0);
}

uint64_t sub_22C73DE8C()
{
  v354 = v0;
  v1 = *(v0 + 680);
  v2 = *(v0 + 672);
  v3 = *(v0 + 664);
  v4 = *(v0 + 656);
  v5 = *(v0 + 648);
  sub_22C90365C();
  sub_22C90365C();
  sub_22C90635C();
  sub_22C90631C();
  v347 = *(v3 + 8);
  v347(v2, v4);
  v6 = sub_22C90635C();
  v7 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v8 = *(v0 + 648);
    v9 = sub_22C36D240();
    *v9 = 0;
    v10 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v6, v7, v10, "CandidateSimilarityClientV2.computeSimilarities", "", v9, 2u);
    sub_22C3699EC();
  }

  v11 = *(v0 + 680);
  v12 = *(v0 + 656);
  v13 = *(v0 + 648);
  v14 = *(v0 + 640);
  v15 = *(v0 + 632);
  v16 = *(v0 + 624);
  v17 = *(v0 + 368);

  (*(v15 + 16))(v14, v13, v16);
  v18 = sub_22C9063AC();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_22C3707B4();
  sub_22C90639C();
  (*(v15 + 8))(v13, v16);
  v347(v11, v12);
  swift_beginAccess();
  sub_22C4E719C(v17 + 64, v0 + 216, &qword_27D9BFA90, &unk_22C923D88);
  if (!*(v0 + 240))
  {
    v272 = *(v0 + 584);
    sub_22C36DD28(v0 + 216, &qword_27D9BFA90, &unk_22C923D88);
    sub_22C903FAC();
    v273 = sub_22C9063CC();
    v274 = sub_22C90AADC();
    if (os_log_type_enabled(v273, v274))
    {
      *sub_22C36D240() = 0;
      sub_22C36BB14(&dword_22C366000, v275, v276, "CandidateSimilarity client initiation failed");
      sub_22C3699EC();
    }

    v277 = *(v0 + 584);
    v278 = *(v0 + 576);
    v279 = *(v0 + 568);

    v280 = *(v278 + 8);
    v281 = sub_22C36BAFC();
    v282(v281);
    sub_22C5F2300();
    swift_allocError();
    *v283 = 0xD000000000000024;
    v283[1] = 0x800000022C9343D0;
    swift_willThrow();
    goto LABEL_80;
  }

  v21 = *(v0 + 616);
  sub_22C36C730((v0 + 216), v0 + 176);
  sub_22C903FAC();
  v22 = sub_22C9063CC();
  v23 = sub_22C90AABC();
  if (os_log_type_enabled(v22, v23))
  {
    *sub_22C36D240() = 0;
    sub_22C36BB14(&dword_22C366000, v24, v25, "CandidateSimilarity: computing similarities");
    sub_22C3699EC();
  }

  v26 = *(v0 + 616);
  v27 = *(v0 + 576);
  v28 = *(v0 + 568);
  v29 = *(v0 + 520);
  v323 = *(v0 + 480);
  v341 = *(v0 + 472);
  v30 = *(v0 + 408);
  v31 = *(v0 + 416);
  v32 = *(v0 + 360);

  v33 = *(v27 + 8);
  v34 = sub_22C36BAFC();
  v336 = v35;
  v35(v34);
  sub_22C74008C();
  v302 = MEMORY[0x277D84F90];
  v36 = sub_22C909F0C();
  v37 = 0;
  v38 = *(v32 + 16);
  v308 = (v31 + 16);
  v309 = (v31 + 32);
  v307 = v31;
  v301 = (v31 + 8);
  v324 = v29;
  v329 = v38;
  while (1)
  {
    if (v37 == v38)
    {
      v39 = 1;
      v344 = v38;
    }

    else
    {
      if (v37 >= v38)
      {
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v40 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        goto LABEL_84;
      }

      v41 = *(v0 + 552);
      v42 = *(v0 + 528);
      v43 = *(v0 + 360) + ((*(v323 + 80) + 32) & ~*(v323 + 80)) + *(v323 + 72) * v37;
      v44 = *(v29 + 48);
      *v42 = v37;
      sub_22C7400E0(v43, v42 + v44);
      v45 = sub_22C36BA00();
      sub_22C4E7208(v45, v46, &qword_27D9BFA80, &qword_22C923D78);
      v39 = 0;
      v344 = v40;
    }

    v47 = *(v0 + 560);
    v48 = *(v0 + 520);
    sub_22C36C640(*(v0 + 552), v39, 1, v48);
    v49 = sub_22C36BA00();
    sub_22C4E7208(v49, v50, &qword_27D9BFA88, &qword_22C923D80);
    v51 = sub_22C3707B4();
    if (sub_22C370B74(v51, v52, v48) == 1)
    {
      v262 = *(v0 + 680);
      v263 = *(v0 + 672);
      v264 = *(v0 + 648);
      v265 = *(v0 + 640);
      v266 = *(v0 + 616);
      v267 = *(v0 + 608);
      v268 = *(v0 + 600);
      sub_22C36A274();
      v332 = *(v0 + 432);
      v335 = *(v0 + 424);
      v337 = *(v0 + 400);
      v339 = *(v0 + 392);
      v342 = *(v0 + 384);
      v345 = *(v0 + 376);

      sub_22C36FF94((v0 + 176));
      sub_22C73F49C();

      v269 = *(v0 + 8);
      sub_22C3891B4();

      __asm { BRAA            X2, X16 }
    }

    v53 = *(v0 + 560);
    v54 = *v53;
    sub_22C740144(v53 + *(v29 + 48), *(v0 + 512));
    sub_22C73F8E8();
    v348 = v36;
    if (v57 == -1)
    {
      goto LABEL_21;
    }

    v58 = v55;
    v59 = v56;
    v60 = v57;
    v61 = (*(v0 + 512) + *(v341 + 20));
    v62 = v61[4];
    v63 = *(v61 + 1);
    v321 = v61;
    *(v0 + 16) = *v61;
    *(v0 + 32) = v63;
    *(v0 + 48) = v62;
    v330 = v57;
    if (!v36[2])
    {
      goto LABEL_17;
    }

    v64 = sub_22C628C68();
    if (v65)
    {
      v66 = *(v0 + 400);
      v67 = *(v0 + 392);
      (*(v307 + 16))(v67, v36[7] + *(v307 + 72) * v64, *(v0 + 408));
      sub_22C387310(v67);
      v68 = *(v307 + 32);
      v38 = v329;
      v69 = sub_22C36BAFC();
      v70(v69);
      sub_22C387310(v66);
      v71 = v334;
    }

    else
    {
LABEL_17:
      v73 = *(v0 + 400);
      v72 = *(v0 + 408);
      v74 = *(v0 + 392);
      v75 = *(v0 + 368);
      sub_22C36A748();
      sub_22C36C640(v76, v77, v78, v79);
      v80 = v60 & 1;
      v71 = 0;
      sub_22C73F7BC(v58, v59, v80);
      v81 = *(v0 + 408);
      v82 = *(v0 + 392);
      v83 = sub_22C3707B4();
      if (sub_22C370B74(v83, v84, v85) != 1)
      {
        sub_22C36DD28(v82, &qword_27D9BFA78, &qword_22C923D70);
      }
    }

    v86 = *(v0 + 400);
    v87 = *(v0 + 408);
    v334 = v71;
    if (sub_22C370B74(v86, 1, v87) != 1)
    {
      break;
    }

    sub_22C740204(v58, v59, v330);
    sub_22C36DD28(v86, &qword_27D9BFA78, &qword_22C923D70);
LABEL_21:
    v88 = *(v0 + 592);
    v89 = *(v0 + 512);
    v90 = *(v0 + 488);
    sub_22C903FAC();
    v91 = sub_22C36BAFC();
    sub_22C7400E0(v91, v92);
    v93 = sub_22C9063CC();
    v94 = sub_22C90AABC();
    v95 = os_log_type_enabled(v93, v94);
    v96 = *(v0 + 592);
    v97 = *(v0 + 568);
    v98 = *(v0 + 512);
    v99 = *(v0 + 488);
    if (v95)
    {
      v100 = sub_22C36FB44();
      v101 = sub_22C370060();
      v353[0] = v101;
      *v100 = 136315138;
      v102 = (v99 + *(v341 + 20));
      v103 = v102[1];
      v331 = v98;
      v104 = v102[2];
      v105 = v102[3];
      v327 = v96;
      v106 = v102[4];
      v352[0] = *v102;
      v352[1] = v103;
      v352[2] = v104;
      v352[3] = v105;
      v352[4] = v106;

      v107 = JointResolution.Candidate.description.getter();
      v109 = v108;

      sub_22C7401A8(v99);
      v110 = sub_22C36F9F4(v107, v109, v353);

      *(v100 + 4) = v110;
      _os_log_impl(&dword_22C366000, v93, v94, "entityIdentifier can't be fetched for candidate: %s", v100, 0xCu);
      sub_22C36FF94(v101);
      sub_22C3699EC();
      v29 = v324;
      sub_22C3699EC();

      v336(v327, v97);
      v111 = v331;
    }

    else
    {

      sub_22C7401A8(v99);
      v336(v96, v97);
      v111 = v98;
    }

    sub_22C7401A8(v111);
    v36 = v348;
LABEL_25:
    v38 = v329;
    v37 = v344;
  }

  v320 = v58;
  v113 = *(v0 + 456);
  v112 = *(v0 + 464);
  v114 = *v309;
  v115 = sub_22C36A724();
  v304 = v116;
  v116(v115);
  v117 = v321[4];
  v118 = *(v321 + 1);
  *(v0 + 56) = *v321;
  *(v0 + 72) = v118;
  *(v0 + 88) = v117;
  v303 = *v308;
  (*v308)(v113, v112, v87);
  sub_22C633814(v0 + 56, v0 + 256);
  swift_isUniquelyReferenced_nonNull_native();
  v352[0] = v36;
  sub_22C62E3C4(v113, v0 + 56);
  sub_22C740224(v0 + 56);
  result = v54 + 1;
  if (__OFADD__(v54, 1))
  {
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    return result;
  }

  if (v38 < result)
  {
    goto LABEL_90;
  }

  v36 = v352[0];
  sub_22C60613C(result, v38, *(v0 + 360));
  v305 = v120;
  v306 = v121;
  v123 = v122 >> 1;
  v124 = v121;
  v322 = v59;
  v318 = v122 >> 1;
  v319 = 0;
LABEL_29:
  v125 = v320;
  while (1)
  {
    v349 = v36;
    while (1)
    {
      if (v124 == v123)
      {
        v126 = 1;
        v127 = v123;
        goto LABEL_40;
      }

      if (v124 < v306 || v124 >= v123)
      {
        __break(1u);
LABEL_88:
        __break(1u);
        v295 = *(v0 + 504);
        v296 = *(v0 + 512);
        v297 = *(v0 + 464);
        v298 = *(v0 + 448);
        v299 = *(v0 + 408);
        swift_unknownObjectRelease();
        sub_22C740204(v320, v322, v330);
        v300 = *v301;
        (*v301)(v298, v299);
        v300(v297, v299);
        sub_22C7401A8(v295);
        sub_22C7401A8(v296);

        sub_22C36FF94((v0 + 176));
LABEL_80:
        v284 = *(v0 + 680);
        v285 = *(v0 + 672);
        v286 = *(v0 + 648);
        v287 = *(v0 + 640);
        v288 = *(v0 + 616);
        v289 = *(v0 + 608);
        v290 = *(v0 + 600);
        sub_22C36A274();
        v333 = *(v0 + 432);
        v338 = *(v0 + 424);
        v340 = *(v0 + 400);
        v343 = *(v0 + 392);
        v346 = *(v0 + 384);
        v351 = *(v0 + 376);
        sub_22C73F49C();

        v291 = *(v0 + 8);
        sub_22C3891B4();

        __asm { BRAA            X1, X16 }
      }

      v129 = *(v0 + 528);
      v130 = v305 + *(v323 + 72) * v124;
      v131 = *(v29 + 48);
      v132 = v319;
      *v129 = v319;
      sub_22C7400E0(v130, v129 + v131);
      ++v319;
      if (__OFADD__(v132, 1))
      {
        goto LABEL_88;
      }

      v127 = v124 + 1;
      sub_22C4E7208(*(v0 + 528), *(v0 + 536), &qword_27D9BFA80, &qword_22C923D78);
      v126 = 0;
LABEL_40:
      v133 = *(v0 + 544);
      v134 = *(v0 + 520);
      sub_22C36C640(*(v0 + 536), v126, 1, v134);
      v135 = sub_22C36BA00();
      sub_22C4E7208(v135, v136, &qword_27D9BFA88, &qword_22C923D80);
      v137 = sub_22C3707B4();
      if (sub_22C370B74(v137, v138, v134) == 1)
      {
        v261 = *(v0 + 512);
        (*v301)(*(v0 + 464), *(v0 + 408));
        sub_22C740204(v125, v59, v330);
        swift_unknownObjectRelease();
        sub_22C7401A8(v261);
        goto LABEL_25;
      }

      v328 = v127;
      sub_22C740144(*(v0 + 544) + *(v29 + 48), *(v0 + 504));
      sub_22C73F8E8();
      if (v139 != -1)
      {
        break;
      }

LABEL_49:
      v170 = *(v0 + 600);
      v172 = *(v0 + 496);
      v171 = *(v0 + 504);
      sub_22C903FAC();
      v173 = sub_22C36BAFC();
      sub_22C7400E0(v173, v174);
      v175 = sub_22C9063CC();
      v176 = sub_22C90AABC();
      v177 = os_log_type_enabled(v175, v176);
      v178 = *(v0 + 600);
      v179 = *(v0 + 568);
      v180 = *(v0 + 496);
      v325 = *(v0 + 504);
      if (v177)
      {
        v316 = *(v0 + 568);
        v181 = sub_22C36FB44();
        v312 = sub_22C370060();
        v353[0] = v312;
        *v181 = 136315138;
        v182 = (v180 + *(v341 + 20));
        v183 = *v182;
        v184 = v182[1];
        v186 = v182[2];
        v185 = v182[3];
        v310 = v182[4];
        v352[0] = 0;
        v352[1] = 0xE000000000000000;
        v314 = v178;
        sub_22C90AF5C();

        strcpy(v352, "Candidate(id: ");
        HIBYTE(v352[1]) = -18;
        MEMORY[0x2318B7850](v183, v184);
        MEMORY[0x2318B7850](0x656C646E7562202CLL, 0xEC000000203A6449);
        v187 = sub_22C37A06C();
        v59 = v322;
        MEMORY[0x2318B7850](v187);
        MEMORY[0x2318B7850](0x6C616E676973202CLL, 0xEB00000000203A73);
        sub_22C5F8D4C();
        v188 = sub_22C909EDC();
        MEMORY[0x2318B7850](v188);

        MEMORY[0x2318B7850](41, 0xE100000000000000);
        v189 = v352[0];
        v190 = v352[1];
        sub_22C7401A8(v180);
        v191 = sub_22C36F9F4(v189, v190, v353);

        *(v181 + 4) = v191;
        _os_log_impl(&dword_22C366000, v175, v176, "entityIdentifier can't be fetched for candidate: %s", v181, 0xCu);
        sub_22C36FF94(v312);
        sub_22C3699EC();
        sub_22C3699EC();

        v192 = v314;
        v193 = v316;
      }

      else
      {

        sub_22C7401A8(v180);
        v192 = v178;
        v193 = v179;
      }

      v336(v192, v193);
      sub_22C7401A8(v325);
      v29 = v324;
      v36 = v349;
      v125 = v320;
      v123 = v318;
      v124 = v328;
    }

    v140 = v139;
    v141 = (*(v0 + 504) + *(v341 + 20));
    v142 = v141[4];
    v143 = *(v141 + 1);
    *(v0 + 96) = *v141;
    *(v0 + 112) = v143;
    *(v0 + 128) = v142;
    if (v36[2] && (v144 = sub_22C628C68(), (v145 & 1) != 0))
    {
      v147 = *(v0 + 376);
      v146 = *(v0 + 384);
      v303(v147, v36[7] + *(v307 + 72) * v144, *(v0 + 408));
      sub_22C387310(v147);
      v148 = sub_22C36BAFC();
      v304(v148);
      sub_22C387310(v146);
      v149 = v334;
    }

    else
    {
      v150 = *(v0 + 408);
      v151 = *(v0 + 376);
      v152 = *(v0 + 384);
      v153 = *(v0 + 368);
      sub_22C36A748();
      sub_22C36C640(v154, v155, v156, v157);
      v158 = sub_22C374C34();
      v149 = 0;
      sub_22C73F7BC(v158, v159, v160);
      v161 = *(v0 + 408);
      v162 = *(v0 + 376);
      v163 = sub_22C3707B4();
      if (sub_22C370B74(v163, v164, v165) != 1)
      {
        sub_22C36DD28(v162, &qword_27D9BFA78, &qword_22C923D70);
      }
    }

    v166 = *(v0 + 408);
    v167 = *(v0 + 384);
    v334 = v149;
    if (sub_22C370B74(v167, 1, v166) == 1)
    {
      v168 = sub_22C374C34();
      sub_22C740204(v168, v169, v140);
      sub_22C36DD28(v167, &qword_27D9BFA78, &qword_22C923D70);
      v59 = v322;
      goto LABEL_49;
    }

    v195 = *(v0 + 440);
    v194 = *(v0 + 448);
    v196 = sub_22C36A724();
    v304(v196);
    v197 = v141[4];
    v198 = *(v141 + 1);
    *(v0 + 136) = *v141;
    *(v0 + 152) = v198;
    *(v0 + 168) = v197;
    v303(v195, v194, v166);
    swift_isUniquelyReferenced_nonNull_native();
    v352[0] = v36;
    result = sub_22C628C68();
    if (__OFADD__(v36[2], (v199 & 1) == 0))
    {
      goto LABEL_91;
    }

    v200 = result;
    v201 = v199;
    sub_22C3A5908(&qword_27D9BF3D8, &unk_22C9226A0);
    v202 = sub_22C90B15C();
    v36 = v352[0];
    if (v202)
    {
      break;
    }

    v125 = v320;
LABEL_58:
    v205 = *(v0 + 440);
    v206 = *(v0 + 408);
    if (v201)
    {
      (*(v307 + 40))(v36[7] + *(v307 + 72) * v200, v205, v206);
    }

    else
    {
      v36[(v200 >> 6) + 8] |= 1 << v200;
      v207 = v36[6] + 40 * v200;
      v208 = *(v0 + 136);
      v209 = *(v0 + 152);
      *(v207 + 32) = *(v0 + 168);
      *v207 = v208;
      *(v207 + 16) = v209;
      result = (v304)(v36[7] + *(v307 + 72) * v200, v205, v206);
      v210 = v36[2];
      v211 = __OFADD__(v210, 1);
      v212 = v210 + 1;
      if (v211)
      {
        goto LABEL_92;
      }

      v36[2] = v212;
      sub_22C633814(v0 + 136, v0 + 296);
    }

    if ((v330 & 1) == 0 || (v140 & 1) == 0)
    {
      v350 = v36;
      v221 = sub_22C374C34();
      sub_22C740204(v221, v222, v140);
      v223 = *(v0 + 464);
      v224 = *(v0 + 448);
      v225 = *sub_22C374168((v0 + 176), *(v0 + 200));
      sub_22C36A724();
      sub_22C9033DC();
      v334 = 0;
      v227 = v226;
      v228 = *(v0 + 608);
      v229 = *(v0 + 464);
      v230 = *(v0 + 448);
      v232 = *(v0 + 424);
      v231 = *(v0 + 432);
      v233 = *(v0 + 408);
      sub_22C903FAC();
      v303(v231, v229, v233);
      v303(v232, v230, v233);
      v234 = sub_22C9063CC();
      v235 = sub_22C90AABC();
      v236 = os_log_type_enabled(v234, v235);
      v238 = *(v0 + 424);
      v237 = *(v0 + 432);
      v239 = *(v0 + 408);
      if (v236)
      {
        v240 = sub_22C370060();
        *v240 = 134218496;
        *(v240 + 4) = v227;
        *(v240 + 12) = 2048;
        v317 = v234;
        v241 = sub_22C90338C();
        v242 = *v301;
        (*v301)(v237, v239);
        *(v240 + 14) = v241;
        v234 = v317;
        *(v240 + 22) = 2048;
        v243 = sub_22C90338C();
        v326 = v242;
        v242(v238, v239);
        *(v240 + 24) = v243;
        _os_log_impl(&dword_22C366000, v317, v235, "CandidateSimilarity score = %f calculated for entityIdentifier1: %llu and entityIdentifier2: %llu", v240, 0x20u);
        sub_22C3699EC();
      }

      else
      {
        v244 = *v301;
        (*v301)(*(v0 + 424), *(v0 + 408));
        v326 = v244;
        v244(v237, v239);
      }

      v245 = *(v0 + 608);
      v246 = *(v0 + 568);

      v336(v245, v246);
      v248 = *v321;
      v247 = v321[1];
      v250 = v321[2];
      v249 = v321[3];
      v251 = v321[4];
      v252 = v141[1];
      v253 = v141[3];
      v311 = v141[2];
      v313 = *v141;
      v254 = v141[4];

      v315 = v250;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v258 = *(v302 + 16);
        sub_22C594658();
        v302 = v259;
      }

      v255 = *(v302 + 16);
      if (v255 >= *(v302 + 24) >> 1)
      {
        sub_22C594658();
        v302 = v260;
      }

      v256 = *(v0 + 504);
      v326(*(v0 + 448), *(v0 + 408));
      sub_22C7401A8(v256);
      *(v302 + 16) = v255 + 1;
      v257 = (v302 + 88 * v255);
      v257[4] = v248;
      v257[5] = v247;
      v257[6] = v315;
      v257[7] = v249;
      v257[8] = v251;
      v257[9] = v313;
      v257[10] = v252;
      v257[11] = v311;
      v257[12] = v253;
      v257[13] = v254;
      v257[14] = v227;
      v29 = v324;
      v36 = v350;
      v59 = v322;
      v123 = v318;
      v124 = v328;
      goto LABEL_29;
    }

    v213 = *(v0 + 504);
    v214 = *(v0 + 448);
    v215 = *(v0 + 408);
    v216 = sub_22C374C34();
    sub_22C740204(v216, v217, v140);
    v218 = *v301;
    v219 = sub_22C36BAFC();
    v220(v219);
    sub_22C7401A8(v213);
    v29 = v324;
    v59 = v322;
    v123 = v318;
    v124 = v328;
  }

  v203 = sub_22C628C68();
  v125 = v320;
  if ((v201 & 1) == (v204 & 1))
  {
    v200 = v203;
    goto LABEL_58;
  }

LABEL_85:
  sub_22C3891B4();

  return sub_22C90B54C();
}

void sub_22C73F49C()
{
  sub_22C36BA7C();
  v47 = v0;
  v1 = sub_22C90637C();
  v2 = sub_22C369824(v1);
  v45 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v6 = sub_22C90634C();
  v7 = sub_22C369824(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v14 = v13 - v12;
  v15 = sub_22C90636C();
  v16 = sub_22C369824(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v23 = v22 - v21;
  sub_22C90365C();
  v24 = sub_22C90635C();
  sub_22C90638C();
  v44 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v43 = v9;

    sub_22C9063BC();

    v25 = *(v45 + 88);
    v26 = sub_22C36A724();
    if (v27(v26) == *MEMORY[0x277D85B00])
    {
      v28 = 0;
      v29 = 0;
      v46 = "[Error] Interval already ended";
    }

    else
    {
      v33 = *(v45 + 8);
      v34 = sub_22C36A724();
      v35(v34);
      v46 = "%s";
      v29 = 2;
      v28 = 1;
    }

    v36 = v18;
    v37 = sub_22C36FB44();
    v38 = sub_22C370060();
    v48 = v38;
    *v37 = v29;
    *(v37 + 1) = v28;
    *(v37 + 2) = 2080;
    sub_22C90366C();
    v39 = sub_22C90AF7C();
    v41 = sub_22C36F9F4(v39, v40, &v48);

    *(v37 + 4) = v41;
    v42 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v24, v44, v42, v47, v46, v37, 0xCu);
    sub_22C36FF94(v38);
    sub_22C3699EC();
    sub_22C3699EC();

    (*(v43 + 8))(v14, v6);
    (*(v36 + 8))(v23, v15);
  }

  else
  {

    v30 = *(v9 + 8);
    v31 = sub_22C36EBF0();
    v32(v31);
    (*(v18 + 8))(v23, v15);
  }

  sub_22C36CC48();
}

uint64_t sub_22C73F7BC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    swift_beginAccess();
    sub_22C4E719C(v3 + 24, v11, &qword_27D9BFA70, &qword_22C923D68);
    if (v12)
    {
      sub_22C378A4C(v11, v10);
      sub_22C36DD28(v11, &qword_27D9BFA70, &qword_22C923D68);
      sub_22C374168(v10, v10[3]);
      sub_22C36EBF0();
      sub_22C9033BC();
      return sub_22C36FF94(v10);
    }

    else
    {
      sub_22C36DD28(v11, &qword_27D9BFA70, &qword_22C923D68);
      sub_22C90339C();
      sub_22C36A748();
      return sub_22C36C640(v6, v7, v8, v9);
    }
  }

  else
  {
    v5 = *(v3 + 16);

    sub_22C36EBF0();
    sub_22C73FE10();
  }
}

void sub_22C73F8E8()
{
  sub_22C36BA7C();
  v1 = v0;
  v2 = sub_22C90926C();
  v3 = sub_22C369824(v2);
  v76 = v4;
  v77 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v9 = v8 - v7;
  v10 = sub_22C9092DC();
  v11 = sub_22C369824(v10);
  v78 = v12;
  v79 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v17 = v16 - v15;
  v18 = sub_22C90931C();
  v19 = sub_22C369824(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369ABC();
  v26 = (v24 - v25);
  MEMORY[0x28223BE20](v27);
  v29 = &v76 - v28;
  v30 = sub_22C9093BC();
  v31 = sub_22C369824(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22C369838();
  v38 = (v37 - v36);
  (*(v33 + 16))(v37 - v36, v1, v30);
  v39 = *(v33 + 88);
  v40 = sub_22C37A06C();
  if (v41(v40) != *MEMORY[0x277D72A58])
  {
    v58 = *(v33 + 8);
    v59 = sub_22C37A06C();
    v60(v59);
    goto LABEL_11;
  }

  v42 = *(v33 + 96);
  v43 = sub_22C37A06C();
  v44(v43);
  v45 = *v38;
  v46 = swift_projectBox();
  v47 = *(v21 + 16);
  v47(v29, v46, v18);
  v47(v26, v29, v18);
  v48 = (*(v21 + 88))(v26, v18);
  if (v48 != *MEMORY[0x277D729B0])
  {
    if (v48 == *MEMORY[0x277D72970])
    {
      v61 = sub_22C3833DC();
      v62(v61);
      v64 = v76;
      v63 = v77;
      v65 = *(v76 + 32);
      v66 = sub_22C374C34();
      v67(v66);
      sub_22C90924C();
      (*(v64 + 8))(v9, v63);
      v68 = *(v21 + 8);
      v69 = sub_22C36A724();
      v70(v69);

      goto LABEL_11;
    }

    v71 = *(v21 + 8);
    v72 = sub_22C36A724();
    v71(v72);
    (v71)(v26, v18);
LABEL_10:

    goto LABEL_11;
  }

  v49 = sub_22C3833DC();
  v50(v49);
  v51 = v78;
  v52 = v79;
  (*(v78 + 32))(v17, v26, v79);
  v53 = sub_22C9092CC();
  v54 = [v53 contactIdentifier];

  if (!v54)
  {
    (*(v51 + 8))(v17, v52);
    v73 = *(v21 + 8);
    v74 = sub_22C36A724();
    v75(v74);
    goto LABEL_10;
  }

  sub_22C90A11C();

  (*(v51 + 8))(v17, v52);
  v55 = *(v21 + 8);
  v56 = sub_22C36A724();
  v57(v56);

LABEL_11:
  sub_22C36CC48();
}

uint64_t sub_22C73FD68()
{
  v1 = *(v0 + 16);

  sub_22C36DD28(v0 + 24, &qword_27D9BFA70, &qword_22C923D68);
  sub_22C36DD28(v0 + 64, &qword_27D9BFA90, &unk_22C923D88);
  return v0;
}

uint64_t sub_22C73FDB8()
{
  sub_22C73FD68();

  return swift_deallocClassInstance();
}

void sub_22C73FE10()
{
  sub_22C36BA7C();
  v1 = sub_22C9063DC();
  v2 = sub_22C369824(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v9 = v8 - v7;
  v10 = *(v0 + 16);
  if (v10 && (sub_22C36EBF0(), v11 = sub_22C90A0EC(), v12 = [v10 personForIdentifier_], v11, v12))
  {
    v13 = [v12 entityIdentifier];
    sub_22C9033AC();

    sub_22C90339C();
    sub_22C36CC48();

    sub_22C36C640(v14, v15, v16, v17);
  }

  else
  {
    sub_22C903FAC();

    v19 = sub_22C9063CC();
    v20 = sub_22C90AADC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = sub_22C36FB44();
      v29 = sub_22C370060();
      *v21 = 136315138;
      v22 = sub_22C36EBF0();
      *(v21 + 4) = sub_22C36F9F4(v22, v23, v24);
      _os_log_impl(&dword_22C366000, v19, v20, "person is nil for identifier %s", v21, 0xCu);
      sub_22C36FF94(v29);
      sub_22C3699EC();
      sub_22C3699EC();
    }

    (*(v4 + 8))(v9, v1);
    sub_22C90339C();
    sub_22C36A748();
    sub_22C36C640(v25, v26, v27, v28);
    sub_22C36CC48();
  }
}

uint64_t sub_22C740030()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_22C74008C()
{
  result = qword_27D9BFA98;
  if (!qword_27D9BFA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFA98);
  }

  return result;
}

uint64_t sub_22C7400E0(uint64_t a1, uint64_t a2)
{
  v4 = _s14TypedCandidateVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C740144(uint64_t a1, uint64_t a2)
{
  v4 = _s14TypedCandidateVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C7401A8(uint64_t a1)
{
  v2 = _s14TypedCandidateVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C740204(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_22C74021C();
  }

  return result;
}

uint64_t sub_22C740278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = sub_22C90931C();
  v6[9] = v7;
  sub_22C3699B8(v7);
  v6[10] = v8;
  v10 = *(v9 + 64);
  v6[11] = sub_22C3699D4();
  v11 = sub_22C3A5908(&qword_27D9BB670, &unk_22C90FA40);
  sub_22C369914(v11);
  v13 = *(v12 + 64);
  v6[12] = sub_22C3699D4();
  v14 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v14);
  v16 = *(v15 + 64);
  v6[13] = sub_22C3699D4();
  v17 = sub_22C90930C();
  v6[14] = v17;
  sub_22C3699B8(v17);
  v6[15] = v18;
  v20 = *(v19 + 64);
  v6[16] = sub_22C3699D4();
  v21 = sub_22C9063DC();
  v6[17] = v21;
  sub_22C3699B8(v21);
  v6[18] = v22;
  v24 = *(v23 + 64);
  v6[19] = sub_22C3699D4();
  v25 = type metadata accessor for DeviceContextClient.DeviceContextClientCurareEvent();
  v6[20] = v25;
  sub_22C369914(v25);
  v27 = *(v26 + 64);
  v6[21] = sub_22C3699D4();

  return MEMORY[0x2822009F8](sub_22C740444, 0, 0);
}

uint64_t sub_22C740444()
{
  v1 = *(v0[8] + 16);
  v0[22] = v1;
  if (v1)
  {
    v2 = v0[21];
    v3 = *MEMORY[0x277D1EA90];
    v4 = sub_22C90355C();
    (*(*(v4 - 8) + 104))(v2, v3, v4);
    v5 = *(MEMORY[0x277D08430] + 4);
    swift_retain_n();
    v6 = swift_task_alloc();
    v0[23] = v6;
    sub_22C3A5908(&qword_27D9BFAA8, &qword_22C9297F0);
    sub_22C7419DC(&qword_281434068, type metadata accessor for DeviceContextClient.DeviceContextClientCurareEvent);
    sub_22C7419DC(&qword_281434070, type metadata accessor for DeviceContextClient.DeviceContextClientCurareEvent);
    sub_22C741208(&qword_28142FA10, &qword_281435748);
    sub_22C741208(&qword_28142FA18, &qword_281435750);
    *v6 = v0;
    v6[1] = sub_22C740734;
    v7 = v0[21];
    v8 = v0[6];
    v9 = v0[7];
    v10 = v0[4];
    v11 = v0[5];
    v16 = v0[20];

    return MEMORY[0x28215E720](v0 + 2, v10, v11, v8, v9, v7, &unk_22C923E10, v1);
  }

  else
  {
    sub_22C5F2300();
    swift_allocError();
    *v12 = 0xD000000000000026;
    v12[1] = 0x800000022C9344B0;
    swift_willThrow();
    sub_22C371C08();

    sub_22C369A24();

    return v13();
  }
}

uint64_t sub_22C740734()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 176);
  sub_22C7412A4(*(v2 + 168));

  if (v0)
  {
    v6 = sub_22C740EB0;
  }

  else
  {
    v6 = sub_22C740884;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22C740884()
{
  v80 = v0;
  v1 = v0[19];
  v2 = v0[2];
  sub_22C903FAC();

  v3 = sub_22C9063CC();
  v4 = sub_22C90AABC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[18];
  v7 = v0[19];
  v8 = v0[17];
  if (v5)
  {
    v77 = v0[19];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v79 = v10;
    *v9 = 136315138;
    v11 = sub_22C90399C();
    v12 = MEMORY[0x2318B7AD0](v2, v11);
    v14 = sub_22C36F9F4(v12, v13, &v79);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_22C366000, v3, v4, "On device location context: %s", v9, 0xCu);
    sub_22C36FF94(v10);
    MEMORY[0x2318B9880](v10, -1, -1);
    MEMORY[0x2318B9880](v9, -1, -1);

    (*(v6 + 8))(v77, v8);
  }

  else
  {

    (*(v6 + 8))(v7, v8);
  }

  v15 = v0[12];
  sub_22C58B5AC(v2, v15);

  v16 = sub_22C90399C();
  if (sub_22C370B74(v15, 1, v16) != 1)
  {
    v21 = v0[12];
    v22 = v0[13];
    sub_22C90391C();
    (*(*(v16 - 8) + 8))(v21, v16);
    v23 = sub_22C9093BC();
    if (sub_22C370B74(v22, 1, v23) == 1)
    {
      v24 = v0[22];

      goto LABEL_8;
    }

    v34 = *(v23 - 8);
    if ((*(v34 + 88))(v0[13], v23) != *MEMORY[0x277D72A58])
    {
      v54 = v0[22];
      v55 = v0[13];

      (*(v34 + 8))(v55, v23);
      goto LABEL_9;
    }

    v35 = v0[13];
    v37 = v0[10];
    v36 = v0[11];
    v38 = v0[9];
    (*(v34 + 96))(v35, v23);
    v39 = *v35;
    v40 = swift_projectBox();
    (*(v37 + 16))(v36, v40, v38);
    if ((*(v37 + 88))(v36, v38) != *MEMORY[0x277D729D0])
    {
      v56 = v0[22];
      v58 = v0[10];
      v57 = v0[11];
      v59 = v0[9];

      (*(v58 + 8))(v57, v59);

      goto LABEL_9;
    }

    v42 = v0[15];
    v41 = v0[16];
    v43 = v0[14];
    v44 = v0[11];
    (*(v0[10] + 96))(v44, v0[9]);
    (*(v42 + 32))(v41, v44, v43);

    v45 = sub_22C9092FC();
    v46 = sub_22C74182C(v45);
    v48 = v47;
    v49 = *MEMORY[0x277D01468];
    v50 = sub_22C90A11C();
    if (v48)
    {
      if (v46 == v50 && v48 == v51)
      {
      }

      else
      {
        v53 = sub_22C90B4FC();

        if ((v53 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v46 = 0;
      v48 = 0;
    }

    else
    {
    }

LABEL_27:
    v60 = [v45 location];
    v61 = v60;
    v78 = v46;
    if (v60)
    {
      [v60 coordinate];
      v63 = v62;
      v65 = v64;
    }

    else
    {
      v63 = 0;
      v65 = 0;
    }

    v66 = [v45 name];
    v67 = v0[22];
    v68 = v0[15];
    v69 = v0[16];
    v70 = v0[14];
    if (v66)
    {
      v71 = v66;
      v72 = sub_22C90A11C();
      v74 = v73;

      (*(v68 + 8))(v69, v70);
    }

    else
    {
      (*(v68 + 8))(v0[16], v0[14]);

      v72 = 0;
      v74 = 0;
    }

    v75 = v0[3];
    *v75 = v72;
    *(v75 + 8) = v74;
    *(v75 + 16) = v78;
    *(v75 + 24) = v76;
    *(v75 + 32) = v63;
    *(v75 + 40) = v61 == 0;
    *(v75 + 48) = v65;
    *(v75 + 56) = v61 == 0;
    goto LABEL_10;
  }

  v17 = v0[22];
  v18 = v0[12];
  v19 = v0[13];

  sub_22C3770B0(v18, &qword_27D9BB670, &unk_22C90FA40);
  v20 = sub_22C9093BC();
  sub_22C36C640(v19, 1, 1, v20);
LABEL_8:
  sub_22C3770B0(v0[13], &qword_27D9BB908, &qword_22C910960);
LABEL_9:
  v25 = v0[3];
  *v25 = xmmword_22C9114A0;
  v25[1] = 0u;
  v25[2] = 0u;
  *(v25 + 41) = 0u;
LABEL_10:
  v26 = v0[21];
  v27 = v0[19];
  v28 = v0[16];
  v30 = v0[12];
  v29 = v0[13];
  v31 = v0[11];

  sub_22C369A24();

  return v32();
}

uint64_t sub_22C740EB0()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 192);
  sub_22C371C08();

  sub_22C369A24();

  return v3();
}

uint64_t sub_22C740F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_22C740F6C, 0, 0);
}

uint64_t sub_22C740F6C()
{
  v1 = *(v0 + 24);
  sub_22C3A5908(&qword_27D9BFAB0, &unk_22C923E20);
  v2 = sub_22C90355C();
  sub_22C369824(v2);
  v4 = v3;
  v6 = *(v5 + 72);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22C90F800;
  (*(v4 + 104))(v8 + v7, *MEMORY[0x277D1EA90], v2);
  v9 = sub_22C90437C();

  **(v0 + 16) = v9;
  sub_22C369A24();

  return v10();
}

uint64_t sub_22C7410B4()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DeviceContextClient.DeviceContextClientCurareEvent()
{
  result = qword_281434030;
  if (!qword_281434030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C74115C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22C3FCA88;

  return sub_22C740F4C(a1, a2, v2);
}

uint64_t sub_22C741208(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_22C3AC1A0(&qword_27D9BFAA8, &qword_22C9297F0);
    sub_22C7419DC(a2, MEMORY[0x277D1EE00]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C7412A4(uint64_t a1)
{
  v2 = type metadata accessor for DeviceContextClient.DeviceContextClientCurareEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C741300(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x54747865746E6F63 && a2 == 0xEB00000000657079)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C90B4FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C74139C(void *a1)
{
  v2 = sub_22C3A5908(&qword_27D9BFAC0, &qword_22C923EA8);
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C741924();
  sub_22C90B6CC();
  sub_22C90355C();
  sub_22C37383C();
  sub_22C7419DC(v11, v12);
  sub_22C90B41C();
  return (*(v5 + 8))(v9, v2);
}

uint64_t sub_22C7414F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_22C90355C();
  v5 = sub_22C369824(v4);
  v30 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v33 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C3A5908(&qword_27D9BFAB8, &qword_22C923EA0);
  v11 = sub_22C369824(v10);
  v31 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v29 - v15;
  v17 = type metadata accessor for DeviceContextClient.DeviceContextClientCurareEvent();
  v18 = sub_22C369914(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C741924();
  sub_22C90B6BC();
  if (!v2)
  {
    v24 = v30;
    v25 = v32;
    sub_22C37383C();
    sub_22C7419DC(v26, v27);
    sub_22C90B32C();
    (*(v31 + 8))(v16, v10);
    (*(v24 + 32))(v22, v33, v4);
    sub_22C741978(v22, v25);
  }

  return sub_22C36FF94(a1);
}

uint64_t sub_22C741758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C741300(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C741784(uint64_t a1)
{
  v2 = sub_22C741924();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C7417C0(uint64_t a1)
{
  v2 = sub_22C741924();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C74182C(void *a1)
{
  v1 = [a1 category];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22C90A11C();

  return v3;
}

uint64_t sub_22C7418B8()
{
  result = sub_22C90355C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_22C741924()
{
  result = qword_281434088[0];
  if (!qword_281434088[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281434088);
  }

  return result;
}

uint64_t sub_22C741978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceContextClient.DeviceContextClientCurareEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C7419DC(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for DeviceContextClient.DeviceContextClientCurareEvent.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_22C741AD4()
{
  result = qword_27D9BFAC8;
  if (!qword_27D9BFAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFAC8);
  }

  return result;
}

unint64_t sub_22C741B2C()
{
  result = qword_281434078;
  if (!qword_281434078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281434078);
  }

  return result;
}

unint64_t sub_22C741B84()
{
  result = qword_281434080;
  if (!qword_281434080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281434080);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for JointResolution(_BYTE *result, int a2, int a3)
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

uint64_t sub_22C741C88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x706E496C65646F6DLL && a2 == 0xEA00000000007475;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74754F6C65646F6DLL && a2 == 0xEB00000000747570;
    if (v6 || (sub_22C90B4FC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7265566C65646F6DLL && a2 == 0xEC0000006E6F6973)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C90B4FC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22C741DA8(char a1)
{
  if (!a1)
  {
    return 0x706E496C65646F6DLL;
  }

  if (a1 == 1)
  {
    return 0x74754F6C65646F6DLL;
  }

  return 0x7265566C65646F6DLL;
}

uint64_t sub_22C741E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C741C88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C741E44(uint64_t a1)
{
  v2 = sub_22C74207C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C741E80(uint64_t a1)
{
  v2 = sub_22C74207C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JointResolution.JointResolverCurareEvent.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[1] = a5;
  v19 = a3;
  v8 = sub_22C3A5908(&qword_27D9BFAD0, &unk_22C923FE0);
  v9 = sub_22C369824(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = v18 - v14;
  v16 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C74207C();
  sub_22C90B6CC();
  v21 = a2;
  v20 = 0;
  sub_22C3A5908(&qword_27D9BFAE0, &unk_22C92A980);
  sub_22C74231C(&qword_27D9BFAE8);
  sub_22C373854();
  if (!v5)
  {
    v21 = v19;
    v20 = 1;
    sub_22C373854();
    LOBYTE(v21) = 2;
    sub_22C90B3CC();
  }

  return (*(v11 + 8))(v15, v8);
}

unint64_t sub_22C74207C()
{
  result = qword_27D9BFAD8;
  if (!qword_27D9BFAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFAD8);
  }

  return result;
}

uint64_t JointResolution.JointResolverCurareEvent.init(from:)(uint64_t *a1)
{
  v3 = sub_22C3A5908(&qword_27D9BFAF0, &qword_22C923FF0);
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = a1[3];
  sub_22C374168(a1, v9);
  sub_22C74207C();
  sub_22C90B6BC();
  if (!v1)
  {
    sub_22C3A5908(&qword_27D9BFAE0, &unk_22C92A980);
    sub_22C74231C(&qword_27D9BFAF8);
    sub_22C36B514();
    v9 = v14;
    sub_22C36B514();
    sub_22C90B2DC();
    v11 = *(v6 + 8);
    v12 = sub_22C3806B8();
    v13(v12);
  }

  sub_22C36FF94(a1);
  return v9;
}

uint64_t sub_22C74231C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22C3AC1A0(&qword_27D9BFAE0, &unk_22C92A980);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C742388@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = JointResolution.JointResolverCurareEvent.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

_BYTE *_s24JointResolverCurareEventV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C7424C8()
{
  result = qword_27D9BFB00;
  if (!qword_27D9BFB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFB00);
  }

  return result;
}

unint64_t sub_22C742520()
{
  result = qword_27D9BFB08;
  if (!qword_27D9BFB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFB08);
  }

  return result;
}

unint64_t sub_22C742578()
{
  result = qword_27D9BFB10;
  if (!qword_27D9BFB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFB10);
  }

  return result;
}

unint64_t sub_22C7425CC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = 4 << v7;
  v21 = a3 & 0xFFFFFFFFFFFFFFLL;
  v19 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v9 = 15;
  while (1)
  {
    if (4 * v6 == v9 >> 14)
    {
      return a1;
    }

    result = v9;
    if ((v9 & 0xC) == v8)
    {
      v13 = sub_22C743024();
      result = sub_22C8A3F0C(v13, v14, v15);
    }

    v11 = result >> 16;
    if (result >> 16 >= v6)
    {
      break;
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      result = sub_22C90A3FC();
      v12 = result;
    }

    else if ((a3 & 0x2000000000000000) != 0)
    {
      v20[0] = a2;
      v20[1] = v21;
      v12 = *(v20 + v11);
    }

    else
    {
      result = v19;
      if ((a2 & 0x1000000000000000) == 0)
      {
        result = sub_22C90AFCC();
      }

      v12 = *(result + v11);
    }

    if ((v9 & 0xC) == v8)
    {
      v16 = sub_22C743024();
      result = sub_22C8A3F0C(v16, v17, v18);
      v9 = result;
      if ((a3 & 0x1000000000000000) == 0)
      {
LABEL_19:
        v9 = (v9 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_24;
      }
    }

    else if ((a3 & 0x1000000000000000) == 0)
    {
      goto LABEL_19;
    }

    if (v6 <= v9 >> 16)
    {
      goto LABEL_27;
    }

    sub_22C743024();
    v9 = sub_22C90A3CC();
LABEL_24:
    a1 = 33 * a1 + v12;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

__n128 JointResolution.DeviceContext.init(timestamp:location:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22C90063C();
  sub_22C36985C(v6);
  (*(v7 + 32))(a3, a1);
  v8 = a3 + *(type metadata accessor for JointResolution.DeviceContext() + 20);
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  *(v8 + 32) = *(a2 + 32);
  result = *(a2 + 41);
  *(v8 + 41) = result;
  return result;
}

uint64_t type metadata accessor for JointResolution.DeviceContext()
{
  result = qword_2814346F0;
  if (!qword_2814346F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t JointResolution.DeviceContext.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C90063C();
  v4 = sub_22C36985C(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t JointResolution.DeviceContext.location.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JointResolution.DeviceContext() + 20));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11[0] = v4;
  *(v11 + 9) = *(v3 + 41);
  v6 = *(v11 + 9);
  v9 = *v3;
  *a1 = v9;
  a1[1] = v5;
  a1[2] = v4;
  *(a1 + 41) = v6;
  return sub_22C7428D8(&v9, &v8);
}

uint64_t sub_22C7428D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BFB18, qword_22C9245B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_22C742948()
{
  v2 = v0;
  sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22C922290;
  sub_22C3D3108();
  *(v3 + 32) = sub_22C90ABEC();
  v4 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v5 = sub_22C5F2214(v3, 65568);
  if (!v1)
  {
    v6 = sub_22C9005CC();
    v7 = sub_22C373880();
    sub_22C378608(v7, v8, v9, v10, v11, v12, v13, v14, v15);
    v7[2].n128_u64[0] = sub_22C90ABEC();
    if (v6)
    {
      sub_22C90053C();
      log(fabs(v16));
      v17 = sub_22C90A83C();
    }

    else
    {
      v17 = sub_22C90ABEC();
    }

    v18 = v17;
    v19 = sub_22C90A5DC();

    v20 = sub_22C36B544();
    [v20 v21];

    v22 = (v2 + *(type metadata accessor for JointResolution.DeviceContext() + 20));
    v23 = v22[1];
    if (v23 >= 2)
    {
      sub_22C7425CC(5381, *v22, v23);
      v23 = v22[1];
    }

    if (v23 != 1)
    {
      v24 = v22[3];
      if (v24)
      {
        sub_22C7425CC(5381, v22[2], v24);
      }
    }

    v25 = sub_22C373880();
    sub_22C378608(v25, v26, v27, v28, v29, v30, v31, v32, v33);
    v25[2].n128_u64[0] = sub_22C90ABEC();
    v34 = sub_22C90B5CC();
    v35 = sub_22C90A5DC();

    v36 = sub_22C36B544();
    [v36 v37];

    v38 = sub_22C373880();
    sub_22C378608(v38, v39, v40, v41, v42, v43, v44, v45, v46);
    v38[2].n128_u64[0] = sub_22C90ABEC();
    v47 = sub_22C90B5CC();
    v48 = sub_22C90A5DC();

    v49 = sub_22C36B544();
    [v49 v50];

    v51 = sub_22C373880();
    sub_22C378608(v51, v52, v53, v54, v55, v56, v57, v58, v59);
    v51[2].n128_u64[0] = sub_22C90ABEC();
    v60 = sub_22C90ABEC();
    v61 = sub_22C90A5DC();

    v62 = sub_22C36B544();
    [v62 v63];
  }

  return v5;
}

BOOL static JointResolution.DeviceContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_22C9005EC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for JointResolution.DeviceContext();
  v5 = (a1 + *(v4 + 20));
  v6 = v5[1];
  v40[0] = v5[2];
  *(v40 + 9) = *(v5 + 41);
  v7 = v5[1];
  v39[0] = *v5;
  v39[1] = v7;
  v8 = (a2 + *(v4 + 20));
  *(v43 + 9) = *(v8 + 41);
  v9 = v8[2];
  v10 = *v8;
  v42 = v8[1];
  v43[0] = v9;
  v41 = v10;
  v11 = v39[0];
  v12 = v5[2];
  v37 = v6;
  v38[0] = v12;
  *(v38 + 9) = *(v5 + 41);
  v13 = v10;
  v14 = v8[2];
  v35 = v42;
  v36[0] = v14;
  *(v36 + 9) = *(v8 + 41);
  if (*(&v39[0] + 1) == 1)
  {
    if (*(&v10 + 1) == 1)
    {
      *&v31 = *&v39[0];
      *(&v31 + 1) = 1;
      v15 = v5[2];
      v32 = v5[1];
      v33[0] = v15;
      *(v33 + 9) = *(v5 + 41);
      sub_22C7428D8(v39, &v28);
      sub_22C7428D8(&v41, &v28);
      sub_22C36DD28(&v31, &qword_27D9BFB18, qword_22C9245B0);
      return 1;
    }

    sub_22C7428D8(v39, &v31);
    sub_22C7428D8(&v41, &v31);
    goto LABEL_8;
  }

  v31 = v39[0];
  v16 = *(v5 + 41);
  v17 = v5[2];
  v32 = v5[1];
  v33[0] = v17;
  *(v33 + 9) = v16;
  v28 = v39[0];
  v29 = v32;
  v30[0] = v33[0];
  *(v30 + 9) = v16;
  if (*(&v10 + 1) == 1)
  {
    v25 = v31;
    v26 = v32;
    v27[0] = v33[0];
    *(v27 + 9) = *(v33 + 9);
    sub_22C7428D8(v39, v23);
    sub_22C7428D8(&v41, v23);
    sub_22C7428D8(&v31, v23);
    sub_22C742ED0(&v25);
LABEL_8:
    v31 = v11;
    v32 = v37;
    v33[0] = v38[0];
    *(v33 + 9) = *(v38 + 9);
    v33[2] = v13;
    v33[3] = v35;
    v34[0] = v36[0];
    *(v34 + 9) = *(v36 + 9);
    sub_22C36DD28(&v31, &qword_27D9BFB20, &qword_22C9241B0);
    return 0;
  }

  v19 = v8[2];
  v26 = v8[1];
  v27[0] = v19;
  *(v27 + 9) = *(v8 + 41);
  v25 = v10;
  v20 = static JointResolverLocationSignal.== infix(_:_:)(&v28, &v25);
  v21[0] = v25;
  v21[1] = v26;
  v22[0] = v27[0];
  *(v22 + 9) = *(v27 + 9);
  sub_22C7428D8(v39, v23);
  sub_22C7428D8(&v41, v23);
  sub_22C7428D8(&v31, v23);
  sub_22C742ED0(v21);
  v23[0] = v28;
  v23[1] = v29;
  v24[0] = v30[0];
  *(v24 + 9) = *(v30 + 9);
  sub_22C742ED0(v23);
  v25 = v11;
  v26 = v37;
  v27[0] = v38[0];
  *(v27 + 9) = *(v38 + 9);
  sub_22C36DD28(&v25, &qword_27D9BFB18, qword_22C9245B0);
  return (v20 & 1) != 0;
}

void sub_22C742F50()
{
  sub_22C90063C();
  if (v0 <= 0x3F)
  {
    sub_22C742FD4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C742FD4()
{
  if (!qword_281431C18)
  {
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_281431C18);
    }
  }
}

uint64_t sub_22C743034(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  sub_22C5F8D4C();
  v8 = sub_22C909F0C();
  if (v3)
  {
    v9 = 0;
  }

  else
  {
    v9 = v4 == 0xE000000000000000;
  }

  if (!v9 && (sub_22C90B4FC() & 1) == 0 || (!v5 ? (v10 = v6 == 0xE000000000000000) : (v10 = 0), !v10 && (sub_22C90B4FC() & 1) == 0))
  {

    swift_bridgeObjectRelease_n();
    goto LABEL_14;
  }

  sub_22C749DA0(v7, v8);
  v12 = v11;

  swift_bridgeObjectRelease_n();
  if ((v12 & 1) == 0)
  {
LABEL_14:

    v16[0] = v3;
    v16[1] = v4;
    v16[2] = v5;
    v16[3] = v6;
    v17 = sub_22C909F0C();
    MEMORY[0x28223BE20](v17);
    os_unfair_lock_lock((a2 + 24));
    sub_22C7432B4((a2 + 16), &v15);
    os_unfair_lock_unlock((a2 + 24));
    v13 = v15;
    sub_22C740224(v16);
    return v13;
  }

  return -1;
}

unint64_t sub_22C7431E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  if (*(*a1 + 16))
  {
    result = sub_22C628C68();
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * result);
LABEL_9:
      *a3 = v9;
      return result;
    }
  }

  v11 = sub_22C3D0D58(v10);
  v13 = v12;

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  v9 = v14 + 1;
  if (!__OFADD__(v14, 1))
  {
    v15 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    v16 = *a1;
    result = sub_22C62EDB8(v9, a2);
    *a1 = v16;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_22C7432D0()
{
  v1 = v0[1];
  v2 = v1;
  switch(*v0)
  {
    case 1:
      return v2;
    case 2:
      return v1;
    case 3:
      v3 = v0[2];
      if (!*(v3 + 16))
      {
        sub_22C36C260();
        sub_22C90AF5C();

        sub_22C36A828();
        v46 = v37 | 1;
        v49 = v36;
        sub_22C90B47C();
        sub_22C36DA20();

        v34 = 0x616469646E616320;
        v35 = 0xEB00000000736574;
        goto LABEL_36;
      }

      v4 = *(v3 + 32);
      v5 = v0[4];
      v6 = *(v5 + 16);
      v7 = MEMORY[0x277D84F90];
      if (!v6)
      {
        goto LABEL_33;
      }

      v52 = MEMORY[0x277D84F90];
      sub_22C3B77B8();
      v7 = v52;
      v8 = (v5 + 32);
      do
      {
        v9 = *v8;
        if (v1 < 0 || v1 >= *(v9 + 16))
        {

          sub_22C90AF5C();

          sub_22C36A828();
          v48 = v44 + 18;
          v51 = v43;
          sub_22C90B47C();
          sub_22C36DA20();

          v2 = v51;
          sub_22C5F2300();
          sub_22C36FBE4();
          *v45 = v48;
          v45[1] = v51;
          swift_willThrow();

          goto LABEL_42;
        }

        v10 = *(v9 + 4 * v1 + 32);
        v12 = *(v52 + 16);
        v11 = *(v52 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_22C369AB0(v11);
          sub_22C3B77B8();
        }

        *(v52 + 16) = v12 + 1;
        *(v52 + 4 * v12 + 32) = v10;
        ++v8;
        --v6;
      }

      while (v6);
LABEL_33:
      v2 = sub_22C8A5E24(v7, v4);
      v33 = v32;

      if ((v33 & 1) == 0)
      {
        return v2;
      }

      goto LABEL_34;
    case 4:
      v13 = v0[4];
      v14 = *(v13 + 16);
      v15 = MEMORY[0x277D84F90];
      if (!v14)
      {
        goto LABEL_21;
      }

      v53 = MEMORY[0x277D84F90];
      sub_22C3B77B8();
      v15 = v53;
      v16 = (v13 + 32);
      break;
    default:
      sub_22C5F2300();
      sub_22C36FBE4();
      *v20 = 0xD000000000000021;
      v20[1] = 0x800000022C9344E0;
      goto LABEL_37;
  }

  do
  {
    v2 = *v16;
    if (v1 < 0 || v1 >= *(v2 + 16))
    {

      sub_22C90AF5C();

      sub_22C36A828();
      v47 = v41 + 18;
      v50 = v40;
      sub_22C90B47C();
      sub_22C36DA20();

      sub_22C5F2300();
      sub_22C36FBE4();
      *v42 = v47;
      v42[1] = v50;
      swift_willThrow();

LABEL_42:

      return v2;
    }

    v17 = *(v2 + 4 * v1 + 32);
    v19 = *(v53 + 16);
    v18 = *(v53 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_22C369AB0(v18);
      sub_22C3B77B8();
    }

    *(v53 + 16) = v19 + 1;
    *(v53 + 4 * v19 + 32) = v17;
    ++v16;
    --v14;
  }

  while (v14);
LABEL_21:
  v2 = 0;
  v21 = v0[2];
  v22 = *(v21 + 16);
  v23 = v21 + 32;
  v24 = MEMORY[0x277D84F90];
LABEL_22:
  if (v2 == v22)
  {

    return v1;
  }

  else
  {
    v25 = 0;
    v26 = *(v23 + 4 * v2++);
    while (*(v15 + 16) != v25)
    {
      if (*(v15 + 4 * v25 + 32) == v26)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = *(v24 + 16);
          sub_22C36D270();
          sub_22C590E18();
          v24 = v30;
        }

        v28 = *(v24 + 16);
        v27 = *(v24 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_22C369AB0(v27);
          sub_22C590E18();
          v24 = v31;
        }

        *(v24 + 16) = v28 + 1;
        *(v24 + 8 * v28 + 32) = v25;
        goto LABEL_22;
      }

      ++v25;
    }

LABEL_34:
    sub_22C36C260();
    sub_22C90AF5C();
    sub_22C3709A0();
    sub_22C90A89C();
    sub_22C3709A0();
    sub_22C90B47C();
    sub_22C36DA20();

    v34 = 0xD000000000000011;
    v35 = 0x800000022C934580;
LABEL_36:
    MEMORY[0x2318B7850](v34, v35);
    sub_22C5F2300();
    sub_22C36FBE4();
    *v38 = v46;
    v38[1] = v49;
LABEL_37:
    swift_willThrow();
  }

  return v2;
}

BOOL sub_22C74387C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v16 = MEMORY[0x277D84F90];
    sub_22C3B7698();
    v3 = v16;
    v4 = a1 + 32;
    v5 = v16[2];
    v6 = v2;
    do
    {
      v7 = *(*v4 + 16);
      if (v5 >= v16[3] >> 1)
      {
        sub_22C3B7698();
      }

      v16[2] = v5 + 1;
      v16[v5 + 4] = v7;
      v4 += 8;
      ++v5;
      --v6;
    }

    while (v6);
  }

  v8 = sub_22C3D0D14(v3);
  v10 = v9;

  if ((v10 & 1) != 0 || !v8)
  {
    sub_22C5F2300();
    sub_22C36FBE4();
    *v14 = 0xD000000000000019;
    v14[1] = 0x800000022C9346F0;
    swift_willThrow();
  }

  else
  {
    v11 = (a1 + 32);
    do
    {
      v12 = v2 == 0;
      if (!v2)
      {
        break;
      }

      v13 = *v11++;
      --v2;
    }

    while (*(v13 + 16) == v8);
  }

  return v12;
}

uint64_t sub_22C7439F8(uint64_t a1)
{
  result = sub_22C74387C(a1);
  if (!v1)
  {
    if ((result & 1) != 0 && *(a1 + 16))
    {
      return *(*(a1 + 32) + 16);
    }

    else
    {
      sub_22C5F2300();
      sub_22C36FBE4();
      *v4 = 0xD000000000000029;
      v4[1] = 0x800000022C9346C0;
      return swift_willThrow();
    }
  }

  return result;
}

void sub_22C743A7C(os_unfair_lock_s *a1)
{
  v3 = v1;
  v5 = _s10ModelInputVMa();
  sub_22C74C940(a1, *(v3 + v5[5]), *(v3 + v5[5] + 8), *(v3 + v5[5] + 16), *(v3 + v5[5] + 24));
  if (!v2)
  {
    v10 = v6;
    v11 = v7;
    v12 = v8;
    v13 = v9;
    sub_22C745F28(v3, a1, *(v3 + v5[6]), *(v3 + v5[6] + 8));
    v15 = v14;
    v55 = v16;
    v56 = v17;
    v54 = sub_22C747C58(a1, *(v3 + v5[7]));
    v18 = sub_22C742948();
    sub_22C74D120(*(v3 + v5[8]), *(v3 + v5[8] + 8));
    v52 = v19;
    v53 = v18;
    sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
    v50 = sub_22C387490();
    v50[1] = xmmword_22C922290;
    sub_22C3D3108();
    *(v50 + 4) = sub_22C90ABEC();
    v20 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    v21 = sub_22C372C44();
    v47 = v3 + v5[9];
    v51 = v21;
    v22 = v21;
    v23 = *(v47 + 2);
    v24 = sub_22C90A91C();
    v25 = v22;
    v26 = v24;
    [v25 setObject_atIndexedSubscript_];

    v27 = *v47;
    v46 = sub_22C90A86C();
    [v51 setObject:v46 atIndexedSubscript:1];

    v28 = *(v47 + 1);
    v29 = sub_22C90A86C();
    [v51 setObject_atIndexedSubscript_];

    v30 = *(v47 + 2);
    v31 = sub_22C90A86C();
    [v51 setObject:v31 atIndexedSubscript:3];

    v48 = sub_22C387490();
    *(v48 + 16) = xmmword_22C922290;
    *(v48 + 32) = sub_22C90ABEC();
    v32 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    v33 = sub_22C372C44();
    v34 = v5[10];
    v35 = v33;
    v36 = *(v3 + v34);
    v37 = sub_22C90A91C();
    v49 = v35;
    [v35 setObject:v37 atIndexedSubscript:0];

    v38 = v10;
    v39 = v56;
    v57 = v55;
    v40 = v15;
    v41 = sub_22C743F68();
    v42 = v11;
    v43 = v12;

    type metadata accessor for PlanResolutionModelInput();
    swift_allocObject();
    *(&v45 + 1) = v13;
    *(&v44 + 1) = v42;
    *&v45 = v43;
    *&v44 = v51;
    sub_22C8FDB98(v38, v53, v39, v57, v40, v54, v52, v41, v44, v45, v49);
  }
}

uint64_t sub_22C743F68()
{
  v2 = _s10ModelInputVMa();
  v3 = *(v2 + 44);
  v4 = *&v0[v3];
  if (*(v4 + 16))
  {
    sub_22C7439F8(*&v0[v3]);
    if (!v1)
    {
      v5 = sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_22C922280;
      *(v6 + 32) = sub_22C90A91C();
      *(v6 + 40) = sub_22C90A91C();
      objc_allocWithZone(MEMORY[0x277CBFF48]);
      result = sub_22C5F2214(v6, 65568);
      v0 = result;
      v33 = v4;
      v8 = 0;
      v34 = v4 + 32;
      v35 = *(v4 + 16);
      v9 = 0x1FAAAE000uLL;
      while (v8 != v35)
      {
        v10 = v8;
        if (v8 >= *(v4 + 16))
        {
          __break(1u);
          goto LABEL_23;
        }

        v11 = *(v34 + 8 * v8++);
        v37 = v11;
        v12 = *(v11 + 16);
        if (v12)
        {

          v13 = 0;
          do
          {
            v14 = *(v37 + v13 + 32);
            v15 = v13 + 1;
            v16 = v5;
            v17 = v0;
            v18 = v9;
            v19 = swift_allocObject();
            *(v19 + 16) = xmmword_22C922280;
            *(v19 + 32) = sub_22C90A91C();
            *(v19 + 40) = sub_22C90A91C();
            v20 = sub_22C90A91C();
            sub_22C3D3108();
            v21 = sub_22C90A5DC();
            v9 = v18;
            v0 = v17;
            v5 = v16;

            [v0 (v9 + 2040)];

            v13 = v15;
          }

          while (v12 != v15);

          v4 = v33;
          v8 = v10 + 1;
        }
      }
    }

    return v0;
  }

  v22 = v2;
  sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_22C922280;
  v24 = *&v0[*(v22 + 20)];
  v25 = *(v24 + 16);
  v0 = sub_22C90A91C();
  *(v23 + 32) = v0;
  sub_22C7439F8(v24);
  if (v1)
  {

    *(v23 + 16) = 0;

    return v0;
  }

  *(v23 + 40) = sub_22C90A91C();
  objc_allocWithZone(MEMORY[0x277CBFF48]);
  v0 = sub_22C5F2214(v23, 65568);
  result = sub_22C7439F8(v24);
  v36 = *(v24 + 16);
  if (!v36)
  {
    return v0;
  }

  v26 = result;
  if ((result & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v36; ++i)
    {
      if (v26)
      {
        v28 = 0;
        do
        {
          v29 = v28 + 1;
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_22C922280;
          *(v30 + 32) = sub_22C90A91C();
          *(v30 + 40) = sub_22C90A91C();
          v31 = sub_22C90A91C();
          sub_22C3D3108();
          v32 = sub_22C90A5DC();

          [v0 setObject:v31 forKeyedSubscript:v32];

          v28 = v29;
        }

        while (v26 != v29);
      }
    }

    return v0;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_22C744328(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

void sub_22C74434C(uint64_t a1@<X0>, unint64_t a2@<X1>, os_unfair_lock_s *a3@<X2>, unint64_t a4@<X8>)
{
  v168 = a3;
  v7 = sub_22C9063DC();
  v160 = *(v7 - 8);
  v8 = *(v160 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v154 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v154 - v15;
  v17 = *(a2 + *(_s10ModelInputVMa() + 20));
  sub_22C8FDDF0();
  v19 = v18;
  v20 = v171;
  sub_22C74520C(v18);
  v169 = v20;
  if (v20)
  {

    v22 = a2;
LABEL_35:
    sub_22C745BA0(v22);
    return;
  }

  v156 = v11;
  v154[0] = v16;
  v154[1] = v14;
  v155 = v7;
  v159 = v21;
  v158 = a1;
  v157 = a2;

  v23 = *(v17 + 16);
  v24 = MEMORY[0x277D84F90];
  if (v23)
  {
    v174 = MEMORY[0x277D84F90];
    v162 = v23;
    sub_22C3B7798(0, v23, 0);
    v25 = v162;
    v26 = 0;
    v27 = v174;
    v163 = v17 + 32;
    v164 = a4;
    v161 = v17;
    while (v26 < *(v17 + 16))
    {
      v28 = *(v163 + 8 * v26);
      v29 = *(v28 + 16);
      if (v29)
      {
        v166 = v26;
        v167 = v27;
        v173 = v24;

        sub_22C3B77B8();
        v30 = v173;
        v170 = sub_22C5F8D4C();
        v165 = v28;
        v31 = (v28 + 64);
        while (1)
        {
          *&v171 = v30;
          v32 = *(v31 - 4);
          v33 = *(v31 - 3);
          v34 = *(v31 - 2);
          v35 = *(v31 - 1);
          v36 = *v31;

          v37 = sub_22C909F0C();
          v38 = !v32 && v33 == 0xE000000000000000;
          if (!v38 && (sub_22C90B4FC() & 1) == 0 || (v34 || v35 != 0xE000000000000000) && (sub_22C90B4FC() & 1) == 0)
          {
            break;
          }

          sub_22C749DA0(v36, v37);
          a2 = v39;

          swift_bridgeObjectRelease_n();
          if ((a2 & 1) == 0)
          {
            goto LABEL_19;
          }

          v40 = -1.0;
          v24 = MEMORY[0x277D84F90];
LABEL_21:
          v30 = v171;
          v173 = v171;
          v47 = *(v171 + 16);
          v46 = *(v171 + 24);
          if (v47 >= v46 >> 1)
          {
            sub_22C369AB0(v46);
            sub_22C3B77B8();
            v30 = v173;
          }

          *(v30 + 16) = v47 + 1;
          *(v30 + 4 * v47 + 32) = v40;
          v31 += 5;
          if (!--v29)
          {

            v26 = v166;
            v27 = v167;
            v17 = v161;
            v25 = v162;
            goto LABEL_26;
          }
        }

        swift_bridgeObjectRelease_n();
LABEL_19:

        v24 = MEMORY[0x277D84F90];
        v41 = sub_22C909F0C();
        a2 = v154;
        v175[0] = v32;
        v175[1] = v33;
        v175[2] = v34;
        v175[3] = v35;
        v175[4] = v41;
        MEMORY[0x28223BE20](v41);
        v154[-2] = v175;
        v42 = v168;
        os_unfair_lock_lock(v168 + 6);
        v43 = v169;
        sub_22C7432B4(&v42[4], &v172);
        v169 = v43;
        v44 = v42 + 6;
        if (v43)
        {
          goto LABEL_94;
        }

        os_unfair_lock_unlock(v44);
        v45 = v172;
        sub_22C740224(v175);

        v40 = v45;
        goto LABEL_21;
      }

      v30 = v24;
LABEL_26:
      v174 = v27;
      v49 = *(v27 + 16);
      v48 = *(v27 + 24);
      v16 = (v49 + 1);
      a4 = v164;
      if (v49 >= v48 >> 1)
      {
        v50 = sub_22C369AB0(v48);
        a2 = v51;
        sub_22C3B7798(v50, v49 + 1, 1);
        v26 = a2;
        v25 = v162;
        v27 = v174;
      }

      ++v26;
      *(v27 + 16) = v16;
      *(v27 + 8 * v49 + 32) = v30;
      if (v26 == v25)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_66;
  }

  v16 = *(MEMORY[0x277D84F90] + 16);
  v27 = MEMORY[0x277D84F90];
LABEL_31:
  v22 = v159;
  v52 = *(v159 + 16);
  v53 = v169;
  v54 = sub_22C7439F8(v159);
  if (v53)
  {
    v169 = v53;
    sub_22C745F04();

LABEL_34:
    sub_22C745F1C();
    goto LABEL_35;
  }

  v55 = v54;
  v56 = sub_22C7439F8(v27);
  if (v52 != v16 || v55 != v56)
  {
    v58 = v156;
    sub_22C903FAC();
    v59 = v159;

    v60 = sub_22C9063CC();
    v22 = sub_22C90AABC();

    if (os_log_type_enabled(v60, v22))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v174 = v62;
      *v61 = 136315394;
      v63 = sub_22C3A5908(&qword_27D9BAC08, &unk_22C91D830);
      v64 = v27;
      v65 = MEMORY[0x2318B7AD0](v59, v63);
      v67 = v66;

      v68 = sub_22C36F9F4(v65, v67, &v174);

      *(v61 + 4) = v68;
      *(v61 + 12) = 2080;
      v69 = MEMORY[0x2318B7AD0](v64, v63);
      v71 = v70;

      v72 = sub_22C36F9F4(v69, v71, &v174);

      *(v61 + 14) = v72;
      sub_22C38BFA4();
      _os_log_impl(v73, v74, v75, v76, v77, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318B9880](v62, -1, -1);
      MEMORY[0x2318B9880](v61, -1, -1);

      (*(v160 + 8))(v156, v155);
    }

    else
    {

      (*(v160 + 8))(v58, v155);
    }

    sub_22C745F1C();
    sub_22C388980();
    sub_22C36FBE4();
    sub_22C378614();
    v92 = v91 + 5;
    goto LABEL_49;
  }

  v169 = 0;
  v22 = v158;
  sub_22C8FDC98();
  v79 = v78;
  v80 = [v78 shape];

  v81 = sub_22C3D3108();
  sub_22C441720();
  v60 = sub_22C90A5EC();

  v82 = sub_22C36E2B8(v60);

  if (v82 != 1)
  {
    goto LABEL_61;
  }

  sub_22C8FDC98();
  v84 = v83;
  v85 = [v83 shape];

  v86 = sub_22C90A5EC();
  if (sub_22C36E2B8(v86))
  {
    sub_22C3891D4();
    if (v85)
    {
      v87 = MEMORY[0x2318B8460](0, v86);
    }

    else
    {
      v87 = *(v86 + 32);
    }

    v88 = v87;
  }

  else
  {

    v88 = 0;
  }

  v22 = v81;
  v60 = sub_22C90ABEC();
  if (!v88)
  {
    sub_22C37389C();

    goto LABEL_63;
  }

  v22 = sub_22C90ABFC();

  if ((v22 & 1) == 0)
  {
LABEL_61:
    sub_22C37389C();

LABEL_63:
    sub_22C388980();
    sub_22C36FBE4();
    sub_22C378614();
    v116 = v117 + 6;
LABEL_64:
    *v114 = v116;
    v114[1] = v60;
    v169 = v113;
    swift_willThrow();
    sub_22C745F04();

    goto LABEL_34;
  }

  v164 = a4;
  v167 = v27;
  v93 = v158;
  sub_22C8FDC98();
  v95 = v94;
  v96 = sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
  v97 = sub_22C387490();
  v171 = xmmword_22C922290;
  *(v97 + 16) = xmmword_22C922290;
  *(v97 + 32) = sub_22C90ABEC();
  sub_22C441720();
  v98 = sub_22C90A5DC();

  v99 = [v95 objectForKeyedSubscript_];

  a2 = [v99 integerValue];
  sub_22C8FDC98();
  v101 = v100;
  v170 = v96;
  v102 = sub_22C387490();
  *(v102 + 16) = v171;
  *(v102 + 32) = sub_22C90ABEC();
  sub_22C441720();
  v22 = sub_22C90A5DC();

  v103 = [v101 objectForKeyedSubscript_];

  v60 = [v103 integerValue];
  a4 = &v60[-1].isa + 7;
  if (__OFSUB__(v60, 1))
  {
    __break(1u);
    goto LABEL_92;
  }

  v104 = sub_22C744328(a2);
  if (v104 >= 2u)
  {
    v93 = v167;
    if (v104 - 2 >= 2)
    {
      sub_22C37389C();

      sub_22C388980();
      sub_22C36FBE4();
      sub_22C378614();
    }

    else
    {
      if ((a4 & 0x8000000000000000) == 0 && a4 < v55)
      {
        goto LABEL_68;
      }

      sub_22C37389C();

      sub_22C903FAC();
      v60 = sub_22C9063CC();
      v22 = sub_22C90AABC();
      if (os_log_type_enabled(v60, v22))
      {
        v105 = swift_slowAlloc();
        *v105 = 134217984;
        *(v105 + 4) = a4;
        sub_22C38BFA4();
        _os_log_impl(v106, v107, v108, v109, v110, 0xCu);
        sub_22C745EE0();
      }

      v111 = sub_22C374F34();
      v112(v111);
      sub_22C388980();
      sub_22C36FBE4();
      sub_22C378614();
      v116 = v115 + 7;
    }

    goto LABEL_64;
  }

LABEL_66:
  v93 = v167;
  if ((a4 & 0x8000000000000000) != 0 || a4 >= v16)
  {
    sub_22C37389C();

    sub_22C903FAC();
    v60 = sub_22C9063CC();
    v22 = sub_22C90AABC();
    if (os_log_type_enabled(v60, v22))
    {
      v142 = swift_slowAlloc();
      *v142 = 134217984;
      *(v142 + 4) = a4;
      sub_22C38BFA4();
      _os_log_impl(v143, v144, v145, v146, v147, 0xCu);
      sub_22C745EE0();
    }

    v148 = sub_22C374F34();
    v149(v148);
    sub_22C388980();
    sub_22C36FBE4();
    sub_22C378614();
    v116 = v150 | 4;
    goto LABEL_64;
  }

LABEL_68:
  v22 = v158;
  sub_22C8FDCAC();
  v119 = v118;
  v120 = [v118 shape];

  sub_22C441720();
  v60 = sub_22C90A5EC();

  v121 = sub_22C36E2B8(v60);

  if (v121 != 1)
  {
    sub_22C37389C();

    sub_22C745F1C();
LABEL_87:
    sub_22C388980();
    sub_22C36FBE4();
    sub_22C378614();
    v92 = v151 + 14;
LABEL_49:
    *v90 = v92;
    v90[1] = v60;
    v169 = v89;
    swift_willThrow();
    sub_22C745F04();

    goto LABEL_35;
  }

  sub_22C8FDCAC();
  v123 = v122;
  v22 = [v122 shape];

  v60 = sub_22C90A5EC();
  sub_22C36E2B8(v60);
  sub_22C745F1C();
  if (!v124)
  {
    sub_22C37389C();

    goto LABEL_87;
  }

  sub_22C3891D4();
  if (!v22)
  {
    v125 = v60[4].isa;
    goto LABEL_72;
  }

LABEL_92:
  v125 = MEMORY[0x2318B8460](0, v60);
LABEL_72:
  v126 = v125;
  v166 = a2;

  v127 = [(objc_class *)v126 integerValue];

  if ((v127 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_94:
    os_unfair_lock_unlock(v44);
    __break(1u);
  }

  else
  {
    if (v127)
    {
      v128 = 0;
      v129 = MEMORY[0x277D84F90];
      do
      {
        sub_22C8FDCAC();
        v131 = v130;
        v132 = sub_22C387490();
        *(v132 + 16) = v171;
        *(v132 + 32) = sub_22C90A91C();
        v133 = sub_22C90A5DC();

        v134 = [v131 objectForKeyedSubscript_];

        [v134 floatValue];
        v136 = v135;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v139 = *(v129 + 16);
          sub_22C36D270();
          sub_22C59470C();
          v129 = v140;
        }

        v138 = *(v129 + 16);
        v137 = *(v129 + 24);
        v93 = v167;
        if (v138 >= v137 >> 1)
        {
          sub_22C369AB0(v137);
          sub_22C59470C();
          v129 = v141;
        }

        ++v128;
        *(v129 + 16) = v138 + 1;
        *(v129 + 4 * v138 + 32) = v136;
      }

      while (v127 != v128);
    }

    else
    {
      v129 = MEMORY[0x277D84F90];
    }

    sub_22C745F04();

    sub_22C745BA0(v157);
    v152 = v164;
    *v164 = v166;
    v152[1] = a4;
    v153 = v159;
    v152[2] = v129;
    v152[3] = v153;
    v152[4] = v93;
  }
}

void sub_22C74520C(void *a1)
{
  v2 = sub_22C9063DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v71 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v69 - v7;
  v77 = a1;
  v9 = [a1 shape];
  v10 = sub_22C3D3108();
  v11 = sub_22C90A5EC();

  sub_22C903FAC();

  v12 = sub_22C9063CC();
  v13 = sub_22C90AABC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v72 = v3;
    v73 = v2;
    v16 = v15;
    v78 = v15;
    *v14 = 136315138;
    v17 = MEMORY[0x2318B7AD0](v11, v10);
    v19 = sub_22C36F9F4(v17, v18, &v78);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_22C366000, v12, v13, "mlMultiArray.shape: %s", v14, 0xCu);
    sub_22C36FF94(v16);
    v20 = v16;
    v3 = v72;
    v2 = v73;
    MEMORY[0x2318B9880](v20, -1, -1);
    MEMORY[0x2318B9880](v14, -1, -1);
  }

  v21 = *(v3 + 8);
  v21(v8, v2);
  if (sub_22C36E2B8(v11) != 3)
  {
    goto LABEL_13;
  }

  v22 = v11 & 0xC000000000000001;
  sub_22C633A2C(1, (v11 & 0xC000000000000001) == 0, v11);
  v23 = v11;
  v24 = (v11 & 0xC000000000000001) != 0 ? MEMORY[0x2318B8460](1, v11) : *(v11 + 40);
  v25 = v24;
  v26 = [v24 integerValue];

  if (v26 < 1 || ((sub_22C633A2C(2, v22 == 0, v11), !v22) ? (v27 = *(v11 + 48)) : (v27 = MEMORY[0x2318B8460](2, v11)), v28 = v27, v29 = [v27 integerValue], v28, v29 < 1))
  {
LABEL_13:
    v78 = 0;
    v79 = 0xE000000000000000;
    sub_22C90AF5C();

    v78 = 0xD000000000000020;
    v79 = 0x800000022C934710;
    v31 = MEMORY[0x2318B7AD0](v11, v10);
    v33 = v32;

    MEMORY[0x2318B7850](v31, v33);

    v34 = v78;
    v35 = v79;
    sub_22C5F2300();
    swift_allocError();
    *v36 = v34;
    v36[1] = v35;
    swift_willThrow();
    return;
  }

  if (v22)
  {
    v30 = MEMORY[0x2318B8460](1, v11);
  }

  else
  {
    v30 = *(v11 + 40);
  }

  v37 = v30;
  v38 = [v30 integerValue];

  if (v22)
  {
    v39 = MEMORY[0x2318B8460](2, v23);
  }

  else
  {
    v39 = *(v23 + 48);
  }

  v40 = v39;

  v41 = [v40 integerValue];

  if ((v38 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v72 = v3;
  v73 = v2;
  v70 = v21;
  if (v38)
  {
    if ((v41 & 0x8000000000000000) == 0)
    {
      v42 = 0;
      v43 = MEMORY[0x277D84F90];
      v76 = xmmword_22C922270;
      v74 = v38;
      do
      {
        v75 = v43;
        if (v41)
        {
          v44 = 0;
          v45 = MEMORY[0x277D84F90];
          do
          {
            sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
            v46 = swift_allocObject();
            *(v46 + 16) = v76;
            *(v46 + 32) = sub_22C90ABEC();
            *(v46 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            *(v46 + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            v47 = sub_22C90A5DC();

            v48 = [v77 objectForKeyedSubscript_];

            sub_22C90A85C();
            v50 = v49;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v52 = *(v45 + 16);
              sub_22C59470C();
              v45 = v53;
            }

            v51 = *(v45 + 16);
            if (v51 >= *(v45 + 24) >> 1)
            {
              sub_22C59470C();
              v45 = v54;
            }

            ++v44;
            *(v45 + 16) = v51 + 1;
            *(v45 + 4 * v51 + 32) = v50;
          }

          while (v41 != v44);
        }

        else
        {
          v45 = MEMORY[0x277D84F90];
        }

        v43 = v75;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = *(v43 + 16);
          sub_22C594CC4();
          v43 = v57;
        }

        v55 = *(v43 + 16);
        if (v55 >= *(v43 + 24) >> 1)
        {
          sub_22C594CC4();
          v43 = v58;
        }

        ++v42;
        *(v43 + 16) = v55 + 1;
        *(v43 + 8 * v55 + 32) = v45;
      }

      while (v42 != v74);
      goto LABEL_38;
    }

LABEL_43:
    __break(1u);
    return;
  }

  v43 = MEMORY[0x277D84F90];
LABEL_38:
  v59 = v71;
  sub_22C903FAC();
  v60 = sub_22C9063CC();
  v61 = sub_22C90AABC();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v78 = v63;
    *v62 = 136315138;

    v64 = sub_22C3A5908(&qword_27D9BAC08, &unk_22C91D830);
    v65 = MEMORY[0x2318B7AD0](v43, v64);
    v67 = v66;

    v68 = sub_22C36F9F4(v65, v67, &v78);

    *(v62 + 4) = v68;
    _os_log_impl(&dword_22C366000, v60, v61, "Matrix: %s", v62, 0xCu);
    sub_22C36FF94(v63);
    MEMORY[0x2318B9880](v63, -1, -1);
    MEMORY[0x2318B9880](v62, -1, -1);
  }

  v70(v59, v73);
}

uint64_t sub_22C745950(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  v5 = v3 + 32;
  v6 = MEMORY[0x277D84F90];
  if (v4)
  {
    while ((a1 & 0x8000000000000000) == 0)
    {
      if (*(*v5 + 16) <= a1)
      {
        goto LABEL_11;
      }

      v7 = *(*v5 + 4 * a1 + 32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = *(v6 + 16);
        sub_22C36D270();
        sub_22C59470C();
        v6 = v11;
      }

      v9 = *(v6 + 16);
      v8 = *(v6 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_22C369AB0(v8);
        sub_22C59470C();
        v6 = v12;
      }

      *(v6 + 16) = v9 + 1;
      *(v6 + 4 * v9 + 32) = v7;
      v5 += 8;
      if (!--v4)
      {
        return v6;
      }
    }

    v6 = MEMORY[0x277D84F90];
LABEL_11:

    sub_22C36C260();
    sub_22C90AF5C();
    v13 = sub_22C90B47C();
    v15 = v14;

    MEMORY[0x2318B7850](0xD000000000000020, 0x800000022C9345C0);
    sub_22C5F2300();
    sub_22C36FBE4();
    *v16 = v13;
    v16[1] = v15;
    swift_willThrow();
  }

  return v6;
}

uint64_t sub_22C745ADC(char a1)
{
  if (!a1)
  {
    return 0x65526E6F69746361;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0x6F7365526C6F6F74;
}

uint64_t _s10ModelInputVMa()
{
  result = qword_281434798;
  if (!qword_281434798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C745BA0(uint64_t a1)
{
  v2 = _s10ModelInputVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22C745C24()
{
  type metadata accessor for JointResolution.DeviceContext();
  if (v0 <= 0x3F)
  {
    sub_22C745CEC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C745CEC()
{
  if (!qword_28142F9E0)
  {
    sub_22C3AC1A0(&qword_27D9BADD8, &unk_22C90D680);
    v0 = sub_22C90A68C();
    if (!v1)
    {
      atomic_store(v0, &qword_28142F9E0);
    }
  }
}

_BYTE *_s13ExecutionModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t _s16ForcedPromptRateVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s16ForcedPromptRateVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_22C745E8C()
{
  result = qword_27D9BFB28;
  if (!qword_27D9BFB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFB28);
  }

  return result;
}

void sub_22C745EE0()
{
  v2 = *(v0 - 264);

  JUMPOUT(0x2318B9880);
}

uint64_t sub_22C745F04()
{
  v2 = *(v0 - 280);
}

void sub_22C745F28(void *a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4)
{
  v331 = a4;
  v338 = a1;
  v7 = sub_22C3A5908(&qword_27D9BFB50, &qword_22C924590);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22C3698E4();
  v330 = v9;
  MEMORY[0x28223BE20](v10);
  v329 = (&v327 - v11);
  v336 = type metadata accessor for JointResolution.TupleInteraction(0);
  v12 = sub_22C369824(v336);
  v328 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C3698E4();
  v332 = v16;
  MEMORY[0x28223BE20](v17);
  v335 = &v327 - v18;
  v345 = type metadata accessor for JointResolution.CandidateInteraction(0);
  v19 = sub_22C36985C(v345);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v346 = &v327 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22C3A5908(&qword_27D9BFB58, &qword_22C924598);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  sub_22C3698E4();
  v334 = v25;
  MEMORY[0x28223BE20](v26);
  v333 = &v327 - v27;
  v28 = *(a3 + 16);
  v348 = sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
  sub_22C380498();
  v29 = swift_allocObject();
  v351 = xmmword_22C922280;
  *(v29 + 16) = xmmword_22C922280;
  v347 = a2;
  if (v28)
  {

    *(v29 + 32) = sub_22C90A91C();
    *(v29 + 40) = sub_22C90A91C();
    v30 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    sub_22C3709C0();
    v33 = sub_22C5F2214(v31, v32);
    v344 = v4;
    if (v4)
    {
LABEL_3:

      return;
    }

    v337 = v33;
    v367 = 0;
    v368 = 0;
    v366 = a3;
    v59 = v346;
LABEL_7:
    v61 = v333;
    v60 = v334;
    sub_22C80EFF8();
    sub_22C3D7EEC(v60, v61, &qword_27D9BFB58, &qword_22C924598);
    v62 = sub_22C3A5908(&qword_27D9BFB60, &qword_22C9245A0);
    if (sub_22C370B74(v61, 1, v62) != 1)
    {
      v343 = *v61;
      sub_22C7491A8(v61 + *(v62 + 48), v59);
      v63 = type metadata accessor for JointResolution.DeviceContext();
      v64 = (v59 + *(v63 + 20));
      v65 = *(v64 + 1);
      v341 = v64;
      v342 = v63;
      if (v65 < 2)
      {
        v66 = 0xFFFF;
LABEL_35:
        LODWORD(v340) = v66;
        v93 = *(v64 + 3);
        if (v65 == 1 || v93 == 0)
        {
          LODWORD(v339) = 0xFFFF;
          goto LABEL_66;
        }

        v65 = *(v64 + 2);
        if ((v93 & 0x2000000000000000) != 0)
        {
          v69 = HIBYTE(v93) & 0xF;
        }

        else
        {
          v69 = v65 & 0xFFFFFFFFFFFFLL;
        }

        v71 = (4 * v69);
        v95 = (v65 >> 59) & 1;
        if ((v93 & 0x1000000000000000) == 0)
        {
          LOBYTE(v95) = 1;
        }

        v96 = 4 << v95;
        v349 = (v93 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v350 = v93 & 0xFFFFFFFFFFFFFFLL;
        v97 = 5381;
        v98 = 15;
        while (1)
        {
          if (v71 == (v98 >> 14))
          {
            LODWORD(v339) = v97;
            v59 = v346;
LABEL_66:
            sub_22C380498();
            v119 = swift_allocObject();
            sub_22C378620(v119);
            *(v65 + 32) = sub_22C90A91C();
            *(v65 + 40) = sub_22C90A91C();
            v120 = (v59 + *(v345 + 5));
            v121 = v120[1];
            v122 = v120[2];
            v123 = v120[3];
            v124 = v120[4];
            v358 = *v120;
            v359 = v121;
            v360 = v122;
            v361 = v123;
            v362 = v124;

            sub_22C743034(&v358, v347);

            v125 = sub_22C90A91C();
            v126 = sub_22C36E278(0, &qword_28142F978, 0x277CCABB0);
            sub_22C36EC8C();
            v127 = sub_22C90A5DC();

            v128 = v337;
            [v337 setObject:v125 forKeyedSubscript:v127];

            sub_22C380498();
            v129 = swift_allocObject();
            sub_22C378620(v129);
            *(v65 + 32) = sub_22C90A91C();
            *(v65 + 40) = sub_22C90A91C();
            v130 = dbl_22C9246F0[*(v59 + *(v345 + 6))];
            v131 = sub_22C90A83C();
            sub_22C36EC8C();
            v132 = sub_22C90A5DC();

            [v128 setObject:v131 forKeyedSubscript:v132];

            sub_22C380498();
            v133 = swift_allocObject();
            sub_22C36C270(v133);
            v133[2].n128_u64[0] = sub_22C90A91C();
            v133[2].n128_u64[1] = sub_22C90A91C();
            sub_22C90ABEC();
            sub_22C3758E0();
            v134 = sub_22C90A5DC();

            [v128 setObject:v126 forKeyedSubscript:v134];

            sub_22C380498();
            v135 = swift_allocObject();
            sub_22C36C270(v135);
            v135[2].n128_u64[0] = sub_22C90A91C();
            v135[2].n128_u64[1] = sub_22C90A91C();
            sub_22C90ABEC();
            sub_22C3758E0();
            v136 = sub_22C90A5DC();

            [v128 setObject:v126 forKeyedSubscript:v136];

            v137 = v338;
            v138 = sub_22C9005EC();
            sub_22C380498();
            v139 = swift_allocObject();
            sub_22C36C270(v139);
            v139[2].n128_u64[0] = sub_22C90A91C();
            v139[2].n128_u64[1] = sub_22C90A91C();
            if (v138)
            {
              v140 = v126;
              sub_22C90ABEC();
            }

            else
            {
              v140 = v137;
              sub_22C90053C();
              log(fabs(v141));
              sub_22C90A83C();
            }

            sub_22C37BC08();
            v142 = sub_22C90A5DC();

            v143 = v337;
            v144 = sub_22C74941C();
            [v144 v145];

            sub_22C36B554();
            v146 = swift_allocObject();
            sub_22C378620(v146);
            v140[4] = sub_22C90A91C();
            v140[5] = sub_22C90A91C();
            v147 = sub_22C90B5CC();
            sub_22C36EC8C();
            v148 = sub_22C90A5DC();

            [v143 setObject:v147 forKeyedSubscript:v148];

            sub_22C36B554();
            v149 = swift_allocObject();
            sub_22C378620(v149);
            v140[4] = sub_22C90A91C();
            v140[5] = sub_22C90A91C();
            v150 = sub_22C90B5CC();
            sub_22C36EC8C();
            v151 = sub_22C90A5DC();

            [v143 setObject:v150 forKeyedSubscript:v151];

            v152 = v338 + *(v342 + 20);
            v154 = *v152;
            v153 = *(v152 + 1);
            v155 = *(v152 + 2);
            v364 = *(v152 + 1);
            v365[0] = v155;
            *(v365 + 9) = *(v152 + 41);
            sub_22C36B554();
            v156 = swift_allocObject();
            sub_22C7493E0(v156);
            v150[4] = sub_22C90A91C();
            if (v153 == 1)
            {
              v157 = sub_22C90A91C();
              sub_22C37FF54(v157);
              v158 = v126;
              sub_22C90ABEC();
            }

            else
            {
              sub_22C90A91C();
              v355 = v364;
              v356[0] = v365[0];
              *(v356 + 9) = *(v365 + 9);
              v357 = sub_22C3833F0(v341);
              v150[5] = v159;
              v353 = v154;
              v354 = v153;
              sub_22C37A2DC(v160, v161, v162);
              v158 = &v353;
              sub_22C75A770(v352);
              v363 = sub_22C38AA3C();
              sub_22C749204(&v358);
              sub_22C90A83C();
            }

            sub_22C387194();
            v163 = sub_22C90A5DC();

            v164 = sub_22C74941C();
            [v164 v165];

            v59 = v346;
            sub_22C74926C(v346, type metadata accessor for JointResolution.CandidateInteraction);
            a2 = v347;
            goto LABEL_7;
          }

          v67 = v98 & 0xC;
          v73 = v98;
          if (v67 == v96)
          {
            v102 = sub_22C38288C();
            v104 = v103;
            v73 = sub_22C8A3F0C(v102, v105, v106);
            v97 = v104;
          }

          v99 = v73 >> 16;
          if (v73 >> 16 >= v69)
          {
            goto LABEL_90;
          }

          if ((v93 & 0x1000000000000000) != 0)
          {
            v107 = v97;
            v108 = sub_22C90A3FC();
            v97 = v107;
            v101 = v108;
          }

          else if ((v93 & 0x2000000000000000) != 0)
          {
            v358 = v65;
            v359 = v350;
            v101 = *(&v358 + v99);
          }

          else
          {
            v100 = v349;
            if ((v65 & 0x1000000000000000) == 0)
            {
              sub_22C36EC8C();
              LODWORD(v339) = v118;
              v100 = sub_22C90AFCC();
              v97 = v339;
            }

            v101 = *(v100 + v99);
          }

          if (v67 == v96)
          {
            v109 = sub_22C38288C();
            v111 = v110;
            v114 = sub_22C8A3F0C(v109, v112, v113);
            v97 = v111;
            v98 = v114;
            if ((v93 & 0x1000000000000000) == 0)
            {
LABEL_59:
              v98 = (v98 & 0xFFFFFFFFFFFF0000) + 65540;
              goto LABEL_64;
            }
          }

          else if ((v93 & 0x1000000000000000) == 0)
          {
            goto LABEL_59;
          }

          if (v69 <= v98 >> 16)
          {
            goto LABEL_130;
          }

          sub_22C38288C();
          v116 = v115;
          v117 = sub_22C90A3CC();
          v97 = v116;
          v98 = v117;
LABEL_64:
          v97 = 33 * v97 + v101;
        }
      }

      v67 = *v64;
      if ((v65 & 0x2000000000000000) != 0)
      {
        v68 = HIBYTE(v65) & 0xF;
      }

      else
      {
        v68 = v67 & 0xFFFFFFFFFFFFLL;
      }

      v69 = 4 * v68;
      v70 = (v67 >> 59) & 1;
      if ((v65 & 0x1000000000000000) == 0)
      {
        LOBYTE(v70) = 1;
      }

      v71 = (4 << v70);
      v349 = (v65 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v350 = v65 & 0xFFFFFFFFFFFFFFLL;
      v66 = 5381;
      v72 = 15;
      while (1)
      {
        if (v69 == v72 >> 14)
        {
          v64 = v341;
          v65 = *(v341 + 1);
          v59 = v346;
          goto LABEL_35;
        }

        v73 = v72;
        if ((v72 & 0xC) == v71)
        {
          v77 = sub_22C385794();
          v79 = v78;
          v73 = sub_22C8A3F0C(v77, v80, v81);
          v66 = v79;
        }

        v74 = v73 >> 16;
        if (v73 >> 16 >= v68)
        {
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          v217 = v73;
          sub_22C36B554();
          v218 = swift_allocObject();
          sub_22C7493E0(v218);
          v219 = v217;
          *(v67 + 32) = sub_22C90ABEC();
          *(v67 + 40) = sub_22C90ABEC();
          sub_22C90ABCC();
          sub_22C387194();
          sub_22C90A5DC();
          sub_22C3768C8();
          v220 = sub_22C371C2C();
          [v220 v221];

          sub_22C36B554();
          v222 = swift_allocObject();
          sub_22C3738A8(v222);
          *(v222 + 32) = sub_22C90ABEC();
          v223 = sub_22C90ABEC();
          sub_22C37FF54(v223);
          sub_22C90ABEC();
          sub_22C387194();
          sub_22C90A5DC();
          sub_22C3768C8();
          v224 = sub_22C371C2C();
          [v224 v225];

          sub_22C36B554();
          v226 = swift_allocObject();
          sub_22C3738A8(v226);
          v227 = sub_22C90ABEC();
          v228 = sub_22C37B748(v227);
          sub_22C37FF54(v228);
          sub_22C90ABEC();
          sub_22C387194();
          sub_22C90A5DC();
          sub_22C3768C8();
          v229 = sub_22C371C2C();
          [v229 v230];

          sub_22C36B554();
          v231 = swift_allocObject();
          sub_22C3738A8(v231);
          *(v231 + 32) = sub_22C90ABEC();
          v232 = sub_22C90ABEC();
          sub_22C37FF54(v232);
          sub_22C90ABEC();
          sub_22C387194();
          sub_22C90A5DC();
          sub_22C3768C8();
          v233 = sub_22C371C2C();
          [v233 v234];

          sub_22C36B554();
          v235 = swift_allocObject();
          sub_22C3738A8(v235);
          *(v235 + 32) = sub_22C90ABEC();
          v236 = sub_22C90ABEC();
          sub_22C37FF54(v236);
          sub_22C90ABEC();
          sub_22C387194();
          sub_22C90A5DC();
          sub_22C3768C8();
          v237 = sub_22C371C2C();
          [v237 v238];

          sub_22C36B554();
          v239 = swift_allocObject();
          sub_22C3738A8(v239);
          *(v239 + 32) = sub_22C90ABEC();
          v240 = sub_22C90ABEC();
          sub_22C37FF54(v240);
          sub_22C90ABEC();
          sub_22C387194();
          sub_22C90A5DC();
          sub_22C3768C8();
          v241 = sub_22C371C2C();
          [v241 v242];

          sub_22C36B554();
          v243 = swift_allocObject();
          sub_22C3738A8(v243);
          v244 = v71;
          *(v243 + 32) = sub_22C90ABEC();
          v245 = sub_22C90ABEC();
          sub_22C37FF54(v245);
          sub_22C90ABEC();
          sub_22C387194();
          v246 = sub_22C90A5DC();

          v247 = sub_22C371C2C();
          [v247 v248];

          return;
        }

        if ((v65 & 0x1000000000000000) != 0)
        {
          v82 = v66;
          v83 = sub_22C90A3FC();
          v66 = v82;
          v76 = v83;
        }

        else if ((v65 & 0x2000000000000000) != 0)
        {
          v358 = v67;
          v359 = v350;
          v76 = *(&v358 + v74);
        }

        else
        {
          v75 = v349;
          if ((v67 & 0x1000000000000000) == 0)
          {
            LODWORD(v340) = v66;
            v75 = sub_22C90AFCC();
            v66 = v340;
          }

          v76 = *(v75 + v74);
        }

        if ((v72 & 0xC) == v71)
        {
          v84 = sub_22C385794();
          v86 = v85;
          v89 = sub_22C8A3F0C(v84, v87, v88);
          v66 = v86;
          v72 = v89;
          if ((v65 & 0x1000000000000000) == 0)
          {
LABEL_28:
            v72 = (v72 & 0xFFFFFFFFFFFF0000) + 65540;
            goto LABEL_33;
          }
        }

        else if ((v65 & 0x1000000000000000) == 0)
        {
          goto LABEL_28;
        }

        if (v68 <= v72 >> 16)
        {
          __break(1u);
LABEL_130:
          __break(1u);
          goto LABEL_3;
        }

        sub_22C385794();
        v91 = v90;
        v92 = sub_22C90A3CC();
        v66 = v91;
        v72 = v92;
LABEL_33:
        v66 = 33 * v66 + v76;
      }
    }
  }

  else
  {
    v34 = sub_22C36E278(0, &qword_28142F978, 0x277CCABB0);
    *(v29 + 32) = sub_22C90ABEC();
    *(v29 + 40) = sub_22C90A91C();
    v35 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    sub_22C3709C0();
    v38 = sub_22C5F2214(v36, v37);
    if (v4)
    {
      return;
    }

    v344 = 0;
    v39 = v38;
    sub_22C36B554();
    v40 = swift_allocObject();
    sub_22C3738A8(v40);
    *(v40 + 32) = sub_22C90ABEC();
    v41 = sub_22C90ABEC();
    sub_22C749458(v41);
    sub_22C749400();
    sub_22C749440();
    sub_22C372C6C();

    sub_22C36B554();
    v42 = swift_allocObject();
    sub_22C3738A8(v42);
    *(v42 + 32) = sub_22C90ABEC();
    *(v42 + 40) = sub_22C90ABEC();
    sub_22C90ABCC();
    sub_22C749400();
    sub_22C749440();
    sub_22C372C6C();

    sub_22C36B554();
    v43 = swift_allocObject();
    sub_22C3738A8(v43);
    *(v43 + 32) = sub_22C90ABEC();
    v44 = sub_22C90ABEC();
    sub_22C749458(v44);
    sub_22C749400();
    sub_22C749440();
    sub_22C372C6C();

    sub_22C36B554();
    v45 = swift_allocObject();
    sub_22C3738A8(v45);
    *(v45 + 32) = sub_22C90ABEC();
    v46 = sub_22C90ABEC();
    sub_22C749458(v46);
    sub_22C749400();
    sub_22C749440();
    sub_22C372C6C();

    sub_22C36B554();
    v47 = swift_allocObject();
    sub_22C3738A8(v47);
    *(v47 + 32) = sub_22C90ABEC();
    v48 = sub_22C90ABEC();
    sub_22C749458(v48);
    sub_22C749400();
    sub_22C749440();
    sub_22C372C6C();

    sub_22C36B554();
    v49 = swift_allocObject();
    sub_22C3738A8(v49);
    *(v49 + 32) = sub_22C90ABEC();
    v50 = sub_22C90ABEC();
    sub_22C749458(v50);
    sub_22C749400();
    sub_22C749440();
    sub_22C372C6C();

    sub_22C36B554();
    v51 = swift_allocObject();
    sub_22C3738A8(v51);
    *(v51 + 32) = sub_22C90ABEC();
    v52 = sub_22C90ABEC();
    sub_22C749458(v52);
    sub_22C749400();
    sub_22C749440();
    sub_22C372C6C();

    sub_22C36B554();
    v53 = swift_allocObject();
    sub_22C3738A8(v53);
    v54 = v34;
    *(v53 + 32) = sub_22C90ABEC();
    v55 = sub_22C90ABEC();
    sub_22C749458(v55);
    v56 = sub_22C749400();

    v337 = v39;
    v57 = sub_22C74941C();
    [v57 v58];
  }

  v166 = *(v331 + 16);
  if (v166)
  {
    v358 = MEMORY[0x277D84F90];

    sub_22C3B7698();
    v168 = v358;
    v169 = v167 + ((*(v328 + 80) + 32) & ~*(v328 + 80));
    v170 = *(v328 + 9);
    v171 = v166;
    do
    {
      v172 = v335;
      sub_22C74914C(v169, v335);
      v173 = *(*(v172 + *(v336 + 20)) + 16);
      sub_22C749428();
      sub_22C74926C(v172, v174);
      v358 = v168;
      v175 = v168[2];
      if (v175 >= v168[3] >> 1)
      {
        sub_22C3B7698();
        v168 = v358;
      }

      v168[2] = v175 + 1;
      v168[v175 + 4] = v173;
      v169 += v170;
      --v171;
    }

    while (v171);
    a2 = v347;
  }

  else
  {

    v168 = MEMORY[0x277D84F90];
  }

  v176 = sub_22C3D0D14(v168);
  v178 = v177;

  if ((v178 & 1) == 0)
  {
    v187 = sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
    sub_22C380498();
    v188 = swift_allocObject();
    sub_22C378620(v188);
    v168[4] = sub_22C90A91C();
    v168[5] = sub_22C90A91C();
    v189 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    sub_22C3709C0();
    v191 = v190;
    v192 = v344;
    v195 = sub_22C5F2214(v193, v194);
    v196 = v192;
    if (v192)
    {

      return;
    }

    v339 = v195;
    v335 = v176;
    sub_22C380498();
    v212 = swift_allocObject();
    sub_22C378620(v212);
    *(v191 + 32) = sub_22C90A91C();
    *(v191 + 40) = sub_22C90A91C();
    v213 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    sub_22C3709C0();
    v216 = sub_22C5F2214(v214, v215);
    v344 = 0;
    v343 = v187;
    v327 = v216;
    v367 = 0;
    v368 = 0;
    v249 = v332;
    v366 = v331;
    for (i = &type metadata for JointResolution.CandidateSignalType; ; i = &type metadata for JointResolution.CandidateSignalType)
    {
      v251 = v330;
      sub_22C80F034();
      v252 = v251;
      v253 = v329;
      sub_22C3D7EEC(v252, v329, &qword_27D9BFB50, &qword_22C924590);
      sub_22C3A5908(&qword_27D9BFB68, &qword_22C9245A8);
      v254 = sub_22C387194();
      if (sub_22C370B74(v254, 1, &v366) == 1)
      {
        goto LABEL_3;
      }

      v340 = *v253;
      sub_22C7491A8(v253 + v370, v249);
      v255 = type metadata accessor for JointResolution.DeviceContext();
      v334 = v255;
      v256 = (v249 + v255[5]._os_unfair_lock_opaque);
      v257 = v256[1];
      if (v257 >= 2)
      {
        v258 = v344;
        v255 = sub_22C7425CC(5381, *v256, v257);
        LODWORD(v331) = v255;
        v344 = v258;
        v257 = v256[1];
      }

      else
      {
        LODWORD(v331) = 0xFFFF;
      }

      v259 = v256[3];
      v260 = v257 == 1 || v259 == 0;
      v328 = v256;
      if (v260)
      {
        LODWORD(v333) = 0xFFFF;
      }

      else
      {
        v261 = v344;
        v255 = sub_22C7425CC(5381, v256[2], v259);
        LODWORD(v333) = v255;
        v344 = v261;
      }

      v262 = 0;
      v263 = *(v249 + *(v336 + 20));
      v341 = *(v263 + 16);
      v342 = v263;
      v264 = (v263 + 64);
      while (1)
      {
        v265 = *(v342 + 16);
        if (v341 == v262)
        {
          break;
        }

        if (v262 >= v265)
        {
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          os_unfair_lock_unlock(v255);
          __break(1u);
          return;
        }

        v267 = *(v264 - 4);
        v266 = *(v264 - 3);
        v268 = *(v264 - 2);
        v269 = *(v264 - 1);
        v345 = v264;
        v270 = *v264;
        v271 = v262;
        sub_22C380498();
        v272 = swift_allocObject();
        sub_22C36C270(v272);

        v350 = v269;

        v349 = v270;
        v196 = v268;

        v272[2].n128_u64[0] = sub_22C90A91C();
        v346 = v271;
        v272[2].n128_u64[1] = sub_22C90A91C();
        sub_22C5F8D4C();
        v273 = sub_22C909F0C();
        v348 = v267;
        if (!v267 && v266 == 0xE000000000000000 || (sub_22C90B4FC()) && (!v268 && v350 == 0xE000000000000000 || (sub_22C90B4FC()))
        {
          sub_22C749DA0(v349, v273);
          v275 = v274;

          swift_bridgeObjectRelease_n();
          if (v275)
          {

            v276 = -1;
            goto LABEL_116;
          }
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v277 = v350;

        v278 = sub_22C909F0C();
        v369[0] = v348;
        v369[1] = v266;
        v369[2] = v268;
        v370 = v277;
        v371 = v278;
        MEMORY[0x28223BE20](v278);
        *(&v327 - 2) = v369;
        v279 = v347;
        os_unfair_lock_lock(v347 + 6);
        v280 = v344;
        sub_22C7432B4(&v279[4], &v358);
        v344 = v280;
        v255 = v279 + 6;
        if (v280)
        {
          goto LABEL_135;
        }

        os_unfair_lock_unlock(v255);
        v276 = v358;
        sub_22C740224(v369);

LABEL_116:
        sub_22C90A91C();
        v281 = sub_22C369A48();
        sub_22C36E278(v281, &qword_28142F978, 0x277CCABB0);
        v282 = sub_22C90A5DC();

        v283 = sub_22C74941C();
        [v283 v284];

        v264 = v345 + 5;
        v262 = (v346 + 1);
        i = &type metadata for JointResolution.CandidateSignalType;
      }

      if (v335 < v265)
      {
        goto LABEL_133;
      }

      if (v265 != v335)
      {
        v285 = v343;
        if (v265 >= v335)
        {
          goto LABEL_134;
        }

        v286 = v339;
        do
        {
          v287 = v265 + 1;
          sub_22C380498();
          v288 = swift_allocObject();
          sub_22C378620(v288);
          *(v285 + 32) = sub_22C90A91C();
          *(v285 + 40) = sub_22C90A91C();
          sub_22C5F8D4C();
          sub_22C909F0C();
          sub_22C37F9D8();
          v362 = v289;
          sub_22C743034(&v358, v347);
          i = v361;

          v290 = sub_22C90A91C();
          sub_22C36E278(0, &qword_28142F978, 0x277CCABB0);
          v196 = sub_22C90A5DC();

          [v286 setObject:v290 forKeyedSubscript:v196];

          v285 = v343;
          v265 = v287;
        }

        while (v335 != v287);
      }

      sub_22C380498();
      v291 = swift_allocObject();
      sub_22C36A2C4(v291);
      v196[4] = sub_22C90A91C();
      v196[5] = sub_22C90A91C();
      v292 = dbl_22C9246F0[*(v332 + *(v336 + 24))];
      v293 = sub_22C36E278(0, &qword_28142F978, 0x277CCABB0);
      sub_22C90ABCC();
      sub_22C749400();
      v294 = sub_22C749440();
      v295 = v327;
      sub_22C749470(v294, sel_setObject_forKeyedSubscript_);

      sub_22C380498();
      v296 = swift_allocObject();
      sub_22C36A2C4(v296);
      v196[4] = sub_22C90A91C();
      v297 = sub_22C90A91C();
      sub_22C379ABC(v297);
      sub_22C749400();
      v298 = sub_22C749440();
      sub_22C749470(v298, sel_setObject_forKeyedSubscript_);

      sub_22C380498();
      v299 = swift_allocObject();
      sub_22C36A2C4(v299);
      v196[4] = sub_22C90A91C();
      v300 = sub_22C90A91C();
      sub_22C379ABC(v300);
      sub_22C749400();
      v301 = sub_22C749440();
      sub_22C749470(v301, sel_setObject_forKeyedSubscript_);

      v302 = sub_22C9005EC();
      sub_22C380498();
      v303 = swift_allocObject();
      sub_22C36A2C4(v303);
      v304 = v295;
      v196[4] = sub_22C90A91C();
      v196[5] = sub_22C90A91C();
      if (v302)
      {
        v305 = v293;
        sub_22C90ABEC();
      }

      else
      {
        v305 = v338;
        sub_22C90053C();
        log(fabs(v306));
        sub_22C90A83C();
      }

      v307 = sub_22C749400();

      [v304 property descriptor for ResponseGenerationPreferences.$responseGenerationEnableOverrides];

      sub_22C36B554();
      v308 = swift_allocObject();
      sub_22C378620(v308);
      v305[4] = sub_22C90A91C();
      v305[5] = sub_22C90A91C();
      v309 = sub_22C90B5CC();
      v310 = sub_22C90A5DC();

      sub_22C37BF40();

      sub_22C36B554();
      v311 = swift_allocObject();
      sub_22C378620(v311);
      v305[4] = sub_22C90A91C();
      v305[5] = sub_22C90A91C();
      v196 = sub_22C90B5CC();
      v312 = sub_22C90A5DC();

      sub_22C37BF40();

      v313 = v338 + v334[5]._os_unfair_lock_opaque;
      v315 = *v313;
      v314 = *(v313 + 1);
      v316 = *(v313 + 2);
      v364 = *(v313 + 1);
      v365[0] = v316;
      *(v365 + 9) = *(v313 + 41);
      sub_22C36B554();
      v317 = swift_allocObject();
      sub_22C36A2C4(v317);
      v196[4] = sub_22C90A91C();
      if (v314 == 1)
      {
        v318 = sub_22C90A91C();
        sub_22C379ABC(v318);
      }

      else
      {
        sub_22C90A91C();
        v355 = v364;
        v356[0] = v365[0];
        *(v356 + 9) = *(v365 + 9);
        v357 = sub_22C3833F0(v328);
        v196[5] = v319;
        v353 = v315;
        v354 = v314;
        sub_22C37A2DC(v320, v321, v322);
        v314 = &v353;
        sub_22C75A770(v352);
        v363 = sub_22C38AA3C();
        sub_22C749204(&v358);
        sub_22C90A83C();
      }

      v323 = sub_22C749400();

      v324 = sub_22C371C2C();
      [v324 v325];

      sub_22C749428();
      v249 = v332;
      sub_22C74926C(v332, v326);
    }
  }

  v179 = sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
  sub_22C380498();
  v180 = swift_allocObject();
  sub_22C7493E0(v180);
  v71 = sub_22C36E278(0, &qword_28142F978, 0x277CCABB0);
  v181 = sub_22C90ABEC();
  *(v166 + 40) = sub_22C37B748(v181);
  v182 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  sub_22C387194();
  sub_22C3709C0();
  v183 = v344;
  v186 = sub_22C5F2214(v184, v185);
  if (!v183)
  {
    v197 = v186;
    sub_22C380498();
    v198 = swift_allocObject();
    v350 = v179;
    v199 = v198;
    sub_22C36C270(v198);
    v200 = v197;
    v339 = v200;
    v199[2].n128_u64[0] = sub_22C90ABEC();
    v199[2].n128_u64[1] = sub_22C90ABEC();
    v349 = sub_22C5F8D4C();
    sub_22C909F0C();
    sub_22C37F9D8();
    v362 = v201;
    v202 = sub_22C743034(&v358, a2);

    sub_22C90A91C();
    sub_22C37BC08();
    v203 = sub_22C90A5DC();

    [v200 setObject:v202 forKeyedSubscript:v203];

    sub_22C380498();
    v204 = swift_allocObject();
    sub_22C3738A8(v204);
    *(v204 + 32) = sub_22C90ABEC();
    *(v204 + 40) = sub_22C90ABEC();
    sub_22C909F0C();
    sub_22C37F9D8();
    v362 = v205;
    v206 = sub_22C743034(&v358, a2);
    v69 = v361;

    sub_22C90A91C();
    sub_22C37BC08();
    v67 = sub_22C90A5DC();
    v207 = v339;

    [v207 setObject:v206 forKeyedSubscript:v67];

    sub_22C36B554();
    v208 = swift_allocObject();
    sub_22C7493E0(v208);
    *(v67 + 32) = sub_22C90ABEC();
    *(v67 + 40) = sub_22C90A91C();
    v209 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    sub_22C387194();
    sub_22C3709C0();
    v73 = sub_22C5F2214(v210, v211);
    v344 = 0;
    goto LABEL_91;
  }
}

char *sub_22C747C58(void *a1, char *a2)
{
  v4 = a2;
  v6 = *(a2 + 2);
  sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
  sub_22C380498();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22C922280;
  v8 = sub_22C36E278(0, &qword_28142F978, 0x277CCABB0);
  if (v6)
  {
    *(v7 + 32) = sub_22C7494AC();
    *(v7 + 40) = sub_22C90ABEC();
    v9 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    sub_22C3758E0();
    sub_22C3709C0();
    v12 = sub_22C5F2214(v10, v11);
    if (!v2)
    {
      v13 = v4 + 32;
      v4 = v12;
      v101 = v4;
      do
      {
        memcpy(__dst, v13, 0x58uLL);
        sub_22C36B554();
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_22C922280;
        *(v14 + 32) = v4;
        memcpy(v99, v13, sizeof(v99));
        sub_22C4724D8(__dst, v98);
        v15 = v4;
        sub_22C7483F0(a1);
        v16 = sub_22C369A48();
        sub_22C36E278(v16, &qword_27D9BFB48, 0x277CBFF48);
        *(v14 + 40) = v99;
        v4 = sub_22C7486CC(v14, 0, 65568);

        sub_22C472534(__dst);
        v13 += 88;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    *(v7 + 32) = sub_22C90ABEC();
    *(v7 + 40) = sub_22C90ABEC();
    v17 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    sub_22C3758E0();
    sub_22C3709C0();
    v20 = sub_22C5F2214(v18, v19);
    if (!v2)
    {
      v4 = v20;
      sub_22C36B554();
      v21 = swift_allocObject();
      sub_22C7493F0(v21, v22, v23, v24, v25, v26, v27, v28, v29);
      *(v3 + 32) = sub_22C7494AC();
      v30 = sub_22C90ABEC();
      sub_22C36FE1C(v30);
      sub_22C387194();
      sub_22C90A5DC();
      sub_22C3768C8();
      v31 = sub_22C388998();
      [v31 v32];

      sub_22C36B554();
      v33 = swift_allocObject();
      sub_22C7493F0(v33, v34, v35, v36, v37, v38, v39, v40, v41);
      *(v3 + 32) = sub_22C7494AC();
      v42 = sub_22C90ABEC();
      sub_22C36FE1C(v42);
      sub_22C387194();
      sub_22C90A5DC();
      sub_22C3768C8();
      v43 = sub_22C388998();
      [v43 v44];

      sub_22C36B554();
      v45 = swift_allocObject();
      sub_22C7493F0(v45, v46, v47, v48, v49, v50, v51, v52, v53);
      v54 = sub_22C7494AC();
      v55 = sub_22C37B748(v54);
      sub_22C36FE1C(v55);
      sub_22C387194();
      sub_22C90A5DC();
      sub_22C3768C8();
      v56 = sub_22C388998();
      [v56 v57];

      sub_22C36B554();
      v58 = swift_allocObject();
      sub_22C7493F0(v58, v59, v60, v61, v62, v63, v64, v65, v66);
      *(v3 + 32) = sub_22C90ABEC();
      v67 = sub_22C90ABEC();
      sub_22C36FE1C(v67);
      sub_22C387194();
      sub_22C90A5DC();
      sub_22C3768C8();
      v68 = sub_22C388998();
      [v68 v69];

      sub_22C36B554();
      v70 = swift_allocObject();
      sub_22C7493F0(v70, v71, v72, v73, v74, v75, v76, v77, v78);
      *(v3 + 32) = sub_22C90ABEC();
      v79 = sub_22C90ABEC();
      sub_22C36FE1C(v79);
      sub_22C387194();
      sub_22C90A5DC();
      sub_22C3768C8();
      v80 = sub_22C388998();
      [v80 v81];

      sub_22C36B554();
      v82 = swift_allocObject();
      sub_22C7493F0(v82, v83, v84, v85, v86, v87, v88, v89, v90);
      v91 = v8;
      v92 = sub_22C90ABEC();
      v93 = sub_22C37B748(v92);
      sub_22C36FE1C(v93);
      sub_22C387194();
      v94 = sub_22C90A5DC();

      v95 = sub_22C388998();
      [v95 v96];
    }
  }

  return v4;
}

uint64_t JointResolution.CandidateInteraction.candidate.getter()
{
  v2 = sub_22C3727F4();
  v3 = (v1 + *(type metadata accessor for JointResolution.CandidateInteraction(v2) + 20));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  *v0 = *v3;
  v0[1] = v4;
  v0[2] = v5;
  v0[3] = v6;
  v0[4] = v7;
}

uint64_t JointResolution.CandidateInteraction.userAlignment.getter()
{
  v2 = sub_22C3727F4();
  result = type metadata accessor for JointResolution.CandidateInteraction(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

__n128 JointResolution.CandidateInteraction.init(deviceContext:candidate:userAlignment:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v11 = *a2;
  v6 = *(a2 + 2);
  v7 = *a3;
  sub_22C3891F4(a1, a4);
  v8 = type metadata accessor for JointResolution.CandidateInteraction(0);
  v9 = a4 + *(v8 + 20);
  *v9 = v11;
  *(v9 + 16) = v6;
  result = *(a2 + 24);
  *(v9 + 24) = result;
  *(a4 + *(v8 + 24)) = v7;
  return result;
}

BOOL static JointResolution.CandidateInteraction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!static JointResolution.DeviceContext.== infix(_:_:)(a1, a2))
  {
    return 0;
  }

  v4 = type metadata accessor for JointResolution.CandidateInteraction(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = *(a1 + v5 + 16);
  v9 = *(a1 + v5 + 24);
  v10 = *(a1 + v5 + 32);
  v11 = (a2 + v5);
  v12 = v11[2];
  v13 = v11[3];
  v14 = v11[4];
  v15 = v6 == *v11 && v7 == v11[1];
  if (!v15 && (sub_22C90B4FC() & 1) == 0)
  {
    return 0;
  }

  v16 = v8 == v12 && v9 == v13;
  if (!v16 && (sub_22C90B4FC() & 1) == 0)
  {
    return 0;
  }

  sub_22C749DA0(v10, v14);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  v18 = *(v4 + 24);
  v19 = *(a2 + v18);
  v20 = *(a1 + v18);

  return sub_22C3D4734(v20, v19);
}

uint64_t JointResolution.TupleInteraction.candidates.getter()
{
  v1 = *(v0 + *(type metadata accessor for JointResolution.TupleInteraction(0) + 20));
}

uint64_t JointResolution.TupleInteraction.userAlignment.getter()
{
  v2 = sub_22C3727F4();
  result = type metadata accessor for JointResolution.TupleInteraction(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t JointResolution.TupleInteraction.init(deviceContext:candidates:userAlignment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  sub_22C3891F4(a1, a4);
  result = type metadata accessor for JointResolution.TupleInteraction(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = v6;
  return result;
}

BOOL static JointResolution.TupleInteraction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!static JointResolution.DeviceContext.== infix(_:_:)(a1, a2))
  {
    return 0;
  }

  v4 = type metadata accessor for JointResolution.TupleInteraction(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  sub_22C46DA24();
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(v4 + 24);
  v10 = *(a2 + v9);
  v11 = *(a1 + v9);

  return sub_22C3D4734(v11, v10);
}

id sub_22C7483F0(uint64_t a1)
{
  v4 = v1[1];
  v5 = v1[3];
  v55 = v1[2];
  v58 = *v1;
  v6 = v1[4];
  v64 = v1[5];
  v67 = v1[6];
  v61 = v1[7];
  v70 = v1[8];
  v73 = v1[9];
  v7 = v1[10];
  v8 = sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
  sub_22C380498();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22C922280;
  sub_22C36E278(0, &qword_28142F978, 0x277CCABB0);
  *(v9 + 32) = sub_22C90ABEC();
  *(v9 + 40) = sub_22C90ABEC();
  v10 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  sub_22C3709C0();
  v13 = sub_22C5F2214(v11, v12);
  if (!v2)
  {
    sub_22C380498();
    v52 = v8;
    v14 = a1;
    v15 = swift_allocObject();
    *(v15 + 32) = sub_22C37F488(v15, v16, v17, v18, v19, v20, v21, v22, v52, v55, v58, v61, v64, v67, v70, v73, xmmword_22C922280);
    *(v15 + 40) = sub_22C90ABEC();
    v78 = v59;
    v79 = v4;
    v80 = v56;
    v81 = v5;
    v82 = v6;

    v23 = sub_22C743034(&v78, v14);

    sub_22C90A91C();
    sub_22C37BC08();
    v24 = sub_22C90A5DC();

    v25 = sub_22C372424();
    [v25 v26];

    sub_22C380498();
    v27 = swift_allocObject();
    *(v27 + 32) = sub_22C37F488(v27, v28, v29, v30, v31, v32, v33, v34, v53, v56, v59, v62, v65, v68, v71, v74, v76);
    *(v27 + 40) = sub_22C90ABEC();
    v78 = v66;
    v79 = v69;
    v80 = v63;
    v81 = v72;
    v82 = v75;

    sub_22C743034(&v78, v14);

    v35 = sub_22C90A91C();
    v36 = sub_22C90A5DC();

    v37 = sub_22C372424();
    [v37 v38];

    sub_22C380498();
    v39 = swift_allocObject();
    v47 = sub_22C37F488(v39, v40, v41, v42, v43, v44, v45, v46, v54, v57, v60, v63, v66, v69, v72, v75, v77);
    *(v39 + 40) = sub_22C37B748(v47);
    sub_22C90ABCC();
    sub_22C387194();
    v48 = sub_22C90A5DC();

    v49 = sub_22C372424();
    [v49 v50];
  }

  return v13;
}

id sub_22C7486CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C36E278(0, &qword_27D9BFB48, 0x277CBFF48);
  v5 = sub_22C90A5DC();

  v6 = [swift_getObjCClassFromMetadata() multiArrayByConcatenatingMultiArrays:v5 alongAxis:a2 dataType:a3];

  return v6;
}

void sub_22C748778(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[6];
  v28 = v6;
  v29 = a1[5];
  v26 = a1[7];
  v24 = a1[9];
  v25 = a1[8];
  v7 = *a2;
  v8 = a2[1];
  v33 = a2[2];
  v31 = a1[4];
  v32 = a2[3];
  v9 = a2[5];
  v30 = a2[4];
  v10 = a2[6];
  v11 = a2[7];
  v12 = *a1 == *a2 && v3 == v8;
  v13 = a2[8];
  v27 = a2[9];
  if (!v12 && (sub_22C90B4FC() & 1) == 0 || (v4 == v33 ? (v14 = v5 == v32) : (v14 = 0), !v14 && (sub_22C37170C(), (sub_22C90B4FC() & 1) == 0) || (sub_22C749DA0(v31, v30), (v15 & 1) == 0) || (v29 == v9 ? (v16 = v28 == v10) : (v16 = 0), !v16 && (sub_22C90B4FC() & 1) == 0 || (v26 == v11 ? (v17 = v25 == v13) : (v17 = 0), !v17 && (sub_22C90B4FC() & 1) == 0 || (sub_22C749DA0(v24, v27), (v18 & 1) == 0)))))
  {
    v19 = v2 == v9 && v3 == v10;
    if (v19 || (sub_22C90B4FC() & 1) != 0)
    {
      v20 = v4 == v11 && v5 == v13;
      if (v20 || (sub_22C37170C(), (sub_22C90B4FC() & 1) != 0))
      {
        sub_22C749DA0(v31, v27);
        if (v21)
        {
          v22 = v29 == v7 && v28 == v8;
          if (v22 || (sub_22C90B4FC() & 1) != 0)
          {
            v23 = v26 == v33 && v25 == v32;
            if (v23 || (sub_22C90B4FC() & 1) != 0)
            {

              sub_22C749DA0(v24, v30);
            }
          }
        }
      }
    }
  }
}

uint64_t JointResolution.UserAlignment.init(for:)()
{
  sub_22C3727F4();
  v1 = sub_22C9032FC();
  sub_22C369824(v1);
  v3 = v2;
  v5 = *(v4 + 88);
  v6 = sub_22C37170C();
  result = v7(v6);
  if (result != *MEMORY[0x277D1F2D8])
  {
    if (result == *MEMORY[0x277D1F2B8])
    {
      v9 = 0;
      goto LABEL_21;
    }

    if (result == *MEMORY[0x277D1F2C8])
    {
      v9 = 2;
      goto LABEL_21;
    }

    if (result == *MEMORY[0x277D1F2E0])
    {
      v9 = 4;
      goto LABEL_21;
    }

    if (result == *MEMORY[0x277D1F2C0])
    {
      v9 = 3;
      goto LABEL_21;
    }

    if (result == *MEMORY[0x277D1F2B0])
    {
      v9 = 1;
      goto LABEL_21;
    }

    if (result == *MEMORY[0x277D1F2D0])
    {
      v9 = 6;
      goto LABEL_21;
    }

    if (result == *MEMORY[0x277D1F298])
    {
      v9 = 7;
      goto LABEL_21;
    }

    if (result == *MEMORY[0x277D1F2A0])
    {
      v9 = 8;
      goto LABEL_21;
    }

    if (result == *MEMORY[0x277D1F2A8])
    {
      v9 = 9;
      goto LABEL_21;
    }

    v10 = *(v3 + 8);
    v11 = sub_22C37170C();
    result = v12(v11);
  }

  v9 = 5;
LABEL_21:
  *v0 = v9;
  return result;
}

void JointResolution.UserAlignment.init(rawValue:)(char *a1@<X8>, double a2@<D0>)
{
  if (a2 == 0.0)
  {
    v2 = 0;
  }

  else if (a2 == 1.0)
  {
    v2 = 1;
  }

  else if (a2 == 0.1)
  {
    v2 = 2;
  }

  else if (a2 == 0.9)
  {
    v2 = 3;
  }

  else if (a2 == 0.55)
  {
    v2 = 4;
  }

  else if (a2 == 0.5)
  {
    v2 = 5;
  }

  else if (a2 == 0.45)
  {
    v2 = 6;
  }

  else if (a2 == 0.48)
  {
    v2 = 7;
  }

  else if (a2 == 0.49)
  {
    v2 = 8;
  }

  else if (a2 == 0.4)
  {
    v2 = 9;
  }

  else
  {
    v2 = 10;
  }

  *a1 = v2;
}

unint64_t sub_22C748D7C()
{
  result = qword_27D9BFB30;
  if (!qword_27D9BFB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFB30);
  }

  return result;
}

unint64_t sub_22C748DD4()
{
  result = qword_27D9BFB38;
  if (!qword_27D9BFB38)
  {
    sub_22C3AC1A0(&qword_27D9BFB40, &qword_22C9244A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFB38);
  }

  return result;
}

uint64_t sub_22C748E60()
{
  result = type metadata accessor for JointResolution.DeviceContext();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22C748F0C()
{
  type metadata accessor for JointResolution.DeviceContext();
  if (v0 <= 0x3F)
  {
    sub_22C748F98();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C748F98()
{
  if (!qword_28142FA08)
  {
    v0 = sub_22C90A68C();
    if (!v1)
    {
      atomic_store(v0, &qword_28142FA08);
    }
  }
}

uint64_t _s13UserAlignmentOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s13UserAlignmentOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22C74914C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C369A48();
  v6 = v5(v4);
  sub_22C36985C(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_22C7491A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C369A48();
  v6 = v5(v4);
  sub_22C36985C(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_22C749204(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BFB18, qword_22C9245B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C74926C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_22C7492C4()
{
  result = qword_27D9BFB70;
  if (!qword_27D9BFB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFB70);
  }

  return result;
}

uint64_t sub_22C749318(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_22C749358(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_22C7493E0(__n128 *a1)
{
  result = v1[12];
  a1[1] = result;
  return result;
}

__n128 sub_22C7493F0(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  a1[1] = a9;
  return result;
}

uint64_t sub_22C749400()
{

  return sub_22C90A5DC();
}

uint64_t sub_22C749440()
{
}

uint64_t sub_22C749458(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_22C90ABEC();
}

id sub_22C749470(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

uint64_t sub_22C74948C()
{

  return type metadata accessor for JointResolution.DeviceContext();
}

uint64_t sub_22C7494AC()
{

  return sub_22C90ABEC();
}

void sub_22C7494C4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = *(a1 + 64);
    v25 = a1 + 64;
    v6 = 1 << *(a1 + 32);
    sub_22C378630();
    v9 = v8 & v7;
    v11 = (v10 + 63) >> 6;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      v15 = v12 | (v4 << 6);
      v16 = (*(a1 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(*(a1 + 56) + v15);

      if (v17)
      {
        v20 = sub_22C36EBF0();
        v22 = sub_22C36E2BC(v20, v21);
        v24 = v23;

        if ((v24 & 1) != 0 && *(*(a2 + 56) + v22) == v19)
        {
          continue;
        }
      }

      return;
    }

    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return;
      }

      v14 = *(v25 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_22C74960C()
{
  sub_22C36BA7C();
  sub_22C3716E4();
  v2 = sub_22C902D0C();
  v3 = sub_22C369824(v2);
  v79 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  v73 = &v65 - v11;
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  v72 = &v65 - v13;
  sub_22C369930();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA64();
  v78 = v15;
  v16 = sub_22C3A5908(&qword_27D9BC218, &unk_22C912410);
  v17 = sub_22C369914(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C74FE04();
  MEMORY[0x28223BE20](v20);
  sub_22C36DA38();
  v75 = v1;
  if (v0 != v1 && (sub_22C74FF38(), v23))
  {
    v71 = v21;
    v74 = v22;
    v24 = 0;
    v69 = v0;
    sub_22C36FE34();
    sub_22C36B564();
    v66 = v25 >> 6;
    v67 = v0;
    sub_22C3768E0();
    v70 = v27;
    v68 = v9;
    while (v26)
    {
      sub_22C36C050();
      v77 = v28;
      v30 = v29 | (v24 << 6);
LABEL_12:
      v33 = v69;
      v34 = v79;
      v35 = *(v79 + 72) * v30;
      v36 = *(v79 + 16);
      v36(v78, *(v69 + 48) + v35, v2);
      v37 = v72;
      v36(v72, *(v33 + 56) + v35, v2);
      v38 = sub_22C3A5908(&qword_27D9BC210, &unk_22C917470);
      v39 = *(v38 + 48);
      v40 = *(v34 + 32);
      v31 = v74;
      v40();
      (v40)(v31 + v39, v37, v2);
      sub_22C36BECC();
      sub_22C36C640(v41, v42, v43, v38);
      v9 = v68;
LABEL_13:
      v44 = v31;
      v45 = v71;
      sub_22C74FC0C(v44, v71, &qword_27D9BC218, &unk_22C912410);
      v46 = sub_22C36BA00();
      v48 = sub_22C3A5908(v46, v47);
      if (sub_22C370B74(v45, 1, v48) == 1)
      {
        goto LABEL_20;
      }

      v49 = *(v48 + 48);
      v50 = *v76;
      (*v76)(v73, v45, v2);
      v50(v9, v45 + v49, v2);
      v51 = v75;
      sub_22C6280AC();
      v53 = v52;
      LOBYTE(v49) = v54;
      v55 = *v70;
      v56 = sub_22C36EBF0();
      v55(v56);
      if ((v49 & 1) == 0)
      {
        v64 = sub_22C37F8AC();
        v55(v64);
        goto LABEL_20;
      }

      (*(v79 + 16))(v78, *(v51 + 56) + *(v79 + 72) * v53, v2);
      sub_22C37BC14();
      sub_22C74F76C(&qword_27D9BC488, v57);
      v58 = sub_22C90A0BC();
      v59 = sub_22C36EBF0();
      v55(v59);
      v60 = sub_22C37F8AC();
      v55(v60);
      v26 = v77;
      if ((v58 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v31 = v74;
    while (1)
    {
      v32 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v32 >= v66)
      {
        v61 = sub_22C36BA00();
        v63 = sub_22C3A5908(v61, v62);
        sub_22C375FC8(v63);
        goto LABEL_13;
      }

      ++v24;
      if (*(v67 + 8 * v32))
      {
        sub_22C371C3C();
        sub_22C3813B8();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    sub_22C36CC48();
  }
}

void sub_22C749A3C()
{
  sub_22C36BA7C();
  sub_22C3716E4();
  v73 = sub_22C90430C();
  v2 = sub_22C369824(v73);
  v67 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369ABC();
  v68 = v6 - v7;
  sub_22C369930();
  MEMORY[0x28223BE20](v8);
  sub_22C36BA64();
  v66 = v9;
  v10 = sub_22C3A5908(&qword_27D9BFC70, &unk_22C926C90);
  v11 = sub_22C369914(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369ABC();
  v70 = v14 - v15;
  sub_22C369930();
  MEMORY[0x28223BE20](v16);
  sub_22C36DA38();
  if (v0 != v1 && (sub_22C38340C(), v18))
  {
    v69 = v17;
    v19 = 0;
    v64 = v0;
    sub_22C36FE34();
    sub_22C36B564();
    v22 = v21 >> 6;
    v62 = v0;
    v63 = v67 + 16;
    v71 = (v67 + 32);
    v65 = (v67 + 8);
    while (v20)
    {
      sub_22C36C050();
      v72 = v23;
      v25 = v24 | (v19 << 6);
LABEL_12:
      (*(v67 + 16))(v66, *(v64 + 48) + *(v67 + 72) * v25, v73);
      v32 = *(*(v64 + 56) + 8 * v25);
      v33 = sub_22C3A5908(&qword_27D9BFC78, &qword_22C925060);
      v34 = *(v33 + 48);
      v27 = v70;
      (*(v67 + 32))(v70, v66, v73);
      *(v70 + v34) = v32;
      sub_22C36BECC();
      sub_22C36C640(v35, v36, v37, v33);

      v26 = v69;
LABEL_13:
      sub_22C74FC0C(v27, v26, &qword_27D9BFC70, &unk_22C926C90);
      v38 = sub_22C38A024();
      v40 = sub_22C3A5908(v38, v39);
      if (sub_22C370B74(v26, 1, v40) == 1)
      {
        goto LABEL_20;
      }

      v41 = *(v40 + 48);
      v42 = *v71;
      v43 = sub_22C371510();
      v44(v43);
      v45 = *(v26 + v41);
      sub_22C628164();
      v47 = v46;
      LOBYTE(v41) = v48;
      (*v65)(v68, v73);
      if ((v41 & 1) == 0)
      {

        goto LABEL_20;
      }

      v49 = *(*(v1 + 56) + 8 * v47);

      sub_22C46D710(v50, v45, v51, v52, v53, v54, v55, v56, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
      v58 = v57;

      v20 = v72;
      if ((v58 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v26 = v69;
    v27 = v70;
    while (1)
    {
      v28 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v28 >= v22)
      {
        v59 = sub_22C3A5908(&qword_27D9BFC78, &qword_22C925060);
        sub_22C37B39C(v70, v60, v61, v59);
        goto LABEL_13;
      }

      ++v19;
      if (*(v62 + 8 * v28))
      {
        sub_22C371C3C();
        v72 = v29;
        v25 = v31 | (v30 << 6);
        v19 = v30;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    sub_22C750078();
    sub_22C36CC48();
  }
}

void sub_22C749DA0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = *(a1 + 64);
    v6 = 1 << *(a1 + 32);
    sub_22C378630();
    v9 = v8 & v7;
    v11 = (v10 + 63) >> 6;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v13 = v12 | (v4 << 6);
LABEL_10:
      v16 = *(*(a1 + 48) + v13) | (*(*(a1 + 56) + 4 * v13) << 32);
LABEL_11:
      if (v16 != 8)
      {
        v17 = sub_22C633A1C(v16);
        if ((v18 & 1) != 0 && *(*(a2 + 56) + 4 * v17) == *(&v16 + 1))
        {
          continue;
        }
      }

      return;
    }

    while (1)
    {
      v14 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        v9 = 0;
        v16 = 8;
        goto LABEL_11;
      }

      v15 = *(a1 + 64 + 8 * v14);
      ++v4;
      if (v15)
      {
        v9 = (v15 - 1) & v15;
        v13 = __clz(__rbit64(v15)) | (v14 << 6);
        v4 = v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_22C749ED4()
{
  sub_22C36BA7C();
  v3 = sub_22C3716E4();
  v4 = type metadata accessor for _PromptMapper._ToolPromptMap(v3);
  v5 = sub_22C369824(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  sub_22C381AEC();
  MEMORY[0x28223BE20](v12);
  sub_22C36BA64();
  v79 = v13;
  v14 = sub_22C3A5908(&qword_27D9BFC80, &unk_22C92B6F0);
  v15 = sub_22C369914(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369ABC();
  v20 = (v18 - v19);
  v22 = MEMORY[0x28223BE20](v21);
  sub_22C36EC2C(v22, v23, v24, v25, v26, v27, v28, v29, v73);
  if (v0 != v1 && (sub_22C38340C(), v30))
  {
    v77 = v10;
    v78 = v2;
    v31 = 0;
    v76 = v0;
    sub_22C36FE34();
    sub_22C36B564();
    v74 = v33 >> 6;
    v75 = v0;
    v34 = &unk_27D9BC4B0;
    v35 = &unk_22C9134C0;
    while (v32)
    {
      sub_22C36C050();
      v81 = v36;
      v38 = v37 | (v31 << 6);
LABEL_12:
      v44 = *(v76 + 56);
      v45 = *(*(v76 + 48) + 8 * v38);
      v46 = sub_22C74FF28();
      sub_22C74FB64(v46, v79);
      v47 = sub_22C3A5908(v34, v35);
      v48 = *(v47 + 48);
      *v20 = v45;
      sub_22C74FBB8(v79, v20 + v48);
      sub_22C36BECC();
      sub_22C36C640(v49, v50, v51, v47);

      v39 = v80;
LABEL_13:
      sub_22C74FC0C(v20, v39, &qword_27D9BFC80, &unk_22C92B6F0);
      v52 = sub_22C3A5908(v34, v35);
      if (sub_22C370B74(v39, 1, v52) == 1)
      {
        goto LABEL_23;
      }

      v53 = v35;
      v54 = v34;
      v55 = v20;
      v56 = v4;
      v57 = *(v52 + 48);
      v58 = *v39;
      sub_22C37B760();
      sub_22C74FBB8(v39 + v59, v78);
      sub_22C62821C();
      v61 = v60;

      if ((v61 & 1) == 0)
      {
        goto LABEL_22;
      }

      sub_22C74FEE0();
      sub_22C37B760();
      sub_22C74FB64(v62, v77);
      v63 = sub_22C36BC58();
      if (!sub_22C483418(v63, v64) || (v4 = v56, v65 = *(v56 + 20), v66 = *(v77 + v65), v67 = *(v78 + v65), sub_22C74A28C(), (v68 & 1) == 0))
      {
        sub_22C74FC64();
LABEL_22:
        sub_22C74FC64();
        goto LABEL_23;
      }

      v69 = sub_22C48819C(*(v77 + *(v56 + 24)), *(v78 + *(v56 + 24)));
      sub_22C74FC64();
      sub_22C36EBF0();
      sub_22C74FC64();
      v20 = v55;
      v34 = v54;
      v35 = v53;
      v32 = v81;
      if ((v69 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v39 = v80;
    while (1)
    {
      v40 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v40 >= v74)
      {
        v70 = sub_22C3A5908(v34, v35);
        sub_22C37B39C(v20, v71, v72, v70);
        goto LABEL_13;
      }

      ++v31;
      if (*(v75 + 8 * v40))
      {
        sub_22C371C3C();
        v81 = v41;
        v38 = v43 | (v42 << 6);
        v31 = v42;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:
    sub_22C36CC48();
  }
}

void sub_22C74A28C()
{
  sub_22C36BA7C();
  v5 = v4;
  v6 = sub_22C3704C4();
  v56 = type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(v6);
  v7 = sub_22C369824(v56);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369ABC();
  sub_22C74FEF0();
  MEMORY[0x28223BE20](v10);
  sub_22C385F64();
  MEMORY[0x28223BE20](v11);
  sub_22C36BA64();
  v55 = v12;
  v13 = sub_22C3A5908(&qword_27D9BFC50, &qword_22C924F10);
  v14 = sub_22C369914(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C74FE04();
  MEMORY[0x28223BE20](v17);
  sub_22C36DA38();
  if (v0 == v5 || *(v0 + 16) != *(v5 + 16))
  {
LABEL_21:
    sub_22C75001C();
    sub_22C36CC48();
  }

  else
  {
    v54 = v18;
    v57 = v19;
    v20 = 0;
    v53 = v2;
    sub_22C36FE34();
    sub_22C36B564();
    v51 = v22 >> 6;
    v52 = v0;
    v23 = &unk_27D9BC398;
    v24 = &unk_22C912AC8;
    while (v21)
    {
      sub_22C36C050();
      v58 = v25;
LABEL_11:
      sub_22C386850();
      v30 = *v28;
      v29 = v28[1];
      v31 = sub_22C74FF28();
      v26 = v55;
      sub_22C74FB64(v31, v55);
      v32 = sub_22C377B94();
      v34 = sub_22C3A5908(v32, v33);
      sub_22C74FF4C(v34);
      sub_22C36BECC();
      sub_22C36C640(v35, v36, v37, v1);

      v2 = v53;
LABEL_12:
      sub_22C74FC0C(v26, v54, &qword_27D9BFC50, &qword_22C924F10);
      v23 = v24;
      v38 = sub_22C3A5908(v24, v3);
      if (sub_22C370B74(v54, 1, v38) == 1)
      {
        goto LABEL_21;
      }

      sub_22C750028();
      sub_22C370334();
      sub_22C74FBB8(v40 + v39, v2);
      sub_22C36E2BC(v38, v54);
      v3 = v41;

      if ((v3 & 1) == 0)
      {
        goto LABEL_20;
      }

      sub_22C74FEE0();
      sub_22C370334();
      sub_22C74FB64(v42, v26);
      sub_22C37FE24();
      if ((sub_22C9097CC() & 1) == 0)
      {
        sub_22C74FC64();
LABEL_20:
        sub_22C74FC64();
        goto LABEL_21;
      }

      v43 = sub_22C750064();
      v45 = sub_22C48819C(v43, v44);
      v1 = type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap;
      sub_22C74FC64();
      sub_22C3720DC();
      sub_22C74FC64();
      v21 = v58;
      if ((v45 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v26 = v57;
    while (1)
    {
      v27 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v27 >= v51)
      {
        v46 = sub_22C377B94();
        v48 = sub_22C3A5908(v46, v47);
        sub_22C37B39C(v57, v49, v50, v48);
        v3 = v24;
        v24 = v23;
        goto LABEL_12;
      }

      ++v20;
      if (*(v52 + 8 * v27))
      {
        sub_22C371C3C();
        sub_22C3838AC();
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_22C74A5DC()
{
  sub_22C36BA7C();
  v5 = v4;
  v6 = sub_22C3704C4();
  v55 = type metadata accessor for ParameterPromptMap(v6);
  v7 = sub_22C369824(v55);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369ABC();
  sub_22C74FEF0();
  MEMORY[0x28223BE20](v10);
  sub_22C385F64();
  MEMORY[0x28223BE20](v11);
  sub_22C36BA64();
  v54 = v12;
  v13 = sub_22C3A5908(&qword_27D9BDE20, &qword_22C91BED0);
  v14 = sub_22C369914(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C74FE04();
  MEMORY[0x28223BE20](v17);
  sub_22C36DA38();
  if (v0 == v5 || *(v0 + 16) != *(v5 + 16))
  {
LABEL_21:
    sub_22C75001C();
    sub_22C36CC48();
  }

  else
  {
    v53 = v18;
    v56 = v19;
    v20 = 0;
    v52 = v2;
    sub_22C36FE34();
    sub_22C36B564();
    v50 = v22 >> 6;
    v51 = v0;
    v23 = &qword_27D9BC478;
    v24 = &unk_22C9134A0;
    while (v21)
    {
      sub_22C36C050();
      v57 = v25;
LABEL_11:
      sub_22C386850();
      v30 = *v28;
      v29 = v28[1];
      v31 = sub_22C74FF28();
      v26 = v54;
      sub_22C74FB64(v31, v54);
      v32 = sub_22C377B94();
      v34 = sub_22C3A5908(v32, v33);
      sub_22C74FF4C(v34);
      sub_22C36BECC();
      sub_22C36C640(v35, v36, v37, v1);

      v2 = v52;
LABEL_12:
      sub_22C74FC0C(v26, v53, &qword_27D9BDE20, &qword_22C91BED0);
      v23 = v24;
      v38 = sub_22C3A5908(v24, v3);
      if (sub_22C370B74(v53, 1, v38) == 1)
      {
        goto LABEL_21;
      }

      sub_22C750028();
      sub_22C3857A4();
      sub_22C74FBB8(v40 + v39, v2);
      sub_22C36E2BC(v38, v53);
      v3 = v41;

      if ((v3 & 1) == 0)
      {
        goto LABEL_20;
      }

      sub_22C74FEE0();
      sub_22C3857A4();
      sub_22C74FB64(v42, v26);
      sub_22C37FE24();
      if ((sub_22C9097CC() & 1) == 0)
      {
        sub_22C74FC64();
LABEL_20:
        sub_22C74FC64();
        goto LABEL_21;
      }

      sub_22C750064();
      sub_22C74960C();
      v44 = v43;
      v1 = type metadata accessor for ParameterPromptMap;
      sub_22C74FC64();
      sub_22C3720DC();
      sub_22C74FC64();
      v21 = v57;
      if ((v44 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v26 = v56;
    while (1)
    {
      v27 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v27 >= v50)
      {
        v45 = sub_22C377B94();
        v47 = sub_22C3A5908(v45, v46);
        sub_22C37B39C(v56, v48, v49, v47);
        v3 = v24;
        v24 = v23;
        goto LABEL_12;
      }

      ++v20;
      if (*(v51 + 8 * v27))
      {
        sub_22C371C3C();
        sub_22C3838AC();
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_22C74A92C()
{
  sub_22C36BA7C();
  v2 = sub_22C3716E4();
  v3 = type metadata accessor for ToolPromptMap(v2);
  v4 = sub_22C369824(v3);
  v84 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  v10 = v8 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v75 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  sub_22C36EC2C(v15, v16, v17, v18, v19, v20, v21, v22, v75);
  v23 = sub_22C3A5908(&qword_27D9BFC48, &unk_22C924F00);
  v24 = sub_22C369914(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22C74FE04();
  MEMORY[0x28223BE20](v27);
  sub_22C36DA38();
  if (v0 != v1 && (sub_22C38340C(), v30))
  {
    v79 = v14;
    v80 = v28;
    v82 = v29;
    v31 = 0;
    v77 = v0;
    v78 = v3;
    sub_22C36FE34();
    v76 = v0;
    sub_22C36B564();
    v34 = v33 >> 6;
    while (v32)
    {
      sub_22C36C050();
      v83 = v35;
LABEL_12:
      sub_22C386850();
      v40 = *v38;
      v39 = v38[1];
      v41 = sub_22C74FF28();
      v42 = v81;
      sub_22C74FB64(v41, v81);
      v43 = sub_22C3A5908(&qword_27D9BC480, &unk_22C92B6E0);
      v44 = *(v43 + 48);
      v45 = v82;
      *v82 = v40;
      v45[1] = v39;
      v36 = v45;
      sub_22C74FBB8(v42, v45 + v44);
      sub_22C36BECC();
      sub_22C36C640(v46, v47, v48, v43);

LABEL_13:
      v49 = v36;
      v50 = v80;
      sub_22C74FC0C(v49, v80, &qword_27D9BFC48, &unk_22C924F00);
      v51 = sub_22C3A5908(&qword_27D9BC480, &unk_22C92B6E0);
      if (sub_22C370B74(v50, 1, v51) == 1)
      {
        goto LABEL_23;
      }

      v52 = v10;
      v53 = *(v51 + 48);
      v54 = *v50;
      v55 = v50[1];
      sub_22C375AE4();
      v57 = v50 + v56;
      v58 = v79;
      sub_22C74FBB8(v57, v79);
      sub_22C36E2BC(v54, v55);
      LOBYTE(v54) = v59;

      if ((v54 & 1) == 0)
      {
        goto LABEL_22;
      }

      sub_22C74FEE0();
      sub_22C375AE4();
      v10 = v52;
      sub_22C74FB64(v60, v52);
      v61 = sub_22C37FE24();
      v63 = sub_22C483418(v61, v62);
      v64 = v78;
      if (!v63 || (v65 = *(v78 + 20), v66 = *(v52 + v65), v67 = *(v58 + v65), sub_22C74A5DC(), (v68 & 1) == 0))
      {
        sub_22C74FC64();
LABEL_22:
        sub_22C74FC64();
        goto LABEL_23;
      }

      v69 = *(v64 + 24);
      v70 = *(v52 + v69);
      v71 = *(v58 + v69);
      sub_22C74960C();
      v73 = v72;
      sub_22C74FC64();
      sub_22C3720DC();
      sub_22C74FC64();
      v32 = v83;
      if ((v73 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v36 = v82;
    while (1)
    {
      v37 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v37 >= v34)
      {
        v74 = sub_22C3A5908(&qword_27D9BC480, &unk_22C92B6E0);
        sub_22C381768(v74);
        v83 = 0;
        goto LABEL_13;
      }

      ++v31;
      if (*(v76 + 8 * v37))
      {
        sub_22C371C3C();
        sub_22C3838AC();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:
    sub_22C75001C();
    sub_22C36CC48();
  }
}

void sub_22C74ACCC()
{
  sub_22C36BA7C();
  v3 = v2;
  sub_22C3704C4();
  v4 = sub_22C908EAC();
  v5 = sub_22C369824(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  sub_22C74FEF0();
  MEMORY[0x28223BE20](v8);
  sub_22C36BA64();
  v9 = sub_22C3A5908(&qword_27D9BFC40, &unk_22C924EF0);
  v10 = sub_22C369914(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C74FE04();
  MEMORY[0x28223BE20](v13);
  sub_22C36DA38();
  if (v0 != v3 && (sub_22C74FF38(), v16))
  {
    v48 = v14;
    v49 = v15;
    v17 = 0;
    sub_22C36FE34();
    v46 = v0;
    sub_22C36B564();
    v19 = v18 >> 6;
    sub_22C3768E0();
    v47 = v21;
    while (v20)
    {
      sub_22C36C050();
      v50 = v22;
LABEL_11:
      v24 = sub_22C379AD8();
      v25(v24);
      v26 = sub_22C3A5908(&qword_27D9BDDF8, &qword_22C91BEA0);
      v27 = sub_22C74FFA8(v26);
      v28(v27);
      sub_22C36BECC();
      sub_22C36C640(v29, v30, v31, &qword_27D9BDDF8);

LABEL_12:
      sub_22C74FC0C(v49, v48, &qword_27D9BFC40, &unk_22C924EF0);
      v32 = sub_22C3A5908(&qword_27D9BDDF8, &qword_22C91BEA0);
      sub_22C3709CC(v32);
      if (v16)
      {
        goto LABEL_19;
      }

      v33 = sub_22C74FF00();
      v34(v33);
      v1 = sub_22C36E2BC(v1, &qword_22C91BEA0);
      v36 = v35;

      if ((v36 & 1) == 0)
      {
        v43 = *v47;
        v44 = sub_22C38A024();
        v45(v44);
        goto LABEL_19;
      }

      v37 = sub_22C74FF84();
      v38(v37);
      sub_22C74F76C(&qword_27D9BC800, MEMORY[0x277D72238]);
      v39 = sub_22C37E7A0();
      v40 = sub_22C36D384();
      MEMORY[0x900024ABE](v40);
      v41 = sub_22C38A024();
      MEMORY[0x900024ABE](v41);
      v20 = v50;
      if ((v39 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      v23 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v23 >= v19)
      {
        v42 = sub_22C3A5908(&qword_27D9BDDF8, &qword_22C91BEA0);
        sub_22C375FC8(v42);
        goto LABEL_12;
      }

      ++v17;
      if (*(v46 + 8 * v23))
      {
        sub_22C371C3C();
        sub_22C3813B8();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_22C75001C();
    sub_22C36CC48();
  }
}

void sub_22C74AFDC()
{
  sub_22C36BA7C();
  v3 = v2;
  sub_22C3704C4();
  v4 = sub_22C90941C();
  v5 = sub_22C369824(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  sub_22C74FEF0();
  MEMORY[0x28223BE20](v8);
  sub_22C36BA64();
  v9 = sub_22C3A5908(&qword_27D9BFC38, &unk_22C924EE0);
  v10 = sub_22C369914(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C74FE04();
  MEMORY[0x28223BE20](v13);
  sub_22C36DA38();
  if (v0 != v3 && (sub_22C74FF38(), v16))
  {
    v48 = v14;
    v49 = v15;
    v17 = 0;
    sub_22C36FE34();
    v46 = v0;
    sub_22C36B564();
    v19 = v18 >> 6;
    sub_22C3768E0();
    v47 = v21;
    while (v20)
    {
      sub_22C36C050();
      v50 = v22;
LABEL_11:
      v24 = sub_22C379AD8();
      v25(v24);
      v26 = sub_22C3A5908(&qword_27D9BDDD8, &qword_22C91BE80);
      v27 = sub_22C74FFA8(v26);
      v28(v27);
      sub_22C36BECC();
      sub_22C36C640(v29, v30, v31, &qword_27D9BDDD8);

LABEL_12:
      sub_22C74FC0C(v49, v48, &qword_27D9BFC38, &unk_22C924EE0);
      v32 = sub_22C3A5908(&qword_27D9BDDD8, &qword_22C91BE80);
      sub_22C3709CC(v32);
      if (v16)
      {
        goto LABEL_19;
      }

      v33 = sub_22C74FF00();
      v34(v33);
      v1 = sub_22C36E2BC(v1, &qword_22C91BE80);
      v36 = v35;

      if ((v36 & 1) == 0)
      {
        v43 = *v47;
        v44 = sub_22C38A024();
        v45(v44);
        goto LABEL_19;
      }

      v37 = sub_22C74FF84();
      v38(v37);
      sub_22C74F76C(&qword_27D9BF510, MEMORY[0x277D72B00]);
      v39 = sub_22C37E7A0();
      v40 = sub_22C36D384();
      MEMORY[0x900024AA4](v40);
      v41 = sub_22C38A024();
      MEMORY[0x900024AA4](v41);
      v20 = v50;
      if ((v39 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      v23 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v23 >= v19)
      {
        v42 = sub_22C3A5908(&qword_27D9BDDD8, &qword_22C91BE80);
        sub_22C375FC8(v42);
        goto LABEL_12;
      }

      ++v17;
      if (*(v46 + 8 * v23))
      {
        sub_22C371C3C();
        sub_22C3813B8();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_22C75001C();
    sub_22C36CC48();
  }
}

void sub_22C74B2EC()
{
  sub_22C36BA7C();
  sub_22C3716E4();
  v4 = sub_22C902D0C();
  v5 = sub_22C369824(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  sub_22C381AEC();
  v9 = MEMORY[0x28223BE20](v8);
  sub_22C36EC2C(v9, v10, v11, v12, v13, v14, v15, v16, v61);
  v69 = sub_22C902C9C();
  v17 = sub_22C369824(v69);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  sub_22C386318();
  MEMORY[0x28223BE20](v20);
  sub_22C36BA64();
  v21 = sub_22C3A5908(&qword_27D9BC2A0, &qword_22C912640);
  v22 = sub_22C369914(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22C74FE04();
  MEMORY[0x28223BE20](v25);
  sub_22C36BA64();
  sub_22C386D7C(v26);
  if (!v27 && (sub_22C38340C(), v27))
  {
    v66 = v28;
    v65 = v1;
    v29 = 0;
    sub_22C3738B8();
    sub_22C372C8C();
    while (v2)
    {
      sub_22C38AA58();
LABEL_12:
      v31 = sub_22C74FE38();
      v32(v31);
      v33 = sub_22C374F48();
      v34(v33);
      v35 = sub_22C3A5908(&qword_27D9BAF30, &unk_22C90FAA0);
      v36 = sub_22C38921C(v35);
      v37(v36);
      v38 = *(v0 + 32);
      sub_22C74FFFC();
      v39();
      sub_22C36BECC();
      sub_22C36C640(v40, v41, v42, v1);
      v0 = v67;
      v2 = v68;
LABEL_13:
      sub_22C74FC0C(v3, v0, &qword_27D9BC2A0, &qword_22C912640);
      v43 = sub_22C36D384();
      v45 = sub_22C3A5908(v43, v44);
      sub_22C3709CC(v45);
      if (v27)
      {
        goto LABEL_20;
      }

      v46 = sub_22C3874A8();
      v47(v46);
      v48 = sub_22C37A308();
      v49(v48);
      v1 = v65;
      sub_22C6287BC();
      v50 = sub_22C37F4A8();
      v51(v50);
      if ((&qword_27D9BAF30 & 1) == 0)
      {
        v58 = *v64;
        v59 = sub_22C36EBF0();
        v60(v59);
        goto LABEL_20;
      }

      v52 = sub_22C74FE64();
      v53(v52);
      sub_22C37BC14();
      sub_22C74F76C(&qword_27D9BC488, v54);
      sub_22C74FEBC();
      v55 = sub_22C74FE8C();
      (qword_27D9BAF30)(v55);
      v56 = sub_22C36EBF0();
      (qword_27D9BAF30)(v56);
      if ((v65 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v3 = v66;
    v0 = v67;
    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v30 >= v62)
      {
        v57 = sub_22C3A5908(&qword_27D9BAF30, &unk_22C90FAA0);
        sub_22C381768(v57);
        v2 = 0;
        goto LABEL_13;
      }

      ++v29;
      if (*(v63 + 8 * v30))
      {
        sub_22C371C3C();
        sub_22C74FFEC();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    sub_22C750078();
    sub_22C36CC48();
  }
}

void sub_22C74B664()
{
  sub_22C36BA7C();
  sub_22C3716E4();
  v4 = sub_22C908C5C();
  v5 = sub_22C369824(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  sub_22C381AEC();
  v9 = MEMORY[0x28223BE20](v8);
  sub_22C36EC2C(v9, v10, v11, v12, v13, v14, v15, v16, v61);
  v69 = sub_22C9069BC();
  v17 = sub_22C369824(v69);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  sub_22C386318();
  MEMORY[0x28223BE20](v20);
  sub_22C36BA64();
  v21 = sub_22C3A5908(&qword_27D9BF108, &unk_22C921F70);
  v22 = sub_22C369914(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22C74FE04();
  MEMORY[0x28223BE20](v25);
  sub_22C36BA64();
  sub_22C386D7C(v26);
  if (!v27 && (sub_22C38340C(), v27))
  {
    v66 = v28;
    v65 = v1;
    v29 = 0;
    sub_22C3738B8();
    sub_22C372C8C();
    while (v2)
    {
      sub_22C38AA58();
LABEL_12:
      v31 = sub_22C74FE38();
      v32(v31);
      v33 = sub_22C374F48();
      v34(v33);
      v35 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
      v36 = sub_22C38921C(v35);
      v37(v36);
      v38 = *(v0 + 32);
      sub_22C74FFFC();
      v39();
      sub_22C36BECC();
      sub_22C36C640(v40, v41, v42, v1);
      v0 = v67;
      v2 = v68;
LABEL_13:
      sub_22C74FC0C(v3, v0, &qword_27D9BF108, &unk_22C921F70);
      v43 = sub_22C36D384();
      v45 = sub_22C3A5908(v43, v44);
      sub_22C3709CC(v45);
      if (v27)
      {
        goto LABEL_20;
      }

      v46 = sub_22C3874A8();
      v47(v46);
      v48 = sub_22C37A308();
      v49(v48);
      v1 = v65;
      sub_22C628D18();
      v50 = sub_22C37F4A8();
      v51(v50);
      if ((&qword_27D9BF110 & 1) == 0)
      {
        v58 = *v64;
        v59 = sub_22C36EBF0();
        v60(v59);
        goto LABEL_20;
      }

      v52 = sub_22C74FE64();
      v53(v52);
      sub_22C74FEA4();
      sub_22C74F76C(&qword_27D9BF838, v54);
      sub_22C74FEBC();
      v55 = sub_22C74FE8C();
      (qword_27D9BF110)(v55);
      v56 = sub_22C36EBF0();
      (qword_27D9BF110)(v56);
      if ((v65 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v3 = v66;
    v0 = v67;
    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v30 >= v62)
      {
        v57 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
        sub_22C381768(v57);
        v2 = 0;
        goto LABEL_13;
      }

      ++v29;
      if (*(v63 + 8 * v30))
      {
        sub_22C371C3C();
        sub_22C74FFEC();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    sub_22C750078();
    sub_22C36CC48();
  }
}

void sub_22C74B9DC()
{
  sub_22C36BA7C();
  sub_22C3716E4();
  v4 = sub_22C908C5C();
  v5 = sub_22C369824(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  sub_22C381AEC();
  v9 = MEMORY[0x28223BE20](v8);
  sub_22C36EC2C(v9, v10, v11, v12, v13, v14, v15, v16, v61);
  v69 = sub_22C901FAC();
  v17 = sub_22C369824(v69);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  sub_22C386318();
  MEMORY[0x28223BE20](v20);
  sub_22C36BA64();
  v21 = sub_22C3A5908(&qword_27D9BF0F0, &qword_22C921F58);
  v22 = sub_22C369914(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22C74FE04();
  MEMORY[0x28223BE20](v25);
  sub_22C36BA64();
  sub_22C386D7C(v26);
  if (!v27 && (sub_22C38340C(), v27))
  {
    v66 = v28;
    v65 = v1;
    v29 = 0;
    sub_22C3738B8();
    sub_22C372C8C();
    while (v2)
    {
      sub_22C38AA58();
LABEL_12:
      v31 = sub_22C74FE38();
      v32(v31);
      v33 = sub_22C374F48();
      v34(v33);
      v35 = sub_22C3A5908(&qword_27D9BF100, &qword_22C922FE0);
      v36 = sub_22C38921C(v35);
      v37(v36);
      v38 = *(v0 + 32);
      sub_22C74FFFC();
      v39();
      sub_22C36BECC();
      sub_22C36C640(v40, v41, v42, v1);
      v0 = v67;
      v2 = v68;
LABEL_13:
      sub_22C74FC0C(v3, v0, &qword_27D9BF0F0, &qword_22C921F58);
      v43 = sub_22C36D384();
      v45 = sub_22C3A5908(v43, v44);
      sub_22C3709CC(v45);
      if (v27)
      {
        goto LABEL_20;
      }

      v46 = sub_22C3874A8();
      v47(v46);
      v48 = sub_22C37A308();
      v49(v48);
      v1 = v65;
      sub_22C628274();
      v50 = sub_22C37F4A8();
      v51(v50);
      if ((&qword_27D9BF100 & 1) == 0)
      {
        v58 = *v64;
        v59 = sub_22C36EBF0();
        v60(v59);
        goto LABEL_20;
      }

      v52 = sub_22C74FE64();
      v53(v52);
      sub_22C74FEA4();
      sub_22C74F76C(&qword_27D9BF838, v54);
      sub_22C74FEBC();
      v55 = sub_22C74FE8C();
      (qword_27D9BF100)(v55);
      v56 = sub_22C36EBF0();
      (qword_27D9BF100)(v56);
      if ((v65 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v3 = v66;
    v0 = v67;
    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v30 >= v62)
      {
        v57 = sub_22C3A5908(&qword_27D9BF100, &qword_22C922FE0);
        sub_22C381768(v57);
        v2 = 0;
        goto LABEL_13;
      }

      ++v29;
      if (*(v63 + 8 * v30))
      {
        sub_22C371C3C();
        sub_22C74FFEC();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    sub_22C750078();
    sub_22C36CC48();
  }
}

uint64_t JointResolution.CandidateIdentifier.init(typedValue:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = a2;
  v3 = sub_22C9093BC();
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v11 = (v10 - v9);
  v12 = sub_22C3A5908(&qword_27D9BF2F8, &unk_22C922540);
  v13 = sub_22C369914(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v44 - v16;
  v18 = sub_22C9032BC();
  v19 = sub_22C369824(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v26 = v25 - v24;
  (*(v6 + 16))(v11, a1, v3);
  sub_22C766C2C(v11, v17);
  if (sub_22C370B74(v17, 1, v18) == 1)
  {
    sub_22C74D6D0(v17);
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_22C90AF5C();
    MEMORY[0x2318B7850](0xD00000000000001DLL, 0x800000022C933230);
    sub_22C90B12C();
    MEMORY[0x2318B7850](0xD000000000000029, 0x800000022C933250);
    v27 = v46;
    v28 = v47;
    sub_22C5F2300();
    sub_22C36FBE4();
    *v29 = v27;
    v29[1] = v28;
    swift_willThrow();
    v30 = *(v6 + 8);
    v31 = sub_22C37F8AC();
    return v32(v31);
  }

  else
  {
    (*(v21 + 32))(v26, v17, v18);
    v34 = sub_22C90329C();
    v44 = v35;
    v45 = v34;
    v36 = sub_22C9032AC();
    v38 = v37;
    v39 = *(v6 + 8);
    v40 = sub_22C37F8AC();
    v41(v40);
    result = (*(v21 + 8))(v26, v18);
    v42 = v48;
    v43 = v44;
    *v48 = v45;
    v42[1] = v43;
    v42[2] = v36;
    v42[3] = v38;
  }

  return result;
}

double JointResolution.Candidate.init(typedValue:signals:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_22C9093BC();
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v13 = v12 - v11;
  v14 = *(v8 + 16);
  v15 = sub_22C3720DC();
  v16(v15);
  JointResolution.CandidateIdentifier.init(typedValue:)(v13, &v26);
  if (v2)
  {
    v17 = *(v8 + 8);
    v18 = sub_22C36FBFC();
    v19(v18);
  }

  else
  {
    v21 = *(v8 + 8);
    v22 = sub_22C36FBFC();
    v23(v22);
    result = *&v26;
    v24 = v27;
    v25 = v28;
    *a2 = v26;
    *(a2 + 16) = v24;
    *(a2 + 24) = v25;
    *(a2 + 32) = a1;
  }

  return result;
}

uint64_t sub_22C74C164(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v59 = MEMORY[0x277D84F90];

    sub_22C3B7698();
    v10 = a1;
    v9 = v59;
    v4 = v59[2];
    v11 = 32;
    do
    {
      v5 = *(*(v10 + v11) + 16);
      if (v4 >= v59[3] >> 1)
      {
        sub_22C3B7698();
        v10 = a1;
      }

      v59[2] = v4 + 1;
      v59[v4 + 4] = v5;
      v11 += 8;
      ++v4;
      --v8;
    }

    while (v8);
  }

  v12 = sub_22C3D0D14(v9);
  v14 = v13;

  if (v14)
  {

    v15 = 0xEF7974706D652073;
    v16 = 0x692073656C707554;
LABEL_14:
    sub_22C5F2300();
    sub_22C36FBE4();
    *v18 = v16;
    v18[1] = v15;
    swift_willThrow();
    return a3;
  }

  if (v12 < *(a2 + 16))
  {
    v16 = 0xD00000000000002DLL;

    v17 = "Size of columnType is greater than the matrix";
LABEL_11:
    v15 = (v17 - 32) | 0x8000000000000000;
    goto LABEL_14;
  }

  if (v12 < *(a3 + 16))
  {

    v15 = 0x800000022C9347B0;
    v16 = 0xD000000000000032;
    goto LABEL_14;
  }

  if (v12 < *(a4 + 16))
  {
    v16 = 0xD00000000000002DLL;

    v17 = "Size of isResolved is greater than the matrix";
    goto LABEL_11;
  }

  v52 = *(a2 + 16);
  v49 = *(a4 + 16);
  v50 = *(a3 + 16);
  v51 = a3;
  v53 = *(a1 + 16);

  v21 = 0;
  a3 = v20;
  v54 = v12;
  while (v21 != v53)
  {
    if (v21 >= *(v20 + 16))
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v57 = a3;
    v22 = *(a1 + 32 + 8 * v21);
    v23 = *(v22 + 16);
    a3 = v12 - v23;
    if ((v12 - v23) < 0)
    {
      goto LABEL_64;
    }

    v56 = v21;
    if (v12 == v23)
    {
    }

    else
    {
      sub_22C5F8D4C();

      do
      {
        v5 = sub_22C909F0C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = *(v22 + 16);
          sub_22C36D270();
          sub_22C594258();
          v22 = v28;
        }

        v21 = *(v22 + 16);
        v4 = v21 + 1;
        if (v21 >= *(v22 + 24) >> 1)
        {
          sub_22C594258();
          v22 = v29;
        }

        *(v22 + 16) = v4;
        v26 = (v22 + 40 * v21);
        v26[4] = 0;
        v26[5] = 0xE000000000000000;
        v26[6] = 0;
        v26[7] = 0xE000000000000000;
        v26[8] = v5;
        --a3;
      }

      while (a3);
    }

    a3 = v57;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C887668(v57);
      a3 = v30;
    }

    v12 = v54;
    if (v56 >= *(a3 + 16))
    {
      goto LABEL_65;
    }

    v21 = v56 + 1;
    v24 = a3 + 8 * v56;
    v25 = *(v24 + 32);
    *(v24 + 32) = v22;

    v20 = a1;
  }

  v21 = v12 - v52;
  if ((v12 - v52) >= 0)
  {
    v5 = v51;
    v4 = a4;
    if (v12 != v52)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_51;
      }

      goto LABEL_69;
    }

    goto LABEL_38;
  }

LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
  do
  {
    __break(1u);
LABEL_69:
    v43 = *(a2 + 16);
    sub_22C36D270();
    sub_22C594174();
    a2 = v44;
LABEL_51:
    v35 = a2;
    v36 = *(a2 + 16);
    do
    {
      v37 = *(v35 + 24);
      if (v36 >= v37 >> 1)
      {
        sub_22C37090C(v37);
        sub_22C594174();
        v35 = v38;
      }

      *(v35 + 16) = v36 + 1;
      *(v35 + v36++ + 32) = 12;
      --v21;
    }

    while (v21);
LABEL_38:
    v21 = v54 - v50;
    if ((v54 - v50) < 0)
    {
      goto LABEL_67;
    }

    if (v54 != v50)
    {
      v39 = swift_isUniquelyReferenced_nonNull_native();
      if ((v39 & 1) == 0)
      {
        v45 = *(v5 + 16);
        sub_22C36D270();
        sub_22C59414C();
        v5 = v46;
      }

      v40 = *(v5 + 16);
      do
      {
        v41 = *(v5 + 24);
        if (v40 >= v41 >> 1)
        {
          sub_22C37090C(v41);
          sub_22C59414C();
          v5 = v42;
        }

        *(v5 + 16) = v40 + 1;
        *(v5 + v40++ + 32) = 0;
        --v21;
      }

      while (v21);
    }

    v21 = v54 - v49;
  }

  while ((v54 - v49) < 0);
  if (v54 != v49)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = *(v4 + 16);
      sub_22C36D270();
      sub_22C594124();
      v4 = v48;
    }

    v31 = *(v4 + 16);
    do
    {
      v32 = *(v4 + 24);
      if (v31 >= v32 >> 1)
      {
        sub_22C37090C(v32);
        sub_22C594124();
        v4 = v33;
      }

      *(v4 + 16) = v31 + 1;
      *(v4 + v31++ + 32) = 0;
      --v21;
    }

    while (v21);
  }

  return a3;
}

uint64_t ToolDefinition.toCandidateIdentifier()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22C90977C();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v8 = sub_22C908E7C();
  v10 = v9;
  sub_22C908DDC();
  v11 = sub_22C9096FC();
  v13 = v12;
  v14 = *(v5 + 8);
  v15 = sub_22C36BC58();
  result = v16(v15);
  *a1 = v8;
  a1[1] = v10;
  a1[2] = v11;
  a1[3] = v13;
  return result;
}

unint64_t sub_22C74C7C4(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

void static JointResolution.Candidate.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v10 = a1[3];
  v9 = a1[4];
  sub_22C750084(a2);
  v13 = v13 && v11 == v12;
  if (v13 || (sub_22C90B4FC() & 1) != 0)
  {
    v14 = v8 == v2 && v10 == v3;
    if (v14 || (sub_22C750040() & 1) != 0)
    {
      v15 = sub_22C36BA00();

      sub_22C749DA0(v15, v16);
    }
  }
}

uint64_t JointResolution.Candidate.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_22C36BA00();
}

uint64_t JointResolution.Candidate.bundleId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_22C36BA00();
}

uint64_t JointResolution.CandidateIdentifier.init(id:bundleId:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

__n128 JointResolution.Candidate.init(candidateId:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v7 = *a1;
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  sub_22C5F8D4C();
  v5 = sub_22C909F0C();
  result = v7;
  *a2 = v7;
  a2[1].n128_u64[0] = v3;
  a2[1].n128_u64[1] = v4;
  a2[2].n128_u64[0] = v5;
  return result;
}

void sub_22C74C940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v11 = *(a2 + 16);
  sub_22C7439E0(a2);
  if (v5)
  {
    return;
  }

  v72 = a1;
  v69 = a3;
  v68 = a4;
  v12 = sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22C922270;
  *(v13 + 32) = sub_22C90A91C();
  *(v13 + 40) = sub_22C90A91C();
  *(v13 + 48) = sub_22C90A91C();
  objc_allocWithZone(MEMORY[0x277CBFF48]);
  v67 = a5;
  v77 = sub_22C5F2214(v13, 65568);
  v14 = 0;
  v71 = v9 + 32;
  v78 = v12;
  v70 = v11;
LABEL_3:
  if (v14 == v11)
  {
    v40 = sub_22C387490();
    *(v40 + 16) = xmmword_22C922290;
    v9 = *(v69 + 16);
    *(v40 + 32) = sub_22C90A91C();
    v41 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    v15 = sub_22C38664C();
    goto LABEL_33;
  }

  v73 = *(v71 + 8 * v14) + 32;
  v74 = *(v71 + 8 * v14);

  for (i = 0; ; ++i)
  {
    v17 = *(v74 + 16);
    if (i == v17)
    {

      ++v14;
      v11 = v70;
      goto LABEL_3;
    }

    if (i >= v17)
    {
      break;
    }

    v18 = (v73 + 40 * i);
    v20 = *v18;
    v19 = v18[1];
    v21 = v18[3];
    v75 = v18[2];
    v9 = v18[4];
    v22 = swift_allocObject();
    sub_22C36EDDC(v22);

    v22[2].n128_u64[0] = sub_22C90A91C();
    v22[2].n128_u64[1] = sub_22C90A91C();
    v22[3].n128_u64[0] = sub_22C90A91C();
    sub_22C5F8D4C();
    v23 = sub_22C909F0C();
    v76 = v19;
    if (v20)
    {
      v24 = 0;
    }

    else
    {
      v24 = v19 == 0xE000000000000000;
    }

    if (!v24 && (sub_22C90B4FC() & 1) == 0 || (!v75 ? (v25 = v21 == 0xE000000000000000) : (v25 = 0), !v25 && (sub_22C90B4FC() & 1) == 0))
    {

      swift_bridgeObjectRelease_n();
LABEL_20:

      v29 = sub_22C909F0C();
      v80[0] = v20;
      v80[1] = v76;
      v80[2] = v75;
      v80[3] = v21;
      v80[4] = v29;
      MEMORY[0x28223BE20](v29);
      os_unfair_lock_lock((v72 + 24));
      sub_22C7432B4((v72 + 16), &v81);
      os_unfair_lock_unlock((v72 + 24));
      v28 = v81;
      sub_22C740224(v80);
      goto LABEL_21;
    }

    sub_22C749DA0(v9, v23);
    v27 = v26;

    swift_bridgeObjectRelease_n();
    if ((v27 & 1) == 0)
    {
      goto LABEL_20;
    }

    v28 = -1;
LABEL_21:
    sub_22C90A91C();
    sub_22C369A48();
    sub_22C3D3108();
    sub_22C37FE24();
    v30 = sub_22C90A5DC();

    [v77 setObject:v28 forKeyedSubscript:v30];

    v31 = 0;
    do
    {
      if (*(v9 + 16))
      {
        v32 = sub_22C633A1C(byte_283FAFD20[v31 + 32]);
        if (v33)
        {
          v34 = *(*(v9 + 56) + 4 * v32);
          if ((v34 & 0x7FFFFF) == 0)
          {
            v35 = *(*(v9 + 56) + 4 * v32);
          }

          if ((~v34 & 0x7F800000) != 0)
          {
            v36 = *(*(v9 + 56) + 4 * v32);
          }
        }
      }

      ++v31;
      v37 = swift_allocObject();
      sub_22C36EDDC(v37);
      v37[2].n128_u64[0] = sub_22C90A91C();
      v37[2].n128_u64[1] = sub_22C90A91C();
      v37[3].n128_u64[0] = sub_22C90A91C();
      v38 = sub_22C90A86C();
      v39 = sub_22C90A5DC();

      [v77 setObject:v38 forKeyedSubscript:v39];
    }

    while (v31 != 8);

    v12 = v78;
  }

  __break(1u);
LABEL_33:
  v42 = v15;
  if (v9)
  {
    for (j = 0; j != v9; ++j)
    {
      v44 = j[v69 + 32];
      v45 = sub_22C387490();
      sub_22C36EDDC(v45);
      v45[2].n128_u64[0] = sub_22C90A91C();
      sub_22C90A91C();
      sub_22C369A48();
      sub_22C3D3108();
      v46 = sub_22C90A5DC();
      v12 = v78;

      [v42 setObject:j forKeyedSubscript:v46];
    }
  }

  v47 = sub_22C387490();
  sub_22C36EDDC(v47);
  v48 = v12;
  v49 = *(v68 + 16);
  v47[2].n128_u64[0] = sub_22C90A91C();
  objc_allocWithZone(MEMORY[0x277CBFF48]);
  v50 = sub_22C5F2214(v47, 65568);
  if (v49)
  {
    v51 = 0;
    do
    {
      v52 = v51[v68 + 32];
      v53 = v49;
      v54 = v48;
      v55 = sub_22C387490();
      sub_22C36EDDC(v55);
      v55[2].n128_u64[0] = sub_22C90A91C();
      sub_22C90A91C();
      sub_22C369A48();
      sub_22C3D3108();
      v56 = sub_22C90A5DC();
      v48 = v54;
      v49 = v53;

      [v50 setObject:v51 forKeyedSubscript:v56];

      ++v51;
    }

    while (v53 != v51);
  }

  v57 = sub_22C387490();
  sub_22C36EDDC(v57);
  v58 = *(v67 + 16);
  v57[2].n128_u64[0] = sub_22C90A91C();
  v59 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v60 = sub_22C38664C();
  if (v58)
  {
    v61 = 0;
    v79 = v58;
    do
    {
      v62 = *(v67 + 32 + v61);
      v63 = v61 + 1;
      v64 = sub_22C387490();
      sub_22C36EDDC(v64);
      v64[2].n128_u64[0] = sub_22C90A91C();
      v65 = sub_22C90A91C();
      sub_22C3D3108();
      v66 = sub_22C90A5DC();

      [v60 setObject:v65 forKeyedSubscript:v66];

      v61 = v63;
    }

    while (v79 != v63);
  }
}

void sub_22C74D120(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
    v5 = swift_allocObject();
    v69 = xmmword_22C922280;
    *(v5 + 16) = xmmword_22C922280;
    *(v5 + 32) = sub_22C90A91C();
    sub_22C3D3108();
    *(v5 + 40) = sub_22C90ABEC();
    v6 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    v7 = sub_22C5F2214(v5, 65568);
    if (!v2)
    {
      v8 = v7;
      v9 = *(a1 + 16);
      v65 = v7;
      if (v9 == v3)
      {
        v59 = 0;
        v10 = 0;
        v11 = (a1 + 33);
        do
        {
          v12 = v3;
          v13 = *(v11 - 1);
          v14 = *v11;
          v11 += 2;
          v15 = v10 + 1;
          v16 = sub_22C382DC8();
          *(v16 + 16) = v69;
          *(v16 + 32) = sub_22C90A91C();
          *(v16 + 40) = sub_22C90A91C();
          v17 = sub_22C90A91C();
          v18 = sub_22C90A5DC();
          v19 = v65;

          [v65 setObject:v17 forKeyedSubscript:v18];

          v3 = v12;
          v20 = sub_22C382DC8();
          v18[4] = sub_22C74FFCC(v20, v21, v22, v23, v24, v25, v26, v27, v59, v62, v65, v14, v69);
          v18[5] = sub_22C90A91C();
          v28 = sub_22C90A91C();
          v29 = sub_22C90A5DC();

          [v19 setObject:v28 forKeyedSubscript:v29];

          v10 = v15;
        }

        while (v3 != v15);
      }

      else if (v3 < 1 || v9)
      {
        sub_22C90AF5C();
        MEMORY[0x2318B7850](0xD000000000000025, 0x800000022C934820);
        sub_22C36FBFC();
        v56 = sub_22C90B47C();
        MEMORY[0x2318B7850](v56);

        MEMORY[0x2318B7850](0xD000000000000011, 0x800000022C934850);
        sub_22C36FBFC();
        v57 = sub_22C90B47C();
        MEMORY[0x2318B7850](v57);

        sub_22C5F2300();
        sub_22C36FBE4();
        *v58 = 0;
        v58[1] = 0xE000000000000000;
        swift_willThrow();
      }

      else
      {
        v60 = 0;
        v31 = sub_22C807D84(0, v3);
        v32 = 0;
        v63 = v31;
        v67 = v31[2];
        v33 = v65;
        while (1)
        {
          if (v67 == v32)
          {

            return;
          }

          if (v32 >= *(v63 + 16))
          {
            break;
          }

          v34 = v32 + 1;
          v35 = *(v63 + 8 * v32 + 32);
          v36 = sub_22C382DC8();
          v6[4] = sub_22C74FFCC(v36, v37, v38, v39, v40, v41, v42, v43, v60, v63, v65, v67, v69);
          v6[5] = sub_22C90A91C();
          v44 = sub_22C90A91C();
          v45 = sub_22C90A5DC();

          [v33 setObject:v44 forKeyedSubscript:v45];

          v46 = sub_22C382DC8();
          v6[4] = sub_22C74FFCC(v46, v47, v48, v49, v50, v51, v52, v53, v61, v64, v66, v68, v70);
          v6[5] = sub_22C90A91C();
          v54 = sub_22C90A91C();
          v55 = sub_22C90A5DC();

          [v33 setObject:v54 forKeyedSubscript:v55];

          v32 = v34;
        }

        __break(1u);
      }
    }
  }

  else
  {
    sub_22C5F2300();
    sub_22C36FBE4();
    *v30 = 0xD000000000000011;
    v30[1] = 0x800000022C934870;
    swift_willThrow();
  }
}

unint64_t JointResolution.CandidateSignalType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 8;
  if (result < 8)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_22C74D59C@<X0>(uint64_t *a1@<X8>)
{
  result = JointResolution.CandidateSignalType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t JointResolution.CandidateIdentifier.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_22C36BA00();
}

uint64_t JointResolution.CandidateIdentifier.bundleId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_22C36BA00();
}

unint64_t JointResolution.CandidateIdentifier.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_22C90AF5C();

  v5 = sub_22C36BAFC();
  MEMORY[0x2318B7850](v5);
  sub_22C3883AC();
  v6 = sub_22C36FBFC();
  MEMORY[0x2318B7850](v6);
  MEMORY[0x2318B7850](41, 0xE100000000000000);
  return 0xD000000000000018;
}

uint64_t sub_22C74D6D0(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BF2F8, &unk_22C922540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void JointResolution.CandidateIdentifier.getSaltedLoggingIDData(loggingScope:)()
{
  sub_22C36BA7C();
  v1 = sub_22C902A9C();
  v2 = sub_22C369824(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v9 = v8 - v7;
  v10 = sub_22C90292C();
  v11 = sub_22C369824(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v16 = *v0;
  v17 = v0[1];
  v21 = v0[2];
  v22 = v0[3];

  MEMORY[0x2318B7850](58, 0xE100000000000000);
  MEMORY[0x2318B7850](v16, v17);
  v18 = *(v13 + 16);
  v19 = sub_22C36D384();
  v20(v19);
  (*(v4 + 104))(v9, *MEMORY[0x277D1D050], v1);
  sub_22C902A8C();
  (*(v4 + 8))(v9, v1);
  sub_22C9028AC();
  sub_22C36CC48();
}

void sub_22C74D8F0()
{
  qword_27D9BFB78 = 0;
  unk_27D9BFB80 = 0xE000000000000000;
  qword_27D9BFB88 = 0;
  unk_27D9BFB90 = 0xE000000000000000;
}

uint64_t static JointResolution.CandidateIdentifier.nilCandidate.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D9BA718 != -1)
  {
    swift_once();
  }

  v2 = unk_27D9BFB80;
  v3 = qword_27D9BFB88;
  v4 = unk_27D9BFB90;
  *a1 = qword_27D9BFB78;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t static JointResolution.CandidateIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_22C90B4FC(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      sub_22C36BA00();

      return sub_22C90B4FC();
    }
  }

  return result;
}

uint64_t sub_22C74DA28(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

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

uint64_t sub_22C74DAE8(char a1)
{
  if (a1)
  {
    return 0x6449656C646E7562;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_22C74DB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C74DA28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C74DB44(uint64_t a1)
{
  v2 = sub_22C74E244();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C74DB80(uint64_t a1)
{
  v2 = sub_22C74E244();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JointResolution.CandidateIdentifier.encode(to:)(void *a1)
{
  v4 = sub_22C3A5908(&qword_27D9BFB98, &qword_22C924748);
  v5 = sub_22C369824(v4);
  v17 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v16 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v16[1] = v1[3];
  v16[2] = v13;
  v14 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C74E244();
  sub_22C90B6CC();
  v19 = 0;
  sub_22C90B3CC();
  if (!v2)
  {
    v18 = 1;
    sub_22C90B3CC();
  }

  return (*(v17 + 8))(v10, v4);
}

uint64_t JointResolution.CandidateIdentifier.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_22C909FFC();
  sub_22C36BAFC();

  return sub_22C909FFC();
}

uint64_t JointResolution.CandidateIdentifier.hashValue.getter()
{
  v0 = sub_22C750098();
  sub_22C36ED3C(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_22C909FFC();
  sub_22C909FFC();
  return sub_22C90B66C();
}

uint64_t JointResolution.CandidateIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_22C3A5908(&qword_27D9BFBA8, &qword_22C924750);
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C74E244();
  sub_22C90B6BC();
  if (v2)
  {
    return sub_22C36FF94(a1);
  }

  v12 = sub_22C90B2DC();
  v14 = v13;
  v15 = sub_22C90B2DC();
  v17 = v16;
  v18 = *(v8 + 8);
  v22 = v15;
  v19 = sub_22C371510();
  v20(v19);
  *a2 = v12;
  a2[1] = v14;
  a2[2] = v22;
  a2[3] = v17;

  sub_22C36FF94(a1);
}

uint64_t sub_22C74DFF0()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  sub_22C90B62C();
  JointResolution.CandidateIdentifier.hash(into:)();
  return sub_22C90B66C();
}

uint64_t JointResolution.Candidate.candidateId.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t JointResolution.Candidate.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_22C90AF5C();

  strcpy(v9, "Candidate(id: ");

  MEMORY[0x2318B7850](v1, v2);

  sub_22C3883AC();

  v6 = sub_22C36BC58();
  MEMORY[0x2318B7850](v6);

  MEMORY[0x2318B7850](0x6C616E676973202CLL, 0xEB00000000203A73);
  sub_22C5F8D4C();
  v7 = sub_22C909EDC();
  MEMORY[0x2318B7850](v7);

  MEMORY[0x2318B7850](41, 0xE100000000000000);
  return v9[0];
}

uint64_t JointResolution.Candidate.combinedId.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v5 = v0[2];
  v6 = v0[3];

  MEMORY[0x2318B7850](14906, 0xE200000000000000);

  v3 = sub_22C36BAFC();
  MEMORY[0x2318B7850](v3);

  return v5;
}

__n128 JointResolution.Candidate.init(candidateId:signals:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  result = *a1;
  v4 = a1[1].n128_u64[0];
  v5 = a1[1].n128_u64[1];
  *a3 = *a1;
  a3[1].n128_u64[0] = v4;
  a3[1].n128_u64[1] = v5;
  a3[2].n128_u64[0] = a2;
  return result;
}

unint64_t sub_22C74E244()
{
  result = qword_27D9BFBA0;
  if (!qword_27D9BFBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFBA0);
  }

  return result;
}

uint64_t JointResolution.Candidate.init(id:bundleId:signals:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t JointResolution.Candidate.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];

  sub_22C36BAFC();
  sub_22C909FFC();

  sub_22C909FFC();
}

uint64_t JointResolution.Candidate.hashValue.getter()
{
  v0 = sub_22C750098();
  sub_22C36ED3C(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_22C909FFC();
  sub_22C909FFC();
  return sub_22C90B66C();
}

uint64_t sub_22C74E37C(uint64_t a1, uint64_t a2)
{
  if ((sub_22C9093AC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(_s14TypedCandidateVMa(0) + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = *(a1 + v6 + 16);
  v10 = *(a1 + v6 + 24);
  v11 = *(a1 + v6 + 32);
  sub_22C750084((a2 + v6));
  v14 = v14 && v12 == v13;
  if (v14 || (sub_22C90B4FC()) && (v9 == v2 ? (v15 = v10 == v3) : (v15 = 0), (v15 || (sub_22C750040()) && (v16 = sub_22C36BA00(), sub_22C749DA0(v16, v17), (v18)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C74E41C()
{
  sub_22C3704C4();
  sub_22C9093BC();
  sub_22C74FE20();
  sub_22C74F76C(v1, v2);
  sub_22C36BAFC();
  sub_22C909F8C();
  v3 = (v0 + *(_s14TypedCandidateVMa(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  sub_22C909FFC();
  sub_22C36BA00();

  return sub_22C909FFC();
}

uint64_t sub_22C74E4B4()
{
  sub_22C90B62C();
  sub_22C9093BC();
  sub_22C74FE20();
  v3 = sub_22C74F76C(v1, v2);
  sub_22C36ED3C(v3, v4, v3, v5, v6, v7, v8, v9, v24, v26);
  sub_22C909F8C();
  v10 = (v0 + *(_s14TypedCandidateVMa(0) + 20));
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  v15 = sub_22C909FFC();
  sub_22C36ED3C(v15, v16, v17, v18, v19, v20, v21, v22, v25, v27);
  sub_22C909FFC();
  return sub_22C90B66C();
}

uint64_t sub_22C74E560()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_22C90B62C();
  JointResolution.Candidate.hash(into:)();
  return sub_22C90B66C();
}

uint64_t sub_22C74E5C4(uint64_t a1, uint64_t a2)
{
  sub_22C90B62C();
  sub_22C9093BC();
  sub_22C74FE20();
  sub_22C74F76C(v4, v5);
  sub_22C909F8C();
  v6 = (v2 + *(a2 + 20));
  v8 = *v6;
  v9 = *(v6 + 2);
  v10 = *(v6 + 24);
  JointResolution.Candidate.hash(into:)();
  return sub_22C90B66C();
}

unint64_t sub_22C74E674(unint64_t result)
{
  if (result >= 0xD)
  {
    return 13;
  }

  return result;
}

uint64_t sub_22C74E684(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_22C74E69C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22C74E674(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_22C74E6EC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22C74C7C4(*a1);
  *a2 = result;
  return result;
}

uint64_t AssistantSchemaIdentifier.toCandidateIdentifier()@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C9099DC();
  *a1 = result;
  a1[1] = v3;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  return result;
}

uint64_t UIControlTool.toCandidateIdentifier()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22C9037FC();
  v4 = v3;
  result = sub_22C90381C();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = result;
  a1[3] = v6;
  return result;
}

uint64_t RetrievedTool.toCandidateIdentifier()()
{
  v0 = sub_22C9036EC();
  v1 = sub_22C369824(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  sub_22C90371C();
  RetrievedTool.Definition.toCandidateIdentifier()();
  v6 = *(v3 + 8);
  v7 = sub_22C36BC58();
  return v8(v7);
}

void RetrievedTool.Definition.toCandidateIdentifier()()
{
  sub_22C36BA7C();
  v69 = v0;
  v70 = v1;
  v2 = sub_22C90384C();
  v3 = sub_22C369824(v2);
  v65 = v4;
  v66 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v64 = v8 - v7;
  v9 = sub_22C9099FC();
  v10 = sub_22C369824(v9);
  v67 = v11;
  v68 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v16 = v15 - v14;
  v17 = sub_22C90977C();
  v18 = sub_22C369824(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v25 = v24 - v23;
  v26 = sub_22C9036EC();
  v27 = sub_22C369824(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22C369838();
  v34 = v33 - v32;
  v35 = sub_22C908EAC();
  v36 = sub_22C369824(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22C369838();
  v43 = v42 - v41;
  (*(v29 + 16))(v34, v69, v26);
  v44 = (*(v29 + 88))(v34, v26);
  if (v44 == *MEMORY[0x277D1ECE0])
  {
    goto LABEL_2;
  }

  if (v44 == *MEMORY[0x277D1ECE8])
  {
    v53 = sub_22C75000C();
    v54(v53);
    (*(v67 + 32))(v16, v34, v68);
    v47 = sub_22C9099DC();
    v49 = v55;
    v56 = *(v67 + 8);
    v57 = sub_22C377B94();
    v58(v57);
    v50 = 0;
    v52 = 0xE000000000000000;
    goto LABEL_11;
  }

  if (v44 == *MEMORY[0x277D1ECD8] || v44 == *MEMORY[0x277D1ECD0])
  {
LABEL_2:
    v45 = sub_22C75000C();
    v46(v45);
    (*(v38 + 32))(v43, v34, v35);
    v47 = sub_22C908E7C();
    v49 = v48;
    sub_22C908DDC();
    v50 = sub_22C9096FC();
    v52 = v51;
    (*(v20 + 8))(v25, v17);
    (*(v38 + 8))(v43, v35);
LABEL_11:
    *v70 = v47;
    v70[1] = v49;
    v70[2] = v50;
    v70[3] = v52;
    sub_22C36CC48();
    return;
  }

  if (v44 == *MEMORY[0x277D1ECF8])
  {
    v60 = sub_22C75000C();
    v61(v60);
    (*(v65 + 32))(v64, v34, v66);
    v47 = sub_22C9037FC();
    v49 = v62;
    v50 = sub_22C90381C();
    v52 = v63;
    (*(v65 + 8))(v64, v66);
    goto LABEL_11;
  }

  sub_22C90B4EC();
  __break(1u);
}

unint64_t sub_22C74ECF8()
{
  result = qword_2814345C0;
  if (!qword_2814345C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814345C0);
  }

  return result;
}

unint64_t sub_22C74ED80()
{
  result = qword_27D9BFBC0;
  if (!qword_27D9BFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFBC0);
  }

  return result;
}

unint64_t sub_22C74EDD8()
{
  result = qword_281434520[0];
  if (!qword_281434520[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281434520);
  }

  return result;
}

uint64_t _s19CandidateSignalTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s19CandidateSignalTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s9TupleRiskOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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