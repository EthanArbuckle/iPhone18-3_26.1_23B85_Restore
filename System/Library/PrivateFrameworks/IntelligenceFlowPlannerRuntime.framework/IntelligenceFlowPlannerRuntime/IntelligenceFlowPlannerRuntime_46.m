uint64_t sub_22C761F14()
{
  v1 = sub_22C90665C();
  v2 = sub_22C369824(v1);
  v91 = v3;
  v92 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v90 = v7 - v6;
  sub_22C36BA0C();
  v8 = sub_22C9063DC();
  v9 = sub_22C369824(v8);
  v93 = v10;
  v94 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369ABC();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  sub_22C50B4C8();
  MEMORY[0x28223BE20](v17);
  sub_22C36BA64();
  v89 = v18;
  sub_22C36BA0C();
  v19 = sub_22C90681C();
  v20 = sub_22C369824(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C369ABC();
  v27 = (v25 - v26);
  MEMORY[0x28223BE20](v28);
  v30 = &v88 - v29;
  v31 = sub_22C90682C();
  v32 = sub_22C369824(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C369838();
  v39 = v38 - v37;
  sub_22C908CCC();
  v40 = v34[11];
  v41 = sub_22C36DA14();
  v43 = v42(v41);
  if (v43 == *MEMORY[0x277D1DBF0])
  {
LABEL_2:
    v44 = v34[1];
    v45 = sub_22C36DA14();
    v46(v45);
    return 0;
  }

  if (v43 == *MEMORY[0x277D1DC08])
  {
    v48 = v34[12];
    v49 = sub_22C36DA14();
    v50(v49);
    v51 = v90;
    v52 = v91;
    v53 = v92;
    (*(v91 + 32))(v90, v39, v92);
    v47 = sub_22C9065EC();
    v55 = v54;
    if (v54)
    {
      sub_22C903FAC();

      v56 = sub_22C9063CC();
      v57 = sub_22C90AABC();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = sub_22C383050();
        v95 = sub_22C37A180();
        *v58 = 136315394;
        sub_22C36EE00();
        *(v58 + 4) = sub_22C377680(v59, v60);
        *(v58 + 12) = 2080;
        *(v58 + 14) = sub_22C36F9F4(v47, v55, &v95);
        _os_log_impl(&dword_22C366000, v56, v57, "%s Resolved .string querypayload to '%s'", v58, 0x16u);
        swift_arrayDestroy();
        sub_22C3699EC();
        sub_22C3699EC();
      }

      (*(v93 + 8))(v0, v94);
    }

    (*(v52 + 8))(v51, v53);
  }

  else
  {
    if (v43 != *MEMORY[0x277D1DC10])
    {
      sub_22C903FAC();
      v79 = sub_22C9063CC();
      v80 = sub_22C90AABC();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v95 = v82;
        *v81 = 136315138;
        sub_22C36EE00();
        *(v81 + 4) = sub_22C377680(v83, v84);
        _os_log_impl(&dword_22C366000, v79, v80, "%s Unsupported query payload type, returning nothing.", v81, 0xCu);
        sub_22C36FF94(v82);
        sub_22C3699EC();
        sub_22C372A84();
      }

      (*(v93 + 8))(v15, v94);
      goto LABEL_2;
    }

    v61 = v34[12];
    v62 = sub_22C36DA14();
    v63(v62);
    v64 = v19;
    (*(v22 + 32))(v30, v39, v19);
    v65 = v89;
    sub_22C903FAC();
    (*(v22 + 16))(v27, v30, v64);
    v66 = sub_22C9063CC();
    v67 = sub_22C90AABC();
    if (sub_22C36FBB4(v67))
    {
      v68 = sub_22C383050();
      v92 = sub_22C37A180();
      v95 = v92;
      *v68 = 136315394;
      sub_22C36EE00();
      v71 = sub_22C377680(v69, v70);
      sub_22C389260(v71);
      v72 = sub_22C9067EC();
      v74 = v73;
      v75 = sub_22C374F90();
      v76(v75);
      v77 = sub_22C36F9F4(v72, v74, &v95);

      *(v68 + 14) = v77;
      sub_22C376924(&dword_22C366000, v78, v67, "%s Resolved .string querypayload to '%s'");
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C372A84();
    }

    else
    {

      v85 = sub_22C374F90();
      v86(v85);
    }

    (*(v93 + 8))(v65, v94);
    v47 = sub_22C9067EC();
    v27(v30, v64);
  }

  return v47;
}

uint64_t sub_22C76256C()
{
  v188 = sub_22C9092DC();
  v1 = sub_22C369824(v188);
  v181 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369ABC();
  v185 = v5 - v6;
  sub_22C369930();
  MEMORY[0x28223BE20](v7);
  sub_22C36BA64();
  v187 = v8;
  sub_22C36BA0C();
  v9 = sub_22C90931C();
  v10 = sub_22C369824(v9);
  v186 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369ABC();
  v16 = (v14 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = &v170 - v18;
  v20 = sub_22C90910C();
  v174 = sub_22C369824(v20);
  v175 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v174);
  sub_22C369838();
  v178 = v25 - v24;
  sub_22C36BA0C();
  v26 = sub_22C9063DC();
  v190 = sub_22C369824(v26);
  v191 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v190);
  sub_22C369ABC();
  v172 = v30 - v31;
  sub_22C369930();
  MEMORY[0x28223BE20](v32);
  sub_22C36BA58();
  v180 = v33;
  sub_22C369930();
  MEMORY[0x28223BE20](v34);
  sub_22C36BA58();
  v171 = v35;
  sub_22C369930();
  MEMORY[0x28223BE20](v36);
  sub_22C36BA64();
  v176 = v37;
  v38 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v39 = sub_22C369914(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22C369ABC();
  sub_22C50B4C8();
  MEMORY[0x28223BE20](v42);
  v44 = &v170 - v43;
  v189 = sub_22C90993C();
  v45 = sub_22C369824(v189);
  v177 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22C369ABC();
  v170 = v49 - v50;
  sub_22C369930();
  MEMORY[0x28223BE20](v51);
  sub_22C36BA58();
  v173 = v52;
  sub_22C369930();
  v54 = MEMORY[0x28223BE20](v53);
  v56 = &v170 - v55;
  MEMORY[0x28223BE20](v54);
  sub_22C36BA64();
  v179 = v57;
  sub_22C36BA0C();
  v58 = sub_22C90919C();
  v59 = sub_22C369824(v58);
  v183 = v60;
  v184 = v59;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  sub_22C369838();
  v182 = v64 - v63;
  sub_22C36BA0C();
  v65 = sub_22C9093BC();
  v66 = sub_22C369824(v65);
  v68 = v67;
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v66);
  sub_22C369838();
  v73 = (v72 - v71);
  sub_22C90774C();
  v74 = (*(v68 + 88))(v73, v65);
  if (v74 == *MEMORY[0x277D72A58])
  {
    v75 = sub_22C3709F4();
    v76(v75);
    v77 = *v73;
    v78 = swift_projectBox();
    v79 = v186;
    v80 = *(v186 + 16);
    v80(v19, v78, v9);
    v80(v16, v19, v9);
    v81 = *(v79 + 88);
    v82 = sub_22C369D14();
    if (v83(v82) == *MEMORY[0x277D729B0])
    {
      v184 = v77;
      v189 = v19;
      v84 = *(v79 + 96);
      v85 = sub_22C369D14();
      v86(v85);
      v87 = v181;
      v88 = *(v181 + 32);
      v89 = v187;
      v90 = v188;
      v91 = sub_22C36DA14();
      v92(v91);
      v93 = v180;
      sub_22C903FAC();
      v94 = v185;
      (*(v87 + 16))(v185, v89, v90);
      v95 = sub_22C9063CC();
      v96 = sub_22C90AABC();
      if (sub_22C36FBB4(v96))
      {
        v97 = sub_22C383050();
        v183 = sub_22C37A180();
        v192[0] = v183;
        *v97 = 136315394;
        v98 = sub_22C7637A8("extractCandidateTitle(from:)");
        sub_22C389260(v98);
        LODWORD(v182) = v96;
        v99 = sub_22C9092CC();
        v100 = [v99 displayName];

        v101 = sub_22C90A11C();
        v102 = v79;
        v104 = v103;

        v105 = *(v87 + 8);
        v105(v185, v188);
        v106 = sub_22C36F9F4(v101, v104, v192);
        v79 = v102;

        *(v97 + 14) = v106;
        sub_22C376924(&dword_22C366000, v107, v182, "%s Resolved .person title to '%s'");
        swift_arrayDestroy();
        v90 = v188;
        sub_22C3699EC();
        sub_22C372A84();
      }

      else
      {

        v105 = *(v87 + 8);
        v105(v94, v90);
      }

      (*(v191 + 8))(v93, v190);
      v126 = v187;
      v127 = v187;
      v128 = sub_22C9092CC();
      v129 = [v128 displayName];

      sub_22C90A11C();
      sub_22C385630();

      v105(v126, v90);
      (*(v79 + 8))(v189, v9);
LABEL_27:

      return v127;
    }

    v116 = *(v79 + 8);
    v116(v19, v9);
    v117 = sub_22C369D14();
    (v116)(v117);
  }

  else if (v74 == *MEMORY[0x277D72A38])
  {
    v108 = sub_22C3709F4();
    v109(v108);
    v110 = *v73;
    v111 = swift_projectBox();
    v112 = v182;
    v113 = v183;
    v114 = v184;
    (*(v183 + 16))(v182, v111, v184);
    sub_22C90915C();
    v115 = v189;
    if (sub_22C370B74(v44, 1, v189) != 1)
    {
      v130 = v177;
      v131 = v179;
      (*(v177 + 32))(v179, v44, v115);
      v132 = v176;
      sub_22C903FAC();
      (*(v130 + 16))(v56, v131, v115);
      v133 = sub_22C9063CC();
      v134 = sub_22C90AABC();
      if (os_log_type_enabled(v133, v134))
      {
        v135 = sub_22C383050();
        v188 = sub_22C37A180();
        v192[0] = v188;
        *v135 = 136315394;
        *(v135 + 4) = sub_22C7637A8("extractCandidateTitle(from:)");
        *(v135 + 12) = 2080;
        v136 = sub_22C9098BC();
        v138 = v137;
        v139 = sub_22C372454();
        v16(v139, v189);
        v140 = sub_22C36F9F4(v136, v138, v192);
        v115 = v189;

        *(v135 + 14) = v140;
        sub_22C7637E0(&dword_22C366000, v141, v142, "%s Resolved .entity title to '%s'");
        swift_arrayDestroy();
        sub_22C3699EC();
        sub_22C3699EC();

        (*(v191 + 8))(v176, v190);
      }

      else
      {

        v165 = sub_22C372454();
        v16(v165, v115);
        (*(v191 + 8))(v132, v190);
      }

      v166 = v179;
      v127 = v179;
      sub_22C9098BC();
      sub_22C385630();
      v16(v166, v115);
      (*(v183 + 8))(v182, v184);
      goto LABEL_27;
    }

    (*(v113 + 8))(v112, v114);
    sub_22C3770B0(v44, &qword_27D9BC390, &qword_22C912AC0);
  }

  else
  {
    if (v74 != *MEMORY[0x277D729F8])
    {
      v143 = v172;
      sub_22C903FAC();
      v144 = sub_22C9063CC();
      v145 = sub_22C90AABC();
      if (sub_22C36FBB4(v145))
      {
        v146 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v192[0] = v147;
        *v146 = 136315138;
        *(v146 + 4) = sub_22C7637A8("extractCandidateTitle(from:)");
        _os_log_impl(&dword_22C366000, v144, v145, "%s Unsupoported candidate value type, returning nothing.", v146, 0xCu);
        sub_22C36FF94(v147);
        sub_22C372A84();
        sub_22C3699EC();
      }

      (*(v191 + 8))(v143, v190);
      (*(v68 + 8))(v73, v65);
      return 0;
    }

    v118 = sub_22C3709F4();
    v119(v118);
    v120 = *v73;
    v121 = swift_projectBox();
    v122 = v174;
    v123 = v175;
    v124 = v178;
    (*(v175 + 16))(v178, v121, v174);
    sub_22C9090DC();
    v125 = v189;
    if (sub_22C370B74(v0, 1, v189) != 1)
    {
      v188 = v120;
      v148 = v173;
      v149 = v0;
      v150 = v177;
      (*(v177 + 32))(v173, v149, v125);
      v151 = v171;
      sub_22C903FAC();
      v152 = v170;
      (*(v150 + 16))(v170, v148, v125);
      v153 = sub_22C9063CC();
      v154 = sub_22C90AABC();
      if (os_log_type_enabled(v153, v154))
      {
        v155 = sub_22C383050();
        v192[0] = sub_22C37A180();
        *v155 = 136315394;
        *(v155 + 4) = sub_22C7637A8("extractCandidateTitle(from:)");
        *(v155 + 12) = 2080;
        v156 = sub_22C9098BC();
        v157 = v150;
        v159 = v158;
        v160 = v152;
        v161 = *(v157 + 8);
        v161(v160, v189);
        v162 = sub_22C36F9F4(v156, v159, v192);

        *(v155 + 14) = v162;
        sub_22C7637E0(&dword_22C366000, v163, v164, "%s Resolved .entityIdentifier title to '%s'");
        swift_arrayDestroy();
        v123 = v175;
        sub_22C3699EC();
        v125 = v189;
        sub_22C3699EC();
      }

      else
      {

        v167 = v152;
        v161 = *(v150 + 8);
        v161(v167, v125);
      }

      (*(v191 + 8))(v151, v190);
      v168 = v173;
      v127 = v173;
      sub_22C9098BC();
      sub_22C385630();
      v161(v168, v125);
      (*(v123 + 8))(v178, v122);
      goto LABEL_27;
    }

    (*(v123 + 8))(v124, v122);
    sub_22C3770B0(v0, &qword_27D9BC390, &qword_22C912AC0);
  }

  return 0;
}

