uint64_t sub_22C517FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0xE000000000000000;
  sub_22C591324();
  v6 = v5;
  v7 = *(v5 + 16);
  if (v7 >= *(v5 + 24) >> 1)
  {
    sub_22C591324();
    v6 = v27;
  }

  *(v6 + 16) = v7 + 1;
  *(v6 + 8 * v7 + 32) = v4;
  v8 = sub_22C90A2CC();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v10;
  v12 = *(v6 + 16);
  v13 = *(v6 + 24);

  if (v12 >= v13 >> 1)
  {
    sub_22C591324();
    v6 = v28;
  }

  *(v6 + 16) = v12 + 1;
  *(v6 + 8 * v12 + 32) = v11;

  v14 = swift_allocObject();
  *(v14 + 16) = 8250;
  *(v14 + 24) = 0xE200000000000000;
  v15 = *(v6 + 16);
  v16 = v15 + 1;
  if (v15 >= *(v6 + 24) >> 1)
  {
    sub_22C591324();
    v6 = v29;
  }

  *(v6 + 16) = v16;
  *(v6 + 8 * v15 + 32) = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = 3;
  *(v17 + 24) = 1;
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v17 + 32) = v18;
  v19 = v17 | 0xA000000000000000;
  v20 = *(v6 + 24);
  v21 = v15 + 2;

  if ((v15 + 2) > (v20 >> 1))
  {
    sub_22C591324();
    v6 = v30;
  }

  *(v6 + 16) = v21;
  *(v6 + 8 * v16 + 32) = v19;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0xE000000000000000;
  if ((v15 + 3) > *(v6 + 24) >> 1)
  {
    sub_22C591324();
    v6 = v31;
  }

  *(v6 + 16) = v15 + 3;
  *(v6 + 8 * v21 + 32) = v22;
  v23 = sub_22C3DB9B0(v6);

  v24 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v24 + 16) = v25;
  return v24 | 0x6000000000000000;
}

void sub_22C5182A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v23;
  a20 = v24;
  v272 = v25;
  v273 = v21;
  v269 = v26;
  v270 = v27;
  v267 = v28;
  v268 = v29;
  v31 = v30;
  v32 = sub_22C90077C();
  v33 = sub_22C36A7A4(v32, &a17);
  v264 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22C369838();
  sub_22C3698F8(v38 - v37);
  v39 = sub_22C908A8C();
  v40 = sub_22C36A7A4(v39, &a15);
  v262 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22C369838();
  sub_22C36D234(v45 - v44);
  v46 = sub_22C3A5908(&qword_27D9BC3B0, &unk_22C912AF0);
  sub_22C369914(v46);
  v48 = *(v47 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v49);
  sub_22C3698F8(&v240 - v50);
  v51 = sub_22C9095CC();
  v52 = sub_22C36A7A4(v51, &v276);
  v246 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  sub_22C369838();
  sub_22C3698F8(v57 - v56);
  v58 = sub_22C90919C();
  v59 = sub_22C36A7A4(v58, &v284);
  v255 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v63);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v64);
  sub_22C36BA64();
  sub_22C3698F8(v65);
  v66 = sub_22C9063DC();
  v67 = sub_22C36A7A4(v66, &a10);
  v258 = v68;
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v67);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v71);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v72);
  sub_22C36BA64();
  sub_22C3698F8(v73);
  v74 = sub_22C9091CC();
  v75 = sub_22C36A7A4(v74, &v278);
  v250 = v76;
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v75);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v79);
  sub_22C36BA64();
  sub_22C36D234(v80);
  v81 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v81);
  v83 = *(v82 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v84);
  v86 = &v240 - v85;
  v87 = sub_22C9093BC();
  v88 = sub_22C36A7A4(v87, &a12);
  v254 = v89;
  v91 = *(v90 + 64);
  MEMORY[0x28223BE20](v88);
  sub_22C369ABC();
  v94 = (v92 - v93);
  MEMORY[0x28223BE20](v95);
  sub_22C37B03C();
  MEMORY[0x28223BE20](v96);
  sub_22C36BA64();
  sub_22C3698F8(v97);
  v98 = sub_22C90952C();
  v99 = sub_22C369824(v98);
  v101 = v100;
  v103 = *(v102 + 64);
  MEMORY[0x28223BE20](v99);
  sub_22C369ABC();
  v106 = (v104 - v105);
  MEMORY[0x28223BE20](v107);
  sub_22C51E3BC();
  MEMORY[0x28223BE20](v108);
  v110 = &v240 - v109;
  v111 = v31;
  sub_22C9090AC();
  TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v20);
  v112 = v98;
  v113 = v101 + 8;
  v114 = *(v101 + 8);
  v114(v110, v112);
  if (qword_27D9BA668 != -1)
  {
    sub_22C51E270();
  }

  sub_22C37AA60(v112, qword_27D9E3EE0);
  v115 = sub_22C90950C();
  v116 = v112;
  v117 = v115;
  v271 = v116;
  (v114)(v20);
  if (v117)
  {
    v118 = v111;
    v119 = sub_22C90914C();
    sub_22C6053C8(v119, v86);

    v120 = v261;
    sub_22C36D0A8(v86, 1, v261);
    if (v121)
    {
      sub_22C36DD28(v86, &qword_27D9BB908, &qword_22C910960);
      sub_22C386758(&v281);
      sub_22C903F7C();
      v122 = v255;
      v123 = v253;
      v124 = v256;
      (*(v255 + 16))(v253, v118, v256);
      v125 = sub_22C9063CC();
      sub_22C90AADC();
      sub_22C383098();
      if (os_log_type_enabled(v125, v126))
      {
        sub_22C36FB44();
        v127 = sub_22C379928();
        v279 = v127;
        *v86 = 136315138;
        sub_22C90908C();
        sub_22C37E16C();
        (*(v122 + 8))(v123, v124);
        v128 = sub_22C372FA4();
        sub_22C36F9F4(v128, v129, v130);
        sub_22C38B194();

        *(v86 + 4) = v123;
        sub_22C51E320(&dword_22C366000, v131, v113, "Could not access AppEntity property of SearchAppEntity: %s");
        sub_22C36FF94(v127);
        sub_22C36D69C();
        sub_22C372FB0();
      }

      else
      {

        (*(v122 + 8))(v123, v124);
      }

      sub_22C36FB04(&a9);
      sub_22C3837F8();
      v194();
    }

    else
    {
      sub_22C3701F8(&v282);
      v135 = v257;
      v136(v257, v86, v120);
      v137 = v106[2];
      v137(v22, v135, v120);
      v138 = v106 + 11;
      v139 = v106[11];
      v140 = sub_22C372158();
      if (v139(v140) == *MEMORY[0x277D72A40])
      {
        v141 = v106[12];
        v142 = sub_22C372158();
        v143(v142);
        v144 = *v22;
        v145 = swift_projectBox();
        v146 = v250;
        v147 = *(v250 + 16);
        v148 = v252;
        v149 = v251;
        v147(v252, v145, v251);

        sub_22C370208(&v280);
        sub_22C903F7C();
        v150 = v249;
        v147(v249, v148, v149);
        v151 = sub_22C9063CC();
        v152 = sub_22C90AADC();
        if (os_log_type_enabled(v151, v152))
        {
          v153 = sub_22C36FB44();
          v273 = v153;
          v154 = v146;
          v155 = sub_22C370060();
          v279 = v155;
          *v153 = 136315138;
          sub_22C9091AC();
          sub_22C37E16C();
          v156 = *(v154 + 8);
          v156(v150);
          v157 = sub_22C372FA4();
          sub_22C36F9F4(v157, v158, v159);
          sub_22C38B194();

          v160 = v273;
          *(v273 + 4) = v150;
          _os_log_impl(&dword_22C366000, v151, v152, "❗️Deferred value is not supported: %s", v160, 0xCu);
          sub_22C36FF94(v155);
          sub_22C36D69C();
          sub_22C3699EC();

          sub_22C36FB04(&a9);
          sub_22C3837F8();
          v161();
          (v156)(v252, v149);
        }

        else
        {

          v222 = *(v146 + 8);
          v223 = sub_22C38A024();
          v222(v223);
          sub_22C36FB04(&a9);
          sub_22C3837F8();
          v224();
          (v222)(v148, v149);
        }

        (v106[1])(v257, v120);
        v195 = v272;
        *(v272 + 4) = 0;
        *v195 = 0u;
        v195[1] = 0u;
        goto LABEL_23;
      }

      v196 = v22;
      v197 = v106 + 1;
      v271 = v106[1];
      (v271)(v196, v120);
      v137(v94, v135, v120);
      v198 = sub_22C374C34();
      if (v139(v198) == *MEMORY[0x277D72A38])
      {
        v199 = v106[12];
        v200 = sub_22C374C34();
        v201(v200);
        v202 = *v94;
        v203 = swift_projectBox();
        v204 = v255;
        v205 = v243;
        v206 = v256;
        (*(v255 + 16))(v243, v203, v256);

        sub_22C5182A8(v205, v268 & 1, v267, v269, v270);
        (*(v204 + 8))(v205, v206);
        v207 = sub_22C374C34();
        v271(v207);
        goto LABEL_24;
      }

      v225 = sub_22C374C34();
      v273 = v106 + 1;
      v271(v225);
      sub_22C37A078(&v277);
      sub_22C903F7C();
      sub_22C386758(&v283);
      v227 = v244;
      v228 = v111;
      v229 = v256;
      (*(v226 + 16))(v244, v228, v256);
      v230 = sub_22C9063CC();
      sub_22C90AADC();
      sub_22C383098();
      if (os_log_type_enabled(v230, v231))
      {
        sub_22C36FB44();
        v232 = sub_22C379928();
        v279 = v232;
        *v138 = 136315138;
        sub_22C90908C();
        sub_22C37E16C();
        (v197[1])(v227, v229);
        v233 = sub_22C372FA4();
        sub_22C36F9F4(v233, v234, v235);
        sub_22C38B194();

        *(v138 + 4) = v227;
        sub_22C51E320(&dword_22C366000, v236, v139, "Got a non-entity AppEntity property of SearchAppEntity: %s");
        sub_22C36FF94(v232);
        sub_22C36D69C();
        sub_22C372FB0();

        sub_22C36FB04(&a9);
        sub_22C3837F8();
        v237();
        v238 = v257;
      }

      else
      {

        (v197[1])(v227, v229);
        sub_22C36FB04(&a9);
        sub_22C3837F8();
        v239();
        v238 = v135;
      }

      (v271)(v238, v120);
    }

    sub_22C36CCD8(2);
LABEL_23:
    *(v195 + 40) = 1;
    goto LABEL_24;
  }

  v259 = v114;
  v261 = v113;
  v132 = *(type metadata accessor for EntityValuePromptRenderer_v2_0(0) + 24);
  sub_22C9090AC();
  v133 = v260;
  sub_22C908B2C();
  sub_22C370208(&a13);
  MEMORY[0x2318B6010]();
  v134 = v266;
  sub_22C36FC2C();
  sub_22C908B1C();
  v242 = v110;
  sub_22C36FB04(&a16);
  v162(v94, v265);
  sub_22C36FB04(&a14);
  v163(v133, v263);
  sub_22C36D824();
  v164();
  v165 = sub_22C90947C();
  sub_22C51E3E4();
  sub_22C36C640(v166, v167, v168, v169);
  v170 = *(v165 - 8);
  v171 = v170[11];
  v172 = sub_22C371530();
  if (v173(v172) == *MEMORY[0x277D72B68])
  {
    v174 = v170[12];
    v175 = sub_22C371530();
    v176(v175);
    sub_22C37A078(&v275);
    v178 = v245;
    v165 = v247;
    (*(v177 + 32))(v245, v134, v247);
    v179 = v111;
    v180 = v111;
    v181 = v267;
    sub_22C47D7E8(v178, v180, v267, v182, v183, v184, v185, v186, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251);
    v188 = v187;
    v190 = v189;
    v191 = v170[13];
    v192 = sub_22C372280();
    v193(v192);
  }

  else
  {
    v179 = v111;
    v208 = v170[1];
    v209 = sub_22C371530();
    v210(v209);
    v181 = v267;
    sub_22C7F4FB4();
    v188 = v211;
    v190 = v212;
  }

  v213 = v273;
  v214 = v273[3];
  v215 = v273[4];
  sub_22C374168(v273, v214);

  sub_22C36D818(&v271);
  v241 = v179;
  sub_22C9090AC();
  v216 = v269;
  (*(v215 + 16))(&v274, v165, v181, v269, v188, v190, v214, v215);

  sub_22C36D824();
  v217();
  sub_22C386560();
  MEMORY[0x28223BE20](v218);
  sub_22C51E2D4();
  v219 = v241;
  *(v220 - 48) = v213;
  *(v220 - 40) = v219;
  *(v220 - 32) = v268 & 1;
  *(v220 - 24) = v181;
  *(v220 - 16) = v216;
  *(v220 - 8) = v270;
  v221 = sub_22C51E430();
  sub_22C512A28(v221, v272);

  sub_22C36DD28(&v279, &qword_27D9BAB08, &qword_22C91A110);
LABEL_24:
  sub_22C36CC48();
}

uint64_t sub_22C519298@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = a1[2];
  v33 = a1[3];
  v34 = a1[1];
  v31 = *a1;
  v32 = a1[4];
  v15 = a2[8];
  v16 = a2[9];
  sub_22C374168(a2 + 5, v15);
  (*(v16 + 8))(v35, a3, a4 & 1, a5, a6, a7, v15, v16);
  if (v36 == 1)
  {
    v17 = 0xF000000000000007;
    v19 = v33;
    v18 = v34;
    v20 = v14;
  }

  else
  {
    v22 = v35[3];
    v21 = v35[4];
    v24 = v35[1];
    v23 = v35[2];
    v17 = v35[0];

    sub_22C456CE4(v17, v24, v23, v22, v21, 0);
    v35[0] = MEMORY[0x277D84F90];

    sub_22C496A94();
    v26 = v25;

    v19 = v33;
    v18 = v34;
    v20 = v14;
    if ((v26 & 1) == 0)
    {
      v30 = v14;
      v27 = v32;
      sub_22C456C94(v34, v30);
      v28 = sub_22C519F18(v31, v17);

      goto LABEL_6;
    }
  }

  v27 = v32;
  sub_22C456C94(v18, v20);
  v28 = sub_22C51A900(v31, 0, 0xE000000000000000, 10536, 0xE200000000000000);
  result = sub_22C4546F8(v17);
LABEL_6:
  *a8 = v28;
  *(a8 + 8) = v18;
  *(a8 + 16) = v20;
  *(a8 + 24) = v19;
  *(a8 + 32) = v27;
  *(a8 + 40) = 0;
  return result;
}

void sub_22C519484(uint64_t a1@<X8>)
{
  v3 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  sub_22C369914(v3);
  v5 = *(v4 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  sub_22C36A83C();
  v9 = swift_allocObject();
  sub_22C9090DC();
  v10 = sub_22C90993C();
  sub_22C36D0A8(v8, 1, v10);
  if (v11)
  {
    sub_22C36DD28(v8, &qword_27D9BC390, &qword_22C912AC0);
    v12 = 0;
    v1 = 0xE000000000000000;
  }

  else
  {
    v12 = v8;
    sub_22C9098BC();
    sub_22C37E16C();
    sub_22C36BBA8(v10);
    (*(v13 + 8))(v8, v10);
  }

  *(v9 + 16) = v12;
  *(v9 + 24) = v1;
  sub_22C3716D4();
  v14 = swift_allocObject();
  *(v14 + 16) = 3;
  *(v14 + 24) = 1;
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  sub_22C369AEC();
  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  *(v14 + 32) = v15;
  sub_22C3716D4();
  v16 = swift_allocObject();
  *(v16 + 16) = 4;
  *(v16 + 24) = 1;
  sub_22C369AEC();
  v17 = swift_allocObject();
  *(v17 + 16) = v14 | 0xA000000000000000;
  *(v16 + 32) = v17;
  sub_22C3716D4();
  v18 = swift_allocObject();
  *(v18 + 16) = 2;
  *(v18 + 24) = 1;
  sub_22C369AEC();
  v19 = swift_allocObject();
  *(v19 + 16) = v16 | 0xA000000000000000;
  *(v18 + 32) = v19;
  *a1 = v18 | 0xA000000000000000;
  sub_22C37274C();
  *(a1 + 40) = 0;
}

void sub_22C519668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v21;
  a20 = v22;
  v113 = v20;
  v103 = v23;
  v108 = v24;
  v112 = v25;
  v27 = v26;
  sub_22C51E39C(v28);
  v29 = sub_22C90077C();
  v30 = sub_22C36A7A4(v29, &a12);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22C369838();
  v35 = sub_22C908A8C();
  v36 = sub_22C36A7A4(v35, &a11);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22C369838();
  sub_22C36D83C();
  v39 = sub_22C90952C();
  v40 = sub_22C36A7A4(v39, &a18);
  v106 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v44);
  sub_22C38822C();
  v45 = sub_22C3A5908(&qword_27D9BC3B0, &unk_22C912AF0);
  sub_22C369914(v45);
  v47 = *(v46 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v48);
  v50 = &v101 - v49;
  v51 = sub_22C9095CC();
  v52 = sub_22C369824(v51);
  v104 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  sub_22C369838();
  v58 = v57 - v56;
  v59 = *(type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0(0) + 24);
  v109 = v27;
  sub_22C9090AC();
  v60 = sub_22C908B2C();
  MEMORY[0x2318B6010](v60);
  sub_22C908B1C();
  v102 = v58;
  v61 = v104;
  v62 = sub_22C51E3D0();
  v63(v62);
  v64 = sub_22C51E408();
  v65(v64);
  v66 = *(v106 + 8);
  sub_22C37E2C4(&a18);
  v66();
  v67 = sub_22C90947C();
  sub_22C51E3E4();
  sub_22C36C640(v68, v69, v70, v71);
  v72 = *(v67 - 8);
  if ((*(v72 + 88))(v50, v67) == *MEMORY[0x277D72B68])
  {
    (*(v72 + 96))(v50, v67);
    v73 = *(v61 + 32);
    v101 = v51;
    v73(v102, v50, v51);
    v74 = v112;
    sub_22C47E38C();
    v76 = v75;
    v106 = v75;
    v105 = v77;
    v78 = v113;
    v79 = v113[3];
    v80 = v113[4];
    v81 = sub_22C37BD98();
    sub_22C374168(v81, v82);
    v83 = v107;
    sub_22C90959C();
    v84 = v74;
    v85 = v108;
    (*(v80 + 16))(v114, v83, v84, v108, v76, v105, v79, v80);
    (v66)(v83, v111);
    sub_22C51E3A8();
    MEMORY[0x28223BE20](v86);
    sub_22C51E2D4();
    v87 = v109;
    *(v88 - 48) = v78;
    *(v88 - 40) = v87;
    *(v88 - 32) = v112;
    *(v88 - 24) = v85;
    *(v88 - 16) = v103;
    v89 = sub_22C51E430();
    sub_22C512A28(v89, v110);

    sub_22C36DD28(v118, &qword_27D9BAB08, &qword_22C91A110);
    sub_22C36FB04(&a10);
    v90(v102, v101);
  }

  else
  {
    (*(v72 + 8))(v50, v67);
    v91 = v113[3];
    v92 = v113[4];
    sub_22C374168(v113, v91);
    v116 = v91;
    v117 = *(v92 + 8);
    sub_22C36D548(v115);
    sub_22C36BBA8(v91);
    (*(v93 + 16))();
    v94 = v116;
    v95 = v117;
    sub_22C374168(v115, v116);
    sub_22C386758(&a14);
    v96 = v109;
    sub_22C9090AC();
    (*(v95 + 24))(v114, v32, v112, v108, v94, v95);
    v97 = sub_22C36FC74();
    (v66)(v97);
    sub_22C51E3A8();
    MEMORY[0x28223BE20](v98);
    sub_22C369920();
    *(v99 - 16) = v96;
    v100 = sub_22C51E430();
    sub_22C54DBA0(v100, v110);
    sub_22C36DD28(v118, &qword_27D9BAB08, &qword_22C91A110);
    sub_22C4BF148(v115);
  }

  sub_22C36CC48();
}

uint64_t sub_22C519D3C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = a1[1];
  v13 = a1[2];
  v32 = a1[3];
  v30 = *a1;
  v31 = a1[4];
  v14 = a2[8];
  v15 = a2[9];
  sub_22C374168(a2 + 5, v14);
  (*(v15 + 8))(v33, a3, a4, a5, a6, v14, v15);
  if (v34 == 1)
  {
    v16 = 0xF000000000000007;
    v17 = v12;
    v18 = v13;
  }

  else
  {
    v20 = v33[3];
    v19 = v33[4];
    v22 = v33[1];
    v21 = v33[2];
    v16 = v33[0];

    sub_22C456CE4(v16, v22, v21, v20, v19, 0);
    v33[0] = MEMORY[0x277D84F90];

    sub_22C496A94();
    LOBYTE(v22) = v23;

    v17 = v12;
    v18 = v13;
    if ((v22 & 1) == 0)
    {
      v28 = v12;
      v29 = v13;
      v25 = v31;
      v24 = v32;
      sub_22C456C94(v28, v29);
      v26 = sub_22C519F18(v30, v16);

      goto LABEL_6;
    }
  }

  v25 = v31;
  v24 = v32;
  sub_22C456C94(v17, v18);
  v26 = sub_22C51A900(v30, 0, 0xE000000000000000, 10536, 0xE200000000000000);
  result = sub_22C4546F8(v16);
LABEL_6:
  *a7 = v26;
  *(a7 + 8) = v17;
  *(a7 + 16) = v18;
  *(a7 + 24) = v24;
  *(a7 + 32) = v25;
  *(a7 + 40) = 0;
  return result;
}

uint64_t sub_22C519F18(uint64_t a1, uint64_t a2)
{
  sub_22C36A83C();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0xE000000000000000;
  sub_22C374C14();
  sub_22C591324();
  v6 = v5;
  v7 = *(v5 + 16);
  v8 = *(v5 + 24) >> 1;
  v9 = v7 + 1;
  if (v8 <= v7)
  {
    sub_22C3726E0();
    sub_22C591324();
    v6 = v19;
    v8 = *(v19 + 24) >> 1;
  }

  *(v6 + 16) = v9;
  *(v6 + 8 * v7 + 32) = v4;
  v10 = v7 + 2;
  if (v8 < (v7 + 2))
  {
    sub_22C591324();
    v6 = v20;
  }

  *(v6 + 16) = v10;
  *(v6 + 8 * v9 + 32) = a1;
  sub_22C36A83C();
  v11 = swift_allocObject();
  *(v11 + 16) = 40;
  *(v11 + 24) = 0xE100000000000000;
  v12 = *(v6 + 24);
  v13 = v7 + 3;

  if ((v7 + 3) > (v12 >> 1))
  {
    sub_22C3726E0();
    sub_22C591324();
    v6 = v21;
  }

  *(v6 + 16) = v13;
  *(v6 + 8 * v10 + 32) = v11;
  v14 = v7 + 4;
  if ((v7 + 4) > *(v6 + 24) >> 1)
  {
    sub_22C591324();
    v6 = v22;
  }

  *(v6 + 16) = v14;
  *(v6 + 8 * v13 + 32) = a2;
  sub_22C36A83C();
  v15 = swift_allocObject();
  *(v15 + 16) = 41;
  *(v15 + 24) = 0xE100000000000000;
  v16 = *(v6 + 24);

  if ((v7 + 5) > (v16 >> 1))
  {
    sub_22C3726E0();
    sub_22C591324();
    v6 = v23;
  }

  *(v6 + 16) = v7 + 5;
  *(v6 + 8 * v14 + 32) = v15;
  sub_22C3DB9B0(v6);

  sub_22C369AEC();
  swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v17 = swift_allocObject();
  return sub_22C51E360(v17);
}

uint64_t sub_22C51A14C()
{
  sub_22C51E374();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = sub_22C372FA4();
  sub_22C374168(v3, v4);
  v7[3] = v1;
  v7[4] = *(v2 + 8);
  sub_22C36D548(v7);
  sub_22C36BBA8(v1);
  (*(v5 + 16))();
  sub_22C3E8FB4(v0 + 40, &v8, &qword_27D9BD8A8, &qword_22C919AA0);
  sub_22C3804EC();
  sub_22C4FC044();
  return sub_22C4BF340(v7);
}

