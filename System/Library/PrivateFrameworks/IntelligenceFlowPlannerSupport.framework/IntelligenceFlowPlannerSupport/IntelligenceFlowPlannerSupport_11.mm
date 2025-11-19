uint64_t sub_22BEF8690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a3)
  {

    v10 = sub_22BEF65C0(a4, a1, a2, (a3 + 16));
    v12 = v11;
    v14 = v13;
  }

  else
  {
    result = sub_22BEF63CC(a4, a1, a2);
    v10 = result;
    v12 = v16;
    v14 = 0;
  }

  *a5 = v10;
  *(a5 + 8) = v12 & 1;
  *(a5 + 16) = v14;
  return result;
}

uint64_t sub_22BEF8740(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22C26E684();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BEF8784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v8 = *a4;
  v9 = a4[1];
  if (a3)
  {

    v11 = sub_22BEF67E0(v8, v9, a1, a2, (a3 + 16));
    v13 = v12;
    v15 = v14;
  }

  else
  {
    result = sub_22BEF6534(*a4, a4[1], a1, a2);
    v11 = result;
    v13 = v17;
    v15 = 0;
  }

  *a5 = v11;
  *(a5 + 8) = v13 & 1;
  *(a5 + 16) = v15;
  return result;
}

unint64_t sub_22BEF8860(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_22BE63574(result);
  }

  return result;
}

void sub_22BEF8874(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2)
  {

    sub_22BE63574(a3);
  }
}

uint64_t sub_22BEF88B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_22BE190C4(a1, a2, a3, a4);
  sub_22BE1834C(v5);
  v7 = *(v6 + 32);
  v8 = sub_22BE19454();
  v9(v8);
  return v4;
}

uint64_t sub_22BEF8924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProgramStatement(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_22BEF89D4()
{
  result = qword_27D90A8B8;
  if (!qword_27D90A8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A8B8);
  }

  return result;
}

uint64_t sub_22BEF8A28(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22BE7431C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BEF8A70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_22BE1834C(v4);
  v6 = *(v5 + 16);
  v7 = sub_22BE19454();
  v8(v7);
  return a2;
}

uint64_t sub_22BEF8AC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BE18524(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22BEF8B1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_22BE1834C(v4);
  v6 = *(v5 + 32);
  v7 = sub_22BE19454();
  v8(v7);
  return a2;
}

void *sub_22BEF8B74(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_22BEF8BDC(uint64_t *a1)
{
  v2 = *(sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C116030(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_22BF056B8(v7);
  *a1 = v3;
  return result;
}

uint64_t AST.FlatAssignExpr.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_22BE19454();
}

uint64_t AST.FlatAssignExpr.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AST.FlatAssignExpr.expr.getter()
{
  sub_22BF0AF00();
  sub_22BE1BEA0();
  return sub_22BF043F0();
}

uint64_t AST.FlatAssignExpr.expr.setter()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for AST.FlatAssignExpr(v0) + 20);
  sub_22BE191F0();
  return sub_22BF07B08();
}

uint64_t AST.FlatAssignExpr.expr.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for AST.FlatAssignExpr(v0) + 20);
  return sub_22BE18504();
}

uint64_t AST.FlatAssignExpr.init(name:expr:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  sub_22BF0AF00();
  sub_22BE191F0();
  return sub_22BF042FC();
}

uint64_t AST.FlatAssignExpr.description.getter()
{
  v2 = *v0;
  v3 = v0[1];

  MEMORY[0x2318AB8D0](2112800, 0xE300000000000000);
  sub_22BF0AF00();
  AST.FlatExpr.description.getter();
  MEMORY[0x2318AB8D0]();

  return v2;
}

void static AST.FlatAssignExpr.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE18378();
  v23 = *v22 == *v20 && *(v21 + 8) == v20[1];
  if (v23 || (sub_22C274014() & 1) != 0)
  {
    sub_22BF0AF00();

    static AST.FlatExpr.== infix(_:_:)(v21 + v30, v20 + v30, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }
}

void static AST.FlatExpr.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  a19 = v22;
  a20 = v23;
  v214 = v24;
  v215 = v25;
  v26 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v26);
  v28 = *(v27 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE1A174();
  sub_22BE190A8(v30);
  v200 = sub_22BE5CE4C(&qword_27D90A8E8, &qword_22C288AF8);
  sub_22BE18000(v200);
  v32 = *(v31 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  sub_22BE1A174();
  v201 = v34;
  sub_22BE183BC();
  v35 = sub_22C26E1D4();
  v36 = sub_22BE179D8(v35);
  v212 = v37;
  v213 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22BE17B98();
  v199 = v40;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v41);
  sub_22BE19490();
  v198 = v42;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v43);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v44);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v45);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v46);
  sub_22BE19E94();
  sub_22BE190A8(v47);
  v48 = type metadata accessor for AST.FlatValue(0);
  v49 = sub_22BE19448(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v52);
  sub_22BE19490();
  v195 = v53;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v54);
  sub_22BE19490();
  v197 = v55;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v56);
  sub_22BE19490();
  v196 = v57;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v58);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v59);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v60);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v61);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v62);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v63);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v64);
  sub_22BE19E94();
  sub_22BE190A8(v65);
  v66 = type metadata accessor for AST.FlatExpr(0);
  v67 = sub_22BE18000(v66);
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67);
  sub_22BE17B98();
  v211 = v70;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v71);
  sub_22BE19490();
  v210 = v72;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v73);
  sub_22BE19490();
  v208 = v74;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v75);
  sub_22BE19490();
  v205 = v76;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v77);
  sub_22BE19490();
  v209 = v78;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v79);
  sub_22BE19490();
  v203 = v80;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v81);
  sub_22BE19490();
  v206 = v82;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v83);
  sub_22BE19490();
  v207 = v84;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v85);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v86);
  sub_22BE1B618();
  v88 = MEMORY[0x28223BE20](v87);
  v90 = (&v192 - v89);
  MEMORY[0x28223BE20](v88);
  sub_22BE19490();
  v204 = v91;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v92);
  sub_22BE19490();
  v202 = v93;
  sub_22BE1B99C();
  v95 = MEMORY[0x28223BE20](v94);
  v97 = &v192 - v96;
  v98 = MEMORY[0x28223BE20](v95);
  v100 = &v192 - v99;
  MEMORY[0x28223BE20](v98);
  v101 = sub_22BE5CE4C(&qword_27D90A8F0, &unk_22C288B00);
  sub_22BE19448(v101);
  v103 = *(v102 + 64);
  sub_22BE179FC();
  v105 = MEMORY[0x28223BE20](v104);
  v107 = &v192 - v106;
  v108 = &v192 + *(v105 + 56) - v106;
  sub_22BF043F0();
  v215 = v108;
  sub_22BF043F0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE1BEA0();
      sub_22BF043F0();
      v146 = *(sub_22BE5CE4C(&qword_27D90A918, &qword_22C2D1EB0) + 48);
      if (sub_22BE40924() != 1)
      {
        goto LABEL_70;
      }

      v147 = *v100;
      v148 = *v108;
      sub_22BE25AA0();
      sub_22BF042FC();
      sub_22BF042FC();
      if (v147 == v148)
      {
        static AST.FlatValue.== infix(_:_:)();
        sub_22BE3E550();
      }

      else
      {
        sub_22BE230C4();
      }

      goto LABEL_80;
    case 2u:
      sub_22BE1BEA0();
      sub_22BF043F0();
      v120 = sub_22BE5CE4C(&qword_27D90A910, &unk_22C288B20);
      v121 = *(v120 + 48);
      v122 = *(v120 + 64);
      v123 = v215;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_68;
      }

      v124 = *v97;
      v125 = *v123;
      sub_22BE25AA0();
      sub_22BF042FC();
      sub_22BF042FC();
      sub_22BF042FC();
      sub_22BF042FC();
      if (v124 == v125 && (static AST.FlatValue.== infix(_:_:)(), (v126 & 1) != 0))
      {
        static AST.FlatValue.== infix(_:_:)();
        sub_22BE3E550();
        sub_22BF042A8();
        sub_22BF042A8();
        sub_22BF042A8();
      }

      else
      {
        sub_22BE230C4();
        sub_22BF042A8();
        sub_22BE1B5EC();
        sub_22BF042A8();
        sub_22BE1B074();
        sub_22BF042A8();
      }

      goto LABEL_81;
    case 3u:
      sub_22BE1BEA0();
      v134 = v202;
      sub_22BF043F0();
      v135 = *(sub_22BE5CE4C(&qword_27D90A908, &unk_22C2D1EA0) + 48);
      v137 = *(v134 + v135);
      v136 = *(v134 + v135 + 8);
      v138 = v215;
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        sub_22BE18D14();
        goto LABEL_71;
      }

      v140 = *&v138[v135];
      v139 = *&v138[v135 + 8];
      sub_22BE1897C();
      sub_22BF042FC();
      sub_22BE18240();
      static AST.FlatValue.== infix(_:_:)();
      v142 = v141;
      sub_22BE18D14();
      sub_22BF042A8();
      if ((v142 & 1) == 0)
      {
        sub_22BE18D14();
        sub_22BF042A8();

        goto LABEL_84;
      }

      if (v137 != v140 || v136 != v139)
      {
        sub_22BE1B5EC();
        sub_22C274014();
      }

      sub_22BE18D14();
      sub_22BF042A8();
      goto LABEL_94;
    case 4u:
      sub_22BE1BEA0();
      sub_22BF043F0();
      v111 = *(sub_22BE5CE4C(&qword_27D90A900, &unk_22C288B10) + 48);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
LABEL_68:
        sub_22BE230C4();
        sub_22BF042A8();
        goto LABEL_71;
      }

      sub_22BE25AA0();
      sub_22BF042FC();
      sub_22BF042FC();
      sub_22BF042FC();
      static AST.FlatValue.== infix(_:_:)();
      v113 = v112;
      sub_22BE18D14();
      sub_22BF042A8();
      if (v113)
      {
        static AST.FlatValue.== infix(_:_:)();
        sub_22BE3E550();
        sub_22BF042A8();
        goto LABEL_80;
      }

      sub_22BE230C4();
      sub_22BF042A8();
      sub_22BE200D4();
      sub_22BF042A8();
      goto LABEL_81;
    case 5u:
      sub_22BE1BEA0();
      sub_22BF043F0();
      v149 = *v90;
      if (sub_22BF0AEB4() != 5)
      {
        goto LABEL_74;
      }

      v150 = *v90;
      sub_22BE18040();
      sub_22BEA230C();
      goto LABEL_63;
    case 6u:
      sub_22BE1BEA0();
      sub_22BF043F0();
      v156 = *v20;
      v155 = v20[1];
      v157 = v20[2];
      v158 = v215;
      if (swift_getEnumCaseMultiPayload() != 6)
      {

LABEL_74:

        goto LABEL_75;
      }

      v159 = *v158;
      v160 = v158[1];
      v161 = v158[2];
      if (v156 == v159 && v155 == v160)
      {
      }

      else
      {
        v163 = sub_22C274014();

        if ((v163 & 1) == 0)
        {

LABEL_84:

          goto LABEL_94;
        }
      }

      sub_22BE18040();
      sub_22BEA657C();
LABEL_63:

      goto LABEL_94;
    case 7u:
      sub_22BE1BEA0();
      sub_22BF0AFB8();
      sub_22BF043F0();
      v144 = *v21;
      if (sub_22BF0AEB4() != 7)
      {
        goto LABEL_74;
      }

      v145 = *v90;
      sub_22BE18040();
      sub_22BEA2634();
      goto LABEL_63;
    case 8u:
      sub_22BE1BEA0();
      v174 = v207;
      sub_22BF043F0();
      v175 = *(sub_22BE5CE4C(&qword_27D90A8F8, &unk_22C2D1E90) + 48);
      v176 = *(v174 + v175);
      v177 = *(v174 + v175 + 8);
      if (sub_22BE40924() == 8)
      {
        v214 = *&v108[v175];
        v178 = v108[v175 + 8];
        v179 = v212;
        v180 = v213;
        v181 = v194;
        (*(v212 + 32))(v194, v108, v213);
        sub_22C26E1B4();
        v182 = *(v179 + 8);
        v182(v181, v180);
        v182(v174, v180);
        goto LABEL_94;
      }

      v133 = sub_22BE2399C();
      goto LABEL_26;
    case 9u:
      sub_22BE1BEA0();
      v109 = v206;
      sub_22BF043F0();
      if (sub_22BF0AEB4() != 9)
      {
        goto LABEL_25;
      }

      sub_22BE3E8D8();
      v110 = &a12;
      goto LABEL_17;
    case 0xAu:
      sub_22BE1BEA0();
      v164 = v203;
      sub_22BF043F0();
      v166 = *v164;
      v165 = v164[1];
      v167 = *(v164 + 16);
      v168 = *(v164 + 17);
      if (sub_22BE40924() != 10)
      {
        goto LABEL_74;
      }

      v169 = *v108;
      v170 = *(v108 + 1);
      v171 = v108[16];
      v172 = v108[17];
      if (v166 != v169 || v165 != v170)
      {
        sub_22BE18944();
        sub_22C274014();
      }

      goto LABEL_63;
    case 0xBu:
      sub_22BE1BEA0();
      v109 = v209;
      sub_22BF043F0();
      if (sub_22BF0AEB4() != 11)
      {
        goto LABEL_25;
      }

      sub_22BE3E8D8();
      v110 = &a15;
LABEL_17:
      v119 = *(v110 - 32);
      goto LABEL_24;
    case 0xCu:
      sub_22BE1BEA0();
      v114 = v205;
      sub_22BF043F0();
      v115 = *v114;
      if (sub_22BF0AEB4() != 12)
      {
        goto LABEL_74;
      }

      v116 = *v114;
      v117 = sub_22BE18040();
      sub_22BE9693C(v117, v118);
      goto LABEL_63;
    case 0xDu:
      sub_22BE1BEA0();
      v151 = v208;
      sub_22BF043F0();
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        sub_22BE33928(v151, &qword_27D9082F0, &qword_22C27AB00);
        goto LABEL_75;
      }

      v152 = v201;
      v153 = *(v200 + 48);
      sub_22BE29454();
      sub_22BE27B84();
      sub_22BEBFD18();
      sub_22BE27B84();
      sub_22BEBFD18();
      v154 = v213;
      if (sub_22BE1AEA8(v152, 1, v213) == 1)
      {
        if (sub_22BE1AEA8(v152 + v153, 1, v154) == 1)
        {
          sub_22BE33928(v152, &qword_27D9082F0, &qword_22C27AB00);
          goto LABEL_94;
        }

        goto LABEL_88;
      }

      sub_22BE22868();
      if (sub_22BE1AEA8(v152 + v153, 1, v154) == 1)
      {
        v183 = sub_22BE28D70();
        v184(v183, v154);
LABEL_88:
        sub_22BE33928(v152, &qword_27D90A8E8, &qword_22C288AF8);
        goto LABEL_94;
      }

      v185 = v212;
      v186 = v152 + v153;
      v187 = v193;
      (*(v212 + 32))(v193, v186, v154);
      sub_22BE1A5F0();
      sub_22BF043A8(v188, v189);
      sub_22C272FD4();
      v190 = *(v185 + 8);
      v190(v187, v154);
      v191 = sub_22BE33560();
      (v190)(v191);
      sub_22BE33928(v152, &qword_27D9082F0, &qword_22C27AB00);
LABEL_94:
      sub_22BE25200();
LABEL_95:
      sub_22BE1AABC();
      return;
    case 0xEu:
      sub_22BE1BEA0();
      v109 = v210;
      sub_22BF043F0();
      if (sub_22BF0AEB4() == 14)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    case 0xFu:
      sub_22BE1BEA0();
      v109 = v211;
      sub_22BF043F0();
      if (sub_22BF0AEB4() == 15)
      {
LABEL_23:
        sub_22BE3E8D8();
LABEL_24:
        v127 = sub_22BE200D4();
        v128 = v213;
        v129(v127);
        sub_22BE1AB1C();
        sub_22C26E1B4();
        v130 = *(v100 + 1);
        v131 = sub_22BE1B328();
        v130(v131);
        (v130)(v109, v128);
        goto LABEL_94;
      }

LABEL_25:
      v132 = *(v212 + 8);
      v133 = v109;
LABEL_26:
      v132(v133, v213);
      goto LABEL_75;
    case 0x10u:
      if (sub_22BF0AFF0() == 16)
      {
        goto LABEL_94;
      }

      goto LABEL_75;
    case 0x11u:
      if (sub_22BF0AFF0() == 17)
      {
        goto LABEL_94;
      }

      goto LABEL_75;
    case 0x12u:
      if (sub_22BF0AFF0() == 18)
      {
        goto LABEL_94;
      }

      goto LABEL_75;
    case 0x13u:
      if (sub_22BF0AFF0() == 19)
      {
        goto LABEL_94;
      }

      goto LABEL_75;
    default:
      sub_22BE1BEA0();
      sub_22BF043F0();
      if (!sub_22BF0AEB4())
      {
        sub_22BE1897C();
        sub_22BF042FC();
        static AST.FlatValue.== infix(_:_:)();
        sub_22BE3E550();
LABEL_80:
        sub_22BF042A8();
LABEL_81:
        sub_22BF042A8();
        goto LABEL_94;
      }

LABEL_70:
      sub_22BE18D14();
LABEL_71:
      sub_22BF042A8();
LABEL_75:
      sub_22BE33928(v107, &qword_27D90A8F0, &unk_22C288B00);
      goto LABEL_95;
  }
}

