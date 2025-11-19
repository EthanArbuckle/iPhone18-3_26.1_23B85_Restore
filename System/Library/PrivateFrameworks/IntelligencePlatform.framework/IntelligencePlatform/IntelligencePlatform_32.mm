void sub_1ABCDC8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v176 = a6;
  v177 = a5;
  v178 = a4;
  v11 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v169 - v13;
  v15 = sub_1ABF21EB4();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v174 = a8;
  v175 = a7;
  v169 = &v169 - v19;
  v170 = v20;
  v171 = v21;
  v172 = v14;
  v173 = v18;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    __break(1u);
LABEL_134:

LABEL_135:
    *(v192 + 10) = *(v179 + 82);
    v85 = *(v179 + 56);
    v190 = *(v179 + 40);
    v191 = v85;
    v192[0] = *(v179 + 72);
    if (!BYTE9(v192[1]))
    {
      goto LABEL_126;
    }

    goto LABEL_121;
  }

  v22 = *(a1 + 16);
  v197[0] = *a1;
  v197[1] = v22;
  *&v179 = a1;
  v198 = *(a1 + 32);
  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), v184);
  v23 = v197[0];
  if (*&v184[0] == *&v197[0] && *(&v184[0] + 1) == *(&v197[0] + 1))
  {

LABEL_84:
    v50 = v179;
    *(v192 + 10) = *(v179 + 82);
    v51 = *(v179 + 56);
    v190 = *(v179 + 40);
    v191 = v51;
    v192[0] = *(v179 + 72);
    if (BYTE9(v192[1]))
    {
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v52 = sub_1ABF237F4();
      sub_1ABA7AA24(v52, qword_1ED871B40);
      sub_1ABAE2EC4();
      sub_1ABAE2EC4();
      v53 = sub_1ABF237D4();
      v54 = sub_1ABF24664();
      if (!os_log_type_enabled(v53, v54))
      {
        goto LABEL_98;
      }

      goto LABEL_88;
    }

    goto LABEL_90;
  }

  v25 = sub_1ABF25054();

  if (v25)
  {
    goto LABEL_84;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_138:

LABEL_139:
    *(v192 + 10) = *(v179 + 82);
    v86 = *(v179 + 56);
    v190 = *(v179 + 40);
    v191 = v86;
    v192[0] = *(v179 + 72);
    if (!BYTE9(v192[1]))
    {
      goto LABEL_126;
    }

    goto LABEL_121;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[720], *(_Records_GDEntityPredicate_records + 181), *(_Records_GDEntityPredicate_records + 182), v184);
  if (*&v184[0] == v23 && *(&v184[0] + 1) == *(&v23 + 1))
  {

LABEL_94:
    v50 = v179;
    *(v192 + 10) = *(v179 + 82);
    v65 = *(v179 + 56);
    v190 = *(v179 + 40);
    v191 = v65;
    v192[0] = *(v179 + 72);
    if (BYTE9(v192[1]))
    {
      goto LABEL_95;
    }

LABEL_90:
    v62 = *(&v190 + 1);
    v61 = v190;
    swift_beginAccess();
    sub_1ABAE2EC4();
LABEL_91:
    v63 = v61;
    v64 = v62;
LABEL_92:
    sub_1ABB456EC(v63, v64);
    swift_endAccess();
    return;
  }

  v27 = sub_1ABF25054();

  if (v27)
  {
    goto LABEL_94;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    __break(1u);
LABEL_142:

    goto LABEL_143;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[732], *(_Records_GDEntityPredicate_records + 184), *(_Records_GDEntityPredicate_records + 185), v184);
  if (*&v184[0] == v23 && *(&v184[0] + 1) == *(&v23 + 1))
  {

LABEL_104:
    v50 = v179;
    *(v192 + 10) = *(v179 + 82);
    v70 = *(v179 + 56);
    v190 = *(v179 + 40);
    v191 = v70;
    v192[0] = *(v179 + 72);
    if (!BYTE9(v192[1]))
    {
      v71 = v190;
      swift_beginAccess();
      sub_1ABAE2EC4();
      v64 = *(&v71 + 1);
      v63 = v71;
      goto LABEL_92;
    }

    goto LABEL_95;
  }

  v29 = sub_1ABF25054();

  if (v29)
  {
    goto LABEL_104;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_151;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2592], *(_Records_GDEntityPredicate_records + 649), *(_Records_GDEntityPredicate_records + 650), v184);
  if (*&v184[0] == v23 && *(&v184[0] + 1) == *(&v23 + 1))
  {

    goto LABEL_107;
  }

  v29 = sub_1ABF25054();

  if (v29)
  {
LABEL_107:
    v50 = v179;
    *(v192 + 10) = *(v179 + 82);
    v72 = *(v179 + 56);
    v190 = *(v179 + 40);
    v191 = v72;
    v192[0] = *(v179 + 72);
    if (BYTE9(v192[1]))
    {
      goto LABEL_95;
    }

    v62 = *(&v190 + 1);
    v61 = v190;
    goto LABEL_109;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_156;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[744], *(_Records_GDEntityPredicate_records + 187), *(_Records_GDEntityPredicate_records + 188), v184);
  v29 = *(&v184[0] + 1);
  if (*&v184[0] == v23 && *(&v184[0] + 1) == *(&v23 + 1))
  {

    goto LABEL_111;
  }

  v32 = sub_1ABF25054();

  if (v32)
  {
LABEL_111:
    v50 = v179;
    *(v192 + 10) = *(v179 + 82);
    v73 = *(v179 + 56);
    v190 = *(v179 + 40);
    v191 = v73;
    v192[0] = *(v179 + 72);
    if (BYTE9(v192[1]))
    {
      goto LABEL_95;
    }

    v62 = *(&v190 + 1);
    v61 = v190;
    goto LABEL_109;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_166;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2604], *(_Records_GDEntityPredicate_records + 652), *(_Records_GDEntityPredicate_records + 653), v184);
  v29 = *(&v184[0] + 1);
  if (*&v184[0] == v23 && *(&v184[0] + 1) == *(&v23 + 1))
  {

    goto LABEL_114;
  }

  v34 = sub_1ABF25054();

  if (v34)
  {
LABEL_114:
    v50 = v179;
    *(v192 + 10) = *(v179 + 82);
    v74 = *(v179 + 56);
    v190 = *(v179 + 40);
    v191 = v74;
    v192[0] = *(v179 + 72);
    if (BYTE9(v192[1]))
    {
      goto LABEL_95;
    }

    v62 = *(&v190 + 1);
    v61 = v190;
LABEL_109:
    swift_beginAccess();
    sub_1ABAE2EC4();
    goto LABEL_91;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_179;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[756], *(_Records_GDEntityPredicate_records + 190), *(_Records_GDEntityPredicate_records + 191), v184);
  v29 = *(&v184[0] + 1);
  if (*&v184[0] == v23 && *(&v184[0] + 1) == *(&v23 + 1))
  {

LABEL_117:
    v50 = v179;
    *(v192 + 10) = *(v179 + 82);
    v75 = *(v179 + 56);
    v190 = *(v179 + 40);
    v191 = v75;
    v192[0] = *(v179 + 72);
    if (!BYTE9(v192[1]))
    {
      v62 = *(&v190 + 1);
      v61 = v190;
      goto LABEL_109;
    }

LABEL_95:
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v66 = sub_1ABF237F4();
    sub_1ABA7AA24(v66, qword_1ED871B40);
    sub_1ABAE2EC4();
    sub_1ABAE2EC4();
    v53 = sub_1ABF237D4();
    v54 = sub_1ABF24664();
    if (!os_log_type_enabled(v53, v54))
    {
LABEL_98:

      sub_1ABAB480C(v50, &qword_1EB4D1148, &qword_1ABF332D0);
      v67 = v50;
LABEL_99:
      v68 = &qword_1EB4D1148;
      v69 = &qword_1ABF332D0;
LABEL_100:
      sub_1ABAB480C(v67, v68, v69);
      return;
    }

LABEL_88:
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *&v185 = v56;
    *v55 = 136642819;
    memcpy(v184, v50, 0x62uLL);
    sub_1ABAE2EC4();
    sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
    v57 = sub_1ABF23C94();
    v59 = sub_1ABADD6D8(v57, v58, &v185);

    *(v55 + 4) = v59;
    sub_1ABAB480C(v50, &qword_1EB4D1148, &qword_1ABF332D0);
    v60 = v50;
LABEL_89:
    sub_1ABAB480C(v60, &qword_1EB4D1148, &qword_1ABF332D0);
    _os_log_impl(&dword_1ABA78000, v53, v54, "Failed to parse %{sensitive}s.", v55, 0xCu);
    sub_1ABA84B54(v56);
    MEMORY[0x1AC5AB8B0](v56, -1, -1);
    MEMORY[0x1AC5AB8B0](v55, -1, -1);

    return;
  }

  v36 = sub_1ABF25054();

  if (v36)
  {
    goto LABEL_117;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_191;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2616], *(_Records_GDEntityPredicate_records + 655), *(_Records_GDEntityPredicate_records + 656), v184);
  if (*&v184[0] == v23 && *(&v184[0] + 1) == *(&v23 + 1))
  {

LABEL_120:
    *(v192 + 10) = *(v179 + 82);
    v76 = *(v179 + 56);
    v190 = *(v179 + 40);
    v191 = v76;
    v192[0] = *(v179 + 72);
    if (!BYTE9(v192[1]))
    {
LABEL_126:
      v62 = *(&v190 + 1);
      v61 = v190;
      goto LABEL_109;
    }

LABEL_121:
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v77 = sub_1ABF237F4();
    sub_1ABA7AA24(v77, qword_1ED871B40);
    sub_1ABAE2EC4();
    sub_1ABAE2EC4();
    v53 = sub_1ABF237D4();
    v54 = sub_1ABF24664();
    if (os_log_type_enabled(v53, v54))
    {
      goto LABEL_124;
    }

    goto LABEL_215;
  }

  v38 = sub_1ABF25054();

  if (v38)
  {
    goto LABEL_120;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_208;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[864], *(_Records_GDEntityPredicate_records + 217), *(_Records_GDEntityPredicate_records + 218), v184);
  if (*&v184[0] == v23 && *(&v184[0] + 1) == *(&v23 + 1))
  {

LABEL_128:
    *(v192 + 10) = *(v179 + 82);
    v83 = *(v179 + 56);
    v190 = *(v179 + 40);
    v191 = v83;
    v192[0] = *(v179 + 72);
    if (!BYTE9(v192[1]))
    {
      goto LABEL_126;
    }

    goto LABEL_121;
  }

  v38 = sub_1ABF25054();

  if (v38)
  {
    goto LABEL_128;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_222;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[768], *(_Records_GDEntityPredicate_records + 193), *(_Records_GDEntityPredicate_records + 194), v184);
  if (*&v184[0] == v23 && *(&v184[0] + 1) == *(&v23 + 1))
  {

LABEL_131:
    *(v192 + 10) = *(v179 + 82);
    v84 = *(v179 + 56);
    v190 = *(v179 + 40);
    v191 = v84;
    v192[0] = *(v179 + 72);
    if (!BYTE9(v192[1]))
    {
      goto LABEL_126;
    }

    goto LABEL_121;
  }

  v41 = sub_1ABF25054();

  if (v41)
  {
    goto LABEL_131;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_225:
    swift_once();
LABEL_214:
    v162 = sub_1ABF237F4();
    sub_1ABA7AA24(v162, qword_1ED871B40);
    sub_1ABAE2EC4();
    sub_1ABAE2EC4();
    v53 = sub_1ABF237D4();
    v54 = sub_1ABF24664();
    if (os_log_type_enabled(v53, v54))
    {
LABEL_124:
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *&v185 = v56;
      *v55 = 136642819;
      v78 = v179;
      memcpy(v184, v179, 0x62uLL);
      sub_1ABAE2EC4();
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v79 = sub_1ABF23C94();
      v81 = &v185;
LABEL_125:
      v82 = sub_1ABADD6D8(v79, v80, v81);

      *(v55 + 4) = v82;
      sub_1ABAB480C(v78, &qword_1EB4D1148, &qword_1ABF332D0);
      v60 = v78;
      goto LABEL_89;
    }

    goto LABEL_215;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[36], *(_Records_GDEntityPredicate_records + 10), *(_Records_GDEntityPredicate_records + 11), v184);
  if (*&v184[0] == v23 && *(&v184[0] + 1) == *(&v23 + 1))
  {
    goto LABEL_134;
  }

  v43 = sub_1ABF25054();

  if (v43)
  {
    goto LABEL_135;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_227;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[852], *(_Records_GDEntityPredicate_records + 214), *(_Records_GDEntityPredicate_records + 215), v184);
  if (*&v184[0] == v23 && *(&v184[0] + 1) == *(&v23 + 1))
  {
    goto LABEL_138;
  }

  v45 = sub_1ABF25054();

  if (v45)
  {
    goto LABEL_139;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_227:
    __break(1u);
    goto LABEL_228;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[696], *(_Records_GDEntityPredicate_records + 175), *(_Records_GDEntityPredicate_records + 176), v184);
  if (*&v184[0] == v23 && *(&v184[0] + 1) == *(&v23 + 1))
  {
    goto LABEL_142;
  }

  v47 = sub_1ABF25054();

  if (v47)
  {
LABEL_143:
    v87 = *(v179 + 56);
    v192[2] = *(v179 + 40);
    v192[3] = v87;
    v193[0] = *(v179 + 72);
    *(v193 + 10) = *(v179 + 82);
    v88 = v172;
    sub_1ABD52070();
    if (sub_1ABA7E1E0(v88, 1, v173) != 1)
    {
      v90 = v171;
      v91 = v169;
      v92 = v173;
      (*(v171 + 32))(v169, v172, v173);
      v93 = v170;
      (*(v90 + 16))(v170, v91, v92);
      swift_beginAccess();
      sub_1ABB457D4(v93);
      (*(v90 + 8))(v91, v92);
      return;
    }

    sub_1ABAB480C(v172, &qword_1EB4D9BF0, &qword_1ABF34240);
    goto LABEL_145;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_228:
    __break(1u);
    goto LABEL_229;
  }

  v29 = v230;
  sub_1ABA91D48(_Records_GDEntityPredicate_records[1020], *(_Records_GDEntityPredicate_records + 256), *(_Records_GDEntityPredicate_records + 257), v184);
  v246[0] = v184[0];
  v246[1] = v184[1];
  v247 = v184[2];
  v48 = sub_1ABA9B0B8(v246, v197);
  sub_1ABAE4478(v246);
  if (v48)
  {
    *(v192 + 10) = *(v179 + 82);
    v49 = *(v179 + 56);
    v190 = *(v179 + 40);
    v191 = v49;
    v192[0] = *(v179 + 72);
    if (!BYTE9(v192[1]))
    {
      goto LABEL_126;
    }

    goto LABEL_121;
  }

LABEL_151:
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_229:
    __break(1u);
    goto LABEL_230;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[936], *(_Records_GDEntityPredicate_records + 235), *(_Records_GDEntityPredicate_records + 236), v184);
  v94 = v184[1];
  *(v29 + 336) = v184[0];
  *(v29 + 352) = v94;
  v245 = v184[2];
  v95 = sub_1ABA9B0B8(v244, v197);
  sub_1ABAE4478(v244);
  if (v95)
  {
    v96 = *(v179 + 56);
    v193[2] = *(v179 + 40);
    v193[3] = v96;
    v194[0] = *(v179 + 72);
    *(v194 + 10) = *(v179 + 82);
    v97 = sub_1ABD51FE0();
    if (v97 != 2)
    {
      v98 = v97;
LABEL_164:
      swift_beginAccess();
      sub_1ABB4576C(v98 & 1);
      return;
    }

    goto LABEL_145;
  }

LABEL_156:
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
    goto LABEL_232;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[312], *(_Records_GDEntityPredicate_records + 79), *(_Records_GDEntityPredicate_records + 80), v184);
  v99 = v184[1];
  *(v29 + 288) = v184[0];
  *(v29 + 304) = v99;
  v243 = v184[2];
  v100 = sub_1ABA9B0B8(v242, v197);
  sub_1ABAE4478(v242);
  if (v100)
  {
    v101 = *(v179 + 56);
    v194[2] = *(v179 + 40);
    v194[3] = v101;
    v195[0] = *(v179 + 72);
    *(v195 + 10) = *(v179 + 82);
    v102 = sub_1ABC824B4();
    if (v102 != 2)
    {
      v98 = v102;
      goto LABEL_164;
    }

LABEL_145:
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v89 = sub_1ABF237F4();
    sub_1ABA7AA24(v89, qword_1ED871B40);
    sub_1ABAE2EC4();
    sub_1ABAE2EC4();
    v53 = sub_1ABF237D4();
    v54 = sub_1ABF24664();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *&v190 = v56;
      *v55 = 136642819;
      v78 = v179;
      memcpy(v184, v179, 0x62uLL);
      sub_1ABAE2EC4();
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v79 = sub_1ABF23C94();
      v81 = &v190;
      goto LABEL_125;
    }

LABEL_215:

    v163 = v179;
    sub_1ABAB480C(v179, &qword_1EB4D1148, &qword_1ABF332D0);
    v67 = v163;
    goto LABEL_99;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_231;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2568], *(_Records_GDEntityPredicate_records + 643), *(_Records_GDEntityPredicate_records + 644), v184);
  v103 = v184[1];
  *(v29 + 240) = v184[0];
  *(v29 + 256) = v103;
  v241 = v184[2];
  v104 = sub_1ABA9B0B8(v240, v197);
  sub_1ABAE4478(v240);
  if (v104)
  {
    v105 = *(v179 + 56);
    v195[2] = *(v179 + 40);
    v195[3] = v105;
    v196[0] = *(v179 + 72);
    *(v196 + 10) = *(v179 + 82);
    v106 = sub_1ABC824B4();
    if (v106 != 2)
    {
      v98 = v106;
      goto LABEL_164;
    }

    goto LABEL_145;
  }

LABEL_166:
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_232:
    __break(1u);
LABEL_233:
    __break(1u);
    goto LABEL_234;
  }

  v34 = &v199;
  sub_1ABA91D48(_Records_GDEntityPredicate_records[1668], *(_Records_GDEntityPredicate_records + 418), *(_Records_GDEntityPredicate_records + 419), v184);
  v107 = v184[1];
  *(v29 + 192) = v184[0];
  *(v29 + 208) = v107;
  v239 = v184[2];
  v108 = sub_1ABA9B0B8(v238, v197);
  v109 = sub_1ABAE4478(v238);
  if (v108)
  {
    *(v192 + 10) = *(v179 + 82);
    v110 = *(v179 + 56);
    v190 = *(v179 + 40);
    v191 = v110;
    v192[0] = *(v179 + 72);
    if (BYTE9(v192[1]) == 1)
    {
      v111 = *(v179 + 56);
      v187 = *(v179 + 40);
      v188 = v111;
      v189[0] = *(v179 + 72);
      *(v189 + 9) = *(v179 + 81);
      MEMORY[0x1EEE9AC00](v109);
      *(&v169 - 2) = &v187;
      sub_1ABAE2EC4();
      sub_1ABAE2EC4();
      v112 = v248;
      sub_1ABCFC2DC(sub_1ABD1A8C8, (&v169 - 4), &unk_1F209A408, &unk_1F209A430, sub_1ABD0D4F4, sub_1ABD197F0, v113, v114, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, *(&v179 + 1), v180, v181, v182, v183, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1));
      v248 = v112;
      if (!v112)
      {
        v115 = *&v186[0];
        if (*&v186[0])
        {
          v184[0] = v187;
          v184[1] = v188;
          v184[2] = v189[0];
          *(&v184[2] + 9) = *(v189 + 9);
          sub_1ABD19208(v184);
          v199 = v185;
          v201 = *(v186 + 8);
          v202 = *(&v186[1] + 8);
          v203 = BYTE8(v186[2]);
          v200 = v115;
          swift_beginAccess();
          sub_1ABB4587C(&v199);
LABEL_205:
          swift_endAccess();
          goto LABEL_206;
        }
      }

      goto LABEL_183;
    }

LABEL_213:
    if (qword_1ED871B38 == -1)
    {
      goto LABEL_214;
    }

    goto LABEL_225;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_233;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), v184);
  v116 = v184[1];
  *(v29 + 144) = v184[0];
  *(v29 + 160) = v116;
  v237 = v184[2];
  v117 = sub_1ABA9B0B8(v236, v197);
  v118 = sub_1ABAE4478(v236);
  if (v117)
  {
    *(v192 + 10) = *(v179 + 82);
    v119 = *(v179 + 56);
    v190 = *(v179 + 40);
    v191 = v119;
    v192[0] = *(v179 + 72);
    if (BYTE9(v192[1]) == 1)
    {
      v120 = *(v179 + 56);
      v187 = *(v179 + 40);
      v188 = v120;
      v189[0] = *(v179 + 72);
      *(v189 + 9) = *(v179 + 81);
      MEMORY[0x1EEE9AC00](v118);
      *(&v169 - 2) = &v187;
      sub_1ABAE2EC4();
      sub_1ABAE2EC4();
      v121 = v248;
      sub_1ABCFC2DC(sub_1ABD1A8C8, (&v169 - 4), &unk_1F2099F58, &unk_1F2099F80, sub_1ABD0D498, sub_1ABD1932C, v122, v123, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, *(&v179 + 1), v180, v181, v182, v183, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1));
      v248 = v121;
      if (!v121)
      {
        v124 = *&v186[0];
        if (*&v186[0])
        {
          v184[0] = v187;
          v184[1] = v188;
          v184[2] = v189[0];
          *(&v184[2] + 9) = *(v189 + 9);
          sub_1ABD19208(v184);
          v204 = v185;
          v206 = *(v186 + 8);
          v207 = *(&v186[1] + 8);
          v208 = BYTE8(v186[2]);
          v205 = v124;
          swift_beginAccess();
          sub_1ABB458A8(&v204);
          goto LABEL_205;
        }
      }

      goto LABEL_183;
    }

    goto LABEL_213;
  }

LABEL_179:
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
    goto LABEL_236;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1044], *(_Records_GDEntityPredicate_records + 262), *(_Records_GDEntityPredicate_records + 263), v184);
  v125 = v184[1];
  *(v29 + 96) = v184[0];
  *(v29 + 112) = v125;
  v235 = v184[2];
  v126 = sub_1ABA9B0B8(v234, v197);
  v127 = sub_1ABAE4478(v234);
  if (v126)
  {
    *(v192 + 10) = *(v179 + 82);
    v128 = *(v179 + 56);
    v190 = *(v179 + 40);
    v191 = v128;
    v192[0] = *(v179 + 72);
    if (BYTE9(v192[1]) != 1)
    {
      goto LABEL_213;
    }

    v129 = *(v179 + 56);
    v187 = *(v179 + 40);
    v188 = v129;
    v189[0] = *(v179 + 72);
    *(v189 + 9) = *(v179 + 81);
    MEMORY[0x1EEE9AC00](v127);
    *(&v169 - 2) = &v187;
    sub_1ABAE2EC4();
    sub_1ABAE2EC4();
    v130 = v248;
    sub_1ABCFC2DC(sub_1ABD1A8C8, (&v169 - 4), &unk_1F209A458, &unk_1F209A480, sub_1ABD0D43C, sub_1ABD1980C, v131, v132, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, *(&v179 + 1), v180, v181, v182, v183, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1));
    v248 = v130;
    if (!v130)
    {
      v156 = *&v186[0];
      if (*&v186[0])
      {
        v184[0] = v187;
        v184[1] = v188;
        v184[2] = v189[0];
        *(&v184[2] + 9) = *(v189 + 9);
        sub_1ABD19208(v184);
        *(v34 + 128) = v185;
        *(v34 + 152) = *(v186 + 8);
        *(v34 + 168) = *(&v186[1] + 8);
        v210 = BYTE8(v186[2]);
        v209[2] = v156;
        swift_beginAccess();
        sub_1ABB45948(v209);
        goto LABEL_205;
      }
    }

    goto LABEL_183;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_235;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1092], *(_Records_GDEntityPredicate_records + 274), *(_Records_GDEntityPredicate_records + 275), v184);
  v134 = v184[1];
  *(v29 + 48) = v184[0];
  *(v29 + 64) = v134;
  v233 = v184[2];
  v135 = sub_1ABA9B0B8(v232, v197);
  v136 = sub_1ABAE4478(v232);
  if (v135)
  {
    *(v192 + 10) = *(v179 + 82);
    v137 = *(v179 + 56);
    v190 = *(v179 + 40);
    v191 = v137;
    v192[0] = *(v179 + 72);
    if (BYTE9(v192[1]) != 1)
    {
      goto LABEL_213;
    }

    v138 = *(v179 + 56);
    v187 = *(v179 + 40);
    v188 = v138;
    v189[0] = *(v179 + 72);
    *(v189 + 9) = *(v179 + 81);
    MEMORY[0x1EEE9AC00](v136);
    *(&v169 - 2) = &v187;
    sub_1ABAE2EC4();
    sub_1ABAE2EC4();
    v139 = v248;
    sub_1ABD08790(sub_1ABD1A8C8, (&v169 - 4), &unk_1F209A4A8, sub_1ABD0D3E0, sub_1ABD19828);
    v248 = v139;
    if (v139)
    {
      v184[0] = v187;
      v184[1] = v188;
      v184[2] = v189[0];
      *(&v184[2] + 9) = *(v189 + 9);
      sub_1ABD19208(v184);
      sub_1ABAB480C(&v190, &qword_1EB4D7E60, &unk_1ABF5E780);
      return;
    }

    v164 = *&v186[0];
    if (*&v186[0])
    {
      v165 = v186[1];
      v166 = *(&v186[0] + 1);
      v167 = v185;
      v184[0] = v187;
      v184[1] = v188;
      v184[2] = v189[0];
      *(&v184[2] + 9) = *(v189 + 9);
      sub_1ABD19208(v184);
      v211 = v167;
      v212 = v164;
      v213 = v166;
      v214 = v165 & 1;
      swift_beginAccess();
      sub_1ABB45974(&v211);
      goto LABEL_218;
    }

    goto LABEL_219;
  }

