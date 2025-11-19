uint64_t sub_1D26DF228@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0298);
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v104 - v3;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E02A0);
  MEMORY[0x1EEE9AC00](v127);
  v130 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v129 = &v104 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E02A8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v123 = (&v104 - v8);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E02B0);
  MEMORY[0x1EEE9AC00](v121);
  v10 = &v104 - v9;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E02B8);
  MEMORY[0x1EEE9AC00](v122);
  v128 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v104 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v131 = &v104 - v16;
  v118 = sub_1D2875E18();
  v120 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v114 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0);
  MEMORY[0x1EEE9AC00](v116);
  v19 = &v104 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v115 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v104 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v117 = &v104 - v26;
  v27 = sub_1D2875628();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1D26DAA04() & 1) == 0)
  {
    sub_1D26ECE84(&v175);
    goto LABEL_20;
  }

  v113 = v10;
  v31 = type metadata accessor for ComposingView();
  v32 = a1 + *(v31 + 84);
  v33 = *v32;
  LODWORD(v32) = v32[8];
  v119 = a1;
  v112 = v14;
  if (v32 == 1)
  {
    *&v147 = v33;
    sub_1D2870F78();
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v34 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v28 + 8))(v30, v27);
  }

  swift_getKeyPath();
  v35 = v117;
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  *&v175 = off_1ED8A4930;
  sub_1D26EEE94(&qword_1ED8A4920, type metadata accessor for DebugSettings);
  sub_1D28719E8();
  sub_1D2870F78();
  v36 = sub_1D23CF978();

  v37 = (v119 + *(v31 + 24));
  v38 = *v37;
  v107 = v37[1];
  v108 = v38;
  *&v175 = v38;
  *(&v175 + 1) = v107;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  v110 = sub_1D22FECC4();

  sub_1D2521858(&v132);
  v109 = v36 & 1;
  v111 = sub_1D2876348();
  v105 = v31;
  sub_1D24CC0C4(v35);
  v39 = v120;
  v40 = v118;
  (*(v120 + 104))(v24, *MEMORY[0x1E697FF38], v118);
  (*(v39 + 56))(v24, 0, 1, v40);
  v41 = *(v116 + 48);
  sub_1D22BD1D0(v35, v19, &qword_1EC6D99B8);
  sub_1D22BD1D0(v24, &v19[v41], &qword_1EC6D99B8);
  v42 = *(v39 + 48);
  if (v42(v19, 1, v40) == 1)
  {
    sub_1D22BD238(v24, &qword_1EC6D99B8);
    sub_1D22BD238(v35, &qword_1EC6D99B8);
    v43 = v42(&v19[v41], 1, v40);
    a1 = v119;
    if (v43 == 1)
    {
      sub_1D22BD238(v19, &qword_1EC6D99B8);
      v10 = v113;
LABEL_15:
      v49 = a1 + *(v105 + 44);
      v50 = *v49;
      v51 = *(v49 + 1);
      LOBYTE(v175) = v50;
      *(&v175 + 1) = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
      sub_1D2877308();
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v44 = v115;
  sub_1D22BD1D0(v19, v115, &qword_1EC6D99B8);
  if (v42(&v19[v41], 1, v40) == 1)
  {
    sub_1D22BD238(v24, &qword_1EC6D99B8);
    sub_1D22BD238(v35, &qword_1EC6D99B8);
    (*(v120 + 8))(v44, v40);
    a1 = v119;
LABEL_13:
    sub_1D22BD238(v19, &qword_1EC6E0DB0);
    v10 = v113;
    goto LABEL_16;
  }

  v45 = v120;
  v46 = v114;
  (*(v120 + 32))(v114, &v19[v41], v40);
  sub_1D26EEE94(&qword_1ED89D3D0, MEMORY[0x1E697FF50]);
  v47 = sub_1D2877F98();
  v48 = *(v45 + 8);
  v48(v46, v40);
  sub_1D22BD238(v24, &qword_1EC6D99B8);
  sub_1D22BD238(v35, &qword_1EC6D99B8);
  v48(v115, v40);
  sub_1D22BD238(v19, &qword_1EC6D99B8);
  a1 = v119;
  v10 = v113;
  if (v47)
  {
    goto LABEL_15;
  }

LABEL_16:
  sub_1D2874298();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  LOBYTE(v136) = 0;
  *&v175 = v108;
  *(&v175 + 1) = v107;
  sub_1D2877308();
  v60 = sub_1D2307934();

  if (v60)
  {
    sub_1D2874938();
    MEMORY[0x1D38A0390](0.5, 1.0, 0.0);
    v61 = sub_1D2874978();
  }

  else
  {
    v61 = sub_1D2874958();
  }

  v14 = v112;
  v158 = v110;
  LOBYTE(v159) = v109;
  *(&v159 + 1) = 0;
  v162 = v134;
  v163[0] = v135[0];
  *(v163 + 9) = *(v135 + 9);
  v160 = v132;
  v161 = v133;
  LOBYTE(v164) = v111;
  *(&v164 + 1) = v53;
  *&v165 = v55;
  *(&v165 + 1) = v57;
  *&v166 = v59;
  BYTE8(v166) = 0;
  v167 = v61;
  CGRectMake(*&v133, *&v132);
  v183 = v165;
  v184 = v166;
  v185 = v167;
  v179 = v162;
  v180 = v163[0];
  v182 = v164;
  v181 = v163[1];
  v175 = v158;
  v176 = v159;
  v177 = v160;
  v178 = v161;
LABEL_20:
  v62 = sub_1D2877848();
  v63 = v123;
  *v123 = v62;
  *(v63 + 8) = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E02C0);
  sub_1D26E0288(a1, v63 + *(v65 + 44));
  sub_1D2877848();
  sub_1D2875208();
  sub_1D22EC9BC(v63, v10, &qword_1EC6E02A8);
  v66 = &v10[*(v121 + 36)];
  v67 = v173;
  *(v66 + 4) = v172;
  *(v66 + 5) = v67;
  *(v66 + 6) = v174;
  v68 = v169;
  *v66 = v168;
  *(v66 + 1) = v68;
  v69 = v171;
  *(v66 + 2) = v170;
  *(v66 + 3) = v69;
  v70 = sub_1D2877828();
  v72 = v71;
  v73 = &v14[*(v122 + 36)];
  sub_1D26DBA14(v73);
  v74 = (v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E02C8) + 36));
  *v74 = v70;
  v74[1] = v72;
  sub_1D22EC9BC(v10, v14, &qword_1EC6E02B0);
  sub_1D22EC9BC(v14, v131, &qword_1EC6E02B8);
  v75 = type metadata accessor for ComposingView();
  v76 = (a1 + v75[6]);
  v77 = *v76;
  v123 = v76[1];
  *&v158 = v77;
  *(&v158 + 1) = v123;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  sub_1D22F7DF4();

  v78 = v124;
  sub_1D22D7C04(*a1, 0, v124);
  v79 = a1 + v75[11];
  v80 = *v79;
  v81 = *(v79 + 1);
  LOBYTE(v158) = v80;
  *(&v158 + 1) = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  sub_1D2877308();
  LOBYTE(v63) = v147;
  KeyPath = swift_getKeyPath();
  v83 = v78 + *(v125 + 36);
  *v83 = KeyPath;
  *(v83 + 8) = v63;
  v84 = a1 + v75[16];
  v85 = *v84;
  v86 = *(v84 + 1);
  LOBYTE(v84) = v84[16];
  LOBYTE(v158) = v85;
  *(&v158 + 1) = v86;
  LOBYTE(v159) = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0268);
  sub_1D28742C8();
  v158 = v147;
  LOBYTE(v159) = v148;
  LOBYTE(v147) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0128);
  sub_1D26ECEA4();
  sub_1D26EA8A8();
  v87 = v129;
  sub_1D2876EA8();

  sub_1D22BD238(v78, &qword_1EC6E0298);
  *&v158 = v77;
  *(&v158 + 1) = v123;
  sub_1D2877308();
  v88 = v147;
  swift_getKeyPath();
  *&v158 = v88;
  sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  LODWORD(v63) = *(v88 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state);

  *(v87 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E02D0) + 36)) = v63 == 1;
  *(v87 + *(v127 + 36)) = 0xBFF0000000000000;
  v144 = v183;
  v145 = v184;
  v146 = v185;
  v140 = v179;
  v141 = v180;
  v142 = v181;
  v143 = v182;
  v136 = v175;
  v137 = v176;
  v138 = v177;
  v139 = v178;
  v89 = v131;
  v90 = v128;
  sub_1D22BD1D0(v131, v128, &qword_1EC6E02B8);
  v91 = v130;
  sub_1D22BD1D0(v87, v130, &qword_1EC6E02A0);
  v92 = v145;
  v155 = v144;
  v156 = v145;
  v93 = v140;
  v94 = v141;
  v151 = v140;
  v152 = v141;
  v96 = v142;
  v95 = v143;
  v153 = v142;
  v154 = v143;
  v97 = v136;
  v98 = v137;
  v147 = v136;
  v148 = v137;
  v100 = v138;
  v99 = v139;
  v149 = v138;
  v150 = v139;
  v101 = v126;
  *(v126 + 128) = v144;
  *(v101 + 144) = v92;
  *(v101 + 64) = v93;
  *(v101 + 80) = v94;
  *(v101 + 96) = v96;
  *(v101 + 112) = v95;
  *v101 = v97;
  *(v101 + 16) = v98;
  v157 = v146;
  *(v101 + 160) = v146;
  *(v101 + 32) = v100;
  *(v101 + 48) = v99;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E02D8);
  sub_1D22BD1D0(v90, v101 + *(v102 + 48), &qword_1EC6E02B8);
  sub_1D22BD1D0(v91, v101 + *(v102 + 64), &qword_1EC6E02A0);
  sub_1D22BD1D0(&v147, &v158, &qword_1EC6E02E0);
  sub_1D22BD238(v87, &qword_1EC6E02A0);
  sub_1D22BD238(v89, &qword_1EC6E02B8);
  sub_1D22BD238(v91, &qword_1EC6E02A0);
  sub_1D22BD238(v90, &qword_1EC6E02B8);
  v165 = v144;
  v166 = v145;
  v167 = v146;
  v162 = v140;
  v163[0] = v141;
  v163[1] = v142;
  v164 = v143;
  v158 = v136;
  v159 = v137;
  v160 = v138;
  v161 = v139;
  return sub_1D22BD238(&v158, &qword_1EC6E02E0);
}

uint64_t sub_1D26E0288@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v140 = a2;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE860);
  MEMORY[0x1EEE9AC00](v139);
  v145 = &v127 - v3;
  v155 = sub_1D2875678();
  v156 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v153 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v152 = &v127 - v6;
  v7 = type metadata accessor for CreationFloatingBubblesView();
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E02F0) - 8;
  MEMORY[0x1EEE9AC00](v147);
  v146 = &v127 - v11;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E02F8) - 8;
  MEMORY[0x1EEE9AC00](v149);
  v148 = &v127 - v12;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0300) - 8;
  MEMORY[0x1EEE9AC00](v151);
  v150 = &v127 - v13;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0308) - 8;
  MEMORY[0x1EEE9AC00](v158);
  v154 = &v127 - v14;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0310) - 8;
  MEMORY[0x1EEE9AC00](v159);
  v157 = &v127 - v15;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0318) - 8;
  MEMORY[0x1EEE9AC00](v164);
  v161 = &v127 - v16;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0320) - 8;
  MEMORY[0x1EEE9AC00](v163);
  v160 = &v127 - v17;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0328);
  MEMORY[0x1EEE9AC00](v165);
  v162 = &v127 - v18;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0330);
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v127 = &v127 - v19;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0338);
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v134 = &v127 - v20;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0340);
  MEMORY[0x1EEE9AC00](v132);
  v138 = &v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v129 = &v127 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v137 = &v127 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0348);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v127 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0350);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v133 = &v127 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v127 - v32;
  v34 = sub_1D2875918();
  *v28 = 0;
  v28[8] = 1;
  *(v28 + 2) = 0;
  *(v28 + 3) = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0358);
  sub_1D26E1640(a1, &v28[*(v35 + 44)]);
  *&v28[*(v26 + 36)] = 0x4014000000000000;
  sub_1D26ED034();
  v128 = v33;
  sub_1D2876F98();
  sub_1D22BD238(v28, &qword_1EC6E0348);
  v36 = type metadata accessor for ComposingView();
  v37 = *(v36 + 24);
  v38 = v36;
  v142 = v36;
  v39 = (a1 + v37);
  v41 = *v39;
  v40 = v39[1];
  v166 = a1;
  *&v167 = v41;
  *(&v167 + 1) = v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  sub_1D230808C();

  v43 = (a1 + *(v38 + 36));
  v44 = *v43;
  v144 = v43[1];
  *&v167 = v44;
  *(&v167 + 1) = v144;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708);
  sub_1D2877308();
  v45 = v170;
  *&v167 = v41;
  *(&v167 + 1) = v40;
  sub_1D2877308();
  sub_1D22FFBF8();
  v141 = sub_1D25A3F44();

  *&v167 = v41;
  *(&v167 + 1) = v40;
  sub_1D2877308();
  LOBYTE(v38) = sub_1D2309BC4();

  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  *(v10 + 16) = swift_getKeyPath();
  *(v10 + 24) = 0;
  v170 = 0.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9B0);
  sub_1D28772F8();
  *(v10 + 32) = v167;
  LOBYTE(v170) = 0;
  sub_1D28772F8();
  v46 = *(&v167 + 1);
  *(v10 + 48) = v167;
  *(v10 + 56) = v46;
  v170 = 0.0;
  v171 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F48);
  sub_1D28772F8();
  v47 = v168;
  *(v10 + 64) = v167;
  *(v10 + 80) = v47;
  type metadata accessor for FloatingBubblesViewModel();
  sub_1D26EEE94(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
  v48 = v145;
  sub_1D2877638();
  v49 = v10 + v8[12];
  *v49 = swift_getKeyPath();
  *(v49 + 8) = 0;
  v50 = v10 + v8[13];
  type metadata accessor for ComposingAnimationCoordinator();
  sub_1D26EEE94(&qword_1ED89F308, type metadata accessor for ComposingAnimationCoordinator);
  *v50 = sub_1D28744C8();
  *(v50 + 8) = v51 & 1;
  *(v10 + v8[14]) = v45;
  *(v10 + v8[15]) = v141 & 1;
  *(v10 + v8[16]) = (v38 & 1) == 0;
  v52 = v8[17];
  *(v10 + v52) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  swift_storeEnumTagMultiPayload();
  v53 = v10 + v8[18];
  *v53 = swift_getKeyPath();
  *(v53 + 8) = 0;
  v54 = v8[19];
  *(v10 + v54) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50);
  swift_storeEnumTagMultiPayload();
  v55 = v10 + v8[20];
  type metadata accessor for CGSize(0);
  v170 = 0.0;
  v171 = 0;
  sub_1D28772F8();
  v56 = v168;
  *v55 = v167;
  *(v55 + 16) = v56;
  v57 = (v10 + v8[21]);
  *v57 = xmmword_1D289E250;
  v57[1] = xmmword_1D289E260;
  LOBYTE(v8) = sub_1D2876358();
  v58 = v166 + *(v142 + 44);
  v59 = *v58;
  v60 = *(v58 + 1);
  LOBYTE(v167) = v59;
  *(&v167 + 1) = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  sub_1D2877308();
  sub_1D2874298();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v69 = v146;
  sub_1D26EF328(v10, v146, type metadata accessor for CreationFloatingBubblesView);
  v70 = v69 + *(v147 + 44);
  *v70 = v8;
  *(v70 + 8) = v62;
  *(v70 + 16) = v64;
  *(v70 + 24) = v66;
  *(v70 + 32) = v68;
  *(v70 + 40) = 0;
  *&v167 = v41;
  *(&v167 + 1) = v40;
  sub_1D2877308();
  LOBYTE(v10) = sub_1D230326C();

  if (v10)
  {
    v71 = 40.0;
  }

  else
  {
    v71 = 0.0;
  }

  v72 = v148;
  sub_1D22EC9BC(v69, v148, &qword_1EC6E02F0);
  v73 = v72 + *(v149 + 44);
  *v73 = v71;
  *(v73 + 8) = 0;
  v74 = v152;
  sub_1D2875668();
  v75 = v156;
  v76 = v155;
  (*(v156 + 16))(v153, v74, v155);
  sub_1D26EEE94(&qword_1ED89D6C8, MEMORY[0x1E697F260]);
  v77 = v76;
  v78 = sub_1D2874988();
  (*(v75 + 8))(v74, v77);
  v79 = v150;
  v80 = sub_1D22EC9BC(v72, v150, &qword_1EC6E02F8);
  *(v79 + *(v151 + 44)) = v78;
  v81 = v79;
  v82 = MEMORY[0x1D38A0390](v80, 0.5, 1.0, 0.0);
  *&v167 = v41;
  *(&v167 + 1) = v40;
  sub_1D2877308();
  v83 = v170;
  swift_getKeyPath();
  *&v167 = v83;
  v155 = sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  LODWORD(v79) = *(*&v83 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 16);

  v84 = v81;
  v85 = v154;
  sub_1D22EC9BC(v84, v154, &qword_1EC6E0300);
  v86 = v85 + *(v158 + 44);
  *v86 = v82;
  *(v86 + 8) = v79 == 4;
  *&v167 = v44;
  v87 = v144;
  *(&v167 + 1) = v144;
  sub_1D2877308();
  v88 = v170 * 0.6 + 1.0;
  sub_1D2877AE8();
  v90 = v89;
  v92 = v91;
  v93 = v85;
  v94 = v157;
  sub_1D22EC9BC(v93, v157, &qword_1EC6E0308);
  v95 = v94 + *(v159 + 44);
  *v95 = v88;
  *(v95 + 8) = v88;
  *(v95 + 16) = v90;
  *(v95 + 24) = v92;
  v159 = v41;
  *&v167 = v41;
  *(&v167 + 1) = v40;
  v158 = v40;
  v156 = v42;
  sub_1D2877308();
  sub_1D22FFBF8();
  LOBYTE(v83) = sub_1D25A3F44();

  v96 = v94;
  v97 = v161;
  sub_1D22EC9BC(v96, v161, &qword_1EC6E0310);
  *(v97 + *(v164 + 44)) = (LOBYTE(v83) & 1) == 0;
  if (sub_1D26E5E8C())
  {
    v98 = 4.0;
  }

  else
  {
    v98 = 6.0;
  }

  v99 = v97;
  v100 = v160;
  v101 = sub_1D22EC9BC(v99, v160, &qword_1EC6E0318);
  *(v100 + *(v163 + 44)) = v98;
  v102 = MEMORY[0x1D38A0390](v101, 0.5, 1.0, 0.0);
  *&v167 = v44;
  *(&v167 + 1) = v87;
  sub_1D2877308();
  v103 = v170 * 0.6 + 1.0;
  v104 = v100;
  v105 = v162;
  sub_1D22EC9BC(v104, v162, &qword_1EC6E0320);
  v106 = v165;
  v107 = v105;
  v108 = v105 + *(v165 + 36);
  *v108 = v102;
  *(v108 + 8) = v103;
  v109 = *MEMORY[0x1E697E6C0];
  v110 = sub_1D2874E88();
  (*(*(v110 - 8) + 104))(v48, v109, v110);
  sub_1D26EEE94(&qword_1ED89DE70, MEMORY[0x1E697E730]);
  result = sub_1D2877F98();
  if (result)
  {
    v112 = sub_1D26ED1D0();
    v113 = sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
    v114 = v127;
    v115 = v139;
    sub_1D28769B8();
    sub_1D22BD238(v48, &unk_1EC6DE860);
    sub_1D22BD238(v107, &qword_1EC6E0328);
    *&v167 = v106;
    *(&v167 + 1) = v115;
    v168 = v112;
    v169 = v113;
    swift_getOpaqueTypeConformance2();
    v116 = v134;
    v117 = v131;
    sub_1D2876F98();
    (*(v130 + 8))(v114, v117);
    *&v167 = v159;
    *(&v167 + 1) = v158;
    sub_1D2877308();
    v118 = v170;
    swift_getKeyPath();
    *&v167 = v118;
    sub_1D28719E8();

    LODWORD(v114) = *(*&v118 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state);

    if (v114 == 1)
    {
      v119 = 1.0;
    }

    else
    {
      v119 = 0.0;
    }

    v120 = v129;
    (*(v135 + 32))(v129, v116, v136);
    *(v120 + *(v132 + 36)) = v119;
    v121 = v137;
    sub_1D22EC9BC(v120, v137, &qword_1EC6E0340);
    v122 = v128;
    v123 = v133;
    sub_1D22BD1D0(v128, v133, &qword_1EC6E0350);
    v124 = v138;
    sub_1D22BD1D0(v121, v138, &qword_1EC6E0340);
    v125 = v140;
    sub_1D22BD1D0(v123, v140, &qword_1EC6E0350);
    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0370);
    sub_1D22BD1D0(v124, v125 + *(v126 + 48), &qword_1EC6E0340);
    sub_1D22BD238(v121, &qword_1EC6E0340);
    sub_1D22BD238(v122, &qword_1EC6E0350);
    sub_1D22BD238(v124, &qword_1EC6E0340);
    return sub_1D22BD238(v123, &qword_1EC6E0350);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D26E1640@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v125 = sub_1D2871818();
  v138 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v110 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ComposingView();
  v131 = *(v4 - 8);
  v136 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v135 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2875678();
  v114 = *(v6 - 8);
  v115 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v113 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v110 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0378);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v110 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0380);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v110 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0388);
  v20 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19);
  v112 = &v110 - v21;
  v132 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0390) - 8);
  MEMORY[0x1EEE9AC00](v132);
  v130 = (&v110 - v22);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0398);
  MEMORY[0x1EEE9AC00](v134);
  v133 = &v110 - v23;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E03A0);
  v121 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v137 = &v110 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E03A8);
  v122 = *(v25 - 8);
  v123 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v117 = &v110 - v26;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E03B0) - 8;
  MEMORY[0x1EEE9AC00](v120);
  v126 = &v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v118 = &v110 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v116 = &v110 - v31;
  *v14 = xmmword_1D289E270;
  v32 = v14 + *(v12 + 52);
  v128 = a1;
  sub_1D26E2694(a1, v32);
  v110 = v4;
  v33 = (a1 + *(v4 + 24));
  v34 = v33[1];
  v139 = *v33;
  *&v188[0] = v139;
  *(&v188[0] + 1) = v34;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  LOBYTE(v4) = sub_1D230326C();

  if (v4)
  {
    v35 = 40.0;
  }

  else
  {
    v35 = 0.0;
  }

  sub_1D22EC9BC(v14, v18, &qword_1EC6E0378);
  v36 = &v18[*(v16 + 44)];
  *v36 = v35;
  v36[8] = 0;
  sub_1D2875668();
  v37 = v114;
  v38 = v115;
  (*(v114 + 16))(v113, v10, v115);
  sub_1D26EEE94(&qword_1ED89D6C8, MEMORY[0x1E697F260]);
  v39 = sub_1D2874988();
  (*(v37 + 8))(v10, v38);
  v40 = v112;
  v41 = sub_1D22EC9BC(v18, v112, &qword_1EC6E0380);
  *(v40 + *(v20 + 44)) = v39;
  v42 = MEMORY[0x1D38A0390](v41, 0.5, 1.0, 0.0);
  v43 = v139;
  *&v188[0] = v139;
  *(&v188[0] + 1) = v34;
  sub_1D2877308();
  v44 = v177;
  swift_getKeyPath();
  *&v188[0] = v44;
  v115 = sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  LODWORD(v39) = *(v44 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 16);

  v45 = v40;
  v46 = v130;
  sub_1D22EC9BC(v45, v130, &qword_1EC6E0388);
  v47 = v46 + *(v132 + 11);
  *v47 = v42;
  v47[8] = v39 == 4;
  v48 = sub_1D2877848();
  v50 = v49;
  v51 = v128;
  sub_1D26E5518(v128, &v167);
  v183 = v173;
  v184 = v174;
  v185 = v175;
  v179 = v169;
  v180 = v170;
  v181 = v171;
  v182 = v172;
  v177 = v167;
  v178 = v168;
  *&v186 = v176;
  *(&v186 + 1) = v48;
  v187 = v50;
  v52 = v46;
  v53 = v133;
  sub_1D22EC9BC(v52, v133, &qword_1EC6E0390);
  v54 = v53 + *(v134 + 36);
  v55 = v186;
  *(v54 + 128) = v185;
  *(v54 + 144) = v55;
  *(v54 + 160) = v187;
  v56 = v182;
  *(v54 + 64) = v181;
  *(v54 + 80) = v56;
  v57 = v184;
  *(v54 + 96) = v183;
  *(v54 + 112) = v57;
  v58 = v178;
  *v54 = v177;
  *(v54 + 16) = v58;
  v59 = v180;
  *(v54 + 32) = v179;
  *(v54 + 48) = v59;
  v188[6] = v173;
  v188[7] = v174;
  v188[8] = v175;
  v188[2] = v169;
  v188[3] = v170;
  v188[4] = v171;
  v188[5] = v172;
  v188[0] = v167;
  v188[1] = v168;
  v189 = v176;
  v190 = v48;
  v191 = v50;
  sub_1D22BD1D0(&v177, &v158, &qword_1EC6E03B8);
  sub_1D22BD238(v188, &qword_1EC6E03B8);
  *&v158 = v43;
  v60 = v34;
  v111 = v34;
  *(&v158 + 1) = v34;
  sub_1D2877308();
  v61 = v167;
  swift_getKeyPath();
  *&v158 = v61;
  sub_1D28719E8();

  v62 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewsSavedInBackground;
  swift_beginAccess();
  v63 = *(v61 + v62);
  sub_1D2870F68();

  *&v158 = v63;
  v132 = type metadata accessor for ComposingView;
  v64 = v135;
  sub_1D26EF2C0(v51, v135, type metadata accessor for ComposingView);
  v131 = *(v131 + 80);
  v65 = (v131 + 16) & ~v131;
  v66 = swift_allocObject();
  v130 = type metadata accessor for ComposingView;
  sub_1D26EF328(v64, v66 + v65, type metadata accessor for ComposingView);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E03C0);
  v112 = sub_1D26ED7BC();
  v114 = sub_1D26EDB54();
  v67 = v134;
  v68 = v133;
  sub_1D2876F48();

  sub_1D22BD238(v68, &qword_1EC6E0398);
  *&v158 = v139;
  *(&v158 + 1) = v60;
  sub_1D2877308();
  v69 = v167;
  swift_getKeyPath();
  *&v158 = v69;
  sub_1D28719E8();

  v70 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldScaleDownBlobAfterSaveTrigger;
  swift_beginAccess();
  v72 = v124;
  v71 = v125;
  (*(v138 + 16))(v124, v69 + v70, v125);

  v73 = v128;
  v74 = v135;
  sub_1D26EF2C0(v128, v135, v132);
  v75 = swift_allocObject();
  sub_1D26EF328(v74, v75 + v65, v130);
  *&v158 = v67;
  *(&v158 + 1) = v113;
  v76 = v73;
  *&v159 = v112;
  *(&v159 + 1) = v114;
  swift_getOpaqueTypeConformance2();
  sub_1D26EEE94(&unk_1ED8A6CA0, MEMORY[0x1E69695A8]);
  v77 = v117;
  v78 = v119;
  v79 = v137;
  sub_1D2876F48();
  v80 = v139;

  (*(v138 + 8))(v72, v71);
  (*(v121 + 8))(v79, v78);
  sub_1D26EF2C0(v76, v74, v132);
  v81 = v111;
  v82 = swift_allocObject();
  sub_1D26EF328(v74, v82 + v65, v130);
  v83 = v118;
  (*(v122 + 32))(v118, v77, v123);
  v84 = (v83 + *(v120 + 44));
  *v84 = sub_1D22A585C;
  v84[1] = 0;
  v84[2] = sub_1D26EDC84;
  v84[3] = v82;
  v85 = v116;
  sub_1D22EC9BC(v83, v116, &qword_1EC6E03B0);
  *&v158 = v80;
  *(&v158 + 1) = v81;
  sub_1D2877308();
  LOBYTE(v83) = sub_1D2309BC4();

  if (v83)
  {
    sub_1D26EDCF4(&v158);
  }

  else
  {
    *&v158 = v80;
    *(&v158 + 1) = v81;
    sub_1D2877308();
    v86 = sub_1D23098C0();

    sub_1D27F6C28(v86, 0, v192);
    *&v158 = v80;
    *(&v158 + 1) = v81;
    sub_1D2877308();

    v87 = 0;
    if ((sub_1D27D8FCC() & 1) == 0)
    {
      v87 = sub_1D27D8EFC() ^ 1;
    }

    v88 = v110;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AD0);
    sub_1D28746B8();
    v89 = v158;
    if (BYTE8(v158) == 1)
    {
      v90 = v158 == 0;
    }

    else
    {
      v89 = sub_1D2273818(v158, 0);
      v90 = 0;
    }

    v91 = v87 & 1;
    v92 = MEMORY[0x1D38A0390](v89, 0.5, 1.0, 0.0);
    v93 = (v76 + *(v88 + 36));
    v94 = *v93;
    v95 = v93[1];
    *&v158 = v94;
    *(&v158 + 1) = v95;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708);
    sub_1D2877308();
    v96 = *&v167 * 0.6 + 1.0;
    v97 = sub_1D2876348();
    sub_1D2874298();
    LOBYTE(v149) = 0;
    v167 = v192[0];
    v168 = v192[1];
    v169 = v192[2];
    v170 = v192[3];
    LOBYTE(v171) = v91;
    BYTE1(v171) = v90;
    *(&v171 + 1) = v92;
    *&v172 = v96;
    BYTE8(v172) = v97;
    *&v173 = v98;
    *(&v173 + 1) = v99;
    *&v174 = v100;
    *(&v174 + 1) = v101;
    LOBYTE(v175) = 0;
    CGRectMake(v98, v99);
    v164 = v173;
    v165 = v174;
    v166 = v175;
    v160 = v169;
    v161 = v170;
    v162 = v171;
    v163 = v172;
    v158 = v167;
    v159 = v168;
  }

  v102 = v126;
  sub_1D22BD1D0(v85, v126, &qword_1EC6E03B0);
  v146 = v164;
  v147 = v165;
  v148 = v166;
  v142 = v160;
  v143 = v161;
  v144 = v162;
  v145 = v163;
  v140 = v158;
  v141 = v159;
  v103 = v127;
  sub_1D22BD1D0(v102, v127, &qword_1EC6E03B0);
  v104 = v103 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E03D8) + 48);
  v155 = v146;
  v156 = v147;
  v157 = v148;
  v153 = v144;
  v154 = v145;
  v151 = v142;
  v152 = v143;
  v149 = v140;
  v150 = v141;
  sub_1D22BD1D0(&v149, &v167, &qword_1EC6E03E0);
  sub_1D22BD238(v85, &qword_1EC6E03B0);
  v105 = v156;
  *(v104 + 96) = v155;
  *(v104 + 112) = v105;
  *(v104 + 128) = v157;
  v106 = v152;
  *(v104 + 32) = v151;
  *(v104 + 48) = v106;
  v107 = v154;
  *(v104 + 64) = v153;
  *(v104 + 80) = v107;
  v108 = v150;
  *v104 = v149;
  *(v104 + 16) = v108;
  v173 = v146;
  v174 = v147;
  LOBYTE(v175) = v148;
  v169 = v142;
  v170 = v143;
  v171 = v144;
  v172 = v145;
  v167 = v140;
  v168 = v141;
  sub_1D22BD238(&v167, &qword_1EC6E03E0);
  return sub_1D22BD238(v102, &qword_1EC6E03B0);
}

