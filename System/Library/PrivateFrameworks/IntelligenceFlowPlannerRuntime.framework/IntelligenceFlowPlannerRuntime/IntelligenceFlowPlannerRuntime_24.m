uint64_t sub_22C56AB48(uint64_t a1, uint64_t a2, uint64_t a3)
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
  *(v14 + 16) = 61;
  *(v14 + 24) = 0xE100000000000000;
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

uint64_t sub_22C56AE2C()
{
  sub_22C56C570(v0 + 16);
  sub_22C36A83C();

  return swift_deallocClassInstance();
}

void sub_22C56AEAC(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v219 = a3;
  v220 = a4;
  v217 = a2;
  v196 = a5;
  v7 = sub_22C9093BC();
  v8 = sub_22C369824(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C3698A8();
  sub_22C3698F8(v13);
  v202 = sub_22C90910C();
  v14 = sub_22C369824(v202);
  v201 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C3698A8();
  sub_22C3698F8(v18);
  *&v208 = sub_22C90963C();
  v19 = sub_22C369824(v208);
  v207 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C3698A8();
  sub_22C3698F8(v23);
  v205 = sub_22C90919C();
  v24 = sub_22C369824(v205);
  v204 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22C3698A8();
  sub_22C3698F8(v28);
  v215 = sub_22C902D0C();
  v29 = sub_22C369824(v215);
  v198 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22C3698A8();
  v214 = v33;
  v213 = sub_22C3A5908(&qword_27D9BDCF0, qword_22C91B608);
  v34 = sub_22C36985C(v213);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C369ABC();
  v211 = (v37 - v38);
  MEMORY[0x28223BE20](v39);
  v212 = &v191 - v40;
  v41 = sub_22C90906C();
  v42 = sub_22C369824(v41);
  v195 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22C369ABC();
  v194 = v46 - v47;
  MEMORY[0x28223BE20](v48);
  sub_22C3698F8(&v191 - v49);
  v50 = type metadata accessor for DirectionalTypedValue();
  v51 = sub_22C36985C(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22C369ABC();
  v56 = v54 - v55;
  v58 = MEMORY[0x28223BE20](v57);
  v60 = (&v191 - v59);
  v61 = MEMORY[0x28223BE20](v58);
  v209 = &v191 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v65 = (&v191 - v64);
  MEMORY[0x28223BE20](v63);
  v67 = &v191 - v66;
  v193 = a1;
  sub_22C56C20C(a1, &v191 - v66);
  v210 = v50;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v221 = v10;
  v69 = (v10 + 88);
  v216 = v7;
  if (EnumCaseMultiPayload == 1)
  {
    sub_22C56C20C(v67, v60);
    v70 = *v69;
    v71 = sub_22C38A990();
    v73 = v72(v71);
    if (v73 == *MEMORY[0x277D72A38])
    {
      v74 = *(v221 + 96);
      v75 = sub_22C38A990();
      v76(v75);
      v221 = *v60;
      swift_projectBox();
      v77 = sub_22C371958();
      v78(v77);
      sub_22C378A4C((v218 + 7), &v222);
      sub_22C36BEFC();
      v79 = MEMORY[0x277D72E08];
LABEL_7:
      v89 = sub_22C377EB4(v79);
      v90(v89);
      v91 = *(v5 + 8);
      sub_22C56C5B0();
      v92(v10);
LABEL_8:
      v60[1](v65, a1);
      (*(v7 + 8))(v10, v41);
      sub_22C36FF94(&v222);
LABEL_9:

LABEL_10:
      sub_22C56BE84(v67);
      return;
    }

    v93 = v221;
    if (v73 == *MEMORY[0x277D729E0])
    {
      v94 = *(v221 + 96);
      v95 = sub_22C38A990();
      v96(v95);
      v192.n128_u64[0] = *v60;
      swift_projectBox();
      sub_22C3774AC();
      v97(v194);
      v98 = sub_22C90905C();
      v99 = *(v98 + 16);
      if (!v99)
      {

        v100 = MEMORY[0x277D84F90];
        sub_22C56C5B0();
LABEL_36:
        sub_22C47FA7C(v100, v177);

        sub_22C36FB04(&v223.n128_i64[1]);
        v189(v194, v41);
        goto LABEL_9;
      }

      sub_22C37F300();
      v226 = MEMORY[0x277D84F90];
      sub_22C3B68D4(0, v99, 0);
      v41 = 0;
      v100 = v226;
      v207 = *(v98 + 16);
      v204 = v98 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
      v203 = v93 + 16;
      sub_22C37075C(v93 + 32);
      v201 = v101;
      LODWORD(v200) = *MEMORY[0x277D1D7E8];
      v199 = (v102 + 104);
      v198 = v102 + 8;
      LODWORD(v197) = *MEMORY[0x277D1D7D0];
      v206 = v98;
      v205 = v99;
      v67 = v211;
      while (v207)
      {
        if (!*(v98 + 16))
        {
          goto LABEL_41;
        }

        v103 = v213;
        v104 = *(v213 + 48);
        *(v93 + 72);
        *&v208 = v100;
        v105 = *(v93 + 16);
        v105(&v212[v104], v204, v7);
        v106 = sub_22C38721C();
        v107(v106);
        v108 = v209;
        v105(v209, &v67[v103], v7);
        swift_storeEnumTagMultiPayload();
        v109 = sub_22C3A5908(&qword_27D9BC208, &unk_22C912400);
        v110 = swift_allocBox();
        v111 = *(v109 + 48);
        sub_22C36BA4C(&v229);
        v114 = sub_22C3830F4(v112, v113);
        v115(v114);
        sub_22C36D6EC();
        v116 = swift_allocObject();
        sub_22C38901C(v116);
        v117 = *v199;
        sub_22C36D894(&v228);
        v117();
        v118 = v214;
        *v214 = v110;
        sub_22C36D894(v225);
        v117();
        sub_22C56AEAC(&v222, v108, v217 & 1, v219, v118);
        v100 = v208;
        sub_22C36BA4C(&v226);
        v119(v118, v7);
        sub_22C56BE84(v108);
        sub_22C36DD28(v67, &qword_27D9BDCF0, qword_22C91B608);
        v120 = v222;
        v121 = v223;
        v226 = v100;
        v123 = *(v100 + 16);
        v122 = *(v100 + 24);
        if (v123 >= v122 >> 1)
        {
          v124 = sub_22C369AB0(v122);
          v208 = v125;
          v191 = v126;
          sub_22C3B68D4(v124, v123 + 1, 1);
          v121 = v191;
          v120 = v208;
          v100 = v226;
        }

        *(v100 + 16) = v123 + 1;
        sub_22C376758((v100 + 48 * v123), v120, v121);
        v7 = v216;
        v93 = v221;
        v98 = v206;
        if (!v205)
        {

          sub_22C56C5B0();
          sub_22C56C5BC();
          goto LABEL_36;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

    if (v73 == *MEMORY[0x277D729F8])
    {
      v162 = *(v221 + 96);
      v65 = (v221 + 96);
      v163 = sub_22C38A990();
      v164(v163);
      v221 = *v60;
      swift_projectBox();
      v165 = sub_22C38BAD8();
      v166(v165);
      sub_22C378A4C((v218 + 12), &v222);
      sub_22C36BEFC();
      v167 = MEMORY[0x277D72E08];
LABEL_33:
      v173 = sub_22C377EB4(v167);
      v174(v173);
      v175 = *(v5 + 8);
      sub_22C56C5B0();
      v176(v10, v65, v219, v220, v10 + 88, v5);
      goto LABEL_8;
    }

LABEL_34:
    v179 = v221;
    v216 = *(v221 + 8);
    v180 = sub_22C36BE34();
    v181(v180);
    sub_22C378A4C((v218 + 2), &v222);
    v182 = v224;
    v218 = sub_22C374168(&v222, v223.n128_i64[1]);
    sub_22C56C20C(v193, v56);
    v183 = v199;
    (*(v179 + 32))(v199, v56, v7);
    v184 = v207;
    v185 = v206;
    v186 = v208;
    (*(v207 + 104))(v206, *MEMORY[0x277D72E08], v208);
    v187 = *(v182 + 8);
    sub_22C56C5B0();
    v188(v183);
    (*(v184 + 8))(v185, v186);
    v216(v183, v7);
    sub_22C36FF94(&v222);
    goto LABEL_10;
  }

  sub_22C56C20C(v67, v65);
  v80 = *v69;
  v81 = sub_22C36BE34();
  v83 = v82(v81);
  if (v83 == *MEMORY[0x277D72A38])
  {
    v84 = *(v221 + 96);
    v85 = sub_22C36BE34();
    v86(v85);
    v221 = *v65;
    swift_projectBox();
    v87 = sub_22C371958();
    v88(v87);
    sub_22C378A4C((v218 + 7), &v222);
    sub_22C36BEFC();
    v79 = MEMORY[0x277D72E10];
    goto LABEL_7;
  }

  if (v83 != *MEMORY[0x277D729E0])
  {
    if (v83 == *MEMORY[0x277D729F8])
    {
      v168 = *(v221 + 96);
      v169 = sub_22C36BE34();
      v170(v169);
      v221 = *v65;
      swift_projectBox();
      v171 = sub_22C38BAD8();
      v172(v171);
      sub_22C378A4C((v218 + 12), &v222);
      sub_22C36BEFC();
      v167 = MEMORY[0x277D72E10];
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  v127 = v221;
  v128 = *(v221 + 96);
  v129 = sub_22C36BE34();
  v130(v129);
  v131 = *v65;
  swift_projectBox();
  sub_22C3774AC();
  v132(v197);
  v133 = sub_22C90905C();
  if (!*(v133 + 16))
  {

    v135 = MEMORY[0x277D84F90];
    sub_22C56C5B0();
LABEL_38:
    sub_22C47FA7C(v135, v178);

    sub_22C36FB04(&v223.n128_i64[1]);
    v190(v197, v41);
    goto LABEL_9;
  }

  v194 = v131;
  sub_22C37F300();
  v226 = MEMORY[0x277D84F90];
  v206 = v134;
  sub_22C3B68D4(0, v134, 0);
  v41 = 0;
  v135 = v226;
  *&v208 = *(v133 + 16);
  v205 = v133 + ((*(v127 + 80) + 32) & ~*(v127 + 80));
  v204 = v127 + 16;
  sub_22C37075C(v127 + 32);
  v202 = v136;
  LODWORD(v201) = *MEMORY[0x277D1D7E8];
  v200 = (v137 + 104);
  v199 = (v137 + 8);
  LODWORD(v198) = *MEMORY[0x277D1D7D0];
  v138 = v127;
  v207 = v133;
  v67 = v211;
  while (v208)
  {
    if (!*(v133 + 16))
    {
      goto LABEL_42;
    }

    v139 = v213;
    *(v138 + 72);
    v140 = *(v138 + 16);
    v140(&v212[*(v213 + 48)], v205, v7);
    v141 = sub_22C38721C();
    v142(v141);
    v143 = v209;
    v140(v209, &v67[v139], v7);
    swift_storeEnumTagMultiPayload();
    v144 = sub_22C3A5908(&qword_27D9BC208, &unk_22C912400);
    v145 = swift_allocBox();
    v146 = *(v144 + 48);
    sub_22C36BA4C(&v230);
    v149 = sub_22C3830F4(v147, v148);
    v150(v149);
    sub_22C36D6EC();
    v151 = swift_allocObject();
    sub_22C38901C(v151);
    v152 = *v200;
    sub_22C36D894(&v229);
    v152();
    v153 = v214;
    *v214 = v145;
    sub_22C36D894(&v226);
    v152();
    sub_22C56AEAC(&v222, v143, v217 & 1, v219, v153);
    sub_22C36BA4C(v227);
    v154(v153, v7);
    sub_22C56BE84(v143);
    sub_22C36DD28(v67, &qword_27D9BDCF0, qword_22C91B608);
    v155 = v222;
    v156 = v223;
    v226 = v135;
    v158 = *(v135 + 16);
    v157 = *(v135 + 24);
    if (v158 >= v157 >> 1)
    {
      v159 = sub_22C369AB0(v157);
      v192 = v160;
      v191 = v161;
      sub_22C3B68D4(v159, v158 + 1, 1);
      v156 = v191;
      v155 = v192;
      v135 = v226;
    }

    *(v135 + 16) = v158 + 1;
    sub_22C376758((v135 + 48 * v158), v155, v156);
    v7 = v216;
    v138 = v221;
    v133 = v207;
    if (!v206)
    {

      sub_22C56C5B0();
      sub_22C56C5BC();
      goto LABEL_38;
    }
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

uint64_t sub_22C56BE84(uint64_t a1)
{
  v2 = type metadata accessor for DirectionalTypedValue();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C56BEE0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C1F4(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_22C51B424(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_22C56BF4C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22C56BFD8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 16 * a1;
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    memmove((v8 + 32), (v8 + 48), 16 * v7);
    *(v3 + 16) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

char *sub_22C56BFF0(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_22C56C01C(char *result, int64_t a2, char a3, char *a4)
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
    sub_22C3A5908(&qword_27D9BDCE8, &qword_22C91B600);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_22C56C20C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DirectionalTypedValue();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C56C5D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C902D3C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_22C369838();
  v36 = sub_22C90888C();
  v6 = sub_22C369824(v36);
  v34 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v12 = v11 - v10;
  v35 = sub_22C9088CC();
  v13 = sub_22C369824(v35);
  v33 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v19 = v18 - v17;
  v20 = *v2;
  result = *v2 + 32;
  v22 = -*(*v2 + 16);
  v23 = -1;
  while (1)
  {
    if (v22 + v23 == -1)
    {
      v32 = sub_22C9089DC();
      v30 = a2;
      v31 = 1;
      return sub_22C36C640(v30, v31, 1, v32);
    }

    if (++v23 >= *(v20 + 16))
    {
      break;
    }

    v24 = result + 40;
    sub_22C378A4C(result, v38);
    v25 = v39;
    v26 = v40;
    sub_22C374168(v38, v39);
    v27 = (*(v26 + 8))(a1, v25, v26);
    sub_22C36FF94(v38);
    result = v24;
    if (v27)
    {
      (*(v34 + 104))(v12, *MEMORY[0x277D1E6C0], v36);
      sub_22C9088AC();
      sub_22C90889C();
      (*(v33 + 32))(a2, v19, v35);
      v28 = *MEMORY[0x277D1E6F8];
      v29 = sub_22C9089DC();
      (*(*(v29 - 8) + 104))(a2, v28, v29);
      v30 = a2;
      v31 = 0;
      v32 = v29;
      return sub_22C36C640(v30, v31, 1, v32);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C56C8C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for RenderingState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C56C964(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_22C370B74(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_22C56CAB0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v17 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v17[1] = (a2 - 1);
            }
          }

          else
          {

            sub_22C36C640(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_22C56CCB0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22C56CCEC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_22C56CD2C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for PlannerPromptGenerationComponent(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22C56CE78()
{
  result = qword_27D9BDD88;
  if (!qword_27D9BDD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDD88);
  }

  return result;
}

__n128 sub_22C56CECC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  v12 = type metadata accessor for PlannerPromptGeneratorOutput();
  v13 = (a7 + v12[7]);
  *v13 = a2;
  v13[1] = a3;
  v14 = a7 + v12[8];
  v15 = *(a4 + 16);
  *v14 = *a4;
  *(v14 + 16) = v15;
  result = *(a4 + 32);
  *(v14 + 32) = result;
  *(v14 + 48) = *(a4 + 48);
  *(a7 + v12[9]) = a5;
  return result;
}

uint64_t sub_22C56CF84()
{
  sub_22C369980();
  v3 = v2;
  v1[59] = v4;
  v1[60] = v0;
  v1[57] = v5;
  v1[58] = v6;
  v7 = sub_22C9063DC();
  v1[61] = v7;
  v8 = *(v7 - 8);
  sub_22C369B5C();
  v1[62] = v9;
  v11 = *(v10 + 64) + 15;
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v12 = sub_22C90363C();
  v1[65] = v12;
  v13 = *(v12 - 8);
  sub_22C369B5C();
  v1[66] = v14;
  v16 = *(v15 + 64) + 15;
  v1[67] = swift_task_alloc();
  v17 = *(v3 + 16);
  v1[68] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v1[69] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C56D0D4, 0, 0);
}

uint64_t sub_22C56D0D4()
{
  v1 = v0[60];
  v2 = v1[4];
  v3 = v1[5];
  sub_22C374168(v1 + 1, v2);
  v4 = *(v3 + 16);
  sub_22C369B5C();
  v11 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v0[70] = v8;
  *v8 = v0;
  v8[1] = sub_22C56D204;
  v9 = v0[58];

  return (v11)(v0 + 2, v9, v2, v3);
}

uint64_t sub_22C56D204()
{
  sub_22C369980();
  v2 = *(*v1 + 560);
  v3 = *v1;
  sub_22C369970();
  *v4 = v3;
  *(v5 + 568) = v0;

  if (v0)
  {
    v6 = sub_22C56D75C;
  }

  else
  {
    v6 = sub_22C56D30C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22C56D30C()
{
  v60 = v0;
  v1 = v0[69];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
  v5 = v0[59];
  v6 = v0[60];
  memcpy(v0 + 14, v0 + 2, 0x60uLL);
  v7 = v6[9];
  v8 = v6[10];
  sub_22C374168(v6 + 6, v7);
  memcpy(__dst, v0 + 14, sizeof(__dst));
  (*(v8 + 16))(__dst, v7, v8);
  v10 = v0[14];
  v9 = v0[15];
  v11 = sub_22C573484(v10, v9, v0[16]);
  v12 = sub_22C5736FC(v10, v9, v11);
  v14 = v13;

  v15 = v0[24];
  __dst[0] = v15;
  PromptGrammar.redactedDescription.getter();
  v56 = v14;
  v57 = v12;
  sub_22C59BB68();

  (*(v3 + 104))(v2, *MEMORY[0x277D1EC40], v4);
  LOBYTE(v10) = sub_22C90362C();
  (*(v3 + 8))(v2, v4);
  if (v10)
  {
    v16 = v0[64];
    sub_22C903F7C();
    sub_22C56DEC4((v0 + 14), (v0 + 38));
    v17 = sub_22C9063CC();
    v18 = sub_22C90AABC();
    sub_22C56DF20((v0 + 14));
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[64];
    v22 = v0[61];
    v21 = v0[62];
    if (v19)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v59 = v24;
      sub_22C377EE4(4.8149e-34);
      PromptGrammar.description.getter();
      if (v26)
      {
        v27 = v26;
      }

      else
      {
        v25 = 7104878;
        v27 = 0xE300000000000000;
      }

      v28 = sub_22C36F9F4(v25, v27, &v59);

      *(v23 + 4) = v28;
      sub_22C371988(&dword_22C366000, v29, v30, "Grammar:\n%s");
      sub_22C36FF94(v24);
      v31 = v24;
LABEL_12:
      MEMORY[0x2318B9880](v31, -1, -1);
      MEMORY[0x2318B9880](v23, -1, -1);

      (*(v21 + 8))(v15, v22);
      goto LABEL_14;
    }
  }

  else
  {
    v32 = v0[63];
    sub_22C903F7C();
    sub_22C56DEC4((v0 + 14), (v0 + 26));
    v17 = sub_22C9063CC();
    v33 = sub_22C90AABC();
    sub_22C56DF20((v0 + 14));
    v34 = os_log_type_enabled(v17, v33);
    v21 = v0[62];
    v20 = v0[63];
    v22 = v0[61];
    if (v34)
    {
      v23 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v59 = v35;
      sub_22C377EE4(4.845e-34);
      v36 = PromptGrammar.redactedDescription.getter();
      if (v37)
      {
        v38 = v37;
      }

      else
      {
        v36 = 7104878;
        v38 = 0xE300000000000000;
      }

      v39 = sub_22C36F9F4(v36, v38, &v59);

      *(v23 + 4) = v39;
      sub_22C371988(&dword_22C366000, v40, v41, "Grammar:\n%{private}s");
      sub_22C36FF94(v35);
      v31 = v35;
      goto LABEL_12;
    }
  }

  (*(v21 + 8))(v20, v22);
LABEL_14:
  v42 = v0[69];
  v43 = v0[68];
  v53 = v0[67];
  v54 = v0[64];
  v55 = v0[63];
  v44 = v0[57];
  v45 = v0[18];
  v46 = v0[19];
  v47 = v0[20];
  v49 = v0[21];
  v48 = v0[22];
  v50 = v0[23];
  v0[50] = v0[17];
  v0[51] = v45;
  v0[52] = v46;
  v0[53] = v47;
  v0[54] = v49;
  v0[55] = v48;
  v0[56] = v50;
  sub_22C56CECC(v42, v57, v56, (v0 + 50), v0[25], v43, v44);

  sub_22C56DF20((v0 + 14));

  sub_22C369A24();

  return v51();
}

uint64_t sub_22C56D75C()
{
  v1 = v0[69];
  v2 = v0[67];
  v4 = v0[63];
  v3 = v0[64];

  sub_22C369A24();
  v6 = v0[71];

  return v5();
}

uint64_t sub_22C56D7E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C422A58;

  return sub_22C56CF84();
}

id sub_22C56D8A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C90077C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  v9 = sub_22C9007FC();
  v11 = v10;
  if (qword_27D9BA6D0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_27D9BDCF8);
  v12 = off_27D9BDD00;
  v13 = *(off_27D9BDD00 + 2);
  v23 = v9;
  if (v13 && (v14 = sub_22C628700(a1, a2, v9, v11), (v15 & 1) != 0))
  {
    v16 = *(v12[7] + 8 * v14);
    v17 = v16;
  }

  else
  {
    v16 = 0;
  }

  os_unfair_lock_unlock(&dword_27D9BDCF8);
  if (v16)
  {
  }

  else
  {
    v18 = objc_allocWithZone(MEMORY[0x277CCA968]);
    v19 = [v18 init];
    sub_22C56DDD4(a1, a2, v19);
    v20 = sub_22C90081C();
    [v19 setTimeZone_];

    sub_22C9006AC();
    v21 = sub_22C90071C();
    (*(v5 + 8))(v8, v4);
    [v19 setLocale_];

    os_unfair_lock_lock(&dword_27D9BDCF8);
    v16 = v19;
    swift_isUniquelyReferenced_nonNull_native();
    v24 = off_27D9BDD00;
    sub_22C62C51C();
    off_27D9BDD00 = v24;

    os_unfair_lock_unlock(&dword_27D9BDCF8);
  }

  return v16;
}

id sub_22C56DB3C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  result = [v0 setUnitsStyle_];
  qword_27D9E3FC0 = v0;
  return result;
}

void *sub_22C56DB8C()
{
  sub_22C56DE2C();
  sub_22C56DE70();
  result = sub_22C909F0C();
  dword_27D9BDCF8 = 0;
  off_27D9BDD00 = result;
  return result;
}

uint64_t sub_22C56DBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_22C90B4FC(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_22C90B4FC();
    }
  }

  return result;
}

uint64_t sub_22C56DC84()
{
  sub_22C909FFC();

  return sub_22C909FFC();
}

uint64_t sub_22C56DCD4()
{
  sub_22C90B62C();
  sub_22C909FFC();
  sub_22C909FFC();
  return sub_22C90B66C();
}

uint64_t sub_22C56DD44()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_22C56DCD4();
}

uint64_t sub_22C56DD50()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_22C56DC84();
}

uint64_t sub_22C56DD5C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_22C90B62C();
  sub_22C56DC84();
  return sub_22C90B66C();
}

void sub_22C56DDD4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_22C90A0EC();
  [a3 setDateFormat_];
}

unint64_t sub_22C56DE2C()
{
  result = qword_27D9BDD90;
  if (!qword_27D9BDD90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9BDD90);
  }

  return result;
}

unint64_t sub_22C56DE70()
{
  result = qword_27D9BDD98;
  if (!qword_27D9BDD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDD98);
  }

  return result;
}

unint64_t sub_22C56DF98()
{
  result = qword_27D9BDDA0;
  if (!qword_27D9BDDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDDA0);
  }

  return result;
}

void PromptGrammar.description.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 56);
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v2 == v3)
      {
        v17[0] = v5;
        sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
        sub_22C3F035C();
        sub_22C90A04C();

        return;
      }

      if (v3 >= *(v1 + 16))
      {
        break;
      }

      v6 = *(v4 - 3);
      v7 = *(v4 - 2);
      v8 = *(v4 - 1);
      v9 = *v4;
      if ((v8 & 0x2000000000000000) != 0)
      {
        v17[0] = *(v4 - 3);
        v17[1] = v7;
        v17[2] = v8 & 0xDFFFFFFFFFFFFFFFLL;
        v17[3] = v9;
        BNFGrammarRenderer.renderGrammar(grammar:)(v17);
        v6 = v10;
        v7 = v11;
      }

      else
      {
        sub_22C472434(*(v4 - 3), *(v4 - 2), v8);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = *(v5 + 16);
        sub_22C590270();
        v5 = v15;
      }

      v12 = *(v5 + 16);
      if (v12 >= *(v5 + 24) >> 1)
      {
        sub_22C590270();
        v5 = v16;
      }

      *(v5 + 16) = v12 + 1;
      v13 = v5 + 16 * v12;
      *(v13 + 32) = v6;
      *(v13 + 40) = v7;
      v4 += 5;
      ++v3;
    }

    __break(1u);
  }
}