void sub_22C51A210()
{
  sub_22C36BA7C();
  v75 = v3;
  v76 = v2;
  v5 = v4;
  v7 = v6;
  v74 = sub_22C90952C();
  v8 = sub_22C369824(v74);
  v72 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v71 = v13 - v12;
  v14 = sub_22C90941C();
  v15 = sub_22C369824(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369ABC();
  v22 = (v20 - v21);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v70 - v25;
  MEMORY[0x28223BE20](v24);
  sub_22C38822C();
  v27 = *(v17 + 16);
  v73 = v7;
  v27(v26, v7, v14);
  v28 = *(v17 + 88);
  v29 = sub_22C51E290();
  v31 = v30(v29);
  if (v31 != *MEMORY[0x277D72AB0])
  {
    v41 = v5;
    v42 = v75;
    if (v31 != *MEMORY[0x277D72AE8])
    {
      if (v31 == *MEMORY[0x277D72AD8])
      {
        v48 = *(v17 + 96);
        v49 = sub_22C51E290();
        v51 = v50(v49);
        v52 = *(*v26 + 16);
        MEMORY[0x28223BE20](v51);
        *(&v70 - 4) = v1;
        *(&v70 - 3) = v41;
        *(&v70 - 2) = v76;
        sub_22C3B31C4();
        v54 = sub_22C47F410(v53);
        v56 = v55;

        if (v56)
        {

          *v42 = v54;
          *(v42 + 8) = 0u;
          *(v42 + 24) = 0u;
          *(v42 + 40) = 1;
          goto LABEL_6;
        }

        v77[0] = v54;
        sub_22C51AA90(v77, v42);
        sub_22C50B2CC(v54, 0);
        *(v42 + 40) = 0;
        goto LABEL_3;
      }

      if (v31 == *MEMORY[0x277D72AB8])
      {
        v57 = *(v17 + 96);
        v58 = sub_22C51E290();
        v59(v58);
        v70 = *v26;
        v60 = swift_projectBox();
        v62 = v71;
        v61 = v72;
        (*(v72 + 16))(v71, v60, v74);
        sub_22C47E8FC();
        v63 = v1[4];
        sub_22C374168(v1, v1[3]);
        v64 = *(v63 + 16);
        v65 = sub_22C371510();
        v66(v65);

        (*(v61 + 8))(v62, v74);
        goto LABEL_3;
      }

      if (v31 != *MEMORY[0x277D72AE0])
      {
        v67 = v1[3];
        v68 = v1[4];
        sub_22C374168(v1, v67);
        v77[3] = v67;
        v77[4] = *(v68 + 8);
        sub_22C36D548(v77);
        sub_22C36BBA8(v67);
        (*(v69 + 16))();
        sub_22C3E8FB4((v1 + 5), &v78, &qword_27D9BD8A8, &qword_22C919AA0);
        sub_22C4FC314();
        sub_22C4BF340(v77);
        (*(v17 + 8))(v26, v14);
        goto LABEL_6;
      }
    }

    v43 = *(v17 + 96);
    v44 = sub_22C51E290();
    v45(v44);
    v46 = *v26;
    v47 = swift_projectBox();
    v27(v0, v47, v14);

    sub_22C51A210(v0, v41, v76);
    (*(v17 + 8))(v0, v14);
    goto LABEL_6;
  }

  v32 = *(v17 + 96);
  v33 = sub_22C51E290();
  v34(v33);
  v35 = *v26;
  v36 = swift_projectBox();
  v27(v22, v36, v14);
  v37 = sub_22C37A06C();
  v39 = sub_22C51A210(v37, v38, v76);
  MEMORY[0x28223BE20](v39);
  sub_22C369920();
  *(v40 - 16) = v1;
  sub_22C54DBA0(sub_22C51E0A4, v75);
  sub_22C36DD28(v77, &qword_27D9BAB08, &qword_22C91A110);
  (*(v17 + 8))(v22, v14);
LABEL_3:

LABEL_6:
  sub_22C36CC48();
}

uint64_t sub_22C51A77C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v9 = a1[4];
  sub_22C456C94(v5, v8);
  v10 = sub_22C51A900(v6, 0x5B7473696CLL, 0xE500000000000000, 93, 0xE100000000000000);
  if (v8)
  {
    sub_22C3E8FB4(a2 + 40, v19, &qword_27D9BD8A8, &qword_22C919AA0);
    v16 = v10;
    if (v20)
    {
      sub_22C374168(v19, v20);
      v17[0] = v5;
      v17[1] = v8;
      v17[2] = v7;
      v17[3] = v9;

      sub_22C533804(v17, v18);
      v12 = v18[0];
      v11 = v18[1];
      v14 = v18[2];
      v13 = v18[3];
      sub_22C36FF94(v19);
    }

    else
    {

      sub_22C36DD28(v19, &qword_27D9BD8A8, &qword_22C919AA0);
      v12 = 0;
      v11 = 0;
      v14 = 0;
      v13 = 0;
    }

    result = sub_22C456D48(v5, v8);
    v5 = v12;
    v7 = v14;
    v9 = v13;
    v10 = v16;
  }

  else
  {
    result = sub_22C456D48(v5, 0);
    v11 = 0;
  }

  *a3 = v10;
  a3[1] = v5;
  a3[2] = v11;
  a3[3] = v7;
  a3[4] = v9;
  return result;
}

uint64_t sub_22C51A900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22C36A83C();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  sub_22C374C14();
  sub_22C591324();
  v12 = v11;
  v13 = *(v11 + 16);
  v14 = *(v11 + 24) >> 1;
  v15 = v13 + 1;
  if (v14 <= v13)
  {
    sub_22C388CAC();
    sub_22C591324();
    v12 = v21;
    v14 = *(v21 + 24) >> 1;
  }

  *(v12 + 16) = v15;
  *(v12 + 8 * v13 + 32) = v10;
  v16 = v13 + 2;
  if (v14 < (v13 + 2))
  {
    sub_22C3726E0();
    sub_22C591324();
    v12 = v22;
  }

  *(v12 + 16) = v16;
  *(v12 + 8 * v15 + 32) = a1;
  sub_22C36A83C();
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  v18 = *(v12 + 24);

  if ((v13 + 3) > (v18 >> 1))
  {
    sub_22C591324();
    v12 = v23;
  }

  *(v12 + 16) = v13 + 3;
  *(v12 + 8 * v16 + 32) = v17;
  sub_22C3DB9B0(v12);
  sub_22C38B194();

  sub_22C369AEC();
  swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v19 = swift_allocObject();
  return sub_22C51E360(v19);
}

uint64_t sub_22C51AA90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = 0;
  v3 = 0;
  v4 = *a1;
  v5 = *(*a1 + 16);
  v6 = (*a1 + 32);
  v7 = *a1 + 24;
  v8 = MEMORY[0x277D84F90];
LABEL_2:
  v9 = v7 + 40 * v2;
  while (v5 != v2)
  {
    if (v2 >= *(v4 + 16))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    ++v2;
    v10 = (v9 + 40);
    v11 = *(v9 + 24);
    v9 += 40;
    if (v11)
    {
      v47 = *(v10 - 3);
      v48 = v7;
      v12 = *(v10 - 1);
      v13 = *v10;

      v49 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = *(v8 + 16);
        sub_22C591018();
        v8 = v17;
      }

      v14 = *(v8 + 16);
      if (v14 >= *(v8 + 24) >> 1)
      {
        sub_22C591018();
        v8 = v18;
      }

      *(v8 + 16) = v14 + 1;
      v15 = (v8 + 32 * v14);
      v7 = v48;
      v15[4] = v47;
      v15[5] = v11;
      v15[6] = v12;
      v15[7] = v13;
      v3 = v49;
      goto LABEL_2;
    }
  }

  v54 = v8;

  sub_22C51B3A0(&v54, sub_22C56C3F0, sub_22C51B528);

  v19 = v54;
  v20 = *(v54 + 16);
  if (v20)
  {
    v54 = 0x5F6E6F696E75;
    v55 = 0xE600000000000000;
    v53 = MEMORY[0x277D84F90];
    sub_22C3B5E2C();
    v50 = v19;
    v21 = (v19 + 40);
    do
    {
      v23 = *(v21 - 1);
      v22 = *v21;
      v25 = *(v53 + 16);
      v24 = *(v53 + 24);

      if (v25 >= v24 >> 1)
      {
        sub_22C3B5E2C();
      }

      *(v53 + 16) = v25 + 1;
      v26 = v53 + 16 * v25;
      *(v26 + 32) = v23;
      *(v26 + 40) = v22;
      v21 += 4;
      --v20;
    }

    while (v20);
    sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
    sub_22C3D32C8(&qword_28142F9F0, &qword_27D9BB5D0, &unk_22C9112A0);
    v27 = sub_22C90A04C();
    v29 = v28;

    MEMORY[0x2318B7850](v27, v29);

    sub_22C46BF90(v54, v55, v50, &v54);

    v30 = v55;
    v51 = v54;
    v32 = v56;
    v31 = v57;
  }

  else
  {

    v51 = 0;
    v30 = 0;
    v32 = 0;
    v31 = 0;
  }

  v33 = *(v4 + 16);
  v34 = MEMORY[0x277D84F90];
  if (v33)
  {
    v54 = MEMORY[0x277D84F90];
    sub_22C3B63D4();
    v34 = v54;
    v35 = *(v54 + 16);
    do
    {
      v37 = *v6;
      v6 += 5;
      v36 = v37;
      v54 = v34;
      v38 = *(v34 + 24);

      if (v35 >= v38 >> 1)
      {
        sub_22C3B63D4();
        v34 = v54;
      }

      *(v34 + 16) = v35 + 1;
      *(v34 + 8 * v35++ + 32) = v36;
      --v33;
    }

    while (v33);
  }

  v39 = sub_22C3DB9B0(v34);

  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_22C9114A0;
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v41 = swift_allocObject();
  *(v41 + 16) = v39;
  *(v40 + 32) = v41;
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  v43 = swift_allocObject();
  *(v43 + 16) = v40 | 0x8000000000000000;
  *(v42 + 32) = v43;
  v44 = sub_22C529D00(2128928, 0xE300000000000000, v42 | 0x8000000000000000);

  v45 = swift_allocObject();
  result = swift_allocObject();
  *(result + 16) = v44;
  *(v45 + 16) = result;
  *a2 = v45 | 0x6000000000000000;
  a2[1] = v51;
  a2[2] = v30;
  a2[3] = v32;
  a2[4] = v31;
  return result;
}