uint64_t sub_22BEF9FD0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1919973477 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22BEFA0A0(char a1)
{
  if (a1)
  {
    return 1919973477;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_22BEFA0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEF9FD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEFA0F0(uint64_t a1)
{
  v2 = sub_22BF04354();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFA12C(uint64_t a1)
{
  v2 = sub_22BF04354();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AST.FlatAssignExpr.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22BE5CE4C(&qword_27D90A920, &qword_22C288B30);
  sub_22BE179D8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE25CD0();
  v11 = a1[4];
  sub_22BE26950(a1, a1[3]);
  sub_22BF04354();
  sub_22C274234();
  v12 = *v3;
  v13 = v3[1];
  sub_22C273F54();
  if (!v2)
  {
    v14 = *(type metadata accessor for AST.FlatAssignExpr(0) + 20);
    sub_22BE33FE4();
    type metadata accessor for AST.FlatExpr(0);
    sub_22BF0AEE8();
    sub_22BF043A8(v15, v16);
    sub_22BE27B84();
    sub_22C273FA4();
  }

  v17 = *(v7 + 8);
  v18 = sub_22BE200D4();
  return v19(v18);
}

void AST.FlatAssignExpr.init(from:)()
{
  sub_22BE19130();
  v2 = v1;
  v23 = type metadata accessor for AST.FlatExpr(0);
  v3 = sub_22BE18000(v23);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v24 = sub_22BE5CE4C(&qword_27D90A938, &qword_22C288B38);
  sub_22BE179D8(v24);
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE2BB64();
  v9 = type metadata accessor for AST.FlatAssignExpr(0);
  v10 = sub_22BE18000(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE179EC();
  v15 = (v14 - v13);
  v16 = v2[4];
  sub_22BE26950(v2, v2[3]);
  sub_22BF04354();
  sub_22C274214();
  if (v0)
  {
    sub_22BE26B64(v2);
  }

  else
  {
    *v15 = sub_22C273E64();
    v15[1] = v17;
    sub_22BE33FE4();
    sub_22BF0AEE8();
    sub_22BF043A8(v18, v19);
    sub_22C273EB4();
    v20 = sub_22BE3CDB8();
    v21(v20);
    v22 = *(v9 + 20);
    sub_22BE191F0();
    sub_22BF042FC();
    sub_22BF043F0();
    sub_22BE26B64(v2);
    sub_22BF042A8();
  }

  sub_22BE18478();
}

BOOL AST.FlatValue.isStatement.getter()
{
  v0 = type metadata accessor for AST.FlatValue(0);
  v1 = sub_22BE18000(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE179EC();
  sub_22BE17BEC();
  sub_22BE18040();
  sub_22BF043F0();
  sub_22BE1B5EC();
  v4 = swift_getEnumCaseMultiPayload() == 7;
  sub_22BF042A8();
  return v4;
}

BOOL AST.FlatValue.isIdentifier.getter()
{
  v0 = type metadata accessor for AST.FlatValue(0);
  v1 = sub_22BE18000(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE179EC();
  sub_22BE17BEC();
  sub_22BE18040();
  sub_22BF043F0();
  sub_22BE1B5EC();
  v4 = swift_getEnumCaseMultiPayload() == 8;
  sub_22BF042A8();
  return v4;
}

uint64_t AST.FlatValue.asString.getter()
{
  v0 = type metadata accessor for AST.FlatValue(0);
  v1 = sub_22BE18000(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE179EC();
  v6 = (v5 - v4);
  sub_22BE17BEC();
  sub_22BE18944();
  sub_22BF043F0();
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    result = *v6;
    v8 = v6[1];
  }

  else
  {
    sub_22BF042A8();
    return 0;
  }

  return result;
}

uint64_t AST.FlatValue.asStatement.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AST.FlatValue(0);
  v3 = sub_22BE18000(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  sub_22BE17BEC();
  sub_22BF043F0();
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v6 = sub_22C26E684();
    sub_22BE18000(v6);
    v8 = *(v7 + 32);
    v9 = sub_22BE19454();
    v10(v9);
    v11 = a1;
    v12 = 0;
    v13 = 1;
    v14 = v6;
  }

  else
  {
    sub_22BF042A8();
    sub_22C26E684();
    v11 = sub_22BE3116C();
  }

  return sub_22BE19DC4(v11, v12, v13, v14);
}

void AST.FlatValue.description.getter()
{
  sub_22BE19460();
  v1 = sub_22C26E1D4();
  v2 = sub_22BE179D8(v1);
  v79 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  v8 = v7 - v6;
  v9 = sub_22C26E684();
  v10 = sub_22BE179D8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE179EC();
  v17 = v16 - v15;
  v18 = sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90);
  v80 = sub_22BE179D8(v18);
  v81 = v19;
  v21 = *(v20 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE25CD0();
  v23 = type metadata accessor for AST.FlatValue(0);
  v24 = sub_22BE179D8(v23);
  v78 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BE183AC();
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v28);
  v30 = (&v76 - v29);
  sub_22BE17BEC();
  sub_22BF043F0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v82 = *v30;
      sub_22BEBB01C();
      sub_22C273964();
      goto LABEL_7;
    case 2u:
      v37 = *v30;
      sub_22C273664();
LABEL_7:
      sub_22BE351AC();
      goto LABEL_29;
    case 3u:
      v31 = *v30;
      v32 = v30[1];
      String.escapedForPython.getter();
      sub_22BE25C14();
      sub_22BF0AFC4(34);
      sub_22BE3E400();

      MEMORY[0x2318AB8D0](34, 0xE100000000000000);

      goto LABEL_29;
    case 4u:
      v40 = *v30;
      v41 = *(*v30 + 16);
      if (v41)
      {
        v82 = MEMORY[0x277D84F90];
        sub_22BF0AF28();
        v42 = v82;
        v43 = *(v78 + 80);
        v81 = v40;
        v44 = v40 + ((v43 + 32) & ~v43);
        v45 = *(v78 + 72);
        do
        {
          sub_22BE29454();
          v46 = sub_22BF043F0();
          v47 = AST.FlatValue.description.getter(v46);
          v49 = v48;
          sub_22BE18D14();
          sub_22BF042A8();
          v82 = v42;
          v50 = *(v42 + 16);
          if (v50 >= *(v42 + 24) >> 1)
          {
            sub_22BE70138();
            v42 = v82;
          }

          *(v42 + 16) = v50 + 1;
          v51 = v42 + 16 * v50;
          *(v51 + 32) = v47;
          *(v51 + 40) = v49;
          v44 += v45;
          --v41;
        }

        while (v41);
      }

      else
      {

        v42 = MEMORY[0x277D84F90];
      }

      v82 = v42;
      v68 = sub_22BE18040();
      sub_22BE5CE4C(v68, v69);
      sub_22BE1B9E8();
      sub_22BEF8A28(v70, &qword_27D908050, &qword_22C278EB0);
      sub_22BE29280();
      sub_22BE25C14();
      sub_22BF0AFC4(91);
      sub_22BE3E400();

      v71 = 93;
      goto LABEL_28;
    case 5u:
      v52 = sub_22BE6875C(*v30);

      v82 = v52;
      sub_22BEF8BDC(&v82);
      v53 = v82;
      v54 = v82[2];
      if (v54)
      {
        v84 = MEMORY[0x277D84F90];
        sub_22BF0AF28();
        v55 = 0;
        v56 = *(v81 + 80);
        v78 = v53;
        v79 = v53 + ((v56 + 32) & ~v56);
        v57 = v84;
        v77 = v54;
        do
        {
          if (v55 >= *(v53 + 16))
          {
            __break(1u);

            __break(1u);
            return;
          }

          v58 = *(v81 + 72);
          sub_22BE22868();
          v59 = v0[1];
          v60 = *(v80 + 48);
          v82 = *v0;
          v83 = v59;

          v61 = MEMORY[0x2318AB8D0](8250, 0xE200000000000000);
          v62 = AST.FlatValue.description.getter(v61);
          MEMORY[0x2318AB8D0](v62);

          v63 = v82;
          v64 = v83;
          sub_22BE33928(v0, &unk_27D907790, &unk_22C27FE90);
          v84 = v57;
          v65 = v57[2];
          if (v65 >= v57[3] >> 1)
          {
            sub_22BE70138();
            v57 = v84;
          }

          ++v55;
          v57[2] = v65 + 1;
          v66 = &v57[2 * v65];
          v66[4] = v63;
          v66[5] = v64;
          v53 = v78;
        }

        while (v77 != v55);
      }

      else
      {

        v57 = MEMORY[0x277D84F90];
      }

      v82 = v57;
      v72 = sub_22BE19454();
      sub_22BE5CE4C(v72, v73);
      sub_22BE1B9E8();
      sub_22BEF8A28(v74, &qword_27D908050, &qword_22C278EB0);
      sub_22BE29280();

      sub_22BF0AFC4(123);
      v75 = sub_22BE260B8();
      MEMORY[0x2318AB8D0](v75);

      v71 = 125;
LABEL_28:
      MEMORY[0x2318AB8D0](v71, 0xE100000000000000);
LABEL_29:
      sub_22BE1AABC();
      return;
    case 6u:
      v38 = *v30;
      v39 = v30[1];
      goto LABEL_29;
    case 7u:
      (*(v12 + 32))(v17, v30, v9);
      sub_22C26E634();
      sub_22BE351AC();
      v67 = *(v12 + 8);
      v35 = sub_22BF0AFB8();
      goto LABEL_23;
    case 8u:
      v33 = v79;
      (*(v79 + 32))(v8, v30, v1);
      sub_22C26E184();
      sub_22BE351AC();
      v34 = *(v33 + 8);
      v35 = sub_22BE18040();
LABEL_23:
      v36(v35);
      goto LABEL_29;
    case 9u:
      goto LABEL_29;
    default:
      *v30;
      *v30;
      goto LABEL_29;
  }
}

void static AST.FlatValue.== infix(_:_:)()
{
  sub_22BE19460();
  v75 = v6;
  v76 = v7;
  v8 = sub_22C26E1D4();
  v9 = sub_22BE179D8(v8);
  v70 = v10;
  v71 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  v67 = v14 - v13;
  sub_22BE183BC();
  v15 = sub_22C26E684();
  v16 = sub_22BE179D8(v15);
  v68 = v17;
  v69 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE179EC();
  v66 = v21 - v20;
  v22 = sub_22BE183BC();
  v23 = type metadata accessor for AST.FlatValue(v22);
  v24 = sub_22BE18000(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BE17B98();
  v74 = v27;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v28);
  sub_22BE19490();
  v73 = v29;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v30);
  sub_22BE19490();
  v72 = v31;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v32);
  sub_22BE1B618();
  MEMORY[0x28223BE20](v33);
  sub_22BE23858();
  MEMORY[0x28223BE20](v34);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v35);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v36);
  sub_22BE18094();
  MEMORY[0x28223BE20](v37);
  v39 = (&v65 - v38);
  v40 = sub_22BE5CE4C(&qword_27D90A948, &qword_22C288B40);
  sub_22BE19448(v40);
  v42 = *(v41 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v43);
  sub_22BE1B72C();
  v45 = v0 + *(v44 + 56);
  sub_22BF043F0();
  v76 = v45;
  sub_22BF043F0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE17BEC();
      sub_22BF043F0();
      if (sub_22BE486D0() != 1)
      {
        goto LABEL_35;
      }

      v60 = *v5 == *v39;
      goto LABEL_33;
    case 2u:
      sub_22BE17BEC();
      sub_22BF043F0();
      if (sub_22BE486D0() != 2)
      {
        goto LABEL_35;
      }

      v60 = *v4 == *v39;
      goto LABEL_33;
    case 3u:
      sub_22BE17BEC();
      sub_22BF043F0();
      v51 = *v2;
      v50 = v2[1];
      if (sub_22BF0AF84() != 3)
      {
        goto LABEL_26;
      }

      goto LABEL_20;
    case 4u:
      sub_22BE17BEC();
      sub_22BF043F0();
      v47 = *v3;
      v48 = v76;
      sub_22BE29454();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_26;
      }

      v49 = *v48;
      sub_22BE1B5EC();
      sub_22BEA22B8();
      goto LABEL_18;
    case 5u:
      sub_22BE17BEC();
      sub_22BF043F0();
      v56 = *v1;
      v57 = v76;
      sub_22BE29454();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_26;
      }

      v58 = *v57;
      sub_22BE1B5EC();
      sub_22BEA657C();
LABEL_18:
      sub_22BE417C8();

      sub_22BE18D14();
      goto LABEL_33;
    case 6u:
      sub_22BE17BEC();
      v59 = v72;
      sub_22BF043F0();
      v51 = *v59;
      v50 = v59[1];
      if (sub_22BF0AF84() != 6)
      {
LABEL_26:

        goto LABEL_35;
      }

LABEL_20:
      v60 = v51 == *type metadata accessor for AST.FlatValue && v50 == loc_22BF04290;
      if (v60)
      {
      }

      else
      {
        v61 = sub_22C274014();

        if ((v61 & 1) == 0)
        {
          sub_22BE18D14();
          sub_22BF042A8();
          goto LABEL_36;
        }
      }

LABEL_32:
      sub_22BE18D14();
      goto LABEL_33;
    case 7u:
      sub_22BE17BEC();
      v52 = v73;
      sub_22BF043F0();
      if (sub_22BE486D0() != 7)
      {
        goto LABEL_34;
      }

      v54 = v68;
      v53 = v69;
      v55 = v66;
      (*(v68 + 32))(v66, v39, v69);
      sub_22BE18240();
      _s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0();
      goto LABEL_29;
    case 8u:
      sub_22BE17BEC();
      v52 = v74;
      sub_22BF043F0();
      if (sub_22BE486D0() == 8)
      {
        v54 = v70;
        v53 = v71;
        v55 = v67;
        (*(v70 + 32))(v67, v39, v71);
        sub_22BE18240();
        sub_22C26E1B4();
LABEL_29:
        v62 = *(v54 + 8);
        v62(v55, v53);
        v62(v52, v53);
        sub_22BE18D14();
LABEL_33:
        sub_22BF042A8();
      }

      else
      {
LABEL_34:
        v63 = sub_22BE28D70();
        v64(v63);
LABEL_35:
        sub_22BE33928(v0, &qword_27D90A948, &qword_22C288B40);
      }

LABEL_36:
      sub_22BE1AABC();
      return;
    case 9u:
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_32;
      }

      goto LABEL_35;
    default:
      sub_22BE17BEC();
      sub_22BF043F0();
      if (sub_22BF0AF84())
      {
        goto LABEL_35;
      }

      v46 = *v39 ^ *type metadata accessor for AST.FlatValue;
      sub_22BE18D14();
      sub_22BF042A8();
      goto LABEL_36;
  }
}

