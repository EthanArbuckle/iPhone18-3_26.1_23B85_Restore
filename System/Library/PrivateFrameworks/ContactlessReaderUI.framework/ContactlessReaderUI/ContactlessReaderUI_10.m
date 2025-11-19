uint64_t sub_2440601C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_244060228@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(type metadata accessor for TapView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24405E784(a1, v6, a2);
}

uint64_t sub_2440602A8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 376))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_244060350@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 616))();
  *a2 = result;
  return result;
}

uint64_t sub_2440603F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v116 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4F08);
  v133 = *(v9 - 8);
  v134 = v9;
  MEMORY[0x28223BE20](v9);
  v127 = &v108 - v10;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4F10);
  MEMORY[0x28223BE20](v124);
  v123 = (&v108 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4F18);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v126 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v125 = &v108 - v15;
  v16 = sub_2440D1F60();
  v117 = *(v16 - 8);
  v118 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4F20);
  MEMORY[0x28223BE20](v19);
  v21 = &v108 - v20;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4F28);
  MEMORY[0x28223BE20](v128);
  v23 = &v108 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4F30);
  v114 = *(v24 - 8);
  v115 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = &v108 - v25;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4F38);
  v27 = MEMORY[0x28223BE20](v131);
  v129 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v119 = &v108 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4F40);
  v120 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v130 = &v108 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4F48);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v121 = &v108 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v132 = &v108 - v35;
  v36 = *(a1 + 80);
  LOBYTE(v139) = *(a1 + 72);
  v140 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  sub_2440D2820();
  v37 = a3;
  v38 = 1;
  if (LOBYTE(v135[0]) == 1)
  {
    v112 = v30;
    v113 = v37;
    v39 = *sub_244070850() > a4;
    sub_2440D1650();
    v40 = *(a1 + 168);
    v139 = *(a1 + 160);
    v140 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC25C0);
    sub_2440D2820();
    *v21 = sub_2440D1C20();
    *(v21 + 1) = 0;
    v21[16] = 1;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4F50);
    sub_244061330(v39, a1, &v21[*(v41 + 44)], a4);
    *&v21[*(v19 + 36)] = sub_243F9A09C();
    sub_244066EB4();
    sub_2440D2510();
    sub_243F5EED4(v21, &qword_27EDC4F20);
    sub_2440D1F40();
    v42 = sub_244066F98();
    v109 = v26;
    sub_2440D2490();
    (*(v117 + 8))(v18, v118);
    sub_243F5EED4(v23, &qword_27EDC4F28);
    v44 = *a1;
    v43 = *(a1 + 8);
    v45 = *(a1 + 16);
    v46 = type metadata accessor for TapViewModel();
    v47 = sub_2440678A4(&qword_27EDC4DA8, type metadata accessor for TapViewModel);
    v48 = *sub_2440D1490();
    v49 = (*(v48 + 808))();

    v50 = sub_243FA1978(v49, 2);
    v117 = v46;
    v118 = v43;
    v116 = v47;
    v122 = a1;
    if (v50)
    {
      v51 = 0;
      v52 = 0xE000000000000000;
      v53 = v45;
    }

    else
    {
      v54 = *sub_2440D1490();
      v55 = (*(v54 + 808))();

      v53 = v45;
      if (sub_243FA1978(v55, 3))
      {
        v51 = 0;
        v52 = 0xE000000000000000;
      }

      else
      {
        v56 = *sub_2440D1490();
        v51 = (*(v56 + 952))();
        v52 = v57;
      }
    }

    v139 = v51;
    v140 = v52;
    sub_243F4EF64();
    v58 = sub_2440D2310();
    v60 = v59;
    v62 = v61;
    v139 = v128;
    v140 = v42;
    swift_getOpaqueTypeConformance2();
    v63 = v115;
    v64 = v109;
    sub_2440D2430();
    sub_243F62C68(v58, v60, v62 & 1);

    (*(v114 + 8))(v64, v63);
    v65 = *sub_2440D1490();
    LOBYTE(v63) = (*(v65 + 808))();

    v66 = sub_243FA1978(v63, 2);
    v111 = v44;
    v110 = v53;
    if (v66 || (v67 = *sub_2440D1490(), v68 = (*(v67 + 808))(), , sub_243FA1978(v68, 3)))
    {
      v69 = 0;
      v70 = 0xE000000000000000;
    }

    else
    {
      v71 = *sub_2440D1490();
      v69 = (*(v71 + 1000))();
      v70 = v72;
    }

    v139 = v69;
    v140 = v70;
    v73 = sub_2440D2310();
    v75 = v74;
    v77 = v76;
    v78 = v119;
    v79 = v129;
    sub_2440D17D0();
    sub_243F62C68(v73, v75, v77 & 1);

    sub_243F5EED4(v79, &qword_27EDC4F38);
    type metadata accessor for TapView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);
    sub_2440D1E60();
    LOBYTE(v135[0]) = 2;
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0258);
    v81 = sub_244067054();
    v82 = sub_243F67D98();
    sub_2440D24A0();

    sub_243F5EED4(v78, &qword_27EDC4F38);
    v83 = *sub_2440D1490();
    (*(v83 + 760))(v135);

    if (v135[5])
    {
      sub_243F5EED4(v135, &qword_27EDBFF68);
    }

    v139 = v131;
    v140 = v80;
    v141 = v81;
    v142 = v82;
    swift_getOpaqueTypeConformance2();
    v84 = v112;
    v85 = v130;
    sub_2440D2480();
    (*(v120 + 8))(v85, v84);
    v86 = sub_2440D1C20();
    v87 = v123;
    *v123 = v86;
    *(v87 + 8) = 0;
    *(v87 + 16) = 0;
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4F80);
    sub_244063838(v122, v87 + *(v88 + 44), a5 / 3.0);
    sub_2440D2B00();
    sub_2440D1560();
    v89 = (v87 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4F88) + 36));
    v90 = v137;
    *v89 = v136;
    v89[1] = v90;
    v89[2] = v138;
    LOBYTE(v85) = sub_2440D20D0();
    sub_244071480();
    sub_2440D13D0();
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v98 = v97;
    v99 = v87 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4F90) + 36);
    *v99 = v85;
    *(v99 + 8) = v92;
    *(v99 + 16) = v94;
    *(v99 + 24) = v96;
    *(v99 + 32) = v98;
    *(v99 + 40) = 0;
    *(v87 + *(v124 + 36)) = 0;
    v100 = *sub_2440D1490();
    (*(v100 + 760))(&v139);

    if (v143)
    {
      sub_243F5EED4(&v139, &qword_27EDBFF68);
    }

    sub_24406714C();
    v101 = v125;
    sub_2440D2480();
    sub_243F5EED4(v87, &qword_27EDC4F10);
    v102 = v132;
    v103 = v121;
    sub_243F5F574(v132, v121, &qword_27EDC4F48);
    v104 = v126;
    sub_243F5F574(v101, v126, &qword_27EDC4F18);
    v105 = v127;
    sub_243F5F574(v103, v127, &qword_27EDC4F48);
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4FC0);
    sub_243F5F574(v104, v105 + *(v106 + 48), &qword_27EDC4F18);
    sub_243F5EED4(v101, &qword_27EDC4F18);
    sub_243F5EED4(v102, &qword_27EDC4F48);
    sub_243F5EED4(v104, &qword_27EDC4F18);
    sub_243F5EED4(v103, &qword_27EDC4F48);
    v37 = v113;
    sub_243F681C8(v105, v113, &qword_27EDC4F08);
    v38 = 0;
  }

  return (*(v133 + 56))(v37, v38, 1, v134);
}

uint64_t sub_244061330@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  LODWORD(v192) = a1;
  v191 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4FD8);
  v187 = *(v6 - 8);
  v188 = v6;
  MEMORY[0x28223BE20](v6);
  v155 = &v154 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4FE0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v190 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v199 = &v154 - v11;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4FE8);
  MEMORY[0x28223BE20](v158);
  v157 = &v154 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4FF0);
  v185 = *(v13 - 8);
  v186 = v13;
  MEMORY[0x28223BE20](v13);
  v156 = &v154 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4FF8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v189 = &v154 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v198 = &v154 - v18;
  v19 = type metadata accessor for TapView();
  v180 = *(v19 - 8);
  v195 = *(v180 + 8);
  MEMORY[0x28223BE20](v19 - 8);
  v194 = &v154 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_2440D1D40();
  MEMORY[0x28223BE20](v179);
  v176 = &v154 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2440D1460();
  v23 = *(v22 - 8);
  v181 = v22;
  v182 = v23;
  MEMORY[0x28223BE20](v22);
  v174 = &v154 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5000);
  v26 = *(v25 - 8);
  v183 = v25;
  v184 = v26;
  MEMORY[0x28223BE20](v25);
  v178 = &v154 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5008);
  MEMORY[0x28223BE20](v28 - 8);
  v161 = (&v154 - v29);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5010) - 8;
  MEMORY[0x28223BE20](v163);
  v162 = &v154 - v30;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5018);
  MEMORY[0x28223BE20](v169);
  v164 = &v154 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5020);
  v171 = *(v32 - 8);
  v172 = v32;
  MEMORY[0x28223BE20](v32);
  v168 = &v154 - v33;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5028);
  MEMORY[0x28223BE20](v170);
  v193 = &v154 - v34;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5030);
  v177 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v173 = &v154 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5038);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v197 = &v154 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v205 = &v154 - v39;
  v40 = sub_2440D1B10();
  v41 = *(v40 - 8);
  v42 = MEMORY[0x28223BE20](v40);
  v160 = &v154 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v45 = &v154 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5040);
  v47 = MEMORY[0x28223BE20](v46 - 8);
  v196 = &v154 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v206 = &v154 - v49;
  v201 = *(a2 + 56);
  v200 = *(a2 + 64);
  LOBYTE(v211[0]) = v201;
  *(&v211[0] + 1) = v200;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  sub_2440D2820();
  v159 = LOBYTE(v207[0]);
  v51 = *(a2 + 8);
  v165 = *a2;
  v167 = v51;
  v202 = *(a2 + 16);
  v166 = type metadata accessor for TapViewModel();
  v203 = sub_2440678A4(&qword_27EDC4DA8, type metadata accessor for TapViewModel);
  sub_2440D14A0();
  swift_getKeyPath();
  sub_2440D1740();

  v278[0] = v211[0];
  v278[1] = v211[1];
  *v279 = v211[2];
  *(&v279[1] + 1) = *(&v211[2] + 9);
  v204 = a2;
  v52 = *(a2 + 136);
  LOBYTE(v280[0]) = *(a2 + 128);
  v280[1] = v52;
  sub_2440D2840();
  v54 = *(&v207[0] + 1);
  v53 = *&v207[0];
  LOBYTE(v51) = v207[1];
  sub_243F676A0();
  sub_243F62020();
  sub_243F68750();
  sub_243F93FC0(v192, v159, v278, v53, v54, v51, v239, a4);
  sub_2440D1B00();
  (*(v41 + 16))(v160, v45, v40);
  sub_2440678A4(&qword_27EDC0148, MEMORY[0x277CE0068]);
  v55 = sub_2440D1610();
  (*(v41 + 8))(v45, v40);
  sub_2440D2AE0();
  sub_2440D1560();
  LOBYTE(v54) = sub_2440D20D0();
  sub_2440D13D0();
  LOBYTE(v207[0]) = 0;
  v211[6] = v239[6];
  v211[7] = v239[7];
  v211[8] = v239[8];
  v211[2] = v239[2];
  v211[3] = v239[3];
  v211[4] = v239[4];
  v211[5] = v239[5];
  v211[0] = v239[0];
  v211[1] = v239[1];
  *&v211[9] = v240;
  *(&v211[9] + 1) = v55;
  v211[10] = *&v279[5];
  v211[11] = *&v279[7];
  v211[12] = *&v279[9];
  *&v211[13] = 0x3FF0000000000000;
  BYTE8(v211[13]) = v54;
  *&v211[14] = v56;
  *(&v211[14] + 1) = v57;
  *&v211[15] = v58;
  *(&v211[15] + 1) = v59;
  LOBYTE(v211[16]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5048);
  sub_244067424();
  v60 = v204;
  sub_2440D2480();
  memcpy(v280, v211, 0x101uLL);
  sub_243F5EED4(v280, &qword_27EDC5048);
  v61 = sub_2440D2B00();
  v62 = v161;
  *v161 = v61;
  *(v62 + 8) = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5078);
  sub_244063090(v60, v62 + *(v64 + 44));
  sub_2440D2AE0();
  sub_2440D18E0();
  v65 = v162;
  sub_243F681C8(v62, v162, &qword_27EDC5008);
  v66 = (v65 + *(v163 + 44));
  v67 = v244;
  v68 = v246;
  v66[4] = v245;
  v66[5] = v68;
  v66[6] = v247;
  v69 = v242;
  *v66 = v241;
  v66[1] = v69;
  v66[2] = v243;
  v66[3] = v67;
  LOBYTE(v54) = sub_2440D20C0();
  LOBYTE(v211[0]) = v201;
  *(&v211[0] + 1) = v200;
  v192 = v50;
  sub_2440D2820();
  sub_2440D13D0();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v78 = v164;
  sub_243F681C8(v65, v164, &qword_27EDC5010);
  v79 = v169;
  v80 = v78 + *(v169 + 36);
  *v80 = v54;
  *(v80 + 8) = v71;
  *(v80 + 16) = v73;
  *(v80 + 24) = v75;
  *(v80 + 32) = v77;
  *(v80 + 40) = 0;
  v81 = *(v60 + 168);
  *&v207[0] = *(v60 + 160);
  *(&v207[0] + 1) = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC25C0);
  sub_2440D2840();
  v83 = *(&v211[0] + 1);
  v82 = *&v211[0];
  v84 = *&v211[1];
  v85 = sub_2440675F4();
  v86 = v168;
  sub_24408F184(v82, v83, 1, v79, v85, v84);

  sub_243F5EED4(v78, &qword_27EDC5018);
  v87 = v193;
  (*(v171 + 32))(v193, v86, v172);
  v88 = v170;
  *&v87[*(v170 + 36)] = 0x4000000000000000;
  sub_2440D1E90();
  v89 = v174;
  sub_2440D1430();
  v90 = v194;
  sub_2440601C0(v60, v194);
  v91 = (*(v180 + 80) + 16) & ~*(v180 + 80);
  v92 = swift_allocObject();
  v180 = type metadata accessor for TapView;
  sub_244066E4C(v90, v92 + v91, type metadata accessor for TapView);
  sub_2440678A4(&qword_27EDC5098, MEMORY[0x277CDD730]);
  v93 = v178;
  v94 = v181;
  sub_2440D29D0();

  (*(v182 + 8))(v89, v94);
  sub_2440D1480();
  v95 = sub_2440678EC();
  v96 = sub_243F5DD50(&qword_27EDC50A8, &qword_27EDC5000);
  v97 = v173;
  v98 = v183;
  v99 = v193;
  sub_2440D2580();
  (*(v184 + 8))(v93, v98);
  sub_243F5EED4(v99, &qword_27EDC5028);
  v100 = v194;
  sub_2440601C0(v204, v194);
  v101 = swift_allocObject() + v91;
  sub_244066E4C(v100, v101, v180);
  *&v211[0] = v88;
  *(&v211[0] + 1) = v98;
  *&v211[1] = v95;
  *(&v211[1] + 1) = v96;
  swift_getOpaqueTypeConformance2();
  v102 = v175;
  sub_2440D2500();

  (*(v177 + 8))(v97, v102);
  v103 = *sub_2440D1490();
  LOBYTE(v102) = (*(v103 + 808))();

  v104 = sub_243FA1978(v102, 0);
  v105 = MEMORY[0x277D84F90];
  if (v104)
  {
    v106 = *sub_2440D1490();
    v107 = (*(v106 + 520))();

    if (v107)
    {
      v105 = v107;
    }
  }

  LOBYTE(v211[0]) = v201;
  *(&v211[0] + 1) = v200;
  sub_2440D2820();
  v108 = v207[0];
  v109 = *sub_2440D1490();
  (*(v109 + 760))(v248);

  v110 = v249;
  if (v249)
  {
    sub_243F5EED4(v248, &qword_27EDBFF68);
  }

  sub_243F62020();
  sub_243F676A0();
  sub_243F8D10C(v105, v108, 0xD000000000000017, 0x80000002440E9E00, v110 != 0, &v232);
  v195 = *sub_243F99F1C();

  sub_2440D2AE0();
  sub_2440D18E0();
  LODWORD(v194) = sub_2440D20C0();
  sub_2440D13D0();
  v112 = v111;
  v114 = v113;
  v116 = v115;
  v118 = v117;
  v237 = 0;
  v119 = *(v204 + 104);
  v211[0] = *(v204 + 88);
  *&v211[1] = v119;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4DB0);
  sub_2440D2820();
  v120 = *(&v207[0] + 1);
  if (*(&v207[0] + 1))
  {
    v121 = *&v207[0];
    v122 = *sub_2440D1490();
    v123 = (*(v122 + 808))();

    if (sub_243FA1978(v123, 2))
    {
      LOBYTE(v211[0]) = v201;
      *(&v211[0] + 1) = v200;
      sub_2440D2820();
      v124 = v207[0];
      sub_243F676A0();
      sub_243F62020();
      sub_243FE5F44(v121, v120, v124, v211);
      sub_243FE6334();
      sub_24408F1D8();
    }
  }

  v125 = v198;
  (*(v185 + 56))(v198, 1, 1, v186);
  v126 = *sub_2440D1490();
  (*(v126 + 472))(&v250);
  v222 = v260;
  v223 = v261;
  v224 = v262;
  v218 = v256;
  v219 = v257;
  v221 = v259;
  v220 = v258;
  v214 = v252;
  v215 = v253;
  v217 = v255;
  v216 = v254;
  v213 = v251;
  v212 = v250;

  v273 = v260;
  v274 = v261;
  v275 = v262;
  v269 = v256;
  v270 = v257;
  v272 = v259;
  v271 = v258;
  v265 = v252;
  v266 = v253;
  v268 = v255;
  v267 = v254;
  v264 = v251;
  v263 = v250;
  if (sub_244067B58(&v263) == 1)
  {
    goto LABEL_14;
  }

  v276[10] = v273;
  v276[11] = v274;
  v277 = v275;
  v276[6] = v269;
  v276[7] = v270;
  v276[9] = v272;
  v276[8] = v271;
  v276[2] = v265;
  v276[3] = v266;
  v276[5] = v268;
  v276[4] = v267;
  v276[1] = v264;
  v276[0] = v263;
  v127 = *sub_2440D1490();
  v128 = (*(v127 + 808))();

  if (!sub_243FA1978(v128, 1))
  {
    sub_243F5EED4(&v250, &qword_27EDC50C0);
LABEL_14:
    v133 = v199;
    (*(v187 + 56))(v199, 1, 1, v188);
    goto LABEL_15;
  }

  LOBYTE(v207[0]) = v201;
  *(&v207[0] + 1) = v200;
  v208[10] = v222;
  v208[11] = v223;
  v209 = v224;
  v208[6] = v218;
  v208[7] = v219;
  v208[8] = v220;
  v208[9] = v221;
  v208[2] = v214;
  v208[3] = v215;
  v208[4] = v216;
  v208[5] = v217;
  v208[0] = v212;
  v208[1] = v213;
  sub_243FB07E4(v208, v211);
  sub_2440D2820();
  v129 = v211[0];
  sub_243F676A0();
  sub_243F62020();
  sub_243F676A0();
  sub_243FB23F8(v276, v129, v210);
  v130 = *sub_243F99F88();
  v207[12] = v210[12];
  v207[13] = v210[13];
  v207[14] = v210[14];
  v207[15] = v210[15];
  v207[8] = v210[8];
  v207[9] = v210[9];
  v207[10] = v210[10];
  v207[11] = v210[11];
  v207[4] = v210[4];
  v207[5] = v210[5];
  v207[6] = v210[6];
  v207[7] = v210[7];
  v207[0] = v210[0];
  v207[1] = v210[1];
  v207[2] = v210[2];
  v207[3] = v210[3];
  *&v207[16] = v130;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC50C8);
  sub_244067B70();
  v131 = v155;
  sub_2440D2480();
  sub_243F5EED4(&v250, &qword_27EDC50C0);
  memcpy(v211, v207, 0x108uLL);
  sub_243F5EED4(v211, &qword_27EDC50C8);
  v132 = v131;
  v133 = v199;
  sub_243F681C8(v132, v199, &qword_27EDC4FD8);
  (*(v187 + 56))(v133, 0, 1, v188);
LABEL_15:
  v134 = v196;
  sub_243F5F574(v206, v196, &qword_27EDC5040);
  v135 = v197;
  sub_243F5F574(v205, v197, &qword_27EDC5038);
  v136 = v189;
  sub_243F5F574(v125, v189, &qword_27EDC4FF8);
  v137 = v190;
  sub_243F5F574(v133, v190, &qword_27EDC4FE0);
  v138 = v134;
  v139 = v191;
  sub_243F5F574(v138, v191, &qword_27EDC5040);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC50B0);
  sub_243F5F574(v135, v139 + v140[12], &qword_27EDC5038);
  v141 = (v139 + v140[16]);
  v207[2] = v234;
  v207[3] = v235;
  v207[0] = v232;
  v207[1] = v233;
  v142 = v195;
  *&v207[4] = v236;
  *(&v207[4] + 1) = v195;
  v207[9] = v229;
  v207[10] = v230;
  v207[11] = v231;
  v207[5] = v225;
  v207[6] = v226;
  v207[7] = v227;
  v207[8] = v228;
  v143 = v194;
  LOBYTE(v207[12]) = v194;
  DWORD1(v207[12]) = *&v238[3];
  *(&v207[12] + 1) = *v238;
  *(&v207[12] + 1) = v112;
  *&v207[13] = v114;
  *(&v207[13] + 1) = v116;
  *&v207[14] = v118;
  BYTE8(v207[14]) = 0;
  v144 = v233;
  *v141 = v232;
  v141[1] = v144;
  v145 = v207[5];
  v141[4] = v207[4];
  v141[5] = v145;
  v146 = v207[3];
  v141[2] = v207[2];
  v141[3] = v146;
  v147 = v207[11];
  v141[10] = v207[10];
  v141[11] = v147;
  v148 = v207[9];
  v141[8] = v207[8];
  v141[9] = v148;
  v149 = v207[7];
  v141[6] = v207[6];
  v141[7] = v149;
  v150 = *(&v207[13] + 9);
  v151 = v207[13];
  v141[12] = v207[12];
  v141[13] = v151;
  *(v141 + 217) = v150;
  v152 = v139 + v140[20];
  *v152 = 0;
  *(v152 + 8) = 1;
  sub_243F5F574(v136, v139 + v140[24], &qword_27EDC4FF8);
  sub_243F5F574(v137, v139 + v140[28], &qword_27EDC4FE0);
  sub_243F5F574(v207, v211, &qword_27EDC50B8);
  sub_243F5EED4(v199, &qword_27EDC4FE0);
  sub_243F5EED4(v198, &qword_27EDC4FF8);
  sub_243F5EED4(v205, &qword_27EDC5038);
  sub_243F5EED4(v206, &qword_27EDC5040);
  sub_243F5EED4(v137, &qword_27EDC4FE0);
  sub_243F5EED4(v136, &qword_27EDC4FF8);
  v211[2] = v234;
  v211[3] = v235;
  v211[1] = v233;
  v211[0] = v232;
  *&v211[4] = v236;
  *(&v211[4] + 1) = v142;
  v211[9] = v229;
  v211[10] = v230;
  v211[11] = v231;
  v211[5] = v225;
  v211[6] = v226;
  v211[8] = v228;
  v211[7] = v227;
  LOBYTE(v211[12]) = v143;
  DWORD1(v211[12]) = *&v238[3];
  *(&v211[12] + 1) = *v238;
  *(&v211[12] + 1) = v112;
  *&v211[13] = v114;
  *(&v211[13] + 1) = v116;
  *&v211[14] = v118;
  BYTE8(v211[14]) = 0;
  sub_243F5EED4(v211, &qword_27EDC50B8);
  sub_243F5EED4(v197, &qword_27EDC5038);
  return sub_243F5EED4(v196, &qword_27EDC5040);
}

double sub_244062F60@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 568))(&v5);
  v3 = v6[0];
  *a2 = v5;
  a2[1] = v3;
  result = *(v6 + 9);
  *(a2 + 25) = *(v6 + 9);
  return result;
}

uint64_t sub_244062FCC(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v6 = *a1;
  v7[0] = v2;
  *(v7 + 9) = *(a1 + 25);
  v8 = v6;
  v9 = v2;
  v10 = *(a1 + 4);
  v3 = *(**a2 + 576);
  sub_243F5F574(&v8, v5, &qword_27EDC06A0);
  sub_243F5F574(&v9, v5, &qword_27EDC3378);
  return v3(&v6);
}

