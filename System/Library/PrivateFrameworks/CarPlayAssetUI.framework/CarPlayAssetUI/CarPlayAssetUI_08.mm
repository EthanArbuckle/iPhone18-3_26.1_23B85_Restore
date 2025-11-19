__n128 Zone.scaledBy(_:)@<Q0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = v2;
  v219 = a2;
  v184 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08);
  MEMORY[0x28223BE20](v4 - 8);
  v216 = &v176 - v5;
  v203 = type metadata accessor for Slot();
  v194 = *(v203 - 8);
  v6 = MEMORY[0x28223BE20](v203);
  v217 = &v176 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v218 = &v176 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8);
  MEMORY[0x28223BE20](v9 - 8);
  v200 = &v176 - v10;
  v202 = type metadata accessor for Component();
  v11 = *(v202 - 1);
  v12 = MEMORY[0x28223BE20](v202);
  v191 = &v176 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v189 = &v176 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v176 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v176 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780);
  MEMORY[0x28223BE20](v21 - 8);
  v182 = &v176 - v22;
  sub_242CA321C(v2, &v176 - v22, &qword_27ECFC780);
  v23 = type metadata accessor for Zone();
  v24 = v23[6];
  v25 = (v2 + v23[5]);
  v26 = v25[1];
  v181 = *v25;
  v27 = *(v3 + v24);
  v28 = *(v3 + v24 + 8);
  v29 = *(v3 + v24 + 16);
  v30 = *(v3 + v24 + 24);
  CGAffineTransformMakeScale(&v224, v219.n128_f64[0], v219.n128_f64[0]);
  v230.origin.x = v27;
  v230.origin.y = v28;
  v230.size.width = v29;
  v230.size.height = v30;
  v231 = CGRectApplyAffineTransform(v230, &v224);
  x = v231.origin.x;
  y = v231.origin.y;
  width = v231.size.width;
  height = v231.size.height;
  v183 = v23;
  v33 = v23[7];
  v177 = v3;
  v34 = *(v3 + v33);
  v35 = *(v34 + 16);
  v36 = MEMORY[0x277D84F90];
  v190 = v11;
  v180 = v26;
  if (v35)
  {
    v222 = MEMORY[0x277D84F90];

    sub_242E3BE90(0, v35, 0);
    v37 = 0;
    v38 = v222;
    v186 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v185 = v34 + v186;
    v193 = v18;
    v192 = v20;
    v188 = v34;
    v187 = v35;
    while (v37 < *(v34 + 16))
    {
      v201 = v38;
      v198 = *(v11 + 72);
      sub_242CF4224(v185 + v198 * v37, v18, type metadata accessor for Component);
      sub_242CA321C(v18, v200, &qword_27ECF23E8);
      v39 = v202[6];
      v195 = v18[v202[5]];
      v40 = *&v18[v39 + 8];
      v197 = *&v18[v39];
      v41 = &v18[v202[7]];
      v42 = *v41;
      v43 = v41[1];
      v44 = *&v18[v202[9]];
      v45 = *(v44 + 16);
      v199 = v37;
      v196 = v40;
      if (v45)
      {
        v229 = v36;

        sub_242E3BEB0(0, v45, 0);
        v46 = v229;
        v205 = (*(v194 + 80) + 32) & ~*(v194 + 80);
        v47 = v44 + v205;
        v204 = *(v194 + 72);
        v48 = v218;
        do
        {
          v214 = v45;
          v220 = v46;
          v213 = v47;
          v49 = v217;
          sub_242CF4224(v47, v217, type metadata accessor for Slot);
          v50 = *(v49 + 128);
          v215 = *(v49 + 120);
          v51 = *v49;
          v52 = *(v49 + 8);
          v53 = *(v49 + 24);
          v208 = *(v49 + 16);
          v54 = *(v49 + 32);
          v55 = *(v49 + 40);
          v56 = *(v49 + 48);
          v57 = *(v49 + 56);
          v58 = *(v49 + 64);
          v59 = *(v49 + 72);
          CGAffineTransformMakeScale(&v224, v219.n128_f64[0], v219.n128_f64[0]);
          v232.origin.x = v56;
          v232.origin.y = v57;
          v232.size.width = v58;
          v232.size.height = v59;
          v233 = CGRectApplyAffineTransform(v232, &v224);
          v60 = v233.origin.x;
          v61 = v233.origin.y;
          v62 = v233.size.width;
          v63 = v233.size.height;
          v212 = *(v49 + 112);
          v64 = v203;
          v65 = *(v203 + 36);
          v233.origin = *(v49 + 96);
          v211 = vmulq_n_f64(*(v49 + 80), v219.n128_f64[0]);
          v210 = vmulq_n_f64(v233.origin, v219.n128_f64[0]);
          sub_242CA321C(v49 + v65, v216, &qword_27ECF0B08);
          v67 = v64[9];
          v66 = v64[10];
          v207 = v67;
          v68 = (v49 + v66);
          v70 = *v68;
          v69 = v68[1];
          v209 = v70;
          v221 = v69;
          v71 = type metadata accessor for Instrument();
          (*(*(v71 - 8) + 56))(v48 + v67, 1, 1, v71);
          v72 = v64[11];
          v206 = (v48 + v64[10]);
          v73 = &v218[v72];
          v74 = v50;

          v75 = v208;
          sub_242CF428C(v51, v52, v208, v53, v54, v55);

          sub_242F03710();
          sub_242CF6C00(v49, type metadata accessor for Slot);
          *&v73[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140) + 52)] = 7;
          v48 = v218;
          *&v218[v64[12]] = 0;
          *v48 = v51;
          *(v48 + 8) = v52;
          *(v48 + 16) = v75;
          *(v48 + 24) = v53;
          *(v48 + 32) = v54;
          *(v48 + 40) = v55;
          *(v48 + 48) = v60;
          *(v48 + 56) = v61;
          *(v48 + 64) = v62;
          *(v48 + 72) = v63;
          v76 = v210;
          *(v48 + 80) = v211;
          *(v48 + 96) = v76;
          *(v48 + 120) = v215;
          *(v48 + 128) = v74;
          *(v48 + 112) = v212;
          sub_242CF42A0(v216, v48 + v207);
          v77 = v206;
          v78 = v221;
          *v206 = v209;
          v77[1] = v78;
          v46 = v220;
          v229 = v220;
          v80 = *(*&v220 + 16);
          v79 = *(*&v220 + 24);
          if (v80 >= v79 >> 1)
          {
            sub_242E3BEB0(v79 > 1, v80 + 1, 1);
            v48 = v218;
            v46 = v229;
          }

          *(*&v46 + 16) = v80 + 1;
          v81 = v204;
          sub_242CF6A1C(v48, *&v46 + v205 + v80 * v204, type metadata accessor for Slot);
          v47 = v213 + v81;
          v45 = v214 - 1;
        }

        while (v214 != 1);
        v18 = v193;
        v36 = MEMORY[0x277D84F90];
        v20 = v192;
      }

      else
      {

        v46 = v36;
      }

      LODWORD(v221) = v18[v202[8]];
      v82 = *(*&v46 + 16);
      v220 = v46;
      v215 = v82;
      if (v82)
      {
        v224.a = v36;
        sub_242E3BC70(0, v82, 0);
        a = v224.a;
        v84 = *&v46 + ((*(v194 + 80) + 32) & ~*(v194 + 80));
        v85 = *(v194 + 72);
        do
        {
          v86 = v217;
          sub_242CF4224(v84, v217, type metadata accessor for Slot);
          v88 = *(v86 + 120);
          v87 = *(v86 + 128);

          sub_242CF6C00(v86, type metadata accessor for Slot);
          v224.a = a;
          v90 = *(*&a + 16);
          v89 = *(*&a + 24);
          if (v90 >= v89 >> 1)
          {
            sub_242E3BC70((v89 > 1), v90 + 1, 1);
            a = v224.a;
          }

          *(*&a + 16) = v90 + 1;
          v91 = *&a + 16 * v90;
          *(v91 + 32) = v88;
          *(v91 + 40) = v87;
          v84 += v85;
          v82 = (v82 - 1);
        }

        while (v82);
        v18 = v193;
        v36 = MEMORY[0x277D84F90];
        v20 = v192;
      }

      else
      {
        a = v36;
      }

      v93 = sub_242C86440(v92);

      v94 = *(v93 + 16);

      v95 = *(*&a + 16);

      v11 = v190;
      v38 = v201;
      if (v94 != v95)
      {
        goto LABEL_34;
      }

      v96 = v42 * v219.n128_f64[0];
      v97 = v43 * v219.n128_f64[0];
      sub_242CF6C00(v18, type metadata accessor for Component);
      v98 = v189;
      sub_242CF6B3C(v200, v189, &qword_27ECF23E8);
      v99 = v202;
      *(v98 + v202[5]) = v195;
      v100 = (v98 + v99[6]);
      v101 = v196;
      *v100 = v197;
      v100[1] = v101;
      v102 = (v98 + v99[7]);
      *v102 = v96;
      v102[1] = v97;
      *(v98 + v99[9]) = v220;
      *(v98 + v99[8]) = v221;
      sub_242CF6A1C(v98, v20, type metadata accessor for Component);
      v222 = v38;
      v104 = *(v38 + 16);
      v103 = *(v38 + 24);
      v105 = v199;
      if (v104 >= v103 >> 1)
      {
        sub_242E3BE90(v103 > 1, v104 + 1, 1);
        v105 = v199;
        v38 = v222;
      }

      v37 = v105 + 1;
      *(v38 + 16) = v104 + 1;
      sub_242CF6A1C(v20, v38 + v186 + v104 * v198, type metadata accessor for Component);
      v34 = v188;
      if (v37 == v187)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_34:
    v224.a = 0.0;
    v224.b = -2.68156159e154;
    sub_242F05A80();

    v224.a = -2.31584178e77;
    *&v224.b = 0x8000000242F59E80;
    v153 = MEMORY[0x277D84F90];
    if (v215)
    {
      v229 = MEMORY[0x277D84F90];
      v154 = v215;
      sub_242E3BC70(0, v215, 0);
      v153 = v229;
      v155 = *&v220 + ((*(v194 + 80) + 32) & ~*(v194 + 80));
      v38 = *(v194 + 72);
      do
      {
        v157 = v217;
        sub_242CF4224(v155, v217, type metadata accessor for Slot);
        v159 = *(v157 + 120);
        v158 = *(v157 + 128);

        sub_242CF6C00(v157, type metadata accessor for Slot);
        v229 = v153;
        v20 = *(*&v153 + 16);
        v160 = *(*&v153 + 24);
        if (v20 >= v160 >> 1)
        {
          sub_242E3BC70((v160 > 1), v20 + 1, 1);
          v153 = v229;
        }

        *(*&v153 + 16) = v20 + 1;
        v156 = *&v153 + 16 * v20;
        *(v156 + 32) = v159;
        *(v156 + 40) = v158;
        v155 += v38;
        v154 = (v154 - 1);
      }

      while (v154);
    }

    v161 = MEMORY[0x245D26920](*&v153, MEMORY[0x277D837D0]);
    v163 = v162;

    MEMORY[0x245D26660](v161, v163);

    goto LABEL_40;
  }

  v38 = MEMORY[0x277D84F90];
LABEL_24:
  v106 = v183;
  v107 = (v177 + v183[8]);
  v228 = *(v107 + 96);
  v108 = v107[5];
  v226 = v107[4];
  v227 = v108;
  v109 = v107[3];
  *&v224.tx = v107[2];
  v225 = v109;
  v110 = *v107;
  *&v224.c = v107[1];
  *&v224.a = v110;
  v111 = v183[9];
  v112 = *(v177 + v183[10]);
  v113 = *(v177 + v111);
  LODWORD(v221) = *(v177 + v111 + 8);
  LODWORD(v220) = *(v177 + v111 + 9);
  v114 = v183[12];
  v115 = (v177 + v183[11]);
  v117 = *v115;
  v116 = v115[1];
  v219.n128_u64[0] = v117;
  v218 = v116;
  v118 = *(v177 + v114 + 8);
  v217 = *(v177 + v114);
  v119 = v184;
  v120 = v184 + v111;
  *v120 = 0;
  *(v120 + 8) = 256;
  v214 = v106[10];
  *(v119 + v214) = 2;
  v121 = (v119 + v106[11]);
  *v121 = xmmword_242F13BC0;
  v215 = v121;
  v121[2] = 2;
  v122 = (v119 + v106[12]);
  *v122 = 0;
  v122[1] = 0;
  v213 = v122;
  *(v119 + v106[13]) = 0;
  v20 = *(v38 + 16);
  v216 = v118;
  if (v20)
  {
    v211.f64[0] = v113;
    LODWORD(v212) = v112;
    sub_242CF3ABC(&v224, &v222);
    v222 = *&v36;

    sub_242E3BC70(0, v20, 0);
    v123 = v222;
    v124 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v201 = v38;
    v125 = v38 + v124;
    v126 = *(v11 + 72);
    v127 = v20;
    do
    {
      v128 = v191;
      sub_242CF4224(v125, v191, type metadata accessor for Component);
      v129 = (v128 + v202[6]);
      v131 = *v129;
      v130 = v129[1];

      sub_242CF6C00(v128, type metadata accessor for Component);
      v222 = v123;
      v133 = *(v123 + 16);
      v132 = *(v123 + 24);
      if (v133 >= v132 >> 1)
      {
        sub_242E3BC70((v132 > 1), v133 + 1, 1);
        v123 = v222;
      }

      *(v123 + 16) = v133 + 1;
      v134 = v123 + 16 * v133;
      *(v134 + 32) = v131;
      *(v134 + 40) = v130;
      v125 += v126;
      --v127;
    }

    while (v127);
    v38 = v201;
    LOBYTE(v112) = v212;
    v113 = v211.f64[0];
  }

  else
  {
    sub_242CF3ABC(&v224, &v222);

    v123 = MEMORY[0x277D84F90];
  }

  v136 = sub_242C86440(v135);

  v137 = *(v136 + 16);

  v138 = *(v123 + 16);

  if (v137 != v138)
  {
    while (1)
    {
      v222 = 0;
      v223 = 0xE000000000000000;
      sub_242F05A80();

      v222 = 0xD000000000000022;
      v223 = 0x8000000242F59E50;
      v164 = MEMORY[0x277D84F90];
      if (v20)
      {
        v229 = MEMORY[0x277D84F90];
        sub_242E3BC70(0, v20, 0);
        v164 = v229;
        v165 = v38 + ((*(v190 + 80) + 32) & ~*(v190 + 80));
        v38 = *(v190 + 72);
        do
        {
          v167 = v191;
          sub_242CF4224(v165, v191, type metadata accessor for Component);
          v168 = (v167 + v202[6]);
          v169 = *v168;
          v170 = v168[1];

          sub_242CF6C00(v167, type metadata accessor for Component);
          v229 = v164;
          v172 = *(*&v164 + 16);
          v171 = *(*&v164 + 24);
          if (v172 >= v171 >> 1)
          {
            sub_242E3BC70((v171 > 1), v172 + 1, 1);
            v164 = v229;
          }

          *(*&v164 + 16) = v172 + 1;
          v166 = *&v164 + 16 * v172;
          *(v166 + 32) = v169;
          *(v166 + 40) = v170;
          v165 += v38;
          --v20;
        }

        while (v20);
      }

      v173 = MEMORY[0x245D26920](*&v164, MEMORY[0x277D837D0]);
      v175 = v174;

      MEMORY[0x245D26660](v173, v175);

LABEL_40:
      sub_242F05C60();
      __break(1u);
    }
  }

  v139 = v184;
  sub_242CF6B3C(v182, v184, &qword_27ECFC780);
  v140 = v183;
  v141 = (v139 + v183[5]);
  v142 = v180;
  *v141 = v181;
  v141[1] = v142;
  v143 = (v139 + v140[6]);
  v144 = y;
  *v143 = x;
  v143[1] = v144;
  v143[2] = width;
  v143[3] = height;
  *(v139 + v140[7]) = v38;
  v145 = v139 + v140[8];
  v146 = v227;
  *(v145 + 64) = v226;
  *(v145 + 80) = v146;
  *(v145 + 96) = v228;
  v147 = *&v224.c;
  *v145 = *&v224.a;
  *(v145 + 16) = v147;
  result = v225;
  *(v145 + 32) = *&v224.tx;
  *(v145 + 48) = result;
  *(v139 + v214) = v112;
  *v120 = v113;
  *(v120 + 8) = v221;
  *(v120 + 9) = LOBYTE(v220);
  v149 = v215;
  v150 = v218;
  *v215 = v219.n128_u64[0];
  v149[1] = v150;
  v151 = v213;
  v152 = v216;
  *v213 = v217;
  v151[1] = v152;
  return result;
}

uint64_t sub_242CEE9E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6964654D7370616DLL;
  v4 = 0xE900000000000061;
  if (v2 != 1)
  {
    v3 = 6382436;
    v4 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656C676E6973;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x6964654D7370616DLL;
  v8 = 0xE900000000000061;
  if (*a2 != 1)
  {
    v7 = 6382436;
    v8 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656C676E6973;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_242F06110();
  }

  return v11 & 1;
}

uint64_t sub_242CEEADC()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242CEEB78()
{
  sub_242F04DD0();
}

uint64_t sub_242CEEC00()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242CEEC98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242CF6818();
  *a1 = result;
  return result;
}

void sub_242CEECC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE900000000000061;
  v5 = 0x6964654D7370616DLL;
  if (v2 != 1)
  {
    v5 = 6382436;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C676E6973;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_242CEED20()
{
  v1 = 0x6964654D7370616DLL;
  if (*v0 != 1)
  {
    v1 = 6382436;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C676E6973;
  }
}

uint64_t sub_242CEED74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242CF6818();
  *a1 = result;
  return result;
}

uint64_t sub_242CEED9C(uint64_t a1)
{
  v2 = sub_242CF4310();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CEEDD8(uint64_t a1)
{
  v2 = sub_242CF4310();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242CEEE14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 12639;
  v5 = 0x8000000242F578F0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x8000000242F578F0;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 12383;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  v8 = 12639;
  if (*a2 == 1)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v8 = 0xD000000000000015;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 12383;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_242F06110();
  }

  return v11 & 1;
}

uint64_t sub_242CEEEF0()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242CEEF80()
{
  sub_242F04DD0();
}

uint64_t sub_242CEEFFC()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242CEF088@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242CF6864();
  *a1 = result;
  return result;
}

