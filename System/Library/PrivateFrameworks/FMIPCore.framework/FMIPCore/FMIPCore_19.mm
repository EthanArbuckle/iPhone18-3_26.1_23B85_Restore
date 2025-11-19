unint64_t sub_24A815AFC(char a1)
{
  result = 0x6D614E6C65646F6DLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6144664F656D6974;
      break;
    case 3:
      result = 0x4C79726574746162;
      break;
    case 4:
      result = 0x5379726574746162;
      break;
    case 5:
      result = 0x65646F4D74736F6CLL;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0x7453656369766564;
      break;
    case 8:
      result = 0x6544736968547369;
      break;
    case 9:
      result = 0x6465726168537369;
      break;
    case 10:
      result = 0x6E6E6F4354427369;
      break;
    case 11:
      result = 0x65566D6574737973;
      break;
    case 12:
      result = 0x697461636F4C7369;
      break;
    case 13:
    case 15:
      result = 0x6E6F697461636F6CLL;
      break;
    case 14:
    case 17:
      result = 0xD00000000000001ALL;
      break;
    case 16:
      result = 0x65736F7078457369;
      break;
    case 18:
      result = 0xD000000000000026;
      break;
    case 19:
      result = 0xD000000000000017;
      break;
    case 20:
      result = 0x74696D736E617274;
      break;
    case 21:
      result = 0xD000000000000019;
      break;
    case 22:
      result = 0xD000000000000013;
      break;
    case 23:
      result = 0x74636166756E616DLL;
      break;
    case 24:
      result = 0x6E694654426E6163;
      break;
    case 25:
      result = 0x6C69617465446E69;
      break;
    case 26:
      result = 0x6570795474726170;
      break;
    case 27:
      result = 0x72616D6972507369;
      break;
    case 28:
      result = 0xD000000000000015;
      break;
    case 29:
      result = 0xD000000000000017;
      break;
    case 30:
      result = 0xD000000000000014;
      break;
    case 31:
      result = 0xD000000000000023;
      break;
    case 32:
    case 34:
      result = 0x57646570756F7267;
      break;
    case 33:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_24A815F74()
{
  v10 = sub_24A82D554();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24A82D534();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_24A82CE54();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_24A679170(0, &qword_2815146C0, 0x277D85C78);
  sub_24A82CE14();
  v11 = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_2815146D0, MEMORY[0x277D85230]);
  sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_24A82D594();
  qword_281514470 = result;
  return result;
}

id static FMIPAnalytics.sharedAnalytics.getter@<X0>(void *a1@<X8>)
{
  if (qword_27EF5CC50 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_281514470;
  *a1 = qword_281514470;

  return v2;
}

void sub_24A81626C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v232 = a3;
  v231 = a2;
  v237 = sub_24A82CA34();
  v242 = *(v237 - 8);
  v4 = *(v242 + 64);
  v5 = MEMORY[0x28223BE20](v237);
  v234 = &v220 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v236 = &v220 - v7;
  v228 = sub_24A82CB04();
  v227 = *(v228 - 8);
  v8 = *(v227 + 64);
  MEMORY[0x28223BE20](v228);
  v225 = &v220 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = sub_24A82CB24();
  v224 = *(v226 - 8);
  v10 = *(v224 + 64);
  MEMORY[0x28223BE20](v226);
  v223 = &v220 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v239 = &v220 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v238 = &v220 - v16;
  v17 = type metadata accessor for FMIPDevice();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = (&v220 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v23 = (&v220 - v22);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v24 = sub_24A82CDC4();
  v25 = sub_24A6797D0(v24, qword_281518F88);
  sub_24A68FF3C(a1, v23, type metadata accessor for FMIPDevice);
  v243 = v25;
  v26 = sub_24A82CD94();
  v27 = sub_24A82D504();
  v28 = os_log_type_enabled(v26, v27);
  v220 = v21;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock = v30;
    *v29 = 136315138;
    v32 = *v23;
    v31 = v23[1];

    sub_24A69F3E4(v23, type metadata accessor for FMIPDevice);
    v33 = sub_24A68761C(v32, v31, &aBlock);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_24A675000, v26, v27, "FMIPAnalytics: sendDeviceEvent for device (%s)", v29, 0xCu);
    sub_24A6876E8(v30);
    MEMORY[0x24C21E1D0](v30, -1, -1);
    MEMORY[0x24C21E1D0](v29, -1, -1);
  }

  else
  {

    sub_24A69F3E4(v23, type metadata accessor for FMIPDevice);
  }

  if (qword_27EF5CC40 != -1)
  {
    swift_once();
  }

  v35 = *a1;
  v34 = *(a1 + 8);
  swift_beginAccess();
  v36 = qword_281518EB8;
  v37 = *(qword_281518EB8 + 16);
  v38 = 0;
  v230 = v34;
  v229 = v35;
  if (v37 && (v39 = sub_24A6A2D48(v35, v34), (v40 & 1) != 0))
  {
    v41 = (*(v36 + 56) + 24 * v39);
    v42 = *v41;
    v43 = v41[1];
    v44 = v41[2];
    v45 = v41[3];
    v46 = *(v41 + 1);
    v38 = *(v41 + 2);
    v47 = 256;
    if (!v43)
    {
      v47 = 0;
    }

    v48 = v47 | v42;
    v49 = 0x10000;
    if (!v44)
    {
      v49 = 0;
    }

    v50 = v48 | v49 | (v45 << 24);
    v51 = v46;
  }

  else
  {
    v50 = 0;
    v46 = 0;
  }

  swift_endAccess();
  v253 = *(a1 + 256);
  v254 = *(a1 + 264);
  v251 = *(a1 + 280);
  v252 = *(a1 + 288);
  v222 = *(a1 + 216);
  v52 = (v222 >> 5) & 1;
  v53 = *(v17 + 128);
  v54 = v254;
  v55 = v252;
  v56 = v54;
  sub_24A7DC368(&v253, &v251, v52, a1 + v53, &aBlock);

  v58 = aBlock;
  v57 = v246;
  v241 = v247;
  v59 = *(a1 + 288);
  v221 = *(a1 + 280);
  v235 = v59;
  v60 = v246;
  v61 = sub_24A82CD94();
  v62 = sub_24A82D504();

  v63 = os_log_type_enabled(v61, v62);
  v244 = v57;
  if (v63)
  {
    v240 = v60;
    v233 = v46;
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    aBlock = v65;
    *v64 = 136315138;
    if (v57)
    {
      LOBYTE(v253) = BYTE3(v58);
      v66 = FMIPLocationType.rawValue.getter();
      v68 = v67;
    }

    else
    {
      v68 = 0xEB000000006E6F69;
      v66 = 0x7461636F6C206F6ELL;
    }

    v75 = sub_24A68761C(v66, v68, &aBlock);

    *(v64 + 4) = v75;
    _os_log_impl(&dword_24A675000, v61, v62, "FMIPAnalytics: device location type (%s)", v64, 0xCu);
    sub_24A6876E8(v65);
    MEMORY[0x24C21E1D0](v65, -1, -1);
    MEMORY[0x24C21E1D0](v64, -1, -1);

    v46 = v233;
    v60 = v240;
    v57 = v244;
    if (!v244)
    {
      goto LABEL_26;
    }
  }

  else
  {

    if (!v57)
    {
LABEL_26:
      if (!v46)
      {
LABEL_32:
        v85 = v239;
        sub_24A67E964(a1 + v53, v239, &unk_27EF5E0B0, &qword_24A8338B0);
        v86 = type metadata accessor for FMIPItemGroup();
        if ((*(*(v86 - 8) + 48))(v85, 1, v86) == 1)
        {

          sub_24A67F378(v85, &unk_27EF5E0B0, &qword_24A8338B0);
          return;
        }

        sub_24A67F378(v85, &unk_27EF5E0B0, &qword_24A8338B0);
        sub_24A818DA8(a1, v231, v232, &unk_285DCE828, sub_24A81C248, &unk_285DCE840);

        goto LABEL_42;
      }

      v74 = v46;
      v76 = v60;
      goto LABEL_28;
    }
  }

  aBlock = v58;
  v246 = v57;
  v247 = v241;
  if (!v46)
  {
    v73 = v60;
    v74 = 0;
LABEL_28:

    goto LABEL_29;
  }

  LOWORD(v253) = v50 & 0x101;
  BYTE2(v253) = BYTE2(v50) & 1;
  BYTE3(v253) = HIBYTE(v50);
  *&v254 = v46;
  *(&v254 + 1) = v38;
  v69 = v60;
  v70 = v46;
  v71 = v69;
  v72 = _s8FMIPCore12FMIPLocationV2eeoiySbAC_ACtFZ_0(&aBlock, &v253);

  if (v72)
  {
    goto LABEL_32;
  }

LABEL_29:
  v77 = v238;
  sub_24A67E964(a1 + v53, v238, &unk_27EF5E0B0, &qword_24A8338B0);
  v78 = type metadata accessor for FMIPItemGroup();
  v79 = (*(*(v78 - 8) + 48))(v77, 1, v78);
  sub_24A67F378(v77, &unk_27EF5E0B0, &qword_24A8338B0);
  v80 = v244;
  if (v79 != 1)
  {
    goto LABEL_32;
  }

  swift_beginAccess();
  if (v80)
  {
    v81 = *&v241;
    v82 = v60;
    v83 = v230;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v253 = qword_281518EB8;
    sub_24A784C04(v58 & 0xFF010101, v82, v229, v83, isUniquelyReferenced_nonNull_native, v81);

    qword_281518EB8 = v253;
    swift_endAccess();
LABEL_36:
    v240 = v60;
    v241 = v58;
    v88 = sub_24A6AE58C(MEMORY[0x277D84F90]);
    v89 = *(a1 + 136);
    v90 = *(a1 + 144);
    v91 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v92 = sub_24A82CF94();
    v93 = [v91 initWithString_];

    v94 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v88;
    sub_24A6AE690(v93, 0x6D614E6C65646F6DLL, 0xE900000000000065, v94);
    v95 = aBlock;
    v96 = v223;
    sub_24A82CAF4();
    v97 = v227;
    v98 = v225;
    v99 = v228;
    (*(v227 + 104))(v225, *MEMORY[0x277CC9980], v228);
    v100 = v236;
    sub_24A82CA24();
    v101 = sub_24A82CB14();
    v102 = *(v242 + 8);
    v242 += 8;
    v243 = v102;
    v102(v100, v237);
    (*(v97 + 8))(v98, v99);
    (*(v224 + 8))(v96, v226);
    v103 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v104 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v95;
    sub_24A6AE690(v103, 0x6144664F656D6974, 0xE900000000000079, v104);
    v105 = aBlock;
    v106 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v107 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v105;
    sub_24A6AE690(v106, 0x4C79726574746162, 0xEC0000006C657665, v107);
    v108 = aBlock;
    *(a1 + 192);
    *(a1 + 192);
    v109 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v110 = sub_24A82CF94();

    v111 = [v109 initWithString_];

    v112 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v108;
    sub_24A6AE690(v111, 0x5379726574746162, 0xED00007375746174, v112);
    v113 = aBlock;
    v114 = v222;
    v115 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v116 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v113;
    sub_24A6AE690(v115, 0x65646F4D74736F6CLL, 0xEF64656C62616E45, v116);
    v117 = aBlock;
    v118 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v119 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v117;
    sub_24A6AE690(v118, 0xD000000000000016, 0x800000024A84AF60, v119);
    v120 = aBlock;
    v121 = *&a200_0[8 * *(a1 + 80)];
    v122 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v123 = sub_24A82CF94();

    v124 = [v122 initWithString_];

    v125 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v120;
    sub_24A6AE690(v124, 0x7453656369766564, 0xEC00000073757461, v125);
    v126 = aBlock;
    v127 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v128 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v126;
    sub_24A6AE690(v127, 0x6544736968547369, 0xEC00000065636976, v128);
    v129 = aBlock;
    v130 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v131 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v129;
    sub_24A6AE690(v130, 0x6465726168537369, 0xEE00656369766544, v131);
    v132 = aBlock;
    v133 = sub_24A679170(0, &qword_27EF5EF98, 0x277CCABB0);
    v134 = sub_24A82D5C4();
    v135 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v132;
    sub_24A6AE690(v134, 0x6E6E6F4354427369, 0xED00006465746365, v135);
    v136 = aBlock;
    sub_24A679170(0, &qword_27EF5F900, 0x277CCACA8);
    v137 = sub_24A82D614();
    v138 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v136;
    sub_24A6AE690(v137, 0x65566D6574737973, 0xED00006E6F697372, v138);
    v139 = aBlock;
    v140 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v141 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v139;
    sub_24A6AE690(v140, 0x697461636F4C7369, 0xEA0000000000676ELL, v141);
    v142 = aBlock;
    v143 = sub_24A82D5C4();
    v144 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v142;
    sub_24A6AE690(v143, 0x6C69617465446E69, 0xEC00000077656956, v144);
    v145 = aBlock;
    if (v244)
    {
      v146 = v241 >> 24;
      LOBYTE(aBlock) = BYTE3(v241);
      FMIPLocationType.rawValue.getter();
      v244 = v133;
      v147 = objc_allocWithZone(MEMORY[0x277CCACA8]);
      v148 = sub_24A82CF94();

      v149 = [v147 initWithString_];

      v150 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v145;
      sub_24A6AE690(v149, 0x6E6F697461636F6CLL, 0xEE00656372756F53, v150);
      v151 = aBlock;
      LOBYTE(aBlock) = v146;
      FMIPLocationType.rawValue.getter();
      v152 = objc_allocWithZone(MEMORY[0x277CCACA8]);
      v153 = sub_24A82CF94();

      v154 = [v152 initWithString_];

      v155 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v151;
      sub_24A6AE690(v154, 0xD000000000000017, 0x800000024A84AE20, v155);
      v156 = aBlock;
      v157 = v240;
      [v157 horizontalAccuracy];
      v159 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v160 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v156;
      sub_24A6AE690(v159, 0xD00000000000001ALL, 0x800000024A84AF40, v160);
      v161 = aBlock;
      v162 = v236;
      sub_24A82CA24();
      v163 = [v157 timestamp];
      v233 = v46;
      v164 = v234;
      sub_24A82C9F4();

      sub_24A82C974();
      v166 = v165;
      v167 = v237;
      v243(v164, v237);
      v243(v162, v167);
      v168 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v169 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v161;
      sub_24A6AE690(v168, 0x6E6F697461636F6CLL, 0xEB00000000656741, v169);
      v170 = aBlock;
      v171 = v157;
      [v157 horizontalAccuracy];
      v173 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v174 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v170;
      sub_24A6AE690(v173, 0xD000000000000023, 0x800000024A84AE60, v174);
      v175 = aBlock;
      sub_24A82CA24();
      v176 = [v171 timestamp];
      sub_24A82C9F4();

      sub_24A82C974();
      v178 = v177;
      v179 = v164;
      v46 = v233;
      v243(v179, v167);
      v243(v162, v167);
      v180 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v181 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v175;
      sub_24A6AE690(v180, 0xD000000000000014, 0x800000024A84AE40, v181);
      v182 = aBlock;
      v183 = sub_24A82D5C4();
      v184 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v182;
      sub_24A6AE690(v183, 0x65736F7078457369, 0xE900000000000064, v184);
    }

    else
    {
      v185 = sub_24A82D5C4();
      v186 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v145;
      sub_24A6AE690(v185, 0x65736F7078457369, 0xE900000000000064, v186);
    }

    v187 = aBlock;
    v188 = v235;
    if (v235)
    {
      LOBYTE(aBlock) = BYTE3(v221);
      FMIPLocationType.rawValue.getter();
      v189 = objc_allocWithZone(MEMORY[0x277CCACA8]);
      v190 = sub_24A82CF94();

      v191 = [v189 initWithString_];

      v192 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v187;
      sub_24A6AE690(v191, 0xD00000000000001ALL, 0x800000024A84AF20, v192);
      v193 = aBlock;
      v194 = v188;
      [v194 horizontalAccuracy];
      v196 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v197 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v193;
      sub_24A6AE690(v196, 0xD000000000000026, 0x800000024A84AEF0, v197);
      v198 = aBlock;
      v199 = v236;
      sub_24A82CA24();
      v200 = [v194 timestamp];
      v201 = v234;
      sub_24A82C9F4();

      sub_24A82C974();
      v203 = v202;
      v204 = v237;
      v205 = v243;
      v243(v201, v237);
      v205(v199, v204);
      v206 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v207 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v198;
      sub_24A6AE690(v206, 0xD000000000000017, 0x800000024A84AED0, v207);

      v187 = aBlock;
    }

    v208 = v240;
    v209 = sub_24A82CF94();
    v210 = swift_allocObject();
    *(v210 + 16) = v187;
    v249 = sub_24A6D89D4;
    v250 = v210;
    aBlock = MEMORY[0x277D85DD0];
    v246 = 1107296256;
    v247 = sub_24A6AEADC;
    v248 = &unk_285DCE8E0;
    v211 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v211);

    goto LABEL_42;
  }

  v87 = v230;

  sub_24A7C3FB0(v229, v87, &v253);

  swift_endAccess();
  if (v235)
  {
    goto LABEL_36;
  }

  v212 = v220;
  sub_24A68FF3C(a1, v220, type metadata accessor for FMIPDevice);
  v213 = sub_24A82CD94();
  v214 = sub_24A82D504();
  if (os_log_type_enabled(v213, v214))
  {
    v215 = swift_slowAlloc();
    v216 = swift_slowAlloc();
    aBlock = v216;
    *v215 = 136315138;
    v217 = *v212;
    v218 = v212[1];

    sub_24A69F3E4(v212, type metadata accessor for FMIPDevice);
    v219 = sub_24A68761C(v217, v218, &aBlock);

    *(v215 + 4) = v219;
    _os_log_impl(&dword_24A675000, v213, v214, "FMIPAnalytics: cannot complete sendDeviceEvent. Current location and crowdsourced location are both nil.: (%s)", v215, 0xCu);
    sub_24A6876E8(v216);
    MEMORY[0x24C21E1D0](v216, -1, -1);
    MEMORY[0x24C21E1D0](v215, -1, -1);

LABEL_42:
    return;
  }

  sub_24A69F3E4(v212, type metadata accessor for FMIPDevice);
}

uint64_t static FMIPAnalytics.sendItemEvent(item:)(uint64_t a1)
{
  v2 = sub_24A82CDF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24A82CE54();
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v19);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMIPItem();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  if (qword_27EF5CC50 != -1)
  {
    swift_once();
  }

  v18[1] = qword_281514470;
  sub_24A68FF3C(a1, v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMIPItem);
  v14 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v15 = swift_allocObject();
  sub_24A68D6F8(v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for FMIPItem);
  aBlock[4] = sub_24A819164;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCE720;
  v16 = _Block_copy(aBlock);
  sub_24A82CE24();
  v20 = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v10, v6, v16);
  _Block_release(v16);
  (*(v3 + 8))(v6, v2);
  (*(v7 + 8))(v10, v19);
}

void sub_24A817F98(double *a1)
{
  v2 = type metadata accessor for FMIPItem();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A82CDC4();
  sub_24A6797D0(v6, qword_281518F88);
  sub_24A68FF3C(a1, v5, type metadata accessor for FMIPItem);
  v7 = sub_24A82CD94();
  v8 = sub_24A82D504();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136315138;
    v11 = *(v5 + 44);
    v12 = *(v5 + 45);

    sub_24A69F3E4(v5, type metadata accessor for FMIPItem);
    v13 = sub_24A68761C(v11, v12, aBlock);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_24A675000, v7, v8, "FMIPAnalytics: sendItemEvent for item (%s)", v9, 0xCu);
    sub_24A6876E8(v10);
    MEMORY[0x24C21E1D0](v10, -1, -1);
    MEMORY[0x24C21E1D0](v9, -1, -1);
  }

  else
  {

    sub_24A69F3E4(v5, type metadata accessor for FMIPItem);
  }

  if ((*(a1 + *(v2 + 84)) & 1) == 0)
  {
    v14 = sub_24A8191C4(a1);
    v15 = sub_24A6AE58C(MEMORY[0x277D84F90]);
    sub_24A7B83E4(v14, v15);
    v17 = v16;

    if (v17)
    {
    }

    else
    {
      v18 = sub_24A82CF94();
      v19 = swift_allocObject();
      *(v19 + 16) = v14;
      aBlock[4] = sub_24A6AEBB4;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A6AEADC;
      aBlock[3] = &unk_285DCE7F0;
      v20 = _Block_copy(aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v20);
    }
  }
}