uint64_t sub_244063090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = type metadata accessor for TapView();
  v42 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = v4;
  v44 = &v36[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC50E8);
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x28223BE20](v5);
  v46 = &v36[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC50F0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v45 = &v36[-v9];
  v49 = a1;
  type metadata accessor for TapViewModel();
  sub_2440678A4(&qword_27EDC4DA8, type metadata accessor for TapViewModel);
  v10 = *sub_2440D1490();
  (*(v10 + 472))(v54);

  v68 = v54[10];
  v69 = v54[11];
  v70 = v55;
  v64 = v54[6];
  v65 = v54[7];
  v67 = v54[9];
  v66 = v54[8];
  v60 = v54[2];
  v61 = v54[3];
  v63 = v54[5];
  v62 = v54[4];
  v58 = v54[0];
  v59 = v54[1];
  if (sub_244067B58(&v58) == 1)
  {
    return (*(v8 + 56))(v50, 1, 1, v7);
  }

  v40 = v8;
  v41 = v7;
  v71[10] = v68;
  v71[11] = v69;
  v72 = v70;
  v71[6] = v64;
  v71[7] = v65;
  v71[9] = v67;
  v71[8] = v66;
  v71[2] = v60;
  v71[3] = v61;
  v71[5] = v63;
  v71[4] = v62;
  v71[1] = v59;
  v71[0] = v58;
  v12 = *sub_2440D1490();
  v13 = (*(v12 + 904))();
  v38 = v14;
  v39 = v13;

  v15 = *sub_2440D1490();
  (*(v15 + 760))(v56);

  v16 = v57;
  if (v57)
  {
    sub_243F5EED4(v56, &qword_27EDBFF68);
  }

  v37 = v16 != 0;
  v17 = v49;
  v18 = *(v49 + 64);
  LOBYTE(v51[0]) = *(v49 + 56);
  v51[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  sub_2440D2840();
  v19 = v53[0];
  v20 = v53[1];
  v21 = v53[2];
  sub_2440D14A0();
  swift_getKeyPath();
  sub_2440D1740();

  v22 = v51[36];
  v23 = v51[37];
  v24 = v52;
  sub_243FB07E4(v71, v53);
  sub_243FFBAD8(v71, v39, v38, v37, v19, v20, v21, v22, v51, v23, v24);
  v25 = v44;
  sub_2440601C0(v17, v44);
  v26 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v27 = swift_allocObject();
  sub_244066E4C(v25, v27 + v26, type metadata accessor for TapView);
  v28 = sub_243FFDD84();
  v29 = v46;
  sub_2440D23D0();

  memcpy(v53, v51, sizeof(v53));
  sub_243FFDDD8(v53);
  sub_2440601C0(v49, v25);
  v30 = swift_allocObject();
  sub_244066E4C(v25, v30 + v26, type metadata accessor for TapView);
  v51[0] = &type metadata for TapCenterView;
  v51[1] = v28;
  swift_getOpaqueTypeConformance2();
  v31 = v45;
  v32 = v48;
  sub_2440D2460();

  sub_243F5EED4(v54, &qword_27EDC50C0);
  (*(v47 + 8))(v29, v32);
  v34 = v40;
  v33 = v41;
  v35 = v50;
  (*(v40 + 32))(v50, v31, v41);
  return (*(v34 + 56))(v35, 0, 1, v33);
}

uint64_t sub_244063794@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 808))();
  *a2 = result;
  return result;
}

uint64_t sub_244063838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v37 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4FC8);
  v35 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v6 = (&v33 - v5);
  v7 = type metadata accessor for TapView();
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1E70);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  type metadata accessor for TapViewModel();
  sub_2440678A4(&qword_27EDC4DA8, type metadata accessor for TapViewModel);
  v15 = *sub_2440D1490();
  v16 = (*(v15 + 664))();

  if (v16)
  {
    v17 = sub_2440707F0();
    swift_beginAccess();
    if (a3 - *v17 < 0.0)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = a3 - *v17;
    }

    sub_2440601C0(a1, &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v20 = swift_allocObject();
    v21 = sub_244066E4C(&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for TapView);
    v22 = sub_243FBB128(v21);
    v23 = sub_243F795D0();
    v24 = sub_243FB9098();
    sub_243FB90D8(0x6B72616D78, 0xE500000000000000, v22, v23, 0xD000000000000011, 0x80000002440EE230, sub_244067348, v20, v40, v24);
    v25 = sub_243F68750();
    v38 = sub_2440579C8(v25 & 1, 0x435F4E4F54545542);
    v39 = v26;
    sub_243FBC9E4();
    sub_243F4EF64();
    sub_2440D2440();

    v42[2] = v40[2];
    v42[3] = v40[3];
    v43 = v41;
    v42[0] = v40[0];
    v42[1] = v40[1];
    sub_243FBCA38(v42);
    sub_243F5F574(v14, v12, &qword_27EDC1E70);
    *v6 = v18;
    *(v6 + 8) = 0;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4FD0);
    sub_243F5F574(v12, v6 + *(v27 + 48), &qword_27EDC1E70);
    sub_243F5EED4(v14, &qword_27EDC1E70);
    sub_243F5EED4(v12, &qword_27EDC1E70);
    v28 = v37;
    sub_243F681C8(v6, v37, &qword_27EDC4FC8);
    return (*(v35 + 56))(v28, 0, 1, v36);
  }

  else
  {
    v30 = *(v35 + 56);
    v31 = v37;
    v32 = v36;

    return v30(v31, 1, 1, v32);
  }
}

void sub_244063D68(uint64_t a1)
{
  v2 = type metadata accessor for BottomErrorView();
  MEMORY[0x28223BE20](v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F80);
  v6 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  sub_243FF70E0(a1, v10);
  v7 = sub_244030640();
  sub_24403067C(a1, v7, v9, v8 & 1, v4);
  sub_2440678A4(&qword_27EDC2F88, type metadata accessor for BottomErrorView);
  sub_24408F1D8();
}

uint64_t sub_244063EDC()
{
  sub_243FF7184(v5);
  v6 = sub_2440D20D0();
  sub_2440707B4();
  sub_2440D13D0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F90) + 36);
  *v15 = v6;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  v16 = sub_2440D20A0();
  sub_2440D13D0();
  v17 = v3 + *(v4 + 44);
  *v17 = v16;
  *(v17 + 8) = v18;
  *(v17 + 16) = v19;
  *(v17 + 24) = v20;
  *(v17 + 32) = v21;
  *(v17 + 40) = 0;
  sub_243F5F574(v3, v2, v1);
  *v0 = 0;
  *(v0 + 8) = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F98);
  sub_243F5F574(v2, v0 + *(v22 + 48), v1);
  sub_243F5EED4(v3, v1);
  return sub_243F5EED4(v2, v1);
}

uint64_t sub_244063FF4(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16[-v5];
  v7 = *a1;
  v8 = sub_243F4DF28();
  sub_243F5F574(v8, v6, &qword_27EDC0A50);
  v9 = sub_2440D11E0();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    sub_243F5EED4(v6, &qword_27EDC0A50);
  }

  else
  {
    v11 = sub_2440D11C0();
    v12 = sub_2440D3460();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_243F48000, v11, v12, "Did receive update from orientation", v13, 2u);
      MEMORY[0x245D58570](v13, -1, -1);
    }

    (*(v10 + 8))(v6, v9);
  }

  v14 = *(a2 + 64);
  v16[16] = *(a2 + 56);
  v17 = v14;
  v16[15] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  return sub_2440D2830();
}

uint64_t sub_2440641D8(uint64_t a1, char *a2)
{
  v4 = *(type metadata accessor for TapView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_244063FF4(a2, v5);
}

unint64_t sub_244064248()
{
  result = qword_27EDC4DE8;
  if (!qword_27EDC4DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4DE0);
    sub_243F5DD50(&qword_27EDC4DF0, &qword_27EDC4DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4DE8);
  }

  return result;
}

uint64_t sub_244064300(_BYTE *a1)
{
  if (*a1 == 1)
  {
    v1 = sub_2440D2B70();
  }

  else
  {
    v1 = sub_2440D2BD0();
  }

  MEMORY[0x28223BE20](v1);
  sub_2440D16E0();
}

uint64_t sub_244064408()
{
  sub_24400ECA4();
  sub_2440D31F0();
  v0 = sub_2440D31F0();
  if (v2 == v3)
  {
    MEMORY[0x28223BE20](v0);
    sub_2440D2BA0();
    sub_2440D16E0();
  }

  else
  {
    sub_2440D31F0();
    return sub_2440D31F0();
  }
}

uint64_t sub_2440645C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(type metadata accessor for TapView() - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a2, v6);
}

uint64_t sub_244064648(uint64_t result)
{
  if (*(*result + 16))
  {
    sub_2440CBE68();
    v1 = swift_beginAccess();
    MEMORY[0x28223BE20](v1);

    sub_2440D16E0();
  }

  return result;
}

uint64_t sub_244064710(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TapView();

  return sub_244064648(a2);
}

unint64_t sub_244064780()
{
  result = qword_27EDC4E00;
  if (!qword_27EDC4E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EDC4B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4E00);
  }

  return result;
}

unsigned __int8 *sub_2440647FC(unsigned __int8 *result, _BYTE *a2)
{
  if (*result != *a2)
  {
    if (*a2)
    {
      MEMORY[0x28223BE20](result);
      sub_2440D2BA0();
      sub_2440D16E0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE8);
      return sub_2440D2950();
    }
  }

  return result;
}

unsigned __int8 *sub_2440648EC(unsigned __int8 *a1, _BYTE *a2)
{
  type metadata accessor for TapView();

  return sub_2440647FC(a1, a2);
}

uint64_t sub_24406496C(uint64_t a1, char *a2)
{
  type metadata accessor for TapView();
  v3 = *a2;
  sub_243FFD4A8();
  sub_2440D2F50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  sub_2440D2830();
  if (!sub_243FA1978(v3, 1))
  {
    sub_243FA1978(v3, 2);
  }

  return sub_2440D2830();
}

uint64_t sub_244064A98()
{
  type metadata accessor for TapView();
  type metadata accessor for TapViewModel();
  sub_2440678A4(&qword_27EDC4DA8, type metadata accessor for TapViewModel);
  v0 = *sub_2440D1490();
  v1 = (*(v0 + 376))();

  if (v1)
  {
    v3 = *sub_2440D1490();
    (*(v3 + 384))(0);

    v4 = *sub_2440D1490();
    (*(v4 + 1592))();
  }

  return result;
}

uint64_t sub_244064C98(uint64_t a1)
{
  v29 = sub_2440D2C80();
  v32 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2440D2CA0();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v27 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TapView();
  v24 = *(v5 - 8);
  v6 = *(v24 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_2440D2CD0();
  v8 = *(v7 - 8);
  v25 = v7;
  v26 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  type metadata accessor for TapViewModel();
  sub_2440678A4(&qword_27EDC4DA8, type metadata accessor for TapViewModel);
  v14 = *sub_2440D1490();
  (*(v14 + 1520))();

  sub_243F5DB84();
  v15 = sub_2440D3530();
  sub_2440D2CC0();
  sub_2440D2D20();
  v26 = *(v26 + 8);
  (v26)(v11, v7);
  sub_2440601C0(a1, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v17 = swift_allocObject();
  sub_244066E4C(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for TapView);
  aBlock[4] = sub_2440668DC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_28;
  v18 = _Block_copy(aBlock);

  v19 = v27;
  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2440678A4(&qword_27EDC0510, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  v21 = v28;
  v20 = v29;
  sub_2440D3710();
  MEMORY[0x245D57400](v13, v19, v21, v18);
  _Block_release(v18);

  (*(v32 + 8))(v21, v20);
  (*(v30 + 8))(v19, v31);
  return (v26)(v13, v25);
}

uint64_t sub_2440651BC()
{
  v1 = *(type metadata accessor for TapView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_244064C98(v2);
}

uint64_t sub_244065238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  sub_2440D2810();
  *(a3 + 24) = v11;
  sub_2440D2810();
  *(a3 + 40) = v11;
  sub_2440D2810();
  *(a3 + 56) = v11;
  *(a3 + 64) = *(&v11 + 1);
  sub_2440D2810();
  *(a3 + 72) = v11;
  *(a3 + 80) = *(&v11 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC06A0);
  sub_2440D2810();
  *(a3 + 88) = v11;
  *(a3 + 104) = v12;
  sub_2440D2810();
  *(a3 + 112) = v11;
  *(a3 + 120) = *(&v11 + 1);
  sub_2440D2810();
  *(a3 + 128) = v11;
  *(a3 + 136) = *(&v11 + 1);
  sub_2440D2810();
  *(a3 + 144) = v11;
  *(a3 + 152) = *(&v11 + 1);
  sub_2440D2810();
  *(a3 + 160) = v11;
  sub_2440D2810();
  *(a3 + 176) = v11;
  *(a3 + 184) = *(&v11 + 1);
  *(a3 + 192) = a5;
  *(a3 + 200) = a6;
  *(a3 + 208) = a7;
  v9 = type metadata accessor for TapView();
  return sub_243F681C8(a8, a3 + *(v9 + 64), &qword_27EDBFFE0);
}

uint64_t sub_2440654A8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4E70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2440D66C0;
  sub_2440D2680();
  sub_2440D26B0();

  *(v2 + 32) = sub_2440D2A30();
  *(v2 + 40) = v3;
  sub_2440D2680();
  sub_2440D26B0();

  *(v2 + 48) = sub_2440D2A30();
  *(v2 + 56) = v4;
  sub_2440D2A40();
  sub_2440D2C30();
  sub_2440D2C20();
  sub_2440D1700();
  v5 = v49;
  v6 = v50;
  v7 = v51;
  sub_2440D2B00();
  sub_2440D18E0();
  *&v48[54] = v55;
  *&v48[70] = v56;
  *&v48[86] = v57;
  *&v48[102] = v58;
  *&v48[6] = v52;
  *&v48[22] = v53;
  *&v48[38] = v54;
  v8 = sub_2440D20B0();
  v22[0] = v49;
  v22[1] = v50;
  *v23 = v51;
  *&v23[8] = 256;
  v9 = *&v48[48];
  *&v23[74] = *&v48[64];
  v10 = *&v48[64];
  *&v23[90] = *&v48[80];
  v11 = *&v48[80];
  *&v23[106] = *&v48[96];
  *&v23[120] = *(&v58 + 1);
  *&v23[10] = *v48;
  *&v23[26] = *&v48[16];
  v12 = *v48;
  v13 = *&v48[16];
  *&v23[42] = *&v48[32];
  v14 = *&v48[32];
  *&v23[58] = *&v48[48];
  v33 = *&v23[96];
  v34 = *&v23[112];
  v29 = *&v23[32];
  v30 = *&v23[48];
  v31 = *&v23[64];
  v32 = *&v23[80];
  v25 = v49;
  v26 = v50;
  v27 = *v23;
  v28 = *&v23[16];
  v15 = *&v23[112];
  *(a1 + 128) = *&v23[96];
  *(a1 + 144) = v15;
  v16 = v30;
  *(a1 + 64) = v29;
  *(a1 + 80) = v16;
  v17 = v32;
  *(a1 + 96) = v31;
  *(a1 + 112) = v17;
  v18 = v26;
  *a1 = v25;
  *(a1 + 16) = v18;
  v19 = v28;
  *(a1 + 32) = v27;
  *(a1 + 48) = v19;
  v36[1] = *(&v5 + 1);
  v37 = v6;
  v38 = v7;
  v44 = v10;
  v24 = v8;
  LOBYTE(v35) = v8;
  v21[168] = 1;
  *(a1 + 160) = v35;
  *(a1 + 168) = 0;
  *(a1 + 176) = 1;
  v36[0] = v5;
  v39 = 256;
  v45 = v11;
  *v46 = *&v48[96];
  *&v46[14] = *&v48[110];
  v40 = v12;
  v41 = v13;
  v42 = v14;
  v43 = v9;
  v47 = v8;
  sub_243F5F574(v22, v21, &qword_27EDC4E80);
  return sub_243F5EED4(v36, &qword_27EDC4E80);
}

double sub_24406583C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2440D1C20();
  v24 = 1;
  sub_2440654A8(&v11);
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v37[8] = v19;
  v37[9] = v20;
  v37[10] = v21;
  v37[4] = v15;
  v37[5] = v16;
  v37[6] = v17;
  v37[7] = v18;
  v37[0] = v11;
  v37[1] = v12;
  v36 = v22;
  v38 = v22;
  v37[2] = v13;
  v37[3] = v14;
  sub_243F5F574(&v25, &v10, &qword_27EDC4E18);
  sub_243F5EED4(v37, &qword_27EDC4E18);
  *&v23[135] = v33;
  *&v23[151] = v34;
  *&v23[167] = v35;
  *&v23[71] = v29;
  *&v23[87] = v30;
  *&v23[103] = v31;
  *&v23[119] = v32;
  *&v23[7] = v25;
  *&v23[23] = v26;
  *&v23[39] = v27;
  *&v23[55] = v28;
  v3 = *&v23[144];
  *(a1 + 145) = *&v23[128];
  *(a1 + 161) = v3;
  *(a1 + 177) = *&v23[160];
  v4 = *&v23[80];
  *(a1 + 81) = *&v23[64];
  *(a1 + 97) = v4;
  v5 = *&v23[112];
  *(a1 + 113) = *&v23[96];
  *(a1 + 129) = v5;
  v6 = *&v23[16];
  *(a1 + 17) = *v23;
  *(a1 + 33) = v6;
  result = *&v23[32];
  v8 = *&v23[48];
  *(a1 + 49) = *&v23[32];
  v23[183] = v36;
  v9 = v24;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 193) = *&v23[176];
  *(a1 + 65) = v8;
  return result;
}

uint64_t sub_2440659EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4E70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2440D66C0;
  sub_2440D2680();
  sub_2440D26B0();

  *(v4 + 32) = sub_2440D2A30();
  *(v4 + 40) = v5;
  sub_2440D2680();
  sub_2440D26B0();

  *(v4 + 48) = sub_2440D2A30();
  *(v4 + 56) = v6;
  sub_2440D2A40();
  sub_2440D2C30();
  sub_2440D2C20();
  sub_2440D1700();
  v7 = v59;
  v8 = v60;
  v9 = v61;
  v10 = v62;
  v11 = v63;
  v12 = sub_2440D2B80();
  v34 = *(a1 + 16);
  LOBYTE(v35) = *(a1 + 32);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE8);
  MEMORY[0x245D56840](v46);
  v14 = v46[0];
  v34 = *(a1 + 16);
  LOBYTE(v35) = *(a1 + 32);
  MEMORY[0x245D56840](v46, v13);
  sub_2440D2B00();
  sub_2440D18E0();
  *&v58[55] = v67;
  *&v58[71] = v68;
  *&v58[87] = v69;
  *&v58[103] = v70;
  *&v58[7] = v64;
  *&v58[23] = v65;
  *&v58[39] = v66;
  v15 = sub_2440D20B0();
  *&v29 = v7;
  *(&v29 + 1) = v8;
  *&v30 = v9;
  *(&v30 + 1) = v10;
  *&v31 = v11;
  WORD4(v31) = 256;
  *v32 = v12;
  v32[8] = v14;
  v16 = *&v58[48];
  *&v32[73] = *&v58[64];
  v17 = *&v58[64];
  *&v32[89] = *&v58[80];
  v18 = *&v58[80];
  *&v32[105] = *&v58[96];
  *&v32[120] = *&v58[111];
  *&v32[9] = *v58;
  *&v32[25] = *&v58[16];
  v19 = *v58;
  v20 = *&v58[16];
  *&v32[41] = *&v58[32];
  v21 = *&v58[32];
  *&v32[57] = *&v58[48];
  v42 = *&v32[80];
  v43 = *&v32[96];
  v44 = *&v32[112];
  v38 = *&v32[16];
  v39 = *&v32[32];
  v40 = *&v32[48];
  v41 = *&v32[64];
  v34 = v29;
  v35 = v30;
  v36 = v31;
  v37 = *v32;
  v22 = *&v32[96];
  *(a2 + 128) = *&v32[80];
  *(a2 + 144) = v22;
  *(a2 + 160) = v44;
  v23 = v39;
  *(a2 + 64) = v38;
  *(a2 + 80) = v23;
  v24 = v41;
  *(a2 + 96) = v40;
  *(a2 + 112) = v24;
  v25 = v35;
  *a2 = v34;
  *(a2 + 16) = v25;
  v26 = v37;
  *(a2 + 32) = v36;
  *(a2 + 48) = v26;
  v46[1] = v8;
  v46[2] = v9;
  v46[3] = v10;
  v46[4] = v11;
  v54 = v17;
  v33 = v15;
  LOBYTE(v45) = v15;
  v28[184] = 1;
  *(a2 + 176) = v45;
  *(a2 + 184) = 0;
  *(a2 + 192) = 1;
  v46[0] = v7;
  v47 = 256;
  v48 = v12;
  v49 = v14;
  v55 = v18;
  *v56 = *&v58[96];
  *&v56[15] = *&v58[111];
  v50 = v19;
  v51 = v20;
  v52 = v21;
  v53 = v16;
  v57 = v15;
  sub_243F5F574(&v29, v28, &qword_27EDC4E78);
  return sub_243F5EED4(v46, &qword_27EDC4E78);
}

double sub_244065E70@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2440D1C20();
  v28 = 1;
  sub_2440659EC(v2, &v14);
  v39 = v24;
  v40 = v25;
  v35 = v20;
  v36 = v21;
  v37 = v22;
  v38 = v23;
  v31 = v16;
  v32 = v17;
  v33 = v18;
  v34 = v19;
  v29 = v14;
  v30 = v15;
  v42[10] = v24;
  v42[11] = v25;
  v42[6] = v20;
  v42[7] = v21;
  v42[8] = v22;
  v42[9] = v23;
  v42[2] = v16;
  v42[3] = v17;
  v42[4] = v18;
  v42[5] = v19;
  v41 = v26;
  v43 = v26;
  v42[0] = v14;
  v42[1] = v15;
  sub_243F5F574(&v29, &v13, &qword_27EDC4E20);
  sub_243F5EED4(v42, &qword_27EDC4E20);
  *&v27[151] = v38;
  *&v27[167] = v39;
  *&v27[183] = v40;
  *&v27[87] = v34;
  *&v27[103] = v35;
  *&v27[119] = v36;
  *&v27[135] = v37;
  *&v27[23] = v30;
  *&v27[39] = v31;
  *&v27[55] = v32;
  *&v27[71] = v33;
  *&v27[7] = v29;
  v5 = *&v27[128];
  *(a1 + 161) = *&v27[144];
  v6 = *&v27[176];
  *(a1 + 177) = *&v27[160];
  *(a1 + 193) = v6;
  v7 = *&v27[64];
  *(a1 + 97) = *&v27[80];
  v8 = *&v27[112];
  *(a1 + 113) = *&v27[96];
  *(a1 + 129) = v8;
  *(a1 + 145) = v5;
  v9 = *v27;
  *(a1 + 33) = *&v27[16];
  result = *&v27[32];
  v11 = *&v27[48];
  *(a1 + 49) = *&v27[32];
  *(a1 + 65) = v11;
  *(a1 + 81) = v7;
  v27[199] = v41;
  v12 = v28;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v12;
  *(a1 + 209) = *&v27[192];
  *(a1 + 17) = v9;
  return result;
}

uint64_t sub_244066038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 200);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_244066108(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 200) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2440661B8()
{
  sub_24406638C();
  if (v0 <= 0x3F)
  {
    sub_244066484(319, &qword_27EDC0278, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_244066484(319, &qword_27EDC0280, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_244066420();
        if (v3 <= 0x3F)
        {
          sub_244066484(319, &qword_27EDC4E38, &type metadata for CenterState, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_244066484(319, &qword_27EDC2640, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_244066484(319, &qword_27EDC0118, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
              if (v6 <= 0x3F)
              {
                sub_243F67D28();
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

void sub_24406638C()
{
  if (!qword_27EDC4E28)
  {
    type metadata accessor for TapViewModel();
    sub_2440678A4(&qword_27EDC4DA8, type metadata accessor for TapViewModel);
    v0 = sub_2440D14B0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDC4E28);
    }
  }
}

void sub_244066420()
{
  if (!qword_27EDC4E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC06A0);
    v0 = sub_2440D2850();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDC4E30);
    }
  }
}

void sub_244066484(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2440664F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_244066540(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_244066598()
{
  result = qword_27EDC4E40;
  if (!qword_27EDC4E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4E10);
    sub_244066624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4E40);
  }

  return result;
}

unint64_t sub_244066624()
{
  result = qword_27EDC4E48;
  if (!qword_27EDC4E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4E08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4DD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4DD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4DC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EDC4B00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4DC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4DB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4DE0);
    sub_244064248();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24401B0B0();
    swift_getOpaqueTypeConformance2();
    sub_244064780();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_243FFD4A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4E48);
  }

  return result;
}

uint64_t sub_2440668DC()
{
  type metadata accessor for TapView();
  type metadata accessor for TapViewModel();
  sub_2440678A4(&qword_27EDC4DA8, type metadata accessor for TapViewModel);
  v0 = *sub_2440D1490();
  (*(v0 + 384))(1);
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_244066A08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE8);
  sub_2440D2950();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  return sub_2440D2830();
}

uint64_t sub_244066AB8()
{
  if (*(*(v0 + 24) + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4DB0);
    return sub_2440D2830();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_244066CAC()
{
  type metadata accessor for TapView();
  type metadata accessor for TapViewModel();
  sub_2440678A4(&qword_27EDC4DA8, type metadata accessor for TapViewModel);
  v0 = *sub_2440D1490();
  (*(v0 + 1592))();
}

uint64_t sub_244066DBC()
{
  type metadata accessor for TapView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);
  return sub_2440D1E50();
}

uint64_t sub_244066E4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_244066EB4()
{
  result = qword_27EDC4F58;
  if (!qword_27EDC4F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4F20);
    sub_243F5DD50(&qword_27EDC4F60, &qword_27EDC4F68);
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4F58);
  }

  return result;
}

unint64_t sub_244066F98()
{
  result = qword_27EDC4F70;
  if (!qword_27EDC4F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4F28);
    sub_244066EB4();
    sub_2440678A4(&qword_27EDC0048, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4F70);
  }

  return result;
}

unint64_t sub_244067054()
{
  result = qword_27EDC4F78;
  if (!qword_27EDC4F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4F38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4F28);
    sub_244066F98();
    swift_getOpaqueTypeConformance2();
    sub_2440678A4(&qword_27EDC0048, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4F78);
  }

  return result;
}

unint64_t sub_24406714C()
{
  result = qword_27EDC4F98;
  if (!qword_27EDC4F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4F10);
    sub_244067204();
    sub_243F5DD50(&qword_27EDC0D38, &qword_27EDC0D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4F98);
  }

  return result;
}

unint64_t sub_244067204()
{
  result = qword_27EDC4FA0;
  if (!qword_27EDC4FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4F90);
    sub_244067290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4FA0);
  }

  return result;
}

