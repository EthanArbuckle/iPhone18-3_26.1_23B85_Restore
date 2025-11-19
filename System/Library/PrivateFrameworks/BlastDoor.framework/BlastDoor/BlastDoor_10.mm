unint64_t sub_2140A7E34()
{
  result = qword_27C905648;
  if (!qword_27C905648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905648);
  }

  return result;
}

unint64_t sub_2140A7E8C()
{
  result = qword_27C905650;
  if (!qword_27C905650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905650);
  }

  return result;
}

unint64_t sub_2140A7EE4()
{
  result = qword_27C905658;
  if (!qword_27C905658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905658);
  }

  return result;
}

unint64_t sub_2140A7F3C()
{
  result = qword_27C905660;
  if (!qword_27C905660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905660);
  }

  return result;
}

unint64_t sub_2140A7F94()
{
  result = qword_27C905668;
  if (!qword_27C905668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905668);
  }

  return result;
}

unint64_t sub_2140A7FEC()
{
  result = qword_27C905670;
  if (!qword_27C905670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905670);
  }

  return result;
}

uint64_t MBDBrandInfo.init(with:name:categories:primaryPhoneNumber:primaryBrandColorHexString:secondaryBrandColorHexString:isVerified:localizedDescription:verifiedBy:website:messageNumber:emailAddress:address:termsAndConditionsURL:localizedResponseTime:genericCSSTemplateURL:brandLogoGuid:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t (*a30)(void, void, void), uint64_t a31, uint64_t a32, uint64_t a33)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v36 = swift_allocObject();
  LOBYTE(v146) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = 100;
  *(v37 + 24) = v146;
  *(v36 + 16) = sub_21406418C;
  *(v36 + 24) = v37;
  *(v35 + 32) = v36;
  sub_214042B80(v35, &v146);
  v38 = v146;
  v39 = v147;
  v91 = v148;
  v40 = v149;
  LOBYTE(v35) = v150;
  sub_21449E824(&v235);
  v135 = v235;
  v143 = v236;
  v145 = v237;
  v144 = v238;
  v136 = v239;
  sub_21449E858(v233);
  v137 = v233[0];
  v140 = v233[1];
  v142 = v233[2];
  v141 = v233[3];
  v138 = v234;
  sub_21449E9A4(v231);
  v130 = v231[0];
  v132 = v231[1];
  v134 = v231[2];
  v133 = v231[3];
  v131 = v232;
  sub_21449EAF0(v229);
  v126 = v229[0];
  v129 = v229[2];
  v127 = v229[1];
  v128 = v229[3];
  v122 = v230;
  sub_21449EC44(v227);
  v118 = v227[0];
  v125 = v227[2];
  v123 = v227[1];
  v124 = v227[3];
  v115 = v228;
  sub_21449F000(v225);
  v116 = v225[0];
  v121 = v225[2];
  v119 = v225[1];
  v120 = v225[3];
  v117 = v226;
  sub_21449F034(v223);
  v109 = v223[0];
  v113 = v223[2];
  v111 = v223[1];
  v112 = v223[3];
  v110 = v224;
  sub_21449F180(v221);
  v104 = v221[0];
  v108 = v221[2];
  v106 = v221[1];
  v107 = v221[3];
  v105 = v222;
  sub_21449F2D4(v219);
  v99 = v219[0];
  v101 = v219[2];
  v102 = v219[3];
  v103 = v219[1];
  v100 = v220;
  v235 = a3;
  v236 = a4;
  v94 = v35;
  LOBYTE(v233[0]) = v35;
  v146 = 0xD000000000000011;
  v147 = 0x800000021478A940;
  v148 = 0xD00000000000001CLL;
  v251 = 0x800000021478A360;
  v149 = 0x800000021478A360;

  v114 = v39;
  v41 = v92;
  v93 = v38;
  v42 = v38(&v235, v233, &v146);
  if (v41)
  {
    goto LABEL_5;
  }

  v88 = a4;
  if ((v42 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v48 = 0xD000000000000011;
    v48[1] = 0x800000021478A940;
    v48[2] = 0xD00000000000001CLL;
    v48[3] = v251;
    swift_willThrow();

LABEL_5:

    v49 = v118;
    v44 = v114;
    v45 = v136;

    v50 = v91;
    v51 = v115;
    v52 = v122;
LABEL_6:
    v46 = v135;
LABEL_7:
    v146 = a1;
    v147 = a2;
    v148 = v93;
    v149 = v44;
    v150 = v50;
    v151 = v40;
    v152 = v94;
    v154 = a5;
    v155 = v46;
    v156 = v143;
    v157 = v145;
    v158 = v144;
    v159 = v45;
    v161 = a8;
    v162 = a10;
    v163 = a11;
    v164 = a12;
    v165 = a13 & 1;
    v167 = v137;
    v168 = v140;
    v169 = v142;
    v170 = v141;
    v171 = v138;
    v173 = v130;
    v174 = v132;
    v175 = v134;
    v176 = v133;
    v177 = v131;
    v179 = v126;
    v180 = v127;
    v181 = v129;
    v182 = v128;
    *&v166[3] = *(v248 + 3);
    *v166 = v248[0];
    *&v172[3] = *&v247[3];
    *v172 = *v247;
    *&v178[3] = *&v246[3];
    *v178 = *v246;
    *v184 = *v245;
    *v153 = v250[0];
    *&v153[3] = *(v250 + 3);
    *&v160[3] = *(v249 + 3);
    *v160 = v249[0];
    v183 = v52;
    *&v184[3] = *&v245[3];
    v185 = v49;
    v186 = v123;
    v187 = v125;
    v188 = v124;
    v189 = v51;
    *v190 = *v244;
    *&v190[3] = *&v244[3];
    v191 = v116;
    v192 = v119;
    v193 = v121;
    v194 = v120;
    v195 = v117;
    *v196 = *v243;
    *&v196[3] = *&v243[3];
    v197 = v109;
    v198 = v111;
    v199 = v113;
    v200 = v112;
    v201 = v110;
    *v202 = *v242;
    *&v202[3] = *&v242[3];
    v203 = v104;
    v204 = v106;
    v205 = v108;
    v206 = v107;
    v207 = v105;
    *v208 = v241[0];
    *&v208[3] = *(v241 + 3);
    v209 = a28;
    v210 = a29;
    v211 = v99;
    v212 = v103;
    v213 = v101;
    v214 = v102;
    v215 = v100;
    *v216 = v240[0];
    *&v216[3] = *(v240 + 3);
    v217 = a32;
    v218 = a33;
    return sub_214045958(&v146);
  }

  v43 = v251;

  v44 = v114;

  v235 = a6;
  v236 = a7;
  v45 = v136;
  LOBYTE(v233[0]) = v136;
  v146 = 0xD00000000000001FLL;
  v147 = 0x800000021478A960;
  v148 = 0xD00000000000001CLL;
  v149 = v43;

  sub_213FDC9D0(v145, v144);
  v46 = v135;
  v47 = v135(&v235, v233, &v146);
  v51 = v115;
  v52 = v122;
  if ((v47 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v57 = 0xD00000000000001FLL;
    v57[1] = 0x800000021478A960;
    v58 = v251;
    v57[2] = 0xD00000000000001CLL;
    v57[3] = v58;
    swift_willThrow();

    v49 = v118;

    sub_213FDC6D0(v145, v144);
    v40 = v88;
LABEL_12:
    v50 = a3;
    goto LABEL_7;
  }

  sub_213FDC6D0(v145, v144);
  v54 = v251;

  sub_213FDC6D0(v145, v144);
  v235 = a14;
  v236 = a15;
  LOBYTE(v233[0]) = v138;
  v146 = 0xD000000000000021;
  v147 = 0x800000021478A980;
  v148 = 0xD00000000000001CLL;
  v149 = v54;

  sub_213FDC9D0(v142, v141);
  if ((v137(&v235, v233, &v146) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v59 = 0xD000000000000021;
    v59[1] = 0x800000021478A980;
    v60 = v251;
    v59[2] = 0xD00000000000001CLL;
    v59[3] = v60;
    swift_willThrow();

    v49 = v118;

    sub_213FDC6D0(v142, v141);
    v40 = v88;
    v145 = a6;
    v144 = a7;
LABEL_14:
    v45 = v136;
    v46 = v135;
    goto LABEL_12;
  }

  sub_213FDC6D0(v142, v141);
  v55 = v251;

  sub_213FDC6D0(v142, v141);
  v235 = a16;
  v236 = a17;
  LOBYTE(v233[0]) = v131;
  v146 = 0xD000000000000017;
  v147 = 0x800000021478A9B0;
  v148 = 0xD00000000000001CLL;
  v149 = v55;

  sub_213FDC9D0(v134, v133);
  v56 = v130(&v235, v233, &v146);
  if ((v56 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v63 = 0xD000000000000017;
    v63[1] = 0x800000021478A9B0;
    v63[2] = 0xD00000000000001CLL;
    v63[3] = v251;
    swift_willThrow();

    v49 = v118;
    v40 = v88;

    sub_213FDC6D0(v134, v133);
    v145 = a6;
    v144 = a7;
    v142 = a14;
    v141 = a15;
    goto LABEL_14;
  }

  sub_213FDC6D0(v134, v133);
  v61 = v251;

  sub_213FDC6D0(v134, v133);
  v235 = a18;
  v236 = a19;
  LOBYTE(v233[0]) = v122;
  v146 = 0xD000000000000014;
  v147 = 0x800000021478A9D0;
  v148 = 0xD00000000000001CLL;
  v149 = v61;

  sub_213FDC9D0(v129, v128);
  v62 = v126(&v235, v233, &v146);
  if ((v62 & 1) == 0)
  {
    v40 = v88;
    sub_214031C4C();
    swift_allocError();
    *v66 = 0xD000000000000014;
    v66[1] = 0x800000021478A9D0;
    v66[2] = 0xD00000000000001CLL;
    v66[3] = v251;
    swift_willThrow();

    v49 = v118;

    sub_213FDC6D0(v129, v128);
    v145 = a6;
    v144 = a7;
    v142 = a14;
    v141 = a15;
    v134 = a16;
    v133 = a17;
    goto LABEL_14;
  }

  sub_213FDC6D0(v129, v128);
  v64 = v251;

  sub_213FDC6D0(v129, v128);
  v235 = a20;
  v236 = a21;
  LOBYTE(v233[0]) = v115;
  v146 = 0xD00000000000001ALL;
  v147 = 0x800000021478A9F0;
  v148 = 0xD00000000000001CLL;
  v149 = v64;

  sub_213FDC9D0(v125, v124);
  v65 = v118(&v235, v233, &v146);
  if ((v65 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v71 = 0xD00000000000001ALL;
    v71[1] = 0x800000021478A9F0;
    v72 = v251;
    v71[2] = 0xD00000000000001CLL;
    v71[3] = v72;
    swift_willThrow();

    v49 = v118;
    v52 = v122;

    sub_213FDC6D0(v125, v124);
    v50 = a3;
    v40 = v88;
    v145 = a6;
    v144 = a7;
    v142 = a14;
    v141 = a15;
    v134 = a16;
    v133 = a17;
    v128 = a19;
    v129 = a18;
    v45 = v136;
    goto LABEL_6;
  }

  sub_213FDC6D0(v125, v124);
  v67 = v251;

  sub_213FDC6D0(v125, v124);
  v235 = a22;
  v236 = a23;
  LOBYTE(v233[0]) = v117;
  v146 = 0xD000000000000019;
  v147 = 0x800000021478AA10;
  v148 = 0xD00000000000001CLL;
  v149 = v67;

  sub_213FDC9D0(v121, v120);
  if ((v116(&v235, v233, &v146) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v73 = 0xD000000000000019;
    v73[1] = 0x800000021478AA10;
    v74 = v251;
    v73[2] = 0xD00000000000001CLL;
    v73[3] = v74;
    swift_willThrow();

    sub_213FDC6D0(v121, v120);
    v40 = v88;
    v145 = a6;
    v144 = a7;
    v142 = a14;
    v141 = a15;
    v134 = a16;
    v133 = a17;
    v128 = a19;
    v129 = a18;
    v124 = a21;
    v125 = a20;
LABEL_27:
    v51 = v115;
    v49 = v118;
    v52 = v122;
    v44 = v114;
    goto LABEL_14;
  }

  sub_213FDC6D0(v121, v120);
  v68 = v251;

  sub_213FDC6D0(v121, v120);
  v235 = a24;
  v236 = a25;
  LOBYTE(v233[0]) = v110;
  v146 = 0xD000000000000014;
  v147 = 0x800000021478AA30;
  v148 = 0xD00000000000001CLL;
  v149 = v68;

  sub_213FDC9D0(v113, v112);
  if ((v109(&v235, v233, &v146) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v75 = 0xD000000000000014;
    v75[1] = 0x800000021478AA30;
    v76 = v251;
    v75[2] = 0xD00000000000001CLL;
    v75[3] = v76;
    swift_willThrow();

    sub_213FDC6D0(v113, v112);
    v40 = v88;
    v145 = a6;
    v144 = a7;
    v142 = a14;
    v141 = a15;
    v134 = a16;
    v133 = a17;
    v128 = a19;
    v129 = a18;
    v124 = a21;
    v125 = a20;
    v120 = a23;
    v121 = a22;
    goto LABEL_27;
  }

  sub_213FDC6D0(v113, v112);
  v69 = v251;

  sub_213FDC6D0(v113, v112);
  v235 = a26;
  v236 = a27;
  LOBYTE(v233[0]) = v105;
  v146 = 0xD000000000000022;
  v147 = 0x800000021478AA50;
  v148 = 0xD00000000000001CLL;
  v149 = v69;

  sub_213FDC9D0(v108, v107);
  v70 = v104(&v235, v233, &v146);
  if ((v70 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v79 = 0xD000000000000022;
    v79[1] = 0x800000021478AA50;
    v80 = v251;
    v79[2] = 0xD00000000000001CLL;
    v79[3] = v80;
    swift_willThrow();

    sub_213FDC6D0(v108, v107);
    v40 = v88;
    v145 = a6;
    v144 = a7;
    v142 = a14;
    v141 = a15;
    v134 = a16;
    v133 = a17;
    v128 = a19;
    v129 = a18;
    v124 = a21;
    v125 = a20;
    v120 = a23;
    v121 = a22;
    v112 = a25;
    v113 = a24;
    goto LABEL_27;
  }

  sub_213FDC6D0(v108, v107);
  v77 = v251;

  sub_213FDC6D0(v108, v107);
  v235 = a30;
  v236 = a31;
  LOBYTE(v233[0]) = v100;
  v146 = 0xD000000000000022;
  v147 = 0x800000021478AA80;
  v148 = 0xD00000000000001CLL;
  v149 = v77;

  sub_213FDC9D0(v101, v102);
  v78 = v99(&v235, v233, &v146);
  if ((v78 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v86 = 0xD000000000000022;
    v86[1] = 0x800000021478AA80;
    v87 = v251;
    v86[2] = 0xD00000000000001CLL;
    v86[3] = v87;
    swift_willThrow();

    sub_213FDC6D0(v101, v102);
    v40 = v88;
    v145 = a6;
    v144 = a7;
    v142 = a14;
    v141 = a15;
    v134 = a16;
    v133 = a17;
    v128 = a19;
    v129 = a18;
    v124 = a21;
    v125 = a20;
    v120 = a23;
    v121 = a22;
    v112 = a25;
    v113 = a24;
    v107 = a27;
    v108 = a26;
    goto LABEL_27;
  }

  sub_213FDC6D0(v101, v102);

  result = sub_213FDC6D0(v101, v102);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v93;
  *(a9 + 24) = v114;
  *(a9 + 32) = a3;
  *(a9 + 40) = v88;
  *(a9 + 48) = v94;
  *(a9 + 56) = a5;
  *(a9 + 64) = v135;
  *(a9 + 72) = v143;
  *(a9 + 80) = a6;
  *(a9 + 88) = a7;
  *(a9 + 96) = v136;
  *(a9 + 104) = a8;
  *(a9 + 112) = a10;
  *(a9 + 120) = a11;
  *(a9 + 128) = a12;
  *(a9 + 136) = a13 & 1;
  *(a9 + 144) = v137;
  *(a9 + 152) = v140;
  *(a9 + 160) = a14;
  *(a9 + 168) = a15;
  *(a9 + 176) = v138;
  *(a9 + 184) = v130;
  *(a9 + 192) = v132;
  *(a9 + 200) = a16;
  *(a9 + 208) = a17;
  *(a9 + 216) = v131;
  *(a9 + 224) = v126;
  *(a9 + 232) = v127;
  *(a9 + 240) = a18;
  *(a9 + 248) = a19;
  *(a9 + 256) = v122;
  *(a9 + 260) = *&v245[3];
  *(a9 + 257) = *v245;
  *(a9 + 49) = v250[0];
  *(a9 + 52) = *(v250 + 3);
  *(a9 + 100) = *(v249 + 3);
  *(a9 + 97) = v249[0];
  *(a9 + 140) = *(v248 + 3);
  *(a9 + 137) = v248[0];
  *(a9 + 180) = *&v247[3];
  *(a9 + 177) = *v247;
  *(a9 + 220) = *&v246[3];
  *(a9 + 217) = *v246;
  *(a9 + 264) = v118;
  *(a9 + 272) = v123;
  *(a9 + 280) = a20;
  *(a9 + 288) = a21;
  *(a9 + 296) = v115;
  v81 = *v244;
  *(a9 + 300) = *&v244[3];
  *(a9 + 297) = v81;
  *(a9 + 304) = v116;
  *(a9 + 312) = v119;
  *(a9 + 320) = a22;
  *(a9 + 328) = a23;
  *(a9 + 336) = v117;
  v82 = *v243;
  *(a9 + 340) = *&v243[3];
  *(a9 + 337) = v82;
  *(a9 + 344) = v109;
  *(a9 + 352) = v111;
  *(a9 + 360) = a24;
  *(a9 + 368) = a25;
  *(a9 + 376) = v110;
  v83 = *v242;
  *(a9 + 380) = *&v242[3];
  *(a9 + 377) = v83;
  *(a9 + 384) = v104;
  *(a9 + 392) = v106;
  *(a9 + 400) = a26;
  *(a9 + 408) = a27;
  *(a9 + 416) = v105;
  v84 = v241[0];
  *(a9 + 420) = *(v241 + 3);
  *(a9 + 417) = v84;
  *(a9 + 424) = a28;
  *(a9 + 432) = a29;
  *(a9 + 440) = v99;
  *(a9 + 448) = v103;
  *(a9 + 456) = a30;
  *(a9 + 464) = a31;
  *(a9 + 472) = v100;
  v85 = v240[0];
  *(a9 + 476) = *(v240 + 3);
  *(a9 + 473) = v85;
  *(a9 + 480) = a32;
  *(a9 + 488) = a33;
  return result;
}

uint64_t sub_2140A9884@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, unsigned __int16 *a4@<X3>, unsigned __int16 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v20 = *a1;
  v21 = *a2;
  v22 = *a3;
  v24 = *a4 | (*(a4 + 2) << 16);
  v33 = *a5 | (*(a5 + 2) << 16);
  sub_214509038(&v25);
  v11 = v25;
  v12 = v26;
  v13 = v27;
  v14 = v28;
  v32[0] = a6;
  v32[1] = a7;
  v23 = v29;
  v34 = v29;
  v25 = 0xD00000000000001ELL;
  v26 = 0x800000021478B1A0;
  v27 = 0xD00000000000001CLL;
  v28 = 0x800000021478A360;

  sub_213FDC9D0(v13, v14);
  v15 = v11(v32, &v34, &v25);
  if (v19)
  {
  }

  else
  {
    if (v15)
    {
      sub_213FDC6D0(v13, v14);

      result = sub_213FDC6D0(v13, v14);
      *a8 = v20;
      *(a8 + 1) = v21;
      *(a8 + 2) = v22;
      *(a8 + 5) = BYTE2(v24);
      *(a8 + 3) = v24;
      v17 = v33;
      *(a8 + 8) = BYTE2(v33);
      *(a8 + 6) = v17;
      *(a8 + 16) = v11;
      *(a8 + 24) = v12;
      *(a8 + 32) = a6;
      *(a8 + 40) = a7;
      *(a8 + 48) = v23;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD00000000000001ELL;
    v18[1] = 0x800000021478B1A0;
    v18[2] = 0xD00000000000001CLL;
    v18[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6D0(v13, v14);
  LOBYTE(v25) = v20;
  BYTE1(v25) = v21;
  BYTE2(v25) = v22;
  BYTE5(v25) = BYTE2(v24);
  *(&v25 + 3) = v24;
  LOBYTE(v26) = BYTE2(v33);
  HIWORD(v25) = v33;
  v27 = v11;
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v31 = v23;
  return sub_21405C980(&v25);
}

uint64_t sub_2140A9AE8@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage();
  result = sub_21408AC04(a2, a4 + *(v7 + 20), &qword_27C904EC8, "</\r");
  v9 = a4 + *(v7 + 24);
  *v9 = a3;
  v9[4] = BYTE4(a3) & 1;
  return result;
}

uint64_t sub_2140A9B6C@<X0>(uint64_t (*a1)(void, void, void)@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2146F3C40;
  *(v8 + 16) = sub_2142E10E8;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  sub_21404328C(inited, &v46);
  v11 = v46;
  v10 = v47;
  v26 = v48;
  v12 = v49;
  LOBYTE(inited) = v50;
  sub_21464CD1C(v35);
  v29 = v35[0];
  v30 = v35[1];
  v34 = v36;
  strcpy(v35, "MBDMenu.level");
  v54 = v37;
  v27 = v38;
  v53 = v12;
  v51[0] = v12;
  v46 = a1;
  v31 = inited;
  v45 = inited;
  HIWORD(v35[1]) = -4864;
  v36 = 0xD00000000000001CLL;
  v37 = 0x800000021478A360;

  v28 = v11;
  v13 = v11(&v46, &v45, v35);
  if (v5)
  {

LABEL_6:

    v53 = v12;
    v19 = v26;
    v14 = v27;
    v16 = v29;
    v15 = v30;
LABEL_7:
    v35[0] = v28;
    v35[1] = v10;
    v36 = v19;
    LOBYTE(v37) = v53;
    BYTE1(v37) = v31;
    *(&v37 + 2) = *&v52[5];
    HIWORD(v37) = v52[7];
    v38 = v16;
    v39 = v15;
    v40 = v34;
    v41 = v54;
    v42 = v14;
    *v43 = *v52;
    *&v43[3] = *(&v52[1] + 1);
    v44 = a4;
    return sub_2142E1100(v35);
  }

  if ((v13 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    strcpy(v18, "MBDMenu.level");
    *(v18 + 7) = -4864;
    *(v18 + 2) = 0xD00000000000001CLL;
    *(v18 + 3) = 0x800000021478A360;
    swift_willThrow();
    v12 = v51[0];
    goto LABEL_6;
  }

  v53 = 0;
  v46 = a2;
  v47 = a3;
  v14 = v27;
  v51[0] = v27;
  v35[0] = 0xD000000000000013;
  v35[1] = 0x800000021478C7C0;
  v36 = 0xD00000000000001CLL;
  v37 = 0x800000021478A360;
  v15 = v30;

  sub_213FDC9D0(v34, v54);
  v16 = v29;
  v17 = v29(&v46, v51, v35);
  if ((v17 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v23 = 0xD000000000000013;
    v23[1] = 0x800000021478C7C0;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v34, v54);
    v19 = a1;
    goto LABEL_7;
  }

  v21 = v54;
  sub_213FDC6D0(v34, v54);

  result = sub_213FDC6D0(v34, v21);
  v22 = v53;
  *a5 = v28;
  *(a5 + 8) = v10;
  *(a5 + 16) = a1;
  *(a5 + 24) = v22;
  *(a5 + 25) = v31;
  *(a5 + 32) = v29;
  *(a5 + 40) = v30;
  *(a5 + 48) = a2;
  *(a5 + 56) = a3;
  *(a5 + 64) = v27;
  *(a5 + 72) = a4;
  return result;
}

uint64_t sub_2140A9F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t *a23, uint64_t a24, char a25, uint64_t a26, unint64_t a27, char a28, char a29, uint64_t a30, unint64_t a31, uint64_t a32, unint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, unint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, unint64_t a63)
{
  v74 = MEMORY[0x28223BE20](a1);
  v318 = v75;
  *(&v317 + 1) = v76;
  *&v317 = v77;
  v293 = v78;
  v261 = v79;
  v292 = v80;
  v259 = v81;
  v312 = v74;
  v83 = v82;
  v310 = STACK[0x1B22];
  v309 = STACK[0x1B21];
  v308 = STACK[0x1B18];
  v307 = STACK[0x1B08];
  v306 = STACK[0x1B00];
  v305 = STACK[0x1AF8];
  v304 = STACK[0x1AF0];
  v303 = STACK[0x1AEA];
  v302 = STACK[0x1AE9];
  v301 = STACK[0x1AE0];
  v300 = STACK[0x1AD0];
  v299 = STACK[0x1AC8];
  v298 = STACK[0x1AB8];
  v316 = STACK[0x1788];
  v84 = STACK[0x1780];
  v187 = *a23;
  v188 = *(a23 + 8);
  v291 = *(a23 + 9);
  v85 = *(STACK[0x1780] + 48);
  v828 = *(STACK[0x1780] + 32);
  v829 = v85;
  v86 = v84[5];
  v830 = v84[4];
  v831 = v86;
  v87 = v84[1];
  v826 = *v84;
  v827 = v87;
  v314 = STACK[0x1AB0];
  v315 = STACK[0x1AA8];
  v297 = STACK[0x1AA0];
  v296 = STACK[0x1A98];
  v295 = STACK[0x1A88];
  v294 = STACK[0x1A78];
  v282 = STACK[0x1A68];
  v279 = STACK[0x1A58];
  v278 = STACK[0x1A50];
  v277 = STACK[0x1A48];
  v320 = STACK[0x1A40];
  v311 = STACK[0x1A38];
  v276 = STACK[0x1A28];
  v313 = STACK[0x1A20];
  v319 = STACK[0x1A18];
  v275 = STACK[0x1A08];
  v832 = STACK[0x1A00];
  v350 = STACK[0x19F8];
  v349 = STACK[0x19F0];
  v348 = STACK[0x19E8];
  v347 = STACK[0x19E0];
  v346 = STACK[0x19D8];
  v274 = STACK[0x19C8];
  v345 = STACK[0x19C0];
  v344 = STACK[0x19B8];
  v343 = STACK[0x19B0];
  v342 = STACK[0x19A8];
  v273 = STACK[0x1998];
  v272 = STACK[0x1988];
  v271 = STACK[0x1980];
  v270 = STACK[0x1978];
  v269 = STACK[0x1971];
  v268 = STACK[0x1968];
  v341 = STACK[0x1960];
  v340 = STACK[0x1958];
  v267 = STACK[0x1948];
  v266 = STACK[0x1942];
  v265 = STACK[0x1941];
  v264 = STACK[0x1938];
  v263 = STACK[0x1930];
  v262 = STACK[0x1928];
  v260 = STACK[0x1920];
  v258 = STACK[0x1918];
  v257 = STACK[0x1910];
  v256 = STACK[0x1900];
  v255 = STACK[0x18F0];
  v339 = STACK[0x18E8];
  v338 = STACK[0x18E0];
  v337 = STACK[0x18D8];
  v336 = STACK[0x18D0];
  v254 = STACK[0x18C0];
  v335 = STACK[0x18B8];
  v334 = STACK[0x18B0];
  v333 = STACK[0x18A8];
  v332 = STACK[0x18A0];
  v253 = STACK[0x1890];
  v251 = STACK[0x1880];
  v245 = STACK[0x1878];
  v240 = STACK[0x1870];
  v238 = STACK[0x1860];
  v242 = STACK[0x1850];
  v250 = STACK[0x1849];
  v244 = STACK[0x1840];
  v248 = STACK[0x1830];
  v247 = STACK[0x182A];
  v252 = STACK[0x1829];
  v249 = STACK[0x1820];
  v330 = STACK[0x1818];
  v329 = STACK[0x1810];
  v328 = STACK[0x1808];
  v331 = STACK[0x1800];
  v241 = STACK[0x17F8];
  v237 = STACK[0x17F0];
  v243 = STACK[0x17E0];
  v239 = STACK[0x17DA];
  v246 = STACK[0x17D9];
  v236 = STACK[0x17D8];
  v235 = STACK[0x17D0];
  v234 = STACK[0x17C8];
  v233 = STACK[0x17B8];
  v327 = STACK[0x17B0];
  v326 = STACK[0x17A8];
  v232 = STACK[0x17A0];
  v231 = STACK[0x1798];
  v325 = STACK[0x1790];
  v230 = STACK[0x1778];
  v229 = STACK[0x1770];
  v228 = STACK[0x1760];
  v227 = STACK[0x1750];
  v226 = STACK[0x1748];
  v225 = STACK[0x1740];
  v224 = STACK[0x1739];
  v223 = STACK[0x1730];
  v222 = STACK[0x1728];
  v221 = STACK[0x1720];
  v220 = STACK[0x1710];
  v219 = STACK[0x1708];
  v218 = STACK[0x1700];
  v217 = STACK[0x16F0];
  v216 = STACK[0x16E8];
  v215 = STACK[0x16E0];
  v214 = STACK[0x16D8];
  v213 = STACK[0x16D0];
  v212 = STACK[0x16C8];
  v211 = STACK[0x16C0];
  v210 = STACK[0x16B8];
  v209 = STACK[0x16B0];
  v208 = STACK[0x16A8];
  v207 = STACK[0x16A0];
  v324 = STACK[0x1698];
  v323 = STACK[0x1690];
  v206 = STACK[0x1688];
  v205 = STACK[0x1680];
  v204 = STACK[0x1678];
  v203 = STACK[0x1670];
  v202 = STACK[0x166C];
  v201 = STACK[0x166B];
  v200 = STACK[0x166A];
  v199 = STACK[0x1669];
  v198 = STACK[0x1660];
  v197 = STACK[0x1650];
  v196 = STACK[0x1640];
  v195 = STACK[0x1638];
  v194 = STACK[0x1630];
  v193 = STACK[0x1620];
  v192 = STACK[0x1610];
  v191 = STACK[0x1600];
  v190 = STACK[0x15F8];
  v189 = STACK[0x15F0];
  v186 = STACK[0x15E0];
  v185 = STACK[0x15D8];
  v184 = STACK[0x15D0];
  v183 = STACK[0x15C0];
  v182 = STACK[0x15B0];
  v181 = STACK[0x15A8];
  v180 = STACK[0x15A0];
  v322 = STACK[0x1598];
  v321 = STACK[0x1590];
  v179 = STACK[0x1580];
  v178 = STACK[0x1570];
  v177 = STACK[0x1560];
  v176 = STACK[0x1550];
  v175 = STACK[0x1548];
  v174 = STACK[0x1540];
  v280 = STACK[0x1B20];
  v155 = STACK[0x1B10];
  v154 = STACK[0x1AE8];
  v153 = STACK[0x1AD8];
  v289 = STACK[0x1AC0];
  v287 = STACK[0x1A90];
  v285 = STACK[0x1A80];
  v283 = STACK[0x1A70];
  v152 = STACK[0x1A60];
  v172 = STACK[0x1A30];
  v170 = STACK[0x1A10];
  v168 = STACK[0x19D0];
  v166 = STACK[0x19A0];
  v164 = STACK[0x1990];
  v162 = STACK[0x1970];
  v160 = STACK[0x1950];
  v158 = STACK[0x1940];
  v156 = STACK[0x1908];
  v151 = STACK[0x18F8];
  v150 = STACK[0x18C8];
  v148 = STACK[0x1898];
  v146 = STACK[0x1888];
  v144 = STACK[0x1868];
  v142 = STACK[0x1858];
  v140 = STACK[0x1848];
  v139 = STACK[0x1838];
  v138 = STACK[0x1828];
  v137 = STACK[0x17E8];
  v136 = STACK[0x17C0];
  v135 = STACK[0x1768];
  v134 = STACK[0x1758];
  v133 = STACK[0x1738];
  v132 = STACK[0x1718];
  v131 = STACK[0x16F8];
  v130 = STACK[0x1668];
  v129 = STACK[0x1658];
  v128 = STACK[0x1648];
  v127 = STACK[0x1628];
  v126 = STACK[0x1618];
  v125 = STACK[0x1608];
  v124 = STACK[0x15E8];
  v123 = STACK[0x15C8];
  v122 = STACK[0x15B8];
  v121 = STACK[0x1588];
  v119 = STACK[0x1578];
  v117 = STACK[0x1568];
  v115 = STACK[0x1558];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v89 = swift_allocObject();
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_2146F3C50;
  *(v89 + 16) = sub_21438F468;
  *(v89 + 24) = v90;
  *(v88 + 32) = v89;
  sub_213FDCA18(v317, *(&v317 + 1));
  sub_213FDCA18(v318, a9);
  sub_213FDCA18(a10, a11);
  sub_213FDCA18(a12, a13);
  sub_213FDCA18(a14, a15);
  sub_213FDCA18(a18, a19);
  sub_213FDCA18(a26, a27);
  sub_213FDCA18(a30, a31);
  sub_213FDCA18(a32, a33);
  sub_213FDCA18(a40, a41);
  sub_213FDCA18(a62, a63);
  sub_213FDCA18(a64, a65);
  sub_213FDCA18(a68, a69);
  sub_213FDCA18(v321, v322);
  sub_213FDCA18(v323, v324);
  sub_213FDCA18(v316, v325);
  sub_213FDCA18(v326, v327);
  sub_213FDCA18(v331, v328);
  sub_213FDCA18(v329, v330);
  sub_213FDCA18(v332, v333);
  sub_213FDCA18(v334, v335);
  sub_213FDCA18(v336, v337);
  sub_213FDCA18(v338, v339);
  sub_213FDCA18(v340, v341);
  sub_213FDCA18(v342, v343);
  sub_213FDCA18(v344, v345);
  sub_213FDCA18(v346, v347);
  sub_213FDCA18(v348, v349);
  sub_213FDCA18(v350, v832);
  sub_213FDCA18(v319, v313);
  sub_213FDCA18(v311, v320);
  sub_213FDCA18(v315, v314);
  sub_21404328C(v88, &v351);
  v825 = BYTE8(v352);
  v815 = a25 & 1;
  v811 = a43 & 1;
  v809 = a57 & 1;
  v807 = a59 & 1;
  v805 = a67 & 1;
  v803 = v115 & 1;
  v801 = v117 & 1;
  v799 = v119 & 1;
  v797 = v121 & 1;
  v795 = v122 & 1;
  v793 = v123 & 1;
  v791 = v124 & 1;
  v789 = v125 & 1;
  v787 = v126 & 1;
  v785 = v127 & 1;
  v783 = v128 & 1;
  v781 = v129 & 1;
  v779 = v130 & 1;
  v776 = v131 & 1;
  v774 = v132 & 1;
  v772 = v133 & 1;
  v769 = v134 & 1;
  v767 = v135 & 1;
  v91 = v351;
  v765 = v136 & 1;
  v112 = v352;
  v761 = v137 & 1;
  v759 = v138 & 1;
  v756 = v139 & 1;
  v754 = v140 & 1;
  v751 = v142 & 1;
  v749 = v144 & 1;
  v747 = v146 & 1;
  v745 = v148 & 1;
  v743 = v150 & 1;
  v741 = v151 & 1;
  v157 = v156 & 1;
  v739 = v157;
  v159 = v158 & 1;
  v737 = v159;
  v161 = v160 & 1;
  v734 = v161;
  v163 = v162 & 1;
  v732 = v163;
  v165 = v164 & 1;
  v729 = v165;
  v167 = v166 & 1;
  v727 = v167;
  v169 = v168 & 1;
  v725 = v169;
  v171 = v170 & 1;
  v723 = v171;
  v173 = v172 & 1;
  v721 = v173;
  v719 = v152 & 1;
  v284 = v283 & 1;
  v717 = v284;
  v286 = v285 & 1;
  v715 = v286;
  v288 = v287 & 1;
  v713 = v288;
  v290 = v289 & 1;
  v711 = v290;
  v709 = v153 & 1;
  v707 = v154 & 1;
  v703 = v155 & 1;
  v701 = v280 & 1;
  *&v352 = 0xD00000000000001CLL;
  v113 = BYTE8(v352);
  v821 = BYTE8(v352);
  v700 = v312;
  v114 = BYTE9(v352);
  v818 = BYTE9(v352);
  *&v351 = 0xD000000000000016;
  *(&v351 + 1) = 0x800000021478C7E0;
  *(&v352 + 1) = 0x800000021478A360;
  v116 = v115 & 1;
  v118 = v117 & 1;
  v120 = v119 & 1;
  v149 = v140 & 1;
  v141 = v144 & 1;
  v143 = v146 & 1;
  v145 = v751;
  v147 = v745;

  v92 = (v91)(&v700, &v818, &v351);
  v281 = v280 & 1;
  if (v73)
  {
    v93 = v315;
    sub_213FDC6BC(v315, v314);
    v94 = v311;
    sub_213FDC6BC(v311, v320);
    sub_213FDC6BC(v319, v313);
    sub_213FDC6BC(v350, v832);
    sub_213FDC6BC(v348, v349);
    sub_213FDC6BC(v346, v347);
    sub_213FDC6BC(v344, v345);
    sub_213FDC6BC(v342, v343);
    sub_213FDC6BC(v340, v341);
    sub_213FDC6BC(v338, v339);
    sub_213FDC6BC(v336, v337);
    sub_213FDC6BC(v334, v335);
    sub_213FDC6BC(v332, v333);
    sub_213FDC6BC(v329, v330);
    sub_213FDC6BC(v331, v328);
    sub_213FDC6BC(v326, v327);
    sub_213FDC6BC(v316, v325);
    sub_213FDC6BC(v323, v324);
    sub_213FDC6BC(v321, v322);
    sub_213FDC6BC(a68, a69);
    sub_213FDC6BC(a64, a65);
    sub_213FDC6BC(a62, a63);
    sub_213FDC6BC(a40, a41);
    sub_213FDC6BC(a32, a33);
    sub_213FDC6BC(a30, a31);
    sub_213FDC6BC(a26, a27);
    sub_213FDC6BC(a18, a19);
    sub_213FDC6BC(a14, a15);
    sub_213FDC6BC(a12, a13);
    sub_213FDC6BC(a10, a11);
    sub_213FDC6BC(v318, a9);
    sub_213FDC6BC(v317, *(&v317 + 1));

    v95 = v314;
    v96 = v316;
    v97 = v313;
  }

  else
  {
    if (v92)
    {

      sub_213FDC6BC(v315, v314);
      sub_213FDC6BC(v311, v320);
      sub_213FDC6BC(v319, v313);
      sub_213FDC6BC(v350, v832);
      sub_213FDC6BC(v348, v349);
      sub_213FDC6BC(v346, v347);
      sub_213FDC6BC(v344, v345);
      sub_213FDC6BC(v342, v343);
      sub_213FDC6BC(v340, v341);
      sub_213FDC6BC(v338, v339);
      sub_213FDC6BC(v336, v337);
      sub_213FDC6BC(v334, v335);
      sub_213FDC6BC(v332, v333);
      sub_213FDC6BC(v329, v330);
      sub_213FDC6BC(v331, v328);
      sub_213FDC6BC(v326, v327);
      sub_213FDC6BC(v316, v325);
      sub_213FDC6BC(v323, v324);
      sub_213FDC6BC(v321, v322);
      sub_213FDC6BC(a68, a69);
      sub_213FDC6BC(a64, a65);
      sub_213FDC6BC(a62, a63);
      sub_213FDC6BC(a40, a41);
      sub_213FDC6BC(a32, a33);
      sub_213FDC6BC(a30, a31);
      sub_213FDC6BC(a26, a27);
      sub_213FDC6BC(a18, a19);
      sub_213FDC6BC(a14, a15);
      sub_213FDC6BC(a12, a13);
      sub_213FDC6BC(a10, a11);
      sub_213FDC6BC(v318, a9);
      sub_213FDC6BC(v317, *(&v317 + 1));
      v821 = 0;

      *v83 = v91;
      *(v83 + 16) = v312;
      *(v83 + 25) = v114;
      *(v83 + 32) = v259;
      *(v83 + 40) = v292 & 1;
      *(v83 + 48) = v261;
      *(v83 + 56) = v293 & 1;
      *(v83 + 64) = v317;
      *(v83 + 80) = v318;
      *(v83 + 88) = a9;
      *(v83 + 96) = a10;
      *(v83 + 104) = a11;
      *(v83 + 112) = a12;
      *(v83 + 120) = a13;
      *(v83 + 128) = a14;
      *(v83 + 136) = a15;
      *(v83 + 144) = a16;
      *(v83 + 152) = a17;
      *(v83 + 160) = a18;
      *(v83 + 168) = a19;
      *(v83 + 176) = a20;
      *(v83 + 184) = a21;
      *(v83 + 192) = a22;
      *(v83 + 200) = v187;
      *(v83 + 208) = v188;
      *(v83 + 209) = v291;
      *(v83 + 216) = a24;
      *(v83 + 224) = a25 & 1;
      *(v83 + 232) = a26;
      *(v83 + 240) = a27;
      *(v83 + 248) = a28;
      *(v83 + 249) = a29;
      *(v83 + 256) = a30;
      *(v83 + 264) = a31;
      *(v83 + 272) = a32;
      *(v83 + 280) = a33;
      *(v83 + 288) = a34;
      *(v83 + 296) = a35;
      *(v83 + 304) = a36;
      *(v83 + 312) = a37;
      *(v83 + 320) = a38;
      *(v83 + 328) = a39;
      *(v83 + 336) = a40;
      *(v83 + 344) = a41;
      *(v83 + 352) = a42;
      *(v83 + 360) = a43 & 1;
      *(v83 + 368) = a44;
      *(v83 + 376) = a45;
      *(v83 + 384) = a46;
      *(v83 + 392) = a47;
      *(v83 + 400) = a48;
      *(v83 + 408) = a49;
      *(v83 + 416) = a50;
      *(v83 + 424) = a51;
      *(v83 + 432) = a52;
      *(v83 + 440) = a53;
      *(v83 + 448) = a54;
      *(v83 + 456) = a55;
      *(v83 + 464) = a56;
      *(v83 + 472) = a57 & 1;
      *(v83 + 480) = a58;
      *(v83 + 488) = a59 & 1;
      *(v83 + 496) = a60;
      *(v83 + 504) = a61;
      *(v83 + 512) = a62;
      *(v83 + 520) = a63;
      *(v83 + 528) = a64;
      *(v83 + 536) = a65;
      *(v83 + 544) = a66;
      *(v83 + 552) = a67 & 1;
      *(v83 + 560) = a68;
      *(v83 + 568) = a69;
      *(v83 + 576) = a70;
      *(v83 + 584) = a71;
      *(v83 + 592) = a72;
      *(v83 + 600) = a73;
      *(v83 + 608) = v174;
      *(v83 + 616) = v175;
      *(v83 + 624) = v176;
      *(v83 + 632) = v116;
      *(v83 + 640) = v177;
      *(v83 + 648) = v118;
      *(v83 + 656) = v178;
      *(v83 + 664) = v120;
      *(v83 + 672) = v179;
      *(v83 + 680) = v121 & 1;
      *(v83 + 688) = v321;
      *(v83 + 696) = v322;
      *(v83 + 704) = v180;
      *(v83 + 712) = v181;
      *(v83 + 720) = v182;
      *(v83 + 728) = v122 & 1;
      *(v83 + 736) = v183;
      *(v83 + 744) = v123 & 1;
      *(v83 + 752) = v184;
      *(v83 + 760) = v185;
      *(v83 + 768) = v186;
      *(v83 + 776) = v124 & 1;
      *(v83 + 784) = v189;
      *(v83 + 792) = v190;
      *(v83 + 800) = v191;
      *(v83 + 808) = v125 & 1;
      *(v83 + 816) = v192;
      *(v83 + 824) = v126 & 1;
      *(v83 + 832) = v193;
      *(v83 + 840) = v127 & 1;
      *(v83 + 848) = v194;
      *(v83 + 856) = v195;
      *(v83 + 864) = v196;
      *(v83 + 872) = v128 & 1;
      *(v83 + 880) = v197;
      *(v83 + 888) = v129 & 1;
      *(v83 + 896) = v198;
      *(v83 + 904) = v130 & 1;
      *(v83 + 905) = v199;
      *(v83 + 906) = v200;
      *(v83 + 907) = v201;
      *(v83 + 908) = v202;
      *(v83 + 912) = v203;
      *(v83 + 920) = v204;
      *(v83 + 928) = v205;
      *(v83 + 936) = v206;
      *(v83 + 944) = v323;
      *(v83 + 952) = v324;
      *(v83 + 960) = v207;
      *(v83 + 968) = v208;
      *(v83 + 976) = v209;
      *(v83 + 984) = v210;
      *(v83 + 992) = v211;
      *(v83 + 1000) = v212;
      *(v83 + 1008) = v213;
      *(v83 + 1016) = v214;
      *(v83 + 1024) = v215;
      *(v83 + 1032) = v216;
      *(v83 + 1040) = v217;
      *(v83 + 1048) = v131 & 1;
      *(v83 + 1056) = v218;
      *(v83 + 1064) = v219;
      *(v83 + 1072) = v220;
      *(v83 + 1080) = v132 & 1;
      *(v83 + 1088) = v221;
      *(v83 + 1096) = v222;
      *(v83 + 1104) = v223;
      *(v83 + 1112) = v133 & 1;
      *(v83 + 1113) = v224;
      *(v83 + 1120) = v225;
      *(v83 + 1128) = v226;
      *(v83 + 1136) = v227;
      *(v83 + 1144) = v134 & 1;
      *(v83 + 1152) = v228;
      *(v83 + 1160) = v135 & 1;
      *(v83 + 1168) = v229;
      *(v83 + 1176) = v230;
      *(v83 + 1280) = v316;
      *(v83 + 1288) = v325;
      *(v83 + 1296) = v231;
      *(v83 + 1304) = v232;
      *(v83 + 1312) = v326;
      *(v83 + 1320) = v327;
      *(v83 + 1328) = v233;
      *(v83 + 1336) = v136 & 1;
      *(v83 + 1344) = v234;
      *(v83 + 1352) = v235;
      *(v83 + 1360) = v236;
      *(v83 + 1512) = v240;
      *(v83 + 1520) = v245;
      *(v83 + 1496) = v238;
      *(v83 + 1504) = v141;
      *(v83 + 1528) = v251;
      *(v83 + 1536) = v143;
      *(v83 + 1544) = v253;
      *(v83 + 1552) = v147;
      *(v83 + 1480) = v242;
      *(v83 + 1488) = v145;
      *(v83 + 1560) = v332;
      *(v83 + 1568) = v333;
      *(v83 + 1576) = v334;
      *(v83 + 1584) = v335;
      *(v83 + 1464) = v244;
      *(v83 + 1472) = v149;
      *(v83 + 1473) = v250;
      *(v83 + 1592) = v254;
      *(v83 + 1600) = v150 & 1;
      *(v83 + 1608) = v336;
      *(v83 + 1442) = v247;
      *(v83 + 1448) = v248;
      *(v83 + 1456) = v139 & 1;
      *(v83 + 1616) = v337;
      *(v83 + 1624) = v338;
      *(v83 + 1632) = v339;
      *(v83 + 1408) = v328;
      *(v83 + 1416) = v329;
      *(v83 + 1424) = v330;
      *(v83 + 1432) = v249;
      *(v83 + 1440) = v138 & 1;
      *(v83 + 1441) = v252;
      *(v83 + 1384) = v237;
      *(v83 + 1392) = v241;
      *(v83 + 1400) = v331;
      *(v83 + 1640) = v255;
      *(v83 + 1648) = v151 & 1;
      *(v83 + 1656) = v256;
      *(v83 + 1362) = v239;
      *(v83 + 1368) = v243;
      *(v83 + 1376) = v137 & 1;
      *(v83 + 1664) = v157;
      *(v83 + 1672) = v257;
      *(v83 + 1680) = v258;
      *(v83 + 1361) = v246;
      *(v83 + 1688) = v260;
      *(v83 + 1696) = v262;
      *(v83 + 1704) = v263;
      *(v83 + 1712) = v264;
      *(v83 + 1720) = v159;
      *(v83 + 1721) = v265;
      *(v83 + 1722) = v266;
      *(v83 + 1728) = v267;
      *(v83 + 1736) = v161;
      *(v83 + 1744) = v340;
      *(v83 + 1752) = v341;
      *(v83 + 1760) = v268;
      *(v83 + 1768) = v163;
      *(v83 + 1769) = v269;
      *(v83 + 1776) = v270;
      *(v83 + 1784) = v271;
      *(v83 + 1792) = v272;
      *(v83 + 1800) = v165;
      *(v83 + 1808) = v273;
      *(v83 + 1816) = v167;
      *(v83 + 1824) = v342;
      *(v83 + 1832) = v343;
      *(v83 + 1840) = v344;
      *(v83 + 1848) = v345;
      *(v83 + 1856) = v274;
      *(v83 + 1864) = v169;
      *(v83 + 1872) = v346;
      *(v83 + 1880) = v347;
      *(v83 + 1888) = v348;
      *(v83 + 1896) = v349;
      *(v83 + 1904) = v350;
      *(v83 + 1912) = v832;
      *(v83 + 1920) = v275;
      *(v83 + 1928) = v171;
      *(v83 + 1936) = v319;
      *(v83 + 1944) = v313;
      *(v83 + 1952) = v276;
      *(v83 + 1960) = v173;
      *(v83 + 1968) = v311;
      *(v83 + 1976) = v320;
      *(v83 + 1984) = v277;
      *(v83 + 1992) = v278;
      *(v83 + 2000) = v279;
      *(v83 + 2008) = v152 & 1;
      *(v83 + 364) = *&v810[3];
      *(v83 + 361) = *v810;
      *(v83 + 476) = *&v808[3];
      *(v83 + 473) = *v808;
      *(v83 + 492) = *&v806[3];
      *(v83 + 489) = *v806;
      *(v83 + 556) = *&v804[3];
      *(v83 + 553) = *v804;
      *(v83 + 636) = *&v802[3];
      *(v83 + 633) = *v802;
      *(v83 + 652) = *&v800[3];
      *(v83 + 649) = *v800;
      *(v83 + 668) = *&v798[3];
      *(v83 + 665) = *v798;
      *(v83 + 684) = *&v796[3];
      *(v83 + 681) = *v796;
      *(v83 + 732) = *&v794[3];
      *(v83 + 729) = *v794;
      *(v83 + 748) = *&v792[3];
      *(v83 + 745) = *v792;
      *(v83 + 780) = *&v790[3];
      *(v83 + 777) = *v790;
      *(v83 + 812) = *&v788[3];
      *(v83 + 809) = *v788;
      *(v83 + 828) = *&v786[3];
      *(v83 + 825) = *v786;
      *(v83 + 844) = *&v784[3];
      *(v83 + 841) = *v784;
      *(v83 + 876) = *&v782[3];
      *(v83 + 873) = *v782;
      *(v83 + 892) = *&v780[3];
      *(v83 + 889) = *v780;
      *(v83 + 909) = v777;
      *(v83 + 1049) = *v775;
      *(v83 + 1081) = *v773;
      *(v83 + 1114) = v770;
      *(v83 + 1148) = *&v768[3];
      *(v83 + 1145) = *v768;
      *(v83 + 1161) = *v766;
      *(v83 + 1340) = *&v764[3];
      *(v83 + 1337) = *v764;
      *(v83 + 1363) = v762;
      *(v83 + 1380) = *&v760[3];
      *(v83 + 1377) = *v760;
      *(v83 + 1443) = v757;
      *(v83 + 1460) = *&v755[3];
      *(v83 + 1457) = *v755;
      *(v83 + 1474) = v752;
      *(v83 + 1492) = *&v750[3];
      *(v83 + 1489) = *v750;
      *(v83 + 1508) = *&v748[3];
      *(v83 + 1505) = *v748;
      *(v83 + 1540) = *&v746[3];
      *(v83 + 1537) = *v746;
      *(v83 + 1556) = *&v744[3];
      *(v83 + 1553) = *v744;
      *(v83 + 1604) = *&v742[3];
      *(v83 + 1601) = *v742;
      *(v83 + 1652) = *&v740[3];
      *(v83 + 1649) = *v740;
      *(v83 + 1668) = *&v738[3];
      *(v83 + 1665) = *v738;
      *(v83 + 1723) = v735;
      *(v83 + 1740) = *&v733[3];
      *(v83 + 1737) = *v733;
      *(v83 + 1770) = v730;
      *(v83 + 1804) = *&v728[3];
      *(v83 + 1801) = *v728;
      *(v83 + 1820) = *&v726[3];
      *(v83 + 1817) = *v726;
      *(v83 + 1868) = *&v724[3];
      *(v83 + 1865) = *v724;
      *(v83 + 1932) = *&v722[3];
      *(v83 + 1929) = *v722;
      *(v83 + 1964) = *&v720[3];
      *(v83 + 1961) = *v720;
      *(v83 + 2012) = *&v718[3];
      *(v83 + 2009) = *v718;
      *(v83 + 26) = v823;
      *(v83 + 30) = v824;
      *(v83 + 41) = *v822;
      *(v83 + 44) = *&v822[3];
      *(v83 + 57) = *v820;
      *(v83 + 60) = *&v820[3];
      *(v83 + 193) = *v819;
      *(v83 + 196) = *&v819[3];
      *(v83 + 210) = v816;
      *(v83 + 214) = v817;
      *(v83 + 225) = *v814;
      *(v83 + 228) = *&v814[3];
      *(v83 + 254) = v813;
      *(v83 + 250) = v812;
      *(v83 + 911) = v778;
      *(v83 + 1052) = *&v775[3];
      v825 = 0;
      v353 = v828;
      v354 = v829;
      v355 = v830;
      v356 = v831;
      v351 = v826;
      v352 = v827;
      *(v83 + 24) = 0;
      *(v83 + 1084) = *&v773[3];
      *(v83 + 1118) = v771;
      *(v83 + 1164) = *&v766[3];
      v99 = v351;
      *(v83 + 1200) = v352;
      *(v83 + 1184) = v99;
      v100 = v353;
      v101 = v354;
      v102 = v355;
      *(v83 + 1264) = v356;
      *(v83 + 1248) = v102;
      *(v83 + 1232) = v101;
      *(v83 + 1216) = v100;
      *(v83 + 1367) = v763;
      *(v83 + 1447) = v758;
      *(v83 + 1478) = v753;
      *(v83 + 1727) = v736;
      *(v83 + 1774) = v731;
      *(v83 + 2016) = v282;
      *(v83 + 2024) = v284;
      v103 = *v716;
      *(v83 + 2028) = *&v716[3];
      *(v83 + 2025) = v103;
      *(v83 + 2032) = v294;
      *(v83 + 2040) = v286;
      v104 = *v714;
      *(v83 + 2044) = *&v714[3];
      *(v83 + 2041) = v104;
      *(v83 + 2048) = v295;
      *(v83 + 2056) = v288;
      v105 = *v712;
      *(v83 + 2060) = *&v712[3];
      *(v83 + 2057) = v105;
      *(v83 + 2064) = v296;
      *(v83 + 2072) = v297;
      *(v83 + 2080) = v315;
      *(v83 + 2088) = v314;
      *(v83 + 2096) = v298;
      *(v83 + 2104) = v290;
      v106 = *v710;
      *(v83 + 2108) = *&v710[3];
      *(v83 + 2105) = v106;
      *(v83 + 2112) = v299;
      *(v83 + 2120) = v300;
      *(v83 + 2128) = v153 & 1;
      v107 = *v708;
      *(v83 + 2132) = *&v708[3];
      *(v83 + 2129) = v107;
      *(v83 + 2136) = v301;
      *(v83 + 2144) = v154 & 1;
      *(v83 + 2145) = v302;
      *(v83 + 2146) = v303;
      v108 = v705;
      *(v83 + 2151) = v706;
      *(v83 + 2147) = v108;
      *(v83 + 2152) = v304;
      *(v83 + 2160) = v305;
      *(v83 + 2168) = v306;
      v109 = *v704;
      *(v83 + 2172) = *&v704[3];
      *(v83 + 2169) = v109;
      *(v83 + 2176) = v307;
      *(v83 + 2184) = v155 & 1;
      v110 = *v702;
      *(v83 + 2188) = *&v702[3];
      *(v83 + 2185) = v110;
      *(v83 + 2192) = v308;
      *(v83 + 2200) = v281;
      *(v83 + 2201) = v309;
      *(v83 + 2202) = v310;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v111 = 0xD000000000000016;
    v111[1] = 0x800000021478C7E0;
    v111[2] = 0xD00000000000001CLL;
    v111[3] = 0x800000021478A360;
    swift_willThrow();
    v93 = v315;
    v95 = v314;
    sub_213FDC6BC(v315, v314);
    v94 = v311;
    sub_213FDC6BC(v311, v320);
    v97 = v313;
    sub_213FDC6BC(v319, v313);
    sub_213FDC6BC(v350, v832);
    sub_213FDC6BC(v348, v349);
    sub_213FDC6BC(v346, v347);
    sub_213FDC6BC(v344, v345);
    sub_213FDC6BC(v342, v343);
    sub_213FDC6BC(v340, v341);
    sub_213FDC6BC(v338, v339);
    sub_213FDC6BC(v336, v337);
    sub_213FDC6BC(v334, v335);
    sub_213FDC6BC(v332, v333);
    sub_213FDC6BC(v329, v330);
    sub_213FDC6BC(v331, v328);
    sub_213FDC6BC(v326, v327);
    v96 = v316;
    sub_213FDC6BC(v316, v325);
    sub_213FDC6BC(v323, v324);
    sub_213FDC6BC(v321, v322);
    sub_213FDC6BC(a68, a69);
    sub_213FDC6BC(a64, a65);
    sub_213FDC6BC(a62, a63);
    sub_213FDC6BC(a40, a41);
    sub_213FDC6BC(a32, a33);
    sub_213FDC6BC(a30, a31);
    sub_213FDC6BC(a26, a27);
    sub_213FDC6BC(a18, a19);
    sub_213FDC6BC(a14, a15);
    sub_213FDC6BC(a12, a13);
    sub_213FDC6BC(a10, a11);
    sub_213FDC6BC(v318, a9);
    sub_213FDC6BC(v317, *(&v317 + 1));
    v113 = v821;
  }

  v351 = v91;
  *&v352 = v112;
  BYTE9(v352) = v114;
  *&v353 = v259;
  BYTE8(v353) = v292 & 1;
  *&v354 = v261;
  BYTE8(v354) = v293 & 1;
  v355 = v317;
  *&v356 = v318;
  *(&v356 + 1) = a9;
  v357 = a10;
  v358 = a11;
  v359 = a12;
  v360 = a13;
  v361 = a14;
  v362 = a15;
  v363 = a16;
  v364 = a17;
  v365 = a18;
  v366 = a19;
  v367 = a20;
  v368 = a21;
  v369 = a22;
  v371 = v187;
  v372 = v188;
  v373 = v291;
  v376 = a24;
  v377 = a25 & 1;
  v379 = a26;
  v380 = a27;
  v381 = a28;
  v382 = a29;
  v385 = a30;
  v386 = a31;
  v387 = a32;
  v388 = a33;
  v389 = a34;
  v390 = a35;
  v391 = a36;
  v392 = a37;
  v393 = a38;
  v394 = a39;
  v395 = a40;
  v396 = a41;
  v397 = a42;
  v398 = a43 & 1;
  v400 = a44;
  v401 = a45;
  v402 = a46;
  v403 = a47;
  v404 = a48;
  v405 = a49;
  v406 = a50;
  v407 = a51;
  v408 = a52;
  v409 = a53;
  v410 = a54;
  v411 = a55;
  v412 = a56;
  v413 = a57 & 1;
  v415 = a58;
  v416 = a59 & 1;
  v418 = a60;
  v419 = a61;
  v420 = a62;
  v421 = a63;
  v422 = a64;
  v423 = a65;
  v424 = a66;
  v425 = a67 & 1;
  v427 = a68;
  v428 = a69;
  v429 = a70;
  v430 = a71;
  v431 = a72;
  v432 = a73;
  v433 = v174;
  v434 = v175;
  v435 = v176;
  v436 = v116;
  v438 = v177;
  v439 = v118;
  v441 = v178;
  v442 = v120;
  v444 = v179;
  v445 = v121 & 1;
  v447 = v321;
  v448 = v322;
  v449 = v180;
  v450 = v181;
  v451 = v182;
  v452 = v122 & 1;
  v454 = v183;
  v455 = v123 & 1;
  v457 = v184;
  v458 = v185;
  v459 = v186;
  v460 = v124 & 1;
  v462 = v189;
  v463 = v190;
  v464 = v191;
  v465 = v125 & 1;
  v467 = v192;
  v468 = v126 & 1;
  v470 = v193;
  v471 = v127 & 1;
  v473 = v194;
  v474 = v195;
  v475 = v196;
  v476 = v128 & 1;
  v478 = v197;
  v479 = v129 & 1;
  v481 = v198;
  v482 = v130 & 1;
  v483 = v199;
  v484 = v200;
  v485 = v201;
  v486 = v202;
  v489 = v203;
  v490 = v204;
  v491 = v205;
  v492 = v206;
  v493 = v323;
  v494 = v324;
  v495 = v207;
  v496 = v208;
  v497 = v209;
  v498 = v210;
  v499 = v211;
  v500 = v212;
  v501 = v213;
  v502 = v214;
  v503 = v215;
  v504 = v216;
  v505 = v217;
  v506 = v131 & 1;
  v508 = v218;
  v509 = v219;
  v510 = v220;
  v511 = v132 & 1;
  v513 = v221;
  v514 = v222;
  v515 = v223;
  v516 = v133 & 1;
  v517 = v224;
  v520 = v225;
  v521 = v226;
  v522 = v227;
  v523 = v134 & 1;
  v525 = v228;
  v526 = v135 & 1;
  v528 = v229;
  v529 = v230;
  v536 = v96;
  v537 = v325;
  v538 = v231;
  v539 = v232;
  v540 = v326;
  v541 = v327;
  v542 = v233;
  v543 = v136 & 1;
  v545 = v234;
  v546 = v235;
  v547 = v236;
  v548 = v246;
  v549 = v239;
  v552 = v243;
  v553 = v137 & 1;
  v555 = v237;
  v556 = v241;
  v557 = v331;
  v558 = v328;
  v559 = v329;
  v560 = v330;
  v561 = v249;
  v562 = v138 & 1;
  v563 = v252;
  v564 = v247;
  v567 = v248;
  v568 = v139 & 1;
  v570 = v244;
  v571 = v149;
  v572 = v250;
  v575 = v242;
  v576 = v145;
  v578 = v238;
  v579 = v141;
  v581 = v240;
  v582 = v245;
  v583 = v251;
  v584 = v143;
  v586 = v253;
  v587 = v147;
  v589 = v332;
  v590 = v333;
  v591 = v334;
  v592 = v335;
  v593 = v254;
  v594 = v150 & 1;
  v596 = v336;
  v597 = v337;
  v598 = v338;
  v599 = v339;
  v600 = v255;
  v601 = v151 & 1;
  v603 = v256;
  v604 = v157;
  v606 = v257;
  v607 = v258;
  v608 = v260;
  v609 = v262;
  v610 = v263;
  v611 = v264;
  v612 = v159;
  v613 = v265;
  v614 = v266;
  v617 = v267;
  v618 = v161;
  v620 = v340;
  v621 = v341;
  v622 = v268;
  v623 = v163;
  v624 = v269;
  v627 = v270;
  v628 = v271;
  v629 = v272;
  v630 = v165;
  v632 = v273;
  v633 = v167;
  v635 = v342;
  v636 = v343;
  v637 = v344;
  v638 = v345;
  v639 = v274;
  v640 = v169;
  v642 = v346;
  v643 = v347;
  v644 = v348;
  v645 = v349;
  v646 = v350;
  v647 = v832;
  v648 = v275;
  v649 = v171;
  v651 = v319;
  v652 = v97;
  v653 = v276;
  v654 = v173;
  v656 = v94;
  v657 = v320;
  v658 = v277;
  v659 = v278;
  v660 = v279;
  v661 = v152 & 1;
  v663 = v282;
  *v370 = *v819;
  v374 = v816;
  *v378 = *v814;
  v383 = v812;
  *v399 = *v810;
  *v414 = *v808;
  *v417 = *v806;
  *v426 = *v804;
  *v437 = *v802;
  *v440 = *v800;
  *v443 = *v798;
  *v446 = *v796;
  *v453 = *v794;
  *v456 = *v792;
  *v461 = *v790;
  *v466 = *v788;
  *v469 = *v786;
  *v472 = *v784;
  *v477 = *v782;
  *v480 = *v780;
  v487 = v777;
  *v507 = *v775;
  *v512 = *v773;
  v825 = v113;
  BYTE8(v352) = v113;
  *(&v352 + 10) = v823;
  HIWORD(v352) = v824;
  *(&v353 + 9) = *v822;
  HIDWORD(v353) = *&v822[3];
  *(&v354 + 9) = *v820;
  HIDWORD(v354) = *&v820[3];
  *&v370[3] = *&v819[3];
  v375 = v817;
  *&v378[3] = *&v814[3];
  v384 = v813;
  *&v399[3] = *&v810[3];
  *&v414[3] = *&v808[3];
  *&v417[3] = *&v806[3];
  *&v426[3] = *&v804[3];
  *&v437[3] = *&v802[3];
  *&v440[3] = *&v800[3];
  *&v443[3] = *&v798[3];
  *&v446[3] = *&v796[3];
  *&v453[3] = *&v794[3];
  *&v456[3] = *&v792[3];
  *&v461[3] = *&v790[3];
  *&v466[3] = *&v788[3];
  *&v469[3] = *&v786[3];
  *&v472[3] = *&v784[3];
  *&v477[3] = *&v782[3];
  *&v480[3] = *&v780[3];
  v488 = v778;
  *&v507[3] = *&v775[3];
  *&v512[3] = *&v773[3];
  v518 = v770;
  v519 = v771;
  *v524 = *v768;
  *&v524[3] = *&v768[3];
  *v527 = *v766;
  *&v527[3] = *&v766[3];
  v531 = v827;
  v530 = v826;
  v535 = v831;
  v534 = v830;
  v533 = v829;
  v532 = v828;
  *v544 = *v764;
  *&v544[3] = *&v764[3];
  v550 = v762;
  v551 = v763;
  *v554 = *v760;
  *&v554[3] = *&v760[3];
  v565 = v757;
  v566 = v758;
  *v569 = *v755;
  *&v569[3] = *&v755[3];
  v573 = v752;
  v574 = v753;
  *v577 = *v750;
  *&v577[3] = *&v750[3];
  *v580 = *v748;
  *&v580[3] = *&v748[3];
  *v585 = *v746;
  *&v585[3] = *&v746[3];
  *v588 = *v744;
  *&v588[3] = *&v744[3];
  *v595 = *v742;
  *&v595[3] = *&v742[3];
  *v602 = *v740;
  *&v602[3] = *&v740[3];
  *v605 = *v738;
  *&v605[3] = *&v738[3];
  v615 = v735;
  v616 = v736;
  *v619 = *v733;
  *&v619[3] = *&v733[3];
  v625 = v730;
  v626 = v731;
  *v631 = *v728;
  *&v631[3] = *&v728[3];
  *v634 = *v726;
  *&v634[3] = *&v726[3];
  *v641 = *v724;
  *&v641[3] = *&v724[3];
  *v650 = *v722;
  *&v650[3] = *&v722[3];
  *v655 = *v720;
  *&v655[3] = *&v720[3];
  *v662 = *v718;
  *&v662[3] = *&v718[3];
  v664 = v284;
  *v665 = *v716;
  *&v665[3] = *&v716[3];
  v666 = v294;
  v667 = v286;
  *v668 = *v714;
  *&v668[3] = *&v714[3];
  v669 = v295;
  v670 = v288;
  *v671 = *v712;
  *&v671[3] = *&v712[3];
  v672 = v296;
  v673 = v297;
  v674 = v93;
  v675 = v95;
  v676 = v298;
  v677 = v290;
  *v678 = *v710;
  *&v678[3] = *&v710[3];
  v679 = v299;
  v680 = v300;
  v681 = v153 & 1;
  *v682 = *v708;
  *&v682[3] = *&v708[3];
  v683 = v301;
  v684 = v154 & 1;
  v685 = v302;
  v686 = v303;
  v687 = v705;
  v688 = v706;
  v689 = v304;
  v690 = v305;
  v691 = v306;
  *v692 = *v704;
  *&v692[3] = *&v704[3];
  v693 = v307;
  v694 = v155 & 1;
  *v695 = *v702;
  *&v695[3] = *&v702[3];
  v696 = v308;
  v697 = v281;
  v698 = v309;
  v699 = v310;
  return sub_2142E1154(&v351);
}

uint64_t sub_2140AD0CC(char a1)
{
  result = 0x646E616D6D6F63;
  switch(a1)
  {
    case 1:
      return 0x43646E616D6D6F63;
    case 2:
      return 0x6E6F6973726576;
    case 3:
      return 0x64616F6C796170;
    case 4:
      v5 = 0x64656B6C7562;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6150000000000000;
    case 5:
      v5 = 0x74756F6E6166;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6150000000000000;
    case 6:
      return 0xD000000000000011;
    case 7:
      return 0x4D64616F6C796170;
    case 8:
      return 0x496567617373656DLL;
    case 9:
      return 0x556567617373656DLL;
    case 10:
      v6 = 1969583473;
      goto LABEL_108;
    case 11:
      return 0x79726576696C6564;
    case 12:
      return 0x79726576696C6564;
    case 13:
    case 48:
    case 67:
      return 0xD000000000000018;
    case 14:
    case 27:
    case 65:
      return 0xD000000000000014;
    case 15:
    case 54:
    case 80:
    case 89:
    case 93:
    case 124:
    case -127:
    case -116:
      return 0xD000000000000010;
    case 16:
    case 68:
      return 0xD000000000000017;
    case 17:
      return 0x546E6F6973736573;
    case 18:
    case 28:
    case 46:
    case 57:
    case 91:
    case 112:
    case -105:
      return 0xD000000000000013;
    case 19:
      v7 = 0x6E6974736564;
      goto LABEL_115;
    case 20:
      return 0x6E65674172657375;
    case 21:
      return 0x656E774F53434D4DLL;
    case 22:
      return 0xD000000000000011;
    case 23:
      return 0x656C694653434D4DLL;
    case 24:
      return 0x6874754153434D4DLL;
    case 25:
      return 0x6874754153434D4DLL;
    case 26:
      return 0x6874754153434D4DLL;
    case 29:
      return 0x6E776F4453434D4DLL;
    case 30:
      return 0x6F6C705553434D4DLL;
    case 31:
      return 0x6970784553434D4DLL;
    case 32:
      return 0x56746E65746E6F63;
    case 33:
      return 0x48746E65746E6F63;
    case 34:
      return 0x42746E65746E6F63;
    case 35:
    case -117:
      return 0xD000000000000019;
    case 36:
      return 0x656D686361747461;
    case 37:
      return 0x6E656B6F74;
    case 38:
      return 0x64497265646E6573;
    case 39:
      return 0x704F7265646E6573;
    case 40:
      return 0x644970736DLL;
    case 41:
      return 0x65736E6F70736572;
    case 42:
      return 0x6D695468636F7065;
    case 43:
    case 111:
      return 0xD000000000000016;
    case 44:
      return 0x736165526C696166;
    case 45:
      return 0x7373654D6C696166;
    case 47:
      return 0xD00000000000001ALL;
    case 49:
      return 0xD000000000000011;
    case 50:
      v4 = 1818845542;
      goto LABEL_33;
    case 51:
      return 0x6974707972636E65;
    case 52:
      return 0x46656761726F7473;
    case 53:
      return 0x797469726F697270;
    case 55:
      return 0x6B6F546449747364;
    case 56:
      return 0xD000000000000011;
    case 58:
    case 72:
    case 125:
    case -124:
    case -119:
      return 0xD000000000000015;
    case 59:
      return 0x725064697264616DLL;
    case 60:
      return 0x6C616E7265746E69;
    case 61:
      return 0x50676E6967676F6CLL;
    case 62:
      return 0x6F72506563617274;
    case 63:
      return 0x73654D70756F7267;
    case 64:
      v3 = 0x6E65746E6F63;
      goto LABEL_37;
    case 66:
    case 79:
    case 86:
    case 98:
    case -118:
    case -115:
    case -114:
    case -113:
      return 0xD000000000000012;
    case 69:
      v6 = 1667330676;
LABEL_108:
      result = v6 | 0x64496500000000;
      break;
    case 70:
      result = 0x69486B6E756C7073;
      break;
    case 71:
      result = 0x6548707474487361;
      break;
    case 73:
      result = 0x5274696B656D6F68;
      break;
    case 74:
      result = 0x756F437972746572;
      break;
    case 75:
      result = 0x6974704F74736574;
      break;
    case 76:
      result = 0xD000000000000011;
      break;
    case 77:
      result = 0x614C74756F6E6166;
      break;
    case 78:
      result = 7107189;
      break;
    case 81:
      result = 0x6C725570747468;
      break;
    case 82:
      result = 0x6461654870747468;
      break;
    case 83:
      result = 0x79646F4270747468;
      break;
    case 84:
      result = 0x79646F4270747468;
      break;
    case 85:
      result = 0x79646F4270747468;
      break;
    case 87:
      result = 0x6F72724570747468;
      break;
    case 88:
      result = 0x436F546574697277;
      break;
    case 90:
      result = 0xD000000000000011;
      break;
    case 92:
      result = 0x6E657265666E6F63;
      break;
    case 94:
      result = 0x7361487972657571;
      break;
    case 95:
      result = 0x706F724474736574;
      break;
    case 96:
      result = 0x73756C5072657375;
      break;
    case 97:
      result = 0x616974696E497369;
      break;
    case 99:
      result = 0x646F43726F727265;
      break;
    case 100:
      result = 0xD000000000000011;
      break;
    case 101:
      result = 0x61737265766E6F63;
      break;
    case 102:
      result = 0x6C6F636F746F7270;
      break;
    case 103:
      v7 = 0x63696C707061;
LABEL_115:
      result = v7 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
      break;
    case 104:
      result = 0x6E6F73616572;
      break;
    case 105:
      result = 0x6F72724576657270;
      break;
    case 106:
      result = 0x6563634176657270;
      break;
    case 107:
      result = 0x616C655276657270;
      break;
    case 108:
      v4 = 1986359920;
LABEL_33:
      result = v4 | 0x656D695400000000;
      break;
    case 109:
      result = 0xD000000000000011;
      break;
    case 110:
      result = 0x6552657669746361;
      break;
    case 113:
      result = 0x65526E6967756C70;
      break;
    case 114:
      result = 0x614E6E6967756C70;
      break;
    case 115:
      result = 0x6F436E6967756C70;
      break;
    case 116:
      result = 0x74536E6967756C70;
      break;
    case 117:
      result = 0x65446E6967756C70;
      break;
    case 118:
      result = 0x73655377654E7271;
      break;
    case 119:
      v3 = 0x736575716572;
LABEL_37:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x5474000000000000;
      break;
    case 120:
      result = 0x6973736553736469;
      break;
    case 121:
      result = 0x6F725079616C6572;
      break;
    case 122:
      result = 0x6553646572616873;
      break;
    case 123:
      result = 0x644970756F7267;
      break;
    case 126:
      result = 0x704979616C6572;
      break;
    case 127:
      result = 0x76704979616C6572;
      break;
    case -128:
      result = 0x726F5079616C6572;
      break;
    case -126:
      result = 0x73655379616C6572;
      break;
    case -125:
      result = 0x73655379616C6572;
      break;
    case -123:
      result = 0x6F74616974696E69;
      break;
    case -122:
      result = 0x7069636974726170;
      break;
    case -121:
      result = 0x6572617774666F73;
      break;
    case -120:
      result = 0xD000000000000011;
      break;
    case -112:
      result = 0x72655379616C6572;
      break;
    case -111:
      result = 0xD000000000000011;
      break;
    case -110:
      result = 0x43726F7272457271;
      break;
    case -109:
      result = 0x6C616E696769726FLL;
      break;
    case -108:
      result = 0x64656B6C75427369;
      break;
    case -107:
      result = 0x70704173746E6177;
      break;
    case -106:
      result = 0x6D6F44726F727265;
      break;
    case -104:
      result = 0x524447776F6C6C61;
      break;
    case -103:
      result = 0x65646F4D646E6573;
      break;
    case -102:
      result = 0x6574737572547369;
      break;
    case -101:
      result = 0x4F73756C50557369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2140AE134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143580BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2140AE168(uint64_t a1)
{
  v2 = sub_2142E11A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140AE1A4(uint64_t a1)
{
  v2 = sub_2142E11A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t APSUserPayload.init(from:)(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905678, &unk_2146F3CD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v74 - v8;
  v10 = v2[3];
  v11 = v2[4];
  v327 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v10);
  sub_2142E11A8();
  sub_2146DAA08();
  if (v1)
  {
    v797 = v1;
    return __swift_destroy_boxed_opaque_existential_1(v327);
  }

  LOBYTE(v329) = 0;
  v12 = sub_2146DA1A8();
  v797 = 0;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v328[0]) = 1;
  v15 = sub_2142E11FC();
  v16 = v797;
  sub_2146DA1C8();
  if (v16)
  {
    v797 = v16;
    (*(v6 + 8))(v9, v5);
    return __swift_destroy_boxed_opaque_existential_1(v327);
  }

  v326 = v6;
  v325 = v4;
  v18 = v329;
  v19 = BYTE8(v329);
  LOBYTE(v328[0]) = 2;
  sub_2146DA1C8();
  v797 = 0;
  v323 = v15;
  v324 = v14;
  v321 = v19;
  v322 = v13;
  v20 = v329;
  v21 = BYTE8(v329);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v328[0]) = 3;
  v23 = sub_2142E1278();
  v24 = v797;
  sub_2146DA1C8();
  if (v24)
  {
    v797 = v24;
    (*(v326 + 8))(v9, v5);
    return __swift_destroy_boxed_opaque_existential_1(v327);
  }

  v320 = v21;
  v318 = v20;
  v319 = v18;
  v25 = v329;
  v26 = v23;
  v27 = *(&v329 + 1);
  LOBYTE(v328[0]) = 4;
  sub_2146DA1C8();
  v28 = v326;
  *&v317 = v25;
  *(&v317 + 1) = v27;
  v29 = v329;
  LOBYTE(v328[0]) = 5;
  sub_2146DA1C8();
  v315 = *(&v29 + 1);
  v316 = v29;
  v30 = v329;
  LOBYTE(v328[0]) = 6;
  sub_2146DA1C8();
  v313 = v30;
  v31 = *(&v329 + 1);
  v314 = v329;
  LOBYTE(v328[0]) = 7;
  v312 = v22;
  sub_2146DA1C8();
  v797 = 0;
  v32 = v316;
  v309 = v26;
  v310 = v31;
  v33 = *(&v329 + 1);
  v311 = v329;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v328[0]) = 8;
  sub_2142E12FC();
  v34 = v797;
  sub_2146DA1C8();
  v797 = v34;
  if (v34)
  {
    (*(v28 + 8))(v9, v5);
    sub_213FDC6BC(v317, *(&v317 + 1));
    sub_213FDC6BC(v32, v315);
    sub_213FDC6BC(v313, *(&v313 + 1));
    sub_213FDC6BC(v314, v310);
    sub_213FDC6BC(v311, v33);
    return __swift_destroy_boxed_opaque_existential_1(v327);
  }

  v35 = v320;
  v307 = v33;
  v308 = *(&v329 + 1);
  v36 = v329;
  LOBYTE(v328[0]) = 9;
  sub_2146DA1C8();
  v797 = 0;
  v306 = v329;
  LOBYTE(v328[0]) = 10;
  sub_2146DA1C8();
  v797 = 0;
  v305 = *(&v329 + 1);
  v303 = v329;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v328[0]) = 11;
  v304 = sub_2142E1378();
  v37 = v797;
  sub_2146DA1C8();
  v797 = v37;
  if (v37 || (v302 = v329, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905690, &qword_2146F3CF8), LOBYTE(v328[0]) = 12, sub_2142E13F4(), v38 = v797, sub_2146DA1C8(), (v797 = v38) != 0))
  {
    (*(v326 + 8))(v9, v5);
    sub_213FDC6BC(v317, *(&v317 + 1));
    sub_213FDC6BC(v316, v315);
    sub_213FDC6BC(v313, *(&v313 + 1));
    sub_213FDC6BC(v314, v310);
    sub_213FDC6BC(v311, v307);
    sub_213FDC6BC(v306, *(&v306 + 1));

LABEL_11:

    return __swift_destroy_boxed_opaque_existential_1(v327);
  }

  v300 = v329;
  v301 = BYTE8(v329);
  v299 = BYTE9(v329);
  LOBYTE(v328[0]) = 13;
  sub_2146DA1C8();
  v797 = 0;
  v298 = v329;
  v297 = BYTE8(v329);
  LOBYTE(v328[0]) = 14;
  sub_2146DA1C8();
  v797 = 0;
  v296 = v329;
  LOBYTE(v328[0]) = 15;
  sub_2146DA1C8();
  v797 = 0;
  v295 = v329;
  LOBYTE(v328[0]) = 16;
  sub_2146DA1C8();
  v797 = 0;
  v294 = v329;
  LOBYTE(v328[0]) = 17;
  sub_2146DA1C8();
  v797 = 0;
  v293 = v329;
  LOBYTE(v328[0]) = 18;
  sub_2146DA1C8();
  v797 = 0;
  v292 = v329;
  LOBYTE(v328[0]) = 19;
  sub_2146DA1C8();
  v797 = 0;
  v291 = v329;
  LOBYTE(v328[0]) = 20;
  sub_2146DA1C8();
  v797 = 0;
  v290 = v329;
  LOBYTE(v328[0]) = 21;
  sub_2146DA1C8();
  v797 = 0;
  v289 = v329;
  LOBYTE(v328[0]) = 22;
  sub_2146DA1C8();
  v797 = 0;
  v288 = v329;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
  LOBYTE(v328[0]) = 23;
  v40 = sub_2142E14CC();
  v287 = v39;
  v286 = v40;
  v41 = v797;
  sub_2146DA1C8();
  v797 = v41;
  if (v41)
  {
    (*(v326 + 8))(v9, v5);
    sub_213FDC6BC(v317, *(&v317 + 1));
    sub_213FDC6BC(v316, v315);
    sub_213FDC6BC(v313, *(&v313 + 1));
    sub_213FDC6BC(v314, v310);
    sub_213FDC6BC(v311, v307);
    sub_213FDC6BC(v306, *(&v306 + 1));
    sub_213FDC6BC(v296, *(&v296 + 1));
    sub_213FDC6BC(v293, *(&v293 + 1));
    sub_213FDC6BC(v292, *(&v292 + 1));
    sub_213FDC6BC(v288, *(&v288 + 1));

    goto LABEL_11;
  }

  v285 = v329;
  v284 = BYTE8(v329);
  LOBYTE(v328[0]) = 24;
  sub_2146DA1C8();
  v797 = 0;
  v283 = v329;
  LOBYTE(v328[0]) = 25;
  sub_2146DA1C8();
  v797 = 0;
  v282 = v329;
  LOBYTE(v328[0]) = 26;
  sub_2146DA1C8();
  v797 = 0;
  v281 = *(&v329 + 1);
  v278 = v329;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
  LOBYTE(v328[0]) = 27;
  v43 = sub_2142E1548();
  v280 = v42;
  v279 = v43;
  v44 = v797;
  sub_2146DA1C8();
  v797 = v44;
  if (v44)
  {
    (*(v326 + 8))(v9, v5);
    sub_213FDC6BC(v317, *(&v317 + 1));
    sub_213FDC6BC(v316, v315);
    sub_213FDC6BC(v313, *(&v313 + 1));
    sub_213FDC6BC(v314, v310);
    sub_213FDC6BC(v311, v307);
    sub_213FDC6BC(v306, *(&v306 + 1));
    sub_213FDC6BC(v296, *(&v296 + 1));
    sub_213FDC6BC(v293, *(&v293 + 1));
    sub_213FDC6BC(v292, *(&v292 + 1));
    sub_213FDC6BC(v288, *(&v288 + 1));

    return __swift_destroy_boxed_opaque_existential_1(v327);
  }

  v277 = v329;
  LOBYTE(v328[0]) = 28;
  sub_2146DA1C8();
  v797 = 0;
  v280 = v329;
  LOBYTE(v328[0]) = 29;
  sub_2146DA1C8();
  v797 = 0;
  v279 = *(&v329 + 1);
  v276 = v329;
  LOBYTE(v328[0]) = 30;
  sub_2146DA1C8();
  v797 = 0;
  v275 = v329;
  LOBYTE(v328[0]) = 31;
  sub_2146DA1C8();
  v797 = 0;
  v273 = v329;
  v272 = BYTE8(v329);
  LOBYTE(v328[0]) = 32;
  sub_2146DA1C8();
  v797 = 0;
  v240 = v329;
  v239 = BYTE8(v329);
  LOBYTE(v328[0]) = 33;
  sub_2146DA1C8();
  v797 = 0;
  v274 = *(&v329 + 1);
  v221 = v329;
  LOBYTE(v328[0]) = 34;
  sub_2146DA1C8();
  v797 = 0;
  v271 = v329;
  LOBYTE(v328[0]) = 35;
  sub_2146DA1C8();
  v797 = 0;
  v270 = v329;
  LOBYTE(v328[0]) = 36;
  sub_2146DA1C8();
  v797 = 0;
  v200 = v329;
  v112 = BYTE8(v329);
  LOBYTE(v328[0]) = 37;
  sub_2146DA1C8();
  v797 = 0;
  v269 = v329;
  LOBYTE(v328[0]) = 38;
  sub_2146DA1C8();
  v797 = 0;
  v268 = *(&v329 + 1);
  v199 = v329;
  LOBYTE(v328[0]) = 39;
  sub_2146DA1C8();
  v797 = 0;
  v267 = *(&v329 + 1);
  v198 = v329;
  LOBYTE(v328[0]) = 40;
  sub_2146DA1C8();
  v797 = 0;
  v266 = *(&v329 + 1);
  v197 = v329;
  LOBYTE(v328[0]) = 41;
  sub_2146DA1C8();
  v797 = 0;
  v196 = v329;
  v111 = BYTE8(v329);
  LOBYTE(v328[0]) = 42;
  sub_2146DA1C8();
  v797 = 0;
  v195 = v329;
  v110 = BYTE8(v329);
  LOBYTE(v328[0]) = 43;
  sub_2146DA1C8();
  v797 = 0;
  v194 = v329;
  v109 = BYTE8(v329);
  LOBYTE(v328[0]) = 44;
  sub_2146DA1C8();
  v797 = 0;
  v193 = v329;
  v108 = BYTE8(v329);
  LOBYTE(v328[0]) = 45;
  sub_2146DA1C8();
  v797 = 0;
  v265 = v329;
  LOBYTE(v328[0]) = 46;
  sub_2146DA1C8();
  v797 = 0;
  v264 = *(&v329 + 1);
  v192 = v329;
  LOBYTE(v328[0]) = 47;
  sub_2146DA1C8();
  v797 = 0;
  v191 = v329;
  v107 = BYTE8(v329);
  LOBYTE(v328[0]) = 48;
  sub_2146DA1C8();
  v797 = 0;
  v190 = v329;
  v106 = BYTE8(v329);
  LOBYTE(v328[0]) = 49;
  sub_2146DA1C8();
  v797 = 0;
  v263 = *(&v329 + 1);
  v189 = v329;
  LOBYTE(v328[0]) = 50;
  sub_2146DA1C8();
  v797 = 0;
  v188 = v329;
  v105 = BYTE8(v329);
  LOBYTE(v328[0]) = 51;
  sub_2146DA1C8();
  v797 = 0;
  v262 = *(&v329 + 1);
  v187 = v329;
  LOBYTE(v328[0]) = 52;
  sub_2146DA1C8();
  v797 = 0;
  v186 = v329;
  v104 = BYTE8(v329);
  LOBYTE(v328[0]) = 53;
  sub_2146DA1C8();
  v797 = 0;
  v185 = v329;
  v103 = BYTE8(v329);
  LOBYTE(v328[0]) = 54;
  sub_2146DA1C8();
  v797 = 0;
  v184 = v329;
  v102 = BYTE8(v329);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056A0, &qword_2146F3D08);
  LOBYTE(v328[0]) = 55;
  v46 = sub_2142E1648();
  v260 = v45;
  *(&v259 + 1) = v46;
  v47 = v797;
  sub_2146DA1C8();
  v797 = v47;
  if (v47)
  {
    (*(v326 + 8))(v9, v5);
    sub_213FDC6BC(v317, *(&v317 + 1));
    sub_213FDC6BC(v316, v315);
    sub_213FDC6BC(v313, *(&v313 + 1));
    sub_213FDC6BC(v314, v310);
    sub_213FDC6BC(v311, v307);
    sub_213FDC6BC(v306, *(&v306 + 1));
    sub_213FDC6BC(v296, *(&v296 + 1));
    sub_213FDC6BC(v293, *(&v293 + 1));
    sub_213FDC6BC(v292, *(&v292 + 1));
    sub_213FDC6BC(v288, *(&v288 + 1));
    sub_213FDC6BC(v271, *(&v271 + 1));
    sub_213FDC6BC(v270, *(&v270 + 1));
    sub_213FDC6BC(v269, *(&v269 + 1));
    sub_213FDC6BC(v265, *(&v265 + 1));

    goto LABEL_11;
  }

  v261 = v329;
  LOBYTE(v328[0]) = 56;
  sub_2146DA1C8();
  v797 = 0;
  v260 = v329;
  LOBYTE(v328[0]) = 57;
  sub_2146DA1C8();
  v797 = 0;
  v183 = v329;
  v101 = BYTE8(v329);
  LOBYTE(v328[0]) = 58;
  sub_2146DA1C8();
  v797 = 0;
  v182 = v329;
  v100 = BYTE8(v329);
  LOBYTE(v328[0]) = 59;
  sub_2146DA1C8();
  v797 = 0;
  v181 = v329;
  v99 = BYTE8(v329);
  LOBYTE(v328[0]) = 60;
  sub_2146DA1C8();
  v797 = 0;
  v180 = v329;
  LOBYTE(v328[0]) = 61;
  sub_2146DA1C8();
  v797 = 0;
  v179 = v329;
  LOBYTE(v328[0]) = 62;
  sub_2146DA1C8();
  v797 = 0;
  v178 = v329;
  LOBYTE(v328[0]) = 63;
  sub_2146DA1C8();
  v797 = 0;
  v177 = v329;
  LOBYTE(v328[0]) = 64;
  sub_2146DA1C8();
  v797 = 0;
  v258 = *(&v329 + 1);
  v176 = v329;
  LOBYTE(v328[0]) = 65;
  sub_2146DA1C8();
  v797 = 0;
  v257 = *(&v329 + 1);
  v175 = v329;
  LOBYTE(v328[0]) = 66;
  sub_2146DA1C8();
  v797 = 0;
  v259 = v329;
  LOBYTE(v328[0]) = 67;
  sub_2146DA1C8();
  v797 = 0;
  v256 = *(&v329 + 1);
  v174 = v329;
  LOBYTE(v328[0]) = 68;
  sub_2146DA1C8();
  v797 = 0;
  v255 = *(&v329 + 1);
  v173 = v329;
  LOBYTE(v328[0]) = 69;
  sub_2146DA1C8();
  v797 = 0;
  v254 = *(&v329 + 1);
  v172 = v329;
  LOBYTE(v328[0]) = 70;
  sub_2146DA1C8();
  v797 = 0;
  v253 = *(&v329 + 1);
  v171 = v329;
  LOBYTE(v328[0]) = 71;
  sub_2146DA1C8();
  v797 = 0;
  v252 = *(&v329 + 1);
  v170 = v329;
  LOBYTE(v328[0]) = 72;
  sub_2146DA1C8();
  v797 = 0;
  v169 = v329;
  v98 = BYTE8(v329);
  LOBYTE(v328[0]) = 73;
  sub_2146DA1C8();
  v797 = 0;
  v251 = *(&v329 + 1);
  v168 = v329;
  LOBYTE(v328[0]) = 74;
  sub_2146DA1C8();
  v797 = 0;
  v167 = v329;
  v97 = BYTE8(v329);
  LOBYTE(v328[0]) = 75;
  sub_2146DA1C8();
  v797 = 0;
  v250 = *(&v329 + 1);
  v166 = v329;
  LOBYTE(v328[0]) = 76;
  sub_2146DA1C8();
  v797 = 0;
  v165 = v329;
  v96 = BYTE8(v329);
  LOBYTE(v328[0]) = 77;
  sub_2146DA1C8();
  v797 = 0;
  v164 = v329;
  LOBYTE(v328[0]) = 78;
  sub_2146DA1C8();
  v797 = 0;
  v249 = *(&v329 + 1);
  v163 = v329;
  LOBYTE(v328[0]) = 79;
  sub_2146DA1C8();
  v797 = 0;
  v161 = v329;
  v95 = BYTE8(v329);
  LOBYTE(v328[0]) = 80;
  sub_2146DA1C8();
  v797 = 0;
  v159 = v329;
  v94 = BYTE8(v329);
  LOBYTE(v328[0]) = 81;
  sub_2146DA1C8();
  v797 = 0;
  v247 = *(&v329 + 1);
  v158 = v329;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056A8, &qword_2146F3D10);
  v784 = 82;
  sub_2142E1720();
  v48 = v797;
  sub_2146DA1C8();
  v797 = v48;
  if (v48)
  {
    (*(v326 + 8))(v9, v5);
    sub_213FDC6BC(v317, *(&v317 + 1));
    sub_213FDC6BC(v316, v315);
    sub_213FDC6BC(v313, *(&v313 + 1));
    sub_213FDC6BC(v314, v310);
    sub_213FDC6BC(v311, v307);
    sub_213FDC6BC(v306, *(&v306 + 1));
    sub_213FDC6BC(v296, *(&v296 + 1));
    sub_213FDC6BC(v293, *(&v293 + 1));
    sub_213FDC6BC(v292, *(&v292 + 1));
    sub_213FDC6BC(v288, *(&v288 + 1));
    sub_213FDC6BC(v271, *(&v271 + 1));
    sub_213FDC6BC(v270, *(&v270 + 1));
    sub_213FDC6BC(v269, *(&v269 + 1));
    sub_213FDC6BC(v265, *(&v265 + 1));
    sub_213FDC6BC(v259, *(&v259 + 1));

    return __swift_destroy_boxed_opaque_existential_1(v327);
  }

  v780 = v787;
  v781 = v788;
  v782 = v789;
  v783 = v790;
  v778 = v785;
  v779 = v786;
  LOBYTE(v328[0]) = 83;
  sub_2146DA1C8();
  v797 = 0;
  v248 = v329;
  LOBYTE(v328[0]) = 84;
  sub_2146DA1C8();
  v797 = 0;
  v245 = *(&v329 + 1);
  v156 = v329;
  LOBYTE(v328[0]) = 85;
  sub_2146DA1C8();
  v797 = 0;
  v246 = v329;
  LOBYTE(v328[0]) = 86;
  sub_2146DA1C8();
  v797 = 0;
  v153 = v329;
  v93 = BYTE8(v329);
  LOBYTE(v328[0]) = 87;
  sub_2146DA1C8();
  v797 = 0;
  v244 = *(&v329 + 1);
  v151 = v329;
  LOBYTE(v328[0]) = 88;
  sub_2146DA1C8();
  v797 = 0;
  v148 = v329;
  LOBYTE(v328[0]) = 89;
  sub_2146DA1C8();
  v797 = 0;
  v145 = v329;
  LOBYTE(v328[0]) = 90;
  sub_2146DA1C8();
  v797 = 0;
  v147 = v329;
  LOBYTE(v328[0]) = 91;
  sub_2146DA1C8();
  v797 = 0;
  v144 = v329;
  v92 = BYTE8(v329);
  LOBYTE(v328[0]) = 92;
  sub_2146DA1C8();
  v797 = 0;
  v241 = *(&v329 + 1);
  v142 = v329;
  LOBYTE(v328[0]) = 93;
  sub_2146DA1C8();
  v797 = 0;
  v243 = v329;
  LOBYTE(v328[0]) = 94;
  sub_2146DA1C8();
  v797 = 0;
  v242 = v329;
  LOBYTE(v328[0]) = 95;
  sub_2146DA1C8();
  v797 = 0;
  v140 = v329;
  v91 = BYTE8(v329);
  LOBYTE(v328[0]) = 96;
  sub_2146DA1C8();
  v797 = 0;
  v139 = v329;
  LOBYTE(v328[0]) = 97;
  sub_2146DA1C8();
  v797 = 0;
  v138 = v329;
  LOBYTE(v328[0]) = 98;
  sub_2146DA1C8();
  v797 = 0;
  v137 = v329;
  v90 = BYTE8(v329);
  LOBYTE(v328[0]) = 99;
  sub_2146DA1C8();
  v797 = 0;
  v136 = v329;
  v89 = BYTE8(v329);
  LOBYTE(v328[0]) = 100;
  sub_2146DA1C8();
  v797 = 0;
  v135 = v329;
  LOBYTE(v328[0]) = 101;
  sub_2146DA1C8();
  v797 = 0;
  v134 = v329;
  v88 = BYTE8(v329);
  LOBYTE(v328[0]) = 102;
  sub_2146DA1C8();
  v797 = 0;
  v133 = v329;
  v87 = BYTE8(v329);
  LOBYTE(v328[0]) = 103;
  sub_2146DA1C8();
  v797 = 0;
  v237 = *(&v329 + 1);
  v80 = v329;
  LOBYTE(v328[0]) = 104;
  sub_2146DA1C8();
  v797 = 0;
  v79 = v329;
  LODWORD(v86) = BYTE8(v329);
  LOBYTE(v328[0]) = 105;
  sub_2146DA1C8();
  v797 = 0;
  v78 = v329;
  v85 = BYTE8(v329);
  LOBYTE(v328[0]) = 106;
  sub_2146DA1C8();
  v797 = 0;
  v238 = v329;
  LOBYTE(v328[0]) = 107;
  sub_2146DA1C8();
  v797 = 0;
  v236 = v329;
  LOBYTE(v328[0]) = 108;
  sub_2146DA1C8();
  v797 = 0;
  v132 = v329;
  v84 = BYTE8(v329);
  LOBYTE(v328[0]) = 109;
  sub_2146DA1C8();
  v797 = 0;
  v235 = v329;
  LOBYTE(v328[0]) = 110;
  sub_2146DA1C8();
  v797 = 0;
  v234 = v329;
  LOBYTE(v328[0]) = 111;
  sub_2146DA1C8();
  v797 = 0;
  v131 = v329;
  v83 = BYTE8(v329);
  LOBYTE(v328[0]) = 112;
  sub_2146DA1C8();
  v797 = 0;
  v130 = v329;
  v210 = BYTE8(v329);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B0, &qword_2146F3D18);
  LOBYTE(v328[0]) = 113;
  sub_2142E17F8();
  v49 = v797;
  sub_2146DA1C8();
  v797 = v49;
  if (v49)
  {
    (*(v326 + 8))(v9, v5);
    sub_213FDC6BC(v317, *(&v317 + 1));
    sub_213FDC6BC(v316, v315);
    sub_213FDC6BC(v313, *(&v313 + 1));
    sub_213FDC6BC(v314, v310);
    sub_213FDC6BC(v311, v307);
    sub_213FDC6BC(v306, *(&v306 + 1));
    sub_213FDC6BC(v296, *(&v296 + 1));
    sub_213FDC6BC(v293, *(&v293 + 1));
    sub_213FDC6BC(v292, *(&v292 + 1));
    sub_213FDC6BC(v288, *(&v288 + 1));
    sub_213FDC6BC(v271, *(&v271 + 1));
    sub_213FDC6BC(v270, *(&v270 + 1));
    sub_213FDC6BC(v269, *(&v269 + 1));
    sub_213FDC6BC(v265, *(&v265 + 1));
    sub_213FDC6BC(v259, *(&v259 + 1));
    sub_213FDC6BC(v248, *(&v248 + 1));
    sub_213FDC6BC(v246, *(&v246 + 1));
    sub_213FDC6BC(v243, *(&v243 + 1));
    sub_213FDC6BC(v242, *(&v242 + 1));
    sub_213FDC6BC(v238, *(&v238 + 1));
    sub_213FDC6BC(v236, *(&v236 + 1));
    sub_213FDC6BC(v235, *(&v235 + 1));
    sub_213FDC6BC(v234, *(&v234 + 1));

    sub_213FB2DF4(&v778, &qword_27C9056A8, &qword_2146F3D10);

    goto LABEL_11;
  }

  v233 = v329;
  LOBYTE(v328[0]) = 114;
  sub_2146DA1C8();
  v797 = 0;
  v232 = *(&v329 + 1);
  v129 = v329;
  LOBYTE(v328[0]) = 115;
  sub_2146DA1C8();
  v797 = 0;
  v231 = *(&v329 + 1);
  v128 = v329;
  LOBYTE(v328[0]) = 116;
  sub_2146DA1C8();
  v797 = 0;
  v127 = v329;
  v209 = BYTE8(v329);
  LOBYTE(v328[0]) = 117;
  sub_2146DA1C8();
  v797 = 0;
  v126 = v329;
  LOBYTE(v328[0]) = 118;
  sub_2146DA1C8();
  v797 = 0;
  v125 = v329;
  LOBYTE(v328[0]) = 119;
  sub_2146DA1C8();
  v797 = 0;
  v124 = v329;
  v208 = BYTE8(v329);
  LOBYTE(v328[0]) = 120;
  sub_2146DA1C8();
  v797 = 0;
  v230 = v329;
  LOBYTE(v328[0]) = 121;
  sub_2146DA1C8();
  v797 = 0;
  v123 = v329;
  v207 = BYTE8(v329);
  LOBYTE(v328[0]) = 122;
  sub_2146DA1C8();
  v797 = 0;
  v122 = v329;
  LOBYTE(v328[0]) = 123;
  sub_2146DA1C8();
  v797 = 0;
  v229 = *(&v329 + 1);
  v121 = v329;
  LOBYTE(v328[0]) = 124;
  sub_2146DA1C8();
  v797 = 0;
  v120 = v329;
  v206 = BYTE8(v329);
  LOBYTE(v328[0]) = 125;
  sub_2146DA1C8();
  v797 = 0;
  v119 = v329;
  v205 = BYTE8(v329);
  LOBYTE(v328[0]) = 126;
  sub_2146DA1C8();
  v797 = 0;
  v228 = v329;
  LOBYTE(v328[0]) = 127;
  sub_2146DA1C8();
  v797 = 0;
  v227 = v329;
  LOBYTE(v328[0]) = 0x80;
  sub_2146DA1C8();
  v797 = 0;
  v118 = v329;
  v204 = BYTE8(v329);
  LOBYTE(v328[0]) = -127;
  sub_2146DA1C8();
  v797 = 0;
  v226 = v329;
  LOBYTE(v328[0]) = -126;
  sub_2146DA1C8();
  v797 = 0;
  v225 = v329;
  LOBYTE(v328[0]) = -125;
  sub_2146DA1C8();
  v797 = 0;
  v224 = v329;
  LOBYTE(v328[0]) = -124;
  sub_2146DA1C8();
  v797 = 0;
  v117 = v329;
  v203 = BYTE8(v329);
  LOBYTE(v328[0]) = -123;
  sub_2146DA1C8();
  v797 = 0;
  v223 = v329;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
  LOBYTE(v328[0]) = -122;
  sub_2142E18D0();
  v50 = v797;
  sub_2146DA1C8();
  v797 = v50;
  if (v50)
  {
    (*(v326 + 8))(v9, v5);
    sub_213FDC6BC(v317, *(&v317 + 1));
    sub_213FDC6BC(v316, v315);
    sub_213FDC6BC(v313, *(&v313 + 1));
    sub_213FDC6BC(v314, v310);
    sub_213FDC6BC(v311, v307);
    sub_213FDC6BC(v306, *(&v306 + 1));
    sub_213FDC6BC(v296, *(&v296 + 1));
    sub_213FDC6BC(v293, *(&v293 + 1));
    sub_213FDC6BC(v292, *(&v292 + 1));
    sub_213FDC6BC(v288, *(&v288 + 1));
    sub_213FDC6BC(v271, *(&v271 + 1));
    sub_213FDC6BC(v270, *(&v270 + 1));
    sub_213FDC6BC(v269, *(&v269 + 1));
    sub_213FDC6BC(v265, *(&v265 + 1));
    sub_213FDC6BC(v259, *(&v259 + 1));
    sub_213FDC6BC(v248, *(&v248 + 1));
    sub_213FDC6BC(v246, *(&v246 + 1));
    sub_213FDC6BC(v243, *(&v243 + 1));
    sub_213FDC6BC(v242, *(&v242 + 1));
    sub_213FDC6BC(v238, *(&v238 + 1));
    sub_213FDC6BC(v236, *(&v236 + 1));
    sub_213FDC6BC(v235, *(&v235 + 1));
    sub_213FDC6BC(v234, *(&v234 + 1));
    sub_213FDC6BC(v230, *(&v230 + 1));
    sub_213FDC6BC(v228, *(&v228 + 1));
    sub_213FDC6BC(v227, *(&v227 + 1));
    sub_213FDC6BC(v226, *(&v226 + 1));
    sub_213FDC6BC(v225, *(&v225 + 1));
    sub_213FDC6BC(v224, *(&v224 + 1));
    sub_213FDC6BC(v223, *(&v223 + 1));

    sub_213FB2DF4(&v778, &qword_27C9056A8, &qword_2146F3D10);

    goto LABEL_11;
  }

  v116 = v329;
  v202 = BYTE8(v329);
  LOBYTE(v328[0]) = -121;
  sub_2146DA1C8();
  v797 = 0;
  v222 = v329;
  LOBYTE(v328[0]) = -120;
  sub_2146DA1C8();
  v797 = 0;
  v220 = *(&v329 + 1);
  v115 = v329;
  LOBYTE(v328[0]) = -119;
  sub_2146DA1C8();
  v797 = 0;
  v114 = v329;
  v201 = BYTE8(v329);
  LOBYTE(v328[0]) = -118;
  sub_2146DA1C8();
  v797 = 0;
  v113 = v329;
  v211 = BYTE8(v329);
  LOBYTE(v328[0]) = -117;
  sub_2146DA1C8();
  v797 = 0;
  v162 = v329;
  v217 = BYTE8(v329);
  LOBYTE(v328[0]) = -116;
  sub_2146DA1C8();
  v797 = 0;
  v160 = v329;
  v216 = BYTE8(v329);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056C0, &qword_2146F3D28);
  LOBYTE(v328[0]) = -115;
  sub_2142E194C();
  v51 = v797;
  sub_2146DA1C8();
  v797 = v51;
  if (v51)
  {
    (*(v326 + 8))(v9, v5);
    sub_213FDC6BC(v317, *(&v317 + 1));
    sub_213FDC6BC(v316, v315);
    sub_213FDC6BC(v313, *(&v313 + 1));
    sub_213FDC6BC(v314, v310);
    sub_213FDC6BC(v311, v307);
    sub_213FDC6BC(v306, *(&v306 + 1));
    sub_213FDC6BC(v296, *(&v296 + 1));
    sub_213FDC6BC(v293, *(&v293 + 1));
    sub_213FDC6BC(v292, *(&v292 + 1));
    sub_213FDC6BC(v288, *(&v288 + 1));
    sub_213FDC6BC(v271, *(&v271 + 1));
    sub_213FDC6BC(v270, *(&v270 + 1));
    sub_213FDC6BC(v269, *(&v269 + 1));
    sub_213FDC6BC(v265, *(&v265 + 1));
    sub_213FDC6BC(v259, *(&v259 + 1));
    sub_213FDC6BC(v248, *(&v248 + 1));
    sub_213FDC6BC(v246, *(&v246 + 1));
    sub_213FDC6BC(v243, *(&v243 + 1));
    sub_213FDC6BC(v242, *(&v242 + 1));
    sub_213FDC6BC(v238, *(&v238 + 1));
    sub_213FDC6BC(v236, *(&v236 + 1));
    sub_213FDC6BC(v235, *(&v235 + 1));
    sub_213FDC6BC(v234, *(&v234 + 1));
    sub_213FDC6BC(v230, *(&v230 + 1));
    sub_213FDC6BC(v228, *(&v228 + 1));
    sub_213FDC6BC(v227, *(&v227 + 1));
    sub_213FDC6BC(v226, *(&v226 + 1));
    sub_213FDC6BC(v225, *(&v225 + 1));
    sub_213FDC6BC(v224, *(&v224 + 1));
    sub_213FDC6BC(v223, *(&v223 + 1));
    sub_213FDC6BC(v222, *(&v222 + 1));

    sub_213FB2DF4(&v778, &qword_27C9056A8, &qword_2146F3D10);
LABEL_38:

    goto LABEL_11;
  }

  v287 = v329;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056C8, &qword_2146F3D30);
  LOBYTE(v328[0]) = -114;
  sub_2142E1A24();
  v52 = v797;
  sub_2146DA1C8();
  v797 = v52;
  if (v52)
  {
    (*(v326 + 8))(v9, v5);
    sub_213FDC6BC(v317, *(&v317 + 1));
    sub_213FDC6BC(v316, v315);
    sub_213FDC6BC(v313, *(&v313 + 1));
    sub_213FDC6BC(v314, v310);
    sub_213FDC6BC(v311, v307);
    sub_213FDC6BC(v306, *(&v306 + 1));
    sub_213FDC6BC(v296, *(&v296 + 1));
    sub_213FDC6BC(v293, *(&v293 + 1));
    sub_213FDC6BC(v292, *(&v292 + 1));
    sub_213FDC6BC(v288, *(&v288 + 1));
    sub_213FDC6BC(v271, *(&v271 + 1));
    sub_213FDC6BC(v270, *(&v270 + 1));
    sub_213FDC6BC(v269, *(&v269 + 1));
    sub_213FDC6BC(v265, *(&v265 + 1));
    sub_213FDC6BC(v259, *(&v259 + 1));
    sub_213FDC6BC(v248, *(&v248 + 1));
    sub_213FDC6BC(v246, *(&v246 + 1));
    sub_213FDC6BC(v243, *(&v243 + 1));
    sub_213FDC6BC(v242, *(&v242 + 1));
    sub_213FDC6BC(v238, *(&v238 + 1));
    sub_213FDC6BC(v236, *(&v236 + 1));
    sub_213FDC6BC(v235, *(&v235 + 1));
    sub_213FDC6BC(v234, *(&v234 + 1));
    sub_213FDC6BC(v230, *(&v230 + 1));
    sub_213FDC6BC(v228, *(&v228 + 1));
    sub_213FDC6BC(v227, *(&v227 + 1));
    sub_213FDC6BC(v226, *(&v226 + 1));
    sub_213FDC6BC(v225, *(&v225 + 1));
    sub_213FDC6BC(v224, *(&v224 + 1));
    sub_213FDC6BC(v223, *(&v223 + 1));
    sub_213FDC6BC(v222, *(&v222 + 1));

    sub_213FB2DF4(&v778, &qword_27C9056A8, &qword_2146F3D10);
LABEL_37:

    goto LABEL_38;
  }

  v286 = v329;
  LOBYTE(v328[0]) = -113;
  sub_2146DA1C8();
  v797 = 0;
  v312 = *(&v329 + 1);
  v309 = v329;
  LOBYTE(v328[0]) = -112;
  sub_2146DA1C8();
  v797 = 0;
  v157 = v329;
  v215 = BYTE8(v329);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056D0, &qword_2146F3D38);
  LOBYTE(v328[0]) = -111;
  sub_2142E1AFC();
  v53 = v797;
  sub_2146DA1C8();
  v797 = v53;
  if (v53)
  {
    (*(v326 + 8))(v9, v5);
    sub_213FDC6BC(v317, *(&v317 + 1));
    sub_213FDC6BC(v316, v315);
    sub_213FDC6BC(v313, *(&v313 + 1));
    sub_213FDC6BC(v314, v310);
    sub_213FDC6BC(v311, v307);
    sub_213FDC6BC(v306, *(&v306 + 1));
    sub_213FDC6BC(v296, *(&v296 + 1));
    sub_213FDC6BC(v293, *(&v293 + 1));
    sub_213FDC6BC(v292, *(&v292 + 1));
    sub_213FDC6BC(v288, *(&v288 + 1));
    sub_213FDC6BC(v271, *(&v271 + 1));
    sub_213FDC6BC(v270, *(&v270 + 1));
    sub_213FDC6BC(v269, *(&v269 + 1));
    sub_213FDC6BC(v265, *(&v265 + 1));
    sub_213FDC6BC(v259, *(&v259 + 1));
    sub_213FDC6BC(v248, *(&v248 + 1));
    sub_213FDC6BC(v246, *(&v246 + 1));
    sub_213FDC6BC(v243, *(&v243 + 1));
    sub_213FDC6BC(v242, *(&v242 + 1));
    sub_213FDC6BC(v238, *(&v238 + 1));
    sub_213FDC6BC(v236, *(&v236 + 1));
    sub_213FDC6BC(v235, *(&v235 + 1));
    sub_213FDC6BC(v234, *(&v234 + 1));
    sub_213FDC6BC(v230, *(&v230 + 1));
    sub_213FDC6BC(v228, *(&v228 + 1));
    sub_213FDC6BC(v227, *(&v227 + 1));
    sub_213FDC6BC(v226, *(&v226 + 1));
    sub_213FDC6BC(v225, *(&v225 + 1));
    sub_213FDC6BC(v224, *(&v224 + 1));
    sub_213FDC6BC(v223, *(&v223 + 1));
    sub_213FDC6BC(v222, *(&v222 + 1));
    sub_213FDC6BC(v309, v312);

    sub_213FB2DF4(&v778, &qword_27C9056A8, &qword_2146F3D10);

    goto LABEL_37;
  }

  v219 = v329;
  LOBYTE(v328[0]) = -110;
  sub_2146DA1C8();
  v797 = 0;
  v155 = v329;
  v214 = BYTE8(v329);
  LOBYTE(v328[0]) = -109;
  sub_2146DA1C8();
  v797 = 0;
  v154 = v329;
  v213 = BYTE8(v329);
  LOBYTE(v328[0]) = -108;
  sub_2146DA1C8();
  v797 = 0;
  v152 = v329;
  LOBYTE(v328[0]) = -107;
  sub_2146DA1C8();
  v797 = 0;
  v150 = v329;
  LOBYTE(v328[0]) = -106;
  sub_2146DA1C8();
  v797 = 0;
  v218 = *(&v329 + 1);
  v149 = v329;
  LOBYTE(v328[0]) = -105;
  sub_2146DA1C8();
  v797 = 0;
  v146 = v329;
  LOBYTE(v328[0]) = -104;
  sub_2146DA1C8();
  v797 = 0;
  v143 = v329;
  v212 = BYTE8(v329);
  LOBYTE(v328[0]) = -103;
  sub_2146DA1C8();
  v797 = 0;
  v323 = v329;
  LODWORD(v324) = BYTE8(v329);
  LOBYTE(v328[0]) = -102;
  sub_2146DA1C8();
  v797 = 0;
  v141 = v329;
  v776 = -101;
  sub_2146DA1C8();
  v797 = 0;
  LODWORD(v304) = v777;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v55 = swift_allocObject();
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_2146F3C50;
  *(v55 + 16) = sub_21438F468;
  *(v55 + 24) = v56;
  *(v54 + 32) = v55;
  sub_213FDCA18(v317, *(&v317 + 1));
  sub_213FDCA18(v316, v315);
  sub_213FDCA18(v313, *(&v313 + 1));
  sub_213FDCA18(v314, v310);
  sub_213FDCA18(v311, v307);
  sub_213FDCA18(v306, *(&v306 + 1));
  sub_213FDCA18(v296, *(&v296 + 1));
  sub_213FDCA18(v293, *(&v293 + 1));
  sub_213FDCA18(v292, *(&v292 + 1));
  sub_213FDCA18(v288, *(&v288 + 1));
  sub_213FDCA18(v271, *(&v271 + 1));
  sub_213FDCA18(v270, *(&v270 + 1));
  sub_213FDCA18(v269, *(&v269 + 1));
  sub_213FDCA18(v265, *(&v265 + 1));
  sub_213FDCA18(v259, *(&v259 + 1));
  sub_213FDCA18(v248, *(&v248 + 1));
  sub_213FDCA18(v246, *(&v246 + 1));
  sub_213FDCA18(v243, *(&v243 + 1));
  sub_213FDCA18(v242, *(&v242 + 1));
  sub_213FDCA18(v238, *(&v238 + 1));
  sub_213FDCA18(v236, *(&v236 + 1));
  sub_213FDCA18(v235, *(&v235 + 1));
  sub_213FDCA18(v234, *(&v234 + 1));
  sub_213FDCA18(v230, *(&v230 + 1));
  sub_213FDCA18(v228, *(&v228 + 1));
  sub_213FDCA18(v227, *(&v227 + 1));
  sub_213FDCA18(v226, *(&v226 + 1));
  sub_213FDCA18(v225, *(&v225 + 1));
  sub_213FDCA18(v224, *(&v224 + 1));
  sub_213FDCA18(v223, *(&v223 + 1));
  sub_213FDCA18(v222, *(&v222 + 1));
  sub_213FDCA18(v309, v312);
  sub_21404328C(v54, &v329);
  v766 = v297;
  v762 = v284;
  v760 = v272;
  v775 = v331;
  v758 = v239;
  v756 = v112;
  v57 = v329;
  v754 = v111;
  v75 = v330;
  v752 = v110;
  v750 = v109;
  v748 = v108;
  v746 = v107;
  v744 = v106;
  v742 = v105;
  v740 = v104;
  v738 = v103;
  v736 = v102;
  v734 = v101;
  v732 = v100;
  v730 = v99;
  v727 = v98;
  v725 = v97;
  v723 = v96;
  v720 = v95;
  v718 = v94;
  v793 = v780;
  v794 = v781;
  v795 = v782;
  v796 = v783;
  v791 = v778;
  v792 = v779;
  v716 = v93;
  v712 = v92;
  v710 = v91;
  v707 = v90;
  v705 = v89;
  v702 = v88;
  v700 = v87;
  v698 = v86;
  v696 = v85;
  v694 = v84;
  v692 = v83;
  v690 = v210;
  v688 = v209;
  v685 = v208;
  v683 = v207;
  v680 = v206;
  v678 = v205;
  v676 = v204;
  v674 = v203;
  v672 = v202;
  v670 = v201;
  v668 = v211;
  v666 = v217;
  v664 = v216;
  v662 = v215;
  v660 = v214;
  v658 = v213;
  v654 = v212;
  v652 = v324;
  v82 = v321;
  v83 = v35;
  v84 = v299;
  v85 = v297;
  v88 = v284;
  v89 = v272;
  v90 = v239;
  v91 = v112;
  v92 = v111;
  v93 = v110;
  v94 = v109;
  v95 = v108;
  v96 = v107;
  v97 = v106;
  v98 = v105;
  v99 = v104;
  v100 = v103;
  v101 = v102;
  v102 = v734;
  v103 = v732;
  v104 = v730;
  v108 = v727;
  v109 = v725;
  v110 = v723;
  v330 = 0xD00000000000001CLL;
  v76 = v331;
  v769 = v331;
  v651 = v322;
  v87 = BYTE1(v331);
  LOBYTE(v328[0]) = BYTE1(v331);
  *&v329 = 0xD000000000000016;
  *(&v329 + 1) = 0x800000021478C7E0;
  v331 = 0x800000021478A360;
  v105 = v720;
  v106 = v718;
  v107 = v716;
  v299 = v712;
  v297 = v710;
  v284 = v707;
  v239 = v705;
  v111 = v700;
  v112 = v702;
  v77 = v86;
  v272 = v696;
  v320 = v694;
  v321 = v692;

  v81 = *(&v57 + 1);
  v58 = v797;
  v86 = v57;
  v59 = (v57)(&v651, v328, &v329);
  v797 = v58;
  if (v58)
  {

    sub_213FDC6BC(v309, v312);
    sub_213FDC6BC(v222, *(&v222 + 1));
LABEL_44:
    sub_213FDC6BC(v223, *(&v223 + 1));
    sub_213FDC6BC(v224, *(&v224 + 1));
    sub_213FDC6BC(v225, *(&v225 + 1));
    sub_213FDC6BC(v226, *(&v226 + 1));
    sub_213FDC6BC(v227, *(&v227 + 1));
    sub_213FDC6BC(v228, *(&v228 + 1));
    sub_213FDC6BC(v230, *(&v230 + 1));
    sub_213FDC6BC(v234, *(&v234 + 1));
    sub_213FDC6BC(v235, *(&v235 + 1));
    sub_213FDC6BC(v236, *(&v236 + 1));
    sub_213FDC6BC(v238, *(&v238 + 1));
    sub_213FDC6BC(v242, *(&v242 + 1));
    sub_213FDC6BC(v243, *(&v243 + 1));
    sub_213FDC6BC(v246, *(&v246 + 1));
    sub_213FDC6BC(v248, *(&v248 + 1));
    sub_213FDC6BC(v259, *(&v259 + 1));
    sub_213FDC6BC(v265, *(&v265 + 1));
    sub_213FDC6BC(v269, *(&v269 + 1));
    sub_213FDC6BC(v270, *(&v270 + 1));
    sub_213FDC6BC(v271, *(&v271 + 1));
    sub_213FDC6BC(v288, *(&v288 + 1));
    sub_213FDC6BC(v292, *(&v292 + 1));
    sub_213FDC6BC(v293, *(&v293 + 1));
    sub_213FDC6BC(v296, *(&v296 + 1));
    sub_213FDC6BC(v306, *(&v306 + 1));
    sub_213FDC6BC(v311, v307);
    sub_213FDC6BC(v314, v310);
    sub_213FDC6BC(v313, *(&v313 + 1));
    v70 = v316;
    v71 = v315;
    sub_213FDC6BC(v316, v315);
    v72 = v317;
    sub_213FDC6BC(v317, *(&v317 + 1));
    (*(v326 + 8))(v9, v5);
    v73 = v81;

    v775 = v76;
    __swift_destroy_boxed_opaque_existential_1(v327);
    *&v329 = v86;
    *(&v329 + 1) = v73;
    v330 = v75;
    BYTE1(v331) = v87;
    v332 = v319;
    v333 = v82;
    v335 = v318;
    v336 = v83;
    v338 = v72;
    v339 = v70;
    v340 = v71;
    v341 = v313;
    v342 = v314;
    v343 = v310;
    v344 = v311;
    v345 = v307;
    v346 = v36;
    v347 = v308;
    v348 = v306;
    v349 = v303;
    v350 = v305;
    v351 = v302;
    v353 = v300;
    v354 = v301;
    v355 = v84;
    v358 = v298;
    v359 = v85;
    v361 = v296;
    v362 = v295;
    v363 = v294;
    v366 = v293;
    v367 = v292;
    v368 = v291;
    v369 = v290;
    v370 = v289;
    v371 = v288;
    v372 = v285;
    v373 = v88;
    v375 = v283;
    v376 = v282;
    v377 = v278;
    v378 = v281;
    v379 = v277;
    v380 = v280;
    v381 = v276;
    v382 = v279;
    v383 = v275;
    v384 = v273;
    v385 = v89;
    v387 = v240;
    v388 = v90;
    v390 = v221;
    v391 = v274;
    v392 = v271;
    v393 = v270;
    v394 = v200;
    v395 = v91;
    v397 = v269;
    v398 = v199;
    v399 = v268;
    v400 = v198;
    v401 = v267;
    v402 = v197;
    v403 = v266;
    v404 = v196;
    v405 = v92;
    v407 = v195;
    v408 = v93;
    v410 = v194;
    v411 = v94;
    v413 = v193;
    v414 = v95;
    v416 = v265;
    v417 = v192;
    v418 = v264;
    v419 = v191;
    v420 = v96;
    v422 = v190;
    v423 = v97;
    v425 = v189;
    v426 = v263;
    v427 = v188;
    v428 = v98;
    v430 = v187;
    v431 = v262;
    v432 = v186;
    v433 = v99;
    v435 = v185;
    v436 = v100;
    v438 = v184;
    v439 = v101;
    v441 = v261;
    v442 = v260;
    v443 = v183;
    v444 = v102;
    v446 = v182;
    v447 = v103;
    v449 = v181;
    v450 = v104;
    v451 = v180;
    v452 = v179;
    v453 = v178;
    v454 = v177;
    v457 = v176;
    v458 = v258;
    v459 = v175;
    v460 = v257;
    v461 = v259;
    v462 = v174;
    v463 = v256;
    v464 = v173;
    v465 = v255;
    v466 = v172;
    v467 = v254;
    v468 = v171;
    v469 = v253;
    v470 = v170;
    v471 = v252;
    v472 = v169;
    v473 = v108;
    v475 = v168;
    v476 = v251;
    v477 = v167;
    v478 = v109;
    v480 = v166;
    v481 = v250;
    v482 = v165;
    v483 = v110;
    v484 = v164;
    v487 = v163;
    v488 = v249;
    v489 = v161;
    v490 = v105;
    v492 = v159;
    v493 = v106;
    v495 = v158;
    v496 = v247;
    v503 = v248;
    v504 = v156;
    v505 = v245;
    v506 = v246;
    v507 = v153;
    v508 = v107;
    v510 = v151;
    v511 = v244;
    v512 = v148;
    v513 = v145;
    v514 = v147;
    v517 = v144;
    v518 = v299;
    v520 = v142;
    v521 = v241;
    v522 = v243;
    v523 = v242;
    v524 = v140;
    v525 = v297;
    v526 = v139;
    v527 = v138;
    v530 = v137;
    v531 = v284;
    v533 = v136;
    v534 = v239;
    v535 = v135;
    v538 = v134;
    v539 = v112;
    v541 = v133;
    v542 = v111;
    v544 = v80;
    v545 = v237;
    v546 = v79;
    v547 = v77;
    v549 = v78;
    v550 = v272;
    v552 = v238;
    v553 = v236;
    v554 = v132;
    v555 = v320;
    v557 = v235;
    v558 = v234;
    v559 = v131;
    v560 = v321;
    v562 = v130;
    v563 = v210;
    v565 = v233;
    v566 = v129;
    v567 = v232;
    v568 = v128;
    v569 = v231;
    v570 = v127;
    v571 = v209;
    v572 = v126;
    v573 = v125;
    v576 = v124;
    v577 = v208;
    v579 = v230;
    v580 = v123;
    v581 = v207;
    v582 = v122;
    v585 = v121;
    v586 = v229;
    v587 = v120;
    v588 = v206;
    v590 = v119;
    v591 = v205;
    v593 = v228;
    v594 = v227;
    v595 = v118;
    v596 = v204;
    v598 = v226;
    v599 = v225;
    v600 = v224;
    v601 = v117;
    v602 = v203;
    v604 = v223;
    v605 = v116;
    v606 = v202;
    v608 = v222;
    v609 = v115;
    v610 = v220;
    v611 = v114;
    v612 = v201;
    v614 = v113;
    *v374 = *v761;
    *v386 = *v759;
    *v389 = *v757;
    *v396 = *v755;
    *v406 = *v753;
    *v409 = *v751;
    *v412 = *v749;
    *v415 = *v747;
    *v421 = *v745;
    *v424 = *v743;
    *v429 = *v741;
    *v434 = *v739;
    *v437 = *v737;
    *v440 = *v735;
    *v445 = *v733;
    *v448 = *v731;
    v455 = v728;
    *v474 = *v726;
    *v479 = *v724;
    v485 = v721;
    *v491 = *v719;
    *v494 = *v717;
    *v509 = *v715;
    v515 = v713;
    *v519 = *v711;
    v528 = v708;
    *v532 = *v706;
    v536 = v703;
    *v540 = *v701;
    *v543 = *v699;
    *v548 = *v697;
    *v551 = *v695;
    *v556 = *v693;
    *v561 = *v691;
    *v564 = *v689;
    v574 = v686;
    *v578 = *v684;
    v583 = v681;
    *v589 = *v679;
    *v592 = *v677;
    *v597 = *v675;
    *v603 = *v673;
    *v607 = *v671;
    *v613 = *v669;
    LOBYTE(v331) = v775;
    *(&v331 + 2) = v773;
    HIWORD(v331) = v774;
    *v334 = *v772;
    *&v334[3] = *&v772[3];
    *&v337[3] = *&v771[3];
    *v337 = *v771;
    *v352 = *v770;
    *&v352[3] = *&v770[3];
    v356 = v767;
    v357 = v768;
    *v360 = *v765;
    *&v360[3] = *&v765[3];
    v365 = v764;
    v364 = v763;
    *&v374[3] = *&v761[3];
    *&v386[3] = *&v759[3];
    *&v389[3] = *&v757[3];
    *&v396[3] = *&v755[3];
    *&v406[3] = *&v753[3];
    *&v409[3] = *&v751[3];
    *&v412[3] = *&v749[3];
    *&v415[3] = *&v747[3];
    *&v421[3] = *&v745[3];
    *&v424[3] = *&v743[3];
    *&v429[3] = *&v741[3];
    *&v434[3] = *&v739[3];
    *&v437[3] = *&v737[3];
    *&v440[3] = *&v735[3];
    *&v445[3] = *&v733[3];
    *&v448[3] = *&v731[3];
    v456 = v729;
    *&v474[3] = *&v726[3];
    *&v479[3] = *&v724[3];
    v486 = v722;
    *&v491[3] = *&v719[3];
    *&v494[3] = *&v717[3];
    v498 = v792;
    v497 = v791;
    v502 = v796;
    v501 = v795;
    v500 = v794;
    v499 = v793;
    *&v509[3] = *&v715[3];
    v516 = v714;
    *&v519[3] = *&v711[3];
    v529 = v709;
    *&v532[3] = *&v706[3];
    v537 = v704;
    *&v540[3] = *&v701[3];
    *&v543[3] = *&v699[3];
    *&v548[3] = *&v697[3];
    *&v551[3] = *&v695[3];
    *&v556[3] = *&v693[3];
    *&v561[3] = *&v691[3];
    *&v564[3] = *&v689[3];
    v575 = v687;
    *&v578[3] = *&v684[3];
    v584 = v682;
    *&v589[3] = *&v679[3];
    *&v592[3] = *&v677[3];
    *&v597[3] = *&v675[3];
    *&v603[3] = *&v673[3];
    *&v607[3] = *&v671[3];
    *&v613[3] = *&v669[3];
    v615 = v211;
    *v616 = *v667;
    *&v616[3] = *&v667[3];
    v617 = v162;
    v618 = v217;
    *v619 = *v665;
    *&v619[3] = *&v665[3];
    v620 = v160;
    v621 = v216;
    *v622 = *v663;
    *&v622[3] = *&v663[3];
    v623 = v287;
    v624 = v286;
    v625 = v309;
    v626 = v312;
    v627 = v157;
    v628 = v215;
    *v629 = *v661;
    *&v629[3] = *&v661[3];
    v630 = v219;
    v631 = v155;
    v632 = v214;
    *v633 = *v659;
    *&v633[3] = *&v659[3];
    v634 = v154;
    v635 = v213;
    v636 = v152;
    v637 = v150;
    v638 = v656;
    v639 = v657;
    v640 = v149;
    v641 = v218;
    v642 = v146;
    *v643 = *v655;
    *&v643[3] = *&v655[3];
    v644 = v143;
    v645 = v212;
    *v646 = *v653;
    *&v646[3] = *&v653[3];
    v647 = v323;
    v648 = v324;
    v649 = v141;
    v650 = v304;
    return sub_2142E1154(&v329);
  }

  if ((v59 & 1) == 0)
  {
    sub_214031C4C();
    v68 = swift_allocError();
    *v69 = 0xD000000000000016;
    v69[1] = 0x800000021478C7E0;
    v69[2] = 0xD00000000000001CLL;
    v69[3] = 0x800000021478A360;
    v797 = v68;
    swift_willThrow();
    sub_213FDC6BC(v309, v312);
    sub_213FDC6BC(v222, *(&v222 + 1));
    v76 = v769;
    goto LABEL_44;
  }

  sub_213FDC6BC(v309, v312);
  sub_213FDC6BC(v222, *(&v222 + 1));
  v769 = 0;
  sub_213FDC6BC(v223, *(&v223 + 1));
  sub_213FDC6BC(v224, *(&v224 + 1));
  sub_213FDC6BC(v225, *(&v225 + 1));
  sub_213FDC6BC(v226, *(&v226 + 1));
  sub_213FDC6BC(v227, *(&v227 + 1));
  sub_213FDC6BC(v228, *(&v228 + 1));
  sub_213FDC6BC(v230, *(&v230 + 1));
  sub_213FDC6BC(v234, *(&v234 + 1));
  sub_213FDC6BC(v235, *(&v235 + 1));
  sub_213FDC6BC(v236, *(&v236 + 1));
  sub_213FDC6BC(v238, *(&v238 + 1));
  sub_213FDC6BC(v242, *(&v242 + 1));
  sub_213FDC6BC(v243, *(&v243 + 1));
  sub_213FDC6BC(v246, *(&v246 + 1));
  sub_213FDC6BC(v248, *(&v248 + 1));
  sub_213FDC6BC(v259, *(&v259 + 1));
  sub_213FDC6BC(v265, *(&v265 + 1));
  sub_213FDC6BC(v269, *(&v269 + 1));
  sub_213FDC6BC(v270, *(&v270 + 1));
  sub_213FDC6BC(v271, *(&v271 + 1));
  sub_213FDC6BC(v288, *(&v288 + 1));
  sub_213FDC6BC(v292, *(&v292 + 1));
  sub_213FDC6BC(v293, *(&v293 + 1));
  sub_213FDC6BC(v296, *(&v296 + 1));
  sub_213FDC6BC(v306, *(&v306 + 1));
  sub_213FDC6BC(v311, v307);
  v60 = v314;
  v61 = v310;
  sub_213FDC6BC(v314, v310);
  sub_213FDC6BC(v313, *(&v313 + 1));
  sub_213FDC6BC(v316, v315);
  sub_213FDC6BC(v317, *(&v317 + 1));
  (*(v326 + 8))(v9, v5);
  v62 = v81;

  *(&v328[12] + 1) = *v770;
  *(&v328[13] + 2) = v767;
  *(&v328[14] + 1) = *v765;
  *(&v328[15] + 10) = v763;
  *(&v328[22] + 9) = *v761;
  *(&v328[29] + 9) = *v759;
  *(&v328[30] + 9) = *v757;
  *(&v328[34] + 9) = *v755;
  *(&v328[39] + 9) = *v753;
  *(&v328[40] + 9) = *v751;
  *(&v328[41] + 9) = *v749;
  *(&v328[42] + 9) = *v747;
  *(&v328[45] + 9) = *v745;
  *(&v328[46] + 9) = *v743;
  *(&v328[48] + 9) = *v741;
  *(&v328[50] + 9) = *v739;
  *(&v328[51] + 9) = *v737;
  *(&v328[52] + 9) = *v735;
  *(&v328[54] + 9) = *v733;
  *(&v328[55] + 9) = *v731;
  *(&v328[56] + 13) = v728;
  *(&v328[65] + 9) = *v726;
  *(&v328[67] + 9) = *v724;
  *(&v328[69] + 10) = v721;
  *(&v328[71] + 9) = *v719;
  *(&v328[72] + 9) = *v717;
  *(&v328[83] + 9) = *v715;
  *(&v328[85] + 3) = v713;
  *(&v328[86] + 1) = *v711;
  *(&v328[90] + 3) = v708;
  *(&v328[91] + 1) = *v706;
  *(&v328[92] + 2) = v703;
  *(&v328[93] + 1) = *v701;
  *(&v328[94] + 1) = *v699;
  *(&v328[96] + 1) = *v697;
  *(&v328[97] + 1) = *v695;
  *(&v328[100] + 1) = *v693;
  *(&v328[103] + 1) = *v691;
  *(&v328[104] + 1) = *v689;
  *(&v328[107] + 11) = v686;
  *(&v328[108] + 9) = *v684;
  *(&v328[110] + 10) = v681;
  *(&v328[112] + 9) = *v679;
  *(&v328[113] + 9) = *v677;
  *(&v328[116] + 9) = *v675;
  *(&v328[120] + 9) = *v673;
  *(&v328[122] + 9) = *v671;
  *(&v328[125] + 9) = *v669;
  *(&v328[126] + 9) = *v667;
  *(&v328[127] + 9) = *v665;
  *(&v328[128] + 9) = *v663;
  *(&v328[131] + 9) = *v661;
  *(&v328[133] + 1) = *v659;
  *(&v328[134] + 3) = v656;
  *(&v328[135] + 9) = *v655;
  *(&v328[136] + 9) = *v653;
  *(&v328[1] + 10) = v773;
  HIWORD(v328[1]) = v774;
  *(&v328[2] + 9) = *v772;
  HIDWORD(v328[2]) = *&v772[3];
  *(&v328[3] + 9) = *v771;
  HIDWORD(v328[3]) = *&v771[3];
  DWORD1(v328[12]) = *&v770[3];
  WORD3(v328[13]) = v768;
  DWORD1(v328[14]) = *&v765[3];
  HIWORD(v328[15]) = v764;
  HIDWORD(v328[22]) = *&v761[3];
  HIDWORD(v328[29]) = *&v759[3];
  HIDWORD(v328[30]) = *&v757[3];
  HIDWORD(v328[34]) = *&v755[3];
  HIDWORD(v328[39]) = *&v753[3];
  HIDWORD(v328[40]) = *&v751[3];
  HIDWORD(v328[41]) = *&v749[3];
  HIDWORD(v328[42]) = *&v747[3];
  HIDWORD(v328[45]) = *&v745[3];
  HIDWORD(v328[46]) = *&v743[3];
  HIDWORD(v328[48]) = *&v741[3];
  HIDWORD(v328[50]) = *&v739[3];
  HIDWORD(v328[51]) = *&v737[3];
  HIDWORD(v328[52]) = *&v735[3];
  HIDWORD(v328[54]) = *&v733[3];
  HIDWORD(v328[55]) = *&v731[3];
  HIBYTE(v328[56]) = v729;
  HIDWORD(v328[65]) = *&v726[3];
  HIDWORD(v328[67]) = *&v724[3];
  HIWORD(v328[69]) = v722;
  HIDWORD(v328[71]) = *&v719[3];
  HIDWORD(v328[72]) = *&v717[3];
  HIDWORD(v328[83]) = *&v715[3];
  BYTE7(v328[85]) = v714;
  DWORD1(v328[86]) = *&v711[3];
  BYTE7(v328[90]) = v709;
  DWORD1(v328[91]) = *&v706[3];
  WORD3(v328[92]) = v704;
  DWORD1(v328[93]) = *&v701[3];
  DWORD1(v328[94]) = *&v699[3];
  DWORD1(v328[96]) = *&v697[3];
  DWORD1(v328[97]) = *&v695[3];
  DWORD1(v328[100]) = *&v693[3];
  DWORD1(v328[103]) = *&v691[3];
  DWORD1(v328[104]) = *&v689[3];
  HIBYTE(v328[107]) = v687;
  HIDWORD(v328[108]) = *&v684[3];
  HIWORD(v328[110]) = v682;
  HIDWORD(v328[112]) = *&v679[3];
  HIDWORD(v328[113]) = *&v677[3];
  HIDWORD(v328[116]) = *&v675[3];
  HIDWORD(v328[120]) = *&v673[3];
  HIDWORD(v328[122]) = *&v671[3];
  HIDWORD(v328[125]) = *&v669[3];
  HIDWORD(v328[126]) = *&v667[3];
  HIDWORD(v328[127]) = *&v665[3];
  HIDWORD(v328[128]) = *&v663[3];
  HIDWORD(v328[131]) = *&v661[3];
  DWORD1(v328[133]) = *&v659[3];
  BYTE7(v328[134]) = v657;
  HIDWORD(v328[135]) = *&v655[3];
  HIDWORD(v328[136]) = *&v653[3];
  v775 = 0;
  *&v328[0] = v86;
  *(&v328[0] + 1) = v62;
  *&v328[1] = v322;
  BYTE8(v328[1]) = 0;
  BYTE9(v328[1]) = v87;
  *&v328[2] = v319;
  BYTE8(v328[2]) = v82;
  *&v328[3] = v318;
  BYTE8(v328[3]) = v83;
  v328[4] = v317;
  *&v328[5] = v316;
  *(&v328[5] + 1) = v315;
  v328[6] = v313;
  *&v328[7] = v60;
  *(&v328[7] + 1) = v61;
  *&v328[8] = v311;
  *(&v328[8] + 1) = v307;
  v74 = v36;
  *&v328[9] = v36;
  *(&v328[9] + 1) = v308;
  v328[10] = v306;
  *&v328[11] = v303;
  *(&v328[11] + 1) = v305;
  LOBYTE(v328[12]) = v302;
  *(&v328[12] + 1) = v300;
  LOBYTE(v328[13]) = v301;
  BYTE1(v328[13]) = v84;
  *(&v328[13] + 1) = v298;
  LOBYTE(v328[14]) = v85;
  *(&v328[14] + 8) = v296;
  BYTE8(v328[15]) = v295;
  BYTE9(v328[15]) = v294;
  v328[16] = v293;
  v328[17] = v292;
  v328[18] = v291;
  v328[19] = v290;
  v328[20] = v289;
  v328[21] = v288;
  *&v328[22] = v285;
  BYTE8(v328[22]) = v88;
  v328[23] = v283;
  v328[24] = v282;
  *&v328[25] = v278;
  *(&v328[25] + 1) = v281;
  *&v328[26] = v277;
  *(&v328[26] + 1) = v280;
  *&v328[27] = v276;
  *(&v328[27] + 1) = v279;
  v328[28] = v275;
  *&v328[29] = v273;
  BYTE8(v328[29]) = v89;
  *&v328[30] = v240;
  BYTE8(v328[30]) = v90;
  *&v328[31] = v221;
  *(&v328[31] + 1) = v274;
  v328[32] = v271;
  v328[33] = v270;
  *&v328[34] = v200;
  BYTE8(v328[34]) = v91;
  v328[35] = v269;
  *&v328[36] = v199;
  *(&v328[36] + 1) = v268;
  *&v328[37] = v198;
  *(&v328[37] + 1) = v267;
  *&v328[38] = v197;
  *(&v328[38] + 1) = v266;
  *&v328[39] = v196;
  BYTE8(v328[39]) = v92;
  *&v328[40] = v195;
  BYTE8(v328[40]) = v93;
  *&v328[41] = v194;
  BYTE8(v328[41]) = v94;
  *&v328[42] = v193;
  BYTE8(v328[42]) = v95;
  v328[43] = v265;
  *&v328[44] = v192;
  *(&v328[44] + 1) = v264;
  *&v328[45] = v191;
  BYTE8(v328[45]) = v96;
  *&v328[46] = v190;
  BYTE8(v328[46]) = v97;
  *&v328[47] = v189;
  *(&v328[47] + 1) = v263;
  *&v328[48] = v188;
  BYTE8(v328[48]) = v98;
  *&v328[49] = v187;
  *(&v328[49] + 1) = v262;
  *&v328[50] = v186;
  BYTE8(v328[50]) = v99;
  *&v328[51] = v185;
  BYTE8(v328[51]) = v100;
  *&v328[52] = v184;
  BYTE8(v328[52]) = v101;
  *&v328[53] = v261;
  *(&v328[53] + 1) = v260;
  *&v328[54] = v183;
  BYTE8(v328[54]) = v102;
  *&v328[55] = v182;
  BYTE8(v328[55]) = v103;
  *&v328[56] = v181;
  BYTE8(v328[56]) = v104;
  BYTE9(v328[56]) = v180;
  BYTE10(v328[56]) = v179;
  BYTE11(v328[56]) = v178;
  BYTE12(v328[56]) = v177;
  *&v328[57] = v176;
  *(&v328[57] + 1) = v258;
  *&v328[58] = v175;
  *(&v328[58] + 1) = v257;
  v328[59] = v259;
  *&v328[60] = v174;
  *(&v328[60] + 1) = v256;
  *&v328[61] = v173;
  *(&v328[61] + 1) = v255;
  *&v328[62] = v172;
  *(&v328[62] + 1) = v254;
  *&v328[63] = v171;
  *(&v328[63] + 1) = v253;
  *&v328[64] = v170;
  *(&v328[64] + 1) = v252;
  *&v328[65] = v169;
  BYTE8(v328[65]) = v108;
  *&v328[66] = v168;
  *(&v328[66] + 1) = v251;
  *&v328[67] = v167;
  BYTE8(v328[67]) = v109;
  *&v328[68] = v166;
  *(&v328[68] + 1) = v250;
  *&v328[69] = v165;
  BYTE8(v328[69]) = v110;
  BYTE9(v328[69]) = v164;
  *&v328[70] = v163;
  *(&v328[70] + 1) = v249;
  *&v328[71] = v161;
  BYTE8(v328[71]) = v105;
  *&v328[72] = v159;
  BYTE8(v328[72]) = v106;
  *&v328[73] = v158;
  *(&v328[73] + 1) = v247;
  v328[75] = v792;
  v328[74] = v791;
  v328[79] = v796;
  v328[78] = v795;
  v328[77] = v794;
  v328[76] = v793;
  v328[80] = v248;
  *&v328[81] = v156;
  *(&v328[81] + 1) = v245;
  v328[82] = v246;
  *&v328[83] = v153;
  BYTE8(v328[83]) = v107;
  *&v328[84] = v151;
  *(&v328[84] + 1) = v244;
  LOBYTE(v328[85]) = v148;
  BYTE1(v328[85]) = v145;
  BYTE2(v328[85]) = v147;
  *(&v328[85] + 1) = v144;
  LOBYTE(v328[86]) = v299;
  *(&v328[86] + 1) = v142;
  *&v328[87] = v241;
  *(&v328[87] + 8) = v243;
  *(&v328[88] + 8) = v242;
  *(&v328[89] + 1) = v140;
  LOBYTE(v328[90]) = v297;
  BYTE1(v328[90]) = v139;
  BYTE2(v328[90]) = v138;
  *(&v328[90] + 1) = v137;
  LOBYTE(v328[91]) = v284;
  *(&v328[91] + 1) = v136;
  LOBYTE(v328[92]) = v239;
  BYTE1(v328[92]) = v135;
  *(&v328[92] + 1) = v134;
  LOBYTE(v328[93]) = v112;
  *(&v328[93] + 1) = v133;
  LOBYTE(v328[94]) = v111;
  v64 = v79;
  v63 = v80;
  *(&v328[94] + 1) = v80;
  v65 = v237;
  *&v328[95] = v237;
  *(&v328[95] + 1) = v79;
  v66 = v77;
  LOBYTE(v328[96]) = v77;
  v67 = v78;
  *(&v328[96] + 1) = v78;
  LOBYTE(v328[97]) = v272;
  *(&v328[97] + 8) = v238;
  *(&v328[98] + 8) = v236;
  *(&v328[99] + 1) = v132;
  LOBYTE(v328[100]) = v320;
  *(&v328[100] + 8) = v235;
  *(&v328[101] + 8) = v234;
  *(&v328[102] + 1) = v131;
  LOBYTE(v328[103]) = v321;
  *(&v328[103] + 1) = v130;
  LOBYTE(v328[104]) = v210;
  *(&v328[104] + 1) = v233;
  *&v328[105] = v129;
  *(&v328[105] + 1) = v232;
  *&v328[106] = v128;
  *(&v328[106] + 1) = v231;
  *&v328[107] = v127;
  BYTE8(v328[107]) = v209;
  BYTE9(v328[107]) = v126;
  BYTE10(v328[107]) = v125;
  *&v328[108] = v124;
  BYTE8(v328[108]) = v208;
  v328[109] = v230;
  *&v328[110] = v123;
  BYTE8(v328[110]) = v207;
  BYTE9(v328[110]) = v122;
  *&v328[111] = v121;
  *(&v328[111] + 1) = v229;
  *&v328[112] = v120;
  BYTE8(v328[112]) = v206;
  *&v328[113] = v119;
  BYTE8(v328[113]) = v205;
  v328[114] = v228;
  v328[115] = v227;
  *&v328[116] = v118;
  BYTE8(v328[116]) = v204;
  v328[117] = v226;
  v328[118] = v225;
  v328[119] = v224;
  *&v328[120] = v117;
  BYTE8(v328[120]) = v203;
  v328[121] = v223;
  *&v328[122] = v116;
  BYTE8(v328[122]) = v202;
  v328[123] = v222;
  *&v328[124] = v115;
  *(&v328[124] + 1) = v220;
  *&v328[125] = v114;
  BYTE8(v328[125]) = v201;
  *&v328[126] = v113;
  BYTE8(v328[126]) = v211;
  *&v328[127] = v162;
  BYTE8(v328[127]) = v217;
  *&v328[128] = v160;
  BYTE8(v328[128]) = v216;
  *&v328[129] = v287;
  *(&v328[129] + 1) = v286;
  *&v328[130] = v309;
  *(&v328[130] + 1) = v312;
  *&v328[131] = v157;
  BYTE8(v328[131]) = v215;
  *&v328[132] = v219;
  *(&v328[132] + 1) = v155;
  LOBYTE(v328[133]) = v214;
  *(&v328[133] + 1) = v154;
  LOBYTE(v328[134]) = v213;
  BYTE1(v328[134]) = v152;
  BYTE2(v328[134]) = v150;
  *(&v328[134] + 1) = v149;
  *&v328[135] = v218;
  BYTE8(v328[135]) = v146;
  *&v328[136] = v143;
  BYTE8(v328[136]) = v212;
  *&v328[137] = v323;
  BYTE8(v328[137]) = v324;
  BYTE9(v328[137]) = v141;
  BYTE10(v328[137]) = v304;
  memcpy(v325, v328, 0x89BuLL);
  sub_2142E1BD4(v328, &v329);
  __swift_destroy_boxed_opaque_existential_1(v327);
  *&v329 = v86;
  *(&v329 + 1) = v81;
  v330 = v322;
  BYTE1(v331) = v87;
  v332 = v319;
  v333 = v82;
  v335 = v318;
  v336 = v83;
  v338 = v317;
  v339 = v316;
  v340 = v315;
  v341 = v313;
  v342 = v314;
  v343 = v310;
  v344 = v311;
  v345 = v307;
  v346 = v74;
  v347 = v308;
  v348 = v306;
  v349 = v303;
  v350 = v305;
  v351 = v302;
  v353 = v300;
  v354 = v301;
  v355 = v84;
  v358 = v298;
  v359 = v85;
  v361 = v296;
  v362 = v295;
  v363 = v294;
  v366 = v293;
  v367 = v292;
  v368 = v291;
  v369 = v290;
  v370 = v289;
  v371 = v288;
  v372 = v285;
  v373 = v88;
  v375 = v283;
  v376 = v282;
  v377 = v278;
  v378 = v281;
  v379 = v277;
  v380 = v280;
  v381 = v276;
  v382 = v279;
  v383 = v275;
  v384 = v273;
  v385 = v89;
  v387 = v240;
  v388 = v90;
  v390 = v221;
  v391 = v274;
  v392 = v271;
  v393 = v270;
  v394 = v200;
  v395 = v91;
  v397 = v269;
  v398 = v199;
  v399 = v268;
  v400 = v198;
  v401 = v267;
  v402 = v197;
  v403 = v266;
  v404 = v196;
  v405 = v92;
  v407 = v195;
  v408 = v93;
  v410 = v194;
  v411 = v94;
  v413 = v193;
  v414 = v95;
  v416 = v265;
  v417 = v192;
  v418 = v264;
  v419 = v191;
  v420 = v96;
  v422 = v190;
  v423 = v97;
  v425 = v189;
  v426 = v263;
  v427 = v188;
  v428 = v98;
  v430 = v187;
  v431 = v262;
  v432 = v186;
  v433 = v99;
  v435 = v185;
  v436 = v100;
  v438 = v184;
  v439 = v101;
  v441 = v261;
  v442 = v260;
  v443 = v183;
  v444 = v102;
  v446 = v182;
  v447 = v103;
  v449 = v181;
  v450 = v104;
  v451 = v180;
  v452 = v179;
  v453 = v178;
  v454 = v177;
  v457 = v176;
  v458 = v258;
  v459 = v175;
  v460 = v257;
  v461 = v259;
  v462 = v174;
  v463 = v256;
  v464 = v173;
  v465 = v255;
  v466 = v172;
  v467 = v254;
  v468 = v171;
  v469 = v253;
  v470 = v170;
  v471 = v252;
  v472 = v169;
  v473 = v108;
  v475 = v168;
  v476 = v251;
  v477 = v167;
  v478 = v109;
  v480 = v166;
  v481 = v250;
  v482 = v165;
  v483 = v110;
  v484 = v164;
  v487 = v163;
  v488 = v249;
  v489 = v161;
  v490 = v105;
  v492 = v159;
  v493 = v106;
  v495 = v158;
  v496 = v247;
  v503 = v248;
  v504 = v156;
  v505 = v245;
  v506 = v246;
  v507 = v153;
  v508 = v107;
  v510 = v151;
  v511 = v244;
  v512 = v148;
  v513 = v145;
  v544 = v63;
  v541 = v133;
  v542 = v111;
  v545 = v65;
  v546 = v64;
  v547 = v66;
  v549 = v67;
  v538 = v134;
  v539 = v112;
  v550 = v272;
  v552 = v238;
  v553 = v236;
  v533 = v136;
  v534 = v239;
  v535 = v135;
  v554 = v132;
  v555 = v320;
  v527 = v138;
  v530 = v137;
  v531 = v284;
  v557 = v235;
  v558 = v234;
  v523 = v242;
  v524 = v140;
  v525 = v297;
  v526 = v139;
  v520 = v142;
  v521 = v241;
  v522 = v243;
  v559 = v131;
  v560 = v321;
  v514 = v147;
  v517 = v144;
  v518 = v299;
  v562 = v130;
  v563 = v210;
  v565 = v233;
  v566 = v129;
  v567 = v232;
  v568 = v128;
  v569 = v231;
  v570 = v127;
  v571 = v209;
  v572 = v126;
  v573 = v125;
  v576 = v124;
  v577 = v208;
  v579 = v230;
  v580 = v123;
  v581 = v207;
  v582 = v122;
  v585 = v121;
  v586 = v229;
  v587 = v120;
  v588 = v206;
  v590 = v119;
  v591 = v205;
  v593 = v228;
  v594 = v227;
  v595 = v118;
  v596 = v204;
  v598 = v226;
  v599 = v225;
  v600 = v224;
  v601 = v117;
  v602 = v203;
  v604 = v223;
  v605 = v116;
  v606 = v202;
  v608 = v222;
  v609 = v115;
  v610 = v220;
  v611 = v114;
  v612 = v201;
  v614 = v113;
  v615 = v211;
  *v374 = *v761;
  *v386 = *v759;
  *v389 = *v757;
  *v396 = *v755;
  *v406 = *v753;
  *v409 = *v751;
  *v412 = *v749;
  *v415 = *v747;
  *v421 = *v745;
  *v424 = *v743;
  *v429 = *v741;
  *v434 = *v739;
  *v437 = *v737;
  *v440 = *v735;
  *v445 = *v733;
  *v448 = *v731;
  v455 = v728;
  *v474 = *v726;
  *v479 = *v724;
  v485 = v721;
  *v491 = *v719;
  *v494 = *v717;
  LOBYTE(v331) = v775;
  *(&v331 + 2) = v773;
  HIWORD(v331) = v774;
  *v334 = *v772;
  *&v334[3] = *&v772[3];
  *&v337[3] = *&v771[3];
  *v337 = *v771;
  *v352 = *v770;
  *&v352[3] = *&v770[3];
  v356 = v767;
  v357 = v768;
  *v360 = *v765;
  *&v360[3] = *&v765[3];
  v365 = v764;
  v364 = v763;
  *&v374[3] = *&v761[3];
  *&v386[3] = *&v759[3];
  *&v389[3] = *&v757[3];
  *&v396[3] = *&v755[3];
  *&v406[3] = *&v753[3];
  *&v409[3] = *&v751[3];
  *&v412[3] = *&v749[3];
  *&v415[3] = *&v747[3];
  *&v421[3] = *&v745[3];
  *&v424[3] = *&v743[3];
  *&v429[3] = *&v741[3];
  *&v434[3] = *&v739[3];
  *&v437[3] = *&v737[3];
  *&v440[3] = *&v735[3];
  *&v445[3] = *&v733[3];
  *&v448[3] = *&v731[3];
  v456 = v729;
  *&v474[3] = *&v726[3];
  *&v479[3] = *&v724[3];
  v486 = v722;
  *&v491[3] = *&v719[3];
  *&v494[3] = *&v717[3];
  v498 = v792;
  v497 = v791;
  v502 = v796;
  v501 = v795;
  v500 = v794;
  v499 = v793;
  *v509 = *v715;
  *&v509[3] = *&v715[3];
  v515 = v713;
  v516 = v714;
  *v519 = *v711;
  *&v519[3] = *&v711[3];
  v528 = v708;
  v529 = v709;
  *v532 = *v706;
  *&v532[3] = *&v706[3];
  v536 = v703;
  v537 = v704;
  *v540 = *v701;
  *&v540[3] = *&v701[3];
  *v543 = *v699;
  *&v543[3] = *&v699[3];
  *v548 = *v697;
  *&v548[3] = *&v697[3];
  *v551 = *v695;
  *&v551[3] = *&v695[3];
  *v556 = *v693;
  *&v556[3] = *&v693[3];
  *v561 = *v691;
  *&v561[3] = *&v691[3];
  *v564 = *v689;
  *&v564[3] = *&v689[3];
  v574 = v686;
  v575 = v687;
  *v578 = *v684;
  *&v578[3] = *&v684[3];
  v583 = v681;
  v584 = v682;
  *v589 = *v679;
  *&v589[3] = *&v679[3];
  *v592 = *v677;
  *&v592[3] = *&v677[3];
  *v597 = *v675;
  *&v597[3] = *&v675[3];
  *v603 = *v673;
  *&v603[3] = *&v673[3];
  *v607 = *v671;
  *&v607[3] = *&v671[3];
  *v613 = *v669;
  *&v613[3] = *&v669[3];
  *v616 = *v667;
  *&v616[3] = *&v667[3];
  v617 = v162;
  v618 = v217;
  *v619 = *v665;
  *&v619[3] = *&v665[3];
  v620 = v160;
  v621 = v216;
  *v622 = *v663;
  *&v622[3] = *&v663[3];
  v623 = v287;
  v624 = v286;
  v625 = v309;
  v626 = v312;
  v627 = v157;
  v628 = v215;
  *v629 = *v661;
  *&v629[3] = *&v661[3];
  v630 = v219;
  v631 = v155;
  v632 = v214;
  *v633 = *v659;
  *&v633[3] = *&v659[3];
  v634 = v154;
  v635 = v213;
  v636 = v152;
  v637 = v150;
  v638 = v656;
  v639 = v657;
  v640 = v149;
  v641 = v218;
  v642 = v146;
  *v643 = *v655;
  *&v643[3] = *&v655[3];
  v644 = v143;
  v645 = v212;
  *v646 = *v653;
  *&v646[3] = *&v653[3];
  v647 = v323;
  v648 = v324;
  v649 = v141;
  v650 = v304;
  return sub_2142E1154(&v329);
}

uint64_t sub_2140BAADC(void *a1)
{
  v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056D8, &qword_2146F3D40);
  v350 = *(v363 - 8);
  v4 = *(v350 + 64);
  MEMORY[0x28223BE20](v363);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v349 = *(v1 + 32);
  v7 = *(v1 + 40);
  v348 = *(v1 + 48);
  LODWORD(v347) = *(v1 + 56);
  v8 = *(v1 + 72);
  v346 = *(v1 + 64);
  v345 = v8;
  v9 = *(v1 + 88);
  v344 = *(v1 + 80);
  v343 = v9;
  v10 = *(v1 + 104);
  v342 = *(v1 + 96);
  v341 = v10;
  v11 = *(v1 + 120);
  v340 = *(v1 + 112);
  v339 = v11;
  v12 = *(v1 + 136);
  v338 = *(v1 + 128);
  v337 = v12;
  v13 = *(v1 + 152);
  v336 = *(v1 + 144);
  v335 = v13;
  v14 = *(v1 + 168);
  v334 = *(v1 + 160);
  v333 = v14;
  v15 = *(v1 + 184);
  v332 = *(v1 + 176);
  v331 = v15;
  v330 = *(v1 + 192);
  v329 = *(v1 + 200);
  v328 = *(v1 + 208);
  v327 = *(v1 + 209);
  v326 = *(v1 + 216);
  v325 = *(v1 + 224);
  v16 = *(v1 + 240);
  v324 = *(v1 + 232);
  v323 = v16;
  v17 = *(v1 + 1232);
  v359 = *(v1 + 1216);
  v360 = v17;
  v18 = *(v1 + 1264);
  v361 = *(v1 + 1248);
  v362 = v18;
  v19 = *(v1 + 1200);
  v357 = *(v1 + 1184);
  v358 = v19;
  v322 = *(v1 + 248);
  v321 = *(v1 + 249);
  v20 = *(v1 + 256);
  v72 = *(v1 + 264);
  v73 = v20;
  v21 = *(v1 + 272);
  v74 = *(v1 + 280);
  v75 = v21;
  v22 = *(v1 + 288);
  v76 = *(v1 + 296);
  v77 = v22;
  v23 = *(v1 + 304);
  v78 = *(v1 + 312);
  v79 = v23;
  v24 = *(v1 + 320);
  v80 = *(v1 + 328);
  v81 = v24;
  v25 = *(v1 + 336);
  v82 = *(v1 + 344);
  v83 = v25;
  v26 = *(v1 + 352);
  v84 = *(v1 + 360);
  v28 = *(v1 + 368);
  v27 = *(v1 + 376);
  v85 = v26;
  v86 = v27;
  v30 = *(v1 + 384);
  v29 = *(v1 + 392);
  v87 = v28;
  v88 = v29;
  v32 = *(v1 + 400);
  v31 = *(v1 + 408);
  v89 = v30;
  v90 = v31;
  v34 = *(v1 + 416);
  v33 = *(v1 + 424);
  v91 = v32;
  v92 = v34;
  v93 = v33;
  v35 = *(v1 + 432);
  v94 = *(v1 + 440);
  v95 = v35;
  v36 = *(v1 + 448);
  v96 = *(v1 + 456);
  v97 = v36;
  v99 = *(v1 + 464);
  v98 = *(v1 + 472);
  v37 = *(v1 + 480);
  v100 = *(v1 + 488);
  v39 = *(v1 + 496);
  v38 = *(v1 + 504);
  v101 = v37;
  v102 = v38;
  v40 = *(v1 + 512);
  v41 = *(v1 + 520);
  v103 = v39;
  v104 = v41;
  v107 = *(v1 + 528);
  v42 = *(v1 + 536);
  v105 = v40;
  v106 = v42;
  v43 = *(v1 + 544);
  v108 = *(v1 + 552);
  v44 = *(v1 + 560);
  v45 = *(v1 + 568);
  v109 = v43;
  v110 = v45;
  v46 = *(v1 + 576);
  v47 = *(v1 + 584);
  v111 = v44;
  v112 = v47;
  v48 = *(v1 + 592);
  v49 = *(v1 + 600);
  v113 = v46;
  v114 = v49;
  v117 = *(v1 + 608);
  v50 = *(v1 + 616);
  v115 = v48;
  v116 = v50;
  v119 = *(v1 + 624);
  v118 = *(v1 + 632);
  v121 = *(v1 + 640);
  v120 = *(v1 + 648);
  v123 = *(v1 + 656);
  v122 = *(v1 + 664);
  v51 = *(v1 + 672);
  v124 = *(v1 + 680);
  v52 = *(v1 + 688);
  v53 = *(v1 + 696);
  v125 = v51;
  v126 = v53;
  v129 = *(v1 + 704);
  v54 = *(v1 + 712);
  v127 = v52;
  v128 = v54;
  v131 = *(v1 + 720);
  v130 = *(v1 + 728);
  v55 = *(v1 + 736);
  v132 = *(v1 + 744);
  v135 = *(v1 + 752);
  v56 = *(v1 + 760);
  v133 = v55;
  v134 = v56;
  v137 = *(v1 + 768);
  v136 = *(v1 + 776);
  v139 = *(v1 + 784);
  v138 = *(v1 + 792);
  v141 = *(v1 + 800);
  v140 = *(v1 + 808);
  v143 = *(v1 + 816);
  v142 = *(v1 + 824);
  v145 = *(v1 + 832);
  v144 = *(v1 + 840);
  v146 = *(v1 + 848);
  v147 = *(v1 + 856);
  v149 = *(v1 + 864);
  v148 = *(v1 + 872);
  v151 = *(v1 + 880);
  v150 = *(v1 + 888);
  v153 = *(v1 + 896);
  v152 = *(v1 + 904);
  v154 = *(v1 + 905);
  v155 = *(v1 + 906);
  v156 = *(v1 + 907);
  v157 = *(v1 + 908);
  v159 = *(v1 + 912);
  v158 = *(v1 + 920);
  v161 = *(v1 + 928);
  v160 = *(v1 + 936);
  v163 = *(v1 + 944);
  v162 = *(v1 + 952);
  v165 = *(v1 + 960);
  v164 = *(v1 + 968);
  v167 = *(v1 + 976);
  v166 = *(v1 + 984);
  v169 = *(v1 + 992);
  v168 = *(v1 + 1000);
  v171 = *(v1 + 1008);
  v170 = *(v1 + 1016);
  v173 = *(v1 + 1024);
  v172 = *(v1 + 1032);
  v175 = *(v1 + 1040);
  v174 = *(v1 + 1048);
  v177 = *(v1 + 1056);
  v176 = *(v1 + 1064);
  v179 = *(v1 + 1072);
  v178 = *(v1 + 1080);
  v181 = *(v1 + 1088);
  v180 = *(v1 + 1096);
  v183 = *(v1 + 1104);
  v182 = *(v1 + 1112);
  v184 = *(v1 + 1113);
  v186 = *(v1 + 1120);
  v185 = *(v1 + 1128);
  v188 = *(v1 + 1136);
  v187 = *(v1 + 1144);
  v190 = *(v1 + 1152);
  v189 = *(v1 + 1160);
  v192 = *(v1 + 1168);
  v191 = *(v1 + 1176);
  v194 = *(v1 + 1280);
  v193 = *(v1 + 1288);
  v196 = *(v1 + 1296);
  v195 = *(v1 + 1304);
  v198 = *(v1 + 1312);
  v197 = *(v1 + 1320);
  v200 = *(v1 + 1328);
  v199 = *(v1 + 1336);
  v202 = *(v1 + 1344);
  v201 = *(v1 + 1352);
  v203 = *(v1 + 1360);
  v204 = *(v1 + 1361);
  v205 = *(v1 + 1362);
  v207 = *(v1 + 1368);
  v206 = *(v1 + 1376);
  v209 = *(v1 + 1384);
  v208 = *(v1 + 1392);
  v211 = *(v1 + 1400);
  v210 = *(v1 + 1408);
  v213 = *(v1 + 1416);
  v212 = *(v1 + 1424);
  v215 = *(v1 + 1432);
  v214 = *(v1 + 1440);
  v216 = *(v1 + 1441);
  v217 = *(v1 + 1442);
  v219 = *(v1 + 1448);
  v218 = *(v1 + 1456);
  v221 = *(v1 + 1464);
  v220 = *(v1 + 1472);
  v222 = *(v1 + 1473);
  v224 = *(v1 + 1480);
  v223 = *(v1 + 1488);
  v226 = *(v1 + 1496);
  v225 = *(v1 + 1504);
  v228 = *(v1 + 1512);
  v227 = *(v1 + 1520);
  v230 = *(v1 + 1528);
  v229 = *(v1 + 1536);
  v232 = *(v1 + 1544);
  v231 = *(v1 + 1552);
  v234 = *(v1 + 1560);
  v233 = *(v1 + 1568);
  v236 = *(v1 + 1576);
  v235 = *(v1 + 1584);
  v238 = *(v1 + 1592);
  v237 = *(v1 + 1600);
  v240 = *(v1 + 1608);
  v239 = *(v1 + 1616);
  v242 = *(v1 + 1624);
  v241 = *(v1 + 1632);
  v244 = *(v1 + 1640);
  v243 = *(v1 + 1648);
  v246 = *(v1 + 1656);
  v245 = *(v1 + 1664);
  v247 = *(v1 + 1672);
  v249 = *(v1 + 1680);
  v248 = *(v1 + 1688);
  v251 = *(v1 + 1696);
  v250 = *(v1 + 1704);
  v253 = *(v1 + 1712);
  v252 = *(v1 + 1720);
  v254 = *(v1 + 1721);
  v255 = *(v1 + 1722);
  v257 = *(v1 + 1728);
  v256 = *(v1 + 1736);
  v259 = *(v1 + 1744);
  v258 = *(v1 + 1752);
  v261 = *(v1 + 1760);
  v260 = *(v1 + 1768);
  v262 = *(v1 + 1769);
  v264 = *(v1 + 1776);
  v263 = *(v1 + 1784);
  v266 = *(v1 + 1792);
  v265 = *(v1 + 1800);
  v268 = *(v1 + 1808);
  v267 = *(v1 + 1816);
  v270 = *(v1 + 1824);
  v269 = *(v1 + 1832);
  v272 = *(v1 + 1840);
  v271 = *(v1 + 1848);
  v274 = *(v1 + 1856);
  v273 = *(v1 + 1864);
  v276 = *(v1 + 1872);
  v275 = *(v1 + 1880);
  v278 = *(v1 + 1888);
  v277 = *(v1 + 1896);
  v280 = *(v1 + 1904);
  v279 = *(v1 + 1912);
  v282 = *(v1 + 1920);
  v281 = *(v1 + 1928);
  v284 = *(v1 + 1936);
  v283 = *(v1 + 1944);
  v286 = *(v1 + 1952);
  v285 = *(v1 + 1960);
  v288 = *(v1 + 1968);
  v287 = *(v1 + 1976);
  v290 = *(v1 + 1984);
  v289 = *(v1 + 1992);
  v292 = *(v1 + 2000);
  v291 = *(v1 + 2008);
  v294 = *(v1 + 2016);
  v293 = *(v1 + 2024);
  v296 = *(v1 + 2032);
  v295 = *(v1 + 2040);
  v298 = *(v1 + 2048);
  v297 = *(v1 + 2056);
  v299 = *(v1 + 2064);
  v300 = *(v1 + 2072);
  v302 = *(v1 + 2080);
  v301 = *(v1 + 2088);
  v304 = *(v1 + 2096);
  v303 = *(v1 + 2104);
  v305 = *(v1 + 2112);
  v307 = *(v1 + 2120);
  v306 = *(v1 + 2128);
  v309 = *(v1 + 2136);
  v308 = *(v1 + 2144);
  v310 = *(v1 + 2145);
  v311 = *(v1 + 2146);
  v313 = *(v1 + 2152);
  v312 = *(v1 + 2160);
  v314 = *(v1 + 2168);
  v316 = *(v1 + 2176);
  v315 = *(v1 + 2184);
  v318 = *(v1 + 2192);
  v317 = *(v1 + 2200);
  v319 = *(v1 + 2201);
  v320 = *(v1 + 2202);
  v57 = a1[3];
  v58 = a1[4];
  v59 = a1;
  v61 = &v72 - v60;
  __swift_project_boxed_opaque_existential_1(v59, v57);
  sub_2142E11A8();
  sub_2146DAA28();
  if (v6)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    LOBYTE(v356[0]) = 0;
    v62 = v363;
    sub_2146DA368();
    if (v2)
    {
      return (*(v350 + 8))(v61, v62);
    }

    *&v356[0] = v349;
    BYTE8(v356[0]) = v7;
    LOBYTE(v354[0]) = 1;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    sub_2142E1C30();
    sub_2146DA388();
    *&v356[0] = v348;
    BYTE8(v356[0]) = v347;
    LOBYTE(v354[0]) = 2;
    sub_2146DA388();
    v349 = v63;
    *&v356[0] = v346;
    *(&v356[0] + 1) = v345;
    LOBYTE(v354[0]) = 3;
    sub_213FDCA18(v346, v345);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    v64 = sub_2142E1CAC();
    sub_2146DA388();
    sub_213FDC6BC(*&v356[0], *(&v356[0] + 1));
    *&v356[0] = v344;
    *(&v356[0] + 1) = v343;
    LOBYTE(v354[0]) = 4;
    sub_213FDCA18(v344, v343);
    sub_2146DA388();
    sub_213FDC6BC(*&v356[0], *(&v356[0] + 1));
    *&v356[0] = v342;
    *(&v356[0] + 1) = v341;
    LOBYTE(v354[0]) = 5;
    sub_213FDCA18(v342, v341);
    sub_2146DA388();
    sub_213FDC6BC(*&v356[0], *(&v356[0] + 1));
    *&v356[0] = v340;
    *(&v356[0] + 1) = v339;
    LOBYTE(v354[0]) = 6;
    sub_213FDCA18(v340, v339);
    sub_2146DA388();
    sub_213FDC6BC(*&v356[0], *(&v356[0] + 1));
    *&v356[0] = v338;
    *(&v356[0] + 1) = v337;
    LOBYTE(v354[0]) = 7;
    sub_213FDCA18(v338, v337);
    sub_2146DA388();
    sub_213FDC6BC(*&v356[0], *(&v356[0] + 1));
    *&v356[0] = v336;
    *(&v356[0] + 1) = v335;
    LOBYTE(v354[0]) = 8;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v67 = sub_214045AC0();
    v348 = v66;
    v347 = v67;
    sub_2146DA388();
    *&v356[0] = v334;
    *(&v356[0] + 1) = v333;
    LOBYTE(v354[0]) = 9;
    sub_213FDCA18(v334, v333);
    v346 = v64;
    sub_2146DA388();
    sub_213FDC6BC(*&v356[0], *(&v356[0] + 1));
    *&v356[0] = v332;
    *(&v356[0] + 1) = v331;
    LOBYTE(v354[0]) = 10;
    v5 = v61;
    sub_2146DA388();
    LOBYTE(v356[0]) = v330;
    LOBYTE(v354[0]) = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    v345 = sub_2142E1D30();
    sub_2146DA388();
    *&v356[0] = v329;
    BYTE8(v356[0]) = v328;
    BYTE9(v356[0]) = v327;
    LOBYTE(v354[0]) = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905690, &qword_2146F3CF8);
    sub_2142E1DAC();
    sub_2146DA388();
    *&v356[0] = v326;
    BYTE8(v356[0]) = v325;
    LOBYTE(v354[0]) = 13;
    sub_2146DA388();
    *&v356[0] = v324;
    *(&v356[0] + 1) = v323;
    LOBYTE(v354[0]) = 14;
    sub_213FDCA18(v324, v323);
    sub_2146DA388();
    sub_213FDC6BC(*&v356[0], *(&v356[0] + 1));
    LOBYTE(v356[0]) = v322;
    LOBYTE(v354[0]) = 15;
    sub_2146DA388();
    LOBYTE(v356[0]) = v321;
    LOBYTE(v354[0]) = 16;
    sub_2146DA388();
    *&v356[0] = v73;
    *(&v356[0] + 1) = v72;
    LOBYTE(v354[0]) = 17;
    sub_213FDCA18(v73, v72);
    sub_2146DA388();
    sub_213FDC6BC(*&v356[0], *(&v356[0] + 1));
    *&v356[0] = v75;
    *(&v356[0] + 1) = v74;
    LOBYTE(v354[0]) = 18;
    sub_213FDCA18(v75, v74);
    sub_2146DA388();
    sub_213FDC6BC(*&v356[0], *(&v356[0] + 1));
    *&v356[0] = v77;
    *(&v356[0] + 1) = v76;
    LOBYTE(v354[0]) = 19;
    sub_2146DA388();
    *&v356[0] = v79;
    *(&v356[0] + 1) = v78;
    LOBYTE(v354[0]) = 20;
    sub_2146DA388();
    *&v356[0] = v81;
    *(&v356[0] + 1) = v80;
    LOBYTE(v354[0]) = 21;
    sub_2146DA388();
    *&v356[0] = v83;
    *(&v356[0] + 1) = v82;
    LOBYTE(v354[0]) = 22;
    sub_213FDCA18(v83, v82);
    sub_2146DA388();
    sub_213FDC6BC(*&v356[0], *(&v356[0] + 1));
    *&v356[0] = v85;
    BYTE8(v356[0]) = v84;
    LOBYTE(v354[0]) = 23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
    v344 = sub_2142E1E84();
    sub_2146DA388();
    *&v356[0] = v87;
    *(&v356[0] + 1) = v86;
    LOBYTE(v354[0]) = 24;
    sub_2146DA388();
    *&v356[0] = v89;
    *(&v356[0] + 1) = v88;
    LOBYTE(v354[0]) = 25;
    sub_2146DA388();
    *&v356[0] = v91;
    *(&v356[0] + 1) = v90;
    LOBYTE(v354[0]) = 26;
    sub_2146DA388();
    *&v356[0] = v92;
    LOBYTE(v354[0]) = 27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    v343 = sub_2140459AC();
    sub_2146DA388();
    *&v356[0] = v93;
    LOBYTE(v354[0]) = 28;
    sub_2146DA388();
    *&v356[0] = v95;
    *(&v356[0] + 1) = v94;
    LOBYTE(v354[0]) = 29;
    sub_2146DA388();
    *&v356[0] = v97;
    *(&v356[0] + 1) = v96;
    LOBYTE(v354[0]) = 30;
    sub_2146DA388();
    *&v356[0] = v99;
    BYTE8(v356[0]) = v98;
    LOBYTE(v354[0]) = 31;
    sub_2146DA388();
    *&v356[0] = v101;
    BYTE8(v356[0]) = v100;
    LOBYTE(v354[0]) = 32;
    sub_2146DA388();
    *&v356[0] = v103;
    *(&v356[0] + 1) = v102;
    LOBYTE(v354[0]) = 33;
    sub_2146DA388();
    *&v356[0] = v105;
    *(&v356[0] + 1) = v104;
    LOBYTE(v354[0]) = 34;
    sub_213FDCA18(v105, v104);
    sub_2146DA388();
    sub_213FDC6BC(*&v356[0], *(&v356[0] + 1));
    *&v356[0] = v107;
    *(&v356[0] + 1) = v106;
    LOBYTE(v354[0]) = 35;
    sub_213FDCA18(v107, v106);
    sub_2146DA388();
    sub_213FDC6BC(*&v356[0], *(&v356[0] + 1));
    *&v356[0] = v109;
    BYTE8(v356[0]) = v108;
    LOBYTE(v354[0]) = 36;
    sub_2146DA388();
    *&v356[0] = v111;
    *(&v356[0] + 1) = v110;
    LOBYTE(v354[0]) = 37;
    sub_213FDCA18(v111, v110);
    sub_2146DA388();
    sub_213FDC6BC(*&v356[0], *(&v356[0] + 1));
    *&v356[0] = v113;
    *(&v356[0] + 1) = v112;
    LOBYTE(v354[0]) = 38;
    sub_2146DA388();
    *&v356[0] = v115;
    *(&v356[0] + 1) = v114;
    LOBYTE(v354[0]) = 39;
    sub_2146DA388();
    *&v356[0] = v117;
    *(&v356[0] + 1) = v116;
    LOBYTE(v354[0]) = 40;
    sub_2146DA388();
    *&v356[0] = v119;
    BYTE8(v356[0]) = v118;
    LOBYTE(v354[0]) = 41;
    sub_2146DA388();
    *&v356[0] = v121;
    BYTE8(v356[0]) = v120;
    LOBYTE(v354[0]) = 42;
    sub_2146DA388();
    *&v356[0] = v123;
    BYTE8(v356[0]) = v122;
    LOBYTE(v354[0]) = 43;
    sub_2146DA388();
    *&v356[0] = v125;
    BYTE8(v356[0]) = v124;
    LOBYTE(v354[0]) = 44;
    sub_2146DA388();
    *&v356[0] = v127;
    *(&v356[0] + 1) = v126;
    LOBYTE(v354[0]) = 45;
    sub_213FDCA18(v127, v126);
    sub_2146DA388();
    sub_213FDC6BC(*&v356[0], *(&v356[0] + 1));
    *&v356[0] = v129;
    *(&v356[0] + 1) = v128;
    LOBYTE(v354[0]) = 46;
    sub_2146DA388();
    *&v356[0] = v131;
    BYTE8(v356[0]) = v130;
    LOBYTE(v354[0]) = 47;
    sub_2146DA388();
    *&v356[0] = v133;
    BYTE8(v356[0]) = v132;
    LOBYTE(v354[0]) = 48;
    sub_2146DA388();
    *&v356[0] = v135;
    *(&v356[0] + 1) = v134;
    LOBYTE(v354[0]) = 49;
    sub_2146DA388();
    *&v356[0] = v137;
    BYTE8(v356[0]) = v136;
    LOBYTE(v354[0]) = 50;
    sub_2146DA388();
    *&v356[0] = v139;
    *(&v356[0] + 1) = v138;
    LOBYTE(v354[0]) = 51;
    sub_2146DA388();
    *&v356[0] = v141;
    BYTE8(v356[0]) = v140;
    LOBYTE(v354[0]) = 52;
    sub_2146DA388();
    *&v356[0] = v143;
    BYTE8(v356[0]) = v142;
    LOBYTE(v354[0]) = 53;
    sub_2146DA388();
    *&v356[0] = v145;
    BYTE8(v356[0]) = v144;
    LOBYTE(v354[0]) = 54;
    sub_2146DA388();
    *&v356[0] = v146;
    LOBYTE(v354[0]) = 55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056A0, &qword_2146F3D08);
    v343 = sub_2142E1F7C();
    sub_2146DA388();
    *&v356[0] = v147;
    LOBYTE(v354[0]) = 56;
    sub_2146DA388();
    *&v356[0] = v149;
    BYTE8(v356[0]) = v148;
    LOBYTE(v354[0]) = 57;
    sub_2146DA388();
    *&v356[0] = v151;
    BYTE8(v356[0]) = v150;
    LOBYTE(v354[0]) = 58;
    sub_2146DA388();
    *&v356[0] = v153;
    BYTE8(v356[0]) = v152;
    LOBYTE(v354[0]) = 59;
    sub_2146DA388();
    LOBYTE(v356[0]) = v154;
    LOBYTE(v354[0]) = 60;
    sub_2146DA388();
    LOBYTE(v356[0]) = v155;
    LOBYTE(v354[0]) = 61;
    sub_2146DA388();
    LOBYTE(v356[0]) = v156;
    LOBYTE(v354[0]) = 62;
    sub_2146DA388();
    LOBYTE(v356[0]) = v157;
    LOBYTE(v354[0]) = 63;
    sub_2146DA388();
    *&v356[0] = v159;
    *(&v356[0] + 1) = v158;
    LOBYTE(v354[0]) = 64;
    sub_2146DA388();
    *&v356[0] = v161;
    *(&v356[0] + 1) = v160;
    LOBYTE(v354[0]) = 65;
    sub_2146DA388();
    *&v356[0] = v163;
    *(&v356[0] + 1) = v162;
    LOBYTE(v354[0]) = 66;
    sub_213FDCA18(v163, v162);
    sub_2146DA388();
    sub_213FDC6BC(*&v356[0], *(&v356[0] + 1));
    *&v356[0] = v165;
    *(&v356[0] + 1) = v164;
    LOBYTE(v354[0]) = 67;
    sub_2146DA388();
    *&v356[0] = v167;
    *(&v356[0] + 1) = v166;
    LOBYTE(v354[0]) = 68;
    sub_2146DA388();
    *&v356[0] = v169;
    *(&v356[0] + 1) = v168;
    LOBYTE(v354[0]) = 69;
    sub_2146DA388();
    *&v356[0] = v171;
    *(&v356[0] + 1) = v170;
    LOBYTE(v354[0]) = 70;
    sub_2146DA388();
    *&v356[0] = v173;
    *(&v356[0] + 1) = v172;
    LOBYTE(v354[0]) = 71;
    sub_2146DA388();
    *&v356[0] = v175;
    BYTE8(v356[0]) = v174;
    LOBYTE(v354[0]) = 72;
    sub_2146DA388();
    *&v356[0] = v177;
    *(&v356[0] + 1) = v176;
    LOBYTE(v354[0]) = 73;
    sub_2146DA388();
    *&v356[0] = v179;
    BYTE8(v356[0]) = v178;
    LOBYTE(v354[0]) = 74;
    sub_2146DA388();
    *&v356[0] = v181;
    *(&v356[0] + 1) = v180;
    LOBYTE(v354[0]) = 75;
    sub_2146DA388();
    *&v356[0] = v183;
    BYTE8(v356[0]) = v182;
    LOBYTE(v354[0]) = 76;
    sub_2146DA388();
    LOBYTE(v356[0]) = v184;
    LOBYTE(v354[0]) = 77;
    sub_2146DA388();
    *&v356[0] = v186;
    *(&v356[0] + 1) = v185;
    LOBYTE(v354[0]) = 78;
    sub_2146DA388();
    *&v356[0] = v188;
    BYTE8(v356[0]) = v187;
    LOBYTE(v354[0]) = 79;
    sub_2146DA388();
    *&v356[0] = v190;
    BYTE8(v356[0]) = v189;
    LOBYTE(v354[0]) = 80;
    sub_2146DA388();
    *&v356[0] = v192;
    *(&v356[0] + 1) = v191;
    LOBYTE(v354[0]) = 81;
    sub_2146DA388();
    v6 = 0;
    v356[2] = v359;
    v356[3] = v360;
    v356[4] = v361;
    v356[5] = v362;
    v356[0] = v357;
    v356[1] = v358;
    v355 = 82;
    sub_213FB2E54(&v357, v354, &qword_27C9056A8, &qword_2146F3D10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056A8, &qword_2146F3D10);
    sub_2142E2054();
    sub_2146DA388();
    v68 = v356;
  }

  v69 = v68[3];
  v354[2] = v68[2];
  v354[3] = v69;
  v70 = v68[5];
  v354[4] = v68[4];
  v354[5] = v70;
  v71 = v68[1];
  v354[0] = *v68;
  v354[1] = v71;
  sub_213FB2DF4(v354, &qword_27C9056A8, &qword_2146F3D10);
  v352 = v194;
  v353 = v193;
  v351 = 83;
  sub_213FDCA18(v194, v193);
  sub_2146DA388();
  sub_213FDC6BC(v352, v353);
  if (!v6)
  {
    v352 = v196;
    v353 = v195;
    v351 = 84;
    sub_2146DA388();
    v352 = v198;
    v353 = v197;
    v351 = 85;
    sub_213FDCA18(v198, v197);
    sub_2146DA388();
    sub_213FDC6BC(v352, v353);
    v352 = v200;
    LOBYTE(v353) = v199;
    v351 = 86;
    sub_2146DA388();
    v352 = v202;
    v353 = v201;
    v351 = 87;
    sub_2146DA388();
    LOBYTE(v352) = v203;
    v351 = 88;
    sub_2146DA388();
    LOBYTE(v352) = v204;
    v351 = 89;
    sub_2146DA388();
    LOBYTE(v352) = v205;
    v351 = 90;
    sub_2146DA388();
    v352 = v207;
    LOBYTE(v353) = v206;
    v351 = 91;
    sub_2146DA388();
    v352 = v209;
    v353 = v208;
    v351 = 92;
    sub_2146DA388();
    v352 = v211;
    v353 = v210;
    v351 = 93;
    sub_213FDCA18(v211, v210);
    sub_2146DA388();
    sub_213FDC6BC(v352, v353);
    v352 = v213;
    v353 = v212;
    v351 = 94;
    sub_213FDCA18(v213, v212);
    sub_2146DA388();
    sub_213FDC6BC(v352, v353);
    v352 = v215;
    LOBYTE(v353) = v214;
    v351 = 95;
    sub_2146DA388();
    LOBYTE(v352) = v216;
    v351 = 96;
    sub_2146DA388();
    LOBYTE(v352) = v217;
    v351 = 97;
    sub_2146DA388();
    v352 = v219;
    LOBYTE(v353) = v218;
    v351 = 98;
    sub_2146DA388();
    v352 = v221;
    LOBYTE(v353) = v220;
    v351 = 99;
    sub_2146DA388();
    LOBYTE(v352) = v222;
    v351 = 100;
    sub_2146DA388();
    v352 = v224;
    LOBYTE(v353) = v223;
    v351 = 101;
    sub_2146DA388();
    v352 = v226;
    LOBYTE(v353) = v225;
    v351 = 102;
    sub_2146DA388();
    v352 = v228;
    v353 = v227;
    v351 = 103;
    sub_2146DA388();
    v352 = v230;
    LOBYTE(v353) = v229;
    v351 = 104;
    sub_2146DA388();
    v352 = v232;
    LOBYTE(v353) = v231;
    v351 = 105;
    sub_2146DA388();
    v352 = v234;
    v353 = v233;
    v351 = 106;
    sub_213FDCA18(v234, v233);
    sub_2146DA388();
    sub_213FDC6BC(v352, v353);
    v352 = v236;
    v353 = v235;
    v351 = 107;
    sub_213FDCA18(v236, v235);
    sub_2146DA388();
    sub_213FDC6BC(v352, v353);
    v352 = v238;
    LOBYTE(v353) = v237;
    v351 = 108;
    sub_2146DA388();
    v352 = v240;
    v353 = v239;
    v351 = 109;
    sub_213FDCA18(v240, v239);
    sub_2146DA388();
    sub_213FDC6BC(v352, v353);
    v352 = v242;
    v353 = v241;
    v351 = 110;
    sub_213FDCA18(v242, v241);
    sub_2146DA388();
    sub_213FDC6BC(v352, v353);
    v352 = v244;
    LOBYTE(v353) = v243;
    v351 = 111;
    sub_2146DA388();
    v352 = v246;
    LOBYTE(v353) = v245;
    v351 = 112;
    sub_2146DA388();
    v352 = v247;
    v351 = 113;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B0, &qword_2146F3D18);
    sub_2142E212C();
    sub_2146DA388();
    v352 = v249;
    v353 = v248;
    v351 = 114;
    sub_2146DA388();
    v352 = v251;
    v353 = v250;
    v351 = 115;
    sub_2146DA388();
    v352 = v253;
    LOBYTE(v353) = v252;
    v351 = 116;
    sub_2146DA388();
    LOBYTE(v352) = v254;
    v351 = 117;
    sub_2146DA388();
    LOBYTE(v352) = v255;
    v351 = 118;
    sub_2146DA388();
    v352 = v257;
    LOBYTE(v353) = v256;
    v351 = 119;
    sub_2146DA388();
    v352 = v259;
    v353 = v258;
    v351 = 120;
    sub_213FDCA18(v259, v258);
    sub_2146DA388();
    sub_213FDC6BC(v352, v353);
    v352 = v261;
    LOBYTE(v353) = v260;
    v351 = 121;
    sub_2146DA388();
    LOBYTE(v352) = v262;
    v351 = 122;
    sub_2146DA388();
    v352 = v264;
    v353 = v263;
    v351 = 123;
    sub_2146DA388();
    v352 = v266;
    LOBYTE(v353) = v265;
    v351 = 124;
    sub_2146DA388();
    v352 = v268;
    LOBYTE(v353) = v267;
    v351 = 125;
    sub_2146DA388();
    v352 = v270;
    v353 = v269;
    v351 = 126;
    sub_213FDCA18(v270, v269);
    sub_2146DA388();
    sub_213FDC6BC(v352, v353);
    v352 = v272;
    v353 = v271;
    v351 = 127;
    sub_213FDCA18(v272, v271);
    sub_2146DA388();
    sub_213FDC6BC(v352, v353);
    v352 = v274;
    LOBYTE(v353) = v273;
    v351 = 0x80;
    sub_2146DA388();
    v352 = v276;
    v353 = v275;
    v351 = -127;
    sub_213FDCA18(v276, v275);
    sub_2146DA388();
    sub_213FDC6BC(v352, v353);
    v352 = v278;
    v353 = v277;
    v351 = -126;
    sub_213FDCA18(v278, v277);
    sub_2146DA388();
    sub_213FDC6BC(v352, v353);
    v352 = v280;
    v353 = v279;
    v351 = -125;
    sub_213FDCA18(v280, v279);
    sub_2146DA388();
    sub_213FDC6BC(v352, v353);
    v352 = v282;
    LOBYTE(v353) = v281;
    v351 = -124;
    sub_2146DA388();
    v352 = v284;
    v353 = v283;
    v351 = -123;
    sub_213FDCA18(v284, v283);
    sub_2146DA388();
    sub_213FDC6BC(v352, v353);
    v352 = v286;
    LOBYTE(v353) = v285;
    v351 = -122;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
    sub_2142E2204();
    sub_2146DA388();
    v352 = v288;
    v353 = v287;
    v351 = -121;
    sub_213FDCA18(v288, v287);
    sub_2146DA388();
    sub_213FDC6BC(v352, v353);
    v352 = v290;
    v353 = v289;
    v351 = -120;
    sub_2146DA388();
    v352 = v292;
    LOBYTE(v353) = v291;
    v351 = -119;
    sub_2146DA388();
    v352 = v294;
    LOBYTE(v353) = v293;
    v351 = -118;
    sub_2146DA388();
    v352 = v296;
    LOBYTE(v353) = v295;
    v351 = -117;
    sub_2146DA388();
    v352 = v298;
    LOBYTE(v353) = v297;
    v351 = -116;
    sub_2146DA388();
    v352 = v299;
    v351 = -115;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056C0, &qword_2146F3D28);
    sub_2142E2280();
    sub_2146DA388();
    v352 = v300;
    v351 = -114;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056C8, &qword_2146F3D30);
    sub_2142E2358();
    sub_2146DA388();
    v352 = v302;
    v353 = v301;
    v351 = -113;
    sub_213FDCA18(v302, v301);
    sub_2146DA388();
    sub_213FDC6BC(v352, v353);
    v352 = v304;
    LOBYTE(v353) = v303;
    v351 = -112;
    sub_2146DA388();
    v352 = v305;
    v351 = -111;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056D0, &qword_2146F3D38);
    sub_2142E2430();
    sub_2146DA388();
    v352 = v307;
    LOBYTE(v353) = v306;
    v351 = -110;
    sub_2146DA388();
    v352 = v309;
    LOBYTE(v353) = v308;
    v351 = -109;
    sub_2146DA388();
    LOBYTE(v352) = v310;
    v351 = -108;
    sub_2146DA388();
    LOBYTE(v352) = v311;
    v351 = -107;
    sub_2146DA388();
    v352 = v313;
    v353 = v312;
    v351 = -106;
    sub_2146DA388();
    LOBYTE(v352) = v314;
    v351 = -105;
    sub_2146DA388();
    v352 = v316;
    LOBYTE(v353) = v315;
    v351 = -104;
    sub_2146DA388();
    v352 = v318;
    LOBYTE(v353) = v317;
    v351 = -103;
    sub_2146DA388();
    LOBYTE(v352) = v319;
    v351 = -102;
    sub_2146DA388();
    LOBYTE(v352) = v320;
    v351 = -101;
    sub_2146DA388();
  }

  return (*(v350 + 8))(v5, v363);
}

