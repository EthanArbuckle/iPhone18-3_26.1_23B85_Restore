void sub_22C5550B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v5 = sub_22C90430C();
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  MEMORY[0x28223BE20](v5);
  v49 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TypeIdentifierRenderer_v5_0(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - v13;
  v15 = sub_22C9063DC();
  v47 = *(v15 - 8);
  v48 = v15;
  v16 = *(v47 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_22C90422C();
  *(v19 + 24) = v20;
  sub_22C456D48(0, 0);
  v21 = sub_22C60595C(a2, *a1);
  if ((~v21 & 0xF000000000000007) != 0)
  {
    v23 = v21;
    if (sub_22C48819C(v21, v19))
    {

      sub_22C4546F8(v23);
    }

    else
    {
      sub_22C903F7C();
      sub_22C557A88(v44, v14);
      v24 = v45;
      v25 = v18;
      v26 = v46;
      (*(v45 + 16))(v49, a2, v46);
      v27 = sub_22C9063CC();
      LODWORD(v44) = sub_22C90AADC();
      if (os_log_type_enabled(v27, v44))
      {
        v28 = swift_slowAlloc();
        v43 = v25;
        v41 = v27;
        v29 = v28;
        v42 = swift_slowAlloc();
        v50 = v42;
        *v29 = 136315394;
        sub_22C557A88(v14, v12);
        v30 = sub_22C90A1AC();
        v32 = v31;
        sub_22C557AE0(v14, type metadata accessor for TypeIdentifierRenderer_v5_0);
        v33 = sub_22C36F9F4(v30, v32, &v50);

        *(v29 + 4) = v33;
        *(v29 + 12) = 2080;
        sub_22C557DE4(&qword_27D9BDC58, MEMORY[0x277D85578]);
        v34 = v49;
        v35 = sub_22C90B47C();
        v37 = v36;
        (*(v24 + 8))(v34, v26);
        v38 = sub_22C36F9F4(v35, v37, &v50);

        *(v29 + 14) = v38;
        v39 = v41;
        _os_log_impl(&dword_22C366000, v41, v44, "%s Unexpected duplicate renderings for the same UTType: %s", v29, 0x16u);
        v40 = v42;
        swift_arrayDestroy();
        MEMORY[0x2318B9880](v40, -1, -1);
        MEMORY[0x2318B9880](v29, -1, -1);
        sub_22C4546F8(v23);

        (*(v47 + 8))(v43, v48);
      }

      else
      {
        sub_22C4546F8(v23);

        (*(v24 + 8))(v49, v26);
        sub_22C557AE0(v14, type metadata accessor for TypeIdentifierRenderer_v5_0);
        (*(v47 + 8))(v25, v48);
      }
    }
  }

  else
  {
    v22 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    v50 = *a1;
    sub_22C62DF0C();
    *a1 = v50;
  }
}

uint64_t sub_22C5555A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  sub_22C456C94(v8, v9);
  result = sub_22C55562C(v7, a2, a3);
  *a4 = result;
  a4[1] = v8;
  a4[2] = v9;
  a4[3] = v10;
  a4[4] = v11;
  return result;
}

uint64_t sub_22C55562C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PromptTreeIdentifier(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(a2 + 8);
  v11 = *(type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0) + 24);
  v12 = sub_22C90963C();
  (*(*(v12 - 8) + 16))(&v9[v11], a3, v12);
  *v9 = a1;
  *(v9 + 1) = v10;
  swift_storeEnumTagMultiPayload();
  v13 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  v14 = swift_allocBox();
  v16 = v15;
  v17 = *(v13 + 48);
  sub_22C557A88(v9, v15);
  type metadata accessor for PromptTreeIdentifier.Label(0);
  v18 = swift_allocBox();

  sub_22C486784();
  sub_22C557AE0(v9, type metadata accessor for PromptTreeIdentifier);
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  v19 = swift_allocObject();
  *(v19 + 16) = v18 | 0x2000000000000000;
  *(v16 + v17) = v19;
  return v14 | 0x4000000000000000;
}

void sub_22C555808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v22;
  a20 = v23;
  v230 = v21;
  v213 = v24;
  sub_22C369A48();
  v231 = sub_22C909A5C();
  v25 = sub_22C369824(v231);
  v228 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C3698A8();
  v226 = v29;
  sub_22C36BA0C();
  v30 = sub_22C9063DC();
  v31 = sub_22C369824(v30);
  v224 = v32;
  v225 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22C3698A8();
  v223 = v35;
  v36 = sub_22C3A5908(&qword_27D9BD8B8, &qword_22C919AB0);
  sub_22C369914(v36);
  v38 = *(v37 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v39);
  sub_22C36D5B4();
  sub_22C3698F8(v40);
  v233 = sub_22C9096DC();
  v41 = sub_22C369824(v233);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22C369838();
  v48 = v47 - v46;
  v49 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  v50 = sub_22C369914(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v53);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v54);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v55);
  sub_22C36BA58();
  v232 = v56;
  sub_22C369930();
  MEMORY[0x28223BE20](v57);
  sub_22C36BA64();
  sub_22C3698F8(v58);
  v59 = sub_22C9099FC();
  v60 = sub_22C36A7A4(v59, &a18);
  v214 = v61;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v60);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v64);
  sub_22C36BA64();
  sub_22C3698F8(v65);
  v229 = sub_22C90947C();
  v66 = sub_22C369824(v229);
  v216 = v67;
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v66);
  sub_22C3698A8();
  sub_22C3698F8(v70);
  v71 = sub_22C90077C();
  v72 = sub_22C369824(v71);
  v221 = v73;
  v222 = v72;
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v72);
  sub_22C369838();
  v78 = v77 - v76;
  v79 = sub_22C908A8C();
  v80 = sub_22C369824(v79);
  v219 = v81;
  v220 = v80;
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v80);
  sub_22C369838();
  sub_22C387210();
  v84 = sub_22C3A5908(&qword_27D9BC3B0, &unk_22C912AF0);
  v85 = sub_22C369914(v84);
  v87 = *(v86 + 64);
  MEMORY[0x28223BE20](v85);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v88);
  v90 = (v208 - v89);
  v91 = sub_22C90952C();
  v92 = sub_22C369824(v91);
  v94 = v93;
  v96 = *(v95 + 64);
  MEMORY[0x28223BE20](v92);
  sub_22C369ABC();
  v99 = v97 - v98;
  MEMORY[0x28223BE20](v100);
  v102 = v208 - v101;
  v227 = v21;
  sub_22C90994C();
  (*(v94 + 16))(v99, v102, v91);
  v103 = *(v94 + 88);
  v104 = sub_22C36D29C();
  if (v105(v104) != *MEMORY[0x277D72D28])
  {
    v114 = *(v94 + 8);
    v115 = sub_22C36D29C();
    v114(v115);
    v116 = v223;
    sub_22C903F7C();
    v117 = sub_22C9063CC();
    v118 = sub_22C90AADC();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&dword_22C366000, v117, v118, "Unsupported EnumerationDefinition.identifier type found", v119, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    (*(v224 + 8))(v116, v225);
    v120 = v226;
    sub_22C90996C();
    sub_22C909A4C();
    v228[1](v120, v231);
    (v114)(v102, v91);
    goto LABEL_30;
  }

  v227 = v94;
  v106 = *(v94 + 96);
  v107 = v91;
  v106(v99, v91);
  v109 = *(*v99 + 16);
  v108 = *(*v99 + 24);
  v110 = *(*v99 + 32);
  v111 = *(*v99 + 40);
  v223 = v109;
  v224 = v110;
  v225 = v108;

  v226 = v111;

  v112 = sub_22C908B2C();
  MEMORY[0x2318B6010](v112);
  v228 = v90;
  v113 = v230;
  sub_22C908B1C();
  v121 = v229;
  (*(v221 + 8))(v78, v222);
  (*(v219 + 8))(v20, v220);
  v122 = v228;
  sub_22C36C640(v228, 0, 1, v121);
  sub_22C900AAC();
  sub_22C54CE60();

  sub_22C3AD9E8();
  if (qword_27D9BA698 != -1)
  {
    sub_22C37B648();
  }

  sub_22C7B539C();
  sub_22C5E94F0();
  v124 = v123;

  if (v124)
  {

    v125 = v107;
    goto LABEL_29;
  }

  v126 = v217;
  sub_22C379DF8(v122, v217, &qword_27D9BC3B0, &unk_22C912AF0);
  if (sub_22C370B74(v126, 1, v121) == 1)
  {
    sub_22C36DD28(v126, &qword_27D9BC3B0, &unk_22C912AF0);
    v125 = v107;
LABEL_25:
    sub_22C908A4C();
    v158 = v235;
    v159 = v236;
    sub_22C374168(v234, v235);
    sub_22C37205C(&a11);
    v160 = v159;
    v161 = v102;
    sub_22C57D7C4(v158, v160, v162);
    v163 = sub_22C909A7C();
    v164 = sub_22C36E638();
    v166 = sub_22C370B74(v164, v165, v163);
    v167 = v212;
    if (v166 == 1)
    {
      sub_22C36FF94(v234);
      sub_22C36DD28(v121, &qword_27D9BD8B8, &qword_22C919AB0);
      sub_22C36A748();
      sub_22C36C640(v168, v169, v170, v218);
    }

    else
    {
      v161 = v121;
      sub_22C57E564();
      sub_22C36BBA8(v163);
      v172 = *(v171 + 8);
      v173 = sub_22C371530();
      v174(v173);
      sub_22C36BECC();
      v175 = v218;
      sub_22C36C640(v176, v177, v178, v218);
      sub_22C36FF94(v234);
      if (sub_22C370B74(v167, 1, v175) != 1)
      {

        sub_22C385E64(&a14);
        v205 = v208[1];
        v206 = sub_22C38B418();
        v207(v206);
        sub_22C9099EC();
        sub_22C9099DC();
        (*(v113 + 8))(v205, v175);
        goto LABEL_29;
      }
    }

    sub_22C36DD28(v167, &qword_27D9BDC50, &unk_22C91B470);
    v179 = type metadata accessor for Hack_EnumerationDefinition_TypeReferenceRenderer_v5_0(0);
    sub_22C374168((v113 + *(v179 + 20)), *(v113 + *(v179 + 20) + 24));
    sub_22C557F08();
    MEMORY[0x28223BE20](v180);
    sub_22C3759B4();
    v181 = v223;
    v182 = v225;
    *(v183 - 32) = v223;
    *(v183 - 24) = v182;
    v184 = v213;
    *(v183 - 16) = v213;
    *(v183 - 8) = v161;
    sub_22C4FB170(v181, v182, sub_22C430BE0, v185, v184);

LABEL_29:
    v186 = sub_22C90A28C();
    v188 = v187;

    v189 = sub_22C90A28C();
    v191 = v190;

    v234[0] = v186;
    v234[1] = v188;

    MEMORY[0x2318B7850](v189, v191);

    sub_22C36DD28(v122, &qword_27D9BC3B0, &unk_22C912AF0);
    (*(v227 + 8))(v102, v125);
LABEL_30:
    sub_22C36BA00();
    sub_22C36CC48();
    return;
  }

  v221 = v107;
  v222 = v102;
  sub_22C3722F4(&a16);
  v127(v215, v126, v121);
  v121 = 0;
  v231 = sub_22C57E808();
  v128 = *(v231 + 16);
  v129 = *MEMORY[0x277D73010];
  v130 = (v43 + 8);
  v131 = v218;
  while (1)
  {
    v132 = v233;
    if (v128 == v121)
    {
      v121 = v128;
      goto LABEL_18;
    }

    v133 = *(v43 + 80);
    sub_22C36BA94();
    (*(v43 + 16))(v48, v231 + v134 + *(v43 + 72) * v121, v132);
    if ((*(v43 + 88))(v48, v132) == v129)
    {
      break;
    }

    (*v130)(v48, v132);
    v135 = v232;
    sub_22C36A748();
    sub_22C36C640(v136, v137, v138, v131);
    sub_22C36DD28(v135, &qword_27D9BDC50, &unk_22C91B470);
    ++v121;
  }

  (*(v43 + 96))(v48, v132);
  sub_22C3722F4(&a14);
  v139 = v232;
  v140(v232, v48, v131);
  sub_22C36BECC();
  sub_22C36C640(v141, v142, v143, v131);
  sub_22C36DD28(v139, &qword_27D9BDC50, &unk_22C91B470);
LABEL_18:
  v113 = v230;
  v144 = *(v231 + 16);
  v102 = v222;
  v122 = v228;
  if (v121 == v144)
  {
    v145 = 1;
    v146 = v218;
    v147 = v211;
LABEL_23:
    sub_22C36C640(v147, v145, 1, v146);

    if (sub_22C370B74(v147, 1, v146) != 1)
    {

      sub_22C3759C4(&a14);
      v193 = *(v192 + 32);
      v194 = v210;
      v195 = sub_22C377B94();
      v196(v195);
      v197 = type metadata accessor for Hack_EnumerationDefinition_TypeReferenceRenderer_v5_0(0);
      sub_22C374168((v113 + *(v197 + 20)), *(v113 + *(v197 + 20) + 24));
      sub_22C557F08();
      MEMORY[0x28223BE20](v198);
      sub_22C3759B4();
      v199 = v223;
      v200 = v225;
      *(v201 - 32) = v223;
      *(v201 - 24) = v200;
      v202 = v213;
      *(v201 - 16) = v213;
      *(v201 - 8) = v130;
      sub_22C4FB170(v199, v200, sub_22C557E9C, v203, v202);

      sub_22C9099DC();
      (*(v43 + 8))(v194, v146);
      sub_22C36FB04(&a16);
      v204(v215, v229);
      v125 = v221;
      goto LABEL_29;
    }

    sub_22C36FB04(&a16);
    v157(v215, v229);
    sub_22C36DD28(v147, &qword_27D9BDC50, &unk_22C91B470);
    v125 = v221;
    goto LABEL_25;
  }

  if (v121 >= v144)
  {
    __break(1u);
  }

  else
  {
    v148 = *(v43 + 80);
    sub_22C36BA94();
    v150 = v209;
    sub_22C57EBC4(v231 + v149 + *(v43 + 72) * v121, v209);
    sub_22C5580B8(&v237);
    sub_22C379DF8(v151, v152, v153, v154);
    v146 = v218;
    if (sub_22C370B74(v43 + 8, 1, v218) != 1)
    {
      sub_22C3722F4(&a14);
      v147 = v211;
      v155 = sub_22C36BA00();
      v156(v155);
      sub_22C36DD28(v150, &qword_27D9BDC50, &unk_22C91B470);
      v145 = 0;
      goto LABEL_23;
    }
  }

  __break(1u);
}

void sub_22C556670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v23;
  a20 = v24;
  v189 = v20;
  v190 = v25;
  v191 = v26;
  v192 = v27;
  LODWORD(v188) = v28;
  v30 = v29;
  v31 = sub_22C9093BC();
  v32 = sub_22C369824(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C3698A8();
  sub_22C3698F8(v37);
  v38 = sub_22C90910C();
  v39 = sub_22C36A7A4(v38, &a14);
  v180 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22C3698A8();
  sub_22C3698F8(v43);
  v44 = sub_22C90963C();
  v45 = sub_22C369824(v44);
  v186 = v46;
  v187 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22C3698A8();
  v185 = v49;
  sub_22C36BA0C();
  v50 = sub_22C90919C();
  v51 = sub_22C36A7A4(v50, &a18);
  v183 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22C369838();
  v57 = v56 - v55;
  v58 = sub_22C90906C();
  v59 = sub_22C36A7A4(v58, &a16);
  v182 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  sub_22C369838();
  v63 = type metadata accessor for DirectionalTypedValue();
  v64 = sub_22C36985C(v63);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  sub_22C369ABC();
  sub_22C37EBC0();
  v68 = MEMORY[0x28223BE20](v67);
  v70 = (&v176 - v69);
  MEMORY[0x28223BE20](v68);
  sub_22C3705C8();
  MEMORY[0x28223BE20](v71);
  v73 = &v176 - v72;
  sub_22C36BEB4();
  v177 = v30;
  sub_22C557A88(v30, v73);
  v74 = (v34 + 88);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22C36BEB4();
    v184 = v73;
    sub_22C557A88(v73, v21);
    v89 = (*v74)(v21, v31);
    if (v89 == *MEMORY[0x277D72A38])
    {
      v90 = sub_22C557FF0();
      v91(v90);
      v92 = *v21;
      swift_projectBox();
      v93 = sub_22C557F88();
      v95 = *(v94 - 256);
      v96(v93);
      sub_22C378AB0(v189 + 56, v193);
      sub_22C375EAC(v193);
      v97 = *MEMORY[0x277D72E10];
      v98 = sub_22C5580A4();
      v99(v98);
      v100 = sub_22C557F6C();
      v101(v100);
      v102 = sub_22C557FC0();
      v103(v102);
      (*(v30 + 8))(v57, v95);
      sub_22C36FF94(v193);
    }

    else if (v89 == *MEMORY[0x277D729E0])
    {
      v116 = sub_22C557FF0();
      v117(v116);
      v118 = *v21;
      swift_projectBox();
      sub_22C374490(&a15);
      v120 = *(v119 + 16);
      sub_22C557F60();
      v121();
      v122 = sub_22C90905C();
      MEMORY[0x28223BE20](v122);
      sub_22C557EC8();
      v124 = sub_22C3B2C0C(sub_22C557284, v123, v122);

      sub_22C47F330(v124, v192);

      v125 = *(v34 + 8);
      v126 = sub_22C372FA4();
      v127(v126);
    }

    else
    {
      if (v89 != *MEMORY[0x277D729F8])
      {
LABEL_17:
        v154 = *(v34 + 8);
        v154(v21, v31);
        sub_22C378AB0(v189 + 16, v197);
        v155 = v197[3];
        v156 = v197[4];
        sub_22C375EAC(v197);
        sub_22C36BEB4();
        sub_22C557A88(v177, v22);
        v157 = v178;
        (*(v34 + 32))(v178, v22, v31);
        v159 = v185;
        v158 = v186;
        v160 = v187;
        (*(v186 + 104))(v185, *MEMORY[0x277D72E08], v187);
        (*(v156 + 8))(v193, v157, v188 & 1, v159, v190, v191, v155, v156);
        (*(v158 + 8))(v159, v160);
        v154(v157, v31);
        v162 = v193[0];
        v161 = v193[1];
        v163 = v193[2];
        v164 = v194;
        v165 = v195;
        v166 = v196;
        if ((v196 & 1) == 0)
        {
          v167 = swift_allocObject();
          *(v167 + 16) = 2;
          *(v167 + 24) = 1;
          sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
          v168 = swift_allocObject();
          *(v168 + 16) = v162;
          *(v167 + 32) = v168;
          v169 = sub_22C38B418();
          sub_22C456C94(v169, v170);

          sub_22C38399C();
          sub_22C456CE4(v171, v172, v173, v164, v165, 0);
          v162 = v167 | 0xA000000000000000;
        }

        v174 = v192;
        *v192 = v162;
        v174[1] = v161;
        v174[2] = v163;
        v174[3] = v164;
        v174[4] = v165;
        *(v174 + 40) = v166;
        sub_22C36FF94(v197);
        goto LABEL_20;
      }

      v141 = sub_22C557FF0();
      v142(v141);
      v143 = *v21;
      v144 = swift_projectBox();
      v145 = v180;
      v146 = v179;
      v147 = v181;
      (*(v180 + 16))(v179, v144, v181);
      sub_22C378AB0(v189 + 96, v193);
      v148 = v194;
      v149 = v195;
      sub_22C375EAC(v193);
      v151 = v185;
      v150 = v186;
      v152 = v187;
      (*(v186 + 104))(v185, *MEMORY[0x277D72E10], v187);
      sub_22C36D10C();
      v153(v146, v151, v190, v191, v148, v149);
      (*(v150 + 8))(v151, v152);
      (*(v145 + 8))(v146, v147);
      sub_22C36FF94(v193);
    }

LABEL_20:
    v76 = v184;
    goto LABEL_21;
  }

  sub_22C36BEB4();
  sub_22C557A88(v73, v70);
  v75 = (*v74)(v70, v31);
  v76 = v73;
  if (v75 != *MEMORY[0x277D72A38])
  {
    if (v75 == *MEMORY[0x277D729E0])
    {
      v104 = sub_22C557EB8();
      v105(v104);
      v106 = *v70;
      swift_projectBox();
      sub_22C374490(&a15);
      v108 = *(v107 + 16);
      sub_22C557F60();
      v109();
      v110 = sub_22C90905C();
      MEMORY[0x28223BE20](v110);
      sub_22C557EC8();
      v112 = sub_22C3B2C0C(sub_22C557268, v111, v110);

      sub_22C47F330(v112, v192);

      v113 = *(v34 + 8);
      v114 = sub_22C372FA4();
      v115(v114);
      goto LABEL_8;
    }

    if (v75 == *MEMORY[0x277D729F8])
    {
      v128 = sub_22C557EB8();
      v129(v128);
      v188 = *v70;
      swift_projectBox();
      sub_22C3759C4(&a13);
      v131 = v179;
      v132 = v181;
      (*(v130 + 16))(v179);
      sub_22C378AB0(v189 + 96, v193);
      v133 = v194;
      v134 = v195;
      sub_22C375EAC(v193);
      v135 = *MEMORY[0x277D72E08];
      v136 = sub_22C5580A4();
      v137 = v187;
      v138(v136);
      sub_22C36D10C();
      v139(v131, v70, v190, v191, v133, v134);
      (*(v34 + 8))(v70, v137);
      v140 = v132;
      v76 = v73;
      (*(v31 + 8))(v131, v140);
      sub_22C36FF94(v193);
      goto LABEL_8;
    }

    v184 = v73;
    v21 = v70;
    goto LABEL_17;
  }

  v77 = sub_22C557EB8();
  v78(v77);
  v79 = *v70;
  swift_projectBox();
  v184 = v73;
  sub_22C557F88();
  sub_22C557F60();
  v80();
  sub_22C378AB0(v189 + 56, v193);
  sub_22C375EAC(v193);
  v82 = v185;
  v81 = v186;
  v83 = v187;
  (*(v186 + 104))(v185, *MEMORY[0x277D72E08], v187);
  v84 = sub_22C557F6C();
  v85(v84);
  (*(v81 + 8))(v82, v83);
  v86 = *(v73 + 1);
  v87 = sub_22C36D29C();
  v88(v87);
  v76 = v184;
  sub_22C36FF94(v193);
LABEL_8:

LABEL_21:
  sub_22C37BA9C();
  sub_22C557AE0(v76, v175);
  sub_22C36CC48();
}

void sub_22C557144()
{
  sub_22C370030();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for DirectionalTypedValue();
  v10 = sub_22C36985C(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  sub_22C387210();
  v13 = sub_22C9093BC();
  sub_22C36985C(v13);
  (*(v14 + 16))(v0, v8);
  swift_storeEnumTagMultiPayload();
  sub_22C556670(v0, v6 & 1, v4, v2);
  sub_22C37BA9C();
  sub_22C557AE0(v0, v15);
  sub_22C36FB20();
}

void sub_22C5572A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_22C557144();
}