LABEL_191:
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
    goto LABEL_238;
  }

  v38 = &v215;
  sub_1ABA91D48(_Records_GDEntityPredicate_records[1704], *(_Records_GDEntityPredicate_records + 427), *(_Records_GDEntityPredicate_records + 428), v184);
  v140 = v184[1];
  *v29 = v184[0];
  *(v29 + 16) = v140;
  v231 = v184[2];
  v141 = sub_1ABA9B0B8(v230, v197);
  v142 = sub_1ABAE4478(v230);
  if (v141)
  {
    *(v192 + 10) = *(v179 + 82);
    v143 = *(v179 + 56);
    v190 = *(v179 + 40);
    v191 = v143;
    v192[0] = *(v179 + 72);
    if (BYTE9(v192[1]) != 1)
    {
      goto LABEL_213;
    }

    v144 = *(v179 + 56);
    v187 = *(v179 + 40);
    v188 = v144;
    v189[0] = *(v179 + 72);
    *(v189 + 9) = *(v179 + 81);
    MEMORY[0x1EEE9AC00](v142);
    *(&v169 - 2) = &v187;
    sub_1ABAE2EC4();
    sub_1ABAE2EC4();
    v145 = v248;
    sub_1ABCF73A4(sub_1ABD1A8C8, &v185);
    v248 = v145;
    if (v145)
    {
LABEL_183:
      v184[0] = v187;
      v184[1] = v188;
      v184[2] = v189[0];
      *(&v184[2] + 9) = *(v189 + 9);
      v133 = v184;
LABEL_184:
      sub_1ABD19208(v133);
LABEL_206:
      sub_1ABAB480C(&v190, &qword_1EB4D7E60, &unk_1ABF5E780);
      return;
    }

    v146 = *&v186[0];
    if (*&v186[0])
    {
      v148 = *(&v186[1] + 1);
      v147 = *&v186[2];
      v179 = *(v186 + 8);
      v149 = v185;
      v184[0] = v187;
      v184[1] = v188;
      v184[2] = v189[0];
      *(&v184[2] + 9) = *(v189 + 9);
      sub_1ABD19208(v184);
      v215 = v149;
      v217 = v179;
      v216 = v146;
      v218 = v148;
      v219 = v147;
      swift_beginAccess();
      sub_1ABB459EC(&v215);
LABEL_218:
      swift_endAccess();
LABEL_220:
      v68 = &qword_1EB4D7E60;
      v69 = &unk_1ABF5E780;
      v67 = &v190;
      goto LABEL_100;
    }

LABEL_219:
    v184[0] = v187;
    v184[1] = v188;
    v184[2] = v189[0];
    *(&v184[2] + 9) = *(v189 + 9);
    sub_1ABD19208(v184);
    goto LABEL_220;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_237;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[96], *(_Records_GDEntityPredicate_records + 25), *(_Records_GDEntityPredicate_records + 26), v229);
  v150 = sub_1ABA9B0B8(v229, v197);
  v151 = sub_1ABAE4478(v229);
  if (v150)
  {
    *(v192 + 10) = *(v179 + 82);
    v152 = *(v179 + 56);
    v190 = *(v179 + 40);
    v191 = v152;
    v192[0] = *(v179 + 72);
    if (BYTE9(v192[1]) != 1)
    {
      goto LABEL_213;
    }

    v153 = *(v179 + 56);
    v185 = *(v179 + 40);
    v186[0] = v153;
    v186[1] = *(v179 + 72);
    *(&v186[1] + 9) = *(v179 + 81);
    MEMORY[0x1EEE9AC00](v151);
    *(&v169 - 2) = &v185;
    sub_1ABAE2EC4();
    sub_1ABAE2EC4();
    v154 = v248;
    sub_1ABCF8EE8(sub_1ABD1A8C8, v184);
    v248 = v154;
    if (!v154)
    {
      v155 = *&v184[1];
      if (*&v184[1])
      {
        v187 = v185;
        v188 = v186[0];
        v189[0] = v186[1];
        *(v189 + 9) = *(&v186[1] + 9);
        sub_1ABD19208(&v187);
        v220 = v184[0];
        v222 = *(&v184[1] + 8);
        v223 = *(&v184[2] + 8);
        v224 = *(&v184[3] + 8);
        v225 = *(&v184[4] + 8);
        v221 = v155;
        swift_beginAccess();
        sub_1ABB45A6C(&v220);
        goto LABEL_205;
      }
    }

    goto LABEL_212;
  }

LABEL_208:
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_238:
    __break(1u);
    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2412], *(_Records_GDEntityPredicate_records + 604), *(_Records_GDEntityPredicate_records + 605), v228);
  v157 = sub_1ABA9B0B8(v228, v197);
  v158 = sub_1ABAE4478(v228);
  if (v157)
  {
    *(v192 + 10) = *(v179 + 82);
    v159 = *(v179 + 56);
    v190 = *(v179 + 40);
    v191 = v159;
    v192[0] = *(v179 + 72);
    if (BYTE9(v192[1]) != 1)
    {
      goto LABEL_213;
    }

    v160 = *(v179 + 56);
    v185 = *(v179 + 40);
    v186[0] = v160;
    v186[1] = *(v179 + 72);
    *(&v186[1] + 9) = *(v179 + 81);
    MEMORY[0x1EEE9AC00](v158);
    *(&v169 - 2) = &v185;
    sub_1ABAE2EC4();
    sub_1ABAE2EC4();
    v161 = v248;
    sub_1ABD05E38(sub_1ABD1A8C8, v184);
    v248 = v161;
    if (v161)
    {
LABEL_212:
      v187 = v185;
      v188 = v186[0];
      v189[0] = v186[1];
      *(v189 + 9) = *(&v186[1] + 9);
      v133 = &v187;
      goto LABEL_184;
    }

LABEL_222:
    v168 = *&v184[1];
    if (*&v184[1])
    {
      v187 = v185;
      v188 = v186[0];
      v189[0] = v186[1];
      *(v189 + 9) = *(&v186[1] + 9);
      sub_1ABD19208(&v187);
      *(v38 + 152) = v184[0];
      memcpy(v227, &v184[1] + 8, sizeof(v227));
      v226[2] = v168;
      swift_beginAccess();
      sub_1ABB45AE4(v226);
      goto LABEL_205;
    }

    goto LABEL_212;
  }
}

void sub_1ABCDEAC8(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v541 = a8;
  v544 = a7;
  v547 = a6;
  v550 = a5;
  v552 = a4;
  v554 = a3;
  v557 = a2;
  v611 = a1;
  v28 = a27;
  v29 = *(a28 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = sub_1ABF247E4();
  v32 = *(v31 - 8);
  v525 = v31;
  v526 = v32;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v523 = &v472 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v521 = &v472 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v519 = &v472 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v515 = &v472 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v511 = &v472 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v507 = &v472 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v503 = &v472 - v46;
  v529 = AssociatedTypeWitness;
  v528 = *(AssociatedTypeWitness - 8);
  v47 = *(v528 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v520 = &v472 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v524 = &v472 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v517 = &v472 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v522 = &v472 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v513 = &v472 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v518 = &v472 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v509 = &v472 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v514 = &v472 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v505 = &v472 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v508 = &v472 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v500 = &v472 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v504 = &v472 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v498 = &v472 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v501 = &v472 - v75;
  v76 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v77 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76 - 8);
  v486 = &v472 - v78;
  v79 = sub_1ABF21EB4();
  v488 = *(v79 - 8);
  v489 = v79;
  v80 = *(v488 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v485 = &v472 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v82);
  v483 = &v472 - v83;
  v556 = *(a27 - 8);
  v84 = v556[8];
  MEMORY[0x1EEE9AC00](v85);
  v516 = &v472 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v87);
  v512 = &v472 - v88;
  MEMORY[0x1EEE9AC00](v89);
  v510 = &v472 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v506 = &v472 - v92;
  MEMORY[0x1EEE9AC00](v93);
  v502 = &v472 - v94;
  MEMORY[0x1EEE9AC00](v95);
  v499 = &v472 - v96;
  MEMORY[0x1EEE9AC00](v97);
  v497 = &v472 - v98;
  MEMORY[0x1EEE9AC00](v99);
  v496 = &v472 - v100;
  MEMORY[0x1EEE9AC00](v101);
  v494 = &v472 - v102;
  MEMORY[0x1EEE9AC00](v103);
  v492 = &v472 - v104;
  MEMORY[0x1EEE9AC00](v105);
  v490 = &v472 - v106;
  MEMORY[0x1EEE9AC00](v107);
  v484 = &v472 - v108;
  MEMORY[0x1EEE9AC00](v109);
  v531 = &v472 - v110;
  MEMORY[0x1EEE9AC00](v111);
  v532 = &v472 - v112;
  MEMORY[0x1EEE9AC00](v113);
  v534 = &v472 - v114;
  MEMORY[0x1EEE9AC00](v115);
  v536 = &v472 - v116;
  MEMORY[0x1EEE9AC00](v117);
  v538 = &v472 - v118;
  MEMORY[0x1EEE9AC00](v119);
  v540 = &v472 - v120;
  MEMORY[0x1EEE9AC00](v121);
  v543 = &v472 - v122;
  MEMORY[0x1EEE9AC00](v123);
  v546 = &v472 - v124;
  MEMORY[0x1EEE9AC00](v125);
  v549 = &v472 - v126;
  MEMORY[0x1EEE9AC00](v127);
  v551 = &v472 - v128;
  MEMORY[0x1EEE9AC00](v129);
  v553 = &v472 - v130;
  MEMORY[0x1EEE9AC00](v131);
  v133 = &v472 - v132;
  MEMORY[0x1EEE9AC00](v134);
  v555 = &v472 - v135;
  v561 = swift_checkMetadataState();
  isa = v561[-1].isa;
  v136 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v561);
  v495 = &v472 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v138);
  v493 = &v472 - v139;
  MEMORY[0x1EEE9AC00](v140);
  v491 = &v472 - v141;
  MEMORY[0x1EEE9AC00](v142);
  v487 = &v472 - v143;
  MEMORY[0x1EEE9AC00](v144);
  v482 = &v472 - v145;
  MEMORY[0x1EEE9AC00](v146);
  v481 = &v472 - v147;
  MEMORY[0x1EEE9AC00](v148);
  v480 = &v472 - v149;
  MEMORY[0x1EEE9AC00](v150);
  v479 = &v472 - v151;
  MEMORY[0x1EEE9AC00](v152);
  v478 = &v472 - v153;
  MEMORY[0x1EEE9AC00](v154);
  v477 = &v472 - v155;
  MEMORY[0x1EEE9AC00](v156);
  v476 = &v472 - v157;
  MEMORY[0x1EEE9AC00](v158);
  v475 = &v472 - v159;
  MEMORY[0x1EEE9AC00](v160);
  v530 = &v472 - v161;
  MEMORY[0x1EEE9AC00](v162);
  v533 = &v472 - v163;
  MEMORY[0x1EEE9AC00](v164);
  v535 = &v472 - v165;
  MEMORY[0x1EEE9AC00](v166);
  v537 = &v472 - v167;
  MEMORY[0x1EEE9AC00](v168);
  v539 = &v472 - v169;
  MEMORY[0x1EEE9AC00](v170);
  v542 = &v472 - v171;
  MEMORY[0x1EEE9AC00](v172);
  v545 = &v472 - v173;
  MEMORY[0x1EEE9AC00](v174);
  v548 = &v472 - v175;
  MEMORY[0x1EEE9AC00](v176);
  v178 = &v472 - v177;
  MEMORY[0x1EEE9AC00](v179);
  v181 = &v472 - v180;
  MEMORY[0x1EEE9AC00](v182);
  v184 = &v472 - v183;
  v186 = MEMORY[0x1EEE9AC00](v185);
  v188 = &v472 - v187;
  v189 = *(v29 + 24);
  v559 = v29;
  v189(&v588, a27, v29, v186);
  v558 = a27;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_166:
    swift_once();
LABEL_122:
    v295 = sub_1ABF237F4();
    sub_1ABA7AA24(v295, qword_1ED871B40);
    v296 = *(v181 + 2);
    v256 = v546;
    v296(v546, v611, v28);
    goto LABEL_123;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), &v563);
  if (v563 == v588 && *(&v563 + 1) == v589)
  {

    goto LABEL_86;
  }

  v472 = 279;
  v473 = v589;
  v474 = v588;
  v191 = sub_1ABF25054();

  if (v191)
  {
LABEL_86:
    v28 = v558;
    (*(v559 + 32))(v558, v559);
    v227 = v561;
    v228 = swift_getAssociatedConformanceWitness();
    v229 = (*(v228 + 24))(v227, v228);
    v231 = v230;
    (*(isa + 1))(v188, v227);
    if (!v231)
    {
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v234 = sub_1ABF237F4();
      sub_1ABA7AA24(v234, qword_1ED871B40);
      v235 = v556;
      v236 = v556[2];
      v237 = v555;
      v236(v555, v611, v28);
      v194 = sub_1ABF237D4();
      v238 = sub_1ABF24664();
      if (os_log_type_enabled(v194, v238))
      {
        v239 = swift_slowAlloc();
        LODWORD(v561) = v238;
        v240 = v239;
        v611 = swift_slowAlloc();
        *&v563 = v611;
        *v240 = 136642819;
        v236(v133, v237, v28);
        v241 = sub_1ABF23C94();
        v243 = sub_1ABADD6D8(v241, v242, &v563);

        *(v240 + 4) = v243;
        sub_1ABAE4478(&v588);
        (v235[1])(v237, v28);
        v244 = v240;
        _os_log_impl(&dword_1ABA78000, v194, v561, "Failed to parse %{sensitive}s.", v240, 0xCu);
        v245 = v611;
        sub_1ABA84B54(v611);
        MEMORY[0x1AC5AB8B0](v245, -1, -1);
        v246 = v244;
LABEL_111:
        MEMORY[0x1AC5AB8B0](v246, -1, -1);

        return;
      }

      sub_1ABAE4478(&v588);

      v247 = v235[1];
      v248 = v237;
LABEL_126:
      v247(v248, v28);
      return;
    }

    sub_1ABAE4478(&v588);
    swift_beginAccess();
    v232 = v229;
LABEL_88:
    v233 = v231;
LABEL_97:
    sub_1ABB456EC(v232, v233);
    swift_endAccess();
    return;
  }

  v28 = v558;
  if (v472 < 0x3D)
  {
    __break(1u);
LABEL_132:

    goto LABEL_133;
  }

  v557 = v133;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_176:
    swift_once();
LABEL_130:
    v307 = sub_1ABF237F4();
    sub_1ABA7AA24(v307, qword_1ED871B40);
    v296 = *(v181 + 2);
    v256 = v543;
    v296(v543, v611, v28);
LABEL_123:
    v194 = sub_1ABF237D4();
    v297 = sub_1ABF24664();
    if (os_log_type_enabled(v194, v297))
    {
      v298 = swift_slowAlloc();
      LODWORD(v561) = v297;
      v299 = v298;
      v611 = swift_slowAlloc();
      *&v563 = v611;
      *v299 = 136642819;
      v296(v557, v256, v28);
      v300 = sub_1ABF23C94();
      v302 = sub_1ABADD6D8(v300, v301, &v563);

      *(v299 + 4) = v302;
      sub_1ABAE4478(&v588);
      (*(v181 + 1))(v256, v28);
      v263 = v561;
      v264 = v194;
      v265 = v299;
      v262 = v299;
      goto LABEL_102;
    }