void sub_242CEF0B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE200000000000000;
  v5 = 12639;
  if (v2 != 1)
  {
    v5 = 0xD000000000000015;
    v4 = 0x8000000242F578F0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 12383;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_242CEF104()
{
  v1 = 12639;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_242CEF14C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242CF6864();
  *a1 = result;
  return result;
}

uint64_t sub_242CEF174(uint64_t a1)
{
  v2 = sub_242CF4460();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CEF1B0(uint64_t a1)
{
  v2 = sub_242CF4460();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242CEF1EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 12383;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0x8000000242F578F0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 12383;
  }

  if (*a2)
  {
    v6 = 0x8000000242F578F0;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_242F06110();
  }

  return v8 & 1;
}

uint64_t sub_242CEF28C()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242CEF308()
{
  sub_242F04DD0();
}

uint64_t sub_242CEF370()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242CEF3F4@<X0>(char *a1@<X8>)
{
  v2 = sub_242F05CD0();

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

void sub_242CEF450(unint64_t *a1@<X8>)
{
  v2 = 0x8000000242F578F0;
  v3 = 12383;
  if (*v1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xE200000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_242CEF488()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_242CEF4BC@<X0>(char *a1@<X8>)
{
  v2 = sub_242F05CD0();

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

uint64_t sub_242CEF520(uint64_t a1)
{
  v2 = sub_242CF4364();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CEF55C(uint64_t a1)
{
  v2 = sub_242CF4364();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Zone.ZoneType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23F0);
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v4 = &v49 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23F8);
  v50 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v49 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2400);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v49 - v10;
  v12 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, v12);
  sub_242CF4310();
  v13 = v54;
  sub_242F06480();
  if (v13)
  {
    goto LABEL_2;
  }

  v16 = v53;
  v54 = v9;
  v17 = sub_242F05E10();
  if (!*(v17 + 16))
  {

    v22 = sub_242F05B10();
    swift_allocError();
    v24 = v23;
    v25 = v55;
    __swift_project_boxed_opaque_existential_2Tm(v55, v55[3]);
    sub_242F06450();
    sub_242F05AF0();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84168], v22);
    swift_willThrow();
    (*(v54 + 8))(v11, v8);
    v14 = v25;
    return __swift_destroy_boxed_opaque_existential_2Tm(v14);
  }

  v49 = 0;
  LODWORD(v18) = *(v17 + 32);

  if (v18)
  {
    if (v18 == 1)
    {
      LOBYTE(v59) = 1;
      sub_242CF4460();
      v19 = v49;
      sub_242F05D10();
      if (!v19)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2418);
        LOBYTE(v56) = 0;
        sub_242CF44B4(&qword_27ECF2420, sub_242CF43B8);
        sub_242F05D90();
        v20 = v54;
        v21 = *&v59;
        LOBYTE(v59) = 1;
        sub_242C7DBD0();
        sub_242F05D90();
        v53 = v21;
        if (v57)
        {
          v39 = 0.0;
        }

        else
        {
          v39 = v56;
        }

        v75 = 2;
        sub_242CF440C();
        sub_242F05D90();
        v49 = 0;
        (*(v50 + 8))(v7, v5);
        (*(v20 + 8))(v11, v8);
        v36 = v64 | ((v65 | (v66 << 16)) << 32);
        v30 = v68;
        v33 = v71 | ((v72 | (v73 << 16)) << 32);
        if (v68 == 2)
        {
          v18 = 0;
          v29 = 0;
          v30 = 0;
          LOBYTE(v32) = 1;
          v40 = v39 * -0.5;
          LOBYTE(v35) = 1;
          v37 = 0x3FFCCCCCCCCCCCCDLL;
          v28 = 0xC024000000000000;
          v27 = 0x4022000000000000;
          v31 = 0x3FE999999999999ALL;
        }

        else
        {
          v31 = v74;
          LOBYTE(v32) = v70;
          v18 = v69;
          v29 = v67;
          LOBYTE(v35) = v63;
          v37 = *&v62;
          v40 = v61;
          v27 = *&v59;
          v28 = v60;
        }

        v42 = v55;
        v43 = v52;
        v26 = v53;
        v41 = 0;
        v38 = v37 >> 8;
        v34 = v18 >> 8;
        goto LABEL_11;
      }
    }

    else
    {
      LOBYTE(v59) = 2;
      sub_242CF4364();
      v44 = v49;
      sub_242F05D10();
      if (!v44)
      {
        v50 = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2418);
        v75 = 0;
        sub_242CF44B4(&qword_27ECF2420, sub_242CF43B8);
        v45 = v16;
        sub_242F05D90();
        v42 = v55;
        v46 = v4;
        v47 = v56;
        LOBYTE(v18) = 1;
        v58 = 1;
        sub_242CF440C();
        sub_242F05D90();
        v49 = 0;
        v48 = *&v47;
        (*(v51 + 8))(v46, v45);
        (*(v54 + 8))(v11, v50);
        v38 = v64 | ((v65 | (v66 << 16)) << 32);
        v29 = v68;
        v34 = v71 | ((v72 | (v73 << 16)) << 32);
        if (v68 == 2)
        {
          v29 = 0;
          v30 = 0;
          v28 = 0;
          LOBYTE(v37) = 0;
          v35 = 0;
          v32 = 0x3FE999999999999ALL;
          v27 = 0x4026000000000000;
          v40 = 1.2;
          v39 = 56.0;
        }

        else
        {
          v32 = v74;
          LOBYTE(v18) = v70;
          v30 = v69;
          v35 = v67;
          LOBYTE(v37) = v63;
          v40 = v62;
          v27 = v60;
          v28 = *&v61;
          v39 = v59;
        }

        v43 = v52;
        v26 = v48;
        v36 = v35 >> 8;
        v33 = v32 >> 8;
        v41 = 1;
        goto LABEL_11;
      }
    }

    (*(v54 + 8))(v11, v8);
LABEL_2:
    v14 = v55;
    return __swift_destroy_boxed_opaque_existential_2Tm(v14);
  }

  (*(v54 + 8))(v11, v8);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  LOBYTE(v32) = 0;
  v33 = 0;
  v34 = 0;
  LOBYTE(v35) = 0;
  v36 = 0;
  LOBYTE(v37) = 0;
  v38 = 0;
  v39 = 0.0;
  v40 = 0.0;
  v41 = 2;
  v42 = v55;
  v43 = v52;
LABEL_11:
  *v43 = v26;
  *(v43 + 8) = v39;
  *(v43 + 16) = v27;
  *(v43 + 24) = v28;
  *(v43 + 32) = v40;
  *(v43 + 40) = v37 | (v38 << 8);
  *(v43 + 48) = v35 | (v36 << 8);
  *(v43 + 56) = v29;
  *(v43 + 64) = v30;
  *(v43 + 72) = v18 | (v34 << 8);
  *(v43 + 80) = v32 | (v33 << 8);
  *(v43 + 88) = v31;
  *(v43 + 96) = v41;
  return __swift_destroy_boxed_opaque_existential_2Tm(v42);
}

uint64_t Zone.ZoneType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2440);
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v36 = &v33 - v4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2448);
  v34 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v35 = &v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2450);
  v7 = *(v6 - 8);
  v40 = v6;
  v41 = v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - v11;
  v13 = *v1;
  v14 = v1[1];
  v33 = v1;
  v15 = *(v1 + 96);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CF4310();
  v16 = v12;
  sub_242F064C0();
  if (v15)
  {
    if (v15 == 1)
    {
      v43[0] = 2;
      sub_242CF4364();
      v17 = v36;
      v18 = v40;
      sub_242F05E40();
      *v43 = v13;
      v44 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2418);
      sub_242CF44B4(&qword_27ECF2458, sub_242CF4538);
      v19 = v39;
      v20 = v42;
      sub_242F05EB0();
      if (!v20)
      {
        *v43 = v14;
        v21 = *(v33 + 1);
        *&v43[24] = *(v33 + 2);
        v22 = *(v33 + 4);
        *&v43[40] = *(v33 + 3);
        *&v43[56] = v22;
        *&v43[72] = v33[10];
        *&v43[8] = v21;
        v44 = 1;
        sub_242CF458C();
        sub_242F05F20();
      }

      (*(v38 + 8))(v17, v19);
      return (*(v41 + 8))(v16, v18);
    }

    else
    {
      v43[0] = 0;
      v31 = v40;
      sub_242F05E40();
      v32 = *(v41 + 8);
      v32(v10, v31);
      return (v32)(v12, v31);
    }
  }

  else
  {
    v24 = v34;
    v43[0] = 1;
    sub_242CF4460();
    v25 = v35;
    v26 = v40;
    sub_242F05E40();
    *v43 = v13;
    v44 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2418);
    sub_242CF44B4(&qword_27ECF2458, sub_242CF4538);
    v27 = v37;
    v28 = v42;
    sub_242F05EB0();
    if (!v28)
    {
      *v43 = v14;
      v44 = 1;
      sub_242C7DB7C();
      sub_242F05F20();
      v29 = *(v33 + 4);
      *&v43[32] = *(v33 + 3);
      *&v43[48] = v29;
      *&v43[64] = *(v33 + 5);
      v30 = *(v33 + 2);
      *v43 = *(v33 + 1);
      *&v43[16] = v30;
      v44 = 2;
      sub_242CF458C();
      sub_242F05F20();
    }

    (*(v24 + 8))(v25, v27);
    return (*(v41 + 8))(v16, v26);
  }
}

uint64_t sub_242CF04D8()
{
  if (*v0)
  {
    return 0x72616C75676572;
  }

  else
  {
    return 0x746867696CLL;
  }
}

uint64_t sub_242CF0510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746867696CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72616C75676572 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_242CF05E8(uint64_t a1)
{
  v2 = sub_242CF45E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CF0624(uint64_t a1)
{
  v2 = sub_242CF45E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242CF0660(uint64_t a1)
{
  v2 = sub_242CF4688();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CF069C(uint64_t a1)
{
  v2 = sub_242CF4688();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242CF06D8(uint64_t a1)
{
  v2 = sub_242CF4634();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CF0714(uint64_t a1)
{
  v2 = sub_242CF4634();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Zone.PlatterConfiguration.MaterialStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2470);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2478);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2480);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CF45E0();
  sub_242F064C0();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_242CF4634();
    v14 = v18;
    sub_242F05E40();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_242CF4688();
    sub_242F05E40();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t Zone.PlatterConfiguration.MaterialStyle.hashValue.getter()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](v1);
  return sub_242F063E0();
}

uint64_t Zone.PlatterConfiguration.MaterialStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF24A0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF24A8);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF24B0);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CF45E0();
  v12 = v31;
  sub_242F06480();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_242F05E10();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_242C7FBE4();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_242F05B10();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10);
      *v22 = &type metadata for Zone.PlatterConfiguration.MaterialStyle;
      sub_242F05D20();
      sub_242F05AF0();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_242CF4634();
        sub_242F05D10();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_242CF4688();
        sub_242F05D10();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v13);
}

uint64_t sub_242CF0F64()
{
  v1 = 0x6D6F74737563;
  if (*v0 != 1)
  {
    v1 = 0x7373616C67;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x614D6D6574737973;
  }
}

uint64_t sub_242CF0FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242CF68B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242CF0FEC(uint64_t a1)
{
  v2 = sub_242CF46DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CF1028(uint64_t a1)
{
  v2 = sub_242CF46DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242CF1064()
{
  if (*v0)
  {
    return 0x7974696361706FLL;
  }

  else
  {
    return 0x737569646172;
  }
}

uint64_t sub_242CF109C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x737569646172 && a2 == 0xE600000000000000;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7974696361706FLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_242CF1174(uint64_t a1)
{
  v2 = sub_242CF4784();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CF11B0(uint64_t a1)
{
  v2 = sub_242CF4784();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242CF11EC(uint64_t a1)
{
  v2 = sub_242CF4730();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CF1228(uint64_t a1)
{
  v2 = sub_242CF4730();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242CF1288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C6169726574616DLL && a2 == 0xED0000656C797453)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242CF1318(uint64_t a1)
{
  v2 = sub_242CF47D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CF1354(uint64_t a1)
{
  v2 = sub_242CF47D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Zone.PlatterConfiguration.BlurStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF24B8);
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v23 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF24C0);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF24C8);
  v24 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF24D0);
  v29 = *(v12 - 8);
  v30 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v15 = *v2;
  v16 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CF46DC();
  sub_242F064C0();
  if (v16)
  {
    if (v16 != 1)
    {
      v37 = 2;
      sub_242CF4730();
      v20 = v23;
      v21 = v30;
      sub_242F05E40();
      (*(v25 + 8))(v20, v26);
      return (*(v29 + 8))(v14, v21);
    }

    v36 = 1;
    sub_242CF4784();
    v17 = v30;
    sub_242F05E40();
    v35 = 0;
    v18 = v28;
    v19 = v31;
    sub_242F05EF0();
    if (!v19)
    {
      v34 = 1;
      sub_242F05EF0();
    }

    (*(v27 + 8))(v8, v18);
  }

  else
  {
    v33 = 0;
    sub_242CF47D8();
    v17 = v30;
    sub_242F05E40();
    v32 = v15 & 1;
    sub_242CF482C();
    sub_242F05F20();
    (*(v24 + 8))(v11, v9);
  }

  return (*(v29 + 8))(v14, v17);
}

uint64_t Zone.PlatterConfiguration.BlurStyle.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      MEMORY[0x245D279A0](1);
      sub_242F063C0();
      return sub_242F063C0();
    }

    v3 = 2;
  }

  else
  {
    MEMORY[0x245D279A0](0);
    v3 = v1 & 1;
  }

  return MEMORY[0x245D279A0](v3);
}

uint64_t Zone.PlatterConfiguration.BlurStyle.hashValue.getter()
{
  sub_242F06390();
  Zone.PlatterConfiguration.BlurStyle.hash(into:)();
  return sub_242F063E0();
}

uint64_t Zone.PlatterConfiguration.BlurStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2500);
  v40 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v39 = &v34 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2508);
  v38 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2510);
  v36 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2518);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - v11;
  v13 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, v13);
  sub_242CF46DC();
  v14 = v42;
  sub_242F06480();
  if (!v14)
  {
    v34 = v6;
    v15 = v39;
    v16 = v40;
    v42 = v10;
    v17 = v41;
    v18 = sub_242F05E10();
    v19 = (2 * *(v18 + 16)) | 1;
    v44 = v18;
    v45 = v18 + 32;
    v46 = 0;
    v47 = v19;
    v20 = sub_242C7FBE8();
    if (v20 == 3 || v46 != v47 >> 1)
    {
      v23 = sub_242F05B10();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10);
      *v25 = &type metadata for Zone.PlatterConfiguration.BlurStyle;
      sub_242F05D20();
      sub_242F05AF0();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
      swift_willThrow();
      (*(v42 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v48 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v49 = 1;
          sub_242CF4784();
          sub_242F05D10();
          v21 = v42;
          v49 = 0;
          v22 = v35;
          sub_242F05DD0();
          v30 = v29;
          v49 = 1;
          sub_242F05DD0();
          v32 = v31;
          (*(v38 + 8))(v5, v22);
          (*(v21 + 8))(v12, v9);
          swift_unknownObjectRelease();
          v33 = v30 | (v32 << 32);
        }

        else
        {
          v49 = 2;
          sub_242CF4730();
          sub_242F05D10();
          v28 = v42;
          (*(v16 + 8))(v15, v37);
          (*(v28 + 8))(v12, v9);
          swift_unknownObjectRelease();
          v33 = 0;
        }
      }

      else
      {
        v49 = 0;
        sub_242CF47D8();
        sub_242F05D10();
        sub_242CF4880();
        v27 = v34;
        sub_242F05E00();
        (*(v36 + 8))(v8, v27);
        (*(v42 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v33 = v49;
      }

      *v17 = v33;
      *(v17 + 8) = v48;
    }
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v43);
}

uint64_t sub_242CF1F48()
{
  sub_242F06390();
  Zone.PlatterConfiguration.BlurStyle.hash(into:)();
  return sub_242F063E0();
}

uint64_t sub_242CF1FA0()
{
  sub_242F06390();
  Zone.PlatterConfiguration.BlurStyle.hash(into:)();
  return sub_242F063E0();
}

void Zone.PlatterConfiguration.blurStyle.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Zone.PlatterConfiguration.blurStyle.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Zone.PlatterConfiguration.init(blurStyle:inset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v3 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v3;
  *(a2 + 12) = a3;
  return result;
}

void static Zone.PlatterConfiguration.customPlatterBlur(inset:)(uint64_t a1@<X8>, float a2@<S0>)
{
  *a1 = 1112014848;
  *(a1 + 8) = 1;
  *(a1 + 12) = a2;
}

unsigned __int8 *static Zone.PlatterConfiguration.systemMaterial(inset:materialStyle:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 12) = a3;
  return result;
}

uint64_t sub_242CF20B4()
{
  if (*v0)
  {
    return 0x7465736E69;
  }

  else
  {
    return 0x6C79745372756C62;
  }
}

uint64_t sub_242CF20F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C79745372756C62 && a2 == 0xE900000000000065;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7465736E69 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_242CF21D0(uint64_t a1)
{
  v2 = sub_242CF48D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CF220C(uint64_t a1)
{
  v2 = sub_242CF48D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Zone.PlatterConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2528);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CF48D4();
  sub_242F064C0();
  v14 = v7;
  v15 = v8;
  v13 = 0;
  sub_242CF4928();
  v9 = v11;
  sub_242F05F20();
  if (!v9)
  {
    v12 = 1;
    sub_242F05EF0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Zone.PlatterConfiguration.hash(into:)()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    MEMORY[0x245D279A0](0);
    v2 = v1 & 1;
LABEL_6:
    MEMORY[0x245D279A0](v2);
    return sub_242F063C0();
  }

  if (*(v0 + 8) != 1)
  {
    v2 = 2;
    goto LABEL_6;
  }

  MEMORY[0x245D279A0](1);
  sub_242F063C0();
  sub_242F063C0();
  return sub_242F063C0();
}

uint64_t Zone.PlatterConfiguration.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_242F06390();
  if (!v2)
  {
    MEMORY[0x245D279A0](0);
    v3 = v1 & 1;
LABEL_6:
    MEMORY[0x245D279A0](v3);
    goto LABEL_7;
  }

  if (v2 != 1)
  {
    v3 = 2;
    goto LABEL_6;
  }

  MEMORY[0x245D279A0](1);
  sub_242F063C0();
  sub_242F063C0();
LABEL_7:
  sub_242F063C0();
  return sub_242F063E0();
}

uint64_t Zone.PlatterConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2540);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CF48D4();
  sub_242F06480();
  if (!v2)
  {
    v14[15] = 0;
    sub_242CF497C();
    sub_242F05E00();
    v9 = v15;
    v10 = v16;
    v14[14] = 1;
    sub_242F05DD0();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 12) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CF2790()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_242F06390();
  if (!v2)
  {
    MEMORY[0x245D279A0](0);
    v3 = v1 & 1;
LABEL_6:
    MEMORY[0x245D279A0](v3);
    goto LABEL_7;
  }

  if (v2 != 1)
  {
    v3 = 2;
    goto LABEL_6;
  }

  MEMORY[0x245D279A0](1);
  sub_242F063C0();
  sub_242F063C0();
LABEL_7:
  sub_242F063C0();
  return sub_242F063E0();
}

