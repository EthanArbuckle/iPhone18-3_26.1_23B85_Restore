uint64_t sub_22BD05430(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BB2F330(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22BD05488(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BB30F68();
  v5 = v4(v3);
  sub_22BB2F330(v5);
  v7 = *(v6 + 32);
  v8 = sub_22BB31F54();
  v9(v8);
  return a2;
}

uint64_t sub_22BD05500(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BB30F68();
  v5 = v4(v3);
  sub_22BB2F330(v5);
  v7 = *(v6 + 16);
  v8 = sub_22BB31F54();
  v9(v8);
  return a2;
}

uint64_t sub_22BD05558(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22BDBB6D4();

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

uint64_t sub_22BD05618(char a1)
{
  if (a1)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

void sub_22BD05630()
{
  sub_22BB31014();
  v159 = v2;
  v160 = v1;
  v5 = v4;
  v6 = sub_22BBE6DE0(&qword_27D8E55E0, &qword_22BDC8FD8);
  v7 = sub_22BB30444(v6);
  v144 = v8;
  v145 = v7;
  v10 = *(v9 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  sub_22BB30BA8();
  v142 = v12;
  v13 = sub_22BBE6DE0(&qword_27D8E55E8, &qword_22BDC8FE0);
  v14 = sub_22BB30444(v13);
  v148 = v15;
  v149 = v14;
  v17 = *(v16 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v18);
  sub_22BB30BA8();
  v146 = v19;
  v20 = sub_22BBE6DE0(&qword_27D8E4318, &unk_22BDC2E90);
  sub_22BB2F0C8(v20);
  v22 = *(v21 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v23);
  sub_22BB30BA8();
  v143 = v24;
  v25 = sub_22BBE6DE0(&qword_27D8E55F0, &qword_22BDC8FE8);
  v26 = sub_22BB30444(v25);
  v151 = v27;
  v152 = v26;
  v29 = *(v28 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v30);
  sub_22BB30BA8();
  v147 = v31;
  sub_22BB2F120();
  v155 = sub_22BDB8294();
  v32 = sub_22BB30444(v155);
  v150 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BB305A8();
  v154 = v36;
  v37 = sub_22BBE6DE0(&qword_27D8E55F8, &qword_22BDC8FF0);
  v38 = sub_22BB30444(v37);
  v140 = v39;
  v141 = v38;
  v41 = *(v40 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v42);
  sub_22BB30BA8();
  v139 = v43;
  v44 = sub_22BB2F120();
  v137 = _s23StatementFailureOutcomeVMa(v44);
  v45 = sub_22BB2F330(v137);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22BB305A8();
  sub_22BB2F14C(v48);
  v136 = sub_22BBE6DE0(&qword_27D8E5600, &qword_22BDC8FF8);
  sub_22BB30444(v136);
  v135 = v49;
  v51 = *(v50 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v52);
  sub_22BB30BA8();
  sub_22BB2F14C(v53);
  v54 = sub_22BBE6DE0(&qword_27D8E3DB8, &qword_22BDC1150);
  v55 = sub_22BB2F0C8(v54);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  sub_22BB30560();
  v153 = v58;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v59);
  sub_22BB2F39C();
  sub_22BB2F14C(v60);
  v132 = sub_22BBE6DE0(&qword_27D8E5608, &qword_22BDC9000);
  sub_22BB30444(v132);
  v131 = v61;
  v63 = *(v62 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v64);
  sub_22BB395E0();
  v65 = _s23StatementSuccessOutcomeVMa(0);
  v66 = sub_22BB2F330(v65);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66);
  sub_22BB30574();
  v69 = sub_22BB52E94();
  v70 = _s24StatementExecutionResultOMa(v69);
  v71 = sub_22BB2F330(v70);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v71);
  sub_22BB30574();
  v76 = v75 - v74;
  v77 = sub_22BBE6DE0(&qword_27D8E5610, &qword_22BDC9008);
  v157 = sub_22BB30444(v77);
  v158 = v78;
  v80 = *(v79 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v81);
  v83 = &v130 - v82;
  v84 = *(v5 + 24);
  v85 = *(v5 + 32);
  v86 = sub_22BB53C48();
  sub_22BB699E4(v86, v87);
  sub_22BD0D498();
  v156 = v83;
  sub_22BDBB8A4();
  sub_22BB36644();
  sub_22BD05500(v160, v76);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v117 = v133;
      sub_22BC8D26C();
      sub_22BD0D63C();
      v118 = v134;
      v90 = v157;
      sub_22BB35FDC();
      sub_22BDBB5F4();
      _s23StatementCreatedOutcomeVMa(0);
      sub_22BB33DB8();
      sub_22BD0B918(v119);
      v120 = v136;
      sub_22BDBB614();
      (*(v135 + 8))(v118, v120);
      sub_22BB58728(v117, &qword_27D8E3DB8, &qword_22BDC1150);
      goto LABEL_8;
    case 2u:
      v102 = v138;
      sub_22BD05488(v76, v138);
      sub_22BD0D5E8();
      v104 = v156;
      v103 = v157;
      sub_22BB393F8();
      sub_22BDBB5F4();
      sub_22BB31D40();
      sub_22BD0B918(v105);
      sub_22BDBB664();
      v106 = sub_22BB58888();
      v107(v106);
      sub_22BB30860();
      sub_22BD05430(v102, v108);
      v100 = *(v158 + 8);
      v99 = v104;
      goto LABEL_12;
    case 3u:
      v109 = *(sub_22BBE6DE0(&qword_27D8E3DB0, &qword_22BDC1148) + 48);
      v110 = v153;
      sub_22BC8D26C();
      v111 = v150;
      (*(v150 + 32))(v154, v76 + v109, v155);
      sub_22BD110AC();
      sub_22BD0D594();
      v90 = v157;
      sub_22BDBB5F4();
      sub_22BB72208();
      sub_22BB33DB8();
      sub_22BD0B918(v112);
      v113 = v152;
      v114 = v159;
      sub_22BDBB614();
      if (v114)
      {
        v115 = sub_22BB977C4();
        v116(v115, v113);
        (*(v111 + 8))(v154, v155);
        sub_22BB58728(v110, &qword_27D8E3DB8, &qword_22BDC1150);
        v99 = sub_22BB34F2C();
LABEL_9:
        v101 = v90;
      }

      else
      {
        v103 = v90;
        sub_22BD110D8();
        sub_22BB8AC74();
        sub_22BD0B918(v125);
        v126 = v154;
        v127 = v155;
        sub_22BDBB664();
        v128 = sub_22BB977C4();
        v129(v128, v113);
        (*(v111 + 8))(v126, v127);
        sub_22BB58728(v153, &qword_27D8E3DB8, &qword_22BDC1150);
        v99 = sub_22BB34F2C();
LABEL_12:
        v101 = v103;
      }

LABEL_13:
      v100(v99, v101);
LABEL_14:
      sub_22BB376A8();
      return;
    case 4u:
      v94 = v143;
      sub_22BC8D26C();
      sub_22BD110B8();
      sub_22BD0D540();
      v95 = v157;
      sub_22BB354EC();
      sub_22BDBB5F4();
      _s20TaskStatementOutcomeOMa(0);
      sub_22BB31A20();
      sub_22BD0B918(v96);
      sub_22BB3849C();
      sub_22BDBB614();
      v97 = sub_22BB3CAF4();
      v98(v97);
      sub_22BB58728(v94, &qword_27D8E4318, &unk_22BDC2E90);
      v99 = sub_22BB397A4();
      v101 = v95;
      goto LABEL_13;
    case 5u:
      sub_22BBC0278();
      sub_22BD0D4EC();
      v121 = v142;
      v122 = v157;
      sub_22BB393F8();
      sub_22BDBB5F4();
      (*(v144 + 8))(v121, v145);
      v123 = sub_22BB720A0();
      v124(v123, v122);
      goto LABEL_14;
    default:
      v88 = sub_22BB3FBBC();
      sub_22BD05488(v88, v89);
      sub_22BD0D690();
      v90 = v157;
      sub_22BB35FDC();
      sub_22BDBB5F4();
      sub_22BB3813C();
      sub_22BD0B918(v91);
      v92 = v132;
      sub_22BDBB664();
      (*(v131 + 8))(v0, v92);
      sub_22BB35B78();
      sub_22BD05430(v3, v93);
LABEL_8:
      v99 = sub_22BB3B088();
      goto LABEL_9;
  }
}

void sub_22BD06150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22BB31014();
  a23 = v30;
  a24 = v31;
  v181 = v25;
  v33 = v32;
  v167 = v34;
  v174 = sub_22BBE6DE0(&qword_27D8E5570, &qword_22BDC8FA0);
  sub_22BB30444(v174);
  v161 = v35;
  v37 = *(v36 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v38);
  sub_22BB30BA8();
  v170 = v39;
  v162 = sub_22BBE6DE0(&qword_27D8E5578, &qword_22BDC8FA8);
  sub_22BB30444(v162);
  v175 = v40;
  v42 = *(v41 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v43);
  sub_22BB30BA8();
  sub_22BD10FE4(v44);
  v163 = sub_22BBE6DE0(&qword_27D8E5580, &qword_22BDC8FB0);
  sub_22BB30444(v163);
  v166 = v45;
  v47 = *(v46 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v48);
  sub_22BB30BA8();
  v172 = v49;
  v160 = sub_22BBE6DE0(&qword_27D8E5588, &qword_22BDC8FB8);
  sub_22BB30444(v160);
  v173 = v50;
  v52 = *(v51 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v53);
  sub_22BB30BA8();
  v179 = v54;
  v159 = sub_22BBE6DE0(&qword_27D8E5590, &qword_22BDC8FC0);
  sub_22BB30444(v159);
  v165 = v55;
  v57 = *(v56 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v58);
  sub_22BB30BA8();
  v169 = v59;
  v158 = sub_22BBE6DE0(&qword_27D8E5598, &qword_22BDC8FC8);
  sub_22BB30444(v158);
  v164 = v60;
  v62 = *(v61 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v63);
  sub_22BB30BA8();
  v168 = v64;
  v65 = sub_22BBE6DE0(&qword_27D8E55A0, &qword_22BDC8FD0);
  v66 = sub_22BB30444(v65);
  v177 = v67;
  v178 = v66;
  v69 = *(v68 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v70);
  sub_22BB36858();
  v176 = _s24StatementExecutionResultOMa(0);
  v71 = sub_22BB2F330(v176);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v71);
  sub_22BB30560();
  v157[6] = v74;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v75);
  sub_22BB89894();
  MEMORY[0x28223BE20](v76);
  sub_22BB92338();
  MEMORY[0x28223BE20](v77);
  sub_22BB6C6EC();
  MEMORY[0x28223BE20](v78);
  sub_22BB313C0();
  MEMORY[0x28223BE20](v79);
  v81 = v157 - v80;
  v83 = v33[3];
  v82 = v33[4];
  v180 = v33;
  v84 = sub_22BB8AB74();
  sub_22BB699E4(v84, v85);
  sub_22BD0D498();
  sub_22BB697A8();
  v86 = v181;
  sub_22BDBB894();
  if (v86)
  {
    goto LABEL_12;
  }

  v157[1] = v27;
  v157[2] = v29;
  v157[3] = v28;
  v157[4] = v24;
  v157[5] = v81;
  v87 = v178;
  v88 = v26;
  v89 = sub_22BDBB5E4();
  sub_22BD006D0(v89, 0);
  sub_22BB8B6D8();
  if (v90)
  {
    v91 = v177;
LABEL_11:
    v107 = v176;
    v108 = sub_22BDBB3A4();
    sub_22BB31A08();
    v110 = v109;
    v111 = *(sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530) + 48);
    *v110 = v107;
    sub_22BDBB564();
    sub_22BB36D74();
    v112 = *MEMORY[0x277D84160];
    sub_22BB30474(v108);
    v114 = *(v113 + 104);
    v115 = sub_22BB527FC();
    v116(v115);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v91 + 8))(v88, v87);
LABEL_12:
    v117 = v180;