uint64_t sub_22C7632C4()
{
  v0 = sub_22C763378();
  v2 = v1;
  if (v0 == sub_22C763378() && v2 == v3)
  {

    return 1065353216;
  }

  else
  {
    sub_22C36A724();
    v5 = sub_22C90B4FC();

    v6 = 1065353216;
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  return v6;
}

unint64_t sub_22C763378()
{
  sub_22C90A1BC();
  while (1)
  {
    sub_22C90A3AC();
    if (!v0)
    {

      return 0;
    }

    if ((sub_22C909FAC() & 1) == 0)
    {
      sub_22C36A724();
      if ((sub_22C909FDC() & 1) == 0)
      {
        sub_22C36A724();
        if ((sub_22C90A00C() & 1) == 0)
        {
          sub_22C36A724();
          if ((sub_22C909F9C() & 1) == 0)
          {
            break;
          }
        }
      }
    }

LABEL_12:
  }

  v1 = sub_22C36A724();
  result = sub_22C763580(v1, v2);
  if ((result & 0x100000000) == 0)
  {
    if ((result - 14) <= 0xFFFFFFFB && (result - 8232) >= 2 && result != 133)
    {
      v5 = sub_22C36A724();
      MEMORY[0x2318B7840](v5);
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_22C763484(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v12[2] = v3;
      v12[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v12[0] = a2;
        v12[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v12 + v5) & 0xC0) == 0x80)
        {
          do
          {
            sub_22C37F500(v5);
          }

          while (v9);
          return v8 << 16;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = result >> 16;
          v6 = sub_22C90AFCC();
          v5 = v11;
        }

        if (v5 != v7 && (*(v6 + v5) & 0xC0) == 0x80)
        {
          do
          {
            sub_22C37F500(v5);
          }

          while (v9);
          return v8 << 16;
        }
      }

      v8 = v5;
      return v8 << 16;
    }

    v10 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v10 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v10)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_22C763580(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    sub_22C37017C();
    sub_22C7636EC();
    if ((a2 & 0x1000000000000000) != 0)
    {
      sub_22C37017C();
      v9 = sub_22C90AF4C();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v19[0] = a1;
        v19[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v9 = *(v19 + v6);
        if (*(v19 + v6) < 0)
        {
          sub_22C38AAB0();
          switch(v12)
          {
            case 1:
LABEL_14:
              v9 = v10[1] & 0x3F | ((v9 & 0x1F) << 6);
              break;
            case 2:
LABEL_15:
              v13 = v10[1];
              v14 = v10[2];
              v15 = ((v9 & 0xF) << 12) | ((v13 & 0x3F) << 6);
              goto LABEL_17;
            case 3:
LABEL_16:
              v16 = v10[1];
              v17 = v10[2];
              v14 = v10[3];
              v15 = ((v9 & 0xF) << 18) | ((v16 & 0x3F) << 12) | ((v17 & 0x3F) << 6);
LABEL_17:
              v9 = v15 & 0xFFFFFFC0 | v14 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_22C90AFCC();
        }

        v8 = *(v7 + v6);
        v9 = *(v7 + v6);
        if (v8 < 0)
        {
          sub_22C38AAB0();
          switch(v11)
          {
            case 1:
              goto LABEL_14;
            case 2:
              goto LABEL_15;
            case 3:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v19[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

void sub_22C7636EC()
{
  sub_22C379B08();
  if (v0)
  {
    sub_22C7637CC();
    if (!v1)
    {
      sub_22C370398();
      if (v3 > v2 >> 16)
      {
        return;
      }

      __break(1u);
    }
  }

  sub_22C37017C();
  sub_22C763760();
  if ((v4 & 1) == 0)
  {
    sub_22C37017C();
    sub_22C763484(v5, v6, v7);
  }
}

void sub_22C763760()
{
  sub_22C379B08();
  sub_22C7637CC();
  if (v0)
  {
    sub_22C37017C();
    sub_22C8A3F0C(v3, v4, v5);
  }

  sub_22C370398();
  if (v2 <= v1 >> 16)
  {
    __break(1u);
  }
}

uint64_t sub_22C7637A8@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD00000000000001CLL, (a1 - 32) | 0x8000000000000000, (v1 - 96));
}

void sub_22C7637E0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_22C763800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v7;
  v63 = a6;
  v64 = a4;
  v16 = sub_22C9063DC();
  v17 = sub_22C369824(v16);
  v65 = v18;
  v66 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  v23 = (v21 - v22);
  MEMORY[0x28223BE20](v24);
  sub_22C37A1A4();
  MEMORY[0x28223BE20](v25);
  sub_22C37F9FC();
  MEMORY[0x28223BE20](v26);
  v28 = &v62 - v27;
  v29 = sub_22C764D2C(a3);
  if (v29 != 6)
  {
    v31 = v29;
    sub_22C903FAC();
    v33 = sub_22C9063CC();
    v40 = sub_22C90AACC();
    if (!sub_22C7663C4(v40))
    {
LABEL_12:
      v23 = v28;
      goto LABEL_13;
    }

    v41 = sub_22C36FB44();
    *v41 = 134217984;
    *(v41 + 4) = v31;
    sub_22C38BFF4();
    _os_log_impl(v42, v43, v44, v45, v46, 0xCu);
LABEL_11:
    sub_22C3699EC();
    goto LABEL_12;
  }

  v30 = sub_22C374168(v10 + 8, v10[11]);
  v31 = sub_22C646AE4(a1, a2, *v30);
  if (v31 == 6)
  {
    swift_beginAccess();
    v31 = sub_22C605BA0(a1, a2, v10[3]);
    swift_endAccess();
    if (v31 == 6)
    {
      if (a7 && a5 && (v32 = sub_22C765328(v63, a7, v64, a5), v32 != 6))
      {
        v31 = v32;
        sub_22C903FAC();
        v33 = sub_22C9063CC();
        v55 = sub_22C90AACC();
        if (!sub_22C7663C4(v55))
        {
          v23 = v8;
          goto LABEL_13;
        }

        v56 = sub_22C36FB44();
        sub_22C37FFA0(v56, 3.852e-34);
        sub_22C38BFF4();
        _os_log_impl(v57, v58, v59, v60, v61, 0xCu);
        v28 = v8;
      }

      else
      {
        sub_22C903FAC();
        v33 = sub_22C9063CC();
        v34 = sub_22C90AACC();
        v31 = 2;
        if (!sub_22C7663C4(v34))
        {
LABEL_13:

          (*(v65 + 8))(v23, v66);
          return v31;
        }

        *sub_22C36D240() = 0;
        sub_22C38BFF4();
        _os_log_impl(v35, v36, v37, v38, v39, 2u);
        v28 = v23;
      }
    }

    else
    {
      sub_22C903FAC();
      v33 = sub_22C9063CC();
      v48 = sub_22C90AACC();
      if (!sub_22C7663C4(v48))
      {
        v23 = v9;
        goto LABEL_13;
      }

      v49 = sub_22C36FB44();
      sub_22C37FFA0(v49, 3.852e-34);
      sub_22C38BFF4();
      _os_log_impl(v50, v51, v52, v53, v54, 0xCu);
      v28 = v9;
    }

    goto LABEL_11;
  }

  return v31;
}

uint64_t sub_22C763B48()
{
  v39 = sub_22C90637C();
  v0 = sub_22C369824(v39);
  v37 = v1;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v0);
  sub_22C369838();
  v6 = v5 - v4;
  v7 = sub_22C90634C();
  v8 = sub_22C369824(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v15 = v14 - v13;
  v16 = sub_22C90636C();
  v17 = sub_22C369824(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v24 = v23 - v22;
  sub_22C90365C();
  v25 = sub_22C90635C();
  sub_22C90638C();
  v38 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v35 = v19;
    v36 = v7;

    sub_22C9063BC();

    if ((*(v37 + 88))(v6, v39) == *MEMORY[0x277D85B00])
    {
      v26 = 0;
      v27 = 0;
      v40 = "[Error] Interval already ended";
    }

    else
    {
      (*(v37 + 8))(v6, v39);
      v40 = "%s";
      v27 = 2;
      v26 = 1;
    }

    v29 = sub_22C36FB44();
    v30 = swift_slowAlloc();
    v41 = v30;
    *v29 = v27;
    *(v29 + 1) = v26;
    *(v29 + 2) = 2080;
    sub_22C90366C();
    v31 = sub_22C90AF7C();
    v33 = sub_22C36F9F4(v31, v32, &v41);

    *(v29 + 4) = v33;
    v34 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v25, v38, v34, "JointResolverTrialConfigProvider.init", v40, v29, 0xCu);
    sub_22C36FF94(v30);
    sub_22C3699EC();
    sub_22C3699EC();

    (*(v10 + 8))(v15, v36);
    return (*(v35 + 8))(v24, v16);
  }

  else
  {

    (*(v10 + 8))(v15, v7);
    return (*(v19 + 8))(v24, v16);
  }
}

uint64_t sub_22C763E98()
{
  v3 = sub_22C90046C();
  v4 = sub_22C369824(v3);
  v192 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  v187 = v8 - v9;
  sub_22C369930();
  MEMORY[0x28223BE20](v10);
  v191 = (v179 - v11);
  v193 = sub_22C9063DC();
  v12 = sub_22C369824(v193);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v17);
  sub_22C37F9FC();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = v179 - v20;
  MEMORY[0x28223BE20](v19);
  sub_22C37A1A4();
  MEMORY[0x28223BE20](v22);
  sub_22C36BA58();
  v190 = v23;
  sub_22C369930();
  v25 = MEMORY[0x28223BE20](v24);
  v27 = v179 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = v179 - v29;
  MEMORY[0x28223BE20](v28);
  v33 = v179 - v32;
  v34 = v0[2];
  if (!v34)
  {
    sub_22C903FAC();
    v82 = sub_22C9063CC();
    v83 = sub_22C90AADC();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = sub_22C36D240();
      *v84 = 0;
      _os_log_impl(&dword_22C366000, v82, v83, "JointResolverTrialConfigProvider no trialManager instance provided", v84, 2u);
      sub_22C3699EC();
    }

    return (*(v14 + 8))(v2, v193);
  }

  v186 = v3;
  v189 = v31;
  v194 = v0;
  swift_beginAccess();
  v35 = *(v34 + 72);

  v36 = sub_22C633A20(0xD000000000000024, 0x800000022C934D70, v35);
  swift_endAccess();
  if (v36)
  {
    [v36 doubleValue];
    v38 = v37;

    v194[5] = v38;
    sub_22C903FAC();

    v36 = sub_22C9063CC();
    v39 = sub_22C90AABC();

    if (os_log_type_enabled(v36, v39))
    {
      sub_22C36FB44();
      sub_22C7663E0();
      *v40 = 134217984;
      *(v40 + 4) = v194[5];
      sub_22C5CA530();
      _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
      sub_22C37869C();
    }

    sub_22C37F518();
    v46(v33, v193);
  }

  sub_22C3738DC();
  sub_22C387524();
  v49 = sub_22C633A20(v47 + 16, v36 | 0x8000000000000000, v48);
  swift_endAccess();
  v50 = v193;
  if (v49)
  {
    v188 = v1;
    [v49 doubleValue];
    v52 = v51;

    v194[7] = v52;
    sub_22C903FAC();

    v49 = sub_22C9063CC();
    v53 = sub_22C90AABC();

    if (os_log_type_enabled(v49, v53))
    {
      sub_22C36FB44();
      sub_22C7663E0();
      *v54 = 134217984;
      *(v54 + 4) = v194[7];
      sub_22C5CA530();
      _os_log_impl(v55, v56, v57, v58, v59, 0xCu);
      sub_22C37869C();
    }

    sub_22C37F518();
    v60(v30, v50);
    v1 = v188;
  }

  sub_22C3738DC();
  sub_22C387524();
  v63 = sub_22C633A20(v61 + 9, v49 | 0x8000000000000000, v62);
  swift_endAccess();
  if (v63)
  {
    [v63 doubleValue];
    v65 = v64;

    v194[6] = v65;
    sub_22C903FAC();

    v63 = sub_22C9063CC();
    v66 = sub_22C90AABC();

    if (os_log_type_enabled(v63, v66))
    {
      sub_22C36FB44();
      sub_22C7663E0();
      *v67 = 134217984;
      *(v67 + 4) = v194[6];
      sub_22C5CA530();
      _os_log_impl(v68, v69, v70, v71, v72, 0xCu);
      sub_22C37869C();
    }

    sub_22C37F518();
    v73(v27, v50);
  }

  sub_22C3738DC();
  v74 = sub_22C633A20(0xD00000000000001DLL, v63 | 0x8000000000000000, *(v34 + 72));
  swift_endAccess();
  if (!v74)
  {
    sub_22C903FAC();
    v86 = sub_22C9063CC();
    v87 = sub_22C90AADC();
    if (os_log_type_enabled(v86, v87))
    {
      *sub_22C36D240() = 0;
      sub_22C5CA530();
      _os_log_impl(v88, v89, v90, v91, v92, 2u);
      sub_22C3699EC();
    }

    else
    {
    }

    v101 = *(v14 + 8);
    v102 = v1;
    return v101(v102, v50);
  }

  sub_22C3738DC();
  sub_22C387524();
  v77 = sub_22C633A20(v75 + 6, v63 | 0x8000000000000000, v76);
  swift_endAccess();
  if (!v77)
  {
    v93 = v190;
    sub_22C903FAC();
    v94 = sub_22C9063CC();
    v95 = sub_22C90AADC();
    if (os_log_type_enabled(v94, v95))
    {
      *sub_22C36D240() = 0;
      sub_22C5CA530();
      _os_log_impl(v96, v97, v98, v99, v100, 2u);
      sub_22C3699EC();
    }

    else
    {
    }

LABEL_37:
    v101 = *(v14 + 8);
    v102 = v93;
    return v101(v102, v50);
  }

  v78 = [v74 fileValue];
  if (v78)
  {
    v184 = v34;
    sub_22C73A88C(v78);
    v79 = v192;
    if (v80)
    {
      sub_22C90038C();

      v81 = sub_22C9004AC();
      v104 = v103;
      v191 = *(v79 + 8);
      v192 = v79 + 8;
      v105 = v81;
      v106 = sub_22C36DA48();
      v107(v106);
      v108 = sub_22C8FFECC();
      v109 = *(v108 + 48);
      v110 = *(v108 + 52);
      swift_allocObject();
      sub_22C8FFEBC();
      sub_22C765C00();
      sub_22C8FFEAC();
      v185 = 0;
      v179[0] = v108;
      v179[1] = v105;
      v179[2] = v104;
      v182 = v74;
      v183 = v77;
      v180 = v21;
      v181 = v14;

      v188 = *(v196 + 16);
      v132 = 0;

      v133 = (v190 + 48);
      v134 = v194;
      while (1)
      {
        v135 = v191;
        if (v188 == v132)
        {
          break;
        }

        if (v132 >= *(v190 + 16))
        {
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v136 = *(v133 - 2);
        v137 = *(v133 - 1);
        v138 = *v133;
        swift_beginAccess();

        v139 = v134[3];
        swift_isUniquelyReferenced_nonNull_native();
        v195 = v134[3];
        v140 = v195;
        v134[3] = 0x8000000000000000;
        sub_22C36E2BC(v136, v137);
        if (__OFADD__(*(v140 + 16), (v141 & 1) == 0))
        {
          goto LABEL_66;
        }

        v142 = v141;
        sub_22C3A5908(&qword_27D9BFD80, &qword_22C9255A0);
        if (sub_22C90B15C())
        {
          sub_22C36E2BC(v136, v137);
          if ((v142 & 1) != (v143 & 1))
          {
            goto LABEL_75;
          }
        }

        v144 = v195;
        if (v142)
        {
          sub_22C37769C();
        }

        else
        {
          sub_22C372CFC();
          *v145 = v136;
          v145[1] = v137;
          sub_22C37769C();
          v146 = *(v144 + 16);
          v147 = __OFADD__(v146, 1);
          v148 = v146 + 1;
          if (v147)
          {
            goto LABEL_67;
          }

          *(v144 + 16) = v148;
        }

        v134 = v194;
        v194[3] = v144;
        swift_endAccess();

        v133 += 24;
        ++v132;
        v50 = v193;
      }

      v149 = v183;
      v150 = [v183 fileValue];
      if (!v150)
      {
        goto LABEL_73;
      }

      sub_22C73A88C(v150);
      v14 = v181;
      v151 = v182;
      v93 = v180;
      if (v152)
      {

        sub_22C90038C();

        v153 = v185;
        sub_22C9004AC();
        if (v153)
        {
          v185 = v153;
          v155 = sub_22C36DA48();
          v135(v155);
          v156 = sub_22C36C2B8();
          sub_22C38B120(v156, v157);

          sub_22C903FAC();
          v111 = v185;
          v112 = v185;
          v113 = sub_22C9063CC();
          v114 = sub_22C90AADC();

          if (os_log_type_enabled(v113, v114))
          {
            v115 = sub_22C36FB44();
            v116 = swift_slowAlloc();
            *v115 = 138412290;
            v117 = v111;
            v118 = _swift_stdlib_bridgeErrorToNSError();
            *(v115 + 4) = v118;
            *v116 = v118;
            _os_log_impl(&dword_22C366000, v113, v114, "JointResolverTrialConfigProvider error %@", v115, 0xCu);
            sub_22C5AB9D0(v116);
            sub_22C3699EC();
            sub_22C3699EC();
          }

          else
          {
          }

          v119 = v194;
          sub_22C37F518();
          v120(v189, v50);
        }

        else
        {
          v158 = v154;
          v159 = sub_22C36DA48();
          v161 = v160;
          v135(v159);
          v162 = *(v179[0] + 48);
          v163 = *(v179[0] + 52);
          swift_allocObject();
          sub_22C8FFEBC();
          sub_22C765C54();
          sub_22C8FFEAC();
          v185 = 0;
          v189 = v161;
          v190 = v158;

          v191 = *(v196 + 16);
          v192 = v196;
          v164 = (v196 + 48);
          v119 = v194;
          while (v191 != v153)
          {
            if (v153 >= *(v192 + 16))
            {
              goto LABEL_68;
            }

            v165 = *(v164 - 2);
            v166 = *(v164 - 1);
            v167 = *v164;
            swift_beginAccess();

            v168 = v119[4];
            swift_isUniquelyReferenced_nonNull_native();
            v195 = v119[4];
            v169 = v195;
            v119[4] = 0x8000000000000000;
            sub_22C36E2BC(v165, v166);
            if (__OFADD__(*(v169 + 16), (v170 & 1) == 0))
            {
              goto LABEL_69;
            }

            v171 = v170;
            sub_22C3A5908(&qword_27D9BFD80, &qword_22C9255A0);
            if (sub_22C90B15C())
            {
              sub_22C36E2BC(v165, v166);
              if ((v171 & 1) != (v172 & 1))
              {
                goto LABEL_75;
              }
            }

            v173 = v195;
            if (v171)
            {
              sub_22C37769C();
            }

            else
            {
              sub_22C372CFC();
              *v174 = v165;
              v174[1] = v166;
              sub_22C37769C();
              v175 = *(v173 + 16);
              v147 = __OFADD__(v175, 1);
              v176 = v175 + 1;
              if (v147)
              {
                goto LABEL_70;
              }

              *(v173 + 16) = v176;
            }

            v50 = v193;
            v119 = v194;
            v151 = v182;
            v149 = v183;
            v194[4] = v173;
            swift_endAccess();

            v164 += 24;
            ++v153;
          }

          sub_22C38B120(v189, v190);
          v177 = sub_22C36C2B8();
          sub_22C38B120(v177, v178);

          v14 = v181;
          v93 = v180;
        }

        sub_22C903FAC();

        v121 = sub_22C9063CC();
        v122 = sub_22C90AABC();

        if (os_log_type_enabled(v121, v122))
        {
          v123 = sub_22C36FB44();
          v124 = swift_slowAlloc();
          v195 = v124;
          *v123 = 136315138;
          swift_beginAccess();
          v125 = v119[3];

          v126 = v14;
          v127 = v50;
          v128 = sub_22C909EDC();
          v130 = v129;

          v131 = sub_22C36F9F4(v128, v130, &v195);

          *(v123 + 4) = v131;
          _os_log_impl(&dword_22C366000, v121, v122, "JointResolverTrialConfigProvider toolRiskMap %s", v123, 0xCu);
          sub_22C36FF94(v124);
          sub_22C3699EC();
          sub_22C3699EC();

          return (*(v126 + 8))(v93, v127);
        }

        goto LABEL_37;
      }

      goto LABEL_74;
    }
  }

  else
  {
LABEL_71:
    __break(1u);
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C764D2C(uint64_t a1)
{
  v79 = sub_22C90960C();
  v2 = sub_22C369824(v79);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369ABC();
  v66 = v7 - v8;
  sub_22C369930();
  MEMORY[0x28223BE20](v9);
  sub_22C36BA58();
  v71 = v10;
  sub_22C369930();
  MEMORY[0x28223BE20](v11);
  sub_22C36BA58();
  v70 = v12;
  sub_22C369930();
  MEMORY[0x28223BE20](v13);
  v78 = &v63 - v14;
  v15 = sub_22C908D6C();
  v16 = sub_22C369824(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C369ABC();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  sub_22C36BA58();
  v63 = v23;
  sub_22C369930();
  MEMORY[0x28223BE20](v24);
  v27 = &v63 - v25;
  v28 = *(a1 + 16);
  v72 = v4;
  v64 = v26;
  v65 = a1;
  if (v28)
  {
    v29 = *(v26 + 16);
    v30 = a1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v82 = *(v26 + 72);
    v31 = (v26 + 32);
    v32 = (v26 + 88);
    v81 = *MEMORY[0x277D72128];
    v75 = (v26 + 96);
    v76 = (v26 + 8);
    v74 = *MEMORY[0x277D72DE0];
    v73 = (v4 + 32);
    v80 = MEMORY[0x277D84F90];
    v68 = v26 + 16;
    v69 = &v63 - v25;
    v77 = v29;
    v67 = (v26 + 32);
    do
    {
      v29(v27, v30, v15);
      (*v31)(v21, v27, v15);
      v33 = (*v32)(v21, v15);
      if (v33 == v81)
      {
        (*v75)(v21, v15);
        v34 = sub_22C9095DC();
        v35 = *(v34 - 8);
        v36 = (*(v35 + 88))(v21, v34);
        if (v36 == v74)
        {
          (*(v35 + 96))(v21, v34);
          v37 = *v73;
          v38 = v71;
          v39 = v79;
          (*v73)(v71, v21, v79);
          v40 = v70;
          v37(v70, v38, v39);
          v37(v78, v40, v39);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v41 = v80;
          }

          else
          {
            v44 = *(v80 + 16);
            sub_22C594590();
            v41 = v45;
          }

          v42 = *(v41 + 16);
          v27 = v69;
          v31 = v67;
          if (v42 >= *(v41 + 24) >> 1)
          {
            sub_22C594590();
            v41 = v46;
          }

          *(v41 + 16) = v42 + 1;
          v43 = (*(v72 + 80) + 32) & ~*(v72 + 80);
          v80 = v41;
          v37(v41 + v43 + *(v72 + 72) * v42, v78, v79);
        }

        else
        {
          (*(v35 + 8))(v21, v34);
        }

        v29 = v77;
      }

      else
      {
        (*v76)(v21, v15);
      }

      v30 += v82;
      --v28;
    }

    while (v28);
  }

  else
  {
    v80 = MEMORY[0x277D84F90];
  }

  v48 = v63;
  v47 = v64;
  v49 = (*(v64 + 104))(v63, *MEMORY[0x277D72130], v15);
  MEMORY[0x28223BE20](v49);
  sub_22C371C90();
  v51 = sub_22C5EC62C(sub_22C50AFAC, v50, v65);
  (*(v47 + 8))(v48, v15);
  if (v51)
  {
    v52 = 1;
    v53 = v79;
    v54 = v80;
    v55 = v72;
    v56 = v66;
  }

  else
  {
    v56 = v66;
    v57 = sub_22C9095EC();
    MEMORY[0x28223BE20](v57);
    sub_22C371C90();
    v54 = v80;
    v52 = sub_22C5EC65C(sub_22C765BE0, v58, v80);
    v55 = v72;
    v53 = v79;
    (*(v72 + 8))(v56, v79);
  }

  v59 = sub_22C9095FC();
  MEMORY[0x28223BE20](v59);
  sub_22C371C90();
  v61 = sub_22C5EC65C(sub_22C7663A8, v60, v54);

  (*(v55 + 8))(v56, v53);
  if (v52 || v61)
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_22C765328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  MEMORY[0x2318B7850](46, 0xE100000000000000);
  MEMORY[0x2318B7850](a3, a4);
  swift_beginAccess();
  v7 = sub_22C605BA0(a1, a2, *(v4 + 32));
  swift_endAccess();

  return v7;
}

uint64_t sub_22C7653CC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73616D65686373 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C90B4FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void *sub_22C76545C(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = sub_22C3A5908(a2, a3);
  v8 = sub_22C369824(v7);
  v19 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v18 - v12;
  v14 = a1[4];
  v15 = sub_22C374168(a1, a1[3]);
  a4();
  v16 = v15;
  sub_22C90B6BC();
  if (v4)
  {
    sub_22C36FF94(a1);
  }

  else
  {
    sub_22C3A5908(&qword_27D9BFDA0, &qword_22C925640);
    sub_22C765D14();
    sub_22C90B32C();
    (*(v19 + 8))(v13, v7);
    v16 = v20;
    sub_22C36FF94(a1);
  }

  return v16;
}

uint64_t sub_22C7655E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6576654C6B736972 && a2 == 0xE90000000000006CLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

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

uint64_t sub_22C7656AC(char a1)
{
  if (a1)
  {
    return 0x6576654C6B736972;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_22C7656DC(uint64_t *a1)
{
  v3 = sub_22C3A5908(&qword_27D9BFDF8, &qword_22C9258C8);
  v4 = sub_22C369824(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C766118();
  sub_22C90B6BC();
  if (!v1)
  {
    v7 = sub_22C90B2DC();
    sub_22C76616C();
    sub_22C90B32C();
    v9 = sub_22C389270();
    v10(v9);
  }

  sub_22C36FF94(a1);
  return v7;
}

uint64_t sub_22C7658AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C7653CC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C7658D8(uint64_t a1)
{
  v2 = sub_22C765DEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C765914(uint64_t a1)
{
  v2 = sub_22C765DEC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_22C765950@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_22C76545C(a1, &qword_27D9BFDB8, &qword_22C925648, sub_22C765DEC);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22C7659A8(uint64_t a1)
{
  v2 = sub_22C765CC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C7659E4(uint64_t a1)
{
  v2 = sub_22C765CC0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_22C765A20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_22C76545C(a1, &qword_27D9BFD90, &qword_22C925638, sub_22C765CC0);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22C765A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C7655E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C765AA8(uint64_t a1)
{
  v2 = sub_22C766118();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C765AE4(uint64_t a1)
{
  v2 = sub_22C766118();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C765B20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22C7656DC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

void *sub_22C765B50()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  sub_22C36FF94(v0 + 8);
  return v0;
}

uint64_t sub_22C765B88()
{
  sub_22C765B50();

  return swift_deallocClassInstance();
}

unint64_t sub_22C765C00()
{
  result = qword_27D9BFD78;
  if (!qword_27D9BFD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFD78);
  }

  return result;
}

unint64_t sub_22C765C54()
{
  result = qword_27D9BFD88;
  if (!qword_27D9BFD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFD88);
  }

  return result;
}

unint64_t sub_22C765CC0()
{
  result = qword_27D9BFD98;
  if (!qword_27D9BFD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFD98);
  }

  return result;
}

unint64_t sub_22C765D14()
{
  result = qword_27D9BFDA8;
  if (!qword_27D9BFDA8)
  {
    sub_22C3AC1A0(&qword_27D9BFDA0, &qword_22C925640);
    sub_22C765D98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFDA8);
  }

  return result;
}

unint64_t sub_22C765D98()
{
  result = qword_27D9BFDB0;
  if (!qword_27D9BFDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFDB0);
  }

  return result;
}

unint64_t sub_22C765DEC()
{
  result = qword_27D9BFDC0;
  if (!qword_27D9BFDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFDC0);
  }

  return result;
}

_BYTE *sub_22C765E50(_BYTE *result, int a2, int a3)
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

unint64_t sub_22C765F0C()
{
  result = qword_27D9BFDC8;
  if (!qword_27D9BFDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFDC8);
  }

  return result;
}

unint64_t sub_22C765F64()
{
  result = qword_27D9BFDD0;
  if (!qword_27D9BFDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFDD0);
  }

  return result;
}

unint64_t sub_22C765FBC()
{
  result = qword_27D9BFDD8;
  if (!qword_27D9BFDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFDD8);
  }

  return result;
}

unint64_t sub_22C766014()
{
  result = qword_27D9BFDE0;
  if (!qword_27D9BFDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFDE0);
  }

  return result;
}

unint64_t sub_22C76606C()
{
  result = qword_27D9BFDE8;
  if (!qword_27D9BFDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFDE8);
  }

  return result;
}

unint64_t sub_22C7660C4()
{
  result = qword_27D9BFDF0;
  if (!qword_27D9BFDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFDF0);
  }

  return result;
}

unint64_t sub_22C766118()
{
  result = qword_27D9BFE00;
  if (!qword_27D9BFE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFE00);
  }

  return result;
}

unint64_t sub_22C76616C()
{
  result = qword_27D9BFE08;
  if (!qword_27D9BFE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFE08);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for JointResolverTrialConfigProvider.CandidateRisk.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22C7662A0()
{
  result = qword_27D9BFE10;
  if (!qword_27D9BFE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFE10);
  }

  return result;
}

unint64_t sub_22C7662F8()
{
  result = qword_27D9BFE18;
  if (!qword_27D9BFE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFE18);
  }

  return result;
}

unint64_t sub_22C766350()
{
  result = qword_27D9BFE20;
  if (!qword_27D9BFE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFE20);
  }

  return result;
}