uint64_t sub_1D26E2694@<X0>(void **a1@<X0>, char *a2@<X8>)
{
  v259 = a2;
  v3 = sub_1D2875628();
  v216 = *(v3 - 8);
  v217 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v215 = &v214 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_1D2875678();
  v224 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232);
  v220 = &v214 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D88);
  v229 = *(v231 - 8);
  MEMORY[0x1EEE9AC00](v231);
  v221 = &v214 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v222 = &v214 - v8;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E03E8);
  MEMORY[0x1EEE9AC00](v223);
  v230 = &v214 - v9;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E03F0);
  MEMORY[0x1EEE9AC00](v228);
  v227 = &v214 - v10;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E03F8);
  MEMORY[0x1EEE9AC00](v226);
  v225 = &v214 - v11;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0400);
  MEMORY[0x1EEE9AC00](v234);
  v235 = &v214 - v12;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0408);
  v255 = *(v257 - 8);
  MEMORY[0x1EEE9AC00](v257);
  v233 = &v214 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0410);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v258 = &v214 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v256 = &v214 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v251 = &v214 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v250 = &v214 - v21;
  v22 = type metadata accessor for ComposingView();
  v249 = *(v22 - 1);
  MEMORY[0x1EEE9AC00](v22);
  v261 = v23;
  v262 = &v214 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D2871DD8();
  v263 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v241 = &v214 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0418);
  MEMORY[0x1EEE9AC00](v264);
  v27 = &v214 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0420);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v240 = &v214 - v29;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0428);
  MEMORY[0x1EEE9AC00](v265);
  v244 = &v214 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0430);
  v245 = *(v31 - 8);
  v246 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v243 = &v214 - v32;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0438);
  MEMORY[0x1EEE9AC00](v242);
  v248 = &v214 - v33;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0440);
  MEMORY[0x1EEE9AC00](v247);
  v266 = &v214 - v34;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0448);
  MEMORY[0x1EEE9AC00](v267);
  v268 = &v214 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0450);
  v253 = *(v36 - 8);
  v254 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v252 = &v214 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v269 = &v214 - v39;
  v274 = *a1;
  v40 = (a1 + v22[6]);
  v42 = v40[1];
  *&v294 = *v40;
  v41 = v294;
  *(&v294 + 1) = v42;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  v237 = sub_1D22FFBF8();

  v43 = a1 + v22[8];
  v44 = *v43;
  v45 = *(v43 + 1);
  LOBYTE(v294) = v44;
  *(&v294 + 1) = v45;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  sub_1D2877308();
  v236 = v284;
  *&v294 = v41;
  *(&v294 + 1) = v42;
  sub_1D2877308();
  v46 = v284;
  swift_getKeyPath();
  *&v294 = v46;
  v271 = sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v47 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewAspectRatio;
  swift_beginAccess();
  v48 = type metadata accessor for PreviewsView();
  v49 = *(v263 + 16);
  v50 = &v27[v48[18]];
  v260 = v24;
  v238 = v49;
  v239 = v263 + 16;
  v49(v50, v46 + v47, v24);

  v219 = v22;
  v51 = v22[9];
  v270 = a1;
  v52 = (a1 + v51);
  v53 = *v52;
  v54 = v52[1];
  v284 = v53;
  v285 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708);
  sub_1D2877328();
  v55 = v294;
  v56 = v295;
  v57 = &v27[v48[6]];
  *v57 = swift_getKeyPath();
  v57[8] = 0;
  v58 = &v27[v48[7]];
  type metadata accessor for HomeAnimationCoordinator();
  sub_1D26EEE94(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator);
  *v58 = sub_1D28744C8();
  v58[8] = v59 & 1;
  v60 = &v27[v48[8]];
  type metadata accessor for StickerSaveAnimation.Coordinator();
  sub_1D26EEE94(&qword_1ED8A1758, type metadata accessor for StickerSaveAnimation.Coordinator);
  *v60 = sub_1D28744C8();
  v60[8] = v61 & 1;
  v62 = &v27[v48[9]];
  *v62 = swift_getKeyPath();
  v62[8] = 0;
  v63 = &v27[v48[10]];
  v284 = 0;
  sub_1D28772F8();
  v64 = *(&v294 + 1);
  *v63 = v294;
  *(v63 + 1) = v64;
  v65 = &v27[v48[11]];
  v284 = 0;
  sub_1D28772F8();
  v66 = *(&v294 + 1);
  *v65 = v294;
  *(v65 + 1) = v66;
  v67 = &v27[v48[12]];
  LOBYTE(v284) = 0;
  sub_1D28772F8();
  v68 = *(&v294 + 1);
  *v67 = v294;
  *(v67 + 1) = v68;
  v69 = &v27[v48[13]];
  type metadata accessor for CGSize(0);
  v285 = 0;
  v284 = 0;
  sub_1D28772F8();
  v70 = v295;
  *v69 = v294;
  *(v69 + 2) = v70;
  v71 = &v27[v48[14]];
  LOBYTE(v284) = 0;
  sub_1D28772F8();
  v72 = *(&v294 + 1);
  *v71 = v294;
  *(v71 + 1) = v72;
  v73 = &v27[v48[15]];
  v74 = type metadata accessor for KeyboardEventListener();
  v75 = objc_allocWithZone(v74);
  v76 = &v75[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow];
  *v76 = 0;
  *(v76 + 1) = 0;
  v77 = &v75[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillHide];
  *v77 = 0;
  *(v77 + 1) = 0;
  v78 = &v75[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidShow];
  *v78 = 0;
  *(v78 + 1) = 0;
  v79 = &v75[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidHide];
  *v79 = 0;
  *(v79 + 1) = 0;
  *&v75[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_targetsOfInterest] = 1;
  v293.receiver = v75;
  v293.super_class = v74;
  v284 = objc_msgSendSuper2(&v293, sel_init);
  sub_1D28772F8();
  v80 = *(&v294 + 1);
  *v73 = v294;
  *(v73 + 1) = v80;
  *&v27[v48[16]] = v274;
  type metadata accessor for PreviewsViewModel(0);
  sub_1D26EEE94(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D2877638();
  v27[v48[17]] = v236;
  v81 = &v27[v48[5]];
  *v81 = v55;
  *(v81 + 2) = v56;
  v27[*(v264 + 9)] = 1;
  v273 = v42;
  v274 = v41;
  *&v294 = v41;
  *(&v294 + 1) = v42;
  sub_1D2877308();
  v82 = v284;
  v83 = sub_1D22F7E14();
  swift_getKeyPath();
  *&v294 = v83;
  sub_1D26EEE94(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
  sub_1D28719E8();

  v84 = *(v83 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state);
  v85 = *(v83 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state + 8);

  if (v85 >> 6 <= 1)
  {

    v86 = v273;
    v87 = v260;
    v88 = v263;
    v89 = v241;
    goto LABEL_13;
  }

  v86 = v273;
  v88 = v263;
  v89 = v241;
  if (__PAIR128__(-128, 1) < __PAIR128__(v85, v84))
  {
    if (v85 != 128 || v84 != 2)
    {
      v87 = v260;

      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v84 | v85 ^ 0x80)
  {
LABEL_11:

    goto LABEL_12;
  }

  swift_getKeyPath();
  *&v294 = v82;
  sub_1D28719E8();

LABEL_12:
  v87 = v260;
LABEL_13:
  sub_1D26EDE84();
  v91 = v240;
  sub_1D2876B48();
  sub_1D22BD238(v27, &qword_1EC6E0418);
  *&v294 = v274;
  *(&v294 + 1) = v86;
  sub_1D2877308();
  v92 = v284;
  swift_getKeyPath();
  *&v294 = v92;
  sub_1D28719E8();

  v93 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewAspectRatio;
  swift_beginAccess();
  v238(v89, &v92[v93], v87);

  sub_1D2871DA8();
  v95 = v94;
  (*(v88 + 8))(v89, v87);
  v96 = v244;
  v97 = sub_1D22EC9BC(v91, v244, &qword_1EC6E0420);
  v264 = &v214;
  v98 = v96 + *(v265 + 36);
  *v98 = v95;
  *(v98 + 8) = 0;
  MEMORY[0x1EEE9AC00](v97);
  v99 = v270;
  MEMORY[0x1EEE9AC00](v100);
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0468);
  sub_1D26EDF7C();
  sub_1D26EE088(&qword_1ED8A21F8, &qword_1EC6E0460, &unk_1D289ECF8, sub_1D26EE034);
  sub_1D26EE088(&qword_1ED89DBD8, &qword_1EC6E0468, &unk_1D289ED00, sub_1D26EE104);
  v101 = v243;
  v102 = v99;
  sub_1D28767C8();
  sub_1D22BD238(v96, &qword_1EC6E0428);
  v103 = sub_1D28777F8();
  v105 = v104;
  sub_1D26E4F08(v99, &v294);
  v106 = v294;
  v107 = v248;
  (*(v245 + 32))(v248, v101, v246);
  v108 = v107 + *(v242 + 36);
  *v108 = v106;
  *(v108 + 16) = v103;
  *(v108 + 24) = v105;
  if (qword_1ED8A4BA8 != -1)
  {
    swift_once();
  }

  sub_1D2877848();
  sub_1D2875208();
  v109 = v266;
  sub_1D22EC9BC(v107, v266, &qword_1EC6E0438);
  v110 = (v109 + *(v247 + 36));
  v111 = v299;
  v110[4] = v298;
  v110[5] = v111;
  v110[6] = v300;
  v112 = v295;
  *v110 = v294;
  v110[1] = v112;
  v113 = v297;
  v110[2] = v296;
  v110[3] = v113;
  v114 = v262;
  sub_1D26EF2C0(v99, v262, type metadata accessor for ComposingView);
  sub_1D2878568();
  v115 = sub_1D2878558();
  v116 = *(v249 + 80);
  v117 = (v116 + 32) & ~v116;
  v118 = swift_allocObject();
  v119 = MEMORY[0x1E69E85E0];
  *(v118 + 16) = v115;
  *(v118 + 24) = v119;
  sub_1D26EF328(v114, v118 + v117, type metadata accessor for ComposingView);
  sub_1D26EF2C0(v102, v114, type metadata accessor for ComposingView);
  v120 = sub_1D2878558();
  v265 = v116;
  v121 = swift_allocObject();
  *(v121 + 16) = v120;
  *(v121 + 24) = MEMORY[0x1E69E85E0];
  sub_1D26EF328(v114, v121 + v117, type metadata accessor for ComposingView);
  sub_1D2877528();
  v263 = v285;
  v264 = v284;
  LODWORD(v260) = v286;
  v123 = v273;
  v122 = v274;
  v284 = v274;
  v285 = v273;
  sub_1D2877308();
  v124 = v281;
  swift_getKeyPath();
  v284 = v124;
  sub_1D28719E8();

  v125 = *(v124 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shareSheetSource);

  if (v125 == 3)
  {
    v126 = 0;
  }

  else
  {
    v126 = v125;
  }

  LODWORD(v249) = v126;
  v284 = v122;
  v285 = v123;
  sub_1D2877308();
  v127 = v281;
  v128 = v250;
  sub_1D23015FC(v250);
  v129 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v130 = *(*(v129 - 8) + 48);
  if (v130(v128, 1, v129) == 1)
  {

    sub_1D22BD238(v128, &qword_1EC6D9490);
    v284 = v122;
    v285 = v123;
    sub_1D2877308();
    v131 = *(v281 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_emptyPreviewImageTransferable + 8);
    v250 = *(v281 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_emptyPreviewImageTransferable);
    v248 = v131;
    sub_1D2870F78();
  }

  else
  {
    v248 = v127;
    sub_1D22BD238(v128, &qword_1EC6D9490);
    v250 = &unk_1D2897130;
  }

  v284 = v122;
  v285 = v123;
  sub_1D2877308();
  v132 = v122;
  v133 = v281;
  v134 = v251;
  sub_1D23015FC(v251);
  if (v130(v134, 1, v129) == 1)
  {

    sub_1D22BD238(v134, &qword_1EC6D9490);
    v284 = v132;
    v285 = v123;
    sub_1D2877308();
    v133 = *(v281 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_emptyPreviewImageTransferable + 8);
    v251 = *(v281 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_emptyPreviewImageTransferable);
    sub_1D2870F78();
  }

  else
  {
    sub_1D22BD238(v134, &qword_1EC6D9490);
    v251 = &unk_1D289EDC0;
  }

  v284 = v132;
  v285 = v123;
  sub_1D2877308();
  v135 = v281;
  if (sub_1D2309BC4() && (sub_1D22FFBF8(), v136 = sub_1D25A43F4(), , (v136 & 1) != 0))
  {
    v137 = v133;
    swift_getKeyPath();
    v284 = v135;
    sub_1D28719E8();

    v138 = *(v135 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state);

    v139 = v138 != 1;
  }

  else
  {
    v137 = v133;

    v139 = 1;
  }

  LODWORD(v271) = v139;
  v141 = v263;
  v140 = v264;
  *&v281 = v264;
  *(&v281 + 1) = v263;
  v142 = v260;
  LOBYTE(v282) = v260;
  v143 = v249;
  BYTE1(v282) = v249;
  v145 = v250;
  v144 = v251;
  *(&v282 + 1) = v250;
  v146 = v248;
  *&v283[0] = v248;
  *(&v283[0] + 1) = v251;
  v147 = v137;
  *&v283[1] = v137;
  BYTE8(v283[1]) = v139;
  v148 = v268;
  sub_1D22EC9BC(v266, v268, &qword_1EC6E0440);
  v149 = (v148 + *(v267 + 36));
  v150 = v282;
  *v149 = v281;
  v149[1] = v150;
  v149[2] = v283[0];
  *(v149 + 41) = *(v283 + 9);
  v284 = v140;
  v285 = v141;
  v286 = v142;
  v287 = v143;
  v288 = v145;
  v289 = v146;
  v290 = v144;
  v291 = v147;
  v292 = v271;
  sub_1D22BD1D0(&v281, &v278, &unk_1EC6DEBA0);
  sub_1D22BD238(&v284, &unk_1EC6DEBA0);
  v271 = sub_1D2875798();
  v266 = v151;
  LODWORD(v263) = v152;
  v264 = v153;
  v275 = v274;
  v276 = v273;
  sub_1D2877328();
  v154 = v278;
  v155 = v279;
  v156 = v280;
  swift_getKeyPath();
  v278 = v154;
  v279 = v155;
  v280 = v156;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE8);
  sub_1D2877508();

  LODWORD(v260) = v277;

  MEMORY[0x1EEE9AC00](v157);
  v158 = v270;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE6C0);
  sub_1D26EE620();
  sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0);
  v159 = v268;
  sub_1D2876DF8();

  sub_1D22BD238(v159, &qword_1EC6E0448);
  if (sub_1D26DA0E0())
  {
    v160 = ~v265;
    v278 = v274;
    v279 = v273;
    sub_1D2877308();
    sub_1D22F7E14();

    type metadata accessor for AbstractEffectViewModel();
    sub_1D26EEE94(&qword_1ED8A0CA8, type metadata accessor for AbstractEffectViewModel);
    v161 = v230;
    sub_1D2877638();
    v162 = type metadata accessor for EffectView();
    v163 = v162[5];
    *(v161 + v163) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40);
    swift_storeEnumTagMultiPayload();
    v164 = v162[6];
    *(v161 + v164) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
    swift_storeEnumTagMultiPayload();
    v165 = v161 + v162[7];
    *v165 = swift_getKeyPath();
    *(v165 + 8) = 0;
    v166 = v162[8];
    *(v161 + v166) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50);
    swift_storeEnumTagMultiPayload();
    v167 = v161 + v162[9];
    *v167 = swift_getKeyPath();
    *(v167 + 8) = 0;
    LOBYTE(v167) = sub_1D26DA570();
    v168 = (v161 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0488) + 36));
    *v168 = v167 & 1;
    v169 = *(type metadata accessor for BlurredEffectBackgroundViewModifier() + 20);
    *&v168[v169] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v170 = v220;
    v171 = sub_1D2875668();
    MEMORY[0x1D38A0390](v171, 0.5, 1.0, 0.0);
    v172 = sub_1D26EEE94(&qword_1ED89D6C8, MEMORY[0x1E697F260]);
    v173 = v222;
    v174 = v232;
    sub_1D28743E8();

    (*(v224 + 8))(v170, v174);
    v175 = v229;
    v176 = v231;
    (*(v229 + 16))(v221, v173, v231);
    v278 = v174;
    v279 = v172;
    swift_getOpaqueTypeConformance2();
    v177 = sub_1D2874988();
    (*(v175 + 8))(v173, v176);
    *(v161 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0490) + 36)) = v177;
    *(v161 + *(v223 + 36)) = 0;
    v178 = v219;
    v179 = v158 + v219[12];
    v180 = *v179;
    v181 = *(v179 + 8);
    LOBYTE(v278) = v180;
    v279 = v181;
    sub_1D2877308();
    if (v275)
    {
      v182 = 1.15;
    }

    else
    {
      v182 = 1.0;
    }

    sub_1D2877AE8();
    v184 = v183;
    v186 = v185;
    v187 = v227;
    sub_1D22EC9BC(v161, v227, &qword_1EC6E03E8);
    v188 = v187 + *(v228 + 36);
    *v188 = v182;
    *(v188 + 8) = v182;
    *(v188 + 16) = v184;
    *(v188 + 24) = v186;
    v189 = v225;
    sub_1D22EC9BC(v187, v225, &qword_1EC6E03F0);
    *(v189 + *(v226 + 36)) = 0;
    LOBYTE(v187) = sub_1D26DA570();
    v190 = v235;
    sub_1D22EC9BC(v189, v235, &qword_1EC6E03F8);
    *(v190 + *(v234 + 36)) = v187 & 1;
    v191 = v158 + v178[23];
    v192 = *v191;
    v193 = v256;
    if (*(v191 + 8) != 1)
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v194 = sub_1D28762E8();
      sub_1D2873BE8();

      v195 = v215;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D2273818(v192, 0);
      (*(v216 + 8))(v195, v217);
      LOBYTE(v192) = v278;
    }

    LOBYTE(v278) = v192 & 1;
    v196 = v262;
    sub_1D26EF2C0(v158, v262, type metadata accessor for ComposingView);
    v197 = (v265 + 16) & v160;
    v198 = swift_allocObject();
    sub_1D26EF328(v196, v198 + v197, type metadata accessor for ComposingView);
    sub_1D26EE9C4();
    v199 = v233;
    sub_1D2876F48();

    sub_1D22BD238(v190, &qword_1EC6E0400);
    v200 = v255;
    v201 = v257;
    (*(v255 + 32))(v193, v199, v257);
    v202 = 0;
  }

  else
  {
    v202 = 1;
    v193 = v256;
    v201 = v257;
    v200 = v255;
  }

  (*(v200 + 56))(v193, v202, 1, v201);
  v204 = v253;
  v203 = v254;
  v205 = *(v253 + 16);
  v206 = v193;
  v207 = v252;
  v208 = v269;
  v205(v252, v269, v254);
  v209 = v258;
  sub_1D22BD1D0(v206, v258, &qword_1EC6E0410);
  v210 = v259;
  v205(v259, v207, v203);
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0480);
  sub_1D22BD1D0(v209, &v210[*(v211 + 48)], &qword_1EC6E0410);
  sub_1D22BD238(v206, &qword_1EC6E0410);
  v212 = *(v204 + 8);
  v212(v208, v203);
  sub_1D22BD238(v209, &qword_1EC6E0410);
  return (v212)(v207, v203);
}

uint64_t sub_1D26E486C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = (a1 + *(type metadata accessor for ComposingView() + 24));
  v8 = *v7;
  v9 = v7[1];
  v16 = *v7;
  v17 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  sub_1D23015FC(v6);

  v10 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v11 = (*(*(v10 - 8) + 48))(v6, 1, v10);
  sub_1D22BD238(v6, &qword_1EC6D9490);
  v12 = 0;
  KeyPath = 0;
  result = 0;
  if (v11 != 1)
  {
    v16 = v8;
    v17 = v9;
    sub_1D2877308();
    v12 = sub_1D23096CC();

    KeyPath = swift_getKeyPath();
    result = swift_getKeyPath();
  }

  *a2 = v12;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = 0;
  *(a2 + 24) = result;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_1D26E4A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D28771B8();
  v38 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for PlaygroundImage();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ComposingView();
  v18 = *(v17 + 24);
  *&v39 = a1;
  v19 = (a1 + v18);
  v21 = *v19;
  v20 = v19[1];
  v40 = v21;
  v41 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  sub_1D23015FC(v9);

  v22 = type metadata accessor for ImageGeneration.PreviewImage(0);
  if ((*(*(v22 - 8) + 48))(v9, 1, v22) == 1)
  {
    sub_1D22BD238(v9, &qword_1EC6D9490);
    (*(v14 + 56))(v12, 1, 1, v13);
  }

  else
  {
    v23 = *&v9[*(v22 + 28)];
    if (*(v23 + 16))
    {
      sub_1D26EF2C0(v23 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v12, type metadata accessor for PlaygroundImage);
      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    (*(v14 + 56))(v12, v24, 1, v13);
    sub_1D26EF390(v9, type metadata accessor for ImageGeneration.PreviewImage);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_1D26EF328(v12, v16, type metadata accessor for PlaygroundImage);
      sub_1D262D4E8();
      sub_1D2877188();
      v32 = v38;
      (*(v38 + 104))(v6, *MEMORY[0x1E6981630], v4);
      v26 = sub_1D2877228();

      (*(v32 + 8))(v6, v4);
      v33 = (v39 + *(v17 + 56));
      v35 = v33[1];
      v36 = v33[2];
      v40 = *v33;
      v34 = v40;
      v41 = v35;
      v42 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700);
      sub_1D2877308();
      v40 = v34;
      v41 = v35;
      v42 = v36;
      sub_1D2877308();
      sub_1D2877848();
      sub_1D28748C8();
      v27 = v40;
      v28 = v41;
      v29 = v42;
      v30 = v43;
      v39 = v44;
      result = sub_1D26EF390(v16, type metadata accessor for PlaygroundImage);
      v31 = v39;
      goto LABEL_9;
    }
  }

  result = sub_1D22BD238(v12, &unk_1EC6DE5A0);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0uLL;