LABEL_13:
    sub_22BB32FA4(v117);
    sub_22BB89E24();
    sub_22BB376A8();
    return;
  }

  sub_22BB75A78();
  *(v96 - 256) = 0;
  if (v92 < (v93 >> 1))
  {
    v97 = *(v95 + v94);
    v98 = sub_22BD006A8(v94 + 1);
    v100 = v99;
    v102 = v101;
    swift_unknownObjectRelease();
    v90 = v100 == v102 >> 1;
    v103 = v175;
    v104 = v173;
    if (v90)
    {
      v105 = v157[0];
      switch(v97)
      {
        case 1:
          a11 = 1;
          sub_22BD0D63C();
          sub_22BB3B3D0();
          sub_22BDBB554();
          if (v105)
          {
            goto LABEL_23;
          }

          sub_22BB72208();
          sub_22BB33DB8();
          sub_22BD0B918(v122);
          sub_22BBC96EC(&a15);
          sub_22BB337B4();
          sub_22BDBB584();
          sub_22BD110A0();
          swift_unknownObjectRelease();
          v146 = sub_22BB692D0();
          v147(v146);
          v148 = sub_22BB3A294();
          v149(v148);
          sub_22BD11094();
          goto LABEL_25;
        case 2:
          a12 = 2;
          sub_22BD0D5E8();
          sub_22BB3B3D0();
          sub_22BDBB554();
          if (v105)
          {
            goto LABEL_23;
          }

          _s23StatementFailureOutcomeVMa(0);
          sub_22BB31D40();
          sub_22BD0B918(v120);
          sub_22BBC96EC(&a16);
          sub_22BB337B4();
          sub_22BDBB5D4();
          sub_22BD110A0();
          swift_unknownObjectRelease();
          v135 = *(v104 + 8);
          v136 = sub_22BB3AAD8();
          v137(v136);
          v138 = sub_22BB3A294();
          v139(v138);
          sub_22BD11094();
          goto LABEL_25;
        case 3:
          sub_22BD110AC();
          sub_22BD0D594();
          sub_22BB3B3D0();
          sub_22BDBB554();
          if (v105)
          {
            goto LABEL_23;
          }

          sub_22BB72208();
          a14 = 0;
          sub_22BB33DB8();
          sub_22BD0B918(v121);
          sub_22BBC96EC(&a17);
          sub_22BD10F14();
          sub_22BB71FE8();
          sub_22BDBB584();
          v98 = *(sub_22BBE6DE0(&qword_27D8E3DB0, &qword_22BDC1148) + 48);
          sub_22BDB8294();
          sub_22BD110D8();
          sub_22BB8AC74();
          sub_22BD0B918(v140);
          sub_22BB337B4();
          sub_22BDBB5D4();
          v141 = v166;
          swift_unknownObjectRelease();
          v150 = *(v141 + 8);
          v151 = sub_22BB3AAD8();
          v152(v151);
          v153 = sub_22BB3A294();
          v154(v153);
          sub_22BD11094();
          goto LABEL_25;
        case 4:
          sub_22BD110B8();
          sub_22BD0D540();
          v118 = v171;
          sub_22BB3B3D0();
          sub_22BDBB554();
          if (v105)
          {
            goto LABEL_23;
          }

          _s20TaskStatementOutcomeOMa(0);
          sub_22BB31A20();
          sub_22BD0B918(v119);
          sub_22BD10F14();
          v98 = v118;
          sub_22BDBB584();
          sub_22BD110A0();
          swift_unknownObjectRelease();
          v130 = *(v103 + 8);
          v131 = sub_22BB362AC();
          v132(v131);
          v133 = sub_22BB3A294();
          v134(v133);
          swift_storeEnumTagMultiPayload();
          sub_22BB362E8();
          goto LABEL_26;
        case 5:
          sub_22BBC0278();
          sub_22BD0D4EC();
          sub_22BB3B3D0();
          sub_22BDBB554();
          if (v105)
          {
            goto LABEL_23;
          }

          swift_unknownObjectRelease();
          v125 = *(v161 + 8);
          v126 = sub_22BB500C0();
          v127(v126);
          v128 = sub_22BB720A0();
          v129(v128, v87);
          sub_22BB8B698();
          swift_storeEnumTagMultiPayload();
          goto LABEL_27;
        default:
          a10 = 0;
          sub_22BD0D690();
          sub_22BB3B3D0();
          sub_22BDBB554();
          if (v105)
          {
LABEL_23:
            v123 = sub_22BB720A0();
            v124(v123, v87);
            swift_unknownObjectRelease();
            goto LABEL_12;
          }

          _s23StatementSuccessOutcomeVMa(0);
          sub_22BB3813C();
          sub_22BD0B918(v106);
          sub_22BBC96EC(&a10);
          sub_22BB337B4();
          sub_22BDBB5D4();
          sub_22BD110A0();
          swift_unknownObjectRelease();
          v142 = sub_22BB692D0();
          v143(v142);
          v144 = sub_22BB3A294();
          v145(v144);
          sub_22BD11094();
LABEL_25:
          swift_storeEnumTagMultiPayload();
          sub_22BB362E8();
LABEL_26:
          sub_22BB8B698();
          sub_22BD05488(v155, v98);
LABEL_27:
          v156 = v180;
          sub_22BB362E8();
          sub_22BD05488(v98, v167);
          v117 = v156;
          break;
      }

      goto LABEL_13;
    }

    v91 = v177;
    v88 = v181;
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_22BD06D00()
{
  sub_22BB35F54();
  v3 = v1 == 0x636E657265666572 && v2 == 0xE900000000000065;
  if (v3 || (sub_22BB32E28() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x746C75736572 && v0 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    sub_22BB32E28();
    sub_22BBC05FC();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BD06DA8(uint64_t a1)
{
  v3 = v1;
  v5 = sub_22BBE6DE0(&qword_27D8E5860, &qword_22BDCA868);
  sub_22BB30444(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB36858();
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = sub_22BB313A8();
  sub_22BB699E4(v13, v14);
  sub_22BD0F04C();
  sub_22BB697A8();
  sub_22BC8DAAC();
  sub_22BDBB8A4();
  sub_22BD11144();
  sub_22BB32C84();
  sub_22BD0B918(v15);
  sub_22BB36BDC();
  sub_22BB3B7E4();
  sub_22BDBB664();
  if (!v2)
  {
    v20 = *(v3 + *(_s24EvaluationDefinitionThinO27StatementSuccessOutcomeThinVMa(0) + 20));
    sub_22BBE6DE0(&qword_27D8E5630, &unk_22BDC9030);
    sub_22BD0F0A0(&unk_27D8E5868);
    sub_22BB3B7E4();
    sub_22BDBB614();
  }

  v16 = *(v7 + 8);
  v17 = sub_22BB37074();
  return v18(v17);
}

void sub_22BD06F64()
{
  sub_22BB31014();
  v2 = v1;
  v26 = v3;
  v4 = _s28StatementResolutionReferenceOMa(0);
  v5 = sub_22BB2F330(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BB305A8();
  v28 = v8;
  v9 = sub_22BBE6DE0(&qword_27D8E5848, &qword_22BDCA860);
  sub_22BB30444(v9);
  v27 = v10;
  v12 = *(v11 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v13);
  sub_22BB52928();
  v14 = _s24EvaluationDefinitionThinO27StatementSuccessOutcomeThinVMa(0);
  v15 = sub_22BB2F330(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BB30574();
  v20 = v19 - v18;
  v21 = v2[4];
  sub_22BB699E4(v2, v2[3]);
  sub_22BD0F04C();
  sub_22BDBB894();
  if (v0)
  {
    sub_22BB32FA4(v2);
  }

  else
  {
    sub_22BB32C84();
    sub_22BD0B918(v22);
    sub_22BB36BDC();
    sub_22BDBB5D4();
    sub_22BB30D74();
    sub_22BD05488(v28, v20);
    sub_22BBE6DE0(&qword_27D8E5630, &unk_22BDC9030);
    sub_22BB393D0();
    sub_22BD0F0A0(&unk_27D8E5858);
    sub_22BBB79C8();
    sub_22BDBB584();
    v23 = *(v27 + 8);
    v24 = sub_22BB89D18();
    v25(v24);
    *(v20 + *(v14 + 20)) = v29;
    sub_22BD05500(v20, v26);
    sub_22BB32FA4(v2);
    sub_22BD05430(v20, _s24EvaluationDefinitionThinO27StatementSuccessOutcomeThinVMa);
  }

  sub_22BB89E24();
  sub_22BB376A8();
}

uint64_t sub_22BD07238()
{
  sub_22BB35F54();
  v3 = v1 == 0x64657461657263 && v2 == 0xE700000000000000;
  if (v3 || (sub_22BB32E28() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x73736563637573 && v0 == 0xE700000000000000;
    if (v5 || (sub_22BB32E28() & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 0x6572756C696166 && v0 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      sub_22BB32E28();
      sub_22BBC05FC();
      if (v1)
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

void sub_22BD0731C()
{
  sub_22BB31014();
  sub_22BBBE73C();
  v3 = sub_22BBE6DE0(&qword_27D8E59D8, &qword_22BDCA938);
  sub_22BB30444(v3);
  v5 = *(v4 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB37048(v7, v64);
  v69 = _s23StatementFailureOutcomeVMa(0);
  v8 = sub_22BB2F330(v69);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BB305A8();
  sub_22BD10F3C(v11);
  v12 = sub_22BBE6DE0(&qword_27D8E59E0, &qword_22BDCA940);
  sub_22BB30444(v12);
  v14 = *(v13 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v15);
  sub_22BB30BA8();
  v16 = sub_22BB2F120();
  v67 = _s24EvaluationDefinitionThinO27StatementSuccessOutcomeThinVMa(v16);
  v17 = sub_22BB2F330(v67);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BB305A8();
  sub_22BD10FE4(v20);
  v21 = sub_22BBE6DE0(&qword_27D8E59E8, &qword_22BDCA948);
  sub_22BB30444(v21);
  v66 = v22;
  v24 = *(v23 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v25);
  v26 = sub_22BB391AC();
  v65 = _s23StatementCreatedOutcomeVMa(v26);
  v27 = sub_22BB2F330(v65);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BB30574();
  v30 = sub_22BB3ABC8();
  v31 = _s24EvaluationDefinitionThinO24TaskStatementOutcomeThinOMa(v30);
  v32 = sub_22BB2F330(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BB30574();
  v37 = v36 - v35;
  v73 = sub_22BBE6DE0(&qword_27D8E59F0, &qword_22BDCA950);
  sub_22BB30444(v73);
  v39 = v38;
  v41 = *(v40 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v42);
  sub_22BB32750();
  v43 = v0[4];
  sub_22BB699E4(v0, v0[3]);
  sub_22BD0F470();
  sub_22BBBDEA4();
  sub_22BDBB8A4();
  sub_22BD05500(v72, v37);
  sub_22BB500C0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v45 = (v39 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v46 = v68;
      sub_22BD05488(v37, v68);
      sub_22BB393D0();
      sub_22BD0F518();
      sub_22BB354EC();
      sub_22BDBB5F4();
      sub_22BB368C4();
      sub_22BD0B918(v47);
      sub_22BB3849C();
      sub_22BBBD288();
      v48 = sub_22BB3CAF4();
      v49(v48);
      v50 = _s24EvaluationDefinitionThinO27StatementSuccessOutcomeThinVMa;
    }

    else
    {
      v46 = v70;
      sub_22BD05488(v37, v70);
      sub_22BB3CF44();
      sub_22BD0F4C4();
      sub_22BB354EC();
      sub_22BDBB5F4();
      sub_22BB31D40();
      sub_22BD0B918(v58);
      sub_22BB3849C();
      sub_22BBBE6D0();
      sub_22BB38B78();
      v59(v71, v2);
      v50 = _s23StatementFailureOutcomeVMa;
    }

    sub_22BD05430(v46, v50);
    v60 = *v45;
    v61 = sub_22BB3FBBC();
    v63(v61, v62);
  }

  else
  {
    v51 = sub_22BB3B528();
    sub_22BD05488(v51, v52);
    sub_22BD0F56C();
    sub_22BB32800();
    sub_22BDBB5F4();
    sub_22BB33DB8();
    sub_22BD0B918(v53);
    sub_22BD10F48();
    v54 = *(v66 + 8);
    v55 = sub_22BB97B0C();
    v56(v55);
    sub_22BB38E30();
    sub_22BD05430(v2, v57);
    (*v45)(v1, v73);
  }

  sub_22BB3A204();
  sub_22BB376A8();
}

void sub_22BD07848()
{
  sub_22BB31014();
  v98 = v1;
  v4 = v3;
  v93 = v5;
  v96 = sub_22BBE6DE0(&qword_27D8E5998, &qword_22BDCA918);
  sub_22BB30444(v96);
  v92 = v6;
  v8 = *(v7 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  sub_22BB30BA8();
  sub_22BD10F3C(v10);
  v11 = sub_22BBE6DE0(&qword_27D8E59A0, &qword_22BDCA920);
  v12 = sub_22BB30444(v11);
  v90 = v13;
  v91 = v12;
  v15 = *(v14 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  sub_22BB37048(v17, v86[0]);
  v18 = sub_22BBE6DE0(&qword_27D8E59A8, &qword_22BDCA928);
  v19 = sub_22BB30444(v18);
  v88 = v20;
  v89 = v19;
  v22 = *(v21 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v23);
  sub_22BB340F4(v24, v86[0]);
  v25 = sub_22BBE6DE0(&qword_27D8E59B0, &qword_22BDCA930);
  v26 = sub_22BB30444(v25);
  v94 = v27;
  v95 = v26;
  v29 = *(v28 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v30);
  sub_22BB395E0();
  v31 = _s24EvaluationDefinitionThinO24TaskStatementOutcomeThinOMa(0);
  v32 = sub_22BB2F330(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BB30C74();
  sub_22BB347FC();
  MEMORY[0x28223BE20](v35);
  sub_22BB313C0();
  MEMORY[0x28223BE20](v36);
  sub_22BD110C4();
  MEMORY[0x28223BE20](v37);
  v39 = v86 - v38;
  v41 = v4[3];
  v40 = v4[4];
  v97 = v4;
  v42 = sub_22BB8AB74();
  sub_22BB699E4(v42, v43);
  sub_22BD0F470();
  sub_22BD11038();
  if (v1)
  {
    goto LABEL_11;
  }

  v44 = sub_22BB759E0();
  sub_22BD006D0(v44, 0);
  if (v46 == v45 >> 1)
  {
    goto LABEL_10;
  }

  sub_22BB2F4F4();
  if (v49 == v50)
  {
    __break(1u);
    return;
  }

  v51 = sub_22BB974E4(v47, v48);
  sub_22BD006A8(v51);
  sub_22BBBFF50();
  if (v40)
  {
LABEL_10:
    v55 = sub_22BDBB3A4();
    sub_22BB31A08();
    v56 = sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
    sub_22BD11124(v56);
    sub_22BB36D74();
    v57 = *MEMORY[0x277D84160];
    sub_22BB30474(v55);
    v59 = *(v58 + 104);
    v60 = sub_22BB527FC();
    v61(v60);
    swift_willThrow();
    swift_unknownObjectRelease();
    v62 = sub_22BB720A0();
    v63(v62, v2);
LABEL_11:
    v64 = v97;
    goto LABEL_12;
  }

  if (v0)
  {
    if (v0 == 1)
    {
      sub_22BB393D0();
      sub_22BD0F518();
      sub_22BB2F230();
      sub_22BDBB554();
      v52 = v87;
      if (!v39)
      {
        _s24EvaluationDefinitionThinO27StatementSuccessOutcomeThinVMa(0);
        sub_22BB368C4();
        sub_22BD0B918(v53);
        v54 = v86[2];
        sub_22BD10F14();
        sub_22BDBB5D4();
        sub_22BBCC128();
        swift_unknownObjectRelease();
        v70 = sub_22BB3B0D0();
        v71(v70);
        v72 = sub_22BB54280();
        v73(v72);
        sub_22BB3857C();
LABEL_20:
        swift_storeEnumTagMultiPayload();
        v80 = v54;
        v79 = v97;
        goto LABEL_21;
      }
    }

    else
    {
      sub_22BB3CF44();
      sub_22BD0F4C4();
      sub_22BB2F230();
      sub_22BDBB554();
      v52 = v87;
      if (!v39)
      {
        _s23StatementFailureOutcomeVMa(0);
        sub_22BB31D40();
        sub_22BD0B918(v69);
        v54 = v86[4];
        sub_22BBB79C8();
        sub_22BDBB5D4();
        sub_22BBCC128();
        swift_unknownObjectRelease();
        v81 = sub_22BB36A5C();
        v82(v81);
        v83 = sub_22BB38B68();
        v84(v83);
        sub_22BB3857C();
        goto LABEL_20;
      }
    }
  }

  else
  {
    sub_22BD0F56C();
    sub_22BB2F230();
    sub_22BDBB554();
    if (!v39)
    {
      _s23StatementCreatedOutcomeVMa(0);
      sub_22BB33DB8();
      sub_22BD0B918(v67);
      sub_22BB70BD8();
      v68 = v94;
      sub_22BBCC128();
      swift_unknownObjectRelease();
      v74 = sub_22BB3FCD8();
      v75(v74);
      v76 = *(v68 + 8);
      v77 = sub_22BB32E04();
      v78(v77);
      swift_storeEnumTagMultiPayload();
      v79 = v97;
      v52 = v87;
      v80 = v40;
LABEL_21:
      v85 = v93;
      sub_22BD05488(v80, v52);
      sub_22BD05488(v52, v85);
      sub_22BB32FA4(v79);
      goto LABEL_13;
    }
  }

  v65 = sub_22BB54280();
  v66(v65);
  swift_unknownObjectRelease();
  v64 = v97;
LABEL_12:
  sub_22BB32FA4(v64);
LABEL_13:
  sub_22BB376A8();
}

uint64_t sub_22BD07F24(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x800000022BDD33D0 == a2;
  if (v3 || (sub_22BB32E28() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = a1 == sub_22BD00D14() && a2 == v6;
    if (v7 || (sub_22BB32E28() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = a1 == sub_22BD10FF0() && a2 == v8;
      if (v9 || (sub_22BB32E28() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v11 = a1 == sub_22BB8B738() && a2 == v10;
        if (v11 || (sub_22BB32E28() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v12 = a1 == 0x64656C65636E6163 && a2 == 0xE800000000000000;
          if (v12 || (sub_22BB32E28() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x64657070696B73 && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            sub_22BB32E28();
            sub_22BBC05FC();
            if (a1)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

void sub_22BD08088()
{
  sub_22BB31014();
  v108 = v1;
  v4 = v3;
  v5 = sub_22BBE6DE0(&qword_27D8E5948, &qword_22BDCA8D8);
  v6 = sub_22BB30444(v5);
  v105 = v7;
  v106 = v6;
  v9 = *(v8 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB30BA8();
  v103 = v11;
  v12 = sub_22BBE6DE0(&qword_27D8E5950, &qword_22BDCA8E0);
  sub_22BB30444(v12);
  v14 = *(v13 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v15);
  sub_22BB30BA8();
  v16 = sub_22BBE6DE0(&qword_27D8E5958, &qword_22BDCA8E8);
  sub_22BB2F0C8(v16);
  v18 = *(v17 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v19);
  sub_22BB30BA8();
  sub_22BD10FE4(v20);
  v21 = sub_22BBE6DE0(&qword_27D8E5960, &qword_22BDCA8F0);
  sub_22BB30444(v21);
  v23 = *(v22 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v24);
  sub_22BB30BA8();
  v25 = sub_22BBE6DE0(&qword_27D8E5968, &qword_22BDCA8F8);
  v102 = sub_22BB30444(v25);
  v27 = *(v26 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v28);
  sub_22BB30BA8();
  v29 = sub_22BB2F120();
  v100 = _s23StatementFailureOutcomeVMa(v29);
  v30 = sub_22BB2F330(v100);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BB305A8();
  v101 = v33;
  v99 = sub_22BBE6DE0(&qword_27D8E5970, &qword_22BDCA900);
  sub_22BB30444(v99);
  v35 = *(v34 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v36);
  sub_22BB30BA8();
  sub_22BB2F14C(v37);
  v38 = sub_22BBE6DE0(&qword_27D8E3DB8, &qword_22BDC1150);
  v39 = sub_22BB2F0C8(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22BB30560();
  v98 = v42;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v43);
  sub_22BB2F39C();
  sub_22BB2F14C(v44);
  v96 = sub_22BBE6DE0(&qword_27D8E5978, &qword_22BDCA908);
  sub_22BB30444(v96);
  v46 = *(v45 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v47);
  v48 = sub_22BB3848C();
  v49 = _s24EvaluationDefinitionThinO27StatementSuccessOutcomeThinVMa(v48);
  v50 = sub_22BB2F330(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  sub_22BB30574();
  sub_22BB36FD8();
  v53 = _s24EvaluationDefinitionThinO28StatementExecutionResultThinOMa(0);
  v54 = sub_22BB2F330(v53);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  sub_22BB30574();
  v59 = v58 - v57;
  v60 = sub_22BBE6DE0(&qword_27D8E5980, &qword_22BDCA910);
  v107 = sub_22BB30444(v60);
  v62 = *(v61 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v63);
  sub_22BB395E0();
  v65 = *(v4 + 24);
  v64 = *(v4 + 32);
  v66 = sub_22BB393C4();
  sub_22BB699E4(v66, v67);
  sub_22BD0F224();
  sub_22BDBB8A4();
  sub_22BD05500(v108, v59);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BC8D26C();
      sub_22BD110D8();
      sub_22BD0F3C8();
      sub_22BB32E44();
      v76 = v0;
      sub_22BDBB5F4();
      _s23StatementCreatedOutcomeVMa(0);
      sub_22BB33DB8();
      sub_22BD0B918(v91);
      sub_22BB3849C();
      sub_22BDBB614();
      v92 = sub_22BB34F2C();
      v93(v92, v99);
      v90 = v97;
      v80 = &qword_27D8E3DB8;
      v81 = &qword_22BDC1150;
      goto LABEL_8;
    case 2u:
      sub_22BD05488(v59, v101);
      sub_22BD0F374();
      sub_22BB393F8();
      sub_22BDBB5F4();
      sub_22BB31D40();
      sub_22BD0B918(v82);
      sub_22BDBB664();
      v83 = sub_22BB3AB0C();
      v84(v83, v102);
      sub_22BB30860();
      sub_22BD05430(v101, v85);
      sub_22BB38B78();
      v74 = sub_22BB37074();
      goto LABEL_10;
    case 3u:
      v75 = v98;
      sub_22BC8D26C();
      sub_22BD110AC();
      sub_22BD0F320();
      sub_22BB32E44();
      v76 = v0;
      sub_22BDBB5F4();
      sub_22BB72208();
      sub_22BB33DB8();
      sub_22BD0B918(v87);
      sub_22BB3E0A4();
      v88 = sub_22BB58888();
      v89(v88);
      v80 = &qword_27D8E3DB8;
      v81 = &qword_22BDC1150;
      goto LABEL_6;
    case 4u:
      v75 = v104;
      sub_22BC8D26C();
      sub_22BD110B8();
      sub_22BD0F2CC();
      sub_22BB32E44();
      v76 = v0;
      sub_22BDBB5F4();
      _s24EvaluationDefinitionThinO24TaskStatementOutcomeThinOMa(0);
      sub_22BB95B78();
      sub_22BD0B918(v77);
      sub_22BB3E0A4();
      v78 = sub_22BB58888();
      v79(v78);
      v80 = &qword_27D8E5958;
      v81 = &qword_22BDCA8E8;
LABEL_6:
      v90 = v75;
LABEL_8:
      sub_22BB58728(v90, v80, v81);
      sub_22BB38B78();
      v74 = v76;
      goto LABEL_9;
    case 5u:
      sub_22BBC0278();
      sub_22BD0F278();
      sub_22BB393F8();
      sub_22BDBB5F4();
      (*(v105 + 8))(v103, v106);
      v94 = sub_22BB720A0();
      v95(v94, v107);
      goto LABEL_11;
    default:
      v68 = sub_22BB97B0C();
      sub_22BD05488(v68, v69);
      sub_22BD0F41C();
      sub_22BB32E44();
      sub_22BDBB5F4();
      sub_22BB368C4();
      sub_22BD0B918(v70);
      sub_22BB3849C();
      sub_22BDBB664();
      v71 = sub_22BB977C4();
      v72(v71, v96);
      sub_22BD05430(v2, _s24EvaluationDefinitionThinO27StatementSuccessOutcomeThinVMa);
      sub_22BB38B78();
      v74 = v0;
LABEL_9:
      v86 = v64;
LABEL_10:
      v73(v74, v86);
LABEL_11:
      sub_22BB376A8();
      return;
  }
}

void sub_22BD08A10()
{
  sub_22BB31014();
  v158 = v1;
  v6 = v5;
  v152 = v7;
  v150 = sub_22BBE6DE0(&qword_27D8E58C8, &qword_22BDCA8A0);
  sub_22BB30444(v150);
  v140 = v8;
  v10 = *(v9 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  sub_22BB30BA8();
  v149 = v12;
  v141 = sub_22BBE6DE0(&qword_27D8E58D0, &qword_22BDCA8A8);
  sub_22BB30444(v141);
  v151 = v13;
  v15 = *(v14 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  sub_22BB30BA8();
  sub_22BB8AD78(v17);
  v139 = sub_22BBE6DE0(&qword_27D8E58D8, &qword_22BDCA8B0);
  sub_22BB30444(v139);
  v145 = v18;
  v20 = *(v19 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v21);
  sub_22BB30BA8();
  sub_22BD10FE4(v22);
  v138 = sub_22BBE6DE0(&qword_27D8E58E0, &qword_22BDCA8B8);
  sub_22BB30444(v138);
  v144 = v23;
  v25 = *(v24 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v26);
  sub_22BB30BA8();
  v148 = v27;
  v137 = sub_22BBE6DE0(&qword_27D8E58E8, &qword_22BDCA8C0);
  sub_22BB30444(v137);
  v143 = v28;
  v30 = *(v29 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v31);
  sub_22BB30BA8();
  v147 = v32;
  v136 = sub_22BBE6DE0(&qword_27D8E58F0, &qword_22BDCA8C8);
  sub_22BB30444(v136);
  v142 = v33;
  v35 = *(v34 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v36);
  sub_22BB30BA8();
  v146 = v37;
  v38 = sub_22BBE6DE0(&qword_27D8E58F8, &qword_22BDCA8D0);
  v39 = sub_22BB30444(v38);
  v153 = v40;
  v154 = v39;
  v42 = *(v41 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v43);
  v44 = sub_22BB391AC();
  v156 = _s24EvaluationDefinitionThinO28StatementExecutionResultThinOMa(v44);
  v45 = sub_22BB2F330(v156);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22BB30560();
  v135[6] = v48;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v49);
  sub_22BB347FC();
  MEMORY[0x28223BE20](v50);
  sub_22BB89894();
  MEMORY[0x28223BE20](v51);
  sub_22BB3B5E8();
  MEMORY[0x28223BE20](v52);
  sub_22BB6C6EC();
  MEMORY[0x28223BE20](v53);
  v55 = v135 - v54;
  v56 = v6[3];
  v57 = v6[4];
  v157 = v6;
  v58 = sub_22BB313A8();
  sub_22BB699E4(v58, v59);
  sub_22BD0F224();
  sub_22BB75564();
  v60 = v158;
  sub_22BDBB894();
  if (v60)
  {
    goto LABEL_9;
  }

  v135[2] = v4;
  v135[3] = v3;
  v135[4] = v0;
  v135[1] = v2;
  v62 = v155;
  v61 = v156;
  v135[5] = v55;
  v63 = v154;
  v64 = sub_22BDBB5E4();
  sub_22BD006D0(v64, 0);
  if (v66 == v65 >> 1)
  {
LABEL_8:
    v82 = sub_22BDBB3A4();
    sub_22BB31A08();
    v84 = v83;
    v85 = *(sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530) + 48);
    *v84 = v61;
    sub_22BDBB564();
    sub_22BB36D74();
    v86 = *MEMORY[0x277D84160];
    sub_22BB30474(v82);
    v88 = *(v87 + 104);
    v89 = sub_22BB527FC();
    v90(v89);
    swift_willThrow();
    swift_unknownObjectRelease();
    v91 = sub_22BB720A0();
    v92(v91, v63);
LABEL_9:
    v93 = v157;
LABEL_10:
    sub_22BB32FA4(v93);
    sub_22BB376A8();
    return;
  }

  sub_22BB75A78();
  *(v69 - 256) = 0;
  if (v71 < (v70 >> 1))
  {
    v72 = *(v68 + v67);
    sub_22BD006A8(v67 + 1);
    v74 = v73;
    v76 = v75;
    swift_unknownObjectRelease();
    if (v74 == v76 >> 1)
    {
      v77 = v151;
      v78 = v135[0];
      v79 = v150;
      switch(v72)
      {
        case 1:
          sub_22BD110D8();
          sub_22BD0F3C8();
          sub_22BB3B3D0();
          sub_22BDBB554();
          if (v78)
          {
            goto LABEL_20;
          }

          sub_22BB72208();
          sub_22BB33DB8();
          sub_22BD0B918(v100);
          sub_22BB330B0();
          sub_22BDBB584();
          sub_22BD10FA0();
          swift_unknownObjectRelease();
          v127 = sub_22BB3AF90();
          v128(v127);
          v129 = *(v79 + 8);
          v130 = sub_22BB34614();
          v131(v130);
          sub_22BB500C0();
          goto LABEL_22;
        case 2:
          sub_22BD0F374();
          sub_22BB3B3D0();
          sub_22BDBB554();
          if (v78)
          {
            goto LABEL_20;
          }

          v97 = _s23StatementFailureOutcomeVMa(0);
          sub_22BB31D40();
          sub_22BD0B918(v98);
          sub_22BB330B0();
          sub_22BDBB5D4();
          sub_22BD10FA0();
          swift_unknownObjectRelease();
          v112 = sub_22BB3AF90();
          v113(v112);
          v114 = *(v97 + 8);
          v115 = sub_22BB34614();
          v116(v115);
          sub_22BB500C0();
          goto LABEL_22;
        case 3:
          sub_22BD110AC();
          sub_22BD0F320();
          sub_22BB3B3D0();
          sub_22BDBB554();
          if (v78)
          {
            goto LABEL_20;
          }

          sub_22BB72208();
          sub_22BB33DB8();
          sub_22BD0B918(v99);
          sub_22BB330B0();
          sub_22BDBB584();
          swift_unknownObjectRelease();
          v117 = sub_22BB3AF90();
          v118(v117);
          v119 = *(v153 + 8);
          v120 = sub_22BB34614();
          v121(v120);
          swift_storeEnumTagMultiPayload();
          sub_22BB35738();
          goto LABEL_23;
        case 4:
          sub_22BD110B8();
          sub_22BD0F2CC();
          sub_22BB3B3D0();
          sub_22BDBB554();
          if (v78)
          {
            goto LABEL_20;
          }

          _s24EvaluationDefinitionThinO24TaskStatementOutcomeThinOMa(0);
          sub_22BB95B78();
          sub_22BD0B918(v94);
          v95 = v141;
          sub_22BBC7880();
          sub_22BDBB584();
          v96 = v153;
          swift_unknownObjectRelease();
          (*(v77 + 8))(v62, v95);
          v107 = *(v96 + 8);
          v108 = sub_22BB34614();
          v109(v108);
          swift_storeEnumTagMultiPayload();
          sub_22BB35738();
          sub_22BB8B698();
          sub_22BD05488(v110, v96 + 8);
          v111 = v157;
          goto LABEL_25;
        case 5:
          sub_22BBC0278();
          sub_22BD0F278();
          sub_22BB3B3D0();
          sub_22BDBB554();
          if (v78)
          {
            goto LABEL_20;
          }

          swift_unknownObjectRelease();
          v103 = sub_22BB34F2C();
          v104(v103, v79);
          v105 = sub_22BB720A0();
          v106(v105, v63);
          sub_22BB8B698();
          sub_22BB53C48();
          swift_storeEnumTagMultiPayload();
          goto LABEL_24;
        default:
          sub_22BD0F41C();
          sub_22BB3B3D0();
          sub_22BDBB554();
          if (v78)
          {
LABEL_20:
            v101 = sub_22BB720A0();
            v102(v101, v63);
            swift_unknownObjectRelease();
            goto LABEL_9;
          }

          v80 = _s24EvaluationDefinitionThinO27StatementSuccessOutcomeThinVMa(0);
          sub_22BB368C4();
          sub_22BD0B918(v81);
          sub_22BB330B0();
          sub_22BDBB5D4();
          sub_22BD10FA0();
          swift_unknownObjectRelease();
          v122 = sub_22BB3AF90();
          v123(v122);
          v124 = *(v80 + 8);
          v125 = sub_22BB34614();
          v126(v125);
          sub_22BB500C0();
LABEL_22:
          swift_storeEnumTagMultiPayload();
          sub_22BB35738();
LABEL_23:
          sub_22BB8B698();
          sub_22BD05488(v132, v72);
LABEL_24:
          v111 = v157;
LABEL_25:
          sub_22BB35738();
          v133 = sub_22BB393C4();
          sub_22BD05488(v133, v134);
          v93 = v111;
          break;
      }

      goto LABEL_10;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_22BD09590(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x800000022BDD3390 == a2;
  if (v3 || (sub_22BB32E28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022BDD33B0 == a2)
  {

    return 1;
  }

  else
  {
    sub_22BB32E28();
    sub_22BBC05FC();
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

void sub_22BD09648()
{
  sub_22BB31014();
  v44 = v0;
  v4 = v3;
  v5 = sub_22BBE6DE0(&qword_27D8E58A8, &qword_22BDCA888);
  sub_22BB30444(v5);
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  sub_22BB30BA8();
  sub_22BD10F3C(v9);
  v10 = sub_22BBE6DE0(&qword_27D8E58B0, &qword_22BDCA890);
  sub_22BB30444(v10);
  v12 = *(v11 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v13);
  sub_22BB340F4(v14, v42);
  v43 = _s24EvaluationDefinitionThinO28StatementExecutionResultThinOMa(0);
  v15 = sub_22BB2F330(v43);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BB30574();
  v18 = sub_22BB3848C();
  v19 = _s24EvaluationDefinitionThinO23EvaluatorVoteSourceThinOMa(v18);
  v20 = sub_22BB2F330(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BB30574();
  sub_22BB36858();
  v23 = sub_22BBE6DE0(&qword_27D8E58B8, &qword_22BDCA898);
  sub_22BB30444(v23);
  v25 = v24;
  v27 = *(v26 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v28);
  sub_22BB52928();
  v29 = *(v4 + 24);
  v30 = *(v4 + 32);
  v31 = sub_22BB393C4();
  sub_22BB699E4(v31, v32);
  sub_22BD0F128();
  sub_22BB75690();
  sub_22BD05500(v44, v1);
  sub_22BB37074();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *v1;
    sub_22BB75960();
    sub_22BD0F17C();
    sub_22BB31D34();
    sub_22BDBB5F4();
    sub_22BD0D444();
    sub_22BD1105C();
    v34 = sub_22BB397A4();
    v35(v34, v1);
  }

  else
  {
    sub_22BD05488(v1, v2);
    sub_22BD0F1D0();
    sub_22BB31D34();
    sub_22BDBB5F4();
    sub_22BB51348();
    sub_22BD0B918(v36);
    sub_22BD10F74();
    v37 = sub_22BB3AB0C();
    v38(v37, v1);
    sub_22BD05430(v2, _s24EvaluationDefinitionThinO28StatementExecutionResultThinOMa);
  }

  v39 = *(v25 + 8);
  v40 = sub_22BB89D18();
  v41(v40);
  sub_22BB3A204();
  sub_22BB376A8();
}

void sub_22BD09998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_22BB31014();
  v13 = v12;
  v71 = v14;
  v72 = sub_22BBE6DE0(&qword_27D8E5870, &qword_22BDCA870);
  sub_22BB30444(v72);
  v73 = v15;
  v17 = *(v16 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v18);
  sub_22BB30BA8();
  sub_22BB8AD78(v19);
  v20 = sub_22BBE6DE0(&qword_27D8E5878, &qword_22BDCA878);
  sub_22BB30444(v20);
  v22 = *(v21 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v23);
  sub_22BB37048(v24, v68);
  v25 = sub_22BBE6DE0(&qword_27D8E5880, &qword_22BDCA880);
  sub_22BB30444(v25);
  v74 = v26;
  v28 = *(v27 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v29);
  v30 = sub_22BB391AC();
  v31 = _s24EvaluationDefinitionThinO23EvaluatorVoteSourceThinOMa(v30);
  v32 = sub_22BB2F330(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BB30C74();
  sub_22BB3B5E8();
  MEMORY[0x28223BE20](v35);
  sub_22BB89894();
  MEMORY[0x28223BE20](v36);
  sub_22BB69750();
  v37 = v13[3];
  sub_22BB699E4(v13, v37);
  sub_22BD0F128();
  sub_22BB75564();
  sub_22BDBB894();
  if (!v11)
  {
    v38 = sub_22BB3DE64();
    sub_22BD006D0(v38, 0);
    sub_22BB8B6D8();
    if (v39)
    {
      goto LABEL_9;
    }

    sub_22BB2F4F4();
    if (v42 == v43)
    {
      __break(1u);
      return;
    }

    v44 = sub_22BB3A47C(v40, v41);
    sub_22BD006A8(v44);
    sub_22BBBEB8C();
    if (v37)
    {
LABEL_9:
      v45 = sub_22BDBB3A4();
      sub_22BB31A08();
      v47 = v46;
      v48 = sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
      sub_22BD11104(v48);
      sub_22BB36D74();
      v49 = *MEMORY[0x277D84160];
      sub_22BB30474(v45);
      (*(v50 + 104))(v47);
      swift_willThrow();
      swift_unknownObjectRelease();
      v51 = sub_22BB3B088();
      v52(v51, v10);
    }

    else
    {
      if (a10)
      {
        sub_22BB75960();
        sub_22BD0F17C();
        sub_22BB35FDC();
        sub_22BDBB554();
        if (!v31)
        {
          sub_22BD0D39C();
          sub_22BD10FB0();
          swift_unknownObjectRelease();
          v57 = *(v73 + 8);
          v58 = sub_22BB500C0();
          v59(v58);
          v60 = sub_22BB334FC();
          v61(v60);
          sub_22BD11014();
          sub_22BB34370();
          v62 = v70;
LABEL_16:
          sub_22BD05488(v62, v69);
          sub_22BB34370();
          sub_22BD05488(v69, v71);
          v53 = 0;
          goto LABEL_12;
        }
      }

      else
      {
        sub_22BD0F1D0();
        sub_22BB35FDC();
        sub_22BDBB554();
        if (!v31)
        {
          _s24EvaluationDefinitionThinO28StatementExecutionResultThinOMa(0);
          sub_22BB51348();
          sub_22BD0B918(v56);
          sub_22BB68F34();
          swift_unknownObjectRelease();
          v63 = sub_22BB73BBC();
          v64(v63);
          v65 = *(v74 + 8);
          v66 = sub_22BB31528();
          v67(v66);
          swift_storeEnumTagMultiPayload();
          sub_22BB34370();
          v62 = v73;
          goto LABEL_16;
        }
      }

      v54 = sub_22BB334FC();
      v55(v54);
      swift_unknownObjectRelease();
    }

    v13 = 0;
  }

  v53 = v13;
LABEL_12:
  sub_22BB32FA4(v53);
  sub_22BB376A8();
}

uint64_t sub_22BD09E88(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702129526 && a2 == 0xE400000000000000;
  if (v3 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656372756F73 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22BDBB6D4();

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

uint64_t sub_22BD09F50(char a1)
{
  if (a1)
  {
    return 0x73656372756F73;
  }

  else
  {
    return 1702129526;
  }
}

void sub_22BD09F80()
{
  sub_22BB31014();
  v2 = v1;
  v3 = sub_22BBE6DE0(&qword_27D8E5BF0, &qword_22BDCBA20);
  sub_22BB30444(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  sub_22BB36858();
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = sub_22BB8AB74();
  sub_22BB699E4(v11, v12);
  sub_22BD10B6C();
  sub_22BB697A8();
  sub_22BDBB8A4();
  sub_22BD10C9C();
  sub_22BDBB664();
  if (!v0)
  {
    sub_22BBE6DE0(&qword_27D8E5BD8, &qword_22BDCBA18);
    sub_22BD10C14(&unk_27D8E5C00);
    sub_22BB3B7E4();
    sub_22BDBB664();
  }

  v13 = *(v5 + 8);
  v14 = sub_22BB37074();
  v15(v14);
  sub_22BB89E24();
  sub_22BB376A8();
}

uint64_t sub_22BD0A120(uint64_t *a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E5BC0, &qword_22BDCBA10);
  sub_22BB30444(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB32750();
  v8 = a1[3];
  v9 = a1[4];
  v10 = sub_22BB3B528();
  sub_22BB699E4(v10, v11);
  sub_22BD10B6C();
  sub_22BBBDEA4();
  sub_22BC8DAAC();
  sub_22BDBB894();
  sub_22BD10BC0();
  sub_22BB32800();
  sub_22BDBB5D4();
  sub_22BBE6DE0(&qword_27D8E5BD8, &qword_22BDCBA18);
  sub_22BD10C14(&unk_27D8E5BE0);
  sub_22BDBB5D4();
  v12 = *(v4 + 8);
  v13 = sub_22BB52D78();
  v14(v13);
  sub_22BB32FA4(a1);
  return v16;
}

uint64_t sub_22BD0A310(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F7461756C617665 && a2 == 0xED00006570795472;
  if (v4 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D6F6374756FLL && a2 == 0xE700000000000000;
    if (v6 || (sub_22BDBB6D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x75626972746E6F63 && a2 == 0xEC00000073726F74)
    {

      return 2;
    }

    else
    {
      v8 = sub_22BDBB6D4();

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

uint64_t sub_22BD0A42C(char a1)
{
  if (!a1)
  {
    return 0x6F7461756C617665;
  }

  if (a1 == 1)
  {
    return 0x656D6F6374756FLL;
  }

  return 0x75626972746E6F63;
}

void sub_22BD0A498()
{
  sub_22BB31014();
  v2 = v1;
  v3 = sub_22BBE6DE0(&qword_27D8E5A28, qword_22BDCA968);
  sub_22BB30444(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  sub_22BB36858();
  v9 = v2[4];
  sub_22BB699E4(v2, v2[3]);
  sub_22BD0F5C0();
  sub_22BB697A8();
  sub_22BDBB8A4();
  sub_22BD0F6BC();
  sub_22BB75728();
  if (!v0)
  {
    sub_22BB75960();
    sub_22BD0F710();
    sub_22BB75728();
    sub_22BB3CF44();
    sub_22BBE6DE0(&qword_27D8E5A18, &qword_22BDCA960);
    sub_22BD0F764(&unk_27D8E5A40);
    sub_22BB3B7E4();
    sub_22BDBB664();
  }

  v10 = *(v5 + 8);
  v11 = sub_22BB37074();
  v12(v11);
  sub_22BB89E24();
  sub_22BB376A8();
}

void sub_22BD0A654()
{
  sub_22BB31014();
  v1 = v0;
  v2 = sub_22BBE6DE0(&qword_27D8E59F8, &qword_22BDCA958);
  sub_22BB30444(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB32750();
  v8 = v1[3];
  v9 = v1[4];
  v10 = sub_22BB3B528();
  sub_22BB699E4(v10, v11);
  sub_22BD0F5C0();
  sub_22BBBDEA4();
  sub_22BC8DAAC();
  sub_22BDBB894();
  sub_22BD0F614();
  sub_22BB354EC();
  sub_22BDBB5D4();
  sub_22BB75960();
  sub_22BD0F668();
  sub_22BB354EC();
  sub_22BDBB5D4();
  sub_22BBE6DE0(&qword_27D8E5A18, &qword_22BDCA960);
  sub_22BB3CF44();
  sub_22BD0F764(&unk_27D8E5A20);
  sub_22BBB79C8();
  sub_22BDBB5D4();
  v12 = *(v4 + 8);
  v13 = sub_22BB3FBBC();
  v14(v13);
  sub_22BB32FA4(v1);
  sub_22BB376A8();
}

uint64_t sub_22BD0A878(uint64_t a1)
{
  v2 = sub_22BD0D000();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0A8B4(uint64_t a1)
{
  v2 = sub_22BD0D000();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0A8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BD016C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BD0A920(uint64_t a1)
{
  v2 = sub_22BD0BB60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0A95C(uint64_t a1)
{
  v2 = sub_22BD0BB60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0A998(uint64_t a1)
{
  v2 = sub_22BD0D054();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0A9D4(uint64_t a1)
{
  v2 = sub_22BD0D054();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0AA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BD021DC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BD0AA70(uint64_t a1)
{
  v2 = sub_22BD0D0FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0AAAC(uint64_t a1)
{
  v2 = sub_22BD0D0FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0AB1C(uint64_t a1)
{
  v2 = sub_22BD0D0A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0AB58(uint64_t a1)
{
  v2 = sub_22BD0D0A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0AC08(uint64_t a1)
{
  v2 = sub_22BD0D150();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0AC44(uint64_t a1)
{
  v2 = sub_22BD0D150();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0ACF4(uint64_t a1)
{
  v2 = sub_22BD0D1A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0AD30(uint64_t a1)
{
  v2 = sub_22BD0D1A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0AD6C(uint64_t a1)
{
  v2 = sub_22BD0D2A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0ADA8(uint64_t a1)
{
  v2 = sub_22BD0D2A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0ADE4(uint64_t a1)
{
  v2 = sub_22BD0D1F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0AE20(uint64_t a1)
{
  v2 = sub_22BD0D1F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0AE5C(uint64_t a1)
{
  v2 = sub_22BD0D24C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0AE98(uint64_t a1)
{
  v2 = sub_22BD0D24C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0AF08(uint64_t a1)
{
  v2 = sub_22BD0D348();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0AF44(uint64_t a1)
{
  v2 = sub_22BD0D348();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0AF80(uint64_t a1)
{
  v2 = sub_22BD0D2F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0AFBC(uint64_t a1)
{
  v2 = sub_22BD0D2F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0AFF8(uint64_t a1)
{
  v2 = sub_22BD0D3F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0B034(uint64_t a1)
{
  v2 = sub_22BD0D3F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0B0C4()
{
  result = sub_22BDB4C34();
  if (v1 <= 0x3F)
  {
    result = sub_22BDB43E4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BD0B1A0()
{
  result = _s28StatementResolutionReferenceOMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BD0B24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = _s28StatementResolutionReferenceOMa(319);
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22BD0B308()
{
  _s23StatementSuccessOutcomeVMa(319);
  if (v0 <= 0x3F)
  {
    sub_22BD0B46C(319, &qword_27D8E5370, _s23StatementCreatedOutcomeVMa);
    if (v1 <= 0x3F)
    {
      _s23StatementFailureOutcomeVMa(319);
      if (v2 <= 0x3F)
      {
        sub_22BD0B3F0();
        if (v3 <= 0x3F)
        {
          sub_22BD0B46C(319, &qword_27D8E5380, _s20TaskStatementOutcomeOMa);
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22BD0B3F0()
{
  if (!qword_27D8E5378)
  {
    sub_22BBEB2E0(&qword_27D8E3DB8, &qword_22BDC1150);
    sub_22BDB8294();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8E5378);
    }
  }
}

void sub_22BD0B46C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22BDBB254();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22BD0B4C0(uint64_t a1)
{
  v2 = sub_22BD0D540();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0B4FC(uint64_t a1)
{
  v2 = sub_22BD0D540();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0B538(uint64_t a1)
{
  v2 = sub_22BD0D498();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0B574(uint64_t a1)
{
  v2 = sub_22BD0D498();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0B5B0(uint64_t a1)
{
  v2 = sub_22BD0D690();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0B5EC(uint64_t a1)
{
  v2 = sub_22BD0D690();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0B630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BD05558(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BD0B658(uint64_t a1)
{
  v2 = sub_22BD0D594();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0B694(uint64_t a1)
{
  v2 = sub_22BD0D594();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0B6D0(uint64_t a1)
{
  v2 = sub_22BD0D63C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0B70C(uint64_t a1)
{
  v2 = sub_22BD0D63C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0B748(uint64_t a1)
{
  v2 = sub_22BD0D5E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0B784(uint64_t a1)
{
  v2 = sub_22BD0D5E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0B7C0(uint64_t a1)
{
  v2 = sub_22BD0D4EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0B7FC(uint64_t a1)
{
  v2 = sub_22BD0D4EC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_22BD0B86C(void *a1)
{
  a1[1] = sub_22BD0B918(&unk_27D8E5388);
  a1[2] = sub_22BD0B918(&unk_27D8E5390);
  result = sub_22BD0B918(&unk_27D8E5398);
  a1[3] = result;
  return result;
}

unint64_t sub_22BD0B918(uint64_t a1)
{
  result = sub_22BBBEE20(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_22BD0B95C(void *a1)
{
  a1[1] = sub_22BD0B918(&unk_27D8E53A0);
  a1[2] = sub_22BD0B918(&unk_27D8E53A8);
  result = sub_22BD0B918(&unk_27D8E53B0);
  a1[3] = result;
  return result;
}

unint64_t sub_22BD0BA08(void *a1)
{
  a1[1] = sub_22BD0B918(&unk_27D8E53B8);
  a1[2] = sub_22BD0B918(&unk_27D8E53C0);
  result = sub_22BD0B918(&unk_27D8E53C8);
  a1[3] = result;
  return result;
}

unint64_t sub_22BD0BAB4(void *a1)
{
  a1[1] = sub_22BD0B918(&unk_27D8E53D0);
  a1[2] = sub_22BD0B918(&unk_27D8E53D8);
  result = sub_22BD0B918(&unk_27D8E53E0);
  a1[3] = result;
  return result;
}

unint64_t sub_22BD0BB60()
{
  result = qword_27D8E5400;
  if (!qword_27D8E5400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5400);
  }

  return result;
}

uint64_t sub_22BD0BBB4(uint64_t a1)
{
  v2 = sub_22BD0F04C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0BBF0(uint64_t a1)
{
  v2 = sub_22BD0F04C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0BC5C(uint64_t a1)
{
  v2 = sub_22BD0F470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0BC98(uint64_t a1)
{
  v2 = sub_22BD0F470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0BCD4(uint64_t a1)
{
  v2 = sub_22BD0F56C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0BD10(uint64_t a1)
{
  v2 = sub_22BD0F56C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0BD4C(uint64_t a1)
{
  v2 = sub_22BD0F4C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0BD88(uint64_t a1)
{
  v2 = sub_22BD0F4C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0BDC4(uint64_t a1)
{
  v2 = sub_22BD0F518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0BE00(uint64_t a1)
{
  v2 = sub_22BD0F518();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0BE6C(uint64_t a1)
{
  v2 = sub_22BD0F2CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0BEA8(uint64_t a1)
{
  v2 = sub_22BD0F2CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0BEE4(uint64_t a1)
{
  v2 = sub_22BD0F224();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0BF20(uint64_t a1)
{
  v2 = sub_22BD0F224();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0BF5C(uint64_t a1)
{
  v2 = sub_22BD0F41C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0BF98(uint64_t a1)
{
  v2 = sub_22BD0F41C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0BFD4(uint64_t a1)
{
  v2 = sub_22BD0F320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0C010(uint64_t a1)
{
  v2 = sub_22BD0F320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0C04C(uint64_t a1)
{
  v2 = sub_22BD0F3C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0C088(uint64_t a1)
{
  v2 = sub_22BD0F3C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0C0C4(uint64_t a1)
{
  v2 = sub_22BD0F374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0C100(uint64_t a1)
{
  v2 = sub_22BD0F374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0C13C(uint64_t a1)
{
  v2 = sub_22BD0F278();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0C178(uint64_t a1)
{
  v2 = sub_22BD0F278();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0C1E4(uint64_t a1)
{
  v2 = sub_22BD0F17C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0C220(uint64_t a1)
{
  v2 = sub_22BD0F17C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0C25C(uint64_t a1)
{
  v2 = sub_22BD0F128();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0C298(uint64_t a1)
{
  v2 = sub_22BD0F128();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0C2D4(uint64_t a1)
{
  v2 = sub_22BD0F1D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0C310(uint64_t a1)
{
  v2 = sub_22BD0F1D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0C384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BD09E88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BD0C3AC(uint64_t a1)
{
  v2 = sub_22BD10B6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0C3E8(uint64_t a1)
{
  v2 = sub_22BD10B6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD0C424@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22BD0A120(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

void sub_22BD0C454()
{
  v1 = *(v0 + 1);
  v2 = *v0;
  sub_22BD09F80();
}

uint64_t sub_22BD0C47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BD0A310(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BD0C4A4(uint64_t a1)
{
  v2 = sub_22BD0F5C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD0C4E0(uint64_t a1)
{
  v2 = sub_22BD0F5C0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22BD0C51C(uint64_t a1@<X8>)
{
  sub_22BD0A654();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
  }
}

void sub_22BD0C550()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = v0[8];
  v4 = *v0;
  sub_22BD0A498();
}

void sub_22BD0C574()
{
  sub_22BB30F94();
  v3 = v2;
  v5 = v4;
  v6 = _s23ParameterCandidateValueVMa(0);
  v7 = sub_22BB30444(v6);
  v46 = v8;
  v48 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  sub_22BB36858();
  v11 = sub_22BDB7B44();
  v12 = sub_22BB30444(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BB30574();
  sub_22BB3ABC8();
  v17 = sub_22BDBA594();
  v18 = sub_22BB30444(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB30574();
  v25 = v24 - v23;
  v26 = _s28StatementResolutionReferenceOMa(0);
  v27 = sub_22BB2F0C8(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BB30574();
  sub_22BB31170();
  v45 = v30;
  sub_22BD05500(v3, v30);
  v31 = v3 + *(_s23StatementSuccessOutcomeVMa(0) + 20);
  sub_22BDB4DF4();
  sub_22BCB3AC0();
  v33 = v32;
  (*(v20 + 8))(v25, v17);
  if (v33)
  {
    v34 = *(v33 + 16);
    if (v34)
    {
      v44 = v5;
      v49 = MEMORY[0x277D84F90];
      v35 = v33;
      sub_22BD27D08();
      v33 = v49;
      v36 = *(v46 + 80);
      sub_22BB2F390();
      v38 = v35 + v37;
      v47 = *(v39 + 72);
      do
      {
        sub_22BD05500(v38, v0);
        (*(v14 + 16))(v1, v0 + *(v48 + 20), v11);
        sub_22BD05430(v0, _s23ParameterCandidateValueVMa);
        v40 = v11;
        v41 = *(v49 + 16);
        if (v41 >= *(v49 + 24) >> 1)
        {
          sub_22BD27D08();
        }

        *(v49 + 16) = v41 + 1;
        v42 = *(v14 + 80);
        sub_22BB2F390();
        (*(v14 + 32))(v49 + v43 + *(v14 + 72) * v41, v1, v40);
        v38 += v47;
        --v34;
        v11 = v40;
      }

      while (v34);

      v5 = v44;
    }

    else
    {

      v33 = MEMORY[0x277D84F90];
    }
  }

  sub_22BB30D74();
  sub_22BD05488(v45, v5);
  *(v5 + *(_s24EvaluationDefinitionThinO27StatementSuccessOutcomeThinVMa(0) + 20)) = v33;
  sub_22BB314EC();
}

void sub_22BD0C8D0()
{
  sub_22BB30F94();
  v3 = v2;
  v5 = v4;
  v100 = _s24EvaluationDefinitionThinO24TaskStatementOutcomeThinOMa(0);
  v6 = sub_22BB2F330(v100);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB305A8();
  v93 = v9;
  v10 = sub_22BB2F120();
  v99 = _s20TaskStatementOutcomeOMa(v10);
  v11 = sub_22BB2F330(v99);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30560();
  v96 = v14;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v15);
  sub_22BB2F39C();
  v95 = v16;
  v17 = sub_22BBE6DE0(&qword_27D8E4318, &unk_22BDC2E90);
  v18 = sub_22BB2F0C8(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB30560();
  v98 = v21;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v22);
  sub_22BB2F39C();
  v101 = v23;
  v24 = sub_22BB2F120();
  v25 = _s23StatementSuccessOutcomeVMa(v24);
  v26 = sub_22BB2F0C8(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BB305A8();
  v97 = v29;
  v30 = sub_22BB2F120();
  v103 = _s24EvaluationDefinitionThinO28StatementExecutionResultThinOMa(v30);
  v31 = sub_22BB2F330(v103);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BB305A8();
  v109 = v34;
  v35 = sub_22BB2F120();
  v102 = _s24StatementExecutionResultOMa(v35);
  v36 = sub_22BB2F330(v102);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22BB30560();
  v104 = v39;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v40);
  sub_22BB2F39C();
  v108 = v41;
  v42 = sub_22BB2F120();
  v107 = _s19EvaluatorVoteSourceOMa(v42);
  v43 = sub_22BB30444(v107);
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  sub_22BB30C74();
  sub_22BB3B5E8();
  MEMORY[0x28223BE20](v48);
  v50 = v92 - v49;
  v106 = _s24EvaluationDefinitionThinO23EvaluatorVoteSourceThinOMa(0);
  v51 = sub_22BB30444(v106);
  v53 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22BB30C74();
  v58 = (v56 - v57);
  MEMORY[0x28223BE20](v59);
  sub_22BB69750();
  v60 = *(v3 + 16);
  if (v60)
  {
    v92[1] = v5;
    v110 = MEMORY[0x277D84F90];
    sub_22BD28460();
    v61 = v110;
    v62 = *(v45 + 80);
    sub_22BB2F390();
    v64 = v3 + v63;
    v105 = *(v45 + 72);
    v94 = v0;
    do
    {
      sub_22BD05500(v64, v50);
      sub_22BD05500(v50, v1);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_22BB3ADB4();
        sub_22BD05430(v50, v65);
        *v58 = *v1;
      }

      else
      {
        sub_22BB362E8();
        v66 = v108;
        sub_22BD05488(v1, v108);
        sub_22BB36644();
        sub_22BD05500(v66, v104);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v68 = v109;
        switch(EnumCaseMultiPayload)
        {
          case 1:
            sub_22BC8D26C();
            sub_22BD10FD8();
            goto LABEL_20;
          case 2:
            sub_22BB69AF0();
            sub_22BD05488(v104, v68);
            sub_22BD10FD8();
            goto LABEL_20;
          case 3:
            v78 = *(sub_22BBE6DE0(&qword_27D8E3DB0, &qword_22BDC1148) + 48);
            v79 = v104;
            sub_22BC8D26C();
            swift_storeEnumTagMultiPayload();
            v80 = sub_22BDB8294();
            sub_22BB2F330(v80);
            (*(v81 + 8))(v79 + v78);
            goto LABEL_21;
          case 4:
            sub_22BC8D26C();
            v71 = v98;
            v0 = v94;
            sub_22BC5E5C4();
            v72 = 1;
            if (sub_22BB3AA28(v71, 1, v99) == 1)
            {
              goto LABEL_19;
            }

            sub_22BB351A8();
            v73 = v95;
            sub_22BD05488(v98, v95);
            sub_22BB372D8();
            sub_22BD05500(v73, v96);
            v74 = swift_getEnumCaseMultiPayload();
            if (v74)
            {
              v75 = v93;
              if (v74 == 1)
              {
                sub_22BB36E1C();
                v92[0] = 1;
                v76 = v97;
                sub_22BD05488(v96, v97);
                sub_22BD0C574();
                sub_22BB35B78();
                sub_22BD05430(v76, v77);
                goto LABEL_18;
              }

              sub_22BB69AF0();
              v82 = v96;
            }

            else
            {
              sub_22BB377F8();
              v82 = v96;
              v75 = v93;
            }

            sub_22BD05488(v82, v75);
LABEL_18:
            swift_storeEnumTagMultiPayload();
            sub_22BD05488(v75, v109);
            sub_22BB3A6E4();
            sub_22BD05430(v95, v83);
            v72 = 0;
LABEL_19:
            sub_22BB58728(v101, &qword_27D8E4318, &unk_22BDC2E90);
            sub_22BB336D0(v109, v72, 1, v100);
            sub_22BD10FD8();
LABEL_20:
            swift_storeEnumTagMultiPayload();
LABEL_21:
            sub_22BB35738();
            v84 = sub_22BB3AAD8();
            sub_22BD05488(v84, v85);
            sub_22BB32398();
            sub_22BD05430(v108, v86);
            sub_22BB3ADB4();
            sub_22BD05430(v50, v87);
            break;
          case 5:
            sub_22BD10FD8();
            goto LABEL_20;
          default:
            sub_22BB36E1C();
            v69 = v97;
            sub_22BD05488(v104, v97);
            sub_22BD0C574();
            sub_22BB35B78();
            sub_22BD05430(v69, v70);
            sub_22BD10FD8();
            goto LABEL_20;
        }
      }

      swift_storeEnumTagMultiPayload();
      sub_22BB34370();
      sub_22BD05488(v58, v0);
      v110 = v61;
      v88 = *(v61 + 16);
      if (v88 >= *(v61 + 24) >> 1)
      {
        sub_22BD28460();
        v61 = v110;
      }

      *(v61 + 16) = v88 + 1;
      v89 = *(v53 + 80);
      sub_22BB2F390();
      v90 = *(v53 + 72);
      sub_22BB34370();
      sub_22BD05488(v0, v91);
      v64 += v105;
      --v60;
    }

    while (v60);
  }

  sub_22BB314EC();
}

unint64_t sub_22BD0D000()
{
  result = qword_27D8E5408;
  if (!qword_27D8E5408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5408);
  }

  return result;
}

unint64_t sub_22BD0D054()
{
  result = qword_27D8E5410;
  if (!qword_27D8E5410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5410);
  }

  return result;
}

unint64_t sub_22BD0D0A8()
{
  result = qword_27D8E5438;
  if (!qword_27D8E5438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5438);
  }

  return result;
}

unint64_t sub_22BD0D0FC()
{
  result = qword_27D8E5470;
  if (!qword_27D8E5470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5470);
  }

  return result;
}

unint64_t sub_22BD0D150()
{
  result = qword_27D8E5488;
  if (!qword_27D8E5488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5488);
  }

  return result;
}

unint64_t sub_22BD0D1A4()
{
  result = qword_27D8E54C8;
  if (!qword_27D8E54C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E54C8);
  }

  return result;
}

unint64_t sub_22BD0D1F8()
{
  result = qword_27D8E54D0;
  if (!qword_27D8E54D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E54D0);
  }

  return result;
}

unint64_t sub_22BD0D24C()
{
  result = qword_27D8E54D8;
  if (!qword_27D8E54D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E54D8);
  }

  return result;
}

unint64_t sub_22BD0D2A0()
{
  result = qword_27D8E54E0;
  if (!qword_27D8E54E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E54E0);
  }

  return result;
}

unint64_t sub_22BD0D2F4()
{
  result = qword_27D8E5520;
  if (!qword_27D8E5520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5520);
  }

  return result;
}

unint64_t sub_22BD0D348()
{
  result = qword_27D8E5528;
  if (!qword_27D8E5528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5528);
  }

  return result;
}

unint64_t sub_22BD0D39C()
{
  result = qword_27D8E5530;
  if (!qword_27D8E5530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5530);
  }

  return result;
}

unint64_t sub_22BD0D3F0()
{
  result = qword_27D8E5538;
  if (!qword_27D8E5538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5538);
  }

  return result;
}

unint64_t sub_22BD0D444()
{
  result = qword_27D8E5560;
  if (!qword_27D8E5560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5560);
  }

  return result;
}

unint64_t sub_22BD0D498()
{
  result = qword_27D8E55A8;
  if (!qword_27D8E55A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E55A8);
  }

  return result;
}

unint64_t sub_22BD0D4EC()
{
  result = qword_27D8E55B0;
  if (!qword_27D8E55B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E55B0);
  }

  return result;
}

unint64_t sub_22BD0D540()
{
  result = qword_27D8E55B8;
  if (!qword_27D8E55B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E55B8);
  }

  return result;
}

unint64_t sub_22BD0D594()
{
  result = qword_27D8E55C0;
  if (!qword_27D8E55C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E55C0);
  }

  return result;
}

unint64_t sub_22BD0D5E8()
{
  result = qword_27D8E55C8;
  if (!qword_27D8E55C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E55C8);
  }

  return result;
}

unint64_t sub_22BD0D63C()
{
  result = qword_27D8E55D0;
  if (!qword_27D8E55D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E55D0);
  }

  return result;
}

unint64_t sub_22BD0D690()
{
  result = qword_27D8E55D8;
  if (!qword_27D8E55D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E55D8);
  }

  return result;
}

void sub_22BD0D7A4()
{
  if (!qword_27D8E5628)
  {
    sub_22BBEB2E0(&qword_27D8E5630, &unk_22BDC9030);
    v0 = sub_22BDBB254();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8E5628);
    }
  }
}

uint64_t sub_22BD0D820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BD0D88C()
{
  v0 = _s24EvaluationDefinitionThinO27StatementSuccessOutcomeThinVMa(319);
  if (v1 <= 0x3F)
  {
    sub_22BD0B46C(319, &qword_27D8E5370, _s23StatementCreatedOutcomeVMa);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      v4 = _s23StatementFailureOutcomeVMa(319);
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        sub_22BD0B46C(319, &qword_27D8E5658, _s24EvaluationDefinitionThinO24TaskStatementOutcomeThinOMa);
        v0 = v6;
        if (v7 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v0;
}

uint64_t sub_22BD0D994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = _s23StatementCreatedOutcomeVMa(319);
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      result = _s23StatementFailureOutcomeVMa(319);
      if (v8 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22BD0DA34(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_22BD0DA74(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_22BD0DC08()
{
  result = qword_27D8E5670;
  if (!qword_27D8E5670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5670);
  }

  return result;
}

unint64_t sub_22BD0DC60()
{
  result = qword_27D8E5678;
  if (!qword_27D8E5678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5678);
  }

  return result;
}

unint64_t sub_22BD0DCB8()
{
  result = qword_27D8E5680;
  if (!qword_27D8E5680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5680);
  }

  return result;
}

unint64_t sub_22BD0DD10()
{
  result = qword_27D8E5688;
  if (!qword_27D8E5688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5688);
  }

  return result;
}

unint64_t sub_22BD0DD68()
{
  result = qword_27D8E5690;
  if (!qword_27D8E5690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5690);
  }

  return result;
}

unint64_t sub_22BD0DDC0()
{
  result = qword_27D8E5698;
  if (!qword_27D8E5698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5698);
  }

  return result;
}

unint64_t sub_22BD0DE18()
{
  result = qword_27D8E56A0;
  if (!qword_27D8E56A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E56A0);
  }

  return result;
}

unint64_t sub_22BD0DE70()
{
  result = qword_27D8E56A8;
  if (!qword_27D8E56A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E56A8);
  }

  return result;
}

unint64_t sub_22BD0DEC8()
{
  result = qword_27D8E56B0;
  if (!qword_27D8E56B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E56B0);
  }

  return result;
}

unint64_t sub_22BD0DF20()
{
  result = qword_27D8E56B8;
  if (!qword_27D8E56B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E56B8);
  }

  return result;
}

unint64_t sub_22BD0DF78()
{
  result = qword_27D8E56C0;
  if (!qword_27D8E56C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E56C0);
  }

  return result;
}

unint64_t sub_22BD0DFD0()
{
  result = qword_27D8E56C8;
  if (!qword_27D8E56C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E56C8);
  }

  return result;
}

unint64_t sub_22BD0E028()
{
  result = qword_27D8E56D0;
  if (!qword_27D8E56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E56D0);
  }

  return result;
}

unint64_t sub_22BD0E080()
{
  result = qword_27D8E56D8;
  if (!qword_27D8E56D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E56D8);
  }

  return result;
}

unint64_t sub_22BD0E0D8()
{
  result = qword_27D8E56E0;
  if (!qword_27D8E56E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E56E0);
  }

  return result;
}

unint64_t sub_22BD0E130()
{
  result = qword_27D8E56E8;
  if (!qword_27D8E56E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E56E8);
  }

  return result;
}

unint64_t sub_22BD0E188()
{
  result = qword_27D8E56F0;
  if (!qword_27D8E56F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E56F0);
  }

  return result;
}

unint64_t sub_22BD0E1E0()
{
  result = qword_27D8E56F8;
  if (!qword_27D8E56F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E56F8);
  }

  return result;
}

unint64_t sub_22BD0E238()
{
  result = qword_27D8E5700;
  if (!qword_27D8E5700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5700);
  }

  return result;
}

unint64_t sub_22BD0E290()
{
  result = qword_27D8E5708;
  if (!qword_27D8E5708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5708);
  }

  return result;
}

unint64_t sub_22BD0E2E8()
{
  result = qword_27D8E5710;
  if (!qword_27D8E5710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5710);
  }

  return result;
}

unint64_t sub_22BD0E340()
{
  result = qword_27D8E5718;
  if (!qword_27D8E5718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5718);
  }

  return result;
}

unint64_t sub_22BD0E398()
{
  result = qword_27D8E5720;
  if (!qword_27D8E5720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5720);
  }

  return result;
}

unint64_t sub_22BD0E3F0()
{
  result = qword_27D8E5728;
  if (!qword_27D8E5728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5728);
  }

  return result;
}

unint64_t sub_22BD0E448()
{
  result = qword_27D8E5730;
  if (!qword_27D8E5730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5730);
  }

  return result;
}

unint64_t sub_22BD0E4A0()
{
  result = qword_27D8E5738;
  if (!qword_27D8E5738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5738);
  }

  return result;
}

unint64_t sub_22BD0E4F8()
{
  result = qword_27D8E5740;
  if (!qword_27D8E5740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5740);
  }

  return result;
}

unint64_t sub_22BD0E550()
{
  result = qword_27D8E5748;
  if (!qword_27D8E5748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5748);
  }

  return result;
}

unint64_t sub_22BD0E5A8()
{
  result = qword_27D8E5750;
  if (!qword_27D8E5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5750);
  }

  return result;
}

unint64_t sub_22BD0E600()
{
  result = qword_27D8E5758;
  if (!qword_27D8E5758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5758);
  }

  return result;
}

unint64_t sub_22BD0E658()
{
  result = qword_27D8E5760;
  if (!qword_27D8E5760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5760);
  }

  return result;
}

unint64_t sub_22BD0E6B0()
{
  result = qword_27D8E5768;
  if (!qword_27D8E5768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5768);
  }

  return result;
}

unint64_t sub_22BD0E708()
{
  result = qword_27D8E5770;
  if (!qword_27D8E5770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5770);
  }

  return result;
}

unint64_t sub_22BD0E760()
{
  result = qword_27D8E5778;
  if (!qword_27D8E5778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5778);
  }

  return result;
}

unint64_t sub_22BD0E7B8()
{
  result = qword_27D8E5780;
  if (!qword_27D8E5780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5780);
  }

  return result;
}

unint64_t sub_22BD0E810()
{
  result = qword_27D8E5788;
  if (!qword_27D8E5788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5788);
  }

  return result;
}

unint64_t sub_22BD0E868()
{
  result = qword_27D8E5790;
  if (!qword_27D8E5790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5790);
  }

  return result;
}

unint64_t sub_22BD0E8C0()
{
  result = qword_27D8E5798;
  if (!qword_27D8E5798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5798);
  }

  return result;
}

unint64_t sub_22BD0E918()
{
  result = qword_27D8E57A0;
  if (!qword_27D8E57A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E57A0);
  }

  return result;
}

unint64_t sub_22BD0E970()
{
  result = qword_27D8E57A8;
  if (!qword_27D8E57A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E57A8);
  }

  return result;
}

unint64_t sub_22BD0E9C8()
{
  result = qword_27D8E57B0;
  if (!qword_27D8E57B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E57B0);
  }

  return result;
}

unint64_t sub_22BD0EA20()
{
  result = qword_27D8E57B8;
  if (!qword_27D8E57B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E57B8);
  }

  return result;
}

unint64_t sub_22BD0EA78()
{
  result = qword_27D8E57C0;
  if (!qword_27D8E57C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E57C0);
  }

  return result;
}

unint64_t sub_22BD0EAD0()
{
  result = qword_27D8E57C8;
  if (!qword_27D8E57C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E57C8);
  }

  return result;
}

unint64_t sub_22BD0EB28()
{
  result = qword_27D8E57D0;
  if (!qword_27D8E57D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E57D0);
  }

  return result;
}

unint64_t sub_22BD0EB80()
{
  result = qword_27D8E57D8;
  if (!qword_27D8E57D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E57D8);
  }

  return result;
}

unint64_t sub_22BD0EBD8()
{
  result = qword_27D8E57E0;
  if (!qword_27D8E57E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E57E0);
  }

  return result;
}

unint64_t sub_22BD0EC30()
{
  result = qword_27D8E57E8;
  if (!qword_27D8E57E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E57E8);
  }

  return result;
}

unint64_t sub_22BD0EC88()
{
  result = qword_27D8E57F0;
  if (!qword_27D8E57F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E57F0);
  }

  return result;
}

unint64_t sub_22BD0ECE0()
{
  result = qword_27D8E57F8;
  if (!qword_27D8E57F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E57F8);
  }

  return result;
}

unint64_t sub_22BD0ED38()
{
  result = qword_27D8E5800;
  if (!qword_27D8E5800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5800);
  }

  return result;
}

unint64_t sub_22BD0ED90()
{
  result = qword_27D8E5808;
  if (!qword_27D8E5808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5808);
  }

  return result;
}

unint64_t sub_22BD0EDE8()
{
  result = qword_27D8E5810;
  if (!qword_27D8E5810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5810);
  }

  return result;
}

unint64_t sub_22BD0EE40()
{
  result = qword_27D8E5818;
  if (!qword_27D8E5818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5818);
  }

  return result;
}

unint64_t sub_22BD0EE98()
{
  result = qword_27D8E5820;
  if (!qword_27D8E5820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5820);
  }

  return result;
}

unint64_t sub_22BD0EEF0()
{
  result = qword_27D8E5828;
  if (!qword_27D8E5828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5828);
  }

  return result;
}

unint64_t sub_22BD0EF48()
{
  result = qword_27D8E5830;
  if (!qword_27D8E5830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5830);
  }

  return result;
}

unint64_t sub_22BD0EFA0()
{
  result = qword_27D8E5838;
  if (!qword_27D8E5838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5838);
  }

  return result;
}

unint64_t sub_22BD0EFF8()
{
  result = qword_27D8E5840;
  if (!qword_27D8E5840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5840);
  }

  return result;
}

unint64_t sub_22BD0F04C()
{
  result = qword_27D8E5850;
  if (!qword_27D8E5850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5850);
  }

  return result;
}

unint64_t sub_22BD0F0A0(uint64_t a1)
{
  result = sub_22BBBEE20(a1);
  if (!result)
  {
    v4 = v3;
    sub_22BBEB2E0(&qword_27D8E5630, &unk_22BDC9030);
    sub_22BD0B918(v4);
    result = sub_22BD110E4();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_22BD0F128()
{
  result = qword_27D8E5888;
  if (!qword_27D8E5888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5888);
  }

  return result;
}

unint64_t sub_22BD0F17C()
{
  result = qword_27D8E5890;
  if (!qword_27D8E5890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5890);
  }

  return result;
}

unint64_t sub_22BD0F1D0()
{
  result = qword_27D8E5898;
  if (!qword_27D8E5898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5898);
  }

  return result;
}

unint64_t sub_22BD0F224()
{
  result = qword_27D8E5900;
  if (!qword_27D8E5900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5900);
  }

  return result;
}

unint64_t sub_22BD0F278()
{
  result = qword_27D8E5908;
  if (!qword_27D8E5908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5908);
  }

  return result;
}

unint64_t sub_22BD0F2CC()
{
  result = qword_27D8E5910;
  if (!qword_27D8E5910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5910);
  }

  return result;
}

unint64_t sub_22BD0F320()
{
  result = qword_27D8E5920;
  if (!qword_27D8E5920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5920);
  }

  return result;
}

unint64_t sub_22BD0F374()
{
  result = qword_27D8E5928;
  if (!qword_27D8E5928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5928);
  }

  return result;
}

unint64_t sub_22BD0F3C8()
{
  result = qword_27D8E5930;
  if (!qword_27D8E5930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5930);
  }

  return result;
}

unint64_t sub_22BD0F41C()
{
  result = qword_27D8E5938;
  if (!qword_27D8E5938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5938);
  }

  return result;
}

unint64_t sub_22BD0F470()
{
  result = qword_27D8E59B8;
  if (!qword_27D8E59B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E59B8);
  }

  return result;
}

unint64_t sub_22BD0F4C4()
{
  result = qword_27D8E59C0;
  if (!qword_27D8E59C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E59C0);
  }

  return result;
}

unint64_t sub_22BD0F518()
{
  result = qword_27D8E59C8;
  if (!qword_27D8E59C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E59C8);
  }

  return result;
}

unint64_t sub_22BD0F56C()
{
  result = qword_27D8E59D0;
  if (!qword_27D8E59D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E59D0);
  }

  return result;
}

unint64_t sub_22BD0F5C0()
{
  result = qword_27D8E5A00;
  if (!qword_27D8E5A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5A00);
  }

  return result;
}

unint64_t sub_22BD0F614()
{
  result = qword_27D8E5A08;
  if (!qword_27D8E5A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5A08);
  }

  return result;
}

unint64_t sub_22BD0F668()
{
  result = qword_27D8E5A10;
  if (!qword_27D8E5A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5A10);
  }

  return result;
}

unint64_t sub_22BD0F6BC()
{
  result = qword_27D8E5A30;
  if (!qword_27D8E5A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5A30);
  }

  return result;
}

unint64_t sub_22BD0F710()
{
  result = qword_27D8E5A38;
  if (!qword_27D8E5A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5A38);
  }

  return result;
}

unint64_t sub_22BD0F764(uint64_t a1)
{
  result = sub_22BBBEE20(a1);
  if (!result)
  {
    v4 = v3;
    sub_22BBEB2E0(&qword_27D8E5A18, &qword_22BDCA960);
    v4();
    sub_22BB53C48();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *sub_22BD0F7E4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_22BB697A0(result, v6);
        break;
      case 2:
        result = sub_22BB97778(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_22BBC0270(result, v6);
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
          result = sub_22BB75604(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22BD0F8E0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = sub_22BB697A0(result, v6);
        break;
      case 2:
        result = sub_22BB97778(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_22BBC0270(result, v6);
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
          result = sub_22BB75604(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22BD0FA2C(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return sub_22BBB7244(a1);
}

_BYTE *sub_22BD0FA78(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BD0FB48()
{
  result = qword_27D8E5A48;
  if (!qword_27D8E5A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5A48);
  }

  return result;
}

unint64_t sub_22BD0FBA0()
{
  result = qword_27D8E5A50;
  if (!qword_27D8E5A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5A50);
  }

  return result;
}

unint64_t sub_22BD0FBF8()
{
  result = qword_27D8E5A58;
  if (!qword_27D8E5A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5A58);
  }

  return result;
}

unint64_t sub_22BD0FC50()
{
  result = qword_27D8E5A60;
  if (!qword_27D8E5A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5A60);
  }

  return result;
}

unint64_t sub_22BD0FCA8()
{
  result = qword_27D8E5A68;
  if (!qword_27D8E5A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5A68);
  }

  return result;
}

unint64_t sub_22BD0FD00()
{
  result = qword_27D8E5A70;
  if (!qword_27D8E5A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5A70);
  }

  return result;
}

unint64_t sub_22BD0FD58()
{
  result = qword_27D8E5A78;
  if (!qword_27D8E5A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5A78);
  }

  return result;
}

unint64_t sub_22BD0FDB0()
{
  result = qword_27D8E5A80;
  if (!qword_27D8E5A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5A80);
  }

  return result;
}

unint64_t sub_22BD0FE08()
{
  result = qword_27D8E5A88;
  if (!qword_27D8E5A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5A88);
  }

  return result;
}

unint64_t sub_22BD0FE60()
{
  result = qword_27D8E5A90;
  if (!qword_27D8E5A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5A90);
  }

  return result;
}

unint64_t sub_22BD0FEB8()
{
  result = qword_27D8E5A98;
  if (!qword_27D8E5A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5A98);
  }

  return result;
}

unint64_t sub_22BD0FF10()
{
  result = qword_27D8E5AA0;
  if (!qword_27D8E5AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5AA0);
  }

  return result;
}

unint64_t sub_22BD0FF68()
{
  result = qword_27D8E5AA8;
  if (!qword_27D8E5AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5AA8);
  }

  return result;
}

unint64_t sub_22BD0FFC0()
{
  result = qword_27D8E5AB0;
  if (!qword_27D8E5AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5AB0);
  }

  return result;
}

unint64_t sub_22BD10018()
{
  result = qword_27D8E5AB8;
  if (!qword_27D8E5AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5AB8);
  }

  return result;
}

unint64_t sub_22BD10070()
{
  result = qword_27D8E5AC0;
  if (!qword_27D8E5AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5AC0);
  }

  return result;
}

unint64_t sub_22BD100C8()
{
  result = qword_27D8E5AC8;
  if (!qword_27D8E5AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5AC8);
  }

  return result;
}

unint64_t sub_22BD10120()
{
  result = qword_27D8E5AD0;
  if (!qword_27D8E5AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5AD0);
  }

  return result;
}

unint64_t sub_22BD10178()
{
  result = qword_27D8E5AD8;
  if (!qword_27D8E5AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5AD8);
  }

  return result;
}

unint64_t sub_22BD101D0()
{
  result = qword_27D8E5AE0;
  if (!qword_27D8E5AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5AE0);
  }

  return result;
}

unint64_t sub_22BD10228()
{
  result = qword_27D8E5AE8;
  if (!qword_27D8E5AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5AE8);
  }

  return result;
}

unint64_t sub_22BD10280()
{
  result = qword_27D8E5AF0;
  if (!qword_27D8E5AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5AF0);
  }

  return result;
}

unint64_t sub_22BD102D8()
{
  result = qword_27D8E5AF8;
  if (!qword_27D8E5AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5AF8);
  }

  return result;
}

unint64_t sub_22BD10330()
{
  result = qword_27D8E5B00;
  if (!qword_27D8E5B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5B00);
  }

  return result;
}

unint64_t sub_22BD10388()
{
  result = qword_27D8E5B08;
  if (!qword_27D8E5B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5B08);
  }

  return result;
}

unint64_t sub_22BD103E0()
{
  result = qword_27D8E5B10;
  if (!qword_27D8E5B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5B10);
  }

  return result;
}

unint64_t sub_22BD10438()
{
  result = qword_27D8E5B18;
  if (!qword_27D8E5B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5B18);
  }

  return result;
}

unint64_t sub_22BD10490()
{
  result = qword_27D8E5B20;
  if (!qword_27D8E5B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5B20);
  }

  return result;
}

unint64_t sub_22BD104E8()
{
  result = qword_27D8E5B28;
  if (!qword_27D8E5B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5B28);
  }

  return result;
}

unint64_t sub_22BD10540()
{
  result = qword_27D8E5B30;
  if (!qword_27D8E5B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5B30);
  }

  return result;
}

unint64_t sub_22BD10598()
{
  result = qword_27D8E5B38;
  if (!qword_27D8E5B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5B38);
  }

  return result;
}

unint64_t sub_22BD105F0()
{
  result = qword_27D8E5B40;
  if (!qword_27D8E5B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5B40);
  }

  return result;
}

unint64_t sub_22BD10648()
{
  result = qword_27D8E5B48;
  if (!qword_27D8E5B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5B48);
  }

  return result;
}

unint64_t sub_22BD106A0()
{
  result = qword_27D8E5B50;
  if (!qword_27D8E5B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5B50);
  }

  return result;
}

unint64_t sub_22BD106F8()
{
  result = qword_27D8E5B58;
  if (!qword_27D8E5B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5B58);
  }

  return result;
}

unint64_t sub_22BD10750()
{
  result = qword_27D8E5B60;
  if (!qword_27D8E5B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5B60);
  }

  return result;
}

unint64_t sub_22BD107A8()
{
  result = qword_27D8E5B68;
  if (!qword_27D8E5B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5B68);
  }

  return result;
}

unint64_t sub_22BD10800()
{
  result = qword_27D8E5B70;
  if (!qword_27D8E5B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5B70);
  }

  return result;
}