uint64_t sub_24A8182AC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v76 = a2;
  v77 = a3;
  v4 = type metadata accessor for FMIPItem();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = (v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v70 - v11;
  v13 = type metadata accessor for FMIPItemGroup();
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v78 = (v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for FMIPDevice();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
LABEL_39:
    swift_once();
  }

  v21 = sub_24A82CDC4();
  sub_24A6797D0(v21, qword_281518F88);
  sub_24A68FF3C(a1, v20, type metadata accessor for FMIPDevice);
  v22 = sub_24A82CD94();
  v23 = sub_24A82D504();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v82 = v12;
    v25 = v24;
    v26 = swift_slowAlloc();
    v81 = v13;
    v27 = v26;
    aBlock[0] = v26;
    *v25 = 136315138;
    v79 = v17;
    v80 = v14;
    v28 = v5;
    v29 = v8;
    v30 = a1;
    v31 = *v20;
    v32 = *(v20 + 8);

    sub_24A69F3E4(v20, type metadata accessor for FMIPDevice);
    v33 = sub_24A68761C(v31, v32, aBlock);
    a1 = v30;
    v8 = v29;
    v5 = v28;
    v17 = v79;

    *(v25 + 4) = v33;
    v14 = v80;
    _os_log_impl(&dword_24A675000, v22, v23, "FMIPAnalytics: sendItemGoupEvent for itemGroup from device (%s)", v25, 0xCu);
    sub_24A6876E8(v27);
    v34 = v27;
    v13 = v81;
    MEMORY[0x24C21E1D0](v34, -1, -1);
    v35 = v25;
    v12 = v82;
    MEMORY[0x24C21E1D0](v35, -1, -1);
  }

  else
  {

    sub_24A69F3E4(v20, type metadata accessor for FMIPDevice);
  }

  sub_24A67E964(a1 + *(v17 + 128), v12, &unk_27EF5E0B0, &qword_24A8338B0);
  v36 = *(v14 + 48);
  v14 += 48;
  if (v36(v12, 1, v13) == 1)
  {
    return sub_24A67F378(v12, &unk_27EF5E0B0, &qword_24A8338B0);
  }

  v38 = v12;
  v39 = v78;
  sub_24A68D6F8(v38, v78, type metadata accessor for FMIPItemGroup);
  v40 = v39[5];
  v41 = *(v40 + 16);
  if (!v41)
  {
    return sub_24A69F3E4(v78, type metadata accessor for FMIPItemGroup);
  }

  v42 = 0;
  v13 = (v40 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));
  v43 = *(v5 + 72);
  v70[2] = "isBeaconOnlyDevice";
  v70[1] = v84;
  v74 = v8;
  v75 = a1;
  v72 = v13;
  v73 = v41;
  v71 = v43;
  while (1)
  {
    sub_24A68FF3C(v13 + v43 * v42, v8, type metadata accessor for FMIPItem);
    v44 = sub_24A8191C4(v8);
    sub_24A7B83E4(v44, MEMORY[0x277D84F98]);
    if ((v45 & 1) == 0)
    {
      break;
    }

    sub_24A69F3E4(v8, type metadata accessor for FMIPItem);

LABEL_10:
    if (++v42 == v41)
    {
      return sub_24A69F3E4(v78, type metadata accessor for FMIPItemGroup);
    }
  }

  v80 = v42;
  v12 = _s8FMIPCore13FMIPAnalyticsV26itemGroupSpecificEventInfo6device0cD00C021primaryPartIdentifierSDySSSo8NSObjectCGAA10FMIPDeviceV_AA08FMIPItemD0VAA0N0VSSSgtFZ_0(a1, v78, v8, v76, v77);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v44;
  v8 = (v12 + 64);
  v47 = -1 << v12[32];
  if (-v47 < 64)
  {
    v48 = ~(-1 << -v47);
  }

  else
  {
    v48 = -1;
  }

  a1 = v48 & *(v12 + 8);
  v79 = -1 << v12[32];
  v5 = (63 - v47) >> 6;
  v81 = v12;

  for (i = 0; ; i = v17)
  {
    if (!a1)
    {
      v52 = i;
      while (1)
      {
        v17 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          break;
        }

        if (v17 >= v5)
        {
          sub_24A6BAFBC();

          v67 = sub_24A82CF94();
          v68 = swift_allocObject();
          *(v68 + 16) = v44;
          v84[2] = sub_24A6D89D4;
          v84[3] = v68;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          v84[0] = sub_24A6AEADC;
          v84[1] = &unk_285DCE890;
          v69 = _Block_copy(aBlock);

          AnalyticsSendEventLazy();
          _Block_release(v69);

          v8 = v74;
          sub_24A69F3E4(v74, type metadata accessor for FMIPItem);
          a1 = v75;
          v13 = v72;
          v41 = v73;
          v42 = v80;
          v43 = v71;
          goto LABEL_10;
        }

        a1 = *&v8[v17];
        ++v52;
        if (a1)
        {
          LODWORD(v82) = isUniquelyReferenced_nonNull_native;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    LODWORD(v82) = isUniquelyReferenced_nonNull_native;
    v17 = i;
LABEL_25:
    v53 = __clz(__rbit64(a1)) | (v17 << 6);
    v54 = (v81[6] + 16 * v53);
    v55 = *v54;
    v12 = v54[1];
    v56 = *(v81[7] + 8 * v53);

    v13 = v56;
    v20 = sub_24A6A2D48(v55, v12);
    v58 = v44[2];
    v59 = (v57 & 1) == 0;
    v60 = v58 + v59;
    if (__OFADD__(v58, v59))
    {
      goto LABEL_37;
    }

    v14 = v57;
    if (v44[3] < v60)
    {
      break;
    }

    if ((v82 & 1) == 0)
    {
      sub_24A78612C();
    }

LABEL_31:
    a1 &= a1 - 1;
    v44 = aBlock[0];
    if (v14)
    {

      v50 = v44[7];
      v51 = *(v50 + 8 * v20);
      *(v50 + 8 * v20) = v13;
    }

    else
    {
      *(aBlock[0] + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v63 = (v44[6] + 16 * v20);
      *v63 = v55;
      v63[1] = v12;
      *(v44[7] + 8 * v20) = v13;
      v64 = v44[2];
      v65 = __OFADD__(v64, 1);
      v66 = v64 + 1;
      if (v65)
      {
        goto LABEL_38;
      }

      v44[2] = v66;
    }

    isUniquelyReferenced_nonNull_native = 1;
  }

  sub_24A781340(v60, v82 & 1);
  v61 = sub_24A6A2D48(v55, v12);
  if ((v14 & 1) == (v62 & 1))
  {
    v20 = v61;
    goto LABEL_31;
  }

  result = sub_24A82DC44();
  __break(1u);
  return result;
}

uint64_t sub_24A818A8C(double a1)
{
  if (a1 <= 5.0)
  {
    return 5;
  }

  if (a1 <= 25.0)
  {
    return 25;
  }

  if (a1 <= 50.0)
  {
    return 50;
  }

  if (a1 <= 75.0)
  {
    return 75;
  }

  if (a1 <= 100.0)
  {
    return 100;
  }

  if (a1 <= 150.0)
  {
    return 150;
  }

  if (a1 <= 200.0)
  {
    return 200;
  }

  v1 = 600;
  v2 = 900;
  v3 = 1600;
  if (a1 <= 1500.0)
  {
    v3 = 1500;
  }

  if (a1 > 900.0)
  {
    v2 = v3;
  }

  if (a1 > 600.0)
  {
    v1 = v2;
  }

  if (a1 > 300.0)
  {
    return v1;
  }

  else
  {
    return 300;
  }
}

uint64_t sub_24A818B9C(double a1)
{
  if (a1 <= 0.0)
  {
    return 0;
  }

  if (a1 <= 60.0)
  {
    return 60;
  }

  if (a1 <= 120.0)
  {
    return 120;
  }

  if (a1 <= 180.0)
  {
    return 180;
  }

  if (a1 <= 240.0)
  {
    return 240;
  }

  if (a1 <= 300.0)
  {
    return 300;
  }

  if (a1 <= 420.0)
  {
    return 420;
  }

  if (a1 <= 600.0)
  {
    return 600;
  }

  if (a1 <= 900.0)
  {
    return 900;
  }

  if (a1 <= 1200.0)
  {
    return 1200;
  }

  if (a1 <= 1800.0)
  {
    return 1800;
  }

  if (a1 <= 2400.0)
  {
    return 2400;
  }

  if (a1 <= 3000.0)
  {
    return 3000;
  }

  if (a1 <= 3600.0)
  {
    return 3600;
  }

  if (a1 <= 10800.0)
  {
    return 10800;
  }

  if (a1 <= 21600.0)
  {
    return 21600;
  }

  if (a1 <= 43200.0)
  {
    return 43200;
  }

  if (a1 <= 86400.0)
  {
    return 86400;
  }

  if (a1 > 604800.0)
  {
    return 700000;
  }

  return 604800;
}

uint64_t sub_24A818DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a5;
  v30 = a6;
  v27[2] = a4;
  v28 = a2;
  v8 = sub_24A82CDF4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_24A82CE54();
  v13 = *(v31 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v31);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FMIPDevice();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF5CC50 != -1)
  {
    swift_once();
  }

  v27[1] = qword_281514470;
  sub_24A68FF3C(a1, v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMIPDevice);
  v21 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v22 = (v19 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_24A68D6F8(v20, v23 + v21, type metadata accessor for FMIPDevice);
  v24 = (v23 + v22);
  *v24 = v28;
  v24[1] = a3;
  aBlock[4] = v29;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = v30;
  v25 = _Block_copy(aBlock);

  sub_24A82CE24();
  v32 = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v16, v12, v25);
  _Block_release(v25);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v31);
}