LABEL_9:
  *a2 = v26;
  *(a2 + 8) = v27;
  *(a2 + 16) = v28;
  *(a2 + 24) = v29;
  *(a2 + 32) = v30;
  *(a2 + 40) = v31;
  return result;
}

uint64_t sub_1D26E4F08@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = type metadata accessor for ComposingView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = (a1 + *(v7 + 32));
  v10 = *v8;
  v9 = v8[1];
  v19 = v10;
  v20 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  if (!sub_1D2309BC4() || (sub_1D22FFBF8(), v11 = sub_1D25A43F4(), , (v11 & 1) == 0))
  {

    goto LABEL_6;
  }

  swift_getKeyPath();
  v19 = v18;
  sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v12 = *(v18 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state);

  if (v12 != 1)
  {
LABEL_6:
    v16 = 0;
    v15 = 0;
    goto LABEL_7;
  }

  sub_1D26EF2C0(a1, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ComposingView);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  result = sub_1D26EF328(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for ComposingView);
  v16 = sub_1D26EF250;
LABEL_7:
  *a2 = v16;
  a2[1] = v15;
  return result;
}

uint64_t sub_1D26E5130@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ComposingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  v2 = sub_1D23096CC();

  *(a1 + 8) = swift_getKeyPath();
  *(a1 + 16) = 0;
  result = swift_getKeyPath();
  *(a1 + 24) = result;
  *(a1 + 32) = 0;
  *a1 = v2;
  return result;
}

uint64_t sub_1D26E51DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0C8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  sub_1D2875798();
  sub_1D2874268();
  v3 = sub_1D2874288();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  return sub_1D2877388();
}

uint64_t sub_1D26E52F4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D2875788();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D2875778();
  sub_1D2875768();
  type metadata accessor for ComposingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  sub_1D23013C0();

  sub_1D2875758();

  sub_1D2875768();
  sub_1D28757A8();
  result = sub_1D2876668();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1D26E544C(uint64_t a1, char *a2)
{
  v2 = *a2;
  type metadata accessor for ComposingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  v3 = sub_1D22F7E14();

  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  sub_1D2758420(v3, sub_1D26EEE8C, v4);
}

double sub_1D26E5518@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D2875678();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - v9;
  sub_1D26DB14C(v24);
  v30 = v24[4];
  v31 = v24[5];
  v32[0] = v25[0];
  *(v32 + 9) = *(v25 + 9);
  v26 = v24[0];
  v27 = v24[1];
  v28 = v24[2];
  v29 = v24[3];
  sub_1D2875668();
  (*(v5 + 16))(v7, v10, v4);
  sub_1D26EEE94(&qword_1ED89D6C8, MEMORY[0x1E697F260]);
  v11 = sub_1D2874988();
  v12 = (*(v5 + 8))(v10, v4);
  v37 = v30;
  v38 = v31;
  v39[0] = v32[0];
  *(v39 + 9) = *(v32 + 9);
  v33 = v26;
  v34 = v27;
  v35 = v28;
  v36 = v29;
  v13 = MEMORY[0x1D38A0390](v12, 0.5, 1.0, 0.0);
  v14 = (a1 + *(type metadata accessor for ComposingView() + 24));
  v16 = *v14;
  v15 = v14[1];
  *&v24[0] = v16;
  *(&v24[0] + 1) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  v17 = v23[1];
  swift_getKeyPath();
  *&v24[0] = v17;
  sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  LODWORD(a1) = *(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 16);

  v18 = v38;
  *(a2 + 64) = v37;
  *(a2 + 80) = v18;
  v19 = v39[1];
  *(a2 + 96) = v39[0];
  *(a2 + 112) = v19;
  v20 = v34;
  *a2 = v33;
  *(a2 + 16) = v20;
  result = *&v35;
  v22 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v22;
  *(a2 + 128) = v11;
  *(a2 + 136) = v13;
  *(a2 + 144) = a1 == 4;
  return result;
}

uint64_t sub_1D26E57E8()
{
  MEMORY[0x1D38A0390](0.2, 1.0, 0.0);
  sub_1D2874BE8();

  sub_1D2877888();
  sub_1D28778B8();

  sub_1D2874BE8();
}

uint64_t sub_1D26E58DC()
{
  type metadata accessor for ComposingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0260);
  sub_1D2877308();
  sub_1D2745BC8();

  MEMORY[0x1D38A0390](v0, 0.2, 1.0, 0.0);
  sub_1D2874BE8();

  sub_1D2877888();
  sub_1D28778B8();

  sub_1D2874BE8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  v1 = sub_1D22F7DF4();

  if (*(v1 + 123) == 1)
  {
    *(v1 + 123) = 1;
    sub_1D22C2EAC();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D26EEE94(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }

  sub_1D2877308();
  sub_1D22F7DF4();

  v3 = sub_1D22C3068();

  swift_getKeyPath();
  sub_1D26EEE94(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  v4 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState);
  if (!v4)
  {
  }

  v5 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState + 8);
  sub_1D2870F78();
  v4(1);

  return sub_1D22D7900(v4, v5);
}

uint64_t sub_1D26E5C50(double *a1, uint64_t a2)
{
  v4 = sub_1D2871DD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  v10 = type metadata accessor for ComposingView();
  v11 = (a2 + *(v10 + 24));
  v13 = *v11;
  v12 = v11[1];
  v26 = v13;
  v27 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  v14 = v24;
  swift_getKeyPath();
  v26 = v14;
  sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewAspectRatio;
  swift_beginAccess();
  (*(v5 + 16))(v7, v14 + v15, v4);

  sub_1D2871DA8();
  v17 = v16;
  (*(v5 + 8))(v7, v4);
  v18 = v8 * v17;
  if (v8 * v17 >= v9)
  {
    v18 = v9;
  }

  v19 = v9 / v17;
  v20 = (a2 + *(v10 + 56));
  v21 = *(v20 + 2);
  v24 = *v20;
  v25 = v21;
  if (v9 / v17 >= v8)
  {
    v19 = v8;
  }

  *v23 = v18;
  *&v23[1] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700);
  return sub_1D2877318();
}

BOOL sub_1D26E5E8C()
{
  type metadata accessor for ComposingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708);
  sub_1D2877308();
  if (v2 > 0.0)
  {
    return 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  swift_getKeyPath();
  sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v1 = *(*&v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state);

  return v1 == 2;
}

uint64_t sub_1D26E5FD0()
{
  type metadata accessor for ComposingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  swift_allocObject();
  swift_weakInit();

  return sub_1D2873BB8();
}

uint64_t sub_1D26E6094@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ComposingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  v2 = sub_1D230B8E0();

  *a1 = v2 & 1;
  return result;
}

uint64_t sub_1D26E611C()
{
  type metadata accessor for ComposingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isOnboardingSheetDismissed) == 1)
  {
    *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isOnboardingSheetDismissed) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  sub_1D2877308();
  sub_1D2322DD8();
}

uint64_t sub_1D26E62B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0208);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v17 - v3);
  v5 = (a1 + *(type metadata accessor for ComposingView() + 24));
  v7 = *v5;
  v6 = v5[1];
  *&v18 = v7;
  *(&v18 + 1) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  v8 = type metadata accessor for ImageGenerationOnboardingView(0);
  v9 = *(v8 + 20);
  *(v4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40);
  swift_storeEnumTagMultiPayload();
  v10 = v4 + *(v8 + 24);
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  type metadata accessor for ImageGenerationOnboardingViewModel();
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 24) = &off_1F4DC0638;
  swift_unknownObjectWeakAssign();
  v17[1] = v11;
  sub_1D2870F78();
  sub_1D28772F8();

  v12 = *(&v18 + 1);
  *v4 = v18;
  v4[1] = v12;
  v13 = sub_1D2874F98();
  v14 = sub_1D2876358();
  v15 = v4 + *(v2 + 36);
  *v15 = v13;
  v15[8] = v14;
  v18 = xmmword_1D289E280;
  sub_1D26EBA40();
  sub_1D22BAAF0();
  sub_1D2876B18();
  return sub_1D22BD238(v4, &qword_1EC6E0208);
}

uint64_t sub_1D26E64D0(char a1)
{
  v1 = a1 & 1;
  type metadata accessor for ComposingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  if (*(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__confirmShareFromAlert) == v1)
  {
    *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__confirmShareFromAlert) = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D26E6638(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for ComposingView() + 24));
  v4 = *v1;
  v5 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AD0);
  sub_1D28746B8();
  if (v5 == 1)
  {
    v2 = v4 == 0;
  }

  else
  {
    sub_1D2273818(v4, 0);
    v2 = 0;
  }

  sub_1D23220B8(v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0268);
  return sub_1D28742B8();
}

uint64_t sub_1D26E6750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v40 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0270);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v34 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0278);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0280);
  v10 = *(v9 - 8);
  v36 = v9;
  v37 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0288);
  v14 = *(v13 - 8);
  v38 = v13;
  v39 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v41 = &v34 - v15;
  v42 = sub_1D2877098();
  LOBYTE(v43) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0290);
  sub_1D26ECCD0();
  sub_1D2876B58();

  v16 = sub_1D26ECD88(&qword_1ED89D9F8, &qword_1EC6E0270, &unk_1D289E7D8, sub_1D26ECCD0);
  sub_1D2876F98();
  sub_1D22BD238(v4, &qword_1EC6E0270);
  v42 = v2;
  v43 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1D2876B78();
  (*(v6 + 8))(v8, v5);
  v18 = type metadata accessor for ComposingView();
  v19 = v35;
  v20 = (v35 + *(v18 + 64));
  v21 = *v20;
  v22 = *(v20 + 1);
  LOBYTE(v20) = v20[16];
  LOBYTE(v42) = v21;
  v43 = v22;
  LOBYTE(v44) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0268);
  sub_1D28742C8();
  v42 = v47;
  v43 = v48;
  LOBYTE(v44) = v49;
  v46 = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0128);
  v47 = v5;
  v48 = OpaqueTypeConformance2;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = sub_1D26EA8A8();
  v26 = v36;
  sub_1D2876EA8();

  (*(v37 + 8))(v12, v26);
  swift_getKeyPath();
  v27 = (v19 + *(v18 + 24));
  v29 = *v27;
  v28 = v27[1];
  v42 = v29;
  v43 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  v30 = sub_1D2323648();

  v47 = v30;
  v42 = v26;
  v43 = v23;
  v44 = v24;
  v45 = v25;
  swift_getOpaqueTypeConformance2();
  v31 = v41;
  v32 = v38;
  sub_1D2876A78();

  return (*(v39 + 8))(v31, v32);
}

uint64_t FocusedValues.composingViewActions.getter()
{
  sub_1D26E6C7C();
  sub_1D28749B8();
  return v1;
}

unint64_t sub_1D26E6C7C()
{
  result = qword_1ED89DF00;
  if (!qword_1ED89DF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DF00);
  }

  return result;
}

uint64_t sub_1D26E6CD0@<X0>(void *a1@<X8>)
{
  sub_1D26E6C7C();
  result = sub_1D28749B8();
  *a1 = v3;
  return result;
}

uint64_t sub_1D26E6D20()
{
  sub_1D26E6C7C();
  sub_1D2870F78();
  return sub_1D28749C8();
}

uint64_t sub_1D26E6DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v5 = type metadata accessor for ComposingView();
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v29 = v6;
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BA0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_1D2870CC8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  sub_1D22BD1D0(a1, v9, &qword_1EC6D9BA0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1D22BD238(v9, &qword_1EC6D9BA0);
  }

  v26 = *(v11 + 32);
  v26(v16, v9, v10);
  v18 = v28;
  v19 = (v28 + *(v5 + 24));
  v21 = *v19;
  v20 = v19[1];
  v31 = v21;
  v32 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  sub_1D22F7DF4();

  (*(v11 + 16))(v13, v16, v10);
  v22 = v30;
  sub_1D26EF2C0(v18, v30, type metadata accessor for ComposingView);
  v23 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v24 = (v12 + *(v27 + 80) + v23) & ~*(v27 + 80);
  v25 = swift_allocObject();
  v26((v25 + v23), v13, v10);
  sub_1D26EF328(v22, v25 + v24, type metadata accessor for ComposingView);
  sub_1D22CC674(&unk_1D289E7D0, v25);

  return (*(v11 + 8))(v16, v10);
}

uint64_t sub_1D26E713C(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v2[9] = sub_1D2878568();
  v2[10] = sub_1D2878558();
  v3 = swift_task_alloc();
  v2[11] = v3;
  v4 = sub_1D22EC170();
  *v3 = v2;
  v3[1] = sub_1D26E720C;
  v5 = MEMORY[0x1E6969080];
  v6 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEDE8A88](v2 + 2, v5, v6, v4);
}

uint64_t sub_1D26E720C()
{
  *(*v1 + 96) = v0;

  v3 = sub_1D28784F8();
  if (v0)
  {
    v4 = sub_1D26E7464;
  }

  else
  {
    v4 = sub_1D26E7368;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1D26E7368()
{
  v1 = v0[8];

  v2 = v0[2];
  v3 = v0[3];
  v4 = sub_1D2870C88();
  v6 = v5;
  v7 = (v1 + *(type metadata accessor for ComposingView() + 24));
  v9 = *v7;
  v8 = v7[1];
  v0[4] = v9;
  v0[5] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  sub_1D22F7DF4();

  sub_1D22C14A8(0);

  v10 = v0[1];

  return v10(v2, v3, v4, v6);
}

uint64_t sub_1D26E7464()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D26E74C8(uint64_t a1)
{
  v2 = type metadata accessor for ComposingView();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = (a1 + *(v3 + 32));
  v11 = *v9;
  v10 = v9[1];
  v22 = v11;
  v23 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  v12 = v21;
  if (*(v21 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__didAppear) == 1)
  {
    *(v21 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__didAppear) = 1;
    sub_1D230340C(1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v20 - 2) = v12;
    *(&v20 - 8) = 1;
    v22 = v12;
    sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  v14 = sub_1D28785F8();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_1D26EF2C0(a1, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ComposingView);
  sub_1D2878568();
  v15 = sub_1D2878558();
  v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  sub_1D26EF328(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for ComposingView);
  sub_1D22AE01C(0, 0, v8, &unk_1D289E7C0, v17);
}

uint64_t sub_1D26E77F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_1D2879328();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  sub_1D2878568();
  v4[8] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v4[9] = v7;
  v4[10] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D26E78E8, v7, v6);
}

uint64_t sub_1D26E78E8()
{
  v1 = sub_1D2879908();
  v3 = v2;
  sub_1D2879718();
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_1D26E79CC;

  return sub_1D233BA38(v1, v3, 0, 0, 1);
}

uint64_t sub_1D26E79CC()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[7];
  v5 = v2[6];
  v6 = v2[5];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_1D26EF48C;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_1D26E7B60;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D26E7B60()
{
  v1 = *(v0 + 32);

  v2 = (v1 + *(type metadata accessor for ComposingView() + 40));
  v3 = *v2;
  v4 = *(v2 + 1);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 96) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  sub_1D2877318();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D26E7C24()
{
  type metadata accessor for ComposingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__didAppear))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__didAppear) = 0;
    sub_1D230340C(0);
  }
}

void sub_1D26E7D90(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v17 - v6;
  if (*a2 - 5 <= 1)
  {
    v8 = (a3 + *(type metadata accessor for ComposingView() + 52));
    v10 = *v8;
    v9 = v8[1];
    v18 = v10;
    v19 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0260);
    sub_1D2877308();
    v11 = v17[1];
    swift_getKeyPath();
    v18 = v11;
    sub_1D26EEE94(&qword_1ED8A1758, type metadata accessor for StickerSaveAnimation.Coordinator);
    sub_1D28719E8();

    if ((*(v11 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__isStickersLoaded) & 1) == 0)
    {
      v12 = sub_1D28785F8();
      (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
      v13 = swift_allocObject();
      swift_weakInit();
      sub_1D2878568();
      sub_1D2870F78();
      v14 = sub_1D2878558();
      v15 = swift_allocObject();
      v16 = MEMORY[0x1E69E85E0];
      v15[2] = v14;
      v15[3] = v16;
      v15[4] = v13;

      sub_1D22AE01C(0, 0, v7, &unk_1D289E788, v15);
    }
  }
}

uint64_t sub_1D26E7FC4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  type metadata accessor for ComposingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  sub_1D22FD32C(v2, 0);
}

void sub_1D26E8048(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = type metadata accessor for ComposingView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  if ((*a2 & 1) == 0)
  {
    v12 = sub_1D28785F8();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    sub_1D26EF2C0(a3, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ComposingView);
    sub_1D2878568();
    v13 = sub_1D2878558();
    v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E85E0];
    *(v15 + 16) = v13;
    *(v15 + 24) = v16;
    sub_1D26EF328(v8, v15 + v14, type metadata accessor for ComposingView);
    sub_1D22AE01C(0, 0, v11, &unk_1D289E758, v15);
  }
}

uint64_t sub_1D26E8234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1D2878568();
  *(v4 + 48) = sub_1D2878558();
  v6 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D26E82CC, v6, v5);
}

uint64_t sub_1D26E82CC()
{
  v1 = *(v0 + 40);

  v2 = (v1 + *(type metadata accessor for ComposingView() + 64));
  v3 = *v2;
  v4 = *(v2 + 1);
  LOBYTE(v2) = v2[16];
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 32) = v2;
  *(v0 + 33) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0268);
  sub_1D28742B8();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D26E8384(uint64_t a1, char *a2, uint64_t a3)
{
  v27 = a3;
  v30 = sub_1D2877B48();
  v33 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2877B68();
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ComposingView();
  v25 = *(v9 - 8);
  v10 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = sub_1D2877BA8();
  v29 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  v18 = *a2;
  sub_1D22BCFD0(0, &qword_1ED89CD50);
  v26 = sub_1D2878AB8();
  sub_1D2877B88();
  sub_1D2877BC8();
  v28 = *(v12 + 8);
  v28(v14, v11);
  sub_1D26EF2C0(v27, &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ComposingView);
  v19 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v20 = swift_allocObject();
  sub_1D26EF328(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for ComposingView);
  *(v20 + v19 + v10) = v18;
  aBlock[4] = sub_1D26EC84C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D23DFBA8;
  aBlock[3] = &block_descriptor_129;
  v21 = _Block_copy(aBlock);
  sub_1D2877B58();
  v34 = MEMORY[0x1E69E7CC0];
  sub_1D26EEE94(&qword_1ED89CFE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80);
  sub_1D22BB9D8(&qword_1ED89CEB0, &unk_1EC6DAE80);
  v22 = v30;
  sub_1D2879088();
  v23 = v26;
  MEMORY[0x1D38A1510](v17, v8, v5, v21);
  _Block_release(v21);

  (*(v33 + 8))(v5, v22);
  (*(v31 + 8))(v8, v32);
  v28(v17, v29);
}

uint64_t sub_1D26E882C()
{
  MEMORY[0x1D38A0390](0.3, 1.0, 0.0);
  sub_1D2874BE8();
}

uint64_t sub_1D26E88B8(uint64_t a1, char a2)
{
  type metadata accessor for ComposingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  v3 = sub_1D22F7E14();
  if (a2)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D230326C();
  }

  *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isBlurred) = v4 & 1;
  sub_1D2757500();
}

uint64_t sub_1D26E8984()
{
  MEMORY[0x1D38A0390](0.3, 1.0, 0.0);
  sub_1D2874BE8();
}

uint64_t sub_1D26E8A08()
{
  type metadata accessor for ComposingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  v0 = sub_1D26DA570();
  v1 = sub_1D22F7E14();
  if (v0)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1D230326C();
  }

  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isBlurred) = v2 & 1;
  sub_1D2757500();
}

void sub_1D26E8ADC(uint64_t a1, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    type metadata accessor for ComposingView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
    sub_1D2877308();
    v2 = sub_1D22FECC4();

    v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover;
    if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D26EEE94(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
      sub_1D28719D8();
    }

    else
    {
      *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover) = 0;
      swift_getKeyPath();
      sub_1D26EEE94(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
      sub_1D28719E8();

      if (*(v2 + v3) == 1 && (swift_getKeyPath(), sub_1D28719E8(), , swift_unknownObjectWeakLoadStrong()))
      {
        sub_1D23322C0();

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1D26E8D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v112 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v98 = &v88 - v6;
  v97 = sub_1D2877B48();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v94 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1D2877B68();
  v93 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v92 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1D2877BA8();
  v91 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v89 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v90 = &v88 - v11;
  v12 = sub_1D2877778();
  v104 = *(v12 - 8);
  v105 = v12;
  v13 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v103 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v88 - v15;
  v17 = type metadata accessor for ComposingView();
  v100 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v106 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v102 = &v88 - v20;
  v21 = sub_1D2874AE8();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v88 - v26;
  v108 = a1;
  sub_1D2877718();
  sub_1D2874AB8();
  LOBYTE(a1) = sub_1D2874A78();
  v28 = *(v22 + 8);
  v28(v24, v21);
  v107 = v28;
  v28(v27, v21);
  if (a1)
  {
    v29 = a2 + *(v17 + 64);
    v30 = *v29;
    v31 = *(v29 + 8);
    LOBYTE(v29) = *(v29 + 16);
    LOBYTE(aBlock) = v30;
    v114 = v31;
    LOBYTE(v115) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0268);
    sub_1D28742A8();
    if (v119)
    {
      v32 = (a2 + *(v17 + 24));
      v34 = *v32;
      v33 = v32[1];
      v88 = v34;
      aBlock = v34;
      v114 = v33;
      v109 = v33;
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
      sub_1D2877308();
      v35 = v119;
      swift_getKeyPath();
      v111 = v13;
      aBlock = v35;
      sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
      sub_1D28719E8();

      v36 = *(v35 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldHideEffectStack);

      if ((v36 & 1) == 0)
      {
        v66 = v88;
        v67 = v109;
        aBlock = v88;
        v114 = v109;
        sub_1D2877308();
        sub_1D22F7DF4();

        v68 = sub_1D22C26A8();

        aBlock = v66;
        v114 = v67;
        sub_1D2877308();
        if (v68)
        {
          sub_1D22F7DF4();

          sub_1D22CBE98();
        }

        else
        {
          sub_1D2309CF4(0);
        }

        goto LABEL_27;
      }
    }
  }

  v37 = (a2 + *(v17 + 24));
  v38 = *v37;
  v110 = v37[1];
  v111 = v38;
  aBlock = v38;
  v114 = v110;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  sub_1D22F7DF4();

  v39 = sub_1D22C26A8();

  if ((v39 & 1) == 0)
  {
    v40 = a2 + *(v17 + 64);
    v41 = *v40;
    v42 = *(v40 + 8);
    LOBYTE(v40) = *(v40 + 16);
    LOBYTE(aBlock) = v41;
    v114 = v42;
    LOBYTE(v115) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0268);
    sub_1D28742A8();
    if (v119 == 2 || (v119 & 1) != 0)
    {
      v88 = a2;
      aBlock = v111;
      v114 = v110;
      sub_1D2877308();
      v43 = v119;
      swift_getKeyPath();
      aBlock = v43;
      sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
      sub_1D28719E8();

      v44 = *(v43 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldHideEffectStack);

      if ((v44 & 1) == 0)
      {
        v45 = v108;
        sub_1D2877718();
        sub_1D2874AD8();
        v46 = sub_1D2874A78();
        v47 = v107;
        v107(v24, v21);
        v47(v27, v21);
        if (v46 & 1) != 0 || (sub_1D2877718(), sub_1D2874A68(), v48 = sub_1D2874A78(), v47(v24, v21), v47(v27, v21), (v48))
        {
          v49 = v110;
          aBlock = v111;
          v114 = v110;
          sub_1D2877308();
          sub_1D22FFBF8();

          v50 = sub_1D25ABCF4();

          if (v50)
          {
            v51 = v102;
            sub_1D26EF2C0(v88, v102, type metadata accessor for ComposingView);
            v52 = v104;
            v53 = *(v104 + 16);
            v54 = v45;
            v55 = v105;
            v53(v16, v54, v105);
            sub_1D26EF2C0(v51, v106, type metadata accessor for ComposingView);
            v56 = v103;
            v53(v103, v16, v55);
            v57 = (*(v100 + 80) + 16) & ~*(v100 + 80);
            v58 = (v101 + *(v52 + 80) + v57) & ~*(v52 + 80);
            v59 = v16;
            v60 = swift_allocObject();
            sub_1D26EF328(v51, v60 + v57, type metadata accessor for ComposingView);
            (*(v52 + 32))(v60 + v58, v59, v55);
            v61 = v111;
            aBlock = v111;
            v114 = v49;
            sub_1D2877308();
            sub_1D22FFBF8();

            v62 = sub_1D25A3F44();

            if ((v62 & 1) == 0)
            {
              aBlock = v61;
              v114 = v49;
              sub_1D2877308();
              sub_1D22FFBF8();

              sub_1D25A4614();
            }

            aBlock = v61;
            v114 = v49;
            sub_1D2877308();
            sub_1D22FFBF8();

            v63 = sub_1D25A3F44();

            if (v63)
            {
              if (v62)
              {
                MEMORY[0x1EEE9AC00](v64);
                v65 = v106;
                *(&v88 - 2) = v106;
                *(&v88 - 1) = v56;
                sub_1D2877938();
                sub_1D2874BE8();

                (*(v52 + 8))(v56, v55);
                sub_1D26EF390(v65, type metadata accessor for ComposingView);
LABEL_28:
                v77 = MEMORY[0x1E697D770];
                goto LABEL_25;
              }

              (*(v52 + 8))(v56, v55);
              sub_1D26EF390(v106, type metadata accessor for ComposingView);
              sub_1D22BCFD0(0, &qword_1ED89CD50);
              v110 = sub_1D2878AB8();
              v81 = v89;
              sub_1D2877B88();
              v82 = v90;
              sub_1D2877BC8();
              v111 = *(v91 + 8);
              v111(v81, v99);
              v117 = sub_1D26EC730;
              v118 = v60;
              aBlock = MEMORY[0x1E69E9820];
              v114 = 1107296256;
              v115 = sub_1D23DFBA8;
              v116 = &block_descriptor_38;
              v83 = _Block_copy(&aBlock);
              sub_1D2870F78();
              v84 = v92;
              sub_1D2877B58();
              v119 = MEMORY[0x1E69E7CC0];
              sub_1D26EEE94(&qword_1ED89CFE0, MEMORY[0x1E69E7F60]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80);
              sub_1D22BB9D8(&qword_1ED89CEB0, &unk_1EC6DAE80);
              v85 = v94;
              v86 = v97;
              sub_1D2879088();
              v87 = v110;
              MEMORY[0x1D38A1510](v82, v84, v85, v83);
              _Block_release(v83);

              (*(v96 + 8))(v85, v86);
              (*(v93 + 8))(v84, v95);
              v111(v82, v99);
LABEL_27:

              goto LABEL_28;
            }

            (*(v52 + 8))(v56, v55);
            sub_1D26EF390(v106, type metadata accessor for ComposingView);
          }
        }

        else
        {
          sub_1D2877718();
          sub_1D2874AC8();
          v69 = sub_1D2874A78();
          v47(v24, v21);
          v47(v27, v21);
          if (v69)
          {
            aBlock = v111;
            v114 = v110;
            sub_1D2877308();
            v70 = v119;
            v71 = sub_1D28785F8();
            v72 = v98;
            (*(*(v71 - 8) + 56))(v98, 1, 1, v71);
            sub_1D2878568();
            sub_1D2870F78();
            v73 = sub_1D2878558();
            v74 = swift_allocObject();
            v75 = MEMORY[0x1E69E85E0];
            *(v74 + 16) = v73;
            *(v74 + 24) = v75;
            *(v74 + 32) = v70;
            *(v74 + 40) = 0;
            sub_1D22AE01C(0, 0, v72, &unk_1D289E6C0, v74);

            goto LABEL_27;
          }

          sub_1D2877718();
          sub_1D2874A98();
          v76 = sub_1D2874A78();
          v47(v24, v21);
          v47(v27, v21);
          if (v76)
          {
            aBlock = v111;
            v114 = v110;
            sub_1D2877308();
            sub_1D22FFBF8();

            sub_1D25A8A24();
            goto LABEL_27;
          }
        }
      }
    }
  }

  v77 = MEMORY[0x1E697D778];
LABEL_25:
  v78 = *v77;
  v79 = sub_1D2877758();
  return (*(*(v79 - 8) + 104))(v112, v78, v79);
}

