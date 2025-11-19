uint64_t sub_255EB7DD0(uint64_t a1, uint64_t (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v18 - v9;
  v11 = sub_255ECEE68();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255EB8BB8(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_255EB87F0(v10);
    v16 = 0;
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v16 = a2(v15, a4);
    (*(v12 + 8))(v15, v11);
  }

  return v16 & 1;
}

uint64_t sub_255EB7FE8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = sub_255ECEE68();
  v10 = sub_255EB8C48(a3);
  return a5(a1, a2, v9, v10) & 1;
}

BOOL sub_255EB80FC()
{
  sub_255ECEE68();
  sub_255EB8C48(&qword_27F815A58);
  return (sub_255ECF248() & 1) == 0;
}

uint64_t sub_255EB8174(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v6 = sub_255ECEE68();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255EB8BB8(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_255EB87F0(v5);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    if (sub_255ECEE18())
    {
      v11 = sub_255ECEE28();
      (*(v7 + 8))(v10, v6);
      if (v11)
      {
        return 1;
      }
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }
  }

  return 0;
}

uint64_t sub_255EB8344(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v33 - v9;
  v11 = sub_255ECEE68();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v33 - v17;
  sub_255EB8BB8(a1, v10);
  v19 = *(v12 + 48);
  if (v19(v10, 1, v11) == 1)
  {
    sub_255EB87F0(v10);
    if (qword_27F815890 != -1)
    {
      swift_once();
    }

    v20 = sub_255ECF198();
    __swift_project_value_buffer(v20, qword_27F815898);
    v21 = sub_255ECF178();
    v22 = sub_255ECF408();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_255EA2000, v21, v22, "Could not find date during filtering.", v23, 2u);
      MEMORY[0x259C511E0](v23, -1, -1);
    }

    v24 = 0;
  }

  else
  {
    v33[1] = v2;
    v25 = v10;
    v26 = *(v12 + 32);
    v26(v18, v25, v11);
    sub_255EB8BB8(v34, v8);
    if (v19(v8, 1, v11) == 1)
    {
      sub_255EB87F0(v8);
      if (qword_27F815890 != -1)
      {
        swift_once();
      }

      v27 = sub_255ECF198();
      __swift_project_value_buffer(v27, qword_27F815898);
      v28 = sub_255ECF178();
      v29 = sub_255ECF408();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_255EA2000, v28, v29, "No previous evaluation date stored. Skip filtering.", v30, 2u);
        MEMORY[0x259C511E0](v30, -1, -1);
      }

      (*(v12 + 8))(v18, v11);
      v24 = 1;
    }

    else
    {
      v26(v16, v8, v11);
      v24 = sub_255ECEE18();
      v31 = *(v12 + 8);
      v31(v16, v11);
      v31(v18, v11);
    }
  }

  return v24 & 1;
}

uint64_t sub_255EB8728(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_255EB87F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255EB8858()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_255EB8890(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2;
  v7 = a1;
  return v3(&v7, &v6) & 1;
}

uint64_t sub_255EB88D0(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2) & 1;
}

uint64_t sub_255EB897C(uint64_t *a1, uint64_t (*a2)(void *, void *), uint64_t a3, void *a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a4[1];
  v11[0] = *a4;
  v11[1] = v6;
  if (v5)
  {
    v10[0] = v4;
    v10[1] = v5;

    v8 = a2(v10, v11);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_255EB89FC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_255ECF588();
  }
}

uint64_t sub_255EB8A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v9[0] = a1;
  v9[1] = a2;
  v8[0] = a3;
  v8[1] = a4;
  return v5(v9, v8) & 1;
}

uint64_t sub_255EB8A70(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, a1[1], *a2, a2[1]) & 1;
}

uint64_t sub_255EB8AD0(uint64_t *a1)
{
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v2 + 32);
  v6 = *a1;
  v7 = *(a1 + 8);
  v11 = *v5;
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v10 = v6;
    v8 = v3(&v10, &v11);
  }

  return v8 & 1;
}

uint64_t sub_255EB8B3C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_255ECF588() & 1;
  }
}

uint64_t sub_255EB8BB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255EB8C48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_255ECEE68();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_255EB8C8C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_255EB8174(a1) & 1;
}

uint64_t sub_255EB8CCC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v192 = a3;
  v178 = sub_255ECEFC8();
  v176 = *(v178 - 8);
  v5 = *(v176 + 64);
  MEMORY[0x28223BE20](v178);
  v175 = &v164 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159D8, &qword_255ECFC20);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v182 = &v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v173 = &v164 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v164 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v185 = &v164 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v164 - v18;
  v20 = sub_255ECF078();
  isa = v20[-1].isa;
  v188 = v20;
  v189 = isa;
  v22 = *(isa + 8);
  v23 = MEMORY[0x28223BE20](v20);
  v177 = &v164 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v164 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v174 = (&v164 - v29);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v164 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v181 = &v164 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v180 = &v164 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v183 = &v164 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v186 = &v164 - v40;
  MEMORY[0x28223BE20](v39);
  v191 = (&v164 - v41);
  v42 = type metadata accessor for DataSlice(0);
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v164 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v190 = &v164 - v48;
  v49 = a1[3];
  v184 = a1[2];
  v187 = v49;
  v179 = a1;
  v50 = a1[4];
  v195 = v50;
  if (!*(v50 + 16) || (v51 = sub_255EACAD4(0x696C537475706E69, 0xEA00000000006563), (v52 & 1) == 0))
  {
    if (qword_27F815870 != -1)
    {
      swift_once();
    }

    v67 = sub_255ECF198();
    __swift_project_value_buffer(v67, qword_27F815878);
    v68 = sub_255ECF178();
    v69 = sub_255ECF408();
    if (!os_log_type_enabled(v68, v69))
    {
      goto LABEL_16;
    }

    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&dword_255EA2000, v68, v69, "Could not find input slice argument.", v70, 2u);
    goto LABEL_15;
  }

  v171 = v27;
  v172 = v32;
  v53 = (*(v50 + 56) + 16 * v51);
  v54 = *v53;
  v55 = v53[1];
  v56 = *(a2 + 16);

  if (!v56 || (v57 = sub_255EACAD4(v54, v55), (v58 & 1) == 0))
  {
    if (qword_27F815870 != -1)
    {
      swift_once();
    }

    v71 = sub_255ECF198();
    __swift_project_value_buffer(v71, qword_27F815878);

    v68 = sub_255ECF178();
    v72 = sub_255ECF408();

    if (!os_log_type_enabled(v68, v72))
    {

      goto LABEL_16;
    }

    v70 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *&v194 = v73;
    *v70 = 136315138;
    v74 = sub_255EBCAE0(v54, v55, &v194);

    *(v70 + 4) = v74;
    _os_log_impl(&dword_255EA2000, v68, v72, "Input slice '%s' does not exist.", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v73);
    MEMORY[0x259C511E0](v73, -1, -1);
LABEL_15:
    MEMORY[0x259C511E0](v70, -1, -1);
LABEL_16:

    v75 = type metadata accessor for EventSet(0);
    v76 = *(*(v75 - 8) + 56);
    v77 = v75;
    v78 = v192;

    return v76(v78, 1, 1, v77);
  }

  v167 = v54;
  v170 = v55;
  sub_255EBBF4C(*(a2 + 56) + *(v43 + 72) * v57, v47);
  v59 = v190;
  sub_255EBBFB0(v47, v190);
  v60 = *(v42 + 20);
  v61 = v188;
  v62 = v189;
  v63 = *(v189 + 2);
  v64 = v191;
  v63(v191, v59 + v60, v188);
  sub_255EBA1B4(v64, v19);
  v65 = *(v62 + 6);
  v169 = v62 + 48;
  v168 = v65;
  if (v65(v19, 1, v61) == 1)
  {

    (*(v62 + 1))(v64, v61);
    sub_255EBC014(v59);
    v66 = v19;
LABEL_41:
    sub_255EB1E28(v66, &qword_27F8159D8, &qword_255ECFC20);
    v121 = type metadata accessor for EventSet(0);
    return (*(*(v121 - 8) + 56))(v192, 1, 1, v121);
  }

  v80 = *(v62 + 4);
  v81 = v186;
  v166 = v62 + 32;
  v165 = v80;
  v80(v186, v19, v61);
  v83 = *(v62 + 7);
  v82 = (v62 + 56);
  v84 = v185;
  v164 = v83;
  v83(v185, 1, 1, v61);
  v85 = v184;
  if (v184 == 0xD00000000000001BLL && 0x8000000255ED0F20 == v187 || (sub_255ECF588() & 1) != 0)
  {
    sub_255EBAC44(v15);
    if (v168(v15, 1, v61) == 1)
    {

      sub_255EB1E28(v84, &qword_27F8159D8, &qword_255ECFC20);
      v86 = v61;
      v87 = *(v189 + 1);
      v87(v81, v86);
      v87(v191, v86);
      sub_255EBC014(v190);
      v66 = v15;
      goto LABEL_41;
    }

    v187 = v82;
    v88 = v183;
    v165(v183, v15, v61);
    if (qword_27F815870 != -1)
    {
      swift_once();
    }

    v89 = sub_255ECF198();
    __swift_project_value_buffer(v89, qword_27F815878);
    v90 = v180;
    v63(v180, v88, v61);
    v91 = v63;
    v92 = v181;
    v93 = v191;
    v91(v181, v191, v61);
    v94 = v170;

    v95 = sub_255ECF178();
    v96 = sub_255ECF3F8();

    v184 = v95;
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      *&v194 = v174;
      *v97 = 134218498;
      v98 = v175;
      sub_255ECEFD8();
      v99 = sub_255ECEFB8();
      LODWORD(v173) = v96;
      v100 = *(v176 + 8);
      v101 = v178;
      v100(v98, v178);
      v102 = *(v189 + 1);
      v102(v90, v188);
      *(v97 + 4) = v99;
      *(v97 + 12) = 2080;
      v103 = sub_255EBCAE0(v167, v94, &v194);

      *(v97 + 14) = v103;
      *(v97 + 22) = 2048;
      sub_255ECEFD8();
      v104 = sub_255ECEFB8();
      v105 = v98;
      v88 = v183;
      v100(v105, v101);
      v84 = v185;
      v102(v92, v188);
      *(v97 + 24) = v104;
      v106 = v184;
      _os_log_impl(&dword_255EA2000, v184, v173, "Found %ld system volume change events in data slice set '%s' (%ld samples).", v97, 0x20u);
      v107 = v174;
      __swift_destroy_boxed_opaque_existential_0(v174);
      v108 = v107;
      v61 = v188;
      MEMORY[0x259C511E0](v108, -1, -1);
      MEMORY[0x259C511E0](v97, -1, -1);

      sub_255EB1E28(v84, &qword_27F8159D8, &qword_255ECFC20);
      v102(v186, v61);
      v102(v191, v61);
    }

    else
    {
      v118 = *(v189 + 1);
      v118(v92, v61);
      v118(v90, v61);

      sub_255EB1E28(v84, &qword_27F8159D8, &qword_255ECFC20);
      v118(v81, v61);
      v118(v93, v61);
    }
  }

  else
  {
    if ((v85 != 0xD00000000000001ALL || 0x8000000255ED0F40 != v187) && (sub_255ECF588() & 1) == 0)
    {

      v153 = v191;
      if (qword_27F815870 != -1)
      {
        swift_once();
      }

      v154 = sub_255ECF198();
      __swift_project_value_buffer(v154, qword_27F815878);
      v194 = *v179;
      sub_255EBC070(&v194, v193);
      v155 = v187;

      sub_255EB27F8(&v195, v193, &qword_27F815B18, &qword_255ED0008);
      v156 = sub_255ECF178();
      v157 = sub_255ECF408();
      sub_255EBC0CC(&v194);

      sub_255EB1E28(&v195, &qword_27F815B18, &qword_255ED0008);
      v158 = os_log_type_enabled(v156, v157);
      v159 = v189;
      if (v158)
      {
        v160 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        v193[0] = v161;
        *v160 = 136315138;
        *(v160 + 4) = sub_255EBCAE0(v184, v155, v193);
        _os_log_impl(&dword_255EA2000, v156, v157, "Cannot find volume change retriever called '%s'.", v160, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v161);
        MEMORY[0x259C511E0](v161, -1, -1);
        MEMORY[0x259C511E0](v160, -1, -1);
      }

      sub_255EB1E28(v84, &qword_27F8159D8, &qword_255ECFC20);
      v162 = *(v159 + 1);
      v61 = v188;
      v162(v186, v188);
      v162(v153, v61);
      v119 = 1;
      v120 = v182;
      goto LABEL_39;
    }

    v187 = v63;
    v109 = 0.0;
    v110 = v191;
    if (*(v50 + 16))
    {
      v111 = sub_255EACAD4(0xD00000000000001BLL, 0x8000000255ED0F60);
      v112 = v172;
      v113 = v173;
      if (v114)
      {
        v115 = (*(v50 + 56) + 16 * v111);
        v116 = *v115;
        v117 = v115[1];
        *&v194 = 0;

        LOBYTE(v116) = sub_255EBDA88(v116, v117);

        if (v116)
        {
          v109 = *&v194;
        }

        v61 = v188;
      }
    }

    else
    {
      v112 = v172;
      v113 = v173;
    }

    sub_255EBAF68(v81, v113, v109);
    v129 = v168(v113, 1, v61);
    v130 = v174;
    if (v129 == 1)
    {

      sub_255EB1E28(v84, &qword_27F8159D8, &qword_255ECFC20);
      v131 = v61;
      v132 = *(v189 + 1);
      v132(v81, v131);
      v132(v110, v131);
      sub_255EBC014(v190);
      v66 = v113;
      goto LABEL_41;
    }

    v165(v112, v113, v61);
    if (qword_27F815870 != -1)
    {
      swift_once();
    }

    v133 = sub_255ECF198();
    __swift_project_value_buffer(v133, qword_27F815878);
    v134 = v112;
    v135 = v187;
    v187(v130, v134, v61);
    v136 = v171;
    v135(v171, v110, v61);
    v137 = v170;

    v138 = sub_255ECF178();
    v139 = v61;
    v140 = sub_255ECF3F8();

    v188 = v138;
    if (os_log_type_enabled(v138, v140))
    {
      v141 = swift_slowAlloc();
      v187 = v82;
      v142 = v141;
      v184 = swift_slowAlloc();
      *&v194 = v184;
      *v142 = 134218498;
      v143 = v130;
      v144 = v175;
      sub_255ECEFD8();
      v145 = sub_255ECEFB8();
      LODWORD(v183) = v140;
      v181 = *(v176 + 8);
      (v181)(v144, v178);
      v146 = v143;
      v147 = *(v189 + 1);
      v147(v146, v139);
      *(v142 + 4) = v145;
      *(v142 + 12) = 2080;
      v148 = sub_255EBCAE0(v167, v137, &v194);

      *(v142 + 14) = v148;
      *(v142 + 22) = 2048;
      sub_255ECEFD8();
      v149 = sub_255ECEFB8();
      (v181)(v144, v178);
      v88 = v172;
      v147(v136, v139);
      v150 = v147;
      *(v142 + 24) = v149;
      v151 = v188;
      _os_log_impl(&dword_255EA2000, v188, v183, "Found %ld user volume change events in data slice set '%s' (%ld samples).", v142, 0x20u);
      v152 = v184;
      __swift_destroy_boxed_opaque_existential_0(v184);
      MEMORY[0x259C511E0](v152, -1, -1);
      MEMORY[0x259C511E0](v142, -1, -1);

      sub_255EB1E28(v84, &qword_27F8159D8, &qword_255ECFC20);
      v150(v186, v139);
      v150(v191, v139);
      v61 = v139;
    }

    else
    {
      v163 = *(v189 + 1);
      v163(v136, v139);
      v163(v130, v139);

      sub_255EB1E28(v84, &qword_27F8159D8, &qword_255ECFC20);
      v163(v81, v139);
      v163(v191, v139);
      v61 = v139;
      v88 = v172;
    }
  }

  v165(v84, v88, v61);
  v119 = 0;
  v120 = v182;
LABEL_39:
  v164(v84, v119, 1, v61);
  sub_255EBC120(v84, v120);
  if (v168(v120, 1, v61) == 1)
  {
    sub_255EBC014(v190);
    v66 = v120;
    goto LABEL_41;
  }

  v122 = v177;
  v123 = v165;
  v165(v177, v120, v61);
  v124 = v61;
  v126 = *v179;
  v125 = v179[1];
  v127 = type metadata accessor for EventSet(0);
  v128 = v192;
  v123(v192 + *(v127 + 20), v122, v124);
  sub_255EBBFB0(v190, v128 + *(v127 + 24));
  *v128 = v126;
  v128[1] = v125;
  (*(*(v127 - 8) + 56))(v128, 0, 1, v127);
}

uint64_t sub_255EBA1B4@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v90 = sub_255ECEF98();
  v3 = *(v90 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v90);
  v91 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v89 = &v75 - v7;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B08, &qword_255ED0080);
  v8 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v10 = &v75 - v9;
  v11 = sub_255ECEFF8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_255ECEFC8();
  v84 = *(v14 - 8);
  v15 = *(v84 + 64);
  MEMORY[0x28223BE20](v14);
  v81 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_255ECF078();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v85 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v75 - v22;
  if (qword_27F815870 != -1)
  {
    swift_once();
  }

  v24 = sub_255ECF198();
  v25 = __swift_project_value_buffer(v24, qword_27F815878);
  v26 = *(v18 + 16);
  v86 = a1;
  v79 = v26;
  v80 = v18 + 16;
  v26(v23, a1, v17);
  v27 = sub_255ECF178();
  v28 = sub_255ECF3F8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v82 = v18;
    v83 = v17;
    v30 = v29;
    *v29 = 134217984;
    v31 = v25;
    v32 = v14;
    v33 = v3;
    v34 = v81;
    sub_255ECEFD8();
    v35 = sub_255ECEFB8();
    v36 = v34;
    v3 = v33;
    v14 = v32;
    v25 = v31;
    (*(v84 + 8))(v36, v14);
    v78 = *(v82 + 8);
    v78(v23, v83);
    *(v30 + 1) = v35;
    _os_log_impl(&dword_255EA2000, v27, v28, "Attempting to create a volume change event table from %ld data samples.", v30, 0xCu);
    v37 = v30;
    v18 = v82;
    v17 = v83;
    MEMORY[0x259C511E0](v37, -1, -1);
  }

  else
  {
    v78 = *(v18 + 8);
    v78(v23, v17);
  }

  sub_255ECEF78();
  if (v38)
  {
    v39 = sub_255ECF178();
    v40 = sub_255ECF408();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = v17;
      v43 = swift_slowAlloc();
      v93[0] = v43;
      *v41 = 136315138;
      v44 = 1702125924;
      v45 = 0xE400000000000000;
LABEL_12:
      *(v41 + 4) = sub_255EBCAE0(v44, v45, v93);
      _os_log_impl(&dword_255EA2000, v39, v40, "Column '%s' does not exist.", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      v47 = v43;
      v17 = v42;
      MEMORY[0x259C511E0](v47, -1, -1);
      MEMORY[0x259C511E0](v41, -1, -1);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v88 = "manualVolumeChangeFlag";
  sub_255ECEF78();
  if (v46)
  {
    v39 = sub_255ECF178();
    v40 = sub_255ECF408();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = v17;
      v43 = swift_slowAlloc();
      v93[0] = v43;
      *v41 = 136315138;
      v45 = v88 | 0x8000000000000000;
      v44 = 0xD000000000000010;
      goto LABEL_12;
    }

LABEL_13:

    return (*(v18 + 56))(v87, 1, 1, v17);
  }

  sub_255ECEE68();
  sub_255ECF048();
  sub_255ECF088();
  if (sub_255ECEF48())
  {
    v49 = sub_255ECF178();
    v50 = sub_255ECF408();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_255EA2000, v49, v50, "No samples available to create volume change event table.", v51, 2u);
      MEMORY[0x259C511E0](v51, -1, -1);
    }

    v52 = v87;
    v53 = v85;
    v79(v87, v85, v17);
    (*(v18 + 56))(v52, 0, 1, v17);
    v54 = v53;
    v55 = v17;
  }

  else
  {
    v77 = v25;
    v82 = v18;
    v83 = v17;
    v56 = v81;
    sub_255ECEFD8();
    v57 = v84;
    (*(v84 + 16))(v10, v56, v14);
    v58 = *(v76 + 36);
    sub_255EBC190(&qword_27F815B10, MEMORY[0x277CE1870]);
    sub_255ECF398();
    v59 = *(v57 + 8);
    v84 = v57 + 8;
    v86 = v59;
    v59(v56, v14);
    sub_255ECF3C8();
    if (*&v10[v58] != v93[0])
    {
      v68 = (v3 + 16);
      v69 = (v3 + 32);
      v70 = (v3 + 8);
      v71 = v89;
      do
      {
        v72 = sub_255ECF3E8();
        v73 = v90;
        (*v68)(v71);
        v72(v93, 0);
        sub_255ECF3D8();
        (*v69)(v91, v71, v73);
        sub_255ECEFA8();
        if (v93[3])
        {
          if ((swift_dynamicCast() & 1) != 0 && v92)
          {
            v74 = v91;
            sub_255ECF018();
            (*v70)(v74, v90);
          }

          else
          {
            (*v70)(v91, v90);
          }
        }

        else
        {
          (*v70)(v91, v73);
          sub_255EB1E28(v93, &qword_27F815AF8, &qword_255ECFF80);
        }

        sub_255ECF3C8();
      }

      while (*&v10[v58] != v93[0]);
    }

    sub_255EB1E28(v10, &qword_27F815B08, &qword_255ED0080);
    v60 = sub_255ECF178();
    v61 = sub_255ECF3F8();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 134217984;
      swift_beginAccess();
      v63 = v81;
      sub_255ECEFD8();
      swift_endAccess();
      v64 = sub_255ECEFB8();
      v86(v63, v14);
      *(v62 + 4) = v64;
      _os_log_impl(&dword_255EA2000, v60, v61, "Found %ld volume change events.", v62, 0xCu);
      MEMORY[0x259C511E0](v62, -1, -1);
    }

    v65 = v85;
    swift_beginAccess();
    v66 = v87;
    v67 = v83;
    v79(v87, v65, v83);
    (*(v82 + 56))(v66, 0, 1, v67);
    v54 = v65;
    v55 = v67;
  }

  return (v78)(v54, v55);
}