double Zone.carouselConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Zone() + 32);
  if (*(v3 + 96) == 1)
  {
    v5 = *(v3 + 24);
    v7 = *(v3 + 56);
    *(a1 + 32) = *(v3 + 40);
    *(a1 + 48) = v7;
    *(a1 + 64) = *(v3 + 72);
    v6 = *(v3 + 8);
  }

  else
  {
    if (*(v3 + 96))
    {
      *&v5 = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 2;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      return *&v5;
    }

    v4 = *(v3 + 64);
    *(a1 + 32) = *(v3 + 48);
    *(a1 + 48) = v4;
    *(a1 + 64) = *(v3 + 80);
    v6 = *(v3 + 16);
    v5 = *(v3 + 32);
  }

  *a1 = v6;
  *(a1 + 16) = v5;
  return *&v5;
}

void sub_242CF2908(uint64_t *a1, int a2, void *a3)
{
  v86 = a3;
  v84 = a2;
  v95 = type metadata accessor for Component();
  v4 = *(v95 - 8);
  v5 = MEMORY[0x28223BE20](v95);
  v85 = &v75[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v88 = &v75[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2730);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v101 = &v75[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v97 = &v75[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2738);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v81 = &v75[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v75[-v16];
  MEMORY[0x28223BE20](v15);
  v80 = &v75[-v18];
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2740);
  v19 = *(v100 - 8);
  v20 = MEMORY[0x28223BE20](v100);
  v77 = &v75[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v75[-v23];
  MEMORY[0x28223BE20](v22);
  v82 = &v75[-v25];
  v26 = *a1;
  v87 = a1[1];
  v27 = a1[2];
  v91 = a1[3];
  v106 = v26;
  v28 = a1[4];
  v76 = a1[5];
  v29 = a1[6];
  v96 = *(v26 + 16);
  sub_242CA321C(&v106, v105, &qword_27ECF2338);
  v89 = v27;
  v90 = v4;
  v93 = (v4 + 48);
  v94 = (v4 + 56);
  v98 = (v19 + 48);
  v99 = (v19 + 56);

  v92 = v28;

  v78 = v29;

  v30 = 0;
  while (2)
  {
    for (i = v97; ; i = v97)
    {
      if (v30 == v96)
      {
        v32 = 1;
        v30 = v96;
      }

      else
      {
        if ((v30 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (v30 >= *(v26 + 16))
        {
          goto LABEL_32;
        }

        sub_242CF4224(v26 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v30, i, type metadata accessor for Component);
        v32 = 0;
        ++v30;
      }

      v33 = v95;
      v34 = 1;
      (*v94)(i, v32, 1, v95);
      v35 = i;
      v36 = v101;
      sub_242CF6B3C(v35, v101, &qword_27ECF2730);
      if ((*v93)(v36, 1, v33) != 1)
      {
        v37 = v88;
        sub_242CF6A1C(v101, v88, type metadata accessor for Component);
        v87(v37);
        sub_242CF6C00(v37, type metadata accessor for Component);
        v34 = 0;
      }

      v38 = v26;
      v39 = *v99;
      v40 = v34;
      v41 = v100;
      (*v99)(v17, v40, 1, v100);
      v42 = *v98;
      if ((*v98)(v17, 1, v41) == 1)
      {
        sub_242C6D138(v17, &qword_27ECF2738);
        v43 = 1;
        v44 = v80;
        goto LABEL_15;
      }

      sub_242CF6B3C(v17, v24, &qword_27ECF2740);
      if (v91(v24))
      {
        break;
      }

      sub_242C6D138(v24, &qword_27ECF2740);
    }

    v44 = v80;
    sub_242CF6B3C(v24, v80, &qword_27ECF2740);
    v43 = 0;
LABEL_15:
    v45 = v100;
    v39(v44, v43, 1, v100);
    v46 = v81;
    sub_242CF6B3C(v44, v81, &qword_27ECF2738);
    v47 = v45;
    v48 = 1;
    if (v42(v46, 1, v47) != 1)
    {
      v49 = v77;
      sub_242CF6B3C(v81, v77, &qword_27ECF2740);
      v76(v49);
      sub_242C6D138(v49, &qword_27ECF2740);
      v48 = 0;
    }

    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2748);
    v51 = v82;
    (*(*(v50 - 8) + 56))(v82, v48, 1, v50);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2748);
    if ((*(*(v52 - 8) + 48))(v51, 1, v52) == 1)
    {
      sub_242C6D138(&v106, &qword_27ECF2338);

      sub_242C6D138(&v106, &qword_27ECF2338);

      return;
    }

    v53 = *(v52 + 48);
    v54 = v51[1];
    v105[0] = *v51;
    v55 = v105[0];
    v105[1] = v54;
    v56 = v51 + v53;
    v57 = v54;
    sub_242CF6A1C(v56, v85, type metadata accessor for Component);
    v58 = *v86;
    v60 = sub_242CE519C(v55, v57);
    v61 = v58[2];
    v62 = (v59 & 1) == 0;
    v63 = v61 + v62;
    if (__OFADD__(v61, v62))
    {
      goto LABEL_33;
    }

    v64 = v58[3];
    v83 = v55;
    if (v64 >= v63)
    {
      v26 = v38;
      if (v84)
      {
        if (v59)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v72 = v59;
        sub_242D02294();
        if (v72)
        {
          goto LABEL_28;
        }
      }

LABEL_25:
      v67 = *v86;
      *(*v86 + 8 * (v60 >> 6) + 64) |= 1 << v60;
      v68 = (v67[6] + 16 * v60);
      *v68 = v83;
      v68[1] = v57;
      sub_242CF6A1C(v85, v67[7] + *(v90 + 72) * v60, type metadata accessor for Component);
      v69 = v67[2];
      v70 = __OFADD__(v69, 1);
      v71 = v69 + 1;
      if (!v70)
      {
        v67[2] = v71;
        v84 = 1;
        continue;
      }

      goto LABEL_34;
    }

    break;
  }

  v79 = v59;
  sub_242D06138(v63, v84 & 1);
  v65 = sub_242CE519C(v55, v57);
  if ((v79 & 1) != (v66 & 1))
  {
LABEL_35:
    sub_242F06320();
    __break(1u);
    goto LABEL_36;
  }

  v60 = v65;
  v26 = v38;
  if ((v79 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_28:
  v73 = swift_allocError();
  swift_willThrow();
  sub_242C6D138(&v106, &qword_27ECF2338);

  v104 = v73;
  v74 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27ECF1F50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_242CF6C00(v85, type metadata accessor for Component);
    sub_242C6D138(&v106, &qword_27ECF2338);

    return;
  }

LABEL_36:
  v102 = 0;
  v103 = 0xE000000000000000;
  sub_242F05A80();
  MEMORY[0x245D26660](0xD00000000000001BLL, 0x8000000242F59E10);
  sub_242F05C20();
  MEMORY[0x245D26660](39, 0xE100000000000000);
  sub_242F05C60();
  __break(1u);
}

uint64_t sub_242CF3448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2740);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_242CA321C(a1, &v9 - v5, &qword_27ECF2740);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2748);
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (result != 1)
  {
    return sub_242CF6B3C(v6, a2, &qword_27ECF2748);
  }

  __break(1u);
  return result;
}

BOOL _s14CarPlayAssetUI4ZoneV0E4TypeO2eeoiySbAE_AEtFZ_0(__int128 *a1, int8x16_t *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v53 = a1[4];
  v54 = v3;
  v4 = a1[1];
  v50[0] = *a1;
  v50[1] = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v51 = a1[2];
  v52 = v5;
  v8 = a2[1];
  v56 = *a2;
  v57 = v8;
  v9 = a2[3];
  v10 = a2[5];
  v60 = a2[4];
  v61 = v10;
  v11 = a2[3];
  v12 = *a2;
  v13 = a2[1];
  v58 = a2[2];
  v59 = v11;
  v63[0] = v7;
  v63[1] = v6;
  v14 = a1[5];
  v63[4] = v53;
  v63[5] = v14;
  v63[2] = v51;
  v63[3] = v2;
  v67 = v58;
  v66 = v13;
  v55 = *(a1 + 96);
  v62 = a2[6].i8[0];
  v64 = *(a1 + 96);
  v65 = v12;
  v15 = a2[5];
  v71 = a2[6].i8[0];
  v70 = v15;
  v69 = v60;
  v68 = v9;
  v16 = v50[0];
  if (!v55)
  {
    if (v62)
    {
      goto LABEL_18;
    }

    v22 = *&v56.i64[1];
    v21 = v56.i64[0];
    if (*&v50[0])
    {
      if (!v56.i64[0])
      {
LABEL_17:
        sub_242CF3ABC(&v56, v47);
        goto LABEL_18;
      }

      v23 = a1;
      v24 = a2;
      sub_242CF3ABC(v50, v47);
      sub_242CF3ABC(&v56, v47);
      sub_242CF3ABC(v50, v47);
      v25 = sub_242C758CC(v16, v21);
      sub_242C6D138(v63, &qword_27ECF2750);
      sub_242CF3AF4(v50);
      v26 = 0;
      if ((v25 & 1) == 0 || *(&v16 + 1) != v22)
      {
        return v26;
      }
    }

    else
    {
      v23 = a1;
      v37 = a2[5];
      *&v47[64] = a2[4];
      v48 = v37;
      v49 = a2[6].i8[0];
      v38 = a2[1];
      *v47 = *a2;
      *&v47[16] = v38;
      v39 = a2[3];
      v24 = a2;
      *&v47[32] = a2[2];
      *&v47[48] = v39;
      sub_242CA321C(v47, v43, qword_27ECF2760);
      sub_242CF3ABC(&v56, v43);
      sub_242CF3ABC(v50, v43);
      sub_242C6D138(v63, &qword_27ECF2750);
      if (v21)
      {
        goto LABEL_24;
      }

      if (*(&v16 + 1) != v22)
      {
        return 0;
      }
    }

    v40 = v23[4];
    *&v47[32] = v23[3];
    *&v47[48] = v40;
    *&v47[64] = v23[5];
    v41 = v23[2];
    *v47 = v23[1];
    *&v47[16] = v41;
    v42 = v24[4];
    v44 = v24[3];
    v45 = v42;
    v46 = v24[5];
    v36 = v24[1];
    v34 = v24[2];
    goto LABEL_27;
  }

  if (v55 == 1)
  {
    if (v62 == 1)
    {
      v17 = v56.i64[0];
      if (*&v50[0])
      {
        if (v56.i64[0])
        {
          v18 = a1;
          v19 = a2;
          sub_242CF3ABC(v50, v47);
          sub_242CF3ABC(&v56, v47);
          sub_242CF3ABC(v50, v47);
          v20 = sub_242C758CC(v16, v17);
          sub_242C6D138(v63, &qword_27ECF2750);
          sub_242CF3AF4(v50);
          if (v20)
          {
            goto LABEL_22;
          }

          return 0;
        }

        goto LABEL_17;
      }

      v18 = a1;
      v29 = a2[5];
      *&v47[64] = a2[4];
      v48 = v29;
      v49 = a2[6].i8[0];
      v30 = a2[1];
      *v47 = *a2;
      *&v47[16] = v30;
      v31 = a2[3];
      v19 = a2;
      *&v47[32] = a2[2];
      *&v47[48] = v31;
      sub_242CA321C(v47, v43, &qword_27ECF2758);
      sub_242CF3ABC(&v56, v43);
      sub_242CF3ABC(v50, v43);
      sub_242C6D138(v63, &qword_27ECF2750);
      if (!v17)
      {
LABEL_22:
        *v47 = *(&v16 + 1);
        v32 = v18[1];
        *&v47[24] = v18[2];
        v33 = v18[4];
        *&v47[40] = v18[3];
        *&v47[56] = v33;
        *&v47[72] = *(v18 + 10);
        *&v47[8] = v32;
        v34 = *(v19 + 24);
        v35 = *(v19 + 56);
        v44 = *(v19 + 40);
        v45 = v35;
        v46 = *(v19 + 72);
        v36 = *(v19 + 8);
LABEL_27:
        v43[0] = v36;
        v43[1] = v34;
        return _s14CarPlayAssetUI21CarouselConfigurationV2eeoiySbAC_ACtFZ_0(v47, v43);
      }

LABEL_24:
      sub_242CF3AF4(&v56);
      return 0;
    }

LABEL_18:
    sub_242CF3ABC(&v56, v47);
    sub_242CF3ABC(v50, v47);
    sub_242C6D138(v63, &qword_27ECF2750);
    return 0;
  }

  if (v62 != 2)
  {
    goto LABEL_18;
  }

  v27 = vorrq_s8(vorrq_s8(vorrq_s8(v58, v60), vorrq_s8(v59, v61)), vorrq_s8(v56, v57));
  if (vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL)))
  {
    goto LABEL_18;
  }

  sub_242C6D138(v63, &qword_27ECF2750);
  return 1;
}

unint64_t sub_242CF3974()
{
  result = qword_27ECF22E8;
  if (!qword_27ECF22E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF22E8);
  }

  return result;
}

unint64_t sub_242CF39C8()
{
  result = qword_27ECF22F0;
  if (!qword_27ECF22F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF22F0);
  }

  return result;
}

unint64_t sub_242CF3A1C()
{
  result = qword_27ECF22F8;
  if (!qword_27ECF22F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF22F8);
  }

  return result;
}

uint64_t type metadata accessor for Zone()
{
  result = qword_27ECF2598;
  if (!qword_27ECF2598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL _s14CarPlayAssetUI4ZoneV20PlatterConfigurationV9BlurStyleO2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return ((v3 ^ v2) & 1) == 0;
    }

    return 0;
  }

  if (*(a1 + 8) == 1)
  {
    if (v4 == 1 && *&v2 == *&v3)
    {
      return *(&v2 + 1) == *(&v3 + 1);
    }

    return 0;
  }

  return v4 == 2 && v3 == 0;
}

BOOL _s14CarPlayAssetUI4ZoneV20PlatterConfigurationV2eeoiySbAE_AEtFZ_0(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v4 != 1)
      {
        return 0;
      }

      v5 = HIDWORD(v3);
      if (*&v2 != COERCE_FLOAT(*a2) || *(&v2 + 1) != *&v5)
      {
        return 0;
      }
    }

    else if (v4 != 2 || v3 != 0)
    {
      return 0;
    }
  }

  else
  {
    v7 = (v3 ^ v2) & 1;
    if (*(a2 + 8))
    {
      v8 = 0;
    }

    else
    {
      v8 = v7 == 0;
    }

    if (!v8)
    {
      return 0;
    }
  }

  return *(a1 + 3) == *(a2 + 3);
}

unint64_t sub_242CF3C4C()
{
  result = qword_27ECF2320;
  if (!qword_27ECF2320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2320);
  }

  return result;
}

unint64_t sub_242CF3CA0()
{
  result = qword_27ECF2350;
  if (!qword_27ECF2350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2350);
  }

  return result;
}

unint64_t sub_242CF3CF4()
{
  result = qword_27ECF2358;
  if (!qword_27ECF2358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2358);
  }

  return result;
}

unint64_t sub_242CF3D48()
{
  result = qword_27ECF2360;
  if (!qword_27ECF2360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2360);
  }

  return result;
}

uint64_t sub_242CF3D9C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2368);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242CF3E14()
{
  result = qword_27ECF2378;
  if (!qword_27ECF2378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2378);
  }

  return result;
}

uint64_t sub_242CF3E68(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFC780);
    v3 = MEMORY[0x277CC95F0];
    sub_242CF6CB4(&qword_27ECF2158, MEMORY[0x277CC95F0]);
    sub_242CF6CB4(&qword_27ECF2160, v3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_242CF3F3C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2338);
    sub_242CF6CB4(a2, type metadata accessor for Component);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242CF3FD8()
{
  result = qword_27ECF23B8;
  if (!qword_27ECF23B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF23B8);
  }

  return result;
}

unint64_t sub_242CF402C()
{
  result = qword_27ECF23C0;
  if (!qword_27ECF23C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF23C0);
  }

  return result;
}

unint64_t sub_242CF4080()
{
  result = qword_27ECF23C8;
  if (!qword_27ECF23C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF23C8);
  }

  return result;
}

unint64_t sub_242CF40D4()
{
  result = qword_27ECF23D8;
  if (!qword_27ECF23D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF23D8);
  }

  return result;
}

uint64_t sub_242CF4128(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2380);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_242CF4194()
{
  sub_242F03720();
  sub_242CF6CB4(&qword_27ECF2260, MEMORY[0x277CC95F0]);
  return sub_242F04EE0() & 1;
}

uint64_t sub_242CF4224(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_242CF428C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6 >= 2)
  {
  }

  return result;
}

uint64_t sub_242CF42A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_242CF4310()
{
  result = qword_27ECF2408;
  if (!qword_27ECF2408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2408);
  }

  return result;
}

unint64_t sub_242CF4364()
{
  result = qword_27ECF2410;
  if (!qword_27ECF2410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2410);
  }

  return result;
}

unint64_t sub_242CF43B8()
{
  result = qword_27ECF2428;
  if (!qword_27ECF2428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2428);
  }

  return result;
}

unint64_t sub_242CF440C()
{
  result = qword_27ECF2430;
  if (!qword_27ECF2430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2430);
  }

  return result;
}

unint64_t sub_242CF4460()
{
  result = qword_27ECF2438;
  if (!qword_27ECF2438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2438);
  }

  return result;
}

uint64_t sub_242CF44B4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2418);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242CF4538()
{
  result = qword_27ECF2460;
  if (!qword_27ECF2460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2460);
  }

  return result;
}

unint64_t sub_242CF458C()
{
  result = qword_27ECF2468;
  if (!qword_27ECF2468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2468);
  }

  return result;
}

unint64_t sub_242CF45E0()
{
  result = qword_27ECF2488;
  if (!qword_27ECF2488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2488);
  }

  return result;
}

unint64_t sub_242CF4634()
{
  result = qword_27ECF2490;
  if (!qword_27ECF2490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2490);
  }

  return result;
}

unint64_t sub_242CF4688()
{
  result = qword_27ECF2498;
  if (!qword_27ECF2498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2498);
  }

  return result;
}

unint64_t sub_242CF46DC()
{
  result = qword_27ECF24D8;
  if (!qword_27ECF24D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF24D8);
  }

  return result;
}

unint64_t sub_242CF4730()
{
  result = qword_27ECF24E0;
  if (!qword_27ECF24E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF24E0);
  }

  return result;
}

unint64_t sub_242CF4784()
{
  result = qword_27ECF24E8;
  if (!qword_27ECF24E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF24E8);
  }

  return result;
}

unint64_t sub_242CF47D8()
{
  result = qword_27ECF24F0;
  if (!qword_27ECF24F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF24F0);
  }

  return result;
}

unint64_t sub_242CF482C()
{
  result = qword_27ECF24F8;
  if (!qword_27ECF24F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF24F8);
  }

  return result;
}

unint64_t sub_242CF4880()
{
  result = qword_27ECF2520;
  if (!qword_27ECF2520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2520);
  }

  return result;
}

unint64_t sub_242CF48D4()
{
  result = qword_27ECF2530;
  if (!qword_27ECF2530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2530);
  }

  return result;
}