uint64_t sub_22BEFB530(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819047278 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1819242338 && a2 == 0xE400000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7630441 && a2 == 0xE300000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C62756F64 && a2 == 0xE600000000000000;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7961727261 && a2 == 0xE500000000000000;
            if (v10 || (sub_22C274014() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1952672100 && a2 == 0xE400000000000000;
              if (v11 || (sub_22C274014() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000;
                if (v12 || (sub_22C274014() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6E656D6574617473 && a2 == 0xE900000000000074;
                  if (v13 || (sub_22C274014() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_22C274014();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_22BEFB848(char a1)
{
  result = 1819047278;
  switch(a1)
  {
    case 1:
      result = 1819242338;
      break;
    case 2:
      result = 7630441;
      break;
    case 3:
      result = 0x656C62756F64;
      break;
    case 4:
      result = 0x676E69727473;
      break;
    case 5:
      result = 0x7961727261;
      break;
    case 6:
      result = 1952672100;
      break;
    case 7:
      result = 0x6C6F626D7973;
      break;
    case 8:
      result = 0x6E656D6574617473;
      break;
    case 9:
      result = 0x696669746E656469;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BEFB92C(uint64_t a1)
{
  v2 = sub_22BF06C38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFB968(uint64_t a1)
{
  v2 = sub_22BF06C38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFB9A4(uint64_t a1)
{
  v2 = sub_22BF06E3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFB9E0(uint64_t a1)
{
  v2 = sub_22BF06E3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFBA24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEFB530(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEFBA4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BEFB840();
  *a1 = result;
  return result;
}

uint64_t sub_22BEFBA74(uint64_t a1)
{
  v2 = sub_22BF069D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFBAB0(uint64_t a1)
{
  v2 = sub_22BF069D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFBAEC(uint64_t a1)
{
  v2 = sub_22BF06B28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFBB28(uint64_t a1)
{
  v2 = sub_22BF06B28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFBB64(uint64_t a1)
{
  v2 = sub_22BF06D94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFBBA0(uint64_t a1)
{
  v2 = sub_22BF06D94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFBBDC(uint64_t a1)
{
  v2 = sub_22BF06A2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFBC18(uint64_t a1)
{
  v2 = sub_22BF06A2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFBC54(uint64_t a1)
{
  v2 = sub_22BF06DE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFBC90(uint64_t a1)
{
  v2 = sub_22BF06DE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFBCCC(uint64_t a1)
{
  v2 = sub_22BF06E90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFBD08(uint64_t a1)
{
  v2 = sub_22BF06E90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFBD44(uint64_t a1)
{
  v2 = sub_22BF06A80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFBD80(uint64_t a1)
{
  v2 = sub_22BF06A80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFBDBC(uint64_t a1)
{
  v2 = sub_22BF06D40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFBDF8(uint64_t a1)
{
  v2 = sub_22BF06D40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFBE34(uint64_t a1)
{
  v2 = sub_22BF06AD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFBE70(uint64_t a1)
{
  v2 = sub_22BF06AD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AST.FlatValue.encode(to:)(void *a1)
{
  v3 = sub_22BE5CE4C(&qword_27D90A950, &qword_22C288B48);
  v4 = sub_22BE179D8(v3);
  v151 = v5;
  v152 = v4;
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A174();
  v148 = v9;
  sub_22BE183BC();
  v10 = sub_22C26E1D4();
  v11 = sub_22BE179D8(v10);
  v149 = v12;
  v150 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE179EC();
  v147 = v16 - v15;
  v17 = sub_22BE5CE4C(&qword_27D90A958, &qword_22C288B50);
  v18 = sub_22BE179D8(v17);
  v145 = v19;
  v146 = v18;
  v21 = *(v20 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE1A174();
  v142 = v23;
  sub_22BE183BC();
  v24 = sub_22C26E684();
  v25 = sub_22BE179D8(v24);
  v143 = v26;
  v144 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE179EC();
  v141 = v30 - v29;
  v31 = sub_22BE5CE4C(&qword_27D90A960, &qword_22C288B58);
  v32 = sub_22BE179D8(v31);
  v139[19] = v33;
  v140 = v32;
  v35 = *(v34 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  sub_22BE1A174();
  sub_22BF0AFA0(v37);
  v38 = sub_22BE5CE4C(&qword_27D90A968, &qword_22C288B60);
  sub_22BE18910(v38, &v169);
  v139[16] = v39;
  v41 = *(v40 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v42);
  sub_22BE1A174();
  sub_22BE190A8(v43);
  v44 = sub_22BE5CE4C(&qword_27D90A970, &qword_22C288B68);
  sub_22BE18910(v44, &v166);
  v139[13] = v45;
  v47 = *(v46 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v48);
  sub_22BE1A174();
  sub_22BE190A8(v49);
  v50 = sub_22BE5CE4C(&qword_27D90A978, &qword_22C288B70);
  sub_22BE18910(v50, &v163);
  v139[10] = v51;
  v53 = *(v52 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v54);
  sub_22BE1A174();
  sub_22BE190A8(v55);
  v56 = sub_22BE5CE4C(&qword_27D90A980, &qword_22C288B78);
  sub_22BE18910(v56, &v160);
  v139[7] = v57;
  v59 = *(v58 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v60);
  sub_22BE1A174();
  sub_22BE190A8(v61);
  v62 = sub_22BE5CE4C(&qword_27D90A988, &qword_22C288B80);
  sub_22BE18910(v62, &v157);
  v139[4] = v63;
  v65 = *(v64 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v66);
  sub_22BE1A174();
  sub_22BE190A8(v67);
  v68 = sub_22BE5CE4C(&qword_27D90A990, &qword_22C288B88);
  sub_22BE18910(v68, &v154);
  v139[1] = v69;
  v71 = *(v70 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v72);
  sub_22BE25CD0();
  v73 = sub_22BE5CE4C(&qword_27D90A998, &qword_22C288B90);
  sub_22BE179D8(v73);
  v139[0] = v74;
  v76 = *(v75 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v77);
  v78 = type metadata accessor for AST.FlatValue(0);
  v79 = sub_22BE18000(v78);
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v79);
  sub_22BE179EC();
  sub_22BE2BB64();
  v82 = sub_22BE5CE4C(&qword_27D90A9A0, &qword_22C288B98);
  v155 = sub_22BE179D8(v82);
  v156 = v83;
  v85 = *(v84 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v86);
  v88 = v139 - v87;
  v89 = a1[4];
  sub_22BE26950(a1, a1[3]);
  sub_22BF069D8();
  v154 = v88;
  sub_22C274234();
  sub_22BE17BEC();
  sub_22BF043F0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v120 = *v1;
      LOBYTE(v158) = 2;
      sub_22BF06DE8();
      v121 = v139[3];
      v122 = v154;
      v91 = v155;
      sub_22BE261D0();
      sub_22C273EE4();
      v123 = v139[5];
      sub_22C273F94();
      sub_22BE1B5D4(&v156);
      v124(v121, v123);
      sub_22BE190E4();
      v96 = v122;
      goto LABEL_9;
    case 2u:
      v104 = *v1;
      LOBYTE(v158) = 3;
      sub_22BF06D94();
      v105 = v155;
      sub_22BE3788C();
      sub_22C273EE4();
      sub_22C273F74();
      sub_22BE1B5D4(v159);
      v106 = sub_22BE1AB1C();
      v107(v106);
      goto LABEL_16;
    case 3u:
      v108 = *v1;
      v109 = v1[1];
      LOBYTE(v158) = 4;
      sub_22BF06D40();
      sub_22BE204A4(&v161);
      sub_22BE1B934();
      sub_22C273EE4();
      sub_22BE260B8();
      v110 = v139[11];
      sub_22C273F54();

      sub_22BE1B5D4(&v162);
      v112 = v88;
      v113 = v110;
      goto LABEL_13;
    case 4u:
      v97 = *v1;
      LOBYTE(v158) = 5;
      sub_22BF06C38();
      sub_22BE204A4(&v164);
      sub_22BE261D0();
      sub_22C273EE4();
      v158 = v97;
      sub_22BE5CE4C(&qword_27D90A9F0, &qword_22C288BA8);
      sub_22BF06C8C();
      sub_22BE204B0(&v166);
      v98 = &v165;
      goto LABEL_11;
    case 5u:
      v126 = *v1;
      LOBYTE(v158) = 6;
      sub_22BF06B28();
      sub_22BE204A4(&v167);
      sub_22BE261D0();
      sub_22C273EE4();
      v158 = v126;
      sub_22BE5CE4C(&qword_27D90A9D0, &qword_22C288BA0);
      sub_22BF06B7C();
      sub_22BE204B0(&v169);
      v98 = &v168;
LABEL_11:
      sub_22BE1B5D4(v98);
      v127 = sub_22BE18240();
      v128(v127);
      sub_22BE190E4();
      v129 = sub_22BE1B328();
      v130(v129);

    case 6u:
      v132 = *v1;
      v131 = v1[1];
      LOBYTE(v158) = 7;
      sub_22BF06AD4();
      sub_22BE1B934();
      sub_22C273EE4();
      v133 = v140;
      sub_22C273F54();

      v112 = sub_22BE28D70();
      v113 = v133;
LABEL_13:
      v111(v112, v113);
      sub_22BE190E4();
      v96 = sub_22BE1AB1C();
      return v95(v96, v125);
    case 7u:
      v114 = v143;
      (*(v143 + 32))(v141, v1, v144);
      LOBYTE(v158) = 8;
      sub_22BF06A80();
      v115 = v142;
      v105 = v155;
      sub_22BE3788C();
      sub_22C273EE4();
      sub_22BE2F12C();
      sub_22BF043A8(v116, v117);
      v118 = v146;
      sub_22BE3749C();
      v119 = v145;
      goto LABEL_15;
    case 8u:
      v114 = v149;
      (*(v149 + 32))(v147, v1, v150);
      LOBYTE(v158) = 9;
      sub_22BF06A2C();
      v115 = v148;
      v105 = v155;
      sub_22BE3788C();
      sub_22C273EE4();
      sub_22BE1A5F0();
      sub_22BF043A8(v134, v135);
      v118 = v152;
      sub_22BE3749C();
      v119 = v151;
LABEL_15:
      (*(v119 + 8))(v115, v118);
      v136 = *(v114 + 8);
      v137 = sub_22BE1824C();
      v138(v137);
LABEL_16:
      v96 = sub_22BE2399C();
      v125 = v105;
      return v95(v96, v125);
    case 9u:
      LOBYTE(v158) = 0;
      sub_22BF06E90();
      sub_22BE3788C();
      sub_22C273EE4();
      v99 = sub_22BE194B4(&v152);
      v100(v99, v73);
      sub_22BE190E4();
      v101 = sub_22BE18944();
      return v102(v101);
    default:
      v90 = *v1;
      LOBYTE(v158) = 1;
      sub_22BF06E3C();
      v92 = v154;
      v91 = v155;
      sub_22C273EE4();
      sub_22C273F64();
      sub_22BE1B5D4(&v153);
      v93 = sub_22BE200D4();
      v94(v93);
      sub_22BE190E4();
      v96 = v92;
LABEL_9:
      v125 = v91;
      return v95(v96, v125);
  }
}

uint64_t AST.FlatValue.hash(into:)()
{
  v0 = sub_22C26E1D4();
  v1 = sub_22BE179D8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE179EC();
  v8 = v7 - v6;
  v9 = sub_22C26E684();
  v10 = sub_22BE179D8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE179EC();
  v17 = v16 - v15;
  v18 = type metadata accessor for AST.FlatValue(0);
  v19 = sub_22BE18000(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE179EC();
  v24 = (v23 - v22);
  sub_22BE17BEC();
  sub_22BF043F0();
  sub_22BE1AEE4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v41 = *v24;
      MEMORY[0x2318AC860](2);
      v30 = v41;
      goto LABEL_11;
    case 2u:
      v31 = *v24;
      MEMORY[0x2318AC860](3);
      v32 = 0.0;
      if (v31 != 0.0)
      {
        v32 = v31;
      }

      return MEMORY[0x2318AC890](*&v32);
    case 3u:
      v33 = *v24;
      v34 = *(v24 + 1);
      v35 = 4;
      goto LABEL_15;
    case 4u:
      v27 = *v24;
      MEMORY[0x2318AC860](5);
      v28 = sub_22BE18944();
      sub_22BEB9528(v28, v29);
      goto LABEL_16;
    case 5u:
      v42 = *v24;
      MEMORY[0x2318AC860](6);
      sub_22BE18944();
      sub_22BEB8604();
      goto LABEL_16;
    case 6u:
      v43 = *v24;
      v44 = *(v24 + 1);
      v35 = 7;
LABEL_15:
      MEMORY[0x2318AC860](v35);
      sub_22BE18944();
      sub_22C272F44();
LABEL_16:

      break;
    case 7u:
      (*(v12 + 32))(v17, v24, v9);
      MEMORY[0x2318AC860](8);
      sub_22BE2F12C();
      sub_22BF043A8(v36, v37);
      sub_22C272EE4();
      v38 = *(v12 + 8);
      v39 = sub_22BE1B328();
      result = v40(v39);
      break;
    case 8u:
      (*(v3 + 32))(v8, v24, v0);
      MEMORY[0x2318AC860](9);
      sub_22BE1A5F0();
      sub_22BF043A8(v45, v46);
      sub_22C272EE4();
      v47 = *(v3 + 8);
      v48 = sub_22BE1B5EC();
      result = v49(v48);
      break;
    case 9u:
      v30 = 0.0;
LABEL_11:
      result = MEMORY[0x2318AC860](*&v30);
      break;
    default:
      v25 = *v24;
      MEMORY[0x2318AC860](1);
      result = sub_22C274174();
      break;
  }

  return result;
}

uint64_t AST.FlatValue.hashValue.getter()
{
  sub_22BE25DAC();
  AST.FlatValue.hash(into:)();
  return sub_22C2741A4();
}

uint64_t AST.FlatValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v187 = a2;
  v8 = sub_22BE5CE4C(&qword_27D90AA28, &qword_22C288BB0);
  v9 = sub_22BE179D8(v8);
  v188 = v10;
  v189 = v9;
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1A174();
  v186 = v14;
  v15 = sub_22BE5CE4C(&qword_27D90AA30, &qword_22C288BB8);
  sub_22BE18910(v15, &v201);
  v177 = v16;
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE1A174();
  v185 = v20;
  v21 = sub_22BE5CE4C(&qword_27D90AA38, &qword_22C288BC0);
  sub_22BE18910(v21, &v200);
  v176 = v22;
  v24 = *(v23 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE1A174();
  v184 = v26;
  v27 = sub_22BE5CE4C(&qword_27D90AA40, &qword_22C288BC8);
  sub_22BE18910(v27, v199);
  v175 = v28;
  v30 = *(v29 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE1A174();
  v183 = v32;
  v33 = sub_22BE5CE4C(&qword_27D90AA48, &qword_22C288BD0);
  sub_22BE18910(v33, &v198);
  v174 = v34;
  v36 = *(v35 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE1A174();
  v182 = v38;
  v39 = sub_22BE5CE4C(&qword_27D90AA50, &qword_22C288BD8);
  sub_22BE18910(v39, &v197);
  v173 = v40;
  v42 = *(v41 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v43);
  sub_22BE1A174();
  v195 = v44;
  v45 = sub_22BE5CE4C(&qword_27D90AA58, &qword_22C288BE0);
  sub_22BE18910(v45, &v196);
  v172 = v46;
  v48 = *(v47 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v49);
  sub_22BE1A174();
  v181 = v50;
  v51 = sub_22BE5CE4C(&qword_27D90AA60, &qword_22C288BE8);
  sub_22BE18910(v51, &v195);
  v171 = v52;
  v54 = *(v53 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v55);
  sub_22BE1A174();
  v180 = v56;
  v194 = sub_22BE5CE4C(&qword_27D90AA68, &qword_22C288BF0);
  sub_22BE179D8(v194);
  v170 = v57;
  v59 = *(v58 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v60);
  sub_22BE1A174();
  v179 = v61;
  v62 = sub_22BE5CE4C(&qword_27D90AA70, &qword_22C288BF8);
  sub_22BE18910(v62, &v194);
  v168 = v63;
  v65 = *(v64 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v66);
  sub_22BE1A174();
  sub_22BF0AFA0(v67);
  v193 = sub_22BE5CE4C(&qword_27D90AA78, &unk_22C288C00);
  sub_22BE179D8(v193);
  v191 = v68;
  v70 = *(v69 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v71);
  sub_22BE1B72C();
  v190 = type metadata accessor for AST.FlatValue(0);
  v72 = sub_22BE18000(v190);
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v72);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v75);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v76);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v77);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v78);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v79);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v80);
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v81);
  sub_22BE23858();
  MEMORY[0x28223BE20](v82);
  sub_22BE18094();
  MEMORY[0x28223BE20](v83);
  v85 = v163 - v84;
  v87 = a1[3];
  v86 = a1[4];
  v196 = a1;
  sub_22BE26950(a1, v87);
  sub_22BF069D8();
  v192 = v2;
  v88 = v197;
  sub_22C274214();
  if (v88)
  {
    goto LABEL_10;
  }

  v164 = v6;
  v165 = v5;
  v166 = v3;
  v167 = v4;
  v89 = v194;
  v197 = v85;
  v90 = v192;
  v91 = v193;
  v92 = sub_22C273ED4();
  result = sub_22BE7C5C4(v92, 0);
  if (v95 == v96 >> 1)
  {
    v97 = v190;
LABEL_9:
    sub_22C273B34();
    swift_allocError();
    v108 = v107;
    v109 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v108 = v97;
    sub_22C273DF4();
    sub_22BE1B198();
    v110 = *MEMORY[0x277D84160];
    sub_22BE18994();
    v112 = *(v111 + 104);
    v113 = sub_22BE38608();
    v114(v113);
    swift_willThrow();
    swift_unknownObjectRelease();
    v115 = sub_22BE1A1FC();
    v116(v115);
LABEL_10:
    v117 = v196;
    return sub_22BE26B64(v117);
  }

  v163[1] = 0;
  if (v95 < (v96 >> 1))
  {
    v163[0] = *(v94 + v95);
    sub_22BE7C5C0(v95 + 1);
    v99 = v98;
    v101 = v100;
    swift_unknownObjectRelease();
    v102 = v188;
    if (v99 == v101 >> 1)
    {
      switch(v163[0])
      {
        case 1:
          LOBYTE(v198) = 1;
          sub_22BF06E3C();
          v121 = v179;
          sub_22BE35B1C();
          v146 = sub_22C273E74();
          swift_unknownObjectRelease();
          sub_22BE1B5D4(&v202);
          v147(v121, v89);
          v148 = sub_22BE1A1FC();
          v149(v148);
          *v164 = v146 & 1;
          sub_22BE2384C();
          goto LABEL_21;
        case 2:
          LOBYTE(v198) = 2;
          sub_22BF06DE8();
          sub_22BE35B1C();
          sub_22BF0AEA0(&v195);
          v133 = sub_22C273EA4();
          swift_unknownObjectRelease();
          v134 = sub_22BE1C2D4(&v203);
          v135(v134);
          v136 = sub_22BE1A1FC();
          v137(v136);
          *v165 = v133;
          sub_22BE37BB8();
          swift_storeEnumTagMultiPayload();
          sub_22BE1897C();
          goto LABEL_22;
        case 3:
          LOBYTE(v198) = 3;
          sub_22BF06D94();
          sub_22BE35B1C();
          sub_22BF0AEA0(&v196);
          sub_22C273E84();
          v120 = v191;
          v139 = v138;
          swift_unknownObjectRelease();
          v140 = sub_22BE1C2D4(&v204);
          v141(v140);
          (*(v120 + 8))(v90, v91);
          *v166 = v139;
          sub_22BE2384C();
          goto LABEL_21;
        case 4:
          LOBYTE(v198) = 4;
          sub_22BF06D40();
          sub_22BE35B1C();
          sub_22BF0AEA0(&v197);
          sub_22C273E64();
          swift_unknownObjectRelease();
          v124 = sub_22BE1C2D4(&v205);
          v125(v124);
          v126 = sub_22BE1A1FC();
          v127(v126);
          sub_22BE32360(&v187);
          goto LABEL_21;
        case 5:
          LOBYTE(v198) = 5;
          sub_22BF06C38();
          sub_22BE35B1C();
          sub_22BE5CE4C(&qword_27D90A9F0, &qword_22C288BA8);
          sub_22BF06FD8();
          sub_22BE37540();
          sub_22BE35C7C();
          swift_unknownObjectRelease();
          v150 = sub_22BE1C2D4(&v206);
          v151(v150);
          v152 = sub_22BE1A1FC();
          v153(v152);
          sub_22BE35514(v198);
          goto LABEL_21;
        case 6:
          LOBYTE(v198) = 6;
          sub_22BF06B28();
          sub_22BE35B1C();
          sub_22BE5CE4C(&qword_27D90A9D0, &qword_22C288BA0);
          sub_22BF06F1C();
          sub_22BE37540();
          sub_22BE35C7C();
          swift_unknownObjectRelease();
          v154 = sub_22BE1C2D4(&v207);
          v155(v154);
          v156 = sub_22BE1A1FC();
          v157(v156);
          sub_22BE35514(v198);
          goto LABEL_21;
        case 7:
          LOBYTE(v198) = 7;
          sub_22BF06AD4();
          sub_22BE35B1C();
          sub_22BF0AEA0(&v200);
          sub_22C273E64();
          swift_unknownObjectRelease();
          v142 = sub_22BE1C2D4(&v208);
          v143(v142);
          v144 = sub_22BE1A1FC();
          v145(v144);
          sub_22BE32360(&v189);
          goto LABEL_21;
        case 8:
          LOBYTE(v198) = 8;
          sub_22BF06A80();
          sub_22BE35B1C();
          sub_22C26E684();
          sub_22BE2F12C();
          sub_22BF043A8(v122, v123);
          sub_22BE204A4(&v191);
          sub_22BE37540();
          sub_22BE35C7C();
          swift_unknownObjectRelease();
          v158 = sub_22BE1C2D4(&v209);
          v159(v158);
          v160 = sub_22BE1A1FC();
          v161(v160);
          goto LABEL_21;
        case 9:
          LOBYTE(v198) = 9;
          sub_22BF06A2C();
          sub_22BE35B1C();
          sub_22C26E1D4();
          sub_22BE1A5F0();
          sub_22BF043A8(v118, v119);
          sub_22BE204A4(&v192);
          sub_22C273EB4();
          sub_22BE35C7C();
          swift_unknownObjectRelease();
          v128 = *(v102 + 8);
          v129 = sub_22BE27A44();
          v130(v129);
          v131 = sub_22BE1A1FC();
          v132(v131);
LABEL_21:
          swift_storeEnumTagMultiPayload();
          sub_22BE1897C();
LABEL_22:
          sub_22BF042FC();
          break;
        default:
          LOBYTE(v198) = 0;
          sub_22BF06E90();
          v103 = v178;
          sub_22BE35B1C();
          swift_unknownObjectRelease();
          sub_22BE1B5D4(&v193);
          v104(v103, v169);
          v105 = sub_22BE1A1FC();
          v106(v105);
          sub_22BE37BB8();
          swift_storeEnumTagMultiPayload();
          break;
      }

      v162 = v196;
      sub_22BE1897C();
      sub_22BF042FC();
      v117 = v162;
      return sub_22BE26B64(v117);
    }

    v97 = v190;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_22BEFDDEC()
{
  sub_22C274154();
  AST.FlatValue.hash(into:)();
  return sub_22C2741A4();
}

void AST.FlatExpr.description.getter()
{
  sub_22BE19460();
  v1 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  v2 = sub_22BE19448(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE183AC();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  sub_22BE19E94();
  v161 = v9;
  sub_22BE183BC();
  v10 = sub_22C26E1D4();
  v11 = sub_22BE179D8(v10);
  v163 = v12;
  v164 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE179EC();
  v162 = (v16 - v15);
  v17 = sub_22BE5CE4C(&qword_27D9092B0, &unk_22C288C10);
  v18 = sub_22BE19448(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE17B98();
  v167 = v21;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v22);
  v24 = (&v160 - v23);
  v25 = type metadata accessor for AST.Update(0);
  v26 = sub_22BE179D8(v25);
  v166 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BE179EC();
  v165 = v31 - v30;
  v32 = sub_22BE183BC();
  v33 = type metadata accessor for AST.FlatValue(v32);
  v168 = *(v33 - 8);
  v34 = *(v168 + 64);
  MEMORY[0x28223BE20](v33 - 8);
  sub_22BE183AC();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v39);
  v40 = type metadata accessor for AST.FlatExpr(0);
  v41 = sub_22BE18000(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22BE179EC();
  v46 = (v45 - v44);
  sub_22BE1BEA0();
  sub_22BF043F0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v78 = *v46;
      v79 = *(sub_22BE5CE4C(&qword_27D90A918, &qword_22C2D1EB0) + 48);
      sub_22BE1897C();
      sub_22BF042FC();
      *&v172 = 0;
      *(&v172 + 1) = 0xE000000000000000;
      if (v78)
      {
        if (v78 == 1)
        {
          v80 = 0xE100000000000000;
          v81 = 45;
        }

        else
        {
          v80 = 0xE400000000000000;
          v81 = 544501614;
        }
      }

      else
      {
        v80 = 0xE100000000000000;
        v81 = 43;
      }

      MEMORY[0x2318AB8D0](v81, v80);

      AST.FlatValue.description.getter();
      MEMORY[0x2318AB8D0]();

      sub_22BE18D14();
      goto LABEL_70;
    case 2u:
      v84 = *v46;
      v85 = sub_22BE5CE4C(&qword_27D90A910, &unk_22C288B20);
      v86 = *(v85 + 48);
      v87 = *(v85 + 64);
      sub_22BF0AE88();
      sub_22BF042FC();
      sub_22BF042FC();
      AST.FlatValue.description.getter();
      *&v172 = v88;
      *(&v172 + 1) = v89;
      MEMORY[0x2318AB8D0](32, 0xE100000000000000);
      v90 = AST.InfixOp.description.getter(v84);
      MEMORY[0x2318AB8D0](v90);

      MEMORY[0x2318AB8D0](32, 0xE100000000000000);
      AST.FlatValue.description.getter();
      MEMORY[0x2318AB8D0]();

      goto LABEL_31;
    case 3u:
      v56 = &v46[*(sub_22BE5CE4C(&qword_27D90A908, &unk_22C2D1EA0) + 48)];
      v57 = *v56;
      v58 = *(v56 + 1);
      sub_22BE1897C();
      sub_22BE200D4();
      sub_22BF042FC();
      AST.FlatValue.description.getter();
      *&v172 = v59;
      *(&v172 + 1) = v60;
      MEMORY[0x2318AB8D0](46, 0xE100000000000000);
      sub_22BE3E400();

      goto LABEL_70;
    case 4u:
      v116 = *(sub_22BE5CE4C(&qword_27D90A900, &unk_22C288B10) + 48);
      sub_22BF0AE88();
      sub_22BF042FC();
      sub_22BF042FC();
      AST.FlatValue.description.getter();
      *&v172 = v117;
      *(&v172 + 1) = v118;
      MEMORY[0x2318AB8D0](91, 0xE100000000000000);
      AST.FlatValue.description.getter();
      MEMORY[0x2318AB8D0]();

      MEMORY[0x2318AB8D0](93, 0xE100000000000000);
LABEL_31:
      sub_22BF042A8();
      sub_22BE260B8();
      goto LABEL_70;
    case 5u:
      v122 = *v46;
      *&v172 = 0xD000000000000011;
      *(&v172 + 1) = 0x800000022C2D3710;
      v164 = *(v122 + 16);
      if (!v164)
      {
        goto LABEL_54;
      }

      v123 = 0;
      v124 = v165;
      v125 = *(v166 + 80);
      v162 = v25;
      v163 = v122 + ((v125 + 32) & ~v125);
      v161 = v122;
      while (v123 < *(v122 + 16))
      {
        v126 = *(v166 + 72);
        sub_22BF0AED0();
        sub_22BF043F0();
        if (*(v124 + *(v25 + 24)) == 1)
        {
          AST.FlatValue.description.getter();
          sub_22BF0AFD0(v127, v128);
          v129 = *(v124 + *(v25 + 20));
          v130 = *(v129 + 16);
          if (v130)
          {
            v167 = v123;
            v169 = MEMORY[0x277D84F90];
            sub_22BF0AF28();
            sub_22BE48DB0();
            do
            {
              sub_22BE17BEC();
              sub_22BE200D4();
              sub_22BF043F0();
              AST.FlatValue.description.getter();
              v24 = v131;
              v133 = v132;
              sub_22BE18D14();
              sub_22BF042A8();
              sub_22BE3C5F0();
              if (v134)
              {
                sub_22BE3FDC4();
                v37 = v169;
              }

              *(v37 + 16) = v122;
              v135 = v37 + 16 * v124;
              *(v135 + 32) = v24;
              *(v135 + 40) = v133;
              v129 += v25;
              --v130;
            }

            while (v130);
            v122 = v161;
            v25 = v162;
            v124 = v165;
            v123 = v167;
          }

          else
          {
            v37 = MEMORY[0x277D84F90];
          }

          v169 = v37;
          sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
          sub_22BE1B9E8();
          sub_22BEF8A28(&qword_28106DBE0, &qword_27D908050, &qword_22C278EB0);
          v141 = sub_22BE376B4();
          v143 = v142;

          MEMORY[0x2318AB8D0](v141, v143);

          v144 = 540876893;
          v145 = 0xE400000000000000;
        }

        else
        {
          AST.FlatValue.description.getter();
          sub_22BF0AFD0(v136, v137);
          v138 = *(v124 + *(v25 + 20));
          v139 = *(v138 + 16);
          if (v139)
          {
            v167 = v123;
            v169 = MEMORY[0x277D84F90];
            sub_22BF0AF28();
            sub_22BE48DB0();
            do
            {
              sub_22BE17BEC();
              sub_22BE200D4();
              sub_22BF043F0();
              AST.FlatValue.description.getter();
              sub_22BE351AC();
              sub_22BE18D14();
              sub_22BF042A8();
              sub_22BE3C5F0();
              if (v134)
              {
                sub_22BE3FDC4();
                v37 = v169;
              }

              *(v37 + 16) = v122;
              v140 = v37 + 16 * v124;
              *(v140 + 32) = v123;
              *(v140 + 40) = v24;
              v138 += v25;
              --v139;
            }

            while (v139);
            v122 = v161;
            v25 = v162;
            v124 = v165;
            v123 = v167;
          }

          else
          {
            v37 = MEMORY[0x277D84F90];
          }

          v169 = v37;
          sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
          sub_22BE1B9E8();
          sub_22BEF8A28(&qword_28106DBE0, &qword_27D908050, &qword_22C278EB0);
          v146 = sub_22BE376B4();
          v148 = v147;

          MEMORY[0x2318AB8D0](v146, v148);

          v144 = 0x203D2B205DLL;
          v145 = 0xE500000000000000;
        }

        MEMORY[0x2318AB8D0](v144, v145);
        v149 = v124 + *(v25 + 28);
        AST.FlatValue.description.getter();
        MEMORY[0x2318AB8D0]();

        v37 = v171;
        MEMORY[0x2318AB8D0](v170, v171);
        v123 = (v123 + 1);

        sub_22BE3E2D0();
        sub_22BF042A8();
        if (v123 == v164)
        {
LABEL_54:

          goto LABEL_71;
        }
      }

      goto LABEL_73;
    case 6u:
      v91 = *(v46 + 1);
      v92 = *(v46 + 2);
      *&v172 = *v46;
      *(&v172 + 1) = v91;
      MEMORY[0x2318AB8D0](40, 0xE100000000000000);
      v93 = v92 + 64;
      v94 = 1 << *(v92 + 32);
      v95 = -1;
      if (v94 < 64)
      {
        v95 = ~(-1 << v94);
      }

      v96 = v95 & *(v92 + 64);
      v97 = (v94 + 63) >> 6;
      v166 = v92;

      v98 = 0;
      if (v96)
      {
        goto LABEL_19;
      }

      break;
    case 7u:
      v154 = *v46;
      *&v172 = 679043443;
      *(&v172 + 1) = 0xE400000000000000;
      v121 = sub_22BE2384C();
      goto LABEL_60;
    case 8u:
      v65 = &v46[*(sub_22BE5CE4C(&qword_27D90A8F8, &unk_22C2D1E90) + 48)];
      v66 = *v65;
      v67 = v65[8];
      v68 = v163;
      v69 = *(v163 + 32);
      v70 = sub_22BE33560();
      v71(v70);
      *&v172 = 0;
      *(&v172 + 1) = 0xE000000000000000;
      MEMORY[0x2318AB8D0](0x286B636970, 0xE500000000000000);
      sub_22BE1A5F0();
      sub_22BF043A8(v72, v73);
      v74 = sub_22C273FD4();
      MEMORY[0x2318AB8D0](v74);

      MEMORY[0x2318AB8D0](8236, 0xE200000000000000);
      v170 = v66;
      LOBYTE(v171) = v67;
      sub_22C273C24();
      sub_22BE1A8D0();
      v75 = *(v68 + 8);
      v76 = sub_22BE33560();
      v77(v76);
      goto LABEL_71;
    case 9u:
      v150 = sub_22BE24FEC();
      v151(v150);
      v63 = 0x286D7269666E6F63;
      v64 = 0xE800000000000000;
      goto LABEL_57;
    case 0xAu:
      v52 = *v46;
      v53 = *(v46 + 1);
      v54 = v46[17];
      *&v172 = 0;
      *(&v172 + 1) = 0xE000000000000000;
      sub_22C273AA4();
      MEMORY[0x2318AB8D0](0x28686372616573, 0xE700000000000000);
      String.escapedForPython.getter();

      sub_22BF0AFC4(34);
      v55 = sub_22BE260B8();
      MEMORY[0x2318AB8D0](v55);

      MEMORY[0x2318AB8D0](34, 0xE100000000000000);

      MEMORY[0x2318AB8D0](v170, v171);

      MEMORY[0x2318AB8D0](0x6E4F6B636970202CLL, 0xEA00000000003D65);
      LOBYTE(v170) = v54;
      sub_22BE5CE4C(&qword_27D9072A8, &qword_22C275110);
      sub_22C273C24();
      goto LABEL_63;
    case 0xBu:
      v61 = sub_22BE24FEC();
      v62(v61);
      v63 = 0x656E6F5F6B636970;
      v64 = 0xE900000000000028;
      goto LABEL_57;
    case 0xCu:
      v119 = *v46;
      strcpy(&v172, "resolve_tool(");
      HIWORD(v172) = -4864;
      v120 = MEMORY[0x277D837D0];
      v121 = v119;
LABEL_60:
      MEMORY[0x2318ABBB0](v121, v120);
      sub_22BE25C14();
      sub_22BE3E400();

      goto LABEL_63;
    case 0xDu:
      v50 = v161;
      sub_22BE27B84();
      sub_22BEBFD18();
      *&v172 = 0x286F646E75;
      *(&v172 + 1) = 0xE500000000000000;
      sub_22BE27B84();
      sub_22BE22868();
      v51 = v164;
      if (sub_22BE1AEA8(v7, 1, v164) == 1)
      {
        sub_22BE33928(v7, &qword_27D9082F0, &qword_22C27AB00);
      }

      else
      {
        sub_22C26E184();
        v157 = sub_22BE28D70();
        v158(v157, v51);
      }

      v159 = sub_22BE1B5EC();
      MEMORY[0x2318AB8D0](v159);

      sub_22BE1A8D0();
      sub_22BE33928(v50, &qword_27D9082F0, &qword_22C27AB00);
      goto LABEL_71;
    case 0xEu:
      v82 = sub_22BE24FEC();
      v83(v82);
      v63 = 0x287463656A6572;
      v64 = 0xE700000000000000;
LABEL_57:
      *&v172 = v63;
      *(&v172 + 1) = v64;
      sub_22BE1A5F0();
      sub_22BF043A8(v152, v153);
      v49 = sub_22C273FD4();
      goto LABEL_58;
    case 0xFu:
      v47 = sub_22BE24FEC();
      v48(v47);
      *&v172 = 0x286C65636E6163;
      *(&v172 + 1) = 0xE700000000000000;
      v49 = sub_22C26E184();
LABEL_58:
      MEMORY[0x2318AB8D0](v49);

      sub_22BE1A8D0();
      (*(v0 + 8))(v25, v37);
      goto LABEL_71;
    case 0x10u:
    case 0x11u:
    case 0x13u:
      sub_22BE3AC74();
      goto LABEL_71;
    case 0x12u:
      goto LABEL_71;
    default:
      sub_22BE1897C();
      sub_22BE200D4();
      sub_22BF042FC();
      AST.FlatValue.description.getter();
LABEL_70:
      sub_22BF042A8();
      goto LABEL_71;
  }

LABEL_20:
  v100 = v167;
  while (1)
  {
    v99 = v98 + 1;
    if (__OFADD__(v98, 1))
    {
      __break(1u);
LABEL_73:
      __break(1u);
      return;
    }

    if (v99 >= v97)
    {
      break;
    }

    v96 = *(v93 + 8 * v99);
    ++v98;
    if (v96)
    {
      v98 = v99;
      goto LABEL_25;
    }
  }

  v115 = sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90);
  sub_22BE19DC4(v100, 1, 1, v115);
  v96 = 0;
  while (1)
  {
    sub_22BEBFD18();
    v111 = sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90);
    if (sub_22BE1AEA8(v24, 1, v111) == 1)
    {
      break;
    }

    v112 = *v24;
    v113 = v24[1];
    v114 = *(v111 + 48);
    sub_22BE1897C();
    sub_22BF042FC();
    v170 = v112;
    v171 = v113;
    MEMORY[0x2318AB8D0](61, 0xE100000000000000);
    AST.FlatValue.description.getter();
    MEMORY[0x2318AB8D0]();

    MEMORY[0x2318AB8D0](8236, 0xE200000000000000);
    MEMORY[0x2318AB8D0](v170, v171);

    sub_22BE18D14();
    sub_22BF042A8();
    if (!v96)
    {
      goto LABEL_20;
    }

LABEL_19:
    v99 = v98;
LABEL_25:
    v101 = __clz(__rbit64(v96));
    v96 &= v96 - 1;
    v102 = v101 | (v99 << 6);
    v103 = (*(v166 + 48) + 16 * v102);
    v105 = *v103;
    v104 = v103[1];
    v106 = *(v166 + 56) + *(v168 + 72) * v102;
    sub_22BE17BEC();
    sub_22BF043F0();
    v107 = sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90);
    v108 = *(v107 + 48);
    v109 = v167;
    *v167 = v105;
    v109[1] = v104;
    v110 = v109;
    sub_22BE1897C();
    sub_22BF042FC();
    sub_22BE19DC4(v110, 0, 1, v107);
  }

  v155 = v166;

  v156 = *(v155 + 16);

  if (v156)
  {
    sub_22BEB790C(2);
  }

LABEL_63:
  sub_22BE1A8D0();
LABEL_71:
  sub_22BE1AABC();
}

uint64_t sub_22BEFEE00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x786966657270 && a2 == 0xE600000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7869666E69 && a2 == 0xE500000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 7630692 && a2 == 0xE300000000000000;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x800000022C2D3730 == a2;
            if (v10 || (sub_22C274014() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1819042147 && a2 == 0xE400000000000000;
              if (v11 || (sub_22C274014() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 7954803 && a2 == 0xE300000000000000;
                if (v12 || (sub_22C274014() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 1801677168 && a2 == 0xE400000000000000;
                  if (v13 || (sub_22C274014() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6D7269666E6F63 && a2 == 0xE700000000000000;
                    if (v14 || (sub_22C274014() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x686372616573 && a2 == 0xE600000000000000;
                      if (v15 || (sub_22C274014() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x656E4F6B636970 && a2 == 0xE700000000000000;
                        if (v16 || (sub_22C274014() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x5465766C6F736572 && a2 == 0xEB000000006C6F6FLL;
                          if (v17 || (sub_22C274014() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x69686374614D6F6ELL && a2 == 0xEE006C6F6F54676ELL;
                            if (v18 || (sub_22C274014() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 1868852853 && a2 == 0xE400000000000000;
                              if (v19 || (sub_22C274014() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x7463656A6572 && a2 == 0xE600000000000000;
                                if (v20 || (sub_22C274014() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6C65636E6163 && a2 == 0xE600000000000000;
                                  if (v21 || (sub_22C274014() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000010 && 0x800000022C2D37F0 == a2;
                                    if (v22 || (sub_22C274014() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x616C50664F646E65 && a2 == 0xE90000000000006ELL;
                                      if (v23 || (sub_22C274014() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else if (a1 == 0xD000000000000010 && 0x800000022C2D3750 == a2)
                                      {

                                        return 19;
                                      }

                                      else
                                      {
                                        v25 = sub_22C274014();

                                        if (v25)
                                        {
                                          return 19;
                                        }

                                        else
                                        {
                                          return 20;
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_22BEFF3E8(char a1)
{
  result = 0x65756C6176;
  switch(a1)
  {
    case 1:
      result = 0x786966657270;
      break;
    case 2:
      v3 = 1768320617;
      goto LABEL_10;
    case 3:
      result = 7630692;
      break;
    case 4:
      v3 = 1701080681;
LABEL_10:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x7800000000;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 1819042147;
      break;
    case 7:
      result = 7954803;
      break;
    case 8:
      result = 1801677168;
      break;
    case 9:
      result = 0x6D7269666E6F63;
      break;
    case 10:
      result = 0x686372616573;
      break;
    case 11:
      result = 0x656E4F6B636970;
      break;
    case 12:
      result = 0x5465766C6F736572;
      break;
    case 13:
      result = 0x69686374614D6F6ELL;
      break;
    case 14:
      result = 1868852853;
      break;
    case 15:
      result = 0x7463656A6572;
      break;
    case 16:
      result = 0x6C65636E6163;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    case 18:
      result = 0x616C50664F646E65;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BEFF5B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7563372 && a2 == 0xE300000000000000;
  if (v3 || (sub_22BE2BC78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    sub_22BE2BC78();
    sub_22BE417C8();
    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BEFF65C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449746E657665 && a2 == 0xE700000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22BEFF724(char a1)
{
  if (a1)
  {
    return 1701869940;
  }

  else
  {
    return 0x6449746E657665;
  }
}

uint64_t sub_22BEFF754(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22BEFF814(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736449746E657665 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BEFF8A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x800000022C2D3850 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656E4F6B636970 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

uint64_t sub_22BEFF9B8(char a1)
{
  if (!a1)
  {
    return 0x7972657571;
  }

  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  return 0x656E4F6B636970;
}

uint64_t sub_22BEFFA10(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6449746E657665 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_22BE2BC78();
    sub_22BE417C8();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BEFFA78(uint64_t a1)
{
  v2 = sub_22BF0764C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFFAB4(uint64_t a1)
{
  v2 = sub_22BF0764C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFFAF4(uint64_t a1)
{
  v2 = sub_22BF071FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFFB30(uint64_t a1)
{
  v2 = sub_22BF071FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFFB74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEFEE00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEFFB9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BEFF3E0();
  *a1 = result;
  return result;
}

uint64_t sub_22BEFFBC4(uint64_t a1)
{
  v2 = sub_22BF070AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFFC00(uint64_t a1)
{
  v2 = sub_22BF070AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFFC3C(uint64_t a1)
{
  v2 = sub_22BF07448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFFC78(uint64_t a1)
{
  v2 = sub_22BF07448();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFFCB4(uint64_t a1)
{
  v2 = sub_22BF07100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFFCF0(uint64_t a1)
{
  v2 = sub_22BF07100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFFD2C(uint64_t a1)
{
  v2 = sub_22BF077FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFFD68(uint64_t a1)
{
  v2 = sub_22BF077FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFFDA4(uint64_t a1)
{
  v2 = sub_22BF07154();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFFDE0(uint64_t a1)
{
  v2 = sub_22BF07154();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFFE1C(uint64_t a1)
{
  v2 = sub_22BF071A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFFE58(uint64_t a1)
{
  v2 = sub_22BF071A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFFE94(uint64_t a1)
{
  v2 = sub_22BF077A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFFED0(uint64_t a1)
{
  v2 = sub_22BF077A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFFF0C(uint64_t a1)
{
  v2 = sub_22BF07850();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFFF48(uint64_t a1)
{
  v2 = sub_22BF07850();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFFF84(uint64_t a1)
{
  v2 = sub_22BF072F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFFFC0(uint64_t a1)
{
  v2 = sub_22BF072F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF00004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEFF65C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF0002C(uint64_t a1)
{
  v2 = sub_22BF0749C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF00068(uint64_t a1)
{
  v2 = sub_22BF0749C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF000A4(uint64_t a1)
{
  v2 = sub_22BF073A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF000E0(uint64_t a1)
{
  v2 = sub_22BF073A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF0011C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEFF754(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF00144(uint64_t a1)
{
  v2 = sub_22BF078A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF00180(uint64_t a1)
{
  v2 = sub_22BF078A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF001BC(uint64_t a1)
{
  v2 = sub_22BF07250();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF001F8(uint64_t a1)
{
  v2 = sub_22BF07250();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF00234(uint64_t a1)
{
  v2 = sub_22BF0734C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF00270(uint64_t a1)
{
  v2 = sub_22BF0734C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF002B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEFF814(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BF002DC(uint64_t a1)
{
  v2 = sub_22BF07544();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF00318(uint64_t a1)
{
  v2 = sub_22BF07544();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF0035C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEFF8A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF00384(uint64_t a1)
{
  v2 = sub_22BF073F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF003C0(uint64_t a1)
{
  v2 = sub_22BF073F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF003FC(uint64_t a1)
{
  v2 = sub_22BF072A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF00438(uint64_t a1)
{
  v2 = sub_22BF072A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF00474(uint64_t a1)
{
  v2 = sub_22BF076A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF004B0(uint64_t a1)
{
  v2 = sub_22BF076A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF004EC(uint64_t a1)
{
  v2 = sub_22BF078F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF00528(uint64_t a1)
{
  v2 = sub_22BF078F8();

  return MEMORY[0x2821FE720](a1, v2);
}

void AST.FlatExpr.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v23;
  a20 = v24;
  v335 = v21;
  v336 = v20;
  v26 = v25;
  v27 = sub_22BE5CE4C(&qword_27D90AA98, &qword_22C288C20);
  v28 = sub_22BE179D8(v27);
  v327 = v29;
  v328 = v28;
  v31 = *(v30 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE1A174();
  v326 = v33;
  v34 = sub_22BE5CE4C(&qword_27D90AAA0, &qword_22C288C28);
  v35 = sub_22BE179D8(v34);
  v324 = v36;
  v325 = v35;
  v38 = *(v37 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  sub_22BE1A174();
  sub_22BF0AFA0(v40);
  v41 = sub_22BE5CE4C(&qword_27D90AAA8, &qword_22C288C30);
  sub_22BE18910(v41, &a17);
  v321 = v42;
  v44 = *(v43 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v45);
  sub_22BE1A174();
  sub_22BE190A8(v46);
  v323 = sub_22BE5CE4C(&qword_27D90AAB0, &qword_22C288C38);
  sub_22BE179D8(v323);
  v322[2] = v47;
  v49 = *(v48 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v50);
  sub_22BE1A174();
  sub_22BE190A8(v51);
  v52 = sub_22BE5CE4C(&qword_27D90AAB8, &qword_22C288C40);
  sub_22BE18910(v52, &a14);
  v318 = v53;
  v55 = *(v54 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v56);
  sub_22BE1A174();
  sub_22BE190A8(v57);
  v58 = sub_22BE5CE4C(&qword_27D90AAC0, &qword_22C288C48);
  sub_22BE18910(v58, &a10);
  v316 = v59;
  v61 = *(v60 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v62);
  sub_22BE1A174();
  sub_22BE190A8(v63);
  v64 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v64);
  v66 = *(v65 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v67);
  sub_22BE1A174();
  sub_22BE190A8(v68);
  v69 = sub_22BE5CE4C(&qword_27D90AAC8, &qword_22C288C50);
  sub_22BE18910(v69, &v336);
  v307 = v70;
  v72 = *(v71 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v73);
  sub_22BE1A174();
  sub_22BE190A8(v74);
  v75 = sub_22BE5CE4C(&qword_27D90AAD0, &qword_22C288C58);
  sub_22BE18910(v75, &v339);
  v312 = v76;
  v78 = *(v77 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v79);
  sub_22BE1A174();
  sub_22BE190A8(v80);
  v81 = sub_22BE5CE4C(&qword_27D90AAD8, &qword_22C288C60);
  sub_22BE18910(v81, &v333);
  v304 = v82;
  v84 = *(v83 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v85);
  sub_22BE1A174();
  sub_22BE190A8(v86);
  v87 = sub_22BE5CE4C(&qword_27D90AAE0, &qword_22C288C68);
  sub_22BE18910(v87, &v337);
  v309 = v88;
  v90 = *(v89 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v91);
  sub_22BE1A174();
  sub_22BE190A8(v92);
  v93 = sub_22BE5CE4C(&qword_27D90AAE8, &qword_22C288C70);
  sub_22BE18910(v93, &v326);
  v301[31] = v94;
  v96 = *(v95 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v97);
  sub_22BE1A174();
  sub_22BE190A8(v98);
  v99 = sub_22BE5CE4C(&qword_27D90AAF0, &qword_22C288C78);
  sub_22BE18910(v99, &v329);
  v303[0] = v100;
  v102 = *(v101 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v103);
  sub_22BE1A174();
  sub_22BE190A8(v104);
  v105 = sub_22C26E1D4();
  v106 = sub_22BE179D8(v105);
  v333 = v107;
  v334[0] = v106;
  v109 = *(v108 + 64);
  MEMORY[0x28223BE20](v106);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v110);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v111);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v112);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v113);
  sub_22BE19E94();
  v330 = v114;
  v115 = sub_22BE5CE4C(&qword_27D90AAF8, &qword_22C288C80);
  sub_22BE18910(v115, &v320);
  v301[22] = v116;
  v118 = *(v117 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v119);
  sub_22BE1A174();
  sub_22BE190A8(v120);
  v121 = sub_22BE5CE4C(&qword_27D90AB00, &qword_22C288C88);
  sub_22BE18910(v121, v322);
  v301[24] = v122;
  v124 = *(v123 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v125);
  sub_22BE1A174();
  sub_22BE190A8(v126);
  v127 = sub_22BE5CE4C(&qword_27D90AB08, &qword_22C288C90);
  sub_22BE18910(v127, &v311);
  v301[11] = v128;
  v130 = *(v129 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v131);
  sub_22BE1A174();
  sub_22BE190A8(v132);
  v133 = sub_22BE5CE4C(&qword_27D90AB10, &qword_22C288C98);
  sub_22BE18910(v133, v317);
  v301[18] = v134;
  v136 = *(v135 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v137);
  sub_22BE1A174();
  sub_22BE190A8(v138);
  v139 = sub_22BE5CE4C(&qword_27D90AB18, &qword_22C288CA0);
  sub_22BE18910(v139, &v315);
  v301[14] = v140;
  v142 = *(v141 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v143);
  sub_22BE1A174();
  sub_22BE190A8(v144);
  v145 = sub_22BE5CE4C(&qword_27D90AB20, &qword_22C288CA8);
  sub_22BE18910(v145, &v313);
  v301[12] = v146;
  v148 = *(v147 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v149);
  sub_22BE1A174();
  sub_22BE190A8(v150);
  v151 = sub_22BE5CE4C(&qword_27D90AB28, &qword_22C288CB0);
  sub_22BE18910(v151, &v306);
  v301[6] = v152;
  v154 = *(v153 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v155);
  sub_22BE1A174();
  sub_22BE190A8(v156);
  v157 = sub_22BE5CE4C(&qword_27D90AB30, &qword_22C288CB8);
  sub_22BE18910(v157, v303);
  v301[1] = v158;
  v160 = *(v159 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v161);
  sub_22BE2BB64();
  v332 = type metadata accessor for AST.FlatValue(0);
  v162 = sub_22BE18000(v332);
  v164 = *(v163 + 64);
  MEMORY[0x28223BE20](v162);
  sub_22BE17B98();
  v331[0] = v165;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v166);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v167);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v168);
  sub_22BE19490();
  v329 = v169;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v170);
  sub_22BE19490();
  v331[1] = v171;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v172);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v173);
  v174 = type metadata accessor for AST.FlatExpr(0);
  v175 = sub_22BE18000(v174);
  v177 = *(v176 + 64);
  MEMORY[0x28223BE20](v175);
  sub_22BE179EC();
  v180 = v179 - v178;
  v338 = sub_22BE5CE4C(&qword_27D90AB38, &qword_22C288CC0);
  sub_22BE179D8(v338);
  v334[1] = v181;
  v183 = *(v182 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v184);
  v186 = v301 - v185;
  v187 = *(v26 + 24);
  v188 = *(v26 + 32);
  v189 = sub_22BE27A44();
  sub_22BE26950(v189, v190);
  sub_22BF070AC();
  v337 = v186;
  sub_22C274234();
  sub_22BE1BEA0();
  sub_22BF043F0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v246 = *v180;
      v247 = *(sub_22BE5CE4C(&qword_27D90A918, &qword_22C2D1EB0) + 48);
      sub_22BE1897C();
      sub_22BF042FC();
      LOBYTE(v339) = 1;
      sub_22BF078A4();
      sub_22BE29E4C(&v304);
      sub_22BE41EC0();
      LOBYTE(v339) = v246;
      HIBYTE(a10) = 0;
      sub_22BEAB80C();
      v248 = v301[7];
      sub_22BE29460();
      sub_22C273FA4();
      if (!v21)
      {
        LOBYTE(v339) = 1;
        sub_22BE18538();
        sub_22BF043A8(v249, v250);
        sub_22BE36514();
        sub_22C273FA4();
      }

      v251 = sub_22BE1AB4C(&v305);
      v252(v251, v248);
      sub_22BE18D14();
      sub_22BF042A8();
      goto LABEL_44;
    case 2u:
      v224 = *v180;
      v225 = sub_22BE5CE4C(&qword_27D90A910, &unk_22C288B20);
      v226 = *(v225 + 48);
      v227 = *(v225 + 64);
      sub_22BF0AE88();
      sub_22BF042FC();
      sub_22BF042FC();
      LOBYTE(v339) = 2;
      sub_22BF07850();
      sub_22BE29E4C(&v307);
      v228 = v337;
      v188 = v338;
      sub_22C273EE4();
      LOBYTE(v339) = v224;
      HIBYTE(a10) = 0;
      sub_22BEAB764();
      sub_22BE3F43C(&v313);
      sub_22BE29460();
      sub_22C273FA4();
      if (v21)
      {
        v229 = sub_22BE1AB4C(&v310);
        v230(v229, v186);
        sub_22BE230C4();
        sub_22BF042A8();
        sub_22BF042A8();
        sub_22BE30F14();
        v214 = v228;
        goto LABEL_45;
      }

      sub_22BF0AFAC();
      sub_22BE18538();
      sub_22BF043A8(v293, v294);
      sub_22BE36514();
      sub_22C273FA4();
      LOBYTE(v339) = 2;
      sub_22BE36514();
      sub_22C273FA4();
      v299 = sub_22BE1AB4C(&v310);
      v300(v299, v186);
      sub_22BF042A8();
      sub_22BE1B074();
      sub_22BF042A8();
      sub_22BE30F14();
      v214 = v228;
      goto LABEL_51;
    case 3u:
      v237 = (v180 + *(sub_22BE5CE4C(&qword_27D90A908, &unk_22C2D1EA0) + 48));
      v239 = *v237;
      v238 = v237[1];
      sub_22BE1897C();
      sub_22BF042FC();
      LOBYTE(v339) = 3;
      sub_22BF077FC();
      sub_22BE29E4C(&v308);
      v240 = v337;
      v180 = v338;
      sub_22BE3788C();
      sub_22C273EE4();
      LOBYTE(v339) = 0;
      sub_22BE18538();
      sub_22BF043A8(v241, v242);
      sub_22BE3F43C(&v315);
      sub_22BE29460();
      sub_22C273FA4();
      if (!v21)
      {
        sub_22BF0AFAC();
        sub_22BE1B328();
        sub_22BE36514();
        sub_22C273F54();
      }

      v243 = sub_22BE1AB4C(&v312);
      v244(v243, v186);
      sub_22BE18D14();
      sub_22BF042A8();
      goto LABEL_47;
    case 4u:
      v208 = *(sub_22BE5CE4C(&qword_27D90A900, &unk_22C288B10) + 48);
      sub_22BF0AE88();
      sub_22BF042FC();
      sub_22BF042FC();
      LOBYTE(v339) = 4;
      sub_22BF077A8();
      sub_22BE29E4C(&v314);
      v209 = v338;
      sub_22BE1B934();
      sub_22C273EE4();
      LOBYTE(v339) = 0;
      sub_22BE18538();
      sub_22BF043A8(v210, v211);
      sub_22BE3F43C(v317);
      sub_22BE29460();
      sub_22C273FA4();
      if (v21)
      {
        v212 = sub_22BE1AB4C(&v316);
        v213(v212, v186);
        sub_22BE230C4();
        sub_22BF042A8();
        sub_22BE1B074();
        sub_22BF042A8();
        v214 = sub_22BE2399C();
        v216 = v209;
      }

      else
      {
        sub_22BF0AFAC();
        sub_22BE36514();
        sub_22C273FA4();
        v291 = sub_22BE1AB4C(&v316);
        v292(v291, v186);
        sub_22BE230C4();
        sub_22BF042A8();
        sub_22BE1B074();
        sub_22BF042A8();
        sub_22BE30F14();
        v214 = v337;
LABEL_51:
        v216 = v338;
      }

      goto LABEL_49;
    case 5u:
      v254 = *v180;
      LOBYTE(v339) = 5;
      sub_22BF076A0();
      v218 = v301[8];
      sub_22BE261D0();
      sub_22C273EE4();
      v339 = v254;
      sub_22BE5CE4C(&qword_27D90ABD8, &qword_22C288CD0);
      sub_22BF076F4();
      sub_22BE22960();
      sub_22BE18070(&v311);
      v219 = &v309;
      goto LABEL_25;
    case 6u:
      v264 = *v180;
      v263 = *(v180 + 8);
      v265 = *(v180 + 16);
      LOBYTE(v339) = 6;
      sub_22BF0764C();
      sub_22BE29E4C(&v318);
      sub_22BE41EC0();
      LOBYTE(v339) = 0;
      sub_22BE1B328();
      v266 = v301[25];
      sub_22BE3BEE8();
      sub_22C273F54();
      if (v21)
      {

        v267 = sub_22BE1AB4C(&v321);
        v269 = v266;
LABEL_43:
        v268(v267, v269);
LABEL_44:
        sub_22BE30F14();
        v214 = v186;
LABEL_45:
        v216 = v188;
LABEL_49:
        v215(v214, v216);
      }

      else
      {

        v339 = v265;
        HIBYTE(a10) = 1;
        sub_22BE5CE4C(&qword_27D90A9D0, &qword_22C288BA0);
        sub_22BF06B7C();
        sub_22BE22960();
        sub_22BE36514();
        sub_22C273FA4();
        v295 = sub_22BE1AB4C(&v321);
        v296(v295, v266);
        sub_22BE30F14();
        v256 = v186;
LABEL_26:
        v257(v256);
      }

LABEL_50:
      sub_22BE18478();
      return;
    case 7u:
      v245 = *v180;
      LOBYTE(v339) = 7;
      sub_22BF07544();
      v218 = v301[20];
      sub_22BE261D0();
      sub_22C273EE4();
      v339 = v245;
      sub_22BE5CE4C(&qword_27D90ABB8, &qword_22C288CC8);
      sub_22BF07598();
      sub_22BE22960();
      sub_22BE18070(&v320);
      v219 = &v319;
      goto LABEL_25;
    case 8u:
      v276 = v180 + *(sub_22BE5CE4C(&qword_27D90A8F8, &unk_22C2D1E90) + 48);
      v336 = *v276;
      LODWORD(v332) = *(v276 + 8);
      v278 = v333;
      v277 = v334[0];
      v279 = *(v333 + 32);
      v280 = v330;
      v281 = sub_22BE200D4();
      v282(v281);
      LOBYTE(v339) = 8;
      sub_22BF0749C();
      sub_22BE3C6E0(&v327);
      v240 = v337;
      v180 = v338;
      sub_22BE3788C();
      sub_22C273EE4();
      LOBYTE(v339) = 0;
      sub_22BE1A5F0();
      sub_22BF043A8(v283, v284);
      v285 = v303[1];
      v286 = v335;
      sub_22C273FA4();
      if (v286)
      {
        v287 = sub_22BE194B4(&v328);
        v288(v287, v285);
        (*(v278 + 8))(v280, v277);
      }

      else
      {
        v339 = v336;
        v340 = v332;
        HIBYTE(a10) = 1;
        sub_22BF074F0();
        sub_22C273FA4();
        v297 = sub_22BE194B4(&v328);
        v298(v297, v285);
        (*(v278 + 8))(v330, v277);
      }

LABEL_47:
      sub_22BE30F14();
      v214 = v240;
      goto LABEL_48;
    case 9u:
      sub_22BE27268();
      v220 = sub_22BE28F24();
      v221(v220);
      LOBYTE(v339) = 9;
      sub_22BF07448();
      sub_22BE201A8(&v324);
      sub_22BE1A5F0();
      sub_22BF043A8(v222, v223);
      sub_22BE3356C();
      sub_22BE3F43C(&v326);
      sub_22BE3BEE8();
      sub_22C273FA4();
      v203 = &v325;
      goto LABEL_13;
    case 0xAu:
      v271 = *v180;
      v270 = *(v180 + 8);
      v272 = *(v180 + 16);
      v273 = *(v180 + 17);
      LOBYTE(v339) = 10;
      sub_22BF073F4();
      sub_22BE41EC0();
      LOBYTE(v339) = 0;
      sub_22BE1AB1C();
      v274 = v311;
      v275 = v335;
      sub_22C273F54();

      if (!v275)
      {
        sub_22BF0AFAC();
        sub_22C273F64();
        LOBYTE(v339) = 2;
        sub_22C273F04();
      }

      v267 = sub_22BE19698(&v335);
      v269 = v274;
      goto LABEL_43;
    case 0xBu:
      sub_22BE27268();
      v204 = sub_22BE28F24();
      v205(v204);
      LOBYTE(v339) = 11;
      sub_22BF073A0();
      sub_22BE201A8(&v330);
      sub_22BE1A5F0();
      sub_22BF043A8(v206, v207);
      sub_22BE3356C();
      sub_22BE3F43C(&v333);
      sub_22BE3BEE8();
      sub_22C273FA4();
      v203 = v331;
      goto LABEL_13;
    case 0xCu:
      v217 = *v180;
      LOBYTE(v339) = 12;
      sub_22BF0734C();
      v218 = v308;
      sub_22BE261D0();
      sub_22C273EE4();
      v339 = v217;
      sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
      sub_22BE48EF8(&qword_28106DBE8);
      sub_22BE22960();
      sub_22BE18070(&v339);
      v219 = &v338;
LABEL_25:
      sub_22BE1B5D4(v219);
      v255(v218, v188);
      sub_22BE30F14();
      v256 = sub_22BE1B328();
      goto LABEL_26;
    case 0xDu:
      v258 = v314;
      sub_22BEBFD18();
      LOBYTE(v339) = 14;
      sub_22BF072A4();
      sub_22BE204A4(&v341);
      sub_22BE4129C();
      sub_22BE1A5F0();
      sub_22BF043A8(v259, v260);
      sub_22C273F34();
      sub_22BE1B5D4(&a9);
      v261 = sub_22BE33560();
      v262(v261);
      sub_22BE33928(v258, &qword_27D9082F0, &qword_22C27AB00);
      goto LABEL_14;
    case 0xEu:
      sub_22BE27268();
      v199 = sub_22BE28F24();
      v200(v199);
      LOBYTE(v339) = 15;
      sub_22BF07250();
      sub_22BE201A8(&a11);
      sub_22BE1A5F0();
      sub_22BF043A8(v201, v202);
      sub_22BE3356C();
      sub_22BE3F43C(&a14);
      sub_22BE3BEE8();
      sub_22C273FA4();
      v203 = &a12;
      goto LABEL_13;
    case 0xFu:
      sub_22BE27268();
      v231 = sub_22BE28F24();
      v232(v231);
      LOBYTE(v339) = 16;
      sub_22BF071FC();
      sub_22BE201A8(&a16);
      sub_22BE1A5F0();
      sub_22BF043A8(v233, v234);
      sub_22BE3356C();
      v186 = v323;
      sub_22BE3BEE8();
      sub_22C273FA4();
      v203 = &a18;
LABEL_13:
      v235 = sub_22BE1AB4C(v203);
      v236(v235, v186);
      (*(v188 + 8))(v22, v174);
      goto LABEL_14;
    case 0x10u:
      LOBYTE(v339) = 13;
      sub_22BF072F8();
      sub_22BE3C6E0(&v332);
      sub_22BE3788C();
      sub_22C273EE4();
      v196 = sub_22BE194B4(v334);
      v198 = &v336;
      goto LABEL_23;
    case 0x11u:
      LOBYTE(v339) = 17;
      sub_22BF071A8();
      sub_22BE3C6E0(&a13);
      sub_22BE3788C();
      sub_22C273EE4();
      v196 = sub_22BE194B4(&a15);
      v198 = &a17;
LABEL_23:
      v253 = *(v198 - 32);
      goto LABEL_37;
    case 0x12u:
      LOBYTE(v339) = 18;
      sub_22BF07154();
      sub_22BE3788C();
      sub_22C273EE4();
      goto LABEL_36;
    case 0x13u:
      LOBYTE(v339) = 19;
      sub_22BF07100();
      sub_22BE3788C();
      sub_22C273EE4();
LABEL_36:
      v196 = sub_22BE2399C();
LABEL_37:
      v197(v196, v253);
      sub_22BE30F14();
      v289 = sub_22BE18944();
      v290(v289);
      goto LABEL_50;
    default:
      sub_22BF042FC();
      LOBYTE(v339) = 0;
      sub_22BF078F8();
      sub_22BE4129C();
      sub_22BE18538();
      sub_22BF043A8(v191, v192);
      v193 = v301[2];
      sub_22C273FA4();
      v194 = sub_22BE19698(&v302);
      v195(v194, v193);
      sub_22BE18D14();
      sub_22BF042A8();
LABEL_14:
      v214 = sub_22BE2399C();
LABEL_48:
      v216 = v180;
      goto LABEL_49;
  }
}

void AST.FlatExpr.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v26;
  a20 = v27;
  v410 = v20;
  v29 = v28;
  v401 = v30;
  v407 = sub_22BE5CE4C(&qword_27D90AC18, &qword_22C288CD8);
  sub_22BE179D8(v407);
  v403 = v31;
  v33 = *(v32 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE1A174();
  v402 = v35;
  v36 = sub_22BE5CE4C(&qword_27D90AC20, &qword_22C288CE0);
  sub_22BE18910(v36, v412);
  v382[0] = v37;
  v39 = *(v38 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v40);
  sub_22BE1A174();
  v400 = v41;
  v42 = sub_22BE5CE4C(&qword_27D90AC28, &qword_22C288CE8);
  sub_22BE18910(v42, &v408);
  v378 = v43;
  v45 = *(v44 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v46);
  sub_22BE1A174();
  v398 = v47;
  v48 = sub_22BE5CE4C(&qword_27D90AC30, &qword_22C288CF0);
  sub_22BE18910(v48, &v410);
  v380 = v49;
  v51 = *(v50 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v52);
  sub_22BE1A174();
  v399 = v53;
  v54 = sub_22BE5CE4C(&qword_27D90AC38, &qword_22C288CF8);
  sub_22BE18910(v54, &v406);
  v376 = v55;
  v57 = *(v56 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v58);
  sub_22BE1A174();
  v397 = v59;
  v60 = sub_22BE5CE4C(&qword_27D90AC40, &qword_22C288D00);
  sub_22BE18910(v60, &v404);
  v374 = v61;
  v63 = *(v62 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v64);
  sub_22BE1A174();
  v396 = v65;
  v66 = sub_22BE5CE4C(&qword_27D90AC48, &qword_22C288D08);
  sub_22BE18910(v66, &v399);
  v370 = v67;
  v69 = *(v68 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v70);
  sub_22BE1A174();
  v394[0] = v71;
  v72 = sub_22BE5CE4C(&qword_27D90AC50, &qword_22C288D10);
  sub_22BE18910(v72, &v402);
  v373 = v73;
  v75 = *(v74 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v76);
  sub_22BE1A174();
  v395 = v77;
  v78 = sub_22BE5CE4C(&qword_27D90AC58, &qword_22C288D18);
  sub_22BE18910(v78, &v397);
  v369 = v79;
  v81 = *(v80 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v82);
  sub_22BE1A174();
  sub_22BF0AFA0(v83);
  v84 = sub_22BE5CE4C(&qword_27D90AC60, &qword_22C288D20);
  sub_22BE18910(v84, &v400);
  v353 = v85;
  v87 = *(v86 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v88);
  sub_22BE1A174();
  v394[1] = v89;
  v90 = sub_22BE5CE4C(&qword_27D90AC68, &qword_22C288D28);
  sub_22BE18910(v90, v394);
  v366 = v91;
  v93 = *(v92 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v94);
  sub_22BE1A174();
  sub_22BE190A8(v95);
  v96 = sub_22BE5CE4C(&qword_27D90AC70, &qword_22C288D30);
  sub_22BE18910(v96, &v395);
  v367 = v97;
  v99 = *(v98 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v100);
  sub_22BE1A174();
  sub_22BE190A8(v101);
  v102 = sub_22BE5CE4C(&qword_27D90AC78, &qword_22C288D38);
  sub_22BE18910(v102, &v390);
  v362 = v103;
  v105 = *(v104 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v106);
  sub_22BE1A174();
  sub_22BE190A8(v107);
  v108 = sub_22BE5CE4C(&qword_27D90AC80, &qword_22C288D40);
  sub_22BE18910(v108, &v392);
  v364 = v109;
  v111 = *(v110 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v112);
  sub_22BE1A174();
  sub_22BE190A8(v113);
  v114 = sub_22BE5CE4C(&qword_27D90AC88, &qword_22C288D48);
  sub_22BE18910(v114, &v385);
  v357 = v115;
  v117 = *(v116 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v118);
  sub_22BE1A174();
  sub_22BE190A8(v119);
  v120 = sub_22BE5CE4C(&qword_27D90AC90, &qword_22C288D50);
  sub_22BE18910(v120, &v388);
  v360 = v121;
  v123 = *(v122 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v124);
  sub_22BE1A174();
  sub_22BE190A8(v125);
  v126 = sub_22BE5CE4C(&qword_27D90AC98, &qword_22C288D58);
  sub_22BE18910(v126, &v386);
  v358 = v127;
  v129 = *(v128 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v130);
  sub_22BE1A174();
  sub_22BE190A8(v131);
  v406 = sub_22BE5CE4C(&qword_27D90ACA0, &qword_22C288D60);
  sub_22BE179D8(v406);
  v352 = v132;
  v134 = *(v133 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v135);
  sub_22BE1A174();
  sub_22BE190A8(v136);
  v137 = sub_22BE5CE4C(&qword_27D90ACA8, &qword_22C288D68);
  sub_22BE18910(v137, &v383);
  v355 = v138;
  v140 = *(v139 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v141);
  sub_22BE1A174();
  sub_22BE190A8(v142);
  v143 = sub_22BE5CE4C(&qword_27D90ACB0, &qword_22C288D70);
  sub_22BE18910(v143, v382);
  v354 = v144;
  v146 = *(v145 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v147);
  sub_22BE1A174();
  sub_22BE190A8(v148);
  v408 = sub_22BE5CE4C(&qword_27D90ACB8, &qword_22C288D78);
  sub_22BE179D8(v408);
  v405 = v149;
  v151 = *(v150 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v152);
  sub_22BE1A174();
  v411 = v153;
  v154 = sub_22BE183BC();
  v404 = type metadata accessor for AST.FlatExpr(v154);
  v155 = sub_22BE18000(v404);
  v157 = *(v156 + 64);
  MEMORY[0x28223BE20](v155);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v158);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v159);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v160);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v161);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v162);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v163);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v164);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v165);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v166);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v167);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v168);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v169);
  sub_22BE18094();
  MEMORY[0x28223BE20](v170);
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v171);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v172);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v173);
  v175 = &v342 - v174;
  v176 = v29[3];
  v177 = v29[4];
  v409 = v29;
  sub_22BE26950(v29, v176);
  sub_22BF070AC();
  v178 = v410;
  sub_22C274214();
  if (!v178)
  {
    v345 = v24;
    v347 = v21;
    v348 = v25;
    v349 = v23;
    v346 = v22;
    v179 = v406;
    v410 = v175;
    v180 = v411;
    v181 = sub_22C273ED4();
    sub_22BE7C5C4(v181, 0);
    if (v183 != v184 >> 1)
    {
      v344 = 0;
      if (v183 >= (v184 >> 1))
      {
        __break(1u);
LABEL_34:
        swift_unknownObjectRelease();
        v332 = sub_22BE360C8(&v374);
        v333(v332, v180);
        v334 = sub_22BE28C70();
        v335(v334);
LABEL_30:
        swift_storeEnumTagMultiPayload();
        sub_22BE191F0();
LABEL_31:
        sub_22BF042FC();
LABEL_32:
        v331 = v409;
        sub_22BE191F0();
        sub_22BF042FC();
        v205 = v331;
        goto LABEL_9;
      }

      v343 = *(v182 + v183);
      v185 = sub_22BE7C5C0(v183 + 1);
      v187 = v186;
      v189 = v188;
      swift_unknownObjectRelease();
      v190 = v185;
      if (v187 == v189 >> 1)
      {
        v191 = v403;
        switch(v343)
        {
          case 1:
            sub_22BF0AF1C();
            sub_22BF078A4();
            v224 = v384[1];
            sub_22BE1AB8C();
            LOBYTE(a10) = 0;
            sub_22BEB9B4C();
            v225 = v356;
            sub_22BE285D4();
            sub_22C273EB4();
            sub_22BE232F0();
            v407 = *(sub_22BE5CE4C(&qword_27D90A918, &qword_22C2D1EB0) + 48);
            type metadata accessor for AST.FlatValue(0);
            sub_22BF0AF1C();
            sub_22BE18538();
            sub_22BF043A8(v293, v294);
            sub_22BE285D4();
            sub_22C273EB4();
            v295 = v355;
            swift_unknownObjectRelease();
            (*(v295 + 8))(v224, v225);
            v320 = sub_22BE3C36C();
            v321(v320);
            sub_22BE2384C();
            goto LABEL_30;
          case 2:
            LOBYTE(a10) = 2;
            sub_22BF07850();
            sub_22BE1B754(&a13);
            sub_22BE22C34();
            v407 = v190;
            LOBYTE(a10) = 0;
            sub_22BEB9AF8();
            sub_22BE261D0();
            sub_22C273EB4();
            v180 = v179;
            v273 = sub_22BE5CE4C(&qword_27D90A910, &unk_22C288B20);
            v274 = *(v273 + 48);
            sub_22BF0B008();
            sub_22BF0AF1C();
            sub_22BE18538();
            sub_22BF043A8(v275, v276);
            sub_22BF0AF44();
            v312 = *(v273 + 64);
            LOBYTE(a10) = 2;
            sub_22BF0AF44();
            goto LABEL_34;
          case 3:
            LOBYTE(a10) = 3;
            sub_22BF077FC();
            sub_22BE3C6E0(&a12);
            sub_22BE22C34();
            sub_22BF0B008();
            LOBYTE(a10) = 0;
            sub_22BE18538();
            sub_22BF043A8(v219, v220);
            v221 = v359;
            sub_22BF0AF78();
            sub_22C273EB4();
            sub_22BE232F0();
            sub_22BF0AF1C();
            sub_22BF0AF78();
            v281 = sub_22C273E64();
            v282 = v179;
            v283 = v358;
            v314 = v313;
            v407 = v281;
            swift_unknownObjectRelease();
            v315 = sub_22BE5CE4C(&qword_27D90A908, &unk_22C2D1EA0);
            v316 = v283;
            v317 = (v348 + *(v315 + 48));
            (*(v316 + 8))(v282, v221);
            v318 = sub_22BE3C36C();
            v319(v318);
            *v317 = v407;
            v317[1] = v314;
            swift_storeEnumTagMultiPayload();
            sub_22BE191F0();
            goto LABEL_31;
          case 4:
            LOBYTE(a10) = 4;
            sub_22BF077A8();
            sub_22BE1B754(&a14);
            sub_22BE22C34();
            sub_22BF0B008();
            LOBYTE(a10) = 0;
            sub_22BE18538();
            sub_22BF043A8(v212, v213);
            v214 = v361;
            sub_22C273EB4();
            sub_22BE232F0();
            v264 = *(sub_22BE5CE4C(&qword_27D90A900, &unk_22C288B10) + 48);
            LOBYTE(a10) = 1;
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v308 = sub_22BE360C8(&v387);
            v309(v308, v214);
            v310 = sub_22BE3C36C();
            v311(v310);
            sub_22BE2384C();
            goto LABEL_30;
          case 5:
            LOBYTE(a10) = 5;
            sub_22BF076A0();
            sub_22BE1B754(&a11);
            sub_22BE22C34();
            sub_22BE5CE4C(&qword_27D90ABD8, &qword_22C288CD0);
            sub_22BF07A54();
            sub_22BE32C6C();
            sub_22BE1B1D0();
            sub_22BE36708();
            swift_unknownObjectRelease();
            sub_22BE1B5D4(v384);
            v296 = sub_22BE1B328();
            v297(v296);
            v298 = sub_22BE258E4();
            v299(v298);
            sub_22BE35514(a10);
            goto LABEL_30;
          case 6:
            LOBYTE(a10) = 6;
            sub_22BF0764C();
            sub_22BE3C6E0(&a16);
            sub_22BE22C34();
            LOBYTE(a10) = 0;
            v234 = v365;
            sub_22BF0AF78();
            sub_22C273E64();
            sub_22BE232F0();
            v301 = v300;
            v407 = v302;
            sub_22BE5CE4C(&qword_27D90A9D0, &qword_22C288BA0);
            v412[7] = 1;
            sub_22BF06F1C();
            sub_22BE32C6C();
            sub_22BF0AF78();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v322 = sub_22BE194B4(&v391);
            v323(v322, v234);
            v324 = sub_22BE3C36C();
            v325(v324);
            v326 = a10;
            v327 = v351;
            *v351 = v407;
            v327[1] = v301;
            v327[2] = v326;
            sub_22BE37BB8();
            goto LABEL_30;
          case 7:
            LOBYTE(a10) = 7;
            sub_22BF07544();
            sub_22BE3C6E0(&a15);
            sub_22BE22C34();
            sub_22BE5CE4C(&qword_27D90ABB8, &qword_22C288CC8);
            sub_22BF079A0();
            sub_22BE32C6C();
            v222 = v363;
            sub_22BE27B84();
            sub_22BF0AF78();
            sub_22C273EB4();
            v223 = v405;
            swift_unknownObjectRelease();
            v284 = sub_22BE194B4(&v389);
            v285(v284, v222);
            v286 = *(v223 + 8);
            v287 = sub_22BE1824C();
            v288(v287);
            sub_22BE35514(a10);
            goto LABEL_30;
          case 8:
            LOBYTE(a10) = 8;
            sub_22BF0749C();
            v242 = v392;
            sub_22BE1AB8C();
            sub_22C26E1D4();
            LOBYTE(a10) = 0;
            sub_22BE1A5F0();
            sub_22BF043A8(v243, v244);
            v245 = v368;
            sub_22BE285D4();
            sub_22C273EB4();
            v246 = v405;
            v306 = *(sub_22BE5CE4C(&qword_27D90A8F8, &unk_22C2D1E90) + 48);
            sub_22BF0AF1C();
            sub_22BF0794C();
            sub_22BE1B934();
            sub_22BE285D4();
            sub_22C273EB4();
            v307 = v367;
            swift_unknownObjectRelease();
            (*(v307 + 8))(v242, v245);
            v328 = *(v246 + 8);
            v329 = sub_22BE1824C();
            v330(v329);
            sub_22BE2384C();
            goto LABEL_30;
          case 9:
            LOBYTE(a10) = 9;
            sub_22BF07448();
            sub_22BE1AB8C();
            sub_22C26E1D4();
            sub_22BE1A5F0();
            sub_22BF043A8(v215, v216);
            sub_22BE1C1A4(&v376);
            sub_22BE26984();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v269 = sub_22BE19EC8(&v393);
            v270(v269);
            v271 = sub_22BE2B7E8();
            v272(v271);
            sub_22BF0AF6C();
            goto LABEL_30;
          case 10:
            LOBYTE(a10) = 10;
            sub_22BF073F4();
            sub_22BE22C34();
            LOBYTE(a10) = 0;
            v239 = v372;
            v240 = sub_22C273E64();
            v241 = v405;
            v303 = v240;
            v305 = v304;
            sub_22BF0AF1C();
            LODWORD(v407) = sub_22C273E74();
            LOBYTE(a10) = 2;
            LODWORD(v406) = sub_22C273E14();
            swift_unknownObjectRelease();
            v336 = sub_22BE360C8(&v375);
            v337(v336, v239);
            v338 = *(v241 + 8);
            v339 = sub_22BF0AFB8();
            v340(v339);
            v341 = v350;
            *v350 = v303;
            v341[1] = v305;
            *(v341 + 16) = v407 & 1;
            *(v341 + 17) = v406;
            sub_22BE37BB8();
            goto LABEL_30;
          case 11:
            LOBYTE(a10) = 11;
            sub_22BF073A0();
            sub_22BE1AB8C();
            sub_22C26E1D4();
            sub_22BE1A5F0();
            sub_22BF043A8(v210, v211);
            sub_22BE1C1A4(&v377);
            sub_22BE26984();
            sub_22C273EB4();
            sub_22BE36708();
            swift_unknownObjectRelease();
            v260 = sub_22BE19EC8(&v396);
            v261(v260);
            v262 = sub_22BE258E4();
            v263(v262);
            sub_22BF0AF6C();
            goto LABEL_30;
          case 12:
            LOBYTE(a10) = 12;
            sub_22BF0734C();
            sub_22BE1AB8C();
            sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
            sub_22BE48EF8(&qword_28106DBD8);
            sub_22BE32C6C();
            sub_22BE26984();
            sub_22C273EB4();
            sub_22BE36708();
            swift_unknownObjectRelease();
            v265 = sub_22BE19EC8(&v401);
            v266(v265);
            v267 = sub_22BE258E4();
            v268(v267);
            sub_22BE35514(a10);
            goto LABEL_30;
          case 13:
            LOBYTE(a10) = 13;
            sub_22BF072F8();
            v230 = v394[0];
            sub_22BE22C34();
            swift_unknownObjectRelease();
            sub_22BE1B5D4(&v398);
            v231(v230, v371);
            v232 = sub_22BE2B7E8();
            v233(v232);
            sub_22BE22DC4();
            break;
          case 14:
            LOBYTE(a10) = 14;
            sub_22BF072A4();
            sub_22BE1AB8C();
            sub_22C26E1D4();
            sub_22BE1A5F0();
            sub_22BF043A8(v208, v209);
            sub_22BE1C1A4(&v378);
            sub_22BE26984();
            sub_22C273E44();
            sub_22BE36708();
            swift_unknownObjectRelease();
            v256 = sub_22BE19EC8(&v403);
            v257(v256);
            v258 = sub_22BE258E4();
            v259(v258);
            sub_22BF0AF6C();
            goto LABEL_30;
          case 15:
            LOBYTE(a10) = 15;
            sub_22BF07250();
            sub_22BE1AB8C();
            sub_22C26E1D4();
            sub_22BE1A5F0();
            sub_22BF043A8(v217, v218);
            sub_22BE1C1A4(&v379);
            sub_22BE26984();
            sub_22C273EB4();
            sub_22BE36708();
            swift_unknownObjectRelease();
            v277 = sub_22BE19EC8(&v405);
            v278(v277);
            v279 = sub_22BE258E4();
            v280(v279);
            sub_22BF0AF6C();
            goto LABEL_30;
          case 16:
            LOBYTE(a10) = 16;
            sub_22BF071FC();
            sub_22BE1AB8C();
            sub_22C26E1D4();
            sub_22BE1A5F0();
            sub_22BF043A8(v206, v207);
            sub_22BE1C1A4(&v380);
            sub_22BE26984();
            sub_22C273EB4();
            sub_22BE36708();
            swift_unknownObjectRelease();
            v252 = sub_22BE19EC8(&v409);
            v253(v252);
            v254 = sub_22BE258E4();
            v255(v254);
            sub_22BF0AF6C();
            goto LABEL_30;
          case 17:
            LOBYTE(a10) = 17;
            sub_22BF071A8();
            v226 = v398;
            sub_22BE22C34();
            swift_unknownObjectRelease();
            sub_22BE1B5D4(&v407);
            v227(v226, v379);
            v228 = sub_22BE2B7E8();
            v229(v228);
            sub_22BE22DC4();
            break;
          case 18:
            LOBYTE(a10) = 18;
            sub_22BF07154();
            v235 = v400;
            sub_22BE22C34();
            swift_unknownObjectRelease();
            sub_22BE1B5D4(&v411);
            v236(v235, v382[1]);
            v237 = sub_22BE2B7E8();
            v238(v237);
            sub_22BE22DC4();
            break;
          case 19:
            LOBYTE(a10) = 19;
            sub_22BF07100();
            sub_22BE1AB8C();
            swift_unknownObjectRelease();
            v247 = *(v191 + 8);
            v248 = sub_22BE1B074();
            v249(v248);
            v250 = sub_22BE2B7E8();
            v251(v250);
            sub_22BE22DC4();
            break;
          default:
            LOBYTE(a10) = 0;
            sub_22BF078F8();
            sub_22BE1B754(&a9);
            sub_22BE22C34();
            sub_22BF0B008();
            sub_22BE18538();
            sub_22BF043A8(v192, v193);
            sub_22BE1B1D0();
            sub_22BE36708();
            swift_unknownObjectRelease();
            sub_22BE1B5D4(&v381);
            v289 = sub_22BE1B328();
            v290(v289);
            v291 = sub_22BE258E4();
            v292(v291);
            goto LABEL_30;
        }

        swift_storeEnumTagMultiPayload();
        goto LABEL_32;
      }
    }

    v194 = v404;
    sub_22C273B34();
    swift_allocError();
    v196 = v195;
    v197 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v196 = v194;
    sub_22C273DF4();
    sub_22BE1B198();
    v198 = *MEMORY[0x277D84160];
    sub_22BE18994();
    v200 = *(v199 + 104);
    v201 = sub_22BE38608();
    v202(v201);
    swift_willThrow();
    swift_unknownObjectRelease();
    v203 = sub_22BE2B7E8();
    v204(v203);
  }

  v205 = v409;
LABEL_9:
  sub_22BE26B64(v205);
  sub_22BE18478();
}

uint64_t sub_22BF042A8()
{
  v1 = sub_22BE17BC4();
  v3 = v2(v1);
  sub_22BE18000(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_22BF042FC()
{
  sub_22BE18378();
  v2 = v1(0);
  sub_22BE18000(v2);
  v4 = *(v3 + 32);
  v5 = sub_22BE19454();
  v6(v5);
  return v0;
}

unint64_t sub_22BF04354()
{
  result = qword_27D90A928;
  if (!qword_27D90A928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A928);
  }

  return result;
}

uint64_t sub_22BF043A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BF043F0()
{
  sub_22BE18378();
  v2 = v1(0);
  sub_22BE18000(v2);
  v4 = *(v3 + 16);
  v5 = sub_22BE19454();
  v6(v5);
  return v0;
}

uint64_t AST.Update.path.getter()
{
  v1 = *(v0 + *(type metadata accessor for AST.Update(0) + 20));
}

uint64_t AST.Update.path.setter()
{
  v2 = sub_22BE17BC4();
  v3 = *(type metadata accessor for AST.Update(v2) + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t AST.Update.path.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for AST.Update(v0) + 20);
  return sub_22BE18504();
}

uint64_t AST.Update.kind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AST.Update(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t AST.Update.kind.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AST.Update(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t AST.Update.kind.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for AST.Update(v0) + 24);
  return sub_22BE18504();
}

uint64_t AST.Update.value.getter()
{
  v0 = *(type metadata accessor for AST.Update(0) + 28);
  sub_22BE17BEC();
  return sub_22BF043F0();
}

uint64_t AST.Update.value.setter()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for AST.Update(v0) + 28);
  sub_22BE1897C();
  return sub_22BF07B08();
}

uint64_t AST.Update.value.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for AST.Update(v0) + 28);
  return sub_22BE18504();
}

uint64_t AST.Update.init(lhs:path:kind:value:)@<X0>(uint64_t a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_22BF042FC();
  v6 = type metadata accessor for AST.Update(0);
  *(a3 + v6[5]) = a1;
  *(a3 + v6[6]) = v5;
  v7 = v6[7];
  return sub_22BF042FC();
}

void static AST.Update.== infix(_:_:)()
{
  sub_22BE18378();
  static AST.FlatValue.== infix(_:_:)();
  if (v2)
  {
    v3 = type metadata accessor for AST.Update(0);
    v4 = v3[5];
    v5 = *(v1 + v4);
    v6 = *(v0 + v4);
    sub_22BEA22B8();
    if ((v7 & 1) != 0 && *(v1 + v3[6]) == *(v0 + v3[6]))
    {
      v8 = v3[7];

      static AST.FlatValue.== infix(_:_:)();
    }
  }
}

uint64_t sub_22BF04800(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7563372 && a2 == 0xE300000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1752457584 && a2 == 0xE400000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1684957547 && a2 == 0xE400000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_22C274014();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_22BF0495C(char a1)
{
  result = 7563372;
  switch(a1)
  {
    case 1:
      result = 1752457584;
      break;
    case 2:
      result = 1684957547;
      break;
    case 3:
      result = 0x65756C6176;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BF049CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF04800(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF049F4(uint64_t a1)
{
  v2 = sub_22BF07B60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF04A30(uint64_t a1)
{
  v2 = sub_22BF07B60();

  return MEMORY[0x2821FE720](a1, v2);
}

void AST.Update.encode(to:)()
{
  sub_22BE19130();
  v2 = v0;
  v4 = v3;
  v5 = sub_22BE5CE4C(&qword_27D90ACE0, &qword_22C288D80);
  sub_22BE179D8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  v12 = v18 - v11;
  v13 = v4[4];
  sub_22BE26950(v4, v4[3]);
  sub_22BF07B60();
  sub_22C274234();
  type metadata accessor for AST.FlatValue(0);
  sub_22BE18538();
  sub_22BF043A8(v14, v15);
  sub_22BE239B8();
  if (!v1)
  {
    v16 = type metadata accessor for AST.Update(0);
    v18[1] = *(v2 + v16[5]);
    sub_22BE33FE4();
    sub_22BE5CE4C(&qword_27D90A9F0, &qword_22C288BA8);
    sub_22BF06C8C();
    sub_22BE27B84();
    sub_22C273FA4();
    v19 = *(v2 + v16[6]);
    sub_22BEBA0B8();
    sub_22C273FA4();
    v17 = v16[7];
    sub_22BE239B8();
  }

  (*(v7 + 8))(v12, v5);
  sub_22BE18478();
}

void AST.Update.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12)
{
  sub_22BE19130();
  v15 = v14;
  v47[3] = v16;
  v17 = type metadata accessor for AST.FlatValue(0);
  v18 = sub_22BE18000(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE183AC();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  sub_22BE19E94();
  v47[5] = v25;
  v48 = sub_22BE5CE4C(&qword_27D90ACF0, &qword_22C288D88);
  sub_22BE179D8(v48);
  v47[4] = v26;
  v28 = *(v27 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  v31 = v47 - v30;
  v32 = type metadata accessor for AST.Update(0);
  v33 = sub_22BE18000(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE179EC();
  sub_22BE2BB64();
  v37 = v15[3];
  v36 = v15[4];
  v50 = v15;
  v38 = sub_22BE27A44();
  sub_22BE26950(v38, v39);
  sub_22BF07B60();
  v49 = v31;
  sub_22C274214();
  if (v12)
  {
    sub_22BE26B64(v50);
  }

  else
  {
    v47[2] = v23;
    v40 = v13;
    sub_22BE18538();
    v43 = sub_22BF043A8(v41, v42);
    sub_22BE38608();
    sub_22C273EB4();
    v47[1] = v43;
    sub_22BE1897C();
    sub_22BE18240();
    sub_22BF042FC();
    sub_22BE5CE4C(&qword_27D90A9F0, &qword_22C288BA8);
    sub_22BE33FE4();
    sub_22BF06FD8();
    sub_22BE27B84();
    sub_22C273EB4();
    *(v40 + v32[5]) = v51;
    sub_22BEBA10C();
    sub_22BE3788C();
    sub_22C273EB4();
    *(v40 + v32[6]) = a12;
    sub_22BE38608();
    sub_22C273EB4();
    v44 = sub_22BE378B0();
    v45(v44);
    v46 = v32[7];
    sub_22BE1897C();
    sub_22BF042FC();
    sub_22BF0AED0();
    sub_22BF043F0();
    sub_22BE26B64(v50);
    sub_22BE3E2D0();
    sub_22BF042A8();
  }

  sub_22BE18478();
}

uint64_t sub_22BF05024()
{
  v0 = sub_22BE5CE4C(&qword_27D90AD00, &qword_22C288D98);
  sub_22BE952A4(v0, qword_27D90A8D0);
  sub_22BE199F4(v0, qword_27D90A8D0);
  return sub_22C2702C4();
}

BOOL static PiranaHelper.isPiranaVariable(_:)()
{
  v1 = sub_22BE5CE4C(&qword_27D90ACF8, &qword_22C288D90);
  sub_22BE19448(v1);
  v3 = *(v2 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1B72C();
  if (qword_27D906360 != -1)
  {
    swift_once();
  }

  v5 = sub_22BE5CE4C(&qword_27D90AD00, &qword_22C288D98);
  sub_22BE199F4(v5, qword_27D90A8D0);
  sub_22BF052C8();
  v6 = sub_22BE5CE4C(&qword_27D90AD08, &qword_22C288DA0);
  v7 = sub_22BE1AEA8(v0, 1, v6) != 1;
  sub_22BE33928(v0, &qword_27D90ACF8, &qword_22C288D90);
  return v7;
}

void sub_22BF051B4()
{
  sub_22BE19460();
  sub_22BE40BE0();
  v1 = sub_22BE1AEE4();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE179D8(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE25CD0();
  sub_22BE25444(&qword_27D90B108);
  sub_22BE1BC4C();
  sub_22BE37350();
  if (v0)
  {

    v7 = sub_22BE2034C();
    v8(v7);
    sub_22BE5CE4C(&qword_27D90B110, &qword_22C28B538);
    v9 = sub_22BE3116C();
    sub_22BE19DC4(v9, v10, v11, v12);
  }

  else
  {
    v13 = sub_22BE2034C();
    v14(v13);
  }

  sub_22BE1AABC();
}

uint64_t sub_22BF052C8()
{
  v0 = sub_22BE5CE4C(&qword_27D90AD00, &qword_22C288D98);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - v3;
  sub_22BEF8A28(&qword_27D90B0F8, &qword_27D90AD00, &qword_22C288D98);
  sub_22C2702B4();
  sub_22BF06EE8();
  sub_22C2702D4();
  (*(v1 + 8))(v4, v0);
}

void sub_22BF05490()
{
  sub_22BE19460();
  sub_22BE40BE0();
  v1 = sub_22BE1AEE4();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE179D8(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE25CD0();
  sub_22BE25444(&qword_27D90B0E8);
  sub_22BE1BC4C();
  sub_22BE37350();
  if (v0)
  {

    v7 = sub_22BE2034C();
    v8(v7);
    sub_22BE5CE4C(&qword_27D90B0F0, &unk_22C2B6000);
    v9 = sub_22BE3116C();
    sub_22BE19DC4(v9, v10, v11, v12);
  }

  else
  {
    v13 = sub_22BE2034C();
    v14(v13);
  }

  sub_22BE1AABC();
}

void sub_22BF055A4()
{
  sub_22BE19460();
  sub_22BE40BE0();
  v1 = sub_22BE1AEE4();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE179D8(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE25CD0();
  sub_22BE25444(&qword_27D90B0D0);
  sub_22BE1BC4C();
  sub_22BE37350();
  if (v0)
  {

    v7 = sub_22BE2034C();
    v8(v7);
    sub_22BE5CE4C(&qword_27D90B0D8, &qword_22C28B518);
    v9 = sub_22BE3116C();
    sub_22BE19DC4(v9, v10, v11, v12);
  }

  else
  {
    v13 = sub_22BE2034C();
    v14(v13);
  }

  sub_22BE1AABC();
}

uint64_t sub_22BF056B8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C273FC4();
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
        sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90);
        v6 = sub_22C273534();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22BF05A7C(v8, v9, a1, v4);
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
    return sub_22BF05800(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22BF05800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90);
  v8 = *(*(v36 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v36);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v27 - v12);
  result = MEMORY[0x28223BE20](v11);
  v17 = (&v27 - v16);
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
    while (2)
    {
      v32 = v20;
      v33 = a3;
      v30 = v23;
      v31 = v22;
      while (1)
      {
        sub_22BE22868();
        sub_22BE22868();
        if (*v17 == *v13 && v17[1] == v13[1])
        {
          break;
        }

        v25 = sub_22C274014();
        sub_22BE33928(v13, &unk_27D907790, &unk_22C27FE90);
        result = sub_22BE33928(v17, &unk_27D907790, &unk_22C27FE90);
        if (v25)
        {
          if (!v34)
          {
            __break(1u);
            return result;
          }

          sub_22BEBFD18();
          swift_arrayInitWithTakeFrontToBack();
          result = sub_22BEBFD18();
          v20 += v21;
          v23 += v21;
          if (!__CFADD__(v22++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_22BE33928(v13, &unk_27D907790, &unk_22C27FE90);
      result = sub_22BE33928(v17, &unk_27D907790, &unk_22C27FE90);
LABEL_14:
      a3 = v33 + 1;
      v20 = v32 + v28;
      v22 = v31 - 1;
      v23 = v30 + v28;
      if (v33 + 1 != v29)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22BF05A7C(int64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v119 = a1;
  v134 = sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90);
  v126 = *(v134 - 8);
  v6 = *(v126 + 64);
  v7 = MEMORY[0x28223BE20](v134);
  v122 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v133 = &v113 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v12 = MEMORY[0x28223BE20](v11);
  v13 = MEMORY[0x28223BE20](v12);
  v130 = (&v113 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v129 = (&v113 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v118 = (&v113 - v18);
  MEMORY[0x28223BE20](v17);
  v117 = (&v113 - v21);
  v128 = a3;
  v22 = a3[1];
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_115:
    a4 = *v119;
    if (!*v119)
    {
      goto LABEL_155;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_117:
      v105 = (v24 + 16);
      for (i = *(v24 + 16); i >= 2; *v105 = i)
      {
        if (!*v128)
        {
          goto LABEL_152;
        }

        v107 = (v24 + 16 * i);
        v108 = *v107;
        v109 = &v105[2 * i];
        v110 = *(v109 + 1);
        v111 = v131;
        sub_22BF06498(*v128 + *(v126 + 72) * *v107, *v128 + *(v126 + 72) * *v109, *v128 + *(v126 + 72) * v110, a4);
        v131 = v111;
        if (v111)
        {
          break;
        }

        if (v110 < v108)
        {
          goto LABEL_140;
        }

        if (i - 2 >= *v105)
        {
          goto LABEL_141;
        }

        *v107 = v108;
        v107[1] = v110;
        v112 = *v105 - i;
        if (*v105 < i)
        {
          goto LABEL_142;
        }

        i = *v105 - 1;
        sub_22C115E84(v109 + 16, v112, v109);
      }

LABEL_113:

      return;
    }

LABEL_149:
    v24 = sub_22C115CA4(v24);
    goto LABEL_117;
  }

  v135 = v20;
  v136 = v19;
  v114 = a4;
  v23 = 0;
  v24 = MEMORY[0x277D84F90];
  while (1)
  {
    v25 = v23;
    v26 = v23 + 1;
    if (v23 + 1 < v22)
    {
      v124 = v22;
      v27 = *v128;
      v28 = *(v126 + 72);
      v29 = v23 + 1;
      v30 = v117;
      sub_22BE22868();
      v127 = v28;
      v31 = v118;
      sub_22BE22868();
      if (*v30 == *v31 && v30[1] == v31[1])
      {
        LODWORD(v125) = 0;
      }

      else
      {
        LODWORD(v125) = sub_22C274014();
      }

      v115 = v24;
      sub_22BE33928(v118, &unk_27D907790, &unk_22C27FE90);
      sub_22BE33928(v117, &unk_27D907790, &unk_22C27FE90);
      v116 = v25;
      v33 = v25 + 2;
      v34 = v127 * (v25 + 2);
      v35 = v27 + v34;
      v36 = v127 * v29;
      v37 = v27 + v127 * v29;
      v38 = v29;
      do
      {
        v39 = v33;
        v40 = v38;
        v24 = v36;
        a4 = v34;
        if (v33 >= v124)
        {
          break;
        }

        v132 = v33;
        v41 = v129;
        sub_22BE22868();
        v42 = v130;
        sub_22BE22868();
        v43 = *v41 == *v42 && v41[1] == v42[1];
        v44 = v43 ? 0 : sub_22C274014();
        sub_22BE33928(v130, &unk_27D907790, &unk_22C27FE90);
        sub_22BE33928(v129, &unk_27D907790, &unk_22C27FE90);
        v39 = v132;
        v33 = v132 + 1;
        v35 += v127;
        v37 += v127;
        v38 = v40 + 1;
        v36 = v24 + v127;
        v34 = a4 + v127;
      }

      while (((v125 ^ v44) & 1) == 0);
      if (v125)
      {
        v25 = v116;
        if (v39 < v116)
        {
          goto LABEL_146;
        }

        if (v116 >= v39)
        {
          v26 = v39;
          v24 = v115;
          goto LABEL_39;
        }

        v45 = v116 * v127;
        do
        {
          if (v25 != v40)
          {
            v46 = *v128;
            if (!*v128)
            {
              goto LABEL_153;
            }

            sub_22BEBFD18();
            v47 = v45 < v24 || v46 + v45 >= (v46 + a4);
            if (v47)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v45 != v24)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_22BEBFD18();
          }

          ++v25;
          v24 -= v127;
          a4 -= v127;
          v45 += v127;
        }

        while (v25 < v40--);
        v26 = v39;
        v24 = v115;
      }

      else
      {
        v26 = v39;
        v24 = v115;
      }

      v25 = v116;
    }

LABEL_39:
    v49 = v128[1];
    v127 = v26;
    if (v26 < v49)
    {
      v77 = __OFSUB__(v26, v25);
      v50 = v26 - v25;
      if (v77)
      {
        goto LABEL_145;
      }

      if (v50 < v114)
      {
        break;
      }
    }

LABEL_62:
    if (v127 < v25)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v102 = *(v24 + 16);
      sub_22BE6614C();
      v24 = v103;
    }

    a4 = *(v24 + 16);
    v60 = a4 + 1;
    if (a4 >= *(v24 + 24) >> 1)
    {
      sub_22BE6614C();
      v24 = v104;
    }

    *(v24 + 16) = v60;
    v61 = v24 + 32;
    v62 = (v24 + 32 + 16 * a4);
    v63 = v127;
    *v62 = v25;
    v62[1] = v63;
    v64 = *v119;
    if (!*v119)
    {
      goto LABEL_154;
    }

    if (a4)
    {
      while (1)
      {
        a4 = v60 - 1;
        v65 = (v61 + 16 * (v60 - 1));
        v66 = (v24 + 16 * v60);
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v67 = *(v24 + 32);
          v68 = *(v24 + 40);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_82:
          if (v70)
          {
            goto LABEL_131;
          }

          v82 = *v66;
          v81 = v66[1];
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_134;
          }

          v86 = v65[1];
          v87 = v86 - *v65;
          if (__OFSUB__(v86, *v65))
          {
            goto LABEL_137;
          }

          if (__OFADD__(v84, v87))
          {
            goto LABEL_139;
          }

          if (v84 + v87 >= v69)
          {
            if (v69 < v87)
            {
              a4 = v60 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v60 < 2)
        {
          goto LABEL_133;
        }

        v89 = *v66;
        v88 = v66[1];
        v77 = __OFSUB__(v88, v89);
        v84 = v88 - v89;
        v85 = v77;
LABEL_97:
        if (v85)
        {
          goto LABEL_136;
        }

        v91 = *v65;
        v90 = v65[1];
        v77 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v77)
        {
          goto LABEL_138;
        }

        if (v92 < v84)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (a4 - 1 >= v60)
        {
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
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
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
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v128)
        {
          goto LABEL_151;
        }

        v96 = v24;
        v97 = (v61 + 16 * (a4 - 1));
        v98 = *v97;
        v99 = v61 + 16 * a4;
        v24 = *(v99 + 8);
        v100 = v131;
        sub_22BF06498(*v128 + *(v126 + 72) * *v97, *v128 + *(v126 + 72) * *v99, *v128 + *(v126 + 72) * v24, v64);
        v131 = v100;
        if (v100)
        {
          goto LABEL_113;
        }

        if (v24 < v98)
        {
          goto LABEL_126;
        }

        v101 = *(v96 + 16);
        if (a4 > v101)
        {
          goto LABEL_127;
        }

        *v97 = v98;
        v97[1] = v24;
        if (a4 >= v101)
        {
          goto LABEL_128;
        }

        v60 = v101 - 1;
        sub_22C115E84((v99 + 16), v101 - 1 - a4, (v61 + 16 * a4));
        v24 = v96;
        *(v96 + 16) = v101 - 1;
        if (v101 <= 2)
        {
          goto LABEL_111;
        }
      }

      v71 = v61 + 16 * v60;
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_129;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_130;
      }

      v78 = v66[1];
      v79 = v78 - *v66;
      if (__OFSUB__(v78, *v66))
      {
        goto LABEL_132;
      }

      v77 = __OFADD__(v69, v79);
      v80 = v69 + v79;
      if (v77)
      {
        goto LABEL_135;
      }

      if (v80 >= v74)
      {
        v94 = *v65;
        v93 = v65[1];
        v77 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v77)
        {
          goto LABEL_143;
        }

        if (v69 < v95)
        {
          a4 = v60 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v23 = v127;
    v22 = v128[1];
    if (v127 >= v22)
    {
      goto LABEL_115;
    }
  }

  if (__OFADD__(v25, v114))
  {
    goto LABEL_147;
  }

  if (v25 + v114 >= v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = v25 + v114;
  }

  if (v51 < v25)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v127 == v51)
  {
    goto LABEL_62;
  }

  v115 = v24;
  v116 = v25;
  v52 = *(v126 + 72);
  v53 = *v128 + v52 * (v127 - 1);
  a4 = -v52;
  v54 = v25 - v127;
  v132 = *v128;
  v120 = v52;
  v121 = v51;
  v55 = v132 + v127 * v52;
LABEL_49:
  v123 = v55;
  v124 = v54;
  v125 = v53;
  while (1)
  {
    v56 = v135;
    sub_22BE22868();
    v57 = v136;
    sub_22BE22868();
    if (*v56 == *v57 && v56[1] == v57[1])
    {
      sub_22BE33928(v57, &unk_27D907790, &unk_22C27FE90);
      sub_22BE33928(v56, &unk_27D907790, &unk_22C27FE90);
LABEL_60:
      v53 = v125 + v120;
      v54 = v124 - 1;
      v55 = v123 + v120;
      if (++v127 == v121)
      {
        v127 = v121;
        v24 = v115;
        v25 = v116;
        goto LABEL_62;
      }

      goto LABEL_49;
    }

    v59 = sub_22C274014();
    sub_22BE33928(v57, &unk_27D907790, &unk_22C27FE90);
    sub_22BE33928(v56, &unk_27D907790, &unk_22C27FE90);
    if ((v59 & 1) == 0)
    {
      goto LABEL_60;
    }

    if (!v132)
    {
      break;
    }

    sub_22BEBFD18();
    swift_arrayInitWithTakeFrontToBack();
    sub_22BEBFD18();
    v53 += a4;
    v55 += a4;
    v47 = __CFADD__(v54++, 1);
    if (v47)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}

uint64_t sub_22BF06498(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v64 = sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90);
  v8 = *(*(v64 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v64);
  v63 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v62 = (&v55 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v55 - v14);
  result = MEMORY[0x28223BE20](v13);
  v18 = (&v55 - v17);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v21 = a2 - a1;
  v22 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v22)
  {
    goto LABEL_72;
  }

  v23 = a2;
  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_73;
  }

  v26 = v21 / v20;
  v67 = a1;
  v66 = a4;
  v27 = v24 / v20;
  if (v21 / v20 < v24 / v20)
  {
    v28 = v23;
    sub_22BE67CF0(a1, v21 / v20, a4);
    v29 = v28;
    v63 = a4 + v26 * v20;
    v65 = v63;
    v61 = a3;
    while (1)
    {
      if (a4 >= v63 || v29 >= a3)
      {
        goto LABEL_70;
      }

      v31 = v29;
      sub_22BE22868();
      sub_22BE22868();
      if (*v18 == *v15 && v18[1] == v15[1])
      {
        sub_22BE33928(v15, &unk_27D907790, &unk_22C27FE90);
        sub_22BE33928(v18, &unk_27D907790, &unk_22C27FE90);
      }

      else
      {
        v33 = sub_22C274014();
        sub_22BE33928(v15, &unk_27D907790, &unk_22C27FE90);
        sub_22BE33928(v18, &unk_27D907790, &unk_22C27FE90);
        if (v33)
        {
          v34 = v31;
          v35 = v31 + v20;
          if (a1 < v31 || a1 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v31 + v20;
            a3 = v61;
          }

          else
          {
            a3 = v61;
            if (a1 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v29 = v35;
          }

          goto LABEL_37;
        }
      }

      if (a1 < a4 || a1 >= a4 + v20)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v66 = a4 + v20;
      a4 += v20;
      v29 = v31;
      a3 = v61;
LABEL_37:
      a1 += v20;
      v67 = a1;
    }
  }

  v38 = v23;
  sub_22BE67CF0(v23, v24 / v20, a4);
  v39 = v38;
  v40 = a4 + v27 * v20;
  v41 = -v20;
  v42 = v40;
  v60 = -v20;
  v57 = a4;
LABEL_42:
  v43 = a3;
  v44 = v42;
  v61 = v39;
  v58 = v42;
  v59 = v39 + v41;
  while (1)
  {
    if (v40 <= a4)
    {
      v67 = v39;
      v65 = v44;
      goto LABEL_70;
    }

    if (v39 <= a1)
    {
      break;
    }

    v56 = v44;
    v45 = v60;
    v46 = v40 + v60;
    v47 = v62;
    sub_22BE22868();
    v48 = v63;
    sub_22BE22868();
    if (*v47 == *v48 && v47[1] == v48[1])
    {
      v50 = 0;
    }

    else
    {
      v50 = sub_22C274014();
    }

    a3 = v43 + v45;
    sub_22BE33928(v63, &unk_27D907790, &unk_22C27FE90);
    sub_22BE33928(v62, &unk_27D907790, &unk_22C27FE90);
    if (v50)
    {
      v52 = v43 < v61 || a3 >= v61;
      a4 = v57;
      if (v52)
      {
        v53 = v59;
        swift_arrayInitWithTakeFrontToBack();
        v39 = v53;
        v42 = v56;
        v41 = v60;
      }

      else
      {
        v42 = v56;
        v54 = v59;
        v41 = v60;
        v39 = v59;
        if (v43 != v61)
        {
          v42 = v56;
          swift_arrayInitWithTakeBackToFront();
          v39 = v54;
        }
      }

      goto LABEL_42;
    }

    v51 = v43 < v40 || a3 >= v40;
    a4 = v57;
    if (v51)
    {
      swift_arrayInitWithTakeFrontToBack();
      v43 = a3;
      v40 = v46;
      v44 = v46;
      v39 = v61;
      v42 = v58;
    }

    else
    {
      v44 = v46;
      v22 = v40 == v43;
      v43 = a3;
      v40 = v46;
      v39 = v61;
      v42 = v58;
      if (!v22)
      {
        swift_arrayInitWithTakeBackToFront();
        v39 = v61;
        v43 = a3;
        v40 = v46;
        v44 = v46;
      }
    }
  }

  v67 = v39;
  v65 = v42;
LABEL_70:
  sub_22C115CBC(&v67, &v66, &v65);
  return 1;
}

unint64_t sub_22BF069D8()
{
  result = qword_27D90A9A8;
  if (!qword_27D90A9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A9A8);
  }

  return result;
}

unint64_t sub_22BF06A2C()
{
  result = qword_27D90A9B0;
  if (!qword_27D90A9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A9B0);
  }

  return result;
}

unint64_t sub_22BF06A80()
{
  result = qword_27D90A9B8;
  if (!qword_27D90A9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A9B8);
  }

  return result;
}

unint64_t sub_22BF06AD4()
{
  result = qword_27D90A9C0;
  if (!qword_27D90A9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A9C0);
  }

  return result;
}

unint64_t sub_22BF06B28()
{
  result = qword_27D90A9C8;
  if (!qword_27D90A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A9C8);
  }

  return result;
}

unint64_t sub_22BF06B7C()
{
  result = qword_27D90A9D8;
  if (!qword_27D90A9D8)
  {
    sub_22BE7431C(&qword_27D90A9D0, &qword_22C288BA0);
    sub_22BF043A8(&qword_27D90A9E0, type metadata accessor for AST.FlatValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A9D8);
  }

  return result;
}

unint64_t sub_22BF06C38()
{
  result = qword_27D90A9E8;
  if (!qword_27D90A9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A9E8);
  }

  return result;
}

unint64_t sub_22BF06C8C()
{
  result = qword_27D90A9F8;
  if (!qword_27D90A9F8)
  {
    sub_22BE7431C(&qword_27D90A9F0, &qword_22C288BA8);
    sub_22BF043A8(&qword_27D90A9E0, type metadata accessor for AST.FlatValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A9F8);
  }

  return result;
}

unint64_t sub_22BF06D40()
{
  result = qword_27D90AA00;
  if (!qword_27D90AA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AA00);
  }

  return result;
}

unint64_t sub_22BF06D94()
{
  result = qword_27D90AA08;
  if (!qword_27D90AA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AA08);
  }

  return result;
}

unint64_t sub_22BF06DE8()
{
  result = qword_27D90AA10;
  if (!qword_27D90AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AA10);
  }

  return result;
}

unint64_t sub_22BF06E3C()
{
  result = qword_27D90AA18;
  if (!qword_27D90AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AA18);
  }

  return result;
}

unint64_t sub_22BF06E90()
{
  result = qword_27D90AA20;
  if (!qword_27D90AA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AA20);
  }

  return result;
}

unint64_t sub_22BF06F1C()
{
  result = qword_27D90AA80;
  if (!qword_27D90AA80)
  {
    sub_22BE7431C(&qword_27D90A9D0, &qword_22C288BA0);
    sub_22BF043A8(&qword_27D90AA88, type metadata accessor for AST.FlatValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AA80);
  }

  return result;
}

unint64_t sub_22BF06FD8()
{
  result = qword_27D90AA90;
  if (!qword_27D90AA90)
  {
    sub_22BE7431C(&qword_27D90A9F0, &qword_22C288BA8);
    sub_22BF043A8(&qword_27D90AA88, type metadata accessor for AST.FlatValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AA90);
  }

  return result;
}

unint64_t sub_22BF070AC()
{
  result = qword_27D90AB40;
  if (!qword_27D90AB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AB40);
  }

  return result;
}

unint64_t sub_22BF07100()
{
  result = qword_27D90AB48;
  if (!qword_27D90AB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AB48);
  }

  return result;
}

unint64_t sub_22BF07154()
{
  result = qword_27D90AB50;
  if (!qword_27D90AB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AB50);
  }

  return result;
}

unint64_t sub_22BF071A8()
{
  result = qword_27D90AB58;
  if (!qword_27D90AB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AB58);
  }

  return result;
}

unint64_t sub_22BF071FC()
{
  result = qword_27D90AB60;
  if (!qword_27D90AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AB60);
  }

  return result;
}

unint64_t sub_22BF07250()
{
  result = qword_27D90AB68;
  if (!qword_27D90AB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AB68);
  }

  return result;
}

unint64_t sub_22BF072A4()
{
  result = qword_27D90AB70;
  if (!qword_27D90AB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AB70);
  }

  return result;
}

unint64_t sub_22BF072F8()
{
  result = qword_27D90AB78;
  if (!qword_27D90AB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AB78);
  }

  return result;
}

unint64_t sub_22BF0734C()
{
  result = qword_27D90AB80;
  if (!qword_27D90AB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AB80);
  }

  return result;
}

unint64_t sub_22BF073A0()
{
  result = qword_27D90AB88;
  if (!qword_27D90AB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AB88);
  }

  return result;
}

unint64_t sub_22BF073F4()
{
  result = qword_27D90AB90;
  if (!qword_27D90AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AB90);
  }

  return result;
}

unint64_t sub_22BF07448()
{
  result = qword_27D90AB98;
  if (!qword_27D90AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AB98);
  }

  return result;
}

unint64_t sub_22BF0749C()
{
  result = qword_27D90ABA0;
  if (!qword_27D90ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ABA0);
  }

  return result;
}

unint64_t sub_22BF074F0()
{
  result = qword_27D90ABA8;
  if (!qword_27D90ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ABA8);
  }

  return result;
}

unint64_t sub_22BF07544()
{
  result = qword_27D90ABB0;
  if (!qword_27D90ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ABB0);
  }

  return result;
}

unint64_t sub_22BF07598()
{
  result = qword_27D90ABC0;
  if (!qword_27D90ABC0)
  {
    sub_22BE7431C(&qword_27D90ABB8, &qword_22C288CC8);
    sub_22BF043A8(&qword_28107F328, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ABC0);
  }

  return result;
}

unint64_t sub_22BF0764C()
{
  result = qword_27D90ABC8;
  if (!qword_27D90ABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ABC8);
  }

  return result;
}

unint64_t sub_22BF076A0()
{
  result = qword_27D90ABD0;
  if (!qword_27D90ABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ABD0);
  }

  return result;
}

unint64_t sub_22BF076F4()
{
  result = qword_27D90ABE0;
  if (!qword_27D90ABE0)
  {
    sub_22BE7431C(&qword_27D90ABD8, &qword_22C288CD0);
    sub_22BF043A8(&qword_27D90ABE8, type metadata accessor for AST.Update);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ABE0);
  }

  return result;
}

unint64_t sub_22BF077A8()
{
  result = qword_27D90ABF0;
  if (!qword_27D90ABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ABF0);
  }

  return result;
}

unint64_t sub_22BF077FC()
{
  result = qword_27D90ABF8;
  if (!qword_27D90ABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ABF8);
  }

  return result;
}

unint64_t sub_22BF07850()
{
  result = qword_27D90AC00;
  if (!qword_27D90AC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AC00);
  }

  return result;
}

unint64_t sub_22BF078A4()
{
  result = qword_27D90AC08;
  if (!qword_27D90AC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AC08);
  }

  return result;
}

unint64_t sub_22BF078F8()
{
  result = qword_27D90AC10;
  if (!qword_27D90AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AC10);
  }

  return result;
}

unint64_t sub_22BF0794C()
{
  result = qword_27D90ACC0;
  if (!qword_27D90ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ACC0);
  }

  return result;
}

unint64_t sub_22BF079A0()
{
  result = qword_27D90ACC8;
  if (!qword_27D90ACC8)
  {
    sub_22BE7431C(&qword_27D90ABB8, &qword_22C288CC8);
    sub_22BF043A8(&qword_27D907F58, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ACC8);
  }

  return result;
}

unint64_t sub_22BF07A54()
{
  result = qword_27D90ACD0;
  if (!qword_27D90ACD0)
  {
    sub_22BE7431C(&qword_27D90ABD8, &qword_22C288CD0);
    sub_22BF043A8(&qword_27D90ACD8, type metadata accessor for AST.Update);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ACD0);
  }

  return result;
}

uint64_t sub_22BF07B08()
{
  sub_22BE18378();
  v2 = v1(0);
  sub_22BE18000(v2);
  v4 = *(v3 + 40);
  v5 = sub_22BE19454();
  v6(v5);
  return v0;
}

unint64_t sub_22BF07B60()
{
  result = qword_27D90ACE8;
  if (!qword_27D90ACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ACE8);
  }

  return result;
}

uint64_t sub_22BF07C24()
{
  result = type metadata accessor for AST.FlatExpr(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22BF07CA0()
{
  sub_22BF081CC(319, &qword_27D90AD28, type metadata accessor for AST.FlatValue, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22BF07D94();
    if (v1 <= 0x3F)
    {
      sub_22C26E684();
      if (v2 <= 0x3F)
      {
        sub_22C26E1D4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_22BF07D94()
{
  if (!qword_27D90AD30)
  {
    type metadata accessor for AST.FlatValue(255);
    v0 = sub_22C272EC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27D90AD30);
    }
  }
}

uint64_t sub_22BF07DFC()
{
  v0 = type metadata accessor for AST.FlatValue(319);
  if (v1 <= 0x3F)
  {
    sub_22BF08090();
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_22BF080F8();
      v0 = v4;
      if (v5 <= 0x3F)
      {
        sub_22BF082A8(319, &qword_27D90AD58, type metadata accessor for AST.FlatValue);
        v0 = v6;
        if (v7 <= 0x3F)
        {
          sub_22BF08164();
          v0 = v8;
          if (v9 <= 0x3F)
          {
            sub_22BF081CC(319, &qword_27D90AD68, type metadata accessor for AST.Update, MEMORY[0x277D83940]);
            v0 = v10;
            if (v11 <= 0x3F)
            {
              sub_22BF08230();
              v0 = v12;
              if (v13 <= 0x3F)
              {
                sub_22BF083E4(319, &qword_27D90AD78, &qword_27D90AD80, MEMORY[0x277D83940]);
                v0 = v14;
                if (v15 <= 0x3F)
                {
                  sub_22BF082A8(319, &qword_27D90AD88, MEMORY[0x277CC95F0]);
                  v0 = v16;
                  if (v17 <= 0x3F)
                  {
                    sub_22BF08398(319, &qword_27D90AD90, MEMORY[0x277CC95F0]);
                    v0 = v18;
                    if (v19 <= 0x3F)
                    {
                      sub_22BF08318();
                      if (v21 > 0x3F)
                      {
                        return v20;
                      }

                      sub_22BF08398(319, &qword_27D90ADA0, sub_22BE929D0);
                      if (v22 > 0x3F)
                      {
                        return v20;
                      }

                      sub_22BF083E4(319, &qword_27D90ADA8, &qword_28107F318, MEMORY[0x277D83D88]);
                      if (v23 > 0x3F)
                      {
                        return v20;
                      }

                      else
                      {
                        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                        return 0;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

void sub_22BF08090()
{
  if (!qword_27D90AD48)
  {
    type metadata accessor for AST.FlatValue(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D90AD48);
    }
  }
}

void sub_22BF080F8()
{
  if (!qword_27D90AD50)
  {
    type metadata accessor for AST.FlatValue(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27D90AD50);
    }
  }
}

void sub_22BF08164()
{
  if (!qword_27D90AD60)
  {
    type metadata accessor for AST.FlatValue(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D90AD60);
    }
  }
}

void sub_22BF081CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22BF08230()
{
  if (!qword_27D90AD70)
  {
    sub_22BE7431C(&qword_27D90A9D0, &qword_22C288BA0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D90AD70);
    }
  }
}

void sub_22BF082A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_22BF08318()
{
  if (!qword_27D90AD98)
  {
    sub_22BE7431C(&qword_27D9072A8, &qword_22C275110);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27D90AD98);
    }
  }
}

void sub_22BF08398(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22BF083E4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_22BF081CC(0, a3, MEMORY[0x277CC95F0], a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_22BF0846C()
{
  v0 = type metadata accessor for AST.FlatValue(319);
  if (v1 <= 0x3F)
  {
    sub_22BF081CC(319, &qword_27D90AD28, type metadata accessor for AST.FlatValue, MEMORY[0x277D83940]);
    if (v3 > 0x3F)
    {
      return v2;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

_BYTE *_s6UpdateV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t _s8FlatExprO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s8FlatExprO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22BF08834(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_22BE22BD0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t _s9FlatValueO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s9FlatValueO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_22BF08B90(_BYTE *result, int a2, int a3)
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

_BYTE *sub_22BF08C3C(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_22BE22BD0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22BF08D18()
{
  result = qword_27D90ADC0;
  if (!qword_27D90ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ADC0);
  }

  return result;
}

unint64_t sub_22BF08D70()
{
  result = qword_27D90ADC8;
  if (!qword_27D90ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ADC8);
  }

  return result;
}

unint64_t sub_22BF08DC8()
{
  result = qword_27D90ADD0;
  if (!qword_27D90ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ADD0);
  }

  return result;
}

unint64_t sub_22BF08E20()
{
  result = qword_27D90ADD8;
  if (!qword_27D90ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ADD8);
  }

  return result;
}

unint64_t sub_22BF08E78()
{
  result = qword_27D90ADE0;
  if (!qword_27D90ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ADE0);
  }

  return result;
}

unint64_t sub_22BF08ED0()
{
  result = qword_27D90ADE8;
  if (!qword_27D90ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ADE8);
  }

  return result;
}

unint64_t sub_22BF08F28()
{
  result = qword_27D90ADF0;
  if (!qword_27D90ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ADF0);
  }

  return result;
}

unint64_t sub_22BF08F80()
{
  result = qword_27D90ADF8;
  if (!qword_27D90ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ADF8);
  }

  return result;
}

unint64_t sub_22BF08FD8()
{
  result = qword_27D90AE00;
  if (!qword_27D90AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE00);
  }

  return result;
}

unint64_t sub_22BF09030()
{
  result = qword_27D90AE08;
  if (!qword_27D90AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE08);
  }

  return result;
}

unint64_t sub_22BF09088()
{
  result = qword_27D90AE10;
  if (!qword_27D90AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE10);
  }

  return result;
}

unint64_t sub_22BF090E0()
{
  result = qword_27D90AE18;
  if (!qword_27D90AE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE18);
  }

  return result;
}

unint64_t sub_22BF09138()
{
  result = qword_27D90AE20;
  if (!qword_27D90AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE20);
  }

  return result;
}

unint64_t sub_22BF09190()
{
  result = qword_27D90AE28;
  if (!qword_27D90AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE28);
  }

  return result;
}

unint64_t sub_22BF091E8()
{
  result = qword_27D90AE30;
  if (!qword_27D90AE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE30);
  }

  return result;
}

unint64_t sub_22BF09240()
{
  result = qword_27D90AE38;
  if (!qword_27D90AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE38);
  }

  return result;
}

unint64_t sub_22BF09298()
{
  result = qword_27D90AE40;
  if (!qword_27D90AE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE40);
  }

  return result;
}

unint64_t sub_22BF092F0()
{
  result = qword_27D90AE48;
  if (!qword_27D90AE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE48);
  }

  return result;
}

unint64_t sub_22BF09348()
{
  result = qword_27D90AE50;
  if (!qword_27D90AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE50);
  }

  return result;
}

unint64_t sub_22BF093A0()
{
  result = qword_27D90AE58;
  if (!qword_27D90AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE58);
  }

  return result;
}

unint64_t sub_22BF093F8()
{
  result = qword_27D90AE60;
  if (!qword_27D90AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE60);
  }

  return result;
}

unint64_t sub_22BF09450()
{
  result = qword_27D90AE68;
  if (!qword_27D90AE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE68);
  }

  return result;
}

unint64_t sub_22BF094A8()
{
  result = qword_27D90AE70;
  if (!qword_27D90AE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE70);
  }

  return result;
}

unint64_t sub_22BF09500()
{
  result = qword_27D90AE78;
  if (!qword_27D90AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE78);
  }

  return result;
}

unint64_t sub_22BF09558()
{
  result = qword_27D90AE80;
  if (!qword_27D90AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE80);
  }

  return result;
}

unint64_t sub_22BF095B0()
{
  result = qword_27D90AE88;
  if (!qword_27D90AE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE88);
  }

  return result;
}

unint64_t sub_22BF09608()
{
  result = qword_27D90AE90;
  if (!qword_27D90AE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE90);
  }

  return result;
}

unint64_t sub_22BF09660()
{
  result = qword_27D90AE98;
  if (!qword_27D90AE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE98);
  }

  return result;
}

unint64_t sub_22BF096B8()
{
  result = qword_27D90AEA0;
  if (!qword_27D90AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AEA0);
  }

  return result;
}

unint64_t sub_22BF09710()
{
  result = qword_27D90AEA8;
  if (!qword_27D90AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AEA8);
  }

  return result;
}

unint64_t sub_22BF09768()
{
  result = qword_27D90AEB0;
  if (!qword_27D90AEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AEB0);
  }

  return result;
}

unint64_t sub_22BF097C0()
{
  result = qword_27D90AEB8;
  if (!qword_27D90AEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AEB8);
  }

  return result;
}

unint64_t sub_22BF09818()
{
  result = qword_27D90AEC0;
  if (!qword_27D90AEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AEC0);
  }

  return result;
}

unint64_t sub_22BF09870()
{
  result = qword_27D90AEC8;
  if (!qword_27D90AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AEC8);
  }

  return result;
}

unint64_t sub_22BF098C8()
{
  result = qword_27D90AED0;
  if (!qword_27D90AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AED0);
  }

  return result;
}

unint64_t sub_22BF09920()
{
  result = qword_27D90AED8;
  if (!qword_27D90AED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AED8);
  }

  return result;
}

unint64_t sub_22BF09978()
{
  result = qword_27D90AEE0;
  if (!qword_27D90AEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AEE0);
  }

  return result;
}

unint64_t sub_22BF099D0()
{
  result = qword_27D90AEE8;
  if (!qword_27D90AEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AEE8);
  }

  return result;
}

unint64_t sub_22BF09A28()
{
  result = qword_27D90AEF0;
  if (!qword_27D90AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AEF0);
  }

  return result;
}

unint64_t sub_22BF09A80()
{
  result = qword_27D90AEF8;
  if (!qword_27D90AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AEF8);
  }

  return result;
}

unint64_t sub_22BF09AD8()
{
  result = qword_27D90AF00;
  if (!qword_27D90AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF00);
  }

  return result;
}

unint64_t sub_22BF09B30()
{
  result = qword_27D90AF08;
  if (!qword_27D90AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF08);
  }

  return result;
}

unint64_t sub_22BF09B88()
{
  result = qword_27D90AF10;
  if (!qword_27D90AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF10);
  }

  return result;
}

unint64_t sub_22BF09BE0()
{
  result = qword_27D90AF18;
  if (!qword_27D90AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF18);
  }

  return result;
}

unint64_t sub_22BF09C38()
{
  result = qword_27D90AF20;
  if (!qword_27D90AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF20);
  }

  return result;
}

unint64_t sub_22BF09C90()
{
  result = qword_27D90AF28;
  if (!qword_27D90AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF28);
  }

  return result;
}

unint64_t sub_22BF09CE8()
{
  result = qword_27D90AF30;
  if (!qword_27D90AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF30);
  }

  return result;
}

unint64_t sub_22BF09D40()
{
  result = qword_27D90AF38;
  if (!qword_27D90AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF38);
  }

  return result;
}

unint64_t sub_22BF09D98()
{
  result = qword_27D90AF40;
  if (!qword_27D90AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF40);
  }

  return result;
}

unint64_t sub_22BF09DF0()
{
  result = qword_27D90AF48;
  if (!qword_27D90AF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF48);
  }

  return result;
}

unint64_t sub_22BF09E48()
{
  result = qword_27D90AF50;
  if (!qword_27D90AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF50);
  }

  return result;
}

unint64_t sub_22BF09EA0()
{
  result = qword_27D90AF58;
  if (!qword_27D90AF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF58);
  }

  return result;
}

unint64_t sub_22BF09EF8()
{
  result = qword_27D90AF60;
  if (!qword_27D90AF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF60);
  }

  return result;
}

unint64_t sub_22BF09F50()
{
  result = qword_27D90AF68;
  if (!qword_27D90AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF68);
  }

  return result;
}

unint64_t sub_22BF09FA8()
{
  result = qword_27D90AF70;
  if (!qword_27D90AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF70);
  }

  return result;
}

unint64_t sub_22BF0A000()
{
  result = qword_27D90AF78;
  if (!qword_27D90AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF78);
  }

  return result;
}

unint64_t sub_22BF0A058()
{
  result = qword_27D90AF80;
  if (!qword_27D90AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF80);
  }

  return result;
}

unint64_t sub_22BF0A0B0()
{
  result = qword_27D90AF88;
  if (!qword_27D90AF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF88);
  }

  return result;
}

unint64_t sub_22BF0A108()
{
  result = qword_27D90AF90;
  if (!qword_27D90AF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF90);
  }

  return result;
}

unint64_t sub_22BF0A160()
{
  result = qword_27D90AF98;
  if (!qword_27D90AF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF98);
  }

  return result;
}

unint64_t sub_22BF0A1B8()
{
  result = qword_27D90AFA0;
  if (!qword_27D90AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AFA0);
  }

  return result;
}

unint64_t sub_22BF0A210()
{
  result = qword_27D90AFA8;
  if (!qword_27D90AFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AFA8);
  }

  return result;
}

unint64_t sub_22BF0A268()
{
  result = qword_27D90AFB0;
  if (!qword_27D90AFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AFB0);
  }

  return result;
}

unint64_t sub_22BF0A2C0()
{
  result = qword_27D90AFB8;
  if (!qword_27D90AFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AFB8);
  }

  return result;
}

unint64_t sub_22BF0A318()
{
  result = qword_27D90AFC0;
  if (!qword_27D90AFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AFC0);
  }

  return result;
}

unint64_t sub_22BF0A370()
{
  result = qword_27D90AFC8;
  if (!qword_27D90AFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AFC8);
  }

  return result;
}

unint64_t sub_22BF0A3C8()
{
  result = qword_27D90AFD0;
  if (!qword_27D90AFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AFD0);
  }

  return result;
}