__n128 PromptGrammar.GrammarPiece.init(_:sensitivity:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  result = *a1;
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = v3;
  return result;
}

void static PromptGrammar.+ infix(_:_:)(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  v6 = *a1;

  sub_22C3CC9E4(v5);
  *a3 = v6;
}

uint64_t static PromptGrammarGenerationMode.configuration(from:)@<X0>(char *a1@<X8>)
{
  v2 = sub_22C9063DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v25 - v8;
  v10 = *(type metadata accessor for FullPlannerPreferences() + 52);
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C901EDC();
  v12 = v25[0];
  v11 = v25[1];

  v13 = sub_22C90B21C();

  if (v13 == 2)
  {

    v14 = 2;
  }

  else
  {
    if (v13 == 1)
    {

      v14 = 1;
    }

    else
    {
      if (v13)
      {
        sub_22C903F7C();

        v20 = sub_22C9063CC();
        v21 = sub_22C90AADC();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v25[0] = v23;
          *v22 = 136315394;
          v24 = sub_22C36F9F4(v12, v11, v25);

          *(v22 + 4) = v24;
          *(v22 + 12) = 2080;
          *(v22 + 14) = sub_22C36F9F4(0x696C43796C6C7566, 0xEB00000000746E65, v25);
          _os_log_impl(&dword_22C366000, v20, v21, "Unexpected grammar generation mode case '%s'. Defaulting to '%s'.", v22, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2318B9880](v23, -1, -1);
          MEMORY[0x2318B9880](v22, -1, -1);
        }

        else
        {
        }

        result = (*(v3 + 8))(v7, v2);
        v14 = 0;
        goto LABEL_16;
      }

      v14 = 0;
    }

    v15 = sub_22C90B4FC();

    if ((v15 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  sub_22C903F7C();
  v17 = sub_22C9063CC();
  v18 = sub_22C90AACC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_22C366000, v17, v18, "Server generation configuration specified. This mode should not be used by clients communicating via GMS.", v19, 2u);
    MEMORY[0x2318B9880](v19, -1, -1);
  }

  result = (*(v3 + 8))(v9, v2);
LABEL_16:
  *a1 = v14;
  return result;
}

uint64_t PromptGrammarGenerationMode.rawValue.getter()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x6553646972627968;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696C43796C6C7566;
  }
}

uint64_t PromptGrammar.redactedDescription.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v17 = MEMORY[0x277D84F90];
    sub_22C3B6E10();
    v3 = v17;
    v4 = (v1 + 64);
    sub_22C377EF8();
    v5 = 40;
    do
    {
      v6 = *v4;
      if (*v4)
      {
        v7 = 0;
        v8 = 0;
        v9 = 0xEA00000000003E44;
        v10 = &v17;
      }

      else
      {
        v7 = *(v4 - 2);
        v11 = *(v4 - 1);
        v10 = *(v4 - 4);
        v9 = *(v4 - 3);
        sub_22C472434(v10, v9, v7);
        v8 = v11;
        v5 = 40;
      }

      v17 = v3;
      v12 = *(v3 + 16);
      if (v12 >= *(v3 + 24) >> 1)
      {
        sub_22C3B6E10();
        sub_22C377EF8();
        v3 = v17;
      }

      *(v3 + 16) = v12 + 1;
      v13 = v3 + v12 * v5;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      *(v13 + 48) = v7;
      *(v13 + 56) = v8;
      *(v13 + 64) = v6;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v17 = v3;
  PromptGrammar.description.getter();
  v15 = v14;

  return v15;
}

BOOL static PromptGrammar.GrammarPieceContent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  if ((v5 & 0x2000000000000000) == 0)
  {
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = *a1;
      if (v3 != v7 || v2 != v6)
      {
        v12 = sub_22C90B4FC();
        v13 = sub_22C373530();
        sub_22C472434(v13, v14, v15);
        v16 = sub_22C36ABA0();
        sub_22C472434(v16, v17, v18);
        v19 = sub_22C36ABA0();
        sub_22C472480(v19, v20, v21);
        v22 = sub_22C373530();
        sub_22C472480(v22, v23, v24);
        return v12 & 1;
      }

      sub_22C472434(v10, v2, v9);
      v64 = sub_22C36ABA0();
      sub_22C472434(v64, v65, v66);
      v67 = sub_22C36ABA0();
      sub_22C472480(v67, v68, v69);
      sub_22C472480(v3, v2, v9);
      return 1;
    }

    goto LABEL_9;
  }

  if ((v9 & 0x2000000000000000) == 0)
  {
LABEL_9:
    v26 = sub_22C373530();
    sub_22C472434(v26, v27, v28);
    v29 = sub_22C36ABA0();
    sub_22C472434(v29, v30, v31);
    v32 = sub_22C36ABA0();
    sub_22C472480(v32, v33, v34);
    v35 = sub_22C373530();
LABEL_10:
    sub_22C472480(v35, v36, v37);
    return 0;
  }

  v80[0] = *a1;
  v80[1] = v2;
  v80[2] = v5 & 0xDFFFFFFFFFFFFFFFLL;
  v79[0] = v7;
  v79[1] = v6;
  v79[2] = v9 & 0xDFFFFFFFFFFFFFFFLL;
  v38 = sub_22C373530();
  sub_22C472434(v38, v39, v40);
  v41 = sub_22C36ABA0();
  sub_22C472434(v41, v42, v43);
  v44 = sub_22C373530();
  sub_22C472434(v44, v45, v46);
  v47 = sub_22C36ABA0();
  sub_22C472434(v47, v48, v49);

  v50 = static BNFGrammarRule.== infix(_:_:)(v80, v79);

  if ((v50 & 1) == 0)
  {
    v70 = sub_22C36ABA0();
    sub_22C472480(v70, v71, v72);
    v73 = sub_22C373530();
    sub_22C472480(v73, v74, v75);
    v76 = sub_22C373530();
    sub_22C472480(v76, v77, v78);
    v35 = sub_22C36ABA0();
    goto LABEL_10;
  }

  v51 = sub_22C46D2C8(v4, v8);
  v52 = sub_22C36ABA0();
  sub_22C472480(v52, v53, v54);
  v55 = sub_22C373530();
  sub_22C472480(v55, v56, v57);
  v58 = sub_22C373530();
  sub_22C472480(v58, v59, v60);
  v61 = sub_22C36ABA0();
  sub_22C472480(v61, v62, v63);
  return (v51 & 1) != 0;
}

uint64_t PromptGrammar.GrammarPiece.Sensitivity.hashValue.getter()
{
  v1 = *v0;
  sub_22C90B62C();
  MEMORY[0x2318B8B10](v1);
  return sub_22C90B66C();
}

uint64_t sub_22C56EA04()
{
  v1 = *v0;
  sub_22C90B62C();
  MEMORY[0x2318B8B10](v1);
  return sub_22C90B66C();
}

uint64_t static PromptGrammar.GrammarPiece.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v24 = *(a1 + 32);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v26[0] = *a1;
  v26[1] = v2;
  v26[2] = v3;
  v26[3] = v4;
  v25[0] = v5;
  v25[1] = v6;
  v25[2] = v7;
  v25[3] = v8;
  v10 = sub_22C371738();
  sub_22C472434(v10, v11, v12);
  v13 = sub_22C3759D0();
  sub_22C472434(v13, v14, v15);
  v16 = static PromptGrammar.GrammarPieceContent.== infix(_:_:)(v26, v25);
  v17 = sub_22C3759D0();
  sub_22C472480(v17, v18, v19);
  v20 = sub_22C371738();
  sub_22C472480(v20, v21, v22);
  return v16 & ~(v24 ^ v9) & 1;
}

uint64_t PromptGrammar.grammarPieces.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

IntelligenceFlowPlannerRuntime::PromptGrammarGenerationMode_optional __swiftcall PromptGrammarGenerationMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22C90B21C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22C56EBF0@<X0>(uint64_t *a1@<X8>)
{
  result = PromptGrammarGenerationMode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_22C56EC1C()
{
  result = qword_27D9BDDA8;
  if (!qword_27D9BDDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDDA8);
  }

  return result;
}

unint64_t sub_22C56EC74()
{
  result = qword_27D9BDDB0;
  if (!qword_27D9BDDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDDB0);
  }

  return result;
}