uint64_t sub_255EBAC44@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_255ECEFF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  sub_255ECEF78();
  if (v10)
  {
    if (qword_27F815870 != -1)
    {
      swift_once();
    }

    v11 = sub_255ECF198();
    __swift_project_value_buffer(v11, qword_27F815878);
    v12 = sub_255ECF178();
    v13 = sub_255ECF408();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_255EBCAE0(0xD000000000000016, 0x8000000255ED0BC0, &v21);
      _os_log_impl(&dword_255EA2000, v12, v13, "Data frame does not contain '%s' column.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x259C511E0](v15, -1, -1);
      MEMORY[0x259C511E0](v14, -1, -1);
    }

    v16 = sub_255ECF078();
    v17 = *(*(v16 - 8) + 56);

    return v17(a1, 1, 1, v16);
  }

  else
  {
    sub_255ECF048();
    (*(v3 + 16))(v7, v9, v2);
    sub_255ECF088();
    (*(v3 + 8))(v9, v2);
    v19 = sub_255ECF078();
    return (*(*(v19 - 8) + 56))(a1, 0, 1, v19);
  }
}

uint64_t sub_255EBAF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_255ECEE68();
  v111 = *(v6 - 8);
  v7 = *(v111 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v109 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v122 = &v97 - v10;
  v114 = sub_255ECEF98();
  v104 = *(v114 - 8);
  v11 = *(v104 + 64);
  v12 = MEMORY[0x28223BE20](v114);
  v116 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v124 = &v97 - v14;
  v125 = sub_255ECEFC8();
  v113 = *(v125 - 8);
  v15 = *(v113 + 64);
  MEMORY[0x28223BE20](v125);
  v112 = (&v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B08, &qword_255ED0080);
  v17 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v19 = &v97 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v117 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v97 - v25;
  MEMORY[0x28223BE20](v24);
  v121 = &v97 - v27;
  v118 = sub_255ECF078();
  v123 = *(v118 - 8);
  v28 = *(v123 + 64);
  MEMORY[0x28223BE20](v118);
  v110 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_255ECEFF8();
  v106 = *(v107 - 8);
  v30 = *(v106 + 64);
  v31 = MEMORY[0x28223BE20](v107);
  MEMORY[0x28223BE20](v31);
  v108 = &v97 - v32;
  v33 = sub_255ECF158();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v97 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255ECEF78();
  if (v38)
  {
    if (qword_27F815870 != -1)
    {
      swift_once();
    }

    v39 = sub_255ECF198();
    __swift_project_value_buffer(v39, qword_27F815878);
    v40 = sub_255ECF178();
    v41 = sub_255ECF408();
    v42 = os_log_type_enabled(v40, v41);
    v43 = v118;
    if (v42)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v126[0] = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_255EBCAE0(0xD000000000000016, 0x8000000255ED0BC0, v126);
      _os_log_impl(&dword_255EA2000, v40, v41, "Data frame does not contain '%s' column.", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x259C511E0](v45, -1, -1);
      MEMORY[0x259C511E0](v44, -1, -1);
    }

    v46 = *(v123 + 56);

    return v46(a2, 1, 1, v43);
  }

  v103 = a2;
  v48 = sub_255ECEF78();
  if (v49)
  {
    goto LABEL_13;
  }

  v50 = v48;
  v120 = a1;
  v51 = sub_255ECF058();
  if ((v50 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (v50 >= *(v51 + 16))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
    goto LABEL_21;
  }

  (*(v34 + 16))(v37, v51 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v50, v33);

  v52 = sub_255ECF148();
  (*(v34 + 8))(v37, v33);
  if (v52 != v6)
  {
LABEL_13:
    if (qword_27F815870 != -1)
    {
      swift_once();
    }

    v53 = sub_255ECF198();
    __swift_project_value_buffer(v53, qword_27F815878);
    v54 = sub_255ECF178();
    v55 = sub_255ECF408();
    v56 = os_log_type_enabled(v54, v55);
    v57 = v103;
    v58 = v118;
    if (v56)
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_255EA2000, v54, v55, "Data frame does not contain date column.", v59, 2u);
      MEMORY[0x259C511E0](v59, -1, -1);
    }

    return (*(v123 + 56))(v57, 1, 1, v58);
  }

  sub_255ECF048();
  sub_255ECF048();
  sub_255ECF088();
  v60 = v111;
  v61 = *(v111 + 56);
  v115 = v6;
  v119 = v61;
  v120 = v111 + 56;
  v61(v121, 1, 1, v6);
  v62 = v112;
  sub_255ECEFE8();
  v63 = v113;
  v64 = v125;
  (*(v113 + 16))(v19, v62, v125);
  v65 = *(v105 + 36);
  v66 = sub_255EBC190(&qword_27F815B10, MEMORY[0x277CE1870]);
  sub_255ECF398();
  (*(v63 + 8))(v62, v64);
  sub_255ECF3C8();
  v67 = v114;
  v68 = v116;
  if (*&v19[v65] != v126[0])
  {
    v113 = v104 + 16;
    v112 = (v104 + 32);
    v105 = v60 + 48;
    v99 = (v60 + 32);
    v98 = (v60 + 8);
    v111 = v104 + 8;
    v100 = v26;
    v102 = v65;
    v101 = v66;
    do
    {
      v81 = sub_255ECF3E8();
      v82 = v124;
      (*v113)(v124);
      v81(v126, 0);
      sub_255ECF3D8();
      (*v112)(v68, v82, v67);
      sub_255ECEFA8();
      if (v126[3])
      {
        v83 = v115;
        v84 = swift_dynamicCast();
        v119(v26, v84 ^ 1u, 1, v83);
        v85 = *v105;
        v86 = (*v105)(v26, 1, v83);
        v87 = v117;
        if (v86 != 1)
        {
          v88 = *v99;
          (*v99)(v122, v26, v83);
          sub_255EB27F8(v121, v87, &qword_27F815960, &qword_255ECFBC8);
          if (v85(v87, 1, v83) == 1)
          {
            sub_255EB1E28(v87, &qword_27F815960, &qword_255ECFBC8);
            v89 = v122;
            goto LABEL_33;
          }

          v90 = v109;
          v88(v109, v87, v83);
          sub_255ECEDE8();
          v92 = v91;
          v93 = v90;
          v68 = v116;
          v89 = v122;
          (*v98)(v93, v83);
          if (v92 >= a3)
          {
LABEL_33:
            sub_255ECF018();
          }

          v94 = v68;
          v95 = v114;
          (*v111)(v94, v114);
          v96 = v121;
          sub_255EB1E28(v121, &qword_27F815960, &qword_255ECFBC8);
          v88(v96, v89, v83);
          v67 = v95;
          v68 = v116;
          v119(v96, 0, 1, v83);
          v26 = v100;
          v65 = v102;
          goto LABEL_26;
        }

        (*v111)(v68, v67);
        v65 = v102;
      }

      else
      {
        (*v111)(v68, v67);
        sub_255EB1E28(v126, &qword_27F815AF8, &qword_255ECFF80);
        v119(v26, 1, 1, v115);
      }

      sub_255EB1E28(v26, &qword_27F815960, &qword_255ECFBC8);
LABEL_26:
      sub_255ECF3C8();
    }

    while (*&v19[v65] != v126[0]);
  }

  sub_255EB1E28(v19, &qword_27F815B08, &qword_255ED0080);
  if (qword_27F815870 != -1)
  {
    goto LABEL_37;
  }

LABEL_21:
  v69 = sub_255ECF198();
  __swift_project_value_buffer(v69, qword_27F815878);
  v70 = sub_255ECF178();
  v71 = sub_255ECF3F8();
  v72 = os_log_type_enabled(v70, v71);
  v73 = v103;
  v74 = v118;
  v75 = v110;
  if (v72)
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v126[0] = v77;
    *v76 = 136315138;
    swift_beginAccess();
    sub_255EBC190(&qword_27F815B20, MEMORY[0x277CE1898]);
    v78 = sub_255ECF578();
    v80 = sub_255EBCAE0(v78, v79, v126);

    *(v76 + 4) = v80;
    _os_log_impl(&dword_255EA2000, v70, v71, "INFO: %s", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v77);
    MEMORY[0x259C511E0](v77, -1, -1);
    MEMORY[0x259C511E0](v76, -1, -1);
  }

  sub_255EB1E28(v121, &qword_27F815960, &qword_255ECFBC8);
  (*(v106 + 8))(v108, v107);
  swift_beginAccess();
  (*(v123 + 16))(v73, v75, v74);
  (*(v123 + 56))(v73, 0, 1, v74);
  return (*(v123 + 8))(v75, v74);
}