unint64_t sub_244067290()
{
  result = qword_27EDC4FA8;
  if (!qword_27EDC4FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4F88);
    sub_243F5DD50(&qword_27EDC4FB0, &qword_27EDC4FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4FA8);
  }

  return result;
}

uint64_t sub_244067348()
{
  type metadata accessor for TapView();
  type metadata accessor for TapViewModel();
  sub_2440678A4(&qword_27EDC4DA8, type metadata accessor for TapViewModel);
  sub_2440D1490();
  sub_244095F94();
}

unint64_t sub_244067424()
{
  result = qword_27EDC5050;
  if (!qword_27EDC5050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5048);
    sub_2440674B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5050);
  }

  return result;
}

unint64_t sub_2440674B0()
{
  result = qword_27EDC5058;
  if (!qword_27EDC5058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5060);
    sub_244067568();
    sub_243F5DD50(&qword_27EDC0D38, &qword_27EDC0D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5058);
  }

  return result;
}

unint64_t sub_244067568()
{
  result = qword_27EDC5068;
  if (!qword_27EDC5068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5070);
    sub_24401E468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5068);
  }

  return result;
}

unint64_t sub_2440675F4()
{
  result = qword_27EDC5080;
  if (!qword_27EDC5080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5018);
    sub_244067680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5080);
  }

  return result;
}

unint64_t sub_244067680()
{
  result = qword_27EDC5088;
  if (!qword_27EDC5088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5010);
    sub_243F5DD50(&qword_27EDC5090, &qword_27EDC5008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5088);
  }

  return result;
}

uint64_t sub_244067738()
{
  type metadata accessor for TapView();
  sub_2440D1440();
  v1 = v0;
  if (v0 > 2.0 || (result = sub_2440D1440(), v3 < 2.0))
  {
    type metadata accessor for TapViewModel();
    sub_2440678A4(&qword_27EDC4DA8, type metadata accessor for TapViewModel);
    v4 = *sub_2440D1490();
    (*(v4 + 1664))(v1 > 2.0);
  }

  return result;
}

uint64_t sub_2440678A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2440678EC()
{
  result = qword_27EDC50A0;
  if (!qword_27EDC50A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5028);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5018);
    sub_2440675F4();
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC0D38, &qword_27EDC0D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC50A0);
  }

  return result;
}

uint64_t sub_2440679E0()
{
  type metadata accessor for TapView();
  v0 = sub_2440D2120();
  v1 = sub_2440D2120();
  if (v0 == v1 || (v2 = sub_2440D2120(), result = sub_2440D2120(), v2 == result))
  {
    type metadata accessor for TapViewModel();
    sub_2440678A4(&qword_27EDC4DA8, type metadata accessor for TapViewModel);
    v4 = *sub_2440D1490();
    (*(v4 + 1664))(v0 == v1);
  }

  return result;
}

uint64_t sub_244067B58(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_244067B70()
{
  result = qword_27EDC50D0;
  if (!qword_27EDC50D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC50C8);
    sub_244067C28();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC50D0);
  }

  return result;
}

unint64_t sub_244067C28()
{
  result = qword_27EDC50D8;
  if (!qword_27EDC50D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC50D8);
  }

  return result;
}

unint64_t sub_244067C7C()
{
  result = qword_27EDC50E0;
  if (!qword_27EDC50E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4FE8);
    sub_243FE6334();
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC50E0);
  }

  return result;
}

uint64_t objectdestroyTm_24()
{
  v1 = (type metadata accessor for TapView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2440191EC();

  v3 = v2 + v1[18];
  v4 = sub_2440D1F00();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);

  return swift_deallocObject();
}

uint64_t sub_244067F1C()
{
  type metadata accessor for TapView();
  type metadata accessor for TapViewModel();
  sub_2440678A4(&qword_27EDC4DA8, type metadata accessor for TapViewModel);
  v0 = *sub_2440D1490();
  v1 = (*(v0 + 1240))();

  (*(*v1 + 272))(v2);
}

uint64_t sub_2440680B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5100);
  MEMORY[0x28223BE20](v3);
  v5 = (&v39 - v4);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5108);
  v6 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v8 = &v39 - v7;
  *v5 = sub_2440D2B00();
  v5[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5110);
  sub_244068538(v1, v5 + *(v10 + 44));
  KeyPath = swift_getKeyPath();
  v12 = (v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5118) + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2EF0) + 28);
  v14 = *MEMORY[0x277CDFA88];
  v15 = sub_2440D17B0();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = KeyPath;
  v16 = sub_2440D2BE0();
  v43 = *(v2 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0);
  sub_2440D2820();
  LOBYTE(v14) = v42[0];
  v17 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5120) + 36);
  *v17 = v16;
  v17[8] = v14;
  v18 = swift_allocObject();
  v19 = *(v2 + 48);
  *(v18 + 48) = *(v2 + 32);
  *(v18 + 64) = v19;
  *(v18 + 144) = *(v2 + 128);
  v20 = *(v2 + 112);
  *(v18 + 112) = *(v2 + 96);
  *(v18 + 128) = v20;
  v21 = *(v2 + 80);
  *(v18 + 80) = *(v2 + 64);
  *(v18 + 96) = v21;
  v22 = *(v2 + 16);
  *(v18 + 16) = *v2;
  *(v18 + 32) = v22;
  v23 = (v5 + *(v3 + 36));
  *v23 = sub_24406966C;
  v23[1] = v18;
  v23[2] = 0;
  v23[3] = 0;
  v42[0] = *v2;
  v24 = swift_allocObject();
  v25 = *(v2 + 112);
  *(v24 + 112) = *(v2 + 96);
  *(v24 + 128) = v25;
  *(v24 + 144) = *(v2 + 128);
  v26 = *(v2 + 48);
  *(v24 + 48) = *(v2 + 32);
  *(v24 + 64) = v26;
  v27 = *(v2 + 80);
  *(v24 + 80) = *(v2 + 64);
  *(v24 + 96) = v27;
  v28 = *(v2 + 16);
  *(v24 + 16) = *v2;
  *(v24 + 32) = v28;
  sub_2440698FC(v2, &v43);
  sub_2440698FC(v2, &v43);
  v29 = sub_244069934();
  v30 = sub_243F686B4();
  sub_2440D25D0();

  sub_243F5EED4(v5, &qword_27EDC5100);
  v43 = *(v2 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
  sub_2440D2820();
  v31 = swift_allocObject();
  v32 = *(v2 + 112);
  *(v31 + 112) = *(v2 + 96);
  *(v31 + 128) = v32;
  *(v31 + 144) = *(v2 + 128);
  v33 = *(v2 + 48);
  *(v31 + 48) = *(v2 + 32);
  *(v31 + 64) = v33;
  v34 = *(v2 + 80);
  *(v31 + 80) = *(v2 + 64);
  *(v31 + 96) = v34;
  v35 = *(v2 + 16);
  *(v31 + 16) = *v2;
  *(v31 + 32) = v35;
  sub_2440698FC(v2, &v43);
  *&v43 = v3;
  *(&v43 + 1) = &type metadata for CheckmarkState;
  v44 = v29;
  v45 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v40;
  sub_2440CC638(v42, sub_24406A0A0, v31, v40, MEMORY[0x277D839F8], OpaqueTypeConformance2, v41);

  return (*(v6 + 8))(v8, v37);
}

uint64_t sub_244068538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v4 = COERCE_DOUBLE(sub_2440D2770());
  v74 = *(v4 - 8);
  v75 = *&v4;
  MEMORY[0x28223BE20](v4);
  v73 = &v70[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5230);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v84 = &v70[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v89 = &v70[-v9];
  v165 = *(a1 + 104);
  v152 = *(a1 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
  sub_2440D2820();
  v85 = v104;
  v152 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05E8);
  sub_2440D2820();
  v92 = v104;
  v10 = 0.0;
  sub_2440D14C0();
  v11 = sub_2440D2B00();
  v90 = v12;
  v91 = v11;
  v152 = *(a1 + 72);
  sub_2440D2820();
  v13 = *&v104;
  sub_2440D2C40();
  v82 = v15;
  v83 = v14;
  v88 = sub_2440D2BA0();
  v152 = v165;
  sub_2440D2820();
  v81 = v104;
  v16 = swift_allocObject();
  v17 = *(a1 + 112);
  *(v16 + 112) = *(a1 + 96);
  *(v16 + 128) = v17;
  *(v16 + 144) = *(a1 + 128);
  v18 = *(a1 + 48);
  *(v16 + 48) = *(a1 + 32);
  *(v16 + 64) = v18;
  v19 = *(a1 + 80);
  *(v16 + 80) = *(a1 + 64);
  *(v16 + 96) = v19;
  v20 = *(a1 + 16);
  *(v16 + 16) = *a1;
  *(v16 + 32) = v20;
  v21 = swift_allocObject();
  v22 = *(a1 + 112);
  *(v21 + 112) = *(a1 + 96);
  *(v21 + 128) = v22;
  *(v21 + 144) = *(a1 + 128);
  v23 = *(a1 + 48);
  *(v21 + 48) = *(a1 + 32);
  *(v21 + 64) = v23;
  v24 = *(a1 + 80);
  *(v21 + 80) = *(a1 + 64);
  *(v21 + 96) = v24;
  v25 = *(a1 + 16);
  *(v21 + 16) = *a1;
  *(v21 + 32) = v25;
  v86 = v21;
  v104 = *(a1 + 56);
  sub_2440698FC(a1, &v152);
  sub_2440698FC(a1, &v152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0);
  sub_2440D2820();
  LODWORD(v72) = v152;
  v80 = sub_2440D2660();
  sub_2440D14C0();
  v26 = sub_2440D2B00();
  v76 = v27;
  v77 = v26;
  v163 = 1;
  v87 = sub_2440D20B0();
  v164 = 1;
  v28 = *(a1 + 128);
  sub_2440D2C40();
  v78 = v30;
  v79 = v29;
  sub_2440D2760();
  v31 = v73;
  v32 = v74;
  v33 = v75;
  (*(v74 + 104))(v73, *MEMORY[0x277CE0FE0], COERCE_DOUBLE(*&v75));
  v71 = sub_2440D2790();

  (*(v32 + 8))(v31, COERCE_DOUBLE(*&v33));
  v74 = sub_2440D2650();
  KeyPath = swift_getKeyPath();
  sub_2440D2C40();
  v36 = v35;
  v38 = v37;
  LOBYTE(v102[0]) = 1;
  v39 = sub_2440D2AE0();
  v41 = v40;
  v152 = *(a1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0);
  sub_2440D2820();
  sub_2440D2B00();
  if (v72 == 2)
  {
    v10 = 1.0;
  }

  v42 = v13 * 0.0174532925;
  v75 = v42;
  sub_2440D18E0();
  *&v152 = v71;
  *(&v152 + 1) = KeyPath;
  v153 = v74;
  LOWORD(v154) = 1;
  *(&v154 + 1) = v28 * 0.7;
  *&v155 = v28 * 0.7;
  *(&v155 + 1) = v36;
  *&v156 = v38;
  *(&v156 + 1) = v39;
  *&v157 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5238);
  sub_24406C384();
  v43 = v89;
  sub_2440D24E0();
  v102[10] = v161[1];
  v102[11] = v161[2];
  v103 = v162;
  v102[6] = v158;
  v102[7] = v159;
  v102[8] = v160;
  v102[9] = v161[0];
  v102[2] = v154;
  v102[3] = v155;
  v102[4] = v156;
  v102[5] = v157;
  v102[0] = v152;
  v102[1] = v153;
  sub_243F5EED4(v102, &qword_27EDC5238);
  v44 = v43;
  v45 = v84;
  sub_243F5F574(v44, v84, &qword_27EDC5230);
  *&v104 = 0;
  v46 = v85;
  *(&v104 + 1) = v85;
  v105 = v168;
  v106 = v169;
  *&v107 = v170;
  *(&v107 + 1) = v92;
  LOWORD(v108) = 256;
  *(&v108 + 2) = v166;
  WORD3(v108) = v167;
  *(&v108 + 1) = v91;
  *&v109 = v90;
  v48 = v82;
  v47 = v83;
  *(&v109 + 1) = v42;
  *&v110 = v83;
  *(&v110 + 1) = v82;
  *&v111 = 0x3FF0000000000000;
  *(&v111 + 1) = v88;
  v49 = v81;
  *&v112 = v81;
  v74 = sub_24406C2B4;
  *(&v112 + 1) = sub_24406C2B4;
  *&v113[0] = v16;
  *(v113 + 8) = 0u;
  *(&v113[1] + 8) = 0u;
  v73 = sub_24406C32C;
  *(&v113[2] + 1) = sub_24406C32C;
  v114 = v86;
  *(a2 + 192) = v86;
  v50 = v104;
  v51 = v105;
  v52 = v107;
  *(a2 + 32) = v106;
  *(a2 + 48) = v52;
  *a2 = v50;
  *(a2 + 16) = v51;
  v53 = v113[2];
  *(a2 + 160) = v113[1];
  *(a2 + 176) = v53;
  v54 = v108;
  v55 = v109;
  v56 = v113[0];
  *(a2 + 128) = v112;
  *(a2 + 144) = v56;
  v57 = v111;
  *(a2 + 96) = v110;
  *(a2 + 112) = v57;
  *(a2 + 64) = v54;
  *(a2 + 80) = v55;
  *&v115 = 0;
  *(&v115 + 1) = v10;
  v116 = v99;
  v117 = v100;
  v58 = v80;
  *&v118 = v101;
  *(&v118 + 1) = v80;
  LOWORD(v119) = 256;
  *(&v119 + 2) = v97;
  WORD3(v119) = v98;
  v59 = v77;
  v72 = v16;
  v60 = v76;
  *(&v119 + 1) = v77;
  v120 = v76;
  LOWORD(v121) = 257;
  WORD3(v121) = v96;
  *(&v121 + 2) = v95;
  BYTE8(v121) = v87;
  *(&v121 + 9) = *v94;
  HIDWORD(v121) = *&v94[3];
  v122 = 0u;
  v123 = 0u;
  LOBYTE(v124) = 1;
  *(&v124 + 1) = *v93;
  DWORD1(v124) = *&v93[3];
  *(&v124 + 1) = v28;
  *&v125 = v28;
  v61 = v78;
  v62 = v79;
  *(&v125 + 1) = v79;
  v126 = v78;
  v63 = v124;
  *(a2 + 328) = 0u;
  *(a2 + 344) = v63;
  *(a2 + 360) = v125;
  v64 = v122;
  *(a2 + 296) = v121;
  *(a2 + 312) = v64;
  v65 = v120;
  *(a2 + 264) = v119;
  *(a2 + 280) = v65;
  v66 = v117;
  *(a2 + 248) = v118;
  *(a2 + 232) = v66;
  v67 = v115;
  *(a2 + 216) = v116;
  *(a2 + 200) = v67;
  *(a2 + 376) = v126;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5268);
  sub_243F5F574(v45, a2 + *(v68 + 64), &qword_27EDC5230);
  sub_243F5F574(&v104, &v152, &qword_27EDC5270);
  sub_243F5F574(&v115, &v152, &qword_27EDC5278);
  sub_243F5EED4(v89, &qword_27EDC5230);
  sub_243F5EED4(v45, &qword_27EDC5230);
  *&v127[1] = v10;
  v128 = v99;
  v127[0] = 0;
  v129 = v100;
  v130 = v101;
  v131 = v58;
  v132 = 256;
  v133 = v97;
  v134 = v98;
  v135 = v59;
  v136 = v60;
  v137 = 0;
  v138 = 1;
  v139 = 1;
  v140 = v95;
  v141 = v96;
  v142 = v87;
  *v143 = *v94;
  *&v143[3] = *&v94[3];
  v144 = 0u;
  v145 = 0u;
  v146 = 1;
  *v147 = *v93;
  *&v147[3] = *&v93[3];
  v148 = v28;
  v149 = v28;
  v150 = v62;
  v151 = v61;
  sub_243F5EED4(v127, &qword_27EDC5278);
  *&v152 = 0;
  *(&v152 + 1) = v46;
  v153 = v168;
  v154 = v169;
  *&v155 = v170;
  *(&v155 + 1) = v92;
  LOWORD(v156) = 256;
  *(&v156 + 2) = v166;
  WORD3(v156) = v167;
  *(&v156 + 1) = v91;
  *&v157 = v90;
  *(&v157 + 1) = v75;
  *&v158 = v47;
  *(&v158 + 1) = v48;
  *&v159 = 0x3FF0000000000000;
  *(&v159 + 1) = v88;
  *&v160 = v49;
  *(&v160 + 1) = v74;
  *&v161[0] = v72;
  *(&v161[1] + 8) = 0u;
  *(v161 + 8) = 0u;
  *(&v161[2] + 1) = v73;
  v162 = v86;
  return sub_243F5EED4(&v152, &qword_27EDC5270);
}

uint64_t sub_244068F38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3 - 8];
  v5 = sub_2440D3390();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_2440D3360();
  sub_2440698FC(a1, v15);
  v6 = sub_2440D3350();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  v9 = *(a1 + 112);
  *(v7 + 128) = *(a1 + 96);
  *(v7 + 144) = v9;
  *(v7 + 160) = *(a1 + 128);
  v10 = *(a1 + 48);
  *(v7 + 64) = *(a1 + 32);
  *(v7 + 80) = v10;
  v11 = *(a1 + 80);
  *(v7 + 96) = *(a1 + 64);
  *(v7 + 112) = v11;
  v12 = *(a1 + 16);
  *(v7 + 32) = *a1;
  *(v7 + 48) = v12;
  sub_243F54830(0, 0, v4, &unk_2440E4418, v7);
}

uint64_t sub_244069088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_2440D38A0();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  sub_2440D3360();
  v4[13] = sub_2440D3350();
  v7 = sub_2440D3320();
  v4[14] = v7;
  v4[15] = v6;

  return MEMORY[0x2822009F8](sub_24406917C, v7, v6);
}

uint64_t sub_24406917C()
{
  v1 = sub_2440D3B80();
  v3 = v2;
  sub_2440D3A80();
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *v4 = v0;
  v4[1] = sub_244069260;

  return sub_243F720D4(v1, v3, 0, 0, 1);
}

uint64_t sub_244069260()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[12];
  v5 = v2[11];
  v6 = v2[10];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[14];
    v8 = v3[15];
    v9 = sub_24406C63C;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[14];
    v8 = v3[15];
    v9 = sub_2440693F4;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2440693F4()
{
  v1 = *(v0 + 72);

  v2 = *v1;
  if (v2 == 3)
  {
    v3 = sub_2440D2650();
  }

  else
  {
    v3 = sub_2440D2660();
  }

  v4 = *(v0 + 72);
  *(v0 + 16) = *(v4 + 40);
  *(v0 + 64) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05E8);
  sub_2440D2830();
  *(v0 + 32) = *(v4 + 56);
  *(v0 + 136) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0);
  sub_2440D2830();
  *(v0 + 48) = *(v4 + 56);
  sub_2440D2820();
  sub_244069520(*(v0 + 137));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_244069520(uint64_t a1)
{
  if (a1 == 4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
    sub_2440D2830();
    sub_2440D2B80();
    sub_2440D2B40();

    MEMORY[0x28223BE20](v1);
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    sub_2440D2BA0();
  }

  sub_2440D16E0();
}

uint64_t sub_24406966C()
{
  if (*(v0 + 16) == 3)
  {
    sub_2440D2650();
  }

  else
  {
    sub_2440D2660();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05E8);
  return sub_2440D2830();
}

uint64_t sub_2440696D8(unsigned __int8 *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - v5;
  v7 = *a1;
  v19 = *(a2 + 56);
  v17[0] = *(a2 + 56);
  v20 = *(&v19 + 1);
  sub_243F5F574(&v20, v18, &qword_27EDC50F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0);
  sub_2440D2820();
  if (v7 == v18[0])
  {
    return sub_243F5EED4(&v19, &qword_27EDC01A0);
  }

  v17[0] = v19;
  v18[0] = 1;
  sub_2440D2830();
  sub_243F5EED4(&v19, &qword_27EDC01A0);
  v9 = sub_2440D3390();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  sub_2440D3360();
  sub_2440698FC(a2, v17);
  v10 = sub_2440D3350();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  v13 = *(a2 + 112);
  *(v11 + 128) = *(a2 + 96);
  *(v11 + 144) = v13;
  *(v11 + 160) = *(a2 + 128);
  v14 = *(a2 + 48);
  *(v11 + 64) = *(a2 + 32);
  *(v11 + 80) = v14;
  v15 = *(a2 + 80);
  *(v11 + 96) = *(a2 + 64);
  *(v11 + 112) = v15;
  v16 = *(a2 + 16);
  *(v11 + 32) = *a2;
  *(v11 + 48) = v16;
  *(v11 + 168) = v7;
  sub_243F54830(0, 0, v6, &unk_2440E4398, v11);
}

unint64_t sub_244069934()
{
  result = qword_27EDC5128;
  if (!qword_27EDC5128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5100);
    sub_2440699C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5128);
  }

  return result;
}

unint64_t sub_2440699C0()
{
  result = qword_27EDC5130;
  if (!qword_27EDC5130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5120);
    sub_244069A78();
    sub_243F5DD50(&qword_27EDC5158, &qword_27EDC5160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5130);
  }

  return result;
}

unint64_t sub_244069A78()
{
  result = qword_27EDC5138;
  if (!qword_27EDC5138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5118);
    sub_243F5DD50(&qword_27EDC5140, &qword_27EDC5148);
    sub_243F5DD50(&qword_27EDC5150, &qword_27EDC2EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5138);
  }

  return result;
}

uint64_t sub_244069B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 121) = a5;
  *(v5 + 56) = a4;
  v6 = sub_2440D38A0();
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();
  sub_2440D3360();
  *(v5 + 88) = sub_2440D3350();
  v8 = sub_2440D3320();
  *(v5 + 96) = v8;
  *(v5 + 104) = v7;

  return MEMORY[0x2822009F8](sub_244069C54, v8, v7);
}

uint64_t sub_244069C54()
{
  v1 = sub_2440D3B80();
  v3 = v2;
  sub_2440D3A80();
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_244069D38;

  return sub_243F720D4(v1, v3, 0, 0, 1);
}

uint64_t sub_244069D38()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[10];
  v5 = v2[9];
  v6 = v2[8];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[12];
    v8 = v3[13];
    v9 = sub_24406C628;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[12];
    v8 = v3[13];
    v9 = sub_244069ECC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_244069ECC()
{
  v1 = *(v0 + 121);

  if (v1 == 3)
  {
    v2 = sub_2440D2650();
  }

  else
  {
    v2 = sub_2440D2660();
  }

  *(v0 + 16) = *(*(v0 + 56) + 40);
  *(v0 + 48) = v2;
  v3 = *(v0 + 121);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05E8);
  sub_2440D2830();
  sub_244069520(v3);
  if (v3 != 1)
  {
    v4 = *(v0 + 121);
    *(v0 + 32) = *(*(v0 + 56) + 56);
    *(v0 + 120) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0);
    sub_2440D2830();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_244069FD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0);
  result = sub_2440D2820();
  if (v2 != 4)
  {
    v1 = sub_2440D2BA0();
    MEMORY[0x28223BE20](v1);
    sub_2440D16E0();
  }

  return result;
}

double sub_24406A0A8@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_2440D2810();
  sub_2440D2810();
  sub_2440D2810();
  sub_2440D2810();
  sub_2440D2810();
  sub_2440D2810();
  sub_2440D2810();
  *a2 = a1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 56) = v5;
  *(a2 + 64) = v6;
  *(a2 + 72) = v5;
  *(a2 + 80) = v6;
  *(a2 + 88) = v5;
  *(a2 + 96) = v6;
  *(a2 + 104) = v5;
  *(a2 + 112) = v6;
  result = 3.5;
  *(a2 + 120) = xmmword_2440E3ED0;
  return result;
}

uint64_t sub_24406A2A0()
{
  sub_2440D2250();
  sub_2440D2260();
  return sub_2440D2260();
}

double sub_24406A314@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  CGRectGetWidth(*&a2);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetHeight(v14);
  sub_2440D2290();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

void (*sub_24406A3D8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2440D1380();
  return sub_243FA8774;
}

uint64_t sub_24406A460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24406C068();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24406A4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24406C068();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24406A528(uint64_t a1)
{
  v2 = sub_24406C068();

  return MEMORY[0x282133738](a1, v2);
}

