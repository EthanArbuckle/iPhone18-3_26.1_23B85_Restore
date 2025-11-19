uint64_t sub_22C807818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C90377C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_22C8078DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22C90377C();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_22C807988()
{
  sub_22C90377C();
  if (v0 <= 0x3F)
  {
    sub_22C457168(319, qword_281431738);
    if (v1 <= 0x3F)
    {
      sub_22C436620();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ToolRetrievalStageError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22C807B30()
{
  result = qword_27D9C0408;
  if (!qword_27D9C0408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0408);
  }

  return result;
}

unint64_t sub_22C807B84()
{
  result = qword_27D9C0410;
  if (!qword_27D9C0410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0410);
  }

  return result;
}

uint64_t sub_22C807BD8()
{
  v1 = v0[68];
  v2 = v0[64];
  v3 = *(v0[69] + 8);
  return v0[70];
}

uint64_t sub_22C807D08(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v5 = sub_22C387610();
  v6(v5);
  sub_22C8090D4();
  a3();
  sub_22C36A3EC();
  if (!v7)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_22C807D84(void *result, uint64_t a2)
{
  v2 = (a2 - result);
  if (!__OFSUB__(a2, result))
  {
    if (v2)
    {
      v4 = result;
      v5 = sub_22C597858();
      if (sub_22C3D1B64(v6, (v5 + 4), v2, v4, a2) == v2)
      {
        return v5;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  __break(1u);
  return result;
}

uint64_t sub_22C807E48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(char *))
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v6 = sub_22C387610();
  v8 = v7(v6);
  v9 = a3(0);
  v10 = sub_22C369914(v9);
  v12 = *(v11 + 80);
  v20 = sub_22C372E24(v10, v13, v14, v15, v16, v17, v18, v19, v23, v24);
  a4(v20);
  sub_22C36A3EC();
  if (!v21)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v8;
}

size_t sub_22C807F04(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v1 = sub_22C387610();
  v3 = sub_22C597A48(v1, v2);
  v4 = _s14TypedCandidateVMa(0);
  v5 = sub_22C369914(v4);
  v7 = *(v6 + 80);
  sub_22C372E24(v5, v8, v9, v10, v11, v12, v13, v14, v17, v18);
  sub_22C3D1BEC();
  sub_22C36A3EC();
  if (!v15)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_22C807FA0(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  sub_22C387610();
  sub_22C5977C8();
  sub_22C8090D4();
  sub_22C3D1388();
  sub_22C36A3EC();
  if (!v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v1;
}

IntelligenceFlowPlannerRuntime::UIControlToolRetriever __swiftcall UIControlToolRetriever.init()()
{
  v1 = v0;
  v2 = sub_22C9063DC();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_22C901F3C();

  if (v18)
  {
    v12 = 0x3FE999999999999ALL;
  }

  else
  {
    v12 = v17;
    sub_22C903FCC();
    v13 = sub_22C9063CC();
    v14 = sub_22C90AACC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v12;
      _os_log_impl(&dword_22C366000, v13, v14, "Control tool retrieval threshold: %f", v15, 0xCu);
      sub_22C3699EC();
    }

    (*(v5 + 8))(v9, v2);
  }

  *v1 = v12;
  v1[1] = 0x3FA999999999999ALL;
  result.timeoutInSecs = v11;
  result.threshold = v10;
  return result;
}

uint64_t UIControlToolRetriever.search(query:appBundleIds:)()
{
  v1 = sub_22C3A5908(&qword_27D9BD2A8, &qword_22C920540);
  sub_22C369914(v1);
  v3 = *(v2 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  v172 = &v159 - v5;
  sub_22C36BA0C();
  v6 = sub_22C9063DC();
  v7 = sub_22C369824(v6);
  v181 = v8;
  v182 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C3698E4();
  v167 = v11;
  v13 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v169 = &v159 - v14;
  sub_22C36BA0C();
  v164 = sub_22C90377C();
  v15 = sub_22C369824(v164);
  v163 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C3698A8();
  v162 = v19;
  sub_22C36BA0C();
  v161 = sub_22C9036EC();
  v20 = sub_22C369824(v161);
  v159 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C3698A8();
  v160 = v24;
  sub_22C36BA0C();
  v25 = sub_22C9037EC();
  v26 = sub_22C369824(v25);
  v173 = v27;
  v174 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C3698E4();
  v166 = v30;
  MEMORY[0x28223BE20](v31);
  v168 = &v159 - v32;
  sub_22C36BA0C();
  v170 = sub_22C90384C();
  v33 = sub_22C369824(v170);
  v176 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22C3698E4();
  v165 = v37;
  MEMORY[0x28223BE20](v38);
  v175 = &v159 - v39;
  v40 = sub_22C3A5908(&qword_27D9BD978, &unk_22C919DB0);
  sub_22C369914(v40);
  v42 = *(v41 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v43);
  v171 = &v159 - v44;
  v45 = sub_22C3A5908(&qword_27D9BF248, &qword_22C926400);
  sub_22C369914(v45);
  v47 = *(v46 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v48);
  v50 = &v159 - v49;
  v51 = sub_22C3A5908(&qword_27D9C0418, &qword_22C9275C8);
  sub_22C369914(v51);
  v53 = *(v52 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v54);
  v56 = &v159 - v55;
  v179 = sub_22C903B8C();
  v57 = sub_22C369824(v179);
  v177 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  sub_22C3698A8();
  v178 = v61;
  v62 = sub_22C3A5908(&qword_27D9BDBE0, &qword_22C9275D0);
  sub_22C369914(v62);
  v64 = *(v63 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v65);
  v67 = &v159 - v66;
  v68 = sub_22C3A5908(&qword_27D9BB670, &unk_22C90FA40);
  sub_22C369914(v68);
  v70 = *(v69 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v71);
  v73 = &v159 - v72;
  v74 = sub_22C90399C();
  v75 = sub_22C369824(v74);
  v183 = v76;
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v75);
  sub_22C3698A8();
  v180 = v79;
  v80 = *v0;
  v81 = v0[1];
  v82 = sub_22C9043BC();
  v83 = *(v82 + 48);
  v84 = *(v82 + 52);
  swift_allocObject();
  sub_22C9043AC();

  sub_22C807FA0(v85);
  v86 = sub_22C90435C();

  sub_22C58B5AC(v86, v73);

  if (sub_22C370B74(v73, 1, v74) == 1)
  {
    v87 = &qword_27D9BB670;
    v88 = &unk_22C90FA40;
    v89 = v73;
LABEL_11:
    sub_22C376B84(v89, v87, v88);
LABEL_12:
    sub_22C3AF220();
    return v103;
  }

  v90 = v183;
  v91 = v180;
  (*(v183 + 32))();
  sub_22C90397C();
  v92 = sub_22C9038BC();
  if (sub_22C370B74(v67, 1, v92) == 1)
  {
    (*(v90 + 8))(v91, v74);
    v87 = &qword_27D9BDBE0;
    v88 = &qword_22C9275D0;
    v89 = v67;
    goto LABEL_11;
  }

  sub_22C90387C();
  v94 = v93;
  sub_22C36BBA8(v92);
  (*(v95 + 8))(v67, v92);
  if (!v94)
  {
LABEL_19:
    v112 = sub_22C8090C0();
    v113(v112);
    goto LABEL_12;
  }

  sub_22C9038EC();
  v96 = sub_22C903BCC();
  if (sub_22C370B74(v50, 1, v96) == 1)
  {
    v97 = sub_22C8090C0();
    v98(v97);

    sub_22C376B84(v50, &qword_27D9BF248, &qword_22C926400);
    sub_22C36C640(v56, 1, 1, v179);
LABEL_10:
    v87 = &qword_27D9C0418;
    v88 = &qword_22C9275C8;
    v89 = v56;
    goto LABEL_11;
  }

  sub_22C903BBC();
  sub_22C36BBA8(v96);
  (*(v99 + 8))(v50, v96);
  v100 = v179;
  if (sub_22C370B74(v56, 1, v179) == 1)
  {
    v101 = sub_22C8090C0();
    v102(v101);

    goto LABEL_10;
  }

  v107 = v177;
  v106 = v178;
  (*(v177 + 32))(v178, v56, v100);
  v108 = sub_22C903B5C();
  v110 = v109;

  v111 = HIBYTE(v110) & 0xF;
  if ((v110 & 0x2000000000000000) == 0)
  {
    v111 = v108 & 0xFFFFFFFFFFFFLL;
  }

  if (!v111)
  {

    (*(v107 + 8))(v106, v100);
    goto LABEL_19;
  }

  sub_22C903B7C();
  sub_22C903B6C();

  sub_22C903B5C();
  v114 = v171;
  sub_22C90398C();
  v115 = v114;
  v116 = sub_22C90352C();
  if (sub_22C370B74(v115, 1, v116) == 1)
  {
    sub_22C376B84(v115, &qword_27D9BD978, &unk_22C919DB0);
    v117 = 0.0;
  }

  else
  {
    sub_22C90351C();
    v117 = v118;
    sub_22C36BBA8(v116);
    (*(v119 + 8))(v115, v116);
  }

  v120 = v175;
  v121 = v176;
  sub_22C90380C();
  v122 = *(v121 + 16);
  v123 = v160;
  v124 = v170;
  v122(v160, v120, v170);
  (*(v159 + 104))(v123, *MEMORY[0x277D1ECF8], v161);
  (*(v163 + 104))(v162, *MEMORY[0x277D1ED38], v164);
  v125 = v168;
  sub_22C90370C();
  sub_22C3A5908(&qword_27D9BAC90, &unk_22C90D530);
  v126 = v173;
  v127 = *(v173 + 72);
  v128 = (*(v173 + 80) + 32) & ~*(v173 + 80);
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_22C90F800;
  v130 = v129 + v128;
  v131 = v174;
  (*(v126 + 16))(v130, v125, v174);
  sub_22C903FCC();
  v132 = v165;
  v122(v165, v120, v124);
  v133 = sub_22C9063CC();
  v134 = sub_22C90AACC();
  if (os_log_type_enabled(v133, v134))
  {
    v135 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v184 = v136;
    *v135 = 136315394;
    v137 = sub_22C9037FC();
    v139 = v138;
    v140 = v132;
    v141 = *(v176 + 8);
    v141(v140, v170);
    v142 = sub_22C36F9F4(v137, v139, &v184);

    *(v135 + 4) = v142;
    *(v135 + 12) = 2048;
    *(v135 + 14) = v117;
    _os_log_impl(&dword_22C366000, v133, v134, "UIControlToolRetriever: selectedTool %s scored %f", v135, 0x16u);
    sub_22C36FF94(v136);
    v126 = v173;
    sub_22C3699EC();
    v131 = v174;
    sub_22C3699EC();

    (*(v181 + 8))(v169, v182);
    v143 = sub_22C37515C();
    v144(v143);
    v141(v175, v170);
    v145 = v180;
    v146 = v177;
    v147 = v178;
  }

  else
  {

    v148 = *(v176 + 8);
    v149 = v170;
    v148(v132, v170);
    (*(v181 + 8))(v169, v182);
    v150 = sub_22C37515C();
    v151(v150);
    v148(v175, v149);
    v146 = v177;
    v145 = v180;
    v147 = v178;
  }

  v152 = v172;
  sub_22C58B908(v129, v172);

  if (sub_22C370B74(v152, 1, v131) == 1)
  {
    sub_22C376B84(v152, &qword_27D9BD2A8, &qword_22C920540);
    sub_22C3AF220();
    v104 = v153;
  }

  else
  {
    v154 = v166;
    (*(v126 + 32))(v166, v152, v131);
    sub_22C3A5908(&qword_27D9BAC90, &unk_22C90D530);
    v155 = *(v126 + 72);
    v156 = (*(v126 + 80) + 32) & ~*(v126 + 80);
    v157 = swift_allocObject();
    *(v157 + 16) = xmmword_22C90F800;
    (*(v126 + 16))(v157 + v156, v154, v131);
    sub_22C3AF220();
    v104 = v158;
    (*(v126 + 8))(v154, v131);
  }

  (*(v146 + 8))(v147, v179);
  (*(v183 + 8))(v145, v74);
  return v104;
}

void static AppDirectedToolHelper.getAppDirectedApps(spanMatches:toolContext:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v88 = a3;
  v5 = sub_22C903CCC();
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C3698E4();
  v94 = v11;
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  v93 = &v83 - v13;
  sub_22C369930();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = (&v83 - v16);
  MEMORY[0x28223BE20](v15);
  v19 = &v83 - v18;
  sub_22C80E0F0(MEMORY[0x277D84FA0], &v96);
  if (a2)
  {
    v86 = a1;
    v20 = static AppDirectedToolHelper.getOnScreenAppBundleIDs(toolContext:)(a2);
    sub_22C378840(v20);
    v23 = v22 & v21;
    v25 = (v24 + 63) >> 6;
    v91 = v8 + 88;
    v92 = v8 + 16;
    sub_22C375170(*MEMORY[0x277D1F0D8]);
    v85 = v26;
    v95 = v27;

    v28 = 0;
    v87 = MEMORY[0x277D84F90];
LABEL_3:
    v29 = v28;
    if (!v23)
    {
      goto LABEL_5;
    }

    do
    {
      v28 = v29;
LABEL_8:
      v30 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      sub_22C80AD24(v30 | (v28 << 6));
      v31 = *(v8 + 16);
      v31(v19);
      (v31)(v17, v19, v5);
      v32 = *(v8 + 88);
      v33 = sub_22C37170C();
      v35 = v34(v33);
      if (v35 == v90)
      {
        v38 = *v85;
        v39 = sub_22C37170C();
        v40(v39);
        v41 = *v17;
        v84 = v17[1];
        v42 = v17[3];

        (*v89)(v19, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = *(v87 + 16);
          sub_22C36D270();
          sub_22C595DF0();
          v87 = v49;
        }

        v43 = *(v87 + 16);
        v44 = v43 + 1;
        if (v43 >= *(v87 + 24) >> 1)
        {
          v83 = v43 + 1;
          sub_22C595DF0();
          v44 = v83;
          v87 = v50;
        }

        v45 = v87;
        *(v87 + 16) = v44;
        v46 = v45 + 24 * v43;
        v47 = v84;
        *(v46 + 32) = v41;
        *(v46 + 40) = v47;
        *(v46 + 48) = 1;
        goto LABEL_3;
      }

      v36 = *v89;
      (*v89)(v19, v5);
      v37 = sub_22C37170C();
      (v36)(v37);
      v29 = v28;
    }

    while (v23);
LABEL_5:
    while (1)
    {
      v28 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v28 >= v25)
      {

        sub_22C80E33C(v87);

        a1 = v86;
        goto LABEL_17;
      }

      v23 = *(a2 + 8 * v28);
      ++v29;
      if (v23)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    if (!a1)
    {
LABEL_31:
      *v88 = v96;
      return;
    }

    v51 = static AppDirectedToolHelper.getSpanAppBundleIDs(spanMatches:)(a1);
    sub_22C378840(v51);
    v54 = v53 & v52;
    v56 = (v55 + 63) >> 6;
    v91 = v8 + 88;
    v92 = v8 + 16;
    sub_22C375170(*MEMORY[0x277D1F0D8]);
    v86 = v57;
    v95 = v58;

    v59 = 0;
    v87 = MEMORY[0x277D84F90];
    while (1)
    {
      v60 = v59;
      if (!v54)
      {
        break;
      }

LABEL_23:
      v61 = __clz(__rbit64(v54));
      v54 &= v54 - 1;
      sub_22C80AD24(v61 | (v59 << 6));
      v62 = *(v8 + 16);
      v63 = v93;
      v62(v93);
      v64 = v94;
      (v62)(v94, v63, v5);
      v65 = *(v8 + 88);
      v66 = sub_22C37170C();
      v68 = v67(v66);
      if (v68 == v90)
      {
        v71 = *v86;
        v72 = sub_22C37170C();
        v73(v72);
        v74 = *v64;
        v75 = v64[1];
        v76 = v64[3];

        (*v89)(v63, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = *(v87 + 16);
          sub_22C36D270();
          sub_22C595DF0();
          v87 = v81;
        }

        v77 = *(v87 + 16);
        if (v77 >= *(v87 + 24) >> 1)
        {
          sub_22C595DF0();
          v87 = v82;
        }

        v78 = v87;
        *(v87 + 16) = v77 + 1;
        v79 = v78 + 24 * v77;
        *(v79 + 32) = v74;
        *(v79 + 40) = v75;
        *(v79 + 48) = 2;
      }

      else
      {
        v69 = *v89;
        (*v89)(v63, v5);
        v70 = sub_22C37170C();
        (v69)(v70);
      }
    }

    while (1)
    {
      v59 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      if (v59 >= v56)
      {

        sub_22C80E33C(v87);

        goto LABEL_31;
      }

      v54 = *(a2 + 8 * v59);
      ++v60;
      if (v54)
      {
        goto LABEL_23;
      }
    }
  }

  __break(1u);
}

uint64_t static AppDirectedToolHelper.getOnScreenAppBundleIDs(toolContext:)(uint64_t a1)
{
  v127 = sub_22C9063DC();
  v2 = sub_22C369824(v127);
  v126 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v125 = v7 - v6;
  sub_22C36BA0C();
  v141 = sub_22C903CCC();
  v8 = sub_22C369824(v141);
  v131 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C3698E4();
  v130 = v12;
  sub_22C369930();
  MEMORY[0x28223BE20](v13);
  v129 = &v118 - v14;
  sub_22C36BA0C();
  v140 = sub_22C90926C();
  v15 = sub_22C369824(v140);
  v119 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v128 = v20 - v19;
  v21 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v150 = (&v118 - v23);
  sub_22C36BA0C();
  v24 = sub_22C90931C();
  v25 = sub_22C369824(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C3698E4();
  v139 = v30;
  sub_22C369930();
  MEMORY[0x28223BE20](v31);
  v33 = &v118 - v32;
  v34 = sub_22C90355C();
  v35 = sub_22C369824(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C369838();
  v40 = sub_22C90399C();
  v41 = sub_22C369824(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22C369838();
  v47 = v46 - v45;
  v48 = MEMORY[0x277D84FA0];
  v152 = MEMORY[0x277D84FA0];
  v49 = a1;
  v50 = *(a1 + 16);
  if (v50)
  {
    v143 = v33;
    v138 = v24;
    v52 = *(v44 + 16);
    v51 = v44 + 16;
    v53 = v49 + ((*(v51 + 64) + 32) & ~*(v51 + 64));
    v148 = *(v51 + 56);
    v149 = v52;
    v147 = (v37 + 88);
    v146 = *MEMORY[0x277D1EAB8];
    v54 = (v37 + 8);
    v142 = *MEMORY[0x277D72A58];
    v135 = (v27 + 88);
    v136 = (v27 + 16);
    v134 = *MEMORY[0x277D72970];
    v133 = (v27 + 8);
    v124 = v27 + 96;
    v123 = v119 + 32;
    v122 = *MEMORY[0x277D1F0D8];
    v121 = v131 + 104;
    v120 = v131 + 8;
    v119 += 8;
    v137 = v34;
    v144 = v40;
    v145 = v51;
    v132 = v51 - 8;
    do
    {
      v149(v47, v53, v40);
      sub_22C90394C();
      v55 = *v147;
      v56 = sub_22C36CA88();
      v58 = v57(v56);
      if (v58 == v146)
      {
        v59 = *v54;
        v60 = sub_22C36CA88();
        v61(v60);
        v62 = v150;
        sub_22C90391C();
        v63 = sub_22C9093BC();
        if (sub_22C370B74(v62, 1, v63) == 1)
        {
          v64 = sub_22C388A8C();
          v40 = v144;
          v65(v64, v144);
          sub_22C3770B0(v150, &qword_27D9BB908, &qword_22C910960);
        }

        else
        {
          v71 = *(v63 - 8);
          v72 = (*(v71 + 88))(v150, v63);
          if (v72 == v142)
          {
            v73 = v150;
            (*(v71 + 96))(v150, v63);
            v74 = *v73;
            v75 = swift_projectBox();
            v76 = *v136;
            v77 = v143;
            v78 = v138;
            (*v136)(v143, v75, v138);

            v79 = v139;
            v80 = v77;
            v81 = v78;
            v76(v139, v80, v78);
            v82 = *v135;
            v83 = sub_22C37170C();
            v85 = v84(v83);
            if (v85 == v134)
            {
              sub_22C36BA4C(&v155);
              v86(v79, v78);
              sub_22C36BA4C(&v154);
              v87 = v128;
              v88(v128, v79, v140);
              v89 = sub_22C90924C();
              v131 = v90;
              v91 = sub_22C90390C();
              v92 = v130;
              v93 = v131;
              *v130 = v89;
              v92[1] = v93;
              v92[2] = v91;
              v92[3] = v94;
              sub_22C36BA4C(v153);
              v95(v92, v122, v141);
              v96 = v129;
              sub_22C6A5D9C();
              sub_22C36BA4C(&v152);
              v97(v96, v141);
              sub_22C36BA4C(&v151);
              v98(v87, v140);
              (*v133)(v143, v81);
              v99 = sub_22C388A8C();
              v40 = v144;
              v100(v99, v144);
            }

            else
            {
              v131 = *v133;
              (v131)(v143, v78);
              v104 = sub_22C388A8C();
              v105 = v144;
              v106(v104, v144);
              v40 = v105;
              (v131)(v79, v78);
            }
          }

          else
          {
            v101 = sub_22C388A8C();
            v102 = v144;
            v103(v101, v144);
            (*(v71 + 8))(v150, v63);
            v40 = v102;
          }
        }
      }

      else
      {
        v66 = sub_22C388A8C();
        v67(v66, v40);
        v68 = *v54;
        v69 = sub_22C36CA88();
        v70(v69);
      }

      v53 += v148;
      --v50;
    }

    while (v50);
    v48 = v152;
  }

  v107 = v127;
  v108 = v125;
  sub_22C90400C();

  v109 = sub_22C9063CC();
  v110 = sub_22C90AABC();

  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    *v111 = 136315394;
    *(v111 + 4) = sub_22C36F9F4(0xD000000000000025, 0x800000022C935FA0, &v151);
    *(v111 + 12) = 2080;
    sub_22C80AD0C();
    sub_22C80ACC4(v112, v113);
    v114 = sub_22C90A8CC();
    v116 = sub_22C36F9F4(v114, v115, &v151);

    *(v111 + 14) = v116;
    _os_log_impl(&dword_22C366000, v109, v110, "%s returning inFocusAppBundleIDs %s", v111, 0x16u);
    swift_arrayDestroy();
    sub_22C3699EC();
    sub_22C3699EC();
  }

  (*(v126 + 8))(v108, v107);
  return v48;
}

uint64_t static AppDirectedToolHelper.getSpanAppBundleIDs(spanMatches:)(uint64_t a1)
{
  v2 = sub_22C36CA88();
  v4 = sub_22C3A5908(v2, v3);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v47 - v6);
  v8 = sub_22C903CCC();
  v9 = sub_22C369824(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C3698E4();
  v56 = v14;
  sub_22C369930();
  MEMORY[0x28223BE20](v15);
  v51 = &v47 - v16;
  sub_22C36BA0C();
  v17 = sub_22C9063DC();
  v18 = sub_22C369824(v17);
  v54 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v52 = v11;
  v53 = v23 - v22;
  v24 = 0;
  v25 = *(a1 + 16);
  v55 = (v11 + 32);
  v26 = MEMORY[0x277D84F90];
  while (v25 != v24)
  {
    v27 = *(sub_22C9039FC() - 8);
    sub_22C80A470(a1 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, v7);
    if (sub_22C370B74(v7, 1, v8) == 1)
    {
      sub_22C3770B0(v7, &qword_27D9C0420, &qword_22C927648);
      ++v24;
    }

    else
    {
      v49 = v26;
      v50 = v17;
      v28 = *v55;
      v29 = v51;
      (*v55)(v51, v7, v8);
      v48 = v28;
      v28(v56, v29, v8);
      v26 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = *(v26 + 16);
        sub_22C36D270();
        sub_22C595D28();
        v26 = v33;
      }

      v30 = *(v26 + 16);
      v31 = v30 + 1;
      if (v30 >= *(v26 + 24) >> 1)
      {
        v49 = v30 + 1;
        sub_22C595D28();
        v31 = v49;
        v26 = v34;
      }

      ++v24;
      *(v26 + 16) = v31;
      v48((v26 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v30), v56, v8);
      v17 = v50;
    }
  }

  sub_22C3AE56C();
  v36 = v35;
  v37 = v53;
  sub_22C90400C();

  v38 = sub_22C9063CC();
  v39 = sub_22C90AABC();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v57[0] = swift_slowAlloc();
    *v40 = 136315394;
    *(v40 + 4) = sub_22C36F9F4(0xD000000000000021, 0x800000022C935FD0, v57);
    *(v40 + 12) = 2080;
    sub_22C80AD0C();
    sub_22C80ACC4(v41, v42);
    v43 = sub_22C90A8CC();
    v45 = sub_22C36F9F4(v43, v44, v57);

    *(v40 + 14) = v45;
    _os_log_impl(&dword_22C366000, v38, v39, "%s returning appNameSpans %s", v40, 0x16u);
    swift_arrayDestroy();
    sub_22C3699EC();
    sub_22C3699EC();
  }

  (*(v54 + 8))(v37, v17);
  return v36;
}

uint64_t sub_22C80A470@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v68 = a2;
  v3 = sub_22C3A5908(&qword_27D9BDA90, &unk_22C91A460);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v66 = &v60[-v5];
  v67 = sub_22C90361C();
  v63 = *(v67 - 8);
  v6 = *(v63 + 64);
  MEMORY[0x28223BE20](v67);
  v62 = &v60[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_22C90952C();
  v69 = *(v8 - 8);
  v9 = *(v69 + 64);
  MEMORY[0x28223BE20](v8);
  v64 = &v60[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_22C3A5908(&qword_27D9BEC60, &qword_22C920510);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v60[-v13];
  v15 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v60[-v17];
  v19 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v60[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v60[-v25];
  MEMORY[0x28223BE20](v24);
  v28 = &v60[-v27];
  v65 = a1;
  sub_22C9039CC();
  v29 = sub_22C9093BC();
  if (sub_22C370B74(v18, 1, v29) == 1)
  {
    sub_22C3770B0(v18, &qword_27D9BB908, &qword_22C910960);
    v30 = 1;
  }

  else
  {
    sub_22C90935C();
    (*(*(v29 - 8) + 8))(v18, v29);
    v30 = 0;
  }

  sub_22C36C640(v28, v30, 1, v8);
  v31 = sub_22C9094EC();
  v32 = swift_allocBox();
  (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D72C98], v31);
  *v26 = v32;
  (*(v69 + 104))(v26, *MEMORY[0x277D72D50], v8);
  sub_22C36C640(v26, 0, 1, v8);
  v34 = *(v11 + 48);
  sub_22C80AC54(v28, v14);
  sub_22C80AC54(v26, &v14[v34]);
  if (sub_22C370B74(v14, 1, v8) == 1)
  {
    sub_22C3770B0(v26, &qword_27D9BB0C0, &qword_22C90D960);
    sub_22C3770B0(v28, &qword_27D9BB0C0, &qword_22C90D960);
    if (sub_22C370B74(&v14[v34], 1, v8) == 1)
    {
      sub_22C3770B0(v14, &qword_27D9BB0C0, &qword_22C90D960);
LABEL_11:
      v42 = sub_22C9039DC();
      v43 = v66;
      sub_22C58B384(v42, v66);

      v44 = v67;
      if (sub_22C370B74(v43, 1, v67) != 1)
      {
        v50 = v62;
        v49 = v63;
        (*(v63 + 32))(v62, v43, v44);
        v51 = sub_22C9035FC();
        v53 = v52;
        v54 = sub_22C90357C();
        v56 = v55;
        (*(v49 + 8))(v50, v44);
        v57 = v68;
        *v68 = v51;
        v57[1] = v53;
        v57[2] = v54;
        v57[3] = v56;
        v58 = *MEMORY[0x277D1F0D8];
        v59 = sub_22C903CCC();
        (*(*(v59 - 8) + 104))(v57, v58, v59);
        v46 = v57;
        v47 = 0;
        v45 = v59;
        return sub_22C36C640(v46, v47, 1, v45);
      }

      v35 = &qword_27D9BDA90;
      v36 = &unk_22C91A460;
      v37 = v43;
      goto LABEL_13;
    }

LABEL_9:
    v35 = &qword_27D9BEC60;
    v36 = &qword_22C920510;
    v37 = v14;
LABEL_13:
    sub_22C3770B0(v37, v35, v36);
    goto LABEL_14;
  }

  sub_22C80AC54(v14, v23);
  if (sub_22C370B74(&v14[v34], 1, v8) == 1)
  {
    sub_22C3770B0(v26, &qword_27D9BB0C0, &qword_22C90D960);
    sub_22C3770B0(v28, &qword_27D9BB0C0, &qword_22C90D960);
    (*(v69 + 8))(v23, v8);
    goto LABEL_9;
  }

  v38 = v69;
  v39 = &v14[v34];
  v40 = v64;
  (*(v69 + 32))(v64, v39, v8);
  sub_22C80ACC4(&qword_28142FA78, MEMORY[0x277D72D58]);
  v61 = sub_22C90A0BC();
  v41 = *(v38 + 8);
  v41(v40, v8);
  sub_22C3770B0(v26, &qword_27D9BB0C0, &qword_22C90D960);
  sub_22C3770B0(v28, &qword_27D9BB0C0, &qword_22C90D960);
  v41(v23, v8);
  sub_22C3770B0(v14, &qword_27D9BB0C0, &qword_22C90D960);
  if (v61)
  {
    goto LABEL_11;
  }

LABEL_14:
  v45 = sub_22C903CCC();
  v46 = v68;
  v47 = 1;
  return sub_22C36C640(v46, v47, 1, v45);
}

_BYTE *storeEnumTagSinglePayload for AppDirectedToolHelper(_BYTE *result, int a2, int a3)
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

uint64_t sub_22C80AC54(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C80ACC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PlannerSpanMatchService.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_22C907D8C();
  *(v0 + 112) = sub_22C907D7C();
  return v0;
}

uint64_t PlannerSpanMatchService.init()()
{
  swift_defaultActor_initialize();
  sub_22C907D8C();
  *(v0 + 112) = sub_22C907D7C();
  return v0;
}

uint64_t static PlannerSpanMatchService.isEnabled()()
{
  v0 = sub_22C90363C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D1EBE0], v0);
  v5 = sub_22C90362C();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_22C80AEB8(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = sub_22C9089DC();
  v2[19] = v3;
  sub_22C3699B8(v3);
  v2[20] = v4;
  v6 = *(v5 + 64);
  v2[21] = sub_22C3699D4();
  v7 = sub_22C9063DC();
  v2[22] = v7;
  sub_22C3699B8(v7);
  v2[23] = v8;
  v10 = *(v9 + 64);
  v2[24] = sub_22C3699D4();
  v11 = *(*(sub_22C3A5908(&qword_27D9BEEA8, &qword_22C9214D0) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v12 = sub_22C3A5908(&qword_27D9BEED0, &unk_22C922F60);
  v2[27] = v12;
  v13 = *(*(v12 - 8) + 64);
  v2[28] = sub_22C3699D4();
  v14 = sub_22C908A0C();
  v2[29] = v14;
  sub_22C3699B8(v14);
  v2[30] = v15;
  v17 = *(v16 + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v18 = sub_22C90880C();
  v2[33] = v18;
  sub_22C3699B8(v18);
  v2[34] = v19;
  v21 = *(v20 + 64);
  v2[35] = sub_22C3699D4();
  v22 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_22C80B0D0()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 136);
  sub_22C90878C();
  v5 = sub_22C9087DC();
  *(v0 + 288) = *(v2 + 8);
  *(v0 + 296) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6 = sub_22C36BAFC();
  v7(v6);
  *(v0 + 120) = v5;
  *(v0 + 304) = sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  *(v0 + 312) = sub_22C3AC13C();
  sub_22C907ECC();

  v9 = *(v0 + 104);
  v8 = *(v0 + 112);
  *(v0 + 320) = v9;
  *(v0 + 328) = v8;
  if (v8)
  {
    v10 = swift_task_alloc();
    *(v0 + 336) = v10;
    *v10 = v0;
    v10[1] = sub_22C80B314;
    v11 = *(v0 + 144);

    return sub_22C80BD50(v9, v8);
  }

  else
  {
    sub_22C90735C();
    sub_22C3A5F00();
    swift_allocError();
    v13 = *(v0 + 88);
    v14 = *(v0 + 72);
    *v15 = *(v0 + 56);
    *(v15 + 16) = v14;
    *(v15 + 32) = v13;
    swift_willThrow();
    sub_22C373AB0();

    sub_22C369A24();

    return v16();
  }
}

uint64_t sub_22C80B314()
{
  v2 = *v1;
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 336);
  v6 = *v1;
  sub_22C369A30();
  *v7 = v6;

  if (v0)
  {
    v8 = v2[41];

    v9 = v2[35];
    v11 = v2[31];
    v10 = v2[32];
    v12 = v2[28];
    v14 = v2[25];
    v13 = v2[26];
    v15 = v2[24];
    v16 = v2[21];

    sub_22C369A24();

    return v17();
  }

  else
  {
    v19 = v2[18];

    v20 = sub_22C37BB20();

    return MEMORY[0x2822009F8](v20, v21, v22);
  }
}

uint64_t sub_22C80B4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  v15 = *(v14 + 304);
  v16 = *(v14 + 288);
  v17 = *(v14 + 296);
  v18 = *(v14 + 280);
  v19 = *(v14 + 264);
  v20 = *(v14 + 208);
  v54 = *(v14 + 312);
  v55 = *(v14 + 216);
  v21 = *(v14 + 200);
  v22 = *(v14 + 136);
  sub_22C90878C();
  v23 = sub_22C9087DC();
  v16(v18, v19);
  *(v14 + 128) = v23;
  sub_22C907E2C();

  sub_22C80C2B4(v20, v21);
  if (sub_22C370B74(v21, 1, v55) == 1)
  {
    v24 = *(v14 + 328);
    v26 = *(v14 + 200);
    v25 = *(v14 + 208);

    sub_22C80C324(v26);
    sub_22C90735C();
    sub_22C3A5F00();
    swift_allocError();
    v27 = *(v14 + 48);
    v28 = *(v14 + 32);
    *v29 = *(v14 + 16);
    *(v29 + 16) = v28;
    *(v29 + 32) = v27;
    swift_willThrow();
    sub_22C80C324(v25);
    sub_22C373AB0();

    sub_22C369A24();
    sub_22C36D5F8();

    return v31(v30, v31, v32, v33, v34, v35, v36, v37, v54, v55, a11, a12, a13, a14);
  }

  else
  {
    v39 = *(v14 + 328);
    v40 = *(v14 + 256);
    v42 = *(v14 + 232);
    v41 = *(v14 + 240);
    v44 = *(v14 + 216);
    v43 = *(v14 + 224);
    v45 = *(v14 + 200);
    sub_22C80C324(*(v14 + 208));
    sub_22C733D4C(v45, v43);
    v46 = *(v44 + 48);
    v47 = *(v41 + 32);
    *(v14 + 344) = v47;
    *(v14 + 352) = (v41 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v47(v40, v43 + v46, v42);
    v48 = swift_task_alloc();
    *(v14 + 360) = v48;
    *v48 = v14;
    v48[1] = sub_22C80B73C;
    v49 = *(v14 + 320);
    v50 = *(v14 + 144);
    sub_22C36D5F8();

    return sub_22C80BD50(v51, v52);
  }
}

uint64_t sub_22C80B73C()
{
  v2 = *v1;
  sub_22C369A30();
  *v4 = v3;
  v5 = v2[45];
  v6 = *v1;
  sub_22C369A30();
  *v7 = v6;
  *(v9 + 368) = v8;
  *(v9 + 376) = v0;

  v10 = v2[41];
  v11 = v2[18];

  if (v0)
  {
    v12 = sub_22C80BB40;
  }

  else
  {
    v12 = sub_22C80B884;
  }

  return MEMORY[0x2822009F8](v12, v11, 0);
}

uint64_t sub_22C80B884()
{
  if (*(v0[46] + 16))
  {
    v1 = v0[47];
    v34 = v0[43];
    v35 = v0[44];
    v2 = v0[31];
    v3 = v0[30];
    v32 = v0[32];
    v33 = v0[29];
    v4 = v0[20];
    v5 = v0[21];
    v6 = v0[19];
    v7 = v0[17];
    *(swift_task_alloc() + 16) = v7;
    sub_22C3B27D8();

    sub_22C90679C();
    (*(v4 + 104))(v5, *MEMORY[0x277D1E788], v6);
    v8 = v2;
    sub_22C90893C();
    (*(v4 + 8))(v5, v6);
    sub_22C3A5908(&qword_27D9BAE10, &unk_22C91DB10);
    v9 = *(v3 + 72);
    v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_22C90F800;
    v34(v11 + v10, v8, v33);
  }

  else
  {
    v12 = v0[24];
    v13 = v0[46];

    sub_22C90404C();
    v14 = sub_22C9063CC();
    v15 = sub_22C90AACC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22C366000, v14, v15, "No spans found. Returning nil transcript event", v16, 2u);
      sub_22C3699EC();
    }

    v18 = v0[23];
    v17 = v0[24];
    v19 = v0[22];

    v20 = *(v18 + 8);
    v21 = sub_22C36BAFC();
    v22(v21);
    v11 = MEMORY[0x277D84F90];
  }

  v23 = v0[35];
  v24 = v0[31];
  v25 = v0[28];
  v27 = v0[25];
  v26 = v0[26];
  v28 = v0[24];
  v29 = v0[21];
  (*(v0[30] + 8))(v0[32], v0[29]);

  v30 = v0[1];

  return v30(v11);
}

uint64_t sub_22C80BB40()
{
  (*(v0[30] + 8))(v0[32], v0[29]);
  v1 = v0[47];
  sub_22C373AB0();

  sub_22C369A24();

  return v2();
}

uint64_t sub_22C80BC04(uint64_t a1)
{
  v2 = sub_22C9039FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C901FAC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22C9087AC();
  sub_22C90882C();

  (*(v3 + 16))(v6, a1, v2);
  return sub_22C90820C();
}

uint64_t sub_22C80BD50(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22C9063DC();
  v3[5] = v4;
  sub_22C3699B8(v4);
  v3[6] = v5;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v8 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C80BE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_22C372634();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[8];
  v26 = v22[3];
  sub_22C90404C();

  v27 = sub_22C9063CC();
  v28 = sub_22C90AACC();

  v29 = os_log_type_enabled(v27, v28);
  v30 = v22[8];
  v31 = v22[5];
  v32 = v22[6];
  if (v29)
  {
    v34 = v22[2];
    v33 = v22[3];
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    a11 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_22C36F9F4(v34, v33, &a11);
    _os_log_impl(&dword_22C366000, v27, v28, "Finding Span Matches for utterance: %s", v35, 0xCu);
    sub_22C36FF94(v36);
    sub_22C3699EC();
    sub_22C3699EC();
  }

  v37 = *(v32 + 8);
  v38 = sub_22C36BAFC();
  v37(v38);
  v22[9] = v37;
  v39 = *(v22[4] + 112);
  v40 = *(MEMORY[0x277D1E240] + 4);
  v53 = *MEMORY[0x277D1E240] + MEMORY[0x277D1E240];
  v41 = swift_task_alloc();
  v22[10] = v41;
  *v41 = v22;
  v41[1] = sub_22C80BFB4;
  v43 = v22[2];
  v42 = v22[3];
  sub_22C36D5F8();

  return v47(v44, v45, v46, v47, v48, v49, v50, v51, a9, v53, a11, a12, a13, a14);
}

uint64_t sub_22C80BFB4()
{
  v2 = *v1;
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  *v3 = *v1;
  v2[11] = v7;

  if (v0)
  {
    v9 = v2[7];
    v8 = v2[8];

    v10 = v6[1];

    return v10();
  }

  else
  {
    v12 = v2[4];

    return MEMORY[0x2822009F8](sub_22C80C108, v12, 0);
  }
}

uint64_t sub_22C80C108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_22C372634();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[11];
  v26 = v22[7];
  sub_22C90404C();

  v27 = sub_22C9063CC();
  v28 = sub_22C90AACC();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = v22[11];
    a10 = v22[9];
    v31 = v22[6];
    v30 = v22[7];
    v32 = v22[5];
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    a11 = v34;
    *v33 = 136315138;
    v35 = sub_22C9039FC();
    v36 = MEMORY[0x2318B7AD0](v29, v35);
    v38 = sub_22C36F9F4(v36, v37, &a11);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_22C366000, v27, v28, "Found Span Matches: %s", v33, 0xCu);
    sub_22C36FF94(v34);
    sub_22C3699EC();
    sub_22C3699EC();

    v39 = sub_22C36BAFC();
    a10(v39);
  }

  else
  {
    v40 = v22[9];
    v42 = v22[6];
    v41 = v22[7];
    v43 = v22[5];

    v44 = sub_22C36BAFC();
    v40(v44);
  }

  v46 = v22[7];
  v45 = v22[8];

  v47 = v22[1];
  v48 = v22[11];
  sub_22C36D5F8();

  return v51(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22C80C2B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BEEA8, &qword_22C9214D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C80C324(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BEEA8, &qword_22C9214D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PlannerSpanMatchService.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t dispatch thunk of PlannerSpanMatchService.handle(_:plannerServiceContext:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 104);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22C80C550;

  return v10(a1, a2);
}

uint64_t sub_22C80C550(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v4 = *v1;
  sub_22C369A30();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(a1);
}

_BYTE *storeEnumTagSinglePayload for QueryDecorationPostProcessing(_BYTE *result, int a2, int a3)
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

uint64_t sub_22C80C6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v85 = a2;
  v86 = a3;
  v83 = sub_22C3A5908(&qword_27D9BC928, &qword_22C927720);
  v5 = sub_22C36985C(v83);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v84 = v78 - v8;
  v92 = sub_22C90941C();
  v9 = sub_22C369824(v92);
  v90 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C3698E4();
  v78[1] = v13;
  sub_22C369930();
  MEMORY[0x28223BE20](v14);
  v89 = v78 - v15;
  v16 = sub_22C90981C();
  v17 = sub_22C369824(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C3698E4();
  v91 = v22;
  sub_22C369930();
  MEMORY[0x28223BE20](v23);
  v80 = v78 - v24;
  sub_22C369930();
  MEMORY[0x28223BE20](v25);
  v27 = v78 - v26;
  v93 = sub_22C9063DC();
  v28 = sub_22C369824(v93);
  v95 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22C3698E4();
  v88 = v32;
  sub_22C369930();
  MEMORY[0x28223BE20](v33);
  v35 = v78 - v34;
  sub_22C90400C();
  v94 = v19;
  v36 = *(v19 + 16);
  v96 = a1;
  v36(v27, a1, v16);
  v37 = sub_22C9063CC();
  v79 = sub_22C90AACC();
  v38 = os_log_type_enabled(v37, v79);
  v87 = v16;
  v81 = v36;
  v82 = v19 + 16;
  if (v38)
  {
    swift_slowAlloc();
    v78[0] = sub_22C38C154();
    v97 = v78[0];
    *v3 = 136315394;
    *(v3 + 4) = sub_22C372E3C("spanMatchServiceProvider");
    *(v3 + 12) = 2080;
    v36(v80, v27, v16);
    v39 = sub_22C90A1AC();
    v41 = v40;
    v42 = sub_22C378868();
    v43(v42);
    v44 = sub_22C36F9F4(v39, v41, &v97);

    *(v3 + 14) = v44;
    _os_log_impl(&dword_22C366000, v37, v79, "%s Processing parameter: %s", v3, 0x16u);
    v45 = v78[0];
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v45, -1, -1);
    sub_22C36C4C8();
  }

  else
  {

    v46 = sub_22C378868();
    v47(v46);
  }

  v48 = *(v95 + 8);
  v49 = v93;
  v50 = v48(v35, v93);
  v51 = v89;
  MEMORY[0x2318B6CE0](v50);
  v52 = v90;
  v53 = v92;
  v54 = (*(v90 + 88))(v51, v92);
  v55 = v91;
  if (v54 == *MEMORY[0x277D72AB8])
  {
    (*(v52 + 96))(v51, v53);
    v56 = *v51;
    v57 = swift_projectBox();
    v58 = v84;
    sub_22C4802FC(v57, v84);
    v59 = *(v58 + *(v83 + 48));
    v60 = sub_22C90952C();
    sub_22C36985C(v60);
    (*(v61 + 8))(v58);

    MEMORY[0x28223BE20](v62);
    v63 = v85;
    v78[-2] = v96;
    v78[-1] = v63;
    sub_22C794FBC();
    v65 = v64;

    if (v3)
    {
      return result;
    }
  }

  else
  {
    (*(v52 + 8))(v51, v53);
    v67 = v88;
    sub_22C90400C();
    v68 = v87;
    v81(v55, v96, v87);
    v69 = sub_22C9063CC();
    v70 = sub_22C90AACC();
    if (os_log_type_enabled(v69, v70))
    {
      swift_slowAlloc();
      v71 = sub_22C38C154();
      v97 = v71;
      *v3 = 136315394;
      *(v3 + 4) = sub_22C372E3C("spanMatchServiceProvider");
      *(v3 + 12) = 2080;
      MEMORY[0x2318B6CE0]();
      v72 = sub_22C90A1AC();
      v74 = v73;
      (v80)(v55, v87);
      v75 = sub_22C36F9F4(v72, v74, &v97);

      *(v3 + 14) = v75;
      _os_log_impl(&dword_22C366000, v69, v70, "%s Skip non .restricted parameter: %s", v3, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318B9880](v71, -1, -1);
      sub_22C36C4C8();

      v76 = v88;
      v77 = v93;
    }

    else
    {

      (v80)(v55, v68);
      v76 = v67;
      v77 = v49;
    }

    result = v48(v76, v77);
    v65 = MEMORY[0x277D84F90];
  }

  *v86 = v65;
  return result;
}

uint64_t sub_22C80CDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v134 = a3;
  v132 = a2;
  v146 = a4;
  v5 = sub_22C3A5908(&qword_27D9C0428, &qword_22C927728);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v137 = &v113 - v7;
  v131 = sub_22C908EAC();
  v130 = *(v131 - 8);
  v8 = *(v130 + 64);
  MEMORY[0x28223BE20](v131);
  v133 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_22C908ECC();
  v121 = *(v120 - 8);
  v10 = *(v121 + 64);
  MEMORY[0x28223BE20](v120);
  v141 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_22C90981C();
  v136 = *(v143 - 8);
  v12 = *(v136 + 64);
  MEMORY[0x28223BE20](v143);
  v135 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C9063DC();
  v144 = *(v14 - 8);
  v145 = v14;
  v15 = *(v144 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v150 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v117 = &v113 - v19;
  MEMORY[0x28223BE20](v18);
  v116 = &v113 - v20;
  v21 = sub_22C3A5908(&qword_27D9C0430, &qword_22C927730);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v125 = &v113 - v23;
  v126 = sub_22C9093CC();
  v119 = *(v126 - 8);
  v24 = *(v119 + 64);
  MEMORY[0x28223BE20](v126);
  v118 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22C3A5908(&qword_27D9C0438, &qword_22C927738);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v139 = &v113 - v28;
  v140 = sub_22C90953C();
  v124 = *(v140 - 8);
  v29 = *(v124 + 64);
  MEMORY[0x28223BE20](v140);
  v123 = &v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_22C909ADC();
  v128 = *(v129 - 8);
  v31 = *(v128 + 64);
  v32 = MEMORY[0x28223BE20](v129);
  v142 = &v113 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v127 = &v113 - v34;
  v35 = sub_22C90969C();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x28223BE20](v35);
  v122 = &v113 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v138 = (&v113 - v41);
  MEMORY[0x28223BE20](v40);
  v43 = &v113 - v42;
  v44 = sub_22C90957C();
  v148 = *(v44 - 8);
  v149 = v44;
  v45 = *(v148 + 8);
  MEMORY[0x28223BE20](v44);
  v47 = &v113 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_22C90966C();
  v147 = *(v48 - 8);
  v49 = *(v147 + 64);
  MEMORY[0x28223BE20](v48);
  v51 = &v113 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(v36 + 16);
  v52(v43, a1, v35);
  if ((*(v36 + 88))(v43, v35) == *MEMORY[0x277D72FA0])
  {
    (*(v36 + 96))(v43, v35);
    v53 = *(sub_22C3A5908(&qword_27D9BF208, &qword_22C927740) + 48);
    v55 = (v147 + 32);
    v54 = *(v147 + 32);
    v150 = v51;
    v138 = v54;
    v54(v51, v43, v48);
    v56 = v148;
    v57 = &v43[v53];
    v58 = v149;
    (*(v148 + 4))(v47, v57, v149);
    v59 = v139;
    sub_22C90956C();
    v60 = v140;
    v61 = sub_22C370B74(v59, 1, v140);
    v62 = v48;
    v115 = v47;
    if (v61 == 1)
    {
      sub_22C36DD28(v59, &qword_27D9C0438, &qword_22C927738);
      v63 = v125;
      sub_22C90955C();
      v64 = v126;
      if (sub_22C370B74(v63, 1, v126) == 1)
      {
        sub_22C36DD28(v63, &qword_27D9C0430, &qword_22C927730);
        v65 = v117;
        sub_22C90400C();
        v66 = sub_22C9063CC();
        v67 = sub_22C90AACC();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = v56;
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v151 = v70;
          *v69 = 136315138;
          *(v69 + 4) = sub_22C36F9F4(0xD00000000000001FLL, 0x800000022C936110, &v151);
          _os_log_impl(&dword_22C366000, v66, v67, "%s Skip template w/o .valid or .all predicate", v69, 0xCu);
          sub_22C36FF94(v70);
          MEMORY[0x2318B9880](v70, -1, -1);
          MEMORY[0x2318B9880](v69, -1, -1);

          (*(v144 + 8))(v65, v145);
          (*(v68 + 1))(v115, v58);
        }

        else
        {

          (*(v144 + 8))(v65, v145);
          (*(v56 + 1))(v115, v58);
        }

        (*(v147 + 8))(v150, v62);
        DecorationDynamicEnumerationQuery = type metadata accessor for QueryDecorationDynamicEnumerationQuery();
        v105 = v146;
        v106 = 1;
        return sub_22C36C640(v105, v106, 1, DecorationDynamicEnumerationQuery);
      }

      v122 = v55;
      v95 = v119;
      v96 = v118;
      (*(v119 + 32))(v118, v63, v64);
      v97 = v116;
      sub_22C90400C();
      v98 = sub_22C9063CC();
      v99 = sub_22C90AACC();
      v100 = os_log_type_enabled(v98, v99);
      v114 = v62;
      if (v100)
      {
        v101 = swift_slowAlloc();
        v102 = v97;
        v103 = swift_slowAlloc();
        v151 = v103;
        *v101 = 136315138;
        *(v101 + 4) = sub_22C36F9F4(0xD00000000000001FLL, 0x800000022C936110, &v151);
        _os_log_impl(&dword_22C366000, v98, v99, "%s Valid predicate was nil. Falling back to .all predicate", v101, 0xCu);
        sub_22C36FF94(v103);
        MEMORY[0x2318B9880](v103, -1, -1);
        MEMORY[0x2318B9880](v101, -1, -1);

        (*(v144 + 8))(v102, v145);
      }

      else
      {

        (*(v144 + 8))(v97, v145);
      }

      v86 = v154;
      v152 = v64;
      v153 = sub_22C80DF74(&qword_27D9C0440, MEMORY[0x277D72AA8]);
      v107 = sub_22C36D548(&v151);
      (*(v95 + 16))(v107, v96, v64);
      v85 = v127;
      sub_22C909ACC();
      (*(v95 + 8))(v96, v64);
      v89 = v135;
      v90 = v136;
      v91 = v129;
      v92 = v128;
      v88 = v142;
      v87 = v143;
    }

    else
    {
      v122 = v55;
      v114 = v48;
      v82 = v124;
      v83 = v123;
      (*(v124 + 32))(v123, v59, v60);
      v152 = v60;
      v153 = sub_22C80DF74(&qword_28142FA70, MEMORY[0x277D72D88]);
      v84 = sub_22C36D548(&v151);
      (*(v82 + 16))(v84, v83, v60);
      v85 = v127;
      sub_22C909ACC();
      (*(v82 + 8))(v83, v60);
      v86 = v154;
      v88 = v142;
      v87 = v143;
      v89 = v135;
      v90 = v136;
      v91 = v129;
      v92 = v128;
    }

    (*(v90 + 16))(v89, v132, v87);
    (*(v92 + 16))(v88, v85, v91);
    (*(v130 + 16))(v133, v134, v131);
    sub_22C3A5908(&qword_27D9C0448, &qword_22C927748);
    sub_22C909F0C();
    v108 = sub_22C908F7C();
    v109 = v92;
    sub_22C36C640(v137, 1, 1, v108);
    sub_22C908EBC();
    if (v86)
    {
      v110 = *(v92 + 8);
      v110(v142, v91);
      (*(v90 + 8))(v89, v143);
      v110(v85, v91);
      (*(v148 + 1))(v115, v149);
      return (*(v147 + 8))(v150, v114);
    }

    (*(v92 + 8))(v85, v91);
    (*(v148 + 1))(v115, v149);
    v111 = type metadata accessor for QueryDecorationDynamicEnumerationQuery();
    v112 = v146;
    v138(v146 + v111[7], v150, v114);
    (*(v90 + 32))(v112, v89, v143);
    (*(v109 + 32))(v112 + v111[5], v142, v91);
    (*(v121 + 32))(v112 + v111[6], v141, v120);
    v105 = v112;
    v106 = 0;
    DecorationDynamicEnumerationQuery = v111;
    return sub_22C36C640(v105, v106, 1, DecorationDynamicEnumerationQuery);
  }

  v71 = *(v36 + 8);
  v71(v43, v35);
  sub_22C90400C();
  v72 = v138;
  v52(v138, a1, v35);
  v73 = sub_22C9063CC();
  v74 = sub_22C90AACC();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v148 = v71;
    v76 = v75;
    v149 = swift_slowAlloc();
    v151 = v149;
    *v76 = 136315394;
    *(v76 + 4) = sub_22C36F9F4(0xD00000000000001FLL, 0x800000022C936110, &v151);
    *(v76 + 12) = 2080;
    LODWORD(v147) = v74;
    v52(v122, v72, v35);
    v77 = sub_22C90A1AC();
    v79 = v78;
    v148(v72, v35);
    v80 = sub_22C36F9F4(v77, v79, &v151);

    *(v76 + 14) = v80;
    _os_log_impl(&dword_22C366000, v73, v147, "%s Skip non .inSet RestrictionContext: %s", v76, 0x16u);
    v81 = v149;
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v81, -1, -1);
    MEMORY[0x2318B9880](v76, -1, -1);
  }

  else
  {

    v71(v72, v35);
  }

  (*(v144 + 8))(v150, v145);
  v93 = type metadata accessor for QueryDecorationDynamicEnumerationQuery();
  return sub_22C36C640(v146, 1, 1, v93);
}