void sub_24A819164()
{
  v1 = *(type metadata accessor for FMIPItem() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_24A817F98(v2);
}

uint64_t sub_24A8191C4(double *a1)
{
  v2 = sub_24A82CA34();
  v3 = *(v2 - 8);
  v244 = v2;
  v245 = v3;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v238 = &v226 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v236 = &v226 - v7;
  v235 = sub_24A82CB04();
  v234 = *(v235 - 8);
  v8 = *(v234 + 64);
  MEMORY[0x28223BE20](v235);
  v232 = &v226 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_24A82CB24();
  v231 = *(v233 - 8);
  v10 = *(v231 + 64);
  MEMORY[0x28223BE20](v233);
  v230 = &v226 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = type metadata accessor for FMIPProductType();
  v12 = *(*(v229 - 8) + 64);
  MEMORY[0x28223BE20](v229);
  v241 = (&v226 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_24A6AE58C(MEMORY[0x277D84F90]);
  if (qword_27EF5CC48 != -1)
  {
    swift_once();
  }

  v15 = *(a1 + 44);
  v16 = *(a1 + 45);
  swift_beginAccess();
  v17 = qword_27EF78FD0;
  v18 = *(qword_27EF78FD0 + 16);
  v19 = 0;
  v243 = v14;
  v237 = v15;
  if (v18 && (v20 = sub_24A6A2D48(v15, v16), (v21 & 1) != 0))
  {
    v22 = (*(v17 + 56) + 24 * v20);
    v23 = *v22;
    v24 = v22[1];
    v25 = v22[2];
    v26 = v22[3];
    v27 = *(v22 + 1);
    v19 = *(v22 + 2);
    v28 = 256;
    if (!v24)
    {
      v28 = 0;
    }

    v29 = v28 | v23;
    v30 = 0x10000;
    if (!v25)
    {
      v30 = 0;
    }

    v31 = v29 | v30 | (v26 << 24);
    v32 = v27;
  }

  else
  {
    v31 = 0;
    v27 = 0;
  }

  swift_endAccess();
  v33 = *(a1 + 48);
  v34 = *(a1 + 49);
  v242 = a1[50];
  v35 = *(a1 + 40);
  v226 = *(a1 + 39);
  v246 = a1;
  v239 = v35;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v36 = sub_24A82CDC4();
  sub_24A6797D0(v36, qword_281518F88);
  v37 = v34;
  v38 = sub_24A82CD94();
  v39 = sub_24A82D504();

  v40 = os_log_type_enabled(v38, v39);
  v240 = v37;
  if (v40)
  {
    v227 = v16;
    v41 = v27;
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v247 = v43;
    *v42 = 136315138;
    v44 = v34;
    if (v34)
    {
      LOBYTE(v252) = BYTE3(v33);
      v45 = FMIPLocationType.rawValue.getter();
      v47 = v46;
    }

    else
    {
      v47 = 0xEB000000006E6F69;
      v45 = 0x7461636F6C206F6ELL;
    }

    v48 = sub_24A68761C(v45, v47, &v247);

    *(v42 + 4) = v48;
    _os_log_impl(&dword_24A675000, v38, v39, "FMIPAnalytics: item location type (%s)", v42, 0xCu);
    sub_24A6876E8(v43);
    MEMORY[0x24C21E1D0](v43, -1, -1);
    MEMORY[0x24C21E1D0](v42, -1, -1);

    v27 = v41;
    v37 = v240;
    v34 = v44;
    v16 = v227;
  }

  else
  {
  }

  v49 = v246;
  v50 = v242;
  if (!v34)
  {
    if (!v27)
    {
      return v243;
    }

    v56 = v27;
    v57 = v37;
LABEL_26:

    swift_beginAccess();
    v227 = v34;
    if (v34)
    {
LABEL_31:
      v59 = v37;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v252 = qword_27EF78FD0;
      sub_24A784C04(v33 & 0xFF010101, v59, v237, v16, isUniquelyReferenced_nonNull_native, v50);

      qword_27EF78FD0 = v252;
      swift_endAccess();
LABEL_32:
      v237 = v33;
      v228 = v27;
      *&v61 = COERCE_DOUBLE(sub_24A679170(0, &qword_27EF5EF98, 0x277CCABB0));
      v62 = sub_24A82D5C4();
      v63 = v243;
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v247 = v63;
      sub_24A6AE690(v62, 0xD000000000000012, 0x800000024A84AF80, v64);
      v65 = v247;
      v243 = type metadata accessor for FMIPItem();
      v66 = v241;
      sub_24A68FF3C(v49 + v243[24], v241, type metadata accessor for FMIPProductType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v242 = *&v61;
      if (EnumCaseMultiPayload > 1)
      {
        FMIPProductType.productInformation.getter(&v247);
        v74 = v250;
        if (v250)
        {
          v75 = v251;
          sub_24A67DF6C(&v247, v250);
          (*(v75 + 32))(v74, v75);
          sub_24A6876E8(&v247);
        }

        else
        {
          sub_24A67F378(&v247, &qword_27EF5DF48, &qword_24A839DA0);
        }

        v78 = objc_allocWithZone(MEMORY[0x277CCACA8]);
        v79 = sub_24A82CF94();

        v80 = [v78 initWithString_];

        v81 = swift_isUniquelyReferenced_nonNull_native();
        v247 = v65;
        sub_24A6AE690(v80, 0xD000000000000013, 0x800000024A84AE90, v81);
        v82 = v247;
        FMIPProductType.productInformation.getter(&v247);
        v83 = v250;
        if (v250)
        {
          v84 = v251;
          sub_24A67DF6C(&v247, v250);
          (*(v84 + 40))(v83, v84);
          sub_24A6876E8(&v247);
        }

        else
        {
          sub_24A67F378(&v247, &qword_27EF5DF48, &qword_24A839DA0);
        }

        v85 = objc_allocWithZone(MEMORY[0x277CCACA8]);
        v86 = sub_24A82CF94();

        v87 = [v85 initWithString_];

        v88 = swift_isUniquelyReferenced_nonNull_native();
        v247 = v82;
        sub_24A6AE690(v87, 0x74636166756E616DLL, 0xEC00000072657275, v88);
        v89 = v247;
        v90 = (v246 + v243[20]);
        v91 = *v90;
        v92 = v90[1];
        v93 = objc_allocWithZone(MEMORY[0x277CCACA8]);
        v94 = sub_24A82CF94();
        v95 = [v93 initWithString_];

        v96 = swift_isUniquelyReferenced_nonNull_native();
        v247 = v89;
        sub_24A6AE690(v95, 0xD000000000000019, 0x800000024A84AEB0, v96);
        v97 = v247;
        sub_24A67F378(v241, &qword_27EF5D360, &unk_24A836200);
LABEL_54:
        FMIPProductType.productInformation.getter(&v247);
        v117 = v250;
        if (v250)
        {
          v118 = v251;
          sub_24A67DF6C(&v247, v250);
          v119 = (*(v118 + 56))(v117, v118);
          sub_24A6876E8(&v247);
          if (v119 >= 0.0)
          {
            if (v119 <= 5.0)
            {
              v120 = 5;
            }

            else
            {
              v121 = 10;
              v122 = 25;
              if (v119 <= 20.0)
              {
                v122 = 20;
              }

              if (v119 > 10.0)
              {
                v121 = v122;
              }

              if (v119 > 8.0)
              {
                v120 = v121;
              }

              else
              {
                v120 = 8;
              }
            }
          }

          else
          {
            v120 = 0;
          }

          v123 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          v124 = swift_isUniquelyReferenced_nonNull_native();
          v247 = v97;
          sub_24A6AE690(v123, 0x74696D736E617274, 0xED00007265776F50, v124);
          v97 = v247;
        }

        else
        {
          sub_24A67F378(&v247, &qword_27EF5DF48, &qword_24A839DA0);
        }

        v125 = v230;
        sub_24A82CAF4();
        v126 = v234;
        v127 = v232;
        v128 = v235;
        (*(v234 + 104))(v232, *MEMORY[0x277CC9980], v235);
        v129 = v236;
        sub_24A82CA24();
        v130 = sub_24A82CB14();
        v241 = *(v245 + 8);
        v245 += 8;
        (v241)(v129, v244);
        (*(v126 + 8))(v127, v128);
        (*(v231 + 8))(v125, v233);
        v131 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v132 = swift_isUniquelyReferenced_nonNull_native();
        v247 = v97;
        sub_24A6AE690(v131, 0x6144664F656D6974, 0xE900000000000079, v132);
        v134 = v246;
        v133 = v247;
        v135 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v136 = swift_isUniquelyReferenced_nonNull_native();
        v247 = v133;
        sub_24A6AE690(v135, 0x4C79726574746162, 0xEC0000006C657665, v136);
        v137 = v247;
        sub_24A679170(0, &qword_27EF5F900, 0x277CCACA8);
        v138 = sub_24A82D614();
        v139 = swift_isUniquelyReferenced_nonNull_native();
        v247 = v137;
        sub_24A6AE690(v138, 0x5379726574746162, 0xED00007375746174, v139);
        v140 = v247;
        v141 = *(v134 + v243[19]);
        v142 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
        v143 = swift_isUniquelyReferenced_nonNull_native();
        v247 = v140;
        sub_24A6AE690(v142, 0x65646F4D74736F6CLL, 0xEF64656C62616E45, v143);
        v144 = v247;
        v145 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
        v146 = swift_isUniquelyReferenced_nonNull_native();
        v247 = v144;
        sub_24A6AE690(v145, 0xD000000000000016, 0x800000024A84AF60, v146);
        v147 = v247;
        v148 = sub_24A82D614();
        v149 = swift_isUniquelyReferenced_nonNull_native();
        v247 = v147;
        sub_24A6AE690(v148, 0x7453656369766564, 0xEC00000073757461, v149);
        v150 = v247;
        v151 = sub_24A82D5C4();
        v152 = swift_isUniquelyReferenced_nonNull_native();
        v247 = v150;
        sub_24A6AE690(v151, 0x6544736968547369, 0xEC00000065636976, v152);
        v153 = v247;
        v154 = sub_24A82D5C4();
        v155 = swift_isUniquelyReferenced_nonNull_native();
        v247 = v153;
        sub_24A6AE690(v154, 0x6465726168537369, 0xEE00656369766544, v155);
        v156 = v247;
        v157 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
        v158 = swift_isUniquelyReferenced_nonNull_native();
        v247 = v156;
        sub_24A6AE690(v157, 0x6E6E6F4354427369, 0xED00006465746365, v158);
        v159 = v247;
        v160 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
        v161 = swift_isUniquelyReferenced_nonNull_native();
        v247 = v159;
        sub_24A6AE690(v160, 0x697461636F4C7369, 0xEA0000000000676ELL, v161);
        v162 = v247;
        v163 = sub_24A82D5C4();
        v164 = swift_isUniquelyReferenced_nonNull_native();
        v247 = v162;
        sub_24A6AE690(v163, 0x6C69617465446E69, 0xEC00000077656956, v164);
        v165 = v247;
        if (v227)
        {
          v166 = v237 >> 24;
          LOBYTE(v247) = BYTE3(v237);
          FMIPLocationType.rawValue.getter();
          v167 = objc_allocWithZone(MEMORY[0x277CCACA8]);
          v168 = sub_24A82CF94();

          v169 = [v167 initWithString_];

          v170 = swift_isUniquelyReferenced_nonNull_native();
          v247 = v165;
          sub_24A6AE690(v169, 0x6E6F697461636F6CLL, 0xEE00656372756F53, v170);
          v171 = v247;
          LOBYTE(v247) = v166;
          FMIPLocationType.rawValue.getter();
          v172 = objc_allocWithZone(MEMORY[0x277CCACA8]);
          v173 = sub_24A82CF94();

          v174 = [v172 initWithString_];

          v175 = swift_isUniquelyReferenced_nonNull_native();
          v247 = v171;
          sub_24A6AE690(v174, 0xD000000000000017, 0x800000024A84AE20, v175);
          v176 = v247;
          v177 = v240;
          [v177 horizontalAccuracy];
          v179 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          v180 = swift_isUniquelyReferenced_nonNull_native();
          v247 = v176;
          sub_24A6AE690(v179, 0xD00000000000001ALL, 0x800000024A84AF40, v180);
          v181 = v247;
          sub_24A82CA24();
          v182 = [v177 timestamp];
          v183 = v238;
          sub_24A82C9F4();

          sub_24A82C974();
          v185 = v184;
          v186 = v244;
          v187 = v241;
          (v241)(v183, v244);
          v187(v129, v186);
          v188 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          v189 = swift_isUniquelyReferenced_nonNull_native();
          v247 = v181;
          sub_24A6AE690(v188, 0x6E6F697461636F6CLL, 0xEB00000000656741, v189);
          v190 = v247;
          v191 = sub_24A82D5C4();
          v192 = swift_isUniquelyReferenced_nonNull_native();
          v247 = v190;
          sub_24A6AE690(v191, 0x65736F7078457369, 0xE900000000000064, v192);
          v193 = v247;
          [v177 horizontalAccuracy];
          v195 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          v196 = swift_isUniquelyReferenced_nonNull_native();
          v247 = v193;
          sub_24A6AE690(v195, 0xD000000000000023, 0x800000024A84AE60, v196);
          v197 = v247;
          sub_24A82CA24();
          v198 = [v177 timestamp];
          sub_24A82C9F4();

          sub_24A82C974();
          v200 = v199;
          v187(v183, v186);
          v187(v129, v186);
          v201 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          v202 = swift_isUniquelyReferenced_nonNull_native();
          v247 = v197;
          sub_24A6AE690(v201, 0xD000000000000014, 0x800000024A84AE40, v202);

          v55 = v247;
          v203 = v228;
          v204 = v187;
          v205 = v239;
          if (v239)
          {
LABEL_70:
            LOBYTE(v247) = BYTE3(v226);
            FMIPLocationType.rawValue.getter();
            v206 = v55;
            v207 = objc_allocWithZone(MEMORY[0x277CCACA8]);
            v208 = sub_24A82CF94();

            v209 = [v207 initWithString_];

            v210 = swift_isUniquelyReferenced_nonNull_native();
            v247 = v206;
            sub_24A6AE690(v209, 0xD00000000000001ALL, 0x800000024A84AF20, v210);
            v211 = v247;
            v212 = v205;
            [v212 horizontalAccuracy];
            v214 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            v215 = swift_isUniquelyReferenced_nonNull_native();
            v247 = v211;
            sub_24A6AE690(v214, 0xD000000000000026, 0x800000024A84AEF0, v215);
            v216 = v247;
            sub_24A82CA24();
            v217 = [v212 timestamp];
            v218 = v238;
            sub_24A82C9F4();

            sub_24A82C974();
            v220 = v219;
            v204(v218, v186);
            v204(v129, v186);
            v221 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            v222 = swift_isUniquelyReferenced_nonNull_native();
            v247 = v216;
            sub_24A6AE690(v221, 0xD000000000000017, 0x800000024A84AED0, v222);

            return v247;
          }
        }

        else
        {
          v223 = sub_24A82D5C4();
          v224 = swift_isUniquelyReferenced_nonNull_native();
          v247 = v165;
          sub_24A6AE690(v223, 0x65736F7078457369, 0xE900000000000064, v224);
          v55 = v247;
          v186 = v244;
          v203 = v228;
          v204 = v241;
          v205 = v239;
          if (v239)
          {
            goto LABEL_70;
          }
        }

        return v55;
      }

      sub_24A69F3E4(v66, type metadata accessor for FMIPProductType);
      FMIPProductType.productInformation.getter(&v247);
      v68 = v250;
      if (v250)
      {
        v69 = v251;
        sub_24A67DF6C(&v247, v250);
        v70 = (*(v69 + 32))(v68, v69);
        v72 = v71;

        if ((v72 & 0x2000000000000000) != 0)
        {
          v73 = HIBYTE(v72) & 0xF;
        }

        else
        {
          v73 = v70 & 0xFFFFFFFFFFFFLL;
        }

        sub_24A6876E8(&v247);
        if (!v73)
        {
          goto LABEL_50;
        }
      }

      else
      {
        sub_24A67F378(&v247, &qword_27EF5DF48, &qword_24A839DA0);
      }

      FMIPProductType.productInformation.getter(&v247);
      v76 = v250;
      if (v250)
      {
        v77 = v251;
        sub_24A67DF6C(&v247, v250);
        (*(v77 + 32))(v76, v77);
        sub_24A6876E8(&v247);
      }

      else
      {
        sub_24A67F378(&v247, &qword_27EF5DF48, &qword_24A839DA0);
      }

LABEL_50:
      v98 = objc_allocWithZone(MEMORY[0x277CCACA8]);
      v99 = sub_24A82CF94();

      v100 = [v98 initWithString_];

      v101 = swift_isUniquelyReferenced_nonNull_native();
      v247 = v65;
      sub_24A6AE690(v100, 0x6D614E6C65646F6DLL, 0xE900000000000065, v101);
      v102 = v247;
      FMIPProductType.productInformation.getter(&v247);
      v103 = v250;
      if (v250)
      {
        v104 = v251;
        sub_24A67DF6C(&v247, v250);
        (*(v104 + 40))(v103, v104);
        sub_24A6876E8(&v247);
      }

      else
      {
        sub_24A67F378(&v247, &qword_27EF5DF48, &qword_24A839DA0);
      }

      v105 = objc_allocWithZone(MEMORY[0x277CCACA8]);
      v106 = sub_24A82CF94();

      v107 = [v105 initWithString_];

      v108 = swift_isUniquelyReferenced_nonNull_native();
      v247 = v102;
      sub_24A6AE690(v107, 0x74636166756E616DLL, 0xEC00000072657275, v108);
      v109 = v247;
      v110 = (v49 + v243[20]);
      v111 = *v110;
      v112 = v110[1];
      v113 = objc_allocWithZone(MEMORY[0x277CCACA8]);
      v114 = sub_24A82CF94();
      v115 = [v113 initWithString_];

      v116 = swift_isUniquelyReferenced_nonNull_native();
      v247 = v109;
      sub_24A6AE690(v115, 0x65566D6574737973, 0xED00006E6F697372, v116);
      v97 = v247;
      goto LABEL_54;
    }

    sub_24A7C3FB0(v237, v16, &v252);

    swift_endAccess();
    if (v239)
    {
      goto LABEL_32;
    }

    return v243;
  }

  v247 = v33;
  v248 = v34;
  v249 = v242;
  if (!v27)
  {
    v58 = v37;
    v56 = 0;
    goto LABEL_26;
  }

  v227 = v34;
  LOWORD(v252) = v31 & 0x101;
  BYTE2(v252) = BYTE2(v31) & 1;
  BYTE3(v252) = HIBYTE(v31);
  v253 = v27;
  v254 = v19;
  v51 = v37;
  v52 = v27;
  v53 = v51;
  v54 = _s8FMIPCore12FMIPLocationV2eeoiySbAC_ACtFZ_0(&v247, &v252);

  if ((v54 & 1) == 0)
  {
    swift_beginAccess();
    goto LABEL_31;
  }

  return v243;
}

uint64_t sub_24A81AB34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItem();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  v12 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v37 - v14;
  v16 = type metadata accessor for FMIPDevice();
  sub_24A67E964(a1 + *(v16 + 128), v15, &unk_27EF5E0B0, &qword_24A8338B0);
  v17 = type metadata accessor for FMIPItemGroup();
  if ((*(*(v17 - 8) + 48))(v15, 1, v17) == 1)
  {
    sub_24A67F378(v15, &unk_27EF5E0B0, &qword_24A8338B0);
LABEL_7:
    v27 = 0;
    v28 = 0;
    v29 = 0;
    return v28 | v29 | v27;
  }

  v18 = *(v15 + 6);

  v19 = sub_24A69F3E4(v15, type metadata accessor for FMIPItemGroup);
  MEMORY[0x28223BE20](v19);
  *(&v37 - 2) = a2;
  v20 = sub_24A79F6D4(sub_24A81BAA8, (&v37 - 4), v18);

  if (!v20)
  {
    goto LABEL_7;
  }

  v37 = 0;
  v21 = 1 << *(v20 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v20 + 56);
  v24 = (v21 + 63) >> 6;

  v38 = 0;
  v39 = 0;
  v26 = 0;
  while (v23)
  {
LABEL_14:
    v31 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    sub_24A68FF3C(*(v20 + 48) + *(v5 + 72) * (v31 | (v26 << 6)), v11, type metadata accessor for FMIPItem);
    sub_24A68D6F8(v11, v9, type metadata accessor for FMIPItem);
    v32 = &v9[*(v4 + 64)];
    if (*(v32 + 1))
    {
      v33 = v32[32];
      result = sub_24A69F3E4(v9, type metadata accessor for FMIPItem);
      if (v33 <= 1)
      {
        if (v33)
        {
          goto LABEL_26;
        }
      }

      else if (v33 != 4)
      {
        if (v33 == 2)
        {
          HIDWORD(v38) = 1;
        }

        else
        {
          LODWORD(v38) = 1;
        }
      }
    }

    else
    {
      v34 = &v9[*(v4 + 56)];
      v35 = *v34 == 1702060355 && *(v34 + 1) == 0xE400000000000000;
      if (v35 || (sub_24A82DC04() & 1) != 0)
      {
        result = sub_24A69F3E4(v9, type metadata accessor for FMIPItem);
LABEL_26:
        v39 = 1;
      }

      else
      {
        result = sub_24A69F3E4(v9, type metadata accessor for FMIPItem);
      }
    }
  }

  while (1)
  {
    v30 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      return result;
    }

    if (v30 >= v24)
    {
      break;
    }

    v23 = *(v20 + 56 + 8 * v30);
    ++v26;
    if (v23)
    {
      v26 = v30;
      goto LABEL_14;
    }
  }

  v36 = *(v20 + 16);

  if ((v36 == 1) | v39 & 1)
  {
    v27 = 0x10000;
  }

  else
  {
    v27 = 0;
  }

  if (v38)
  {
    v28 = 256;
  }

  else
  {
    v28 = 0;
  }

  v29 = BYTE4(v38) & 1;
  return v28 | v29 | v27;
}

unint64_t _s8FMIPCore13FMIPAnalyticsV26itemGroupSpecificEventInfo6device0cD00C021primaryPartIdentifierSDySSSo8NSObjectCGAA10FMIPDeviceV_AA08FMIPItemD0VAA0N0VSSSgtFZ_0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v106 = a3;
  v108 = a1;
  v8 = sub_24A82CA34();
  v102 = *(v8 - 8);
  v103 = v8;
  v9 = *(v102 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v101 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v100 = &v98 - v12;
  v13 = type metadata accessor for FMIPItem();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A6BBA94(&qword_27EF5D018, &qword_24A830E38);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v107 = &v98 - v23;
  result = sub_24A6AE58C(MEMORY[0x277D84F90]);
  v104 = result;
  v105 = a2;
  v25 = a2[5];
  v26 = *(v25 + 16);
  if (!v26)
  {
LABEL_12:
    v30 = v107;
    (*(v14 + 56))(v107, 1, 1, v13);
    if (a5)
    {
LABEL_13:
      sub_24A67E964(v30, v22, &qword_27EF5D018, &qword_24A830E38);
      if ((*(v14 + 48))(v22, 1, v13) == 1)
      {
        sub_24A67F378(v22, &qword_27EF5D018, &qword_24A830E38);
      }

      else
      {
        v31 = *(v22 + 48);
        v32 = *(v22 + 49);
        v33 = v32;
        sub_24A69F3E4(v22, type metadata accessor for FMIPItem);
        if (v32)
        {
          *&v99 = v31;
LABEL_18:
          v40 = v106;
          v41 = v104;
          v43 = *(v108 + 136);
          v42 = *(v108 + 144);
          v44 = objc_allocWithZone(MEMORY[0x277CCACA8]);
          v45 = sub_24A82CF94();
          v46 = [v44 initWithString_];

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v113[0] = v41;
          sub_24A6AE690(v46, 0x6D614E6C65646F6DLL, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
          v48 = v113[0];
          v49 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
          v50 = swift_isUniquelyReferenced_nonNull_native();
          v113[0] = v48;
          sub_24A6AE690(v49, 0x6E694654426E6163, 0xEC000000676E6964, v50);
          v51 = v113[0];
          v52 = v40 + *(v13 + 64);
          if (*(v52 + 8))
          {
            *(v52 + 32);
          }

          else
          {
            v53 = (v40 + *(v13 + 56));
            if (*v53 != 1702060355 || v53[1] != 0xE400000000000000)
            {
              sub_24A82DC04();
            }
          }

          v54 = objc_allocWithZone(MEMORY[0x277CCACA8]);
          v55 = sub_24A82CF94();

          v56 = [v54 initWithString_];

          v57 = swift_isUniquelyReferenced_nonNull_native();
          v113[0] = v51;
          sub_24A6AE690(v56, 0x6570795474726170, 0xE800000000000000, v57);
          v58 = v113[0];
          if (a5)
          {
            if (*(v40 + 352) == a4 && *(v40 + 360) == a5)
            {
              v59 = 1;
            }

            else
            {
              v59 = sub_24A82DC04();
            }
          }

          else
          {
            v59 = 0;
          }

          v60 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
          v61 = swift_isUniquelyReferenced_nonNull_native();
          v113[0] = v58;
          sub_24A6AE690(v60, 0x72616D6972507369, 0xED00007472615079, v61);
          v62 = v113[0];
          v63 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
          v64 = swift_isUniquelyReferenced_nonNull_native();
          v113[0] = v62;
          sub_24A6AE690(v63, 0xD000000000000015, 0x800000024A84ADE0, v64);
          v65 = v113[0];
          if (v32)
          {
            LOBYTE(v113[0]) = BYTE3(v99);
            FMIPLocationType.rawValue.getter();
            v66 = objc_allocWithZone(MEMORY[0x277CCACA8]);
            v67 = sub_24A82CF94();

            v68 = [v66 initWithString_];

            v69 = swift_isUniquelyReferenced_nonNull_native();
            v113[0] = v65;
            sub_24A6AE690(v68, 0xD000000000000017, 0x800000024A84AE20, v69);
            v70 = v113[0];
            v32 = v32;
            v71 = v100;
            sub_24A82CA24();
            v72 = [v32 timestamp];
            v73 = v101;
            sub_24A82C9F4();

            sub_24A82C974();
            v75 = v74;
            v76 = v103;
            v77 = *(v102 + 8);
            v77(v73, v103);
            v77(v71, v76);
            v78 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            v79 = swift_isUniquelyReferenced_nonNull_native();
            v113[0] = v70;
            sub_24A6AE690(v78, 0xD000000000000014, 0x800000024A84AE40, v79);
            v80 = v113[0];
            [v32 horizontalAccuracy];
            v82 = sub_24A818A8C(v81);
            v83 = objc_allocWithZone(MEMORY[0x277CCABB0]);
            v40 = v106;
            v84 = [v83 initWithInteger_];
            v85 = swift_isUniquelyReferenced_nonNull_native();
            v113[0] = v80;
            sub_24A6AE690(v84, 0xD000000000000023, 0x800000024A84AE60, v85);

            v65 = v113[0];
          }

          v86 = sub_24A81AB34(v108, v40);
          v87 = (v86 >> 8) & 1;
          v88 = HIWORD(v86) & 1;
          v89 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
          v90 = swift_isUniquelyReferenced_nonNull_native();
          v113[0] = v65;
          sub_24A6AE690(v89, 0x57646570756F7267, 0xEF7466654C687469, v90);
          v91 = v113[0];
          v92 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
          v93 = swift_isUniquelyReferenced_nonNull_native();
          v113[0] = v91;
          sub_24A6AE690(v92, 0xD000000000000010, 0x800000024A84AE00, v93);
          v94 = v113[0];
          v95 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
          v96 = swift_isUniquelyReferenced_nonNull_native();
          v113[0] = v94;
          sub_24A6AE690(v95, 0x57646570756F7267, 0xEF65736143687469, v96);

          v97 = v113[0];
          sub_24A67F378(v107, &qword_27EF5D018, &qword_24A830E38);
          return v97;
        }
      }
    }

    v34 = v108;
    v111 = *(v108 + 256);
    v99 = *(v108 + 264);
    v112 = v99;
    v109 = *(v108 + 280);
    v98 = *(v108 + 288);
    v110 = v98;
    v35 = (*(v108 + 216) >> 5) & 1;
    v36 = *(type metadata accessor for FMIPDevice() + 128);
    v37 = v99;
    v38 = v98;
    v39 = v37;
    sub_24A7DC368(&v111, &v109, v35, v34 + v36, v113);

    v32 = v113[1];
    *&v99 = v113[0];
    goto LABEL_18;
  }

  v27 = 0;
  v28 = v25 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  while (v27 < *(v25 + 16))
  {
    sub_24A68FF3C(v28 + *(v14 + 72) * v27, v17, type metadata accessor for FMIPItem);
    if (a5)
    {
      v29 = *(v17 + 44) == a4 && *(v17 + 45) == a5;
      if (v29 || (sub_24A82DC04() & 1) != 0)
      {
        v30 = v107;
        sub_24A68D6F8(v17, v107, type metadata accessor for FMIPItem);
        (*(v14 + 56))(v30, 0, 1, v13);
        goto LABEL_13;
      }
    }

    ++v27;
    result = sub_24A69F3E4(v17, type metadata accessor for FMIPItem);
    if (v26 == v27)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A81BA14(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A81BA5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A81BAA8(uint64_t *a1)
{
  v2 = *a1;
  v4[2] = *(v1 + 16);
  return sub_24A7FD9FC(sub_24A81BAF0, v4, v2) & 1;
}

uint64_t sub_24A81BAF0(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(a1 + 352) == *(v2 + 352) && *(a1 + 360) == *(v2 + 360))
  {
    return 1;
  }

  else
  {
    return sub_24A82DC04() & 1;
  }
}

uint64_t sub_24A81BB48()
{
  v1 = type metadata accessor for FMIPDevice();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v90 = *(*(v1 - 1) + 64);
  v4 = (v0 + v3);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = *(v0 + v3 + 40);

  v8 = *(v0 + v3 + 56);

  v9 = *(v0 + v3 + 72);

  v10 = *(v0 + v3 + 96);

  v11 = *(v0 + v3 + 112);

  v12 = *(v0 + v3 + 128);

  v13 = *(v0 + v3 + 144);

  v14 = *(v0 + v3 + 160);

  v15 = *(v0 + v3 + 176);

  v16 = *(v0 + v3 + 224);

  v17 = *(v0 + v3 + 232);

  v18 = *(v0 + v3 + 248);

  if (*(v0 + v3 + 472))
  {
    v19 = *(v4 + 39);

    v20 = *(v4 + 40);

    v21 = *(v4 + 42);

    v22 = *(v4 + 44);

    v23 = *(v4 + 46);

    v24 = *(v4 + 48);

    v25 = *(v4 + 50);

    v26 = *(v4 + 52);

    v27 = *(v4 + 54);

    v28 = *(v4 + 56);

    v29 = *(v4 + 58);

    v30 = *(v4 + 59);

    v31 = *(v4 + 61);

    v32 = *(v4 + 63);

    v33 = *(v4 + 65);

    v34 = *(v4 + 67);

    v35 = *(v4 + 69);

    v36 = *(v4 + 71);

    v37 = *(v4 + 73);
  }

  v38 = &v4[v1[28]];
  v39 = type metadata accessor for FMIPPlaySoundMetadata();
  if (!(*(*(v39 - 1) + 48))(v38, 1, v39))
  {
    v40 = v39[5];
    v41 = sub_24A82CA34();
    (*(*(v41 - 8) + 8))(&v38[v40], v41);
    v42 = *&v38[v39[6] + 8];

    v43 = *&v38[v39[7] + 8];

    v44 = *&v38[v39[8] + 8];

    v45 = *&v38[v39[9] + 8];
  }

  v46 = &v4[v1[29]];
  v47 = type metadata accessor for FMIPDeviceLostModeMetadata();
  if (!(*(*(v47 - 8) + 48))(v46, 1, v47))
  {
    v48 = *(v46 + 2);

    v49 = *(v46 + 4);

    v50 = *(v46 + 6);

    v51 = *(v47 + 48);
    v52 = sub_24A82CA34();
    (*(*(v52 - 8) + 8))(&v46[v51], v52);
  }

  v53 = &v4[v1[30]];
  v54 = type metadata accessor for FMIPLockMetadata();
  if (!(*(*(v54 - 8) + 48))(v53, 1, v54))
  {
    v55 = *(v54 + 20);
    v56 = sub_24A82CA34();
    (*(*(v56 - 8) + 8))(&v53[v55], v56);
  }

  v57 = &v4[v1[31]];
  v58 = type metadata accessor for FMIPEraseMetadata();
  if (!(*(*(v58 - 1) + 48))(v57, 1, v58))
  {
    v59 = v58[5];
    v60 = sub_24A82CA34();
    (*(*(v60 - 8) + 8))(&v57[v59], v60);
    v61 = *&v57[v58[6] + 8];

    v62 = *&v57[v58[7] + 8];
  }

  v63 = &v4[v1[32]];
  v64 = type metadata accessor for FMIPItemGroup();
  if (!(*(*(v64 - 8) + 48))(v63, 1, v64))
  {
    v65 = *(v63 + 2);

    v66 = *(v63 + 4);

    v67 = *(v63 + 5);

    v68 = *(v63 + 6);

    v69 = *(v63 + 7);

    v70 = *(v63 + 9);

    v71 = &v63[*(v64 + 48)];
    v72 = type metadata accessor for FMIPItemLostModeMetadata();
    if (!(*(*(v72 - 8) + 48))(v71, 1, v72))
    {
      v73 = *(v71 + 1);

      v74 = *(v71 + 3);

      v75 = *(v72 + 24);
      v76 = sub_24A82CA34();
      (*(*(v76 - 8) + 8))(&v71[v75], v76);
      v77 = *&v71[*(v72 + 28) + 8];
    }

    v78 = *&v63[*(v64 + 52)];
  }

  v79 = *&v4[v1[37] + 8];

  v80 = v1[39];
  v81 = sub_24A82CA34();
  v82 = *(v81 - 8);
  v83 = *(v82 + 48);
  if (!v83(&v4[v80], 1, v81))
  {
    (*(v82 + 8))(&v4[v80], v81);
  }

  v84 = v1[40];
  if (!v83(&v4[v84], 1, v81))
  {
    (*(v82 + 8))(&v4[v84], v81);
  }

  v85 = v1[41];
  if (!v83(&v4[v85], 1, v81))
  {
    (*(v82 + 8))(&v4[v85], v81);
  }

  v86 = v1[42];
  if (!v83(&v4[v86], 1, v81))
  {
    (*(v82 + 8))(&v4[v86], v81);
  }

  v87 = (v90 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = *(v0 + v87 + 8);

  return MEMORY[0x2821FE8E8](v0, v87 + 16, v2 | 7);
}

uint64_t sub_24A81C260(uint64_t (*a1)(unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for FMIPDevice() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return a1(v1 + v3, v5, v6);
}

uint64_t sub_24A81C320(uint64_t a1, char a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5DF08, &qword_24A837770);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33[-v6];
  v8 = type metadata accessor for FMIPDevice();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {
    goto LABEL_4;
  }

  v13 = OBJC_IVAR____TtC8FMIPCore20FMIPDemoDataInjector_hostDevice;
  swift_beginAccess();
  sub_24A7718EC(v2 + v13, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_24A77195C(v7);
LABEL_4:
    v14 = MEMORY[0x277D84F90];
    goto LABEL_6;
  }

  sub_24A6CAF68(v7, v12);
  sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
  v15 = *(v9 + 72);
  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24A8327A0;
  sub_24A6CAF68(v12, v14 + v16);
LABEL_6:
  type metadata accessor for FMIPInitClientRequest();
  if (swift_dynamicCastClass())
  {
    v17 = sub_24A771344(v14);

    v18 = *(v2 + 16);
    v19 = *(v18 + 16);
    v20 = *(v18 + 32);
    v21 = *(v18 + 48);
    v22 = *(v18 + 80);
    v38 = *(v18 + 64);
    v39 = v22;
    v40 = *(v18 + 96);
    v36 = v20;
    v37 = v21;
    v35 = v19;
    v23 = *(v18 + 112);
    type metadata accessor for FMIPUserInfoResponseFragment();
    v24 = swift_allocObject();
    memmove((v24 + 16), (v18 + 16), 0x58uLL);
    *(v24 + 104) = v23;
    type metadata accessor for FMIPInitClientResponse();
  }

  else
  {
    type metadata accessor for FMIPRefreshClientRequest();
    if (!swift_dynamicCastClass())
    {

      return 0;
    }

    v17 = sub_24A771344(v14);

    v25 = *(v2 + 16);
    v26 = *(v25 + 16);
    v27 = *(v25 + 32);
    v28 = *(v25 + 48);
    v29 = *(v25 + 80);
    v38 = *(v25 + 64);
    v39 = v29;
    v40 = *(v25 + 96);
    v36 = v27;
    v37 = v28;
    v35 = v26;
    v30 = *(v25 + 112);
    type metadata accessor for FMIPUserInfoResponseFragment();
    v24 = swift_allocObject();
    memmove((v24 + 16), (v25 + 16), 0x58uLL);
    *(v24 + 104) = v30;
    type metadata accessor for FMIPRefreshClientResponse();
  }

  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = v24;
  *(v31 + 32) = 0;
  *(v31 + 40) = 0;
  *(v31 + 48) = 200;
  *(v31 + 56) = v17;
  sub_24A6EF948(&v35, v34);

  return v31;
}

void *sub_24A81C648(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v24 = a1;
  v25 = a2;
  v23 = sub_24A82D554();
  v4 = *(v23 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v23);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A82D534();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_24A82CE54();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v2[3] = 0;
  swift_unknownObjectWeakInit();
  v12 = sub_24A67B054();
  v22[0] = "request handler ";
  v22[1] = v12;
  sub_24A82CE24();
  v26 = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_2815146D0, MEMORY[0x277D85230]);
  sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  (*(v4 + 104))(v7, *MEMORY[0x277D85260], v23);
  v13 = sub_24A82D594();
  v2[12] = MEMORY[0x277D84F98];
  v14 = v24;
  v2[4] = v13;
  v2[5] = v14;
  sub_24A696E80(v25, (v2 + 6));
  v15 = type metadata accessor for FMIPDemoDataInjector();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC8FMIPCore20FMIPDemoDataInjector_hostDevice;
  v20 = type metadata accessor for FMIPDevice();
  (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
  *(v18 + 16) = v14;
  v3[11] = v18;

  return v3;
}

uint64_t sub_24A81C940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_24A82CDF4();
  v23 = *(v9 - 8);
  v10 = *(v23 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24A82CE54();
  v13 = *(v22 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v22);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v4 + 32);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = v17;
  aBlock[4] = sub_24A81E558;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCE9B0;
  v19 = _Block_copy(aBlock);

  sub_24A82CE24();
  v24 = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v16, v12, v19);
  _Block_release(v19);
  (*(v23 + 8))(v12, v9);
  (*(v13 + 8))(v16, v22);
}

uint64_t sub_24A81CC54(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24A6BBA94(&qword_27EF5DF08, &qword_24A837770);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v107 = (&v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v108 = (&v103 - v15);
  MEMORY[0x28223BE20](v14);
  v17 = &v103 - v16;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v18 = sub_24A82CDC4();
  v19 = sub_24A6797D0(v18, qword_281518F88);

  v110 = v19;
  v20 = sub_24A82CD94();
  v21 = sub_24A82D504();

  v22 = os_log_type_enabled(v20, v21);
  v109 = v17;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v111[0] = v106;
    *v23 = 136315138;
    v24 = *a1;
    v25 = sub_24A82DDB4();
    v27 = a1;
    v28 = a2;
    v29 = a5;
    v30 = a3;
    v31 = a4;
    v32 = sub_24A68761C(v25, v26, v111);

    *(v23 + 4) = v32;
    a4 = v31;
    a3 = v30;
    a5 = v29;
    a2 = v28;
    a1 = v27;
    _os_log_impl(&dword_24A675000, v20, v21, "FMIPDemoInteractionController: Handling %s.", v23, 0xCu);
    v33 = v106;
    sub_24A6876E8(v106);
    MEMORY[0x24C21E1D0](v33, -1, -1);
    MEMORY[0x24C21E1D0](v23, -1, -1);
  }

  v34 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v35 = swift_allocObject();
  v35[2] = a5;
  v35[3] = v34;
  v35[4] = a2;
  v35[5] = a3;
  v35[6] = a1;
  v36 = swift_allocObject();
  v36[2] = a5;
  v36[3] = a2;
  v36[4] = a3;
  v116 = a1;
  v117 = sub_24A81E5C0;
  v118 = v36;
  type metadata accessor for FMIPBaseRequest();
  sub_24A82D634();
  swift_retain_n();
  swift_retain_n();
  sub_24A6CCDC0(&qword_27EF5D468, &qword_24A832790);
  swift_getFunctionTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24A6BBA94(&qword_27EF5F910, &qword_24A8419A0);
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_24A698230(Strong + 48, v111);

      v38 = v112;
      v39 = v113;
      sub_24A67DF6C(v111, v112);
      (*(v39 + 56))(a1, sub_24A81E5B0, v35, a5, v38, v39);
LABEL_8:

LABEL_9:

      sub_24A6876E8(v111);
LABEL_64:
    }

LABEL_62:

    goto LABEL_63;
  }

  v40 = swift_allocObject();
  v40[2] = a5;
  v40[3] = a2;
  v40[4] = a3;
  v116 = a1;
  v117 = sub_24A81E658;
  v118 = v40;

  sub_24A6BBA94(&qword_27EF5F918, &qword_24A8419A8);
  if (swift_dynamicCast())
  {
    v104 = a5;
    v106 = a2;

    v105 = v115;
    v107 = v114;
    v41 = v109;
    sub_24A7718EC(v114 + qword_281518E68, v109);
    v42 = type metadata accessor for FMIPDevice();
    v43 = *(*(v42 - 8) + 48);
    if (v43(v41, 1, v42) == 1)
    {
      sub_24A77195C(v41);
      v103 = 0;
      v44 = 0;
    }

    else
    {
      v44 = v41[1];
      v103 = *v41;

      sub_24A6FE094(v41);
    }

    swift_beginAccess();
    v64 = swift_weakLoadStrong();
    if (v64)
    {
      v109 = a4;
      v65 = *(v64 + 88);

      v66 = OBJC_IVAR____TtC8FMIPCore20FMIPDemoDataInjector_hostDevice;
      swift_beginAccess();
      v67 = v65 + v66;
      v68 = v108;
      sub_24A7718EC(v67, v108);

      if (v43(v68, 1, v42) == 1)
      {
        sub_24A77195C(v68);
        v69 = 0;
        v70 = 0;
      }

      else
      {
        v69 = *v68;
        v70 = v68[1];

        sub_24A6FE094(v68);
      }

      v79 = v106;
      if (v44)
      {
LABEL_35:
        if (v70)
        {
          if (v103 == v69 && v44 == v70)
          {

            goto LABEL_45;
          }

          v85 = sub_24A82DC04();

          if (v85)
          {
LABEL_45:
            swift_beginAccess();
            v86 = swift_weakLoadStrong();
            if (v86)
            {
              sub_24A698230(v86 + 48, v111);

              v87 = v112;
              v88 = v113;
              sub_24A67DF6C(v111, v112);
              (*(v88 + 56))(a1, sub_24A81E5B0, v35, v104, v87, v88);

              goto LABEL_9;
            }

            goto LABEL_47;
          }

LABEL_40:
          swift_beginAccess();
          v80 = swift_weakLoadStrong();
          if (v80)
          {
            v81 = *(v80 + 88);

            v82 = sub_24A81C320(a1, 1);

            if (v82)
            {
              v83 = swift_dynamicCastClass();
              if (v83)
              {
                v84 = v83;

                (v79)(v84, 0);

LABEL_47:

LABEL_56:

                v91 = &v119;
LABEL_57:
                v97 = *(v91 - 32);
LABEL_63:

                goto LABEL_64;
              }
            }
          }

          v92 = sub_24A82CD94();
          v93 = sub_24A82D504();
          if (os_log_type_enabled(v92, v93))
          {
            v94 = swift_slowAlloc();
            *v94 = 0;
            _os_log_impl(&dword_24A675000, v92, v93, "FMIPDemoInteractionController: Unable to create a fake response for refresh request with selected device.", v94, 2u);
            MEMORY[0x24C21E1D0](v94, -1, -1);
          }

          sub_24A81E504();
          v95 = swift_allocError();
          *v96 = 1;
          (v79)(0, v95);

          goto LABEL_56;
        }

LABEL_39:

        goto LABEL_40;
      }
    }

    else
    {
      v69 = 0;
      v70 = 0;
      v79 = v106;
      if (v44)
      {
        goto LABEL_35;
      }
    }

    if (!v70)
    {
      goto LABEL_45;
    }

    goto LABEL_39;
  }

  v45 = swift_allocObject();
  v45[2] = a5;
  v45[3] = a2;
  v45[4] = a3;
  v116 = a1;
  v117 = sub_24A81E658;
  v118 = v45;
  sub_24A6BBA94(&qword_27EF5F920, &qword_24A8419B0);
  if (swift_dynamicCast())
  {
    v105 = v115;
    v108 = v114;
    v46 = *(v114 + qword_27EF78F00);
    v47 = *(v114 + qword_27EF78F00 + 8);
    swift_beginAccess();
    v48 = swift_weakLoadStrong();
    if (v48)
    {
      v49 = a4;
      v50 = *(v48 + 88);

      v51 = OBJC_IVAR____TtC8FMIPCore20FMIPDemoDataInjector_hostDevice;
      swift_beginAccess();
      v52 = v50 + v51;
      v53 = v107;
      sub_24A7718EC(v52, v107);

      v54 = type metadata accessor for FMIPDevice();
      if ((*(*(v54 - 8) + 48))(v53, 1, v54) != 1)
      {
        v106 = a2;
        v90 = *v53;
        v89 = v53[1];

        sub_24A6FE094(v53);
        if (v46 == v90 && v47 == v89)
        {

          a2 = v106;
        }

        else
        {
          v98 = sub_24A82DC04();

          a4 = v49;
          a2 = v106;
          if ((v98 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        swift_beginAccess();
        v99 = swift_weakLoadStrong();
        if (v99)
        {
          sub_24A698230(v99 + 48, v111);

          v100 = v112;
          v101 = v113;
          sub_24A67DF6C(v111, v112);
          (*(v101 + 56))(a1, a2, a3, a5, v100, v101);

          goto LABEL_8;
        }

        goto LABEL_62;
      }

      sub_24A77195C(v53);
      a4 = v49;
    }

LABEL_17:

    v55 = sub_24A82CD94();
    v56 = sub_24A82D504();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v109 = a4;
      v59 = v58;
      v111[0] = v58;
      *v57 = 136315138;
      v60 = *a1;
      v61 = sub_24A82DDB4();
      v63 = sub_24A68761C(v61, v62, v111);

      *(v57 + 4) = v63;
      _os_log_impl(&dword_24A675000, v55, v56, "FMIPDemoInteractionController: Received %s for non-host device, which is unsupported in demo mode.", v57, 0xCu);
      sub_24A6876E8(v59);
      MEMORY[0x24C21E1D0](v59, -1, -1);
      MEMORY[0x24C21E1D0](v57, -1, -1);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24A81DF18(a2);
    }

    v91 = &v120;
    goto LABEL_57;
  }

  v106 = a2;

  v71 = sub_24A82CD94();
  v72 = sub_24A82D504();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v111[0] = v74;
    *v73 = 136315138;
    v75 = *a1;
    v76 = sub_24A82DDB4();
    v78 = sub_24A68761C(v76, v77, v111);

    *(v73 + 4) = v78;
    _os_log_impl(&dword_24A675000, v71, v72, "FMIPDemoInteractionController: Received %s, which is unsupported in demo mode.", v73, 0xCu);
    sub_24A6876E8(v74);
    MEMORY[0x24C21E1D0](v74, -1, -1);
    MEMORY[0x24C21E1D0](v73, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24A81DF18(v106);
  }
}

uint64_t sub_24A81DC00(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v12 = *(Strong + 88);

      v13 = sub_24A770FE0(a1, a7);
    }

    else
    {

      v13 = 0;
    }

    a4(v13, a2);
  }

  else
  {
    swift_beginAccess();
    v15 = swift_weakLoadStrong();
    if (v15)
    {
      v16 = *(v15 + 88);

      v17 = sub_24A81C320(a6, 0);

      if (v17)
      {
        v18 = swift_dynamicCastClass();
        if (v18)
        {
          v19 = v18;

          a4(v19, 0);
        }
      }
    }

    if (a2)
    {
      swift_getErrorValue();
      v21 = sub_24A82DC74();
      v23 = v22;
    }

    else
    {
      v23 = 0xED0000726F727265;
      v21 = 0x206E776F6E6B6E75;
    }

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v24 = sub_24A82CDC4();
    sub_24A6797D0(v24, qword_281518F88);

    v25 = sub_24A82CD94();
    v26 = sub_24A82D504();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30 = v28;
      *v27 = 136315138;
      v29 = sub_24A68761C(v21, v23, &v30);

      *(v27 + 4) = v29;
      _os_log_impl(&dword_24A675000, v25, v26, "FMIPDemoInteractionController: Request failed due to %s.", v27, 0xCu);
      sub_24A6876E8(v28);
      MEMORY[0x24C21E1D0](v28, -1, -1);
      MEMORY[0x24C21E1D0](v27, -1, -1);
    }

    else
    {
    }

    return (a4)(0, a2);
  }
}