uint64_t sub_24406A574@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v54 = a2;
  v3 = sub_2440D1D90();
  v4 = *(v3 - 8);
  v52 = v3;
  v53 = v4;
  MEMORY[0x28223BE20](v3);
  v45 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC51B8);
  v51 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v44 = &v41[-v6];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC51C0) - 8;
  v7 = MEMORY[0x28223BE20](v49);
  v50 = &v41[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v43 = &v41[-v9];
  v10 = sub_2440D2B00();
  v46 = v11;
  v47 = v10;
  v12 = sub_2440D1B30();
  LOBYTE(v111) = 1;
  sub_24406AE1C(a1, &v59);
  v86[6] = *&v60[80];
  v86[7] = *&v60[96];
  v86[8] = *&v60[112];
  v86[2] = *&v60[16];
  v86[3] = *&v60[32];
  v86[4] = *&v60[48];
  v86[5] = *&v60[64];
  v86[0] = v59;
  v86[1] = *v60;
  v93 = *&v60[80];
  v94 = *&v60[96];
  v95 = *&v60[112];
  v89 = *&v60[16];
  v90 = *&v60[32];
  v92 = *&v60[64];
  v91 = *&v60[48];
  v88 = *v60;
  v87 = v59;
  sub_243F5F574(v86, &v55, &qword_27EDC5210);
  sub_243F5EED4(&v87, &qword_27EDC5210);
  *&v112[87] = v86[5];
  *&v112[103] = v86[6];
  *&v112[119] = v86[7];
  *&v112[135] = v86[8];
  *&v112[23] = v86[1];
  *&v112[39] = v86[2];
  *&v112[55] = v86[3];
  *&v112[71] = v86[4];
  *&v112[7] = v86[0];
  v13 = v111;
  v14 = sub_2440D2BE0();
  v59 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0);
  sub_2440D2820();
  v15 = v55;
  sub_2440D2B00();
  sub_2440D1560();
  *(v113 + 7) = v59;
  *(&v113[1] + 7) = *v60;
  *(&v113[2] + 7) = *&v60[16];
  v55 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
  sub_2440D2820();
  *(&v56[6] + 1) = *&v112[96];
  *(&v56[7] + 1) = *&v112[112];
  *(&v56[8] + 1) = *&v112[128];
  *(&v56[2] + 1) = *&v112[32];
  *(&v56[3] + 1) = *&v112[48];
  *(&v56[4] + 1) = *&v112[64];
  *(&v56[5] + 1) = *&v112[80];
  *(v56 + 1) = *v112;
  *(&v56[1] + 1) = *&v112[16];
  *(v57 + 1) = v113[0];
  *(&v57[1] + 1) = v113[1];
  *(&v57[2] + 1) = v113[2];
  *&v60[1] = *v112;
  *&v60[17] = *&v112[16];
  *&v60[81] = *&v112[80];
  *&v60[65] = *&v112[64];
  *&v60[49] = *&v112[48];
  v55 = v12;
  LOBYTE(v56[0]) = v13;
  *&v56[9] = *&v112[143];
  *(&v56[9] + 1) = v14;
  LOBYTE(v57[0]) = v15;
  *&v57[3] = *(&v113[2] + 15);
  *(&v57[3] + 1) = v111;
  v58 = 0;
  v59 = v12;
  v60[0] = v13;
  *&v60[33] = *&v112[32];
  *&v61[15] = *&v112[143];
  *v61 = *&v112[128];
  *&v60[113] = *&v112[112];
  *&v60[97] = *&v112[96];
  v62 = v14;
  v63 = v15;
  v64 = v113[0];
  v65 = v113[1];
  *v66 = v113[2];
  *&v66[15] = *(&v113[2] + 15);
  v67 = v111;
  v68 = 0;
  sub_243F5F574(&v55, &v87, &qword_27EDC51C8);
  sub_243F5EED4(&v59, &qword_27EDC51C8);
  v82 = v57[1];
  v83 = v57[2];
  v84 = v57[3];
  v85 = v58;
  v78 = v56[7];
  v79 = v56[8];
  v80 = v56[9];
  v81 = v57[0];
  v74 = v56[3];
  v75 = v56[4];
  v76 = v56[5];
  v77 = v56[6];
  v70 = v55;
  v71 = v56[0];
  v72 = v56[1];
  v73 = v56[2];
  v42 = sub_2440D20D0();
  sub_2440D13D0();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  LOBYTE(v87) = 0;
  sub_2440D1B70();
  v86[0] = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0);
  sub_2440D2840();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC51D0);
  sub_24406BEE8();
  sub_243F5DD50(&qword_27EDC51E0, &qword_27EDC51D0);
  v24 = v44;
  sub_2440D2900();
  v25 = v45;
  sub_2440D1D80();
  sub_243F5DD50(&qword_27EDC51E8, &qword_27EDC51B8);
  v26 = v43;
  v27 = v48;
  v28 = v52;
  sub_2440D23A0();
  (*(v53 + 8))(v25, v28);
  (*(v51 + 8))(v24, v27);
  v29 = sub_2440D20D0();
  sub_2440D13D0();
  v30 = v50;
  v31 = v26 + *(v49 + 44);
  *v31 = v29;
  *(v31 + 8) = v32;
  *(v31 + 16) = v33;
  *(v31 + 24) = v34;
  *(v31 + 32) = v35;
  *(v31 + 40) = 0;
  sub_24406BF3C(v26, v30);
  v37 = v46;
  v36 = v47;
  *&v86[0] = v47;
  *(&v86[0] + 1) = v46;
  v86[13] = v82;
  v86[14] = v83;
  v86[15] = v84;
  *&v86[16] = v85;
  v86[10] = v79;
  v86[11] = v80;
  v86[12] = v81;
  v86[5] = v74;
  v86[6] = v75;
  v86[7] = v76;
  v86[8] = v77;
  v86[9] = v78;
  v86[1] = v70;
  v86[2] = v71;
  v86[3] = v72;
  v86[4] = v73;
  LOBYTE(v14) = v42;
  BYTE8(v86[16]) = v42;
  *(&v86[16] + 9) = *v69;
  HIDWORD(v86[16]) = *&v69[3];
  *&v86[17] = v17;
  *(&v86[17] + 1) = v19;
  *&v86[18] = v21;
  *(&v86[18] + 1) = v23;
  LOBYTE(v86[19]) = 0;
  v38 = v54;
  memcpy(v54, v86, 0x131uLL);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC51F0);
  sub_24406BF3C(v30, v38 + *(v39 + 48));
  sub_243F5F574(v86, &v87, &qword_27EDC51F8);
  sub_24406BFAC(v26);
  sub_24406BFAC(v30);
  *&v87 = v36;
  *(&v87 + 1) = v37;
  v100 = v82;
  v101 = v83;
  v102 = v84;
  v103 = v85;
  v96 = v78;
  v97 = v79;
  v98 = v80;
  v99 = v81;
  v92 = v74;
  v93 = v75;
  v94 = v76;
  v95 = v77;
  v88 = v70;
  v89 = v71;
  v90 = v72;
  v91 = v73;
  v104 = v14;
  *v105 = *v69;
  *&v105[3] = *&v69[3];
  v106 = v17;
  v107 = v19;
  v108 = v21;
  v109 = v23;
  v110 = 0;
  return sub_243F5EED4(&v87, &qword_27EDC51F8);
}

double sub_24406AE1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2440D1870();
  v43 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2440D1B10();
  v42 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5218);
  v10 = *(v41 - 8);
  v11 = MEMORY[0x28223BE20](v41);
  v39 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - v13;
  v44 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0);
  sub_2440D2820();
  v40 = v47;
  v15 = sub_2440D2690();
  LOBYTE(v47) = 0;
  sub_2440D2810();
  v38 = v44;
  v37 = *(&v44 + 1);
  LOBYTE(v47) = 0;
  sub_2440D2810();
  v36 = v44;
  v35 = *(&v44 + 1);
  v47 = v15;
  sub_2440D2810();
  v33 = *(&v44 + 1);
  v34 = v44;
  LOBYTE(v47) = 1;
  sub_2440D2810();
  v32 = v44;
  v31 = *(&v44 + 1);
  v47 = 0;
  sub_2440D2810();
  v30 = *(&v44 + 1);
  v16 = v44;
  LOBYTE(v47) = 0;
  sub_2440D2810();
  v29 = v44;
  v28 = *(&v44 + 1);
  v47 = 0x3FF0000000000000;
  sub_2440D2810();
  v27 = *(&v44 + 1);
  v17 = v44;
  sub_2440D1B00();
  sub_2440D2C40();
  sub_2440D1880();
  v18 = sub_24406C26C(&qword_27EDC0148, MEMORY[0x277CE0068]);
  v19 = sub_24406C26C(&qword_27EDC1018, MEMORY[0x277CDFAE8]);
  sub_2440D13F0();
  (*(v43 + 8))(v6, v4);
  (*(v42 + 8))(v9, v7);
  v20 = v41;
  (*(v10 + 16))(v39, v14, v41);
  *&v44 = v7;
  *(&v44 + 1) = v4;
  v45 = v18;
  v46 = v19;
  swift_getOpaqueTypeConformance2();
  v21 = v20;
  v22 = sub_2440D1610();
  (*(v10 + 8))(v14, v21);
  *a2 = v40;
  *(a2 + 8) = v38;
  *(a2 + 16) = v37;
  *(a2 + 24) = v36;
  v23 = v34;
  *(a2 + 32) = v35;
  *(a2 + 40) = v23;
  *(a2 + 48) = v33;
  *(a2 + 56) = v32;
  v24 = v30;
  *(a2 + 64) = v31;
  *(a2 + 72) = v16;
  *(a2 + 80) = v24;
  *(a2 + 88) = v29;
  *(a2 + 96) = v28;
  *(a2 + 104) = v17;
  *(a2 + 112) = v27;
  result = 3.5;
  *(a2 + 120) = xmmword_2440E3ED0;
  *(a2 + 136) = v22;
  return result;
}

uint64_t sub_24406B34C@<X0>(char *a1@<X8>)
{
  v46 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5200);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v48 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v45 = &v39 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v47 = &v39 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v39 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v39 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v39 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v39 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v39 - v25;
  *v26 = xmmword_2440E3EE0;
  v26[16] = 0;
  v27 = MEMORY[0x277D84F90];
  *(v26 + 3) = MEMORY[0x277D84F90];
  *(v26 + 16) = 256;
  *v24 = xmmword_2440E3EF0;
  v24[16] = 0;
  *(v24 + 3) = v27;
  *(v24 + 16) = 257;
  v44 = v24;
  *v21 = xmmword_2440E3F00;
  v21[16] = 0;
  *(v21 + 3) = v27;
  *(v21 + 16) = 260;
  v42 = v21;
  *v18 = xmmword_2440E3F10;
  v18[16] = 0;
  *(v18 + 3) = v27;
  *(v18 + 16) = 258;
  v40 = v18;
  v39 = v28;
  *v28 = xmmword_2440E3F20;
  v28[16] = 0;
  *(v28 + 3) = v27;
  *(v28 + 16) = 259;
  v29 = *(v2 + 16);
  v43 = v14;
  v29(v14, &v39 - v25, v1);
  v41 = v11;
  v29(v11, v24, v1);
  v29(v47, v21, v1);
  v30 = v45;
  v29(v45, v18, v1);
  v31 = v39;
  v29(v48, v39, v1);
  v32 = v46;
  v29(v46, v14, v1);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5208);
  v29(&v32[v33[12]], v11, v1);
  v34 = v47;
  v29(&v32[v33[16]], v47, v1);
  v29(&v32[v33[20]], v30, v1);
  v35 = &v32[v33[24]];
  v36 = v48;
  v29(v35, v48, v1);
  v37 = *(v2 + 8);
  v37(v31, v1);
  v37(v40, v1);
  v37(v42, v1);
  v37(v44, v1);
  v37(v26, v1);
  v37(v36, v1);
  v37(v30, v1);
  v37(v34, v1);
  v37(v41, v1);
  return (v37)(v43, v1);
}

uint64_t sub_24406B7F0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2440D1C20();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC51B0);
  return sub_24406A574(v1, (a1 + *(v3 + 44)));
}

double sub_24406B844@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2440D2B00();
  v4 = v3;
  sub_24406B940(v7);
  *a1 = v2;
  *(a1 + 8) = v4;
  v5 = v7[1];
  *(a1 + 16) = v7[0];
  *(a1 + 32) = v5;
  result = *&v8;
  *(a1 + 48) = v8;
  *(a1 + 64) = v9;
  return result;
}

uint64_t sub_24406B8A8(uint64_t a1)
{
  v2 = sub_24406C014();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_24406B8F4(uint64_t a1)
{
  v2 = sub_24406C014();

  return MEMORY[0x28212D8E0](a1, v2);
}

double sub_24406B940@<D0>(uint64_t a1@<X8>)
{
  sub_2440D2810();
  sub_2440D2810();
  v2 = sub_244070800();
  sub_2440D2810();
  result = v4;
  *a1 = LOBYTE(v4);
  *(a1 + 8) = v5;
  *(a1 + 16) = LOBYTE(v4);
  *(a1 + 24) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  return result;
}

unint64_t sub_24406BA28()
{
  result = qword_27EDC5168;
  if (!qword_27EDC5168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5168);
  }

  return result;
}

unint64_t sub_24406BA80()
{
  result = qword_27EDC5170;
  if (!qword_27EDC5170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5170);
  }

  return result;
}

unint64_t sub_24406BB1C()
{
  result = qword_27EDC5188;
  if (!qword_27EDC5188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5188);
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_24406BBC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24406BC08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24406BCAC()
{
  result = qword_27EDC5190;
  if (!qword_27EDC5190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5198);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5100);
    sub_244069934();
    sub_243F686B4();
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC0230, &qword_27EDC0238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5190);
  }

  return result;
}

uint64_t sub_24406BE00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_24406BE5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_24406BEE8()
{
  result = qword_27EDC51D8;
  if (!qword_27EDC51D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC51D8);
  }

  return result;
}

uint64_t sub_24406BF3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC51C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24406BFAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC51C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24406C014()
{
  result = qword_27EDC5220;
  if (!qword_27EDC5220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5220);
  }

  return result;
}

unint64_t sub_24406C068()
{
  result = qword_27EDC5228;
  if (!qword_27EDC5228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5228);
  }

  return result;
}

uint64_t sub_24406C0E0()
{
  v2 = *(v0 + 168);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5F610;

  return sub_244069B5C(v3, v4, v5, v0 + 32, v2);
}

uint64_t sub_24406C26C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_25()
{

  return swift_deallocObject();
}

unint64_t sub_24406C384()
{
  result = qword_27EDC5240;
  if (!qword_27EDC5240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5238);
    sub_24406C43C();
    sub_243F5DD50(&qword_27EDC5258, &qword_27EDC5260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5240);
  }

  return result;
}

unint64_t sub_24406C43C()
{
  result = qword_27EDC5248;
  if (!qword_27EDC5248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5250);
    sub_243F8B844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5248);
  }

  return result;
}

uint64_t objectdestroy_28Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24406C554()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_243F5DE2C;

  return sub_244069088(v2, v3, v4, v0 + 32);
}

uint64_t sub_24406C644@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1FE0);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v64 - v4;
  v5 = type metadata accessor for AVLoopPlayerView(0);
  MEMORY[0x28223BE20](v5 - 8);
  v69 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4478);
  MEMORY[0x28223BE20](v68);
  v76 = &v64 - v7;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5298);
  MEMORY[0x28223BE20](v74);
  v77 = &v64 - v8;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC52A0);
  MEMORY[0x28223BE20](v78);
  v10 = &v64 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC52A8);
  MEMORY[0x28223BE20](v11 - 8);
  v75 = &v64 - v12;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC52B0);
  MEMORY[0x28223BE20](v72);
  v73 = &v64 - v13;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC52B8);
  v14 = MEMORY[0x28223BE20](v83);
  v71 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v79 = &v64 - v16;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC52C0);
  MEMORY[0x28223BE20](v81);
  v82 = &v64 - v17;
  v18 = sub_2440D2770();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC52C8);
  MEMORY[0x28223BE20](v22 - 8);
  v66 = &v64 - v23;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC52D0);
  MEMORY[0x28223BE20](v65);
  v25 = &v64 - v24;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC52D8);
  v26 = MEMORY[0x28223BE20](v80);
  v28 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v67 = &v64 - v29;
  v86 = *v1;
  LOBYTE(v87) = *(v1 + 16);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5290);
  MEMORY[0x245D56840](&v84, v30);
  if (sub_243FA1978(v84, 3))
  {
    v79 = a1;
    sub_24401FE64(0xD000000000000010, 0x80000002440EE270);
    (*(v19 + 104))(v21, *MEMORY[0x277CE0FE0], v18);
    v31 = sub_2440D2790();

    (*(v19 + 8))(v21, v18);
    sub_2440D2B00();
    sub_2440D18E0();
    *&v94[54] = v99;
    *&v94[70] = v100;
    *&v94[86] = v101;
    *&v94[102] = v102;
    *&v94[6] = v96;
    *&v94[22] = v97;
    v95 = 1;
    *&v94[38] = v98;
    v84 = v31;
    LOWORD(v85[0]) = 257;
    *(&v85[4] + 2) = *&v94[64];
    *(&v85[5] + 2) = *&v94[80];
    *(&v85[6] + 2) = *&v94[96];
    *(&v85[1] + 2) = *&v94[16];
    *(&v85[2] + 2) = *&v94[32];
    *(&v85[3] + 2) = *&v94[48];
    *&v85[7] = *(&v102 + 1);
    *(v85 + 2) = *v94;
    WORD4(v85[7]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5310);
    sub_24406D5FC();
    v32 = v66;
    sub_2440D2480();
    v92 = v85[5];
    v93[0] = v85[6];
    *(v93 + 10) = *(&v85[6] + 10);
    v88 = v85[1];
    v89 = v85[2];
    v90 = v85[3];
    v91 = v85[4];
    v86 = v84;
    v87 = v85[0];
    sub_243F5EED4(&v86, &qword_27EDC5310);
    sub_243F681C8(v32, v25, &qword_27EDC52C8);
    v25[*(v65 + 36)] = 0;
    v33 = sub_2440D1860();
    v34 = sub_2440D20C0();
    sub_243F681C8(v25, v28, &qword_27EDC52D0);
    v35 = &v28[*(v80 + 36)];
    *v35 = v33;
    v35[8] = v34;
    v36 = &qword_27EDC52D8;
    v37 = v67;
    sub_243F681C8(v28, v67, &qword_27EDC52D8);
    sub_243F5F574(v37, v82, &qword_27EDC52D8);
    swift_storeEnumTagMultiPayload();
    sub_24406D404();
    sub_24406D75C();
    sub_2440D1D20();
    v38 = v37;
  }

  else
  {
    v39 = *sub_244056A6C();
    v40 = sub_2440D2F80();
    v41 = sub_2440D2F80();
    v42 = [v39 URLForResource:v40 withExtension:v41];

    if (v42)
    {
      v43 = v70;
      sub_2440D05C0();

      v44 = 0;
      v45 = v76;
    }

    else
    {
      v44 = 1;
      v45 = v76;
      v43 = v70;
    }

    v46 = sub_2440D05F0();
    (*(*(v46 - 8) + 56))(v43, v44, 1, v46);
    v47 = v69;
    sub_243FC7DF0(v43, v69);
    sub_24406D224(v47, v45);
    v48 = v45 + *(v68 + 36);
    *v48 = 0;
    *(v48 + 8) = 257;
    sub_2440D2B00();
    sub_2440D18E0();
    v49 = v77;
    sub_243F681C8(v45, v77, &qword_27EDC4478);
    v50 = (v49 + *(v74 + 36));
    v51 = v91;
    v50[4] = v90;
    v50[5] = v51;
    v50[6] = v92;
    v52 = v87;
    *v50 = v86;
    v50[1] = v52;
    v53 = v89;
    v50[2] = v88;
    v50[3] = v53;
    sub_243F681C8(v49, v10, &qword_27EDC5298);
    *&v10[*(v78 + 36)] = 0;
    sub_24406D288();
    v54 = v75;
    sub_2440D2480();
    sub_243F5EED4(v10, &qword_27EDC52A0);
    v55 = v54;
    v56 = v73;
    sub_243F681C8(v55, v73, &qword_27EDC52A8);
    *(v56 + *(v72 + 36)) = 0;
    v57 = sub_2440D1860();
    v58 = sub_2440D20C0();
    v59 = v56;
    v60 = v71;
    sub_243F681C8(v59, v71, &qword_27EDC52B0);
    v61 = v60 + *(v83 + 36);
    *v61 = v57;
    *(v61 + 8) = v58;
    v36 = &qword_27EDC52B8;
    v62 = v79;
    sub_243F681C8(v60, v79, &qword_27EDC52B8);
    sub_243F5F574(v62, v82, &qword_27EDC52B8);
    swift_storeEnumTagMultiPayload();
    sub_24406D404();
    sub_24406D75C();
    sub_2440D1D20();
    v38 = v62;
  }

  return sub_243F5EED4(v38, v36);
}

uint64_t sub_24406D224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AVLoopPlayerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24406D288()
{
  result = qword_27EDC52E0;
  if (!qword_27EDC52E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC52A0);
    sub_24406D314();
    sub_24406D3A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC52E0);
  }

  return result;
}

unint64_t sub_24406D314()
{
  result = qword_27EDC52E8;
  if (!qword_27EDC52E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5298);
    sub_244044DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC52E8);
  }

  return result;
}

unint64_t sub_24406D3A0()
{
  result = qword_27EDC44C8;
  if (!qword_27EDC44C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC44D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC44C8);
  }

  return result;
}

unint64_t sub_24406D404()
{
  result = qword_27EDC52F0;
  if (!qword_27EDC52F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC52D8);
    sub_24406D490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC52F0);
  }

  return result;
}

unint64_t sub_24406D490()
{
  result = qword_27EDC52F8;
  if (!qword_27EDC52F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC52D0);
    sub_24406D548(&qword_27EDC5300, &qword_27EDC52C8, &unk_2440E4478, sub_24406D5FC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC52F8);
  }

  return result;
}

uint64_t sub_24406D548(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_24406D714(&qword_27EDC0048, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24406D5FC()
{
  result = qword_27EDC5308;
  if (!qword_27EDC5308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5310);
    sub_24406D688();
    sub_24406D3A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5308);
  }

  return result;
}

unint64_t sub_24406D688()
{
  result = qword_27EDC5318;
  if (!qword_27EDC5318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5320);
    sub_243F6194C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5318);
  }

  return result;
}

uint64_t sub_24406D714(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24406D75C()
{
  result = qword_27EDC5328;
  if (!qword_27EDC5328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC52B8);
    sub_24406D7E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5328);
  }

  return result;
}

unint64_t sub_24406D7E8()
{
  result = qword_27EDC5330;
  if (!qword_27EDC5330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC52B0);
    sub_24406D548(&qword_27EDC5338, &qword_27EDC52A8, &unk_2440E4458, sub_24406D288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5330);
  }

  return result;
}

uint64_t sub_24406D8A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = a5;
  *(a4 + 32) = a6;
  return result;
}

unint64_t sub_24406D8E4()
{
  result = qword_27EDC5340;
  if (!qword_27EDC5340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5348);
    sub_24406D404();
    sub_24406D75C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5340);
  }

  return result;
}