void sub_22C557314()
{
  sub_22C457168(319, qword_281430480);
  if (v0 <= 0x3F)
  {
    sub_22C457168(319, qword_281434258);
    if (v1 <= 0x3F)
    {
      sub_22C4BBD84(319, qword_281433480, &qword_27D9BD878, &unk_22C919790);
      if (v2 <= 0x3F)
      {
        sub_22C457168(319, qword_281432558);
        if (v3 <= 0x3F)
        {
          sub_22C457168(319, qword_281430020);
          if (v4 <= 0x3F)
          {
            sub_22C908AEC();
            if (v5 <= 0x3F)
            {
              sub_22C457168(319, qword_281430CF8);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_22C5574C0()
{
  sub_22C457168(319, qword_281432558);
  if (v0 <= 0x3F)
  {
    sub_22C908AEC();
    if (v1 <= 0x3F)
    {
      sub_22C457168(319, qword_281430480);
      if (v2 <= 0x3F)
      {
        sub_22C457168(319, qword_281434258);
        if (v3 <= 0x3F)
        {
          sub_22C4BBD84(319, qword_281433480, &qword_27D9BD878, &unk_22C919790);
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

void sub_22C557644()
{
  sub_22C908AEC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TypeIdentifierRenderer_v2_0(319);
    if (v1 <= 0x3F)
    {
      sub_22C457168(319, &qword_281430160);
      if (v2 <= 0x3F)
      {
        sub_22C457168(319, &qword_281430018);
        if (v3 <= 0x3F)
        {
          sub_22C457168(319, &qword_281433340);
          if (v4 <= 0x3F)
          {
            sub_22C457168(319, &qword_281434518);
            if (v5 <= 0x3F)
            {
              sub_22C4BBD84(319, &qword_281431C20, &qword_27D9BD998, &unk_22C919FD0);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_22C5577E0()
{
  result = sub_22C908AEC();
  if (v1 <= 0x3F)
  {
    result = sub_22C457168(319, &qword_281434518);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22C5578BC()
{
  sub_22C457168(319, qword_281434258);
  if (v0 <= 0x3F)
  {
    sub_22C4BBD84(319, qword_281430748, &qword_27D9BD860, qword_22C919668);
    if (v1 <= 0x3F)
    {
      sub_22C457168(319, qword_281432558);
      if (v2 <= 0x3F)
      {
        sub_22C908AEC();
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

uint64_t sub_22C5579D4()
{
  sub_22C37ABC4();
  if (v2)
  {
    return sub_22C3725D8(*(v0 + 24));
  }

  sub_22C558048();
  v4 = sub_22C36ECCC(*(v1 + 36));

  return sub_22C370B74(v4, v5, v6);
}

uint64_t sub_22C557A88(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v5 = v4(v3);
  sub_22C36985C(v5);
  v7 = *(v6 + 16);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

uint64_t sub_22C557AE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_22C557B40()
{
  sub_22C36BA7C();
  v1 = v0;
  v2 = sub_22C90430C();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v10 = v9 - v8;
  v11 = *(v1 + 16);
  if (v11)
  {
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 64);
    sub_22C36BA94();
    v17 = v1 + v16;
    v18 = *(v13 + 56);
    v19 = 1;
    do
    {
      v12(v10, v17, v2);
      if ((v19 & 1) == 0)
      {
        MEMORY[0x2318B7850](8236, 0xE200000000000000);
      }

      sub_22C3A5908(&qword_27D9BAAE0, &qword_22C90D380);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_22C90F800;
      *(v20 + 56) = v2;
      v21 = sub_22C557D04((v20 + 32));
      v12(v21, v10, v2);
      sub_22C90AE9C();

      (*(v13 - 8))(v10, v2);
      v19 = 0;
      v17 += v18;
      --v11;
    }

    while (v11);
  }

  MEMORY[0x2318B7850](93, 0xE100000000000000);
  sub_22C36CC48();
}

uint64_t *sub_22C557D04(uint64_t *a1)
{
  v1 = a1;
  sub_22C3699C8(a1[3]);
  if ((*(v2 + 82) & 2) != 0)
  {
    *v1 = swift_allocBox();
    return v3;
  }

  return v1;
}

uint64_t sub_22C557D60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptToolsHelper.RenderableParameter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C557DE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C557E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BD8E0, &qword_22C91B410);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22C557EC8()
{
  v1 = *(v0 - 216);
  v2 = *(v0 - 224) & 1;
  v3 = *(v0 - 208);
  v4 = *(v0 - 200);
}

uint64_t sub_22C557F24(uint64_t result)
{
  *(v2 - 96) = *(result + 16);
  *(v2 - 120) = v1 + 88;
  *(v2 - 112) = v1 + 16;
  return result;
}

uint64_t sub_22C557F6C()
{
  v3 = *(v1 + 8);
  v4 = *(v2 - 224) & 1;
  v5 = *(v2 - 200);
  v6 = *(v2 - 192);
  return v0;
}

uint64_t sub_22C557FA4()
{
  result = *(v0 - 104);
  v2 = *(v0 - 136);
  return result;
}

uint64_t sub_22C557FE0()
{
  result = v0;
  v3 = *(v1 - 560);
  return result;
}

uint64_t sub_22C558048()
{

  return sub_22C908AEC();
}

uint64_t sub_22C55807C@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 184);
  return result;
}

uint64_t sub_22C5580D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_22C4FB170(v7, v6, v5, a4, a5);
}

uint64_t sub_22C5580F8(uint64_t a1, uint64_t a2)
{

  return sub_22C36C640(a1, a2, 1, v2);
}

uint64_t sub_22C558484(uint64_t a1)
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

    v9 = *(v42 + 80);
    v10 = *(v42 + 72);
    sub_22C55CEDC();
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
      sub_22C55CF8C();
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
      sub_22C55CF8C();
      a1 = v40;
    }

    else
    {
      sub_22C3A5908(&qword_27D9BAF88, &unk_22C917A10);
      v30 = swift_allocObject();
      *(v30 + 16) = v39;
      sub_22C55CF8C();
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

uint64_t sub_22C5587CC(uint64_t a1)
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

    v15 = *(v52 + 80);
    v54 = *(v52 + 72);
    sub_22C55CEDC();
    sub_22C9036BC();
    v16 = v7;
    v17 = sub_22C908EAC();
    v18 = 1;
    if (sub_22C370B74(v7, 1, v17) != 1)
    {
      v19 = v50;
      sub_22C3A7214();
      v18 = sub_22C4AEF6C();
      v20 = v19;
      v16 = v7;
      (*(*(v17 - 8) + 8))(v20, v17);
    }

    sub_22C36DD28(v16, &qword_27D9BC1E8, &qword_22C9123B0);
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
      sub_22C55CF8C();
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
      sub_22C55CF8C();
      a1 = v49;
    }

    else
    {
      sub_22C3A5908(&qword_27D9BAF88, &unk_22C917A10);
      v39 = swift_allocObject();
      *(v39 + 16) = v48;
      sub_22C55CF8C();
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

uint64_t sub_22C558C4C(uint64_t a1)
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

      result = sub_22C36DD28(v5, &qword_27D9BD958, &qword_22C919CA0);
    }

    else
    {
      sub_22C55CF8C();
      sub_22C55CF8C();
      v21 = v39;
      if (v39[3] <= v39[2])
      {
        sub_22C88D114();
        v21 = v42;
      }

      v22 = v21[5];
      v23 = v21;
      sub_22C90B62C();
      sub_22C48A9B4(v41, v19);
      result = sub_22C90B66C();
      v24 = v23 + 8;
      v39 = v23;
      v25 = -1 << *(v23 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~v23[(v26 >> 6) + 8]) == 0)
      {
        v29 = 0;
        v30 = (63 - v25) >> 6;
        while (++v27 != v30 || (v29 & 1) == 0)
        {
          v31 = v27 == v30;
          if (v27 == v30)
          {
            v27 = 0;
          }

          v29 |= v31;
          v32 = v24[v27];
          if (v32 != -1)
          {
            v28 = __clz(__rbit64(~v32)) + (v27 << 6);
            goto LABEL_22;
          }
        }

        goto LABEL_25;
      }

      v28 = __clz(__rbit64((-1 << v26) & ~v23[(v26 >> 6) + 8])) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
      *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      v33 = v39;
      *(v39[6] + 8 * v28) = v19;
      v34 = v33[7] + *(v36 + 72) * v28;
      result = sub_22C55CF8C();
      ++v33[2];
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

uint64_t sub_22C559024(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for ToolRenderer_v5_0() + 24));
  v4 = v3[3];
  v5 = v3[4];
  sub_22C374168(v3, v4);
  return (*(v5 + 8))(a1, v4, v5);
}

uint64_t sub_22C55908C@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t **a3@<X8>)
{
  v37 = a1;
  v36 = a3;
  v4 = sub_22C908EAC();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v31 - v14;
  v16 = type metadata accessor for FetchedTools(0);
  v17 = sub_22C36985C(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v22 = (v21 - v20);
  sub_22C55CEDC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v15, v22, v4);
    sub_22C3A5908(&qword_27D9BAF88, &unk_22C917A10);
    v23 = (type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0) - 8);
    v24 = *(*v23 + 72);
    v25 = (*(*v23 + 80) + 32) & ~*(*v23 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_22C90F800;
    v33 = v15;
    v34 = v7;
    v27 = *(v7 + 16);
    v35 = v4;
    v27(v12, v15, v4);
    sub_22C9036CC();
    sub_22C9037DC();
    v38 = MEMORY[0x277D84F90];
    v32 = a2;
    v28 = v23[8];
    v31[1] = sub_22C3E00C4();
    sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
    sub_22C3D32C8(&qword_27D9BB830, &qword_27D9BB828, &unk_22C912AE0);
    sub_22C90AE4C();
    *(v26 + v25 + v23[7]) = 0;
    sub_22C5593C8(v37, v32, v36);
    (*(v34 + 8))(v33, v35);
    swift_setDeallocating();
    return sub_22C590028();
  }

  else
  {
    v30 = *v22;
    sub_22C5593C8(v37, a2, v36);
  }
}

uint64_t sub_22C5593C8@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t **a3@<X8>)
{
  v226 = a2;
  v225 = a1;
  v220 = a3;
  v261 = sub_22C908D6C();
  v4 = *(v261 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v261 - 8);
  v231 = &v213 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v263 = &v213 - v8;
  v9 = sub_22C9036EC();
  v234 = *(v9 - 8);
  v10 = *(v234 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v213 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v245 = &v213 - v14;
  v248 = sub_22C908EAC();
  v262 = *(v248 - 8);
  v15 = *(v262 + 64);
  MEMORY[0x28223BE20](v248);
  v247 = &v213 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v230 = &v213 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v229 = &v213 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v268 = &v213 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v249 = &v213 - v26;
  MEMORY[0x28223BE20](v25);
  v243 = &v213 - v27;
  v274 = sub_22C9099FC();
  v260 = *(v274 - 8);
  v28 = *(v260 + 64);
  v29 = MEMORY[0x28223BE20](v274);
  v267 = &v213 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v235 = &v213 - v31;
  v32 = sub_22C3A5908(&qword_27D9BDC80, &qword_22C91B2A8);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v251 = &v213 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v242 = &v213 - v36;
  v255 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v37 = *(v255 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x28223BE20](v255);
  v250 = &v213 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v254 = &v213 - v41;
  v256 = type metadata accessor for RenderableTool();
  v253 = *(v256 - 8);
  v42 = *(v253 + 64);
  v43 = MEMORY[0x28223BE20](v256);
  v223 = &v213 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v46 = &v213 - v45;

  v48 = sub_22C558484(v47);
  if (*(v48 + 16) && (v49 = sub_22C633A1C(2), (v50 & 1) != 0))
  {
    v51 = *(*(v48 + 56) + 8 * v49);
  }

  else
  {
    v52 = MEMORY[0x277D84F90];
  }

  v53 = sub_22C5587CC(v52);
  v265 = v3;
  v266 = v53;
  v54 = MEMORY[0x277D84F90];
  if (*(v48 + 16))
  {
    v55 = sub_22C633A1C(1);
    if (v56)
    {
      v57 = *(*(v48 + 56) + 8 * v55);
    }

    else
    {
      v57 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v57 = MEMORY[0x277D84F90];
  }

  v221 = v13;
  v58 = *(v57 + 16);
  v257 = v9;
  v224 = v48;
  v244 = v37;
  if (v58)
  {
    v271 = v54;
    sub_22C3B696C(0, v58, 0);
    v59 = v271;
    v60 = *(v37 + 80);
    v264 = v57;
    v61 = v57 + ((v60 + 32) & ~v60);
    *&v269 = *(v37 + 72);
    v62 = (v234 + 32);
    do
    {
      v63 = v254;
      sub_22C55CEDC();
      v64 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
      (*v62)(v46, v63, v9);
      v65 = *(v255 + 24);
      v66 = sub_22C9037DC();
      (*(*(v66 - 8) + 32))(&v46[v64], &v63[v65], v66);
      swift_storeEnumTagMultiPayload();
      v271 = v59;
      v68 = *(v59 + 16);
      v67 = *(v59 + 24);
      if (v68 >= v67 >> 1)
      {
        sub_22C3B696C(v67 > 1, v68 + 1, 1);
        v59 = v271;
      }

      *(v59 + 16) = v68 + 1;
      v69 = v59 + ((*(v253 + 80) + 32) & ~*(v253 + 80));
      v70 = *(v253 + 72);
      sub_22C55CF8C();
      v61 += v269;
      --v58;
      v9 = v257;
    }

    while (v58);

    v48 = v224;
  }

  else
  {
  }

  MEMORY[0x28223BE20](v71);
  v72 = v227;
  v73 = v225;
  *(&v213 - 4) = v227;
  *(&v213 - 3) = v73;
  v74 = v226;
  *(&v213 - 2) = v226;
  v75 = v265;
  sub_22C792A18();
  if (v75)
  {
LABEL_68:
  }

  v218 = v76;

  MEMORY[0x28223BE20](v77);
  *(&v213 - 4) = v266;
  *(&v213 - 3) = v72;
  *(&v213 - 2) = v73;
  *(&v213 - 1) = v74;
  sub_22C792A44();
  v219 = 0;
  v213 = v78;

  if (*(v48 + 16))
  {
    v79 = sub_22C633A1C(0);
    v81 = v260;
    v80 = v261;
    v82 = v249;
    v83 = v251;
    if (v84)
    {
      v85 = *(*(v48 + 56) + 8 * v79);
    }

    else
    {
      v85 = MEMORY[0x277D84F90];
    }

    v88 = v274;
    v86 = v262;
    v87 = v82;
  }

  else
  {
    v85 = MEMORY[0x277D84F90];
    v80 = v261;
    v86 = v262;
    v87 = v249;
    v88 = v274;
    v83 = v251;
    v81 = v260;
  }

  v89 = 0;
  v241 = *(v85 + 16);
  v246 = (v234 + 16);
  v240 = (v234 + 88);
  v216 = (v234 + 8);
  v236 = (v234 + 96);
  v233 = (v86 + 32);
  v264 = (v81 + 32);
  *&v269 = v4 + 16;
  v266 = v4 + 88;
  v239 = *MEMORY[0x277D1ECE0];
  v262 = v4 + 8;
  v260 = v4 + 96;
  v238 = *MEMORY[0x277D1ECE8];
  v222 = *MEMORY[0x277D1ECD8];
  v215 = *MEMORY[0x277D1ECD0];
  v214 = *MEMORY[0x277D1ECF8];
  v259 = 0x800000022C932110;
  v258 = (v81 + 8);
  v232 = (v86 + 8);
  v217 = MEMORY[0x277D84F90];
  v228 = (v234 + 104);
  LODWORD(v265) = *MEMORY[0x277D72148];
  v90 = v245;
  v237 = v85;
  while (1)
  {
    if (v89 == v241)
    {
      v87 = v244;

      MEMORY[0x28223BE20](v129);
      v130 = v225;
      *(&v213 - 4) = v227;
      *(&v213 - 3) = v130;
      *(&v213 - 2) = v226;
      v131 = v219;
      sub_22C792A18();
      if (v131)
      {

        v266 = v218;
        goto LABEL_68;
      }

      v134 = v132;

      v271 = v134;
      sub_22C3CD560(v218);
      sub_22C3CD560(v213);
      v266 = sub_22C7F4DE0(v271);
      v136 = v135;
      v80 = 0;
      v90 = *(v135 + 16);
      v83 = MEMORY[0x277D84F90];
      v274 = v135;
      while (v90 != v80)
      {
        if (v80 >= *(v136 + 16))
        {
          goto LABEL_126;
        }

        v137 = *(type metadata accessor for _PromptToolData(0) - 8);
        v73 = *(v136 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v80 + 8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v139 = *(v83 + 16);
          sub_22C591324();
          v83 = v140;
        }

        v138 = *(v83 + 16);
        if (v138 >= *(v83 + 24) >> 1)
        {
          sub_22C591324();
          v83 = v141;
        }

        *(v83 + 16) = v138 + 1;
        *(v83 + 8 * v138 + 32) = v73;
        ++v80;
        v136 = v274;
      }

      v142 = v266;

      v143 = sub_22C558120(v142, v136);
      v265 = sub_22C558C4C(v143);
      v268 = 0;

      v144 = v224;
      v145 = MEMORY[0x277D84F90];
      if (*(v224 + 16))
      {
        v146 = sub_22C633A1C(1);
        v147 = v257;
        v90 = v221;
        v148 = v87;
        if (v149)
        {
          v145 = *(*(v144 + 56) + 8 * v146);
        }
      }

      else
      {
        v147 = v257;
        v90 = v221;
        v148 = v87;
      }

      v150 = *(v145 + 2);
      if (v150)
      {
        v271 = MEMORY[0x277D84F90];
        sub_22C3B657C(0, v150, 0);
        v151 = v271;
        v152 = *(v148 + 80);
        v267 = v145;
        v153 = &v145[(v152 + 32) & ~v152];
        *&v269 = *(v148 + 72);
        do
        {
          v154 = v254;
          sub_22C55CEDC();
          (*v246)(v90, v154, v147);
          sub_22C55CF34(v154, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
          v271 = v151;
          v156 = *(v151 + 16);
          v155 = *(v151 + 24);
          if (v156 >= v155 >> 1)
          {
            sub_22C3B657C(v155 > 1, v156 + 1, 1);
            v151 = v271;
          }

          *(v151 + 16) = v156 + 1;
          (*(v234 + 32))(v151 + ((*(v234 + 80) + 32) & ~*(v234 + 80)) + *(v234 + 72) * v156, v90, v147);
          v153 += v269;
          --v150;
        }

        while (v150);

        v130 = v225;
      }

      else
      {

        v151 = MEMORY[0x277D84F90];
      }

      v80 = &v213;
      MEMORY[0x28223BE20](v157);
      v158 = v227;
      *(&v213 - 4) = v227;
      *(&v213 - 3) = v130;
      *(&v213 - 2) = v226;
      sub_22C566700(v151, &unk_283FAF268, v158, v130, sub_22C55CED0, (&v213 - 6));
      v160 = v159;

      v161 = *(v160 + 16);
      if (v161)
      {
        v267 = v83;
        v271 = MEMORY[0x277D84F90];
        sub_22C3B63D4();
        v80 = 32;
        v162 = v271;
        v269 = xmmword_22C919C60;
        do
        {
          v163 = v160;
          v164 = *(v160 + v80);
          v165 = swift_allocObject();
          *(v165 + 16) = v269;
          sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
          v166 = swift_allocObject();
          *(v166 + 16) = v164;
          *(v165 + 32) = v166;
          v167 = swift_allocObject();
          v168 = swift_allocObject();
          *(v168 + 16) = v165 | 0x8000000000000000;
          *(v167 + 16) = v168;
          v271 = v162;
          v170 = *(v162 + 16);
          v169 = *(v162 + 24);
          v90 = v170 + 1;

          if (v170 >= v169 >> 1)
          {
            sub_22C3B63D4();
            v162 = v271;
          }

          *(v162 + 16) = v90;
          *(v162 + 8 * v170 + 32) = v167 | 0x6000000000000000;
          v80 += 8;
          --v161;
          v160 = v163;
        }

        while (v161);

        v83 = v267;
      }

      else
      {

        v162 = MEMORY[0x277D84F90];
      }

      v271 = v162;
      sub_22C3CD124(v83);
      v87 = sub_22C47D738(2570, 0xE200000000000000, v271);

      v73 = MEMORY[0x277D84F90];
      v271 = MEMORY[0x277D84F90];
      v171 = v268;
      sub_22C496A94();
      v219 = v171;
      if (!v171)
      {
        v173 = v172;

        v174 = swift_allocObject();
        v175 = v174;
        v176 = v274;
        if ((v173 & 1) == 0)
        {
          *(v174 + 16) = 0x6F68747970606060;
          *(v174 + 24) = 0xEA00000000000A6ELL;
          v80 = v174;
          sub_22C591324();
          v179 = v178;
          v83 = *(v178 + 16);
          v180 = *(v178 + 24) >> 1;
          v90 = v83 + 1;
          if (v180 > v83)
          {
            goto LABEL_99;
          }

          goto LABEL_130;
        }

        v271 = 0;
        v272 = 0xE000000000000000;
        *(v174 + 16) = sub_22C90A49C();
        *(v175 + 24) = v177;
        v264 = v175;
        goto LABEL_104;
      }

      goto LABEL_133;
    }

    if (v89 >= *(v85 + 16))
    {
      break;
    }

    v91 = v85 + ((*(v244 + 80) + 32) & ~*(v244 + 80));
    v92 = *(v244 + 72);
    v252 = v89;
    v93 = v250;
    sub_22C55CEDC();
    v73 = v257;
    (*v246)(v90, v93, v257);
    v94 = (*v240)(v90, v73);
    if (v94 == v239)
    {
      goto LABEL_28;
    }

    if (v94 == v238)
    {
      (*v236)(v90, v257);
      (*v264)(v87, v90, v88);
      v103 = 0;
      goto LABEL_56;
    }

    if (v94 == v222)
    {
LABEL_28:
      (*v236)(v90, v257);
      (*v233)(v247, v90, v248);
      v83 = sub_22C908DEC();
      v95 = 0;
      v87 = *(v83 + 16);
      v96 = v263;
      while (v87 != v95)
      {
        (*(v4 + 16))(v96, v83 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v95, v80);
        v97 = (*(v4 + 88))(v96, v80);
        if (v97 == v265)
        {
          (*v260)(v96, v80);
          v90 = *v264;
          (*v264)(v267, v96, v274);
          if (sub_22C9099DC() == 0xD00000000000001CLL && v259 == v98)
          {
          }

          else
          {
            v100 = sub_22C90B4FC();

            if ((v100 & 1) == 0)
            {
              v120 = v268;
              v121 = v274;
              (v90)(v268, v267, v274);
              sub_22C36C640(v120, 0, 1, v121);
              sub_22C36DD28(v120, &qword_27D9BDC50, &unk_22C91B470);
              v80 = v261;
              goto LABEL_42;
            }
          }

          v101 = v274;
          (*v258)(v267, v274);
          v80 = v261;
          v96 = v263;
        }

        else
        {
          (*v262)(v96, v80);
          v101 = v274;
        }

        v90 = v268;
        sub_22C36C640(v268, 1, 1, v101);
        sub_22C36DD28(v90, &qword_27D9BDC50, &unk_22C91B470);
        ++v95;
      }

      v95 = v87;
LABEL_42:
      v102 = *(v83 + 16);
      if (v95 == v102)
      {

        (*v232)(v247, v248);
        v103 = 1;
        v87 = v249;
        v88 = v274;
        v83 = v251;
      }

      else
      {
        if (v95 >= v102)
        {
          goto LABEL_127;
        }

        v104 = v231;
        (*(v4 + 16))(v231, v83 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v95, v80);
        v105 = v229;
        sub_22C5791C0();
        (*(v4 + 8))(v104, v80);
        v106 = v230;
        sub_22C3A7214();
        v107 = v274;
        if (sub_22C370B74(v106, 1, v274) == 1)
        {
          __break(1u);
LABEL_132:
          sub_22C90B4EC();
          __break(1u);
LABEL_133:

          __break(1u);
          return result;
        }

        v87 = v249;
        (*v264)(v249, v106, v107);
        sub_22C36DD28(v105, &qword_27D9BDC50, &unk_22C91B470);
        (*v232)(v247, v248);

        v103 = 0;
        v88 = v107;
        v83 = v251;
      }
    }

    else
    {
      if (v94 != v215 && v94 != v214)
      {
        goto LABEL_132;
      }

      (*v216)(v90, v257);
      v103 = 1;
    }

LABEL_56:
    sub_22C36C640(v87, v103, 1, v88);
    v109 = v243;
    sub_22C407C2C();
    if (sub_22C370B74(v109, 1, v88) == 1)
    {
      sub_22C55CF34(v250, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
      sub_22C36DD28(v109, &qword_27D9BDC50, &unk_22C91B470);
      v110 = 1;
      v73 = v256;
    }

    else
    {
      v111 = *v264;
      v112 = v235;
      (*v264)(v235, v109, v88);
      v113 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
      v111(v251, v112, v274);
      (*v228)(v251, v238, v257);
      v114 = *(v255 + 24);
      v115 = sub_22C9037DC();
      v116 = &v251[v113];
      v88 = v274;
      v117 = v250;
      v118 = v250 + v114;
      v83 = v251;
      (*(*(v115 - 8) + 16))(v116, v118, v115);
      sub_22C55CF34(v117, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
      v73 = v256;
      swift_storeEnumTagMultiPayload();
      v110 = 0;
    }

    ++v252;
    sub_22C36C640(v83, v110, 1, v73);
    v119 = v242;
    sub_22C407C2C();
    if (sub_22C370B74(v119, 1, v73) == 1)
    {
      sub_22C36DD28(v119, &qword_27D9BDC80, &qword_22C91B2A8);
      v85 = v237;
      v89 = v252;
      v87 = v249;
      v90 = v245;
    }

    else
    {
      sub_22C55CF8C();
      v122 = v217;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v126 = *(v122 + 16);
        sub_22C591DDC();
        v122 = v127;
      }

      v85 = v237;
      v87 = v249;
      v90 = v245;
      v217 = v122;
      v123 = *(v122 + 16);
      if (v123 >= *(v122 + 24) >> 1)
      {
        sub_22C591DDC();
        v217 = v128;
      }

      v124 = v217;
      *(v217 + 16) = v123 + 1;
      v125 = v124 + ((*(v253 + 80) + 32) & ~*(v253 + 80)) + *(v253 + 72) * v123;
      sub_22C55CF8C();
      v88 = v274;
      v83 = v251;
      v89 = v252;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_130:
    sub_22C591324();
    v179 = v210;
    v180 = *(v210 + 24) >> 1;
LABEL_99:
    *(v179 + 16) = v90;
    *(v179 + 8 * v83 + 32) = v80;
    v181 = v83 + 2;
    if (v180 < (v83 + 2))
    {
      sub_22C591324();
      v179 = v211;
    }

    *(v179 + 16) = v181;
    *(v179 + 8 * v90 + 32) = v87;
    v90 = swift_allocObject();
    *(v90 + 16) = 1616928778;
    *(v90 + 24) = 0xE400000000000000;
    v182 = *(v179 + 24);

    if ((v83 + 3) > (v182 >> 1))
    {
      sub_22C591324();
      v179 = v212;
    }

    *(v179 + 16) = v83 + 3;
    *(v179 + 8 * v181 + 32) = v90;
    v80 = sub_22C3DB9B0(v179);

    v183 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    v184 = swift_allocObject();
    *(v184 + 16) = v80;
    *(v183 + 16) = v184;
    v264 = (v183 | 0x6000000000000000);
    v176 = v274;
LABEL_104:
    v271 = v73;
    v83 = *(v176 + 16);
    if (v83)
    {
      v73 = 0;
      v80 = *(type metadata accessor for _PromptToolData(0) - 8);
      v90 = v176 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + 24;
      while (v73 < *(v176 + 16))
      {
        v185 = *(v80 + 72) * v73++;
        v186 = *(v90 + v185);

        sub_22C3CD230();
        if (v83 == v73)
        {
          v73 = v271;
          goto LABEL_109;
        }
      }

      goto LABEL_128;
    }

LABEL_109:
    v187 = *(type metadata accessor for ToolRenderer_v5_0() + 28);
    sub_22C3A7214();
    v262 = v87;
    v263 = v73;
    if (!v273)
    {
      sub_22C36DD28(&v271, &qword_27D9BD9F8, &unk_22C91A240);
      v198 = 0;
      v199 = 0;
      v200 = 0;
      v201 = 0;
      goto LABEL_124;
    }

    sub_22C374168(&v271, v273);
    *&v269 = *(v176 + 16);
    if (!v269)
    {
      break;
    }

    v188 = v176;
    v189 = type metadata accessor for _PromptToolData(0);
    v190 = 0;
    v267 = *(v189 - 8);
    v268 = v189;
    v83 = v188 + ((v267[80] + 32) & ~v267[80]);
    v87 = MEMORY[0x277D84F90];
    while (v190 < *(v274 + 16))
    {
      v191 = (v83 + *(v267 + 9) * v190 + *(v268 + 36));
      v80 = v191[1];
      if (v80)
      {
        v73 = *v191;
        v192 = v191[2];
        v90 = v191[3];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v195 = *(v87 + 16);
          sub_22C591018();
          v87 = v196;
        }

        v193 = *(v87 + 16);
        if (v193 >= *(v87 + 24) >> 1)
        {
          sub_22C591018();
          v87 = v197;
        }

        *(v87 + 16) = v193 + 1;
        v194 = (v87 + 32 * v193);
        v194[4] = v73;
        v194[5] = v80;
        v194[6] = v192;
        v194[7] = v90;
      }

      if (v269 == ++v190)
      {
        goto LABEL_123;
      }
    }
  }

  v87 = MEMORY[0x277D84F90];
LABEL_123:
  sub_22C531C50(v87, v270);

  v198 = v270[0];
  v199 = v270[1];
  v200 = v270[2];
  v201 = v270[3];
  sub_22C36FF94(&v271);
LABEL_124:
  sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
  sub_22C3D32C8(&qword_27D9BB778, &qword_27D9BAF08, &qword_22C90D7B0);
  v202 = sub_22C909F0C();
  v203 = swift_allocObject();
  v271 = 0;
  v272 = 0xE000000000000000;
  sub_22C456C94(v198, v199);
  v204 = sub_22C90A49C();
  v206 = v205;

  sub_22C456D48(v198, v199);

  *(v203 + 16) = v204;
  *(v203 + 24) = v206;
  v207 = v220;
  v208 = v265;
  *v220 = v264;
  v207[1] = v202;
  v209 = v263;
  v207[2] = v208;
  v207[3] = v209;
  v207[4] = v198;
  v207[5] = v199;
  v207[6] = v200;
  v207[7] = v201;
  v207[8] = v203;
  return result;
}

uint64_t sub_22C55B334@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void (*a3)(void *__return_ptr, void, void, void, void)@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v59 = a3;
  v60 = a4;
  v58 = a2;
  v8 = sub_22C9063DC();
  v65 = *(v8 - 8);
  v9 = *(v65 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v54 - v17;
  v19 = sub_22C908EAC();
  v63 = *(v19 - 8);
  v20 = *(v63 + 64);
  MEMORY[0x28223BE20](v19);
  v67 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v66 = v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for RenderableTool();
  v26 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v57 = (v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_22C6058B0(0, a1);
  if (v28)
  {
    v55 = a5;
    v29 = *(v28 + 16);
    if (v29)
    {
      v54[1] = v28;
      v54[2] = v5;
      v30 = v28 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
      v31 = *(v23 + 72);
      v64 = (v63 + 32);
      v65 = MEMORY[0x277D84F90];
      v32 = v19;
      v61 = v31;
      v62 = v19;
      do
      {
        v33 = v66;
        sub_22C55CEDC();
        sub_22C9036BC();
        sub_22C407C2C();
        sub_22C55CF34(v33, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
        if (sub_22C370B74(v18, 1, v32) == 1)
        {
          sub_22C36DD28(v18, &qword_27D9BC1E8, &qword_22C9123B0);
        }

        else
        {
          v34 = v16;
          v35 = *v64;
          (*v64)(v67, v18, v32);
          v36 = v65;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = *(v36 + 16);
            sub_22C591C4C();
            v36 = v40;
          }

          v37 = *(v36 + 16);
          if (v37 >= *(v36 + 24) >> 1)
          {
            sub_22C591C4C();
            v36 = v41;
          }

          *(v36 + 16) = v37 + 1;
          v38 = (*(v63 + 80) + 32) & ~*(v63 + 80);
          v65 = v36;
          v32 = v62;
          (v35)(v36 + v38 + *(v63 + 72) * v37, v67);
          v16 = v34;
          v31 = v61;
        }

        v30 += v31;
        --v29;
      }

      while (v29);

      v42 = v65;
    }

    else
    {

      v42 = MEMORY[0x277D84F90];
    }

    v52 = v57;
    *v57 = v42;
    swift_storeEnumTagMultiPayload();
    v53 = type metadata accessor for ToolRenderer_v5_0();
    sub_22C4B8858(v52, (v58 + *(v53 + 20)), v59, v60, v55);
    return sub_22C55CF34(v52, type metadata accessor for RenderableTool);
  }

  else
  {
    v43 = a5;
    v44 = v65;
    v45 = v8;
    sub_22C903F7C();
    v46 = sub_22C9063CC();
    v47 = sub_22C90AACC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v68 = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_22C36F9F4(0x695F686372616573, 0xED00007070615F6ELL, &v68);
      sub_22C36FF94(v49);
      MEMORY[0x2318B9880](v49, -1, -1);
      MEMORY[0x2318B9880](v48, -1, -1);
    }

    (*(v44 + 8))(v11, v45);
    v50 = type metadata accessor for _PromptToolData(0);
    return sub_22C36C640(v43, 1, 1, v50);
  }
}

uint64_t sub_22C55B998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v16 = a3 + *(type metadata accessor for ToolRenderer_v5_0() + 20);
  sub_22C483378();
  sub_22C374168(v19, v19[3]);
  MEMORY[0x2318B6CE0]();
  (*(v7 + 104))(v10, *MEMORY[0x277D72E10], v6);
  sub_22C4FCD10();
  (*(v7 + 8))(v10, v6);
  (*(v12 + 8))(v15, v11);
  return sub_22C36FF94(v19);
}

uint64_t sub_22C55BBA4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v144 = a3;
  v135 = a2;
  v133 = a4;
  v126 = sub_22C9063DC();
  v6 = sub_22C369824(v126);
  v125 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v129 = v11 - v10;
  v12 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v15);
  sub_22C36BA58();
  v146 = v16;
  MEMORY[0x28223BE20](v17);
  v130 = v124 - v18;
  v143 = sub_22C9099FC();
  v19 = sub_22C369824(v143);
  v136 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v23);
  sub_22C36BA58();
  v131 = v24;
  MEMORY[0x28223BE20](v25);
  sub_22C36BA58();
  v145 = v26;
  MEMORY[0x28223BE20](v27);
  v128 = v124 - v28;
  v29 = sub_22C908D6C();
  v30 = sub_22C369824(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22C369ABC();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = v124 - v39;
  v142 = sub_22C90977C();
  v41 = sub_22C369824(v142);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22C369838();
  v48 = v47 - v46;
  sub_22C374168(v4, v4[3]);
  sub_22C47FCDC();
  v49 = sub_22C9096FC();
  v148 = v48;
  v127 = sub_22C4FB170(v49, v50, sub_22C436434, v147, v144);
  v132 = v51;
  v52 = v136;

  (*(v43 + 8))(v48, v142);
  v134 = a1;
  if ((v135 & 1) == 0)
  {
    result = sub_22C908DEC();
    v54 = 0;
    v144 = *(result + 16);
    v142 = (v32 + 16);
    v55 = *MEMORY[0x277D72188];
    v56 = *MEMORY[0x277D72178];
    v57 = (v32 + 8);
    while (1)
    {
      if (v144 == v54)
      {
        v54 = v144;
        goto LABEL_10;
      }

      sub_22C371948();
      v59 = v58;
      (*(v32 + 16))(v40, v58 + v60 + *(v32 + 72) * v54, v29);
      v61 = (*(v32 + 88))(v40, v29);
      if (v61 == v55)
      {
        break;
      }

      if (v61 == v56)
      {
        goto LABEL_9;
      }

      (*v57)(v40, v29);
      ++v54;
      result = v59;
    }

    (*v57)(v40, v29);
LABEL_9:
    result = v59;
LABEL_10:
    v62 = *(result + 16);
    if (v54 != v62)
    {
      if (v54 < v62)
      {
        sub_22C371948();
        v119 = v117 + v118 + *(v32 + 72) * v54;
        result = sub_22C4AF1C0();
        if ((result & 1) == 0)
        {

          v120 = v133;
          *v133 = xmmword_22C91A1A0;
          v121 = v132;
          *(v120 + 2) = v127;
          *(v120 + 3) = v121;
          *(v120 + 32) = 1;
          return result;
        }

        goto LABEL_53;
      }

      goto LABEL_51;
    }

    v52 = v136;
  }

  result = sub_22C908DEC();
  v63 = result;
  v64 = 0;
  v65 = *(result + 16);
  LODWORD(v144) = *MEMORY[0x277D72148];
  v138 = (v32 + 96);
  v139 = (v32 + 8);
  v137 = 0x800000022C932110;
  v141 = (v52 + 8);
  v142 = (v52 + 32);
  v66 = v143;
  v140 = result;
  while (v65 != v64)
  {
    sub_22C371948();
    (*(v32 + 16))(v37, v63 + v67 + *(v32 + 72) * v64, v29);
    v68 = (*(v32 + 88))(v37, v29);
    if (v68 == v144)
    {
      (*v138)(v37, v29);
      v69 = *v142;
      (*v142)(v145, v37, v66);
      sub_22C9099DC();
      sub_22C37BE28();
      v71 = v71 && v137 == v70;
      if (v71)
      {
      }

      else
      {
        v72 = sub_22C382CE4();

        if ((v72 & 1) == 0)
        {
          v123 = v146;
          v66 = v143;
          v69(v146, v145, v143);
          sub_22C55CFFC(v123, 0);
          result = sub_22C36DD28(v123, &qword_27D9BDC50, &unk_22C91B470);
          v63 = v140;
          goto LABEL_26;
        }
      }

      v66 = v143;
      (*v141)(v145, v143);
      v63 = v140;
    }

    else
    {
      (*v139)(v37, v29);
    }

    v73 = v146;
    sub_22C55CFFC(v146, 1);
    result = sub_22C36DD28(v73, &qword_27D9BDC50, &unk_22C91B470);
    ++v64;
  }

  v64 = v65;
LABEL_26:
  v74 = *(v63 + 16);
  v75 = v131;
  v76 = v136;
  v77 = v130;
  if (v64 == v74)
  {
    v78 = 1;
    goto LABEL_31;
  }

  if (v64 >= v74)
  {
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  sub_22C371948();
  v79 = *(v32 + 72);
  v80 = v124[2];
  sub_22C5791C0();
  v81 = v124[3];
  sub_22C3A7214();
  result = sub_22C370744(v81);
  if (result == 1)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    return result;
  }

  (*v142)(v77, v81, v66);
  sub_22C36DD28(v80, &qword_27D9BDC50, &unk_22C91B470);
  v78 = 0;
LABEL_31:
  v82 = v129;
  sub_22C55CFFC(v77, v78);

  if (sub_22C370744(v77) == 1)
  {
    sub_22C36DD28(v77, &qword_27D9BDC50, &unk_22C91B470);
    v83 = v132;
    if (v135)
    {
      goto LABEL_39;
    }

    v84 = HIBYTE(v132) & 0xF;
    if ((v132 & 0x2000000000000000) == 0)
    {
      v84 = v127 & 0xFFFFFFFFFFFFLL;
    }

    if (!v84)
    {
LABEL_39:

      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_22C90F800;
      *(v85 + 32) = sub_22C908E8C();
      *(v85 + 40) = v101;
      v87 = 1;
    }

    else
    {
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_22C90F870;
      *(v85 + 32) = v127;
      *(v85 + 40) = v83;
      *(v85 + 48) = sub_22C908E8C();
      *(v85 + 56) = v86;
      v87 = 2;
    }

    v149 = MEMORY[0x277D84F90];
    sub_22C3B5E2C();
    v102 = v149;
    v103 = (v85 + 40);
    do
    {
      v104 = *(v103 - 1);
      v105 = *v103;

      v106 = sub_22C90A2CC();
      v108 = v107;

      v149 = v102;
      v109 = *(v102 + 16);
      if (v109 >= *(v102 + 24) >> 1)
      {
        sub_22C3B5E2C();
        v102 = v149;
      }

      *(v102 + 16) = v109 + 1;
      v110 = v102 + 16 * v109;
      *(v110 + 32) = v106;
      *(v110 + 40) = v108;
      v103 += 2;
      --v87;
    }

    while (v87);

    v149 = v102;
    v111 = sub_22C36BA00();
    sub_22C3A5908(v111, v112);
    sub_22C3D32C8(&qword_28142F9F0, &qword_27D9BB5D0, &unk_22C9112A0);
    v113 = sub_22C90A04C();
    v115 = v114;

    v116 = v133;
    *v133 = v113;
    *(v116 + 1) = v115;
    *(v116 + 2) = 0;
    *(v116 + 3) = 0;
    *(v116 + 32) = 0;
  }

  else
  {

    v88 = v128;
    (*(v76 + 32))(v128, v77, v66);
    sub_22C903F7C();
    v91 = *(v76 + 16);
    v90 = (v76 + 16);
    v89 = v91;
    v91(v75, v88, v66);
    v92 = sub_22C9063CC();
    v93 = sub_22C90AACC();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v149 = v95;
      *v94 = 136315138;
      v89(v124[1], v75, v143);
      v96 = sub_22C90A1AC();
      v98 = v97;
      sub_22C374C78();
      v90();
      v99 = sub_22C36F9F4(v96, v98, &v149);

      *(v94 + 4) = v99;
      _os_log_impl(&dword_22C366000, v92, v93, "Tool definition has a conformance to assistant schema %s. Rendering the schema", v94, 0xCu);
      sub_22C36FF94(v95);
      MEMORY[0x2318B9880](v95, -1, -1);
      v100 = v94;
      v66 = v143;
      MEMORY[0x2318B9880](v100, -1, -1);
    }

    else
    {

      sub_22C374C78();
      (v90)(v75, v66);
    }

    (*(v125 + 8))(v82, v126);
    v122 = v128;
    sub_22C55C74C(v128);
    return (v90)(v122, v66);
  }

  return result;
}

void sub_22C55C74C(uint64_t a1)
{
  sub_22C9099EC();

  MEMORY[0x2318B7850](32, 0xE100000000000000);

  sub_22C9099DC();
  sub_22C55D014();
  MEMORY[0x2318B7850](a1, v1);

  sub_22C90A2CC();
  sub_22C370704();
  sub_22C374C24();
}

uint64_t sub_22C55C7FC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v59 = a3;
  v57 = a2;
  v61 = a4;
  v5 = sub_22C908D6C();
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v13 = v12 - v11;
  v14 = sub_22C9099FC();
  v15 = sub_22C369824(v14);
  v62 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v73 = v20 - v19;
  v21 = &qword_27D9BDC50;
  v22 = &unk_22C91B470;
  v23 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v25);
  sub_22C36BA58();
  sub_22C3698D4();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = v56 - v28;
  MEMORY[0x28223BE20](v27);
  v60 = v56 - v30;
  v58 = a1;
  result = sub_22C908DEC();
  v32 = result;
  v33 = 0;
  v34 = *(result + 16);
  v71 = v8 + 88;
  v72 = v8 + 16;
  v70 = *MEMORY[0x277D72148];
  v65 = (v8 + 96);
  v66 = (v8 + 8);
  v68 = result;
  v69 = (v62 + 4);
  v63 = v34;
  v64 = 0x800000022C932110;
  ++v62;
  v67 = v29;
  while (v34 != v33)
  {
    sub_22C36BEE4();
    (*(v8 + 16))(v13, v35 + v36 * v33, v5);
    v37 = (*(v8 + 88))(v13, v5);
    if (v37 == v70)
    {
      v38 = v22;
      v39 = v21;
      (*v65)(v13, v5);
      v40 = *v69;
      v41 = v14;
      (*v69)(v73, v13, v14);
      sub_22C9099DC();
      sub_22C37BE28();
      v43 = v43 && v64 == v42;
      if (v43)
      {
      }

      else
      {
        v44 = sub_22C382CE4();

        if ((v44 & 1) == 0)
        {
          v55 = v67;
          v14 = v41;
          v40(v67, v73, v41);
          sub_22C36C640(v55, 0, 1, v41);
          result = sub_22C36DD28(v55, &qword_27D9BDC50, &unk_22C91B470);
          v32 = v68;
          goto LABEL_15;
        }
      }

      v14 = v41;
      (*v62)(v73, v41);
      v21 = v39;
      v22 = v38;
      v29 = v67;
      v32 = v68;
      v34 = v63;
    }

    else
    {
      (*v66)(v13, v5);
    }

    sub_22C55CFFC(v29, 1);
    result = sub_22C36DD28(v29, v21, v22);
    ++v33;
  }

  v33 = v34;
LABEL_15:
  v45 = *(v32 + 16);
  if (v33 != v45)
  {
    if (v33 >= v45)
    {
      __break(1u);
    }

    else
    {
      sub_22C36BEE4();
      v48 = v56[0];
      sub_22C5791C0();
      v49 = v56[1];
      sub_22C3A7214();
      result = sub_22C370744(v49);
      if (result != 1)
      {
        v47 = v60;
        (*v69)(v60, v49, v14);
        sub_22C36DD28(v48, &qword_27D9BDC50, &unk_22C91B470);
        v46 = 0;
        goto LABEL_20;
      }
    }

    __break(1u);
    return result;
  }

  v46 = 1;
  v47 = v60;
LABEL_20:
  sub_22C55CFFC(v47, v46);

  v50 = sub_22C370744(v47);
  result = sub_22C36DD28(v47, &qword_27D9BDC50, &unk_22C91B470);
  if (v50 == 1)
  {
    result = sub_22C55BBA4(v58, v57 & 1, v59, v74);
    v51 = v74[0];
    v52 = v74[1];
    v53 = v75;
  }

  else
  {
    v51 = 0uLL;
    v53 = -1;
    v52 = 0uLL;
  }

  v54 = v61;
  *v61 = v51;
  v54[1] = v52;
  *(v54 + 32) = v53;
  return result;
}

uint64_t type metadata accessor for ToolRenderer_v5_0()
{
  result = qword_281434120;
  if (!qword_281434120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22C55CDA4()
{
  sub_22C908AEC();
  if (v0 <= 0x3F)
  {
    sub_22C528CEC();
    if (v1 <= 0x3F)
    {
      sub_22C4BBD84(319, qword_281431EC8, &qword_27D9BD9F0, &qword_22C91A228);
      if (v2 <= 0x3F)
      {
        sub_22C4BBD84(319, &qword_27D9BDC70, &qword_27D9BDC78, &qword_22C91B290);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_22C55CEDC()
{
  sub_22C36986C();
  v2 = v1(0);
  sub_22C36985C(v2);
  v4 = *(v3 + 16);
  v5 = sub_22C36BA00();
  v6(v5);
  return v0;
}

uint64_t sub_22C55CF34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C55CF8C()
{
  sub_22C36986C();
  v2 = v1(0);
  sub_22C36985C(v2);
  v4 = *(v3 + 32);
  v5 = sub_22C36BA00();
  v6(v5);
  return v0;
}

uint64_t sub_22C55CFFC(uint64_t a1, uint64_t a2)
{

  return sub_22C36C640(a1, a2, 1, v2);
}

uint64_t sub_22C55D014()
{
}

void sub_22C55D08C()
{
  sub_22C457168(319, &qword_27D9BDC98);
  if (v0 <= 0x3F)
  {
    sub_22C4BBD84(319, &qword_27D9BDCA0, &qword_27D9BDCA8, &qword_22C91B378);
    if (v1 <= 0x3F)
    {
      sub_22C908AEC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C55D198()
{
  sub_22C457168(319, qword_281432558);
  if (v0 <= 0x3F)
  {
    sub_22C908AEC();
    if (v1 <= 0x3F)
    {
      sub_22C457168(319, qword_281430480);
      if (v2 <= 0x3F)
      {
        sub_22C457168(319, qword_281434258);
        if (v3 <= 0x3F)
        {
          sub_22C4BBD84(319, qword_281433480, &qword_27D9BD878, &unk_22C919790);
          if (v4 <= 0x3F)
          {
            type metadata accessor for FullPlannerPreferences();
            if (v5 <= 0x3F)
            {
              type metadata accessor for AssistantToolSchemaDefinitionRenderer_v5_0(319);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_22C55D324()
{
  sub_22C457168(319, qword_281430480);
  if (v0 <= 0x3F)
  {
    sub_22C457168(319, qword_281434258);
    if (v1 <= 0x3F)
    {
      sub_22C4BBD84(319, qword_281433480, &qword_27D9BD878, &unk_22C919790);
      if (v2 <= 0x3F)
      {
        sub_22C457168(319, qword_281432558);
        if (v3 <= 0x3F)
        {
          sub_22C457168(319, qword_281430020);
          if (v4 <= 0x3F)
          {
            sub_22C908AEC();
            if (v5 <= 0x3F)
            {
              type metadata accessor for FullPlannerPreferences();
              if (v6 <= 0x3F)
              {
                sub_22C457168(319, qword_281430CF8);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_22C55D4A0(uint64_t a1)
{
  v45 = sub_22C90981C();
  v2 = sub_22C369824(v45);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C3698E4();
  v40 = v5;
  sub_22C369930();
  MEMORY[0x28223BE20](v6);
  sub_22C36BA64();
  v44 = v7;
  v8 = 0;
  v9 = MEMORY[0x277D84F98];
  v46 = MEMORY[0x277D84F98];
  v41 = v10;
  v42 = *(a1 + 16);
  v43 = (v10 + 32);
  v39 = a1;
  while (1)
  {
    if (v42 == v8)
    {

      return v9;
    }

    if (v8 >= *(a1 + 16))
    {
      break;
    }

    v11 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v12 = *(v41 + 72);
    v13 = v8;
    (*(v41 + 16))(v44, a1 + v11 + v12 * v8, v45);
    v14 = sub_22C9097DC();
    v16 = v15;
    v18 = sub_22C36E2BC(v14, v15);
    v19 = v9[2];
    v20 = (v17 & 1) == 0;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_19;
    }

    v21 = v17;
    if (v9[3] < v19 + v20)
    {
      sub_22C88E43C();
      v9 = v46;
      v22 = sub_22C36E2BC(v14, v16);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_21;
      }

      v18 = v22;
    }

    if (v21)
    {

      v24 = v9[7];
      v25 = *v43;
      (*v43)(v40, v44, v45);
      v26 = *(v24 + 8 * v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v18) = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = *(v26 + 16);
        sub_22C373310();
        sub_22C59266C();
        v26 = v36;
        *(v24 + 8 * v18) = v36;
      }

      v28 = *(v26 + 16);
      if (v28 >= *(v26 + 24) >> 1)
      {
        sub_22C59266C();
        v26 = v37;
        *(v24 + 8 * v18) = v37;
      }

      a1 = v39;
      v29 = v13;
      *(v26 + 16) = v28 + 1;
      v25(v26 + v11 + v28 * v12, v40, v45);
    }

    else
    {
      sub_22C3A5908(&qword_27D9BAD28, &qword_22C91B1B0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_22C90F800;
      (*v43)(v30 + v11, v44, v45);
      v9[(v18 >> 6) + 8] |= 1 << v18;
      v31 = (v9[6] + 16 * v18);
      *v31 = v14;
      v31[1] = v16;
      *(v9[7] + 8 * v18) = v30;
      v32 = v9[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_20;
      }

      v9[2] = v34;
      a1 = v39;
      v29 = v13;
    }

    v8 = v29 + 1;
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

uint64_t sub_22C55D7F0(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BC0C0, &unk_22C911FA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v41 - v4;
  v47 = sub_22C90981C();
  v6 = *(*(v47 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v47);
  v44 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v41 - v10;
  v12 = a1 + 64;
  v11 = *(a1 + 64);
  v46 = MEMORY[0x277D84F98];
  v50 = MEMORY[0x277D84F98];
  v13 = 1 << *(a1 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & v11;
  v16 = (v13 + 63) >> 6;
  v42 = v9;
  v43 = (v9 + 32);
  v48 = a1;

  v18 = 0;
  while (1)
  {
    v19 = v18;
    if (!v15)
    {
      break;
    }

LABEL_9:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = v20 | (v18 << 6);
    v22 = (*(v48 + 48) + 16 * v21);
    v24 = *v22;
    v23 = v22[1];
    v25 = *(*(v48 + 56) + 8 * v21);
    swift_getKeyPath();
    v49 = v25;

    swift_getAtKeyPath();

    if (sub_22C370B74(v5, 1, v47) == 1)
    {

      result = sub_22C3770B0(v5, &qword_27D9BC0C0, &unk_22C911FA0);
    }

    else
    {
      v26 = *v43;
      (*v43)(v45, v5, v47);
      v41 = v26;
      v26(v44, v45, v47);
      if (v46[3] <= v46[2])
      {
        sub_22C88E414();
      }

      v27 = v50;
      v28 = *(v50 + 40);
      sub_22C90B62C();
      sub_22C909FFC();
      result = sub_22C90B66C();
      v29 = v27 + 64;
      v46 = v27;
      v30 = -1 << *(v27 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v27 + 64 + 8 * (v31 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v30) >> 6;
        while (++v32 != v35 || (v34 & 1) == 0)
        {
          v36 = v32 == v35;
          if (v32 == v35)
          {
            v32 = 0;
          }

          v34 |= v36;
          v37 = *(v29 + 8 * v32);
          if (v37 != -1)
          {
            v33 = __clz(__rbit64(~v37)) + (v32 << 6);
            goto LABEL_22;
          }
        }

        goto LABEL_25;
      }

      v33 = __clz(__rbit64((-1 << v31) & ~*(v27 + 64 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
      *(v29 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
      v39 = v46;
      v38 = v47;
      v40 = (v46[6] + 16 * v33);
      *v40 = v24;
      v40[1] = v23;
      result = (v41)(v39[7] + *(v42 + 72) * v33, v44, v38);
      ++v39[2];
    }
  }

  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v16)
    {

      return v46;
    }

    v15 = *(v12 + 8 * v18);
    ++v19;
    if (v15)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_22C55DBD4(uint64_t a1)
{
  v30 = MEMORY[0x277D84F98];
  v33 = MEMORY[0x277D84F98];
  v2 = a1 + 64;
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

  v8 = 0;
  while (1)
  {
    v9 = v8;
    if (!v5)
    {
      break;
    }

LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(a1 + 56) + 8 * v11);
    swift_getKeyPath();

    swift_getAtKeyPath();

    if (v32)
    {
      v16 = v30;
      v17 = *(v30 + 16);
      if (*(v30 + 24) <= v17)
      {
        sub_22C88E938(v17 + 1);
        v16 = v33;
      }

      v30 = v16;
      v18 = *(v16 + 40);
      sub_22C90B62C();
      sub_22C37BE3C();
      sub_22C909FFC();
      result = sub_22C90B66C();
      v19 = v30 + 64;
      v20 = -1 << *(v30 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v30 + 64 + 8 * (v21 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v20) >> 6;
        while (++v22 != v25 || (v24 & 1) == 0)
        {
          v26 = v22 == v25;
          if (v22 == v25)
          {
            v22 = 0;
          }

          v24 |= v26;
          v27 = *(v19 + 8 * v22);
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_22;
          }
        }

        goto LABEL_25;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v30 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v28 = (*(v30 + 48) + 16 * v23);
      *v28 = v14;
      v28[1] = v13;
      v29 = (*(v30 + 56) + 16 * v23);
      *v29 = v31;
      v29[1] = v32;
      ++*(v30 + 16);
    }

    else
    {
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return v30;
    }

    v5 = *(v2 + 8 * v8);
    ++v9;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_22C55DE54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C9097BC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22C55DE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v9 = v7;
  v450 = a6;
  v482 = a5;
  LODWORD(v492) = a3;
  v478 = a2;
  v451 = a7;
  v441 = sub_22C9063DC();
  v12 = sub_22C369824(v441);
  v440 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  sub_22C3698F8(v17 - v16);
  v463 = sub_22C908AEC();
  v18 = sub_22C369824(v463);
  v462 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v461 = v23 - v22;
  v24 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  sub_22C3698F8(&v438 - v26);
  v446 = sub_22C908DAC();
  v27 = sub_22C369824(v446);
  v445 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22C369838();
  v33 = v32 - v31;
  v484 = sub_22C908D6C();
  v34 = sub_22C369824(v484);
  v491 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C369838();
  v499 = v39 - v38;
  v40 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v42);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v43);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v44);
  sub_22C36BA64();
  sub_22C3698F8(v45);
  v485 = sub_22C9099FC();
  v46 = sub_22C369824(v485);
  v465 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v50);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v51);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v52);
  v54 = &v438 - v53;
  v468 = sub_22C90963C();
  v55 = sub_22C369824(v468);
  v467 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  sub_22C369838();
  sub_22C3698F8(v60 - v59);
  v466 = sub_22C90941C();
  v61 = sub_22C369824(v466);
  v476 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v61);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v65);
  sub_22C36BA64();
  sub_22C3698F8(v66);
  v498 = sub_22C9097AC();
  v67 = sub_22C369824(v498);
  v475 = v68;
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v67);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v71);
  sub_22C36BA64();
  sub_22C3698F8(v72);
  v501 = sub_22C90981C();
  v73 = sub_22C369824(v501);
  v495 = v74;
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v73);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v77);
  sub_22C36BA64();
  sub_22C3698F8(v78);
  v493 = type metadata accessor for PromptToolsHelper.RenderableParameter();
  v79 = sub_22C369824(v493);
  v513 = v80;
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v79);
  sub_22C3698E4();
  sub_22C3698D4();
  v84 = MEMORY[0x28223BE20](v83);
  v86 = &v438 - v85;
  MEMORY[0x28223BE20](v84);
  v88 = &v438 - v87;
  v89 = *(a4 + 8);
  v457 = *a4;
  v469 = v89;
  v90 = *(a4 + 16);
  sub_22C381A9C(*(a4 + 24));
  v472 = *(a4 + 32);
  LODWORD(v473) = *(a4 + 40);
  v91 = sub_22C908DCC();
  v503 = a1;
  v477 = sub_22C47B690(sub_22C565284, v502, v91);
  v474 = v8;
  v92 = v9[8];
  v93 = v9[9];
  v481 = v9;
  sub_22C374168(v9 + 5, v92);
  v94 = *(v93 + 8);
  v480 = a1;
  v94(&v509, a1, v492, v482, v92, v93);
  v95 = *(&v509 + 1);
  v444 = v33;
  v456 = v54;
  if (v511)
  {

    v483 = 0;
    v95 = 0;
  }

  else
  {
    v483 = v509;
  }

  v96 = v477;
  v97 = *(v477 + 16);
  if (v97)
  {
    v486 = v95;
    *&v509 = MEMORY[0x277D84F90];
    sub_22C3B6F58();
    v98 = v509;
    v490 = *(v495 + 16);
    v99 = *(v495 + 80);
    sub_22C36BA94();
    v101 = v96 + v100;
    v489 = *(v102 + 56);
    v495 = v102;
    v103 = (v102 + 16);
    do
    {
      v104 = v494;
      v105 = v501;
      v490(v494, v101, v501);
      v106 = *v103;
      (*v103)(v500, v104, v105);
      if (v492)
      {
        v107 = 0;
        v108 = 0;
      }

      else
      {

        v107 = v483;
        v108 = v109;
      }

      v106(v88, v500, v501);
      v110 = &v88[*(v493 + 20)];
      *v110 = v107;
      v110[1] = v108;
      *&v509 = v98;
      v112 = *(v98 + 16);
      v111 = *(v98 + 24);
      if (v112 >= v111 >> 1)
      {
        sub_22C369AB0(v111);
        sub_22C3B6F58();
        v98 = v509;
      }

      *(v98 + 16) = v112 + 1;
      sub_22C37054C();
      sub_22C557D60(v88, v98 + v113 + *(v114 + 72) * v112);
      v101 += v489;
      --v97;
    }

    while (v97);
  }

  else
  {

    v98 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v115);
  v436 = v481;
  *&v509 = v98;

  v116 = v474;
  sub_22C563F04(sub_22C50AF20, &v434);
  sub_22C5653E0();
  if (v116)
  {
    goto LABEL_81;
  }

  v118 = v509;
  v119 = 0;
  v500 = *(v509 + 16);
  v494 = v475 + 8;
  v489 = MEMORY[0x277D84F90];
  v495 = v509;
  v120 = (v475 + 8);
  while (v500 != v119)
  {
    if (v119 >= *(v118 + 16))
    {
      __break(1u);
      goto LABEL_78;
    }

    sub_22C37054C();
    v122 = *(v121 + 72);
    v493 = v123;
    sub_22C56517C(v124 + v123 + v122 * v119, v86);
    v98 = v496;
    sub_22C9097FC();
    v125 = v86;
    v126 = v497;
    sub_22C908FAC();
    sub_22C374C8C();
    sub_22C56523C(&qword_27D9BD8C8, v127);
    v128 = v498;
    v129 = sub_22C90AE0C();
    v130 = *v120;
    (*v120)(v126, v128);
    v130(v98, v128);
    if (v129)
    {
      sub_22C5651E0(v125);
      ++v119;
      v86 = v125;
    }

    else
    {
      v98 = v493;
      sub_22C557D60(v125, v479);
      v131 = v489;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v133 = v131;
      *&v509 = v131;
      v86 = v125;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v134 = *(v131 + 16);
        sub_22C373310();
        sub_22C3B6F58();
        v133 = v509;
      }

      v136 = *(v133 + 16);
      v135 = *(v133 + 24);
      if (v136 >= v135 >> 1)
      {
        sub_22C369AB0(v135);
        sub_22C3B6F58();
        v133 = v509;
      }

      ++v119;
      *(v133 + 16) = v136 + 1;
      v489 = v133;
      sub_22C557D60(v479, v133 + v98 + v136 * v122);
    }

    v118 = sub_22C36D888();
  }

  v137 = v481;
  v138 = v481[4];
  sub_22C374168(v481, v481[3]);
  *&v509 = v489;
  sub_22C3A5908(&qword_27D9BD8D0, &unk_22C919AC0);
  sub_22C388F5C();
  sub_22C3D32C8(v139, &qword_27D9BD8D0, &unk_22C919AC0);
  v140 = v482;
  v141 = sub_22C577748();
  v496 = v142;
  v495 = v143;

  v144 = v473;
  v493 = v141;
  if (v473 == 255)
  {
    v156 = (v137 + *(type metadata accessor for ToolDefinitionRenderer_v6_0(0) + 44));
    v157 = v156[3];
    v158 = v156[4];
    sub_22C374168(v156, v157);
    v159 = v490;
    (*(v158 + 40))(&v509, v480, v492 & 1, v140, v157, v158);
    if (v159)
    {
      sub_22C36D888();

      sub_22C5653C8();
    }

    v154 = v137;
    v490 = 0;
    v505 = v509;
    v506 = v510;
    v507 = v511;
    v508 = v512;
    v152 = *(&v509 + 1);
    v155 = v509;
    v148 = *(&v510 + 1);
    v150 = v510;
    v146 = v511;
    v161 = BYTE8(v511);
    sub_22C456C30(v509, *(&v509 + 1), v510, *(&v510 + 1), v511, SBYTE8(v511));
    sub_22C3E022C(&v505);
    v145 = v472;
    v147 = v471;
    v149 = v470;
    v151 = v469;
    v153 = v457;
    if (v161)
    {
      goto LABEL_28;
    }

LABEL_32:
    *&v509 = v155;
    *(&v509 + 1) = v152;
    *&v510 = v150;
    *(&v510 + 1) = v148;
    *&v511 = v146;
    sub_22C50AF40(v153, v151, v149, v147, v145, v144);
    v494 = v155;
    v483 = v152;
    v486 = v150;
    v489 = v148;
    v492 = v146;
    sub_22C456C30(v155, v152, v150, v148, v146, 0);
    sub_22C37BE3C();
    sub_22C5602A8(v162, v163, v496, v495, v164);
    v469 = *(&v505 + 1);
    v472 = v505;
    sub_22C381A9C(*(&v506 + 1));

    sub_22C37B698();
    sub_22C456D48(v165, v166);
    LODWORD(v479) = 0;
    goto LABEL_33;
  }

  v145 = v472;
  v146 = v472;
  v147 = v471;
  v148 = v471;
  v149 = v470;
  v150 = v470;
  v151 = v469;
  v152 = v469;
  v153 = v457;
  v154 = v137;
  v155 = v457;
  if ((v473 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_28:
  v483 = v152;
  v486 = v150;
  v489 = v148;
  v492 = v146;
  v494 = v155;
  v472 = v155;
  sub_22C50AF40(v153, v151, v149, v147, v145, v144);
  v469 = 0;
  v470 = 0;
  v471 = 0;
  LODWORD(v479) = 1;
LABEL_33:
  v167 = v476;
  v168 = v154[3];
  v169 = v154[4];
  sub_22C374168(v154, v168);
  (*(v169 + 8))(&v505, v168, v169);
  sub_22C374168(&v505, *(&v506 + 1));
  v170 = v458;
  MEMORY[0x2318B6290]();
  v171 = v467;
  v177 = v459;
  v172 = v468;
  (*(v467 + 104))(v459, *MEMORY[0x277D72E10], v468);
  sub_22C4FCF6C();
  (*(v171 + 8))(v177, v172);
  v438 = *(v167 + 8);
  v438(v170, v466);
  v474 = *(&v509 + 1);
  v173 = v509;
  v477 = *(&v510 + 1);
  v475 = v510;
  v174 = v511;
  LODWORD(v177) = BYTE8(v511);
  sub_22C36FF94(&v505);
  sub_22C374168(v154 + 15, v154[18]);
  sub_22C4F9DCC();
  LODWORD(v458) = v177;
  LODWORD(v177) = v479 | v177;
  v476 = v167 + 8;
  LODWORD(v468) = v177;
  v459 = v174;
  v467 = v173;
  if (v177)
  {
    if (v479)
    {
      v178 = v494;
    }

    else
    {
      v178 = v173;
    }

    v473 = v178;
    v179 = v493;
    sub_22C37B2D8();
  }

  else
  {
    v473 = v154[3];
    v181 = v494;
    v513 = v176;
    v500 = v175;
    v497 = v154[4];
    v498 = sub_22C374168(v154, v473);
    v494 = v181;
    v182 = v483;
    v183 = v486;
    sub_22C456C30(v181, v483, v486, v489, v492, 0);
    v184 = v474;
    v185 = v475;
    sub_22C456C30(v173, v474, v475, v477, v174, 0);

    v486 = v183;
    sub_22C456C94(v182, v183);

    sub_22C456C94(v184, v185);
    v186 = sub_22C908DCC();
    v187 = sub_22C55D4A0(v186);
    v188 = sub_22C55DBD4(v187);
    sub_22C5653E0();

    v189 = MEMORY[0x277D84F90];
    v190 = sub_22C909F0C();
    v436 = v497;
    v434 = v189;
    v435 = v473;
    LOWORD(v433) = 256;
    v432 = v450;
    v431 = v498;
    v179 = v493;
    sub_22C37B2D8();
    sub_22C5777F4(v191, v192, v193, v194, v195, v196, v188, v190, v431, v173, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, SBYTE1(v445), v446, v447, v448);
    v473 = v197;

    v177 = v483;
    v198 = sub_22C377C4C();
    sub_22C456D48(v198, v199);

    sub_22C37022C(v504);
    sub_22C37B698();
    sub_22C456D48(v200, v201);

    v202 = v177;
    LOBYTE(v177) = v468;
    sub_22C456D48(v202, v486);

    sub_22C37B698();
    v180 = sub_22C456D48(v203, v204);
    v154 = v481;
  }

  MEMORY[0x28223BE20](v180);
  v436 = v154;
  sub_22C6047A0(MEMORY[0x277D84F98], sub_22C5652A4, &v434, v179, v205, v206, v207, v208, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449);
  v210 = v209;
  v211 = v484;
  sub_22C5653E0();
  if (v177)
  {
    v212 = 0;
    v213 = 0;
    v214 = 0;
    v215 = 0;
    v216 = v473;
  }

  else
  {
    v217 = v473;
    sub_22C50AF90(v473, 0);
    v218 = sub_22C37022C(&v503);
    v219 = v469;
    v220 = v177;
    v177 = v470;
    v221 = v471;
    sub_22C50AFA0(v218, v469, v470, v471, 0);
    v222 = sub_22C3861F8();
    sub_22C50AFA0(v222, v223, v224, v225, 0);
    sub_22C50AF90(v217, 0);

    v226 = sub_22C3861F8();
    sub_22C456D48(v226, v227);
    v216 = v217;
    v212 = &v438;
    v213 = v219;
    v214 = v177;
    LOBYTE(v177) = v220;
    v215 = v221;
  }

  v228 = v485;
  LOBYTE(v505) = v177 & 1;
  *&v509 = v216;
  *(&v509 + 1) = v212;
  *&v510 = v213;
  *(&v510 + 1) = v214;
  *&v511 = v215;
  BYTE8(v511) = v177 & 1;
  *&v512 = v210;
  *(&v512 + 1) = MEMORY[0x277D84F90];
  v452 = v216;
  v453 = v212;
  v454 = v213;
  v455 = v214;
  v457 = v215;
  sub_22C456C30(v216, v212, v213, v214, v215, v177 & 1);
  v229 = 0;
  v513 = sub_22C908DEC();
  v230 = *(v513 + 2);
  v501 = v491 + 16;
  v231 = *MEMORY[0x277D72148];
  v232 = (v491 + 8);
  v233 = (v491 + 96);
  v500 = (v465 + 32);
  v497 = 0x800000022C932110;
  v498 = (v465 + 8);
  while (v230 != v229)
  {
    v234 = v491;
    v235 = *(v491 + 80);
    sub_22C36BA94();
    (*(v234 + 16))(v499, &v513[v236 + *(v234 + 72) * v229], v211);
    v237 = *(v234 + 88);
    v238 = v499;
    if (v237(v499, v211) == v231)
    {
      (*v233)(v238, v211);
      v239 = *v500;
      (*v500)(v487, v238, v228);
      v240 = sub_22C9099DC();
      v238 = v241;
      v242 = v240 == 0xD00000000000001CLL && v497 == v241;
      if (v242)
      {
      }

      else
      {
        v243 = sub_22C90B4FC();

        if ((v243 & 1) == 0)
        {
          v304 = v488;
          v228 = v485;
          v239(v488, v487, v485);
          sub_22C36C640(v304, 0, 1, v228);
          sub_22C3770B0(v304, &qword_27D9BDC50, &unk_22C91B470);
          goto LABEL_56;
        }
      }

      v228 = v485;
      (*v498)(v487, v485);
      v211 = v484;
    }

    else
    {
      (*v232)(v238, v211);
    }

    v244 = sub_22C37022C(&v508);
    sub_22C36C640(v244, 1, 1, v228);
    sub_22C3770B0(v238, &qword_27D9BDC50, &unk_22C91B470);
    ++v229;
  }

  v229 = v230;
LABEL_56:
  v245 = *(v513 + 2);
  v246 = v229 >= v245;
  v242 = v229 == v245;
  v247 = v490;
  v248 = v464;
  v249 = v463;
  v250 = v462;
  v251 = v461;
  v117 = &v492;
  v252 = v460;
  if (!v242)
  {
    if (v246)
    {
      __break(1u);
    }

    else
    {
      sub_22C37054C();
      v255 = *(v254 + 72);
      v256 = v448;
      sub_22C5791C0();
      v257 = v449;
      sub_22C5652C0(v256, v449, &qword_27D9BDC50, &unk_22C91B470);
      if (sub_22C370B74(v257, 1, v228) != 1)
      {
        (*v500)(v252, v257, v228);
        sub_22C3770B0(v256, &qword_27D9BDC50, &unk_22C91B470);
        v253 = 0;
        goto LABEL_62;
      }
    }

    __break(1u);
LABEL_81:

    __break(1u);
    return result;
  }

  v253 = 1;
LABEL_62:
  v258 = v456;
  sub_22C36C640(v252, v253, 1, v228);

  if (sub_22C370B74(v252, 1, v228) == 1)
  {
    sub_22C36D888();

    sub_22C5653C8();
    v259 = sub_22C379944();
    v260 = v468;
    sub_22C377E7C(v259, v261, v262, v263, v264, v468 & 1);
    sub_22C3734D0(v265, v260 & 1);
    v266 = sub_22C369F60();
    v267 = v479;
    sub_22C50AF84(v266, v268, v269, v270, v479);
    v271 = sub_22C36AB74();
    sub_22C456CE4(v271, v272, v273, v274, v275, v267);
    v276 = &qword_27D9BDC50;
    v277 = &unk_22C91B470;
    v278 = v252;
LABEL_64:
    result = sub_22C3770B0(v278, v276, v277);
LABEL_65:
    v279 = v510;
    v280 = v451;
    *v451 = v509;
    v280[1] = v279;
    v281 = v512;
    v280[2] = v511;
    v280[3] = v281;
    return result;
  }

  (*v500)(v258, v252, v228);
  v282 = type metadata accessor for ToolDefinitionRenderer_v6_0(0);
  (*(v250 + 16))(v251, v481 + *(v282 + 36), v249);
  sub_22C9099CC();
  v283 = v251;
  v284 = v250;
  if (v247)
  {
    sub_22C36D888();

    sub_22C5653C8();
    v285 = sub_22C379944();
    v286 = v468;
    sub_22C3734D0(v285, v468 & 1);
    v287 = sub_22C369F60();
    v288 = v479;
    sub_22C50AF84(v287, v289, v290, v291, v479);
    v292 = sub_22C36AB74();
    sub_22C456CE4(v292, v293, v294, v295, v296, v288);
    v297 = sub_22C3E022C(&v509);
    sub_22C377E7C(v297, v298, v299, v300, v301, v286 & 1);
    (*(v284 + 8))(v283, v249);
    v302 = sub_22C565380();
    return v303(v302);
  }

  else
  {
    v305 = v447;
    sub_22C908ACC();

    (*(v250 + 8))(v283, v249);
    v306 = sub_22C908ABC();
    if (sub_22C370B74(v305, 1, v306) == 1)
    {
      v307 = sub_22C565380();
      v308(v307);
      sub_22C36D888();

      sub_22C5653C8();
      v309 = sub_22C379944();
      v310 = v468;
      sub_22C377E7C(v309, v311, v312, v313, v314, v468 & 1);
      sub_22C3734D0(v315, v310 & 1);
      v316 = sub_22C369F60();
      v317 = v479;
      sub_22C50AF84(v316, v318, v319, v320, v479);
      v321 = sub_22C36AB74();
      sub_22C456CE4(v321, v322, v323, v324, v325, v317);
      v276 = &qword_27D9BC0B0;
      v277 = &unk_22C912AD0;
      v278 = v305;
      goto LABEL_64;
    }

    v326 = *(v306 - 8);
    if ((*(v326 + 88))(v305, v306) != *MEMORY[0x277D1E8D0])
    {
      v344 = sub_22C565380();
      v345(v344);
      sub_22C36D888();

      sub_22C5653C8();
      v346 = sub_22C379944();
      v347 = v468;
      sub_22C377E7C(v346, v348, v349, v350, v351, v468 & 1);
      sub_22C3734D0(v352, v347 & 1);
      v353 = sub_22C369F60();
      v354 = v479;
      sub_22C50AF84(v353, v355, v356, v357, v479);
      v358 = sub_22C36AB74();
      sub_22C456CE4(v358, v359, v360, v361, v362, v354);
      result = (*(v326 + 8))(v305, v306);
      goto LABEL_65;
    }

    (*(v326 + 96))(v305, v306);
    (*(v445 + 32))(v444, v305, v446);
    sub_22C903F7C();
    v327 = *(v465 + 16);
    v328 = v442;
    v327(v442, v258, v228);
    v329 = sub_22C9063CC();
    v330 = sub_22C90AACC();
    if (os_log_type_enabled(v329, v330))
    {
      v331 = swift_slowAlloc();
      v490 = 0;
      v332 = v331;
      v501 = swift_slowAlloc();
      *&v505 = v501;
      *v332 = 136315138;
      LODWORD(v500) = v330;
      v333 = sub_22C37022C(&v471);
      v327(v333, v328, v228);
      v334 = v248;
      v335 = sub_22C90A1AC();
      v336 = v228;
      v338 = v337;
      v513 = *v498;
      (v513)(v328, v336);
      v339 = sub_22C36F9F4(v335, v338, &v505);

      *(v332 + 4) = v339;
      _os_log_impl(&dword_22C366000, v329, v500, "Tool definition has a conformance to assistant schema %s. Rendering the schema", v332, 0xCu);
      v340 = sub_22C37022C(&v513);
      sub_22C36FF94(v340);
      MEMORY[0x2318B9880](v330, -1, -1);
      v341 = v332;
      v247 = v490;
      MEMORY[0x2318B9880](v341, -1, -1);

      sub_22C36FB04(&v472);
      v343 = v334;
    }

    else
    {

      v363 = *v498;
      v364 = sub_22C372158();
      v513 = v365;
      (v365)(v364);
      sub_22C36FB04(&v472);
      v343 = v248;
    }

    v342(v343, v441);
    v366 = v481[23];
    v367 = v481[24];
    sub_22C374168(v481 + 20, v366);
    v368 = sub_22C908DCC();
    v369 = sub_22C55D4A0(v368);
    v370 = sub_22C55D7F0(v369);

    v372 = v443;
    MEMORY[0x2318B6290](v371);
    v373 = sub_22C908E7C();
    v374 = *(v367 + 8);
    v437 = v367;
    v375 = v370;
    v98 = v444;
    v374(&v505, v444, v375, v372, v373, v376, v478, v482, v450, v366, v437);
    sub_22C5653E0();
    if (v247)
    {
      sub_22C36D888();

      sub_22C5653C8();
      v377 = sub_22C379944();
      v378 = v468;
      sub_22C3734D0(v377, v468 & 1);
      v379 = sub_22C369F60();
      v380 = v479;
      sub_22C50AF84(v379, v381, v382, v383, v479);
      v384 = sub_22C36AB74();
      sub_22C456CE4(v384, v385, v386, v387, v388, v380);

      v389 = sub_22C3E022C(&v509);
      sub_22C377E7C(v389, v390, v391, v392, v393, v378 & 1);
      v394 = sub_22C37F2E0();
      v395(v394);
      sub_22C36FB04(&v477);
      v396(v98, v446);
      v397 = sub_22C5653AC();
      return v398(v397);
    }

    else
    {
LABEL_78:
      v399 = sub_22C37F2E0();
      v400(v399);

      v504[0] = v505;
      v504[1] = v506;
      v504[2] = v507;
      v504[3] = v508;
      v401 = *(&v505 + 1);
      v501 = v505;
      v402 = v506;
      v403 = v507;
      v404 = BYTE8(v507);
      v500 = v512;
      sub_22C37B698();
      sub_22C456C30(v405, v406, v407, v408, v403, v404);

      sub_22C36D888();

      sub_22C5653C8();
      v409 = sub_22C379944();
      v410 = v468;
      sub_22C3734D0(v409, v468 & 1);
      v411 = sub_22C369F60();
      v412 = v98;
      v413 = v479;
      sub_22C50AF84(v411, v414, v415, v416, v479);
      v417 = sub_22C36AB74();
      sub_22C456CE4(v417, v418, v419, v420, v421, v413);
      v422 = sub_22C3E022C(v504);
      sub_22C377E7C(v422, v423, v424, v425, v426, v410 & 1);
      sub_22C36FB04(&v477);
      v427(v412, v446);
      v428 = sub_22C5653AC();
      v429(v428);
      result = sub_22C3E022C(&v509);
      v430 = v451;
      *v451 = v501;
      *(v430 + 1) = v401;
      v430[1] = v402;
      *(v430 + 4) = v403;
      *(v430 + 40) = v404;
      *(v430 + 6) = v500;
      *(v430 + 7) = MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_22C55FF54()
{
  v0 = sub_22C9063DC();
  v20 = *(v0 - 8);
  v1 = *(v20 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_22C908D6C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_22C908DEC();
  (*(v5 + 104))(v8, *MEMORY[0x277D72170], v4);
  v19 = v8;
  v10 = sub_22C5EC62C(sub_22C50AFAC, v18, v9);

  (*(v5 + 8))(v8, v4);
  if (!v10)
  {
    return 1;
  }

  if (sub_22C9097DC() == 7368801 && v11 == 0xE300000000000000)
  {
  }

  else
  {
    v13 = sub_22C90B4FC();

    if ((v13 & 1) == 0)
    {
      return 1;
    }
  }

  sub_22C903F7C();
  v15 = sub_22C9063CC();
  v16 = sub_22C90AAFC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_22C366000, v15, v16, "Skipping app parameter for system framework intent", v17, 2u);
    MEMORY[0x2318B9880](v17, -1, -1);
  }

  (*(v20 + 8))(v3, v0);
  return 0;
}

uint64_t sub_22C560210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + *(type metadata accessor for ToolDefinitionRenderer_v6_0(0) + 44));
  v8 = v7[3];
  v9 = v7[4];
  sub_22C374168(v7, v8);
  return (*(v9 + 40))(a1, a2, a3, v8, v9);
}

void sub_22C5602A8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X8>)
{
  v93 = sub_22C3A5908(&qword_27D9BD8E0, &qword_22C91B410);
  v10 = *(*(v93 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v93);
  v92 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v91 = &v73 - v13;
  v94 = sub_22C3A5908(&qword_27D9BD8E8, &unk_22C919AD0);
  v14 = *(*(v94 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v94);
  v90 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v89 = &v73 - v18;
  MEMORY[0x28223BE20](v17);
  v103 = &v73 - v19;
  v20 = *a1;
  v80 = a2;
  sub_22C5652C0(a2 + 80, &v108, &qword_27D9BD658, &qword_22C9186E0);
  if (!v110)
  {
    sub_22C3770B0(&v108, &qword_27D9BD658, &qword_22C9186E0);
    v61 = 0;
    v62 = 0;
    v63 = 0;
    goto LABEL_15;
  }

  v77 = sub_22C374168(&v108, v110);
  v76 = sub_22C908E7C();
  v78 = v21;
  v88 = *(a4 + 16);
  v79 = a5;
  if (!v88)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_17:
    v64 = type metadata accessor for ToolDefinitionRenderer_v6_0(0);
    v65 = *v77;
    v66 = sub_22C49FB90(v20, v80 + *(v64 + 40));
    v68 = v67;

    sub_22C532604(v66, v68, v25, v65, &v104);

    v63 = v104;
    v69 = v105;
    v62 = v106;
    v61 = v107;
    sub_22C36FF94(&v108);
    if (v69)
    {
      v104 = v63;
      v105 = v69;
      v106 = v62;
      v107 = v61;
      sub_22C474C14(&v108);

      v70 = v109;
      v71 = v110;
      v72 = v79;
      *v79 = v108;
      *(v72 + 2) = v70;
      *(v72 + 3) = v71;
      return;
    }

    a5 = v79;
LABEL_15:
    *a5 = v63;
    a5[1] = 0;
    a5[2] = v62;
    a5[3] = v61;
    return;
  }

  v74 = v20;
  v86 = (v103 + *(v94 + 48));
  v85 = sub_22C90981C();
  v22 = *(v85 - 8);
  v83 = a3 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
  v87 = *(a3 + 16);
  v82 = v22 + 16;
  v84 = v22;
  v81 = v22 + 32;

  v23 = 0;
  v75 = a4;
  v24 = (a4 + 64);
  v25 = MEMORY[0x277D84F90];
  while (v87 != v23)
  {
    v102 = v25;
    v26 = v93;
    v27 = v91;
    v28 = &v91[*(v93 + 48)];
    v29 = v84;
    v30 = *(v84 + 72);
    v101 = v23;
    v31 = v85;
    (*(v84 + 16))(v91, v83 + v30 * v23, v85);
    v33 = *(v24 - 4);
    v32 = *(v24 - 3);
    v35 = *(v24 - 1);
    v98 = *(v24 - 2);
    v34 = v98;
    v99 = v32;
    v97 = v35;
    v100 = v24;
    v36 = *v24;
    v95 = v33;
    v96 = v36;
    *v28 = v33;
    *(v28 + 1) = v32;
    *(v28 + 2) = v34;
    *(v28 + 3) = v35;
    *(v28 + 4) = v36;
    v37 = v92;
    sub_22C557E2C(v27, v92);
    v38 = v37 + *(v26 + 48);
    v39 = *(v29 + 32);
    v40 = v103;
    v39(v103, v37, v31);
    v41 = *(v38 + 32);
    v42 = *(v38 + 16);
    v43 = v86;
    *v86 = *v38;
    v43[1] = v42;
    *(v43 + 4) = v41;
    v44 = v89;
    sub_22C5652C0(v40, v89, &qword_27D9BD8E8, &unk_22C919AD0);
    v45 = *(v94 + 48);
    v47 = *(v44 + v45);
    v46 = *(v44 + v45 + 8);
    v48 = *(v44 + v45 + 16);
    v49 = *(v44 + v45 + 32);
    v50 = v90;
    v51 = &v90[v45];
    v52 = v44;
    v53 = *(v44 + v45 + 24);
    v39(v90, v52, v31);
    *v51 = v47;
    *(v51 + 1) = v46;
    *(v51 + 2) = v48;
    *(v51 + 3) = v53;
    *(v51 + 4) = v49;

    sub_22C456C94(v99, v98);
    sub_22C456C94(v46, v48);
    sub_22C3770B0(v50, &qword_27D9BD8E8, &unk_22C919AD0);
    sub_22C3770B0(v103, &qword_27D9BD8E8, &unk_22C919AD0);
    if (v48)
    {
      v25 = v102;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = *(v25 + 16);
        sub_22C591018();
        v25 = v59;
      }

      v55 = v100;
      v54 = v101;
      v56 = *(v25 + 16);
      if (v56 >= *(v25 + 24) >> 1)
      {
        sub_22C591018();
        v25 = v60;
      }

      *(v25 + 16) = v56 + 1;
      v57 = (v25 + 32 * v56);
      v57[4] = v46;
      v57[5] = v48;
      v57[6] = v53;
      v57[7] = v49;
    }

    else
    {
      v54 = v101;
      v25 = v102;
      v55 = v100;
    }

    v23 = v54 + 1;
    v24 = v55 + 5;
    if (v88 == v23)
    {

      v20 = v74;
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_22C560954(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = a1;
  v5 = sub_22C3A5908(&qword_27D9BD8F0, &unk_22C919AE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - v7;
  v9 = sub_22C3A5908(&qword_27D9BD8E8, &unk_22C919AD0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = sub_22C90981C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C5652C0(a2, v13, &qword_27D9BD8E8, &unk_22C919AD0);
  v19 = &v13[*(v10 + 56)];
  v21 = *v19;
  v20 = *(v19 + 1);
  v22 = *(v19 + 3);
  v28 = *(v19 + 2);
  v29 = v20;
  v27 = *(v19 + 4);
  (*(v15 + 32))(v18, v13, v14);
  v24 = a3[3];
  v23 = a3[4];
  sub_22C374168(a3, v24);
  (*(v23 + 32))(v18, v24, v23);
  (*(v15 + 16))(v8, v18, v14);
  v25 = type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
  *&v8[*(v25 + 20)] = v21;
  sub_22C36C640(v8, 0, 1, v25);

  sub_22C6036EC();

  sub_22C456D48(v29, v28);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_22C560BE4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ToolDefinitionRenderer_v6_0(0) + 44));
  v6 = v5[3];
  v7 = v5[4];
  sub_22C374168(v5, v6);
  return (*(v7 + 32))(a1, a2, v6, v7);
}

uint64_t sub_22C560CBC(uint64_t a1)
{
  v2 = sub_22C908D6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = sub_22C908EAC();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v16 = *(a1 + 16);
  v37 = a1;
  v38 = v16;
  v35 = v17 + 16;
  v18 = *MEMORY[0x277D72188];
  v40 = *MEMORY[0x277D72178];
  v19 = (v3 + 8);
  v36 = v17;
  v31 = v7;
  v32 = (v17 + 8);
  v33 = v14;
  v34 = v12;
  while (1)
  {
    if (v15 == v38)
    {
      return v15 == v38;
    }

    v20 = v15;
    (*(v36 + 16))(v14, v37 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v15, v10);
    v30 = v20;
    v39 = v20 + 1;
    v21 = sub_22C908DEC();
    v22 = 0;
    v23 = *(v21 + 16);
    while (1)
    {
      if (v23 == v22)
      {
        v22 = v23;
        goto LABEL_10;
      }

      (*(v3 + 16))(v9, v21 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v22, v2);
      v24 = (*(v3 + 88))(v9, v2);
      if (v24 == v18)
      {
        break;
      }

      if (v24 == v40)
      {
        goto LABEL_10;
      }

      (*v19)(v9, v2);
      ++v22;
    }

    (*v19)(v9, v2);
LABEL_10:
    v25 = *(v21 + 16);
    if (v22 == v25)
    {

      (*v32)(v33, v34);
      v15 = v30;
      return v15 == v38;
    }

    if (v22 >= v25)
    {
      break;
    }

    v26 = v21 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v22;
    v22 = v31;
    (*(v3 + 16))(v31, v26, v2);
    v27 = (*(v3 + 88))(v22, v2);
    if (v27 == v18)
    {
      (*v19)(v22, v2);
    }

    else if (v27 != v40)
    {
      goto LABEL_19;
    }

    v14 = v33;
    v10 = v34;
    (*v32)(v33, v34);
    v15 = v39;
  }

  __break(1u);
LABEL_19:
  result = (*v19)(v22, v2);
  __break(1u);
  return result;
}

void sub_22C56107C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((sub_22C560CBC(a1) & 1) == 0)
  {
    type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
    v11 = MEMORY[0x277D84F90];
    v30 = sub_22C909F0C();
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
LABEL_12:
    *(a2 + 40) = 1;
    goto LABEL_13;
  }

  sub_22C378A4C(v2, &v34);
  v5 = sub_22C37335C();
  sub_22C513F8C(v5, v6);
  v8 = v7;
  sub_22C565328(&v34);
  if (*(v8 + 16) != *(a1 + 16))
  {

    type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
    v11 = MEMORY[0x277D84F90];
    sub_22C909F0C();
    *a2 = 2;
    sub_22C37274C();
    goto LABEL_12;
  }

  v34 = 0;
  v35 = 0xE000000000000000;
  sub_22C90AF5C();
  MEMORY[0x2318B7850](543581540, 0xE400000000000000);
  MEMORY[0x2318B7850](0x695F686372616573, 0xED00007070615F6ELL);
  MEMORY[0x2318B7850](0xD0000000000000ACLL, 0x800000022C932130);
  v9 = v34;
  v10 = v35;
  sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22C90F800;
  sub_22C36A83C();
  v12 = swift_allocObject();
  *(v12 + 16) = 0xD00000000000001ELL;
  *(v12 + 24) = 0x800000022C9321E0;
  sub_22C591324();
  v14 = v13;
  v16 = *(v13 + 16);
  v15 = *(v13 + 24);
  if (v16 >= v15 >> 1)
  {
    sub_22C369AB0(v15);
    sub_22C591324();
    v14 = v31;
  }

  *(v14 + 16) = v16 + 1;
  *(v14 + 8 * v16 + 32) = v12;
  v34 = v8;
  sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
  sub_22C3D32C8(&qword_28142F9F0, &qword_27D9BB5D0, &unk_22C9112A0);
  v17 = sub_22C90A04C();
  v19 = v18;

  sub_22C36A83C();
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = v19;
  v21 = *(v14 + 16);
  v22 = *(v14 + 24);

  if (v21 >= v22 >> 1)
  {
    sub_22C591324();
    v14 = v32;
  }

  *(v14 + 16) = v21 + 1;
  *(v14 + 8 * v21 + 32) = v20;

  sub_22C36A83C();
  v23 = swift_allocObject();
  *(v23 + 16) = 93;
  *(v23 + 24) = 0xE100000000000000;
  v25 = *(v14 + 16);
  v24 = *(v14 + 24);
  if (v25 >= v24 >> 1)
  {
    sub_22C369AB0(v24);
    sub_22C591324();
    v14 = v33;
  }

  *(v14 + 16) = v25 + 1;
  *(v14 + 8 * v25 + 32) = v23;
  v26 = sub_22C3DB9B0(v14);

  v27 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v27 + 16) = v28;
  *(v11 + 32) = v27 | 0x6000000000000000;
  sub_22C36A83C();
  v29 = swift_allocObject();
  *(v29 + 16) = v9;
  *(v29 + 24) = v10;
  type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
  sub_22C909F0C();
  *a2 = v29;
  sub_22C37274C();
  *(a2 + 40) = 0;
LABEL_13:
  *(a2 + 48) = v30;
  *(a2 + 56) = v11;
}

uint64_t sub_22C561498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22C378A4C(v2, v6);
  sub_22C5145AC(a1, a2);
  return sub_22C565328(v6);
}

void sub_22C5614F8(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v49 = a4;
  v47 = a5;
  v48 = a3;
  v46 = a2;
  v8 = sub_22C90963C();
  v9 = sub_22C369824(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v14 = sub_22C90941C();
  v15 = sub_22C369824(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v22 = v21 - v20;
  *&v55 = sub_22C9097DC();
  *(&v55 + 1) = v23;
  v52 = &v55;
  v24 = sub_22C5EC08C(sub_22C457404, v51, &unk_283FAEBB0);

  if (v24)
  {
    *a6 = 1;
    sub_22C37274C();
    *(a6 + 40) = v26;
  }

  else
  {
    MEMORY[0x2318B6CE0](v25);
    v27 = type metadata accessor for ParameterDefinitionRenderer_v6_0(0);
    v28 = sub_22C4F6864(v50 + *(v27 + 24), v49);
    v29 = *(v17 + 8);
    v29(v22, v14);
    if (v28 != 2 || v48 == 0)
    {
      v50 = sub_22C374168(v50, v50[3]);
      MEMORY[0x2318B6CE0]();
      v31 = *MEMORY[0x277D72E10];
      v32 = sub_22C37F808(v11);
      v33(v32);
      sub_22C377C4C();
      sub_22C4FCD10();
      v34 = *(v11 + 8);
      v35 = sub_22C372158();
      v36(v35);
      v29(v22, v14);
    }

    else
    {
      v45 = sub_22C374168(v50, v50[3]);
      MEMORY[0x2318B6CE0](v45);
      v37 = *MEMORY[0x277D72E10];
      v38 = sub_22C37F808(v11);
      v39(v38);
      sub_22C377C4C();
      sub_22C4FCF6C();
      v40 = *(v11 + 8);
      v41 = sub_22C372158();
      v42(v41);
      v43 = (v29)(v22, v14);
      v55 = v53;
      v56[0] = v54[0];
      *(v56 + 9) = *(v54 + 9);
      MEMORY[0x28223BE20](v43);
      *(&v45 - 4) = v50;
      *(&v45 - 3) = a1;
      v44 = v48;
      *(&v45 - 2) = v46;
      *(&v45 - 1) = v44;
      sub_22C54DBA0(sub_22C565150, a6);
      sub_22C3770B0(&v55, &qword_27D9BAB08, &qword_22C91A110);
    }
  }
}

uint64_t sub_22C561860@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  sub_22C456C94(v4, v5);
  result = sub_22C561900(v3);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  return result;
}

uint64_t sub_22C561900(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0xE000000000000000;
  sub_22C591324();
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5 >= *(v3 + 24) >> 1)
  {
    sub_22C591324();
    v4 = v24;
  }

  *(v4 + 16) = v5 + 1;
  *(v4 + 8 * v5 + 32) = v2;
  v6 = sub_22C561BB0();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);

  if (v11 >= v10 >> 1)
  {
    sub_22C591324();
    v4 = v25;
  }

  *(v4 + 16) = v11 + 1;
  *(v4 + 8 * v11 + 32) = v9;

  v12 = swift_allocObject();
  *(v12 + 16) = 2112800;
  *(v12 + 24) = 0xE300000000000000;
  v13 = *(v4 + 16);
  v14 = *(v4 + 24) >> 1;
  v15 = v13 + 1;
  if (v14 <= v13)
  {
    sub_22C591324();
    v4 = v26;
    v14 = *(v26 + 24) >> 1;
  }

  *(v4 + 16) = v15;
  *(v4 + 8 * v13 + 32) = v12;
  v16 = v13 + 2;
  if (v14 < (v13 + 2))
  {
    sub_22C591324();
    v4 = v27;
  }

  *(v4 + 16) = v16;
  *(v4 + 8 * v15 + 32) = a1;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0xE000000000000000;
  v18 = *(v4 + 24);
  v19 = v13 + 3;

  if (v19 > (v18 >> 1))
  {
    sub_22C591324();
    v4 = v28;
  }

  *(v4 + 16) = v19;
  *(v4 + 8 * v16 + 32) = v17;
  v20 = sub_22C3DB9B0(v4);

  v21 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v21 + 16) = v22;
  return v21 | 0x6000000000000000;
}

uint64_t sub_22C561BB0()
{
  v0 = sub_22C90A28C();
  sub_22C9097DC();
  v1 = sub_22C90A28C();
  v3 = v2;

  MEMORY[0x2318B7850](v1, v3);

  MEMORY[0x2318B7850](0x7361696C41, 0xE500000000000000);

  return v0;
}

void sub_22C561C78(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v76 = a4;
  v77 = a5;
  v74 = a2;
  v75 = a3;
  v8 = sub_22C90963C();
  v9 = sub_22C369824(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v14 = sub_22C90941C();
  v15 = sub_22C369824(v14);
  v78 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v21 = v20 - v19;
  v82 = sub_22C9097DC();
  v83 = v22;
  v81 = &v82;
  v23 = sub_22C5EC08C(sub_22C3AC11C, v80, &unk_283FAEBB0);

  if (v23)
  {
    *a6 = 1;
    *(a6 + 8) = 0u;
    *(a6 + 24) = 0u;
    *(a6 + 40) = 1;
  }

  else
  {
    v71[1] = 0;
    v72 = v14;
    v73 = a6;
    sub_22C374168(v79, v79[3]);
    MEMORY[0x2318B6CE0]();
    v24 = *MEMORY[0x277D72E10];
    v25 = sub_22C37F808(v11);
    v26(v25);
    sub_22C4FCF6C();
    v27 = *(v11 + 8);
    v28 = sub_22C372158();
    v29(v28);
    v30 = *(v78 + 8);
    v31 = v30(v21, v14);
    v32 = v82;
    v33 = v85;
    v76 = v84;
    v77 = v83;
    v34 = v86;
    v35 = v87;
    v78 = a1;
    MEMORY[0x2318B6CE0](v31);
    v36 = *(type metadata accessor for ParameterDefinitionRenderer_v6_0(0) + 24);
    sub_22C5089A0();
    v38 = v37;
    v39 = v30(v21, v14);
    if (v38)
    {
      v40 = v33;
      v41 = v34;
      LODWORD(v72) = v35;
      if (v35)
      {
        v42 = 1;
        v43 = v32;
        v45 = v78;
        v44 = v79;
        v46 = v34;
        v47 = v77;
        v48 = v76;
        v49 = v40;
      }

      else
      {
        v51 = sub_22C377C4C();
        v48 = v52;
        v49 = v53;
        v46 = v41;
        v47 = v54;
        sub_22C456C30(v51, v54, v52, v53, v46, 0);
        sub_22C456C94(v47, v48);
        v45 = v78;
        v44 = v79;
        v43 = sub_22C562070();
        sub_22C565398();
        sub_22C456CE4(v55, v56, v57, v58, v59, 0);
        v42 = 0;
      }

      LOBYTE(v35) = v72;
    }

    else
    {
      v50 = v33;
      v48 = v76;
      v47 = v77;
      sub_22C456C30(v32, v77, v76, v50, v34, v35);
      v43 = v32;
      v42 = v35;
      v45 = v78;
      v44 = v79;
      v46 = v34;
      v49 = v50;
    }

    v79 = v71;
    v82 = v43;
    v83 = v47;
    v84 = v48;
    v85 = v49;
    v86 = v46;
    v87 = v42;
    MEMORY[0x28223BE20](v39);
    v71[-2] = v44;
    v71[-1] = v45;
    sub_22C54DBA0(sub_22C565148, v60);
    sub_22C565398();
    sub_22C456CE4(v61, v62, v63, v64, v65, v35);
    sub_22C565398();
    sub_22C456CE4(v66, v67, v68, v69, v70, v42);
  }
}

uint64_t sub_22C562070()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  sub_22C591324();
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3 >= *(v1 + 24) >> 1)
  {
    sub_22C591324();
    v2 = v16;
  }

  *(v2 + 16) = v3 + 1;
  *(v2 + 8 * v3 + 32) = v0;

  v4 = sub_22C561BB0();
  v6 = v5;

  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  v9 = *(v2 + 16);
  v8 = *(v2 + 24);

  if (v9 >= v8 >> 1)
  {
    sub_22C591324();
    v2 = v17;
  }

  *(v2 + 16) = v9 + 1;
  *(v2 + 8 * v9 + 32) = v7;

  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0xE000000000000000;
  v11 = *(v2 + 16);
  if (v11 >= *(v2 + 24) >> 1)
  {
    sub_22C591324();
    v2 = v18;
  }

  *(v2 + 16) = v11 + 1;
  *(v2 + 8 * v11 + 32) = v10;
  v12 = sub_22C3DB9B0(v2);

  v13 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 16) = v14;
  return v13 | 0x6000000000000000;
}

uint64_t sub_22C562274@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v9 = a1[4];
  sub_22C456C94(v6, v8);
  v10 = sub_22C56237C(v5);
  if (v8)
  {
    v14[0] = v6;
    v14[1] = v8;
    v14[2] = v7;
    v14[3] = v9;

    sub_22C562668(v14, a2, v15);

    result = sub_22C456D48(v6, v8);
    v12 = v15[1];
    v13 = v15[0];
  }

  else
  {
    result = sub_22C456D48(v6, 0);
    v13 = v6;
    *&v12 = v7;
    *(&v12 + 1) = v9;
  }

  *a3 = v10;
  *(a3 + 8) = v13;
  *(a3 + 24) = v12;
  return result;
}

uint64_t sub_22C56237C(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0xE000000000000000;
  sub_22C591324();
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5 >= *(v3 + 24) >> 1)
  {
    sub_22C591324();
    v4 = v24;
  }

  *(v4 + 16) = v5 + 1;
  *(v4 + 8 * v5 + 32) = v2;
  sub_22C9097DC();
  v6 = sub_22C90A2CC();
  v8 = v7;

  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);

  if (v11 >= v10 >> 1)
  {
    sub_22C591324();
    v4 = v25;
  }

  *(v4 + 16) = v11 + 1;
  *(v4 + 8 * v11 + 32) = v9;

  v12 = swift_allocObject();
  *(v12 + 16) = 8250;
  *(v12 + 24) = 0xE200000000000000;
  v13 = *(v4 + 16);
  v14 = *(v4 + 24) >> 1;
  v15 = v13 + 1;
  if (v14 <= v13)
  {
    sub_22C591324();
    v4 = v26;
    v14 = *(v26 + 24) >> 1;
  }

  *(v4 + 16) = v15;
  *(v4 + 8 * v13 + 32) = v12;
  v16 = v13 + 2;
  if (v14 < (v13 + 2))
  {
    sub_22C591324();
    v4 = v27;
  }

  *(v4 + 16) = v16;
  *(v4 + 8 * v15 + 32) = a1;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0xE000000000000000;
  v18 = *(v4 + 24);
  v19 = v13 + 3;

  if (v19 > (v18 >> 1))
  {
    sub_22C591324();
    v4 = v28;
  }

  *(v4 + 16) = v19;
  *(v4 + 8 * v16 + 32) = v17;
  v20 = sub_22C3DB9B0(v4);

  v21 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v21 + 16) = v22;
  return v21 | 0x6000000000000000;
}

uint64_t sub_22C56261C()
{
  sub_22C9097DC();
  v0 = sub_22C90A2CC();

  return v0;
}

uint64_t sub_22C562668@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25[-1] - v9;
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  sub_22C5652C0(a2 + 40, v27, &qword_27D9BD900, &qword_22C919AF0);
  if (v28)
  {
    sub_22C374168(v27, v28);
    sub_22C9097DC();
    v24 = sub_22C90A2CC();
    v29 = v3;
    v16 = v15;

    v25[0] = v11;
    v25[1] = v12;
    v25[2] = v13;
    v25[3] = v14;
    MEMORY[0x2318B6CE0](v17);
    v18 = sub_22C90941C();
    sub_22C36C640(v10, 0, 1, v18);
    sub_22C532128(v24, v16, v25, v10, v26);

    sub_22C3770B0(v10, &qword_27D9BC028, &unk_22C9134B0);
    v19 = v26[0];
    v20 = v26[1];
    v21 = v26[2];
    v22 = v26[3];
    result = sub_22C36FF94(v27);
  }

  else
  {
    result = sub_22C3770B0(v27, &qword_27D9BD900, &qword_22C919AF0);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
  }

  *a3 = v19;
  a3[1] = v20;
  a3[2] = v21;
  a3[3] = v22;
  return result;
}

unint64_t sub_22C562810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  if (!a4)
  {
    v6 = sub_22C9097BC();
    if (!v7)
    {
      return 0xF000000000000007;
    }

    a3 = v6;
    v5 = v7;
  }

  sub_22C36A83C();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = v5;

  return v8;
}

void sub_22C5628BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v174 = a6;
  v175 = a7;
  v166 = a5;
  v167 = a4;
  v173 = a3;
  v176 = a8;
  v198 = sub_22C9097AC();
  v11 = sub_22C369824(v198);
  v178 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C3698E4();
  v197 = v15;
  sub_22C369930();
  MEMORY[0x28223BE20](v16);
  sub_22C36BA64();
  v196 = v17;
  v18 = sub_22C90963C();
  v19 = sub_22C369824(v18);
  v171 = v20;
  v172 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v170 = v24 - v23;
  v168 = type metadata accessor for PromptToolsHelper.RenderableParameter();
  v25 = sub_22C369824(v168);
  v200 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C3698E4();
  v185 = v29;
  sub_22C369930();
  MEMORY[0x28223BE20](v30);
  sub_22C36BA58();
  v179 = v31;
  sub_22C369930();
  MEMORY[0x28223BE20](v32);
  sub_22C36BA64();
  v177 = v33;
  v34 = sub_22C90981C();
  v35 = sub_22C369824(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C3698E4();
  v190 = v40;
  sub_22C369930();
  MEMORY[0x28223BE20](v41);
  sub_22C36BA58();
  v192 = v42;
  sub_22C369930();
  MEMORY[0x28223BE20](v43);
  v45 = v164 - v44;
  v169 = type metadata accessor for AssistantToolSchemaDefinitionRenderer_v6_0(0);
  v46 = *(v169 + 40);
  v188 = v8;
  sub_22C5509B8();
  v187 = v204;
  v182 = v206;
  v183 = v205;
  v180 = v208;
  v181 = v207;
  v186 = v209;
  sub_22C456C30(v204, v205, v206, v207, v208, v209);
  sub_22C3E022C(&v204);
  v184 = a1;
  v47 = sub_22C908D8C();
  v48 = *(v47 + 16);
  if (!v48)
  {

    v76 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v164[1] = v47;
  v165 = v37;
  v194 = *(v37 + 16);
  v195 = (v37 + 16);
  v49 = *(v37 + 80);
  sub_22C36BA94();
  v189 = v50;
  v52 = v51 + v50;
  v54 = *(v53 + 56);
  v55 = (v53 - 8);
  v191 = (v53 + 16);
  v193 = MEMORY[0x277D84F90];
  v199 = a2;
  do
  {
    v194(v45, v52, v34);
    v56 = sub_22C9097DC();
    if (!*(a2 + 16))
    {

LABEL_11:
      v70 = *v55;
      v71 = sub_22C37335C();
      v72(v71);
      goto LABEL_12;
    }

    v58 = sub_22C36E2BC(v56, v57);
    v60 = v59;

    if ((v60 & 1) == 0)
    {
      goto LABEL_11;
    }

    v61 = *(v199 + 56) + v58 * v54;
    v62 = v190;
    v194(v190, v61, v34);
    v63 = *v55;
    v64 = sub_22C37335C();
    v65(v64);
    v66 = *v191;
    (*v191)(v192, v62, v34);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v67 = v193;
    }

    else
    {
      v73 = *(v193 + 16);
      sub_22C373310();
      sub_22C59266C();
      v67 = v74;
    }

    v69 = *(v67 + 16);
    v68 = *(v67 + 24);
    if (v69 >= v68 >> 1)
    {
      sub_22C369AB0(v68);
      sub_22C59266C();
      v67 = v75;
    }

    *(v67 + 16) = v69 + 1;
    v193 = v67;
    v66(v67 + v189 + v69 * v54, v192, v34);
LABEL_12:
    v52 += v54;
    --v48;
    a2 = v199;
  }

  while (v48);

  v37 = v165;
  v76 = v193;
LABEL_16:
  v77 = *(v76 + 16);
  v78 = v177;
  if (v77)
  {
    v199 = v34;
    __dst[0] = MEMORY[0x277D84F90];
    v79 = v76;
    sub_22C3B6F58();
    v81 = *(v37 + 16);
    v80 = v37 + 16;
    v195 = v81;
    v82 = __dst[0];
    v83 = *(v80 + 64);
    sub_22C36BA94();
    v193 = v79;
    v85 = v79 + v84;
    v86 = *(v80 + 56);
    v87 = v168;
    do
    {
      v195(v78, v85, v199);
      v88 = (v78 + *(v87 + 20));
      *v88 = 0;
      v88[1] = 0;
      __dst[0] = v82;
      v90 = *(v82 + 16);
      v89 = *(v82 + 24);
      if (v90 >= v89 >> 1)
      {
        sub_22C369AB0(v89);
        sub_22C3B6F58();
        v87 = v168;
        v82 = __dst[0];
      }

      *(v82 + 16) = v90 + 1;
      sub_22C37054C();
      sub_22C557D60(v78, v82 + v91 + *(v92 + 72) * v90);
      v85 += v86;
      --v77;
    }

    while (v77);
  }

  else
  {

    v82 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v93);
  v163 = v188;
  __dst[0] = v82;

  v94 = 0;
  sub_22C563F04(sub_22C56515C, v162);

  v95 = __dst[0];
  v96 = 0;
  v199 = *(__dst[0] + 16);
  v97 = v179;
  v194 = (v178 + 8);
  v192 = MEMORY[0x277D84F90];
  v195 = __dst[0];
  v98 = (v178 + 8);
  while (v199 != v96)
  {
    if (v96 >= *(v95 + 2))
    {
      __break(1u);

      __break(1u);
      return;
    }

    sub_22C37054C();
    v100 = *(v99 + 72);
    v193 = v101;
    sub_22C56517C(v102 + v101 + v100 * v96, v97);
    v103 = v196;
    sub_22C9097FC();
    v104 = v197;
    sub_22C908FAC();
    sub_22C374C8C();
    sub_22C56523C(&qword_27D9BD8C8, v105);
    v106 = v97;
    v107 = v198;
    v108 = sub_22C90AE0C();
    v94 = *v98;
    (*v98)(v104, v107);
    (v94)(v103, v107);
    if (v108)
    {
      sub_22C5651E0(v106);
      ++v96;
      v97 = v106;
      v95 = v195;
    }

    else
    {
      v109 = v193;
      sub_22C557D60(v106, v185);
      v110 = v192;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = v110;
      v97 = v106;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v112 = *(v110 + 16);
        sub_22C373310();
        sub_22C3B6F58();
        v110 = __dst[0];
      }

      v113 = v109;
      v94 = *(v110 + 16);
      v114 = *(v110 + 24);
      if (v94 >= v114 >> 1)
      {
        sub_22C369AB0(v114);
        sub_22C3B6F58();
        v110 = __dst[0];
      }

      ++v96;
      *(v110 + 16) = v94 + 1;
      v192 = v110;
      sub_22C557D60(v185, v110 + v113 + v94 * v100);
      v95 = v195;
    }
  }

  v115 = v188;
  v116 = (v188 + *(v169 + 24));
  v117 = v116[4];
  sub_22C374168(v116, v116[3]);
  __dst[0] = v192;
  sub_22C3A5908(&qword_27D9BD8D0, &unk_22C919AC0);
  sub_22C388F5C();
  sub_22C3D32C8(v118, &qword_27D9BD8D0, &unk_22C919AC0);
  v119 = sub_22C577748();
  v197 = v120;
  v198 = v119;
  v196 = v121;

  v122 = v116[4];
  sub_22C374168(v116, v116[3]);
  v123 = *(v122 + 8);
  v124 = sub_22C37335C();
  v125(v124);
  sub_22C374168(v202, v202[3]);
  v127 = v170;
  v126 = v171;
  v128 = v172;
  (*(v171 + 104))(v170, *MEMORY[0x277D72E10], v172);
  sub_22C37BE3C();
  sub_22C4FCF6C();
  (*(v126 + 8))(v127, v128);
  v129 = __dst[0];
  v130 = __dst[1];
  v131 = __dst[2];
  v199 = __dst[4];
  v200 = __dst[3];
  v132 = LOBYTE(__dst[5]);
  sub_22C36FF94(v202);
  sub_22C374168(v115, v115[3]);
  sub_22C4FA634();
  LODWORD(v193) = v132;
  v135 = v186 | v132;
  v194 = v129;
  v195 = v130;
  if ((v186 | v132))
  {
    if (v186)
    {
      LOBYTE(v136) = v187;
    }

    else
    {
      LOBYTE(v136) = v129;
    }

    v137 = 0;
    v138 = 0;
    v139 = v131;
    v140 = 0;
    v141 = 0;
    v136 = v136;
  }

  else
  {
    v202[0] = v187;
    v202[1] = v183;
    LODWORD(v192) = v186 | v132;
    v202[2] = v182;
    v202[3] = v181;
    v202[4] = v180;
    v202[5] = v129;
    v202[6] = v130;
    v202[7] = v131;
    v202[8] = v200;
    v202[9] = v199;
    v142 = v134;
    v143 = v133;
    memcpy(v201, v202, sizeof(v201));
    v139 = v131;
    sub_22C456C30(v187, v183, v182, v181, v180, 0);
    sub_22C456C30(v129, v195, v131, v200, v199, 0);
    sub_22C5652C0(v202, __dst, &qword_27D9BD8F8, &qword_22C91A3B0);
    v163 = v166;
    v162[1] = v167;
    v162[0] = v184;
    sub_22C56355C(v201, &v201[5], v188, v143, v142, v198, v197, v196, __dst);
    sub_22C37BE3C();
    sub_22C3770B0(v144, v145, v146);

    v136 = __dst[0];
    v137 = __dst[1];
    v138 = __dst[2];
    v140 = __dst[3];
    v141 = __dst[4];
    memcpy(__dst, v201, 0x50uLL);
    v135 = v192;
    sub_22C3770B0(__dst, &qword_27D9BD8F8, &qword_22C91A3B0);
  }

  v147 = sub_22C3830D8();
  sub_22C456C30(v147, v148, v149, v150, v151, v152);
  type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
  v153 = MEMORY[0x277D84F90];
  v154 = sub_22C909F0C();

  sub_22C456CE4(v194, v195, v139, v200, v199, v193 & 1);
  sub_22C456CE4(v187, v183, v182, v181, v180, v186);
  v155 = sub_22C3830D8();
  sub_22C456CE4(v155, v156, v157, v158, v159, v160);
  v161 = v176;
  *v176 = v136;
  v161[1] = v137;
  v161[2] = v138;
  v161[3] = v140;
  v161[4] = v141;
  *(v161 + 40) = v135 & 1;
  v161[6] = v154;
  v161[7] = v153;
}

uint64_t sub_22C56344C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a3 + *(type metadata accessor for AssistantToolSchemaDefinitionRenderer_v6_0(0) + 24));
  v6 = v5[3];
  v7 = v5[4];
  sub_22C374168(v5, v6);
  v8 = (*(v7 + 32))(a1, v6, v7);
  v10 = v9;
  v11 = v5[3];
  v12 = v5[4];
  sub_22C374168(v5, v11);
  if (v8 == (*(v12 + 32))(a2, v11, v12) && v10 == v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_22C90B4FC();
  }

  return v15 & 1;
}

void sub_22C56355C(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v98 = a8;
  v118 = a7;
  v120 = a5;
  v121 = a6;
  v119 = a4;
  v100 = a3;
  v97 = a9;
  v112 = sub_22C3A5908(&qword_27D9BD8E0, &qword_22C91B410);
  v12 = *(*(v112 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v112);
  v111 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v110 = &v92 - v15;
  v114 = sub_22C3A5908(&qword_27D9BD8E8, &unk_22C919AD0);
  v16 = *(*(v114 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v114);
  v109 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v108 = &v92 - v20;
  MEMORY[0x28223BE20](v19);
  v122 = &v92 - v21;
  v22 = sub_22C9037DC();
  v117 = *(v22 - 8);
  v23 = *(v117 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = *a1;
  v116 = *a2;
  v26 = type metadata accessor for AssistantToolSchemaDefinitionRenderer_v6_0(0);
  v27 = (a3 + *(v26 + 24));
  v107 = v27[3];
  v106 = v27[4];
  v115 = sub_22C374168(v27, v107);
  v28 = sub_22C908D8C();
  v29 = sub_22C55D4A0(v28);
  v30 = sub_22C55DBD4(v29);
  v95 = 0;

  v31 = sub_22C90981C();
  v32 = MEMORY[0x277D84F90];
  v113 = v31;
  v33 = sub_22C909F0C();
  v129 = v32;
  sub_22C56523C(&qword_27D9BB820, MEMORY[0x277D1ED48]);
  sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
  v34 = v118;
  sub_22C3D32C8(&qword_27D9BB830, &qword_27D9BB828, &unk_22C912AE0);
  sub_22C90AE4C();
  v35 = v98;
  LOWORD(v90) = 256;
  sub_22C5777F4(v99, v119, v120, v121, v34, v98, v30, v33, v115, v116, v25, v90, v32, v107, v106, v91, v92, v93, v94, v95, v96, v97, v98, v99, SBYTE1(v99), v100, v101, v102);
  v37 = v36;

  (*(v117 + 8))(v25, v22);
  v96 = v26;
  sub_22C5652C0(v100 + *(v26 + 32), &v129, &qword_27D9BD658, &qword_22C9186E0);
  if (!v130)
  {
    sub_22C3770B0(&v129, &qword_27D9BD658, &qword_22C9186E0);
    goto LABEL_19;
  }

  v38 = sub_22C374168(&v129, v130);
  v107 = *(v35 + 16);
  if (!v107)
  {
    v42 = MEMORY[0x277D84F90];
LABEL_16:
    v79 = *v38;
    v80 = v95;
    v81 = sub_22C49FB90(v99, v100 + *(v96 + 36));
    if (!v80)
    {
      v83 = v81;
      v84 = v82;

      sub_22C532604(v83, v84, v42, v79, &v126);

      v123 = v126;
      v124 = v127;
      v125 = v128;
      sub_22C474C14(v131);

      sub_22C36FF94(&v129);
      v86 = v131[0];
      v87 = v131[1];
      v88 = v131[2];
      v89 = v131[3];
LABEL_20:
      v85 = v97;
      *v97 = v37;
      v85[1] = v86;
      v85[2] = v87;
      v85[3] = v88;
      v85[4] = v89;
      return;
    }

    sub_22C36FF94(&v129);
LABEL_19:
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    goto LABEL_20;
  }

  v93 = v38;
  v94 = v37;
  v39 = *(v113 - 8);
  v105 = (v122 + *(v114 + 48));
  v103 = v34 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
  v106 = *(v34 + 16);
  v102 = v39 + 16;
  v104 = v39;
  v101 = v39 + 32;

  v40 = 0;
  v41 = (v35 + 64);
  v42 = MEMORY[0x277D84F90];
  while (v106 != v40)
  {
    v121 = v42;
    v43 = v112;
    v44 = v110;
    v45 = &v110[*(v112 + 48)];
    v46 = v104;
    v47 = *(v104 + 72);
    v120 = v40;
    v48 = v113;
    (*(v104 + 16))(v110, v103 + v47 * v40, v113);
    v115 = *(v41 - 4);
    v119 = *(v41 - 3);
    v49 = v119;
    v118 = *(v41 - 2);
    v50 = v118;
    v117 = *(v41 - 1);
    v51 = v117;
    v116 = *v41;
    v52 = v116;
    *v45 = v115;
    *(v45 + 1) = v49;
    *(v45 + 2) = v50;
    *(v45 + 3) = v51;
    *(v45 + 4) = v52;
    v53 = v44;
    v54 = v111;
    sub_22C557E2C(v53, v111);
    v55 = v54 + *(v43 + 48);
    v56 = *(v46 + 32);
    v57 = v122;
    v56(v122, v54, v48);
    v58 = *(v55 + 32);
    v59 = *(v55 + 16);
    v60 = v105;
    *v105 = *v55;
    v60[1] = v59;
    *(v60 + 4) = v58;
    v61 = v108;
    sub_22C5652C0(v57, v108, &qword_27D9BD8E8, &unk_22C919AD0);
    v62 = *(v114 + 48);
    v63 = *(v61 + v62);
    v64 = *(v61 + v62 + 8);
    v65 = *(v61 + v62 + 24);
    v66 = *(v61 + v62 + 32);
    v67 = v109;
    v68 = &v109[v62];
    v69 = v61;
    v70 = *(v61 + v62 + 16);
    v71 = v48;
    v72 = v65;
    v56(v109, v69, v71);
    *v68 = v63;
    *(v68 + 1) = v64;
    *(v68 + 2) = v70;
    *(v68 + 3) = v72;
    *(v68 + 4) = v66;

    sub_22C456C94(v119, v118);
    sub_22C456C94(v64, v70);
    sub_22C3770B0(v67, &qword_27D9BD8E8, &unk_22C919AD0);
    sub_22C3770B0(v122, &qword_27D9BD8E8, &unk_22C919AD0);
    if (v70)
    {
      v42 = v121;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = *(v42 + 16);
        sub_22C591018();
        v42 = v77;
      }

      v73 = v120;
      v74 = *(v42 + 16);
      if (v74 >= *(v42 + 24) >> 1)
      {
        sub_22C591018();
        v42 = v78;
      }

      *(v42 + 16) = v74 + 1;
      v75 = (v42 + 32 * v74);
      v75[4] = v64;
      v75[5] = v70;
      v75[6] = v72;
      v75[7] = v66;
    }

    else
    {
      v73 = v120;
      v42 = v121;
    }

    v40 = v73 + 1;
    v41 += 5;
    if (v107 == v40)
    {

      v37 = v94;
      v38 = v93;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_22C563F04(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for PromptToolsHelper.RenderableParameter() - 8);
  v7 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C318(v7);
    v7 = v8;
  }

  v10 = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v11 = *(v7 + 16);
  result = sub_22C563FC4(a1, a2);
  *v3 = v7;
  return result;
}

uint64_t sub_22C563FC4(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v5 = v2[1];
  result = sub_22C90B45C();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for PromptToolsHelper.RenderableParameter();
        v9 = sub_22C90A64C();
        *(v9 + 16) = v8;
      }

      v10 = *(type metadata accessor for PromptToolsHelper.RenderableParameter() - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_22C564324(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_22C564104(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_22C564104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v38 = a4;
  v37 = type metadata accessor for PromptToolsHelper.RenderableParameter();
  v9 = *(*(v37 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v37);
  v36 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v28 - v17;
  v30 = a2;
  if (a3 != a2)
  {
    v19 = *(v16 + 72);
    v20 = *v4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = *v4;
    v29 = v19;
    v23 = v35 + v19 * a3;
LABEL_4:
    v33 = v20;
    v34 = a3;
    v31 = v23;
    v32 = v22;
    v24 = v20;
    while (1)
    {
      sub_22C56517C(v23, v18);
      sub_22C56517C(v24, v14);
      v25 = v38(v18, v14);
      sub_22C5651E0(v14);
      result = sub_22C5651E0(v18);
      if (v5)
      {
        break;
      }

      if (v25)
      {
        if (!v35)
        {
          __break(1u);
          return result;
        }

        v26 = v36;
        sub_22C557D60(v23, v36);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_22C557D60(v26, v24);
        v24 += v21;
        v23 += v21;
        if (!__CFADD__(v22++, 1))
        {
          continue;
        }
      }

      a3 = v34 + 1;
      v20 = v33 + v29;
      v22 = v32 - 1;
      v23 = v31 + v29;
      if (v34 + 1 != v30)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

void sub_22C564324(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v145 = a5;
  v144 = a4;
  v132 = a1;
  v137 = type metadata accessor for PromptToolsHelper.RenderableParameter();
  v142 = *(v137 - 8);
  v10 = *(v142 + 64);
  v11 = MEMORY[0x28223BE20](v137);
  v133 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v136 = &v122 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v16 = MEMORY[0x28223BE20](v15);
  v17 = MEMORY[0x28223BE20](v16);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v122 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = MEMORY[0x28223BE20](&v122 - v21);
  v143 = a3;
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_102:
    v141 = *v132;
    if (v141)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_139;
      }

      goto LABEL_104;
    }

    goto LABEL_148;
  }

  v128 = &v122 - v23;
  v129 = v22;
  v138 = v20;
  v139 = v26;
  v134 = v25;
  v135 = v24;
  v127 = a6;
  v28 = 0;
  v29 = MEMORY[0x277D84F90];
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    if (v28 + 1 < v27)
    {
      v141 = v27;
      v131 = v29;
      v32 = *v143;
      v33 = *(v142 + 72);
      v34 = *v143 + v33 * v31;
      v35 = v128;
      sub_22C56517C(v34, v128);
      v36 = v129;
      sub_22C56517C(v32 + v33 * v30, v129);
      LODWORD(v140) = v144(v35, v36);
      if (v7)
      {
        sub_22C5651E0(v36);
        v121 = v35;
        goto LABEL_115;
      }

      sub_22C5651E0(v36);
      sub_22C5651E0(v35);
      v130 = v30;
      v37 = v30 + 2;
      v38 = v32 + v33 * (v30 + 2);
      v39 = v141;
      while (1)
      {
        v40 = v31;
        v41 = v37;
        if (v31 + 1 >= v39)
        {
          break;
        }

        v42 = v138;
        sub_22C56517C(v38, v138);
        v43 = v139;
        sub_22C56517C(v34, v139);
        v44 = v144(v42, v43);
        sub_22C5651E0(v43);
        sub_22C5651E0(v42);
        v38 += v33;
        v34 += v33;
        v31 = v40 + 1;
        v37 = v41 + 1;
        v39 = v141;
        if ((v140 ^ v44))
        {
          goto LABEL_10;
        }
      }

      v31 = v39;
LABEL_10:
      if (v140)
      {
        if (v31 < v130)
        {
          goto LABEL_142;
        }

        if (v130 > v40)
        {
          v29 = v131;
          v30 = v130;
          goto LABEL_33;
        }

        if (v39 >= v41)
        {
          v45 = v41;
        }

        else
        {
          v45 = v39;
        }

        v46 = v33 * (v45 - 1);
        v47 = v33 * v45;
        v48 = v130 * v33;
        v140 = v31;
        v49 = v130;
        do
        {
          if (v49 != --v31)
          {
            v50 = *v143;
            if (!*v143)
            {
              goto LABEL_146;
            }

            sub_22C557D60(v50 + v48, v133);
            v51 = v48 < v46 || v50 + v48 >= (v50 + v47);
            if (v51)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v48 != v46)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_22C557D60(v133, v50 + v46);
          }

          ++v49;
          v46 -= v33;
          v47 -= v33;
          v48 += v33;
        }

        while (v49 < v31);
        v29 = v131;
        v31 = v140;
      }

      else
      {
        v29 = v131;
      }

      v30 = v130;
    }

LABEL_33:
    v52 = v143[1];
    if (v31 < v52)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_138;
      }

      if (v31 - v30 < v127)
      {
        v53 = v30 + v127;
        if (__OFADD__(v30, v127))
        {
          __break(1u);
        }

        else
        {
          if (v53 >= v52)
          {
            v53 = v143[1];
          }

          if (v53 >= v30)
          {
            if (v31 == v53)
            {
              goto LABEL_41;
            }

            v130 = v30;
            v131 = v29;
            v100 = *(v142 + 72);
            v101 = *v143 + v100 * (v31 - 1);
            v102 = -v100;
            v103 = v30 - v31;
            v141 = *v143;
            v122 = v100;
            v104 = v141 + v31 * v100;
            v123 = v53;
            while (1)
            {
              v140 = v31;
              v124 = v104;
              v125 = v103;
              v126 = v101;
              v105 = v101;
              do
              {
                v106 = v134;
                sub_22C56517C(v104, v134);
                v107 = v135;
                sub_22C56517C(v105, v135);
                v108 = v144(v106, v107);
                if (v7)
                {
                  sub_22C5651E0(v107);
                  v121 = v106;
LABEL_115:
                  sub_22C5651E0(v121);
                  goto LABEL_116;
                }

                v109 = v108;
                sub_22C5651E0(v107);
                sub_22C5651E0(v106);
                if ((v109 & 1) == 0)
                {
                  break;
                }

                if (!v141)
                {
                  goto LABEL_145;
                }

                v110 = v136;
                sub_22C557D60(v104, v136);
                swift_arrayInitWithTakeFrontToBack();
                sub_22C557D60(v110, v105);
                v105 += v102;
                v104 += v102;
                v51 = __CFADD__(v103++, 1);
              }

              while (!v51);
              v31 = v140 + 1;
              v101 = v126 + v122;
              v103 = v125 - 1;
              v104 = v124 + v122;
              if (v140 + 1 == v123)
              {
                v31 = v123;
                v30 = v130;
                v29 = v131;
                goto LABEL_41;
              }
            }
          }
        }

        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }
    }

LABEL_41:
    if (v31 < v30)
    {
      goto LABEL_137;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v140 = v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v111 = *(v29 + 2);
      sub_22C590218();
      v29 = v112;
    }

    v55 = *(v29 + 2);
    v56 = v55 + 1;
    if (v55 >= *(v29 + 3) >> 1)
    {
      sub_22C590218();
      v29 = v113;
    }

    *(v29 + 2) = v56;
    v57 = v29 + 32;
    v58 = &v29[16 * v55 + 32];
    v59 = v140;
    *v58 = v30;
    *(v58 + 1) = v59;
    v141 = *v132;
    if (!v141)
    {
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
      return;
    }

    if (v55)
    {
      break;
    }

LABEL_90:
    v27 = v143[1];
    v28 = v140;
    if (v140 >= v27)
    {
      goto LABEL_102;
    }
  }

  while (1)
  {
    v60 = v56 - 1;
    v61 = &v57[16 * v56 - 16];
    v62 = &v29[16 * v56];
    if (v56 >= 4)
    {
      v67 = &v57[16 * v56];
      v68 = *(v67 - 8);
      v69 = *(v67 - 7);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_125;
      }

      v72 = *(v67 - 6);
      v71 = *(v67 - 5);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_126;
      }

      v74 = *(v62 + 1);
      v75 = v74 - *v62;
      if (__OFSUB__(v74, *v62))
      {
        goto LABEL_128;
      }

      v73 = __OFADD__(v65, v75);
      v76 = v65 + v75;
      if (v73)
      {
        goto LABEL_131;
      }

      if (v76 >= v70)
      {
        v90 = *v61;
        v89 = *(v61 + 1);
        v73 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v73)
        {
          goto LABEL_136;
        }

        if (v65 < v91)
        {
          v60 = v56 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_61;
    }

    if (v56 == 3)
    {
      v63 = *(v29 + 4);
      v64 = *(v29 + 5);
      v73 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      v66 = v73;
LABEL_61:
      if (v66)
      {
        goto LABEL_127;
      }

      v78 = *v62;
      v77 = *(v62 + 1);
      v79 = __OFSUB__(v77, v78);
      v80 = v77 - v78;
      v81 = v79;
      if (v79)
      {
        goto LABEL_130;
      }

      v82 = *(v61 + 1);
      v83 = v82 - *v61;
      if (__OFSUB__(v82, *v61))
      {
        goto LABEL_133;
      }

      if (__OFADD__(v80, v83))
      {
        goto LABEL_135;
      }

      if (v80 + v83 >= v65)
      {
        if (v65 < v83)
        {
          v60 = v56 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_76;
    }

    if (v56 < 2)
    {
      goto LABEL_129;
    }

    v85 = *v62;
    v84 = *(v62 + 1);
    v73 = __OFSUB__(v84, v85);
    v80 = v84 - v85;
    v81 = v73;
LABEL_76:
    if (v81)
    {
      goto LABEL_132;
    }

    v87 = *v61;
    v86 = *(v61 + 1);
    v73 = __OFSUB__(v86, v87);
    v88 = v86 - v87;
    if (v73)
    {
      goto LABEL_134;
    }

    if (v88 < v80)
    {
      goto LABEL_90;
    }

LABEL_83:
    if (v60 - 1 >= v56)
    {
      break;
    }

    if (!*v143)
    {
      goto LABEL_143;
    }

    v92 = &v57[16 * v60 - 16];
    v93 = *v92;
    v94 = v60;
    v95 = &v57[16 * v60];
    v96 = *(v95 + 1);
    sub_22C564C64(*v143 + *(v142 + 72) * *v92, *v143 + *(v142 + 72) * *v95, *v143 + *(v142 + 72) * v96, v141, v144, v145);
    if (v7)
    {
      goto LABEL_116;
    }

    if (v96 < v93)
    {
      goto LABEL_119;
    }

    v7 = v57;
    v97 = v29;
    v29 = *(v29 + 2);
    if (v94 > v29)
    {
      goto LABEL_120;
    }

    *v92 = v93;
    *(v92 + 1) = v96;
    if (v94 >= v29)
    {
      goto LABEL_121;
    }

    v98 = v94;
    v56 = (v29 - 1);
    sub_22C56BFF0(v95 + 16, &v29[-v98 - 1], v95);
    *(v97 + 2) = v29 - 1;
    v99 = v29 > 2;
    v29 = v97;
    v57 = v7;
    v7 = 0;
    if (!v99)
    {
      goto LABEL_90;
    }
  }

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
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  v29 = sub_22C56BFD8(v29);
LABEL_104:
  v114 = v29 + 16;
  v115 = *(v29 + 2);
  while (v115 >= 2)
  {
    if (!*v143)
    {
      goto LABEL_144;
    }

    v116 = v29;
    v117 = &v29[16 * v115];
    v29 = *v117;
    v118 = &v114[2 * v115];
    v119 = *(v118 + 1);
    sub_22C564C64(*v143 + *(v142 + 72) * *v117, *v143 + *(v142 + 72) * *v118, *v143 + *(v142 + 72) * v119, v141, v144, v145);
    if (v7)
    {
      break;
    }

    if (v119 < v29)
    {
      goto LABEL_122;
    }

    if (v115 - 2 >= *v114)
    {
      goto LABEL_123;
    }

    *v117 = v29;
    *(v117 + 1) = v119;
    v120 = *v114 - v115;
    if (*v114 < v115)
    {
      goto LABEL_124;
    }

    v115 = *v114 - 1;
    sub_22C56BFF0(v118 + 16, v120, v118);
    *v114 = v115;
    v29 = v116;
  }

LABEL_116:
}

uint64_t sub_22C564C64(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v7 = v6;
  v71 = a5;
  v72 = a6;
  v70 = a3;
  v69 = type metadata accessor for PromptToolsHelper.RenderableParameter();
  v11 = *(*(v69 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v69);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v61 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v61 - v17;
  result = MEMORY[0x28223BE20](v16);
  v22 = &v61 - v21;
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    return result;
  }

  v25 = a2 - a1;
  v26 = a2 - a1 == 0x8000000000000000 && v24 == -1;
  if (v26)
  {
    goto LABEL_65;
  }

  v27 = v70 - a2;
  if (v70 - a2 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_66;
  }

  v29 = a2;
  v30 = v25 / v24;
  v75 = a1;
  v74 = a4;
  v31 = v27 / v24;
  if (v25 / v24 >= v27 / v24)
  {
    v64 = v15;
    v65 = v20;
    sub_22C3D738C(v29, v27 / v24, a4);
    v41 = a4 + v31 * v24;
    v42 = v24;
    v43 = v29;
    v44 = -v42;
    v45 = v41;
    v46 = a4;
    v47 = v70;
    v63 = a4;
LABEL_38:
    v48 = v43 + v44;
    v70 = v47;
    v61 = v45;
    v66 = v43;
    while (1)
    {
      if (v41 <= v46)
      {
        v75 = v43;
        v73 = v45;
        goto LABEL_63;
      }

      if (v43 <= a1)
      {
        v75 = v43;
        v73 = v61;
        goto LABEL_63;
      }

      v62 = v45;
      v49 = v7;
      v50 = a1;
      v67 = v41;
      v51 = v41 + v44;
      v52 = v64;
      sub_22C56517C(v41 + v44, v64);
      v53 = v65;
      sub_22C56517C(v48, v65);
      v54 = v71(v52, v53);
      v68 = v49;
      if (v49)
      {
        break;
      }

      v55 = v54;
      v47 = v70 + v44;
      v56 = v70;
      sub_22C5651E0(v53);
      sub_22C5651E0(v52);
      if (v55)
      {
        v58 = v56 < v66 || v47 >= v66;
        a1 = v50;
        if (v58)
        {
          v43 = v48;
          swift_arrayInitWithTakeFrontToBack();
          v45 = v62;
          v46 = v63;
          v41 = v67;
          v7 = v68;
        }

        else
        {
          v46 = v63;
          v45 = v62;
          v26 = v56 == v66;
          v43 = v48;
          v41 = v67;
          v7 = v68;
          if (!v26)
          {
            v59 = v48;
            v60 = v62;
            swift_arrayInitWithTakeBackToFront();
            v41 = v67;
            v43 = v59;
            v45 = v60;
          }
        }

        goto LABEL_38;
      }

      v57 = v56 < v67 || v47 >= v67;
      a1 = v50;
      if (v57)
      {
        swift_arrayInitWithTakeFrontToBack();
        v70 = v47;
        v41 = v51;
        v45 = v51;
        v46 = v63;
        v43 = v66;
        v7 = v68;
      }

      else
      {
        v45 = v51;
        v26 = v67 == v56;
        v70 = v47;
        v41 = v51;
        v46 = v63;
        v43 = v66;
        v7 = v68;
        if (!v26)
        {
          swift_arrayInitWithTakeBackToFront();
          v70 = v47;
          v41 = v51;
          v45 = v51;
        }
      }
    }

    sub_22C5651E0(v53);
    sub_22C5651E0(v52);
    v75 = v66;
    v73 = v62;
  }

  else
  {
    sub_22C3D738C(a1, v25 / v24, a4);
    v68 = a4 + v30 * v24;
    v73 = v68;
    v32 = a4;
    v33 = v29;
    while (v32 < v68 && v33 < v70)
    {
      v35 = v33;
      sub_22C56517C(v33, v22);
      v36 = v32;
      sub_22C56517C(v32, v18);
      v37 = v71(v22, v18);
      if (v7)
      {
        sub_22C5651E0(v18);
        sub_22C5651E0(v22);
        break;
      }

      v38 = v37;
      sub_22C5651E0(v18);
      sub_22C5651E0(v22);
      if (v38)
      {
        if (a1 < v35 || a1 >= v35 + v24)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v35)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v33 = v35 + v24;
      }

      else
      {
        v32 += v24;
        if (a1 < v36 || a1 >= v32)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v36)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v74 = v36 + v24;
        v33 = v35;
      }

      a1 += v24;
      v75 = a1;
    }
  }

LABEL_63:
  sub_22C8381B8(&v75, &v74, &v73);
  return 1;
}

uint64_t sub_22C565150@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return sub_22C561860(a1, a2);
}

uint64_t sub_22C56517C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptToolsHelper.RenderableParameter();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C5651E0(uint64_t a1)
{
  v2 = type metadata accessor for PromptToolsHelper.RenderableParameter();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C56523C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C5652C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22C3A5908(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22C5653AC()
{
  result = v0;
  v3 = *(v1 - 456);
  v4 = *(v1 - 352);
  v5 = *(v1 - 72);
  return result;
}

uint64_t sub_22C5653C8()
{
  v2 = *(v0 - 368);
}

uint64_t type metadata accessor for ToolRenderer_v6_0()
{
  result = qword_27D9BDCD0;
  if (!qword_27D9BDCD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C565460(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v4 = v3;
  v50 = a2;
  v51 = a3;
  v6 = sub_22C3A5908(&qword_27D9BB050, &unk_22C90D8F0);
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v43 - v10;
  v11 = 0;
  v12 = MEMORY[0x277D84F98];
  v55 = MEMORY[0x277D84F98];
  v52 = *(a1 + 16);
  v43 = xmmword_22C90F800;
  for (i = a1; ; a1 = i)
  {
    if (v52 == v11)
    {
      goto LABEL_19;
    }

    if (v11 >= *(a1 + 16))
    {
      break;
    }

    v13 = *(v49 + 80);
    v14 = *(v49 + 72);
    v15 = v53;
    sub_22C3A7214();
    v50(&v54, v15);
    if (v4)
    {
      sub_22C36DD28(v53, &qword_27D9BB050, &unk_22C90D8F0);

LABEL_19:

      return v12;
    }

    v16 = v54;
    v24 = sub_22C62858C(v54);
    v25 = v12[2];
    v26 = (v17 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_21;
    }

    v28 = v17;
    if (v12[3] < v27)
    {
      sub_22C88CF84(v27, 1, v18, v19, v20, v21, v22, v23, v43, *(&v43 + 1), v44, v45);
      v12 = v55;
      v29 = sub_22C62858C(v16);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_23;
      }

      v24 = v29;
    }

    if (v28)
    {
      v31 = v12[7];
      sub_22C407C2C();
      v32 = *(v31 + 8 * v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v31 + 8 * v24) = v32;
      v46 = 0;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = *(v32 + 16);
        sub_22C591A04();
        v32 = v40;
        *(v31 + 8 * v24) = v40;
      }

      v34 = *(v32 + 16);
      if (v34 >= *(v32 + 24) >> 1)
      {
        sub_22C591A04();
        v32 = v41;
        *(v31 + 8 * v24) = v41;
      }

      *(v32 + 16) = v34 + 1;
      sub_22C407C2C();
      v4 = v46;
    }

    else
    {
      sub_22C3A5908(&qword_27D9BB048, &qword_22C91B500);
      v35 = swift_allocObject();
      *(v35 + 16) = v43;
      sub_22C407C2C();
      v12[(v24 >> 6) + 8] |= 1 << v24;
      *(v12[6] + v24) = v16;
      *(v12[7] + 8 * v24) = v35;
      v36 = v12[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_22;
      }

      v12[2] = v38;
    }

    ++v11;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  sub_22C3A5908(&qword_27D9BDCE0, &qword_22C91B508);
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C565B60(uint64_t a1)
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

    v9 = *(v42 + 80);
    v10 = *(v42 + 72);
    sub_22C55CEDC();
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
      sub_22C55CF8C();
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
      sub_22C55CF8C();
      a1 = v40;
    }

    else
    {
      sub_22C3A5908(&qword_27D9BAF88, &unk_22C917A10);
      v30 = swift_allocObject();
      *(v30 + 16) = v39;
      sub_22C55CF8C();
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

uint64_t sub_22C565EA8(uint64_t a1)
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

    v15 = *(v52 + 80);
    v54 = *(v52 + 72);
    sub_22C55CEDC();
    sub_22C9036BC();
    v16 = v7;
    v17 = sub_22C908EAC();
    v18 = 1;
    if (sub_22C370B74(v7, 1, v17) != 1)
    {
      v19 = v50;
      sub_22C3A7214();
      v18 = sub_22C4AEF6C();
      v20 = v19;
      v16 = v7;
      (*(*(v17 - 8) + 8))(v20, v17);
    }

    sub_22C36DD28(v16, &qword_27D9BC1E8, &qword_22C9123B0);
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
      sub_22C55CF8C();
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
      sub_22C55CF8C();
      a1 = v49;
    }

    else
    {
      sub_22C3A5908(&qword_27D9BAF88, &unk_22C917A10);
      v39 = swift_allocObject();
      *(v39 + 16) = v48;
      sub_22C55CF8C();
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

uint64_t sub_22C566328(uint64_t a1)
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

      result = sub_22C36DD28(v5, &qword_27D9BD958, &qword_22C919CA0);
    }

    else
    {
      sub_22C55CF8C();
      sub_22C55CF8C();
      v21 = v39;
      if (v39[3] <= v39[2])
      {
        sub_22C88D114();
        v21 = v42;
      }

      v22 = v21[5];
      v23 = v21;
      sub_22C90B62C();
      sub_22C48A9B4(v41, v19);
      result = sub_22C90B66C();
      v24 = v23 + 8;
      v39 = v23;
      v25 = -1 << *(v23 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~v23[(v26 >> 6) + 8]) == 0)
      {
        v29 = 0;
        v30 = (63 - v25) >> 6;
        while (++v27 != v30 || (v29 & 1) == 0)
        {
          v31 = v27 == v30;
          if (v27 == v30)
          {
            v27 = 0;
          }

          v29 |= v31;
          v32 = v24[v27];
          if (v32 != -1)
          {
            v28 = __clz(__rbit64(~v32)) + (v27 << 6);
            goto LABEL_22;
          }
        }

        goto LABEL_25;
      }

      v28 = __clz(__rbit64((-1 << v26) & ~v23[(v26 >> 6) + 8])) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
      *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      v33 = v39;
      *(v39[6] + 8 * v28) = v19;
      v34 = v33[7] + *(v36 + 72) * v28;
      result = sub_22C55CF8C();
      ++v33[2];
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

void sub_22C566700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *__return_ptr, uint64_t, uint64_t), uint64_t a6)
{
  v164 = a5;
  v165 = a6;
  v151 = a4;
  v150 = a3;
  v152 = a2;
  v7 = sub_22C3A5908(&qword_27D9BB050, &unk_22C90D8F0);
  v169 = sub_22C369824(v7);
  v170 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v169);
  sub_22C369ABC();
  v13 = (v11 - v12);
  MEMORY[0x28223BE20](v14);
  v163 = &v149 - v15;
  v16 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  sub_22C369ABC();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v149 - v22;
  v24 = sub_22C908EAC();
  v25 = sub_22C369824(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C369ABC();
  v167 = (v30 - v31);
  MEMORY[0x28223BE20](v32);
  v168 = &v149 - v33;
  v161 = sub_22C9036EC();
  v34 = sub_22C369824(v161);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C369838();
  *&v160 = v39 - v38;
  v40 = *(a1 + 16);
  v41 = MEMORY[0x277D84F90];
  v166 = v24;
  if (v40)
  {
    *&v158 = v23;
    *&v157 = *(v37 + 16);
    v42 = *(v37 + 80);
    sub_22C36BA94();
    v44 = a1 + v43;
    v156 = *(v45 + 56);
    v155 = (v45 - 8);
    v154 = (v27 + 32);
    v153 = v20;
    v159 = v45;
    do
    {
      v162 = v41;
      v46 = v27;
      v47 = v160;
      v48 = v161;
      (v157)(v160, v44, v161);
      sub_22C9036BC();
      v49 = v158;
      sub_22C407C2C();
      (*v155)(v47, v48);
      if (sub_22C370B74(v49, 1, v24) == 1)
      {
        sub_22C36DD28(v49, &qword_27D9BC1E8, &qword_22C9123B0);
        v27 = v46;
        v41 = v162;
      }

      else
      {
        v27 = v46;
        v50 = *v154;
        (*v154)(v167, v49, v24);
        v51 = v162;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = *(v51 + 16);
          sub_22C36D270();
          sub_22C591C4C();
          v51 = v60;
        }

        v53 = *(v51 + 16);
        v52 = *(v51 + 24);
        v54 = v51;
        if (v53 >= v52 >> 1)
        {
          sub_22C369AB0(v52);
          sub_22C591C4C();
          v54 = v61;
        }

        *(v54 + 16) = v53 + 1;
        v41 = v54;
        v55 = *(v27 + 80);
        sub_22C36BA94();
        v58 = v56 + v57 + *(v27 + 72) * v53;
        v24 = v166;
        v50(v58, v167, v166);
      }

      v44 += v156;
      --v40;
    }

    while (v40);
  }

  *&v158 = *(v41 + 16);
  if (v158)
  {
    v63 = *(v27 + 16);
    v62 = v27 + 16;
    v167 = v63;
    v64 = *(v62 + 64);
    sub_22C36BA94();
    *&v157 = v41 + v66;
    v156 = *(v62 + 56);
    v155 = (v62 - 8);
    v67 = MEMORY[0x277D84F90];
    v162 = v41;
    while (1)
    {
      v161 = v65;
      v167(v168, (v157 + v156 * v65), v24);
      v68 = sub_22C908DCC();
      v69 = *(v68 + 16);
      if (v69)
      {
        *&v160 = v67;
        v70 = v62;
        *&v171[0] = MEMORY[0x277D84F90];
        sub_22C3B68F4(0, v69, 0);
        v71 = *&v171[0];
        v72 = sub_22C90981C();
        v73 = *(v72 - 8);
        v74 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v159 = v68;
        v75 = v68 + v74;
        v76 = (v73 + 16);
        v77 = *(v73 + 72);
        do
        {
          v78 = *(v169 + 48);
          v167(v13, v168, v24);
          (*v76)(&v13[v78], v75, v72);
          *&v171[0] = v71;
          v80 = *(v71 + 16);
          v79 = *(v71 + 24);
          if (v80 >= v79 >> 1)
          {
            v84 = sub_22C369AB0(v79);
            sub_22C3B68F4(v84, v80 + 1, 1);
            v71 = *&v171[0];
          }

          *(v71 + 16) = v80 + 1;
          v81 = *(v170 + 80);
          sub_22C36BA94();
          v83 = *(v82 + 72);
          sub_22C407C2C();
          v75 += v77;
          --v69;
          v24 = v166;
        }

        while (v69);

        v62 = v70;
        v67 = v160;
      }

      else
      {

        v71 = MEMORY[0x277D84F90];
      }

      (*v155)(v168, v24);
      v85 = *(v71 + 16);
      v86 = *(v67 + 16);
      if (__OFADD__(v86, v85))
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v86 + v85 > *(v67 + 24) >> 1)
      {
        sub_22C591A04();
        v67 = v87;
      }

      if (*(v71 + 16))
      {
        if ((*(v67 + 24) >> 1) - *(v67 + 16) < v85)
        {
          goto LABEL_75;
        }

        v88 = (*(v170 + 80) + 32) & ~*(v170 + 80);
        v89 = *(v170 + 72);
        swift_arrayInitWithCopy();

        if (v85)
        {
          v90 = *(v67 + 16);
          v91 = __OFADD__(v90, v85);
          v92 = v90 + v85;
          if (v91)
          {
            goto LABEL_77;
          }

          *(v67 + 16) = v92;
        }
      }

      else
      {

        if (v85)
        {
          goto LABEL_74;
        }
      }

      v65 = (v161 + 1);
      if (v161 + 1 == v158)
      {

        goto LABEL_33;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
  }

  else
  {

    v67 = MEMORY[0x277D84F90];
LABEL_33:
    MEMORY[0x28223BE20](v93);
    v94 = v151;
    *(&v149 - 2) = v150;
    *(&v149 - 1) = v94;
    v95 = sub_22C565460(v67, sub_22C569C24, (&v149 - 4));
    v159 = 0;
    v96 = *(v152 + 16);
    v97 = MEMORY[0x277D84F90];
    if (v96)
    {
      v98 = (v152 + 32);
      v99 = MEMORY[0x277D84F90];
      do
      {
        if (*(v95 + 16))
        {
          v100 = sub_22C62858C(*v98);
          if (v101)
          {
            v102 = *(*(v95 + 56) + 8 * v100);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v105 = *(v99 + 16);
              sub_22C36D270();
              sub_22C591B98();
              v99 = v106;
            }

            v104 = *(v99 + 16);
            v103 = *(v99 + 24);
            if (v104 >= v103 >> 1)
            {
              sub_22C369AB0(v103);
              sub_22C591B98();
              v99 = v107;
            }

            *(v99 + 16) = v104 + 1;
            *(v99 + 8 * v104 + 32) = v102;
          }
        }

        ++v98;
        --v96;
      }

      while (v96);
    }

    else
    {

      v99 = MEMORY[0x277D84F90];
    }

    v108 = *(v99 + 16);
    if (!v108)
    {
LABEL_69:

      return;
    }

    v175 = v97;
    sub_22C3B68B4(0, v108, 0);
    v109 = 0;
    v110 = v175;
    v166 = v99 + 32;
    v160 = xmmword_22C9114A0;
    v161 = v108;
    v162 = v99;
    while (v109 < *(v99 + 16))
    {
      v168 = v110;
      v111 = *(v166 + 8 * v109);
      v112 = *(v111 + 16);
      if (v112)
      {
        v167 = v109;
        v174 = v97;

        sub_22C3B68D4(0, v112, 0);
        v113 = 0;
        v114 = v174;
        v115 = *(v170 + 80);
        sub_22C36BA94();
        while (v113 < *(v111 + 16))
        {
          v116 = *(v170 + 72);
          v117 = v163;
          sub_22C3A7214();
          v164(v171, v117, v117 + *(v169 + 48));
          sub_22C36DD28(v117, &qword_27D9BB050, &unk_22C90D8F0);
          v118 = v171[0];
          v119 = v171[1];
          v120 = v172;
          v121 = v173;
          v174 = v114;
          v123 = *(v114 + 16);
          v122 = *(v114 + 24);
          if (v123 >= v122 >> 1)
          {
            v125 = sub_22C369AB0(v122);
            v158 = v126;
            v157 = v127;
            sub_22C3B68D4(v125, v123 + 1, 1);
            v119 = v157;
            v118 = v158;
            v114 = v174;
          }

          ++v113;
          *(v114 + 16) = v123 + 1;
          v124 = v114 + 48 * v123;
          *(v124 + 32) = v118;
          *(v124 + 48) = v119;
          *(v124 + 64) = v120;
          *(v124 + 72) = v121;
          if (v112 == v113)
          {
            v97 = MEMORY[0x277D84F90];
            v109 = v167;
            goto LABEL_56;
          }
        }

LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v128 = *(v166 + 8 * v109);

      v114 = v97;
LABEL_56:
      v129 = 0;
      ++v109;
      v130 = *(v114 + 16);
      v131 = v97;
LABEL_57:
      v132 = v114 - 16 + 48 * v129;
      while (v130 != v129)
      {
        if (v129 >= *(v114 + 16))
        {
          __break(1u);
          goto LABEL_72;
        }

        ++v129;
        v133 = (v132 + 48);
        v134 = *(v132 + 88);
        v132 += 48;
        if ((v134 & 1) == 0)
        {
          v135 = *v133;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v138 = *(v131 + 16);
            sub_22C36D270();
            sub_22C591324();
            v131 = v139;
          }

          v137 = *(v131 + 16);
          v136 = *(v131 + 24);
          if (v137 >= v136 >> 1)
          {
            sub_22C369AB0(v136);
            sub_22C591324();
            v131 = v140;
          }

          *(v131 + 16) = v137 + 1;
          *(v131 + 8 * v137 + 32) = v135;
          v97 = MEMORY[0x277D84F90];
          goto LABEL_57;
        }
      }

      v141 = sub_22C3DB9B0(v131);

      v142 = swift_allocObject();
      *(v142 + 16) = v160;
      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      v143 = swift_allocObject();
      *(v143 + 16) = v141;
      *(v142 + 32) = v143;
      v144 = swift_allocObject();
      *(v144 + 16) = 0;
      *(v144 + 24) = 0;
      v145 = swift_allocObject();
      *(v145 + 16) = v142 | 0x8000000000000000;
      *(v144 + 32) = v145;
      v110 = v168;
      v175 = v168;
      v147 = *(v168 + 2);
      v146 = *(v168 + 3);
      if (v147 >= v146 >> 1)
      {
        v148 = sub_22C369AB0(v146);
        sub_22C3B68B4(v148, v147 + 1, 1);
        v110 = v175;
      }

      *(v110 + 2) = v147 + 1;
      *&v110[8 * v147 + 32] = v144 | 0x8000000000000000;
      v99 = v162;
      if (v109 == v161)
      {
        goto LABEL_69;
      }
    }
  }

  __break(1u);
LABEL_77:
  __break(1u);
}

uint64_t sub_22C567334(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for ToolRenderer_v6_0() + 24));
  v4 = v3[3];
  v5 = v3[4];
  sub_22C374168(v3, v4);
  return (*(v5 + 8))(a1, v4, v5);
}

uint64_t sub_22C56739C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = sub_22C908EAC();
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v33 = v12 - v11;
  v13 = type metadata accessor for FetchedTools(0);
  v14 = sub_22C36985C(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v19 = (v18 - v17);
  sub_22C55CEDC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v33, v19, v5);
    sub_22C3A5908(&qword_27D9BAF88, &unk_22C917A10);
    v20 = (type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0) - 8);
    v21 = *(*v20 + 72);
    v22 = (*(*v20 + 80) + 32) & ~*(*v20 + 80);
    v32 = a1;
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_22C90F800;
    v24 = v23 + v22;
    (*(v8 + 16))(v23 + v22, v33, v5);
    v25 = *MEMORY[0x277D1ECE0];
    v26 = sub_22C9036EC();
    sub_22C36985C(v26);
    (*(v27 + 104))(v24, v25);
    sub_22C9037DC();
    v31 = a2;
    v28 = v20[8];
    sub_22C3E00C4();
    sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
    sub_22C3D32C8(&qword_27D9BB830, &qword_27D9BB828, &unk_22C912AE0);
    sub_22C90AE4C();
    *(v24 + v20[7]) = 0;
    sub_22C5676F8(v32, v31, a3);
    (*(v8 + 8))(v33, v5);
    swift_setDeallocating();
    return sub_22C590028();
  }

  else
  {
    v30 = *v19;
    sub_22C5676F8(a1, a2, a3);
  }
}

uint64_t sub_22C5676F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v219 = a2;
  v221 = a1;
  v214 = a3;
  v4 = sub_22C9036EC();
  v233 = *(v4 - 8);
  v5 = *(v233 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v215 = &v212 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v226 = &v212 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v212 - v10;
  v12 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v230 = (&v212 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v229 = (&v212 - v16);
  v17 = sub_22C9099FC();
  v18 = *(v17 - 8);
  v231 = v17;
  v232 = v18;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v225 = &v212 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v228 = &v212 - v22;
  v235 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v217 = *(v235 - 8);
  v23 = *(v217 + 64);
  v24 = MEMORY[0x28223BE20](v235);
  v227 = &v212 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v236 = &v212 - v26;
  v243 = type metadata accessor for RenderableTool();
  v237 = *(v243 - 8);
  v27 = *(v237 + 64);
  v28 = MEMORY[0x28223BE20](v243);
  v234 = &v212 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v212 - v30;

  v33 = sub_22C565B60(v32);
  if (*(v33 + 16) && (v34 = sub_22C633A1C(2), (v35 & 1) != 0))
  {
    v36 = *(*(v33 + 56) + 8 * v34);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
  }

  v38 = sub_22C565EA8(v37);
  v39 = v3;
  v40 = MEMORY[0x277D84F90];
  if (*(v33 + 16))
  {
    v41 = sub_22C633A1C(1);
    v42 = v221;
    if (v43)
    {
      v44 = *(*(v33 + 56) + 8 * v41);
    }

    else
    {
      v44 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
    v42 = v221;
  }

  v218 = v33;
  *&v238 = v4;
  v45 = *(v44 + 16);
  if (v45)
  {
    v222 = v39;
    v223 = v38;
    v224 = v11;
    v240 = v40;
    sub_22C3B696C(0, v45, 0);
    v46 = v240;
    v47 = (*(v217 + 80) + 32) & ~*(v217 + 80);
    v216 = v44;
    v48 = v44 + v47;
    v49 = *(v217 + 72);
    v50 = (v233 + 32);
    do
    {
      v51 = v236;
      sub_22C55CEDC();
      v52 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
      (*v50)(v31, v51, v238);
      v53 = *(v235 + 24);
      v54 = sub_22C9037DC();
      (*(*(v54 - 8) + 32))(&v31[v52], &v51[v53], v54);
      swift_storeEnumTagMultiPayload();
      v240 = v46;
      v56 = *(v46 + 16);
      v55 = *(v46 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_22C3B696C(v55 > 1, v56 + 1, 1);
        v46 = v240;
      }

      *(v46 + 16) = v56 + 1;
      v57 = v46 + ((*(v237 + 80) + 32) & ~*(v237 + 80));
      v58 = *(v237 + 72);
      sub_22C55CF8C();
      v48 += v49;
      --v45;
    }

    while (v45);

    v42 = v221;
    v11 = v224;
    v38 = v223;
    v39 = v222;
  }

  else
  {
  }

  MEMORY[0x28223BE20](v59);
  v60 = v220;
  *(&v212 - 4) = v220;
  *(&v212 - 3) = v42;
  v61 = v219;
  *(&v212 - 2) = v219;
  sub_22C792A18();
  if (v39)
  {
    goto LABEL_19;
  }

  v216 = v62;

  MEMORY[0x28223BE20](v63);
  *(&v212 - 4) = v38;
  *(&v212 - 3) = v60;
  *(&v212 - 2) = v42;
  *(&v212 - 1) = v61;
  sub_22C792A44();
  v212 = v64;

  v66 = v218;
  v67 = MEMORY[0x277D84F90];
  if (*(v218 + 16))
  {
    v68 = sub_22C633A1C(0);
    v69 = v231;
    if (v70)
    {
      v71 = *(*(v66 + 56) + 8 * v68);
    }

    else
    {
      v72 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v72 = MEMORY[0x277D84F90];
    v69 = v231;
  }

  v213 = 0;
  v73 = *(v72 + 16);
  if (v73)
  {
    v224 = v11;
    v74 = (*(v217 + 80) + 32) & ~*(v217 + 80);
    v223 = v72;
    v75 = v72 + v74;
    v235 = *(v217 + 72);
    v76 = (v232 + 32);
    v77 = MEMORY[0x277D84F90];
    do
    {
      v78 = v227;
      sub_22C55CEDC();
      sub_22C57709C();
      v79 = v229;
      sub_22C407C2C();
      sub_22C55CF34(v78, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
      if (sub_22C370B74(v79, 1, v69) == 1)
      {
        sub_22C36DD28(v79, &qword_27D9BDC50, &unk_22C91B470);
      }

      else
      {
        v80 = *v76;
        (*v76)(v228, v79, v69);
        v81 = v77;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = *(v77 + 16);
          sub_22C591EA4();
          v81 = v85;
        }

        v82 = *(v81 + 16);
        if (v82 >= *(v81 + 24) >> 1)
        {
          sub_22C591EA4();
          v81 = v86;
        }

        *(v81 + 16) = v82 + 1;
        v77 = v81;
        v83 = v81 + ((*(v232 + 80) + 32) & ~*(v232 + 80)) + *(v232 + 72) * v82;
        v69 = v231;
        v80(v83, v228, v231);
      }

      v75 += v235;
      --v73;
    }

    while (v73);

    v11 = v224;
    v67 = MEMORY[0x277D84F90];
  }

  else
  {

    v77 = MEMORY[0x277D84F90];
  }

  v87 = *(v77 + 16);
  v88 = v238;
  if (v87)
  {
    v240 = v67;
    sub_22C3B657C(0, v87, 0);
    v89 = 0;
    v90 = v240;
    v230 = (v77 + ((*(v232 + 80) + 32) & ~*(v232 + 80)));
    v229 = (v232 + 16);
    LODWORD(v227) = *MEMORY[0x277D1ECE8];
    v224 = (v233 + 104);
    v223 = v232 + 8;
    v222 = v233 + 32;
    v235 = v77;
    v228 = v87;
    while (v89 < *(v77 + 16))
    {
      v91 = v231;
      v92 = v232;
      v93 = *(v232 + 16);
      v94 = v11;
      v95 = v225;
      v93(v225, v230 + *(v232 + 72) * v89, v231);
      v93(v94, v95, v91);
      (*v224)(v94, v227, v88);
      (*(v92 + 8))(v95, v91);
      v240 = v90;
      v97 = *(v90 + 16);
      v96 = *(v90 + 24);
      v11 = v94;
      v67 = v97 + 1;
      if (v97 >= v96 >> 1)
      {
        sub_22C3B657C(v96 > 1, v97 + 1, 1);
        v90 = v240;
      }

      ++v89;
      *(v90 + 16) = v67;
      (*(v233 + 32))(v90 + ((*(v233 + 80) + 32) & ~*(v233 + 80)) + *(v233 + 72) * v97, v94, v88);
      v87 = v228;
      v77 = v235;
      if (v228 == v89)
      {

        v67 = MEMORY[0x277D84F90];
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v90 = MEMORY[0x277D84F90];
LABEL_45:
  v98 = *(v90 + 16);
  if (v98)
  {
    v240 = v67;
    sub_22C3B696C(0, v98, 0);
    v232 = sub_22C9037DC();
    v99 = v240;
    v230 = *(v233 + 16);
    v100 = (*(v233 + 80) + 32) & ~*(v233 + 80);
    v227 = v90;
    v101 = v90 + v100;
    v231 = v233 + 16;
    v228 = *(v233 + 72);
    v229 = (v233 + 8);
    v102 = v234;
    do
    {
      v235 = v98;
      v11 = v226;
      v103 = v238;
      v104 = v230;
      v230(v226, v101, v238);
      v105 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
      v104(v102, v11, v103);
      v239[0] = MEMORY[0x277D84F90];
      sub_22C3E00C4();
      sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
      sub_22C3D32C8(&qword_27D9BB830, &qword_27D9BB828, &unk_22C912AE0);
      sub_22C90AE4C();
      v102 = v234;
      (*v229)(v11, v103);
      swift_storeEnumTagMultiPayload();
      v240 = v99;
      v107 = *(v99 + 16);
      v106 = *(v99 + 24);
      if (v107 >= v106 >> 1)
      {
        sub_22C3B696C(v106 > 1, v107 + 1, 1);
        v102 = v234;
        v99 = v240;
      }

      *(v99 + 16) = v107 + 1;
      v108 = v99 + ((*(v237 + 80) + 32) & ~*(v237 + 80));
      v109 = *(v237 + 72);
      sub_22C55CF8C();
      v101 += v228;
      v98 = v235 - 1;
    }

    while (v235 != 1);
  }

  MEMORY[0x28223BE20](v110);
  v111 = v221;
  *(&v212 - 4) = v220;
  *(&v212 - 3) = v111;
  *(&v212 - 2) = v219;
  v112 = v213;
  sub_22C792A18();
  v88 = v112;
  if (v112)
  {

LABEL_19:
  }

  v114 = v113;

  v240 = v114;
  sub_22C3CD560(v216);
  sub_22C3CD560(v212);
  v115 = sub_22C7F4DE0(v240);
  v87 = v116;
  v67 = 0;
  v89 = *(v116 + 16);
  v90 = MEMORY[0x277D84F90];
  while (v89 != v67)
  {
    if (v67 >= *(v87 + 16))
    {
      goto LABEL_125;
    }

    v117 = *(type metadata accessor for _PromptToolData(0) - 8);
    v118 = *(v87 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v67 + 8);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v119 = *(v90 + 16);
      sub_22C591324();
      v90 = v120;
    }

    v11 = *(v90 + 16);
    if (v11 >= *(v90 + 24) >> 1)
    {
      sub_22C591324();
      v90 = v121;
    }

    *(v90 + 16) = v11 + 1;
    *(v90 + 8 * v11 + 32) = v118;
    ++v67;
  }

  v122 = sub_22C5657FC(v115, v87);
  v123 = sub_22C566328(v122);

  v124 = v218;
  v125 = *(v218 + 16);
  v126 = MEMORY[0x277D84F90];
  v231 = v123;
  v234 = 0;
  if (v125)
  {
    v127 = sub_22C633A1C(1);
    v128 = v215;
    if (v129)
    {
      v130 = *(*(v124 + 56) + 8 * v127);
    }

    else
    {
      v130 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v130 = MEMORY[0x277D84F90];
    v128 = v215;
  }

  v232 = v115;

  v88 = *(v130 + 2);
  v243 = v87;
  if (v88)
  {
    v240 = v126;
    sub_22C3B657C(0, v88, 0);
    v131 = v240;
    v132 = *(v217 + 80);
    v230 = v130;
    v133 = &v130[(v132 + 32) & ~v132];
    v237 = *(v217 + 72);
    v134 = (v233 + 16);
    v235 = v233 + 32;
    v135 = v238;
    do
    {
      v136 = v236;
      sub_22C55CEDC();
      (*v134)(v128, v136, v135);
      sub_22C55CF34(v136, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
      v240 = v131;
      v138 = *(v131 + 16);
      v137 = *(v131 + 24);
      if (v138 >= v137 >> 1)
      {
        sub_22C3B657C(v137 > 1, v138 + 1, 1);
        v131 = v240;
      }

      *(v131 + 16) = v138 + 1;
      (*(v233 + 32))(v131 + ((*(v233 + 80) + 32) & ~*(v233 + 80)) + *(v233 + 72) * v138, v128, v135);
      v133 += v237;
      --v88;
    }

    while (v88);

    v87 = v243;
  }

  else
  {

    v131 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v139);
  v140 = v220;
  v141 = v221;
  *(&v212 - 4) = v220;
  *(&v212 - 3) = v141;
  *(&v212 - 2) = v219;
  sub_22C566700(v131, &unk_283FAF2B8, v140, v141, sub_22C569C18, (&v212 - 6));
  v89 = v142;

  v143 = *(v89 + 16);
  if (v143)
  {
    v240 = MEMORY[0x277D84F90];
    sub_22C3B63D4();
    v144 = 32;
    v145 = v240;
    v238 = xmmword_22C91B4C0;
    do
    {
      v146 = *(v89 + v144);
      v147 = swift_allocObject();
      *(v147 + 16) = v238;
      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      v148 = swift_allocObject();
      *(v148 + 16) = v146;
      *(v147 + 32) = v148;
      v149 = v147 | 0x8000000000000000;
      v88 = swift_allocObject();
      v150 = swift_allocObject();
      *(v150 + 16) = v149;
      *(v88 + 16) = v150;
      v240 = v145;
      v152 = *(v145 + 16);
      v151 = *(v145 + 24);

      if (v152 >= v151 >> 1)
      {
        sub_22C3B63D4();
        v145 = v240;
      }

      *(v145 + 16) = v152 + 1;
      *(v145 + 8 * v152 + 32) = v88 | 0x6000000000000000;
      v144 += 8;
      --v143;
    }

    while (v143);

    v87 = v243;
  }

  else
  {

    v145 = MEMORY[0x277D84F90];
  }

  v11 = MEMORY[0x277D84F90];
  *&v238 = *(v87 + 16);
  if (!v238)
  {
LABEL_93:
    v88 = sub_22C569A50(v145, v11);

    v11 = 0xA200000000000000;
    v162 = sub_22C47D738(37314, 0xA200000000000000, v90);

    v163 = swift_allocObject();
    *(v163 + 16) = 37314;
    *(v163 + 24) = 0xA200000000000000;
    v164 = sub_22C47D60C(v163, v162);

    v165 = swift_allocObject();
    *(v165 + 16) = 37314;
    *(v165 + 24) = 0xA200000000000000;
    v166 = sub_22C47D60C(v164, v165);

    v167 = sub_22C47D60C(v166, v88);

    v168 = MEMORY[0x277D84F90];
    v240 = MEMORY[0x277D84F90];
    v235 = v167;
    v169 = v234;
    sub_22C496A94();
    if (!v169)
    {
      v171 = v170;
      v90 = 0;

      v172 = swift_allocObject();
      v89 = v172;
      if ((v171 & 1) == 0)
      {
        *(v172 + 16) = 0x6F68747970606060;
        *(v172 + 24) = 0xEA00000000000A6ELL;
        sub_22C591324();
        v175 = v174;
        v67 = *(v174 + 16);
        v176 = *(v174 + 24) >> 1;
        v11 = v67 + 1;
        if (v176 > v67)
        {
          goto LABEL_97;
        }

        goto LABEL_133;
      }

      v240 = 0;
      v241 = 0xE000000000000000;
      *(v172 + 16) = sub_22C90A49C();
      *(v89 + 24) = v173;
      goto LABEL_102;
    }

    __break(1u);
    return result;
  }

  v153 = 0;
  v237 = *(type metadata accessor for _PromptToolData(0) - 8);
  v67 = v87 + ((*(v237 + 80) + 32) & ~*(v237 + 80)) + 16;
  while (v153 < *(v87 + 16))
  {
    v154 = *(v237 + 72) * v153;
    v87 = *(v67 + v154);
    v155 = *(v87 + 16);
    v88 = *(v11 + 16);
    v89 = v88 + v155;
    if (__OFADD__(v88, v155))
    {
      goto LABEL_128;
    }

    v156 = *(v67 + v154);

    if (!swift_isUniquelyReferenced_nonNull_native() || v89 > *(v11 + 24) >> 1)
    {
      sub_22C591324();
      v11 = v157;
    }

    if (*(v87 + 16))
    {
      v158 = *(v11 + 16);
      if ((*(v11 + 24) >> 1) - v158 < v155)
      {
        goto LABEL_130;
      }

      v89 = v11 + 8 * v158;
      sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
      swift_arrayInitWithCopy();

      v87 = v243;
      if (v155)
      {
        v159 = *(v11 + 16);
        v160 = __OFADD__(v159, v155);
        v161 = v159 + v155;
        if (v160)
        {
          goto LABEL_132;
        }

        *(v11 + 16) = v161;
      }
    }

    else
    {

      v87 = v243;
      if (v155)
      {
        goto LABEL_129;
      }
    }

    if (v238 == ++v153)
    {
      goto LABEL_93;
    }
  }

LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    sub_22C591324();
    v175 = v209;
    v176 = *(v209 + 24) >> 1;
LABEL_97:
    *(v175 + 16) = v11;
    *(v175 + 8 * v67 + 32) = v89;
    v177 = v67 + 2;
    if (v176 < (v67 + 2))
    {
      sub_22C591324();
      v175 = v210;
    }

    *(v175 + 16) = v177;
    *(v175 + 8 * v11 + 32) = v235;
    v178 = swift_allocObject();
    *(v178 + 16) = 1616928778;
    *(v178 + 24) = 0xE400000000000000;
    v179 = *(v175 + 24);
    v11 = v67 + 3;

    if ((v67 + 3) > (v179 >> 1))
    {
      sub_22C591324();
      v175 = v211;
    }

    v168 = MEMORY[0x277D84F90];
    *(v175 + 16) = v11;
    *(v175 + 8 * v177 + 32) = v178;
    v180 = sub_22C3DB9B0(v175);

    v181 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    v182 = swift_allocObject();
    *(v182 + 16) = v180;
    *(v181 + 16) = v182;
    v89 = v181 | 0x6000000000000000;
LABEL_102:
    v240 = v168;
    v183 = v168;
    v67 = *(v87 + 16);
    v213 = v90;
    if (v67)
    {
      v11 = v89;
      v90 = 0;
      v89 = *(type metadata accessor for _PromptToolData(0) - 8);
      v184 = v87 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + 24;
      while (v90 < *(v87 + 16))
      {
        v185 = *(v89 + 72) * v90++;
        v186 = *(v184 + v185);

        sub_22C3CD230();
        if (v67 == v90)
        {
          v187 = v240;
          v89 = v11;
          goto LABEL_108;
        }
      }

      goto LABEL_126;
    }

    v187 = v183;
LABEL_108:
    v188 = *(type metadata accessor for ToolRenderer_v6_0() + 28);
    sub_22C3A7214();
    v233 = v88;
    v234 = v89;
    if (!v242)
    {
      sub_22C36DD28(&v240, &qword_27D9BD9F8, &unk_22C91A240);
      v199 = 0;
      v200 = 0;
      v201 = 0;
      v202 = 0;
      goto LABEL_123;
    }

    v230 = v187;
    sub_22C374168(&v240, v242);
    *&v238 = *(v87 + 16);
    if (!v238)
    {
      break;
    }

    v189 = type metadata accessor for _PromptToolData(0);
    v190 = 0;
    v236 = *(v189 - 8);
    v237 = v189;
    v67 = v87 + ((v236[80] + 32) & ~v236[80]);
    v88 = MEMORY[0x277D84F90];
    while (v190 < *(v87 + 16))
    {
      v191 = (v67 + *(v236 + 9) * v190 + *(v237 + 36));
      v192 = v191[1];
      if (v192)
      {
        v193 = *v191;
        v90 = v191[2];
        v194 = v191[3];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v196 = *(v88 + 16);
          sub_22C591018();
          v88 = v197;
        }

        v11 = *(v88 + 16);
        v89 = v11 + 1;
        if (v11 >= *(v88 + 24) >> 1)
        {
          sub_22C591018();
          v88 = v198;
        }

        *(v88 + 16) = v89;
        v195 = (v88 + 32 * v11);
        v195[4] = v193;
        v195[5] = v192;
        v195[6] = v90;
        v195[7] = v194;
        v87 = v243;
      }

      if (v238 == ++v190)
      {
        goto LABEL_122;
      }
    }
  }

  v88 = MEMORY[0x277D84F90];
LABEL_122:
  sub_22C531C50(v88, v239);

  v199 = v239[0];
  v200 = v239[1];
  v201 = v239[2];
  v202 = v239[3];
  sub_22C36FF94(&v240);
  v187 = v230;
LABEL_123:
  sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
  sub_22C3D32C8(&qword_27D9BB778, &qword_27D9BAF08, &qword_22C90D7B0);
  v203 = sub_22C909F0C();
  v204 = swift_allocObject();
  v240 = 0;
  v241 = 0xE000000000000000;
  sub_22C456C94(v199, v200);
  v205 = sub_22C90A49C();
  v207 = v206;

  sub_22C456D48(v199, v200);

  *(v204 + 16) = v205;
  *(v204 + 24) = v207;
  v208 = v214;
  *v214 = v234;
  v208[1] = v203;
  v208[2] = v231;
  v208[3] = v187;
  v208[4] = v199;
  v208[5] = v200;
  v208[6] = v201;
  v208[7] = v202;
  v208[8] = v204;
  return result;
}

uint64_t sub_22C5691EC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void (*a3)(void *__return_ptr, void, void, void, void)@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v59 = a3;
  v60 = a4;
  v58 = a2;
  v8 = sub_22C9063DC();
  v65 = *(v8 - 8);
  v9 = *(v65 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v54 - v17;
  v19 = sub_22C908EAC();
  v63 = *(v19 - 8);
  v20 = *(v63 + 64);
  MEMORY[0x28223BE20](v19);
  v67 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v66 = v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for RenderableTool();
  v26 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v57 = (v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_22C6058B0(0, a1);
  if (v28)
  {
    v55 = a5;
    v29 = *(v28 + 16);
    if (v29)
    {
      v54[1] = v28;
      v54[2] = v5;
      v30 = v28 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
      v31 = *(v23 + 72);
      v64 = (v63 + 32);
      v65 = MEMORY[0x277D84F90];
      v32 = v19;
      v61 = v31;
      v62 = v19;
      do
      {
        v33 = v66;
        sub_22C55CEDC();
        sub_22C9036BC();
        sub_22C407C2C();
        sub_22C55CF34(v33, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
        if (sub_22C370B74(v18, 1, v32) == 1)
        {
          sub_22C36DD28(v18, &qword_27D9BC1E8, &qword_22C9123B0);
        }

        else
        {
          v34 = v16;
          v35 = *v64;
          (*v64)(v67, v18, v32);
          v36 = v65;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = *(v36 + 16);
            sub_22C591C4C();
            v36 = v40;
          }

          v37 = *(v36 + 16);
          if (v37 >= *(v36 + 24) >> 1)
          {
            sub_22C591C4C();
            v36 = v41;
          }

          *(v36 + 16) = v37 + 1;
          v38 = (*(v63 + 80) + 32) & ~*(v63 + 80);
          v65 = v36;
          v32 = v62;
          (v35)(v36 + v38 + *(v63 + 72) * v37, v67);
          v16 = v34;
          v31 = v61;
        }

        v30 += v31;
        --v29;
      }

      while (v29);

      v42 = v65;
    }

    else
    {

      v42 = MEMORY[0x277D84F90];
    }

    v52 = v57;
    *v57 = v42;
    swift_storeEnumTagMultiPayload();
    v53 = type metadata accessor for ToolRenderer_v6_0();
    sub_22C4B8858(v52, (v58 + *(v53 + 20)), v59, v60, v55);
    return sub_22C55CF34(v52, type metadata accessor for RenderableTool);
  }

  else
  {
    v43 = a5;
    v44 = v65;
    v45 = v8;
    sub_22C903F7C();
    v46 = sub_22C9063CC();
    v47 = sub_22C90AACC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v68 = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_22C36F9F4(0x695F686372616573, 0xED00007070615F6ELL, &v68);
      sub_22C36FF94(v49);
      MEMORY[0x2318B9880](v49, -1, -1);
      MEMORY[0x2318B9880](v48, -1, -1);
    }

    (*(v44 + 8))(v11, v45);
    v50 = type metadata accessor for _PromptToolData(0);
    return sub_22C36C640(v43, 1, 1, v50);
  }
}

uint64_t sub_22C569850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a6;
  v11 = sub_22C90941C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v28[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2318B6CE0](v14);
  v17 = sub_22C4F6864(a3, a4);
  (*(v12 + 8))(v16, v11);
  v18 = 0;
  v19 = 0;
  if (v17 == 2)
  {
    v20 = (a3 + *(type metadata accessor for ToolRenderer_v6_0() + 20));
    v21 = v20[18];
    v22 = v20[19];
    sub_22C374168(v20 + 15, v21);
    (*(v22 + 8))(v28, a1, 0, a5, v21, v22);
    v19 = v28[1];
    if (v29)
    {

      v18 = 0;
      v19 = 0;
    }

    else
    {
      v18 = v28[0];
    }
  }

  v23 = (a3 + *(type metadata accessor for ToolRenderer_v6_0() + 20));
  v24 = v23[13];
  v25 = v23[14];
  sub_22C374168(v23 + 10, v24);
  (*(v25 + 16))(a2, v18, v19, a4, a5, v24, v25);
}

uint64_t sub_22C569A50(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);

  if (v4)
  {
    v5 = sub_22C3DB9B0(a2);
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v6 + 32) = v7;
    v8 = sub_22C529D00(10, 0xE100000000000000, v6 | 0x8000000000000000);

    v9 = swift_allocObject();
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v9 + 16) = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = *(a1 + 16);
      sub_22C591324();
      a1 = v15;
    }

    v11 = *(a1 + 16);
    if (v11 >= *(a1 + 24) >> 1)
    {
      sub_22C591324();
      a1 = v16;
    }

    *(a1 + 16) = v11 + 1;
    *(a1 + 8 * v11 + 32) = v9 | 0x6000000000000000;
  }

  v12 = sub_22C47D738(10, 0xE100000000000000, a1);

  return v12;
}

unint64_t sub_22C569C58(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = 3;
  *(v5 + 24) = 1;
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 32) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = 4;
  *(v7 + 24) = 1;
  v8 = swift_allocObject();
  *(v8 + 16) = v5 | 0xA000000000000000;
  *(v7 + 32) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = 2;
  *(v9 + 24) = 1;
  v10 = swift_allocObject();
  *(v10 + 16) = v7 | 0xA000000000000000;
  *(v9 + 32) = v10;

  return v9 | 0xA000000000000000;
}

double sub_22C569D90@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v173 = a4;
  v174 = a5;
  v172 = a3;
  v9 = sub_22C90919C();
  v10 = sub_22C369824(v9);
  v155 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C3698A8();
  sub_22C3698F8(v14);
  v15 = sub_22C9063DC();
  v16 = sub_22C369824(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  v22 = v148 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_22C902D0C();
  v23 = sub_22C369824(v171);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22C3698A8();
  sub_22C3698F8(v28);
  v169 = sub_22C90963C();
  v29 = sub_22C369824(v169);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22C3698A8();
  sub_22C3698F8(v34);
  v167 = type metadata accessor for DirectionalTypedValue();
  v35 = sub_22C36985C(v167);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C3698A8();
  v166 = v38;
  v180[0] = sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80);
  v39 = sub_22C36985C(v180[0]);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v179 = v148 - v42;
  v43 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v45);
  v48 = v148 - v47;
  if ((a2 & 1) == 0)
  {
    sub_22C90915C();
    v105 = sub_22C90993C();
    if (sub_22C370B74(v48, 1, v105) == 1)
    {
      sub_22C36DD28(v48, &qword_27D9BC390, &qword_22C912AC0);
      v106 = 0;
      v107 = 0xE000000000000000;
    }

    else
    {
      v106 = sub_22C9098BC();
      v107 = v118;
      (*(*(v105 - 8) + 8))(v48, v105);
    }

    v58 = a6;
    v57 = sub_22C569C58(v106, v107);

    sub_22C36A83C();
    v25 = swift_allocObject();
    *(v25 + 16) = 0x3D72706572;
    *(v25 + 24) = 0xE500000000000000;
    sub_22C591324();
    v120 = v119;
    v51 = *(v119 + 16);
    v59 = *(v119 + 24);
    v121 = v59 >> 1;
    v15 = v51 + 1;
    if (v59 >> 1 <= v51)
    {
LABEL_48:
      sub_22C369AB0(v59);
      sub_22C591324();
      v120 = v145;
      v59 = *(v145 + 24);
      v121 = v59 >> 1;
    }

    *(v120 + 16) = v15;
    *(v120 + 8 * v51 + 32) = v25;
    v122 = v51 + 2;
    if (v121 < (v51 + 2))
    {
      sub_22C369AB0(v59);
      sub_22C591324();
      v120 = v146;
    }

    *(v120 + 16) = v122;
    *(v120 + 8 * v15 + 32) = v57;
    sub_22C36A83C();
    v123 = swift_allocObject();
    *(v123 + 16) = 0;
    *(v123 + 24) = 0xE000000000000000;
    v124 = *(v120 + 24);
    v125 = v51 + 3;

    if (v125 > (v124 >> 1))
    {
      sub_22C591324();
      v120 = v147;
    }

    *(v120 + 16) = v125;
    *(v120 + 8 * v122 + 32) = v123;
    v126 = sub_22C3DB9B0(v120);

    v127 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    v128 = swift_allocObject();
    *(v128 + 16) = v126;
    *(v127 + 16) = v128;
    v129 = v127 | 0x6000000000000000;
    goto LABEL_44;
  }

  v148[0] = v46;
  v149 = v9;
  v150 = v22;
  v148[1] = v18;
  v152 = v15;
  v153 = a6;
  v151 = a1;
  v49 = sub_22C90914C();
  v50 = v49;
  v51 = v49 + 64;
  v52 = 1 << *(v49 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & *(v49 + 64);
  v55 = (v52 + 63) >> 6;
  v165 = *MEMORY[0x277D72E10];
  v164 = v31 + 104;
  v163 = v31 + 8;
  v162 = v25 + 16;
  v161 = *MEMORY[0x277D1D7E8];
  v160 = (v25 + 104);
  v159 = *MEMORY[0x277D1D7D0];
  v158 = v25 + 8;

  v57 = 0;
  v154 = MEMORY[0x277D84F90];
  v58 = v179;
  v175 = v55;
  v176 = v51;
  v157 = v56;
  while (v54)
  {
LABEL_10:
    v60 = __clz(__rbit64(v54));
    v54 &= v54 - 1;
    v61 = v60 | (v57 << 6);
    v62 = *(v50 + 56);
    v63 = (*(v50 + 48) + 16 * v61);
    v15 = v50;
    v64 = *v63;
    v65 = v63[1];
    v66 = sub_22C9093BC();
    sub_22C36985C(v66);
    v25 = v67 + 16;
    v68 = v62 + *(v67 + 72) * v61;
    v69 = v58 + *(v180[0] + 48);
    ObjectType = *(v67 + 16);
    ObjectType(v69, v68, v66);
    v182 = v64;
    v183 = v65;
    *v58 = v64;
    *(v58 + 8) = v65;
    v70 = v180[1];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v72 = Strong;
      v178 = *(v70 + 24);
      sub_22C36BA4C(&v190);
      v73 = v168;
      v74 = v169;
      v75(v168, v165, v169);

      sub_22C90962C();
      sub_22C36BA4C(&v189);
      v76(v73, v74);
      v15 = v166;
      ObjectType(v166, v69, v66);
      swift_storeEnumTagMultiPayload();
      ObjectType = swift_getObjectType();
      v77 = sub_22C3A5908(&qword_27D9BC208, &unk_22C912400);
      v78 = swift_allocBox();
      v177 = v72;
      v80 = v79;
      v81 = *(v77 + 48);
      sub_22C36BA4C(&v188);
      v82 = v171;
      v84(v83, v174, v171);
      sub_22C36D6EC();
      v85 = swift_allocObject();
      v86 = v183;
      *(v85 + 16) = v182;
      *(v85 + 24) = v86;
      *(v85 + 32) = 3;
      *(v80 + v81) = v85;
      v87 = *v160;
      (*v160)(v80 + v81, v161, v82);
      v88 = v170;
      *v170 = v78;
      v87(v88, v159, v82);
      v89 = v178;
      v25 = v178 + 8;
      v90 = *(v178 + 8);

      v90(&v184, v15, 1, v173, v88, ObjectType, v89);
      swift_unknownObjectRelease();
      sub_22C36BA4C(&v186);
      v91(v88, v82);
      sub_22C56BE84(v15);
      if (v187)
      {
        v58 = v179;
        v50 = v157;
        goto LABEL_14;
      }

      v93 = v185[2];
      v92 = v186;
      v95 = v185[0];
      v94 = v185[1];
      v96 = v184;

      sub_22C456CE4(v96, v95, v94, v93, v92, 0);
      v97 = v183;

      v15 = v179;
      sub_22C36DD28(v179, &qword_27D9BADA0, &unk_22C90FA80);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v102 = v154[2];
        sub_22C5922A4();
        v154 = v103;
      }

      v50 = v157;
      v55 = v175;
      v51 = v176;
      v98 = v182;
      v25 = v154[2];
      v99 = v154[3];
      if (v25 >= v99 >> 1)
      {
        sub_22C369AB0(v99);
        sub_22C5922A4();
        v98 = v182;
        v154 = v104;
      }

      v100 = v154;
      v154[2] = v25 + 1;
      v101 = &v100[3 * v25];
      v101[4] = v98;
      v101[5] = v97;
      v101[6] = v96;
      v58 = v15;
    }

    else
    {

      v50 = v15;
LABEL_14:
      sub_22C36DD28(v58, &qword_27D9BADA0, &unk_22C90FA80);
      v55 = v175;
      v51 = v176;
    }
  }

  while (1)
  {
    v59 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v59 >= v55)
    {
      break;
    }

    v54 = *(v51 + 8 * v59);
    ++v57;
    if (v54)
    {
      v57 = v59;
      goto LABEL_10;
    }
  }

  v184 = v154;

  sub_22C56BEE0(&v184);

  v57 = v184;
  v25 = v184[2];
  v58 = v153;
  v108 = v152;
  v109 = v156;
  v15 = v151;
  if (v25)
  {
    goto LABEL_37;
  }

  v110 = v150;
  sub_22C903F7C();
  v111 = v155;
  v112 = v15;
  v15 = v149;
  (*(v155 + 16))(v109, v112, v149);
  v113 = sub_22C9063CC();
  v51 = sub_22C90AACC();
  if (os_log_type_enabled(v113, v51))
  {
    v15 = swift_slowAlloc();
    v183 = swift_slowAlloc();
    v184 = v183;
    *v15 = 136642819;
    v114 = v148[0];
    sub_22C90915C();
    v115 = sub_22C90993C();
    if (sub_22C370B74(v114, 1, v115) == 1)
    {
      sub_22C36DD28(v114, &qword_27D9BC390, &qword_22C912AC0);
      v116 = 0;
      v117 = 0xE000000000000000;
    }

    else
    {
      v116 = sub_22C9098BC();
      v117 = v132;
      (*(*(v115 - 8) + 8))(v114, v115);
    }

    sub_22C36FB04(v185);
    v133(v156, v149);
    v134 = sub_22C36F9F4(v116, v117, &v184);

    *(v15 + 4) = v134;
    _os_log_impl(&dword_22C366000, v113, v51, "Empty property list found for entity with display representation: %{sensitive}s", v15, 0xCu);
    v135 = v183;
    sub_22C36FF94(v183);
    MEMORY[0x2318B9880](v135, -1, -1);
    MEMORY[0x2318B9880](v15, -1, -1);

    sub_22C36FB04(v180);
    v131 = v150;
  }

  else
  {

    (*(v111 + 8))(v109, v15);
    sub_22C36FB04(v180);
    v131 = v110;
  }

  v130(v131, v108);
  v25 = *(v57 + 16);
  if (v25)
  {
LABEL_37:
    v184 = MEMORY[0x277D84F90];
    sub_22C3B63D4();
    v136 = 0;
    v137 = v184;
    v138 = (v57 + 48);
    while (1)
    {
      v59 = *(v57 + 16);
      if (v136 >= v59)
      {
        goto LABEL_47;
      }

      v139 = *(v138 - 2);
      v140 = *(v138 - 1);
      v141 = *v138;

      v15 = sub_22C56AB48(v139, v140, v141);

      v184 = v137;
      v143 = *(v137 + 16);
      v142 = *(v137 + 24);
      v51 = v143 + 1;
      if (v143 >= v142 >> 1)
      {
        sub_22C369AB0(v142);
        sub_22C3B63D4();
        v137 = v184;
      }

      ++v136;
      *(v137 + 16) = v51;
      *(v137 + 8 * v143 + 32) = v15;
      v138 += 3;
      if (v25 == v136)
      {

        goto LABEL_43;
      }
    }
  }

  v137 = MEMORY[0x277D84F90];
LABEL_43:
  v129 = sub_22C47D738(8236, 0xE200000000000000, v137);

LABEL_44:
  *v58 = v129;
  result = 0.0;
  *(v58 + 8) = 0u;
  *(v58 + 24) = 0u;
  *(v58 + 40) = 0;
  return result;
}