uint64_t sub_1D26E9D08()
{
  sub_1D2877938();
  sub_1D2874BE8();
}

uint64_t sub_1D26E9D74(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v3 = sub_1D2874AE8();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v41[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41[-v6];
  v8 = sub_1D2874EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41[-v13];
  v15 = type metadata accessor for ComposingView();
  v16 = *(v15 + 20);
  v51 = a1;
  v44 = v16;
  sub_1D24CC6D4(v14);
  v17 = *MEMORY[0x1E697E7D0];
  v45 = *(v9 + 104);
  v45(v11, v17, v8);
  LOBYTE(a1) = sub_1D2874E98();
  v18 = *(v9 + 8);
  v18(v11, v8);
  v46 = v18;
  v18(v14, v8);
  if (a1 & 1) != 0 && (sub_1D2877718(), v43 = v15, v19 = v7, v20 = v47, sub_1D2874A68(), v42 = sub_1D2874A78(), v21 = *(v49 + 8), v22 = v20, v23 = v50, v21(v22, v50), v24 = v19, v25 = v23, v7 = v19, v15 = v43, v21(v24, v25), (v42) || (sub_1D24CC6D4(v14), v45(v11, *MEMORY[0x1E697E7D8], v8), v26 = sub_1D2874E98(), v27 = v11, v28 = v46, v46(v27, v8), v28(v14, v8), (v26) && (sub_1D2877718(), v29 = v47, sub_1D2874AD8(), v30 = sub_1D2874A78(), v31 = *(v49 + 8), v32 = v29, v33 = v50, v31(v32, v50), v31(v7, v33), (v30))
  {
    v34 = (v51 + *(v15 + 24));
    v36 = *v34;
    v35 = v34[1];
    v52 = v36;
    v53 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
    sub_1D2877308();
    sub_1D22FFBF8();

    sub_1D25B4D88();
  }

  else
  {
    v37 = (v51 + *(v15 + 24));
    v39 = *v37;
    v38 = v37[1];
    v52 = v39;
    v53 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
    sub_1D2877308();
    sub_1D22FFBF8();

    sub_1D25B4AB8();
  }
}

void *sub_1D26EA190(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = *a2;
  if (*a1 == v7)
  {
    v12 = a3;
    v13 = a4;
    v8 = a5 & 1;
    v14 = a5 & 1;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA318);
    result = MEMORY[0x1D389FF60](&v11, v9);
    if (v7 == v11)
    {
      return result;
    }
  }

  else
  {
    v8 = a5 & 1;
  }

  v12 = a3;
  v13 = a4;
  v14 = v8;
  v11 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA318);
  return sub_1D28774F8();
}

uint64_t (*FocusedValues.composingViewActions.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1D26E6C7C();
  sub_1D28749B8();
  return sub_1D26EA2AC;
}

uint64_t sub_1D26EA2AC(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_1D28749C8();
  }

  sub_1D2870F78();
  sub_1D28749C8();
}

uint64_t type metadata accessor for ComposingView()
{
  result = qword_1ED8A4B60;
  if (!qword_1ED8A4B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D26EA3C4()
{
  sub_1D26EA980(319, &qword_1ED89DFD0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1D26EA980(319, &qword_1ED89D1D0, type metadata accessor for ComposingViewModel, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1D26EA980(319, &qword_1ED89D1A8, type metadata accessor for ComposingAnimationCoordinator, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1D26EB018(319, &qword_1ED89D190, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1D26EB018(319, &qword_1ED89D180, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1D26EA980(319, &qword_1ED89D1C8, type metadata accessor for StickerSaveAnimation.Coordinator, MEMORY[0x1E6981790]);
            if (v5 <= 0x3F)
            {
              sub_1D26EA980(319, &qword_1ED89D178, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
              {
                sub_1D26EB018(319, &qword_1ED89DF40, &type metadata for ComposingFocusState.Value, MEMORY[0x1E697BF18]);
                if (v7 <= 0x3F)
                {
                  sub_1D26EA838();
                  if (v8 <= 0x3F)
                  {
                    sub_1D26EA980(319, &qword_1ED89E020, type metadata accessor for HomeAnimationCoordinator, MEMORY[0x1E697DCC0]);
                    if (v9 <= 0x3F)
                    {
                      sub_1D22F3CC0(319, &qword_1ED89DFC0, &qword_1EC6D99B8);
                      if (v10 <= 0x3F)
                      {
                        sub_1D26EB018(319, &qword_1ED89E040, &type metadata for CreationViewStyle, MEMORY[0x1E697DCC0]);
                        if (v11 <= 0x3F)
                        {
                          sub_1D26EB018(319, &qword_1ED89DFB0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                          if (v12 <= 0x3F)
                          {
                            sub_1D26EA980(319, &qword_1ED89E028, type metadata accessor for ObservableDebugSettings, MEMORY[0x1E697DCC0]);
                            if (v13 <= 0x3F)
                            {
                              sub_1D22F3CC0(319, &qword_1ED89E038, &qword_1EC6DBCB0);
                              if (v14 <= 0x3F)
                              {
                                sub_1D26EB018(319, &qword_1ED89E060, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
                                if (v15 <= 0x3F)
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
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D26EA838()
{
  if (!qword_1ED89E0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0128);
    sub_1D26EA8A8();
    v0 = sub_1D28742F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89E0B8);
    }
  }
}

unint64_t sub_1D26EA8A8()
{
  result = qword_1ED8A4B78;
  if (!qword_1ED8A4B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0128);
    sub_1D26EA92C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A4B78);
  }

  return result;
}

unint64_t sub_1D26EA92C()
{
  result = qword_1ED8A4B88;
  if (!qword_1ED8A4B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A4B88);
  }

  return result;
}

void sub_1D26EA980(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D26EA9F4()
{
  sub_1D26EB018(319, &qword_1ED89D080, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D26EAAC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = *(*(v6 - 8) + 64) + ((v10 + v11 + ((v9 + 18) & ~v9)) & ~v11) + 1;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if ((v12 & 0x80000000) != 0)
      {
        v24 = (a1 + v9 + 18) & ~v9;
        if (v5 == v13)
        {
          return (*(v4 + 48))(v24);
        }

        else
        {
          return (*(v7 + 48))((v24 + v10 + v11) & ~v11, v8, v6);
        }
      }

      else
      {
        v23 = *(a1 + 1);
        if (v23 >= 0xFFFFFFFF)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void sub_1D26EACF0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(*(v8 - 8) + 64) + ((v11 + v12 + ((v10 + 18) & ~v10)) & ~v12) + 1;
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (*(*(v8 - 8) + 64) + ((v11 + v12 + ((v10 + 18) & ~v10)) & ~v12) != -1)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v15] = 0;
  }

  else if (v18)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v13 & 0x80000000) != 0)
  {
    v24 = &a1[v10 + 18] & ~v10;
    if (v7 == v14)
    {
      v25 = *(v6 + 56);

      v25(v24);
    }

    else
    {
      v26 = *(v9 + 56);
      v27 = (v24 + v11 + v12) & ~v12;

      v26(v27);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    a1[16] = 0;
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void sub_1D26EB018(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D26EB0AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA318);
  sub_1D2877518();
  return v1;
}

uint64_t sub_1D26EB108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a1;
  v49 = a3;
  v5 = *(a2 + 24);
  v41 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 40);
  v9 = MEMORY[0x1E69E73E0];
  v51 = v5;
  v52 = MEMORY[0x1E69E73E0];
  v10 = MEMORY[0x1E6965C48];
  v53 = v8;
  v54 = MEMORY[0x1E6965C48];
  v11 = sub_1D2874798();
  v44 = *(v11 - 8);
  v45 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v43 = v32 - v12;
  swift_getWitnessTable();
  v13 = sub_1D2875D08();
  v14 = *(a2 + 16);
  WitnessTable = swift_getWitnessTable();
  v16 = *(a2 + 32);
  v35 = v13;
  v51 = v13;
  v52 = v14;
  v39 = v14;
  v53 = v5;
  v54 = v9;
  v38 = WitnessTable;
  v55 = WitnessTable;
  v56 = v16;
  v50 = v16;
  v47 = v8;
  v57 = v8;
  v58 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v42 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v36 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v37 = v32 - v19;
  v46 = v3;
  v34 = sub_1D26EB0AC();
  v32[1] = v20;
  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v21 = qword_1ED8B0058;
  sub_1D2876668();
  (*(v41 + 16))(v40, v46 + *(a2 + 60), v5);
  v22 = v43;
  v23 = v47;
  sub_1D2874788();
  v24 = swift_checkMetadataState();
  v25 = v38;
  v26 = v39;
  v27 = v36;
  sub_1D2876948();

  (*(v44 + 8))(v22, v45);
  v51 = v24;
  v52 = v26;
  v53 = v5;
  v54 = MEMORY[0x1E69E73E0];
  v55 = v25;
  v56 = v50;
  v57 = v23;
  v58 = MEMORY[0x1E6965C48];
  swift_getOpaqueTypeConformance2();
  v28 = v37;
  v29 = OpaqueTypeMetadata2;
  sub_1D245980C(v27);
  v30 = *(v42 + 8);
  v30(v27, v29);
  sub_1D245980C(v28);
  return (v30)(v28, v29);
}

unint64_t sub_1D26EB654()
{
  result = qword_1ED8A4B80;
  if (!qword_1ED8A4B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A4B80);
  }

  return result;
}

uint64_t sub_1D26EB6C4@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_1D28749D8();
  *a1 = v5 < v3;
  return result;
}

unint64_t sub_1D26EB710()
{
  result = qword_1ED89D998;
  if (!qword_1ED89D998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0130);
    sub_1D26EB79C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D998);
  }

  return result;
}

unint64_t sub_1D26EB79C()
{
  result = qword_1ED89DB78;
  if (!qword_1ED89DB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E01E0);
    sub_1D22BB9D8(&qword_1ED89D0D0, &qword_1EC6E01E8);
    sub_1D22BB9D8(&qword_1ED89D638, &qword_1EC6E01F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DB78);
  }

  return result;
}

unint64_t sub_1D26EB898()
{
  result = qword_1EC6E01F8;
  if (!qword_1EC6E01F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0138);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0130);
    sub_1D26EB710();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E01F8);
  }

  return result;
}

uint64_t sub_1D26EB9BC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ComposingView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1D26EBA40()
{
  result = qword_1ED89DE40;
  if (!qword_1ED89DE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0208);
    sub_1D26EEE94(qword_1ED8A5928, type metadata accessor for ImageGenerationOnboardingView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DE40);
  }

  return result;
}

uint64_t sub_1D26EBAFC(char a1)
{
  type metadata accessor for ComposingView();

  return sub_1D26E64D0(a1);
}

uint64_t sub_1D26EBB6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D26EEE94(&qword_1ED8A1758, type metadata accessor for StickerSaveAnimation.Coordinator);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__isStickersLoaded);
  return result;
}

unint64_t sub_1D26EBC60()
{
  result = qword_1ED89D518;
  if (!qword_1ED89D518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0218);
    sub_1D2459164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D518);
  }

  return result;
}

unint64_t sub_1D26EBD04()
{
  result = qword_1EC6E0228;
  if (!qword_1EC6E0228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0170);
    sub_1D26EBDBC();
    sub_1D22BB9D8(&qword_1ED89D4A8, &qword_1EC6DA6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0228);
  }

  return result;
}

unint64_t sub_1D26EBDBC()
{
  result = qword_1EC6E0230;
  if (!qword_1EC6E0230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0168);
    sub_1D26EBE74();
    sub_1D22BB9D8(&qword_1ED89D680, &qword_1EC6DA080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0230);
  }

  return result;
}

unint64_t sub_1D26EBE74()
{
  result = qword_1EC6E0238;
  if (!qword_1EC6E0238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0160);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0150);
    type metadata accessor for ComposingAnimationCoordinator();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0148);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0210);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0218);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0140);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0200);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0138);
    sub_1D2873BC8();
    sub_1D26EB898();
    sub_1D26EEE94(&unk_1ED89E0D8, MEMORY[0x1E69A1590]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0208);
    sub_1D26EBA40();
    sub_1D22BAAF0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89CFF0, &qword_1EC6E0210);
    sub_1D26EBC60();
    swift_getOpaqueTypeConformance2();
    sub_1D26EEE94(&qword_1ED89F308, type metadata accessor for ComposingAnimationCoordinator);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89D680, &qword_1EC6DA080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0238);
  }

  return result;
}

uint64_t sub_1D26EC1AC(uint64_t a1)
{
  v3 = *(type metadata accessor for ComposingView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1D26E6DBC(a1, v4, v5, v6);
}

unint64_t sub_1D26EC268()
{
  result = qword_1EC6E0248;
  if (!qword_1EC6E0248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0190);
    sub_1D26EC2F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0248);
  }

  return result;
}

unint64_t sub_1D26EC2F4()
{
  result = qword_1EC6E0250;
  if (!qword_1EC6E0250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0188);
    sub_1D26EC380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0250);
  }

  return result;
}

unint64_t sub_1D26EC380()
{
  result = qword_1EC6E0258;
  if (!qword_1EC6E0258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0180);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0170);
    sub_1D26EBD04();
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89D640, &qword_1EC6E0240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0258);
  }

  return result;
}

uint64_t sub_1D26EC4EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D26EEE94(&qword_1EC6DBE60, type metadata accessor for GPUIExtensionState);
  sub_1D28719E8();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1D26EC5BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D2875518();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D26EC5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ComposingView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D26E8D2C(a1, v6, a2);
}

uint64_t sub_1D26EC66C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D2320E40(a1, v4, v5, v6, v7);
}

uint64_t sub_1D26EC730()
{
  type metadata accessor for ComposingView();
  sub_1D2877778();

  return sub_1D26E9D08();
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D26EC84C()
{
  type metadata accessor for ComposingView();

  return sub_1D26E882C();
}

uint64_t sub_1D26EC8EC(uint64_t a1)
{
  v4 = *(type metadata accessor for ComposingView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BC8FC;

  return sub_1D26E8234(a1, v6, v7, v1 + v5);
}

uint64_t sub_1D26EC9DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D2747004(a1, v4, v5, v6);
}

uint64_t sub_1D26ECAB0(uint64_t a1)
{
  v4 = *(type metadata accessor for ComposingView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D26E77F4(a1, v6, v7, v1 + v5);
}

uint64_t sub_1D26ECBA0()
{
  v2 = *(sub_1D2870CC8() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for ComposingView() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1D22EC04C;

  return sub_1D26E713C(v0 + v3, v0 + v6);
}

unint64_t sub_1D26ECCD0()
{
  result = qword_1ED89DC18;
  if (!qword_1ED89DC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0290);
    sub_1D22BB9D8(&qword_1ED89D4A8, &qword_1EC6DA6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DC18);
  }

  return result;
}

uint64_t sub_1D26ECD88(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1D26EEE94(&qword_1ED89D2B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1D26ECE84(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
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
  return result;
}

unint64_t sub_1D26ECEA4()
{
  result = qword_1ED89DDF8;
  if (!qword_1ED89DDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0298);
    sub_1D26EEE94(&qword_1ED8A1E08, type metadata accessor for ComposingFooterView);
    sub_1D22BB9D8(&qword_1ED89D2C0, &qword_1EC6D9CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DDF8);
  }

  return result;
}

unint64_t sub_1D26ECF8C()
{
  result = qword_1EC6D7EF0;
  if (!qword_1EC6D7EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7EF0);
  }

  return result;
}

unint64_t sub_1D26ED034()
{
  result = qword_1ED89DD30;
  if (!qword_1ED89DD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0348);
    sub_1D26ED0EC();
    sub_1D22BB9D8(&unk_1ED89D490, &qword_1EC6D9058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DD30);
  }

  return result;
}

unint64_t sub_1D26ED0EC()
{
  result = qword_1ED89DEC0;
  if (!qword_1ED89DEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0358);
    sub_1D22BB9D8(&qword_1ED89DF58, &qword_1EC6E0360);
    sub_1D22BB9D8(&qword_1ED89D000, &qword_1EC6E0368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DEC0);
  }

  return result;
}

unint64_t sub_1D26ED1D0()
{
  result = qword_1ED89D790;
  if (!qword_1ED89D790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0328);
    sub_1D26ED288();
    sub_1D22BB9D8(&qword_1ED89D6A0, &qword_1EC6D9F08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D790);
  }

  return result;
}

unint64_t sub_1D26ED288()
{
  result = qword_1ED89D7B8;
  if (!qword_1ED89D7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0320);
    sub_1D26ED340();
    sub_1D22BB9D8(&unk_1ED89D490, &qword_1EC6D9058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D7B8);
  }

  return result;
}

unint64_t sub_1D26ED340()
{
  result = qword_1ED89D7E0;
  if (!qword_1ED89D7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0318);
    sub_1D26ED3CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D7E0);
  }

  return result;
}

unint64_t sub_1D26ED3CC()
{
  result = qword_1ED89D828;
  if (!qword_1ED89D828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0310);
    sub_1D26ED458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D828);
  }

  return result;
}

unint64_t sub_1D26ED458()
{
  result = qword_1ED89D890;
  if (!qword_1ED89D890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0308);
    sub_1D26ED510();
    sub_1D22BB9D8(&qword_1ED89D680, &qword_1EC6DA080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D890);
  }

  return result;
}

unint64_t sub_1D26ED510()
{
  result = qword_1ED89D950;
  if (!qword_1ED89D950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0300);
    sub_1D26ED5C8();
    sub_1D22BB9D8(&qword_1ED89D4A0, &qword_1EC6DB918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D950);
  }

  return result;
}

unint64_t sub_1D26ED5C8()
{
  result = qword_1ED89DB18;
  if (!qword_1ED89DB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E02F8);
    sub_1D26ED654();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DB18);
  }

  return result;
}

unint64_t sub_1D26ED654()
{
  result = qword_1ED89DDE0;
  if (!qword_1ED89DDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E02F0);
    sub_1D26EEE94(&qword_1ED89F7A0, type metadata accessor for CreationFloatingBubblesView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DDE0);
  }

  return result;
}

uint64_t sub_1D26ED728(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for ComposingView() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

unint64_t sub_1D26ED7BC()
{
  result = qword_1ED89D878;
  if (!qword_1ED89D878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0398);
    sub_1D26ED874();
    sub_1D22BB9D8(&qword_1ED89D718, &qword_1EC6E03B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D878);
  }

  return result;
}

unint64_t sub_1D26ED874()
{
  result = qword_1ED89D928;
  if (!qword_1ED89D928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0390);
    sub_1D26ED92C();
    sub_1D22BB9D8(&qword_1ED89D680, &qword_1EC6DA080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D928);
  }

  return result;
}

unint64_t sub_1D26ED92C()
{
  result = qword_1ED89DAC8;
  if (!qword_1ED89DAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0388);
    sub_1D26ED9E4();
    sub_1D22BB9D8(&qword_1ED89D4A0, &qword_1EC6DB918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DAC8);
  }

  return result;
}

unint64_t sub_1D26ED9E4()
{
  result = qword_1ED89DD38;
  if (!qword_1ED89DD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0380);
    sub_1D26EDA70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DD38);
  }

  return result;
}

unint64_t sub_1D26EDA70()
{
  result = qword_1ED89DEC8;
  if (!qword_1ED89DEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0378);
    sub_1D22BB9D8(&qword_1ED89DF60, &qword_1EC6E03C8);
    sub_1D22BB9D8(&qword_1ED89D010, &qword_1EC6E03D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DEC8);
  }

  return result;
}

unint64_t sub_1D26EDB54()
{
  result = qword_1ED89CFA0;
  if (!qword_1ED89CFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E03C0);
    sub_1D22BB9D8(qword_1ED8A4DB0, &unk_1EC6DE550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89CFA0);
  }

  return result;
}

uint64_t sub_1D26EDC04()
{
  type metadata accessor for ComposingView();

  return sub_1D26E58DC();
}

uint64_t sub_1D26EDC84(double *a1)
{
  v3 = *(type metadata accessor for ComposingView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1D26E5C50(a1, v4);
}

double sub_1D26EDCF4(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double sub_1D26EDD50(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = -1;
  return result;
}

unint64_t sub_1D26EDD80()
{
  result = qword_1ED8A3568[0];
  if (!qword_1ED8A3568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8A3568);
  }

  return result;
}

uint64_t sub_1D26EDDEC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ComposingView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1D26EDE84()
{
  result = qword_1ED89DE20;
  if (!qword_1ED89DE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0418);
    sub_1D26EEE94(&qword_1ED8A4D00, type metadata accessor for PreviewsView);
    sub_1D22BB9D8(&unk_1ED89D480, &qword_1EC6E0458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DE20);
  }

  return result;
}

unint64_t sub_1D26EDF7C()
{
  result = qword_1ED89D960;
  if (!qword_1ED89D960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0428);
    sub_1D26ECD88(&qword_1ED89DB28, &qword_1EC6E0420, &unk_1D289ECB8, sub_1D26EDE84);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D960);
  }

  return result;
}

unint64_t sub_1D26EE034()
{
  result = qword_1ED8A2200;
  if (!qword_1ED8A2200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A2200);
  }

  return result;
}

uint64_t sub_1D26EE088(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1D26EE104()
{
  result = qword_1ED89DBE0;
  if (!qword_1ED89DBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DBE0);
  }

  return result;
}

uint64_t sub_1D26EE1A0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for ComposingView() - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t objectdestroy_27Tm()
{
  v1 = type metadata accessor for ComposingView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1D2874EA8();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[15];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AD0);
  (*(*(v7 - 8) + 8))(v3 + v6, v7);

  v8 = v1[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1D2875E18();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v3 + v8, 1, v9))
    {
      (*(v10 + 8))(v3 + v8, v9);
    }
  }

  else
  {
  }

  sub_1D2273818(*(v3 + v1[19]), *(v3 + v1[19] + 8));
  sub_1D2273818(*(v3 + v1[20]), *(v3 + v1[20] + 8));

  j__swift_release();
  sub_1D2273818(*(v3 + v1[23]), *(v3 + v1[23] + 8));
  sub_1D2273818(*(v3 + v1[24]), *(v3 + v1[24] + 8));

  return swift_deallocObject();
}

uint64_t sub_1D26EE5A4(unsigned __int8 *a1)
{
  type metadata accessor for ComposingView();

  return sub_1D26DA858(a1);
}

unint64_t sub_1D26EE620()
{
  result = qword_1ED89D8E8;
  if (!qword_1ED89D8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0448);
    sub_1D26EE6D8();
    sub_1D22BB9D8(qword_1ED89F8E8, &unk_1EC6DEBA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D8E8);
  }

  return result;
}

unint64_t sub_1D26EE6D8()
{
  result = qword_1ED89DA58;
  if (!qword_1ED89DA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0440);
    sub_1D26EE764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DA58);
  }

  return result;
}

unint64_t sub_1D26EE764()
{
  result = qword_1ED89DCB0;
  if (!qword_1ED89DCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0438);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0428);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0460);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0468);
    sub_1D26EDF7C();
    sub_1D26EE088(&qword_1ED8A21F8, &qword_1EC6E0460, &unk_1D289ECF8, sub_1D26EE034);
    sub_1D26EE088(&qword_1ED89DBD8, &qword_1EC6E0468, &unk_1D289ED00, sub_1D26EE104);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89D738, &qword_1EC6E0478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DCB0);
  }

  return result;
}

uint64_t sub_1D26EE930(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for ComposingView() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

unint64_t sub_1D26EE9C4()
{
  result = qword_1ED89D7E8;
  if (!qword_1ED89D7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0400);
    sub_1D26EEA50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D7E8);
  }

  return result;
}

unint64_t sub_1D26EEA50()
{
  result = qword_1ED89D830;
  if (!qword_1ED89D830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E03F8);
    sub_1D26EEB08();
    sub_1D22BB9D8(&qword_1ED89D4A8, &qword_1EC6DA6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D830);
  }

  return result;
}

unint64_t sub_1D26EEB08()
{
  result = qword_1ED89D898;
  if (!qword_1ED89D898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E03F0);
    sub_1D26EEB94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D898);
  }

  return result;
}

unint64_t sub_1D26EEB94()
{
  result = qword_1ED89D968;
  if (!qword_1ED89D968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E03E8);
    sub_1D26EEC4C();
    sub_1D22BB9D8(&unk_1ED89D480, &qword_1EC6E0458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D968);
  }

  return result;
}

unint64_t sub_1D26EEC4C()
{
  result = qword_1ED89DB30;
  if (!qword_1ED89DB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0490);
    sub_1D26EED04();
    sub_1D22BB9D8(&qword_1ED89D4A0, &qword_1EC6DB918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DB30);
  }

  return result;
}

unint64_t sub_1D26EED04()
{
  result = qword_1ED89DE28;
  if (!qword_1ED89DE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0488);
    sub_1D26EEE94(qword_1ED8A5160, type metadata accessor for EffectView);
    sub_1D26EEE94(qword_1ED89E868, type metadata accessor for BlurredEffectBackgroundViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DE28);
  }

  return result;
}

uint64_t sub_1D26EEDF0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D22BC8FC;

  return sub_1D23027C0(a1, v1);
}