id sub_24406D970(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC19ContactlessReaderUI11CBlurEffect_settings] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_24406DA80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CBlurEffect();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24406DAC4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  return (*(*(*(v3 + 88) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_24406DB64(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  (*(*(*(v3 + 88) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_24406DC78@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  return (*(*(*(v3 + 88) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_24406DD18(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  (*(*(*(v3 + 88) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_24406DE98(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_24406DED8(a1);
  return v2;
}

uint64_t sub_24406DED8(uint64_t a1)
{
  v3 = *v1;
  swift_defaultActor_initialize();
  v4 = *(*v1 + 136);
  v5 = v3[10];
  v6 = v3[11];
  type metadata accessor for Transition();
  v7 = sub_2440D2EC0();
  swift_getTupleTypeMetadata2();
  v8 = sub_2440D3270();
  v9 = sub_24406FD94(v8, v5, v7, v3[12]);

  *(v1 + v4) = v9;
  *(v1 + *(*v1 + 144)) = 0;
  v10 = *(v6 - 8);
  (*(v10 + 16))(v1 + *(*v1 + 120), a1, v6);
  (*(v10 + 32))(v1 + *(*v1 + 128), a1, v6);
  return v1;
}

uint64_t sub_24406E094(uint64_t a1)
{
  v117 = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v3 - 8);
  v102 = &v92 - v4;
  v5 = v117[10];
  v127 = v1;
  v6 = v117[11];
  v7 = type metadata accessor for Transition();
  v107 = sub_2440D3630();
  v8 = *(v107 - 8);
  v9 = MEMORY[0x28223BE20](v107);
  v101 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v106 = &v92 - v12;
  v118 = *(v5 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v92 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v111 = &v92 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v92 - v22;
  v93 = v24;
  v25 = MEMORY[0x28223BE20](v21);
  v27 = &v92 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v99 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v103 = &v92 - v31;
  MEMORY[0x28223BE20](v30);
  v98 = v32;
  v33 = *(v32 + 16);
  v119 = &v92 - v34;
  v126 = v6;
  v121 = v32 + 16;
  v110 = v33;
  v33();
  v128 = v7;
  v35 = *(v7 + 40);
  v108 = a1;
  v36 = *(a1 + v35);

  if (!sub_2440D32B0())
  {
LABEL_25:

    return (*(v98 + 8))(v119, v126);
  }

  v116 = *(*v127 + 136);
  swift_beginAccess();
  v37 = 0;
  v123 = (v118 + 16);
  v113 = (v118 + 32);
  v120 = v128 - 8;
  v105 = (v8 + 8);
  v112 = (v118 + 8);
  v97 = (v98 + 8);
  *&v38 = 136446466;
  v94 = v38;
  v122 = v23;
  v100 = v15;
  v104 = v18;
  v115 = v27;
  v114 = v36;
  while (1)
  {
    v50 = sub_2440D3290();
    sub_2440D3250();
    if (v50)
    {
      v51 = *(v118 + 16);
      result = (v51)(v27, v36 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v37, v5);
    }

    else
    {
      result = sub_2440D3850();
      if (v93 != 8)
      {
        goto LABEL_27;
      }

      v130 = result;
      v51 = *v123;
      (*v123)(v27, &v130, v5);
      result = swift_unknownObjectRelease();
    }

    v125 = v37;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    v124 = v37 + 1;
    (*v113)(v23, v27, v5);
    v53 = v117;
    v54 = v117[13];
    sub_2440D2EC0();
    v55 = v53[12];

    sub_2440D2EE0();

    if (v130)
    {

      sub_2440D2EE0();

      if (!v130)
      {
        v58 = *(v128 - 8);
        v56 = v106;
        (*(v58 + 56))(v106, 1, 1);
        v60 = *v105;
LABEL_14:
        v60(v56, v107);
        v61 = v104;
        v51(v104, v23, v5);
        v62 = sub_24406DE2C();
        sub_2440D2EC0();
        v63 = sub_2440D2ED0();
        if (*v64)
        {
          (v110)(v103, v119, v126);
          v65 = v101;
          v66 = v128;
          (*(v58 + 16))(v101, v108, v128);
          (*(v58 + 56))(v65, 0, 1, v66);
          v23 = v122;
          sub_2440D2EF0();
        }

        v63(&v129, 0);
        v67 = *v112;
        (*v112)(v61, v5);
        (v62)(&v130, 0);
        v67(v23, v5);
        goto LABEL_4;
      }

      v56 = v106;
      v57 = v128;
      sub_2440D2EE0();

      v58 = *(v57 - 8);
      v59 = (*(v58 + 48))(v56, 1, v57);
      v60 = *v105;
      if (v59 == 1)
      {
        goto LABEL_14;
      }

      v60(v56, v107);
      v68 = sub_243F4DF28();
      v69 = v102;
      sub_243F4DE64(v68, v102);
      v70 = sub_2440D11E0();
      v71 = *(v70 - 8);
      if ((*(v71 + 48))(v69, 1, v70) != 1)
      {
        v72 = v99;
        (v110)(v99, v119, v126);
        v73 = v100;
        v74 = v122;
        v51(v100, v122, v5);
        v75 = sub_2440D11C0();
        v76 = sub_2440D3470();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v96 = v75;
          v78 = v77;
          v109 = swift_slowAlloc();
          v130 = v109;
          *v78 = v94;
          v79 = v126;
          (v110)(v103, v72, v126);
          v80 = sub_2440D3040();
          v95 = v76;
          v82 = v81;
          (*v97)(v72, v79);
          v83 = sub_243F4E6F8(v80, v82, &v130);

          *(v78 + 4) = v83;
          *(v78 + 12) = 2082;
          v51(v111, v100, v5);
          v84 = sub_2440D3040();
          v86 = v85;
          v87 = *v112;
          (*v112)(v100, v5);
          v88 = sub_243F4E6F8(v84, v86, &v130);

          *(v78 + 14) = v88;
          v89 = v96;
          _os_log_impl(&dword_243F48000, v96, v95, "Transition from %{public}s due to event %{public}s already exists", v78, 0x16u);
          v90 = v109;
          swift_arrayDestroy();
          MEMORY[0x245D58570](v90, -1, -1);
          MEMORY[0x245D58570](v78, -1, -1);

          v87(v122, v5);
        }

        else
        {

          v91 = *v112;
          (*v112)(v73, v5);
          (*v97)(v72, v126);
          v91(v74, v5);
        }

        v36 = v114;
        (*(v71 + 8))(v102, v70);
        v23 = v122;
        v27 = v115;
        goto LABEL_5;
      }

      v23 = v122;
      (*v112)(v122, v5);
      sub_243F5FAB0(v69);
    }

    else
    {
      v51(v111, v122, v5);
      v39 = v126;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_2440D39D0();
      swift_allocObject();
      v41 = sub_2440D3240();
      v109 = v55;
      v42 = v41;
      v44 = v43;
      v45 = *(TupleTypeMetadata2 + 48);
      (v110)(v43, v119, v39);
      v46 = v44 + v45;
      v47 = v128;
      (*(*(v128 - 8) + 16))(v46, v108, v128);
      sub_2440D32F0();
      v48 = sub_24406FD94(v42, v39, v47, v54);

      v129 = v48;
      swift_beginAccess();
      sub_2440D2EC0();
      v23 = v122;
      sub_2440D2EF0();
      swift_endAccess();
      (*v112)(v23, v5);
    }

LABEL_4:
    v27 = v115;
    v36 = v114;
LABEL_5:
    v49 = sub_2440D32B0();
    v37 = v125 + 1;
    if (v124 == v49)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_24406EEF4()
{
  type metadata accessor for Transition();
  sub_2440D32F0();
  swift_getWitnessTable();
  return sub_2440D31E0();
}

uint64_t sub_24406EFB4(uint64_t a1)
{
  v2 = v1;
  v69 = a1;
  v3 = *v1;
  v4 = sub_2440D2C80();
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x28223BE20](v4);
  v59 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_2440D2CA0();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v57 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v3[10];
  v56 = *(v3 + 5);
  v8 = *(&v56 + 1);
  v9 = type metadata accessor for Transition();
  v53 = sub_2440D3630();
  v52 = *(v53 - 1);
  v10 = MEMORY[0x28223BE20](v53);
  v12 = &v46 - v11;
  v68 = *(v8 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v66 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v46 - v16;
  v70 = *(v9 - 8);
  v18 = MEMORY[0x28223BE20](v15);
  v55 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v19;
  MEMORY[0x28223BE20](v18);
  v65 = &v46 - v20;
  swift_beginAccess();
  v67 = v3[13];
  sub_2440D2EC0();
  v21 = v3[12];

  sub_2440D2EE0();

  if (!aBlock)
  {
    aBlock = 0;
    v73 = 0xE000000000000000;
    sub_2440D3830();
    MEMORY[0x245D57000](0xD000000000000024, 0x80000002440EE350);
    goto LABEL_5;
  }

  v49 = v21;
  v50 = v7;
  v23 = *(*v2 + 176);
  v63 = *v2 + 176;
  v64 = v23;
  v23(v22);
  sub_2440D2EE0();

  v51 = *(v68 + 8);
  v51(v17, v8);
  if ((*(v70 + 48))(v12, 1, v9) == 1)
  {
    (*(v52 + 8))(v12, v53);
    aBlock = 0;
    v73 = 0xE000000000000000;
    sub_2440D3830();
    v24 = MEMORY[0x245D57000](0xD000000000000025, 0x80000002440EE380);
    v25 = v66;
    v64(v24);
    sub_2440D39F0();
    v51(v25, v8);
    MEMORY[0x245D57000](0x65766520726F6620, 0xEC000000203A746ELL);
LABEL_5:
    sub_2440D39F0();
    sub_2440700D0(aBlock, v73);

    return 0;
  }

  v27 = v8;
  v48 = v8;
  v28 = v70;
  v53 = *(v70 + 32);
  v29 = v65;
  v30 = v53(v65, v12, v9);
  v31 = v66;
  v64(v30);
  (*(*v2 + 160))(v31);
  (*(v68 + 16))(v31, &v29[*(v9 + 36)], v27);
  (*(*v2 + 184))(v31);
  sub_243F5DB84();
  v69 = sub_2440D3530();
  v32 = *(v28 + 16);
  v33 = v55;
  v47 = v9;
  v32(v55, v29, v9);
  v34 = (*(v28 + 80) + 48) & ~*(v28 + 80);
  v35 = swift_allocObject();
  *&v36 = v49;
  *(&v36 + 1) = v67;
  *(v35 + 32) = v36;
  *(v35 + 16) = v56;
  v53((v35 + v34), v33, v9);
  v76 = sub_2440703E0;
  v77 = v35;
  aBlock = MEMORY[0x277D85DD0];
  v73 = 1107296256;
  v74 = sub_243F5F604;
  v75 = &block_descriptor_29;
  v37 = _Block_copy(&aBlock);
  v38 = v57;
  sub_2440D2C90();
  v71 = MEMORY[0x277D84F90];
  sub_243F91D78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F73DE0();
  v39 = v59;
  v40 = v62;
  sub_2440D3710();
  v41 = v69;
  MEMORY[0x245D57440](0, v38, v39, v37);
  _Block_release(v37);

  (*(v61 + 8))(v39, v40);
  (*(v58 + 8))(v38, v60);

  aBlock = 0;
  v73 = 0xE000000000000000;
  sub_2440D3830();
  v42 = MEMORY[0x245D57000](0xD000000000000013, 0x80000002440EE3B0);
  (*(*v2 + 152))(v42);
  v43 = v48;
  sub_2440D39F0();
  v44 = v51;
  v51(v31, v43);
  v45 = MEMORY[0x245D57000](544175136, 0xE400000000000000);
  v64(v45);
  sub_2440D39F0();
  v44(v31, v43);
  sub_2440700D0(aBlock, v73);

  (*(v70 + 8))(v65, v47);
  return 1;
}

uint64_t sub_24406F978()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  type metadata accessor for Transition();
  v3 = sub_2440D2EC0();
  swift_getTupleTypeMetadata2();
  v4 = sub_2440D3270();
  v5 = sub_24406FD94(v4, v2, v3, *(v1 + 96));

  v6 = *(*v0 + 136);
  swift_beginAccess();
  *(v0 + v6) = v5;
}

uint64_t sub_24406FA98()
{
  v1 = *(*v0 + 88);
  v2 = *(*(v1 - 8) + 8);
  v2(v0 + *(*v0 + 120), v1);
  v2(v0 + *(*v0 + 128), v1);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_24406FB68()
{
  sub_24406FA98();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_24406FBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2440D2F00();

  return sub_24406FC0C(a1, v6, a2, a3);
}

unint64_t sub_24406FC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_2440D2F50();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_24406FD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_2440D32B0())
  {
    sub_2440D3920();
    v13 = sub_2440D3910();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_2440D32B0();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_2440D3290())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_2440D3850();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_24406FBB0(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_2440700D0(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_243F4DF28();
  sub_243F4DE64(v7, v6);
  v8 = sub_2440D11E0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    return sub_243F5FAB0(v6);
  }

  v11 = sub_2440D11C0();
  v12 = sub_2440D3490();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_243F4E6F8(a1, a2, &v16);
    _os_log_impl(&dword_243F48000, v11, v12, "StateMachine: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x245D58570](v14, -1, -1);
    MEMORY[0x245D58570](v13, -1, -1);
  }

  return (*(v9 + 8))(v6, v8);
}

uint64_t sub_2440702B8()
{
  v1 = *(v0 + 24);
  v2 = (type metadata accessor for Transition() - 8);
  v3 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));
  v4 = *(*(v1 - 8) + 8);
  v4(v3, v1);
  v4(v3 + v2[11], v1);

  if (*(v3 + v2[13]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2440703E0()
{
  v1 = type metadata accessor for Transition();
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 52) + ((*(v3 + 80) + 48) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_244070470()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_244070548(uint64_t a1)
{
  sub_2440D1200();
  sub_2440D1220();
  result = sub_2440D1250();
  if (!result[1])
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!result[2])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!result[3])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!result[4])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!result[5])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!result[6])
  {
LABEL_15:
    __break(1u);
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5358);
  v3 = swift_allocObject();
  __asm { FMOV            V0.4S, #1.0 }

  *(v3 + 32) = _Q0;
  *(v3 + 48) = xmmword_2440E45F0;
  MEMORY[0x245D55130](a1, v3 + 32, &unk_28577BE58, 2, 1);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_2440D11F0();
  sub_2440D11F0();
  sub_2440D11F0();
  sub_2440D1210();
  sub_2440D1240();
  sub_2440D1240();
  sub_2440D1240();

  return sub_2440D1240();
}

void sub_24407070C()
{
  v0 = objc_opt_self();
  v1 = [v0 currentTraitCollection];
  [v1 displayCornerRadius];
  v3 = v2;

  if (v3 > 0.0)
  {
    v4 = [v0 currentTraitCollection];
    [v4 displayCornerRadius];
  }
}

double sub_244070874()
{
  if (sub_243FC0F94())
  {
    v0 = 20.0;
  }

  else
  {
    v0 = 30.0;
  }

  swift_beginAccess();
  return v0 * *&qword_27EDC5360;
}

uint64_t sub_244070A00()
{
  v0 = sub_2440D2CD0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2440D2CC0();
  swift_beginAccess();
  sub_2440D2D20();
  return (*(v1 + 8))(v3, v0);
}

double sub_244070BFC()
{
  if (*sub_243FC137C())
  {
    v0 = 30.0;
  }

  else
  {
    v0 = 20.0;
  }

  swift_beginAccess();
  return v0 * *&qword_27EDC5360;
}

double sub_244070C64()
{
  if (sub_243FC0F94())
  {
    v0 = 22.0;
  }

  else
  {
    v0 = 6.0;
  }

  swift_beginAccess();
  return v0 * *&qword_27EDC5360;
}

double sub_244070CC8()
{
  if (sub_243FC0F94())
  {
    v0 = 22.0;
  }

  else
  {
    v0 = 28.0;
  }

  swift_beginAccess();
  return v0 * *&qword_27EDC5360;
}

double sub_244070D2C()
{
  if (sub_243FC0F94())
  {
    v0 = 22.0;
  }

  else
  {
    v0 = 44.0;
  }

  swift_beginAccess();
  return v0 * *&qword_27EDC5360;
}

double sub_244070D94()
{
  if (sub_243FC0F94())
  {
    v0 = 16.0;
  }

  else
  {
    v0 = 28.0;
  }

  swift_beginAccess();
  return v0 * *&qword_27EDC5360;
}

double sub_244070DF8()
{
  if (sub_243FC0F94())
  {
    v0 = 0.0;
  }

  else
  {
    v0 = 12.0;
  }

  swift_beginAccess();
  return v0 * *&qword_27EDC5360;
}

double sub_244070E5C()
{
  if (sub_243FC0F94())
  {
    v0 = 16.0;
  }

  else
  {
    v0 = 32.0;
  }

  swift_beginAccess();
  return v0 * *&qword_27EDC5360;
}

double sub_244070EC4()
{
  if (sub_243FC0F94())
  {
    v0 = 16.0;
  }

  else
  {
    v0 = 24.0;
  }

  swift_beginAccess();
  return v0 * *&qword_27EDC5360;
}

double sub_244070F34()
{
  if (sub_243FC0F94())
  {
    v0 = 12.0;
  }

  else
  {
    v0 = 0.0;
  }

  swift_beginAccess();
  return v0 * *&qword_27EDC5360;
}

uint64_t sub_244070FB4()
{
  v0 = sub_2440D2CD0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2440D2CC0();
  sub_2440D2D20();
  return (*(v1 + 8))(v3, v0);
}

double sub_244071094()
{
  if (sub_243FC0F94())
  {
    v0 = 15.0;
  }

  else
  {
    v0 = 29.0;
  }

  swift_beginAccess();
  return v0 * *&qword_27EDC5360;
}

double sub_2440710F8()
{
  if (sub_243FC0F94())
  {
    v0 = 12.0;
  }

  else
  {
    v0 = 24.0;
  }

  swift_beginAccess();
  return v0 * *&qword_27EDC5360;
}

void sub_244071278(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = sub_2440D2F80();
  v9 = MGCopyAnswer();

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC53A0);
    if (swift_dynamicCast())
    {
      if (!*(v15 + 16))
      {
        goto LABEL_8;
      }

      sub_243FB03FC(0x746C7561666564, 0xE700000000000000);
      if ((v10 & 1) == 0)
      {
        goto LABEL_8;
      }

      swift_unknownObjectRetain();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC53A8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        return;
      }

      if (*(v15 + 16) == 4)
      {
        v11 = *(v15 + 40);
        v12 = *(v15 + 56);

        v16.origin.x = a1;
        v16.origin.y = a2;
        v16.size.width = a3;
        v16.size.height = a4;
        v13 = CGRectGetWidth(v16) / v11;
        v17.origin.x = a1;
        v17.origin.y = a2;
        v17.size.width = a3;
        v17.size.height = a4;
        v14 = (v13 + CGRectGetHeight(v17) / v12) * 0.5;
        swift_beginAccess();
        qword_27EDC5360 = *&v14;
      }

      else
      {
LABEL_8:
      }
    }
  }
}

id sub_2440714A8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CE3850]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC53C8);
  sub_2440D1F70();
  [v0 setNavigationDelegate_];

  sub_2440D1F70();
  [v0 setUIDelegate_];

  v1 = [v0 scrollView];
  [v1 setScrollEnabled_];

  v2 = [v0 scrollView];
  [v2 setTransfersVerticalScrollingToParent_];

  v3 = objc_opt_self();
  v4 = v0;
  v5 = [v3 clearColor];
  [v4 setBackgroundColor_];

  return v4;
}

void sub_244071608(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4AE0);
  MEMORY[0x28223BE20](v3 - 8);
  v123 = &v117 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v125 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v120 = &v117 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v118 = &v117 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v119 = &v117 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v117 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v117 - v17;
  v19 = *v1;
  v20 = v1[1];
  v121 = v1;
  v122 = v19;
  v21 = objc_opt_self();
  v124 = v20;

  v22 = [v21 sharedApplication];
  v23 = [v22 preferredContentSizeCategory];

  v131 = sub_243F4DFA8();
  sub_243F5F574(v131, v18, &qword_27EDC0A50);
  v24 = sub_2440D11E0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  v130 = v25 + 48;
  v128 = v25;
  v129 = v26;
  v27 = v26(v18, 1, v24);
  v126 = v23;
  v127 = v24;
  if (v27 == 1)
  {
    sub_243F5EED4(v18, &qword_27EDC0A50);
    v28 = v122;
  }

  else
  {
    v29 = v23;
    v30 = sub_2440D11C0();
    v31 = sub_2440D3460();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v132 = v33;
      *v32 = 136315138;
      v34 = sub_2440D2FB0();
      v36 = a1;
      v37 = sub_243F4E6F8(v34, v35, &v132);

      *(v32 + 4) = v37;
      a1 = v36;
      _os_log_impl(&dword_243F48000, v30, v31, "content size %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x245D58570](v33, -1, -1);
      MEMORY[0x245D58570](v32, -1, -1);
    }

    v28 = v122;
    (*(v128 + 8))(v18, v127);
  }

  v38 = v124;
  v39 = 0x6D65322E31;
  v40 = sub_2440D2FB0();
  v42 = v41;
  if (v40 == sub_2440D2FB0() && v42 == v43)
  {
    goto LABEL_8;
  }

  v44 = sub_2440D3A10();

  if (v44)
  {
    goto LABEL_10;
  }

  v65 = sub_2440D2FB0();
  v67 = v66;
  if (v65 == sub_2440D2FB0() && v67 == v68)
  {
    goto LABEL_8;
  }

  v69 = sub_2440D3A10();

  if (v69)
  {
    goto LABEL_10;
  }

  v70 = sub_2440D2FB0();
  v72 = v71;
  if (v70 == sub_2440D2FB0() && v72 == v73)
  {
    goto LABEL_8;
  }

  v74 = sub_2440D3A10();

  if (v74)
  {
    goto LABEL_10;
  }

  v75 = sub_2440D2FB0();
  v77 = v76;
  if (v75 == sub_2440D2FB0() && v77 == v78)
  {
LABEL_8:

LABEL_10:
    sub_243F5F574(v131, v16, &qword_27EDC0A50);
    v45 = v127;
    if (v129(v16, 1, v127) == 1)
    {
      sub_243F5EED4(v16, &qword_27EDC0A50);
    }

    else
    {
      v46 = sub_2440D11C0();
      v47 = sub_2440D3460();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_243F48000, v46, v47, "html m", v48, 2u);
        MEMORY[0x245D58570](v48, -1, -1);
      }

      (*(v128 + 8))(v16, v45);
    }

    v49 = 0x6D65342E31;
LABEL_16:
    v50 = 0xE500000000000000;
    goto LABEL_17;
  }

  v79 = sub_2440D3A10();

  if (v79)
  {
    goto LABEL_10;
  }

  v80 = sub_2440D2FB0();
  v82 = v81;
  if (v80 == sub_2440D2FB0() && v82 == v83)
  {
    v45 = v127;
    goto LABEL_36;
  }

  v103 = sub_2440D3A10();

  v45 = v127;
  if (v103)
  {
    goto LABEL_50;
  }

  v108 = sub_2440D2FB0();
  v110 = v109;
  if (v108 == sub_2440D2FB0() && v110 == v111)
  {
LABEL_36:

LABEL_50:
    v104 = v119;
    sub_243F5F574(v131, v119, &qword_27EDC0A50);
    if (v129(v104, 1, v45) == 1)
    {
      sub_243F5EED4(v104, &qword_27EDC0A50);
    }

    else
    {
      v105 = sub_2440D11C0();
      v106 = sub_2440D3460();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 0;
        _os_log_impl(&dword_243F48000, v105, v106, "html xl", v107, 2u);
        MEMORY[0x245D58570](v107, -1, -1);
      }

      (*(v128 + 8))(v104, v45);
    }

    v49 = 0x6D65362E31;
    v39 = 0x6D65342E31;
    goto LABEL_16;
  }

  v112 = sub_2440D3A10();

  if (v112)
  {
    goto LABEL_50;
  }

  v113 = v118;
  sub_243F5F574(v131, v118, &qword_27EDC0A50);
  if (v129(v113, 1, v45) == 1)
  {
    sub_243F5EED4(v113, &qword_27EDC0A50);
  }

  else
  {
    v114 = sub_2440D11C0();
    v115 = sub_2440D3460();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&dword_243F48000, v114, v115, "default html size", v116, 2u);
      MEMORY[0x245D58570](v116, -1, -1);
    }

    (*(v128 + 8))(v113, v45);
  }

  v50 = 0xE300000000000000;
  v49 = 0x6D65322E31;
  v39 = 7169329;
LABEL_17:
  v132 = 0;
  v133 = 0xE000000000000000;
  sub_2440D3830();
  MEMORY[0x245D57000](0xD000000000000259, 0x80000002440EE420);
  MEMORY[0x245D57000](v39, v50);

  MEMORY[0x245D57000](0xD00000000000002CLL, 0x80000002440EE680);
  MEMORY[0x245D57000](v49, 0xE500000000000000);
  MEMORY[0x245D57000](0xD000000000000022, 0x80000002440EE6B0);
  v52 = v132;
  v51 = v133;
  if (*(v121 + 16) == 1)
  {
    v132 = v28;
    v133 = v38;
    v136 = 0x3E646165683CLL;
    v137 = 0xE600000000000000;
    v53 = sub_2440D08A0();
    v54 = v123;
    (*(*(v53 - 8) + 56))(v123, 1, 1, v53);
    sub_243F4EF64();

    v55 = sub_2440D36A0();
    v57 = v56;
    v59 = v58;
    sub_243F5EED4(v54, &qword_27EDC4AE0);

    if (v59)
    {
      v132 = v52;
      v133 = v51;

      MEMORY[0x245D57000](0x3E646165682F3CLL, 0xE700000000000000);

      MEMORY[0x245D57000](v28, v38);
    }

    else
    {
      sub_2440724C8(v55, v57, v52, v51, v28, v38);
    }

    goto LABEL_39;
  }

  v132 = v28;
  v133 = v38;
  v136 = 0x3E646165682F3CLL;
  v137 = 0xE700000000000000;
  v60 = sub_2440D08A0();
  v61 = v123;
  (*(*(v60 - 8) + 56))(v123, 1, 1, v60);
  sub_243F4EF64();

  sub_2440D36A0();
  v63 = v62;
  sub_243F5EED4(v61, &qword_27EDC4AE0);

  if ((v63 & 1) == 0)
  {

    v132 = 0x3E6C6D74683CLL;
    v133 = 0xE600000000000000;
    MEMORY[0x245D57000](v52, v51);

    v84 = v45;
    v85 = v132;
    v86 = v133;

    v87 = sub_244073CEC(0xFuLL, v28, v38);
    v89 = v88;
    v91 = v90;
    v93 = v92;

    v136 = v85;
    v137 = v86;
    v45 = v84;
    v132 = v87;
    v133 = v89;
    v134 = v91;
    v135 = v93;
    sub_244073D38();
    sub_2440D30F0();

    goto LABEL_39;
  }

  v64 = v120;
  sub_243F5F574(v131, v120, &qword_27EDC0A50);
  if (v129(v64, 1, v45) == 1)
  {
    sub_243F5EED4(v64, &qword_27EDC0A50);
LABEL_39:
    v94 = v125;
    goto LABEL_40;
  }

  v99 = sub_2440D11C0();
  v100 = sub_2440D3460();
  v101 = os_log_type_enabled(v99, v100);
  v94 = v125;
  if (v101)
  {
    v102 = swift_slowAlloc();
    *v102 = 0;
    _os_log_impl(&dword_243F48000, v99, v100, "no header end tag, use as is", v102, 2u);
    MEMORY[0x245D58570](v102, -1, -1);
  }

  (*(v128 + 8))(v64, v45);
LABEL_40:
  sub_243F5F574(v131, v94, &qword_27EDC0A50);
  if (v129(v94, 1, v45) == 1)
  {
    sub_243F5EED4(v94, &qword_27EDC0A50);
  }

  else
  {
    v95 = sub_2440D11C0();
    v96 = sub_2440D3460();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_243F48000, v95, v96, "loading final html", v97, 2u);
      MEMORY[0x245D58570](v97, -1, -1);
    }

    (*(v128 + 8))(v94, v45);
  }

  v98 = sub_2440D2F80();
}