BOOL sub_22C7663C4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_22C7663F0(uint64_t a1)
{
  v2 = sub_22C909C4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C76A6CC(&qword_28142FA50, MEMORY[0x277CC5290]);
  v7 = sub_22C90A4DC();
  v35 = MEMORY[0x277D84F90];
  sub_22C3B5E2C();
  v8 = v35;
  (*(v3 + 16))(v6, a1, v2);
  sub_22C90A4CC();
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (v7)
    {
      v9 = v34;
      v10 = *(v33 + 16);
      v31 = v33;
      *&v32 = v10;
      v30 = v33 + 32;
      v29 = xmmword_22C90F800;
      v11 = v34;
      while (v32 != v9)
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        if (v9 >= *(v31 + 16))
        {
          goto LABEL_21;
        }

        v12 = *(v30 + v9);
        sub_22C3A5908(&qword_27D9BB5D8, &unk_22C91A680);
        v13 = swift_allocObject();
        *(v13 + 16) = v29;
        *(v13 + 56) = MEMORY[0x277D84B78];
        *(v13 + 64) = MEMORY[0x277D84BC0];
        *(v13 + 32) = v12;
        v14 = sub_22C90A14C();
        v16 = v15;
        v35 = v8;
        v17 = *(v8 + 16);
        if (v17 >= *(v8 + 24) >> 1)
        {
          sub_22C3B5E2C();
          v8 = v35;
        }

        *(v8 + 16) = v17 + 1;
        v18 = v8 + 16 * v17;
        *(v18 + 32) = v14;
        *(v18 + 40) = v16;
        ++v9;
        if (!--v7)
        {
          v34 = v9;
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v19 = v33;
      v32 = xmmword_22C90F800;
      while (1)
      {
        v20 = *(v19 + 16);
        if (v34 == v20)
        {

          return;
        }

        if (v34 >= v20)
        {
          break;
        }

        v21 = *(v19 + 32 + v34++);
        sub_22C3A5908(&qword_27D9BB5D8, &unk_22C91A680);
        v22 = swift_allocObject();
        *(v22 + 16) = v32;
        *(v22 + 56) = MEMORY[0x277D84B78];
        *(v22 + 64) = MEMORY[0x277D84BC0];
        *(v22 + 32) = v21;
        v23 = sub_22C90A14C();
        v25 = v24;
        v35 = v8;
        v26 = *(v8 + 16);
        if (v26 >= *(v8 + 24) >> 1)
        {
          sub_22C3B5E2C();
          v8 = v35;
        }

        *(v8 + 16) = v26 + 1;
        v27 = v8 + 16 * v26;
        *(v27 + 32) = v23;
        *(v27 + 40) = v25;
      }

      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_22C766760(uint64_t a1, unint64_t a2)
{
  v49 = *MEMORY[0x277D85DE8];
  *&v46 = a1;
  *(&v46 + 1) = a2;

  sub_22C3A5908(&qword_27D9BFE28, &qword_22C9259F0);
  if (swift_dynamicCast())
  {
    sub_22C36C730(v44, &v47);
    sub_22C374168(&v47, v48);
    sub_22C90018C();
    v44[0] = v46;
    sub_22C36FF94(&v47);
    goto LABEL_59;
  }

  v45 = 0;
  memset(v44, 0, sizeof(v44));
  sub_22C3770B0(v44, &qword_27D9BFE30, &qword_22C9259F8);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v44[0] = a1;
    *(&v44[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v44;
    v5 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_22C90AFCC();
  }

  sub_22C769E20(v4, v5, &v47);
  v6 = *(&v47 + 1);
  v7 = v47;
  if (*(&v47 + 1) >> 60 != 15)
  {
    v44[0] = v47;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v44[0] = MEMORY[0x2318AD9C0](v8);
  *(&v44[0] + 1) = v9;
  MEMORY[0x28223BE20](*&v44[0]);
  v10 = sub_22C769F3C(sub_22C76A690);
  v12 = *(&v44[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v44[0]);
  switch(*(&v44[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v44[0]) - LODWORD(v44[0]);
      if (__OFSUB__(DWORD1(v44[0]), v44[0]))
      {
        goto LABEL_66;
      }

      v19 = v19;
LABEL_22:
      if (v11 == v19)
      {
        goto LABEL_23;
      }

      if (v12 == 2)
      {
        v18 = *(*&v44[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v44[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v21 = *(*&v44[0] + 16);
      v20 = *(*&v44[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v11)
      {
        v18 = 0;
LABEL_56:
        if (v18 < v11)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_22C9004DC();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v43 = v7;
      LOBYTE(v23) = 0;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v25 = (v10 >> 59) & 1;
      if ((v15 & 0x1000000000000000) == 0)
      {
        LOBYTE(v25) = 1;
      }

      v26 = 4 << v25;
      *(&v46 + 7) = 0;
      *&v46 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v19 = BYTE14(v44[0]);
      goto LABEL_22;
  }

  while (4 * v24 != v17 >> 14)
  {
    v27 = v17;
    if ((v17 & 0xC) == v26)
    {
      v31 = sub_22C371CA4();
      v27 = sub_22C8A3F0C(v31, v32, v33);
    }

    v28 = v27 >> 16;
    if (v27 >> 16 >= v24)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v8 = sub_22C90A3BC();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = sub_22C90A3FC();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v47 = v13;
      *(&v47 + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
      v30 = *(&v47 + v28);
    }

    else
    {
      v29 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v29 = sub_22C90AFCC();
      }

      v30 = *(v29 + v28);
    }

    if ((v17 & 0xC) == v26)
    {
      v34 = sub_22C371CA4();
      v17 = sub_22C8A3F0C(v34, v35, v36);
      if ((v15 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v24 <= v17 >> 16)
    {
      goto LABEL_62;
    }

    sub_22C371CA4();
    v17 = sub_22C90A3CC();
LABEL_46:
    *(&v46 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_61;
    }

    if (v23 == 14)
    {
      sub_22C76A714();
      sub_22C9004FC();
      LOBYTE(v23) = 0;
    }
  }

  if (v23)
  {
    sub_22C76A714();
    sub_22C9004FC();
    sub_22C3C8114(v43, v6);
    goto LABEL_58;
  }

  sub_22C3C8114(v43, v6);
LABEL_59:
  v37 = sub_22C37170C();
  sub_22C3C832C(v37, v38);

  v39 = sub_22C37170C();
  sub_22C38B120(v39, v40);
  v41 = *MEMORY[0x277D85DE8];
  return sub_22C37170C();
}

uint64_t sub_22C766C2C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v173 = a2;
  v3 = sub_22C90931C();
  v4 = sub_22C369824(v3);
  v170 = v5;
  v171 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C3698A8();
  v169 = v8;
  sub_22C36BA0C();
  v157 = sub_22C909C4C();
  v9 = sub_22C369824(v157);
  v156 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C3698A8();
  v155 = v13;
  v14 = sub_22C3A5908(&qword_27D9BF2F8, &unk_22C922540);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v177 = &v149 - v16;
  sub_22C36BA0C();
  v163 = sub_22C90906C();
  v17 = sub_22C369824(v163);
  v162 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C3698A8();
  v161 = v21;
  sub_22C36BA0C();
  v22 = sub_22C9090BC();
  v23 = sub_22C369824(v22);
  v164 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  v28 = &v149 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_22C90910C();
  v29 = sub_22C369824(v154);
  v152 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22C3698A8();
  v151 = v33;
  sub_22C36BA0C();
  v34 = sub_22C90952C();
  v35 = sub_22C369824(v34);
  v166 = v36;
  v167 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C3698A8();
  v165 = v39;
  sub_22C36BA0C();
  v160 = sub_22C90919C();
  v40 = sub_22C369824(v160);
  v159 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  v45 = &v149 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_22C9093BC();
  v47 = sub_22C369824(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22C3698E4();
  v175 = v52;
  v54 = MEMORY[0x28223BE20](v53);
  v56 = &v149 - v55;
  MEMORY[0x28223BE20](v54);
  v58 = (&v149 - v57);
  v179 = sub_22C9032BC();
  v59 = sub_22C369824(v179);
  v61 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v59);
  sub_22C3698E4();
  v176 = v64;
  v66 = MEMORY[0x28223BE20](v65);
  v153 = &v149 - v67;
  MEMORY[0x28223BE20](v66);
  v168 = &v149 - v68;
  v70 = v49 + 16;
  v69 = *(v49 + 16);
  v172 = a1;
  v174 = v69;
  v69(v58, a1, v46);
  v71 = *(v49 + 88);
  v72 = sub_22C37170C();
  v74 = v73(v72);
  if (v74 != *MEMORY[0x277D72A58])
  {
    v158 = v49;
    v178 = v61;
    if (v74 == *MEMORY[0x277D729E8])
    {
      v83 = v22;
      v150 = v22;
      v84 = v158;
      v85 = sub_22C36A31C(v158);
      v86(v85);
      v70 = *v58;
      v87 = swift_projectBox();
      v88 = v164;
      (*(v164 + 16))(v28, v87, v83);
      sub_22C90908C();
      v89 = v165;
      sub_22C9090AC();
      sub_22C9094BC();
      (*(v166 + 8))(v89, v167);
      sub_22C3889BC();
      sub_22C90328C();
      (*(v84 + 8))(v172, v46);
      (*(v88 + 8))(v28, v150);
      goto LABEL_8;
    }

    if (v74 == *MEMORY[0x277D72A38])
    {
      v90 = v158;
      v91 = sub_22C36A31C(v158);
      v92(v91);
      v154 = *v58;
      v93 = swift_projectBox();
      v94 = v159;
      v95 = v160;
      (*(v159 + 16))(v45, v93, v160);
      sub_22C90908C();
      v164 = v46;
      v96 = v165;
      sub_22C9090AC();
      sub_22C9094BC();
      sub_22C3786C0();
      v97(v96);
      sub_22C38C004();
      (*(v90 + 8))(v172, v164);
      (*(v94 + 8))(v45, v95);
      goto LABEL_8;
    }

    if (v74 == *MEMORY[0x277D729E0])
    {
      v103 = v158;
      v104 = sub_22C36A31C(v158);
      v105(v104);
      v154 = *v58;
      v106 = swift_projectBox();
      (*(v162 + 16))(v161, v106, v163);
      v160 = sub_22C90905C();
      v107 = *(v160 + 16);
      v98 = v179;
      v164 = v46;
      if (v107)
      {
        v108 = (v160 + ((*(v103 + 80) + 32) & ~*(v103 + 80)));
        v109 = *(v103 + 72);
        v170 = v103 + 8;
        v171 = v109;
        v169 = (v178 + 32);
        v110 = MEMORY[0x277D84F90];
        v111 = v153;
        do
        {
          v112 = v174;
          v174(v56, v108, v46);
          v113 = v175;
          v112(v175, v56, v46);
          v114 = v177;
          sub_22C766C2C(v113);
          (*v170)(v56, v46);
          if (sub_22C370B74(v114, 1, v98) == 1)
          {
            sub_22C3770B0(v114, &qword_27D9BF2F8, &unk_22C922540);
          }

          else
          {
            v115 = *v169;
            (*v169)(v111, v114, v98);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v117 = *(v110 + 16);
              sub_22C593ECC();
              v110 = v118;
            }

            v116 = *(v110 + 16);
            if (v116 >= *(v110 + 24) >> 1)
            {
              sub_22C593ECC();
              v110 = v119;
            }

            *(v110 + 16) = v116 + 1;
            v98 = v179;
            v115((v110 + ((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * v116), v111, v179);
            v46 = v164;
          }

          v108 += v171;
          --v107;
        }

        while (v107);
      }

      else
      {

        v110 = MEMORY[0x277D84F90];
      }

      v99 = v173;
      v130 = *(v110 + 16);
      if (v130)
      {
        v182 = MEMORY[0x277D84F90];
        sub_22C3B5E2C();
        v131 = v182;
        v132 = *(v178 + 16);
        v133 = v110 + ((*(v178 + 80) + 32) & ~*(v178 + 80));
        v174 = *(v178 + 72);
        v175 = v132;
        v177 = (v178 + 16);
        v170 = v110;
        v171 = v178 + 8;
        do
        {
          v134 = v176;
          v175(v176, v133, v98);
          v135 = v98;
          v180 = sub_22C9032AC();
          v181 = v136;

          MEMORY[0x2318B7850](14906, 0xE200000000000000);

          v137 = v180;
          v138 = v181;
          v139 = sub_22C90329C();
          v141 = v140;
          v180 = v137;
          v181 = v138;

          MEMORY[0x2318B7850](v139, v141);

          v70 = v180;
          v142 = v181;
          (*v171)(v134, v135);
          v182 = v131;
          v143 = *(v131 + 16);
          if (v143 >= *(v131 + 24) >> 1)
          {
            sub_22C3B5E2C();
            v131 = v182;
          }

          *(v131 + 16) = v143 + 1;
          v144 = v131 + 16 * v143;
          *(v144 + 32) = v70;
          *(v144 + 40) = v142;
          v133 += v174;
          --v130;
          v98 = v179;
        }

        while (v130);

        v99 = v173;
      }

      else
      {

        v131 = MEMORY[0x277D84F90];
      }

      v145 = v155;
      sub_22C767AD0(v131, v155);

      sub_22C7663F0(v145);
      v180 = v146;
      sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
      sub_22C3F035C();
      sub_22C90A04C();

      (*(v156 + 8))(v145, v157);
      v147 = v165;
      v148 = v161;
      sub_22C90904C();
      sub_22C9094BC();
      (*(v166 + 8))(v147, v167);
      sub_22C3889BC();
      sub_22C90328C();
      (*(v158 + 8))(v172, v164);
      (*(v162 + 8))(v148, v163);
      goto LABEL_10;
    }

    v98 = v179;
    if (v74 == *MEMORY[0x277D729F8])
    {
      v120 = v158;
      v121 = sub_22C36A31C(v158);
      v122(v121);
      v70 = *v58;
      v123 = swift_projectBox();
      v124 = v152;
      v125 = v151;
      (*(v152 + 16))(v151, v123, v154);
      sub_22C90908C();
      v164 = v46;
      v126 = v165;
      sub_22C9090AC();
      sub_22C9094BC();
      sub_22C3786C0();
      v127(v126);
      sub_22C38C004();
      (*(v120 + 8))(v172, v164);
      (*(v124 + 8))(v125, v154);
      goto LABEL_9;
    }

    v128 = *(v158 + 8);
    v128(v172, v46);
    v129 = sub_22C37170C();
    (v128)(v129);
LABEL_12:
    v100 = v173;
    v101 = 1;
    return sub_22C36C640(v100, v101, 1, v98);
  }

  v75 = sub_22C36A31C(v49);
  v76(v75);
  v77 = *v58;
  v78 = swift_projectBox();
  (*(v170 + 16))(v169, v78, v171);
  sub_22C767DEC();
  if (!v79)
  {
    (*(v49 + 8))(v172, v46);
    (*(v170 + 8))(v169, v171);

    v98 = v179;
    goto LABEL_12;
  }

  v178 = v61;
  v80 = v165;
  v81 = v172;
  sub_22C90935C();
  sub_22C9094BC();
  sub_22C3786C0();
  v82(v80);
  v70 = v168;
  sub_22C90328C();
  (*(v49 + 8))(v81, v46);
  (*(v170 + 8))(v169, v171);
LABEL_8:
  v98 = v179;
LABEL_9:
  v99 = v173;
LABEL_10:

  (*(v178 + 32))(v99, v70, v98);
  v100 = v99;
  v101 = 0;
  return sub_22C36C640(v100, v101, 1, v98);
}

uint64_t sub_22C767AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = sub_22C909C6C();
  v19[0] = *(v3 - 8);
  v4 = *(v19[0] + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C76A6CC(&qword_28142FA48, MEMORY[0x277CC5540]);
  sub_22C909C3C();
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (a1 + 40);
    v20 = v3;
    while (2)
    {
      v9 = *(v8 - 1);
      v10 = *v8;

      v11 = sub_22C766760(v9, v10);
      v13 = v11;
      v14 = v12;
      switch(v12 >> 62)
      {
        case 1uLL:
          if (v11 >> 32 < v11)
          {
            __break(1u);
LABEL_19:
            __break(1u);
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
          }

          if (sub_22C90006C() && __OFSUB__(v13, sub_22C90008C()))
          {
            goto LABEL_21;
          }

LABEL_15:
          sub_22C90007C();
          v3 = v20;
LABEL_16:
          sub_22C909C1C();
          sub_22C38B120(v13, v14);
          v8 += 2;
          if (!--v7)
          {
            break;
          }

          continue;
        case 2uLL:
          v16 = *(v11 + 16);
          v15 = *(v11 + 24);
          if (sub_22C90006C() && __OFSUB__(v16, sub_22C90008C()))
          {
            goto LABEL_20;
          }

          if (!__OFSUB__(v15, v16))
          {
            goto LABEL_15;
          }

          goto LABEL_19;
        case 3uLL:
          memset(v21, 0, 14);
          goto LABEL_16;
        default:
          v21[0] = v11;
          LOWORD(v21[1]) = v12;
          BYTE2(v21[1]) = BYTE2(v12);
          BYTE3(v21[1]) = BYTE3(v12);
          BYTE4(v21[1]) = BYTE4(v12);
          BYTE5(v21[1]) = BYTE5(v12);
          goto LABEL_16;
      }

      break;
    }
  }

  sub_22C909C2C();
  result = (*(v19[0] + 8))(v6, v3);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22C767DEC()
{
  v164 = sub_22C90929C();
  v162 = *(v164 - 8);
  v0 = *(v162 + 64);
  MEMORY[0x28223BE20](v164);
  v163 = &v161 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_22C3A5908(&qword_27D9BFE38, &qword_22C92B200);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v171 = &v161 - v4;
  v170 = sub_22C9001BC();
  v169 = *(v170 - 8);
  v5 = *(v169 + 64);
  MEMORY[0x28223BE20](v170);
  v168 = &v161 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_22C90021C();
  v172 = *(v181 - 8);
  v7 = *(v172 + 64);
  MEMORY[0x28223BE20](v181);
  v180 = &v161 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_22C90046C();
  v179 = *(v188 - 8);
  v9 = *(v179 + 64);
  MEMORY[0x28223BE20](v188);
  v186 = &v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9BF2C0, &qword_22C925300);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v184 = &v161 - v13;
  v189 = sub_22C90014C();
  v187 = *(v189 - 8);
  v14 = *(v187 + 64);
  MEMORY[0x28223BE20](v189);
  v185 = &v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C3A5908(&qword_27D9BFE40, &qword_22C925A00);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v178 = &v161 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v195 = &v161 - v20;
  v21 = sub_22C90083C();
  v206 = *(v21 - 8);
  v207 = v21;
  v22 = *(v206 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v177 = &v161 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v194 = &v161 - v25;
  v26 = sub_22C90058C();
  v202 = *(v26 - 8);
  v203 = v26;
  v27 = *(v202 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v176 = &v161 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v193 = &v161 - v30;
  v31 = sub_22C90056C();
  v200 = *(v31 - 8);
  v201 = v31;
  v32 = *(v200 + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v175 = &v161 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v192 = &v161 - v35;
  v199 = sub_22C90054C();
  v198 = *(v199 - 8);
  v36 = *(v198 + 64);
  v37 = MEMORY[0x28223BE20](v199);
  v174 = &v161 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v191 = &v161 - v39;
  v197 = sub_22C90055C();
  v196 = *(v197 - 8);
  v40 = *(v196 + 64);
  v41 = MEMORY[0x28223BE20](v197);
  v183 = &v161 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v190 = &v161 - v43;
  v44 = sub_22C90059C();
  v204 = *(v44 - 8);
  v205 = v44;
  v45 = *(v204 + 64);
  v46 = MEMORY[0x28223BE20](v44);
  v173 = &v161 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v49 = &v161 - v48;
  v215 = sub_22C90063C();
  v208 = *(v215 - 8);
  v50 = *(v208 + 64);
  v51 = MEMORY[0x28223BE20](v215);
  v182 = &v161 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v54 = &v161 - v53;
  v55 = sub_22C90926C();
  v161 = *(v55 - 8);
  v56 = *(v161 + 64);
  MEMORY[0x28223BE20](v55);
  v58 = &v161 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_22C909C6C();
  v210 = *(v59 - 8);
  v211 = v59;
  v60 = *(v210 + 64);
  MEMORY[0x28223BE20](v59);
  v209 = &v161 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_22C909C4C();
  v213 = *(v62 - 8);
  v214 = v62;
  v63 = *(v213 + 64);
  MEMORY[0x28223BE20](v62);
  v212 = &v161 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_22C9092DC();
  v166 = *(v167 - 8);
  v65 = *(v166 + 64);
  MEMORY[0x28223BE20](v167);
  v165 = &v161 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_22C90930C();
  v68 = *(v67 - 8);
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67);
  v71 = &v161 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_22C90931C();
  v73 = *(v72 - 8);
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v72);
  v76 = &v161 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v73 + 16))(v76, v216, v72);
  v77 = (*(v73 + 88))(v76, v72);
  if (v77 == *MEMORY[0x277D72988])
  {
    (*(v73 + 96))(v76, v72);
    if (*v76)
    {
      v78 = 1702195828;
    }

    else
    {
      v78 = 0x65736C6166;
    }

    *v76;
    return v78;
  }

  if (v77 == *MEMORY[0x277D729A8])
  {
    (*(v73 + 96))(v76, v72);
    v79 = *v76;
    return sub_22C90A84C();
  }

  if (v77 == *MEMORY[0x277D729B8])
  {
    (*(v73 + 96))(v76, v72);
    v80 = sub_22C766760(*v76, *(v76 + 1));
    v82 = v81;
    sub_22C76A6CC(&qword_28142FA48, MEMORY[0x277CC5540]);
    v83 = v209;
    v84 = v211;
    sub_22C909C3C();
    sub_22C3C832C(v80, v82);
    sub_22C878568(v80, v82);
    sub_22C38B120(v80, v82);
    v85 = v212;
    sub_22C909C2C();
    (*(v210 + 8))(v83, v84);
    sub_22C7663F0(v85);
    v217 = v86;
    sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
    sub_22C3F035C();
    v78 = sub_22C90A04C();
    sub_22C38B120(v80, v82);
    (*(v213 + 8))(v85, v214);
LABEL_10:

    return v78;
  }

  if (v77 == *MEMORY[0x277D72990])
  {
    (*(v73 + 96))(v76, v72);
    v87 = v208;
    (*(v208 + 32))(v54, v76, v215);
    (*(v196 + 104))(v190, *MEMORY[0x277CC9460], v197);
    (*(v198 + 104))(v191, *MEMORY[0x277CC9458], v199);
    (*(v200 + 104))(v192, *MEMORY[0x277CC9468], v201);
    (*(v202 + 104))(v193, *MEMORY[0x277CC9480], v203);
    v88 = v195;
    sub_22C90080C();
    v89 = v207;
    result = sub_22C370B74(v88, 1, v207);
    if (result != 1)
    {
      (*(v206 + 32))(v194, v88, v89);
      sub_22C90057C();
      sub_22C76A6CC(&qword_27D9BFE48, MEMORY[0x277CC94A0]);
      v91 = v205;
      sub_22C90061C();
      (*(v204 + 8))(v49, v91);
      (*(v87 + 8))(v54, v215);
      return v217;
    }

    __break(1u);
  }

  else
  {
    if (v77 != *MEMORY[0x277D72958])
    {
      if (v77 == *MEMORY[0x277D72980])
      {
        (*(v73 + 96))(v76, v72);
        v98 = v179;
        (*(v179 + 32))(v186, v76, v188);
        v99 = sub_22C90045C();
        v101 = v100;

        v102 = sub_22C766760(v99, v101);
        v104 = v103;
        sub_22C76A6CC(&qword_28142FA48, MEMORY[0x277CC5540]);
        v105 = v209;
        v106 = v211;
        sub_22C909C3C();
        sub_22C3C832C(v102, v104);
        sub_22C878568(v102, v104);
        sub_22C38B120(v102, v104);
        v107 = v212;
        sub_22C909C2C();
        (*(v210 + 8))(v105, v106);
        sub_22C38B120(v102, v104);

        sub_22C7663F0(v107);
        v217 = v108;
        sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
        sub_22C3F035C();
        v78 = sub_22C90A04C();
        (*(v213 + 8))(v107, v214);
        (*(v98 + 8))(v186, v188);
      }

      else if (v77 == *MEMORY[0x277D72968])
      {
        (*(v73 + 96))(v76, v72);
        v114 = v172;
        (*(v172 + 32))(v180, v76, v181);
        v115 = v168;
        sub_22C90019C();
        sub_22C87F748();
        (*(v169 + 8))(v115, v170);
        v116 = sub_22C90A19C();
        v118 = v117;

        v119 = sub_22C766760(v116, v118);
        v121 = v120;
        sub_22C76A6CC(&qword_28142FA48, MEMORY[0x277CC5540]);
        v122 = v209;
        v123 = v211;
        sub_22C909C3C();
        sub_22C3C832C(v119, v121);
        sub_22C878568(v119, v121);
        sub_22C38B120(v119, v121);
        v124 = v212;
        sub_22C909C2C();
        (*(v210 + 8))(v122, v123);
        sub_22C38B120(v119, v121);

        sub_22C7663F0(v124);
        v217 = v125;
        sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
        sub_22C3F035C();
        v78 = sub_22C90A04C();
        (*(v213 + 8))(v124, v214);
        (*(v114 + 8))(v180, v181);
      }

      else
      {
        if (v77 == *MEMORY[0x277D729D0])
        {
          (*(v73 + 96))(v76, v72);
          (*(v68 + 32))(v71, v76, v67);
          v126 = objc_autoreleasePoolPush();
          sub_22C769AC0(&v217);
          objc_autoreleasePoolPop(v126);
          v78 = v217;
          (*(v68 + 8))(v71, v67);
          return v78;
        }

        if (v77 == *MEMORY[0x277D729B0])
        {
          (*(v73 + 96))(v76, v72);
          v127 = v166;
          v128 = v165;
          v129 = v167;
          (*(v166 + 32))(v165, v76, v167);
          v130 = sub_22C9092CC();
          v131 = [v130 personHandle];
          if (v131 && (v132 = sub_22C8E62D8(v131), v133) || (v132 = sub_22C76A4D8(v130, &selRef_contactIdentifier), v134) || (v132 = sub_22C76A4D8(v130, &selRef_customIdentifier), v135))
          {
            v78 = v132;

            (*(v127 + 8))(v128, v129);
            return v78;
          }

          v150 = [v130 displayName];
          sub_22C90A11C();

          v151 = sub_22C90A1BC();
          v153 = v152;

          v154 = sub_22C766760(v151, v153);
          v156 = v155;
          sub_22C76A6CC(&qword_28142FA48, MEMORY[0x277CC5540]);
          v157 = v209;
          v158 = v211;
          sub_22C909C3C();
          sub_22C3C832C(v154, v156);
          sub_22C878568(v154, v156);
          sub_22C38B120(v154, v156);
          v159 = v212;
          sub_22C909C2C();
          (*(v210 + 8))(v157, v158);
          sub_22C38B120(v154, v156);

          sub_22C7663F0(v159);
          v217 = v160;
          sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
          sub_22C3F035C();
          v78 = sub_22C90A04C();

          (*(v213 + 8))(v159, v214);
          (*(v166 + 8))(v165, v167);
        }

        else
        {
          if (v77 != *MEMORY[0x277D72998])
          {
            if (v77 == *MEMORY[0x277D72970])
            {
              (*(v73 + 96))(v76, v72);
              v149 = v161;
              (*(v161 + 32))(v58, v76, v55);
              v78 = sub_22C90924C();
              (*(v149 + 8))(v58, v55);
            }

            else if (v77 == *MEMORY[0x277D729A0])
            {
              return 1701736302;
            }

            else
            {
              (*(v73 + 8))(v76, v72);
              return 0;
            }

            return v78;
          }

          (*(v73 + 96))(v76, v72);
          v136 = v162;
          (*(v162 + 32))(v163, v76, v164);
          v137 = sub_22C90928C();
          v138 = [v137 description];

          v139 = sub_22C90A11C();
          v141 = v140;

          v142 = sub_22C766760(v139, v141);
          v144 = v143;
          sub_22C76A6CC(&qword_28142FA48, MEMORY[0x277CC5540]);
          v145 = v209;
          v146 = v211;
          sub_22C909C3C();
          sub_22C3C832C(v142, v144);
          sub_22C878568(v142, v144);
          sub_22C38B120(v142, v144);
          v147 = v212;
          sub_22C909C2C();
          (*(v210 + 8))(v145, v146);
          sub_22C38B120(v142, v144);

          sub_22C7663F0(v147);
          v217 = v148;
          sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
          sub_22C3F035C();
          v78 = sub_22C90A04C();
          (*(v213 + 8))(v147, v214);
          (*(v136 + 8))(v163, v164);
        }
      }

      goto LABEL_10;
    }

    (*(v73 + 96))(v76, v72);
    v92 = v187;
    v93 = v185;
    v94 = v189;
    (*(v187 + 32))(v185, v76, v189);
    v95 = v184;
    sub_22C9000DC();
    v96 = v215;
    if (sub_22C370B74(v95, 1, v215) == 1)
    {
      v97 = sub_22C3770B0(v95, &qword_27D9BF2C0, &qword_22C925300);
      v78 = MEMORY[0x2318AD580](v97);
      (*(v92 + 8))(v93, v94);
      return v78;
    }

    (*(v208 + 32))(v182, v95, v96);
    (*(v196 + 104))(v183, *MEMORY[0x277CC9460], v197);
    (*(v198 + 104))(v174, *MEMORY[0x277CC9458], v199);
    (*(v200 + 104))(v175, *MEMORY[0x277CC9468], v201);
    (*(v202 + 104))(v176, *MEMORY[0x277CC9480], v203);
    v109 = v178;
    sub_22C90080C();
    v110 = v207;
    result = sub_22C370B74(v109, 1, v207);
    if (result != 1)
    {
      (*(v206 + 32))(v177, v109, v110);
      v111 = v173;
      sub_22C90057C();
      sub_22C76A6CC(&qword_27D9BFE48, MEMORY[0x277CC94A0]);
      v112 = v205;
      v113 = v182;
      sub_22C90061C();
      (*(v204 + 8))(v111, v112);
      (*(v208 + 8))(v113, v96);
      (*(v92 + 8))(v93, v189);
      return v217;
    }
  }

  __break(1u);
  return result;
}

void sub_22C769AC0(uint64_t *a1@<X8>)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22C909C6C();
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C909C4C();
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C9092FC();
  v11 = [v10 location];

  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = objc_opt_self();
  v31[0] = 0;
  v13 = [v12 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:v31];
  v14 = v31[0];
  if (!v13)
  {
    v24 = v14;
    v25 = sub_22C90030C();

    swift_willThrow();
LABEL_5:
    *a1 = 0;
    a1[1] = 0;
    goto LABEL_6;
  }

  v15 = sub_22C90051C();
  v28 = v6;
  v16 = v15;
  v18 = v17;

  sub_22C76A6CC(&qword_28142FA48, MEMORY[0x277CC5540]);
  v27 = a1;
  sub_22C909C3C();
  sub_22C3C832C(v16, v18);
  sub_22C878568(v16, v18);
  sub_22C38B120(v16, v18);
  sub_22C909C2C();
  (*(v29 + 8))(v5, v2);
  sub_22C7663F0(v9);
  v31[0] = v19;
  sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
  sub_22C3F035C();
  v20 = sub_22C90A04C();
  v22 = v21;
  sub_22C38B120(v16, v18);

  (*(v30 + 8))(v9, v28);

  v23 = v27;
  *v27 = v20;
  v23[1] = v22;
LABEL_6:
  v26 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22C769E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_22C90047C();
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_22C90009C();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_22C90005C();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_22C9004CC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_22C769EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_22C76A3C0(sub_22C76A6AC, v5, a1, a2);
}

uint64_t sub_22C769F3C(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_22C38B120(v6, v5);
      *v4 = xmmword_22C9259E0;
      sub_22C38B120(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (sub_22C90006C() && __OFSUB__(v6, sub_22C90008C()))
      {
        goto LABEL_24;
      }

      v13 = sub_22C90009C();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_22C90004C();

      v11 = v16;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_22C76A424(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_22C38B120(v6, v5);
      v20 = v6;
      v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_22C9259E0;
      sub_22C38B120(0, 0xC000000000000000);
      sub_22C90048C();
      v6 = v20;
      v9 = sub_22C76A424(*(v20 + 16), *(v20 + 24), a1);
      if (v2)
      {
        v10 = v21 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v21 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

LABEL_21:
      v17 = *MEMORY[0x277D85DE8];
      return v3;
    case 3uLL:
      memset(v22, 0, 15);
      a1(&v20, v22, v22);
      if (!v2)
      {
        v3 = v20;
      }

      goto LABEL_21;
    default:
      v3 = v6 >> 8;
      sub_22C38B120(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        v3 = v20;
      }

      v8 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v4 = v22[0];
      v4[1] = v8;
      goto LABEL_21;
  }
}

uint64_t sub_22C76A300@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_22C90047C();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x2318AD970]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x2318AD990]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_22C76A378(uint64_t result)
{
  if (result)
  {
    result = sub_22C90AF6C();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_22C76A3C0(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_22C76A424(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_22C90006C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_22C90008C();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_22C90007C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_22C76A4D8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_22C90A11C();

  return v4;
}

void *sub_22C76A538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_22C769EE8(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_22C76A570@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  result = sub_22C76A378(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
  }

  return result;
}

uint64_t sub_22C76A5B0(uint64_t a1, uint64_t a2)
{
  result = sub_22C90006C();
  if (!result || (result = sub_22C90008C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22C90007C();
      sub_22C909C6C();
      sub_22C76A6CC(&qword_28142FA48, MEMORY[0x277CC5540]);
      return sub_22C909C1C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C76A6CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t String.djb2Hash<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v19[1] = a6;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(*(v14 + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19[8] = a2;
  v19[9] = a3;
  swift_getAssociatedConformanceWitness();

  sub_22C90B51C();
  sub_22C90B4DC();
  v19[4] = a4;
  v19[5] = a5;
  sub_22C76AAFC();
  sub_22C90A52C();
  (*(v10 + 8))(v13, a4);
}

uint64_t sub_22C76A924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v17[1] = a3;
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v17 - v9;
  v12 = *v11;
  v19 = 5;
  v14 = *(v13 + 8);
  sub_22C76AB50();
  sub_22C90ADAC();
  sub_22C90B13C();
  v15 = *(v4 + 8);
  v15(v8, a2);
  v18 = v12;
  sub_22C76ABA4();
  sub_22C90ADCC();
  sub_22C90B13C();
  v15(v8, a2);
  return (v15)(v10, a2);
}

unint64_t sub_22C76AAFC()
{
  result = qword_27D9BFE50;
  if (!qword_27D9BFE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFE50);
  }

  return result;
}

unint64_t sub_22C76AB50()
{
  result = qword_27D9BFE58;
  if (!qword_27D9BFE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFE58);
  }

  return result;
}

unint64_t sub_22C76ABA4()
{
  result = qword_27D9BFE60;
  if (!qword_27D9BFE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFE60);
  }

  return result;
}

uint64_t sub_22C76ABF8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22C3A5908(&qword_27D9BFE68, &qword_22C925A80);
  sub_22C369914(v3);
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v6 = sub_22C90014C();
  v2[6] = v6;
  sub_22C3699B8(v6);
  v2[7] = v7;
  v9 = *(v8 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v10 = type metadata accessor for DateComponentsResolver();
  v2[10] = v10;
  sub_22C369914(v10);
  v12 = *(v11 + 64) + 15;
  v2[11] = swift_task_alloc();
  v13 = sub_22C9063DC();
  v2[12] = v13;
  sub_22C3699B8(v13);
  v2[13] = v14;
  v16 = *(v15 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v17 = sub_22C90063C();
  v2[16] = v17;
  sub_22C3699B8(v17);
  v2[17] = v18;
  v20 = *(v19 + 64) + 15;
  v2[18] = swift_task_alloc();
  v21 = type metadata accessor for DateResolver();
  v2[19] = v21;
  sub_22C369914(v21);
  v23 = *(v22 + 64) + 15;
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C76AE08, 0, 0);
}

uint64_t sub_22C76AE08()
{
  v85 = v0;
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[10];
  v6 = v0[3];
  v7 = v6[1];
  v83 = *v6;
  v8 = v5[5];
  v9 = v2[5];
  v10 = sub_22C90981C();
  sub_22C36985C(v10);
  (*(v11 + 16))(v1 + v9, v6 + v8);
  v12 = v5[6];
  v13 = v2[6];
  v14 = sub_22C90077C();
  sub_22C36985C(v14);
  (*(v15 + 16))(v1 + v13, v6 + v12);
  sub_22C3E8FB4(v6 + v5[7], v1 + v2[7], &qword_27D9BFE70, &unk_22C925A20);
  v16 = *(v6 + v5[8]);
  (*(v4 + 16))(v1 + v2[9], v6 + v5[9], v3);
  v17 = v5[10];
  v18 = v2[10];
  v19 = sub_22C90083C();
  sub_22C36985C(v19);
  (*(v20 + 16))(v1 + v18, v6 + v17);
  *v1 = v83;
  v1[1] = v7;
  *(v1 + v2[8]) = v16;
  v21 = objc_allocWithZone(MEMORY[0x277CCAA68]);
  v22 = v16;

  v23 = [v21 init];
  v24 = sub_22C90A0EC();
  v25 = [v23 dateFromString_];

  v26 = v0[20];
  if (v25)
  {
    v28 = v0[17];
    v27 = v0[18];
    v29 = v0[16];
    v30 = v0[2];
    sub_22C9005FC();

    sub_22C36B604();
    sub_22C76C7B4(v26, v31);
    v32 = sub_22C90931C();
    v33 = swift_allocBox();
    v35 = v34;
    (*(v28 + 32))(v34, v27, v29);
    (*(*(v32 - 8) + 104))(v35, *MEMORY[0x277D72990], v32);
    *v30 = v33;
    v36 = *MEMORY[0x277D72A58];
    v37 = sub_22C9093BC();
    sub_22C36985C(v37);
    (*(v38 + 104))(v30, v36, v37);
    v39 = v30;
    v40 = 0;
    v41 = v37;
    goto LABEL_18;
  }

  v42 = v0[20];
  v43 = sub_22C76CA60(v83, v7);
  v0[21] = v43;
  result = sub_22C36E2B8(v43);
  v0[22] = result;
  if (!result)
  {
    v47 = v0[15];
    v48 = v0[11];
    v49 = v0[3];

    sub_22C903F8C();
    sub_22C76C750(v49, v48);
    v50 = sub_22C9063CC();
    v51 = sub_22C90AADC();
    v52 = os_log_type_enabled(v50, v51);
    v53 = v0[20];
    v54 = v0[15];
    v56 = v0[12];
    v55 = v0[13];
    v57 = v0[11];
    if (v52)
    {
      swift_slowAlloc();
      v58 = sub_22C376940();
      v84 = v58;
      *v54 = 136315138;
      v82 = v53;
      v60 = *v57;
      v59 = v57[1];

      sub_22C372D24();
      v61 = sub_22C36F9F4(v60, v59, &v84);

      *(v54 + 4) = v61;
      _os_log_impl(&dword_22C366000, v50, v51, "Not able to convert Input = %s to SiriInference.DateTime.", v54, 0xCu);
      sub_22C36FF94(v58);
      sub_22C3699EC();
      sub_22C3699EC();

      (*(v55 + 8))(v83, v56);
      sub_22C36B604();
      v63 = v82;
    }

    else
    {

      sub_22C372D24();
      (*(v55 + 8))(v54, v56);
      sub_22C36B604();
      v63 = v53;
    }

    sub_22C76C7B4(v63, v62);
    v78 = v0[2];
    v41 = sub_22C9093BC();
    v39 = v78;
    v40 = 1;
LABEL_18:
    sub_22C36C640(v39, v40, 1, v41);
    sub_22C370A04();

    v79 = v0[1];
    sub_22C36D5F8();

    __asm { BRAA            X1, X16 }
  }

  v45 = v0[21];
  if ((v45 & 0xC000000000000001) != 0)
  {
    v46 = MEMORY[0x2318B8460](0);
  }

  else
  {
    if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v46 = *(v45 + 32);
  }

  v0[23] = v46;
  v0[24] = 1;
  v64 = sub_22C9017FC();
  if (v64)
  {
    v67 = v64;
    v68 = sub_22C9017BC();

    if (v68)
    {
      sub_22C37A368();
      sub_22C76B998(v18);

      sub_22C36C640(v18, 0, 1, v83);
      v69 = sub_22C37FFB4();
      v70(v69);
      sub_22C76BFB8(v24, v67);

      v71 = *(v13 + 8);
      v72 = sub_22C36CA88();
      v73(v72);
      sub_22C36B604();
      sub_22C76C7B4(0, v74);
      v41 = sub_22C9093BC();
      v39 = v67;
      v40 = 0;
      goto LABEL_18;
    }
  }

  v75 = v0[5];
  sub_22C374D84(v75, v65, v66, v0[6]);
  sub_22C36DD28(v75, &qword_27D9BFE68, &qword_22C925A80);
  v76 = swift_task_alloc();
  v0[25] = v76;
  *v76 = v0;
  sub_22C38C02C(v76);
  sub_22C36D5F8();

  return sub_22C76D444();
}

uint64_t sub_22C76B43C()
{
  v1 = *(*v0 + 200);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22C76B538, 0, 0);
}

uint64_t sub_22C76B538()
{
  v67 = v0;
  v5 = v0[6];
  v6 = v0[4];
  if (sub_22C370B74(v6, 1, v5) != 1)
  {
    v29 = v0[23];
    v31 = v0[20];
    v30 = v0[21];
    v33 = v0[7];
    v32 = v0[8];
    v35 = v0[2];
    v34 = v0[3];

    v36 = *(v33 + 32);
    v37 = sub_22C36CA88();
    v38(v37);
    sub_22C76BFB8(v32, v35);

    (*(v33 + 8))(v32, v5);
    sub_22C36B604();
    sub_22C76C7B4(v31, v39);
    v40 = sub_22C9093BC();
    v41 = v35;
LABEL_6:
    v42 = 0;
    goto LABEL_11;
  }

  v7 = v0[23];
  v8 = v0[24];
  v9 = v0[22];

  result = sub_22C36DD28(v6, &qword_27D9BFE68, &qword_22C925A80);
  if (v8 == v9)
  {
    v11 = v0[21];
    v12 = v0[14];
    sub_22C903F8C();

    v13 = sub_22C9063CC();
    v14 = sub_22C90AADC();

    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[20];
    v17 = v0[21];
    v18 = v0[13];
    v19 = v0[14];
    v20 = v0[12];
    if (v15)
    {
      swift_slowAlloc();
      v21 = sub_22C376940();
      v66 = v21;
      *v19 = 136315138;
      v22 = sub_22C90184C();
      v23 = MEMORY[0x2318B7AD0](v17, v22);
      v64 = v16;
      v25 = v24;

      v26 = sub_22C36F9F4(v23, v25, &v66);

      *(v19 + 4) = v26;
      _os_log_impl(&dword_22C366000, v13, v14, "Could not resolve dateComponents from dateTime(s)=%s", v19, 0xCu);
      sub_22C36FF94(v21);
      sub_22C3699EC();
      sub_22C3699EC();

      (*(v18 + 8))(v65, v20);
      sub_22C36B604();
      v28 = v64;
    }

    else
    {

      (*(v18 + 8))(v19, v20);
      sub_22C36B604();
      v28 = v16;
    }

    sub_22C76C7B4(v28, v27);
    v46 = v0[2];
    v40 = sub_22C9093BC();
    v41 = v46;
    v42 = 1;
LABEL_11:
    sub_22C36C640(v41, v42, 1, v40);
    sub_22C370A04();

    v47 = v0[1];
    sub_22C36D5F8();

    __asm { BRAA            X1, X16 }
  }

  v43 = v0[24];
  v44 = v0[21];
  if ((v44 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x2318B8460](v0[24]);
    v45 = result;
  }

  else
  {
    if (v43 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v45 = *(v44 + 8 * v43 + 32);
  }

  v0[23] = v45;
  v0[24] = v43 + 1;
  if (__OFADD__(v43, 1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v50 = sub_22C9017FC();
  if (v50)
  {
    v53 = v50;
    v54 = sub_22C9017BC();

    if (v54)
    {
      sub_22C37A368();
      sub_22C76B998(v3);

      sub_22C36C640(v3, 0, 1, v6);
      v55 = sub_22C37FFB4();
      v56(v55);
      sub_22C76BFB8(v2, v53);

      v57 = *(v4 + 8);
      v58 = sub_22C36CA88();
      v59(v58);
      sub_22C36B604();
      sub_22C76C7B4(v1, v60);
      v40 = sub_22C9093BC();
      v41 = v53;
      goto LABEL_6;
    }
  }

  v61 = v0[5];
  sub_22C374D84(v61, v51, v52, v0[6]);
  sub_22C36DD28(v61, &qword_27D9BFE68, &qword_22C925A80);
  v62 = swift_task_alloc();
  v0[25] = v62;
  *v62 = v0;
  sub_22C38C02C();
  sub_22C36D5F8();

  return sub_22C76D444();
}

void sub_22C76B998(uint64_t a1@<X8>)
{
  v2 = sub_22C3A5908(&qword_27D9BFE40, &qword_22C925A00);
  v3 = sub_22C369914(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  sub_22C36BA58();
  v98 = v10;
  sub_22C369930();
  MEMORY[0x28223BE20](v11);
  sub_22C36BA58();
  v101 = v12;
  sub_22C369930();
  MEMORY[0x28223BE20](v13);
  sub_22C36BA58();
  v100 = v14;
  sub_22C369930();
  MEMORY[0x28223BE20](v15);
  v102 = &v95 - v16;
  v17 = sub_22C3A5908(&qword_27D9BFE78, &qword_22C925A30);
  v18 = sub_22C369914(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C369ABC();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  sub_22C36BA58();
  v97 = v25;
  sub_22C369930();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v95 - v28;
  MEMORY[0x28223BE20](v27);
  sub_22C36BA58();
  v99 = v30;
  sub_22C369930();
  MEMORY[0x28223BE20](v31);
  v33 = &v95 - v32;
  v34 = sub_22C3A5908(&qword_27D9BFE80, &qword_22C925A38);
  v35 = sub_22C369914(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C369ABC();
  v40 = v38 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v95 - v42;
  sub_22C90183C();
  v44 = sub_22C90178C();
  if (sub_22C370B74(v43, 1, v44) == 1)
  {
    goto LABEL_2;
  }

  v95 = v43;
  v96 = a1;
  sub_22C3E8FB4(v43, v40, &qword_27D9BFE80, &qword_22C925A38);
  v51 = *(v44 - 8);
  v52 = (*(v51 + 88))(v40, v44);
  if (v52 == *MEMORY[0x277D562D0])
  {
    v53 = sub_22C9007EC();
    v56 = sub_22C371CB4(v33, v54, v55, v53);
    sub_22C3889D0(v56, v57, v58, v56);
    sub_22C90182C();
    if (v59)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    sub_22C383444();
    v43 = v95;
    if (v61)
    {
      __break(1u);
    }

    else if (v60 > -9.22337204e18)
    {
      sub_22C76CA50();
      if (v62)
      {
        sub_22C3786D4();
        LOBYTE(v104) = v63;
        v103 = 0;
        sub_22C373900();
        LOBYTE(v96) = 0;
        v95 = v64;
        goto LABEL_10;
      }

      goto LABEL_37;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v52 == *MEMORY[0x277D562F0])
  {
    v65 = sub_22C9007EC();
    v68 = sub_22C371CB4(v29, v66, v67, v65);
    sub_22C374D84(v101, v69, v70, v68);
    sub_22C90182C();
    if (v71)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    sub_22C383444();
    if (!v61)
    {
      if (v72 > -9.22337204e18)
      {
        sub_22C76CA50();
        if (v62)
        {
          sub_22C3786D4();
          LOBYTE(v104) = v73;
          v103 = 0;
          sub_22C373900();
          LOBYTE(v96) = v74;
          v95 = 0;
          sub_22C76CA3C();
          sub_22C90013C();
          v43 = v95;
          goto LABEL_12;
        }

        goto LABEL_40;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v52 == *MEMORY[0x277D562E0])
  {
    v75 = sub_22C9007EC();
    v78 = sub_22C371CB4(v99, v76, v77, v75);
    sub_22C3889D0(v78, v79, v80, v78);
    sub_22C90182C();
    v43 = v95;
    if (v81)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    sub_22C383444();
    if (!v61)
    {
      if (v82 > -9.22337204e18)
      {
        sub_22C76CA50();
        if (v62)
        {
          sub_22C3786D4();
          LOBYTE(v104) = 0;
          v103 = v83;
          sub_22C373900();
          LOBYTE(v96) = v84;
          v95 = 0;
          goto LABEL_10;
        }

        goto LABEL_43;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v52 != *MEMORY[0x277D562E8])
  {
    (*(v51 + 8))(v40, v44);
    v43 = v95;
LABEL_2:
    v45 = sub_22C9007EC();
    v48 = sub_22C371CB4(v23, v46, v47, v45);
    sub_22C374D84(v8, v49, v50, v48);
LABEL_10:
    sub_22C76CA3C();
LABEL_11:
    sub_22C90013C();
LABEL_12:
    sub_22C36DD28(v43, &qword_27D9BFE80, &qword_22C925A38);
    return;
  }

  v85 = sub_22C9007EC();
  v88 = sub_22C371CB4(v97, v86, v87, v85);
  sub_22C3889D0(v88, v89, v90, v88);
  sub_22C90182C();
  v43 = v95;
  if ((v91 & 1) == 0)
  {
    sub_22C383444();
    if (!v61)
    {
      if (v92 > -9.22337204e18)
      {
        sub_22C76CA50();
        if (v62)
        {
          sub_22C3786D4();
          LOBYTE(v104) = v93;
          v103 = 0;
          sub_22C373900();
          LOBYTE(v96) = v94;
          v95 = 0;
          sub_22C76CA28();
          goto LABEL_11;
        }

        goto LABEL_46;
      }

LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_50:
  __break(1u);
}

uint64_t sub_22C76BFB8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a2;
  v4 = sub_22C3A5908(&qword_27D9BFE88, &unk_22C925A40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - v6;
  v8 = sub_22C90967C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C90014C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  (*(v14 + 16))(&v30 - v19, a1, v13);
  v21 = v2 + *(type metadata accessor for DateComponentsResolver() + 20);
  sub_22C5EE4F4(v7);
  if (sub_22C370B74(v7, 1, v8) == 1)
  {
    sub_22C36DD28(v7, &qword_27D9BFE88, &unk_22C925A40);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    sub_22C76C310(v18);
    (*(v9 + 8))(v12, v8);
    (*(v14 + 8))(v20, v13);
    (*(v14 + 32))(v20, v18, v13);
  }

  v22 = sub_22C90931C();
  v23 = swift_allocBox();
  v25 = v24;
  (*(v14 + 32))(v24, v20, v13);
  (*(*(v22 - 8) + 104))(v25, *MEMORY[0x277D72958], v22);
  v26 = v31;
  *v31 = v23;
  v27 = *MEMORY[0x277D72A58];
  v28 = sub_22C9093BC();
  return (*(*(v28 - 8) + 104))(v26, v27, v28);
}

uint64_t sub_22C76C310@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22C3A5908(&qword_27D9BFE40, &qword_22C925A00);
  v3 = sub_22C369914(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = sub_22C3A5908(&qword_27D9BFE78, &qword_22C925A30);
  v7 = sub_22C369914(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v51 - v10;
  v12 = sub_22C90967C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v13 + 16);
  v18 = sub_22C36CA88();
  v19(v18);
  v20 = (*(v13 + 88))(v16, v12);
  if (v20 == *MEMORY[0x277D72F78])
  {
    v21 = sub_22C9007EC();
    v24 = sub_22C371CB4(v11, v22, v23, v21);
    sub_22C3889D0(v24, v25, v26, v24);
    v27 = sub_22C9000EC();
    v28 = sub_22C90011C();
    sub_22C90012C();
    sub_22C36C2CC();
    v58 = v29;
    v57 = v30;
    LOBYTE(v56) = v31;
    v55 = v28;
    LOBYTE(v54) = v32;
    v53 = v27;
    LOBYTE(v52) = 1;
    v51 = 0;
    sub_22C76CA28();
    return sub_22C90013C();
  }

  v33 = v20;
  if (v20 == *MEMORY[0x277D72F70])
  {
    v34 = sub_22C9007EC();
    v37 = sub_22C371CB4(v11, v35, v36, v34);
    sub_22C3889D0(v37, v38, v39, v37);
    sub_22C9000FC();
    sub_22C90010C();
    sub_22C9000CC();
    sub_22C36C2CC();
    v58 = 1;
    v57 = 0;
    LOBYTE(v56) = 1;
    v55 = 0;
    LOBYTE(v54) = 1;
    v53 = 0;
    LOBYTE(v52) = v40;
    v51 = v41;
    sub_22C76CA28();
    return sub_22C90013C();
  }

  v59 = *MEMORY[0x277D72F68];
  v43 = sub_22C9007EC();
  v46 = sub_22C371CB4(v11, v44, v45, v43);
  sub_22C3889D0(v46, v47, v48, v46);
  v57 = sub_22C9000FC();
  HIDWORD(v55) = v49;
  v56 = sub_22C90010C();
  LODWORD(v55) = v50;
  v54 = sub_22C9000CC();
  v53 = sub_22C9000EC();
  v51 = sub_22C90011C();
  v52 = a1;
  sub_22C90012C();
  sub_22C76CA28();
  result = sub_22C90013C();
  if (v33 != v59)
  {
    return (*(v13 + 8))(v16, v12);
  }

  return result;
}

uint64_t type metadata accessor for DateComponentsResolver()
{
  result = qword_27D9BFE90;
  if (!qword_27D9BFE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C76C750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateComponentsResolver();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C76C7B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_22C76C834()
{
  sub_22C90981C();
  if (v0 <= 0x3F)
  {
    sub_22C90077C();
    if (v1 <= 0x3F)
    {
      sub_22C76C928();
      if (v2 <= 0x3F)
      {
        sub_22C76C98C();
        if (v3 <= 0x3F)
        {
          sub_22C90063C();
          if (v4 <= 0x3F)
          {
            sub_22C90083C();
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

void sub_22C76C928()
{
  if (!qword_27D9BFEA0)
  {
    sub_22C3AC1A0(&qword_27D9BFEA8, &qword_22C925AF0);
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BFEA0);
    }
  }
}

void sub_22C76C98C()
{
  if (!qword_27D9BFEB0)
  {
    sub_22C76C9E4();
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BFEB0);
    }
  }
}

unint64_t sub_22C76C9E4()
{
  result = qword_27D9BFEB8;
  if (!qword_27D9BFEB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9BFEB8);
  }

  return result;
}

uint64_t sub_22C76CA60(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C9063DC();
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v6);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v90 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v92 = &v90 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v90 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v90 - v22;
  v24 = type metadata accessor for DateResolver();
  sub_22C3E8FB4(v2 + *(v24 + 28), &v104, &qword_27D9BFE70, &unk_22C925A20);
  if (v105)
  {
    sub_22C36C730(&v104, v106);
    v25 = sub_22C374168(v106, v106[3]);
    v26 = v25[1];
    v27 = v25[2];
    sub_22C773E00(a1, a2, *v25);
    v29 = v28;
    sub_22C903F8C();

    v30 = sub_22C9063CC();
    v31 = sub_22C90AABC();

    v32 = os_log_type_enabled(v30, v31);
    v33 = MEMORY[0x277D84F70];
    v94 = v16;
    v96 = v21;
    if (v32)
    {
      sub_22C36BED8();
      v34 = swift_slowAlloc();
      v35 = sub_22C370060();
      *&v104 = v35;
      *v34 = 136315138;
      v36 = MEMORY[0x2318B7AD0](v29, v33 + 8);
      v38 = v8;
      v39 = sub_22C36F9F4(v36, v37, &v104);

      *(v34 + 4) = v39;
      v8 = v38;
      v33 = MEMORY[0x277D84F70];
      _os_log_impl(&dword_22C366000, v30, v31, "USO Entities = %s", v34, 0xCu);
      sub_22C36FF94(v35);
      sub_22C36C30C();
      v21 = v96;
      sub_22C3699EC();

      v40 = v38;
    }

    else
    {

      v40 = v8;
    }

    v97 = *(v40 + 8);
    v97(v23, v5);
    *&v104 = sub_22C7E38E4(v29);
    sub_22C771488(&v104);

    v48 = v104;
    v49 = *(v104 + 16);
    v93 = v5;
    if (v49)
    {
      v95 = v8;
      v103[0] = MEMORY[0x277D84F90];
      sub_22C3B7118();
      v50 = v103[0];
      *&v91 = v48;
      v51 = v48 + 32;
      do
      {
        sub_22C3E8FB4(v51, &v104, &qword_27D9BAD70, qword_22C925AC0);
        sub_22C3E8FB4(&v104, &v100, &qword_27D9BAD70, qword_22C925AC0);
        v98 = v100;
        sub_22C456E34(&v101, v99);
        sub_22C36F998(v99, v102);
        sub_22C36DD28(&v98, &qword_27D9BAD70, qword_22C925AC0);
        sub_22C36DD28(&v104, &qword_27D9BAD70, qword_22C925AC0);
        v103[0] = v50;
        v52 = *(v50 + 16);
        if (v52 >= *(v50 + 24) >> 1)
        {
          sub_22C3B7118();
          v50 = v103[0];
        }

        *(v50 + 16) = v52 + 1;
        sub_22C456E34(v102, (v50 + 32 * v52 + 32));
        v51 += 40;
        --v49;
      }

      while (v49);

      v5 = v93;
      v33 = MEMORY[0x277D84F70];
      v8 = v95;
      v21 = v96;
    }

    else
    {

      v50 = MEMORY[0x277D84F90];
    }

    sub_22C903F8C();

    v53 = sub_22C9063CC();
    v54 = sub_22C90AABC();

    if (os_log_type_enabled(v53, v54))
    {
      sub_22C36BED8();
      v55 = v21;
      v56 = swift_slowAlloc();
      v57 = sub_22C370060();
      *&v104 = v57;
      *v56 = 136315138;
      v58 = MEMORY[0x2318B7AD0](v50, v33 + 8);
      v60 = sub_22C36F9F4(v58, v59, &v104);

      *(v56 + 4) = v60;
      _os_log_impl(&dword_22C366000, v53, v54, "Sorted USO Entities to prioritize 'common_DateTime' = %s", v56, 0xCu);
      sub_22C36FF94(v57);
      sub_22C3699EC();
      sub_22C3699EC();

      v61 = v55;
    }

    else
    {

      v61 = v21;
    }

    v97(v61, v5);
    v63 = v92;
    *&v102[0] = MEMORY[0x277D84F90];
    v64 = *(v50 + 16);
    if (v64)
    {
      v65 = v50 + 32;
      v96 = (v8 + 8);
      v66 = MEMORY[0x277D84F90];
      *&v62 = 136315138;
      v90 = v62;
      *&v62 = 136315394;
      v91 = v62;
      v95 = v50;
      do
      {
        sub_22C36F998(v65, &v104);
        if (sub_22C7730EC(&v104))
        {
          sub_22C903F8C();
          sub_22C36F998(&v104, &v100);

          v67 = sub_22C9063CC();
          v68 = v63;
          v69 = sub_22C90AABC();

          if (os_log_type_enabled(v67, v69))
          {
            v70 = swift_slowAlloc();
            v103[0] = swift_slowAlloc();
            *v70 = v91;
            sub_22C36F998(&v100, &v98);
            v71 = sub_22C90A1AC();
            v73 = v72;
            sub_22C36FF94(&v100);
            v74 = sub_22C36F9F4(v71, v73, v103);

            *(v70 + 4) = v74;
            *(v70 + 12) = 2080;
            v75 = sub_22C9017DC();
            v77 = sub_22C36F9F4(v75, v76, v103);

            *(v70 + 14) = v77;
            _os_log_impl(&dword_22C366000, v67, v69, "Converted USO Entity = %s to SiriInference.DateTime = %s", v70, 0x16u);
            swift_arrayDestroy();
            sub_22C386DA4();
            sub_22C3699EC();
          }

          else
          {

            sub_22C36FF94(&v100);
          }

          sub_22C376960();
          v86();
          v63 = v68;

          MEMORY[0x2318B7AA0](v87);
          if (*((*&v102[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v102[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_22C90A61C();
          }

          sub_22C90A65C();

          sub_22C36FF94(&v104);
          v66 = *&v102[0];
        }

        else
        {
          sub_22C903F8C();
          sub_22C36F998(&v104, &v100);
          v78 = sub_22C9063CC();
          v79 = sub_22C90AABC();
          if (os_log_type_enabled(v78, v79))
          {
            sub_22C36BED8();
            v80 = swift_slowAlloc();
            v81 = sub_22C370060();
            v103[0] = v81;
            *v80 = v90;
            sub_22C36F998(&v100, &v98);
            v82 = sub_22C90A1AC();
            v84 = v83;
            sub_22C36FF94(&v100);
            v85 = sub_22C36F9F4(v82, v84, v103);

            *(v80 + 4) = v85;
            _os_log_impl(&dword_22C366000, v78, v79, "USO Entity = %s could not be converted to SiriInference.DateTime", v80, 0xCu);
            sub_22C36FF94(v81);
            sub_22C3699EC();
            sub_22C386DA4();
          }

          else
          {

            sub_22C36FF94(&v100);
          }

          sub_22C376960();
          v88();
          sub_22C36FF94(&v104);
          v63 = v92;
        }

        v65 += 32;
        --v64;
      }

      while (v64);
    }

    else
    {

      v66 = MEMORY[0x277D84F90];
    }

    sub_22C36FF94(v106);
  }

  else
  {
    sub_22C36DD28(&v104, &qword_27D9BFE70, &unk_22C925A20);
    sub_22C903F8C();
    v41 = sub_22C9063CC();
    v42 = sub_22C90AADC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = sub_22C36D240();
      *v43 = 0;
      _os_log_impl(&dword_22C366000, v41, v42, "dataDetectors is nil.", v43, 2u);
      sub_22C3699EC();

      v44 = *(v8 + 8);
      v45 = sub_22C36D264();
    }

    else
    {

      v47 = *(v8 + 8);
      v45 = v13;
      v46 = v5;
    }

    v47(v45, v46);
    return MEMORY[0x277D84F90];
  }

  return v66;
}

uint64_t sub_22C76D444()
{
  sub_22C369980();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_22C9063DC();
  v1[7] = v4;
  sub_22C3699B8(v4);
  v1[8] = v5;
  v7 = *(v6 + 64);
  v1[9] = sub_22C3699D4();
  v8 = sub_22C3A5908(&qword_27D9BFEC8, &qword_22C925A90);
  v1[10] = v8;
  sub_22C3699B8(v8);
  v1[11] = v9;
  v11 = *(v10 + 64);
  v1[12] = sub_22C3699D4();
  v12 = sub_22C90634C();
  v1[13] = v12;
  sub_22C3699B8(v12);
  v1[14] = v13;
  v15 = *(v14 + 64);
  v1[15] = sub_22C36D0D4();
  v1[16] = swift_task_alloc();
  v16 = sub_22C90636C();
  v1[17] = v16;
  sub_22C3699B8(v16);
  v1[18] = v17;
  v19 = *(v18 + 64);
  v1[19] = sub_22C36D0D4();
  v1[20] = swift_task_alloc();
  v20 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_22C76D5F4()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  sub_22C90365C();
  sub_22C90365C();
  sub_22C90635C();
  sub_22C90631C();
  v6 = *(v4 + 8);
  v7 = sub_22C37170C();
  v6(v7);
  v8 = sub_22C90635C();
  sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v9 = v0[16];
    *sub_22C36D240() = 0;
    v10 = sub_22C90632C();
    sub_22C3721A8(&dword_22C366000, v11, v12, v10, "DateResolver.resolveComponents", "");
    sub_22C3699EC();
  }

  v13 = v0[20];
  v15 = v0[16];
  v14 = v0[17];
  v17 = v0[14];
  v16 = v0[15];
  v18 = v0[13];

  v19 = sub_22C77238C(v17);
  v20(v19);
  v21 = sub_22C9063AC();
  sub_22C3856A0(v21);
  v0[21] = sub_22C36D704();
  v22 = *(v17 + 8);
  v23 = sub_22C36CA88();
  v24(v23);
  v25 = sub_22C36D264();
  v6(v25);
  swift_task_alloc();
  sub_22C36CC90();
  v0[22] = v26;
  *v26 = v27;
  v26[1] = sub_22C76D7A0;
  v28 = v0[12];
  v29 = v0[5];
  v30 = v0[6];

  return sub_22C76F0F0(v28, v29);
}

uint64_t sub_22C76D7A0()
{
  sub_22C369980();
  v2 = *(*v1 + 176);
  v3 = *v1;
  sub_22C369970();
  *v4 = v3;
  *(v5 + 184) = v0;

  if (v0)
  {
    v6 = sub_22C76D980;
  }

  else
  {
    v6 = sub_22C76D8A8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22C76D8A8()
{
  v1 = v0[21];
  v2 = v0[11];
  v3 = v0[10];
  v4 = v0[6];
  sub_22C77035C(v0[12], v0[5], v0[4]);
  v5 = *(v2 + 8);
  v6 = sub_22C36D264();
  v7(v6);
  sub_22C76EDBC(v1, "DateResolver.resolveComponents");

  sub_22C375B18();

  sub_22C369A24();

  return v8();
}

uint64_t sub_22C76D980()
{
  v35 = v0;
  v1 = v0[23];
  v2 = v0[9];
  v3 = v0[5];
  sub_22C903F8C();
  v4 = v1;

  v5 = sub_22C9063CC();
  v6 = sub_22C90AADC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[23];
    v8 = v0[8];
    v33 = v0[9];
    v9 = v0[7];
    v10 = v0[5];
    v11 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v11 = 136315394;
    v0[2] = v7;
    v12 = v7;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    v13 = sub_22C90A1AC();
    sub_22C36F9F4(v13, v14, &v34);
    sub_22C37B3BC();
    *(v11 + 4) = v0 + 2;
    *(v11 + 12) = 2080;
    v0[3] = v10;
    v15 = sub_22C90184C();
    sub_22C36B61C();
    sub_22C771440(v16, v17);
    v18 = sub_22C90B47C();
    sub_22C36F9F4(v18, v19, &v34);
    sub_22C37B3BC();
    *(v11 + 14) = v15;
    _os_log_impl(&dword_22C366000, v5, v6, "makeRecommendation() threw error: %s, returning %s", v11, 0x16u);
    swift_arrayDestroy();
    sub_22C36C30C();
    sub_22C3699EC();

    (*(v8 + 8))(v33, v9);
  }

  else
  {
    v21 = v0[8];
    v20 = v0[9];
    v22 = v0[7];

    v23 = *(v21 + 8);
    v24 = sub_22C37170C();
    v25(v24);
  }

  v26 = v0[23];
  v27 = v0[21];
  v29 = v0[4];
  v28 = v0[5];
  sub_22C90181C();

  v30 = sub_22C90014C();
  sub_22C36C640(v29, 0, 1, v30);
  sub_22C76EDBC(v27, "DateResolver.resolveComponents");

  sub_22C375B18();

  sub_22C369A24();

  return v31();
}

uint64_t sub_22C76DC34()
{
  sub_22C369980();
  v1[2] = v2;
  v1[3] = v0;
  v3 = *(*(sub_22C3A5908(&qword_27D9BF2C0, &qword_22C925300) - 8) + 64);
  v1[4] = sub_22C3699D4();
  v4 = *(*(sub_22C3A5908(&qword_27D9BFE68, &qword_22C925A80) - 8) + 64);
  v1[5] = sub_22C3699D4();
  v5 = sub_22C90014C();
  v1[6] = v5;
  sub_22C3699B8(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = sub_22C36D0D4();
  v1[9] = swift_task_alloc();
  v9 = sub_22C9007EC();
  v1[10] = v9;
  sub_22C3699B8(v9);
  v1[11] = v10;
  v12 = *(v11 + 64);
  v1[12] = sub_22C3699D4();
  v13 = *(*(type metadata accessor for DateResolver() - 8) + 64);
  v1[13] = sub_22C3699D4();
  v14 = sub_22C9063DC();
  v1[14] = v14;
  sub_22C3699B8(v14);
  v1[15] = v15;
  v17 = *(v16 + 64);
  v1[16] = sub_22C36D0D4();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v18 = sub_22C90063C();
  v1[19] = v18;
  sub_22C3699B8(v18);
  v1[20] = v19;
  v21 = *(v20 + 64);
  v1[21] = sub_22C36D0D4();
  v1[22] = swift_task_alloc();
  v22 = sub_22C90634C();
  v1[23] = v22;
  sub_22C3699B8(v22);
  v1[24] = v23;
  v25 = *(v24 + 64);
  v1[25] = sub_22C36D0D4();
  v1[26] = swift_task_alloc();
  v26 = sub_22C90636C();
  v1[27] = v26;
  sub_22C3699B8(v26);
  v1[28] = v27;
  v29 = *(v28 + 64);
  v1[29] = sub_22C36D0D4();
  v1[30] = swift_task_alloc();
  v30 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v30, v31, v32);
}

uint64_t sub_22C76DF20()
{
  v80 = v0;
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[26];
  sub_22C90365C();
  sub_22C90365C();
  sub_22C90635C();
  sub_22C90631C();
  v6 = *(v4 + 8);
  v7 = sub_22C37170C();
  v77 = v8;
  v8(v7);
  v9 = sub_22C90635C();
  sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v10 = v0[26];
    *sub_22C36D240() = 0;
    v11 = sub_22C90632C();
    sub_22C3721A8(&dword_22C366000, v12, v13, v11, "DateResolver.run", "");
    sub_22C3699EC();
  }

  v14 = v0[30];
  v16 = v0[26];
  v15 = v0[27];
  v18 = v0[24];
  v17 = v0[25];
  v19 = v0[23];
  v20 = v0[3];

  v21 = sub_22C77238C(v18);
  v22(v21);
  v23 = sub_22C9063AC();
  sub_22C3856A0(v23);
  v0[31] = sub_22C36D704();
  v24 = *(v18 + 8);
  v25 = sub_22C36CA88();
  v26(v25);
  v27 = sub_22C36D264();
  v77(v27);
  v28 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  v30 = *v20;
  v29 = v20[1];
  sub_22C36FCCC();
  v31 = sub_22C90A0EC();
  v32 = [v28 dateFromString_];

  if (v32)
  {
    v33 = v0[22];
    v34 = v0[19];
    v35 = v0[20];
    v36 = v0[2];
    sub_22C9005FC();

    v37 = sub_22C90931C();
    v38 = swift_allocBox();
    v40 = v39;
    (*(v35 + 32))(v39, v33, v34);
    (*(*(v37 - 8) + 104))(v40, *MEMORY[0x277D72990], v37);
    *v36 = v38;
    v41 = *MEMORY[0x277D72A58];
    v42 = sub_22C9093BC();
    sub_22C36985C(v42);
    (*(v43 + 104))(v36, v41, v42);
    sub_22C36DA54();
    goto LABEL_5;
  }

  v50 = v0[3];
  v51 = sub_22C36FCCC();
  v53 = sub_22C76CA60(v51, v52);
  v0[32] = v53;
  v54 = sub_22C36E2B8(v53);
  v0[33] = v54;
  if (!v54)
  {
    v60 = v0[18];
    v61 = v0[13];
    v62 = v0[3];

    sub_22C903F8C();
    sub_22C77131C(v62, v61);
    v63 = sub_22C9063CC();
    v64 = sub_22C90AADC();
    v65 = os_log_type_enabled(v63, v64);
    v38 = v0[18];
    v67 = v0[14];
    v66 = v0[15];
    v68 = v0[13];
    if (v65)
    {
      sub_22C36BED8();
      v78 = v38;
      v38 = swift_slowAlloc();
      v69 = sub_22C370060();
      v79 = v69;
      *v38 = 136315138;
      v70 = *v68;
      v71 = v68[1];

      sub_22C771380(v68);
      v72 = sub_22C36F9F4(v70, v71, &v79);

      *(v38 + 4) = v72;
      _os_log_impl(&dword_22C366000, v63, v64, "Not able to convert Input = %s to SiriInference.DateTime object(s).", v38, 0xCu);
      sub_22C36FF94(v69);
      sub_22C36C30C();
      sub_22C3699EC();

      (*(v66 + 8))(v78, v67);
    }

    else
    {

      sub_22C771380(v68);
      (*(v66 + 8))(v38, v67);
    }

    v76 = v0[2];
    sub_22C9093BC();
    v44 = sub_22C3703AC();
LABEL_5:
    sub_22C36C640(v44, v45, v46, v47);
    sub_22C371CE4();
    sub_22C76EDBC(v38, "DateResolver.run");

    sub_22C369A24();
    sub_22C378644();

    __asm { BRAA            X1, X16 }
  }

  v55 = v0[12];
  v56 = v0[3];
  result = sub_22C76EC1C();
  v58 = v0[32];
  if ((v58 & 0xC000000000000001) != 0)
  {
    v59 = MEMORY[0x2318B8460](0);
  }

  else
  {
    if (!*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v59 = *(v58 + 32);
  }

  v0[34] = v59;
  v0[35] = 1;
  swift_task_alloc();
  sub_22C36CC90();
  v0[36] = v73;
  *v73 = v74;
  sub_22C3786E8(v73);
  sub_22C378644();

  return sub_22C76D444();
}

uint64_t sub_22C76E448()
{
  sub_22C369980();
  v1 = *(*v0 + 288);
  v2 = *v0;
  sub_22C369970();
  *v3 = v2;

  v4 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C76E530()
{
  v104 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v3 = &unk_22C90D000;
  if (sub_22C370B74(v2, 1, v1) == 1)
  {
    v4 = v0[34];

    result = sub_22C36DD28(v2, &qword_27D9BFE68, &qword_22C925A80);
  }

  else
  {
    v29 = v0[19];
    v30 = v0[12];
    v31 = v0[4];
    (*(v0[7] + 32))(v0[9], v2, v1);
    sub_22C90078C();
    if (sub_22C370B74(v31, 1, v29) != 1)
    {
      v59 = v0[34];
      v60 = v0[32];
      v61 = v0[20];
      v62 = v0[19];
      v63 = v0[11];
      v64 = v0[12];
      v66 = v0[9];
      v65 = v0[10];
      v67 = v0[6];
      v68 = v0[7];
      v97 = v0[4];
      v99 = v0[21];
      v102 = v0[2];

      (*(v68 + 8))(v66, v67);
      v69 = *(v63 + 8);
      v70 = sub_22C36CA88();
      v71(v70);
      v72 = *(v61 + 32);
      v72(v99, v97, v62);
      v73 = sub_22C90931C();
      v27 = swift_allocBox();
      v75 = v74;
      v72(v74, v99, v62);
      (*(*(v73 - 8) + 104))(v75, *MEMORY[0x277D72990], v73);
      *v102 = v27;
      v76 = *MEMORY[0x277D72A58];
      v77 = sub_22C9093BC();
      sub_22C36985C(v77);
      (*(v78 + 104))(v102, v76, v77);
      sub_22C36DA54();
      goto LABEL_14;
    }

    v32 = v0[17];
    v34 = v0[8];
    v33 = v0[9];
    v35 = v0[6];
    v36 = v0[7];
    sub_22C36DD28(v0[4], &qword_27D9BF2C0, &qword_22C925300);
    sub_22C903F8C();
    v37 = *(v36 + 16);
    v38 = sub_22C36A724();
    v39(v38);
    v40 = sub_22C9063CC();
    v41 = sub_22C90AABC();
    v42 = os_log_type_enabled(v40, v41);
    v43 = v0[34];
    v44 = v0[17];
    v45 = v0[15];
    v101 = v0[14];
    v46 = v0[8];
    v47 = v0[9];
    v48 = v0[6];
    v49 = v0[7];
    if (v42)
    {
      sub_22C36BED8();
      v50 = swift_slowAlloc();
      v92 = v41;
      v51 = sub_22C370060();
      v103 = v51;
      *v50 = 136315138;
      sub_22C771440(&qword_27D9BFEC0, MEMORY[0x277CC8990]);
      v94 = v44;
      v96 = v47;
      v52 = sub_22C90B47C();
      v54 = v53;
      v55 = *(v49 + 8);
      v55(v46, v48);
      v56 = sub_22C36F9F4(v52, v54, &v103);

      *(v50 + 4) = v56;
      _os_log_impl(&dword_22C366000, v40, v92, "Could not extract a valid date from dateComponents: %s", v50, 0xCu);
      sub_22C36FF94(v51);
      sub_22C386DA4();
      v3 = &unk_22C90D000;
      sub_22C3699EC();

      (*(v45 + 8))(v94, v101);
      result = (v55)(v96, v48);
    }

    else
    {

      v90 = *(v49 + 8);
      v90(v46, v48);
      (*(v45 + 8))(v44, v101);
      v91 = sub_22C36D264();
      result = (v90)(v91);
    }
  }

  v6 = v0[35];
  v7 = v0[32];
  if (v6 == v0[33])
  {
    v8 = v0[16];
    sub_22C903F8C();

    v9 = sub_22C9063CC();
    v10 = sub_22C90AADC();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[32];
    v13 = v0[15];
    v14 = v0[16];
    v100 = v0[14];
    v16 = v0[11];
    v15 = v0[12];
    v17 = v0[10];
    if (v11)
    {
      sub_22C36BED8();
      v98 = v14;
      v18 = swift_slowAlloc();
      v19 = sub_22C370060();
      v20 = v3;
      v21 = v19;
      v103 = v19;
      *v18 = v20[4];
      v22 = sub_22C90184C();
      v93 = v17;
      v95 = v15;
      v23 = MEMORY[0x2318B7AD0](v12, v22);
      v25 = v24;

      v26 = sub_22C36F9F4(v23, v25, &v103);

      *(v18 + 4) = v26;
      _os_log_impl(&dword_22C366000, v9, v10, "Could not resolve dateComponents from dateTime(s)=%s", v18, 0xCu);
      sub_22C36FF94(v21);
      sub_22C3699EC();
      sub_22C36C30C();

      v28 = *(v13 + 8);
      v27 = v13 + 8;
      v28(v98, v100);
      (*(v16 + 8))(v95, v93);
    }

    else
    {

      v83 = *(v13 + 8);
      v27 = v13 + 8;
      v83(v14, v100);
      (*(v16 + 8))(v15, v17);
    }

    v84 = v0[2];
    sub_22C9093BC();
    v79 = sub_22C3703AC();
LABEL_14:
    sub_22C36C640(v79, v80, v81, v82);
    sub_22C371CE4();
    sub_22C76EDBC(v27, "DateResolver.run");

    sub_22C369A24();
    sub_22C378644();

    __asm { BRAA            X1, X16 }
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
    v57 = sub_22C36A724();
    result = MEMORY[0x2318B8460](v57);
    v58 = result;
  }

  else
  {
    if (v6 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_25:
      __break(1u);
      return result;
    }

    v58 = *(v7 + 8 * v6 + 32);
  }

  v0[34] = v58;
  v0[35] = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_25;
  }

  swift_task_alloc();
  sub_22C36CC90();
  v0[36] = v87;
  *v87 = v88;
  sub_22C3786E8();
  sub_22C378644();

  return sub_22C76D444();
}

uint64_t sub_22C76EC1C()
{
  v1 = sub_22C3A5908(&qword_27D9BD820, &unk_22C9195C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14 - v3;
  v5 = sub_22C90083C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9007BC();
  v10 = type metadata accessor for DateResolver();
  (*(v6 + 16))(v9, v0 + *(v10 + 40), v5);
  sub_22C9007CC();
  v11 = *(v10 + 24);
  v12 = sub_22C90077C();
  (*(*(v12 - 8) + 16))(v4, v0 + v11, v12);
  sub_22C36C640(v4, 0, 1, v12);
  return sub_22C9007AC();
}

uint64_t sub_22C76EDBC(uint64_t a1, const char *a2)
{
  v2 = sub_22C90637C();
  v3 = sub_22C369824(v2);
  v44 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v7 = sub_22C90634C();
  v8 = sub_22C369824(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v15 = v14 - v13;
  v16 = sub_22C90636C();
  v17 = sub_22C369824(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v24 = v23 - v22;
  sub_22C90365C();
  v25 = sub_22C90635C();
  sub_22C90638C();
  v43 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v42 = v10;

    sub_22C9063BC();

    v26 = *(v44 + 88);
    v27 = sub_22C36A724();
    if (v28(v27) == *MEMORY[0x277D85B00])
    {
      v29 = 0;
      v30 = 0;
      v45 = "[Error] Interval already ended";
    }

    else
    {
      v32 = *(v44 + 8);
      v33 = sub_22C36A724();
      v34(v33);
      v45 = "%s";
      v30 = 2;
      v29 = 1;
    }

    v35 = v19;
    sub_22C36BED8();
    v36 = swift_slowAlloc();
    v37 = sub_22C370060();
    v47 = v37;
    *v36 = v30;
    *(v36 + 1) = v29;
    *(v36 + 2) = 2080;
    sub_22C90366C();
    v38 = sub_22C90AF7C();
    v40 = sub_22C36F9F4(v38, v39, &v47);

    *(v36 + 4) = v40;
    v41 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v25, v43, v41, a2, v45, v36, 0xCu);
    sub_22C36FF94(v37);
    sub_22C3699EC();
    sub_22C36C30C();

    (*(v42 + 8))(v15, v7);
    return (*(v35 + 8))(v24, v16);
  }

  else
  {

    (*(v10 + 8))(v15, v7);
    return (*(v19 + 8))(v24, v16);
  }
}

uint64_t sub_22C76F0F0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_22C9015CC();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_22C9063DC();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = sub_22C90163C();
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v13 = sub_22C90164C();
  v3[15] = v13;
  v14 = *(v13 - 8);
  v3[16] = v14;
  v15 = *(v14 + 64) + 15;
  v3[17] = swift_task_alloc();
  v16 = sub_22C90166C();
  v3[18] = v16;
  v17 = *(v16 - 8);
  v3[19] = v17;
  v18 = *(v17 + 64) + 15;
  v3[20] = swift_task_alloc();
  v19 = sub_22C90063C();
  v3[21] = v19;
  v20 = *(v19 - 8);
  v3[22] = v20;
  v21 = *(v20 + 64) + 15;
  v3[23] = swift_task_alloc();
  v22 = *(*(sub_22C9007EC() - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v23 = sub_22C90083C();
  v3[25] = v23;
  v24 = *(v23 - 8);
  v3[26] = v24;
  v25 = *(v24 + 64) + 15;
  v3[27] = swift_task_alloc();
  v26 = sub_22C90077C();
  v3[28] = v26;
  v27 = *(v26 - 8);
  v3[29] = v27;
  v28 = *(v27 + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v29 = *(*(sub_22C3A5908(&qword_27D9BFEE8, &qword_22C925AB0) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v30 = sub_22C90168C();
  v3[34] = v30;
  v31 = *(v30 - 8);
  v3[35] = v31;
  v32 = *(v31 + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v33 = sub_22C90634C();
  v3[38] = v33;
  v34 = *(v33 - 8);
  v3[39] = v34;
  v35 = *(v34 + 64) + 15;
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v36 = sub_22C90636C();
  v3[42] = v36;
  v37 = *(v36 - 8);
  v3[43] = v37;
  v38 = *(v37 + 64) + 15;
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C76F5EC, 0, 0);
}

uint64_t sub_22C76F5EC()
{
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[42];
  v4 = v0[43];
  v5 = v0[41];
  sub_22C90365C();
  sub_22C90365C();
  sub_22C90635C();
  sub_22C90631C();
  v6 = *(v4 + 8);
  v7 = sub_22C37170C();
  v6(v7);
  v8 = sub_22C90635C();
  sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v9 = v0[41];
    *sub_22C36D240() = 0;
    v10 = sub_22C90632C();
    sub_22C3721A8(&dword_22C366000, v11, v12, v10, "DateResolver.resolveComponents", "");
    sub_22C3699EC();
  }

  v13 = v0[45];
  v15 = v0[41];
  v14 = v0[42];
  v17 = v0[39];
  v16 = v0[40];
  v18 = v0[38];

  v19 = sub_22C77238C(v17);
  v20(v19);
  v21 = sub_22C9063AC();
  sub_22C3856A0(v21);
  v0[46] = sub_22C36D704();
  v22 = *(v17 + 8);
  v23 = sub_22C36CA88();
  v24(v23);
  v25 = sub_22C36D264();
  v6(v25);
  swift_task_alloc();
  sub_22C36CC90();
  v0[47] = v26;
  *v26 = v27;
  v26[1] = sub_22C76F798;
  v28 = v0[33];
  v29 = v0[5];

  return sub_22C770FAC(v28);
}

uint64_t sub_22C76F798()
{
  sub_22C369980();
  v2 = *(*v1 + 376);
  v3 = *v1;
  sub_22C369970();
  *v4 = v3;
  *(v5 + 384) = v0;

  if (v0)
  {

    v6 = sub_22C76FE20;
  }

  else
  {
    v6 = sub_22C76F8A8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22C76F8A8()
{
  v64 = v0;
  v1 = v0[33];
  v2 = v0[34];
  sub_22C7723A0();
  if (v3)
  {
    v61 = v0[48];
    (*(v0[35] + 104))(v0[37], *MEMORY[0x277D56150], v2);
    sub_22C7723A0();
    if (!v3)
    {
      sub_22C36DD28(v0[33], &qword_27D9BFEE8, &qword_22C925AB0);
    }
  }

  else
  {
    (*(v0[35] + 32))(v0[37], v1, v2);
    v62 = v0[48];
  }

  v4 = v0[35];
  v47 = v0[34];
  v48 = v0[37];
  v5 = v0[32];
  v46 = v0[36];
  v6 = v0[29];
  v40 = v0[31];
  v41 = v0[30];
  v7 = v0[28];
  v8 = v0[26];
  v42 = v0[25];
  v43 = v0[27];
  v44 = v0[24];
  v60 = v0[23];
  v45 = v0[22];
  v49 = v0[21];
  v50 = v0[16];
  v51 = v0[17];
  v52 = v0[15];
  v54 = v0[14];
  v53 = v0[13];
  v55 = v0[12];
  v56 = v0[20];
  v9 = v0[5];
  v57 = v0[11];
  v58 = v0[4];
  v10 = type metadata accessor for DateResolver();
  v11 = v10[6];
  v12 = *(v6 + 16);
  v12(v5, v9 + v11, v7);
  v12(v40, v9 + v11, v7);
  v12(v41, v9 + v11, v7);
  (*(v8 + 16))(v43, v9 + v10[10], v42);
  (*(v4 + 16))(v46, v48, v47);
  sub_22C76EC1C();
  (*(v45 + 16))(v60, v9 + v10[9], v49);
  v13 = sub_22C9016AC();
  sub_22C3856A0(v13);
  sub_22C90169C();
  (*(v50 + 104))(v51, *MEMORY[0x277D56130], v52);
  (*(v53 + 104))(v54, *MEMORY[0x277D56128], v55);
  sub_22C90179C();
  v14 = sub_22C90184C();
  sub_22C38C05C();
  sub_22C771440(v15, v16);
  v17 = sub_22C909F0C();
  sub_22C37FA10(v17, v18, v17);
  sub_22C903F8C();
  v19 = v58;

  v20 = sub_22C9063CC();
  v21 = sub_22C90AABC();

  v22 = os_log_type_enabled(v20, v21);
  v24 = v0[10];
  v23 = v0[11];
  v25 = v0[9];
  if (v22)
  {
    v59 = v0[11];
    v26 = v0[4];
    sub_22C36BED8();
    v19 = swift_slowAlloc();
    v27 = sub_22C370060();
    v63 = v27;
    *v19 = 136315138;
    v0[2] = v26;
    sub_22C36B61C();
    sub_22C771440(v28, v29);
    v30 = sub_22C90B47C();
    sub_22C36F9F4(v30, v31, &v63);
    sub_22C37B3BC();
    *(v19 + 4) = v43;
    _os_log_impl(&dword_22C366000, v20, v21, "Making DateTime recommendation for %s", v19, 0xCu);
    sub_22C36FF94(v27);
    sub_22C36C30C();
    sub_22C386DA4();

    (*(v24 + 8))(v59, v25);
  }

  else
  {

    (*(v24 + 8))(v23, v25);
  }

  sub_22C381798();
  sub_22C9015AC();
  sub_22C772330();
  v32 = v0[7];
  v33 = v0[8];
  v34 = v0[6];

  (*(v32 + 8))(v33, v34);
  isa = v20[1].isa;
  v36 = sub_22C36FCCC();
  v37(v36);
  (*(v14 + 8))(v45, v44);
  sub_22C76EDBC(v19, "DateResolver.dateResolverMakeRecommendation");

  sub_22C369A24();

  return v38();
}

uint64_t sub_22C76FE20()
{
  v60 = v0;
  sub_22C36C640(v0[33], 1, 1, v0[34]);
  v1 = v0[33];
  (*(v0[35] + 104))(v0[37], *MEMORY[0x277D56150], v0[34]);
  sub_22C7723A0();
  if (!v2)
  {
    sub_22C36DD28(v0[33], &qword_27D9BFEE8, &qword_22C925AB0);
  }

  v3 = v0[35];
  v46 = v0[34];
  v47 = v0[37];
  v4 = v0[32];
  v45 = v0[36];
  v5 = v0[29];
  v39 = v0[31];
  v40 = v0[30];
  v6 = v0[28];
  v7 = v0[26];
  v41 = v0[25];
  v42 = v0[27];
  v43 = v0[24];
  v58 = v0[23];
  v44 = v0[22];
  v48 = v0[21];
  v55 = v0[20];
  v49 = v0[16];
  v50 = v0[17];
  v51 = v0[15];
  v52 = v0[13];
  v53 = v0[14];
  v54 = v0[12];
  v8 = v0[5];
  v56 = v0[11];
  v57 = v0[4];
  v9 = type metadata accessor for DateResolver();
  v10 = v9[6];
  v11 = *(v5 + 16);
  v11(v4, v8 + v10, v6);
  v11(v39, v8 + v10, v6);
  v11(v40, v8 + v10, v6);
  (*(v7 + 16))(v42, v8 + v9[10], v41);
  (*(v3 + 16))(v45, v47, v46);
  sub_22C76EC1C();
  (*(v44 + 16))(v58, v8 + v9[9], v48);
  v12 = sub_22C9016AC();
  sub_22C3856A0(v12);
  sub_22C90169C();
  (*(v49 + 104))(v50, *MEMORY[0x277D56130], v51);
  (*(v52 + 104))(v53, *MEMORY[0x277D56128], v54);
  sub_22C90179C();
  v13 = sub_22C90184C();
  sub_22C38C05C();
  sub_22C771440(v14, v15);
  v16 = sub_22C909F0C();
  sub_22C37FA10(v16, v17, v16);
  sub_22C903F8C();
  v18 = v57;

  v19 = sub_22C9063CC();
  v20 = sub_22C90AABC();

  v21 = os_log_type_enabled(v19, v20);
  v23 = v0[10];
  v22 = v0[11];
  v24 = v0[9];
  if (v21)
  {
    v25 = v0[4];
    sub_22C36BED8();
    v18 = swift_slowAlloc();
    v26 = sub_22C370060();
    v59 = v26;
    *v18 = 136315138;
    v0[2] = v25;
    sub_22C36B61C();
    sub_22C771440(v27, v28);
    v29 = sub_22C90B47C();
    sub_22C36F9F4(v29, v30, &v59);
    sub_22C37B3BC();
    *(v18 + 4) = v13;
    _os_log_impl(&dword_22C366000, v19, v20, "Making DateTime recommendation for %s", v18, 0xCu);
    sub_22C36FF94(v26);
    sub_22C36C30C();
    sub_22C386DA4();
  }

  (*(v23 + 8))(v22, v24);
  sub_22C381798();
  sub_22C9015AC();
  sub_22C772330();
  v31 = v0[7];
  v32 = v0[8];
  v33 = v0[6];

  (*(v31 + 8))(v32, v33);
  v34 = *(v24 + 8);
  v35 = sub_22C36FCCC();
  v36(v35);
  (*(v23 + 16))(v43, v42);
  sub_22C76EDBC(v18, "DateResolver.dateResolverMakeRecommendation");

  sub_22C369A24();

  return v37();
}

uint64_t sub_22C77035C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v99 = a2;
  v102 = a3;
  v4 = sub_22C3A5908(&qword_27D9BFE68, &qword_22C925A80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v98 = (&v95 - v6);
  v7 = sub_22C9063DC();
  v8 = *(v7 - 8);
  v100 = v7;
  v101 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v97 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v96 = &v95 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v95 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v95 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v95 - v20;
  v22 = sub_22C3A5908(&qword_27D9BFEC8, &qword_22C925A90);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = (&v95 - v28);
  v30 = *(v23 + 16);
  v30(&v95 - v28, a1, v22);
  v31 = (*(v23 + 88))(v29, v22);
  if (v31 == *MEMORY[0x277D56080])
  {
    (*(v23 + 96))(v29, v22);
    v32 = *v29;
    sub_22C903F8C();

    v33 = sub_22C9063CC();
    v34 = sub_22C90AABC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v103 = v32;
      v104 = v36;
      *v35 = 136315138;
      sub_22C90184C();
      sub_22C771440(&qword_27D9BFED0, MEMORY[0x277D56498]);
      v37 = sub_22C90B47C();
      v39 = sub_22C36F9F4(v37, v38, &v104);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_22C366000, v33, v34, "Confidently resolved to %s", v35, 0xCu);
      sub_22C36FF94(v36);
      MEMORY[0x2318B9880](v36, -1, -1);
      MEMORY[0x2318B9880](v35, -1, -1);
    }

    (*(v101 + 8))(v21, v100);
LABEL_9:
    v48 = v102;
    sub_22C90181C();

    v49 = sub_22C90014C();
    v50 = v48;
    return sub_22C36C640(v50, 0, 1, v49);
  }

  if (v31 == *MEMORY[0x277D56068])
  {
    (*(v23 + 96))(v29, v22);
    v40 = *v29;
    sub_22C903F8C();

    v41 = sub_22C9063CC();
    v42 = sub_22C90AABC();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v103 = v40;
      v104 = v44;
      *v43 = 136315138;
      sub_22C90184C();
      sub_22C771440(&qword_27D9BFED0, MEMORY[0x277D56498]);
      v45 = sub_22C90B47C();
      v47 = sub_22C36F9F4(v45, v46, &v104);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_22C366000, v41, v42, "Needs Confirmation to %s", v43, 0xCu);
      sub_22C36FF94(v44);
      MEMORY[0x2318B9880](v44, -1, -1);
      MEMORY[0x2318B9880](v43, -1, -1);
    }

    (*(v101 + 8))(v19, v100);
    goto LABEL_9;
  }

  if (v31 == *MEMORY[0x277D56070])
  {
    (*(v23 + 96))(v29, v22);
    v52 = *v29;
    sub_22C903F8C();

    v53 = sub_22C9063CC();
    v54 = sub_22C90AADC();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v104 = v56;
      *v55 = 134218242;
      *(v55 + 4) = sub_22C36E2B8(v52);

      *(v55 + 12) = 2080;
      v57 = sub_22C36E2B8(v52);
      if (v57)
      {
        sub_22C633A2C(0, (v52 & 0xC000000000000001) == 0, v52);
        if ((v52 & 0xC000000000000001) != 0)
        {
          v57 = MEMORY[0x2318B8460](0, v52);
        }

        else
        {
          v58 = *(v52 + 32);
        }
      }

      v103 = v57;
      sub_22C3A5908(&qword_27D9BFEE0, &qword_22C925AA8);
      v59 = sub_22C90A1AC();
      v61 = sub_22C36F9F4(v59, v60, &v104);

      *(v55 + 14) = v61;
      _os_log_impl(&dword_22C366000, v53, v54, "Found %ld recommendations, returning the 1st one by default %s", v55, 0x16u);
      sub_22C36FF94(v56);
      MEMORY[0x2318B9880](v56, -1, -1);
      MEMORY[0x2318B9880](v55, -1, -1);
    }

    else
    {
    }

    (*(v101 + 8))(v16, v100);
    v72 = sub_22C36E2B8(v52);
    v73 = v102;
    v74 = v98;
    if (v72)
    {
      sub_22C633A2C(0, (v52 & 0xC000000000000001) == 0, v52);
      if ((v52 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2318B8460](0, v52);
      }

      else
      {
        v75 = *(v52 + 32);
      }

      sub_22C90181C();

      v76 = sub_22C90014C();
      sub_22C36C640(v74, 0, 1, v76);
      (*(*(v76 - 8) + 32))(v73, v74, v76);
    }

    else
    {

      v76 = sub_22C90014C();
      sub_22C36C640(v74, 1, 1, v76);
      sub_22C90181C();
      if (sub_22C370B74(v74, 1, v76) != 1)
      {
        sub_22C36DD28(v74, &qword_27D9BFE68, &qword_22C925A80);
      }
    }

    sub_22C90014C();
    v50 = v73;
    v49 = v76;
    return sub_22C36C640(v50, 0, 1, v49);
  }

  v62 = v99;
  if (v31 == *MEMORY[0x277D56078])
  {
    v63 = v96;
    sub_22C903F8C();

    v64 = sub_22C9063CC();
    v65 = sub_22C90AADC();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v103 = v62;
      v104 = v67;
      *v66 = 136315138;
      sub_22C90184C();
      sub_22C771440(&qword_27D9BFED0, MEMORY[0x277D56498]);
      v68 = sub_22C90B47C();
      v70 = sub_22C36F9F4(v68, v69, &v104);

      *(v66 + 4) = v70;
      _os_log_impl(&dword_22C366000, v64, v65, "Made No recommendation, returning original DateTimeValue as is %s", v66, 0xCu);
      sub_22C36FF94(v67);
      MEMORY[0x2318B9880](v67, -1, -1);
      MEMORY[0x2318B9880](v66, -1, -1);
    }

    (*(v101 + 8))(v63, v100);
    v71 = v102;
    sub_22C90181C();
    v49 = sub_22C90014C();
    v50 = v71;
    return sub_22C36C640(v50, 0, 1, v49);
  }

  v77 = v97;
  sub_22C903F8C();
  v30(v27, a1, v22);

  v78 = sub_22C9063CC();
  v79 = sub_22C90AADC();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    LODWORD(v96) = v79;
    v81 = v80;
    v98 = swift_slowAlloc();
    v104 = v98;
    *v81 = 136315394;
    sub_22C7713DC();
    v82 = sub_22C90B47C();
    v84 = v83;
    v85 = *(v23 + 8);
    v85(v27, v22);
    v86 = sub_22C36F9F4(v82, v84, &v104);
    v87 = v99;

    *(v81 + 4) = v86;
    *(v81 + 12) = 2080;
    v103 = v87;
    sub_22C90184C();
    sub_22C771440(&qword_27D9BFED0, MEMORY[0x277D56498]);
    v88 = sub_22C90B47C();
    v90 = sub_22C36F9F4(v88, v89, &v104);

    *(v81 + 14) = v90;
    _os_log_impl(&dword_22C366000, v78, v96, "Unhandled recommendation of %s, returning original DateTimeValue as is %s", v81, 0x16u);
    v91 = v98;
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v91, -1, -1);
    MEMORY[0x2318B9880](v81, -1, -1);

    v92 = v85;
    (*(v101 + 8))(v97, v100);
  }

  else
  {

    v92 = *(v23 + 8);
    v92(v27, v22);
    (*(v101 + 8))(v77, v100);
  }

  v93 = v102;
  sub_22C90181C();
  v94 = sub_22C90014C();
  sub_22C36C640(v93, 0, 1, v94);
  return (v92)(v29, v22);
}

uint64_t sub_22C770FAC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22C9063DC();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_22C90168C();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C7710D4, 0, 0);
}

uint64_t sub_22C7710D4()
{
  v1 = v0[3];
  v2 = *(v1 + *(type metadata accessor for DateResolver() + 32));
  if (v2)
  {
    v3 = v0[9];
    v4 = v0[10];
    v5 = v0[7];
    v6 = v0[8];
    [v2 coordinate];
    v7 = MEMORY[0x277D56158];
    if (v8 >= 0.0)
    {
      v7 = MEMORY[0x277D56150];
    }

    (*(v6 + 104))(v3, *v7, v5);
    v9 = *(v6 + 32);
    v9(v4, v3, v5);
  }

  else
  {
    v10 = v0[6];
    sub_22C903F8C();
    v11 = sub_22C9063CC();
    v12 = sub_22C90AABC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = sub_22C36D240();
      *v13 = 0;
      _os_log_impl(&dword_22C366000, v11, v12, "currentLocation is missing in DateResolver, setting hemisphere as .north", v13, 2u);
      sub_22C3699EC();
    }

    v14 = v0[10];
    v15 = v0[7];
    v16 = v0[8];
    v18 = v0[5];
    v17 = v0[6];
    v19 = v0[4];

    (*(v18 + 8))(v17, v19);
    (*(v16 + 104))(v14, *MEMORY[0x277D56150], v15);
    v9 = *(v16 + 32);
  }

  v20 = v0[9];
  v21 = v0[6];
  v9(v0[2], v0[10], v0[7]);
  sub_22C36DA54();
  sub_22C36C640(v22, v23, v24, v25);

  sub_22C369A24();

  return v26();
}

uint64_t type metadata accessor for DateResolver()
{
  result = qword_27D9BFEF8;
  if (!qword_27D9BFEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C77131C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateResolver();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C771380(uint64_t a1)
{
  v2 = type metadata accessor for DateResolver();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C7713DC()
{
  result = qword_27D9BFED8;
  if (!qword_27D9BFED8)
  {
    sub_22C3AC1A0(&qword_27D9BFEC8, &qword_22C925A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFED8);
  }

  return result;
}

uint64_t sub_22C771440(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C771488(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C4F8(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_22C7714F4(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_22C7714F4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C90B45C();
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
        sub_22C3A5908(&qword_27D9BAD70, qword_22C925AC0);
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_22C77179C(v7, v8, a1, v4);
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
    return sub_22C7715F8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C7715F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
    while (2)
    {
      v17 = v5;
      v18 = a3;
      v16 = v6;
      do
      {
        sub_22C3E8FB4(v5, &v21, &qword_27D9BAD70, qword_22C925AC0);
        v7 = v5 - 40;
        sub_22C3E8FB4(v5 - 40, v20, &qword_27D9BAD70, qword_22C925AC0);
        sub_22C36F998(&v22, v19);
        sub_22C9013EC();
        if (swift_dynamicCast())
        {

          sub_22C36FF94(v19);
          sub_22C36DD28(v20, &qword_27D9BAD70, qword_22C925AC0);
          result = sub_22C36DD28(&v21, &qword_27D9BAD70, qword_22C925AC0);
        }

        else
        {
          v8 = v21;
          v9 = v20[0];
          sub_22C36FF94(v19);
          sub_22C36DD28(v20, &qword_27D9BAD70, qword_22C925AC0);
          result = sub_22C36DD28(&v21, &qword_27D9BAD70, qword_22C925AC0);
          if (v8 >= v9)
          {
            break;
          }
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v5 + 32);
        v12 = *v5;
        v11 = *(v5 + 16);
        v13 = *(v5 - 24);
        *v5 = *v7;
        *(v5 + 16) = v13;
        *(v5 + 32) = *(v5 - 8);
        *v7 = v12;
        *(v5 - 24) = v11;
        v5 -= 40;
        *(v7 + 32) = v10;
      }

      while (!__CFADD__(v6++, 1));
      a3 = v18 + 1;
      v5 = v17 + 40;
      v6 = v16 - 1;
      if (v18 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22C77179C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = 0;
    i = MEMORY[0x277D84F90];
    while (1)
    {
      v7 = v5++;
      v93 = v7;
      if (v5 < v4)
      {
        v8 = *a3;
        sub_22C3E8FB4(*a3 + 40 * v5, &v106, &qword_27D9BAD70, qword_22C925AC0);
        sub_22C3E8FB4(v8 + 40 * v7, v105, &qword_27D9BAD70, qword_22C925AC0);
        sub_22C36F998(v107, v104);
        sub_22C9013EC();
        v99 = i;
        if (swift_dynamicCast())
        {

          v9 = 1;
        }

        else
        {
          v9 = v106 < v105[0];
        }

        v95 = v9;
        sub_22C36FF94(v104);
        sub_22C36DD28(v105, &qword_27D9BAD70, qword_22C925AC0);
        sub_22C36DD28(&v106, &qword_27D9BAD70, qword_22C925AC0);
        v10 = v7 + 2;
        v11 = v8 + 40 * v7;
        v12 = 40 * v7;
        v13 = v11 + 80;
        v14 = 40 * v7 + 40;
        do
        {
          i = v10;
          v15 = v5;
          v16 = v14;
          if (v10 >= v4)
          {
            break;
          }

          sub_22C3E8FB4(v13, &v106, &qword_27D9BAD70, qword_22C925AC0);
          sub_22C3E8FB4(v13 - 40, v105, &qword_27D9BAD70, qword_22C925AC0);
          sub_22C36F998(v107, v104);
          if (swift_dynamicCast())
          {

            v17 = 1;
          }

          else
          {
            v17 = v106 < v105[0];
          }

          sub_22C36FF94(v104);
          sub_22C36DD28(v105, &qword_27D9BAD70, qword_22C925AC0);
          sub_22C36DD28(&v106, &qword_27D9BAD70, qword_22C925AC0);
          v10 = i + 1;
          v13 += 40;
          ++v5;
          v14 = v16 + 40;
        }

        while (v95 == v17);
        if (v95)
        {
          v7 = v93;
          if (i < v93)
          {
            goto LABEL_127;
          }

          if (v93 < i)
          {
            v18 = v93;
            do
            {
              if (v18 != v15)
              {
                v19 = *a3;
                if (!*a3)
                {
                  goto LABEL_134;
                }

                v20 = (v19 + v12);
                v21 = (v19 + v16);
                v22 = *v20;
                v23 = v20[1];
                v24 = *(v20 + 4);
                v25 = *(v21 + 4);
                v26 = v21[1];
                *v20 = *v21;
                v20[1] = v26;
                *(v20 + 4) = v25;
                *(v21 + 4) = v24;
                *v21 = v22;
                v21[1] = v23;
              }

              ++v18;
              v16 -= 40;
              v12 += 40;
            }

            while (v18 < v15--);
          }

          v5 = i;
          i = v99;
        }

        else
        {
          v5 = i;
          i = v99;
          v7 = v93;
        }
      }

      v28 = a3[1];
      if (v5 < v28)
      {
        if (__OFSUB__(v5, v7))
        {
          goto LABEL_126;
        }

        if (v5 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_128;
          }

          if (v7 + a4 >= v28)
          {
            v29 = a3[1];
          }

          else
          {
            v29 = (v7 + a4);
          }

          if (v29 >= v7)
          {
            if (v5 == v29)
            {
              goto LABEL_42;
            }

            v100 = i;
            v30 = *a3;
            v31 = *a3 + 40 * v5;
            v32 = v7 - v5;
            v94 = v29;
LABEL_33:
            v33 = v32;
            v96 = v31;
            while (1)
            {
              sub_22C3E8FB4(v31, &v106, &qword_27D9BAD70, qword_22C925AC0);
              v34 = v31 - 40;
              sub_22C3E8FB4(v31 - 40, v105, &qword_27D9BAD70, qword_22C925AC0);
              sub_22C36F998(v107, v104);
              sub_22C9013EC();
              if (swift_dynamicCast())
              {

                sub_22C36FF94(v104);
                sub_22C36DD28(v105, &qword_27D9BAD70, qword_22C925AC0);
                sub_22C36DD28(&v106, &qword_27D9BAD70, qword_22C925AC0);
              }

              else
              {
                v35 = v106;
                v36 = v105[0];
                sub_22C36FF94(v104);
                sub_22C36DD28(v105, &qword_27D9BAD70, qword_22C925AC0);
                sub_22C36DD28(&v106, &qword_27D9BAD70, qword_22C925AC0);
                if (v35 >= v36)
                {
                  goto LABEL_40;
                }
              }

              if (!v30)
              {
                break;
              }

              v37 = *(v31 + 32);
              v39 = *v31;
              v38 = *(v31 + 16);
              v40 = *(v31 - 24);
              *v31 = *v34;
              *(v31 + 16) = v40;
              *(v31 + 32) = *(v31 - 8);
              *v34 = v39;
              *(v31 - 24) = v38;
              v31 -= 40;
              *(v34 + 32) = v37;
              if (__CFADD__(v33++, 1))
              {
LABEL_40:
                v31 = v96 + 40;
                --v32;
                if (++v5 == v94)
                {
                  v5 = v94;
                  i = v100;
                  v7 = v93;
                  goto LABEL_42;
                }

                goto LABEL_33;
              }
            }

            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
            goto LABEL_136;
          }

LABEL_129:
          __break(1u);
LABEL_130:
          i = sub_22C56BFD8(i);
          goto LABEL_97;
        }
      }

LABEL_42:
      if (v5 < v7)
      {
        goto LABEL_125;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = *(i + 16);
        sub_22C590218();
        i = v83;
      }

      v42 = *(i + 16);
      v43 = v42 + 1;
      if (v42 >= *(i + 24) >> 1)
      {
        sub_22C590218();
        i = v84;
      }

      *(i + 16) = v43;
      v44 = i + 32;
      v45 = (i + 32 + 16 * v42);
      *v45 = v93;
      v45[1] = v5;
      v97 = *a1;
      if (!*a1)
      {
        goto LABEL_135;
      }

      if (v42)
      {
        break;
      }

LABEL_92:
      v4 = a3[1];
      if (v5 >= v4)
      {
        goto LABEL_95;
      }
    }

    v101 = i;
    while (1)
    {
      v46 = v43 - 1;
      v47 = (v44 + 16 * (v43 - 1));
      v48 = (i + 16 * v43);
      if (v43 >= 4)
      {
        break;
      }

      if (v43 == 3)
      {
        v49 = *(i + 32);
        v50 = *(i + 40);
        v59 = __OFSUB__(v50, v49);
        v51 = v50 - v49;
        v52 = v59;
LABEL_63:
        if (v52)
        {
          goto LABEL_112;
        }

        v64 = *v48;
        v63 = v48[1];
        v65 = __OFSUB__(v63, v64);
        v66 = v63 - v64;
        v67 = v65;
        if (v65)
        {
          goto LABEL_115;
        }

        v68 = v47[1];
        v69 = v68 - *v47;
        if (__OFSUB__(v68, *v47))
        {
          goto LABEL_118;
        }

        if (__OFADD__(v66, v69))
        {
          goto LABEL_120;
        }

        if (v66 + v69 >= v51)
        {
          if (v51 < v69)
          {
            v46 = v43 - 2;
          }

          goto LABEL_85;
        }

        goto LABEL_78;
      }

      if (v43 < 2)
      {
        goto LABEL_114;
      }

      v71 = *v48;
      v70 = v48[1];
      v59 = __OFSUB__(v70, v71);
      v66 = v70 - v71;
      v67 = v59;
LABEL_78:
      if (v67)
      {
        goto LABEL_117;
      }

      v73 = *v47;
      v72 = v47[1];
      v59 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v59)
      {
        goto LABEL_119;
      }

      if (v74 < v66)
      {
        goto LABEL_92;
      }

LABEL_85:
      if (v46 - 1 >= v43)
      {
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
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
        goto LABEL_129;
      }

      if (!*a3)
      {
        goto LABEL_132;
      }

      i = v44 + 16 * (v46 - 1);
      v78 = *i;
      v79 = v44 + 16 * v46;
      v80 = *(v79 + 8);
      sub_22C771FA8((*a3 + 40 * *i), (*a3 + 40 * *v79), *a3 + 40 * v80, v97);
      if (v103)
      {
        goto LABEL_105;
      }

      if (v80 < v78)
      {
        goto LABEL_107;
      }

      v81 = *(v101 + 16);
      if (v46 > v81)
      {
        goto LABEL_108;
      }

      *i = v78;
      *(i + 8) = v80;
      if (v46 >= v81)
      {
        goto LABEL_109;
      }

      v43 = v81 - 1;
      sub_22C56BFF0((v79 + 16), v81 - 1 - v46, (v44 + 16 * v46));
      i = v101;
      *(v101 + 16) = v81 - 1;
      if (v81 <= 2)
      {
        goto LABEL_92;
      }
    }

    v53 = v44 + 16 * v43;
    v54 = *(v53 - 64);
    v55 = *(v53 - 56);
    v59 = __OFSUB__(v55, v54);
    v56 = v55 - v54;
    if (v59)
    {
      goto LABEL_110;
    }

    v58 = *(v53 - 48);
    v57 = *(v53 - 40);
    v59 = __OFSUB__(v57, v58);
    v51 = v57 - v58;
    v52 = v59;
    if (v59)
    {
      goto LABEL_111;
    }

    v60 = v48[1];
    v61 = v60 - *v48;
    if (__OFSUB__(v60, *v48))
    {
      goto LABEL_113;
    }

    v59 = __OFADD__(v51, v61);
    v62 = v51 + v61;
    if (v59)
    {
      goto LABEL_116;
    }

    if (v62 >= v56)
    {
      v76 = *v47;
      v75 = v47[1];
      v59 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v59)
      {
        goto LABEL_124;
      }

      if (v51 < v77)
      {
        v46 = v43 - 2;
      }

      goto LABEL_85;
    }

    goto LABEL_63;
  }

  i = MEMORY[0x277D84F90];
LABEL_95:
  v5 = *a1;
  if (!*a1)
  {
LABEL_136:
    __break(1u);
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_130;
  }

LABEL_97:
  v102 = i;
  v85 = (i + 16);
  for (i = *(i + 16); i >= 2; *v85 = i)
  {
    if (!*a3)
    {
      goto LABEL_133;
    }

    v86 = (v102 + 16 * i);
    v87 = *v86;
    v88 = &v85[2 * i];
    v89 = *(v88 + 1);
    sub_22C771FA8((*a3 + 40 * *v86), (*a3 + 40 * *v88), *a3 + 40 * v89, v5);
    if (v103)
    {
      break;
    }

    if (v89 < v87)
    {
      goto LABEL_121;
    }

    if (i - 2 >= *v85)
    {
      goto LABEL_122;
    }

    *v86 = v87;
    v86[1] = v89;
    v90 = *v85 - i;
    if (*v85 < i)
    {
      goto LABEL_123;
    }

    i = *v85 - 1;
    sub_22C56BFF0(v88 + 16, v90, v88);
  }

LABEL_105:
}

uint64_t sub_22C771FA8(char *a1, char *a2, unint64_t a3, char *a4)
{
  __src = a4;
  v4 = a3;
  v5 = a2;
  v6 = a1;
  v7 = (a2 - a1) / 40;
  v8 = (a3 - a2) / 40;
  if (v7 < v8)
  {
    sub_22C38D04C(a1, (a2 - a1) / 40, a4);
    v9 = &__src[40 * v7];
    while (1)
    {
      if (__src >= v9 || v5 >= v4)
      {
        v5 = v6;
        goto LABEL_33;
      }

      sub_22C3E8FB4(v5, &v33, &qword_27D9BAD70, qword_22C925AC0);
      sub_22C3E8FB4(__src, v32, &qword_27D9BAD70, qword_22C925AC0);
      sub_22C36F998(v34, v31);
      sub_22C9013EC();
      if (swift_dynamicCast())
      {
        break;
      }

      v11 = v33;
      v12 = v32[0];
      sub_22C36FF94(v31);
      sub_22C36DD28(v32, &qword_27D9BAD70, qword_22C925AC0);
      sub_22C36DD28(&v33, &qword_27D9BAD70, qword_22C925AC0);
      if (v11 < v12)
      {
        goto LABEL_10;
      }

      v13 = __src;
      v14 = v6 == __src;
      __src += 40;
      if (!v14)
      {
        goto LABEL_11;
      }

LABEL_12:
      v6 += 40;
    }

    sub_22C36FF94(v31);
    sub_22C36DD28(v32, &qword_27D9BAD70, qword_22C925AC0);
    sub_22C36DD28(&v33, &qword_27D9BAD70, qword_22C925AC0);
LABEL_10:
    v13 = v5;
    v14 = v6 == v5;
    v5 += 40;
    if (v14)
    {
      goto LABEL_12;
    }

LABEL_11:
    v15 = *v13;
    v16 = *(v13 + 1);
    *(v6 + 4) = *(v13 + 4);
    *v6 = v15;
    *(v6 + 1) = v16;
    goto LABEL_12;
  }

  sub_22C38D04C(a2, (a3 - a2) / 40, a4);
  v17 = &__src[40 * v8];
LABEL_17:
  v18 = (v5 - 40);
  v4 -= 40;
  for (i = (v17 - 40); ; i -= 40)
  {
    v9 = (i + 40);
    if (i + 40 <= __src || v5 <= v6)
    {
      break;
    }

    sub_22C3E8FB4(i, &v33, &qword_27D9BAD70, qword_22C925AC0);
    v21 = v18;
    sub_22C3E8FB4(v18, v32, &qword_27D9BAD70, qword_22C925AC0);
    sub_22C36F998(v34, v31);
    sub_22C9013EC();
    if (swift_dynamicCast())
    {

      v22 = 1;
    }

    else
    {
      v22 = v33 < v32[0];
    }

    sub_22C36FF94(v31);
    sub_22C36DD28(v32, &qword_27D9BAD70, qword_22C925AC0);
    sub_22C36DD28(&v33, &qword_27D9BAD70, qword_22C925AC0);
    if (v22)
    {
      v17 = (i + 40);
      v14 = v4 + 40 == v5;
      v5 = v21;
      if (!v14)
      {
        v25 = *v21;
        v26 = *(v21 + 1);
        *(v4 + 32) = *(v21 + 4);
        *v4 = v25;
        *(v4 + 16) = v26;
        v5 = v21;
      }

      goto LABEL_17;
    }

    if (v9 != (v4 + 40))
    {
      v23 = *i;
      v24 = *(i + 16);
      *(v4 + 32) = *(i + 32);
      *v4 = v23;
      *(v4 + 16) = v24;
    }

    v4 -= 40;
    v18 = v21;
  }

LABEL_33:
  v27 = (v9 - __src) / 40;
  if (v5 != __src || v5 >= &__src[40 * v27])
  {
    memmove(v5, __src, 40 * v27);
  }

  return 1;
}

void sub_22C772330()
{
  v2 = v0[46];
  v11 = v0[45];
  v12 = v0[44];
  v13 = v0[41];
  v14 = v0[40];
  v10 = v0[37];
  v3 = v0[35];
  v9 = v0[34];
  v15 = v0[36];
  v16 = v0[33];
  v17 = v0[32];
  v18 = v0[31];
  v19 = v0[30];
  v20 = v0[27];
  v21 = v0[24];
  v22 = v0[23];
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[18];
  v7 = v0[14];
  *(v1 - 128) = v0[17];
  *(v1 - 120) = v7;
  v8 = v0[11];
}

void *sub_22C7723C4(uint64_t a1)
{
  v177 = a1;
  v179 = sub_22C90077C();
  v1 = sub_22C369824(v179);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v6);
  sub_22C36BA64();
  v158 = v7;
  sub_22C36BA0C();
  v157 = sub_22C90035C();
  v8 = sub_22C369824(v157);
  v156 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v155 = v13 - v12;
  sub_22C36BA0C();
  v14 = sub_22C9063DC();
  v15 = sub_22C369824(v14);
  v162 = v16;
  v163 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v19);
  sub_22C36BA64();
  v174 = v20;
  v21 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  v22 = sub_22C369914(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v173 = &v151 - v25;
  sub_22C36BA0C();
  v178 = sub_22C90046C();
  v26 = sub_22C369824(v178);
  v161 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v30);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v31);
  sub_22C36BA64();
  v160 = v32;
  sub_22C36BA0C();
  v33 = sub_22C901DDC();
  v34 = sub_22C369824(v33);
  v171 = v35;
  v172 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C369838();
  v169 = v39 - v38;
  sub_22C36BA0C();
  v40 = sub_22C90210C();
  v41 = sub_22C369824(v40);
  v167 = v42;
  v168 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22C369838();
  v166 = v46 - v45;
  v47 = sub_22C3A5908(&qword_27D9BD698, &qword_22C9187B0);
  v48 = sub_22C369914(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  sub_22C369ABC();
  v170 = v51 - v52;
  MEMORY[0x28223BE20](v53);
  sub_22C36BA64();
  v175 = v54;
  sub_22C36BA0C();
  v165 = sub_22C90634C();
  v55 = sub_22C369824(v165);
  v57 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v55);
  sub_22C369ABC();
  v62 = v60 - v61;
  MEMORY[0x28223BE20](v63);
  v65 = &v151 - v64;
  v66 = sub_22C90636C();
  v67 = sub_22C369824(v66);
  v69 = v68;
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v67);
  sub_22C369ABC();
  v74 = v72 - v73;
  MEMORY[0x28223BE20](v75);
  v77 = &v151 - v76;
  sub_22C90365C();
  sub_22C90365C();
  sub_22C90635C();
  sub_22C90631C();
  v164 = *(v69 + 8);
  v164(v74, v66);
  v78 = sub_22C90635C();
  v79 = sub_22C90AB6C();
  v80 = sub_22C90AC5C();
  v176 = v3;
  if (v80)
  {
    v81 = sub_22C36D240();
    *v81 = 0;
    v82 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v78, v79, v82, "DataDetectors.init", "", v81, 2u);
    sub_22C3699EC();
  }

  v83 = v165;
  (*(v57 + 16))(v62, v65, v165);
  v84 = sub_22C9063AC();
  sub_22C3856A0(v84);
  sub_22C37FF48();
  v85 = sub_22C90639C();
  (*(v57 + 8))(v65, v83);
  v164(v77, v66);
  v86 = v166;
  sub_22C9020FC();
  v88 = v171;
  v87 = v172;
  v89 = v169;
  (*(v171 + 104))(v169, *MEMORY[0x277D1C228], v172);
  v90 = v175;
  v91 = v177;
  sub_22C9020DC();
  (*(v88 + 8))(v89, v87);
  (*(v167 + 8))(v86, v168);
  v92 = v170;
  sub_22C4DD3C4(v90, v170);
  v93 = sub_22C902D7C();
  if (sub_22C370B74(v92, 1, v93) == 1)
  {
    sub_22C3770B0(v92, &qword_27D9BD698, &qword_22C9187B0);
    v94 = v173;
    sub_22C36C640(v173, 1, 1, v178);
    v95 = v179;
    v96 = v174;
  }

  else
  {
    v94 = v173;
    sub_22C902D5C();
    (*(*(v93 - 8) + 8))(v92, v93);
    v97 = v178;
    v98 = sub_22C370B74(v94, 1, v178);
    v95 = v179;
    v96 = v174;
    if (v98 != 1)
    {
      v174 = v85;
      (*(v161 + 32))(v160, v94, v97);
      strcpy(v180, "data_detectors");
      HIBYTE(v180[1]) = -18;
      v109 = v156;
      v110 = v95;
      v111 = v155;
      v112 = v157;
      (*(v156 + 104))(v155, *MEMORY[0x277CC91D8], v157);
      sub_22C3858B4();
      v113 = v159;
      sub_22C90043C();
      (*(v109 + 8))(v111, v112);
      v114 = sub_22C9003EC();
      v116 = v115;
      v117 = *(v176 + 16);
      v118 = v158;
      v117(v158, v91, v110);
      v119 = objc_allocWithZone(MEMORY[0x277D5DF18]);
      v120 = sub_22C7746B8(v114, v116, v118);
      if (v120)
      {
        v106 = v120;
        v121 = *(v161 + 8);
        v122 = v178;
        v121(v113, v178);
        v121(v160, v122);
        sub_22C3770B0(v175, &qword_27D9BD698, &qword_22C9187B0);
        v123 = v106;
        sub_22C773A5C();

        v107 = v176;
        v91 = v177;
        v95 = v179;
      }

      else
      {
        v124 = v154;
        sub_22C903F8C();
        v125 = v161;
        v126 = v152;
        (*(v161 + 16))(v152, v113, v178);
        v127 = v153;
        v91 = v177;
        v95 = v179;
        v117(v153, v177, v179);
        v128 = sub_22C9063CC();
        v129 = sub_22C90AADC();
        if (sub_22C36FBB4(v129))
        {
          v130 = swift_slowAlloc();
          v173 = swift_slowAlloc();
          v180[0] = v173;
          *v130 = 136315394;
          sub_22C7747A4(&qword_281435848, MEMORY[0x277CC9260]);
          v131 = v178;
          v132 = sub_22C90B47C();
          v134 = v133;
          v172 = *(v161 + 8);
          v172(v126, v131);
          v135 = sub_22C36F9F4(v132, v134, v180);

          *(v130 + 4) = v135;
          *(v130 + 12) = 2080;
          sub_22C7747A4(&qword_281435838, MEMORY[0x277CC9788]);
          v136 = v153;
          v137 = sub_22C90B47C();
          v139 = v138;
          v140 = v176;
          (*(v176 + 8))(v136, v179);
          v141 = sub_22C36F9F4(v137, v139, v180);

          *(v130 + 14) = v141;
          sub_22C3706C8();
          _os_log_impl(v142, v143, v144, v145, v146, 0x16u);
          swift_arrayDestroy();
          v107 = v140;
          sub_22C3699EC();
          sub_22C3699EC();

          (*(v162 + 8))(v154, v163);
          v147 = v172;
          v172(v159, v131);
          v148 = v131;
          v95 = v179;
          v147(v160, v148);
        }

        else
        {

          v107 = v176;
          (*(v176 + 8))(v127, v95);
          v149 = *(v125 + 8);
          v150 = v178;
          v149(v126, v178);
          (*(v162 + 8))(v124, v163);
          v149(v113, v150);
          v149(v160, v150);
        }

        sub_22C3770B0(v175, &qword_27D9BD698, &qword_22C9187B0);
        sub_22C773A5C();
        v106 = 0;
      }

      goto LABEL_9;
    }
  }

  sub_22C3770B0(v94, &qword_27D9BB138, &qword_22C90DB70);
  sub_22C903F8C();
  v99 = sub_22C9063CC();
  v100 = sub_22C90AADC();
  if (sub_22C36FBB4(v100))
  {
    *sub_22C36D240() = 0;
    sub_22C3706C8();
    _os_log_impl(v101, v102, v103, v104, v105, 2u);
    sub_22C3699EC();
  }

  (*(v162 + 8))(v96, v163);
  sub_22C3770B0(v90, &qword_27D9BD698, &qword_22C9187B0);
  sub_22C773A5C();
  v106 = 0;
  v107 = v176;
LABEL_9:

  (*(v107 + 8))(v91, v95);
  return v106;
}

uint64_t sub_22C7730EC(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BFF08, &qword_22C925B10);
  v3 = sub_22C369914(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v105 = &v104 - v6;
  v7 = sub_22C3A5908(&qword_27D9BFF10, qword_22C925B18);
  v8 = sub_22C369914(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v104 - v11;
  v13 = sub_22C9063DC();
  v107 = sub_22C369824(v13);
  v108 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v107);
  sub_22C369ABC();
  v19 = (v17 - v18);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v104 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v106 = &v104 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v104 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v104 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v104 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v104 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v104 - v38;
  sub_22C36F998(a1, v112);
  sub_22C9013AC();
  sub_22C373944();
  if (!swift_dynamicCast())
  {
    sub_22C9013CC();
    sub_22C373944();
    if (swift_dynamicCast())
    {
      if (MEMORY[0x2318AE890]())
      {
        v42 = sub_22C374FAC();
        sub_22C3856A0(v42);
        sub_22C7747FC();
        v43 = sub_22C90176C();
        goto LABEL_29;
      }

      sub_22C903F8C();
      v56 = sub_22C9063CC();
      v57 = sub_22C90AADC();
      if (os_log_type_enabled(v56, v57))
      {
        *sub_22C36D240() = 0;
        sub_22C37F09C(&dword_22C366000, v58, v59, "USO.Common.Time cannot be converted to SiriInference.DateTime.");
        sub_22C3699EC();
      }

      sub_22C36C328();
      v50 = v37;
      goto LABEL_22;
    }

    sub_22C90145C();
    sub_22C373944();
    if (swift_dynamicCast())
    {
      sub_22C77480C();
      if (!MEMORY[0x2318AE920]())
      {
        sub_22C903F8C();
        v44 = sub_22C9063CC();
        v45 = sub_22C90AADC();
        if (sub_22C37026C(v45))
        {
          v46 = sub_22C36D240();
          sub_22C36D944(v46);
          sub_22C376864(&dword_22C366000, v47, v48, "USO.Common.Time12HourClock cannot be converted to SiriInference.DateTime.");
          sub_22C3699EC();
        }

        sub_22C36C328();
        v50 = v34;
        goto LABEL_22;
      }
    }

    else
    {
      sub_22C90147C();
      sub_22C373944();
      if (!swift_dynamicCast())
      {
        sub_22C9013EC();
        sub_22C373944();
        if (swift_dynamicCast())
        {
          v41 = sub_22C9013DC();
          goto LABEL_28;
        }

        sub_22C90143C();
        sub_22C373944();
        if (swift_dynamicCast())
        {
          sub_22C77480C();
          if (sub_22C90142C())
          {
            v60 = sub_22C374FAC();
            sub_22C3856A0(v60);
            sub_22C7747FC();
            v41 = sub_22C9017EC();
            goto LABEL_28;
          }

          sub_22C903F8C();
          v73 = sub_22C9063CC();
          v74 = sub_22C90AADC();
          if (sub_22C37026C(v74))
          {
            v75 = sub_22C36D240();
            sub_22C36D944(v75);
            sub_22C376864(&dword_22C366000, v76, v77, "USO.Common.DateTimeRange cannot be converted to SiriInference.DateTime.");
            sub_22C3699EC();
          }

          sub_22C36C328();
          v50 = v28;
        }

        else
        {
          sub_22C9014AC();
          if (swift_dynamicCast())
          {
            if (sub_22C90149C())
            {
              v67 = sub_22C90148C();

              if (v67)
              {

                sub_22C90137C();

                sub_22C90141C();

                if (v111[3])
                {
                  if (swift_dynamicCast())
                  {
                    v43 = v110;
                    if (sub_22C90142C())
                    {
                      v68 = sub_22C90177C();
                      sub_22C36C640(v12, 1, 1, v68);
                      v69 = sub_22C90180C();
                      sub_22C36C640(v105, 1, 1, v69);
                      v70 = sub_22C90184C();
                      sub_22C3856A0(v70);
                      sub_22C37FF48();

                      sub_22C90174C();
                      sub_22C37FF48();

                      goto LABEL_29;
                    }
                  }
                }

                else
                {

                  sub_22C3770B0(v111, &qword_27D9BD5D8, &qword_22C918510);
                }
              }
            }

            v96 = v106;
            sub_22C903F8C();
            v97 = sub_22C9063CC();
            v98 = sub_22C90AADC();
            if (sub_22C36FBB4(v98))
            {
              *sub_22C36D240() = 0;
              sub_22C3706C8();
              _os_log_impl(v99, v100, v101, v102, v103, 2u);
              sub_22C3699EC();
            }

            else
            {
            }

            sub_22C36C328();
            v50 = v96;
          }

          else
          {
            sub_22C90140C();
            sub_22C373944();
            if (swift_dynamicCast())
            {
              if (sub_22C9013FC())
              {
                v71 = sub_22C9017CC();
                sub_22C3856A0(v71);
                sub_22C37FF48();

                sub_22C9017AC();
                v72 = sub_22C374FAC();
                sub_22C3856A0(v72);
                sub_22C7747FC();
                v43 = sub_22C9017EC();

                goto LABEL_29;
              }

              sub_22C903F8C();
              v91 = sub_22C9063CC();
              v92 = sub_22C90AADC();
              if (sub_22C37026C(v92))
              {
                v93 = sub_22C36D240();
                sub_22C36D944(v93);
                sub_22C376864(&dword_22C366000, v94, v95, "USO.Common.Duration cannot be converted to SiriInference.DateTime.");
                sub_22C3699EC();
              }

              sub_22C36C328();
              v50 = v23;
            }

            else
            {
              sub_22C903F8C();
              sub_22C36F998(a1, v111);
              v78 = sub_22C9063CC();
              v79 = sub_22C90AADC();
              if (sub_22C36FBB4(v79))
              {
                v80 = swift_slowAlloc();
                v81 = swift_slowAlloc();
                v110 = v81;
                *v80 = 136315138;
                sub_22C36F998(v111, v109);
                v82 = sub_22C90A1AC();
                v84 = v83;
                sub_22C36FF94(v111);
                v85 = sub_22C36F9F4(v82, v84, &v110);

                *(v80 + 4) = v85;
                sub_22C3706C8();
                _os_log_impl(v86, v87, v88, v89, v90, 0xCu);
                sub_22C36FF94(v81);
                sub_22C3699EC();
                sub_22C3699EC();
              }

              else
              {

                sub_22C36FF94(v111);
              }

              sub_22C36C328();
              v50 = v19;
            }
          }
        }

        goto LABEL_22;
      }

      sub_22C77480C();
      if (!MEMORY[0x2318AE940]())
      {
        sub_22C903F8C();
        v62 = sub_22C9063CC();
        v63 = sub_22C90AADC();
        if (sub_22C37026C(v63))
        {
          v64 = sub_22C36D240();
          sub_22C36D944(v64);
          sub_22C376864(&dword_22C366000, v65, v66, "USO.Common.Time24HourClock cannot be converted to SiriInference.DateTime.");
          sub_22C3699EC();
        }

        sub_22C36C328();
        v50 = v31;
        goto LABEL_22;
      }
    }

    v55 = sub_22C374FAC();
    sub_22C3856A0(v55);
    sub_22C7747FC();
    v41 = sub_22C90176C();
    goto LABEL_28;
  }

  sub_22C77480C();
  if (sub_22C90139C())
  {
    v40 = sub_22C374FAC();
    sub_22C3856A0(v40);
    sub_22C7747FC();
    v41 = sub_22C90175C();
LABEL_28:
    v43 = v41;
LABEL_29:

    goto LABEL_30;
  }

  sub_22C903F8C();
  v51 = sub_22C9063CC();
  v52 = sub_22C90AADC();
  if (os_log_type_enabled(v51, v52))
  {
    *sub_22C36D240() = 0;
    sub_22C37F09C(&dword_22C366000, v53, v54, "USO.Common.Date cannot be converted to SiriInference.DateTime.");
    sub_22C3699EC();
  }

  sub_22C36C328();
  v50 = v39;
LABEL_22:
  v49(v50, v107);
  v43 = 0;
LABEL_30:
  sub_22C36FF94(v112);
  return v43;
}

uint64_t sub_22C773A5C()
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
    _os_signpost_emit_with_name_impl(&dword_22C366000, v13, v30, v24, "DataDetectors.init", v31, v19, 0xCu);
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

void sub_22C773E00(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_22C9063DC();
  v7 = sub_22C369824(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v14 = v13 - v12;
  v15 = sub_22C90A0EC();
  v16 = [a3 matchSpansForUtterance_];

  v17 = sub_22C774760();
  v18 = sub_22C90A5EC();

  sub_22C903F8C();

  v19 = sub_22C9063CC();
  v20 = sub_22C90AABC();

  if (os_log_type_enabled(v19, v20))
  {
    v44 = v9;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v47[0] = v22;
    *v21 = 136315138;
    v23 = MEMORY[0x2318B7AD0](v18, v17);
    v43 = v6;
    v25 = sub_22C36F9F4(v23, v24, v47);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_22C366000, v19, v20, "Getting all the spans %s", v21, 0xCu);
    sub_22C36FF94(v22);
    sub_22C3699EC();
    sub_22C3699EC();

    (*(v44 + 8))(v14, v43);
  }

  else
  {

    (*(v9 + 8))(v14, v6);
  }

  *&v47[0] = MEMORY[0x277D84F90];
  v26 = sub_22C36E2B8(v18);
  for (i = 0; v26 != i; ++i)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x2318B8460](i, v18);
    }

    else
    {
      if (i >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v28 = *(v18 + 8 * i + 32);
    }

    v29 = v28;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      return;
    }

    [v28 range];
    if (v30 == sub_22C90A30C() || (v18 >> 62 ? (v31 = sub_22C90B1BC()) : (v31 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10)), v31 == 1))
    {
      sub_22C90AFEC();
      v32 = *(*&v47[0] + 16);
      sub_22C90B02C();
      sub_22C90B03C();
      sub_22C90AFFC();
    }

    else
    {
    }
  }

  v33 = *&v47[0];
  v34 = sub_22C36E2B8(*&v47[0]);
  v35 = 0;
  v36 = MEMORY[0x277D84F90];
  while (v34 != v35)
  {
    if ((v33 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x2318B8460](v35, v33);
    }

    else
    {
      if (v35 >= *(v33 + 16))
      {
        goto LABEL_38;
      }

      v37 = *(v33 + 8 * v35 + 32);
    }

    v38 = v37;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_37;
    }

    v48 = v37;
    sub_22C774264(&v48, a1, a2, &v45);

    if (v46)
    {
      sub_22C456E34(&v45, v47);
      sub_22C456E34(v47, &v45);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = *(v36 + 16);
        sub_22C59578C();
        v36 = v41;
      }

      v39 = *(v36 + 16);
      if (v39 >= *(v36 + 24) >> 1)
      {
        sub_22C59578C();
        v36 = v42;
      }

      *(v36 + 16) = v39 + 1;
      sub_22C456E34(&v45, (v36 + 32 * v39 + 32));
    }

    else
    {
      sub_22C3770B0(&v45, &qword_27D9BD5D8, &qword_22C918510);
    }

    ++v35;
  }
}

_OWORD *sub_22C774264@<X0>(void **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v9 = sub_22C9063DC();
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = *(v46 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v44 - v14;
  v16 = *a1;
  v17 = [v16 usoGraph];
  v18 = sub_22C90AB4C();

  if (v18)
  {
    sub_22C903F8C();

    v19 = sub_22C9063CC();
    v20 = sub_22C90AABC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v45 = v4;
      v22 = v21;
      v23 = swift_slowAlloc();
      v44 = a4;
      v24 = v23;
      *&v48 = v23;
      *v22 = 136315394;
      *(v22 + 4) = sub_22C36F9F4(a2, a3, &v48);
      *(v22 + 12) = 2080;
      v50 = v18;
      sub_22C9014BC();
      sub_22C7747A4(&qword_27D9BFF20, MEMORY[0x277D5F428]);
      v25 = sub_22C90B47C();
      v27 = sub_22C36F9F4(v25, v26, &v48);

      *(v22 + 14) = v27;
      _os_log_impl(&dword_22C366000, v19, v20, "Converted %s into USO Graph: %s", v22, 0x16u);
      swift_arrayDestroy();
      v28 = v24;
      a4 = v44;
      MEMORY[0x2318B9880](v28, -1, -1);
      MEMORY[0x2318B9880](v22, -1, -1);
    }

    (*(v46 + 8))(v15, v47);
    if (sub_22C90138C())
    {
      sub_22C90141C();

      if (v49)
      {
        return sub_22C456E34(&v48, a4);
      }

      result = sub_22C3770B0(&v48, &qword_27D9BD5D8, &qword_22C918510);
    }

    else
    {
    }
  }

  else
  {
    sub_22C903F8C();
    v30 = v16;
    v31 = sub_22C9063CC();
    v32 = sub_22C90AADC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v45 = v4;
      v34 = v33;
      v35 = swift_slowAlloc();
      v44 = a4;
      v36 = v35;
      *&v48 = v35;
      *v34 = 136315138;
      v37 = v30;
      v38 = [v37 description];
      v39 = sub_22C90A11C();
      v41 = v40;

      v42 = sub_22C36F9F4(v39, v41, &v48);

      *(v34 + 4) = v42;
      _os_log_impl(&dword_22C366000, v31, v32, "Not able to convert span = %s into USO Graph.", v34, 0xCu);
      sub_22C36FF94(v36);
      v43 = v36;
      a4 = v44;
      MEMORY[0x2318B9880](v43, -1, -1);
      MEMORY[0x2318B9880](v34, -1, -1);
    }

    result = (*(v46 + 8))(v13, v47);
  }

  *a4 = 0u;
  a4[1] = 0u;
  return result;
}

id sub_22C7746B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_22C90A0EC();

  v7 = sub_22C90071C();
  v8 = [v4 initLoadFromDataDetectorsDirectoryPath:v6 forLocale:v7];

  v9 = sub_22C90077C();
  (*(*(v9 - 8) + 8))(a3, v9);
  return v8;
}

unint64_t sub_22C774760()
{
  result = qword_27D9BFF18;
  if (!qword_27D9BFF18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9BFF18);
  }

  return result;
}

uint64_t sub_22C7747A4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22C774818(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v39 = a3;
  v6 = sub_22C9063DC();
  v7 = sub_22C369824(v6);
  v40 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C3A5908(&qword_27D9BFF28, &qword_22C925B78);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v37 - v15;
  v17 = sub_22C3A5908(&qword_27D9BD898, &unk_22C919A90);
  v18 = sub_22C369824(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v37 - v23;

  sub_22C774BFC(v16);
  if (!v3)
  {
    v37 = a1;
    v38 = v6;
    if (sub_22C370B74(v16, 1, v17) == 1)
    {
      sub_22C3770B0(v16, &qword_27D9BFF28, &qword_22C925B78);
      sub_22C903F8C();

      v25 = sub_22C9063CC();
      v26 = sub_22C90AADC();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v41 = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_22C36F9F4(v37, a2, &v41);
        _os_log_impl(&dword_22C366000, v25, v26, "cannot resolve duration from input %s", v27, 0xCu);
        sub_22C36FF94(v28);
        MEMORY[0x2318B9880](v28, -1, -1);
        MEMORY[0x2318B9880](v27, -1, -1);
      }

      (*(v40 + 8))(v12, v38);
      type metadata accessor for InterpreterError();
      sub_22C5F8844();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      v29 = *(v20 + 32);
      v29(v24, v16, v17);
      v30 = sub_22C90931C();
      v31 = swift_allocBox();
      v33 = v32;
      v29(v32, v24, v17);
      (*(*(v30 - 8) + 104))(v33, *MEMORY[0x277D72940], v30);
      v34 = v39;
      *v39 = v31;
      v35 = *MEMORY[0x277D72A58];
      v36 = sub_22C9093BC();
      (*(*(v36 - 8) + 104))(v34, v35, v36);
    }
  }
}

void sub_22C774BFC(uint64_t a1@<X8>)
{
  v161 = a1;
  v1 = sub_22C3A5908(&qword_27D9BAD80, &qword_22C90D628);
  v2 = *(v1 - 8);
  v175 = v1;
  v176 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v162 = &v155 - v4;
  v184 = sub_22C3A5908(&qword_27D9BB690, &unk_22C90FA70);
  v5 = *(v184 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v184);
  v174 = &v155 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v159 = &v155 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v156 = &v155 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v157 = &v155 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v158 = &v155 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v160 = &v155 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v163 = &v155 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v168 = &v155 - v22;
  MEMORY[0x28223BE20](v21);
  v177 = &v155 - v23;
  v24 = sub_22C3A5908(&qword_27D9BFF30, &qword_22C925B80);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v155 - v26;
  v28 = sub_22C90862C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v173 = &v155 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v170 = (&v155 - v34);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v155 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v155 - v38;
  v164 = sub_22C90863C();
  v165 = *(v164 - 8);
  v40 = *(v165 + 64);
  MEMORY[0x28223BE20](v164);
  v182 = &v155 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90864C();
  v42 = (v29 + 16);
  v180 = (v29 + 88);
  v181 = (v29 + 32);
  v187 = (v29 + 8);
  v178 = (v29 + 96);
  v185 = v5;
  v171 = v5 + 32;
  v186 = MEMORY[0x277D84F90];
  v43 = 1;
  v179 = *MEMORY[0x277D1E598];
  v172 = *MEMORY[0x277D1E590];
  v169 = *MEMORY[0x277D1E5A8];
  v167 = *MEMORY[0x277D1E5A0];
  v44 = 1.0;
  for (i = (v29 + 16); ; v42 = i)
  {
    sub_22C90861C();
    if (sub_22C370B74(v27, 1, v28) == 1)
    {
      break;
    }

    (*v181)(v39, v27, v28);
    v45 = *v42;
    (*v42)(v37, v39, v28);
    v46 = (*v180)(v37, v28);
    if (v46 == v179)
    {
      v47 = v173;
      v45(v173, v37, v28);
      (*v178)(v47, v28);
      v49 = *v47;
      v48 = v47[1];
      v50 = *v47 == 0x7372756F68 && v48 == 0xE500000000000000;
      if (v50 || (v51 = *v47, v52 = v47[1], (sub_22C90B4FC() & 1) != 0))
      {

        if (v43)
        {
          goto LABEL_95;
        }

        v53 = [objc_opt_self() hours];
        sub_22C36E278(0, &qword_27D9BFF48, 0x277CCADD0);
        sub_22C8FFFAC();
        v54 = v186;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = *(v54 + 16);
          sub_22C595870();
          v54 = v99;
        }

        v56 = *(v54 + 16);
        v55 = *(v54 + 24);
        v186 = v54;
        if (v56 >= v55 >> 1)
        {
          sub_22C595870();
          v186 = v100;
        }

        v57 = *v187;
        (*v187)(v39, v28);
        v59 = v185;
        v58 = v186;
        *(v186 + 16) = v56 + 1;
        (*(v59 + 32))(v58 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v56, v177, v184);
      }

      else
      {
        v63 = v49 == 0x736574756E696DLL && v48 == 0xE700000000000000;
        if (v63 || (sub_22C90B4FC() & 1) != 0)
        {

          if (v43)
          {
            goto LABEL_95;
          }

          v64 = [objc_opt_self() minutes];
          sub_22C36E278(0, &qword_27D9BFF48, 0x277CCADD0);
          sub_22C8FFFAC();
          v65 = v186;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v109 = *(v65 + 16);
            sub_22C595870();
            v65 = v110;
          }

          v67 = *(v65 + 16);
          v66 = *(v65 + 24);
          v186 = v65;
          if (v67 >= v66 >> 1)
          {
            sub_22C595870();
            v186 = v111;
          }

          v57 = *v187;
          (*v187)(v39, v28);
          v69 = v185;
          v68 = v186;
          *(v186 + 16) = v67 + 1;
          (*(v69 + 32))(v68 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v67, v168, v184);
        }

        else
        {
          v70 = v49 == 0x73646E6F636573 && v48 == 0xE700000000000000;
          if (v70 || (sub_22C90B4FC() & 1) != 0)
          {

            if (v43)
            {
              goto LABEL_95;
            }

            v71 = [objc_opt_self() seconds];
            sub_22C36E278(0, &qword_27D9BFF48, 0x277CCADD0);
            sub_22C8FFFAC();
            v72 = v186;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v112 = *(v72 + 16);
              sub_22C595870();
              v72 = v113;
            }

            v74 = *(v72 + 16);
            v73 = *(v72 + 24);
            v186 = v72;
            if (v74 >= v73 >> 1)
            {
              sub_22C595870();
              v186 = v114;
            }

            v57 = *v187;
            (*v187)(v39, v28);
            v76 = v185;
            v75 = v186;
            *(v186 + 16) = v74 + 1;
            (*(v76 + 32))(v75 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v74, v163, v184);
          }

          else
          {
            v77 = v49 == 0x636573696C6C696DLL && v48 == 0xEC00000073646E6FLL;
            if (v77 || (sub_22C90B4FC() & 1) != 0)
            {

              if (v43)
              {
                goto LABEL_95;
              }

              v78 = [objc_opt_self() milliseconds];
              sub_22C36E278(0, &qword_27D9BFF48, 0x277CCADD0);
              sub_22C8FFFAC();
              v79 = v186;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v115 = *(v79 + 16);
                sub_22C595870();
                v79 = v116;
              }

              v81 = *(v79 + 16);
              v80 = *(v79 + 24);
              v186 = v79;
              if (v81 >= v80 >> 1)
              {
                sub_22C595870();
                v186 = v117;
              }

              v57 = *v187;
              (*v187)(v39, v28);
              v83 = v185;
              v82 = v186;
              *(v186 + 16) = v81 + 1;
              (*(v83 + 32))(v82 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v81, v160, v184);
            }

            else
            {
              v84 = v49 == 0x6365736F7263696DLL && v48 == 0xEC00000073646E6FLL;
              if (v84 || (sub_22C90B4FC() & 1) != 0)
              {

                if (v43)
                {
                  goto LABEL_95;
                }

                v85 = [objc_opt_self() microseconds];
                sub_22C36E278(0, &qword_27D9BFF48, 0x277CCADD0);
                sub_22C8FFFAC();
                v86 = v186;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v118 = *(v86 + 16);
                  sub_22C595870();
                  v86 = v119;
                }

                v88 = *(v86 + 16);
                v87 = *(v86 + 24);
                v186 = v86;
                if (v88 >= v87 >> 1)
                {
                  sub_22C595870();
                  v186 = v120;
                }

                v57 = *v187;
                (*v187)(v39, v28);
                v90 = v185;
                v89 = v186;
                *(v186 + 16) = v88 + 1;
                (*(v90 + 32))(v89 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v88, v158, v184);
              }

              else
              {
                v91 = v49 == 0x6F6365736F6E616ELL && v48 == 0xEB0000000073646ELL;
                if (v91 || (sub_22C90B4FC() & 1) != 0)
                {

                  if (v43)
                  {
                    goto LABEL_95;
                  }

                  v92 = [objc_opt_self() nanoseconds];
                  sub_22C36E278(0, &qword_27D9BFF48, 0x277CCADD0);
                  sub_22C8FFFAC();
                  v93 = v186;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v121 = *(v93 + 16);
                    sub_22C595870();
                    v93 = v122;
                  }

                  v95 = *(v93 + 16);
                  v94 = *(v93 + 24);
                  v186 = v93;
                  if (v95 >= v94 >> 1)
                  {
                    sub_22C595870();
                    v186 = v123;
                  }

                  v57 = *v187;
                  (*v187)(v39, v28);
                  v97 = v185;
                  v96 = v186;
                  *(v186 + 16) = v95 + 1;
                  (*(v97 + 32))(v96 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v95, v157, v184);
                }

                else
                {
                  if (v49 == 0x6F6365736F636970 && v48 == 0xEB0000000073646ELL)
                  {
                  }

                  else
                  {
                    v102 = sub_22C90B4FC();

                    if ((v102 & 1) == 0)
                    {
                      goto LABEL_95;
                    }
                  }

                  if (v43)
                  {
LABEL_95:
                    v130 = *v187;
                    (*v187)(v39, v28);
                    (*(v165 + 8))(v182, v164);
                    v130(v37, v28);
                    v131 = 1;
LABEL_96:
                    v132 = v161;
                    goto LABEL_113;
                  }

                  v103 = [objc_opt_self() picoseconds];
                  sub_22C36E278(0, &qword_27D9BFF48, 0x277CCADD0);
                  sub_22C8FFFAC();
                  v104 = v186;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v124 = *(v104 + 16);
                    sub_22C595870();
                    v104 = v125;
                  }

                  v106 = *(v104 + 16);
                  v105 = *(v104 + 24);
                  v186 = v104;
                  if (v106 >= v105 >> 1)
                  {
                    sub_22C595870();
                    v186 = v126;
                  }

                  v57 = *v187;
                  (*v187)(v39, v28);
                  v108 = v185;
                  v107 = v186;
                  *(v186 + 16) = v106 + 1;
                  (*(v108 + 32))(v107 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v106, v156, v184);
                }
              }
            }
          }
        }
      }

      v43 = 1;
    }

    else
    {
      if (v46 == v172)
      {
        v57 = *v187;
        (*v187)(v39, v28);
        v61 = v170;
        v45(v170, v37, v28);
        (*v178)(v61, v28);
        v43 = 0;
        v60.n128_f64[0] = *v61;
LABEL_19:
        v44 = 1.0;
        goto LABEL_35;
      }

      if (v46 == v169)
      {
        v57 = *v187;
        (*v187)(v39, v28);
        v62 = v170;
        v45(v170, v37, v28);
        (*v178)(v62, v28);
        v43 = 0;
        v60.n128_u64[0] = *v62;
        goto LABEL_19;
      }

      if (v46 != v167)
      {
        goto LABEL_95;
      }

      v57 = *v187;
      (*v187)(v39, v28);
      v44 = -v44;
    }

LABEL_35:
    (v57)(v37, v28, v60);
  }

  sub_22C3770B0(v27, &qword_27D9BFF30, &qword_22C925B80);
  if (v43)
  {
    v127 = v166;
    v128 = v186;
    v129 = v162;
  }

  else
  {
    v128 = v186;
    v127 = v166;
    v129 = v162;
    if (!*(v186 + 16))
    {
      v133 = [objc_opt_self() seconds];
      sub_22C36E278(0, &qword_27D9BFF48, 0x277CCADD0);
      v134 = v159;
      sub_22C8FFFAC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v152 = *(v128 + 16);
        sub_22C595870();
        v128 = v153;
      }

      v135 = v128;
      v136 = *(v128 + 16);
      v137 = v135;
      if (v136 >= *(v135 + 24) >> 1)
      {
        sub_22C595870();
        v137 = v154;
      }

      *(v137 + 16) = v136 + 1;
      v138 = v137 + ((*(v185 + 80) + 32) & ~*(v185 + 80)) + *(v185 + 72) * v136;
      v128 = v137;
      (*(v185 + 32))(v138, v134, v184);
    }
  }

  v139 = *(v128 + 16);
  v140 = MEMORY[0x277D84F90];
  v186 = v128;
  if (v139)
  {
    v188 = MEMORY[0x277D84F90];
    sub_22C3B7BD0(0, v139, 0);
    v187 = *(v185 + 16);
    v140 = v188;
    v141 = v128 + ((*(v185 + 80) + 32) & ~*(v185 + 80));
    i = *(v185 + 72);
    v185 += 16;
    v142 = (v185 - 8);
    do
    {
      v143 = v174;
      v144 = v184;
      (v187)(v174, v141, v184);
      sub_22C8FFFBC();
      sub_22C8FFF9C();
      sub_22C36E278(0, &qword_27D9BFF38, 0x277CCA990);
      sub_22C8FFFAC();
      (*v142)(v143, v144);
      v188 = v140;
      v145 = v129;
      v147 = *(v140 + 16);
      v146 = *(v140 + 24);
      if (v147 >= v146 >> 1)
      {
        sub_22C3B7BD0(v146 > 1, v147 + 1, 1);
        v140 = v188;
      }

      *(v140 + 16) = v147 + 1;
      (*(v176 + 32))(v140 + ((*(v176 + 80) + 32) & ~*(v176 + 80)) + *(v176 + 72) * v147, v145, v175);
      v141 += i;
      --v139;
      v129 = v145;
    }

    while (v139);
    v127 = v166;
  }

  v148 = [objc_opt_self() picoseconds];
  sub_22C776C84(v140, v148);
  if (v127)
  {
    (*(v165 + 8))(v182, v164);

    return;
  }

  v150 = v149;

  if (!v150)
  {
    (*(v165 + 8))(v182, v164);
    v131 = 1;
    goto LABEL_96;
  }

  sub_22C36E278(0, &qword_27D9BFF40, 0x277CCAD98);
  v132 = v161;
  sub_22C8FFFAC();
  (*(v165 + 8))(v182, v164);
  v131 = 0;
LABEL_113:

  v151 = sub_22C3A5908(&qword_27D9BD898, &unk_22C919A90);
  sub_22C36C640(v132, v131, 1, v151);
}

uint64_t sub_22C776074@<X0>(uint64_t *a1@<X8>)
{
  v122 = a1;
  v1 = type metadata accessor for EnumResolver();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C3698E4();
  v125 = v3;
  v5 = MEMORY[0x28223BE20](v4);
  v123 = &v114 - v6;
  MEMORY[0x28223BE20](v5);
  v121 = &v114 - v7;
  v8 = sub_22C9063DC();
  v9 = sub_22C369824(v8);
  v131 = v10;
  v132 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C3698E4();
  v130 = v13;
  MEMORY[0x28223BE20](v14);
  v124 = &v114 - v15;
  v16 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v120 = &v114 - v18;
  v19 = sub_22C90952C();
  v20 = sub_22C369824(v19);
  v117 = v21;
  v118 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C369838();
  v119 = v25 - v24;
  v26 = sub_22C90947C();
  v27 = sub_22C369824(v26);
  v128 = v28;
  v129 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22C369838();
  v33 = v32 - v31;
  v134 = sub_22C90077C();
  v34 = sub_22C369824(v134);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C369838();
  v41 = v40 - v39;
  v133 = sub_22C908A8C();
  v42 = sub_22C369824(v133);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22C369838();
  v49 = v48 - v47;
  v50 = sub_22C90998C();
  v51 = sub_22C369824(v50);
  v126 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22C369838();
  v57 = v56 - v55;
  v58 = v1;
  v59 = *(v1 + 24);
  v60 = sub_22C908B2C();
  MEMORY[0x2318B6010](v60);
  v61 = v135;
  v127 = v33;
  sub_22C908B1C();
  if (v61)
  {
    (*(v36 + 8))(v41, v134);
    return (*(v44 + 8))(v49, v133);
  }

  else
  {
    v135 = 0;
    v63 = v130;
    v115 = v57;
    v116 = v50;
    v114 = v58;
    (*(v36 + 8))(v41, v134);
    (*(v44 + 8))(v49, v133);
    v65 = v127;
    v64 = v128;
    v66 = v129;
    if ((*(v128 + 88))(v127, v129) == *MEMORY[0x277D72B48])
    {
      (*(v64 + 96))(v65, v66);
      v67 = v126;
      v68 = v115;
      v69 = v116;
      v70 = (*(v126 + 32))(v115, v65, v116);
      v71 = MEMORY[0x2318B6E50](v70);
      MEMORY[0x28223BE20](v71);
      v72 = v135;
      v73 = v136;
      *(&v114 - 2) = v136;
      v74 = sub_22C5EC6EC(sub_22C776B94, (&v114 - 4), v71);
      v135 = v72;

      v76 = v131;
      v75 = v132;
      if (v74)
      {
        sub_22C9090BC();
        v77 = swift_allocBox();
        (*(v117 + 16))(v119, v73, v118);
        v78 = (v73 + *(v114 + 20));
        v79 = *v78;
        v80 = v78[1];
        v81 = sub_22C90993C();
        sub_22C36C640(v120, 1, 1, v81);

        sub_22C90909C();
        (*(v67 + 8))(v68, v69);
        v82 = v122;
        *v122 = v77;
        v83 = *MEMORY[0x277D729E8];
        v84 = sub_22C9093BC();
        return (*(*(v84 - 8) + 104))(v82, v83, v84);
      }

      else
      {
        v94 = v124;
        sub_22C903F8C();
        v95 = v121;
        sub_22C776A4C(v73, v121);
        v96 = v123;
        sub_22C776A4C(v73, v123);
        v97 = sub_22C9063CC();
        v98 = sub_22C90AADC();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v137 = swift_slowAlloc();
          *v99 = 136315394;
          sub_22C90951C();
          v100 = sub_22C36A024();
          sub_22C776AB0(v100);
          sub_22C776C68();
          sub_22C36A024();

          *(v99 + 4) = v95;
          *(v99 + 12) = 2080;
          v101 = v114;
          v102 = (v96 + *(v114 + 20));
          v103 = *v102;
          v104 = v102[1];

          sub_22C776AB0(v96);
          sub_22C776C68();
          sub_22C36A024();
          v105 = v101;
          v67 = v126;

          *(v99 + 14) = v103;
          _os_log_impl(&dword_22C366000, v97, v98, "AppEnum case not found: %s.%s", v99, 0x16u);
          swift_arrayDestroy();
          v73 = v136;
          sub_22C3699EC();
          sub_22C3699EC();

          (*(v76 + 8))(v124, v132);
        }

        else
        {

          sub_22C776AB0(v96);
          sub_22C776AB0(v95);
          (*(v76 + 8))(v94, v75);
          v105 = v114;
        }

        type metadata accessor for InterpreterError();
        sub_22C5F8844();
        sub_22C370620();
        v107 = v106;
        v108 = sub_22C90951C();
        v109 = (v73 + *(v105 + 20));
        v110 = *v109;
        v111 = v109[1];
        *v107 = v108;
        v107[1] = v112;
        v107[2] = v110;
        v107[3] = v111;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v113 = *(v67 + 8);

        return v113(v115, v116);
      }
    }

    else
    {
      (*(v64 + 8))(v65, v66);
      sub_22C903F8C();
      v85 = v125;
      sub_22C776A4C(v136, v125);
      v86 = sub_22C9063CC();
      v87 = sub_22C90AADC();
      v88 = os_log_type_enabled(v86, v87);
      v90 = v131;
      v89 = v132;
      if (v88)
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v137 = v92;
        *v91 = 136315138;
        sub_22C9094FC();
        v93 = sub_22C36A024();
        sub_22C776AB0(v93);
        sub_22C776C68();
        sub_22C36A024();

        *(v91 + 4) = v85;
        _os_log_impl(&dword_22C366000, v86, v87, "type is not a valid AppEnum: %s", v91, 0xCu);
        sub_22C36FF94(v92);
        sub_22C3699EC();
        sub_22C3699EC();
      }

      else
      {

        sub_22C776AB0(v85);
      }

      (*(v90 + 8))(v63, v89);
      type metadata accessor for InterpreterError();
      sub_22C5F8844();
      sub_22C370620();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }
}

uint64_t type metadata accessor for EnumResolver()
{
  result = qword_27D9BFF50;
  if (!qword_27D9BFF50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C776A4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnumResolver();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C776AB0(uint64_t a1)
{
  v2 = type metadata accessor for EnumResolver();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C776B0C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C909A2C();
  v5 = v4;
  v6 = (a2 + *(type metadata accessor for EnumResolver() + 20));
  if (v3 == *v6 && v5 == v6[1])
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22C90B4FC();
  }

  return v8 & 1;
}

uint64_t sub_22C776BDC()
{
  result = sub_22C90952C();
  if (v1 <= 0x3F)
  {
    result = sub_22C908AEC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C776C68()
{

  return sub_22C36F9F4(v0, v1, (v2 - 72));
}

uint64_t sub_22C776C84(uint64_t a1, uint64_t a2)
{
  v86 = a2;
  v73 = sub_22C3A5908(&qword_27D9BAD80, &qword_22C90D628);
  v4 = *(v73 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v73);
  sub_22C3698E4();
  v90 = v6;
  sub_22C369930();
  MEMORY[0x28223BE20](v7);
  v85 = &v67 - v8;
  sub_22C369930();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v67 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v67 - v13;
  v15 = sub_22C3A5908(&qword_27D9BFF60, &unk_22C927B40);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C3698E4();
  v75 = v17;
  sub_22C369930();
  MEMORY[0x28223BE20](v18);
  v74 = &v67 - v19;
  sub_22C369930();
  MEMORY[0x28223BE20](v20);
  v76 = &v67 - v21;
  v22 = sub_22C3A5908(&qword_27D9BFF68, &qword_22C925BA0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  sub_22C3698E4();
  v71 = v24;
  sub_22C369930();
  MEMORY[0x28223BE20](v25);
  v70 = (&v67 - v26);
  v27 = *(a1 + 16);
  v28 = MEMORY[0x277D84F90];
  v77 = v4;
  v72 = v2;
  v68 = a1;
  v69 = v27;
  if (v27)
  {
    v67 = v15;
    v87 = MEMORY[0x277D84F90];
    v29 = v14;
    sub_22C3B7BD0(0, v27, 0);
    v28 = v87;
    v31 = *(v4 + 16);
    v30 = v4 + 16;
    v82 = (*(v30 + 64) + 32) & ~*(v30 + 64);
    v83 = v31;
    v32 = a1 + v82;
    v33 = *(v30 + 56);
    v80 = (v30 - 8);
    v81 = v33;
    v84 = v30;
    v78 = (v30 + 16);
    v79 = v12;
    v34 = v27;
    v35 = v73;
    do
    {
      v83(v12, v32, v35);
      sub_22C8FFF9C();
      sub_22C777378();
      v36 = v85;
      sub_22C8FFFAC();
      sub_22C8FFFCC();
      v37 = *v80;
      (*v80)(v36, v35);
      v37(v12, v35);
      v87 = v28;
      v39 = *(v28 + 16);
      v38 = *(v28 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_22C3B7BD0(v38 > 1, v39 + 1, 1);
        v28 = v87;
      }

      *(v28 + 16) = v39 + 1;
      v40 = v81;
      (*v78)(v28 + v82 + v39 * v81, v29, v35);
      v32 += v40;
      --v34;
      v12 = v79;
    }

    while (v34);
    v4 = v77;
    v15 = v67;
  }

  v88 = 0;
  v89 = 0;
  v87 = v28;
  v41 = v71;
  sub_22C80F20C(v71);
  if (sub_22C370B74(v41, 1, v15) != 1)
  {
    sub_22C7773BC(v41, v76);
    v45 = v87;
    v46 = *(v87 + 16);
    v86 = v4 + 16;

    v44 = v73;
    while (1)
    {
      v48 = v75;
      if (v88 == v46)
      {

        v43 = v70;
        sub_22C7773BC(v76, v70);
        v42 = 0;
        v4 = v77;
        goto LABEL_19;
      }

      if ((v88 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v88 >= *(v45 + 16))
      {
        goto LABEL_26;
      }

      v49 = v77;
      v50 = v45 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v77 + 72) * v88++;
      v51 = *(v15 + 48);
      v52 = v89;
      *v75 = v89;
      result = (*(v49 + 16))(v48 + v51, v50, v44);
      if (__OFADD__(v52, 1))
      {
        goto LABEL_27;
      }

      v89 = v52 + 1;
      v53 = v74;
      sub_22C7773BC(v48, v74);
      v54 = v15;
      v55 = *(v15 + 48);
      sub_22C777378();
      v56 = v76;
      if (sub_22C8FFF8C())
      {
        sub_22C3770B0(v56, &qword_27D9BFF60, &unk_22C927B40);
        result = sub_22C7773BC(v53, v56);
      }

      else
      {
        result = sub_22C3770B0(v53, &qword_27D9BFF60, &unk_22C927B40);
      }

      v15 = v54;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  sub_22C3770B0(v41, &qword_27D9BFF68, &qword_22C925BA0);
  v42 = 1;
  v43 = v70;
  v44 = v73;
LABEL_19:
  sub_22C36C640(v43, v42, 1, v15);
  if (sub_22C370B74(v43, 1, v15) == 1)
  {
    sub_22C3770B0(v43, &qword_27D9BFF68, &qword_22C925BA0);
    return 0;
  }

  v57 = *v43;
  v58 = *(v4 + 8);
  result = v58(v43 + *(v15 + 48), v44);
  if (v57 >= v69)
  {
    goto LABEL_28;
  }

  v59 = v4;
  v60 = v68 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v85 = *(v59 + 72);
  v86 = sub_22C8FFF9C();
  v61 = *(v59 + 16);
  v62 = 0.0;
  v63 = v90;
  v64 = v69;
  do
  {
    v61(v63, v60, v44);
    sub_22C8FFFCC();
    sub_22C8FFFBC();
    v63 = v90;
    v66 = v65;
    v58(v12, v44);
    v58(v63, v44);
    v62 = v62 + v66;
    v60 += v85;
    --v64;
  }

  while (v64);
  return *&v62;
}