__n128 sub_2140BDF00@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unint64_t a12)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = a12;
  return result;
}

unint64_t sub_2140BDF24()
{
  v1 = *v0;
  v2 = 0x64496563617274;
  v3 = 0x69486B6E756C7073;
  if (v1 != 4)
  {
    v3 = 0x6548707474487361;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000014;
  v5 = 0xD000000000000018;
  if (v1 != 1)
  {
    v5 = 0xD000000000000017;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2140BDFF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21435B18C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2140BE018(uint64_t a1)
{
  v2 = sub_2142E2508();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140BE054(uint64_t a1)
{
  v2 = sub_2142E2508();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140BE090@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056E0, &qword_2146F3D48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E2508();
  sub_2146DAA08();
  if (!v2)
  {
    v32 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v34 = 0;
    sub_2142E12FC();
    sub_2146DA1C8();
    v11 = *(&v33 + 1);
    v31 = v33;
    v34 = 1;
    sub_2146DA1C8();
    v30 = v11;
    v29 = *(&v33 + 1);
    v12 = v33;
    v34 = 2;
    sub_2146DA1C8();
    v27 = v33;
    v28 = v12;
    v14 = *(&v33 + 1);
    v34 = 3;
    sub_2146DA1C8();
    v26 = v14;
    v25 = *(&v33 + 1);
    v15 = v33;
    v34 = 4;
    sub_2146DA1C8();
    v23 = v33;
    v24 = v15;
    v16 = *(&v33 + 1);
    v34 = 5;
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v17 = v16;
    v18 = v32;
    v19 = v30;
    *v32 = v31;
    v18[1] = v19;
    v20 = v29;
    v18[2] = v28;
    v18[3] = v20;
    v21 = v26;
    v18[4] = v27;
    v18[5] = v21;
    v22 = v25;
    v18[6] = v24;
    v18[7] = v22;
    v18[8] = v23;
    v18[9] = v17;
    *(v18 + 5) = v33;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2140BE47C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056E8, &qword_2146F3D50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v28 = v1[3];
  v29 = v10;
  v11 = v1[4];
  v26 = v1[5];
  v27 = v11;
  v12 = v1[7];
  v24 = v1[6];
  v25 = v12;
  v13 = v1[9];
  v22 = v1[8];
  v23 = v13;
  v14 = v1[11];
  v20 = v1[10];
  v21 = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E2508();

  sub_2146DAA28();
  v31 = v9;
  v32 = v8;
  v33 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v16 = v30;
  sub_2146DA388();
  if (v16)
  {
  }

  else
  {
    v17 = v27;

    v31 = v29;
    v32 = v28;
    v33 = 1;
    sub_2146DA388();
    v31 = v17;
    v32 = v26;
    v33 = 2;
    sub_2146DA388();
    v31 = v24;
    v32 = v25;
    v33 = 3;
    sub_2146DA388();
    v31 = v22;
    v32 = v23;
    v33 = 4;
    sub_2146DA388();
    v31 = v20;
    v32 = v21;
    v33 = 5;
    sub_2146DA388();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2140BE784@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_2140BE7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E756F63 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2140BE82C(uint64_t a1)
{
  v2 = sub_2142E255C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140BE868(uint64_t a1)
{
  v2 = sub_2142E255C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140BE8A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056F0, &qword_2146F3D58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E255C();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    sub_2142E11FC();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v11 = v14;
    *a2 = v13;
    *(a2 + 8) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2140BEA30(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905700, &qword_2146F3D60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E255C();
  sub_2146DAA28();
  v12 = v8;
  v13 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  sub_2142E1C30();
  sub_2146DA388();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2140BEBCC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6 & 1;
  *(a8 + 41) = a7;
  return result;
}

uint64_t sub_2140BEBE8()
{
  v1 = 0x614E6E6967756C70;
  v2 = 0x74536E6967756C70;
  if (*v0 != 2)
  {
    v2 = 0x65446E6967756C70;
  }

  if (*v0)
  {
    v1 = 0x6F436E6967756C70;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2140BEC84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21435B3A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2140BECAC(uint64_t a1)
{
  v2 = sub_2142E25B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140BECE8(uint64_t a1)
{
  v2 = sub_2142E25B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140BED24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905708, &qword_2146F3D68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E25B0();
  sub_2146DAA08();
  if (!v2)
  {
    v22 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v26 = 0;
    sub_2142E12FC();
    sub_2146DA1C8();
    v11 = v24;
    v21 = v23;
    v26 = 1;
    sub_2146DA1C8();
    v12 = v11;
    v13 = v23;
    v14 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    v26 = 2;
    sub_2142E11FC();
    sub_2146DA1C8();
    v20 = v23;
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    v26 = 3;
    sub_2142E1378();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v16 = v23;
    v17 = v13;
    v18 = v22;
    *v22 = v21;
    v18[1] = v12;
    v18[2] = v17;
    v18[3] = v14;
    v18[4] = v20;
    *(v18 + 40) = v25;
    *(v18 + 41) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2140BF038(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905718, &qword_2146F3D70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v19 = v1[3];
  v20 = v10;
  v18 = v1[4];
  v24 = *(v1 + 40);
  v17 = *(v1 + 41);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E25B0();

  sub_2146DAA28();
  v22 = v8;
  v23 = v9;
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v12 = v21;
  sub_2146DA388();

  if (!v12)
  {
    v13 = v24;
    v14 = v18;
    v22 = v20;
    v23 = v19;
    v25 = 1;
    sub_2146DA388();
    v22 = v14;
    LOBYTE(v23) = v13;
    v25 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    sub_2142E1C30();
    sub_2146DA388();
    LOBYTE(v22) = v17;
    v25 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    sub_2142E1D30();
    sub_2146DA388();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2140BF2F4@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

unint64_t sub_2140BF328()
{
  v1 = 0x7069636974726170;
  v2 = 0x6E656B6F74;
  if (*v0 != 2)
  {
    v2 = 0x74616E6974736564;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2140BF3BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21435B51C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2140BF3E4(uint64_t a1)
{
  v2 = sub_2142E2604();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140BF420(uint64_t a1)
{
  v2 = sub_2142E2604();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140BF45C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905720, &qword_2146F3D78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E2604();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
    v27 = 0;
    sub_2142E18D0();
    sub_2146DA1C8();
    v11 = v25;
    v12 = BYTE8(v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    v27 = 1;
    sub_2142E11FC();
    sub_2146DA1C8();
    v22 = v12;
    v23 = v11;
    v13 = v25;
    v14 = BYTE8(v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    v27 = 2;
    sub_2142E1278();
    sub_2146DA1C8();
    v20 = v14;
    v21 = v13;
    v16 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v27 = 3;
    sub_2142E12FC();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v17 = v22;
    v26 = v22;
    v18 = v20;
    v24 = v20;
    *a2 = v23;
    *(a2 + 8) = v17;
    *(a2 + 16) = v21;
    *(a2 + 24) = v18;
    *(a2 + 32) = v16;
    *(a2 + 48) = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2140BF754(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905730, &qword_2146F3D80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  v28 = *(v1 + 24);
  v11 = *(v1 + 40);
  v23 = *(v1 + 32);
  v24 = v10;
  v12 = *(v1 + 56);
  v21 = *(v1 + 48);
  v22 = v11;
  v20 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E2604();
  sub_2146DAA28();
  v26 = v8;
  LOBYTE(v27) = v9;
  v29 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
  sub_2142E2204();
  v14 = v25;
  sub_2146DA388();
  if (!v14)
  {
    v16 = v22;
    v15 = v23;
    v18 = v20;
    v17 = v21;
    v26 = v24;
    LOBYTE(v27) = v28;
    v29 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    sub_2142E1C30();
    sub_2146DA388();
    v26 = v15;
    v27 = v16;
    v29 = 2;
    sub_213FDCA18(v15, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    sub_2142E1CAC();
    sub_2146DA388();
    sub_213FDC6BC(v26, v27);
    v26 = v17;
    v27 = v18;
    v29 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
  }

  return (*(v4 + 8))(v7, v3);
}

__n128 sub_2140BFA30@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, char a13)
{
  result = a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13 & 1;
  return result;
}

unint64_t sub_2140BFA78()
{
  v1 = *v0;
  v2 = 0x704979616C6572;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0x6F725079616C6572;
  }

  if (*v0 <= 4u)
  {
    v3 = 0x73655379616C6572;
  }

  v4 = 0x76704979616C6572;
  if (v1 != 1)
  {
    v4 = 0x726F5079616C6572;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2140BFB80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21435B694(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2140BFBA8(uint64_t a1)
{
  v2 = sub_2142E2658();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140BFBE4(uint64_t a1)
{
  v2 = sub_2142E2658();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140BFC20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905738, &qword_2146F3D88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E2658();
  sub_2146DAA08();
  if (!v2)
  {
    v37 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    v42 = 0;
    sub_2142E1278();
    sub_2146DA1C8();
    v11 = v39;
    v36 = v40;
    v42 = 1;
    sub_2146DA1C8();
    v33 = v39;
    v34 = v40;
    v35 = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    v42 = 2;
    v32 = sub_2142E11FC();
    sub_2146DA1C8();
    v30 = v39;
    v31 = v12;
    LODWORD(v12) = v40;
    v42 = 3;
    sub_2146DA1C8();
    v28 = v12;
    v14 = v40;
    v29 = v39;
    v42 = 4;
    sub_2146DA1C8();
    v27 = v14;
    v15 = v39;
    v26 = v40;
    v42 = 5;
    sub_2146DA1C8();
    v16 = v26;
    v17 = v39;
    v25 = v40;
    v42 = 6;
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v18 = v39;
    v19 = v40;
    v20 = v28;
    v41 = v28;
    v38 = v40;
    v21 = v15;
    v22 = v37;
    *v37 = v35;
    v22[1] = v36;
    v22[2] = v33;
    v22[3] = v34;
    v22[4] = v30;
    *(v22 + 40) = v20;
    v23 = v27;
    v22[6] = v29;
    v22[7] = v23;
    v22[8] = v21;
    v22[9] = v16;
    v24 = v25;
    v22[10] = v17;
    v22[11] = v24;
    v22[12] = v18;
    *(v22 + 104) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2140C00E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905748, &qword_2146F3D90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v10 = *(v1 + 16);
  v31 = *(v1 + 24);
  v32 = v10;
  v11 = *(v1 + 32);
  v36 = *(v1 + 40);
  v12 = *(v1 + 48);
  v29 = *(v1 + 56);
  v30 = v11;
  v13 = *(v1 + 64);
  v27 = *(v1 + 72);
  v28 = v12;
  v14 = *(v1 + 88);
  v24 = *(v1 + 80);
  v25 = v14;
  v26 = v13;
  v22 = *(v1 + 96);
  v23 = *(v1 + 104);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_213FDCA18(v9, v8);
  sub_2142E2658();
  v16 = v3;
  sub_2146DAA28();
  v34 = v9;
  v35 = v8;
  v37 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  sub_2142E1CAC();
  v17 = v33;
  sub_2146DA388();
  if (v17)
  {
    sub_213FDC6BC(v34, v35);
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v18 = v36;
    v19 = v30;
    sub_213FDC6BC(v34, v35);
    v34 = v32;
    v35 = v31;
    v37 = 1;
    sub_213FDCA18(v32, v31);
    sub_2146DA388();
    sub_213FDC6BC(v34, v35);
    v34 = v19;
    LOBYTE(v35) = v18;
    v37 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    v20 = sub_2142E1C30();
    sub_2146DA388();
    v33 = v20;
    v34 = v28;
    v35 = v29;
    v37 = 3;
    sub_213FDCA18(v28, v29);
    sub_2146DA388();
    sub_213FDC6BC(v34, v35);
    v34 = v26;
    v35 = v27;
    v37 = 4;
    sub_213FDCA18(v26, v27);
    sub_2146DA388();
    sub_213FDC6BC(v34, v35);
    v34 = v24;
    v35 = v25;
    v37 = 5;
    sub_213FDCA18(v24, v25);
    sub_2146DA388();
    sub_213FDC6BC(v34, v35);
    v34 = v22;
    LOBYTE(v35) = v23;
    v37 = 6;
    sub_2146DA388();
    return (*(v4 + 8))(0, v16);
  }
}

uint64_t sub_2140C04C0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  return result;
}

uint64_t sub_2140C04FC()
{
  v1 = *v0;
  v2 = 0x614E6E6967756C70;
  v3 = 0x7069636974726170;
  v4 = 0x73655379616C6572;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74536E6967756C70;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2140C05C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21435B900(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2140C05E8(uint64_t a1)
{
  v2 = sub_2142E26AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140C0624(uint64_t a1)
{
  v2 = sub_2142E26AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140C0660@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905750, &qword_2146F3D98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E26AC();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v27 = 0;
    sub_2142E12FC();
    sub_2146DA1C8();
    v11 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    v27 = 1;
    sub_2142E11FC();
    sub_2146DA1C8();
    v23 = v25;
    v22 = BYTE8(v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
    v27 = 2;
    sub_2142E18D0();
    sub_2146DA1C8();
    v19 = v25;
    v20 = v11;
    v18 = BYTE8(v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    v27 = 3;
    v21 = sub_2142E1278();
    sub_2146DA1C8();
    v17 = v25;
    v27 = 4;
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v13 = v22;
    v26 = v22;
    v14 = v18;
    v24 = v18;
    *a2 = v20;
    *(a2 + 8) = *(&v11 + 1);
    *(a2 + 16) = v23;
    *(a2 + 24) = v13;
    *(a2 + 32) = v19;
    *(a2 + 40) = v14;
    v15 = *(&v17 + 1);
    *(a2 + 48) = v17;
    *(a2 + 56) = v15;
    *(a2 + 64) = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2140C09C4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905760, &qword_2146F3DA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  v29 = *(v1 + 24);
  v24 = *(v1 + 32);
  v25 = v10;
  v23 = *(v1 + 40);
  v11 = *(v1 + 48);
  v21 = *(v1 + 56);
  v22 = v11;
  v12 = *(v1 + 72);
  v19 = *(v1 + 64);
  v20 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E26AC();

  sub_2146DAA28();
  v27 = v8;
  v28 = v9;
  v30 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v14 = v26;
  sub_2146DA388();
  if (v14)
  {

    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v15 = v23;
    v16 = v24;
    v17 = v22;

    v27 = v25;
    LOBYTE(v28) = v29;
    v30 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    sub_2142E1C30();
    sub_2146DA388();
    v27 = v16;
    LOBYTE(v28) = v15;
    v30 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
    sub_2142E2204();
    sub_2146DA388();
    v27 = v17;
    v28 = v21;
    v30 = 3;
    sub_213FDCA18(v17, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    sub_2142E1CAC();
    sub_2146DA388();
    sub_213FDC6BC(v27, v28);
    v27 = v19;
    v28 = v20;
    v30 = 4;
    sub_213FDCA18(v19, v20);
    sub_2146DA388();
    sub_213FDC6BC(v27, v28);
    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_2140C0D4C(uint64_t a1)
{
  v2 = sub_2142E2700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140C0D88(uint64_t a1)
{
  v2 = sub_2142E2700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140C0DC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for Metadata();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v18 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905768, &qword_2146F3DA8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E2700();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v17;
    sub_214328930(&qword_280B2E650, type metadata accessor for Metadata);
    v14 = v18;
    sub_2146DA1C8();
    (*(v8 + 8))(v11, v7);
    sub_214328704(v14, v13, type metadata accessor for Metadata);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2140C0FD0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905778, &qword_2146F3DB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E2700();
  sub_2146DAA28();
  type metadata accessor for Metadata();
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2140C1160(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905778, &qword_2146F3DB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E2700();
  sub_2146DAA28();
  type metadata accessor for Metadata();
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2140C12D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v51 = a2;
  v52 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v46 - v11);
  v13 = type metadata accessor for AccountsRepresentativeCloudShareInfo(0);
  sub_213FB2E54(a4, &a5[*(v13 + 24)], &qword_27C9041D8, &qword_2146ED5C0);
  sub_2140988B8(a5);
  sub_214098A64(&v55);
  v14 = v57;
  v15 = &a5[*(v13 + 20)];
  v16 = v56;
  *v15 = v55;
  *(v15 + 1) = v16;
  v15[32] = v14;
  v53 = a5;
  sub_213FB2E54(a5, v12, &qword_27C903F38, &unk_2146E9D40);
  v17 = *v12;
  v18 = v12[1];
  LOBYTE(v54[0]) = *(v12 + *(v9 + 32));
  *&v55 = 0xD00000000000002DLL;
  *(&v55 + 1) = 0x800000021478C800;
  *&v56 = 0xD00000000000001CLL;
  *(&v56 + 1) = 0x800000021478A360;
  v19 = v17(a1, v54, &v55);
  if (v5)
  {

    sub_213FB2DF4(a4, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(a1, &unk_27C9131A0, &unk_2146E9D10);

LABEL_6:
    v33 = v53;
    sub_21402EDB8(v12, v53, &qword_27C903F38, &unk_2146E9D40);
    return sub_21432887C(v33, type metadata accessor for AccountsRepresentativeCloudShareInfo);
  }

  v49 = a4;
  v50 = 0x800000021478A360;
  if ((v19 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD00000000000002DLL;
    v31[1] = 0x800000021478C800;
    v32 = v50;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = v32;
    swift_willThrow();
    sub_213FB2DF4(v49, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(a1, &unk_27C9131A0, &unk_2146E9D10);
    goto LABEL_6;
  }

  v20 = v50;

  v21 = *(v9 + 28);
  sub_213FB2DF4(v12 + v21, &qword_27C903F40, &unk_2146F1C50);
  v48 = a1;
  sub_213FB2E54(a1, v12 + v21, &unk_27C9131A0, &unk_2146E9D10);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  (*(*(v22 - 8) + 56))(v12 + v21, 0, 1, v22);
  sub_21402EDB8(v12, v53, &qword_27C903F38, &unk_2146E9D40);
  v24 = *v15;
  v23 = *(v15 + 1);
  v26 = *(v15 + 2);
  v25 = *(v15 + 3);
  v27 = v15[32];
  v28 = v52;
  v54[0] = v51;
  v54[1] = v52;
  v58 = v27;
  *&v55 = 0xD000000000000033;
  *(&v55 + 1) = 0x800000021478C830;
  *&v56 = 0xD00000000000001CLL;
  *(&v56 + 1) = v20;

  v46 = v25;
  sub_213FDC9D0(v26, v25);
  v47 = v24;
  v29 = v24(v54, &v58, &v55);
  v30 = v49;
  if ((v29 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD000000000000033;
    v39[1] = 0x800000021478C830;
    v40 = v50;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = v40;
    swift_willThrow();

    v41 = v48;
    sub_213FB2DF4(v30, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(v41, &unk_27C9131A0, &unk_2146E9D10);
    v42 = *(v15 + 1);
    v43 = *(v15 + 2);
    v44 = *(v15 + 3);

    sub_213FDC6D0(v43, v44);
    v45 = v46;
    *v15 = v47;
    *(v15 + 1) = v23;
    *(v15 + 2) = v26;
    *(v15 + 3) = v45;
    v15[32] = v27;
    v33 = v53;
    return sub_21432887C(v33, type metadata accessor for AccountsRepresentativeCloudShareInfo);
  }

  sub_213FDC6D0(v26, v46);

  sub_213FB2DF4(v30, &qword_27C9041D8, &qword_2146ED5C0);
  sub_213FB2DF4(v48, &unk_27C9131A0, &unk_2146E9D10);
  v35 = *(v15 + 1);
  v36 = *(v15 + 2);
  v37 = v28;
  v38 = *(v15 + 3);

  result = sub_213FDC6D0(v36, v38);
  *v15 = v47;
  *(v15 + 1) = v23;
  *(v15 + 2) = v51;
  *(v15 + 3) = v37;
  v15[32] = v27;
  return result;
}

uint64_t sub_2140C17E0()
{
  v1 = 0x6E6F436572616873;
  if (*v0 != 1)
  {
    v1 = 0x6B6F546572616873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C72556572616873;
  }
}

uint64_t sub_2140C184C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21435BAD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2140C1874(uint64_t a1)
{
  v2 = sub_2142E2754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140C18B0(uint64_t a1)
{
  v2 = sub_2142E2754();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140C18EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v3 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v59 = (&v51 - v4);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
  v5 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v61 = &v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v57 = *(v7 - 8);
  v8 = *(v57 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v51 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905780, &qword_2146F3DB8);
  v62 = *(v11 - 8);
  v12 = *(v62 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - v13;
  v15 = type metadata accessor for AccountsRepresentativeCloudShareInfo(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[3];
  v19 = a1[4];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_2142E2754();
  v21 = v63;
  sub_2146DAA08();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  v63 = v18;
  LOBYTE(v66) = 0;
  sub_2142E27A8();
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v65[0]) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v55 = v7;
  v23 = v66;
  LOBYTE(v66) = 2;
  sub_2142E285C();
  v24 = v61;
  sub_2146DA1C8();
  v60 = *(&v23 + 1);
  v54 = v23;
  v25 = v63;
  sub_213FB2E54(v24, &v63[*(v15 + 24)], &qword_27C9041D8, &qword_2146ED5C0);
  sub_2140988B8(v25);
  sub_214098A64(&v66);
  v26 = v68;
  v27 = &v25[*(v15 + 20)];
  v28 = v67;
  *v27 = v66;
  *(v27 + 1) = v28;
  v27[32] = v26;
  v29 = v59;
  sub_213FB2E54(v25, v59, &qword_27C903F38, &unk_2146E9D40);
  v30 = *v29;
  v31 = *(v29 + 8);
  LOBYTE(v65[0]) = *(v29 + *(v58 + 32));
  *&v66 = 0xD00000000000002DLL;
  *(&v66 + 1) = 0x800000021478C800;
  *&v67 = 0xD00000000000001CLL;
  *(&v67 + 1) = 0x800000021478A360;
  v32 = v30(v10, v65, &v66);
  v53 = v10;
  if (v32)
  {
    v52 = v14;

    v33 = v59;
    v34 = *(v58 + 28);
    sub_213FB2DF4(v59 + v34, &qword_27C903F40, &unk_2146F1C50);
    sub_213FB2E54(v53, v33 + v34, &unk_27C9131A0, &unk_2146E9D10);
    (*(v57 + 56))(v33 + v34, 0, 1, v55);
    sub_21402EDB8(v33, v63, &qword_27C903F38, &unk_2146E9D40);
    v36 = *v27;
    v35 = *(v27 + 1);
    v37 = *(v27 + 2);
    v38 = *(v27 + 3);
    v39 = v27[32];
    v40 = v60;
    v65[0] = v54;
    v65[1] = v60;
    LODWORD(v58) = v39;
    v69 = v39;
    *&v66 = 0xD000000000000033;
    *(&v66 + 1) = 0x800000021478C830;
    *&v67 = 0xD00000000000001CLL;
    *(&v67 + 1) = 0x800000021478A360;

    v57 = v38;
    sub_213FDC9D0(v37, v38);
    v59 = v36;
    if ((v36)(v65, &v69, &v66))
    {
      sub_213FDC6D0(v23, v57);

      sub_213FB2DF4(v61, &qword_27C9041D8, &qword_2146ED5C0);
      sub_213FB2DF4(v53, &unk_27C9131A0, &unk_2146E9D10);
      (*(v62 + 8))(v52, v11);
      v43 = *(v27 + 1);
      v44 = *(v27 + 2);
      v45 = *(v27 + 3);

      sub_213FDC6D0(v44, v45);
      *v27 = v59;
      *(v27 + 1) = v35;
      *(v27 + 2) = v54;
      *(v27 + 3) = v40;
      v27[32] = v58;
      sub_214328704(v63, v56, type metadata accessor for AccountsRepresentativeCloudShareInfo);
      return __swift_destroy_boxed_opaque_existential_1(v64);
    }

    sub_214031C4C();
    swift_allocError();
    *v46 = 0xD000000000000033;
    v46[1] = 0x800000021478C830;
    v46[2] = 0xD00000000000001CLL;
    v46[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v61, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(v53, &unk_27C9131A0, &unk_2146E9D10);
    (*(v62 + 8))(v52, v11);
    v47 = *(v27 + 1);
    v48 = *(v27 + 2);
    v49 = *(v27 + 3);

    sub_213FDC6D0(v48, v49);
    *v27 = v59;
    *(v27 + 1) = v35;
    v50 = v57;
    *(v27 + 2) = v23;
    *(v27 + 3) = v50;
    v27[32] = v58;
    v42 = v63;
  }

  else
  {

    sub_214031C4C();
    swift_allocError();
    *v41 = 0xD00000000000002DLL;
    v41[1] = 0x800000021478C800;
    v41[2] = 0xD00000000000001CLL;
    v41[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v61, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(v53, &unk_27C9131A0, &unk_2146E9D10);
    (*(v62 + 8))(v14, v11);
    v42 = v63;
    sub_21402EDB8(v59, v63, &qword_27C903F38, &unk_2146E9D40);
  }

  __swift_destroy_boxed_opaque_existential_1(v64);
  return sub_21432887C(v42, type metadata accessor for AccountsRepresentativeCloudShareInfo);
}

uint64_t sub_2140C2198(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9057A8, &unk_2146F3DC0);
  v25 = *(v11 - 8);
  v12 = *(v25 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E2754();
  sub_2146DAA28();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v26 + *(v16 + 28), v5, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_213FB2DF4(v5, &qword_27C903F40, &unk_2146F1C50);
  }

  else
  {
    sub_21408AC04(v5, v10, &unk_27C9131A0, &unk_2146E9D10);
    LOBYTE(v27) = 0;
    sub_2142E2910();
    v17 = v24[1];
    sub_2146DA388();
    sub_213FB2DF4(v10, &unk_27C9131A0, &unk_2146E9D10);
    if (v17)
    {
      return (*(v25 + 8))(v14, v11);
    }

    v18 = type metadata accessor for AccountsRepresentativeCloudShareInfo(0);
    v19 = v26 + *(v18 + 20);
    v20 = *(v19 + 24);
    if (v20 != 1)
    {
      v21 = v18;
      v27 = *(v19 + 16);
      v28 = v20;
      v29 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
      sub_214045AC0();
      sub_2146DA388();
      v22 = *(v21 + 24);
      LOBYTE(v27) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
      sub_2142E29C4();
      sub_2146DA388();
      return (*(v25 + 8))(v14, v11);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2140C25A0@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, uint64_t a13, uint64_t a14)
{
  v62 = a8;
  v16 = *a1;
  v17 = *a2;
  v18 = *a3;
  v19 = type metadata accessor for AccountsRepresentativeMessage(0);
  sub_213FB2E54(a10, a9 + v19[10], &qword_27C905280, &qword_2146F1C60);
  sub_214099D08(&v58);
  v20 = v59;
  v21 = v60;
  v22 = v61;
  sub_214099D3C(v56);
  v23 = v57;
  *a9 = v16;
  *(a9 + 1) = v17;
  *(a9 + 2) = v18;
  *(a9 + 8) = v58;
  *(a9 + 24) = v20;
  *(a9 + 32) = v21;
  *(a9 + 40) = v22;
  v24 = v56[1];
  *(a9 + 48) = v56[0];
  *(a9 + 64) = v24;
  *(a9 + 80) = v23;
  *(a9 + 81) = v62;
  *(a9 + v19[11]) = a11;
  *(a9 + v19[12]) = a12;
  v25 = (a9 + v19[13]);
  *v25 = a13;
  v25[1] = a14;
  v27 = *(a9 + 8);
  v26 = *(a9 + 16);
  v29 = *(a9 + 24);
  v28 = *(a9 + 32);
  LODWORD(v25) = *(a9 + 40);
  *&v56[0] = a4;
  *(&v56[0] + 1) = a5;
  v62 = v25;
  v63 = v25;
  *&v58 = 0xD000000000000029;
  *(&v58 + 1) = 0x800000021478C870;
  v59 = 0xD00000000000001CLL;
  v60 = 0x800000021478A360;

  sub_213FDC9D0(v29, v28);
  v30 = v27(v56, &v63, &v58);
  if (v55)
  {

LABEL_6:

    sub_213FB2DF4(a10, &qword_27C905280, &qword_2146F1C60);
    v41 = *(a9 + 16);
    v42 = *(a9 + 24);
    v43 = *(a9 + 32);

    sub_213FDC6D0(v42, v43);
    *(a9 + 8) = v27;
    *(a9 + 16) = v26;
    *(a9 + 24) = v29;
    *(a9 + 32) = v28;
    *(a9 + 40) = v62;
    return sub_21432887C(a9, type metadata accessor for AccountsRepresentativeMessage);
  }

  if ((v30 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v40 = 0xD000000000000029;
    v40[1] = 0x800000021478C870;
    v40[2] = 0xD00000000000001CLL;
    v40[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_213FDC6D0(v29, v28);

  v31 = *(a9 + 16);
  v32 = *(a9 + 24);
  v33 = *(a9 + 32);

  sub_213FDC6D0(v32, v33);
  *(a9 + 8) = v27;
  *(a9 + 16) = v26;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = v62;
  v35 = *(a9 + 48);
  v34 = *(a9 + 56);
  v36 = *(a9 + 64);
  v37 = *(a9 + 72);
  v38 = *(a9 + 80);
  *&v56[0] = a6;
  *(&v56[0] + 1) = a7;
  v63 = v38;
  *&v58 = 0xD00000000000002BLL;
  *(&v58 + 1) = 0x800000021478C8A0;
  v59 = 0xD00000000000001CLL;
  v60 = 0x800000021478A360;

  sub_213FDC9D0(v36, v37);
  v39 = v35(v56, &v63, &v58);
  if ((v39 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v48 = 0xD00000000000002BLL;
    v48[1] = 0x800000021478C8A0;
    v48[2] = 0xD00000000000001CLL;
    v48[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a10, &qword_27C905280, &qword_2146F1C60);
    v49 = *(a9 + 56);
    v50 = *(a9 + 64);
    v51 = *(a9 + 72);

    sub_213FDC6D0(v50, v51);
    *(a9 + 48) = v35;
    *(a9 + 56) = v34;
    *(a9 + 64) = v36;
    *(a9 + 72) = v37;
    *(a9 + 80) = v38;
    return sub_21432887C(a9, type metadata accessor for AccountsRepresentativeMessage);
  }

  sub_213FDC6D0(v36, v37);

  sub_213FB2DF4(a10, &qword_27C905280, &qword_2146F1C60);
  v45 = *(a9 + 56);
  v46 = *(a9 + 64);
  v47 = *(a9 + 72);

  result = sub_213FDC6D0(v46, v47);
  *(a9 + 48) = v35;
  *(a9 + 56) = v34;
  *(a9 + 64) = a6;
  *(a9 + 72) = a7;
  *(a9 + 80) = v38;
  return result;
}

uint64_t sub_2140C29F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21435BBFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2140C2A1C(uint64_t a1)
{
  v2 = sub_2142E2A78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140C2A58(uint64_t a1)
{
  v2 = sub_2142E2A78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140C2A94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905280, &qword_2146F1C60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v66[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9057C8, &qword_2146F3DD0);
  v79 = *(v7 - 8);
  v8 = *(v79 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v66[-v9];
  v11 = type metadata accessor for AccountsRepresentativeMessage(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v66[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = a1[3];
  v16 = a1[4];
  v81 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2142E2A78();
  v17 = v80;
  sub_2146DAA08();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v81);
  }

  v80 = v6;
  v77 = v14;
  v18 = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9057D8, &qword_2146F3DD8);
  LOBYTE(v82[0]) = 0;
  sub_2142E2ACC();
  sub_2146DA1C8();
  v19 = v10;
  v20 = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9057E8, &qword_2146F3DE0);
  LOBYTE(v82[0]) = 1;
  sub_2142E2B50();
  sub_2146DA1C8();
  v88 = v20;
  v22 = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9057F8, &qword_2146F3DE8);
  LOBYTE(v82[0]) = 2;
  sub_2142E2BD4();
  sub_2146DA1C8();
  v75 = v84;
  v76 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v82[0]) = 3;
  v24 = sub_2142E12FC();
  sub_2146DA1C8();
  v74 = v84;
  LOBYTE(v82[0]) = 4;
  sub_2146DA1C8();
  v72 = v24;
  v71 = v23;
  v73 = *(&v84 + 1);
  v70 = v84;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v82[0]) = 5;
  v26 = sub_2142E1378();
  sub_2146DA1C8();
  v68 = v26;
  v69 = v25;
  LODWORD(v25) = v84;
  LOBYTE(v84) = 6;
  sub_2142E2C58();
  sub_2146DA1C8();
  v67 = v25;
  LOBYTE(v82[0]) = 7;
  sub_2146DA1C8();
  LOBYTE(v26) = v84;
  LOBYTE(v82[0]) = 8;
  sub_2146DA1C8();
  v27 = v26;
  LOBYTE(v26) = v84;
  LOBYTE(v82[0]) = 9;
  v69 = v7;
  v72 = v19;
  sub_2146DA1C8();
  v28 = v84;
  v29 = v77;
  sub_213FB2E54(v80, v77 + v11[10], &qword_27C905280, &qword_2146F1C60);
  sub_214099D08(&v84);
  v30 = v85;
  v71 = v86;
  LODWORD(v68) = v87;
  sub_214099D3C(v82);
  v31 = v83;
  *v29 = v88;
  v32 = v75;
  *(v29 + 1) = v76;
  *(v29 + 2) = v32;
  *(v29 + 1) = v84;
  v33 = v71;
  v29[3] = v30;
  v29[4] = v33;
  *(v29 + 40) = v68;
  v34 = v82[1];
  *(v29 + 3) = v82[0];
  *(v29 + 4) = v34;
  *(v29 + 80) = v31;
  *(v29 + 81) = v67;
  *(v29 + v11[11]) = v27;
  *(v29 + v11[12]) = v26;
  *(v29 + v11[13]) = v28;
  v36 = v29[1];
  v35 = v29[2];
  v38 = v29[3];
  v37 = v29[4];
  LODWORD(v33) = *(v29 + 40);
  v82[0] = v74;
  v88 = v33;
  v89 = v33;
  *&v84 = 0xD000000000000029;
  *(&v84 + 1) = 0x800000021478C870;
  v85 = 0xD00000000000001CLL;
  v86 = 0x800000021478A360;

  sub_213FDC9D0(v38, v37);
  v39 = v36(v82, &v89, &v84);
  if (v39)
  {
    sub_213FDC6D0(v38, v37);

    v40 = v77;
    v41 = v77[2];
    v42 = v77[3];
    v43 = v77[4];

    sub_213FDC6D0(v42, v43);
    v40[1] = v36;
    v40[2] = v35;
    v44 = *(&v74 + 1);
    v40[3] = v74;
    v40[4] = v44;
    *(v40 + 40) = v88;
    v46 = v40[6];
    v45 = v40[7];
    v47 = v40[8];
    v48 = v40[9];
    v49 = *(v40 + 80);
    *&v82[0] = v70;
    *(&v82[0] + 1) = v73;
    v88 = v49;
    v89 = v49;
    *&v84 = 0xD00000000000002BLL;
    *(&v84 + 1) = 0x800000021478C8A0;
    v85 = 0xD00000000000001CLL;
    v86 = 0x800000021478A360;

    sub_213FDC9D0(v47, v48);
    v50 = v46(v82, &v89, &v84);
    if (v50)
    {
      sub_213FDC6D0(v47, v48);

      sub_213FB2DF4(v80, &qword_27C905280, &qword_2146F1C60);
      (*(v18 + 8))(v72, v69);
      v56 = v77;
      v57 = v77[7];
      v58 = v77[8];
      v59 = v77[9];

      sub_213FDC6D0(v58, v59);
      v56[6] = v46;
      v56[7] = v45;
      v60 = v73;
      v56[8] = v70;
      v56[9] = v60;
      *(v56 + 80) = v88;
      sub_214328704(v56, v78, type metadata accessor for AccountsRepresentativeMessage);
      return __swift_destroy_boxed_opaque_existential_1(v81);
    }

    sub_214031C4C();
    swift_allocError();
    *v61 = 0xD00000000000002BLL;
    v61[1] = 0x800000021478C8A0;
    v61[2] = 0xD00000000000001CLL;
    v61[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v80, &qword_27C905280, &qword_2146F1C60);
    (*(v18 + 8))(v72, v69);
    v62 = v77;
    v63 = v77[7];
    v64 = v77[8];
    v65 = v77[9];

    sub_213FDC6D0(v64, v65);
    v62[6] = v46;
    v62[7] = v45;
    v62[8] = v47;
    v62[9] = v48;
    *(v62 + 80) = v88;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v51 = 0xD000000000000029;
    v51[1] = 0x800000021478C870;
    v51[2] = 0xD00000000000001CLL;
    v51[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v80, &qword_27C905280, &qword_2146F1C60);
    (*(v18 + 8))(v72, v69);
    v52 = v77;
    v53 = v77[2];
    v54 = v77[3];
    v55 = v77[4];

    sub_213FDC6D0(v54, v55);
    v52[1] = v36;
    v52[2] = v35;
    v52[3] = v38;
    v52[4] = v37;
    *(v52 + 40) = v88;
  }

  __swift_destroy_boxed_opaque_existential_1(v81);
  return sub_21432887C(v77, type metadata accessor for AccountsRepresentativeMessage);
}

uint64_t sub_2140C34E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905810, &qword_2146F3DF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E2A78();
  sub_2146DAA28();
  LOBYTE(v22) = *v3;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9057D8, &qword_2146F3DD8);
  sub_2142E2D0C();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  LOBYTE(v22) = *(v3 + 1);
  v23 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9057E8, &qword_2146F3DE0);
  sub_2142E2D90();
  sub_2146DA388();
  LOBYTE(v22) = *(v3 + 2);
  v23 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9057F8, &qword_2146F3DE8);
  sub_2142E2E14();
  sub_2146DA388();
  v11 = *(v3 + 32);
  if (v11 != 1)
  {
    *&v22 = *(v3 + 24);
    *(&v22 + 1) = v11;
    v23 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v12 = *(v3 + 72);
    if (v12 != 1)
    {
      *&v22 = *(v3 + 64);
      *(&v22 + 1) = v12;
      v23 = 4;
      sub_2146DA388();
      LOBYTE(v22) = *(v3 + 81);
      v23 = 5;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
      v14 = sub_2142E1D30();
      v21 = v13;
      sub_2146DA388();
      v18 = v14;
      v15 = type metadata accessor for AccountsRepresentativeMessage(0);
      v16 = *(v15 + 40);
      v19 = v15;
      v20 = v16;
      LOBYTE(v22) = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905280, &qword_2146F1C60);
      sub_2142E2E98();
      sub_2146DA388();
      LOBYTE(v22) = *(v3 + v19[11]);
      v23 = 7;
      sub_2146DA388();
      LOBYTE(v22) = *(v3 + v19[12]);
      v23 = 8;
      sub_2146DA388();
      v22 = *(v3 + v19[13]);
      v23 = 9;
      sub_2146DA388();
      return (*(v6 + 8))(v9, v5);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2140C399C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_2140C39B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1702129518 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2140C3A3C(uint64_t a1)
{
  v2 = sub_2142E2F4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140C3A78(uint64_t a1)
{
  v2 = sub_2142E2F4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140C3B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  sub_214471D3C(&v22);
  v9 = v22;
  v10 = v23;
  v11 = v24;
  v12 = v25;
  v13 = v26;
  v21[0] = a1;
  v21[1] = a2;
  v27 = v26;
  v22 = 0xD00000000000002ELL;
  v23 = 0x800000021478C8D0;
  v24 = 0xD00000000000001CLL;
  v25 = 0x800000021478A360;
  v14 = v9;

  sub_213FDC9D0(v11, v12);
  v15 = v14(v21, &v27, &v22);
  if (v6)
  {
  }

  else
  {
    if (v15)
    {
      sub_213FDC6D0(v11, v12);

      result = sub_213FDC6D0(v11, v12);
      *a5 = v14;
      *(a5 + 8) = v10;
      *(a5 + 16) = a1;
      *(a5 + 24) = a2;
      *(a5 + 32) = v13;
      *(a5 + 40) = a3;
      *(a5 + 48) = a4;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v17 = 0xD00000000000002ELL;
    v17[1] = 0x800000021478C8D0;
    v17[2] = 0xD00000000000001CLL;
    v17[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6D0(v11, v12);

  sub_213FDC6D0(v11, v12);
}

unint64_t sub_2140C3D6C()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_2140C3DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000013 && 0x8000000214793C80 == a2;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000214793CA0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_2140C3E88(uint64_t a1)
{
  v2 = sub_2142E2FA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140C3EC4(uint64_t a1)
{
  v2 = sub_2142E2FA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140C3F00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905848, &qword_2146F3E08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E2FA0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v35 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v36[0]) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v11 = v38;
  v34 = v37;
  LOBYTE(v36[0]) = 1;
  sub_2146DA1C8();
  v28 = v37;
  v31 = v38;
  sub_214471D3C(&v37);
  v13 = v38;
  v32 = v37;
  v14 = v39;
  v15 = v40;
  v36[0] = v34;
  v36[1] = v11;
  v42 = v41;
  v43 = v41;
  v37 = 0xD00000000000002ELL;
  v38 = 0x800000021478C8D0;
  v29 = 0x800000021478C8D0;
  v39 = 0xD00000000000001CLL;
  v40 = 0x800000021478A360;

  v30 = v14;
  v33 = v15;
  sub_213FDC9D0(v14, v15);
  v16 = v13;
  v17 = v32(v36, &v43, &v37);
  v18 = v29;
  v27 = v11;
  if (v17)
  {
    v19 = v30;
    sub_213FDC6D0(v30, v33);

    (*(v6 + 8))(v9, v5);

    sub_213FDC6D0(v19, v33);
    v20 = v34;
    v21 = v35;
    v22 = v31;
    *v35 = v32;
    v21[1] = v16;
    v23 = v27;
    v21[2] = v20;
    v21[3] = v23;
    *(v21 + 32) = v42;
    v21[5] = v28;
    v21[6] = v22;

    sub_213FDC9D0(v20, v23);

    __swift_destroy_boxed_opaque_existential_1(a1);

    sub_213FDC6D0(v20, v23);
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD00000000000002ELL;
    v24[1] = v18;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v6 + 8))(v9, v5);

    v25 = v30;
    v26 = v33;
    sub_213FDC6D0(v30, v33);
    __swift_destroy_boxed_opaque_existential_1(a1);

    sub_213FDC6D0(v25, v26);
  }
}

uint64_t sub_2140C4314(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905858, &qword_2146F3E10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[5];
  v15 = v1[6];
  v16 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E2FA0();
  sub_2146DAA28();
  if (v9 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v18 = v8;
    v19 = v9;
    v20 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    v12 = v17;
    sub_2146DA388();
    if (!v12)
    {
      v18 = v16;
      v19 = v15;
      v20 = 1;
      sub_2146DA388();
    }

    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_2140C455C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2142E3364;
  *(v7 + 24) = 0;
  *(inited + 32) = v7;
  sub_214042B80(inited, &v16);
  v9 = v16;
  v8 = v17;
  v10 = v20;
  v15[0] = a1;
  v15[1] = a2;
  v21 = v20;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478C900;
  v18 = 0xD00000000000001CLL;
  v19 = 0x800000021478A360;

  v11 = v9(v15, &v21, &v16);
  if (v3)
  {
  }

  else
  {
    if (v11)
    {

      result = swift_bridgeObjectRelease_n();
      *a3 = v9;
      *(a3 + 8) = v8;
      *(a3 + 16) = a1;
      *(a3 + 24) = a2;
      *(a3 + 32) = v10;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v13 = 0xD00000000000001CLL;
    v13[1] = 0x800000021478C900;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_2140C4760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1936290409 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2140C47E8(uint64_t a1)
{
  v2 = sub_2142E3370();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140C4824(uint64_t a1)
{
  v2 = sub_2142E3370();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140C4860@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905860, &qword_2146F3E18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E3370();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_2146DA168();
  v24 = a2;
  v27 = v11;
  v28 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2140676DC;
  *(v15 + 24) = 0;
  *(inited + 32) = v15;
  sub_214042B80(inited, &v30);
  v17 = v30;
  v16 = v31;
  v29[0] = v27;
  v29[1] = v28;
  v35 = v34;
  v36 = v34;
  v30 = 0xD00000000000001CLL;
  v31 = 0x800000021478C900;
  v25 = 0x800000021478C900;
  v26 = v33;
  v32 = 0xD00000000000001CLL;
  v33 = 0x800000021478A360;

  v18 = v17(v29, &v36, &v30);
  v23 = v17;
  if (v18)
  {

    (*(v6 + 8))(v9, v5);

    v19 = v24;
    *v24 = v23;
    v19[1] = v16;
    v20 = v28;
    v19[2] = v27;
    v19[3] = v20;
    *(v19 + 32) = v35;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  v21 = v25;
  *v22 = 0xD00000000000001CLL;
  v22[1] = v21;
  v22[2] = 0xD00000000000001CLL;
  v22[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2140C4C28@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15)
{
  sub_214471FD4(&v91);
  v18 = v91;
  v17 = v92;
  v19 = v94;
  v137[0] = *v96;
  *(v137 + 3) = *&v96[3];
  v85 = v97;
  v87 = v98;
  v52 = v93;
  v53 = v99;
  v138 = v100;
  v86 = v101;
  v136[0] = *v102;
  *(v136 + 3) = *&v102[3];
  v81 = v103;
  v83 = v104;
  v84 = v106;
  v82 = v107;
  *(v135 + 3) = *&v108[3];
  v135[0] = *v108;
  v78 = v110;
  v54 = v105;
  v55 = v111;
  v79 = v112;
  v134[0] = *v114;
  *(v134 + 3) = *&v114[3];
  v69 = v115;
  v75 = v116;
  v76 = v109;
  v56 = v117;
  v57 = v118;
  v73 = v113;
  v74 = v119;
  *(v133 + 3) = *&v120[3];
  v133[0] = *v120;
  v63 = v121;
  v67 = v123;
  v70 = v122;
  v71 = v124;
  *(v132 + 3) = *&v126[3];
  v132[0] = *v126;
  v90 = a2;
  v91 = 0xD000000000000033;
  v89 = a1;
  v59 = v95;
  v88 = v95;
  v92 = 0x800000021478C920;
  v93 = 0xD00000000000001CLL;
  v94 = 0x800000021478A360;
  v68 = v125;
  v61 = v127;
  v64 = v129;
  v65 = v130;
  v66 = v128;
  v62 = v131;

  v60 = v17;
  v20 = v18(&v89, &v88, &v91);
  if (v58)
  {

    v21 = v69;
    v22 = v60;
    v23 = v57;
LABEL_6:

    v26 = v52;
    v27 = v63;
    v28 = v73;
LABEL_7:
    v29 = v67;
    v31 = v55;
    v30 = v56;
    v33 = v53;
    v32 = v54;
LABEL_8:
    v91 = v18;
    v92 = v22;
    v93 = v26;
    v94 = v19;
    v95 = v59;
    v97 = v85;
    v98 = v87;
    *v96 = v137[0];
    *&v96[3] = *(v137 + 3);
    v99 = v33;
    v100 = v138;
    v101 = v86;
    *v102 = v136[0];
    *&v102[3] = *(v136 + 3);
    v103 = v81;
    v104 = v83;
    v105 = v32;
    v106 = v84;
    v107 = v82;
    *&v108[3] = *(v135 + 3);
    *v108 = v135[0];
    v109 = v76;
    v110 = v78;
    v111 = v31;
    v112 = v79;
    v113 = v28;
    *v114 = v134[0];
    *&v114[3] = *(v134 + 3);
    v115 = v21;
    v116 = v75;
    v117 = v30;
    v118 = v23;
    v119 = v74;
    *&v120[3] = *(v133 + 3);
    *v120 = v133[0];
    v121 = v27;
    v122 = v70;
    v123 = v29;
    v124 = v71;
    v125 = v68;
    *&v126[3] = *(v132 + 3);
    *v126 = v132[0];
    v127 = v61;
    v128 = v66;
    v129 = v64;
    v130 = v65;
    v131 = v62;
    return sub_2142E33C4(&v91);
  }

  v47 = a2;
  v46 = a1;
  if ((v20 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v25 = 0xD000000000000033;
    v25[1] = 0x800000021478C920;
    v25[2] = 0xD00000000000001CLL;
    v25[3] = 0x800000021478A360;
    swift_willThrow();

    v21 = v69;
    v22 = v60;
    v23 = v57;
    goto LABEL_6;
  }

  v22 = v17;

  v89 = a3;
  v90 = a4;
  v88 = v86;
  v91 = 0xD000000000000033;
  v92 = 0x800000021478C960;
  v93 = 0xD00000000000001CLL;
  v94 = 0x800000021478A360;

  v24 = v85(&v89, &v88, &v91);
  v23 = v57;
  v27 = v63;
  v28 = v73;
  if ((v24 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v36 = 0xD000000000000033;
    v36[1] = 0x800000021478C960;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = 0x800000021478A360;
    swift_willThrow();

    v21 = v69;

    v26 = a1;
    v19 = v47;
    goto LABEL_7;
  }

  v89 = a5;
  v90 = a6;
  v88 = v82;
  v91 = 0xD00000000000002ALL;
  v92 = 0x800000021478C9A0;
  v93 = 0xD00000000000001CLL;
  v94 = 0x800000021478A360;

  v35 = v81(&v89, &v88, &v91);
  if ((v35 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v38 = 0xD00000000000002ALL;
    v38[1] = 0x800000021478C9A0;
    v38[2] = 0xD00000000000001CLL;
    v38[3] = 0x800000021478A360;
    swift_willThrow();

    v21 = v69;

    v19 = v47;
    v33 = a3;
    v138 = a4;
    v26 = a1;
    v29 = v67;
    v31 = v55;
    v30 = v56;
    v32 = v54;
    goto LABEL_8;
  }

  v89 = a7;
  v90 = a8;
  v88 = v73;
  v91 = 0xD00000000000002ELL;
  v92 = 0x800000021478C9D0;
  v93 = 0xD00000000000001CLL;
  v94 = 0x800000021478A360;

  if ((v76(&v89, &v88, &v91) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD00000000000002ELL;
    v39[1] = 0x800000021478C9D0;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = 0x800000021478A360;
    swift_willThrow();

    v21 = v69;

    v19 = v47;
    v33 = a3;
    v138 = a4;
    v32 = a5;
    v84 = a6;
    v26 = a1;
    v29 = v67;
    v31 = v55;
    v30 = v56;
    goto LABEL_8;
  }

  v89 = a10;
  v90 = a11;
  v88 = v74;
  v91 = 0xD000000000000024;
  v92 = 0x800000021478CA00;
  v93 = 0xD00000000000001CLL;
  v94 = 0x800000021478A360;

  v21 = v69;
  if ((v69(&v89, &v88, &v91) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v40 = 0xD000000000000024;
    v40[1] = 0x800000021478CA00;
    v40[2] = 0xD00000000000001CLL;
    v40[3] = 0x800000021478A360;
    swift_willThrow();

    v19 = v47;
    v33 = a3;
    v138 = a4;
    v31 = a7;
    v32 = a5;
    v84 = a6;
    v79 = a8;
    v28 = v73;
    v26 = a1;
    v29 = v67;
    v30 = v56;
    goto LABEL_8;
  }

  v89 = a12;
  v90 = a13;
  v88 = v68;
  v91 = 0xD00000000000002BLL;
  v92 = 0x800000021478CA30;
  v93 = 0xD00000000000001CLL;
  v94 = 0x800000021478A360;

  sub_213FDC9D0(v67, v71);
  v37 = v63(&v89, &v88, &v91);
  if ((v37 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v42 = 0xD00000000000002BLL;
    v42[1] = 0x800000021478CA30;
    v42[2] = 0xD00000000000001CLL;
    v42[3] = 0x800000021478A360;
    swift_willThrow();

    v21 = v69;
    v19 = v47;

    v29 = v67;
    sub_213FDC6D0(v67, v71);
    v33 = a3;
    v138 = a4;
    v31 = a7;
    v32 = a5;
    v84 = a6;
    v79 = a8;
    v30 = a10;
    v23 = a11;
    v28 = v73;
LABEL_22:
    v26 = v46;
    goto LABEL_8;
  }

  sub_213FDC6D0(v67, v71);

  sub_213FDC6D0(v67, v71);
  v89 = a14;
  v90 = a15;
  v88 = v62;
  v91 = 0xD00000000000002FLL;
  v92 = 0x800000021478CA60;
  v93 = 0xD00000000000001CLL;
  v94 = 0x800000021478A360;

  sub_213FDC9D0(v64, v65);
  v41 = v61(&v89, &v88, &v91);
  if ((v41 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v45 = 0xD00000000000002FLL;
    v45[1] = 0x800000021478CA60;
    v45[2] = 0xD00000000000001CLL;
    v45[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v64, v65);
    v19 = v47;
    v33 = a3;
    v138 = a4;
    v31 = a7;
    v32 = a5;
    v84 = a6;
    v79 = a8;
    v30 = a10;
    v23 = a11;
    v29 = a12;
    v71 = a13;
    v27 = v63;
    v21 = v69;
    v28 = v73;
    v22 = v60;
    goto LABEL_22;
  }

  sub_213FDC6D0(v64, v65);

  result = sub_213FDC6D0(v64, v65);
  *a9 = v18;
  *(a9 + 8) = v60;
  *(a9 + 16) = a1;
  *(a9 + 24) = v47;
  *(a9 + 32) = v59;
  *(a9 + 40) = v85;
  *(a9 + 48) = v87;
  *(a9 + 33) = v137[0];
  *(a9 + 36) = *(v137 + 3);
  *(a9 + 56) = a3;
  *(a9 + 64) = a4;
  *(a9 + 72) = v86;
  *(a9 + 73) = v136[0];
  *(a9 + 76) = *(v136 + 3);
  *(a9 + 80) = v81;
  *(a9 + 88) = v83;
  *(a9 + 96) = a5;
  *(a9 + 104) = a6;
  *(a9 + 112) = v82;
  *(a9 + 116) = *(v135 + 3);
  *(a9 + 113) = v135[0];
  *(a9 + 120) = v76;
  *(a9 + 128) = v78;
  *(a9 + 136) = a7;
  *(a9 + 144) = a8;
  *(a9 + 152) = v73;
  *(a9 + 156) = *(v134 + 3);
  *(a9 + 153) = v134[0];
  *(a9 + 160) = v69;
  *(a9 + 168) = v75;
  *(a9 + 176) = a10;
  *(a9 + 184) = a11;
  *(a9 + 192) = v74;
  v43 = v133[0];
  *(a9 + 196) = *(v133 + 3);
  *(a9 + 193) = v43;
  *(a9 + 200) = v63;
  *(a9 + 208) = v70;
  *(a9 + 216) = a12;
  *(a9 + 224) = a13;
  *(a9 + 232) = v68;
  v44 = v132[0];
  *(a9 + 236) = *(v132 + 3);
  *(a9 + 233) = v44;
  *(a9 + 240) = v61;
  *(a9 + 248) = v66;
  *(a9 + 256) = a14;
  *(a9 + 264) = a15;
  *(a9 + 272) = v62;
  return result;
}

unint64_t sub_2140C5A9C()
{
  v1 = *v0;
  v2 = 0x4872656B63697473;
  v3 = 0xD000000000000012;
  if (v1 != 5)
  {
    v3 = 0xD000000000000016;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 > 4u)
  {
    v2 = v3;
  }

  v4 = 0xD00000000000001ALL;
  v5 = 0xD00000000000001ALL;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2140C5B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21435BF4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2140C5BB8(uint64_t a1)
{
  v2 = sub_2142E3418();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140C5BF4(uint64_t a1)
{
  v2 = sub_2142E3418();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140C5C30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905870, &qword_2146F3E28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v68 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v172 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142E3418();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v172);
  }

  v12 = v6;
  v119 = a2;
  LOBYTE(v122) = 0;
  v13 = sub_2146DA168();
  v15 = v14;
  v118 = v13;
  LOBYTE(v122) = 1;
  v16 = sub_2146DA168();
  v18 = v17;
  v19 = v16;
  LOBYTE(v122) = 2;
  v116 = sub_2146DA168();
  v117 = v20;
  LOBYTE(v122) = 3;
  v113 = sub_2146DA168();
  v114 = v19;
  v115 = v21;
  LOBYTE(v122) = 4;
  v110 = sub_2146DA168();
  v111 = v23;
  v112 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v120[0]) = 5;
  sub_2142E12FC();
  sub_2146DA1C8();
  v24 = v122;
  v109 = v123;
  v163 = 6;
  sub_2146DA1C8();
  v70 = v24;
  v69 = v164;
  v76 = v165;
  sub_214471FD4(&v122);
  v25 = v123;
  v71 = v124;
  v26 = v125;
  v171[0] = *v127;
  *(v171 + 3) = *&v127[3];
  v106 = v122;
  v107 = v129;
  v102 = v131;
  v103 = v128;
  v104 = v132;
  v170[0] = *v133;
  *(v170 + 3) = *&v133[3];
  v96 = v130;
  v97 = v134;
  v99 = v135;
  v100 = v137;
  v98 = v138;
  *(v169 + 3) = *&v139[3];
  v169[0] = *v139;
  v93 = v140;
  v95 = v141;
  v91 = v136;
  v92 = v143;
  v94 = v144;
  v168[0] = *v145;
  *(v168 + 3) = *&v145[3];
  v86 = v142;
  v87 = v146;
  v80 = v148;
  v89 = v147;
  v90 = v149;
  v88 = v150;
  *(v167 + 3) = *&v151[3];
  v167[0] = *v151;
  v82 = v152;
  v83 = v153;
  v84 = v155;
  v85 = v154;
  *(v166 + 3) = *&v157[3];
  v166[0] = *v157;
  v122 = 0xD000000000000033;
  v120[0] = v118;
  v120[1] = v15;
  v73 = v126;
  LOBYTE(v121[0]) = v126;
  v101 = 0x800000021478C920;
  v123 = 0x800000021478C920;
  v124 = 0xD00000000000001CLL;
  v108 = 0x800000021478A360;
  v125 = 0x800000021478A360;
  v81 = v156;
  v75 = v158;
  v77 = v160;
  v78 = v161;
  v79 = v159;
  LODWORD(v24) = v162;
  v72 = v26;

  v105 = v25;
  v27 = v106(v120, v121, &v122);
  v74 = v24;
  v28 = v112;
  if ((v27 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    v34 = v101;
    *v35 = 0xD000000000000033;
    v35[1] = v34;
    v36 = v108;
    v35[2] = 0xD00000000000001CLL;
    v35[3] = v36;
    swift_willThrow();

    v37 = v106;

    (*(v12 + 8))(v9, v5);
    v15 = v72;

    v38 = v105;

    v118 = v71;
    v39 = v92;
    v40 = v102;
    goto LABEL_10;
  }

  v71 = v5;
  v29 = v108;

  v120[0] = v114;
  v120[1] = v28;
  LOBYTE(v121[0]) = v104;
  v122 = 0xD000000000000033;
  v123 = 0x800000021478C960;
  v124 = 0xD00000000000001CLL;
  v125 = v29;

  if ((v103(v120, v121, &v122) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v41 = 0xD000000000000033;
    v41[1] = 0x800000021478C960;
    v42 = v108;
    v41[2] = 0xD00000000000001CLL;
    v41[3] = v42;
    swift_willThrow();

    (*(v12 + 8))(v9, v71);
    v40 = v102;

LABEL_13:
    v38 = v105;
    v37 = v106;
    v39 = v92;
    goto LABEL_10;
  }

  v30 = v108;

  v120[0] = v116;
  v120[1] = v117;
  LOBYTE(v121[0]) = v98;
  v122 = 0xD00000000000002ALL;
  v123 = 0x800000021478C9A0;
  v124 = 0xD00000000000001CLL;
  v125 = v30;

  if ((v97(v120, v121, &v122) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v43 = 0xD00000000000002ALL;
    v43[1] = 0x800000021478C9A0;
    v44 = v108;
    v43[2] = 0xD00000000000001CLL;
    v43[3] = v44;
    swift_willThrow();

    (*(v12 + 8))(v9, v71);

    v96 = v114;
    v40 = v112;
    goto LABEL_13;
  }

  v31 = v108;

  v120[0] = v113;
  v120[1] = v115;
  LOBYTE(v121[0]) = v94;
  v122 = 0xD00000000000002ELL;
  v123 = 0x800000021478C9D0;
  v124 = 0xD00000000000001CLL;
  v125 = v31;

  if (v93(v120, v121, &v122))
  {
    v32 = v108;

    v120[0] = v110;
    v120[1] = v111;
    LOBYTE(v121[0]) = v88;
    v122 = 0xD000000000000024;
    v123 = 0x800000021478CA00;
    v124 = 0xD00000000000001CLL;
    v125 = v32;

    v33 = v87(v120, v121, &v122);
    if (v33)
    {
      v47 = v108;

      v120[0] = v70;
      v120[1] = v109;
      LOBYTE(v121[0]) = v81;
      v122 = 0xD00000000000002BLL;
      v123 = 0x800000021478CA30;
      v124 = 0xD00000000000001CLL;
      v125 = v47;

      sub_213FDC9D0(v85, v84);
      v48 = v82(v120, v121, &v122);
      if (v48)
      {
        v52 = v84;
        v51 = v85;
        sub_213FDC6D0(v85, v84);
        v53 = v108;

        sub_213FDC6D0(v51, v52);
        v121[0] = v69;
        v121[1] = v76;
        LOBYTE(v120[0]) = v74;
        v122 = 0xD00000000000002FLL;
        v123 = 0x800000021478CA60;
        v124 = 0xD00000000000001CLL;
        v125 = v53;

        sub_213FDC9D0(v77, v78);
        v54 = v75(v121, v120, &v122);
        if (v54)
        {
          v58 = v77;
          v57 = v78;
          sub_213FDC6D0(v77, v78);

          (*(v12 + 8))(v9, v71);
          v59 = v79;

          sub_213FDC6D0(v58, v57);
          *(&v120[19] + 1) = v168[0];
          HIDWORD(v120[24]) = *(v167 + 3);
          *(&v120[24] + 1) = v167[0];
          HIDWORD(v120[29]) = *(v166 + 3);
          *(&v120[29] + 1) = v166[0];
          *(&v120[4] + 1) = v171[0];
          HIDWORD(v120[4]) = *(v171 + 3);
          *(&v120[9] + 1) = v170[0];
          HIDWORD(v120[9]) = *(v170 + 3);
          *(&v120[14] + 1) = v169[0];
          HIDWORD(v120[14]) = *(v169 + 3);
          HIDWORD(v120[19]) = *(v168 + 3);
          v60 = v106;
          v120[0] = v106;
          v120[1] = v105;
          v61 = v118;
          v120[2] = v118;
          v120[3] = v15;
          v68 = v15;
          v62 = v73;
          LOBYTE(v120[4]) = v73;
          v120[5] = v103;
          v120[6] = v107;
          v120[7] = v114;
          v120[8] = v112;
          LOBYTE(v120[9]) = v104;
          v120[10] = v97;
          v120[11] = v99;
          v120[12] = v116;
          v120[13] = v117;
          LOBYTE(v120[14]) = v98;
          v120[15] = v93;
          v120[16] = v95;
          v120[17] = v113;
          v120[18] = v115;
          LOBYTE(v120[19]) = v94;
          v120[20] = v87;
          v120[21] = v89;
          v120[22] = v110;
          v120[23] = v111;
          LOBYTE(v120[24]) = v88;
          v120[25] = v82;
          v120[26] = v83;
          v63 = v70;
          v120[27] = v70;
          v120[28] = v109;
          LOBYTE(v120[29]) = v81;
          v120[30] = v75;
          v120[31] = v59;
          v64 = v69;
          v120[32] = v69;
          v120[33] = v76;
          v65 = v74;
          LOBYTE(v120[34]) = v74;
          memcpy(v119, v120, 0x111uLL);
          sub_2142E346C(v120, &v122);
          __swift_destroy_boxed_opaque_existential_1(v172);
          v122 = v60;
          v123 = v105;
          v124 = v61;
          v125 = v68;
          v126 = v62;
          v128 = v103;
          v129 = v107;
          *v127 = v171[0];
          *&v127[3] = *(v171 + 3);
          v130 = v114;
          v131 = v112;
          v132 = v104;
          *v133 = v170[0];
          *&v133[3] = *(v170 + 3);
          v134 = v97;
          v135 = v99;
          v136 = v116;
          v137 = v117;
          v138 = v98;
          *&v139[3] = *(v169 + 3);
          *v139 = v169[0];
          v140 = v93;
          v141 = v95;
          v142 = v113;
          v143 = v115;
          v144 = v94;
          *&v145[3] = *(v168 + 3);
          *v145 = v168[0];
          v146 = v87;
          v147 = v89;
          v148 = v110;
          v149 = v111;
          v150 = v88;
          *v151 = v167[0];
          *&v151[3] = *(v167 + 3);
          v152 = v82;
          v153 = v83;
          v154 = v63;
          v155 = v109;
          v156 = v81;
          *v157 = v166[0];
          *&v157[3] = *(v166 + 3);
          v158 = v75;
          v159 = v79;
          v160 = v64;
          v161 = v76;
          v162 = v65;
          return sub_2142E33C4(&v122);
        }

        sub_214031C4C();
        swift_allocError();
        *v66 = 0xD00000000000002FLL;
        v66[1] = 0x800000021478CA60;
        v67 = v108;
        v66[2] = 0xD00000000000001CLL;
        v66[3] = v67;
        swift_willThrow();

        (*(v12 + 8))(v9, v71);

        sub_213FDC6D0(v77, v78);
        v39 = v115;
        v96 = v114;
        v100 = v117;
        v40 = v112;
        v80 = v110;
        v90 = v111;
        v91 = v116;
        v85 = v70;
        v86 = v113;
        v84 = v109;
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v55 = 0xD00000000000002BLL;
        v55[1] = 0x800000021478CA30;
        v56 = v108;
        v55[2] = 0xD00000000000001CLL;
        v55[3] = v56;
        swift_willThrow();

        (*(v12 + 8))(v9, v71);

        sub_213FDC6D0(v85, v84);
        v39 = v115;
        v96 = v114;
        v100 = v117;
        v40 = v112;
        v86 = v113;
        v80 = v110;
        v90 = v111;
        v91 = v116;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v49 = 0xD000000000000024;
      v49[1] = 0x800000021478CA00;
      v50 = v108;
      v49[2] = 0xD00000000000001CLL;
      v49[3] = v50;
      swift_willThrow();

      (*(v12 + 8))(v9, v71);

      v39 = v115;
      v96 = v114;
      v91 = v116;
      v100 = v117;
      v40 = v112;
      v86 = v113;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v45 = 0xD00000000000002ELL;
    v45[1] = 0x800000021478C9D0;
    v46 = v108;
    v45[2] = 0xD00000000000001CLL;
    v45[3] = v46;
    swift_willThrow();

    (*(v12 + 8))(v9, v71);
    v39 = v92;

    v96 = v114;
    v40 = v112;
    v91 = v116;
    v100 = v117;
  }

  v38 = v105;
  v37 = v106;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v172);
  v122 = v37;
  v123 = v38;
  v124 = v118;
  v125 = v15;
  v126 = v73;
  v128 = v103;
  v129 = v107;
  *v127 = v171[0];
  *&v127[3] = *(v171 + 3);
  v130 = v96;
  v131 = v40;
  v132 = v104;
  *v133 = v170[0];
  *&v133[3] = *(v170 + 3);
  v134 = v97;
  v135 = v99;
  v136 = v91;
  v137 = v100;
  v138 = v98;
  *&v139[3] = *(v169 + 3);
  *v139 = v169[0];
  v140 = v93;
  v141 = v95;
  v142 = v86;
  v143 = v39;
  v144 = v94;
  *&v145[3] = *(v168 + 3);
  *v145 = v168[0];
  v146 = v87;
  v147 = v89;
  v148 = v80;
  v149 = v90;
  v150 = v88;
  *&v151[3] = *(v167 + 3);
  *v151 = v167[0];
  v152 = v82;
  v153 = v83;
  v154 = v85;
  v155 = v84;
  v156 = v81;
  *&v157[3] = *(v166 + 3);
  *v157 = v166[0];
  v158 = v75;
  v159 = v79;
  v160 = v77;
  v161 = v78;
  v162 = v74;
  return sub_2142E33C4(&v122);
}

uint64_t sub_2140C7000(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905880, &qword_2146F3E30);
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[13];
  v30 = v1[12];
  v31 = v10;
  v11 = v1[17];
  v32 = v1[18];
  v33 = v8;
  v12 = v1[22];
  v28 = v1[23];
  v29 = v11;
  v13 = v1[28];
  v26 = v1[27];
  v27 = v12;
  v25 = v13;
  v14 = v1[32];
  v23 = v1[33];
  v24 = v14;
  v16 = a1[3];
  v15 = a1[4];
  v17 = a1;
  v19 = &v23 - v18;
  __swift_project_boxed_opaque_existential_1(v17, v16);
  sub_2142E3418();
  sub_2146DAA28();
  if (!v7)
  {
    goto LABEL_11;
  }

  LOBYTE(v35) = 0;

  sub_2146DA328();
  v20 = v4;
  if (v2)
  {
    (*(v34 + 8))(v19, v4);
  }

  if (!v9)
  {
    goto LABEL_11;
  }

  LOBYTE(v35) = 1;

  sub_2146DA328();

  if (!v31)
  {
    goto LABEL_11;
  }

  LOBYTE(v35) = 2;

  sub_2146DA328();
  v21 = v32;

  if (!v21)
  {
    goto LABEL_11;
  }

  LOBYTE(v35) = 3;

  sub_2146DA328();

  if (!v28)
  {
    goto LABEL_11;
  }

  LOBYTE(v35) = 4;

  sub_2146DA328();

  if (v25 == 1)
  {
    goto LABEL_11;
  }

  v35 = v26;
  v36 = v25;
  v37 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (v23 != 1)
  {
    v35 = v24;
    v36 = v23;
    v37 = 6;
    sub_2146DA388();
    return (*(v34 + 8))(v19, v20);
  }

  else
  {
LABEL_11:
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2140C7454@<X0>(uint64_t (*a1)(void, void, void)@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, void, void)@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, void, void)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t (*a10)(void, void, void), uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, char a25, uint64_t a26, char a27)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_2140676DC;
  *(v29 + 24) = 0;
  *(v28 + 32) = v29;
  sub_214042B80(v28, &v90);
  v30 = v90;
  v31 = v91;
  v32 = v93;
  v65 = v92;
  v33 = v94;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2146E9BF0;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_2140676DC;
  *(v35 + 24) = 0;
  *(v34 + 32) = v35;
  sub_214042B80(v34, &v149);
  v88 = v149;
  v173 = v150;
  v66 = v151;
  v70 = v152;
  v89 = v153;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_2146E9BF0;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_2140676DC;
  *(v37 + 24) = 0;
  *(v36 + 32) = v37;
  sub_214042B80(v36, v147);
  v83 = v147[0];
  v85 = v147[1];
  v67 = v147[2];
  v87 = v147[3];
  v84 = v148;
  sub_214472B70(v145);
  v78 = v145[2];
  v79 = v145[0];
  v81 = v145[1];
  v82 = v145[3];
  v80 = v146;
  sub_214472BA4(v143);
  v71 = v143[0];
  v73 = v143[1];
  v72 = v143[2];
  v76 = v143[3];
  v74 = v144;
  v160 = a13 & 1;
  v159 = a15 & 1;
  v158 = a17 & 1;
  v157 = a20 & 1;
  v156 = a22 & 1;
  v155 = a24 & 1;
  v154 = a27 & 1;
  v149 = a1;
  v150 = a2;
  LOBYTE(v147[0]) = v33;
  v90 = 0xD000000000000027;
  v91 = 0x800000021478CA90;
  v92 = 0xD00000000000001CLL;
  v93 = 0x800000021478A360;

  v38 = v30(&v149, v147, &v90);
  if (v69)
  {
    goto LABEL_5;
  }

  if ((v38 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v41 = 0xD000000000000027;
    v41[1] = 0x800000021478CA90;
    v41[2] = 0xD00000000000001CLL;
    v41[3] = 0x800000021478A360;
    swift_willThrow();

LABEL_5:

    v42 = v71;
    v39 = v70;

    v43 = v65;
LABEL_6:
    v44 = v72;
    v45 = v78;
    v47 = v66;
    v46 = v67;
LABEL_7:
    v48 = a24 & 1;
LABEL_8:
    v90 = v30;
    v91 = v31;
    v92 = v43;
    v93 = v32;
    v94 = v33;
    v96 = v88;
    v97 = v173;
    v98 = v47;
    v99 = v39;
    v100 = v89;
    v102 = v83;
    v103 = v85;
    *v95 = v172[0];
    *&v95[3] = *(v172 + 3);
    *v101 = *v171;
    *&v101[3] = *&v171[3];
    v104 = v46;
    v105 = v87;
    v106 = v84;
    *&v107[3] = *&v170[3];
    *v107 = *v170;
    v108 = v79;
    v109 = v81;
    v110 = v45;
    v111 = v82;
    v112 = v80;
    *v113 = *v169;
    *&v113[3] = *&v169[3];
    v114 = v42;
    v115 = v73;
    v116 = v44;
    v117 = v76;
    v118 = v74;
    *&v119[3] = *(v168 + 3);
    *v119 = v168[0];
    v120 = a12;
    v121 = a13 & 1;
    *&v122[3] = *(v167 + 3);
    *v122 = v167[0];
    v123 = a14;
    v124 = a15 & 1;
    *&v125[3] = *(v166 + 3);
    *v125 = v166[0];
    v126 = a16;
    v127 = a17 & 1;
    *&v128[3] = *(v165 + 3);
    *v128 = v165[0];
    v129 = a18;
    v130 = a19;
    v131 = a20 & 1;
    *v132 = v164[0];
    *&v132[3] = *(v164 + 3);
    v133 = a21;
    v134 = a22 & 1;
    *v135 = v163[0];
    *&v135[3] = *(v163 + 3);
    v136 = a23;
    v137 = v48;
    v138 = a25 & 1;
    v139 = v161;
    v140 = v162;
    v141 = a26;
    v142 = a27 & 1;
    return sub_2142E34C8(&v90);
  }

  v149 = a3;
  v150 = a4;
  LOBYTE(v147[0]) = v89;
  v90 = 0xD00000000000002BLL;
  v91 = 0x800000021478CAC0;
  v92 = 0xD00000000000001CLL;
  v93 = 0x800000021478A360;
  v39 = v70;

  v40 = v88(&v149, v147, &v90);
  if ((v40 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v51 = 0xD00000000000002BLL;
    v51[1] = 0x800000021478CAC0;
    v51[2] = 0xD00000000000001CLL;
    v51[3] = 0x800000021478A360;
    swift_willThrow();

    v42 = v71;

    v32 = a2;
    v43 = a1;
    goto LABEL_6;
  }

  v149 = a5;
  v150 = a6;
  LOBYTE(v147[0]) = v84;
  v90 = 0xD000000000000021;
  v91 = 0x800000021478CAF0;
  v92 = 0xD00000000000001CLL;
  v93 = 0x800000021478A360;

  v50 = v83(&v149, v147, &v90);
  v32 = a2;
  if ((v50 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v53 = 0xD000000000000021;
    v53[1] = 0x800000021478CAF0;
    v53[2] = 0xD00000000000001CLL;
    v53[3] = 0x800000021478A360;
    swift_willThrow();

    v42 = v71;

    v47 = a3;
    v39 = a4;
    v43 = a1;
    v44 = v72;
    v45 = v78;
    v46 = v67;
    goto LABEL_7;
  }

  v149 = a7;
  v150 = a8;
  LOBYTE(v147[0]) = v80;
  v90 = 0xD000000000000028;
  v91 = 0x800000021478CB20;
  v92 = 0xD00000000000001CLL;
  v93 = 0x800000021478A360;

  sub_213FDC9D0(v78, v82);
  v52 = v79(&v149, v147, &v90);
  if ((v52 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v55 = 0xD000000000000028;
    v55[1] = 0x800000021478CB20;
    v55[2] = 0xD00000000000001CLL;
    v55[3] = 0x800000021478A360;
    swift_willThrow();

    v42 = v71;

    v45 = v78;
    sub_213FDC6D0(v78, v82);
    v46 = a5;
    v47 = a3;
    v39 = a4;
    v87 = a6;
    v43 = a1;
    v44 = v72;
    goto LABEL_7;
  }

  sub_213FDC6D0(v78, v82);

  sub_213FDC6D0(v78, v82);
  v149 = a10;
  v150 = a11;
  LOBYTE(v147[0]) = v74;
  v90 = 0xD000000000000025;
  v91 = 0x800000021478CB50;
  v92 = 0xD00000000000001CLL;
  v93 = 0x800000021478A360;

  v44 = v72;
  sub_213FDC9D0(v72, v76);
  v54 = v71(&v149, v147, &v90);
  v42 = v71;
  if ((v54 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v60 = 0xD000000000000025;
    v60[1] = 0x800000021478CB50;
    v60[2] = 0xD00000000000001CLL;
    v60[3] = 0x800000021478A360;
    swift_willThrow();

    v45 = a7;

    sub_213FDC6D0(v72, v76);
    v32 = a2;
    v46 = a5;
    v47 = a3;
    v39 = a4;
    v87 = a6;
    v82 = a8;
    v48 = a24 & 1;
    v43 = a1;
    goto LABEL_8;
  }

  sub_213FDC6D0(v72, v76);

  result = sub_213FDC6D0(v72, v76);
  *a9 = v30;
  *(a9 + 8) = v31;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = v33;
  v56 = v173;
  *(a9 + 40) = v88;
  *(a9 + 48) = v56;
  *(a9 + 56) = a3;
  *(a9 + 64) = a4;
  *(a9 + 72) = v89;
  *(a9 + 80) = v83;
  *(a9 + 88) = v85;
  *(a9 + 33) = v172[0];
  *(a9 + 36) = *(v172 + 3);
  *(a9 + 73) = *v171;
  *(a9 + 76) = *&v171[3];
  *(a9 + 96) = a5;
  *(a9 + 104) = a6;
  *(a9 + 112) = v84;
  *(a9 + 116) = *&v170[3];
  *(a9 + 113) = *v170;
  *(a9 + 120) = v79;
  *(a9 + 128) = v81;
  *(a9 + 136) = a7;
  *(a9 + 144) = a8;
  *(a9 + 152) = v80;
  *(a9 + 156) = *&v169[3];
  *(a9 + 153) = *v169;
  *(a9 + 160) = v71;
  *(a9 + 168) = v73;
  *(a9 + 176) = a10;
  *(a9 + 184) = a11;
  *(a9 + 192) = v74;
  LODWORD(v56) = v168[0];
  *(a9 + 196) = *(v168 + 3);
  *(a9 + 193) = v56;
  *(a9 + 200) = a12;
  *(a9 + 208) = a13 & 1;
  LODWORD(v56) = v167[0];
  *(a9 + 212) = *(v167 + 3);
  *(a9 + 209) = v56;
  *(a9 + 216) = a14;
  *(a9 + 224) = a15 & 1;
  LODWORD(v56) = v166[0];
  *(a9 + 228) = *(v166 + 3);
  *(a9 + 225) = v56;
  *(a9 + 232) = a16;
  *(a9 + 240) = a17 & 1;
  LODWORD(v56) = v165[0];
  *(a9 + 244) = *(v165 + 3);
  *(a9 + 241) = v56;
  *(a9 + 248) = a18;
  *(a9 + 256) = a19;
  *(a9 + 264) = a20 & 1;
  v57 = v164[0];
  *(a9 + 268) = *(v164 + 3);
  *(a9 + 265) = v57;
  *(a9 + 272) = a21;
  *(a9 + 280) = a22 & 1;
  v58 = v163[0];
  *(a9 + 284) = *(v163 + 3);
  *(a9 + 281) = v58;
  *(a9 + 288) = a23;
  *(a9 + 296) = a24 & 1;
  *(a9 + 297) = a25 & 1;
  v59 = v161;
  *(a9 + 302) = v162;
  *(a9 + 298) = v59;
  *(a9 + 304) = a26;
  *(a9 + 312) = a27 & 1;
  return result;
}