unint64_t sub_2440724C8(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{

  sub_2440D3670();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  sub_2440D3670();
  v15 = v14;

  if ((v15 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v17 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v17) = 1;
  }

  v18 = 4 << v17;
  v19 = a1;
  if ((a1 & 0xC) == 4 << v17)
  {
    result = sub_243FE48E4(a1, a5, a6);
    v19 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v20 = v19 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v21 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v22 = (v21 << 16) | 7;
    LOBYTE(v23) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v21 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v21 < v19 >> 16)
  {
    goto LABEL_42;
  }

  v20 = sub_2440D3140();
  v27 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v27 = 7;
  }

  v22 = v27 | (v21 << 16);
  v23 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  result = a2;
  if ((a2 & 0xC) == 4 << v23)
  {
    v28 = v22;
    result = sub_243FE48E4(a2, a5, a6);
    v22 = v28;
  }

  if ((v22 & 0xC) == v18)
  {
    v29 = result;
    v22 = sub_243FE48E4(v22, a5, a6);
    result = v29;
    if ((a6 & 0x1000000000000000) == 0)
    {
LABEL_15:
      result = (v22 >> 16) - (result >> 16);
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (v21 < result >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v21 >= v22 >> 16)
  {
    result = sub_2440D3140();
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_16:
      if ((a4 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(a4) & 0xF;
        v26 = __OFADD__(v20, v25);
        v24 = v20 + v25;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v24 = v20 + (a3 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v20, a3 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_21;
        }
      }

      goto LABEL_38;
    }

LABEL_36:
    v30 = result;
    v31 = sub_2440D3110();
    result = v30;
    v26 = __OFADD__(v20, v31);
    v24 = v20 + v31;
    if (!v26)
    {
LABEL_21:
      v26 = __OFADD__(v24, result);
      result += v24;
      if (!v26)
      {
        MEMORY[0x245D56F80](result);
LABEL_23:
        sub_2440D31C0();
        sub_244073D38();
        sub_2440D30F0();

        sub_2440D30F0();
        sub_244073CEC(a2, a5, a6);
        sub_2440D30F0();

        return 0;
      }

      goto LABEL_39;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

id sub_2440727DC(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_244073D8C(a1, v3 + OBJC_IVAR____TtCV19ContactlessReaderUI8HTMLView11Coordinator_parent);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_244073E10(a1);
  return v4;
}

uint64_t sub_244072850@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV19ContactlessReaderUI8HTMLView11Coordinator_parent;
  swift_beginAccess();
  return sub_244073D8C(v1 + v3, a1);
}

uint64_t sub_2440728A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV19ContactlessReaderUI8HTMLView11Coordinator_parent;
  swift_beginAccess();
  sub_244073E6C(a1, v1 + v3);
  return swift_endAccess();
}

void *sub_24407296C(void *a1)
{
  v2 = type metadata accessor for HTMLView(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v25 - v6;
  v8 = sub_243F4DFA8();
  sub_243F5F574(v8, v7, &qword_27EDC0A50);
  v9 = sub_2440D11E0();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_243F5EED4(v7, &qword_27EDC0A50);
  }

  else
  {
    v11 = a1;
    v12 = sub_2440D11C0();
    v13 = sub_2440D3460();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      v15 = [v11 scrollView];
      [v15 contentSize];
      v17 = v16;

      *(v14 + 4) = v17;
      _os_log_impl(&dword_243F48000, v12, v13, "webview didFinish: %f", v14, 0xCu);
      MEMORY[0x245D58570](v14, -1, -1);
    }

    (*(v10 + 8))(v7, v9);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    (*((*MEMORY[0x277D85000] & *result) + 0x58))();

    v20 = [a1 scrollView];
    [v20 contentSize];
    v22 = v21;

    v23 = v4[4];
    v24 = v4[5];
    v25[2] = v4[3];
    v25[3] = v23;
    v25[4] = v24;
    v25[1] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC53B0);
    sub_2440D2950();
    return sub_244073E10(v4);
  }

  return result;
}

uint64_t sub_244072CF8(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v110 = a4;
  v111 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC53E0);
  MEMORY[0x28223BE20](v5 - 8);
  v99 = &v90 - v6;
  v7 = sub_2440D0390();
  v100 = *(v7 - 8);
  v101 = v7;
  MEMORY[0x28223BE20](v7);
  v98 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC53C0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v103 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v109 = &v90 - v12;
  v104 = type metadata accessor for HTMLView(0);
  MEMORY[0x28223BE20](v104);
  v102 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v90 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1FE0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v90 - v21;
  v23 = sub_2440D02A0();
  v107 = *(v23 - 8);
  v108 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2440D05F0();
  v106 = *(v26 - 8);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v90 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v90 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v90 - v36;
  if ([a2 navigationType])
  {
    v38 = 1;
    return v111(v38);
  }

  v95 = v35;
  v96 = v32;
  v93 = v29;
  v94 = v20;
  v97 = v37;
  v39 = v109;
  v40 = [a2 request];
  sub_2440D0270();

  sub_2440D0290();
  (*(v107 + 8))(v25, v108);
  v41 = v106;
  v42 = *(v106 + 48);
  if (v42(v22, 1, v26) == 1)
  {
    sub_243F5EED4(v22, &qword_27EDC1FE0);
    v38 = 0;
    return v111(v38);
  }

  v108 = v42;
  v44 = *(v41 + 32);
  v45 = v97;
  v107 = v41 + 32;
  v92 = v44;
  v44(v97, v22, v26);
  v46 = sub_243F4DFA8();
  v47 = v16;
  sub_243F5F574(v46, v16, &qword_27EDC0A50);
  v48 = sub_2440D11E0();
  v49 = *(v48 - 8);
  if ((*(v49 + 48))(v47, 1, v48) == 1)
  {
    sub_243F5EED4(v47, &qword_27EDC0A50);
    v50 = v39;
    v52 = v102;
    v51 = v103;
    v53 = v45;
  }

  else
  {
    v54 = v95;
    (*(v41 + 16))(v95, v45, v26);
    v55 = sub_2440D11C0();
    v91 = sub_2440D3460();
    if (os_log_type_enabled(v55, v91))
    {
      v56 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v112 = v90;
      *v56 = 136315138;
      sub_244074350(&qword_27EDC53F0, MEMORY[0x277CC9260]);
      v57 = v55;
      v58 = sub_2440D39C0();
      v59 = v54;
      v61 = v60;
      (*(v41 + 8))(v59, v26);
      v62 = sub_243F4E6F8(v58, v61, &v112);

      v63 = v56;
      v50 = v109;
      *(v63 + 1) = v62;
      v64 = v63;
      _os_log_impl(&dword_243F48000, v57, v91, "webview decidePolicyFor: %s", v63, 0xCu);
      v65 = v90;
      __swift_destroy_boxed_opaque_existential_0(v90);
      MEMORY[0x245D58570](v65, -1, -1);
      MEMORY[0x245D58570](v64, -1, -1);
    }

    else
    {
      v50 = v39;

      (*(v41 + 8))(v54, v26);
    }

    v52 = v102;
    (*(v49 + 8))(v47, v48);
    v51 = v103;
    v53 = v97;
  }

  v111(0);
  v66 = sub_2440D05D0();
  v68 = v105;
  if (v67)
  {
    if (v66 == 0x7370747468 && v67 == 0xE500000000000000)
    {

LABEL_18:
      (*((*MEMORY[0x277D85000] & *v68) + 0x58))(v69);
      v71 = v96;
      (*(v41 + 16))(v96, v53, v26);
      sub_24408C470(v71, v50);
      v72 = type metadata accessor for WebContent();
      (*(*(v72 - 8) + 56))(v50, 0, 1, v72);
      sub_243F5F574(v50, v51, &qword_27EDC53C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17F8);
      sub_2440D2950();
      sub_243F5EED4(v50, &qword_27EDC53C0);
      sub_244073E10(v52);
      return (*(v41 + 8))(v53, v26);
    }

    v70 = sub_2440D3A10();
    v53 = v97;

    if (v70)
    {
      goto LABEL_18;
    }
  }

  v73 = sub_2440D05D0();
  if (!v74)
  {
    return (*(v41 + 8))(v53, v26);
  }

  if (v73 == 1886680168 && v74 == 0xE400000000000000)
  {

    goto LABEL_24;
  }

  v75 = sub_2440D3A10();

  if ((v75 & 1) == 0)
  {
    return (*(v41 + 8))(v53, v26);
  }

LABEL_24:
  v76 = v41;
  v77 = v26;
  v78 = v99;
  sub_2440D0360();
  v79 = v100;
  v80 = v101;
  if ((*(v100 + 48))(v78, 1, v101) == 1)
  {
    (*(v76 + 8))(v53, v77);
    return sub_243F5EED4(v78, &unk_27EDC53E0);
  }

  else
  {
    v81 = v78;
    v82 = v98;
    (*(v79 + 32))(v98, v81, v80);
    v83 = v79;
    sub_2440D0380();
    v84 = v94;
    sub_2440D0370();
    if (v108(v84, 1, v77) == 1)
    {
      (*(v79 + 8))(v82, v101);
      (*(v76 + 8))(v97, v77);
      return sub_243F5EED4(v84, &qword_27EDC1FE0);
    }

    else
    {
      v85 = v93;
      v86 = v92(v93, v84, v77);
      (*((*MEMORY[0x277D85000] & *v105) + 0x58))(v86);
      v87 = v96;
      (*(v76 + 16))(v96, v85, v77);
      sub_24408C470(v87, v50);
      v88 = type metadata accessor for WebContent();
      (*(*(v88 - 8) + 56))(v50, 0, 1, v88);
      sub_243F5F574(v50, v51, &qword_27EDC53C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17F8);
      sub_2440D2950();
      sub_243F5EED4(v50, &qword_27EDC53C0);
      sub_244073E10(v52);
      v89 = *(v76 + 8);
      v89(v85, v77);
      (*(v83 + 8))(v98, v101);
      return (v89)(v97, v77);
    }
  }
}

id sub_2440739EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HTMLView.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_244073A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a8;
  v9 = a7 + *(type metadata accessor for HTMLView(0) + 28);

  return sub_244074298(a6, v9);
}

uint64_t sub_244073AA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_244073D8C(v2, v5);
  v6 = type metadata accessor for HTMLView.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_244073D8C(v5, v7 + OBJC_IVAR____TtCV19ContactlessReaderUI8HTMLView11Coordinator_parent);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = sub_244073E10(v5);
  *a2 = v8;
  return result;
}

uint64_t sub_244073B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_244074350(&qword_27EDC54D0, type metadata accessor for HTMLView);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_244073C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_244074350(&qword_27EDC54D0, type metadata accessor for HTMLView);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_244073C94()
{
  sub_244074350(&qword_27EDC54D0, type metadata accessor for HTMLView);
  sub_2440D1CE0();
  __break(1u);
}

unint64_t sub_244073CEC(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_2440D31C0();
  }

  __break(1u);
  return result;
}

unint64_t sub_244073D38()
{
  result = qword_27EDC53D8;
  if (!qword_27EDC53D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC53D8);
  }

  return result;
}

uint64_t sub_244073D8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HTMLView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_244073E10(uint64_t a1)
{
  v2 = type metadata accessor for HTMLView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_244073E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HTMLView(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_244073ED0(void *a1)
{
  v22 = a1;
  v1 = sub_2440D2C80();
  v26 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2440D2CA0();
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2440D2CD0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  sub_243F5DB84();
  v14 = sub_2440D3530();
  sub_2440D2CC0();
  sub_2440D2D20();
  v23 = *(v8 + 8);
  v23(v11, v7);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v17 = v22;
  *(v16 + 16) = v22;
  *(v16 + 24) = v15;
  aBlock[4] = sub_2440753E0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_30;
  v18 = _Block_copy(aBlock);
  v19 = v17;

  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_244074350(&qword_27EDC0510, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F73DE0();
  sub_2440D3710();
  MEMORY[0x245D57400](v13, v6, v3, v18);
  _Block_release(v18);

  (*(v26 + 8))(v3, v1);
  (*(v24 + 8))(v6, v25);
  return (v23)(v13, v7);
}

uint64_t sub_244074298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_244074350(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2440743AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17F8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24407447C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17F8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24407452C()
{
  sub_2440745C8();
  if (v0 <= 0x3F)
  {
    sub_244074618();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2440745C8()
{
  if (!qword_27EDC53F8)
  {
    v0 = sub_2440D2980();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDC53F8);
    }
  }
}

void sub_244074618()
{
  if (!qword_27EDC5400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC53C0);
    v0 = sub_2440D2980();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDC5400);
    }
  }
}

uint64_t sub_244074684()
{
  result = type metadata accessor for HTMLView(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_244074714(void *a1, void *a2, uint64_t a3)
{
  v111 = a3;
  v107 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC53E0);
  MEMORY[0x28223BE20](v4 - 8);
  v102 = &v88[-v5];
  v6 = sub_2440D0390();
  v100 = *(v6 - 8);
  v101 = v6;
  MEMORY[0x28223BE20](v6);
  v99 = &v88[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC53C0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v104 = &v88[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v105 = &v88[-v11];
  v106 = type metadata accessor for HTMLView(0);
  MEMORY[0x28223BE20](v106);
  v103 = &v88[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v88[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1FE0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v88[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v21 = &v88[-v20];
  v22 = sub_2440D02A0();
  v109 = *(v22 - 8);
  v110 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v88[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_2440D05F0();
  v108 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v88[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v88[-v30];
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v88[-v33];
  MEMORY[0x28223BE20](v32);
  v36 = &v88[-v35];
  if (![a1 navigationType])
  {
    v96 = v34;
    v97 = v31;
    v94 = v28;
    v95 = v19;
    v98 = v36;
    v39 = [a1 request];
    sub_2440D0270();

    sub_2440D0290();
    (*(v109 + 8))(v24, v110);
    v40 = v108;
    v41 = *(v108 + 48);
    if (v41(v21, 1, v25) == 1)
    {
      sub_243F5EED4(v21, &qword_27EDC1FE0);
      return (*(v111 + 16))(v111, 0);
    }

    v110 = v41;
    v42 = *(v40 + 32);
    v43 = v98;
    v109 = v40 + 32;
    v93 = v42;
    v42(v98, v21, v25);
    v44 = sub_243F4DFA8();
    v45 = v15;
    sub_243F5F574(v44, v15, &qword_27EDC0A50);
    v46 = sub_2440D11E0();
    v47 = *(v46 - 8);
    if ((*(v47 + 48))(v15, 1, v46) == 1)
    {
      sub_243F5EED4(v15, &qword_27EDC0A50);
      v49 = v103;
      v48 = v104;
      v50 = v107;
      v51 = v111;
    }

    else
    {
      v92 = v46;
      v52 = v96;
      (*(v40 + 16))(v96, v43, v25);
      v53 = sub_2440D11C0();
      v54 = sub_2440D3460();
      v55 = os_log_type_enabled(v53, v54);
      v50 = v107;
      if (v55)
      {
        v56 = swift_slowAlloc();
        v90 = v56;
        v91 = swift_slowAlloc();
        v112 = v91;
        *v56 = 136315138;
        sub_244074350(&qword_27EDC53F0, MEMORY[0x277CC9260]);
        v89 = v54;
        v57 = sub_2440D39C0();
        v58 = v52;
        v60 = v59;
        (*(v40 + 8))(v58, v25);
        v61 = sub_243F4E6F8(v57, v60, &v112);

        v62 = v90;
        *(v90 + 1) = v61;
        v43 = v98;
        _os_log_impl(&dword_243F48000, v53, v89, "webview decidePolicyFor: %s", v62, 0xCu);
        v63 = v91;
        __swift_destroy_boxed_opaque_existential_0(v91);
        MEMORY[0x245D58570](v63, -1, -1);
        MEMORY[0x245D58570](v62, -1, -1);
      }

      else
      {

        (*(v40 + 8))(v52, v25);
      }

      v48 = v104;
      v51 = v111;
      (*(v47 + 8))(v45, v92);
      v49 = v103;
    }

    (*(v51 + 16))(v51, 0);
    v64 = sub_2440D05D0();
    v66 = v105;
    if (v65)
    {
      if (v64 == 0x7370747468 && v65 == 0xE500000000000000)
      {

LABEL_18:
        (*((*MEMORY[0x277D85000] & *v50) + 0x58))(v67);
        v69 = v97;
        (*(v40 + 16))(v97, v43, v25);
        sub_24408C470(v69, v66);
        v70 = type metadata accessor for WebContent();
        (*(*(v70 - 8) + 56))(v66, 0, 1, v70);
        sub_243F5F574(v66, v48, &qword_27EDC53C0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17F8);
        sub_2440D2950();
        sub_243F5EED4(v66, &qword_27EDC53C0);
        sub_244073E10(v49);
        return (*(v40 + 8))(v43, v25);
      }

      v68 = sub_2440D3A10();
      v43 = v98;

      if (v68)
      {
        goto LABEL_18;
      }
    }

    v71 = sub_2440D05D0();
    v73 = v102;
    if (v72)
    {
      if (v71 == 1886680168 && v72 == 0xE400000000000000)
      {

        goto LABEL_24;
      }

      v74 = sub_2440D3A10();
      v43 = v98;

      if (v74)
      {
LABEL_24:
        sub_2440D0360();
        v75 = v43;
        v76 = v100;
        v77 = v101;
        if ((*(v100 + 48))(v73, 1, v101) == 1)
        {
          (*(v40 + 8))(v75, v25);
          return sub_243F5EED4(v73, &unk_27EDC53E0);
        }

        else
        {
          v78 = v73;
          v79 = v40;
          v80 = v99;
          (*(v76 + 32))(v99, v78, v77);
          v81 = v76;
          sub_2440D0380();
          v82 = v95;
          sub_2440D0370();
          if (v110(v82, 1, v25) == 1)
          {
            (*(v76 + 8))(v80, v101);
            (*(v79 + 8))(v98, v25);
            return sub_243F5EED4(v82, &qword_27EDC1FE0);
          }

          else
          {
            v83 = v94;
            v84 = v93(v94, v82, v25);
            (*((*MEMORY[0x277D85000] & *v107) + 0x58))(v84);
            v85 = v97;
            (*(v79 + 16))(v97, v83, v25);
            sub_24408C470(v85, v66);
            v86 = type metadata accessor for WebContent();
            (*(*(v86 - 8) + 56))(v66, 0, 1, v86);
            sub_243F5F574(v66, v48, &qword_27EDC53C0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17F8);
            sub_2440D2950();
            sub_243F5EED4(v66, &qword_27EDC53C0);
            sub_244073E10(v49);
            v87 = *(v79 + 8);
            v87(v83, v25);
            (*(v81 + 8))(v99, v101);
            return (v87)(v98, v25);
          }
        }
      }
    }

    return (*(v40 + 8))(v43, v25);
  }

  v37 = *(v111 + 16);

  return v37();
}

uint64_t sub_244075368()
{
  MEMORY[0x245D58620](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2440753A0()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for TermsOfServiceSheet()
{
  result = qword_27EDD2070;
  if (!qword_27EDD2070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24407544C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0EF8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v45 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC54F8);
  v51 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5500);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v54 = &v43 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5508);
  v48 = *(v16 - 8);
  v49 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v50 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v43 - v19;
  v55 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5510);
  sub_243F5DD50(&qword_27EDC5518, &qword_27EDC5510);
  v47 = v20;
  sub_2440D1820();
  v21 = *a1;
  if (*a1)
  {
    v53 = v14;
    v22 = *(*v21 + 480);

    LOBYTE(v22) = v22(v23);

    v24 = 1;
    if (v22)
    {
      *v10 = sub_2440D1C20();
      *(v10 + 1) = 0;
      v10[16] = 1;
      v25 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5528) + 44)];
      v26 = v45;
      sub_2440D14F0();
      v44 = v10;
      v27 = *(v4 + 16);
      v28 = v46;
      v27(v46, v26, v3);
      *v25 = 0;
      v25[8] = 1;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5530);
      v27(&v25[*(v29 + 48)], v28, v3);
      v30 = &v25[*(v29 + 64)];
      *v30 = 0;
      v30[8] = 1;
      v31 = *(v4 + 8);
      v31(v26, v3);
      v31(v28, v3);
      sub_243F681C8(v44, v54, &qword_27EDC54F8);
      v24 = 0;
    }

    v32 = v54;
    (*(v51 + 56))(v54, v24, 1, v8);
    v33 = v47;
    v34 = v48;
    v35 = *(v48 + 16);
    v37 = v49;
    v36 = v50;
    v35(v50, v47, v49);
    v38 = v53;
    sub_243F5F574(v32, v53, &qword_27EDC5500);
    v39 = v52;
    v35(v52, v36, v37);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5520);
    sub_243F5F574(v38, &v39[*(v40 + 48)], &qword_27EDC5500);
    sub_243F5EED4(v32, &qword_27EDC5500);
    v41 = *(v34 + 8);
    v41(v33, v37);
    sub_243F5EED4(v38, &qword_27EDC5500);
    return (v41)(v36, v37);
  }

  else
  {
    type metadata accessor for RegistrationViewModel();
    sub_24407BDC0(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel);
    result = sub_2440D1910();
    __break(1u);
  }

  return result;
}

uint64_t sub_244075A08@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = type metadata accessor for TermsOfServiceSheet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_244079BE0(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  result = sub_24407BD58(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for TermsOfServiceSheet);
  *a2 = sub_24407A250;
  a2[1] = v8;
  return result;
}

uint64_t sub_244075B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v111 = a2;
  v104 = a1;
  v105 = a3;
  v103 = sub_2440D18A0();
  v101 = *(v103 - 8);
  v102 = *(v101 + 64);
  MEMORY[0x28223BE20](v103);
  v100 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TermsOfServiceSheet();
  v6 = *(v5 - 8);
  v91 = v5 - 8;
  v95 = v6;
  v109 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v108 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17F8);
  MEMORY[0x28223BE20](v8 - 8);
  v110 = &v84 - v9;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5538);
  v10 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v12 = &v84 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5540);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v84 - v15;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5548);
  MEMORY[0x28223BE20](v85);
  v18 = &v84 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5550);
  v20 = *(v19 - 8);
  v87 = v19;
  v88 = v20;
  MEMORY[0x28223BE20](v19);
  v86 = &v84 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5558);
  v23 = *(v22 - 8);
  v92 = v22;
  v93 = v23;
  MEMORY[0x28223BE20](v22);
  v107 = &v84 - v24;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5560);
  v94 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v89 = &v84 - v25;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5568);
  MEMORY[0x28223BE20](v90);
  v106 = &v84 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5570);
  v98 = *(v27 - 8);
  v99 = v27;
  MEMORY[0x28223BE20](v27);
  v97 = &v84 - v28;
  sub_2440D2090();
  v114 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5578);
  sub_243F5DD50(&qword_27EDC5580, &qword_27EDC5578);
  sub_2440D13E0();
  sub_2440D2AE0();
  sub_2440D18E0();
  (*(v10 + 32))(v16, v12, v84);
  v29 = &v16[*(v14 + 44)];
  v30 = v124;
  *(v29 + 4) = v123;
  *(v29 + 5) = v30;
  *(v29 + 6) = v125;
  v31 = v120;
  *v29 = v119;
  *(v29 + 1) = v31;
  v32 = v122;
  *(v29 + 2) = v121;
  *(v29 + 3) = v32;
  LOBYTE(v3) = sub_2440D20A0();
  sub_244070F28();
  swift_beginAccess();
  sub_2440D13D0();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_243F681C8(v16, v18, &qword_27EDC5540);
  v41 = v85;
  v42 = &v18[*(v85 + 36)];
  *v42 = v3;
  *(v42 + 1) = v34;
  *(v42 + 2) = v36;
  *(v42 + 3) = v38;
  *(v42 + 4) = v40;
  v42[40] = 0;
  v43 = v111;
  v113 = v111;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5588);
  v45 = sub_24407A3A0(&qword_27EDC5590, &qword_27EDC5548, &unk_2440E48E8, sub_24407A2E0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC55A8);
  v47 = sub_243F5DD50(&qword_27EDC55B0, &qword_27EDC55A8);
  v115 = v46;
  v116 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = v86;
  sub_2440D25B0();
  sub_243F5EED4(v18, &qword_27EDC5548);
  sub_2440D1C30();
  v112 = v43;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC55B8);
  v115 = v41;
  v116 = v44;
  v117 = v45;
  v118 = OpaqueTypeConformance2;
  v85 = swift_getOpaqueTypeConformance2();
  v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC55C0);
  v51 = sub_24407A3A0(&qword_27EDC55C8, &qword_27EDC55C0, &unk_2440E4938, sub_24407A424);
  v115 = v50;
  v116 = v51;
  v83 = swift_getOpaqueTypeConformance2();
  v52 = v87;
  sub_2440D23B0();
  v53 = v49;
  v54 = v52;
  (*(v88 + 8))(v53, v52);
  v91 = *(v91 + 44);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17A8);
  v55 = v111;
  sub_2440D2840();
  v56 = v108;
  sub_244079BE0(v55, v108);
  v57 = (*(v95 + 80) + 16) & ~*(v95 + 80);
  v58 = swift_allocObject();
  v95 = type metadata accessor for TermsOfServiceSheet;
  sub_24407BD58(v56, v58 + v57, type metadata accessor for TermsOfServiceSheet);
  sub_244079BE0(v55, v56);
  v59 = swift_allocObject();
  sub_24407BD58(v56, v59 + v57, type metadata accessor for TermsOfServiceSheet);
  type metadata accessor for WebContent();
  type metadata accessor for SafariWebView();
  v115 = v54;
  v116 = v84;
  v117 = v85;
  v118 = v83;
  swift_getOpaqueTypeConformance2();
  sub_24407BDC0(&qword_27EDC18F0, type metadata accessor for WebContent);
  sub_24407BDC0(&qword_27EDC18F8, type metadata accessor for SafariWebView);
  v60 = v89;
  v61 = v110;
  v62 = v92;
  v63 = v107;
  sub_2440D2570();

  sub_243F5EED4(v61, &qword_27EDC17F8);
  (*(v93 + 8))(v63, v62);
  v64 = sub_2440D2BA0();
  v65 = v106;
  v66 = &v106[*(v90 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1900);
  v67 = v111;
  sub_2440D2820();
  *v66 = v64;
  (*(v94 + 32))(v65, v60, v96);
  v68 = v67;
  v69 = *(v67 + 80);
  v115 = *(v67 + 72);
  v116 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
  sub_2440D2820();
  v71 = v100;
  v70 = v101;
  v72 = v103;
  (*(v101 + 16))(v100, v104, v103);
  v73 = v70;
  v74 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v75 = swift_allocObject();
  (*(v73 + 32))(v75 + v74, v71, v72);
  sub_24407A680();
  v76 = v97;
  v77 = v106;
  sub_2440D25E0();

  sub_243F5EED4(v77, &qword_27EDC5568);
  v78 = v108;
  sub_244079BE0(v68, v108);
  v79 = swift_allocObject();
  sub_24407BD58(v78, v79 + v57, v95);
  v80 = v105;
  (*(v98 + 32))(v105, v76, v99);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC55F8);
  v82 = (v80 + *(result + 36));
  *v82 = 0;
  v82[1] = 0;
  v82[2] = sub_24407A9E4;
  v82[3] = v79;
  return result;
}