void sub_22C51AF44()
{
  sub_22C36BA7C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_22C90046C();
  v11 = sub_22C369824(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  sub_22C36D83C();
  v14 = sub_22C90931C();
  v15 = sub_22C369824(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v22 = v21 - v20;
  (*(v17 + 16))(v21 - v20, v7, v14);
  v23 = *(v17 + 88);
  v24 = sub_22C37A06C();
  v26 = v25(v24);
  if (v26 != *MEMORY[0x277D72988] && v26 != *MEMORY[0x277D72978] && v26 != *MEMORY[0x277D729A8] && v26 != *MEMORY[0x277D729C0])
  {
    if (v26 == *MEMORY[0x277D729B8] || v26 == *MEMORY[0x277D72990] || v26 == *MEMORY[0x277D72958])
    {
      goto LABEL_19;
    }

    if (v26 == *MEMORY[0x277D72980])
    {
      v35 = *(v17 + 96);
      v36 = sub_22C37A06C();
      v37(v36);
      v38 = sub_22C51E388();
      v39(v38, v22, v5);
      v40 = v0 + *(type metadata accessor for PrimitiveValueRenderer_v2_0(0) + 32);
      v41 = *(type metadata accessor for FullPlannerPreferences() + 88);
      sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
      sub_22C901EDC();
      sub_22C36A83C();
      v42 = swift_allocObject();
      v43 = sub_22C90036C();
      v45 = v44;
      (*(v3 + 8))(v1, v5);
      *(v42 + 16) = v43;
      *(v42 + 24) = v45;
      sub_22C3716D4();
      v46 = swift_allocObject();
      *(v46 + 16) = *v62;
      *(v46 + 24) = 0;
      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v47 = swift_allocObject();
      *(v47 + 16) = v42;
      *(v46 + 32) = v47;
      sub_22C3716D4();
      v48 = swift_allocObject();
      *(v48 + 16) = 3;
      *(v48 + 24) = 1;
      sub_22C369AEC();
      v49 = swift_allocObject();
      *(v49 + 16) = v46 | 0xA000000000000000;
      *(v48 + 32) = v49;
      *v62 = v48 | 0xA000000000000000;
      memset(&v62[8], 0, 32);
      v63 = 0;
      goto LABEL_21;
    }

    v50 = v26 == *MEMORY[0x277D72968] || v26 == *MEMORY[0x277D72940];
    v51 = v50 || v26 == *MEMORY[0x277D72950];
    v52 = v51 || v26 == *MEMORY[0x277D72948];
    v53 = v52 || v26 == *MEMORY[0x277D729D0];
    v54 = v53 || v26 == *MEMORY[0x277D729B0];
    v55 = v54 || v26 == *MEMORY[0x277D72998];
    v56 = v55 || v26 == *MEMORY[0x277D72970];
    v57 = v56 || v26 == *MEMORY[0x277D72960];
    if (v57 || v26 == *MEMORY[0x277D72938])
    {
LABEL_19:
      v32 = *(v17 + 8);
      v33 = sub_22C37A06C();
      v34(v33);
    }

    else if (v26 != *MEMORY[0x277D729A0])
    {
      sub_22C38129C();
      v59 = *(v17 + 8);
      v60 = sub_22C37A06C();
      v61(v60);
      goto LABEL_21;
    }
  }

  sub_22C38129C();
LABEL_21:
  *v9 = *v62;
  *(v9 + 16) = *&v62[16];
  *(v9 + 32) = *&v62[32];
  *(v9 + 40) = v63;
  sub_22C36CC48();
}

uint64_t sub_22C51B3A0(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = a2(v6);
  }

  v7 = *(v6 + 16);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = a3(v9);
  *a1 = v6;
  return result;
}

uint64_t sub_22C51B424(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C90B45C();
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
        sub_22C3A5908(&qword_27D9BAB18, &qword_22C91D700);
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_22C51BEA0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_22C51B61C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C51B528(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C90B45C();
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
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_22C51C3F0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_22C51B6F4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C51B61C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == v12[1])
        {
          break;
        }

        result = sub_22C90B4FC();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = v12[4];
        v14 = v12[5];
        v15 = v12[2];
        result = v12[3];
        *(v12 + 3) = *v12;
        v12[5] = v15;
        *v12 = result;
        v12[1] = v10;
        v12[2] = v14;
        v12 -= 3;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_22C51B6F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return result;
  }

  v46 = *a4;
  v4 = (*a4 + 32 * a3 - 32);
  v5 = result - a3;
LABEL_3:
  v43 = v4;
  v44 = a3;
  v6 = (v46 + 32 * a3);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  v42 = v5;
  while (2)
  {
    v50 = v5;
    v47 = v4[3];
    v11 = v8 == *v4 && v7 == v4[1];
    v12 = v11;
    v48 = v12;
    v13 = v9 >> 62;
    v49 = v4[2];
    v14 = v49 >> 62;
    if (v11 || (sub_22C90B4FC() & 1) != 0)
    {
      switch(v13)
      {
        case 1uLL:
          if (v14 != 1)
          {
            goto LABEL_28;
          }

          v15 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v16 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v17 = v49 & 0x3FFFFFFFFFFFFFFFLL;
          goto LABEL_22;
        case 2uLL:
          if (v14 != 2)
          {
            goto LABEL_28;
          }

          goto LABEL_18;
        case 3uLL:
          if (v49 >> 62 != 3)
          {
            goto LABEL_28;
          }

LABEL_18:
          v45 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v18 = *((v49 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          swift_retain_n();
          swift_retain_n();

          LOBYTE(v45) = sub_22C46E724(v45, v18);

          if ((v45 & 1) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        default:
          if (v14)
          {
            goto LABEL_28;
          }

          v15 = *(v9 + 16);
          v16 = *(v9 + 24);
          v17 = v49;
LABEL_22:
          v19 = v15 == *(v17 + 16) && v16 == *(v17 + 24);
          if (v19 || (sub_22C90B4FC() & 1) != 0)
          {
LABEL_27:
            result = sub_22C472E00(v47, v10);
            goto LABEL_39;
          }

LABEL_28:
          if (!v48)
          {
            break;
          }

          goto LABEL_30;
      }
    }

    if ((sub_22C90B4FC() & 1) == 0)
    {
      result = sub_22C90B4FC();
LABEL_39:
      v23 = v50;
      if ((result & 1) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_76;
    }

LABEL_30:
    switch(v13)
    {
      case 1:
        if (v14 != 1)
        {
          goto LABEL_54;
        }

        v30 = v9 & 0x3FFFFFFFFFFFFFFFLL;
        if (*((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) == *((v49 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) && *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) == *((v49 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
        {
          goto LABEL_86;
        }

        v32 = sub_22C90B4FC();
        swift_retain_n();

        swift_retain_n();

        if (v32)
        {
          goto LABEL_87;
        }

        v51 = v49;
        v52 = v9;
        sub_22C47285C(&v52, &v51, &v53);
        v22 = v53;
LABEL_67:
        if (v22 >> 62 != 1)
        {
          goto LABEL_80;
        }

        v37 = v22 & 0x3FFFFFFFFFFFFFFFLL;
        if (*(v30 + 16) != *(v37 + 16) || *(v30 + 24) != *(v37 + 24))
        {
          v34 = sub_22C90B4FC();

          goto LABEL_65;
        }

        goto LABEL_75;
      case 2:
        if (v14 != 2)
        {
          goto LABEL_54;
        }

        v24 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v25 = *((v49 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        swift_retain_n();
        swift_retain_n();

        v26 = sub_22C46E724(v24, v25);

        if (v26)
        {
          goto LABEL_85;
        }

        v51 = v49;
        v52 = v9;
        sub_22C47285C(&v52, &v51, &v53);
        v22 = v53;
LABEL_61:
        if (v22 >> 62 != 2)
        {
          goto LABEL_80;
        }

        goto LABEL_64;
      case 3:
        if (v49 >> 62 != 3)
        {
          goto LABEL_54;
        }

        v27 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v28 = *((v49 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        swift_retain_n();
        swift_retain_n();

        v29 = sub_22C46E724(v27, v28);

        if (v29)
        {
LABEL_85:

          goto LABEL_82;
        }

        v51 = v49;
        v52 = v9;
        sub_22C47285C(&v52, &v51, &v53);
        v22 = v53;
LABEL_63:
        if (v22 >> 62 != 3)
        {
          goto LABEL_80;
        }

LABEL_64:
        v35 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v36 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

        v34 = sub_22C46E724(v35, v36);

        goto LABEL_65;
      default:
        if (v14)
        {
LABEL_54:
          v30 = v9 & 0x3FFFFFFFFFFFFFFFLL;

          swift_retain_n();

          swift_retain_n();
          v51 = v49;
          v52 = v9;
          sub_22C47285C(&v52, &v51, &v53);
          v22 = v53;
          switch(v13)
          {
            case 1:
              goto LABEL_67;
            case 2:
              goto LABEL_61;
            case 3:
              goto LABEL_63;
            default:
              goto LABEL_55;
          }
        }

        if (*(v9 + 16) == *(v49 + 16) && *(v9 + 24) == *(v49 + 24))
        {
LABEL_86:

          goto LABEL_82;
        }

        v21 = sub_22C90B4FC();

        swift_retain_n();

        swift_retain_n();
        if ((v21 & 1) == 0)
        {
          v51 = v49;
          v52 = v9;
          sub_22C47285C(&v52, &v51, &v53);
          v22 = v53;
LABEL_55:
          if (v22 >> 62)
          {
LABEL_80:

            goto LABEL_81;
          }

          if (*(v9 + 16) == *(v22 + 16) && *(v9 + 24) == *(v22 + 24))
          {

LABEL_75:

            v23 = v50;
          }

          else
          {
            v34 = sub_22C90B4FC();

LABEL_65:

            v23 = v50;
            if ((v34 & 1) == 0)
            {
              goto LABEL_83;
            }
          }

LABEL_76:
          if (!v46)
          {
            __break(1u);
            return result;
          }

          v8 = v4[4];
          v7 = v4[5];
          v9 = v4[6];
          v10 = v4[7];
          v39 = *(v4 + 1);
          *(v4 + 2) = *v4;
          *(v4 + 3) = v39;
          *v4 = v8;
          v4[1] = v7;
          v4[2] = v9;
          v4[3] = v10;
          v4 -= 4;
          v40 = __CFADD__(v23, 1);
          v5 = v23 + 1;
          if (v40)
          {
            goto LABEL_83;
          }

          continue;
        }

LABEL_87:

LABEL_81:

LABEL_82:

LABEL_83:
        a3 = v44 + 1;
        v4 = v43 + 4;
        v5 = v42 - 1;
        if (v44 + 1 != a2)
        {
          goto LABEL_3;
        }

        return result;
    }
  }
}

void sub_22C51BEA0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 24 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_22C90B4FC();
        }

        v7 = v9 + 2;
        v17 = v10 + 24 * v9;
        v18 = 24 * v9;
        v19 = (v17 + 56);
        while (v7 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ sub_22C90B4FC()))
          {
            break;
          }

          ++v7;
          v19 += 3;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7 - 8;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = (v24 + v21);
              v27 = *v25;
              v28 = *(v25 + 2);
              v29 = *v26;
              *v25 = *(v26 - 1);
              *(v25 + 2) = v29;
              *(v26 - 1) = v27;
              *v26 = v28;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v30 = a3[1];
      if (v7 < v30)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v30)
          {
            v31 = a3[1];
          }

          else
          {
            v31 = v9 + a4;
          }

          if (v31 < v9)
          {
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
            return;
          }

          if (v7 != v31)
          {
            v32 = *a3;
            v33 = *a3 + 24 * v7 - 24;
            v94 = v9;
            v34 = v9 - v7;
            do
            {
              v35 = (v32 + 24 * v7);
              v36 = *v35;
              v37 = v35[1];
              v38 = v34;
              v39 = v33;
              do
              {
                v40 = v36 == *v39 && v37 == v39[1];
                if (v40 || (sub_22C90B4FC() & 1) == 0)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_125;
                }

                v37 = v39[4];
                v41 = v39[5];
                v42 = v39[2];
                v36 = v39[3];
                *(v39 + 3) = *v39;
                v39[5] = v42;
                *v39 = v36;
                v39[1] = v37;
                v39[2] = v41;
                v39 -= 3;
              }

              while (!__CFADD__(v38++, 1));
              ++v7;
              v33 += 24;
              --v34;
            }

            while (v7 != v31);
            v7 = v31;
            v9 = v94;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = v8[2];
        sub_22C590218();
        v8 = v89;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_22C590218();
        v8 = v90;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v7;
      v95 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v44)
      {
        v93 = v8 + 4;
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_70:
            if (v54)
            {
              goto LABEL_110;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_113;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_118;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v45 < 2)
          {
            goto LABEL_112;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_85:
          if (v69)
          {
            goto LABEL_115;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_117;
          }

          if (v76 < v68)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v48 - 1 >= v45)
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = v48;
          v83 = &v46[2 * v48];
          v84 = v83[1];
          sub_22C51D8AC((*a3 + 24 * *v80), (*a3 + 24 * *v83), *a3 + 24 * v84, v95);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v84 < v81)
          {
            goto LABEL_105;
          }

          v85 = v8;
          v86 = v8[2];
          if (v82 > v86)
          {
            goto LABEL_106;
          }

          *v80 = v81;
          v80[1] = v84;
          if (v82 >= v86)
          {
            goto LABEL_107;
          }

          v45 = v86 - 1;
          memmove(v83, v83 + 2, 16 * (v86 - 1 - v82));
          v85[2] = v86 - 1;
          v87 = v86 > 2;
          v8 = v85;
          v5 = 0;
          v46 = v93;
          if (!v87)
          {
            goto LABEL_99;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_108;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_109;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_111;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_114;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_119;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v97 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_22C51D774(&v97, *a1, a3);
LABEL_103:
}

void sub_22C51C3F0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_247:
    v182 = *a1;
    if (!*a1)
    {
      goto LABEL_288;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_249:
      v148 = (v8 + 16);
      v149 = *(v8 + 16);
      while (v149 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_285;
        }

        v150 = v8;
        v151 = (v8 + 16 * v149);
        v152 = *v151;
        v153 = &v148[2 * v149];
        v8 = *(v153 + 1);
        sub_22C51DA74((*a3 + 32 * *v151), (*a3 + 32 * *v153), (*a3 + 32 * v8), v182);
        if (v5)
        {
          break;
        }

        if (v8 < v152)
        {
          goto LABEL_273;
        }

        if (v149 - 2 >= *v148)
        {
          goto LABEL_274;
        }

        *v151 = v152;
        v151[1] = v8;
        v154 = *v148 - v149;
        if (*v148 < v149)
        {
          goto LABEL_275;
        }

        v149 = *v148 - 1;
        sub_22C56BFF0(v153 + 16, v154, v153);
        *v148 = v149;
        v8 = v150;
      }

LABEL_257:

      return;
    }

LABEL_282:
    v8 = sub_22C56BFD8(v8);
    goto LABEL_249;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    v158 = v7;
    if (v7 + 1 < v6)
    {
      v156 = v8;
      v11 = *a3 + 32 * v10;
      v12 = *v11;
      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      v15 = *a3 + 32 * v7;
      v162 = 32 * v7;
      v16 = *v15;
      v17 = *(v15 + 16);
      v18 = *(v15 + 24);
      v186 = v12;
      v187 = v14;
      v188 = v13;
      v183 = v16;
      v184 = v17;
      v185 = v18;
      static RootedBNFGrammar.< infix(_:_:)(&v186, &v183);
      v169 = v19;
      v8 = v15 + 48;
      v20 = v9 + 2;
      v168 = v6;
      while (1)
      {
        v21 = v20;
        if (v10 + 1 >= v6)
        {
          break;
        }

        v175 = *(v8 + 40);
        v172 = *(v8 + 8);
        v182 = *(v8 - 8);
        v22 = *(v8 + 16) == *(v8 - 16) && *(v8 + 24) == *(v8 - 8);
        v23 = v22;
        v178 = v20;
        v180 = *(v8 + 32);
        v24 = v180 >> 62;
        v25 = *v8;
        v26 = *v8 >> 62;
        if (v22 || (sub_22C90B4FC() & 1) != 0)
        {
          switch(v24)
          {
            case 1uLL:
              if (v26 != 1)
              {
                goto LABEL_30;
              }

              v27 = *((v180 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              v28 = *((v180 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
              v29 = *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              v30 = *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
              goto LABEL_24;
            case 2uLL:
              if (v26 != 2)
              {
                goto LABEL_30;
              }

              goto LABEL_20;
            case 3uLL:
              if (v26 <= 2)
              {
                goto LABEL_30;
              }

LABEL_20:
              v164 = *((v180 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              v167 = *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              swift_retain_n();
              swift_retain_n();

              LOBYTE(v164) = sub_22C46E724(v164, v167);

              if (v164)
              {
LABEL_29:
                v32 = sub_22C472E00(v172, v175);
                goto LABEL_41;
              }

LABEL_30:
              if (!v23)
              {
                break;
              }

              goto LABEL_32;
            default:
              if (!v26)
              {
                v27 = *(v180 + 16);
                v28 = *(v180 + 24);
                v29 = *(v25 + 16);
                v30 = *(v25 + 24);
LABEL_24:
                v31 = v27 == v29 && v28 == v30;
                if (v31 || (sub_22C90B4FC() & 1) != 0)
                {
                  goto LABEL_29;
                }
              }

              goto LABEL_30;
          }
        }

        if (sub_22C90B4FC())
        {
LABEL_32:
          v33 = v24;
          v34 = v24;
          v21 = v178;
          switch(v34)
          {
            case 1:
              v38 = v180 & 0x3FFFFFFFFFFFFFFFLL;
              if (v26 != 1)
              {
                goto LABEL_56;
              }

              if (*((v180 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) == *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) && *((v180 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) == *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
              {
                goto LABEL_78;
              }

              v47 = sub_22C90B4FC();
              swift_retain_n();

              swift_retain_n();

              if (v47)
              {
                goto LABEL_47;
              }

              *&v183 = v180;
              v189 = v25;
              sub_22C47285C(&v183, &v189, &v186);
              v42 = v186;
LABEL_66:
              if (v42 >> 62 != 1)
              {
                goto LABEL_75;
              }

              v49 = v42 & 0x3FFFFFFFFFFFFFFFLL;
              v50 = *(v38 + 16) == *(v49 + 16) && *(v38 + 24) == *(v49 + 24);
              v6 = v168;
              if (!v50)
              {
                v37 = sub_22C90B4FC();

                goto LABEL_77;
              }

              goto LABEL_85;
            case 2:
              v38 = v180 & 0x3FFFFFFFFFFFFFFFLL;
              if (v26 != 2)
              {
                goto LABEL_56;
              }

              v39 = *((v180 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              v40 = *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              swift_retain_n();
              swift_retain_n();

              v41 = sub_22C46E724(v39, v40);

              if (v41)
              {
                goto LABEL_47;
              }

              *&v183 = v180;
              v189 = v25;
              sub_22C47285C(&v183, &v189, &v186);
              v42 = v186;
LABEL_64:
              if (v42 >> 62 != 2)
              {
                goto LABEL_75;
              }

              goto LABEL_74;
            case 3:
              v38 = v180 & 0x3FFFFFFFFFFFFFFFLL;
              if (v26 <= 2)
              {
                goto LABEL_56;
              }

              v43 = *((v180 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              v44 = *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              swift_retain_n();
              swift_retain_n();

              v45 = sub_22C46E724(v43, v44);

              if (v45)
              {
LABEL_47:

                goto LABEL_79;
              }

              *&v183 = v180;
              v189 = v25;
              sub_22C47285C(&v183, &v189, &v186);
              v42 = v186;
LABEL_73:
              if (v42 >> 62 == 3)
              {
LABEL_74:
                v51 = *((v180 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                v52 = *((v42 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

                v37 = sub_22C46E724(v51, v52);

                v6 = v168;
                goto LABEL_77;
              }

LABEL_75:
              v6 = v168;
              goto LABEL_76;
            default:
              if (v26)
              {
                v38 = v180 & 0x3FFFFFFFFFFFFFFFLL;
LABEL_56:
                swift_retain_n();

                swift_retain_n();

                *&v183 = v180;
                v189 = v25;
                sub_22C47285C(&v183, &v189, &v186);
                v42 = v186;
                switch(v33)
                {
                  case 1:
                    goto LABEL_66;
                  case 2:
                    goto LABEL_64;
                  case 3:
                    goto LABEL_73;
                  default:
                    v6 = v168;
                    goto LABEL_58;
                }
              }

              if (*(v180 + 16) == *(v25 + 16) && *(v180 + 24) == *(v25 + 24))
              {
LABEL_78:

LABEL_79:
                v37 = 0;
                v6 = v168;
              }

              else
              {
                v36 = sub_22C90B4FC();

                swift_retain_n();

                swift_retain_n();
                v6 = v168;
                if (v36)
                {

                  v37 = 0;
                }

                else
                {
                  *&v183 = v180;
                  v189 = v25;
                  sub_22C47285C(&v183, &v189, &v186);
                  v42 = v186;
LABEL_58:
                  if (v42 >> 62)
                  {
LABEL_76:

                    v37 = 0;
                  }

                  else if (*(v180 + 16) == *(v42 + 16) && *(v180 + 24) == *(v42 + 24))
                  {

LABEL_85:
                    v37 = 1;
                  }

                  else
                  {
                    v37 = sub_22C90B4FC();
                  }

LABEL_77:
                }
              }

              break;
          }
        }

        else
        {
          v32 = sub_22C90B4FC();
LABEL_41:
          v37 = v32;
          v6 = v168;
          v21 = v178;
        }

        v8 += 32;
        ++v10;
        v20 = v21 + 1;
        if ((v169 & 1) != (v37 & 1))
        {
          goto LABEL_88;
        }
      }

      v10 = v6;
LABEL_88:
      if (v169)
      {
        if (v10 < v158)
        {
          goto LABEL_279;
        }

        if (v158 >= v10)
        {
          v8 = v156;
          v9 = v158;
        }

        else
        {
          if (v6 >= v21)
          {
            v53 = v21;
          }

          else
          {
            v53 = v6;
          }

          v54 = 32 * v53 - 16;
          v55 = v162 + 24;
          v56 = v10;
          v57 = v158;
          v8 = v156;
          v9 = v158;
          do
          {
            if (v57 != --v56)
            {
              v58 = *a3;
              if (!*a3)
              {
                goto LABEL_286;
              }

              v59 = (v58 + v55);
              v60 = (v58 + v54);
              v61 = *(v59 - 3);
              v62 = *(v59 - 1);
              v63 = *v59;
              v64 = *v60;
              *(v59 - 3) = *(v60 - 1);
              *(v59 - 1) = v64;
              *(v60 - 1) = v61;
              *v60 = v62;
              *(v60 + 1) = v63;
            }

            ++v57;
            v54 -= 32;
            v55 += 32;
          }

          while (v57 < v56);
        }
      }

      else
      {
        v8 = v156;
        v9 = v158;
      }
    }

    v65 = a3[1];
    if (v10 < v65)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_278;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_195:
    if (v10 < v9)
    {
      goto LABEL_277;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v145 = *(v8 + 16);
      sub_22C590218();
      v8 = v146;
    }

    v104 = *(v8 + 16);
    v105 = v104 + 1;
    if (v104 >= *(v8 + 24) >> 1)
    {
      sub_22C590218();
      v8 = v147;
    }

    *(v8 + 16) = v105;
    v106 = v8 + 32;
    v107 = (v8 + 32 + 16 * v104);
    *v107 = v9;
    v107[1] = v10;
    v182 = *a1;
    if (!*a1)
    {
      goto LABEL_287;
    }

    v174 = v10;
    if (v104)
    {
      while (1)
      {
        v108 = v105 - 1;
        v109 = (v106 + 16 * (v105 - 1));
        v110 = (v8 + 16 * v105);
        if (v105 >= 4)
        {
          break;
        }

        if (v105 == 3)
        {
          v111 = *(v8 + 32);
          v112 = *(v8 + 40);
          v121 = __OFSUB__(v112, v111);
          v113 = v112 - v111;
          v114 = v121;
LABEL_215:
          if (v114)
          {
            goto LABEL_264;
          }

          v126 = *v110;
          v125 = v110[1];
          v127 = __OFSUB__(v125, v126);
          v128 = v125 - v126;
          v129 = v127;
          if (v127)
          {
            goto LABEL_267;
          }

          v130 = v109[1];
          v131 = v130 - *v109;
          if (__OFSUB__(v130, *v109))
          {
            goto LABEL_270;
          }

          if (__OFADD__(v128, v131))
          {
            goto LABEL_272;
          }

          if (v128 + v131 >= v113)
          {
            if (v113 < v131)
            {
              v108 = v105 - 2;
            }

            goto LABEL_237;
          }

          goto LABEL_230;
        }

        if (v105 < 2)
        {
          goto LABEL_266;
        }

        v133 = *v110;
        v132 = v110[1];
        v121 = __OFSUB__(v132, v133);
        v128 = v132 - v133;
        v129 = v121;
LABEL_230:
        if (v129)
        {
          goto LABEL_269;
        }

        v135 = *v109;
        v134 = v109[1];
        v121 = __OFSUB__(v134, v135);
        v136 = v134 - v135;
        if (v121)
        {
          goto LABEL_271;
        }

        if (v136 < v128)
        {
          goto LABEL_244;
        }

LABEL_237:
        if (v108 - 1 >= v105)
        {
          __break(1u);
LABEL_259:
          __break(1u);
LABEL_260:
          __break(1u);
LABEL_261:
          __break(1u);
LABEL_262:
          __break(1u);
LABEL_263:
          __break(1u);
LABEL_264:
          __break(1u);
LABEL_265:
          __break(1u);
LABEL_266:
          __break(1u);
LABEL_267:
          __break(1u);
LABEL_268:
          __break(1u);
LABEL_269:
          __break(1u);
LABEL_270:
          __break(1u);
LABEL_271:
          __break(1u);
LABEL_272:
          __break(1u);
LABEL_273:
          __break(1u);
LABEL_274:
          __break(1u);
LABEL_275:
          __break(1u);
LABEL_276:
          __break(1u);
LABEL_277:
          __break(1u);
LABEL_278:
          __break(1u);
LABEL_279:
          __break(1u);
LABEL_280:
          __break(1u);
          goto LABEL_281;
        }

        if (!*a3)
        {
          goto LABEL_284;
        }

        v140 = (v106 + 16 * (v108 - 1));
        v141 = *v140;
        v142 = v106 + 16 * v108;
        v143 = *(v142 + 8);
        sub_22C51DA74((*a3 + 32 * *v140), (*a3 + 32 * *v142), (*a3 + 32 * v143), v182);
        if (v5)
        {
          goto LABEL_257;
        }

        if (v143 < v141)
        {
          goto LABEL_259;
        }

        v5 = v8;
        v8 = *(v8 + 16);
        if (v108 > v8)
        {
          goto LABEL_260;
        }

        *v140 = v141;
        v140[1] = v143;
        if (v108 >= v8)
        {
          goto LABEL_261;
        }

        v105 = v8 - 1;
        sub_22C56BFF0((v142 + 16), v8 - 1 - v108, (v106 + 16 * v108));
        *(v5 + 16) = v8 - 1;
        v144 = v8 > 2;
        v8 = v5;
        v5 = 0;
        if (!v144)
        {
          goto LABEL_244;
        }
      }

      v115 = v106 + 16 * v105;
      v116 = *(v115 - 64);
      v117 = *(v115 - 56);
      v121 = __OFSUB__(v117, v116);
      v118 = v117 - v116;
      if (v121)
      {
        goto LABEL_262;
      }

      v120 = *(v115 - 48);
      v119 = *(v115 - 40);
      v121 = __OFSUB__(v119, v120);
      v113 = v119 - v120;
      v114 = v121;
      if (v121)
      {
        goto LABEL_263;
      }

      v122 = v110[1];
      v123 = v122 - *v110;
      if (__OFSUB__(v122, *v110))
      {
        goto LABEL_265;
      }

      v121 = __OFADD__(v113, v123);
      v124 = v113 + v123;
      if (v121)
      {
        goto LABEL_268;
      }

      if (v124 >= v118)
      {
        v138 = *v109;
        v137 = v109[1];
        v121 = __OFSUB__(v137, v138);
        v139 = v137 - v138;
        if (v121)
        {
          goto LABEL_276;
        }

        if (v113 < v139)
        {
          v108 = v105 - 2;
        }

        goto LABEL_237;
      }

      goto LABEL_215;
    }

LABEL_244:
    v6 = a3[1];
    v7 = v174;
    if (v174 >= v6)
    {
      goto LABEL_247;
    }
  }

  v66 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_280;
  }

  if (v66 >= v65)
  {
    v66 = a3[1];
  }

  if (v66 < v9)
  {
LABEL_281:
    __break(1u);
    goto LABEL_282;
  }

  if (v10 == v66)
  {
    goto LABEL_195;
  }

  v157 = v8;
  v160 = v5;
  v161 = v66;
  v176 = *a3;
  v67 = (*a3 + 32 * v10 - 32);
  v68 = (v9 - v10);
  while (2)
  {
    v173 = v10;
    v69 = (v176 + 32 * v10);
    v70 = *v69;
    v71 = v69[1];
    v73 = v69[2];
    v72 = v69[3];
    v163 = v68;
    v165 = v67;
    v74 = v68;
LABEL_112:
    v182 = v74;
    v177 = v67[3];
    v75 = v67[1];
    v76 = v70 == *v67 && v71 == v67[1];
    v77 = v76;
    v179 = v77;
    v78 = v73 >> 62;
    v181 = v67[2];
    v79 = v181 >> 62;
    if (v76 || (sub_22C90B4FC() & 1) != 0)
    {
      switch(v78)
      {
        case 1uLL:
          if (v79 != 1)
          {
            goto LABEL_137;
          }

          v80 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v81 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v82 = v181 & 0x3FFFFFFFFFFFFFFFLL;
          goto LABEL_130;
        case 2uLL:
          if (v79 != 2)
          {
            goto LABEL_137;
          }

          goto LABEL_126;
        case 3uLL:
          if (v181 >> 62 != 3)
          {
            goto LABEL_137;
          }

LABEL_126:
          v166 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v170 = *((v181 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          swift_retain_n();
          swift_retain_n();

          LOBYTE(v166) = sub_22C46E724(v166, v170);

          if ((v166 & 1) == 0)
          {
            goto LABEL_137;
          }

          goto LABEL_135;
        default:
          if (v79)
          {
            goto LABEL_137;
          }

          v80 = *(v73 + 16);
          v81 = *(v73 + 24);
          v82 = v181;
LABEL_130:
          v83 = v80 == *(v82 + 16) && v81 == *(v82 + 24);
          if (v83 || (sub_22C90B4FC() & 1) != 0)
          {
LABEL_135:
            if ((sub_22C472E00(v177, v72) & 1) == 0)
            {
              goto LABEL_193;
            }

            goto LABEL_184;
          }

LABEL_137:
          if (!v179)
          {
            break;
          }

          goto LABEL_139;
      }
    }

    if ((sub_22C90B4FC() & 1) == 0)
    {
      if ((sub_22C90B4FC() & 1) == 0)
      {
        goto LABEL_193;
      }

      goto LABEL_184;
    }

LABEL_139:
    switch(v78)
    {
      case 1:
        v84 = v181;
        if (v79 != 1)
        {
          goto LABEL_162;
        }

        v94 = v73 & 0x3FFFFFFFFFFFFFFFLL;
        if (*((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) == *((v181 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) && *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) == *((v181 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
        {
          goto LABEL_189;
        }

        v96 = sub_22C90B4FC();
        swift_retain_n();

        swift_retain_n();

        if (v96)
        {
          goto LABEL_190;
        }

        *&v183 = v73;
        v189 = v181;
        sub_22C47285C(&v183, &v189, &v186);
        v87 = v186;
LABEL_175:
        if (v87 >> 62 != 1)
        {
          goto LABEL_187;
        }

        v101 = v87 & 0x3FFFFFFFFFFFFFFFLL;
        if (*(v94 + 16) != *(v101 + 16) || *(v94 + 24) != *(v101 + 24))
        {
          v98 = sub_22C90B4FC();

          goto LABEL_173;
        }

        goto LABEL_183;
      case 2:
        v84 = v181;
        if (v79 != 2)
        {
          goto LABEL_162;
        }

        v88 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v89 = *((v181 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        swift_retain_n();
        swift_retain_n();

        v90 = sub_22C46E724(v88, v89);

        if (v90)
        {
          goto LABEL_190;
        }

        *&v183 = v73;
        v189 = v181;
        sub_22C47285C(&v183, &v189, &v186);
        v87 = v186;
LABEL_169:
        if (v87 >> 62 != 2)
        {
          goto LABEL_187;
        }

        goto LABEL_172;
      case 3:
        v84 = v181;
        if (v181 >> 62 != 3)
        {
          goto LABEL_162;
        }

        v91 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v92 = *((v181 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        swift_retain_n();
        swift_retain_n();

        v93 = sub_22C46E724(v91, v92);

        if (v93)
        {
          goto LABEL_190;
        }

        *&v183 = v73;
        v189 = v181;
        sub_22C47285C(&v183, &v189, &v186);
        v87 = v186;
LABEL_171:
        if (v87 >> 62 != 3)
        {
          goto LABEL_187;
        }

LABEL_172:
        v99 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v100 = *((v87 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

        v98 = sub_22C46E724(v99, v100);

        goto LABEL_173;
      default:
        v84 = v181;
        if (v79)
        {
LABEL_162:
          v94 = v73 & 0x3FFFFFFFFFFFFFFFLL;

          swift_retain_n();

          swift_retain_n();
          *&v183 = v73;
          v189 = v84;
          sub_22C47285C(&v183, &v189, &v186);
          v87 = v186;
          switch(v78)
          {
            case 1:
              goto LABEL_175;
            case 2:
              goto LABEL_169;
            case 3:
              goto LABEL_171;
            default:
              goto LABEL_163;
          }
        }

        if (*(v73 + 16) == *(v181 + 16) && *(v73 + 24) == *(v181 + 24))
        {
LABEL_189:

LABEL_192:

LABEL_193:
          v10 = v173 + 1;
          v67 = v165 + 4;
          v68 = v163 - 1;
          if (v173 + 1 == v161)
          {
            v10 = v161;
            v5 = v160;
            v8 = v157;
            v9 = v158;
            goto LABEL_195;
          }

          continue;
        }

        v86 = sub_22C90B4FC();

        swift_retain_n();

        swift_retain_n();
        if (v86)
        {
LABEL_190:

          goto LABEL_191;
        }

        *&v183 = v73;
        v189 = v181;
        sub_22C47285C(&v183, &v189, &v186);
        v87 = v186;
LABEL_163:
        if (v87 >> 62)
        {
LABEL_187:

LABEL_191:

          goto LABEL_192;
        }

        if (*(v73 + 16) == *(v87 + 16) && *(v73 + 24) == *(v87 + 24))
        {

LABEL_183:
        }

        else
        {
          v98 = sub_22C90B4FC();

LABEL_173:

          if ((v98 & 1) == 0)
          {
            goto LABEL_193;
          }
        }

LABEL_184:
        if (v176)
        {
          v70 = v67[4];
          v71 = v67[5];
          v73 = v67[6];
          v72 = v67[7];
          v103 = *(v67 + 1);
          *(v67 + 2) = *v67;
          *(v67 + 3) = v103;
          *v67 = v70;
          v67[1] = v71;
          v67[2] = v73;
          v67[3] = v72;
          v67 -= 4;
          v74 = v182 + 1;
          if (v182 == -1)
          {
            goto LABEL_193;
          }

          goto LABEL_112;
        }

        __break(1u);
LABEL_284:
        __break(1u);
LABEL_285:
        __break(1u);
LABEL_286:
        __break(1u);
LABEL_287:
        __break(1u);
LABEL_288:
        __break(1u);
        return;
    }
  }
}

uint64_t sub_22C51D774(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_22C56BFD8(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_22C51D8AC((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_22C51D8AC(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_22C3D8768(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_22C90B4FC() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 24;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 24;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 24;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_17;
  }

  sub_22C3D8768(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_19:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    v17 = *(v10 - 3) == *(v6 - 3) && *(v10 - 2) == *(v6 - 2);
    if (!v17 && (sub_22C90B4FC() & 1) != 0)
    {
      v12 = v5 + 24 == v6;
      v6 -= 24;
      if (!v12)
      {
        v19 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v19;
        v6 = v15;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 24))
    {
      v18 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v18;
    }

    v10 -= 24;
  }

LABEL_36:
  v20 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v20])
  {
    memmove(v6, v4, 24 * v20);
  }

  return 1;
}

uint64_t sub_22C51DA74(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 32;
  v9 = (a3 - a2) / 32;
  if (v8 < v9)
  {
    sub_22C3D6F00(a1, (a2 - a1) / 32, a4);
    v10 = &v4[32 * v8];
    v62 = v10;
    v49 = v5;
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_61;
      }

      v12 = *v6;
      v13 = *(v6 + 1);
      v14 = *(v6 + 2);
      v15 = *(v6 + 3);
      v57 = v6;
      v16 = *v4;
      v17 = *(v4 + 1);
      v60 = v4;
      v18 = *(v4 + 2);
      v19 = *(v4 + 3);
      v20 = v12 == v16 && v13 == v17;
      v21 = v20;
      v55 = v21;
      if (!v20 && (sub_22C90B4FC() & 1) == 0)
      {
        goto LABEL_18;
      }

      v66 = v14;
      v65 = v18;
      v53 = v18;
      swift_retain_n();
      swift_retain_n();

      v22 = static BNFGrammarRuleExpression.== infix(_:_:)(&v66, &v65);

      if (v22)
      {
        v23 = sub_22C472E00(v19, v15);
        goto LABEL_22;
      }

      v18 = v53;
      if (!v55)
      {
LABEL_18:
        if ((sub_22C90B4FC() & 1) == 0)
        {
          v23 = sub_22C90B4FC();
LABEL_22:
          v10 = v62;
          if (v23)
          {
            goto LABEL_23;
          }

          goto LABEL_25;
        }
      }

      v66 = v14;
      v65 = v18;

      swift_retain_n();

      swift_retain_n();
      v10 = v62;
      if (static BNFGrammarRuleExpression.== infix(_:_:)(&v66, &v65))
      {
      }

      else
      {
        v66 = v14;
        v64 = v18;
        v65 = v14;
        sub_22C47285C(&v65, &v64, &v63);
        v26 = static BNFGrammarRuleExpression.== infix(_:_:)(&v66, &v63);

        if (v26)
        {
LABEL_23:
          v24 = v57;
          v6 = v57 + 32;
          v25 = v7 == v57;
          v4 = v60;
          goto LABEL_26;
        }
      }

LABEL_25:
      v24 = v60;
      v4 = v60 + 32;
      v25 = v7 == v60;
      v6 = v57;
LABEL_26:
      v5 = v49;
      if (!v25)
      {
        v27 = *(v24 + 1);
        *v7 = *v24;
        *(v7 + 1) = v27;
      }

      v7 += 32;
    }
  }

  sub_22C3D6F00(a2, (a3 - a2) / 32, a4);
  v10 = &v4[32 * v9];
  v59 = v7;
  v61 = v4;
LABEL_30:
  v58 = v6 - 32;
  v28 = v5;
  v48 = v6;
  while (v10 > v4 && v6 > v7)
  {
    v56 = v28;
    v30 = v10 - 32;
    v31 = *(v10 - 2);
    v32 = *(v6 - 2);
    v51 = *(v6 - 1);
    v52 = *(v10 - 1);
    v33 = *(v10 - 4) == *(v6 - 4) && *(v10 - 3) == *(v6 - 3);
    v34 = v33;
    v50 = v34;
    v54 = *(v6 - 2);
    if (!v33)
    {
      v35 = *(v6 - 2);
      v36 = sub_22C90B4FC();
      v32 = v35;
      if ((v36 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    v66 = v31;
    v65 = v32;
    swift_retain_n();
    swift_retain_n();

    v37 = static BNFGrammarRuleExpression.== infix(_:_:)(&v66, &v65);

    if (v37)
    {
      v38 = sub_22C472E00(v51, v52);
      v39 = v56;
      v5 = v56 - 32;
      v4 = v61;
      v6 = v48;
      if (v38)
      {
        goto LABEL_58;
      }

      goto LABEL_56;
    }

    v4 = v61;
    v6 = v48;
    v32 = v54;
    if (!v50)
    {
LABEL_48:
      v40 = v32;
      if ((sub_22C90B4FC() & 1) == 0)
      {
        v42 = sub_22C90B4FC();
        v39 = v56;
        v5 = v56 - 32;
        if (v42)
        {
          goto LABEL_58;
        }

        goto LABEL_56;
      }

      v32 = v40;
    }

    v66 = v31;
    v65 = v32;

    swift_retain_n();

    swift_retain_n();
    if (static BNFGrammarRuleExpression.== infix(_:_:)(&v66, &v65))
    {

      v41 = 0;
    }

    else
    {
      v66 = v31;
      v64 = v54;
      v65 = v31;
      sub_22C47285C(&v65, &v64, &v63);
      v41 = static BNFGrammarRuleExpression.== infix(_:_:)(&v66, &v63);

      v6 = v48;
    }

    v39 = v56;
    v5 = v56 - 32;
    if (v41)
    {
LABEL_58:
      v20 = v39 == v6;
      v6 = v58;
      v7 = v59;
      if (!v20)
      {
        v44 = *(v58 + 1);
        *v5 = *v58;
        *(v5 + 1) = v44;
      }

      goto LABEL_30;
    }

LABEL_56:
    v20 = v10 == v39;
    v28 = v5;
    v10 -= 32;
    v7 = v59;
    if (!v20)
    {
      v43 = *(v30 + 1);
      *v5 = *v30;
      *(v5 + 1) = v43;
      v28 = v5;
      v10 = v30;
    }
  }

LABEL_61:
  v45 = (v10 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[32 * v45])
  {
    memmove(v6, v4, 32 * v45);
  }

  return 1;
}

uint64_t sub_22C51E114(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22C36985C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C51E174(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_22C51E1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    sub_22C456CE4(a1, a2, a3, a4, a5, a6 & 1);
  }
}

uint64_t sub_22C51E1E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C51E270()
{

  return swift_once();
}

double sub_22C51E29C()
{
  v1 = *(v0 - 208);
  *(v1 + 32) = 0;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 40) = 1;
  return result;
}

double sub_22C51E2B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;
  *(v2 - 160) = 0;
  result = 0.0;
  *(v2 - 192) = 0u;
  *(v2 - 176) = 0u;
  *(v2 - 152) = -1;
  return result;
}

uint64_t sub_22C51E2E4()
{
  v2 = *(v1 - 416);
  result = v0;
  v4 = *(v1 - 344);
  return result;
}

uint64_t sub_22C51E308()
{
  result = v0 + *(v1 - 408);
  v3 = *(v1 - 320);
  return result;
}

void sub_22C51E320(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void *sub_22C51E33C()
{
  v3 = v0[3];
  *(v1 - 360) = v0[4];

  return sub_22C374168(v0, v3);
}

uint64_t sub_22C51E360(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(v2 + 16) = a1;
  return v2 | 0x6000000000000000;
}

uint64_t sub_22C51E388()
{
  v2 = *(v1 - 136);
  v3 = *(*(v1 - 144) + 32);
  return v0;
}

__n128 sub_22C51E3A8()
{
  v1 = *(v0 - 224);
  *(v0 - 144) = *(v0 - 240);
  *(v0 - 128) = v1;
  result = *(v0 - 215);
  *(v0 - 119) = result;
  return result;
}

uint64_t sub_22C51E3D0()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 312);
  return result;
}

uint64_t sub_22C51E408()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 320);
  return result;
}

uint64_t sub_22C51E41C(uint64_t result)
{
  *(result + 16) = 2;
  *(result + 24) = v1;
  return result;
}

void sub_22C51E43C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t type metadata accessor for StatementResultParser_v2_0()
{
  result = qword_27D9BD9D0;
  if (!qword_27D9BD9D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22C51E4D0()
{
  result = sub_22C908AEC();
  if (v1 <= 0x3F)
  {
    result = sub_22C51E55C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22C51E55C()
{
  result = qword_281432FB0;
  if (!qword_281432FB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281432FB0);
  }

  return result;
}

uint64_t sub_22C51E5B8(char a1, unint64_t a2)
{
  v4 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PromptTreeIdentifier(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = 1;
  }

  else if (a2 >> 61 == 2)
  {
    v13 = swift_projectBox();
    sub_22C525730(v13, v11);
    sub_22C486784();
    sub_22C485FE8();
    v12 = v14;
    sub_22C525788(v7, type metadata accessor for PromptTreeIdentifier.Label);
    sub_22C525788(v11, type metadata accessor for PromptTreeIdentifier);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_22C51E720()
{
  sub_22C369980();
  v1[27] = v2;
  v1[28] = v0;
  v1[25] = v3;
  v1[26] = v4;
  v5 = sub_22C906ECC();
  v1[29] = v5;
  sub_22C3699B8(v5);
  v1[30] = v6;
  v8 = *(v7 + 64);
  v1[31] = sub_22C3699D4();
  v9 = sub_22C90201C();
  v1[32] = v9;
  sub_22C3699B8(v9);
  v1[33] = v10;
  v12 = *(v11 + 64);
  v1[34] = sub_22C3699D4();
  v13 = sub_22C9028FC();
  v1[35] = v13;
  sub_22C3699B8(v13);
  v1[36] = v14;
  v16 = *(v15 + 64);
  v1[37] = sub_22C3699D4();
  v17 = sub_22C90281C();
  v1[38] = v17;
  sub_22C3699B8(v17);
  v1[39] = v18;
  v20 = *(v19 + 64);
  v1[40] = sub_22C3699D4();
  v21 = sub_22C902A4C();
  v1[41] = v21;
  sub_22C3699B8(v21);
  v1[42] = v22;
  v24 = *(v23 + 64);
  v1[43] = sub_22C3699D4();
  v25 = sub_22C902D0C();
  v1[44] = v25;
  sub_22C3699B8(v25);
  v1[45] = v26;
  v28 = *(v27 + 64);
  v1[46] = sub_22C3699D4();
  v29 = type metadata accessor for DirectionalTypedValue();
  v1[47] = v29;
  sub_22C369914(v29);
  v31 = *(v30 + 64);
  v1[48] = sub_22C3699D4();
  v32 = sub_22C3A5908(&qword_27D9BB760, &unk_22C90FE70);
  sub_22C369914(v32);
  v34 = *(v33 + 64);
  v1[49] = sub_22C3699D4();
  v35 = sub_22C90963C();
  v1[50] = v35;
  sub_22C3699B8(v35);
  v1[51] = v36;
  v38 = *(v37 + 64);
  v1[52] = sub_22C3699D4();
  v39 = sub_22C90952C();
  v1[53] = v39;
  sub_22C3699B8(v39);
  v1[54] = v40;
  v42 = *(v41 + 64);
  v1[55] = sub_22C3699D4();
  v43 = sub_22C9093BC();
  v1[56] = v43;
  sub_22C3699B8(v43);
  v1[57] = v44;
  v46 = *(v45 + 64);
  v1[58] = sub_22C3699D4();
  v47 = type metadata accessor for PromptTreeIdentifier(0);
  v1[59] = v47;
  sub_22C369914(v47);
  v49 = *(v48 + 64);
  v1[60] = sub_22C3699D4();
  v50 = sub_22C9020CC();
  v1[61] = v50;
  sub_22C3699B8(v50);
  v1[62] = v51;
  v53 = *(v52 + 64);
  v1[63] = sub_22C3699D4();
  v54 = sub_22C9063DC();
  v1[64] = v54;
  sub_22C3699B8(v54);
  v1[65] = v55;
  v57 = *(v56 + 64);
  v1[66] = sub_22C36D0D4();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v58 = sub_22C9026BC();
  v1[69] = v58;
  sub_22C3699B8(v58);
  v1[70] = v59;
  v61 = *(v60 + 64);
  v1[71] = sub_22C36D0D4();
  v1[72] = swift_task_alloc();
  v62 = sub_22C907DEC();
  v1[73] = v62;
  sub_22C3699B8(v62);
  v1[74] = v63;
  v65 = *(v64 + 64);
  v1[75] = sub_22C36D0D4();
  v1[76] = swift_task_alloc();
  v66 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v1[77] = v66;
  sub_22C369914(v66);
  v68 = *(v67 + 64);
  v1[78] = sub_22C3699D4();
  v69 = sub_22C90654C();
  v1[79] = v69;
  sub_22C3699B8(v69);
  v1[80] = v70;
  v72 = *(v71 + 64);
  v1[81] = sub_22C3699D4();
  v73 = sub_22C901FAC();
  v1[82] = v73;
  sub_22C3699B8(v73);
  v1[83] = v74;
  v76 = *(v75 + 64);
  v1[84] = sub_22C36D0D4();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v77 = sub_22C3A5908(&qword_27D9BD9E0, &qword_22C922F40);
  sub_22C369914(v77);
  v79 = *(v78 + 64);
  v1[88] = sub_22C36D0D4();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v80 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v80, v81, v82);
}

uint64_t sub_22C51ED20()
{
  v438 = v0;
  v1 = *(v0 + 720);
  v2 = *(v0 + 712);
  v3 = *(v0 + 696);
  v4 = *(v0 + 664);
  v5 = *(v0 + 656);
  v6 = *(v0 + 632);
  v7 = *(v0 + 200);
  v8 = *(v0 + 208);
  sub_22C906DFC();
  sub_22C5219C4(v1);
  v9 = *(v4 + 8);
  *(v0 + 728) = v9;
  *(v0 + 736) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v3, v5);
  v10 = sub_22C36BAFC();
  sub_22C379DF8(v10, v11, v12, v13);
  v14 = sub_22C370B74(v2, 1, v6);
  v15 = *(v0 + 712);
  if (v14 == 1)
  {
    sub_22C36DD28(*(v0 + 712), &qword_27D9BD9E0, &qword_22C922F40);
  }

  else
  {
    v16 = *(v0 + 648);
    v17 = *(v0 + 640);
    v18 = *(v0 + 632);
    v19 = v17[2];
    v20 = sub_22C36D7E0();
    v21(v20);
    v22 = v17[11];
    v23 = sub_22C36BAFC();
    v25 = v24(v23);
    v26 = *MEMORY[0x277D1DAD8];
    v27 = v17[1];
    v28 = sub_22C36BAFC();
    v27(v28);
    (v27)(v15, v18);
    if (v25 == v26)
    {
      v29 = *(v0 + 688);
      v30 = *(v0 + 200);
      sub_22C906DEC();
      v31 = 1;
      goto LABEL_6;
    }
  }

  v32 = *(v0 + 688);
  v33 = *(v0 + 200);
  sub_22C906DFC();
  v31 = 0;
LABEL_6:
  v34 = *(v0 + 704);
  v35 = *(v0 + 632);
  sub_22C379DF8(*(v0 + 720), v34, &qword_27D9BD9E0, &qword_22C922F40);
  v36 = sub_22C370B74(v34, 1, v35);
  v37 = *(v0 + 704);
  if (v36 == 1)
  {
    sub_22C36DD28(*(v0 + 704), &qword_27D9BD9E0, &qword_22C922F40);
LABEL_21:
    v102 = *(v0 + 528);
    v104 = *(v0 + 240);
    v103 = *(v0 + 248);
    v105 = *(v0 + 232);
    v106 = *(v0 + 200);
    sub_22C903F7C();
    v107 = *(v104 + 16);
    v108 = sub_22C36D39C();
    v109(v108);
    v110 = sub_22C9063CC();
    v111 = sub_22C90AADC();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = *(v0 + 696);
      v425 = v9;
      v113 = *(v0 + 656);
      v430 = *(v0 + 528);
      v413 = *(v0 + 520);
      v419 = *(v0 + 512);
      v115 = *(v0 + 240);
      v114 = *(v0 + 248);
      v401 = v114;
      v408 = *(v0 + 232);
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v436[0] = v117;
      *v116 = 136315138;
      sub_22C906DFC();
      sub_22C5117E8();
      v118 = sub_22C90B47C();
      v120 = v119;
      v121 = v113;
      v9 = v425;
      v425(v112, v121);
      (*(v115 + 8))(v401, v408);
      v122 = sub_22C36F9F4(v118, v120, v436);

      *(v116 + 4) = v122;
      sub_22C36BE40(&dword_22C366000, v123, v124, "Omitting StatementResult with statementId %s");
      sub_22C36FF94(v117);
      sub_22C3699EC();
      sub_22C3699EC();

      (*(v413 + 8))(v430, v419);
    }

    else
    {
      v125 = *(v0 + 528);
      v126 = *(v0 + 520);
      v127 = *(v0 + 512);
      v129 = *(v0 + 240);
      v128 = *(v0 + 248);
      v130 = *(v0 + 232);

      (*(v129 + 8))(v128, v130);
      (*(v126 + 8))(v125, v127);
    }

    v131 = *(v0 + 720);
    v9(*(v0 + 688), *(v0 + 656));
    sub_22C36DD28(v131, &qword_27D9BD9E0, &qword_22C922F40);
LABEL_25:
    v132 = *(v0 + 720);
    v133 = *(v0 + 712);
    v134 = *(v0 + 704);
    v135 = *(v0 + 696);
    v136 = *(v0 + 688);
    v137 = *(v0 + 680);
    v138 = *(v0 + 672);
    v139 = *(v0 + 648);
    v140 = *(v0 + 624);
    v141 = *(v0 + 608);
    sub_22C369EAC();
    v402 = *(v0 + 368);
    v409 = *(v0 + 344);
    v414 = *(v0 + 320);
    v420 = *(v0 + 296);
    v422 = *(v0 + 272);
    v426 = *(v0 + 248);

    sub_22C36D5E0();
    sub_22C386FF4();

    __asm { BRAA            X2, X16 }
  }

  v38 = *(v0 + 640);
  v39 = *(v0 + 632);
  v40 = sub_22C521FE4();
  (*(v38 + 8))(v37, v39);
  if ((v40 & 1) == 0)
  {
    goto LABEL_21;
  }

  v407 = v31;
  v424 = v9;
  v41 = *(v0 + 688);
  v42 = *(v0 + 664);
  v43 = *(v0 + 656);
  v44 = *(v0 + 624);
  v45 = *(v0 + 616);
  v46 = *(v0 + 352);
  v47 = *(v0 + 360);
  v417 = *(v0 + 216);
  v48 = swift_allocBox();
  v49 = *(v42 + 16);
  sub_22C37017C();
  v428 = v50;
  v50();
  *v44 = v48;
  v51 = *(v47 + 104);
  (v51)(v44, *MEMORY[0x277D1D798], v46);
  sub_22C36D264();
  swift_storeEnumTagMultiPayload();
  v52 = *v417;
  v53 = swift_task_alloc();
  *(v53 + 16) = v44;
  LOBYTE(v52) = sub_22C497280(0, v52, sub_22C5256F4, v53);

  if ((v52 & 1) == 0)
  {
    v144 = *(v0 + 688);
    v145 = *(v0 + 672);
    v146 = *(v0 + 656);
    v147 = *(v0 + 536);
    sub_22C903F7C();
    v148 = sub_22C36D7E0();
    (v428)(v148);
    v149 = sub_22C9063CC();
    v150 = sub_22C90AADC();
    v151 = os_log_type_enabled(v149, v150);
    v152 = *(v0 + 672);
    v153 = *(v0 + 656);
    v154 = *(v0 + 536);
    v155 = *(v0 + 520);
    v156 = *(v0 + 512);
    if (v151)
    {
      v431 = *(v0 + 512);
      v157 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v436[0] = v158;
      *v157 = 136315138;
      sub_22C5117E8();
      v159 = sub_22C90B47C();
      v421 = v154;
      v161 = v160;
      v162 = sub_22C379FC8();
      v163 = v424;
      (v424)(v162);
      v164 = sub_22C36F9F4(v159, v161, v436);

      *(v157 + 4) = v164;
      sub_22C36BE40(&dword_22C366000, v165, v166, "Could not find bound reference for statementId %s");
      sub_22C36FF94(v158);
      sub_22C3699EC();
      sub_22C3699EC();

      (*(v155 + 8))(v421, v431);
    }

    else
    {

      v167 = sub_22C379FC8();
      v163 = v424;
      (v424)(v167);
      (*(v155 + 8))(v154, v156);
    }

    v168 = *(v0 + 720);
    v169 = *(v0 + 624);
    v163(*(v0 + 688), *(v0 + 656));
    sub_22C36DD28(v168, &qword_27D9BD9E0, &qword_22C922F40);
    sub_22C36AB28();
    v171 = v169;
    goto LABEL_74;
  }

  v398 = v51;
  v54 = *(v0 + 624);
  v55 = *(v0 + 616);
  v56 = *(v0 + 608);
  v57 = *(v0 + 592);
  v58 = *(v0 + 584);
  v59 = *(v0 + 576);
  v60 = *(v0 + 560);
  v61 = *(v0 + 552);
  v62 = *(v0 + 200);
  v418 = swift_allocBox();
  *(v0 + 744) = v418;
  sub_22C525730(v54, v63);
  sub_22C906EBC();
  sub_22C907DAC();
  v64 = *(v57 + 8);
  v65 = sub_22C36FC08();
  v64(v65);
  v66 = *(v60 + 88);
  v67 = sub_22C36CA88();
  v400 = v68;
  LODWORD(v62) = (v68)(v67);
  LODWORD(v56) = *MEMORY[0x277D1CBF0];
  v393 = *(v60 + 8);
  *(v0 + 752) = v393;
  v69 = sub_22C36CA88();
  v70(v69);
  v71 = v56;
  if (v62 == v56)
  {
    v72 = *(v0 + 688);
    sub_22C4F290C(*(v0 + 208), *(v0 + 224));
    if ((v73 & 1) == 0)
    {
      v187 = *(v0 + 688);
      v188 = *(v0 + 680);
      v189 = *(v0 + 656);
      v190 = *(v0 + 544);
      sub_22C903F7C();
      v191 = sub_22C36D7E0();
      (v428)(v191);
      v192 = sub_22C9063CC();
      v193 = sub_22C90AADC();
      v194 = os_log_type_enabled(v192, v193);
      v195 = *(v0 + 680);
      v196 = *(v0 + 656);
      v197 = *(v0 + 520);
      v198 = *(v0 + 512);
      if (v194)
      {
        v433 = *(v0 + 544);
        v199 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        v436[0] = v200;
        *v199 = 136315138;
        sub_22C5117E8();
        v201 = sub_22C90B47C();
        v415 = v198;
        v198 = v202;
        v203 = sub_22C379FC8();
        (v424)(v203);
        v204 = v201;
        v205 = v424;
        v195 = sub_22C36F9F4(v204, v198, v436);

        *(v199 + 4) = v195;
        _os_log_impl(&dword_22C366000, v192, v193, "Skipping rendering statement result pertaining to statement ID %s", v199, 0xCu);
        sub_22C36FF94(v200);
        sub_22C3699EC();
        sub_22C3699EC();

        (*(v197 + 8))(v433, v415);
      }

      else
      {

        v234 = sub_22C379FC8();
        v205 = v424;
        (v424)(v234);
        v235 = *(v197 + 8);
        v236 = sub_22C36D39C();
        v238(v236, v237);
      }

      sub_22C3728C8();

      v239 = sub_22C36BAFC();
      v205(v239);
      sub_22C36DD28(v195, &qword_27D9BD9E0, &qword_22C922F40);
      sub_22C36AB28();
      v171 = v198;
      goto LABEL_74;
    }
  }

  v429 = v418 | 0x2000000000000000;
  v74 = *(v0 + 600);
  v75 = *(v0 + 584);
  v76 = *(v0 + 568);
  v77 = *(v0 + 552);
  v78 = *(v0 + 200);
  sub_22C906EBC();
  v79 = v74;
  sub_22C907DAC();
  (v64)(v74, v75);
  v80 = v400(v76, v77);
  if (v80 == v71)
  {
    sub_22C388FC0();
    v82 = *(v0 + 496);
    v81 = *(v0 + 504);
    v83 = *(v0 + 488);
    v85 = sub_22C37EBDC(v84);
    v86(v85);
    v87 = *(v82 + 32);
    v88 = sub_22C36BA00();
    v89(v88);
    sub_22C36A83C();
    v90 = swift_allocObject();
    *(v90 + 16) = 0x2873736563637573;
    *(v90 + 24) = 0xE800000000000000;
    sub_22C374C14();
    sub_22C591324();
    v92 = v91;
    v94 = *(v91 + 16);
    v93 = *(v91 + 24);
    v95 = v93 >> 1;
    v96 = v94 + 1;
    if (v93 >> 1 <= v94)
    {
      sub_22C525A80();
      v92 = v381;
      sub_22C375E88(v381);
    }

    *(v92 + 16) = v96;
    *(v92 + 8 * v94 + 32) = v90;
    v97 = v94 + 2;
    if (v95 < (v94 + 2))
    {
      sub_22C369AB0(v93);
      sub_22C591324();
      v92 = v382;
    }

    *(v92 + 16) = v97;
    *(v92 + 8 * v96 + 32) = v429;
    sub_22C36A83C();
    v98 = swift_allocObject();
    *(v98 + 16) = 41;
    *(v98 + 24) = 0xE100000000000000;
    v99 = *(v92 + 24);

    if ((v94 + 3) > (v99 >> 1))
    {
      sub_22C525A80();
      v92 = v383;
    }

    *(v92 + 16) = v94 + 3;
    *(v92 + 8 * v97 + 32) = v98;
    sub_22C3DB9B0(v92);
    sub_22C3869F0();

    sub_22C369AEC();
    v100 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    sub_22C369AEC();
    v101 = swift_allocObject();
    *(v101 + 16) = v97;
    *(v100 + 16) = v101;
    if (v407)
    {
      v395 = v100 | 0x6000000000000000;
      swift_retain_n();
    }

    else
    {
      v206 = *(v0 + 616);
      v208 = *(v0 + 472);
      v207 = *(v0 + 480);
      v209 = *(v0 + 352);
      sub_22C37F224();
      sub_22C36C640(v210, v211, v212, v213);
      type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
      swift_storeEnumTagMultiPayload();
      v214 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
      sub_22C48A0B0((v207 + *(v214 + 20)));
      swift_storeEnumTagMultiPayload();
      v215 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v216 = swift_allocBox();
      v218 = v217;
      sub_22C525A54();
      sub_22C525730(v207, v219);
      v220 = swift_allocBox();
      sub_22C486784();
      v266 = sub_22C525ABC(v220 | 0x2000000000000000, v100 | 0x6000000000000000);
      v267 = *(v0 + 480);
      v268 = *(v215 + 48);
      sub_22C373454();
      sub_22C525788(v269, v270);

      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v271 = swift_allocObject();
      *(v271 + 16) = v266;
      *(v218 + v268) = v271;
      v395 = v216 | 0x4000000000000000;
    }

    v272 = *(v0 + 504);
    v273 = *(v0 + 464);
    v274 = *(v0 + 440);
    v275 = *(v0 + 416);
    v404 = *(v0 + 432);
    v411 = *(v0 + 424);
    v276 = *(v0 + 400);
    v277 = *(v0 + 408);
    v278 = *(v0 + 392);
    v279 = *(v0 + 224);
    sub_22C90207C();
    v280 = (v279 + *(type metadata accessor for StatementResultParser_v2_0() + 20));
    v281 = v280[32];
    v282 = v280[33];
    v434 = v280;
    sub_22C374168(v280 + 29, v281);
    sub_22C90935C();
    (*(v277 + 104))(v275, *MEMORY[0x277D72E08], v276);
    v283 = sub_22C906D3C();
    sub_22C36C640(v278, 1, 1, v283);
    v284 = type metadata accessor for RenderingState();
    v285 = *(v284 + 48);
    v286 = *(v284 + 52);
    swift_allocObject();
    v287 = sub_22C480800(v278);
    (*(v282 + 24))(v436, v274, v275, v287, v281, v282);

    (*(v277 + 8))(v275, v276);
    (*(v404 + 8))(v274, v411);
    if (v437)
    {
      v412 = 0xF000000000000007;
    }

    else
    {
      sub_22C525B28();
      v412 = v273;
      sub_22C380500();
    }

    v289 = *(v0 + 456);
    v288 = *(v0 + 464);
    v290 = *(v0 + 448);
    v292 = *(v0 + 376);
    v291 = *(v0 + 384);
    v294 = *(v0 + 360);
    v293 = *(v0 + 368);
    v391 = *(v0 + 352);
    v387 = *(v0 + 216);
    v295 = v434[22];
    v296 = v434[23];
    ObjectType = swift_getObjectType();
    v297 = *(v289 + 16);
    v298 = sub_22C36D7E0();
    v386 = v299;
    (v299)(v298);
    sub_22C36D39C();
    swift_storeEnumTagMultiPayload();
    v300 = *(v387 + 32);
    v385 = *MEMORY[0x277D1D7F8];
    v398(v293);
    v388 = v300;
    (*(v296 + 8))(v436, v291, 0, v300, v293, ObjectType, v296);
    v384 = *(v294 + 8);
    v384(v293, v391);
    sub_22C38BA28();
    sub_22C525788(v291, v301);
    if (v437)
    {
      v406 = 0xF000000000000007;
    }

    else
    {
      v302 = v436[3];
      v303 = v436[4];
      v305 = v436[1];
      v304 = v436[2];
      v306 = v436[0];

      v406 = v306;
      sub_22C456CE4(v306, v305, v304, v302, v303, 0);
    }

    v307 = *(v0 + 464);
    v308 = *(v0 + 448);
    v310 = *(v0 + 376);
    v309 = *(v0 + 384);
    v311 = *(v0 + 368);
    v312 = *(v0 + 352);
    v314 = v434[20];
    v313 = v434[21];
    v315 = swift_getObjectType();
    sub_22C37017C();
    v386();
    sub_22C36CA88();
    swift_storeEnumTagMultiPayload();
    (v398)(v311, v385, v312);
    (*(v313 + 8))(v436, v309, 0, v388, v311, v315, v313);
    v384(v311, v312);
    sub_22C38BA28();
    sub_22C525788(v309, v316);
    if ((v437 & 1) == 0)
    {
      sub_22C525B28();
      sub_22C380500();
    }

    sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
    v317 = swift_allocObject();
    *(v317 + 16) = xmmword_22C90F800;
    sub_22C3A5908(&qword_27D9BC368, &unk_22C912AA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F870;
    *(inited + 32) = v395;
    *(inited + 40) = 0xF000000000000007;
    sub_22C454710(0xF000000000000007);
    v319 = 0;
    v320 = MEMORY[0x277D84F90];
    while (v319 != 2)
    {
      v321 = *(inited + 8 * v319++ + 32);
      if ((~v321 & 0xF000000000000007) != 0)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v324 = *(v320 + 16);
          sub_22C591324();
          v320 = v325;
        }

        v323 = *(v320 + 16);
        v322 = *(v320 + 24);
        if (v323 >= v322 >> 1)
        {
          sub_22C369AB0(v322);
          sub_22C591324();
          v320 = v326;
        }

        *(v320 + 16) = v323 + 1;
        *(v320 + 8 * v323 + 32) = v321;
      }
    }

    v390 = *(v0 + 688);
    v392 = *(v0 + 720);
    v389 = *(v0 + 656);
    v397 = *(v0 + 624);
    v328 = *(v0 + 496);
    v327 = *(v0 + 504);
    v329 = *(v0 + 488);
    v331 = *(v0 + 456);
    v330 = *(v0 + 464);
    v332 = *(v0 + 448);
    swift_setDeallocating();
    sub_22C590054();
    v333 = sub_22C47D738(8202, 0xE200000000000000, v320);

    *(v317 + 32) = 5;
    *(v317 + 40) = v333 | 2;

    sub_22C4546F8(0xF000000000000007);
    sub_22C4546F8(v406);
    sub_22C4546F8(0xF000000000000007);
    sub_22C4546F8(v412);

    v334 = sub_22C37B2B4();
    v335(v334);
    (*(v328 + 8))(v327, v329);
    v424(v390, v389);
    sub_22C36DD28(v392, &qword_27D9BD9E0, &qword_22C922F40);
    sub_22C36AB28();
    v171 = v397;
    goto LABEL_74;
  }

  if (v80 == *MEMORY[0x277D1CB98] || v80 == *MEMORY[0x277D1CBA8])
  {
    goto LABEL_37;
  }

  if (v80 == *MEMORY[0x277D1CBB0])
  {
    v221 = *(v0 + 696);
    v403 = *(v0 + 688);
    v410 = *(v0 + 720);
    v399 = *(v0 + 656);
    v416 = *(v0 + 624);
    sub_22C388FC0();
    v223 = *(v0 + 312);
    v222 = *(v0 + 320);
    v224 = *(v0 + 304);
    v396 = *(v0 + 200);
    v394 = *(v0 + 216);
    (*(v225 + 96))(v74);
    (*(v223 + 32))(v222, v74, v224);
    sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
    v226 = swift_initStackObject();
    *(v226 + 16) = xmmword_22C90F870;
    *(v226 + 32) = v429;
    sub_22C36A83C();
    v227 = swift_allocObject();
    *(v0 + 168) = 1886413102;
    *(v0 + 176) = 0xE400000000000000;

    *(v227 + 16) = sub_22C90A49C();
    *(v227 + 24) = v228;
    *(v226 + 40) = v227;
    sub_22C3DB9B0(v226);
    sub_22C3869F0();
    swift_setDeallocating();
    sub_22C58FFB0();
    sub_22C369AEC();
    v229 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    sub_22C369AEC();
    v230 = swift_allocObject();
    *(v230 + 16) = v227;
    *(v229 + 16) = v230;
    v231 = MEMORY[0x2318AFCE0]();
    v232 = swift_task_alloc();
    v232[1] = vextq_s8(v394, v394, 8uLL);
    sub_22C3B2EA4(sub_22C525710, v232, v231);

    sub_22C36A83C();
    v233 = swift_allocObject();
    *(v233 + 16) = 0xD000000000000011;
    *(v233 + 24) = 0x800000022C931D20;
    sub_22C906E1C();
    sub_22C52330C();

    v424(v221, v399);
    (*(v223 + 8))(v222, v224);
    v424(v403, v399);
    sub_22C36DD28(v410, &qword_27D9BD9E0, &qword_22C922F40);
    sub_22C36AB28();
    v171 = v416;
LABEL_74:
    sub_22C525788(v171, v170);
    goto LABEL_25;
  }

  if (v80 == *MEMORY[0x277D1CBB8] || v80 == *MEMORY[0x277D1CBD0])
  {
    goto LABEL_37;
  }

  if (v80 == *MEMORY[0x277D1CBD8])
  {
    v241 = *(v0 + 696);
    sub_22C388FC0();
    v242 = *(v0 + 336);
    v243 = *(v0 + 344);
    v244 = *(v0 + 328);
    v427 = *(v0 + 224);
    v423 = *(v0 + 216);
    v245 = *(v0 + 200);
    v247 = sub_22C37EBDC(v246);
    v248(v247);
    v249 = *(v242 + 32);
    sub_22C37017C();
    v250();
    sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
    v251 = swift_initStackObject();
    *(v251 + 16) = xmmword_22C90FB40;
    *(v251 + 32) = v429;
    sub_22C36A83C();
    v252 = swift_allocObject();
    *(v0 + 184) = 46;
    *(v0 + 192) = 0xE100000000000000;

    *(v252 + 16) = sub_22C90A49C();
    *(v252 + 24) = v253;
    *(v251 + 40) = v252;
    sub_22C36A83C();
    v254 = swift_allocObject();
    sub_22C902A0C();
    v255 = sub_22C90A2CC();
    v257 = v256;

    *(v254 + 16) = v255;
    *(v254 + 24) = v257;
    *(v251 + 48) = v254;
    v258 = sub_22C3DB9B0(v251);
    swift_setDeallocating();
    sub_22C58FFB0();
    sub_22C369AEC();
    v259 = swift_allocObject();
    *(v0 + 760) = v259;
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    sub_22C369AEC();
    v260 = swift_allocObject();
    *(v260 + 16) = v258;
    *(v259 + 16) = v260;
    *(v0 + 768) = sub_22C902A3C();
    sub_22C906E1C();
    LODWORD(v241) = *(type metadata accessor for StatementResultParser_v2_0() + 20);
    v261 = *(v423 + 32);
    v262 = swift_task_alloc();
    *(v0 + 776) = v262;
    *v262 = v0;
    v262[1] = sub_22C520ABC;
    v263 = *(v0 + 696);
    goto LABEL_54;
  }

  v336 = v80 == *MEMORY[0x277D1CBC0] || v80 == *MEMORY[0x277D1CBE0];
  if (v336 || v80 == *MEMORY[0x277D1CBA0])
  {
LABEL_37:
    v173 = *(v0 + 224);
    v174 = *(v0 + 560) + 8;
    v393(*(v0 + 568), *(v0 + 552));
    v175 = (v173 + *(type metadata accessor for StatementResultParser_v2_0() + 24));
    v176 = v175[4];
    sub_22C374168(v175, v175[3]);
    sub_22C37596C();
    v432 = v177 + *v177;
    v179 = *(v178 + 4);
    v180 = swift_task_alloc();
    *(v0 + 816) = v180;
    *v180 = v0;
    v181 = sub_22C52110C;
    goto LABEL_38;
  }

  if (v80 != *MEMORY[0x277D1CBC8])
  {
    if (v80 == *MEMORY[0x277D1CBE8])
    {
      sub_22C388FC0();
      v352 = *(v0 + 264);
      v351 = *(v0 + 272);
      v353 = *(v0 + 256);
      v355 = sub_22C37EBDC(v354);
      v356(v355);
      v357 = *(v352 + 32);
      v358 = sub_22C36D7E0();
      v359(v358);
      sub_22C5239CC();
      v361 = *(v0 + 720);
      v362 = *(v0 + 688);
      v363 = *(v0 + 656);
      v364 = *(v0 + 624);
      v366 = *(v0 + 264);
      v365 = *(v0 + 272);
      v367 = *(v0 + 256);
      if ((~v360 & 0xF000000000000007) != 0)
      {
        v378 = v360;
        sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
        v379 = swift_allocObject();
        *(v379 + 16) = xmmword_22C90F800;
        *(v379 + 32) = 5;
        *(v379 + 40) = v378 | 2;

        v380 = *(v366 + 8);
      }

      else
      {

        v368 = *(v366 + 8);
      }

      v369 = sub_22C36CA88();
      v370(v369);
      v371 = sub_22C36D39C();
      (v424)(v371);
      sub_22C36DD28(v361, &qword_27D9BD9E0, &qword_22C922F40);
      sub_22C36AB28();
      v171 = v364;
      goto LABEL_74;
    }

    v372 = *(v0 + 224);
    v373 = (v372 + *(type metadata accessor for StatementResultParser_v2_0() + 24));
    v374 = v373[4];
    sub_22C374168(v373, v373[3]);
    sub_22C37596C();
    v435 = v375 + *v375;
    v377 = *(v376 + 4);
    v180 = swift_task_alloc();
    *(v0 + 840) = v180;
    *v180 = v0;
    v181 = sub_22C5213A8;
LABEL_38:
    v180[1] = v181;
    v182 = *(v0 + 208);
    v183 = *(v0 + 216);
    v184 = *(v0 + 200);
    sub_22C386FF4();

    __asm { BRAA            X6, X16 }
  }

  v338 = *(v0 + 696);
  sub_22C388FC0();
  v340 = *(v0 + 288);
  v339 = *(v0 + 296);
  v341 = *(v0 + 280);
  v343 = *(v0 + 216);
  v342 = *(v0 + 224);
  v344 = *(v0 + 200);
  v346 = sub_22C37EBDC(v345);
  v347(v346);
  (*(v340 + 32))(v339, v79, v341);
  *(v0 + 792) = sub_22C9028EC();
  sub_22C906E1C();
  LODWORD(v338) = *(type metadata accessor for StatementResultParser_v2_0() + 20);
  v348 = *(v343 + 32);
  v349 = swift_task_alloc();
  *(v0 + 800) = v349;
  *v349 = v0;
  v349[1] = sub_22C520DF4;
  v350 = *(v0 + 696);
LABEL_54:
  sub_22C386FF4();

  return sub_22C52269C();
}

uint64_t sub_22C520ABC()
{
  sub_22C36D5EC();
  sub_22C369A3C();
  sub_22C369A30();
  *v2 = v1;
  v4 = v3[97];
  v5 = v3[96];
  v6 = v3[92];
  v7 = v3[91];
  v8 = v3[87];
  v9 = v3[82];
  v10 = *v0;
  sub_22C369970();
  *v11 = v10;
  *(v13 + 784) = v12;

  v14 = sub_22C36BAFC();
  v7(v14);
  v15 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_22C520C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C36CAD0();
  sub_22C37B668();
  v33 = v32[95];
  v34 = v32[93];
  v35 = v32[92];
  v36 = v32[91];
  v37 = v32[90];
  v38 = v32[86];
  v39 = v32[82];
  v56 = v32[78];
  v40 = v32[42];
  v41 = v32[43];
  v42 = v32[41];

  (*(v40 + 8))(v41, v42);
  v43 = sub_22C36D264();
  v36(v43);
  sub_22C36DD28(v37, &qword_27D9BD9E0, &qword_22C922F40);
  sub_22C36AB28();
  sub_22C525788(v56, v44);
  sub_22C377DCC(v32[98]);
  v45 = v32[78];
  v46 = v32[76];
  sub_22C369EAC();
  sub_22C37188C();

  sub_22C525A6C();
  sub_22C37F7CC();

  return v49(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v56, a30, a31, a32);
}

uint64_t sub_22C520DF4()
{
  sub_22C36D5EC();
  sub_22C369A3C();
  sub_22C369A30();
  *v2 = v1;
  v4 = v3[100];
  v5 = v3[99];
  v6 = v3[92];
  v7 = v3[91];
  v8 = v3[87];
  v9 = v3[82];
  v10 = *v0;
  sub_22C369970();
  *v11 = v10;
  *(v13 + 808) = v12;

  v14 = sub_22C36BAFC();
  v7(v14);
  v15 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_22C520F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C36CAD0();
  sub_22C37B668();
  v35 = v33[93];
  v36 = v33[92];
  v37 = v33[91];
  sub_22C3728C8();
  v39 = v33[36];
  v38 = v33[37];
  v40 = v33[35];

  v41 = *(v39 + 8);
  v42 = sub_22C36CA88();
  v43(v42);
  v44 = sub_22C36BAFC();
  v37(v44);
  sub_22C36DD28(v32, &qword_27D9BD9E0, &qword_22C922F40);
  sub_22C36AB28();
  sub_22C525788(v34, v45);
  sub_22C377DCC(v33[101]);
  v46 = v33[78];
  v47 = v33[76];
  sub_22C369EAC();
  sub_22C37188C();

  sub_22C525A6C();
  sub_22C37F7CC();

  return v50(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_22C52110C()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C369A30();
  *v6 = v5;
  v8 = *(v7 + 816);
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;
  *(v5 + 824) = v0;

  if (!v0)
  {
    *(v5 + 832) = v3;
  }

  sub_22C374448();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C521218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C36CAD0();
  sub_22C37B668();
  v35 = v33[93];
  v36 = v33[92];
  v37 = v33[91];
  sub_22C3728C8();

  v38 = sub_22C36BAFC();
  v37(v38);
  sub_22C36DD28(v32, &qword_27D9BD9E0, &qword_22C922F40);
  sub_22C36AB28();
  sub_22C525788(v34, v39);
  sub_22C377DCC(v33[104]);
  v40 = v33[78];
  v41 = v33[76];
  sub_22C369EAC();
  sub_22C37188C();

  sub_22C525A6C();
  sub_22C37F7CC();

  return v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_22C5213A8()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C369A30();
  *v6 = v5;
  v8 = *(v7 + 840);
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;
  *(v5 + 848) = v0;

  if (!v0)
  {
    *(v5 + 856) = v3;
  }

  sub_22C374448();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C5214B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C36CAD0();
  sub_22C37B668();
  v55 = v33[94];
  v35 = v33[93];
  v36 = v33[92];
  v37 = v33[91];
  sub_22C3728C8();
  v38 = v33[71];
  v39 = v33[70];
  v40 = v33[69];

  v41 = sub_22C36BAFC();
  v37(v41);
  sub_22C36DD28(v32, &qword_27D9BD9E0, &qword_22C922F40);
  sub_22C36AB28();
  sub_22C525788(v34, v42);
  v43 = sub_22C36CA88();
  v55(v43);
  sub_22C377DCC(v33[107]);
  v44 = v33[78];
  v45 = v33[76];
  sub_22C369EAC();
  sub_22C37188C();

  sub_22C525A6C();
  sub_22C37F7CC();

  return v48(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v55, a30, a31, a32);
}

uint64_t sub_22C521670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C36CAD0();
  sub_22C37B668();
  v55 = v33[94];
  v35 = v33[93];
  v36 = v33[92];
  v37 = v33[91];
  sub_22C3728C8();
  v38 = v33[71];
  v39 = v33[70];
  v40 = v33[69];

  v41 = sub_22C36BAFC();
  v37(v41);
  sub_22C36DD28(v32, &qword_27D9BD9E0, &qword_22C922F40);
  sub_22C36AB28();
  sub_22C525788(v34, v42);
  v43 = sub_22C36CA88();
  v55(v43);
  sub_22C377DCC(v33[106]);
  v44 = v33[78];
  v45 = v33[76];
  sub_22C369EAC();
  sub_22C37188C();

  sub_22C369A24();
  sub_22C37F7CC();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v55, a30, a31, a32);
}

uint64_t sub_22C521830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C36CAD0();
  sub_22C37B668();
  v35 = v33[93];
  v36 = v33[92];
  v37 = v33[91];
  sub_22C3728C8();

  v38 = sub_22C36BAFC();
  v37(v38);
  sub_22C36DD28(v32, &qword_27D9BD9E0, &qword_22C922F40);
  sub_22C36AB28();
  sub_22C525788(v34, v39);
  sub_22C377DCC(v33[103]);
  v40 = v33[78];
  v41 = v33[76];
  sub_22C369EAC();
  sub_22C37188C();

  sub_22C369A24();
  sub_22C37F7CC();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_22C5219C4@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = &v43 - v4;
  v5 = sub_22C9088CC();
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C908A0C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - v18;
  v20 = sub_22C3A5908(&qword_27D9BBAB0, &qword_22C910D10);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v43 - v25;
  sub_22C9087DC();
  v43 = v1;
  v49 = v1;
  sub_22C6B089C();

  sub_22C379DF8(v19, v17, &qword_27D9BA808, &qword_22C90C6E0);
  v27 = 1;
  if (sub_22C370B74(v17, 1, v8) != 1)
  {
    (*(v9 + 32))(v12, v17, v8);
    sub_22C9089EC();
    (*(v9 + 8))(v12, v8);
    v27 = 0;
  }

  sub_22C36DD28(v19, &qword_27D9BA808, &qword_22C90C6E0);
  v28 = sub_22C9089DC();
  sub_22C36C640(v26, v27, 1, v28);
  sub_22C379DF8(v26, v24, &qword_27D9BBAB0, &qword_22C910D10);
  if (sub_22C370B74(v24, 1, v28) == 1)
  {
    sub_22C36DD28(v26, &qword_27D9BBAB0, &qword_22C910D10);
    v29 = v24;
    v30 = &qword_27D9BBAB0;
    v31 = &qword_22C910D10;
  }

  else
  {
    v32 = *(v28 - 8);
    if ((*(v32 + 88))(v24, v28) != *MEMORY[0x277D1E6F8])
    {
      sub_22C36DD28(v26, &qword_27D9BBAB0, &qword_22C910D10);
      (*(v32 + 8))(v24, v28);
      goto LABEL_10;
    }

    (*(v32 + 96))(v24, v28);
    v34 = v44;
    v33 = v45;
    v35 = v46;
    (*(v45 + 32))(v44, v24, v46);
    v36 = sub_22C90887C();
    MEMORY[0x28223BE20](v36);
    *(&v43 - 2) = v43;
    v37 = v47;
    sub_22C6B0590();

    v38 = sub_22C9070DC();
    if (sub_22C370B74(v37, 1, v38) != 1)
    {
      v40 = v48;
      sub_22C90702C();
      (*(v33 + 8))(v34, v35);
      sub_22C36DD28(v26, &qword_27D9BBAB0, &qword_22C910D10);
      (*(*(v38 - 8) + 8))(v37, v38);
      v39 = 0;
      goto LABEL_11;
    }

    (*(v33 + 8))(v34, v35);
    sub_22C36DD28(v26, &qword_27D9BBAB0, &qword_22C910D10);
    v30 = &qword_27D9BAA18;
    v31 = &qword_22C911C40;
    v29 = v37;
  }

  sub_22C36DD28(v29, v30, v31);
LABEL_10:
  v39 = 1;
  v40 = v48;
LABEL_11:
  v41 = sub_22C90654C();
  return sub_22C36C640(v40, v39, 1, v41);
}

uint64_t sub_22C521FE4()
{
  v1 = v0;
  v2 = sub_22C90654C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D1DAA8] || v7 == *MEMORY[0x277D1D9F8] || v7 == *MEMORY[0x277D1DAC0] || v7 == *MEMORY[0x277D1DAA0] || v7 == *MEMORY[0x277D1DA98] || v7 == *MEMORY[0x277D1DA50] || v7 == *MEMORY[0x277D1DA78])
  {
    goto LABEL_21;
  }

  if (v7 == *MEMORY[0x277D1DA30] || v7 == *MEMORY[0x277D1DA08] || v7 == *MEMORY[0x277D1DA10])
  {
    goto LABEL_30;
  }

  if (v7 == *MEMORY[0x277D1DA70] || v7 == *MEMORY[0x277D1DA88] || v7 == *MEMORY[0x277D1DAD8] || v7 == *MEMORY[0x277D1DAD0] || v7 == *MEMORY[0x277D1DA48])
  {
    goto LABEL_21;
  }

  if (v7 == *MEMORY[0x277D1DAE8] || v7 == *MEMORY[0x277D1D9F0])
  {
    goto LABEL_30;
  }

  if (v7 == *MEMORY[0x277D1DA90])
  {
LABEL_21:
    v14 = 1;
LABEL_31:
    (*(v3 + 8))(v6, v2);
    return v14;
  }

  if (v7 == *MEMORY[0x277D1DAC8] || v7 == *MEMORY[0x277D1DAB0])
  {
    goto LABEL_30;
  }

  if (v7 == *MEMORY[0x277D1DA80] || v7 == *MEMORY[0x277D1DAE0] || v7 == *MEMORY[0x277D1DAB8])
  {
    goto LABEL_21;
  }

  if (v7 == *MEMORY[0x277D1DA18])
  {
LABEL_30:
    v14 = 0;
    goto LABEL_31;
  }

  if (v7 == *MEMORY[0x277D1DA00] || v7 == *MEMORY[0x277D1DA58] || v7 == *MEMORY[0x277D1DA28])
  {
    goto LABEL_21;
  }

  if (v7 == *MEMORY[0x277D1DA40])
  {
    return 1;
  }

  if (v7 == *MEMORY[0x277D1DA20])
  {
    return 0;
  }

  v28 = v7 == *MEMORY[0x277D1DA38] || v7 == *MEMORY[0x277D1DAF0];
  if (v28 || v7 == *MEMORY[0x277D1DA68])
  {
    return 1;
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

void sub_22C52233C()
{
  sub_22C36BA7C();
  v2 = v1;
  v44 = v4;
  v45 = v3;
  v46 = v5;
  sub_22C369A48();
  v6 = sub_22C9093BC();
  v7 = sub_22C369824(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v14 = v13 - v12;
  v15 = type metadata accessor for PromptTreeIdentifier(0);
  v16 = sub_22C36985C(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v21 = v20 - v19;
  v22 = sub_22C902D0C();
  sub_22C37F224();
  sub_22C36C640(v23, v24, v25, v22);
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  swift_storeEnumTagMultiPayload();
  v26 = sub_22C901FAC();
  v27 = swift_allocBox();
  (*(*(v26 - 8) + 16))(v28, v2, v26);
  v29 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
  *(v21 + v29) = v27;
  (*(*(v22 - 8) + 104))(v21 + v29, *MEMORY[0x277D1D798], v22);
  sub_22C36FC08();
  swift_storeEnumTagMultiPayload();
  (*(v9 + 16))(v14, v0, v6);
  LODWORD(v26) = (*(v9 + 88))(v14, v6);
  LODWORD(v27) = *MEMORY[0x277D729E0];
  (*(v9 + 8))(v14, v6);
  if (v26 == v27)
  {
    sub_22C524B20();
    v31 = v30;
    v32 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
    swift_allocBox();
    v34 = v33;
    sub_22C525A54();
    sub_22C525730(v21, v35);
    type metadata accessor for PromptTreeIdentifier.Label(0);
    swift_allocBox();
    sub_22C525AD8();
    v36 = v15 | 0x2000000000000000;
    if (v31)
    {
      v37 = sub_22C524EE8(v36, v46);
    }

    else
    {
      v37 = sub_22C525158(v36, v44, v45, 0, 0xE000000000000000);
    }
  }

  else
  {
    v32 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
    swift_allocBox();
    v34 = v38;
    sub_22C525A54();
    sub_22C525730(v21, v39);
    type metadata accessor for PromptTreeIdentifier.Label(0);
    swift_allocBox();
    sub_22C525AD8();
    v37 = sub_22C525ABC(v15 | 0x2000000000000000, v46);
  }

  v40 = v37;
  v41 = *(v32 + 48);
  sub_22C373454();
  sub_22C525788(v21, v42);

  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  sub_22C369AEC();
  v43 = swift_allocObject();
  *(v43 + 16) = v40;
  *(v34 + v41) = v43;
  sub_22C36CC48();
}

uint64_t sub_22C52269C()
{
  sub_22C369980();
  v0[14] = v1;
  v0[15] = v2;
  v0[12] = v3;
  v0[13] = v4;
  v0[11] = v5;
  v6 = sub_22C9063DC();
  v0[16] = v6;
  sub_22C3699B8(v6);
  v0[17] = v7;
  v9 = *(v8 + 64);
  v0[18] = sub_22C3699D4();
  v10 = sub_22C3A5908(&qword_27D9BB760, &unk_22C90FE70);
  sub_22C369914(v10);
  v12 = *(v11 + 64);
  v0[19] = sub_22C3699D4();
  v13 = sub_22C90963C();
  v0[20] = v13;
  sub_22C3699B8(v13);
  v0[21] = v14;
  v16 = *(v15 + 64);
  v0[22] = sub_22C3699D4();
  v17 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v17);
  v19 = *(v18 + 64);
  v0[23] = sub_22C3699D4();
  v20 = sub_22C90952C();
  v0[24] = v20;
  sub_22C3699B8(v20);
  v0[25] = v21;
  v23 = *(v22 + 64);
  v0[26] = sub_22C36D0D4();
  v0[27] = swift_task_alloc();
  v24 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_22C522844()
{
  v60 = v1;
  sub_22C58B008(*(v1 + 96), *(v1 + 184));
  sub_22C9093BC();
  v2 = sub_22C3869F0();
  if (sub_22C370B74(v2, 1, v0) == 1)
  {
    sub_22C36DD28(*(v1 + 184), &qword_27D9BB908, &qword_22C910960);
LABEL_11:
    sub_22C36A83C();
    v50 = swift_allocObject();
    *(v1 + 248) = v50;
    *(v1 + 64) = 7958081;
    *(v1 + 72) = 0xE300000000000000;
    v57 = *(v1 + 112);
    *(v50 + 16) = sub_22C90A49C();
    *(v50 + 24) = v51;
    v52 = swift_task_alloc();
    *(v1 + 256) = v52;
    *(v52 + 16) = v57;
    sub_22C38823C(&unk_22C926808);

    v53 = swift_task_alloc();
    *(v1 + 264) = v53;
    *v53 = v1;
    v53[1] = sub_22C522F7C;
    v54 = *(v1 + 96);
    v55 = &unk_22C91A180;
LABEL_12:

    return (v57)(v55, v52, v54);
  }

  v4 = *(v1 + 208);
  v3 = *(v1 + 216);
  v5 = *(v1 + 192);
  v6 = *(v1 + 200);
  v7 = *(v1 + 184);
  v8 = *(v1 + 96);
  sub_22C90935C();
  (*(*(v0 - 8) + 8))(v7, v0);
  v9 = *(v6 + 32);
  v10 = sub_22C36D264();
  v11(v10);
  *(v1 + 80) = v8;
  *(swift_task_alloc() + 16) = v3;
  sub_22C3A5908(&qword_27D9BADC0, &qword_22C90D668);
  sub_22C5258D8();
  LOBYTE(v7) = sub_22C90A4FC();

  v12 = *(v1 + 216);
  if ((v7 & 1) == 0)
  {
    (*(*(v1 + 200) + 8))(*(v1 + 216), *(v1 + 192));
    goto LABEL_11;
  }

  v14 = *(v1 + 168);
  v13 = *(v1 + 176);
  v15 = *(v1 + 152);
  v16 = *(v1 + 160);
  v17 = *(v1 + 112);
  v18 = v17[32];
  v19 = v17[33];
  sub_22C374168(v17 + 29, v18);
  (*(v14 + 104))(v13, *MEMORY[0x277D72E08], v16);
  v20 = sub_22C906D3C();
  sub_22C36C640(v15, 1, 1, v20);
  v21 = type metadata accessor for RenderingState();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_22C480800(v15);
  (*(v19 + 24))(&v58, v12, v13, v24, v18, v19);

  v25 = *(v14 + 8);
  v26 = sub_22C36BAFC();
  v27(v26);
  *(v1 + 224) = v58;
  if ((v59 & 1) == 0)
  {

    v57 = *(v1 + 112);
    sub_22C37F23C();
    v52 = swift_task_alloc();
    *(v1 + 232) = v52;
    *(v52 + 16) = v57;
    sub_22C38823C(&unk_22C926808);

    v56 = swift_task_alloc();
    *(v1 + 240) = v56;
    *v56 = v1;
    v56[1] = sub_22C522D70;
    v54 = *(v1 + 96);
    v55 = &unk_22C91A198;
    goto LABEL_12;
  }

  v28 = *(v1 + 144);
  sub_22C903F7C();
  v29 = sub_22C9063CC();
  v30 = sub_22C90AADC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_22C366000, v29, v30, "Unable to render the TypeIdentifier for a collection of parameter disambiguation choices. Skipping.", v31, 2u);
    sub_22C3699EC();
  }

  v32 = *(v1 + 216);
  v33 = *(v1 + 192);
  v34 = *(v1 + 200);
  v36 = *(v1 + 136);
  v35 = *(v1 + 144);
  v37 = *(v1 + 128);

  (*(v36 + 8))(v35, v37);
  v38 = *(v34 + 8);
  v39 = sub_22C36BAFC();
  v40(v39);
  v42 = *(v1 + 208);
  v41 = *(v1 + 216);
  v44 = *(v1 + 176);
  v43 = *(v1 + 184);
  v46 = *(v1 + 144);
  v45 = *(v1 + 152);

  sub_22C36D5E0();
  v48 = MEMORY[0x277D84F90];

  return v47(v48);
}

void sub_22C522D70()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = v2;
  sub_22C369A30();
  *v4 = v3;
  v3[2] = v1;
  v3[3] = v5;
  v3[4] = v0;
  v7 = *(v6 + 240);
  v8 = *v1;
  sub_22C369970();
  *v9 = v8;

  if (v0)
  {
  }

  else
  {
    v10 = v3[29];

    sub_22C374448();

    MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_22C522E98()
{
  sub_22C36D5EC();
  (*(v0[25] + 8))(v0[27], v0[24]);
  v1 = v0[3];
  v2 = v0[28];
  v3 = v0[13];
  v4 = v0[11];
  sub_22C37017C();
  sub_22C52330C();
  v6 = v5;

  v8 = v0[26];
  v7 = v0[27];
  v10 = v0[22];
  v9 = v0[23];
  v12 = v0[18];
  v11 = v0[19];

  sub_22C36D5E0();

  return v13(v6);
}

void sub_22C522F7C()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = v2;
  sub_22C369A30();
  *v4 = v3;
  v3[5] = v1;
  v3[6] = v5;
  v3[7] = v0;
  v7 = *(v6 + 264);
  v8 = *v1;
  sub_22C369970();
  *v9 = v8;

  if (v0)
  {
  }

  else
  {
    v10 = v3[32];

    sub_22C374448();

    MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_22C5230A4()
{
  sub_22C36D5EC();
  v1 = v0[31];
  v2 = v0[6];
  v3 = v0[13];
  v4 = v0[11];
  sub_22C52330C();
  v6 = v5;

  v8 = v0[26];
  v7 = v0[27];
  v10 = v0[22];
  v9 = v0[23];
  v12 = v0[18];
  v11 = v0[19];

  sub_22C36D5E0();

  return v13(v6);
}

uint64_t sub_22C523174@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_22C90977C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for StatementResultParser_v2_0();
  sub_22C374168((a1 + *(v11 + 20)), *(a1 + *(v11 + 20) + 24));
  v12 = *(a2 + 32);
  sub_22C47FCDC();
  v13 = sub_22C9096FC();
  v21 = v10;
  sub_22C4FB170(v13, v14, sub_22C436434, v20, v12);

  (*(v7 + 8))(v10, v6);
  v15 = swift_allocObject();
  v16 = sub_22C90A2AC();
  v18 = v17;

  *(v15 + 16) = v16;
  *(v15 + 24) = v18;
  *a3 = v15;
  return result;
}

void sub_22C52330C()
{
  sub_22C36BA7C();
  v1 = v0;
  v88 = v2;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for PromptTreeIdentifier(0);
  v8 = sub_22C36985C(v7);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v78 - v14;
  sub_22C902D0C();
  sub_22C37F224();
  v85 = v16;
  sub_22C36C640(v17, v18, v19, v16);
  v80 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  swift_storeEnumTagMultiPayload();
  v83 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  sub_22C48A0B0(&v15[*(v83 + 20)]);
  v87 = v7;
  swift_storeEnumTagMultiPayload();
  v20 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  v21 = swift_allocBox();
  v23 = v22;
  sub_22C525A54();
  sub_22C525730(v15, v24);
  v82 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v25 = swift_allocBox();
  sub_22C486784();
  v26 = sub_22C5243A4(v25 | 0x2000000000000000, v6);
  v81 = 0;
  v86 = v20;
  v27 = *(v20 + 48);
  sub_22C373454();
  sub_22C525788(v15, v28);

  v29 = sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  sub_22C369AEC();
  v30 = swift_allocObject();
  *(v30 + 16) = v26;
  *(v23 + v27) = v30;
  v84 = sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90FB40;
  sub_22C36A83C();
  v32 = swift_allocObject();
  v89 = 2683;
  v90 = 0xE200000000000000;
  *(v32 + 16) = sub_22C90A49C();
  *(v32 + 24) = v33;
  *(inited + 32) = v32;
  v34 = *(v4 + 16);
  v35 = MEMORY[0x277D84F90];
  if (v34)
  {
    v78 = v29;
    v79 = v13;
    v36 = v21;
    v89 = MEMORY[0x277D84F90];
    sub_22C3B63D4();
    v32 = 0;
    v35 = v89;
    v37 = v4 + 32;
    do
    {
      v38 = *(v37 + 8 * v32);

      v39 = sub_22C524618(v32, v38, v1);

      v89 = v35;
      v41 = *(v35 + 16);
      v40 = *(v35 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_22C369AB0(v40);
        sub_22C3B63D4();
        v35 = v89;
      }

      ++v32;
      *(v35 + 16) = v41 + 1;
      *(v35 + 8 * v41 + 32) = v39;
    }

    while (v34 != v32);
    v21 = v36;
    v13 = v79;
  }

  sub_22C3DB9B0(v35);
  sub_22C3869F0();

  sub_22C36D2A8();
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_22C9192A0;
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v43 = swift_allocObject();
  *(v43 + 16) = v32;
  *(v42 + 32) = v43;
  sub_22C369AEC();
  v44 = swift_allocObject();
  sub_22C369AEC();
  v45 = swift_allocObject();
  *(v45 + 16) = v42 | 0x8000000000000000;
  *(v44 + 16) = v45;
  v46 = v44 | 0x6000000000000000;
  sub_22C36D2A8();
  v47 = swift_allocObject();
  *(v47 + 16) = 1;
  *(v47 + 24) = 1;
  sub_22C369AEC();
  v48 = swift_allocObject();
  *(v48 + 16) = v46;
  *(v47 + 32) = v48;
  *(inited + 40) = v47 | 0xA000000000000000;
  sub_22C36A83C();
  v49 = swift_allocObject();
  v89 = 32010;
  v90 = 0xE200000000000000;
  *(v49 + 16) = sub_22C90A49C();
  *(v49 + 24) = v50;
  *(inited + 48) = v49;
  v51 = sub_22C3DB9B0(inited);
  swift_setDeallocating();
  sub_22C58FFB0();
  sub_22C369AEC();
  v52 = swift_allocObject();
  sub_22C369AEC();
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  *(v52 + 16) = v53;
  sub_22C37F224();
  v54 = v85;
  sub_22C36C640(v55, v56, v57, v85);
  swift_storeEnumTagMultiPayload();
  v58 = sub_22C901FAC();
  v59 = swift_allocBox();
  (*(*(v58 - 8) + 16))(v60, v1, v58);
  v61 = *(v83 + 20);
  *&v13[v61] = v59;
  (*(*(v54 - 8) + 104))(&v13[v61], *MEMORY[0x277D1D798], v54);
  swift_storeEnumTagMultiPayload();
  v62 = v86;
  v63 = swift_allocBox();
  v65 = v64;
  sub_22C525A54();
  sub_22C525730(v13, v66);
  v67 = swift_allocBox();
  sub_22C486784();
  v68 = v81;
  v69 = sub_22C525158(v67 | 0x2000000000000000, v88, v52 | 0x6000000000000000, 32, 0xE100000000000000);
  if (v68)
  {

    sub_22C373454();
    sub_22C525788(v65, v77);
    swift_deallocBox();
    __break(1u);
  }

  else
  {
    v70 = v69;
    v71 = *(v62 + 48);
    sub_22C373454();
    sub_22C525788(v13, v72);

    sub_22C369AEC();
    v73 = swift_allocObject();
    *(v73 + 16) = v70;
    *(v65 + v71) = v73;
    sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_22C90F800;
    v75 = swift_initStackObject();
    *(v75 + 16) = xmmword_22C90F870;
    *(v75 + 32) = v21 | 0x4000000000000000;
    *(v75 + 40) = v63 | 0x4000000000000000;

    v76 = sub_22C47D738(10, 0xE100000000000000, v75);
    swift_setDeallocating();
    sub_22C58FFB0();
    *(v74 + 32) = 5;
    *(v74 + 40) = v76 | 2;

    sub_22C36CC48();
  }
}

void sub_22C5239CC()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C369A48();
  v5 = type metadata accessor for PromptTreeIdentifier(v4);
  v6 = sub_22C36985C(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v11 = v10 - v9;
  v12 = sub_22C901FBC();
  v13 = sub_22C369824(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v20 = v19 - v18;
  sub_22C90200C();
  v21 = (*(v15 + 88))(v20, v12);
  if (v21 == *MEMORY[0x277D1C3F0])
  {
    v22 = sub_22C37B2B4();
    v23(v22);
  }

  else
  {
    if (v21 == *MEMORY[0x277D1C3F8])
    {
      v48 = sub_22C37B2B4();
      v49(v48);
      goto LABEL_12;
    }

    if (v21 != *MEMORY[0x277D1C388] && v21 != *MEMORY[0x277D1C408] && v21 != *MEMORY[0x277D1C3D8] && v21 != *MEMORY[0x277D1C3A8] && v21 != *MEMORY[0x277D1C3E0] && v21 != *MEMORY[0x277D1C390] && v21 != *MEMORY[0x277D1C398] && v21 != *MEMORY[0x277D1C3E8] && v21 != *MEMORY[0x277D1C410] && v21 != *MEMORY[0x277D1C3B8] && v21 != *MEMORY[0x277D1C3D0] && v21 != *MEMORY[0x277D1C418])
    {
      if (v21 == *MEMORY[0x277D1C3C0])
      {
        goto LABEL_12;
      }

      v61 = v21 == *MEMORY[0x277D1C3A0] || v21 == *MEMORY[0x277D1C3B0];
      v62 = v61 || v21 == *MEMORY[0x277D1C3C8];
      v63 = v62 || v21 == *MEMORY[0x277D1C420];
      if (!v63 && v21 != *MEMORY[0x277D1C400])
      {
        sub_22C90B4EC();
        __break(1u);
        goto LABEL_62;
      }
    }
  }

  sub_22C36A83C();
  v12 = swift_allocObject();
  *(v12 + 16) = 0x286572756C696166;
  *(v12 + 24) = 0xE800000000000000;
  sub_22C374C14();
  sub_22C591324();
  v25 = v24;
  v15 = *(v24 + 16);
  v26 = *(v24 + 24);
  v27 = v26 >> 1;
  v20 = v15 + 1;
  if (v26 >> 1 <= v15)
  {
LABEL_62:
    sub_22C369AB0(v26);
    sub_22C591324();
    v25 = v65;
    sub_22C375E88(v65);
  }

  *(v25 + 16) = v20;
  *(v25 + 8 * v15 + 32) = v12;
  v28 = v15 + 2;
  if (v27 < (v15 + 2))
  {
    sub_22C525A80();
    v25 = v66;
  }

  *(v25 + 16) = v28;
  *(v25 + 8 * v20 + 32) = v3;
  sub_22C36A83C();
  v29 = swift_allocObject();
  *(v29 + 16) = 41;
  *(v29 + 24) = 0xE100000000000000;
  v30 = *(v25 + 24);
  v31 = v15 + 3;

  if (v31 > (v30 >> 1))
  {
    sub_22C591324();
    v25 = v67;
  }

  *(v25 + 16) = v31;
  *(v25 + 8 * v28 + 32) = v29;
  v32 = sub_22C3DB9B0(v25);

  sub_22C369AEC();
  v33 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  *(v33 + 16) = v34;
  if (v1)
  {
    sub_22C902D0C();
    sub_22C37F224();
    sub_22C36C640(v35, v36, v37, v38);
    type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
    swift_storeEnumTagMultiPayload();
    v39 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
    sub_22C48A0B0((v11 + *(v39 + 20)));
    sub_22C36BAFC();
    swift_storeEnumTagMultiPayload();
    v40 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
    swift_allocBox();
    v42 = v41;
    sub_22C525A54();
    sub_22C525730(v11, v43);
    type metadata accessor for PromptTreeIdentifier.Label(0);
    swift_allocBox();
    sub_22C525AD8();
    v44 = sub_22C525ABC(v30 | 0x2000000000000000, v33 | 0x6000000000000000);

    v45 = *(v40 + 48);

    sub_22C373454();
    sub_22C525788(v11, v46);
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v47 = swift_allocObject();
    *(v47 + 16) = v44;
    *(v42 + v45) = v47;
  }

LABEL_12:
  sub_22C36CC48();
}

uint64_t sub_22C523ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_22C902D0C();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = type metadata accessor for DirectionalTypedValue();
  v4[11] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C523FC8, 0, 0);
}

uint64_t sub_22C523FC8()
{
  sub_22C3861B8();
  v5 = *(v4 + 176);
  v6 = *(v4 + 184);
  swift_getObjectType();
  v7 = sub_22C9093BC();
  sub_22C36985C(v7);
  (*(v8 + 16))(v0, v3);
  sub_22C36BA00();
  swift_storeEnumTagMultiPayload();
  v9 = *MEMORY[0x277D1D7F8];
  v10 = sub_22C525AF4();
  v11(v10);
  v12 = sub_22C37A084();
  v13(v12);
  v14 = *(v2 + 8);
  v15 = sub_22C36D264();
  v16(v15);
  sub_22C38BA28();
  sub_22C525788(v0, v17);
  if (v22)
  {
    sub_22C36A83C();
    swift_allocObject();
    v18 = sub_22C387194();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0xE000000000000000;
    *(v1 + 16) = sub_22C90A49C();
    *(v1 + 24) = v19;
  }

  else
  {
    sub_22C386764();
    sub_22C37F23C();
  }

  sub_22C525B08();

  sub_22C369A24();

  return v20();
}

uint64_t sub_22C52413C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_22C902D0C();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = type metadata accessor for DirectionalTypedValue();
  v4[11] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C524230, 0, 0);
}

uint64_t sub_22C524230()
{
  sub_22C3861B8();
  v5 = *(v4 + 160);
  v6 = *(v4 + 168);
  swift_getObjectType();
  v7 = sub_22C9093BC();
  sub_22C36985C(v7);
  (*(v8 + 16))(v0, v3);
  sub_22C36BA00();
  swift_storeEnumTagMultiPayload();
  v9 = *MEMORY[0x277D1D7F8];
  v10 = sub_22C525AF4();
  v11(v10);
  v12 = sub_22C37A084();
  v13(v12);
  v14 = *(v2 + 8);
  v15 = sub_22C36D264();
  v16(v15);
  sub_22C38BA28();
  sub_22C525788(v0, v17);
  if (v22)
  {
    sub_22C36A83C();
    swift_allocObject();
    v18 = sub_22C387194();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0xE000000000000000;
    *(v1 + 16) = sub_22C90A49C();
    *(v1 + 24) = v19;
  }

  else
  {
    sub_22C386764();
    sub_22C37F23C();
  }

  sub_22C525B08();

  sub_22C369A24();

  return v20();
}

uint64_t sub_22C5243A4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0xE000000000000000;
  sub_22C591324();
  v6 = v5;
  v7 = *(v5 + 16);
  v8 = *(v5 + 24) >> 1;
  v9 = v7 + 1;
  if (v8 <= v7)
  {
    sub_22C591324();
    v6 = v21;
    v8 = *(v21 + 24) >> 1;
  }

  *(v6 + 16) = v9;
  *(v6 + 8 * v7 + 32) = v4;
  v10 = v7 + 2;
  if (v8 < (v7 + 2))
  {
    sub_22C591324();
    v6 = v22;
  }

  *(v6 + 16) = v10;
  *(v6 + 8 * v9 + 32) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = 0xD000000000000010;
  *(v11 + 24) = 0x800000022C931C50;
  v12 = *(v6 + 24);
  v13 = v7 + 3;

  if ((v7 + 3) > (v12 >> 1))
  {
    sub_22C591324();
    v6 = v23;
  }

  *(v6 + 16) = v13;
  *(v6 + 8 * v10 + 32) = v11;
  v14 = v7 + 4;
  if ((v7 + 4) > *(v6 + 24) >> 1)
  {
    sub_22C591324();
    v6 = v24;
  }

  *(v6 + 16) = v14;
  *(v6 + 8 * v13 + 32) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = 41;
  *(v15 + 24) = 0xE100000000000000;
  v16 = *(v6 + 24);

  if ((v7 + 5) > (v16 >> 1))
  {
    sub_22C591324();
    v6 = v25;
  }

  *(v6 + 16) = v7 + 5;
  *(v6 + 8 * v14 + 32) = v15;
  v17 = sub_22C3DB9B0(v6);

  v18 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v18 + 16) = v19;
  return v18 | 0x6000000000000000;
}

uint64_t sub_22C524618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v5 = type metadata accessor for PromptTreeIdentifier(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  swift_storeEnumTagMultiPayload();
  v9 = sub_22C3A5908(&qword_27D9BC208, &unk_22C912400);
  v10 = swift_allocBox();
  v12 = v11;
  v13 = *(v9 + 48);
  v14 = sub_22C901FAC();
  v15 = swift_allocBox();
  (*(*(v14 - 8) + 16))(v16, a3, v14);
  *v12 = v15;
  v17 = *MEMORY[0x277D1D798];
  v18 = sub_22C902D0C();
  v19 = *(*(v18 - 8) + 104);
  v19(v12, v17, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = 0;
  *(v20 + 32) = 1;
  *(v12 + v13) = v20;
  v19((v12 + v13), *MEMORY[0x277D1D7E8], v18);
  v21 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
  *&v8[v21] = v10;
  v19(&v8[v21], *MEMORY[0x277D1D7D0], v18);
  swift_storeEnumTagMultiPayload();
  v22 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  v23 = swift_allocBox();
  v25 = v24;
  sub_22C525730(v8, v24);
  type metadata accessor for PromptTreeIdentifier.Label(0);
  v26 = swift_allocBox();
  sub_22C486784();
  v27 = sub_22C52492C(v26 | 0x2000000000000000, v31, 8250, 0xE200000000000000);
  v28 = *(v22 + 48);
  sub_22C525788(v8, type metadata accessor for PromptTreeIdentifier);

  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v25 + v28) = v29;
  return v23 | 0x4000000000000000;
}

uint64_t sub_22C52492C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C36A83C();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0xE000000000000000;
  sub_22C374C14();
  sub_22C591324();
  v10 = v9;
  v11 = *(v9 + 16);
  v12 = *(v9 + 24) >> 1;
  v13 = v11 + 1;
  if (v12 <= v11)
  {
    sub_22C36FC14();
    v10 = v21;
    sub_22C375E88(v21);
  }

  *(v10 + 16) = v13;
  *(v10 + 8 * v11 + 32) = v8;
  v14 = v11 + 2;
  if (v12 < (v11 + 2))
  {
    sub_22C36FC14();
    v10 = v22;
  }

  *(v10 + 16) = v14;
  *(v10 + 8 * v13 + 32) = a1;
  sub_22C36A83C();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = *(v10 + 24);
  v17 = v11 + 3;

  if ((v11 + 3) > (v16 >> 1))
  {
    sub_22C36FC14();
    v10 = v23;
  }

  *(v10 + 16) = v17;
  *(v10 + 8 * v14 + 32) = v15;
  if ((v11 + 4) > *(v10 + 24) >> 1)
  {
    sub_22C36FC14();
    v10 = v24;
  }

  *(v10 + 16) = v11 + 4;
  *(v10 + 8 * v17 + 32) = a2;
  sub_22C36A83C();
  v18 = swift_allocObject();
  sub_22C36ED28(v18);

  if ((v11 + 5) > (v16 >> 1))
  {
    sub_22C36FC14();
  }

  sub_22C372170();
  sub_22C387194();

  sub_22C369AEC();
  swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v19 = swift_allocObject();
  return sub_22C51E360(v19);
}

void sub_22C524B20()
{
  sub_22C36BA7C();
  v63 = sub_22C90952C();
  v0 = sub_22C369824(v63);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v0);
  sub_22C369838();
  v7 = v6 - v5;
  v8 = sub_22C90906C();
  v9 = sub_22C369824(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v16 = v15 - v14;
  v17 = sub_22C9093BC();
  v18 = sub_22C369824(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v18);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = (&v53 - v26);
  v28 = *(v20 + 16);
  v29 = sub_22C36BA00();
  v61 = v31;
  v62 = v30;
  (v31)(v29);
  v32 = *(v20 + 88);
  v33 = sub_22C36FC08();
  if (v34(v33) == *MEMORY[0x277D729E0])
  {
    v35 = *(v20 + 96);
    v60 = v17;
    v35(v27, v17);
    v57 = *v27;
    v36 = swift_projectBox();
    (*(v11 + 16))(v16, v36, v8);
    v37 = sub_22C90905C();
    v38 = *(v37 + 16);
    if (v38)
    {
      v54 = v16;
      v55 = v11;
      v56 = v8;
      v64 = MEMORY[0x277D84F90];
      v39 = v37;
      sub_22C3B6AF0(0, v38, 0);
      v40 = v64;
      v41 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v53 = v39;
      v42 = v39 + v41;
      v43 = *(v20 + 72);
      v58 = v2 + 32;
      v59 = v43;
      do
      {
        v44 = v60;
        v61(v25, v42, v60);
        sub_22C90935C();
        (*(v20 + 8))(v25, v44);
        v64 = v40;
        v46 = *(v40 + 16);
        v45 = *(v40 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_22C3B6AF0(v45 > 1, v46 + 1, 1);
          v40 = v64;
        }

        *(v40 + 16) = v46 + 1;
        (*(v2 + 32))(v40 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v46, v7, v63);
        v42 += v59;
        --v38;
      }

      while (v38);

      v11 = v55;
      v8 = v56;
      v16 = v54;
    }

    else
    {
    }

    sub_22C3AD9E8();
    v51 = v50;
    (*(v11 + 8))(v16, v8);
    v52 = *(v51 + 16);
  }

  else
  {
    v47 = *(v20 + 8);
    v48 = sub_22C36FC08();
    v49(v48);
  }

  sub_22C36CC48();
}

uint64_t sub_22C524EE8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0xE000000000000000;
  sub_22C591324();
  v6 = v5;
  v7 = *(v5 + 16);
  v8 = *(v5 + 24) >> 1;
  v9 = v7 + 1;
  if (v8 <= v7)
  {
    sub_22C591324();
    v6 = v21;
    v8 = *(v21 + 24) >> 1;
  }

  *(v6 + 16) = v9;
  *(v6 + 8 * v7 + 32) = v4;
  v10 = v7 + 2;
  if (v8 < (v7 + 2))
  {
    sub_22C591324();
    v6 = v22;
  }

  *(v6 + 16) = v10;
  *(v6 + 8 * v9 + 32) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = 0xD000000000000013;
  *(v11 + 24) = 0x800000022C931E70;
  v12 = *(v6 + 24);
  v13 = v7 + 3;

  if ((v7 + 3) > (v12 >> 1))
  {
    sub_22C591324();
    v6 = v23;
  }

  *(v6 + 16) = v13;
  *(v6 + 8 * v10 + 32) = v11;
  v14 = v7 + 4;
  if ((v7 + 4) > *(v6 + 24) >> 1)
  {
    sub_22C591324();
    v6 = v24;
  }

  *(v6 + 16) = v14;
  *(v6 + 8 * v13 + 32) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0xE000000000000000;
  v16 = *(v6 + 24);

  if ((v7 + 5) > (v16 >> 1))
  {
    sub_22C591324();
    v6 = v25;
  }

  *(v6 + 16) = v7 + 5;
  *(v6 + 8 * v14 + 32) = v15;
  v17 = sub_22C3DB9B0(v6);

  v18 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v18 + 16) = v19;
  return v18 | 0x6000000000000000;
}

uint64_t sub_22C525158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22C36A83C();
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  sub_22C374C14();
  sub_22C591324();
  v12 = v11;
  v13 = *(v11 + 16);
  v14 = *(v11 + 24) >> 1;
  v15 = v13 + 1;
  if (v14 <= v13)
  {
    sub_22C36FC14();
    v12 = v27;
    sub_22C375E88(v27);
  }

  *(v12 + 16) = v15;
  *(v12 + 8 * v13 + 32) = v10;
  v16 = v13 + 2;
  if (v14 < (v13 + 2))
  {
    sub_22C36FC14();
    v12 = v28;
  }

  *(v12 + 16) = v16;
  *(v12 + 8 * v15 + 32) = a1;
  sub_22C36A83C();
  v17 = swift_allocObject();
  strcpy((v17 + 16), ": dict[int, ");
  *(v17 + 29) = 0;
  *(v17 + 30) = -5120;
  v18 = *(v12 + 24);
  v19 = v13 + 3;

  if ((v13 + 3) > (v18 >> 1))
  {
    sub_22C36FC14();
    v12 = v29;
  }

  *(v12 + 16) = v19;
  *(v12 + 8 * v16 + 32) = v17;
  v20 = v13 + 4;
  if ((v13 + 4) > *(v12 + 24) >> 1)
  {
    sub_22C36FC14();
    v12 = v30;
  }

  *(v12 + 16) = v20;
  *(v12 + 8 * v19 + 32) = a2;
  sub_22C36A83C();
  v21 = swift_allocObject();
  *(v21 + 16) = 540876893;
  *(v21 + 24) = 0xE400000000000000;
  v22 = *(v12 + 24);
  v23 = v13 + 5;

  if ((v13 + 5) > (v22 >> 1))
  {
    sub_22C36FC14();
    v12 = v31;
  }

  *(v12 + 16) = v23;
  *(v12 + 8 * v20 + 32) = v21;
  if ((v13 + 6) > *(v12 + 24) >> 1)
  {
    sub_22C36FC14();
    v12 = v32;
  }

  *(v12 + 16) = v13 + 6;
  *(v12 + 8 * v23 + 32) = a3;
  sub_22C36A83C();
  v24 = swift_allocObject();
  sub_22C36ED28(v24);

  if ((v13 + 7) > (v22 >> 1))
  {
    sub_22C36FC14();
  }

  sub_22C372170();
  sub_22C387194();

  sub_22C369AEC();
  swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v25 = swift_allocObject();
  return sub_22C51E360(v25);
}

uint64_t sub_22C5253FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3C0980;

  return sub_22C51E720();
}

BOOL sub_22C5254A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C9089DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22C9089EC();
  v8 = sub_22C9089AC();
  (*(v4 + 8))(v7, v3);
  v12 = a2;
  v9 = sub_22C5EC13C(sub_22C4F5E4C, v11, v8);

  return v9;
}

uint64_t sub_22C5255CC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t (*a5)(char *, uint64_t))
{
  v8 = sub_22C369A48();
  v10 = v9(v8);
  v11 = sub_22C369824(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v18 = &v20 - v17;
  a4(v16);
  LOBYTE(a5) = a5(v18, a2);
  (*(v13 + 8))(v18, v10);
  return a5 & 1;
}

uint64_t sub_22C5256C0@<X0>(char *a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C51E5B8(*a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t sub_22C525730(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v5 = v4(v3);
  sub_22C36985C(v5);
  v7 = *(v6 + 16);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

uint64_t sub_22C525788(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C5257E0()
{
  sub_22C36FB38();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = sub_22C525AA0(v4);

  return sub_22C52413C(v5, v6, v7, v8);
}

unint64_t sub_22C5258D8()
{
  result = qword_27D9BD9E8;
  if (!qword_27D9BD9E8)
  {
    sub_22C3AC1A0(&qword_27D9BADC0, &qword_22C90D668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD9E8);
  }

  return result;
}

uint64_t sub_22C52593C()
{
  sub_22C36FB38();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = sub_22C525AA0(v4);

  return sub_22C523ED4(v5, v6, v7, v8);
}

void sub_22C525A80()
{

  sub_22C591324();
}

uint64_t sub_22C525ABC(uint64_t a1, uint64_t a2)
{

  return sub_22C52492C(a1, a2, 2112800, 0xE300000000000000);
}

void sub_22C525AD8()
{

  sub_22C486784();
}

uint64_t sub_22C525B08()
{
  v3 = *(v1 + 96);
  v4 = *(v1 + 80);
  **(v1 + 32) = v0;
}

uint64_t sub_22C525B28()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);
  v5 = *(v0 - 128);
  v4 = *(v0 - 120);
  v6 = *(v0 - 136);
}

uint64_t sub_22C525EBC(uint64_t a1)
{
  v2 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v42 = *(v2 - 8);
  v3 = *(v42 + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v41 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v44 = v38 - v6;
  v7 = 0;
  v8 = MEMORY[0x277D84F98];
  v45 = MEMORY[0x277D84F98];
  v43 = *(a1 + 16);
  v39 = xmmword_22C90F800;
  v40 = a1;
  while (1)
  {
    if (v43 == v7)
    {

      return v8;
    }

    if (v7 >= *(a1 + 16))
    {
      break;
    }

    v9 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v10 = *(v42 + 72);
    sub_22C528DF8(a1 + v9 + v10 * v7, v44, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
    v11 = sub_22C57ED3C();
    v19 = sub_22C633A1C(v11);
    v20 = v8[2];
    v21 = (v12 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_19;
    }

    v23 = v12;
    if (v8[3] < v22)
    {
      sub_22C88D6C0(v22, 1, v13, v14, v15, v16, v17, v18, v38[0], v38[1], v39, SBYTE4(v39));
      v8 = v45;
      v24 = sub_22C633A1C(v11);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_21;
      }

      v19 = v24;
    }

    if (v23)
    {
      v26 = v8[7];
      sub_22C528E50(v44, v41, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
      v27 = *(v26 + 8 * v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v26 + 8 * v19) = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = *(v27 + 16);
        sub_22C59161C();
        v27 = v35;
        *(v26 + 8 * v19) = v35;
      }

      v29 = *(v27 + 16);
      if (v29 >= *(v27 + 24) >> 1)
      {
        sub_22C59161C();
        v27 = v36;
        *(v26 + 8 * v19) = v36;
      }

      *(v27 + 16) = v29 + 1;
      sub_22C528E50(v41, v27 + v9 + v29 * v10, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
      a1 = v40;
    }

    else
    {
      sub_22C3A5908(&qword_27D9BAF88, &unk_22C917A10);
      v30 = swift_allocObject();
      *(v30 + 16) = v39;
      sub_22C528E50(v44, v30 + v9, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
      v8[(v19 >> 6) + 8] |= 1 << v19;
      *(v8[6] + v19) = v11;
      *(v8[7] + 8 * v19) = v30;
      v31 = v8[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_20;
      }

      v8[2] = v33;
    }

    ++v7;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C526204(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v50 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v47 - v6;
  v8 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v52 = *(v8 - 8);
  v9 = *(v52 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v51 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v55 = v47 - v12;
  v13 = 0;
  v14 = MEMORY[0x277D84F98];
  v56 = MEMORY[0x277D84F98];
  v53 = *(a1 + 16);
  v48 = xmmword_22C90F800;
  v49 = a1;
  while (1)
  {
    if (v53 == v13)
    {

      return v14;
    }

    if (v13 >= *(a1 + 16))
    {
      break;
    }

    v15 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v54 = *(v52 + 72);
    sub_22C528DF8(a1 + v15 + v54 * v13, v55, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
    sub_22C9036BC();
    v16 = v7;
    v17 = sub_22C908EAC();
    v18 = 1;
    if (sub_22C370B74(v7, 1, v17) != 1)
    {
      v19 = v50;
      sub_22C528F6C(v7, v50, &qword_27D9BC1E8, &qword_22C9123B0);
      v18 = sub_22C4AEF6C();
      v20 = v19;
      v16 = v7;
      (*(*(v17 - 8) + 8))(v20, v17);
    }

    sub_22C3AC228(v16, &qword_27D9BC1E8, &qword_22C9123B0);
    v28 = sub_22C628620(v18 & 1);
    v29 = v14[2];
    v30 = (v21 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_21;
    }

    v32 = v21;
    if (v14[3] < v31)
    {
      sub_22C88D50C(v31, 1, v22, v23, v24, v25, v26, v27, v47[0], v47[1], v48, SBYTE4(v48));
      v14 = v56;
      v33 = sub_22C628620(v18 & 1);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_23;
      }

      v28 = v33;
    }

    if (v32)
    {
      v35 = v14[7];
      sub_22C528E50(v55, v51, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
      v36 = *(v35 + 8 * v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v35 + 8 * v28) = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v43 = *(v36 + 16);
        sub_22C59161C();
        v36 = v44;
        *(v35 + 8 * v28) = v44;
      }

      v38 = *(v36 + 16);
      if (v38 >= *(v36 + 24) >> 1)
      {
        sub_22C59161C();
        v36 = v45;
        *(v35 + 8 * v28) = v45;
      }

      *(v36 + 16) = v38 + 1;
      sub_22C528E50(v51, v36 + v15 + v38 * v54, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
      a1 = v49;
    }

    else
    {
      sub_22C3A5908(&qword_27D9BAF88, &unk_22C917A10);
      v39 = swift_allocObject();
      *(v39 + 16) = v48;
      sub_22C528E50(v55, v39 + v15, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
      v14[(v28 >> 6) + 8] |= 1 << v28;
      *(v14[6] + v28) = v18 & 1;
      *(v14[7] + 8 * v28) = v39;
      v40 = v14[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_22;
      }

      v14[2] = v42;
    }

    ++v13;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  sub_22C3A5908(&qword_27D9BDA00, qword_22C91B300);
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C526684(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BD958, &qword_22C919CA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v35 - v4;
  v40 = type metadata accessor for _PromptMapper._ToolPromptMap(0);
  v36 = *(v40 - 8);
  v6 = *(v36 + 64);
  v7 = MEMORY[0x28223BE20](v40);
  v38 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = &v35 - v9;
  v39 = MEMORY[0x277D84F98];
  v42 = MEMORY[0x277D84F98];
  v10 = 1 << *(a1 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  while (1)
  {
    v16 = v15;
    if (!v12)
    {
      break;
    }

LABEL_9:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = (v15 << 9) | (8 * v17);
    v19 = *(*(a1 + 48) + v18);
    v20 = *(*(a1 + 56) + v18);
    swift_getKeyPath();
    v41[0] = v20;

    swift_getAtKeyPath();

    if (sub_22C370B74(v5, 1, v40) == 1)
    {

      result = sub_22C3AC228(v5, &qword_27D9BD958, &qword_22C919CA0);
    }

    else
    {
      v21 = v37;
      sub_22C528E50(v5, v37, type metadata accessor for _PromptMapper._ToolPromptMap);
      sub_22C528E50(v21, v38, type metadata accessor for _PromptMapper._ToolPromptMap);
      v22 = v39;
      if (v39[3] <= v39[2])
      {
        sub_22C88D114();
        v22 = v42;
      }

      v23 = v22[5];
      v24 = v22;
      sub_22C90B62C();
      sub_22C48A9B4(v41, v19);
      result = sub_22C90B66C();
      v25 = v24 + 8;
      v39 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~v24[(v27 >> 6) + 8]) == 0)
      {
        v30 = 0;
        v31 = (63 - v26) >> 6;
        while (++v28 != v31 || (v30 & 1) == 0)
        {
          v32 = v28 == v31;
          if (v28 == v31)
          {
            v28 = 0;
          }

          v30 |= v32;
          v33 = v25[v28];
          if (v33 != -1)
          {
            v29 = __clz(__rbit64(~v33)) + (v28 << 6);
            goto LABEL_22;
          }
        }

        goto LABEL_25;
      }

      v29 = __clz(__rbit64((-1 << v27) & ~v24[(v27 >> 6) + 8])) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
      *(v25 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v34 = v39;
      *(v39[6] + 8 * v29) = v19;
      result = sub_22C528E50(v38, v34[7] + *(v36 + 72) * v29, type metadata accessor for _PromptMapper._ToolPromptMap);
      ++v34[2];
    }
  }

  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      return v39;
    }

    v12 = *(a1 + 64 + 8 * v15);
    ++v16;
    if (v12)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_22C526A5C(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for ToolRenderer_v2_0() + 24));
  v4 = v3[3];
  v5 = v3[4];
  sub_22C374168(v3, v4);
  return (*(v5 + 8))(a1, v4, v5);
}

uint64_t sub_22C526AC4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void (***a4)(char *, unint64_t, uint64_t)@<X8>)
{
  v6 = v4;
  v215 = a4;
  v238 = sub_22C9036EC();
  v10 = sub_22C369824(v238);
  v223 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v14);
  v227 = &v209 - v15;
  v232 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v16 = sub_22C369824(v232);
  v229 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C3698E4();
  sub_22C3698D4();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v209 - v22;
  MEMORY[0x28223BE20](v21);
  *&v233 = &v209 - v24;
  v25 = type metadata accessor for RenderableTool();
  v26 = sub_22C369824(v25);
  v230 = v27;
  v231 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v30);
  v32 = &v209 - v31;
  v224 = a1;
  v33 = sub_22C4AF928();
  v34 = sub_22C525EBC(v33);
  v35 = *(v34 + 16);
  v222 = v23;
  if (v35 && (v36 = sub_22C633A1C(2), (v37 & 1) != 0))
  {
    v38 = *(*(v34 + 56) + 8 * v36);
  }

  else
  {
    v39 = MEMORY[0x277D84F90];
  }

  v228 = sub_22C526204(v39);
  v40 = v5;
  v41 = MEMORY[0x277D84F90];
  if (*(v34 + 16))
  {
    v42 = sub_22C633A1C(1);
    if (v43)
    {
      v44 = *(*(v34 + 56) + 8 * v42);
    }

    else
    {
      v44 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
  }

  v45 = *(v44 + 16);
  if (v45)
  {
    v226 = v40;
    sub_22C528FDC();
    v221 = v6;
    v235 = v41;
    v46 = sub_22C3886F8();
    sub_22C3B696C(v46, v47, v48);
    v49 = v235;
    sub_22C37054C();
    v225 = v44;
    sub_22C37A0B0();
    do
    {
      sub_22C36AB10();
      v50 = v233;
      sub_22C528DF8(a3, v233, v51);
      v52 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
      (*v6)(v32, v50, v238);
      v53 = *(v232 + 24);
      v54 = sub_22C9037DC();
      sub_22C369A9C(v54);
      (*(v55 + 32))(&v32[v52], v50 + v53);
      swift_storeEnumTagMultiPayload();
      sub_22C37FE10();
      if (v57)
      {
        v61 = sub_22C369AB0(v56);
        sub_22C3B696C(v61, v52, 1);
        v49 = v235;
      }

      *(v49 + 16) = v52;
      sub_22C37054C();
      sub_22C377DF4(v58);
      sub_22C528E50(v32, v59, v60);
      a3 += a2;
      --v45;
    }

    while (v45);

    v6 = v221;
    a2 = v218;
    a3 = v220;
    v40 = v226;
  }

  else
  {
  }

  MEMORY[0x28223BE20](v62);
  sub_22C528FF8();
  *(v63 - 32) = v6;
  *(v63 - 24) = a2;
  *(v63 - 16) = a3;
  sub_22C792A18();
  v65 = v222;
  v66 = v228;
  if (v40)
  {
LABEL_35:
  }

  else
  {
    v213 = v64;

    MEMORY[0x28223BE20](v67);
    sub_22C528FF8();
    *(v68 - 32) = v66;
    *(v68 - 24) = v6;
    *(v68 - 16) = a2;
    *(v68 - 8) = a3;
    sub_22C792A44();
    v210 = v69;
    sub_22C528FDC();
    v211 = 0;
    v221 = v6;

    v70 = sub_22C4AF928();
    v71 = 0;
    v226 = *(v70 + 16);
    v228 = (v223 + 16);
    v225 = (v223 + 88);
    LODWORD(v224) = *MEMORY[0x277D1ECE8];
    v72 = (v223 + 8);
    v212 = MEMORY[0x277D84F90];
    v73 = v238;
    while (v226 != v71)
    {
      v74 = *(v70 + 16);
      if (v71 >= v74)
      {
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
        while (1)
        {
          __break(1u);
LABEL_97:
          sub_22C369AB0(v74);
          sub_22C591324();
          v167 = v206;
          v74 = *(v206 + 24);
          v168 = v74 >> 1;
LABEL_67:
          *(v167 + 16) = a2;
          *(v167 + 8 * v65 + 32) = v6;
          v169 = v65 + 2;
          if (v168 < (v65 + 2))
          {
            sub_22C369AB0(v74);
            sub_22C591324();
            v167 = v207;
          }

          *(v167 + 16) = v169;
          *(v167 + 8 * a2 + 32) = v229;
          sub_22C36A83C();
          a2 = swift_allocObject();
          *(a2 + 16) = 1616928778;
          *(a2 + 24) = 0xE400000000000000;
          v170 = *(v167 + 24);

          if ((v65 + 3) > (v170 >> 1))
          {
            sub_22C591324();
            v167 = v208;
          }

          *(v167 + 16) = v65 + 3;
          *(v167 + 8 * v169 + 32) = a2;
          v171 = sub_22C3DB9B0(v167);

          sub_22C369AEC();
          v172 = swift_allocObject();
          sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
          sub_22C369AEC();
          v173 = swift_allocObject();
          *(v173 + 16) = v171;
          *(v172 + 16) = v173;
          v228 = (v172 | 0x6000000000000000);
          v159 = MEMORY[0x277D84F90];
LABEL_72:
          v235 = v159;
          v65 = *(v71 + 16);
          if (v65)
          {
            v6 = 0;
            a2 = *(type metadata accessor for _PromptToolData(0) - 8);
            v174 = *(a2 + 80);
            sub_22C36BA94();
            v176 = v71 + v175 + 24;
            while (1)
            {
              v74 = *(v71 + 16);
              if (v6 >= v74)
              {
                goto LABEL_95;
              }

              v177 = *(a2 + 72) * v6++;
              v178 = *(v176 + v177);

              sub_22C3CD230();
              if (v65 == v6)
              {
                v159 = v235;
                break;
              }
            }
          }

          v179 = type metadata accessor for ToolRenderer_v2_0();
          sub_22C528F6C(v66 + *(v179 + 28), &v235, &qword_27D9BD9F8, &unk_22C91A240);
          v227 = v159;
          if (!v237)
          {
            sub_22C3AC228(&v235, &qword_27D9BD9F8, &unk_22C91A240);
            v191 = 0;
            v192 = 0;
            v193 = 0;
            v194 = 0;
            goto LABEL_92;
          }

          v211 = v40;
          sub_22C374168(&v235, v237);
          *&v233 = *(v71 + 16);
          if (!v233)
          {
            break;
          }

          v6 = 0;
          v238 = type metadata accessor for _PromptToolData(0);
          v231 = *(v238 - 8);
          v180 = *(v231 + 80);
          sub_22C36BA94();
          v40 = (v71 + v181);
          v182 = MEMORY[0x277D84F90];
          while (1)
          {
            v74 = *(v71 + 16);
            if (v6 >= v74)
            {
              break;
            }

            v183 = &v40[*(v231 + 72) * v6 + *(v238 + 36)];
            v184 = *(v183 + 1);
            if (v184)
            {
              v185 = *v183;
              v65 = *(v183 + 2);
              v66 = *(v183 + 3);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v188 = *(v182 + 16);
                sub_22C591018();
                v182 = v189;
              }

              a2 = *(v182 + 16);
              v186 = *(v182 + 24);
              if (a2 >= v186 >> 1)
              {
                sub_22C369AB0(v186);
                sub_22C591018();
                v182 = v190;
              }

              *(v182 + 16) = a2 + 1;
              v187 = (v182 + 32 * a2);
              v187[4] = v185;
              v187[5] = v184;
              v187[6] = v65;
              v187[7] = v66;
            }

            ++v6;
            v71 = v232;
            if (v233 == v6)
            {
              goto LABEL_91;
            }
          }
        }

        v182 = MEMORY[0x277D84F90];
LABEL_91:
        sub_22C531C50(v182, v234);

        v191 = v234[0];
        v192 = v234[1];
        v193 = v234[2];
        v194 = v234[3];
        sub_22C36FF94(&v235);
LABEL_92:
        sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
        sub_22C3D32C8(&qword_27D9BB778, &qword_27D9BAF08, &qword_22C90D7B0);
        v195 = sub_22C909F0C();
        sub_22C36A83C();
        v196 = swift_allocObject();
        v235 = 0;
        v236 = 0xE000000000000000;
        v197 = sub_22C37F264();
        sub_22C456C94(v197, v198);
        v199 = sub_22C90A49C();
        v201 = v200;

        v202 = sub_22C37F264();
        sub_22C456D48(v202, v203);

        *(v196 + 16) = v199;
        *(v196 + 24) = v201;
        v204 = v215;
        *v215 = v228;
        v204[1] = v195;
        v205 = v227;
        v204[2] = v226;
        v204[3] = v205;
        v204[4] = v191;
        v204[5] = v192;
        v204[6] = v193;
        v204[7] = v194;
        v204[8] = v196;
        return result;
      }

      v6 = (*(v229 + 80) + 32) & ~*(v229 + 80);
      v75 = v70;
      a2 = *(v229 + 72);
      sub_22C36AB10();
      sub_22C528DF8(v76, v65, v77);
      v40 = v227;
      (*v228)(v227, v65, v73);
      v66 = (*v225)(v40, v73);
      (*v72)(v40, v73);
      if (v66 == v224)
      {
        sub_22C3718C8();
        sub_22C528E50(v65, v217, v79);
        v80 = v212;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v82 = v80;
        v235 = v80;
        v66 = v65;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22C3B685C(0, *(v82 + 16) + 1, 1);
          v73 = v238;
          v82 = v235;
        }

        v84 = *(v82 + 16);
        v83 = *(v82 + 24);
        v40 = (v84 + 1);
        if (v84 >= v83 >> 1)
        {
          v87 = sub_22C369AB0(v83);
          sub_22C3B685C(v87, v84 + 1, 1);
          v73 = v238;
          v82 = v235;
        }

        ++v71;
        *(v82 + 16) = v40;
        v212 = v82;
        sub_22C3718C8();
        sub_22C528E50(v217, v85, v86);
        v65 = v66;
        v70 = v75;
      }

      else
      {
        sub_22C38BA40();
        sub_22C528F18(v65, v78);
        ++v71;
        v70 = v75;
      }
    }

    v88 = *(v212 + 16);
    if (v88)
    {
      v235 = MEMORY[0x277D84F90];
      v89 = sub_22C3886F8();
      sub_22C3B696C(v89, v90, v91);
      v92 = v235;
      sub_22C37054C();
      sub_22C37A0B0();
      v93 = v216;
      do
      {
        sub_22C36AB10();
        v94 = v233;
        sub_22C528DF8(v71, v233, v95);
        v96 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
        (*v6)(v93, v94, v238);
        v97 = *(v232 + 24);
        v98 = sub_22C9037DC();
        sub_22C369A9C(v98);
        (*(v99 + 32))(v93 + v96, v94 + v97);
        swift_storeEnumTagMultiPayload();
        sub_22C37FE10();
        if (v57)
        {
          v104 = sub_22C369AB0(v100);
          sub_22C3B696C(v104, v96, 1);
          v92 = v235;
        }

        *(v92 + 16) = v96;
        sub_22C37054C();
        sub_22C377DF4(v101);
        sub_22C528E50(v93, v102, v103);
        v71 += a2;
        --v88;
      }

      while (v88);
    }

    MEMORY[0x28223BE20](v105);
    sub_22C528FF8();
    v66 = v221;
    v106 = v218;
    sub_22C36D84C(v107);
    v108 = v211;
    sub_22C792A18();
    v40 = v108;
    if (v108)
    {

      goto LABEL_35;
    }

    v111 = v109;

    v235 = v111;
    sub_22C3CD560(v213);
    sub_22C3CD560(v210);
    v230 = sub_22C7F4DE0(v235);
    v113 = v112;
    v6 = 0;
    a2 = *(v112 + 16);
    v65 = MEMORY[0x277D84F90];
    v232 = v112;
    while (a2 != v6)
    {
      v74 = *(v113 + 16);
      if (v6 >= v74)
      {
        goto LABEL_94;
      }

      v114 = *(type metadata accessor for _PromptToolData(0) - 8);
      v115 = *(v113 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v6 + 8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v117 = *(v65 + 16);
        sub_22C591324();
        v65 = v118;
      }

      v71 = *(v65 + 16);
      v116 = *(v65 + 24);
      if (v71 >= v116 >> 1)
      {
        sub_22C369AB0(v116);
        sub_22C591324();
        v65 = v119;
      }

      *(v65 + 16) = v71 + 1;
      *(v65 + 8 * v71 + 32) = v115;
      ++v6;
      v113 = v232;
    }

    v120 = v230;

    v121 = sub_22C525B58(v120, v113);
    v122 = sub_22C526684(v121);

    v123 = v219;
    v124 = *(v219 + 16);
    v125 = MEMORY[0x277D84F90];
    v226 = v122;
    v227 = 0;
    if (v124)
    {
      v126 = sub_22C633A1C(1);
      if (v127)
      {
        v128 = *(*(v123 + 56) + 8 * v126);
      }

      else
      {
        v128 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v128 = MEMORY[0x277D84F90];
    }

    v129 = *(v128 + 16);
    if (v129)
    {
      v235 = v125;
      sub_22C3B657C(0, v129, 0);
      v130 = v235;
      sub_22C37054C();
      v225 = v128;
      v132 = v128 + v131;
      v231 = *(v133 + 72);
      v134 = v238;
      v135 = v214;
      do
      {
        sub_22C36AB10();
        v136 = v233;
        sub_22C528DF8(v132, v233, v137);
        (*v228)(v135, v136, v134);
        sub_22C38BA40();
        sub_22C528F18(v136, v138);
        v235 = v130;
        v140 = *(v130 + 16);
        v139 = *(v130 + 24);
        if (v140 >= v139 >> 1)
        {
          v143 = sub_22C369AB0(v139);
          sub_22C3B657C(v143, v140 + 1, 1);
          v130 = v235;
        }

        *(v130 + 16) = v140 + 1;
        sub_22C37054C();
        (*(v142 + 32))(v130 + v141 + *(v142 + 72) * v140, v135, v134);
        v132 += v231;
        --v129;
      }

      while (v129);

      v66 = v221;
      v106 = v218;
    }

    else
    {

      v130 = MEMORY[0x277D84F90];
    }

    a2 = &v209;
    MEMORY[0x28223BE20](v144);
    sub_22C36D84C(&v209);
    sub_22C566700(v130, &unk_283FAF218, v66, v106, sub_22C528DEC, v145);
    v147 = v146;

    v148 = *(v147 + 16);
    if (v148)
    {
      v238 = v65;
      v235 = MEMORY[0x277D84F90];
      sub_22C3886F8();
      sub_22C3B63D4();
      v149 = 32;
      v150 = v235;
      v233 = xmmword_22C919C60;
      do
      {
        v151 = v147;
        v152 = *(v147 + v149);
        v153 = swift_allocObject();
        *(v153 + 16) = v233;
        sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
        sub_22C369AEC();
        v154 = swift_allocObject();
        *(v154 + 16) = v152;
        *(v153 + 32) = v154;
        sub_22C369AEC();
        v155 = swift_allocObject();
        sub_22C369AEC();
        v156 = swift_allocObject();
        *(v156 + 16) = v153 | 0x8000000000000000;
        *(v155 + 16) = v156;
        v235 = v150;
        a2 = *(v150 + 16);
        v157 = *(v150 + 24);

        if (a2 >= v157 >> 1)
        {
          sub_22C3B63D4();
          v150 = v235;
        }

        *(v150 + 16) = a2 + 1;
        *(v150 + 8 * a2 + 32) = v155 | 0x6000000000000000;
        v149 += 8;
        --v148;
        v147 = v151;
      }

      while (v148);

      v66 = v221;
      v65 = v238;
    }

    else
    {

      v150 = MEMORY[0x277D84F90];
    }

    v235 = v150;
    sub_22C3CD124(v65);
    v158 = sub_22C47D738(2570, 0xE200000000000000, v235);

    v159 = MEMORY[0x277D84F90];
    v235 = MEMORY[0x277D84F90];
    v229 = v158;
    v160 = v227;
    sub_22C496A94();
    v71 = v232;
    if (!v160)
    {
      v162 = v161;
      v40 = 0;

      sub_22C36A83C();
      v163 = swift_allocObject();
      v164 = v163;
      if ((v162 & 1) == 0)
      {
        *(v163 + 16) = 0x6F68747970606060;
        *(v163 + 24) = 0xEA00000000000A6ELL;
        v6 = v163;
        sub_22C591324();
        v167 = v166;
        v65 = *(v166 + 16);
        v74 = *(v166 + 24);
        v168 = v74 >> 1;
        a2 = v65 + 1;
        if (v74 >> 1 > v65)
        {
          goto LABEL_67;
        }

        goto LABEL_97;
      }

      v235 = 0;
      v236 = 0xE000000000000000;
      *(v163 + 16) = sub_22C90A49C();
      *(v164 + 24) = v165;
      v228 = v164;
      goto LABEL_72;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22C527D9C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void (*a3)(void *__return_ptr, void, void, void, void)@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v55 = a3;
  v56 = a4;
  v54 = a2;
  v57 = a5;
  v7 = sub_22C9063DC();
  v61 = *(v7 - 8);
  v8 = *(v61 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v51 - v16;
  v18 = sub_22C908EAC();
  v60 = *(v18 - 8);
  v19 = *(v60 + 64);
  MEMORY[0x28223BE20](v18);
  v62 = v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v25 = v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for RenderableTool();
  v26 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v53 = (v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_22C6058B0(0, a1);
  if (v28)
  {
    v29 = *(v28 + 16);
    if (v29)
    {
      v51[1] = v28;
      v51[2] = v5;
      v30 = v28 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
      v31 = *(v22 + 72);
      v61 = v60 + 32;
      v32 = MEMORY[0x277D84F90];
      v58 = v31;
      v59 = v18;
      do
      {
        sub_22C528DF8(v30, v25, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
        sub_22C9036BC();
        sub_22C528EA8(v15, v17);
        sub_22C528F18(v25, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
        if (sub_22C370B74(v17, 1, v18) == 1)
        {
          sub_22C3AC228(v17, &qword_27D9BC1E8, &qword_22C9123B0);
        }

        else
        {
          v33 = v15;
          v34 = *v61;
          (*v61)(v62, v17, v18);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = *(v32 + 16);
            sub_22C591C4C();
            v32 = v38;
          }

          v35 = *(v32 + 16);
          if (v35 >= *(v32 + 24) >> 1)
          {
            sub_22C591C4C();
            v32 = v39;
          }

          *(v32 + 16) = v35 + 1;
          v36 = v32 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v35;
          v18 = v59;
          v34(v36, v62, v59);
          v15 = v33;
          v31 = v58;
        }

        v30 += v31;
        --v29;
      }

      while (v29);
    }

    else
    {

      v32 = MEMORY[0x277D84F90];
    }

    v49 = v53;
    *v53 = v32;
    swift_storeEnumTagMultiPayload();
    v50 = type metadata accessor for ToolRenderer_v2_0();
    sub_22C4B8858(v49, (v54 + *(v50 + 20)), v55, v56, v57);
    return sub_22C528F18(v49, type metadata accessor for RenderableTool);
  }

  else
  {
    v40 = v57;
    v41 = v61;
    v42 = v7;
    sub_22C903F7C();
    v43 = sub_22C9063CC();
    v44 = sub_22C90AACC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v63 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_22C36F9F4(0x695F686372616573, 0xED00007070615F6ELL, &v63);
      sub_22C36FF94(v46);
      MEMORY[0x2318B9880](v46, -1, -1);
      MEMORY[0x2318B9880](v45, -1, -1);
    }

    (*(v41 + 8))(v10, v42);
    v47 = type metadata accessor for _PromptToolData(0);
    return sub_22C36C640(v40, 1, 1, v47);
  }
}

uint64_t sub_22C5283B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[1] = a4;
  v18[2] = a5;
  v6 = sub_22C90963C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C90941C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a3 + *(type metadata accessor for ToolRenderer_v2_0() + 20);
  sub_22C483378();
  sub_22C374168(v19, v19[3]);
  MEMORY[0x2318B6CE0]();
  (*(v7 + 104))(v10, *MEMORY[0x277D72E10], v6);
  sub_22C4FCD10();
  (*(v7 + 8))(v10, v6);
  (*(v12 + 8))(v15, v11);
  return sub_22C36FF94(v19);
}

uint64_t sub_22C5285BC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v71 = a4;
  v72 = a3;
  LODWORD(v73) = a2;
  v6 = sub_22C908D6C();
  v7 = sub_22C369824(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C90977C();
  v15 = sub_22C369824(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C374168(v4, v4[3]);
  sub_22C47FCDC();
  v22 = sub_22C9096FC();
  v75 = v21;
  v24 = a1;
  v25 = sub_22C4FB170(v22, v23, sub_22C436434, v74, v72);
  v27 = v26;

  (*(v17 + 8))(v21, v14);
  if (v73)
  {
    goto LABEL_2;
  }

  v69 = v25;
  v70 = v27;
  v72 = v24;
  result = sub_22C908DEC();
  v32 = 0;
  v33 = *(result + 16);
  v73 = v9 + 16;
  v34 = *MEMORY[0x277D72188];
  v35 = *MEMORY[0x277D72178];
  v36 = (v9 + 8);
  while (1)
  {
    if (v33 == v32)
    {
      v32 = v33;
      goto LABEL_11;
    }

    v37 = *(v9 + 80);
    sub_22C36BA94();
    v39 = v38;
    (*(v9 + 16))(v13, v38 + v40 + *(v9 + 72) * v32, v6);
    v41 = (*(v9 + 88))(v13, v6);
    if (v41 == v34)
    {
      break;
    }

    if (v41 == v35)
    {
      goto LABEL_10;
    }

    (*v36)(v13, v6);
    ++v32;
    result = v39;
  }

  (*v36)(v13, v6);
LABEL_10:
  result = v39;
LABEL_11:
  v42 = *(result + 16);
  v44 = v69;
  v43 = v70;
  if (v32 == v42)
  {

    v45 = HIBYTE(v43) & 0xF;
    if ((v43 & 0x2000000000000000) == 0)
    {
      v45 = v44 & 0xFFFFFFFFFFFFLL;
    }

    if (v45)
    {
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_22C90F870;
      *(v28 + 32) = v44;
      *(v28 + 40) = v43;
      *(v28 + 48) = sub_22C908E8C();
      *(v28 + 56) = v46;
      v30 = 2;
LABEL_16:
      v76 = MEMORY[0x277D84F90];
      sub_22C3B5E2C();
      v47 = v76;
      v48 = (v28 + 40);
      do
      {
        v49 = *(v48 - 1);
        v50 = *v48;

        sub_22C36BA00();
        v51 = sub_22C90A2CC();
        v53 = v52;

        v76 = v47;
        v55 = *(v47 + 16);
        v54 = *(v47 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_22C369AB0(v54);
          sub_22C3B5E2C();
          v47 = v76;
        }

        *(v47 + 16) = v55 + 1;
        v56 = v47 + 16 * v55;
        *(v56 + 32) = v51;
        *(v56 + 40) = v53;
        v48 += 2;
        --v30;
      }

      while (v30);

      v76 = v47;
      v57 = sub_22C36BA00();
      sub_22C3A5908(v57, v58);
      sub_22C3D32C8(&qword_28142F9F0, &qword_27D9BB5D0, &unk_22C9112A0);
      v59 = sub_22C90A04C();
      v61 = v60;

      v62 = v71;
      *v71 = v59;
      v62[1] = v61;
      v62[2] = 0;
      v62[3] = 0;
      *(v62 + 32) = 0;
      return result;
    }

LABEL_2:

    sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_22C90F800;
    *(v28 + 32) = sub_22C908E8C();
    *(v28 + 40) = v29;
    v30 = 1;
    goto LABEL_16;
  }

  if (v32 >= v42)
  {
    __break(1u);
  }

  else
  {
    v63 = *(v9 + 80);
    sub_22C36BA94();
    v66 = v64 + v65 + *(v9 + 72) * v32;
    result = sub_22C4AF1C0();
    if ((result & 1) == 0)
    {

      v67 = v71;
      *v71 = xmmword_22C91A1A0;
      v67[2] = v44;
      v67[3] = v43;
      *(v67 + 32) = 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_22C528A78(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C374168(v2, v2[3]);
  v15 = sub_22C90381C();
  v16 = v5;
  v17 = a2;
  v18 = v4;
  v6 = sub_22C4FB170(v15, v5, sub_22C430BE0, &v14, a2);
  v8 = v7;

  v19 = v6;
  v20 = v8;

  MEMORY[0x2318B7850](32, 0xE100000000000000);

  v10 = v19;
  v9 = v20;
  v11 = sub_22C90382C();
  v13 = v12;
  v19 = v10;
  v20 = v9;

  MEMORY[0x2318B7850](v11, v13);

  sub_22C90A2CC();
  sub_22C370704();
  sub_22C374C24();
}

double sub_22C528B88@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_22C5285BC(a1, a2, a3, v8);
  v5 = v9;
  result = *v8;
  v7 = v8[1];
  *a4 = v8[0];
  *(a4 + 16) = v7;
  *(a4 + 32) = v5;
  return result;
}

uint64_t type metadata accessor for ToolRenderer_v2_0()
{
  result = qword_2814341B8;
  if (!qword_2814341B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22C528C48()
{
  sub_22C908AEC();
  if (v0 <= 0x3F)
  {
    sub_22C528CEC();
    if (v1 <= 0x3F)
    {
      sub_22C528D48();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_22C528CEC()
{
  result = qword_281434978[0];
  if (!qword_281434978[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_281434978);
  }

  return result;
}

void sub_22C528D48()
{
  if (!qword_281431EC8[0])
  {
    sub_22C3AC1A0(&qword_27D9BD9F0, &qword_22C91A228);
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, qword_281431EC8);
    }
  }
}

uint64_t sub_22C528DF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_22C369A9C(v4);
  v6 = *(v5 + 16);
  v7 = sub_22C36BA00();
  v8(v7);
  return a2;
}

uint64_t sub_22C528E50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_22C369A9C(v4);
  v6 = *(v5 + 32);
  v7 = sub_22C36BA00();
  v8(v7);
  return a2;
}

uint64_t sub_22C528EA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C528F18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C369848(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C528F6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_22C3A5908(a3, a4);
  sub_22C369A9C(v5);
  v7 = *(v6 + 16);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

void sub_22C528FDC()
{
  *(v3 - 288) = v2;
  *(v3 - 280) = v1;
  *(v3 - 296) = v0;
}

void sub_22C529050()
{
  if (!qword_27D9BD5F8)
  {
    sub_22C3AC1A0(&qword_27D9BD600, &qword_22C918528);
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BD5F8);
    }
  }
}

void sub_22C5290FC()
{
  sub_22C457168(319, &qword_27D9BD838);
  if (v0 <= 0x3F)
  {
    sub_22C457168(319, &qword_27D9BD840);
    if (v1 <= 0x3F)
    {
      sub_22C529050();
      if (v2 <= 0x3F)
      {
        sub_22C908AEC();
        if (v3 <= 0x3F)
        {
          sub_22C90077C();
          if (v4 <= 0x3F)
          {
            type metadata accessor for FullPlannerPreferences();
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

uint64_t sub_22C529214(uint64_t a1, int a2)
{
  if (a2 == 2147483646)
  {
    sub_22C38BA58();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_22C374A1C();
    type metadata accessor for FullPlannerPreferences();
    v6 = sub_22C36ECCC(*(v2 + 20));

    return sub_22C370B74(v6, v7, v8);
  }
}

uint64_t sub_22C5292A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    type metadata accessor for FullPlannerPreferences();
    v6 = sub_22C36ECCC(*(a4 + 20));

    return sub_22C36C640(v6, v7, a2, v8);
  }

  return result;
}

void sub_22C529340()
{
  sub_22C529050();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FullPlannerPreferences();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C52940C()
{
  sub_22C457168(319, &qword_27D9BD7A0);
  if (v0 <= 0x3F)
  {
    sub_22C457168(319, &qword_281430540);
    if (v1 <= 0x3F)
    {
      type metadata accessor for DynamicEnumerationRenderer_v1_0(319);
      if (v2 <= 0x3F)
      {
        sub_22C529050();
        if (v3 <= 0x3F)
        {
          type metadata accessor for FullPlannerPreferences();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22C5294F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = sub_22C3A5908(&qword_27D9BB028, &unk_22C90FAD0);
  v5 = *(*(v57 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v57);
  v56 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v55 = (&v44 - v8);
  v54 = sub_22C3A5908(&qword_27D9BDA78, &qword_22C91A3F0);
  v9 = *(*(v54 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v54);
  v53 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v52 = (&v44 - v13);
  MEMORY[0x28223BE20](v12);
  v51 = (&v44 - v14);
  v15 = *(a3 + 16);
  v61 = MEMORY[0x277D84F90];
  sub_22C3B63D4();
  v16 = v61;
  v50 = v15;
  if (v15)
  {
    v48 = a2 + 32;
    v17 = sub_22C3A5908(&qword_27D9BB018, &unk_22C91A3E0);
    v18 = 0;
    v46 = *(v17 - 8);
    v47 = v17;
    v45 = a3 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v49 = *(a2 + 16);
    v19 = v53;
    while (v49 != v18)
    {
      v20 = v57;
      v21 = *(v57 + 48);
      v22 = v55;
      *v55 = *(v48 + 8 * v18);
      sub_22C4E719C(v45 + *(v46 + 72) * v18, v22 + v21, &qword_27D9BB018, &unk_22C91A3E0);
      v23 = v22;
      v24 = v56;
      sub_22C4E7208(v23, v56, &qword_27D9BB028, &unk_22C90FAD0);
      v25 = *(v20 + 48);
      v26 = v54;
      v27 = *(v54 + 48);
      v28 = *v24;
      v60 = v16;
      v29 = v51;
      *v51 = v28;
      sub_22C4E7208(v24 + v25, v29 + v27, &qword_27D9BB018, &unk_22C91A3E0);
      v30 = v52;
      sub_22C4E719C(v29, v52, &qword_27D9BDA78, &qword_22C91A3F0);
      v31 = *v30;
      v32 = *(v26 + 48);
      v33 = v30 + v32;
      v34 = *(v47 + 48);
      v35 = &v33[v34];
      v36 = v19 + v32;
      *v19 = v31;
      v37 = (v19 + v32 + v34);
      v38 = sub_22C901FAC();
      v39 = *(*(v38 - 8) + 32);
      v40 = *v35;
      v58 = *(v35 + 1);
      v59 = v40;
      v39(v36, v33, v38);
      v41 = v58;
      *v37 = v59;
      v37[1] = v41;

      sub_22C36DD28(v19, &qword_27D9BDA78, &qword_22C91A3F0);
      v42 = v29;
      v16 = v60;
      sub_22C36DD28(v42, &qword_27D9BDA78, &qword_22C91A3F0);
      v61 = v16;
      v43 = *(v16 + 16);
      if (v43 >= *(v16 + 24) >> 1)
      {
        sub_22C3B63D4();
        v16 = v61;
      }

      ++v18;
      *(v16 + 16) = v43 + 1;
      *(v16 + 8 * v43 + 32) = v31;
      if (v50 == v18)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22C5298D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = 0;
  v41 = *(a3 + 16);
  v5 = MEMORY[0x277D84F98];
  v46 = MEMORY[0x277D84F98];
  v6 = (a3 + 72);
  v40 = a2;
  while (1)
  {
    if (v41 == v4)
    {

      return v5;
    }

    if (v4 >= *(a2 + 16))
    {
      break;
    }

    if (v4 >= *(v3 + 16))
    {
      goto LABEL_20;
    }

    v42 = v6;
    v43 = v4;
    v7 = *(a2 + 8 * v4 + 32);
    v8 = *(v6 - 5);
    v9 = *(v6 - 4);
    v11 = *(v6 - 3);
    v10 = *(v6 - 2);
    v13 = *(v6 - 1);
    v12 = *v6;

    sub_22C456C94(v11, v10);
    v44 = v7;

    sub_22C456C94(v11, v10);
    sub_22C456D48(v11, v10);
    v45 = v8;
    v15 = sub_22C36E2BC(v8, v9);
    v16 = v5[2];
    v17 = (v14 & 1) == 0;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_21;
    }

    v18 = v14;
    if (v5[3] < v16 + v17)
    {
      sub_22C88EF28();
      v5 = v46;
      v19 = sub_22C36E2BC(v45, v9);
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_23;
      }

      v15 = v19;
    }

    if (v18)
    {

      v21 = v5[7];
      v22 = *(v21 + 8 * v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v21 + 8 * v15) = v22;
      v38 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = *(v22 + 16);
        sub_22C5933B8();
        v22 = v35;
        *(v21 + 8 * v15) = v35;
      }

      v24 = *(v22 + 16);
      v25 = v24 + 1;
      if (v24 >= *(v22 + 24) >> 1)
      {
        sub_22C5933B8();
        v25 = v24 + 1;
        v22 = v36;
        *(v38 + 8 * v15) = v36;
      }

      v27 = v42;
      v26 = v43;
      *(v22 + 16) = v25;
      v28 = (v22 + 56 * v24);
      v28[4] = v44;
      v28[5] = v45;
      v28[6] = v9;
      v28[7] = v11;
      v28[8] = v10;
      v28[9] = v13;
      v28[10] = v12;
      v3 = a3;
      a2 = v40;
    }

    else
    {
      sub_22C3A5908(&qword_27D9BDA50, &qword_22C91A3A8);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_22C90F800;
      *(v29 + 32) = v44;
      *(v29 + 40) = v45;
      *(v29 + 48) = v9;
      *(v29 + 56) = v11;
      *(v29 + 64) = v10;
      *(v29 + 72) = v13;
      *(v29 + 80) = v12;
      v5[(v15 >> 6) + 8] |= 1 << v15;
      v30 = (v5[6] + 16 * v15);
      *v30 = v45;
      v30[1] = v9;
      *(v5[7] + 8 * v15) = v29;
      v31 = v5[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_22;
      }

      v5[2] = v33;
      a2 = v40;
      v27 = v42;
      v26 = v43;
    }

    v6 = v27 + 6;
    v4 = v26 + 1;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C529BDC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  v6 = swift_allocBox();
  v8 = v7;
  sub_22C52ED28(a1, v7, type metadata accessor for PromptTreeIdentifier);
  type metadata accessor for PromptTreeIdentifier.Label(0);
  v9 = swift_allocBox();
  sub_22C486784();
  v10 = a2(v9 | 0x2000000000000000);
  if (v2)
  {

    sub_22C52ED84(v8, type metadata accessor for PromptTreeIdentifier);
    return swift_deallocBox();
  }

  else
  {
    v12 = v10;

    v13 = *(v5 + 48);
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v8 + v13) = v14;
    return v6 | 0x4000000000000000;
  }
}

unint64_t sub_22C529D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C36D2A8();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v6 + 32) = v7;

  return v6 | 0x8000000000000000;
}

void sub_22C529D80()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_22C909A3C();
  v9 = sub_22C369824(v8);
  v75 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v15 = v14 - v13;
  v16 = v0[8];
  v17 = v0[9];
  sub_22C3766E0(v0 + 5, v16);
  v18 = (*(v17 + 8))(v5, v3, v16, v17);
  v20 = v19;
  v21 = type metadata accessor for EnumerationDefinitionPromptRenderer_v3_0(0);
  v22 = sub_22C577AA0(v5, v1 + v21[7], v1 + v21[8]);
  v68 = v7;
  sub_22C378A4C(v1, v83);
  v23 = *(v22 + 16);
  v24 = MEMORY[0x277D84F90];
  v77 = v8;
  v73 = v22;
  v69 = v1;
  v67 = v20;
  v64 = v18;
  if (v23)
  {
    v82 = MEMORY[0x277D84F90];
    sub_22C3B68D4(0, v23, 0);
    v25 = 0;
    v24 = v82;
    v71 = v22 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
    while (v25 < *(v22 + 16))
    {
      v26 = v23;
      (*(v75 + 16))(v15, v71 + *(v75 + 72) * v25, v8);
      v27 = v84;
      v28 = v85;
      sub_22C3766E0(v83, v84);
      (*(v28 + 16))(&v78, v15, v27, v28);
      (*(v75 + 8))(v15, v8);
      v29 = v78;
      v30 = v79;
      v31 = v80;
      v32 = v81;
      v82 = v24;
      v34 = *(v24 + 16);
      v33 = *(v24 + 24);
      if (v34 >= v33 >> 1)
      {
        v65 = v78;
        v62 = v79;
        sub_22C3B68D4(v33 > 1, v34 + 1, 1);
        v30 = v62;
        v29 = v65;
        v24 = v82;
      }

      ++v25;
      *(v24 + 16) = v34 + 1;
      v35 = v24 + 48 * v34;
      *(v35 + 32) = v29;
      *(v35 + 48) = v30;
      *(v35 + 64) = v31;
      *(v35 + 72) = v32;
      v23 = v26;
      v8 = v77;
      v22 = v73;
      if (v26 == v25)
      {
        v1 = v69;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    sub_22C36FF94(v83);
    v36 = sub_22C47F410(v24);
    v38 = v37;

    v66 = v38;
    if (v38)
    {
      v63 = 0;
      v61 = 0;
      v70 = v36;
    }

    else
    {
      v83[0] = v36;
      sub_22C50B070(v36, 0);
      sub_22C52A418(v83, v73, &v78);
      sub_22C50B2CC(v36, 0);
      sub_22C50B2CC(v36, 0);
      v63 = *(&v78 + 1);
      v70 = v78;
      v61 = v79;
    }

    v39 = v1 + v21[9];
    v40 = *(type metadata accessor for FullPlannerPreferences() + 60);
    sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
    sub_22C901EDC();
    sub_22C577E5C();
    v42 = v41;

    v43 = *(v42 + 16);
    if (v43)
    {
      *&v78 = MEMORY[0x277D84F90];
      sub_22C3B5E2C();
      v44 = v78;
      v45 = v75 + 16;
      v46 = v42 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
      v74 = *(v75 + 72);
      v76 = *(v75 + 16);
      v72 = (v45 - 8);
      do
      {
        v47 = v45;
        v76(v15, v46, v8);
        v48 = sub_22C909A2C();
        v50 = v49;
        (*v72)(v15, v8);
        *&v78 = v44;
        v51 = *(v44 + 16);
        if (v51 >= *(v44 + 24) >> 1)
        {
          sub_22C3B5E2C();
          v44 = v78;
        }

        *(v44 + 16) = v51 + 1;
        v52 = v44 + 16 * v51;
        *(v52 + 32) = v48;
        *(v52 + 40) = v50;
        v46 += v74;
        --v43;
        v8 = v77;
        v45 = v47;
      }

      while (v43);
    }

    else
    {

      v44 = MEMORY[0x277D84F90];
    }

    if (v66)
    {

      sub_22C3871A0(v70);
    }

    else
    {
      *&v78 = v70;
      *(&v78 + 1) = v63;
      *&v79 = v61;

      sub_22C52ABC0(&v78, v44, v83);

      v53 = v83[0];

      *&v78 = v53;

      sub_22C52AD8C(&v78, v64, v67, v83);
      swift_bridgeObjectRelease_n();
      v54 = v83[0];
      v83[0] = v70;
      v83[1] = v63;
      v83[2] = v61;

      sub_22C52B160(v83, v69, v64, v67, &v78);

      v55 = v78;
      v56 = v79;

      sub_22C52ECD8(v70, v63, v61, 0);

      sub_22C36BA00();
      sub_22C37FC50();
      sub_22C456C94(v57, v58);
      sub_22C36BA00();
      sub_22C37FC50();
      sub_22C456D48(v59, v60);

      *v68 = v54;
      *(v68 + 8) = v55;
      *(v68 + 24) = v56;
      *(v68 + 40) = 0;
    }

    sub_22C36CC48();
  }
}

uint64_t sub_22C52A418@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v36 = a3;
  v5 = sub_22C909A3C();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v47 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_22C3A5908(&qword_27D9BD920, &qword_22C919B18);
  v9 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v38 = &v35 - v10;
  v11 = *a1;
  v12 = (v11 + 64);
  v13 = *(a2 + 16);
  v42 = v6;
  v43 = v13;
  v41 = v6 + 2;
  v37 = (v6 + 4);
  v45 = a2;

  v44 = v11;

  v14 = 0;
  v48 = MEMORY[0x277D84F90];
  for (i = v5; ; v5 = i)
  {
    if (v43 == v14)
    {

LABEL_12:
      sub_22C8D57F4(v48);

      v49 = 0;
      *&v50 = MEMORY[0x277D84F90];
      *(&v50 + 1) = MEMORY[0x277D84F90];

      sub_22C52E178(v31, sub_22C52EC30, 0, &v49);

      v33 = v50;
      v34 = v36;
      *v36 = v49;
      *(v34 + 1) = v33;
      return result;
    }

    (v42[2])(v47, v45 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + v42[9] * v14, v5);
    v15 = *(v44 + 16);
    if (v14 == v15)
    {

      (v42[1])(v47, v5);
      goto LABEL_12;
    }

    if (v14 >= v15)
    {
      break;
    }

    v17 = *(v12 - 4);
    v16 = *(v12 - 3);
    v18 = *(v12 - 2);
    v19 = *(v12 - 1);
    v6 = *v12;
    v20 = v5;
    v21 = v38;
    v22 = &v38[*(v39 + 48)];
    (*v37)(v38, v47, v20);
    *v22 = v17;
    *(v22 + 1) = v16;
    *(v22 + 2) = v18;
    *(v22 + 3) = v19;
    *(v22 + 4) = v6;

    sub_22C456C94(v16, v18);

    sub_22C456C94(v16, v18);
    v23 = sub_22C909A2C();
    v46 = v24;
    sub_22C36DD28(v21, &qword_27D9BD920, &qword_22C919B18);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = *(v48 + 16);
      sub_22C5932F8();
      v48 = v29;
    }

    v25 = *(v48 + 16);
    if (v25 >= *(v48 + 24) >> 1)
    {
      sub_22C5932F8();
      v48 = v30;
    }

    v26 = v48;
    *(v48 + 16) = v25 + 1;
    v27 = (v26 + 56 * v25);
    v27[4] = v17;
    v27[5] = v23;
    v27[6] = v46;
    v27[7] = v16;
    v27[8] = v18;
    v27[9] = v19;
    v27[10] = v6;
    v12 += 5;
    ++v14;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22C52A800@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v47 = a3;
  v49 = sub_22C9063DC();
  v51 = *(v49 - 8);
  v5 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v55 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  v12 = a1[5];
  v53 = v8;
  v54 = v11;
  v13 = v9;
  v57 = v9;
  v14 = a2[1];
  v43 = *a2;
  v15 = a2[3];
  v56 = a2[2];
  v46 = v15;
  v17 = a2[4];
  v16 = a2[5];
  v52 = v17;
  sub_22C903F7C();

  sub_22C456C94(v13, v10);

  v18 = v16;
  sub_22C456C94(v56, v15);
  v48 = v7;
  v19 = sub_22C9063CC();
  LODWORD(v15) = sub_22C90AADC();

  v20 = v10;
  v21 = v10;
  v22 = v12;
  sub_22C456D48(v57, v21);

  v23 = v46;
  v45 = v18;
  sub_22C456D48(v56, v46);
  v44 = v15;
  if (os_log_type_enabled(v19, v15))
  {
    v24 = swift_slowAlloc();
    v50 = v20;
    v25 = v24;
    v41 = swift_slowAlloc();
    v64 = v41;
    *v25 = 136315394;
    v58 = v53;
    v59 = v55;
    v26 = v57;
    v60 = v57;
    v61 = v50;
    v62 = v54;
    v63 = v22;

    sub_22C456C94(v26, v50);
    sub_22C3A5908(&qword_27D9BAFC0, &qword_22C90D860);
    v27 = sub_22C90A1AC();
    v42 = v22;
    v29 = sub_22C36F9F4(v27, v28, &v64);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    v58 = v43;
    v59 = v14;
    v30 = v56;
    v60 = v56;
    v61 = v23;
    v62 = v52;
    v63 = v45;

    sub_22C456C94(v30, v23);
    v31 = sub_22C90A1AC();
    v33 = sub_22C36F9F4(v31, v32, &v64);

    *(v25 + 14) = v33;
    v22 = v42;
    _os_log_impl(&dword_22C366000, v19, v44, "❗️ Folding enum cases, but identifier has already been seen.\nTaking old value: %s\nover new value: %s", v25, 0x16u);
    v34 = v41;
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v34, -1, -1);
    v35 = v25;
    v20 = v50;
    MEMORY[0x2318B9880](v35, -1, -1);
  }

  (*(v51 + 8))(v48, v49);
  v36 = v47;
  v37 = v55;
  *v47 = v53;
  v36[1] = v37;
  v38 = v57;
  v36[2] = v57;
  v36[3] = v20;
  v36[4] = v54;
  v36[5] = v22;

  return sub_22C456C94(v38, v20);
}

void sub_22C52ABC0(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];

  v7 = sub_22C5298D8(v4, v5, v6);
  v8 = *(a2 + 16);
  v9 = (a2 + 40);
  v10 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  if (v8)
  {
    while (1)
    {
      if (*(v7 + 16))
      {
        v12 = *(v9 - 1);
        v13 = *v9;

        v14 = sub_22C36E2BC(v12, v13);
        v15 = v10;
        if (v16)
        {
          v15 = *(*(v7 + 56) + 8 * v14);
        }
      }

      else
      {
        v15 = v10;
      }

      v17 = *(v15 + 16);
      v18 = *(v11 + 16);
      if (__OFADD__(v18, v17))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v18 + v17 > *(v11 + 24) >> 1)
      {
        sub_22C5933B8();
        v11 = v19;
      }

      if (*(v15 + 16))
      {
        if ((*(v11 + 24) >> 1) - *(v11 + 16) < v17)
        {
          goto LABEL_21;
        }

        sub_22C3A5908(&qword_27D9BDA48, &qword_22C91A3A0);
        swift_arrayInitWithCopy();

        if (v17)
        {
          v20 = *(v11 + 16);
          v21 = __OFADD__(v20, v17);
          v22 = v20 + v17;
          if (v21)
          {
            goto LABEL_22;
          }

          *(v11 + 16) = v22;
        }
      }

      else
      {

        if (v17)
        {
          goto LABEL_20;
        }
      }

      v9 += 2;
      if (!--v8)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_18:

    *a3 = v11;
  }
}

uint64_t sub_22C52AD8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = *(*a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v42 = MEMORY[0x277D84F90];
    sub_22C3B63D4();
    v9 = v42;
    v10 = (v7 + 32);
    v11 = *(v42 + 16);
    do
    {
      v13 = *v10;
      v10 += 7;
      v12 = v13;
      v14 = *(v42 + 24);

      if (v11 >= v14 >> 1)
      {
        sub_22C3B63D4();
      }

      *(v42 + 16) = v11 + 1;
      *(v42 + 8 * v11++ + 32) = v12;
      --v8;
    }

    while (v8);
  }

  v15 = sub_22C3DB9B0(v9);

  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v16 + 32) = v17;
  v18 = sub_22C529D00(8236, 0xE200000000000000, v16 | 0x8000000000000000);

  v19 = swift_allocObject();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v19 + 16) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0xE000000000000000;
  sub_22C591324();
  v23 = v22;
  v24 = *(v22 + 16);
  v25 = v24 + 1;
  if (v24 >= *(v22 + 24) >> 1)
  {
    sub_22C591324();
    v23 = v37;
  }

  *(v23 + 16) = v25;
  *(v23 + 8 * v24 + 32) = v21;
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;
  v27 = *(v23 + 24);
  v28 = v24 + 2;

  if ((v24 + 2) > (v27 >> 1))
  {
    sub_22C591324();
    v23 = v38;
  }

  *(v23 + 16) = v28;
  *(v23 + 8 * v25 + 32) = v26;
  v29 = swift_allocObject();
  *(v29 + 16) = 0x726574694C203D20;
  *(v29 + 24) = 0xEB000000005B6C61;
  v30 = v24 + 3;
  if ((v24 + 3) > *(v23 + 24) >> 1)
  {
    sub_22C591324();
    v23 = v39;
  }

  *(v23 + 16) = v30;
  *(v23 + 8 * v28 + 32) = v29;
  v31 = v24 + 4;
  if ((v24 + 4) > *(v23 + 24) >> 1)
  {
    sub_22C591324();
    v23 = v40;
  }

  *(v23 + 16) = v31;
  *(v23 + 8 * v30 + 32) = v19 | 0x6000000000000000;
  v32 = swift_allocObject();
  *(v32 + 16) = 93;
  *(v32 + 24) = 0xE100000000000000;
  v33 = *(v23 + 24);

  if ((v24 + 5) > (v33 >> 1))
  {
    sub_22C591324();
    v23 = v41;
  }

  *(v23 + 16) = v24 + 5;
  *(v23 + 8 * v31 + 32) = v32;
  v34 = sub_22C3DB9B0(v23);

  v35 = swift_allocObject();
  result = swift_allocObject();
  *(result + 16) = v34;
  *(v35 + 16) = result;
  *a4 = v35 | 0x6000000000000000;
  return result;
}