LABEL_125:
    sub_1ABAE4478(&v588);

    v247 = *(v181 + 1);
    v248 = v256;
    goto LABEL_126;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[720], *(_Records_GDEntityPredicate_records + 181), *(_Records_GDEntityPredicate_records + 182), &v563);
  if (v563 == v474 && *(&v563 + 1) == v473)
  {

LABEL_95:
    (*(v559 + 32))(v28, v559);
    v249 = v561;
    v250 = swift_getAssociatedConformanceWitness();
    v251 = (*(v250 + 24))(v249, v250);
    v253 = v252;
    (*(isa + 1))(v184, v249);
    if (v253)
    {
      goto LABEL_96;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v254 = sub_1ABF237F4();
    sub_1ABA7AA24(v254, qword_1ED871B40);
    v181 = v556;
    v255 = v556[2];
    v256 = v553;
    v255(v553, v611, v28);
    v194 = sub_1ABF237D4();
    v257 = sub_1ABF24664();
    if (os_log_type_enabled(v194, v257))
    {
      v258 = swift_slowAlloc();
      v561 = v258;
      v611 = swift_slowAlloc();
      *&v563 = v611;
      LODWORD(v258->isa) = 136642819;
      v255(v557, v256, v28);
      v259 = sub_1ABF23C94();
      v261 = sub_1ABADD6D8(v259, v260, &v563);

      v262 = v561;
      *(&v561->isa + 4) = v261;
      sub_1ABAE4478(&v588);
      (*(v181 + 1))(v256, v28);
      v263 = v257;
      v264 = v194;
      v265 = v262;
LABEL_102:
      _os_log_impl(&dword_1ABA78000, v264, v263, "Failed to parse %{sensitive}s.", v265, 0xCu);
      v266 = v611;
      sub_1ABA84B54(v611);
      v267 = v266;
LABEL_110:
      MEMORY[0x1AC5AB8B0](v267, -1, -1);
      v246 = v262;
      goto LABEL_111;
    }

    goto LABEL_125;
  }

  v193 = sub_1ABF25054();

  if (v193)
  {
    goto LABEL_95;
  }

  if (v472 == 61)
  {
    __break(1u);
    goto LABEL_139;
  }

  v194 = v611;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_185:
    swift_once();
    goto LABEL_135;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[732], *(_Records_GDEntityPredicate_records + 184), *(_Records_GDEntityPredicate_records + 185), &v563);
  if (v563 == v474 && *(&v563 + 1) == v473)
  {

    goto LABEL_104;
  }

  v196 = sub_1ABF25054();

  if (v196)
  {
LABEL_104:
    (*(v559 + 32))(v28, v559);
    v268 = v561;
    v269 = swift_getAssociatedConformanceWitness();
    v251 = (*(v269 + 24))(v268, v269);
    v253 = v270;
    (*(isa + 1))(v181, v268);
    if (v253)
    {
      goto LABEL_96;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v271 = sub_1ABF237F4();
    sub_1ABA7AA24(v271, qword_1ED871B40);
    v272 = v556;
    v273 = v556[2];
    v274 = v551;
    goto LABEL_108;
  }

  if (v472 < 0xD9)
  {
    __break(1u);
    goto LABEL_152;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_193:
    sub_1ABAE4478(&v588);
    v358 = v488;
    v357 = v489;
    v359 = v483;
    (*(v488 + 32))(v483, v486, v489);
    v360 = v485;
    (*(v358 + 16))(v485, v359, v357);
    swift_beginAccess();
    sub_1ABB457D4(v360);
    (*(v358 + 8))(v359, v357);
    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2592], *(_Records_GDEntityPredicate_records + 649), *(_Records_GDEntityPredicate_records + 650), &v563);
  if (v563 == v474 && *(&v563 + 1) == v473)
  {

    goto LABEL_114;
  }

  v198 = sub_1ABF25054();

  if (v198)
  {
LABEL_114:
    (*(v559 + 32))(v28, v559);
    v286 = v561;
    v287 = swift_getAssociatedConformanceWitness();
    v288 = (*(v287 + 24))(v286, v287);
    v231 = v289;
    (*(isa + 1))(v178, v286);
    if (v231)
    {
      sub_1ABAE4478(&v588);
      swift_beginAccess();
      v232 = v288;
      goto LABEL_88;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v290 = sub_1ABF237F4();
    sub_1ABA7AA24(v290, qword_1ED871B40);
    v272 = v556;
    v273 = v556[2];
    v274 = v549;
LABEL_108:
    v275 = v28;
    v273(v274, v611, v28);
    v276 = sub_1ABF237D4();
    v277 = sub_1ABF24664();
    if (!os_log_type_enabled(v276, v277))
    {
      sub_1ABAE4478(&v588);

      (v272[1])(v274, v275);
      return;
    }

    v278 = swift_slowAlloc();
    v561 = v276;
    v279 = v278;
    v280 = swift_slowAlloc();
    LODWORD(v611) = v277;
    v281 = v272;
    v282 = v280;
    *&v563 = v280;
    *v279 = 136642819;
    v273(v557, v274, v275);
    v283 = sub_1ABF23C94();
    v285 = sub_1ABADD6D8(v283, v284, &v563);

    v262 = v279;
    *(v279 + 4) = v285;
    sub_1ABAE4478(&v588);
    (v281[1])(v274, v275);
    v194 = v561;
    _os_log_impl(&dword_1ABA78000, v561, v611, "Failed to parse %{sensitive}s.", v262, 0xCu);
    sub_1ABA84B54(v282);
    v267 = v282;
    goto LABEL_110;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_233;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[744], *(_Records_GDEntityPredicate_records + 187), *(_Records_GDEntityPredicate_records + 188), &v563);
  v199 = v563 == v474 && *(&v563 + 1) == v473;
  v181 = v556;
  if (v199)
  {

LABEL_120:
    v291 = v548;
    (*(v559 + 32))(v28, v559);
    v292 = v561;
    v293 = swift_getAssociatedConformanceWitness();
    v251 = (*(v293 + 24))(v292, v293);
    v253 = v294;
    (*(isa + 1))(v291, v292);
    if (v253)
    {
      goto LABEL_96;
    }

    if (qword_1ED871B38 == -1)
    {
      goto LABEL_122;
    }

    goto LABEL_166;
  }

  v200 = sub_1ABF25054();

  if (v200)
  {
    goto LABEL_120;
  }

  if (v472 == 217)
  {
    __break(1u);
    goto LABEL_169;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_232:
    sub_1ABAE4478(&v588);

    v328 = v556[1];
    v329 = v494;
    goto LABEL_149;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2604], *(_Records_GDEntityPredicate_records + 652), *(_Records_GDEntityPredicate_records + 653), &v563);
  if (v563 == v474 && *(&v563 + 1) == v473)
  {

LABEL_128:
    v303 = v545;
    (*(v559 + 32))(v28, v559);
    v304 = v561;
    v305 = swift_getAssociatedConformanceWitness();
    v251 = (*(v305 + 24))(v304, v305);
    v253 = v306;
    (*(isa + 1))(v303, v304);
    if (v253)
    {
      goto LABEL_96;
    }

    if (qword_1ED871B38 == -1)
    {
      goto LABEL_130;
    }

    goto LABEL_176;
  }

  v202 = sub_1ABF25054();

  if (v202)
  {
    goto LABEL_128;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_253:
    sub_1ABAE4478(&v588);

    v328 = v556[1];
    v329 = v497;
    goto LABEL_149;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[756], *(_Records_GDEntityPredicate_records + 190), *(_Records_GDEntityPredicate_records + 191), &v563);
  v203 = *(&v564[0] + 1);
  if (v563 == v474 && *(&v563 + 1) == v473)
  {
    goto LABEL_132;
  }

  v205 = sub_1ABF25054();

  if ((v205 & 1) == 0)
  {
    if (v472 < 0xDB)
    {
      __break(1u);
      goto LABEL_188;
    }

    if (!_Records_GDEntityPredicate_records)
    {
      __break(1u);
      goto LABEL_276;
    }

    sub_1ABA91D48(_Records_GDEntityPredicate_records[2616], *(_Records_GDEntityPredicate_records + 655), *(_Records_GDEntityPredicate_records + 656), &v563);
    v194 = *(&v563 + 1);
    if (v563 != v474 || *(&v563 + 1) != v473)
    {
      v207 = sub_1ABF25054();

      if ((v207 & 1) == 0)
      {
        if (!_Records_GDEntityPredicate_records)
        {
          __break(1u);
LABEL_298:
          sub_1ABAE4478(&v588);

          v328 = v556[1];
          v329 = v510;
          goto LABEL_149;
        }

        sub_1ABA91D48(_Records_GDEntityPredicate_records[864], *(_Records_GDEntityPredicate_records + 217), *(_Records_GDEntityPredicate_records + 218), &v563);
        v194 = *(&v563 + 1);
        if (v563 != v474 || *(&v563 + 1) != v473)
        {
          v209 = sub_1ABF25054();

          if ((v209 & 1) == 0)
          {
            if (!_Records_GDEntityPredicate_records)
            {
              __break(1u);
LABEL_315:
              sub_1ABAE4478(&v588);

              v328 = v556[1];
              v329 = v516;
              goto LABEL_149;
            }

            sub_1ABA91D48(_Records_GDEntityPredicate_records[768], *(_Records_GDEntityPredicate_records + 193), *(_Records_GDEntityPredicate_records + 194), &v563);
            if (v563 == v474 && *(&v563 + 1) == v473)
            {
            }

            else
            {
              v211 = sub_1ABF25054();

              if ((v211 & 1) == 0)
              {
                if (!_Records_GDEntityPredicate_records)
                {
                  __break(1u);
                  goto LABEL_317;
                }

                sub_1ABA91D48(_Records_GDEntityPredicate_records[36], *(_Records_GDEntityPredicate_records + 10), *(_Records_GDEntityPredicate_records + 11), &v563);
                if (v563 != v474 || *(&v563 + 1) != v473)
                {
                  v213 = sub_1ABF25054();

                  if ((v213 & 1) == 0)
                  {
                    if (!_Records_GDEntityPredicate_records)
                    {
                      __break(1u);
                      goto LABEL_319;
                    }

                    sub_1ABA91D48(_Records_GDEntityPredicate_records[852], *(_Records_GDEntityPredicate_records + 214), *(_Records_GDEntityPredicate_records + 215), &v563);
                    if (v563 == v474 && *(&v563 + 1) == v473)
                    {
                    }

                    else
                    {
                      v215 = sub_1ABF25054();

                      if ((v215 & 1) == 0)
                      {
                        if (!_Records_GDEntityPredicate_records)
                        {
                          __break(1u);
                          goto LABEL_321;
                        }

                        v203 = &v582;
                        sub_1ABA91D48(_Records_GDEntityPredicate_records[696], *(_Records_GDEntityPredicate_records + 175), *(_Records_GDEntityPredicate_records + 176), &v563);
                        v609[0] = v563;
                        v609[1] = v564[0];
                        v610 = v564[1];
                        v216 = sub_1ABA9B0B8(v609, &v588);
                        sub_1ABAE4478(v609);
                        if (v216)
                        {
                          v217 = v475;
                          (*(v559 + 32))(v558, v559);
                          v218 = v561;
                          v219 = swift_getAssociatedConformanceWitness();
                          v220 = v486;
                          BaseEntityFactObjectProtocol.asDateFromJSON(decodeWith:)(a14, v218, v219, v486);
                          (*(isa + 1))(v217, v218);
                          if (sub_1ABA7E1E0(v220, 1, v489) == 1)
                          {
                            sub_1ABAB480C(v486, &qword_1EB4D9BF0, &qword_1ABF34240);
                            if (qword_1ED871B38 != -1)
                            {
                              swift_once();
                            }

                            v221 = sub_1ABF237F4();
                            sub_1ABA7AA24(v221, qword_1ED871B40);
                            v222 = v556[2];
                            v222(v484, v611, v558);
                            v194 = sub_1ABF237D4();
                            v223 = sub_1ABF24664();
                            if (os_log_type_enabled(v194, v223))
                            {
                              v224 = swift_slowAlloc();
                              v611 = swift_slowAlloc();
                              *&v563 = v611;
                              *v224 = 136642819;
                              v225 = v557;
                              v226 = v484;
LABEL_146:
                              v324 = v558;
                              v222(v225, v226, v558);
                              v325 = sub_1ABF23C94();
                              v327 = sub_1ABADD6D8(v325, v326, &v563);

                              *(v224 + 4) = v327;
                              sub_1ABAE4478(&v588);
                              (v556[1])(v226, v324);
                              _os_log_impl(&dword_1ABA78000, v194, v223, "Failed to parse %{sensitive}s.", v224, 0xCu);
                              v318 = v611;
                              goto LABEL_147;
                            }

                            sub_1ABAE4478(&v588);

                            v328 = v556[1];
                            v329 = v484;
                            goto LABEL_149;
                          }

                          goto LABEL_193;
                        }

LABEL_188:
                        if (!_Records_GDEntityPredicate_records)
                        {
                          __break(1u);
LABEL_323:
                          swift_once();
LABEL_273:
                          v432 = sub_1ABF237F4();
                          sub_1ABA7AA24(v432, qword_1ED871B40);
                          v222 = v556[2];
                          v222(v510, v611, v558);
                          v194 = sub_1ABF237D4();
                          v223 = sub_1ABF24664();
                          if (os_log_type_enabled(v194, v223))
                          {
                            v224 = swift_slowAlloc();
                            v611 = swift_slowAlloc();
                            *&v563 = v611;
                            *v224 = 136642819;
                            v225 = v557;
                            v226 = v510;
                            goto LABEL_146;
                          }

                          goto LABEL_298;
                        }

                        sub_1ABA91D48(_Records_GDEntityPredicate_records[1020], *(_Records_GDEntityPredicate_records + 256), *(_Records_GDEntityPredicate_records + 257), &v563);
                        v351 = v564[0];
                        v203[49] = v563;
                        v203[50] = v351;
                        v608 = v564[1];
                        v352 = sub_1ABA9B0B8(v607, &v588);
                        sub_1ABAE4478(v607);
                        if (v352)
                        {
                          v353 = v476;
                          (*(v559 + 32))(v558, v559);
                          v354 = v561;
                          v355 = swift_getAssociatedConformanceWitness();
                          v251 = (*(v355 + 24))(v354, v355);
                          v253 = v356;
                          (*(isa + 1))(v353, v354);
                          if (v253)
                          {
                            goto LABEL_96;
                          }

                          if (qword_1ED871B38 != -1)
                          {
                            swift_once();
                          }

                          v373 = sub_1ABF237F4();
                          sub_1ABA7AA24(v373, qword_1ED871B40);
                          v222 = v556[2];
                          v222(v490, v611, v558);
                          v194 = sub_1ABF237D4();
                          v223 = sub_1ABF24664();
                          if (os_log_type_enabled(v194, v223))
                          {
                            v224 = swift_slowAlloc();
                            v611 = swift_slowAlloc();
                            *&v563 = v611;
                            *v224 = 136642819;
                            v225 = v557;
                            v226 = v490;
                            goto LABEL_146;
                          }

                          sub_1ABAE4478(&v588);

                          v328 = v556[1];
                          v329 = v490;
LABEL_149:
                          v330 = v558;
LABEL_150:
                          v328(v329, v330);
                          return;
                        }

                        if (!_Records_GDEntityPredicate_records)
                        {
                          __break(1u);
                          goto LABEL_325;
                        }

                        sub_1ABA91D48(_Records_GDEntityPredicate_records[936], *(_Records_GDEntityPredicate_records + 235), *(_Records_GDEntityPredicate_records + 236), &v563);
                        v361 = v564[0];
                        v203[46] = v563;
                        v203[47] = v361;
                        v606 = v564[1];
                        v362 = sub_1ABA9B0B8(v605, &v588);
                        sub_1ABAE4478(v605);
                        if (v362)
                        {
                          v363 = v477;
                          (*(v559 + 32))(v558, v559);
                          v364 = v561;
                          v365 = swift_getAssociatedConformanceWitness();
                          LOBYTE(v194) = BaseEntityFactObjectProtocol.asIntBool.getter(v364, v365);
                          (*(isa + 1))(v363, v364);
                          if (v194 == 2)
                          {
                            if (qword_1ED871B38 != -1)
                            {
                              swift_once();
                            }

                            v366 = sub_1ABF237F4();
                            sub_1ABA7AA24(v366, qword_1ED871B40);
                            v222 = v556[2];
                            v222(v492, v611, v558);
                            v194 = sub_1ABF237D4();
                            v223 = sub_1ABF24664();
                            if (os_log_type_enabled(v194, v223))
                            {
                              v224 = swift_slowAlloc();
                              v611 = swift_slowAlloc();
                              *&v563 = v611;
                              *v224 = 136642819;
                              v225 = v557;
                              v226 = v492;
                              goto LABEL_146;
                            }

                            sub_1ABAE4478(&v588);

                            v328 = v556[1];
                            v329 = v492;
                            goto LABEL_149;
                          }

                          goto LABEL_233;
                        }

                        if (!_Records_GDEntityPredicate_records)
                        {
                          __break(1u);
LABEL_327:
                          swift_once();
LABEL_292:
                          v461 = sub_1ABF237F4();
                          sub_1ABA7AA24(v461, qword_1ED871B40);
                          v222 = v556[2];
                          v222(v516, v611, v558);
                          v194 = sub_1ABF237D4();
                          v223 = sub_1ABF24664();
                          if (os_log_type_enabled(v194, v223))
                          {
                            v224 = swift_slowAlloc();
                            v611 = swift_slowAlloc();
                            *&v563 = v611;
                            *v224 = 136642819;
                            v225 = v557;
                            v226 = v516;
                            goto LABEL_146;
                          }

                          goto LABEL_315;
                        }

                        sub_1ABA91D48(_Records_GDEntityPredicate_records[312], *(_Records_GDEntityPredicate_records + 79), *(_Records_GDEntityPredicate_records + 80), &v563);
                        v367 = v564[0];
                        v203[43] = v563;
                        v203[44] = v367;
                        v604 = v564[1];
                        v368 = sub_1ABA9B0B8(v603, &v588);
                        sub_1ABAE4478(v603);
                        if (v368)
                        {
                          v369 = v478;
                          (*(v559 + 32))(v558, v559);
                          v370 = v561;
                          v371 = swift_getAssociatedConformanceWitness();
                          LOBYTE(v194) = BaseEntityFactObjectProtocol.asBool.getter(v370, v371);
                          (*(isa + 1))(v369, v370);
                          if (v194 == 2)
                          {
                            if (qword_1ED871B38 != -1)
                            {
                              swift_once();
                            }

                            v372 = sub_1ABF237F4();
                            sub_1ABA7AA24(v372, qword_1ED871B40);
                            v222 = v556[2];
                            v222(v494, v611, v558);
                            v194 = sub_1ABF237D4();
                            v223 = sub_1ABF24664();
                            if (os_log_type_enabled(v194, v223))
                            {
                              v224 = swift_slowAlloc();
                              v611 = swift_slowAlloc();
                              *&v563 = v611;
                              *v224 = 136642819;
                              v225 = v557;
                              v226 = v494;
                              goto LABEL_146;
                            }

                            goto LABEL_232;
                          }

LABEL_233:
                          sub_1ABAE4478(&v588);
                          swift_beginAccess();
                          sub_1ABB4576C(v194 & 1);
                          return;
                        }

                        if (_Records_GDEntityPredicate_records)
                        {
                          sub_1ABA91D48(_Records_GDEntityPredicate_records[2568], *(_Records_GDEntityPredicate_records + 643), *(_Records_GDEntityPredicate_records + 644), &v563);
                          v374 = v564[0];
                          v203[40] = v563;
                          v203[41] = v374;
                          v602 = v564[1];
                          v375 = sub_1ABA9B0B8(v601, &v588);
                          sub_1ABAE4478(v601);
                          if (v375)
                          {
                            v376 = v479;
                            (*(v559 + 32))(v558, v559);
                            v377 = v561;
                            v378 = swift_getAssociatedConformanceWitness();
                            LOBYTE(v194) = BaseEntityFactObjectProtocol.asBool.getter(v377, v378);
                            (*(isa + 1))(v376, v377);
                            if (v194 != 2)
                            {
                              goto LABEL_233;
                            }

                            if (qword_1ED871B38 == -1)
                            {
LABEL_219:
                              v379 = sub_1ABF237F4();
                              sub_1ABA7AA24(v379, qword_1ED871B40);
                              v222 = v556[2];
                              v222(v496, v611, v558);
                              v194 = sub_1ABF237D4();
                              v223 = sub_1ABF24664();
                              if (os_log_type_enabled(v194, v223))
                              {
                                v224 = swift_slowAlloc();
                                v611 = swift_slowAlloc();
                                *&v563 = v611;
                                *v224 = 136642819;
                                v225 = v557;
                                v226 = v496;
                                goto LABEL_146;
                              }

                              sub_1ABAE4478(&v588);

                              v328 = v556[1];
                              v329 = v496;
                              goto LABEL_149;
                            }

LABEL_317:
                            swift_once();
                            goto LABEL_219;
                          }

                          if (_Records_GDEntityPredicate_records)
                          {
                            sub_1ABA91D48(_Records_GDEntityPredicate_records[1668], *(_Records_GDEntityPredicate_records + 418), *(_Records_GDEntityPredicate_records + 419), &v563);
                            v380 = v564[0];
                            v203[37] = v563;
                            v203[38] = v380;
                            v600 = v564[1];
                            v381 = sub_1ABA9B0B8(v599, &v588);
                            sub_1ABAE4478(v599);
                            if (v381)
                            {
                              v382 = v480;
                              (*(v559 + 32))(v558);
                              v383 = v503;
                              v384 = v561;
                              (*(AssociatedConformanceWitness + 40))(v561);
                              (*(isa + 1))(v382, v384);
                              if (sub_1ABA7E1E0(v383, 1, v529) == 1)
                              {
                                (*(v526 + 8))(v503, v525);
                                if (qword_1ED871B38 != -1)
                                {
                                  swift_once();
                                }

                                v385 = sub_1ABF237F4();
                                sub_1ABA7AA24(v385, qword_1ED871B40);
                                v222 = v556[2];
                                v222(v497, v611, v558);
                                v194 = sub_1ABF237D4();
                                v223 = sub_1ABF24664();
                                if (os_log_type_enabled(v194, v223))
                                {
                                  v224 = swift_slowAlloc();
                                  v611 = swift_slowAlloc();
                                  *&v563 = v611;
                                  *v224 = 136642819;
                                  v225 = v557;
                                  v226 = v497;
                                  goto LABEL_146;
                                }

                                goto LABEL_253;
                              }

                              sub_1ABAE4478(&v588);
                              v392 = v528;
                              v393 = v529;
                              v394 = v501;
                              (*(v528 + 32))(v501, v503, v529);
                              v395 = v498;
                              (*(v392 + 16))(v498, v394, v393);
                              v396 = type metadata accessor for CustomGraphPerson(0);
                              v397 = sub_1ABD09EBC(&unk_1EB4D7E80);
                              v398 = swift_getAssociatedConformanceWitness();
                              v399 = v562;
                              CustomGraphAgentAffiliationRelationship.init<A>(from:initializationResources:)(&v563, v395, v396, v393, v397, v398);
                              v400 = v399;
                              if (!v399 && *&v564[0])
                              {
                                v565 = v563;
                                v566 = *&v564[0];
                                v567 = *(v564 + 8);
                                v568 = *(&v564[1] + 8);
                                v569 = BYTE8(v564[2]);
                                swift_beginAccess();
                                sub_1ABB4587C(&v565);
                                swift_endAccess();
                              }

                              (*(v528 + 8))(v501, v529);
                              goto LABEL_313;
                            }

                            if (_Records_GDEntityPredicate_records)
                            {
                              sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), &v563);
                              v386 = v564[0];
                              v203[34] = v563;
                              v203[35] = v386;
                              v598 = v564[1];
                              v387 = sub_1ABA9B0B8(v597, &v588);
                              sub_1ABAE4478(v597);
                              if (v387)
                              {
                                v388 = v481;
                                (*(v559 + 32))(v558);
                                v389 = v507;
                                v390 = v561;
                                (*(AssociatedConformanceWitness + 40))(v561);
                                (*(isa + 1))(v388, v390);
                                if (sub_1ABA7E1E0(v389, 1, v529) == 1)
                                {
                                  (*(v526 + 8))(v507, v525);
                                  if (qword_1ED871B38 == -1)
                                  {
LABEL_238:
                                    v391 = sub_1ABF237F4();
                                    sub_1ABA7AA24(v391, qword_1ED871B40);
                                    v222 = v556[2];
                                    v222(v499, v611, v558);
                                    v194 = sub_1ABF237D4();
                                    v223 = sub_1ABF24664();
                                    if (os_log_type_enabled(v194, v223))
                                    {
                                      v224 = swift_slowAlloc();
                                      v611 = swift_slowAlloc();
                                      *&v563 = v611;
                                      *v224 = 136642819;
                                      v225 = v557;
                                      v226 = v499;
                                      goto LABEL_146;
                                    }

                                    sub_1ABAE4478(&v588);

                                    v328 = v556[1];
                                    v329 = v499;
                                    goto LABEL_149;
                                  }

LABEL_319:
                                  swift_once();
                                  goto LABEL_238;
                                }

                                sub_1ABAE4478(&v588);
                                v407 = v528;
                                v408 = v529;
                                v409 = v504;
                                (*(v528 + 32))(v504, v507, v529);
                                v410 = v500;
                                (*(v407 + 16))(v500, v409, v408);
                                v411 = sub_1ABD19740();
                                v412 = swift_getAssociatedConformanceWitness();
                                v413 = v562;
                                CustomGraphLocationRelationship.init<A>(from:initializationResources:)(&v563, v410, &type metadata for CustomGraphLocation, v408, v411, v412);
                                v400 = v413;
                                if (!v413 && *&v564[0])
                                {
                                  v570 = v563;
                                  v571 = *&v564[0];
                                  v572 = *(v564 + 8);
                                  v573 = *(&v564[1] + 8);
                                  v574 = BYTE8(v564[2]);
                                  swift_beginAccess();
                                  sub_1ABB458A8(&v570);
                                  swift_endAccess();
                                }

                                (*(v528 + 8))(v504, v529);
LABEL_313:
                                v562 = v400;
                                return;
                              }

                              if (_Records_GDEntityPredicate_records)
                              {
                                sub_1ABA91D48(_Records_GDEntityPredicate_records[1044], *(_Records_GDEntityPredicate_records + 262), *(_Records_GDEntityPredicate_records + 263), &v563);
                                v401 = v564[0];
                                v203[31] = v563;
                                v203[32] = v401;
                                v596 = v564[1];
                                v402 = sub_1ABA9B0B8(v595, &v588);
                                sub_1ABAE4478(v595);
                                if (v402)
                                {
                                  v403 = v482;
                                  (*(v559 + 32))(v558);
                                  v404 = v511;
                                  v405 = v561;
                                  (*(AssociatedConformanceWitness + 40))(v561);
                                  (*(isa + 1))(v403, v405);
                                  if (sub_1ABA7E1E0(v404, 1, v529) != 1)
                                  {
                                    sub_1ABAE4478(&v588);
                                    v420 = v528;
                                    v421 = v529;
                                    v422 = v508;
                                    (*(v528 + 32))(v508, v511, v529);
                                    v423 = v505;
                                    (*(v420 + 16))(v505, v422, v421);
                                    v424 = sub_1ABD196EC();
                                    v425 = swift_getAssociatedConformanceWitness();
                                    v426 = v562;
                                    CustomGraphEmploymentRelationship.init<A>(from:initializationResources:)(&v563, v423, &type metadata for CustomGraphOrganization, v421, v424, v425);
                                    v400 = v426;
                                    if (!v426 && *&v564[0])
                                    {
                                      v575 = v563;
                                      v576 = *&v564[0];
                                      v577 = *(v564 + 8);
                                      v578 = *(&v564[1] + 8);
                                      v579 = BYTE8(v564[2]);
                                      swift_beginAccess();
                                      sub_1ABB45948(&v575);
                                      swift_endAccess();
                                    }

                                    (*(v528 + 8))(v508, v529);
                                    goto LABEL_313;
                                  }

                                  (*(v526 + 8))(v511, v525);
                                  if (qword_1ED871B38 != -1)
                                  {
                                    swift_once();
                                  }

                                  v406 = sub_1ABF237F4();
                                  sub_1ABA7AA24(v406, qword_1ED871B40);
                                  v222 = v556[2];
                                  v222(v502, v611, v558);
                                  v194 = sub_1ABF237D4();
                                  v223 = sub_1ABF24664();
                                  if (os_log_type_enabled(v194, v223))
                                  {
                                    v224 = swift_slowAlloc();
                                    v611 = swift_slowAlloc();
                                    *&v563 = v611;
                                    *v224 = 136642819;
                                    v225 = v557;
                                    v226 = v502;
                                    goto LABEL_146;
                                  }

LABEL_276:
                                  sub_1ABAE4478(&v588);

                                  v328 = v556[1];
                                  v329 = v502;
                                  goto LABEL_149;
                                }

                                if (_Records_GDEntityPredicate_records)
                                {
                                  sub_1ABA91D48(_Records_GDEntityPredicate_records[1092], *(_Records_GDEntityPredicate_records + 274), *(_Records_GDEntityPredicate_records + 275), &v563);
                                  v414 = v564[0];
                                  v203[28] = v563;
                                  v203[29] = v414;
                                  v594 = v564[1];
                                  v415 = sub_1ABA9B0B8(v593, &v588);
                                  sub_1ABAE4478(v593);
                                  if (v415)
                                  {
                                    v416 = v487;
                                    (*(v559 + 32))(v558);
                                    v417 = v515;
                                    v418 = v561;
                                    (*(AssociatedConformanceWitness + 40))(v561);
                                    (*(isa + 1))(v416, v418);
                                    if (sub_1ABA7E1E0(v417, 1, v529) == 1)
                                    {
                                      (*(v526 + 8))(v515, v525);
                                      if (qword_1ED871B38 == -1)
                                      {
LABEL_262:
                                        v419 = sub_1ABF237F4();
                                        sub_1ABA7AA24(v419, qword_1ED871B40);
                                        v222 = v556[2];
                                        v222(v506, v611, v558);
                                        v194 = sub_1ABF237D4();
                                        v223 = sub_1ABF24664();
                                        if (os_log_type_enabled(v194, v223))
                                        {
                                          v224 = swift_slowAlloc();
                                          v611 = swift_slowAlloc();
                                          *&v563 = v611;
                                          *v224 = 136642819;
                                          v225 = v557;
                                          v226 = v506;
                                          goto LABEL_146;
                                        }

                                        sub_1ABAE4478(&v588);

                                        v328 = v556[1];
                                        v329 = v506;
                                        goto LABEL_149;
                                      }

LABEL_321:
                                      swift_once();
                                      goto LABEL_262;
                                    }

                                    sub_1ABAE4478(&v588);
                                    v433 = v528;
                                    v434 = v529;
                                    v435 = v514;
                                    (*(v528 + 32))(v514, v515, v529);
                                    v436 = v509;
                                    (*(v433 + 16))(v509, v435, v434);
                                    v437 = sub_1ABD19698();
                                    v438 = swift_getAssociatedConformanceWitness();
                                    v439 = v562;
                                    CustomGraphTopicRelationship.init<A>(from:initializationResources:)(&v563, v436, &type metadata for CustomGraphTopic, v434, v437, v438);
                                    v400 = v439;
                                    if (v439)
                                    {
                                      (*(v528 + 8))(v514, v529);
                                      goto LABEL_313;
                                    }

                                    v562 = 0;
                                    if (*&v564[0])
                                    {
                                      v580[0] = v563;
                                      v580[1] = v564[0];
                                      v581 = v564[1] & 1;
                                      swift_beginAccess();
                                      sub_1ABB45974(v580);
                                      swift_endAccess();
                                    }

                                    v328 = *(v528 + 8);
                                    v329 = v514;
LABEL_307:
                                    v330 = v529;
                                    goto LABEL_150;
                                  }

                                  if (_Records_GDEntityPredicate_records)
                                  {
                                    sub_1ABA91D48(_Records_GDEntityPredicate_records[1704], *(_Records_GDEntityPredicate_records + 427), *(_Records_GDEntityPredicate_records + 428), &v563);
                                    v427 = v564[0];
                                    v203[25] = v563;
                                    v203[26] = v427;
                                    v592 = v564[1];
                                    v428 = sub_1ABA9B0B8(v591, &v588);
                                    sub_1ABAE4478(v591);
                                    if (v428)
                                    {
                                      v429 = v491;
                                      (*(v559 + 32))(v558);
                                      v430 = v519;
                                      v431 = v561;
                                      (*(AssociatedConformanceWitness + 40))(v561);
                                      (*(isa + 1))(v429, v431);
                                      if (sub_1ABA7E1E0(v430, 1, v529) != 1)
                                      {
                                        sub_1ABAE4478(&v588);
                                        v446 = v528;
                                        v445 = v529;
                                        v447 = v518;
                                        (*(v528 + 32))(v518, v519, v529);
                                        v448 = *(v446 + 16);
                                        v449 = v513;
                                        v448(v513, v447, v445);
                                        v450 = swift_getAssociatedConformanceWitness();
                                        v451 = v562;
                                        CustomGraphHandleRelationship.init<A>(from:initializationResources:)(v449, v445, v450, v452, v453, v454, v455, v456, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483);
                                        v400 = v451;
                                        if (v451)
                                        {
                                          (*(v528 + 8))(v518, v529);
                                          goto LABEL_313;
                                        }

                                        v562 = 0;
                                        if (*&v564[0])
                                        {
                                          v582 = v563;
                                          v583 = *&v564[0];
                                          *(v203 + 24) = *(v564 + 8);
                                          *(v203 + 40) = *(&v564[1] + 8);
                                          swift_beginAccess();
                                          sub_1ABB459EC(&v582);
                                          swift_endAccess();
                                        }

                                        v328 = *(v528 + 8);
                                        v329 = v518;
                                        goto LABEL_307;
                                      }

                                      (*(v526 + 8))(v519, v525);
                                      if (qword_1ED871B38 == -1)
                                      {
                                        goto LABEL_273;
                                      }

                                      goto LABEL_323;
                                    }

                                    if (_Records_GDEntityPredicate_records)
                                    {
                                      sub_1ABA91D48(_Records_GDEntityPredicate_records[96], *(_Records_GDEntityPredicate_records + 25), *(_Records_GDEntityPredicate_records + 26), v590);
                                      v440 = sub_1ABA9B0B8(v590, &v588);
                                      sub_1ABAE4478(v590);
                                      if (v440)
                                      {
                                        v441 = v493;
                                        (*(v559 + 32))(v558);
                                        v442 = v521;
                                        v443 = v561;
                                        (*(AssociatedConformanceWitness + 40))(v561);
                                        (*(isa + 1))(v441, v443);
                                        if (sub_1ABA7E1E0(v442, 1, v529) != 1)
                                        {
                                          sub_1ABAE4478(&v588);
                                          v463 = v528;
                                          v462 = v529;
                                          v464 = v522;
                                          (*(v528 + 32))(v522, v521, v529);
                                          (*(v463 + 16))(v517, v464, v462);
                                          swift_getAssociatedConformanceWitness();
                                          v465 = v562;
                                          CustomGraphIdentifierRelationship.init<A>(from:initializationResources:)();
                                          v400 = v465;
                                          if (!v465)
                                          {
                                            v466 = *&v564[0];
                                            if (*&v564[0])
                                            {
                                              v203[4] = v563;
                                              v584[2] = v466;
                                              *(v203 + 88) = *(v564 + 8);
                                              *(v203 + 104) = *(&v564[1] + 8);
                                              *(v203 + 120) = *(&v564[2] + 8);
                                              *(v203 + 136) = *(&v564[3] + 8);
                                              swift_beginAccess();
                                              sub_1ABB45A6C(v584);
                                              swift_endAccess();
                                            }
                                          }

                                          (*(v528 + 8))(v522, v529);
                                          goto LABEL_313;
                                        }

                                        (*(v526 + 8))(v521, v525);
                                        if (qword_1ED871B38 == -1)
                                        {
LABEL_283:
                                          v444 = sub_1ABF237F4();
                                          sub_1ABA7AA24(v444, qword_1ED871B40);
                                          v222 = v556[2];
                                          v222(v512, v611, v558);
                                          v194 = sub_1ABF237D4();
                                          v223 = sub_1ABF24664();
                                          if (os_log_type_enabled(v194, v223))
                                          {
                                            v224 = swift_slowAlloc();
                                            v611 = swift_slowAlloc();
                                            *&v563 = v611;
                                            *v224 = 136642819;
                                            v225 = v557;
                                            v226 = v512;
                                            goto LABEL_146;
                                          }

                                          sub_1ABAE4478(&v588);

                                          v328 = v556[1];
                                          v329 = v512;
                                          goto LABEL_149;
                                        }

LABEL_325:
                                        swift_once();
                                        goto LABEL_283;
                                      }

                                      if (_Records_GDEntityPredicate_records)
                                      {
                                        sub_1ABA91D48(_Records_GDEntityPredicate_records[2412], *(_Records_GDEntityPredicate_records + 604), *(_Records_GDEntityPredicate_records + 605), v587);
                                        v457 = sub_1ABA9B0B8(v587, &v588);
                                        sub_1ABAE4478(v587);
                                        if ((v457 & 1) == 0)
                                        {
                                          sub_1ABAE4478(&v588);
                                          return;
                                        }

                                        v458 = v495;
                                        (*(v559 + 32))(v558);
                                        v459 = v523;
                                        v460 = v561;
                                        (*(AssociatedConformanceWitness + 40))(v561);
                                        (*(isa + 1))(v458, v460);
                                        if (sub_1ABA7E1E0(v459, 1, v529) != 1)
                                        {
                                          sub_1ABAE4478(&v588);
                                          v468 = v528;
                                          v467 = v529;
                                          v469 = v524;
                                          (*(v528 + 32))(v524, v523, v529);
                                          (*(v468 + 16))(v520, v469, v467);
                                          swift_getAssociatedConformanceWitness();
                                          v470 = v562;
                                          CustomGraphVisualIdentifierRelationship.init<A>(from:initializationResources:)();
                                          v400 = v470;
                                          if (!v470)
                                          {
                                            v471 = *&v564[0];
                                            if (*&v564[0])
                                            {
                                              v203[10] = v563;
                                              v585[2] = v471;
                                              memcpy(v586, v564 + 8, sizeof(v586));
                                              swift_beginAccess();
                                              sub_1ABB45AE4(v585);
                                              swift_endAccess();
                                            }
                                          }

                                          (*(v528 + 8))(v524, v529);
                                          goto LABEL_313;
                                        }

                                        (*(v526 + 8))(v523, v525);
                                        if (qword_1ED871B38 == -1)
                                        {
                                          goto LABEL_292;
                                        }

                                        goto LABEL_327;
                                      }

                                      goto LABEL_335;
                                    }

LABEL_334:
                                    __break(1u);
LABEL_335:
                                    __break(1u);
                                    return;
                                  }

LABEL_333:
                                  __break(1u);
                                  goto LABEL_334;
                                }

LABEL_332:
                                __break(1u);
                                goto LABEL_333;
                              }

LABEL_331:
                              __break(1u);
                              goto LABEL_332;
                            }

LABEL_330:
                            __break(1u);
                            goto LABEL_331;
                          }
                        }

                        else
                        {
                          __break(1u);
                        }

                        __break(1u);
                        goto LABEL_330;
                      }
                    }

                    v346 = v530;
                    (*(v559 + 32))(v558, v559);
                    v347 = v561;
                    v348 = swift_getAssociatedConformanceWitness();
                    v251 = (*(v348 + 24))(v347, v348);
                    v253 = v349;
                    (*(isa + 1))(v346, v347);
                    if (!v253)
                    {
                      if (qword_1ED871B38 != -1)
                      {
                        swift_once();
                      }

                      v350 = sub_1ABF237F4();
                      sub_1ABA7AA24(v350, qword_1ED871B40);
                      v222 = v556[2];
                      v222(v531, v611, v558);
                      v194 = sub_1ABF237D4();
                      v223 = sub_1ABF24664();
                      if (os_log_type_enabled(v194, v223))
                      {
                        v224 = swift_slowAlloc();
                        v611 = swift_slowAlloc();
                        *&v563 = v611;
                        *v224 = 136642819;
                        v225 = v557;
                        v226 = v531;
                        goto LABEL_146;
                      }

                      sub_1ABAE4478(&v588);

                      v328 = v556[1];
                      v329 = v531;
                      goto LABEL_149;
                    }

LABEL_96:
                    sub_1ABAE4478(&v588);
                    swift_beginAccess();
                    v232 = v251;
                    v233 = v253;
                    goto LABEL_97;
                  }

LABEL_170:
                  v341 = v533;
                  (*(v559 + 32))(v558, v559);
                  v342 = v561;
                  v343 = swift_getAssociatedConformanceWitness();
                  v251 = (*(v343 + 24))(v342, v343);
                  v253 = v344;
                  (*(isa + 1))(v341, v342);
                  if (!v253)
                  {
                    if (qword_1ED871B38 != -1)
                    {
                      swift_once();
                    }

                    v345 = sub_1ABF237F4();
                    sub_1ABA7AA24(v345, qword_1ED871B40);
                    v222 = v556[2];
                    v222(v532, v611, v558);
                    v194 = sub_1ABF237D4();
                    v223 = sub_1ABF24664();
                    if (os_log_type_enabled(v194, v223))
                    {
                      v224 = swift_slowAlloc();
                      v611 = swift_slowAlloc();
                      *&v563 = v611;
                      *v224 = 136642819;
                      v225 = v557;
                      v226 = v532;
                      goto LABEL_146;
                    }

                    sub_1ABAE4478(&v588);

                    v328 = v556[1];
                    v329 = v532;
                    goto LABEL_149;
                  }

                  goto LABEL_96;
                }

LABEL_169:

                goto LABEL_170;
              }
            }

            v336 = v535;
            (*(v559 + 32))(v558, v559);
            v337 = v561;
            v338 = swift_getAssociatedConformanceWitness();
            v251 = (*(v338 + 24))(v337, v338);
            v253 = v339;
            (*(isa + 1))(v336, v337);
            if (!v253)
            {
              if (qword_1ED871B38 != -1)
              {
                swift_once();
              }

              v340 = sub_1ABF237F4();
              sub_1ABA7AA24(v340, qword_1ED871B40);
              v222 = v556[2];
              v222(v534, v611, v558);
              v194 = sub_1ABF237D4();
              v223 = sub_1ABF24664();
              if (os_log_type_enabled(v194, v223))
              {
                v224 = swift_slowAlloc();
                v611 = swift_slowAlloc();
                *&v563 = v611;
                *v224 = 136642819;
                v225 = v557;
                v226 = v534;
                goto LABEL_146;
              }

              sub_1ABAE4478(&v588);

              v328 = v556[1];
              v329 = v534;
              goto LABEL_149;
            }

            goto LABEL_96;
          }

LABEL_153:
          v331 = v537;
          (*(v559 + 32))(v558, v559);
          v332 = v561;
          v333 = swift_getAssociatedConformanceWitness();
          v251 = (*(v333 + 24))(v332, v333);
          v253 = v334;
          (*(isa + 1))(v331, v332);
          if (!v253)
          {
            if (qword_1ED871B38 != -1)
            {
              swift_once();
            }

            v335 = sub_1ABF237F4();
            sub_1ABA7AA24(v335, qword_1ED871B40);
            v222 = v556[2];
            v222(v536, v611, v558);
            v194 = sub_1ABF237D4();
            v223 = sub_1ABF24664();
            if (os_log_type_enabled(v194, v223))
            {
              v224 = swift_slowAlloc();
              v611 = swift_slowAlloc();
              *&v563 = v611;
              *v224 = 136642819;
              v225 = v557;
              v226 = v536;
              goto LABEL_146;
            }

            sub_1ABAE4478(&v588);

            v328 = v556[1];
            v329 = v536;
            goto LABEL_149;
          }

          goto LABEL_96;
        }

LABEL_152:

        goto LABEL_153;
      }

