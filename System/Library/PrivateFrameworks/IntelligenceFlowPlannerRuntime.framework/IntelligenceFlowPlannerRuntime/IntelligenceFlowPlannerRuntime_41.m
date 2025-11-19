uint64_t sub_22C6F47E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v110 = a4;
  v107 = a3;
  v131 = a2;
  v122 = a5;
  v6 = sub_22C9063DC();
  v127 = *(v6 - 1);
  v128 = v6;
  v7 = *(v127 + 64);
  MEMORY[0x28223BE20](v6);
  v126 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_22C902D4C();
  v114 = *(v124 - 8);
  v9 = *(v114 + 64);
  MEMORY[0x28223BE20](v124);
  v112 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v106 = &v103 - v13;
  v105 = sub_22C90769C();
  v104 = *(v105 - 8);
  v14 = *(v104 + 64);
  MEMORY[0x28223BE20](v105);
  v103 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C90654C();
  v119 = *(v16 - 8);
  v120 = v16;
  v17 = *(v119 + 64);
  MEMORY[0x28223BE20](v16);
  v118 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22C906ACC();
  v116 = *(v19 - 8);
  v117 = v19;
  v20 = *(v116 + 64);
  MEMORY[0x28223BE20](v19);
  v115 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_22C9070DC();
  v125 = *(v129 - 8);
  v22 = *(v125 + 64);
  MEMORY[0x28223BE20](v129);
  v121 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22C901FAC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22C90880C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v103 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v38 = &v103 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v40 = &v103 - v39;
  v108 = a1;
  v41 = sub_22C90878C();
  MEMORY[0x2318B5880](v41);
  sub_22C646D68(v28, v42, v43, v44, v45, v46, v47, v48, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114);
  v113 = v25;
  v49 = *(v25 + 8);
  v123 = v28;
  v111 = v24;
  v49(v28, v24);
  (*(v30 + 8))(v33, v29);
  v50 = v129;
  sub_22C6AEA50(v40, v38, &qword_27D9BAA18, &qword_22C911C40);
  if (sub_22C370B74(v38, 1, v50) == 1)
  {
    sub_22C36DD80(v38, &qword_27D9BAA18);
LABEL_7:
    v63 = v126;
    sub_22C903F8C();
    v64 = sub_22C9063CC();
    v65 = sub_22C90AADC();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_22C366000, v64, v65, "Expected a call statement ID in update expression", v66, 2u);
      MEMORY[0x2318B9880](v66, -1, -1);
    }

    (*(v127 + 8))(v63, v128);
    type metadata accessor for InterpreterError();
    sub_22C70C380(&qword_27D9BAA40, type metadata accessor for InterpreterError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_10:
    v67 = v40;
    return sub_22C36DD80(v67, &qword_27D9BAA18);
  }

  v51 = v125;
  v52 = v121;
  (*(v125 + 32))(v121, v38, v50);
  v53 = v118;
  sub_22C90702C();
  v55 = v119;
  v54 = v120;
  if ((*(v119 + 88))(v53, v120) != *MEMORY[0x277D1DA78])
  {
    (*(v51 + 8))(v52, v50);
    (*(v55 + 8))(v53, v54);
    goto LABEL_7;
  }

  (*(v55 + 96))(v53, v54);
  (*(v116 + 32))(v115, v53, v117);
  v128 = sub_22C906A8C();
  v56 = v123;
  MEMORY[0x2318B5880]();
  v57 = *(v104 + 16);
  v58 = v105;
  (v57)(v103, v107, v105);
  sub_22C909F0C();
  MEMORY[0x2318B4D00]();
  sub_22C9077EC();
  v59 = v106;
  v57();
  sub_22C36C640(v59, 0, 1, v58);
  v60 = v109;
  Interpreter2.worlds(stmt:sessionState:globalToolId:)();
  if (v60)
  {

    sub_22C36DD80(v59, &qword_27D9BF330);
    v62 = sub_22C9078FC();
    (*(*(v62 - 8) + 8))(v122, v62);
    (*(v116 + 8))(v115, v117);
    (*(v125 + 8))(v52, v129);
    goto LABEL_10;
  }

  v69 = v61;
  v107 = 0;
  v108 = v40;
  sub_22C36DD80(v59, &qword_27D9BF330);
  v70 = v128;
  sub_22C6EF70C(v128, v69, 0);

  sub_22C9078AC();
  sub_22C3A5908(&qword_27D9BF780, &qword_22C923040);
  v71 = sub_22C90B1CC();
  v72 = v71;
  v73 = 0;
  v74 = v70 + 8;
  v75 = 1 << *(v70 + 32);
  v76 = -1;
  if (v75 < 64)
  {
    v76 = ~(-1 << v75);
  }

  v77 = v76 & v70[8];
  v78 = (v75 + 63) >> 6;
  v119 = v113 + 32;
  v120 = v113 + 16;
  LODWORD(v127) = *MEMORY[0x277D1D830];
  v118 = (v114 + 104);
  v110 = v71 + 64;
  v109 = v114 + 32;
  result = v70;
  v126 = v72;
  if (v77)
  {
    while (1)
    {
      v79 = __clz(__rbit64(v77));
      v128 = ((v77 - 1) & v77);
LABEL_21:
      v82 = v79 | (v73 << 6);
      v83 = *(result + 56);
      v84 = result;
      v85 = (*(result + 48) + 16 * v82);
      v86 = v85[1];
      v131 = *v85;
      v87 = v113;
      v88 = v56;
      v89 = v56;
      v90 = v111;
      (*(v113 + 16))(v88, v83 + *(v113 + 72) * v82, v111);
      v91 = *(v87 + 32);
      v92 = v112;
      v91(v112, v89, v90);
      v93 = v114;
      v94 = v124;
      (*(v114 + 104))(v92, v127, v124);
      *(v110 + ((v82 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v82;
      v95 = v126;
      v96 = (*(v126 + 6) + 16 * v82);
      *v96 = v131;
      v96[1] = v86;
      v97 = v92;
      v72 = v95;
      result = (*(v93 + 32))(*(v95 + 7) + *(v93 + 72) * v82, v97, v94);
      v98 = *(v72 + 16);
      v99 = __OFADD__(v98, 1);
      v100 = v98 + 1;
      if (v99)
      {
        break;
      }

      *(v72 + 16) = v100;

      v56 = v123;
      result = v84;
      v77 = v128;
      if (!v128)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    v80 = v73;
    while (1)
    {
      v73 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        break;
      }

      if (v73 >= v78)
      {

        v101 = sub_22C9078BC();
        sub_22C70A2B8(v72, sub_22C6AC71C, 0, v102);
        v101(v130, 0);
        (*(v116 + 8))(v115, v117);
        (*(v125 + 8))(v121, v129);
        v67 = v108;
        return sub_22C36DD80(v67, &qword_27D9BAA18);
      }

      v81 = v74[v73];
      ++v80;
      if (v81)
      {
        v79 = __clz(__rbit64(v81));
        v128 = ((v81 - 1) & v81);
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C6F5470@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v168 = a3;
  v175 = a2;
  v6 = sub_22C901FAC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v143 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_22C908BBC();
  v140 = *(v141 - 8);
  v9 = *(v140 + 64);
  MEMORY[0x28223BE20](v141);
  v142 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_22C908C3C();
  v137 = *(v138 - 8);
  v11 = *(v137 + 64);
  MEMORY[0x28223BE20](v138);
  v139 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_22C9093BC();
  v134 = *(v135 - 8);
  v13 = *(v134 + 64);
  MEMORY[0x28223BE20](v135);
  v136 = (&v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v133 = &v131 - v17;
  v148 = sub_22C908EAC();
  v151 = *(v148 - 8);
  v18 = *(v151 + 64);
  v19 = MEMORY[0x28223BE20](v148);
  v146 = &v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v144 = &v131 - v21;
  v153 = sub_22C9063DC();
  v152 = *(v153 - 8);
  v22 = *(v152 + 64);
  v23 = MEMORY[0x28223BE20](v153);
  v150 = &v131 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v147 = &v131 - v26;
  MEMORY[0x28223BE20](v25);
  v145 = &v131 - v27;
  v28 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v154 = &v131 - v30;
  v157 = sub_22C90069C();
  v156 = *(v157 - 8);
  v31 = *(v156 + 64);
  MEMORY[0x28223BE20](v157);
  v155 = &v131 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v164 = &v131 - v35;
  v169 = sub_22C90880C();
  v165 = *(v169 - 8);
  v36 = *(v165 + 64);
  v37 = MEMORY[0x28223BE20](v169);
  v149 = &v131 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v163 = &v131 - v39;
  v166 = sub_22C908A0C();
  v158 = *(v166 - 8);
  v40 = *(v158 + 64);
  MEMORY[0x28223BE20](v166);
  v167 = &v131 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_22C908D6C();
  v171 = *(v42 - 8);
  v172 = v42;
  v43 = *(v171 + 64);
  MEMORY[0x28223BE20](v42);
  v45 = &v131 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_22C3A5908(&qword_27D9BB628, &unk_22C920580);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v46 - 8);
  v132 = &v131 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v162 = &v131 - v51;
  MEMORY[0x28223BE20](v50);
  v53 = &v131 - v52;
  v54 = sub_22C9069BC();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  v57 = MEMORY[0x28223BE20](v54);
  v159 = &v131 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v60 = &v131 - v59;
  v61 = sub_22C9078FC();
  v160 = *(v61 - 8);
  v161 = v61;
  (*(v160 + 16))(a4, a1);
  v62 = 1;
  sub_22C90699C();
  v170 = a4;
  v63 = sub_22C90786C();
  sub_22C605C04(v60, v63);

  v64 = *(v55 + 8);
  v64(v60, v54);
  v65 = sub_22C908C5C();
  LODWORD(a1) = sub_22C370B74(v53, 1, v65);
  sub_22C36DD80(v53, &qword_27D9BB628);
  if (a1 == 1)
  {
    v66 = sub_22C90789C();
    v67 = sub_22C58B5C4(v66);

    if (v67)
    {
      v68 = v159;
      sub_22C90699C();
      v69 = v162;
      sub_22C605C04(v68, v67);

      v64(v68, v54);
      v62 = sub_22C370B74(v69, 1, v65) != 1;
    }

    else
    {
      v69 = v162;
      sub_22C36C640(v162, 1, 1, v65);
      v62 = 0;
    }

    sub_22C36DD80(v69, &qword_27D9BB628);
  }

  v70 = sub_22C908DEC();
  v72 = v171;
  v71 = v172;
  v73 = (*(v171 + 104))(v45, *MEMORY[0x277D72170], v172);
  MEMORY[0x28223BE20](v73);
  *(&v131 - 2) = v45;
  v74 = v173;
  v75 = sub_22C5EC62C(sub_22C50AFAC, (&v131 - 4), v70);

  result = (*(v72 + 8))(v45, v71);
  if (!v62 && v75)
  {
    v77 = v163;
    sub_22C90878C();
    v78 = sub_22C9087DC();
    v79 = *(v165 + 8);
    v79(v77, v169);
    v80 = v164;
    sub_22C3A5950(v78);

    v81 = v166;
    if (sub_22C370B74(v80, 1, v166) == 1)
    {
      sub_22C36DD80(v80, &qword_27D9BA808);
      type metadata accessor for InterpreterError();
      sub_22C70C380(&qword_27D9BAA40, type metadata accessor for InterpreterError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return (*(v160 + 8))(v170, v161);
    }

    v173 = v65;
    v82 = v158;
    (*(v158 + 32))(v167, v80, v81);
    v83 = v154;
    sub_22C9088DC();
    v84 = v157;
    if (sub_22C370B74(v83, 1, v157) == 1)
    {
      sub_22C36DD80(v83, &qword_27D9BB190);
      v85 = v150;
      sub_22C903F8C();
      v86 = sub_22C9063CC();
      v87 = sub_22C90AADC();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&dword_22C366000, v86, v87, "Missing query event ID when resolving system framework intent app parameter", v88, 2u);
        MEMORY[0x2318B9880](v88, -1, -1);
      }

      (*(v152 + 8))(v85, v153);
      type metadata accessor for InterpreterError();
      sub_22C70C380(&qword_27D9BAA40, type metadata accessor for InterpreterError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v82 + 8))(v167, v81);
      return (*(v160 + 8))(v170, v161);
    }

    v172 = v74;
    (*(v156 + 32))(v155, v83, v84);
    v89 = v149;
    sub_22C90878C();
    v90 = sub_22C9087DC();
    v79(v89, v169);
    v174 = v90;
    sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
    sub_22C50B118(&qword_27D9BA9F8, &qword_27D9BA9F0, &qword_22C912420);
    v91 = sub_22C907E6C();

    v92 = *(v91 + 16);
    if (v92 == 1)
    {
      sub_22C58AF88(v91);
      v93 = v151;
      if (v105)
      {

        sub_22C90699C();
        v106 = sub_22C90931C();
        v107 = swift_allocBox();
        v109 = v108;
        v110 = sub_22C90993C();
        sub_22C36C640(v133, 1, 1, v110);
        sub_22C90923C();
        (*(*(v106 - 8) + 104))(v109, *MEMORY[0x277D72970], v106);
        v111 = v136;
        *v136 = v107;
        (*(v134 + 104))(v111, *MEMORY[0x277D72A58], v135);
        (*(v137 + 104))(v139, *MEMORY[0x277D1E938], v138);
        (*(v140 + 104))(v142, *MEMORY[0x277D1E900], v141);
        sub_22C9087AC();
        sub_22C90882C();

        v112 = v132;
        sub_22C908C1C();
        sub_22C36C640(v112, 0, 1, v173);
        v113 = sub_22C90785C();
        sub_22C603A20(v112, v159);
        v113(&v174, 0);
        goto LABEL_26;
      }
    }

    else
    {
      v93 = v151;
      if (!v92)
      {

        v94 = v145;
        sub_22C903F8C();
        v95 = v144;
        v96 = v148;
        (*(v93 + 16))(v144, v175, v148);
        v97 = sub_22C9063CC();
        v98 = sub_22C90AADC();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v175 = swift_slowAlloc();
          v174 = v175;
          *v99 = 136315138;
          LODWORD(v173) = v98;
          v100 = sub_22C908E7C();
          v102 = v101;
          (*(v93 + 8))(v95, v148);
          v103 = sub_22C36F9F4(v100, v102, &v174);

          *(v99 + 4) = v103;
          _os_log_impl(&dword_22C366000, v97, v173, "Unable to set the foreground app for system framework intent %s due to no app being in focus", v99, 0xCu);
          v104 = v175;
          sub_22C36FF94(v175);
          MEMORY[0x2318B9880](v104, -1, -1);
          MEMORY[0x2318B9880](v99, -1, -1);

          (*(v152 + 8))(v94, v153);
          (*(v156 + 8))(v155, v157);
          return (*(v82 + 8))(v167, v81);
        }

        (*(v93 + 8))(v95, v96);
        (*(v152 + 8))(v94, v153);
LABEL_26:
        (*(v156 + 8))(v155, v84);
        return (*(v82 + 8))(v167, v81);
      }
    }

    v114 = v147;
    sub_22C903F8C();
    v115 = v146;
    v116 = v148;
    (*(v93 + 16))(v146, v175, v148);

    v117 = sub_22C9063CC();
    v118 = sub_22C90AADC();

    LODWORD(v175) = v118;
    if (os_log_type_enabled(v117, v118))
    {
      v119 = v115;
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v174 = v121;
      *v120 = 136315394;
      v122 = sub_22C908E7C();
      v173 = v117;
      v124 = v123;
      (*(v93 + 8))(v119, v116);
      v125 = sub_22C36F9F4(v122, v124, &v174);

      *(v120 + 4) = v125;
      *(v120 + 12) = 2080;
      v126 = sub_22C90A8CC();
      v128 = v127;

      v129 = sub_22C36F9F4(v126, v128, &v174);

      *(v120 + 14) = v129;
      v130 = v173;
      _os_log_impl(&dword_22C366000, v173, v175, "Unable to set the foreground app for system framework intent %s due to more than one app in focus: %s", v120, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318B9880](v121, -1, -1);
      MEMORY[0x2318B9880](v120, -1, -1);

      (*(v152 + 8))(v147, v153);
      (*(v156 + 8))(v155, v157);
    }

    else
    {

      (*(v93 + 8))(v115, v116);
      (*(v152 + 8))(v114, v153);
      (*(v156 + 8))(v155, v84);
    }

    return (*(v158 + 8))(v167, v81);
  }

  return result;
}

uint64_t sub_22C6F690C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v97 = a5;
  v98 = a6;
  v80 = a4;
  v79 = a1;
  v92 = sub_22C9069BC();
  v8 = *(v92 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v92);
  v91 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9BB628, &unk_22C920580);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v73 - v13;
  v95 = sub_22C3A5908(&qword_27D9BA910, &unk_22C90C960);
  v75 = *(v95 - 8);
  v15 = *(v75 + 64);
  v16 = MEMORY[0x28223BE20](v95);
  v89 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v96 = &v73 - v19;
  MEMORY[0x28223BE20](v18);
  v88 = &v73 - v20;
  v21 = a3 + 56;
  v22 = *a2;
  v23 = 1 << *(a3 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(a3 + 56);
  v26 = (v23 + 63) >> 6;
  v86 = v8;
  v87 = (v8 + 8);

  v28 = 0;
  v78 = v22;
  v77 = v26;
  v76 = a3;
  v90 = v14;
  v74 = a3 + 56;
  if (v25)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v26)
    {
    }

    v25 = *(v21 + 8 * v29);
    ++v28;
    if (v25)
    {
      v28 = v29;
      do
      {
LABEL_8:
        v30 = *(a3 + 48);
        v84 = v28;
        v31 = *(v30 + ((v28 << 9) | (8 * __clz(__rbit64(v25)))));

        v33 = sub_22C6F6FD8(v32, v97, v98);
        v34 = *(v33 + 16);
        if (v34)
        {
          v82 = v31;
          v83 = v25;
          v94 = *(v95 + 48);
          v35 = (*(v75 + 80) + 32) & ~*(v75 + 80);
          v81 = v33;
          v36 = v33 + v35;
          v93 = *(v75 + 72);
          v101 = v22;
          v37 = v96;
          do
          {
            v102 = v36;
            v103 = v34;
            v38 = v88;
            sub_22C6AEA50(v36, v88, &qword_27D9BA910, &unk_22C90C960);
            v39 = v95;
            v40 = *(v95 + 48);
            *v37 = *v38;
            v41 = sub_22C908C5C();
            v42 = *(v41 - 8);
            v99 = *(v42 + 32);
            v100 = v42 + 32;
            v99(&v37[v40], &v38[v94], v41);
            v43 = sub_22C90A0EC();
            v44 = [v43 key];

            sub_22C90A11C();
            v45 = v37;
            v46 = v89;
            v47 = v41;
            v48 = v42;
            sub_22C6AEA50(v45, v89, &qword_27D9BA910, &unk_22C90C960);
            v49 = *v46;
            v50 = *(v39 + 48);
            v51 = v91;
            sub_22C90699C();
            (*(v48 + 8))(&v46[v50], v47);
            v52 = v101;
            sub_22C628D18();
            if (v54)
            {
              v55 = v53;
              swift_isUniquelyReferenced_nonNull_native();
              v104 = v52;
              v56 = v51;
              v57 = *(v52 + 24);
              sub_22C3A5908(&qword_27D9BF348, &unk_22C923370);
              sub_22C90B15C();
              v58 = v104;
              v59 = *(v86 + 8);
              v60 = v92;
              v59(*(v104 + 48) + *(v86 + 72) * v55, v92);
              v61 = v90;
              v99(v90, (*(v58 + 56) + *(v48 + 72) * v55), v47);
              sub_22C70C380(&qword_27D9BAA98, MEMORY[0x277D1DCF0]);
              v101 = v58;
              sub_22C90B17C();
              v59(v56, v60);
              v37 = v96;
              sub_22C36DD80(v96, &qword_27D9BA910);
              v62 = 0;
            }

            else
            {
              (*v87)(v51, v92);
              v37 = v96;
              sub_22C36DD80(v96, &qword_27D9BA910);
              v62 = 1;
              v61 = v90;
            }

            sub_22C36C640(v61, v62, 1, v47);
            sub_22C36DD80(v61, &qword_27D9BB628);
            v36 = v102 + v93;
            v34 = v103 - 1;
          }

          while (v103 != 1);

          a3 = v76;
          v63 = v85;
          v21 = v74;
          v25 = v83;
          v31 = v82;
          v64 = v101;
        }

        else
        {

          v64 = v22;
          v63 = v85;
        }

        v65 = sub_22C6B6BA0(v31, v64);
        v66 = sub_22C70ADB8(v65);
        v85 = v63;

        v25 &= v25 - 1;

        sub_22C6A5BAC(&v104, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);

        v22 = v78;
        v26 = v77;
        v28 = v84;
      }

      while (v25);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C6F6FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = a2;
  v89 = sub_22C908C5C();
  v5 = *(v89 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v89 - 8);
  v73 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
  v8 = *(*(v90 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v90);
  v72 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v68 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v80 = &v68 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v68 - v16;
  v18 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 64);
  v22 = (v19 + 63) >> 6;
  v79 = (v5 + 16);
  v88 = (v5 + 8);
  v71 = (v5 + 32);
  v81 = v5;
  v70 = (v5 + 40);
  v84 = a1;

  v23 = 0;
  v74 = MEMORY[0x277D84F98];
  v75 = v13;
  v83 = a3;
  v77 = v22;
  v78 = a1 + 64;
LABEL_4:
  v24 = v23;
  if (!v21)
  {
    goto LABEL_6;
  }

  do
  {
    v23 = v24;
LABEL_9:
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v26 = v25 | (v23 << 6);
    v27 = v84;
    v28 = *(v84 + 48);
    v29 = sub_22C9069BC();
    v30 = *(v29 - 8);
    (*(v30 + 16))(v17, v28 + *(v30 + 72) * v26, v29);
    v31 = *(v27 + 56);
    v76 = *(v81 + 72);
    v32 = v31 + v76 * v26;
    v34 = v89;
    v33 = v90;
    (*(v81 + 16))(&v17[*(v90 + 48)], v32, v89);
    v35 = v17;
    v36 = v17;
    v37 = v80;
    sub_22C6AEA50(v36, v80, &qword_27D9BF110, &unk_22C922580);
    v5 = *(v33 + 48);
    v38 = sub_22C9069AC();
    v40 = v39;
    v41 = *(v30 + 8);
    v86 = v30 + 8;
    v87 = v29;
    v85 = v41;
    v41(v37, v29);
    if (v38 == v82 && v40 == v83)
    {

      v44 = *v88;
      (*v88)((v37 + v5), v34);
    }

    else
    {
      v43 = sub_22C90B4FC();

      v44 = *v88;
      (*v88)((v37 + v5), v34);
      if ((v43 & 1) == 0)
      {
        v17 = v35;
        sub_22C36DD80(v35, &qword_27D9BF110);
        goto LABEL_18;
      }
    }

    v17 = v35;
    v45 = v35;
    v46 = v75;
    sub_22C6AEA50(v45, v75, &qword_27D9BF110, &unk_22C922580);
    v5 = *(v90 + 48);
    v47 = sub_22C90697C();
    if ((v48 & 1) == 0)
    {
      v49 = v47;
      v85(v46, v87);
      v50 = (v46 + v5);
      v5 = v89;
      v44(v50, v89);
      v51 = v72;
      sub_22C6AEA50(v17, v72, &qword_27D9BF110, &unk_22C922580);
      v52 = v51 + *(v90 + 48);
      v69 = *v71;
      v69(v73, v52, v5);
      v53 = v74;
      swift_isUniquelyReferenced_nonNull_native();
      v91 = v53;
      v68 = sub_22C628CD4(v49);
      v55 = *(v53 + 16);
      v56 = (v54 & 1) == 0;
      v74 = (v55 + v56);
      if (__OFADD__(v55, v56))
      {
        goto LABEL_32;
      }

      v5 = v54;
      sub_22C3A5908(&qword_27D9BF7D8, &unk_22C9230A8);
      if (sub_22C90B15C())
      {
        v57 = sub_22C628CD4(v49);
        if ((v5 & 1) != (v58 & 1))
        {
          goto LABEL_34;
        }

        v59 = v76;
      }

      else
      {
        v59 = v76;
        v57 = v68;
      }

      v60 = v89;
      v61 = v91;
      v74 = v91;
      if (v5)
      {
        (*v70)(v91[7] + v57 * v59, v73, v89);
        sub_22C36DD80(v17, &qword_27D9BF110);
      }

      else
      {
        v91[(v57 >> 6) + 8] |= 1 << v57;
        *(v61[6] + 8 * v57) = v49;
        v69((v61[7] + v57 * v59), v73, v60);
        sub_22C36DD80(v17, &qword_27D9BF110);
        v62 = v61[2];
        v63 = __OFADD__(v62, 1);
        v64 = v62 + 1;
        if (v63)
        {
          goto LABEL_33;
        }

        v61[2] = v64;
      }

      v22 = v77;
      v18 = v78;
      v85(v72, v87);
      goto LABEL_4;
    }

    sub_22C36DD80(v17, &qword_27D9BF110);
    v85(v46, v87);
    v44((v46 + v5), v89);
LABEL_18:
    v24 = v23;
    v22 = v77;
    v18 = v78;
  }

  while (v21);
LABEL_6:
  while (1)
  {
    v23 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      v91 = sub_22C47039C(v74);
      sub_22C708EF8(&v91);

      sub_22C8D5C44();
      v66 = v65;

      return v66;
    }

    v21 = *(v18 + 8 * v23);
    ++v24;
    if (v21)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  sub_22C90B54C();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22C6F76C0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v85 = a6;
  v62 = a1;
  v9 = sub_22C908C5C();
  v79 = *(v9 - 8);
  v10 = *(v79 + 64);
  MEMORY[0x28223BE20](v9);
  v83 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C9069BC();
  v66 = *(v12 - 8);
  v13 = *(v66 + 64);
  MEMORY[0x28223BE20](v12);
  v84 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C3A5908(&qword_27D9BA910, &unk_22C90C960);
  v77 = *(v15 - 8);
  v16 = *(v77 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v74 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v82 = (&v61 - v20);
  MEMORY[0x28223BE20](v19);
  v73 = (&v61 - v21);
  v22 = sub_22C3A5908(&qword_27D9BF7D0, &qword_22C923098);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = (&v61 - v24);
  v26 = *a2;
  sub_22C70C380(&qword_27D9BAA98, MEMORY[0x277D1DCF0]);
  v72 = v12;
  v78 = v9;
  v27 = sub_22C909F0C();
  v75 = a4;
  v76 = a5;
  v28 = sub_22C6F6FD8(v26, a4, a5);
  if (!*(v28 + 16))
  {
    goto LABEL_19;
  }

  sub_22C3A5DAC(v85);
  if (sub_22C370B74(v25, 1, v15) == 1)
  {

    sub_22C36DD80(v25, &qword_27D9BF7D0);
LABEL_20:
    sub_22C6A5BAC(&v86, v27, v29, v30, v31, v32, v33, v34, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84);
  }

  v35 = v15;
  v36 = *v25;
  v37 = v25 + *(v15 + 48);
  v38 = v78;
  (*(v79 + 8))(v37, v78);
  v85 = v36 + 1;
  if (!__OFADD__(v36, 1))
  {
    v71 = *(v28 + 16);
    if (v71)
    {
      v39 = 0;
      v70 = v28 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
      v69 = *(v15 + 48);
      v80 = (v79 + 32);
      v65 = v66 + 16;
      v68 = (v66 + 8);
      v64 = v79 + 40;
      v67 = v28;
      while (v39 < *(v28 + 16))
      {
        v40 = *(v77 + 72);
        v81 = v39;
        v41 = v73;
        sub_22C6AEA50(v70 + v40 * v39, v73, &qword_27D9BA910, &unk_22C90C960);
        v42 = *(v35 + 48);
        v43 = v82;
        *v82 = *v41;
        v44 = *v80;
        (*v80)(v43 + v42, v41 + v69, v38);

        sub_22C90699C();
        v45 = v43;
        v46 = v74;
        sub_22C6AEA50(v45, v74, &qword_27D9BA910, &unk_22C90C960);
        v44(v83, v46 + *(v35 + 48), v38);
        swift_isUniquelyReferenced_nonNull_native();
        v86 = v27;
        sub_22C628D18();
        if (__OFADD__(v27[2], (v48 & 1) == 0))
        {
          goto LABEL_22;
        }

        v49 = v47;
        v50 = v48;
        sub_22C3A5908(&qword_27D9BF348, &unk_22C923370);
        if (sub_22C90B15C())
        {
          sub_22C628D18();
          if ((v50 & 1) != (v52 & 1))
          {
            goto LABEL_26;
          }

          v49 = v51;
          v38 = v78;
        }

        else
        {
          v38 = v78;
        }

        v27 = v86;
        if (v50)
        {
          (*(v79 + 40))(v86[7] + *(v79 + 72) * v49, v83, v38);
          (*v68)(v84, v72);
          sub_22C36DD80(v82, &qword_27D9BA910);
        }

        else
        {
          v53 = v35;
          v86[(v49 >> 6) + 8] |= 1 << v49;
          v54 = v66;
          v55 = v84;
          v56 = v72;
          (*(v66 + 16))(v27[6] + *(v66 + 72) * v49, v84, v72);
          v44(v27[7] + *(v79 + 72) * v49, v83, v38);
          (*(v54 + 8))(v55, v56);
          sub_22C36DD80(v82, &qword_27D9BA910);
          v57 = v27[2];
          v58 = __OFADD__(v57, 1);
          v59 = v57 + 1;
          if (v58)
          {
            goto LABEL_24;
          }

          v27[2] = v59;
          v35 = v53;
        }

        v58 = __OFADD__(v85++, 1);
        v28 = v67;
        if (v58)
        {
          goto LABEL_23;
        }

        v39 = v81 + 1;
        if (v71 == v81 + 1)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_19:

    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C6F7DB8(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v121 = a5;
  v129 = a4;
  v112 = a1;
  v7 = sub_22C908C5C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v158 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_22C3A5908(&qword_27D9BA910, &unk_22C90C960);
  v147 = *(v151 - 8);
  v11 = *(v147 + 64);
  v12 = MEMORY[0x28223BE20](v151);
  v143 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v157 = (&v111 - v15);
  MEMORY[0x28223BE20](v14);
  v142 = (&v111 - v16);
  v17 = sub_22C3A5908(&qword_27D9BF7D0, &qword_22C923098);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v120 = (&v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v22 = (&v111 - v21);
  v153 = sub_22C9069BC();
  v23 = *(v153 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v153);
  v159 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v152 = &v111 - v27;
  v126 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
  v28 = *(*(v126 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v126);
  v125 = &v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v134 = &v111 - v32;
  MEMORY[0x28223BE20](v31);
  v124 = &v111 - v33;
  v34 = *a3;
  v35 = *(*a3 + 56);
  v116 = *a3 + 56;
  v36 = 1 << *(v34 + 32);
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  else
  {
    v37 = -1;
  }

  v38 = *a2;
  v118 = v37 & v35;
  v115 = (v36 + 63) >> 6;
  v140 = v23 + 16;
  v123 = v8 + 16;
  v122 = v23 + 32;
  v155 = v8 + 32;
  v132 = v8 + 8;
  v127 = v23;
  v150 = (v23 + 8);
  v128 = v8;
  v137 = (v8 + 40);

  v114 = v34;

  v39 = 0;
  v119 = xmmword_22C90F870;
  v141 = v22;
  while (1)
  {
    v40 = v118;
    if (v118)
    {
      v41 = v39;
    }

    else
    {
      do
      {
        v41 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_57;
        }

        if (v41 >= v115)
        {

          sub_22C6A5BAC(&v161, v38, v104, v105, v106, v107, v108, v109, v111, v112, v113, v114, v115, v116, v117, v118, v119, *(&v119 + 1), v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);
        }

        v40 = *(v116 + 8 * v41);
        ++v39;
      }

      while (!v40);
    }

    v42 = *(v114 + 48);
    v117 = v41;
    v43 = *(v42 + ((v41 << 9) | (8 * __clz(__rbit64(v40)))));
    v118 = (v40 - 1) & v40;
    v44 = v43 + 64;
    v45 = 1 << *(v43 + 32);
    v46 = v45 < 64 ? ~(-1 << v45) : -1;
    v47 = v46 & *(v43 + 64);
    v48 = (v45 + 63) >> 6;
    v136 = v43;
    swift_bridgeObjectRetain_n();
    v49 = 0;
    v131 = v44;
    v130 = v48;
    if (v47)
    {
      break;
    }

    while (1)
    {
LABEL_15:
      v50 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        goto LABEL_55;
      }

      if (v50 >= v48)
      {
        break;
      }

      v47 = *(v44 + 8 * v50);
      ++v49;
      if (v47)
      {
        v160 = v38;
        v49 = v50;
        goto LABEL_19;
      }
    }

    v39 = v117;
  }

  while (1)
  {
    v160 = v38;
LABEL_19:
    v135 = v47;
    v133 = v49;
    v51 = __clz(__rbit64(v47)) | (v49 << 6);
    v52 = *(v136 + 48);
    v53 = v136;
    v54 = v127;
    v139 = *(v127 + 72);
    v55 = v124;
    v138 = *(v127 + 16);
    v138(v124, v52 + v139 * v51, v153);
    v56 = *(v53 + 56);
    v57 = v128;
    v149 = *(v128 + 72);
    v58 = v56 + v149 * v51;
    v59 = v126;
    v60 = *(v126 + 48);
    (*(v128 + 16))(v55 + v60, v58, v7);
    v156 = *(v59 + 48);
    v61 = *(v54 + 32);
    v62 = v134;
    v61(v134, v55, v153);
    v154 = *(v57 + 32);
    v154(v62 + v156, v55 + v60, v7);
    v63 = v125;
    sub_22C6AEA50(v62, v125, &qword_27D9BF110, &unk_22C922580);
    v64 = *(v59 + 48);
    v61(v152, v63, v153);
    v65 = *(v57 + 8);
    v65(v63 + v64, v7);
    v66 = sub_22C9069AC();
    v68 = sub_22C6F6FD8(v160, v66, v67);

    v69 = sub_22C9069AC();
    v71 = sub_22C6F6FD8(v136, v69, v70);

    if (*(v71 + 16))
    {
      break;
    }

    v77 = *v150;
    v38 = v160;
LABEL_46:
    v78 = v135;
LABEL_48:
    v47 = (v78 - 1) & v78;
    v77(v152, v153);
    sub_22C36DD80(v134, &qword_27D9BF110);
    v44 = v131;
    v48 = v130;
    v49 = v133;
    if (!v47)
    {
      goto LABEL_15;
    }
  }

  sub_22C3A5908(&qword_27D9BAB98, &qword_22C9230A0);
  inited = swift_initStackObject();
  *(inited + 16) = v119;
  sub_22C3A5DAC(v68);

  v73 = v151;
  v74 = sub_22C370B74(v22, 1, v151);
  v75 = v120;
  v156 = v65;
  if (v74 == 1)
  {
    sub_22C36DD80(v22, &qword_27D9BF7D0);
    v76 = -1;
  }

  else
  {
    v76 = *v22;
    v65(v22 + *(v73 + 48), v7);
  }

  v38 = v160;
  v78 = v135;
  *(inited + 32) = v76;
  sub_22C3A5DAC(v121);
  if (sub_22C370B74(v75, 1, v73) == 1)
  {
    sub_22C36DD80(v75, &qword_27D9BF7D0);
    v79 = -1;
  }

  else
  {
    v79 = *v75;
    (v156)(v75 + *(v73 + 48), v7);
  }

  *(inited + 40) = v79;
  v80 = sub_22C3D0D14(inited);
  v82 = v81;
  swift_setDeallocating();
  if (v82)
  {
    v83 = -1;
  }

  else
  {
    v83 = v80;
  }

  v160 = (v83 + 1);
  if (__OFADD__(v83, 1))
  {
    goto LABEL_58;
  }

  v148 = *(v71 + 16);
  if (!v148)
  {

    v77 = *v150;
    goto LABEL_48;
  }

  v84 = 0;
  v146 = *(v151 + 48);
  v145 = v71 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
  v144 = v71;
  while (v84 < *(v71 + 16))
  {
    v85 = *(v147 + 72);
    v156 = v84;
    v86 = v142;
    sub_22C6AEA50(v145 + v85 * v84, v142, &qword_27D9BA910, &unk_22C90C960);
    v87 = v151;
    v88 = *(v151 + 48);
    v89 = v157;
    *v157 = *v86;
    v90 = v154;
    v154(v89 + v88, v86 + v146, v7);
    sub_22C9069AC();
    sub_22C90699C();
    v91 = v143;
    sub_22C6AEA50(v89, v143, &qword_27D9BA910, &unk_22C90C960);
    v92 = v7;
    v90(v158, v91 + *(v87 + 48), v7);
    swift_isUniquelyReferenced_nonNull_native();
    v161 = v38;
    sub_22C628D18();
    if (__OFADD__(v38[2], (v94 & 1) == 0))
    {
      goto LABEL_53;
    }

    v95 = v93;
    v96 = v94;
    sub_22C3A5908(&qword_27D9BF348, &unk_22C923370);
    if (sub_22C90B15C())
    {
      sub_22C628D18();
      v71 = v144;
      if ((v96 & 1) != (v98 & 1))
      {
        goto LABEL_59;
      }

      v95 = v97;
    }

    else
    {
      v71 = v144;
    }

    v38 = v161;
    if (v96)
    {
      v7 = v92;
      (*v137)(v161[7] + v95 * v149, v158, v92);
      v77 = *v150;
      (*v150)(v159, v153);
      sub_22C36DD80(v157, &qword_27D9BA910);
    }

    else
    {
      v161[(v95 >> 6) + 8] |= 1 << v95;
      v99 = v159;
      v100 = v153;
      v138(v38[6] + v95 * v139, v159, v153);
      v154(v38[7] + v95 * v149, v158, v92);
      v77 = *v150;
      (*v150)(v99, v100);
      sub_22C36DD80(v157, &qword_27D9BA910);
      v101 = v38[2];
      v102 = __OFADD__(v101, 1);
      v103 = v101 + 1;
      if (v102)
      {
        goto LABEL_56;
      }

      v38[2] = v103;
      v7 = v92;
    }

    v102 = __OFADD__(v160, 1);
    v160 = (v160 + 1);
    v22 = v141;
    if (v102)
    {
      goto LABEL_54;
    }

    v84 = v156 + 1;
    if (v148 == (v156 + 1))
    {

      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C6F8A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[12] = a7;
  v8[13] = v7;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[6] = a1;
  v8[7] = a2;
  v9 = sub_22C902D4C();
  v8[14] = v9;
  v10 = *(v9 - 8);
  v8[15] = v10;
  v11 = *(v10 + 64) + 15;
  v8[16] = swift_task_alloc();
  v12 = *(*(sub_22C3A5908(&qword_27D9BF778, &qword_22C923030) - 8) + 64) + 15;
  v8[17] = swift_task_alloc();
  v13 = sub_22C9078FC();
  v8[18] = v13;
  v14 = *(v13 - 8);
  v8[19] = v14;
  v15 = *(v14 + 64) + 15;
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v16 = sub_22C908EAC();
  v8[22] = v16;
  v17 = *(v16 - 8);
  v8[23] = v17;
  v18 = *(v17 + 64) + 15;
  v8[24] = swift_task_alloc();
  v19 = sub_22C901FAC();
  v8[25] = v19;
  v20 = *(v19 - 8);
  v8[26] = v20;
  v21 = *(v20 + 64) + 15;
  v8[27] = swift_task_alloc();
  v22 = sub_22C9086FC();
  v8[28] = v22;
  v23 = *(v22 - 8);
  v8[29] = v23;
  v24 = *(v23 + 64) + 15;
  v8[30] = swift_task_alloc();
  v25 = sub_22C90952C();
  v8[31] = v25;
  v26 = *(v25 - 8);
  v8[32] = v26;
  v27 = *(v26 + 64) + 15;
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  v28 = sub_22C3A5908(&qword_27D9BAF80, &unk_22C90FAC0);
  v8[36] = v28;
  v29 = *(v28 - 8);
  v8[37] = v29;
  v30 = *(v29 + 64) + 15;
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v31 = sub_22C9093BC();
  v8[43] = v31;
  v32 = *(v31 - 8);
  v8[44] = v32;
  v33 = *(v32 + 64) + 15;
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v34 = *(*(sub_22C3A5908(&qword_27D9BF308, &qword_22C922570) - 8) + 64) + 15;
  v8[47] = swift_task_alloc();
  v35 = sub_22C9074CC();
  v8[48] = v35;
  v36 = *(v35 - 8);
  v8[49] = v36;
  v37 = *(v36 + 64) + 15;
  v8[50] = swift_task_alloc();
  v38 = sub_22C9086BC();
  v8[51] = v38;
  v39 = *(v38 - 8);
  v8[52] = v39;
  v40 = *(v39 + 64) + 15;
  v8[53] = swift_task_alloc();
  v8[54] = swift_task_alloc();
  v8[55] = swift_task_alloc();
  v41 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
  v8[56] = v41;
  v42 = *(*(v41 - 8) + 64) + 15;
  v8[57] = swift_task_alloc();
  v8[58] = swift_task_alloc();
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  v8[61] = swift_task_alloc();
  v8[62] = swift_task_alloc();
  v8[63] = swift_task_alloc();
  v43 = sub_22C90769C();
  v8[64] = v43;
  v44 = *(v43 - 8);
  v8[65] = v44;
  v45 = *(v44 + 64) + 15;
  v8[66] = swift_task_alloc();
  v8[67] = swift_task_alloc();
  v46 = sub_22C90880C();
  v8[68] = v46;
  v47 = *(v46 - 8);
  v8[69] = v47;
  v48 = *(v47 + 64) + 15;
  v8[70] = swift_task_alloc();
  v8[71] = swift_task_alloc();
  v49 = sub_22C9063DC();
  v8[72] = v49;
  v50 = *(v49 - 8);
  v8[73] = v50;
  v51 = *(v50 + 64) + 15;
  v8[74] = swift_task_alloc();
  v8[75] = swift_task_alloc();
  v8[76] = swift_task_alloc();
  v8[77] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C6F9160, 0, 0);
}

uint64_t sub_22C6F9160()
{
  v28 = v0;
  v1 = *(v0 + 616);
  v2 = *(v0 + 104);
  v3 = sub_22C6EF70C(*(v0 + 80), *(v0 + 88), 0);
  *(v0 + 624) = v3;
  sub_22C903F8C();

  v4 = sub_22C9063CC();
  v5 = sub_22C90AABC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 616);
  v8 = *(v0 + 584);
  v9 = *(v0 + 576);
  if (v6)
  {
    sub_22C36BED8();
    v26 = v7;
    v10 = swift_slowAlloc();
    sub_22C370220();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 136315138;
    sub_22C3A5908(&qword_27D9BF738, &qword_22C922F48);
    sub_22C6AE694();
    sub_22C36FC08();
    v12 = sub_22C90A8CC();
    v14 = sub_22C36F9F4(v12, v13, &v27);

    *(v10 + 4) = v14;
    sub_22C37B250(&dword_22C366000, v15, v16, "parameter value sets %s");
    sub_22C36FF94(v11);
    v17 = sub_22C38A0CC();
    MEMORY[0x2318B9880](v17);
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v18 = *(v8 + 8);
    v18(v26, v9);
  }

  else
  {

    v18 = *(v8 + 8);
    v18(v7, v9);
  }

  *(v0 + 632) = v18;
  v19 = *(v0 + 568);
  v20 = *(v0 + 96);
  sub_22C90878C();
  v21 = swift_task_alloc();
  *(v0 + 640) = v21;
  *v21 = v0;
  v21[1] = sub_22C6F935C;
  v22 = *(v0 + 568);
  v23 = *(v0 + 104);
  v24 = *(v0 + 72);

  return sub_22C6FBE28(v3, v24);
}

uint64_t sub_22C6F935C()
{
  sub_22C36D5EC();
  v2 = *v1;
  v3 = *v1;
  sub_22C369970();
  *v4 = v3;
  v5 = v2[80];
  v6 = *v1;
  sub_22C36D994();
  *v7 = v6;
  v3[81] = v8;
  v3[82] = v0;

  v9 = v2[78];
  v10 = v2[71];
  v11 = v2[69];
  v12 = v2[68];
  v15 = *(v11 + 8);
  v13 = v11 + 8;
  v14 = v15;
  if (!v0)
  {
    v3[83] = v14;
    v3[84] = v13 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v14(v10, v12);

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

void sub_22C6F9500()
{
  v577 = v0;
  v1 = v0[81];
  v2 = v0[76];
  sub_22C903F8C();

  v3 = sub_22C9063CC();
  v4 = sub_22C90AABC();

  v575 = v0;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[81];
    v567 = v0[79];
    v6 = v0[76];
    v7 = v0[73];
    v8 = v0[72];
    sub_22C36BED8();
    v9 = swift_slowAlloc();
    sub_22C370220();
    v10 = swift_slowAlloc();
    v576[0] = v10;
    *v9 = 136315138;
    sub_22C3A5908(&qword_27D9BF738, &qword_22C922F48);
    sub_22C6AE694();
    sub_22C3726C4();
    v11 = sub_22C90A8CC();
    v13 = sub_22C36F9F4(v11, v12, v576);

    *(v9 + 4) = v13;
    sub_22C374ED0();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    sub_22C36FF94(v10);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v19 = sub_22C36BAFC();
    v20(v19);
  }

  else
  {
    v21 = v0[79];
    v22 = v0[76];
    v23 = v0[73];
    v24 = v0[72];

    v25 = sub_22C36BAFC();
    v21(v25);
  }

  v26 = v0[8];
  if ((sub_22C90765C() & 1) == 0 || (v568 = sub_22C58B5C4(v0[81])) == 0)
  {
    v62 = v0[74];
    v64 = v0[23];
    v63 = v0[24];
    v65 = v0[22];
    v66 = v0[9];
    sub_22C903F8C();
    v67 = *(v64 + 16);
    v68 = sub_22C36D39C();
    v69(v68);
    v70 = sub_22C9063CC();
    v71 = sub_22C90AABC();
    v72 = os_log_type_enabled(v70, v71);
    v73 = v0[79];
    v74 = v0[74];
    v75 = v0[73];
    v76 = v0[72];
    v78 = v0[23];
    v77 = v0[24];
    v79 = v0[22];
    if (v72)
    {
      sub_22C36BED8();
      v569 = v74;
      v80 = swift_slowAlloc();
      sub_22C370220();
      v558 = v76;
      v81 = swift_slowAlloc();
      v576[0] = v81;
      *v80 = 136315138;
      v550 = v73;
      v82 = sub_22C908E7C();
      v84 = v83;
      v85 = *(v78 + 8);
      v86 = sub_22C379FC8();
      v87(v86);
      sub_22C36F9F4(v82, v84, v576);
      sub_22C37FF48();

      *(v80 + 4) = v77;
      _os_log_impl(&dword_22C366000, v70, v71, "Resolving app intent %s", v80, 0xCu);
      sub_22C36FF94(v81);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      v550(v569, v558);
    }

    else
    {

      v88 = *(v78 + 8);
      v89 = sub_22C379FC8();
      v90(v89);
      v91 = sub_22C50B578();
      v73(v91);
    }

    v510 = v0 + 2;
    v92 = v0[84];
    v93 = v0[83];
    v94 = v0[70];
    v95 = v0[68];
    v97 = v0[17];
    v96 = v0[18];
    v98 = v0[12];
    v99 = v0[7];
    sub_22C90878C();
    sub_22C690EE8();
    v100 = sub_22C36D264();
    v93(v100);
    sub_22C36D0A8(v97, 1, v96);
    if (v101)
    {
      v102 = v0[66];
      v103 = v0[65];
      v104 = v0[64];
      v105 = v0[21];
      v107 = v0[17];
      v106 = v0[18];
      v108 = v0[14];
      v109 = v0[8];
      (*(v0[26] + 16))(v0[27], v0[7], v0[25]);
      v110 = *(v103 + 16);
      v111 = sub_22C459028();
      v112(v111);
      sub_22C909F0C();
      MEMORY[0x2318B4D00]();
      sub_22C372FCC();
      sub_22C9077EC();
      sub_22C36D3E0(v107);
      if (!v101)
      {
        sub_22C36DD80(v0[17], &qword_27D9BF778);
      }
    }

    else
    {
      (*(v0[19] + 32))(v0[21], v0[17], v0[18]);
    }

    v113 = v0[81];
    v114 = v0[26];
    v115 = v0[21];
    v116 = v0[15];
    v117 = v0[10];
    sub_22C9078AC();
    sub_22C3A5908(&qword_27D9BF780, &qword_22C923040);
    sub_22C37BB14();
    v118 = sub_22C90B1CC();
    v119 = 0;
    v121 = v117 + 64;
    v120 = *(v117 + 64);
    v535 = v117;
    v122 = *(v117 + 32);
    sub_22C36D280();
    v125 = v124 & v123;
    v127 = (v126 + 63) >> 6;
    v551 = v114;
    v523 = *MEMORY[0x277D1D830];
    v515 = v128 + 8;
    v543 = v116;
    v539 = v128;
    if (v125)
    {
      goto LABEL_16;
    }

LABEL_17:
    v130 = v119;
    while (1)
    {
      v119 = v130 + 1;
      if (__OFADD__(v130, 1))
      {
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      if (v119 >= v127)
      {
        break;
      }

      v131 = *(v121 + 8 * v119);
      ++v130;
      if (v131)
      {
        v129 = __clz(__rbit64(v131));
        v559 = (v131 - 1) & v131;
        while (2)
        {
          v132 = v129 | (v119 << 6);
          v133 = v0[27];
          v134 = v0[16];
          v135 = v0[14];
          v136 = (*(v535 + 48) + 16 * v132);
          v137 = v136[1];
          v570 = *v136;
          (*(v551 + 16))(v133, *(v535 + 56) + *(v551 + 72) * v132, v0[25]);
          v138 = *(v551 + 32);
          v139 = sub_22C38BD8C();
          v140(v139);
          (*(v543 + 104))(v134, v523, v135);
          *(v515 + ((v132 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v132;
          v118 = v539;
          v141 = (v539[6] + 16 * v132);
          *v141 = v570;
          v141[1] = v137;
          (*(v543 + 32))(v539[7] + *(v543 + 72) * v132, v134, v135);
          v142 = v539[2];
          v143 = __OFADD__(v142, 1);
          v144 = v142 + 1;
          if (!v143)
          {
            v539[2] = v144;

            v0 = v575;
            v125 = v559;
            if (!v559)
            {
              goto LABEL_17;
            }

LABEL_16:
            v129 = __clz(__rbit64(v125));
            v559 = (v125 - 1) & v125;
            continue;
          }

          break;
        }

        __break(1u);
LABEL_103:

        sub_22C70CC3C();

        return;
      }
    }

    v145 = v0[82];
    v147 = v0[20];
    v146 = v0[21];
    v148 = v118;
    v150 = v0[12];
    v149 = v0[13];
    v151 = v0[9];
    v152 = sub_22C9078BC();
    sub_22C70A2B8(v148, sub_22C6AC71C, 0, v153);
    v152(v510, 0);
    v154 = v575;
    v155 = sub_22C36EC8C();
    sub_22C6F5470(v155, v156, v150, v157);
    if (v145)
    {
      (*(v575[19] + 8))(v575[21], v575[18]);
      v158 = v575[77];
      v159 = v575[76];
      v160 = v575[75];
      v161 = v575[74];
      v162 = v575[71];
      v163 = v575[70];
      v164 = v575[67];
      v165 = v575[66];
      v166 = v575[62];
      v167 = v575[63];
      v452 = v575[61];
      v455 = v575[60];
      v460 = v575[59];
      v467 = v575[58];
      v473 = v575[57];
      v475 = v575[55];
      v481 = v575[54];
      v487 = v575[53];
      sub_22C70CA60();
      v497 = v575[45];
      v499 = v575[42];
      v502 = v575[41];
      v505 = v575[40];
      v511 = v575[39];
      v513 = v575[38];
      v516 = v575[35];
      v520 = v575[34];
      v524 = v575[33];
      v527 = v575[30];
      v530 = v575[27];
      v536 = v575[24];
      v540 = v575[21];
      v544 = v575[20];
      v552 = v575[17];
      v560 = v575[16];

      sub_22C369A24();
      goto LABEL_92;
    }

    v168 = v575[19];
    v169 = v575[18];
    v170 = v575[6];
    v171 = *(v168 + 8);
    v172 = sub_22C37170C();
    v173(v172);
    v174 = *(v168 + 32);
    v175 = sub_22C36BBCC();
    (v174)(v175);
    sub_22C38399C();
    v174();
    type metadata accessor for StepResolution();
    sub_22C6AFE24();
LABEL_91:
    swift_storeEnumTagMultiPayload();
    v434 = v154[77];
    v435 = v154[76];
    v436 = v154[75];
    v437 = v154[74];
    v438 = v154[71];
    v439 = v154[70];
    v440 = v154;
    v441 = v154[67];
    v442 = v440[66];
    v444 = v440[62];
    v443 = v440[63];
    v459 = v440[61];
    v466 = v440[60];
    v471 = v440[59];
    v474 = v440[58];
    v480 = v440[57];
    v486 = v440[55];
    v490 = v440[54];
    v494 = v440[53];
    sub_22C70CA60();
    v501 = v440[45];
    v504 = v440[42];
    v508 = v440[41];
    v512 = v440[40];
    v514 = v440[39];
    v519 = v440[38];
    v522 = v440[35];
    v526 = v440[34];
    v529 = v440[33];
    v534 = v440[30];
    sub_22C70CE80();
    v549 = v440[21];
    v556 = v440[20];
    v566 = v440[17];
    v574 = v440[16];

    sub_22C369C50();
LABEL_92:
    sub_22C70CC3C();

    __asm { BRAA            X1, X16 }
  }

  v27 = v0[81];
  v28 = v0[75];
  v29 = v0[67];
  v30 = v0[65];
  v31 = v0[64];
  v32 = v0[8];

  sub_22C903F8C();
  v33 = *(v30 + 16);
  v34 = sub_22C37B220();
  v509 = v35;
  v35(v34);
  v36 = sub_22C9063CC();
  v37 = sub_22C90AABC();
  v38 = os_log_type_enabled(v36, v37);
  v39 = v0[79];
  v40 = v0[75];
  v41 = v0[73];
  v42 = v0[72];
  v43 = v0[67];
  v44 = v0[65];
  v45 = v0[64];
  if (v38)
  {
    sub_22C36BED8();
    v557 = v42;
    v46 = swift_slowAlloc();
    sub_22C370220();
    v47 = swift_slowAlloc();
    v576[0] = v47;
    *v46 = 136315138;
    sub_22C90768C();
    v48 = *(v44 + 8);
    v49 = sub_22C36EC8C();
    v50(v49);
    v51 = sub_22C36ECB4();
    v54 = sub_22C36F9F4(v51, v52, v53);

    *(v46 + 4) = v54;
    sub_22C70CF60();
    _os_log_impl(v55, v56, v57, v58, v59, v60);
    sub_22C36FF94(v47);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    v61 = sub_22C38A0CC();
    MEMORY[0x2318B9880](v61);

    v39(v40, v557);
  }

  else
  {

    v176 = *(v44 + 8);
    v177 = sub_22C36EC8C();
    v178(v177);
    v179 = sub_22C374C34();
    (v39)(v179);
  }

  v561 = v0[56];
  v180 = v0[51];
  v181 = v0[52];
  v182 = v0[49];
  v521 = sub_22C909F0C();
  v184 = v568 + 64;
  v183 = *(v568 + 64);
  v185 = *(v568 + 32);
  sub_22C37454C();
  v188 = v187 & v186;
  sub_22C634720();
  v190 = v189 >> 6;
  v503 = *MEMORY[0x277D1E040];
  v500 = (v182 + 104);
  v496 = v181 + 32;
  v498 = v181;
  v495 = v181 + 40;

  v191 = 0;
  v541 = v190;
  while (1)
  {
    v192 = v191;
    if (!v188)
    {
      break;
    }

    while (1)
    {
      v191 = v192;
LABEL_35:
      v193 = v0[63];
      v545 = v0[62];
      sub_22C70CF34();
      v195 = v194 | (v191 << 6);
      v196 = *(v568 + 48);
      v197 = sub_22C9069BC();
      sub_22C369824(v197);
      v199 = v198;
      (*(v198 + 16))(v193, v196 + *(v200 + 72) * v195, v197);
      v201 = *(v568 + 56);
      v202 = sub_22C908C5C();
      sub_22C369824(v202);
      v204 = v203;
      (*(v203 + 16))(v193 + *(v561 + 48), v201 + *(v205 + 72) * v195, v202);
      sub_22C6AEA50(v193, v545, &qword_27D9BF110, &unk_22C922580);
      v206 = *(v561 + 48);
      sub_22C90697C();
      LOBYTE(v193) = v207;
      v531 = *(v199 + 8);
      v537 = v197;
      v531(v545, v197);
      v208 = *(v204 + 8);
      v208(v545 + v206, v202);
      v209 = v575[63];
      if (v193)
      {
        break;
      }

      sub_22C36DD80(v575[63], &qword_27D9BF110);
      v192 = v191;
      v0 = v575;
    }

    v210 = v575[62];
    v506 = v575[61];
    v491 = v575[55];
    v517 = v575[54];
    v546 = v575[51];
    v476 = v575[50];
    v482 = v575[48];
    v488 = v575[47];
    v211 = sub_22C37A004();
    HIDWORD(v472) = HIDWORD(v210);
    sub_22C6AEA50(v211, v212, &qword_27D9BF110, &unk_22C922580);
    v213 = *(v561 + 48);
    sub_22C90774C();
    v461 = v208;
    v468 = v202;
    v208(v210 + v213, v202);
    (*v500)(v476, v503, v482);
    sub_22C90260C();
    sub_22C36A748();
    sub_22C36C640(v214, v215, v216, v217);
    sub_22C3819EC();
    sub_22C90869C();
    v531(v210, v537);
    sub_22C6AEA50(v209, v506, &qword_27D9BF110, &unk_22C922580);
    sub_22C9069AC();
    v219 = v218;
    v220 = sub_22C372280();
    v222 = v221;
    (v531)(v220);
    v223 = v219;
    sub_22C634398();
    v224(v517, v491, v546);
    swift_isUniquelyReferenced_nonNull_native();
    v576[0] = v521;
    sub_22C36E2BC(v222, v219);
    sub_22C369DA4();
    if (__OFADD__(v227, v228))
    {
      __break(1u);
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    v229 = v225;
    v230 = v226;
    sub_22C3A5908(&qword_27D9BF438, &qword_22C923330);
    sub_22C70CF54();
    if (sub_22C90B15C())
    {
      v231 = sub_22C36E2BC(v222, v219);
      if ((v230 & 1) != (v232 & 1))
      {
        goto LABEL_99;
      }

      v229 = v231;
    }

    v233 = v575[63];
    v234 = v575[54];
    v235 = v575[55];
    v236 = v575[51];
    if (v230)
    {
      v237 = v575[54];

      v521 = v576[0];
      (*(v498 + 40))(*(v576[0] + 56) + *(v498 + 72) * v229, v237, v236);
      v238 = sub_22C70CF14();
      v239(v238);
      sub_22C36DD80(v233, &qword_27D9BF110);
    }

    else
    {
      v240 = v576[0];
      sub_22C36ED48(v576[0] + 8 * (v229 >> 6));
      v241 = (v240[6] + 16 * v229);
      *v241 = v242;
      v241[1] = v223;
      (*(v498 + 32))(v240[7] + *(v498 + 72) * v229);
      v243 = sub_22C70CF14();
      v244(v243);
      sub_22C36DD80(v233, &qword_27D9BF110);
      v245 = v240[2];
      v143 = __OFADD__(v245, 1);
      v246 = v245 + 1;
      if (v143)
      {
        goto LABEL_109;
      }

      v521 = v240;
      v240[2] = v246;
    }

    v0 = v575;
    v184 = v568 + 64;
    v190 = v541;
    v461(v575[61] + *(v561 + 48), v468);
  }

  while (1)
  {
    v191 = v192 + 1;
    if (__OFADD__(v192, 1))
    {
      goto LABEL_96;
    }

    if (v191 >= v190)
    {
      break;
    }

    v188 = *(v184 + 8 * v191);
    ++v192;
    if (v188)
    {
      goto LABEL_35;
    }
  }

  v247 = v0[44];
  v507 = v0[37];
  v528 = v0[36];

  sub_22C3A5908(&qword_27D9BF858, &qword_22C923338);
  v518 = sub_22C909F0C();
  v248 = -1 << *(v568 + 32);
  v249 = *(v568 + 64);
  sub_22C6B03E8();
  v252 = v250 & v251;
  v254 = (63 - v253) >> 6;
  v525 = (v247 + 32);

  v255 = 0;
  for (i = v254; ; v254 = i)
  {
    v256 = v255;
    if (!v252)
    {
      break;
    }

    while (1)
    {
      v255 = v256;
LABEL_52:
      v257 = v0[59];
      v258 = v0[60];
      sub_22C70CF34();
      v260 = v259 | (v255 << 6);
      v261 = *(v568 + 48);
      v262 = sub_22C9069BC();
      sub_22C369824(v262);
      v538 = v265;
      v542 = v264;
      (*(v265 + 16))(v258, v261 + *(v263 + 72) * v260);
      v266 = *(v568 + 56);
      v267 = sub_22C908C5C();
      sub_22C369824(v267);
      v268 = v0;
      v270 = v266 + *(v269 + 72) * v260;
      v272 = v271;
      v547 = v273;
      (*(v271 + 16))(v258 + *(v561 + 48), v270);
      v274 = sub_22C37A004();
      sub_22C6AEA50(v274, v275, &qword_27D9BF110, &unk_22C922580);
      v276 = *(v561 + 48);
      v277 = sub_22C90697C();
      v279 = v268[59];
      v278 = v268[60];
      if ((v280 & 1) == 0)
      {
        break;
      }

      v281 = sub_22C3806B8();
      sub_22C36DD80(v281, v282);
      (*(v538 + 8))(v279, v542);
      (*(v272 + 8))(v257 + v276, v547);
      v256 = v255;
      v0 = v575;
    }

    v283 = v277;
    v456 = v575[58];
    v462 = v575[57];
    v483 = v575[43];
    v472 = v575[46];
    v477 = v575[42];
    v492 = *(v538 + 8);
    v492(v279, v542);
    v284 = *(v272 + 8);
    v284(v257 + v276, v547);
    sub_22C44178C();
    sub_22C6AEA50(v285, v286, v287, &unk_22C922580);
    v469 = sub_22C9069AC();
    v289 = v288;
    v492(v456, v542);
    sub_22C63413C();
    sub_22C6AEA50(v290, v291, v292, &unk_22C922580);
    v293 = *(v561 + 48);
    sub_22C90774C();
    v294 = v462 + v293;
    v463 = v284;
    v284(v294, v547);
    v295 = *(v528 + 48);
    *v477 = v283;
    (*v525)(v477 + v295, v472, v483);
    swift_isUniquelyReferenced_nonNull_native();
    v576[0] = v518;
    sub_22C36E2BC(v469, v289);
    sub_22C369DA4();
    if (__OFADD__(v298, v299))
    {
      goto LABEL_107;
    }

    v300 = v296;
    v301 = v297;
    sub_22C3A5908(&qword_27D9BF860, &unk_22C923340);
    sub_22C70CF54();
    v302 = sub_22C90B15C();
    v303 = v576[0];
    v518 = v576[0];
    if (v302)
    {
      v304 = sub_22C36E2BC(v469, v289);
      if ((v301 & 1) != (v305 & 1))
      {
        goto LABEL_99;
      }

      v300 = v304;
      v303 = v518;
    }

    if (v301)
    {

      v303 = v518;
    }

    else
    {
      sub_22C36ED48(&v303[v300 >> 6]);
      v306 = (v303[6] + 16 * v300);
      *v306 = v469;
      v306[1] = v289;
      *(v303[7] + 8 * v300) = MEMORY[0x277D84F90];
      v307 = v303[2];
      v143 = __OFADD__(v307, 1);
      v308 = v307 + 1;
      if (v143)
      {
        goto LABEL_110;
      }

      v303[2] = v308;
    }

    v309 = v303[7];
    v310 = *(v309 + 8 * v300);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v309 + 8 * v300) = v310;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v322 = *(v310 + 16);
      sub_22C3827B4();
      sub_22C595A04();
      v310 = v323;
      *(v309 + 8 * v300) = v323;
    }

    v313 = *(v310 + 16);
    v312 = *(v310 + 24);
    if (v313 >= v312 >> 1)
    {
      sub_22C369AB0(v312);
      sub_22C3827B4();
      sub_22C595A04();
      *(v309 + 8 * v300) = v324;
    }

    v314 = v575[57];
    v478 = v575[58];
    v315 = v575[42];
    v316 = *(v561 + 48);
    sub_22C36DD80(v575[60], &qword_27D9BF110);
    *(*(v309 + 8 * v300) + 16) = v313 + 1;
    v317 = *(v507 + 80);
    sub_22C37BEE8();
    sub_22C6AE8BC(v315, v318 + v319 + *(v320 + 72) * v313, &qword_27D9BAF80, &unk_22C90FAC0);
    v321 = sub_22C372164();
    (v492)(v321);
    v463(v478 + v316, v547);
    v0 = v575;
    v184 = v568 + 64;
  }

  while (1)
  {
    v255 = v256 + 1;
    if (__OFADD__(v256, 1))
    {
      goto LABEL_97;
    }

    if (v255 >= v254)
    {
      break;
    }

    v252 = *(v184 + 8 * v255);
    ++v256;
    if (v252)
    {
      goto LABEL_52;
    }
  }

  v325 = v0[44];
  v326 = v0[32];

  v327 = 0;
  v328 = *(v518 + 64);
  v329 = *(v518 + 32);
  sub_22C37454C();
  v332 = v331 & v330;
  sub_22C634720();
  v336 = v335 >> 6;
  v337 = (v325 + 8);
  v338 = (v326 + 32);
  v339 = (v326 + 16);
  v340 = *MEMORY[0x277D729E0];
  v341 = (v325 + 104);
  v342 = (v326 + 8);
  v133 = v0[82];
  while (2)
  {
    while (2)
    {
      if (v332)
      {
        goto LABEL_73;
      }

      while (2)
      {
        v343 = v327 + 1;
        if (__OFADD__(v327, 1))
        {
          goto LABEL_98;
        }

        if (v343 >= v336)
        {
          v154 = v575;
          v421 = v575[66];
          v423 = v575[29];
          v422 = v575[30];
          v424 = v575[27];
          v565 = v575[64];
          v573 = v575[28];
          v426 = v575[25];
          v425 = v575[26];
          v428 = v575[7];
          v427 = v575[8];
          v429 = v575[6];

          (*(v425 + 16))(v424, v428, v426);
          v430 = sub_22C379FC8();
          v509(v430);
          sub_22C37A004();
          sub_22C3870A4();
          sub_22C90867C();
          v431 = *(v423 + 32);
          v432 = sub_22C36BAFC();
          v433(v432);
          type metadata accessor for StepResolution();
          sub_22C376858();
          goto LABEL_91;
        }

        v332 = *(v334 + 8 * v343);
        ++v327;
        if (!v332)
        {
          continue;
        }

        break;
      }

      v327 = v343;
LABEL_73:
      v344 = __clz(__rbit64(v332));
      v332 &= v332 - 1;
      v345 = v344 | (v327 << 6);
      v346 = *(*(v333 + 56) + 8 * v345);
      if (!*(v346 + 16))
      {
        continue;
      }

      break;
    }

    v450 = v342;
    v479 = v339;
    v484 = v341;
    LODWORD(v472) = v340;
    v457 = v336;
    v464 = v334;
    v553 = v575[43];
    v493 = v338;
    v347 = v575[41];
    v348 = v575[34];
    v562 = v575[31];
    v571 = v575[35];
    v349 = (*(v333 + 48) + 16 * v345);
    v350 = v349[1];
    v489 = *v349;
    v351 = (*(v507 + 80) + 32) & ~*(v507 + 80);
    v352 = v337;
    sub_22C6AEA50(v346 + v351, v347, &qword_27D9BAF80, &unk_22C90FAC0);
    v353 = *(v528 + 48);
    v470 = v350;

    sub_22C90935C();
    v453 = v352;
    (*v352)(v347 + v353, v553);
    (*v493)(v571, v348, v562);
    v576[0] = v346;

    sub_22C708FE4(v576);
    if (v133)
    {
      goto LABEL_103;
    }

    v354 = v576[0];
    v355 = *(v576[0] + 16);
    if (v355)
    {
      sub_22C70CDCC(MEMORY[0x277D84F90]);
      v449 = v354;
      v356 = v354 + v351;
      v533 = *(v507 + 72);
      v357 = v576[0];
      v358 = v525;
      do
      {
        v563 = v355;
        v548 = v575[45];
        v359 = v575[43];
        v360 = v575[39];
        v361 = v575[40];
        v362 = v575[38];
        v363 = sub_22C374C34();
        sub_22C6AEA50(v363, v364, &qword_27D9BAF80, &unk_22C90FAC0);
        v365 = sub_22C51E290();
        sub_22C6AEA50(v365, v366, &qword_27D9BAF80, &unk_22C90FAC0);
        v367 = v358;
        v368 = *(v528 + 48);
        *v362 = *v360;
        v554 = *v367;
        (*v367)(v362 + v368, v360 + v368, v359);
        sub_22C70CF08();
        v369(v548, v362 + v368, v359);
        sub_22C36DD80(v362, &qword_27D9BAF80);
        v370 = sub_22C51E290();
        sub_22C36DD80(v370, v371);
        v576[0] = v357;
        v373 = *(v357 + 16);
        v372 = *(v357 + 24);
        if (v373 >= v372 >> 1)
        {
          v378 = sub_22C369AB0(v372);
          sub_22C3B74E0(v378, v373 + 1, 1);
          v357 = v576[0];
        }

        v374 = v575[45];
        v375 = v575[43];
        *(v357 + 16) = v373 + 1;
        sub_22C37054C();
        v358 = v525;
        v554(v357 + v376 + *(v377 + 72) * v373);
        v356 += v533;
        v355 = v563 - 1;
      }

      while (v563 != 1);
    }

    v379 = v575[50];
    v380 = v575[47];
    v564 = v575[48];
    v572 = v575[53];
    v555 = v575[43];
    v381 = v575[35];
    v382 = v575[33];
    v383 = v575[31];
    sub_22C90906C();
    v384 = swift_allocBox();
    v385 = *v479;
    v386 = sub_22C634750();
    v339 = v387;
    v388(v386);
    sub_22C37EF10();
    sub_22C90903C();
    *v379 = v384;
    v340 = v472;
    (*v484)(v379, v472, v555);
    (*v500)(v379, v503, v564);
    sub_22C90260C();
    sub_22C36A748();
    sub_22C36C640(v389, v390, v391, v392);
    sub_22C90869C();
    swift_isUniquelyReferenced_nonNull_native();
    v576[0] = v521;
    v393 = sub_22C36E2BC(v489, v470);
    v395 = v394;
    sub_22C369DA4();
    if (__OFADD__(v396, v397))
    {
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    sub_22C3A5908(&qword_27D9BF438, &qword_22C923330);
    sub_22C70CF54();
    v398 = sub_22C90B15C();
    v404 = v576[0];
    v521 = v576[0];
    if ((v398 & 1) == 0)
    {
      v338 = v493;
LABEL_85:
      if (v395)
      {
        v406 = sub_22C70CE18(v398, v575[53], v575[51], v399, v400, v401, v402, v403, 0, v449, v450, v453, v457, v464, v470, v472, v479, v484, v489, v493, v495, v496, v498);
        (*(v407 + 40))(v406);

LABEL_89:
        v342 = v451;
        (*v451)(v575[35], v575[31]);
        v133 = 0;
        v333 = v518;
        v336 = v458;
        v334 = v465;
        v337 = v454;
        v341 = v485;
        continue;
      }

      sub_22C36ED48(v404 + 8 * (v393 >> 6));
      v408 = (*(v404 + 48) + 16 * v393);
      *v408 = v489;
      v408[1] = v470;
      v417 = sub_22C70CE18(v409, v410, v411, v412, v413, v414, v415, v416, 0, v449, v450, v453, v457, v464, v470, v472, v479, v484, v489, v493, v495, v496, v498);
      (*(v418 + 32))(v417);
      v419 = *(v521 + 16);
      v143 = __OFADD__(v419, 1);
      v420 = v419 + 1;
      if (!v143)
      {
        *(v521 + 16) = v420;
        goto LABEL_89;
      }

LABEL_111:
      __break(1u);
      return;
    }

    break;
  }

  v398 = sub_22C36E2BC(v489, v470);
  v338 = v493;
  if ((v395 & 1) == (v405 & 1))
  {
    v393 = v398;
    v404 = v521;
    goto LABEL_85;
  }

LABEL_99:
  sub_22C70CC3C();

  sub_22C90B54C();
}

void sub_22C6FB2CC()
{
  v35 = v0[82];
  v1 = v0[77];
  v2 = v0[76];
  v3 = v0[75];
  v4 = v0[74];
  v5 = v0[71];
  v6 = v0[70];
  v7 = v0[67];
  v8 = v0[66];
  v9 = v0[62];
  v10 = v0[63];
  v13 = v0[61];
  v14 = v0[60];
  v15 = v0[59];
  v16 = v0[58];
  v17 = v0[57];
  v18 = v0[55];
  v19 = v0[54];
  v20 = v0[53];
  sub_22C70CA60();
  v21 = v0[45];
  v22 = v0[42];
  v23 = v0[41];
  v24 = v0[40];
  v25 = v0[39];
  v26 = v0[38];
  v27 = v0[35];
  v28 = v0[34];
  v29 = v0[33];
  v30 = v0[30];
  sub_22C70CE80();
  v31 = v0[21];
  v32 = v0[20];
  v33 = v0[17];
  v34 = v0[16];

  sub_22C375A9C();
  sub_22C386FF4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22C6FB4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_22C3A5908(&qword_27D9BF308, &qword_22C922570);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v33 - v5;
  v7 = sub_22C9074CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_22C3A5908(&qword_27D9BF610, &qword_22C922B50);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v33 - v14;
  v16 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v33 - v21;
  sub_22C729D78(a1, v15);
  v23 = sub_22C9025EC();
  if (sub_22C370B74(v15, 1, v23) == 1)
  {
    sub_22C36DD80(v15, &qword_27D9BF610);
    v24 = 1;
  }

  else
  {
    sub_22C90207C();
    (*(*(v23 - 8) + 8))(v15, v23);
    v24 = 0;
  }

  v25 = sub_22C9093BC();
  sub_22C36C640(v22, v24, 1, v25);
  sub_22C6AEA50(v22, v20, &qword_27D9BB908, &qword_22C910960);
  if (sub_22C370B74(v20, 1, v25) == 1)
  {
    v26 = sub_22C90931C();
    v27 = swift_allocBox();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D729A0], v26);
    *v11 = v27;
    (*(*(v25 - 8) + 104))(v11, *MEMORY[0x277D72A58], v25);
    if (sub_22C370B74(v20, 1, v25) != 1)
    {
      sub_22C36DD80(v20, &qword_27D9BB908);
    }
  }

  else
  {
    (*(*(v25 - 8) + 32))(v11, v20, v25);
  }

  (*(v8 + 104))(v11, *MEMORY[0x277D1E040], v7);
  v29 = sub_22C90260C();
  sub_22C36C640(v6, 1, 1, v29);
  v30 = v34;
  sub_22C90869C();
  sub_22C36DD80(v22, &qword_27D9BB908);
  v31 = sub_22C9086BC();
  return sub_22C36C640(v30, 0, 1, v31);
}

BOOL sub_22C6FB938(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C9088CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C9089DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9089EC();
  if ((*(v9 + 88))(v12, v8) == *MEMORY[0x277D1E6F8])
  {
    (*(v9 + 96))(v12, v8);
    (*(v4 + 32))(v7, v12, v3);
    v13 = sub_22C90887C();
    MEMORY[0x28223BE20](v13);
    v16[-2] = a2;
    v14 = sub_22C5EC5FC(sub_22C70C028, &v16[-4], v13);

    (*(v4 + 8))(v7, v3);
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    return 0;
  }

  return v14;
}

uint64_t sub_22C6FBB8C(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v20 = sub_22C901FAC();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C90654C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C9072EC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90702C();
  if ((*(v7 + 88))(v10, v6) == *MEMORY[0x277D1DAD8])
  {
    (*(v7 + 96))(v10, v6);
    v16 = (*(v12 + 32))(v15, v10, v11);
    MEMORY[0x2318B47A0](v16);
    v17 = sub_22C901F6C();
    (*(v2 + 8))(v5, v20);
    (*(v12 + 8))(v15, v11);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_22C6FBE28(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_22C3A5908(&qword_27D9BB688, &unk_22C90FA60);
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v7 = sub_22C9063DC();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v10 = *(*(sub_22C3A5908(&qword_27D9BC0C0, &unk_22C911FA0) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v11 = *(*(sub_22C3A5908(&qword_27D9BF7A8, &unk_22C923360) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v12 = sub_22C90665C();
  v3[15] = v12;
  v13 = *(v12 - 8);
  v3[16] = v13;
  v14 = *(v13 + 64) + 15;
  v3[17] = swift_task_alloc();
  v15 = *(*(sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v16 = sub_22C90931C();
  v3[19] = v16;
  v17 = *(v16 - 8);
  v3[20] = v17;
  v18 = *(v17 + 64) + 15;
  v3[21] = swift_task_alloc();
  v19 = sub_22C9093BC();
  v3[22] = v19;
  v20 = *(v19 - 8);
  v3[23] = v20;
  v21 = *(v20 + 64) + 15;
  v3[24] = swift_task_alloc();
  v22 = sub_22C9092DC();
  v3[25] = v22;
  v23 = *(v22 - 8);
  v3[26] = v23;
  v24 = *(v23 + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v25 = sub_22C908C5C();
  v3[29] = v25;
  v26 = *(v25 - 8);
  v3[30] = v26;
  v27 = *(v26 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v28 = sub_22C9069BC();
  v3[34] = v28;
  v29 = *(v28 - 8);
  v3[35] = v29;
  v30 = *(v29 + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v31 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
  v3[38] = v31;
  v32 = *(*(v31 - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v33 = sub_22C3A5908(&qword_27D9BAD40, &qword_22C90D5E0);
  v3[45] = v33;
  v34 = *(v33 - 8);
  v3[46] = v34;
  v35 = *(v34 + 64) + 15;
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C6FC34C, 0, 0);
}

uint64_t sub_22C6FD398()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 424);
  *v4 = *v1;
  v3[54] = v7;
  v3[55] = v0;

  if (v0)
  {
    v8 = v3[52];
    v9 = v3[49];
    v10 = v3[3];
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_22C6FD4C0()
{
  v1 = v0[54];
  v2 = v0[12];
  sub_22C903F8C();

  v3 = sub_22C9063CC();
  v4 = sub_22C90AABC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[54];
    v6 = v0[22];
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[10];
    sub_22C36BED8();
    v10 = swift_slowAlloc();
    sub_22C370220();
    v11 = swift_slowAlloc();
    v299[0] = v11;
    *v10 = 136315138;
    v12 = sub_22C36FC2C();
    v13 = MEMORY[0x2318B7AD0](v12);
    v15 = sub_22C36F9F4(v13, v14, v299);

    *(v10 + 4) = v15;
    sub_22C374ED0();
    _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
    sub_22C36FF94(v11);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v21 = *(v8 + 8);
    v22 = sub_22C36BAFC();
    v23(v22);
  }

  else
  {
    v25 = v0[11];
    v24 = v0[12];
    v26 = v0[10];

    v27 = sub_22C371810();
    v28(v27);
  }

  v273 = v0;
  v29 = v0[54];
  v30 = v0[55];
  v31 = v0[35];
  v280 = v0[34];
  v283 = v0[37];
  v32 = v0[33];
  v33 = v0[30];
  v288 = v0[29];
  v293 = v0[52];
  v34 = v0[9];
  v35 = v0[6];
  *(swift_task_alloc() + 16) = v32;
  sub_22C3B4774();
  v37 = v36;

  v38 = *(v35 + 48);
  v39 = *(v35 + 64);
  (*(v31 + 16))(v34, v283, v280);
  (*(v33 + 16))(v34 + v38, v32, v288);
  *(v34 + v39) = v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = v0[52];
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_5;
  }

  while (1)
  {
    v240 = *(v41 + 16);
    sub_22C5955F4();
    v41 = v241;
LABEL_5:
    v43 = *(v41 + 16);
    v42 = *(v41 + 24);
    if (v43 >= v42 >> 1)
    {
      sub_22C369AB0(v42);
      sub_22C5955F4();
      v260 = v242;
    }

    else
    {
      v260 = v41;
    }

    v44 = v273;
    v45 = v273[28];
    v46 = v273[25];
    v47 = v273[26];
    v49 = v273[16];
    v48 = v273[17];
    v50 = v273[15];
    v51 = v273[9];
    v52 = v273[7];
    sub_22C36DD80(v273[13], &qword_27D9BC0C0);
    (*(v49 + 8))(v48, v50);
    v53 = *(v47 + 8);
    v54 = sub_22C36BAFC();
    v55(v54);
    *(v260 + 16) = v43 + 1;
    v56 = *(v52 + 80);
    sub_22C36BA94();
    sub_22C6AE8BC(v51, v58 + v57 + *(v52 + 72) * v43, &qword_27D9BB688, &unk_22C90FA60);
    while (1)
    {
      v59 = v44[50];
      v60 = v44[37];
      v61 = v44[34];
      v62 = v44[35];
      v63 = v44[51] + 1;
      (*(v44[30] + 8))(v44[33], v44[29]);
      v64 = sub_22C6AEDE8();
      v65(v64);
      if (v63 == v59)
      {
        break;
      }

      v66 = v44[51] + 1;
      v44[51] = v66;
      v44[52] = v260;
      if (v66 >= *(v44[49] + 16))
      {
        goto LABEL_54;
      }

      v67 = v44;
      v294 = *(v44 + 114);
      v68 = *(v44 + 452);
      v284 = *(v44 + 112);
      v69 = v44[46];
      v70 = v44[47];
      v71 = v44[37];
      v72 = v44[35];
      v73 = v67[33];
      v74 = v67[34];
      v76 = v67[29];
      v75 = v67[30];
      v77 = v67[23];
      v78 = v67[24];
      v289 = v67[22];
      v79 = sub_22C6AFA70(v66);
      sub_22C6AEA50(v79, v80, &qword_27D9BAD40, &qword_22C90D5E0);
      v81 = *(v72 + 32);
      v82 = sub_22C4F6088();
      v83(v82);
      (*(v75 + 32))(v73, v70 + v284, v76);
      sub_22C90774C();
      if ((*(v77 + 88))(v78, v289) != v294)
      {
        v114 = v67[23];
        v113 = v67[24];
        v115 = v67[22];
        goto LABEL_16;
      }

      v84 = *(v67 + 115);
      v85 = v67[24];
      v87 = v67[21];
      v86 = v67[22];
      v89 = v67[19];
      v88 = v67[20];
      v90 = sub_22C37EBDC(v67[23]);
      v91(v90);
      sub_22C6B005C();
      v92 = *(v88 + 16);
      v93 = sub_22C6AFF38();
      v94(v93);
      v95 = *(v88 + 88);
      v96 = sub_22C37B220();
      if (v97(v96) == v84)
      {
        v98 = v67[28];
        v100 = v67[25];
        v99 = v67[26];
        (*(v67[20] + 96))(v67[21], v67[19]);
        v101 = *(v99 + 32);
        v102 = sub_22C6AF3F0();
        v103(v102);

        v104 = sub_22C9092CC();
        sub_22C6AE3D4(v104);
        if (v105)
        {
          v106 = v67[33];
          v107 = v67[18];
          sub_22C908B8C();
          sub_22C901ECC();
          v108 = sub_22C36CCF8();
          sub_22C36D0A8(v108, v109, v110);
          v44 = v67;
          if (v111)
          {
            goto LABEL_50;
          }

          v112 = v67[18];
          (*(v67[26] + 8))(v67[28], v67[25]);

          sub_22C36DD80(v112, &qword_27D9BF318);
        }

        else
        {
          v113 = v67[28];
          v115 = v67[25];
          v114 = v67[26];
LABEL_16:
          (*(v114 + 8))(v113, v115);
          v44 = v67;
        }
      }

      else
      {
        (*(v67[20] + 8))(v67[21], v67[19]);

        v44 = v67;
      }
    }

    v116 = v44[49];

    v117 = v44;
    v245 = *(v260 + 16);
    if (!v245)
    {

LABEL_46:
      sub_22C6AFC70();
      v262 = v117[31];
      v264 = v117[28];
      v266 = v117[27];
      v268 = v117[24];
      v270 = v117[21];
      v272 = v117[18];
      v275 = v117[17];
      v277 = v117[14];
      v279 = v117[13];
      v282 = v117[12];
      v286 = v117[9];
      v291 = v117[8];
      v296 = v117[2];

      sub_22C6B03C8();
      sub_22C386FF4();

      __asm { BRAA            X2, X16 }
    }

    v255 = v44[30];
    v252 = v44[7];
    v253 = v44[8];
    v251 = *(v44[6] + 48);
    v118 = *(v252 + 80);
    sub_22C37BEE8();
    v247 = *(v121 + 64);
    v249 = v119 + v122;
LABEL_21:
    if (v120 >= *(v119 + 16))
    {
      goto LABEL_55;
    }

    v123 = v273;
    v125 = v273[35];
    v124 = v273[36];
    v126 = v273[34];
    v127 = v273[32];
    v128 = v273[29];
    v129 = v273[30];
    v130 = v120;
    sub_22C6AEA50(v249 + *(v252 + 72) * v120, v273[8], &qword_27D9BB688, &unk_22C90FA60);
    v259 = *(v253 + v247);
    v131 = *(v125 + 32);
    v132 = sub_22C36EC8C();
    v271 = v125 + 32;
    v267 = v133;
    v133(v132);
    v134 = *(v129 + 32);
    v44 = (v130 + 1);
    v254 = v44;
    v135 = sub_22C6AFB9C();
    v269 = v129 + 32;
    v265 = v136;
    (v136)(v135);
    v137 = v273[2];
    v139 = *(v137 + 56);
    v138 = v137 + 56;
    v140 = *(v273[2] + 32);
    sub_22C36EC98();
    v143 = v142 & v141;
    sub_22C634720();
    v145 = v144 >> 6;
    v258 = v146;

    v147 = 0;
    v256 = v145;
    v257 = v138;
    if (!v143)
    {
      goto LABEL_24;
    }

LABEL_27:
    while (2)
    {
      sub_22C383840();
      v261 = v149;
      v263 = v143;
      v151 = *(*(v258 + 48) + ((v149 << 9) | (8 * v150)));
      v153 = *(v151 + 64);
      v152 = v151 + 64;
      v154 = *(v151 + 32);
      sub_22C36EC98();
      v157 = v156 & v155;
      sub_22C634720();
      v159 = v158 >> 6;
      swift_bridgeObjectRetain_n();
      v160 = 0;
      v278 = v151 + 64;
      v281 = v151;
      for (i = v159; v157; v152 = v278)
      {
LABEL_32:
        v163 = v123[39];
        v162 = v123[40];
        v164 = v123[38];
        v165 = v123[35];
        v290 = v123[36];
        v44 = v123[34];
        v166 = v123[30];
        v285 = v123[29];
        v167 = *(v281 + 48);
        v168 = *(v165 + 16);
        v169 = *(v165 + 72);
        v170 = sub_22C6AFF38();
        v171(v170);
        v274 = *(v166 + 72);
        v172 = *(v164 + 48);
        v295 = *(v166 + 16);
        v295(v162 + v172, *(v281 + 56) + v274 * (__clz(__rbit64(v157)) | (v160 << 6)), v285);
        v173 = *(v164 + 48);
        v174 = sub_22C36BBCC();
        v267(v174);
        v265(v163 + v173, v162 + v172, v285);
        if (sub_22C90698C())
        {
          v123 = v273;
          v175 = v273[32];
          if (sub_22C908BEC())
          {
            sub_22C8C3880();

            v176 = *(v259 + 16);
            if (v176)
            {
              v177 = *(v255 + 80);
              sub_22C36BA94();
              v180 = v179 + v178;
              v181 = v274;
              do
              {
                v182 = v123[36];
                v44 = v123[31];
                v183 = v123[29];
                v184 = sub_22C3806B8();
                (v295)(v184);
                swift_isUniquelyReferenced_nonNull_native();
                v299[0] = v151;
                v185 = sub_22C372280();
                sub_22C62E7EC(v185, v186, v187, v188, v189, v190, v191, v192, v243, v245, v247, v249);
                v151 = v299[0];

                sub_22C6A5BAC(v299, v151, v193, v194, v195, v196, v197, v198, v244, v246, v248, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v263, v265, v267, v269, v271, v273, v274, i, v278);

                v180 += v181;
                --v176;
              }

              while (v176);
            }
          }
        }

        else
        {
          v123 = v273;
        }

        v157 &= v157 - 1;
        sub_22C36DD80(v123[39], &qword_27D9BF110);
        v159 = i;
      }

      while (2)
      {
        v161 = v160 + 1;
        if (__OFADD__(v160, 1))
        {
          __break(1u);
LABEL_50:
          v214 = v44[27];
          v215 = v44[28];
          v217 = v44[25];
          v216 = v44[26];
          v218 = v44[17];
          v219 = v44[14];
          v287 = v44[37];
          v292 = v44[13];
          v220 = v44[4];
          v297 = v44[5];
          sub_22C36DD80(v44[18], &qword_27D9BF318);
          v221 = *(v216 + 16);
          v222 = sub_22C634768();
          v223(v222);
          sub_22C9065FC();
          sub_22C90663C();
          sub_22C6AFB90();
          sub_22C36BECC();
          v228 = sub_22C36C640(v224, v225, v226, v227);
          MEMORY[0x2318B3AB0](v228);
          sub_22C9065CC();
          sub_22C908DCC();
          v229 = sub_22C4E78D0();
          sub_22C70C7C4(v229);
          sub_22C6B0920();

          v230 = (v297 + *(type metadata accessor for Interpreter2() + 40));
          v231 = v230[4];
          sub_22C374168(v230, v230[3]);
          v232 = sub_22C37FF48();
          sub_22C37A040(v232);
          v298 = v233 + *v233;
          v235 = *(v234 + 4);
          v236 = swift_task_alloc();
          v44[53] = v236;
          *v236 = v44;
          sub_22C70C7E0();
          v237 = v44[13];
          sub_22C373E44(v44[17]);
          sub_22C386FF4();

          __asm { BRAA            X4, X16 }
        }

        if (v161 < v159)
        {
          v157 = *(v152 + 8 * v161);
          ++v160;
          if (!v157)
          {
            continue;
          }

          v160 = v161;
          goto LABEL_32;
        }

        break;
      }

      v147 = v261;
      v143 = v263;
      v145 = v256;
      v138 = v257;
      if (v263)
      {
        continue;
      }

      break;
    }

LABEL_24:
    while (1)
    {
      v148 = v147 + 1;
      if (__OFADD__(v147, 1))
      {
        break;
      }

      if (v148 >= v145)
      {
        v199 = v123;
        v202 = v123 + 35;
        v201 = v123[35];
        v200 = v202[1];
        v203 = v199[34];
        v204 = v199[32];
        v205 = v199[29];
        v206 = v199[30];

        v207 = *(v206 + 8);
        v208 = sub_22C36D264();
        v209(v208);
        v210 = sub_22C381704();
        v211(v210);

        v120 = v254;
        v119 = v260;
        if (v254 == v245)
        {

          v117 = v273;
          goto LABEL_46;
        }

        goto LABEL_21;
      }

      v143 = *(v138 + 8 * v148);
      ++v147;
      if (v143)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
  }
}

uint64_t sub_22C6FE148()
{
  v21 = v0[48];
  v22 = v0[47];
  v23 = v0[44];
  v24 = v0[43];
  v25 = v0[42];
  v26 = v0[41];
  v27 = v0[40];
  v28 = v0[39];
  v29 = v0[36];
  v1 = v0[35];
  v19 = v0[34];
  v20 = v0[37];
  v18 = v0[33];
  v2 = v0[30];
  v31 = v0[32];
  v32 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[26];
  v6 = v0[25];
  v33 = v0[27];
  v34 = v0[24];
  v35 = v0[21];
  v36 = v0[18];
  v30 = v0[17];
  v7 = v0[15];
  v8 = v0[16];
  v37 = v0[14];
  v38 = v0[12];
  v39 = v0[9];
  v40 = v0[8];
  sub_22C36DD80(v0[13], &qword_27D9BC0C0);
  v9 = *(v8 + 8);
  v10 = sub_22C372FA4();
  v11(v10);
  (*(v5 + 8))(v4, v6);
  v12 = *(v2 + 8);
  v13 = sub_22C36BAFC();
  v14(v13);
  (*(v1 + 8))(v20, v19);

  sub_22C369A24();
  v16 = v0[55];

  return v15();
}

uint64_t sub_22C6FE370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = sub_22C9097DC();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22C90B4FC();
  }

  return v9 & 1;
}

uint64_t sub_22C6FE410(uint64_t a1)
{
  v2 = sub_22C901FAC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_22C908C3C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_22C9093BC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  (*(v9 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_22C908C4C();
  sub_22C908BAC();
  return sub_22C908C0C();
}

uint64_t sub_22C6FE598()
{
  sub_22C369980();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v5 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  sub_22C369914(v5);
  v7 = *(v6 + 64);
  v1[22] = sub_22C36D0D4();
  v1[23] = swift_task_alloc();
  v8 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v8);
  v10 = *(v9 + 64);
  v1[24] = sub_22C36D0D4();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v11 = sub_22C9063DC();
  v1[27] = v11;
  sub_22C3699B8(v11);
  v1[28] = v12;
  v14 = *(v13 + 64);
  v1[29] = sub_22C36D0D4();
  v1[30] = swift_task_alloc();
  v15 = sub_22C3A5908(&qword_27D9BD760, &qword_22C922200);
  sub_22C369914(v15);
  v17 = *(v16 + 64);
  v1[31] = sub_22C3699D4();
  v18 = sub_22C903B1C();
  v1[32] = v18;
  sub_22C3699B8(v18);
  v1[33] = v19;
  v21 = *(v20 + 64);
  v1[34] = sub_22C3699D4();
  v22 = sub_22C908AEC();
  v1[35] = v22;
  sub_22C3699B8(v22);
  v1[36] = v23;
  v25 = *(v24 + 64);
  v1[37] = sub_22C3699D4();
  Converter = type metadata accessor for StructuredQueryConverter(0);
  sub_22C369914(Converter);
  v28 = *(v27 + 64);
  v1[38] = sub_22C3699D4();
  v29 = sub_22C900A4C();
  v1[39] = v29;
  sub_22C3699B8(v29);
  v1[40] = v30;
  v32 = *(v31 + 64);
  v1[41] = sub_22C36D0D4();
  v1[42] = swift_task_alloc();
  v33 = sub_22C90952C();
  v1[43] = v33;
  sub_22C3699B8(v33);
  v1[44] = v34;
  v36 = *(v35 + 64);
  v1[45] = sub_22C36D0D4();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v37 = sub_22C9039FC();
  v1[48] = v37;
  sub_22C3699B8(v37);
  v1[49] = v38;
  v40 = *(v39 + 64);
  v1[50] = sub_22C3699D4();
  v41 = sub_22C3A5908(&qword_27D9BD798, &unk_22C919070);
  sub_22C369914(v41);
  v43 = *(v42 + 64);
  v1[51] = sub_22C36D0D4();
  v1[52] = swift_task_alloc();
  v44 = sub_22C9093BC();
  v1[53] = v44;
  sub_22C3699B8(v44);
  v1[54] = v45;
  v47 = *(v46 + 64);
  v1[55] = sub_22C36D0D4();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v48 = sub_22C90654C();
  v1[62] = v48;
  sub_22C3699B8(v48);
  v1[63] = v49;
  v51 = *(v50 + 64);
  v1[64] = sub_22C36D0D4();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v52 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  sub_22C369914(v52);
  v54 = *(v53 + 64);
  v1[71] = sub_22C36D0D4();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v55 = sub_22C9070DC();
  v1[78] = v55;
  sub_22C3699B8(v55);
  v1[79] = v56;
  v58 = *(v57 + 64);
  v1[80] = sub_22C36D0D4();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v59 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  sub_22C369914(v59);
  v61 = *(v60 + 64);
  v1[87] = sub_22C36D0D4();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v62 = sub_22C901FAC();
  v1[94] = v62;
  sub_22C3699B8(v62);
  v1[95] = v63;
  v65 = *(v64 + 64);
  v1[96] = sub_22C36D0D4();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v66 = sub_22C90880C();
  v1[103] = v66;
  sub_22C3699B8(v66);
  v1[104] = v67;
  v69 = *(v68 + 64);
  v1[105] = sub_22C36D0D4();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v70, v71, v72);
}

void sub_22C6FEC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = v12;
  v14 = *(v12 + 856);
  v15 = *(v12 + 832);
  v16 = *(v12 + 824);
  v17 = *(v12 + 152);
  v18 = sub_22C90878C();
  sub_22C68F4E8(v18, v19, v20, v21, v22, v23, v24, v25, v794, v796, v798, v800, v802, v804, v806, v807, v808, v809, v810, v811);
  v28 = *(v15 + 8);
  v26 = v15 + 8;
  v27 = v28;
  *(v12 + 864) = v28;
  *(v12 + 872) = v26 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29 = sub_22C36BAFC();
  v28(v29);
  sub_22C90878C();
  v30 = sub_22C9087DC();
  v31 = sub_22C36BAFC();
  v28(v31);
  *(v12 + 120) = v30;
  v32 = sub_22C36BAFC();
  *(v12 + 880) = sub_22C3A5908(v32, v33);
  sub_22C369E24();
  *(v12 + 888) = sub_22C50B118(v34, &qword_27D9BA9F0, &qword_22C912420);
  sub_22C907ECC();

  if (*(v12 + 112))
  {
    v35 = *(v12 + 96);
    v36 = v13[107];
    v37 = v13[103];
    v38 = v13[19];

    sub_22C90878C();
    v39 = sub_22C9087DC();
    v40 = sub_22C36BAFC();
    v27(v40);
    if ((v35 & 0x8000000000000000) != 0)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    v41 = *(v39 + 16);

    if (v35 >= v41)
    {
LABEL_128:
      __break(1u);
      return;
    }

    v43 = v13[94];
    v44 = v13[93];
    v45 = v13[18];
    v46 = MEMORY[0x2318B57A0](v42);
    sub_22C6053E0(v46, v44);

    sub_22C70C3C4();
    v829 = v13;
    v815 = v27;
    if (v79)
    {
      v47 = v13[93];
      v48 = &qword_27D9BC030;
    }

    else
    {
      v70 = v13[102];
      sub_22C70CB80();
      v71 = v13[93];
      v72 = v13[78];
      v73 = v13[77];
      v75 = sub_22C36CB30(v74);
      v76(v75);
      v77 = sub_22C380120();
      sub_22C60539C(v77, v78);
      sub_22C70C3C4();
      if (!v79)
      {
        v234 = v13[86];
        sub_22C70CB1C();
        v235 = v13[77];
        v236 = v13[70];
        v237 = v13[62];
        v238 = v13[63];
        v240 = sub_22C36CB30(v239);
        v241(v240);
        sub_22C90702C();
        v242 = sub_22C70C414();
        v244 = v243(v242);
        if (v244 == *MEMORY[0x277D1DAA8])
        {
          v245 = v13[70];
          v246 = sub_22C70C5D8();
          v247(v246);
          v248 = sub_22C906F2C();
          sub_22C70C4EC(v248);
          v250 = v249;
          v251 = *(v249 + 88);
          v252 = sub_22C36BA00();
          v253(v252);
          v254 = *MEMORY[0x277D1DEF8];
          v255 = v13[102];
          sub_22C70CADC();
          v256 = v13[86];
          sub_22C70CAD0();
          v257 = v13[70];
          if (v258 == v259)
          {
            v260 = v13[61];
            v823 = v13[60];
            v261 = v13[54];
            v262 = v13[53];
            (*(v250 + 96))(v257, v234);
            v26 = *v257;
            v263 = v257[1];
            sub_22C90931C();
            v264 = swift_allocBox();
            sub_22C70C980(v264, v265);
            *v266 = v26;
            v266[1] = v263;
            v267 = *MEMORY[0x277D729B8];
            sub_22C70C424();
            (*(v268 + 104))();
            *v260 = v257;
            v269 = *MEMORY[0x277D72A58];
            v270 = sub_22C70CBB8(v261);
            v271(v270);
            v272 = *(v261 + 32);
            v273 = sub_22C36FC08();
            v13 = v829;
            v274(v273);
            swift_isUniquelyReferenced_nonNull_native();
            sub_22C6AF718();
            v275 = sub_22C38A0DC();
            sub_22C62EC0C(v275, v276, 0xE800000000000000, v277, v278, v279, v280, v281, v795, v797, v799, v801, v803, v805);
            v282 = sub_22C374574();
            v283(v282);
            v284 = sub_22C385DD8();
          }

          else
          {
            v758 = sub_22C70CB28();
            v759(v758);
            v760 = sub_22C38B23C();
            v761(v760);
            v762 = *(v250 + 8);
            v284 = sub_22C36BA00();
          }

          v83 = v285(v284);
        }

        else
        {
          v688 = v13[102];
          sub_22C70CAE8();
          v689 = v13[86];
          sub_22C70CB10();
          v690 = v13[70];
          sub_22C70CCDC(v691);
          v692();
          v693 = sub_22C381704();
          v694(v693);
          v695 = *(v26 + 8);
          v26 += 8;
          v696 = sub_22C634768();
          v83 = v697(v696);
        }

LABEL_14:
        v84 = v13[94];
        v85 = v13[92];
        v86 = v13[18];
        v87 = MEMORY[0x2318B57A0](v83);
        sub_22C6053E0(v87, v85);

        sub_22C70C3C4();
        if (v79)
        {
          v88 = v13[92];
          v89 = &qword_27D9BC030;
        }

        else
        {
          v90 = v13[101];
          sub_22C70CB80();
          v91 = v13[92];
          v92 = v13[78];
          v93 = v13[76];
          v95 = sub_22C36CB30(v94);
          v96(v95);
          v97 = sub_22C380120();
          sub_22C60539C(v97, v98);
          sub_22C70C3C4();
          if (!v99)
          {
            v286 = v13[85];
            sub_22C70CB1C();
            v287 = v13[76];
            v288 = v13[69];
            v289 = v13[62];
            v290 = v13[63];
            v292 = sub_22C36CB30(v291);
            v293(v292);
            sub_22C90702C();
            v294 = sub_22C70C414();
            v296 = v295(v294);
            if (v296 == *MEMORY[0x277D1DAA8])
            {
              v297 = v13[69];
              v298 = sub_22C70C5D8();
              v299(v298);
              v300 = sub_22C906F2C();
              sub_22C70C4EC(v300);
              v302 = v301;
              v303 = *(v301 + 88);
              v304 = sub_22C36BA00();
              v305(v304);
              v306 = *MEMORY[0x277D1DEF8];
              v307 = v13[101];
              sub_22C70CADC();
              v308 = v13[85];
              sub_22C70CAD0();
              v309 = v13[69];
              if (v310 == v311)
              {
                v312 = v13[61];
                v26 = v13[54];
                v820 = v13[53];
                v824 = v13[60];
                v313 = *(v302 + 96);
                v314 = sub_22C36BA00();
                v315(v314);
                v317 = *v309;
                v316 = v309[1];
                sub_22C90931C();
                v818 = swift_allocBox();
                *v318 = v317;
                v318[1] = v316;
                v319 = *MEMORY[0x277D729B8];
                sub_22C70C424();
                (*(v320 + 104))();
                *v312 = v818;
                v321 = *MEMORY[0x277D72A58];
                v322 = sub_22C70C5C8();
                v323(v322);
                v324 = sub_22C386604();
                v325(v324);
                sub_22C70CC24();
                sub_22C6AF718();
                v326 = sub_22C38A0DC();
                sub_22C62EC0C(v326, 0x6574746972776572, v327, v328, v329, v330, v331, v332, v795, v797, v799, v801, v803, v805);
                v333 = sub_22C374574();
                v334(v333);
                v335 = sub_22C385DD8();
              }

              else
              {
                v763 = sub_22C70CB28();
                v764(v763);
                v765 = sub_22C38B23C();
                v766(v765);
                v767 = *(v302 + 8);
                v335 = sub_22C36BA00();
              }

              v103 = v336(v335);
            }

            else
            {
              v698 = v13[101];
              sub_22C70CAE8();
              v699 = v13[85];
              sub_22C70CB10();
              v700 = v13[69];
              sub_22C70CCDC(v701);
              v702();
              v703 = sub_22C381704();
              v704(v703);
              v705 = *(v26 + 8);
              v26 += 8;
              v706 = sub_22C634768();
              v103 = v707(v706);
            }

LABEL_21:
            v104 = v13[94];
            v105 = v13[91];
            v106 = v13[18];
            v107 = MEMORY[0x2318B57A0](v103);
            sub_22C6053E0(v107, v105);

            sub_22C70C3C4();
            if (v79)
            {
              v108 = v13[91];
              v109 = &qword_27D9BC030;
            }

            else
            {
              v110 = v13[100];
              sub_22C70CB80();
              v111 = v13[91];
              v112 = v13[78];
              v113 = v13[75];
              v115 = sub_22C36CB30(v114);
              v116(v115);
              v117 = sub_22C380120();
              sub_22C60539C(v117, v118);
              sub_22C70C3C4();
              if (!v119)
              {
                v337 = v13[84];
                sub_22C70CB1C();
                v338 = v13[75];
                v339 = v13[68];
                v340 = v13[62];
                v341 = v13[63];
                v343 = sub_22C36CB30(v342);
                v344(v343);
                sub_22C90702C();
                v345 = sub_22C70C414();
                v347 = v346(v345);
                if (v347 == *MEMORY[0x277D1DAA8])
                {
                  v348 = v13[68];
                  v349 = sub_22C70C5D8();
                  v350(v349);
                  v351 = sub_22C906F2C();
                  sub_22C70C4EC(v351);
                  v353 = v352;
                  v354 = *(v352 + 88);
                  v355 = sub_22C36BA00();
                  v356(v355);
                  v357 = *MEMORY[0x277D1DEF8];
                  v358 = v13[100];
                  sub_22C70CADC();
                  v359 = v13[84];
                  sub_22C70CAD0();
                  v362 = v13[68];
                  if (v360 == v363)
                  {
                    v364 = sub_22C37ACEC(v360, v361);
                    v365(v364);
                    v366 = *v362;
                    v367 = v362[1];
                    sub_22C90931C();
                    v368 = swift_allocBox();
                    sub_22C70C980(v368, v369);
                    *v370 = v366;
                    v370[1] = v367;
                    v371 = *MEMORY[0x277D729B8];
                    sub_22C70C424();
                    (*(v372 + 104))();
                    *v358 = v362;
                    v373 = *MEMORY[0x277D72A58];
                    v374 = sub_22C70C5C8();
                    v375(v374);
                    v376 = sub_22C386604();
                    v13 = v829;
                    v377(v376);
                    sub_22C70CC24();
                    sub_22C6AF718();
                    v378 = sub_22C38A0DC();
                    sub_22C62EC0C(v378, v379, v380, v381, v382, v383, v384, v385, v795, v797, v799, v801, v803, v805);
                    v386 = sub_22C374574();
                    v387(v386);
                    v388 = sub_22C385DD8();
                  }

                  else
                  {
                    v768 = sub_22C70CB28();
                    v769(v768);
                    v770 = sub_22C38B23C();
                    v771(v770);
                    v772 = *(v353 + 8);
                    v388 = sub_22C36BA00();
                  }

                  v123 = v389(v388);
                }

                else
                {
                  v708 = v13[100];
                  sub_22C70CAE8();
                  v709 = v13[84];
                  sub_22C70CB10();
                  v710 = v13[68];
                  sub_22C70CCDC(v711);
                  v712();
                  v713 = sub_22C381704();
                  v714(v713);
                  v715 = *(v26 + 8);
                  v26 += 8;
                  v716 = sub_22C634768();
                  v123 = v717(v716);
                }

LABEL_28:
                v124 = v13[94];
                v125 = v13[90];
                v126 = v13[18];
                v127 = MEMORY[0x2318B57A0](v123);
                sub_22C6053E0(v127, v125);

                sub_22C70C3C4();
                if (v79)
                {
                  v128 = v13[90];
                  v129 = &qword_27D9BC030;
                }

                else
                {
                  v130 = v13[99];
                  sub_22C70CB80();
                  v131 = v13[90];
                  v132 = v13[78];
                  v133 = v13[74];
                  v135 = sub_22C36CB30(v134);
                  v136(v135);
                  v137 = sub_22C380120();
                  sub_22C60539C(v137, v138);
                  sub_22C70C3C4();
                  if (!v139)
                  {
                    v390 = v13[83];
                    sub_22C70CB1C();
                    v391 = v13[74];
                    v392 = v13[67];
                    v393 = v13[62];
                    v394 = v13[63];
                    v396 = sub_22C36CB30(v395);
                    v397(v396);
                    sub_22C90702C();
                    v398 = sub_22C70C414();
                    v400 = v399(v398);
                    if (v400 == *MEMORY[0x277D1DAA8])
                    {
                      v401 = v13[67];
                      v402 = sub_22C70C5D8();
                      v403(v402);
                      v404 = sub_22C906F2C();
                      sub_22C70C4EC(v404);
                      v406 = v405;
                      v407 = *(v405 + 88);
                      v408 = sub_22C36BA00();
                      v409(v408);
                      v410 = *MEMORY[0x277D1DEF8];
                      v411 = v13[99];
                      sub_22C70CADC();
                      v412 = v13[83];
                      sub_22C70CAD0();
                      v413 = v13[67];
                      if (v414 == v415)
                      {
                        v416 = v13[61];
                        v26 = v13[54];
                        v821 = v13[53];
                        v825 = v13[60];
                        v417 = *(v406 + 96);
                        v418 = sub_22C36BA00();
                        v419(v418);
                        v420 = *v413;
                        v421 = v413[1];
                        sub_22C90931C();
                        v422 = swift_allocBox();
                        sub_22C70C980(v422, v423);
                        *v424 = v420;
                        v424[1] = v421;
                        v425 = *MEMORY[0x277D729B8];
                        sub_22C70C424();
                        (*(v426 + 104))();
                        *v416 = v413;
                        v427 = *MEMORY[0x277D72A58];
                        v428 = sub_22C70C5C8();
                        v429(v428);
                        v430 = sub_22C386604();
                        v431(v430);
                        sub_22C70CC24();
                        sub_22C6AF718();
                        v432 = sub_22C38A0DC();
                        sub_22C62EC0C(v432, v433, 0xEC00000068637261, v434, v435, v436, v437, v438, v795, v797, v799, v801, v803, v805);
                        v439 = sub_22C374574();
                        v440(v439);
                        v441 = sub_22C385DD8();
                      }

                      else
                      {
                        v773 = sub_22C70CB28();
                        v774(v773);
                        v775 = sub_22C38B23C();
                        v776(v775);
                        v777 = *(v406 + 8);
                        v441 = sub_22C36BA00();
                      }

                      v143 = v442(v441);
                    }

                    else
                    {
                      v718 = v13[99];
                      sub_22C70CAE8();
                      v719 = v13[83];
                      sub_22C70CB10();
                      v720 = v13[67];
                      v721 = v13[63];
                      v722 = v829[62];
                      (*(v723 + 8))();
                      v724 = sub_22C381704();
                      v725(v724);
                      v726 = *(v721 + 8);
                      v26 = v721 + 8;
                      v727 = sub_22C634750();
                      v13 = v829;
                      v143 = v728(v727);
                    }

LABEL_35:
                    v144 = v13[94];
                    v145 = v13[89];
                    v146 = v13[18];
                    v147 = MEMORY[0x2318B57A0](v143);
                    sub_22C6053E0(v147, v145);

                    sub_22C70C3C4();
                    if (v79)
                    {
                      v148 = v13[89];
                      v149 = &qword_27D9BC030;
                    }

                    else
                    {
                      v150 = v13[98];
                      sub_22C70CB80();
                      v151 = v13[89];
                      v152 = v13[78];
                      v153 = v13[73];
                      v155 = sub_22C36CB30(v154);
                      v156(v155);
                      v157 = sub_22C380120();
                      sub_22C60539C(v157, v158);
                      sub_22C70C3C4();
                      if (!v159)
                      {
                        v443 = v13[82];
                        sub_22C70CB1C();
                        v444 = v13[73];
                        v445 = v13[66];
                        v446 = v13[62];
                        v447 = v13[63];
                        v449 = sub_22C36CB30(v448);
                        v450(v449);
                        sub_22C90702C();
                        v451 = sub_22C70C414();
                        v453 = v452(v451);
                        if (v453 == *MEMORY[0x277D1DAA8])
                        {
                          v454 = v13[66];
                          v455 = sub_22C70C5D8();
                          v456(v455);
                          v457 = sub_22C906F2C();
                          sub_22C70C4EC(v457);
                          v459 = v458;
                          v460 = *(v458 + 88);
                          v461 = sub_22C36BA00();
                          v462(v461);
                          v463 = *MEMORY[0x277D1DEF8];
                          v464 = v13[98];
                          sub_22C70CADC();
                          v465 = v13[82];
                          sub_22C70CAD0();
                          v468 = v13[66];
                          if (v466 == v469)
                          {
                            v470 = sub_22C37ACEC(v466, v467);
                            v471(v470);
                            v472 = *v468;
                            v473 = v468[1];
                            sub_22C90931C();
                            v474 = swift_allocBox();
                            sub_22C70C980(v474, v475);
                            *v476 = v472;
                            v476[1] = v473;
                            v477 = *MEMORY[0x277D729B8];
                            sub_22C70C424();
                            (*(v478 + 104))();
                            *v464 = v468;
                            v479 = *MEMORY[0x277D72A58];
                            v480 = sub_22C70C5C8();
                            v481(v480);
                            v482 = sub_22C386604();
                            v13 = v829;
                            v483(v482);
                            sub_22C70CC24();
                            sub_22C6AF718();
                            v484 = sub_22C38A0DC();
                            sub_22C62EC0C(v484, v485, v486, v487, v488, v489, v490, v491, v795, v797, v799, v801, v803, v805);
                            v492 = sub_22C374574();
                            v493(v492);
                            v494 = sub_22C385DD8();
                          }

                          else
                          {
                            v778 = sub_22C70CB28();
                            v779(v778);
                            v780 = sub_22C38B23C();
                            v781(v780);
                            v782 = *(v459 + 8);
                            v494 = sub_22C36BA00();
                          }

                          v163 = v495(v494);
                        }

                        else
                        {
                          v729 = v13[98];
                          sub_22C70CAE8();
                          v730 = v13[82];
                          sub_22C70CB10();
                          v731 = v13[66];
                          sub_22C70CCDC(v732);
                          v733();
                          v734 = sub_22C381704();
                          v735(v734);
                          v736 = *(v26 + 8);
                          v26 += 8;
                          v737 = sub_22C634768();
                          v163 = v738(v737);
                        }

LABEL_42:
                        v164 = v13[94];
                        v165 = v13[88];
                        v166 = v13[18];
                        v167 = MEMORY[0x2318B57A0](v163);
                        sub_22C6053E0(v167, v165);

                        sub_22C70C3C4();
                        if (v79)
                        {
                          v168 = v13[88];
                          v169 = &qword_27D9BC030;
                        }

                        else
                        {
                          v170 = v13[97];
                          sub_22C70CB80();
                          v171 = v13[88];
                          v172 = v13[78];
                          v173 = v13[72];
                          v175 = sub_22C36CB30(v174);
                          v176(v175);
                          v177 = sub_22C380120();
                          sub_22C60539C(v177, v178);
                          sub_22C70C3C4();
                          if (!v179)
                          {
                            v496 = v13[81];
                            sub_22C70CB1C();
                            v497 = v13[72];
                            v498 = v13[65];
                            v499 = v13[62];
                            v500 = v13[63];
                            v502 = sub_22C36CB30(v501);
                            v503(v502);
                            sub_22C90702C();
                            v504 = sub_22C70C414();
                            v506 = v505(v504);
                            if (v506 == *MEMORY[0x277D1DAA8])
                            {
                              v507 = v13[65];
                              v508 = sub_22C70C5D8();
                              v509(v508);
                              v510 = sub_22C906F2C();
                              sub_22C70C4EC(v510);
                              v512 = v511;
                              v513 = *(v511 + 88);
                              v514 = sub_22C36BA00();
                              v515(v514);
                              v516 = *MEMORY[0x277D1DEF8];
                              v517 = v13[97];
                              sub_22C70CADC();
                              v518 = v13[81];
                              sub_22C70CAD0();
                              v521 = v13[65];
                              if (v519 == v522)
                              {
                                v523 = sub_22C37ACEC(v519, v520);
                                v524(v523);
                                v525 = *v521;
                                v526 = v521[1];
                                sub_22C90931C();
                                v527 = swift_allocBox();
                                sub_22C70C980(v527, v528);
                                *v529 = v525;
                                v529[1] = v526;
                                v530 = *MEMORY[0x277D729B8];
                                sub_22C70C424();
                                (*(v531 + 104))();
                                *v517 = v521;
                                v532 = *MEMORY[0x277D72A58];
                                v533 = sub_22C70C5C8();
                                v534(v533);
                                v535 = sub_22C386604();
                                v13 = v829;
                                v536(v535);
                                sub_22C70CC24();
                                sub_22C6AF718();
                                v537 = sub_22C38A0DC();
                                sub_22C62EC0C(v537, v538, v539, v540, v541, v542, v543, v544, v795, v797, v799, v801, v803, v805);
                                v545 = sub_22C374574();
                                v546(v545);
                                v547 = sub_22C385DD8();
                              }

                              else
                              {
                                v783 = sub_22C70CB28();
                                v784(v783);
                                v785 = sub_22C38B23C();
                                v786(v785);
                                v787 = *(v512 + 8);
                                v547 = sub_22C36BA00();
                              }

                              v548(v547);
                            }

                            else
                            {
                              v739 = v13[97];
                              sub_22C70CAE8();
                              v740 = v13[81];
                              sub_22C70CB10();
                              v741 = v13[65];
                              sub_22C70CCDC(v742);
                              v743();
                              v744 = sub_22C381704();
                              v745(v744);
                              v746 = *(v26 + 8);
                              v747 = sub_22C634768();
                              v748(v747);
                            }

                            goto LABEL_49;
                          }

                          v180 = v13[97];
                          sub_22C38B6E0();
                          v181 = v13[72];
                          (*(v182 + 8))();
                          v169 = &qword_27D9BAA18;
                          v168 = v181;
                        }

                        sub_22C36DD80(v168, v169);
LABEL_49:
                        v183 = v13[107];
                        v184 = v13[103];
                        v185 = v13[52];
                        v186 = v829[51];
                        v187 = v829[19];
                        sub_22C90878C();
                        v188 = sub_22C9087DC();
                        v189 = sub_22C36BAFC();
                        v815(v189);
                        v829[16] = v188;
                        sub_22C907EEC();

                        v190 = sub_22C3726C4();
                        sub_22C6AEA50(v190, v191, v192, v193);
                        v194 = sub_22C9079FC();
                        v195 = v829;
                        sub_22C381514();
                        if (sub_22C370B74(v196, v197, v198) == 1)
                        {
                          v199 = sub_22C36DD80(v829[51], &qword_27D9BD798);
                          goto LABEL_91;
                        }

                        v200 = MEMORY[0x2318B4EB0]();
                        sub_22C36BBA8(v194);
                        v202 = *(v201 + 8);
                        v203 = sub_22C36BBCC();
                        v204(v203);
                        v205 = *(v200 + 16);
                        if (!v205)
                        {

                          v214 = MEMORY[0x277D84F90];
LABEL_85:
                          v549 = v195[46];
                          v550 = v195[47];
                          v551 = v195[43];
                          v552 = v195[44];
                          v553 = swift_allocObject();
                          v553[2] = 0xD000000000000028;
                          v553[3] = 0x800000022C92EB40;
                          v553[4] = 0x614D797469746E45;
                          v553[5] = 0xEB00000000686374;
                          *v550 = v553;
                          (*(v552 + 104))(v550, *MEMORY[0x277D72D28], v551);
                          v554 = *(v552 + 16);
                          v555 = sub_22C36BA00();
                          v556(v555);
                          v557 = *(v214 + 16);
                          if (v557)
                          {
                            v558 = v195[54];
                            v559 = v195[40];
                            sub_22C70CDCC(MEMORY[0x277D84F90]);
                            v560 = v840;
                            v561 = *(v559 + 16);
                            v559 += 16;
                            v562 = *(v559 + 64);
                            sub_22C36BA94();
                            v564 = v214 + v563;
                            v822 = *(v559 + 56);
                            v826 = v565;
                            v819 = (v559 - 8);
                            v817 = *MEMORY[0x277D72A38];
                            v816 = (v558 + 104);
                            do
                            {
                              v566 = v195[58];
                              v833 = v195[53];
                              v837 = v557;
                              v567 = v195[41];
                              v568 = v195[42];
                              v569 = v195;
                              v570 = v195[39];
                              v826(v568, v564, v570);
                              sub_22C90919C();
                              v831 = swift_allocBox();
                              v826(v567, v568, v570);
                              sub_22C70C380(&qword_27D9BF808, MEMORY[0x277D36E88]);
                              sub_22C90916C();
                              (*v819)(v568, v570);
                              *v566 = v831;
                              (*v816)(v566, v817, v833);
                              v840 = v560;
                              v572 = *(v560 + 16);
                              v571 = *(v560 + 24);
                              if (v572 >= v571 >> 1)
                              {
                                v577 = sub_22C369AB0(v571);
                                sub_22C3B74E0(v577, v572 + 1, 1);
                              }

                              v573 = v569[58];
                              v574 = v569[53];
                              *(v560 + 16) = v572 + 1;
                              sub_22C37054C();
                              (*(v576 + 32))(v560 + v575 + *(v576 + 72) * v572);
                              v564 += v822;
                              --v557;
                              v195 = v569;
                            }

                            while (v837 != 1);
                          }

                          v578 = v195[61];
                          v579 = v195[59];
                          v580 = v195[53];
                          v581 = v195[54];
                          v583 = v195[46];
                          v582 = v195[47];
                          v585 = v195[43];
                          v584 = v195[44];
                          sub_22C90906C();
                          v586 = swift_allocBox();
                          sub_22C36A10C();
                          sub_22C90903C();
                          *v579 = v586;
                          v195 = v829;
                          (*(v581 + 104))(v579, *MEMORY[0x277D729E0], v580);
                          (*(v581 + 32))(v578, v579, v580);
                          sub_22C70CC24();
                          sub_22C6AF718();
                          sub_22C62EC0C(v578, 0x456465686374616DLL, 0xEF7365697469746ELL, v587, v588, v589, v590, v591, v795, v797, v799, v801, v803, v805);
                          v592 = *(v584 + 8);
                          v593 = sub_22C36ECB4();
                          v199 = v594(v593);
LABEL_91:
                          v595 = v195[94];
                          v596 = v195[87];
                          v597 = v195[18];
                          v598 = MEMORY[0x2318B57A0](v199);
                          sub_22C6053E0(v598, v596);

                          v599 = sub_22C36CCF8();
                          sub_22C36D0A8(v599, v600, v595);
                          if (v79)
                          {
                            v601 = v195[87];

                            v602 = &qword_27D9BC030;
                          }

                          else
                          {
                            v603 = v195[96];
                            v604 = v195[94];
                            v605 = v195[87];
                            v606 = v195[78];
                            v607 = v195[71];
                            v608 = sub_22C36CB30(v195[95]);
                            v609(v608);
                            v610 = sub_22C37170C();
                            sub_22C60539C(v610, v611);

                            v612 = sub_22C36CCF8();
                            sub_22C36D0A8(v612, v613, v606);
                            if (!v614)
                            {
                              v644 = v195[80];
                              v645 = v195[78];
                              v646 = v195[71];
                              v647 = v195[63];
                              v648 = v195[64];
                              v649 = v195[62];
                              v650 = sub_22C36CB30(v195[79]);
                              v651(v650);
                              sub_22C90702C();
                              v652 = (*(v647 + 88))(v648, v649);
                              if (v652 == *MEMORY[0x277D1DAA8])
                              {
                                v653 = v195[64];
                                (*(v195[63] + 96))(v653, v195[62]);
                                v654 = sub_22C906F2C();
                                sub_22C70C4EC(v654);
                                v656 = v655;
                                v657 = (*(v655 + 88))(v653, v644);
                                v658 = v195[96];
                                v659 = v195[95];
                                v660 = v195[94];
                                v661 = v195[80];
                                v662 = v195[79];
                                v663 = v195[78];
                                v664 = v195[64];
                                if (v657 == *MEMORY[0x277D1DED8])
                                {
                                  v835 = v195[94];
                                  v839 = v195[96];
                                  v665 = v195[61];
                                  v828 = v195[60];
                                  v666 = v195[54];
                                  v667 = v829[53];
                                  v668 = *(v656 + 96);
                                  v669 = sub_22C37EF10();
                                  v670(v669);
                                  v671 = *v664;
                                  sub_22C90931C();
                                  v672 = swift_allocBox();
                                  sub_22C6AF828(v672, v673);
                                  *v674 = v671;
                                  v675 = *MEMORY[0x277D72988];
                                  sub_22C70C424();
                                  (*(v676 + 104))();
                                  *v665 = v664;
                                  v677 = *MEMORY[0x277D72A58];
                                  sub_22C6AFEE4();
                                  v678(v665);
                                  v679 = v667;
                                  v195 = v829;
                                  (*(v666 + 32))(v828, v665, v679);
                                  sub_22C70CC24();
                                  sub_22C6AF718();
                                  sub_22C62EC0C(v828, 0xD000000000000013, 0x800000022C9338D0, v680, v681, v682, v683, v684, v795, v797, v799, v801, v803, v805);
                                  v685 = *(v662 + 8);
                                  v686 = sub_22C36CA88();
                                  v687(v686);
                                  (*(v659 + 8))(v839, v835);
                                }

                                else
                                {
                                  v788 = *(v662 + 8);
                                  v789 = sub_22C36CA88();
                                  v790(v789);
                                  (*(v659 + 8))(v658, v660);
                                  v791 = *(v656 + 8);
                                  v792 = sub_22C37EF10();
                                  v793(v792);
                                }
                              }

                              else
                              {
                                v749 = v195[96];
                                v750 = v195[95];
                                v751 = v195[94];
                                v753 = v195[63];
                                v752 = v195[64];
                                v754 = v195[62];
                                (*(v195[79] + 8))(v195[80], v195[78]);
                                (*(v750 + 8))(v749, v751);
                                v755 = *(v753 + 8);
                                v756 = sub_22C36BAFC();
                                v757(v756);
                              }

LABEL_98:
                              v615 = v195[107];
                              v616 = v195[106];
                              v617 = v195[103];
                              v618 = v195[61];
                              v619 = v195;
                              v620 = v195[57];
                              v622 = v619[53];
                              v621 = v619[54];
                              v623 = v619[36];
                              v838 = v619[37];
                              v834 = v619[35];
                              v624 = v619[19];
                              v827 = v619[18];
                              v830 = v619[21];
                              sub_22C90878C();
                              sub_22C5F8DA0(v615, v620);
                              (v815)(v615, v617);
                              v619[112] = *(v621 + 16);
                              v619[113] = (v621 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
                              v625 = sub_22C3726C4();
                              v626(v625);
                              sub_22C70CC24();
                              sub_22C6AF718();
                              v632 = sub_22C62EC0C(v618, 0x747865746E6F63, 0xE700000000000000, v627, v628, v629, v630, v631, v795, v797, v799, v801, v803, v805);
                              v619[114] = v840;
                              MEMORY[0x2318B57A0](v632);
                              sub_22C90878C();
                              (*(v623 + 16))(v838, v830, v834);
                              v633 = type metadata accessor for Interpreter2();
                              sub_22C6AEA50(v830 + *(v633 + 36), (v619 + 7), &qword_27D9BF800, &qword_22C923130);
                              v634 = swift_task_alloc();
                              v619[115] = v634;
                              *v634 = v619;
                              v634[1] = sub_22C700F30;
                              v635 = v619[106];
                              v637 = v619[37];
                              v636 = v619[38];
                              sub_22C372034();

                              sub_22C7177DC(v638, v639, v640, v641, v642);
                              return;
                            }

                            v601 = v195[71];
                            (*(v195[95] + 8))(v195[96], v195[94]);
                            v602 = &qword_27D9BAA18;
                          }

                          sub_22C36DD80(v601, v602);
                          goto LABEL_98;
                        }

                        v206 = v829[49];
                        v207 = v829[40];
                        v209 = *(v206 + 16);
                        v208 = v206 + 16;
                        v210 = *(v208 + 64);
                        sub_22C36BA94();
                        v212 = v200 + v211;
                        v832 = *(v208 + 56);
                        v836 = v213;
                        v214 = MEMORY[0x277D84F90];
                        while (1)
                        {
                          v215 = v195[50];
                          v216 = v195[48];
                          v217 = sub_22C38644C();
                          v836(v217);
                          v218 = sub_22C5FA280();
                          v219 = *(v208 - 8);
                          v220 = sub_22C36BBCC();
                          v221(v220);
                          v222 = *(v218 + 16);
                          v223 = *(v214 + 16);
                          if (__OFADD__(v223, v222))
                          {
                            break;
                          }

                          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                          v225 = v214;
                          if (!isUniquelyReferenced_nonNull_native || v223 + v222 > *(v214 + 24) >> 1)
                          {
                            sub_22C59405C();
                            v225 = v226;
                          }

                          v195 = v829;
                          if (*(v218 + 16))
                          {
                            if ((*(v225 + 24) >> 1) - *(v225 + 16) < v222)
                            {
                              goto LABEL_125;
                            }

                            v227 = v829[39];
                            v228 = *(v207 + 80);
                            sub_22C37BEE8();
                            v214 = v229;
                            v230 = *(v207 + 72);
                            swift_arrayInitWithCopy();

                            if (v222)
                            {
                              v231 = *(v214 + 16);
                              v232 = __OFADD__(v231, v222);
                              v233 = v231 + v222;
                              if (v232)
                              {
                                goto LABEL_126;
                              }

                              *(v214 + 16) = v233;
                            }
                          }

                          else
                          {
                            v214 = v225;

                            if (v222)
                            {
                              goto LABEL_124;
                            }
                          }

                          v212 += v832;
                          if (!--v205)
                          {

                            goto LABEL_85;
                          }
                        }

                        __break(1u);
LABEL_124:
                        __break(1u);
LABEL_125:
                        __break(1u);
LABEL_126:
                        __break(1u);
                        goto LABEL_127;
                      }

                      v160 = v13[98];
                      sub_22C38B6E0();
                      v161 = v13[73];
                      (*(v162 + 8))();
                      v149 = &qword_27D9BAA18;
                      v148 = v161;
                    }

                    v163 = sub_22C36DD80(v148, v149);
                    goto LABEL_42;
                  }

                  v140 = v13[99];
                  sub_22C38B6E0();
                  v141 = v13[74];
                  (*(v142 + 8))();
                  v129 = &qword_27D9BAA18;
                  v128 = v141;
                }

                v143 = sub_22C36DD80(v128, v129);
                goto LABEL_35;
              }

              v120 = v13[100];
              sub_22C38B6E0();
              v121 = v13[75];
              (*(v122 + 8))();
              v109 = &qword_27D9BAA18;
              v108 = v121;
            }

            v123 = sub_22C36DD80(v108, v109);
            goto LABEL_28;
          }

          v100 = v13[101];
          sub_22C38B6E0();
          v101 = v13[76];
          (*(v102 + 8))();
          v89 = &qword_27D9BAA18;
          v88 = v101;
        }

        v103 = sub_22C36DD80(v88, v89);
        goto LABEL_21;
      }

      v80 = v13[102];
      sub_22C38B6E0();
      v81 = v13[77];
      (*(v82 + 8))();
      v48 = &qword_27D9BAA18;
      v47 = v81;
    }

    v83 = sub_22C36DD80(v47, v48);
    goto LABEL_14;
  }

  sub_22C90735C();
  sub_22C3A5F00();
  sub_22C37A198();
  swift_allocError();
  v49 = *(v12 + 48);
  v50 = *(v12 + 32);
  *v51 = *(v12 + 16);
  *(v51 + 16) = v50;
  *(v51 + 32) = v49;
  swift_willThrow();
  v52 = *(v12 + 856);
  v53 = *(v12 + 848);
  v54 = *(v12 + 840);
  v55 = *(v12 + 816);
  v56 = *(v12 + 808);
  v57 = *(v12 + 800);
  v58 = *(v12 + 792);
  v59 = *(v12 + 784);
  v60 = *(v12 + 776);
  v61 = *(v12 + 768);
  sub_22C70C4FC();
  v812 = *(v12 + 456);
  v813 = *(v12 + 448);
  v814 = *(v12 + 440);
  sub_22C70C658();

  sub_22C369A24();
  sub_22C372034();

  v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12);
}

uint64_t sub_22C700F30()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 920);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v3 + 928) = v0;

  if (v0)
  {
    v9 = *(v3 + 912);
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C701030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = *(v12 + 304);
  sub_22C71BBF8(*(v12 + 448));
  v14 = sub_22C900CCC();
  sub_22C3A5908(&qword_27D9BE3C0, &qword_22C91D970);
  v15 = sub_22C90098C();
  sub_22C369824(v15);
  v17 = v16;
  v19 = *(v18 + 72);
  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22C90F800;
  (*(v17 + 104))(v21 + v20, *MEMORY[0x277D36E40], v15);
  if (!v14)
  {
    swift_setDeallocating();
    sub_22C5900BC();
    goto LABEL_8;
  }

  sub_22C36BBCC();
  sub_22C46EC84();
  v23 = v22;

  swift_setDeallocating();
  sub_22C5900BC();
  if ((v23 & 1) == 0 || (v24 = *(v12 + 160), sub_22C907D6C(), v25 = sub_22C3707B4(), sub_22C36D0A8(v25, v26, v27), v51))
  {
LABEL_8:
    v40 = *(v12 + 424);
    v42 = *(v12 + 184);
    v41 = *(v12 + 192);
    v43 = *(v12 + 168);
    v44 = *(v12 + 144);
    sub_22C9082FC();
    sub_22C7024F0(v42, v41);
    sub_22C36DD80(v42, &qword_27D9BC028);
    sub_22C70C3C4();
    if (!v51)
    {
      v46 = *(v12 + 176);
      v47 = *(v12 + 144);
      (*(*(v12 + 432) + 32))(*(v12 + 440), *(v12 + 192), *(v12 + 424));
      sub_22C9082FC();
      v48 = sub_22C90941C();
      v49 = sub_22C36CCF8();
      sub_22C36D0A8(v49, v50, v48);
      if (v51)
      {
        sub_22C36DD80(*(v12 + 176), &qword_27D9BC028);
      }

      else
      {
        v53 = *(v12 + 352);
        v52 = *(v12 + 360);
        v54 = *(v12 + 344);
        v55 = *(v12 + 176);
        sub_22C9093DC();
        sub_22C36BBA8(v48);
        v57 = *(v56 + 8);
        v58 = sub_22C372164();
        v59(v58);
        sub_22C9094EC();
        v60 = swift_allocBox();
        v61 = *MEMORY[0x277D72CC0];
        sub_22C70C424();
        (*(v62 + 104))();
        *v52 = v60;
        (*(v53 + 104))(v52, *MEMORY[0x277D72D50], v54);
        sub_22C37B220();
        sub_22C5E94F0();
        v64 = v63;

        v65 = sub_22C6AEEC0();
        v66(v65);
        if (v64)
        {
          v67 = *(v12 + 304);
          if (sub_22C900CCC() || (v68 = *(v12 + 304), sub_22C900DAC()))
          {
            v69 = *(v12 + 232);

            sub_22C903F8C();
            v70 = sub_22C9063CC();
            v71 = sub_22C90AADC();
            v72 = os_log_type_enabled(v70, v71);
            v74 = *(v12 + 432);
            v73 = *(v12 + 440);
            v75 = *(v12 + 424);
            v77 = *(v12 + 224);
            v76 = *(v12 + 232);
            v78 = *(v12 + 216);
            if (v72)
            {
              sub_22C3720F4();
              v79 = swift_slowAlloc();
              *v79 = 0;
              _os_log_impl(&dword_22C366000, v70, v71, "Ignoring required return type since this is a file search with filter/preferred type specified", v79, 2u);
              v80 = sub_22C38A0CC();
              MEMORY[0x2318B9880](v80);
            }

            v81 = *(v77 + 8);
            v82 = sub_22C36ECB4();
            v83(v82);
            v84 = *(v74 + 8);
            v85 = sub_22C36BBCC();
            v86(v85);
            goto LABEL_11;
          }
        }
      }

      v87 = *(v12 + 912);
      v88 = *(v12 + 904);
      v89 = *(v12 + 896);
      v90 = *(v12 + 488);
      v92 = *(v12 + 432);
      v91 = *(v12 + 440);
      v93 = *(v12 + 424);
      v94 = sub_22C36BAFC();
      v95(v94);
      swift_isUniquelyReferenced_nonNull_native();
      sub_22C6AF718();
      sub_22C6B017C();
      v96 = sub_22C38A0DC();
      sub_22C62EC0C(v96, v97, v98, v99, v100, v101, v102, v103, v257, v258, v260, v262, v264, v266);
      v104 = *(v92 + 8);
      v105 = sub_22C36D264();
      v106(v105);
      goto LABEL_22;
    }

    sub_22C36DD80(*(v12 + 192), &qword_27D9BB908);
LABEL_11:
    v45 = *(v12 + 912);
    goto LABEL_22;
  }

  v356 = *(v12 + 888);
  v28 = *(v12 + 880);
  v29 = *(v12 + 872);
  v30 = *(v12 + 864);
  v31 = *(v12 + 840);
  v32 = *(v12 + 824);
  v34 = *(v12 + 248);
  v33 = *(v12 + 256);
  v35 = *(v12 + 152);
  sub_22C90878C();
  v36 = sub_22C9087DC();
  v37 = sub_22C36CA88();
  v30(v37);
  *(v12 + 136) = v36;
  sub_22C907EAC();
  v38 = sub_22C5CA7F4();
  sub_22C36D0A8(v38, v39, v33);
  if (v51)
  {
    sub_22C36DD80(*(v12 + 248), &qword_27D9BD760);
  }

  else
  {
    v183 = *(v12 + 272);
    v184 = *(v12 + 248);
    v185 = *(v12 + 256);
    v186 = sub_22C36CB30(*(v12 + 264));
    v187(v186);

    v188 = sub_22C903A7C();
    if (v188 & 1) != 0 || (v183 = *(v12 + 272), v199 = sub_22C903A1C(), v199 != 2) && (v199)
    {
      sub_22C70C9AC();
      type metadata accessor for InterpreterError();
      sub_22C36A1EC();
      sub_22C70C380(v189, v190);
      sub_22C375F84();
      v191 = swift_allocError();
      sub_22C70C70C(v191, v192);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v193 = *(v183 + 8);
      v194 = sub_22C3726C4();
      v195(v194);
      v196 = *(v29 + 8);
      v197 = sub_22C3819EC();
      v196(v197);
      sub_22C370920();
      sub_22C70C2F0(v31, v198);
      (v196)(v351, v28);
      sub_22C36DD80(v354, &qword_27D9BD798);
      goto LABEL_24;
    }

    (*(*(v12 + 264) + 8))(*(v12 + 272), *(v12 + 256));
  }

  v200 = *(v12 + 240);
  sub_22C903F8C();
  v201 = sub_22C9063CC();
  sub_22C90AAFC();
  sub_22C37E84C();
  if (os_log_type_enabled(v201, v202))
  {
    sub_22C3720F4();
    v203 = swift_slowAlloc();
    sub_22C36C890(v203);
    sub_22C36BB14(&dword_22C366000, v204, v205, "Forcing search to 1P photos to enable photo picker.");
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v206 = *(v12 + 344);
  v207 = *(v12 + 240);
  v208 = *(v12 + 216);
  v209 = *(v12 + 224);

  v210 = *(v209 + 8);
  v211 = sub_22C36D264();
  v212(v211);
  v213 = swift_allocBox();
  v215 = v214;
  if (qword_27D9BA700 != -1)
  {
    swift_once();
  }

  v216 = *(v12 + 424);
  v218 = *(v12 + 344);
  v217 = *(v12 + 352);
  v219 = *(v12 + 208);
  v220 = *(v12 + 184);
  v221 = *(v12 + 168);
  v222 = sub_22C37AA60(v218, qword_27D9E3FE8);
  (*(v217 + 16))(v215, v222, v218);
  *v220 = v213;
  v223 = *MEMORY[0x277D72AD0];
  v224 = sub_22C90941C();
  sub_22C36985C(v224);
  (*(v225 + 104))(v220, v223, v224);
  sub_22C36BECC();
  sub_22C36C640(v226, v227, v228, v224);
  sub_22C7024F0(v220, v219);
  sub_22C36DD80(v220, &qword_27D9BC028);
  v229 = sub_22C36FD7C();
  v231 = sub_22C370B74(v229, v230, v216);
  v232 = *(v12 + 912);
  if (v231 == 1)
  {
    sub_22C36DD80(*(v12 + 208), &qword_27D9BB908);
    v233 = sub_22C36E2BC(0x6E65644965707974, 0xEF73726569666974);
    v234 = *(v12 + 912);
    if (v235)
    {
      v236 = v233;
      v237 = *(v12 + 424);
      v238 = *(v12 + 432);
      v239 = *(v12 + 200);
      v240 = *(v12 + 912);
      swift_isUniquelyReferenced_nonNull_native();
      v241 = v234[3];
      sub_22C3A5908(&qword_27D9BF428, &qword_22C9226E8);
      sub_22C70CF54();
      sub_22C90B15C();
      v242 = *(v234[6] + 16 * v236 + 8);

      (*(v238 + 32))(v239, v234[7] + *(v238 + 72) * v236, v237);
      sub_22C90B17C();
    }

    v251 = *(v12 + 424);
    v252 = *(v12 + 200);
    v253 = sub_22C70CF48();
    sub_22C36C640(v253, v254, v255, v256);
    sub_22C36DD80(v252, &qword_27D9BB908);
  }

  else
  {
    (*(*(v12 + 432) + 32))(*(v12 + 488), *(v12 + 208), *(v12 + 424));
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C6AF718();
    sub_22C370018();
    sub_22C6B017C();
    sub_22C62EC0C(v243, v244, v245, v246, v247, v248, v249, v250, v257, v258, v260, v262, v264, v266);
  }

LABEL_22:
  v107 = *(v12 + 928);
  v108 = *(v12 + 144);
  v109 = *(v12 + 152);
  sub_22C9082EC();
  *(sub_22C4E78D0() + 16) = v109;
  sub_22C7944D8();
  if (v107)
  {
    v112 = *(v12 + 448);
    v111 = *(v12 + 456);
    v113 = *(v12 + 424);
    v114 = *(v12 + 432);
    v115 = *(v12 + 416);
    v116 = *(v12 + 304);

    v117 = *(v114 + 8);
    v118 = sub_22C36ECB4();
    v117(v118);
    sub_22C370920();
    sub_22C70C2F0(v116, v119);
    v120 = sub_22C36D29C();
    v117(v120);
    sub_22C36DD80(v115, &qword_27D9BD798);

LABEL_24:
    v121 = *(v12 + 856);
    v122 = *(v12 + 848);
    v123 = *(v12 + 840);
    v124 = *(v12 + 816);
    v125 = *(v12 + 808);
    v126 = *(v12 + 800);
    v127 = *(v12 + 792);
    v128 = *(v12 + 784);
    v129 = *(v12 + 776);
    v130 = *(v12 + 768);
    v269 = *(v12 + 744);
    v271 = *(v12 + 736);
    v273 = *(v12 + 728);
    v275 = *(v12 + 720);
    v277 = *(v12 + 712);
    v279 = *(v12 + 704);
    v281 = *(v12 + 696);
    v283 = *(v12 + 688);
    v285 = *(v12 + 680);
    v287 = *(v12 + 672);
    v289 = *(v12 + 664);
    v291 = *(v12 + 656);
    v293 = *(v12 + 648);
    v295 = *(v12 + 640);
    v297 = *(v12 + 616);
    v299 = *(v12 + 608);
    sub_22C70CA54();
    v303 = *(v12 + 584);
    v304 = *(v12 + 576);
    v305 = *(v12 + 568);
    v307 = *(v12 + 560);
    v309 = *(v12 + 552);
    v311 = *(v12 + 544);
    v313 = *(v12 + 536);
    v315 = *(v12 + 528);
    v317 = *(v12 + 520);
    v319 = *(v12 + 512);
    v321 = *(v12 + 488);
    v323 = *(v12 + 480);
    v325 = *(v12 + 472);
    v327 = *(v12 + 464);
    v329 = *(v12 + 456);
    v331 = *(v12 + 448);
    v333 = *(v12 + 440);
    sub_22C70C658();

    sub_22C369A24();
    sub_22C372034();

    return v132(v131, v132, v133, v134, v135, v136, v137, v138, a9, a10, a11, a12);
  }

  v140 = v110;

  if (*(v140 + 16))
  {
    v141 = *(v12 + 904);
    v142 = *(v12 + 896);
    v143 = *(v12 + 480);
    v144 = *(v12 + 488);
    v145 = *(v12 + 424);
    v146 = *(v12 + 432);
    v147 = *(v12 + 360);
    sub_22C90906C();
    v352 = swift_allocBox();
    v148 = *(v146 + 80);
    sub_22C36BA94();
    v149 = sub_22C6AFF38();
    v142(v149);
    sub_22C70CD00();
    sub_22C90935C();
    v150 = *(v146 + 8);
    v151 = sub_22C37B220();
    v292 = v152;
    (v152)(v151);
    sub_22C3819EC();
    sub_22C90903C();
    *v144 = v352;
    v153 = *MEMORY[0x277D729E0];
    sub_22C6AFEE4();
    v154(v144);
    v155 = *(v146 + 32);
    v156 = sub_22C36BAFC();
    v157(v156);
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C6AF718();
    v158 = sub_22C38A0DC();
    sub_22C62EC0C(v158, 0xD000000000000013, v159, v160, v161, v162, v163, v164, v257, v258, v260, v262, v264, v266);
  }

  else
  {
    v165 = *(v12 + 432);

    v292 = *(v165 + 8);
  }

  v166 = *(v12 + 856);
  v167 = *(v12 + 848);
  v168 = *(v12 + 840);
  v259 = *(v12 + 816);
  v261 = *(v12 + 808);
  v263 = *(v12 + 800);
  v265 = *(v12 + 792);
  v267 = *(v12 + 784);
  v268 = *(v12 + 776);
  v270 = *(v12 + 768);
  v272 = *(v12 + 744);
  v274 = *(v12 + 736);
  v276 = *(v12 + 728);
  v278 = *(v12 + 720);
  v280 = *(v12 + 712);
  v282 = *(v12 + 704);
  v284 = *(v12 + 696);
  v286 = *(v12 + 688);
  v288 = *(v12 + 680);
  v290 = *(v12 + 672);
  v294 = *(v12 + 664);
  v296 = *(v12 + 656);
  v298 = *(v12 + 648);
  v300 = *(v12 + 640);
  v301 = *(v12 + 616);
  v302 = *(v12 + 608);
  sub_22C70CA54();
  v306 = *(v12 + 584);
  v308 = *(v12 + 576);
  v310 = *(v12 + 568);
  v312 = *(v12 + 560);
  v314 = *(v12 + 552);
  v316 = *(v12 + 544);
  v318 = *(v12 + 536);
  v320 = *(v12 + 528);
  v324 = *(v12 + 520);
  v326 = *(v12 + 512);
  v328 = *(v12 + 488);
  v330 = *(v12 + 480);
  v332 = *(v12 + 472);
  v334 = *(v12 + 464);
  v169 = *(v12 + 456);
  v322 = *(v12 + 448);
  v170 = *(v12 + 416);
  v171 = *(v12 + 424);
  v335 = *(v12 + 440);
  v336 = *(v12 + 408);
  v337 = *(v12 + 400);
  v338 = *(v12 + 376);
  v339 = *(v12 + 368);
  v340 = *(v12 + 360);
  v341 = *(v12 + 336);
  v342 = *(v12 + 328);
  v172 = *(v12 + 304);
  v343 = *(v12 + 296);
  v344 = *(v12 + 272);
  v345 = *(v12 + 248);
  v346 = *(v12 + 240);
  v347 = *(v12 + 232);
  v348 = *(v12 + 208);
  v349 = *(v12 + 200);
  v350 = *(v12 + 192);
  v353 = *(v12 + 184);
  v355 = *(v12 + 176);
  v292();
  sub_22C370920();
  sub_22C70C2F0(v172, v173);
  v174 = sub_22C634768();
  (v292)(v174);
  sub_22C36DD80(v170, &qword_27D9BD798);

  sub_22C6B03C8();
  sub_22C372034();

  return v177(v175, v176, v177, v178, v179, v180, v181, v182, a9, a10, a11, a12);
}

uint64_t sub_22C7021C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = v12[52];
  (*(v12[54] + 8))(v12[57], v12[53]);
  sub_22C36DD80(v13, &qword_27D9BD798);
  v52 = v12[116];
  v14 = v12[107];
  v15 = v12[106];
  v16 = v12[105];
  v17 = v12[102];
  v18 = v12[101];
  v19 = v12[100];
  v20 = v12[99];
  v21 = v12[98];
  v22 = v12[97];
  v23 = v12[96];
  sub_22C70C4FC();
  v33 = v12[57];
  v34 = v12[56];
  v35 = v12[55];
  v36 = v12[52];
  v37 = v12[51];
  sub_22C70CA60();
  v38 = v12[45];
  v39 = v12[42];
  v40 = v12[41];
  v41 = v12[38];
  v42 = v12[37];
  v43 = v12[34];
  v44 = v12[31];
  v45 = v12[30];
  v46 = v12[29];
  v47 = v12[26];
  v48 = v12[25];
  v49 = v12[24];
  v50 = v12[23];
  v51 = v12[22];

  sub_22C375A9C();
  sub_22C372034();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_22C7024F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  v34 = sub_22C9093BC();
  v31 = *(v34 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v34);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - v8;
  v10 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v31 - v12;
  v14 = sub_22C90952C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  sub_22C6AEA50(a1, v9, &qword_27D9BC028, &unk_22C9134B0);
  v20 = sub_22C90941C();
  if (sub_22C370B74(v9, 1, v20) == 1)
  {
    sub_22C36DD80(v9, &qword_27D9BC028);
    sub_22C36C640(v13, 1, 1, v14);
LABEL_4:
    sub_22C36DD80(v13, &qword_27D9BB0C0);
    goto LABEL_5;
  }

  v21 = sub_22C9093DC();
  (*(*(v20 - 8) + 8))(v9, v20);
  sub_22C58B0F8(v21);

  if (sub_22C370B74(v13, 1, v14) == 1)
  {
    goto LABEL_4;
  }

  (*(v15 + 32))(v19, v13, v14);
  v26 = sub_22C7047A4();
  if (v26)
  {
    v27 = v26;
    if (*(v26 + 16))
    {
      sub_22C90906C();
      v32 = swift_allocBox();
      v28 = v31;
      v29 = v34;
      (*(v31 + 16))(v5, v27 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v34);
      sub_22C90935C();
      (*(v28 + 8))(v5, v29);
      sub_22C90903C();
      (*(v15 + 8))(v19, v14);
      v30 = v33;
      *v33 = v32;
      (*(v28 + 104))(v30, *MEMORY[0x277D729E0], v29);
      v22 = v30;
      v24 = 0;
      v23 = v29;
      return sub_22C36C640(v22, v24, 1, v23);
    }

    (*(v15 + 8))(v19, v14);
  }

  else
  {
    (*(v15 + 8))(v19, v14);
  }

LABEL_5:
  v22 = v33;
  v23 = v34;
  v24 = 1;
  return sub_22C36C640(v22, v24, 1, v23);
}

uint64_t sub_22C702938@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v280 = a3;
  v277 = a2;
  v281 = sub_22C90919C();
  v246 = *(v281 - 8);
  v4 = *(v246 + 64);
  MEMORY[0x28223BE20](v281);
  v245 = &v240 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C3A5908(&qword_27D9BF810, &qword_22C923140);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v258 = &v240 - v8;
  v255 = sub_22C900C1C();
  v254 = *(v255 - 8);
  v9 = *(v254 + 64);
  MEMORY[0x28223BE20](v255);
  v256 = &v240 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = sub_22C900B1C();
  v11 = *(*(v260 - 8) + 64);
  MEMORY[0x28223BE20](v260);
  v259 = &v240 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C90931C();
  v286 = *(v13 - 8);
  v14 = *(v286 + 64);
  MEMORY[0x28223BE20](v13);
  v250 = &v240 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v248 = &v240 - v18;
  v262 = sub_22C9063DC();
  v261 = *(v262 - 8);
  v19 = *(v261 + 64);
  v20 = MEMORY[0x28223BE20](v262);
  v251 = &v240 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v243 = &v240 - v23;
  MEMORY[0x28223BE20](v22);
  v252 = &v240 - v24;
  v272 = sub_22C90906C();
  v271 = *(v272 - 8);
  v25 = *(v271 + 64);
  MEMORY[0x28223BE20](v272);
  v266 = &v240 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v275 = type metadata accessor for TranscriptValueFetcher(0);
  v27 = *(*(v275 - 8) + 64);
  MEMORY[0x28223BE20](v275);
  v274 = &v240 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22C3A5908(&qword_27D9BF610, &qword_22C922B50);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v276 = (&v240 - v31);
  v32 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v282 = (&v240 - v34);
  v35 = sub_22C901FAC();
  v288 = *(v35 - 8);
  v289 = v35;
  v36 = *(v288 + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v244 = &v240 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v242 = &v240 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v247 = &v240 - v42;
  MEMORY[0x28223BE20](v41);
  v287 = &v240 - v43;
  v44 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v290 = &v240 - v46;
  v47 = sub_22C90952C();
  v291 = *(v47 - 8);
  v292 = v47;
  v48 = *(v291 + 64);
  MEMORY[0x28223BE20](v47);
  v293 = (&v240 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = sub_22C9093BC();
  v51 = *(v50 - 8);
  v52 = v51[8];
  v53 = MEMORY[0x28223BE20](v50);
  v265 = &v240 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x28223BE20](v53);
  v264 = &v240 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v257 = (&v240 - v58);
  v59 = MEMORY[0x28223BE20](v57);
  v269 = &v240 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v268 = &v240 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v278 = &v240 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v67 = &v240 - v66;
  MEMORY[0x28223BE20](v65);
  v69 = (&v240 - v68);
  v70 = swift_allocBox();
  v72 = v71;
  *v71 = sub_22C90825C();
  v72[1] = v73;
  v74 = *(v286 + 104);
  v249 = *MEMORY[0x277D729B8];
  v270 = v13;
  v74(v72);
  *v69 = v70;
  v76 = v51 + 13;
  v75 = v51[13];
  v263 = *MEMORY[0x277D72A58];
  v294 = v75;
  v75(v69);
  v273 = v51;
  v78 = v51[4];
  v77 = v51 + 4;
  v295 = v50;
  v285 = v78;
  v78(v67, v69, v50);
  v79 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v296 = v79;
  sub_22C62EC0C(v67, 1701667182, 0xE400000000000000, isUniquelyReferenced_nonNull_native, v81, v82, v83, v84, v240, v241, v242, v243, v244, v245);
  v85 = v296;
  v283 = a1;
  v86 = sub_22C90826C();
  v87 = MEMORY[0x277D72D28];
  v279 = v76;
  v253 = v67;
  if (v88)
  {
    v284 = v86;
    sub_22C9090BC();
    v267 = swift_allocBox();
    v89 = swift_allocObject();
    v89[2] = 0xD000000000000028;
    v89[3] = 0x800000022C92EB40;
    v89[4] = 0xD000000000000012;
    v89[5] = 0x800000022C933990;
    v90 = v292;
    v91 = v293;
    *v293 = v89;
    (*(v291 + 104))(v91, *v87, v90);
    v92 = sub_22C90993C();
    sub_22C36C640(v290, 1, 1, v92);
    v93 = v295;
    sub_22C90909C();
    *v69 = v267;
    v294(v69, *MEMORY[0x277D729E8], v93);
    v285(v67, v69, v93);
    v94 = swift_isUniquelyReferenced_nonNull_native();
    v296 = v85;
    sub_22C62EC0C(v67, 1701869940, 0xE400000000000000, v94, v95, v96, v97, v98, v240, v241, v242, v243, v244, v245);
    v284 = v296;
  }

  else
  {
    v284 = v85;
  }

  v99 = v282;
  sub_22C90823C();
  v100 = v289;
  v101 = sub_22C370B74(v99, 1, v289);
  v102 = v288;
  if (v101 == 1)
  {
    v103 = v99;
    v104 = &qword_27D9BC030;
LABEL_8:
    sub_22C36DD80(v103, v104);
    v110 = v290;
    v111 = v293;
    v112 = v280;
LABEL_9:
    v113 = swift_allocBox();
    v114 = swift_allocObject();
    v114[2] = 0xD000000000000028;
    v114[3] = 0x800000022C92EB40;
    v114[4] = 0xD000000000000015;
    v114[5] = 0x800000022C933910;
    *v111 = v114;
    (*(v291 + 104))(v111, *MEMORY[0x277D72D28], v292);
    v115 = sub_22C90993C();
    sub_22C36C640(v110, 1, 1, v115);
    sub_22C90917C();
    *v112 = v113;
    v116 = v295;
    v294(v112, *MEMORY[0x277D72A38], v295);
    return sub_22C36C640(v112, 0, 1, v116);
  }

  v283 = v77;
  v105 = v287;
  (*(v288 + 32))(v287, v99, v100);
  v106 = v274;
  sub_22C90878C();
  sub_22C908C5C();
  sub_22C70C380(&qword_2814357B0, MEMORY[0x277D1C338]);
  *(v106 + *(v275 + 20)) = sub_22C909F0C();
  v107 = v276;
  sub_22C729D78(v105, v276);
  sub_22C70C2F0(v106, type metadata accessor for TranscriptValueFetcher);
  v108 = v100;
  v109 = sub_22C9025EC();
  if (sub_22C370B74(v107, 1, v109) == 1)
  {
    (*(v102 + 8))(v287, v108);
    v104 = &qword_27D9BF610;
    v103 = v107;
    goto LABEL_8;
  }

  v241 = v69;
  v118 = v268;
  sub_22C90207C();
  (*(*(v109 - 8) + 8))(v107, v109);
  v119 = v278;
  v120 = v295;
  v285(v278, v118, v295);
  v121 = v273;
  v122 = v273 + 2;
  v123 = v269;
  v282 = v273[2];
  v282(v269, v119, v120);
  v124 = v121[11];
  if (v124(v123, v120) == *MEMORY[0x277D729E0])
  {
    (v121[12])(v123, v295);
    v125 = *v123;
    v126 = swift_projectBox();
    v127 = v266;
    (*(v271 + 16))(v266, v126, v272);

    v128 = *(sub_22C90905C() + 16);

    v129 = v270;
    if (v128 >= 2)
    {

      v130 = v252;
      sub_22C903F8C();
      v131 = v288;
      v132 = v247;
      v133 = v289;
      (*(v288 + 16))(v247, v287, v289);
      v134 = sub_22C9063CC();
      v135 = sub_22C90AADC();
      if (os_log_type_enabled(v134, v135))
      {
        v136 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v296 = v137;
        *v136 = 136315138;
        sub_22C70C380(&qword_27D9BAA48, MEMORY[0x277D1C338]);
        v138 = sub_22C90B47C();
        v139 = v132;
        v141 = v140;
        v142 = *(v131 + 8);
        v142(v139, v133);
        v143 = sub_22C36F9F4(v138, v141, &v296);

        *(v136 + 4) = v143;
        _os_log_impl(&dword_22C366000, v134, v135, "Collection with multiple elements passed into search call as hydration context: %s", v136, 0xCu);
        sub_22C36FF94(v137);
        MEMORY[0x2318B9880](v137, -1, -1);
        MEMORY[0x2318B9880](v136, -1, -1);

        v144 = *(v261 + 8);
        v145 = &v283;
LABEL_23:
        v175 = *(v145 - 32);
LABEL_25:
        v144(v175, v262);
        type metadata accessor for InterpreterError();
        sub_22C70C380(&qword_27D9BAA40, type metadata accessor for InterpreterError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (*(v271 + 8))(v266, v272);
        (v273[1])(v278, v295);
        return (v142)(v287, v133);
      }

      goto LABEL_24;
    }

    v277 = v122;
    v165 = sub_22C90905C();
    v166 = v248;
    sub_22C58B008(v165, v248);

    if (sub_22C370B74(v166, 1, v295) == 1)
    {

      sub_22C36DD80(v166, &qword_27D9BB908);
      v130 = v243;
      sub_22C903F8C();
      v131 = v288;
      v132 = v242;
      v133 = v289;
      (*(v288 + 16))(v242, v287, v289);
      v134 = sub_22C9063CC();
      v167 = sub_22C90AADC();
      if (os_log_type_enabled(v134, v167))
      {
        v168 = swift_slowAlloc();
        v169 = swift_slowAlloc();
        v296 = v169;
        *v168 = 136315138;
        sub_22C70C380(&qword_27D9BAA48, MEMORY[0x277D1C338]);
        v170 = sub_22C90B47C();
        v171 = v132;
        v173 = v172;
        v142 = *(v131 + 8);
        v142(v171, v133);
        v174 = sub_22C36F9F4(v170, v173, &v296);

        *(v168 + 4) = v174;
        _os_log_impl(&dword_22C366000, v134, v167, "Empty collection passed into search call as hydration context: %s", v168, 0xCu);
        sub_22C36FF94(v169);
        MEMORY[0x2318B9880](v169, -1, -1);
        MEMORY[0x2318B9880](v168, -1, -1);

        v144 = *(v261 + 8);
        v145 = &v275;
        goto LABEL_23;
      }

LABEL_24:

      v176 = *(v131 + 8);
      v176(v132, v133);
      v142 = v176;
      v144 = *(v261 + 8);
      v175 = v130;
      goto LABEL_25;
    }

    (*(v271 + 8))(v127, v272);
    v121 = v273;
    v238 = v166;
    v239 = v295;
    v276 = v273[1];
    (v276)(v119, v295);
    v146 = v119;
    v285(v119, v238, v239);
  }

  else
  {
    v146 = v119;
    v276 = v121[1];
    v277 = v122;
    (v276)(v123, v295);
    v129 = v270;
  }

  v147 = v265;
  v148 = v264;
  v149 = v295;
  v282(v264, v146, v295);
  v150 = v124(v148, v149);
  if (v150 == v263)
  {
    (v121[12])(v148, v295);
    v151 = *v148;
    v152 = swift_projectBox();
    v153 = v286;
    v154 = v250;
    (*(v286 + 16))(v250, v152, v129);
    v155 = (*(v153 + 88))(v154, v129);
    if (v155 == v249)
    {
      (*(v153 + 96))(v154, v129);
      v156 = *v154;
      v157 = *(v154 + 1);

      v158 = swift_allocBox();
      (*(v254 + 104))(v256, *MEMORY[0x277D36F70], v255);
      v159 = sub_22C90084C();
      sub_22C36C640(v258, 1, 1, v159);
      sub_22C900B0C();
      v160 = 0x800000022C92EB40;
      sub_22C70C380(&qword_27D9BF818, MEMORY[0x277D36F08]);
      sub_22C90916C();
      v161 = v257;
      *v257 = v158;
      LODWORD(v286) = *MEMORY[0x277D72A38];
      v110 = v290;
      v162 = v294;
LABEL_29:
      v195 = v295;
      v162(v161, v286, v295);
      v290 = "searchAnswerValue";
      v274 = swift_allocBox();
      v272 = v196;
      v197 = swift_allocObject();
      v197[2] = 0xD000000000000028;
      v197[3] = v160;
      v275 = 0xD000000000000010;
      v197[4] = 0xD000000000000010;
      v197[5] = 0x800000022C933970;
      v198 = v292;
      v199 = v293;
      *v293 = v197;
      (*(v291 + 104))(v199, *MEMORY[0x277D72D28], v198);
      sub_22C3A5908(&qword_27D9BF820, &qword_22C923148);
      v200 = (sub_22C3A5908(&qword_27D9BF828, &unk_22C923150) - 8);
      v201 = *(*v200 + 72);
      v202 = (*(*v200 + 80) + 32) & ~*(*v200 + 80);
      v203 = swift_allocObject();
      *(v203 + 16) = xmmword_22C90F800;
      v204 = (v203 + v202);
      v205 = v200[14];
      *v204 = 0x797469746E65;
      v204[1] = 0xE600000000000000;
      v282((v203 + v202 + v205), v161, v195);
      sub_22C909F0C();
      v206 = sub_22C90993C();
      sub_22C36C640(v110, 1, 1, v206);
      sub_22C90917C();
      v207 = v241;
      *v241 = v274;
      v294(v207, v286, v195);
      v208 = v253;
      v285(v253, v207, v195);
      v209 = v284;
      v210 = swift_isUniquelyReferenced_nonNull_native();
      v296 = v209;
      sub_22C62EC0C(v208, v275, v290 | 0x8000000000000000, v210, v211, v212, v213, v214, v240, v241, v242, v243, v244, v245);
      v215 = v276;
      (v276)(v161, v195);
      v215(v278, v195);
      (*(v288 + 8))(v287, v289);
      v112 = v280;
      v111 = v293;
      goto LABEL_9;
    }

    (*(v153 + 8))(v154, v129);

    v146 = v278;
    v164 = v276;
    v147 = v265;
  }

  else
  {
    v163 = v148;
    v164 = v276;
    (v276)(v163, v295);
  }

  v177 = v295;
  v282(v147, v146, v295);
  v178 = v124(v147, v177);
  v179 = *MEMORY[0x277D72A38];
  v276 = v164;
  if (v178 == v179)
  {
    LODWORD(v286) = v178;
    v180 = v147;
    v181 = v295;
    (v164)(v180, v295);
    (*(v254 + 104))(v256, *MEMORY[0x277D36F68], v255);
    v182 = sub_22C90084C();
    sub_22C36C640(v258, 1, 1, v182);
    sub_22C900B0C();
    v275 = 0x800000022C92EB40;
    sub_22C70C380(&qword_27D9BF818, MEMORY[0x277D36F08]);
    v183 = v245;
    sub_22C90916C();
    v184 = sub_22C90914C();
    v185 = v241;
    v282(v241, v146, v181);
    v186 = swift_isUniquelyReferenced_nonNull_native();
    v296 = v184;
    sub_22C62EC0C(v185, 0xD000000000000011, 0x800000022C933930, v186, v187, v188, v189, v190, v240, v241, v242, v243, v244, v245);
    v272 = v296;
    v191 = v281;
    v274 = swift_allocBox();
    sub_22C9090AC();
    sub_22C90908C();
    v192 = sub_22C90993C();
    v193 = v290;
    sub_22C36C640(v290, 1, 1, v192);
    v162 = v294;
    v110 = v193;
    sub_22C90917C();
    v194 = v183;
    v160 = v275;
    (*(v246 + 8))(v194, v191);
    v161 = v257;
    *v257 = v274;
    goto LABEL_29;
  }

  v216 = (v121 + 1);
  (v164)(v147, v295);
  v217 = v251;
  sub_22C903F8C();
  v218 = v288;
  v219 = v244;
  v220 = v289;
  (*(v288 + 16))(v244, v287, v289);
  v221 = sub_22C9063CC();
  v222 = sub_22C90AADC();
  if (os_log_type_enabled(v221, v222))
  {
    v223 = v219;
    v224 = swift_slowAlloc();
    v225 = swift_slowAlloc();
    v294 = v216;
    v226 = v225;
    v296 = v225;
    *v224 = 136315138;
    sub_22C70C380(&qword_27D9BAA48, MEMORY[0x277D1C338]);
    v227 = v223;
    v228 = sub_22C90B47C();
    v230 = v229;
    v231 = *(v218 + 8);
    v231(v227, v289);
    v232 = sub_22C36F9F4(v228, v230, &v296);
    v233 = v278;

    *(v224 + 4) = v232;
    _os_log_impl(&dword_22C366000, v221, v222, "Non-string and non-entity value passed into search call as hydration context: %s", v224, 0xCu);
    sub_22C36FF94(v226);
    v234 = v226;
    v220 = v289;
    MEMORY[0x2318B9880](v234, -1, -1);
    v235 = v224;
    v236 = v233;
    v237 = v276;
    MEMORY[0x2318B9880](v235, -1, -1);

    (*(v261 + 8))(v251, v262);
  }

  else
  {

    v231 = *(v218 + 8);
    v231(v219, v220);
    (*(v261 + 8))(v217, v262);
    v236 = v278;
    v237 = v276;
  }

  type metadata accessor for InterpreterError();
  sub_22C70C380(&qword_27D9BAA40, type metadata accessor for InterpreterError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v237(v236, v295);
  return (v231)(v287, v220);
}

uint64_t sub_22C7047A4()
{
  v0 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v124 = &v97[-v2];
  v3 = sub_22C9094EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v97[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v125 = &v97[-v9];
  v10 = sub_22C90952C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v97[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v97[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v97[-v19];
  v21 = swift_allocObject();
  v21[2] = 0xD000000000000028;
  v21[3] = 0x800000022C92EB40;
  v21[4] = 0xD00000000000001ALL;
  v21[5] = 0x800000022C9339B0;
  *v20 = v21;
  v22 = *MEMORY[0x277D72D28];
  (*(v11 + 104))(v20, *MEMORY[0x277D72D28], v10);
  TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v18);
  v23 = (*(v11 + 88))(v18, v10);
  if (v23 != *MEMORY[0x277D72D50])
  {
    if (v23 == v22)
    {
      (*(v11 + 96))(v18, v10);
      v120 = *v18;
      v65 = v120[3];
      v112 = v120[2];
      v109 = v65;
      v66 = v120[4];
      v116 = v120[5];
      v117 = v66;
      sub_22C3A5908(&qword_27D9BACF0, &unk_22C90D590);
      v114 = sub_22C9093BC();
      v125 = *(v114 - 8);
      v67 = *(v125 + 9);
      v119 = (v125[80] + 32) & ~v125[80];
      v113 = swift_allocObject();
      *(v113 + 16) = xmmword_22C90F800;
      sub_22C90919C();
      v118 = swift_allocBox();
      v115 = v68;
      (*(v11 + 16))(v15, v20, v10);
      sub_22C3A5908(&qword_27D9BF820, &qword_22C923148);
      v69 = (sub_22C3A5908(&qword_27D9BF828, &unk_22C923150) - 8);
      v70 = *v69;
      v110 = *(*v69 + 72);
      v71 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v72 = swift_allocObject();
      v111 = v72;
      *(v72 + 16) = xmmword_22C90F870;
      v122 = v10;
      v73 = (v72 + v71);
      v74 = v69[14];
      *v73 = 0x6449656C646E7562;
      v73[1] = 0xE800000000000000;
      v75 = sub_22C90931C();
      v121 = v15;
      v76 = v75;
      v77 = swift_allocBox();
      v123 = v20;
      v78 = v77;
      *v79 = v112;
      v79[1] = v65;
      v80 = *MEMORY[0x277D729B8];
      v81 = *(v76 - 8);
      v112 = v11;
      v82 = *(v81 + 104);
      v82(v79, v80, v76);
      *(v73 + v74) = v78;
      v83 = *MEMORY[0x277D72A58];
      v84 = *(v125 + 13);
      v125 += 104;
      v108 = v84;
      v85 = v73 + v74;
      v86 = v114;
      v84(v85, v83, v114);
      v87 = (v73 + v110);
      v88 = v69[14];
      *v87 = 0x656D614E65707974;
      v87[1] = 0xE800000000000000;
      v89 = swift_allocBox();
      v90 = v116;
      *v91 = v117;
      v91[1] = v90;
      v82(v91, v80, v76);
      v46 = v113;
      *(v87 + v88) = v89;
      v92 = v108;
      v108(v87 + v88, v83, v86);

      sub_22C909F0C();
      v93 = sub_22C90993C();
      sub_22C36C640(v124, 1, 1, v93);
      sub_22C90917C();
      v94 = v119;
      *(v46 + v119) = v118;
      v92(v46 + v94, *MEMORY[0x277D72A38], v86);
      (*(v112 + 8))(v123, v122);
      goto LABEL_6;
    }

    v95 = *(v11 + 8);
    v95(v20, v10);
    v95(v18, v10);
    return 0;
  }

  (*(v11 + 96))(v18, v10);
  v120 = *v18;
  v24 = swift_projectBox();
  v25 = v4;
  v26 = *(v4 + 16);
  v27 = v125;
  v26(v125, v24, v3);
  v26(v8, v27, v3);
  v28 = (*(v25 + 88))(v8, v3);
  v31 = *(v25 + 8);
  v30 = v25 + 8;
  v29 = v31;
  if (v28 != *MEMORY[0x277D72CC0])
  {
    v29(v125, v3);
    (*(v11 + 8))(v20, v10);
    v29(v8, v3);

    return 0;
  }

  v110 = 0x800000022C9339D0;
  v116 = 0x800000022C933A00;
  v29(v8, v3);
  sub_22C3A5908(&qword_27D9BACF0, &unk_22C90D590);
  v118 = v29;
  v119 = sub_22C9093BC();
  v102 = *(v119 - 8);
  v117 = *(v102 + 72);
  v32 = (*(v102 + 80) + 32) & ~*(v102 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_22C90F870;
  v111 = (v33 + v32);
  v114 = sub_22C90919C();
  v34 = swift_allocBox();
  v108 = v35;
  v109 = v34;
  v36 = *(v11 + 16);
  v112 = v11 + 16;
  v113 = v36;
  v36(v15, v20, v10);
  v106 = sub_22C3A5908(&qword_27D9BF820, &qword_22C923148);
  v37 = sub_22C3A5908(&qword_27D9BF828, &unk_22C923150);
  v123 = v20;
  v38 = v37 - 8;
  v39 = *(v37 - 8);
  v107 = *(v39 + 72);
  v105 = *(v39 + 80);
  v40 = (v105 + 32) & ~v105;
  v103 = v40;
  v41 = swift_allocObject();
  v115 = v30;
  v104 = xmmword_22C90F800;
  *(v41 + 16) = xmmword_22C90F800;
  v42 = (v41 + v40);
  v122 = v10;
  v43 = *(v38 + 56);
  *v42 = 0x6449656C646E7562;
  *(v42 + 1) = 0xE800000000000000;
  v44 = sub_22C90931C();
  v45 = swift_allocBox();
  v121 = v15;
  v46 = v33;
  v47 = v45;
  v48 = v110;
  *v49 = 0xD00000000000002BLL;
  v49[1] = v48;
  v100 = *MEMORY[0x277D729B8];
  v50 = *(v44 - 8);
  v99 = *(v50 + 104);
  v110 = v3;
  v101 = v50 + 104;
  v99(v49);
  *&v42[v43] = v47;
  v98 = *MEMORY[0x277D72A58];
  v51 = *(v102 + 104);
  v51(&v42[v43]);
  sub_22C909F0C();
  v102 = sub_22C90993C();
  sub_22C36C640(v124, 1, 1, v102);
  v52 = v121;
  sub_22C90917C();
  v53 = v111;
  *v111 = v109;
  LODWORD(v109) = *MEMORY[0x277D72A38];
  v51(v53);
  v114 = swift_allocBox();
  v108 = v54;
  (v113)(v52, v123, v122);
  v55 = v103;
  v56 = swift_allocObject();
  *(v56 + 16) = v104;
  v57 = (v56 + v55);
  v58 = *(v38 + 56);
  *v57 = 0x6449656C646E7562;
  v57[1] = 0xE800000000000000;
  v59 = swift_allocBox();
  v60 = v116;
  *v61 = 0xD000000000000023;
  v61[1] = v60;
  (v99)(v61, v100, v44);
  *(v57 + v58) = v59;
  v62 = v57 + v58;
  v63 = v119;
  (v51)(v62, v98, v119);
  sub_22C909F0C();
  sub_22C36C640(v124, 1, 1, v102);
  sub_22C90917C();
  v64 = v117;
  *&v53[v117] = v114;
  (v51)(&v53[v64], v109, v63);
  v118(v125, v110);
  (*(v11 + 8))(v123, v122);
LABEL_6:

  return v46;
}

uint64_t sub_22C70541C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v42 = sub_22C901FAC();
  v37 = *(v42 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C9089DC();
  v45 = *(v6 - 8);
  v7 = *(v45 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_22C906A3C();
  v35 = *(v44 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v44);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C908A0C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v51 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22C9087DC();
  v18 = *(v17 + 16);
  if (v18)
  {
    v34[0] = a2;
    v34[1] = v2;
    v50 = v17 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v48 = v14 + 8;
    v49 = v14 + 16;
    v47 = (v45 + 88);
    v46 = *MEMORY[0x277D1E720];
    v38 = (v45 + 96);
    v39 = (v45 + 8);
    v45 = v35 + 32;
    v36 = v14;
    v37 += 8;
    v35 += 8;
    v19 = v12;
    a2 = v17;
    v40 = v17;
    while (v18 <= *(a2 + 16))
    {
      --v18;
      v20 = v51;
      (*(v14 + 16))(v51, v50 + *(v14 + 72) * v18, v13);
      sub_22C9089EC();
      (*(v14 + 8))(v20, v13);
      v21 = (*v47)(v9, v6);
      if (v21 == v46)
      {
        v22 = v13;
        v23 = v6;
        (*v38)(v9, v6);
        v24 = v19;
        v25 = *v45;
        v26 = v9;
        v27 = v9;
        v28 = v44;
        (*v45)(v24, v27, v44);
        v29 = v41;
        sub_22C9068FC();
        v30 = sub_22C901F6C();
        (*v37)(v29, v42);
        if (v30)
        {

          a2 = v34[0];
          v25(v34[0], v24, v28);
          v31 = 0;
          v32 = v28;
          return sub_22C36C640(a2, v31, 1, v32);
        }

        (*v35)(v24, v28);
        v6 = v23;
        v19 = v24;
        v9 = v26;
        v13 = v22;
        v14 = v36;
        a2 = v40;
        if (!v18)
        {
          goto LABEL_9;
        }
      }

      else
      {
        (*v39)(v9, v6);
        if (!v18)
        {
LABEL_9:

          v31 = 1;
          a2 = v34[0];
          goto LABEL_10;
        }
      }
    }

    __break(1u);
  }

  v31 = 1;
LABEL_10:
  v32 = v44;
  return sub_22C36C640(a2, v31, 1, v32);
}

uint64_t sub_22C7058B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v115 = a3;
  v5 = sub_22C90769C();
  v6 = *(v5 - 8);
  v113 = v5;
  v114 = v6;
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v109 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v94 - v10;
  v12 = sub_22C908A7C();
  v101 = *(v12 - 8);
  v102 = v12;
  v13 = *(v101 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v99 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v100 = &v94 - v16;
  v17 = sub_22C9063DC();
  v111 = *(v17 - 8);
  v112 = v17;
  v18 = *(v111 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v96 = &v94 - v22;
  v105 = sub_22C9099FC();
  v98 = *(v105 - 8);
  v23 = *(v98 + 64);
  v24 = MEMORY[0x28223BE20](v105);
  v97 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v104 = &v94 - v26;
  v27 = sub_22C908DAC();
  v107 = *(v27 - 8);
  v108 = v27;
  v28 = *(v107 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v95 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v106 = &v94 - v31;
  v110 = sub_22C908EAC();
  v32 = *(v110 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v110);
  v35 = &v94 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v39 = &v94 - v38;
  v40 = a1;
  v103 = a2;
  sub_22C908ADC();
  v41 = sub_22C908ABC();
  if (sub_22C370B74(v39, 1, v41) == 1)
  {
    sub_22C903F8C();
    v42 = v114[2];
    v42(v11, v40, v113);
    v43 = sub_22C9063CC();
    v44 = sub_22C90AADC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v116 = v46;
      *v45 = 136315138;
      v47 = v11;
      v110 = v21;
      v48 = v11;
      v49 = v113;
      v42(v109, v47, v113);
      v50 = sub_22C90A1AC();
      v52 = v51;
      (v114[1])(v48, v49);
      v53 = sub_22C36F9F4(v50, v52, &v116);

      *(v45 + 4) = v53;
      _os_log_impl(&dword_22C366000, v43, v44, "no tool found for %s", v45, 0xCu);
      sub_22C36FF94(v46);
      MEMORY[0x2318B9880](v46, -1, -1);
      MEMORY[0x2318B9880](v45, -1, -1);

      result = (*(v111 + 8))(v110, v112);
    }

    else
    {

      (v114[1])(v11, v113);
      result = (*(v111 + 8))(v21, v112);
    }

    v62 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v55 = *(v41 - 8);
  v56 = (*(v55 + 88))(v39, v41);
  if (v56 == *MEMORY[0x277D1E8E0] || v56 == *MEMORY[0x277D1E8C8])
  {
    (*(v55 + 96))(v39, v41);
    v58 = *(v32 + 32);
    v57 = v32 + 32;
    v59 = v110;
    v58(v35, v39, v110);
    sub_22C3A5908(&qword_27D9BABC0, &unk_22C90D460);
    v60 = *(v57 + 40);
    v61 = (*(v57 + 48) + 32) & ~*(v57 + 48);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_22C90F800;
    result = (v58)(v62 + v61, v35, v59);
LABEL_9:
    *v115 = v62;
    return result;
  }

  if (v56 == *MEMORY[0x277D1E8D0])
  {
    (*(v55 + 96))(v39, v41);
    v63 = v106;
    (*(v107 + 32))(v106, v39, v108);
    v64 = v104;
    sub_22C908D7C();
    sub_22C9099DC();
    v65 = *(v98 + 8);
    v66 = v105;
    v65(v64, v105);
    v67 = v97;
    sub_22C908D7C();
    sub_22C9099EC();
    v65(v67, v66);
    v68 = v103;
    v69 = sub_22C908A9C();

    if (v69)
    {
      MEMORY[0x28223BE20](v70);
      *(&v94 - 2) = v68;
      v62 = sub_22C47B8F0(sub_22C6AE7D8, (&v94 - 4), v69);
      result = (*(v107 + 8))(v63, v108);
    }

    else
    {
      v80 = v96;
      sub_22C903F8C();
      v81 = v107;
      v82 = v108;
      v83 = v95;
      (*(v107 + 16))(v95, v63, v108);
      v84 = sub_22C9063CC();
      v85 = sub_22C90AADC();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = v81;
        v87 = v83;
        v88 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v116 = v114;
        *v88 = 136315138;
        sub_22C908D7C();
        v113 = sub_22C90A1AC();
        v90 = v89;
        v91 = *(v86 + 8);
        v91(v87, v108);
        v92 = sub_22C36F9F4(v113, v90, &v116);
        v82 = v108;

        *(v88 + 4) = v92;
        _os_log_impl(&dword_22C366000, v84, v85, "no tools found for schema %s", v88, 0xCu);
        v93 = v114;
        sub_22C36FF94(v114);
        MEMORY[0x2318B9880](v93, -1, -1);
        MEMORY[0x2318B9880](v88, -1, -1);
      }

      else
      {

        v91 = *(v81 + 8);
        v91(v83, v82);
      }

      (*(v111 + 8))(v80, v112);
      result = (v91)(v106, v82);
      v62 = MEMORY[0x277D84F90];
    }

    goto LABEL_9;
  }

  if (v56 == *MEMORY[0x277D1E8D8])
  {
    (*(v55 + 96))(v39, v41);
    v72 = v100;
    v71 = v101;
    v73 = v102;
    (*(v101 + 32))(v100, v39, v102);
    v74 = v99;
    (*(v71 + 16))(v99, v72, v73);
    if ((*(v71 + 88))(v74, v73) == *MEMORY[0x277D1E8B8])
    {
      (*(v71 + 96))(v74, v73);
      v76 = *(v32 + 32);
      v75 = v32 + 32;
      v77 = v110;
      v76(v35, v74, v110);
      sub_22C3A5908(&qword_27D9BABC0, &unk_22C90D460);
      v78 = *(v75 + 40);
      v79 = (*(v75 + 48) + 32) & ~*(v75 + 48);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_22C90F800;
      v76((v62 + v79), v35, v77);
      result = (*(v71 + 8))(v72, v73);
      goto LABEL_9;
    }
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t sub_22C70643C()
{
  v31 = sub_22C90637C();
  v29 = *(v31 - 1);
  v0 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22C90634C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C90636C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90365C();
  v13 = sub_22C90635C();
  sub_22C90638C();
  v30 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v26 = v9;
    v27 = v8;
    v28 = v3;

    sub_22C9063BC();

    v14 = v29;
    v15 = v31;
    if ((*(v29 + 88))(v2, v31) == *MEMORY[0x277D85B00])
    {
      v16 = 0;
      v17 = 0;
      v31 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v2, v15);
      v31 = "%s";
      v17 = 2;
      v16 = 1;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = v20;
    *v19 = v17;
    *(v19 + 1) = v16;
    *(v19 + 2) = 2080;
    sub_22C90366C();
    v21 = sub_22C90AF7C();
    v23 = sub_22C36F9F4(v21, v22, &v32);

    *(v19 + 4) = v23;
    v24 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v13, v30, v24, "ToolResolver.run", v31, v19, 0xCu);
    sub_22C36FF94(v20);
    MEMORY[0x2318B9880](v20, -1, -1);
    MEMORY[0x2318B9880](v19, -1, -1);

    (*(v4 + 8))(v7, v28);
    return (*(v26 + 8))(v12, v27);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_22C7067E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22C90880C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90878C();
  v7 = sub_22C9087DC();
  (*(v3 + 8))(v6, v2);
  v10[1] = v7;
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C50B118(&qword_27D9BA9F8, &qword_27D9BA9F0, &qword_22C912420);
  v8 = sub_22C907E6C();

  *a1 = v8;
  return result;
}

uint64_t sub_22C706944@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v210 = a1;
  v178 = a2;
  v192 = sub_22C90952C();
  v191 = *(v192 - 8);
  v2 = *(v191 + 64);
  v3 = MEMORY[0x28223BE20](v192);
  v172 = &v165 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v208 = &v165 - v6;
  MEMORY[0x28223BE20](v5);
  v206 = &v165 - v7;
  v176 = sub_22C9063DC();
  v175 = *(v176 - 8);
  v8 = *(v175 + 64);
  v9 = MEMORY[0x28223BE20](v176);
  v174 = &v165 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v207 = &v165 - v11;
  v202 = sub_22C908EEC();
  v180 = *(v202 - 8);
  v12 = *(v180 + 64);
  v13 = MEMORY[0x28223BE20](v202);
  v205 = &v165 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v204 = &v165 - v15;
  v16 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v177 = &v165 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v179 = &v165 - v20;
  v184 = sub_22C908EAC();
  v203 = *(v184 - 8);
  v21 = *(v203 + 64);
  v22 = MEMORY[0x28223BE20](v184);
  v173 = &v165 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v185 = &v165 - v25;
  MEMORY[0x28223BE20](v24);
  v201 = &v165 - v26;
  v27 = sub_22C90077C();
  v197 = *(v27 - 8);
  v198 = v27;
  v28 = *(v197 + 64);
  MEMORY[0x28223BE20](v27);
  v196 = &v165 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22C908F6C();
  v194 = *(v30 - 8);
  v195 = v30;
  v31 = *(v194 + 64);
  MEMORY[0x28223BE20](v30);
  v190 = &v165 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_22C908D3C();
  v188 = *(v189 - 8);
  v33 = v188[8];
  MEMORY[0x28223BE20](v189);
  *&v187 = &v165 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_22C90972C();
  v182 = *(v183 - 1);
  v35 = *(v182 + 64);
  MEMORY[0x28223BE20](v183);
  v181 = (&v165 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = sub_22C3A5908(&qword_27D9BE068, &qword_22C91CE40);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v40 = &v165 - v39;
  v41 = sub_22C9068CC();
  v186 = *(v41 - 8);
  v42 = *(v186 + 64);
  MEMORY[0x28223BE20](v41);
  v44 = &v165 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_22C908F4C();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v165 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v48);
  v53 = &v165 - v52;
  MEMORY[0x28223BE20](v51);
  v55 = &v165 - v54;
  v56 = v200;
  result = sub_22C90877C();
  if (!v56)
  {
    v200 = v50;
    v168 = v53;
    v169 = v46;
    v171 = 0;
    v193 = v55;
    v167 = v41;
    v170 = v45;
    sub_22C9068AC();
    v58 = sub_22C90212C();
    v59 = sub_22C370B74(v40, 1, v58);
    v166 = v44;
    v60 = v192;
    if (v59 == 1)
    {
      sub_22C36DD80(v40, &qword_27D9BE068);
      sub_22C908F3C();
    }

    else
    {
      v61 = sub_22C90211C();
      v63 = v62;
      (*(*(v58 - 8) + 8))(v40, v58);
      v64 = v181;
      *v181 = v61;
      v64[1] = v63;
      v65 = v182;
      v66 = v183;
      (*(v182 + 104))(v64, *MEMORY[0x277D730E0], v183);
      sub_22C908F1C();
      (*(v65 + 8))(v64, v66);
    }

    v67 = v187;
    swift_getKeyPath();
    sub_22C3A5908(&qword_27D9BEC40, &unk_22C920500);
    v68 = sub_22C908D4C();
    v69 = *(v68 - 8);
    v70 = *(v69 + 72);
    v71 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v72 = swift_allocObject();
    v187 = xmmword_22C90F800;
    *(v72 + 16) = xmmword_22C90F800;
    (*(v69 + 104))(v72 + v71, *MEMORY[0x277D720D8], v68);
    sub_22C5EA174();
    *v67 = v73;
    v74 = v188;
    v75 = v189;
    (v188[13])(v67, *MEMORY[0x277D720A8], v189);
    sub_22C70C380(&qword_27D9BEC48, MEMORY[0x277D724B8]);
    sub_22C70C380(&qword_27D9BEC50, MEMORY[0x277D720C0]);
    v76 = v200;
    v77 = v193;
    sub_22C90901C();

    (v74[1])(v67, v75);
    swift_getKeyPath();
    sub_22C3A5908(&qword_27D9BAFB0, &qword_22C90D850);
    v78 = v191;
    v79 = *(v191 + 72);
    v80 = (*(v191 + 80) + 32) & ~*(v191 + 80);
    v81 = swift_allocObject();
    *(v81 + 16) = v187;
    v83 = *(v78 + 16);
    v82 = v78 + 16;
    v188 = v83;
    (v83)(v81 + v80, v210, v60);
    sub_22C5EA4C4();
    v84 = v190;
    MEMORY[0x2318B6430]();

    sub_22C70C380(&qword_27D9BF758, MEMORY[0x277D724E8]);
    v85 = v168;
    sub_22C90901C();

    (*(v194 + 8))(v84, v195);
    v86 = v169;
    v88 = v169 + 8;
    v87 = *(v169 + 8);
    v89 = v170;
    v87(v76, v170);
    v200 = v87;
    v87(v77, v89);
    (*(v86 + 32))(v77, v85, v89);
    sub_22C908A3C();
    sub_22C374168(v209, v209[3]);
    v90 = v196;
    sub_22C908A6C();
    v91 = v171;
    v92 = sub_22C90669C();
    if (v91)
    {
      (*(v197 + 8))(v90, v198);
      (*(v186 + 8))(v166, v167);
      v200(v193, v89);
      return sub_22C36FF94(v209);
    }

    else
    {
      v93 = v92;
      v182 = v82;
      *&v187 = v88;
      v171 = 0;
      (*(v197 + 8))(v90, v198);
      result = sub_22C36FF94(v209);
      v94 = 0;
      v95 = *(v93 + 16);
      v198 = v93;
      v199 = v95;
      v96 = v203;
      v197 = v203 + 16;
      v196 = (v180 + 8);
      v194 = v203 + 8;
      v190 = (v203 + 32);
      v189 = MEMORY[0x277D84F90];
      v97 = v207;
      v98 = v184;
      v99 = v210;
      v100 = v205;
      v101 = v200;
LABEL_8:
      v102 = v208;
      v103 = v206;
      while (v199 != v94)
      {
        if (v94 >= *(v198 + 16))
        {
          __break(1u);
          return result;
        }

        v195 = (*(v96 + 80) + 32) & ~*(v96 + 80);
        v104 = *(v96 + 72);
        v105 = v201;
        (*(v96 + 16))(v201, v198 + v195 + v104 * v94, v98);
        v106 = v98;
        sub_22C908DFC();
        sub_22C908EDC();
        sub_22C70C380(&qword_27D9BF760, MEMORY[0x277D72418]);
        v107 = v100;
        v108 = v202;
        v109 = sub_22C90AE0C();
        v110 = *v196;
        v111 = v107;
        v112 = v204;
        (*v196)(v111, v108);
        v110(v112, v108);
        if (v109)
        {
          v183 = *v190;
          (v183)(v185, v105, v106);
          v113 = v189;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v209[0] = v113;
          if (isUniquelyReferenced_nonNull_native)
          {
            v98 = v106;
          }

          else
          {
            sub_22C3B7AE0(0, *(v113 + 16) + 1, 1);
            v98 = v184;
            v113 = v209[0];
          }

          v97 = v207;
          v99 = v210;
          v100 = v205;
          v115 = v200;
          v116 = v195;
          v118 = *(v113 + 16);
          v117 = *(v113 + 24);
          v119 = v118 + 1;
          v120 = v185;
          if (v118 >= v117 >> 1)
          {
            v121 = *(v113 + 16);
            v189 = v118 + 1;
            sub_22C3B7AE0(v117 > 1, v119, 1);
            v119 = v189;
            v118 = v121;
            v116 = v195;
            v120 = v185;
            v98 = v184;
            v113 = v209[0];
          }

          ++v94;
          *(v113 + 16) = v119;
          v189 = v113;
          result = (v183)(v113 + v116 + v118 * v104, v120, v98);
          v96 = v203;
          v101 = v115;
          goto LABEL_8;
        }

        result = (*v194)(v105, v106);
        ++v94;
        v97 = v207;
        v102 = v208;
        v98 = v106;
        v100 = v205;
        v103 = v206;
        v99 = v210;
        v96 = v203;
        v101 = v200;
      }

      v122 = v101;
      v123 = v179;
      sub_22C58AF70(v189, v179);

      if (sub_22C370B74(v123, 1, v98) == 1)
      {
        sub_22C36DD80(v123, &qword_27D9BC1E8);
        v124 = v177;
        sub_22C58AF70(v198, v177);

        if (sub_22C370B74(v124, 1, v98) == 1)
        {
          sub_22C36DD80(v124, &qword_27D9BC1E8);
          v125 = v174;
          sub_22C903F8C();
          v126 = v172;
          v127 = v99;
          v128 = v192;
          v129 = v188;
          (v188)(v172, v127, v192);
          v130 = sub_22C9063CC();
          v131 = sub_22C90AADC();
          if (os_log_type_enabled(v130, v131))
          {
            v132 = swift_slowAlloc();
            v210 = v132;
            v133 = swift_slowAlloc();
            v209[0] = v133;
            *v132 = 136315138;
            v129(v102, v126, v128);
            v134 = sub_22C90A1AC();
            v135 = v126;
            v137 = v136;
            v138 = v200;
            (*(v191 + 8))(v135, v128);
            v139 = sub_22C36F9F4(v134, v137, v209);

            v140 = v210;
            *(v210 + 1) = v139;
            v141 = v131;
            v142 = v140;
            _os_log_impl(&dword_22C366000, v130, v141, "no open tool defined for type %s", v140, 0xCu);
            sub_22C36FF94(v133);
            MEMORY[0x2318B9880](v133, -1, -1);
            MEMORY[0x2318B9880](v142, -1, -1);

            (*(v175 + 8))(v174, v176);
            v143 = v167;
            v144 = v186;
            v145 = v166;
            v146 = v193;
          }

          else
          {

            (*(v191 + 8))(v126, v128);
            (*(v175 + 8))(v125, v176);
            v143 = v167;
            v144 = v186;
            v145 = v166;
            v146 = v193;
            v138 = v122;
          }

          type metadata accessor for InterpreterError();
          sub_22C70C380(&qword_27D9BAA40, type metadata accessor for InterpreterError);
          swift_allocError();
          *v164 = 1852141679;
          v164[1] = 0xE400000000000000;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          (*(v144 + 8))(v145, v143);
          return v138(v146, v170);
        }

        else
        {
          v147 = v173;
          v210 = *v190;
          (v210)(v173, v124, v98);
          sub_22C903F8C();
          v148 = v99;
          v149 = v192;
          v150 = v188;
          (v188)(v103, v148, v192);
          v151 = sub_22C9063CC();
          v152 = sub_22C90AAFC();
          if (os_log_type_enabled(v151, v152))
          {
            v153 = swift_slowAlloc();
            LODWORD(v208) = v152;
            v154 = v153;
            v155 = v103;
            v156 = v149;
            v157 = swift_slowAlloc();
            v209[0] = v157;
            *v154 = 136315138;
            v150(v102, v155, v156);
            v158 = sub_22C90A1AC();
            v159 = v97;
            v161 = v160;
            v162 = v155;
            v147 = v173;
            (*(v191 + 8))(v162, v156);
            v163 = sub_22C36F9F4(v158, v161, v209);

            *(v154 + 4) = v163;
            _os_log_impl(&dword_22C366000, v151, v208, "no open tool with assistant visibility defined for type %s, falling back to an invisible tool", v154, 0xCu);
            sub_22C36FF94(v157);
            MEMORY[0x2318B9880](v157, -1, -1);
            MEMORY[0x2318B9880](v154, -1, -1);

            (*(v175 + 8))(v159, v176);
          }

          else
          {

            (*(v191 + 8))(v103, v149);
            (*(v175 + 8))(v97, v176);
          }

          (*(v186 + 8))(v166, v167);
          v200(v193, v170);
          return (v210)(v178, v147, v184);
        }
      }

      else
      {

        (*(v186 + 8))(v166, v167);
        v122(v193, v170);
        return (*v190)(v178, v123, v98);
      }
    }
  }

  return result;
}

uint64_t sub_22C707F6C(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v150) = a4;
  v151 = a3;
  v148 = a2;
  v144 = a1;
  v136 = sub_22C9069BC();
  v124 = *(v136 - 8);
  v4 = *(v124 + 64);
  v5 = MEMORY[0x28223BE20](v136);
  v149 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v154 = &v113 - v7;
  v8 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v140 = &v113 - v10;
  v11 = sub_22C908C3C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v139 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_22C3A5908(&qword_27D9BDCF0, qword_22C91B608);
  v14 = *(*(v142 - 8) + 64);
  MEMORY[0x28223BE20](v142);
  v123 = (&v113 - v15);
  v16 = sub_22C3A5908(&qword_27D9BF7B0, &unk_22C923060);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v141 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v113 - v20;
  v143 = sub_22C9093BC();
  v125 = *(v143 - 8);
  v22 = *(v125 + 64);
  v23 = MEMORY[0x28223BE20](v143);
  v138 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v133 = &v113 - v25;
  v116 = sub_22C90906C();
  v115 = *(v116 - 8);
  v26 = *(v115 + 64);
  MEMORY[0x28223BE20](v116);
  v114 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22C3A5908(&qword_27D9BB628, &unk_22C920580);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v134 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v113 - v32;
  v34 = sub_22C908C5C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v34);
  v153 = &v113 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v152 = &v113 - v40;
  MEMORY[0x28223BE20](v39);
  v147 = &v113 - v41;
  v42 = sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v45 = &v113 - v44;
  v46 = sub_22C901FAC();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  v49 = MEMORY[0x28223BE20](v46);
  v137 = &v113 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v52 = &v113 - v51;
  v54 = v53;
  sub_22C6AEA50(v148, v45, &qword_27D9BAA30, &unk_22C911F70);
  v55 = *(v45 + 1);

  v145 = v42;
  v146 = v45;
  v56 = *(v42 + 48);
  v57 = v47;
  (*(v47 + 32))(v52, &v45[v56], v54);
  sub_22C605B74(v52, v151);
  if (sub_22C370B74(v33, 1, v34) == 1)
  {
    (*(v47 + 8))(v52, v54);
    return sub_22C36DD80(v33, &qword_27D9BB628);
  }

  v135 = v52;
  v59 = *(v35 + 32);
  v60 = v147;
  v122 = v35 + 32;
  v121 = v59;
  v59(v147, v33, v34);
  if (v150)
  {
    goto LABEL_23;
  }

  v150 = v57;
  v151 = v34;
  v61 = v133;
  sub_22C90774C();
  v62 = v125;
  v63 = v143;
  if ((*(v125 + 88))(v61, v143) != *MEMORY[0x277D729E0])
  {
    (*(v62 + 8))(v61, v63);
    v57 = v150;
    v34 = v151;
LABEL_23:
    v106 = v146;
    sub_22C6AEA50(v148, v146, &qword_27D9BAA30, &unk_22C911F70);
    v107 = *v106;
    v108 = v106[1];
    v109 = *(v145 + 48);
    v110 = v149;
    sub_22C90699C();
    v111 = *(v57 + 8);
    v111(v106 + v109, v54);
    v112 = v134;
    (*(v35 + 16))(v134, v60, v34);
    sub_22C36C640(v112, 0, 1, v34);
    sub_22C603A20(v112, v110);
    (*(v35 + 8))(v60, v34);
    return (v111)(v135, v54);
  }

  v134 = v54;
  v64 = v62 + 96;
  (*(v62 + 96))(v61, v63);
  v65 = *v61;
  v66 = swift_projectBox();
  (*(v115 + 16))(v114, v66, v116);

  v67 = sub_22C90905C();
  v68 = 0;
  v120 = v67;
  v69 = *(v67 + 16);
  v119 = v64 - 80;
  v131 = (v64 - 64);
  v130 = (v150 + 16);
  v133 = (v150 + 8);
  v129 = (v35 + 16);
  v118 = v124 + 16;
  v126 = (v124 + 8);
  v132 = (v35 + 8);
  v117 = v35 + 40;
  v71 = v141;
  v70 = v142;
  v72 = v63;
  v128 = v35;
  v127 = v69;
  while (1)
  {
    if (v68 == v69)
    {
      v73 = 1;
      v150 = v69;
    }

    else
    {
      if ((v68 & 0x8000000000000000) != 0)
      {
        goto LABEL_27;
      }

      if (v68 >= *(v120 + 16))
      {
        goto LABEL_28;
      }

      v74 = v68 + 1;
      v75 = v125;
      v76 = v120 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v68;
      v77 = *(v70 + 48);
      v78 = v123;
      *v123 = v68;
      (*(v75 + 16))(v78 + v77, v76, v72);
      sub_22C6AE8BC(v78, v71, &qword_27D9BDCF0, qword_22C91B608);
      v73 = 0;
      v150 = v74;
    }

    sub_22C36C640(v71, v73, 1, v70);
    sub_22C6AE8BC(v71, v21, &qword_27D9BF7B0, &unk_22C923060);
    if (sub_22C370B74(v21, 1, v70) == 1)
    {

      (*(v115 + 8))(v114, v116);
      (*v132)(v147, v151);
      return (*v133)(v135, v134);
    }

    v149 = *v21;
    (*v131)(v138, &v21[*(v70 + 48)], v72);
    sub_22C908C4C();
    v79 = v134;
    (*v130)(v137, v135, v134);
    sub_22C908B8C();
    v80 = v144;
    v81 = v152;
    sub_22C908BFC();
    v82 = v146;
    sub_22C6AEA50(v148, v146, &qword_27D9BAA30, &unk_22C911F70);
    v83 = *v82;
    v84 = *(v82 + 1);
    v85 = *(v145 + 48);
    sub_22C90699C();
    (*v133)(&v82[v85], v79);
    (*v129)(v153, v81, v151);
    v86 = *v80;
    swift_isUniquelyReferenced_nonNull_native();
    v87 = v80;
    v155 = *v80;
    v88 = v155;
    sub_22C628D18();
    if (__OFADD__(v88[2], (v90 & 1) == 0))
    {
      break;
    }

    v91 = v89;
    v92 = v90;
    sub_22C3A5908(&qword_27D9BF348, &unk_22C923370);
    if (sub_22C90B15C())
    {
      sub_22C628D18();
      v69 = v127;
      if ((v92 & 1) != (v94 & 1))
      {
        goto LABEL_30;
      }

      v91 = v93;
      v95 = v128;
    }

    else
    {
      v95 = v128;
      v69 = v127;
    }

    v96 = v155;
    if (v92)
    {
      v97 = v151;
      (*(v95 + 40))(v155[7] + *(v95 + 72) * v91, v153, v151);
      (*v126)(v154, v136);
      (*(v95 + 8))(v152, v97);
    }

    else
    {
      v155[(v91 >> 6) + 8] |= 1 << v91;
      v98 = v124;
      v99 = v154;
      v100 = v136;
      (*(v124 + 16))(v96[6] + *(v124 + 72) * v91, v154, v136);
      v101 = v96[7] + *(v95 + 72) * v91;
      v102 = v151;
      v121(v101, v153, v151);
      (*(v98 + 8))(v99, v100);
      (*(v95 + 8))(v152, v102);
      v103 = v96[2];
      v104 = __OFADD__(v103, 1);
      v105 = v103 + 1;
      if (v104)
      {
        goto LABEL_29;
      }

      v96[2] = v105;
    }

    *v87 = v96;
    v71 = v141;
    v70 = v142;
    v72 = v143;
    v68 = v150;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for Interpreter2()
{
  result = qword_27D9BF840;
  if (!qword_27D9BF840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C708D70()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  swift_task_alloc();
  sub_22C36CC90();
  *(v1 + 16) = v8;
  *v8 = v9;
  v10 = sub_22C6AF0F4(v8);

  return sub_22C6C3FE4(v10, v11, v12, v4, v5, v7, v6);
}

uint64_t sub_22C708E34()
{
  sub_22C36FB38();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  swift_task_alloc();
  sub_22C36CC90();
  *(v1 + 16) = v5;
  *v5 = v6;
  v7 = sub_22C6AF0F4(v5);

  return sub_22C6C3D40(v7, v8, v9, v4);
}

void sub_22C708EF8(uint64_t *a1)
{
  v2 = *(sub_22C3A5908(&qword_27D9BAD60, &qword_22C91D9D0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C4E0(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_22C7090D0(v6, &qword_27D9BAD60, &qword_22C91D9D0);
  *a1 = v3;
}

void sub_22C708FE4(uint64_t *a1)
{
  v2 = *(sub_22C3A5908(&qword_27D9BAF80, &unk_22C90FAC0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C510(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_22C7090D0(v6, &qword_27D9BAF80, &unk_22C90FAC0);
  *a1 = v3;
}

void sub_22C7090D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  if (sub_22C90B45C() < v5)
  {
    if (v5 >= -1)
    {
      v6 = v5 / 2;
      if (v5 <= 1)
      {
        v7 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22C3A5908(a2, a3);
        v7 = sub_22C90A64C();
        *(v7 + 16) = v6;
      }

      v8 = sub_22C3A5908(a2, a3);
      sub_22C369914(v8);
      v10 = *(v9 + 80);
      sub_22C36BA94();
      sub_22C709444();
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_22C709238();
  }
}

void sub_22C709238()
{
  sub_22C370030();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v57 = sub_22C3A5908(v0, v10);
  v11 = *(*(v57 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v57);
  v56 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v47 - v15);
  MEMORY[0x28223BE20](v14);
  v19 = (&v47 - v18);
  v49 = v7;
  if (v5 != v7)
  {
    v20 = *v3;
    v21 = *(v17 + 72);
    v22 = *v3 + v21 * (v5 - 1);
    v54 = -v21;
    v55 = v20;
    v23 = v9 - v5;
    v48 = v21;
    v24 = v20 + v21 * v5;
    while (2)
    {
      v52 = v22;
      v53 = v5;
      v50 = v24;
      v51 = v23;
      v25 = v23;
      do
      {
        sub_22C380120();
        sub_22C70CF28();
        sub_22C6AEA50(v26, v27, v28, v29);
        sub_22C70CF28();
        sub_22C6AEA50(v30, v31, v32, v33);
        v34 = *v19;
        v35 = *v16;
        v36 = sub_22C38A024();
        sub_22C36DD80(v36, v37);
        sub_22C36DD80(v19, v1);
        if (v34 >= v35)
        {
          break;
        }

        if (!v55)
        {
          __break(1u);
          return;
        }

        sub_22C70CF28();
        sub_22C6AE8BC(v38, v39, v40, v41);
        sub_22C372FA4();
        swift_arrayInitWithTakeFrontToBack();
        sub_22C371510();
        sub_22C70CF28();
        sub_22C6AE8BC(v42, v43, v44, v45);
        v22 += v54;
        v24 += v54;
      }

      while (!__CFADD__(v25++, 1));
      v5 = v53 + 1;
      v22 = v52 + v48;
      v23 = v51 - 1;
      v24 = v50 + v48;
      if (v53 + 1 != v49)
      {
        continue;
      }

      break;
    }
  }

  sub_22C36FB20();
}

void sub_22C709444()
{
  sub_22C370030();
  v126 = v2;
  v127 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v120 = v12;
  v139 = sub_22C3A5908(v6, v4);
  v13 = sub_22C369824(v139);
  v128 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C3698E4();
  v122 = v17;
  sub_22C369930();
  MEMORY[0x28223BE20](v18);
  sub_22C36BA58();
  v138 = v19;
  sub_22C369930();
  MEMORY[0x28223BE20](v20);
  sub_22C36BA58();
  v141 = v21;
  sub_22C369930();
  MEMORY[0x28223BE20](v22);
  sub_22C36BA64();
  v140 = v23;
  v130 = v11;
  v24 = v11[1];
  v142 = v5;
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_101:
    v1 = *v120;
    if (!*v120)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v134 = v26;
      v113 = (v26 + 16);
      for (i = *(v26 + 16); i >= 2; *v113 = i)
      {
        if (!*v130)
        {
          goto LABEL_139;
        }

        v114 = (v134 + 16 * i);
        v115 = *v114;
        v116 = &v113[2 * i];
        v26 = *(v116 + 1);
        sub_22C709CB0(*v130 + *(v128 + 72) * *v114, *v130 + *(v128 + 72) * *v116, *v130 + *(v128 + 72) * v26, v1, v7, v142, v126, v127, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129);
        if (v0)
        {
          break;
        }

        if (v26 < v115)
        {
          goto LABEL_127;
        }

        if (i - 2 >= *v113)
        {
          goto LABEL_128;
        }

        *v114 = v115;
        v114[1] = v26;
        v117 = *v113 - i;
        if (*v113 < i)
        {
          goto LABEL_129;
        }

        i = *v113 - 1;
        sub_22C56BFF0(v116 + 16, v117, v116);
      }

LABEL_111:

      sub_22C36FB20();
      return;
    }

LABEL_136:
    v26 = sub_22C56BFD8(v26);
    goto LABEL_103;
  }

  v118 = v9;
  v25 = 0;
  v26 = MEMORY[0x277D84F90];
  while (1)
  {
    v27 = v25++;
    if (v25 < v24)
    {
      v131 = v26;
      v28 = *v130;
      v1 = *(v128 + 72);
      v29 = v27;
      v30 = *v130 + v1 * v25;
      v26 = v140;
      v125 = v24;
      sub_22C6AEA50(v30, v140, v7, v5);
      sub_22C6AEA50(v28 + v1 * v29, v141, v7, v5);
      v123 = *v141;
      v124 = *v140;
      v31 = sub_22C37B220();
      sub_22C36DD80(v31, v32);
      v33 = sub_22C372FA4();
      sub_22C36DD80(v33, v34);
      v35 = v125;
      v119 = v29;
      v36 = v29 + 2;
      v129 = v1;
      v37 = v28 + v1 * (v29 + 2);
      while (1)
      {
        v38 = v36;
        if (++v25 >= v35)
        {
          break;
        }

        v1 = v142;
        sub_22C6AEA50(v37, v140, v7, v142);
        sub_22C6AEA50(v30, v141, v7, v142);
        v26 = *v140;
        v39 = *v141;
        v40 = sub_22C37493C();
        sub_22C36DD80(v40, v41);
        sub_22C36DD80(v140, v7);
        v35 = v125;
        v37 += v129;
        v30 += v129;
        v36 = v38 + 1;
        if (v124 < v123 == v26 >= v39)
        {
          goto LABEL_9;
        }
      }

      v25 = v35;
LABEL_9:
      if (v124 >= v123)
      {
        v26 = v131;
        v5 = v142;
      }

      else
      {
        v27 = v29;
        if (v25 < v29)
        {
          goto LABEL_133;
        }

        if (v29 >= v25)
        {
          v26 = v131;
          v5 = v142;
          goto LABEL_32;
        }

        if (v35 >= v38)
        {
          v42 = v38;
        }

        else
        {
          v42 = v35;
        }

        v43 = v129 * (v42 - 1);
        v44 = v129 * v42;
        v45 = v29 * v129;
        v1 = v25;
        v5 = v142;
        do
        {
          if (v27 != --v1)
          {
            v46 = *v130;
            if (!*v130)
            {
              goto LABEL_140;
            }

            sub_22C6AE8BC(v46 + v45, v122, v7, v142);
            v47 = v45 < v43 || v46 + v45 >= (v46 + v44);
            if (v47)
            {
              sub_22C70CEAC();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v45 != v43)
            {
              sub_22C70CEAC();
              swift_arrayInitWithTakeBackToFront();
            }

            v48 = v46 + v43;
            v5 = v142;
            sub_22C6AE8BC(v122, v48, v7, v142);
          }

          ++v27;
          v43 -= v129;
          v44 -= v129;
          v45 += v129;
        }

        while (v27 < v1);
        v26 = v131;
      }

      v27 = v29;
    }

LABEL_32:
    v49 = v130[1];
    if (v25 < v49)
    {
      if (__OFSUB__(v25, v27))
      {
        goto LABEL_132;
      }

      if (v25 - v27 < v118)
      {
        break;
      }
    }

LABEL_48:
    if (v25 < v27)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v109 = *(v26 + 16);
      sub_22C3827B4();
      sub_22C590218();
      v26 = v110;
    }

    v66 = *(v26 + 16);
    v67 = v66 + 1;
    if (v66 >= *(v26 + 24) >> 1)
    {
      sub_22C3827B4();
      sub_22C590218();
      v26 = v111;
    }

    *(v26 + 16) = v67;
    v68 = v26 + 32;
    v69 = (v26 + 32 + 16 * v66);
    *v69 = v27;
    v69[1] = v25;
    v137 = *v120;
    if (!*v120)
    {
      goto LABEL_141;
    }

    if (v66)
    {
      v133 = v26;
      while (1)
      {
        v70 = v67 - 1;
        v71 = (v68 + 16 * (v67 - 1));
        v72 = (v26 + 16 * v67);
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v73 = *(v26 + 32);
          v74 = *(v26 + 40);
          v83 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          v76 = v83;
LABEL_69:
          if (v76)
          {
            goto LABEL_118;
          }

          v88 = *v72;
          v87 = v72[1];
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_121;
          }

          v92 = v71[1];
          v93 = v92 - *v71;
          if (__OFSUB__(v92, *v71))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v90, v93))
          {
            goto LABEL_126;
          }

          if (v90 + v93 >= v75)
          {
            if (v75 < v93)
            {
              v70 = v67 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v67 < 2)
        {
          goto LABEL_120;
        }

        v95 = *v72;
        v94 = v72[1];
        v83 = __OFSUB__(v94, v95);
        v90 = v94 - v95;
        v91 = v83;
LABEL_84:
        if (v91)
        {
          goto LABEL_123;
        }

        v97 = *v71;
        v96 = v71[1];
        v83 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v83)
        {
          goto LABEL_125;
        }

        if (v98 < v90)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v70 - 1 >= v67)
        {
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
          goto LABEL_135;
        }

        if (!*v130)
        {
          goto LABEL_138;
        }

        v102 = v25;
        v103 = (v68 + 16 * (v70 - 1));
        v26 = *v103;
        v1 = v68;
        v104 = v70;
        v105 = v68 + 16 * v70;
        v106 = *(v105 + 8);
        sub_22C709CB0(*v130 + *(v128 + 72) * *v103, *v130 + *(v128 + 72) * *v105, *v130 + *(v128 + 72) * v106, v137, v7, v5, v126, v127, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129);
        if (v0)
        {
          goto LABEL_111;
        }

        if (v106 < v26)
        {
          goto LABEL_113;
        }

        v107 = *(v133 + 16);
        if (v104 > v107)
        {
          goto LABEL_114;
        }

        *v103 = v26;
        v103[1] = v106;
        if (v104 >= v107)
        {
          goto LABEL_115;
        }

        v67 = v107 - 1;
        sub_22C56BFF0((v105 + 16), v107 - 1 - v104, v105);
        v26 = v133;
        *(v133 + 16) = v107 - 1;
        v108 = v107 > 2;
        v5 = v142;
        v68 = v1;
        v25 = v102;
        if (!v108)
        {
          goto LABEL_98;
        }
      }

      v77 = v68 + 16 * v67;
      v78 = *(v77 - 64);
      v79 = *(v77 - 56);
      v83 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v83)
      {
        goto LABEL_116;
      }

      v82 = *(v77 - 48);
      v81 = *(v77 - 40);
      v83 = __OFSUB__(v81, v82);
      v75 = v81 - v82;
      v76 = v83;
      if (v83)
      {
        goto LABEL_117;
      }

      v84 = v72[1];
      v85 = v84 - *v72;
      if (__OFSUB__(v84, *v72))
      {
        goto LABEL_119;
      }

      v83 = __OFADD__(v75, v85);
      v86 = v75 + v85;
      if (v83)
      {
        goto LABEL_122;
      }

      if (v86 >= v80)
      {
        v100 = *v71;
        v99 = v71[1];
        v83 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v83)
        {
          goto LABEL_130;
        }

        if (v75 < v101)
        {
          v70 = v67 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v24 = v130[1];
    if (v25 >= v24)
    {
      goto LABEL_101;
    }
  }

  v50 = v27 + v118;
  if (__OFADD__(v27, v118))
  {
    goto LABEL_134;
  }

  if (v50 >= v49)
  {
    v50 = v130[1];
  }

  if (v50 < v27)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v25 == v50)
  {
    goto LABEL_48;
  }

  v132 = v26;
  v51 = *(v128 + 72);
  v52 = *v130 + v51 * (v25 - 1);
  v53 = -v51;
  v119 = v27;
  v54 = v27 - v25;
  v136 = *v130;
  v121 = v51;
  v55 = *v130 + v25 * v51;
  v123 = v50;
LABEL_41:
  v135 = v25;
  v124 = v55;
  v125 = v54;
  v129 = v52;
  while (1)
  {
    v1 = v140;
    sub_22C6AF0E8();
    sub_22C6AEA50(v56, v57, v58, v5);
    sub_22C6AEA50(v52, v141, v7, v142);
    v59 = *v140;
    v60 = *v141;
    v5 = v142;
    sub_22C36DD80(v141, v7);
    v61 = sub_22C36ECB4();
    sub_22C36DD80(v61, v62);
    if (v59 >= v60)
    {
LABEL_46:
      v25 = v135 + 1;
      v52 = v129 + v121;
      v54 = v125 - 1;
      v55 = v124 + v121;
      if (v135 + 1 == v123)
      {
        v25 = v123;
        v26 = v132;
        v27 = v119;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v136)
    {
      break;
    }

    sub_22C6AE8BC(v55, v138, v7, v142);
    sub_22C50B578();
    swift_arrayInitWithTakeFrontToBack();
    sub_22C70CCE8();
    sub_22C6AE8BC(v63, v64, v65, v142);
    v52 += v53;
    v55 += v53;
    v47 = __CFADD__(v54++, 1);
    if (v47)
    {
      goto LABEL_46;
    }
  }

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
}

void sub_22C709CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v20;
  a20 = v21;
  v87 = v22;
  v24 = v23;
  v99 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v95 = v32;
  v96 = v33;
  v94 = sub_22C3A5908(v32, v33);
  v34 = *(*(v94 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v94);
  v97 = (&v85 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v35);
  v98 = (&v85 - v37);
  v39 = *(v38 + 72);
  if (!v39)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v40 = v29 - v31 == 0x8000000000000000 && v39 == -1;
  if (v40)
  {
    goto LABEL_61;
  }

  v41 = v27 - v29;
  if (v27 - v29 == 0x8000000000000000 && v39 == -1)
  {
    goto LABEL_62;
  }

  v43 = (v29 - v31) / v39;
  a10 = v31;
  v101 = v99;
  v44 = v41 / v39;
  if (v43 >= v41 / v39)
  {
    v60 = sub_22C36FC08();
    v61 = v99;
    v24(v60);
    v62 = v61 + v44 * v39;
    v63 = -v39;
    v64 = v62;
    v89 = -v39;
    v90 = v31;
LABEL_37:
    v65 = v27;
    v86 = v64;
    v91 = v29 + v63;
    v92 = v29;
    while (1)
    {
      if (v62 <= v99)
      {
        a10 = v29;
        v100 = v64;
        goto LABEL_59;
      }

      if (v29 <= v31)
      {
        break;
      }

      v88 = v64;
      v66 = v65 + v63;
      v67 = v62 + v63;
      v68 = v62 + v63;
      v69 = v98;
      v70 = v95;
      v71 = v62;
      v72 = v96;
      sub_22C6AEA50(v68, v98, v95, v96);
      v73 = v97;
      sub_22C44178C();
      sub_22C6AEA50(v74, v75, v76, v72);
      v93 = *v69;
      v77 = *v73;
      sub_22C36DD80(v73, v70);
      v78 = sub_22C36D39C();
      sub_22C36DD80(v78, v79);
      if (v93 < v77)
      {
        v62 = v71;
        v81 = v65 < v92 || v66 >= v92;
        v27 = v66;
        if (v81)
        {
          v29 = v91;
          sub_22C70C95C();
          swift_arrayInitWithTakeFrontToBack();
          v64 = v88;
          v63 = v89;
          v31 = v90;
        }

        else
        {
          v63 = v89;
          v64 = v88;
          v31 = v90;
          v82 = v91;
          v29 = v91;
          if (v65 != v92)
          {
            sub_22C3819EC();
            sub_22C70C95C();
            v84 = v83;
            swift_arrayInitWithTakeBackToFront();
            v29 = v82;
            v64 = v84;
          }
        }

        goto LABEL_37;
      }

      if (v65 < v71 || v66 >= v71)
      {
        sub_22C37FE24();
        sub_22C70C95C();
        swift_arrayInitWithTakeFrontToBack();
        v65 = v66;
        v62 = v67;
        v64 = v67;
        v63 = v89;
        v31 = v90;
        v29 = v92;
      }

      else
      {
        v64 = v67;
        v40 = v71 == v65;
        v65 = v66;
        v62 = v67;
        v63 = v89;
        v31 = v90;
        v29 = v92;
        if (!v40)
        {
          sub_22C37FE24();
          sub_22C70C95C();
          swift_arrayInitWithTakeBackToFront();
          v65 = v66;
          v62 = v67;
          v64 = v67;
        }
      }
    }

    a10 = v29;
    v100 = v86;
  }

  else
  {
    v45 = sub_22C3806B8();
    v46 = v99;
    v24(v45);
    v92 = v27;
    v93 = v46 + v43 * v39;
    v100 = v93;
    while (v99 < v93 && v29 < v27)
    {
      v48 = v39;
      v49 = v98;
      v51 = v95;
      v50 = v96;
      sub_22C6AEA50(v29, v98, v95, v96);
      v52 = v97;
      sub_22C6AEA50(v99, v97, v51, v50);
      v53 = *v49;
      v54 = *v52;
      v55 = sub_22C38644C();
      sub_22C36DD80(v55, v56);
      sub_22C36DD80(v49, v51);
      if (v53 >= v54)
      {
        v39 = v48;
        v58 = v99 + v48;
        if (v31 < v99 || v31 >= v58)
        {
          sub_22C70C95C();
          swift_arrayInitWithTakeFrontToBack();
          v27 = v92;
        }

        else
        {
          v27 = v92;
          if (v31 != v99)
          {
            sub_22C70C95C();
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v101 = v58;
        v99 = v58;
      }

      else
      {
        v39 = v48;
        if (v31 < v29 || v31 >= v29 + v48)
        {
          sub_22C372280();
          sub_22C70C95C();
          swift_arrayInitWithTakeFrontToBack();
          v29 += v48;
          v27 = v92;
        }

        else
        {
          v27 = v92;
          if (v31 != v29)
          {
            sub_22C372280();
            sub_22C70C95C();
            swift_arrayInitWithTakeBackToFront();
          }

          v29 += v48;
        }
      }

      v31 += v39;
      a10 = v31;
    }
  }

LABEL_59:
  v87(&a10, &v101, &v100);
  sub_22C36FB20();
}

void *sub_22C70A0F8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v10 = sub_22C70AF1C(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void *sub_22C70A1A0(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_22C70B470(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void *sub_22C70A218(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    swift_bridgeObjectRetain_n();
    v8 = sub_22C70BD84(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void sub_22C70A2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  swift_isUniquelyReferenced_nonNull_native();
  v6 = *a4;
  sub_22C3806B8();
  sub_22C70A844();
  *a4 = v6;
}

uint64_t sub_22C70A328(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v72 = a5;
  v54 = a4;
  v8 = sub_22C908C5C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v60 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v65 = v53 - v13;
  v14 = sub_22C9069BC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22C3A5908(&qword_27D9BF4D0, &qword_22C923090);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v53 - v21;
  sub_22C8920A0(v70, a1, a2, a3);
  v66 = v70[0];
  v67 = v70[1];
  v68 = v70[2];
  v63 = (v9 + 32);
  v64 = (v15 + 32);
  v69 = v71;
  v58 = v9 + 16;
  v57 = v9 + 8;
  v59 = v15;
  v56 = (v15 + 8);
  v23 = v18;
  v24 = v54;
  v62 = v9;
  v55 = v9 + 40;
  v53[2] = a1;

  v53[1] = a3;

  for (i = v22; ; v22 = i)
  {
    sub_22C89143C();
    v25 = sub_22C3A5908(&qword_27D9BAD40, &qword_22C90D5E0);
    if (sub_22C370B74(v22, 1, v25) == 1)
    {
      sub_22C36A674();
    }

    v26 = *(v25 + 48);
    v27 = *v64;
    (*v64)(v23, v22, v14);
    v28 = *v63;
    v29 = &v22[v26];
    v30 = v8;
    (*v63)(v65, v29, v8);
    v31 = *v72;
    sub_22C628D18();
    v34 = v33;
    v35 = *(v31 + 16);
    v36 = (v32 & 1) == 0;
    if (__OFADD__(v35, v36))
    {
      break;
    }

    v37 = v32;
    if (*(v31 + 24) >= v35 + v36)
    {
      if ((v24 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BF348, &unk_22C923370);
        sub_22C90B16C();
      }
    }

    else
    {
      v38 = v72;
      sub_22C88F148();
      v39 = *v38;
      sub_22C628D18();
      if ((v37 & 1) != (v41 & 1))
      {
        goto LABEL_17;
      }

      v34 = v40;
    }

    v42 = *v72;
    if (v37)
    {
      v43 = v62;
      v44 = v60;
      v45 = v23;
      v46 = v14;
      v47 = v65;
      v8 = v30;
      (*(v62 + 16))(v60, v65, v30);
      v48 = v47;
      v14 = v46;
      v23 = v45;
      (*(v43 + 8))(v48, v30);
      (*v56)(v45, v14);
      (*(v43 + 40))(v42[7] + *(v43 + 72) * v34, v44, v30);
    }

    else
    {
      v42[(v34 >> 6) + 8] |= 1 << v34;
      v27((v42[6] + *(v59 + 72) * v34), v23, v14);
      v8 = v30;
      v28((v42[7] + *(v62 + 72) * v34), v65, v30);
      v49 = v42[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_16;
      }

      v42[2] = v51;
    }

    v24 = 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

void sub_22C70A844()
{
  sub_22C370030();
  v71 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v62 = sub_22C902D4C();
  v7 = sub_22C369824(v62);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C3698E4();
  v59 = v12;
  sub_22C369930();
  MEMORY[0x28223BE20](v13);
  v15 = v58 - v14;
  v16 = sub_22C3A5908(&qword_27D9BF7A0, &unk_22C923350);
  sub_22C369914(v16);
  v18 = *(v17 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v19);
  v21 = v58 - v20;
  sub_22C44178C();
  sub_22C8920A0(v25, v22, v23, v24);
  v63 = v67;
  v64 = v68;
  v65 = v69;
  v66 = v70;
  v60 = v9;
  v61 = (v9 + 32);
  v58[4] = v9 + 8;
  v58[5] = v9 + 16;
  v58[3] = v9 + 40;
  v58[1] = v6;

  v58[0] = v4;

  while (1)
  {
    sub_22C8917D4();
    v26 = sub_22C3A5908(&qword_27D9BF798, &unk_22C923050);
    v27 = sub_22C36CCF8();
    sub_22C36D0A8(v27, v28, v26);
    if (v29)
    {
      sub_22C36A674();

      sub_22C36FB20();
      return;
    }

    v31 = *v21;
    v30 = *(v21 + 1);
    v32 = *v61;
    v33 = v15;
    (*v61)(v15, &v21[*(v26 + 48)], v62);
    v34 = *v71;
    v35 = sub_22C5CA738();
    v37 = sub_22C36E2BC(v35, v36);
    sub_22C369DA4();
    if (__OFADD__(v39, v40))
    {
      break;
    }

    v41 = v38;
    if (v34[3] >= v39 + v40)
    {
      if ((v2 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BF470, &qword_22C922730);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88F3D0();
      v42 = *v71;
      v43 = sub_22C5CA738();
      v45 = sub_22C36E2BC(v43, v44);
      if ((v41 & 1) != (v46 & 1))
      {
        goto LABEL_16;
      }

      v37 = v45;
    }

    v47 = *v71;
    if (v41)
    {
      v49 = v59;
      v48 = v60;
      v15 = v33;
      v50 = v62;
      (*(v60 + 16))(v59, v33, v62);
      v51 = *(v48 + 8);
      v52 = sub_22C36CA88();
      v53(v52);

      (*(v48 + 40))(v47[7] + *(v48 + 72) * v37, v49, v50);
      v2 = 1;
    }

    else
    {
      sub_22C36ED48(&v47[v37 >> 6]);
      v54 = (v47[6] + 16 * v37);
      *v54 = v31;
      v54[1] = v30;
      v15 = v33;
      v32((v47[7] + *(v60 + 72) * v37), v33, v62);
      v55 = v47[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_15;
      }

      v47[2] = v57;
      v2 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  sub_22C90B54C();
  __break(1u);
}

uint64_t sub_22C70ABE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      a2 = sub_22C70A0F8(v15, v9, a1, a2, a3);
      MEMORY[0x2318B9880](v15, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v10);
  v11 = v16 - ((8 * v9 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_22C88FAFC(0, v9, v11);

  v12 = sub_22C70AF1C(v11, v9, a1, a2, a3);
  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v12;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  v13 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t sub_22C70ADB8(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = sub_22C70A1A0(v9, v4, v2);
      MEMORY[0x2318B9880](v9, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_22C88FAFC(0, v4, v5);
  sub_22C70B470(v5, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v6;
  }

LABEL_5:
  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_22C70AF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v77 = a5;
  v74 = a4;
  v57[1] = a2;
  v58 = a1;
  v73 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
  v6 = *(*(v73 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v73);
  v9 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v69 = v57 - v10;
  v11 = sub_22C908C5C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C9069BC();
  v17 = *(*(v16 - 8) + 64);
  result = MEMORY[0x28223BE20](v16);
  v21 = v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v75 = a3;
  v23 = *(a3 + 64);
  v61 = a3 + 64;
  v24 = 1 << *(a3 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v59 = 0;
  v60 = (v24 + 63) >> 6;
  v70 = v19 + 2;
  v71 = v9;
  v80 = v19;
  v76 = v19 + 1;
  v72 = v12;
  v67 = (v12 + 8);
  v68 = v12 + 16;
  v65 = v11;
  v66 = v21;
  v64 = v15;
  while (v26)
  {
    v27 = v15;
    v28 = __clz(__rbit64(v26));
    v79 = (v26 - 1) & v26;
LABEL_11:
    v31 = v28 | (v22 << 6);
    v32 = v75;
    v33 = *(v75 + 48) + v80[9] * v31;
    v78 = v80[2];
    v34 = v21;
    v78(v21, v33, v16);
    v35 = *(v32 + 56);
    v36 = *(v72 + 72);
    v63 = v31;
    v37 = *(v72 + 16);
    v38 = v65;
    v37(v27, v35 + v36 * v31, v65);
    v39 = v69;
    v78(v69, v34, v16);
    v40 = v73;
    v41 = v38;
    v37((v39 + *(v73 + 48)), v27, v38);
    v42 = v71;
    sub_22C6AEA50(v39, v71, &qword_27D9BF110, &unk_22C922580);
    v43 = sub_22C9069AC();
    v45 = v44;
    v46 = v16;
    v78 = v80[1];
    (v78)(v42, v16);
    if (v43 == v74 && v45 == v77)
    {

      v52 = *(v40 + 48);
      sub_22C36DD80(v39, &qword_27D9BF110);
      v53 = *v67;
      (*v67)(v42 + v52, v41);
      v15 = v64;
      v53(v64, v41);
      v54 = v66;
      v16 = v46;
      result = (v78)(v66, v46);
      v21 = v54;
      v26 = v79;
    }

    else
    {
      v62 = sub_22C90B4FC();

      v48 = *(v40 + 48);
      sub_22C36DD80(v39, &qword_27D9BF110);
      v49 = *v67;
      (*v67)(v42 + v48, v41);
      v15 = v64;
      v49(v64, v41);
      v50 = v66;
      result = (v78)(v66, v16);
      v21 = v50;
      v26 = v79;
      if ((v62 & 1) == 0)
      {
        *(v58 + ((v63 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v63;
        if (__OFADD__(v59++, 1))
        {
          goto LABEL_22;
        }
      }
    }
  }

  v29 = v22;
  while (1)
  {
    v22 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v22 >= v60)
    {
      sub_22C8392BC();
      v56 = v55;

      return v56;
    }

    v30 = *(v61 + 8 * v22);
    ++v29;
    if (v30)
    {
      v27 = v15;
      v28 = __clz(__rbit64(v30));
      v79 = (v30 - 1) & v30;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void sub_22C70B470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54[1] = a2;
  v55 = a1;
  v72 = sub_22C9093BC();
  v4 = *(v72 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v72);
  v71 = (v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v70 = v54 - v8;
  v69 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
  v9 = *(*(v69 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v69);
  v68 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v82 = v54 - v12;
  v81 = sub_22C908C5C();
  v13 = *(v81 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v81);
  v80 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_22C9069BC();
  v16 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v77 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = 0;
  v19 = 0;
  v73 = a3;
  v20 = *(a3 + 64);
  v58 = a3 + 64;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v57 = (v21 + 63) >> 6;
  v65 = v13 + 16;
  v66 = v17 + 2;
  v67 = v13;
  v76 = v13 + 8;
  v64 = *MEMORY[0x277D729A0];
  v63 = *MEMORY[0x277D72A58];
  v61 = (v4 + 8);
  v62 = (v4 + 104);
  v78 = v17;
  v60 = v17 + 1;
  while (v23)
  {
    v24 = __clz(__rbit64(v23));
    v75 = (v23 - 1) & v23;
LABEL_11:
    v27 = v24 | (v19 << 6);
    v28 = v73;
    v29 = v77;
    v30 = *(v73 + 48) + v78[9] * v27;
    v74 = v78[2];
    v31 = v79;
    v74(v77, v30, v79);
    v32 = *(v28 + 56);
    v33 = v67;
    v34 = *(v67 + 72);
    v59 = v27;
    v35 = *(v67 + 16);
    v36 = v80;
    v35(v80, v32 + v34 * v27, v81);
    v37 = v82;
    v74(v82, v29, v31);
    v38 = v69;
    v39 = v36;
    v40 = v81;
    v35((v37 + *(v69 + 48)), v39, v81);
    v41 = v68;
    sub_22C6AEA50(v37, v68, &qword_27D9BF110, &unk_22C922580);
    v42 = *(v38 + 48);
    v43 = v70;
    sub_22C90774C();
    v44 = *(v33 + 8);
    v44(v41 + v42, v40);
    v45 = sub_22C90931C();
    v46 = swift_allocBox();
    (*(*(v45 - 8) + 104))(v47, v64, v45);
    v48 = v71;
    v49 = v72;
    *v71 = v46;
    (*v62)(v48, v63, v49);
    sub_22C70C380(&qword_27D9BF1E8, MEMORY[0x277D72A78]);
    LODWORD(v74) = sub_22C90A0BC();
    v50 = *v61;
    (*v61)(v48, v49);
    v50(v43, v49);
    sub_22C36DD80(v82, &qword_27D9BF110);
    v51 = v79;
    v52 = v78[1];
    v52(v41, v79);
    v44(v80, v40);
    v52(v77, v51);
    v23 = v75;
    if ((v74 & 1) == 0)
    {
      *(v55 + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v59;
      if (__OFADD__(v56++, 1))
      {
        __break(1u);
LABEL_15:
        sub_22C8392BC();
        return;
      }
    }
  }

  v25 = v19;
  while (1)
  {
    v19 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v19 >= v57)
    {
      goto LABEL_15;
    }

    v26 = *(v58 + 8 * v19);
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v75 = (v26 - 1) & v26;
      goto LABEL_11;
    }
  }

  __break(1u);
}

int64_t sub_22C70BAB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v35 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v33 = &v30;
    MEMORY[0x28223BE20](v9);
    v31 = v7;
    v32 = &v30 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_22C88FAFC(0, v7, v32);
    v34 = 0;
    v14 = 0;
    v7 = a1 + 56;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(a1 + 56);
    v18 = (v15 + 63) >> 6;
    while (v17)
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_12:
      v8 = v19 | (v14 << 6);
      v36 = *(*(a1 + 48) + 8 * v8);

      v22 = sub_22C6F3A58(&v36, v35);
      if (v3)
      {

        swift_willThrow();
        swift_bridgeObjectRelease_n();
        goto LABEL_18;
      }

      v23 = v22;

      if (v23)
      {
        *(v32 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        if (__OFADD__(v34++, 1))
        {
          __break(1u);
LABEL_17:
          sub_22C7EC7C4(v32, v31, v34, a1, v10, v11, v12, v13, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
          v18 = v25;
          swift_bridgeObjectRelease_n();
          goto LABEL_18;
        }
      }
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {
        goto LABEL_17;
      }

      v21 = *(v7 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v28 = swift_slowAlloc();
  v29 = v35;

  v18 = sub_22C70A218(v28, v7, a1, v29);

  MEMORY[0x2318B9880](v28, -1, -1);
  swift_bridgeObjectRelease_n();
LABEL_18:
  v26 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t sub_22C70BD84(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = result;
  v27 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v30[0] = *(*(a3 + 48) + 8 * v15);

    v16 = sub_22C6F3A58(v30, a4);
    if (v4)
    {
    }

    v17 = v16;

    if (v17)
    {
      *(v26 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_16:

        sub_22C7EC7C4(v26, a2, v27, a3, v19, v20, v21, v22, a2, v26, v27, a4, v29, v30[0], v30[1], v30[2], v30[3], v30[4], v30[5], v30[6]);
        v24 = v23;

        return v24;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C70BF0C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  swift_task_alloc();
  sub_22C36CC90();
  *(v1 + 16) = v8;
  *v8 = v9;
  v10 = sub_22C6AF0F4(v8);

  return sub_22C6CDB0C(v10, v11, v12, v4, v5, v7, v6);
}

uint64_t sub_22C70C0BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v5 = v4(v3);
  sub_22C369A9C(v5);
  v7 = *(v6 + 32);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

uint64_t sub_22C70C1E0()
{
  sub_22C36D5EC();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  swift_task_alloc();
  sub_22C36CC90();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_22C382AF4;
  sub_22C63413C();

  return sub_22C6EFA14(v8, v9, v10, v3, v5, v4);
}

uint64_t sub_22C70C29C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v5 = v4(v3);
  sub_22C369A9C(v5);
  v7 = *(v6 + 16);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}