uint64_t sub_255EBBF4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataSlice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255EBBFB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataSlice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255EBC014(uint64_t a1)
{
  v2 = type metadata accessor for DataSlice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255EBC120(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159D8, &qword_255ECFC20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255EBC190(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_255EBC1D8(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
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
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_255ECF4E8();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_255EBD088(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

BOOL sub_255EBC4D8(uint64_t a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = sub_255ECEE68();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255EB27F8(a1, v7, &qword_27F815960, &qword_255ECFBC8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_255EB1E28(v7, &qword_27F815960, &qword_255ECFBC8);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    sub_255ECEBC8();
    v15 = v14;
    sub_255ECEBC8();
    v17 = v16;
    (*(v9 + 8))(v12, v8);
    return v15 - v17 >= 0.0 && v15 - v17 <= a2;
  }
}

BOOL sub_255EBC6CC(uint64_t a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = sub_255ECEE68();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255EB27F8(a1, v7, &qword_27F815960, &qword_255ECFBC8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_255EB1E28(v7, &qword_27F815960, &qword_255ECFBC8);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    sub_255ECEBC8();
    v15 = v14;
    sub_255ECEBC8();
    v17 = v16;
    (*(v9 + 8))(v12, v8);
    return v15 - v17 >= 0.0 && v15 - v17 <= a2;
  }
}

BOOL sub_255EBC8C4(uint64_t a1, uint64_t a2, char a3)
{
  v20 = *&a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_255ECEE68();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255EB27F8(a1, v8, &qword_27F815960, &qword_255ECFBC8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_255EB1E28(v8, &qword_27F815960, &qword_255ECFBC8);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    if (a3)
    {
      (*(v10 + 8))(v13, v9);
      return 0;
    }

    else
    {
      sub_255ECEBC8();
      v16 = v15;
      sub_255ECEBC8();
      v18 = v17;
      (*(v10 + 8))(v13, v9);
      return v16 - v18 >= 0.0 && v16 - v18 <= v20;
    }
  }
}

uint64_t sub_255EBCAE0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_255EBCBAC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_255EAF798(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_255EBCBAC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_255EBCCB8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_255ECF4E8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_255EBCCB8(uint64_t a1, unint64_t a2)
{
  v4 = sub_255EBCD04(a1, a2);
  sub_255EBCE34(&unk_2867F91C8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_255EBCD04(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_255EBCF20(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_255ECF4E8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_255ECF2F8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_255EBCF20(v10, 0);
        result = sub_255ECF4B8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_255EBCE34(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_255EBCF94(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_255EBCF20(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B38, &qword_255ED0038);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_255EBCF94(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B38, &qword_255ED0038);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unsigned __int8 *sub_255EBD088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_255ECF348();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_255EBD614();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_255ECF4E8();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_255EBD614()
{
  v0 = sub_255ECF358();
  v4 = sub_255EBD694(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_255EBD694(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_255ECF2B8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_255ECF448();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_255EBCF20(v9, 0);
  v12 = sub_255EBD7EC(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_255ECF2B8();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_255ECF4E8();
LABEL_4:

  return sub_255ECF2B8();
}

unint64_t sub_255EBD7EC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_255EBDA0C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_255ECF328();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_255ECF4E8();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_255EBDA0C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_255ECF308();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_255EBDA0C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_255ECF338();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x259C50AA0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

BOOL sub_255EBDA88(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_255ECF4C8();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

void sub_255EBDB80(uint64_t a1, char *a2, double a3)
{
  v105 = a2;
  v5 = sub_255ECF078();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v83 - v11;
  v95 = sub_255ECEFF8();
  v98 = *(v95 - 8);
  v13 = *(v98 + 64);
  MEMORY[0x28223BE20](v95);
  v94 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v100 = &v83 - v17;
  v107 = sub_255ECEE68();
  v97 = *(v107 - 8);
  v18 = *(v97 + 64);
  MEMORY[0x28223BE20](v107);
  v93 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_255ECEF98();
  v96 = *(v99 - 8);
  v20 = *(v96 + 64);
  MEMORY[0x28223BE20](v99);
  v106 = (&v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_255ECEFC8();
  v23 = *(v22 - 8);
  v103 = v22;
  v104 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v102 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B08, &qword_255ED0080);
  v26 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v28 = &v83 - v27;
  v29 = sub_255ECF158();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_255ECEF78();
  if (v35)
  {
    return;
  }

  v36 = v34;
  v91 = a1;
  v37 = sub_255ECF058();
  if ((v36 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v36 >= *(v37 + 16))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v88 = v12;
  v89 = v10;
  v92 = v6;
  v90 = v5;
  v10 = ((*(v30 + 80) + 32) & ~*(v30 + 80));
  v38 = *(v30 + 72);
  v39 = *(v30 + 16);
  v39(v33, &v10[v37 + v38 * v36], v29);

  v40 = sub_255ECF148();
  v42 = *(v30 + 8);
  v30 += 8;
  v41 = v42;
  v42(v33, v29);
  if (v40 != v107)
  {
    return;
  }

  v43 = sub_255ECEF78();
  if (v44)
  {
    return;
  }

  v87 = v43;
  v45 = sub_255ECF058();
  if ((v87 & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

  if (v87 >= *(v45 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v39(v33, &v10[v45 + v87 * v38], v29);

  v46 = sub_255ECF148();
  v41(v33, v29);
  v47 = v107;
  if (v46 != v107)
  {
    return;
  }

  v48 = v102;
  v10 = v105;
  sub_255ECEFD8();
  v49 = v103;
  v50 = v104;
  (*(v104 + 16))(v28, v48, v103);
  v51 = *(v101 + 36);
  sub_255EC4234();
  sub_255ECF398();
  v52 = *(v50 + 8);
  v104 = v50 + 8;
  v86 = v52;
  v52(v48, v49);
  sub_255ECF3C8();
  if (*&v28[v51] == v109[0])
  {
    v30 = 0;
    goto LABEL_21;
  }

  v30 = 0;
  v85 = 0;
  v101 = v96 + 16;
  v96 += 8;
  v53 = (v97 + 56);
  v87 = v97 + 48;
  v84 = (v97 + 32);
  v97 += 8;
  v98 += 8;
  v54 = v100;
  while (2)
  {
    v107 = v30;
    v55 = v99;
    while (1)
    {
      v56 = sub_255ECF3E8();
      v57 = v106;
      (*v101)(v106);
      v56(v109, 0);
      sub_255ECF3D8();
      sub_255ECEFA8();
      (*v96)(v57, v55);
      if (v109[3])
      {
        break;
      }

      sub_255EB1E28(v109, &qword_27F815AF8, &qword_255ECFF80);
      (*v53)(v54, 1, 1, v47);
LABEL_14:
      sub_255EB1E28(v54, &qword_27F815960, &qword_255ECFBC8);
      sub_255ECF3C8();
      if (*&v28[v51] == v109[0])
      {
        v30 = v107;
        v10 = v105;
        goto LABEL_21;
      }
    }

    v58 = swift_dynamicCast();
    (*v53)(v54, v58 ^ 1u, 1, v47);
    if ((*v87)(v54, 1, v47) == 1)
    {
      goto LABEL_14;
    }

    v59 = v93;
    v60 = (*v84)(v93, v54, v47);
    MEMORY[0x28223BE20](v60);
    *(&v83 - 2) = v59;
    *(&v83 - 1) = a3;
    v61 = v94;
    v62 = v85;
    sub_255ECF048();
    v85 = v62;
    v64 = v102;
    v63 = v103;
    sub_255ECEFE8();
    sub_255ECF398();
    sub_255ECF3C8();
    v86(v64, v63);
    (*v98)(v61, v95);
    v65 = v109[0] != v108;
    v30 = v107 + v65;
    if (__OFADD__(v107, v65))
    {
      __break(1u);
      return;
    }

    (*v97)(v59, v47);
    sub_255ECF3C8();
    v54 = v100;
    v10 = v105;
    if (*&v28[v51] != v109[0])
    {
      continue;
    }

    break;
  }

LABEL_21:
  sub_255EB1E28(v28, &qword_27F815B08, &qword_255ED0080);
  if (qword_27F815830 != -1)
  {
LABEL_31:
    swift_once();
  }

  v66 = sub_255ECF198();
  __swift_project_value_buffer(v66, qword_27F815838);
  v67 = v92;
  v68 = *(v92 + 16);
  v69 = v88;
  v70 = v90;
  v68(v88, v91, v90);
  v71 = v89;
  v68(v89, v10, v70);
  v72 = sub_255ECF178();
  v73 = sub_255ECF3F8();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 134218496;
    *(v74 + 4) = v30;
    *(v74 + 12) = 2048;
    v106 = v72;
    v75 = v102;
    LODWORD(v105) = v73;
    sub_255ECEFD8();
    v101 = sub_255ECEFB8();
    v76 = v103;
    v77 = v86;
    v86(v75, v103);
    v107 = v30;
    v78 = *(v92 + 8);
    v78(v69, v70);
    v79 = v78;
    *(v74 + 14) = v101;
    *(v74 + 22) = 2048;
    sub_255ECEFD8();
    v80 = sub_255ECEFB8();
    v81 = v75;
    v72 = v106;
    v77(v81, v76);
    v79(v71, v70);
    *(v74 + 24) = v80;
    _os_log_impl(&dword_255EA2000, v72, v105, "Found %ld false positives in %ld user volume changes and %ld system volume changes.", v74, 0x20u);
    MEMORY[0x259C511E0](v74, -1, -1);
  }

  else
  {
    v82 = *(v67 + 8);
    v82(v71, v70);
    v82(v69, v70);
  }
}

void sub_255EBE744(char *a1, char *a2, double a3)
{
  v103 = a2;
  v5 = sub_255ECF078();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v82 - v11;
  v93 = sub_255ECEFF8();
  v96 = *(v93 - 8);
  v13 = *(v96 + 64);
  MEMORY[0x28223BE20](v93);
  v92 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v98 = &v82 - v17;
  v105 = sub_255ECEE68();
  v95 = *(v105 - 8);
  v18 = *(v95 + 64);
  MEMORY[0x28223BE20](v105);
  v91 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_255ECEF98();
  v94 = *(v97 - 8);
  v20 = *(v94 + 64);
  MEMORY[0x28223BE20](v97);
  v104 = (&v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_255ECEFC8();
  v23 = *(v22 - 8);
  v101 = v22;
  v102 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v100 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B08, &qword_255ED0080);
  v26 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v28 = &v82 - v27;
  v29 = sub_255ECF158();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v82 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_255ECEF78();
  if (v35)
  {
    return;
  }

  v36 = v34;
  v90 = a1;
  v37 = sub_255ECF058();
  if ((v36 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v36 >= *(v37 + 16))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v86 = v12;
  v87 = v10;
  v89 = v6;
  v88 = v5;
  v10 = ((*(v30 + 80) + 32) & ~*(v30 + 80));
  v38 = *(v30 + 72);
  v39 = *(v30 + 16);
  v39(v33, &v10[v37 + v38 * v36], v29);

  v40 = sub_255ECF148();
  v42 = *(v30 + 8);
  v30 += 8;
  v41 = v42;
  v42(v33, v29);
  if (v40 != v105)
  {
    return;
  }

  v43 = sub_255ECEF78();
  if (v44)
  {
    return;
  }

  v85 = v43;
  v45 = sub_255ECF058();
  if ((v85 & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

  if (v85 >= *(v45 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v39(v33, &v10[v45 + v85 * v38], v29);

  v46 = sub_255ECF148();
  v41(v33, v29);
  if (v46 != v105)
  {
    return;
  }

  v47 = v100;
  v10 = v90;
  sub_255ECEFD8();
  v48 = v101;
  v49 = v102;
  (*(v102 + 16))(v28, v47, v101);
  v50 = *(v99 + 36);
  sub_255EC4234();
  sub_255ECF398();
  v51 = *(v49 + 8);
  v102 = v49 + 8;
  v84 = v51;
  v51(v47, v48);
  sub_255ECF3C8();
  if (*&v28[v50] == v106[0])
  {
    v30 = 0;
    goto LABEL_21;
  }

  v30 = 0;
  v83 = 0;
  v99 = v94 + 16;
  v94 += 8;
  v52 = (v95 + 56);
  v85 = v95 + 48;
  v82 = (v95 + 32);
  v95 += 8;
  v96 += 8;
  v53 = v98;
  v54 = v105;
  while (2)
  {
    v105 = v30;
    v55 = v97;
    while (1)
    {
      v56 = sub_255ECF3E8();
      v57 = v104;
      (*v99)(v104);
      v56(v106, 0);
      sub_255ECF3D8();
      sub_255ECEFA8();
      (*v94)(v57, v55);
      if (v106[3])
      {
        break;
      }

      sub_255EB1E28(v106, &qword_27F815AF8, &qword_255ECFF80);
      (*v52)(v53, 1, 1, v54);
LABEL_14:
      sub_255EB1E28(v53, &qword_27F815960, &qword_255ECFBC8);
      sub_255ECF3C8();
      if (*&v28[v50] == v106[0])
      {
        v30 = v105;
        v10 = v90;
        goto LABEL_21;
      }
    }

    v58 = swift_dynamicCast();
    (*v52)(v53, v58 ^ 1u, 1, v54);
    if ((*v85)(v53, 1, v54) == 1)
    {
      goto LABEL_14;
    }

    v59 = v91;
    v60 = (*v82)(v91, v53, v54);
    MEMORY[0x28223BE20](v60);
    *(&v82 - 2) = v59;
    *(&v82 - 1) = a3;
    v61 = v92;
    v62 = v83;
    sub_255ECF048();
    v83 = v62;
    v63 = v93;
    v64 = sub_255ECEF48();
    (*v96)(v61, v63);
    v30 = v105 + (v64 & 1);
    if (__OFADD__(v105, v64 & 1))
    {
      __break(1u);
      return;
    }

    (*v95)(v59, v54);
    sub_255ECF3C8();
    v53 = v98;
    v10 = v90;
    if (*&v28[v50] != v106[0])
    {
      continue;
    }

    break;
  }

LABEL_21:
  sub_255EB1E28(v28, &qword_27F815B08, &qword_255ED0080);
  if (qword_27F815830 != -1)
  {
LABEL_31:
    swift_once();
  }

  v65 = sub_255ECF198();
  __swift_project_value_buffer(v65, qword_27F815838);
  v66 = v89;
  v67 = *(v89 + 16);
  v68 = v86;
  v69 = v88;
  v67(v86, v10, v88);
  v70 = v87;
  v67(v87, v103, v69);
  v71 = sub_255ECF178();
  v72 = sub_255ECF3F8();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 134218496;
    *(v73 + 4) = v30;
    *(v73 + 12) = 2048;
    v104 = v71;
    v74 = v100;
    LODWORD(v103) = v72;
    sub_255ECEFD8();
    v99 = sub_255ECEFB8();
    v75 = v101;
    v76 = v84;
    v84(v74, v101);
    v105 = v30;
    v77 = *(v89 + 8);
    v77(v68, v69);
    v78 = v77;
    *(v73 + 14) = v99;
    *(v73 + 22) = 2048;
    sub_255ECEFD8();
    v79 = sub_255ECEFB8();
    v80 = v74;
    v71 = v104;
    v76(v80, v75);
    v78(v70, v69);
    *(v73 + 24) = v79;
    _os_log_impl(&dword_255EA2000, v71, v103, "Found %ld false negatives in %ld user volume changes and %ld system volume changes.", v73, 0x20u);
    MEMORY[0x259C511E0](v73, -1, -1);
  }

  else
  {
    v81 = *(v66 + 8);
    v81(v70, v69);
    v81(v68, v69);
  }
}

void sub_255EBF2CC(uint64_t a1, char *a2, double a3)
{
  v105 = a2;
  v5 = sub_255ECF078();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v83 - v11;
  v95 = sub_255ECEFF8();
  v98 = *(v95 - 8);
  v13 = *(v98 + 64);
  MEMORY[0x28223BE20](v95);
  v94 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v100 = &v83 - v17;
  v107 = sub_255ECEE68();
  v97 = *(v107 - 8);
  v18 = *(v97 + 64);
  MEMORY[0x28223BE20](v107);
  v93 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_255ECEF98();
  v96 = *(v99 - 8);
  v20 = *(v96 + 64);
  MEMORY[0x28223BE20](v99);
  v106 = (&v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_255ECEFC8();
  v23 = *(v22 - 8);
  v103 = v22;
  v104 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v102 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B08, &qword_255ED0080);
  v26 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v28 = &v83 - v27;
  v29 = sub_255ECF158();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_255ECEF78();
  if (v35)
  {
    return;
  }

  v36 = v34;
  v91 = a1;
  v37 = sub_255ECF058();
  if ((v36 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v36 >= *(v37 + 16))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v88 = v12;
  v89 = v10;
  v92 = v6;
  v90 = v5;
  v10 = ((*(v30 + 80) + 32) & ~*(v30 + 80));
  v38 = *(v30 + 72);
  v39 = *(v30 + 16);
  v39(v33, &v10[v37 + v38 * v36], v29);

  v40 = sub_255ECF148();
  v42 = *(v30 + 8);
  v30 += 8;
  v41 = v42;
  v42(v33, v29);
  if (v40 != v107)
  {
    return;
  }

  v43 = sub_255ECEF78();
  if (v44)
  {
    return;
  }

  v87 = v43;
  v45 = sub_255ECF058();
  if ((v87 & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

  if (v87 >= *(v45 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v39(v33, &v10[v45 + v87 * v38], v29);

  v46 = sub_255ECF148();
  v41(v33, v29);
  v47 = v107;
  if (v46 != v107)
  {
    return;
  }

  v48 = v102;
  v10 = v105;
  sub_255ECEFD8();
  v49 = v103;
  v50 = v104;
  (*(v104 + 16))(v28, v48, v103);
  v51 = *(v101 + 36);
  sub_255EC4234();
  sub_255ECF398();
  v52 = *(v50 + 8);
  v104 = v50 + 8;
  v86 = v52;
  v52(v48, v49);
  sub_255ECF3C8();
  if (*&v28[v51] == v109[0])
  {
    v30 = 0;
    goto LABEL_21;
  }

  v30 = 0;
  v85 = 0;
  v101 = v96 + 16;
  v96 += 8;
  v53 = (v97 + 56);
  v87 = v97 + 48;
  v84 = (v97 + 32);
  v97 += 8;
  v98 += 8;
  v54 = v100;
  while (2)
  {
    v107 = v30;
    v55 = v99;
    while (1)
    {
      v56 = sub_255ECF3E8();
      v57 = v106;
      (*v101)(v106);
      v56(v109, 0);
      sub_255ECF3D8();
      sub_255ECEFA8();
      (*v96)(v57, v55);
      if (v109[3])
      {
        break;
      }

      sub_255EB1E28(v109, &qword_27F815AF8, &qword_255ECFF80);
      (*v53)(v54, 1, 1, v47);
LABEL_14:
      sub_255EB1E28(v54, &qword_27F815960, &qword_255ECFBC8);
      sub_255ECF3C8();
      if (*&v28[v51] == v109[0])
      {
        v30 = v107;
        v10 = v105;
        goto LABEL_21;
      }
    }

    v58 = swift_dynamicCast();
    (*v53)(v54, v58 ^ 1u, 1, v47);
    if ((*v87)(v54, 1, v47) == 1)
    {
      goto LABEL_14;
    }

    v59 = v93;
    v60 = (*v84)(v93, v54, v47);
    MEMORY[0x28223BE20](v60);
    *(&v83 - 2) = v59;
    *(&v83 - 1) = a3;
    v61 = v94;
    v62 = v85;
    sub_255ECF048();
    v85 = v62;
    v64 = v102;
    v63 = v103;
    sub_255ECEFE8();
    sub_255ECF398();
    sub_255ECF3C8();
    v86(v64, v63);
    (*v98)(v61, v95);
    v65 = v109[0] == v108;
    v30 = v107 + v65;
    if (__OFADD__(v107, v65))
    {
      __break(1u);
      return;
    }

    (*v97)(v59, v47);
    sub_255ECF3C8();
    v54 = v100;
    v10 = v105;
    if (*&v28[v51] != v109[0])
    {
      continue;
    }

    break;
  }

LABEL_21:
  sub_255EB1E28(v28, &qword_27F815B08, &qword_255ED0080);
  if (qword_27F815830 != -1)
  {
LABEL_31:
    swift_once();
  }

  v66 = sub_255ECF198();
  __swift_project_value_buffer(v66, qword_27F815838);
  v67 = v92;
  v68 = *(v92 + 16);
  v69 = v88;
  v70 = v90;
  v68(v88, v91, v90);
  v71 = v89;
  v68(v89, v10, v70);
  v72 = sub_255ECF178();
  v73 = sub_255ECF3F8();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 134218496;
    *(v74 + 4) = v30;
    *(v74 + 12) = 2048;
    v106 = v72;
    v75 = v102;
    LODWORD(v105) = v73;
    sub_255ECEFD8();
    v101 = sub_255ECEFB8();
    v76 = v103;
    v77 = v86;
    v86(v75, v103);
    v107 = v30;
    v78 = *(v92 + 8);
    v78(v69, v70);
    v79 = v78;
    *(v74 + 14) = v101;
    *(v74 + 22) = 2048;
    sub_255ECEFD8();
    v80 = sub_255ECEFB8();
    v81 = v75;
    v72 = v106;
    v77(v81, v76);
    v79(v71, v70);
    *(v74 + 24) = v80;
    _os_log_impl(&dword_255EA2000, v72, v105, "Found %ld true positives in %ld user volume changes and %ld system volume changes.", v74, 0x20u);
    MEMORY[0x259C511E0](v74, -1, -1);
  }

  else
  {
    v82 = *(v67 + 8);
    v82(v71, v70);
    v82(v69, v70);
  }
}

double sub_255EBFE90(__int128 *a1, char *a2, char *a3, double a4)
{
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = v7 == 0x736F5065736C6166 && v8 == 0xEE00736576697469;
  if (v9 || (v10 = *(a1 + 4), v11 = *(a1 + 2), v12 = *(a1 + 3), v13 = a4, v14 = sub_255ECF588(), a4 = v13, (v14 & 1) != 0))
  {

    sub_255EBDB80(a2, a3, a4);
  }

  else
  {
    v16 = v7 == 0x67654E65736C6166 && v8 == 0xEE00736576697461;
    if (v16 || (v17 = sub_255ECF588(), a4 = v13, (v17 & 1) != 0))
    {

      sub_255EBE744(a2, a3, a4);
    }

    else if (v7 == 0x69736F5065757274 && v8 == 0xED00007365766974 || (v18 = sub_255ECF588(), a4 = v13, (v18 & 1) != 0))
    {

      sub_255EBF2CC(a2, a3, a4);
    }

    else
    {
      if (qword_27F815830 != -1)
      {
        swift_once();
      }

      v19 = sub_255ECF198();
      __swift_project_value_buffer(v19, qword_27F815838);
      v25 = *a1;
      v26 = v10;
      sub_255EBC070(&v25, v24);

      sub_255EB27F8(&v26, v24, &qword_27F815B18, &qword_255ED0008);
      v20 = sub_255ECF178();
      v21 = sub_255ECF408();
      sub_255EBC0CC(&v25);

      sub_255EB1E28(&v26, &qword_27F815B18, &qword_255ED0008);
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v24[0] = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_255EBCAE0(v7, v8, v24);
        _os_log_impl(&dword_255EA2000, v20, v21, "Aggregator function named '%s' does not exist.", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v23);
        MEMORY[0x259C511E0](v23, -1, -1);
        MEMORY[0x259C511E0](v22, -1, -1);
      }

      return 0.0;
    }
  }

  return result;
}

uint64_t sub_255EC01C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815908, &qword_255ECFB80);
  v54 = *(v0 - 8);
  v55 = v0;
  v1 = *(v54 + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v53 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v53 - v5;
  MEMORY[0x28223BE20](v4);
  v8 = &v53 - v7;
  v9 = sub_255ECF158();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = 0x8000000255ED11E0;
  v14 = sub_255ECEF78();
  v57 = 0xD000000000000011;
  if (v15)
  {
    v58 = 0xD000000000000015;
  }

  else
  {
    v16 = v14;
    result = sub_255ECF058();
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v16 >= *(result + 16))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    (*(v10 + 16))(v13, result + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v16, v9);

    v18 = sub_255ECF148();
    (*(v10 + 8))(v13, v9);
    v19 = 0xD000000000000015;
    if (v18 == MEMORY[0x277D83B88])
    {
      sub_255ECF098();
      if (sub_255ECF2D8() >= 1)
      {
        sub_255EB2624(&qword_27F815B50, &qword_27F815908, &qword_255ECFB80);
        v20 = sub_255ECF3B8();
        v58 = 0xD000000000000015;
        if (v20 & 1) != 0 || (sub_255ECF3C8(), sub_255EB2624(&qword_27F815B58, &qword_27F815908, &qword_255ECFB80), sub_255ECF218(), v21 = sub_255ECF3E8(), v23 = *v22, v24 = *(v22 + 8), v21(v60, 0), (v24))
        {
          v19 = v58;
        }

        else
        {
          v60[0] = 0;
          v60[1] = 0xE000000000000000;
          sub_255ECF4D8();

          v60[0] = 0xD000000000000012;
          v60[1] = 0x8000000255ED1280;
          v61 = v23;
          v25 = sub_255ECF578();
          MEMORY[0x259C50A70](v25);

          v19 = v60[0];
          v59 = v60[1];
        }
      }

      v58 = v19;
      (*(v54 + 8))(v8, v55);
    }

    else
    {
      v58 = 0xD000000000000015;
    }
  }

  v56 = 0x8000000255ED1200;
  v26 = sub_255ECEF78();
  if (v27)
  {
    v28 = 0xD000000000000013;
    goto LABEL_25;
  }

  v29 = v26;
  result = sub_255ECF058();
  if ((v29 & 0x8000000000000000) != 0)
  {
    goto LABEL_37;
  }

  if (v29 >= *(result + 16))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  (*(v10 + 16))(v13, result + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v29, v9);

  v30 = sub_255ECF148();
  (*(v10 + 8))(v13, v9);
  v28 = 0xD000000000000013;
  if (v30 == MEMORY[0x277D83B88])
  {
    sub_255ECF098();
    v31 = v55;
    if (sub_255ECF118() >= 1)
    {
      sub_255EB2624(&qword_27F815B50, &qword_27F815908, &qword_255ECFB80);
      v28 = 0xD000000000000013;
      if ((sub_255ECF3B8() & 1) == 0)
      {
        sub_255ECF3C8();
        sub_255EB2624(&qword_27F815B58, &qword_27F815908, &qword_255ECFB80);
        sub_255ECF218();
        v32 = sub_255ECF3E8();
        v34 = *v33;
        v35 = *(v33 + 8);
        v32(v60, 0);
        if ((v35 & 1) == 0)
        {
          if ((v34 & 2) != 0)
          {
            v56 = 0x8000000255ED1260;
            v28 = 0xD000000000000017;
          }

          else
          {
            v56 = 0x8000000255ED1240;
            v28 = 0xD000000000000018;
          }
        }
      }
    }

    (*(v54 + 8))(v6, v31);
  }

LABEL_25:
  v36 = 0x8000000255ED1220;
  v37 = sub_255ECEF78();
  if (v38)
  {
    goto LABEL_29;
  }

  v39 = v37;
  result = sub_255ECF058();
  if ((v39 & 0x8000000000000000) != 0)
  {
    goto LABEL_39;
  }

  if (v39 < *(result + 16))
  {
    (*(v10 + 16))(v13, result + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v39, v9);

    v40 = sub_255ECF148();
    (*(v10 + 8))(v13, v9);
    if (v40 == MEMORY[0x277D83B88])
    {
      v46 = v53;
      sub_255ECF098();
      v47 = v55;
      if (sub_255ECF118() >= 1)
      {
        sub_255EB2624(&qword_27F815B50, &qword_27F815908, &qword_255ECFB80);
        if ((sub_255ECF3B8() & 1) == 0)
        {
          sub_255ECF3C8();
          sub_255EB2624(&qword_27F815B58, &qword_27F815908, &qword_255ECFB80);
          sub_255ECF218();
          v48 = sub_255ECF3E8();
          v50 = *v49;
          v51 = *(v49 + 8);
          v48(v60, 0);
          if ((v51 & 1) == 0)
          {
            v60[0] = 0;
            v60[1] = 0xE000000000000000;
            sub_255ECF4D8();

            strcpy(v60, "headphoneMode:");
            HIBYTE(v60[1]) = -18;
            v61 = v50;
            v52 = sub_255ECF578();
            MEMORY[0x259C50A70](v52);

            v36 = v60[1];
            v57 = v60[0];
          }
        }
      }

      v42 = v56;
      (*(v54 + 8))(v46, v47);
      v41 = v58;
      goto LABEL_30;
    }

LABEL_29:
    v41 = v58;
    v42 = v56;
LABEL_30:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A78, &qword_255ECFF10);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_255ECFF70;
    v44 = v59;
    *(v43 + 32) = v41;
    *(v43 + 40) = v44;
    *(v43 + 48) = v28;
    *(v43 + 56) = v42;
    *(v43 + 64) = v57;
    *(v43 + 72) = v36;
    v60[0] = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815930, &unk_255ECFB98);
    sub_255EB2624(&qword_27F815B48, &qword_27F815930, &unk_255ECFB98);
    v45 = sub_255ECF228();

    return v45;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_255EC0BC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815908, &qword_255ECFB80);
  v14 = *(v0 - 8);
  v1 = *(v14 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - v2;
  v4 = sub_255ECF158();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_255ECEF78();
  if ((v10 & 1) == 0)
  {
    v11 = result;
    result = sub_255ECF058();
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 < *(result + 16))
    {
      (*(v5 + 16))(v8, result + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v4);

      v12 = sub_255ECF148();
      result = (*(v5 + 8))(v8, v4);
      if (v12 == MEMORY[0x277D83B88])
      {
        sub_255ECF098();
        sub_255EC42D4();
        sub_255ECF128();
        return (*(v14 + 8))(v3, v0);
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

double sub_255EC0E30(uint64_t a1, uint64_t a2)
{
  v4 = sub_255ECEFC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255ECEFD8();
  sub_255EC4234();
  sub_255ECF398();
  sub_255ECF3C8();
  v9 = *(v5 + 8);
  v9(v8, v4);
  result = 0.0;
  if (v13[1] != v13[0])
  {
    if (a1 == 0x65676172657661 && a2 == 0xE700000000000000 || (sub_255ECF588() & 1) != 0)
    {
      sub_255EC0BC4();
    }

    else if (a1 == 0x6D6153746E756F63 && a2 == 0xEC00000073656C70 || (v11 = sub_255ECF588(), result = 0.0, (v11 & 1) != 0))
    {
      sub_255ECEFD8();
      v12 = sub_255ECEFB8();
      v9(v8, v4);
      return v12;
    }
  }

  return result;
}

uint64_t sub_255EC1024(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  LODWORD(v136) = a4;
  v120 = a2;
  v5 = sub_255ECEFF8();
  v125 = *(v5 - 8);
  v6 = v125[8];
  MEMORY[0x28223BE20](v5);
  v122 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159D8, &qword_255ECFC20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v119 = &v96 - v10;
  v123 = sub_255ECF078();
  v124 = *(v123 - 8);
  v11 = *(v124 + 64);
  MEMORY[0x28223BE20](v123);
  v121 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v132 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v128 = &v96 - v17;
  v141 = sub_255ECEE68();
  v126 = *(v141 - 8);
  v18 = *(v126 + 64);
  v19 = MEMORY[0x28223BE20](v141);
  v118 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v117 = &v96 - v22;
  MEMORY[0x28223BE20](v21);
  v129 = &v96 - v23;
  v24 = sub_255ECEF98();
  v139 = *(v24 - 8);
  v140 = v24;
  v25 = *(v139 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v133 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v127 = &v96 - v28;
  v29 = sub_255ECEFC8();
  v30 = *(v29 - 8);
  v31 = v30[8];
  MEMORY[0x28223BE20](v29);
  v131 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B08, &qword_255ED0080);
  v33 = *(*(v130 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v130);
  v134 = &v96 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v96 - v36;
  v38 = sub_255ECF158();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = &v96 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_255ECEF78();
  if ((v44 & 1) == 0)
  {
    v45 = result;
    v116 = v5;
    result = sub_255ECF058();
    if ((v45 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v45 < *(result + 16))
    {
      (*(v39 + 16))(v42, result + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v45, v38);

      v46 = sub_255ECF148();
      result = (*(v39 + 8))(v42, v38);
      if (v46 != v141)
      {
        return result;
      }

      v113 = a3;
      v47 = v131;
      sub_255ECEFD8();
      v48 = v30 + 2;
      v49 = v30[2];
      v49(v37, v47, v29);
      v50 = *(v130 + 36);
      sub_255EC4234();
      sub_255ECF398();
      v52 = v30[1];
      v51 = v30 + 1;
      v112 = v52;
      v52(v47, v29);
      sub_255ECF3C8();
      v115 = v50;
      if (*&v37[v50] == v142)
      {
        goto LABEL_38;
      }

      v105 = v49;
      v106 = v48;
      v107 = v51;
      v53 = 0;
      v109 = 0;
      v137 = (v139 + 8);
      v138 = (v139 + 16);
      v139 = v126 + 56;
      v135 = (v126 + 48);
      v111 = (v126 + 32);
      v108 = (v124 + 48);
      v104 = (v124 + 32);
      v100 = (v126 + 16);
      v110 = (v126 + 8);
      v103 = (v125 + 1);
      v54 = MEMORY[0x277D84F90];
      v102 = (v124 + 8);
      v101 = v136 & 1;
      v55 = v128;
      v56 = v127;
      while (1)
      {
        v124 = v54;
        v114 = v53;
        v57 = v115;
        while (1)
        {
          v58 = sub_255ECF3E8();
          v59 = *v138;
          v60 = v140;
          (*v138)(v56);
          v58(&v142, 0);
          sub_255ECF3D8();
          sub_255ECEFA8();
          v61 = *v137;
          (*v137)(v56, v60);
          if (v143)
          {
            break;
          }

          sub_255EB1E28(&v142, &qword_27F815AF8, &qword_255ECFF80);
          (*v139)(v55, 1, 1, v141);
LABEL_9:
          sub_255EB1E28(v55, &qword_27F815960, &qword_255ECFBC8);
          sub_255ECF3C8();
          if (*&v37[v57] == v142)
          {
            goto LABEL_38;
          }
        }

        v136 = v59;
        v62 = v141;
        v63 = swift_dynamicCast();
        v64 = *v139;
        (*v139)(v55, v63 ^ 1u, 1, v62);
        v65 = *v135;
        if ((*v135)(v55, 1, v62) == 1)
        {
          goto LABEL_9;
        }

        v99 = *v111;
        v99(v129, v55, v62);
        v66 = v119;
        sub_255EB27F8(v120, v119, &qword_27F8159D8, &qword_255ECFC20);
        v67 = v123;
        if ((*v108)(v66, 1, v123) == 1)
        {
          result = sub_255EB1E28(v66, &qword_27F8159D8, &qword_255ECFC20);
          v53 = v114 + 1;
          if (!__OFADD__(v114, 1))
          {
            v68 = v141;
            result = v129;
            goto LABEL_37;
          }

LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          return result;
        }

        v69 = (*v104)(v121, v66, v67);
        v125 = &v96;
        MEMORY[0x28223BE20](v69);
        *(&v96 - 4) = v113;
        *(&v96 - 24) = v101;
        *(&v96 - 2) = v129;
        v70 = v109;
        sub_255ECF048();
        v109 = v70;
        v71 = v131;
        sub_255ECEFE8();
        v105(v134, v71, v29);
        v72 = *(v130 + 36);
        sub_255ECF398();
        v73 = v134;
        v112(v71, v29);
        sub_255ECF3C8();
        if (*(v72 + v73) == v142)
        {
          LOBYTE(v74) = 0;
          goto LABEL_34;
        }

        v74 = 0;
        v125 = v72;
        while (2)
        {
          v98 = v74;
          while (2)
          {
            v76 = sub_255ECF3E8();
            v77 = v133;
            v78 = v140;
            v136(v133);
            v76(&v142, 0);
            v79 = v125;
            sub_255ECF3D8();
            sub_255ECEFA8();
            v61(v77, v78);
            if (!v143)
            {
              sub_255EB1E28(&v142, &qword_27F815AF8, &qword_255ECFF80);
              v75 = v132;
              v64(v132, 1, 1, v141);
LABEL_20:
              sub_255EB1E28(v75, &qword_27F815960, &qword_255ECFBC8);
              v73 = v134;
              sub_255ECF3C8();
              if (*(v79 + v73) == v142)
              {
                v56 = v127;
                LOBYTE(v74) = v98;
                goto LABEL_34;
              }

              continue;
            }

            break;
          }

          v75 = v132;
          v80 = v141;
          v81 = swift_dynamicCast();
          v64(v75, v81 ^ 1u, 1, v80);
          if (v65(v75, 1, v80) == 1)
          {
            goto LABEL_20;
          }

          v82 = v117;
          v83 = v75;
          v84 = v141;
          v99(v117, v83, v141);
          v85 = v124;
          v86 = sub_255EAB9DC(v82, v124);
          v56 = v127;
          if (v86)
          {
            (*v110)(v82, v84);
            v74 = 1;
            v87 = v125;
          }

          else
          {
            (*v100)(v118, v82, v84);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v89 = v85;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v89 = sub_255EAC6D0(0, v85[2] + 1, 1, v85);
            }

            v87 = v125;
            v91 = v89[2];
            v90 = v89[3];
            v97 = v91 + 1;
            v96 = v91;
            if (v91 >= v90 >> 1)
            {
              v124 = sub_255EAC6D0(v90 > 1, v97, 1, v89);
            }

            else
            {
              v124 = v89;
            }

            v92 = v126;
            v93 = v82;
            v94 = v141;
            (*(v126 + 8))(v93, v141);
            v95 = v124;
            *(v124 + 16) = v97;
            v99((v95 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v96), v118, v94);
            v74 = v98;
          }

          v73 = v134;
          sub_255ECF3C8();
          if (*(v87 + v73) != v142)
          {
            continue;
          }

          break;
        }

LABEL_34:
        sub_255EB1E28(v73, &qword_27F815B08, &qword_255ED0080);
        (*v103)(v122, v116);
        (*v102)(v121, v123);
        if (v74)
        {
          v55 = v128;
          result = v129;
          v68 = v141;
          v53 = v114;
          goto LABEL_37;
        }

        v53 = v114 + 1;
        v55 = v128;
        result = v129;
        v68 = v141;
        if (__OFADD__(v114, 1))
        {
          goto LABEL_43;
        }

LABEL_37:
        (*v110)(result, v68);
        sub_255ECF3C8();
        v54 = v124;
        if (*&v37[v115] == v142)
        {
LABEL_38:
          sub_255EB1E28(v37, &qword_27F815B08, &qword_255ED0080);
        }
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  return result;
}

unint64_t sub_255EC2018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v431 = a3;
  v424 = a2;
  v422 = type metadata accessor for Metric(0);
  v420 = *(v422 - 8);
  v4 = *(v420 + 64);
  MEMORY[0x28223BE20](v422);
  v403 = &v401 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v404 = type metadata accessor for ManualVolumeChange();
  v401 = *(v404 - 8);
  v6 = *(v401 + 64);
  v7 = MEMORY[0x28223BE20](v404);
  v405 = &v401 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v402 = &v401 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159D8, &qword_255ECFC20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v427 = (&v401 - v12);
  v417 = sub_255ECF078();
  v425 = *(v417 - 8);
  v13 = *(v425 + 64);
  v14 = MEMORY[0x28223BE20](v417);
  v416 = &v401 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v418 = &v401 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B28, &qword_255ED0960);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v415 = &v401 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v430 = &v401 - v21;
  v423 = type metadata accessor for DataSlice(0);
  v426 = *(v423 - 8);
  v22 = *(v426 + 64);
  v23 = MEMORY[0x28223BE20](v423);
  v408 = &v401 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v409 = &v401 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v411 = &v401 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v412 = &v401 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v413 = &v401 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v414 = &v401 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v401 - v36;
  MEMORY[0x28223BE20](v35);
  v410 = &v401 - v38;
  v419 = type metadata accessor for EventSet(0);
  v429 = *(v419 - 8);
  v39 = *(v429 + 64);
  v40 = MEMORY[0x28223BE20](v419);
  v42 = &v401 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v40);
  v428 = &v401 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v401 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v406 = &v401 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v52 = &v401 - v51;
  MEMORY[0x28223BE20](v50);
  v407 = &v401 - v53;
  v55 = *(a1 + 16);
  v54 = *(a1 + 24);
  v421 = a1;
  v56 = *(a1 + 32);
  v432 = "minimumTimeGapBetweenEvents";
  if (!*(v56 + 16))
  {
    goto LABEL_29;
  }

  sub_255EACAD4(0xD000000000000011, v432 | 0x8000000000000000);
  if (v57)
  {
    if (!*(v56 + 16))
    {
      goto LABEL_29;
    }

    sub_255EACAD4(0xD000000000000010, 0x8000000255ED11A0);
    if (v58)
    {
      if (!*(v56 + 16))
      {
        return MEMORY[0x277D84F90];
      }

      v59 = sub_255EACAD4(0xD000000000000010, 0x8000000255ED11A0);
      if ((v60 & 1) == 0 || !*(v56 + 16))
      {
        return MEMORY[0x277D84F90];
      }

      v61 = (*(v56 + 56) + 16 * v59);
      v63 = *v61;
      v62 = v61[1];

      v64 = sub_255EACAD4(0xD000000000000011, v432 | 0x8000000000000000);
      if ((v65 & 1) != 0 && *(v56 + 16))
      {
        v66 = (*(v56 + 56) + 16 * v64);
        v68 = *v66;
        v67 = v66[1];

        v69 = sub_255EACAD4(0xD00000000000001BLL, 0x8000000255ED11C0);
        if (v70 & 1) != 0 && (v71 = (*(v56 + 56) + 16 * v69), v72 = *v71, v73 = v71[1], v434 = 0.0, , LOBYTE(v72) = sub_255EBDA88(v72, v73), , (v72))
        {
          v74 = v431;
          if (*(v431 + 16))
          {
            v75 = v434;
            v76 = sub_255EACAD4(v63, v62);
            v78 = v77;

            if (v78)
            {
              v79 = v429;
              v80 = *(v429 + 72);
              sub_255EC4094(*(v74 + 56) + v80 * v76, v52, type metadata accessor for EventSet);
              v81 = v407;
              sub_255EC40FC(v52, v407, type metadata accessor for EventSet);
              if (*(v74 + 16))
              {
                v82 = sub_255EACAD4(v68, v67);
                v84 = v83;

                if (v84)
                {
                  sub_255EC4094(*(v74 + 56) + v82 * v80, v47, type metadata accessor for EventSet);
                  v85 = v406;
                  sub_255EC40FC(v47, v406, type metadata accessor for EventSet);
                  v86 = v419;
                  v87 = v421;
                  v88 = sub_255EBFE90(v421, (v81 + *(v419 + 20)), (v85 + *(v419 + 20)), v75);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A48, &qword_255ECFEE8);
                  v89 = *(v420 + 72);
                  v90 = (*(v420 + 80) + 32) & ~*(v420 + 80);
                  v91 = swift_allocObject();
                  v432 = v91;
                  *(v91 + 16) = xmmword_255ECFB60;
                  v92 = v79;
                  v93 = v81;
                  v94 = (v91 + v90);
                  v95 = *(v87 + 1);
                  *&v431 = *v87;
                  v96 = v423;
                  v97 = *(v86 + 24) + *(v423 + 20);

                  v98 = sub_255EC01C8();
                  v100 = v99;
                  v101 = v422;
                  (*(v426 + 56))(v94 + *(v422 + 28), 1, 1, v96);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B30, &qword_255ED0030);
                  v102 = (*(v92 + 80) + 32) & ~*(v92 + 80);
                  v103 = swift_allocObject();
                  *(v103 + 16) = xmmword_255ED0020;
                  v104 = v103 + v102;
                  sub_255EC4094(v93, v104, type metadata accessor for EventSet);
                  v105 = v104 + v80;
                  v106 = v406;
                  sub_255EC4094(v406, v105, type metadata accessor for EventSet);
                  *v94 = v431;
                  *(v94 + 1) = v95;
                  v94[2] = v88;
                  *(v94 + 3) = v98;
                  *(v94 + 4) = v100;
                  *(v94 + *(v101 + 32)) = v103;
                  sub_255EC4164(v106, type metadata accessor for EventSet);
                  v107 = v93;
                  v108 = type metadata accessor for EventSet;
LABEL_17:
                  sub_255EC4164(v107, v108);
                  return v432;
                }
              }

              else
              {
              }

              v215 = type metadata accessor for EventSet;
              v216 = v81;
              goto LABEL_86;
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }

LABEL_132:

      return MEMORY[0x277D84F90];
    }
  }

  if (*(v56 + 16))
  {
    sub_255EACAD4(0x6E6D756C6F63, 0xE600000000000000);
    if (v110)
    {
      if (*(v56 + 16))
      {
        sub_255EACAD4(0x6D614E6563696C73, 0xE900000000000065);
        if (v111)
        {
          if (!*(v56 + 16))
          {
            return MEMORY[0x277D84F90];
          }

          v112 = sub_255EACAD4(0x6D614E6563696C73, 0xE900000000000065);
          if ((v113 & 1) == 0 || !*(v56 + 16))
          {
            return MEMORY[0x277D84F90];
          }

          v114 = (*(v56 + 56) + 16 * v112);
          v116 = *v114;
          v115 = v114[1];

          v117 = sub_255EACAD4(0x6E6D756C6F63, 0xE600000000000000);
          if (v118)
          {
            v119 = v424;
            if (*(v424 + 16))
            {
              v120 = (*(v56 + 56) + 16 * v117);
              v122 = *v120;
              v121 = v120[1];

              v123 = sub_255EACAD4(v116, v115);
              v125 = v124;

              if (v125)
              {
                v126 = v426;
                v127 = *(v119 + 56) + *(v426 + 72) * v123;
                v432 = type metadata accessor for DataSlice;
                sub_255EC4094(v127, v37, type metadata accessor for DataSlice);
                v128 = v410;
                sub_255EC40FC(v37, v410, type metadata accessor for DataSlice);
                v129 = *(v423 + 20);
                v130 = sub_255EC0E30(v55, v54);

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A48, &qword_255ECFEE8);
                v131 = *(v420 + 72);
                v132 = (*(v420 + 80) + 32) & ~*(v420 + 80);
                v133 = swift_allocObject();
                *(v133 + 16) = xmmword_255ECFB60;
                v134 = (v133 + v132);
                v135 = *(v421 + 1);
                *&v431 = *v421;

                v136 = sub_255EC01C8();
                v138 = v137;
                v139 = v422;
                v140 = *(v422 + 28);
                v141 = v432;
                sub_255EC4094(v128, v134 + v140, v432);
                (*(v126 + 56))(v134 + v140, 0, 1, v423);
                *v134 = v431;
                *(v134 + 1) = v135;
                v134[2] = v130;
                *(v134 + 3) = v136;
                *(v134 + 4) = v138;
                *(v134 + *(v139 + 32)) = 0.0;
                sub_255EC4164(v128, v141);
                return v133;
              }
            }
          }

          goto LABEL_132;
        }
      }
    }
  }

LABEL_29:
  if ((v55 != 0x657645746E756F63 || v54 != 0xEB0000000073746ELL) && (sub_255ECF588() & 1) == 0)
  {
    if (v55 == 0xD000000000000031 && 0x8000000255ED0FA0 == v54 || (sub_255ECF588() & 1) != 0)
    {
      if (!*(v56 + 16))
      {
        return MEMORY[0x277D84F90];
      }

      v168 = sub_255EACAD4(0x6D614E6563696C73, 0xE900000000000065);
      if ((v169 & 1) == 0)
      {
        return MEMORY[0x277D84F90];
      }

      v170 = v424;
      if (!*(v424 + 16))
      {
        return MEMORY[0x277D84F90];
      }

      v171 = (*(v56 + 56) + 16 * v168);
      v172 = *v171;
      v173 = v171[1];

      v174 = sub_255EACAD4(v172, v173);
      v176 = v175;

      if ((v176 & 1) == 0)
      {
        return MEMORY[0x277D84F90];
      }

      v177 = *(v170 + 56) + *(v426 + 72) * v174;
      v178 = v413;
      sub_255EC4094(v177, v413, type metadata accessor for DataSlice);
      v179 = v414;
      sub_255EC40FC(v178, v414, type metadata accessor for DataSlice);
      if (*(v56 + 16))
      {
        v180 = sub_255EACAD4(0xD00000000000001DLL, 0x8000000255ED10C0);
        if (v181)
        {
          v182 = (*(v56 + 56) + 16 * v180);
          v183 = *v182;
          v184 = v182[1];
          v434 = 0.0;

          LOBYTE(v183) = sub_255EBDA88(v183, v184);

          if (v183)
          {
            if (*(v56 + 16))
            {
              v185 = v434;
              v186 = sub_255EACAD4(0xD00000000000001CLL, 0x8000000255ED1160);
              if (v187)
              {
                v188 = (*(v56 + 56) + 16 * v186);
                v189 = *v188;
                v190 = v188[1];
                v434 = 0.0;

                LOBYTE(v189) = sub_255EBDA88(v189, v190);

                if (v189)
                {
                  if (*(v56 + 16))
                  {
                    v191 = v434;
                    v192 = sub_255EACAD4(0xD000000000000015, 0x8000000255ED10E0);
                    if (v193)
                    {
                      v194 = (*(v56 + 56) + 16 * v192);
                      v195 = *v194;
                      v196 = v194[1];

                      v197 = sub_255EBC1D8(v195, v196);
                      if ((v198 & 1) == 0)
                      {
                        if (!*(v56 + 16))
                        {
                          goto LABEL_63;
                        }

                        v199 = v197;
                        v200 = sub_255EACAD4(0xD000000000000017, 0x8000000255ED1100);
                        if ((v201 & 1) == 0)
                        {
                          goto LABEL_63;
                        }

                        v202 = (*(v56 + 56) + 16 * v200);
                        v204 = *v202;
                        v203 = v202[1];

                        v205 = sub_255EBC1D8(v204, v203);
                        if (v206 & 1) != 0 || !*(v56 + 16) || (v207 = v205, v208 = sub_255EACAD4(0xD00000000000001BLL, 0x8000000255ED1120), (v209 & 1) == 0) || (v210 = (*(v56 + 56) + 16 * v208), v211 = *v210, v212 = v210[1], , v213 = sub_255EBC1D8(v211, v212), (v214))
                        {
LABEL_63:
                          v215 = type metadata accessor for DataSlice;
                          v216 = v414;
LABEL_86:
                          sub_255EC4164(v216, v215);
                          return MEMORY[0x277D84F90];
                        }

                        v365 = v213;
                        type metadata accessor for ManualVolumeChangeFunctions();
                        v366 = sub_255EC43EC(v414 + *(v423 + 20), v199, v207, v365, v185);
                        v367 = v366[2];
                        if (v367)
                        {
                          v368 = &v402[*(v404 + 24)];
                          v369 = v366 + ((*(v401 + 80) + 32) & ~*(v401 + 80));
                          v370 = *(v401 + 72);
                          v371 = fabs(v191);
                          v372 = 0.0;
                          v373 = 0.0;
                          v374 = v402;
                          do
                          {
                            sub_255EC4094(v369, v374, type metadata accessor for ManualVolumeChange);
                            v375 = *v368;
                            v376 = v368[8];
                            sub_255EC4164(v374, type metadata accessor for ManualVolumeChange);
                            if (!(v376 & 1 | (v371 >= v375)))
                            {
                              v372 = v373 + 1.0;
                              v373 = v373 + 1.0;
                            }

                            v369 += v370;
                            --v367;
                          }

                          while (v367);
                        }

                        else
                        {

                          v372 = 0.0;
                        }

                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A48, &qword_255ECFEE8);
                        v377 = *(v420 + 72);
                        v378 = (*(v420 + 80) + 32) & ~*(v420 + 80);
                        v379 = swift_allocObject();
                        *(v379 + 16) = xmmword_255ECFB60;
                        v380 = v379 + v378;
                        v382 = *v421;
                        v381 = *(v421 + 1);

                        v383 = v414;
                        v384 = sub_255EC01C8();
                        v386 = v385;
                        v387 = v422;
                        v388 = *(v422 + 28);
                        sub_255EC4094(v383, v380 + v388, type metadata accessor for DataSlice);
                        (*(v426 + 56))(v380 + v388, 0, 1, v423);
                        *v380 = v382;
                        *(v380 + 8) = v381;
                        *(v380 + 16) = v372;
                        *(v380 + 24) = v384;
                        *(v380 + 32) = v386;
                        *(v380 + *(v387 + 32)) = 0;
LABEL_157:
                        sub_255EC4164(v383, type metadata accessor for DataSlice);
                        return v379;
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

    else
    {
      if ((v55 != 0xD000000000000017 || 0x8000000255ED0FE0 != v54) && (sub_255ECF588() & 1) == 0)
      {
        if ((v55 != 0xD00000000000001CLL || 0x8000000255ED1000 != v54) && (sub_255ECF588() & 1) == 0)
        {
          return MEMORY[0x277D84F90];
        }

        if (!*(v56 + 16))
        {
          return MEMORY[0x277D84F90];
        }

        v260 = sub_255EACAD4(0x6D614E6563696C73, 0xE900000000000065);
        if ((v261 & 1) == 0)
        {
          return MEMORY[0x277D84F90];
        }

        v262 = v424;
        if (!*(v424 + 16))
        {
          return MEMORY[0x277D84F90];
        }

        v263 = (*(v56 + 56) + 16 * v260);
        v264 = *v263;
        v265 = v263[1];

        v266 = sub_255EACAD4(v264, v265);
        v268 = v267;

        if ((v268 & 1) == 0)
        {
          return MEMORY[0x277D84F90];
        }

        v269 = *(v262 + 56) + *(v426 + 72) * v266;
        v270 = v408;
        sub_255EC4094(v269, v408, type metadata accessor for DataSlice);
        v271 = v409;
        sub_255EC40FC(v270, v409, type metadata accessor for DataSlice);
        if (!*(v56 + 16))
        {
          goto LABEL_130;
        }

        v272 = sub_255EACAD4(0x456D756D696E696DLL, 0xEF61746C6544766ELL);
        if ((v273 & 1) == 0)
        {
          goto LABEL_130;
        }

        v274 = (*(v56 + 56) + 16 * v272);
        v275 = *v274;
        v276 = v274[1];
        v434 = 0.0;

        LOBYTE(v275) = sub_255EBDA88(v275, v276);

        if ((v275 & 1) == 0 || !*(v56 + 16) || (v277 = v434, v278 = sub_255EACAD4(0xD000000000000012, 0x8000000255ED1020), (v279 & 1) == 0))
        {
LABEL_130:
          v215 = type metadata accessor for DataSlice;
          v216 = v271;
          goto LABEL_86;
        }

        v280 = (*(v56 + 56) + 16 * v278);
        v281 = *v280;
        v282 = v280[1];

        v283 = sub_255EBC1D8(v281, v282);
        if (v284)
        {
          goto LABEL_112;
        }

        if (!*(v56 + 16))
        {
          goto LABEL_112;
        }

        v285 = v283;
        v286 = sub_255EACAD4(0xD000000000000016, 0x8000000255ED1040);
        if ((v287 & 1) == 0)
        {
          goto LABEL_112;
        }

        v288 = (*(v56 + 56) + 16 * v286);
        v290 = *v288;
        v289 = v288[1];

        v291 = sub_255EBC1D8(v290, v289);
        if (v292)
        {
          goto LABEL_112;
        }

        if (!*(v56 + 16))
        {
          goto LABEL_112;
        }

        v293 = v291;
        v294 = sub_255EACAD4(0xD000000000000011, 0x8000000255ED1060);
        if ((v295 & 1) == 0)
        {
          goto LABEL_112;
        }

        v296 = (*(v56 + 56) + 16 * v294);
        v298 = *v296;
        v297 = v296[1];

        v299 = sub_255EBC1D8(v298, v297);
        if (v300)
        {
          goto LABEL_112;
        }

        if (!*(v56 + 16))
        {
          goto LABEL_112;
        }

        v301 = v299;
        v302 = sub_255EACAD4(0xD000000000000012, 0x8000000255ED1080);
        if ((v303 & 1) == 0)
        {
          goto LABEL_112;
        }

        v304 = (*(v56 + 56) + 16 * v302);
        v306 = *v304;
        v305 = v304[1];

        v307 = sub_255EBC1D8(v306, v305);
        if (v308 & 1) != 0 || !*(v56 + 16) || (v309 = v307, v310 = sub_255EACAD4(0xD000000000000017, 0x8000000255ED10A0), (v311 & 1) == 0) || (v312 = (*(v56 + 56) + 16 * v310), v313 = *v312, v314 = v312[1], , v315 = sub_255EBC1D8(v313, v314), (v316))
        {
LABEL_112:
          v215 = type metadata accessor for DataSlice;
          v216 = v409;
          goto LABEL_86;
        }

        v383 = v409;
        sub_255EC7B30(v409 + *(v423 + 20), v285, v293, v301, v309, v315, v277);
        v390 = v389;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A48, &qword_255ECFEE8);
        v391 = *(v420 + 72);
        v392 = (*(v420 + 80) + 32) & ~*(v420 + 80);
        v379 = swift_allocObject();
        *(v379 + 16) = xmmword_255ECFB60;
        v393 = (v379 + v392);
        v395 = *v421;
        v394 = *(v421 + 1);

        v396 = sub_255EC01C8();
        v398 = v397;
        v399 = v422;
        v400 = *(v422 + 28);
        sub_255EC4094(v383, &v393[v400], type metadata accessor for DataSlice);
        (*(v426 + 56))(&v393[v400], 0, 1, v423);
        *v393 = v395;
        *(v393 + 1) = v394;
        *(v393 + 2) = v390;
        *(v393 + 3) = v396;
        *(v393 + 4) = v398;
        *&v393[*(v399 + 32)] = 0;
        goto LABEL_157;
      }

      if (!*(v56 + 16))
      {
        return MEMORY[0x277D84F90];
      }

      v217 = sub_255EACAD4(0x6D614E6563696C73, 0xE900000000000065);
      if ((v218 & 1) == 0)
      {
        return MEMORY[0x277D84F90];
      }

      v219 = v424;
      if (!*(v424 + 16))
      {
        return MEMORY[0x277D84F90];
      }

      v220 = (*(v56 + 56) + 16 * v217);
      v221 = *v220;
      v222 = v220[1];

      v223 = sub_255EACAD4(v221, v222);
      v225 = v224;

      if ((v225 & 1) == 0)
      {
        return MEMORY[0x277D84F90];
      }

      v226 = *(v219 + 56) + *(v426 + 72) * v223;
      v227 = v411;
      sub_255EC4094(v226, v411, type metadata accessor for DataSlice);
      v179 = v412;
      sub_255EC40FC(v227, v412, type metadata accessor for DataSlice);
      if (*(v56 + 16))
      {
        v228 = sub_255EACAD4(0xD00000000000001DLL, 0x8000000255ED10C0);
        if (v229)
        {
          v230 = (*(v56 + 56) + 16 * v228);
          v231 = *v230;
          v232 = v230[1];
          v434 = 0.0;

          LOBYTE(v231) = sub_255EBDA88(v231, v232);

          if (v231)
          {
            if (*(v56 + 16))
            {
              v233 = v434;
              v234 = sub_255EACAD4(0xD000000000000015, 0x8000000255ED10E0);
              if (v235)
              {
                v236 = (*(v56 + 56) + 16 * v234);
                v237 = *v236;
                v238 = v236[1];

                v239 = sub_255EBC1D8(v237, v238);
                if ((v240 & 1) == 0)
                {
                  if (*(v56 + 16))
                  {
                    v241 = v239;
                    v242 = sub_255EACAD4(0xD000000000000017, 0x8000000255ED1100);
                    if (v243)
                    {
                      v244 = (*(v56 + 56) + 16 * v242);
                      v246 = *v244;
                      v245 = v244[1];

                      v247 = sub_255EBC1D8(v246, v245);
                      if ((v248 & 1) == 0)
                      {
                        if (*(v56 + 16))
                        {
                          v249 = v247;
                          v250 = sub_255EACAD4(0xD00000000000001BLL, 0x8000000255ED1120);
                          if (v251)
                          {
                            v252 = (*(v56 + 56) + 16 * v250);
                            v253 = *v252;
                            v254 = v252[1];

                            v255 = sub_255EBC1D8(v253, v254);
                            if ((v256 & 1) == 0)
                            {
                              v344 = v255;
                              type metadata accessor for ManualVolumeChangeFunctions();
                              v430 = *(v423 + 20);
                              v427 = sub_255EC43EC(v412 + v430, v241, v249, v344, v233);
                              v345 = v427[2];
                              if (v345)
                              {
                                v346 = v427 + ((*(v401 + 80) + 32) & ~*(v401 + 80));
                                *&v431 = *(v401 + 72);
                                v429 = "envDeltaAveragingWindowSize";
                                v432 = MEMORY[0x277D84F90];
                                v428 = (v426 + 56);
                                v347 = v422;
                                do
                                {
                                  v348 = v405;
                                  sub_255EC4094(v346, v405, type metadata accessor for ManualVolumeChange);
                                  v349 = v348 + *(v404 + 24);
                                  if (*(v349 + 8))
                                  {
                                    sub_255EC4164(v405, type metadata accessor for ManualVolumeChange);
                                  }

                                  else
                                  {
                                    v350 = *v349;
                                    v434 = 0.0;
                                    v435 = 0xE000000000000000;
                                    sub_255ECF4D8();
                                    v351 = *v421;
                                    v352 = *(v421 + 1);

                                    v434 = v351;
                                    v435 = v352;
                                    MEMORY[0x259C50A70](0xD000000000000017, v429 | 0x8000000000000000);
                                    v433 = *(v405 + *(v404 + 20));
                                    v353 = sub_255ECF578();
                                    MEMORY[0x259C50A70](v353);

                                    MEMORY[0x259C50A70](93, 0xE100000000000000);
                                    v355 = v434;
                                    v354 = v435;
                                    v356 = v412;
                                    v357 = sub_255EC01C8();
                                    v359 = v358;
                                    v360 = *(v347 + 28);
                                    v361 = v403;
                                    sub_255EC4094(v356, &v403[v360], type metadata accessor for DataSlice);
                                    (*v428)(&v361[v360], 0, 1, v423);
                                    *v361 = v355;
                                    *(v361 + 1) = v354;
                                    *(v361 + 2) = v350;
                                    *(v361 + 3) = v357;
                                    *(v361 + 4) = v359;
                                    *&v361[*(v347 + 32)] = 0;
                                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                    {
                                      v432 = sub_255EAC84C(0, *(v432 + 16) + 1, 1, v432);
                                    }

                                    v363 = *(v432 + 16);
                                    v362 = *(v432 + 24);
                                    if (v363 >= v362 >> 1)
                                    {
                                      v432 = sub_255EAC84C(v362 > 1, v363 + 1, 1, v432);
                                    }

                                    sub_255EC4164(v405, type metadata accessor for ManualVolumeChange);
                                    v364 = v432;
                                    *(v432 + 16) = v363 + 1;
                                    sub_255EC40FC(v403, v364 + ((*(v420 + 80) + 32) & ~*(v420 + 80)) + *(v420 + 72) * v363, type metadata accessor for Metric);
                                  }

                                  v346 += v431;
                                  --v345;
                                }

                                while (v345);
                              }

                              else
                              {

                                v432 = MEMORY[0x277D84F90];
                              }

                              v108 = type metadata accessor for DataSlice;
                              v107 = v412;
                              goto LABEL_17;
                            }
                          }
                        }
                      }

                      v215 = type metadata accessor for DataSlice;
                      v216 = v412;
                      goto LABEL_86;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v215 = type metadata accessor for DataSlice;
    v216 = v179;
    goto LABEL_86;
  }

  if (!*(v56 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v142 = sub_255EACAD4(0x73746E657665, 0xE600000000000000);
  if ((v143 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v144 = v431;
  if (!*(v431 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v145 = (*(v56 + 56) + 16 * v142);
  v147 = *v145;
  v146 = v145[1];

  v148 = sub_255EACAD4(v147, v146);
  LOBYTE(v147) = v149;

  if ((v147 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v150 = 3157552;
  v151 = *(v144 + 56);
  v152 = v429;
  v424 = *(v429 + 72);
  sub_255EC4094(v151 + v424 * v148, v42, type metadata accessor for EventSet);
  sub_255EC40FC(v42, v428, type metadata accessor for EventSet);
  v153 = *(v152 + 56);
  v154 = v419;
  v153(v430, 1, 1, v419);
  if (*(v56 + 16))
  {
    v155 = sub_255EACAD4(0xD000000000000011, v432 | 0x8000000000000000);
    v156 = v425;
    if (v157)
    {
      v158 = v431;
      if (*(v431 + 16))
      {
        v159 = (*(v56 + 56) + 16 * v155);
        v160 = *v159;
        v161 = v159[1];

        v162 = sub_255EACAD4(v160, v161);
        v164 = v163;

        if (v164)
        {
          v165 = *(v158 + 56) + v162 * v424;
          v166 = v415;
          sub_255EC4094(v165, v415, type metadata accessor for EventSet);
          v167 = 0;
          v156 = v425;
        }

        else
        {
          v167 = 1;
          v156 = v425;
          v166 = v415;
        }
      }

      else
      {
        v167 = 1;
        v166 = v415;
      }

      v153(v166, v167, 1, v154);
      sub_255EC41C4(v166, v430);
    }

    v259 = v417;
    if (*(v56 + 16) && (v317 = sub_255EACAD4(0xD000000000000019, 0x8000000255ED1180), (v318 & 1) != 0))
    {
      v319 = (*(v56 + 56) + 16 * v317);
      v150 = *v319;
      v257 = v319[1];
    }

    else
    {
      v257 = 0xE300000000000000;
    }

    v258 = v430;
  }

  else
  {
    v257 = 0xE300000000000000;
    v258 = v430;
    v259 = v417;
    v156 = v425;
  }

  v434 = 0.0;
  v320 = sub_255EBDA88(v150, v257);

  if (v320)
  {
    v321 = *&v434;
  }

  else
  {
    v321 = 0;
  }

  v322 = !v320;
  v323 = *(v156 + 16);
  v324 = v418;
  v323(v418, &v428[*(v154 + 20)], v259);
  v325 = 1;
  if (!(*(v429 + 48))(v258, 1, v154))
  {
    v326 = v416;
    v323(v416, (v258 + *(v154 + 20)), v259);
    (*(v156 + 32))(v427, v326, v259);
    v325 = 0;
  }

  v327 = v427;
  (*(v156 + 56))(v427, v325, 1, v259);
  sub_255EC1024(v324, v327, v321, v322);
  v329 = v328;
  sub_255EB1E28(v327, &qword_27F8159D8, &qword_255ECFC20);
  (*(v156 + 8))(v324, v259);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A48, &qword_255ECFEE8);
  v330 = *(v420 + 72);
  v331 = (*(v420 + 80) + 32) & ~*(v420 + 80);
  v332 = swift_allocObject();
  v431 = xmmword_255ECFB60;
  *(v332 + 16) = xmmword_255ECFB60;
  v333 = (v332 + v331);
  v334 = *(v421 + 1);
  v432 = *v421;
  v335 = v423;
  v336 = *(v154 + 24) + *(v423 + 20);

  v337 = v428;
  v338 = sub_255EC01C8();
  v340 = v339;
  v341 = v422;
  (*(v426 + 56))(v333 + *(v422 + 28), 1, 1, v335);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B30, &qword_255ED0030);
  v342 = (*(v429 + 80) + 32) & ~*(v429 + 80);
  v343 = swift_allocObject();
  *(v343 + 16) = v431;
  sub_255EC4094(v337, v343 + v342, type metadata accessor for EventSet);
  *v333 = v432;
  v333[1] = v334;
  v333[2] = v329;
  v333[3] = v338;
  v333[4] = v340;
  *(v333 + *(v341 + 32)) = v343;
  sub_255EC4164(v337, type metadata accessor for EventSet);
  sub_255EB1E28(v430, &qword_27F815B28, &qword_255ED0960);
  return v332;
}

uint64_t sub_255EC4094(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_255EC40FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_255EC4164(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_255EC41C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B28, &qword_255ED0960);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_255EC4234()
{
  result = qword_27F815B10;
  if (!qword_27F815B10)
  {
    sub_255ECEFC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815B10);
  }

  return result;
}

unint64_t sub_255EC42D4()
{
  result = qword_27F815B40;
  if (!qword_27F815B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815B40);
  }

  return result;
}

_BYTE *sub_255EC4350@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void *sub_255EC43EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, double a5)
{
  v186 = a4;
  v184 = a2;
  v185 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B60, &unk_255ED0070);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v167 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v178 = &v142 - v11;
  v182 = type metadata accessor for ManualVolumeChange();
  v171 = *(v182 - 8);
  v12 = *(v171 + 8);
  v13 = MEMORY[0x28223BE20](v182);
  v164 = &v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v163 = &v142 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v162 = &v142 - v18;
  MEMORY[0x28223BE20](v17);
  v161 = &v142 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v179 = &v142 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v180 = &v142 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v175 = &v142 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v181 = &v142 - v29;
  MEMORY[0x28223BE20](v28);
  v191 = &v142 - v30;
  v189 = sub_255ECEE68();
  v166 = *(v189 - 8);
  v31 = *(v166 + 64);
  v32 = MEMORY[0x28223BE20](v189);
  v173 = &v142 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v187 = &v142 - v34;
  v188 = sub_255ECEF98();
  v176 = *(v188 - 8);
  v35 = *(v176 + 64);
  v36 = MEMORY[0x28223BE20](v188);
  v160 = &v142 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v159 = &v142 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v165 = &v142 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v174 = &v142 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v177 = &v142 - v45;
  MEMORY[0x28223BE20](v44);
  v190 = &v142 - v46;
  v192 = sub_255ECEFC8();
  v168 = *(v192 - 8);
  v47 = *(v168 + 64);
  MEMORY[0x28223BE20](v192);
  v49 = &v142 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B08, &qword_255ED0080);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v53 = &v142 - v52;
  v170 = sub_255ECEFF8();
  v169 = *(v170 - 8);
  v54 = *(v169 + 64);
  MEMORY[0x28223BE20](v170);
  v172 = &v142 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_255ECF158();
  v57 = *(v56 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  v60 = &v142 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159D8, &qword_255ECFC20);
  v62 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61 - 8);
  v64 = &v142 - v63;
  v65 = sub_255ECF078();
  v66 = *(v65 - 8);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  v69 = &v142 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = a1;
  v70 = a1;
  v72 = v71;
  sub_255EBA1B4(v70, v64);
  if ((*(v66 + 48))(v64, 1, v72) == 1)
  {
    sub_255EB1E28(v64, &qword_27F8159D8, &qword_255ECFC20);
    return MEMORY[0x277D84F90];
  }

  v158 = v66;
  (*(v66 + 32))(v69, v64, v72);
  v73 = sub_255ECEF78();
  if (v74)
  {
LABEL_8:
    (*(v158 + 8))(v69, v72);
    return MEMORY[0x277D84F90];
  }

  v75 = v73;
  v150 = v69;
  v76 = sub_255ECF058();
  if ((v75 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_66;
  }

  if (v75 >= *(v76 + 16))
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  (*(v57 + 16))(v60, v76 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v75, v56);

  v77 = sub_255ECF148();
  (*(v57 + 8))(v60, v56);
  v69 = v150;
  if (v77 != v189)
  {
    goto LABEL_8;
  }

  sub_255ECEF78();
  if (v78)
  {
    goto LABEL_8;
  }

  sub_255ECF048();
  sub_255ECEFE8();
  v80 = v168;
  v81 = v192;
  (*(v168 + 16))(v53, v49, v192);
  v82 = *(v50 + 36);
  v83 = sub_255EC938C(&qword_27F815B10, MEMORY[0x277CE1870]);
  sub_255ECF398();
  (*(v80 + 8))(v49, v81);
  sub_255ECF3C8();
  if (*&v53[v82] == v193)
  {
    v84 = MEMORY[0x277D84F90];
    v143 = MEMORY[0x277D84F90];
    goto LABEL_56;
  }

  v168 = v176 + 16;
  v156 = (v176 + 32);
  v153 = (v166 + 56);
  v152 = (v166 + 48);
  v149 = (v166 + 32);
  v157 = (v176 + 8);
  v148 = (v166 + 8);
  v144 = (v171 + 48);
  v84 = MEMORY[0x277D84F90];
  v143 = MEMORY[0x277D84F90];
  v85 = v188;
  v86 = v189;
  v146 = v72;
  v155 = v82;
  v154 = v83;
  do
  {
    v151 = v84;
    while (2)
    {
      v87 = v177;
      while (1)
      {
        v90 = sub_255ECF3E8();
        v91 = v190;
        v166 = *v168;
        (v166)(v190);
        v90(&v193, 0);
        sub_255ECF3D8();
        v92 = *v156;
        (*v156)(v87, v91, v85);
        sub_255ECEFA8();
        if (v194)
        {
          break;
        }

        (*v157)(v87, v85);
        sub_255EB1E28(&v193, &qword_27F815AF8, &qword_255ECFF80);
        v88 = v191;
        (*v153)(v191, 1, 1, v86);
LABEL_16:
        sub_255EB1E28(v88, &qword_27F815960, &qword_255ECFBC8);
        v89 = v155;
LABEL_17:
        sub_255ECF3C8();
        if (*&v53[v89] == v193)
        {
          goto LABEL_55;
        }
      }

      v88 = v191;
      v93 = swift_dynamicCast();
      v94 = *v153;
      (*v153)(v88, v93 ^ 1u, 1, v86);
      v95 = *v152;
      if ((*v152)(v88, 1, v86) == 1)
      {
        v85 = v188;
        (*v157)(v87, v188);
        goto LABEL_16;
      }

      v145 = v92;
      v147 = *v149;
      v147(v187, v88, v86);
      v96 = v181;
      v94(v181, 1, 1, v86);
      if (*(v151 + 2))
      {
        v97 = v176;
        v98 = v174;
        v99 = v188;
        (v166)(v174, v151 + ((*(v97 + 80) + 32) & ~*(v97 + 80)), v188);
        sub_255ECEFA8();
        sub_255EB1E28(v96, &qword_27F815960, &qword_255ECFBC8);
        (*(v97 + 8))(v98, v99);
        if (v194)
        {
          v100 = v175;
          v101 = v189;
          v102 = swift_dynamicCast() ^ 1;
          v103 = v100;
          v104 = v101;
        }

        else
        {
          sub_255EB1E28(&v193, &qword_27F815AF8, &qword_255ECFF80);
          v100 = v175;
          v103 = v175;
          v102 = 1;
          v104 = v189;
        }

        v94(v103, v102, 1, v104);
        sub_255EB2860(v100, v96, &qword_27F815960, &qword_255ECFBC8);
        v87 = v177;
      }

      v105 = v180;
      sub_255EB8BB8(v96, v180);
      v86 = v189;
      v106 = v95(v105, 1, v189);
      sub_255EB1E28(v105, &qword_27F815960, &qword_255ECFBC8);
      if (v106 == 1)
      {
        v85 = v188;
        (v166)(v165, v87, v188);
        v112 = v151;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v112 = sub_255EAC720(0, *(v112 + 2) + 1, 1, v112);
        }

        v86 = v189;
        v72 = v146;
        v113 = v155;
        v115 = *(v112 + 2);
        v114 = *(v112 + 3);
        v166 = v115 + 1;
        if (v115 >= v114 >> 1)
        {
          v151 = sub_255EAC720(v114 > 1, v166, 1, v112);
        }

        else
        {
          v151 = v112;
        }

        sub_255EB1E28(v181, &qword_27F815960, &qword_255ECFBC8);
        (*v148)(v187, v86);
        v116 = &v194;
LABEL_43:
        v121 = *(v116 - 32);
        v122 = v176;
        (*(v176 + 8))(v177, v85);
        v123 = v151;
        *(v151 + 2) = v166;
        v145(v123 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v115, v121, v85);
        sub_255ECF3C8();
        if (*&v53[v113] != v193)
        {
          continue;
        }

LABEL_55:
        v84 = v151;
        goto LABEL_56;
      }

      break;
    }

    v107 = v179;
    sub_255EB8BB8(v96, v179);
    v108 = v95(v107, 1, v86);
    v85 = v188;
    if (v108 == 1)
    {
      sub_255EB1E28(v107, &qword_27F815960, &qword_255ECFBC8);
      v109 = v178;
    }

    else
    {
      v110 = v173;
      v147(v173, v107, v86);
      sub_255ECEDE8();
      if (v111 < a5)
      {
        (v166)(v159, v87, v85);
        v117 = v151;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v72 = v146;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v117 = sub_255EAC720(0, *(v117 + 2) + 1, 1, v117);
        }

        v86 = v189;
        v113 = v155;
        v115 = *(v117 + 2);
        v119 = *(v117 + 3);
        v166 = v115 + 1;
        if (v115 >= v119 >> 1)
        {
          v151 = sub_255EAC720(v119 > 1, v166, 1, v117);
        }

        else
        {
          v151 = v117;
        }

        v120 = *v148;
        (*v148)(v173, v86);
        sub_255EB1E28(v181, &qword_27F815960, &qword_255ECFBC8);
        v120(v187, v86);
        v116 = &v190;
        goto LABEL_43;
      }

      (*v148)(v110, v86);
      v109 = v178;
    }

    sub_255EC5BE4(v151, v183, v184, v185, v186, v109);
    if ((*v144)(v109, 1, v182) == 1)
    {
      sub_255EB1E28(v96, &qword_27F815960, &qword_255ECFBC8);
      (*v148)(v187, v86);
      (*v157)(v87, v85);
      sub_255EB1E28(v109, &qword_27F815B60, &unk_255ED0070);
      v89 = v155;
      v72 = v146;
      goto LABEL_17;
    }

    v124 = v109;
    v125 = v161;
    sub_255EC73E4(v124, v161);
    sub_255EC7448(v125, v162);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v143 = sub_255EAC6F8(0, v143[2] + 1, 1, v143);
    }

    v126 = v143;
    v128 = v143[2];
    v127 = v143[3];
    if (v128 >= v127 >> 1)
    {
      v126 = sub_255EAC6F8(v127 > 1, v128 + 1, 1, v143);
    }

    v126[2] = v128 + 1;
    v129 = (v171[80] + 32) & ~v171[80];
    v143 = v126;
    sub_255EC73E4(v162, v126 + v129 + *(v171 + 9) * v128);
    (v166)(v160, v87, v85);
    v130 = sub_255EAC720(0, 1, 1, MEMORY[0x277D84F90]);
    v132 = *(v130 + 2);
    v131 = *(v130 + 3);
    v166 = v132 + 1;
    if (v132 >= v131 >> 1)
    {
      v130 = sub_255EAC720(v131 > 1, v132 + 1, 1, v130);
    }

    v133 = v155;
    v72 = v146;
    sub_255EC74AC(v161);
    sub_255EB1E28(v181, &qword_27F815960, &qword_255ECFBC8);
    (*v148)(v187, v86);
    v134 = v176;
    (*(v176 + 8))(v177, v85);
    *(v130 + 2) = v166;
    v135 = v130 + ((*(v134 + 80) + 32) & ~*(v134 + 80));
    v136 = *(v134 + 72);
    v84 = v130;
    v145(&v135[v136 * v132], v160, v85);
    sub_255ECF3C8();
  }

  while (*&v53[v133] != v193);
LABEL_56:
  sub_255EB1E28(v53, &qword_27F815B08, &qword_255ED0080);
  if (*(v84 + 2))
  {
    v137 = v167;
    sub_255EC5BE4(v84, v183, v184, v185, v186, v167);

    v49 = v171;
    v138 = (*(v171 + 6))(v137, 1, v182);
    v75 = v158;
    if (v138 == 1)
    {
      (*(v169 + 8))(v172, v170);
      (*(v75 + 8))(v150, v72);
      sub_255EB1E28(v137, &qword_27F815B60, &unk_255ED0070);
      return v143;
    }

    v56 = v163;
    sub_255EC73E4(v137, v163);
    v53 = v164;
    sub_255EC7448(v56, v164);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_62:
      v140 = v143[2];
      v139 = v143[3];
      if (v140 >= v139 >> 1)
      {
        v143 = sub_255EAC6F8(v139 > 1, v140 + 1, 1, v143);
      }

      sub_255EC74AC(v56);
      (*(v169 + 8))(v172, v170);
      (*(v75 + 8))(v150, v72);
      v141 = v143;
      v143[2] = v140 + 1;
      sub_255EC73E4(v53, v141 + ((v49[80] + 32) & ~v49[80]) + *(v49 + 9) * v140);
      return v141;
    }

LABEL_67:
    v143 = sub_255EAC6F8(0, v143[2] + 1, 1, v143);
    goto LABEL_62;
  }

  (*(v169 + 8))(v172, v170);
  (*(v158 + 8))(v150, v72);

  return v143;
}

uint64_t sub_255EC5BE4@<X0>(void (*a1)(void (**)(char *), uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v141 = a5;
  v140 = a4;
  v136 = a3;
  v161 = a1;
  v164 = a6;
  v139 = sub_255ECF078();
  v138 = *(v139 - 8);
  v11 = *(v138 + 64);
  MEMORY[0x28223BE20](v139);
  v137 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_255ECEFF8();
  v144 = *(v145 - 8);
  v13 = *(v144 + 64);
  v14 = MEMORY[0x28223BE20](v145);
  v135 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v143 = &v129 - v16;
  v157 = sub_255ECEF98();
  v159 = *(v157 - 8);
  v17 = *(v159 + 64);
  v18 = MEMORY[0x28223BE20](v157);
  v158 = &v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v152 = &v129 - v20;
  v154 = sub_255ECEFC8();
  v148 = *(v154 - 8);
  v21 = *(v148 + 64);
  MEMORY[0x28223BE20](v154);
  v147 = (&v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B08, &qword_255ED0080);
  v23 = *(*(v146 - 8) + 64);
  MEMORY[0x28223BE20](v146);
  v153 = &v129 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v150 = (&v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x28223BE20](v27);
  v155 = (&v129 - v30);
  MEMORY[0x28223BE20](v29);
  v160 = &v129 - v31;
  v32 = sub_255ECEE68();
  v162 = *(v32 - 8);
  v163 = v32;
  v33 = v162[8];
  v34 = MEMORY[0x28223BE20](v32);
  v142 = &v129 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v149 = &v129 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v151 = &v129 - v39;
  MEMORY[0x28223BE20](v38);
  v156 = &v129 - v40;
  v41 = sub_255ECF158();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  v45 = &v129 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_255ECEF78();
  if (v47)
  {
    goto LABEL_27;
  }

  v48 = v46;
  v49 = sub_255ECF058();
  if ((v48 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v48 >= *(v49 + 16))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v50 = ((*(v42 + 80) + 32) & ~*(v42 + 80));
  v51 = *(v42 + 72);
  v52 = v50 + v49 + v51 * v48;
  v53 = a2;
  v54 = *(v42 + 16);
  v54(v45, v52, v41);

  v55 = sub_255ECF148();
  v56 = *(v42 + 8);
  v56(v45, v41);
  if (v55 != MEMORY[0x277D83B88])
  {
    goto LABEL_27;
  }

  v134 = v54;
  v57 = sub_255ECEF78();
  if (v58)
  {
    goto LABEL_27;
  }

  v59 = v57;
  v133 = v53;
  v60 = sub_255ECF058();
  if ((v59 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v59 >= *(v60 + 16))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    sub_255ECEFA8();
    if (*(&v167 + 1))
    {
      if (swift_dynamicCast())
      {
        v90 = v165;
        goto LABEL_39;
      }

      goto LABEL_66;
    }

    goto LABEL_64;
  }

  v134(v45, v50 + v60 + v59 * v51, v41);

  v61 = sub_255ECF148();
  v56(v45, v41);
  if (v61 != v163)
  {
    goto LABEL_27;
  }

  v62 = sub_255ECEF78();
  if (v63)
  {
    goto LABEL_27;
  }

  v64 = v62;
  v65 = sub_255ECF058();
  if ((v64 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_68;
  }

  if (v64 >= *(v65 + 16))
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v134(v45, v50 + v65 + v64 * v51, v41);

  v66 = sub_255ECF148();
  v56(v45, v41);
  if (v66 != v163)
  {
LABEL_27:
    v85 = type metadata accessor for ManualVolumeChange();
    return (*(*(v85 - 8) + 56))(v164, 1, 1, v85);
  }

  v67 = *(v161 + 2);
  if (!v67)
  {
    v166 = 0u;
    v167 = 0u;
    v8 = v162;
    v6 = v163;
    v69 = v160;
    goto LABEL_25;
  }

  v68 = v161 + ((*(v159 + 80) + 32) & ~*(v159 + 80));
  sub_255ECEFA8();
  v8 = v162;
  v6 = v163;
  v69 = v160;
  if (!*(&v167 + 1))
  {
LABEL_25:
    sub_255EB1E28(&v166, &qword_27F815AF8, &qword_255ECFF80);
    (v8[7])(v69, 1, 1, v6);
    goto LABEL_26;
  }

  v70 = swift_dynamicCast();
  v71 = v8[7];
  (v71)(v69, v70 ^ 1u, 1, v6);
  v72 = v8[6];
  if (v72(v69, 1, v6) == 1)
  {
LABEL_26:
    sub_255EB1E28(v69, &qword_27F815960, &qword_255ECFBC8);
    goto LABEL_27;
  }

  v134 = v72;
  v73 = v8[4];
  v9 = v156;
  v160 = (v8 + 4);
  v161 = v71;
  v132 = v73;
  v73(v156, v69, v6);
  v74 = &v68[*(v159 + 72) * (v67 - 1)];
  sub_255ECEFA8();
  if (!*(&v167 + 1))
  {
    sub_255EB1E28(&v166, &qword_27F815AF8, &qword_255ECFF80);
    v75 = v155;
    v161(v155, 1, 1, v6);
    goto LABEL_29;
  }

  v75 = v155;
  v76 = swift_dynamicCast();
  v161(v75, v76 ^ 1u, 1, v6);
  if (v134(v75, 1, v6) == 1)
  {
LABEL_29:
    sub_255EB1E28(v75, &qword_27F815960, &qword_255ECFBC8);
    v87 = type metadata accessor for ManualVolumeChange();
    (*(*(v87 - 8) + 56))(v164, 1, 1, v87);
    return (v8[1])(v9, v6);
  }

  v131 = "lastUserVolChangeType";
  v7 = v151;
  v132(v151, v75, v6);
  sub_255ECEFA8();
  if (!*(&v167 + 1))
  {
LABEL_32:
    sub_255EB1E28(&v166, &qword_27F815AF8, &qword_255ECFF80);
LABEL_33:
    v88 = type metadata accessor for ManualVolumeChange();
    (*(*(v88 - 8) + 56))(v164, 1, 1, v88);
    v89 = v8[1];
    v89(v7, v6);
    return (v89)(v9, v6);
  }

  if ((swift_dynamicCast() & 1) == 0 || v165 < 0)
  {
    goto LABEL_33;
  }

  v129 = v74;
  v130 = v165;
  if (!v165)
  {
    goto LABEL_36;
  }

  v77 = v147;
  sub_255ECEFD8();
  v78 = v148;
  v80 = v153;
  v79 = v154;
  (*(v148 + 16))(v153, v77, v154);
  v81 = *(v146 + 36);
  sub_255EC938C(&qword_27F815B10, MEMORY[0x277CE1870]);
  sub_255ECF398();
  (*(v78 + 8))(v77, v79);
  sub_255ECF3C8();
  if (*(v80 + v81) == v166)
  {
LABEL_23:
    v82 = &qword_27F815B08;
    v83 = &qword_255ED0080;
    v84 = v80;
LABEL_65:
    sub_255EB1E28(v84, v82, v83);
    goto LABEL_66;
  }

  v155 = (v159 + 16);
  v148 = v159 + 32;
  v159 += 8;
  v147 = (v162 + 1);
  v146 = v130 - 1;
  while (1)
  {
    v110 = sub_255ECF3E8();
    v111 = v152;
    v112 = v157;
    (*v155)(v152);
    v110(&v166, 0);
    sub_255ECF3D8();
    (*v148)(v158, v111, v112);
    sub_255ECEFA8();
    if (!*(&v167 + 1))
    {
      goto LABEL_47;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_63;
    }

    v113 = v165;
    sub_255ECEFA8();
    if (!*(&v167 + 1))
    {
      (*v159)(v158, v157);
      sub_255EB1E28(&v166, &qword_27F815AF8, &qword_255ECFF80);
      v161(v150, 1, 1, v6);
      goto LABEL_56;
    }

    v114 = v150;
    v115 = swift_dynamicCast();
    v161(v114, v115 ^ 1u, 1, v6);
    if (v134(v114, 1, v6) == 1)
    {
      (*v159)(v158, v157);
LABEL_56:
      v80 = v153;
      sub_255EB1E28(v150, &qword_27F815960, &qword_255ECFBC8);
      goto LABEL_49;
    }

    v132(v149, v150, v6);
    sub_255ECEFA8();
    if (*(&v167 + 1))
    {
      break;
    }

    v6 = v163;
    (*v147)(v149, v163);
LABEL_47:
    (*v159)(v158, v157);
    sub_255EB1E28(&v166, &qword_27F815AF8, &qword_255ECFF80);
LABEL_48:
    v80 = v153;
LABEL_49:
    sub_255ECF3C8();
    if (*(v80 + v81) == v166)
    {
      goto LABEL_23;
    }
  }

  if ((swift_dynamicCast() & 1) == 0 || v113 != v146)
  {
    v6 = v163;
    (*v147)(v149, v163);
LABEL_63:
    (*v159)(v158, v157);
    goto LABEL_48;
  }

  v90 = v165;
  v116 = v149;
  sub_255ECEDE8();
  v118 = v117;
  v119 = v116;
  v6 = v163;
  (*v147)(v119, v163);
  (*v159)(v158, v157);
  v80 = v153;
  if (v118 >= 5.0)
  {
    goto LABEL_49;
  }

  sub_255EB1E28(v153, &qword_27F815B08, &qword_255ED0080);
LABEL_39:
  sub_255ECEFA8();
  if (!*(&v167 + 1))
  {
LABEL_64:
    v82 = &qword_27F815AF8;
    v83 = &qword_255ECFF80;
    v84 = &v166;
    goto LABEL_65;
  }

  v91 = swift_dynamicCast();
  if ((v91 & 1) == 0)
  {
LABEL_66:
    v120 = type metadata accessor for ManualVolumeChange();
    (*(*(v120 - 8) + 56))(v164, 1, 1, v120);
    v121 = v163;
    v122 = v162[1];
    v122(v151, v163);
    return (v122)(v156, v121);
  }

  v161 = (v165 - v90);
  if (__OFSUB__(v165, v90))
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](v91);
    v92 = v151;
    *(&v129 - 4) = v156;
    *(&v129 - 3) = v92;
    *(&v129 - 2) = v136;
    v93 = v143;
    sub_255ECF048();
    (*(v144 + 16))(v135, v93, v145);
    v94 = v137;
    sub_255ECF088();
    v160 = sub_255EC752C(v94, v140, v141);
    LODWORD(v159) = v95;
    (*(v138 + 8))(v94, v139);
    if (qword_27F815870 == -1)
    {
      goto LABEL_43;
    }
  }

  swift_once();
LABEL_43:
  v96 = sub_255ECF198();
  __swift_project_value_buffer(v96, qword_27F815878);
  v158 = v162[2];
  (v158)(v142, v156, v163);
  v50 = sub_255ECF178();
  v97 = sub_255ECF3F8();
  if (os_log_type_enabled(v50, v97))
  {
    v98 = swift_slowAlloc();
    v157 = swift_slowAlloc();
    v165 = v157;
    *v98 = 136315650;
    sub_255EC938C(&qword_27F815B00, MEMORY[0x277CC9578]);
    v99 = v142;
    v100 = v163;
    v101 = sub_255ECF578();
    v103 = v102;
    v104 = v162[1];
    v104(v99, v100);
    v105 = sub_255EBCAE0(v101, v103, &v165);

    *(v98 + 4) = v105;
    *(v98 + 12) = 2048;
    *(v98 + 14) = v161;
    *(v98 + 22) = 2080;
    *&v166 = v160;
    BYTE8(v166) = v159 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B68, &qword_255ED0088);
    v106 = sub_255ECF2A8();
    v108 = sub_255EBCAE0(v106, v107, &v165);

    *(v98 + 24) = v108;
    _os_log_impl(&dword_255EA2000, v50, v97, "Found manual volume change at %s. System volume changed by %ld, environmental audio exposure changed by %s.", v98, 0x20u);
    v109 = v157;
    swift_arrayDestroy();
    MEMORY[0x259C511E0](v109, -1, -1);
    MEMORY[0x259C511E0](v98, -1, -1);

    goto LABEL_70;
  }

LABEL_69:

  v104 = v162[1];
  v104(v142, v163);
LABEL_70:
  (*(v144 + 8))(v143, v145);
  v124 = v163;
  v123 = v164;
  v125 = v156;
  (v158)(v164, v156, v163);
  v126 = type metadata accessor for ManualVolumeChange();
  v127 = v160;
  *(v123 + *(v126 + 20)) = v161;
  v128 = v123 + *(v126 + 24);
  *v128 = v127;
  *(v128 + 8) = v159 & 1;
  (*(*(v126 - 8) + 56))(v123, 0, 1, v126);
  v104(v151, v124);
  return (v104)(v125, v124);
}

uint64_t type metadata accessor for ManualVolumeChange()
{
  result = qword_27F815BA8;
  if (!qword_27F815BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_255EC71F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - v8;
  v10 = sub_255ECEE68();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255EB8BB8(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_255EB1E28(v9, &qword_27F815960, &qword_255ECFBC8);
    return 0;
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    sub_255ECEDE8();
    v17 = v16;
    sub_255ECEDE8();
    v19 = v18;
    (*(v11 + 8))(v14, v10);
    if (v17 <= a4)
    {
      v20 = 2.0;
      if (v19 > 2.0)
      {
        v20 = v19;
      }

      return v20 < v17;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_255EC73E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManualVolumeChange();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255EC7448(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManualVolumeChange();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255EC74AC(uint64_t a1)
{
  v2 = type metadata accessor for ManualVolumeChange();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255EC752C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_255ECF158();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_255ECEFC8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255ECEFD8();
  v15 = sub_255ECEFB8();
  (*(v11 + 8))(v14, v10);
  if (v15 < a2)
  {
    return 0;
  }

  v16 = sub_255ECEF78();
  if (v17)
  {
    return 0;
  }

  v18 = v16;
  result = sub_255ECF058();
  if ((v18 & 0x8000000000000000) != 0)
  {
LABEL_65:
    __break(1u);
  }

  else if (v18 < *(result + 16))
  {
    (*(v6 + 16))(v9, result + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18, v5);

    v20 = sub_255ECF148();
    (*(v6 + 8))(v9, v5);
    if (v20 != MEMORY[0x277D83B88])
    {
      return 0;
    }

    v21 = sub_255ECF0A8();
    v22 = v21;
    v23 = 0;
    v24 = *(v21 + 16);
    v25 = v21 + 32;
    v26 = a2 - a3;
    v27 = __OFSUB__(a2, a3);
    v28 = a3;
    v29 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    v30 = v21 + 40;
    v31 = MEMORY[0x277D84F90];
    v32 = 0.0;
    result = MEMORY[0x277D84F90];
    while (1)
    {
      do
      {
        if (v23 == v24)
        {
LABEL_60:

          return *&v32;
        }

        v33 = *(v22 + 16);
        if (v23 <= v33)
        {
          v34 = *(v22 + 16);
        }

        else
        {
          v34 = v23;
        }

        v35 = (v30 + 16 * v23);
        v36 = v33 - v23;
        v37 = v23;
        while (1)
        {
          if (v34 == v37)
          {
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

          if (v36 < a2)
          {
            goto LABEL_60;
          }

          if ((*v35 & 1) == 0)
          {
            if (v27)
            {
              goto LABEL_62;
            }

            v38 = v37 + v26;
            if (__OFADD__(v37, v26))
            {
              goto LABEL_63;
            }

            if (v38 >= v33)
            {
              goto LABEL_64;
            }

            v39 = v25 + 16 * v38;
            if (*(v39 + 8) != 1)
            {
              break;
            }
          }

          ++v37;
          v35 += 16;
          --v36;
          if (v24 == v37)
          {
            goto LABEL_60;
          }
        }

        v82 = v30;
        v83 = v29;
        v40 = *(v35 - 1);
        v80 = *v39;
        v81 = v40;
        v41 = result;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v84 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v41 = sub_255EAC5CC(0, *(v41 + 2) + 1, 1, v41);
        }

        v43 = v41;
        v45 = *(v41 + 2);
        v44 = *(v41 + 3);
        if (v45 >= v44 >> 1)
        {
          v43 = sub_255EAC5CC((v44 > 1), v45 + 1, 1, v41);
        }

        v46 = v81;
        *(v43 + 2) = v45 + 1;
        v81 = v43;
        v47 = v43 + 32;
        *&v43[8 * v45 + 32] = v46;
        v48 = v84;
        v49 = swift_isUniquelyReferenced_nonNull_native();
        v79 = v47;
        if ((v49 & 1) == 0)
        {
          v48 = sub_255EAC5CC(0, *(v48 + 2) + 1, 1, v48);
        }

        v30 = v82;
        v29 = v83;
        v50 = v48;
        v51 = *(v48 + 2);
        v84 = v50;
        v52 = *(v50 + 3);
        v53 = v51 + 1;
        result = v81;
        if (v51 >= v52 >> 1)
        {
          v78 = sub_255EAC5CC((v52 > 1), v51 + 1, 1, v84);
          v30 = v82;
          v29 = v83;
          v84 = v78;
          result = v81;
        }

        v54 = v80;
        v55 = v84;
        *(v84 + 2) = v53;
        v56 = (v55 + 32);
        v56[v51] = v54;
        v57 = *(result + 16);
        if (v57 > a3)
        {
          v80 = v56;
          if (!v57)
          {
            goto LABEL_67;
          }

          --v57;
          memmove(v79, (result + 40), 8 * v57);
          result = v81;
          v30 = v82;
          *(v81 + 2) = v57;
          v29 = v83;
          v53 = *(v84 + 2);
          v56 = v80;
        }

        if (v53 > a3)
        {
          if (!v53)
          {
            goto LABEL_68;
          }

          --v53;
          v58 = v84;
          memmove(v56, v84 + 40, 8 * v53);
          *(v58 + 2) = v53;
          result = v81;
          v30 = v82;
          v57 = *(v81 + 2);
          v29 = v83;
        }

        v23 = v37 + 1;
        v59 = v57 == a3;
        v31 = v84;
      }

      while (!v59 || v53 != a3);
      if (!a3)
      {
        v61 = 0.0;
        v62 = 0.0;
        goto LABEL_57;
      }

      if (a3 < 4)
      {
        break;
      }

      v63 = result + 48;
      v61 = 0.0;
      v64 = v29;
      do
      {
        v65 = *v63;
        v61 = v61 + *(v63 - 16) + *(v63 - 8) + *v63 + *(v63 + 8);
        v63 += 32;
        v64 -= 4;
      }

      while (v64);
      v60 = v29;
      if (v29 != a3)
      {
        goto LABEL_48;
      }

LABEL_50:
      if (a3 < 4)
      {
        v69 = 0;
        v62 = 0.0;
LABEL_55:
        v73 = a3 - v69;
        v74 = &v84[8 * v69 + 32];
        do
        {
          v75 = *v74++;
          v62 = v62 + v75;
          --v73;
        }

        while (v73);
        goto LABEL_57;
      }

      v70 = v84 + 48;
      v62 = 0.0;
      v71 = v29;
      do
      {
        v72 = *v70;
        v62 = v62 + *(v70 - 2) + *(v70 - 1) + *v70 + *(v70 + 1);
        v70 += 32;
        v71 -= 4;
      }

      while (v71);
      v69 = v29;
      if (v29 != a3)
      {
        goto LABEL_55;
      }

LABEL_57:
      v23 = v37 + 1;
      v76 = v61 / v28;
      v77 = v62 / v28;
      if (fabs(v32) < vabdd_f64(v77, v76))
      {
        v32 = v77 - v76;
      }
    }

    v60 = 0;
    v61 = 0.0;
LABEL_48:
    v66 = a3 - v60;
    v67 = (result + 8 * v60 + 32);
    do
    {
      v68 = *v67++;
      v61 = v61 + v68;
      --v66;
    }

    while (v66);
    goto LABEL_50;
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

void sub_255EC7B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v184 = a6;
  v223 = a1;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B70, &qword_255ED0090);
  v220 = *(v203 - 8);
  v12 = *(v220 + 64);
  MEMORY[0x28223BE20](v203);
  v202 = &v166 - v13;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B78, &qword_255ED0098);
  v14 = *(*(v218 - 8) + 64);
  MEMORY[0x28223BE20](v218);
  v217 = &v166 - v15;
  v190 = sub_255ECEFF8();
  v219 = *(v190 - 8);
  v16 = *(v219 + 64);
  v17 = MEMORY[0x28223BE20](v190);
  v194 = &v166 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v212 = &v166 - v20;
  MEMORY[0x28223BE20](v19);
  v216 = &v166 - v21;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B80, &qword_255ED00A0);
  v221 = *(v198 - 8);
  v22 = v221[8];
  MEMORY[0x28223BE20](v198);
  v199 = &v166 - v23;
  v200 = sub_255ECEF98();
  v24 = *(v200 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v200);
  v181 = &v166 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v177 = &v166 - v29;
  MEMORY[0x28223BE20](v28);
  v196 = &v166 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B88, &qword_255ED00A8);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v179 = &v166 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v178 = (&v166 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v197 = &v166 - v38;
  MEMORY[0x28223BE20](v37);
  v214 = &v166 - v39;
  v224 = sub_255ECEFC8();
  v40 = *(v224 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v224);
  v222 = &v166 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B90, &qword_255ED00B0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v183 = &v166 - v45;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B98, &qword_255ED00B8);
  v46 = *(*(v182 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v182);
  v180 = &v166 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v50 = &v166 - v49;
  v51 = sub_255ECF158();
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  v55 = &v166 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = a3;
  v195 = a2;
  v56 = a2 + a3;
  if (__OFADD__(a2, a3))
  {
    goto LABEL_83;
  }

  if (a5 <= a4)
  {
    v57 = a4;
  }

  else
  {
    v57 = a5;
  }

  v213 = v56 + v57;
  if (__OFADD__(v56, v57))
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v192 = a4;
  v191 = a5;
  v58 = sub_255ECEF78();
  v59 = v214;
  if (v60)
  {
LABEL_10:
    if (qword_27F815830 == -1)
    {
LABEL_11:
      v64 = sub_255ECF198();
      __swift_project_value_buffer(v64, qword_27F815838);
      v65 = sub_255ECF178();
      v66 = sub_255ECF408();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_255EA2000, v65, v66, "Data Frame does not contain downlinkdBA column! Returning 0.0 as manual volume change likelihood.", v67, 2u);
        MEMORY[0x259C511E0](v67, -1, -1);
      }

      return;
    }

LABEL_85:
    swift_once();
    goto LABEL_11;
  }

  v61 = v58;
  v62 = sub_255ECF058();
  if ((v61 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v61 < *(v62 + 16))
  {
    (*(v52 + 16))(v55, v62 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v61, v51);

    v63 = sub_255ECF148();
    (*(v52 + 8))(v55, v51);
    if (v63 != MEMORY[0x277D83B88])
    {
      goto LABEL_10;
    }

    v68 = v183;
    sub_255ECEFD8();
    v169 = *(v40 + 32);
    v169(v222, v68, v224);
    v69 = MEMORY[0x277CE1870];
    v70 = v50;
    v168 = sub_255EC938C(&qword_27F815BA0, MEMORY[0x277CE1870]);
    sub_255ECF368();
    v187 = *(v182 + 36);
    *&v50[v187] = 0;
    v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B08, &qword_255ED0080);
    v209 = *(v167 + 36);
    v71 = sub_255EC938C(&qword_27F815B10, v69);
    v173 = 0;
    v175 = 0;
    v176 = 0;
    v208 = 0;
    v188 = (v24 + 16);
    v189 = (v24 + 32);
    v211 = (v221 + 7);
    v210 = (v221 + 6);
    v221 = (v40 + 8);
    v207 = (v24 + 8);
    v215 = (v40 + 16);
    v201 = (v220 + 8);
    v185 = (v219 + 8);
    v172 = "manualVolumeChangeFlag";
    v170 = "LighthouseAVShadowEval";
    v174 = MEMORY[0x277D84F90];
    v72 = v198;
    v73 = v199;
    v74 = v200;
    v75 = v197;
    v225 = v71;
    v171 = v40 + 32;
    v186 = v50;
LABEL_15:
    sub_255ECF3C8();
    if (*(v70 + v209) == v227)
    {
      v76 = *v211;
      (*v211)(v75, 1, 1, v72);
    }

    else
    {
      v77 = v59;
      v78 = sub_255ECF3E8();
      v79 = v196;
      (*v188)(v196);
      v78(&v227, 0);
      sub_255ECF3D8();
      v80 = *(v72 + 48);
      v81 = v208;
      *v73 = v208;
      (*v189)(&v73[v80], v79, v74);
      if (__OFADD__(v81, 1))
      {
        goto LABEL_72;
      }

      v208 = v81 + 1;
      *(v70 + v187) = v81 + 1;
      sub_255EB2860(v73, v75, &qword_27F815B80, &qword_255ED00A0);
      v76 = *v211;
      (*v211)(v75, 0, 1, v72);
      v59 = v77;
    }

    sub_255EB2860(v75, v59, &qword_27F815B88, &qword_255ED00A8);
    v82 = *v210;
    if ((*v210)(v59, 1, v72) == 1)
    {
      sub_255EB1E28(v70, &qword_27F815B98, &qword_255ED00B8);

      return;
    }

    v83 = v70;
    v84 = *v59;
    v85 = *v59 + v213;
    if (__OFADD__(*v59, v213))
    {
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v205 = v82;
    v219 = v84;
    v206 = v76;
    v86 = *(v72 + 48);
    v87 = v222;
    sub_255ECEFD8();
    v88 = sub_255ECEFB8();
    v220 = *v221;
    (v220)(v87, v224);
    if (v85 >= v88)
    {
      goto LABEL_38;
    }

    v89 = v219 + v195;
    if (__OFADD__(v219, v195))
    {
      goto LABEL_73;
    }

    if (__OFSUB__(v89, 1))
    {
      goto LABEL_74;
    }

    if (v89 - 1 < v219)
    {
      goto LABEL_75;
    }

    v204 = v86;
    sub_255ECF078();
    v90 = v222;
    sub_255ECEF28();
    v91 = *v215;
    v92 = v217;
    v93 = v224;
    (*v215)(v217, v90, v224);
    v94 = v218;
    v95 = v92 + *(v218 + 36);
    sub_255ECF398();
    v96 = v92 + *(v94 + 40);
    sub_255ECF3C8();
    (v220)(v90, v93);
    v226 = v89 - 1;
    sub_255ECF3A8();
    sub_255EB1E28(v92, &qword_27F815B78, &qword_255ED0098);
    sub_255ECEF58();
    v97 = __OFADD__(v89, v193);
    v98 = v89 + v193;
    if (v97)
    {
      goto LABEL_76;
    }

    v99 = v98 + v192;
    if (__OFADD__(v98, v192))
    {
      goto LABEL_77;
    }

    v100 = v99 - 1;
    if (__OFSUB__(v99, 1))
    {
      goto LABEL_78;
    }

    if (v100 < v98)
    {
      goto LABEL_79;
    }

    v101 = v222;
    sub_255ECEF28();
    v102 = v217;
    v103 = v224;
    v91(v217, v101, v224);
    v104 = v218;
    v105 = v102 + *(v218 + 36);
    sub_255ECF398();
    v106 = v102 + *(v104 + 40);
    sub_255ECF3C8();
    (v220)(v101, v103);
    v226 = v100;
    sub_255ECF3A8();
    sub_255EB1E28(v102, &qword_27F815B78, &qword_255ED0098);
    sub_255ECEF58();
    v107 = v98 + v191;
    if (__OFADD__(v98, v191))
    {
      goto LABEL_80;
    }

    v108 = v107 - 1;
    if (__OFSUB__(v107, 1))
    {
      goto LABEL_81;
    }

    if (v108 < v98)
    {
      goto LABEL_82;
    }

    v109 = v222;
    sub_255ECEF28();
    v110 = v217;
    v111 = v224;
    v91(v217, v109, v224);
    v112 = v218;
    v113 = v110 + *(v218 + 36);
    sub_255ECF398();
    v114 = v110 + *(v112 + 40);
    sub_255ECF3C8();
    (v220)(v109, v111);
    v226 = v108;
    sub_255ECF3A8();
    sub_255EB1E28(v110, &qword_27F815B78, &qword_255ED0098);
    v115 = v194;
    v116 = v212;
    sub_255ECEF58();
    v117 = v202;
    sub_255ECF008();
    sub_255EC42D4();
    v118 = v203;
    v119 = sub_255ECF0E8();
    v121 = v120;
    v122 = *v201;
    (*v201)(v117, v118);
    v83 = v186;
    if (v121)
    {
      goto LABEL_37;
    }

    v123 = v202;
    sub_255ECF008();
    v124 = v203;
    v125 = sub_255ECF0E8();
    v127 = v126;
    v122(v123, v124);
    if ((v127 & 1) != 0 || vabdd_f64(*&v125, *&v119) < a7)
    {
      goto LABEL_37;
    }

    if (__OFSUB__(v219, v176))
    {
      goto LABEL_88;
    }

    if (v219 - v176 < v184)
    {
LABEL_37:
      v128 = *v185;
      v129 = v190;
      (*v185)(v115, v190);
      v128(v116, v129);
      v128(v216, v129);
      v72 = v198;
      v73 = v199;
      v74 = v200;
      v75 = v197;
      v86 = v204;
LABEL_38:
      v130 = &v214[v86];
      v59 = v214;
      (*v207)(v130, v74);
      goto LABEL_39;
    }

    if (__OFADD__(v175, 1))
    {
      goto LABEL_89;
    }

    ++v175;
    sub_255ECEF78();
    v59 = v214;
    v131 = v204;
    if (v132)
    {
      v133 = *v185;
      v134 = v190;
      (*v185)(v194, v190);
      v133(v116, v134);
      v133(v216, v134);
      v74 = v200;
      (*v207)(v59 + v131, v200);
      v72 = v198;
      goto LABEL_43;
    }

    v135 = v183;
    sub_255ECEFE8();
    v169(v222, v135, v224);
    v136 = v180;
    sub_255ECF368();
    v166 = 0;
    v137 = 0;
    v176 = *(v182 + 36);
    *(v136 + v176) = 0;
    v138 = *(v167 + 36);
    v72 = v198;
    v220 = v138;
    while (1)
    {
      while (1)
      {
        sub_255ECF3C8();
        if (*(v136 + v138) == v227)
        {
          v139 = v179;
          v206(v179, 1, 1, v72);
        }

        else
        {
          v140 = v136;
          v141 = sub_255ECF3E8();
          v142 = v177;
          v143 = v200;
          (*v188)(v177);
          v141(&v227, 0);
          sub_255ECF3D8();
          v144 = *(v72 + 48);
          v145 = v199;
          *v199 = v137;
          (*v189)(&v145[v144], v142, v143);
          v97 = __OFADD__(v137++, 1);
          if (v97)
          {
            goto LABEL_90;
          }

          *(v140 + v176) = v137;
          v146 = v145;
          v139 = v179;
          sub_255EB2860(v146, v179, &qword_27F815B80, &qword_255ED00A0);
          v206(v139, 0, 1, v72);
          v136 = v140;
          v83 = v186;
          v131 = v204;
        }

        v147 = v212;
        v148 = v139;
        v149 = v178;
        sub_255EB2860(v148, v178, &qword_27F815B88, &qword_255ED00A8);
        if (v205(v149, 1, v72) == 1)
        {
          sub_255EB1E28(v136, &qword_27F815B98, &qword_255ED00B8);
          v164 = *v185;
          v165 = v190;
          (*v185)(v194, v190);
          v164(v147, v165);
          v164(v216, v165);
          v97 = __OFADD__(v173, v166);
          v173 += v166;
          if (v97)
          {
            goto LABEL_91;
          }

          v59 = v214;
          v74 = v200;
          (*v207)(&v214[v131], v200);
          v176 = v219;
LABEL_43:
          v73 = v199;
          v75 = v197;
LABEL_39:
          v70 = v83;
          goto LABEL_15;
        }

        v150 = *v149;
        v151 = v149 + *(v72 + 48);
        v152 = v181;
        v153 = v200;
        (*v189)(v181, v151, v200);
        sub_255ECEFA8();
        if (v228)
        {
          break;
        }

        (*v207)(v152, v153);
        sub_255EB1E28(&v227, &qword_27F815AF8, &qword_255ECFF80);
        v136 = v180;
        v138 = v220;
      }

      v154 = swift_dynamicCast();
      v138 = v220;
      if ((v154 & 1) == 0)
      {
        break;
      }

      v155 = v226;
      v156 = v181;
      sub_255ECEFA8();
      if (v228)
      {
        if ((swift_dynamicCast() & 1) == 0 || v155 != 1 || v226 != 1)
        {
          break;
        }

        v157 = *(v174 + 2);
        v158 = v157;
        v159 = 32;
        while (v158)
        {
          v160 = *&v174[v159];
          v159 += 8;
          --v158;
          if (v160 == v150)
          {
            goto LABEL_60;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v174 = sub_255EAC748(0, v157 + 1, 1, v174);
        }

        v162 = *(v174 + 2);
        v161 = *(v174 + 3);
        if (v162 >= v161 >> 1)
        {
          v174 = sub_255EAC748((v161 > 1), v162 + 1, 1, v174);
        }

        (*v207)();
        v163 = v174;
        *(v174 + 2) = v162 + 1;
        *&v163[8 * v162 + 32] = v150;
        v166 = 1;
      }

      else
      {
        (*v207)(v156, v200);
        sub_255EB1E28(&v227, &qword_27F815AF8, &qword_255ECFF80);
      }

LABEL_61:
      v136 = v180;
    }

LABEL_60:
    (*v207)(v181, v200);
    goto LABEL_61;
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
}

uint64_t sub_255EC938C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_255EC93E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_255ECEE68();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_255EC9468(uint64_t a1, uint64_t a2)
{
  v4 = sub_255ECEE68();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_255EC94D8()
{
  sub_255ECEE68();
  if (v0 <= 0x3F)
  {
    sub_255EC9564();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_255EC9564()
{
  if (!qword_27F815BB8)
  {
    v0 = sub_255ECF438();
    if (!v1)
    {
      atomic_store(v0, &qword_27F815BB8);
    }
  }
}

uint64_t sub_255EC9600()
{
  if (*v0)
  {
    result = 0x746E656D75677261;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_255EC9638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_255ECF588() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E656D75677261 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255ECF588();

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

uint64_t sub_255EC9734(uint64_t a1)
{
  v2 = sub_255ECC218();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255EC9770(uint64_t a1)
{
  v2 = sub_255ECC218();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255EC97AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815D20, &unk_255ED0830);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255ECC218();
  sub_255ECF618();
  v15 = 0;
  sub_255ECF558();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B18, &qword_255ED0008);
    sub_255ECC26C(&qword_27F815D30);
    sub_255ECF568();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_255EC9974(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815C68, &qword_255ED0470);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255ECBB70();
  sub_255ECF618();
  v15 = 0;
  sub_255ECF558();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815C78, &qword_255ED0478);
    sub_255ECBBC4();
    sub_255ECF568();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_255EC9B18(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v18 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_255ECF618();
  v14 = *v6;
  v15 = v6[1];
  LOBYTE(v19) = 0;
  v16 = v18[1];
  sub_255ECF558();
  if (!v16)
  {
    v19 = *(v6 + 1);
    v20 = v6[4];
    v21 = 1;
    sub_255ECBC48();
    sub_255ECF568();
  }

  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_255EC9CF0()
{
  if (*v0)
  {
    result = 0x737265746C6966;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_255EC9D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000255ED1310 == a2 || (sub_255ECF588() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x737265746C6966 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_255ECF588();

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

uint64_t sub_255EC9E18(uint64_t a1)
{
  v2 = sub_255ECBB70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255EC9E54(uint64_t a1)
{
  v2 = sub_255ECBB70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255EC9EBC@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_255EC9F10()
{
  if (*v0)
  {
    result = 0xD000000000000019;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

uint64_t sub_255EC9F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x8000000255ED1330 == a2 || (sub_255ECF588() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000255ED1350 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_255ECF588();

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

uint64_t sub_255ECA030(uint64_t a1)
{
  v2 = sub_255ECBC9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255ECA06C(uint64_t a1)
{
  v2 = sub_255ECBC9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255ECA130()
{
  v1 = *v0;
  sub_255ECF5C8();
  MEMORY[0x259C50D60](v1);
  return sub_255ECF5F8();
}

uint64_t sub_255ECA178()
{
  v1 = *v0;
  sub_255ECF5C8();
  MEMORY[0x259C50D60](v1);
  return sub_255ECF5F8();
}

uint64_t sub_255ECA1BC()
{
  if (*v0)
  {
    result = 0x6E6F6974636E7566;
  }

  else
  {
    result = 0x614E63697274656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_255ECA1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x614E63697274656DLL && a2 == 0xEA0000000000656DLL;
  if (v6 || (sub_255ECF588() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6974636E7566 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255ECF588();

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

uint64_t sub_255ECA2E0(uint64_t a1)
{
  v2 = sub_255ECBCF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255ECA31C(uint64_t a1)
{
  v2 = sub_255ECBCF0();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_255ECA39C@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  sub_255ECB834(a1, a2, a3, a4, v9);
  if (!v5)
  {
    result = *v9;
    v8 = v9[1];
    *a5 = v9[0];
    *(a5 + 16) = v8;
    *(a5 + 32) = v10;
  }

  return result;
}

unint64_t sub_255ECA438()
{
  v1 = 0x7461676572676761;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_255ECA4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255ECBA44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255ECA4D4(uint64_t a1)
{
  v2 = sub_255ECA7BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255ECA510(uint64_t a1)
{
  v2 = sub_255ECA7BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EvaluationJobDescription.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815BC0, &qword_255ED00E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v15 = v1[2];
  v16 = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255ECA7BC();

  sub_255ECF618();
  v18 = v10;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815BD0, &qword_255ED00E8);
  sub_255ECA810();
  sub_255ECF568();

  if (!v2)
  {
    v12 = v15;
    v18 = v16;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815BE8, &qword_255ED00F0);
    sub_255ECA8E8();
    sub_255ECF568();
    v18 = v12;
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815C00, &qword_255ED00F8);
    sub_255ECA9C0();
    sub_255ECF568();
  }

  return (*(v5 + 8))(v8, v4);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_255ECA7BC()
{
  result = qword_27F815BC8;
  if (!qword_27F815BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815BC8);
  }

  return result;
}

unint64_t sub_255ECA810()
{
  result = qword_27F815BD8;
  if (!qword_27F815BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F815BD0, &qword_255ED00E8);
    sub_255ECA894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815BD8);
  }

  return result;
}

unint64_t sub_255ECA894()
{
  result = qword_27F815BE0;
  if (!qword_27F815BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815BE0);
  }

  return result;
}

unint64_t sub_255ECA8E8()
{
  result = qword_27F815BF0;
  if (!qword_27F815BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F815BE8, &qword_255ED00F0);
    sub_255ECA96C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815BF0);
  }

  return result;
}

unint64_t sub_255ECA96C()
{
  result = qword_27F815BF8;
  if (!qword_27F815BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815BF8);
  }

  return result;
}

unint64_t sub_255ECA9C0()
{
  result = qword_27F815C08;
  if (!qword_27F815C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F815C00, &qword_255ED00F8);
    sub_255ECAA44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815C08);
  }

  return result;
}

unint64_t sub_255ECAA44()
{
  result = qword_27F815C10;
  if (!qword_27F815C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815C10);
  }

  return result;
}

uint64_t EvaluationJobDescription.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815C18, &qword_255ED0100);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255ECA7BC();
  sub_255ECF608();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815BD0, &qword_255ED00E8);
  v16 = 0;
  sub_255ECAD70();
  sub_255ECF548();
  v11 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815BE8, &qword_255ED00F0);
  v16 = 1;
  sub_255ECAE48();
  sub_255ECF548();
  v15 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815C00, &qword_255ED00F8);
  v16 = 2;
  sub_255ECAF20();
  sub_255ECF548();
  (*(v6 + 8))(v9, v5);
  v12 = v17;
  v13 = v15;
  *a2 = v11;
  a2[1] = v13;
  a2[2] = v12;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_255ECAD70()
{
  result = qword_27F815C20;
  if (!qword_27F815C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F815BD0, &qword_255ED00E8);
    sub_255ECADF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815C20);
  }

  return result;
}

unint64_t sub_255ECADF4()
{
  result = qword_27F815C28;
  if (!qword_27F815C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815C28);
  }

  return result;
}

unint64_t sub_255ECAE48()
{
  result = qword_27F815C30;
  if (!qword_27F815C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F815BE8, &qword_255ED00F0);
    sub_255ECAECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815C30);
  }

  return result;
}

unint64_t sub_255ECAECC()
{
  result = qword_27F815C38;
  if (!qword_27F815C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815C38);
  }

  return result;
}

unint64_t sub_255ECAF20()
{
  result = qword_27F815C40;
  if (!qword_27F815C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F815C00, &qword_255ED00F8);
    sub_255ECAFA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815C40);
  }

  return result;
}

unint64_t sub_255ECAFA4()
{
  result = qword_27F815C48;
  if (!qword_27F815C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815C48);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_255ECB03C(uint64_t *a1, int a2)
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

uint64_t sub_255ECB084(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_255ECB100(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_255ECB148(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EvaluationJobDescription.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EvaluationJobDescription.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_255ECB304()
{
  result = qword_27F815C50;
  if (!qword_27F815C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815C50);
  }

  return result;
}

unint64_t sub_255ECB35C()
{
  result = qword_27F815C58;
  if (!qword_27F815C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815C58);
  }

  return result;
}

unint64_t sub_255ECB3B4()
{
  result = qword_27F815C60;
  if (!qword_27F815C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815C60);
  }

  return result;
}

uint64_t sub_255ECB408(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815D38, &qword_255ED0840);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255ECC218();
  sub_255ECF608();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_255ECF538();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B18, &qword_255ED0008);
    v10[15] = 1;
    sub_255ECC26C(&qword_27F815D40);
    sub_255ECF548();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t sub_255ECB630(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815CB0, &qword_255ED0490);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255ECBB70();
  sub_255ECF608();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_255ECF538();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815C78, &qword_255ED0478);
    v10[15] = 1;
    sub_255ECBD44();
    sub_255ECF548();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t sub_255ECB834@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v22 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  *&v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_255ECF608();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v13 = v21;
  v14 = v22;
  LOBYTE(v23) = 0;
  v15 = sub_255ECF538();
  v17 = v16;
  v18 = v15;
  v25 = 1;
  sub_255ECBDC8();
  sub_255ECF548();
  (*(v13 + 8))(v11, v8);
  v19 = v23;
  v21 = v24;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *v14 = v18;
  *(v14 + 8) = v17;
  *(v14 + 16) = v19;
  *(v14 + 24) = v21;
  return result;
}

uint64_t sub_255ECBA44(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000255ED12D0 == a2 || (sub_255ECF588() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000255ED12F0 == a2 || (sub_255ECF588() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461676572676761 && a2 == 0xEB0000000073726FLL)
  {

    return 2;
  }

  else
  {
    v5 = sub_255ECF588();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_255ECBB70()
{
  result = qword_27F815C70;
  if (!qword_27F815C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815C70);
  }

  return result;
}

unint64_t sub_255ECBBC4()
{
  result = qword_27F815C80;
  if (!qword_27F815C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F815C78, &qword_255ED0478);
    sub_255ECBC48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815C80);
  }

  return result;
}

unint64_t sub_255ECBC48()
{
  result = qword_27F815C88;
  if (!qword_27F815C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815C88);
  }

  return result;
}

unint64_t sub_255ECBC9C()
{
  result = qword_27F815C98;
  if (!qword_27F815C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815C98);
  }

  return result;
}

unint64_t sub_255ECBCF0()
{
  result = qword_27F815CA8;
  if (!qword_27F815CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815CA8);
  }

  return result;
}

unint64_t sub_255ECBD44()
{
  result = qword_27F815CB8;
  if (!qword_27F815CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F815C78, &qword_255ED0478);
    sub_255ECBDC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815CB8);
  }

  return result;
}

unint64_t sub_255ECBDC8()
{
  result = qword_27F815CC0;
  if (!qword_27F815CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815CC0);
  }

  return result;
}

uint64_t sub_255ECBE64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_255ECBEB0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_255ECBF04()
{
  result = qword_27F815CD8;
  if (!qword_27F815CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815CD8);
  }

  return result;
}

unint64_t sub_255ECBF5C()
{
  result = qword_27F815CE0;
  if (!qword_27F815CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815CE0);
  }

  return result;
}

unint64_t sub_255ECBFB4()
{
  result = qword_27F815CE8;
  if (!qword_27F815CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815CE8);
  }

  return result;
}

unint64_t sub_255ECC00C()
{
  result = qword_27F815CF0;
  if (!qword_27F815CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815CF0);
  }

  return result;
}

unint64_t sub_255ECC064()
{
  result = qword_27F815CF8;
  if (!qword_27F815CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815CF8);
  }

  return result;
}

unint64_t sub_255ECC0BC()
{
  result = qword_27F815D00;
  if (!qword_27F815D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815D00);
  }

  return result;
}

unint64_t sub_255ECC114()
{
  result = qword_27F815D08;
  if (!qword_27F815D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815D08);
  }

  return result;
}

unint64_t sub_255ECC16C()
{
  result = qword_27F815D10;
  if (!qword_27F815D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815D10);
  }

  return result;
}

unint64_t sub_255ECC1C4()
{
  result = qword_27F815D18;
  if (!qword_27F815D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815D18);
  }

  return result;
}

unint64_t sub_255ECC218()
{
  result = qword_27F815D28;
  if (!qword_27F815D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815D28);
  }

  return result;
}

uint64_t sub_255ECC26C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F815B18, &qword_255ED0008);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_255ECC2D8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_255ECC368(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_255ECC42C()
{
  result = qword_27F815D48;
  if (!qword_27F815D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815D48);
  }

  return result;
}

unint64_t sub_255ECC484()
{
  result = qword_27F815D50;
  if (!qword_27F815D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815D50);
  }

  return result;
}

unint64_t sub_255ECC4DC()
{
  result = qword_27F815D58;
  if (!qword_27F815D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815D58);
  }

  return result;
}

char *EvaluationJobRunner.__allocating_init(dataFrame:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D84F98];
  *(v5 + 2) = MEMORY[0x277D84F98];
  *(v5 + 3) = v6;
  *(v5 + 4) = MEMORY[0x277D84F90];
  v7 = OBJC_IVAR____TtC12LighthouseAV19EvaluationJobRunner_fullDataFrame;
  v8 = sub_255ECF078();
  (*(*(v8 - 8) + 32))(&v5[v7], a1, v8);
  return v5;
}

char *EvaluationJobRunner.init(dataFrame:)(uint64_t a1)
{
  v3 = MEMORY[0x277D84F98];
  *(v1 + 2) = MEMORY[0x277D84F98];
  *(v1 + 3) = v3;
  *(v1 + 4) = MEMORY[0x277D84F90];
  v4 = OBJC_IVAR____TtC12LighthouseAV19EvaluationJobRunner_fullDataFrame;
  v5 = sub_255ECF078();
  (*(*(v5 - 8) + 32))(&v1[v4], a1, v5);
  return v1;
}

uint64_t sub_255ECC684(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B28, &qword_255ED0960);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  isUniquelyReferenced_nonNull_native = &v113 - v6;
  v122 = type metadata accessor for EventSet(0);
  v117 = *(v122 - 8);
  v8 = *(v117 + 64);
  v9 = MEMORY[0x28223BE20](v122);
  v121 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v120 = &v113 - v11;
  v129 = type metadata accessor for DataSlice(0);
  v125 = *(v129 - 8);
  v12 = *(v125 + 64);
  v13 = MEMORY[0x28223BE20](v129);
  v135 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v128 = (&v113 - v15);
  v16 = sub_255ECF078();
  v17 = *(*(v16 - 1) + 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v113 - v22);
  MEMORY[0x28223BE20](v21);
  v24 = a1[1];
  v132 = *a1;
  v131 = v24;
  v114 = a1[2];
  v115 = v25;
  v26 = *(v25 + 16);
  v130 = &v113 - v27;
  v127 = v25 + 16;
  v126 = v26;
  v26();
  if (qword_27F815850 != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v123 = isUniquelyReferenced_nonNull_native;
    v28 = sub_255ECF198();
    v116 = __swift_project_value_buffer(v28, qword_27F815858);
    v29 = sub_255ECF178();
    isUniquelyReferenced_nonNull_native = sub_255ECF3F8();
    if (os_log_type_enabled(v29, isUniquelyReferenced_nonNull_native))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_255EA2000, v29, isUniquelyReferenced_nonNull_native, "Running data sample filters.", v30, 2u);
      MEMORY[0x259C511E0](v30, -1, -1);
    }

    v31 = *(v132 + 16);
    v138 = v2;
    v124 = v31;
    if (!v31)
    {
LABEL_25:
      v65 = sub_255ECF178();
      isUniquelyReferenced_nonNull_native = sub_255ECF3F8();
      if (os_log_type_enabled(v65, isUniquelyReferenced_nonNull_native))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_255EA2000, v65, isUniquelyReferenced_nonNull_native, "Running volume change event detectors.", v66, 2u);
        MEMORY[0x259C511E0](v66, -1, -1);
      }

      v139 = *(v131 + 16);
      if (v139)
      {
        swift_beginAccess();
        v67 = 0;
        v137 = (v117 + 48);
        v68 = (v131 + 64);
        while (1)
        {
          if (v67 >= *(v131 + 16))
          {
            goto LABEL_66;
          }

          v23 = *(v68 - 4);
          v69 = *(v68 - 3);
          v70 = *(v68 - 2);
          isUniquelyReferenced_nonNull_native = *(v68 - 1);
          v71 = *v68;
          v142[0] = v23;
          v142[1] = v69;
          v142[2] = v70;
          v142[3] = isUniquelyReferenced_nonNull_native;
          v142[4] = v71;
          v20 = v2[2];
          swift_bridgeObjectRetain_n();

          v72 = v123;
          sub_255EB8CCC(v142, v20, v123);

          if ((*v137)(v72, 1, v122) != 1)
          {
            break;
          }

          sub_255EB1E28(v72, &qword_27F815B28, &qword_255ED0960);
LABEL_30:
          ++v67;
          v68 += 5;
          if (v139 == v67)
          {
            goto LABEL_44;
          }
        }

        v73 = v120;
        sub_255ECDA74(v72, v120, type metadata accessor for EventSet);
        swift_beginAccess();
        sub_255ECDADC(v73, v121);
        v74 = v2[3];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v140 = v2[3];
        v75 = v140;
        v2[3] = 0x8000000000000000;
        v76 = sub_255EACAD4(v23, v69);
        v78 = *(v75 + 16);
        v79 = (v77 & 1) == 0;
        v63 = __OFADD__(v78, v79);
        v80 = v78 + v79;
        if (v63)
        {
          goto LABEL_71;
        }

        v20 = v77;
        if (*(v75 + 24) >= v80)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v83 = v76;
            sub_255EAD8EC();
            v76 = v83;
            if (v20)
            {
              goto LABEL_39;
            }

            goto LABEL_41;
          }
        }

        else
        {
          sub_255EAD25C(v80, isUniquelyReferenced_nonNull_native);
          v76 = sub_255EACAD4(v23, v69);
          if ((v20 & 1) != (v81 & 1))
          {
            goto LABEL_75;
          }
        }

        if (v20)
        {
LABEL_39:
          v82 = v76;

          isUniquelyReferenced_nonNull_native = v140;
          sub_255ECDB40(v121, *(v140 + 56) + *(v117 + 72) * v82, type metadata accessor for EventSet);
LABEL_43:
          v2 = v138;
          v87 = v138[3];
          v138[3] = isUniquelyReferenced_nonNull_native;

          swift_endAccess();
          sub_255ECDC18(v120, type metadata accessor for EventSet);
          goto LABEL_30;
        }

LABEL_41:
        isUniquelyReferenced_nonNull_native = v140;
        *(v140 + 8 * (v76 >> 6) + 64) |= 1 << v76;
        v84 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v76);
        *v84 = v23;
        v84[1] = v69;
        sub_255ECDA74(v121, *(isUniquelyReferenced_nonNull_native + 56) + *(v117 + 72) * v76, type metadata accessor for EventSet);
        v85 = *(isUniquelyReferenced_nonNull_native + 16);
        v63 = __OFADD__(v85, 1);
        v86 = v85 + 1;
        if (v63)
        {
          goto LABEL_73;
        }

        *(isUniquelyReferenced_nonNull_native + 16) = v86;
        goto LABEL_43;
      }

LABEL_44:
      v88 = sub_255ECF178();
      v89 = sub_255ECF3F8();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&dword_255EA2000, v88, v89, "Running data aggregators.", v90, 2u);
        MEMORY[0x259C511E0](v90, -1, -1);
      }

      v91 = v114;
      v20 = *(v114 + 16);
      if (!v20)
      {
LABEL_63:
        (*(v115 + 8))(v130, v16);
        swift_beginAccess();
        v111 = v2[4];
      }

      swift_beginAccess();
      swift_beginAccess();
      v23 = v91 + 8;
      while (1)
      {
        isa = v23[-3].isa;
        v93 = v23[-2].isa;
        v94 = v23[-1].isa;
        v95.isa = v23->isa;
        v141[0] = v23[-4].isa;
        v141[1] = isa;
        v141[2] = v93;
        v141[3] = v94;
        v141[4] = v95.isa;
        v96 = v2[2];
        v97 = v138[3];

        v98 = sub_255EC2018(v141, v96, v97);

        v2 = v138;

        swift_beginAccess();
        v99 = *(v98 + 16);
        v100 = v2[4];
        isUniquelyReferenced_nonNull_native = v100[2];
        v101 = isUniquelyReferenced_nonNull_native + v99;
        if (__OFADD__(isUniquelyReferenced_nonNull_native, v99))
        {
          goto LABEL_67;
        }

        v102 = v2[4];
        v103 = swift_isUniquelyReferenced_nonNull_native();
        if (v103 && v101 <= v100[3] >> 1)
        {
          if (!*(v98 + 16))
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (isUniquelyReferenced_nonNull_native <= v101)
          {
            v104 = isUniquelyReferenced_nonNull_native + v99;
          }

          else
          {
            v104 = isUniquelyReferenced_nonNull_native;
          }

          v100 = sub_255EAC84C(v103, v104, 1, v100);
          if (!*(v98 + 16))
          {
LABEL_48:

            if (v99)
            {
              goto LABEL_68;
            }

            goto LABEL_49;
          }
        }

        isUniquelyReferenced_nonNull_native = v100[2];
        v105 = (v100[3] >> 1) - isUniquelyReferenced_nonNull_native;
        v106 = *(type metadata accessor for Metric(0) - 8);
        if (v105 < v99)
        {
          goto LABEL_69;
        }

        v107 = (*(v106 + 80) + 32) & ~*(v106 + 80);
        v108 = *(v106 + 72);
        swift_arrayInitWithCopy();

        if (v99)
        {
          v109 = v100[2];
          v63 = __OFADD__(v109, v99);
          v110 = v109 + v99;
          if (v63)
          {
            goto LABEL_72;
          }

          v100[2] = v110;
        }

LABEL_49:
        v2[4] = v100;
        swift_endAccess();
        v23 += 5;
        if (!--v20)
        {
          goto LABEL_63;
        }
      }
    }

    v32 = 0;
    v119 = v132 + 32;
    v33 = (v115 + 8);
    v34 = (v115 + 32);
    v118 = (v115 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v134 = v16;
LABEL_8:
    if (v32 < *(v132 + 16))
    {
      break;
    }

    __break(1u);
LABEL_65:
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
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
  }

  v36 = v2;
  v133 = v32;
  v37 = v119 + 24 * v32;
  v38 = *(v37 + 8);
  v137 = *v37;
  v39 = *(v37 + 16);
  (v126)(v23, v130, v16);
  v40 = *(v39 + 16);
  v139 = v38;
  v136 = v39;
  if (v40)
  {
    swift_bridgeObjectRetain_n();

    v41 = (v39 + 48);
    do
    {
      v42 = *(v41 - 2);
      v43 = *(v41 - 1);
      v44 = *v41;
      v41 += 3;

      sub_255EB35C8(v42, v43, v44, v23, v20);

      (*v33)(v23, v16);
      v45 = *v34;
      (*v34)(v23, v20, v16);
      --v40;
    }

    while (v40);
    v2 = v138;
    v46 = v139;
  }

  else
  {
    v45 = *v34;
    swift_bridgeObjectRetain_n();

    v46 = v38;
    v2 = v36;
  }

  v47 = v128;
  v16 = v137;
  *v128 = v137;
  *(v47 + 8) = v46;
  v48 = v129;
  v45(v47 + *(v129 + 20), v23, v134);
  v49 = (v47 + *(v48 + 24));
  *v49 = v16;
  v49[1] = v46;
  v49[2] = v136;
  swift_beginAccess();
  sub_255ECDA74(v47, v135, type metadata accessor for DataSlice);

  v50 = v2[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v141[0] = v2[2];
  v51 = v141[0];
  v2[2] = 0x8000000000000000;
  v53 = sub_255EACAD4(v16, v46);
  v54 = *(v51 + 16);
  v55 = (v52 & 1) == 0;
  v56 = v54 + v55;
  if (__OFADD__(v54, v55))
  {
    goto LABEL_65;
  }

  v57 = v52;
  if (*(v51 + 24) >= v56)
  {
    v16 = v134;
    if (isUniquelyReferenced_nonNull_native)
    {
      isUniquelyReferenced_nonNull_native = v141[0];
      if (v52)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_255EAD928();
      isUniquelyReferenced_nonNull_native = v141[0];
      if (v57)
      {
LABEL_6:
        sub_255ECDB40(v135, *(isUniquelyReferenced_nonNull_native + 56) + *(v125 + 72) * v53, type metadata accessor for DataSlice);
        goto LABEL_7;
      }
    }

LABEL_21:
    *(isUniquelyReferenced_nonNull_native + 8 * (v53 >> 6) + 64) |= 1 << v53;
    v60 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v53);
    v61 = v139;
    *v60 = v137;
    v60[1] = v61;
    sub_255ECDA74(v135, *(isUniquelyReferenced_nonNull_native + 56) + *(v125 + 72) * v53, type metadata accessor for DataSlice);
    v62 = *(isUniquelyReferenced_nonNull_native + 16);
    v63 = __OFADD__(v62, 1);
    v64 = v62 + 1;
    if (v63)
    {
      goto LABEL_70;
    }

    *(isUniquelyReferenced_nonNull_native + 16) = v64;

LABEL_7:
    v32 = v133 + 1;
    v35 = v2[2];
    v2[2] = isUniquelyReferenced_nonNull_native;

    swift_endAccess();

    if (v32 == v124)
    {
      goto LABEL_25;
    }

    goto LABEL_8;
  }

  sub_255EAD298(v56, isUniquelyReferenced_nonNull_native);
  v58 = sub_255EACAD4(v137, v139);
  v16 = v134;
  if ((v57 & 1) == (v59 & 1))
  {
    v53 = v58;
    isUniquelyReferenced_nonNull_native = v141[0];
    if (v57)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_75:
  result = sub_255ECF598();
  __break(1u);
  return result;
}