LABEL_140:
      v319 = v539;
      (*(v559 + 32))(v558, v559);
      v320 = v561;
      v321 = swift_getAssociatedConformanceWitness();
      v251 = (*(v321 + 24))(v320, v321);
      v253 = v322;
      (*(isa + 1))(v319, v320);
      if (!v253)
      {
        if (qword_1ED871B38 != -1)
        {
          swift_once();
        }

        v323 = sub_1ABF237F4();
        sub_1ABA7AA24(v323, qword_1ED871B40);
        v222 = v556[2];
        v222(v538, v611, v558);
        v194 = sub_1ABF237D4();
        v223 = sub_1ABF24664();
        if (os_log_type_enabled(v194, v223))
        {
          v224 = swift_slowAlloc();
          v611 = swift_slowAlloc();
          *&v563 = v611;
          *v224 = 136642819;
          v225 = v557;
          v226 = v538;
          goto LABEL_146;
        }

        sub_1ABAE4478(&v588);

        v328 = v556[1];
        v329 = v538;
        goto LABEL_149;
      }

      goto LABEL_96;
    }

LABEL_139:

    goto LABEL_140;
  }

LABEL_133:
  v308 = v542;
  (*(v559 + 32))(v28, v559);
  v309 = v561;
  v310 = swift_getAssociatedConformanceWitness();
  v251 = (*(v310 + 24))(v309, v310);
  v253 = v311;
  (*(isa + 1))(v308, v309);
  if (v253)
  {
    goto LABEL_96;
  }

  if (qword_1ED871B38 != -1)
  {
    goto LABEL_185;
  }

LABEL_135:
  v312 = sub_1ABF237F4();
  sub_1ABA7AA24(v312, qword_1ED871B40);
  v313 = *(v181 + 2);
  v314 = v540;
  v313(v540, v611, v28);
  v194 = sub_1ABF237D4();
  LODWORD(v611) = sub_1ABF24664();
  if (os_log_type_enabled(v194, v611))
  {
    v224 = swift_slowAlloc();
    v561 = swift_slowAlloc();
    *&v563 = v561;
    *v224 = 136642819;
    v313(v557, v314, v28);
    v315 = sub_1ABF23C94();
    v317 = sub_1ABADD6D8(v315, v316, &v563);

    *(v224 + 4) = v317;
    sub_1ABAE4478(&v588);
    (*(v181 + 1))(v314, v28);
    _os_log_impl(&dword_1ABA78000, v194, v611, "Failed to parse %{sensitive}s.", v224, 0xCu);
    v318 = v561;
LABEL_147:
    sub_1ABA84B54(v318);
    MEMORY[0x1AC5AB8B0](v318, -1, -1);
    v246 = v224;
    goto LABEL_111;
  }

  sub_1ABAE4478(&v588);

  (*(v181 + 1))(v314, v28);
}

void CustomGraphHandleRelationship.init<A>(from:initializationResources:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABD1C050();
  sub_1ABA9783C(v22, v23, v24);
  sub_1ABAB5F50();
  sub_1ABA9FF6C();
  swift_getAssociatedConformanceWitness();
  sub_1ABA9DE80();
  sub_1ABCF762C(v25, v26, v27, v28);
  if (!v20)
  {
    if (!a16)
    {
      sub_1ABA8AD50();
      v34 = *(v33 + 8);
      v38 = v35;
      v36 = sub_1ABA7EDF8();
      v37(v36);
      *v21 = a14;
      v21[1] = a15;
      v21[2] = 0;
      v21[3] = a17;
      v21[4] = a18;
      v21[5] = a19;
      v21[6] = v38;
      goto LABEL_5;
    }

    *v21 = a14;
    v21[1] = a15;
    v21[2] = a16;
    v21[3] = a17;
    v21[4] = a18;
    v21[5] = a19;
    v21[6] = a20;
  }

  sub_1ABA8AD50();
  v30 = *(v29 + 8);
  v31 = sub_1ABA7EDF8();
  v32(v31);
LABEL_5:
  sub_1ABD1C034();
}