unint64_t sub_22BD10858()
{
  result = qword_27D8E5B78;
  if (!qword_27D8E5B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5B78);
  }

  return result;
}

unint64_t sub_22BD108B0()
{
  result = qword_27D8E5B80;
  if (!qword_27D8E5B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5B80);
  }

  return result;
}

unint64_t sub_22BD10908()
{
  result = qword_27D8E5B88;
  if (!qword_27D8E5B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5B88);
  }

  return result;
}

unint64_t sub_22BD10960()
{
  result = qword_27D8E5B90;
  if (!qword_27D8E5B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5B90);
  }

  return result;
}

unint64_t sub_22BD109B8()
{
  result = qword_27D8E5B98;
  if (!qword_27D8E5B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5B98);
  }

  return result;
}

unint64_t sub_22BD10A10()
{
  result = qword_27D8E5BA0;
  if (!qword_27D8E5BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5BA0);
  }

  return result;
}

unint64_t sub_22BD10A68()
{
  result = qword_27D8E5BA8;
  if (!qword_27D8E5BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5BA8);
  }

  return result;
}

unint64_t sub_22BD10AC0()
{
  result = qword_27D8E5BB0;
  if (!qword_27D8E5BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5BB0);
  }

  return result;
}

unint64_t sub_22BD10B18()
{
  result = qword_27D8E5BB8;
  if (!qword_27D8E5BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5BB8);
  }

  return result;
}