uint64_t sub_22C56ECE0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x1F && *(a1 + 32))
    {
      v2 = *a1 + 30;
    }

    else
    {
      v2 = (((*(a1 + 16) >> 57) >> 4) & 1 | (2 * ((*(a1 + 16) >> 57) & 8 | *(a1 + 16) & 7))) ^ 0x1F;
      if (v2 >= 0x1E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_22C56ED30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 31;
    *(result + 8) = 0;
    if (a3 >= 0x1F)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1F)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0xF | (16 * (-a2 & 0x1F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0x3000000000000007;
      *(result + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_22C56EDC4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C56EE00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PromptGrammar.GrammarPiece.Sensitivity(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PromptGrammarGenerationMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22C56F004(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_22C56F044(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22C56F0A0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ToolPromptMap(0);
  v2 = MEMORY[0x277D84F90];
  v3 = sub_22C369F8C();
  sub_22C902D0C();
  sub_22C56F694();
  v4 = sub_22C377F0C();
  v5 = sub_22C377F0C();
  sub_22C908EAC();
  v6 = sub_22C369F8C();
  sub_22C90941C();
  result = sub_22C369F8C();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v2;
  a1[3] = v2;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = result;
  return result;
}

uint64_t sub_22C56F15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  if (*(v5 + 16) && (sub_22C36E2BC(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(v5 + 56);
    v8 = type metadata accessor for ToolPromptMap(0);
    sub_22C36985C(v8);
    v10 = *(v9 + 72);
    sub_22C571B94();
    v11 = a3;
    v12 = 0;
    v13 = v8;
  }

  else
  {
    v13 = type metadata accessor for ToolPromptMap(0);
    v11 = a3;
    v12 = 1;
  }

  return sub_22C36C640(v11, v12, 1, v13);
}

uint64_t sub_22C56F218(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void, uint64_t, uint64_t *))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = a2;
  a4(a1, a3, 0, isUniquelyReferenced_nonNull_native, &v12);
  v10 = v12;
  if (v4)
  {
  }

  return v10;
}

uint64_t sub_22C56F2A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = *a2;

  v31 = sub_22C56F218(v8, v6, sub_22C56FB08, sub_22C57081C);
  v9 = a1[1];
  v10 = a2[1];

  v12 = sub_22C56F218(v11, v9, sub_22C4AA2B0, sub_22C56FBE8);
  v13 = a1[4];
  v14 = a2[4];

  v16 = sub_22C56F218(v15, v13, sub_22C4AA2B0, sub_22C56FBE8);
  v34 = a1[2];
  v35 = v34;
  v17 = a2[2];
  sub_22C56F9B8(&v35, &v33);

  sub_22C3CC46C(v18);
  v19 = v34;
  v34 = a1[3];
  v20 = a2[3];
  v33 = v34;
  sub_22C56F9B8(&v34, v32);

  sub_22C3CC46C(v21);
  v22 = v33;
  v23 = a1[5];
  v24 = a2[5];

  v26 = sub_22C56F218(v25, v23, sub_22C56FA98, sub_22C570424);
  v27 = a1[6];
  v28 = a2[6];

  result = sub_22C56F218(v29, v27, sub_22C56FA28, sub_22C57002C);
  *a3 = v31;
  a3[1] = v12;
  a3[2] = v19;
  a3[3] = v22;
  a3[4] = v16;
  a3[5] = v26;
  a3[6] = result;
  return result;
}

void sub_22C56F4C4()
{
  sub_22C36986C();
  if (sub_22C9097CC())
  {
    v2 = *(type metadata accessor for ParameterPromptMap(0) + 20);
    v3 = *(v1 + v2);
    v4 = *(v0 + v2);

    sub_22C74960C();
  }
}

void sub_22C56F520()
{
  sub_22C36986C();
  if (sub_22C483418(v2, v3))
  {
    v4 = type metadata accessor for ToolPromptMap(0);
    v5 = *(v4 + 20);
    v6 = *(v1 + v5);
    v7 = *(v0 + v5);
    sub_22C74A5DC();
    if (v8)
    {
      v9 = *(v4 + 24);
      v10 = *(v1 + v9);
      v11 = *(v0 + v9);

      sub_22C74960C();
    }
  }
}

void sub_22C56F5A8()
{
  sub_22C36986C();
  v3 = *v2;
  v5 = *v4;
  sub_22C74A92C();
  if (v6)
  {
    v7 = v1[1];
    v8 = v0[1];
    sub_22C74960C();
    if (v9 & 1) != 0 && (sub_22C46CDD8(v1[2], v0[2]) & 1) != 0 && (sub_22C46CDD8(v1[3], v0[3]))
    {
      v10 = v1[4];
      v11 = v0[4];
      sub_22C74960C();
      if (v12)
      {
        v13 = v1[5];
        v14 = v0[5];
        sub_22C74ACCC();
        if (v15)
        {
          v16 = v1[6];
          v17 = v0[6];

          sub_22C74AFDC();
        }
      }
    }
  }
}

unint64_t sub_22C56F694()
{
  result = qword_27D9BAAA8;
  if (!qword_27D9BAAA8)
  {
    sub_22C902D0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BAAA8);
  }

  return result;
}

void sub_22C56F714()
{
  sub_22C90981C();
  if (v0 <= 0x3F)
  {
    sub_22C436588();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22C56F7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  if (*(*(v7 - 8) + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v7);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_22C56F870(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_22C56F91C()
{
  type metadata accessor for RenderableTool();
  if (v0 <= 0x3F)
  {
    sub_22C436520();
    if (v1 <= 0x3F)
    {
      sub_22C436588();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22C56F9B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C56FA28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(sub_22C3A5908(&qword_27D9BDDD8, &qword_22C91BE80) + 48);
  v5 = *(sub_22C3A5908(&qword_27D9BDDE0, &off_22C91BE88) + 48);
  v6 = *a1;
  v7 = a1[1];
  result = sub_22C88FD18();
  *a2 = result;
  a2[1] = v9;
  return result;
}

uint64_t sub_22C56FA98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(sub_22C3A5908(&qword_27D9BDDF8, &qword_22C91BEA0) + 48);
  v5 = *(sub_22C3A5908(&qword_27D9BDE00, &off_22C91BEA8) + 48);
  v6 = *a1;
  v7 = a1[1];
  result = sub_22C88FD30();
  *a2 = result;
  a2[1] = v9;
  return result;
}

uint64_t sub_22C56FB08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(sub_22C3A5908(&qword_27D9BC480, &unk_22C92B6E0) + 48);
  v5 = *(sub_22C3A5908(&qword_27D9BDE18, &unk_22C91BEC0) + 48);
  v6 = *a1;
  v7 = a1[1];
  result = sub_22C88FD48();
  *a2 = result;
  a2[1] = v9;
  return result;
}

uint64_t sub_22C56FB78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(sub_22C3A5908(&qword_27D9BC478, &unk_22C9134A0) + 48);
  v5 = *(sub_22C3A5908(&qword_27D9BDE40, &qword_22C91BEF0) + 48);
  v6 = *a1;
  v7 = a1[1];
  result = sub_22C88FE30();
  *a2 = result;
  a2[1] = v9;
  return result;
}

uint64_t sub_22C56FBE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v59 = a5;
  v9 = sub_22C902D0C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v49 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v52 = v48 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = v48 - v16;
  v18 = sub_22C3A5908(&qword_27D9BC248, &unk_22C912440);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v48 - v20;
  sub_22C8920A0(v57, a1, a2, a3);
  v53 = v57[0];
  v54 = v57[1];
  v55 = v57[2];
  v56 = v58;
  v50 = v10;
  v51 = (v10 + 32);
  v48[4] = v10 + 8;
  v48[5] = v10 + 16;
  v48[3] = v10 + 40;
  v48[1] = a1;

  v48[0] = a3;

  while (1)
  {
    sub_22C890534();
    v22 = sub_22C3A5908(&qword_27D9BC190, &unk_22C9121A0);
    if (sub_22C370B74(v21, 1, v22) == 1)
    {
      sub_22C36A674();
    }

    v23 = *(v22 + 48);
    v24 = *v51;
    (*v51)(v17, v21, v9);
    v24(v52, &v21[v23], v9);
    v25 = *v59;
    sub_22C6280AC();
    v28 = v27;
    v29 = *(v25 + 16);
    v30 = (v26 & 1) == 0;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v31 = v26;
    if (*(v25 + 24) >= v29 + v30)
    {
      if ((a4 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BC250, qword_22C912450);
        sub_22C90B16C();
      }
    }

    else
    {
      v32 = v59;
      sub_22C88CA14();
      v33 = *v32;
      sub_22C6280AC();
      if ((v31 & 1) != (v35 & 1))
      {
        goto LABEL_16;
      }

      v28 = v34;
    }

    v36 = *v59;
    if (v31)
    {
      v38 = v49;
      v37 = v50;
      v39 = v17;
      v40 = v52;
      (*(v50 + 16))(v49, v52, v9);
      v41 = *(v37 + 8);
      v42 = v40;
      v17 = v39;
      v41(v42, v9);
      v41(v39, v9);
      (*(v37 + 40))(v36[7] + *(v37 + 72) * v28, v38, v9);
      a4 = 1;
    }

    else
    {
      v36[(v28 >> 6) + 8] |= 1 << v28;
      v43 = *(v50 + 72) * v28;
      v24((v36[6] + v43), v17, v9);
      v24((v36[7] + v43), v52, v9);
      v44 = v36[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_15;
      }

      v36[2] = v46;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C57002C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v54 = a5;
  v47 = sub_22C90941C();
  v9 = *(v47 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v47);
  v44 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v43 - v13;
  v15 = sub_22C3A5908(&qword_27D9BDDE8, &qword_22C91BE90);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = (v43 - v17);
  sub_22C8920A0(v52, a1, a2, a3);
  v48 = v52[0];
  v49 = v52[1];
  v50 = v52[2];
  v51 = v53;
  v45 = v9;
  v46 = (v9 + 32);
  v43[4] = v9 + 8;
  v43[5] = v9 + 16;
  v43[3] = v9 + 40;
  v43[1] = a1;

  v43[0] = a3;

  while (1)
  {
    sub_22C890AD8();
    v19 = sub_22C3A5908(&qword_27D9BDDE0, &off_22C91BE88);
    if (sub_22C370B74(v18, 1, v19) == 1)
    {
      sub_22C36A674();
    }

    v21 = *v18;
    v20 = v18[1];
    v22 = *v46;
    v23 = v14;
    (*v46)(v14, v18 + *(v19 + 48), v47);
    v24 = *v54;
    v26 = sub_22C36E2BC(v21, v20);
    v27 = *(v24 + 16);
    v28 = (v25 & 1) == 0;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v29 = v25;
    if (*(v24 + 24) >= v27 + v28)
    {
      if ((a4 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BDDF0, &qword_22C91BE98);
        sub_22C90B16C();
      }
    }

    else
    {
      v30 = v54;
      sub_22C88D9F0();
      v31 = *v30;
      v32 = sub_22C36E2BC(v21, v20);
      if ((v29 & 1) != (v33 & 1))
      {
        goto LABEL_16;
      }

      v26 = v32;
    }

    v34 = *v54;
    if (v29)
    {
      v36 = v44;
      v35 = v45;
      v14 = v23;
      v37 = v47;
      (*(v45 + 16))(v44, v23, v47);
      (*(v35 + 8))(v23, v37);

      (*(v35 + 40))(v34[7] + *(v35 + 72) * v26, v36, v37);
      a4 = 1;
    }

    else
    {
      v34[(v26 >> 6) + 8] |= 1 << v26;
      v38 = (v34[6] + 16 * v26);
      *v38 = v21;
      v38[1] = v20;
      v14 = v23;
      v22((v34[7] + *(v45 + 72) * v26), v23, v47);
      v39 = v34[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_15;
      }

      v34[2] = v41;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C570424(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v54 = a5;
  v47 = sub_22C908EAC();
  v9 = *(v47 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v47);
  v44 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v43 - v13;
  v15 = sub_22C3A5908(&qword_27D9BDE08, &qword_22C91BEB0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = (v43 - v17);
  sub_22C8920A0(v52, a1, a2, a3);
  v48 = v52[0];
  v49 = v52[1];
  v50 = v52[2];
  v51 = v53;
  v45 = v9;
  v46 = (v9 + 32);
  v43[4] = v9 + 8;
  v43[5] = v9 + 16;
  v43[3] = v9 + 40;
  v43[1] = a1;

  v43[0] = a3;

  while (1)
  {
    sub_22C890D18();
    v19 = sub_22C3A5908(&qword_27D9BDE00, &off_22C91BEA8);
    if (sub_22C370B74(v18, 1, v19) == 1)
    {
      sub_22C36A674();
    }

    v21 = *v18;
    v20 = v18[1];
    v22 = *v46;
    v23 = v14;
    (*v46)(v14, v18 + *(v19 + 48), v47);
    v24 = *v54;
    v26 = sub_22C36E2BC(v21, v20);
    v27 = *(v24 + 16);
    v28 = (v25 & 1) == 0;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v29 = v25;
    if (*(v24 + 24) >= v27 + v28)
    {
      if ((a4 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BDE10, &qword_22C91BEB8);
        sub_22C90B16C();
      }
    }

    else
    {
      v30 = v54;
      sub_22C88DA18();
      v31 = *v30;
      v32 = sub_22C36E2BC(v21, v20);
      if ((v29 & 1) != (v33 & 1))
      {
        goto LABEL_16;
      }

      v26 = v32;
    }

    v34 = *v54;
    if (v29)
    {
      v36 = v44;
      v35 = v45;
      v14 = v23;
      v37 = v47;
      (*(v45 + 16))(v44, v23, v47);
      (*(v35 + 8))(v23, v37);

      (*(v35 + 40))(v34[7] + *(v35 + 72) * v26, v36, v37);
      a4 = 1;
    }

    else
    {
      v34[(v26 >> 6) + 8] |= 1 << v26;
      v38 = (v34[6] + 16 * v26);
      *v38 = v21;
      v38[1] = v20;
      v14 = v23;
      v22((v34[7] + *(v45 + 72) * v26), v23, v47);
      v39 = v34[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_15;
      }

      v34[2] = v41;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C57081C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v205 = sub_22C3A5908(&qword_27D9BC210, &unk_22C917470);
  v10 = *(*(v205 - 8) + 64);
  MEMORY[0x28223BE20](v205);
  v189 = v172 - v11;
  v218 = sub_22C902D0C();
  v12 = *(v218 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v218);
  v211 = v172 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v217 = v172 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v195 = v172 - v19;
  MEMORY[0x28223BE20](v18);
  v194 = v172 - v20;
  v21 = sub_22C3A5908(&qword_27D9BC218, &unk_22C912410);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v206 = v172 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v204 = v172 - v25;
  v26 = sub_22C3A5908(&qword_27D9BC248, &unk_22C912440);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = v172 - v28;
  v202 = sub_22C3A5908(&qword_27D9BC478, &unk_22C9134A0);
  v30 = *(*(v202 - 8) + 64);
  MEMORY[0x28223BE20](v202);
  v192 = v172 - v31;
  v32 = type metadata accessor for ParameterPromptMap(0);
  v212 = *(v32 - 8);
  v33 = *(v212 + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v213 = v172 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v198 = v172 - v36;
  v37 = sub_22C3A5908(&qword_27D9BDE20, &qword_22C91BED0);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v209 = v172 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v201 = (v172 - v41);
  v42 = sub_22C3A5908(&qword_27D9BDE28, &qword_22C91BED8);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v208 = (v172 - v44);
  v183 = type metadata accessor for ToolPromptMap(0);
  v45 = *(v183 - 8);
  v46 = *(v45 + 64);
  v47 = MEMORY[0x28223BE20](v183);
  v182 = v172 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v51 = v172 - v50;
  MEMORY[0x28223BE20](v49);
  v184 = v172 - v52;
  v53 = sub_22C3A5908(&qword_27D9BDE30, &unk_22C91BEE0);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v181 = (v172 - v55);
  sub_22C8920A0(v223, a1, a2, a3);
  v219 = v223[0];
  v220 = v223[1];
  v221 = v223[2];
  v222 = v224;
  v193 = v12 + 16;
  v196 = (v12 + 32);
  v188 = v12 + 8;
  v210 = v12;
  v187 = v12 + 40;
  v172[2] = a1;

  v172[1] = a3;

  v175 = a5;
  v203 = v29;
  v174 = v45;
  v173 = v51;
  while (1)
  {
LABEL_2:
    v56 = v181;
    sub_22C890F58();
    v57 = sub_22C3A5908(&qword_27D9BDE18, &unk_22C91BEC0);
    if (sub_22C370B74(v56, 1, v57) == 1)
    {
LABEL_59:
      sub_22C36A674();
    }

    v58 = *(v57 + 48);
    v60 = *v56;
    v59 = v56[1];
    sub_22C571BEC();
    v61 = *a5;
    v63 = sub_22C36E2BC(v60, v59);
    v64 = v61[2];
    v65 = (v62 & 1) == 0;
    if (__OFADD__(v64, v65))
    {
      break;
    }

    v66 = v62;
    if (v61[3] >= v64 + v65)
    {
      if ((a4 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BDE38, &unk_22C922890);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88DA40();
      v67 = *a5;
      v68 = sub_22C36E2BC(v60, v59);
      if ((v66 & 1) != (v69 & 1))
      {
        goto LABEL_66;
      }

      v63 = v68;
    }

    v70 = *a5;
    if (v66)
    {
      v180 = v59;
      v179 = v70;
      v71 = v70[7];
      v178 = *(v45 + 72) * v63;
      v72 = v182;
      sub_22C571B94();
      sub_22C571B94();
      v73 = *(v183 + 20);
      v74 = *(v72 + v73);
      v75 = *(v184 + v73);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v237 = v74;
      sub_22C8920A0(v225, v75, sub_22C56FB78, 0);
      v200 = v230;
      v77 = v225[1];
      v207 = v225[0];
      v78 = v227;
      v79 = v228;
      v199 = v229;
      v191 = v226;
      v80 = (v226 + 64) >> 6;
      v197 = v75;

      while (1)
      {
        v81 = v79;
        v82 = v78;
        v216 = v74;
        v215 = isUniquelyReferenced_nonNull_native;
        if (!v79)
        {
          v83 = v78;
          while (1)
          {
            v82 = v83 + 1;
            if (__OFADD__(v83, 1))
            {
              break;
            }

            if (v82 >= v80)
            {
              v92 = v202;
              sub_22C36C640(v201, 1, 1, v202);
              v214 = 0;
              goto LABEL_17;
            }

            v81 = *(v77 + 8 * v82);
            ++v83;
            if (v81)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
          goto LABEL_58;
        }

LABEL_16:
        v214 = (v81 - 1) & v81;
        v84 = v207[7];
        v85 = (v207[6] + 16 * (__clz(__rbit64(v81)) | (v82 << 6)));
        v86 = *v85;
        v87 = v85[1];
        v88 = *(v212 + 72);
        sub_22C571B94();
        v89 = v202;
        v90 = *(v202 + 48);
        v91 = v201;
        *v201 = v86;
        v91[1] = v87;
        v92 = v89;
        sub_22C571BEC();
        sub_22C36C640(v91, 0, 1, v92);

        v83 = v82;
LABEL_17:
        v93 = v209;
        sub_22C407C2C();
        v94 = 1;
        if (sub_22C370B74(v93, 1, v92) != 1)
        {
          v95 = v192;
          sub_22C407C2C();
          v199(v95);
          sub_22C36DD28(v95, &qword_27D9BC478, &unk_22C9134A0);
          v94 = 0;
        }

        v96 = sub_22C3A5908(&qword_27D9BDE40, &qword_22C91BEF0);
        v97 = v208;
        sub_22C36C640(v208, v94, 1, v96);
        v98 = sub_22C3A5908(&qword_27D9BDE40, &qword_22C91BEF0);
        if (sub_22C370B74(v97, 1, v98) == 1)
        {
          sub_22C36A674();

          v120 = *(v183 + 24);
          v121 = *(v182 + v120);
          v122 = *(v184 + v120);

          v123 = swift_isUniquelyReferenced_nonNull_native();
          v237 = v121;
          sub_22C8920A0(v231, v122, sub_22C4AA2B0, 0);
          v191 = v236;
          v197 = v231[0];
          v186 = v231[1];
          v124 = v233;
          v125 = v234;
          v190 = v235;
          v176 = v232;
          v185 = (v232 + 64) >> 6;
          v177 = v122;

          v126 = v196;
          while (1)
          {
            v127 = v125;
            v128 = v124;
            v215 = v123;
            v200 = v124;
            v199 = v125;
            if (!v125)
            {
              break;
            }

LABEL_40:
            v214 = (v127 - 1) & v127;
            v133 = v197;
            v134 = v210;
            v135 = *(v210 + 72) * (__clz(__rbit64(v127)) | (v128 << 6));
            v136 = *(v210 + 16);
            v137 = v194;
            v138 = v218;
            v136(v194, *(v197 + 48) + v135, v218);
            v139 = *(v133 + 56) + v135;
            v140 = v195;
            v136(v195, v139, v138);
            v126 = v196;
            v207 = v121;
            v141 = v205;
            v142 = *(v205 + 48);
            v143 = *(v134 + 32);
            v130 = v204;
            v143(v204, v137, v138);
            v144 = v138;
            v132 = v141;
            v121 = v207;
            v143((v130 + v142), v140, v144);
            v145 = 0;
            v129 = v128;
            v131 = v203;
LABEL_41:
            v146 = 1;
            sub_22C36C640(v130, v145, 1, v132);
            v147 = v206;
            sub_22C407C2C();
            if (sub_22C370B74(v147, 1, v132) != 1)
            {
              v148 = v189;
              sub_22C407C2C();
              v190(v148);
              sub_22C36DD28(v148, &qword_27D9BC210, &unk_22C917470);
              v146 = 0;
            }

            v149 = sub_22C3A5908(&qword_27D9BC190, &unk_22C9121A0);
            sub_22C36C640(v131, v146, 1, v149);
            v150 = sub_22C3A5908(&qword_27D9BC190, &unk_22C9121A0);
            if (sub_22C370B74(v131, 1, v150) == 1)
            {
              sub_22C36A674();

              v168 = v183;
              v169 = v173;
              *&v173[*(v183 + 20)] = v216;
              *&v169[*(v168 + 24)] = v121;
              sub_22C571C44(v182);
              sub_22C571C44(v184);

              v170 = v179[7];
              sub_22C571CA0();
              a4 = 1;
              a5 = v175;
              v45 = v174;
              goto LABEL_2;
            }

            v151 = *(v150 + 48);
            v152 = *v126;
            v153 = v218;
            (*v126)(v217, v131, v218);
            v152(v211, v131 + v151, v153);
            sub_22C6280AC();
            v156 = v155;
            v157 = v121[2];
            v158 = (v154 & 1) == 0;
            if (__OFADD__(v157, v158))
            {
              goto LABEL_61;
            }

            v159 = v154;
            if (v121[3] >= v157 + v158)
            {
              if ((v215 & 1) == 0)
              {
                sub_22C3A5908(&qword_27D9BC250, qword_22C912450);
                sub_22C90B16C();
              }
            }

            else
            {
              sub_22C88CA14();
              sub_22C6280AC();
              if ((v159 & 1) != (v161 & 1))
              {
                goto LABEL_66;
              }

              v156 = v160;
            }

            v121 = v237;
            if (v159)
            {
              v162 = v210;
              v163 = v218;
              (*(v210 + 8))(v217, v218);
              (*(v162 + 40))(v121[7] + *(v162 + 72) * v156, v211, v163);
            }

            else
            {
              v237[(v156 >> 6) + 8] |= 1 << v156;
              v164 = *(v210 + 72) * v156;
              v165 = v218;
              v152((v121[6] + v164), v217, v218);
              v152((v121[7] + v164), v211, v165);
              v166 = v121[2];
              v114 = __OFADD__(v166, 1);
              v167 = v166 + 1;
              if (v114)
              {
                goto LABEL_63;
              }

              v121[2] = v167;
            }

            v123 = 1;
            v124 = v129;
            v125 = v214;
          }

          v129 = v124;
          v130 = v204;
          v131 = v203;
          v132 = v205;
          while (1)
          {
            v128 = v129 + 1;
            if (__OFADD__(v129, 1))
            {
              break;
            }

            if (v128 >= v185)
            {
              v214 = 0;
              v145 = 1;
              goto LABEL_41;
            }

            v127 = *(v186 + 8 * v128);
            ++v129;
            if (v127)
            {
              goto LABEL_40;
            }
          }

LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v100 = *v97;
        v99 = v97[1];
        v101 = v97 + *(v98 + 48);
        sub_22C571BEC();
        v102 = v216;
        v104 = sub_22C36E2BC(v100, v99);
        v105 = v102[2];
        v106 = (v103 & 1) == 0;
        if (__OFADD__(v105, v106))
        {
          break;
        }

        v107 = v103;
        if (v102[3] >= v105 + v106)
        {
          if ((v215 & 1) == 0)
          {
            sub_22C3A5908(&qword_27D9BDE48, qword_22C91BEF8);
            sub_22C90B16C();
          }
        }

        else
        {
          sub_22C88F0E4();
          v108 = sub_22C36E2BC(v100, v99);
          if ((v107 & 1) != (v109 & 1))
          {
            goto LABEL_66;
          }

          v104 = v108;
        }

        v74 = v237;
        if (v107)
        {

          v110 = v74[7] + *(v212 + 72) * v104;
          sub_22C571CA0();
        }

        else
        {
          v237[(v104 >> 6) + 8] |= 1 << v104;
          v111 = (v74[6] + 16 * v104);
          *v111 = v100;
          v111[1] = v99;
          v112 = v74[7] + *(v212 + 72) * v104;
          sub_22C571BEC();
          v113 = v74[2];
          v114 = __OFADD__(v113, 1);
          v115 = v113 + 1;
          if (v114)
          {
            goto LABEL_62;
          }

          v74[2] = v115;
        }

        isUniquelyReferenced_nonNull_native = 1;
        v78 = v83;
        v79 = v214;
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      break;
    }

    v70[(v63 >> 6) + 8] |= 1 << v63;
    v116 = (v70[6] + 16 * v63);
    *v116 = v60;
    v116[1] = v59;
    v117 = v70[7] + *(v45 + 72) * v63;
    sub_22C571BEC();
    v118 = v70[2];
    v114 = __OFADD__(v118, 1);
    v119 = v118 + 1;
    if (v114)
    {
      goto LABEL_65;
    }

    v70[2] = v119;
    a4 = 1;
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C571B94()
{
  sub_22C36986C();
  v2 = v1(0);
  sub_22C36985C(v2);
  v4 = *(v3 + 16);
  v5 = sub_22C36BA00();
  v6(v5);
  return v0;
}

uint64_t sub_22C571BEC()
{
  sub_22C36986C();
  v2 = v1(0);
  sub_22C36985C(v2);
  v4 = *(v3 + 32);
  v5 = sub_22C36BA00();
  v6(v5);
  return v0;
}

uint64_t sub_22C571C44(uint64_t a1)
{
  v2 = type metadata accessor for ToolPromptMap(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C571CA0()
{
  sub_22C36986C();
  v2 = v1(0);
  sub_22C36985C(v2);
  v4 = *(v3 + 40);
  v5 = sub_22C36BA00();
  v6(v5);
  return v0;
}

void sub_22C571CF8(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9)
{
  v10 = *(a1 + 16);
  if (v10)
  {
    v12 = a1;
    v63 = MEMORY[0x277D84F90];
    sub_22C3B628C();
    v62 = v63;
    v13 = sub_22C57D74C(v12);
    v16 = 0;
    v17 = v12 + 56;
    v18 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v18 = a2;
    }

    v19 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v19 = 11;
    }

    v55 = v19 | (v18 << 16);
    v48 = v12 + 64;
    v49 = v12 + 56;
    v20 = a3;
    v52 = a2;
    v53 = a3;
    v50 = v10;
    v51 = v12;
    if ((v13 & 0x8000000000000000) == 0)
    {
      while (v13 < 1 << *(v12 + 32))
      {
        v58 = v16;
        v21 = v13 >> 6;
        v22 = 1 << v13;
        if ((*(v17 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
        {
          goto LABEL_31;
        }

        if (*(v12 + 36) != v14)
        {
          goto LABEL_32;
        }

        v61 = v15;
        v59 = v13;
        v60 = v14;
        v23 = *(v12 + 48) + 24 * v13;
        v24 = *v23;
        v25 = *(v23 + 8);
        v26 = *(v23 + 16);
        sub_22C4A7C6C(0xFuLL, v55, a2, v20);
        v28 = v27;
        sub_22C4A7C6C(0xFuLL, v24, a5, a6);
        v30 = v29;
        sub_22C4A7C6C(0xFuLL, v25, a5, a6);
        if (__OFADD__(v28, v30))
        {
          goto LABEL_33;
        }

        v32 = v31;
        sub_22C4A7E20(0xFuLL, v28 + v30, a8, a9);
        if (__OFADD__(v28, v32))
        {
          goto LABEL_34;
        }

        v34 = v33;
        sub_22C4A7E20(0xFuLL, v28 + v32, a8, a9);
        if (v35 >> 14 < v34 >> 14)
        {
          goto LABEL_35;
        }

        v36 = v35;
        v37 = v62;
        v38 = *(v62 + 16);
        if (v38 >= *(v62 + 24) >> 1)
        {
          sub_22C3B628C();
          v37 = v62;
        }

        *(v37 + 16) = v38 + 1;
        v39 = v37 + 24 * v38;
        *(v39 + 32) = v34;
        *(v39 + 40) = v36;
        *(v39 + 48) = v26;
        if (v61)
        {
          goto LABEL_39;
        }

        v12 = v51;
        a2 = v52;
        v40 = 1 << *(v51 + 32);
        v20 = v53;
        v17 = v49;
        if (v59 >= v40)
        {
          goto LABEL_36;
        }

        v41 = *(v49 + 8 * v21);
        if ((v41 & v22) == 0)
        {
          goto LABEL_37;
        }

        v62 = v37;
        if (*(v51 + 36) != v60)
        {
          goto LABEL_38;
        }

        v42 = v41 & (-2 << (v59 & 0x3F));
        if (v42)
        {
          v40 = __clz(__rbit64(v42)) | v59 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v43 = v21 << 6;
          v44 = v21 + 1;
          v45 = (v48 + 8 * v21);
          while (v44 < (v40 + 63) >> 6)
          {
            v47 = *v45++;
            v46 = v47;
            v43 += 64;
            ++v44;
            if (v47)
            {
              sub_22C4AB8BC(v59, v60, 0);
              v40 = __clz(__rbit64(v46)) + v43;
              goto LABEL_26;
            }
          }

          sub_22C4AB8BC(v59, v60, 0);
        }

LABEL_26:
        v16 = v58 + 1;
        if (v58 + 1 == v50)
        {
          goto LABEL_29;
        }

        v15 = 0;
        v14 = *(v51 + 36);
        v13 = v40;
        if (v40 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  else
  {
LABEL_29:
  }
}

void sub_22C572084(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v23 = MEMORY[0x277D84F90];
    v22 = *(a1 + 16);
    sub_22C3B6DF0();
    v3 = sub_22C57D74C(a1);
    v5 = v4;
    v6 = v22;
    v7 = 0;
    v8 = a1 + 56;
    if ((v3 & 0x8000000000000000) == 0)
    {
      while (v3 < 1 << *(a1 + 32))
      {
        v9 = v3 >> 6;
        if ((*(v8 + 8 * (v3 >> 6)) & (1 << v3)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v5)
        {
          goto LABEL_25;
        }

        v10 = *(*(a1 + 48) + 24 * v3);
        v11 = *(v23 + 16);
        if (v11 >= *(v23 + 24) >> 1)
        {
          v21 = v2;
          v20 = *(*(a1 + 48) + 24 * v3);
          sub_22C3B6DF0();
          v10 = v20;
          v2 = v21;
          v8 = a1 + 56;
          v6 = v22;
        }

        *(v23 + 16) = v11 + 1;
        *(v23 + 16 * v11 + 32) = v10;
        if (v2)
        {
          goto LABEL_29;
        }

        v12 = 1 << *(a1 + 32);
        if (v3 >= v12)
        {
          goto LABEL_26;
        }

        v13 = *(v8 + 8 * v9);
        if ((v13 & (1 << v3)) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v5)
        {
          goto LABEL_28;
        }

        v14 = v13 & (-2 << (v3 & 0x3F));
        if (v14)
        {
          v12 = __clz(__rbit64(v14)) | v3 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = v9 << 6;
          v16 = v9 + 1;
          v17 = (a1 + 64 + 8 * v9);
          while (v16 < (v12 + 63) >> 6)
          {
            v19 = *v17++;
            v18 = v19;
            v15 += 64;
            ++v16;
            if (v19)
            {
              sub_22C4AB8BC(v3, v5, 0);
              v8 = a1 + 56;
              v6 = v22;
              v12 = __clz(__rbit64(v18)) + v15;
              goto LABEL_19;
            }
          }

          sub_22C4AB8BC(v3, v5, 0);
          v8 = a1 + 56;
          v6 = v22;
        }

LABEL_19:
        if (++v7 == v6)
        {
          return;
        }

        v2 = 0;
        v5 = *(a1 + 36);
        v3 = v12;
        if (v12 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

unint64_t sub_22C5722F0(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  MEMORY[0x2318B7850](a4, a5);

  sub_22C575F14(a6, a1, a2, a3, v12, v13, v14, v15, a2);
  v17 = sub_22C4A0268(a3, v16);

  sub_22C3AD898(v17);
  return a1;
}

uint64_t sub_22C5723D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x2318B7850]();

  v4 = MEMORY[0x277D84FA0];
  sub_22C575F14(a3, 0x20202020uLL, 0xE400000000000000, MEMORY[0x277D84FA0], v5, v6, v7, v8, 0xE400000000000000);
  v10 = sub_22C4A0268(v4, v9);

  sub_22C3AD898(v10);
  return 538976288;
}

uint64_t sub_22C572494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22C5741FC();
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = v7;
    v11 = v8;
    v22 = a4;
    v23 = MEMORY[0x277D84F90];

    sub_22C3B628C();
    v12 = v23;
    v13 = (a1 + 32);
    v14 = *(v23 + 16);
    v15 = 24 * v14;
    do
    {
      v17 = *v13++;
      v16 = v17;
      v18 = v14 + 1;
      if (v14 >= *(v23 + 24) >> 1)
      {
        sub_22C3B628C();
      }

      *(v23 + 16) = v18;
      v19 = v23 + v15;
      *(v19 + 32) = v10;
      *(v19 + 40) = v11;
      *(v19 + 48) = v16;
      v15 += 24;
      v14 = v18;
      --v9;
    }

    while (v9);
    a4 = v22;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  v20 = sub_22C4A0268(a4, v12);

  sub_22C3AD898(v20);
  return a2;
}

uint64_t sub_22C5725E4(unint64_t a1, uint64_t a2)
{
  sub_22C573C54(a1, a2);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  MEMORY[0x2318B7850]();

  v8 = MEMORY[0x277D84FA0];
  sub_22C571CF8(v7, 0x22uLL, 0xE100000000000000, MEMORY[0x277D84FA0], v3, v5, v7, 0x22uLL, 0xE100000000000000);
  v10 = sub_22C4A0268(v8, v9);

  v11 = sub_22C3AD898(v10);

  sub_22C57A24C(v8, 34, 0xE100000000000000);
  v13 = sub_22C3AD898(v12);

  MEMORY[0x2318B7850](34, 0xE100000000000000);

  sub_22C571CF8(v13, 0x22uLL, 0xE100000000000000, v11, 0x22uLL, 0xE100000000000000, v13, 0x22uLL, 0xE100000000000000);
  v15 = v14;

  v16 = sub_22C4A0268(v11, v15);

  sub_22C3AD898(v16);

  return 34;
}

void sub_22C572798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v68 = sub_22C9063DC();
  v7 = sub_22C369824(v68);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C90A2DC();
  v16 = v14;
  v17 = v15;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v18 = v14;
  }

  if ((v14 & 0x800000000000000) == 0 && (v15 & 0x1000000000000000) != 0)
  {
    v19 = 11;
  }

  else
  {
    v19 = 7;
  }

  v70[3] = MEMORY[0x277D84FA0];
  v20 = v14 == a2 && v15 == a3;
  if (v20 || (sub_22C90B4FC() & 1) != 0)
  {
  }

  else
  {
    v58 = a2;
    v63 = a3;
    sub_22C6A45F4();
    v55[2] = v16;
    v55[1] = v17;
    sub_22C4A7E20(v19 | (v18 << 16), -3, v16, v17);
    v22 = a4 + 56;
    v23 = 1 << *(a4 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(a4 + 56);
    v26 = (v23 + 63) >> 6;
    v66 = v21;
    v64 = v21 >> 14;
    v62 = (v9 + 8);

    v27 = 0;
    v56 = MEMORY[0x277D84F90];
    *&v28 = 136315394;
    v57 = v28;
    v65 = v26;
    v59 = a4;
    v61 = a4 + 56;
LABEL_16:
    v29 = v27;
    if (!v25)
    {
      goto LABEL_18;
    }

    do
    {
      v30 = v13;
      v27 = v29;
LABEL_22:
      v31 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v32 = *(a4 + 48) + 24 * (v31 | (v27 << 6));
      v33 = *(v32 + 16);
      if (v64 >= *v32 >> 14)
      {
        v34 = *v32;
      }

      else
      {
        v34 = v66;
      }

      if (v64 >= *(v32 + 8) >> 14)
      {
        v35 = *(v32 + 8);
      }

      else
      {
        v35 = v66;
      }

      if ((v35 ^ v34) >> 14)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = *(v56 + 16);
          sub_22C36D270();
          sub_22C591170();
          v56 = v53;
        }

        v49 = *(v56 + 16);
        v48 = *(v56 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_22C369AB0(v48);
          sub_22C591170();
          v56 = v54;
        }

        v50 = v56;
        *(v56 + 16) = v49 + 1;
        v51 = v50 + 24 * v49;
        *(v51 + 32) = v34;
        *(v51 + 40) = v35;
        *(v51 + 48) = v33;
        v13 = v30;
        v26 = v65;
        goto LABEL_16;
      }

      sub_22C903F7C();

      v36 = sub_22C9063CC();
      v37 = sub_22C90AACC();

      v67 = v37;
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v70[0] = swift_slowAlloc();
        *v38 = v57;
        v69 = v33;
        v39 = sub_22C90A1AC();
        v60 = v36;
        v41 = sub_22C36F9F4(v39, v40, v70);

        *(v38 + 4) = v41;
        *(v38 + 12) = 2080;
        v42 = sub_22C90A4AC();
        v43 = MEMORY[0x2318B76D0](v42);
        v45 = v44;

        v46 = sub_22C36F9F4(v43, v45, v70);

        *(v38 + 14) = v46;
        v47 = v60;
        _os_log_impl(&dword_22C366000, v60, v67, "Dropped tag %s over substring %s due to full truncation of tagged range.", v38, 0x16u);
        swift_arrayDestroy();
        sub_22C3699EC();
        a4 = v59;
        sub_22C3699EC();
      }

      else
      {
      }

      (*v62)(v30, v68);
      v29 = v27;
      v13 = v30;
      v26 = v65;
      v22 = v61;
    }

    while (v25);
LABEL_18:
    while (1)
    {
      v27 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v27 >= v26)
      {

        sub_22C8B55C0(v56);
        return;
      }

      v25 = *(v22 + 8 * v27);
      ++v29;
      if (v25)
      {
        v30 = v13;
        goto LABEL_22;
      }
    }

    __break(1u);
  }
}

void sub_22C572C64(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_22C90B6FC();
  v7 = sub_22C369824(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = 0;
  v122 = 0xE000000000000000;
  v12 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v112 = a1;
  v117 = a1;
  v118 = a2;
  v119 = 0;
  v120 = v12;
  v114 = a2;

  while (1)
  {
    v13 = sub_22C90A3AC();
    if (!v14)
    {
      break;
    }

    v15 = v14;
    if ((v14 & 0x2000000000000000) != 0)
    {
      v16 = HIBYTE(v14) & 0xF;
    }

    else
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (!v16)
    {
      goto LABEL_91;
    }

    if ((v14 & 0x1000000000000000) != 0)
    {
      sub_22C36D8A0();
      v17 = sub_22C90A23C();
    }

    else
    {
      sub_22C36D8A0();
      v17 = sub_22C90AF3C() << 16;
    }

    if (4 * v16 == v17 >> 14)
    {
      v18 = sub_22C38BB08();
      if ((sub_22C763580(v18, v19) & 0x100000000) != 0)
      {
        goto LABEL_95;
      }

      sub_22C90B70C();
      sub_22C90B6EC();
      v20 = sub_22C388748();
      v21(v20);
      if (v11)
      {
        goto LABEL_16;
      }
    }

    sub_22C38BB08();
    if ((sub_22C909FCC() & 1) == 0 || (sub_22C38BB08(), (sub_22C909FBC() & 1) == 0))
    {
LABEL_16:
      sub_22C36D8A0();
      if ((v15 & 0x1000000000000000) != 0)
      {
        v22 = sub_22C90A23C();
      }

      else
      {
        v22 = sub_22C90AF3C() << 16;
      }

      if (4 * v16 != v22 >> 14)
      {
        goto LABEL_22;
      }

      v23 = sub_22C38BB08();
      if ((sub_22C763580(v23, v24) & 0x100000000) != 0)
      {
        goto LABEL_96;
      }

      sub_22C90B70C();
      sub_22C90B6DC();
      v25 = sub_22C388748();
      v26(v25);
      if ((v11 & 1) == 0)
      {
LABEL_22:
        sub_22C38BB08();
        if ((sub_22C909FCC() & 1) == 0)
        {
          goto LABEL_28;
        }

        sub_22C38BB08();
        if ((sub_22C909FEC() & 1) == 0)
        {
          goto LABEL_100;
        }

        v27 = sub_22C38BB08();
        if ((sub_22C763580(v27, v28) & 0x100000000) != 0)
        {
          goto LABEL_97;
        }

        sub_22C90B70C();
        sub_22C90B6EC();
        v29 = sub_22C388748();
        v30(v29);
        if ((v11 & 1) == 0)
        {
LABEL_100:
          sub_22C38BB08();
          if (sub_22C909FCC())
          {
            sub_22C38BB08();
            if (sub_22C909FBC())
            {
LABEL_28:
              v31 = sub_22C38BB08();
              MEMORY[0x2318B7840](v31);
            }
          }
        }
      }
    }
  }

  v94[1] = sub_22C4A3CCC(v121, v122);
  v33 = v32;
  v34 = *(v32 + 16);
  v95 = v32 + 32;

  v35 = 0;
  v94[3] = v33;
  v94[2] = v34;
  while (1)
  {
    if (v35 == v34)
    {

      return;
    }

    if (v35 >= *(v33 + 16))
    {
      goto LABEL_92;
    }

    v36 = (v95 + 16 * v35);
    v37 = *v36;
    v34 = v36[1];
    v38 = sub_22C90A1DC();
    v33 = v39;
    v117 = v112;
    v118 = v114;
    v121 = v37;
    v122 = v34;
    v115 = v38;
    v116 = v39;
    v40 = sub_22C3858B4();
    swift_bridgeObjectRetain_n();
    v108 = v40;
    sub_22C373544();
    v41 = sub_22C90AD4C();
    v110 = v42;
    v111 = v41;
    v43 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v43 = v38;
    }

    v44 = 7;
    if (((v33 >> 60) & ((v38 & 0x800000000000000) == 0)) != 0)
    {
      v45 = 11;
    }

    else
    {
      v45 = 7;
    }

    v97 = v33;
    sub_22C4A7C6C(0xFuLL, v45 | (v43 << 16), v38, v33);
    v47 = v46;
    v48 = HIBYTE(v34) & 0xF;
    if ((v34 & 0x2000000000000000) == 0)
    {
      v48 = v37;
    }

    if (((v34 >> 60) & ((v37 & 0x800000000000000) == 0)) != 0)
    {
      v49 = 11;
    }

    else
    {
      v49 = 7;
    }

    v109 = v37;
    sub_22C4A7C6C(0xFuLL, v49 | (v48 << 16), v37, v34);
    v51 = v50;
    v113 = v34;

    v107 = v47 - v51;
    if (__OFSUB__(v47, v51))
    {
      goto LABEL_93;
    }

    v52 = *(a3 + 16);
    if (v52)
    {
      break;
    }

    v53 = MEMORY[0x277D84F90];
    sub_22C370770();
LABEL_75:
    v87 = *(v53 + 16);
    v88 = sub_22C3AF8F8();
    v121 = MEMORY[0x2318B7DB0](v87, &type metadata for PromptString.TaggedRange, v88);
    v89 = *(v53 + 16);
    if (v89)
    {
      v90 = (v53 + 48);
      do
      {
        v91 = *(v90 - 2);
        v92 = *(v90 - 1);
        v93 = *v90;
        v90 += 24;
        sub_22C6A45F4();
        --v89;
      }

      while (v89);
    }

    ++v35;

    a3 = v121;
    v112 = v111;
    v114 = v110;
  }

  v96 = v35;
  v115 = MEMORY[0x277D84F90];
  sub_22C3B628C();
  v53 = v115;
  v56 = sub_22C57D74C(a3);
  v33 = 0;
  v57 = a3 + 56;
  v98 = a3 + 64;
  v101 = a3;
  v99 = v52;
  v100 = a3 + 56;
  if ((v56 & 0x8000000000000000) == 0)
  {
    while (v56 < 1 << *(a3 + 32))
    {
      v34 = v56 >> 6;
      if ((*(v57 + 8 * (v56 >> 6)) & (1 << v56)) == 0)
      {
        goto LABEL_81;
      }

      if (*(a3 + 36) != v54)
      {
        goto LABEL_82;
      }

      v103 = v54;
      v104 = 1 << v56;
      v102 = v33;
      v58 = *(a3 + 48) + 24 * v56;
      v59 = *v58;
      v60 = *(v58 + 8);
      v105 = *(v58 + 16);
      v106 = v55;
      sub_22C3774C0(15, v59);
      v61 = sub_22C90A47C();
      sub_22C575EF4(v61, v62);
      v63 = *(sub_22C90AD0C() + 16);

      sub_22C4A7C6C(0xFuLL, v59, v53, v44);
      sub_22C37A120();
      if (!v66)
      {
        goto LABEL_83;
      }

      if (__OFADD__(v64, v65))
      {
        goto LABEL_84;
      }

      sub_22C4A7E20(0xFuLL, v64 + v65, v111, v110);
      v68 = v67;
      sub_22C3774C0(15, v60);
      v69 = sub_22C90A47C();
      sub_22C575EF4(v69, v70);
      v71 = *(sub_22C90AD0C() + 16);

      sub_22C4A7C6C(0xFuLL, v60, v53, v44);
      sub_22C37A120();
      if (!v66)
      {
        goto LABEL_85;
      }

      if (__OFADD__(v72, v73))
      {
        goto LABEL_86;
      }

      sub_22C4A7E20(0xFuLL, v72 + v73, v111, v110);
      if (v74 >> 14 < v68 >> 14)
      {
        goto LABEL_87;
      }

      v75 = v74;
      v115 = v53;
      v77 = *(v53 + 16);
      v76 = *(v53 + 24);
      if (v77 >= v76 >> 1)
      {
        sub_22C369AB0(v76);
        sub_22C3B628C();
        v53 = v115;
      }

      *(v53 + 16) = v77 + 1;
      v78 = v53 + 24 * v77;
      *(v78 + 32) = v68;
      *(v78 + 40) = v75;
      *(v78 + 48) = v105;
      if (v106)
      {
        goto LABEL_94;
      }

      a3 = v101;
      v44 = 1 << *(v101 + 32);
      if (v56 >= v44)
      {
        goto LABEL_88;
      }

      v57 = v100;
      v79 = *(v100 + 8 * v34);
      if ((v79 & v104) == 0)
      {
        goto LABEL_89;
      }

      if (*(v101 + 36) != v103)
      {
        goto LABEL_90;
      }

      v80 = v79 & (-2 << (v56 & 0x3F));
      if (v80)
      {
        v44 = __clz(__rbit64(v80)) | v56 & 0x7FFFFFFFFFFFFFC0;
        v81 = v102;
      }

      else
      {
        v82 = v34 << 6;
        v83 = v34 + 1;
        v84 = (v98 + 8 * v34);
        v81 = v102;
        while (v83 < (v44 + 63) >> 6)
        {
          v86 = *v84++;
          v85 = v86;
          v82 += 64;
          ++v83;
          if (v86)
          {
            sub_22C4AB8BC(v56, v103, 0);
            v44 = __clz(__rbit64(v85)) + v82;
            goto LABEL_70;
          }
        }

        sub_22C4AB8BC(v56, v103, 0);
      }

LABEL_70:
      v33 = v81 + 1;
      if (v33 == v99)
      {

        sub_22C370770();
        v35 = v96;
        goto LABEL_75;
      }

      v55 = 0;
      v54 = *(a3 + 36);
      v56 = v44;
      if (v44 < 0)
      {
        break;
      }
    }
  }

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
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
}

uint64_t sub_22C573484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v4 = *(a3 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = (8 * v6);

  if (v5 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    MEMORY[0x28223BE20](v8);
    v7 = (v27 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_22C88FAFC(0, v6, v7);
    v9 = 0;
    v10 = 0;
    v11 = 1 << *(a3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a3 + 56);
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v15 = v14 | (v10 << 6);
LABEL_12:
      if (!*(*(a3 + 48) + 24 * v15 + 16))
      {
        *(v7 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        if (__OFADD__(v9++, 1))
        {
          __break(1u);
LABEL_16:
          sub_22C7EC1E8(v7, v6, v9, a3);
          v20 = v19;
          goto LABEL_17;
        }
      }
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= ((v11 + 63) >> 6))
      {
        goto LABEL_16;
      }

      v17 = *(a3 + 56 + 8 * v10);
      ++v16;
      if (v17)
      {
        v13 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v10 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v26 = swift_slowAlloc();

  v20 = sub_22C575B5C(v26, v6, a3, sub_22C573820);
  swift_bridgeObjectRelease_n();
  sub_22C3699EC();
LABEL_17:
  sub_22C572084(v20);
  v22 = v21;

  v23 = sub_22C573830(v22);

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

unint64_t sub_22C5736FC(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v11 = a3;

  sub_22C574AA8(&v11, sub_22C57521C, sub_22C574CB4);
  v5 = v11;
  v6 = *(v11 + 16);
  if (v6)
  {

    v7 = (v5 + 40);
    do
    {
      a1 = sub_22C5744A8(*(v7 - 1), *v7, 0x455443414445523CLL, 0xEA00000000003E44, a1, a2);
      v9 = v8;

      a2 = v9;
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_22C573830(void *a1)
{
  v27 = a1;

  sub_22C574AA8(&v27, sub_22C574D28, sub_22C574C40);
  v1 = v27[2];
  if (v1)
  {
    v3 = v27 + 5;
    v2 = v27[5];
    v4 = v27[4];
    v5 = MEMORY[0x277D84F90];
    do
    {
      v7 = *(v3 - 1);
      v6 = *v3;
      v8 = v2 >> 14;
      v9 = v4 >> 14;
      v10 = *v3 >> 14;
      if (v7 >> 14 >= v2 >> 14 || v9 == v8 || v9 >= v10 || v7 >> 14 == v10)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = *(v5 + 16);
          sub_22C36D270();
          sub_22C59254C();
          v5 = v18;
        }

        v15 = *(v5 + 16);
        v14 = *(v5 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_22C369AB0(v14);
          sub_22C59254C();
          v5 = v19;
        }

        *(v5 + 16) = v15 + 1;
        v16 = v5 + 16 * v15;
        *(v16 + 32) = v4;
        *(v16 + 40) = v2;
        v4 = v7;
        v2 = v6;
      }

      else
      {
        if (v10 >= v8)
        {
          v2 = *v3;
        }

        if (v9 > v2 >> 14)
        {
          __break(1u);
          goto LABEL_30;
        }
      }

      v3 += 2;
      --v1;
    }

    while (v1);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_24;
    }

LABEL_30:
    v24 = *(v5 + 16);
    sub_22C36D270();
    sub_22C59254C();
    v5 = v25;
LABEL_24:
    v21 = *(v5 + 16);
    v20 = *(v5 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_22C369AB0(v20);
      sub_22C59254C();
      v5 = v26;
    }

    *(v5 + 16) = v21 + 1;
    v22 = v5 + 16 * v21;
    *(v22 + 32) = v4;
    *(v22 + 40) = v2;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v5;
}

BOOL sub_22C573A18(unint64_t a1, unint64_t a2, unsigned __int8 a3, unint64_t a4, unint64_t a5, unsigned __int8 a6)
{
  if (a1 >> 14 == a4 >> 14)
  {
    v6 = a2 >> 14 < a5 >> 14;
  }

  else
  {
    v6 = a1 >> 14 < a4 >> 14;
  }

  if (a3 == a6)
  {
    return v6;
  }

  else
  {
    return a3 < a6;
  }
}

uint64_t sub_22C573A7C(uint64_t a1, unint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  MEMORY[0x2318B8B30](a2 >> 14);
  MEMORY[0x2318B8B30](a3 >> 14);
  return MEMORY[0x2318B8B10](a4);
}

uint64_t sub_22C573AC4(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  sub_22C90B62C();
  MEMORY[0x2318B8B30](a1 >> 14);
  MEMORY[0x2318B8B30](a2 >> 14);
  MEMORY[0x2318B8B10](a3);
  return sub_22C90B66C();
}

uint64_t sub_22C573BE8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_22C90B62C();
  MEMORY[0x2318B8B30](v1 >> 14);
  MEMORY[0x2318B8B30](v2 >> 14);
  MEMORY[0x2318B8B10](v3);
  return sub_22C90B66C();
}

void sub_22C573C54(unint64_t a1, uint64_t a2)
{
  v142 = a1;
  v143 = a2;
  sub_22C383108();
  sub_22C3858B4();
  sub_22C373544();
  sub_22C90AD4C();
  sub_22C38A99C();
  sub_22C4A7C6C(0xFuLL, 131079, 0x5C5CuLL, 0xE200000000000000);
  v3 = sub_22C575ED4();
  sub_22C4A7C6C(v3, v4, 0x5CuLL, 0xE100000000000000);
  v6 = &v142 - v5;
  if (__OFSUB__(&v142, v5))
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_22C372924();
  sub_22C49F0FC(v7, v8, v9, v10, v11, v12, v13, v14, v2);
  sub_22C3AD898(v15);
  sub_22C37FE38();
  sub_22C36BF20();
  v16 = sub_22C36ABB4();
  v18 = v17;
  v19 = sub_22C369FA8();
  sub_22C4A7C6C(v19, v20, 0x615CuLL, 0xE200000000000000);
  v21 = sub_22C575ED4();
  sub_22C4A7C6C(v21, v22, 7uLL, 0xE100000000000000);
  v24 = __OFSUB__(v6, v23);
  v25 = &v6[-v23];
  if (v24)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_22C377F2C();
  sub_22C575EE8();
  sub_22C49F0FC(v26, v27, v28, v29, v30, v31, v32, v16, v135);
  sub_22C374CB8();

  sub_22C3AD898(v25);
  v142 = v16;
  v143 = v18;
  sub_22C383108();
  sub_22C36ABB4();
  sub_22C38A99C();
  v33 = sub_22C369FA8();
  sub_22C4A7C6C(v33, v34, 0x625CuLL, 0xE200000000000000);
  v35 = sub_22C575ED4();
  sub_22C4A7C6C(v35, v36, 8uLL, 0xE100000000000000);
  v24 = __OFSUB__(v25, v37);
  v38 = v25 - v37;
  if (v24)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_22C3719A8();
  sub_22C372924();
  sub_22C49F0FC(v39, v40, v41, v42, v43, v44, v45, v46, v136);
  sub_22C374CB8();

  sub_22C3AD898(v38);
  sub_22C37FE38();
  sub_22C36BF20();
  v47 = sub_22C36ABB4();
  v49 = v48;
  v50 = sub_22C369FA8();
  sub_22C4A7C6C(v50, v51, 0x665CuLL, 0xE200000000000000);
  v52 = sub_22C575ED4();
  sub_22C4A7C6C(v52, v53, 0xCuLL, 0xE100000000000000);
  v24 = __OFSUB__(v38, v54);
  v55 = v38 - v54;
  if (v24)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_22C377F2C();
  sub_22C575EE8();
  sub_22C49F0FC(v56, v57, v58, v59, v60, v61, v62, v47, v137);
  sub_22C374CB8();

  sub_22C3AD898(v55);
  v142 = v47;
  v143 = v49;
  sub_22C383108();
  sub_22C36ABB4();
  sub_22C38A99C();
  v63 = sub_22C369FA8();
  sub_22C4A7C6C(v63, v64, 0x6E5CuLL, 0xE200000000000000);
  v65 = sub_22C575ED4();
  sub_22C4A7C6C(v65, v66, 0xAuLL, 0xE100000000000000);
  v24 = __OFSUB__(v55, v67);
  v68 = v55 - v67;
  if (v24)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_22C3719A8();
  sub_22C372924();
  sub_22C49F0FC(v69, v70, v71, v72, v73, v74, v75, v76, v138);
  sub_22C374CB8();

  sub_22C3AD898(v68);
  sub_22C37FE38();
  sub_22C36BF20();
  v77 = sub_22C36ABB4();
  v79 = v78;
  v80 = sub_22C369FA8();
  sub_22C4A7C6C(v80, v81, 0x725CuLL, 0xE200000000000000);
  v82 = sub_22C575ED4();
  sub_22C4A7C6C(v82, v83, 0xDuLL, 0xE100000000000000);
  v24 = __OFSUB__(v68, v84);
  v85 = v68 - v84;
  if (v24)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_22C377F2C();
  sub_22C575EE8();
  sub_22C49F0FC(v86, v87, v88, v89, v90, v91, v92, v77, v139);
  sub_22C374CB8();

  sub_22C3AD898(v85);
  v142 = v77;
  v143 = v79;
  sub_22C383108();
  sub_22C36ABB4();
  sub_22C38A99C();
  v93 = sub_22C369FA8();
  sub_22C4A7C6C(v93, v94, 0x745CuLL, 0xE200000000000000);
  v95 = sub_22C575ED4();
  sub_22C4A7C6C(v95, v96, 9uLL, 0xE100000000000000);
  v24 = __OFSUB__(v85, v97);
  v98 = v85 - v97;
  if (v24)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_22C3719A8();
  sub_22C372924();
  sub_22C49F0FC(v99, v100, v101, v102, v103, v104, v105, v106, v140);
  sub_22C374CB8();

  sub_22C3AD898(v98);
  sub_22C37FE38();
  sub_22C36BF20();
  v107 = sub_22C36ABB4();
  v109 = v108;
  v110 = sub_22C369FA8();
  sub_22C4A7C6C(v110, v111, 0x765CuLL, 0xE200000000000000);
  v112 = sub_22C575ED4();
  sub_22C4A7C6C(v112, v113, 0xBuLL, 0xE100000000000000);
  v24 = __OFSUB__(v98, v114);
  v115 = v98 - v114;
  if (v24)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_22C377F2C();
  sub_22C575EE8();
  sub_22C49F0FC(v116, v117, v118, v119, v120, v121, v122, v107, v141);
  sub_22C374CB8();

  v123 = sub_22C3AD898(v115);
  v142 = v107;
  v143 = v109;
  v124 = sub_22C36ABB4();
  v126 = v125;
  v127 = sub_22C369FA8();
  sub_22C4A7C6C(v127, v128, 0x225CuLL, 0xE200000000000000);
  v130 = v129;
  sub_22C4A7C6C(0xFuLL, 65543, 0x22uLL, 0xE100000000000000);
  v24 = __OFSUB__(v130, v131);
  v132 = v130 - v131;
  if (!v24)
  {

    sub_22C49F0FC(v123, v107, v109, v123, 34, 0xE100000000000000, v132, v124, v126);
    v134 = v133;

    sub_22C3AD898(v134);
    return;
  }

LABEL_19:
  __break(1u);
}

void sub_22C574304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 == a4 && a2 == a5;
  if (v5 || (sub_22C90B4FC() & 1) != 0)
  {

    sub_22C5DBAE4();
  }
}

uint64_t sub_22C574370()
{
  sub_22C90B62C();
  sub_22C909FFC();
  return sub_22C90B66C();
}

unint64_t sub_22C5743C0(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

uint64_t sub_22C57446C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_22C574370();
}

unint64_t sub_22C57447C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22C5743C0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_22C5744A8(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{

  sub_22C90ACDC();
  v12 = v11;

  if ((v12 & 0x1000000000000000) != 0)
  {
    goto LABEL_35;
  }

  sub_22C90ACDC();
  v14 = v13;

  if ((v14 & 0x1000000000000000) != 0)
  {
    goto LABEL_35;
  }

  v16 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v16) = 1;
  }

  v17 = 4 << v16;
  v18 = a1;
  if ((a1 & 0xC) == 4 << v16)
  {
    result = sub_22C8A3F0C(a1, a5, a6);
    v18 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v19 = v18 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v20 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v20 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v21 = (v20 << 16) | 7;
    LOBYTE(v22) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v20 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v20 < v18 >> 16)
  {
    goto LABEL_41;
  }

  result = sub_22C90A3EC();
  v19 = result;
  v25 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v25 = 7;
  }

  v21 = v25 | (v20 << 16);
  v22 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  v23 = a2;
  if ((a2 & 0xC) == 4 << v22)
  {
    result = sub_22C8A3F0C(a2, a5, a6);
    v23 = result;
  }

  if ((v21 & 0xC) == v17)
  {
    result = sub_22C8A3F0C(v21, a5, a6);
    v21 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_15:
    v24 = (v21 >> 16) - (v23 >> 16);
LABEL_28:
    if ((a4 & 0x1000000000000000) != 0)
    {
      result = sub_22C90A3BC();
    }

    else if ((a4 & 0x2000000000000000) != 0)
    {
      result = HIBYTE(a4) & 0xF;
    }

    else
    {
      result = a3 & 0xFFFFFFFFFFFFLL;
    }

    v26 = v19 + result;
    if (__OFADD__(v19, result))
    {
      __break(1u);
    }

    else
    {
      result = v26 + v24;
      if (!__OFADD__(v26, v24))
      {
        MEMORY[0x2318B7700](result);
LABEL_35:
        sub_22C90A4AC();
        sub_22C575E6C();
        sub_22C90A35C();

        sub_22C90A35C();
        sub_22C8A5380(a2, a5, a6);
        sub_22C90A35C();

        return 0;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

  if (v20 < v23 >> 16)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v20 >= v21 >> 16)
  {
    v24 = sub_22C90A3EC();
    goto LABEL_28;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_22C5747A4(uint64_t result, uint64_t a2)
{
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    sub_22C3A5908(&qword_27D9BDE70, &qword_22C91C090);
    sub_22C90A8EC();
    sub_22C90A8EC();
    return 0;
  }

  return result;
}

uint64_t sub_22C574834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_22C5747A4(a1, a2);
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  a3[2] = v5;
  return result;
}

uint64_t sub_22C574870@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  result = nullsub_1(*a1);
  *a2 = result;
  a2[1] = v6;
  a2[2] = v7;
  return result;
}

void sub_22C5748A8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_22C5722E4();
  *a2 = v5;
  a2[1] = v6;
  a2[2] = MEMORY[0x277D84FA0];
}

void sub_22C5748E4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22C799F94(0);
  if (sub_22C7AA104(v5))
  {
    sub_22C5EA6B4(v5);
  }

  else
  {

    v6 = MEMORY[0x277D84FA0];
  }

  *a2 = v3;
  a2[1] = v4;
  a2[2] = v6;
}

unint64_t sub_22C57494C()
{
  result = qword_27D9BDE50;
  if (!qword_27D9BDE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDE50);
  }

  return result;
}

unint64_t sub_22C5749A4()
{
  result = qword_27D9BDE58;
  if (!qword_27D9BDE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDE58);
  }

  return result;
}

unint64_t sub_22C5749FC()
{
  result = qword_27D9BDE60;
  if (!qword_27D9BDE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDE60);
  }

  return result;
}

unint64_t sub_22C574A54()
{
  result = qword_27D9BDE68;
  if (!qword_27D9BDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDE68);
  }

  return result;
}

uint64_t sub_22C574AA8(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C288(v6);
    v6 = v7;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  result = sub_22C574B2C(v10, a2, a3);
  *a1 = v6;
  return result;
}

uint64_t sub_22C574B2C(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_22C90B45C();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22C3A5908(&qword_27D9BDE98, &unk_22C91C328);
        v10 = sub_22C90A64C();
        *(v10 + 16) = v9;
      }

      v11[0] = v10 + 32;
      v11[1] = v9;
      a2(v11, v12, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_22C574C40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >> 14 >= *v9 >> 14)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 24);
        *(v9 + 16) = *v9;
        *v9 = v7;
        *(v9 + 8) = v10;
        v9 -= 16;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_22C574CB4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >> 14 <= *v9 >> 14)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 24);
        *(v9 + 16) = *v9;
        *v9 = v7;
        *(v9 + 8) = v10;
        v9 -= 16;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22C574D28(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v85 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v80 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = (*a3 + 16 * v7);
        v12 = 16 * v7;
        v14 = *v11;
        v13 = v11 + 4;
        v15 = v10 >> 14;
        v16 = v14 >> 14;
        v17 = v7 + 2;
        while (1)
        {
          v18 = v17;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v13;
          v13 += 2;
          v20 = (v15 < v16) ^ (v19 >> 14 >= v10 >> 14);
          ++v17;
          v10 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v15 < v16)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 16 * v6 - 16;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = *(v24 + v12);
                *(v24 + v12) = *(v24 + v21);
                *(v24 + v21) = v25;
              }

              ++v23;
              v21 -= 16;
              v12 += 16;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v26 = *a3;
            v27 = *a3 + 16 * v9 - 16;
            v28 = v7 - v9;
            do
            {
              v29 = *(v26 + 16 * v9);
              v30 = v28;
              v31 = v27;
              do
              {
                if (v29 >> 14 >= *v31 >> 14)
                {
                  break;
                }

                if (!v26)
                {
                  goto LABEL_111;
                }

                v32 = *(v31 + 24);
                *(v31 + 16) = *v31;
                *v31 = v29;
                *(v31 + 8) = v32;
                v31 -= 16;
              }

              while (!__CFADD__(v30++, 1));
              ++v9;
              v27 += 16;
              --v28;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v82 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = v8[2];
        sub_22C590218();
        v8 = v78;
      }

      v34 = v8[2];
      v35 = v34 + 1;
      if (v34 >= v8[3] >> 1)
      {
        sub_22C590218();
        v8 = v79;
      }

      v8[2] = v35;
      v36 = v8 + 4;
      v37 = &v8[2 * v34 + 4];
      *v37 = v7;
      v37[1] = v9;
      v83 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v34)
      {
        while (1)
        {
          v38 = v35 - 1;
          v39 = &v36[2 * v35 - 2];
          v40 = &v8[2 * v35];
          if (v35 >= 4)
          {
            break;
          }

          if (v35 == 3)
          {
            v41 = v8[4];
            v42 = v8[5];
            v51 = __OFSUB__(v42, v41);
            v43 = v42 - v41;
            v44 = v51;
LABEL_56:
            if (v44)
            {
              goto LABEL_96;
            }

            v56 = *v40;
            v55 = v40[1];
            v57 = __OFSUB__(v55, v56);
            v58 = v55 - v56;
            v59 = v57;
            if (v57)
            {
              goto LABEL_99;
            }

            v60 = v39[1];
            v61 = v60 - *v39;
            if (__OFSUB__(v60, *v39))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v58, v61))
            {
              goto LABEL_104;
            }

            if (v58 + v61 >= v43)
            {
              if (v43 < v61)
              {
                v38 = v35 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v35 < 2)
          {
            goto LABEL_98;
          }

          v63 = *v40;
          v62 = v40[1];
          v51 = __OFSUB__(v62, v63);
          v58 = v62 - v63;
          v59 = v51;
LABEL_71:
          if (v59)
          {
            goto LABEL_101;
          }

          v65 = *v39;
          v64 = v39[1];
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_103;
          }

          if (v66 < v58)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v38 - 1 >= v35)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v70 = &v36[2 * v38 - 2];
          v71 = *v70;
          v72 = &v36[2 * v38];
          v73 = v72[1];
          sub_22C575844((*a3 + 16 * *v70), (*a3 + 16 * *v72), (*a3 + 16 * v73), v83);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v73 < v71)
          {
            goto LABEL_91;
          }

          v74 = v8;
          v75 = v8[2];
          if (v38 > v75)
          {
            goto LABEL_92;
          }

          *v70 = v71;
          v70[1] = v73;
          if (v38 >= v75)
          {
            goto LABEL_93;
          }

          v35 = v75 - 1;
          memmove(&v36[2 * v38], v72 + 2, 16 * (v75 - 1 - v38));
          v74[2] = v75 - 1;
          v76 = v75 > 2;
          v8 = v74;
          v5 = 0;
          if (!v76)
          {
            goto LABEL_85;
          }
        }

        v45 = &v36[2 * v35];
        v46 = *(v45 - 8);
        v47 = *(v45 - 7);
        v51 = __OFSUB__(v47, v46);
        v48 = v47 - v46;
        if (v51)
        {
          goto LABEL_94;
        }

        v50 = *(v45 - 6);
        v49 = *(v45 - 5);
        v51 = __OFSUB__(v49, v50);
        v43 = v49 - v50;
        v44 = v51;
        if (v51)
        {
          goto LABEL_95;
        }

        v52 = v40[1];
        v53 = v52 - *v40;
        if (__OFSUB__(v52, *v40))
        {
          goto LABEL_97;
        }

        v51 = __OFADD__(v43, v53);
        v54 = v43 + v53;
        if (v51)
        {
          goto LABEL_100;
        }

        if (v54 >= v48)
        {
          v68 = *v39;
          v67 = v39[1];
          v51 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v51)
          {
            goto LABEL_105;
          }

          if (v43 < v69)
          {
            v38 = v35 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v82;
      a4 = v80;
      if (v82 >= v6)
      {
        v85 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_22C575710(&v85, *a1, a3, sub_22C575844);
LABEL_89:
}

void sub_22C57521C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v85 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v80 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = (*a3 + 16 * v7);
        v12 = 16 * v7;
        v14 = *v11;
        v13 = v11 + 4;
        v15 = v14 >> 14;
        v16 = v10 >> 14;
        v17 = v7 + 2;
        while (1)
        {
          v18 = v17;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v13;
          v13 += 2;
          v20 = (v15 < v16) ^ (v10 >> 14 >= v19 >> 14);
          ++v17;
          v10 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v15 < v16)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 16 * v6 - 16;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = *(v24 + v12);
                *(v24 + v12) = *(v24 + v21);
                *(v24 + v21) = v25;
              }

              ++v23;
              v21 -= 16;
              v12 += 16;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v26 = *a3;
            v27 = *a3 + 16 * v9 - 16;
            v28 = v7 - v9;
            do
            {
              v29 = *(v26 + 16 * v9);
              v30 = v28;
              v31 = v27;
              do
              {
                if (v29 >> 14 <= *v31 >> 14)
                {
                  break;
                }

                if (!v26)
                {
                  goto LABEL_111;
                }

                v32 = *(v31 + 24);
                *(v31 + 16) = *v31;
                *v31 = v29;
                *(v31 + 8) = v32;
                v31 -= 16;
              }

              while (!__CFADD__(v30++, 1));
              ++v9;
              v27 += 16;
              --v28;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v82 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = v8[2];
        sub_22C590218();
        v8 = v78;
      }

      v34 = v8[2];
      v35 = v34 + 1;
      if (v34 >= v8[3] >> 1)
      {
        sub_22C590218();
        v8 = v79;
      }

      v8[2] = v35;
      v36 = v8 + 4;
      v37 = &v8[2 * v34 + 4];
      *v37 = v7;
      v37[1] = v9;
      v83 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v34)
      {
        while (1)
        {
          v38 = v35 - 1;
          v39 = &v36[2 * v35 - 2];
          v40 = &v8[2 * v35];
          if (v35 >= 4)
          {
            break;
          }

          if (v35 == 3)
          {
            v41 = v8[4];
            v42 = v8[5];
            v51 = __OFSUB__(v42, v41);
            v43 = v42 - v41;
            v44 = v51;
LABEL_56:
            if (v44)
            {
              goto LABEL_96;
            }

            v56 = *v40;
            v55 = v40[1];
            v57 = __OFSUB__(v55, v56);
            v58 = v55 - v56;
            v59 = v57;
            if (v57)
            {
              goto LABEL_99;
            }

            v60 = v39[1];
            v61 = v60 - *v39;
            if (__OFSUB__(v60, *v39))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v58, v61))
            {
              goto LABEL_104;
            }

            if (v58 + v61 >= v43)
            {
              if (v43 < v61)
              {
                v38 = v35 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v35 < 2)
          {
            goto LABEL_98;
          }

          v63 = *v40;
          v62 = v40[1];
          v51 = __OFSUB__(v62, v63);
          v58 = v62 - v63;
          v59 = v51;
LABEL_71:
          if (v59)
          {
            goto LABEL_101;
          }

          v65 = *v39;
          v64 = v39[1];
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_103;
          }

          if (v66 < v58)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v38 - 1 >= v35)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v70 = &v36[2 * v38 - 2];
          v71 = *v70;
          v72 = &v36[2 * v38];
          v73 = v72[1];
          sub_22C5759D0((*a3 + 16 * *v70), (*a3 + 16 * *v72), (*a3 + 16 * v73), v83);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v73 < v71)
          {
            goto LABEL_91;
          }

          v74 = v8;
          v75 = v8[2];
          if (v38 > v75)
          {
            goto LABEL_92;
          }

          *v70 = v71;
          v70[1] = v73;
          if (v38 >= v75)
          {
            goto LABEL_93;
          }

          v35 = v75 - 1;
          memmove(&v36[2 * v38], v72 + 2, 16 * (v75 - 1 - v38));
          v74[2] = v75 - 1;
          v76 = v75 > 2;
          v8 = v74;
          v5 = 0;
          if (!v76)
          {
            goto LABEL_85;
          }
        }

        v45 = &v36[2 * v35];
        v46 = *(v45 - 8);
        v47 = *(v45 - 7);
        v51 = __OFSUB__(v47, v46);
        v48 = v47 - v46;
        if (v51)
        {
          goto LABEL_94;
        }

        v50 = *(v45 - 6);
        v49 = *(v45 - 5);
        v51 = __OFSUB__(v49, v50);
        v43 = v49 - v50;
        v44 = v51;
        if (v51)
        {
          goto LABEL_95;
        }

        v52 = v40[1];
        v53 = v52 - *v40;
        if (__OFSUB__(v52, *v40))
        {
          goto LABEL_97;
        }

        v51 = __OFADD__(v43, v53);
        v54 = v43 + v53;
        if (v51)
        {
          goto LABEL_100;
        }

        if (v54 >= v48)
        {
          v68 = *v39;
          v67 = v39[1];
          v51 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v51)
          {
            goto LABEL_105;
          }

          if (v43 < v69)
          {
            v38 = v35 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v82;
      a4 = v80;
      if (v82 >= v6)
      {
        v85 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_22C575710(&v85, *a1, a3, sub_22C5759D0);
LABEL_89:
}

uint64_t sub_22C575710(uint64_t *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v5 = a1;
  v6 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_22C56BFD8(v6);
    v6 = result;
  }

  v14 = v5;
  *v5 = v6;
  v8 = (v6 + 16);
  for (i = *(v6 + 16); ; *v8 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v14 = v6;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v5 = (v6 + 16 * i);
    v10 = *v5;
    v11 = &v8[2 * i];
    v12 = v11[1];
    a4(*a3 + 16 * *v5, *a3 + 16 * *v11, *a3 + 16 * v12, a2);
    if (v4)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v8)
    {
      goto LABEL_12;
    }

    *v5 = v10;
    v5[1] = v12;
    v13 = *v8 - i;
    if (*v8 < i)
    {
      goto LABEL_13;
    }

    i = *v8 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v6;
  __break(1u);
  return result;
}

uint64_t sub_22C575844(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_22C3A4F80(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v6 >> 14 >= *v4 >> 14)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_22C3A4F80(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_15:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    if (*(v10 - 2) >> 14 < *v14 >> 14)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

uint64_t sub_22C5759D0(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_22C3A4F80(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v4 >> 14 >= *v6 >> 14)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_22C3A4F80(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_15:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    if (*v14 >> 14 < *(v10 - 2) >> 14)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

unint64_t *sub_22C575B5C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_22C7ED470(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

_BYTE *sub_22C575BEC(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PromptString.TaggedRange(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PromptString.TaggedRange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_22C575D6C()
{
  result = qword_27D9BDE78;
  if (!qword_27D9BDE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDE78);
  }

  return result;
}

unint64_t sub_22C575DC0()
{
  result = qword_27D9BDE80;
  if (!qword_27D9BDE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDE80);
  }

  return result;
}

unint64_t sub_22C575E18()
{
  result = qword_27D9BDE88;
  if (!qword_27D9BDE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDE88);
  }

  return result;
}

unint64_t sub_22C575E6C()
{
  result = qword_27D9BDE90;
  if (!qword_27D9BDE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDE90);
  }

  return result;
}

uint64_t sub_22C575EF4(uint64_t a1, uint64_t a2)
{
  *(v2 - 136) = a1;
  *(v2 - 128) = a2;
  v3 = *(v2 - 208);
  v4 = *(v2 - 168);
  *(v2 - 104) = *(v2 - 200);
  *(v2 - 96) = v4;
  return v2 - 104;
}

void sub_22C575F14(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{

  sub_22C571CF8(a1, a2, a3, a4, v12, v11, v9, v10, a9);
}

uint64_t sub_22C575F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22C90981C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v79 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_22C3A5908(&qword_27D9BD8E0, &qword_22C91B410);
  v9 = *(*(v67 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v67);
  v66 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v65 = v55 - v12;
  v64 = sub_22C3A5908(&qword_27D9BD8E8, &unk_22C919AD0);
  v13 = *(*(v64 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v64);
  v63 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v62 = v55 - v17;
  MEMORY[0x28223BE20](v16);
  v61 = v55 - v18;
  v19 = *(a3 + 16);
  v81 = MEMORY[0x277D84F90];
  sub_22C3B6FA0();
  v80 = v81;
  v60 = v19;
  v55[0] = a3;
  if (v19)
  {
    v57 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v56 = a2 + v57;
    v59 = *(a2 + 16);
    v78 = v6 + 16;
    v58 = v6;
    v20 = v6 + 32;

    v22 = 0;
    v23 = (a3 + 64);
    v77 = v20;
    while (v59 != v22)
    {
      v24 = v67;
      v25 = v65;
      v26 = &v65[*(v67 + 48)];
      v27 = v58;
      v76 = *(v58 + 72);
      v75 = *(v58 + 16);
      v75(v65, v56 + v76 * v22, v5);
      v29 = *(v23 - 4);
      v28 = *(v23 - 3);
      v31 = *(v23 - 1);
      v73 = *(v23 - 2);
      v30 = v73;
      v74 = v28;
      v72 = v31;
      v32 = *v23;
      v70 = v29;
      v71 = v32;
      *v26 = v29;
      *(v26 + 1) = v28;
      *(v26 + 2) = v30;
      *(v26 + 3) = v31;
      *(v26 + 4) = v32;
      v33 = v25;
      v34 = v66;
      sub_22C4E7208(v33, v66, &qword_27D9BD8E0, &qword_22C91B410);
      v35 = v34 + *(v24 + 48);
      v36 = v64;
      v37 = v61;
      v38 = &v61[*(v64 + 48)];
      v39 = *(v27 + 32);
      v39(v61, v34, v5);
      v40 = *(v35 + 32);
      v41 = *(v35 + 16);
      *v38 = *v35;
      *(v38 + 1) = v41;
      *(v38 + 4) = v40;
      v42 = v62;
      sub_22C4E719C(v37, v62, &qword_27D9BD8E8, &unk_22C919AD0);
      v43 = *(v36 + 48);
      v44 = v39;
      v45 = *(v42 + v43 + 32);
      v46 = v63;
      v47 = &v63[v43];
      v48 = *(v42 + v43);
      v68 = *(v42 + v43 + 16);
      v69 = v48;
      v44(v63, v42, v5);
      v49 = v68;
      *v47 = v69;
      *(v47 + 1) = v49;
      *(v47 + 4) = v45;
      v75(v79, v46, v5);

      sub_22C456C94(v74, v73);
      sub_22C36DD28(v46, &qword_27D9BD8E8, &unk_22C919AD0);
      v50 = v80;
      sub_22C36DD28(v37, &qword_27D9BD8E8, &unk_22C919AD0);
      v81 = v50;
      v52 = *(v50 + 16);
      v51 = *(v50 + 24);
      v80 = v50;
      if (v52 >= v51 >> 1)
      {
        sub_22C3B6FA0();
        v80 = v81;
      }

      ++v22;
      v53 = v79;
      v54 = v80;
      *(v80 + 16) = v52 + 1;
      result = (v44)(v54 + v57 + v52 * v76, v53, v5);
      v23 += 5;
      if (v60 == v22)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_9:

    return v80;
  }

  return result;
}

void sub_22C576428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = sub_22C3A5908(&qword_27D9BD8E0, &qword_22C91B410);
  v5 = *(*(v61 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v61);
  v60 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v59 = v49 - v8;
  v58 = sub_22C3A5908(&qword_27D9BD8E8, &unk_22C919AD0);
  v9 = *(*(v58 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v58);
  v57 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v56 = v49 - v13;
  MEMORY[0x28223BE20](v12);
  v55 = v49 - v14;
  v15 = *(a3 + 16);
  v71 = MEMORY[0x277D84F90];
  sub_22C3B63D4();
  v16 = v71;
  v54 = v15;
  v49[0] = a3;
  if (v15)
  {
    v52 = sub_22C90981C();
    v17 = *(v52 - 8);
    v50 = a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v53 = *(a2 + 16);
    v49[3] = v17 + 16;
    v51 = v17;
    v49[2] = v17 + 32;

    v18 = 0;
    v19 = (a3 + 64);
    while (v53 != v18)
    {
      v69 = v16;
      v20 = v61;
      v21 = v59;
      v22 = &v59[*(v61 + 48)];
      v23 = v51;
      v24 = v50 + *(v51 + 72) * v18;
      v25 = *(v51 + 16);
      v26 = v52;
      v68 = v18;
      v25(v59, v24, v52);
      v28 = *(v19 - 4);
      v27 = *(v19 - 3);
      v30 = *(v19 - 1);
      v66 = *(v19 - 2);
      v29 = v66;
      v67 = v27;
      v65 = v30;
      v31 = *v19;
      v63 = v28;
      v64 = v31;
      *v22 = v28;
      *(v22 + 1) = v27;
      *(v22 + 2) = v29;
      *(v22 + 3) = v30;
      *(v22 + 4) = v31;
      v32 = v60;
      sub_22C4E7208(v21, v60, &qword_27D9BD8E0, &qword_22C91B410);
      v33 = v32 + *(v20 + 48);
      v34 = v58;
      v35 = v55;
      v36 = &v55[*(v58 + 48)];
      v37 = *(v23 + 32);
      v37(v55, v32, v26);
      v38 = *(v33 + 32);
      v39 = *(v33 + 16);
      *v36 = *v33;
      *(v36 + 1) = v39;
      *(v36 + 4) = v38;
      v40 = v56;
      sub_22C4E719C(v35, v56, &qword_27D9BD8E8, &unk_22C919AD0);
      v41 = *(v34 + 48);
      v42 = *(v40 + v41 + 32);
      v43 = v57;
      v44 = &v57[v41];
      v45 = *(v40 + v41 + 16);
      v70 = *(v40 + v41);
      v62 = v45;
      v37(v57, v40, v26);
      v46 = v62;
      *v44 = v70;
      *(v44 + 1) = v46;
      *(v44 + 4) = v42;
      v16 = v69;

      sub_22C456C94(v67, v66);
      v47 = v70;

      sub_22C36DD28(v43, &qword_27D9BD8E8, &unk_22C919AD0);
      sub_22C36DD28(v35, &qword_27D9BD8E8, &unk_22C919AD0);
      v71 = v16;
      v48 = *(v16 + 16);
      if (v48 >= *(v16 + 24) >> 1)
      {
        sub_22C3B63D4();
        v16 = v71;
      }

      v18 = v68 + 1;
      *(v16 + 16) = v48 + 1;
      *(v16 + 8 * v48 + 32) = v47;
      v19 += 5;
      if (v54 == v18)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_9:
  }
}

void sub_22C57689C()
{
  sub_22C36BA7C();
  v105 = v0;
  v1 = sub_22C9063DC();
  v2 = sub_22C369824(v1);
  v103 = v3;
  v104 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369ABC();
  v95[1] = v6 - v7;
  sub_22C369930();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v95 - v10;
  MEMORY[0x28223BE20](v9);
  v99 = v95 - v12;
  v13 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_22C369ABC();
  v96 = v15 - v16;
  sub_22C369930();
  MEMORY[0x28223BE20](v17);
  v101 = v95 - v18;
  sub_22C36BA0C();
  v102 = sub_22C90046C();
  v19 = sub_22C369824(v102);
  v98 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v97 = v24 - v23;
  sub_22C36BA0C();
  v100 = sub_22C90634C();
  v25 = sub_22C369824(v100);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C369ABC();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = v95 - v34;
  v36 = sub_22C90636C();
  v37 = sub_22C369824(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22C369ABC();
  v44 = v42 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = v95 - v46;
  v48 = *(type metadata accessor for FullPlannerPreferences() + 112);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  if (v106 == 1)
  {
    sub_22C90364C();
    sub_22C90364C();
    sub_22C90635C();
    sub_22C90631C();
    v95[0] = *(v39 + 8);
    (v95[0])(v44, v36);
    v49 = sub_22C90635C();
    v50 = sub_22C90AB6C();
    if (sub_22C90AC5C())
    {
      v51 = sub_22C36D240();
      *v51 = 0;
      v52 = sub_22C90632C();
      _os_signpost_emit_with_name_impl(&dword_22C366000, v49, v50, v52, "PromptToolsHelper.loadToolsOverride", "", v51, 2u);
      sub_22C3699EC();
    }

    (*(v27 + 16))(v32, v35, v100);
    v53 = sub_22C9063AC();
    v54 = *(v53 + 48);
    v55 = *(v53 + 52);
    swift_allocObject();
    sub_22C90639C();
    v56 = *(v27 + 8);
    v57 = sub_22C36BC58();
    v58(v57);
    (v95[0])(v47, v36);
    sub_22C47A574();
    v59 = sub_22C47A5B8();
    if (v59)
    {
      v60 = sub_22C8C4FE8(0xD000000000000012, 0x800000022C932300, 1852797802, 0xE400000000000000, v59);
      v61 = v101;
      v62 = v102;
      if (v60)
      {
        v63 = v60;
        v64 = v96;
        sub_22C9003DC();

        v65 = 0;
      }

      else
      {
        v65 = 1;
        v64 = v96;
      }

      sub_22C36C640(v64, v65, 1, v62);
      v77 = sub_22C36BC58();
      sub_22C4E7208(v77, v78, v79, v80);
      if (sub_22C370B74(v61, 1, v62) != 1)
      {
        (*(v98 + 32))(v97, v61, v62);
        sub_22C9004AC();
        v85 = sub_22C8FFECC();
        v86 = *(v85 + 48);
        v87 = *(v85 + 52);
        swift_allocObject();
        sub_22C8FFEBC();
        v88 = sub_22C906A5C();
        sub_22C57A098(&qword_28142FAD8, MEMORY[0x277D1DD30]);
        sub_22C8FFEAC();
        (*(v98 + 8))(v97, v62);

        v93 = sub_22C36EBF0();
        sub_22C38B120(v93, v94);
        sub_22C36BECC();
        v92 = v88;
LABEL_17:
        sub_22C36C640(v89, v90, v91, v92);
        sub_22C5793F8();

        goto LABEL_18;
      }
    }

    else
    {
      v61 = v101;
      sub_22C36A748();
      sub_22C36C640(v73, v74, v75, v76);
    }

    sub_22C36DD28(v61, &qword_27D9BB138, &qword_22C90DB70);
    v81 = v99;
    sub_22C903F7C();
    v82 = sub_22C9063CC();
    v83 = sub_22C90AADC();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = sub_22C36D240();
      *v84 = 0;
      sub_22C3699EC();
    }

    (*(v103 + 8))(v81, v104);
    sub_22C906A5C();
    sub_22C36A748();
    goto LABEL_17;
  }

  sub_22C903F7C();
  v66 = sub_22C9063CC();
  v67 = sub_22C90AACC();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = sub_22C36D240();
    *v68 = 0;
    _os_log_impl(&dword_22C366000, v66, v67, "FullPlanner is not configured to override tool descriptions. Skipping loading the overrides file.", v68, 2u);
    sub_22C3699EC();
  }

  (*(v103 + 8))(v11, v104);
  sub_22C906A5C();
  sub_22C36A748();
  sub_22C36C640(v69, v70, v71, v72);
LABEL_18:
  sub_22C36CC48();
}

void sub_22C57709C()
{
  sub_22C36BA7C();
  v106 = v0;
  v96 = v1;
  v2 = sub_22C908D6C();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v10 = v9 - v8;
  v105 = sub_22C9099FC();
  v11 = sub_22C369824(v105);
  v97 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v107 = v16 - v15;
  v17 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  sub_22C369ABC();
  v95 = v19 - v20;
  sub_22C369930();
  MEMORY[0x28223BE20](v21);
  v94 = &v90 - v22;
  sub_22C369930();
  MEMORY[0x28223BE20](v23);
  v25 = &v90 - v24;
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
  (*(v29 + 16))(v34, v106, v26);
  v44 = *(v29 + 88);
  v45 = sub_22C37493C();
  v47 = v46(v45);
  if (v47 != *MEMORY[0x277D1ECE0])
  {
    if (v47 == *MEMORY[0x277D1ECE8])
    {
      v73 = *(v29 + 96);
      v74 = sub_22C37493C();
      v75(v74);
      v76 = v105;
      (*(v97 + 32))(v96, v34, v105);
      sub_22C36BECC();
      v80 = v76;
    }

    else
    {
      if (v47 == *MEMORY[0x277D1ECD8])
      {
        goto LABEL_2;
      }

      if (v47 != *MEMORY[0x277D1ECD0] && v47 != *MEMORY[0x277D1ECF8])
      {
        goto LABEL_35;
      }

      v84 = *(v29 + 8);
      v85 = sub_22C37493C();
      v86(v85);
      sub_22C36A748();
      v80 = v105;
    }

    sub_22C36C640(v77, v78, v79, v80);
    goto LABEL_32;
  }

LABEL_2:
  v48 = *(v29 + 96);
  v49 = sub_22C37493C();
  v50(v49);
  v92 = v38;
  v93 = v35;
  (*(v38 + 32))(v43, v34, v35);
  v91 = v43;
  v51 = sub_22C908DEC();
  v52 = 0;
  v53 = *(v51 + 16);
  v54 = v5 + 16;
  LODWORD(v106) = *MEMORY[0x277D72148];
  v100 = (v5 + 96);
  v101 = (v5 + 8);
  v103 = v51;
  v104 = (v97 + 32);
  v98 = v5 + 88;
  v99 = 0x800000022C932110;
  v97 += 8;
  v55 = v105;
  v102 = v5;
  while (v53 != v52)
  {
    sub_22C389030();
    (*(v5 + 16))(v10, v56 + v57 * v52, v2);
    v58 = (*(v5 + 88))(v10, v2);
    if (v58 == v106)
    {
      v59 = v54;
      (*v100)(v10, v2);
      v60 = *v104;
      (*v104)(v107, v10, v55);
      if (sub_22C9099DC() == 0xD00000000000001CLL && v99 == v61)
      {
      }

      else
      {
        v63 = sub_22C90B4FC();

        if ((v63 & 1) == 0)
        {
          v55 = v105;
          v60(v25, v107, v105);
          sub_22C36BECC();
          sub_22C36C640(v87, v88, v89, v55);
          sub_22C36DD28(v25, &qword_27D9BDC50, &unk_22C91B470);
          v51 = v103;
          goto LABEL_16;
        }
      }

      v55 = v105;
      (*v97)(v107, v105);
      v54 = v59;
      v5 = v102;
      v51 = v103;
    }

    else
    {
      (*v101)(v10, v2);
    }

    sub_22C36A748();
    sub_22C36C640(v64, v65, v66, v55);
    sub_22C36DD28(v25, &qword_27D9BDC50, &unk_22C91B470);
    ++v52;
  }

  v52 = v53;
LABEL_16:
  v67 = *(v51 + 16);
  v69 = v92;
  v68 = v93;
  v70 = v91;
  if (v52 == v67)
  {
    v71 = 1;
    v72 = v96;
LABEL_23:
    sub_22C36C640(v72, v71, 1, v55);

    (*(v69 + 8))(v70, v68);
LABEL_32:
    sub_22C36CC48();
    return;
  }

  if (v52 >= v67)
  {
    __break(1u);
  }

  else
  {
    sub_22C389030();
    v81 = v94;
    sub_22C5791C0();
    v82 = v95;
    sub_22C4E719C(v81, v95, &qword_27D9BDC50, &unk_22C91B470);
    if (sub_22C370B74(v82, 1, v55) != 1)
    {
      v72 = v96;
      (*v104)(v96, v82, v55);
      sub_22C36DD28(v81, &qword_27D9BDC50, &unk_22C91B470);
      v71 = 0;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_35:
  sub_22C90B4EC();
  __break(1u);
}

uint64_t sub_22C577748()
{
  sub_22C3A5908(&qword_27D9BDEA0, &qword_22C91C338);
  sub_22C90A51C();
  return v1;
}

void sub_22C5777F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_22C36BA7C();
  v56 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v54 = v35;
  v37 = v36;
  v55 = v38;
  v39 = sub_22C9037DC();
  v40 = sub_22C369824(v39);
  v53 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22C369838();
  sub_22C576428(v34, v32, v30);
  sub_22C578954(v37, v54, v34, v32, v30, a21, v55, v56, a24, a26, a27, a28);
  sub_22C578D6C();
  v45 = v44;

  if (a25)
  {
    sub_22C9037AC();
    sub_22C57A098(&qword_27D9BC7F8, MEMORY[0x277D1ED48]);
    sub_22C36BC58();
    sub_22C90A56C();
    sub_22C36BC58();
    sub_22C90A56C();
    v46 = *(v53 + 8);
    v47 = sub_22C36EBF0();
    v48(v47);
    if (v57 == v58)
    {
      sub_22C36A83C();
      v49 = swift_allocObject();
      *(v49 + 16) = sub_22C90A49C();
      *(v49 + 24) = v50;
      v51 = *(v45 + 16);
      if (!swift_isUniquelyReferenced_nonNull_native() || v51 >= *(v45 + 24) >> 1)
      {
        sub_22C591324();
        v45 = v52;
      }

      sub_22C41D69C(0, 0, 1, v49);
    }
  }

  sub_22C47D738(10, 0xE100000000000000, v45);

  sub_22C36CC48();
}

uint64_t sub_22C577AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56[3] = a2;
  v56[2] = a3;
  v3 = sub_22C908A8C();
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v11 = v10 - v9;
  v58 = sub_22C90952C();
  v12 = sub_22C369824(v58);
  v56[1] = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v16 = sub_22C3A5908(&qword_27D9BC3B0, &unk_22C912AF0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v56 - v18;
  v20 = sub_22C90998C();
  v21 = sub_22C369824(v20);
  v56[0] = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22C369838();
  v27 = (v26 - v25);
  sub_22C90994C();
  (*(v6 + 104))(v11, *MEMORY[0x277D1E8C0], v3);
  v28 = v57;
  sub_22C908B1C();
  if (v28)
  {

    (*(v6 + 8))(v11, v3);
    v29 = sub_22C382740();
    v30(v29);
    sub_22C90947C();
    sub_22C36A748();
    sub_22C36C640(v31, v32, v33, v34);
    sub_22C36DD28(v19, &qword_27D9BC3B0, &unk_22C912AF0);
LABEL_6:
    v51 = 2;
    v59 = 2;
    sub_22C3E01D8();
    swift_willThrowTypedImpl();
    return v51;
  }

  v57 = v27;
  (*(v6 + 8))(v11, v3);
  v35 = sub_22C382740();
  v36(v35);
  v37 = sub_22C90947C();
  sub_22C36BECC();
  sub_22C36C640(v38, v39, v40, v37);
  v41 = *(v37 - 8);
  v42 = v41[11];
  v43 = sub_22C36BA00();
  if (v44(v43) != *MEMORY[0x277D72B48])
  {
    v52 = v41[1];
    v53 = sub_22C36BA00();
    v54(v53);
    goto LABEL_6;
  }

  v45 = v41[12];
  v46 = sub_22C36BA00();
  v47(v46);
  v48 = v56[0];
  v49 = v57;
  v50 = (*(v56[0] + 32))(v57, v19, v20);
  v51 = MEMORY[0x2318B6E50](v50);
  (*(v48 + 8))(v49, v20);
  return v51;
}

void sub_22C577E5C()
{
  sub_22C36BA7C();
  v132 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v126 = sub_22C909A5C();
  v7 = sub_22C369824(v126);
  v125 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v124 = v12 - v11;
  sub_22C36BA0C();
  v133 = sub_22C90998C();
  v13 = sub_22C369824(v133);
  v131 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v130 = v18 - v17;
  sub_22C36BA0C();
  v129 = sub_22C9063DC();
  v19 = sub_22C369824(v129);
  v128 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v134 = v24 - v23;
  sub_22C36BA0C();
  v146 = sub_22C909A3C();
  v25 = sub_22C369824(v146);
  v144 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C369ABC();
  v135 = v29 - v30;
  sub_22C369930();
  MEMORY[0x28223BE20](v31);
  v143 = &v123 - v32;
  sub_22C369930();
  MEMORY[0x28223BE20](v33);
  v136 = &v123 - v34;
  sub_22C369930();
  MEMORY[0x28223BE20](v35);
  v141 = &v123 - v36;
  sub_22C36BA0C();
  v145 = sub_22C9090BC();
  v37 = sub_22C369824(v145);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22C369838();
  v142 = v43 - v42;
  v44 = *(v2 + 40);
  v127 = v6;
  v147[2] = v6;

  v45 = sub_22C47B590(sub_22C57A078, v147, v44);
  v46 = *(v45 + 16);
  v138 = v4;
  if (v46)
  {
    v148[0] = MEMORY[0x277D84F90];
    sub_22C3B5E2C();
    v47 = v148[0];
    v49 = *(v39 + 16);
    v48 = v39 + 16;
    v140 = v49;
    v50 = (*(v48 + 64) + 32) & ~*(v48 + 64);
    v137 = v45;
    v51 = v45 + v50;
    v139 = *(v48 + 56);
    v52 = (v48 - 8);
    do
    {
      v53 = v142;
      v54 = v145;
      v55 = v48;
      sub_22C57A240();
      v56();
      v57 = sub_22C90908C();
      v59 = v58;
      (*v52)(v53, v54);
      v148[0] = v47;
      v61 = *(v47 + 16);
      v60 = *(v47 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_22C369AB0(v60);
        sub_22C3B5E2C();
        v47 = v148[0];
      }

      *(v47 + 16) = v61 + 1;
      v62 = v47 + 16 * v61;
      *(v62 + 32) = v57;
      *(v62 + 40) = v59;
      v51 += v139;
      --v46;
      v48 = v55;
    }

    while (v46);

    v4 = v138;
  }

  else
  {

    v47 = MEMORY[0x277D84F90];
  }

  v63 = sub_22C3AD928(v47);
  v64 = 0;
  v145 = *(v4 + 16);
  v142 = v144 + 16;
  v140 = v144 + 32;
  v139 = (v144 + 8);
  v137 = MEMORY[0x277D84F90];
LABEL_9:
  while (v64 != v145)
  {
    (*(v144 + 16))(v141, v4 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v64++, v146);
    sub_22C909A2C();
    v66 = v65;
    if (*(v63 + 16))
    {
      v67 = *(v63 + 40);
      sub_22C90B62C();
      sub_22C909FFC();
      sub_22C90B66C();
      sub_22C37676C();
      while (1)
      {
        sub_22C370784(v68);
        if ((v69 & 1) == 0)
        {
          break;
        }

        sub_22C383114();
        v71 = v71 && v70 == v66;
        if (!v71)
        {
          v72 = sub_22C90B4FC();
          v68 = v148 + 1;
          if ((v72 & 1) == 0)
          {
            continue;
          }
        }

        sub_22C57A240();
        v74 = *v73;
        (*v73)(v136, v141, v146);
        v75 = v137;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77 = v75;
        v149 = v75;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22C37F818(*(v75 + 16));
          v77 = v149;
        }

        v79 = *(v77 + 16);
        v78 = *(v77 + 24);
        if (v79 >= v78 >> 1)
        {
          v80 = sub_22C369AB0(v78);
          sub_22C3B6B48(v80, v79 + 1, 1);
          v77 = v149;
        }

        *(v77 + 16) = v79 + 1;
        v137 = v77;
        sub_22C57A240();
        v74();
        goto LABEL_9;
      }
    }

    (*v139)(v141, v146);
  }

  v81 = 0;
  v82 = MEMORY[0x277D84F90];
  while (v81 != v145)
  {
    (*(v144 + 16))(v143, v4 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v81++, v146);
    sub_22C909A2C();
    v84 = v83;
    if (*(v63 + 16))
    {
      v85 = *(v63 + 40);
      sub_22C90B62C();
      sub_22C909FFC();
      sub_22C90B66C();
      sub_22C37676C();
      while (1)
      {
        sub_22C370784(v86);
        if ((v87 & 1) == 0)
        {
          break;
        }

        sub_22C383114();
        if (!v71 || v88 != v84)
        {
          v90 = sub_22C90B4FC();
          v86 = v148 + 1;
          if ((v90 & 1) == 0)
          {
            continue;
          }
        }

        (*v139)(v143, v146);
        goto LABEL_40;
      }
    }

    sub_22C57A240();
    v92 = *v91;
    (*v91)(v135, v143, v146);
    v93 = swift_isUniquelyReferenced_nonNull_native();
    v149 = v82;
    if ((v93 & 1) == 0)
    {
      sub_22C37F818(*(v82 + 16));
      v82 = v149;
    }

    v95 = *(v82 + 16);
    v94 = *(v82 + 24);
    if (v95 >= v94 >> 1)
    {
      v96 = sub_22C369AB0(v94);
      sub_22C3B6B48(v96, v95 + 1, 1);
      v82 = v149;
    }

    *(v82 + 16) = v95 + 1;
    sub_22C57A240();
    v92();
LABEL_40:
    v4 = v138;
  }

  v148[0] = v137;
  sub_22C3CD58C(v82);
  v97 = v148[0];

  v98 = v132;
  v99 = sub_22C812574(v132, v97);
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v106 = v134;
  v107 = v133;
  if ((v104 & 1) == 0)
  {
    goto LABEL_42;
  }

  sub_22C90B50C();
  swift_unknownObjectRetain_n();
  v110 = swift_dynamicCastClass();
  if (!v110)
  {
    swift_unknownObjectRelease();
    v110 = MEMORY[0x277D84F90];
  }

  v82 = *(v110 + 16);

  if (__OFSUB__(v105 >> 1, v103))
  {
    __break(1u);
    goto LABEL_57;
  }

  if (v82 != (v105 >> 1) - v103)
  {
LABEL_57:
    swift_unknownObjectRelease();
LABEL_42:
    sub_22C470124(v99, v101, v103, v105);
    v109 = v108;
    sub_22C37F314();
    goto LABEL_49;
  }

  v109 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  sub_22C37F314();
  if (v109)
  {
    goto LABEL_50;
  }

  v109 = MEMORY[0x277D84F90];
LABEL_49:
  swift_unknownObjectRelease();
LABEL_50:
  if (*(v97 + 16) <= v98)
  {
  }

  else
  {
    sub_22C903F7C();
    (*(v105 + 16))(v82, v127, v107);
    swift_retain_n();

    v111 = sub_22C9063CC();
    v112 = sub_22C90AACC();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = v105;
      v114 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v148[0] = v146;
      *v114 = 136315650;
      v115 = v107;
      v116 = v124;
      LODWORD(v145) = v112;
      sub_22C90996C();
      v117 = sub_22C909A4C();
      v119 = v118;
      (*(v125 + 8))(v116, v126);
      (*(v113 + 8))(v82, v115);
      v120 = sub_22C36F9F4(v117, v119, v148);

      *(v114 + 4) = v120;
      *(v114 + 12) = 2048;
      v121 = *(v109 + 16);

      *(v114 + 14) = v121;

      *(v114 + 22) = 2048;
      v122 = *(v97 + 16);

      *(v114 + 24) = v122;

      _os_log_impl(&dword_22C366000, v111, v145, "Enum cases for %s truncated to first %ld out of %ld cases", v114, 0x20u);
      sub_22C36FF94(v146);
      sub_22C3699EC();
      sub_22C3699EC();

      (*(v128 + 8))(v134, v129);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v105 + 8))(v82, v107);
      (*(v128 + 8))(v106, v129);
    }
  }

  sub_22C36CC48();
}

uint64_t sub_22C578954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = sub_22C575F38(a3, a4, a5);
  v53 = a11;
  v54 = a12;
  v55 = a6;
  v56 = a8;
  v57 = a7;
  v18 = sub_22C792E18(sub_22C57A0E0, v52, v17);

  v60 = v18;
  v19 = *(a10 + 16);
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v51 = a2;
    v58 = MEMORY[0x277D84F90];
    sub_22C3B63D4();
    v21 = (a10 + 32);
    v20 = v58;
    do
    {
      v22 = *v21++;
      sub_22C36D2A8();
      v23 = swift_allocObject();
      *(v23 + 16) = 0;
      *(v23 + 24) = 1;
      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v24 = swift_allocObject();
      *(v24 + 16) = v22;
      *(v23 + 32) = v24;
      v58 = v20;
      v25 = *(v20 + 16);
      v26 = *(v20 + 24);

      if (v25 >= v26 >> 1)
      {
        sub_22C3B63D4();
        v20 = v58;
      }

      *(v20 + 16) = v25 + 1;
      *(v20 + 8 * v25 + 32) = v23 | 0xA000000000000000;
      --v19;
    }

    while (v19);
    a2 = v51;
  }

  sub_22C3CD124(v20);
  v27 = MEMORY[0x277D84F90];
  if (*(v60 + 16))
  {
    sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
    sub_22C36D2A8();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_22C90F800;
    sub_22C36A83C();
    v29 = swift_allocObject();
    v58 = 0x3A73677241;
    v59 = 0xE500000000000000;
    *(v29 + 16) = sub_22C90A49C();
    *(v29 + 24) = v30;
    *(v28 + 32) = v29;
    v58 = v28;

    sub_22C3CD124(v31);
    v50 = v58;
  }

  else
  {
    v50 = MEMORY[0x277D84F90];
  }

  sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
  v32 = swift_allocObject();
  if (a9)
  {
    *(v32 + 16) = xmmword_22C90F870;
    *(v32 + 32) = a1;
    *(v32 + 40) = a2;
    *(v32 + 48) = 0;
    *(v32 + 56) = 0xE000000000000000;
    v33 = 2;
  }

  else
  {
    *(v32 + 16) = xmmword_22C90F800;
    *(v32 + 32) = a1;
    *(v32 + 40) = a2;
    v33 = 1;
  }

  v58 = v27;

  sub_22C3B63D4();
  v34 = v58;
  v35 = (v32 + 40);
  do
  {
    v37 = *(v35 - 1);
    v36 = *v35;
    sub_22C36A83C();
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = v36;
    v58 = v34;
    v40 = *(v34 + 16);
    v39 = *(v34 + 24);

    if (v40 >= v39 >> 1)
    {
      sub_22C3B63D4();
      v34 = v58;
    }

    *(v34 + 16) = v40 + 1;
    *(v34 + 8 * v40 + 32) = v38;
    v35 += 2;
    --v33;
  }

  while (v33);

  v58 = v34;
  sub_22C3CD124(v50);
  v41 = v58;
  v42 = sub_22C47D738(10, 0xE100000000000000, v58);
  v43 = *(v41 + 16);

  if (v43 > 1)
  {
    sub_22C36A83C();
    v44 = swift_allocObject();
    v58 = 10;
    v59 = 0xE100000000000000;
    *(v44 + 16) = sub_22C90A49C();
    *(v44 + 24) = v45;
    v46 = sub_22C36BA00();
    v48 = sub_22C47D60C(v46, v47);

    return v48;
  }

  return v42;
}

void sub_22C578D6C()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22C90F870;
  sub_22C36A83C();
  v9 = swift_allocObject();
  *(v9 + 16) = 543581540;
  *(v9 + 24) = 0xE400000000000000;
  sub_22C591324();
  v11 = v10;
  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  v14 = v12 >> 1;
  v15 = v13 + 1;
  if (v12 >> 1 <= v13)
  {
    sub_22C369AB0(v12);
    sub_22C36FC14();
    v11 = v47;
    v12 = *(v47 + 24);
    v14 = v12 >> 1;
  }

  *(v11 + 16) = v15;
  *(v11 + 8 * v13 + 32) = v9;
  v16 = v13 + 2;
  if (v14 < (v13 + 2))
  {
    sub_22C369AB0(v12);
    sub_22C36FC14();
    v11 = v48;
  }

  *(v11 + 16) = v16;
  *(v11 + 8 * v15 + 32) = v7;
  sub_22C36A83C();
  v17 = swift_allocObject();
  *(v17 + 16) = 40;
  *(v17 + 24) = 0xE100000000000000;
  v18 = *(v11 + 24);
  v19 = v13 + 3;

  if (v19 > (v18 >> 1))
  {
    sub_22C36FC14();
    v11 = v49;
  }

  *(v11 + 16) = v19;
  *(v11 + 8 * v16 + 32) = v17;
  v20 = sub_22C47D738(8236, 0xE200000000000000, v5);
  v22 = *(v11 + 16);
  v21 = *(v11 + 24);
  v23 = v22 + 1;
  if (v22 >= v21 >> 1)
  {
    sub_22C369AB0(v21);
    sub_22C36FC14();
    v11 = v50;
  }

  *(v11 + 16) = v23;
  *(v11 + 8 * v22 + 32) = v20;
  sub_22C36A83C();
  v24 = swift_allocObject();
  *(v24 + 16) = 0x203E2D2029;
  *(v24 + 24) = 0xE500000000000000;
  v25 = *(v11 + 24);
  v26 = v22 + 2;
  if ((v22 + 2) > (v25 >> 1))
  {
    sub_22C369AB0(v25);
    sub_22C36FC14();
    v11 = v51;
  }

  *(v11 + 16) = v26;
  *(v11 + 8 * v23 + 32) = v24;
  v27 = *(v11 + 24);
  if ((v22 + 3) > (v27 >> 1))
  {
    sub_22C369AB0(v27);
    sub_22C36FC14();
    v11 = v52;
  }

  *(v11 + 16) = v22 + 3;
  *(v11 + 8 * v26 + 32) = v3;
  sub_22C36A83C();
  v28 = swift_allocObject();
  *(v28 + 16) = 58;
  *(v28 + 24) = 0xE100000000000000;
  v29 = *(v11 + 24);

  if ((v22 + 4) > (v29 >> 1))
  {
    sub_22C372934();
  }

  v30 = sub_22C372170();

  sub_22C369AEC();
  v31 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v31 + 16) = v32;
  *(v8 + 32) = v31 | 0x6000000000000000;
  sub_22C36A83C();
  v33 = swift_allocObject();
  *(v33 + 16) = 2236962;
  *(v33 + 24) = 0xE300000000000000;
  sub_22C591324();
  v35 = v34;
  v37 = *(v34 + 16);
  v36 = *(v34 + 24);
  v38 = v36 >> 1;
  v39 = v37 + 1;
  if (v36 >> 1 <= v37)
  {
    sub_22C369AB0(v36);
    sub_22C36FC14();
    v35 = v53;
    v36 = *(v53 + 24);
    v38 = v36 >> 1;
  }

  *(v35 + 16) = v39;
  *(v35 + 8 * v37 + 32) = v33;
  if (v38 < (v37 + 2))
  {
    sub_22C369AB0(v36);
    sub_22C36FC14();
    v35 = v54;
  }

  *(v35 + 16) = v37 + 2;
  *(v35 + 8 * v39 + 32) = v1;
  sub_22C36A83C();
  v40 = swift_allocObject();
  *(v40 + 16) = 2236962;
  *(v40 + 24) = 0xE300000000000000;
  v41 = *(v35 + 24);

  if ((v37 + 3) > (v41 >> 1))
  {
    sub_22C372934();
  }

  v42 = sub_22C372170();

  sub_22C369AEC();
  v43 = swift_allocObject();
  sub_22C369AEC();
  v44 = swift_allocObject();
  *(v44 + 16) = v42;
  *(v43 + 16) = v44;
  sub_22C36D2A8();
  v45 = swift_allocObject();
  *(v45 + 16) = 1;
  *(v45 + 24) = 1;
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  sub_22C369AEC();
  v46 = swift_allocObject();
  *(v46 + 16) = v43 | 0x6000000000000000;
  *(v45 + 32) = v46;
  *(v8 + 40) = v45 | 0xA000000000000000;
  sub_22C36CC48();
}

void sub_22C5791C0()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C908D6C();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v12 = v11 - v10;
  v13 = sub_22C9099FC();
  v14 = sub_22C369824(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v21 = v20 - v19;
  (*(v7 + 16))(v12, v1, v4);
  v22 = *(v7 + 88);
  v23 = sub_22C36EBF0();
  if (v24(v23) != *MEMORY[0x277D72148])
  {
    v34 = *(v7 + 8);
    v35 = sub_22C36EBF0();
    v36(v35);
LABEL_11:
    v33 = 1;
    goto LABEL_12;
  }

  v25 = *(v7 + 96);
  v26 = sub_22C36EBF0();
  v27(v26);
  v28 = *(v16 + 32);
  v28(v21, v12, v13);
  if (sub_22C9099DC() == 0xD00000000000001CLL && 0x800000022C932110 == v29)
  {

    goto LABEL_10;
  }

  v31 = sub_22C90B4FC();

  if (v31)
  {
LABEL_10:
    (*(v16 + 8))(v21, v13);
    goto LABEL_11;
  }

  v32 = sub_22C36BA00();
  (v28)(v32);
  v33 = 0;
LABEL_12:
  sub_22C36C640(v3, v33, 1, v13);
  sub_22C36CC48();
}

uint64_t sub_22C5793F8()
{
  v0 = sub_22C90637C();
  v21 = *(v0 - 8);
  v1 = *(v21 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_22C90634C();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v22);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_22C90636C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22C90364C();
  v13 = sub_22C90635C();
  sub_22C90638C();
  v20 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {

    sub_22C9063BC();

    v14 = v21;
    if ((*(v21 + 88))(v3, v0) == *MEMORY[0x277D85B00])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v3, v0);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v13, v20, v17, "PromptToolsHelper.loadToolsOverride", v15, v16, 2u);
    MEMORY[0x2318B9880](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v22);
  return (*(v9 + 8))(v12, v8);
}

void sub_22C5796E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *&v51 = a7;
  v49 = a3;
  *&v50 = a5;
  v48 = a4;
  v43 = a1;
  v10 = type metadata accessor for PromptToolsHelper.RenderableParameter();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v44 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C9063DC();
  v46 = *(v14 - 8);
  v47 = v14;
  v15 = *(v46 + 64);
  MEMORY[0x28223BE20](v14);
  v45 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22C90981C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v42 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v40 - v22;
  v41 = *(v18 + 16);
  v41(&v40 - v22, a2, v17);
  v24 = *(v11 + 28);
  v52 = a2;
  v25 = (a2 + v24);
  if (v25[1])
  {
    v26 = *v25;
    v27 = v25[1];
  }

  else
  {
    v26 = 0;
    v27 = 0xE000000000000000;
  }

  v28 = *(a9 + 24);

  v28(&v53, v23, v26, v27, v48, v50, v51, a9);

  (*(v18 + 8))(v23, v17);
  if (v56)
  {
    v29 = v45;
    sub_22C903F7C();
    v30 = v44;
    sub_22C56517C(v52, v44);
    v31 = sub_22C9063CC();
    v32 = sub_22C90AADC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v53 = v34;
      *v33 = 136315138;
      v35 = sub_22C9097DC();
      v37 = v36;
      sub_22C5651E0(v30);
      v38 = sub_22C36F9F4(v35, v37, &v53);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_22C366000, v31, v32, "Failed to get representation for parameter %s", v33, 0xCu);
      sub_22C36FF94(v34);
      MEMORY[0x2318B9880](v34, -1, -1);
      MEMORY[0x2318B9880](v33, -1, -1);
    }

    else
    {

      sub_22C5651E0(v30);
    }

    (*(v46 + 8))(v29, v47);
  }

  else
  {
    v50 = v54;
    v51 = v53;
    v39 = v55;
    v41(v42, v52, v17);
    v54 = v50;
    v53 = v51;
    v55 = v39;
    sub_22C7C6C34();
  }
}

uint64_t sub_22C579AC4()
{
  v0 = sub_22C90952C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  sub_22C9090AC();
  sub_22C90994C();
  v8 = sub_22C90950C();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return v8 & 1;
}

uint64_t sub_22C579BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t *a7@<X8>)
{
  v60 = a7;
  v14 = sub_22C3A5908(&qword_27D9BC0C0, &unk_22C911FA0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v58 - v16;
  sub_22C9097DC();
  sub_22C605600(a3, v17);

  v18 = sub_22C9097DC();
  v20 = sub_22C6054B8(v18, v19, a4);
  v22 = v21;

  v23 = *(a6 + 40);
  v58[1] = a2;
  v59 = a5;
  v24 = v23(a1, v17, v20, v22, a5, a6);

  result = sub_22C36DD28(v17, &qword_27D9BC0C0, &unk_22C911FA0);
  v26 = 0xF000000000000007;
  if ((~v24 & 0xF000000000000007) == 0)
  {
    goto LABEL_5;
  }

  v61 = MEMORY[0x277D84F90];
  sub_22C496A94();
  if (!v7)
  {
    v28 = v27;

    if ((v28 & 1) == 0)
    {
      v30 = swift_allocObject();
      *(v30 + 16) = 0;
      *(v30 + 24) = 0xE000000000000000;
      sub_22C591324();
      v32 = v31;
      v33 = *(v31 + 16);
      if (v33 >= *(v31 + 24) >> 1)
      {
        sub_22C591324();
        v32 = v53;
      }

      *(v32 + 16) = v33 + 1;
      *(v32 + 8 * v33 + 32) = v30;
      v34 = (*(a6 + 32))(a1, v59, a6);
      v36 = v35;
      v37 = swift_allocObject();
      *(v37 + 16) = v34;
      *(v37 + 24) = v36;
      v39 = *(v32 + 16);
      v38 = *(v32 + 24);

      if (v39 >= v38 >> 1)
      {
        sub_22C591324();
        v32 = v54;
      }

      *(v32 + 16) = v39 + 1;
      *(v32 + 8 * v39 + 32) = v37;

      v40 = swift_allocObject();
      *(v40 + 16) = 8250;
      *(v40 + 24) = 0xE200000000000000;
      v41 = *(v32 + 16);
      v42 = *(v32 + 24) >> 1;
      v43 = v41 + 1;
      if (v42 <= v41)
      {
        sub_22C591324();
        v32 = v55;
        v42 = *(v55 + 24) >> 1;
      }

      *(v32 + 16) = v43;
      *(v32 + 8 * v41 + 32) = v40;
      v44 = v41 + 2;
      if (v42 < (v41 + 2))
      {
        sub_22C591324();
        v32 = v56;
      }

      *(v32 + 16) = v44;
      *(v32 + 8 * v43 + 32) = v24;
      v45 = swift_allocObject();
      *(v45 + 16) = 0;
      *(v45 + 24) = 0xE000000000000000;
      v46 = *(v32 + 24);
      v47 = v41 + 3;

      if ((v41 + 3) > (v46 >> 1))
      {
        sub_22C591324();
        v32 = v57;
      }

      v29 = v60;
      *(v32 + 16) = v47;
      *(v32 + 8 * v44 + 32) = v45;
      v48 = sub_22C3DB9B0(v32);
      sub_22C4546F8(v24);

      v49 = swift_allocObject();
      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      v50 = swift_allocObject();
      *(v50 + 16) = v48;
      *(v49 + 16) = v50;
      v51 = v49 | 0x6000000000000000;
      v52 = swift_allocObject();
      *(v52 + 16) = 0;
      *(v52 + 24) = 1;
      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      result = swift_allocObject();
      *(result + 16) = v51;
      *(v52 + 32) = result;
      v26 = v52 | 0xA000000000000000;
      goto LABEL_17;
    }

    result = sub_22C4546F8(v24);
    v26 = 0xF000000000000007;
LABEL_5:
    v29 = v60;
LABEL_17:
    *v29 = v26;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_22C57A098(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PromptToolsHelper.RenderableParameter()
{
  result = qword_27D9BDEA8;
  if (!qword_27D9BDEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22C57A1BC()
{
  sub_22C90981C();
  if (v0 <= 0x3F)
  {
    sub_22C436620();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C57A24C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 16))
  {
    v32 = MEMORY[0x277D84F90];
    v31 = *(a1 + 16);
    sub_22C3B628C();
    v6 = sub_22C57CF00(a1);
    v9 = v6;
    v10 = v31;
    v11 = 0;
    v12 = a1 + 56;
    v13 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v13 = a2;
    }

    v14 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v14 = 11;
    }

    v15 = v14 | (v13 << 16);
    v30 = v15;
    if ((v6 & 0x8000000000000000) == 0)
    {
      while (v9 < 1 << *(a1 + 32))
      {
        v16 = v9 >> 6;
        if ((*(v12 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
        {
          goto LABEL_28;
        }

        if (*(a1 + 36) != v7)
        {
          goto LABEL_29;
        }

        v17 = *(*(a1 + 48) + v9);
        v18 = *(v32 + 16);
        if (v18 >= *(v32 + 24) >> 1)
        {
          v29 = v7;
          v28 = v8;
          sub_22C3B628C();
          v8 = v28;
          v7 = v29;
          v15 = v30;
          v12 = a1 + 56;
          v10 = v31;
        }

        *(v32 + 16) = v18 + 1;
        v19 = v32 + 24 * v18;
        *(v19 + 32) = 15;
        *(v19 + 40) = v15;
        *(v19 + 48) = v17;
        if (v8)
        {
          goto LABEL_33;
        }

        v20 = 1 << *(a1 + 32);
        if (v9 >= v20)
        {
          goto LABEL_30;
        }

        v21 = *(v12 + 8 * v16);
        if ((v21 & (1 << v9)) == 0)
        {
          goto LABEL_31;
        }

        if (*(a1 + 36) != v7)
        {
          goto LABEL_32;
        }

        v22 = v21 & (-2 << (v9 & 0x3F));
        if (v22)
        {
          v20 = __clz(__rbit64(v22)) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v23 = v16 << 6;
          v24 = v16 + 1;
          v25 = (a1 + 64 + 8 * v16);
          while (v24 < (v20 + 63) >> 6)
          {
            v27 = *v25++;
            v26 = v27;
            v23 += 64;
            ++v24;
            if (v27)
            {
              sub_22C3A5038(v9, v7, 0);
              v15 = v30;
              v12 = a1 + 56;
              v10 = v31;
              v20 = __clz(__rbit64(v26)) + v23;
              goto LABEL_23;
            }
          }

          sub_22C3A5038(v9, v7, 0);
          v15 = v30;
          v12 = a1 + 56;
          v10 = v31;
        }

LABEL_23:
        if (++v11 == v10)
        {
          goto LABEL_26;
        }

        v8 = 0;
        v7 = *(a1 + 36);
        v9 = v20;
        if (v20 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
LABEL_26:
  }
}

uint64_t sub_22C57A51C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{

  sub_22C57A24C(MEMORY[0x277D84FA0], a1, a2);
  v9 = sub_22C3AD898(v8);
  *a4 = a1;
  a4[1] = a2;
  a4[2] = v9;
  type metadata accessor for SegmentedPrompt.SegmentPayload(0);
  swift_storeEnumTagMultiPayload();
  result = sub_22C383128();
  *(a4 + v11) = a3;
  return result;
}

uint64_t sub_22C57A5D4(char a1)
{
  sub_22C37B5C8();
  MEMORY[0x2318B8B10](a1 & 1);
  return sub_22C90B66C();
}

void sub_22C57A64C()
{
  sub_22C36986C();
  sub_22C57ADA4();
  if (v2)
  {
    sub_22C383128();
    v4 = *(v1 + v3);
    v5 = *(v0 + v3);

    sub_22C472D84(v5, v4);
  }

  else
  {

    sub_22C57A6B4();
  }
}

void sub_22C57A6B4()
{
  sub_22C36BA7C();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for SegmentedPrompt.DeferredReference(0);
  v7 = sub_22C369914(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369ABC();
  v71 = v10 - v11;
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  sub_22C36BA58();
  v72 = v13;
  sub_22C369930();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA58();
  v73 = v15;
  sub_22C369930();
  MEMORY[0x28223BE20](v16);
  v18 = &v70 - v17;
  v19 = type metadata accessor for SegmentedPrompt.SegmentPayload(0);
  v20 = sub_22C36985C(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C369ABC();
  v77 = v23 - v24;
  sub_22C369930();
  MEMORY[0x28223BE20](v25);
  sub_22C36BA58();
  v74 = v26;
  sub_22C369930();
  v28 = MEMORY[0x28223BE20](v27);
  v30 = (&v70 - v29);
  MEMORY[0x28223BE20](v28);
  sub_22C3705C8();
  MEMORY[0x28223BE20](v31);
  v32 = sub_22C3A5908(&qword_27D9BDF78, &unk_22C91CAA0);
  sub_22C369914(v32);
  v34 = *(v33 + 64);
  sub_22C36D5A8();
  v36 = MEMORY[0x28223BE20](v35);
  sub_22C389048(v36);
  v38 = (v0 + v37);
  sub_22C57D794();
  v75 = v5;
  sub_22C57D6F0();
  v76 = v3;
  sub_22C370018();
  sub_22C57D6F0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22C373558();
      sub_22C37BD98();
      sub_22C57D6F0();
      v40 = *(sub_22C3A5908(&qword_27D9BC848, &unk_22C926CA0) + 48);
      v41 = *(v1 + v40);
      v42 = *(v1 + v40 + 8);
      v43 = *(v1 + v40 + 16);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v44 = v38 + v40;
        v45 = *(v38 + v40);
        v46 = *(v44 + 1);
        v47 = *(v44 + 2);
        v48 = v72;
        sub_22C57D698();
        v49 = v71;
        sub_22C57D698();
        if (sub_22C57B8F4(v48, v49))
        {
          v50 = v41 == v45 && v42 == v46;
          if (v50 || (sub_22C90B4FC() & 1) != 0)
          {
            sub_22C5DBAE4();
            if (v51)
            {

              sub_22C57D7AC();
              sub_22C57D644();
LABEL_36:
              sub_22C57D644();
LABEL_37:
              sub_22C57D76C();
              goto LABEL_38;
            }
          }

          sub_22C574230(v41, v42, v43, v45, v46, v47);
        }

        else
        {

          sub_22C57B324(v48, v49);
        }

LABEL_35:
        sub_22C57D644();
        goto LABEL_36;
      }

      sub_22C36ABF0();
      sub_22C57D644();
    }

    else
    {
      sub_22C373558();
      sub_22C57D6F0();
      v54 = *v30;
      v53 = v30[1];
      v55 = v30[2];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v56 = *v38;
        v57 = v38[1];
        v58 = v38[2];
        v59 = v54 == v56 && v53 == v57;
        if (v59 || (sub_22C90B4FC()) && (sub_22C5DBAE4(), (v60))
        {
        }

        else
        {
          sub_22C574230(v54, v53, v55, v56, v57, v58);
        }

        goto LABEL_37;
      }
    }
  }

  else
  {
    v52 = v73;
    sub_22C373558();
    sub_22C57D6F0();
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C57D698();
      sub_22C57D698();
      if (sub_22C57B8F4(v18, v52))
      {
        sub_22C57D7AC();
      }

      else
      {
        sub_22C57B324(v18, v52);
        sub_22C36BF30();
      }

      goto LABEL_35;
    }

    sub_22C36ABF0();
    sub_22C57D644();
  }

  sub_22C373558();
  v61 = v74;
  sub_22C57D6F0();
  v62 = swift_getEnumCaseMultiPayload();
  v63 = v77;
  if (v62 == 1)
  {
    v64 = v61 + *(sub_22C3A5908(&qword_27D9BC848, &unk_22C926CA0) + 48);
    v66 = *(v64 + 8);
    v65 = *(v64 + 16);
  }

  sub_22C57D644();
  sub_22C373558();
  sub_22C57D6F0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v67 = v63 + *(sub_22C3A5908(&qword_27D9BC848, &unk_22C926CA0) + 48);
    v69 = *(v67 + 8);
    v68 = *(v67 + 16);
  }

  sub_22C57D644();
  sub_22C36DD28(v0, &qword_27D9BDF78, &unk_22C91CAA0);
LABEL_38:
  sub_22C36CC48();
}

void sub_22C57ADA4()
{
  sub_22C36BA7C();
  v2 = type metadata accessor for SegmentedPrompt.DeferredReference(0);
  v3 = sub_22C369914(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  v48 = v6 - v7;
  sub_22C369930();
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - v9;
  v11 = type metadata accessor for SegmentedPrompt.SegmentPayload(0);
  v12 = sub_22C36985C(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369ABC();
  v17 = (v15 - v16);
  MEMORY[0x28223BE20](v18);
  sub_22C3705C8();
  MEMORY[0x28223BE20](v19);
  v21 = &v47 - v20;
  v22 = sub_22C3A5908(&qword_27D9BDF78, &unk_22C91CAA0);
  sub_22C369914(v22);
  v24 = *(v23 + 64);
  sub_22C36D5A8();
  v26 = MEMORY[0x28223BE20](v25);
  sub_22C389048(v26);
  v28 = (v0 + v27);
  sub_22C57D794();
  sub_22C57D6F0();
  sub_22C57D6F0();
  sub_22C36BAFC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_22C373558();
      sub_22C57D6F0();
      v41 = *v17;
      v40 = v17[1];
      v42 = v17[2];
      sub_22C370018();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v43 = *v28;
        v44 = v28[1];
        v45 = v28[2];
        v46 = v41 == v43 && v40 == v44;
        if (v46 || (sub_22C90B4FC() & 1) != 0)
        {
          sub_22C5DBAE4();

LABEL_28:
          sub_22C57D76C();
          goto LABEL_29;
        }

LABEL_27:

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    sub_22C373558();
    sub_22C37BD98();
    sub_22C57D6F0();
    v30 = *(sub_22C3A5908(&qword_27D9BC848, &unk_22C926CA0) + 48);
    v32 = *(v1 + v30);
    v31 = *(v1 + v30 + 8);
    v33 = *(v1 + v30 + 16);
    sub_22C370018();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = *(v28 + v30);
      v34 = *(v28 + v30 + 8);
      v36 = *(v28 + v30 + 16);
      sub_22C377F48();
      v37 = v48;
      sub_22C57D698();
      v38 = sub_22C57B8F4(v1, v37);
      sub_22C36ABF0();
      sub_22C57D644();
      if (v38)
      {
        v39 = v32 == v35 && v31 == v34;
        if (v39 || (sub_22C36FC74(), (sub_22C90B4FC() & 1) != 0))
        {
          sub_22C5DBAE4();

          sub_22C36ABF0();
          sub_22C57D644();
        }

        else
        {

          sub_22C36ABF0();
          sub_22C57D644();
        }

        goto LABEL_28;
      }

      sub_22C36ABF0();
      sub_22C57D644();

      goto LABEL_27;
    }

    sub_22C36ABF0();
  }

  else
  {
    sub_22C373558();
    sub_22C57D6F0();
    sub_22C370018();
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C377F48();
      sub_22C57D698();
      sub_22C57B8F4(v21, v10);
      sub_22C36BF30();
      sub_22C57D644();
      sub_22C57D644();
      sub_22C57D76C();
      goto LABEL_29;
    }

    sub_22C36ABF0();
  }

  sub_22C57D644();
LABEL_23:
  sub_22C36DD28(v0, &qword_27D9BDF78, &unk_22C91CAA0);
LABEL_29:
  sub_22C36CC48();
}

uint64_t sub_22C57B1DC()
{
  sub_22C36986C();
  sub_22C57ADA4();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  sub_22C383128();
  v4 = *(v1 + v3);
  v5 = *(v0 + v3);

  return sub_22C46D658(v4, v5);
}

void sub_22C57B230(uint64_t a1)
{
  sub_22C57BD0C();
  sub_22C383128();
  v4 = *(v1 + v3);

  sub_22C470F4C(a1, v4);
}

uint64_t sub_22C57B270()
{
  sub_22C37B5C8();
  sub_22C57BD0C();
  sub_22C383128();
  sub_22C470F4C(v3, *(v0 + v1));
  return sub_22C90B66C();
}

uint64_t sub_22C57B2D4(uint64_t a1, uint64_t a2)
{
  sub_22C90B62C();
  sub_22C57BD0C();
  sub_22C470F4C(v5, *(v2 + *(a2 + 20)));
  return sub_22C90B66C();
}

uint64_t sub_22C57BD0C()
{
  v1 = sub_22C3704C4();
  v2 = type metadata accessor for SegmentedPrompt.DeferredReference(v1);
  v3 = sub_22C369914(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v6 = type metadata accessor for SegmentedPrompt.SegmentPayload(0);
  v7 = sub_22C36985C(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v12 = (v11 - v10);
  sub_22C373558();
  sub_22C57D6F0();
  sub_22C372164();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_22C377F48();
    sub_22C57D698();
    MEMORY[0x2318B8B10](0);
    sub_22C57C528(v0);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v14 = (v12 + *(sub_22C3A5908(&qword_27D9BC848, &unk_22C926CA0) + 48));
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    sub_22C377F48();
    sub_22C57D698();
    MEMORY[0x2318B8B10](1);
    sub_22C57C528(v0);
    sub_22C37BD98();
    sub_22C909FFC();

LABEL_5:
    sub_22C36ABF0();
    return sub_22C57D644();
  }

  v19 = *v12;
  v20 = v12[1];
  v21 = v12[2];
  MEMORY[0x2318B8B10](2);
  sub_22C36BAFC();
  sub_22C909FFC();
}

uint64_t sub_22C57C23C()
{
  sub_22C37B5C8();
  v1 = *v0;
  sub_22C4706F0();
  sub_22C7EDAF8(v13, v0[1], v2, v3, v4, v5, v6, v7, v12, v13[0], v13[1], v13[2], v13[3], v13[4], v13[5], v13[6], v13[7], v13[8], v13[9], v13[10]);
  v8 = *(type metadata accessor for SegmentedPrompt.DeferredReference.TypeIdentifierReference(0) + 24);
  sub_22C90963C();
  sub_22C372954();
  sub_22C57D554(v9, v10);
  sub_22C909F8C();
  return sub_22C90B66C();
}

uint64_t sub_22C57C310()
{
  sub_22C46D6C8();
  if (v0)
  {
    v1 = sub_22C36BA00();

    return sub_22C472AD8(v1, v2);
  }

  else
  {
    v4 = sub_22C37335C();

    return sub_22C4730A0(v4, v5);
  }
}

void sub_22C57C388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C46D6C8();
  if (v28)
  {

    sub_22C46D710(a2, a4, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }
}

void sub_22C57C3E0(uint64_t a1, uint64_t a2)
{
  sub_22C4720DC(a1, a2);

  sub_22C4706F0();
}

uint64_t sub_22C57C420()
{
  sub_22C36986C();
  sub_22C37B5C8();
  sub_22C4720DC(v2, v0);
  sub_22C4706F0();
  return sub_22C90B66C();
}

uint64_t sub_22C57C46C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return sub_22C57C310();
}

BOOL sub_22C57C480(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return sub_22C473C48();
}

uint64_t sub_22C57C4A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return sub_22C474634();
}

uint64_t sub_22C57C4D0()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_22C57C420();
}

uint64_t sub_22C57C4E0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22C90B62C();
  sub_22C57C3E0(v4, v1);
  return sub_22C90B66C();
}

uint64_t sub_22C57C7A4(void (*a1)(_BYTE *))
{
  sub_22C37B5C8();
  a1(v3);
  return sub_22C90B66C();
}