void *CustomGraphVisualIdentifierRelationship.init<A>(from:initializationResources:)()
{
  sub_1ABAA0DEC();
  sub_1ABA8D140(v2, v3, v4);
  swift_getAssociatedTypeWitness();
  sub_1ABA88904();
  swift_getAssociatedConformanceWitness();
  sub_1ABA8CECC();
  sub_1ABD061B0(v5, v6, v7, v8);
  if (v1)
  {
    sub_1ABA97860();
    v18 = *(v17 + 8);
    v19 = sub_1ABA8B14C();
    return v20(v19);
  }

  else
  {
    if (v45)
    {
      sub_1ABD1BBD4(v9, v10, v11, v12, v13, v14, v15, v16, v38, v39, v40, v41, v42, v43, v44);
      sub_1ABA97860();
      v23 = *(v22 + 8);
      v24 = sub_1ABA8B14C();
      result = v25(v24);
    }

    else
    {
      sub_1ABA97860();
      v27 = *(v26 + 8);
      v28 = sub_1ABA8B14C();
      v30 = v29(v28);
      result = sub_1ABD1BBD4(v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
    }

    *(v0 + 16) = v45;
  }

  return result;
}

void CustomGraphPerson.init(typedId:all_fullNames:all_prefixes:all_givenNames:all_phoneticGivenNames:all_middleNames:all_phoneticMiddleNames:all_familyNames:all_phoneticFamilyNames:all_previousFamilyNames:all_suffixes:all_nicknames:all_birthNames:all_birthday:all_occupation:all_isFavorite:all_isCurrentUser:all_isInferredDeviceUser:all_associatedPeople:all_locations:all_employers:all_topics:all_handles:all_identifiers:all_contactIdentifier:all_visualIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36)
{
  sub_1ABA7E2A8();
  v68 = v43;
  v69 = v44;
  v67 = v45;
  sub_1ABAA5CB0();
  sub_1ABAA0DEC();
  v46 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  sub_1ABA7AB80(v46);
  v48 = *(v47 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v49);
  sub_1ABAB50F4();
  *v36 = *v37;
  *(v36 + 8) = v42;
  *(v36 + 16) = v41;
  *(v36 + 24) = v40;
  *(v36 + 32) = v39;
  *(v36 + 40) = v67;
  *(v36 + 48) = v68;
  *(v36 + 56) = v69;
  *(v36 + 64) = a21;
  *(v36 + 80) = a22;
  *(v36 + 96) = a23;
  sub_1ABF21EB4();
  sub_1ABA7ED8C();
  sub_1ABA7B9B4(v50, v51, v52, v53);
  v54 = type metadata accessor for CustomGraphPerson(0);
  sub_1ABC8B078(a24, v38, (v36 + v54[17]));
  v55 = sub_1ABB2B834(a25);
  v56 = (v36 + v54[18]);
  *v56 = a25;
  v56[1] = v55;
  v56[2] = v57;
  if (*(a26 + 16))
  {
    v58 = *(a26 + 32);
  }

  else
  {
    v58 = 2;
  }

  v59 = v36 + v54[19];
  *v59 = a26;
  *(v59 + 8) = v58;
  if (*(a27 + 16))
  {
    v60 = *(a27 + 32);
  }

  else
  {
    v60 = 2;
  }

  v61 = v36 + v54[20];
  *v61 = a27;
  *(v61 + 8) = v60;
  if (*(a28 + 16))
  {
    v62 = *(a28 + 32);
  }

  else
  {
    v62 = 2;
  }

  v63 = v36 + v54[21];
  *v63 = a28;
  *(v63 + 8) = v62;
  *(v36 + v54[22]) = a29;
  *(v36 + v54[23]) = a30;
  *(v36 + v54[24]) = a31;
  *(v36 + v54[25]) = a32;
  *(v36 + v54[26]) = a33;
  *(v36 + v54[27]) = a34;
  v64 = sub_1ABB2B834(a35);
  v65 = (v36 + v54[28]);
  *v65 = a35;
  v65[1] = v64;
  v65[2] = v66;
  *(v36 + v54[29]) = a36;
  sub_1ABA7BC1C();
}

uint64_t sub_1ABCE3A1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496465707974 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D614E6C6C7566 && a2 == 0xE900000000000073;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7365786966657270 && a2 == 0xE800000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D614E6E65766967 && a2 == 0xEA00000000007365;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x80000001ABF8D640 == a2;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x614E656C6464696DLL && a2 == 0xEB0000000073656DLL;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000013 && 0x80000001ABF8D660 == a2;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x614E796C696D6166 && a2 == 0xEB0000000073656DLL;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000013 && 0x80000001ABF8D680 == a2;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000013 && 0x80000001ABF8D6A0 == a2;
                    if (v14 || (sub_1ABF25054() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x7365786966667573 && a2 == 0xE800000000000000;
                      if (v15 || (sub_1ABF25054() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x656D616E6B63696ELL && a2 == 0xE900000000000073;
                        if (v16 || (sub_1ABF25054() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6D614E6874726962 && a2 == 0xEA00000000007365;
                          if (v17 || (sub_1ABF25054() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x7961646874726962 && a2 == 0xE800000000000000;
                            if (v18 || (sub_1ABF25054() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x697461707563636FLL && a2 == 0xEA00000000006E6FLL;
                              if (v19 || (sub_1ABF25054() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574;
                                if (v20 || (sub_1ABF25054() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6E65727275437369 && a2 == 0xED00007265735574;
                                  if (v21 || (sub_1ABF25054() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000014 && 0x80000001ABF8D6C0 == a2;
                                    if (v22 || (sub_1ABF25054() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000010 && 0x80000001ABF8D6E0 == a2;
                                      if (v23 || (sub_1ABF25054() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE900000000000073;
                                        if (v24 || (sub_1ABF25054() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x7265796F6C706D65 && a2 == 0xE900000000000073;
                                          if (v25 || (sub_1ABF25054() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x736369706F74 && a2 == 0xE600000000000000;
                                            if (v26 || (sub_1ABF25054() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x73656C646E6168 && a2 == 0xE700000000000000;
                                              if (v27 || (sub_1ABF25054() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x696669746E656469 && a2 == 0xEB00000000737265;
                                                if (v28 || (sub_1ABF25054() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000011 && 0x80000001ABF8D700 == a2;
                                                  if (v29 || (sub_1ABF25054() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else if (a1 == 0xD000000000000011 && 0x80000001ABF8A010 == a2)
                                                  {

                                                    return 25;
                                                  }

                                                  else
                                                  {
                                                    v31 = sub_1ABF25054();

                                                    if (v31)
                                                    {
                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      return 26;
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
          }
        }
      }
    }
  }
}

uint64_t sub_1ABCE41C0(char a1)
{
  result = 0x64496465707974;
  switch(a1)
  {
    case 1:
      v3 = 0x614E6C6C7566;
      goto LABEL_6;
    case 2:
      v5 = 1717924464;
      goto LABEL_25;
    case 3:
      v4 = 0x4E6E65766967;
      goto LABEL_14;
    case 4:
      return 0xD000000000000012;
    case 5:
      v6 = 0x656C6464696DLL;
      goto LABEL_19;
    case 6:
      return 0xD000000000000013;
    case 7:
      v6 = 0x796C696D6166;
LABEL_19:
      result = v6 & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      v5 = 1717990771;
LABEL_25:
      result = v5 | 0x7365786900000000;
      break;
    case 11:
      v3 = 0x616E6B63696ELL;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
      break;
    case 12:
      v4 = 0x4E6874726962;
LABEL_14:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x6D61000000000000;
      break;
    case 13:
      result = 0x7961646874726962;
      break;
    case 14:
      result = 0x697461707563636FLL;
      break;
    case 15:
      result = 0x69726F7661467369;
      break;
    case 16:
      result = 0x6E65727275437369;
      break;
    case 17:
      result = 0xD000000000000014;
      break;
    case 18:
      result = 0xD000000000000010;
      break;
    case 19:
      result = 0x6E6F697461636F6CLL;
      break;
    case 20:
      result = 0x7265796F6C706D65;
      break;
    case 21:
      result = 0x736369706F74;
      break;
    case 22:
      result = 0x73656C646E6168;
      break;
    case 23:
      result = 0x696669746E656469;
      break;
    case 24:
    case 25:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABCE4474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABCE3A1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABCE449C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABCE41B8();
  *a1 = result;
  return result;
}

uint64_t sub_1ABCE44C4(uint64_t a1)
{
  v2 = sub_1ABD0C994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCE4500(uint64_t a1)
{
  v2 = sub_1ABD0C994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphPerson.encode(to:)()
{
  sub_1ABA7BCA8();
  v4 = sub_1ABAD219C(&qword_1EB4D6F78, &qword_1ABF50FA8);
  sub_1ABA96D00(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABAB50F4();
  sub_1ABA8EA00();
  sub_1ABD0C994();
  sub_1ABA892E8();
  sub_1ABF252E4();
  sub_1ABA9F0C4();
  v10 = sub_1ABA8C744();
  sub_1ABAD219C(v10, v11);
  sub_1ABA7D99C();
  sub_1ABD1044C(v12);
  sub_1ABAA19EC();
  sub_1ABA88A3C();
  sub_1ABF24F84();
  if (!v2)
  {
    v16 = v1[1];
    sub_1ABA8B6EC();
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABA80C3C(&qword_1EB4D4308);
    sub_1ABAB2B48();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    v17 = v1[2];
    sub_1ABD1B178();
    sub_1ABAB2B48();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    v18 = v1[3];
    sub_1ABD1AF94();
    sub_1ABAB2B48();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABA9F280(v1[4]);
    sub_1ABAB2B48();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    v19 = v1[5];
    sub_1ABD1AFDC();
    sub_1ABAB2B48();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    v20 = v1[6];
    sub_1ABD1AFD0();
    sub_1ABAB2B48();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    v21 = v1[7];
    sub_1ABD1AFC4();
    sub_1ABAB2B48();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    v22 = v1[8];
    sub_1ABD1AFB8();
    sub_1ABAB2B48();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    v23 = v1[9];
    sub_1ABD1AFE8();
    sub_1ABAB2B48();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    v24 = v1[10];
    sub_1ABAB6330();
    sub_1ABAB2B48();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    v25 = v1[11];
    sub_1ABD1B69C();
    sub_1ABAB2B48();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    v26 = v1[12];
    sub_1ABD1B690();
    sub_1ABAB2B48();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    v13 = type metadata accessor for CustomGraphPerson(0);
    v14 = v13[17];
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA80C14();
    sub_1ABD0C9E8(v15);
    sub_1ABA82E78();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABA8934C(v13[18]);

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAB56F0();
    sub_1ABD1AD2C();
    sub_1ABF24F84();
    sub_1ABAA1210();

    sub_1ABA98014(v13[19]);

    sub_1ABAD219C(&qword_1EB4D6E28, &unk_1ABF50F18);
    sub_1ABD0BF58();
    sub_1ABA80C2C();
    sub_1ABA88A3C();
    sub_1ABF24F84();

    sub_1ABA98014(v13[20]);

    sub_1ABA80C2C();
    sub_1ABA88A3C();
    sub_1ABF24F84();

    sub_1ABA98014(v13[21]);

    sub_1ABA80C2C();
    sub_1ABA88A3C();
    sub_1ABF24F84();

    sub_1ABD1AF88(v13[22]);
    sub_1ABAD219C(&qword_1EB4D6FA0, &qword_1ABF50FB8);
    sub_1ABD0CAA8();
    sub_1ABAA2D10();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABD1AF88(v13[23]);
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    sub_1ABAA2D10();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABD1AF88(v13[24]);
    sub_1ABAD219C(&qword_1EB4D6FB8, &qword_1ABF50FC8);
    sub_1ABD0CB58();
    sub_1ABAA2D10();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABD1AF88(v13[25]);
    sub_1ABAD219C(&qword_1EB4D6FD0, &qword_1ABF50FD8);
    sub_1ABD0CC08();
    sub_1ABAA2D10();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABD1AF88(v13[26]);
    sub_1ABAD219C(&qword_1EB4D6FE8, &qword_1ABF50FE8);
    sub_1ABD0CCB8();
    sub_1ABAA2D10();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABD1AF88(v13[27]);
    sub_1ABAD219C(&qword_1EB4D65A0, &qword_1ABF50B40);
    sub_1ABD09D60();
    sub_1ABAA2D10();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABA8934C(v13[28]);

    sub_1ABA80C2C();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABAA1210();

    sub_1ABD1AF88(v13[29]);
    sub_1ABAD219C(&qword_1EB4D7000, &qword_1ABF50FF0);
    sub_1ABD0CD90();
    sub_1ABAA2D10();
    sub_1ABA88A3C();
    sub_1ABF24F84();
  }

  (*(v6 + 8))(v3, v0);
  sub_1ABA9EFCC();
  sub_1ABA7BC90();
}

void CustomGraphPerson.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  sub_1ABA7BCA8();
  sub_1ABA8D4BC();
  v16 = v15;
  v17 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
  sub_1ABA7BBB0(v17);
  v19 = *(v18 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA9F7AC();
  v21 = sub_1ABAD219C(&qword_1EB4D7018, &qword_1ABF50FF8);
  sub_1ABA960BC(v21);
  v23 = v22;
  v25 = *(v24 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA7E5C0();
  v105 = type metadata accessor for CustomGraphPerson(0);
  v27 = sub_1ABA7BBB0(v105);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA7C21C();
  v106 = v30;
  v31 = v11[3];
  v32 = v11[4];
  v33 = sub_1ABA7ABE4();
  sub_1ABA88DCC(v33, v34);
  sub_1ABD0C994();
  sub_1ABA88E70();
  sub_1ABF252C4();
  if (v12)
  {
    sub_1ABA88688();
    sub_1ABAB5E80();
    sub_1ABAA1CA4();
    sub_1ABA84B54(v11);
    if (v14)
    {
      v38 = v106[2];

      if (v17)
      {
        goto LABEL_28;
      }
    }

    else if (v17)
    {
LABEL_28:
      v52 = v106[3];

      if ((v16 & 1) == 0)
      {
LABEL_29:
        if (v23)
        {
LABEL_30:
          v53 = v106[5];

          if ((v12 & 1) == 0)
          {
LABEL_31:
            if (v11)
            {
LABEL_32:
              v54 = v106[7];

              if ((v13 & 1) == 0)
              {
LABEL_33:
                if (v92)
                {
LABEL_34:
                  v55 = v106[9];

                  v42 = v105;
                  if ((v93 & 1) == 0)
                  {
LABEL_35:
                    if (v94)
                    {
LABEL_36:
                      v56 = v106[11];

                      if ((v95 & 1) == 0)
                      {
LABEL_37:
                        if (v96)
                        {
LABEL_38:
                          sub_1ABAB480C(v106 + v42[17], &qword_1EB4D5F00, &unk_1ABF50B20);
                          if ((v97 & 1) == 0)
                          {
LABEL_39:
                            if (v98)
                            {
LABEL_40:
                              v57 = *(v106 + v42[19]);

                              if ((v99 & 1) == 0)
                              {
LABEL_41:
                                if (v100)
                                {
LABEL_42:
                                  v58 = *(v106 + v42[21]);

                                  if ((v101 & 1) == 0)
                                  {
LABEL_43:
                                    if (a10)
                                    {
LABEL_44:
                                      v59 = *(v106 + v42[23]);

                                      if ((v102 & 1) == 0)
                                      {
LABEL_45:
                                        if (v103)
                                        {
LABEL_46:
                                          v60 = *(v106 + v42[25]);

                                          if ((v10 & 1) == 0)
                                          {
LABEL_47:
                                            if (!v104)
                                            {
                                              goto LABEL_49;
                                            }

LABEL_48:
                                            v61 = *(v106 + v42[27]);

                                            goto LABEL_49;
                                          }

LABEL_24:
                                          v51 = *(v106 + v42[26]);

                                          if ((v104 & 1) == 0)
                                          {
                                            goto LABEL_49;
                                          }

                                          goto LABEL_48;
                                        }

LABEL_23:
                                        if (!v10)
                                        {
                                          goto LABEL_47;
                                        }

                                        goto LABEL_24;
                                      }

LABEL_22:
                                      v50 = *(v106 + v42[24]);

                                      if (v103)
                                      {
                                        goto LABEL_46;
                                      }

                                      goto LABEL_23;
                                    }

LABEL_21:
                                    if (!v102)
                                    {
                                      goto LABEL_45;
                                    }

                                    goto LABEL_22;
                                  }

LABEL_20:
                                  v49 = *(v106 + v42[22]);

                                  if (a10)
                                  {
                                    goto LABEL_44;
                                  }

                                  goto LABEL_21;
                                }

LABEL_19:
                                if (!v101)
                                {
                                  goto LABEL_43;
                                }

                                goto LABEL_20;
                              }

LABEL_18:
                              v48 = *(v106 + v42[20]);

                              if (v100)
                              {
                                goto LABEL_42;
                              }

                              goto LABEL_19;
                            }

LABEL_17:
                            if (!v99)
                            {
                              goto LABEL_41;
                            }

                            goto LABEL_18;
                          }

LABEL_16:
                          v45 = (v106 + v42[18]);
                          v46 = *v45;
                          v47 = v45[2];

                          if (v98)
                          {
                            goto LABEL_40;
                          }

                          goto LABEL_17;
                        }

LABEL_15:
                        if (!v97)
                        {
                          goto LABEL_39;
                        }

                        goto LABEL_16;
                      }

LABEL_14:
                      v44 = v106[12];

                      if (v96)
                      {
                        goto LABEL_38;
                      }

                      goto LABEL_15;
                    }

LABEL_13:
                    if (!v95)
                    {
                      goto LABEL_37;
                    }

                    goto LABEL_14;
                  }

LABEL_12:
                  v43 = v106[10];

                  if (v94)
                  {
                    goto LABEL_36;
                  }

                  goto LABEL_13;
                }

LABEL_11:
                v42 = v105;
                if (!v93)
                {
                  goto LABEL_35;
                }

                goto LABEL_12;
              }

LABEL_10:
              v41 = v106[8];

              if (v92)
              {
                goto LABEL_34;
              }

              goto LABEL_11;
            }

LABEL_9:
            if (!v13)
            {
              goto LABEL_33;
            }

            goto LABEL_10;
          }

LABEL_8:
          v40 = v106[6];

          if (v11)
          {
            goto LABEL_32;
          }

          goto LABEL_9;
        }

LABEL_7:
        if (!v12)
        {
          goto LABEL_31;
        }

        goto LABEL_8;
      }

LABEL_6:
      v39 = v106[4];

      if (v23)
      {
        goto LABEL_30;
      }

      goto LABEL_7;
    }

    if (!v16)
    {
      goto LABEL_29;
    }

    goto LABEL_6;
  }

  v35 = sub_1ABA7ABE4();
  sub_1ABAD219C(v35, v36);
  sub_1ABA8F54C();
  sub_1ABD1044C(v37);
  sub_1ABA8B4F0();
  sub_1ABF24E64();
  *v106 = v107;
  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  sub_1ABA8B6EC();
  sub_1ABA7E810(&qword_1ED870660);
  sub_1ABA8C974();
  sub_1ABF24E64();
  sub_1ABAAFAD4();
  sub_1ABD1B178();
  sub_1ABA8C974();
  sub_1ABF24E64();
  v106[2] = v107;
  sub_1ABD1AF94();
  sub_1ABA8C974();
  sub_1ABF24E64();
  v106[3] = v107;
  sub_1ABA8B908();
  sub_1ABA8C974();
  sub_1ABF24E64();
  v106[4] = v107;
  sub_1ABD1AFDC();
  sub_1ABA8C974();
  sub_1ABF24E64();
  v106[5] = v107;
  sub_1ABD1AFD0();
  sub_1ABA8C974();
  sub_1ABF24E64();
  v106[6] = v107;
  sub_1ABD1AFC4();
  sub_1ABA8C974();
  sub_1ABF24E64();
  v106[7] = v107;
  sub_1ABD1AFB8();
  sub_1ABA8C974();
  sub_1ABF24E64();
  v106[8] = v107;
  sub_1ABD1AFE8();
  sub_1ABA8C974();
  sub_1ABF24E64();
  v106[9] = v107;
  sub_1ABA9FC3C(10);
  sub_1ABA88DC0();
  sub_1ABF24E64();
  v106[10] = v107;
  sub_1ABA9FC3C(11);
  sub_1ABA88DC0();
  sub_1ABF24E64();
  v106[11] = v107;
  sub_1ABA9FC3C(12);
  sub_1ABA88DC0();
  sub_1ABF24E64();
  v106[12] = v107;
  LOBYTE(v107) = 13;
  sub_1ABA7F460();
  sub_1ABD0C9E8(v62);
  sub_1ABA9EEBC();
  sub_1ABAB522C();
  sub_1ABF24E64();
  v63 = v105[17];
  sub_1ABAE2F1C();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABD0A2D4();
  sub_1ABD1AF3C();
  sub_1ABAB522C();
  sub_1ABF24E64();
  sub_1ABD1B3A0();
  v66 = v65 + *(v64 + 72);
  sub_1ABD1B8C4(v67);
  sub_1ABAD219C(&qword_1EB4D6E28, &unk_1ABF50F18);
  sub_1ABD0C070();
  sub_1ABA9F1AC();
  sub_1ABD1B7CC();
  sub_1ABF24E64();
  v68 = v106 + v105[19];
  sub_1ABD1B104(v107);
  sub_1ABA9FC3C(16);
  sub_1ABD1B7CC();
  sub_1ABF24E64();
  v69 = v106 + v105[20];
  sub_1ABD1B104(v107);
  sub_1ABA9FC3C(17);
  sub_1ABD1B7CC();
  sub_1ABF24E64();
  v70 = v106 + v105[21];
  sub_1ABD1B104(v107);
  sub_1ABAD219C(&qword_1EB4D6FA0, &qword_1ABF50FB8);
  sub_1ABD0CE68();
  sub_1ABAA112C();
  sub_1ABA8A7A4();
  sub_1ABD1B3A0();
  *(v73 + *(v71 + 88)) = v72;
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABD0A568();
  sub_1ABAA112C();
  sub_1ABA8A7A4();
  sub_1ABD1B3A0();
  *(v76 + *(v74 + 92)) = v75;
  sub_1ABAD219C(&qword_1EB4D6FB8, &qword_1ABF50FC8);
  sub_1ABD0CF18();
  sub_1ABAA112C();
  sub_1ABA8A7A4();
  sub_1ABD1B3A0();
  *(v79 + *(v77 + 96)) = v78;
  sub_1ABAD219C(&qword_1EB4D6FD0, &qword_1ABF50FD8);
  sub_1ABD0CFC8();
  sub_1ABAA112C();
  sub_1ABA8A7A4();
  sub_1ABD1B3A0();
  *(v82 + *(v80 + 100)) = v81;
  sub_1ABAD219C(&qword_1EB4D6FE8, &qword_1ABF50FE8);
  sub_1ABD0D078();
  sub_1ABAA112C();
  sub_1ABA8A7A4();
  sub_1ABD1B3A0();
  *(v85 + *(v83 + 104)) = v84;
  sub_1ABAD219C(&qword_1EB4D65A0, &qword_1ABF50B40);
  sub_1ABD0A1FC();
  sub_1ABAA112C();
  sub_1ABA8A7A4();
  *(v106 + v105[27]) = v107;
  sub_1ABA8AB1C(24);
  sub_1ABAB522C();
  sub_1ABF24E64();
  sub_1ABD1B3A0();
  v88 = v87 + *(v86 + 112);
  sub_1ABD1B8C4(v89);
  sub_1ABAD219C(&qword_1EB4D7000, &qword_1ABF50FF0);
  sub_1ABD0D150();
  sub_1ABAA112C();
  sub_1ABA8A7A4();
  v90 = sub_1ABA89164();
  v91(v90);
  *(v106 + v105[29]) = v107;
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_49:
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void static CustomGraphTopic.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xD8), *(_Records_GDEntityClass_records + 0xE0), *(_Records_GDEntityClass_records + 0xE0 + 8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t CustomGraphTopic.init<A>(from:initializationResources:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABA9783C(a1, a2, a3);
  sub_1ABAB5F50();
  sub_1ABA9FF6C();
  swift_getAssociatedConformanceWitness();
  sub_1ABA8CECC();
  v11 = sub_1ABCEC0D8(v4, v5, v6, v7, v8, v9, v10);
  if (!v3)
  {
    sub_1ABD1BCF8(v11, v12, v13, v14, v15, v16, v17, v18, v25, v26, v27, v28, v29, v30, v31, v32, v19);
  }

  sub_1ABA8AD50();
  v21 = *(v20 + 8);
  v22 = sub_1ABA7EDF8();
  return v23(v22);
}

void sub_1ABCE5C80(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphTopic init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xD8), *(_Records_GDEntityClass_records + 0xE0), *(_Records_GDEntityClass_records + 0xE0 + 8), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xD8), *(_Records_GDEntityClass_records + 0xE0), *(_Records_GDEntityClass_records + 0xE0 + 8), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABCE5F10(uint64_t *a1, uint64_t a2)
{
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    return;
  }

  v24[7] = v2;
  v24[8] = v3;
  v6 = *a1;
  v7 = a1[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[1440], *(_Records_GDEntityPredicate_records + 361), *(_Records_GDEntityPredicate_records + 362), __dst);
  if (__dst[0] == v6 && __dst[1] == v7)
  {
  }

  else
  {
    v9 = sub_1ABF25054();

    if ((v9 & 1) == 0)
    {
      return;
    }
  }

  if (*(a1 + 97))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v10 = sub_1ABF237F4();
    sub_1ABA7AA24(v10, qword_1ED871B40);
    sub_1ABAE2EC4();
    v11 = sub_1ABF237D4();
    v12 = sub_1ABF24664();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24[0] = v14;
      *v13 = 136642819;
      memcpy(__dst, a1, 0x62uLL);
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v15 = sub_1ABF23C94();
      v17 = sub_1ABADD6D8(v15, v16, v24);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1ABA78000, v11, v12, "Failed to parse %{sensitive}s.", v13, 0xCu);
      sub_1ABA84B54(v14);
      MEMORY[0x1AC5AB8B0](v14, -1, -1);
      MEMORY[0x1AC5AB8B0](v13, -1, -1);
    }

    else
    {

      sub_1ABAB480C(a1, &qword_1EB4D1148, &qword_1ABF332D0);
    }
  }

  else
  {
    v19 = a1[5];
    v18 = a1[6];
    swift_beginAccess();

    sub_1ABB4DC20();
    v20 = *(*(a2 + 16) + 16);
    sub_1ABB4E024(v20);
    v21 = *(a2 + 16);
    *(v21 + 16) = v20 + 1;
    v22 = v21 + 16 * v20;
    *(v22 + 32) = v19;
    *(v22 + 40) = v18;
    *(a2 + 16) = v21;
    swift_endAccess();
  }
}

void sub_1ABCE61CC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v46 = *(a3 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v44 - v10;
  v12 = *(v11 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v44 - v17;
  (*(v12 + 24))(v51, a3, v12, v16);
  v47 = a2;
  v48 = v14;
  v49 = a1;
  v44 = v8;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    return;
  }

  v20 = v51[0];
  v19 = v51[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[1440], *(_Records_GDEntityPredicate_records + 361), *(_Records_GDEntityPredicate_records + 362), v50);
  if (v50[0] == v20 && v50[1] == v19)
  {
  }

  else
  {
    v22 = sub_1ABF25054();

    if ((v22 & 1) == 0)
    {
      return;
    }
  }

  v23 = v49;
  (*(v12 + 32))(a3, v12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v27 = v26;
  (*(v48 + 8))(v18, AssociatedTypeWitness);
  if (v27)
  {
    v28 = v47;
    swift_beginAccess();
    sub_1ABB4DC20();
    v29 = *(*(v28 + 16) + 16);
    sub_1ABB4E024(v29);
    v30 = *(v28 + 16);
    *(v30 + 16) = v29 + 1;
    v31 = v30 + 16 * v29;
    *(v31 + 32) = v25;
    *(v31 + 40) = v27;
    *(v28 + 16) = v30;
    swift_endAccess();
  }

  else
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v32 = sub_1ABF237F4();
    sub_1ABA7AA24(v32, qword_1ED871B40);
    v34 = v45;
    v33 = v46;
    v35 = *(v46 + 16);
    v35(v45, v23, a3);
    v36 = sub_1ABF237D4();
    v37 = sub_1ABF24664();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50[0] = v49;
      *v38 = 136642819;
      v35(v44, v34, a3);
      v39 = sub_1ABF23C94();
      v41 = v40;
      (*(v33 + 8))(v34, a3);
      v42 = sub_1ABADD6D8(v39, v41, v50);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_1ABA78000, v36, v37, "Failed to parse %{sensitive}s.", v38, 0xCu);
      v43 = v49;
      sub_1ABA84B54(v49);
      MEMORY[0x1AC5AB8B0](v43, -1, -1);
      MEMORY[0x1AC5AB8B0](v38, -1, -1);
    }

    else
    {

      (*(v33 + 8))(v34, a3);
    }
  }
}

uint64_t sub_1ABCE66AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496465707974 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6580593 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

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

uint64_t sub_1ABCE6774(char a1)
{
  if (a1)
  {
    return 6580593;
  }

  else
  {
    return 0x64496465707974;
  }
}

uint64_t sub_1ABCE67C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABCE66AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABCE67EC(uint64_t a1)
{
  v2 = sub_1ABD0DA6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCE6828(uint64_t a1)
{
  v2 = sub_1ABD0DA6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABCE68CC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  return sub_1ABD9CD5C(*v1, a1);
}

void CustomGraphTopic.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABD1BABC();
  v3 = sub_1ABAD219C(&qword_1EB4D7080, &qword_1ABF51000);
  sub_1ABA96D00(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7E338();
  v9 = *v0;
  v10 = v0[3];
  v18 = v0[2];
  v19 = v0[1];
  v11 = v2[4];
  sub_1ABA88DCC(v2, v2[3]);
  sub_1ABD0DA6C();
  sub_1ABA82E0C();
  sub_1ABA9EE14();
  sub_1ABF252E4();
  v12 = sub_1ABAA1DFC();
  sub_1ABAD219C(v12, v13);
  sub_1ABA7D99C();
  sub_1ABD1044C(v14);
  sub_1ABAB56F0();
  sub_1ABD1B97C();
  if (!v1)
  {
    sub_1ABD1BAB0();
    sub_1ABA8B6EC();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();
  }

  v15 = *(v5 + 8);
  v16 = sub_1ABA7D0EC();
  v17(v16);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphTopic.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA95324();
  v2 = sub_1ABAD219C(&qword_1EB4D70A0, &qword_1ABF51010);
  sub_1ABA7BB64(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BCE0();
  sub_1ABA9474C();
  sub_1ABD0DA6C();
  sub_1ABAA0704();
  sub_1ABA8177C();
  sub_1ABF252C4();
  if (!v1)
  {
    v6 = sub_1ABAA1DFC();
    sub_1ABAD219C(v6, v7);
    sub_1ABD1BA98();
    sub_1ABA8F54C();
    sub_1ABD1044C(v8);
    sub_1ABA8B4F0();
    sub_1ABD1ACAC();
    sub_1ABD1B7A4();
    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABA89A14();
    sub_1ABD0A2D4();
    sub_1ABAA112C();
    sub_1ABAA43F0();
    v9 = sub_1ABA7BFF0();
    v10(v9);
    sub_1ABD1BD24();
  }

  sub_1ABA84B54(v0);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void static CustomGraphSong.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x570), *(_Records_GDEntityClass_records + 0x578), *(_Records_GDEntityClass_records + 0x580), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t CustomGraphSong.init<A, B>(with:initializationResources:)()
{
  sub_1ABAA05A0();
  sub_1ABD1B3B8();
  v1 = sub_1ABA8AA6C();
  sub_1ABCE6D0C(v1, v2);
  if (!v0)
  {
    sub_1ABD1C29C(v3, v9);
  }

  sub_1ABA8AD50();
  v5 = *(v4 + 8);
  v6 = sub_1ABA7EDF8();
  return v7(v6);
}

void sub_1ABCE6D0C(void (*a1)(void *__return_ptr, void (*)(uint64_t a1), void, void (*)(), void *)@<X0>, void *a2@<X8>)
{
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  v91 = (v2 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v93 = (v4 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v95 = (v5 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v86 = (v6 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v88 = v7 + 16;
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  v90 = v8 + 16;
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  v11 = v2;
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v4;
  v12[4] = v5;
  v12[5] = v6;
  v12[6] = v7;
  v12[7] = v8;
  v12[8] = v9;
  v12[9] = v10;

  v101 = v10;

  a1(__dst, sub_1ABCE7CDC, 0, sub_1ABD19434, v12);
  v13 = v98;
  if (v98)
  {
  }

  else
  {
    v80 = v8;
    v81 = v9;

    v78 = __dst[0];
    swift_beginAccess();
    v14 = *v90;
    v15 = *(*v90 + 16);

    v16 = 0;
    v17 = MEMORY[0x1E69E7CC0];
LABEL_4:
    v18 = 88 * v16 + 32;
    while (v15 != v16)
    {
      if (v16 >= *(v14 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        return;
      }

      memcpy(__dst, (v14 + v18), sizeof(__dst));
      if (__dst[4])
      {
        v19 = __dst[3] == 0x44496D616441 && __dst[4] == 0xE600000000000000;
        if (v19 || (sub_1ABF25054() & 1) != 0)
        {
          sub_1ABD0E5A0(__dst, v99);
          v20 = v13;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1ABADDE9C(0, *(v17 + 16) + 1, 1);
          }

          v22 = *(v17 + 16);
          v21 = *(v17 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_1ABADDE9C((v21 > 1), v22 + 1, 1);
          }

          ++v16;
          *(v17 + 16) = v22 + 1;
          memcpy((v17 + 88 * v22 + 32), __dst, 0x58uLL);
          v13 = v20;
          goto LABEL_4;
        }
      }

      v18 += 88;
      ++v16;
    }

    v23 = 0;
    v24 = *(v17 + 16);
    v25 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v26 = (v17 + 88 + 88 * v23);
    v27 = v93;
    while (v24 != v23)
    {
      if (v23 >= *(v17 + 16))
      {
        goto LABEL_34;
      }

      v28 = v26 + 11;
      ++v23;
      v29 = *v26;
      v26 += 11;
      if (v29)
      {
        v30 = *(v28 - 12);

        v31 = v13;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = v25[2];
          sub_1ABAAA4F4();
          v25 = v35;
        }

        v32 = v25[2];
        if (v32 >= v25[3] >> 1)
        {
          sub_1ABAAA4F4();
          v25 = v36;
        }

        v25[2] = v32 + 1;
        v33 = &v25[2 * v32];
        v33[4] = v30;
        v33[5] = v29;
        v13 = v31;
        goto LABEL_20;
      }
    }

    v37 = v25;

    sub_1ABC4CABC(v78, v38, v39, v40, v41, v42, v43, v44);
    v45 = v86;
    v79 = __dst[0];
    swift_beginAccess();
    v46 = *v91;
    v92 = sub_1ABB2B834(*v91);
    v77 = v47;
    swift_beginAccess();
    v94 = *v93;
    v48 = sub_1ABB2B834(*v27);
    v75 = v49;
    v76 = v48;
    swift_beginAccess();
    v50 = *v95;
    v96 = sub_1ABB2B834(*v95);
    v74 = v51;
    swift_beginAccess();
    v87 = *v86;
    v52 = sub_1ABB2B834(*v45);
    v72 = v53;
    v73 = v52;
    swift_beginAccess();
    v54 = *v88;
    if (*(*v88 + 16))
    {
      v89 = v54[4];
      v71 = v54[5];
      v55 = v54[6];
      v68 = v54[8];
      v69 = v54[7];

      v70 = v55;
    }

    else
    {
      v89 = 0;
      v70 = 0;
      v71 = 0;
      v68 = 0;
      v69 = 0;
    }

    v56 = a2;
    v57 = v37;
    v67 = v37;
    v58 = *(v80 + 16);
    v85 = sub_1ABB2B834(v57);
    v66 = v59;
    swift_beginAccess();
    v60 = *(v81 + 16);
    v82 = sub_1ABB2B834(v60);
    v65 = v61;
    swift_beginAccess();
    v62 = *(v101 + 16);
    v83 = sub_1ABB2B834(v62);
    v64 = v63;

    *v56 = v79;
    v56[1] = v46;
    v56[2] = v92;
    v56[3] = v77;
    v56[4] = v94;
    v56[5] = v76;
    v56[6] = v75;
    v56[7] = v50;
    v56[8] = v96;
    v56[9] = v74;
    v56[10] = v87;
    v56[11] = v73;
    v56[12] = v72;
    v56[13] = v54;
    v56[14] = v89;
    v56[15] = v71;
    v56[16] = v70;
    v56[17] = v69;
    v56[18] = v68;
    v56[19] = v58;
    v56[20] = v67;
    v56[21] = v85;
    v56[22] = v66;
    v56[23] = v60;
    v56[24] = v82;
    v56[25] = v65;
    v56[26] = v62;
    v56[27] = v83;
    v56[28] = v64;
  }
}

void sub_1ABCE74BC()
{
  sub_1ABA7BCA8();
  v104 = v1;
  v101 = v2;
  v102 = v3;
  v106 = v4;
  sub_1ABA7D028();
  v110 = swift_allocObject();
  sub_1ABAB5EA4(v110);
  v87 = v5;
  sub_1ABA7D028();
  v6 = swift_allocObject();
  sub_1ABAB5EA4(v6);
  v89 = v7;
  sub_1ABA7D028();
  v8 = swift_allocObject();
  sub_1ABAB5EA4(v8);
  v97 = v9;
  sub_1ABA7D028();
  v10 = swift_allocObject();
  sub_1ABAB5EA4(v10);
  v99 = v11;
  sub_1ABA7D028();
  v12 = swift_allocObject();
  sub_1ABAB5EA4(v12);
  v93 = v13;
  sub_1ABA7D028();
  v14 = swift_allocObject();
  sub_1ABAB5EA4(v14);
  v95 = v15;
  sub_1ABA7D028();
  v16 = swift_allocObject();
  sub_1ABAB5EA4(v16);
  sub_1ABA7D028();
  v17 = swift_allocObject();
  sub_1ABAB5EA4(v17);
  v18 = swift_allocObject();
  v18[2] = v101;
  v18[3] = v102;
  v18[4] = v110;
  v18[5] = v6;
  v18[6] = v8;
  v18[7] = v10;
  v18[8] = v12;
  v18[9] = v14;
  v18[10] = v16;
  v18[11] = v17;

  sub_1ABD1BAC8();
  v104();
  if (v0)
  {
  }

  else
  {
    v105 = v17;
    v86 = v14;
    v103 = v16;

    v84 = v109[0];
    sub_1ABD1B03C();
    v19 = *v95;
    v20 = *(*v95 + 16);

    v21 = 0;
    v22 = MEMORY[0x1E69E7CC0];
LABEL_4:
    v23 = 88 * v21 + 32;
    v24 = v106;
    while (v20 != v21)
    {
      if (v21 >= *(v19 + 16))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        return;
      }

      memcpy(v109, (v19 + v23), 0x58uLL);
      if (v109[4])
      {
        v25 = v109[3] == 0x44496D616441 && v109[4] == 0xE600000000000000;
        if (v25 || (sub_1ABF25054() & 1) != 0)
        {
          sub_1ABD0E5A0(v109, v108);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1ABA9F048();
            v26 = sub_1ABA83F84();
            sub_1ABADDE9C(v26, v27, v28);
          }

          v30 = *(v22 + 16);
          v29 = *(v22 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_1ABA7BBEC(v29);
            sub_1ABD1BAEC();
            sub_1ABADDE9C(v31, v32, v33);
          }

          ++v21;
          *(v22 + 16) = v30 + 1;
          memcpy((v22 + 88 * v30 + 32), v109, 0x58uLL);
          goto LABEL_4;
        }
      }

      v23 += 88;
      ++v21;
    }

    v34 = 0;
    v35 = *(v22 + 16);
    v36 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v37 = (v22 + 88 + 88 * v34);
    while (v35 != v34)
    {
      if (v34 >= *(v22 + 16))
      {
        goto LABEL_36;
      }

      v38 = v37 + 11;
      ++v34;
      v39 = *v37;
      v37 += 11;
      if (v39)
      {
        v40 = *(v38 - 12);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = v36[2];
          sub_1ABA7BEF0();
          sub_1ABAAA4F4();
          v36 = v45;
        }

        v42 = v36[2];
        v41 = v36[3];
        if (v42 >= v41 >> 1)
        {
          sub_1ABA7BBEC(v41);
          sub_1ABAAA4F4();
          v36 = v46;
        }

        v36[2] = v42 + 1;
        v43 = &v36[2 * v42];
        v43[4] = v40;
        v43[5] = v39;
        v24 = v106;
        goto LABEL_20;
      }
    }

    v47 = v36;

    sub_1ABC4CABC(v84, v48, v49, v50, v51, v52, v53, v54);
    v96 = v109[0];
    sub_1ABA8A740();
    v107 = *v87;
    v88 = sub_1ABB2B834(*v87);
    v85 = v55;
    sub_1ABA8A740();
    v90 = *v89;
    v56 = sub_1ABB2B834(v90);
    v82 = v57;
    v83 = v56;
    sub_1ABD1B1F4();
    v72 = *v97;
    v98 = sub_1ABB2B834(*v97);
    v81 = v58;
    sub_1ABD1B058();
    v59 = *v99;
    v100 = sub_1ABB2B834(*v99);
    v80 = v60;
    sub_1ABD1B03C();
    v61 = *v93;
    if (*(*v93 + 16))
    {
      v94 = v61[4];
      v79 = v61[5];
      v62 = v61[6];
      v76 = v61[8];
      v77 = v61[7];

      v78 = v62;
    }

    else
    {
      v94 = 0;
      v78 = 0;
      v79 = 0;
      v76 = 0;
      v77 = 0;
    }

    v75 = v47;
    v69 = *(v86 + 16);
    v63 = sub_1ABB2B834(v47);
    v73 = v64;
    v74 = v63;
    sub_1ABAA9068();
    v65 = *(v103 + 16);
    v91 = sub_1ABB2B834(v65);
    v71 = v66;
    sub_1ABD1B1F4();
    v67 = *(v105 + 16);
    v92 = sub_1ABB2B834(v67);
    v70 = v68;

    *v24 = v96;
    v24[1] = v107;
    v24[2] = v88;
    v24[3] = v85;
    v24[4] = v90;
    v24[5] = v83;
    v24[6] = v82;
    v24[7] = v72;
    v24[8] = v98;
    v24[9] = v81;
    v24[10] = v59;
    v24[11] = v100;
    v24[12] = v80;
    v24[13] = v61;
    v24[14] = v94;
    v24[15] = v79;
    v24[16] = v78;
    v24[17] = v77;
    v24[18] = v76;
    v24[19] = v69;
    v24[20] = v75;
    v24[21] = v74;
    v24[22] = v73;
    v24[23] = v65;
    v24[24] = v91;
    v24[25] = v71;
    v24[26] = v67;
    v24[27] = v92;
    v24[28] = v70;
  }

  sub_1ABA7BC90();
}

void CustomGraphSong.init<A>(enumerator:initializationResources:)()
{
  sub_1ABAAA9A8();
  v2 = sub_1ABA8AA6C();
  sub_1ABCE6D0C(v2, v3);
  if (!v1)
  {
    memcpy(v0, __src, 0xE8uLL);
  }
}

uint64_t CustomGraphSong.init<A>(from:initializationResources:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABA9783C(a1, a2, a3);
  sub_1ABAB5F50();
  sub_1ABA9FF6C();
  swift_getAssociatedConformanceWitness();
  sub_1ABA9DE80();
  sub_1ABCE74BC();
  if (!v3)
  {
    sub_1ABD1C29C(v4, v10);
  }

  sub_1ABA8AD50();
  v6 = *(v5 + 8);
  v7 = sub_1ABA7EDF8();
  return v8(v7);
}

void sub_1ABCE7CDC(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphSong init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x570), *(_Records_GDEntityClass_records + 0x578), *(_Records_GDEntityClass_records + 0x580), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x570), *(_Records_GDEntityClass_records + 0x578), *(_Records_GDEntityClass_records + 0x580), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABCE7F74(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_115:
    swift_once();
LABEL_89:
    v73 = sub_1ABF237F4();
    sub_1ABA7AA24(v73, qword_1ED871B40);
    sub_1ABAE2EC4();
    v36 = sub_1ABF237D4();
    v37 = sub_1ABF24664();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v100 = v39;
      *v38 = 136642819;
      memcpy(__dst, v10, 0x62uLL);
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v50 = sub_1ABF23C94();
      v52 = &v100;
      goto LABEL_69;
    }

    goto LABEL_91;
  }

  v14 = *a1;
  v15 = *(a1 + 1);
  v107 = a1;
  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), __dst);
  if (*&__dst[0] == v14 && *(&__dst[0] + 1) == v15)
  {

    goto LABEL_51;
  }

  v89 = a7;
  v17 = sub_1ABF25054();

  if (v17)
  {
LABEL_51:
    v34 = v107;
    if (!*(v107 + 97))
    {
      v42 = *(v107 + 5);
      v41 = *(v107 + 6);
LABEL_57:
      swift_beginAccess();

      sub_1ABB4DC20();
      v43 = *(*(a2 + 16) + 16);
      sub_1ABB4E024(v43);
      v44 = *(a2 + 16);
      *(v44 + 16) = v43 + 1;
      v45 = v44 + 16 * v43;
      *(v45 + 32) = v42;
      *(v45 + 40) = v41;
LABEL_58:
      *(a2 + 16) = v44;
LABEL_59:
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v35 = sub_1ABF237F4();
    sub_1ABA7AA24(v35, qword_1ED871B40);
    sub_1ABAE2EC4();
    v36 = sub_1ABF237D4();
    v37 = sub_1ABF24664();
    if (!os_log_type_enabled(v36, v37))
    {

      v46 = &qword_1EB4D1148;
      v47 = &qword_1ABF332D0;
      v48 = v34;
LABEL_92:
      sub_1ABAB480C(v48, v46, v47);
      return;
    }

    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v103 = v39;
    *v38 = 136642819;
    v40 = v34;
LABEL_68:
    memcpy(__dst, v40, 0x62uLL);
    sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
    v50 = sub_1ABF23C94();
    v52 = &v103;
LABEL_69:
    v53 = sub_1ABADD6D8(v50, v51, v52);

    *(v38 + 4) = v53;
    _os_log_impl(&dword_1ABA78000, v36, v37, "Failed to parse %{sensitive}s.", v38, 0xCu);
    sub_1ABA84B54(v39);
    MEMORY[0x1AC5AB8B0](v39, -1, -1);
    MEMORY[0x1AC5AB8B0](v38, -1, -1);

    return;
  }

  v10 = v107;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    __break(1u);
    goto LABEL_117;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1680], *(_Records_GDEntityPredicate_records + 421), *(_Records_GDEntityPredicate_records + 422), __dst);
  if (*&__dst[0] == v14 && *(&__dst[0] + 1) == v15)
  {

LABEL_63:
    if (!*(v10 + 97))
    {
      v55 = *(v10 + 40);
      v54 = *(v10 + 48);
LABEL_71:
      swift_beginAccess();

      sub_1ABB4DC20();
      v56 = *(*(a3 + 16) + 16);
      sub_1ABB4E024(v56);
      v57 = *(a3 + 16);
      *(v57 + 16) = v56 + 1;
      v58 = v57 + 16 * v56;
      *(v58 + 32) = v55;
      *(v58 + 40) = v54;
      *(a3 + 16) = v57;
      goto LABEL_59;
    }

LABEL_64:
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v49 = sub_1ABF237F4();
    sub_1ABA7AA24(v49, qword_1ED871B40);
    sub_1ABAE2EC4();
    v36 = sub_1ABF237D4();
    v37 = sub_1ABF24664();
    if (!os_log_type_enabled(v36, v37))
    {
LABEL_91:

      v46 = &qword_1EB4D1148;
      v47 = &qword_1ABF332D0;
      v48 = v10;
      goto LABEL_92;
    }

    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v103 = v39;
    *v38 = 136642819;
    v40 = v10;
    goto LABEL_68;
  }

  v19 = sub_1ABF25054();

  if (v19)
  {
    goto LABEL_63;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1692], *(_Records_GDEntityPredicate_records + 424), *(_Records_GDEntityPredicate_records + 425), __dst);
  if (*&__dst[0] == v14 && *(&__dst[0] + 1) == v15)
  {

LABEL_73:
    if (!*(v10 + 97))
    {
      v59 = *(v10 + 40);
      v60 = *(v10 + 48);
      a2 = a4;
      swift_beginAccess();

      sub_1ABB4DC20();
      v61 = *(*(a4 + 16) + 16);
      sub_1ABB4E024(v61);
      v44 = *(a4 + 16);
      *(v44 + 16) = v61 + 1;
      v62 = v44 + 16 * v61;
      *(v62 + 32) = v59;
      *(v62 + 40) = v60;
      goto LABEL_58;
    }

    goto LABEL_64;
  }

  v21 = sub_1ABF25054();

  if (v21)
  {
    goto LABEL_73;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_120;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1596], *(_Records_GDEntityPredicate_records + 400), *(_Records_GDEntityPredicate_records + 401), __dst);
  if (*&__dst[0] == v14 && *(&__dst[0] + 1) == v15)
  {

LABEL_76:
    if (!*(v10 + 97))
    {
      v42 = *(v10 + 40);
      v41 = *(v10 + 48);
      a2 = a5;
      goto LABEL_57;
    }

    goto LABEL_64;
  }

  v23 = sub_1ABF25054();

  if (v23)
  {
    goto LABEL_76;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_122;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2172], *(_Records_GDEntityPredicate_records + 544), *(_Records_GDEntityPredicate_records + 545), __dst);
  if (*&__dst[0] == v14 && *(&__dst[0] + 1) == v15)
  {

LABEL_79:
    *(v105 + 10) = *(v10 + 82);
    v63 = *(v10 + 56);
    v103 = *(v10 + 40);
    v104 = v63;
    v105[0] = *(v10 + 72);
    if (BYTE9(v105[1]) == 1)
    {
      v64 = *(v10 + 56);
      v94 = *(v10 + 40);
      v95 = v64;
      v96[0] = *(v10 + 72);
      *(v96 + 9) = *(v10 + 81);
      MEMORY[0x1EEE9AC00](v26);
      __dst[0] = v103;
      __dst[1] = v104;
      __dst[2] = v105[0];
      *(&__dst[2] + 10) = *(v105 + 10);
      sub_1ABAE2EC4();
      sub_1ABD191AC(__dst, &v100);
      sub_1ABCFAFF0(sub_1ABD1A8C8, &v97);
      if (v9)
      {
        v100 = v94;
        v101 = v95;
        v102[0] = v96[0];
        *(v102 + 9) = *(v96 + 9);
        sub_1ABD19208(&v100);
        sub_1ABAB480C(&v103, &qword_1EB4D7E60, &unk_1ABF5E780);
        return;
      }

      v65 = v98;
      if (v98)
      {
        v66 = *(&v98 + 1);
        v107 = *&v99[0];
        v67 = v97;
        v100 = v94;
        v101 = v95;
        v102[0] = v96[0];
        *(v102 + 9) = *(v96 + 9);
        sub_1ABD19208(&v100);
        swift_beginAccess();
        sub_1ABB4DEC0();
        v68 = *(*(a6 + 16) + 16);
        sub_1ABB4E2C4(v68);
        v69 = *(a6 + 16);
        *(v69 + 16) = v68 + 1;
        v70 = v69 + 40 * v68;
        *(v70 + 32) = v67;
        *(v70 + 48) = v65;
        *(v70 + 56) = v66;
        *(v70 + 64) = v107;
        *(a6 + 16) = v69;
        swift_endAccess();
      }

      else
      {
        v100 = v94;
        v101 = v95;
        v102[0] = v96[0];
        *(v102 + 9) = *(v96 + 9);
        sub_1ABD19208(&v100);
      }

      v46 = &qword_1EB4D7E60;
      v47 = &unk_1ABF5E780;
      v48 = &v103;
      goto LABEL_92;
    }

LABEL_88:
    if (qword_1ED871B38 == -1)
    {
      goto LABEL_89;
    }

    goto LABEL_115;
  }

  v25 = sub_1ABF25054();

  if (v25)
  {
    goto LABEL_79;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[96], *(_Records_GDEntityPredicate_records + 25), *(_Records_GDEntityPredicate_records + 26), __dst);
  if (*&__dst[0] == v14 && *(&__dst[0] + 1) == v15)
  {
  }

  else
  {
    v28 = sub_1ABF25054();

    if ((v28 & 1) == 0)
    {
      if (_Records_GDEntityPredicate_records)
      {
        sub_1ABA91D48(_Records_GDEntityPredicate_records[2208], *(_Records_GDEntityPredicate_records + 553), *(_Records_GDEntityPredicate_records + 554), __dst);
        if (*&__dst[0] == v14 && *(&__dst[0] + 1) == v15)
        {
        }

        else
        {
          v31 = sub_1ABF25054();

          if ((v31 & 1) == 0)
          {
            if (_Records_GDEntityPredicate_records)
            {
              sub_1ABA91D48(_Records_GDEntityPredicate_records[2220], *(_Records_GDEntityPredicate_records + 556), *(_Records_GDEntityPredicate_records + 557), __dst);
              if (*&__dst[0] == v14 && *(&__dst[0] + 1) == v15)
              {
              }

              else
              {
                v33 = sub_1ABF25054();

                if ((v33 & 1) == 0)
                {
                  return;
                }
              }

              if (*(v107 + 97))
              {
                if (qword_1ED871B38 == -1)
                {
LABEL_110:
                  v88 = sub_1ABF237F4();
                  sub_1ABA7AA24(v88, qword_1ED871B40);
                  sub_1ABAE2EC4();
                  v79 = sub_1ABF237D4();
                  v80 = sub_1ABF24664();
                  if (os_log_type_enabled(v79, v80))
                  {
                    v81 = swift_slowAlloc();
                    v82 = swift_slowAlloc();
                    *&v103 = v82;
                    *v81 = 136642819;
                    v83 = v107;
                    goto LABEL_103;
                  }

                  v87 = v107;
LABEL_106:
                  sub_1ABAB480C(v87, &qword_1EB4D1148, &qword_1ABF332D0);
                  return;
                }

LABEL_120:
                swift_once();
                goto LABEL_110;
              }

              a3 = a9;
              v55 = *(v107 + 5);
              v54 = *(v107 + 6);
              goto LABEL_71;
            }

LABEL_124:
            __break(1u);
            return;
          }
        }

        if (*(v10 + 97))
        {
          if (qword_1ED871B38 == -1)
          {
LABEL_101:
            v78 = sub_1ABF237F4();
            sub_1ABA7AA24(v78, qword_1ED871B40);
            sub_1ABAE2EC4();
            v79 = sub_1ABF237D4();
            v80 = sub_1ABF24664();
            if (os_log_type_enabled(v79, v80))
            {
              v81 = swift_slowAlloc();
              v82 = swift_slowAlloc();
              *&v103 = v82;
              *v81 = 136642819;
              v83 = v10;
LABEL_103:
              memcpy(__dst, v83, 0x62uLL);
              sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
              v84 = sub_1ABF23C94();
              v86 = sub_1ABADD6D8(v84, v85, &v103);

              *(v81 + 4) = v86;
              _os_log_impl(&dword_1ABA78000, v79, v80, "Failed to parse %{sensitive}s.", v81, 0xCu);
              sub_1ABA84B54(v82);
              MEMORY[0x1AC5AB8B0](v82, -1, -1);
              MEMORY[0x1AC5AB8B0](v81, -1, -1);

              return;
            }

            v87 = v10;
            goto LABEL_106;
          }

LABEL_118:
          swift_once();
          goto LABEL_101;
        }

        v42 = *(v10 + 40);
        v41 = *(v10 + 48);
        a2 = a8;
        goto LABEL_57;
      }

LABEL_123:
      __break(1u);
      goto LABEL_124;
    }
  }

  *(v105 + 10) = *(v10 + 82);
  v71 = *(v10 + 56);
  v103 = *(v10 + 40);
  v104 = v71;
  v105[0] = *(v10 + 72);
  if (BYTE9(v105[1]) != 1)
  {
    goto LABEL_88;
  }

  v72 = *(v10 + 56);
  v97 = *(v10 + 40);
  v98 = v72;
  v99[0] = *(v10 + 72);
  *(v99 + 9) = *(v10 + 81);
  MEMORY[0x1EEE9AC00](v29);
  v100 = v103;
  v101 = v104;
  v102[0] = v105[0];
  *(v102 + 10) = *(v105 + 10);
  sub_1ABAE2EC4();
  sub_1ABD191AC(&v100, &v94);
  sub_1ABCF8EE8(sub_1ABD1A8C8, __dst);
  if (v9 || (v74 = *&__dst[1]) == 0)
  {
    v94 = v97;
    v95 = v98;
    v96[0] = v99[0];
    *(v96 + 9) = *(v99 + 9);
    sub_1ABD19208(&v94);
  }

  else
  {
    v94 = v97;
    v95 = v98;
    v96[0] = v99[0];
    *(v96 + 9) = *(v99 + 9);
    sub_1ABD19208(&v94);
    swift_beginAccess();
    sub_1ABB4DCE0();
    v75 = *(*(v89 + 16) + 16);
    sub_1ABB4E0E4(v75);
    v76 = *(v89 + 16);
    *(v76 + 16) = v75 + 1;
    v77 = v76 + 88 * v75;
    *(v77 + 32) = __dst[0];
    *(v77 + 48) = v74;
    *(v77 + 56) = *(&__dst[1] + 8);
    *(v77 + 72) = *(&__dst[2] + 8);
    *(v77 + 88) = *(&__dst[3] + 8);
    *(v77 + 104) = *(&__dst[4] + 8);
    *(v89 + 16) = v76;
    swift_endAccess();
  }

  sub_1ABAB480C(&v103, &qword_1EB4D7E60, &unk_1ABF5E780);
}

void sub_1ABCE8ECC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v209 = a8;
  v208 = a7;
  v211 = a6;
  v228 = a5;
  v231 = a4;
  v234 = a3;
  v238 = a2;
  v12 = a10;
  v13 = *(a11 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v221 = sub_1ABF247E4();
  v220 = *(v221 - 8);
  v15 = *(v220 + 64);
  MEMORY[0x1EEE9AC00](v221);
  v216 = &v202 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v224 = &v202 - v18;
  v226 = AssociatedTypeWitness;
  v222 = *(AssociatedTypeWitness - 8);
  v19 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v212 = &v202 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v214 = &v202 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v217 = &v202 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v219 = &v202 - v27;
  v237 = *(a10 - 8);
  v28 = *(v237 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v205 = &v202 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v207 = &v202 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v213 = &v202 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v218 = &v202 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v227 = &v202 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v230 = &v202 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v233 = &v202 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = (&v202 - v44);
  MEMORY[0x1EEE9AC00](v46);
  v236 = &v202 - v47;
  v48 = swift_checkMetadataState();
  v239 = *(v48 - 8);
  v49 = *(v239 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v206 = &v202 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v210 = &v202 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v215 = &v202 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v223 = &v202 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v229 = &v202 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v232 = &v202 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v202 - v62;
  v65 = MEMORY[0x1EEE9AC00](v64);
  v67 = &v202 - v66;
  v68 = *(v13 + 24);
  v250 = a1;
  v241 = a10;
  v69 = v13;
  v68(v246, a10, v13, v65);
  v235 = v45;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_123:
    swift_once();
LABEL_74:
    v145 = sub_1ABF237F4();
    sub_1ABA7AA24(v145, qword_1ED871B40);
    v104 = *(v12 + 16);
    v105 = v245;
LABEL_31:
    v106 = *(v105 - 32);
    v107 = v45;
    v108 = v241;
    v104(v106, v107, v241);
    v89 = sub_1ABF237D4();
    v109 = sub_1ABF24664();
    if (os_log_type_enabled(v89, v109))
    {
      v110 = swift_slowAlloc();
      v111 = v12;
LABEL_33:
      v112 = v110;
      v250 = swift_slowAlloc();
      *&v242 = v250;
      *v112 = 136642819;
      v104(v235, v106, v108);
      v113 = sub_1ABF23C94();
      v115 = v114;
      (*(v111 + 8))(v106, v108);
      v116 = sub_1ABADD6D8(v113, v115, &v242);

      *(v112 + 4) = v116;
      _os_log_impl(&dword_1ABA78000, v89, v109, "Failed to parse %{sensitive}s.", v112, 0xCu);
      v117 = v250;
      sub_1ABA84B54(v250);
      v118 = v117;
LABEL_34:
      MEMORY[0x1AC5AB8B0](v118, -1, -1);
      v97 = v112;
LABEL_35:
      MEMORY[0x1AC5AB8B0](v97, -1, -1);

      return;
    }

    (*(v12 + 8))(v106, v108);
    return;
  }

  v70 = v246[0];
  v12 = v246[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), &v242);
  v45 = v244;
  if (v242 == v70 && *(&v242 + 1) == v12)
  {

    goto LABEL_9;
  }

  v204 = v48;
  v203 = v70;
  v72 = sub_1ABF25054();

  if (v72)
  {
    v48 = v204;
LABEL_9:

    v73 = v241;
    (*(v13 + 32))(v241, v13);
    v74 = swift_getAssociatedConformanceWitness();
    v75 = (*(v74 + 24))(v48, v74);
    v76 = v48;
    v77 = v75;
    v79 = v78;
    (*(v239 + 8))(v67, v76);
    if (v79)
    {
      v80 = &v253;
LABEL_11:
      v81 = *(v80 - 32);
LABEL_12:
      swift_beginAccess();
      sub_1ABB4DC20();
      v82 = *(*(v81 + 16) + 16);
      sub_1ABB4E024(v82);
      v83 = *(v81 + 16);
      *(v83 + 16) = v82 + 1;
      v84 = v83 + 16 * v82;
      *(v84 + 32) = v77;
      *(v84 + 40) = v79;
      *(v81 + 16) = v83;
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v85 = sub_1ABF237F4();
    sub_1ABA7AA24(v85, qword_1ED871B40);
    v86 = v237;
    v87 = *(v237 + 16);
    v88 = v236;
    v87(v236, v250, v73);
    v89 = sub_1ABF237D4();
    v90 = sub_1ABF24664();
    if (!os_log_type_enabled(v89, v90))
    {

      (*(v86 + 8))(v88, v73);
      return;
    }

    v91 = swift_slowAlloc();
    v250 = swift_slowAlloc();
    *&v242 = v250;
    *v91 = 136642819;
    v87(v235, v88, v73);
    v92 = sub_1ABF23C94();
    v94 = v93;
    (*(v86 + 8))(v88, v73);
    v95 = sub_1ABADD6D8(v92, v94, &v242);

    *(v91 + 4) = v95;
    _os_log_impl(&dword_1ABA78000, v89, v90, "Failed to parse %{sensitive}s.", v91, 0xCu);
    v96 = v250;
    sub_1ABA84B54(v250);
    MEMORY[0x1AC5AB8B0](v96, -1, -1);
    v97 = v91;
    goto LABEL_35;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_125:
    swift_once();
LABEL_89:
    v167 = sub_1ABF237F4();
    sub_1ABA7AA24(v167, qword_1ED871B40);
    v104 = *(v12 + 16);
    v105 = &v242;
    goto LABEL_31;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1680], *(_Records_GDEntityPredicate_records + 421), *(_Records_GDEntityPredicate_records + 422), &v242);
  v98 = v242 == v203 && *(&v242 + 1) == v12;
  v45 = v250;
  if (v98)
  {

LABEL_26:

    (*(v13 + 32))(v241, v13);
    v100 = v204;
    v101 = swift_getAssociatedConformanceWitness();
    v77 = (*(v101 + 24))(v100, v101);
    v79 = v102;
    (*(v239 + 8))(v63, v100);
    if (v79)
    {
      v80 = &v252;
      goto LABEL_11;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v103 = sub_1ABF237F4();
    sub_1ABA7AA24(v103, qword_1ED871B40);
    v12 = v237;
    v104 = *(v237 + 16);
    v105 = &v251;
    goto LABEL_31;
  }

  v99 = sub_1ABF25054();

  if (v99)
  {
    goto LABEL_26;
  }

  v119 = v241;
  if (_Records_GDEntityPredicate_records)
  {
    sub_1ABA91D48(_Records_GDEntityPredicate_records[1692], *(_Records_GDEntityPredicate_records + 424), *(_Records_GDEntityPredicate_records + 425), &v242);
    if (v242 == v203 && *(&v242 + 1) == v12)
    {

LABEL_46:
      v122 = v204;

      v123 = v232;
      (*(v69 + 32))(v119, v69);
      v124 = swift_getAssociatedConformanceWitness();
      v125 = (*(v124 + 24))(v122, v124);
      v126 = v122;
      v77 = v125;
      v79 = v127;
      (*(v239 + 8))(v123, v126);
      if (v79)
      {
        v80 = &v250;
        goto LABEL_11;
      }

      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v128 = sub_1ABF237F4();
      sub_1ABA7AA24(v128, qword_1ED871B40);
      v12 = v237;
      v104 = *(v237 + 16);
      v105 = &v249;
      goto LABEL_31;
    }

    v121 = sub_1ABF25054();

    if (v121)
    {
      goto LABEL_46;
    }

    if (!_Records_GDEntityPredicate_records)
    {
      __break(1u);
LABEL_129:
      swift_once();
LABEL_119:
      v192 = sub_1ABF237F4();
      sub_1ABA7AA24(v192, qword_1ED871B40);
      v193 = *(v237 + 16);
      v193(v205, v250, v241);
      v89 = sub_1ABF237D4();
      v194 = sub_1ABF24664();
      if (os_log_type_enabled(v89, v194))
      {
        v112 = swift_slowAlloc();
        v195 = swift_slowAlloc();
        *&v242 = v195;
        *v112 = 136642819;
        v196 = v205;
        v197 = v241;
        v193(v235, v205, v241);
        v198 = sub_1ABF23C94();
        v200 = v199;
        (*(v237 + 8))(v196, v197);
        v201 = sub_1ABADD6D8(v198, v200, &v242);

        *(v112 + 4) = v201;
        _os_log_impl(&dword_1ABA78000, v89, v194, "Failed to parse %{sensitive}s.", v112, 0xCu);
        sub_1ABA84B54(v195);
        v118 = v195;
        goto LABEL_34;
      }

      (*(v237 + 8))(v205, v241);
      return;
    }

    sub_1ABA91D48(_Records_GDEntityPredicate_records[1596], *(_Records_GDEntityPredicate_records + 400), *(_Records_GDEntityPredicate_records + 401), &v242);
    if (v242 == v203 && *(&v242 + 1) == v12)
    {

LABEL_59:
      v131 = v204;

      v132 = v229;
      (*(v69 + 32))(v119, v69);
      v133 = swift_getAssociatedConformanceWitness();
      v134 = (*(v133 + 24))(v131, v133);
      v135 = v131;
      v77 = v134;
      v79 = v136;
      (*(v239 + 8))(v132, v135);
      if (v79)
      {
        v80 = &v248;
        goto LABEL_11;
      }

      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v137 = sub_1ABF237F4();
      sub_1ABA7AA24(v137, qword_1ED871B40);
      v12 = v237;
      v104 = *(v237 + 16);
      v105 = &v247;
      goto LABEL_31;
    }

    v130 = sub_1ABF25054();

    if (v130)
    {
      goto LABEL_59;
    }

    if (_Records_GDEntityPredicate_records)
    {
      sub_1ABA91D48(_Records_GDEntityPredicate_records[2172], *(_Records_GDEntityPredicate_records + 544), *(_Records_GDEntityPredicate_records + 545), &v242);
      if (v242 == v203 && *(&v242 + 1) == v12)
      {

        goto LABEL_72;
      }

      v139 = sub_1ABF25054();

      if (v139)
      {
LABEL_72:
        v140 = v204;

        v141 = v223;
        (*(v13 + 32))(v119, v13);
        v142 = v224;
        (*(AssociatedConformanceWitness + 40))(v140, AssociatedConformanceWitness);
        (*(v239 + 8))(v141, v140);
        v143 = v226;
        v144 = sub_1ABA7E1E0(v142, 1, v226);
        v12 = v237;
        if (v144 != 1)
        {
          v146 = v142;
          v147 = v222;
          v148 = v219;
          (*(v222 + 32))(v219, v146, v143);
          v149 = v217;
          (*(v147 + 16))(v217, v148, v143);
          v150 = swift_getAssociatedConformanceWitness();
          v151 = v240;
          CustomGraphQuantityRelationship.init<A>(from:initializationResources:)(v149, v143, v150);
          v240 = v151;
          if (v151 || (v154 = v243) == 0)
          {
            (*(v147 + 8))(v148, v143);
          }

          else
          {
            v155 = v244;
            v156 = v242;
            v157 = v211;
            swift_beginAccess();
            sub_1ABB4DEC0();
            v158 = *(*(v157 + 16) + 16);
            sub_1ABB4E2C4(v158);
            v159 = *(v157 + 16);
            *(v159 + 16) = v158 + 1;
            v160 = v159 + 40 * v158;
            *(v160 + 32) = v156;
            *(v160 + 48) = v154;
            *(v160 + 56) = v155;
            *(v157 + 16) = v159;
            swift_endAccess();
            (*(v147 + 8))(v219, v226);
          }

          return;
        }

        (*(v220 + 8))(v142, v221);
        if (qword_1ED871B38 == -1)
        {
          goto LABEL_74;
        }

        goto LABEL_123;
      }

      if (_Records_GDEntityPredicate_records)
      {
        sub_1ABA91D48(_Records_GDEntityPredicate_records[96], *(_Records_GDEntityPredicate_records + 25), *(_Records_GDEntityPredicate_records + 26), &v242);
        if (v242 == v203 && *(&v242 + 1) == v12)
        {

          goto LABEL_87;
        }

        v153 = sub_1ABF25054();

        if (v153)
        {
LABEL_87:
          v161 = v204;

          v162 = v215;
          (*(v69 + 32))(v119, v69);
          v163 = v216;
          (*(AssociatedConformanceWitness + 40))(v161, AssociatedConformanceWitness);
          v164 = v163;
          (*(v239 + 8))(v162, v161);
          v165 = v226;
          v166 = sub_1ABA7E1E0(v163, 1, v226);
          v12 = v237;
          if (v166 != 1)
          {
            v168 = v222;
            v169 = v214;
            (*(v222 + 32))(v214, v164, v165);
            (*(v168 + 16))(v212, v169, v165);
            swift_getAssociatedConformanceWitness();
            v170 = v240;
            CustomGraphIdentifierRelationship.init<A>(from:initializationResources:)();
            v240 = v170;
            if (!v170)
            {
              v171 = v243;
              if (v243)
              {
                v172 = v208;
                swift_beginAccess();
                sub_1ABB4DCE0();
                v173 = *(*(v172 + 16) + 16);
                sub_1ABB4E0E4(v173);
                v174 = *(v172 + 16);
                *(v174 + 16) = v173 + 1;
                v175 = v174 + 88 * v173;
                *(v175 + 32) = v242;
                *(v175 + 48) = v171;
                *(v175 + 56) = v244;
                *(v175 + 72) = v245[0];
                *(v175 + 88) = v245[1];
                *(v175 + 104) = v245[2];
                *(v172 + 16) = v174;
                swift_endAccess();
              }
            }

            (*(v168 + 8))(v169, v165);
            return;
          }

          (*(v220 + 8))(v164, v221);
          if (qword_1ED871B38 == -1)
          {
            goto LABEL_89;
          }

          goto LABEL_125;
        }

        if (_Records_GDEntityPredicate_records)
        {
          sub_1ABA91D48(_Records_GDEntityPredicate_records[2208], *(_Records_GDEntityPredicate_records + 553), *(_Records_GDEntityPredicate_records + 554), &v242);
          if (v242 == v203 && *(&v242 + 1) == v12)
          {

            goto LABEL_102;
          }

          v177 = sub_1ABF25054();

          if (v177)
          {
LABEL_102:
            v178 = v204;
            v179 = v210;

            (*(v13 + 32))(v119, v13);
            v180 = swift_getAssociatedConformanceWitness();
            v181 = (*(v180 + 24))(v178, v180);
            v182 = v178;
            v77 = v181;
            v79 = v183;
            (*(v239 + 8))(v179, v182);
            if (v79)
            {
              v80 = &v241;
              goto LABEL_11;
            }

            if (qword_1ED871B38 == -1)
            {
              goto LABEL_105;
            }

            goto LABEL_127;
          }

          if (_Records_GDEntityPredicate_records)
          {
            sub_1ABA91D48(_Records_GDEntityPredicate_records[2220], *(_Records_GDEntityPredicate_records + 556), *(_Records_GDEntityPredicate_records + 557), &v242);
            if (v242 == v203 && *(&v242 + 1) == v12)
            {
            }

            else
            {
              v187 = sub_1ABF25054();

              if ((v187 & 1) == 0)
              {
                return;
              }
            }

            v188 = v206;
            (*(v13 + 32))(v241, v13);
            v189 = v204;
            v190 = swift_getAssociatedConformanceWitness();
            v77 = (*(v190 + 24))(v189, v190);
            v79 = v191;
            (*(v239 + 8))(v188, v189);
            if (v79)
            {
              v81 = a9;
              goto LABEL_12;
            }

            if (qword_1ED871B38 == -1)
            {
              goto LABEL_119;
            }

            goto LABEL_129;
          }

LABEL_133:
          __break(1u);
          return;
        }

LABEL_132:
        __break(1u);
        goto LABEL_133;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_132;
  }

  __break(1u);
LABEL_127:
  swift_once();
LABEL_105:
  v184 = sub_1ABF237F4();
  sub_1ABA7AA24(v184, qword_1ED871B40);
  v111 = v237;
  v104 = *(v237 + 16);
  v106 = v207;
  v185 = v45;
  v108 = v241;
  v104(v207, v185, v241);
  v89 = sub_1ABF237D4();
  v109 = sub_1ABF24664();
  if (os_log_type_enabled(v89, v109))
  {
    v110 = swift_slowAlloc();
    goto LABEL_33;
  }

  (*(v111 + 8))(v106, v108);
}

uint64_t CustomGraphQuantityRelationship.init<A>(from:initializationResources:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABA9783C(a1, a2, a3);
  sub_1ABAB5F50();
  sub_1ABA9FF6C();
  swift_getAssociatedConformanceWitness();
  sub_1ABA9DE80();
  sub_1ABCFB130(v5, v6, v7, v8);
  if (v3)
  {
    goto LABEL_4;
  }

  if (v20)
  {
    *v4 = v18;
    v4[1] = v19;
    v4[2] = v20;
    v4[3] = v21;
    v4[4] = v22;
LABEL_4:
    sub_1ABA8AD50();
    v10 = *(v9 + 8);
    v11 = sub_1ABA7EDF8();
    return v12(v11);
  }

  sub_1ABA8AD50();
  v15 = *(v14 + 8);
  v16 = sub_1ABA7EDF8();
  result = v17(v16);
  *v4 = v18;
  v4[1] = v19;
  v4[2] = 0;
  v4[3] = v21;
  v4[4] = v22;
  return result;
}

uint64_t CustomGraphSong.init(typedId:all_name:all_artistName:all_albumName:all_genre:all_duration:all_identifiers:all_songAdamId:all_albumAdamId:all_artistAdamId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10)
{
  sub_1ABAA5CB0();
  v18 = v17;
  *v17 = *v19;
  v21 = sub_1ABB2B834(v20);
  v18[1] = v13;
  v18[2] = v21;
  v18[3] = v22;
  v23 = sub_1ABB2B834(v12);
  v18[4] = v12;
  v18[5] = v23;
  v18[6] = v24;
  v25 = sub_1ABB2B834(v11);
  v18[7] = v11;
  v18[8] = v25;
  v18[9] = v26;
  v27 = sub_1ABB2B834(v10);
  v18[10] = v10;
  v18[11] = v27;
  v18[12] = v28;
  if (*(a6 + 16))
  {
    v39 = *(a6 + 32);
    v29 = *(a6 + 48);
    v30 = *(a6 + 56);
    v31 = *(a6 + 64);

    v32 = v39;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0uLL;
  }

  v18[13] = a6;
  *(v18 + 7) = v32;
  v18[16] = v29;
  v18[17] = v30;
  v18[18] = v31;
  v18[19] = a7;
  v33 = sub_1ABB2B834(a8);
  v18[20] = a8;
  v18[21] = v33;
  v18[22] = v34;
  v35 = sub_1ABB2B834(a9);
  v18[23] = a9;
  v18[24] = v35;
  v18[25] = v36;
  result = sub_1ABB2B834(a10);
  v18[26] = a10;
  v18[27] = result;
  v18[28] = v38;
  return result;
}

uint64_t sub_1ABCEAC00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496465707974 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D614E6D75626C61 && a2 == 0xE900000000000065;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65726E6567 && a2 == 0xE500000000000000;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x696669746E656469 && a2 == 0xEB00000000737265;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6D616441676E6F73 && a2 == 0xEA00000000006449;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6164416D75626C61 && a2 == 0xEB0000000064496DLL;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x6441747369747261 && a2 == 0xEC00000064496D61)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1ABF25054();

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

uint64_t sub_1ABCEAF2C(char a1)
{
  result = 0x64496465707974;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x614E747369747261;
      break;
    case 3:
      result = 0x6D614E6D75626C61;
      break;
    case 4:
      result = 0x65726E6567;
      break;
    case 5:
      result = 0x6E6F697461727564;
      break;
    case 6:
      result = 0x696669746E656469;
      break;
    case 7:
      result = 0x6D616441676E6F73;
      break;
    case 8:
      result = 0x6164416D75626C61;
      break;
    case 9:
      result = 0x6441747369747261;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABCEB068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABCEAC00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABCEB090(uint64_t a1)
{
  v2 = sub_1ABD0DB28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCEB0CC(uint64_t a1)
{
  v2 = sub_1ABD0DB28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphSong.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D70B0, &qword_1ABF51018);
  sub_1ABA7BB64(v4);
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA8176C();
  v8 = *v0;
  v45 = v0[3];
  v46 = v0[1];
  v43 = v0[4];
  v44 = v0[2];
  v41 = v0[6];
  v42 = v0[5];
  v38 = v0[7];
  v39 = v0[8];
  v40 = v0[9];
  v35 = v0[10];
  v36 = v0[11];
  v37 = v0[12];
  v29 = v0[13];
  v30 = v0[14];
  v31 = v0[15];
  v34 = v0[16];
  v33 = v0[17];
  v32 = v0[18];
  sub_1ABD1B6F4(v0[19]);
  v9 = v0[20];
  sub_1ABD1B8A4(v0[21]);
  v28 = v0[22];
  v24 = v0[23];
  v25 = v0[24];
  v26 = v0[25];
  v10 = v0[27];
  sub_1ABD1BAA4(v0[26]);
  v11 = v0[28];
  v12 = v3[3];
  v13 = v3[4];
  v14 = v3;
  v16 = v15;
  sub_1ABA88DCC(v14, v12);
  sub_1ABD0DB28();
  sub_1ABD1B684();
  sub_1ABF252E4();
  v17 = sub_1ABA7D000();
  sub_1ABAD219C(v17, v18);
  sub_1ABD1044C(&unk_1EB4D70C8);
  sub_1ABF24F84();
  if (!v1)
  {
    sub_1ABA8B6EC();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABD1AF10();
    sub_1ABD1B5D8();
    if (v46)
    {
      goto LABEL_5;
    }

    sub_1ABD1B94C();

    sub_1ABD1B178();

    sub_1ABD1AF10();
    sub_1ABD1B5D8();
    sub_1ABD1B94C();

    sub_1ABD1AF94();

    sub_1ABD1AF10();
    sub_1ABD1B5D8();
    if (v38)
    {
      goto LABEL_5;
    }

    sub_1ABD1B94C();

    sub_1ABA8B908();

    sub_1ABD1AF10();
    sub_1ABD1B5D8();
    if (v35)
    {
      goto LABEL_5;
    }

    sub_1ABD1B94C();

    sub_1ABAA63C4();
    sub_1ABD1BD18();
    sub_1ABD1AFDC();

    sub_1ABC85DDC(v30, v31, v34);
    sub_1ABAD219C(&qword_1EB4D70D0, &qword_1ABF51028);
    sub_1ABD0DB7C();
    sub_1ABD1AF10();
    sub_1ABF24F84();

    v22 = sub_1ABA7D000();
    sub_1ABD0DCB0(v22, v23, v34);
    sub_1ABD1AFD0();
    sub_1ABAD219C(&qword_1EB4D65A0, &qword_1ABF50B40);
    sub_1ABD09D60();
    sub_1ABD1AF10();
    sub_1ABF24F84();
    sub_1ABAA3CF0();
    sub_1ABAA6420();
    sub_1ABD1AFC4();

    sub_1ABD1AF10();
    sub_1ABD1BBB8();
    if (v27)
    {
LABEL_5:
      sub_1ABD1B94C();
    }

    else
    {
      sub_1ABD1B94C();

      sub_1ABAA2168();
      sub_1ABD1AFB8();

      sub_1ABD1AF10();
      sub_1ABD1BBB8();
      sub_1ABD1B94C();

      if (!v24)
      {
        sub_1ABD1AFE8();

        sub_1ABD1BBB8();
        sub_1ABD1B94C();

        v19 = sub_1ABAB3C1C();
        goto LABEL_7;
      }
    }
  }

  v19 = sub_1ABA8B014();
  v21 = v16;
LABEL_7:
  v20(v19, v21);
  sub_1ABD1C004();
  sub_1ABA7BC90();
}

void CustomGraphSong.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D70F0, &qword_1ABF51030);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABAB50F4();
  v11 = v2[3];
  v12 = v2[4];
  v13 = sub_1ABA954F0();
  sub_1ABA88DCC(v13, v14);
  sub_1ABD0DB28();
  sub_1ABAB5FAC();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA8CA5C();
    sub_1ABA84B54(v2);
    if (v12)
    {

      if ((v11 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (!v11)
    {
      goto LABEL_8;
    }

    sub_1ABD0DCB0(v40, v42, v44);
  }

  else
  {
    v56 = v7;
    v15 = sub_1ABA954F0();
    sub_1ABAD219C(v15, v16);
    sub_1ABA8F54C();
    sub_1ABD1044C(v17);
    sub_1ABD1B83C();
    sub_1ABA88A3C();
    sub_1ABF24E64();
    v18 = v59;
    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD0A2D4();
    sub_1ABA9E84C();
    sub_1ABD1BF64();
    v54 = v20;
    v55 = v19;
    sub_1ABA9E84C();
    sub_1ABD1BF64();
    v52 = v22;
    v53 = v21;
    sub_1ABA9E84C();
    sub_1ABD1BF64();
    v50 = v24;
    v51 = v23;
    sub_1ABA9E84C();
    sub_1ABD1BF64();
    v48 = v26;
    v49 = v25;
    sub_1ABAD219C(&qword_1EB4D70D0, &qword_1ABF51028);
    sub_1ABD0DCF4();
    sub_1ABD1B83C();
    sub_1ABD1AD2C();
    sub_1ABF24E64();
    v39 = v59;
    v41 = v60;
    v43 = v61;
    v45 = v62;
    v46 = v63;
    v47 = v64;
    sub_1ABAD219C(&qword_1EB4D65A0, &qword_1ABF50B40);
    sub_1ABD0A1FC();
    sub_1ABD1B83C();
    sub_1ABD1AD2C();
    sub_1ABF24E64();
    v38 = v59;
    sub_1ABA9E84C();
    v33 = v60;
    v36 = v61;
    v37 = v59;
    LOBYTE(v58[0]) = 8;
    sub_1ABA9E84C();
    v32 = v60;
    v34 = v61;
    v35 = v59;
    sub_1ABD1AFE8();
    sub_1ABD1B66C();
    sub_1ABAB5FAC();
    sub_1ABA88A3C();
    sub_1ABF24E64();
    v27 = *(v56 + 8);
    v28 = sub_1ABA8B1A8();
    v29(v28);
    v57 = v88;
    v30 = v90;
    v31 = v89;
    v58[0] = v18;
    v58[1] = v54;
    v58[2] = v18;
    v58[3] = v55;
    v58[4] = v52;
    v58[5] = v18;
    v58[6] = v53;
    v58[7] = v50;
    v58[8] = v18;
    v58[9] = v51;
    v58[10] = v48;
    v58[11] = v18;
    v58[12] = v49;
    v58[13] = v39;
    v58[14] = v41;
    v58[15] = v43;
    v58[16] = v45;
    v58[17] = v46;
    v58[18] = v47;
    v58[19] = v38;
    v58[20] = v37;
    v58[21] = v33;
    v58[22] = v36;
    v58[23] = v35;
    v58[24] = v32;
    v58[25] = v34;
    v58[26] = v88;
    v58[27] = v89;
    v58[28] = v90;
    memcpy(v4, v58, 0xE8uLL);
    sub_1ABD0DD80(v58, &v59);
    sub_1ABA84B54(v2);
    v59 = v18;
    v60 = v54;
    v61 = v18;
    v62 = v55;
    v63 = v52;
    v64 = v18;
    v65 = v53;
    v66 = v50;
    v67 = v18;
    v68 = v51;
    v69 = v48;
    v70 = v18;
    v71 = v49;
    v72 = v39;
    v73 = v41;
    v74 = v43;
    v75 = v45;
    v76 = v46;
    v77 = v47;
    v78 = v38;
    v79 = v37;
    v80 = v33;
    v81 = v36;
    v82 = v35;
    v83 = v32;
    v84 = v34;
    v85 = v57;
    v86 = v31;
    v87 = v30;
    sub_1ABD0DDB8(&v59);
  }

LABEL_8:
  sub_1ABA9EFCC();
  sub_1ABA7BC90();
}

void static CustomGraphActivityEventType.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x4F8), *(_Records_GDEntityClass_records + 0x500), *(_Records_GDEntityClass_records + 0x508), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABCEBF2C()
{
  sub_1ABD1AF7C();
  sub_1ABD1B3B8();
  sub_1ABCEBFC8(v2, v3, v4, v5, v13);
  if (!v0)
  {
    v6 = v13[1];
    v7 = v14;
    *v1 = v13[0];
    *(v1 + 8) = v6;
    *(v1 + 16) = v7;
  }

  sub_1ABA8AD50();
  v9 = *(v8 + 8);
  v10 = sub_1ABA7EDF8();
  return v11(v10);
}

void sub_1ABCEBFC8(void (*a1)(void *__return_ptr, uint64_t, void, uint64_t, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void (*a4)(void *__return_ptr, void)@<X4>, void *a5@<X8>)
{
  sub_1ABA7D028();
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x1E69E7CC0];

  a1(v14, a2, 0, a3, v11);

  if (v5)
  {
  }

  else
  {
    a4(v14, v14[0]);
    v12 = v14[0];
    sub_1ABD1B080();
    v13 = *(v11 + 16);
    sub_1ABB2B834(v13);
    sub_1ABD1B6A8();

    *a5 = v12;
    a5[1] = v13;
    a5[2] = v11 + 16;
    a5[3] = a2;
  }

  sub_1ABA7E708();
}

uint64_t sub_1ABCEC0D8@<X0>(void (*a1)(void *__return_ptr, uint64_t, void, uint64_t, void *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, void (*a6)(void *__return_ptr, void)@<X7>, void *a7@<X8>)
{
  v23 = a5;
  sub_1ABA7D028();
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x1E69E7CC0];
  sub_1ABAA4EC8();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = v12;

  a1(v22, a4, 0, v23, v13);

  if (v7)
  {
  }

  a6(v22, v22[0]);
  v15 = v22[0];
  sub_1ABD1B080();
  v16 = *(v12 + 16);
  v17 = sub_1ABB2B834(v16);
  v19 = v18;

  *a7 = v15;
  a7[1] = v16;
  a7[2] = v17;
  a7[3] = v19;
  return result;
}

void sub_1ABCEC27C(void (*a1)(uint64_t (*)(uint64_t a1), char *, double)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void (*a5)(_BYTE *)@<X5>, void (*a6)(uint64_t *__return_ptr, uint64_t)@<X6>, uint64_t *a7@<X8>)
{
  v21 = a6;
  sub_1ABA7D028();
  v13 = swift_allocObject();
  *(v13 + 16) = MEMORY[0x1E69E7CC0];
  sub_1ABB6BCD4(a1, a4, 0, a5, v13, a2, a3, v20);
  if (v7)
  {
  }

  else
  {
    v21(v20, v20[0]);
    v14 = v20[0];
    sub_1ABD1B080();
    v15 = *(v13 + 16);
    v16 = sub_1ABB2B834(v15);
    v18 = v17;

    *a7 = v14;
    a7[1] = v15;
    a7[2] = v16;
    a7[3] = v18;
  }

  sub_1ABA7E708();
}

uint64_t CustomGraphActivityEventType.init<A>(from:initializationResources:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABA9783C(a1, a2, a3);
  sub_1ABAB5F50();
  sub_1ABA9FF6C();
  swift_getAssociatedConformanceWitness();
  sub_1ABA8CECC();
  v11 = sub_1ABCEC0D8(v4, v5, v6, v7, v8, v9, v10);
  if (!v3)
  {
    sub_1ABD1BCF8(v11, v12, v13, v14, v15, v16, v17, v18, v25, v26, v27, v28, v29, v30, v31, v32, v19);
  }

  sub_1ABA8AD50();
  v21 = *(v20 + 8);
  v22 = sub_1ABA7EDF8();
  return v23(v22);
}

void sub_1ABCEC49C(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphActivityEventType init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x4F8), *(_Records_GDEntityClass_records + 0x500), *(_Records_GDEntityClass_records + 0x508), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x4F8), *(_Records_GDEntityClass_records + 0x500), *(_Records_GDEntityClass_records + 0x508), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABCEC734(uint64_t *a1, uint64_t a2)
{
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    return;
  }

  v24[7] = v2;
  v24[8] = v3;
  v6 = *a1;
  v7 = a1[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), __dst);
  if (__dst[0] == v6 && __dst[1] == v7)
  {
  }

  else
  {
    v9 = sub_1ABF25054();

    if ((v9 & 1) == 0)
    {
      return;
    }
  }

  if (*(a1 + 97))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v10 = sub_1ABF237F4();
    sub_1ABA7AA24(v10, qword_1ED871B40);
    sub_1ABAE2EC4();
    v11 = sub_1ABF237D4();
    v12 = sub_1ABF24664();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24[0] = v14;
      *v13 = 136642819;
      memcpy(__dst, a1, 0x62uLL);
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v15 = sub_1ABF23C94();
      v17 = sub_1ABADD6D8(v15, v16, v24);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1ABA78000, v11, v12, "Failed to parse %{sensitive}s.", v13, 0xCu);
      sub_1ABA84B54(v14);
      MEMORY[0x1AC5AB8B0](v14, -1, -1);
      MEMORY[0x1AC5AB8B0](v13, -1, -1);
    }

    else
    {

      sub_1ABAB480C(a1, &qword_1EB4D1148, &qword_1ABF332D0);
    }
  }

  else
  {
    v19 = a1[5];
    v18 = a1[6];
    swift_beginAccess();

    sub_1ABB4DC20();
    v20 = *(*(a2 + 16) + 16);
    sub_1ABB4E024(v20);
    v21 = *(a2 + 16);
    *(v21 + 16) = v20 + 1;
    v22 = v21 + 16 * v20;
    *(v22 + 32) = v19;
    *(v22 + 40) = v18;
    *(a2 + 16) = v21;
    swift_endAccess();
  }
}

void sub_1ABCEC9EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v46 = *(a3 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v44 - v10;
  v12 = *(v11 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v44 - v17;
  (*(v12 + 24))(v51, a3, v12, v16);
  v47 = a2;
  v48 = v14;
  v49 = a1;
  v44 = v8;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    return;
  }

  v20 = v51[0];
  v19 = v51[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), v50);
  if (v50[0] == v20 && v50[1] == v19)
  {
  }

  else
  {
    v22 = sub_1ABF25054();

    if ((v22 & 1) == 0)
    {
      return;
    }
  }

  v23 = v49;
  (*(v12 + 32))(a3, v12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v27 = v26;
  (*(v48 + 8))(v18, AssociatedTypeWitness);
  if (v27)
  {
    v28 = v47;
    swift_beginAccess();
    sub_1ABB4DC20();
    v29 = *(*(v28 + 16) + 16);
    sub_1ABB4E024(v29);
    v30 = *(v28 + 16);
    *(v30 + 16) = v29 + 1;
    v31 = v30 + 16 * v29;
    *(v31 + 32) = v25;
    *(v31 + 40) = v27;
    *(v28 + 16) = v30;
    swift_endAccess();
  }

  else
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v32 = sub_1ABF237F4();
    sub_1ABA7AA24(v32, qword_1ED871B40);
    v34 = v45;
    v33 = v46;
    v35 = *(v46 + 16);
    v35(v45, v23, a3);
    v36 = sub_1ABF237D4();
    v37 = sub_1ABF24664();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50[0] = v49;
      *v38 = 136642819;
      v35(v44, v34, a3);
      v39 = sub_1ABF23C94();
      v41 = v40;
      (*(v33 + 8))(v34, a3);
      v42 = sub_1ABADD6D8(v39, v41, v50);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_1ABA78000, v36, v37, "Failed to parse %{sensitive}s.", v38, 0xCu);
      v43 = v49;
      sub_1ABA84B54(v49);
      MEMORY[0x1AC5AB8B0](v43, -1, -1);
      MEMORY[0x1AC5AB8B0](v38, -1, -1);
    }

    else
    {

      (*(v33 + 8))(v34, a3);
    }
  }
}

uint64_t _s20IntelligencePlatform16CustomGraphTopicV7typedId7all_qidAcA21TypedEntityIdentifierVyACG_SaySSGtcfC_0@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = *a1;
  if (a2[2])
  {
    v6 = a2[4];
    v5 = a2[5];
  }

  else
  {
    v6 = 0;
    result = 0;
  }

  a3[1] = a2;
  a3[2] = v6;
  a3[3] = result;
  return result;
}

uint64_t sub_1ABCECF1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496465707974 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

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

uint64_t sub_1ABCECFE4(char a1)
{
  if (a1)
  {
    return 1701667182;
  }

  else
  {
    return 0x64496465707974;
  }
}

uint64_t sub_1ABCED01C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABCECF1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABCED044(uint64_t a1)
{
  v2 = sub_1ABD0E218();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCED080(uint64_t a1)
{
  v2 = sub_1ABD0E218();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphActivityEventType.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABD1BABC();
  v3 = sub_1ABAD219C(&qword_1EB4D7108, &qword_1ABF51038);
  sub_1ABA96D00(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7E338();
  v9 = *v0;
  v10 = v0[3];
  v18 = v0[2];
  v19 = v0[1];
  v11 = v2[4];
  sub_1ABA88DCC(v2, v2[3]);
  sub_1ABD0E218();
  sub_1ABA82E0C();
  sub_1ABA9EE14();
  sub_1ABF252E4();
  v12 = sub_1ABAA1DFC();
  sub_1ABAD219C(v12, v13);
  sub_1ABA7D99C();
  sub_1ABD1044C(v14);
  sub_1ABAB56F0();
  sub_1ABD1B97C();
  if (!v1)
  {
    sub_1ABD1BAB0();
    sub_1ABA8B6EC();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();
  }

  v15 = *(v5 + 8);
  v16 = sub_1ABA7D0EC();
  v17(v16);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphActivityEventType.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA95324();
  v2 = sub_1ABAD219C(&qword_1EB4D7118, &qword_1ABF51040);
  sub_1ABA7BB64(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BCE0();
  sub_1ABA9474C();
  sub_1ABD0E218();
  sub_1ABAA0704();
  sub_1ABA8177C();
  sub_1ABF252C4();
  if (!v1)
  {
    v6 = sub_1ABAA1DFC();
    sub_1ABAD219C(v6, v7);
    sub_1ABD1BA98();
    sub_1ABA8F54C();
    sub_1ABD1044C(v8);
    sub_1ABA8B4F0();
    sub_1ABD1ACAC();
    sub_1ABD1B7A4();
    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABA89A14();
    sub_1ABD0A2D4();
    sub_1ABAA112C();
    sub_1ABAA43F0();
    v9 = sub_1ABA7BFF0();
    v10(v9);
    sub_1ABD1BD24();
  }

  sub_1ABA84B54(v0);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void static CustomGraphModeOfTransportation.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x8B8), *(_Records_GDEntityClass_records + 0x8C0), *(_Records_GDEntityClass_records + 0x8C8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t CustomGraphModeOfTransportation.init<A, B>(with:initializationResources:)()
{
  sub_1ABAA05A0();
  sub_1ABD1B3B8();
  v2 = sub_1ABA8AA6C();
  sub_1ABCED550(v2);
  if (!v0)
  {
    *v1 = v8;
    *(v1 + 8) = v9;
    *(v1 + 16) = v10;
  }

  sub_1ABA8AD50();
  v4 = *(v3 + 8);
  v5 = sub_1ABA7EDF8();
  return v6(v5);
}

uint64_t CustomGraphModeOfTransportation.init<A>(enumerator:initializationResources:)()
{
  sub_1ABAAA9A8();
  result = sub_1ABCED550(sub_1ABD1ABB0);
  if (!v1)
  {
    *v0 = v3;
    *(v0 + 8) = v4;
    *(v0 + 16) = v5;
  }

  return result;
}

uint64_t CustomGraphModeOfTransportation.init<A>(from:initializationResources:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABA9783C(a1, a2, a3);
  sub_1ABAB5F50();
  sub_1ABA9FF6C();
  swift_getAssociatedConformanceWitness();
  sub_1ABA9DE80();
  sub_1ABCED6F0();
  if (!v3)
  {
    *v4 = v10;
    *(v4 + 8) = v11;
    *(v4 + 16) = v12;
  }

  sub_1ABA8AD50();
  v6 = *(v5 + 8);
  v7 = sub_1ABA7EDF8();
  return v8(v7);
}

void sub_1ABCED9E4(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphModeOfTransportation init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x8B8), *(_Records_GDEntityClass_records + 0x8C0), *(_Records_GDEntityClass_records + 0x8C8), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x8B8), *(_Records_GDEntityClass_records + 0x8C0), *(_Records_GDEntityClass_records + 0x8C8), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCEDC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 + 8) + 24))(&v4, a2);
}

void *CustomGraphModeOfTransportation.init(typedId:all_transportationType:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  if (*(a2 + 16))
  {
    v3 = *(a2 + 32);
  }

  else
  {
    v3 = 8;
  }

  *(a3 + 8) = a2;
  *(a3 + 16) = v3;
  return result;
}

uint64_t sub_1ABCEDD0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496465707974 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001ABF8D620 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

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

uint64_t sub_1ABCEDDDC(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x64496465707974;
  }
}

uint64_t sub_1ABCEDE20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABCEDD0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABCEDE48(uint64_t a1)
{
  v2 = sub_1ABD0E26C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCEDE84(uint64_t a1)
{
  v2 = sub_1ABD0E26C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABCEDF2C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  return sub_1ABAC24A0(*v1, a1);
}

void CustomGraphModeOfTransportation.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D7120, &qword_1ABF51048);
  sub_1ABA96D00(v4);
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7E338();
  v8 = *v0;
  v9 = v0[1];
  v19 = *(v0 + 16);
  v10 = *(v3 + 24);
  v11 = *(v3 + 32);
  v12 = sub_1ABA894A0();
  sub_1ABA88DCC(v12, v13);
  sub_1ABD0E26C();
  sub_1ABA82E0C();
  sub_1ABA8177C();
  sub_1ABF252E4();
  v14 = sub_1ABA8C744();
  sub_1ABAD219C(v14, v15);
  sub_1ABA7D99C();
  sub_1ABD1044C(v16);
  sub_1ABD1AC30();
  sub_1ABF24F84();
  if (!v1)
  {
    sub_1ABA8B6EC();

    sub_1ABAD219C(&qword_1EB4D6820, &qword_1ABF50C28);
    sub_1ABD0B0FC();
    sub_1ABA8B6C8();
  }

  v17 = sub_1ABA89DE4();
  v18(v17);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphModeOfTransportation.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA95324();
  v3 = sub_1ABAD219C(&qword_1EB4D7130, &qword_1ABF51050);
  sub_1ABA7BB64(v3);
  v5 = *(v4 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7BCE0();
  sub_1ABA9474C();
  sub_1ABD0E26C();
  sub_1ABAA0704();
  sub_1ABA8177C();
  sub_1ABF252C4();
  if (!v2)
  {
    v7 = sub_1ABAA1DFC();
    sub_1ABAD219C(v7, v8);
    sub_1ABD1BA98();
    sub_1ABA8F54C();
    sub_1ABD1044C(v9);
    sub_1ABD1ACAC();
    sub_1ABD1B7A4();
    sub_1ABAD219C(&qword_1EB4D6820, &qword_1ABF50C28);
    sub_1ABA89A14();
    sub_1ABD0B31C();
    sub_1ABAA43F0();
    v10 = sub_1ABA7BFF0();
    v11(v10);
    *v1 = v12;
    *(v1 + 8) = v12;
    *(v1 + 16) = v13;
  }

  sub_1ABA84B54(v0);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void static CustomGraphSoftware.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x468), *(_Records_GDEntityClass_records + 0x470), *(_Records_GDEntityClass_records + 0x478), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t CustomGraphSoftware.init<A, B>(with:initializationResources:)()
{
  sub_1ABAA05A0();
  sub_1ABD1B3B8();
  sub_1ABAB6018();
  v6 = sub_1ABCEE3C0(v1, v2, v3, v4, v5);
  if (!v0)
  {
    v14 = sub_1ABAA04F0(v6, v7, v8, v9, v10, v11, v12, v13, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
    sub_1ABAB5200(v15, v14, v16);
  }

  sub_1ABA8AD50();
  v18 = *(v17 + 8);
  v19 = sub_1ABA7EDF8();
  return v20(v19);
}

uint64_t sub_1ABCEE3C0@<X0>(void (*a1)(void *__return_ptr, uint64_t, void, uint64_t, uint64_t)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, void (*a4)(void *__return_ptr, void)@<X5>, void *a5@<X8>)
{
  sub_1ABA7D028();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  *(v7 + 16) = MEMORY[0x1E69E7CC0];
  sub_1ABA7D028();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  sub_1ABA7D9B8();
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v9;

  v11 = v24;
  a1(v23, a2, 0, a3, v10);

  if (v11)
  {
  }

  else
  {
    a4(v23, v23[0]);
    v24 = v23[0];
    sub_1ABAAA634();
    v22 = sub_1ABD1C2E4();
    v14 = v13;
    sub_1ABAA9068();
    v15 = *(v9 + 16);
    v16 = sub_1ABB2B834(v15);
    v18 = v17;

    *a5 = v24;
    a5[1] = v10;
    a5[2] = v22;
    a5[3] = v14;
    a5[4] = v15;
    a5[5] = v16;
    a5[6] = v18;
  }

  return result;
}

void sub_1ABCEE578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1ABD1C050();
  a31 = v33;
  a32 = v34;
  v56 = v36;
  v57 = v35;
  v59 = v37;
  a22 = v32;
  v39 = v38;
  v41 = v40;
  v58 = v42;
  v55 = v43;
  sub_1ABA7D028();
  v44 = swift_allocObject();
  sub_1ABD1BED8(v44);
  sub_1ABA7D028();
  v45 = swift_allocObject();
  sub_1ABD1BEF0(v45);
  sub_1ABAA267C();
  v46 = swift_allocObject();
  v46[2] = v41;
  v46[3] = v39;
  v46[4] = v44;
  v46[5] = v45;

  v47 = a22;
  v58(&a18, v57, 0, v59, v46);

  if (v47)
  {
  }

  else
  {
    v56(&a18, a18);
    a22 = a18;
    sub_1ABAAA634();
    v48 = sub_1ABD1C2E4();
    v50 = v49;
    sub_1ABAA9068();
    v51 = *(v45 + 16);
    v52 = sub_1ABB2B834(v51);
    v54 = v53;

    *v55 = a22;
    v55[1] = v41;
    v55[2] = v48;
    v55[3] = v50;
    v55[4] = v51;
    v55[5] = v52;
    v55[6] = v54;
  }

  sub_1ABD1C034();
}

void CustomGraphSoftware.init<A>(enumerator:initializationResources:)()
{
  sub_1ABAAA9A8();
  sub_1ABAB6018();
  v6 = sub_1ABCEE3C0(v1, v2, v3, v4, v5);
  if (!v0)
  {
    v14 = sub_1ABAA04F0(v6, v7, v8, v9, v10, v11, v12, v13, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    sub_1ABD1BFF0(v15, v14, v16);
  }
}

void sub_1ABCEE8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v22;
  a20 = v23;
  v52 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v51 = v31;
  v50 = *(v25 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = sub_1ABA7BB64(AssociatedTypeWitness);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1ABA7E338();
  v38 = *(v26 + 24);
  v39 = sub_1ABD1BE94();
  v38(v39);
  v51(&a10);
  if (v20)
  {
LABEL_10:
    sub_1ABA7BC90();
    return;
  }

  (*(v50 + 32))(v28);
  a10 = sub_1ABF240E4();
  while (1)
  {
    sub_1ABD1BEB4();
    if (a10 == sub_1ABF24194())
    {

      (v38)(v28, v26);
      goto LABEL_10;
    }

    sub_1ABD1BEB4();
    sub_1ABF24174();
    sub_1ABD1BC14();
    if (v30)
    {
      v40 = *(v35 + 80);
      sub_1ABD1B7FC();
      v41 = *(v35 + 72);
      v42 = *(v35 + 16);
      v43 = sub_1ABD1BEC0();
      v44(v43);
      goto LABEL_6;
    }

    sub_1ABAA030C();
    sub_1ABF24B04();
    if (v37 != 8)
    {
      break;
    }

    v47 = *(v35 + 16);
    v48 = sub_1ABD1BEC0();
    v49(v48);
    swift_unknownObjectRelease();
LABEL_6:
    sub_1ABF241D4();
    v52(v21);
    v45 = sub_1ABAB6768();
    v46(v45);
  }

  __break(1u);
}

void sub_1ABCEEB44(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphSoftware init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x468), *(_Records_GDEntityClass_records + 0x470), *(_Records_GDEntityClass_records + 0x478), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x468), *(_Records_GDEntityClass_records + 0x470), *(_Records_GDEntityClass_records + 0x478), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABCEEDDC(void *a1, uint64_t a2, uint64_t a3)
{
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_29;
  }

  v6 = *a1;
  v7 = a1[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[900], *(_Records_GDEntityPredicate_records + 226), *(_Records_GDEntityPredicate_records + 227), __dst);
  if (__dst[0] == v6 && __dst[1] == v7)
  {

LABEL_15:
    if (!*(a1 + 97))
    {
      v20 = a1[5];
      v21 = a1[6];
      swift_beginAccess();

      sub_1ABB4DC20();
      v22 = *(*(a2 + 16) + 16);
      sub_1ABB4E024(v22);
      v23 = *(a2 + 16);
      *(v23 + 16) = v22 + 1;
      v24 = v23 + 16 * v22;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      *(a2 + 16) = v23;
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v12 = sub_1ABF237F4();
    sub_1ABA7AA24(v12, qword_1ED871B40);
    sub_1ABAE2EC4();
    v13 = sub_1ABF237D4();
    v14 = sub_1ABF24664();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  v9 = sub_1ABF25054();

  if (v9)
  {
    goto LABEL_15;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_29:
    __break(1u);
    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), __dst);
  if (__dst[0] == v6 && __dst[1] == v7)
  {

LABEL_22:
    if (!*(a1 + 97))
    {
      v26 = a1[5];
      v27 = a1[6];
      swift_beginAccess();

      sub_1ABB4DC20();
      v28 = *(*(a3 + 16) + 16);
      sub_1ABB4E024(v28);
      v29 = *(a3 + 16);
      *(v29 + 16) = v28 + 1;
      v30 = v29 + 16 * v28;
      *(v30 + 32) = v26;
      *(v30 + 40) = v27;
      *(a3 + 16) = v29;
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v25 = sub_1ABF237F4();
    sub_1ABA7AA24(v25, qword_1ED871B40);
    sub_1ABAE2EC4();
    v13 = sub_1ABF237D4();
    v14 = sub_1ABF24664();
    if (!os_log_type_enabled(v13, v14))
    {
LABEL_26:

      sub_1ABAB480C(a1, &qword_1EB4D1148, &qword_1ABF332D0);
      return;
    }

LABEL_19:
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v32 = v16;
    *v15 = 136642819;
    memcpy(__dst, a1, 0x62uLL);
    sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
    v17 = sub_1ABF23C94();
    v19 = sub_1ABADD6D8(v17, v18, &v32);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1ABA78000, v13, v14, "Failed to parse %{sensitive}s.", v15, 0xCu);
    sub_1ABA84B54(v16);
    MEMORY[0x1AC5AB8B0](v16, -1, -1);
    MEMORY[0x1AC5AB8B0](v15, -1, -1);

    return;
  }

  v11 = sub_1ABF25054();

  if (v11)
  {
    goto LABEL_22;
  }
}

void sub_1ABCEF208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v78 = *(a4 - 8);
  v79 = a2;
  v8 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v73 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v72 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v77 = &v72 - v14;
  v16 = *(v15 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v76 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v72 - v23;
  v25 = *(v16 + 24);
  v86 = a1;
  v25(v85, a4, v16, v22);
  v80 = v18;
  v81 = a4;
  v74 = a3;
  v75 = v12;
  v82 = v4;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    return;
  }

  v27 = v85[0];
  v26 = v85[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[900], *(_Records_GDEntityPredicate_records + 226), *(_Records_GDEntityPredicate_records + 227), &v83);
  if (v83 == v27 && v84 == v26)
  {

    goto LABEL_9;
  }

  v29 = sub_1ABF25054();

  if (v29)
  {
LABEL_9:
    v30 = v86;

    v31 = v81;
    (*(v16 + 32))(v81, v16);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v33 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v35 = v34;
    (*(v80 + 8))(v24, AssociatedTypeWitness);
    if (v35)
    {
      v36 = v79;
      swift_beginAccess();
      sub_1ABB4DC20();
      v37 = *(*(v36 + 16) + 16);
      sub_1ABB4E024(v37);
      v38 = *(v36 + 16);
      *(v38 + 16) = v37 + 1;
      v39 = v38 + 16 * v37;
      *(v39 + 32) = v33;
      *(v39 + 40) = v35;
      *(v36 + 16) = v38;
LABEL_11:
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v40 = sub_1ABF237F4();
    sub_1ABA7AA24(v40, qword_1ED871B40);
    v41 = v77;
    v42 = v78;
    v43 = *(v78 + 16);
    v43(v77, v30, v31);
    v44 = sub_1ABF237D4();
    v45 = sub_1ABF24664();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      LODWORD(v86) = v45;
      v47 = v46;
      v80 = swift_slowAlloc();
      v83 = v80;
      *v47 = 136642819;
      v43(v75, v41, v31);
      v48 = sub_1ABF23C94();
      v50 = v49;
      (*(v42 + 8))(v41, v31);
      v51 = sub_1ABADD6D8(v48, v50, &v83);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_1ABA78000, v44, v86, "Failed to parse %{sensitive}s.", v47, 0xCu);
      v52 = v80;
LABEL_16:
      sub_1ABA84B54(v52);
      MEMORY[0x1AC5AB8B0](v52, -1, -1);
      MEMORY[0x1AC5AB8B0](v47, -1, -1);

      return;
    }

LABEL_31:

    (*(v42 + 8))(v41, v31);
    return;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_33;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), &v83);
  if (v83 == v27 && v84 == v26)
  {

LABEL_25:
    v55 = v76;
    v31 = v81;
    (*(v16 + 32))(v81, v16);
    v56 = swift_getAssociatedConformanceWitness();
    v57 = (*(v56 + 24))(AssociatedTypeWitness, v56);
    v59 = v58;
    (*(v80 + 8))(v55, AssociatedTypeWitness);
    if (v59)
    {
      v60 = v74;
      swift_beginAccess();
      sub_1ABB4DC20();
      v61 = *(*(v60 + 16) + 16);
      sub_1ABB4E024(v61);
      v62 = *(v60 + 16);
      *(v62 + 16) = v61 + 1;
      v63 = v62 + 16 * v61;
      *(v63 + 32) = v57;
      *(v63 + 40) = v59;
      *(v60 + 16) = v62;
      goto LABEL_11;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v64 = sub_1ABF237F4();
    sub_1ABA7AA24(v64, qword_1ED871B40);
    v42 = v78;
    v65 = *(v78 + 16);
    v41 = v73;
    v65(v73, v86, v31);
    v44 = sub_1ABF237D4();
    v66 = sub_1ABF24664();
    if (os_log_type_enabled(v44, v66))
    {
      v67 = swift_slowAlloc();
      LODWORD(v86) = v66;
      v47 = v67;
      v82 = swift_slowAlloc();
      v83 = v82;
      *v47 = 136642819;
      v65(v75, v41, v31);
      v68 = sub_1ABF23C94();
      v70 = v69;
      (*(v42 + 8))(v41, v31);
      v71 = sub_1ABADD6D8(v68, v70, &v83);

      *(v47 + 4) = v71;
      _os_log_impl(&dword_1ABA78000, v44, v86, "Failed to parse %{sensitive}s.", v47, 0xCu);
      v52 = v82;
      goto LABEL_16;
    }

    goto LABEL_31;
  }

  v54 = sub_1ABF25054();

  if (v54)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1ABCEFA30@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  *a4 = *a1;
  v7 = sub_1ABB2B834(a2);
  a4[1] = a2;
  a4[2] = v7;
  a4[3] = v8;
  result = sub_1ABB2B834(a3);
  a4[4] = a3;
  a4[5] = result;
  a4[6] = v10;
  return result;
}

uint64_t sub_1ABCEFA88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496465707974 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1701667182 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

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

uint64_t sub_1ABCEFB98(char a1)
{
  if (!a1)
  {
    return 0x64496465707974;
  }

  if (a1 == 1)
  {
    return 0x6449656C646E7562;
  }

  return 1701667182;
}

uint64_t sub_1ABCEFBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABCEFA88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABCEFC18(uint64_t a1)
{
  v2 = sub_1ABD0E300();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCEFC54(uint64_t a1)
{
  v2 = sub_1ABD0E300();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphSoftware.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D7138, &qword_1ABF51058);
  sub_1ABA96D00(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7E338();
  v11 = *v0;
  v10 = v0[1];
  v12 = v0[3];
  sub_1ABD1B894(v0[2]);
  v20 = v0[6];
  v13 = v3[4];
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABD0E300();
  sub_1ABA82E0C();
  sub_1ABF252E4();
  v14 = sub_1ABAA030C();
  sub_1ABAD219C(v14, v15);
  sub_1ABA7D99C();
  sub_1ABD1044C(v16);
  sub_1ABAB56F0();
  sub_1ABD1B97C();
  if (!v1)
  {
    sub_1ABD1BAB0();
    sub_1ABA8B6EC();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABA9734C();
    sub_1ABD1AFAC();
    sub_1ABF24F84();
    sub_1ABAA1210();

    sub_1ABD1B178();

    sub_1ABA80C2C();
    sub_1ABD1AFAC();
    sub_1ABF24F84();
    sub_1ABAA1210();
  }

  v17 = *(v6 + 8);
  v18 = sub_1ABA7D0EC();
  v19(v18);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void CustomGraphSoftware.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v3 = sub_1ABAD219C(&qword_1EB4D7158, &qword_1ABF51068);
  sub_1ABA7BB64(v3);
  v5 = *(v4 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7BCE0();
  sub_1ABA9474C();
  sub_1ABD0E300();
  sub_1ABAA0704();
  sub_1ABA8177C();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    v7 = sub_1ABAA1DFC();
    sub_1ABAD219C(v7, v8);
    sub_1ABD1BA98();
    sub_1ABA8F54C();
    sub_1ABD1044C(v9);
    sub_1ABA8B4F0();
    sub_1ABD1B014();
    sub_1ABD1B414();
    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABA8B6EC();
    sub_1ABD0A2D4();
    sub_1ABD1AD90();
    sub_1ABA8AB1C(2);
    sub_1ABD1B004();
    sub_1ABA9FABC();
    v10 = sub_1ABD1B2EC();
    v11(v10);
    sub_1ABD1B33C();

    sub_1ABA84B54(v2);
  }

  sub_1ABA9EFCC();
  sub_1ABA7BC90();
}

void static CustomGraphEventRelationship.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x168), *(_Records_GDEntityClass_records + 0x170), *(_Records_GDEntityClass_records + 0x170 + 8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ABCF0320(uint64_t a1, uint64_t a2, void (*a3)(uint64_t **__return_ptr, void), void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    return;
  }

  v10 = *a1;
  v11 = *(a1 + 8);
  sub_1ABA91D48(_Records_GDEntityPredicate_records[228], *(_Records_GDEntityPredicate_records + 58), *(_Records_GDEntityPredicate_records + 59), v31);
  if (*&v31[0] == v10 && *(&v31[0] + 1) == v11)
  {
  }

  else
  {
    v13 = sub_1ABF25054();

    if ((v13 & 1) == 0)
    {
      return;
    }
  }

  if (*(a1 + 56))
  {
    a3(&v33, *(a1 + 40));
    if (!v5)
    {
      v14 = v33;
      v15 = sub_1ABA8C160();
      a4(v15);
      v16 = sub_1ABAB5F24();
      a5(v16);
      sub_1ABAA33C0();
      *(v17 + 32) = v14;
      *(a2 + 16) = v18;
    }
  }

  else
  {
    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7D178();
    }

    v19 = sub_1ABF237F4();
    sub_1ABAA2318(v19, qword_1ED871B40);
    sub_1ABD1927C(a1, v31);
    v20 = sub_1ABF237D4();
    v21 = sub_1ABF24664();
    if (sub_1ABAA5E74(v21))
    {
      v22 = sub_1ABA8E2E8();
      v23 = swift_slowAlloc();
      v33 = v23;
      *v22 = 136642819;
      v24 = *(a1 + 16);
      v31[0] = *a1;
      v31[1] = v24;
      v32[0] = *(a1 + 32);
      *(v32 + 9) = *(a1 + 41);
      v25 = sub_1ABF23C94();
      v27 = sub_1ABADD6D8(v25, v26, &v33);

      *(v22 + 4) = v27;
      sub_1ABD1C0C4(&dword_1ABA78000, v28, v29, "Failed to parse %{sensitive}s.");
      sub_1ABA84B54(v23);
      sub_1ABA7BC34();
      sub_1ABA7BC34();
    }

    else
    {

      sub_1ABB6DBB8(a1);
    }
  }
}

void sub_1ABCF0574(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a5;
  v45 = a3;
  v46 = *(a4 - 8);
  v9 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v41 - v13;
  v16 = *(v15 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v18 = *(v47 + 64);
  v19 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v21 = v41 - v20;
  v22 = *(v16 + 24);
  v49 = a1;
  v22(v53, a4, v16, v19);
  v41[1] = a2;
  v42 = v11;
  v43 = v14;
  v48 = v5;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    return;
  }

  v24 = v53[0];
  v23 = v53[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[228], *(_Records_GDEntityPredicate_records + 58), *(_Records_GDEntityPredicate_records + 59), &v51);
  if (v51 == v24 && v52 == v23)
  {
  }

  else
  {
    v26 = sub_1ABF25054();

    if ((v26 & 1) == 0)
    {
      return;
    }
  }

  (*(v16 + 32))(a4, v16);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(&v51, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v47 + 8))(v21, AssociatedTypeWitness);
  if (v52)
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v28 = sub_1ABF237F4();
    sub_1ABA7AA24(v28, qword_1ED871B40);
    v29 = v46;
    v30 = *(v46 + 16);
    v31 = v43;
    v30(v43, v49, a4);
    v32 = sub_1ABF237D4();
    v33 = sub_1ABF24664();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v51 = v49;
      *v34 = 136642819;
      LODWORD(v47) = v33;
      v30(v42, v31, a4);
      v35 = sub_1ABF23C94();
      v37 = v36;
      (*(v29 + 8))(v31, a4);
      v38 = sub_1ABADD6D8(v35, v37, &v51);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_1ABA78000, v32, v47, "Failed to parse %{sensitive}s.", v34, 0xCu);
      v39 = v49;
      sub_1ABA84B54(v49);
      MEMORY[0x1AC5AB8B0](v39, -1, -1);
      MEMORY[0x1AC5AB8B0](v34, -1, -1);
    }

    else
    {

      (*(v29 + 8))(v31, a4);
    }
  }

  else
  {
    v40 = v48;
    TypedEntityIdentifier.init(untyped:)(&v51, v45, *(v44 + 8), &v54);
    if (!v40)
    {
      v50 = v54;
      swift_beginAccess();
      type metadata accessor for TypedEntityIdentifier();
      sub_1ABF241F4();
      sub_1ABF241A4();
      swift_endAccess();
    }
  }
}

uint64_t sub_1ABCF0A94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469746E65627573 && a2 == 0xEB00000000644979;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449746E657665 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

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

uint64_t sub_1ABCF0B60(char a1)
{
  if (a1)
  {
    return 0x6449746E657665;
  }

  else
  {
    return 0x7469746E65627573;
  }
}

uint64_t sub_1ABCF0BB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1ABCF0B60(*v1);
}

uint64_t sub_1ABCF0BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1ABCF0A94(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1ABCF0C10@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = sub_1ABB01724();
  *a2 = result;
  return result;
}

uint64_t sub_1ABCF0C40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABCF0C94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABCF0D10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return GraphObjectRelationship.id.getter(a1, WitnessTable);
}

void sub_1ABCF0DF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  CustomGraphEventRelationship.init(from:)();
}

void static CustomGraphAgentAffiliationRelationship.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x4C8), *(_Records_GDEntityClass_records + 0x4D0), *(_Records_GDEntityClass_records + 0x4D8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ABCF0E9C(uint64_t a1, uint64_t a2)
{
  EntityClass.init(intValue:)(SHIBYTE(a2), &v16);
  v2 = *(&v16 + 1);
  if (!*(&v16 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphAgentAffiliationRelationship init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v16;
    v4 = v17;
    v5 = v18;
    v6 = v19;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x4C8), *(_Records_GDEntityClass_records + 0x4D0), *(_Records_GDEntityClass_records + 0x4D8), v29);
    v7 = v30 == v4 && v5 == v31;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v29);
LABEL_9:
      sub_1ABAA8FA8(v3, v2);
      return;
    }

    *&v16 = v3;
    *(&v16 + 1) = v2;
    v17 = v4;
    v18 = v5;
    v19 = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v14 = v13;

    sub_1ABA88934(v29);
    if (v14)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x4C8), *(_Records_GDEntityClass_records + 0x4D0), *(_Records_GDEntityClass_records + 0x4D8), &v25);
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v28;
      v20 = v3;
      v21 = v2;
      v22 = v4;
      v23 = v5;
      v24 = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v16, v15);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABCF1134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_29;
  }

  v7 = *a1;
  v8 = *(a1 + 8);
  sub_1ABA91D48(_Records_GDEntityPredicate_records[396], *(_Records_GDEntityPredicate_records + 100), *(_Records_GDEntityPredicate_records + 101), v30);
  if (*&v30[0] == v7 && *(&v30[0] + 1) == v8)
  {

LABEL_15:
    if ((*(a1 + 56) & 1) == 0)
    {
      v22 = *(a1 + 40);
      v23 = *(a1 + 48);
      swift_beginAccess();

      sub_1ABB4DC20();
      v24 = *(*(a2 + 16) + 16);
      sub_1ABB4E024(v24);
      v25 = *(a2 + 16);
      *(v25 + 16) = v24 + 1;
      v26 = v25 + 16 * v24;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      *(a2 + 16) = v25;
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

  v10 = sub_1ABF25054();

  if (v10)
  {
    goto LABEL_15;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_29:
    __break(1u);
    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[384], *(_Records_GDEntityPredicate_records + 97), *(_Records_GDEntityPredicate_records + 98), v30);
  if (*&v30[0] == v7 && *(&v30[0] + 1) == v8)
  {
  }

  else
  {
    v12 = sub_1ABF25054();

    if ((v12 & 1) == 0)
    {
      return;
    }
  }

  if (*(a1 + 56))
  {
    sub_1ABC4A328(&v32, *(a1 + 40));
    if (!v3)
    {
      v27 = v32;
      swift_beginAccess();
      sub_1ABB4DD58();
      v28 = *(*(a3 + 16) + 16);
      sub_1ABB4E15C(v28);
      v29 = *(a3 + 16);
      *(v29 + 16) = v28 + 1;
      *(v29 + 8 * v28 + 32) = v27;
      *(a3 + 16) = v29;
    }

    return;
  }

  if (qword_1ED871B38 != -1)
  {
LABEL_27:
    swift_once();
  }

LABEL_17:
  v13 = sub_1ABF237F4();
  sub_1ABA7AA24(v13, qword_1ED871B40);
  sub_1ABD1927C(a1, v30);
  v14 = sub_1ABF237D4();
  v15 = sub_1ABF24664();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v32 = v17;
    *v16 = 136642819;
    v18 = *(a1 + 16);
    v30[0] = *a1;
    v30[1] = v18;
    v31[0] = *(a1 + 32);
    *(v31 + 9) = *(a1 + 41);
    v19 = sub_1ABF23C94();
    v21 = sub_1ABADD6D8(v19, v20, &v32);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_1ABA78000, v14, v15, "Failed to parse %{sensitive}s.", v16, 0xCu);
    sub_1ABA84B54(v17);
    MEMORY[0x1AC5AB8B0](v17, -1, -1);
    MEMORY[0x1AC5AB8B0](v16, -1, -1);
  }

  else
  {

    sub_1ABB6DBB8(a1);
  }
}