unint64_t sub_22BD10B6C()
{
  result = qword_27D8E5BC8;
  if (!qword_27D8E5BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5BC8);
  }

  return result;
}

unint64_t sub_22BD10BC0()
{
  result = qword_27D8E5BD0;
  if (!qword_27D8E5BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5BD0);
  }

  return result;
}

unint64_t sub_22BD10C14(uint64_t a1)
{
  result = sub_22BBBEE20(a1);
  if (!result)
  {
    v4 = v3;
    sub_22BBEB2E0(&qword_27D8E5BD8, &qword_22BDCBA18);
    sub_22BD0B918(v4);
    result = sub_22BD110E4();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_22BD10C9C()
{
  result = qword_27D8E5BF8;
  if (!qword_27D8E5BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5BF8);
  }

  return result;
}

_BYTE *sub_22BD10CF0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_22BB697A0(result, v6);
        break;
      case 2:
        result = sub_22BB97778(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_22BBC0270(result, v6);
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
          result = sub_22BB75604(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22BD10DC0()
{
  result = qword_27D8E5C10;
  if (!qword_27D8E5C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5C10);
  }

  return result;
}

unint64_t sub_22BD10E18()
{
  result = qword_27D8E5C18;
  if (!qword_27D8E5C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5C18);
  }

  return result;
}

unint64_t sub_22BD10E70()
{
  result = qword_27D8E5C20;
  if (!qword_27D8E5C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5C20);
  }

  return result;
}