unint64_t sub_22BF0A420()
{
  result = qword_27D90AFD8;
  if (!qword_27D90AFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AFD8);
  }

  return result;
}

unint64_t sub_22BF0A478()
{
  result = qword_27D90AFE0;
  if (!qword_27D90AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AFE0);
  }

  return result;
}

unint64_t sub_22BF0A4D0()
{
  result = qword_27D90AFE8;
  if (!qword_27D90AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AFE8);
  }

  return result;
}

unint64_t sub_22BF0A528()
{
  result = qword_27D90AFF0;
  if (!qword_27D90AFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AFF0);
  }

  return result;
}

unint64_t sub_22BF0A580()
{
  result = qword_27D90AFF8;
  if (!qword_27D90AFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AFF8);
  }

  return result;
}

unint64_t sub_22BF0A5D8()
{
  result = qword_27D90B000;
  if (!qword_27D90B000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B000);
  }

  return result;
}

unint64_t sub_22BF0A630()
{
  result = qword_27D90B008;
  if (!qword_27D90B008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B008);
  }

  return result;
}

unint64_t sub_22BF0A688()
{
  result = qword_27D90B010;
  if (!qword_27D90B010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B010);
  }

  return result;
}

unint64_t sub_22BF0A6E0()
{
  result = qword_27D90B018;
  if (!qword_27D90B018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B018);
  }

  return result;
}