void sub_24A81DF18(void (*a1)(void, void *))
{
  sub_24A81DF98();
  sub_24A81E504();
  v2 = swift_allocError();
  *v3 = 1;
  a1(0, v2);
}

uint64_t sub_24A81DF98()
{
  v0 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - v5;
  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = [v8 bundleForClass_];
  v10 = sub_24A82C6F4();
  v12 = v11;

  v13 = [v8 bundleForClass_];
  v14 = sub_24A82C6F4();
  v16 = v15;

  v17 = sub_24A82C8B4();
  v18 = *(*(v17 - 8) + 56);
  v18(v6, 1, 1, v17);
  v18(v4, 1, 1, v17);
  v19 = type metadata accessor for FMIPAlert();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  v22[2] = v10;
  v22[3] = v12;
  v22[4] = 0;
  v22[5] = 0;
  v22[6] = v14;
  v22[7] = v16;
  v23 = (v22 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonLabel);
  *v23 = 0;
  v23[1] = 0;
  sub_24A696DA0(v6, v22 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_okButtonURL);
  sub_24A696DA0(v4, v22 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonURL);
  *(v22 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_type) = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  sub_24A81E3AC(v22, Strong);

  return swift_unknownObjectRelease();
}

uint64_t sub_24A81E254()
{
  sub_24A6BAF88(v0 + 16);

  v1 = *(v0 + 40);

  sub_24A6876E8((v0 + 48));
  v2 = *(v0 + 88);

  v3 = *(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_24A81E2D8(uint64_t a1, uint64_t a2)
{
  *(*v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_24A81E350()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 80);
  sub_24A67DF6C((*v0 + 48), v1);
  return (*(v2 + 64))(v1, v2);
}

uint64_t sub_24A81E3AC(uint64_t a1, uint64_t a2)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518F88);
  v5 = sub_24A82CD94();
  v6 = sub_24A82D504();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A675000, v5, v6, "FMIPManager: didReceive server alert", v7, 2u);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  v8 = a2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 72))(a2, a1, ObjectType, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_24A81E504()
{
  result = qword_27EF5F908;
  if (!qword_27EF5F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F908);
  }

  return result;
}

uint64_t sub_24A81E568()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A81E5C0(void *a1, void *a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return v3(*a1, *a2);
}

unint64_t sub_24A81E604()
{
  result = qword_27EF5F928;
  if (!qword_27EF5F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F928);
  }

  return result;
}

FMIPCore::FMWindowStatePrefKeys_optional __swiftcall FMWindowStatePrefKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t FMWindowStatePrefKeys.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6956776F646E6977;
  }

  else
  {
    result = 0x736F4D746E6F7266;
  }

  *v0;
  return result;
}

uint64_t sub_24A81E714(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6956776F646E6977;
  }

  else
  {
    v4 = 0x736F4D746E6F7266;
  }

  if (v3)
  {
    v5 = 0xEF776F646E695774;
  }

  else
  {
    v5 = 0xED0000656C626973;
  }

  if (*a2)
  {
    v6 = 0x6956776F646E6977;
  }

  else
  {
    v6 = 0x736F4D746E6F7266;
  }

  if (*a2)
  {
    v7 = 0xED0000656C626973;
  }

  else
  {
    v7 = 0xEF776F646E695774;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A82DC04();
  }

  return v9 & 1;
}

unint64_t sub_24A81E7D8()
{
  result = qword_27EF5F930;
  if (!qword_27EF5F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F930);
  }

  return result;
}