uint64_t sub_22BD10F48()
{
  v2 = *(v0 - 192);
  v3 = *(v0 - 208);
  v4 = *(v0 - 88);

  return sub_22BDBB664();
}

uint64_t sub_22BD10F74()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 152);
  v4 = *(v0 - 88);

  return sub_22BDBB664();
}

uint64_t sub_22BD10FB0()
{
  v2 = *(v0 - 152);

  return sub_22BDBB5D4();
}

uint64_t sub_22BD10FD8()
{
  result = v0;
  v3 = *(v1 - 152);
  return result;
}

uint64_t sub_22BD11014()
{
  *v0 = *(v1 - 66);
  v3 = *(v1 - 168);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22BD11038()
{
  v2 = *(v0 - 88);

  return sub_22BDBB894();
}

uint64_t sub_22BD1105C()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 88);

  return sub_22BDBB664();
}

uint64_t sub_22BD11094()
{
  result = v0;
  v3 = *(v1 - 136);
  return result;
}

uint64_t sub_22BD110E4()
{

  return swift_getWitnessTable();
}

uint64_t sub_22BD11104(uint64_t a1)
{
  v4 = *(a1 + 48);
  *v2 = v1;

  return sub_22BDBB564();
}

uint64_t sub_22BD11124(uint64_t a1)
{
  v4 = *(a1 + 48);
  *v1 = *(v2 - 88);

  return sub_22BDBB564();
}