unint64_t sub_22BF0A738()
{
  result = qword_27D90B020;
  if (!qword_27D90B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B020);
  }

  return result;
}

unint64_t sub_22BF0A790()
{
  result = qword_27D90B028;
  if (!qword_27D90B028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B028);
  }

  return result;
}

unint64_t sub_22BF0A7E8()
{
  result = qword_27D90B030;
  if (!qword_27D90B030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B030);
  }

  return result;
}

unint64_t sub_22BF0A840()
{
  result = qword_27D90B038;
  if (!qword_27D90B038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B038);
  }

  return result;
}

unint64_t sub_22BF0A898()
{
  result = qword_27D90B040;
  if (!qword_27D90B040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B040);
  }

  return result;
}

unint64_t sub_22BF0A8F0()
{
  result = qword_27D90B048;
  if (!qword_27D90B048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B048);
  }

  return result;
}

unint64_t sub_22BF0A948()
{
  result = qword_27D90B050;
  if (!qword_27D90B050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B050);
  }

  return result;
}

unint64_t sub_22BF0A9A0()
{
  result = qword_27D90B058;
  if (!qword_27D90B058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B058);
  }

  return result;
}

unint64_t sub_22BF0A9F8()
{
  result = qword_27D90B060;
  if (!qword_27D90B060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B060);
  }

  return result;
}