uint64_t sub_24A81E82C()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A81E8C8()
{
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A81E950()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A81E9E8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24A82D9C4();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_24A81EA48(uint64_t *a1@<X8>)
{
  v2 = 0x736F4D746E6F7266;
  if (*v1)
  {
    v2 = 0x6956776F646E6977;
  }

  v3 = 0xEF776F646E695774;
  if (*v1)
  {
    v3 = 0xED0000656C626973;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t type metadata accessor for FMIPNotifyRequest()
{
  result = qword_27EF5F938;
  if (!qword_27EF5F938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A81EB4C()
{
  v1 = v0;
  v2 = *(v0 + qword_27EF78FD8);
  v4 = *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  v3 = *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 8);
  v18 = MEMORY[0x277D837D0];
  *&v17 = v4;
  *(&v17 + 1) = v3;
  v5 = qword_27EF5D920;
  v6 = *(v0 + qword_27EF5D920);

  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);

  os_unfair_lock_unlock((v6 + 24));

  sub_24A6A50DC(&v17, v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6A4F8C(v16, 0x656369766564, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v9 = *(v1 + v5);

  os_unfair_lock_lock((v9 + 24));
  sub_24A6A3D28((v9 + 16));
  os_unfair_lock_unlock((v9 + 24));

  v10 = *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_enabled);
  v18 = MEMORY[0x277D839B0];
  LOBYTE(v17) = v10;
  v11 = *(v1 + v5);

  os_unfair_lock_lock((v11 + 24));
  v12 = *(v11 + 16);

  os_unfair_lock_unlock((v11 + 24));

  sub_24A6A50DC(&v17, v16);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6A4F8C(v16, 0x646E756F46636F6CLL, 0xEF64656C62616E45, v13);
  v14 = *(v1 + v5);

  os_unfair_lock_lock((v14 + 24));
  sub_24A6FF740((v14 + 16));
  os_unfair_lock_unlock((v14 + 24));
}

uint64_t sub_24A81ED6C()
{
  v0 = sub_24A6F8F90();
  v1 = *(v0 + qword_27EF78FD8);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A81EE0C()
{
  *v0;
  *v0;
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A81EEF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A81F138();
  *a2 = result;
  return result;
}

void sub_24A81EF28(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006F72;
  v4 = 0x506B6F6F6263616DLL;
  v5 = 0xE500000000000000;
  v6 = 0x6863746177;
  v7 = 0x6F725063614D69;
  if (v2 != 4)
  {
    v7 = 0x73646F70726961;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0xE600000000000000;
  v9 = 0x656E6F685069;
  if (v2 != 1)
  {
    v9 = 1684099177;
    v8 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_24A81F090()
{
  result = qword_27EF5F948;
  if (!qword_27EF5F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F948);
  }

  return result;
}

unint64_t sub_24A81F0E4()
{
  result = qword_27EF5F950;
  if (!qword_27EF5F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F950);
  }

  return result;
}

uint64_t sub_24A81F138()
{
  v0 = sub_24A82D9C4();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24A81F184(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A81F1CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A81F22C()
{
  if (*v0)
  {
    result = 0x726F68636E61;
  }

  else
  {
    result = 0x61746144636E7973;
  }

  *v0;
  return result;
}

uint64_t sub_24A81F264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x61746144636E7973 && a2 == 0xE800000000000000;
  if (v6 || (sub_24A82DC04() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F68636E61 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24A82DC04();

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

uint64_t sub_24A81F33C(uint64_t a1)
{
  v2 = sub_24A820BC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A81F378(uint64_t a1)
{
  v2 = sub_24A820BC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A81F3B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24A81FA94(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_24A81F400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24A82DC04();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24A81F490(uint64_t a1)
{
  v2 = sub_24A821178();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A81F4CC(uint64_t a1)
{
  v2 = sub_24A821178();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A81F508@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5F9A8, &qword_24A842318);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A821178();
  sub_24A82DD64();
  if (v2)
  {
    return sub_24A6876E8(a1);
  }

  v11 = sub_24A82DA44();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = sub_24A6876E8(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_24A81F684()
{
  v1 = 0x72694672656E776FLL;
  if (*v0 != 1)
  {
    v1 = 0x73656369766564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73614C72656E776FLL;
  }
}

uint64_t sub_24A81F6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A81FCC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A81F720(uint64_t a1)
{
  v2 = sub_24A820EA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A81F75C(uint64_t a1)
{
  v2 = sub_24A820EA8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24A81F798@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24A81FDEC(a1, v6);
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

unint64_t sub_24A81F7E0()
{
  v1 = 0xD00000000000001CLL;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t sub_24A81F850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A82008C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A81F878(uint64_t a1)
{
  v2 = sub_24A820B6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A81F8B4(uint64_t a1)
{
  v2 = sub_24A820B6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A81F8F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24A8201FC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_24A81F928()
{
  v1 = 0x614E656369766564;
  if (*v0 != 1)
  {
    v1 = 0x6F43737574617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72756769666E6F63;
  }
}

uint64_t sub_24A81F9A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A8203E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A81F9C8(uint64_t a1)
{
  v2 = sub_24A820814();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A81FA04(uint64_t a1)
{
  v2 = sub_24A820814();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_24A81FA40@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24A820518(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_24A81FA94(uint64_t *a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5F970, &qword_24A841F10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_24A67DF6C(a1, v8);
  sub_24A820BC0();
  sub_24A82DD64();
  if (!v1)
  {
    sub_24A6BBA94(&qword_27EF5F978, qword_24A841F18);
    v10[7] = 0;
    sub_24A820EFC(&unk_2815146F0, &qword_27EF5F978, qword_24A841F18, sub_24A820C14);
    sub_24A82DA84();
    v8 = v11;
    v10[6] = 1;
    sub_24A82DA44();
    (*(v4 + 8))(v7, v3);
  }

  sub_24A6876E8(a1);
  return v8;
}

uint64_t sub_24A81FCC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73614C72656E776FLL && a2 == 0xED0000656D614E74;
  if (v4 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72694672656E776FLL && a2 == 0xEE00656D614E7473 || (sub_24A82DC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656369766564 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24A82DC04();

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

uint64_t sub_24A81FDEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5F990, &qword_24A842198);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A820EA8();
  sub_24A82DD64();
  if (v2)
  {
    return sub_24A6876E8(a1);
  }

  v24 = 0;
  v11 = sub_24A82DA44();
  v13 = v12;
  v20 = v11;
  v23 = 1;
  v18 = sub_24A82DA44();
  v19 = v14;
  sub_24A6BBA94(&qword_27EF5F998, qword_24A8421A0);
  v22 = 2;
  sub_24A820EFC(&qword_2815146E8, &qword_27EF5F998, qword_24A8421A0, sub_24A820F78);
  sub_24A82DA84();
  (*(v6 + 8))(v9, v5);
  v15 = v21;
  result = sub_24A6876E8(a1);
  *a2 = v20;
  a2[1] = v13;
  v17 = v19;
  a2[2] = v18;
  a2[3] = v17;
  a2[4] = v15;
  return result;
}

uint64_t sub_24A82008C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001CLL && 0x800000024A84B140 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024A84B160 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024A84B180 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000024A84B1A0 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_24A82DC04();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24A8201FC(uint64_t *a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5F968, &qword_24A841F08);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A820B6C();
  sub_24A82DD64();
  v14 = 0;
  v8 = sub_24A82DA74();
  v13 = 1;
  sub_24A82DA74();
  v12 = 2;
  sub_24A82DA74();
  v11 = 3;
  sub_24A82DA54();
  (*(v3 + 8))(v6, v2);
  sub_24A6876E8(a1);
  return v8;
}

uint64_t sub_24A8203E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEE00636E7953656DLL || (sub_24A82DC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564)
  {

    return 2;
  }

  else
  {
    v6 = sub_24A82DC04();

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

uint64_t sub_24A820518@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5F958, &qword_24A841D20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A820814();
  sub_24A82DD64();
  if (v2)
  {
    return sub_24A6876E8(a1);
  }

  LOBYTE(v34) = 0;
  sub_24A820868();
  sub_24A82DA84();
  v32 = v40;
  v33 = v39;
  v11 = v41;
  v12 = v42;
  LOBYTE(v34) = 1;
  sub_24A8208BC();
  sub_24A82DA84();
  v48 = v12;
  v31 = v11;
  v13 = v39;
  v30 = v40;
  v14 = v41;
  v49 = 2;
  v15 = sub_24A82DA44();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  v19 = v13;
  v29 = v13;
  v20 = v31;
  v21 = v32;
  *&v34 = v33;
  *(&v34 + 1) = v32;
  *&v35 = v31;
  v22 = v14;
  v28 = v14;
  LOBYTE(v14) = v48;
  BYTE8(v35) = v48;
  v36 = __PAIR128__(v30, v19);
  v23 = v30;
  *&v37 = v22;
  *(&v37 + 1) = v15;
  v38 = v18;
  sub_24A7F21E4(&v34, &v39);
  sub_24A6876E8(a1);
  v39 = v33;
  v40 = v21;
  v41 = v20;
  v42 = v14;
  v43 = v29;
  v44 = v23;
  v45 = v28;
  v46 = v15;
  v47 = v18;
  result = sub_24A7F2240(&v39);
  v25 = v37;
  *(a2 + 32) = v36;
  *(a2 + 48) = v25;
  *(a2 + 64) = v38;
  v26 = v35;
  *a2 = v34;
  *(a2 + 16) = v26;
  return result;
}

unint64_t sub_24A820814()
{
  result = qword_281514DC8[0];
  if (!qword_281514DC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281514DC8);
  }

  return result;
}

unint64_t sub_24A820868()
{
  result = qword_281514C18;
  if (!qword_281514C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514C18);
  }

  return result;
}

unint64_t sub_24A8208BC()
{
  result = qword_281514EB8;
  if (!qword_281514EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514EB8);
  }

  return result;
}

uint64_t sub_24A820920(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A820968(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A8209B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24A820A0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_24A820A68()
{
  result = qword_27EF5F960;
  if (!qword_27EF5F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F960);
  }

  return result;
}

unint64_t sub_24A820AC0()
{
  result = qword_281514DB8;
  if (!qword_281514DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514DB8);
  }

  return result;
}

unint64_t sub_24A820B18()
{
  result = qword_281514DC0;
  if (!qword_281514DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514DC0);
  }

  return result;
}

unint64_t sub_24A820B6C()
{
  result = qword_281514C30;
  if (!qword_281514C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514C30);
  }

  return result;
}

unint64_t sub_24A820BC0()
{
  result = qword_281514ED0;
  if (!qword_281514ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514ED0);
  }

  return result;
}

unint64_t sub_24A820C14()
{
  result = qword_2815159D8;
  if (!qword_2815159D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815159D8);
  }

  return result;
}

unint64_t sub_24A820C9C()
{
  result = qword_27EF5F980;
  if (!qword_27EF5F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F980);
  }

  return result;
}

unint64_t sub_24A820CF4()
{
  result = qword_27EF5F988;
  if (!qword_27EF5F988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F988);
  }

  return result;
}

unint64_t sub_24A820D4C()
{
  result = qword_281514EC0;
  if (!qword_281514EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514EC0);
  }

  return result;
}

unint64_t sub_24A820DA4()
{
  result = qword_281514EC8;
  if (!qword_281514EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514EC8);
  }

  return result;
}

unint64_t sub_24A820DFC()
{
  result = qword_281514C20;
  if (!qword_281514C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514C20);
  }

  return result;
}

unint64_t sub_24A820E54()
{
  result = qword_281514C28;
  if (!qword_281514C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514C28);
  }

  return result;
}

unint64_t sub_24A820EA8()
{
  result = qword_2815159F0;
  if (!qword_2815159F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815159F0);
  }

  return result;
}

uint64_t sub_24A820EFC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_24A6CCDC0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A820F78()
{
  result = qword_281515060;
  if (!qword_281515060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281515060);
  }

  return result;
}

uint64_t sub_24A820FDC(uint64_t a1, int a2)
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

uint64_t sub_24A821024(uint64_t result, int a2, int a3)
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

unint64_t sub_24A821074()
{
  result = qword_27EF5F9A0;
  if (!qword_27EF5F9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F9A0);
  }

  return result;
}

unint64_t sub_24A8210CC()
{
  result = qword_2815159E0;
  if (!qword_2815159E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815159E0);
  }

  return result;
}

unint64_t sub_24A821124()
{
  result = qword_2815159E8;
  if (!qword_2815159E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815159E8);
  }

  return result;
}

unint64_t sub_24A821178()
{
  result = qword_281515078[0];
  if (!qword_281515078[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281515078);
  }

  return result;
}

unint64_t sub_24A8211E0()
{
  result = qword_27EF5F9B0;
  if (!qword_27EF5F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F9B0);
  }

  return result;
}

unint64_t sub_24A821238()
{
  result = qword_281515068;
  if (!qword_281515068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281515068);
  }

  return result;
}

unint64_t sub_24A821290()
{
  result = qword_281515070;
  if (!qword_281515070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281515070);
  }

  return result;
}

uint64_t sub_24A8212E8(uint64_t a1)
{
  v3 = type metadata accessor for FMIPItem();
  v32 = *(v3 - 8);
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v33 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v28 = v1;
  v36 = MEMORY[0x277D84F90];
  sub_24A6FCC9C(0, v6, 0);
  v7 = v36;
  v8 = -1 << *(a1 + 32);
  v35 = a1 + 56;
  result = sub_24A82D6C4();
  v10 = result;
  v11 = 0;
  v29 = a1 + 64;
  v30 = v6;
  v31 = v3;
  v12 = v33;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v14 = v10 >> 6;
    if ((*(v35 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_29;
    }

    v34 = *(a1 + 36);
    sub_24A68FD9C(*(a1 + 48) + *(v32 + 72) * v10, v12, type metadata accessor for FMIPItem);
    v15 = v12 + *(v3 + 64);
    if (*(v15 + 8))
    {
      v16 = *(v15 + 32);
    }

    else
    {
      v17 = (v12 + *(v3 + 56));
      if (*v17 == 1702060355 && v17[1] == 0xE400000000000000)
      {
        v16 = 1;
      }

      else
      {
        v16 = sub_24A82DC04() & 1;
      }
    }

    result = sub_24A69016C(v12, type metadata accessor for FMIPItem);
    v36 = v7;
    v20 = *(v7 + 16);
    v19 = *(v7 + 24);
    if (v20 >= v19 >> 1)
    {
      result = sub_24A6FCC9C((v19 > 1), v20 + 1, 1);
      v7 = v36;
    }

    *(v7 + 16) = v20 + 1;
    *(v7 + v20 + 32) = v16;
    v13 = 1 << *(a1 + 32);
    if (v10 >= v13)
    {
      goto LABEL_30;
    }

    v21 = *(v35 + 8 * v14);
    if ((v21 & (1 << v10)) == 0)
    {
      goto LABEL_31;
    }

    if (v34 != *(a1 + 36))
    {
      goto LABEL_32;
    }

    v22 = v21 & (-2 << (v10 & 0x3F));
    if (v22)
    {
      v13 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v14 << 6;
      v24 = v14 + 1;
      v25 = (v29 + 8 * v14);
      while (v24 < (v13 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_24A6CA498(v10, v34, 0);
          v13 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_24A6CA498(v10, v34, 0);
    }

LABEL_4:
    ++v11;
    v10 = v13;
    v3 = v31;
    v12 = v33;
    if (v11 == v30)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24A821628()
{
  sub_24A82D094();
}

uint64_t sub_24A8217B0()
{
  sub_24A82D094();
}

uint64_t sub_24A821900()
{
  sub_24A82D094();
}

uint64_t sub_24A821A60()
{
  sub_24A82D094();
}

uint64_t sub_24A821BC4()
{
  sub_24A82D094();
}

uint64_t sub_24A821D24@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = sub_24A82C604();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v9 = v1[3];
  v11 = v1[5];
  v52 = v1[4];
  v12 = *(v1 + 48);
  v53 = *(v1 + 49);
  v54 = v12;
  v13 = *(v1 + 7);
  v59 = 0xD000000000000037;
  v60 = 0x800000024A84B1C0;
  v57 = v7;
  v58 = v8;

  sub_24A82C5A4();
  sub_24A6B2490();
  v14 = sub_24A82D684();
  v16 = v15;
  v18 = *(v3 + 8);
  v17 = v3 + 8;
  v56 = v18;
  v18(v6, v2);

  if (v16)
  {
    sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
    v19 = swift_allocObject();
    v51[1] = v17;
    v20 = v19;
    *(v19 + 16) = xmmword_24A8327A0;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = sub_24A6B243C();
    *(v20 + 32) = v14;
    *(v20 + 40) = v16;
    v21 = sub_24A82CFF4();
    MEMORY[0x24C21C9E0](v21);
  }

  v57 = v10;
  v58 = v9;

  sub_24A82C5A4();
  v22 = MEMORY[0x277D837D0];
  v23 = sub_24A82D684();
  v25 = v24;
  v56(v6, v2);

  if (v25)
  {
    sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_24A8327A0;
    *(v26 + 56) = v22;
    *(v26 + 64) = sub_24A6B243C();
    *(v26 + 32) = v23;
    *(v26 + 40) = v25;
    v27 = sub_24A82CFF4();
    MEMORY[0x24C21C9E0](v27);
  }

  if (v11)
  {
    v57 = v52;
    v58 = v11;

    sub_24A82C5A4();
    v28 = MEMORY[0x277D837D0];
    v29 = sub_24A82D684();
    v31 = v30;
    v56(v6, v2);

    if (v31)
    {
      sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_24A8327A0;
      *(v32 + 56) = v28;
      *(v32 + 64) = sub_24A6B243C();
      *(v32 + 32) = v29;
      *(v32 + 40) = v31;
      v33 = sub_24A82CFF4();
      MEMORY[0x24C21C9E0](v33);
    }
  }

  MEMORY[0x24C21C9E0](47, 0xE100000000000000);
  if (v53 <= 3)
  {
    v41 = 0x656E696C6E6FLL;
    v35 = 0xE600000000000000;
    v42 = 0x64656B636F6CLL;
    v38 = 0xE700000000000000;
    if (v53 != 2)
    {
      v42 = 0x6475427466656CLL;
      v35 = 0xE700000000000000;
    }

    if (v53)
    {
      v41 = 0x656E696C66666FLL;
    }

    else
    {
      v38 = 0xE600000000000000;
    }

    v39 = v53 <= 1;
    if (v53 <= 1)
    {
      v40 = v41;
    }

    else
    {
      v40 = v42;
    }
  }

  else
  {
    v34 = 0x4364694C65736163;
    v35 = 0x800000024A8444A0;
    if (v53 == 7)
    {
      v36 = 0xD000000000000015;
    }

    else
    {
      v36 = 0xD000000000000016;
    }

    if (v53 != 7)
    {
      v35 = 0x800000024A8444C0;
    }

    if (v53 == 6)
    {
      v35 = 0xED00006465736F6CLL;
    }

    else
    {
      v34 = v36;
    }

    v37 = 0x6475427468676972;
    v38 = 0x800000024A844470;
    if (v53 == 4)
    {
      v38 = 0xE800000000000000;
    }

    else
    {
      v37 = 0xD00000000000001ALL;
    }

    v39 = v53 <= 5;
    if (v53 <= 5)
    {
      v40 = v37;
    }

    else
    {
      v40 = v34;
    }
  }

  if (v39)
  {
    v43 = v38;
  }

  else
  {
    v43 = v35;
  }

  v57 = v40;
  v58 = v43;

  MEMORY[0x24C21C9E0](45, 0xE100000000000000);

  MEMORY[0x24C21C9E0](v57, v58);

  if (v54)
  {
    v44 = 0x786F626F666E69;
  }

  else
  {
    v44 = 0x696C656372756F73;
  }

  if (v54)
  {
    v45 = 0xE700000000000000;
  }

  else
  {
    v45 = 0xEA00000000007473;
  }

  MEMORY[0x24C21C9E0](v44, v45);

  if (v13 == 1.0)
  {
    v46 = 0;
    v47 = 0xE000000000000000;
  }

  else
  {
    sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_24A8327A0;
    *(v48 + 56) = MEMORY[0x277D85048];
    *(v48 + 64) = sub_24A6B22C8();
    *(v48 + 32) = v13;
    v46 = sub_24A82CFF4();
    v47 = v49;
  }

  MEMORY[0x24C21C9E0](v46, v47);

  MEMORY[0x24C21C9E0](1735290926, 0xE400000000000000);
  sub_24A82C8A4();
}

FMIPCore::FMIPDeviceImageSize_optional __swiftcall FMIPDeviceImageSize.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t FMIPDeviceImageSize.rawValue.getter()
{
  if (*v0)
  {
    result = 0x786F626F666E69;
  }

  else
  {
    result = 0x696C656372756F73;
  }

  *v0;
  return result;
}

uint64_t sub_24A8223B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x786F626F666E69;
  }

  else
  {
    v4 = 0x696C656372756F73;
  }

  if (v3)
  {
    v5 = 0xEA00000000007473;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x786F626F666E69;
  }

  else
  {
    v6 = 0x696C656372756F73;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xEA00000000007473;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A82DC04();
  }

  return v9 & 1;
}

uint64_t sub_24A822464()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A8224EC()
{
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A822560()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A8225E4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24A82D9C4();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_24A822644(uint64_t *a1@<X8>)
{
  v2 = 0x696C656372756F73;
  if (*v1)
  {
    v2 = 0x786F626F666E69;
  }

  v3 = 0xEA00000000007473;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

FMIPCore::FMIPDeviceImageVariant_optional __swiftcall FMIPDeviceImageVariant.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t FMIPDeviceImageVariant.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x656E696C6E6FLL;
    v7 = 0x64656B636F6CLL;
    if (v1 != 2)
    {
      v7 = 0x6475427466656CLL;
    }

    if (*v0)
    {
      v6 = 0x656E696C66666FLL;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x4364694C65736163;
    if (v1 == 7)
    {
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = 0xD000000000000016;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0xD00000000000001ALL;
    if (v1 == 4)
    {
      v4 = 0x6475427468676972;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24A822828()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A8217B0();
  return sub_24A82DD24();
}

uint64_t sub_24A822878()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A8217B0();
  return sub_24A82DD24();
}

unint64_t sub_24A8228C8@<X0>(unint64_t *a1@<X8>)
{
  result = FMIPDeviceImageVariant.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t FMIPDeviceImageCacheRequest.class.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FMIPDeviceImageCacheRequest.model.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FMIPDeviceImageCacheRequest.color.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t FMIPDeviceImageCacheRequest.init(class:model:color:size:variant:scale:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  v10 = *a7;
  v11 = *a8;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = v10;
  *(a9 + 49) = v11;
  *(a9 + 56) = a10;
  return result;
}

uint64_t FMIPDeviceImageCacheRequest.init(device:size:variant:scale:)@<X0>(void *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v8 = *a2;
  v9 = *a3;
  v11 = a1[13];
  v10 = a1[14];
  v13 = a1[17];
  v12 = a1[18];
  v15 = a1[11];
  v14 = a1[12];

  result = sub_24A69016C(a1, type metadata accessor for FMIPDevice);
  *a4 = v11;
  *(a4 + 8) = v10;
  *(a4 + 16) = v13;
  *(a4 + 24) = v12;
  *(a4 + 32) = v15;
  *(a4 + 40) = v14;
  *(a4 + 48) = v8;
  *(a4 + 49) = v9;
  *(a4 + 56) = a5;
  return result;
}

uint64_t FMIPDeviceImageCacheRequest.init(device:size:scale:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = *a2;
  sub_24A822B44(a1, &v16);
  v8 = v16;
  v10 = a1[13];
  v9 = a1[14];
  v12 = a1[17];
  v11 = a1[18];
  v14 = a1[11];
  v13 = a1[12];

  result = sub_24A69016C(a1, type metadata accessor for FMIPDevice);
  *a3 = v10;
  *(a3 + 8) = v9;
  *(a3 + 16) = v12;
  *(a3 + 24) = v11;
  *(a3 + 32) = v14;
  *(a3 + 40) = v13;
  *(a3 + 48) = v7;
  *(a3 + 49) = v8;
  *(a3 + 56) = a4;
  return result;
}

uint64_t sub_24A822B44@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v29 = a2;
  v3 = sub_24A6BBA94(&qword_27EF5DE48, &unk_24A8367C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - v5;
  v7 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v28 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  v17 = type metadata accessor for FMIPDevice();
  sub_24A67E964(a1 + v17[31], v6, &qword_27EF5DE48, &unk_24A8367C0);
  v18 = type metadata accessor for FMIPEraseMetadata();
  if ((*(*(v18 - 8) + 48))(v6, 1, v18) == 1)
  {
    sub_24A67F378(v6, &qword_27EF5DE48, &unk_24A8367C0);
    v19 = sub_24A82CA34();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
    sub_24A67F378(v16, &qword_27EF5E0E0, &qword_24A836D90);
  }

  else
  {
    v20 = *(v18 + 20);
    v19 = sub_24A82CA34();
    v21 = *(v19 - 8);
    (*(v21 + 16))(v16, &v6[v20], v19);
    sub_24A69016C(v6, type metadata accessor for FMIPEraseMetadata);
    (*(v21 + 56))(v16, 0, 1, v19);
    result = sub_24A67F378(v16, &qword_27EF5E0E0, &qword_24A836D90);
    if ((*(a1 + 216) & 2) != 0)
    {
      goto LABEL_7;
    }
  }

  sub_24A67E964(a1 + v17[40], v14, &qword_27EF5E0E0, &qword_24A836D90);
  sub_24A82CA34();
  v23 = *(*(v19 - 8) + 48);
  v24 = v23(v14, 1, v19);
  result = sub_24A67F378(v14, &qword_27EF5E0E0, &qword_24A836D90);
  if (v24 == 1)
  {
    if (*(a1 + 80))
    {
      v26 = sub_24A82DC04();

      if ((v26 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    sub_24A67E964(a1 + v17[41], v11, &qword_27EF5E0E0, &qword_24A836D90);
    v27 = v23(v11, 1, v19);
    result = sub_24A67F378(v11, &qword_27EF5E0E0, &qword_24A836D90);
    if (v27 == 1)
    {
      v25 = 0;
      goto LABEL_13;
    }

LABEL_12:
    v25 = 1;
    goto LABEL_13;
  }

LABEL_7:
  v25 = 2;
LABEL_13:
  *v29 = v25;
  return result;
}

uint64_t FMIPDeviceImageCacheRequest.init(itemParts:device:size:scale:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v8 = *a3;
  sub_24A82303C(a1, &v17);

  v9 = v17;
  v11 = a2[13];
  v10 = a2[14];
  v13 = a2[17];
  v12 = a2[18];
  v15 = a2[11];
  v14 = a2[12];

  result = sub_24A69016C(a2, type metadata accessor for FMIPDevice);
  *a4 = v11;
  *(a4 + 8) = v10;
  *(a4 + 16) = v13;
  *(a4 + 24) = v12;
  *(a4 + 32) = v15;
  *(a4 + 40) = v14;
  *(a4 + 48) = v8;
  *(a4 + 49) = v9;
  *(a4 + 56) = a5;
  return result;
}

uint64_t sub_24A82303C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = sub_24A8212E8(a1);
  v4 = sub_24A7147BC(v3);

  v5 = sub_24A7147BC(&unk_285DC08A0);
  v6 = sub_24A7B5170(v5, v4);

  if (v6)
  {
    v7 = 5;
  }

  else
  {
    v8 = sub_24A7147BC(&unk_285DC08C8);
    v9 = sub_24A7B5170(v8, v4);

    if (v9)
    {
      v7 = 8;
    }

    else
    {
      v10 = sub_24A7147BC(&unk_285DC08F0);
      v11 = sub_24A7B5170(v10, v4);

      if (v11)
      {
        v7 = 7;
      }

      else
      {
        v12 = sub_24A7147BC(&unk_285DC0918);
        v13 = sub_24A7B5170(v12, v4);

        if (v13)
        {
          v7 = 6;
        }

        else
        {
          v14 = sub_24A7147BC(&unk_285DC0940);
          v15 = sub_24A7B5170(v14, v4);

          if (v15)
          {
            v7 = 0;
          }

          else
          {
            v16 = sub_24A7147BC(&unk_285DC0968);
            v17 = sub_24A7B5170(v16, v4);

            if (v17)
            {
              v7 = 3;
            }

            else
            {
              v18 = sub_24A7147BC(&unk_285DC0990);
              v19 = sub_24A7B5170(v18, v4);

              if (v19)
              {
                v7 = 4;
              }

              else
              {
                v20 = sub_24A7147BC(&unk_285DC09B8);
                sub_24A7B5170(v20, v4);

                v7 = 0;
              }
            }
          }
        }
      }
    }
  }

  *a2 = v7;
  return result;
}

char *static FMIPDeviceImageCacheRequest.allRequests(for:scale:)(uint64_t a1, double a2)
{
  v4 = type metadata accessor for FMIPDevice();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v57 - v11;
  v13 = *(v5 + 136);
  v60 = a1;
  sub_24A67E964(a1 + v13, v12, &unk_27EF5E0B0, &qword_24A8338B0);
  v14 = type metadata accessor for FMIPItemGroup();
  LODWORD(v5) = (*(*(v14 - 8) + 48))(v12, 1, v14);
  sub_24A67F378(v12, &unk_27EF5E0B0, &qword_24A8338B0);
  if (v5 == 1)
  {
    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    do
    {
      v59 = byte_285DC0A08[v15 + 32];
      sub_24A68FD9C(v60, v8, type metadata accessor for FMIPDevice);
      v17 = v8[14];
      v58 = v8[13];
      v19 = v8[17];
      v18 = v8[18];
      v21 = v8[11];
      v20 = v8[12];

      sub_24A69016C(v8, type metadata accessor for FMIPDevice);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_24A780BB0(0, *(v16 + 2) + 1, 1, v16);
      }

      v23 = *(v16 + 2);
      v22 = *(v16 + 3);
      if (v23 >= v22 >> 1)
      {
        v16 = sub_24A780BB0((v22 > 1), v23 + 1, 1, v16);
      }

      *(v16 + 2) = v23 + 1;
      v24 = &v16[64 * v23];
      *(v24 + 4) = v58;
      *(v24 + 5) = v17;
      *(v24 + 6) = v19;
      *(v24 + 7) = v18;
      *(v24 + 8) = v21;
      *(v24 + 9) = v20;
      v24[80] = 0;
      v24[81] = v59;
      v25 = v64;
      *(v24 + 82) = v63;
      *(v24 + 43) = v25;
      *(v24 + 11) = a2;
      sub_24A68FD9C(v60, v8, type metadata accessor for FMIPDevice);
      v26 = v8[14];
      v58 = v8[13];
      v28 = v8[17];
      v27 = v8[18];
      v30 = v8[11];
      v29 = v8[12];

      sub_24A69016C(v8, type metadata accessor for FMIPDevice);
      v32 = *(v16 + 2);
      v31 = *(v16 + 3);
      if (v32 >= v31 >> 1)
      {
        v16 = sub_24A780BB0((v31 > 1), v32 + 1, 1, v16);
      }

      ++v15;
      *(v16 + 2) = v32 + 1;
      v33 = &v16[64 * v32];
      *(v33 + 4) = v58;
      *(v33 + 5) = v26;
      *(v33 + 6) = v28;
      *(v33 + 7) = v27;
      *(v33 + 8) = v30;
      *(v33 + 9) = v29;
      v33[80] = 1;
      v33[81] = v59;
      v34 = v62;
      *(v33 + 82) = v61;
      *(v33 + 43) = v34;
      *(v33 + 11) = a2;
    }

    while (v15 != 3);
  }

  else
  {
    v35 = 0;
    v16 = MEMORY[0x277D84F90];
    do
    {
      v59 = byte_285DC09E0[v35 + 32];
      sub_24A68FD9C(v60, v8, type metadata accessor for FMIPDevice);
      v36 = v8[13];
      v37 = v8[14];
      v39 = v8[17];
      v38 = v8[18];
      v41 = v8[11];
      v40 = v8[12];

      sub_24A69016C(v8, type metadata accessor for FMIPDevice);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_24A780BB0(0, *(v16 + 2) + 1, 1, v16);
      }

      v44 = *(v16 + 2);
      v43 = *(v16 + 3);
      if (v44 >= v43 >> 1)
      {
        v16 = sub_24A780BB0((v43 > 1), v44 + 1, 1, v16);
      }

      *(v16 + 2) = v44 + 1;
      v45 = &v16[64 * v44];
      *(v45 + 4) = v58;
      *(v45 + 5) = v37;
      *(v45 + 6) = v39;
      *(v45 + 7) = v38;
      *(v45 + 8) = v41;
      *(v45 + 9) = v40;
      v45[80] = 0;
      v45[81] = v59;
      v46 = v64;
      *(v45 + 82) = v63;
      *(v45 + 43) = v46;
      *(v45 + 11) = a2;
      sub_24A68FD9C(v60, v8, type metadata accessor for FMIPDevice);
      v47 = v8[14];
      v58 = v8[13];
      v49 = v8[17];
      v48 = v8[18];
      v51 = v8[11];
      v50 = v8[12];

      sub_24A69016C(v8, type metadata accessor for FMIPDevice);
      v53 = *(v16 + 2);
      v52 = *(v16 + 3);
      if (v53 >= v52 >> 1)
      {
        v16 = sub_24A780BB0((v52 > 1), v53 + 1, 1, v16);
      }

      ++v35;
      *(v16 + 2) = v53 + 1;
      v54 = &v16[64 * v53];
      *(v54 + 4) = v58;
      *(v54 + 5) = v47;
      *(v54 + 6) = v49;
      *(v54 + 7) = v48;
      *(v54 + 8) = v51;
      *(v54 + 9) = v50;
      v54[80] = 1;
      v54[81] = v59;
      v55 = v62;
      *(v54 + 82) = v61;
      *(v54 + 43) = v55;
      *(v54 + 11) = a2;
    }

    while (v35 != 6);
  }

  return v16;
}

uint64_t FMIPDeviceImageCacheRequest.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = *(v0 + 48);
  v8 = *(v0 + 49);

  sub_24A82D854();
  MEMORY[0x24C21C9E0](60, 0xE100000000000000);
  MEMORY[0x24C21C9E0](0xD00000000000001BLL, 0x800000024A842410);
  MEMORY[0x24C21C9E0](0x6A624F796E41203ALL, 0xED0000203A746365);
  MEMORY[0x24C21C9E0](v1, v2);
  MEMORY[0x24C21C9E0](0x203A6C65646F6D20, 0xE800000000000000);
  MEMORY[0x24C21C9E0](v3, v4);
  MEMORY[0x24C21C9E0](0x203A726F6C6F6320, 0xE800000000000000);
  if (v5)
  {
    v9 = v6;
  }

  else
  {
    v9 = 7104878;
  }

  if (!v5)
  {
    v5 = 0xE300000000000000;
  }

  MEMORY[0x24C21C9E0](v9, v5);

  MEMORY[0x24C21C9E0](9071406774580000, 0xE700000000000000);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](0x746E616972617620, 0xEA0000000000203ALL);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  return 0;
}

uint64_t FMIPDeviceImageCacheRequest.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 48);
  v8 = *(v0 + 49);
  v9 = v0[7];
  sub_24A82D094();
  sub_24A82D094();
  sub_24A82DCE4();
  if (v6)
  {
    sub_24A82D094();
  }

  sub_24A82D094();

  sub_24A8217B0();
  v10 = 0.0;
  if (v9 != 0.0)
  {
    v10 = v9;
  }

  return MEMORY[0x24C21D610](*&v10);
}

uint64_t FMIPDeviceImageCacheRequest.hashValue.getter()
{
  sub_24A82DCC4();
  FMIPDeviceImageCacheRequest.hash(into:)();
  return sub_24A82DD24();
}

uint64_t sub_24A823AAC()
{
  sub_24A82DCC4();
  FMIPDeviceImageCacheRequest.hash(into:)();
  return sub_24A82DD24();
}

uint64_t sub_24A823AF0()
{
  sub_24A82DCC4();
  FMIPDeviceImageCacheRequest.hash(into:)();
  return sub_24A82DD24();
}

uint64_t _s8FMIPCore27FMIPDeviceImageCacheRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  v12 = *(a2 + 48);
  v20 = *(a2 + 49);
  v21 = *(a1 + 49);
  v13 = *(a2 + 56);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_24A82DC04() & 1) == 0 || (v2 != v8 || v4 != v9) && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10 || (v3 != v11 || v5 != v10) && (sub_24A82DC04() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v6)
  {
    v14 = 0x786F626F666E69;
  }

  else
  {
    v14 = 0x696C656372756F73;
  }

  if (v6)
  {
    v15 = 0xE700000000000000;
  }

  else
  {
    v15 = 0xEA00000000007473;
  }

  if (v12)
  {
    v16 = 0x786F626F666E69;
  }

  else
  {
    v16 = 0x696C656372756F73;
  }

  if (v12)
  {
    v17 = 0xE700000000000000;
  }

  else
  {
    v17 = 0xEA00000000007473;
  }

  if (v14 == v16 && v15 == v17)
  {

    return sub_24A7D40D0(v21, v20) & (v7 == v13);
  }

  v18 = sub_24A82DC04();

  if (v18)
  {
    return sub_24A7D40D0(v21, v20) & (v7 == v13);
  }

  return 0;
}

unint64_t sub_24A823CF4()
{
  result = qword_27EF5F9C0;
  if (!qword_27EF5F9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F9C0);
  }

  return result;
}