void sub_1ABCF14D0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v76 = a6;
  v77 = a4;
  v81 = *(a5 - 8);
  v82 = a2;
  v10 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v72 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v80 = &v72 - v17;
  v19 = *(v18 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v84 = *(AssociatedTypeWitness - 8);
  v21 = v84[8];
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v79 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v72 - v25;
  v27 = *(v19 + 24);
  v85 = a1;
  v27(v89, a5, v19, v24);
  v74 = a3;
  v75 = v12;
  v78 = v15;
  v83 = a5;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }

  v29 = v89[0];
  v28 = v89[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[396], *(_Records_GDEntityPredicate_records + 100), *(_Records_GDEntityPredicate_records + 101), &v87);
  if (v87 == v29 && v88 == v28)
  {

LABEL_9:

    v32 = v83;
    (*(v19 + 32))(v83, v19);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v34 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v36 = v35;
    (v84[1])(v26, AssociatedTypeWitness);
    if (v36)
    {
      v37 = v82;
      swift_beginAccess();
      sub_1ABB4DC20();
      v38 = *(*(v37 + 16) + 16);
      sub_1ABB4E024(v38);
      v39 = *(v37 + 16);
      *(v39 + 16) = v38 + 1;
      v40 = v39 + 16 * v38;
      *(v40 + 32) = v34;
      *(v40 + 40) = v36;
      *(v37 + 16) = v39;
LABEL_11:
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v41 = sub_1ABF237F4();
    sub_1ABA7AA24(v41, qword_1ED871B40);
    v42 = v80;
    v43 = v81;
    v44 = *(v81 + 16);
    v44(v80, v85, v32);
    v45 = sub_1ABF237D4();
    v46 = sub_1ABF24664();
    if (!os_log_type_enabled(v45, v46))
    {

      (*(v43 + 8))(v42, v32);
      return;
    }

    v47 = swift_slowAlloc();
    LODWORD(v85) = v46;
    v48 = v47;
    v84 = swift_slowAlloc();
    v87 = v84;
    *v48 = 136642819;
    v44(v78, v42, v32);
    v49 = sub_1ABF23C94();
    v51 = v50;
    (*(v43 + 8))(v42, v32);
    v52 = sub_1ABADD6D8(v49, v51, &v87);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_1ABA78000, v45, v85, "Failed to parse %{sensitive}s.", v48, 0xCu);
    v53 = v84;
    sub_1ABA84B54(v84);
    MEMORY[0x1AC5AB8B0](v53, -1, -1);
    v54 = v48;
    goto LABEL_30;
  }

  v73 = v6;
  v31 = sub_1ABF25054();

  if (v31)
  {
    goto LABEL_9;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_36;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[384], *(_Records_GDEntityPredicate_records + 97), *(_Records_GDEntityPredicate_records + 98), &v87);
  v55 = v87 == v29 && v88 == v28;
  v56 = v73;
  if (v55)
  {
  }

  else
  {
    v57 = sub_1ABF25054();

    if ((v57 & 1) == 0)
    {
      return;
    }
  }

  v58 = v79;
  v59 = v83;
  (*(v19 + 32))(v83, v19);
  v60 = swift_getAssociatedConformanceWitness();
  (*(v60 + 32))(&v87, AssociatedTypeWitness, v60);
  (v84[1])(v58, AssociatedTypeWitness);
  if (v88)
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v61 = sub_1ABF237F4();
    sub_1ABA7AA24(v61, qword_1ED871B40);
    v62 = v81;
    v63 = *(v81 + 16);
    v64 = v75;
    v63(v75, v85, v59);
    v45 = sub_1ABF237D4();
    v65 = sub_1ABF24664();
    if (os_log_type_enabled(v45, v65))
    {
      v66 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v87 = v85;
      *v66 = 136642819;
      LODWORD(v84) = v65;
      v63(v78, v64, v59);
      v67 = sub_1ABF23C94();
      v69 = v68;
      (*(v62 + 8))(v64, v59);
      v70 = sub_1ABADD6D8(v67, v69, &v87);

      *(v66 + 4) = v70;
      _os_log_impl(&dword_1ABA78000, v45, v84, "Failed to parse %{sensitive}s.", v66, 0xCu);
      v71 = v85;
      sub_1ABA84B54(v85);
      MEMORY[0x1AC5AB8B0](v71, -1, -1);
      v54 = v66;
LABEL_30:
      MEMORY[0x1AC5AB8B0](v54, -1, -1);

      return;
    }

    (*(v62 + 8))(v64, v59);
  }

  else
  {
    TypedEntityIdentifier.init(untyped:)(&v87, v77, *(v76 + 8), &v90);
    if (!v56)
    {
      v86 = v90;
      swift_beginAccess();
      type metadata accessor for TypedEntityIdentifier();
      sub_1ABF241F4();
      sub_1ABF241A4();
      goto LABEL_11;
    }
  }
}

uint64_t sub_1ABCF1D74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469746E65627573 && a2 == 0xEB00000000644979;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x64496E6F73726570 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

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