uint64_t type metadata accessor for QueryDecorationDynamicEnumerationQuery()
{
  result = qword_281435618;
  if (!qword_281435618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C80DF74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C80DFE4()
{
  result = sub_22C90981C();
  if (v1 <= 0x3F)
  {
    result = sub_22C909ADC();
    if (v2 <= 0x3F)
    {
      result = sub_22C908ECC();
      if (v3 <= 0x3F)
      {
        result = sub_22C90966C();
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

uint64_t sub_22C80E098@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_22C80E0F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_22C371E3C();

  v3 = sub_22C371E3C();
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  v29 = a1;

  v9 = 0;
  v28 = a1 + 56;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = (*(v29 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
      v13 = *v11;
      v12 = v11[1];

      swift_isUniquelyReferenced_nonNull_native();
      sub_22C36E2BC(v13, v12);
      sub_22C369DA4();
      if (__OFADD__(v16, v17))
      {
        break;
      }

      v18 = v14;
      v19 = v15;
      sub_22C3A5908(&qword_27D9C0470, &unk_22C927AA0);
      if (sub_22C90B15C())
      {
        v20 = sub_22C36E2BC(v13, v12);
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_22;
        }

        v18 = v20;
      }

      v7 &= v7 - 1;
      if (v19)
      {
        *(v3[7] + v18) = 0;
      }

      else
      {
        v3[(v18 >> 6) + 8] |= 1 << v18;
        v22 = (v3[6] + 16 * v18);
        *v22 = v13;
        v22[1] = v12;
        *(v3[7] + v18) = 0;
        v23 = v3[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_21;
        }

        v3[2] = v25;
      }

      v9 = v10;
      v4 = v28;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {

        *a2 = v3;
        return result;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t RelevantAppSet.RelevantApp.init(bundleId:source:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t sub_22C80E33C(uint64_t result)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  v3 = v1;
  for (i = (result + 48); ; i += 24)
  {
    v6 = *(i - 2);
    v5 = *(i - 1);
    v39 = *i;
    v7 = *v3;
    v8 = *(*v3 + 16);

    if (v8)
    {
      v9 = sub_22C36E2BC(v6, v5);
      v10 = *v3;
      if (v11)
      {
        v38 = *(*(v7 + 56) + v9);
        swift_isUniquelyReferenced_nonNull_native();
        sub_22C36B7B8();
        sub_22C369DA4();
        if (__OFADD__(v14, v15))
        {
          goto LABEL_27;
        }

        v16 = v12;
        v17 = v13;
        sub_22C3A5908(&qword_27D9C0470, &unk_22C927AA0);
        if (sub_22C38C174())
        {
          v18 = sub_22C36E2BC(v6, v5);
          if ((v17 & 1) != (v19 & 1))
          {
            goto LABEL_29;
          }

          v16 = v18;
        }

        v20 = v38 | v39;
        v21 = v40;
        if ((v17 & 1) == 0)
        {
          v40[(v16 >> 6) + 8] |= 1 << v16;
          v35 = (v40[6] + 16 * v16);
          *v35 = v6;
          v35[1] = v5;
          *(v40[7] + v16) = v20;
          v36 = v40[2];
          v33 = __OFADD__(v36, 1);
          v34 = v36 + 1;
          if (v33)
          {
            goto LABEL_28;
          }

LABEL_22:
          v21[2] = v34;

          goto LABEL_23;
        }

        *(v40[7] + v16) = v20;
        goto LABEL_23;
      }

      v22 = *v3;
    }

    swift_isUniquelyReferenced_nonNull_native();
    sub_22C36B7B8();
    sub_22C369DA4();
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v27 = v23;
    v28 = v24;
    sub_22C3A5908(&qword_27D9C0470, &unk_22C927AA0);
    if (sub_22C38C174())
    {
      v29 = sub_22C36E2BC(v6, v5);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_29;
      }

      v27 = v29;
    }

    v21 = v40;
    if ((v28 & 1) == 0)
    {
      v40[(v27 >> 6) + 8] |= 1 << v27;
      v31 = (v40[6] + 16 * v27);
      *v31 = v6;
      v31[1] = v5;
      *(v40[7] + v27) = v39;
      v32 = v40[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    }

    *(v40[7] + v27) = v39;
LABEL_23:
    v37 = *v3;

    *v3 = v21;
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t RelevantAppSet.RelevantApp.bundleId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RelevantAppSet.RelevantApp.bundleId.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RelevantAppSet.RelevantApp.Source.description.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((*v0 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  sub_22C590270();
  v2 = v3;
  v4 = *(v3 + 16);
  if (v4 >= *(v3 + 24) >> 1)
  {
    sub_22C378880();
    v2 = v10;
  }

  *(v2 + 16) = v4 + 1;
  v5 = v2 + 16 * v4;
  strcpy((v5 + 32), ".inForeground");
  *(v5 + 46) = -4864;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = *(v2 + 16);
      sub_22C590270();
      v2 = v12;
    }

    v6 = *(v2 + 16);
    if (v6 >= *(v2 + 24) >> 1)
    {
      sub_22C378880();
      v2 = v13;
    }

    *(v2 + 16) = v6 + 1;
    v7 = v2 + 16 * v6;
    *(v7 + 32) = 0x74614D6E6170732ELL;
    *(v7 + 40) = 0xEA00000000006863;
  }

LABEL_12:
  sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
  sub_22C3F035C();
  v8 = sub_22C90A04C();

  return v8;
}

void sub_22C80E81C(_BYTE *a1@<X8>, unsigned __int8 *a2@<X0>)
{
  v3 = *v2;
  v4 = *a2;
  sub_22C80E828(a1);
}

uint64_t sub_22C80E858@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *v2;
  if ((*v2 & result) != 0)
  {
    *v2 = v3 & ~result;
  }

  *a2 = v3 & result;
  a2[1] = (v3 & result) == 0;
  return result;
}

uint64_t sub_22C80E88C@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *v2;
  v4 = *v2 & result;
  *v2 |= result;
  *a2 = v4;
  a2[1] = (v3 & result) == 0;
  return result;
}

uint64_t sub_22C80E97C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = RelevantAppSet.RelevantApp.Source.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  a2[1] = 0;
  return result;
}

uint64_t sub_22C80E9BC@<X0>(_BYTE *a1@<X8>)
{
  result = RelevantAppSet.RelevantApp.Source.rawValue.getter();
  *a1 = result;
  return result;
}

BOOL static RelevantAppSet.RelevantApp.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_22C90B4FC();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t RelevantAppSet.RelevantApp.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_22C909FFC();
  return sub_22C90B64C();
}

uint64_t RelevantAppSet.RelevantApp.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_22C90B62C();
  sub_22C909FFC();
  sub_22C90B64C();
  return sub_22C90B66C();
}

uint64_t sub_22C80EAF0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  sub_22C90B62C();
  RelevantAppSet.RelevantApp.hash(into:)();
  return sub_22C90B66C();
}

unint64_t sub_22C80EB54()
{
  result = qword_27D9C0450;
  if (!qword_27D9C0450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0450);
  }

  return result;
}

unint64_t sub_22C80EBAC()
{
  result = qword_27D9C0458;
  if (!qword_27D9C0458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0458);
  }

  return result;
}

unint64_t sub_22C80EC00()
{
  result = qword_27D9C0460;
  if (!qword_27D9C0460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0460);
  }

  return result;
}