unint64_t sub_24A823D7C()
{
  result = qword_27EF5F9D8;
  if (!qword_27EF5F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F9D8);
  }

  return result;
}

uint64_t sub_24A823E00(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A6CCDC0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24A823EB0(uint64_t *a1)
{
  sub_24A698230(a1, v15);
  v3 = sub_24A6F5EE8(v15);
  if (!v1)
  {
    v4 = qword_281515DC8;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_24A82CDC4();
    sub_24A6797D0(v5, qword_281518F88);

    v6 = sub_24A82CD94();
    v7 = sub_24A82D504();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15[0] = v9;
      *v8 = 136315138;
      v10 = sub_24A6F6244();
      v12 = v11;

      v13 = sub_24A68761C(v10, v12, v15);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_24A675000, v6, v7, "FMIPSavePreferencesResponse: initialized with coder %s", v8, 0xCu);
      sub_24A6876E8(v9);
      MEMORY[0x24C21E1D0](v9, -1, -1);
      MEMORY[0x24C21E1D0](v8, -1, -1);
    }

    else
    {
    }
  }

  sub_24A6876E8(a1);
  return v3;
}

uint64_t FMIPPlaySoundMetadata.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FMIPPlaySoundMetadata() + 20);
  v4 = sub_24A82CA34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FMIPPlaySoundMetadata.alertTitle.getter()
{
  v1 = (v0 + *(type metadata accessor for FMIPPlaySoundMetadata() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FMIPPlaySoundMetadata.alertText.getter()
{
  v1 = (v0 + *(type metadata accessor for FMIPPlaySoundMetadata() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FMIPPlaySoundMetadata.continueButtonTitle.getter()
{
  v1 = (v0 + *(type metadata accessor for FMIPPlaySoundMetadata() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FMIPPlaySoundMetadata.cancelButtonTitle.getter()
{
  v1 = (v0 + *(type metadata accessor for FMIPPlaySoundMetadata() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_24A824234()
{
  *v0;
  *v0;
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A82434C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A82491C();
  *a2 = result;
  return result;
}

void sub_24A82437C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF706D617473656DLL;
  v4 = 0x6954657461657263;
  v5 = 0xE900000000000074;
  v6 = 0x7865547472656C61;
  v7 = 0x800000024A8444F0;
  v8 = 0xD000000000000013;
  if (v2 != 4)
  {
    v8 = 0xD000000000000011;
    v7 = 0x800000024A844510;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6F43737574617473;
  v10 = 0xEA00000000006564;
  if (v2 != 1)
  {
    v9 = 0x7469547472656C61;
    v10 = 0xEA0000000000656CLL;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_24A82445C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A82491C();
  *a1 = result;
  return result;
}

uint64_t sub_24A824484(uint64_t a1)
{
  v2 = sub_24A686AA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A8244C0(uint64_t a1)
{
  v2 = sub_24A686AA4();

  return MEMORY[0x2821FE720](a1, v2);
}

void FMIPPlaySoundMetadata.encode(to:)(void *a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5FA10, &qword_24A8427C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v8 = type metadata accessor for FMIPPlaySoundMetadata();
  v9 = v8[5];
  v26 = v1;
  v10 = sub_24A82C994();
  v11 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A686AA4();
  sub_24A82DD84();
  [v10 fm_epoch];
  LOBYTE(v28) = 0;
  v12 = v7;
  v13 = v27;
  sub_24A82DB54();
  if (v13)
  {
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v14 = v26;
    v15 = qword_24A842A18[*v26];
    v27 = v4;
    v28 = v15;
    sub_24A82DB84();
    LOBYTE(v28) = 1;
    sub_24A82DB04();
    v25 = v10;

    v16 = &v14[v8[6]];
    v17 = *(v16 + 1);
    v28 = *v16;
    v29 = v17;
    v30 = 2;

    sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
    sub_24A6CCEB0();
    sub_24A82DB44();

    v18 = &v14[v8[7]];
    v19 = *(v18 + 1);
    v28 = *v18;
    v29 = v19;
    v30 = 3;

    sub_24A82DB44();

    v20 = &v14[v8[8]];
    v21 = *(v20 + 1);
    v28 = *v20;
    v29 = v21;
    v30 = 4;

    sub_24A82DB44();

    v22 = &v26[v8[9]];
    v23 = *(v22 + 1);
    v28 = *v22;
    v29 = v23;
    v30 = 5;

    sub_24A82DB44();

    (*(v27 + 8))(v12, 0);
  }
}

unint64_t sub_24A8248C8()
{
  result = qword_27EF5FA18;
  if (!qword_27EF5FA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5FA18);
  }

  return result;
}

uint64_t sub_24A82491C()
{
  v0 = sub_24A82D9C4();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

void *sub_24A82496C(unsigned __int8 *a1)
{
  v2 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v58 - v7;
  v67 = *a1;
  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = [v10 bundleForClass_];
  v70 = sub_24A82C6F4();
  v13 = v12;

  v14 = [v10 bundleForClass_];
  v68 = sub_24A82C6F4();
  v69 = v15;

  v64 = ObjCClassFromMetadata;
  v16 = [v10 bundleForClass_];
  v17 = sub_24A82C6F4();
  v19 = v18;

  v20 = sub_24A82C8B4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v65 = v21 + 56;
  v66 = v8;
  v22(v8, 1, 1, v20);
  v23 = [objc_allocWithZone(MEMORY[0x277CEC5D0]) init];
  [v23 refresh];
  LODWORD(v8) = [v23 airplaneMode];

  if (v8)
  {
    v61 = v22;
    v62 = v20;

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v63 = v6;
    v24 = sub_24A82CDC4();
    sub_24A6797D0(v24, qword_281518F88);
    v25 = sub_24A82CD94();
    v26 = sub_24A82D504();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v64;
    if (v27)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_24A675000, v25, v26, "FMNetworkUtil: Airplane mode is enabled", v29, 2u);
      MEMORY[0x24C21E1D0](v29, -1, -1);
    }

    v70 = sub_24A7BC120();
    v59 = "_TITLE_AIRPLANE_MODE";
    v60 = v30;
    v31 = 0xD00000000000001DLL;
  }

  else
  {
    v40 = v13;
    if ((sub_24A719C60() & 1) != 0 || (v41 = sub_24A82CF94(), v42 = MGGetBoolAnswer(), v41, !v42))
    {
      v36 = 0;
      v38 = 0;
      v33 = v17;
      v39 = v66;
      v22(v6, 1, 1, v20);
      goto LABEL_16;
    }

    v61 = v22;
    v62 = v20;

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v63 = v6;
    v43 = sub_24A82CDC4();
    sub_24A6797D0(v43, qword_281518F88);
    v44 = sub_24A82CD94();
    v45 = sub_24A82D504();
    v46 = os_log_type_enabled(v44, v45);
    v28 = v64;
    if (v46)
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_24A675000, v44, v45, "FMNetworkUtil: Cellular is disabled", v47, 2u);
      MEMORY[0x24C21E1D0](v47, -1, -1);
    }

    v48 = [v10 bundleForClass_];
    v70 = sub_24A82C6F4();
    v60 = v49;

    v68 = sub_24A7BC120();
    v69 = v50;
    v59 = "ALERT_NO_NETWORK_CANCEL";
    v31 = 0xD000000000000022;
  }

  v58[1] = v31;
  v32 = [v10 bundleForClass_];
  v33 = sub_24A82C6F4();
  v19 = v34;

  v35 = [v10 bundleForClass_];
  v36 = sub_24A82C6F4();
  v38 = v37;

  v6 = v63;
  sub_24A82C8A4();
  v39 = v66;
  sub_24A6D3E54(v66);
  sub_24A696DA0(v6, v39);
  v40 = v60;
  v61(v6, 1, 1, v62);
LABEL_16:
  v51 = type metadata accessor for FMIPAlert();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  v54 = swift_allocObject();
  v54[2] = v70;
  v54[3] = v40;
  v55 = v69;
  v54[4] = v68;
  v54[5] = v55;
  v54[6] = v33;
  v54[7] = v19;
  v56 = (v54 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonLabel);
  *v56 = v36;
  v56[1] = v38;
  sub_24A696DA0(v39, v54 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_okButtonURL);
  sub_24A696DA0(v6, v54 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonURL);
  *(v54 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_type) = v67;
  return v54;
}

id FMIPSeparationLocation.location.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 3) = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  return v5;
}

uint64_t FMIPSeparationLocation.address.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 24), 0x120uLL);
  memcpy(a1, (v1 + 24), 0x120uLL);
  return sub_24A67E964(__dst, v4, &unk_27EF5E0D0, &qword_24A8319E0);
}

uint64_t sub_24A825178(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6E6F697461636F6CLL;
  if (v2 != 1)
  {
    v4 = 0x6D617473656D6974;
    v3 = 0xE900000000000070;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x73736572646461;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6E6F697461636F6CLL;
  if (*a2 != 1)
  {
    v8 = 0x6D617473656D6974;
    v7 = 0xE900000000000070;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x73736572646461;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A82DC04();
  }

  return v11 & 1;
}

uint64_t sub_24A825284()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A82532C()
{
  *v0;
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A8253C0()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A825464@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A8263E4();
  *a2 = result;
  return result;
}

void sub_24A825494(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6E6F697461636F6CLL;
  if (v2 != 1)
  {
    v5 = 0x6D617473656D6974;
    v4 = 0xE900000000000070;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x73736572646461;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24A8254F8()
{
  v1 = 0x6E6F697461636F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73736572646461;
  }
}

uint64_t sub_24A825558@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A8263E4();
  *a1 = result;
  return result;
}

uint64_t sub_24A825580(uint64_t a1)
{
  v2 = sub_24A825A9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A8255BC(uint64_t a1)
{
  v2 = sub_24A825A9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPSeparationLocation.init(location:address:timestamp:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 1) = v6;
  *(a4 + 2) = v7;
  *(a4 + 3) = v8;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  memcpy((a4 + 24), a2, 0x120uLL);
  v11 = a4 + *(type metadata accessor for FMIPSeparationLocation() + 24);

  return sub_24A68C87C(a3, v11);
}

uint64_t FMIPSeparationLocation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_24A82CA34();
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A6BBA94(&qword_27EF5FA20, &qword_24A842AB0);
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = type metadata accessor for FMIPSeparationLocation();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v15 = a1[4];
  v39 = a1;
  sub_24A67DF6C(a1, v16);
  sub_24A825A9C();
  v17 = v38;
  sub_24A82DD64();
  if (!v17)
  {
    v38 = v14;
    v18 = v36;
    v19 = v6;
    v42[295] = 0;
    sub_24A684C3C();
    v20 = v37;
    sub_24A82DA84();
    memcpy(v42, v43, 0x120uLL);
    v41 = 1;
    sub_24A687EF0();
    sub_24A82DA84();
    v31 = BYTE1(v40[0]);
    v32 = LOBYTE(v40[0]);
    v29 = BYTE3(v40[0]);
    v30 = BYTE2(v40[0]);
    v33 = v40[1];
    v21 = v40[2];
    v41 = 2;
    sub_24A794F10(&qword_27EF5E960);
    sub_24A82DA84();
    (*(v18 + 8))(v10, v20);
    v23 = v19;
    v24 = v38;
    v25 = v31;
    *v38 = v32;
    *(v24 + 1) = v25;
    v26 = v29;
    *(v24 + 2) = v30;
    *(v24 + 3) = v26;
    *(v24 + 8) = v33;
    *(v24 + 16) = v21;
    memcpy(v40, v42, sizeof(v40));
    nullsub_1(v40);
    memcpy((v24 + 24), v40, 0x120uLL);
    v27 = *(v11 + 24);
    v28 = v34;
    (*(v34 + 32))(v24 + v27, v23, v3);
    (*(v28 + 56))(v24 + v27, 0, 1, v3);
    sub_24A825AF0(v24, v35);
  }

  return sub_24A6876E8(v39);
}

unint64_t sub_24A825A9C()
{
  result = qword_27EF5FA28;
  if (!qword_27EF5FA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5FA28);
  }

  return result;
}

uint64_t sub_24A825AF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPSeparationLocation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FMIPSeparationLocation.with(address:)@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, __src, 0x120uLL);
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  v9 = *(v2 + 1);
  v10 = *(v2 + 2);
  v11 = type metadata accessor for FMIPSeparationLocation();
  sub_24A67E964(&v2[*(v11 + 24)], a2 + *(v11 + 24), &qword_27EF5E0E0, &qword_24A836D90);
  *a2 = v5;
  *(a2 + 1) = v6;
  *(a2 + 2) = v7;
  *(a2 + 3) = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  memcpy((a2 + 24), __src, 0x120uLL);
  v12 = v9;
  return sub_24A67E964(__dst, v14, &unk_27EF5E0D0, &qword_24A8319E0);
}

uint64_t FMIPSeparationLocation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5FA30, &unk_24A842AB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A825A9C();
  sub_24A82DD84();
  memcpy(v24, (v3 + 24), 0x120uLL);
  memcpy(v23, (v3 + 24), sizeof(v23));
  v24[311] = 0;
  sub_24A67E964(v24, v22, &unk_27EF5E0D0, &qword_24A8319E0);
  sub_24A6BBA94(&unk_27EF5E0D0, &qword_24A8319E0);
  sub_24A6CCD3C();
  sub_24A82DB44();
  if (v2)
  {
    memcpy(v22, v23, sizeof(v22));
    sub_24A67F378(v22, &unk_27EF5E0D0, &qword_24A8319E0);
  }

  else
  {
    memcpy(v22, v23, sizeof(v22));
    sub_24A67F378(v22, &unk_27EF5E0D0, &qword_24A8319E0);
    v11 = *(v3 + 1);
    v12 = *(v3 + 2);
    v13 = *(v3 + 3);
    v14 = *(v3 + 8);
    v15 = *(v3 + 16);
    v19[0] = *v3;
    v19[1] = v11;
    v19[2] = v12;
    v19[3] = v13;
    v20 = v14;
    v21 = v15;
    v24[310] = 1;
    sub_24A6CCE5C();
    v16 = v14;
    sub_24A82DB44();

    v17 = *(type metadata accessor for FMIPSeparationLocation() + 24);
    v19[0] = 2;
    sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
    sub_24A825EF8();
    sub_24A82DB44();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24A825EF8()
{
  result = qword_27EF5FA38;
  if (!qword_27EF5FA38)
  {
    sub_24A6CCDC0(&qword_27EF5E0E0, &qword_24A836D90);
    sub_24A794F10(&qword_27EF5E970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5FA38);
  }

  return result;
}

uint64_t static FMIPSeparationLocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, (a1 + 24), sizeof(__dst));
  memcpy(v14, (a2 + 24), sizeof(v14));
  memcpy(__src, (a1 + 24), 0x120uLL);
  memcpy(&__src[288], (a2 + 24), 0x120uLL);
  memcpy(v15, (a1 + 24), sizeof(v15));
  if (sub_24A6921A8(v15) != 1)
  {
    memcpy(v11, (a1 + 24), sizeof(v11));
    memcpy(v9, (a1 + 24), sizeof(v9));
    memcpy(v10, (a2 + 24), 0x120uLL);
    if (sub_24A6921A8(v10) != 1)
    {
      memcpy(v8, (a2 + 24), sizeof(v8));
      v4 = _s8FMIPCore11FMIPAddressV2eeoiySbAC_ACtFZ_0(v9, v8);
      memcpy(v6, v8, sizeof(v6));
      sub_24A67E964(__dst, v7, &unk_27EF5E0D0, &qword_24A8319E0);
      sub_24A67E964(v14, v7, &unk_27EF5E0D0, &qword_24A8319E0);
      sub_24A67E964(v11, v7, &unk_27EF5E0D0, &qword_24A8319E0);
      sub_24A6CD854(v6);
      memcpy(v7, v9, sizeof(v7));
      sub_24A6CD854(v7);
      memcpy(v8, (a1 + 24), sizeof(v8));
      sub_24A67F378(v8, &unk_27EF5E0D0, &qword_24A8319E0);
      return v4 & 1;
    }

    memcpy(v8, (a1 + 24), sizeof(v8));
    sub_24A67E964(__dst, v7, &unk_27EF5E0D0, &qword_24A8319E0);
    sub_24A67E964(v14, v7, &unk_27EF5E0D0, &qword_24A8319E0);
    sub_24A67E964(v11, v7, &unk_27EF5E0D0, &qword_24A8319E0);
    sub_24A6CD854(v8);
    goto LABEL_7;
  }

  memcpy(v10, (a2 + 24), 0x120uLL);
  if (sub_24A6921A8(v10) != 1)
  {
    sub_24A67E964(__dst, v11, &unk_27EF5E0D0, &qword_24A8319E0);
    sub_24A67E964(v14, v11, &unk_27EF5E0D0, &qword_24A8319E0);
LABEL_7:
    memcpy(v10, __src, sizeof(v10));
    sub_24A67F378(v10, &qword_27EF5D280, &unk_24A831EC0);
    v4 = 0;
    return v4 & 1;
  }

  memcpy(v11, (a1 + 24), sizeof(v11));
  sub_24A67E964(__dst, v9, &unk_27EF5E0D0, &qword_24A8319E0);
  sub_24A67E964(v14, v9, &unk_27EF5E0D0, &qword_24A8319E0);
  sub_24A67F378(v11, &unk_27EF5E0D0, &qword_24A8319E0);
  v4 = 1;
  return v4 & 1;
}

unint64_t sub_24A8262E0()
{
  result = qword_27EF5FA50;
  if (!qword_27EF5FA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5FA50);
  }

  return result;
}

unint64_t sub_24A826338()
{
  result = qword_27EF5FA58;
  if (!qword_27EF5FA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5FA58);
  }

  return result;
}