unint64_t sub_242CF4928()
{
  result = qword_27ECF2538;
  if (!qword_27ECF2538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2538);
  }

  return result;
}

unint64_t sub_242CF497C()
{
  result = qword_27ECF2548;
  if (!qword_27ECF2548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2548);
  }

  return result;
}

unint64_t sub_242CF49D8()
{
  result = qword_27ECF2550;
  if (!qword_27ECF2550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2550);
  }

  return result;
}

unint64_t sub_242CF4A30()
{
  result = qword_27ECF2558;
  if (!qword_27ECF2558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2558);
  }

  return result;
}

unint64_t sub_242CF4A88()
{
  result = qword_27ECF2560;
  if (!qword_27ECF2560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2560);
  }

  return result;
}

unint64_t sub_242CF4AE0()
{
  result = qword_27ECF2568;
  if (!qword_27ECF2568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFC780);
    sub_242CF6CB4(&qword_27ECF2258, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2568);
  }

  return result;
}

uint64_t sub_242CF4B94(uint64_t a1)
{
  *(a1 + 16) = sub_242CF6CB4(&qword_27ECF2570, type metadata accessor for Zone);
  result = sub_242CF6CB4(&qword_27ECF2578, type metadata accessor for Zone);
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_242CF4C1C()
{
  result = qword_27ECF2580;
  if (!qword_27ECF2580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2580);
  }

  return result;
}

unint64_t sub_242CF4C74()
{
  result = qword_27ECF2588;
  if (!qword_27ECF2588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2588);
  }

  return result;
}

unint64_t sub_242CF4CCC()
{
  result = qword_27ECF2590;
  if (!qword_27ECF2590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2590);
  }

  return result;
}

void sub_242CF4D48()
{
  sub_242CF4E9C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v1 <= 0x3F)
    {
      sub_242CF4F04();
      if (v2 <= 0x3F)
      {
        sub_242CF5050(319, &qword_27ECF25B8);
        if (v3 <= 0x3F)
        {
          sub_242CF5050(319, &qword_27ECF25C0);
          if (v4 <= 0x3F)
          {
            sub_242CF4F5C();
            if (v5 <= 0x3F)
            {
              sub_242CF5050(319, &qword_27ECF25D0);
              if (v6 <= 0x3F)
              {
                sub_242CF509C();
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

void sub_242CF4E9C()
{
  if (!qword_27ECF25A8)
  {
    type metadata accessor for Zone();
    sub_242F03720();
    v0 = type metadata accessor for TaggedValue();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF25A8);
    }
  }
}

void sub_242CF4F04()
{
  if (!qword_27ECF25B0)
  {
    type metadata accessor for Component();
    v0 = sub_242F053E0();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF25B0);
    }
  }
}

void sub_242CF4F5C()
{
  if (!qword_27ECF25C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2368);
    sub_242CF3D9C(&qword_27ECF23D0, sub_242CF40D4);
    sub_242CF3D9C(&qword_27ECF2370, sub_242CF3E14);
    v0 = type metadata accessor for SkipEncode();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF25C8);
    }
  }
}

void sub_242CF5050(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_242F05860();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_242CF509C()
{
  if (!qword_27ECF25D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2380);
    v0 = sub_242F05860();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF25D8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI4ZoneV0E4TypeO(uint64_t a1)
{
  if ((*(a1 + 96) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 96) & 3;
  }
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_242CF5148(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 97))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 96);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_242CF5190(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

uint64_t sub_242CF51F0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    LOBYTE(a2) = 2;
    *(result + 88) = 0;
  }

  *(result + 96) = a2;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ColorSet.ColorID(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ColorSet.ColorID(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_242CF52A8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242CF52C4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Zone.PlatterConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 16))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Zone.PlatterConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Zone.PlatterConfiguration.BlurStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Zone.PlatterConfiguration.BlurStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_242CF5458(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_242CF5470(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Zone.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Zone.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_242CF56CC()
{
  result = qword_27ECF25E0;
  if (!qword_27ECF25E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF25E0);
  }

  return result;
}

unint64_t sub_242CF5724()
{
  result = qword_27ECF25E8;
  if (!qword_27ECF25E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF25E8);
  }

  return result;
}

unint64_t sub_242CF577C()
{
  result = qword_27ECF25F0;
  if (!qword_27ECF25F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF25F0);
  }

  return result;
}

unint64_t sub_242CF57D4()
{
  result = qword_27ECF25F8;
  if (!qword_27ECF25F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF25F8);
  }

  return result;
}

unint64_t sub_242CF582C()
{
  result = qword_27ECF2600;
  if (!qword_27ECF2600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2600);
  }

  return result;
}

unint64_t sub_242CF5884()
{
  result = qword_27ECF2608;
  if (!qword_27ECF2608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2608);
  }

  return result;
}

unint64_t sub_242CF58DC()
{
  result = qword_27ECF2610;
  if (!qword_27ECF2610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2610);
  }

  return result;
}

unint64_t sub_242CF5934()
{
  result = qword_27ECF2618;
  if (!qword_27ECF2618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2618);
  }

  return result;
}

unint64_t sub_242CF598C()
{
  result = qword_27ECF2620;
  if (!qword_27ECF2620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2620);
  }

  return result;
}

unint64_t sub_242CF59E4()
{
  result = qword_27ECF2628;
  if (!qword_27ECF2628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2628);
  }

  return result;
}

unint64_t sub_242CF5A3C()
{
  result = qword_27ECF2630;
  if (!qword_27ECF2630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2630);
  }

  return result;
}

unint64_t sub_242CF5A94()
{
  result = qword_27ECF2638;
  if (!qword_27ECF2638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2638);
  }

  return result;
}

unint64_t sub_242CF5AEC()
{
  result = qword_27ECF2640;
  if (!qword_27ECF2640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2640);
  }

  return result;
}

unint64_t sub_242CF5B44()
{
  result = qword_27ECF2648;
  if (!qword_27ECF2648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2648);
  }

  return result;
}

unint64_t sub_242CF5B9C()
{
  result = qword_27ECF2650;
  if (!qword_27ECF2650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2650);
  }

  return result;
}

unint64_t sub_242CF5BF4()
{
  result = qword_27ECF2658;
  if (!qword_27ECF2658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2658);
  }

  return result;
}

unint64_t sub_242CF5C4C()
{
  result = qword_27ECF2660;
  if (!qword_27ECF2660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2660);
  }

  return result;
}

unint64_t sub_242CF5CA4()
{
  result = qword_27ECF2668;
  if (!qword_27ECF2668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2668);
  }

  return result;
}

unint64_t sub_242CF5CFC()
{
  result = qword_27ECF2670;
  if (!qword_27ECF2670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2670);
  }

  return result;
}

unint64_t sub_242CF5D54()
{
  result = qword_27ECF2678;
  if (!qword_27ECF2678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2678);
  }

  return result;
}

unint64_t sub_242CF5DAC()
{
  result = qword_27ECF2680;
  if (!qword_27ECF2680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2680);
  }

  return result;
}

unint64_t sub_242CF5E04()
{
  result = qword_27ECF2688;
  if (!qword_27ECF2688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2688);
  }

  return result;
}

unint64_t sub_242CF5E5C()
{
  result = qword_27ECF2690;
  if (!qword_27ECF2690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2690);
  }

  return result;
}

unint64_t sub_242CF5EB4()
{
  result = qword_27ECF2698;
  if (!qword_27ECF2698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2698);
  }

  return result;
}

unint64_t sub_242CF5F0C()
{
  result = qword_27ECF26A0;
  if (!qword_27ECF26A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF26A0);
  }

  return result;
}

unint64_t sub_242CF5F64()
{
  result = qword_27ECF26A8;
  if (!qword_27ECF26A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF26A8);
  }

  return result;
}

unint64_t sub_242CF5FBC()
{
  result = qword_27ECF26B0;
  if (!qword_27ECF26B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF26B0);
  }

  return result;
}

unint64_t sub_242CF6014()
{
  result = qword_27ECF26B8;
  if (!qword_27ECF26B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF26B8);
  }

  return result;
}

unint64_t sub_242CF606C()
{
  result = qword_27ECF26C0;
  if (!qword_27ECF26C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF26C0);
  }

  return result;
}

unint64_t sub_242CF60C4()
{
  result = qword_27ECF26C8;
  if (!qword_27ECF26C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF26C8);
  }

  return result;
}

unint64_t sub_242CF611C()
{
  result = qword_27ECF26D0;
  if (!qword_27ECF26D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF26D0);
  }

  return result;
}

unint64_t sub_242CF6174()
{
  result = qword_27ECF26D8;
  if (!qword_27ECF26D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF26D8);
  }

  return result;
}

unint64_t sub_242CF61CC()
{
  result = qword_27ECF26E0;
  if (!qword_27ECF26E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF26E0);
  }

  return result;
}

unint64_t sub_242CF6224()
{
  result = qword_27ECF26E8;
  if (!qword_27ECF26E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF26E8);
  }

  return result;
}

unint64_t sub_242CF627C()
{
  result = qword_27ECF26F0;
  if (!qword_27ECF26F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF26F0);
  }

  return result;
}

unint64_t sub_242CF62D4()
{
  result = qword_27ECF26F8;
  if (!qword_27ECF26F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF26F8);
  }

  return result;
}

unint64_t sub_242CF632C()
{
  result = qword_27ECF2700;
  if (!qword_27ECF2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2700);
  }

  return result;
}

unint64_t sub_242CF6384()
{
  result = qword_27ECF2708;
  if (!qword_27ECF2708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2708);
  }

  return result;
}

unint64_t sub_242CF63DC()
{
  result = qword_27ECF2710;
  if (!qword_27ECF2710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2710);
  }

  return result;
}

unint64_t sub_242CF6434()
{
  result = qword_27ECF2718;
  if (!qword_27ECF2718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2718);
  }

  return result;
}

unint64_t sub_242CF648C()
{
  result = qword_27ECF2720;
  if (!qword_27ECF2720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2720);
  }

  return result;
}

uint64_t sub_242CF64E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D617266 && a2 == 0xE500000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x70616853656E6F7ALL && a2 == 0xE900000000000065 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69676552656E6F7ALL && a2 == 0xEA00000000006E6FLL || (sub_242F06110() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000242F59EB0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F59ED0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x656469727265766FLL && a2 == 0xE900000000000073)
  {

    return 9;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_242CF6818()
{
  v0 = sub_242F05CD0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_242CF6864()
{
  v0 = sub_242F05CD0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_242CF68B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614D6D6574737973 && a2 == 0xEE006C6169726574;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7373616C67 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_242F06110();

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

unint64_t sub_242CF69C8()
{
  result = qword_27ECF2728;
  if (!qword_27ECF2728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2728);
  }

  return result;
}

uint64_t sub_242CF6A1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_242CF6A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != 1)
  {
    if (a5)
    {
      return result;
    }
  }
}

uint64_t sub_242CF6AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }

  else
  {
    if (a5)
    {
      return result;
    }
  }
}

uint64_t sub_242CF6B3C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_242CF6C00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_242CF6CB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_242CF6D20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for WeakBox();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v8, a1, v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v5 + 8))(v8, v4);
  *a2 = Strong;
  return result;
}

uint64_t WeakBox.init(_:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_242CF6E28()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Instrument.AppWidgetInfo.carplayIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Instrument.AppWidgetInfo.init(applicationBundleIdentifier:carplayIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t static Instrument.AppWidgetInfo.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_242F06110(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_242F06110() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_242CF6F64()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_242CF6FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001BLL && 0x8000000242F59EF0 == a2 || (sub_242F06110() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F59F10 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_242F06110();

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

uint64_t sub_242CF7090(uint64_t a1)
{
  v2 = sub_242CF729C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CF70CC(uint64_t a1)
{
  v2 = sub_242CF729C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Instrument.AppWidgetInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF28D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CF729C();
  sub_242F064C0();
  v12 = 0;
  v8 = v10[3];
  sub_242F05EC0();
  if (!v8)
  {
    v11 = 1;
    sub_242F05E50();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_242CF729C()
{
  result = qword_27ECF28D8;
  if (!qword_27ECF28D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF28D8);
  }

  return result;
}

uint64_t Instrument.AppWidgetInfo.hash(into:)()
{
  v1 = *(v0 + 24);
  sub_242F04DD0();
  if (!v1)
  {
    return sub_242F063B0();
  }

  sub_242F063B0();

  return sub_242F04DD0();
}

uint64_t Instrument.AppWidgetInfo.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_242F06390();
  sub_242F04DD0();
  sub_242F063B0();
  if (v1)
  {
    sub_242F04DD0();
  }

  return sub_242F063E0();
}

uint64_t Instrument.AppWidgetInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF28E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CF729C();
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v19 = 0;
  v9 = sub_242F05DA0();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_242F05D30();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CF75F8()
{
  v1 = *(v0 + 24);
  sub_242F06390();
  sub_242F04DD0();
  sub_242F063B0();
  if (v1)
  {
    sub_242F04DD0();
  }

  return sub_242F063E0();
}

uint64_t sub_242CF7684()
{
  v1 = *(v0 + 24);
  sub_242F04DD0();
  if (!v1)
  {
    return sub_242F063B0();
  }

  sub_242F063B0();

  return sub_242F04DD0();
}

uint64_t sub_242CF7700()
{
  v1 = *(v0 + 24);
  sub_242F06390();
  sub_242F04DD0();
  sub_242F063B0();
  if (v1)
  {
    sub_242F04DD0();
  }

  return sub_242F063E0();
}

uint64_t sub_242CF7788(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_242F06110(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_242F06110() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t Instrument.StreamWidgetInfo.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Instrument.StreamWidgetInfo.init(name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static Instrument.StreamWidgetInfo.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_242F06110();
  }
}

uint64_t sub_242CF78D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242CF7958(uint64_t a1)
{
  v2 = sub_242CF7B0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CF7994(uint64_t a1)
{
  v2 = sub_242CF7B0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Instrument.StreamWidgetInfo.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF28E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CF7B0C();
  sub_242F064C0();
  sub_242F05EC0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_242CF7B0C()
{
  result = qword_27ECF28F0;
  if (!qword_27ECF28F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF28F0);
  }

  return result;
}

uint64_t Instrument.StreamWidgetInfo.hashValue.getter()
{
  sub_242F06390();
  sub_242F04DD0();
  return sub_242F063E0();
}

uint64_t Instrument.StreamWidgetInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF28F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CF7B0C();
  sub_242F06480();
  if (!v2)
  {
    v9 = sub_242F05DA0();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CF7D28()
{
  sub_242F06390();
  sub_242F04DD0();
  return sub_242F063E0();
}

uint64_t sub_242CF7D7C()
{
  sub_242F06390();
  sub_242F04DD0();
  return sub_242F063E0();
}

uint64_t sub_242CF7DC4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_242F06110();
  }
}

uint64_t sub_242CF7E0C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF28E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CF7B0C();
  sub_242F064C0();
  sub_242F05EC0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t Instrument.WidgetInfo.PresentationStyle.hashValue.getter()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](v1);
  return sub_242F063E0();
}

uint64_t sub_242CF7FD8(uint64_t a1)
{
  v2 = sub_242CFACC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CF8014(uint64_t a1)
{
  v2 = sub_242CFACC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242CF8050()
{
  v1 = 0x6D6165727473;
  if (*v0 != 1)
  {
    v1 = 0x7974706D65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7368801;
  }
}

uint64_t sub_242CF809C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242CFB478(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242CF80C4(uint64_t a1)
{
  v2 = sub_242CFAB78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CF8100(uint64_t a1)
{
  v2 = sub_242CFAB78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242CF813C(uint64_t a1)
{
  v2 = sub_242CFABCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CF8178(uint64_t a1)
{
  v2 = sub_242CFABCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242CF81B4(uint64_t a1)
{
  v2 = sub_242CFAC20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CF81F0(uint64_t a1)
{
  v2 = sub_242CFAC20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Instrument.WidgetInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2900);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v27 = &v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2908);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2910);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2918);
  v11 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v13 = &v23 - v12;
  v14 = v1[1];
  v32 = *v1;
  v33 = v14;
  v15 = v1[2];
  v23 = v1[3];
  v24 = v15;
  v16 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CFAB78();
  sub_242F064C0();
  if (!v16)
  {
    LOBYTE(v35) = 0;
    sub_242CFACC8();
    v17 = v34;
    sub_242F05E40();
    v35 = v32;
    v36 = v33;
    v37 = v24;
    v38 = v23;
    sub_242CFAD1C();
    v19 = v26;
    sub_242F05F20();
    (*(v25 + 8))(v10, v19);
    return (*(v11 + 8))(v13, v17);
  }

  if (v16 == 1)
  {
    LOBYTE(v35) = 1;
    sub_242CFAC20();
    v17 = v34;
    sub_242F05E40();
    v35 = v32;
    v36 = v33;
    sub_242CFAC74();
    v18 = v29;
    sub_242F05F20();
    (*(v28 + 8))(v7, v18);
    return (*(v11 + 8))(v13, v17);
  }

  LOBYTE(v35) = 2;
  sub_242CFABCC();
  v21 = v27;
  v22 = v34;
  sub_242F05E40();
  (*(v30 + 8))(v21, v31);
  return (*(v11 + 8))(v13, v22);
}

uint64_t Instrument.WidgetInfo.hash(into:)()
{
  if (*(v0 + 32))
  {
    if (*(v0 + 32) != 1)
    {
      return MEMORY[0x245D279A0](2);
    }

    MEMORY[0x245D279A0](1);
  }

  else
  {
    v1 = *(v0 + 24);
    MEMORY[0x245D279A0](0);
    sub_242F04DD0();
    if (!v1)
    {
      return sub_242F063B0();
    }

    sub_242F063B0();
  }

  return sub_242F04DD0();
}

uint64_t Instrument.WidgetInfo.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_242F06390();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x245D279A0](2);
      return sub_242F063E0();
    }

    MEMORY[0x245D279A0](1);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    sub_242F04DD0();
    if (!v1)
    {
      sub_242F063B0();
      return sub_242F063E0();
    }

    sub_242F063B0();
  }

  sub_242F04DD0();
  return sub_242F063E0();
}

uint64_t Instrument.WidgetInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2950);
  v45 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v44 = &v37[-v3];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2958);
  v43 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v5 = &v37[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2960);
  v41 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v37[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2968);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37[-v11];
  v13 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, v13);
  sub_242CFAB78();
  v14 = v47;
  sub_242F06480();
  if (!v14)
  {
    v15 = v44;
    v16 = v45;
    v39 = 0;
    v47 = v10;
    v17 = v46;
    v18 = sub_242F05E10();
    v19 = (2 * *(v18 + 16)) | 1;
    v51 = v18;
    v52 = v18 + 32;
    v53 = 0;
    v54 = v19;
    v20 = sub_242C7FBE8();
    if (v20 == 3 || v53 != v54 >> 1)
    {
      v25 = sub_242F05B10();
      swift_allocError();
      v26 = v9;
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10);
      *v28 = &type metadata for Instrument.WidgetInfo;
      sub_242F05D20();
      sub_242F05AF0();
      (*(*(v25 - 8) + 104))(v28, *MEMORY[0x277D84160], v25);
      swift_willThrow();
      (*(v47 + 8))(v12, v26);
    }

    else
    {
      v38 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          LOBYTE(v48) = 1;
          sub_242CFAC20();
          v21 = v5;
          v22 = v39;
          sub_242F05D10();
          v23 = v47;
          if (!v22)
          {
            sub_242CFAD70();
            v24 = v40;
            sub_242F05E00();
            (*(v43 + 8))(v21, v24);
            (*(v23 + 8))(v12, v9);
            swift_unknownObjectRelease();
            v35 = v48;
            v36 = v49;
LABEL_18:
            v34 = 0uLL;
            v33 = v17;
            goto LABEL_19;
          }
        }

        else
        {
          LOBYTE(v48) = 2;
          sub_242CFABCC();
          v31 = v39;
          sub_242F05D10();
          v32 = v47;
          if (!v31)
          {
            (*(v16 + 8))(v15, v42);
            (*(v32 + 8))(v12, v9);
            swift_unknownObjectRelease();
            v35 = 0;
            v36 = 0;
            goto LABEL_18;
          }
        }
      }

      else
      {
        LOBYTE(v48) = 0;
        sub_242CFACC8();
        v30 = v39;
        sub_242F05D10();
        if (!v30)
        {
          v33 = v17;
          sub_242CFADC4();
          sub_242F05E00();
          (*(v41 + 8))(v8, v6);
          (*(v47 + 8))(v12, v9);
          swift_unknownObjectRelease();
          v35 = v48;
          v36 = v49;
          v34 = v50;
LABEL_19:
          *v33 = v35;
          *(v33 + 8) = v36;
          *(v33 + 16) = v34;
          *(v33 + 32) = v38;
          return __swift_destroy_boxed_opaque_existential_2Tm(v55);
        }
      }

      (*(v47 + 8))(v12, v9);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v55);
}