uint64_t sub_22BD1119C()
{
  result = sub_22BDB9774();
  if (v1 <= 0x3F)
  {
    result = sub_22BCB69BC(319, qword_28142CD18);
    if (v2 <= 0x3F)
    {
      result = sub_22BCB69BC(319, qword_28142B648);
      if (v3 <= 0x3F)
      {
        result = sub_22BCB69BC(319, qword_28142B290);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_22BD112B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void *, uint64_t))
{
  v8 = *v5;
  v9 = sub_22BB69FEC(a2, a2[3]);
  return sub_22BD17CE8(a1, v9, v8, a5);
}

void sub_22BD11304(char a1, char a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a1 == a5 && a2 == a6)
  {
    sub_22BCF018C();
    if (v6)
    {

      sub_22BCEFC84();
    }
  }
}

void sub_22BD11378(char a1, uint64_t a2, char a3)
{
  if (a1 == a3)
  {
    sub_22BCF018C();
  }
}

void sub_22BD11398()
{
  sub_22BB31014();
  v3 = v2;
  v4 = sub_22BBE6DE0(&qword_27D8E5D60, &qword_22BDCC060);
  sub_22BB30444(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  sub_22BB3721C();
  v10 = v3[4];
  sub_22BB699E4(v3, v3[3]);
  sub_22BD17B60();
  sub_22BDBB8A4();
  sub_22BD10C9C();
  sub_22BB38154();
  if (!v0)
  {
    sub_22BBE6DE0(&qword_27D8E5D18, &qword_22BDCC028);
    sub_22BD17BB4(&qword_27D8E5D68, &qword_27D8E5D70);
    sub_22BB38154();
  }

  (*(v6 + 8))(v1, v4);
  sub_22BB376A8();
}

uint64_t sub_22BD11540(uint64_t *a1)
{
  v3 = sub_22BBE6DE0(&qword_27D8E5D08, &qword_22BDCC020);
  sub_22BB30444(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  sub_22BB32750();
  v9 = a1[4];
  sub_22BB699E4(a1, a1[3]);
  sub_22BD17B60();
  sub_22BDBB894();
  sub_22BD10BC0();
  sub_22BB32800();
  sub_22BDBB5D4();
  sub_22BBE6DE0(&qword_27D8E5D18, &qword_22BDCC028);
  sub_22BD17BB4(&qword_27D8E5D20, &qword_27D8E5D28);
  sub_22BDBB5D4();
  (*(v5 + 8))(v1, v3);
  sub_22BB32FA4(a1);
  return v11;
}

uint64_t sub_22BD11744(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E696174736261 && a2 == 0xE700000000000000;
  if (v4 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6572756C696166 && a2 == 0xE700000000000000;
    if (v6 || (sub_22BDBB6D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x73736563637573 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22BDBB6D4();

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

void sub_22BD11870()
{
  sub_22BB31014();
  v44 = v1;
  v3 = v2;
  v4 = sub_22BBE6DE0(&qword_27D8E5E48, &qword_22BDCC730);
  v5 = sub_22BB30444(v4);
  v42 = v6;
  v43 = v5;
  v8 = *(v7 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  sub_22BB30BA8();
  v41 = v10;
  v11 = sub_22BBE6DE0(&qword_27D8E5E50, &qword_22BDCC738);
  v12 = sub_22BB30444(v11);
  v39 = v13;
  v40 = v12;
  v15 = *(v14 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v19 = sub_22BBE6DE0(&qword_27D8E5E58, &qword_22BDCC740);
  sub_22BB30444(v19);
  v38 = v20;
  v22 = *(v21 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v23);
  v25 = &v37 - v24;
  v26 = sub_22BBE6DE0(&qword_27D8E5E60, &qword_22BDCC748);
  sub_22BB30444(v26);
  v28 = v27;
  v30 = *(v29 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v31);
  sub_22BB34298();
  v32 = v3[4];
  sub_22BB699E4(v3, v3[3]);
  sub_22BD18694();
  sub_22BDBB8A4();
  v33 = (v28 + 8);
  if (v44)
  {
    if (v44 == 1)
    {
      sub_22BD1873C();
      sub_22BB31D34();
      sub_22BDBB5F4();
      (*(v39 + 8))(v18, v40);
    }

    else
    {
      sub_22BB3CF44();
      sub_22BD186E8();
      sub_22BB32C74();
      sub_22BDBB5F4();
      v34 = sub_22BB37D64();
      v36(v34, v35);
    }
  }

  else
  {
    sub_22BD18790();
    sub_22BB31D34();
    sub_22BDBB5F4();
    (*(v38 + 8))(v25, v19);
  }

  (*v33)(v0, v26);
  sub_22BB376A8();
}

void sub_22BD11B78()
{
  sub_22BB31014();
  v2 = v1;
  v51 = sub_22BBE6DE0(&qword_27D8E5E08, &qword_22BDCC710);
  sub_22BB30444(v51);
  v50 = v3;
  v5 = *(v4 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB30BA8();
  v48 = v7;
  v49 = sub_22BBE6DE0(&qword_27D8E5E10, &qword_22BDCC718);
  sub_22BB30444(v49);
  v9 = *(v8 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB32750();
  v11 = sub_22BBE6DE0(&qword_27D8E5E18, &qword_22BDCC720);
  sub_22BB30444(v11);
  v13 = *(v12 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v14);
  sub_22BB34298();
  v15 = sub_22BBE6DE0(&qword_27D8E5E20, &qword_22BDCC728);
  sub_22BB30444(v15);
  v17 = *(v16 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v18);
  v19 = v2[4];
  sub_22BB699E4(v2, v2[3]);
  sub_22BD18694();
  sub_22BDBB894();
  if (!v0)
  {
    v52 = v2;
    v20 = sub_22BDBB5E4();
    sub_22BD006D0(v20, 0);
    v22 = v15;
    if (v23 != v21 >> 1)
    {
      sub_22BB2F4F4();
      if (v26 == v27)
      {
        __break(1u);
        return;
      }

      v28 = v15;
      v29 = *(v25 + v24);
      sub_22BD006A8(v24 + 1);
      v31 = v30;
      v33 = v32;
      swift_unknownObjectRelease();
      if (v31 == v33 >> 1)
      {
        if (v29)
        {
          if (v29 == 1)
          {
            sub_22BD1873C();
            sub_22BB32800();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            v34 = sub_22BB37D64();
            v35(v34, v49);
          }

          else
          {
            sub_22BB3CF44();
            sub_22BD186E8();
            sub_22BB32800();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            (*(v50 + 8))(v48, v51);
          }

          v36 = sub_22BB38B68();
          v37(v36);
        }

        else
        {
          sub_22BD18790();
          sub_22BB32800();
          sub_22BDBB554();
          swift_unknownObjectRelease();
          v44 = sub_22BB37D64();
          v45(v44, v11);
          v46 = sub_22BB35750();
          v47(v46, v28);
        }

        goto LABEL_12;
      }

      v22 = v28;
    }

    v38 = sub_22BDBB3A4();
    swift_allocError();
    v40 = v39;
    v41 = *(sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530) + 48);
    *v40 = &_s17EvaluatorVoteTypeON;
    sub_22BDBB564();
    sub_22BB36D74();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    v42 = sub_22BB35750();
    v43(v42, v22);
    v2 = v52;
  }

LABEL_12:
  sub_22BB32FA4(v2);
  sub_22BB376A8();
}

uint64_t sub_22BD120C4(uint64_t a1)
{
  v2 = sub_22BD17B60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD12100(uint64_t a1)
{
  v2 = sub_22BD17B60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD1213C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22BD11540(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

void sub_22BD1216C()
{
  v1 = *(v0 + 1);
  v2 = *v0;
  sub_22BD11398();
}

uint64_t sub_22BD121A4(uint64_t a1)
{
  v2 = sub_22BD18790();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD121E0(uint64_t a1)
{
  v2 = sub_22BD18790();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD12224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BD11744(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BD1224C(uint64_t a1)
{
  v2 = sub_22BD18694();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD12288(uint64_t a1)
{
  v2 = sub_22BD18694();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD122C4(uint64_t a1)
{
  v2 = sub_22BD1873C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD12300(uint64_t a1)
{
  v2 = sub_22BD1873C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD1233C(uint64_t a1)
{
  v2 = sub_22BD186E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD12378(uint64_t a1)
{
  v2 = sub_22BD186E8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22BD123B4(_BYTE *a1@<X8>)
{
  sub_22BD11B78();
  if (!v1)
  {
    *a1 = v3;
  }
}

unint64_t sub_22BD123FC(char a1)
{
  result = 0x72506E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x6465786966;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x706D6F436B736174;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BD124B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72506E6F69746361 && a2 == 0xEC00000074706D6FLL;
  if (v4 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465786966 && a2 == 0xE500000000000000;
    if (v6 || (sub_22BDBB6D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000022BDD3410 == a2;
      if (v7 || (sub_22BDBB6D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x706D6F436B736174 && a2 == 0xEE006E6F6974656CLL;
        if (v8 || (sub_22BDBB6D4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000011 && 0x800000022BDD33F0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_22BDBB6D4();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_22BD12668(char a1)
{
  result = 0x72506E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x6465786966;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x706D6F436B736174;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

void sub_22BD12720()
{
  sub_22BB31014();
  v61 = v0;
  v2 = v1;
  v3 = sub_22BBE6DE0(&qword_27D8E5D30, &qword_22BDCC030);
  v4 = sub_22BB30444(v3);
  v59 = v5;
  v60 = v4;
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  sub_22BB30BA8();
  v58 = v9;
  v10 = sub_22BBE6DE0(&qword_27D8E5D38, &qword_22BDCC038);
  v11 = sub_22BB30444(v10);
  v56 = v12;
  v57 = v11;
  v14 = *(v13 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v15);
  sub_22BB30BA8();
  v55 = v16;
  v17 = sub_22BBE6DE0(&qword_27D8E5D40, &qword_22BDCC040);
  v18 = sub_22BB30444(v17);
  v53 = v19;
  v54 = v18;
  v21 = *(v20 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v22);
  sub_22BB30BA8();
  v52 = v23;
  v24 = sub_22BBE6DE0(&qword_27D8E5D48, &qword_22BDCC048);
  v25 = sub_22BB30444(v24);
  v50 = v26;
  v51 = v25;
  v28 = *(v27 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v29);
  v31 = &v49 - v30;
  v32 = sub_22BBE6DE0(&qword_27D8E5D50, &qword_22BDCC050);
  sub_22BB30444(v32);
  v49 = v33;
  v35 = *(v34 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v36);
  v37 = sub_22BBE6DE0(&qword_27D8E5D58, &qword_22BDCC058);
  sub_22BB30444(v37);
  v39 = v38;
  v41 = *(v40 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v42);
  v44 = &v49 - v43;
  v45 = v2[4];
  sub_22BB699E4(v2, v2[3]);
  sub_22BD17968();
  sub_22BDBB8A4();
  switch(v61)
  {
    case 1:
      sub_22BD17AB8();
      sub_22BB31D34();
      sub_22BDBB5F4();
      v48 = v51;
      v47 = *(v50 + 8);
      v46 = v31;
      break;
    case 2:
      sub_22BD17A64();
      sub_22BB32C74();
      sub_22BDBB5F4();
      goto LABEL_6;
    case 3:
      sub_22BD17A10();
      sub_22BB32C74();
      sub_22BDBB5F4();
      goto LABEL_6;
    case 4:
      sub_22BD179BC();
      sub_22BB32C74();
      sub_22BDBB5F4();
LABEL_6:
      v46 = sub_22BB37D64();
      break;
    default:
      sub_22BD17B0C();
      sub_22BB32C74();
      sub_22BDBB5F4();
      v46 = sub_22BB37D64();
      v48 = v32;
      break;
  }

  v47(v46, v48);
  (*(v39 + 8))(v44, v37);
  sub_22BB376A8();
}

void sub_22BD12B80()
{
  sub_22BB31014();
  v85 = v0;
  v4 = v3;
  v84 = sub_22BBE6DE0(&qword_27D8E5CA8, &qword_22BDCBFE8);
  sub_22BB30444(v84);
  v79 = v5;
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  sub_22BB30BA8();
  v83 = v9;
  v10 = sub_22BBE6DE0(&qword_27D8E5CB0, &qword_22BDCBFF0);
  v11 = sub_22BB30444(v10);
  v77 = v12;
  v78 = v11;
  v14 = *(v13 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v15);
  sub_22BB30BA8();
  v81 = v16;
  v17 = sub_22BBE6DE0(&qword_27D8E5CB8, &qword_22BDCBFF8);
  v18 = sub_22BB30444(v17);
  v75 = v19;
  v76 = v18;
  v21 = *(v20 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v22);
  sub_22BB30BA8();
  v80 = v23;
  v24 = sub_22BBE6DE0(&qword_27D8E5CC0, &qword_22BDCC000);
  v25 = sub_22BB30444(v24);
  v73 = v26;
  v74 = v25;
  v28 = *(v27 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v29);
  sub_22BB3721C();
  v30 = sub_22BBE6DE0(&qword_27D8E5CC8, &qword_22BDCC008);
  sub_22BB30444(v30);
  v72 = v31;
  v33 = *(v32 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v34);
  sub_22BB34298();
  v35 = sub_22BBE6DE0(&qword_27D8E5CD0, &unk_22BDCC010);
  sub_22BB30444(v35);
  v82 = v36;
  v38 = *(v37 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v39);
  v41 = &v68 - v40;
  v42 = v4[4];
  sub_22BB699E4(v4, v4[3]);
  sub_22BD17968();
  v43 = v85;
  sub_22BDBB894();
  if (!v43)
  {
    v69 = v30;
    v70 = v2;
    v71 = v1;
    v45 = v83;
    v44 = v84;
    v85 = v4;
    v46 = v41;
    v47 = sub_22BDBB5E4();
    sub_22BD006D0(v47, 0);
    if (v49 != v48 >> 1)
    {
      sub_22BB2F4F4();
      if (v52 == v53)
      {
        __break(1u);
        return;
      }

      v54 = *(v51 + v50);
      sub_22BD006A8(v50 + 1);
      v56 = v55;
      v58 = v57;
      swift_unknownObjectRelease();
      v46 = v41;
      if (v56 == v58 >> 1)
      {
        v59 = v82;
        switch(v54)
        {
          case 1:
            sub_22BD17AB8();
            v65 = v71;
            sub_22BB323B0();
            swift_unknownObjectRelease();
            v67 = v73;
            v66 = v74;
            goto LABEL_15;
          case 2:
            sub_22BD17A64();
            v65 = v80;
            sub_22BB323B0();
            swift_unknownObjectRelease();
            v67 = v75;
            v66 = v76;
            goto LABEL_15;
          case 3:
            sub_22BD17A10();
            v65 = v81;
            sub_22BB323B0();
            swift_unknownObjectRelease();
            v67 = v77;
            v66 = v78;
LABEL_15:
            (*(v67 + 8))(v65, v66);
            break;
          case 4:
            sub_22BD179BC();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            (*(v79 + 8))(v45, v44);
            break;
          default:
            sub_22BD17B0C();
            v60 = v70;
            sub_22BB323B0();
            swift_unknownObjectRelease();
            (*(v72 + 8))(v60, v69);
            break;
        }

        (*(v59 + 8))(v41, v35);
        sub_22BB32FA4(v85);
        goto LABEL_10;
      }
    }

    v61 = sub_22BDBB3A4();
    swift_allocError();
    v63 = v62;
    v64 = *(sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530) + 48);
    *v63 = &_s13EvaluatorTypeON;
    sub_22BDBB564();
    sub_22BB36D74();
    (*(*(v61 - 8) + 104))(v63, *MEMORY[0x277D84160], v61);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v82 + 8))(v46, v35);
    v4 = v85;
  }

  sub_22BB32FA4(v4);
LABEL_10:
  sub_22BB376A8();
}

uint64_t sub_22BD131C4(uint64_t a1)
{
  v2 = sub_22BD17B0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD13200(uint64_t a1)
{
  v2 = sub_22BD17B0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD13244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BD124B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BD1326C(uint64_t a1)
{
  v2 = sub_22BD17968();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD132A8(uint64_t a1)
{
  v2 = sub_22BD17968();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD132E4(uint64_t a1)
{
  v2 = sub_22BD17AB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD13320(uint64_t a1)
{
  v2 = sub_22BD17AB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD1335C(uint64_t a1)
{
  v2 = sub_22BD17A64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD13398(uint64_t a1)
{
  v2 = sub_22BD17A64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD133D4(uint64_t a1)
{
  v2 = sub_22BD17A10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD13410(uint64_t a1)
{
  v2 = sub_22BD17A10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD1344C(uint64_t a1)
{
  v2 = sub_22BD179BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD13488(uint64_t a1)
{
  v2 = sub_22BD179BC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22BD134C4(_BYTE *a1@<X8>)
{
  sub_22BD12B80();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_22BD13514()
{
  sub_22BB31014();
  v3 = v2;
  v4 = sub_22BBE6DE0(&qword_27D8E5C58, &unk_22BDCBCD0);
  sub_22BB30444(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  sub_22BB3721C();
  v10 = v3[4];
  sub_22BB699E4(v3, v3[3]);
  sub_22BD13A18();
  sub_22BDBB8A4();
  sub_22BD0F6BC();
  sub_22BB3A6FC();
  sub_22BB38154();
  if (!v0)
  {
    sub_22BD13B14();
    sub_22BB3A6FC();
    sub_22BB38154();
    sub_22BB3CF44();
    sub_22BBE6DE0(&qword_27D8E5C40, &qword_22BDCBCC8);
    sub_22BD13B68(&qword_27D8E5C68, sub_22BD13BE0);
    sub_22BB3A6FC();
    sub_22BB38154();
  }

  (*(v6 + 8))(v1, v4);
  sub_22BB376A8();
}

void sub_22BD136E0()
{
  sub_22BB31014();
  v2 = v1;
  v3 = sub_22BBE6DE0(&qword_27D8E5C28, &qword_22BDCBCC0);
  sub_22BB30444(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  sub_22BB32750();
  v9 = v2[4];
  sub_22BB699E4(v2, v2[3]);
  sub_22BD13A18();
  sub_22BDBB894();
  sub_22BD0F614();
  sub_22BB31D34();
  sub_22BDBB5D4();
  sub_22BD13A6C();
  sub_22BB31D34();
  sub_22BDBB5D4();
  sub_22BBE6DE0(&qword_27D8E5C40, &qword_22BDCBCC8);
  sub_22BB3CF44();
  sub_22BD13B68(&qword_27D8E5C48, sub_22BD13AC0);
  sub_22BDBB5D4();
  (*(v5 + 8))(v0, v3);
  sub_22BB32FA4(v2);
  sub_22BB376A8();
}

uint64_t sub_22BD1392C(uint64_t a1)
{
  v2 = sub_22BD13A18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD13968(uint64_t a1)
{
  v2 = sub_22BD13A18();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22BD139A4(uint64_t a1@<X8>)
{
  sub_22BD136E0();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
  }
}

void sub_22BD139D8()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = v0[8];
  v4 = *v0;
  sub_22BD13514();
}

void sub_22BD139FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  sub_22BD11304(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *a2, *(a2 + 8));
}

unint64_t sub_22BD13A18()
{
  result = qword_27D8E5C30;
  if (!qword_27D8E5C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5C30);
  }

  return result;
}

unint64_t sub_22BD13A6C()
{
  result = qword_27D8E5C38;
  if (!qword_27D8E5C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5C38);
  }

  return result;
}

unint64_t sub_22BD13AC0()
{
  result = qword_27D8E5C50;
  if (!qword_27D8E5C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5C50);
  }

  return result;
}

unint64_t sub_22BD13B14()
{
  result = qword_27D8E5C60;
  if (!qword_27D8E5C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5C60);
  }

  return result;
}

uint64_t sub_22BD13B68(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_22BBEB2E0(&qword_27D8E5C40, &qword_22BDCBCC8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22BD13BE0()
{
  result = qword_27D8E5C70;
  if (!qword_27D8E5C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5C70);
  }

  return result;
}

uint64_t sub_22BD13C34(uint64_t a1, void *a2)
{
  v4 = *(v2 + 1);
  v5 = v2[16];
  v6 = *v2;
  v7 = sub_22BB69FEC(a2, a2[3]);

  return sub_22BD17C50(a1, v7, v6, v4, v5);
}

uint64_t sub_22BD13C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = a1;
  v4 = sub_22BDB4C34();
  v78 = *(v4 - 8);
  v79 = v4;
  v5 = *(v78 + 64);
  MEMORY[0x28223BE20](v4);
  v76 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BDB43E4();
  v84 = *(v7 - 8);
  v85 = v7;
  v8 = *(v84 + 64);
  MEMORY[0x28223BE20](v7);
  v82 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BDB77D4();
  v86 = *(v10 - 8);
  v87 = v10;
  v11 = *(v86 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v81 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v83 = &v75 - v14;
  v15 = _s20ActionStepEvaluationVMa(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v80 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22BBE6DE0(&qword_27D8E3E10, &qword_22BDC1258);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v75 - v20;
  v22 = _s23StatementStepEvaluationOMa(0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v75 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v75 - v30;
  v32 = _s19TranscriptRetrieverVMa();
  v90 = v32;
  v91 = &off_283F7A608;
  sub_22BB8B8A0(v89);
  sub_22BD17DF8();
  v33 = sub_22BB69FEC(v89, v90);
  v34 = *sub_22BB69FEC((v33 + *(v32 + 24)), *(v33 + *(v32 + 24) + 24));
  v35 = a3;
  sub_22BCBD54C(a3, v21);
  if (sub_22BB3AA28(v21, 1, v22) != 1)
  {
    sub_22BD17DA4();
    sub_22BD17DF8();
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_22BD17E4C(v29, _s23StatementStepEvaluationOMa);
      v61 = v81;
      sub_22BDB6404();
      sub_22BD17DF8();
      v62 = sub_22BDB77C4();
      v63 = sub_22BDBB114();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v88[0] = v65;
        *v64 = 136315138;
        v66 = sub_22BCC87B8();
        v68 = v67;
        sub_22BD17E4C(v26, _s23StatementStepEvaluationOMa);
        v69 = sub_22BB32EE0(v66, v68, v88);

        *(v64 + 4) = v69;
        _os_log_impl(&dword_22BB2C000, v62, v63, "Cannot make an action prompt vote outcome, %s is not for an action", v64, 0xCu);
        sub_22BB32FA4(v65);
        MEMORY[0x2318A6080](v65, -1, -1);
        MEMORY[0x2318A6080](v64, -1, -1);
      }

      else
      {

        sub_22BD17E4C(v26, _s23StatementStepEvaluationOMa);
      }

      (*(v86 + 8))(v61, v87);
      sub_22BD17E4C(v31, _s23StatementStepEvaluationOMa);
      goto LABEL_16;
    }

    v49 = v80;
    sub_22BD17DA4();
    v50 = *(v15 + 20);
    v51 = *(v49 + v50);
    if (*(v49 + v50))
    {
      if (v51 != 1)
      {
        v52 = sub_22BB69FEC(v89, v90);
        sub_22BB69088(v52 + *(v32 + 20), v88);
        v53 = sub_22BB69FEC(v88, v88[3]);
        v54 = v78;
        v55 = v76;
        v56 = v79;
        (*(v78 + 16))(v76, v77, v79);
        v57 = *(v53 + *(_s14ActionExecutedVMa(0) + 28));
        sub_22BBBCB1C();
        v59 = v58;
        (*(v54 + 8))(v55, v56);
        sub_22BB32FA4(v88);
        v60 = 0;
        if ((v59 & 1) == 0)
        {
LABEL_19:
          sub_22BD17E4C(v49, _s20ActionStepEvaluationVMa);
          sub_22BD17E4C(v31, _s23StatementStepEvaluationOMa);
          goto LABEL_20;
        }

        LOBYTE(v51) = 1;
      }

      v60 = 1;
    }

    else
    {
      v60 = 2;
    }

    sub_22BBE6DE0(&qword_27D8E5D78, &qword_22BDCC068);
    v70 = *(_s19EvaluatorVoteSourceOMa(0) - 8);
    v71 = *(v70 + 72);
    v72 = (*(v70 + 80) + 32) & ~*(v70 + 80);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_22BDBCBD0;
    *(v73 + v72) = v51;
    swift_storeEnumTagMultiPayload();
    goto LABEL_19;
  }

  sub_22BB58728(v21, &qword_27D8E3E10, &qword_22BDC1258);
  v36 = v83;
  sub_22BDB6404();
  v38 = v84;
  v37 = v85;
  v39 = v82;
  (*(v84 + 16))(v82, v35, v85);
  v40 = sub_22BDB77C4();
  v41 = sub_22BDBB114();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v88[0] = v43;
    *v42 = 136315138;
    sub_22BD17CA0(&qword_28142DD38, MEMORY[0x277CC95F0]);
    v44 = sub_22BDBB684();
    v45 = v39;
    v47 = v46;
    (*(v38 + 8))(v45, v37);
    v48 = sub_22BB32EE0(v44, v47, v88);

    *(v42 + 4) = v48;
    _os_log_impl(&dword_22BB2C000, v40, v41, "Cannot make an action prompt vote outcome, a statement step for statementEventId=%s is not found", v42, 0xCu);
    sub_22BB32FA4(v43);
    MEMORY[0x2318A6080](v43, -1, -1);
    MEMORY[0x2318A6080](v42, -1, -1);
  }

  else
  {

    (*(v38 + 8))(v39, v37);
  }

  (*(v86 + 8))(v36, v87);
LABEL_16:
  v60 = 0;
LABEL_20:
  sub_22BB32FA4(v89);
  return v60;
}

uint64_t sub_22BD145BC(uint64_t a1, uint64_t a2, int a3)
{
  v78 = a3;
  v115 = a2;
  v76 = sub_22BDB43E4();
  v117 = *(v76 - 8);
  v4 = *(v117 + 64);
  MEMORY[0x28223BE20](v76);
  v75 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_22BDB8D84();
  v84 = *(v102 - 8);
  v6 = *(v84 + 64);
  MEMORY[0x28223BE20](v102);
  v101 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_22BDB90B4();
  v116 = *(v100 - 8);
  v8 = v116[8];
  MEMORY[0x28223BE20](v100);
  v99 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BDB5404();
  v82 = *(v10 - 8);
  v11 = *(v82 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v73 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v86 = &v73 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v98 = &v73 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v73 - v22;
  v110 = sub_22BDB87F4();
  v24 = *(v110 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v110);
  v109 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_22BDB9B14();
  v27 = *(v119 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v119);
  v118 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22BDB9B54();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = _s19TranscriptRetrieverVMa();
  v122 = &off_283F7A608;
  sub_22BB8B8A0(&v120);
  sub_22BD17DF8();
  v35 = type metadata accessor for FeedbackLearning.FlowExpression(0);
  v79 = 0;
  v36 = 0;
  v37 = *(v35 + 20);
  v77 = a1;
  v38 = *(a1 + v37);
  v39 = v14;
  v40 = v31;
  v115 = *(v38 + 16);
  v112 = (v27 + 88);
  v113 = v31 + 16;
  v111 = *MEMORY[0x277D1E718];
  v108 = *MEMORY[0x277D1E798];
  v96 = *MEMORY[0x277D1E7C0];
  v85 = *MEMORY[0x277D1E720];
  v81 = *MEMORY[0x277D1E860];
  v80 = *MEMORY[0x277D1E868];
  v114 = (v31 + 8);
  v87 = (v27 + 8);
  v105 = (v27 + 96);
  v41 = v24;
  v95 = (v24 + 32);
  v94 = (v116 + 1);
  v42 = (v82 + 16);
  v107 = (v82 + 88);
  v104 = *MEMORY[0x277D1CBF0];
  v103 = *MEMORY[0x277D1CBE8];
  v116 = (v82 + 8);
  v90 = *MEMORY[0x277D1CBA8];
  v93 = (v41 + 8);
  v83 = (v84 + 32);
  v82 += 32;
  v84 += 8;
  v74 = (v117 + 8);
  v89 = v17;
  v97 = v30;
  v88 = v31;
  v106 = v38;
  v91 = v39;
  v92 = v42;
  while (1)
  {
    if (v115 == v36)
    {
      goto LABEL_33;
    }

    v43 = *(v38 + 16);
    if (v36 >= v43)
    {
      break;
    }

    v44 = v38 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v45 = *(v40 + 72);
    v117 = v36;
    (*(v40 + 16))(v34, v44 + v45 * v36, v30);
    v46 = v118;
    v27 = v34;
    sub_22BDB9B24();
    v47 = (*v112)(v46, v119);
    if (v47 == v111)
    {
      (*v87)(v118, v119);
    }

    else
    {
      if (v47 == v108)
      {
        v48 = v34;
        v49 = v118;
        (*v105)(v118, v119);
        (*v95)(v109, v49, v110);
        v50 = v99;
        sub_22BDB87E4();
        sub_22BDB9094();
        (*v94)(v50, v100);
        v51 = *v92;
        v52 = v10;
        v53 = v98;
        (*v92)(v98, v23, v52);
        v54 = *v107;
        v55 = (*v107)(v53, v52);
        v17 = *v116;
        v56 = v53;
        v10 = v52;
        (*v116)(v56, v52);
        if (v55 == v104 || v55 == v103)
        {
          (v17)(v23, v52);
          (*v93)(v109, v110);
          (*v114)(v48, v97);
          goto LABEL_33;
        }

        v27 = v91;
        v51(v91, v23, v52);
        v58 = v54(v27, v52);
        v34 = v48;
        if (v58 == v90)
        {
          v64 = v75;
          sub_22BDB8F24();
          v65 = sub_22BB69FEC(&v120, v121);
          v27 = sub_22BD13C9C(v77, v65, v64);
          v67 = v66;
          (*v74)(v64, v76);
          (v17)(v23, v10);
          (*v93)(v109, v110);
          v30 = v97;
          (*v114)(v48, v97);
          v43 = &v122;
          if (v67)
          {
            goto LABEL_37;
          }

          (v17)(v91, v10);
          v79 = 1;
          v17 = v89;
        }

        else
        {
          (v17)(v23, v10);
          (*v93)(v109, v110);
          v30 = v97;
          (*v114)(v48, v97);
          (v17)(v27, v10);
          v17 = v89;
        }

        v40 = v88;
        goto LABEL_23;
      }

      v59 = v107;
      if (v47 == v96)
      {
        v60 = v118;
        (*v105)(v118, v119);
        (*v83)(v101, v60, v102);
        v61 = v86;
        sub_22BDB8D44();
        (*v82)(v17, v61, v10);
        v62 = (*v59)(v17, v10);
        if (v62 == v104)
        {
          (*v116)(v17, v10);
LABEL_32:
          (*v84)(v101, v102);
          (*v114)(v34, v30);
LABEL_33:
          v27 = 0;
          goto LABEL_34;
        }

        v27 = v62;
        (*v116)(v17, v10);
        if (v27 == v103)
        {
          goto LABEL_32;
        }

        (*v84)(v101, v102);
        (*v114)(v34, v30);
        goto LABEL_23;
      }

      if (v47 == v85)
      {
        (*v114)(v34, v30);
        (*v87)(v118, v119);
        goto LABEL_33;
      }

      if (v47 != v81 && v47 != v80)
      {
        (*v114)(v34, v30);
        (*v87)(v118, v119);
        goto LABEL_23;
      }
    }

    if (v79)
    {
      sub_22BBE6DE0(&qword_27D8E5D78, &qword_22BDCC068);
      v69 = *(_s19EvaluatorVoteSourceOMa(0) - 8);
      v70 = *(v69 + 72);
      v71 = (*(v69 + 80) + 32) & ~*(v69 + 80);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_22BDBCBD0;
      *(v72 + v71) = 2;
      v27 = 1;
      swift_storeEnumTagMultiPayload();
      (*v114)(v34, v30);
      goto LABEL_34;
    }

    (*v114)(v34, v30);
    v79 = 0;
LABEL_23:
    v36 = v117 + 1;
    v38 = v106;
  }

  __break(1u);
LABEL_37:
  (v17)(*(v43 - 32), v10);
LABEL_34:
  sub_22BB32FA4(&v120);
  return v27;
}

uint64_t sub_22BD15340(uint64_t a1, uint64_t a2, int a3)
{
  v225 = a3;
  v270 = a2;
  v272 = a1;
  v218 = type metadata accessor for FeedbackLearning.FlowActionEvent(0);
  v216 = *(v218 - 8);
  v3 = *(v216 + 64);
  MEMORY[0x28223BE20](v218);
  v215 = &v200 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BBE6DE0(&qword_27D8E4328, &unk_22BDCC070);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v219 = &v200 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v217 = &v200 - v9;
  v202 = _s23StatementFailureOutcomeVMa(0);
  v10 = *(*(v202 - 8) + 64);
  MEMORY[0x28223BE20](v202);
  v204 = &v200 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_22BDB4CE4();
  v205 = *(v206 - 8);
  v12 = *(v205 + 64);
  MEMORY[0x28223BE20](v206);
  v203 = &v200 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = _s23StatementSuccessOutcomeVMa(0);
  v14 = *(*(v207 - 8) + 64);
  MEMORY[0x28223BE20](v207);
  v209 = &v200 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_22BDB4E24();
  v210 = *(v211 - 8);
  v16 = *(v210 + 64);
  MEMORY[0x28223BE20](v211);
  v208 = &v200 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = sub_22BDB5404();
  v220 = *(v260 - 8);
  v18 = *(v220 + 64);
  v19 = MEMORY[0x28223BE20](v260);
  v239 = &v200 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v241 = &v200 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v231 = &v200 - v24;
  MEMORY[0x28223BE20](v23);
  v255 = &v200 - v25;
  v238 = sub_22BDB90B4();
  v263 = *(v238 - 8);
  v26 = *(v263 + 64);
  MEMORY[0x28223BE20](v238);
  v237 = &v200 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v236 = &v200 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v230 = &v200 - v32;
  v214 = sub_22BDB8294();
  v213 = *(v214 - 8);
  v33 = *(v213 + 64);
  MEMORY[0x28223BE20](v214);
  v212 = &v200 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = sub_22BDB8D84();
  v249 = *(v254 - 8);
  v35 = *(v249 + 8);
  MEMORY[0x28223BE20](v254);
  v262 = &v200 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(0);
  v37 = *(*(v259 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v259);
  v250 = &v200 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v264 = &v200 - v40;
  v41 = sub_22BBE6DE0(&qword_27D8E4320, &unk_22BDC2EA0);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v41 - 8);
  v257 = &v200 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v235 = &v200 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v252 = &v200 - v48;
  MEMORY[0x28223BE20](v47);
  v251 = &v200 - v49;
  v261 = _s28StatementResolutionReferenceOMa(0);
  v50 = *(*(v261 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v261);
  v240 = &v200 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v253 = &v200 - v53;
  v271 = sub_22BDB87F4();
  v256 = *(v271 - 8);
  v54 = *(v256 + 8);
  MEMORY[0x28223BE20](v271);
  v275 = &v200 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_22BDB9B14();
  v57 = *(v56 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  v60 = &v200 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = sub_22BDB9B54();
  v61 = *(v274 - 8);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v274);
  v273 = &v200 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = _s24StatementExecutionResultOMa(0);
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v67 = &v200 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_22BDB4C34();
  v69 = *(v68 - 8);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  v72 = &v200 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = _s19TranscriptRetrieverVMa();
  v278 = v73;
  v279 = &off_283F7A608;
  sub_22BB8B8A0(&v277);
  sub_22BD17DF8();
  v74 = sub_22BB69FEC(&v277, v278);
  sub_22BB69088(v74 + *(v73 + 20), v276);
  v75 = sub_22BB69FEC(v276, v276[3]);
  (*(v69 + 16))(v72, v272, v68);
  v76 = *(v75 + *(_s14ActionExecutedVMa(0) + 28));
  sub_22BBBCB1C();
  LOBYTE(v75) = v77;
  v78 = *(v69 + 8);
  v234 = v68;
  v233 = v69 + 8;
  v232 = v78;
  v78(v72, v68);
  sub_22BB32FA4(v276);
  if ((v75 & 1) == 0)
  {
    v200 = v64;
    result = type metadata accessor for FeedbackLearning.FlowExpression(0);
    v83 = 0;
    v201 = result;
    v84 = v272;
    v85 = *(v272 + *(result + 20));
    v86 = *(v85 + 16);
    v269 = v61 + 16;
    v270 = v86;
    v267 = (v57 + 88);
    v268 = v61 + 8;
    v266 = *MEMORY[0x277D1E718];
    v265 = *MEMORY[0x277D1E798];
    v248 = *MEMORY[0x277D1E7C0];
    v228 = *MEMORY[0x277D1E720];
    v222 = *MEMORY[0x277D1E860];
    v221 = *MEMORY[0x277D1E868];
    v224 = (v57 + 8);
    v258 = (v57 + 96);
    v227 = (v249 + 32);
    v245 = (v220 + 16);
    v244 = (v220 + 88);
    v243 = *MEMORY[0x277D1CBF0];
    v246 = (v220 + 8);
    v229 = (v249 + 8);
    v247 = (v256 + 32);
    v226 = (v263 + 8);
    v249 = v256 + 8;
    v242 = *MEMORY[0x277D1CBE8];
    v87 = v257;
    v263 = v56;
    v88 = v231;
    v256 = v60;
    v223 = v61;
    while (1)
    {
      if (v270 == v83)
      {
        v134 = 0;
        goto LABEL_56;
      }

      if (v83 >= *(v85 + 16))
      {
        __break(1u);
        return result;
      }

      v89 = v85;
      v90 = v273;
      v91 = v274;
      (*(v61 + 16))(v273, v85 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v83, v274);
      sub_22BDB9B24();
      (*(v61 + 8))(v90, v91);
      v92 = (*v267)(v60, v56);
      if (v92 == v266)
      {
        (*v258)(v60, v56);
        v135 = v213;
        v136 = v212;
        v137 = v214;
        (*(v213 + 32))(v212, v60, v214);
        sub_22BBE6DE0(&qword_27D8E5D78, &qword_22BDCC068);
        v138 = *(_s19EvaluatorVoteSourceOMa(0) - 8);
        v139 = *(v138 + 72);
        v140 = (*(v138 + 80) + 32) & ~*(v138 + 80);
        v141 = swift_allocObject();
        *(v141 + 16) = xmmword_22BDBCBD0;
        v142 = v141 + v140;
        v143 = *(sub_22BBE6DE0(&qword_27D8E3DB0, &qword_22BDC1148) + 48);
        sub_22BCD5C90(v84, v142);
        (*(v135 + 16))(v142 + v143, v136, v137);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        (*(v135 + 8))(v136, v137);
        goto LABEL_55;
      }

      if (v92 == v265)
      {
        (*v258)(v60, v56);
        (*v247)(v275, v60, v271);
        v93 = *(type metadata accessor for FeedbackLearning.FlowExpressionValue(0) + 24);
        sub_22BD17DF8();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          v95 = v87;
          v96 = v88;
          if (EnumCaseMultiPayload == 1)
          {
            v232(v264, v234);
          }

          v97 = v252;
          sub_22BDB8794();
          v98 = v261;
LABEL_12:
          swift_storeEnumTagMultiPayload();
          v99 = 0;
        }

        else
        {
          v96 = v88;
          sub_22BD17E4C(v264, type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType);
          v113 = v230;
          sub_22BDB87D4();
          v114 = v236;
          sub_22BBCD82C(v113, v236, &qword_27D8E3218, &qword_22BDBE390);
          v115 = sub_22BDB43E4();
          v99 = 1;
          v95 = v257;
          v116 = sub_22BB3AA28(v114, 1, v115);
          v97 = v252;
          v98 = v261;
          if (v116 != 1)
          {
            (*(*(v115 - 8) + 32))(v252, v236, v115);
            goto LABEL_12;
          }
        }

        sub_22BB336D0(v97, v99, 1, v98);
        v100 = v251;
        sub_22BBCD82C(v97, v251, &qword_27D8E4320, &unk_22BDC2EA0);
        if (sub_22BB3AA28(v100, 1, v98) == 1)
        {
          (*v249)(v275, v271);
          result = sub_22BB58728(v100, &qword_27D8E4320, &unk_22BDC2EA0);
          v84 = v272;
          v88 = v96;
          v56 = v263;
          v87 = v95;
        }

        else
        {
          sub_22BD17DA4();
          v106 = v237;
          sub_22BDB87E4();
          v107 = v255;
          sub_22BDB9094();
          (*v226)(v106, v238);
          v88 = v96;
          v108 = v260;
          (*v245)(v96, v107, v260);
          v109 = (*v244)(v96, v108);
          if (v109 == v243)
          {
            v150 = v220 + 96;
            v151 = v96;
            v152 = v260;
            (*(v220 + 96))(v151, v260);
            v153 = v88;
            v154 = v210;
            v155 = v208;
            v156 = v211;
            (*(v210 + 32))(v208, v153, v211);
            sub_22BBE6DE0(&qword_27D8E5D78, &qword_22BDCC068);
            v157 = *(_s19EvaluatorVoteSourceOMa(0) - 8);
            v158 = *(v157 + 72);
            v159 = (*(v157 + 80) + 32) & ~*(v157 + 80);
            *(swift_allocObject() + 16) = xmmword_22BDBCBD0;
            v160 = v253;
            v161 = v209;
            sub_22BD17DF8();
            (*(v154 + 16))(v161 + *(v207 + 20), v155, v156);
            sub_22BD17DF8();
            swift_storeEnumTagMultiPayload();
            swift_storeEnumTagMultiPayload();
            sub_22BD17E4C(v161, _s23StatementSuccessOutcomeVMa);
            (*(v154 + 8))(v155, v156);
            (*(v150 - 88))(v255, v152);
            sub_22BD17E4C(v160, _s28StatementResolutionReferenceOMa);
            (*v249)(v275, v271);
            goto LABEL_53;
          }

          if (v109 == v242)
          {
            v162 = v220 + 96;
            v163 = v96;
            v164 = v260;
            (*(v220 + 96))(v163, v260);
            v165 = v88;
            v166 = v205;
            v167 = v203;
            v168 = v206;
            (*(v205 + 32))(v203, v165, v206);
            sub_22BBE6DE0(&qword_27D8E5D78, &qword_22BDCC068);
            v169 = *(_s19EvaluatorVoteSourceOMa(0) - 8);
            v170 = *(v169 + 72);
            v171 = (*(v169 + 80) + 32) & ~*(v169 + 80);
            *(swift_allocObject() + 16) = xmmword_22BDBCBD0;
            v172 = v253;
            v173 = v204;
            sub_22BD17DF8();
            (*(v166 + 16))(v173 + *(v202 + 20), v167, v168);
            sub_22BD17DF8();
            swift_storeEnumTagMultiPayload();
            swift_storeEnumTagMultiPayload();
            sub_22BD17E4C(v173, _s23StatementFailureOutcomeVMa);
            (*(v166 + 8))(v167, v168);
            (*(v162 - 88))(v255, v164);
            sub_22BD17E4C(v172, _s28StatementResolutionReferenceOMa);
            (*v249)(v275, v271);
            goto LABEL_55;
          }

          v110 = *v246;
          v111 = v260;
          (*v246)(v255, v260);
          sub_22BD17E4C(v253, _s28StatementResolutionReferenceOMa);
          (*v249)(v275, v271);
          result = (v110)(v96, v111);
          v84 = v272;
          v87 = v257;
          v56 = v263;
        }

        v60 = v256;
        goto LABEL_39;
      }

      if (v92 != v248)
      {
        if (v92 == v228)
        {
          sub_22BBE6DE0(&qword_27D8E5D78, &qword_22BDCC068);
          v144 = *(_s19EvaluatorVoteSourceOMa(0) - 8);
          v145 = *(v144 + 72);
          v146 = (*(v144 + 80) + 32) & ~*(v144 + 80);
          *(swift_allocObject() + 16) = xmmword_22BDBCBD0;
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          v147 = *v224;
          v148 = v60;
          v149 = &v281;
          goto LABEL_52;
        }

        if (v92 == v222 || v92 == v221)
        {
          sub_22BBE6DE0(&qword_27D8E5D78, &qword_22BDCC068);
          v174 = *(_s19EvaluatorVoteSourceOMa(0) - 8);
          v175 = *(v174 + 72);
          v176 = (*(v174 + 80) + 32) & ~*(v174 + 80);
          v177 = swift_allocObject();
          *(v177 + 16) = xmmword_22BDBCBD0;
          sub_22BCD5C90(v84, v177 + v176);
          v134 = 1;
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          goto LABEL_56;
        }

        v56 = v263;
        result = (*v224)(v60, v263);
        goto LABEL_39;
      }

      (*v258)(v60, v56);
      (*v227)(v262, v60, v254);
      v101 = v84 + *(type metadata accessor for FeedbackLearning.FlowExpressionValue(0) + 24);
      sub_22BD17DF8();
      v102 = swift_getEnumCaseMultiPayload();
      if (v102)
      {
        if (v102 == 1)
        {
          v232(v250, v234);
        }

        sub_22BDB8174();
      }

      else
      {
        sub_22BD17E4C(v250, type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType);
        if (*(*(v84 + *(v201 + 24)) + 16))
        {
          v124 = *(v216 + 80);
          v125 = *(v216 + 72);
          v126 = v217;
          sub_22BD17DF8();
          v127 = 0;
        }

        else
        {
          v127 = 1;
          v126 = v217;
        }

        v104 = 1;
        v128 = v218;
        sub_22BB336D0(v126, v127, 1, v218);
        v129 = v126;
        v130 = v219;
        sub_22BBCD82C(v129, v219, &qword_27D8E4328, &unk_22BDCC070);
        v131 = sub_22BB3AA28(v130, 1, v128);
        v88 = v231;
        v56 = v263;
        v103 = v261;
        if (v131 == 1)
        {
          goto LABEL_21;
        }

        v132 = v215;
        sub_22BD17DA4();
        v133 = sub_22BDB43E4();
        (*(*(v133 - 8) + 16))(v87, v132, v133);
        sub_22BD17E4C(v132, type metadata accessor for FeedbackLearning.FlowActionEvent);
      }

      v103 = v261;
      swift_storeEnumTagMultiPayload();
      v104 = 0;
LABEL_21:
      sub_22BB336D0(v87, v104, 1, v103);
      v105 = v235;
      sub_22BBCD82C(v87, v235, &qword_27D8E4320, &unk_22BDC2EA0);
      if (sub_22BB3AA28(v105, 1, v103) == 1)
      {
        (*v229)(v262, v254);
        result = sub_22BB58728(v105, &qword_27D8E4320, &unk_22BDC2EA0);
        v60 = v256;
      }

      else
      {
        sub_22BD17DA4();
        v117 = v241;
        sub_22BDB8D44();
        v118 = v239;
        v119 = v260;
        (*v245)(v239, v117, v260);
        v120 = (*v244)(v118, v119);
        if (v120 == v243)
        {
          v178 = v220 + 96;
          v179 = v239;
          v180 = v260;
          (*(v220 + 96))(v239, v260);
          v181 = v240;
          v182 = v210;
          v183 = v208;
          v184 = v211;
          (*(v210 + 32))(v208, v179, v211);
          sub_22BBE6DE0(&qword_27D8E5D78, &qword_22BDCC068);
          v185 = *(_s19EvaluatorVoteSourceOMa(0) - 8);
          v186 = *(v185 + 72);
          v187 = (*(v185 + 80) + 32) & ~*(v185 + 80);
          *(swift_allocObject() + 16) = xmmword_22BDBCBD0;
          v188 = v209;
          sub_22BD17DF8();
          (*(v182 + 16))(v188 + *(v207 + 20), v183, v184);
          sub_22BD17DF8();
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          sub_22BD17E4C(v188, _s23StatementSuccessOutcomeVMa);
          (*(v182 + 8))(v183, v184);
          (*(v178 - 88))(v241, v180);
          sub_22BD17E4C(v181, _s28StatementResolutionReferenceOMa);
          v147 = *v229;
          v148 = v262;
          v149 = &v280;
LABEL_52:
          v147(v148, *(v149 - 32));
LABEL_53:
          v134 = 2;
          goto LABEL_56;
        }

        v56 = v263;
        if (v120 == v242)
        {
          v189 = v220 + 96;
          v190 = v239;
          v191 = v260;
          (*(v220 + 96))(v239, v260);
          v192 = v240;
          v193 = v205;
          v194 = v203;
          v195 = v206;
          (*(v205 + 32))(v203, v190, v206);
          sub_22BBE6DE0(&qword_27D8E5D78, &qword_22BDCC068);
          v196 = *(_s19EvaluatorVoteSourceOMa(0) - 8);
          v197 = *(v196 + 72);
          v198 = (*(v196 + 80) + 32) & ~*(v196 + 80);
          *(swift_allocObject() + 16) = xmmword_22BDBCBD0;
          v199 = v204;
          sub_22BD17DF8();
          (*(v193 + 16))(v199 + *(v202 + 20), v194, v195);
          sub_22BD17DF8();
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          sub_22BD17E4C(v199, _s23StatementFailureOutcomeVMa);
          (*(v193 + 8))(v194, v195);
          (*(v189 - 88))(v241, v191);
          sub_22BD17E4C(v192, _s28StatementResolutionReferenceOMa);
          (*v229)(v262, v254);
          goto LABEL_55;
        }

        v121 = *v246;
        v122 = v260;
        (*v246)(v241, v260);
        sub_22BD17E4C(v240, _s28StatementResolutionReferenceOMa);
        (*v229)(v262, v254);
        v123 = v272;
        result = (v121)(v239, v122);
        v84 = v123;
        v87 = v257;
        v60 = v256;
      }

      v61 = v223;
LABEL_39:
      ++v83;
      v85 = v89;
    }
  }

  sub_22BCD5758(v272, v225, v67);
  swift_storeEnumTagMultiPayload();
  sub_22BBE6DE0(&qword_27D8E5D78, &qword_22BDCC068);
  v79 = *(_s19EvaluatorVoteSourceOMa(0) - 8);
  v80 = *(v79 + 72);
  v81 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  *(swift_allocObject() + 16) = xmmword_22BDBCBD0;
  sub_22BD17DF8();
  swift_storeEnumTagMultiPayload();
  sub_22BD17E4C(v67, _s24StatementExecutionResultOMa);
LABEL_55:
  v134 = 1;
LABEL_56:
  sub_22BB32FA4(&v277);
  return v134;
}

uint64_t sub_22BD176F4()
{
  v1 = sub_22BB2F474();
  v3 = v2(v1);
  sub_22BB2F330(v3);
  v5 = *(v4 + 40);
  v6 = sub_22BB31F54();
  v7(v6);
  return v0;
}

uint64_t sub_22BD17748(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_22BD17788(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22BD1780C()
{
  result = qword_27D8E5C88;
  if (!qword_27D8E5C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5C88);
  }

  return result;
}

unint64_t sub_22BD17864()
{
  result = qword_27D8E5C90;
  if (!qword_27D8E5C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5C90);
  }

  return result;
}

unint64_t sub_22BD178BC()
{
  result = qword_27D8E5C98;
  if (!qword_27D8E5C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5C98);
  }

  return result;
}

unint64_t sub_22BD17914()
{
  result = qword_27D8E5CA0;
  if (!qword_27D8E5CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5CA0);
  }

  return result;
}

unint64_t sub_22BD17968()
{
  result = qword_27D8E5CD8;
  if (!qword_27D8E5CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5CD8);
  }

  return result;
}

unint64_t sub_22BD179BC()
{
  result = qword_27D8E5CE0;
  if (!qword_27D8E5CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5CE0);
  }

  return result;
}

unint64_t sub_22BD17A10()
{
  result = qword_27D8E5CE8;
  if (!qword_27D8E5CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5CE8);
  }

  return result;
}

unint64_t sub_22BD17A64()
{
  result = qword_27D8E5CF0;
  if (!qword_27D8E5CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5CF0);
  }

  return result;
}

unint64_t sub_22BD17AB8()
{
  result = qword_27D8E5CF8;
  if (!qword_27D8E5CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5CF8);
  }

  return result;
}

unint64_t sub_22BD17B0C()
{
  result = qword_27D8E5D00;
  if (!qword_27D8E5D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5D00);
  }

  return result;
}

unint64_t sub_22BD17B60()
{
  result = qword_27D8E5D10;
  if (!qword_27D8E5D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5D10);
  }

  return result;
}

uint64_t sub_22BD17BB4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_22BBEB2E0(&qword_27D8E5D18, &qword_22BDCC028);
    sub_22BD17CA0(a2, _s19EvaluatorVoteSourceOMa);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BD17CA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BD17CE8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void *, uint64_t))
{
  v10 = _s19TranscriptRetrieverVMa();
  v11 = &off_283F7A608;
  sub_22BB8B8A0(v9);
  sub_22BD17DF8();
  v7 = sub_22BB69FEC(v9, v10);
  a4(a1, v7, a3);
  sub_22BB32FA4(v9);
  return a3;
}

uint64_t sub_22BD17DA4()
{
  v1 = sub_22BB2F474();
  v3 = v2(v1);
  sub_22BB2F330(v3);
  v5 = *(v4 + 32);
  v6 = sub_22BB31F54();
  v7(v6);
  return v0;
}

uint64_t sub_22BD17DF8()
{
  v1 = sub_22BB2F474();
  v3 = v2(v1);
  sub_22BB2F330(v3);
  v5 = *(v4 + 16);
  v6 = sub_22BB31F54();
  v7(v6);
  return v0;
}

uint64_t sub_22BD17E4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BB2F330(v3);
  (*(v4 + 8))(a1);
  return a1;
}

_BYTE *_s13VotingOutcomeV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_22BD17F80(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22BD180C0()
{
  result = qword_27D8E5D80;
  if (!qword_27D8E5D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5D80);
  }

  return result;
}

unint64_t sub_22BD18118()
{
  result = qword_27D8E5D88;
  if (!qword_27D8E5D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5D88);
  }

  return result;
}

unint64_t sub_22BD18170()
{
  result = qword_27D8E5D90;
  if (!qword_27D8E5D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5D90);
  }

  return result;
}

unint64_t sub_22BD181C8()
{
  result = qword_27D8E5D98;
  if (!qword_27D8E5D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5D98);
  }

  return result;
}

unint64_t sub_22BD18220()
{
  result = qword_27D8E5DA0;
  if (!qword_27D8E5DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5DA0);
  }

  return result;
}

unint64_t sub_22BD18278()
{
  result = qword_27D8E5DA8;
  if (!qword_27D8E5DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5DA8);
  }

  return result;
}

unint64_t sub_22BD182D0()
{
  result = qword_27D8E5DB0;
  if (!qword_27D8E5DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5DB0);
  }

  return result;
}

unint64_t sub_22BD18328()
{
  result = qword_27D8E5DB8;
  if (!qword_27D8E5DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5DB8);
  }

  return result;
}

unint64_t sub_22BD18380()
{
  result = qword_27D8E5DC0;
  if (!qword_27D8E5DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5DC0);
  }

  return result;
}

unint64_t sub_22BD183D8()
{
  result = qword_27D8E5DC8;
  if (!qword_27D8E5DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5DC8);
  }

  return result;
}

unint64_t sub_22BD18430()
{
  result = qword_27D8E5DD0;
  if (!qword_27D8E5DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5DD0);
  }

  return result;
}

unint64_t sub_22BD18488()
{
  result = qword_27D8E5DD8;
  if (!qword_27D8E5DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5DD8);
  }

  return result;
}

unint64_t sub_22BD184E0()
{
  result = qword_27D8E5DE0;
  if (!qword_27D8E5DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5DE0);
  }

  return result;
}

unint64_t sub_22BD18538()
{
  result = qword_27D8E5DE8;
  if (!qword_27D8E5DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5DE8);
  }

  return result;
}

unint64_t sub_22BD18590()
{
  result = qword_27D8E5DF0;
  if (!qword_27D8E5DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5DF0);
  }

  return result;
}

unint64_t sub_22BD185E8()
{
  result = qword_27D8E5DF8;
  if (!qword_27D8E5DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5DF8);
  }

  return result;
}

unint64_t sub_22BD18640()
{
  result = qword_27D8E5E00;
  if (!qword_27D8E5E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5E00);
  }

  return result;
}

unint64_t sub_22BD18694()
{
  result = qword_27D8E5E28;
  if (!qword_27D8E5E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5E28);
  }

  return result;
}

unint64_t sub_22BD186E8()
{
  result = qword_27D8E5E30;
  if (!qword_27D8E5E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5E30);
  }

  return result;
}

unint64_t sub_22BD1873C()
{
  result = qword_27D8E5E38;
  if (!qword_27D8E5E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5E38);
  }

  return result;
}

unint64_t sub_22BD18790()
{
  result = qword_27D8E5E40;
  if (!qword_27D8E5E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5E40);
  }

  return result;
}

_BYTE *sub_22BD187E4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22BD188F4()
{
  result = qword_27D8E5E68;
  if (!qword_27D8E5E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5E68);
  }

  return result;
}

unint64_t sub_22BD1894C()
{
  result = qword_27D8E5E70;
  if (!qword_27D8E5E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5E70);
  }

  return result;
}

unint64_t sub_22BD189A4()
{
  result = qword_27D8E5E78;
  if (!qword_27D8E5E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5E78);
  }

  return result;
}

unint64_t sub_22BD189FC()
{
  result = qword_27D8E5E80;
  if (!qword_27D8E5E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5E80);
  }

  return result;
}

unint64_t sub_22BD18A54()
{
  result = qword_27D8E5E88;
  if (!qword_27D8E5E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5E88);
  }

  return result;
}

unint64_t sub_22BD18AAC()
{
  result = qword_27D8E5E90;
  if (!qword_27D8E5E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5E90);
  }

  return result;
}

unint64_t sub_22BD18B04()
{
  result = qword_27D8E5E98;
  if (!qword_27D8E5E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5E98);
  }

  return result;
}