uint64_t sub_1D26EEE94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_23Tm()
{
  v1 = type metadata accessor for ComposingView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1D2874EA8();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[15];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AD0);
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  v7 = v1[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D2875E18();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v2 + v7, 1, v8))
    {
      (*(v9 + 8))(v2 + v7, v8);
    }
  }

  else
  {
  }

  sub_1D2273818(*(v2 + v1[19]), *(v2 + v1[19] + 8));
  sub_1D2273818(*(v2 + v1[20]), *(v2 + v1[20] + 8));

  j__swift_release();
  sub_1D2273818(*(v2 + v1[23]), *(v2 + v1[23] + 8));
  sub_1D2273818(*(v2 + v1[24]), *(v2 + v1[24] + 8));

  return swift_deallocObject();
}

uint64_t sub_1D26EF250@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ComposingView();

  return sub_1D26E5130(a1);
}

uint64_t sub_1D26EF2C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D26EF328(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D26EF390(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for PersonAttributesPicker()
{
  result = qword_1EC6E04A0;
  if (!qword_1EC6E04A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D26EF508()
{
  sub_1D26EF608();
  if (v0 <= 0x3F)
  {
    sub_1D26EF660(319, &qword_1ED89E040, &type metadata for CreationViewStyle, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1D26EF660(319, &qword_1ED8A6C30, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D26EF608()
{
  if (!qword_1EC6E04B0)
  {
    type metadata accessor for PersonAttributesPickerViewModel();
    v0 = sub_1D2877538();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6E04B0);
    }
  }
}

void sub_1D26EF660(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D26EF6CC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D28798A8();
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = 0;
    v18 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v19 = a2 & 0xFFFFFFFFFFFFFFLL;
    v10 = (v5 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_1D2879158();
        v14 = v13;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v20[0] = a1;
          v20[1] = v19;
          v12 = v20 + v9;
        }

        else
        {
          v11 = v18;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v11 = sub_1D2879208();
          }

          v12 = (v11 + v9);
        }

        if ((*v12 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v16 = (__clz(*v12 ^ 0xFF) - 24);
        if (v16 > 2)
        {
          if (v16 == 3)
          {
            v14 = 3;
          }

          else
          {
            v14 = 4;
          }

          goto LABEL_15;
        }

        if (v16 == 1)
        {
LABEL_14:
          v14 = 1;
        }

        else
        {
          v14 = 2;
        }
      }

LABEL_15:
      sub_1D28798B8();
      v15 = sub_1D2879898();
      (*v10)(v7, v4);
      if ((v15 & 1) == 0)
      {
        v9 += v14;
        if (v9 < v8)
        {
          continue;
        }
      }

      return v15 & 1;
    }
  }

  v15 = 0;
  return v15 & 1;
}

uint64_t sub_1D26EF8F0@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a1;
  v28 = a2;
  v25[1] = a7;
  v25[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE860);
  MEMORY[0x1EEE9AC00](v25[0]);
  v12 = v25 - v11;
  KeyPath = swift_getKeyPath();
  LOBYTE(v33) = a5 & 1;
  LOBYTE(v63) = 0;
  sub_1D22BBFAC(a3, a4, a5 & 1);
  sub_1D2870F68();
  v14 = sub_1D28764C8();
  *&v39 = a3;
  *(&v39 + 1) = a4;
  v15 = v33;
  LOBYTE(v40) = v33;
  *(&v40 + 1) = a6;
  *v41 = KeyPath;
  *&v41[8] = 3;
  v16 = v63;
  v41[16] = v63;
  *&v41[17] = 256;
  v26 = swift_getKeyPath();
  v68 = v39;
  v69 = v40;
  v70[0] = *v41;
  *(v70 + 15) = *&v41[15];
  v42[0] = a3;
  v42[1] = a4;
  v43 = v15;
  v44 = a6;
  v45 = KeyPath;
  v46 = 3;
  v47 = v16;
  v17 = v12;
  v48 = 256;
  sub_1D22BD1D0(&v39, v73, &qword_1EC6DA260);
  sub_1D22BD238(v42, &qword_1EC6DA260);
  v49[0] = v68;
  v49[1] = v69;
  v49[2] = v70[0];
  *&v50 = *&v70[1];
  *(&v50 + 1) = v26;
  v33 = v68;
  v34 = v69;
  v35 = v70[0];
  v36 = v50;
  v51 = v14;
  *&v37[0] = v14;
  v52[1] = v69;
  v52[2] = v70[0];
  v52[0] = v68;
  v53 = *&v70[1];
  v54 = v26;
  v55 = v14;
  sub_1D22BD1D0(v49, v73, &qword_1EC6DA258);
  sub_1D22BD238(v52, &qword_1EC6DA258);
  v58 = v35;
  v59[0] = v36;
  *&v59[1] = *&v37[0];
  v56 = v33;
  v57 = v34;
  v18 = v27;
  DWORD2(v59[1]) = v27;
  v19 = swift_getKeyPath();
  v31 = v58;
  v32[0] = v59[0];
  *(v32 + 12) = *(v59 + 12);
  v29 = v56;
  v30 = v57;
  v60[2] = v35;
  v60[3] = v36;
  v61 = *&v37[0];
  v60[0] = v33;
  v60[1] = v34;
  v62 = v18;
  sub_1D22BD1D0(&v56, v73, &qword_1EC6DA250);
  sub_1D22BD238(v60, &qword_1EC6DA250);
  v20 = sub_1D2877018();
  v65 = v31;
  v66 = v32[0];
  v67[0] = v32[1];
  v63 = v29;
  v64 = v30;
  *&v67[1] = v19;
  LOBYTE(v18) = v28;
  BYTE8(v67[1]) = v28;
  v21 = swift_getKeyPath();
  v35 = v65;
  v36 = v66;
  v37[0] = v67[0];
  *(v37 + 9) = *(v67 + 9);
  v33 = v63;
  v34 = v64;
  *&v38 = v21;
  *(&v38 + 1) = v20;
  v70[1] = v32[0];
  v70[2] = v32[1];
  v69 = v30;
  v70[0] = v31;
  v68 = v29;
  v71 = v19;
  v72 = v18;
  sub_1D22BD1D0(&v63, v73, &qword_1EC6DA248);
  sub_1D22BD238(&v68, &qword_1EC6DA248);
  v22 = *MEMORY[0x1E697E720];
  v23 = sub_1D2874E88();
  (*(*(v23 - 8) + 104))(v17, v22, v23);
  sub_1D26F3D6C(&qword_1ED89DE70, MEMORY[0x1E697E730]);
  result = sub_1D2877F98();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA240);
    sub_1D23421B0();
    sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
    sub_1D28769B8();
    sub_1D22BD238(v17, &unk_1EC6DE860);
    v73[4] = v37[0];
    v73[5] = v37[1];
    v73[6] = v38;
    v73[0] = v33;
    v73[1] = v34;
    v73[2] = v35;
    v73[3] = v36;
    return sub_1D22BD238(v73, &qword_1EC6DA240);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D26EFDB8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30 = a2;
  v29 = a1;
  v27 = a7;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE860);
  MEMORY[0x1EEE9AC00](v26);
  v12 = &v25 - v11;
  KeyPath = swift_getKeyPath();
  LOBYTE(v36) = a5 & 1;
  LOBYTE(v67) = 0;
  sub_1D22BBFAC(a3, a4, a5 & 1);
  sub_1D2870F68();
  v14 = sub_1D28764C8();
  *&v42 = a3;
  *(&v42 + 1) = a4;
  v15 = v36;
  LOBYTE(v43) = v36;
  *(&v43 + 1) = a6;
  *v44 = KeyPath;
  *&v44[8] = 3;
  v16 = v67;
  v44[16] = v67;
  *&v44[17] = 256;
  v28 = swift_getKeyPath();
  v72 = v42;
  v73 = v43;
  v74[0] = *v44;
  *(v74 + 15) = *&v44[15];
  v45[0] = a3;
  v45[1] = a4;
  v46 = v15;
  v47 = a6;
  v48 = KeyPath;
  v49 = 3;
  v50 = v16;
  v17 = v12;
  v51 = 256;
  sub_1D22BD1D0(&v42, v77, &qword_1EC6DA260);
  sub_1D22BD238(v45, &qword_1EC6DA260);
  v52[0] = v72;
  v52[1] = v73;
  v52[2] = v74[0];
  *&v53 = *&v74[1];
  *(&v53 + 1) = v28;
  v36 = v72;
  v37 = v73;
  v38 = v74[0];
  v39 = v53;
  v54 = v14;
  *&v40[0] = v14;
  v55[1] = v73;
  v55[2] = v74[0];
  v55[0] = v72;
  v56 = *&v74[1];
  v57 = v28;
  v58 = v14;
  sub_1D22BD1D0(v52, v77, &qword_1EC6DA258);
  v18 = v29;
  sub_1D2870F78();
  sub_1D22BD238(v55, &qword_1EC6DA258);
  v61 = v38;
  v62 = v39;
  v59 = v36;
  v60 = v37;
  *&v63 = *&v40[0];
  *(&v63 + 1) = v18;
  v19 = swift_getKeyPath();
  v33 = v61;
  v34 = v62;
  v35 = v63;
  v31 = v59;
  v32 = v60;
  v64[2] = v38;
  v64[3] = v39;
  v64[0] = v36;
  v64[1] = v37;
  v65 = *&v40[0];
  v66 = v18;
  sub_1D22BD1D0(&v59, v77, &qword_1EC6E05F0);
  sub_1D22BD238(v64, &qword_1EC6E05F0);
  v20 = sub_1D2877018();
  v69 = v33;
  v70 = v34;
  v71[0] = v35;
  v67 = v31;
  v68 = v32;
  *&v71[1] = v19;
  LOBYTE(v18) = v30;
  BYTE8(v71[1]) = v30;
  v21 = swift_getKeyPath();
  v38 = v69;
  v39 = v70;
  v40[0] = v71[0];
  *(v40 + 9) = *(v71 + 9);
  v36 = v67;
  v37 = v68;
  *&v41 = v21;
  *(&v41 + 1) = v20;
  v74[1] = v34;
  v74[2] = v35;
  v73 = v32;
  v74[0] = v33;
  v72 = v31;
  v75 = v19;
  v76 = v18;
  sub_1D22BD1D0(&v67, v77, &qword_1EC6E05E0);
  sub_1D22BD238(&v72, &qword_1EC6E05E0);
  v22 = *MEMORY[0x1E697E720];
  v23 = sub_1D2874E88();
  (*(*(v23 - 8) + 104))(v17, v22, v23);
  sub_1D26F3D6C(&qword_1ED89DE70, MEMORY[0x1E697E730]);
  result = sub_1D2877F98();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E05C8);
    sub_1D26F3AF0();
    sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
    sub_1D28769B8();
    sub_1D22BD238(v17, &unk_1EC6DE860);
    v77[4] = v40[0];
    v77[5] = v40[1];
    v77[6] = v41;
    v77[0] = v36;
    v77[1] = v37;
    v77[2] = v38;
    v77[3] = v39;
    return sub_1D22BD238(v77, &qword_1EC6E05C8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D26F028C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D26F3D6C(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldShowCreationTips);
  return result;
}

uint64_t sub_1D26F0364@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E04C0);
  MEMORY[0x1EEE9AC00](v61);
  v3 = &v50[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E04C8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v50[-v5];
  v58 = type metadata accessor for PersonAttributesPickerViewModel();
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1D2875628();
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v50[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E04D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v50[-v12];
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E04D8);
  MEMORY[0x1EEE9AC00](v56);
  v15 = &v50[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E04E0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v57 = &v50[-v20];
  v21 = type metadata accessor for PersonAttributesPicker();
  if (*(v1 + v21[11]) == 1)
  {
    v52 = v4;
    *v13 = sub_1D2875918();
    *(v13 + 1) = 0;
    v13[16] = 1;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0510);
    sub_1D26F09F4(v1, &v13[*(v22 + 44)]);
    v51 = sub_1D2876328();
    v23 = v1 + v21[5];
    v24 = *v23;
    LODWORD(v23) = *(v23 + 8);
    v53 = v6;
    if (v23 != 1)
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v30 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D22EE66C(v24, 0);
      (*(v54 + 8))(v10, v55);
    }

    v31 = v16;
    v32 = v59;
    sub_1D2874298();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v41 = sub_1D22EC9BC(v13, v15, &qword_1EC6E04D0);
    v42 = &v15[*(v56 + 36)];
    *v42 = v51;
    *(v42 + 1) = v34;
    *(v42 + 2) = v36;
    *(v42 + 3) = v38;
    *(v42 + 4) = v40;
    v42[40] = 0;
    v43 = MEMORY[0x1D38A0390](v41, 0.5, 1.0, 0.0);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0498);
    MEMORY[0x1D389FF60](v44);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v45 = off_1F4DC5F90[0];
      type metadata accessor for FacePickerCarouselViewModel();
      v46 = v45();
      swift_unknownObjectRelease();
    }

    else
    {
      v46 = 0;
    }

    sub_1D26F3688(v32);
    sub_1D22EC9BC(v15, v18, &qword_1EC6E04D8);
    v47 = &v18[*(v31 + 36)];
    *v47 = v43;
    v47[8] = v46 & 1;
    v48 = v57;
    sub_1D22EC9BC(v18, v57, &qword_1EC6E04E0);
    sub_1D22BD1D0(v48, v53, &qword_1EC6E04E0);
    swift_storeEnumTagMultiPayload();
    sub_1D26F3518();
    sub_1D22BB9D8(&qword_1EC6E0508, &qword_1EC6E04C0);
    sub_1D2875AF8();
    v28 = v48;
    v29 = &qword_1EC6E04E0;
  }

  else
  {
    v25 = sub_1D2875928();
    v26 = *(v1 + v21[9]);
    *v3 = v25;
    *(v3 + 1) = v26;
    v3[16] = 0;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E04E8);
    sub_1D26F0F88(v1, &v3[*(v27 + 44)]);
    sub_1D22BD1D0(v3, v6, &qword_1EC6E04C0);
    swift_storeEnumTagMultiPayload();
    sub_1D26F3518();
    sub_1D22BB9D8(&qword_1EC6E0508, &qword_1EC6E04C0);
    sub_1D2875AF8();
    v28 = v3;
    v29 = &qword_1EC6E04C0;
  }

  return sub_1D22BD238(v28, v29);
}

uint64_t sub_1D26F09F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E04C0);
  MEMORY[0x1EEE9AC00](v57);
  v4 = (&v51 - v3);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0518);
  MEMORY[0x1EEE9AC00](v54);
  v6 = &v51 - v5;
  v7 = type metadata accessor for PersonAttributesPickerViewModel();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0520);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v56 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v51 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0498);
  MEMORY[0x1D389FF60]();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v52 = v4;
    v18 = v9;
    v19 = off_1F4DC5F90[0];
    type metadata accessor for FacePickerCarouselViewModel();
    v20 = v19();
    v9 = v18;
    LOBYTE(v18) = v20;
    swift_unknownObjectRelease();
    sub_1D26F3688(v12);
    if (v18)
    {
      v21 = sub_1D2875928();
      v22 = *(a1 + *(type metadata accessor for PersonAttributesPicker() + 36));
      v23 = v52;
      *v52 = v21;
      *(v23 + 8) = v22;
      *(v23 + 16) = 0;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E04E8);
      sub_1D26F0F88(a1, (v23 + *(v24 + 44)));
      sub_1D22BD1D0(v23, v6, &qword_1EC6E04C0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0528);
      sub_1D26F37BC();
      sub_1D22BB9D8(&qword_1EC6E0508, &qword_1EC6E04C0);
      v25 = v55;
      sub_1D2875AF8();
      sub_1D22BD238(v23, &qword_1EC6E04C0);
      goto LABEL_9;
    }
  }

  else
  {
    sub_1D26F3688(v12);
  }

  MEMORY[0x1D389FF60](v17);
  Strong = swift_unknownObjectWeakLoadStrong();
  v53 = a1;
  if (Strong)
  {
    v27 = sub_1D2486F44();
    v29 = v28;
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0;
    v29 = 0xE000000000000000;
  }

  sub_1D26F3688(v9);
  v59 = v27;
  v60 = v29;
  sub_1D22BD06C();
  v30 = sub_1D2876698();
  v32 = v31;
  v34 = v33;
  sub_1D2876468();
  v35 = sub_1D2876658();
  v37 = v36;
  v39 = v38;
  v41 = v40;

  sub_1D22ED6E0(v30, v32, v34 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v32) = sub_1D2876328();
  type metadata accessor for PersonAttributesPicker();
  sub_1D2874298();
  LOBYTE(v59) = v39 & 1;
  v61 = 0;
  *v6 = v35;
  *(v6 + 1) = v37;
  v6[16] = v39 & 1;
  *(v6 + 3) = v41;
  *(v6 + 4) = KeyPath;
  v6[40] = 1;
  v6[48] = v32;
  *(v6 + 7) = v43;
  *(v6 + 8) = v44;
  *(v6 + 9) = v45;
  *(v6 + 10) = v46;
  v6[88] = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0528);
  sub_1D26F37BC();
  sub_1D22BB9D8(&qword_1EC6E0508, &qword_1EC6E04C0);
  v25 = v55;
  sub_1D2875AF8();
LABEL_9:
  v47 = v56;
  sub_1D22BD1D0(v25, v56, &qword_1EC6E0520);
  v48 = v58;
  sub_1D22BD1D0(v47, v58, &qword_1EC6E0520);
  v49 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0538) + 48);
  *v49 = 0;
  *(v49 + 8) = 1;
  sub_1D22BD238(v25, &qword_1EC6E0520);
  return sub_1D22BD238(v47, &qword_1EC6E0520);
}

uint64_t sub_1D26F0F88@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a1;
  v48 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0540) - 8;
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0548);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0550);
  v41 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0558);
  v42 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0560);
  v39 = *(v44 - 8);
  v16 = v39;
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  v49 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0568);
  sub_1D26F3850();
  sub_1D28764F8();
  v21 = sub_1D22BB9D8(&qword_1EC6E05A8, &qword_1EC6E0548);
  sub_1D2876C08();
  (*(v7 + 8))(v9, v6);
  v50 = v6;
  v51 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1D2876988();
  (*(v41 + 8))(v12, v10);
  v50 = v10;
  v51 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v23 = v20;
  sub_1D2876CE8();
  (*(v42 + 8))(v15, v13);
  v24 = v45;
  sub_1D26F2BEC(v40, v45);
  LOBYTE(v9) = sub_1D2876328();
  type metadata accessor for PersonAttributesPicker();
  sub_1D2874298();
  v25 = v24 + *(v46 + 44);
  *v25 = v9;
  *(v25 + 8) = v26;
  *(v25 + 16) = v27;
  *(v25 + 24) = v28;
  *(v25 + 32) = v29;
  *(v25 + 40) = 0;
  v30 = *(v16 + 16);
  v31 = v43;
  v32 = v44;
  v33 = v23;
  v30(v43, v23, v44);
  v34 = v47;
  sub_1D22BD1D0(v24, v47, &qword_1EC6E0540);
  v35 = v48;
  v30(v48, v31, v32);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E05B0);
  sub_1D22BD1D0(v34, &v35[*(v36 + 48)], &qword_1EC6E0540);
  sub_1D22BD238(v24, &qword_1EC6E0540);
  v37 = *(v39 + 8);
  v37(v33, v32);
  sub_1D22BD238(v34, &qword_1EC6E0540);
  return (v37)(v31, v32);
}

uint64_t sub_1D26F1518@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1D26F15A4(a1, a2);
  v3 = [objc_opt_self() secondarySystemBackgroundColor];
  sub_1D2877128();
  v4 = sub_1D28774D8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0568);
  *&a2[*(result + 36)] = v4;
  return result;
}

uint64_t sub_1D26F15A4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v76 = a2;
  v3 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1D28714D8();
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v56 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D28714E8();
  v68 = *(v8 - 8);
  v69 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBB68);
  v67 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v65 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0600);
  v71 = *(v11 - 8);
  v72 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0608);
  v74 = *(v13 - 8);
  v75 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v73 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v79 = &v56 - v16;
  v17 = type metadata accessor for PersonAttributesPicker();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0498);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v56 - v21;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0610);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v56 - v25;
  sub_1D2877518();
  swift_getKeyPath();
  sub_1D2877508();

  sub_1D22BD238(v22, &qword_1EC6E0498);
  v82 = v80;
  v83 = v81;
  v61 = a1;
  sub_1D26F39B8(a1, &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v28 = swift_allocObject();
  sub_1D26F3A1C(&v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0618);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0620);
  sub_1D26F4004();
  sub_1D26F40F0();
  v54 = sub_1D26F41A8();
  v77 = v26;
  sub_1D2877588();
  sub_1D2877FE8();
  if (qword_1ED89E0F0 != -1)
  {
    swift_once();
  }

  v29 = v59;
  v30 = __swift_project_value_buffer(v59, qword_1ED8B0060);
  (*(v57 + 16))(v58, v30, v29);
  sub_1D28718C8();
  sub_1D2871508();
  sub_1D2877518();
  swift_getKeyPath();
  sub_1D2877508();

  sub_1D22BD238(v22, &qword_1EC6E0498);
  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v31 = qword_1ED8B0058;
  v32 = sub_1D2876668();
  MEMORY[0x1EEE9AC00](v32);
  v33 = v78;
  v55 = MEMORY[0x1E6981138];
  v53[1] = v53;
  v54 = MEMORY[0x1E6981148];
  v53[0] = sub_1D26F4280;
  v34 = v65;
  sub_1D2877A38();
  (*(v68 + 8))(v33, v69);
  v35 = sub_1D22BB9D8(&qword_1EC6DBB78, &qword_1EC6DBB68);
  v36 = v66;
  v37 = v70;
  sub_1D28768E8();
  (*(v67 + 8))(v34, v37);
  v80 = v37;
  *&v81 = v35;
  swift_getOpaqueTypeConformance2();
  v38 = v79;
  v39 = v72;
  sub_1D2876BD8();
  (*(v71 + 8))(v36, v39);
  v40 = v63;
  v41 = *(v63 + 16);
  v42 = v62;
  v43 = v64;
  v41(v62, v77, v64);
  v45 = v73;
  v44 = v74;
  v78 = *(v74 + 16);
  v46 = v38;
  v47 = v75;
  (v78)(v73, v46, v75);
  v48 = v76;
  v41(v76, v42, v43);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0678);
  (v78)(&v48[*(v49 + 48)], v45, v47);
  v50 = *(v44 + 8);
  v50(v79, v47);
  v51 = *(v40 + 8);
  v51(v77, v43);
  v50(v45, v47);
  return (v51)(v42, v43);
}

uint64_t sub_1D26F204C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  *&v10 = *a1;
  *(&v10 + 1) = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2870F68();
  sub_1D26F20E8(&v10, a2, a3);
}

__n128 sub_1D26F20E8@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[1] = a2;
  v24 = a3;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0658);
  v4 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v6 = v22 - v5;
  v7 = a1[1];
  v46 = *a1;
  v47 = v7;
  v48 = *(a1 + 4);
  v8 = a1[1];
  v36 = *a1;
  v37 = v8;
  v38 = *(a1 + 4);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0668);
  sub_1D2877518();
  v10 = v39;
  LOBYTE(a1) = v40;
  v11 = *(&v40 + 1);
  v12 = v41;
  swift_getKeyPath();
  v36 = v10;
  LOBYTE(v37) = a1;
  *(&v37 + 1) = v11;
  v38 = v12;
  sub_1D2877508();

  v25 = &v46;
  v30 = v33;
  v31 = v34;
  v32 = v35;
  v26 = v46;
  v27 = v47;
  v28 = v48;
  MEMORY[0x1D389FF60](v29, v9);
  sub_1D2875798();

  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v13 = qword_1ED8B0058;
  *&v26 = sub_1D2876668();
  *(&v26 + 1) = v14;
  LOBYTE(v27) = v15 & 1;
  *(&v27 + 1) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0680);
  sub_1D26F4290();
  sub_1D2877428();
  type metadata accessor for PersonAttributesPicker();
  sub_1D2877848();
  sub_1D2875208();
  v17 = v24;
  (*(v4 + 32))(v24, v6, v23);
  v18 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0620) + 36);
  v19 = v44;
  *(v18 + 64) = v43;
  *(v18 + 80) = v19;
  *(v18 + 96) = v45;
  v20 = v40;
  *v18 = v39;
  *(v18 + 16) = v20;
  result = v42;
  *(v18 + 32) = v41;
  *(v18 + 48) = result;
  return result;
}

uint64_t sub_1D26F2520()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0668);
  MEMORY[0x1D389FF60](&v2, v0);
  if (!v2)
  {
    if (qword_1EC6D8D30 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (v2 == 1)
  {
    if (qword_1EC6D8D38 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (qword_1EC6D8D40 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:
  sub_1D2870F68();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E06A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0698);
  sub_1D22BB9D8(&qword_1EC6E06A8, &qword_1EC6E06A0);
  sub_1D22BB9D8(&qword_1EC6E0690, &qword_1EC6E0698);
  sub_1D26F4340();
  return sub_1D2877588();
}

uint64_t sub_1D26F2748@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v37 = sub_1D2877568();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v34 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E06B8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v39 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v34 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E06C0);
  v8 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v14 = *a1;
  v15 = a1[1];
  sub_1D2870F68();
  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v16 = qword_1ED8B0058;
  *v13 = sub_1D2876668();
  *(v13 + 1) = v17;
  v13[16] = v18 & 1;
  *(v13 + 3) = v19;
  *(v13 + 4) = v14;
  *(v13 + 5) = v15;
  v13[48] = 1;
  v20 = qword_1EC6D8D48;
  sub_1D2870F68();
  if (v20 != -1)
  {
    swift_once();
  }

  if (v14 == qword_1EC6E3F28 && v15 == qword_1EC6E3F30 || (sub_1D2879618() & 1) != 0)
  {
    v21 = v34;
    sub_1D2877558();
    v22 = v35;
    v23 = v38;
    v24 = v21;
    v25 = v37;
    (*(v35 + 32))(v38, v24, v37);
    (*(v22 + 56))(v23, 0, 1, v25);
  }

  else
  {
    v23 = v38;
    (*(v35 + 56))(v38, 1, 1, v37);
  }

  v26 = v8;
  v27 = *(v8 + 16);
  v28 = v36;
  v27(v10, v13, v36);
  v29 = v39;
  sub_1D22BD1D0(v23, v39, &qword_1EC6E06B8);
  v30 = v40;
  v27(v40, v10, v28);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E06C8);
  sub_1D22BD1D0(v29, &v30[*(v31 + 48)], &qword_1EC6E06B8);
  sub_1D22BD238(v23, &qword_1EC6E06B8);
  v32 = *(v26 + 8);
  v32(v13, v28);
  sub_1D22BD238(v29, &qword_1EC6E06B8);
  return (v32)(v10, v28);
}