uint64_t sub_242CF8E74()
{
  if (*(v0 + 32))
  {
    if (*(v0 + 32) != 1)
    {
      return MEMORY[0x245D279A0](2);
    }

    MEMORY[0x245D279A0](1);
  }

  else
  {
    v1 = *(v0 + 24);
    MEMORY[0x245D279A0](0);
    sub_242F04DD0();
    if (!v1)
    {
      return sub_242F063B0();
    }

    sub_242F063B0();
  }

  return sub_242F04DD0();
}

uint64_t sub_242CF8F50()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_242F06390();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x245D279A0](2);
      return sub_242F063E0();
    }

    MEMORY[0x245D279A0](1);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    sub_242F04DD0();
    if (!v1)
    {
      sub_242F063B0();
      return sub_242F063E0();
    }

    sub_242F063B0();
  }

  sub_242F04DD0();
  return sub_242F063E0();
}

uint64_t Instrument.AppWidget.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Instrument.AppWidget.info.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v4 = v1[4];
  v3 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

__n128 Instrument.AppWidget.init(id:info:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a3->n128_u64[0];
  v5 = a3->n128_u64[1];
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  a4[1].n128_u64[0] = v4;
  a4[1].n128_u64[1] = v5;
  result = a3[1];
  a4[2] = result;
  return result;
}

uint64_t Instrument.AppWidget.hash(into:)()
{
  v1 = *(v0 + 40);
  sub_242F04DD0();
  sub_242F04DD0();
  if (!v1)
  {
    return sub_242F063B0();
  }

  sub_242F063B0();

  return sub_242F04DD0();
}

uint64_t Instrument.AppWidget.hashValue.getter()
{
  v1 = *(v0 + 40);
  sub_242F06390();
  sub_242F04DD0();
  sub_242F04DD0();
  sub_242F063B0();
  if (v1)
  {
    sub_242F04DD0();
  }

  return sub_242F063E0();
}

uint64_t sub_242CF9228()
{
  v1 = *(v0 + 40);
  sub_242F06390();
  sub_242F04DD0();
  sub_242F04DD0();
  sub_242F063B0();
  if (v1)
  {
    sub_242F04DD0();
  }

  return sub_242F063E0();
}

uint64_t sub_242CF92D0()
{
  v1 = *(v0 + 40);
  sub_242F04DD0();
  sub_242F04DD0();
  if (!v1)
  {
    return sub_242F063B0();
  }

  sub_242F063B0();

  return sub_242F04DD0();
}

uint64_t sub_242CF936C()
{
  v1 = *(v0 + 40);
  sub_242F06390();
  sub_242F04DD0();
  sub_242F04DD0();
  sub_242F063B0();
  if (v1)
  {
    sub_242F04DD0();
  }

  return sub_242F063E0();
}

uint64_t Instrument.StreamWidget.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Instrument.StreamWidget.info.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t Instrument.StreamWidget.init(id:info:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v4 = *a3;
  v5 = a3[1];
  *a4 = result;
  a4[1] = a2;
  a4[2] = v4;
  a4[3] = v5;
  return result;
}

uint64_t Instrument.StreamWidget.hash(into:)()
{
  sub_242F04DD0();

  return sub_242F04DD0();
}

uint64_t Instrument.StreamWidget.hashValue.getter()
{
  sub_242F06390();
  sub_242F04DD0();
  sub_242F04DD0();
  return sub_242F063E0();
}

uint64_t sub_242CF951C()
{
  sub_242F06390();
  sub_242F04DD0();
  sub_242F04DD0();
  return sub_242F063E0();
}

uint64_t sub_242CF9584()
{
  sub_242F04DD0();

  return sub_242F04DD0();
}

uint64_t sub_242CF95D4()
{
  sub_242F06390();
  sub_242F04DD0();
  sub_242F04DD0();
  return sub_242F063E0();
}

uint64_t Instrument.Widget.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Instrument.Widget.hashValue.getter()
{
  sub_242F06390();
  sub_242F04DD0();
  return sub_242F063E0();
}

uint64_t sub_242CF96BC@<X0>(void *a1@<X8>)
{
  v3 = *v1;

  *a1 = v3;
  a1[1] = result;
  return result;
}

uint64_t sub_242CF96F0()
{

  sub_242F04DD0();
}

uint64_t Instrument.Widget.hash(into:)()
{

  sub_242F04DD0();
}

uint64_t Instrument.WidgetInfo.appWidget.getter@<X0>(void *a1@<X8>)
{
  if (*(v1 + 32))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = v1[2];
    v6 = v1[3];
    v7 = v1;
    v3 = *v1;
    v4 = v7[1];
  }

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t Instrument.WidgetInfo.streamWidget.getter@<X0>(void *a1@<X8>)
{
  if (*(v1 + 32) == 1)
  {
    v3 = *v1;
  }

  else
  {
    v3 = 0;
    result = 0;
  }

  *a1 = v3;
  a1[1] = result;
  return result;
}

void *Instrument.WidgetInfo.instrumentKind.getter@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  if (*(v1 + 32))
  {
    if (*(v1 + 32) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF03D8);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_242F09510;
      v6 = qword_27ECEEF60;

      if (v6 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v7 = byte_27ECF1000;
      v8 = dword_27ECF1004;
      if (qword_27ECEEED8 != -1)
      {
        swift_once();
      }

      v16[0] = v7;
      *&v16[4] = v8;
      *&v16[8] = xmmword_27ECF0E90;
      *&v16[24] = xmmword_27ECF0EA0;
      *&v16[40] = unk_27ECF0EB0;
      v17 = xmmword_27ECF0E90;
      v18 = xmmword_27ECF0EA0;
      *&v19 = unk_27ECF0EB0;
      sub_242CB5A7C(v16);
      v9 = v21;
      *(v5 + 128) = v20;
      *(v5 + 144) = v9;
      *(v5 + 160) = v22;
      v10 = v17;
      *(v5 + 64) = *&v16[32];
      *(v5 + 80) = v10;
      v11 = v19;
      *(v5 + 96) = v18;
      *(v5 + 112) = v11;
      v12 = *&v16[16];
      *(v5 + 32) = *v16;
      *(v5 + 48) = v12;
      VisibilityConfiguration.init(arrayLiteral:)(v5, __dst);
      __src[0] = v4;
      __src[1] = v3;
      __src[2] = __dst[0];
      sub_242CFB420(__src);
      memcpy(__dst, __src, sizeof(__dst));
      nullsub_2(__dst);
    }

    else
    {
      sub_242CFB3C4(__dst);
    }

    return memcpy(a1, __dst, 0x238uLL);
  }

  else
  {
    v13 = v1[2];
    v14 = v1[3];
    __src[0] = *v1;
    __src[1] = v3;
    __src[2] = v13;
    __src[3] = v14;
    sub_242CFB44C(__src);
    memcpy(__dst, __src, sizeof(__dst));
    nullsub_2(__dst);
    memcpy(a1, __dst, 0x238uLL);
  }
}

uint64_t Instrument.WidgetInfo.carplayIdentifier.getter()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  v1 = *(v0 + 16);

  return v1;
}

uint64_t Instrument.Widget.appWidget.getter@<X0>(uint64_t a1@<X8>)
{
  if (v1[6])
  {
    v3 = 0;
    v4 = 0;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  else
  {
    v4 = v1[5];
    v8 = *(v1 + 3);
    v9 = *(v1 + 1);
    v3 = *v1;

    v6 = v8;
    v5 = v9;
  }

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 24) = v6;
  *(a1 + 40) = v4;
  return result;
}

uint64_t Instrument.Widget.streamWidget.getter@<X0>(void *a1@<X8>)
{
  if (*(v1 + 48) == 1)
  {
    v4 = v1[2];
    v3 = v1[3];
    v7 = v1;
    v5 = *v1;
    v6 = v7[1];
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v4 = 0;
    v3 = 0;
  }

  *a1 = v5;
  a1[1] = v6;
  a1[2] = v4;
  a1[3] = v3;
  return result;
}

uint64_t Instrument.Widget.info.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (*(v1 + 48))
  {
    v5 = 0;
    v6 = 0;
    v7 = 1;
  }

  else
  {
    v8 = v1 + 32;
    v5 = *(v1 + 32);
    v6 = *(v8 + 8);

    v7 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return result;
}

uint64_t Instrument.Widget.carplayIdentifier.getter()
{
  if (*(v0 + 48))
  {
    return 0;
  }

  v1 = *(v0 + 32);

  return v1;
}

void sub_242CF9C88()
{
  qword_27ED5D1E8 = 0xD000000000000013;
  unk_27ED5D1F0 = 0x8000000242F59FB0;
  qword_27ED5D1F8 = 0xD000000000000012;
  unk_27ED5D200 = 0x8000000242F59FD0;
}

void sub_242CF9CC8()
{
  qword_27ED5D208 = 0xD000000000000011;
  unk_27ED5D210 = 0x8000000242F59F90;
  qword_27ED5D218 = 0;
  unk_27ED5D220 = 0;
}

double sub_242CF9CF4()
{
  qword_27ED5D228 = 0xD000000000000019;
  unk_27ED5D230 = 0x8000000242F59F70;
  result = 2.21366487e214;
  xmmword_27ED5D238 = xmmword_242F15400;
  return result;
}

void sub_242CF9D28()
{
  qword_27ED5D248 = 0xD000000000000015;
  unk_27ED5D250 = 0x8000000242F59F30;
  qword_27ED5D258 = 0xD000000000000017;
  unk_27ED5D260 = 0x8000000242F59F50;
}

void sub_242CF9D68()
{
  qword_27ECF27E8 = 0xD000000000000012;
  unk_27ECF27F0 = 0x8000000242F59FF0;
  qword_27ECF27F8 = 0;
  unk_27ECF2800 = 0;
}

uint64_t static Instrument.AppWidgetInfo.media.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECEEFE0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_27ECF27F0;
  v3 = qword_27ECF27F8;
  v2 = unk_27ECF2800;
  *a1 = qword_27ECF27E8;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
}

uint64_t sub_242CF9E18()
{
  if (qword_27ECEEFC0 != -1)
  {
    swift_once();
  }

  qword_27ECF2808 = qword_27ED5D1E8;
  unk_27ECF2810 = unk_27ED5D1F0;
  qword_27ECF2818 = qword_27ED5D1F8;
  unk_27ECF2820 = unk_27ED5D200;
  byte_27ECF2828 = 0;
}

uint64_t static Instrument.WidgetInfo.charge.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEFE8 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v2 = qword_27ECF2808;
  v3 = unk_27ECF2810;
  v4 = qword_27ECF2818;
  v5 = unk_27ECF2820;
  *a1 = qword_27ECF2808;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = byte_27ECF2828;
  *(a1 + 32) = byte_27ECF2828;

  return sub_242CF6A84(v2, v3, v4, v5, v6);
}

uint64_t sub_242CF9F24()
{
  if (qword_27ECEEFC8 != -1)
  {
    swift_once();
  }

  qword_27ECF2830 = qword_27ED5D208;
  *algn_27ECF2838 = unk_27ED5D210;
  qword_27ECF2840 = qword_27ED5D218;
  unk_27ECF2848 = unk_27ED5D220;
  byte_27ECF2850 = 0;
}

uint64_t static Instrument.WidgetInfo.trip.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEFF0 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v2 = qword_27ECF2830;
  v3 = *algn_27ECF2838;
  v4 = qword_27ECF2840;
  v5 = unk_27ECF2848;
  *a1 = qword_27ECF2830;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = byte_27ECF2850;
  *(a1 + 32) = byte_27ECF2850;

  return sub_242CF6A84(v2, v3, v4, v5, v6);
}

uint64_t sub_242CFA030()
{
  if (qword_27ECEEFD0 != -1)
  {
    swift_once();
  }

  qword_27ECF2858 = qword_27ED5D228;
  unk_27ECF2860 = unk_27ED5D230;
  xmmword_27ECF2868 = xmmword_27ED5D238;
  byte_27ECF2878 = 0;
}

uint64_t static Instrument.WidgetInfo.tires.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEFF8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = qword_27ECF2858;
  v3 = unk_27ECF2860;
  v4 = xmmword_27ECF2868;
  *a1 = qword_27ECF2858;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = byte_27ECF2878;
  *(a1 + 32) = byte_27ECF2878;

  return sub_242CF6A84(v2, v3, v4, *(&v4 + 1), v5);
}

uint64_t sub_242CFA13C()
{
  if (qword_27ECEEFD8 != -1)
  {
    swift_once();
  }

  qword_27ECF2880 = qword_27ED5D248;
  *algn_27ECF2888 = unk_27ED5D250;
  qword_27ECF2890 = qword_27ED5D258;
  unk_27ECF2898 = unk_27ED5D260;
  byte_27ECF28A0 = 0;
}

uint64_t static Instrument.WidgetInfo.carBodyStatus.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF000 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v2 = qword_27ECF2880;
  v3 = *algn_27ECF2888;
  v4 = qword_27ECF2890;
  v5 = unk_27ECF2898;
  *a1 = qword_27ECF2880;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = byte_27ECF28A0;
  *(a1 + 32) = byte_27ECF28A0;

  return sub_242CF6A84(v2, v3, v4, v5, v6);
}

double static Instrument.WidgetInfo.adasView.getter@<D0>(uint64_t a1@<X8>)
{
  result = 1.38080632e267;
  *a1 = xmmword_242F15410;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  return result;
}

uint64_t sub_242CFA264()
{
  if (qword_27ECEEFE0 != -1)
  {
    swift_once();
  }

  qword_27ECF28A8 = qword_27ECF27E8;
  unk_27ECF28B0 = unk_27ECF27F0;
  qword_27ECF28B8 = qword_27ECF27F8;
  unk_27ECF28C0 = unk_27ECF2800;
  byte_27ECF28C8 = 0;
}

uint64_t static Instrument.WidgetInfo.media.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF008 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v2 = qword_27ECF28A8;
  v3 = unk_27ECF28B0;
  v4 = qword_27ECF28B8;
  v5 = unk_27ECF28C0;
  *a1 = qword_27ECF28A8;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = byte_27ECF28C8;
  *(a1 + 32) = byte_27ECF28C8;

  return sub_242CF6A84(v2, v3, v4, v5, v6);
}

uint64_t static Instrument.WidgetInfo.defaultDCAWidgets.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2980);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_242F15420;
  if (qword_27ECEF008 != -1)
  {
    swift_once();
  }

  v1 = qword_27ECF28A8;
  v2 = unk_27ECF28B0;
  v3 = qword_27ECF28B8;
  v4 = unk_27ECF28C0;
  *(v0 + 32) = qword_27ECF28A8;
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = byte_27ECF28C8;
  *(v0 + 64) = byte_27ECF28C8;
  sub_242CF6A84(v1, v2, v3, v4, v5);
  if (qword_27ECEEFF8 != -1)
  {
    swift_once();
  }

  v6 = qword_27ECF2858;
  v7 = unk_27ECF2860;
  v8 = xmmword_27ECF2868;
  *(v0 + 72) = qword_27ECF2858;
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  v9 = byte_27ECF2878;
  *(v0 + 104) = byte_27ECF2878;
  sub_242CF6A84(v6, v7, v8, *(&v8 + 1), v9);
  if (qword_27ECEEFF0 != -1)
  {
    swift_once();
  }

  v10 = qword_27ECF2830;
  v11 = *algn_27ECF2838;
  v12 = qword_27ECF2840;
  v13 = unk_27ECF2848;
  *(v0 + 112) = qword_27ECF2830;
  *(v0 + 120) = v11;
  *(v0 + 128) = v12;
  *(v0 + 136) = v13;
  v14 = byte_27ECF2850;
  *(v0 + 144) = byte_27ECF2850;
  sub_242CF6A84(v10, v11, v12, v13, v14);
  return v0;
}

uint64_t static Instrument.WidgetInfo.defaultMapsMediaWidgets.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2980);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_242F0A4E0;
  if (qword_27ECEF008 != -1)
  {
    swift_once();
  }

  v2 = qword_27ECF28A8;
  v1 = unk_27ECF28B0;
  v3 = qword_27ECF28B8;
  v4 = unk_27ECF28C0;
  *(v0 + 32) = qword_27ECF28A8;
  *(v0 + 40) = v1;
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = byte_27ECF28C8;
  *(v0 + 64) = byte_27ECF28C8;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 2;
  sub_242CF6A84(v2, v1, v3, v4, v5);
  return v0;
}

uint64_t Instrument.WidgetInfo.preferredPresentation.getter@<X0>(BOOL *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 32);
  if (qword_27ECEEFF8 != -1)
  {
    v8 = v4;
    v9 = v3;
    swift_once();
    v4 = v8;
    v3 = v9;
  }

  v12 = qword_27ECF2858;
  v13 = qword_27ECF2860;
  v14 = xmmword_27ECF2868;
  v15 = byte_27ECF2878;
  v10[0] = v3;
  v10[1] = v4;
  v11 = v5;
  sub_242CF6A84(qword_27ECF2858, qword_27ECF2860, xmmword_27ECF2868, *(&xmmword_27ECF2868 + 1), byte_27ECF2878);
  v6 = _s14CarPlayAssetUI10InstrumentV10WidgetInfoO2eeoiySbAE_AEtFZ_0(&v12, v10);
  result = sub_242CF6AD8(v12, v13, v14, *(&v14 + 1), v15);
  *a1 = v6;
  return result;
}