unint64_t sub_22BF0AA50()
{
  result = qword_27D90B068;
  if (!qword_27D90B068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B068);
  }

  return result;
}

unint64_t sub_22BF0AAA8()
{
  result = qword_27D90B070;
  if (!qword_27D90B070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B070);
  }

  return result;
}

unint64_t sub_22BF0AB00()
{
  result = qword_27D90B078;
  if (!qword_27D90B078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B078);
  }

  return result;
}

unint64_t sub_22BF0AB58()
{
  result = qword_27D90B080;
  if (!qword_27D90B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B080);
  }

  return result;
}

unint64_t sub_22BF0ABB0()
{
  result = qword_27D90B088;
  if (!qword_27D90B088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B088);
  }

  return result;
}

unint64_t sub_22BF0AC08()
{
  result = qword_27D90B090;
  if (!qword_27D90B090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B090);
  }

  return result;
}

unint64_t sub_22BF0AC60()
{
  result = qword_27D90B098;
  if (!qword_27D90B098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B098);
  }

  return result;
}

unint64_t sub_22BF0ACB8()
{
  result = qword_27D90B0A0;
  if (!qword_27D90B0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B0A0);
  }

  return result;
}

unint64_t sub_22BF0AD10()
{
  result = qword_27D90B0A8;
  if (!qword_27D90B0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B0A8);
  }

  return result;
}