uint64_t sub_244076858@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5740);
  MEMORY[0x28223BE20](v112);
  v113 = &v93 - v3;
  v4 = sub_2440D1BC0();
  v102 = *(v4 - 8);
  v103 = v4;
  MEMORY[0x28223BE20](v4);
  v101 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17F8);
  MEMORY[0x28223BE20](v6 - 8);
  v99 = &v93 - v7;
  v8 = type metadata accessor for HTMLView(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v93 - v12;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1978);
  v14 = MEMORY[0x28223BE20](v100);
  v97 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v96 = &v93 - v16;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1980);
  v17 = MEMORY[0x28223BE20](v109);
  v19 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v93 - v21;
  MEMORY[0x28223BE20](v20);
  v98 = &v93 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5748);
  MEMORY[0x28223BE20](v24);
  v26 = &v93 - v25;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5750);
  MEMORY[0x28223BE20](v104);
  v28 = &v93 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5758);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v111 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v117 = &v93 - v32;
  v110 = sub_2440D2690();
  sub_2440D2B00();
  sub_2440D1560();
  v116 = v134;
  v108 = v138;
  v106 = v136;
  v107 = v139;
  v115 = v135;
  LOBYTE(v140) = v135;
  v105 = v137;
  LOBYTE(v123) = v137;
  v33 = a1[5];
  LOBYTE(v140) = *(a1 + 32);
  *(&v140 + 1) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  sub_2440D2820();
  v34 = *a1;
  if (v123 == 1)
  {
    v94 = v26;
    v95 = v24;
    v97 = v28;
    if (v34)
    {
      v35 = *(*v34 + 528);

      v37 = v35(v36);

      v38 = (*(*v37 + 176))(1);
      v40 = v39;

      v42 = a1[10];
      v123 = a1[9];
      v41 = v123;
      v124 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
      sub_2440D2840();
      v43 = v140;
      v44 = *&v141;
      type metadata accessor for TermsOfServiceSheet();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17A8);
      v45 = v99;
      sub_2440D2840();
      v46 = sub_243F4E2F4();
      sub_244073A34(v38, v40, v46 & 1, v43, *(&v43 + 1), v45, v13, v44);
      *&v140 = v41;
      *(&v140 + 1) = v42;
      sub_2440D2820();
      sub_2440D2B10();
      sub_2440D18E0();
      v47 = v96;
      sub_24407BD58(v13, v96, type metadata accessor for HTMLView);
      v48 = v101;
      v49 = (v47 + *(v100 + 36));
      v50 = v145;
      v49[4] = v144;
      v49[5] = v50;
      v49[6] = v146;
      v51 = v141;
      *v49 = v140;
      v49[1] = v51;
      v52 = v143;
      v49[2] = v142;
      v49[3] = v52;
      sub_2440D1BA0();
      sub_243FA84E0();
      v53 = v98;
      sub_2440D24C0();
      (*(v102 + 8))(v48, v103);
      sub_243F5EED4(v47, &qword_27EDC1978);
      KeyPath = swift_getKeyPath();
      v55 = v94;
      v56 = &v94[*(v95 + 36)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC56A8);
      sub_2440D0710();
      *v56 = KeyPath;
      sub_243F681C8(v53, v55, &qword_27EDC1980);
      sub_24407BEBC();
      v57 = v97;
      sub_2440D24E0();
      sub_243F5EED4(v55, &qword_27EDC5748);
      v58 = &qword_27EDC5750;
      sub_243F5F574(v57, v113, &qword_27EDC5750);
      swift_storeEnumTagMultiPayload();
      sub_24407BE08(&qword_27EDC5760, &qword_27EDC5750, &unk_2440E4B90, sub_24407BEBC);
      sub_24407BE08(&qword_27EDC5770, &qword_27EDC1980, &unk_2440E4B80, sub_243FA84E0);
      v59 = v117;
      sub_2440D1D20();
      v60 = v57;
LABEL_6:
      sub_243F5EED4(v60, v58);
      v82 = v111;
      sub_243F5F574(v59, v111, &qword_27EDC5758);
      v83 = v110;
      *&v118 = v110;
      *(&v118 + 1) = v116;
      LOBYTE(v119) = v115;
      *(&v119 + 1) = v148[0];
      DWORD1(v119) = *(v148 + 3);
      v84 = v106;
      v85 = v107;
      *(&v119 + 1) = v106;
      v86 = v105;
      LOBYTE(v120) = v105;
      *(&v120 + 1) = *v147;
      DWORD1(v120) = *&v147[3];
      v87 = v108;
      *(&v120 + 1) = v108;
      *&v121 = v107;
      *(&v121 + 1) = 7368564;
      v122 = 0xE300000000000000;
      v88 = v114;
      *(v114 + 64) = 0xE300000000000000;
      v89 = v119;
      *v88 = v118;
      v88[1] = v89;
      v90 = v121;
      v88[2] = v120;
      v88[3] = v90;
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5778);
      sub_243F5F574(v82, v88 + *(v91 + 48), &qword_27EDC5758);
      sub_243F5F574(&v118, &v123, &qword_27EDC19A0);
      sub_243F5EED4(v117, &qword_27EDC5758);
      sub_243F5EED4(v82, &qword_27EDC5758);
      v123 = v83;
      v124 = v116;
      v125 = v115;
      *v126 = v148[0];
      *&v126[3] = *(v148 + 3);
      v127 = v84;
      v128 = v86;
      *v129 = *v147;
      *&v129[3] = *&v147[3];
      v130 = v87;
      v131 = v85;
      v132 = 7368564;
      v133 = 0xE300000000000000;
      return sub_243F5EED4(&v123, &qword_27EDC19A0);
    }
  }

  else
  {
    v96 = v19;
    v98 = v22;
    if (v34)
    {
      v61 = *(*v34 + 528);

      v63 = v61(v62);

      v64 = sub_243F4E2F4();
      v65 = (*(*v63 + 176))(v64 & 1);
      v67 = v66;

      v69 = a1[10];
      v123 = a1[9];
      v68 = v123;
      v124 = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
      sub_2440D2840();
      v70 = v140;
      v71 = *&v141;
      type metadata accessor for TermsOfServiceSheet();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17A8);
      v72 = v99;
      sub_2440D2840();
      v73 = sub_243F4E2F4();
      sub_244073A34(v65, v67, v73 & 1, v70, *(&v70 + 1), v72, v11, v71);
      *&v140 = v68;
      *(&v140 + 1) = v69;
      sub_2440D2820();
      sub_2440D2B10();
      sub_2440D18E0();
      v74 = v97;
      sub_24407BD58(v11, v97, type metadata accessor for HTMLView);
      v75 = v101;
      v76 = (v74 + *(v100 + 36));
      v77 = v145;
      v76[4] = v144;
      v76[5] = v77;
      v76[6] = v146;
      v78 = v141;
      *v76 = v140;
      v76[1] = v78;
      v79 = v143;
      v76[2] = v142;
      v76[3] = v79;
      sub_2440D1BA0();
      sub_243FA84E0();
      v80 = v96;
      sub_2440D24C0();
      (*(v102 + 8))(v75, v103);
      sub_243F5EED4(v74, &qword_27EDC1978);
      v81 = v98;
      sub_2440D1800();
      v58 = &qword_27EDC1980;
      sub_243F5EED4(v80, &qword_27EDC1980);
      sub_243F5F574(v81, v113, &qword_27EDC1980);
      swift_storeEnumTagMultiPayload();
      sub_24407BE08(&qword_27EDC5760, &qword_27EDC5750, &unk_2440E4B90, sub_24407BEBC);
      sub_24407BE08(&qword_27EDC5770, &qword_27EDC1980, &unk_2440E4B80, sub_243FA84E0);
      v59 = v117;
      sub_2440D1D20();
      v60 = v81;
      goto LABEL_6;
    }
  }

  type metadata accessor for RegistrationViewModel();
  sub_24407BDC0(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel);
  result = sub_2440D1910();
  __break(1u);
  return result;
}

uint64_t sub_2440776F4(uint64_t a1)
{
  v2 = sub_2440D1DC0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC55A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_2440D1DB0();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC56F8);
  sub_243F5DD50(&qword_27EDC5700, &qword_27EDC56F8);
  sub_2440D18D0();
  v7 = sub_243F5DD50(&qword_27EDC55B0, &qword_27EDC55A8);
  MEMORY[0x245D55CE0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2440778E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = type metadata accessor for TermsOfServiceSheet();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5708);
  v55 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v52 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5710);
  v10 = MEMORY[0x28223BE20](v57);
  v61 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v60 = v52 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v59 = v52 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v52 - v17;
  MEMORY[0x28223BE20](v16);
  v58 = v52 - v19;
  sub_244079BE0(a1, v6);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = v20 + v5;
  v22 = swift_allocObject();
  v53 = v20;
  v56 = v6;
  sub_24407BD58(v6, v22 + v20, type metadata accessor for TermsOfServiceSheet);
  *(v22 + v21) = 0;
  v63 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5718);
  v24 = sub_24407BE08(&qword_27EDC5720, &qword_27EDC5718, &unk_2440E4B20, sub_24407B798);
  v54 = v23;
  v52[1] = v24;
  sub_2440D2870();
  v25 = a1;
  v26 = *a1;
  if (*a1)
  {
    v27 = *(*v26 + 480);

    v29 = v27(v28);

    KeyPath = swift_getKeyPath();
    v31 = swift_allocObject();
    *(v31 + 16) = v29 & 1;
    (*(v55 + 32))(v18, v9, v7);
    v32 = v57;
    v33 = &v18[*(v57 + 36)];
    *v33 = KeyPath;
    v33[1] = sub_243FF6164;
    v33[2] = v31;
    v34 = v58;
    sub_243F681C8(v18, v58, &qword_27EDC5710);
    v35 = v25;
    v36 = v25;
    v37 = v56;
    sub_244079BE0(v36, v56);
    v38 = swift_allocObject();
    v39 = sub_24407BD58(v37, v38 + v53, type metadata accessor for TermsOfServiceSheet);
    *(v38 + v21) = 1;
    MEMORY[0x28223BE20](v39);
    v52[-2] = v35;
    v40 = v59;
    sub_2440D2870();
    v41 = *(*v26 + 480);

    LOBYTE(v38) = v41(v42);

    v43 = swift_getKeyPath();
    v44 = swift_allocObject();
    *(v44 + 16) = v38 & 1;
    v45 = (v40 + *(v32 + 36));
    *v45 = v43;
    v45[1] = sub_243FF7220;
    v45[2] = v44;
    v46 = v60;
    sub_243F5F574(v34, v60, &qword_27EDC5710);
    v47 = v61;
    sub_243F5F574(v40, v61, &qword_27EDC5710);
    v48 = v62;
    sub_243F5F574(v46, v62, &qword_27EDC5710);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5738);
    v50 = v48 + *(v49 + 48);
    *v50 = 0;
    *(v50 + 8) = 1;
    sub_243F5F574(v47, v48 + *(v49 + 64), &qword_27EDC5710);
    sub_243F5EED4(v40, &qword_27EDC5710);
    sub_243F5EED4(v34, &qword_27EDC5710);
    sub_243F5EED4(v47, &qword_27EDC5710);
    return sub_243F5EED4(v46, &qword_27EDC5710);
  }

  else
  {
    type metadata accessor for RegistrationViewModel();
    sub_24407BDC0(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel);
    result = sub_2440D1910();
    __break(1u);
  }

  return result;
}

void sub_244077F60(uint64_t *a1)
{
  v2 = sub_2440D1BE0();
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC55C0);
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - v4;
  *v5 = sub_2440D1C20();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5600);
  sub_2440781C0(a1, &v5[*(v6 + 44)]);
}

uint64_t sub_24407809C()
{
  v7 = sub_2440D20A0();
  sub_244070F28();
  swift_beginAccess();
  sub_2440D13D0();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC55D8) + 36);
  *v16 = v7;
  *(v16 + 8) = v9;
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  *(v16 + 32) = v15;
  *(v16 + 40) = 0;
  v17 = sub_2440D20D0();
  sub_244070EC4();
  sub_2440D13D0();
  v18 = v4 + *(v5 + 36);
  *v18 = v17;
  *(v18 + 8) = v19;
  *(v18 + 16) = v20;
  *(v18 + 24) = v21;
  *(v18 + 32) = v22;
  *(v18 + 40) = 0;
  sub_2440D1BD0();
  sub_24407A3A0(&qword_27EDC55C8, v1, v2, sub_24407A424);
  sub_2440D2470();
  (*(v6 + 8))(v3, v0);
  return sub_243F5EED4(v4, v1);
}

void sub_2440781C0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a1;
  v94 = a2;
  v2 = type metadata accessor for TermsOfServiceSheet();
  v74 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v75 = v3;
  v76 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0010);
  MEMORY[0x28223BE20](v73);
  v84 = &v64 - v4;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5608);
  MEMORY[0x28223BE20](v78);
  v80 = &v64 - v5;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5610);
  MEMORY[0x28223BE20](v79);
  v81 = &v64 - v6;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5618);
  MEMORY[0x28223BE20](v82);
  v83 = &v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5620);
  v67 = *(v8 - 8);
  v68 = v8;
  MEMORY[0x28223BE20](v8);
  v66 = &v64 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5628);
  MEMORY[0x28223BE20](v65);
  v70 = &v64 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5630);
  MEMORY[0x28223BE20](v72);
  v71 = &v64 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5638);
  v92 = *(v12 - 8);
  v93 = v12;
  MEMORY[0x28223BE20](v12);
  v69 = &v64 - v13;
  v14 = sub_2440D0880();
  v87 = *(v14 - 8);
  v88 = v14;
  MEMORY[0x28223BE20](v14);
  v86 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1F88);
  MEMORY[0x28223BE20](v16 - 8);
  v89 = &v64 - v17;
  v18 = sub_2440D08A0();
  v104 = *(v18 - 8);
  v105 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v85 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v102 = &v64 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1F90);
  MEMORY[0x28223BE20](v22 - 8);
  v103 = &v64 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5640);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v91 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v106 = &v64 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5648);
  v96 = *(v28 - 8);
  v97 = v28;
  MEMORY[0x28223BE20](v28);
  v95 = &v64 - v29;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5650);
  MEMORY[0x28223BE20](v99);
  v101 = &v64 - v30;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5658);
  v31 = MEMORY[0x28223BE20](v100);
  v90 = &v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v98 = &v64 - v34;
  MEMORY[0x28223BE20](v33);
  v107 = &v64 - v35;
  sub_24401FBC0();
  v36 = sub_24401FBD4();
  v38 = v37;
  v40 = v39;
  sub_2440D2180();
  v41 = sub_2440D22A0();
  v43 = v42;
  v45 = v44;
  sub_243F62C68(v36, v38, v40 & 1);

  sub_2440D2160();
  v46 = sub_2440D22E0();
  v48 = v47;
  LOBYTE(v38) = v49;

  sub_243F62C68(v41, v43, v45 & 1);

  sub_243FFAE40();

  v50 = sub_2440D22C0();
  v52 = v51;
  v54 = v53;
  v56 = v55;

  sub_243F62C68(v46, v48, v38 & 1);

  sub_2440D2B10();
  sub_2440D18E0();
  v132 = v54 & 1;
  v57 = *v108;
  if (*v108)
  {
    v58 = v132;
    v59 = *(*v57 + 480);

    LOBYTE(v59) = v59(v60);
    v77 = v57;

    if (v59)
    {
      v61 = 0.25;
    }

    else
    {
      v61 = 1.0;
    }

    v117 = v129;
    v118 = v130;
    v119 = v131;
    v113 = v125;
    v114 = v126;
    v116 = v128;
    v115 = v127;
    KeyPath = swift_getKeyPath();
    v63 = swift_getKeyPath();
    v109 = v50;
    v110 = v52;
    v111 = v58;
    v112 = v56;
    v120 = v61;
    v121 = KeyPath;
    v122 = 0;
    v123 = v63;
    v124 = 0x3FE0000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5660);
    sub_24407AAC0();
    sub_24408F1C4();
  }

  type metadata accessor for RegistrationViewModel();
  sub_24407BDC0(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel);
  sub_2440D1910();
  __break(1u);
}

uint64_t sub_24407970C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_2440797DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC53C0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - v4;
  v6 = type metadata accessor for WebContent();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for TermsOfServiceSheet();
  sub_243F5F574(v5, v3, &qword_27EDC53C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17A8);
  sub_2440D2830();
  return sub_243F5EED4(v5, &qword_27EDC53C0);
}

uint64_t sub_24407991C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2440D05F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WebContent();
  (*(v5 + 16))(v7, a1 + *(v8 + 20), v4);
  return sub_2440301A8(v7, a2);
}

uint64_t sub_244079A00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v10 - v1;
  v3 = sub_243F4DFA8();
  sub_243F5F574(v3, v2, &qword_27EDC0A50);
  v4 = sub_2440D11E0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_243F5EED4(v2, &qword_27EDC0A50);
  }

  else
  {
    v6 = sub_2440D11C0();
    v7 = sub_2440D3460();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_243F48000, v6, v7, "TOS content changed, scrolling to top", v8, 2u);
      MEMORY[0x245D58570](v8, -1, -1);
    }

    (*(v5 + 8))(v2, v4);
  }

  v10[0] = 7368564;
  v10[1] = 0xE300000000000000;
  sub_2440D2C20();
  return sub_2440D1890();
}

uint64_t sub_244079BE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TermsOfServiceSheet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_244079C50()
{
  type metadata accessor for RegistrationViewModel();
  sub_24407BDC0(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel);

  return sub_2440D1930();
}

uint64_t sub_244079CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, double a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  v27 = a8;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC53C0);
  MEMORY[0x28223BE20](v19);
  v21 = &v27 - v20;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  LOBYTE(v28) = a5;
  sub_2440D2810();
  v22 = *(&v30 + 1);
  *(a9 + 32) = v30;
  *(a9 + 40) = v22;
  v28 = a6;
  v29 = a7;
  sub_2440D2810();
  v23 = v31;
  *(a9 + 48) = v30;
  *(a9 + 64) = v23;
  v28 = a10;
  sub_2440D2810();
  v24 = *(&v30 + 1);
  *(a9 + 72) = v30;
  *(a9 + 80) = v24;
  type metadata accessor for TermsOfServiceSheet();
  v25 = v27;
  sub_243F5F574(v27, v21, &qword_27EDC53C0);
  sub_2440D2810();
  return sub_243F5EED4(v25, &qword_27EDC53C0);
}

uint64_t sub_244079E7C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_2440D2B00();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC54D8);
  return sub_24407544C(v1, a1 + *(v4 + 44));
}

uint64_t sub_244079EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17A8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_244079FAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24407A05C()
{
  sub_24407A170();
  if (v0 <= 0x3F)
  {
    sub_243FA7170();
    if (v1 <= 0x3F)
    {
      sub_243F8AF54(319, &qword_27EDC0280);
      if (v2 <= 0x3F)
      {
        sub_243F8AF54(319, &qword_27EDC0288);
        if (v3 <= 0x3F)
        {
          sub_243F8AF54(319, &qword_27EDC0278);
          if (v4 <= 0x3F)
          {
            sub_243FA7210();
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

void sub_24407A170()
{
  if (!qword_27EDC54E0)
  {
    type metadata accessor for RegistrationViewModel();
    sub_24407BDC0(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel);
    v0 = sub_2440D1940();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDC54E0);
    }
  }
}

uint64_t sub_24407A250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TermsOfServiceSheet() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_244075B14(a1, v6, a2);
}

unint64_t sub_24407A2E0()
{
  result = qword_27EDC5598;
  if (!qword_27EDC5598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5540);
    sub_243F5DD50(&qword_27EDC55A0, &qword_27EDC5538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5598);
  }

  return result;
}

uint64_t sub_24407A3A0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24407A424()
{
  result = qword_27EDC55D0;
  if (!qword_27EDC55D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC55D8);
    sub_243F5DD50(&qword_27EDC55E0, &qword_27EDC55E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC55D0);
  }

  return result;
}

uint64_t sub_24407A50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for TermsOfServiceSheet();

  return sub_24407991C(a1, a2);
}

uint64_t sub_24407A550()
{
  v1 = sub_2440D18A0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24407A604(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_24407A680()
{
  result = qword_27EDC55F0;
  if (!qword_27EDC55F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5568);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5558);
    type metadata accessor for WebContent();
    type metadata accessor for SafariWebView();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5550);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC55B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5548);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5588);
    sub_24407A3A0(&qword_27EDC5590, &qword_27EDC5548, &unk_2440E48E8, sub_24407A2E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC55A8);
    sub_243F5DD50(&qword_27EDC55B0, &qword_27EDC55A8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC55C0);
    sub_24407A3A0(&qword_27EDC55C8, &qword_27EDC55C0, &unk_2440E4938, sub_24407A424);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24407BDC0(&qword_27EDC18F0, type metadata accessor for WebContent);
    sub_24407BDC0(&qword_27EDC18F8, type metadata accessor for SafariWebView);
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC1910, &qword_27EDC1900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC55F0);
  }

  return result;
}

uint64_t sub_24407A9E4()
{
  v1 = *(type metadata accessor for TermsOfServiceSheet() - 8);
  if (*(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80))))
  {

    sub_244089A9C();
  }

  else
  {
    type metadata accessor for RegistrationViewModel();
    sub_24407BDC0(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel);
    result = sub_2440D1910();
    __break(1u);
  }

  return result;
}

unint64_t sub_24407AAC0()
{
  result = qword_27EDC5668;
  if (!qword_27EDC5668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5660);
    sub_24407AB78();
    sub_243F5DD50(&qword_27EDC0928, &qword_27EDC0930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5668);
  }

  return result;
}

unint64_t sub_24407AB78()
{
  result = qword_27EDC5670;
  if (!qword_27EDC5670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5678);
    sub_24407AC30();
    sub_243F5DD50(&qword_27EDC0340, &qword_27EDC0348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5670);
  }

  return result;
}

unint64_t sub_24407AC30()
{
  result = qword_27EDC5680;
  if (!qword_27EDC5680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5688);
    sub_243F884B4(&qword_27EDC0DC8, &qword_27EDC0DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5680);
  }

  return result;
}

unint64_t sub_24407ACDC()
{
  result = qword_27EDC5690;
  if (!qword_27EDC5690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5650);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5660);
    sub_24407AAC0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5690);
  }

  return result;
}

unint64_t sub_24407ADA4()
{
  result = qword_27EDC56B0;
  if (!qword_27EDC56B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5618);
    sub_24407AE30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC56B0);
  }

  return result;
}

unint64_t sub_24407AE30()
{
  result = qword_27EDC56B8;
  if (!qword_27EDC56B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5610);
    sub_24407AEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC56B8);
  }

  return result;
}

unint64_t sub_24407AEBC()
{
  result = qword_27EDC56C0;
  if (!qword_27EDC56C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5608);
    sub_24407AF74();
    sub_243F5DD50(&qword_27EDC00A8, &qword_27EDC00B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC56C0);
  }

  return result;
}

unint64_t sub_24407AF74()
{
  result = qword_27EDC56C8;
  if (!qword_27EDC56C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC56A0);
    sub_243F5DD50(&qword_27EDC56D0, &qword_27EDC56A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC56C8);
  }

  return result;
}

uint64_t objectdestroy_4Tm()
{
  v1 = (type metadata accessor for TermsOfServiceSheet() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[11];
  v4 = type metadata accessor for WebContent();
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = sub_2440D0700();
    (*(*(v5 - 8) + 8))(v3, v5);
    v6 = *(v4 + 20);
    v7 = sub_2440D05F0();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17A8);

  return swift_deallocObject();
}

uint64_t sub_24407B1E0()
{
  v1 = *(type metadata accessor for TermsOfServiceSheet() - 8);
  v2 = *(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  if (v2)
  {
    v3 = *(*v2 + 480);

    LOBYTE(v3) = v3(v4);

    if ((v3 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
      sub_2440D2830();
    }

    return sub_2440D16A0();
  }

  else
  {
    type metadata accessor for RegistrationViewModel();
    sub_24407BDC0(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel);
    result = sub_2440D1910();
    __break(1u);
  }

  return result;
}

unint64_t sub_24407B340()
{
  result = qword_27EDC56E0;
  if (!qword_27EDC56E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5630);
    sub_24407B3F8();
    sub_243F5DD50(&qword_27EDC56F0, &qword_27EDC56D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC56E0);
  }

  return result;
}

unint64_t sub_24407B3F8()
{
  result = qword_27EDC56E8;
  if (!qword_27EDC56E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5628);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5618);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0010);
    sub_24407ADA4();
    sub_243F5DD50(&qword_27EDC00E8, &qword_27EDC0010);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC56E8);
  }

  return result;
}

uint64_t sub_24407B528()
{
  v1 = *(v0 + 16);
  sub_24401FBC0();
  v2 = sub_24401FBD4();
  v4 = v3;
  v6 = v5;
  sub_243FFB0DC();

  v7 = sub_2440D22C0();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_243F62C68(v2, v4, v6 & 1);

  v14 = sub_2440D20B0();
  v27 = v11 & 1;
  v26 = 1;
  if (*v1)
  {
    v15 = v14;
    v16 = *(**v1 + 480);

    LOBYTE(v16) = v16(v17);

    v18 = 1.0;
    *&v20 = v7;
    *(&v20 + 1) = v9;
    if (v16)
    {
      v18 = 0.25;
    }

    LOBYTE(v21) = v27;
    *(&v21 + 1) = v13;
    v22[0] = v15;
    memset(&v22[8], 0, 32);
    v22[40] = v26;
    v23 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5730);
    sub_24407B798();
    sub_2440D24E0();
    v24[3] = *&v22[16];
    v24[4] = *&v22[32];
    v25 = v23;
    v24[0] = v20;
    v24[1] = v21;
    v24[2] = *v22;
    return sub_243F5EED4(v24, &qword_27EDC5730);
  }

  else
  {
    type metadata accessor for RegistrationViewModel();
    sub_24407BDC0(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel);
    result = sub_2440D1910();
    __break(1u);
  }

  return result;
}

unint64_t sub_24407B798()
{
  result = qword_27EDC5728;
  if (!qword_27EDC5728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5730);
    sub_243F884B4(&qword_27EDC0E08, &qword_27EDC0E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5728);
  }

  return result;
}

uint64_t objectdestroyTm_26()
{
  v1 = (type metadata accessor for TermsOfServiceSheet() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[11];
  v4 = type metadata accessor for WebContent();
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = sub_2440D0700();
    (*(*(v5 - 8) + 8))(v3, v5);
    v6 = *(v4 + 20);
    v7 = sub_2440D05F0();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17A8);

  return swift_deallocObject();
}