uint64_t static Instrument.WidgetInfo.getWidgetInfo(requestContentIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result == 0x7765695673616461 && a2 == 0xE800000000000000;
  if (v4 || (v6 = result, result = sub_242F06110(), (result & 1) != 0))
  {
    *a3 = xmmword_242F15410;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 1;
  }

  else
  {
    v17 = a3;
    result = _s14CarPlayAssetUI10InstrumentV10WidgetInfoO8allCasesSayAEGvgZ_0();
    v7 = result;
    v8 = *(result + 16);
    if (v8)
    {
      v9 = 0;
      v10 = (result + 64);
      while (v9 < *(v7 + 16))
      {
        v11 = *(v10 - 1);
        if (*v10)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11 == 0;
        }

        if (!v12)
        {
          v13 = *(v10 - 4);
          v14 = *(v10 - 3);
          v15 = *(v10 - 2);
          if (v15 == v6 && v11 == a2)
          {
            v15 = v6;
            v11 = a2;
LABEL_23:
            sub_242CF6A84(v13, v14, v15, v11, 0);

            *v17 = v13;
            *(v17 + 8) = v14;
            *(v17 + 16) = v15;
            *(v17 + 24) = v11;
            *(v17 + 32) = 0;
            return result;
          }

          result = sub_242F06110();
          if (result)
          {
            goto LABEL_23;
          }
        }

        ++v9;
        v10 += 40;
        if (v8 == v9)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_21:

      *v17 = 0u;
      *(v17 + 16) = 0u;
      *(v17 + 32) = -1;
    }
  }

  return result;
}

uint64_t sub_242CFA7B4@<X0>(uint64_t *a1@<X8>)
{
  result = _s14CarPlayAssetUI10InstrumentV10WidgetInfoO8allCasesSayAEGvgZ_0();
  *a1 = result;
  return result;
}

BOOL _s14CarPlayAssetUI10InstrumentV10WidgetInfoO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v10 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v40[0] = v4;
  v40[1] = v5;
  v40[2] = v6;
  v40[3] = v7;
  v41 = v8;
  v42 = v10;
  v43 = v9;
  v44 = v11;
  v45 = v12;
  v46 = v13;
  if (!v8)
  {
    if (!v13)
    {
      v21 = v6;
      v22 = v5;
      v23 = v4;
      if (v4 == v10 && v5 == v9 || (v24 = v7, v25 = sub_242F06110(), v7 = v24, (v25 & 1) != 0))
      {
        if (!v7)
        {
          sub_242CF6A84(v10, v9, v11, v12, 0);
          sub_242CF6A84(v23, v22, v21, 0, 0);
          sub_242CF6A84(v23, v22, v21, 0, 0);
          sub_242CF6A84(v10, v9, v11, v12, 0);
          sub_242CFC504(v40);
          if (!v12)
          {
            sub_242CF6AD8(v10, v9, v11, 0, 0);
            sub_242CF6AD8(v23, v22, v21, 0, 0);
            return 1;
          }

          sub_242CF6AD8(v10, v9, v11, v12, 0);
          sub_242CF6AD8(v23, v22, v21, 0, 0);
          return 0;
        }

        if (v12)
        {
          if (v21 == v11 && v7 == v12)
          {
            v26 = v7;
            sub_242CF6A84(v23, v22, v21, v7, 0);
            v16 = v10;
            v17 = v9;
            v18 = v21;
            v19 = v26;
            v20 = 0;
            goto LABEL_7;
          }

          v38 = v7;
          v39 = sub_242F06110();
          sub_242CF6A84(v23, v22, v21, v38, 0);
          sub_242CF6A84(v10, v9, v11, v12, 0);
          sub_242CFC504(v40);
          return (v39 & 1) != 0;
        }

        sub_242CF6A84(v23, v22, v21, v7, 0);
        v27 = v10;
        v28 = v9;
        v29 = v11;
        v30 = 0;
        v31 = 0;
      }

      else
      {
        sub_242CF6A84(v23, v22, v21, v24, 0);
        v27 = v10;
        v28 = v9;
        v29 = v11;
        v30 = v12;
        v31 = 0;
      }

LABEL_20:
      sub_242CF6A84(v27, v28, v29, v30, v31);
      sub_242CFC504(v40);
      return 0;
    }

    goto LABEL_19;
  }

  if (v8 != 1)
  {
    if (v13 == 2 && !(v9 | v10 | v11 | v12))
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  if (v13 != 1)
  {
LABEL_19:
    sub_242CF6A84(v4, v5, v6, v7, v8);
    v27 = v10;
    v28 = v9;
    v29 = v11;
    v30 = v12;
    v31 = v13;
    goto LABEL_20;
  }

  if (v4 == v10 && v5 == v9)
  {
    v14 = v4;
    v15 = v5;
    sub_242CF6A84(v4, v5, v6, v7, 1);
    v16 = v14;
    v17 = v15;
    v18 = v11;
    v19 = v12;
    v20 = 1;
LABEL_7:
    sub_242CF6A84(v16, v17, v18, v19, v20);
LABEL_23:
    sub_242CFC504(v40);
    return 1;
  }

  v33 = v4;
  v34 = v5;
  v35 = v6;
  v36 = v7;
  v37 = sub_242F06110();
  sub_242CF6A84(v33, v34, v35, v36, 1);
  sub_242CF6A84(v10, v9, v11, v12, 1);
  sub_242CFC504(v40);
  result = 0;
  if (v37)
  {
    return 1;
  }

  return result;
}

unint64_t sub_242CFAB78()
{
  result = qword_27ECF2920;
  if (!qword_27ECF2920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2920);
  }

  return result;
}

unint64_t sub_242CFABCC()
{
  result = qword_27ECF2928;
  if (!qword_27ECF2928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2928);
  }

  return result;
}

unint64_t sub_242CFAC20()
{
  result = qword_27ECF2930;
  if (!qword_27ECF2930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2930);
  }

  return result;
}

unint64_t sub_242CFAC74()
{
  result = qword_27ECF2938;
  if (!qword_27ECF2938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2938);
  }

  return result;
}

unint64_t sub_242CFACC8()
{
  result = qword_27ECF2940;
  if (!qword_27ECF2940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2940);
  }

  return result;
}

unint64_t sub_242CFAD1C()
{
  result = qword_27ECF2948;
  if (!qword_27ECF2948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2948);
  }

  return result;
}

unint64_t sub_242CFAD70()
{
  result = qword_27ECF2970;
  if (!qword_27ECF2970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2970);
  }

  return result;
}

unint64_t sub_242CFADC4()
{
  result = qword_27ECF2978;
  if (!qword_27ECF2978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2978);
  }

  return result;
}

BOOL _s14CarPlayAssetUI10InstrumentV12StreamWidgetV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v6 || (sub_242F06110() & 1) != 0)
  {
    v7 = v2 == v4 && v3 == v5;
    if (v7 || (sub_242F06110() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t _s14CarPlayAssetUI10InstrumentV9AppWidgetV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if (*a1 == *a2 && a1[1] == a2[1] || (v10 = sub_242F06110(), result = 0, (v10 & 1) != 0))
  {
    if (v2 == v6 && v4 == v7 || (sub_242F06110() & 1) != 0)
    {
      if (v5)
      {
        if (v8 && (v3 == v9 && v5 == v8 || (sub_242F06110() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v8)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t _s14CarPlayAssetUI10InstrumentV6WidgetO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 40);
  v44 = *(a1 + 32);
  v7 = *(a1 + 48);
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  if ((v7 & 1) == 0)
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      v46[0] = *a1;
      v46[1] = v3;
      v37 = v5;
      v46[2] = v5;
      v46[3] = v4;
      v28 = v4;
      v46[4] = v44;
      v46[5] = v6;
      v29 = v6;
      v45[0] = v9;
      v45[1] = v8;
      v45[2] = v10;
      v45[3] = v11;
      v45[4] = v12;
      v45[5] = v13;
      v30 = v8;
      v31 = v10;
      v32 = v2;
      v39 = _s14CarPlayAssetUI10InstrumentV9AppWidgetV2eeoiySbAE_AEtFZ_0(v46, v45);
      sub_242CFC450(v9, v30, v31, v11, v12, v13, 0);
      sub_242CFC450(v32, v3, v37, v28, v44, v29, 0);
      sub_242CFC49C(v32, v3, v37, v28, v44, v29, 0);
      sub_242CFC49C(v9, v30, v31, v11, v12, v13, 0);
      v19 = v39;
      return v19 & 1;
    }

    goto LABEL_10;
  }

  if ((*(a2 + 48) & 1) == 0)
  {
LABEL_10:
    v38 = *(a2 + 8);
    v42 = *(a2 + 16);
    v43 = *(a2 + 32);
    v20 = *a1;
    sub_242CFC450(*a2, v38, v10, v11, v43, v13, v14);
    sub_242CFC450(v20, v3, v5, v4, v44, v6, v7);
    sub_242CFC49C(v20, v3, v5, v4, v44, v6, v7);
    v21 = v9;
    v22 = v38;
    v23 = v42;
    v24 = v43;
    v25 = v11;
    v26 = v13;
    v27 = v14;
LABEL_11:
    sub_242CFC49C(v21, v22, v23, v25, v24, v26, v27);
LABEL_12:
    v19 = 0;
    return v19 & 1;
  }

  if (v2 != v9 || v3 != v8)
  {
    v41 = *(a2 + 16);
    v15 = *(a2 + 8);
    v16 = *a1;
    v17 = sub_242F06110();
    v2 = v16;
    v10 = v41;
    v8 = v15;
    if ((v17 & 1) == 0)
    {
      sub_242CFC450(v9, v15, v41, v11, v12, v13, 1);
      sub_242CFC450(v16, v3, v5, v4, v44, v6, 1);
      sub_242CFC49C(v16, v3, v5, v4, v44, v6, 1);
      v21 = v9;
      v22 = v15;
      v23 = v41;
      v25 = v11;
      v24 = v12;
      v26 = v13;
      v27 = 1;
      goto LABEL_11;
    }
  }

  v36 = v2;
  if (v5 != v10 || v4 != v11)
  {
    v34 = v10;
    v35 = v8;
    v40 = sub_242F06110();
    sub_242CFC450(v9, v35, v34, v11, v12, v13, 1);
    sub_242CFC450(v36, v3, v5, v4, v44, v6, 1);
    sub_242CFC49C(v36, v3, v5, v4, v44, v6, 1);
    sub_242CFC49C(v9, v35, v34, v11, v12, v13, 1);
    v19 = 1;
    if (v40)
    {
      return v19 & 1;
    }

    goto LABEL_12;
  }

  v18 = v8;
  sub_242CFC450(v9, v8, v5, v4, v12, v13, 1);
  sub_242CFC450(v36, v3, v5, v4, v44, v6, 1);
  sub_242CFC49C(v36, v3, v5, v4, v44, v6, 1);
  sub_242CFC49C(v9, v18, v5, v4, v12, v13, 1);
  v19 = 1;
  return v19 & 1;
}

double sub_242CFB3C4(uint64_t a1)
{
  result = 0.0;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 512) = 0x7FFFFFFF8;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  return result;
}

void *sub_242CFB420(void *result)
{
  v1 = result[67] & 0xFE00000000000007;
  v2 = result[69] & 1 | 0x3000000000000000;
  result[64] &= 7uLL;
  result[67] = v1;
  result[69] = v2;
  return result;
}

void *sub_242CFB44C(void *result)
{
  v1 = result[67] & 0xFE00000000000007;
  v2 = result[69] & 1 | 0x6000000000000000;
  result[64] &= 7uLL;
  result[67] = v1;
  result[69] = v2;
  return result;
}

uint64_t sub_242CFB478(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7368801 && a2 == 0xE300000000000000;
  if (v3 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6165727473 && a2 == 0xE600000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7974706D65 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t _s14CarPlayAssetUI10InstrumentV10WidgetInfoO8allCasesSayAEGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2980);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_242F15430;
  if (qword_27ECEEFE8 != -1)
  {
    swift_once();
  }

  v1 = qword_27ECF2808;
  v2 = unk_27ECF2810;
  v3 = qword_27ECF2818;
  v4 = unk_27ECF2820;
  *(v0 + 32) = qword_27ECF2808;
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = byte_27ECF2828;
  *(v0 + 64) = byte_27ECF2828;
  sub_242CF6A84(v1, v2, v3, v4, v5);
  if (qword_27ECEEFF0 != -1)
  {
    swift_once();
  }

  v6 = qword_27ECF2830;
  v7 = *algn_27ECF2838;
  v8 = qword_27ECF2840;
  v9 = unk_27ECF2848;
  *(v0 + 72) = qword_27ECF2830;
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  *(v0 + 96) = v9;
  v10 = byte_27ECF2850;
  *(v0 + 104) = byte_27ECF2850;
  sub_242CF6A84(v6, v7, v8, v9, v10);
  if (qword_27ECEEFF8 != -1)
  {
    swift_once();
  }

  v11 = qword_27ECF2858;
  v12 = qword_27ECF2860;
  v13 = xmmword_27ECF2868;
  *(v0 + 112) = qword_27ECF2858;
  *(v0 + 120) = v12;
  *(v0 + 128) = v13;
  v14 = byte_27ECF2878;
  *(v0 + 144) = byte_27ECF2878;
  sub_242CF6A84(v11, v12, v13, *(&v13 + 1), v14);
  if (qword_27ECEF000 != -1)
  {
    swift_once();
  }

  v15 = qword_27ECF2880;
  v16 = *algn_27ECF2888;
  v17 = qword_27ECF2890;
  v18 = unk_27ECF2898;
  *(v0 + 152) = qword_27ECF2880;
  *(v0 + 160) = v16;
  *(v0 + 168) = v17;
  *(v0 + 176) = v18;
  v19 = byte_27ECF28A0;
  *(v0 + 184) = byte_27ECF28A0;
  *(v0 + 192) = xmmword_242F15410;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  *(v0 + 224) = 1;
  sub_242CF6A84(v15, v16, v17, v18, v19);
  if (qword_27ECEF008 != -1)
  {
    swift_once();
  }

  v20 = qword_27ECF28A8;
  v21 = unk_27ECF28B0;
  v22 = qword_27ECF28B8;
  v23 = unk_27ECF28C0;
  *(v0 + 232) = qword_27ECF28A8;
  *(v0 + 240) = v21;
  *(v0 + 248) = v22;
  *(v0 + 256) = v23;
  v24 = byte_27ECF28C8;
  *(v0 + 264) = byte_27ECF28C8;
  sub_242CF6A84(v20, v21, v22, v23, v24);
  return v0;
}

unint64_t sub_242CFB798()
{
  result = qword_27ECF2988;
  if (!qword_27ECF2988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2988);
  }

  return result;
}

unint64_t sub_242CFB7F0()
{
  result = qword_27ECF2990;
  if (!qword_27ECF2990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2990);
  }

  return result;
}

unint64_t sub_242CFB848()
{
  result = qword_27ECF2998;
  if (!qword_27ECF2998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2998);
  }

  return result;
}

unint64_t sub_242CFB8A0()
{
  result = qword_27ECF29A0;
  if (!qword_27ECF29A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF29A0);
  }

  return result;
}

unint64_t sub_242CFB904()
{
  result = qword_27ECF29A8;
  if (!qword_27ECF29A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF29A8);
  }

  return result;
}

unint64_t sub_242CFB95C()
{
  result = qword_27ECF29B0;
  if (!qword_27ECF29B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF29B0);
  }

  return result;
}

unint64_t sub_242CFB9B4()
{
  result = qword_27ECF29B8;
  if (!qword_27ECF29B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF29B8);
  }

  return result;
}

unint64_t sub_242CFBA0C()
{
  result = qword_27ECF29C0;
  if (!qword_27ECF29C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF29C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF29C0);
  }

  return result;
}

uint64_t sub_242CFBA80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242CFBAC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI10InstrumentV10WidgetInfoO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_242CFBB30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_242CFBB78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_242CFBBC0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_242CFBBFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242CFBC44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_242CFBCA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242CFBCE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_242CFBD60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_242CFBDA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

unint64_t sub_242CFBE7C()
{
  result = qword_27ECF29D0;
  if (!qword_27ECF29D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF29D0);
  }

  return result;
}

unint64_t sub_242CFBED4()
{
  result = qword_27ECF29D8;
  if (!qword_27ECF29D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF29D8);
  }

  return result;
}

unint64_t sub_242CFBF2C()
{
  result = qword_27ECF29E0;
  if (!qword_27ECF29E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF29E0);
  }

  return result;
}

unint64_t sub_242CFBF84()
{
  result = qword_27ECF29E8;
  if (!qword_27ECF29E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF29E8);
  }

  return result;
}

unint64_t sub_242CFBFDC()
{
  result = qword_27ECF29F0;
  if (!qword_27ECF29F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF29F0);
  }

  return result;
}

unint64_t sub_242CFC034()
{
  result = qword_27ECF29F8;
  if (!qword_27ECF29F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF29F8);
  }

  return result;
}

unint64_t sub_242CFC08C()
{
  result = qword_27ECF2A00;
  if (!qword_27ECF2A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2A00);
  }

  return result;
}

unint64_t sub_242CFC0E4()
{
  result = qword_27ECF2A08;
  if (!qword_27ECF2A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2A08);
  }

  return result;
}

unint64_t sub_242CFC13C()
{
  result = qword_27ECF2A10;
  if (!qword_27ECF2A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2A10);
  }

  return result;
}

unint64_t sub_242CFC194()
{
  result = qword_27ECF2A18;
  if (!qword_27ECF2A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2A18);
  }

  return result;
}

unint64_t sub_242CFC1EC()
{
  result = qword_27ECF2A20;
  if (!qword_27ECF2A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2A20);
  }

  return result;
}

unint64_t sub_242CFC244()
{
  result = qword_27ECF2A28;
  if (!qword_27ECF2A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2A28);
  }

  return result;
}

unint64_t sub_242CFC29C()
{
  result = qword_27ECF2A30;
  if (!qword_27ECF2A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2A30);
  }

  return result;
}

unint64_t sub_242CFC2F4()
{
  result = qword_27ECF2A38;
  if (!qword_27ECF2A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2A38);
  }

  return result;
}

unint64_t sub_242CFC34C()
{
  result = qword_27ECF2A40;
  if (!qword_27ECF2A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2A40);
  }

  return result;
}

unint64_t sub_242CFC3A4()
{
  result = qword_27ECF2A48;
  if (!qword_27ECF2A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2A48);
  }

  return result;
}

unint64_t sub_242CFC3FC()
{
  result = qword_27ECF2A50;
  if (!qword_27ECF2A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2A50);
  }

  return result;
}