uint64_t sub_1D26F2BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E05B8);
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v49 - v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E05C0);
  MEMORY[0x1EEE9AC00](v53);
  v5 = &v49 - v4;
  v6 = type metadata accessor for PersonAttributesPicker();
  v50 = *(v6 - 8);
  v7 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1D2875628();
  v49 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PersonAttributesPickerViewModel();
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0498);
  v16 = a1;
  MEMORY[0x1D389FF60](v15);
  v17 = &v14[*(v12 + 48)];
  v19 = *v17;
  v18 = *(v17 + 1);
  sub_1D2870F68();
  sub_1D26F3688(v14);
  if (v18)
  {
    v56 = v19;
    v57 = v18;
    sub_1D22BD06C();
    v20 = sub_1D2876698();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = sub_1D28770B8();
    v28 = v51;
    sub_1D26EFDB8(v27, 0, v20, v22, v24 & 1, v26, v51);

    sub_1D22ED6E0(v20, v22, v24 & 1);

    v29 = v52;
    v30 = v54;
    (*(v52 + 16))(v5, v28, v54);
    swift_storeEnumTagMultiPayload();
    v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E05C8);
    v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE860);
    v33 = sub_1D26F3AF0();
    v34 = sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
    v56 = v31;
    v57 = v32;
    v58 = v33;
    v59 = v34;
    swift_getOpaqueTypeConformance2();
    sub_1D26F3D18();
    sub_1D2875AF8();
    return (*(v29 + 8))(v28, v30);
  }

  else
  {
    v51 = v8;
    v52 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = v16 + *(v6 + 20);
    v37 = *v36;
    if (*(v36 + 8) == 1)
    {
      v38 = *v36;
      LOBYTE(v56) = v37;
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v39 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D22EE66C(v37, 0);
      (*(v49 + 8))(v10, v51);
      v38 = v56;
    }

    v40 = v52;
    v41 = v50;
    v42 = (v38 - 5) < 2;
    sub_1D26F39B8(v16, v52);
    v43 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v44 = swift_allocObject();
    sub_1D26F3A1C(v40, v44 + v43);
    *v5 = swift_getKeyPath();
    v5[8] = 0;
    v5[9] = v42;
    *(v5 + 2) = sub_1D26F3A80;
    *(v5 + 3) = v44;
    swift_storeEnumTagMultiPayload();
    v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E05C8);
    v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE860);
    v47 = sub_1D26F3AF0();
    v48 = sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
    v56 = v45;
    v57 = v46;
    v58 = v47;
    v59 = v48;
    swift_getOpaqueTypeConformance2();
    sub_1D26F3D18();
    return sub_1D2875AF8();
  }
}

uint64_t sub_1D26F3208()
{
  v0 = type metadata accessor for PersonAttributesPickerViewModel();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0498);
  MEMORY[0x1D389FF60](v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_1D26F3688(v2);
  }

  v5 = Strong;
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldShowCreationTips;
  if (*(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldShowCreationTips))
  {
    *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldShowCreationTips) = 1;
    swift_getKeyPath();
    v13 = v5;
    sub_1D26F3D6C(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
    sub_1D28719E8();

    if (*(v5 + v6) == 1)
    {
      swift_getKeyPath();
      v13 = v5;
      sub_1D28719E8();

      if (*(v5 + 32))
      {
        v7 = *(v5 + 40);
        ObjectType = swift_getObjectType();
        v9 = *(v7 + 32);
        swift_unknownObjectRetain();
        v9(v5, ObjectType, v7);
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
    return sub_1D26F3688(v2);
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v12 - 2) = v5;
  *(&v12 - 8) = 1;
  v13 = v5;
  sub_1D26F3D6C(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  sub_1D28719D8();

  sub_1D26F3688(v2);
  return swift_unknownObjectRelease();
}

uint64_t sub_1D26F34C0(uint64_t a1)
{
  result = sub_1D26F3D6C(&qword_1EC6E04B8, type metadata accessor for PersonAttributesPicker);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D26F3518()
{
  result = qword_1EC6E04F0;
  if (!qword_1EC6E04F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E04E0);
    sub_1D26F35D0();
    sub_1D22BB9D8(&qword_1ED89D680, &qword_1EC6DA080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E04F0);
  }

  return result;
}

unint64_t sub_1D26F35D0()
{
  result = qword_1EC6E04F8;
  if (!qword_1EC6E04F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E04D8);
    sub_1D22BB9D8(&qword_1EC6E0500, &qword_1EC6E04D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E04F8);
  }

  return result;
}

uint64_t sub_1D26F3688(uint64_t a1)
{
  v2 = type metadata accessor for PersonAttributesPickerViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D26F36E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D28714E8();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  result = sub_1D2876688();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

unint64_t sub_1D26F37BC()
{
  result = qword_1EC6E0530;
  if (!qword_1EC6E0530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0528);
    sub_1D24DA0AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0530);
  }

  return result;
}

unint64_t sub_1D26F3850()
{
  result = qword_1EC6E0570;
  if (!qword_1EC6E0570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0568);
    sub_1D26F3908();
    sub_1D22BB9D8(&qword_1EC6E0598, &qword_1EC6E05A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0570);
  }

  return result;
}

unint64_t sub_1D26F3908()
{
  result = qword_1EC6E0578;
  if (!qword_1EC6E0578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0580);
    sub_1D22BB9D8(&qword_1EC6E0588, &qword_1EC6E0590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0578);
  }

  return result;
}

uint64_t sub_1D26F39B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonAttributesPicker();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D26F3A1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonAttributesPicker();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D26F3A80()
{
  type metadata accessor for PersonAttributesPicker();

  return sub_1D26F3208();
}

unint64_t sub_1D26F3AF0()
{
  result = qword_1EC6E05D0;
  if (!qword_1EC6E05D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E05C8);
    sub_1D26F3BA8();
    sub_1D22BB9D8(&qword_1ED89D2D8, &qword_1EC6DA278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E05D0);
  }

  return result;
}

unint64_t sub_1D26F3BA8()
{
  result = qword_1EC6E05D8;
  if (!qword_1EC6E05D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E05E0);
    sub_1D26F3C60();
    sub_1D22BB9D8(&qword_1ED89D310, &qword_1EC6DA0F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E05D8);
  }

  return result;
}

unint64_t sub_1D26F3C60()
{
  result = qword_1EC6E05E8;
  if (!qword_1EC6E05E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E05F0);
    sub_1D23423D8();
    sub_1D22BB9D8(&qword_1ED89D370, &unk_1EC6E0FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E05E8);
  }

  return result;
}

unint64_t sub_1D26F3D18()
{
  result = qword_1EC6E05F8;
  if (!qword_1EC6E05F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E05F8);
  }

  return result;
}

uint64_t sub_1D26F3D6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_29()
{
  v1 = type metadata accessor for PersonAttributesPicker();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0498) + 32);

  v4 = type metadata accessor for PersonAttributesPickerViewModel();
  v5 = *(v4 + 24);
  v6 = sub_1D2871818();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  MEMORY[0x1D38A3650](v3 + *(v4 + 28));

  sub_1D22EE66C(*(v2 + *(v1 + 20)), *(v2 + *(v1 + 20) + 8));

  return swift_deallocObject();
}

uint64_t sub_1D26F3F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PersonAttributesPicker() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D26F204C(a1, v6, a2);
}

unint64_t sub_1D26F4004()
{
  result = qword_1EC6E0628;
  if (!qword_1EC6E0628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0618);
    sub_1D22BB9D8(&qword_1EC6E0630, &qword_1EC6E0638);
    sub_1D22BB9D8(&qword_1EC6E0640, &qword_1EC6E0638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0628);
  }

  return result;
}

unint64_t sub_1D26F40F0()
{
  result = qword_1EC6E0648;
  if (!qword_1EC6E0648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0620);
    sub_1D22BB9D8(&qword_1EC6E0650, &qword_1EC6E0658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0648);
  }

  return result;
}

unint64_t sub_1D26F41A8()
{
  result = qword_1EC6E0660;
  if (!qword_1EC6E0660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0668);
    sub_1D26F422C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0660);
  }

  return result;
}

unint64_t sub_1D26F422C()
{
  result = qword_1EC6E0670;
  if (!qword_1EC6E0670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0670);
  }

  return result;
}

unint64_t sub_1D26F4290()
{
  result = qword_1EC6E0688;
  if (!qword_1EC6E0688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0680);
    sub_1D22BB9D8(&qword_1EC6E0690, &qword_1EC6E0698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0688);
  }

  return result;
}

unint64_t sub_1D26F4340()
{
  result = qword_1EC6E06B0;
  if (!qword_1EC6E06B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E06B0);
  }

  return result;
}

unint64_t sub_1D26F4394()
{
  result = qword_1EC6E06D0;
  if (!qword_1EC6E06D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E06D8);
    sub_1D26F3518();
    sub_1D22BB9D8(&qword_1EC6E0508, &qword_1EC6E04C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E06D0);
  }

  return result;
}

uint64_t type metadata accessor for MagicViewController()
{
  result = qword_1EC6E0710;
  if (!qword_1EC6E0710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D26F4510()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11.origin.x = v4;
    v11.origin.y = v6;
    v11.size.width = v8;
    v11.size.height = v10;
    CGRectGetMinY(v11);
    v12.origin.x = v4;
    v12.origin.y = v6;
    v12.size.width = v8;
    v12.size.height = v10;
    CGRectGetMaxY(v12);
    v13.origin.x = v4;
    v13.origin.y = v6;
    v13.size.width = v8;
    v13.size.height = v10;
    if (CGRectGetWidth(v13) > 0.0)
    {
      v14.origin.x = v4;
      v14.origin.y = v6;
      v14.size.width = v8;
      v14.size.height = v10;
      CGRectGetHeight(v14);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D26F46A8(void *a1, uint64_t a2, void (*a3)(id))
{
  v5 = v3;
  v7 = sub_1D2873CB8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v5 + qword_1EC6E06F0))
  {
    sub_1D2870F78();
    v11 = sub_1D27FE818();

    sub_1D26F4510();
    v13 = v12;
    v15 = v14;
    v16 = swift_allocObject();
    v16[2] = a1;
    v16[3] = v13;
    v16[4] = v15;
    sub_1D2870F78();
    v17 = a1;
    sub_1D2758420(v11, a3, v16);
  }

  else
  {
    sub_1D28725E8();
    v19 = sub_1D2873CA8();
    v20 = sub_1D2878A18();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D226E000, v19, v20, "animatedEffectsViewModel is nil", v21, 2u);
      MEMORY[0x1D38A3520](v21, -1, -1);
    }

    return (*(v8 + 8))(v10, v7);
  }
}

void sub_1D26F4894(void *a1)
{
  v2 = v1;
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + qword_1EC6E06F0))
  {
    v8 = *(v2 + qword_1EC6E06F8);
    *(v2 + qword_1EC6E06F8) = a1;
    v9 = a1;
    sub_1D2870F78();

    if (a1)
    {

      MagicViewModel.load(fromAPIRecipe:)(v9);
    }

    else
    {
      MagicViewModel.reset()();
    }
  }

  else
  {
    sub_1D28725E8();
    v10 = sub_1D2873CA8();
    v11 = sub_1D2878A18();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D226E000, v10, v11, "magicViewModel is nil", v12, 2u);
      MEMORY[0x1D38A3520](v12, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v13 = *(v2 + qword_1EC6E06F8);
    *(v2 + qword_1EC6E06F8) = 0;
  }
}

void sub_1D26F4A7C()
{
  v1 = v0;
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v26 - v5;
  v7 = sub_1D2872438();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v26 - v12;
  if (*(v1 + qword_1EC6E06F0))
  {
    v26[2] = v3;
    type metadata accessor for GenerationRecipeFactory();
    v14 = sub_1D2870F78();
    sub_1D2461838(v14, 1, v13);
    sub_1D2878C58();
    (*(v8 + 16))(v10, v13, v7);
    v18 = sub_1D2878C48();
    sub_1D26F5704();
    v19 = sub_1D2878D28();
    v20 = [v18 underlyingData];
    v21 = sub_1D28716E8();
    v23 = v22;

    v24 = sub_1D28716D8();
    sub_1D22D6D60(v21, v23);
    [v19 setAdditionalMetadata_];

    (*(v8 + 8))(v13, v7);
    v25 = *(v1 + qword_1EC6E06F8);
    *(v1 + qword_1EC6E06F8) = v19;
  }

  else
  {
    sub_1D28725E8();
    v15 = sub_1D2873CA8();
    v16 = sub_1D2878A18();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D226E000, v15, v16, "Failed to get the context.", v17, 2u);
      MEMORY[0x1D38A3520](v17, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_1D26F4ED0(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + qword_1EC6E0708;
  v5 = *(v3 + qword_1EC6E0708);
  v6 = *(v3 + qword_1EC6E0708 + 8);
  v7 = *(v3 + qword_1EC6E0708 + 16);
  *v4 = *&result;
  *(v4 + 8) = *&a2;
  *(v4 + 16) = a3 & 1;
  if (*(v3 + qword_1EC6E06F0) && (a3 & 1) == 0)
  {
    v8 = *&result;
    v10 = !v7 && *&result == *&v5;
    if (!v10 || *&a2 != *&v6)
    {
      sub_1D2870F78();
      sub_1D27FEFE4(v5, v6, v7, v8, *&a2);

      *&result = COERCE_DOUBLE();
    }
  }

  return result;
}

void sub_1D26F4FA8()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28724E8();
  v5 = v0;
  v6 = sub_1D2873CA8();
  v7 = sub_1D28789F8();
  v8 = &off_1E83FF000;
  if (os_log_type_enabled(v6, v7))
  {
    v21 = v1;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    v11 = [v5 view];

    if (!v11)
    {
      goto LABEL_8;
    }

    [v11 frame];

    v12 = sub_1D2878CA8();
    v14 = sub_1D23D7C84(v12, v13, &v22);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1D226E000, v6, v7, "MagicViewController did layout view: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1D38A3520](v10, -1, -1);
    MEMORY[0x1D38A3520](v9, -1, -1);

    (*(v2 + 8))(v4, v21);
    v8 = &off_1E83FF000;
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  v15 = [v5 v8[309]];
  if (v15)
  {
    v16 = v15;
    [v15 &selRef_imageDescription];
    v18 = v17;
    v20 = v19;

    sub_1D26F4ED0(v18, v20, 0);
    return;
  }

  __break(1u);
LABEL_8:
  __break(1u);
}

void sub_1D26F5238(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = a1;
  sub_1D26F4FA8();
  v4.receiver = v3;
  v4.super_class = ObjectType;
  objc_msgSendSuper2(&v4, sel_viewDidLayoutSubviews);
}

uint64_t sub_1D26F5294(uint64_t a1)
{
  v3 = type metadata accessor for MagicView(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(v1);
  *&v6[qword_1EC6E06F0] = 0;
  *&v6[qword_1EC6E06F8] = 0;
  *&v6[qword_1EC6E0700] = 0;
  v7 = &v6[qword_1EC6E0708];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  sub_1D26F5644(a1, v5);
  v8 = sub_1D28759F8();
  sub_1D26F56A8(a1);
  return v8;
}

void *sub_1D26F53B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagicView(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1EC6E06F0) = 0;
  *(v2 + qword_1EC6E06F8) = 0;
  *(v2 + qword_1EC6E0700) = 0;
  v7 = v2 + qword_1EC6E0708;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  sub_1D26F5644(a2, v6);
  v8 = sub_1D28759E8();
  v9 = v8;
  sub_1D26F56A8(a2);
  if (v8)
  {
  }

  return v8;
}

id sub_1D26F549C(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[qword_1EC6E06F0] = 0;
  *&v1[qword_1EC6E06F8] = 0;
  *&v1[qword_1EC6E0700] = 0;
  v4 = &v1[qword_1EC6E0708];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

void sub_1D26F556C()
{

  v1 = *(v0 + qword_1EC6E0700);
}

void sub_1D26F55BC(uint64_t a1)
{

  v2 = *(a1 + qword_1EC6E0700);
}

uint64_t sub_1D26F5644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagicView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D26F56A8(uint64_t a1)
{
  v2 = type metadata accessor for MagicView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D26F5704()
{
  result = qword_1EC6E0720;
  if (!qword_1EC6E0720)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC6E0720);
  }

  return result;
}

uint64_t sub_1D26F5750(char a1)
{
  *(v1 + 89) = a1;
  v2 = sub_1D2871DD8();
  *(v1 + 16) = v2;
  *(v1 + 24) = *(v2 - 8);
  *(v1 + 32) = swift_task_alloc();
  sub_1D2878568();
  *(v1 + 40) = sub_1D2878558();
  v4 = sub_1D28784F8();
  *(v1 + 48) = v4;
  *(v1 + 56) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D26F5844, v4, v3);
}

uint64_t sub_1D26F5844()
{
  type metadata accessor for VisualEffectLoader();
  *(v0 + 88) = 0;
  sub_1D2871DC8();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1D26F590C;
  v2 = *(v0 + 32);

  return sub_1D275CD0C((v0 + 88), 1, v2, 0);
}

uint64_t sub_1D26F590C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;

  (*(v6 + 8))(v5, v7);
  v8 = *(v3 + 56);
  v9 = *(v3 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1D26F5A98, v9, v8);
}

uint64_t sub_1D26F5A98()
{
  v1 = *(v0 + 89);

  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (v1 == 1)
  {
    v4 = qword_1EC6E06E0;
    qword_1EC6E06E0 = *(v0 + 72);
    *algn_1EC6E06E8 = v3;
    v2 = v4;
  }

  sub_1D233EE24(v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D26F5B30(uint64_t a1)
{
  v1[7] = a1;
  v3 = sub_1D2871158();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0728);
  v1[11] = swift_task_alloc();
  v4 = type metadata accessor for PromptElementConceptExtractor.Concept();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[19] = v5;
  *v5 = v1;
  v5[1] = sub_1D26F5CF0;

  return sub_1D26F6E24(a1);
}

uint64_t sub_1D26F5CF0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = sub_1D26F634C;
  }

  else
  {

    v4 = sub_1D26F5E0C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1D26F5E0C()
{
  v1 = v0[20];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[13];
    v5 = (v4 + 56);
    v51 = (v0[9] + 8);
    v52 = (v4 + 48);
    v6 = MEMORY[0x1E69E7CC0];
    v42 = v0[15];
    v43 = v0[16];
    v46 = *(v1 + 16);
    v47 = v0[20];
    v44 = (v4 + 56);
    v45 = v4;
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v7 = v0[18];
      v8 = v0[16];
      v54 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v53 = *(v4 + 72);
      sub_1D270172C(v0[20] + v54 + v53 * v3, v7);
      sub_1D270172C(v7, v8);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        sub_1D2701790(v0[16]);
      }

      else
      {
        if (EnumCaseMultiPayload < 2)
        {
          v50 = v6;
          v10 = v0[10];
          v11 = v0[8];
          v12 = *(v43 + 8);
          v0[2] = *v0[16];
          v0[3] = v12;
          sub_1D2871148();
          sub_1D22BD06C();
          v13 = sub_1D2878F48();
          v49 = *v51;
          (*v51)(v10, v11);

          v0[6] = v13;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358);
          sub_1D238D968();
          sub_1D2877F68();
          v15 = v14;

          if (qword_1EC6D8D88 != -1)
          {
            swift_once();
          }

          v16 = qword_1EC6E2978;
          v17 = sub_1D2878068();
          if ((v15 & 0x1000000000000000) != 0)
          {
            v18 = sub_1D2878258();
          }

          else
          {
            v18 = sub_1D2878268();
          }

          v19 = v18;

          v20 = v0[15];
          v48 = v0[11];
          v21 = v0[10];
          v22 = v0[8];
          v23 = sub_1D2878068();
          v24 = [v16 stringByReplacingMatchesInString:v17 options:0 range:0 withTemplate:{v19, v23}];

          v25 = sub_1D28780A8();
          v27 = v26;

          v0[4] = v25;
          v0[5] = v27;
          sub_1D2871128();
          v28 = sub_1D2878F88();
          v30 = v29;
          v49(v21, v22);

          *v20 = v28;
          *(v42 + 8) = v30;
          swift_storeEnumTagMultiPayload();
          sub_1D2701854(v20, v48);
          v6 = v50;
          v2 = v46;
          v1 = v47;
          v5 = v44;
          v4 = v45;
          goto LABEL_16;
        }

        v31 = v0[16];
        v32 = sub_1D28721C8();
        (*(*(v32 - 8) + 8))(v31, v32);
      }

      sub_1D270172C(v0[18], v0[11]);
LABEL_16:
      v33 = v0[18];
      v35 = v0[11];
      v34 = v0[12];
      (*v5)(v35, 0, 1, v34);
      sub_1D2701790(v33);
      if ((*v52)(v35, 1, v34) == 1)
      {
        sub_1D27017EC(v0[11]);
      }

      else
      {
        v36 = v0[17];
        v37 = v0[14];
        sub_1D2701854(v0[11], v36);
        sub_1D270172C(v36, v37);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1D27CC818(0, v6[2] + 1, 1, v6);
        }

        v39 = v6[2];
        v38 = v6[3];
        if (v39 >= v38 >> 1)
        {
          v6 = sub_1D27CC818(v38 > 1, v39 + 1, 1, v6);
        }

        v40 = v0[14];
        sub_1D2701790(v0[17]);
        v6[2] = v39 + 1;
        sub_1D2701854(v40, v6 + v54 + v39 * v53);
      }

      if (v2 == ++v3)
      {
        goto LABEL_25;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_25:

  v41 = v0[1];

  v41(v6);
}

uint64_t sub_1D26F634C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D26F6410(uint64_t a1)
{
  v1[7] = a1;
  v3 = sub_1D2871158();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0728);
  v1[11] = swift_task_alloc();
  v4 = type metadata accessor for PromptElementConceptExtractor.Concept();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[18] = v5;
  *v5 = v1;
  v5[1] = sub_1D26F65C4;

  return sub_1D26F6E24(a1);
}

uint64_t sub_1D26F65C4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D26F6768, 0, 0);
  }
}

uint64_t sub_1D26F6768()
{
  v1 = v0[19];
  v2 = *(v1 + 16);
  if (v2)
  {
    v47 = v0[14];
    v48 = v0[15];
    v3 = v0[13];
    v49 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v4 = v1 + v49;
    v5 = (v3 + 56);
    v6 = (v0[9] + 8);
    v7 = MEMORY[0x1E69E7CC0];
    v8 = (v3 + 48);
    v45 = v6;
    v46 = (v3 + 56);
    v44 = (v3 + 48);
    v53 = *(v3 + 72);
    while (1)
    {
      v10 = v0[17];
      v11 = v0[15];
      sub_1D270172C(v4, v10);
      sub_1D270172C(v10, v11);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        sub_1D2701790(v0[15]);
      }

      else
      {
        if (EnumCaseMultiPayload < 2)
        {
          v13 = v0[10];
          v14 = v0[8];
          v15 = *(v48 + 8);
          v0[2] = *v0[15];
          v0[3] = v15;
          sub_1D2871148();
          sub_1D22BD06C();
          v16 = sub_1D2878F48();
          v51 = *v6;
          (*v6)(v13, v14);

          v0[6] = v16;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358);
          sub_1D238D968();
          sub_1D2877F68();
          v18 = v17;

          if (qword_1EC6D8D88 != -1)
          {
            swift_once();
          }

          v19 = qword_1EC6E2978;
          v20 = sub_1D2878068();
          v52 = v7;
          if ((v18 & 0x1000000000000000) != 0)
          {
            v21 = sub_1D2878258();
          }

          else
          {
            v21 = sub_1D2878268();
          }

          v22 = v21;

          v23 = v0[14];
          v50 = v0[11];
          v24 = v0[10];
          v25 = v0[8];
          v26 = sub_1D2878068();
          v27 = [v19 stringByReplacingMatchesInString:v20 options:0 range:0 withTemplate:{v22, v26}];

          v28 = sub_1D28780A8();
          v30 = v29;

          v0[4] = v28;
          v0[5] = v30;
          sub_1D2871128();
          v31 = sub_1D2878F88();
          v33 = v32;
          v6 = v45;
          v51(v24, v25);

          *v23 = v31;
          *(v47 + 8) = v33;
          swift_storeEnumTagMultiPayload();
          sub_1D2701854(v23, v50);
          v7 = v52;
          v5 = v46;
          v8 = v44;
          goto LABEL_15;
        }

        v34 = v0[15];
        v35 = sub_1D28721C8();
        (*(*(v35 - 8) + 8))(v34, v35);
      }

      sub_1D270172C(v0[17], v0[11]);
LABEL_15:
      v36 = v0[17];
      v38 = v0[11];
      v37 = v0[12];
      (*v5)(v38, 0, 1, v37);
      sub_1D2701790(v36);
      if ((*v8)(v38, 1, v37) == 1)
      {
        sub_1D27017EC(v0[11]);
        v9 = v53;
      }

      else
      {
        sub_1D2701854(v0[11], v0[16]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1D27CC818(0, v7[2] + 1, 1, v7);
        }

        v40 = v7[2];
        v39 = v7[3];
        if (v40 >= v39 >> 1)
        {
          v7 = sub_1D27CC818(v39 > 1, v40 + 1, 1, v7);
        }

        v41 = v0[16];
        v7[2] = v40 + 1;
        v9 = v53;
        sub_1D2701854(v41, v7 + v49 + v40 * v53);
      }

      v4 += v9;
      if (!--v2)
      {

        goto LABEL_24;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_24:

  v42 = v0[1];

  return v42(v7);
}

uint64_t PromptElementConceptExtractor.__allocating_init(servicesFetcher:)()
{
  v0 = swift_allocObject();
  type metadata accessor for VisualSummarizationClient();
  v1 = swift_allocObject();
  sub_1D2873DE8();
  swift_allocObject();
  *(v1 + 24) = sub_1D2873DD8();
  v2 = sub_1D27D8C8C();

  *(v1 + 16) = v2 & 1;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t PromptElementConceptExtractor.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for VisualSummarizationClient();
  v1 = swift_allocObject();
  sub_1D2873DE8();
  swift_allocObject();
  *(v1 + 24) = sub_1D2873DD8();
  *(v1 + 16) = sub_1D27D8C8C() & 1;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t PromptElementConceptExtractor.init()()
{
  type metadata accessor for VisualSummarizationClient();
  v1 = swift_allocObject();
  sub_1D2873DE8();
  swift_allocObject();
  *(v1 + 24) = sub_1D2873DD8();
  *(v1 + 16) = sub_1D27D8C8C() & 1;
  *(v0 + 16) = v1;
  return v0;
}

unint64_t sub_1D26F6DE8()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD00000000000002BLL;
  }
}

uint64_t sub_1D26F6E24(uint64_t a1)
{
  v2[37] = a1;
  v2[38] = v1;
  v3 = sub_1D2877E58();
  v2[39] = v3;
  v2[40] = *(v3 - 8);
  v2[41] = swift_task_alloc();
  v4 = sub_1D28721C8();
  v2[42] = v4;
  v2[43] = *(v4 - 8);
  v2[44] = swift_task_alloc();
  v5 = type metadata accessor for PromptElementConceptExtractor.Concept();
  v2[45] = v5;
  v2[46] = *(v5 - 8);
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v6 = sub_1D2872018();
  v2[65] = v6;
  v2[66] = *(v6 - 8);
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D26F70DC, 0, 0);
}