unint64_t sub_22BF0AD68()
{
  result = qword_27D90B0B0;
  if (!qword_27D90B0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B0B0);
  }

  return result;
}

unint64_t sub_22BF0ADC0()
{
  result = qword_27D90B0B8;
  if (!qword_27D90B0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B0B8);
  }

  return result;
}

unint64_t sub_22BF0AE18()
{
  result = qword_27D90B0C0;
  if (!qword_27D90B0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B0C0);
  }

  return result;
}

uint64_t sub_22BF0AEB4()
{
  v2 = *(v0 - 96);

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22BF0AF00()
{
  result = type metadata accessor for AST.FlatAssignExpr(0);
  v1 = *(result + 20);
  return result;
}

void sub_22BF0AF28()
{

  sub_22BE70138();
}

uint64_t sub_22BF0AF44()
{

  return sub_22C273EB4();
}

uint64_t sub_22BF0AF6C()
{
  result = v0;
  v3 = *(v1 - 160);
  return result;
}

uint64_t sub_22BF0AF84()
{
  v2 = *(v0 - 88);

  return swift_getEnumCaseMultiPayload();
}

void sub_22BF0AFD0(uint64_t a1, uint64_t a2)
{
  *(v2 - 112) = a1;
  *(v2 - 104) = a2;

  JUMPOUT(0x2318AB8D0);
}

uint64_t sub_22BF0AFF0()
{
  v2 = *(v0 - 96);

  return swift_getEnumCaseMultiPayload();
}

uint64_t Lexer.init(_:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = HIBYTE(a2) & 0xF;
  *a3 = result;
  a3[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  a3[2] = 0;
  a3[3] = v3;
  a3[4] = 0;
  a3[5] = 0;
  return result;
}

uint64_t Lexer.next()@<X0>(uint64_t a1@<X8>)
{
  while (1)
  {
    v3 = a1;
    sub_22BF0B730();
    v4 = *(v1 + 40);
    if (v4)
    {
      v2 = *(v1 + 32);
      *(v1 + 32) = 0;
      *(v1 + 40) = 0;
    }

    else
    {
      result = sub_22C273204();
      if (!v6)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
        v15 = -1;
        goto LABEL_33;
      }

      sub_22BE3E568();
    }

    if (v2 != 35 || v4 != 0xE100000000000000)
    {
      sub_22BE18D2C();
      if ((sub_22C274014() & 1) == 0)
      {
        break;
      }
    }

    do
    {
      v8 = sub_22C273204();
      if (!v9)
      {
        break;
      }

      if (v8 == 10 && v9 == 0xE100000000000000)
      {

        break;
      }

      v11 = sub_22BE3AFA0();
    }

    while ((v11 & 1) == 0);
    a1 = v3;
    v1 = v50;
    v2 = v49;
  }

  v12 = v2 == 61 && v4 == 0xE100000000000000;
  if (v12 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    result = sub_22BF0B820();
    v13 = (result & 1) == 0;
    v14 = 2;
LABEL_24:
    if (!v13)
    {
      ++v14;
    }

LABEL_26:
    *v3 = v14;
    *(v3 + 8) = 0;
LABEL_27:
    v15 = 6;
    goto LABEL_33;
  }

  v16 = v2 == 33 && v4 == 0xE100000000000000;
  if (v16 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    result = sub_22BF0B820();
    v14 = 18;
    if (result)
    {
      v14 = 4;
    }

    goto LABEL_26;
  }

  v17 = v2 == 60 && v4 == 0xE100000000000000;
  if (v17 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    result = sub_22BF0B820();
    v13 = (result & 1) == 0;
    v14 = 5;
    goto LABEL_24;
  }

  v18 = v2 == 62 && v4 == 0xE100000000000000;
  if (v18 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    result = sub_22BF0B820();
    v13 = (result & 1) == 0;
    v14 = 7;
    goto LABEL_24;
  }

  v19 = v2 == 43 && v4 == 0xE100000000000000;
  if (v19 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    result = sub_22BF0B820();
    v13 = (result & 1) == 0;
    v14 = 9;
    goto LABEL_24;
  }

  v20 = v2 == 45 && v4 == 0xE100000000000000;
  if (v20 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    result = sub_22BF0B820();
    v13 = (result & 1) == 0;
    v14 = 11;
    goto LABEL_24;
  }

  v21 = v2 == 47 && v4 == 0xE100000000000000;
  if (v21 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    result = sub_22BF0B820();
    v13 = (result & 1) == 0;
    v14 = 16;
    goto LABEL_24;
  }

  v22 = v2 == 42 && v4 == 0xE100000000000000;
  if (v22 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    result = sub_22C273204();
    *(v1 + 32) = result;
    *(v1 + 40) = v23;
    if (v23)
    {
      v24 = result;
      v25 = v23;
      v26 = result == 61 && v23 == 0xE100000000000000;
      if (v26 || (sub_22BE1A210() & 1) != 0)
      {

        *(v1 + 32) = 0;
        *(v1 + 40) = 0;
        v27 = xmmword_22C28B600;
LABEL_97:
        *v3 = v27;
        goto LABEL_27;
      }

      v29 = v24 == 42 && v25 == 0xE100000000000000;
      if (v29 || (result = sub_22BE1A210(), (result & 1) != 0))
      {

        *(v1 + 32) = 0;
        *(v1 + 40) = 0;
        v27 = xmmword_22C28B5F0;
        goto LABEL_97;
      }
    }

    v27 = xmmword_22C28B610;
    goto LABEL_97;
  }

  v28 = v2 == 40 && v4 == 0xE100000000000000;
  if (v28 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    v27 = xmmword_22C28B5E0;
    goto LABEL_97;
  }

  v30 = v2 == 41 && v4 == 0xE100000000000000;
  if (v30 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    v27 = xmmword_22C28B5D0;
    goto LABEL_97;
  }

  v31 = v2 == 123 && v4 == 0xE100000000000000;
  if (v31 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    v27 = xmmword_22C28B5C0;
    goto LABEL_97;
  }

  v32 = v2 == 125 && v4 == 0xE100000000000000;
  if (v32 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    v27 = xmmword_22C28B5B0;
    goto LABEL_97;
  }

  v33 = v2 == 91 && v4 == 0xE100000000000000;
  if (v33 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    v27 = xmmword_22C28B5A0;
    goto LABEL_97;
  }

  v34 = v2 == 93 && v4 == 0xE100000000000000;
  if (v34 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    v27 = xmmword_22C28B590;
    goto LABEL_97;
  }

  v35 = v2 == 46 && v4 == 0xE100000000000000;
  if (v35 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    v27 = xmmword_22C28B580;
    goto LABEL_97;
  }

  v36 = v2 == 44 && v4 == 0xE100000000000000;
  if (v36 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    v27 = xmmword_22C28B570;
    goto LABEL_97;
  }

  v37 = v2 == 58 && v4 == 0xE100000000000000;
  if (v37 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    v27 = xmmword_22C28B560;
    goto LABEL_97;
  }

  v38 = v2 == 59 && v4 == 0xE100000000000000;
  if (v38 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    v27 = xmmword_22C28B550;
    goto LABEL_97;
  }

  v39 = v2 == 63 && v4 == 0xE100000000000000;
  if (v39 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    v27 = xmmword_22C28B540;
    goto LABEL_97;
  }

  if (v2 != 10 || v4 != 0xE100000000000000)
  {
    sub_22BE18D2C();
    if ((sub_22C274014() & 1) == 0)
    {
      v41 = v2 == 34 && v4 == 0xE100000000000000;
      if (v41 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
      {

        result = sub_22BF0B9F4(&v47);
        goto LABEL_170;
      }

      if (v2 == 48 && v4 == 0xE100000000000000)
      {
        goto LABEL_180;
      }

      sub_22BE1B328();
      v43 = sub_22C274014();
      if (v43)
      {
LABEL_181:
        *&v47 = v2;
        *(&v47 + 1) = v4;
        MEMORY[0x28223BE20](v43);
        v46[2] = &v47;
        if (!sub_22BF0CB24(sub_22BF0CDF8, v46, 0xD000000000000035, v45 | 0x8000000000000000))
        {

          *v3 = 0;
          *(v3 + 8) = 0;
          goto LABEL_27;
        }

        sub_22BE1B328();
        sub_22BF0BEF4();
        goto LABEL_184;
      }

      if (v2 != 57 || v4 != 0xE100000000000000)
      {
LABEL_180:
        sub_22BE18D2C();
        v43 = sub_22C274014();
        if (v43)
        {
          goto LABEL_181;
        }
      }

      sub_22BE1B328();
      sub_22BF0BB10();
LABEL_184:

      goto LABEL_170;
    }
  }

  result = sub_22BF0B8D4(&v47);
LABEL_170:
  v15 = v48;
  *v3 = v47;
LABEL_33:
  *(v3 + 16) = v15;
  return result;
}