uint64_t sub_242CFC450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
  }
}

uint64_t sub_242CFC49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  if ((a7 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_242CFC504(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2A58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ColorMap.explicit(colorIDs:colorSet:)(uint64_t a1, const void *a2)
{
  memcpy(__dst, a2, 0x3B0uLL);
  v37 = (*v2)(__dst);
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  v38 = a1;

  v9 = 0;
  v10 = MEMORY[0x277D84F98];
  v36 = a1 + 56;
  while (v7)
  {
    v15 = v9;
LABEL_11:
    v16 = *(v38 + 48) + 24 * (__clz(__rbit64(v7)) | (v15 << 6));
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = *(v16 + 16);
    v42[0] = v18;
    v42[1] = v17;
    v43 = v19;
    sub_242C7CE5C(v18, v17, v19);

    v37(__dst, v42);
    v39 = __dst[0];
    v40 = __dst[1];
    v41 = __dst[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42[0] = v10;
    v21 = sub_242CE50F4(v18, v17, v19);
    v23 = v10[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_22;
    }

    v27 = v22;
    if (v10[3] >= v26)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = v21;
        sub_242D01A20();
        v21 = v34;
      }
    }

    else
    {
      sub_242D0500C(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_242CE50F4(v18, v17, v19);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_24;
      }
    }

    v7 &= v7 - 1;
    v29 = v42[0];
    if (v27)
    {
      v11 = *(v42[0] + 56) + 24 * v21;
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      *v11 = v39;
      *(v11 + 8) = v40;
      *(v11 + 16) = v41;
      sub_242C7FB88(v12, v13, v14);
      sub_242C7CEB0(v18, v17, v19);
    }

    else
    {
      *(v42[0] + 8 * (v21 >> 6) + 64) |= 1 << v21;
      v30 = v29[6] + 24 * v21;
      *v30 = v18;
      *(v30 + 8) = v17;
      *(v30 + 16) = v19;
      v31 = v29[7] + 24 * v21;
      *v31 = v39;
      *(v31 + 8) = v40;
      *(v31 + 16) = v41;

      v32 = v29[2];
      v25 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v25)
      {
        goto LABEL_23;
      }

      v29[2] = v33;
    }

    v9 = v15;
    v10 = v29;
    v4 = v36;
  }

  while (1)
  {
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v15 >= v8)
    {

      return v10;
    }

    v7 = *(v4 + 8 * v15);
    ++v9;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_242F06320();
  __break(1u);
  return result;
}

uint64_t ColorSet.color(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = a1[2];
  memcpy(__dst, v3, sizeof(__dst));
  v16 = v5;
  v17 = v6;
  v8 = sub_242D0B004(&v16, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_242F09510;
  *(v9 + 32) = 0;
  v10 = v9 + 32;
  *(v9 + 40) = v8;
  v11 = sub_242CE6C84(v9);
  swift_setDeallocating();
  swift_retain_n();
  sub_242C6D138(v10, &qword_27ECEFE58);
  swift_deallocClassInstance();
  v12 = sub_242E1E384(v11);

  if (*(v12 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60);
    v13 = sub_242F05CB0();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  __dst[0] = v13;

  sub_242E21B3C(v14, 1, __dst);

  *a2 = __dst[0];
  return result;
}

uint64_t sub_242CFC9E8()
{
  sub_242F06390();
  ColorSet.ColorID.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242CFCA58()
{
  ColorSet.ColorID.rawValue.getter();
  sub_242F04DD0();
}

uint64_t sub_242CFCAC4()
{
  sub_242F06390();
  ColorSet.ColorID.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242CFCB30()
{
  v0 = ColorSet.ColorID.rawValue.getter();
  v2 = v1;
  if (v0 == ColorSet.ColorID.rawValue.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_242F06110();
  }

  return v4 & 1;
}

uint64_t ColorSet.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t ColorSet.appearanceType.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 24), 0x340uLL);
  memcpy(a1, (v1 + 24), 0x340uLL);
  return sub_242CA321C(__dst, v4, &qword_27ECF2A60);
}

void *ColorSet.appearanceType.setter(const void *a1)
{
  memcpy(__dst, (v1 + 24), 0x340uLL);
  sub_242C6D138(__dst, &qword_27ECF2A60);
  return memcpy((v1 + 24), a1, 0x340uLL);
}

uint64_t ColorSet.representedColorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 856);
  v3 = *(v1 + 864);
  v4 = *(v1 + 872);
  v5 = *(v1 + 880);
  v6 = *(v1 + 888);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = *(v1 + 896);
  *(a1 + 40) = v7;
  return sub_242C7C708(v2, v3, v4, v5, v6, v7);
}

uint64_t ColorSet.accentColor.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 912);
  v3 = *(v1 + 920);
  *a1 = v2;
  a1[1] = v3;
  return sub_242C7C77C(v2);
}

uint64_t ColorSet.init(id:appearanceType:color1:color2:color3:color4:color5:color6:color7:color8:activeCruiseControl:speedAssist:inactiveCruiseControl:lowState:criticalState:redline:homologatedSecondaryLabel:representedColorScheme:sortIndex:accentColor:prominent:backgroundOverrideColor:)@<X0>(uint64_t *a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t *a15, uint64_t *a16, uint64_t *a17, uint64_t *a18, __int128 *a19, uint64_t a20, uint64_t *a21, char a22, uint64_t a23)
{
  v53 = a1[1];
  v54 = *a1;
  memcpy(v90, a2, sizeof(v90));
  v61 = *a3;
  v60 = *(a3 + 8);
  v59 = *a4;
  LOBYTE(a4) = *(a4 + 8);
  v26 = *a5;
  LOBYTE(a5) = *(a5 + 8);
  v63 = v26;
  v64 = *a6;
  v65 = *(a6 + 8);
  v66 = *a7;
  v69 = *a8;
  v67 = *(a7 + 8);
  v68 = *(a8 + 8);
  v71 = *a10;
  v70 = *(a10 + 8);
  v73 = *a11;
  v72 = *(a11 + 8);
  v75 = *a12;
  v74 = *(a12 + 8);
  v77 = *a13;
  v76 = *(a13 + 8);
  v79 = *a14;
  v78 = *(a14 + 8);
  v82 = *a15;
  v80 = *(a15 + 8);
  v85 = *a16;
  LOBYTE(a7) = *(a16 + 8);
  v27 = *a17;
  v28 = *(a17 + 8);
  v29 = *a18;
  v30 = *(a18 + 8);
  v57 = a19[1];
  v58 = *a19;
  v56 = *(a19 + 4);
  v52 = *(a19 + 40);
  v51 = *a21;
  v62 = a21[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2A68);
  v31 = swift_allocObject();
  v32 = 0;
  *(v31 + 48) = v61;
  *(v31 + 56) = v60;
  *(v31 + 80) = v59;
  *(v31 + 88) = a4;
  *(v31 + 112) = v63;
  *(v31 + 32) = 1;
  *(v31 + 40) = 0;
  *(v31 + 120) = a5;
  *(v31 + 64) = 2;
  *(v31 + 72) = 0;
  *(v31 + 144) = v64;
  *(v31 + 96) = 3;
  *(v31 + 104) = 0;
  *(v31 + 152) = v65;
  *(v31 + 128) = 4;
  *(v31 + 136) = 0;
  *(v31 + 176) = v66;
  *(v31 + 160) = 5;
  *(v31 + 168) = 0;
  *(v31 + 184) = v67;
  *(v31 + 192) = 6;
  *(v31 + 200) = 0;
  *(v31 + 208) = v69;
  *(v31 + 216) = v68;
  *(v31 + 224) = 7;
  *(v31 + 232) = 0;
  *(v31 + 240) = v71;
  *(v31 + 248) = v70;
  *(v31 + 256) = 8;
  *(v31 + 264) = 0;
  *(v31 + 272) = v73;
  *(v31 + 280) = v72;
  *(v31 + 288) = 0;
  *(v31 + 296) = 1;
  *(v31 + 304) = v75;
  *(v31 + 312) = v74;
  *(v31 + 320) = 1;
  *(v31 + 328) = 1;
  *(v31 + 336) = v77;
  *(v31 + 344) = v76;
  *(v31 + 352) = 2;
  *(v31 + 360) = 1;
  *(v31 + 368) = v79;
  *(v31 + 376) = v78;
  *(v31 + 384) = 3;
  *(v31 + 392) = 1;
  *(v31 + 400) = v82;
  *(v31 + 408) = v80;
  *(v31 + 416) = 4;
  *(v31 + 424) = 1;
  *(v31 + 432) = v85;
  *(v31 + 440) = a7;
  *(v31 + 448) = 5;
  *(v31 + 456) = 1;
  *(v31 + 464) = v27;
  *(v31 + 472) = v28;
  *(v31 + 480) = 6;
  *(v31 + 488) = 1;
  *(v31 + 496) = v29;
  v86 = v31;
  *(v31 + 504) = v30;
  v33 = MEMORY[0x277D84F90];
  do
  {
    v34 = v86 + v32;
    v35 = *(v86 + v32 + 48);
    v36 = *(v86 + v32 + 56);
    if (v36)
    {
      sub_242D0B140(*(v34 + 48), 1);
      v37 = sub_242D0B140(v35, 1);
      v38 = v35;
    }

    else
    {
      sub_242D0B140(*(v34 + 48), 0);
      v37 = sub_242D0B174();
      v38 = v37;
    }

    MEMORY[0x28223BE20](v37);
    v39 = sub_242D0AD60(v38, sub_242D0B14C);

    sub_242D0B168(v35, v36);
    v40 = *(v39 + 16);
    v41 = v33[2];
    v42 = v41 + v40;
    if (__OFADD__(v41, v40))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v42 <= v33[3] >> 1)
    {
      if (!*(v39 + 16))
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (v41 <= v42)
      {
        v44 = v41 + v40;
      }

      else
      {
        v44 = v41;
      }

      v33 = sub_242C833E0(isUniquelyReferenced_nonNull_native, v44, 1, v33);
      if (!*(v39 + 16))
      {
LABEL_2:

        if (v40)
        {
          goto LABEL_25;
        }

        goto LABEL_3;
      }
    }

    if ((v33[3] >> 1) - v33[2] < v40)
    {
      goto LABEL_26;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0398);
    swift_arrayInitWithCopy();

    if (v40)
    {
      v45 = v33[2];
      v46 = __OFADD__(v45, v40);
      v47 = v45 + v40;
      if (v46)
      {
        goto LABEL_27;
      }

      v33[2] = v47;
    }

LABEL_3:
    v32 += 32;
  }

  while (v32 != 480);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2A70);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v33[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2A78);
    v48 = sub_242F05CB0();
  }

  else
  {
    v48 = MEMORY[0x277D84F98];
  }

  v89 = v48;
  sub_242D00E28(v33, 1, &v89);
  v49 = v89;
  sub_242D0B2E4(v87);
  memcpy(v88, v87, sizeof(v88));
  sub_242C6D138(v88, &qword_27ECF2A60);
  *a9 = v54;
  *(a9 + 8) = v53;
  *(a9 + 16) = v49;
  result = memcpy((a9 + 24), v90, 0x340uLL);
  *(a9 + 856) = v58;
  *(a9 + 872) = v57;
  *(a9 + 888) = v56;
  *(a9 + 896) = v52;
  *(a9 + 904) = a20;
  *(a9 + 912) = v51;
  *(a9 + 920) = v62;
  *(a9 + 928) = a22 & 1;
  *(a9 + 936) = a23;
  return result;
}

__n128 ColorSet.init(id:appearanceType:colors:representedColorScheme:sortIndex:accentColor:prominent:backgroundOverrideColor:)@<Q0>(uint64_t *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v13 = *a1;
  v14 = a1[1];
  v15 = *(a4 + 32);
  v16 = *(a4 + 40);
  v17 = *a6;
  v18 = a6[1];
  sub_242D0B2E4(__src);
  *a9 = v13;
  *(a9 + 8) = v14;
  memcpy(__dst, __src, 0x340uLL);
  sub_242C6D138(__dst, &qword_27ECF2A60);
  memcpy((a9 + 24), a2, 0x340uLL);
  *(a9 + 16) = a3;
  result = *a4;
  v20 = *(a4 + 16);
  *(a9 + 856) = *a4;
  *(a9 + 872) = v20;
  *(a9 + 888) = v15;
  *(a9 + 896) = v16;
  *(a9 + 904) = a5;
  *(a9 + 912) = v17;
  *(a9 + 920) = v18;
  *(a9 + 928) = a7;
  *(a9 + 936) = a8;
  return result;
}

uint64_t ColorSet.color(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  memcpy(__dst, v3, sizeof(__dst));
  v16 = v6;
  v17 = v7;
  v8 = sub_242D0B004(&v16, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_242F09510;
  *(v9 + 32) = 0;
  v10 = v9 + 32;
  *(v9 + 40) = v8;
  v11 = sub_242CE6C84(v9);
  swift_setDeallocating();
  swift_retain_n();
  sub_242C6D138(v10, &qword_27ECEFE58);
  swift_deallocClassInstance();
  v12 = sub_242E1E384(v11);

  if (*(v12 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60);
    v13 = sub_242F05CB0();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  __dst[0] = v13;

  sub_242E21B3C(v14, 1, __dst);

  *a3 = __dst[0];
  return result;
}

uint64_t ColorSet.color(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_242D0B004(a1, a2);
}

unint64_t sub_242CFD63C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6E656E696D6F7270;
  if (v1 != 6)
  {
    v3 = 0xD000000000000017;
  }

  v4 = 0x65646E4974726F73;
  if (v1 != 4)
  {
    v4 = 0x6F43746E65636361;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6E61726165707061;
  if (v1 != 2)
  {
    v5 = 0xD000000000000016;
  }

  if (*v0)
  {
    v2 = 0x73726F6C6F63;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_242CFD74C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242D0BB3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242CFD774(uint64_t a1)
{
  v2 = sub_242D0B314();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CFD7B0(uint64_t a1)
{
  v2 = sub_242D0B314();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ColorSet.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2A80);
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v7 = *v2;
  v8 = *(v2 + 8);
  v9 = *(v2 + 16);
  v28 = *(v2 + 856);
  v29 = v9;
  v10 = *(v2 + 864);
  v26 = *(v2 + 872);
  v27 = v10;
  v11 = *(v2 + 880);
  v24 = *(v2 + 888);
  v25 = v11;
  v33 = *(v2 + 896);
  v12 = *(v2 + 904);
  v21 = *(v2 + 912);
  v22 = *(v2 + 920);
  v23 = v12;
  v20 = *(v2 + 928);
  v19 = *(v2 + 936);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D0B314();

  v13 = v6;
  sub_242F064C0();
  v32[0] = v7;
  v32[1] = v8;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF38);
  sub_242C7D9A8(&qword_27ECEFF40);
  v14 = v30;
  sub_242F05F20();
  if (v14)
  {

    return (*(v31 + 8))(v6, v4);
  }

  else
  {
    v16 = v27;
    v17 = v28;
    v18 = v31;

    v32[0] = v29;
    v34 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2A90);
    sub_242D0B368();
    sub_242F05F20();
    memcpy(v32, (v2 + 24), sizeof(v32));
    v34 = 2;
    sub_242D0B410();
    sub_242F05F20();
    v32[0] = v17;
    v32[1] = v16;
    v32[2] = v26;
    v32[3] = v25;
    v32[4] = v24;
    LOBYTE(v32[5]) = v33;
    v34 = 3;
    sub_242C7C708(v17, v16, v26, v25, v24, v33);
    sub_242C7D8A0();
    sub_242F05F20();
    sub_242C7D8F4(v32[0], v32[1], v32[2], v32[3], v32[4], v32[5]);
    LOBYTE(v32[0]) = 4;
    sub_242F05F00();
    v32[0] = v21;
    v32[1] = v22;
    v34 = 5;
    sub_242C7C77C(v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFEC0);
    sub_242C7C690(&qword_27ECEFEC8);
    sub_242F05EB0();
    sub_242C7D968(v32[0]);
    LOBYTE(v32[0]) = 6;
    sub_242F05ED0();
    v32[0] = v19;
    v34 = 7;
    sub_242C7C594();
    sub_242F05EB0();
    return (*(v18 + 8))(v13, 0);
  }
}

uint64_t ColorSet.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  memcpy(__dst, (v1 + 24), 0x340uLL);
  v4 = *(v1 + 856);
  v5 = *(v1 + 896);
  v6 = *(v1 + 904);
  v7 = *(v1 + 912);
  v8 = *(v1 + 936);
  sub_242F04DD0();
  sub_242C79FC0(a1, v3);
  v9 = sub_242D0B464(__dst);
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      MEMORY[0x245D279A0](0);
      if (v5 <= 1)
      {
        goto LABEL_9;
      }

LABEL_13:
      if (v5 == 2)
      {
        MEMORY[0x245D279A0](2);
        sub_242C7BAC0(a1, v4);
        sub_242F04B30();
        sub_242F04B30();
      }

      else
      {
        MEMORY[0x245D279A0](3);
      }

      goto LABEL_17;
    }

    v12 = sub_242C56CEC(__dst);
    MEMORY[0x245D279A0](3);
    memcpy(v15, v12, sizeof(v15));
    Color.ColorValues.hash(into:)();
    v13 = v12 + 416;
  }

  else
  {
    if (v9)
    {
      v10 = sub_242C56CEC(__dst);
      v11 = 2;
    }

    else
    {
      v10 = sub_242C56CEC(__dst);
      v11 = 1;
    }

    MEMORY[0x245D279A0](v11);
    v13 = v10;
  }

  memcpy(v15, v13, sizeof(v15));
  Color.ColorValues.hash(into:)();
  if (v5 > 1)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (v5)
  {
    MEMORY[0x245D279A0](1);
    sub_242F04720();
  }

  else
  {
    MEMORY[0x245D279A0](0);
  }

  sub_242F04720();
LABEL_17:
  MEMORY[0x245D279A0](v6);
  sub_242F063B0();
  if (v7)
  {
    sub_242F04720();
    sub_242F04720();
  }

  sub_242F063B0();
  if (!v8)
  {
    return sub_242F063B0();
  }

  sub_242F063B0();
  return sub_242F04720();
}