uint64_t sub_24407BA0C()
{
  v1 = *(type metadata accessor for TermsOfServiceSheet() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return (*(v2 + 16))(*(v2 + *(v1 + 64)));
}

uint64_t sub_24407BA90()
{
  v24 = *(v0 + 16);
  sub_24401FBC0();
  v1 = sub_24401FBD4();
  v3 = v2;
  v5 = v4;
  sub_2440D2230();
  v6 = sub_2440D22E0();
  v8 = v7;
  v10 = v9;

  sub_243F62C68(v1, v3, v5 & 1);

  sub_243FFB0DC();

  v11 = sub_2440D22C0();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_243F62C68(v6, v8, v10 & 1);

  v18 = sub_2440D20B0();
  v32 = v15 & 1;
  v31 = 1;
  if (*v24)
  {
    v19 = v18;
    v20 = *(**v24 + 480);

    LOBYTE(v20) = v20(v21);

    v22 = 1.0;
    *&v25 = v11;
    *(&v25 + 1) = v13;
    if (v20)
    {
      v22 = 0.25;
    }

    LOBYTE(v26) = v32;
    *(&v26 + 1) = v17;
    v27[0] = v19;
    memset(&v27[8], 0, 32);
    v27[40] = v31;
    v28 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5730);
    sub_24407B798();
    sub_2440D24E0();
    v29[3] = *&v27[16];
    v29[4] = *&v27[32];
    v30 = v28;
    v29[0] = v25;
    v29[1] = v26;
    v29[2] = *v27;
    return sub_243F5EED4(v29, &qword_27EDC5730);
  }

  else
  {
    type metadata accessor for RegistrationViewModel();
    sub_24407BDC0(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel);
    result = sub_2440D1910();
    __break(1u);
  }

  return result;
}

uint64_t sub_24407BD58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24407BDC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24407BE08(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_24407BDC0(&qword_27EDC0048, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24407BEBC()
{
  result = qword_27EDC5768;
  if (!qword_27EDC5768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5748);
    sub_24407BE08(&qword_27EDC5770, &qword_27EDC1980, &unk_2440E4B80, sub_243FA84E0);
    sub_243F5DD50(&qword_27EDC56D0, &qword_27EDC56A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5768);
  }

  return result;
}

uint64_t sub_24407BFD0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5780);
  MEMORY[0x28223BE20](v3);
  v5 = &v24[-v4 - 8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5788);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24[-v8 - 8];
  *v5 = sub_2440D1C20();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5790);
  sub_24407C2FC(v2, &v5[*(v10 + 44)]);
  v11 = sub_2440CBE68();
  swift_beginAccess();
  v12 = *v2;
  v13 = &v5[*(v3 + 36)];
  *v13 = *v11;
  v13[8] = v12;
  v24[0] = *(v2 + 1);
  v14 = swift_allocObject();
  v15 = *(v2 + 16);
  *(v14 + 16) = *v2;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(v2 + 32);
  *(v14 + 64) = *(v2 + 48);

  sub_243FFDFC0(v2, &v25);
  v16 = sub_24407D088();
  v17 = MEMORY[0x277D839B0];
  v18 = MEMORY[0x277D839C8];
  sub_2440D25E0();

  sub_243F5EED4(v5, &qword_27EDC5780);
  v25 = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
  sub_2440D2820();
  v19 = swift_allocObject();
  v20 = *(v2 + 16);
  *(v19 + 16) = *v2;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(v2 + 32);
  *(v19 + 64) = *(v2 + 48);
  sub_243FFDFC0(v2, &v25);
  *&v25 = v3;
  *(&v25 + 1) = v17;
  v26 = v16;
  v27 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2440CC638(v24, sub_24407D16C, v19, v6, MEMORY[0x277D839F8], OpaqueTypeConformance2, v23);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_24407C2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC58C8);
  v107 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v77.i8[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC58D0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  MEMORY[0x28223BE20](v8);
  if (*a1)
  {
    v119 = *(a1 + 8);
    v94 = v10;
    v98 = v77.i64 - v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC47A8);
    v96 = a2;
    sub_2440D2820();
    v93 = sub_24404AD48(v118[0], 2);
    sub_2440D2B00();
    sub_2440D1560();
    v89 = v154;
    v99 = v158;
    v100 = v156;
    v92 = v159;
    v153 = v155;
    v152 = v157;
    sub_2440D2C40();
    v90 = v12;
    v91 = v11;
    v103 = v153;
    v105 = v152;
    v106 = sub_2440D20C0();
    sub_243FC0F94();
    sub_2440D13D0();
    v14 = v13;
    v79 = v15;
    v80 = v13;
    v16 = v15;
    v18 = v17;
    v78 = v17;
    v83 = v19;
    v150 = 0;
    v104 = sub_2440D20D0();
    sub_2440D13D0();
    v21 = v20;
    v81 = v20;
    v85 = v23;
    v86 = v22;
    v84 = v24;
    v151 = 0;
    sub_2440D2C40();
    v87 = v26;
    v88 = v25;
    v102 = sub_243F9A1F0();
    v27 = swift_allocObject();
    v101 = v27;
    v28 = *(a1 + 16);
    *(v27 + 16) = *a1;
    *(v27 + 32) = v28;
    *(v27 + 48) = *(a1 + 32);
    *(v27 + 64) = *(a1 + 48);
    v29 = swift_allocObject();
    v82 = v29;
    v30 = *(a1 + 16);
    *(v29 + 16) = *a1;
    *(v29 + 32) = v30;
    *(v29 + 48) = *(a1 + 32);
    *(v29 + 64) = *(a1 + 48);
    sub_243FFDFC0(a1, &v119);
    sub_243FFDFC0(a1, &v119);
    v31 = sub_243F68750();
    *&v119 = sub_2440579C8(v31 & 1, 0xD00000000000001DLL);
    *(&v119 + 1) = v32;
    sub_243F4EF64();
    v33 = sub_2440D2310();
    v95 = v4;
    v35 = v34;
    v97 = v6;
    v37 = v36;
    sub_2440D21E0();
    v38 = sub_2440D22E0();
    v40 = v39;
    v42 = v41;
    v77.i64[0] = v43;

    sub_243F62C68(v33, v35, v37 & 1);

    sub_2440D21B0();
    v44 = sub_2440D22A0();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    sub_243F62C68(v38, v40, v42 & 1);

    v119 = *(a1 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
    sub_2440D2820();
    v51 = *v118 * 0.0174532925;
    sub_2440D2C40();
    v53 = v52;
    v55 = v54;
    v119 = *(a1 + 24);
    sub_2440D2820();
    v56 = *v118;
    v48 &= 1u;
    LOBYTE(v119) = v48;
    v57 = sub_243F9A1F0();
    KeyPath = swift_getKeyPath();
    *&v119 = v44;
    *(&v119 + 1) = v46;
    LOBYTE(v120) = v48;
    *(&v120 + 1) = v50;
    *&v121 = v51;
    *(&v121 + 1) = v53;
    *&v122 = v55;
    *(&v122 + 1) = v56;
    *&v123 = v57;
    *(&v123 + 1) = KeyPath;
    v124 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC58D8);
    sub_24407EE98();
    v59 = v98;
    sub_2440D24E0();
    v116[2] = v121;
    v116[3] = v122;
    v116[4] = v123;
    v117 = v124;
    v116[0] = v119;
    v116[1] = v120;
    sub_243F5EED4(v116, &qword_27EDC58D8);
    v60 = v94;
    sub_243F5F574(v59, v94, &qword_27EDC58D0);
    LOWORD(v38) = v93;
    *v118 = v93;
    *&v118[2] = v114;
    *&v118[6] = v115;
    v61 = v89;
    *&v118[8] = v89;
    v118[16] = v103;
    *&v118[17] = *v113;
    *&v118[20] = *&v113[3];
    *&v118[24] = v100;
    v118[32] = v105;
    *&v118[36] = *&v112[3];
    *&v118[33] = *v112;
    v62 = v92;
    *&v118[40] = v99;
    *&v118[48] = v92;
    *&v118[56] = 0x400921FB54442D18;
    v64 = v90;
    v63 = v91;
    *&v118[64] = v91;
    *&v118[72] = v90;
    v118[80] = v106;
    *&v118[84] = *&v111[3];
    *&v118[81] = *v111;
    *&v118[88] = v14;
    *&v118[96] = v16;
    v65 = v83;
    *&v118[104] = v18;
    *&v118[112] = v83;
    v118[120] = 0;
    *&v118[124] = *&v110[3];
    *&v118[121] = *v110;
    v118[128] = v104;
    *&v118[129] = *v109;
    *&v118[132] = *&v109[3];
    *&v118[136] = v21;
    v66 = v85;
    v67 = v86;
    *&v118[144] = v86;
    *&v118[152] = v85;
    v68 = v84;
    *&v118[160] = v84;
    v118[168] = 0;
    *&v118[169] = *v108;
    *&v118[172] = *&v108[3];
    v77 = vdupq_n_s64(0x3FFAAACD9E83E426uLL);
    *&v118[176] = v77;
    v70 = v87;
    v69 = v88;
    *&v118[192] = v88;
    *&v118[200] = v87;
    *&v118[208] = v102;
    *&v118[216] = sub_24407EE88;
    *&v118[224] = v101;
    memset(&v118[232], 0, 32);
    *&v118[264] = sub_24407EE90;
    v71 = v82;
    *&v118[272] = v82;
    v72 = v97;
    memcpy(v97, v118, 0x118uLL);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC58F8);
    sub_243F5F574(v60, &v72[*(v73 + 48)], &qword_27EDC58D0);
    sub_243F5F574(v118, &v119, &qword_27EDC5900);
    sub_243F5EED4(v98, &qword_27EDC58D0);
    sub_243F5EED4(v60, &qword_27EDC58D0);
    LOWORD(v119) = v38;
    *(&v119 + 2) = v114;
    WORD3(v119) = v115;
    *(&v119 + 1) = v61;
    LOBYTE(v120) = v103;
    *(&v120 + 1) = *v113;
    DWORD1(v120) = *&v113[3];
    *(&v120 + 1) = v100;
    LOBYTE(v121) = v105;
    DWORD1(v121) = *&v112[3];
    *(&v121 + 1) = *v112;
    *(&v121 + 1) = v99;
    *&v122 = v62;
    *(&v122 + 1) = 0x400921FB54442D18;
    *&v123 = v63;
    *(&v123 + 1) = v64;
    v124 = v106;
    *&v125[3] = *&v111[3];
    *v125 = *v111;
    v126 = v80;
    v127 = v79;
    v128 = v78;
    v129 = v65;
    v130 = 0;
    *&v131[3] = *&v110[3];
    *v131 = *v110;
    v132 = v104;
    *v133 = *v109;
    *&v133[3] = *&v109[3];
    v134 = v81;
    v135 = v67;
    v136 = v66;
    v137 = v68;
    v138 = 0;
    *v139 = *v108;
    *&v139[3] = *&v108[3];
    v140 = v77;
    v141 = v69;
    v142 = v70;
    v143 = v102;
    v144 = sub_24407EE88;
    v147 = 0u;
    v146 = 0u;
    v145 = v101;
    v148 = sub_24407EE90;
    v149 = v71;
    sub_243F5EED4(&v119, &qword_27EDC5900);
    v74 = v96;
    sub_243F681C8(v97, v96, &qword_27EDC58C8);
    return (*(v107 + 56))(v74, 0, 1, v95);
  }

  else
  {
    v76 = *(v107 + 56);

    return v76(a2, 1, 1, v4);
  }
}

uint64_t sub_24407CCB8(uint64_t a1)
{
  v2 = sub_2440D2C80();
  v25 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2440D2CA0();
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2440D2CD0();
  v22 = v8;
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  sub_243F5DB84();
  v20 = sub_2440D3530();
  sub_2440D2CC0();
  sub_2440D2D20();
  v21 = *(v9 + 8);
  v21(v12, v8);
  v15 = swift_allocObject();
  v16 = *(a1 + 16);
  *(v15 + 16) = *a1;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(a1 + 32);
  *(v15 + 64) = *(a1 + 48);
  aBlock[4] = sub_24407F07C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_31;
  v17 = _Block_copy(aBlock);
  sub_243FFDFC0(a1, v26);

  sub_2440D2C90();
  v26[0] = MEMORY[0x277D84F90];
  sub_243F91D78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  sub_2440D3710();
  v18 = v20;
  MEMORY[0x245D57400](v14, v7, v4, v17);
  _Block_release(v17);

  (*(v25 + 8))(v4, v2);
  (*(v23 + 8))(v7, v24);
  return (v21)(v14, v22);
}

unint64_t sub_24407D088()
{
  result = qword_27EDC5798;
  if (!qword_27EDC5798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5780);
    sub_243F5DD50(&qword_27EDC57A0, &qword_27EDC57A8);
    sub_243F5DD50(&qword_27EDC0218, &qword_27EDC0220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5798);
  }

  return result;
}

uint64_t sub_24407D16C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
  sub_2440D2830();
  sub_2440709C4();
  sub_2440D2B80();
  sub_2440D16E0();
}

double sub_24407D238@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_2440D2810();
  sub_2440D2810();
  sub_2440D2810();
  result = v7;
  *a3 = a1;
  *(a3 + 1) = a2;
  *(a3 + 8) = LOBYTE(v7);
  *(a3 + 16) = v8;
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  *(a3 + 40) = v7;
  *(a3 + 48) = v8;
  return result;
}

uint64_t sub_24407D354@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC57B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v48 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC57B8);
  MEMORY[0x28223BE20](v6);
  v8 = &v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC57C0);
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC57C8);
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC57D0);
  v50 = *(v15 - 8);
  v51 = v15;
  MEMORY[0x28223BE20](v15);
  v49 = &v48 - v16;
  *v5 = sub_2440D1C20();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC57D8);
  sub_24407D848(v2, &v5[*(v17 + 44)]);
  v18 = sub_2440D20C0();
  v19 = *v2;
  sub_2440D13D0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_243F681C8(v5, v8, &qword_27EDC57B0);
  v28 = &v8[*(v6 + 36)];
  *v28 = v18;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = sub_2440CBE68();
  swift_beginAccess();
  v30 = *v29;
  sub_243F681C8(v8, v11, &qword_27EDC57B8);
  v31 = &v11[*(v9 + 36)];
  *v31 = v30;
  v31[8] = v19;
  v33 = *(v2 + 8);
  v32 = *(v2 + 16);
  sub_243F681C8(v11, v14, &qword_27EDC57C0);
  v34 = &v14[*(v12 + 36)];
  *v34 = 0;
  *(v34 + 1) = v33;
  *(v34 + 2) = v32;
  v53[0] = *(v2 + 1);
  v35 = swift_allocObject();
  v36 = *(v2 + 48);
  v35[3] = *(v2 + 32);
  v35[4] = v36;
  v35[5] = *(v2 + 64);
  v37 = *(v2 + 16);
  v35[1] = *v2;
  v35[2] = v37;

  sub_243FFE01C(v2, &v54);
  v38 = sub_24407E200();
  v39 = MEMORY[0x277D839B0];
  v40 = MEMORY[0x277D839C8];
  v41 = v49;
  sub_2440D25E0();

  sub_243F5EED4(v14, &qword_27EDC57C8);
  v54 = *(v2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
  sub_2440D2820();
  v42 = swift_allocObject();
  v43 = *(v2 + 48);
  v42[3] = *(v2 + 32);
  v42[4] = v43;
  v42[5] = *(v2 + 64);
  v44 = *(v2 + 16);
  v42[1] = *v2;
  v42[2] = v44;
  sub_243FFE01C(v2, &v54);
  *&v54 = v12;
  *(&v54 + 1) = v39;
  v55 = v38;
  v56 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v51;
  sub_2440CC638(v53, sub_24407E474, v42, v51, MEMORY[0x277D839F8], OpaqueTypeConformance2, v52);

  return (*(v50 + 8))(v41, v46);
}

uint64_t sub_24407D848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5830);
  v51 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v44 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5838);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5840);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  MEMORY[0x28223BE20](v14);
  if (*a1)
  {
    v49 = a2;
    v17 = *(a1 + 24);
    v47 = v16;
    v44 = &v44 - v15;
    sub_243F4E2F4();
    v50 = v4;
    v18 = sub_243F4E2F4();
    sub_244045F18(v18);
    v48 = v6;
    sub_243F68750();
    v46 = v10;
    sub_243F676A0();
    sub_243F4E2F4();
    v45 = v7;
    sub_243F62020();
    sub_24406A0A8(v17, v66);
    sub_2440D2B00();
    sub_2440D1560();
    v19 = sub_243F9A1E0();
    v68[0] = *(a1 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
    sub_2440D2820();
    v20 = *&v52 * 0.0174532925;
    sub_2440D2C40();
    v22 = v21;
    v24 = v23;
    v68[0] = *(a1 + 48);
    sub_2440D2820();
    v60 = v66[8];
    v61 = v66[9];
    v62 = v66[10];
    v56 = v66[4];
    v57 = v66[5];
    v58 = v66[6];
    v59 = v66[7];
    v52 = v66[0];
    v53 = v66[1];
    v54 = v66[2];
    v55 = v66[3];
    *&v63 = v67;
    *(&v63 + 1) = v19;
    *&v64 = v20;
    *(&v64 + 1) = v22;
    *&v65 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5848);
    sub_24407EAC4(&qword_27EDC5850, &qword_27EDC5848, &unk_2440E4DD8, sub_24407EB48);
    v25 = v44;
    sub_2440D24E0();
    v68[10] = v62;
    v68[11] = v63;
    v68[12] = v64;
    v68[13] = v65;
    v68[6] = v58;
    v68[7] = v59;
    v68[8] = v60;
    v68[9] = v61;
    v68[2] = v54;
    v68[3] = v55;
    v68[4] = v56;
    v68[5] = v57;
    v68[0] = v52;
    v68[1] = v53;
    sub_243F5EED4(v68, &qword_27EDC5848);
    *v12 = sub_2440D1C20();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5890);
    sub_24407DE38(a1, &v12[*(v26 + 44)]);
    v27 = sub_2440D20C0();
    sub_2440D13D0();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5898) + 36)];
    *v36 = v27;
    *(v36 + 1) = v29;
    *(v36 + 2) = v31;
    *(v36 + 3) = v33;
    *(v36 + 4) = v35;
    v36[40] = 0;
    *&v12[*(v45 + 36)] = sub_243F9A1E0();
    v37 = v47;
    sub_243F5F574(v25, v47, &qword_27EDC5840);
    v38 = v46;
    sub_243F5F574(v12, v46, &qword_27EDC5838);
    v39 = v48;
    sub_243F5F574(v37, v48, &qword_27EDC5840);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC58A0);
    sub_243F5F574(v38, v39 + *(v40 + 48), &qword_27EDC5838);
    sub_243F5EED4(v12, &qword_27EDC5838);
    sub_243F5EED4(v25, &qword_27EDC5840);
    sub_243F5EED4(v38, &qword_27EDC5838);
    sub_243F5EED4(v37, &qword_27EDC5840);
    v41 = v49;
    sub_243F681C8(v39, v49, &qword_27EDC5830);
    return (*(v51 + 56))(v41, 0, 1, v50);
  }

  else
  {
    v43 = *(v51 + 56);

    return v43(a2, 1, 1, v4);
  }
}

uint64_t sub_24407DE38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_2440D2200();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 8);
  v8 = sub_243F68750();
  *&v38[0] = sub_2440579C8(v8 & 1, v7);
  *(&v38[0] + 1) = v9;
  sub_243F4EF64();
  v10 = sub_2440D2310();
  v12 = v11;
  v14 = v13;
  sub_2440D21D0();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0A10], v3);
  sub_2440D2220();

  (*(v4 + 8))(v6, v3);
  v15 = sub_2440D22E0();
  v17 = v16;
  v19 = v18;

  sub_243F62C68(v10, v12, v14 & 1);

  sub_2440D21B0();
  v20 = sub_2440D22A0();
  v22 = v21;
  LOBYTE(v12) = v23;
  v25 = v24;
  sub_243F62C68(v15, v17, v19 & 1);

  v38[0] = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
  sub_2440D2820();
  v26 = *&v33 * 0.0174532925;
  sub_2440D2C40();
  v28 = v27;
  v30 = v29;
  v38[0] = *(a1 + 48);
  sub_2440D2820();
  v37 = v12 & 1;
  *&v33 = v20;
  *(&v33 + 1) = v22;
  LOBYTE(v34) = v12 & 1;
  *(&v34 + 1) = v25;
  *&v35 = v26;
  *(&v35 + 1) = v28;
  *&v36 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC58A8);
  sub_24407EAC4(&qword_27EDC58B0, &qword_27EDC58A8, &unk_2440E4E18, sub_24407ED6C);
  sub_2440D24E0();
  v38[0] = v33;
  v38[1] = v34;
  v38[2] = v35;
  v38[3] = v36;
  return sub_243F5EED4(v38, &qword_27EDC58A8);
}

uint64_t sub_24407E194()
{
  sub_2440709C4();
  sub_2440D2B80();
  sub_2440D16E0();
}

unint64_t sub_24407E200()
{
  result = qword_27EDC57E0;
  if (!qword_27EDC57E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC57C8);
    sub_24407E2B8();
    sub_243F5DD50(&qword_27EDC5800, &qword_27EDC5808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC57E0);
  }

  return result;
}

unint64_t sub_24407E2B8()
{
  result = qword_27EDC57E8;
  if (!qword_27EDC57E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC57C0);
    sub_24407E370();
    sub_243F5DD50(&qword_27EDC0218, &qword_27EDC0220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC57E8);
  }

  return result;
}

unint64_t sub_24407E370()
{
  result = qword_27EDC57F0;
  if (!qword_27EDC57F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC57B8);
    sub_243F5DD50(&qword_27EDC57F8, &qword_27EDC57B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC57F0);
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{

  return swift_deallocObject();
}

uint64_t sub_24407E474()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
  sub_2440D2830();
  sub_2440709C4();
  sub_2440D2B80();
  sub_2440D16E0();
}

double sub_24407E538@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = sub_2440708D8() + -6.0;
  v13 = sub_244070928() + 3.0;
  sub_2440D2810();
  sub_2440D2810();
  result = v15;
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4;
  *(a6 + 24) = a5;
  *(a6 + 32) = v12;
  *(a6 + 40) = v13;
  *(a6 + 48) = v15;
  *(a6 + 56) = v16;
  *(a6 + 64) = v15;
  *(a6 + 72) = v16;
  return result;
}

uint64_t sub_24407E69C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_24407E6F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_24407E768(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24407E7B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24407E818()
{
  result = qword_27EDC5810;
  if (!qword_27EDC5810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5818);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5780);
    sub_24407D088();
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC0230, &qword_27EDC0238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5810);
  }

  return result;
}

unint64_t sub_24407E924()
{
  result = qword_27EDC5820;
  if (!qword_27EDC5820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5828);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC57C8);
    sub_24407E200();
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC0230, &qword_27EDC0238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5820);
  }

  return result;
}

uint64_t sub_24407EAC4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24407EB48()
{
  result = qword_27EDC5858;
  if (!qword_27EDC5858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5860);
    sub_24407EBD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5858);
  }

  return result;
}

unint64_t sub_24407EBD4()
{
  result = qword_27EDC5868;
  if (!qword_27EDC5868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5870);
    sub_24407EC8C();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5868);
  }

  return result;
}

unint64_t sub_24407EC8C()
{
  result = qword_27EDC5878;
  if (!qword_27EDC5878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5880);
    sub_24407ED18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5878);
  }

  return result;
}

unint64_t sub_24407ED18()
{
  result = qword_27EDC5888;
  if (!qword_27EDC5888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5888);
  }

  return result;
}

unint64_t sub_24407ED6C()
{
  result = qword_27EDC58B8;
  if (!qword_27EDC58B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC58C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC58B8);
  }

  return result;
}

unint64_t sub_24407EE98()
{
  result = qword_27EDC58E0;
  if (!qword_27EDC58E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC58D8);
    sub_24407EF50();
    sub_243F5DD50(&qword_27EDC0340, &qword_27EDC0348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC58E0);
  }

  return result;
}

unint64_t sub_24407EF50()
{
  result = qword_27EDC58E8;
  if (!qword_27EDC58E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC58F0);
    sub_24407EAC4(&qword_27EDC58B0, &qword_27EDC58A8, &unk_2440E4E18, sub_24407ED6C);
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC58E8);
  }

  return result;
}

uint64_t objectdestroyTm_27()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24407F104()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_24407F150(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_24407F1A4(char a1)
{
  v2 = *v1;
  if (a1)
  {
    return (*(v2 + 128))();
  }

  else
  {
    return (*(v2 + 104))();
  }
}

uint64_t sub_24407F1F0()
{
  (*(*v0 + 112))(0, 0xE000000000000000);
  (*(*v0 + 136))(0, 0xE000000000000000);
  v1 = *(*v0 + 160);

  return v1(0, 0xE000000000000000);
}

uint64_t sub_24407F294()
{

  return swift_deallocClassInstance();
}

void *sub_24407F2DC()
{
  result = swift_allocObject();
  result[2] = 0;
  result[3] = 0xE000000000000000;
  result[4] = 0;
  result[5] = 0xE000000000000000;
  result[6] = 0;
  result[7] = 0xE000000000000000;
  return result;
}

uint64_t sub_24407F310()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  return v1;
}

uint64_t sub_24407F384@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_24407F3D0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 248);

  return v4(v2, v3);
}

uint64_t sub_24407F438()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t (*sub_24407F4B4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_24407F574(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5910);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5908);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_24407F6AC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5910);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel__accountID;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5908);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_24407F81C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  return v1;
}

uint64_t sub_24407F890()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t (*sub_24407F900(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_24407F9C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5920);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5918);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_24407FAF8(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5920);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel__state;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5918);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}