unint64_t sub_22C80EC58()
{
  result = qword_27D9C0468;
  if (!qword_27D9C0468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0468);
  }

  return result;
}

unint64_t sub_22C80ECB0()
{
  result = qword_281434878;
  if (!qword_281434878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281434878);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RelevantAppSet.RelevantApp.Source(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 255) >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 255) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 255;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        return 0;
      }

      return (*a1 | (v4 << 8)) - 255;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 255;
    }
  }

  return 0;
}

_BYTE *storeEnumTagSinglePayload for RelevantAppSet.RelevantApp.Source(_BYTE *result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v6 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
        goto LABEL_19;
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
        break;
      case 2:
        *(result + 1) = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *(result + 1) = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_22C80EEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = sub_22C3A5908(v27, v25);
  sub_22C36985C(v31);
  v33 = *(v32 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v34);
  v36 = &a9 - v35;
  v37 = *v20;
  v38 = v20[1];
  v39 = *(*v20 + 16);
  if (v38 == v39)
  {
    sub_22C37A440();
    sub_22C36CC48();

    sub_22C36C640(v40, v41, v42, v43);
  }

  else
  {
    if (v38 >= v39)
    {
      __break(1u);
    }

    else
    {
      v45 = v24(0);
      v46 = *(v45 - 8);
      v47 = *(v46 + 16);
      v48 = v37 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v38;
      v20[1] = v38 + 1;
      v49 = *(v31 + 48);
      v50 = v20[2];
      *v36 = v50;
      v47(&v36[v49], v48, v45);
      if (!__OFADD__(v50, 1))
      {
        v20[2] = v50 + 1;
        sub_22C3D7EEC(v36, v30, v28, v26);
        sub_22C36C640(v30, 0, 1, v31);
        sub_22C36CC48();
        return;
      }
    }

    __break(1u);
  }
}

void sub_22C80F070()
{
  sub_22C36BA7C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_22C3A5908(v8, v6);
  sub_22C36985C(v12);
  v14 = *(v13 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v15);
  sub_22C37F478();
  v17 = *v0;
  v16 = v0[1];
  v18 = *(*v0 + 16);
  if (v16 == v18)
  {
    sub_22C37A440();
    sub_22C36CC48();

    sub_22C36C640(v19, v20, v21, v22);
  }

  else
  {
    if (v16 >= v18)
    {
      __break(1u);
    }

    else
    {
      v24 = v5(0);
      sub_22C3699B8(v24);
      v27 = v17 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v26 + 72) * v16;
      v0[1] = v16 + 1;
      v28 = *(v12 + 48);
      v29 = v0[2];
      *v1 = v29;
      sub_22C81215C(v27, v1 + v28, v3);
      if (!__OFADD__(v29, 1))
      {
        v0[2] = v29 + 1;
        sub_22C3D7EEC(v1, v11, v9, v7);
        sub_22C36C640(v11, 0, 1, v12);
        sub_22C36CC48();
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22C80F20C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C3A5908(&qword_27D9BFF60, &unk_22C927B40);
  sub_22C36985C(v3);
  v5 = *(v4 + 64);
  sub_22C36D5A8();
  result = MEMORY[0x28223BE20](v6);
  v9 = &v19 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = *(*v1 + 16);
  if (v11 == v12)
  {

    return sub_22C36C640(a1, 1, 1, v3);
  }

  else
  {
    if (v11 >= v12)
    {
      __break(1u);
    }

    else
    {
      v13 = sub_22C3A5908(&qword_27D9BAD80, &qword_22C90D628);
      v14 = *(v13 - 8);
      v15 = *(v14 + 16);
      v16 = v10 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v11;
      v1[1] = v11 + 1;
      v17 = *(v3 + 48);
      v18 = v1[2];
      *v9 = v18;
      result = v15(&v9[v17], v16, v13);
      if (!__OFADD__(v18, 1))
      {
        v1[2] = v18 + 1;
        sub_22C3D7EEC(v9, a1, &qword_27D9BFF60, &unk_22C927B40);
        return sub_22C36C640(a1, 0, 1, v3);
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22C80F388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_22C3A5908(&qword_27D9BDBE0, &qword_22C9275D0);
  sub_22C369914(v25);
  v27 = *(v26 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v28);
  v30 = &v114 - v29;
  v31 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v31);
  v33 = *(v32 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v34);
  v36 = &v114 - v35;
  v37 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  sub_22C369914(v37);
  v39 = *(v38 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v40);
  sub_22C37F478();
  v134 = sub_22C90355C();
  v41 = sub_22C369824(v134);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22C369838();
  v48 = v47 - v46;
  v49 = sub_22C90399C();
  v50 = sub_22C369824(v49);
  v52 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v50);
  sub_22C369838();
  v57 = v56 - v55;
  v58 = sub_22C3A5908(&qword_27D9C04B8, &unk_22C927B30);
  v59 = sub_22C369914(v58);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  sub_22C369ABC();
  v125 = v62 - v63;
  sub_22C369930();
  MEMORY[0x28223BE20](v64);
  sub_22C36BA64();
  v124 = v65;
  v143 = 0;
  v144 = 0xE000000000000000;
  v141 = 0;
  v142 = 0;
  v117 = (v52 + 32);
  v116 = v43 + 8;
  v115 = v52 + 8;
  v140 = v24;

  v123 = v30;
  v121 = v20;
  v119 = v49;
  v118 = v57;
  v122 = v36;
  v120 = v48;
  while (1)
  {
    sub_22C389300();
    v66 = v125;
    sub_22C80EEA0(&unk_27D9C02F8, &unk_22C927B20, v67, v68, v69, v70, v71, v72, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125);
    v73 = v124;
    sub_22C3D7EEC(v66, v124, &qword_27D9C04B8, &unk_22C927B30);
    v74 = sub_22C37335C();
    v76 = sub_22C3A5908(v74, v75);
    sub_22C36D0A8(v73, 1, v76);
    if (v89)
    {
      break;
    }

    v77 = *v73;
    (*v117)(v57, v73 + *(v76 + 48), v49);
    sub_22C90394C();
    v132 = sub_22C90390C();
    v79 = v78;
    sub_22C90391C();
    v80 = sub_22C9093BC();
    sub_22C36D0A8(v36, 1, v80);
    if (v89)
    {
      v81 = v36;
      v82 = &qword_27D9BB908;
      v83 = &qword_22C910960;
    }

    else
    {
      sub_22C90939C();
      sub_22C36BBA8(v80);
      v85 = *(v84 + 8);
      v86 = sub_22C372FCC();
      v87(v86);
      v88 = sub_22C90993C();
      sub_22C36D0A8(v20, 1, v88);
      if (!v89)
      {
        v130 = sub_22C90987C();
        v135 = v90;
        sub_22C36BBA8(v88);
        (*(v91 + 8))(v20, v88);
        goto LABEL_10;
      }

      v81 = v20;
      v82 = &qword_27D9BC390;
      v83 = &qword_22C912AC0;
    }

    sub_22C36DD28(v81, v82, v83);
    v130 = 0;
    v135 = 0xE000000000000000;
LABEL_10:
    sub_22C90397C();
    v92 = sub_22C9038BC();
    sub_22C36D0A8(v30, 1, v92);
    if (v89)
    {
      sub_22C36DD28(v30, &qword_27D9BDBE0, &qword_22C9275D0);
      v128 = 0;
      v133 = 0xE000000000000000;
    }

    else
    {
      v93 = sub_22C90385C();
      sub_22C36BBA8(v92);
      (*(v94 + 8))(v30, v92);
      v95 = 0x657463656C657323;
      if ((v93 & 1) == 0)
      {
        v95 = 0;
      }

      v128 = v95;
      v96 = 0xE900000000000064;
      if ((v93 & 1) == 0)
      {
        v96 = 0xE000000000000000;
      }

      v133 = v96;
    }

    v138 = 0;
    v139 = 0xE000000000000000;
    sub_22C90B12C();
    v97 = v138;
    v98 = v139;
    v129 = v139;
    v138 = v77;
    v138 = sub_22C90B47C();
    v139 = v99;
    v136 = 32;
    v137 = 0xE100000000000000;
    sub_22C3858B4();
    v127 = sub_22C90AD7C();
    v101 = v100;

    v138 = v132;
    v139 = v79;
    v131 = v79;
    sub_22C8121EC();
    v132 = sub_22C372E5C();
    v103 = v102;
    v138 = v97;
    v139 = v98;
    sub_22C8121EC();
    v126 = sub_22C372E5C();
    v105 = v104;
    v138 = v130;
    v139 = v135;
    sub_22C8121EC();
    v130 = sub_22C372E5C();
    v107 = v106;
    v138 = v128;
    v139 = v133;
    sub_22C8121EC();
    sub_22C372E5C();
    v138 = 0;
    v139 = 0xE000000000000000;
    sub_22C90AF5C();

    v138 = 8202;
    v139 = 0xE200000000000000;
    MEMORY[0x2318B7850](v127, v101);
    v108 = v120;

    sub_22C37B824();
    MEMORY[0x2318B7850](v132, v103);

    sub_22C37B824();
    MEMORY[0x2318B7850](v126, v105);

    sub_22C37B824();
    MEMORY[0x2318B7850](v130, v107);

    sub_22C37B824();
    v109 = sub_22C36D384();
    MEMORY[0x2318B7850](v109);

    v110 = v138;
    v111 = v139;

    MEMORY[0x2318B7850](v110, v111);

    sub_22C36BA4C(&a11);
    v112(v108, v134);
    sub_22C36BA4C(&a10);
    v57 = v118;
    v49 = v119;
    v113(v118, v119);
    v30 = v123;
    v36 = v122;
    v20 = v121;
  }

  sub_22C36CC48();
}

void static QueryDecorationLoggingUtils.generateReadableToolList(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v139 = sub_22C9037DC();
  v24 = sub_22C369824(v139);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22C369838();
  v138 = v30 - v29;
  sub_22C36BA0C();
  v137 = sub_22C90377C();
  v31 = sub_22C369824(v137);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22C369838();
  v136 = v37 - v36;
  v38 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  sub_22C369914(v38);
  v40 = *(v39 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v41);
  sub_22C36D5B4();
  v121 = v42;
  v43 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  sub_22C369914(v43);
  v45 = *(v44 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v46);
  sub_22C36D5B4();
  v120 = v47;
  sub_22C36BA0C();
  v48 = sub_22C9036EC();
  v49 = sub_22C369824(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v49);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v54);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v55);
  sub_22C36BA58();
  v134 = v56;
  sub_22C369930();
  MEMORY[0x28223BE20](v57);
  sub_22C36BA64();
  v133 = v58;
  sub_22C36BA0C();
  v59 = type metadata accessor for RetrievedToolWithAttribution();
  v60 = sub_22C3699B8(v59);
  v123 = v61;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v60);
  sub_22C369838();
  v66 = v65 - v64;
  v67 = sub_22C3A5908(&qword_27D9C0478, &qword_22C927AB0);
  sub_22C36985C(v67);
  v69 = *(v68 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v70);
  sub_22C36D5B4();
  v122 = v71;
  v72 = sub_22C3A5908(&qword_27D9C0480, &qword_22C927AB8);
  v73 = sub_22C369914(v72);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73);
  sub_22C369ABC();
  v78 = v76 - v77;
  MEMORY[0x28223BE20](v79);
  v81 = (&v119 - v80);
  v143 = 0;
  v144 = 0xE000000000000000;
  v82 = *(v23 + 16);
  v128 = (v51 + 88);
  v129 = (v51 + 32);
  v127 = *MEMORY[0x277D1ECE8];
  v140 = (v51 + 8);
  v126 = (v26 + 8);
  v125 = v33 + 8;
  v124 = v23;

  v83 = 0;
  v135 = v48;
  v130 = v82;
  v131 = v78;
  v132 = v67;
  while (1)
  {
    if (v83 == v82)
    {
      v84 = 1;
      v83 = v82;
      goto LABEL_7;
    }

    if (v83 >= v82)
    {
      break;
    }

    if (__OFADD__(v83, 1))
    {
      goto LABEL_20;
    }

    sub_22C37054C();
    v87 = v124 + v85 + *(v86 + 72) * v83;
    v88 = *(v67 + 48);
    v89 = v122;
    *v122 = v83;
    sub_22C81215C(v87, v89 + v88, type metadata accessor for RetrievedToolWithAttribution);
    sub_22C3D7EEC(v89, v78, &qword_27D9C0478, &qword_22C927AB0);
    v84 = 0;
    ++v83;
LABEL_7:
    sub_22C375BB4(v78, v84);
    sub_22C3D7EEC(v78, v81, &qword_27D9C0480, &qword_22C927AB8);
    sub_22C3788A4(v81);
    v90 = v140;
    if (v91)
    {

      sub_22C36CC48();
      return;
    }

    v92 = *v81;
    sub_22C7C615C(v81 + *(v67 + 48), v66);
    v93 = v133;
    sub_22C90371C();
    v94 = v134;
    (*v129)(v134, v93, v48);
    LODWORD(v93) = (*v128)(v94, v48);
    v95 = *v90;
    (*v90)(v94, v48);
    if (v93 == v127)
    {
      sub_22C370208(&a11);
      sub_22C90371C();
      v96 = v120;
      sub_22C57709C();
      v97 = sub_22C372FCC();
      v95(v97);
      sub_22C9099FC();
      sub_22C3788A4(v96);
      if (v91)
      {
        v98 = v96;
        v99 = &qword_27D9BDC50;
        v100 = &unk_22C91B470;
LABEL_15:
        sub_22C36DD28(v98, v99, v100);
        v103 = 0xE300000000000000;
        v104 = 7104878;
        goto LABEL_17;
      }

      v105 = sub_22C9099DC();
    }

    else
    {
      sub_22C370208(&a12);
      sub_22C90371C();
      v101 = v121;
      sub_22C9036BC();
      v102 = sub_22C372FCC();
      v95(v102);
      sub_22C908EAC();
      sub_22C3788A4(v101);
      if (v91)
      {
        v98 = v101;
        v99 = &qword_27D9BC1E8;
        v100 = &qword_22C9123B0;
        goto LABEL_15;
      }

      v105 = sub_22C908E7C();
    }

    v104 = v105;
    v103 = v106;
    sub_22C371E5C();
    (*(v107 + 8))();
LABEL_17:
    v108 = v136;
    sub_22C90378C();
    v141 = v92;
    v109 = sub_22C90B47C();
    sub_22C376A64(v109, v110);
    sub_22C3829BC();
    v111 = sub_22C90AD7C();
    v113 = v112;

    sub_22C36D258();
    sub_22C90AF5C();
    sub_22C36FEC0();
    MEMORY[0x2318B7850](v111, v113);

    sub_22C38C194();
    MEMORY[0x2318B7850](v104, v103);

    MEMORY[0x2318B7850](0x203A656761747320, 0xE800000000000000);
    v114 = v137;
    sub_22C90B12C();
    MEMORY[0x2318B7850](0x3A656372756F7320, 0xE900000000000020);
    v115 = v138;
    sub_22C90379C();
    sub_22C8102B8();
    v116 = v139;
    v117 = sub_22C90B47C();
    MEMORY[0x2318B7850](v117);

    (*v126)(v115, v116);
    MEMORY[0x2318B7850](v141, v142);

    sub_22C36BA4C(&a18);
    v118(v108, v114);
    sub_22C7C6100(v66);
    v48 = v135;
    v78 = v131;
    v67 = v132;
    v82 = v130;
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

unint64_t sub_22C8102B8()
{
  result = qword_27D9C0488;
  if (!qword_27D9C0488)
  {
    sub_22C9037DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0488);
  }

  return result;
}