uint64_t sub_1D26F70DC()
{
  v1 = *(v0 + 296);
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 256) = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + 16);
  *(v0 + 560) = v3;
  if (!v3)
  {
    v101 = v2;
LABEL_99:
    v143 = v2;
    sub_1D274DDBC(v101);

    v102 = *(v0 + 8);

    return v102(v143);
  }

  v135 = (v0 + 272);
  v131 = (v0 + 280);
  v132 = (v0 + 264);
  v138 = (v0 + 288);
  v4 = sub_1D2872038();
  v5 = 0;
  v6 = *(v4 - 8);
  *(v0 + 736) = *(v6 + 80);
  *(v0 + 568) = *(v6 + 72);
  *(v0 + 740) = *MEMORY[0x1E696E368];
  *(v0 + 744) = *MEMORY[0x1E696E360];
  *(v0 + 748) = *MEMORY[0x1E696E340];
  *(v0 + 752) = *MEMORY[0x1E696E358];
  *(v0 + 756) = *MEMORY[0x1E696E380];
  *(v0 + 760) = *MEMORY[0x1E696E388];
  *(v0 + 764) = *MEMORY[0x1E696E350];
  *(v0 + 768) = *MEMORY[0x1E696E370];
  *(v0 + 772) = *MEMORY[0x1E696E378];
  *(v0 + 776) = *MEMORY[0x1E696E348];
  v7 = 0x1E6977000uLL;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    *(v0 + 584) = v8;
    *(v0 + 576) = v5;
    v9 = *(v0 + 740);
    v10 = *(v0 + 552);
    v11 = *(v0 + 528);
    v12 = *(v0 + 520);
    sub_1D2872028();
    v13 = *(v11 + 88);
    v14 = v13(v10, v12);
    if (v14 == v9)
    {
      v15 = *(v0 + 552);
      (*(*(v0 + 528) + 96))(v15, *(v0 + 520));
      v16 = *v15;
      *(v0 + 592) = *v15;
      v17 = v15[1];
      *(v0 + 600) = v17;
      if ((v17 & 0x2000000000000000) != 0)
      {
        v18 = HIBYTE(v17) & 0xF;
      }

      else
      {
        v18 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {
        v19 = [objc_allocWithZone(*(v7 + 2696)) initWithUnit_];
        v20 = sub_1D2878068();
        [v19 setString_];

        *v138 = 0;
        *(swift_task_alloc() + 16) = v138;
        sub_1D2878958();

        if (*v138 >= 50)
        {
          v104 = swift_task_alloc();
          *(v0 + 608) = v104;
          *v104 = v0;
          v104[1] = sub_1D26F8654;
          v105 = v0 + 216;
          goto LABEL_103;
        }

        v21 = *(v0 + 496);
        *v21 = v16;
        v21[1] = v17;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D27CC818(0, v8[2] + 1, 1, v8);
        }

        v23 = v8[2];
        v22 = v8[3];
        v24 = v23 + 1;
        if (v23 >= v22 >> 1)
        {
          v8 = sub_1D27CC818(v22 > 1, v23 + 1, 1, v8);
        }

        v25 = *(v0 + 496);
        goto LABEL_49;
      }

      goto LABEL_3;
    }

    if (v14 == *(v0 + 744))
    {
      v140 = v8;
      v26 = *(v0 + 552);
      v136 = *(*(v0 + 528) + 96);
      v136(v26, *(v0 + 520));
      v27 = *v26;
      *(v0 + 640) = *v26;
      v17 = v26[1];
      *(v0 + 648) = v17;
      v28 = v26[3];
      if ((v17 & 0x2000000000000000) != 0)
      {
        v29 = HIBYTE(v17) & 0xF;
      }

      else
      {
        v29 = v27 & 0xFFFFFFFFFFFFLL;
      }

      if (!v29)
      {
        goto LABEL_58;
      }

      v133 = v26[2];
      v30 = [objc_allocWithZone(*(v7 + 2696)) initWithUnit_];
      v31 = sub_1D2878068();
      [v30 setString_];

      *v135 = 0;
      *(swift_task_alloc() + 16) = v135;
      sub_1D2878958();

      if (*v135 >= 10)
      {
        v107 = v133;
        v139 = v27;
        v108 = v28;
        if (v28)
        {
          goto LABEL_117;
        }

        v109 = 0;
        do
        {
          v110 = v108;
          v141 = *(v0 + 772);
          v111 = *(v0 + 544);
          v112 = *(v0 + 520);
          sub_1D2872028();
          v113 = v13(v111, v112);
          v114 = *(v0 + 544);
          if (v113 == v141)
          {
            v115 = *(v0 + 520);

            v136(v114, v115);
            v107 = *v114;
            v108 = v114[1];
          }

          else
          {
            (*(*(v0 + 528) + 8))(*(v0 + 544), *(v0 + 520));
            v108 = v110;
          }

          ++v109;
        }

        while (v109 != *(v0 + 560));

        if (v108)
        {
LABEL_117:
          *(v0 + 656) = v108;
          if (v107 != v139 || (v123 = v17, v108 != v17))
          {
            v16 = v139;
            if ((sub_1D2879618() & 1) == 0)
            {
              v125 = swift_task_alloc();
              *(v0 + 680) = v125;
              *v125 = v0;
              v125[1] = sub_1D26FCDE8;
              v126 = v0 + 136;
              goto LABEL_134;
            }

            v123 = v108;
          }
        }

        else
        {
          v123 = 0;
        }

        *(v0 + 664) = v123;
        v128 = swift_task_alloc();
        *(v0 + 672) = v128;
        *v128 = v0;
        v128[1] = sub_1D26FB5E0;
        v105 = v0 + 96;
        v106 = v139;
        goto LABEL_130;
      }

      v32 = *(v0 + 448);

      *v32 = v27;
      v32[1] = v17;
      swift_storeEnumTagMultiPayload();
      v8 = v140;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1D27CC818(0, v140[2] + 1, 1, v140);
      }

      v7 = 0x1E6977000;
      v23 = v8[2];
      v33 = v8[3];
      v24 = v23 + 1;
      if (v23 >= v33 >> 1)
      {
        v8 = sub_1D27CC818(v33 > 1, v23 + 1, 1, v8);
      }

      v25 = *(v0 + 448);
LABEL_49:
      v47 = *(v0 + 368);
      v8[2] = v24;
      v48 = v8 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v23;
      goto LABEL_50;
    }

    if (v14 == *(v0 + 748))
    {
      break;
    }

    if (v14 == *(v0 + 752))
    {
      v41 = *(v0 + 552);
      (*(*(v0 + 528) + 96))(v41, *(v0 + 520));
      v16 = *v41;
      *(v0 + 616) = *v41;
      v17 = v41[1];
      *(v0 + 624) = v17;
      if ((v17 & 0x2000000000000000) != 0)
      {
        v42 = HIBYTE(v17) & 0xF;
      }

      else
      {
        v42 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (v42)
      {
        v43 = [objc_allocWithZone(*(v7 + 2696)) initWithUnit_];
        v44 = sub_1D2878068();
        [v43 setString_];

        *v131 = 0;
        *(swift_task_alloc() + 16) = v131;
        sub_1D2878958();

        if (*v131 >= 50)
        {
          v124 = swift_task_alloc();
          *(v0 + 632) = v124;
          *v124 = v0;
          v124[1] = sub_1D26F9E18;
          v105 = v0 + 176;
          goto LABEL_103;
        }

        v45 = *(v0 + 472);
        *v45 = v16;
        v45[1] = v17;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D27CC818(0, v8[2] + 1, 1, v8);
        }

        v23 = v8[2];
        v46 = v8[3];
        v24 = v23 + 1;
        if (v23 >= v46 >> 1)
        {
          v8 = sub_1D27CC818(v46 > 1, v23 + 1, 1, v8);
        }

        v25 = *(v0 + 472);
        goto LABEL_49;
      }
    }

    else
    {
      if (v14 == *(v0 + 756))
      {
        v49 = *(v0 + 552);
        v50 = *(v0 + 408);
        v51 = *(v0 + 352);
        v52 = *(v0 + 336);
        v53 = *(v0 + 344);
        (*(*(v0 + 528) + 96))(v49, *(v0 + 520));
        (*(v53 + 32))(v51, v49, v52);
        (*(v53 + 16))(v50, v51, v52);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D27CC818(0, v8[2] + 1, 1, v8);
        }

        v55 = v8[2];
        v54 = v8[3];
        v56 = v55 + 1;
        v7 = 0x1E6977000;
        if (v55 >= v54 >> 1)
        {
          v8 = sub_1D27CC818(v54 > 1, v55 + 1, 1, v8);
        }

        v57 = *(v0 + 408);
        v58 = *(v0 + 368);
        v60 = *(v0 + 344);
        v59 = *(v0 + 352);
        v61 = *(v0 + 336);
LABEL_65:
        (*(v60 + 8))(v59, v61);
        v8[2] = v56;
        v48 = v8 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v55;
        v25 = v57;
        goto LABEL_50;
      }

      if (v14 == *(v0 + 760))
      {
        v62 = *(v0 + 552);
        v63 = *(v0 + 400);
        v65 = *(v0 + 320);
        v64 = *(v0 + 328);
        v66 = *(v0 + 312);
        (*(*(v0 + 528) + 96))(v62, *(v0 + 520));
        (*(v65 + 32))(v64, v62, v66);
        (*(v65 + 16))(v63, v64, v66);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D27CC818(0, v8[2] + 1, 1, v8);
        }

        v55 = v8[2];
        v67 = v8[3];
        v56 = v55 + 1;
        v7 = 0x1E6977000;
        if (v55 >= v67 >> 1)
        {
          v8 = sub_1D27CC818(v67 > 1, v55 + 1, 1, v8);
        }

        v57 = *(v0 + 400);
        v58 = *(v0 + 368);
        v60 = *(v0 + 320);
        v59 = *(v0 + 328);
        v61 = *(v0 + 312);
        goto LABEL_65;
      }

      if (v14 == *(v0 + 764))
      {
        v68 = *(v0 + 552);
        v69 = *(v0 + 392);
        (*(*(v0 + 528) + 96))(v68, *(v0 + 520));
        v70 = *v68;
        *v69 = v70;
        swift_storeEnumTagMultiPayload();
        v71 = v70;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D27CC818(0, v8[2] + 1, 1, v8);
        }

        v73 = v8[2];
        v72 = v8[3];
        v74 = v73 + 1;
        if (v73 >= v72 >> 1)
        {
          v8 = sub_1D27CC818(v72 > 1, v73 + 1, 1, v8);
        }

        v75 = *(v0 + 392);
        goto LABEL_78;
      }

      if (v14 == *(v0 + 768))
      {
        v76 = *(v0 + 552);
        v77 = *(v0 + 384);
        (*(*(v0 + 528) + 96))(v76, *(v0 + 520));
        v78 = *v76;
        v79 = type metadata accessor for PlaygroundImage();
        v80 = (v77 + v79[9]);
        *v80 = 0u;
        v80[1] = 0u;
        *(v77 + v79[10]) = xmmword_1D28809A0;
        v81 = v79[11];
        v82 = sub_1D2873AA8();
        (*(*(v82 - 8) + 56))(v77 + v81, 1, 1, v82);
        *v77 = v78;
        *(v77 + 8) = 0;
        *(v77 + 24) = 1;
        *(v77 + 16) = 0;
        *(v77 + 32) = 0;
        *(v77 + 40) = 0;
        *(v77 + v79[12]) = 0;
        v71 = v78;
        sub_1D2871808();
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D27CC818(0, v8[2] + 1, 1, v8);
        }

        v73 = v8[2];
        v83 = v8[3];
        v74 = v73 + 1;
        if (v73 >= v83 >> 1)
        {
          v8 = sub_1D27CC818(v83 > 1, v73 + 1, 1, v8);
        }

        v75 = *(v0 + 384);
        goto LABEL_78;
      }

      if (v14 != *(v0 + 772))
      {
        v89 = *(v0 + 552);
        v90 = *(v0 + 528);
        v91 = *(v0 + 520);
        if (v14 != *(v0 + 776))
        {
          (*(v90 + 8))(*(v0 + 552), v91);
          goto LABEL_4;
        }

        v92 = *(v0 + 376);
        (*(v90 + 96))(*(v0 + 552), v91);
        v93 = *v89;
        v94 = type metadata accessor for PlaygroundImage();
        *(v92 + 32) = 0;
        *(v92 + 40) = 0;
        v95 = (v92 + v94[9]);
        *v95 = 0u;
        v95[1] = 0u;
        *(v92 + v94[10]) = xmmword_1D28809A0;
        v96 = v94[11];
        v97 = sub_1D2873AA8();
        (*(*(v97 - 8) + 56))(v92 + v96, 1, 1, v97);
        *v92 = v93;
        *(v92 + 8) = 3;
        *(v92 + 24) = 1;
        *(v92 + 16) = 0;
        *(v92 + v94[12]) = 0;
        v71 = v93;
        sub_1D2871808();
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D27CC818(0, v8[2] + 1, 1, v8);
        }

        v73 = v8[2];
        v98 = v8[3];
        v74 = v73 + 1;
        if (v73 >= v98 >> 1)
        {
          v8 = sub_1D27CC818(v98 > 1, v73 + 1, 1, v8);
        }

        v75 = *(v0 + 376);
LABEL_78:
        v84 = *(v0 + 368);

        v8[2] = v74;
        v48 = v8 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v73;
        v25 = v75;
LABEL_50:
        sub_1D2701854(v25, v48);
        goto LABEL_4;
      }

      v85 = *(v0 + 552);
      (*(*(v0 + 528) + 96))(v85, *(v0 + 520));
      v87 = *v85;
      v86 = v85[1];
      v88 = HIBYTE(v86) & 0xF;
      if ((v86 & 0x2000000000000000) == 0)
      {
        v88 = v87 & 0xFFFFFFFFFFFFLL;
      }

      if (v88 && !sub_1D27018B8(*(v0 + 296)))
      {
        v99 = *(v0 + 416);
        *v99 = v87;
        v99[1] = v86;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D27CC818(0, v8[2] + 1, 1, v8);
        }

        v23 = v8[2];
        v100 = v8[3];
        v24 = v23 + 1;
        if (v23 >= v100 >> 1)
        {
          v8 = sub_1D27CC818(v100 > 1, v23 + 1, 1, v8);
        }

        v25 = *(v0 + 416);
        goto LABEL_49;
      }
    }

LABEL_3:

LABEL_4:
    v5 = *(v0 + 576) + 1;
    if (v5 == *(v0 + 560))
    {
      v2 = *(v0 + 256);
      v101 = v8;
      goto LABEL_99;
    }
  }

  v140 = v8;
  v34 = *(v0 + 552);
  v137 = *(*(v0 + 528) + 96);
  v137(v34, *(v0 + 520));
  v16 = *v34;
  *(v0 + 688) = *v34;
  v17 = v34[1];
  *(v0 + 696) = v17;
  v35 = v34[3];
  if ((v17 & 0x2000000000000000) != 0)
  {
    v36 = HIBYTE(v17) & 0xF;
  }

  else
  {
    v36 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v36)
  {
LABEL_58:

    v8 = v140;
    goto LABEL_4;
  }

  v134 = v34[2];
  v37 = [objc_allocWithZone(*(v7 + 2696)) initWithUnit_];
  v38 = sub_1D2878068();
  [v37 setString_];

  *v132 = 0;
  *(swift_task_alloc() + 16) = v132;
  sub_1D2878958();

  if (*v132 < 10)
  {
    v39 = *(v0 + 424);

    *v39 = v16;
    v39[1] = v17;
    swift_storeEnumTagMultiPayload();
    v8 = v140;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1D27CC818(0, v140[2] + 1, 1, v140);
    }

    v7 = 0x1E6977000;
    v23 = v8[2];
    v40 = v8[3];
    v24 = v23 + 1;
    if (v23 >= v40 >> 1)
    {
      v8 = sub_1D27CC818(v40 > 1, v23 + 1, 1, v8);
    }

    v25 = *(v0 + 424);
    goto LABEL_49;
  }

  v108 = v35;
  if (!v35)
  {
    v116 = 0;
    do
    {
      v117 = v108;
      v142 = *(v0 + 772);
      v118 = *(v0 + 536);
      v119 = *(v0 + 520);
      sub_1D2872028();
      v120 = v13(v118, v119);
      v121 = *(v0 + 536);
      if (v120 == v142)
      {
        v122 = *(v0 + 520);

        v137(v121, v122);
        v108 = v121[1];
        v134 = *v121;
      }

      else
      {
        (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));
        v108 = v117;
      }

      ++v116;
    }

    while (v116 != *(v0 + 560));

    if (!v108)
    {
      v127 = 0;
      goto LABEL_138;
    }
  }

  *(v0 + 704) = v108;
  v107 = v134;
  if (v134 == v16)
  {
    v127 = v17;
    if (v108 == v17)
    {
      goto LABEL_138;
    }
  }

  if (sub_1D2879618())
  {
    v127 = v108;
LABEL_138:
    *(v0 + 712) = v127;
    v130 = swift_task_alloc();
    *(v0 + 720) = v130;
    *v130 = v0;
    v130[1] = sub_1D26FE5F0;
    v105 = v0 + 16;
LABEL_103:
    v106 = v16;
LABEL_130:

    return VisualSummarizationClient.summarizeContext(from:)(v105, v106, v17);
  }

  v129 = swift_task_alloc();
  *(v0 + 728) = v129;
  *v129 = v0;
  v129[1] = sub_1D26FFDC4;
  v126 = v0 + 56;
LABEL_134:

  return VisualSummarizationClient.summarizeContext(from:textualContext:)(v126, v107, v108, v16, v17);
}

uint64_t sub_1D26F8654()
{

  return MEMORY[0x1EEE6DFA0](sub_1D26F8750, 0, 0);
}

uint64_t sub_1D26F8750()
{
  v1 = *(v0 + 216);
  if (*(v0 + 240))
  {

    if (v1 && (v2 = *(v1 + 16)) != 0)
    {
      v3 = (v1 + 40);
      v4 = MEMORY[0x1E69E7CC0];
      do
      {
        v5 = *(v0 + 504);
        v6 = *v3;
        *v5 = *(v3 - 1);
        v5[1] = v6;
        swift_storeEnumTagMultiPayload();
        sub_1D2870F68();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1D27CC818(0, v4[2] + 1, 1, v4);
        }

        v8 = v4[2];
        v7 = v4[3];
        if (v8 >= v7 >> 1)
        {
          v4 = sub_1D27CC818(v7 > 1, v8 + 1, 1, v4);
        }

        v9 = *(v0 + 504);
        v10 = *(v0 + 368);
        v4[2] = v8 + 1;
        sub_1D2701854(v9, v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8);
        v3 += 2;
        --v2;
      }

      while (v2);
    }

    else
    {

      v4 = MEMORY[0x1E69E7CC0];
    }

    sub_1D274DDBC(v4);
    v23 = *(v0 + 584);
  }

  else
  {
    v11 = *(v0 + 512);

    v12 = sub_1D2691DF8(50);
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = MEMORY[0x1D38A0BC0](v12, v14, v16, v18);
    v21 = v20;

    *v11 = v19;
    v11[1] = v21;
    swift_storeEnumTagMultiPayload();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v0 + 584);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_1D27CC818(0, v23[2] + 1, 1, *(v0 + 584));
    }

    v25 = v23[2];
    v24 = v23[3];
    if (v25 >= v24 >> 1)
    {
      v23 = sub_1D27CC818(v24 > 1, v25 + 1, 1, v23);
    }

    v26 = *(v0 + 512);
    v27 = *(v0 + 368);
    v23[2] = v25 + 1;
    sub_1D2701854(v26, v23 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v25);
  }

  v28 = *(v0 + 576) + 1;
  if (v28 == *(v0 + 560))
  {
LABEL_19:
    v173 = *(v0 + 256);
    sub_1D274DDBC(v23);

    v29 = *(v0 + 8);

    return v29(v173);
  }

  v166 = (v0 + 272);
  v160 = (v0 + 280);
  v161 = (v0 + 264);
  v170 = (v0 + 288);
  while (1)
  {
    *(v0 + 584) = v23;
    *(v0 + 576) = v28;
    v34 = *(v0 + 740);
    v35 = *(v0 + 552);
    v36 = *(v0 + 528);
    v37 = *(v0 + 520);
    sub_1D2872028();
    v38 = *(v36 + 88);
    v39 = v38(v35, v37);
    if (v39 == v34)
    {
      v40 = *(v0 + 552);
      (*(*(v0 + 528) + 96))(v40, *(v0 + 520));
      v41 = *v40;
      *(v0 + 592) = *v40;
      v42 = v40[1];
      *(v0 + 600) = v42;
      if ((v42 & 0x2000000000000000) != 0)
      {
        v43 = HIBYTE(v42) & 0xF;
      }

      else
      {
        v43 = v41 & 0xFFFFFFFFFFFFLL;
      }

      if (!v43)
      {
        goto LABEL_71;
      }

      v44 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
      v45 = sub_1D2878068();
      [v44 setString_];

      *v170 = 0;
      *(swift_task_alloc() + 16) = v170;
      sub_1D2878958();

      if (*v170 >= 50)
      {
        v126 = swift_task_alloc();
        *(v0 + 608) = v126;
        *v126 = v0;
        v126[1] = sub_1D26F8654;
        v127 = v0 + 216;
        goto LABEL_118;
      }

      v46 = *(v0 + 496);
      *v46 = v41;
      v46[1] = v42;
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
      }

      v48 = v23[2];
      v47 = v23[3];
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v23 = sub_1D27CC818(v47 > 1, v48 + 1, 1, v23);
      }

      v31 = *(v0 + 496);
      goto LABEL_24;
    }

    if (v39 == *(v0 + 744))
    {
      v50 = *(v0 + 552);
      v168 = *(*(v0 + 528) + 96);
      v168(v50, *(v0 + 520));
      v51 = *v50;
      *(v0 + 640) = *v50;
      v52 = v50[1];
      *(v0 + 648) = v52;
      v53 = v50[3];
      if ((v52 & 0x2000000000000000) != 0)
      {
        v54 = HIBYTE(v52) & 0xF;
      }

      else
      {
        v54 = v51 & 0xFFFFFFFFFFFFLL;
      }

      if (!v54)
      {
        goto LABEL_70;
      }

      v55 = v23;
      v162 = v38;
      v164 = v50[2];
      v56 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
      v57 = sub_1D2878068();
      [v56 setString_];

      *v166 = 0;
      *(swift_task_alloc() + 16) = v166;
      sub_1D2878958();

      if (*v166 >= 10)
      {
        v130 = v164;
        v167 = v52;
        v131 = v53;
        if (v53)
        {
          goto LABEL_133;
        }

        v132 = 0;
        do
        {
          v171 = *(v0 + 772);
          v133 = *(v0 + 544);
          v134 = *(v0 + 520);
          sub_1D2872028();
          v135 = v162(v133, v134);
          v136 = *(v0 + 544);
          if (v135 == v171)
          {
            v137 = *(v0 + 520);

            v168(v136, v137);
            v130 = *v136;
            v131 = v136[1];
          }

          else
          {
            (*(*(v0 + 528) + 8))(*(v0 + 544), *(v0 + 520));
          }

          ++v132;
        }

        while (v132 != *(v0 + 560));

        if (v131)
        {
LABEL_133:
          *(v0 + 656) = v131;
          v146 = v167;
          if (v130 != v51 || (v147 = v167, v131 != v167))
          {
            if ((sub_1D2879618() & 1) == 0)
            {
              v149 = swift_task_alloc();
              *(v0 + 680) = v149;
              *v149 = v0;
              v149[1] = sub_1D26FCDE8;
              v150 = v0 + 136;
              v151 = v130;
              v152 = v131;
              v153 = v51;
              v154 = v167;
              goto LABEL_150;
            }

            v147 = v131;
          }
        }

        else
        {
          v147 = 0;
          v146 = v167;
        }

        *(v0 + 664) = v147;
        v157 = swift_task_alloc();
        *(v0 + 672) = v157;
        *v157 = v0;
        v157[1] = sub_1D26FB5E0;
        v127 = v0 + 96;
        v128 = v51;
        v129 = v146;
        goto LABEL_146;
      }

      v58 = *(v0 + 448);

      *v58 = v51;
      v58[1] = v52;
      swift_storeEnumTagMultiPayload();
      v23 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1D27CC818(0, v55[2] + 1, 1, v55);
      }

      v48 = v23[2];
      v59 = v23[3];
      v49 = v48 + 1;
      if (v48 >= v59 >> 1)
      {
        v23 = sub_1D27CC818(v59 > 1, v48 + 1, 1, v23);
      }

      v31 = *(v0 + 448);
      goto LABEL_24;
    }

    if (v39 == *(v0 + 748))
    {
      break;
    }

    if (v39 != *(v0 + 752))
    {
      if (v39 == *(v0 + 756))
      {
        v74 = *(v0 + 552);
        v75 = *(v0 + 408);
        v76 = *(v0 + 352);
        v78 = *(v0 + 336);
        v77 = *(v0 + 344);
        (*(*(v0 + 528) + 96))(v74, *(v0 + 520));
        (*(v77 + 32))(v76, v74, v78);
        (*(v77 + 16))(v75, v76, v78);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
        }

        v80 = v23[2];
        v79 = v23[3];
        v81 = v80 + 1;
        if (v80 >= v79 >> 1)
        {
          v23 = sub_1D27CC818(v79 > 1, v80 + 1, 1, v23);
        }

        v82 = *(v0 + 408);
        v83 = *(v0 + 368);
        v85 = *(v0 + 344);
        v84 = *(v0 + 352);
        v86 = *(v0 + 336);
      }

      else
      {
        if (v39 != *(v0 + 760))
        {
          if (v39 == *(v0 + 764))
          {
            v93 = *(v0 + 552);
            v94 = *(v0 + 392);
            (*(*(v0 + 528) + 96))(v93, *(v0 + 520));
            v95 = *v93;
            *v94 = v95;
            swift_storeEnumTagMultiPayload();
            v96 = v95;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
            }

            v98 = v23[2];
            v97 = v23[3];
            v99 = v98 + 1;
            if (v98 >= v97 >> 1)
            {
              v23 = sub_1D27CC818(v97 > 1, v98 + 1, 1, v23);
            }

            v100 = *(v0 + 392);
          }

          else if (v39 == *(v0 + 768))
          {
            v101 = *(v0 + 552);
            v102 = *(v0 + 384);
            (*(*(v0 + 528) + 96))(v101, *(v0 + 520));
            v103 = *v101;
            v104 = type metadata accessor for PlaygroundImage();
            v105 = (v102 + v104[9]);
            *v105 = 0u;
            v105[1] = 0u;
            *(v102 + v104[10]) = xmmword_1D28809A0;
            v106 = v104[11];
            v107 = sub_1D2873AA8();
            (*(*(v107 - 8) + 56))(v102 + v106, 1, 1, v107);
            *v102 = v103;
            *(v102 + 8) = 0;
            *(v102 + 24) = 1;
            *(v102 + 16) = 0;
            *(v102 + 32) = 0;
            *(v102 + 40) = 0;
            *(v102 + v104[12]) = 0;
            v96 = v103;
            sub_1D2871808();
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
            }

            v98 = v23[2];
            v108 = v23[3];
            v99 = v98 + 1;
            if (v98 >= v108 >> 1)
            {
              v23 = sub_1D27CC818(v108 > 1, v98 + 1, 1, v23);
            }

            v100 = *(v0 + 384);
          }

          else
          {
            if (v39 == *(v0 + 772))
            {
              v110 = *(v0 + 552);
              (*(*(v0 + 528) + 96))(v110, *(v0 + 520));
              v112 = *v110;
              v111 = v110[1];
              v113 = HIBYTE(v111) & 0xF;
              if ((v111 & 0x2000000000000000) == 0)
              {
                v113 = v112 & 0xFFFFFFFFFFFFLL;
              }

              if (!v113 || sub_1D27018B8(*(v0 + 296)))
              {
                goto LABEL_71;
              }

              v124 = *(v0 + 416);
              *v124 = v112;
              v124[1] = v111;
              swift_storeEnumTagMultiPayload();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
              }

              v48 = v23[2];
              v125 = v23[3];
              v49 = v48 + 1;
              if (v48 >= v125 >> 1)
              {
                v23 = sub_1D27CC818(v125 > 1, v48 + 1, 1, v23);
              }

              v31 = *(v0 + 416);
              goto LABEL_24;
            }

            v114 = *(v0 + 552);
            v115 = *(v0 + 528);
            v116 = *(v0 + 520);
            if (v39 != *(v0 + 776))
            {
              (*(v115 + 8))(*(v0 + 552), v116);
              goto LABEL_26;
            }

            v117 = *(v0 + 376);
            (*(v115 + 96))(*(v0 + 552), v116);
            v118 = *v114;
            v119 = type metadata accessor for PlaygroundImage();
            *(v117 + 32) = 0;
            *(v117 + 40) = 0;
            v120 = (v117 + v119[9]);
            *v120 = 0u;
            v120[1] = 0u;
            *(v117 + v119[10]) = xmmword_1D28809A0;
            v121 = v119[11];
            v122 = sub_1D2873AA8();
            (*(*(v122 - 8) + 56))(v117 + v121, 1, 1, v122);
            *v117 = v118;
            *(v117 + 8) = 3;
            *(v117 + 24) = 1;
            *(v117 + 16) = 0;
            *(v117 + v119[12]) = 0;
            v96 = v118;
            sub_1D2871808();
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
            }

            v98 = v23[2];
            v123 = v23[3];
            v99 = v98 + 1;
            if (v98 >= v123 >> 1)
            {
              v23 = sub_1D27CC818(v123 > 1, v98 + 1, 1, v23);
            }

            v100 = *(v0 + 376);
          }

          v109 = *(v0 + 368);

          v23[2] = v99;
          v33 = v23 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v98;
          v31 = v100;
          goto LABEL_25;
        }

        v87 = *(v0 + 552);
        v88 = *(v0 + 400);
        v89 = *(v0 + 320);
        v90 = *(v0 + 328);
        v91 = *(v0 + 312);
        (*(*(v0 + 528) + 96))(v87, *(v0 + 520));
        (*(v89 + 32))(v90, v87, v91);
        (*(v89 + 16))(v88, v90, v91);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
        }

        v80 = v23[2];
        v92 = v23[3];
        v81 = v80 + 1;
        if (v80 >= v92 >> 1)
        {
          v23 = sub_1D27CC818(v92 > 1, v80 + 1, 1, v23);
        }

        v82 = *(v0 + 400);
        v83 = *(v0 + 368);
        v85 = *(v0 + 320);
        v84 = *(v0 + 328);
        v86 = *(v0 + 312);
      }

      (*(v85 + 8))(v84, v86);
      v23[2] = v81;
      v33 = v23 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v80;
      v31 = v82;
      goto LABEL_25;
    }

    v68 = *(v0 + 552);
    (*(*(v0 + 528) + 96))(v68, *(v0 + 520));
    v41 = *v68;
    *(v0 + 616) = *v68;
    v42 = v68[1];
    *(v0 + 624) = v42;
    if ((v42 & 0x2000000000000000) != 0)
    {
      v69 = HIBYTE(v42) & 0xF;
    }

    else
    {
      v69 = v41 & 0xFFFFFFFFFFFFLL;
    }

    if (!v69)
    {
      goto LABEL_71;
    }

    v70 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
    v71 = sub_1D2878068();
    [v70 setString_];

    *v160 = 0;
    *(swift_task_alloc() + 16) = v160;
    sub_1D2878958();

    if (*v160 >= 50)
    {
      v148 = swift_task_alloc();
      *(v0 + 632) = v148;
      *v148 = v0;
      v148[1] = sub_1D26F9E18;
      v127 = v0 + 176;
LABEL_118:
      v128 = v41;
LABEL_119:
      v129 = v42;
LABEL_146:

      return VisualSummarizationClient.summarizeContext(from:)(v127, v128, v129);
    }

    v72 = *(v0 + 472);
    *v72 = v41;
    v72[1] = v42;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
    }

    v48 = v23[2];
    v73 = v23[3];
    v49 = v48 + 1;
    if (v48 >= v73 >> 1)
    {
      v23 = sub_1D27CC818(v73 > 1, v48 + 1, 1, v23);
    }

    v31 = *(v0 + 472);