unint64_t sub_24A826390()
{
  result = qword_27EF5FA60;
  if (!qword_27EF5FA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5FA60);
  }

  return result;
}

uint64_t sub_24A8263E4()
{
  v0 = sub_24A82D9C4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t static FMDiskIO.getOrCreateCacheKey<A>(account:service:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v59 = a6;
  v11 = sub_24A82C524();
  v55 = *(v11 - 8);
  v56 = v11;
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v50 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A82CCB4();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A82CC84();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a5[11];
  v23 = a5[12];
  v24 = a5[10];
  v60 = type metadata accessor for FMDiskIO.KeyPair();
  v58 = *(v60 - 8);
  v25 = *(v58 + 64);
  v26 = MEMORY[0x28223BE20](v60);
  v57 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v49 - v28;
  v51 = a1;
  v52 = a2;
  v53 = a3;
  v54 = a4;
  v30 = sub_24A82C544();
  v32 = v31;
  if (v31 >> 60 == 15)
  {
    type metadata accessor for FMDiskIO.FMDiskIOError();
    swift_getWitnessTable();
    v61 = swift_allocError();
    swift_willThrow();
  }

  else
  {
    v43 = v30;
    v44 = sub_24A82C724();
    v45 = *(v44 + 48);
    v46 = *(v44 + 52);
    swift_allocObject();
    sub_24A82C714();
    v61 = 0;
    swift_getWitnessTable();
    v47 = v61;
    sub_24A82C704();
    if (!v47)
    {
      sub_24A67E8E8(v43, v32);

      v36 = v60;
      return (*(v58 + 32))(v59, v29, v36);
    }

    v61 = v47;
    sub_24A67E8E8(v43, v32);
  }

  sub_24A82CC74();
  sub_24A82CCA4();
  v29 = v57;
  sub_24A826AB8(v21, v17, v57);
  v33 = sub_24A82C754();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  sub_24A82C744();
  v36 = v60;
  swift_getWitnessTable();
  v37 = sub_24A82C734();
  v39 = v38;

  v62 = v37;
  v63 = v39;
  v41 = v55;
  v40 = v56;
  v42 = v50;
  (*(v55 + 104))(v50, *MEMORY[0x277D08A30], v56);
  sub_24A770D64();
  sub_24A82C534();
  (*(v41 + 8))(v42, v40);

  sub_24A67E0F0(v37, v39);
  return (*(v58 + 32))(v59, v29, v36);
}

uint64_t FMDiskIO.__allocating_init(root:fileName:keyPair:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  FMDiskIO.init(root:fileName:keyPair:)(a1, a2, a3, a4, a5);
  return v13;
}

uint64_t sub_24A826AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24A82CC84();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for FMDiskIO.KeyPair() + 44);
  v8 = sub_24A82CCB4();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t sub_24A826B98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4B65746176697270 && a2 == 0xEA00000000007965;
  if (v4 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697274656D6D7973 && a2 == 0xEC00000079654B63)
  {

    return 1;
  }

  else
  {
    v6 = sub_24A82DC04();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_24A826CA8(char a1)
{
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](a1 & 1);
  return sub_24A82DD24();
}

BOOL sub_24A826CF0(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_24A826C70(*a1, *a2);
}

uint64_t sub_24A826D08(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_24A826CA8(*v1);
}

uint64_t sub_24A826D1C(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_24A826C80(a1, *v2);
}

uint64_t sub_24A826D30(uint64_t a1, void *a2)
{
  sub_24A82DCC4();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_24A826C80(v8, *v2);
  return sub_24A82DD24();
}

uint64_t sub_24A826D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_24A826B98(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_24A826DB0@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_24A82A084();
  *a2 = result;
  return result;
}

uint64_t sub_24A826DE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24A826E38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t FMDiskIO.KeyPair.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  type metadata accessor for FMDiskIO.KeyPair.CodingKeys();
  swift_getWitnessTable();
  v7 = sub_24A82DB64();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - v10;
  v12 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A82DD84();
  v18 = 0;
  sub_24A82CC84();
  sub_24A67E858(&qword_27EF5FA68, MEMORY[0x277D08EF0]);
  v13 = v16[1];
  sub_24A82DB44();
  if (!v13)
  {
    v14 = *(a2 + 44);
    v17 = 1;
    sub_24A82CCB4();
    sub_24A67E858(&qword_27EF5FA70, MEMORY[0x277D08F08]);
    sub_24A82DB44();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_24A8270D0()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];

  MEMORY[0x24C21C9E0](v1, v2);
  return v4;
}

char *FMDiskIO.init(root:fileName:keyPair:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v37 = a3;
  v38 = a5;
  v33 = a4;
  v34 = a1;
  v7 = *v5;
  v35 = a2;
  v36 = v7;
  v32 = sub_24A82D554();
  v8 = *(v32 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v32);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A82D534();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v14 = sub_24A82CE54();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_24A67B054();
  v31[0] = "SafeLocations.data";
  v31[1] = v16;
  sub_24A82CE24();
  v39 = MEMORY[0x277D84F90];
  sub_24A67E858(&qword_2815146D0, MEMORY[0x277D85230]);
  sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  (*(v8 + 104))(v11, *MEMORY[0x277D85260], v32);
  *(v5 + 2) = sub_24A82D594();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v17 = sub_24A82CDC4();
  sub_24A6797D0(v17, qword_281518F88);
  v18 = v33;

  v19 = sub_24A82CD94();
  v20 = sub_24A82D504();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v39 = v22;
    *v21 = 136315138;
    v23 = v37;
    *(v21 + 4) = sub_24A68761C(v37, v18, &v39);
    _os_log_impl(&dword_24A675000, v19, v20, "FMDiskIO: init with file name: %s", v21, 0xCu);
    sub_24A6876E8(v22);
    MEMORY[0x24C21E1D0](v22, -1, -1);
    MEMORY[0x24C21E1D0](v21, -1, -1);
  }

  else
  {

    v23 = v37;
  }

  v24 = v35;
  *(v6 + 3) = v34;
  *(v6 + 4) = v24;
  *(v6 + 5) = v23;
  *(v6 + 6) = v18;
  v25 = *(*v6 + 128);
  v26 = v36[10];
  v27 = v36[11];
  v28 = v36[12];
  type metadata accessor for FMDiskIO.KeyPair();
  v29 = sub_24A82D634();
  (*(*(v29 - 8) + 32))(&v6[v25], v38, v29);
  return v6;
}

uint64_t sub_24A827538(uint64_t a1)
{
  result = sub_24A828AD4();
  if ((result & 1) == 0)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v3 = sub_24A82CDC4();
    sub_24A6797D0(v3, qword_281518F88);
    v4 = sub_24A82CD94();
    v5 = sub_24A82D504();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24A675000, v4, v5, "FMDiskIO: creating to disk", v6, 2u);
      MEMORY[0x24C21E1D0](v6, -1, -1);
    }

    return sub_24A827650(a1);
  }

  return result;
}

uint64_t sub_24A827650(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v36 = v4;
  v5 = sub_24A82CDF4();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A82CE54();
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + 80);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v11);
  v18 = &v34 - v17;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v19 = sub_24A82CDC4();
  sub_24A6797D0(v19, qword_281518F88);
  v20 = sub_24A82CD94();
  v21 = sub_24A82D504();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v35 = v13;
    v23 = v8;
    v24 = a1;
    v25 = v22;
    *v22 = 0;
    _os_log_impl(&dword_24A675000, v20, v21, "FMDiskIO: save to disk", v22, 2u);
    v26 = v25;
    a1 = v24;
    v8 = v23;
    v13 = v35;
    MEMORY[0x24C21E1D0](v26, -1, -1);
  }

  v27 = v2[2];
  (*(v15 + 16))(v18, a1, v14);
  v28 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v29 = swift_allocObject();
  *(v29 + 2) = v14;
  v30 = v36;
  *(v29 + 3) = *(v36 + 88);
  *(v29 + 4) = *(v30 + 96);
  *(v29 + 5) = v2;
  (*(v15 + 32))(&v29[v28], v18, v14);
  aBlock[4] = sub_24A829E24;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCF4A8;
  v31 = _Block_copy(aBlock);

  sub_24A82CE24();
  v41 = MEMORY[0x277D84F90];
  sub_24A67E858(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  v32 = v40;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v13, v8, v31);
  _Block_release(v31);
  (*(v39 + 8))(v8, v32);
  (*(v37 + 8))(v13, v38);
}

uint64_t sub_24A827AE4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = aBlock - v6;
  v8 = v1[2];
  (*(v4 + 16))(aBlock - v6);
  v9 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = v3;
  *(v10 + 3) = *(v2 + 88);
  *(v10 + 4) = *(v2 + 96);
  *(v10 + 5) = v1;
  (*(v4 + 32))(&v10[v9], v7, v3);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_24A82A094;
  *(v11 + 24) = v10;
  aBlock[4] = sub_24A6806A0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6805E4;
  aBlock[3] = &unk_285DCF520;
  v12 = _Block_copy(aBlock);

  dispatch_sync(v8, v12);
  _Block_release(v12);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

void sub_24A827D38(uint64_t a1)
{
  v3 = MEMORY[0x24C21D990]();
  sub_24A827D94(v1, a1);

  objc_autoreleasePoolPop(v3);
}

void sub_24A827D94(char *a1, uint64_t a2)
{
  v111 = a2;
  v2 = a1;
  v114[1] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v100 = sub_24A82CCD4();
  v99 = *(v100 - 8);
  v4 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v101 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v3[11];
  v7 = v3[12];
  v110 = v3[10];
  v8 = type metadata accessor for FMDiskIO.KeyPair();
  v105 = sub_24A82D634();
  v104 = *(v105 - 8);
  v9 = *(v104 + 64);
  v10 = MEMORY[0x28223BE20](v105);
  v103 = &v98 - v11;
  v106 = v8;
  v107 = *(v8 - 8);
  v12 = *(v107 + 64);
  MEMORY[0x28223BE20](v10);
  v102 = &v98 - v13;
  v14 = sub_24A82C8B4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = 0;
  v109 = objc_opt_self();
  v19 = [v109 defaultManager];
  v20 = *(v2 + 3);
  v21 = *(v2 + 4);
  v108 = v2;
  v22 = sub_24A82CF94();
  LOBYTE(v2) = [v19 fileExistsAtPath:v22 isDirectory:&v113];

  if (v2)
  {
LABEL_4:
    v27 = sub_24A82C754();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v30 = sub_24A82C744();
    v31 = v112;
    v32 = sub_24A82C734();
    if (v31)
    {

      v34 = v31;
LABEL_21:
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v79 = sub_24A82CDC4();
      sub_24A6797D0(v79, qword_281518F88);
      v80 = v34;
      v81 = sub_24A82CD94();
      v82 = sub_24A82D4E4();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v114[0] = v84;
        *v83 = 136315138;
        swift_getErrorValue();
        v85 = sub_24A82DC74();
        v87 = sub_24A68761C(v85, v86, v114);

        *(v83 + 4) = v87;
        _os_log_impl(&dword_24A675000, v81, v82, "FMDiskIO: Could not save objects to disk %s", v83, 0xCu);
        sub_24A6876E8(v84);
        MEMORY[0x24C21E1D0](v84, -1, -1);
        MEMORY[0x24C21E1D0](v83, -1, -1);
      }

      else
      {
      }

      goto LABEL_33;
    }

    v35 = v32;
    v112 = v30;
    v36 = v33;
    v37 = v104;
    v38 = v103;
    v39 = v105;
    (*(v104 + 16))(v103, &v108[*(*v108 + 128)], v105);
    v40 = v107;
    v41 = v106;
    if ((*(v107 + 48))(v38, 1, v106) == 1)
    {
      (*(v37 + 8))(v38, v39);
      v42 = v36;
      v43 = sub_24A82C8E4();
      sub_24A8270D0();
      v44 = sub_24A82CF94();

      v45 = [v43 writeToFile:v44 atomically:1];

      if (v45)
      {
LABEL_8:
        v111 = v35;
        v46 = [v109 defaultManager];
        sub_24A6BBA94(&qword_27EF5E188, &unk_24A8377C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24A8327A0;
        v48 = *MEMORY[0x277CCA1B0];
        *(inited + 32) = *MEMORY[0x277CCA1B0];
        v49 = *MEMORY[0x277CCA1A0];
        type metadata accessor for FileProtectionType(0);
        *(inited + 64) = v50;
        *(inited + 40) = v49;
        v51 = v48;
        v52 = v49;
        sub_24A78AD70(inited);
        swift_setDeallocating();
        sub_24A67F378(inited + 32, &unk_27EF5E190, &unk_24A838C30);
        type metadata accessor for FileAttributeKey(0);
        sub_24A67E858(&qword_281512B90, type metadata accessor for FileAttributeKey);
        v53 = sub_24A82CED4();

        sub_24A8270D0();
        v54 = sub_24A82CF94();

        v114[0] = 0;
        LODWORD(v49) = [v46 setAttributes:v53 ofItemAtPath:v54 error:v114];

        if (!v49)
        {
          v78 = v114[0];
          v34 = sub_24A82C7F4();

          swift_willThrow();
          sub_24A67E0F0(v111, v42);

          goto LABEL_21;
        }

        v55 = qword_281515DC8;
        v56 = v114[0];
        if (v55 != -1)
        {
          swift_once();
        }

        v57 = sub_24A82CDC4();
        sub_24A6797D0(v57, qword_281518F88);

        v58 = sub_24A82CD94();
        v59 = sub_24A82D504();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v114[0] = v61;
          *v60 = 136315138;
          v62 = sub_24A8270D0();
          v64 = sub_24A68761C(v62, v63, v114);

          *(v60 + 4) = v64;
          _os_log_impl(&dword_24A675000, v58, v59, "FMDiskIO: Successfully wrote object to disk @ %s", v60, 0xCu);
          sub_24A6876E8(v61);
          MEMORY[0x24C21E1D0](v61, -1, -1);
          MEMORY[0x24C21E1D0](v60, -1, -1);
        }

        sub_24A67E0F0(v111, v42);

LABEL_32:

        goto LABEL_33;
      }
    }

    else
    {
      v75 = v102;
      (*(v40 + 32))(v102, v38, v41);
      v76 = &v75[*(v41 + 44)];
      sub_24A82CC94();
      v42 = v36;
      sub_24A67E858(&qword_27EF5E1A0, MEMORY[0x277D08F20]);
      v77 = v100;
      v88 = sub_24A82C734();
      v90 = v89;
      v91 = sub_24A82C8E4();
      sub_24A67E0F0(v88, v90);
      sub_24A8270D0();
      v92 = sub_24A82CF94();

      LODWORD(v88) = [v91 writeToFile:v92 atomically:1];

      (*(v99 + 8))(v101, v77);
      (*(v107 + 8))(v102, v106);
      if (v88)
      {
        goto LABEL_8;
      }
    }

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v93 = sub_24A82CDC4();
    sub_24A6797D0(v93, qword_281518F88);
    v94 = sub_24A82CD94();
    v95 = sub_24A82D504();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_24A675000, v94, v95, "FMDiskIO: Could not save objects to disk", v96, 2u);
      MEMORY[0x24C21E1D0](v96, -1, -1);
    }

    sub_24A67E0F0(v35, v42);

    goto LABEL_32;
  }

  v23 = [v109 defaultManager];
  sub_24A82C824();
  v24 = sub_24A82C844();
  (*(v15 + 8))(v18, v14);
  v114[0] = 0;
  v25 = [v23 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:v114];

  if (v25)
  {
    v26 = v114[0];
    goto LABEL_4;
  }

  v65 = v114[0];
  v66 = sub_24A82C7F4();

  swift_willThrow();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v67 = sub_24A82CDC4();
  sub_24A6797D0(v67, qword_281518F88);

  v68 = sub_24A82CD94();
  v69 = sub_24A82D504();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v114[0] = v71;
    *v70 = 136315138;
    v72 = sub_24A8270D0();
    v74 = sub_24A68761C(v72, v73, v114);

    *(v70 + 4) = v74;
    _os_log_impl(&dword_24A675000, v68, v69, "FMDiskIO: Could not create directory for content: %s", v70, 0xCu);
    sub_24A6876E8(v71);
    MEMORY[0x24C21E1D0](v71, -1, -1);
    MEMORY[0x24C21E1D0](v70, -1, -1);
  }