uint64_t static QueryDecorationLoggingUtils.generateReadableToolList(_:)(uint64_t a1)
{
  v97 = sub_22C90377C();
  v3 = sub_22C369824(v97);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v96 = v9 - v8;
  v10 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  sub_22C369914(v10);
  v12 = *(v11 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  sub_22C37F478();
  v14 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  sub_22C369914(v14);
  v16 = *(v15 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v17);
  sub_22C36D5B4();
  v82 = v18;
  sub_22C36BA0C();
  v19 = sub_22C9036EC();
  v20 = sub_22C369824(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v25);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v26);
  sub_22C36BA58();
  v93 = v27;
  sub_22C369930();
  MEMORY[0x28223BE20](v28);
  sub_22C36BA64();
  v92 = v29;
  sub_22C36BA0C();
  v30 = sub_22C9037EC();
  v31 = sub_22C369824(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22C369838();
  v38 = v37 - v36;
  v39 = sub_22C3A5908(&qword_27D9C0490, &qword_22C927AC0);
  v40 = sub_22C369914(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22C369ABC();
  v98 = v43 - v44;
  sub_22C369930();
  MEMORY[0x28223BE20](v45);
  v47 = (v81 - v46);
  sub_22C36D258();
  v103 = 0;
  v104 = 0;
  v102 = a1;
  v89 = (v22 + 32);
  v90 = (v33 + 32);
  v88 = (v22 + 88);
  HIDWORD(v87) = *MEMORY[0x277D1ECE8];
  v48 = (v22 + 8);
  v85 = v5 + 8;
  v84 = v33 + 8;

  v94 = v19;
  v95 = v1;
  v86 = (v22 + 8);
  v83 = v47;
  v91 = v30;
  while (1)
  {
    v54 = v98;
    sub_22C80EEA0(&qword_27D9C0498, &qword_22C927AC8, MEMORY[0x277D1ED90], v49, v50, v51, v52, v53, v81[0], v81[1], v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
    sub_22C3D7EEC(v54, v47, &qword_27D9C0490, &qword_22C927AC0);
    v55 = sub_22C3A5908(&qword_27D9C0498, &qword_22C927AC8);
    sub_22C36D0A8(v47, 1, v55);
    if (v56)
    {
      break;
    }

    v99 = *v47;
    (*v90)(v38, v47 + *(v55 + 48), v30);
    sub_22C90371C();
    v57 = *v89;
    v58 = sub_22C372FCC();
    v59(v58);
    v60 = *v88;
    v61 = sub_22C36D384();
    v63 = v62(v61);
    v64 = *v48;
    v65 = sub_22C36D384();
    v64(v65);
    if (v63 == HIDWORD(v87))
    {
      sub_22C370208(&v106);
      sub_22C90371C();
      v1 = v82;
      sub_22C57709C();
      v66 = sub_22C36D384();
      v64(v66);
      v67 = sub_22C9099FC();
      sub_22C3788A4(v1);
      if (v56)
      {
        v68 = v1;
        v69 = &qword_27D9BDC50;
        v70 = &unk_22C91B470;
LABEL_10:
        sub_22C36DD28(v68, v69, v70);
        goto LABEL_12;
      }

      sub_22C9099DC();
    }

    else
    {
      sub_22C370208(&v107);
      sub_22C90371C();
      sub_22C9036BC();
      v71 = sub_22C36D384();
      v64(v71);
      v67 = sub_22C908EAC();
      sub_22C3788A4(v1);
      if (v56)
      {
        v68 = v1;
        v69 = &qword_27D9BC1E8;
        v70 = &qword_22C9123B0;
        goto LABEL_10;
      }

      sub_22C908E7C();
    }

    sub_22C371E5C();
    (*(v72 + 8))(v1, v67);
LABEL_12:
    sub_22C90373C();
    v73 = v96;
    sub_22C90378C();
    v100 = 0;
    v101 = 0xE000000000000000;
    sub_22C90A89C();
    v100 = 0;
    v101 = 0xE000000000000000;
    v74 = v97;
    sub_22C90B12C();
    v75 = sub_22C8114CC();
    v77 = v76;

    MEMORY[0x2318B7850](v75, v77);

    sub_22C36BA4C(&v109);
    v78(v73, v74);
    sub_22C36BA4C(&v108);
    v30 = v91;
    v79(v38, v91);
    v1 = v95;
    v48 = v86;
    v47 = v83;
  }

  return v105;
}

void static QueryDecorationLoggingUtils.generateReadableDynamicEnumerationEntities(_:)()
{
  sub_22C36BA7C();
  v1 = v0;
  v59 = sub_22C9093BC();
  v2 = sub_22C369824(v59);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v58 = v8 - v7;
  sub_22C36BA0C();
  v61 = sub_22C903E2C();
  v9 = sub_22C369824(v61);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v57 = v15 - v14;
  v16 = sub_22C3A5908(&qword_27D9C04A0, &qword_22C927AD0);
  sub_22C36985C(v16);
  v18 = *(v17 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v19);
  sub_22C36D5B4();
  v50 = v20;
  v21 = sub_22C3A5908(&qword_27D9C04A8, &qword_22C927AD8);
  v22 = sub_22C369914(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22C369ABC();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  sub_22C36BA64();
  v60 = v29;
  v30 = 0;
  v54 = (v4 + 8);
  v55 = (v11 + 32);
  v51 = v1;
  v31 = *(v1 + 16);
  v56 = v27;
  v52 = v31;
  for (i = (v11 + 8); ; (*i)(v57, v61))
  {
    if (v30 == v31)
    {
      v32 = 1;
      v33 = v31;
      goto LABEL_7;
    }

    if (v30 >= v31)
    {
      break;
    }

    v33 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      goto LABEL_11;
    }

    sub_22C37054C();
    v36 = v51 + v34 + *(v35 + 72) * v30;
    v37 = *(v16 + 48);
    *v50 = v30;
    (*(v35 + 16))(&v50[v37], v36, v61);
    sub_22C3D7EEC(v50, v27, &qword_27D9C04A0, &qword_22C927AD0);
    v32 = 0;
LABEL_7:
    sub_22C36C640(v27, v32, 1, v16);
    sub_22C3D7EEC(v27, v60, &qword_27D9C04A8, &qword_22C927AD8);
    sub_22C36D0A8(v60, 1, v16);
    if (v38)
    {
      sub_22C36CC48();
      return;
    }

    v39 = *v60;
    (*v55)(v57, &v60[*(v16 + 48)], v61);
    v40 = sub_22C90381C();
    v42 = v41;
    sub_22C903E0C();
    v43 = sub_22C90B47C();
    sub_22C376A64(v43, v44);
    sub_22C3829BC();
    v45 = v16;
    v46 = sub_22C90AD7C();
    v48 = v47;

    sub_22C36D258();
    sub_22C90AF5C();
    sub_22C36FEC0();
    v49 = v46;
    v16 = v45;
    MEMORY[0x2318B7850](v49, v48);

    sub_22C38C194();
    MEMORY[0x2318B7850](v40, v42);
    v27 = v56;

    sub_22C8121BC();
    sub_22C90B12C();
    MEMORY[0x2318B7850](v39);
    v31 = v52;

    (*v54)(v58, v59);
    v30 = v33;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t static QueryDecorationLoggingUtils.timeOperation<A>(_:)(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = sub_22C90B09C();
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  sub_22C382E94();
  v13 = sub_22C90B0BC();
  v14 = sub_22C369824(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v21 = v20 - v19;
  sub_22C90B0AC();
  v22 = sub_22C90B07C();
  a2(v22);
  if (v26)
  {
    (*(v6 + 8))(v2, v3);
    return (*(v16 + 8))(v21, v13);
  }

  else
  {
    sub_22C90B07C();
    v27 = sub_22C90B08C();
    v24 = *(v6 + 8);
    v24(v11, v3);
    v24(v2, v3);
    (*(v16 + 8))(v21, v13);
    return v27;
  }
}

uint64_t static QueryDecorationLoggingUtils.timeOperation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_22C90B09C();
  v3[5] = v4;
  sub_22C3699B8(v4);
  v3[6] = v5;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v8 = sub_22C90B0BC();
  v3[9] = v8;
  sub_22C3699B8(v8);
  v3[10] = v9;
  v11 = *(v10 + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8110D4, 0, 0);
}

uint64_t sub_22C8110D4()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[3];
  sub_22C90B0AC();
  sub_22C90B07C();
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_22C8111E8;
  v6 = v0[4];
  v7 = v0[2];

  return v9(v7);
}

uint64_t sub_22C8111E8()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_22C81140C;
  }

  else
  {
    v3 = sub_22C8112FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22C8112FC()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  sub_22C90B07C();
  v13 = sub_22C90B08C();
  v9 = v8;
  v10 = *(v6 + 8);
  v10(v5, v7);
  v10(v4, v7);
  (*(v2 + 8))(v1, v3);

  v11 = v0[1];

  return v11(v13, v9);
}

uint64_t sub_22C81140C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[7];
  (*(v0[6] + 8))(v0[8], v0[5]);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];
  v6 = v0[13];

  return v5();
}

uint64_t sub_22C8114CC()
{
  sub_22C90B47C();
  sub_22C3858B4();
  v0 = sub_22C90AD7C();
  v15 = v1;
  v16 = v0;

  v14 = sub_22C90AD7C();
  v3 = v2;
  v4 = sub_22C90AD7C();
  v6 = v5;
  v7 = sub_22C90AD7C();
  v9 = v8;
  v10 = sub_22C90AD7C();
  v12 = v11;
  sub_22C90AF5C();

  MEMORY[0x2318B7850](v16, v15);

  MEMORY[0x2318B7850](32, 0xE100000000000000);
  MEMORY[0x2318B7850](v14, v3);

  MEMORY[0x2318B7850](32, 0xE100000000000000);
  MEMORY[0x2318B7850](v4, v6);

  MEMORY[0x2318B7850](32, 0xE100000000000000);
  MEMORY[0x2318B7850](v7, v9);

  MEMORY[0x2318B7850](32, 0xE100000000000000);
  MEMORY[0x2318B7850](v10, v12);

  return 8202;
}

uint64_t static QueryDecorationLoggingUtils.generateReadableSpans(_:)(uint64_t a1)
{
  v3 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v3);
  v5 = *(v4 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  v8 = v77 - v7;
  v9 = sub_22C3A5908(&qword_27D9BDA90, &unk_22C91A460);
  v10 = sub_22C369914(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369ABC();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  sub_22C382E94();
  v17 = sub_22C9039FC();
  v18 = sub_22C369824(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v25 = v24 - v23;
  v26 = sub_22C3A5908(&qword_27D9C0300, &qword_22C926C50);
  sub_22C36985C(v26);
  v28 = *(v27 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v29);
  sub_22C36D5B4();
  v78 = v30;
  v31 = sub_22C3A5908(&qword_27D9C04B0, &unk_22C927AF0);
  v32 = sub_22C369914(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C369ABC();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = (v77 - v39);
  sub_22C36D258();
  v90 = *(a1 + 16);
  v77[1] = v20 + 16;
  v82 = (v20 + 32);
  v79 = v20;
  v80 = a1;
  v81 = (v20 + 8);

  v42 = 0;
  v88 = v15;
  v89 = v8;
  v83 = v40;
  v84 = v37;
  v86 = v17;
  v87 = v1;
  v85 = v26;
  while (1)
  {
    if (v42 == v90)
    {
      v43 = 1;
      v92 = v90;
      goto LABEL_7;
    }

    if (v42 >= v90)
    {
      break;
    }

    v44 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      goto LABEL_26;
    }

    sub_22C37054C();
    v48 = v80 + v45 + *(v46 + 72) * v47;
    v49 = *(v26 + 48);
    v50 = v78;
    *v78 = v47;
    (*(v46 + 16))(v50 + v49, v48, v17);
    sub_22C3D7EEC(v50, v37, &qword_27D9C0300, &qword_22C926C50);
    v43 = 0;
    v92 = v44;
LABEL_7:
    sub_22C375BB4(v37, v43);
    sub_22C3D7EEC(v37, v40, &qword_27D9C04B0, &unk_22C927AF0);
    sub_22C3788A4(v40);
    if (v51)
    {

      return v97;
    }

    v52 = *v40;
    (*v82)(v25, v40 + *(v26 + 48), v17);
    v53 = sub_22C9039DC();
    v54 = *(v53 + 16);
    v55 = sub_22C90361C();
    if (v54)
    {
      sub_22C371E5C();
      (*(v56 + 16))(v1, v53 + ((*(v56 + 80) + 32) & ~*(v56 + 80)), v55);
      v57 = 0;
    }

    else
    {
      v57 = 1;
    }

    sub_22C375BB4(v1, v57);

    sub_22C3788A4(v1);
    if (v51)
    {
      sub_22C36DD28(v1, &qword_27D9BDA90, &unk_22C91A460);
      v91 = 0;
      v59 = 0xE000000000000000;
    }

    else
    {
      v91 = sub_22C9035FC();
      v59 = v58;
      sub_22C371E5C();
      (*(v60 + 8))(v1, v55);
    }

    sub_22C9039CC();
    v61 = sub_22C9093BC();
    sub_22C36D0A8(v8, 1, v61);
    if (v51)
    {
      sub_22C36DD28(v8, &qword_27D9BB908, &qword_22C910960);
      v62 = 0;
      v64 = 0xE000000000000000;
    }

    else
    {
      v62 = sub_22C90938C();
      v64 = v63;
      sub_22C36BBA8(v61);
      (*(v65 + 8))(v8, v61);
    }

    v66 = sub_22C9039DC();
    if (*(v66 + 16))
    {
      sub_22C371E5C();
      (*(v67 + 16))(v15, v66 + ((*(v67 + 80) + 32) & ~*(v67 + 80)), v55);
      v68 = 0;
    }

    else
    {
      v68 = 1;
    }

    sub_22C375BB4(v15, v68);

    sub_22C3788A4(v15);
    if (v51)
    {
      sub_22C36DD28(v15, &qword_27D9BDA90, &unk_22C91A460);
      v70 = 0;
      v72 = 0xE000000000000000;
    }

    else
    {
      sub_22C90358C();
      sub_22C371E5C();
      (*(v69 + 8))(v15, v55);
      v70 = sub_22C90A88C();
      v72 = v71;
    }

    v95 = v52;
    v95 = sub_22C90B47C();
    v96 = v73;
    v93 = 32;
    v94 = 0xE100000000000000;
    sub_22C3858B4();
    v74 = sub_22C90AD7C();
    v76 = v75;

    v95 = 0;
    v96 = 0xE000000000000000;
    sub_22C90AF5C();

    v95 = 8202;
    v96 = 0xE200000000000000;
    MEMORY[0x2318B7850](v74, v76);

    sub_22C38C194();
    MEMORY[0x2318B7850](v91, v59);

    sub_22C8121BC();
    MEMORY[0x2318B7850](v62, v64);

    MEMORY[0x2318B7850](0x203A65726F637320, 0xE800000000000000);
    MEMORY[0x2318B7850](v70, v72);

    MEMORY[0x2318B7850](v95, v96);

    v17 = v86;
    result = (*v81)(v25, v86);
    v15 = v88;
    v8 = v89;
    v1 = v87;
    v37 = v84;
    v26 = v85;
    v40 = v83;
    v42 = v92;
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for QueryDecorationLoggingUtils(_BYTE *result, int a2, int a3)
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

uint64_t sub_22C81215C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22C36985C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

void sub_22C8121BC()
{

  JUMPOUT(0x2318B7850);
}

void TypeIdentifier.selfLoggingTypeName.getter()
{
  sub_22C36BA7C();
  v3 = sub_22C9094EC();
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  sub_22C37B6BC();
  v9 = sub_22C9094CC();
  v10 = sub_22C369824(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  sub_22C37BDA4();
  v15 = sub_22C90952C();
  v16 = sub_22C369824(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  sub_22C370654();
  TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v2);
  v21 = v18[11];
  v22 = sub_22C371510();
  v24 = v23(v22);
  if (v24 == *MEMORY[0x277D72D50])
  {
    v25 = v18[12];
    v26 = sub_22C371510();
    v27(v26);
    v28 = *v2;
    swift_projectBox();
    sub_22C63489C();
    v29(v0);
    TypeIdentifier.PrimitiveTypeIdentifier.selfLoggingTypeName.getter();
    (*(v6 + 8))(v0, v3);
  }

  else if (v24 == *MEMORY[0x277D72D30])
  {
    v30 = v18[12];
    v31 = sub_22C371510();
    v32(v31);
    v33 = *v2;
    v34 = swift_projectBox();
    (*(v12 + 16))(v1, v34, v9);
    TypeIdentifier.BuiltInTypeIdentifier.selfLoggingTypeName.getter();
    v35 = *(v12 + 8);
    v36 = sub_22C36EBF0();
    v37(v36);
  }

  else
  {
    if (v24 != *MEMORY[0x277D72D28])
    {
      v43 = v18[1];
      v44 = sub_22C371510();
      v45(v44);
      sub_22C375BCC();
      goto LABEL_8;
    }

    v38 = v18[12];
    v39 = sub_22C371510();
    v40(v39);
    v41 = *(*v2 + 32);
    v42 = *(*v2 + 40);
  }

LABEL_8:
  sub_22C36CC48();
}

uint64_t sub_22C8124CC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22C90A33C();
    sub_22C90A4AC();
    sub_22C8236DC();
    return sub_22C37170C();
  }

  return result;
}

uint64_t sub_22C8125CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = sub_22C57D74C(a2);
    v7 = v6;
    v9 = v8;
    v10 = 1 << *(a2 + 32);
    v11 = *(a2 + 36);
    v12 = sub_22C821E60(v5, v6, v8 & 1, v4, v10, *(a2 + 36), 0, a2);
    v14 = v13;
    v16 = v15;
    v17 = ~v15;
    sub_22C3A5038(v10, v11, 0);
    sub_22C3A5038(v5, v7, v9 & 1);
    if (!v17)
    {
      v16 = 0;
      v12 = 1 << *(a2 + 32);
      v14 = *(a2 + 36);
    }

    result = sub_22C57D74C(a2);
    if (v16 & 1) != 0 || (v19)
    {
      goto LABEL_12;
    }

    if (v14 == v18)
    {
      if (v12 >= result)
      {
        v24[0] = result;
        v24[1] = v18;
        v25 = 0;
        v26 = v12;
        v27 = v14;
        v28 = 0;
        sub_22C822038(v24, a2, v22);

        v20 = v22[1];
        *a3 = v22[0];
        *(a3 + 16) = v20;
        *(a3 + 32) = v22[2];
        *(a3 + 48) = v23;
        return result;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_22C812750(uint64_t result, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t), void (*a4)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = a3(0, result, v5, a2);
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = result;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      a4(0);
      sub_22C8236DC();
      return sub_22C37170C();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C8127DC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 16);
    return a2;
  }

  return result;
}

uint64_t TypeIdentifier.PrimitiveTypeIdentifier.selfLoggingTypeName.getter()
{
  v0 = sub_22C9094EC();
  v1 = sub_22C369824(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v8 = (v7 - v6);
  v9 = v3[2];
  v10 = sub_22C37170C();
  v11(v10);
  v12 = v3[11];
  v13 = sub_22C36BBCC();
  v15 = v14(v13);
  if (v15 == *MEMORY[0x277D72C50])
  {
    v16 = v3[12];
    v17 = sub_22C36BBCC();
    v18(v17);
    v19 = *v8;
    strcpy(v27, "measurement<");
    BYTE5(v27[1]) = 0;
    HIWORD(v27[1]) = -5120;
    if (v19 == 22)
    {
      v20 = 7104878;
      v21 = 0xE300000000000000;
    }

    else
    {
      v20 = TypeIdentifier.MeasurementUnitType.selfLoggingTypeName.getter(v19);
      v21 = v23;
    }

    MEMORY[0x2318B7850](v20, v21);

    sub_22C8236C4();
    return v27[0];
  }

  else if (v15 == *MEMORY[0x277D72CC8])
  {
    return 1701736302;
  }

  else if (v15 == *MEMORY[0x277D72CB0])
  {
    return 1819242338;
  }

  else if (v15 == *MEMORY[0x277D72CA0])
  {
    return 7630441;
  }

  else if (v15 == *MEMORY[0x277D72CD0])
  {
    return 0x7265626D756ELL;
  }

  else if (v15 == *MEMORY[0x277D72CE8])
  {
    return 0x6C616D69636564;
  }

  else if (v15 == *MEMORY[0x277D72CE0])
  {
    return 0x676E69727473;
  }

  else if (v15 == *MEMORY[0x277D72CB8])
  {
    return 1702125924;
  }

  else if (v15 == *MEMORY[0x277D72C70])
  {
    return 0x706D6F4365746164;
  }

  else if (v15 == *MEMORY[0x277D72CA8])
  {
    return 7107189;
  }

  else if (v15 == *MEMORY[0x277D72C40])
  {
    return 0x616E6F6974636964;
  }

  else if (v15 == *MEMORY[0x277D72C88])
  {
    return 0xD000000000000010;
  }

  else if (v15 == *MEMORY[0x277D72C68])
  {
    return 0x79636E6572727563;
  }

  else if (v15 == *MEMORY[0x277D72C60])
  {
    return 0x4D746E656D796170;
  }

  else if (v15 == *MEMORY[0x277D72D00])
  {
    return 0x72616D6563616C70;
  }

  else if (v15 == *MEMORY[0x277D72CD8])
  {
    return 0x6E6F73726570;
  }

  else if (v15 == *MEMORY[0x277D72CC0])
  {
    return 1701603686;
  }

  else if (v15 == *MEMORY[0x277D72C98])
  {
    return 7368801;
  }

  else if (v15 == *MEMORY[0x277D72C80])
  {
    return 0x6261686372616573;
  }

  else if (v15 == *MEMORY[0x277D72C48])
  {
    return 0x4673746E65746E69;
  }

  else
  {
    v24 = v3[1];
    v25 = sub_22C36BBCC();
    v26(v25);
    return 0xD000000000000010;
  }
}

uint64_t QueryDecorationSELFLogging.logSubComponentExecution<A>(_:_:)()
{
  sub_22C369980();
  v3 = v2;
  v1[12] = v4;
  v1[13] = v0;
  v1[10] = v5;
  v1[11] = v2;
  v1[8] = v6;
  v1[9] = v7;
  v1[6] = v8;
  v1[7] = v9;
  v10 = sub_22C905A5C();
  v1[14] = v10;
  sub_22C3699B8(v10);
  v1[15] = v11;
  v13 = *(v12 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v14 = sub_22C9063DC();
  v1[18] = v14;
  sub_22C3699B8(v14);
  v1[19] = v15;
  v17 = *(v16 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v18 = *(v3 - 8);
  v1[22] = v18;
  v19 = *(v18 + 64);
  v1[23] = sub_22C3699D4();
  v20 = sub_22C90622C();
  v1[24] = v20;
  sub_22C3699B8(v20);
  v1[25] = v21;
  v23 = *(v22 + 64);
  v1[26] = sub_22C3699D4();
  v24 = sub_22C90B0EC();
  v1[27] = v24;
  sub_22C3699B8(v24);
  v1[28] = v25;
  v27 = *(v26 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v28 = sub_22C90B10C();
  v1[36] = v28;
  sub_22C3699B8(v28);
  v1[37] = v29;
  v31 = *(v30 + 64);
  v1[38] = sub_22C3699D4();
  v32 = sub_22C90069C();
  v1[39] = v32;
  sub_22C3699B8(v32);
  v1[40] = v33;
  v35 = *(v34 + 64);
  v1[41] = sub_22C3699D4();

  return MEMORY[0x2822009F8](sub_22C812FCC, 0, 0);
}

uint64_t sub_22C812FCC()
{
  v1 = v0[41];
  v2 = v0[38];
  v3 = v0[35];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[12];
  v16 = v0[13];
  v17 = v0[24];
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];
  sub_22C90068C();
  sub_22C90B0FC();
  sub_22C90B0CC();
  sub_22C90621C();
  (*(v6 + 72))(v8, v1, v4, v7, v6);
  v10 = *(v5 + 8);
  v0[42] = v10;
  v0[43] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v4, v17);
  v18 = (v9 + *v9);
  v11 = v9[1];
  v12 = swift_task_alloc();
  v0[44] = v12;
  *v12 = v0;
  v12[1] = sub_22C813170;
  v13 = v0[23];
  v14 = v0[9];

  return v18(v13);
}

uint64_t sub_22C813170()
{
  sub_22C369980();
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_22C8137C8;
  }

  else
  {
    v3 = sub_22C813280;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22C813280()
{
  v81 = v0;
  v63 = v0[42];
  v65 = v0[43];
  v57 = v0[41];
  v1 = v0[38];
  v2 = v0[34];
  v74 = v0[35];
  v71 = v0[33];
  v77 = v0[32];
  v3 = v0[28];
  v68 = v0[27];
  v4 = v0[26];
  v5 = v0[21];
  v6 = v0[15];
  v59 = v0[14];
  v61 = v0[17];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[10];
  v53 = v0[7];
  v55 = v0[24];
  (*(v0[22] + 32))(v0[6], v0[23], v0[11]);
  sub_22C90B0CC();
  sub_22C90621C();
  (*(v8 + 80))(v57, v4, v9, v8);
  v63(v4, v55);
  sub_22C90400C();
  (*(v6 + 16))(v61, v53, v59);
  v10 = *(v3 + 16);
  v10(v71, v74, v68);
  v10(v77, v2, v68);
  v11 = sub_22C9063CC();
  v54 = sub_22C90AABC();
  v12 = os_log_type_enabled(v11, v54);
  v13 = v0[40];
  v14 = v0[41];
  v78 = v0[39];
  v72 = v0[38];
  v75 = v0[37];
  v66 = v0[35];
  v69 = v0[36];
  v56 = v0[32];
  v58 = v0[33];
  v15 = v0[27];
  v16 = v0[28];
  v62 = v0[21];
  v64 = v0[34];
  v17 = v0[19];
  v60 = v0[18];
  v18 = v0[17];
  v20 = v0[14];
  v19 = v0[15];
  if (v12)
  {
    sub_22C370220();
    v52 = v13;
    v21 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v21 = 136315650;
    *(v21 + 4) = sub_22C36F9F4(0xD00000000000001ELL, 0x800000022C936220, &v80);
    *(v21 + 12) = 2080;
    sub_22C36A414();
    sub_22C82362C(v22, v23);
    sub_22C90B47C();
    v24 = *(v19 + 8);
    v25 = sub_22C37170C();
    v26(v25);
    v27 = sub_22C37FF30();
    v30 = sub_22C36F9F4(v27, v28, v29);

    *(v21 + 14) = v30;
    *(v21 + 22) = 2080;
    sub_22C90B08C();
    sub_22C90B73C();
    v31 = *(v16 + 8);
    v31(v56, v15);
    v31(v58, v15);
    v32 = sub_22C37170C();
    v35 = sub_22C36F9F4(v32, v33, v34);

    *(v21 + 24) = v35;
    _os_log_impl(&dword_22C366000, v11, v54, "[%s] SUCCESS subComponent=%s, executionTime=%s", v21, 0x20u);
    swift_arrayDestroy();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    (*(v17 + 8))(v62, v60);
    v31(v64, v15);
    v31(v66, v15);
    (*(v75 + 8))(v72, v69);
    (*(v52 + 8))(v14, v78);
  }

  else
  {

    v36 = *(v16 + 8);
    v36(v56, v15);
    v36(v58, v15);
    v37 = *(v19 + 8);
    v38 = sub_22C37170C();
    v39(v38);
    (*(v17 + 8))(v62, v60);
    v36(v64, v15);
    v36(v66, v15);
    (*(v75 + 8))(v72, v69);
    (*(v13 + 8))(v14, v78);
  }

  v40 = v0[41];
  v41 = v0[38];
  v43 = v0[34];
  v42 = v0[35];
  v45 = v0[32];
  v44 = v0[33];
  v47 = v0[30];
  v46 = v0[31];
  v48 = v0[29];
  v49 = v0[26];
  v67 = v0[23];
  v70 = v0[21];
  v73 = v0[20];
  v76 = v0[17];
  v79 = v0[16];

  sub_22C369A24();

  return v50();
}

uint64_t sub_22C8137C8()
{
  v96 = v0;
  v1 = v0[45];
  v76 = v0[42];
  v79 = v0[43];
  v65 = v0[41];
  v2 = v0[38];
  v81 = v0[31];
  v87 = v0[30];
  v90 = v0[35];
  v3 = v0[28];
  v92 = v0[29];
  v4 = v0[26];
  v84 = v0[27];
  v5 = v0[24];
  v6 = v0[15];
  v7 = v0[13];
  v71 = v0[14];
  v73 = v0[16];
  v8 = v0[12];
  v9 = v0[10];
  v67 = v0[20];
  v69 = v0[7];
  sub_22C90B0CC();
  sub_22C90621C();
  (*(v8 + 88))(v1, v65, v4, v9, v8);
  v76(v4, v5);
  sub_22C90400C();
  (*(v6 + 16))(v73, v69, v71);
  v10 = *(v3 + 16);
  v10(v87, v90, v84);
  v10(v92, v81, v84);
  v11 = v1;
  v12 = sub_22C9063CC();
  v13 = sub_22C90AABC();

  if (os_log_type_enabled(v12, v13))
  {
    v91 = v0[45];
    v74 = v0[29];
    v77 = v0[30];
    v14 = v0[28];
    v93 = v0[27];
    v15 = v0[19];
    v85 = v0[18];
    v88 = v0[20];
    v82 = v13;
    v17 = v0[15];
    v16 = v0[16];
    v18 = v0[14];
    v19 = swift_slowAlloc();
    v95[0] = swift_slowAlloc();
    *v19 = 136315906;
    *(v19 + 4) = sub_22C36F9F4(0xD00000000000001ELL, 0x800000022C936220, v95);
    *(v19 + 12) = 2080;
    sub_22C36A414();
    sub_22C82362C(v20, v21);
    v22 = sub_22C90B47C();
    v24 = v23;
    v25 = *(v17 + 8);
    v26 = sub_22C372164();
    v27(v26);
    v28 = sub_22C36F9F4(v22, v24, v95);

    *(v19 + 14) = v28;
    *(v19 + 22) = 2080;
    swift_getErrorValue();
    v30 = v0[2];
    v29 = v0[3];
    v31 = v0[4];
    v32 = sub_22C90B57C();
    v34 = sub_22C36F9F4(v32, v33, v95);

    *(v19 + 24) = v34;
    *(v19 + 32) = 2080;
    sub_22C90B08C();
    sub_22C90B73C();
    v35 = *(v14 + 8);
    v36 = v93;
    v35(v74, v93);
    v94 = v35;
    v35(v77, v36);
    v37 = sub_22C372164();
    v40 = sub_22C36F9F4(v37, v38, v39);

    *(v19 + 34) = v40;
    _os_log_impl(&dword_22C366000, v12, v82, "[%s] FAILURE subComponent=%s, error=%s, executionTime=%s", v19, 0x2Au);
    swift_arrayDestroy();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  else
  {
    v42 = v0[29];
    v41 = v0[30];
    v43 = v0[27];
    v44 = v0[28];
    v15 = v0[19];
    v85 = v0[18];
    v88 = v0[20];
    v45 = v0[15];
    v46 = v0[16];
    v47 = v0[14];

    v48 = *(v44 + 8);
    v48(v42, v43);
    v49 = sub_22C372164();
    v94 = v48;
    (v48)(v49);
    (*(v45 + 8))(v46, v47);
  }

  (*(v15 + 8))(v88, v85);
  v50 = v0[45];
  v52 = v0[40];
  v51 = v0[41];
  v53 = v0[38];
  v55 = v0[36];
  v54 = v0[37];
  v56 = v0[35];
  v64 = v0[34];
  v66 = v0[33];
  v68 = v0[32];
  v62 = v0[39];
  v63 = v0[31];
  v70 = v0[30];
  v72 = v0[29];
  v57 = v0[27];
  v75 = v0[26];
  v78 = v0[23];
  v80 = v0[21];
  v83 = v0[20];
  v86 = v0[17];
  v89 = v0[16];
  swift_willThrow();
  v58 = sub_22C36BBCC();
  v94(v58);
  (v94)(v56, v57);
  (*(v54 + 8))(v53, v55);
  (*(v52 + 8))(v51, v62);

  sub_22C369A24();
  v60 = v0[45];

  return v59();
}

uint64_t QueryDecorationSELFLogging.logSubComponentExecution<A>(_:_:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, NSObject *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v157 = a3;
  v158 = a2;
  v175 = a1;
  v147 = a7;
  v160 = sub_22C905A5C();
  v11 = sub_22C369824(v160);
  v176 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369ABC();
  v169 = (v15 - v16);
  sub_22C369930();
  MEMORY[0x28223BE20](v17);
  sub_22C36BA64();
  v150 = v18;
  sub_22C36BA0C();
  v19 = sub_22C9063DC();
  v20 = sub_22C369824(v19);
  v165 = v21;
  v166 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C369ABC();
  v171 = v24 - v25;
  sub_22C369930();
  MEMORY[0x28223BE20](v26);
  sub_22C36BA64();
  v153 = v27;
  v148 = a5;
  v146 = *(a5 - 8);
  v28 = *(v146 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22C369838();
  v154 = v31 - v30;
  sub_22C36BA0C();
  v32 = sub_22C90622C();
  v33 = sub_22C369824(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22C369838();
  sub_22C370654();
  v174 = sub_22C90B0EC();
  v38 = sub_22C369824(v174);
  v177 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22C369ABC();
  v167 = v42 - v43;
  sub_22C369930();
  MEMORY[0x28223BE20](v44);
  sub_22C36BA58();
  v168 = v45;
  sub_22C369930();
  MEMORY[0x28223BE20](v46);
  sub_22C36BA58();
  v170 = v47;
  sub_22C369930();
  MEMORY[0x28223BE20](v48);
  sub_22C36BA58();
  v151 = v49;
  sub_22C369930();
  MEMORY[0x28223BE20](v50);
  sub_22C36BA58();
  v149 = v51;
  sub_22C369930();
  MEMORY[0x28223BE20](v52);
  sub_22C36BA58();
  v152 = v53;
  sub_22C369930();
  MEMORY[0x28223BE20](v54);
  v56 = &v146 - v55;
  v57 = sub_22C90B10C();
  v58 = sub_22C369824(v57);
  v163 = v59;
  v164 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22C369838();
  v64 = v63 - v62;
  v162 = sub_22C90069C();
  v65 = sub_22C369824(v162);
  v161 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  sub_22C369838();
  v71 = (v70 - v69);
  sub_22C90068C();
  sub_22C90B0FC();
  v173 = v56;
  v178 = v64;
  sub_22C90B0CC();
  sub_22C90621C();
  v72 = *(a6 + 72);
  v172 = v71;
  v73 = a4;
  v74 = a4;
  v75 = a6;
  v72(v175, v71, v7, v74, a6);
  v76 = *(v35 + 8);
  v155 = v32;
  v156 = v35 + 8;
  v77 = v76(v7, v32);
  v78 = v154;
  v79 = v159;
  v158(v77);
  if (v79)
  {
    v80 = v170;
    sub_22C90B0CC();
    sub_22C90621C();
    v81 = v172;
    (*(v75 + 88))(v79, v172, v7, v73, v75);
    v82 = sub_22C3863D0();
    (v76)(v82);
    sub_22C90400C();
    v83 = v160;
    (*(v176 + 16))(v169, v175, v160);
    v84 = *(v177 + 16);
    v85 = v174;
    v84(v168, v173, v174);
    v84(v167, v80, v85);
    v86 = v79;
    v87 = sub_22C9063CC();
    LODWORD(v84) = sub_22C90AABC();

    LODWORD(v175) = v84;
    v88 = v81;
    if (os_log_type_enabled(v87, v84))
    {
      v89 = v83;
      v90 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v179 = v158;
      *v90 = 136315906;
      *(v90 + 4) = sub_22C823724("logSubComponentExecution(_:_:)");
      v157 = v87;
      *(v90 + 12) = 2080;
      sub_22C36A414();
      sub_22C82362C(v91, v92);
      v159 = v79;
      v81 = v169;
      v93 = sub_22C90B47C();
      v95 = v94;
      sub_22C82378C();
      v96(v81, v89);
      v97 = sub_22C36F9F4(v93, v95, &v179);

      *(v90 + 14) = v97;
      *(v90 + 22) = 2080;
      swift_getErrorValue();
      v98 = sub_22C90B57C();
      v100 = sub_22C36F9F4(v98, v99, &v179);

      *(v90 + 24) = v100;
      *(v90 + 32) = 2080;
      v101 = v88;
      v103 = v167;
      v102 = v168;
      sub_22C90B08C();
      v104 = sub_22C90B73C();
      v106 = v105;
      sub_22C37EDBC();
      v107 = v103;
      v88 = v101;
      (v81)(v107, v174);
      (v81)(v102, v174);
      v108 = sub_22C36F9F4(v104, v106, &v179);
      v85 = v174;

      *(v90 + 34) = v108;
      v109 = v157;
      _os_log_impl(&dword_22C366000, v157, v175, "[%s] FAILURE subComponent=%s, error=%s, executionTime=%s", v90, 0x2Au);
      swift_arrayDestroy();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    else
    {

      sub_22C37EDBC();
      (v81)(v167, v85);
      (v81)(v168, v85);
      sub_22C82378C();
      v136(v169, v83);
    }

    (*(v165 + 8))(v171, v166);
    swift_willThrow();
    (v81)(v170, v85);
    v137 = sub_22C37B988();
    v81(v137);
    (*(v163 + 8))(v178, v164);
    sub_22C823684();
    return v138(v88, v162);
  }

  else
  {
    v159 = 0;
    (*(v146 + 32))(v147, v78, v148);
    v110 = v152;
    sub_22C90B0CC();
    sub_22C90621C();
    (*(a6 + 80))(v172, v7, v73, a6);
    v111 = sub_22C3863D0();
    (v76)(v111);
    sub_22C90400C();
    v112 = v150;
    v113 = v160;
    (*(v176 + 16))(v150, v175, v160);
    v114 = *(v177 + 16);
    v115 = v173;
    v116 = v174;
    v114(v149, v173, v174);
    v114(v151, v110, v116);
    v117 = sub_22C9063CC();
    v118 = sub_22C90AABC();
    if (os_log_type_enabled(v117, v118))
    {
      sub_22C370220();
      v119 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      v179 = v175;
      *v119 = 136315650;
      *(v119 + 4) = sub_22C823724("logSubComponentExecution(_:_:)");
      LODWORD(v171) = v118;
      *(v119 + 12) = 2080;
      sub_22C36A414();
      sub_22C82362C(v120, v121);
      v122 = sub_22C90B47C();
      v124 = v123;
      sub_22C82378C();
      v125();
      v126 = sub_22C36F9F4(v122, v124, &v179);

      *(v119 + 14) = v126;
      *(v119 + 22) = 2080;
      v127 = v151;
      sub_22C90B08C();
      v128 = sub_22C90B73C();
      v130 = v129;
      v131 = *(v177 + 8);
      v131(v127, v116);
      v132 = sub_22C37B988();
      (v131)(v132);
      v133 = sub_22C36F9F4(v128, v130, &v179);

      *(v119 + 24) = v133;
      _os_log_impl(&dword_22C366000, v117, v171, "[%s] SUCCESS subComponent=%s, executionTime=%s", v119, 0x20u);
      swift_arrayDestroy();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      v134 = sub_22C823760();
      v135(v134);
      v131(v152, v116);
      v131(v173, v116);
    }

    else
    {

      v140 = *(v177 + 8);
      v140(v151, v116);
      v141 = sub_22C37B988();
      (v140)(v141);
      sub_22C82378C();
      v142(v112, v113);
      v143 = sub_22C823760();
      v144(v143);
      v140(v152, v116);
      v140(v115, v116);
    }

    (*(v163 + 8))(v178, v164);
    sub_22C823684();
    return v145(v172, v162);
  }
}

void sub_22C814A1C()
{
  sub_22C36BA7C();
  v2 = v1;
  v4 = v3;
  sub_22C3727F4();
  v5 = sub_22C90292C();
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C37BDA4();
  v11 = sub_22C90069C();
  v12 = sub_22C369824(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v19 = v18 - v17;
  v2(0);
  swift_allocObject();
  (*(v14 + 16))(v19, v4, v11);
  v20 = *(v8 + 16);
  v21 = sub_22C36EBF0();
  v22(v21);
  DecorationSELFLoggerASync = type metadata accessor for QueryDecorationSELFLoggerASync();
  swift_allocObject();
  sub_22C822148();
  v0[3] = DecorationSELFLoggerASync;
  v0[4] = &off_283FC0F88;
  *v0 = v24;
  sub_22C36CC48();
}

uint64_t sub_22C814BCC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_22C814C30(v4);
}

uint64_t sub_22C814BF8()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_22C814C30(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t QueryDecorationCapturingSELFLoggerBuilder.__allocating_init()()
{
  v0 = swift_allocObject();
  QueryDecorationCapturingSELFLoggerBuilder.init()();
  return v0;
}

uint64_t QueryDecorationCapturingSELFLoggerBuilder.init()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v2 = MEMORY[0x277D84F90];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  return v0;
}

void sub_22C814D3C(uint64_t a1, uint64_t a2)
{
  sub_22C3727F4();
  v5 = sub_22C90292C();
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C37B6BC();
  v11 = sub_22C90069C();
  v12 = sub_22C369824(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  sub_22C370654();
  v16 = *(v15 + 16);
  v17 = sub_22C3819EC();
  v18(v17);
  (*(v8 + 16))(v3, a2, v5);
  DecorationSELFLoggerSync = type metadata accessor for QueryDecorationSELFLoggerSync();
  v20 = *(DecorationSELFLoggerSync + 48);
  v21 = *(DecorationSELFLoggerSync + 52);
  swift_allocObject();

  sub_22C822348();
  v2[3] = DecorationSELFLoggerSync;
  v2[4] = &off_283FC0F08;
  *v2 = v22;
}

uint64_t sub_22C814F20(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_22C3D1028();
  v4 = *(*(a1 + 24) + 16);
  sub_22C3D11EC(v4);
  v5 = *(a1 + 24);
  *(v5 + 16) = v4 + 1;
  v6 = sub_22C9061AC();
  (*(*(v6 - 8) + 16))(v5 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4, a2, v6);
  *(a1 + 24) = v5;
  return swift_endAccess();
}

uint64_t QueryDecorationCapturingSELFLoggerBuilder.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t QueryDecorationCapturingSELFLoggerBuilder.__deallocating_deinit()
{
  QueryDecorationCapturingSELFLoggerBuilder.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22C815124()
{
  v0 = sub_22C9063DC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  sub_22C9061FC();
  sub_22C82362C(&qword_2814356E8, MEMORY[0x277D20350]);
  return sub_22C90620C();
}

uint64_t sub_22C8153D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v108 = a1;
  v106 = a2;
  v2 = sub_22C903D4C();
  v107 = *(v2 - 8);
  v3 = *(v107 + 64);
  MEMORY[0x28223BE20](v2);
  v104 = &v92[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_22C3A5908(&qword_27D9C0580, &qword_22C927FC8);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v97 = &v92[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v102 = &v92[-v10];
  v11 = MEMORY[0x28223BE20](v9);
  v101 = &v92[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v92[-v14];
  MEMORY[0x28223BE20](v13);
  v17 = &v92[-v16];
  v18 = sub_22C3A5908(&qword_27D9C0588, &qword_22C927FD0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v95 = &v92[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v20);
  v103 = &v92[-v23];
  v24 = MEMORY[0x28223BE20](v22);
  v96 = &v92[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v105 = &v92[-v27];
  v28 = MEMORY[0x28223BE20](v26);
  v98 = &v92[-v29];
  v30 = MEMORY[0x28223BE20](v28);
  v100 = &v92[-v31];
  v32 = MEMORY[0x28223BE20](v30);
  v99 = &v92[-v33];
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v92[-v35];
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v92[-v38];
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v92[-v41];
  MEMORY[0x28223BE20](v40);
  v44 = &v92[-v43];
  sub_22C3DB138(v108, &v92[-v43], &qword_27D9C0588, &qword_22C927FD0);
  sub_22C9034FC();
  sub_22C36C640(v42, 0, 1, v2);
  v108 = v5;
  v45 = *(v5 + 48);
  sub_22C3DB138(v42, v17, &qword_27D9C0588, &qword_22C927FD0);
  sub_22C3DB138(v44, &v17[v45], &qword_27D9C0588, &qword_22C927FD0);
  if (sub_22C370B74(v17, 1, v2) != 1)
  {
    sub_22C3DB138(v17, v39, &qword_27D9C0588, &qword_22C927FD0);
    if (sub_22C370B74(&v17[v45], 1, v2) != 1)
    {
      v57 = v107;
      v58 = v104;
      (*(v107 + 32))(v104, &v17[v45], v2);
      sub_22C82362C(&qword_281435730, MEMORY[0x277D1F0F8]);
      v93 = sub_22C90A0BC();
      v94 = v44;
      v59 = *(v57 + 8);
      v59(v58, v2);
      sub_22C36DD28(v42, &qword_27D9C0588, &qword_22C927FD0);
      v59(v39, v2);
      v44 = v94;
      sub_22C36DD28(v17, &qword_27D9C0588, &qword_22C927FD0);
      if (v93)
      {
        goto LABEL_17;
      }

LABEL_7:
      sub_22C9034BC();
      sub_22C36C640(v36, 0, 1, v2);
      v46 = *(v108 + 48);
      sub_22C3DB138(v36, v15, &qword_27D9C0588, &qword_22C927FD0);
      sub_22C3DB138(v44, &v15[v46], &qword_27D9C0588, &qword_22C927FD0);
      if (sub_22C370B74(v15, 1, v2) == 1)
      {
        sub_22C36DD28(v36, &qword_27D9C0588, &qword_22C927FD0);
        v47 = sub_22C370B74(&v15[v46], 1, v2);
        v48 = v105;
        if (v47 == 1)
        {
          sub_22C36DD28(v15, &qword_27D9C0588, &qword_22C927FD0);
LABEL_25:
          sub_22C36DD28(v44, &qword_27D9C0588, &qword_22C927FD0);
          v60 = MEMORY[0x277D20260];
          goto LABEL_40;
        }
      }

      else
      {
        v49 = v99;
        sub_22C3DB138(v15, v99, &qword_27D9C0588, &qword_22C927FD0);
        if (sub_22C370B74(&v15[v46], 1, v2) != 1)
        {
          v66 = v107;
          v67 = v104;
          (*(v107 + 32))(v104, &v15[v46], v2);
          sub_22C82362C(&qword_281435730, MEMORY[0x277D1F0F8]);
          v68 = sub_22C90A0BC();
          v69 = *(v66 + 8);
          v69(v67, v2);
          sub_22C36DD28(v36, &qword_27D9C0588, &qword_22C927FD0);
          v69(v49, v2);
          sub_22C36DD28(v15, &qword_27D9C0588, &qword_22C927FD0);
          v48 = v105;
          if (v68)
          {
            goto LABEL_25;
          }

LABEL_13:
          v50 = v100;
          sub_22C9034CC();
          sub_22C36C640(v50, 0, 1, v2);
          v51 = *(v108 + 48);
          v52 = v101;
          sub_22C3DB138(v50, v101, &qword_27D9C0588, &qword_22C927FD0);
          v53 = v52;
          sub_22C3DB138(v44, &v52[v51], &qword_27D9C0588, &qword_22C927FD0);
          if (sub_22C370B74(v52, 1, v2) == 1)
          {
            sub_22C36DD28(v50, &qword_27D9C0588, &qword_22C927FD0);
            v54 = sub_22C370B74(&v52[v51], 1, v2);
            v55 = v102;
            v56 = v103;
            if (v54 == 1)
            {
              sub_22C36DD28(v52, &qword_27D9C0588, &qword_22C927FD0);
LABEL_33:
              sub_22C36DD28(v44, &qword_27D9C0588, &qword_22C927FD0);
              v60 = MEMORY[0x277D20258];
              goto LABEL_40;
            }
          }

          else
          {
            v61 = v52;
            v62 = v98;
            sub_22C3DB138(v61, v98, &qword_27D9C0588, &qword_22C927FD0);
            v63 = sub_22C370B74(v53 + v51, 1, v2);
            v55 = v102;
            v64 = v103;
            if (v63 != 1)
            {
              v73 = v107;
              v74 = v104;
              (*(v107 + 32))(v104, v53 + v51, v2);
              sub_22C82362C(&qword_281435730, MEMORY[0x277D1F0F8]);
              LODWORD(v99) = sub_22C90A0BC();
              v75 = v62;
              v76 = *(v73 + 8);
              v76(v74, v2);
              sub_22C36DD28(v50, &qword_27D9C0588, &qword_22C927FD0);
              v76(v75, v2);
              v48 = v105;
              sub_22C36DD28(v53, &qword_27D9C0588, &qword_22C927FD0);
              v56 = v64;
              if (v99)
              {
                goto LABEL_33;
              }

LABEL_21:
              sub_22C9034EC();
              sub_22C36C640(v48, 0, 1, v2);
              v65 = *(v108 + 48);
              sub_22C3DB138(v48, v55, &qword_27D9C0588, &qword_22C927FD0);
              sub_22C3DB138(v44, v55 + v65, &qword_27D9C0588, &qword_22C927FD0);
              if (sub_22C370B74(v55, 1, v2) == 1)
              {
                sub_22C36DD28(v48, &qword_27D9C0588, &qword_22C927FD0);
                if (sub_22C370B74(v55 + v65, 1, v2) == 1)
                {
                  sub_22C36DD28(v55, &qword_27D9C0588, &qword_22C927FD0);
LABEL_39:
                  sub_22C36DD28(v44, &qword_27D9C0588, &qword_22C927FD0);
                  v60 = MEMORY[0x277D20268];
                  goto LABEL_40;
                }
              }

              else
              {
                v70 = v96;
                sub_22C3DB138(v55, v96, &qword_27D9C0588, &qword_22C927FD0);
                if (sub_22C370B74(v55 + v65, 1, v2) != 1)
                {
                  v79 = v48;
                  v80 = v107;
                  v81 = v104;
                  (*(v107 + 32))(v104, v55 + v65, v2);
                  sub_22C82362C(&qword_281435730, MEMORY[0x277D1F0F8]);
                  LODWORD(v105) = sub_22C90A0BC();
                  v82 = *(v80 + 8);
                  v82(v81, v2);
                  sub_22C36DD28(v79, &qword_27D9C0588, &qword_22C927FD0);
                  v82(v70, v2);
                  sub_22C36DD28(v55, &qword_27D9C0588, &qword_22C927FD0);
                  if (v105)
                  {
                    goto LABEL_39;
                  }

LABEL_29:
                  sub_22C90349C();
                  sub_22C36C640(v56, 0, 1, v2);
                  v71 = *(v108 + 48);
                  v72 = v97;
                  sub_22C3DB138(v56, v97, &qword_27D9C0588, &qword_22C927FD0);
                  sub_22C3DB08C(v44, &v72[v71], &qword_27D9C0588, &qword_22C927FD0);
                  if (sub_22C370B74(v72, 1, v2) == 1)
                  {
                    sub_22C36DD28(v56, &qword_27D9C0588, &qword_22C927FD0);
                    if (sub_22C370B74(&v72[v71], 1, v2) == 1)
                    {
                      sub_22C36DD28(v72, &qword_27D9C0588, &qword_22C927FD0);
LABEL_43:
                      v78 = v106;
                      *v106 = 0;
                      goto LABEL_44;
                    }
                  }

                  else
                  {
                    v77 = v95;
                    sub_22C3DB138(v72, v95, &qword_27D9C0588, &qword_22C927FD0);
                    if (sub_22C370B74(&v72[v71], 1, v2) != 1)
                    {
                      v86 = v107;
                      v87 = v104;
                      (*(v107 + 32))(v104, &v72[v71], v2);
                      sub_22C82362C(&qword_281435730, MEMORY[0x277D1F0F8]);
                      v88 = sub_22C90A0BC();
                      v89 = *(v86 + 8);
                      v89(v87, v2);
                      sub_22C36DD28(v56, &qword_27D9C0588, &qword_22C927FD0);
                      v89(v77, v2);
                      sub_22C36DD28(v72, &qword_27D9C0588, &qword_22C927FD0);
                      if (v88)
                      {
                        goto LABEL_43;
                      }

LABEL_37:
                      v78 = v106;
                      *v106 = 1;
LABEL_44:
                      v90 = *MEMORY[0x277D20270];
                      v91 = sub_22C90618C();
                      return (*(*(v91 - 8) + 104))(v78, v90, v91);
                    }

                    sub_22C36DD28(v56, &qword_27D9C0588, &qword_22C927FD0);
                    (*(v107 + 8))(v77, v2);
                  }

                  sub_22C36DD28(v72, &qword_27D9C0580, &qword_22C927FC8);
                  goto LABEL_37;
                }

                sub_22C36DD28(v48, &qword_27D9C0588, &qword_22C927FD0);
                (*(v107 + 8))(v70, v2);
              }

              sub_22C36DD28(v55, &qword_27D9C0580, &qword_22C927FC8);
              goto LABEL_29;
            }

            sub_22C36DD28(v50, &qword_27D9C0588, &qword_22C927FD0);
            (*(v107 + 8))(v62, v2);
            v56 = v64;
          }

          sub_22C36DD28(v53, &qword_27D9C0580, &qword_22C927FC8);
          goto LABEL_21;
        }

        sub_22C36DD28(v36, &qword_27D9C0588, &qword_22C927FD0);
        (*(v107 + 8))(v49, v2);
        v48 = v105;
      }

      sub_22C36DD28(v15, &qword_27D9C0580, &qword_22C927FC8);
      goto LABEL_13;
    }

    sub_22C36DD28(v42, &qword_27D9C0588, &qword_22C927FD0);
    (*(v107 + 8))(v39, v2);
LABEL_6:
    sub_22C36DD28(v17, &qword_27D9C0580, &qword_22C927FC8);
    goto LABEL_7;
  }

  sub_22C36DD28(v42, &qword_27D9C0588, &qword_22C927FD0);
  if (sub_22C370B74(&v17[v45], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_22C36DD28(v17, &qword_27D9C0588, &qword_22C927FD0);
LABEL_17:
  sub_22C36DD28(v44, &qword_27D9C0588, &qword_22C927FD0);
  v60 = MEMORY[0x277D20250];
LABEL_40:
  v83 = *v60;
  v84 = sub_22C90618C();
  return (*(*(v84 - 8) + 104))(v106, v83, v84);
}

uint64_t sub_22C81631C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22C3A5908(&qword_27D9C0578, &qword_22C927FC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v25 - v6);
  v8 = sub_22C9061AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C905F2C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C905E8C();
  MEMORY[0x2318B33E0](1);
  sub_22C37CA7C(a1, v12);
  v18 = swift_allocBox();
  (*(v14 + 16))(v19, v17, v13);
  *v7 = v18;
  v20 = *MEMORY[0x277D200B0];
  v21 = sub_22C905CEC();
  (*(*(v21 - 8) + 104))(v7, v20, v21);
  sub_22C36C640(v7, 0, 1, v21);
  sub_22C905C6C();
  v22 = v2[5];
  v23 = v2[6];
  sub_22C374168(v2 + 2, v22);
  (*(v23 + 8))(v12, v22, v23);
  (*(v9 + 8))(v12, v8);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_22C8165C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = a2;
  v4 = sub_22C3A5908(&qword_27D9C0578, &qword_22C927FC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v26 - v6);
  v8 = sub_22C9061AC();
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C905CCC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22C9002FC();
  sub_22C905CBC();
  v18 = [v17 domain];
  sub_22C90A11C();

  sub_22C905C9C();
  result = [v17 code];
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    v29 = 0;
    sub_22C905CAC();
    sub_22C37CA7C(v26, v11);
    v20 = swift_allocBox();
    (*(v13 + 16))(v21, v16, v12);
    *v7 = v20;
    v22 = *MEMORY[0x277D200B8];
    v23 = sub_22C905CEC();
    (*(*(v23 - 8) + 104))(v7, v22, v23);
    sub_22C36C640(v7, 0, 1, v23);
    sub_22C905C6C();
    v24 = v3[5];
    v25 = v3[6];
    sub_22C374168(v3 + 2, v24);
    (*(v25 + 8))(v11, v24, v25);

    (*(v27 + 8))(v11, v28);
    return (*(v13 + 8))(v16, v12);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C8168F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v113 = a4;
  v107 = a3;
  v6 = sub_22C3A5908(&qword_27D9C0570, &qword_22C927FB8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v112 = &v101 - v8;
  v115 = sub_22C9061AC();
  v114 = *(v115 - 8);
  v9 = *(v114 + 64);
  MEMORY[0x28223BE20](v115);
  v111 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_22C905B4C();
  v104 = *(v126 - 8);
  v11 = *(v104 + 64);
  MEMORY[0x28223BE20](v126);
  v125 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_22C9037EC();
  v129 = *(v124 - 8);
  v13 = *(v129 + 64);
  MEMORY[0x28223BE20](v124);
  v123 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v105 = &v101 - v17;
  v116 = sub_22C903F4C();
  v110 = *(v116 - 8);
  v18 = *(v110 + 64);
  MEMORY[0x28223BE20](v116);
  v109 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_22C90613C();
  v128 = *(v120 - 8);
  v20 = *(v128 + 64);
  MEMORY[0x28223BE20](v120);
  v127 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_22C90399C();
  v103 = *(v119 - 8);
  v22 = v103[8];
  MEMORY[0x28223BE20](v119);
  v118 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_22C905E6C();
  v24 = *(v139 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v139);
  v138 = (&v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v122 = &v101 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v101 - v31;
  v140 = sub_22C90625C();
  v135 = *(v140 - 8);
  v33 = *(v135 + 64);
  v34 = MEMORY[0x28223BE20](v140);
  v121 = &v101 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v137 = &v101 - v36;
  v136 = sub_22C9039FC();
  v37 = *(v136 - 1);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v136);
  v40 = &v101 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_22C905D7C();
  v106 = *(v108 - 8);
  v41 = *(v106 + 64);
  MEMORY[0x28223BE20](v108);
  v43 = &v101 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C905D6C();
  v117 = v43;
  if (a1)
  {
    v102 = a2;
    v44 = *(a1 + 16);
    if (v44)
    {
      v45 = v37 + 16;
      v132 = *(v37 + 16);
      v133 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntimeP33_F747242BE1E17047CD31B26B8C3A7DAD29QueryDecorationSELFLoggerSync_loggingScope;
      v46 = a1 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
      v47 = *(v45 + 56);
      v48 = (v24 + 8);
      v134 = v45;
      v49 = (v45 - 8);
      v130 = (v135 + 32);
      v131 = v47;
      v50 = MEMORY[0x277D84F90];
      do
      {
        v51 = v136;
        v132(v40, v46, v136);
        v52 = v138;
        sub_22C81771C(v138);
        sub_22C905AFC();
        (*v48)(v52, v139);
        (*v49)(v40, v51);
        v53 = v140;
        if (sub_22C370B74(v32, 1, v140) == 1)
        {
          sub_22C36DD28(v32, &qword_27D9BE618, &qword_22C9262C0);
        }

        else
        {
          v54 = *v130;
          (*v130)(v137, v32, v53);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v56 = *(v50 + 16);
            sub_22C594814();
            v50 = v57;
          }

          v55 = *(v50 + 16);
          if (v55 >= *(v50 + 24) >> 1)
          {
            sub_22C594814();
            v50 = v58;
          }

          *(v50 + 16) = v55 + 1;
          v54((v50 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v55), v137, v140);
        }

        v46 += v131;
        --v44;
      }

      while (v44);
    }

    v43 = v117;
    sub_22C905D4C();
    a2 = v102;
  }

  if (a2)
  {

    result = sub_22C812750(10, a2, sub_22C88842C, sub_22C60616C);
    v63 = (v62 >> 1) - v61;
    v137 = result;
    if (v62 >> 1 != v61)
    {
      if ((v62 >> 1) <= v61)
      {
        __break(1u);
        return result;
      }

      v139 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntimeP33_F747242BE1E17047CD31B26B8C3A7DAD29QueryDecorationSELFLoggerSync_loggingScope;
      v138 = v103[2];
      v83 = v103[9];
      v84 = (v103 + 1);
      v85 = v60 + v61 * v83;
      v86 = MEMORY[0x277D84F90];
      do
      {
        v87 = v118;
        v88 = v119;
        (v138)(v118, v85, v119);
        sub_22C817DD8();
        (*v84)(v87, v88);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = *(v86 + 16);
          sub_22C5965CC();
          v86 = v91;
        }

        v89 = *(v86 + 16);
        if (v89 >= *(v86 + 24) >> 1)
        {
          sub_22C5965CC();
          v86 = v92;
        }

        *(v86 + 16) = v89 + 1;
        (*(v128 + 32))(v86 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v89, v127, v120);
        v85 += v83;
        --v63;
      }

      while (v63);
    }

    swift_unknownObjectRelease();
    v43 = v117;
    sub_22C905D5C();
  }

  v64 = v105;
  sub_22C3DB138(v107, v105, &qword_27D9BD290, &qword_22C917EC0);
  v65 = v116;
  if (sub_22C370B74(v64, 1, v116) == 1)
  {
    sub_22C36DD28(v64, &qword_27D9BD290, &qword_22C917EC0);
  }

  else
  {
    (*(v110 + 32))(v109, v64, v65);
    v66 = sub_22C903F1C();
    v67 = *(v66 + 16);
    if (v67)
    {
      v138 = *(v129 + 16);
      v139 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntimeP33_F747242BE1E17047CD31B26B8C3A7DAD29QueryDecorationSELFLoggerSync_loggingScope;
      v68 = *(v129 + 80);
      v134 = v66;
      v69 = v66 + ((v68 + 32) & ~v68);
      v137 = *(v129 + 72);
      v70 = (v104 + 8);
      v129 += 16;
      v71 = (v129 - 8);
      v136 = (v135 + 32);
      v72 = MEMORY[0x277D84F90];
      do
      {
        v73 = v123;
        v74 = v124;
        (v138)(v123, v69, v124);
        v75 = v125;
        sub_22C8182B0();
        v76 = v122;
        sub_22C905AFC();
        (*v70)(v75, v126);
        (*v71)(v73, v74);
        v77 = v140;
        if (sub_22C370B74(v76, 1, v140) == 1)
        {
          sub_22C36DD28(v76, &qword_27D9BE618, &qword_22C9262C0);
        }

        else
        {
          v78 = *v136;
          (*v136)(v121, v76, v77);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v80 = *(v72 + 16);
            sub_22C594814();
            v72 = v81;
          }

          v79 = *(v72 + 16);
          if (v79 >= *(v72 + 24) >> 1)
          {
            sub_22C594814();
            v72 = v82;
          }

          *(v72 + 16) = v79 + 1;
          v78(v72 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v79, v121, v77);
        }

        v69 += v137;
        --v67;
      }

      while (v67);

      v65 = v116;
      v43 = v117;
    }

    else
    {
    }

    sub_22C905D3C();
    (*(v110 + 8))(v109, v65);
  }

  v93 = v111;
  v94 = v141;
  sub_22C37CA7C(v113, v111);
  v95 = v106;
  v96 = v112;
  v97 = v108;
  (*(v106 + 16))(v112, v43, v108);
  sub_22C36C640(v96, 0, 1, v97);
  sub_22C905C7C();
  v98 = v43;
  v99 = v94[5];
  v100 = v94[6];
  sub_22C374168(v94 + 2, v99);
  (*(v100 + 8))(v93, v99, v100);
  (*(v114 + 8))(v93, v115);
  return (*(v95 + 8))(v98, v97);
}

uint64_t sub_22C81771C@<X0>(uint64_t a1@<X8>)
{
  v62 = sub_22C90361C();
  v59 = *(v62 - 8);
  v2 = *(v59 + 64);
  MEMORY[0x28223BE20](v62);
  v61 = v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_22C905A2C();
  v63 = *(v60 - 8);
  v4 = *(v63 + 64);
  MEMORY[0x28223BE20](v60);
  v56 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C3A5908(&qword_27D9C0558, &qword_22C927FA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (v54 - v8);
  v10 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v54 - v12;
  v14 = sub_22C3A5908(&qword_27D9C0548, &qword_22C927F90);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v54 - v16;
  v18 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v54 - v23;
  v25 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = v54 - v27;
  sub_22C905E5C();
  SpanMatchedEntity.getQueryDecorationLogUniqueId(loggingScope:)();
  v29 = sub_22C90069C();
  v30 = sub_22C370B74(v24, 1, v29);
  v57 = a1;
  if (v30 == 1)
  {
    sub_22C36DD28(v24, &qword_27D9BB190, qword_22C90DD90);
    v31 = 1;
  }

  else
  {
    sub_22C90624C();
    v32 = *(v29 - 8);
    (*(v32 + 16))(v22, v24, v29);
    sub_22C36C640(v22, 0, 1, v29);
    sub_22C90623C();
    (*(v32 + 8))(v24, v29);
    v31 = 0;
  }

  v33 = sub_22C90625C();
  sub_22C36C640(v28, v31, 1, v33);
  sub_22C905A7C();
  sub_22C9039CC();
  v34 = sub_22C9093BC();
  v35 = sub_22C370B74(v13, 1, v34);
  v36 = v56;
  if (v35 == 1)
  {
    sub_22C36DD28(v13, &qword_27D9BB908, &qword_22C910960);
    v37 = 1;
  }

  else
  {
    TypedValue.toQDLog()();
    (*(*(v34 - 8) + 8))(v13, v34);
    v37 = 0;
  }

  v38 = sub_22C90599C();
  sub_22C36C640(v17, v37, 1, v38);
  sub_22C905E4C();
  v39 = sub_22C9039DC();
  v40 = *(v39 + 16);
  if (v40)
  {
    v55 = v9;
    v64 = MEMORY[0x277D84F90];
    sub_22C3B7E04(0, v40, 0);
    v41 = v59 + 16;
    v42 = *(v59 + 16);
    v43 = *(v59 + 80);
    v54[1] = v39;
    v44 = v39 + ((v43 + 32) & ~v43);
    v58 = *(v59 + 72);
    v59 = v42;
    v45 = (v41 - 8);
    v46 = v64;
    do
    {
      v47 = v61;
      v48 = v62;
      (v59)(v61, v44, v62);
      sub_22C81E08C();
      (*v45)(v47, v48);
      v64 = v46;
      v50 = *(v46 + 16);
      v49 = *(v46 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_22C3B7E04(v49 > 1, v50 + 1, 1);
        v46 = v64;
      }

      *(v46 + 16) = v50 + 1;
      (*(v63 + 32))(v46 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v50, v36, v60);
      v44 += v58;
      --v40;
    }

    while (v40);

    v9 = v55;
  }

  else
  {
  }

  sub_22C905E3C();
  *v9 = -1;
  v51 = *MEMORY[0x277D20208];
  v52 = sub_22C905F3C();
  (*(*(v52 - 8) + 104))(v9, v51, v52);
  sub_22C36C640(v9, 0, 1, v52);
  return sub_22C905E0C();
}

uint64_t sub_22C817DD8()
{
  v0 = sub_22C90355C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v42 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22C3A5908(&qword_27D9C0550, &qword_22C927F98);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = (&v39 - v6);
  v7 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v39 - v9;
  v11 = sub_22C3A5908(&qword_27D9C0548, &qword_22C927F90);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v40 = &v39 - v13;
  v14 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  v21 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v39 - v23;
  sub_22C90612C();
  RetrievedContext.getQueryDecorationLogUniqueId(loggingScope:)(v20);
  v25 = sub_22C90069C();
  if (sub_22C370B74(v20, 1, v25) == 1)
  {
    sub_22C36DD28(v20, &qword_27D9BB190, qword_22C90DD90);
    v26 = 1;
  }

  else
  {
    sub_22C90624C();
    v27 = *(v25 - 8);
    v39 = v1;
    v28 = v27;
    (*(v27 + 16))(v18, v20, v25);
    sub_22C36C640(v18, 0, 1, v25);
    sub_22C90623C();
    (*(v28 + 8))(v20, v25);
    v1 = v39;
    v26 = 0;
  }

  v29 = sub_22C90625C();
  sub_22C36C640(v24, v26, 1, v29);
  sub_22C905A7C();
  sub_22C90391C();
  v30 = sub_22C9093BC();
  v31 = sub_22C370B74(v10, 1, v30);
  v32 = v40;
  if (v31 == 1)
  {
    sub_22C36DD28(v10, &qword_27D9BB908, &qword_22C910960);
    v33 = 1;
  }

  else
  {
    TypedValue.toQDLog()();
    (*(*(v30 - 8) + 8))(v10, v30);
    v33 = 0;
  }

  v34 = sub_22C90599C();
  sub_22C36C640(v32, v33, 1, v34);
  sub_22C90611C();
  v35 = v42;
  sub_22C90394C();
  v36 = v41;
  sub_22C81F174(v41);
  (*(v1 + 8))(v35, v0);
  v37 = sub_22C905D8C();
  sub_22C36C640(v36, 0, 1, v37);
  return sub_22C9060FC();
}

uint64_t sub_22C8182B0()
{
  v1 = sub_22C3A5908(&qword_27D9C0520, &qword_22C927F60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v52 - v3;
  v5 = sub_22C3A5908(&qword_27D9C0528, &unk_22C927F68);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v59 = &v52 - v7;
  v8 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v56 = &v52 - v10;
  v11 = sub_22C3A5908(&qword_27D9C0530, &qword_22C927F78);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v57 = &v52 - v13;
  v14 = sub_22C3A5908(&qword_27D9C0538, &qword_22C927F80);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v52 - v16;
  v55 = sub_22C9036EC();
  v18 = *(v55 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v55);
  v54 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v52 - v22;
  v24 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v52 - v29;
  v31 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v52 - v33;
  sub_22C905B3C();
  v58 = v0;
  RetrievedTool.getQueryDecorationLogUniqueId(loggingScope:)();
  v35 = sub_22C90069C();
  if (sub_22C370B74(v30, 1, v35) == 1)
  {
    sub_22C36DD28(v30, &qword_27D9BB190, qword_22C90DD90);
    v36 = 1;
  }

  else
  {
    sub_22C90624C();
    v37 = *(v35 - 8);
    v53 = v4;
    v38 = v37;
    (*(v37 + 16))(v28, v30, v35);
    sub_22C36C640(v28, 0, 1, v35);
    sub_22C90623C();
    (*(v38 + 8))(v30, v35);
    v4 = v53;
    v36 = 0;
  }

  v39 = sub_22C90625C();
  sub_22C36C640(v34, v36, 1, v39);
  sub_22C905A7C();
  sub_22C90371C();
  RetrievedTool.Definition.toCandidateIdentifier()();
  v40 = *(v18 + 8);
  v41 = v55;
  v40(v23, v55);

  sub_22C905B1C();
  sub_22C90371C();
  sub_22C81F7E4(v17);
  v40(v23, v41);
  v42 = sub_22C905A3C();
  sub_22C36C640(v17, 0, 1, v42);
  sub_22C905B2C();
  sub_22C90373C();
  LOBYTE(v60) = 0;
  sub_22C905ADC();
  v43 = v54;
  sub_22C90371C();
  v44 = v56;
  sub_22C9036BC();
  v40(v43, v41);
  v45 = sub_22C908EAC();
  if (sub_22C370B74(v44, 1, v45) == 1)
  {
    sub_22C36DD28(v44, &qword_27D9BC1E8, &qword_22C9123B0);
    v46 = 1;
    v47 = v57;
  }

  else
  {
    v47 = v57;
    sub_22C81F9B4(v57);
    (*(*(v45 - 8) + 8))(v44, v45);
    v46 = 0;
  }

  v48 = sub_22C905BFC();
  sub_22C36C640(v47, v46, 1, v48);
  sub_22C905ACC();
  v49 = sub_22C90608C();
  sub_22C36C640(v59, 1, 1, v49);
  sub_22C905AEC();
  v50 = sub_22C9059AC();
  sub_22C36C640(v4, 1, 1, v50);
  return sub_22C905ABC();
}

uint64_t sub_22C818914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v95 = a4;
  v96 = a3;
  v98 = a2;
  v87 = sub_22C905B4C();
  v111 = *(v87 - 8);
  v5 = *(v111 + 64);
  MEMORY[0x28223BE20](v87);
  v110 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C3A5908(&qword_27D9C0518, &qword_22C927F58);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v86 - v9;
  v11 = sub_22C9061AC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_22C90613C();
  v113 = *(v108 - 8);
  v16 = *(v113 + 64);
  MEMORY[0x28223BE20](v108);
  v112 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RetrievedToolWithAttribution();
  v86 = *(v18 - 8);
  v19 = *(v86 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v105 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_22C905E6C();
  v21 = *(v109 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v109);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_22C90399C();
  v88 = *(v107 - 8);
  v25 = v88[8];
  MEMORY[0x28223BE20](v107);
  v106 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22C9039FC();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_22C905BAC();
  v89 = *(v90 - 8);
  v32 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v99 = &v86 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C905B9C();

  result = sub_22C812750(10, a1, sub_22C88842C, sub_22C606184);
  v38 = (v37 >> 1) - v36;
  v94 = v11;
  v93 = v12;
  v92 = v10;
  v91 = v15;
  v97 = result;
  if (v37 >> 1 != v36)
  {
    if ((v37 >> 1) <= v36)
    {
      __break(1u);
      goto LABEL_30;
    }

    v58 = *(v28 + 16);
    v57 = v28 + 16;
    v102 = v58;
    v103 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntimeP33_F747242BE1E17047CD31B26B8C3A7DAD29QueryDecorationSELFLoggerSync_loggingScope;
    v59 = *(v57 + 56);
    v104 = v57;
    v60 = (v57 - 8);
    v100 = v21 + 32;
    v101 = v59;
    v61 = v35 + v36 * v59;
    v62 = MEMORY[0x277D84F90];
    do
    {
      v102(v31, v61, v27);
      sub_22C81771C(v24);
      (*v60)(v31, v27);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = *(v62 + 16);
        sub_22C596694();
        v62 = v65;
      }

      v63 = *(v62 + 16);
      if (v63 >= *(v62 + 24) >> 1)
      {
        sub_22C596694();
        v62 = v66;
      }

      *(v62 + 16) = v63 + 1;
      (*(v21 + 32))(v62 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v63, v24, v109);
      v61 += v101;
      --v38;
    }

    while (v38);
  }

  swift_unknownObjectRelease();
  sub_22C905B8C();
  v39 = v98;

  result = sub_22C812750(10, v39, sub_22C88842C, sub_22C60616C);
  v43 = (v42 >> 1) - v41;
  v103 = result;
  if (v42 >> 1 != v41)
  {
    if ((v42 >> 1) > v41)
    {
      v109 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntimeP33_F747242BE1E17047CD31B26B8C3A7DAD29QueryDecorationSELFLoggerSync_loggingScope;
      v104 = v88[2];
      v67 = v88[9];
      v68 = (v88 + 1);
      v69 = v40 + v41 * v67;
      v70 = MEMORY[0x277D84F90];
      do
      {
        v71 = v106;
        v72 = v107;
        v104(v106, v69, v107);
        sub_22C817DD8();
        (*v68)(v71, v72);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v74 = *(v70 + 16);
          sub_22C5965CC();
          v70 = v75;
        }

        v73 = *(v70 + 16);
        if (v73 >= *(v70 + 24) >> 1)
        {
          sub_22C5965CC();
          v70 = v76;
        }

        *(v70 + 16) = v73 + 1;
        (*(v113 + 32))(v70 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v73, v112, v108);
        v69 += v67;
        --v43;
      }

      while (v43);
      goto LABEL_3;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_3:
  swift_unknownObjectRelease();
  sub_22C905B7C();
  v44 = v96;

  result = sub_22C812750(10, v44, sub_22C88842C, sub_22C606154);
  v48 = (v47 >> 1) - v46;
  if (v47 >> 1 == v46)
  {
LABEL_4:
    swift_unknownObjectRelease();
    v49 = v99;
    sub_22C905B6C();
    v50 = v91;
    v51 = v114;
    sub_22C37CA7C(v95, v91);
    v52 = v89;
    v53 = v92;
    v54 = v90;
    (*(v89 + 16))(v92, v49, v90);
    sub_22C36C640(v53, 0, 1, v54);
    sub_22C905A6C();
    v55 = v51[5];
    v56 = v51[6];
    sub_22C374168(v51 + 2, v55);
    (*(v56 + 8))(v50, v55, v56);
    (*(v93 + 8))(v50, v94);
    return (*(v52 + 8))(v49, v54);
  }

  if ((v47 >> 1) > v46)
  {
    v77 = *(v86 + 72);
    v78 = v45 + v46 * v77;
    v79 = MEMORY[0x277D84F90];
    v80 = v87;
    do
    {
      v81 = v105;
      sub_22C7C609C(v78, v105);
      sub_22C819340();
      sub_22C7C6100(v81);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = *(v79 + 16);
        sub_22C596504();
        v79 = v84;
      }

      v82 = *(v79 + 16);
      if (v82 >= *(v79 + 24) >> 1)
      {
        sub_22C596504();
        v79 = v85;
      }

      *(v79 + 16) = v82 + 1;
      (*(v111 + 32))(v79 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v82, v110, v80);
      v78 += v77;
      --v48;
    }

    while (v48);
    goto LABEL_4;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22C819340()
{
  v1 = sub_22C3A5908(&qword_27D9C0520, &qword_22C927F60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v65 = &v58 - v3;
  v4 = sub_22C3A5908(&qword_27D9C0528, &unk_22C927F68);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v64 = &v58 - v6;
  v7 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v61 = &v58 - v9;
  v10 = sub_22C3A5908(&qword_27D9C0530, &qword_22C927F78);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v62 = &v58 - v12;
  v13 = sub_22C3A5908(&qword_27D9C0538, &qword_22C927F80);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v58 - v15;
  v60 = sub_22C9036EC();
  v17 = *(v60 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v60);
  v59 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v58 - v21;
  v23 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v58 - v28;
  v30 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v58 - v32;
  sub_22C905B3C();
  v63 = v0;
  RetrievedTool.getQueryDecorationLogUniqueId(loggingScope:)();
  v34 = sub_22C90069C();
  if (sub_22C370B74(v29, 1, v34) == 1)
  {
    sub_22C36DD28(v29, &qword_27D9BB190, qword_22C90DD90);
    v35 = 1;
  }

  else
  {
    sub_22C90624C();
    v36 = *(v34 - 8);
    (*(v36 + 16))(v27, v29, v34);
    sub_22C36C640(v27, 0, 1, v34);
    sub_22C90623C();
    (*(v36 + 8))(v29, v34);
    v35 = 0;
  }

  v37 = sub_22C90625C();
  sub_22C36C640(v33, v35, 1, v37);
  sub_22C905A7C();
  v38 = v63;
  sub_22C90371C();
  RetrievedTool.Definition.toCandidateIdentifier()();
  v39 = *(v17 + 8);
  v40 = v60;
  v39(v22, v60);

  sub_22C905B1C();
  sub_22C90371C();
  sub_22C81F7E4(v16);
  v39(v22, v40);
  v41 = sub_22C905A3C();
  sub_22C36C640(v16, 0, 1, v41);
  sub_22C905B2C();
  sub_22C90373C();
  LOBYTE(v66) = 0;
  sub_22C905ADC();
  v42 = v59;
  sub_22C90371C();
  v43 = v61;
  sub_22C9036BC();
  v39(v42, v40);
  v44 = sub_22C908EAC();
  if (sub_22C370B74(v43, 1, v44) == 1)
  {
    sub_22C36DD28(v43, &qword_27D9BC1E8, &qword_22C9123B0);
    v45 = 1;
    v46 = v64;
    v47 = v62;
  }

  else
  {
    v47 = v62;
    sub_22C81F9B4(v62);
    (*(*(v44 - 8) + 8))(v43, v44);
    v45 = 0;
    v46 = v64;
  }

  v48 = sub_22C905BFC();
  sub_22C36C640(v47, v45, 1, v48);
  sub_22C905ACC();
  v49 = type metadata accessor for RetrievedToolWithAttribution();
  v50 = MEMORY[0x277D20210];
  switch(*(v38 + *(v49 + 20)))
  {
    case 1:
      goto LABEL_13;
    case 2:
      v50 = MEMORY[0x277D20218];
      goto LABEL_13;
    case 3:
      v50 = MEMORY[0x277D20228];
      goto LABEL_13;
    case 4:
      v50 = MEMORY[0x277D20220];
      goto LABEL_13;
    case 5:
      v50 = MEMORY[0x277D20230];
      goto LABEL_13;
    case 6:
      v55 = sub_22C90608C();
      v53 = v46;
      v54 = 1;
      goto LABEL_14;
    default:
      *v46 = -1;
      v50 = MEMORY[0x277D20238];
LABEL_13:
      v51 = *v50;
      v52 = sub_22C90608C();
      (*(*(v52 - 8) + 104))(v46, v51, v52);
      v53 = v46;
      v54 = 0;
      v55 = v52;
LABEL_14:
      sub_22C36C640(v53, v54, 1, v55);
      sub_22C905AEC();
      v56 = sub_22C9059AC();
      sub_22C36C640(v65, 1, 1, v56);
      return sub_22C905ABC();
  }
}

uint64_t sub_22C819A78(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v25 = a4;
  v8 = sub_22C3A5908(&qword_27D9C0510, &qword_22C927F50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24 - v10;
  v26 = sub_22C9061AC();
  v12 = *(v26 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v26);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C905C5C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22C905C4C();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(a1))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v28 = 0;
  result = MEMORY[0x2318B30F0](a1);
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!HIDWORD(a2))
  {
    v27 = 0;
    MEMORY[0x2318B3100](a2);
    sub_22C905C3C();
    sub_22C37CA7C(v25, v15);
    (*(v17 + 16))(v11, v20, v16);
    sub_22C36C640(v11, 0, 1, v16);
    sub_22C905B5C();
    v22 = v5[5];
    v23 = v5[6];
    sub_22C374168(v5 + 2, v22);
    (*(v23 + 8))(v15, v22, v23);
    (*(v12 + 8))(v15, v26);
    return (*(v17 + 8))(v20, v16);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_22C819D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9C0508, &qword_22C927F48);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_22C9061AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C90617C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90616C();

  sub_22C905D0C();
  sub_22C37CA7C(a2, v12);
  (*(v14 + 16))(v7, v17, v13);
  sub_22C36C640(v7, 0, 1, v13);
  sub_22C90614C();
  v18 = v2[5];
  v19 = v2[6];
  sub_22C374168(v2 + 2, v18);
  (*(v19 + 8))(v12, v18, v19);
  (*(v9 + 8))(v12, v8);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_22C819F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a3;
  v6 = sub_22C3A5908(&qword_27D9C0500, &qword_22C927F40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - v8;
  v10 = sub_22C9061AC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C90607C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90606C();
  MEMORY[0x2318B3530](a1);
  sub_22C90604C();
  sub_22C37CA7C(v24, v14);
  (*(v16 + 16))(v9, v19, v15);
  sub_22C36C640(v9, 0, 1, v15);
  sub_22C90600C();
  v20 = v4[5];
  v21 = v4[6];
  sub_22C374168(v4 + 2, v20);
  (*(v21 + 8))(v14, v20, v21);
  (*(v11 + 8))(v14, v10);
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_22C81A1D4(unint64_t a1, uint64_t a2)
{
  v32 = sub_22C9063DC();
  v4 = *(v32 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v32);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C3A5908(&qword_27D9C04F8, &qword_22C927F38);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v31 - v10;
  v31[0] = sub_22C9061AC();
  v12 = *(v31[0] - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v31[0]);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C905FFC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C905FEC();
  if (HIDWORD(a1))
  {
    v21 = v16;
    sub_22C90406C();
    v22 = sub_22C9063CC();
    v23 = sub_22C90AADC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = a1;
      _os_log_impl(&dword_22C366000, v22, v23, "Toolbox size reported is out of range of UInt32: %ld", v24, 0xCu);
      MEMORY[0x2318B9880](v24, -1, -1);
    }

    (*(v4 + 8))(v7, v32);
    v25 = v21;
  }

  else
  {
    v33 = 0;
    MEMORY[0x2318B34B0](a1);
    v26 = a2;
    v27 = v31[1];
    sub_22C37CA7C(v26, v15);
    (*(v17 + 16))(v11, v20, v16);
    sub_22C36C640(v11, 0, 1, v16);
    sub_22C905EBC();
    v28 = v27[5];
    v29 = v27[6];
    sub_22C374168(v27 + 2, v28);
    (*(v29 + 8))(v15, v28, v29);
    (*(v12 + 8))(v15, v31[0]);
    v25 = v16;
  }

  return (*(v17 + 8))(v20, v25);
}

uint64_t sub_22C81A558(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v40 = a1;
  v2 = sub_22C3A5908(&qword_27D9C04D0, &qword_22C927F10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v42 = &v39 - v4;
  v5 = sub_22C9061AC();
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  MEMORY[0x28223BE20](v5);
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C3A5908(&qword_27D9C04E0, &qword_22C927F20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v39 - v10;
  v12 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v39 - v14;
  v16 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v39 - v18;
  v20 = sub_22C905F9C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22C905E9C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v39 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C905E8C();
  MEMORY[0x2318B3350](1);
  sub_22C905F8C();
  sub_22C90624C();
  v30 = sub_22C90069C();
  (*(*(v30 - 8) + 16))(v15, v40, v30);
  sub_22C36C640(v15, 0, 1, v30);
  sub_22C90623C();
  v31 = sub_22C90625C();
  sub_22C36C640(v19, 0, 1, v31);
  sub_22C905F7C();
  (*(v26 + 16))(v11, v29, v25);
  sub_22C36C640(v11, 0, 1, v25);
  sub_22C905F5C();
  v32 = v41;
  v33 = v44;
  sub_22C37CA7C(v43, v41);
  v34 = v42;
  (*(v21 + 16))(v42, v24, v20);
  sub_22C36C640(v34, 0, 1, v20);
  sub_22C905EAC();
  v35 = v33;
  v36 = *(v33 + 40);
  v37 = *(v35 + 48);
  sub_22C374168((v35 + 16), v36);
  (*(v37 + 8))(v32, v36, v37);
  (*(v45 + 8))(v32, v46);
  (*(v21 + 8))(v24, v20);
  return (*(v26 + 8))(v29, v25);
}

uint64_t sub_22C81AA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a3;
  v49 = a2;
  v3 = sub_22C3A5908(&qword_27D9C04D0, &qword_22C927F10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = &v43 - v5;
  v6 = sub_22C9061AC();
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = *(v53 + 64);
  MEMORY[0x28223BE20](v6);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C3A5908(&qword_27D9C04D8, &qword_22C927F18);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v43 - v11;
  v13 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v43 - v15;
  v17 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v43 - v19;
  v21 = sub_22C905F9C();
  v47 = *(v21 - 8);
  v48 = v21;
  v22 = *(v47 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_22C905EFC();
  v25 = *(v46 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v46);
  v28 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22C9002FC();
  sub_22C905CBC();
  v30 = [v29 domain];
  sub_22C90A11C();

  sub_22C905C9C();
  v45 = v29;
  result = [v29 code];
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    v56 = 0;
    v44 = v28;
    sub_22C905CAC();
    sub_22C905F8C();
    sub_22C90624C();
    v32 = sub_22C90069C();
    (*(*(v32 - 8) + 16))(v16, v49, v32);
    sub_22C36C640(v16, 0, 1, v32);
    sub_22C90623C();
    v33 = sub_22C90625C();
    sub_22C36C640(v20, 0, 1, v33);
    sub_22C905F7C();
    v34 = v28;
    v35 = v46;
    (*(v25 + 16))(v12, v34, v46);
    sub_22C36C640(v12, 0, 1, v35);
    sub_22C905F6C();
    v36 = v52;
    v37 = v55;
    sub_22C37CA7C(v51, v52);
    v39 = v47;
    v38 = v48;
    v40 = v50;
    (*(v47 + 16))(v50, v24, v48);
    sub_22C36C640(v40, 0, 1, v38);
    sub_22C905EAC();
    v41 = v37[5];
    v42 = v37[6];
    sub_22C374168(v37 + 2, v41);
    (*(v42 + 8))(v36, v41, v42);

    (*(v53 + 8))(v36, v54);
    (*(v39 + 8))(v24, v38);
    return (*(v25 + 8))(v44, v35);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C81AF50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = a2;
  v5 = sub_22C3A5908(&qword_27D9C04C8, &qword_22C927F08);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v32 - v7;
  v9 = sub_22C9061AC();
  v34 = *(v9 - 8);
  v35 = v9;
  v10 = *(v34 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v32 - v15;
  v17 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v32 - v19;
  v21 = sub_22C905DBC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2318B3280](v24);
  sub_22C90624C();
  v27 = sub_22C90069C();
  (*(*(v27 - 8) + 16))(v16, a1, v27);
  sub_22C36C640(v16, 0, 1, v27);
  sub_22C90623C();
  v28 = sub_22C90625C();
  sub_22C36C640(v20, 0, 1, v28);
  sub_22C905A7C();
  sub_22C37CA7C(v33, v12);
  (*(v22 + 16))(v8, v26, v21);
  sub_22C36C640(v8, 0, 1, v21);
  sub_22C905C8C();
  v29 = v3[5];
  v30 = v3[6];
  sub_22C374168(v3 + 2, v29);
  (*(v30 + 8))(v12, v29, v30);
  (*(v34 + 8))(v12, v35);
  return (*(v22 + 8))(v26, v21);
}

uint64_t sub_22C81B2BC()
{
  sub_22C36FF94((v0 + 16));
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntimeP33_F747242BE1E17047CD31B26B8C3A7DAD29QueryDecorationSELFLoggerSync_contextId;
  v2 = sub_22C90069C();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntimeP33_F747242BE1E17047CD31B26B8C3A7DAD29QueryDecorationSELFLoggerSync_loggingScope;
  v5 = sub_22C90292C();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntimeP33_F747242BE1E17047CD31B26B8C3A7DAD29QueryDecorationSELFLoggerSync_componentId, v2);
  return v0;
}

uint64_t sub_22C81B394()
{
  v0 = *sub_22C81B2BC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22C81B428@<X0>(uint64_t *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = *a1;
  v7 = a2(0);
  v8 = sub_22C36985C(v7);
  v10 = *(v9 + 16);

  return v10(a3, v5 + v6, v8);
}

uint64_t sub_22C81B6B0@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *a1;
  v7 = a2(0);
  v8 = sub_22C36985C(v7);
  v10 = *(v9 + 16);

  return v10(a3, v5 + v6, v8);
}

uint64_t sub_22C81B724(uint64_t a1, uint64_t a2)
{
  v5 = sub_22C90622C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_22C90A73C();
  v12 = sub_22C90A75C();
  sub_22C36C640(v11, 0, 1, v12);
  (*(v6 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v13 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v2;
  (*(v6 + 32))(&v14[v13], &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *&v14[(v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8] = a2;

  sub_22C8FAAA0(0, 0, v11, &unk_22C927EF0, v14);

  return sub_22C36DD28(v11, &qword_27D9BBB48, &qword_22C910F00);
}

uint64_t sub_22C81B920(uint64_t a1)
{
  v3 = sub_22C90622C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  sub_22C90A73C();
  v10 = sub_22C90A75C();
  sub_22C36C640(v9, 0, 1, v10);
  (*(v4 + 16))(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v11 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v1;
  (*(v4 + 32))(&v12[v11], &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  sub_22C8FAAA0(0, 0, v9, &unk_22C927EE0, v12);

  return sub_22C36DD28(v9, &qword_27D9BBB48, &qword_22C910F00);
}

uint64_t sub_22C81BB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22C81BB20, 0, 0);
}

uint64_t sub_22C81BB20()
{
  sub_22C369980();
  v0 = sub_22C38C50C();
  sub_22C81631C(v0);
  sub_22C369A24();

  return v1();
}

uint64_t sub_22C81BB78(void *a1, uint64_t a2)
{
  v5 = sub_22C90622C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - v10;
  sub_22C90A73C();
  v12 = sub_22C90A75C();
  sub_22C36C640(v11, 0, 1, v12);
  (*(v6 + 16))(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v13 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v2;
  *(v14 + 5) = a1;
  (*(v6 + 32))(&v14[v13], &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  v15 = a1;
  sub_22C8FAAA0(0, 0, v11, &unk_22C927ED0, v14);

  return sub_22C36DD28(v11, &qword_27D9BBB48, &qword_22C910F00);
}

uint64_t sub_22C81BD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22C81BD88, 0, 0);
}

uint64_t sub_22C81BD88()
{
  sub_22C369980();
  v0 = sub_22C38C1C4();
  sub_22C8165C4(v0, v1);
  sub_22C369A24();

  return v2();
}

uint64_t sub_22C81BDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v26 = a2;
  v29 = a1;
  v5 = sub_22C90622C();
  v25 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = &v24 - v12;
  v14 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v24 - v16;
  sub_22C90A73C();
  v18 = sub_22C90A75C();
  sub_22C36C640(v17, 0, 1, v18);
  sub_22C3DB138(a3, v13, &qword_27D9BD290, &qword_22C917EC0);
  (*(v6 + 16))(v8, v27, v5);
  v19 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v20 = (v11 + *(v6 + 80) + v19) & ~*(v6 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  v22 = v29;
  *(v21 + 4) = v28;
  *(v21 + 5) = v22;
  *(v21 + 6) = v26;
  sub_22C3DB08C(v13, &v21[v19], &qword_27D9BD290, &qword_22C917EC0);
  (*(v6 + 32))(&v21[v20], v8, v25);

  sub_22C8FAAA0(0, 0, v17, &unk_22C927EC0, v21);

  return sub_22C36DD28(v17, &qword_27D9BBB48, &qword_22C910F00);
}

uint64_t sub_22C81C0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_22C81C0E0, 0, 0);
}

uint64_t sub_22C81C0E0()
{
  sub_22C369980();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = sub_22C38C1C4();
  sub_22C8168F8(v3, v4, v5, v6);
  sub_22C369A24();

  return v7();
}

uint64_t sub_22C81C13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_22C90622C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v22 - v16;
  sub_22C90A73C();
  v18 = sub_22C90A75C();
  sub_22C36C640(v17, 0, 1, v18);
  (*(v11 + 16))(v13, a4, v10);
  v19 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = v5;
  *(v20 + 5) = a1;
  *(v20 + 6) = a2;
  *(v20 + 7) = a3;
  (*(v11 + 32))(&v20[v19], v13, v10);

  sub_22C8FAAA0(0, 0, v17, &unk_22C927EA8, v20);

  return sub_22C36DD28(v17, &qword_27D9BBB48, &qword_22C910F00);
}

uint64_t sub_22C81C348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_22C81C370, 0, 0);
}

uint64_t sub_22C81C370()
{
  sub_22C369980();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = sub_22C38C1C4();
  sub_22C818914(v3, v4, v5, v6);
  sub_22C369A24();

  return v7();
}

uint64_t sub_22C81C3CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = sub_22C90622C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v21 - v15;
  sub_22C90A73C();
  v17 = sub_22C90A75C();
  sub_22C36C640(v16, 0, 1, v17);
  (*(v10 + 16))(v12, a4, v9);
  v18 = (*(v10 + 80) + 57) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = v4;
  *(v19 + 40) = a1;
  *(v19 + 48) = a2;
  *(v19 + 56) = a3;
  (*(v10 + 32))(v19 + v18, v12, v9);

  sub_22C8FAAA0(0, 0, v16, &unk_22C927E98, v19);

  return sub_22C36DD28(v16, &qword_27D9BBB48, &qword_22C910F00);
}

uint64_t sub_22C81C5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 48) = a7;
  *(v8 + 32) = a6;
  *(v8 + 40) = a8;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22C81C5E8, 0, 0);
}

uint64_t sub_22C81C5E8()
{
  sub_22C369980();
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = sub_22C38C50C();
  sub_22C819A78(v4, v5, v6, v7);
  sub_22C369A24();

  return v8();
}

uint64_t sub_22C81C648(uint64_t a1, uint64_t a2)
{
  v5 = sub_22C90622C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_22C90A73C();
  v12 = sub_22C90A75C();
  sub_22C36C640(v11, 0, 1, v12);
  (*(v6 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v13 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v2;
  *(v14 + 5) = a1;
  (*(v6 + 32))(&v14[v13], &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_22C8FAAA0(0, 0, v11, &unk_22C927E88, v14);

  return sub_22C36DD28(v11, &qword_27D9BBB48, &qword_22C910F00);
}

uint64_t sub_22C81C834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22C81C858, 0, 0);
}

uint64_t sub_22C81C858()
{
  sub_22C369980();
  v0 = sub_22C38C1C4();
  sub_22C819D20(v0, v1);
  sub_22C369A24();

  return v2();
}

uint64_t sub_22C81C8B0(char a1, char a2, uint64_t a3)
{
  v7 = sub_22C90622C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  sub_22C90A73C();
  v14 = sub_22C90A75C();
  sub_22C36C640(v13, 0, 1, v14);
  (*(v8 + 16))(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
  v15 = (*(v8 + 80) + 42) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v3;
  *(v16 + 40) = a1;
  *(v16 + 41) = a2;
  (*(v8 + 32))(v16 + v15, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

  sub_22C8FAAA0(0, 0, v13, &unk_22C927E78, v16);

  return sub_22C36DD28(v13, &qword_27D9BBB48, &qword_22C910F00);
}

uint64_t sub_22C81CAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  *(v7 + 33) = a6;
  *(v7 + 32) = a5;
  *(v7 + 16) = a4;
  *(v7 + 24) = a7;
  return MEMORY[0x2822009F8](sub_22C81CAC8, 0, 0);
}

uint64_t sub_22C81CAC8()
{
  sub_22C369980();
  v1 = *(*(v0 + 16) + 16);
  sub_22C819F74(*(v0 + 32), *(v0 + 33), *(v0 + 24));
  sub_22C369A24();

  return v2();
}

uint64_t sub_22C81CB2C(uint64_t a1, uint64_t a2)
{
  v5 = sub_22C90622C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_22C90A73C();
  v12 = sub_22C90A75C();
  sub_22C36C640(v11, 0, 1, v12);
  (*(v6 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v13 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v2;
  *(v14 + 5) = a1;
  (*(v6 + 32))(&v14[v13], &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_22C8FAAA0(0, 0, v11, &unk_22C927E68, v14);

  return sub_22C36DD28(v11, &qword_27D9BBB48, &qword_22C910F00);
}

uint64_t sub_22C81CD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22C81CD34, 0, 0);
}

uint64_t sub_22C81CD34()
{
  sub_22C369980();
  v0 = sub_22C38C1C4();
  sub_22C81A1D4(v0, v1);
  sub_22C369A24();

  return v2();
}

uint64_t sub_22C81CD8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v25 = a3;
  v26 = a1;
  v30 = sub_22C90622C();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22C90069C();
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v24);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C905A5C();
  v21 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v22 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - v12;
  sub_22C90A73C();
  v14 = sub_22C90A75C();
  sub_22C36C640(v13, 0, 1, v14);
  (*(v8 + 16))(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v7);
  v15 = v24;
  (*(v5 + 16))(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v24);
  (*(v3 + 16))(v29, v25, v30);
  v16 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v17 = (v9 + *(v5 + 80) + v16) & ~*(v5 + 80);
  v18 = (v6 + *(v3 + 80) + v17) & ~*(v3 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = v28;
  (*(v8 + 32))(&v19[v16], v22, v21);
  (*(v5 + 32))(&v19[v17], v23, v15);
  (*(v3 + 32))(&v19[v18], v29, v30);

  sub_22C8FAAA0(0, 0, v13, &unk_22C927E58, v19);

  return sub_22C36DD28(v13, &qword_27D9BBB48, &qword_22C910F00);
}

uint64_t sub_22C81D134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22C81D158, 0, 0);
}

uint64_t sub_22C81D158()
{
  sub_22C369980();
  v0 = sub_22C38C1C4();
  sub_22C81A558(v0, v1);
  sub_22C369A24();

  return v2();
}

uint64_t sub_22C81D1B0(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v27 = a1;
  v4 = sub_22C90622C();
  v23 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C90069C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - v13;
  sub_22C90A73C();
  v15 = sub_22C90A75C();
  sub_22C36C640(v14, 0, 1, v15);
  (*(v8 + 16))(v10, a2, v7);
  (*(v5 + 16))(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v4);
  v16 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v17 = (v9 + *(v5 + 80) + v16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  v19 = v27;
  *(v18 + 4) = v26;
  *(v18 + 5) = v19;
  (*(v8 + 32))(&v18[v16], v10, v7);
  (*(v5 + 32))(&v18[v17], v24, v23);

  v20 = v19;
  sub_22C8FAAA0(0, 0, v14, &unk_22C927E38, v18);

  return sub_22C36DD28(v14, &qword_27D9BBB48, &qword_22C910F00);
}

uint64_t sub_22C81D474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_22C81D498, 0, 0);
}

uint64_t sub_22C81D498()
{
  sub_22C369980();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = sub_22C38C50C();
  sub_22C81AA04(v3, v4, v5);
  sub_22C369A24();

  return v6();
}

void sub_22C81D514()
{
  sub_22C36BA7C();
  v35 = v0;
  v36 = v2;
  v33 = v3;
  v34 = v4;
  v6 = v5;
  v7 = sub_22C90622C();
  v8 = sub_22C369824(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v32 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C90069C();
  v14 = sub_22C369824(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v21 = sub_22C369914(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22C370654();
  sub_22C90A73C();
  v24 = sub_22C90A75C();
  sub_22C36C640(v1, 0, 1, v24);
  (*(v16 + 16))(v19, v33, v13);
  sub_22C63489C();
  v25 = v6;
  v26 = v7;
  v27(&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v7);
  v28 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v29 = (v18 + *(v10 + 80) + v28) & ~*(v10 + 80);
  v30 = swift_allocObject();
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  *(v30 + 4) = v35;
  (*(v16 + 32))(&v30[v28], v19, v13);
  (*(v10 + 32))(&v30[v29], v32, v26);

  sub_22C8FAAA0(0, 0, v1, v36, v30);

  sub_22C36DD28(v1, &qword_27D9BBB48, &qword_22C910F00);
  sub_22C36CC48();
}

uint64_t sub_22C81D78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22C81D7B0, 0, 0);
}

uint64_t sub_22C81D7B0()
{
  sub_22C369980();
  v0 = sub_22C38C1C4();
  sub_22C81AF50(v0, v1);
  sub_22C369A24();

  return v2();
}

void SpanMatchedEntity.getQueryDecorationLogUniqueId(loggingScope:)()
{
  sub_22C36BA7C();
  v42[1] = v0;
  v2 = v1;
  v3 = sub_22C9063DC();
  v4 = sub_22C369824(v3);
  v43 = v5;
  v44 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  sub_22C36BA64();
  v42[2] = v12;
  v13 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v14 = sub_22C369914(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v42 - v17;
  v19 = sub_22C9093BC();
  v20 = sub_22C369824(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C369ABC();
  v26 = MEMORY[0x28223BE20](v25);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = v42 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = v42 - v30;
  sub_22C9039CC();
  if (sub_22C370B74(v18, 1, v19) == 1)
  {
    sub_22C36DD28(v18, &qword_27D9BB908, &qword_22C910960);
    sub_22C90400C();
    v32 = sub_22C9063CC();
    v33 = sub_22C90AADC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      sub_22C370220();
      v35 = v2;
      v36 = swift_slowAlloc();
      v45 = v36;
      *v34 = 136315138;
      *(v34 + 4) = sub_22C823700("getQueryDecorationLogUniqueId(loggingScope:)");
      _os_log_impl(&dword_22C366000, v32, v33, "[%s] Could not convert SpanMatchedEntity to logging id (typedValue missing)", v34, 0xCu);
      sub_22C36FF94(v36);
      v2 = v35;
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    (*(v43 + 8))(v10, v44);
    v37 = 1;
  }

  else
  {
    v42[0] = v2;
    (*(v22 + 32))(v31, v18, v19);
    (*(v22 + 16))(v29, v31, v19);
    JointResolution.CandidateIdentifier.init(typedValue:)(v29, &v45);
    sub_22C754DD0();
    v2 = v42[0];
    sub_22C902B4C();
    v38 = *(v22 + 8);
    v39 = sub_22C3819EC();
    v40(v39);

    v37 = 0;
  }

  v41 = sub_22C90069C();
  sub_22C36C640(v2, v37, 1, v41);
  sub_22C36CC48();
}

uint64_t TypedValue.toQDLog()()
{
  sub_22C3727F4();
  v0 = sub_22C90952C();
  v1 = sub_22C369824(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  sub_22C37BDA4();
  MEMORY[0x2318B2E60]();
  sub_22C90935C();
  sub_22C9094BC();
  v6 = *(v3 + 8);
  v7 = sub_22C36EBF0();
  v8(v7);
  sub_22C90597C();
  TypedValue.selfLoggingTypeName.getter();
  return sub_22C90595C();
}

unint64_t sub_22C81E08C()
{
  v22 = sub_22C9039BC();
  v0 = *(v22 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v22);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22C3A5908(&qword_27D9C0560, &qword_22C927FA8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v21 - v6);
  v8 = sub_22C9038DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C3A5908(&qword_27D9C0568, &qword_22C927FB0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v21 - v15;
  sub_22C905A1C();
  result = sub_22C90359C();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v25 = 0;
  MEMORY[0x2318B2EA0](result);
  result = sub_22C90360C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (HIDWORD(result))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v24 = 0;
  MEMORY[0x2318B2EE0](result);
  sub_22C9035CC();
  sub_22C9038CC();
  (*(v9 + 8))(v12, v8);
  v18 = sub_22C90350C();
  if (sub_22C370B74(v16, 1, v18) == 1)
  {
    sub_22C36DD28(v16, &qword_27D9C0568, &qword_22C927FB0);
  }

  else
  {
    sub_22C81E410();
    (*(*(v18 - 8) + 8))(v16, v18);
  }

  v19 = v22;
  sub_22C9059EC();
  sub_22C9035AC();
  sub_22C81ED4C(v7);
  (*(v0 + 8))(v3, v19);
  v20 = sub_22C905C0C();
  sub_22C36C640(v7, 0, 1, v20);
  sub_22C9059FC();
  sub_22C90358C();
  v23 = 0;
  sub_22C9059BC();
  sub_22C9035DC();
  return sub_22C9059DC();
}

uint64_t sub_22C81E410()
{
  v1 = sub_22C905DCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v70 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v71 = &v66 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v69 = &v66 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v68 = &v66 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v67 = &v66 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v66 = &v66 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v66 - v16;
  v18 = sub_22C90350C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9034AC();
  sub_22C82362C(&qword_281435790, MEMORY[0x277D1E9E8]);
  v73 = v0;
  v23 = sub_22C90AE0C();
  v72 = *(v19 + 8);
  v72(v22, v18);
  v24 = v2;
  if (v23)
  {
    (*(v2 + 104))(v17, *MEMORY[0x277D201C8], v1);
    sub_22C5969AC();
    v26 = v25;
    v27 = *(v25 + 16);
    if (v27 >= *(v25 + 24) >> 1)
    {
      sub_22C5969AC();
      v26 = v47;
    }

    *(v26 + 16) = v27 + 1;
    (*(v24 + 32))(v26 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v27, v17, v1);
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
  }

  sub_22C9034DC();
  v28 = sub_22C90AE0C();
  v72(v22, v18);
  if (v28)
  {
    v29 = v66;
    (*(v24 + 104))(v66, *MEMORY[0x277D201E0], v1);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = *(v26 + 16);
      sub_22C5969AC();
      v26 = v49;
    }

    v30 = *(v26 + 16);
    if (v30 >= *(v26 + 24) >> 1)
    {
      sub_22C5969AC();
      v26 = v50;
    }

    *(v26 + 16) = v30 + 1;
    v31 = v24;
    (*(v24 + 32))(v26 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v30, v29, v1);
  }

  else
  {
    v31 = v24;
  }

  sub_22C9034EC();
  v32 = sub_22C90AE0C();
  v72(v22, v18);
  if (v32)
  {
    v33 = v67;
    (*(v31 + 104))(v67, *MEMORY[0x277D201E8], v1);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = *(v26 + 16);
      sub_22C5969AC();
      v26 = v52;
    }

    v34 = *(v26 + 16);
    if (v34 >= *(v26 + 24) >> 1)
    {
      sub_22C5969AC();
      v26 = v53;
    }

    *(v26 + 16) = v34 + 1;
    (*(v31 + 32))(v26 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v34, v33, v1);
  }

  sub_22C9034BC();
  v35 = sub_22C90AE0C();
  v72(v22, v18);
  if (v35)
  {
    v36 = v68;
    (*(v31 + 104))(v68, *MEMORY[0x277D201D0], v1);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = *(v26 + 16);
      sub_22C5969AC();
      v26 = v55;
    }

    v37 = *(v26 + 16);
    if (v37 >= *(v26 + 24) >> 1)
    {
      sub_22C5969AC();
      v26 = v56;
    }

    *(v26 + 16) = v37 + 1;
    (*(v31 + 32))(v26 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v37, v36, v1);
  }

  sub_22C90349C();
  v38 = sub_22C90AE0C();
  v72(v22, v18);
  if (v38)
  {
    v39 = v69;
    (*(v31 + 104))(v69, *MEMORY[0x277D201C0], v1);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = *(v26 + 16);
      sub_22C5969AC();
      v26 = v58;
    }

    v40 = *(v26 + 16);
    if (v40 >= *(v26 + 24) >> 1)
    {
      sub_22C5969AC();
      v26 = v59;
    }

    *(v26 + 16) = v40 + 1;
    (*(v31 + 32))(v26 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v40, v39, v1);
  }

  sub_22C9034FC();
  v41 = sub_22C90AE0C();
  v72(v22, v18);
  if (v41)
  {
    (*(v31 + 104))(v71, *MEMORY[0x277D201F0], v1);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v60 = *(v26 + 16);
      sub_22C5969AC();
      v26 = v61;
    }

    v42 = *(v26 + 16);
    if (v42 >= *(v26 + 24) >> 1)
    {
      sub_22C5969AC();
      v26 = v62;
    }

    *(v26 + 16) = v42 + 1;
    (*(v31 + 32))(v26 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v42, v71, v1);
  }

  sub_22C9034CC();
  v43 = sub_22C90AE0C();
  v72(v22, v18);
  if (v43)
  {
    v44 = v70;
    (*(v31 + 104))(v70, *MEMORY[0x277D201D8], v1);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v63 = *(v26 + 16);
      sub_22C5969AC();
      v26 = v64;
    }

    v45 = *(v26 + 16);
    if (v45 >= *(v26 + 24) >> 1)
    {
      sub_22C5969AC();
      v26 = v65;
    }

    *(v26 + 16) = v45 + 1;
    (*(v31 + 32))(v26 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v45, v44, v1);
  }

  return v26;
}

uint64_t sub_22C81ED4C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_22C9039BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D1EE88])
  {
    *a1 = 0;
    v10 = MEMORY[0x277D200A0];
  }

  else if (v9 == *MEMORY[0x277D1EE78])
  {
    v10 = MEMORY[0x277D20090];
  }

  else
  {
    if (v9 != *MEMORY[0x277D1EE80])
    {
      *a1 = -1;
      v14 = *MEMORY[0x277D200A0];
      v15 = sub_22C905C0C();
      (*(*(v15 - 8) + 104))(a1, v14, v15);
      return (*(v5 + 8))(v8, v4);
    }

    v10 = MEMORY[0x277D20098];
  }

  v11 = *v10;
  v12 = sub_22C905C0C();
  return (*(*(v12 - 8) + 104))(a1, v11, v12);
}

uint64_t RetrievedContext.getQueryDecorationLogUniqueId(loggingScope:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v4 = sub_22C369914(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C37B6BC();
  v7 = sub_22C9093BC();
  v8 = sub_22C369824(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369ABC();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22C90391C();
  if (sub_22C370B74(v1, 1, v7) == 1)
  {
    sub_22C36DD28(v1, &qword_27D9BB908, &qword_22C910960);
    v21 = 1;
  }

  else
  {
    (*(v10 + 32))(v18, v1, v7);
    sub_22C63489C();
    v19 = sub_22C371510();
    v20(v19);
    JointResolution.CandidateIdentifier.init(typedValue:)(v15, &v25);
    sub_22C754DD0();
    sub_22C902B4C();
    (*(v10 + 8))(v18, v7);

    v21 = 0;
  }

  v22 = sub_22C90069C();
  return sub_22C36C640(a1, v21, 1, v22);
}

uint64_t sub_22C81F174@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_22C90355C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D1EAB8])
  {
    v10 = MEMORY[0x277D20128];
LABEL_45:
    v11 = *v10;
    v12 = sub_22C905D8C();
    return (*(*(v12 - 8) + 104))(a1, v11, v12);
  }

  if (v9 == *MEMORY[0x277D1EA58])
  {
    v10 = MEMORY[0x277D200C8];
    goto LABEL_45;
  }

  if (v9 == *MEMORY[0x277D1EA78])
  {
    v10 = MEMORY[0x277D200E8];
    goto LABEL_45;
  }

  if (v9 == *MEMORY[0x277D1EA90])
  {
    v10 = MEMORY[0x277D20100];
    goto LABEL_45;
  }

  if (v9 == *MEMORY[0x277D1EA60])
  {
    v10 = MEMORY[0x277D200D0];
    goto LABEL_45;
  }

  if (v9 == *MEMORY[0x277D1EB10])
  {
    v10 = MEMORY[0x277D20180];
    goto LABEL_45;
  }

  if (v9 == *MEMORY[0x277D1EA98])
  {
    v10 = MEMORY[0x277D20108];
    goto LABEL_45;
  }

  if (v9 == *MEMORY[0x277D1EAA8])
  {
    v10 = MEMORY[0x277D20118];
    goto LABEL_45;
  }

  if (v9 == *MEMORY[0x277D1EAB0])
  {
    v10 = MEMORY[0x277D20120];
    goto LABEL_45;
  }

  if (v9 == *MEMORY[0x277D1EB38])
  {
    v10 = MEMORY[0x277D201A8];
    goto LABEL_45;
  }

  if (v9 == *MEMORY[0x277D1EB28])
  {
    v10 = MEMORY[0x277D20198];
    goto LABEL_45;
  }

  if (v9 == *MEMORY[0x277D1EB48])
  {
    v10 = MEMORY[0x277D201B0];
    goto LABEL_45;
  }

  if (v9 == *MEMORY[0x277D1EB00])
  {
    v10 = MEMORY[0x277D20170];
    goto LABEL_45;
  }

  if (v9 == *MEMORY[0x277D1EB18])
  {
    v10 = MEMORY[0x277D20188];
    goto LABEL_45;
  }

  if (v9 == *MEMORY[0x277D1EB40])
  {
    goto LABEL_30;
  }

  if (v9 == *MEMORY[0x277D1EA68])
  {
    v10 = MEMORY[0x277D200D8];
    goto LABEL_45;
  }

  if (v9 == *MEMORY[0x277D1EA80])
  {
    v10 = MEMORY[0x277D200F0];
    goto LABEL_45;
  }

  if (v9 == *MEMORY[0x277D1EAA0])
  {
    v10 = MEMORY[0x277D20110];
    goto LABEL_45;
  }

  if (v9 == *MEMORY[0x277D1EA88])
  {
    v10 = MEMORY[0x277D200F8];
    goto LABEL_45;
  }

  if (v9 == *MEMORY[0x277D1EAD8])
  {
    v10 = MEMORY[0x277D20148];
    goto LABEL_45;
  }

  if (v9 == *MEMORY[0x277D1EA50])
  {
    v10 = MEMORY[0x277D200C0];
    goto LABEL_45;
  }

  if (v9 == *MEMORY[0x277D1EAD0])
  {
    v10 = MEMORY[0x277D20140];
    goto LABEL_45;
  }

  if (v9 == *MEMORY[0x277D1EB50])
  {
LABEL_30:
    *a1 = -1;
    v10 = MEMORY[0x277D201B8];
    goto LABEL_45;
  }

  if (v9 == *MEMORY[0x277D1EB20])
  {
    v10 = MEMORY[0x277D20190];
    goto LABEL_45;
  }

  if (v9 == *MEMORY[0x277D1EB08])
  {
    v10 = MEMORY[0x277D20178];
    goto LABEL_45;
  }

  if (v9 == *MEMORY[0x277D1EAF8])
  {
    v10 = MEMORY[0x277D20168];
    goto LABEL_45;
  }

  if (v9 == *MEMORY[0x277D1EB30])
  {
    v10 = MEMORY[0x277D201A0];
    goto LABEL_45;
  }

  if (v9 == *MEMORY[0x277D1EAE0])
  {
    v10 = MEMORY[0x277D20150];
    goto LABEL_45;
  }

  if (v9 == *MEMORY[0x277D1EAE8])
  {
    v10 = MEMORY[0x277D20158];
    goto LABEL_45;
  }

  if (v9 == *MEMORY[0x277D1EAC0])
  {
    v10 = MEMORY[0x277D20130];
    goto LABEL_45;
  }

  if (v9 == *MEMORY[0x277D1EAC8])
  {
    v10 = MEMORY[0x277D20138];
    goto LABEL_45;
  }

  if (v9 == *MEMORY[0x277D1EA70])
  {
    v10 = MEMORY[0x277D200E0];
    goto LABEL_45;
  }

  if (v9 == *MEMORY[0x277D1EAF0])
  {
    v10 = MEMORY[0x277D20160];
    goto LABEL_45;
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t RetrievedTool.getQueryDecorationLogUniqueId(loggingScope:)()
{
  sub_22C3727F4();
  v1 = sub_22C9036EC();
  v2 = sub_22C369824(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  sub_22C37BDA4();
  sub_22C90371C();
  RetrievedTool.Definition.toCandidateIdentifier()();
  v7 = *(v4 + 8);
  v8 = sub_22C36EBF0();
  v9(v8);
  sub_22C754DD0();
  sub_22C902B4C();

  v10 = sub_22C90069C();
  return sub_22C36C640(v0, 0, 1, v10);
}

uint64_t sub_22C81F7E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22C9036EC();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v12 = v11 - v10;
  sub_22C37BBE4();
  v13(v12, v2, v4);
  v14 = (*(v7 + 88))(v12, v4);
  if (v14 == *MEMORY[0x277D1ECE0])
  {
    v15 = MEMORY[0x277D20020];
LABEL_11:
    v16 = *v15;
    v17 = sub_22C905A3C();
    sub_22C36985C(v17);
    (*(v18 + 104))(a1, v16);
    return (*(v7 + 8))(v12, v4);
  }

  if (v14 == *MEMORY[0x277D1ECE8])
  {
    v15 = MEMORY[0x277D20028];
    goto LABEL_11;
  }

  if (v14 == *MEMORY[0x277D1ECD8])
  {
    v15 = MEMORY[0x277D20018];
    goto LABEL_11;
  }

  if (v14 == *MEMORY[0x277D1ECD0])
  {
    v15 = MEMORY[0x277D20010];
    goto LABEL_11;
  }

  if (v14 == *MEMORY[0x277D1ECF8])
  {
    v15 = MEMORY[0x277D20030];
    goto LABEL_11;
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t sub_22C81F9B4@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v76 = sub_22C90981C();
  v1 = *(v76 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v76);
  v4 = v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_22C9060EC();
  v55 = *(v75 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v75);
  v7 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C3A5908(&qword_27D9C0540, &qword_22C927F88);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v66 = v54 - v10;
  v11 = sub_22C3A5908(&qword_27D9C0548, &qword_22C927F90);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v78 = v54 - v13;
  v59 = sub_22C90603C();
  v58 = *(v59 - 8);
  v14 = *(v58 + 64);
  MEMORY[0x28223BE20](v59);
  v61 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C90941C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22C90599C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v71 = v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = v54 - v27;
  MEMORY[0x2318B6290](v26);
  TypeInstance.toQDLog()();
  v29 = *(v17 + 8);
  v72 = v20;
  v73 = v17 + 8;
  v74 = v16;
  v70 = v29;
  v29(v20, v16);
  v30 = v59;
  v31 = v61;
  sub_22C90602C();
  v57 = v22;
  v32 = *(v22 + 16);
  v33 = v78;
  v56 = v28;
  v34 = v28;
  v35 = v58;
  v68 = v32;
  v69 = v22 + 16;
  v32(v78, v34, v21);
  v77 = v21;
  sub_22C36C640(v33, 0, 1, v21);
  sub_22C90601C();
  sub_22C905BEC();
  sub_22C7F5ED0();
  sub_22C905BCC();
  v36 = v66;
  (*(v35 + 16))(v66, v31, v30);
  sub_22C36C640(v36, 0, 1, v30);
  sub_22C905BDC();
  v37 = sub_22C908DCC();
  v38 = *(v37 + 16);
  if (v38)
  {
    v79 = MEMORY[0x277D84F90];
    sub_22C3B7E5C(0, v38, 0);
    v39 = v79;
    v41 = *(v1 + 16);
    v40 = v1 + 16;
    v66 = v41;
    v42 = (*(v40 + 64) + 32) & ~*(v40 + 64);
    v54[1] = v37;
    v43 = v37 + v42;
    v65 = *(v40 + 56);
    v63 = (v40 - 8);
    v64 = (v57 + 8);
    v44 = v55;
    v62 = v55 + 32;
    v67 = v40;
    do
    {
      v45 = v76;
      v46 = (v66)(v4, v43, v76);
      v47 = v72;
      MEMORY[0x2318B6CE0](v46);
      v48 = v71;
      TypeInstance.toQDLog()();
      v70(v47, v74);
      sub_22C9060DC();
      sub_22C9097DC();
      sub_22C9060BC();
      sub_22C9097EC();
      sub_22C9060CC();
      sub_22C9097BC();
      sub_22C9060AC();
      v50 = v77;
      v49 = v78;
      v68(v78, v48, v77);
      sub_22C36C640(v49, 0, 1, v50);
      sub_22C90609C();
      (*v64)(v48, v50);
      (*v63)(v4, v45);
      v79 = v39;
      v52 = *(v39 + 16);
      v51 = *(v39 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_22C3B7E5C(v51 > 1, v52 + 1, 1);
        v39 = v79;
      }

      *(v39 + 16) = v52 + 1;
      (*(v44 + 32))(v39 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v52, v7, v75);
      v43 += v65;
      --v38;
    }

    while (v38);

    v30 = v59;
    v35 = v58;
  }

  else
  {
  }

  sub_22C905BBC();
  (*(v35 + 8))(v61, v30);
  return (*(v57 + 8))(v56, v77);
}

void TypeInstance.toQDLog()()
{
  sub_22C36BA7C();
  v168 = v0;
  v2 = v1;
  v3 = sub_22C9063DC();
  v4 = sub_22C369824(v3);
  v157 = v5;
  v158 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v159 = v9 - v8;
  sub_22C36BA0C();
  v170 = sub_22C90599C();
  v10 = sub_22C369824(v170);
  v167 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369ABC();
  v156 = v14 - v15;
  sub_22C369930();
  MEMORY[0x28223BE20](v16);
  sub_22C36BA58();
  v169 = v17;
  sub_22C369930();
  MEMORY[0x28223BE20](v18);
  sub_22C36BA58();
  v166 = v19;
  sub_22C369930();
  MEMORY[0x28223BE20](v20);
  sub_22C36BA58();
  v160 = v21;
  sub_22C369930();
  MEMORY[0x28223BE20](v22);
  sub_22C36BA58();
  v161 = v23;
  sub_22C369930();
  MEMORY[0x28223BE20](v24);
  sub_22C36BA64();
  v162 = v25;
  sub_22C36BA0C();
  v26 = sub_22C90952C();
  v27 = sub_22C369824(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22C369838();
  v34 = v33 - v32;
  v35 = sub_22C90941C();
  v36 = sub_22C369824(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22C369ABC();
  v155 = v41 - v42;
  sub_22C369930();
  MEMORY[0x28223BE20](v43);
  sub_22C36BA58();
  v163 = v44;
  sub_22C369930();
  v46 = MEMORY[0x28223BE20](v45);
  v48 = &v154 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v51 = &v154 - v50;
  v52 = MEMORY[0x28223BE20](v49);
  v54 = (&v154 - v53);
  MEMORY[0x2318B2E60](v52);
  v55 = v168;
  v168 = *(v38 + 16);
  v168(v54, v55, v35);
  v56 = (*(v38 + 88))(v54, v35);
  if (v56 == *MEMORY[0x277D72AD0])
  {
    (*(v38 + 96))(v54, v35);
    sub_22C50B6D4();
    sub_22C63489C();
    v57(v34);
    sub_22C9094BC();
    sub_22C90597C();
    TypeIdentifier.selfLoggingTypeName.getter();
LABEL_3:
    sub_22C90595C();
    (*(v29 + 8))(v34, v26);
    goto LABEL_11;
  }

  v164 = v38;
  v165 = v35;
  v154 = v2;
  if (v56 == *MEMORY[0x277D72AB0])
  {
    v59 = v164;
    v58 = v165;
    (*(v164 + 96))(v54, v165);
    v60 = sub_22C50B6D4();
    v61 = (v168)(v51, v60, v58);
    v62 = v162;
    TypeInstance.toQDLog()(v61);
    sub_22C376054();
    v171 = v63;
    v172 = 0xEB000000003C6E6FLL;
    v64 = sub_22C90594C();
    if (v65)
    {
      v66 = v65;
    }

    else
    {
      v64 = 7104878;
      v66 = 0xE300000000000000;
    }

    MEMORY[0x2318B7850](v64, v66);

    sub_22C8236C4();
    sub_22C90595C();
    sub_22C90596C();
    sub_22C90597C();
    (*(v167 + 8))(v62, v170);
    (*(v59 + 8))(v51, v58);
    goto LABEL_11;
  }

  if (v56 == *MEMORY[0x277D72AE8])
  {
    v68 = v164;
    v67 = v165;
    (*(v164 + 96))(v54, v165);
    v69 = sub_22C50B6D4();
    v70 = (v168)(v48, v69, v67);
    v71 = v161;
    TypeInstance.toQDLog()(v70);
    v72 = *(v68 + 8);
    v73 = sub_22C37170C();
    v74(v73);
    v75 = v167;
    v76 = v154;
    v77 = v170;
    (*(v167 + 8))(v154, v170);
    (*(v75 + 32))(v76, v71, v77);
    goto LABEL_11;
  }

  if (v56 == *MEMORY[0x277D72AD8])
  {
    v78 = v164 + 96;
    v79 = v165;
    (*(v164 + 96))(v54);
    v157 = *v54;
    v80 = *(v157 + 16);
    v81 = v80 + 56;
    v82 = 1 << *(v80 + 32);
    v83 = -1;
    if (v82 < 64)
    {
      v83 = ~(-1 << v82);
    }

    v84 = v83 & *(v80 + 56);
    v85 = (v82 + 63) >> 6;
    v161 = v78 - 88;
    v162 = v80;
    v159 = v167 + 32;

    v86 = v79;
    v87 = 0;
    v88 = MEMORY[0x277D84F90];
    v89 = v160;
    if (v84)
    {
      while (1)
      {
        v90 = v88;
LABEL_22:
        v92 = v164;
        v93 = (v168)(v163, *(v162 + 48) + *(v164 + 72) * (__clz(__rbit64(v84)) | (v87 << 6)), v86);
        TypeInstance.toQDLog()(v93);
        v94 = *(v92 + 8);
        v95 = sub_22C36BBCC();
        v96(v95);
        v88 = v90;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = *(v90 + 16);
          sub_22C36D270();
          sub_22C5968E4();
          v88 = v99;
        }

        v97 = *(v88 + 16);
        if (v97 >= *(v88 + 24) >> 1)
        {
          sub_22C5968E4();
          v88 = v100;
        }

        v84 &= v84 - 1;
        *(v88 + 16) = v97 + 1;
        (*(v167 + 32))(v88 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v97, v166, v170);
        v86 = v165;
        if (!v84)
        {
          goto LABEL_18;
        }
      }
    }

    while (1)
    {
LABEL_18:
      v91 = v87 + 1;
      if (__OFADD__(v87, 1))
      {
        __break(1u);
        return;
      }

      if (v91 >= v85)
      {
        break;
      }

      v84 = *(v81 + 8 * v91);
      ++v87;
      if (v84)
      {
        v90 = v88;
        v87 = v91;
        goto LABEL_22;
      }
    }

    v102 = *(v88 + 16);
    v158 = v88;
    if (v102)
    {
      v103 = *(v167 + 16);
      v104 = v88 + ((*(v167 + 80) + 32) & ~*(v167 + 80));
      v165 = *(v167 + 72);
      v166 = v103;
      v168 = (v167 + 16);
      v105 = (v167 + 8);
      v106 = MEMORY[0x277D84F90];
      v107 = v102;
      do
      {
        v108 = v170;
        v166(v89, v104, v170);
        v109 = sub_22C90594C();
        v111 = v110;
        (*v105)(v89, v108);
        if (v111)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v114 = *(v106 + 16);
            sub_22C36D270();
            sub_22C590270();
            v106 = v115;
          }

          v112 = *(v106 + 16);
          if (v112 >= *(v106 + 24) >> 1)
          {
            sub_22C590270();
            v106 = v116;
          }

          *(v106 + 16) = v112 + 1;
          v113 = v106 + 16 * v112;
          *(v113 + 32) = v109;
          *(v113 + 40) = v111;
        }

        v104 += v165;
        --v107;
      }

      while (v107);
    }

    else
    {
      v106 = MEMORY[0x277D84F90];
    }

    v171 = v106;
    v128 = sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
    v129 = sub_22C3F035C();
    v165 = v128;
    v163 = v129;
    v164 = sub_22C90A04C();
    v166 = v130;

    if (v102)
    {
      v168 = *(v167 + 16);
      v131 = v158 + ((*(v167 + 80) + 32) & ~*(v167 + 80));
      v132 = *(v167 + 72);
      v133 = (v167 + 8);
      v134 = MEMORY[0x277D84F90];
      do
      {
        v136 = v169;
        v135 = v170;
        v168(v169, v131, v170);
        v137 = sub_22C90596C();
        v139 = v138;
        (*v133)(v136, v135);
        if (v139)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v142 = *(v134 + 16);
            sub_22C36D270();
            sub_22C590270();
            v134 = v143;
          }

          v140 = *(v134 + 16);
          if (v140 >= *(v134 + 24) >> 1)
          {
            sub_22C590270();
            v134 = v144;
          }

          *(v134 + 16) = v140 + 1;
          v141 = v134 + 16 * v140;
          *(v141 + 32) = v137;
          *(v141 + 40) = v139;
        }

        v131 += v132;
        --v102;
      }

      while (v102);
    }

    else
    {
      v134 = MEMORY[0x277D84F90];
    }

    v171 = v134;
    v145 = sub_22C90A04C();
    v147 = v146;

    v171 = 0x3C6E6F696E75;
    v172 = 0xE600000000000000;
    MEMORY[0x2318B7850](v164, v166);

    sub_22C8236C4();
    sub_22C90595C();
    v171 = 0x3C6E6F696E75;
    v172 = 0xE600000000000000;
    MEMORY[0x2318B7850](v145, v147);

    sub_22C8236C4();
    sub_22C90597C();
    goto LABEL_11;
  }

  if (v56 == *MEMORY[0x277D72AB8])
  {
    (*(v164 + 96))(v54, v165);
    sub_22C50B6D4();
    sub_22C63489C();
    v101(v34);
    sub_22C9094BC();
    sub_22C90597C();
    v171 = 0x7463697274736572;
    v172 = 0xEB000000003C6465;
    TypeIdentifier.selfLoggingTypeName.getter();
    MEMORY[0x2318B7850]();

    sub_22C8236C4();
    goto LABEL_3;
  }

  if (v56 != *MEMORY[0x277D72AE0])
  {
    v148 = v165;
    sub_22C90400C();
    v149 = sub_22C9063CC();
    v150 = sub_22C90AADC();
    if (os_log_type_enabled(v149, v150))
    {
      v151 = swift_slowAlloc();
      sub_22C370220();
      v152 = swift_slowAlloc();
      v171 = v152;
      *v151 = 136315138;
      *(v151 + 4) = sub_22C36F9F4(0x28676F4C44516F74, 0xE900000000000029, &v171);
      _os_log_impl(&dword_22C366000, v149, v150, "%s Encountered unknnown type", v151, 0xCu);
      sub_22C36FF94(v152);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    (*(v157 + 8))(v159, v158);
    v153 = v164;
    sub_22C90595C();
    sub_22C90597C();
    (*(v153 + 8))(v54, v148);
    goto LABEL_12;
  }

  v117 = v164;
  v118 = v165;
  (*(v164 + 96))(v54);
  v119 = sub_22C50B6D4();
  v120 = (v168)(v155, v119, v118);
  v121 = v156;
  TypeInstance.toQDLog()(v120);
  v171 = 0x6465727265666564;
  v172 = 0xE90000000000003CLL;
  v122 = sub_22C90594C();
  if (v123)
  {
    v124 = v123;
  }

  else
  {
    v122 = 7104878;
    v124 = 0xE300000000000000;
  }

  MEMORY[0x2318B7850](v122, v124);

  sub_22C8236C4();
  sub_22C90595C();
  sub_22C90596C();
  sub_22C90597C();
  (*(v167 + 8))(v121, v170);
  v125 = *(v117 + 8);
  v126 = sub_22C3819EC();
  v127(v126);
LABEL_11:

LABEL_12:
  sub_22C36CC48();
}

void TypedValue.selfLoggingTypeName.getter()
{
  sub_22C36BA7C();
  v3 = sub_22C90910C();
  v4 = sub_22C369824(v3);
  v124 = v5;
  v125 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v123 = v9 - v8;
  sub_22C36BA0C();
  v10 = sub_22C9091CC();
  v11 = sub_22C369824(v10);
  v127 = v12;
  v128 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v126 = v16 - v15;
  sub_22C36BA0C();
  v17 = sub_22C90912C();
  v18 = sub_22C369824(v17);
  v130 = v19;
  v131 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v129 = v23 - v22;
  sub_22C36BA0C();
  v24 = sub_22C90906C();
  v25 = sub_22C369824(v24);
  v133 = v26;
  v134 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C369838();
  v132 = v30 - v29;
  sub_22C36BA0C();
  v31 = sub_22C90934C();
  v32 = sub_22C369824(v31);
  v121 = v33;
  v122 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C369838();
  v120 = v37 - v36;
  sub_22C36BA0C();
  v38 = sub_22C90919C();
  v39 = sub_22C369824(v38);
  v136 = v40;
  v137 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22C369838();
  v135 = v44 - v43;
  sub_22C36BA0C();
  v45 = sub_22C9090BC();
  v46 = sub_22C369824(v45);
  v138 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22C369838();
  v52 = v51 - v50;
  v53 = sub_22C90952C();
  v54 = sub_22C369824(v53);
  v56 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v54);
  sub_22C369838();
  sub_22C37B6BC();
  v59 = sub_22C9093BC();
  v60 = sub_22C369824(v59);
  v62 = v61;
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v60);
  sub_22C369838();
  sub_22C37BDA4();
  (*(v62 + 16))(v2, v0, v59);
  v65 = *(v62 + 88);
  v66 = sub_22C37FF30();
  v68 = v67(v66);
  if (v68 == *MEMORY[0x277D72A58])
  {
    v69 = *(v62 + 8);
    v70 = sub_22C37FF30();
    v71(v70);
    sub_22C90935C();
    TypeIdentifier.selfLoggingTypeName.getter();
    (*(v56 + 8))(v1, v53);
  }

  else
  {
    if (v68 == *MEMORY[0x277D729E8])
    {
      v72 = sub_22C372E80();
      v73(v72);
      v74 = sub_22C823748();
      (*(v138 + 16))(v52, v74, v45);
      strcpy(&v139, "enumeration<");
      BYTE13(v139) = 0;
      HIWORD(v139) = -5120;
      sub_22C9090AC();
      TypeIdentifier.selfLoggingTypeName.getter();
      v76 = v75;
      v78 = v77;
      sub_22C823684();
      v79 = sub_22C381870();
      v80(v79);
      MEMORY[0x2318B7850](v76, v78);

      sub_22C8236C4();
      (*(v138 + 8))(v52, v45);
    }

    else if (v68 == *MEMORY[0x277D72A38])
    {
      v81 = sub_22C372E80();
      v82(v81);
      v83 = *v2;
      swift_projectBox();
      sub_22C63489C();
      v84(v135);
      *&v139 = 0x3C797469746E65;
      *(&v139 + 1) = 0xE700000000000000;
      sub_22C9090AC();
      TypeIdentifier.selfLoggingTypeName.getter();
      v86 = v85;
      v88 = v87;
      sub_22C823684();
      v89 = sub_22C381870();
      v90(v89);
      MEMORY[0x2318B7850](v86, v88);

      sub_22C8236C4();
      (*(v136 + 8))(v135, v137);
    }

    else if (v68 == *MEMORY[0x277D729E0])
    {
      v91 = sub_22C372E80();
      v92(v91);
      v93 = sub_22C823748();
      (*(v133 + 16))(v132, v93, v134);
      sub_22C376054();
      *&v139 = v94;
      *(&v139 + 1) = 0xEB000000003C6E6FLL;
      sub_22C823780();
      sub_22C90904C();
      TypeIdentifier.selfLoggingTypeName.getter();
      v96 = v95;
      v98 = v97;
      sub_22C823684();
      v99 = sub_22C381870();
      v100(v99);
      MEMORY[0x2318B7850](v96, v98);

      sub_22C8236C4();
      (*(v133 + 8))(v132, v134);
    }

    else if (v68 == *MEMORY[0x277D72A30])
    {
      v101 = sub_22C372E80();
      v102(v101);
      sub_22C823748();
      sub_22C37BBE4();
      v103(v129);
      sub_22C9090AC();
      TypeIdentifier.selfLoggingTypeName.getter();
      sub_22C823684();
      v104(v1, v53);
      (*(v130 + 8))(v129, v131);
    }

    else
    {
      if (v68 == *MEMORY[0x277D72A40])
      {
        v105 = sub_22C372E80();
        v106(v105);
        sub_22C823748();
        v108 = v126;
        v107 = v127;
        sub_22C37BBE4();
        v109 = v128;
        v110(v126);
        sub_22C823780();
        sub_22C9091BC();
      }

      else if (v68 == *MEMORY[0x277D729F8])
      {
        v111 = sub_22C372E80();
        v112(v111);
        sub_22C823748();
        v108 = v123;
        v107 = v124;
        sub_22C37BBE4();
        v109 = v125;
        v113(v123);
        sub_22C823780();
        sub_22C9090AC();
      }

      else
      {
        if (v68 != *MEMORY[0x277D72A60])
        {
          v117 = *(v62 + 8);
          v118 = sub_22C37FF30();
          v119(v118);
          sub_22C375BCC();
          goto LABEL_9;
        }

        v114 = sub_22C372E80();
        v115(v114);
        sub_22C823748();
        v108 = v120;
        v107 = v121;
        sub_22C37BBE4();
        v109 = v122;
        v116(v120);
        sub_22C823780();
        sub_22C90933C();
      }

      TypeIdentifier.selfLoggingTypeName.getter();
      (*(v56 + 8))(v1, v53);
      (*(v107 + 8))(v108, v109);
    }
  }

LABEL_9:
  sub_22C36CC48();
}