LABEL_24:
    v32 = *(v0 + 368);
    v23[2] = v49;
    v33 = v23 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v48;
LABEL_25:
    sub_1D2701854(v31, v33);
LABEL_26:
    v28 = *(v0 + 576) + 1;
    if (v28 == *(v0 + 560))
    {
      goto LABEL_19;
    }
  }

  v60 = *(v0 + 552);
  v165 = *(*(v0 + 528) + 96);
  v165(v60, *(v0 + 520));
  v61 = *v60;
  *(v0 + 688) = *v60;
  v42 = v60[1];
  *(v0 + 696) = v42;
  if ((v42 & 0x2000000000000000) != 0)
  {
    v62 = HIBYTE(v42) & 0xF;
  }

  else
  {
    v62 = v61 & 0xFFFFFFFFFFFFLL;
  }

  if (!v62)
  {
LABEL_70:

LABEL_71:

    goto LABEL_26;
  }

  v169 = v60[3];
  v63 = v23;
  v163 = v60[2];
  v64 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
  v65 = sub_1D2878068();
  [v64 setString_];

  *v161 = 0;
  *(swift_task_alloc() + 16) = v161;
  sub_1D2878958();

  if (*v161 < 10)
  {
    v66 = *(v0 + 424);

    *v66 = v61;
    v66[1] = v42;
    swift_storeEnumTagMultiPayload();
    v23 = v63;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1D27CC818(0, v63[2] + 1, 1, v63);
    }

    v48 = v23[2];
    v67 = v23[3];
    v49 = v48 + 1;
    if (v48 >= v67 >> 1)
    {
      v23 = sub_1D27CC818(v67 > 1, v48 + 1, 1, v23);
    }

    v31 = *(v0 + 424);
    goto LABEL_24;
  }

  v138 = v163;
  v172 = v61;
  if (!v169)
  {
    v169 = 0;
    v139 = 0;
    do
    {
      v140 = *(v0 + 772);
      v141 = *(v0 + 536);
      v142 = *(v0 + 520);
      sub_1D2872028();
      v143 = v38(v141, v142);
      v144 = *(v0 + 536);
      if (v143 == v140)
      {
        v145 = *(v0 + 520);

        v165(v144, v145);
        v138 = *v144;
        v169 = v144[1];
      }

      else
      {
        (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));
      }

      ++v139;
    }

    while (v139 != *(v0 + 560));

    v155 = v169;
    if (!v169)
    {
      v156 = v172;
      goto LABEL_154;
    }
  }

  v156 = v172;
  *(v0 + 704) = v169;
  if (v138 == v172)
  {
    v155 = v42;
    if (v169 == v42)
    {
      goto LABEL_154;
    }
  }

  if (sub_1D2879618())
  {
    v155 = v169;
LABEL_154:
    *(v0 + 712) = v155;
    v159 = swift_task_alloc();
    *(v0 + 720) = v159;
    *v159 = v0;
    v159[1] = sub_1D26FE5F0;
    v127 = v0 + 16;
    v128 = v156;
    goto LABEL_119;
  }

  v158 = swift_task_alloc();
  *(v0 + 728) = v158;
  *v158 = v0;
  v158[1] = sub_1D26FFDC4;
  v150 = v0 + 56;
  v151 = v138;
  v152 = v169;
  v153 = v172;
  v154 = v42;
LABEL_150:

  return VisualSummarizationClient.summarizeContext(from:textualContext:)(v150, v151, v152, v153, v154);
}

uint64_t sub_1D26F9E18()
{

  return MEMORY[0x1EEE6DFA0](sub_1D26F9F14, 0, 0);
}

uint64_t sub_1D26F9F14()
{
  v1 = *(v0 + 176);
  if (*(v0 + 200))
  {

    if (v1 && (v2 = *(v1 + 16)) != 0)
    {
      v3 = (v1 + 40);
      v4 = MEMORY[0x1E69E7CC0];
      do
      {
        v5 = *(v0 + 480);
        v6 = *v3;
        *v5 = *(v3 - 1);
        v5[1] = v6;
        swift_storeEnumTagMultiPayload();
        sub_1D2870F68();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1D27CC818(0, v4[2] + 1, 1, v4);
        }

        v8 = v4[2];
        v7 = v4[3];
        if (v8 >= v7 >> 1)
        {
          v4 = sub_1D27CC818(v7 > 1, v8 + 1, 1, v4);
        }

        v9 = *(v0 + 480);
        v10 = *(v0 + 368);
        v4[2] = v8 + 1;
        sub_1D2701854(v9, v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8);
        v3 += 2;
        --v2;
      }

      while (v2);
    }

    else
    {

      v4 = MEMORY[0x1E69E7CC0];
    }

    sub_1D274DDBC(v4);
    v23 = *(v0 + 584);
  }

  else
  {
    v11 = *(v0 + 488);

    v12 = sub_1D2691DF8(50);
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = MEMORY[0x1D38A0BC0](v12, v14, v16, v18);
    v21 = v20;

    *v11 = v19;
    v11[1] = v21;
    swift_storeEnumTagMultiPayload();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v0 + 584);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_1D27CC818(0, v23[2] + 1, 1, *(v0 + 584));
    }

    v25 = v23[2];
    v24 = v23[3];
    if (v25 >= v24 >> 1)
    {
      v23 = sub_1D27CC818(v24 > 1, v25 + 1, 1, v23);
    }

    v26 = *(v0 + 488);
    v27 = *(v0 + 368);
    v23[2] = v25 + 1;
    sub_1D2701854(v26, v23 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v25);
  }

  v28 = *(v0 + 576) + 1;
  if (v28 == *(v0 + 560))
  {
LABEL_19:
    v173 = *(v0 + 256);
    sub_1D274DDBC(v23);

    v29 = *(v0 + 8);

    return v29(v173);
  }

  v161 = (v0 + 264);
  v166 = (v0 + 272);
  v160 = (v0 + 280);
  v170 = (v0 + 288);
  while (1)
  {
    *(v0 + 584) = v23;
    *(v0 + 576) = v28;
    v34 = *(v0 + 740);
    v35 = *(v0 + 552);
    v36 = *(v0 + 528);
    v37 = *(v0 + 520);
    sub_1D2872028();
    v38 = *(v36 + 88);
    v39 = v38(v35, v37);
    if (v39 == v34)
    {
      v40 = *(v0 + 552);
      (*(*(v0 + 528) + 96))(v40, *(v0 + 520));
      v41 = *v40;
      *(v0 + 592) = *v40;
      v42 = v40[1];
      *(v0 + 600) = v42;
      if ((v42 & 0x2000000000000000) != 0)
      {
        v43 = HIBYTE(v42) & 0xF;
      }

      else
      {
        v43 = v41 & 0xFFFFFFFFFFFFLL;
      }

      if (!v43)
      {
        goto LABEL_71;
      }

      v44 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
      v45 = sub_1D2878068();
      [v44 setString_];

      *v170 = 0;
      *(swift_task_alloc() + 16) = v170;
      sub_1D2878958();

      if (*v170 >= 50)
      {
        v126 = swift_task_alloc();
        *(v0 + 608) = v126;
        *v126 = v0;
        v126[1] = sub_1D26F8654;
        v127 = v0 + 216;
        goto LABEL_118;
      }

      v46 = *(v0 + 496);
      *v46 = v41;
      v46[1] = v42;
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
      }

      v48 = v23[2];
      v47 = v23[3];
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v23 = sub_1D27CC818(v47 > 1, v48 + 1, 1, v23);
      }

      v31 = *(v0 + 496);
      goto LABEL_24;
    }

    if (v39 == *(v0 + 744))
    {
      v50 = *(v0 + 552);
      v168 = *(*(v0 + 528) + 96);
      v168(v50, *(v0 + 520));
      v51 = *v50;
      *(v0 + 640) = *v50;
      v52 = v50[1];
      *(v0 + 648) = v52;
      v53 = v50[3];
      if ((v52 & 0x2000000000000000) != 0)
      {
        v54 = HIBYTE(v52) & 0xF;
      }

      else
      {
        v54 = v51 & 0xFFFFFFFFFFFFLL;
      }

      if (!v54)
      {
        goto LABEL_70;
      }

      v55 = v23;
      v162 = v38;
      v164 = v50[2];
      v56 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
      v57 = sub_1D2878068();
      [v56 setString_];

      *v166 = 0;
      *(swift_task_alloc() + 16) = v166;
      sub_1D2878958();

      if (*v166 >= 10)
      {
        v130 = v164;
        v167 = v52;
        v131 = v53;
        if (v53)
        {
          goto LABEL_133;
        }

        v132 = 0;
        do
        {
          v171 = *(v0 + 772);
          v133 = *(v0 + 544);
          v134 = *(v0 + 520);
          sub_1D2872028();
          v135 = v162(v133, v134);
          v136 = *(v0 + 544);
          if (v135 == v171)
          {
            v137 = *(v0 + 520);

            v168(v136, v137);
            v130 = *v136;
            v131 = v136[1];
          }

          else
          {
            (*(*(v0 + 528) + 8))(*(v0 + 544), *(v0 + 520));
          }

          ++v132;
        }

        while (v132 != *(v0 + 560));

        if (v131)
        {
LABEL_133:
          *(v0 + 656) = v131;
          v146 = v167;
          if (v130 != v51 || (v147 = v167, v131 != v167))
          {
            if ((sub_1D2879618() & 1) == 0)
            {
              v149 = swift_task_alloc();
              *(v0 + 680) = v149;
              *v149 = v0;
              v149[1] = sub_1D26FCDE8;
              v150 = v0 + 136;
              v151 = v130;
              v152 = v131;
              v153 = v51;
              v154 = v167;
              goto LABEL_150;
            }

            v147 = v131;
          }
        }

        else
        {
          v147 = 0;
          v146 = v167;
        }

        *(v0 + 664) = v147;
        v157 = swift_task_alloc();
        *(v0 + 672) = v157;
        *v157 = v0;
        v157[1] = sub_1D26FB5E0;
        v127 = v0 + 96;
        v128 = v51;
        v129 = v146;
        goto LABEL_146;
      }

      v58 = *(v0 + 448);

      *v58 = v51;
      v58[1] = v52;
      swift_storeEnumTagMultiPayload();
      v23 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1D27CC818(0, v55[2] + 1, 1, v55);
      }

      v48 = v23[2];
      v59 = v23[3];
      v49 = v48 + 1;
      if (v48 >= v59 >> 1)
      {
        v23 = sub_1D27CC818(v59 > 1, v48 + 1, 1, v23);
      }

      v31 = *(v0 + 448);
      goto LABEL_24;
    }

    if (v39 == *(v0 + 748))
    {
      break;
    }

    if (v39 != *(v0 + 752))
    {
      if (v39 == *(v0 + 756))
      {
        v74 = *(v0 + 552);
        v75 = *(v0 + 408);
        v76 = *(v0 + 352);
        v78 = *(v0 + 336);
        v77 = *(v0 + 344);
        (*(*(v0 + 528) + 96))(v74, *(v0 + 520));
        (*(v77 + 32))(v76, v74, v78);
        (*(v77 + 16))(v75, v76, v78);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
        }

        v80 = v23[2];
        v79 = v23[3];
        v81 = v80 + 1;
        if (v80 >= v79 >> 1)
        {
          v23 = sub_1D27CC818(v79 > 1, v80 + 1, 1, v23);
        }

        v82 = *(v0 + 408);
        v83 = *(v0 + 368);
        v85 = *(v0 + 344);
        v84 = *(v0 + 352);
        v86 = *(v0 + 336);
      }

      else
      {
        if (v39 != *(v0 + 760))
        {
          if (v39 == *(v0 + 764))
          {
            v93 = *(v0 + 552);
            v94 = *(v0 + 392);
            (*(*(v0 + 528) + 96))(v93, *(v0 + 520));
            v95 = *v93;
            *v94 = v95;
            swift_storeEnumTagMultiPayload();
            v96 = v95;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
            }

            v98 = v23[2];
            v97 = v23[3];
            v99 = v98 + 1;
            if (v98 >= v97 >> 1)
            {
              v23 = sub_1D27CC818(v97 > 1, v98 + 1, 1, v23);
            }

            v100 = *(v0 + 392);
          }

          else if (v39 == *(v0 + 768))
          {
            v101 = *(v0 + 552);
            v102 = *(v0 + 384);
            (*(*(v0 + 528) + 96))(v101, *(v0 + 520));
            v103 = *v101;
            v104 = type metadata accessor for PlaygroundImage();
            v105 = (v102 + v104[9]);
            *v105 = 0u;
            v105[1] = 0u;
            *(v102 + v104[10]) = xmmword_1D28809A0;
            v106 = v104[11];
            v107 = sub_1D2873AA8();
            (*(*(v107 - 8) + 56))(v102 + v106, 1, 1, v107);
            *v102 = v103;
            *(v102 + 8) = 0;
            *(v102 + 24) = 1;
            *(v102 + 16) = 0;
            *(v102 + 32) = 0;
            *(v102 + 40) = 0;
            *(v102 + v104[12]) = 0;
            v96 = v103;
            sub_1D2871808();
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
            }

            v98 = v23[2];
            v108 = v23[3];
            v99 = v98 + 1;
            if (v98 >= v108 >> 1)
            {
              v23 = sub_1D27CC818(v108 > 1, v98 + 1, 1, v23);
            }

            v100 = *(v0 + 384);
          }

          else
          {
            if (v39 == *(v0 + 772))
            {
              v110 = *(v0 + 552);
              (*(*(v0 + 528) + 96))(v110, *(v0 + 520));
              v112 = *v110;
              v111 = v110[1];
              v113 = HIBYTE(v111) & 0xF;
              if ((v111 & 0x2000000000000000) == 0)
              {
                v113 = v112 & 0xFFFFFFFFFFFFLL;
              }

              if (!v113 || sub_1D27018B8(*(v0 + 296)))
              {
                goto LABEL_71;
              }

              v124 = *(v0 + 416);
              *v124 = v112;
              v124[1] = v111;
              swift_storeEnumTagMultiPayload();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
              }

              v48 = v23[2];
              v125 = v23[3];
              v49 = v48 + 1;
              if (v48 >= v125 >> 1)
              {
                v23 = sub_1D27CC818(v125 > 1, v48 + 1, 1, v23);
              }

              v31 = *(v0 + 416);
              goto LABEL_24;
            }

            v114 = *(v0 + 552);
            v115 = *(v0 + 528);
            v116 = *(v0 + 520);
            if (v39 != *(v0 + 776))
            {
              (*(v115 + 8))(*(v0 + 552), v116);
              goto LABEL_26;
            }

            v117 = *(v0 + 376);
            (*(v115 + 96))(*(v0 + 552), v116);
            v118 = *v114;
            v119 = type metadata accessor for PlaygroundImage();
            *(v117 + 32) = 0;
            *(v117 + 40) = 0;
            v120 = (v117 + v119[9]);
            *v120 = 0u;
            v120[1] = 0u;
            *(v117 + v119[10]) = xmmword_1D28809A0;
            v121 = v119[11];
            v122 = sub_1D2873AA8();
            (*(*(v122 - 8) + 56))(v117 + v121, 1, 1, v122);
            *v117 = v118;
            *(v117 + 8) = 3;
            *(v117 + 24) = 1;
            *(v117 + 16) = 0;
            *(v117 + v119[12]) = 0;
            v96 = v118;
            sub_1D2871808();
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
            }

            v98 = v23[2];
            v123 = v23[3];
            v99 = v98 + 1;
            if (v98 >= v123 >> 1)
            {
              v23 = sub_1D27CC818(v123 > 1, v98 + 1, 1, v23);
            }

            v100 = *(v0 + 376);
          }

          v109 = *(v0 + 368);

          v23[2] = v99;
          v33 = v23 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v98;
          v31 = v100;
          goto LABEL_25;
        }

        v87 = *(v0 + 552);
        v88 = *(v0 + 400);
        v89 = *(v0 + 320);
        v90 = *(v0 + 328);
        v91 = *(v0 + 312);
        (*(*(v0 + 528) + 96))(v87, *(v0 + 520));
        (*(v89 + 32))(v90, v87, v91);
        (*(v89 + 16))(v88, v90, v91);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
        }

        v80 = v23[2];
        v92 = v23[3];
        v81 = v80 + 1;
        if (v80 >= v92 >> 1)
        {
          v23 = sub_1D27CC818(v92 > 1, v80 + 1, 1, v23);
        }

        v82 = *(v0 + 400);
        v83 = *(v0 + 368);
        v85 = *(v0 + 320);
        v84 = *(v0 + 328);
        v86 = *(v0 + 312);
      }

      (*(v85 + 8))(v84, v86);
      v23[2] = v81;
      v33 = v23 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v80;
      v31 = v82;
      goto LABEL_25;
    }

    v68 = *(v0 + 552);
    (*(*(v0 + 528) + 96))(v68, *(v0 + 520));
    v41 = *v68;
    *(v0 + 616) = *v68;
    v42 = v68[1];
    *(v0 + 624) = v42;
    if ((v42 & 0x2000000000000000) != 0)
    {
      v69 = HIBYTE(v42) & 0xF;
    }

    else
    {
      v69 = v41 & 0xFFFFFFFFFFFFLL;
    }

    if (!v69)
    {
      goto LABEL_71;
    }

    v70 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
    v71 = sub_1D2878068();
    [v70 setString_];

    *v160 = 0;
    *(swift_task_alloc() + 16) = v160;
    sub_1D2878958();

    if (*v160 >= 50)
    {
      v148 = swift_task_alloc();
      *(v0 + 632) = v148;
      *v148 = v0;
      v148[1] = sub_1D26F9E18;
      v127 = v0 + 176;
LABEL_118:
      v128 = v41;
LABEL_119:
      v129 = v42;
LABEL_146:

      return VisualSummarizationClient.summarizeContext(from:)(v127, v128, v129);
    }

    v72 = *(v0 + 472);
    *v72 = v41;
    v72[1] = v42;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
    }

    v48 = v23[2];
    v73 = v23[3];
    v49 = v48 + 1;
    if (v48 >= v73 >> 1)
    {
      v23 = sub_1D27CC818(v73 > 1, v48 + 1, 1, v23);
    }

    v31 = *(v0 + 472);
LABEL_24:
    v32 = *(v0 + 368);
    v23[2] = v49;
    v33 = v23 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v48;
LABEL_25:
    sub_1D2701854(v31, v33);
LABEL_26:
    v28 = *(v0 + 576) + 1;
    if (v28 == *(v0 + 560))
    {
      goto LABEL_19;
    }
  }

  v60 = *(v0 + 552);
  v165 = *(*(v0 + 528) + 96);
  v165(v60, *(v0 + 520));
  v61 = *v60;
  *(v0 + 688) = *v60;
  v42 = v60[1];
  *(v0 + 696) = v42;
  if ((v42 & 0x2000000000000000) != 0)
  {
    v62 = HIBYTE(v42) & 0xF;
  }

  else
  {
    v62 = v61 & 0xFFFFFFFFFFFFLL;
  }

  if (!v62)
  {
LABEL_70:

LABEL_71:

    goto LABEL_26;
  }

  v169 = v60[3];
  v63 = v23;
  v163 = v60[2];
  v64 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
  v65 = sub_1D2878068();
  [v64 setString_];

  *v161 = 0;
  *(swift_task_alloc() + 16) = v161;
  sub_1D2878958();

  if (*v161 < 10)
  {
    v66 = *(v0 + 424);

    *v66 = v61;
    v66[1] = v42;
    swift_storeEnumTagMultiPayload();
    v23 = v63;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1D27CC818(0, v63[2] + 1, 1, v63);
    }

    v48 = v23[2];
    v67 = v23[3];
    v49 = v48 + 1;
    if (v48 >= v67 >> 1)
    {
      v23 = sub_1D27CC818(v67 > 1, v48 + 1, 1, v23);
    }

    v31 = *(v0 + 424);
    goto LABEL_24;
  }

  v138 = v163;
  v172 = v61;
  if (!v169)
  {
    v169 = 0;
    v139 = 0;
    do
    {
      v140 = *(v0 + 772);
      v141 = *(v0 + 536);
      v142 = *(v0 + 520);
      sub_1D2872028();
      v143 = v38(v141, v142);
      v144 = *(v0 + 536);
      if (v143 == v140)
      {
        v145 = *(v0 + 520);

        v165(v144, v145);
        v138 = *v144;
        v169 = v144[1];
      }

      else
      {
        (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));
      }

      ++v139;
    }

    while (v139 != *(v0 + 560));

    v155 = v169;
    if (!v169)
    {
      v156 = v172;
      goto LABEL_154;
    }
  }

  v156 = v172;
  *(v0 + 704) = v169;
  if (v138 == v172)
  {
    v155 = v42;
    if (v169 == v42)
    {
      goto LABEL_154;
    }
  }

  if (sub_1D2879618())
  {
    v155 = v169;
LABEL_154:
    *(v0 + 712) = v155;
    v159 = swift_task_alloc();
    *(v0 + 720) = v159;
    *v159 = v0;
    v159[1] = sub_1D26FE5F0;
    v127 = v0 + 16;
    v128 = v156;
    goto LABEL_119;
  }

  v158 = swift_task_alloc();
  *(v0 + 728) = v158;
  *v158 = v0;
  v158[1] = sub_1D26FFDC4;
  v150 = v0 + 56;
  v151 = v138;
  v152 = v169;
  v153 = v172;
  v154 = v42;
LABEL_150:

  return VisualSummarizationClient.summarizeContext(from:textualContext:)(v150, v151, v152, v153, v154);
}