unint64_t sub_22BD18B5C()
{
  result = qword_27D8E5EA0;
  if (!qword_27D8E5EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5EA0);
  }

  return result;
}

unint64_t sub_22BD18BB4()
{
  result = qword_27D8E5EA8;
  if (!qword_27D8E5EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5EA8);
  }

  return result;
}

uint64_t FeedbackLearning.StandardTupleGenerator.generateInteractionRecordFromEvaluation(evaluation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FeedbackLearningInteractionRecord();
  sub_22BD18CBC(a1, a2 + *(v4 + 20));
  v5 = sub_22BD19F48(a1);
  v6 = *(type metadata accessor for FeedbackLearning.TaskEvaluation(0) + 24);
  v7 = sub_22BDB7A84();
  sub_22BB2F330(v7);
  result = (*(v8 + 16))(a2, a1 + v6);
  *(a2 + *(v4 + 24)) = v5;
  return result;
}

uint64_t sub_22BD18CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v271 = a1;
  v262 = a2;
  v2 = type metadata accessor for FeedbackLearning.TaskEvaluation(0);
  v3 = sub_22BB2F330(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BB30C74();
  v259 = v6 - v7;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v8);
  sub_22BB2F384();
  v255 = v9;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v10);
  sub_22BB2F384();
  v252 = v11;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v12);
  sub_22BB2F39C();
  sub_22BB30B8C(v13);
  v261 = sub_22BDB77D4();
  v14 = sub_22BB30444(v261);
  v269 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BB30C74();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  sub_22BB2F384();
  v256 = v22;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v23);
  sub_22BB2F384();
  v253 = v24;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v25);
  sub_22BB2F384();
  v249 = v26;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v27);
  sub_22BB2F39C();
  sub_22BB30B8C(v28);
  v29 = sub_22BDB7BD4();
  v267 = sub_22BB30444(v29);
  v268 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v267);
  sub_22BB305A8();
  sub_22BB30B8C(v33);
  v34 = sub_22BDB7A94();
  v35 = sub_22BB2F0C8(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22BB305A8();
  v39 = sub_22BB30B8C(v38);
  v264 = _s23ParameterCandidateValueVMa(v39);
  v40 = sub_22BB30444(v264);
  v241 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22BB305A8();
  v263 = v44;
  v246 = sub_22BDB7A84();
  v45 = sub_22BB30444(v246);
  v245 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22BB305A8();
  sub_22BB30B8C(v49);
  v270 = sub_22BDB7B44();
  v50 = sub_22BB30444(v270);
  v254 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  sub_22BB30C74();
  v266 = v54 - v55;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v56);
  sub_22BB2F384();
  v265 = v57;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v58);
  sub_22BB2F384();
  v242 = v59;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v60);
  sub_22BB2F39C();
  v62 = sub_22BB30B8C(v61);
  v63 = type metadata accessor for FeedbackLearning.ActionValue(v62);
  v64 = sub_22BB2F330(v63);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  sub_22BB30C74();
  v69 = v67 - v68;
  MEMORY[0x28223BE20](v70);
  v72 = &v238 - v71;
  v244 = type metadata accessor for FeedbackLearning.TaskAction(0);
  v73 = sub_22BB2F330(v244);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73);
  sub_22BB305A8();
  v257 = v76;
  v77 = type metadata accessor for FeedbackLearning.TaskFinalResolutionValue(0);
  v78 = sub_22BB2F330(v77);
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v78);
  sub_22BB30C74();
  v83 = v81 - v82;
  MEMORY[0x28223BE20](v84);
  sub_22BB2F39C();
  v258 = v85;
  v86 = type metadata accessor for FeedbackLearning.TaskFinalResolutionState(0);
  v87 = sub_22BB2F0C8(v86);
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v87);
  v91 = &v238 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_22BBE6DE0(&qword_27D8E3D98, &qword_22BDC1130);
  v93 = sub_22BB2F0C8(v92);
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v93);
  sub_22BB30C74();
  v98 = v96 - v97;
  MEMORY[0x28223BE20](v99);
  v101 = &v238 - v100;
  v260 = v2;
  v102 = *(v2 + 32);
  v103 = v271;
  sub_22BD1BD2C(v271 + v102, v91);
  v104 = sub_22BBE6DE0(&qword_27D8E3D90, &unk_22BDC2EE0);
  if (sub_22BB3AA28(v91, 1, v104) != 1)
  {
    sub_22BD1BC64(v91, v101);
    sub_22BC7E3C4(v101, v98, &qword_27D8E3D98, &qword_22BDC1130);
    if (sub_22BB3AA28(v98, 1, v77) == 1)
    {
      v119 = v101;
      sub_22BB58728(v98, &qword_27D8E3D98, &qword_22BDC1130);
      v120 = v256;
      sub_22BDB6404();
      sub_22BB32C9C();
      v121 = v255;
      sub_22BD1BD2C(v103, v255);
      v122 = sub_22BDB77C4();
      v123 = sub_22BDBB104();
      v124 = sub_22BB69B08(v123);
      v117 = v262;
      if (v124)
      {
        sub_22BB31AD8();
        v272 = sub_22BB2F548();
        sub_22BB34388(4.8149e-34);
        sub_22BB33DD0();
        sub_22BD1BC1C(v125, v126);
        v127 = sub_22BDBB684();
        v117 = v128;
        sub_22BB35B90();
        sub_22BD1BD84(v121, v129);
        sub_22BB53D88();
        sub_22BB368DC();
        *(v98 + 4) = v127;
        sub_22BB37744(&dword_22BB2C000, v130, v131, "Statement id %s is not associated with a resolved statement, skipping generating a tuple interaction");
        sub_22BB37D70();
        sub_22BB35600();
      }

      else
      {

        sub_22BB35B90();
        sub_22BD1BD84(v121, v154);
      }

      sub_22BB38B78();
      v155(v120, v261);
    }

    else
    {
      v135 = v98;
      v136 = v258;
      sub_22BD1BCD4(v135, v258);
      sub_22BD1BD2C(v136, v83);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v117 = v262;
      if (EnumCaseMultiPayload == 1)
      {
        v138 = v83;
        v139 = v257;
        sub_22BD1BCD4(v138, v257);
        v140 = *(type metadata accessor for FeedbackLearning.FlowActionEvent(0) + 20);
        v141 = sub_22BB31188();
        sub_22BD1BD2C(v141, v72);
        v142 = swift_getEnumCaseMultiPayload();
        sub_22BD1BD84(v72, type metadata accessor for FeedbackLearning.ActionValue);
        v239 = v101;
        if (v142 == 1)
        {
          v143 = v249;
          sub_22BDB6404();
          sub_22BB32C9C();
          v144 = v248;
          sub_22BD1BD2C(v271, v248);
          v145 = sub_22BDB77C4();
          v146 = sub_22BDBB104();
          if (sub_22BB69B08(v146))
          {
            sub_22BB31AD8();
            v272 = sub_22BB2F548();
            sub_22BB34388(4.8149e-34);
            sub_22BB33DD0();
            sub_22BD1BC1C(v147, v148);
            v149 = sub_22BDBB684();
            v117 = v150;
            sub_22BB35B90();
            sub_22BD1BD84(v144, v151);
            sub_22BB53D88();
            sub_22BB368DC();
            *(v140 + 4) = v149;
            sub_22BB37744(&dword_22BB2C000, v152, v153, "Statement id %s is not associated with an IntelligenceFlow action statement, skipping generating a tuple interaction");
            sub_22BB37D70();
            sub_22BB35600();
          }

          else
          {

            sub_22BB35B90();
            sub_22BD1BD84(v144, v215);
          }

          sub_22BB38B78();
          v216(v143, v261);
          sub_22BB31D58();
          sub_22BD1BD84(v139, v217);
          sub_22BB30878();
          sub_22BD1BD84(v258, v218);
          v194 = v239;
        }

        else
        {
          v168 = sub_22BB31188();
          sub_22BD1BD2C(v168, v69);
          v169 = _s13ActionCreatedCMa(0);
          v170 = *(v169 + 48);
          v171 = *(v169 + 52);
          v172 = swift_allocObject();
          *(v172 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning13ActionCreated____lazy_storage___parameters) = 0;
          sub_22BD1BCD4(v69, v172 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning13ActionCreated_action);
          v173 = sub_22BCB1C94();
          swift_setDeallocating();
          sub_22BCB3E8C();
          v174 = 1 << *(v173 + 32);
          v175 = -1;
          if (v174 < 64)
          {
            v175 = ~(-1 << v174);
          }

          v176 = v175 & *(v173 + 64);
          v177 = (v174 + 63) >> 6;
          v256 = v173;

          v179 = 0;
          v180 = MEMORY[0x277D84F90];
          if (!v176)
          {
            while (1)
            {
LABEL_19:
              v181 = v179 + 1;
              if (__OFADD__(v179, 1))
              {
                __break(1u);
                return result;
              }

              if (v181 >= v177)
              {
                break;
              }

              v176 = *(v173 + 64 + 8 * v181);
              ++v179;
              if (v176)
              {
                v179 = v181;
                goto LABEL_23;
              }
            }

            v196 = v257;
            v197 = v257 + *(v244 + 20);
            v198 = v250;
            sub_22BDBA004();
            sub_22BBE6DE0(&qword_27D8E5ED0, &unk_22BDCD5E0);
            v199 = v254;
            v200 = (*(v254 + 80) + 32) & ~*(v254 + 80);
            v269 = *(v254 + 72);
            v201 = swift_allocObject();
            *(v201 + 16) = xmmword_22BDBCBD0;
            v202 = *(v199 + 16);
            v261 = v200;
            v202(v201 + v200, v198, v270);
            sub_22BCDF920(v180);
            v204 = v203;

            v205 = *(v204 + 16);
            if (v205)
            {
              v255 = v201;
              v272 = MEMORY[0x277D84F90];
              sub_22BD27D08();
              v206 = v270;
              v207 = v272;
              v208 = *(v241 + 80);
              v253 = v204;
              v209 = v204 + ((v208 + 32) & ~v208);
              v259 = *(v241 + 72);
              v210 = (v199 + 32);
              v211 = v242;
              do
              {
                v212 = v263;
                sub_22BD1BD2C(v209, v263);
                v202(v211, v212 + *(v264 + 20), v206);
                sub_22BD1BD84(v212, _s23ParameterCandidateValueVMa);
                v272 = v207;
                v214 = *(v207 + 16);
                v213 = *(v207 + 24);
                if (v214 >= v213 >> 1)
                {
                  sub_22BB3816C(v213);
                  sub_22BD27D08();
                  v206 = v270;
                  v207 = v272;
                }

                *(v207 + 16) = v214 + 1;
                (*v210)(v207 + v261 + v214 * v269, v211, v206);
                v209 += v259;
                --v205;
              }

              while (v205);

              v117 = v262;
              v196 = v257;
              v201 = v255;
            }

            else
            {

              v207 = MEMORY[0x277D84F90];
            }

            v272 = v201;
            sub_22BD66AFC(v207);
            v219 = v272;
            (*(v245 + 16))(v251, v271 + *(v260 + 24), v246);
            v220 = *(v219 + 16);
            if (v220)
            {
              v272 = MEMORY[0x277D84F90];
              sub_22BD27CB0();
              v221 = v272;
              v222 = v219 + v261;
              v223 = (v254 + 8);
              v263 = v219;
              v264 = v268 + 32;
              v224 = v243;
              v225 = v265;
              do
              {
                v226 = v270;
                v202(v225, v222, v270);
                v202(v266, v225, v226);
                sub_22BDB7BA4();
                (*v223)(v225, v226);
                v272 = v221;
                v228 = *(v221 + 16);
                v227 = *(v221 + 24);
                if (v228 >= v227 >> 1)
                {
                  sub_22BB3816C(v227);
                  sub_22BD27CB0();
                  v221 = v272;
                }

                *(v221 + 16) = v228 + 1;
                (*(v268 + 32))(v221 + ((*(v268 + 80) + 32) & ~*(v268 + 80)) + *(v268 + 72) * v228, v224, v267);
                v222 += v269;
                --v220;
              }

              while (v220);

              v196 = v257;
              v117 = v262;
            }

            else
            {
            }

            sub_22BD1A148(v271 + *(v260 + 36), v247);
            sub_22BDB7AB4();

            (*(v254 + 8))(v250, v270);
            sub_22BB31D58();
            sub_22BD1BD84(v196, v229);
            sub_22BB30878();
            sub_22BD1BD84(v258, v230);
            sub_22BB58728(v239, &qword_27D8E3D98, &qword_22BDC1130);
            v134 = 0;
            goto LABEL_35;
          }

LABEL_23:
          while (1)
          {
            v182 = *(v256 + 56);
            v183 = (v179 << 9) | (8 * __clz(__rbit64(v176)));
            v184 = *(v182 + v183);
            if (!v184)
            {
              break;
            }

            v185 = *(v182 + v183);
            swift_bridgeObjectRetain_n();
            v186 = v101;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v188 = *(v180 + 16);
              sub_22BD8FB8C();
              v180 = v189;
            }

            v187 = *(v180 + 16);
            if (v187 >= *(v180 + 24) >> 1)
            {
              sub_22BD8FB8C();
              v180 = v190;
            }

            v176 &= v176 - 1;

            *(v180 + 16) = v187 + 1;
            *(v180 + 8 * v187 + 32) = v184;
            v101 = v186;
            if (!v176)
            {
              goto LABEL_19;
            }
          }

          v231 = v240;
          sub_22BDB6404();
          v232 = sub_22BDB77C4();
          v233 = sub_22BDBB114();
          if (os_log_type_enabled(v232, v233))
          {
            v234 = swift_slowAlloc();
            *v234 = 0;
            _os_log_impl(&dword_22BB2C000, v232, v233, "The final action parameters are not all candidate id extractable, skipping generating a tuple interaction", v234, 2u);
            sub_22BB35600();
          }

          sub_22BB38B78();
          v235(v231, v261);
          sub_22BB31D58();
          sub_22BD1BD84(v257, v236);
          sub_22BB30878();
          sub_22BD1BD84(v258, v237);
          v194 = v101;
        }

LABEL_33:
        sub_22BB58728(v194, &qword_27D8E3D98, &qword_22BDC1130);
        goto LABEL_34;
      }

      v119 = v101;
      sub_22BB30878();
      sub_22BD1BD84(v83, v156);
      v157 = v253;
      sub_22BDB6404();
      sub_22BB32C9C();
      v158 = v252;
      sub_22BD1BD2C(v271, v252);
      v159 = sub_22BDB77C4();
      v160 = sub_22BDBB104();
      if (sub_22BB69B08(v160))
      {
        sub_22BB31AD8();
        v272 = sub_22BB2F548();
        sub_22BB34388(4.8149e-34);
        sub_22BB33DD0();
        sub_22BD1BC1C(v161, v162);
        v163 = sub_22BDBB684();
        v117 = v164;
        sub_22BB35B90();
        sub_22BD1BD84(v158, v165);
        sub_22BB53D88();
        sub_22BB368DC();
        *(v136 + 4) = v163;
        sub_22BB37744(&dword_22BB2C000, v166, v167, "Statement id %s is not associated with an action statement, skipping generating a tuple interaction");
        sub_22BB37D70();
        sub_22BB35600();
      }

      else
      {

        sub_22BB35B90();
        sub_22BD1BD84(v158, v191);
      }

      sub_22BB38B78();
      v192(v157, v261);
      sub_22BB30878();
      sub_22BD1BD84(v258, v193);
    }

    v194 = v119;
    goto LABEL_33;
  }

  sub_22BD1BD84(v91, type metadata accessor for FeedbackLearning.TaskFinalResolutionState);
  sub_22BDB6404();
  sub_22BB32C9C();
  v105 = v259;
  sub_22BD1BD2C(v103, v259);
  v106 = sub_22BDB77C4();
  v107 = sub_22BDBB104();
  if (os_log_type_enabled(v106, v107))
  {
    sub_22BB31AD8();
    v108 = sub_22BB2F548();
    v272 = v108;
    sub_22BB34388(4.8149e-34);
    sub_22BB33DD0();
    sub_22BD1BC1C(v109, v110);
    v111 = sub_22BDBB684();
    v113 = v112;
    sub_22BB35B90();
    sub_22BD1BD84(v105, v114);
    v115 = sub_22BB32EE0(v111, v113, &v272);

    *(v98 + 4) = v115;
    _os_log_impl(&dword_22BB2C000, v106, v107, "The final resolution state for statement id %s is incomplete, skipping generating a tuple interaction", v98, 0xCu);
    sub_22BB32FA4(v108);
    v116 = v108;
    v117 = v262;
    MEMORY[0x2318A6080](v116, -1, -1);
    sub_22BB35600();

    sub_22BB38B78();
    v118(v20, v261);
LABEL_34:
    v134 = 1;
    goto LABEL_35;
  }

  sub_22BB35B90();
  sub_22BD1BD84(v105, v132);
  sub_22BB38B78();
  v133(v20, v261);
  v134 = 1;
  v117 = v262;