LABEL_33:
  v97 = *MEMORY[0x277D85DE8];
}

id sub_24A828AD4()
{
  v0 = [objc_opt_self() defaultManager];
  sub_24A8270D0();
  v1 = sub_24A82CF94();

  v2 = [v0 fileExistsAtPath_];

  return v2;
}

uint64_t sub_24A828B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*v2 + 80);
  v6 = sub_24A82D634();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_24A828CDC(&v13 - v9);
  v11 = *(v5 - 8);
  if ((*(v11 + 48))(v10, 1, v5) != 1)
  {
    return (*(v11 + 32))(a2, v10, v5);
  }

  (*(v7 + 8))(v10, v6);
  sub_24A827650(a1);
  return (*(v11 + 16))(a2, a1, v5);
}

uint64_t sub_24A828CDC@<X0>(uint64_t a1@<X8>)
{
  (*(*(*(*v1 + 80) - 8) + 56))(a1, 1, 1);
  v3 = v1[2];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_24A829F40;
  *(v5 + 24) = v4;
  v9[4] = sub_24A680674;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24A6805E4;
  v9[3] = &unk_285DCF598;
  v6 = _Block_copy(v9);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_24A828E78(uint64_t a1, uint64_t a2)
{
  v87 = a2;
  v3 = *a1;
  v4 = sub_24A82CC54();
  v84 = *(v4 - 8);
  v5 = *(v84 + 64);
  MEMORY[0x28223BE20](v4);
  v82 = &v75[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v92 = sub_24A82CCD4();
  v83 = *(v92 - 8);
  v7 = *(v83 + 64);
  MEMORY[0x28223BE20](v92);
  v90 = &v75[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v3[10];
  v86 = sub_24A82D634();
  v85 = *(v86 - 8);
  v10 = *(v85 + 64);
  v11 = MEMORY[0x28223BE20](v86);
  v81 = &v75[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v88 = &v75[-v13];
  v14 = v3[11];
  v15 = v3[12];
  v91 = v9;
  v89 = v14;
  v16 = type metadata accessor for FMDiskIO.KeyPair();
  v17 = sub_24A82D634();
  v93 = *(v17 - 8);
  v94 = v17;
  v18 = *(v93 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v75[-v20];
  v96 = *(v16 - 8);
  v22 = *(v96 + 64);
  MEMORY[0x28223BE20](v19);
  v95 = &v75[-v23];
  v24 = sub_24A82C8B4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v75[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v29 = sub_24A82CDC4();
  v97 = sub_24A6797D0(v29, qword_281518F88);
  v30 = sub_24A82CD94();
  v31 = sub_24A82D504();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_24A675000, v30, v31, "FMDiskIO: read from disk", v32, 2u);
    MEMORY[0x24C21E1D0](v32, -1, -1);
  }

  if (sub_24A828AD4())
  {
    v80 = v4;
    sub_24A8270D0();
    sub_24A82C824();

    v40 = sub_24A82C8C4();
    v42 = v41;
    (*(v25 + 8))(v28, v24);

    sub_24A681458(v40, v42);
    v43 = sub_24A82CD94();
    v44 = sub_24A82D504();

    sub_24A67E0F0(v40, v42);
    v45 = os_log_type_enabled(v43, v44);
    v79 = v42;
    v78 = v40;
    if (v45)
    {
      v46 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v98 = v77;
      *v46 = 136315394;
      v76 = v44;
      v47 = sub_24A8270D0();
      v49 = sub_24A68761C(v47, v48, &v98);

      *(v46 + 4) = v49;
      *(v46 + 12) = 2080;
      v50 = sub_24A82C8D4();
      v52 = sub_24A68761C(v50, v51, &v98);

      *(v46 + 14) = v52;
      _os_log_impl(&dword_24A675000, v43, v76, "FMDiskIO: file: %s data: %s", v46, 0x16u);
      v53 = v77;
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v53, -1, -1);
      MEMORY[0x24C21E1D0](v46, -1, -1);
    }

    v54 = v96;
    v55 = v93;
    v56 = sub_24A82C724();
    v57 = *(v56 + 48);
    v58 = *(v56 + 52);
    swift_allocObject();
    sub_24A82C714();
    v59 = v94;
    (*(v55 + 16))(v21, a1 + *(*a1 + 128), v94);
    v60 = (*(v54 + 48))(v21, 1, v16);
    v61 = v80;
    if (v60 == 1)
    {
      (*(v55 + 8))(v21, v59);
      v62 = v88;
      v63 = v91;
      v64 = v78;
      v65 = v79;
      sub_24A82C704();
      sub_24A67E0F0(v64, v65);

      (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
    }

    else
    {
      (*(v54 + 32))(v95, v21, v16);
      sub_24A67E858(&unk_27EF5E280, MEMORY[0x277D08F20]);
      sub_24A82C704();
      v66 = *(v16 + 44);
      v67 = v82;
      sub_24A82CC64();
      v68 = v67;
      v69 = sub_24A82CCC4();
      v71 = v70;
      (*(v84 + 8))(v68, v61);
      v62 = v81;
      v72 = v91;
      sub_24A82C704();
      v73 = (v83 + 8);
      v74 = (v96 + 8);
      sub_24A67E0F0(v69, v71);

      sub_24A67E0F0(v78, v79);
      (*v73)(v90, v92);
      (*v74)(v95, v16);
      (*(*(v72 - 8) + 56))(v62, 0, 1, v72);
    }

    (*(v85 + 40))(v87, v62, v86);
  }

  else
  {

    v97 = sub_24A82CD94();
    v33 = sub_24A82D4E4();

    if (os_log_type_enabled(v97, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v98 = v35;
      *v34 = 136315138;
      v36 = sub_24A8270D0();
      v38 = sub_24A68761C(v36, v37, &v98);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_24A675000, v97, v33, "FMDiskIO: Disk archive does not exist at: %s", v34, 0xCu);
      sub_24A6876E8(v35);
      MEMORY[0x24C21E1D0](v35, -1, -1);
      MEMORY[0x24C21E1D0](v34, -1, -1);
    }

    else
    {
      v39 = v97;
    }
  }
}

uint64_t FMDiskIO.deinit()
{
  v1 = *v0;

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(*v0 + 128);
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  type metadata accessor for FMDiskIO.KeyPair();
  v8 = sub_24A82D634();
  (*(*(v8 - 8) + 8))(v0 + v4, v8);
  return v0;
}

uint64_t FMDiskIO.__deallocating_deinit()
{
  FMDiskIO.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A829D60(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_24A829D98(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_24A829E28()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_24A829EE4()
{
  v1 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 48) & ~*(*(*(v0 + 16) - 8) + 80));
  v2 = *(v0 + 40);
  sub_24A827D38(v1);
}

uint64_t sub_24A82A0A0(uint64_t a1, int a2)
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

uint64_t sub_24A82A0E8(uint64_t result, int a2, int a3)
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

uint64_t sub_24A82A144(void *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5FC18, &qword_24A843010);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A82A7A4();
  sub_24A82DD84();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_24A82DB04();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  sub_24A82DB04();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  sub_24A82DB04();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_24A82A2E4()
{
  v1 = 0x656D614E7473616CLL;
  if (*v0 != 1)
  {
    v1 = 0x656C646E6168;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D614E7473726966;
  }
}

uint64_t sub_24A82A340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A82A43C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A82A368(uint64_t a1)
{
  v2 = sub_24A82A7A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A82A3A4(uint64_t a1)
{
  v2 = sub_24A82A7A4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24A82A3E0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_24A82A558(a1, v6);
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

uint64_t sub_24A82A43C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E7473726966 && a2 == 0xE900000000000065;
  if (v4 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E7473616CLL && a2 == 0xE800000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24A82DC04();

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

uint64_t sub_24A82A558@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5FC08, &qword_24A843008);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A82A7A4();
  sub_24A82DD64();
  if (v2)
  {
    return sub_24A6876E8(a1);
  }

  v27 = 0;
  v11 = sub_24A82DA44();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_24A82DA44();
  v23 = v14;
  v25 = 2;
  v15 = sub_24A82DA44();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_24A6876E8(a1);
  *a2 = v24;
  a2[1] = v13;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v15;
  a2[5] = v18;
  return result;
}

unint64_t sub_24A82A7A4()
{
  result = qword_27EF5FC10;
  if (!qword_27EF5FC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5FC10);
  }

  return result;
}

unint64_t sub_24A82A80C()
{
  result = qword_27EF5FC20;
  if (!qword_27EF5FC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5FC20);
  }

  return result;
}

unint64_t sub_24A82A864()
{
  result = qword_27EF5FC28;
  if (!qword_27EF5FC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5FC28);
  }

  return result;
}

unint64_t sub_24A82A8BC()
{
  result = qword_27EF5FC30;
  if (!qword_27EF5FC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5FC30);
  }

  return result;
}

void *FMIPAlert.__allocating_init(title:message:okButtonLabel:okButtonURL:cancelButtonLabel:cancelButtonURL:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  v19 = *(v11 + 48);
  v20 = *(v11 + 52);
  v21 = swift_allocObject();
  v22 = *a11;
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = a3;
  v21[5] = a4;
  v21[6] = a5;
  v21[7] = a6;
  v23 = (v21 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonLabel);
  *v23 = a8;
  v23[1] = a9;
  sub_24A696DA0(a7, v21 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_okButtonURL);
  sub_24A696DA0(a10, v21 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonURL);
  *(v21 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_type) = v22;
  return v21;
}

FMIPCore::FMIPAlertType_optional __swiftcall FMIPAlertType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t FMIPAlertType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x726576726573;
  v3 = 0x496B726F7774656ELL;
  v4 = 0x696C616974696E69;
  if (v1 != 3)
  {
    v4 = 0x5441434552504544;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000015;
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

uint64_t sub_24A82AB0C()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A82AC08()
{
  *v0;
  *v0;
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A82ACF0()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A82ADF4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x726576726573;
  v5 = 0xEC00000065757373;
  v6 = 0x496B726F7774656ELL;
  v7 = 0xEE006E6F6974617ALL;
  v8 = 0x696C616974696E69;
  if (v2 != 3)
  {
    v8 = 0x5441434552504544;
    v7 = 0xEA00000000004445;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x800000024A844530;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t FMIPAlert.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FMIPAlert.message.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t FMIPAlert.okButtonLabel.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t FMIPAlert.cancelButtonLabel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonLabel);
  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonLabel + 8);

  return v1;
}

uint64_t sub_24A82AFCC()
{
  *v0;
  *v0;
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A82B108@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A82C448();
  *a2 = result;
  return result;
}

void sub_24A82B138(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656C746974;
  v5 = 0xEF4C52556E6F7474;
  v6 = 0x75426C65636E6163;
  if (v2 != 5)
  {
    v6 = 0x7079547472656C61;
    v5 = 0xE900000000000065;
  }

  v7 = 0xEB000000004C5255;
  v8 = 0x6E6F747475426B6FLL;
  if (v2 != 3)
  {
    v8 = 0xD000000000000011;
    v7 = 0x800000024A844510;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x6567617373656DLL;
  if (v2 != 1)
  {
    v10 = 0x6E6F747475426B6FLL;
    v9 = 0xED0000656C746954;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_24A82B23C()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x75426C65636E6163;
  if (v1 != 5)
  {
    v3 = 0x7079547472656C61;
  }

  v4 = 0x6E6F747475426B6FLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6567617373656DLL;
  if (v1 != 1)
  {
    v5 = 0x6E6F747475426B6FLL;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_24A82B33C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A82C448();
  *a1 = result;
  return result;
}

uint64_t sub_24A82B364(uint64_t a1)
{
  v2 = sub_24A82BA40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A82B3A0(uint64_t a1)
{
  v2 = sub_24A82BA40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPAlert.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  FMIPAlert.init(from:)(a1);
  return v5;
}

char *FMIPAlert.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v62 = v50 - v7;
  v8 = sub_24A6BBA94(&qword_27EF5FC38, &qword_24A843130);
  v61 = *(v8 - 8);
  v9 = *(v61 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v50 - v10;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v12 = sub_24A82CDC4();
  sub_24A6797D0(v12, qword_281518F88);
  v13 = sub_24A82CD94();
  v14 = sub_24A82D504();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24A675000, v13, v14, "FMAlert: initialized with coder", v15, 2u);
    MEMORY[0x24C21E1D0](v15, -1, -1);
  }

  v16 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A82BA40();
  sub_24A82DD64();
  if (!v2)
  {
    v70 = 0;
    v19 = sub_24A82DA44();
    v59 = v20;
    v60 = v19;
    v69 = 1;
    v21 = sub_24A82DA44();
    v57 = v22;
    v58 = v21;
    v68 = 2;
    v23 = sub_24A82DA44();
    v55 = v24;
    v56 = v23;
    v67 = 3;
    v25 = sub_24A82DA44();
    v27 = v26;
    v52 = v25;
    v66 = 4;
    v28 = sub_24A82DA44();
    v53 = v29;
    v54 = v28;
    v65 = 5;
    v30 = sub_24A82DA44();
    v32 = v31;
    v50[1] = v30;
    v64 = 6;
    v33 = sub_24A82DA44();
    v39 = v38;
    v51 = v33;
    if (v27)
    {
      v34 = v62;
      sub_24A82C8A4();

      sub_24A696DA0(v34, &v3[OBJC_IVAR____TtC8FMIPCore9FMIPAlert_okButtonURL]);
      if (!v32)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v40 = OBJC_IVAR____TtC8FMIPCore9FMIPAlert_okButtonURL;
      v41 = sub_24A82C8B4();
      (*(*(v41 - 8) + 56))(&v3[v40], 1, 1, v41);
      if (!v32)
      {
LABEL_15:
        v42 = OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonURL;
        v43 = sub_24A82C8B4();
        (*(*(v43 - 8) + 56))(&v3[v42], 1, 1, v43);
        if (!v39)
        {
          goto LABEL_16;
        }

        goto LABEL_10;
      }
    }

    v35 = v62;
    sub_24A82C8A4();

    sub_24A696DA0(v35, &v3[OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonURL]);
    if (!v39)
    {
LABEL_16:
      (*(v61 + 8))(v11, v8);
      v37 = 0;
LABEL_17:
      v3[OBJC_IVAR____TtC8FMIPCore9FMIPAlert_type] = v37;
      v44 = v59;
      *(v3 + 2) = v60;
      *(v3 + 3) = v44;
      v45 = v57;
      *(v3 + 4) = v58;
      *(v3 + 5) = v45;
      v46 = v55;
      *(v3 + 6) = v56;
      *(v3 + 7) = v46;
      v47 = &v3[OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonLabel];
      v48 = v53;
      *v47 = v54;
      v47[1] = v48;
      goto LABEL_18;
    }

LABEL_10:
    v36._countAndFlagsBits = v51;
    v36._object = v39;
    FMIPAlertType.init(rawValue:)(v36);
    (*(v61 + 8))(v11, v8);
    v37 = v63;
    if (v63 == 5)
    {
      v37 = 0;
    }

    goto LABEL_17;
  }

  type metadata accessor for FMIPAlert();
  v17 = *(*v3 + 48);
  v18 = *(*v3 + 52);
  swift_deallocPartialClassInstance();
LABEL_18:
  sub_24A6876E8(a1);
  return v3;
}

void *FMIPAlert.init(title:message:okButtonLabel:okButtonURL:cancelButtonLabel:cancelButtonURL:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  v12 = *a11;
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;
  v11[6] = a5;
  v11[7] = a6;
  v13 = (v11 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonLabel);
  *v13 = a8;
  v13[1] = a9;
  sub_24A696DA0(a7, v11 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_okButtonURL);
  sub_24A696DA0(a10, v11 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonURL);
  *(v11 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_type) = v12;
  return v11;
}

unint64_t sub_24A82BA40()
{
  result = qword_281512CF0[0];
  if (!qword_281512CF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281512CF0);
  }

  return result;
}

uint64_t type metadata accessor for FMIPAlert()
{
  result = qword_281512CC8;
  if (!qword_281512CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A82BAE0()
{
  v1 = v0;
  v2 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v43 - v7;
  v45[0] = 0;
  v45[1] = 0xE000000000000000;
  sub_24A82D854();

  v45[0] = 0xD000000000000013;
  v45[1] = 0x800000024A84B3C0;
  if (v0[3])
  {
    v9 = v0[2];
    v10 = v0[3];
  }

  else
  {
    v10 = 0xE300000000000000;
    v9 = 7104878;
  }

  MEMORY[0x24C21C9E0](v9, v10);

  MEMORY[0x24C21C9E0](0x6567617373656D20, 0xE90000000000003ALL);
  if (v0[5])
  {
    v11 = v0[4];
    v12 = v0[5];
  }

  else
  {
    v12 = 0xE300000000000000;
    v11 = 7104878;
  }

  MEMORY[0x24C21C9E0](v11, v12);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  v13 = v45[0];
  v14 = v45[1];
  v45[0] = 0;
  v45[1] = 0xE000000000000000;
  sub_24A82D854();
  MEMORY[0x24C21C9E0](0x6E6F747475426B6FLL, 0xEE003A6C6562614CLL);
  if (v0[7])
  {
    v15 = v0[6];
    v16 = v0[7];
  }

  else
  {
    v16 = 0xE300000000000000;
    v15 = 7104878;
  }

  MEMORY[0x24C21C9E0](v15, v16);

  MEMORY[0x24C21C9E0](0xD000000000000014, 0x800000024A84B3E0);
  v17 = *(v0 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonLabel + 8);
  v43 = v6;
  if (v17)
  {
    v18 = *(v0 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonLabel);
    v19 = v17;
  }

  else
  {
    v19 = 0xE300000000000000;
    v18 = 7104878;
  }

  MEMORY[0x24C21C9E0](v18, v19);

  MEMORY[0x24C21C9E0](0x203A65707974202CLL, 0xE800000000000000);
  v44 = *(v0 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_type);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  v20 = v45[0];
  v21 = v45[1];
  v45[0] = v13;
  v45[1] = v14;

  MEMORY[0x24C21C9E0](v20, v21);

  v22 = v45[0];
  v23 = v45[1];
  v45[0] = 0;
  v45[1] = 0xE000000000000000;
  sub_24A82D854();

  v45[0] = 0xD000000000000011;
  v45[1] = 0x800000024A84B400;
  sub_24A696E10(v0 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonURL, v8);
  v24 = sub_24A82C8B4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  if (v26(v8, 1, v24) == 1)
  {
    sub_24A6D3E54(v8);
    v27 = 0xE300000000000000;
    v28 = 7104878;
  }

  else
  {
    v29 = sub_24A82C814();
    v27 = v30;
    (*(v25 + 8))(v8, v24);
    v28 = v29;
  }

  MEMORY[0x24C21C9E0](v28, v27);

  MEMORY[0x24C21C9E0](8236, 0xE200000000000000);
  v31 = v45[0];
  v32 = v45[1];
  v45[0] = v22;
  v45[1] = v23;

  MEMORY[0x24C21C9E0](v31, v32);

  v34 = v45[0];
  v33 = v45[1];
  v45[0] = 0;
  v45[1] = 0xE000000000000000;
  sub_24A82D854();

  strcpy(v45, "okButtonURL: ");
  HIWORD(v45[1]) = -4864;
  v35 = v43;
  sub_24A696E10(v1 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_okButtonURL, v43);
  if (v26(v35, 1, v24) == 1)
  {
    sub_24A6D3E54(v35);
    v36 = 0xE300000000000000;
    v37 = 7104878;
  }

  else
  {
    v38 = sub_24A82C814();
    v36 = v39;
    (*(v25 + 8))(v35, v24);
    v37 = v38;
  }

  MEMORY[0x24C21C9E0](v37, v36);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  v40 = v45[0];
  v41 = v45[1];
  v45[0] = v34;
  v45[1] = v33;

  MEMORY[0x24C21C9E0](v40, v41);

  return v45[0];
}

void *FMIPAlert.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  sub_24A6D3E54(v0 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_okButtonURL);
  v4 = *(v0 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonLabel + 8);

  sub_24A6D3E54(v0 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonURL);
  return v0;
}

uint64_t FMIPAlert.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  sub_24A6D3E54(v0 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_okButtonURL);
  v4 = *(v0 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonLabel + 8);

  sub_24A6D3E54(v0 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonURL);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

char *sub_24A82C10C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for FMIPAlert();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = FMIPAlert.init(from:)(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

unint64_t sub_24A82C190()
{
  result = qword_27EF5FC40;
  if (!qword_27EF5FC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5FC40);
  }

  return result;
}

void sub_24A82C1FC()
{
  sub_24A6790B0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_24A82C344()
{
  result = qword_27EF5FC48;
  if (!qword_27EF5FC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5FC48);
  }

  return result;
}

unint64_t sub_24A82C39C()
{
  result = qword_281512CE0;
  if (!qword_281512CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281512CE0);
  }

  return result;
}

unint64_t sub_24A82C3F4()
{
  result = qword_281512CE8;
  if (!qword_281512CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281512CE8);
  }

  return result;
}

uint64_t sub_24A82C448()
{
  v0 = sub_24A82D9C4();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}