uint64_t ColorSet.hashValue.getter()
{
  sub_242F06390();
  ColorSet.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t ColorSet.init(from:)(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2AA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  sub_242D0B2E4(v52);
  memcpy(v53, v52, 0x340uLL);
  memcpy(v51, v52, sizeof(v51));
  v9 = v2[3];
  v54 = v2;
  __swift_project_boxed_opaque_existential_2Tm(v2, v9);
  sub_242D0B314();
  sub_242F06480();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(v54);
    memcpy(v34, v51, 0x340uLL);
    return sub_242C6D138(v34, &qword_27ECF2A60);
  }

  else
  {
    v10 = v6;
    v11 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF38);
    LOBYTE(v33[0]) = 0;
    sub_242C7D9A8(&qword_27ECEFF60);
    sub_242F05E00();
    v13 = v34[0];
    v14 = v34[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2A90);
    LOBYTE(v33[0]) = 1;
    sub_242D0B484();
    sub_242F05E00();
    v32 = v34[0];
    v48[833] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2A60);
    sub_242D0B52C();
    sub_242F05D90();
    memcpy(v47, v48, sizeof(v47));
    if (sub_242D0B590(v47) == 1)
    {
      memcpy(v34, v48, 0x340uLL);
      sub_242C6D138(v34, &qword_27ECF2AC0);
      v15 = v53;
    }

    else
    {
      v15 = v48;
    }

    memcpy(v46, v15, sizeof(v46));
    memcpy(v45, v51, sizeof(v45));
    sub_242C6D138(v45, &qword_27ECF2A60);
    memcpy(v51, v46, sizeof(v51));
    LOBYTE(v33[0]) = 3;
    sub_242C7DA6C();
    sub_242F05E00();
    v30 = v34[1];
    v31 = v34[0];
    v24 = v34[2];
    v26 = v34[3];
    v27 = v34[4];
    v25 = LOBYTE(v34[5]);
    LOBYTE(v34[0]) = 4;
    v23 = sub_242F05DE0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFEC0);
    LOBYTE(v33[0]) = 5;
    sub_242C7C690(&qword_27ECEFF20);
    sub_242F05D90();
    v28 = v34[1];
    v29 = v34[0];
    LOBYTE(v34[0]) = 6;
    v22 = sub_242F05DB0();
    v43 = 7;
    sub_242C7C540();
    sub_242F05D90();
    v22 &= 1u;
    (*(v10 + 8))(v8, v5);
    v16 = v44;
    v33[0] = v13;
    v33[1] = v14;
    v33[2] = v32;
    memcpy(&v33[3], v46, 0x340uLL);
    v17 = v30;
    v33[107] = v31;
    v33[108] = v30;
    v18 = v24;
    v33[109] = v24;
    v33[110] = v26;
    v33[111] = v27;
    v21 = v13;
    v19 = v25;
    LOBYTE(v33[112]) = v25;
    *(&v33[112] + 1) = *v50;
    HIDWORD(v33[112]) = *&v50[3];
    v33[113] = v23;
    v33[114] = v29;
    v33[115] = v28;
    LOBYTE(v33[116]) = v22;
    *(&v33[116] + 1) = *v49;
    HIDWORD(v33[116]) = *&v49[3];
    v33[117] = v44;
    memcpy(v11, v33, 0x3B0uLL);
    sub_242C7F7E0(v33, v34);
    __swift_destroy_boxed_opaque_existential_2Tm(v54);
    v34[0] = v21;
    v34[1] = v14;
    v34[2] = v32;
    memcpy(&v34[3], v46, 0x340uLL);
    v34[107] = v31;
    v34[108] = v17;
    v34[109] = v18;
    v34[110] = v26;
    v34[111] = v27;
    v35 = v19;
    *v36 = *v50;
    *&v36[3] = *&v50[3];
    v37 = v23;
    v38 = v29;
    v39 = v28;
    v40 = v22;
    *v41 = *v49;
    *&v41[3] = *&v49[3];
    v42 = v16;
    return sub_242C7C7BC(v34);
  }
}

uint64_t sub_242CFE710()
{
  sub_242F06390();
  ColorSet.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242CFE754()
{
  sub_242F06390();
  ColorSet.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t static ColorSet.< infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_242F06110();
  }
}

uint64_t sub_242CFE7C4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_242F06110();
  }
}

uint64_t sub_242CFE7F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_242F06110() ^ 1) & 1;
  }
}

uint64_t sub_242CFE83C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return (sub_242F06110() ^ 1) & 1;
  }
}

uint64_t sub_242CFE890(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_242F06110();
  }
}

void *static ColorSet.shades(color0:color1:color2:color3:color4:color5:color6:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2AC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F0D240;
  *(inited + 32) = 0;
  *(inited + 40) = a1;
  *(inited + 48) = 1;
  *(inited + 56) = a2;
  *(inited + 64) = 2;
  *(inited + 72) = a3;
  *(inited + 80) = 3;
  *(inited + 88) = a4;
  *(inited + 96) = 4;
  *(inited + 104) = a5;
  *(inited + 112) = 5;
  *(inited + 120) = a6;
  *(inited + 128) = 6;
  *(inited + 136) = a7;
  v15 = sub_242CE7128(inited);
  swift_setDeallocating();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2AD0);
  swift_arrayDestroy();
  return v15;
}

uint64_t ColorSet.ColorID.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = HIBYTE(a2) & 0xF;
  v7 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v35[0] = a1;
      v35[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 == 43)
      {
        if (v6)
        {
          if (--v6)
          {
            v11 = 0;
            v21 = v35 + 1;
            while (1)
            {
              v22 = *v21 - 48;
              if (v22 > 9)
              {
                break;
              }

              v23 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                break;
              }

              v11 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                break;
              }

              ++v21;
              if (!--v6)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      if (a1 != 45)
      {
        if (v6)
        {
          v11 = 0;
          v26 = v35;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              break;
            }

            v28 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              break;
            }

            v11 = v28 + v27;
            if (__OFADD__(v28, v27))
            {
              break;
            }

            ++v26;
            if (!--v6)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      if (v6)
      {
        if (--v6)
        {
          v11 = 0;
          v15 = v35 + 1;
          while (1)
          {
            v16 = *v15 - 48;
            if (v16 > 9)
            {
              break;
            }

            v17 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              break;
            }

            v11 = v17 - v16;
            if (__OFSUB__(v17, v16))
            {
              break;
            }

            ++v15;
            if (!--v6)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v9 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v9 = sub_242F05B50();
      }

      v10 = *v9;
      if (v10 == 43)
      {
        if (v7 >= 1)
        {
          v6 = v7 - 1;
          if (v7 != 1)
          {
            v11 = 0;
            if (v9)
            {
              v18 = v9 + 1;
              while (1)
              {
                v19 = *v18 - 48;
                if (v19 > 9)
                {
                  goto LABEL_61;
                }

                v20 = 10 * v11;
                if ((v11 * 10) >> 64 != (10 * v11) >> 63)
                {
                  goto LABEL_61;
                }

                v11 = v20 + v19;
                if (__OFADD__(v20, v19))
                {
                  goto LABEL_61;
                }

                ++v18;
                if (!--v6)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_53;
          }

          goto LABEL_61;
        }

        goto LABEL_97;
      }

      if (v10 != 45)
      {
        if (v7)
        {
          v11 = 0;
          if (v9)
          {
            while (1)
            {
              v24 = *v9 - 48;
              if (v24 > 9)
              {
                goto LABEL_61;
              }

              v25 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                goto LABEL_61;
              }

              v11 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                goto LABEL_61;
              }

              ++v9;
              if (!--v7)
              {
                goto LABEL_53;
              }
            }
          }

          goto LABEL_53;
        }

LABEL_61:
        v11 = 0;
        LOBYTE(v6) = 1;
LABEL_62:
        v36 = v6;
        if (v6)
        {
          goto LABEL_63;
        }

LABEL_85:

        v31 = 0;
        v30 = 0;
        goto LABEL_86;
      }

      if (v7 >= 1)
      {
        v6 = v7 - 1;
        if (v7 != 1)
        {
          v11 = 0;
          if (v9)
          {
            v12 = v9 + 1;
            while (1)
            {
              v13 = *v12 - 48;
              if (v13 > 9)
              {
                goto LABEL_61;
              }

              v14 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                goto LABEL_61;
              }

              v11 = v14 - v13;
              if (__OFSUB__(v14, v13))
              {
                goto LABEL_61;
              }

              ++v12;
              if (!--v6)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_53:
          LOBYTE(v6) = 0;
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v32 = sub_242D0A034(a1, a2, 10);
  if ((v33 & 1) == 0)
  {
    v11 = v32;
    goto LABEL_85;
  }

LABEL_63:
  if ((a1 != 0xD000000000000013 || 0x8000000242F58D20 != a2) && (sub_242F06110() & 1) == 0)
  {
    if (a1 == 0x7373416465657073 && a2 == 0xEB00000000747369 || (sub_242F06110() & 1) != 0)
    {

      v30 = 0;
      v11 = 1;
      v31 = 1;
      goto LABEL_86;
    }

    if (a1 == 0xD000000000000015 && 0x8000000242F58D00 == a2 || (sub_242F06110() & 1) != 0)
    {

      v30 = 0;
      v31 = 1;
      v11 = 2;
      goto LABEL_86;
    }

    if (a1 == 0x6574617453776F6CLL && a2 == 0xE800000000000000 || (sub_242F06110() & 1) != 0)
    {

      v30 = 0;
      v31 = 1;
      v11 = 3;
      goto LABEL_86;
    }

    if (a1 == 0x6C61636974697263 && a2 == 0xED00006574617453 || (sub_242F06110() & 1) != 0)
    {

      v30 = 0;
      v31 = 1;
      v11 = 4;
      goto LABEL_86;
    }

    if (a1 == 0x656E696C646572 && a2 == 0xE700000000000000 || (sub_242F06110() & 1) != 0)
    {

      v30 = 0;
      v31 = 1;
      v11 = 5;
      goto LABEL_86;
    }

    if (a1 == 0xD000000000000019 && 0x8000000242F58CE0 == a2)
    {

LABEL_100:
      v30 = 0;
      v31 = 1;
      v11 = 6;
      goto LABEL_86;
    }

LABEL_99:
    v34 = sub_242F06110();

    if ((v34 & 1) == 0)
    {
      v11 = 0;
      v31 = 0;
      v30 = 1;
      goto LABEL_86;
    }

    goto LABEL_100;
  }

  v11 = 0;
  v30 = 0;
  v31 = 1;
LABEL_86:
  *a3 = v11;
  *(a3 + 8) = v31;
  *(a3 + 9) = v30;
  return result;
}

uint64_t ColorSet.ColorID.rawValue.getter()
{
  v1 = *v0;
  if (*(v0 + 8) != 1)
  {
    return sub_242F05F60();
  }

  v2 = 0x7373416465657073;
  v3 = 0x656E696C646572;
  if (v1 != 5)
  {
    v3 = 0xD000000000000019;
  }

  v4 = 0x6574617453776F6CLL;
  if (v1 != 3)
  {
    v4 = 0x6C61636974697263;
  }

  if (v1 <= 4)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000015;
  }

  if (!v1)
  {
    v2 = 0xD000000000000013;
  }

  if (v1 <= 2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_242CFF0B4@<X0>(uint64_t *a1@<X8>)
{
  result = ColorSet.ColorID.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ColorSet.ColorID.codingKey.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8) == 1)
  {
    v4 = 0xEB00000000747369;
    v5 = 0x7373416465657073;
    v6 = 0xE700000000000000;
    v7 = 0x656E696C646572;
    if (v3 != 5)
    {
      v7 = 0xD000000000000019;
      v6 = 0x8000000242F58CE0;
    }

    v8 = 0xE800000000000000;
    v9 = 0x6574617453776F6CLL;
    if (v3 != 3)
    {
      v9 = 0x6C61636974697263;
      v8 = 0xED00006574617453;
    }

    if (v3 <= 4)
    {
      v7 = v9;
      v6 = v8;
    }

    if (v3 != 1)
    {
      v5 = 0xD000000000000015;
      v4 = 0x8000000242F58D00;
    }

    if (!v3)
    {
      v5 = 0xD000000000000013;
      v4 = 0x8000000242F58D20;
    }

    if (v3 <= 2)
    {
      v10 = v5;
    }

    else
    {
      v10 = v7;
    }

    if (v3 <= 2)
    {
      v11 = v4;
    }

    else
    {
      v11 = v6;
    }
  }

  else
  {
    v10 = sub_242F05F60();
    v11 = v12;
  }

  a1[3] = &type metadata for AnyCodingKey;
  a1[4] = sub_242D0B600();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v10;
  *(result + 24) = v11;
  *(result + 32) = 0;
  *(result + 40) = 1;
  return result;
}

uint64_t ColorSet.ColorID.init<A>(codingKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_242F06540();
  ColorSet.ColorID.init(rawValue:)(v6, v7, &v11);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  v9 = v12;
  v10 = v13;
  *a3 = v11;
  *(a3 + 8) = v9;
  *(a3 + 9) = v10;
  return result;
}

uint64_t ColorSet.ColorID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242F06470();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_2Tm(v7, v7[3]);
    v5 = sub_242F06150();
    __swift_destroy_boxed_opaque_existential_2Tm(v7);
    *a2 = v5;
    *(a2 + 8) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t ColorSet.ColorID.encode(to:)(void *a1)
{
  v2 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242F064B0();
  if (v2)
  {
    ColorSet.ColorID.rawValue.getter();
    __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
    sub_242F06180();
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
    sub_242F061A0();
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v4);
}

uint64_t Pair<>.codingKey.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = ColorSet.ColorID.rawValue.getter();
  v4 = v3;
  v5 = sub_242F05F60();
  MEMORY[0x245D26660](v5);

  MEMORY[0x245D26660](95, 0xE100000000000000);

  a1[3] = &type metadata for AnyCodingKey;
  a1[4] = sub_242D0B600();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v2;
  *(result + 24) = v4;
  *(result + 32) = 0;
  *(result + 40) = 1;
  return result;
}

unsigned __int8 *Pair<>.init<A>(codingKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = sub_242F06540();
  v51 = 95;
  v52 = 0xE100000000000000;
  v49[2] = &v51;
  v10 = sub_242D009F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_242C9B7C0, v49, v8, v9, &v51);
  v11 = v10;
  if (v10[2] != 2 || (v12 = v10[4], v13 = v10[5], v14 = v10[6], v15 = v10[7], , v16 = MEMORY[0x245D265B0](v12, v13, v14, v15), v18 = v17, , ColorSet.ColorID.init(rawValue:)(v16, v18, &v51), (v52 & 0x100) != 0))
  {
LABEL_3:
    (*(*(a2 - 8) + 8))(a1, a2);

LABEL_4:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 1;
    return result;
  }

  if (*(v11 + 16) < 2uLL)
  {
    __break(1u);
LABEL_71:
    v50 = 0;
    v29 = sub_242D0A034(v16, v11, 10);
    v47 = v48;
    goto LABEL_68;
  }

  v3 = v51;
  v4 = v52;
  v20 = *(v11 + 64);
  v21 = *(v11 + 72);
  v22 = *(v11 + 80);
  v23 = *(v11 + 88);

  v16 = MEMORY[0x245D265B0](v20, v21, v22, v23);
  v11 = v24;

  v25 = HIBYTE(v11) & 0xF;
  v26 = v16 & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v27 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v27 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {
    goto LABEL_3;
  }

  if ((v11 & 0x1000000000000000) != 0)
  {
    goto LABEL_71;
  }

  if ((v11 & 0x2000000000000000) != 0)
  {
    v51 = v16;
    v52 = v11 & 0xFFFFFFFFFFFFFFLL;
    if (v16 == 43)
    {
      if (v25)
      {
        if (--v25)
        {
          v29 = 0;
          v39 = &v51 + 1;
          while (1)
          {
            v40 = *v39 - 48;
            if (v40 > 9)
            {
              break;
            }

            v41 = 10 * v29;
            if ((v29 * 10) >> 64 != (10 * v29) >> 63)
            {
              break;
            }

            v29 = v41 + v40;
            if (__OFADD__(v41, v40))
            {
              break;
            }

            ++v39;
            if (!--v25)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_66;
      }

LABEL_76:
      __break(1u);
      return result;
    }

    if (v16 != 45)
    {
      if (v25)
      {
        v29 = 0;
        v44 = &v51;
        while (1)
        {
          v45 = *v44 - 48;
          if (v45 > 9)
          {
            break;
          }

          v46 = 10 * v29;
          if ((v29 * 10) >> 64 != (10 * v29) >> 63)
          {
            break;
          }

          v29 = v46 + v45;
          if (__OFADD__(v46, v45))
          {
            break;
          }

          v44 = (v44 + 1);
          if (!--v25)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_66;
    }

    if (v25)
    {
      if (--v25)
      {
        v29 = 0;
        v33 = &v51 + 1;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          v35 = 10 * v29;
          if ((v29 * 10) >> 64 != (10 * v29) >> 63)
          {
            break;
          }

          v29 = v35 - v34;
          if (__OFSUB__(v35, v34))
          {
            break;
          }

          ++v33;
          if (!--v25)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_66;
    }

    goto LABEL_74;
  }

  if ((v16 & 0x1000000000000000) != 0)
  {
    result = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_242F05B50();
  }

  v28 = *result;
  if (v28 == 43)
  {
    if (v26 < 1)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v25 = v26 - 1;
    if (v26 != 1)
    {
      v29 = 0;
      if (result)
      {
        v36 = result + 1;
        while (1)
        {
          v37 = *v36 - 48;
          if (v37 > 9)
          {
            goto LABEL_66;
          }

          v38 = 10 * v29;
          if ((v29 * 10) >> 64 != (10 * v29) >> 63)
          {
            goto LABEL_66;
          }

          v29 = v38 + v37;
          if (__OFADD__(v38, v37))
          {
            goto LABEL_66;
          }

          ++v36;
          if (!--v25)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_58;
    }

LABEL_66:
    v29 = 0;
    LOBYTE(v25) = 1;
    goto LABEL_67;
  }

  if (v28 != 45)
  {
    if (v26)
    {
      v29 = 0;
      if (result)
      {
        while (1)
        {
          v42 = *result - 48;
          if (v42 > 9)
          {
            goto LABEL_66;
          }

          v43 = 10 * v29;
          if ((v29 * 10) >> 64 != (10 * v29) >> 63)
          {
            goto LABEL_66;
          }

          v29 = v43 + v42;
          if (__OFADD__(v43, v42))
          {
            goto LABEL_66;
          }

          ++result;
          if (!--v26)
          {
            goto LABEL_58;
          }
        }
      }

      goto LABEL_58;
    }

    goto LABEL_66;
  }

  if (v26 < 1)
  {
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v25 = v26 - 1;
  if (v26 == 1)
  {
    goto LABEL_66;
  }

  v29 = 0;
  if (result)
  {
    v30 = result + 1;
    while (1)
    {
      v31 = *v30 - 48;
      if (v31 > 9)
      {
        goto LABEL_66;
      }

      v32 = 10 * v29;
      if ((v29 * 10) >> 64 != (10 * v29) >> 63)
      {
        goto LABEL_66;
      }

      v29 = v32 - v31;
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_66;
      }

      ++v30;
      if (!--v25)
      {
        goto LABEL_67;
      }
    }
  }

LABEL_58:
  LOBYTE(v25) = 0;
LABEL_67:
  v50 = v25;
  v47 = v25;
LABEL_68:
  (*(*(a2 - 8) + 8))(a1, a2);

  if (v47)
  {
    goto LABEL_4;
  }

  *a3 = v3;
  *(a3 + 8) = v4 & 1;
  *(a3 + 16) = v29;
  *(a3 + 24) = 0;
  return result;
}