LABEL_35:
  v195 = sub_22BDB7AD4();
  return sub_22BB336D0(v117, v134, 1, v195);
}

uint64_t sub_22BD19F48(uint64_t a1)
{
  v2 = type metadata accessor for FeedbackLearning.TypedCandidateInteraction(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_22BB30C74();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v23[-v9];
  v11 = *(a1 + *(type metadata accessor for FeedbackLearning.TaskEvaluation(0) + 28));
  v24 = a1;
  sub_22BCA8038();
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v15 = *(v3 + 72);
    v16 = MEMORY[0x277D84F90];
    do
    {
      sub_22BD1BD2C(v14, v10);
      sub_22BB372F0();
      sub_22BD1BCD4(v10, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = *(v16 + 16);
        sub_22BD8FC50();
        v16 = v20;
      }

      v17 = *(v16 + 16);
      if (v17 >= *(v16 + 24) >> 1)
      {
        sub_22BD8FC50();
        v16 = v21;
      }

      *(v16 + 16) = v17 + 1;
      sub_22BB372F0();
      sub_22BD1BCD4(v7, v18);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v16;
}

uint64_t sub_22BD1A148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FeedbackLearning.TaskFailureReason(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeedbackLearning.TaskStatus(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22BDB7A94();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v53 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22BDB77D4();
  v51 = *(v16 - 8);
  v52 = v16;
  v17 = *(v51 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22BBE6DE0(&qword_27D8E5EC8, &qword_22BDCCC18);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v45 - v22;
  v24 = *(a1 + *(type metadata accessor for FeedbackLearning.TaskOutcome(0) + 20));
  if (v24 != 3)
  {
    v50 = v7;
    v25 = v12;
    v26 = a2;
    v27 = *(v20 + 48);
    *v23 = v24;
    sub_22BD1BD2C(a1, &v23[v27]);
    v28 = *v23;
    v29 = sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
    v30 = sub_22BB3AA28(&v23[v27], 4, v29);
    if (v28)
    {
      if (v28 == 1)
      {
        a2 = v26;
        v12 = v25;
        switch(v30)
        {
          case 1:
          case 3:
          case 4:
            break;
          case 2:
            goto LABEL_12;
          default:
            sub_22BD1BD84(&v23[v27], type metadata accessor for FeedbackLearning.TaskFailureReason);
            break;
        }

        v31 = MEMORY[0x277D1D5C8];
        return (*(v13 + 104))(a2, *v31, v12);
      }

      a2 = v26;
      v12 = v25;
      if ((v30 | 2) == 3)
      {
        v31 = MEMORY[0x277D1D5D8];
        return (*(v13 + 104))(a2, *v31, v12);
      }
    }

    else
    {
      a2 = v26;
      v12 = v25;
      if ((v30 - 1) <= 1)
      {
        v31 = MEMORY[0x277D1D5C0];
        return (*(v13 + 104))(a2, *v31, v12);
      }
    }

LABEL_12:
    sub_22BDB6404();
    v33 = sub_22BDB77C4();
    v34 = sub_22BDBB134();
    if (os_log_type_enabled(v33, v34))
    {
      v48 = v34;
      v49 = v33;
      v35 = 0xEA00000000006465;
      v36 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v54 = v46;
      v47 = v36;
      *v36 = 136315138;
      v37 = 0xE900000000000064;
      v38 = 0x657463656A65722ELL;
      if (v24 != 1)
      {
        v38 = 0x6E6F646E6162612ELL;
        v37 = 0xEA00000000006465;
      }

      if (v24)
      {
        v39 = v38;
      }

      else
      {
        v39 = 0x6D7269666E6F632ELL;
      }

      if (v24)
      {
        v35 = v37;
      }

      v7 = v50;
      v45 = sub_22BB32EE0(v39, v35, &v54);

      v40 = v47;
      *(v47 + 1) = v45;
      _os_log_impl(&dword_22BB2C000, v49, v48, "Generating a score based on task outcome, ignoring task confirmation %s", v40, 0xCu);
      v41 = v46;
      sub_22BB32FA4(v46);
      MEMORY[0x2318A6080](v41, -1, -1);
      MEMORY[0x2318A6080](v40, -1, -1);

      (*(v51 + 8))(v19, v52);
    }

    else
    {

      (*(v51 + 8))(v19, v52);
      v7 = v50;
    }

    sub_22BB58728(v23, &qword_27D8E5EC8, &qword_22BDCCC18);
  }

  sub_22BD1BD2C(a1, v11);
  v42 = sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
  switch(sub_22BB3AA28(v11, 4, v42))
  {
    case 1u:
    case 3u:
      v43 = MEMORY[0x277D1D5E8];
      goto LABEL_28;
    case 2u:
      v43 = MEMORY[0x277D1D5F0];
      goto LABEL_28;
    case 4u:
      v43 = MEMORY[0x277D1D5C8];
LABEL_28:
      v44 = v53;
      (*(v13 + 104))(v53, *v43, v12);
      break;
    default:
      sub_22BD1BCD4(v11, v7);
      v44 = v53;
      sub_22BD1AEC0(v7, v53);
      sub_22BD1BD84(v7, type metadata accessor for FeedbackLearning.TaskFailureReason);
      break;
  }

  return (*(v13 + 32))(a2, v44, v12);
}

uint64_t sub_22BD1A73C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v59 = a2;
  v4 = type metadata accessor for FeedbackLearning.CandidateEvaluation(0);
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x28223BE20](v4);
  v60 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_22BDB77D4();
  v62 = *(v58 - 8);
  v7 = *(v62 + 64);
  MEMORY[0x28223BE20](v58);
  v61 = (v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_22BDB7A94();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BDB7B44();
  v57 = *(v13 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x28223BE20](v13);
  v56 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22BDB7BD4();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v55[1] = v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22BDB7A84();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22BDB7B94();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v29 = v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  if (*(a1 + v4[10]))
  {
    v61 = v27;
    v62 = v26;
    v43 = type metadata accessor for FeedbackLearning.TaskEvaluation(0);
    v44 = *(v43 + 24);
    v45 = *(v20 + 16);
    v60 = v12;
    v46 = v13;
    v47 = v59;
    v45(v23, v59 + v44, v19);
    (*(v57 + 16))(v56, v30 + v4[7], v46);
    sub_22BDB7BA4();
    v64 = *(v30 + v4[9]);
    sub_22BD1AD34(&v64, v47 + *(v43 + 36), v60);
    sub_22BDB7B54();
    v48 = v63;
    sub_22BD1BD2C(v30 + v4[6], v63);
    v49 = type metadata accessor for FeedbackLearning.TypedCandidateInteraction(0);
    v61[4](v48 + *(v49 + 20), v29, v62);
    v50 = v48;
    v51 = 0;
    v52 = v49;
  }

  else
  {
    v31 = v61;
    sub_22BDB6404();
    v32 = v60;
    sub_22BD1BD2C(a1, v60);
    v33 = sub_22BDB77C4();
    v34 = sub_22BDBB104();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v65 = v36;
      *v35 = 136315138;
      v37 = v4[7];
      sub_22BD1BC1C(&qword_27D8E3E70, MEMORY[0x277D1D608]);
      v38 = sub_22BDBB684();
      v39 = v32;
      v41 = v40;
      sub_22BD1BD84(v39, type metadata accessor for FeedbackLearning.CandidateEvaluation);
      v42 = sub_22BB32EE0(v38, v41, &v65);

      *(v35 + 4) = v42;
      _os_log_impl(&dword_22BB2C000, v33, v34, "Discarding a candidate interaction with candidateId=%s, interaction store donation is not enabled for this candidate", v35, 0xCu);
      sub_22BB32FA4(v36);
      MEMORY[0x2318A6080](v36, -1, -1);
      MEMORY[0x2318A6080](v35, -1, -1);
    }

    else
    {

      sub_22BD1BD84(v32, type metadata accessor for FeedbackLearning.CandidateEvaluation);
    }

    (*(v62 + 8))(v31, v58);
    v53 = v63;
    v52 = type metadata accessor for FeedbackLearning.TypedCandidateInteraction(0);
    v50 = v53;
    v51 = 1;
  }

  return sub_22BB336D0(v50, v51, 1, v52);
}

uint64_t sub_22BD1AD34@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (v4 >> 6)
  {
    if (v4 >> 6 != 1)
    {
      switch(*a1)
      {
        case 0x81:
          v9 = MEMORY[0x277D1D5D8];
          goto LABEL_14;
        case 0x82:
          return sub_22BD1A148(a2, a3);
        default:
          v9 = MEMORY[0x277D1D5F0];
LABEL_14:
          v12 = *v9;
          v13 = sub_22BDB7A94();
          v6 = *(*(v13 - 8) + 104);
          v7 = v13;
          v11 = a3;
          v10 = v12;
          goto LABEL_15;
      }
    }

    v5 = sub_22BDB7A94();
    v6 = *(*(v5 - 8) + 104);
    v7 = v5;
    switch(v4 & 0x3F)
    {
      case 1u:
        v8 = MEMORY[0x277D1D5A8];
        break;
      case 2u:
        goto LABEL_11;
      case 3u:
        goto LABEL_7;
      default:
        goto LABEL_10;
    }
  }

  else
  {
    v7 = sub_22BDB7A94();
    v6 = *(*(v7 - 8) + 104);
    if (v4)
    {
      if (v4 == 1)
      {
LABEL_7:
        v8 = MEMORY[0x277D1D5C8];
      }

      else
      {
LABEL_11:
        v8 = MEMORY[0x277D1D5D8];
      }
    }

    else
    {
LABEL_10:
      v8 = MEMORY[0x277D1D5C0];
    }
  }

  v10 = *v8;
  v11 = a3;
LABEL_15:

  return v6(v11, v10, v7);
}

uint64_t sub_22BD1AEC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22BDB7A94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BDB4C84();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = type metadata accessor for FeedbackLearning.TaskFailureReason(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BD1BD2C(a1, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 104))(a2, *MEMORY[0x277D1D5B0], v4);
    return sub_22BD1BD84(v19, type metadata accessor for FeedbackLearning.TaskFailureReason);
  }

  (*(v9 + 32))(v15, v19, v8);
  (*(v9 + 16))(v13, v15, v8);
  v21 = (*(v9 + 88))(v13, v8);
  if (v21 != *MEMORY[0x277D1C3F0] && v21 != *MEMORY[0x277D1C3F8])
  {
    if (v21 == *MEMORY[0x277D1C388])
    {
LABEL_10:
      (*(v9 + 8))(v15, v8);
      v23 = v27;
      (*(v5 + 104))(v27, *MEMORY[0x277D1D5B8], v4);
      goto LABEL_6;
    }

    v24 = a2;
    if (v21 == *MEMORY[0x277D1C408] || v21 == *MEMORY[0x277D1C3D8] || v21 == *MEMORY[0x277D1C3A8] || v21 == *MEMORY[0x277D1C3E0] || v21 == *MEMORY[0x277D1C390])
    {
      (*(v9 + 8))(v15, v8);
      v25 = MEMORY[0x277D1D5E0];
    }

    else
    {
      if (v21 != *MEMORY[0x277D1C398] && v21 != *MEMORY[0x277D1C3E8] && v21 != *MEMORY[0x277D1C410] && v21 != *MEMORY[0x277D1C3B8] && v21 != *MEMORY[0x277D1C3D0])
      {
        if (v21 != *MEMORY[0x277D1C418] && v21 != *MEMORY[0x277D1C3C0] && v21 != *MEMORY[0x277D1C3A0] && v21 != *MEMORY[0x277D1C3B0] && v21 != *MEMORY[0x277D1C3C8] && v21 != *MEMORY[0x277D1C420] && v21 != *MEMORY[0x277D1C400])
        {
          result = sub_22BDBB6C4();
          __break(1u);
          return result;
        }

        goto LABEL_10;
      }

      (*(v9 + 8))(v15, v8);
      v25 = MEMORY[0x277D1D5B8];
    }

    v23 = v27;
    (*(v5 + 104))(v27, *v25, v4);
    return (*(v5 + 32))(v24, v23, v4);
  }

  v22 = *(v9 + 8);
  v22(v15, v8);
  v23 = v27;
  (*(v5 + 104))(v27, *MEMORY[0x277D1D5B8], v4);
  v22(v13, v8);
LABEL_6:
  v24 = a2;
  return (*(v5 + 32))(v24, v23, v4);
}