uint64_t sub_1CF3F7A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4E30, &qword_1CF9FB460);
  result = swift_allocObject();
  *(result + 48) = 1;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 120) = a2;
  *(result + 128) = a3;
  *(result + 136) = a4;
  *(result + 144) = a1;
  v9 = 270592;
  if ((a4 & 0x8000) != 0)
  {
    v9 = 2367744;
  }

  *(result + 88) = 0;
  *(result + 96) = v9;
  *(result + 104) = 0;
  *(result + 112) = 0;
  return result;
}

uint64_t sub_1CF3F7ADC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCB0, &unk_1CF9FAE60);
  result = swift_allocObject();
  *(result + 152) = a2;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 1;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 120) = a3;
  *(result + 128) = a4;
  *(result + 136) = a5;
  *(result + 144) = a1;
  v11 = 270592;
  if ((a5 & 0x8000) != 0)
  {
    v11 = 2367744;
  }

  *(result + 88) = 0;
  *(result + 96) = v11;
  *(result + 104) = 0;
  *(result + 112) = 0;
  return result;
}

uint64_t sub_1CF3F7B80(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v143 = v2;
  v203 = v1;
  v5 = v4;
  v7 = v6;
  v8 = v3;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  v9 = *(*(v138 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v138);
  v122 = (&v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v122 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v127 = (&v122 - v16);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v123 = (&v122 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v124 = (&v122 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v125 = (&v122 - v22);
  MEMORY[0x1EEE9AC00](v21);
  v129 = (&v122 - v23);
  v24 = v8[4];
  v140 = *(v8 + 153);
  LODWORD(v131) = *(v8 + 176);
  v25 = v8[33];
  v26 = v8[34];
  v128 = *(v8 + 384);
  memcpy(v166, v8, sizeof(v166));
  v132 = v7;
  v164 = v7;
  LODWORD(v139) = v5;
  v165 = v5;
  v27 = LOBYTE(v166[3]) == 255 || v25 == 0;
  v28 = !v27;
  v29 = 1;
  v135 = v28;
  if (!v27 && !v24)
  {
    v29 = v26 != 0;
  }

  v134 = v29;
  v30 = 0;
  v31 = v8[98];
  if (LOBYTE(v166[68]) != 255 && v31)
  {
    v30 = (v8[69] | v8[99]) == 0;
  }

  v130 = v30;
  v33 = LOBYTE(v166[68]) != 255 && v31 != 0;
  v133 = v33;
  v126 = *v8;
  v142 = *(v8 + 8);
  v34 = v8[134];
  v35 = *(v8 + 1080);
  memcpy(v163, v8 + 67, sizeof(v163));
  v36 = v163[31];
  v141 = v163[2];
  LODWORD(v37) = LOBYTE(v163[46]);
  v136 = BYTE1(v163[17]);
  v137 = LOBYTE(v163[20]);
  memcpy(v162, v8 + 67, sizeof(v162));
  if (v35 < 2)
  {
LABEL_126:
    result = sub_1CF9E7B68();
    __break(1u);
    return result;
  }

  if (v34 > 1)
  {
    if (v34 == 2 && (v142 & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_28;
  }

  if (v34)
  {
    if (v142)
    {
      sub_1CF095754(v160);
      memcpy(v200, v160, sizeof(v200));
      memcpy(v161, &v166[136], sizeof(v161));
      sub_1CF08B99C(v161);
      sub_1CEFCCBDC(v163, v147, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      v57 = v143;
      sub_1CF449E04(v162);
      if (v57)
      {
        goto LABEL_109;
      }

      sub_1CF47F390(v162);
      memcpy(v157, &v166[2], sizeof(v157));
      memcpy(v158, v162, sizeof(v158));
      v58 = v166[132];
      v37 = v166[133];
      memcpy(v159, &v166[136], sizeof(v159));
      memcpy(&v156[7], &v166[2], 0x208uLL);
      memcpy(v155, v162, sizeof(v155));
      memcpy(&v154[7], &v166[136], 0x208uLL);
      v191 = v126;
      v192 = v142;
      memcpy(v193, v156, sizeof(v193));
      memcpy(v194, v162, sizeof(v194));
      v195 = v166[132];
      v196 = v166[133];
      v197 = 1;
      v198 = 2;
      memcpy(v199, v154, sizeof(v199));
      sub_1CEFCCBDC(v157, v147, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      sub_1CEFCCBDC(v158, v147, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      sub_1CEFCCBDC(v159, v147, &unk_1EC4BFC20, &unk_1CFA0A290);
      v59 = sub_1CF396D20(&v191);
      if (v59)
      {
        v147[0] = v126;
        LOBYTE(v147[1]) = v142;
        memcpy(&v147[1] + 1, v156, 0x20FuLL);
        memcpy(v148, v155, sizeof(v148));
        v149 = v58;
        v150 = v37;
        v151 = 1;
        v152 = 2;
        memcpy(v153, v154, sizeof(v153));
        sub_1CEFCCC44(v147, &qword_1EC4BFC48, &qword_1CFA05388);
        goto LABEL_109;
      }

      (*(*v203 + 176))(v162, &v164, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
      v118 = v37;
      v119 = v58;
      v46 = LOBYTE(v157[20]);
      v128 = LOBYTE(v157[46]);
      v140 = BYTE1(v157[17]);
      v139 = v157[2];
      v25 = v157[31];
      LODWORD(v37) = LOBYTE(v158[46]);
      v136 = BYTE1(v158[17]);
      v137 = LOBYTE(v158[20]);
      v141 = v158[2];
      v132 = v158[31];
      v147[0] = v126;
      LOBYTE(v147[1]) = v142;
      memcpy(&v147[1] + 1, v156, 0x20FuLL);
      memcpy(v148, v155, sizeof(v148));
      v149 = v119;
      v150 = v118;
      v151 = 1;
      v152 = 2;
      memcpy(v153, v154, sizeof(v153));
      sub_1CEFCCC44(v147, &qword_1EC4BFC48, &qword_1CFA05388);
      v14 = 0;
      goto LABEL_111;
    }

    memcpy(v159, v8 + 2, sizeof(v159));
    memcpy(v160, v8 + 2, sizeof(v160));
    nullsub_1(v160);
    memcpy(v190, v160, sizeof(v190));
    memcpy(v161, &v166[136], sizeof(v161));
    sub_1CF08B99C(v161);
    sub_1CEFCCBDC(v163, v147, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    sub_1CEFCCBDC(v159, v147, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    v77 = v132;
    v78 = v143;
    sub_1CF449E04(v162);
    if (!v78)
    {
      sub_1CEFCCC44(v159, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      memcpy(v157, v162, sizeof(v157));
      memcpy(v158, v162, sizeof(v158));
      nullsub_1(v158);
      memcpy(v189, v158, sizeof(v189));
      memcpy(v188, &v166[2], sizeof(v188));
      v97 = v139;
      sub_1CEFCCBDC(v157, v147, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      sub_1CF44D124(v188, v189, v77, v97);
      v143 = 0;
      sub_1CEFCCC44(v157, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      memcpy(v145, &v166[2], sizeof(v145));
      memcpy(v146, v162, sizeof(v146));
      memcpy(v155, &v166[136], sizeof(v155));
      memcpy(&v156[7], &v166[2], 0x208uLL);
      memcpy(v144, v162, sizeof(v144));
      memcpy(&v154[7], &v166[136], 0x208uLL);
      v98 = v126;
      v179 = v126;
      v99 = v142;
      v180 = v142;
      memcpy(v181, v156, sizeof(v181));
      memcpy(v182, v162, sizeof(v182));
      v131 = v166[132];
      v183 = v166[132];
      v100 = v166[133];
      v184 = v166[133];
      v185 = 1;
      v186 = 2;
      memcpy(v187, v154, sizeof(v187));
      sub_1CEFCCBDC(v145, v147, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      sub_1CEFCCBDC(v146, v147, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      sub_1CEFCCBDC(v155, v147, &unk_1EC4BFC20, &unk_1CFA0A290);
      v101 = v143;
      v102 = sub_1CF396D20(&v179);
      v14 = v101;
      if (v101)
      {
        v147[0] = v98;
        LOBYTE(v147[1]) = v99;
        memcpy(&v147[1] + 1, v156, 0x20FuLL);
        memcpy(v148, v144, sizeof(v148));
        v149 = v131;
        v150 = v100;
        v151 = 1;
        goto LABEL_90;
      }

      v113 = v100;
      v114 = v99;
      v115 = v113;
      if (v102)
      {
        v147[0] = v98;
        LOBYTE(v147[1]) = v114;
        memcpy(&v147[1] + 1, v156, 0x20FuLL);
        memcpy(v148, v144, sizeof(v148));
        v149 = v131;
        v150 = v115;
        v151 = 1;
        goto LABEL_106;
      }

      (*(*v203 + 192))(v162, &v166[2], v98, &v164, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
      v46 = LOBYTE(v145[20]);
      v128 = LOBYTE(v145[46]);
      v140 = BYTE1(v145[17]);
      v139 = v145[2];
      v25 = v145[31];
      LODWORD(v37) = LOBYTE(v146[46]);
      v141 = v146[2];
      v136 = BYTE1(v146[17]);
      v137 = LOBYTE(v146[20]);
      v132 = v146[31];
      v147[0] = v98;
      LOBYTE(v147[1]) = v114;
      memcpy(&v147[1] + 1, v156, 0x20FuLL);
      memcpy(v148, v144, sizeof(v148));
      v149 = v131;
      v150 = v115;
      v151 = 1;
      goto LABEL_110;
    }

LABEL_63:
    sub_1CEFCCC44(v159, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    goto LABEL_109;
  }

  if (v142)
  {
LABEL_28:
    v132 = v163[31];
    v139 = v24;
    sub_1CEFCCBDC(v163, v147, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    v14 = v143;
    v36 = v138;
    v46 = v131;
    goto LABEL_29;
  }

  memcpy(v159, v8 + 2, sizeof(v159));
  memcpy(v160, v8 + 2, sizeof(v160));
  nullsub_1(v160);
  memcpy(v178, v160, sizeof(v178));
  memcpy(v161, &v166[136], sizeof(v161));
  sub_1CF08B99C(v161);
  sub_1CEFCCBDC(v163, v147, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  sub_1CEFCCBDC(v159, v147, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  v38 = v132;
  v39 = v143;
  sub_1CF449E04(v162);
  if (v39)
  {
    goto LABEL_63;
  }

  sub_1CEFCCC44(v159, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  memcpy(v157, v162, sizeof(v157));
  memcpy(v158, v162, sizeof(v158));
  nullsub_1(v158);
  memcpy(v177, v158, sizeof(v177));
  memcpy(v176, &v166[2], sizeof(v176));
  v40 = v139;
  sub_1CEFCCBDC(v157, v147, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  sub_1CF44D124(v176, v177, v38, v40);
  v143 = 0;
  sub_1CEFCCC44(v157, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  memcpy(v145, &v166[2], sizeof(v145));
  memcpy(v146, v162, sizeof(v146));
  memcpy(v155, &v166[136], sizeof(v155));
  memcpy(&v156[7], &v166[2], 0x208uLL);
  memcpy(v144, v162, sizeof(v144));
  memcpy(&v154[7], &v166[136], 0x208uLL);
  v41 = v126;
  v167 = v126;
  v42 = v142;
  v168 = v142;
  memcpy(v169, v156, sizeof(v169));
  memcpy(v170, v162, sizeof(v170));
  v131 = v166[132];
  v171 = v166[132];
  v43 = v166[133];
  v172 = v166[133];
  v173 = 0;
  v174 = 2;
  memcpy(v175, v154, sizeof(v175));
  sub_1CEFCCBDC(v145, v147, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  sub_1CEFCCBDC(v146, v147, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  sub_1CEFCCBDC(v155, v147, &unk_1EC4BFC20, &unk_1CFA0A290);
  v44 = v143;
  v45 = sub_1CF396D20(&v167);
  v14 = v44;
  if (v44)
  {
    v147[0] = v41;
    LOBYTE(v147[1]) = v42;
    memcpy(&v147[1] + 1, v156, 0x20FuLL);
    memcpy(v148, v144, sizeof(v148));
    v149 = v131;
    v150 = v43;
    v151 = 0;
LABEL_90:
    v152 = 2;
LABEL_107:
    memcpy(v153, v154, sizeof(v153));
    sub_1CEFCCC44(v147, &qword_1EC4BFC48, &qword_1CFA05388);
    goto LABEL_109;
  }

  v110 = v42;
  v111 = v131;
  v112 = v43;
  if (v45)
  {
    v147[0] = v126;
    LOBYTE(v147[1]) = v42;
    memcpy(&v147[1] + 1, v156, 0x20FuLL);
    memcpy(v148, v144, sizeof(v148));
    v149 = v131;
    v150 = v43;
    v151 = 0;
LABEL_106:
    v152 = 2;
    goto LABEL_107;
  }

  v116 = v126;
  (*(*v203 + 192))(v162, &v166[2], v126, &v164, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
  v117 = v110;
  v121 = v111;
  v46 = LOBYTE(v145[20]);
  v128 = LOBYTE(v145[46]);
  v140 = BYTE1(v145[17]);
  v139 = v145[2];
  v25 = v145[31];
  LODWORD(v37) = LOBYTE(v146[46]);
  v141 = v146[2];
  v136 = BYTE1(v146[17]);
  v137 = LOBYTE(v146[20]);
  v132 = v146[31];
  v147[0] = v116;
  LOBYTE(v147[1]) = v117;
  memcpy(&v147[1] + 1, v156, 0x20FuLL);
  memcpy(v148, v144, sizeof(v148));
  v149 = v121;
  v150 = v112;
  v151 = 0;
LABEL_110:
  v152 = 2;
  memcpy(v153, v154, sizeof(v153));
  sub_1CEFCCC44(v147, &qword_1EC4BFC48, &qword_1CFA05388);
LABEL_111:
  v36 = v138;
  while (1)
  {
LABEL_29:
    if ((v137 != 2) == (v46 == 2) || (v37 != 2) == (v128 == 2))
    {
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v48 = Strong;
        memcpy(v147, &v166[67], 0x208uLL);
        v49 = v129;
        memcpy(v129, &v166[67], 0x208uLL);
        swift_storeEnumTagMultiPayload();
        v50 = *(*v48 + 312);
        sub_1CEFCCBDC(v147, v156, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
        v50(v49);

        sub_1CEFCCC44(v49, &qword_1EC4BE710, &qword_1CF9FE5A8);
      }
    }

    if (v134 || (v135 & 1) == 0 || (v142 & 1) != 0)
    {
      if (v130 || v133)
      {
        v51 = swift_weakLoadStrong();
        if (!v51)
        {
          goto LABEL_76;
        }

        v52 = v162[1];
        if (LOBYTE(v162[1]) == 255)
        {
LABEL_114:
          __break(1u);
        }

        else
        {
          v37 = v127;
          *v127 = v162[0];
          *(v37 + 8) = v52;
          v53 = v132;
          if (v132)
          {
            v54 = v51;
            *(v37 + 16) = v132;
            swift_storeEnumTagMultiPayload();
            v55 = *(*v54 + 312);
            v56 = v53;
            v55(v37);
            goto LABEL_75;
          }
        }

        __break(1u);
        goto LABEL_116;
      }

      if ((v135 & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    else if (v133)
    {
      goto LABEL_76;
    }

    if (v140 != 6)
    {
      v60 = swift_weakLoadStrong();
      if (v60)
      {
        v61 = v166[3];
        if (LOBYTE(v166[3]) == 255)
        {
          goto LABEL_118;
        }

        v62 = v60;
        v63 = v125;
        *v125 = v166[2];
        *(v63 + 8) = v61;
        *(v63 + 9) = 0;
        if (!v25)
        {
          goto LABEL_119;
        }

        v63[2] = v25;
        *(v63 + 25) = 1;
        *(v63 + 26) = v140;
        *(v63 + 27) = 6;
        v64 = v63;
        swift_storeEnumTagMultiPayload();
        v65 = *(*v62 + 312);
        v66 = v25;
        v65(v64);

        sub_1CEFCCC44(v64, &qword_1EC4BE710, &qword_1CF9FE5A8);
      }
    }

    v67 = swift_weakLoadStrong();
    if (!v67)
    {
      goto LABEL_113;
    }

    v68 = (*(*v67 + 152))(v67);

    v69 = swift_weakLoadStrong();
    v70 = v69;
    if ((v68 & 0x4000) == 0 || (v141 & 0x80) == 0)
    {
      break;
    }

    if (!v69)
    {
      goto LABEL_76;
    }

    v71 = v166[3];
    if (LOBYTE(v166[3]) == 255)
    {
      goto LABEL_120;
    }

    v37 = v124;
    *v124 = v166[2];
    *(v37 + 8) = v71;
    if (v25)
    {
      goto LABEL_74;
    }

    __break(1u);
LABEL_58:
    v72 = v162[1];
    if (LOBYTE(v162[1]) != 255 && v36 && (v73 = swift_weakLoadStrong()) != 0)
    {
      v74 = v73;
      *v14 = v162[0];
      v14[8] = v72;
      *(v14 + 2) = v36;
      swift_storeEnumTagMultiPayload();
      v75 = *(*v74 + 312);
      sub_1CEFCCBDC(v163, v147, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      v76 = v36;
      v75(v14);

      sub_1CEFCCC44(v14, &qword_1EC4BE710, &qword_1CF9FE5A8);
    }

    else
    {
      sub_1CEFCCBDC(v163, v147, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    }

    sub_1CF095754(v147);
    memcpy(v202, v147, 0x208uLL);
    memcpy(v201, &v166[2], sizeof(v201));
    v95 = v203;
    v96 = v143;
    sub_1CF44D124(v201, v202, v132, v139);
    if (v96)
    {
      goto LABEL_109;
    }

    (*(*v95 + 200))(&v166[2], v126, 1, &v164, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
    v14 = 0;
    v132 = v36;
    v46 = LOBYTE(v201[20]);
    v139 = v201[2];
    v25 = v201[31];
    v128 = LOBYTE(v201[46]);
    v140 = BYTE1(v201[17]);
    if (BYTE1(v201[17]) == 6)
    {
      v140 = 6;
      v36 = v138;
    }

    else
    {
      v103 = v166[3];
      v36 = v138;
      if (LOBYTE(v166[3]) != 255)
      {
        v143 = v166[2];
        v104 = swift_weakLoadStrong();
        if (!v104)
        {
          goto LABEL_125;
        }

        v105 = v104;
        v106 = v122;
        *v122 = v143;
        *(v106 + 8) = v103;
        *(v106 + 9) = 0;
        if (v25)
        {
          v107 = 256;
        }

        else
        {
          v107 = -256;
        }

        *(v106 + 16) = v25;
        *(v106 + 24) = v107;
        *(v106 + 26) = v140;
        *(v106 + 27) = 6;
        swift_storeEnumTagMultiPayload();
        v143 = (*v105 + 312);
        v108 = *v143;
        v109 = v25;
        v108(v106);

        sub_1CEFCCC44(v106, &qword_1EC4BE710, &qword_1CF9FE5A8);
      }
    }
  }

  if (!v69)
  {
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
    goto LABEL_122;
  }

  v147[0] = v166[2];
  LOBYTE(v147[1]) = v166[3];
  if (LOBYTE(v166[3]) == 255)
  {
    goto LABEL_117;
  }

  v79 = (*(*v69 + 560))(v147);

  if (v79)
  {
    goto LABEL_70;
  }

  v80 = swift_weakLoadStrong();
  if (!v80)
  {
    goto LABEL_121;
  }

  v147[0] = v25;
  if (!v25)
  {
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v81 = *(*v80 + 568);
  v82 = v25;
  v83 = v81(v147);

  if ((v83 & 1) == 0)
  {
    goto LABEL_76;
  }

LABEL_70:
  v84 = swift_weakLoadStrong();
  if (!v84)
  {
    goto LABEL_76;
  }

  v85 = v166[3];
  if (LOBYTE(v166[3]) == 255)
  {
    goto LABEL_123;
  }

  v37 = v123;
  *v123 = v166[2];
  *(v37 + 8) = v85;
  if (!v25)
  {
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v70 = v84;
LABEL_74:
  *(v37 + 16) = v25;
  swift_storeEnumTagMultiPayload();
  v86 = *(*v70 + 312);
  v87 = v25;
  v86(v37);
LABEL_75:

  sub_1CEFCCC44(v37, &qword_1EC4BE710, &qword_1CF9FE5A8);
LABEL_76:
  if (((v141 >> 4) & 1) == ((v139 & 0x10) == 0))
  {
    v88 = v162[1];
    if (LOBYTE(v162[1]) != 255)
    {
      v89 = v162[0];
      v90 = swift_weakLoadStrong();
      if (v90)
      {
        v91 = v90;
        v92 = v141 & 0x10;
        v93 = v129;
        *v129 = v89;
        v93[8] = v88;
        v93[9] = 0;
        v93[10] = v92 >> 4;
        swift_storeEnumTagMultiPayload();
        (*(*v91 + 312))(v93);

        sub_1CEFCCC44(v93, &qword_1EC4BE710, &qword_1CF9FE5A8);
      }
    }
  }

  if (v136 != 6 && v140 == 6)
  {
    v94 = swift_weakLoadStrong();
    if (v94)
    {
      (*(*v94 + 328))(&v164, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

      goto LABEL_109;
    }

    __break(1u);
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

LABEL_109:
  memcpy(v147, v162, 0x208uLL);
  return sub_1CEFCCC44(v147, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
}

uint64_t sub_1CF3F9764(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v65) = a2;
  v9 = sub_1CF9E5CF8();
  v10 = *(v9 - 8);
  v63 = v9;
  v64 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v56 - v20;
  v77 = a1;
  v22 = a5;
  v78 = v65;
  v75 = a4;
  v76 = a5;
  v23 = a3;
  v24 = *(a3 + 32);
  v25 = v66;
  result = (*(*v24 + 240))(&v77, 1, &v75, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (!v25)
  {
    v60 = a4;
    v61 = v21;
    LODWORD(v66) = v22;
    v65 = v23;
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      return sub_1CEFCCC44(v16, &qword_1EC4C1B40, &unk_1CF9FCB70);
    }

    else
    {
      v27 = v61;
      sub_1CEFE55D0(v16, v61, &unk_1EC4BE360, &qword_1CF9FE650);
      v28 = *(v27 + 136);
      v72[0] = *(v27 + 128);
      v72[1] = v28;
      v69[0] = 0;
      LOBYTE(v69[1]) = -1;
      v29 = *(*v24 + 256);

      v30 = v29(&v77, v72, v69, &v75, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

      v31 = *(v30 + 16);
      if (v31)
      {
        v32 = 0;
        ++v64;
        v33 = (v30 + 40);
        v34 = v60;
        v35 = v66;
        while (v32 < v31)
        {
          v38 = *(v33 - 1);
          v39 = *v33;
          v40 = *(v65 + 16);
          v73 = v34;
          v74 = v35;
          v70 = v38;
          v71 = v39;
          (*(*v40 + 168))(v72, &v70, v35 == 2, &v73, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          sub_1CEFD0994(v70, v71, SHIBYTE(v71));
          memcpy(v69, v72, sizeof(v69));
          if (sub_1CF08B99C(v69) == 1)
          {
            memcpy(v68, v72, sizeof(v68));
            v36 = &unk_1EC4BFD20;
            v37 = &unk_1CFA05440;
          }

          else
          {
            memcpy(v68, v72, 0x208uLL);
            if (v68[3] && !v68[2] && !LOBYTE(v68[20]) && (v68[18] & 0x400) != 0)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DE0, &unk_1CFA05398);
              v41 = swift_allocObject();
              v42 = MEMORY[0x1E69E7CC0];
              v41[4] = MEMORY[0x1E69E7CC0];
              v43 = v41 + 4;
              v41[2] = v42;
              v41[3] = v42;
              v41[5] = v42;
              v41[6] = 0;
              v59 = v68[59];
              v57 = v41;
              v58 = v68[60];
              v67 = 0;
              swift_beginAccess();
              v44 = sub_1CF1F8144(0, 1, 1, v42);
              v46 = v44[2];
              v45 = v44[3];
              v47 = v46 + 1;
              if (v46 >= v45 >> 1)
              {
                v56 = v46 + 1;
                v55 = sub_1CF1F8144((v45 > 1), v46 + 1, 1, v44);
                v47 = v56;
                v44 = v55;
              }

              v44[2] = v47;
              v48 = &v44[15 * v46];
              v48[4] = v38;
              *(v48 + 40) = v39;
              *(v48 + 41) = 0;
              v49 = v58;
              v50 = v59;
              v48[6] = 0;
              v48[7] = v50;
              v48[8] = v49;
              *(v48 + 73) = 2560;
              *v43 = v44;
              swift_endAccess();
              v51 = v62;
              sub_1CF9E5CE8();
              sub_1CF9E5C98();
              v53 = v52;
              result = (*v64)(v51, v63);
              v54 = v53 * 1000000000.0;
              if (COERCE__INT64(fabs(v53 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_24;
              }

              v34 = v60;
              if (v54 <= -9.22337204e18)
              {
                goto LABEL_25;
              }

              if (v54 >= 9.22337204e18)
              {
                goto LABEL_26;
              }

              sub_1CF7F6588(v57, v54, v60, v66);

              swift_setDeallocating();
              swift_deallocClassInstance();
            }

            v36 = &qword_1EC4BFBC0;
            v37 = &unk_1CF9FCAC0;
          }

          result = sub_1CEFCCC44(v68, v36, v37);
          ++v32;
          v31 = *(v30 + 16);
          v33 += 16;
          v35 = v66;
          if (v32 == v31)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
      }

      else
      {
LABEL_21:
        sub_1CEFCCC44(v61, &unk_1EC4BE360, &qword_1CF9FE650);
      }
    }
  }

  return result;
}

void sub_1CF3F9E7C(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v5 = v3;
  if (a2)
  {
    sub_1CF44C000();
    if (v4)
    {
      return;
    }
  }

  if (*(v3 + 120) == 2)
  {
    goto LABEL_15;
  }

  v8 = *(v3 + 96);
  if (v8 == 1)
  {
    goto LABEL_15;
  }

  if (!*v3)
  {
    if (*(v3 + 224))
    {
      goto LABEL_39;
    }

    goto LABEL_15;
  }

  if (*(*(v3 + 464) + 16))
  {
    goto LABEL_15;
  }

  v9 = *(v3 + 448);
  if ((v9 & 3) != 0)
  {
    goto LABEL_15;
  }

  v10 = *(v3 + 8);
  v11 = *(v3 + 216);
  v12 = *(v3 + 224);
  if ((v10 & 0x55) != 0)
  {
    if ((v10 & 0x51) != 0)
    {
      if ((*(v3 + 8) & 0x41) == 0x40)
      {
        if (qword_1EDEABDE0 != -1)
        {
          swift_once();
        }

        v13 = qword_1EDEABDE8;
        *a3 = 12;
        a3[1] = v13;
        a3[2] = 1310976;
        return;
      }

      if ((v12 & 0x51) != 0)
      {
        goto LABEL_39;
      }

      if ((v10 & 0x10) == 0)
      {
        if (v11 != 255)
        {
          if ((v10 & 2) == 0)
          {
            if (qword_1EDEABDE0 != -1)
            {
              swift_once();
            }

            v30 = qword_1EDEABDE8;
            v31 = sub_1CEFF8C8C(&unk_1F4BED098);
            *a3 = 2;
            a3[1] = v30;
            goto LABEL_61;
          }

          if (qword_1EDEABDE0 != -1)
          {
            swift_once();
          }

          v32 = qword_1EDEABDE8;
          v41 = unk_1F4BED080;
          if ((unk_1F4BED080 & ~qword_1F4BED078) == 0)
          {
            v41 = 0;
          }

          v42 = v41 | qword_1F4BED078;
          v43 = qword_1F4BED088;
          v33 = unk_1F4BED090;
          if ((qword_1F4BED088 & ~v42) == 0)
          {
            v43 = 0;
          }

          v34 = v43 | v42;
          goto LABEL_92;
        }

LABEL_39:
        if (qword_1EDEABDE0 != -1)
        {
          swift_once();
        }

        v27 = qword_1EDEABDE8;
        *a3 = 2;
        a3[1] = v27;
        a3[2] = 0;
        return;
      }

      if (v11 != 255)
      {
        if (qword_1EDEABDE0 != -1)
        {
          swift_once();
        }

        v32 = qword_1EDEABDE8;
        v34 = qword_1F4BED048;
        v33 = unk_1F4BED050;
LABEL_92:
        if ((v33 & ~v34) == 0)
        {
          v33 = 0;
        }

        *a3 = 2;
        a3[1] = v32;
        a3[2] = v33 | v34;
        return;
      }
    }

LABEL_15:
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 89;
    return;
  }

  v14 = *(v3 + 16);
  v15 = *(v3 + 24);
  v16 = *(v3 + 97);
  v17 = *(v3 + 98);
  v18 = *(v3 + 152);
  v19 = *(v3 + 200);
  v20 = *(v3 + 240);
  v21 = *(v3 + 344);
  v22 = *(v3 + 345);
  if (v22 == 4 || v16 == 3)
  {
    v23 = 0;
    if (*(v3 + 240))
    {
      v24 = 0;
    }

    else
    {
      v24 = v22 == 4;
    }

    v25 = v24;
    if (v8 == 2 && !v25)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v22 == 6)
    {
      v23 = *(v3 + 240);
    }

    else
    {
      v23 = 5;
    }

    if (v16 != 6)
    {
      v23 = 5;
    }
  }

  v26 = 1843460;
  if ((v14 & 0x10000000000) != 0)
  {
    v28 = *(v3 + 456);
    if (v28 == 4)
    {
      __break(1u);
LABEL_191:
      __break(1u);
      goto LABEL_192;
    }

    if (!*(v3 + 96) && v28 == 2)
    {
      goto LABEL_45;
    }
  }

  if (v23 <= 2)
  {
    if (!v23)
    {
LABEL_45:
      v29 = 24;
      goto LABEL_104;
    }

    if (v23 == 1)
    {
      goto LABEL_67;
    }

    goto LABEL_48;
  }

  if (v23 == 3)
  {
    if (!(*(v3 + 232) & 8 | *(v3 + 224) & 0x51))
    {
LABEL_67:
      v35 = *(v3 + 456);
      if ((v14 & 0x10000) != 0)
      {
        if (v35 != 1)
        {
          if (v35 != 4)
          {
            *a3 = xmmword_1CFA00360;
            a3[2] = 1843456;
            return;
          }

          goto LABEL_193;
        }
      }

      else if (v35 != 1)
      {
        if (v35 == 4)
        {
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
          goto LABEL_195;
        }

        v26 = 1876224;
        v29 = 16;
        goto LABEL_104;
      }

      v26 = 1876244;
      v29 = 16;
LABEL_104:
      if (v11 != 255 && (v12 & 1) == 0)
      {
        if ((v29 & 2) != 0)
        {
          v26 |= 0x402uLL;
        }

        v45 = v26 | ((v29 & 1) << 10);
        v46 = (v29 >> 4) & 1;
        if (v14 != 0x10000)
        {
          LODWORD(v46) = 1;
        }

        if (!v46)
        {
          v45 |= 0x1000uLL;
        }

        v47 = v45 | 0x4000;
        if (v15)
        {
          v47 = v45;
        }

        if ((v14 & 0x100000000000) != 0)
        {
          v48 = v47;
        }

        else
        {
          v48 = v45;
        }

        if ((v9 & 0xC) == 4 || (v19 & 4) != 0)
        {
          if ((v19 & 0x30) == 0)
          {
            if (qword_1EDEABDE0 != -1)
            {
              swift_once();
            }

            v69 = v29 & 0xFFFFDFFFFFFEF6E7 & (qword_1EDEABDE8 | 0x6409000000C000);
            if (!v69)
            {
              goto LABEL_15;
            }

            goto LABEL_185;
          }

          v85 = v9 & 0xC;
        }

        else
        {
          v85 = v9 & 0xC;
          if (v85 == 12)
          {
            v49 = v14;
            v50 = v18;
            v51 = v22;
            v91 = v48;
            v52 = v20;
            sub_1CEFF5464(&unk_1F4BECFB0, __src);
            v20 = v52;
            v48 = v91;
            v22 = v51;
            v18 = v50;
            v14 = v49;
            v29 |= __src[0];
          }
        }

        if ((v29 & 0x200000010918) != 0)
        {
          v88 = v20;
          v59 = v22;
          v60 = v18;
          v61 = v14;
          v91 = v4;
          sub_1CF7F6024(__dst);
          if (LOBYTE(__dst[1]) == 255 || !__dst[31] || (__dst[24] & 0xF000000000000000) == 0xB000000000000000)
          {
            memcpy(__src, __dst, 0x208uLL);
            sub_1CEFCCC44(__src, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
          }

          else
          {
            v62 = LOBYTE(__dst[43]);
            memcpy(__src, __dst, 0x208uLL);
            sub_1CEFCCC44(__src, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
            if (!v62 && v88)
            {
              if (qword_1EDEABDE0 != -1)
              {
                swift_once();
              }

              v63 = v29 & 0xFFFFDFFFFFFEF6E7 & (qword_1EDEABDE8 | 0x6409000000C000);
              if (v63)
              {
                *a3 = 1;
                a3[1] = v63;
                a3[2] = v48;
              }

              else
              {
                a3[1] = 0;
                a3[2] = 0;
                *a3 = 89;
              }

              return;
            }
          }

          v14 = v61;
          v18 = v60;
          v22 = v59;
        }

        if ((v29 & 8) == 0)
        {
          goto LABEL_149;
        }

        v64 = v48 & 0xFFFFFFFFFFEFFFFFLL;
        if (v8 > 2)
        {
          if (v8 != 3)
          {
            goto LABEL_153;
          }
        }

        else if (v8)
        {
LABEL_153:
          v65 = *(v5 + 456);
          if (v65 == 1)
          {
            v70 = v18 >> 60 != 11;
LABEL_182:
            if (!v70 || v85 != 12)
            {
LABEL_149:
              *a3 = 1;
              if ((v29 & 0x10) != 0)
              {
                a3[1] = 16;
              }

              else
              {
                a3[1] = v14;
              }

              goto LABEL_186;
            }

            v73 = v14;
            sub_1CEFF5464(&unk_1F4BECED0, __src);
            v69 = __src[0] | v73;
LABEL_185:
            *a3 = 1;
            a3[1] = v69;
LABEL_186:
            a3[2] = v48;
            return;
          }

          if (v65 != 4)
          {
            if (v18 >> 60 == 11)
            {
              sub_1CEFF5464(&unk_1F4BECF00, __src);
              v66 = __src[0] & v29;
              *a3 = 23;
              a3[1] = v66;
              a3[2] = v64;
              return;
            }

            v70 = 1;
            goto LABEL_182;
          }

          goto LABEL_194;
        }

        if (v22 == 3)
        {
          goto LABEL_15;
        }

        v67 = *(v5 + 456);
        if (v67 == 1)
        {
          v74 = sub_1CEFF8C8C(&unk_1F4BECF40);
          *a3 = 6;
          a3[1] = v29 & 0x10;
          a3[2] = v74;
          return;
        }

        if (v67 != 4)
        {
          sub_1CEFF5464(&unk_1F4BECF80, __src);
          v68 = __src[0] & v29;
          *a3 = 23;
          a3[1] = v68;
          a3[2] = v64;
          return;
        }

LABEL_195:
        __break(1u);
        return;
      }

      if (v11 != 255 && (v14 & 8) == 0 && (v12 & 1) != 0)
      {
        v81 = v16;
        v83 = v15;
        v53 = *(*a1 + 152);
        v91 = v4;
        v54 = v14;
        v86 = v18;
        v55 = v21;
        v79 = v17;
        v56 = v53(v19);
        v17 = v79;
        v16 = v81;
        v15 = v83;
        v18 = v86;
        if ((v29 & 2) == 0)
        {
          goto LABEL_15;
        }

        if ((v12 & 0x80) == 0)
        {
          goto LABEL_15;
        }

        v21 = v55;
        v14 = v54;
        if ((v56 & 0x4000) == 0)
        {
          goto LABEL_15;
        }
      }

      if (v16 == 5)
      {
        goto LABEL_15;
      }

      v57 = *(v5 + 456);
      if (v57 == 1)
      {
        if (!v14 && v16 != 6 && v11 != 255)
        {
          goto LABEL_15;
        }

        goto LABEL_180;
      }

      if (v57 != 4)
      {
        if ((v8 - 3) < 2)
        {
          goto LABEL_15;
        }

        if (v8)
        {
          if (v16 || (v17 & 1) == 0)
          {
            if (v11 != 255 && (v21 | 4) == 4)
            {
              goto LABEL_15;
            }

            if (v18 >> 60 == 11)
            {
              if (!v15)
              {
                a3[1] = 0;
                a3[2] = 0;
                *a3 = 89;
                return;
              }

              v31 = sub_1CEFF8C8C(&unk_1F4BECE40);
              *a3 = xmmword_1CFA04E90;
LABEL_61:
              a3[2] = v31;
              return;
            }
          }
        }

        else if (v57 == 2)
        {
          v58 = sub_1CEFF8C8C(&unk_1F4BECE88);
          *a3 = xmmword_1CFA04E90;
          a3[2] = v58;
          return;
        }

LABEL_180:
        v71 = v14;
        v72 = sub_1CEFF8C8C(&unk_1F4BECDF8);
        *a3 = 0;
        a3[1] = v71;
        a3[2] = v72;
        return;
      }

      goto LABEL_191;
    }

    v26 = 1843456;
    if (v14)
    {
LABEL_101:
      v29 = v14;
      goto LABEL_104;
    }

LABEL_83:
    if ((~v9 & 0xC) != 0)
    {
      goto LABEL_15;
    }

    v29 = 0;
    goto LABEL_104;
  }

  if (v23 == 5)
  {
LABEL_48:
    if (v8 == 4)
    {
      goto LABEL_99;
    }

    if (!*(v3 + 96))
    {
      v75 = *(v3 + 200);
      v78 = *(v3 + 98);
      v80 = *(v3 + 97);
      v76 = *(v3 + 344);
      v77 = *(v3 + 345);
      v82 = *(v3 + 24);
      v87 = *(v3 + 240);
      v84 = *(v3 + 152);
      v91 = *(v3 + 16);
      sub_1CF7F6024(__src);
      if (LOBYTE(__src[1]) == 255 || !__src[31] || __src[24] >> 60 == 11)
      {
        memcpy(__dst, __src, sizeof(__dst));
        sub_1CEFCCC44(__dst, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
LABEL_54:
        v14 = v91;
        v18 = v84;
        v21 = v76;
        v22 = v77;
        v20 = v87;
        v16 = v80;
        v15 = v82;
        v17 = v78;
        v19 = v75;
LABEL_99:
        if ((v14 & 8) != 0)
        {
          v29 = v14 & 0xFFFFFFFFFFFFFFF7;
          if ((v14 & 0xFFFFFFFFFFFFFFF7) == 0)
          {
            *a3 = 1;
            a3[1] = v14;
            a3[2] = 794880;
            return;
          }

          v26 = 1876224;
          goto LABEL_104;
        }

LABEL_100:
        v26 = 1876224;
        if (v14)
        {
          goto LABEL_101;
        }

        goto LABEL_83;
      }

      v44 = LOBYTE(__src[43]);
      memcpy(__dst, __src, sizeof(__dst));
      sub_1CEFCCC44(__dst, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      if (v44)
      {
        goto LABEL_54;
      }

      v14 = v91;
      v18 = v84;
      v21 = v76;
      v22 = v77;
      v20 = v87;
      v16 = v80;
      v15 = v82;
      v17 = v78;
      v19 = v75;
    }

    if (v21 && v21 != 4)
    {
      goto LABEL_100;
    }

    goto LABEL_99;
  }

  v36 = unk_1F4BED010;
  if ((unk_1F4BED010 & ~qword_1F4BED008) == 0)
  {
    v36 = 0;
  }

  v37 = v36 | qword_1F4BED008;
  v39 = qword_1F4BED018;
  v38 = unk_1F4BED020;
  if ((qword_1F4BED018 & ~v37) == 0)
  {
    v39 = 0;
  }

  v40 = v39 | v37;
  if ((unk_1F4BED020 & ~v40) == 0)
  {
    v38 = 0;
  }

  *a3 = xmmword_1CFA04E80;
  a3[2] = v38 | v40;
}

void sub_1CF3FA99C(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v5 = v3;
  if (a2)
  {
    sub_1CF44C2CC();
    if (v4)
    {
      return;
    }
  }

  if (*(v3 + 160) == 2)
  {
    goto LABEL_15;
  }

  v8 = *(v3 + 136);
  if (v8 == 1)
  {
    goto LABEL_15;
  }

  if (*(v3 + 8) == 255)
  {
    if (*(v3 + 256))
    {
      goto LABEL_39;
    }

    goto LABEL_15;
  }

  if (*(*(v3 + 464) + 16))
  {
    goto LABEL_15;
  }

  v9 = *(v3 + 448);
  if ((v9 & 3) != 0)
  {
    goto LABEL_15;
  }

  v10 = *(v3 + 16);
  v12 = *(v3 + 248);
  v11 = *(v3 + 256);
  if ((v10 & 0x55) != 0)
  {
    if ((v10 & 0x51) != 0)
    {
      if ((*(v3 + 16) & 0x41) == 0x40)
      {
        if (qword_1EDEABDE0 != -1)
        {
          swift_once();
        }

        v13 = qword_1EDEABDE8;
        *a3 = 12;
        a3[1] = v13;
        a3[2] = 1310976;
        return;
      }

      if ((v11 & 0x51) != 0)
      {
        goto LABEL_39;
      }

      if ((v10 & 0x10) == 0)
      {
        if (v12)
        {
          if ((v10 & 2) == 0)
          {
            if (qword_1EDEABDE0 != -1)
            {
              swift_once();
            }

            v30 = qword_1EDEABDE8;
            v31 = sub_1CEFF8C8C(&unk_1F4BECDB8);
            *a3 = 2;
            a3[1] = v30;
            goto LABEL_61;
          }

          if (qword_1EDEABDE0 != -1)
          {
            swift_once();
          }

          v32 = qword_1EDEABDE8;
          v41 = unk_1F4BECDA0;
          if ((unk_1F4BECDA0 & ~qword_1F4BECD98) == 0)
          {
            v41 = 0;
          }

          v42 = v41 | qword_1F4BECD98;
          v43 = qword_1F4BECDA8;
          v33 = unk_1F4BECDB0;
          if ((qword_1F4BECDA8 & ~v42) == 0)
          {
            v43 = 0;
          }

          v34 = v43 | v42;
          goto LABEL_92;
        }

LABEL_39:
        if (qword_1EDEABDE0 != -1)
        {
          swift_once();
        }

        v27 = qword_1EDEABDE8;
        *a3 = 2;
        a3[1] = v27;
        a3[2] = 0;
        return;
      }

      if (v12)
      {
        if (qword_1EDEABDE0 != -1)
        {
          swift_once();
        }

        v32 = qword_1EDEABDE8;
        v34 = qword_1F4BECD68;
        v33 = unk_1F4BECD70;
LABEL_92:
        if ((v33 & ~v34) == 0)
        {
          v33 = 0;
        }

        *a3 = 2;
        a3[1] = v32;
        a3[2] = v33 | v34;
        return;
      }
    }

LABEL_15:
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 89;
    return;
  }

  v14 = *(v3 + 24);
  v15 = *(v3 + 32);
  v16 = *(v3 + 137);
  v17 = *(v3 + 138);
  v18 = *(v3 + 192);
  v19 = *(v3 + 240);
  v20 = *(v3 + 272);
  v21 = *(v3 + 344);
  v22 = *(v3 + 345);
  if (v22 == 4 || v16 == 3)
  {
    v23 = 0;
    if (*(v3 + 272))
    {
      v24 = 0;
    }

    else
    {
      v24 = v22 == 4;
    }

    v25 = v24;
    if (v8 == 2 && !v25)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v22 == 6)
    {
      v23 = *(v3 + 272);
    }

    else
    {
      v23 = 5;
    }

    if (v16 != 6)
    {
      v23 = 5;
    }
  }

  v26 = 1843460;
  if ((v14 & 0x10000000000) != 0)
  {
    v28 = *(v3 + 456);
    if (v28 == 4)
    {
      __break(1u);
LABEL_190:
      __break(1u);
      goto LABEL_191;
    }

    if (!*(v3 + 136) && v28 == 2)
    {
      goto LABEL_45;
    }
  }

  if (v23 <= 2)
  {
    if (!v23)
    {
LABEL_45:
      v29 = 24;
      goto LABEL_104;
    }

    if (v23 == 1)
    {
      goto LABEL_67;
    }

    goto LABEL_48;
  }

  if (v23 == 3)
  {
    if (!(*(v3 + 264) & 8 | *(v3 + 256) & 0x51))
    {
LABEL_67:
      v35 = *(v3 + 456);
      if ((v14 & 0x10000) != 0)
      {
        if (v35 != 1)
        {
          if (v35 != 4)
          {
            *a3 = xmmword_1CFA00360;
            a3[2] = 1843456;
            return;
          }

          goto LABEL_192;
        }
      }

      else if (v35 != 1)
      {
        if (v35 == 4)
        {
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
          goto LABEL_194;
        }

        v26 = 1876224;
        v29 = 16;
        goto LABEL_104;
      }

      v26 = 1876244;
      v29 = 16;
LABEL_104:
      if (v12 && (v11 & 1) == 0)
      {
        if ((v29 & 2) != 0)
        {
          v26 |= 0x402uLL;
        }

        v45 = v26 | ((v29 & 1) << 10);
        v46 = (v29 >> 4) & 1;
        if (v14 != 0x10000)
        {
          LODWORD(v46) = 1;
        }

        if (!v46)
        {
          v45 |= 0x1000uLL;
        }

        v47 = v45 | 0x4000;
        if (v15)
        {
          v47 = v45;
        }

        if ((v14 & 0x100000000000) != 0)
        {
          v48 = v47;
        }

        else
        {
          v48 = v45;
        }

        if ((v9 & 0xC) == 4 || (v19 & 4) != 0)
        {
          if ((v19 & 0x30) == 0)
          {
            if (qword_1EDEABDE0 != -1)
            {
              swift_once();
            }

            v71 = v29 & 0xFFFFDFFFFFFEF6E7 & (qword_1EDEABDE8 | 0x6409000000C000);
            if (!v71)
            {
              goto LABEL_15;
            }

            goto LABEL_184;
          }

          v87 = v9 & 0xC;
        }

        else
        {
          v87 = v9 & 0xC;
          if (v87 == 12)
          {
            v49 = v14;
            v50 = v18;
            v51 = v22;
            v91 = v48;
            v52 = v20;
            sub_1CEFF5464(&unk_1F4BECCD0, __src);
            v20 = v52;
            v48 = v91;
            v22 = v51;
            v18 = v50;
            v14 = v49;
            v29 |= __src[0];
          }
        }

        if ((v29 & 0x200000010918) != 0)
        {
          v79 = v20;
          v59 = v22;
          v60 = v18;
          v61 = v14;
          v91 = v4;
          sub_1CF7F62D0(__dst);
          if (!__dst[0] || LOBYTE(__dst[27]) == 255 || (__dst[19] & 0xF000000000000000) == 0xB000000000000000)
          {
            memcpy(__src, __dst, 0x208uLL);
            sub_1CEFCCC44(__src, &unk_1EC4BFC90, &unk_1CFA053E0);
          }

          else
          {
            v62 = LOBYTE(__dst[43]);
            memcpy(__src, __dst, 0x208uLL);
            sub_1CEFCCC44(__src, &unk_1EC4BFC90, &unk_1CFA053E0);
            if (!v62 && v79)
            {
              if (qword_1EDEABDE0 != -1)
              {
                swift_once();
              }

              v63 = v29 & 0xFFFFDFFFFFFEF6E7 & (qword_1EDEABDE8 | 0x6409000000C000);
              if (v63)
              {
                *a3 = 1;
                a3[1] = v63;
                a3[2] = v48;
              }

              else
              {
                a3[1] = 0;
                a3[2] = 0;
                *a3 = 89;
              }

              return;
            }
          }

          v14 = v61;
          v18 = v60;
          v22 = v59;
        }

        if ((v29 & 8) == 0)
        {
          goto LABEL_149;
        }

        v64 = v48 & 0xFFFFFFFFFFEFFFFFLL;
        if (v8 > 2)
        {
          if (v8 != 3)
          {
            goto LABEL_153;
          }
        }

        else if (v8)
        {
LABEL_153:
          v65 = *(v5 + 456);
          if (v65 == 1)
          {
            v72 = v18 >> 60 != 11;
LABEL_181:
            if (!v72 || v87 != 12)
            {
LABEL_149:
              *a3 = 1;
              if ((v29 & 0x10) != 0)
              {
                a3[1] = 16;
              }

              else
              {
                a3[1] = v14;
              }

              goto LABEL_185;
            }

            v73 = v14;
            sub_1CEFF5464(&unk_1F4BECBF0, __src);
            v71 = __src[0] | v73;
LABEL_184:
            *a3 = 1;
            a3[1] = v71;
LABEL_185:
            a3[2] = v48;
            return;
          }

          if (v65 != 4)
          {
            if (v18 >> 60 == 11)
            {
              sub_1CEFF5464(&unk_1F4BECC20, __src);
              v66 = __src[0] & v29;
              *a3 = 23;
              a3[1] = v66;
              a3[2] = v64;
              return;
            }

            v72 = 1;
            goto LABEL_181;
          }

          goto LABEL_193;
        }

        if (v22 == 3)
        {
          goto LABEL_15;
        }

        v69 = *(v5 + 456);
        if (v69 == 1)
        {
          v74 = sub_1CEFF8C8C(&unk_1F4BECC60);
          *a3 = 6;
          a3[1] = v29 & 0x10;
          a3[2] = v74;
          return;
        }

        if (v69 != 4)
        {
          sub_1CEFF5464(&unk_1F4BECCA0, __src);
          v70 = __src[0] & v29;
          *a3 = 23;
          a3[1] = v70;
          a3[2] = v64;
          return;
        }

LABEL_194:
        __break(1u);
        return;
      }

      if (v12)
      {
        if (v14 & 8) == 0 && (v11)
        {
          v83 = v16;
          v85 = v15;
          v53 = *(*a1 + 152);
          v91 = v4;
          v54 = v14;
          v88 = v18;
          v55 = v17;
          v81 = v21;
          v56 = v53(v19);
          v21 = v81;
          v16 = v83;
          v15 = v85;
          v18 = v88;
          if ((v29 & 2) == 0)
          {
            goto LABEL_15;
          }

          if ((v11 & 0x80) == 0)
          {
            goto LABEL_15;
          }

          v17 = v55;
          v14 = v54;
          if ((v56 & 0x4000) == 0)
          {
            goto LABEL_15;
          }
        }
      }

      if (v16 == 5)
      {
        goto LABEL_15;
      }

      v57 = *(v5 + 456);
      if (v57 == 1)
      {
        if (!v14 && v16 != 6 && v12)
        {
          goto LABEL_15;
        }

        goto LABEL_161;
      }

      if (v57 != 4)
      {
        if ((v8 - 3) < 2)
        {
          goto LABEL_15;
        }

        if (!v8)
        {
          if (v57 == 2)
          {
            v58 = sub_1CEFF8C8C(&unk_1F4BECBA8);
            *a3 = xmmword_1CFA04E90;
            a3[2] = v58;
            return;
          }

          goto LABEL_161;
        }

        if (v16 || (v17 & 1) == 0)
        {
          if (v12 && (v21 | 4) == 4)
          {
            goto LABEL_187;
          }

          if (v18 >> 60 == 11)
          {
            if (v15)
            {
              v31 = sub_1CEFF8C8C(&unk_1F4BECB60);
              *a3 = xmmword_1CFA04E90;
LABEL_61:
              a3[2] = v31;
              return;
            }

LABEL_187:
            a3[1] = 0;
            a3[2] = 0;
            *a3 = 89;
            return;
          }
        }

LABEL_161:
        v67 = v14;
        v68 = sub_1CEFF8C8C(&unk_1F4BECB18);
        *a3 = 0;
        a3[1] = v67;
        a3[2] = v68;
        return;
      }

      goto LABEL_190;
    }

    v26 = 1843456;
    if (v14)
    {
LABEL_101:
      v29 = v14;
      goto LABEL_104;
    }

LABEL_83:
    if ((~v9 & 0xC) != 0)
    {
      goto LABEL_15;
    }

    v29 = 0;
    goto LABEL_104;
  }

  if (v23 == 5)
  {
LABEL_48:
    if (v8 == 4)
    {
      goto LABEL_99;
    }

    if (!*(v3 + 136))
    {
      v75 = *(v3 + 240);
      v80 = *(v3 + 344);
      v82 = *(v3 + 137);
      v76 = *(v3 + 138);
      v77 = *(v3 + 345);
      v84 = *(v3 + 32);
      v78 = *(v3 + 272);
      v86 = *(v3 + 192);
      v91 = *(v3 + 24);
      sub_1CF7F62D0(__src);
      if (!__src[0] || LOBYTE(__src[27]) == 255 || __src[19] >> 60 == 11)
      {
        memcpy(__dst, __src, sizeof(__dst));
        sub_1CEFCCC44(__dst, &unk_1EC4BFC90, &unk_1CFA053E0);
LABEL_54:
        v14 = v91;
        v18 = v86;
        v22 = v77;
        v20 = v78;
        v16 = v82;
        v15 = v84;
        v17 = v76;
        v21 = v80;
        v19 = v75;
LABEL_99:
        if ((v14 & 8) != 0)
        {
          v29 = v14 & 0xFFFFFFFFFFFFFFF7;
          if ((v14 & 0xFFFFFFFFFFFFFFF7) == 0)
          {
            *a3 = 1;
            a3[1] = v14;
            a3[2] = 794880;
            return;
          }

          v26 = 1876224;
          goto LABEL_104;
        }

LABEL_100:
        v26 = 1876224;
        if (v14)
        {
          goto LABEL_101;
        }

        goto LABEL_83;
      }

      v44 = LOBYTE(__src[43]);
      memcpy(__dst, __src, sizeof(__dst));
      sub_1CEFCCC44(__dst, &unk_1EC4BFC90, &unk_1CFA053E0);
      if (v44)
      {
        goto LABEL_54;
      }

      v14 = v91;
      v18 = v86;
      v22 = v77;
      v20 = v78;
      v16 = v82;
      v15 = v84;
      v17 = v76;
      v21 = v80;
      v19 = v75;
    }

    if (v21 && v21 != 4)
    {
      goto LABEL_100;
    }

    goto LABEL_99;
  }

  v36 = unk_1F4BECD30;
  if ((unk_1F4BECD30 & ~qword_1F4BECD28) == 0)
  {
    v36 = 0;
  }

  v37 = v36 | qword_1F4BECD28;
  v39 = qword_1F4BECD38;
  v38 = unk_1F4BECD40;
  if ((qword_1F4BECD38 & ~v37) == 0)
  {
    v39 = 0;
  }

  v40 = v39 | v37;
  if ((unk_1F4BECD40 & ~v40) == 0)
  {
    v38 = 0;
  }

  *a3 = xmmword_1CFA04E80;
  a3[2] = v38 | v40;
}

uint64_t sub_1CF3FB4A8(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    if (a2)
    {

      v4 = a2;
      sub_1CF9E7948();

      strcpy(v13, "item changed ");
      HIWORD(v13[1]) = -4864;
      v5 = [v4 description];
      v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v8 = v7;

      MEMORY[0x1D3868CC0](v6, v8);

      MEMORY[0x1D3868CC0](0x3A73656C7572202CLL, 0xE900000000000020);
      v9 = sub_1CF3F1D48();
      MEMORY[0x1D3868CC0](v9);
    }

    else
    {
      strcpy(v13, "item changed ");
      HIWORD(v13[1]) = -4864;

      v11 = NSFileProviderItemIdentifier.description.getter();
      MEMORY[0x1D3868CC0](v11);
    }
  }

  else
  {
    sub_1CF9E7948();

    v13[0] = 0xD00000000000001ALL;
    v13[1] = 0x80000001CFA464B0;
    v10 = NSFileProviderItemIdentifier.description.getter();
    MEMORY[0x1D3868CC0](v10);
  }

  return v13[0];
}

uint64_t sub_1CF3FB654()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for VFSItem(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C8, &qword_1CFA058F0);
  if (!*(v1 + *(v11 + 40)))
  {
    v26[0] = 0;
    v26[1] = 0xE000000000000000;
    sub_1CF9E7948();

    v26[0] = 0xD00000000000001ALL;
    v26[1] = 0x80000001CFA464B0;
    v17 = *(v1 + 8);
    v24 = *v1;
    v25 = v17;
    v19 = VFSItemID.description.getter(v16, v18);
    MEMORY[0x1D3868CC0](v19);
    goto LABEL_5;
  }

  sub_1CEFCCBDC(v1 + *(v11 + 36), v5, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {

    v12 = sub_1CEFCCC44(v5, &unk_1EC4BEC00, &unk_1CF9FCB60);
    strcpy(v26, "item changed ");
    HIWORD(v26[1]) = -4864;
    v13 = *(v1 + 8);
    v24 = *v1;
    v25 = v13;
    v15 = VFSItemID.description.getter(v12, v14);
    MEMORY[0x1D3868CC0](v15);

LABEL_5:

    return v26[0];
  }

  sub_1CEFD9F8C(v5, v10, type metadata accessor for VFSItem);
  v26[0] = 0;
  v26[1] = 0xE000000000000000;

  sub_1CF9E7948();

  strcpy(v26, "item changed ");
  HIWORD(v26[1]) = -4864;
  v21 = sub_1CF255338();
  MEMORY[0x1D3868CC0](v21);

  MEMORY[0x1D3868CC0](0x3A73656C7572202CLL, 0xE900000000000020);
  v22 = sub_1CF3F1EBC();
  MEMORY[0x1D3868CC0](v22);

  v23 = v26[0];
  sub_1CEFD5278(v10, type metadata accessor for VFSItem);
  return v23;
}

void sub_1CF3FB96C(void *a1, void **a2, uint64_t a3, int a4)
{
  v5 = v4;
  v126 = a1;
  v124 = a4;
  v123 = a3;
  v120 = sub_1CF9E6118();
  v116 = *(v120 - 8);
  v7 = *(v116 + 64);
  v8 = MEMORY[0x1EEE9AC00](v120);
  v119 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v108 = &v101 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0588, &qword_1CFA05950);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v122 = &v101 - v13;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0590, &qword_1CFA05958);
  v113 = *(v121 - 8);
  v14 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v127 = (&v101 - v15);
  v16 = sub_1CF9E5CF8();
  v118 = *(v16 - 8);
  v17 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v117 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v115 = (&v101 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (&v101 - v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0570, qword_1CFA18A50);
  inited = swift_initStackObject();
  v27 = MEMORY[0x1E69E7CC0];
  inited[2] = MEMORY[0x1E69E7CC0];
  inited[3] = v27;
  inited[4] = v27;
  inited[5] = v27;
  inited[6] = 0;
  sub_1CEFCCBDC(v126, v25, &unk_1EC4BFD70, &qword_1CFA12AC0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 7)
  {
    v38 = *v25;
    v39 = sub_1CF1CE930(v38);
    if (!v39)
    {
LABEL_19:

      return;
    }

    sub_1CF4821D4(v39, v40);
    v41 = v38;
    v42 = v117;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v44 = v43;
    (*(v118 + 8))(v42, v16);
    v45 = v44 * 1000000000.0;
    if (COERCE__INT64(fabs(v44 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (v45 <= -9.22337204e18)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v106 = v16;
    if (v45 >= 9.22337204e18)
    {
LABEL_49:
      __break(1u);
      return;
    }

    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF80, &qword_1CF9FB478);
    v47 = swift_allocObject();
    *(v47 + 16) = 0u;
    *(v47 + 32) = 0u;
    *(v47 + 48) = 1;
    *(v47 + 56) = 0u;
    *(v47 + 72) = 0u;
    *(v47 + 120) = 0x2000000000000000;
    *(v47 + 128) = v46;
    *(v47 + 136) = 2048;
    *(v47 + 144) = v41;
    *(v47 + 96) = 0;
    *(v47 + 104) = 0;
    *(v47 + 88) = 0;
    *(v47 + 112) = 1;
    swift_beginAccess();

    sub_1CF7E3200(v48);
    swift_endAccess();

    v33 = v123;
    v16 = v106;
LABEL_12:
    v34 = v124;
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 6)
  {
    sub_1CEFCCC44(v25, &unk_1EC4BFD70, &qword_1CFA12AC0);
    v33 = v123;
    goto LABEL_12;
  }

  v29 = *v25;
  v30 = sub_1CF1CE930(*v25);
  v33 = v123;
  v34 = v124;
  if (!v30)
  {

    v38 = v25[1];
    goto LABEL_19;
  }

  v103 = v30;
  v126 = v29;
  v105 = v32;
  v104 = v31;
  if (v31)
  {
    v35 = v31;
    v36 = v115;
    sub_1CF3F0810(v35, v115);
    v37 = 0;
  }

  else
  {
    v37 = 1;
    v36 = v115;
  }

  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  (*(*(v58 - 8) + 56))(v36, v37, 1, v58);
  v59 = v117;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v61 = v60;
  (*(v118 + 8))(v59, v16);
  *&v62 = v61 * 1000000000.0;
  if (COERCE__INT64(fabs(v61 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_44;
  }

  v102 = v25;
  v63 = v126;
  if (*&v62 <= -9.22337204e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v106 = v16;
  v114 = inited;
  if (*&v62 >= 9.22337204e18)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v112 = *&v62;
  v129 = v33;
  v113 += 48;
  v111 = (v116 + 8);
  v64 = 1;
  v130 = v34;
  *&v62 = 136315394;
  v107 = v62;
  v65 = 1;
  v66 = v122;
  do
  {
    v78 = v64;
    sub_1CF438400(v36, v63, 0, 0, 2048, a2, v33, v34, v66);
    if (v5)
    {

      sub_1CEFCCC44(v36, &unk_1EC4BFBB0, &qword_1CF9FCB90);

      v57 = v102[1];
      goto LABEL_17;
    }

    if ((*v113)(v66, 1, v121) == 1)
    {
      sub_1CEFCCC44(v66, &qword_1EC4C0588, &qword_1CFA05950);
      inited = v114;
      v16 = v106;
      goto LABEL_40;
    }

    LODWORD(v125) = v78;
    v79 = v127;
    sub_1CEFE55D0(v66, v127, &qword_1EC4C0590, &qword_1CFA05958);
    v80 = sub_1CF41BBFC(v79, v63, 0, a2, 0x2000000000000000, v112, 2048, v114, v33, v34);
    if ((((((*a2)[19])() & 0x4000) != 0) & v80) == 0)
    {
      sub_1CEFCCC44(v127, &qword_1EC4C0590, &qword_1CFA05958);
      inited = v114;
      v16 = v106;
      goto LABEL_39;
    }

    v116 = v65;
    (*(*a2[2] + 528))(&v129, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    (*(*a2[4] + 688))(&v129, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    (*(*a2[5] + 688))(&v129, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v81 = fpfs_current_or_default_log();
    v82 = v119;
    sub_1CF9E6128();
    v83 = v126;
    v84 = sub_1CF9E6108();
    v85 = sub_1CF9E7288();
    v86 = os_log_type_enabled(v84, v85);
    v110 = v83;
    if (v86)
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v109 = 0;
      v69 = v68;
      v128 = v68;
      *v67 = v107;
      v70 = NSFileProviderItemIdentifier.description.getter();
      v71 = a2;
      v73 = v72;

      v74 = sub_1CEFD0DF0(v70, v73, &v128);
      a2 = v71;

      *(v67 + 4) = v74;
      v36 = v115;
      v34 = v124;
      *(v67 + 12) = 2048;
      *(v67 + 14) = v116;
      _os_log_impl(&dword_1CEFC7000, v84, v85, "Ingesting %s, retries %ld", v67, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v69);
      v75 = v69;
      v5 = v109;
      MEMORY[0x1D386CDC0](v75, -1, -1);
      v76 = v67;
      v33 = v123;
      MEMORY[0x1D386CDC0](v76, -1, -1);
    }

    else
    {
    }

    v77 = *v111;
    (*v111)(v82, v120);
    sub_1CEFCCC44(v127, &qword_1EC4C0590, &qword_1CFA05958);
    v64 = 0;
    v65 = 2;
    v63 = v126;
    v66 = v122;
  }

  while ((v125 & 1) != 0);
  v87 = fpfs_current_or_default_log();
  v88 = v108;
  sub_1CF9E6128();
  v89 = v110;
  v90 = sub_1CF9E6108();
  v91 = sub_1CF9E72A8();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v128 = v93;
    *v92 = 136315138;
    v94 = NSFileProviderItemIdentifier.description.getter();
    v127 = a2;
    v95 = v94;
    v97 = v96;

    v98 = sub_1CEFD0DF0(v95, v97, &v128);

    *(v92 + 4) = v98;
    _os_log_impl(&dword_1CEFC7000, v90, v91, "Transform could not converge for item %s", v92, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v93);
    MEMORY[0x1D386CDC0](v93, -1, -1);
    v99 = v92;
    v33 = v123;
    MEMORY[0x1D386CDC0](v99, -1, -1);

    v100 = v108;
  }

  else
  {

    v100 = v88;
  }

  v77(v100, v120);
  v34 = v124;
  inited = v114;
  v16 = v106;
  v36 = v115;
LABEL_39:
  v63 = v126;
LABEL_40:
  sub_1CEFCCC44(v36, &unk_1EC4BFBB0, &qword_1CF9FCB90);

LABEL_13:
  v49 = v117;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v51 = v50;
  (*(v118 + 8))(v49, v16);
  v52 = v51 * 1000000000.0;
  if (COERCE__INT64(fabs(v51 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v52 <= -9.22337204e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v52 >= 9.22337204e18)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  sub_1CF7F6A3C(inited, v52, v33, v34);
  swift_setDeallocating();
  v53 = inited[2];

  v54 = inited[3];

  v55 = inited[4];

  v56 = inited[5];

  v57 = inited[6];
LABEL_17:
}

void sub_1CF3FC714(uint64_t a1, void **a2, uint64_t a3, int a4)
{
  v125 = a4;
  v130 = a3;
  v126 = a2;
  v131 = a1;
  v122 = sub_1CF9E6118();
  v115 = *(v122 - 8);
  v4 = *(v115 + 64);
  v5 = MEMORY[0x1EEE9AC00](v122);
  v128 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v113 = &v108 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0500, &qword_1CFA058D8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v124 = (&v108 - v10);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0508, &unk_1CFA058E0);
  *&v114 = *(v123 - 8);
  v11 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v132 = &v108 - v12;
  v120 = sub_1CF9E5CF8();
  v119 = *(v120 - 8);
  v13 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v118 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v116 = &v108 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v127 = &v108 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0510, &unk_1CFA16940);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v108 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C8, &qword_1CFA058F0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v117 = &v108 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v108 - v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DE0, &unk_1CFA05398);
  inited = swift_initStackObject();
  v37 = MEMORY[0x1E69E7CC0];
  inited[2] = MEMORY[0x1E69E7CC0];
  inited[3] = v37;
  inited[4] = v37;
  inited[5] = v37;
  v129 = inited;
  inited[6] = 0;
  sub_1CEFCCBDC(v131, v35, &unk_1EC4BFCC0, &unk_1CF9FCB50);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    if (EnumCaseMultiPayload != 6)
    {
      sub_1CEFCCC44(v35, &unk_1EC4BFCC0, &unk_1CF9FCB50);
      v46 = v125;
      goto LABEL_32;
    }

    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFEC0, &unk_1CFA05590) + 48);
    v40 = v35[8];
    v131 = *v35;
    v121 = v40;
    sub_1CF384EC8(v131, v40, v27);
    v41 = (*(v29 + 48))(v27, 1, v28);
    v42 = v126;
    if (v41 == 1)
    {
      sub_1CEFCCC44(v27, &unk_1EC4C0510, &unk_1CFA16940);
      sub_1CEFCCC44(&v35[v39], &unk_1EC4BEC00, &unk_1CF9FCB60);
      return;
    }

    v110 = v35;
    v47 = v117;
    sub_1CEFE55D0(v27, v117, &qword_1EC4BE1C8, &qword_1CFA058F0);
    v48 = v116;
    sub_1CEFCCBDC(v47 + *(v28 + 36), v116, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CF3FD75C(v48, v127);
    v49 = v118;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v51 = v50;
    (*(v119 + 8))(v49, v120);
    *&v52 = v51 * 1000000000.0;
    if (COERCE__INT64(fabs(v51 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_47;
    }

    v46 = v125;
    v53 = v130;
    if (*&v52 <= -9.22337204e18)
    {
      goto LABEL_49;
    }

    if (*&v52 >= 9.22337204e18)
    {
      goto LABEL_51;
    }

    v109 = v39;
    v54 = (v114 + 48);
    v115 += 8;
    v116 = *&v52;
    v55 = 1953460082;
    if (v131)
    {
      v55 = 0x6873617274;
    }

    v112 = v55;
    v136 = v130;
    v137 = v125;
    v56 = 0xE500000000000000;
    if (!v131)
    {
      v56 = 0xE400000000000000;
    }

    v111 = v56;
    v57 = 1;
    *&v52 = 136315394;
    v114 = v52;
    v58 = 1;
    while (1)
    {
      v60 = v57;
      v61 = v124;
      v62 = v121;
      v63 = v133;
      sub_1CF43A7C4(v127, v131, v121, 0, 0, 2048, v42, v53, v124, v46);
      if (v63)
      {

        sub_1CEFCCC44(v127, &qword_1EC4C1B40, &unk_1CF9FCB70);
        sub_1CEFCCC44(v117, &qword_1EC4BE1C8, &qword_1CFA058F0);
        sub_1CEFCCC44(&v110[v109], &unk_1EC4BEC00, &unk_1CF9FCB60);
        return;
      }

      if ((*v54)(v61, 1, v123) == 1)
      {
        v93 = &qword_1EC4C0500;
        v94 = &qword_1CFA058D8;
        v95 = v61;
LABEL_39:
        sub_1CEFCCC44(v95, v93, v94);
        v96 = v110;
        goto LABEL_43;
      }

      v64 = v61;
      v65 = v132;
      sub_1CEFE55D0(v64, v132, &qword_1EC4C0508, &unk_1CFA058E0);
      v66 = sub_1CF429240(v65, v131, v62, 0, v42, 0x2000000000000000, v116, 2048, v129, v53, v46);
      if ((((((*v42)[19])() & 0x4000) != 0) & v66) == 0)
      {
        v93 = &qword_1EC4C0508;
        v94 = &unk_1CFA058E0;
        v95 = v132;
        goto LABEL_39;
      }

      v133 = 0;
      (*(*v42[2] + 528))(&v136, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      (*(*v42[4] + 688))(&v136, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      (*(*v42[5] + 688))(&v136, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      v67 = fpfs_current_or_default_log();
      v68 = v128;
      sub_1CF9E6128();
      v69 = sub_1CF9E6108();
      v70 = sub_1CF9E7288();
      if (os_log_type_enabled(v69, v70))
      {
        break;
      }

      v59 = *v115;
      (*v115)(v68, v122);
      sub_1CEFCCC44(v132, &qword_1EC4C0508, &unk_1CFA058E0);
LABEL_17:
      v53 = v130;
      v57 = 0;
      v58 = 2;
      if ((v60 & 1) == 0)
      {
        v97 = fpfs_current_or_default_log();
        v98 = v113;
        sub_1CF9E6128();
        v99 = sub_1CF9E6108();
        v100 = sub_1CF9E72A8();
        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          v135 = v102;
          *v101 = 136315138;
          v138 = v131;
          LOBYTE(v139) = v121;
          v104 = VFSItemID.description.getter(v102, v103);
          v106 = sub_1CEFD0DF0(v104, v105, &v135);

          *(v101 + 4) = v106;
          _os_log_impl(&dword_1CEFC7000, v99, v100, "Transform could not converge for item %s", v101, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v102);
          MEMORY[0x1D386CDC0](v102, -1, -1);
          v107 = v101;
          v46 = v125;
          MEMORY[0x1D386CDC0](v107, -1, -1);
        }

        v59(v98, v122);
        v96 = v110;
LABEL_43:
        sub_1CEFCCC44(v127, &qword_1EC4C1B40, &unk_1CF9FCB70);
        sub_1CEFCCC44(v117, &qword_1EC4BE1C8, &qword_1CFA058F0);
        sub_1CEFCCC44(&v96[v109], &unk_1EC4BEC00, &unk_1CF9FCB60);
LABEL_32:
        v84 = v118;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v86 = v85;
        (*(v119 + 8))(v84, v120);
        v87 = v86 * 1000000000.0;
        if (COERCE__INT64(fabs(v86 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v87 > -9.22337204e18)
        {
          if (v87 < 9.22337204e18)
          {
            v88 = v129;
            sub_1CF7F6588(v129, v87, v130, v46);
            swift_setDeallocating();
            v89 = v88[2];

            v90 = v88[3];

            v91 = v88[4];

            v92 = v88[5];

            return;
          }

LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          return;
        }

        __break(1u);
        goto LABEL_46;
      }
    }

    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v135 = v72;
    *v71 = v114;
    if (v121)
    {
      v73 = v112;
      v74 = v111;
      if (v121 != 1)
      {
LABEL_27:
        v76 = sub_1CEFD0DF0(v73, v74, &v135);

        *(v71 + 4) = v76;
        *(v71 + 12) = 2048;
        *(v71 + 14) = v58;
        _os_log_impl(&dword_1CEFC7000, v69, v70, "Ingesting %s, retries %ld", v71, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v72);
        MEMORY[0x1D386CDC0](v72, -1, -1);
        MEMORY[0x1D386CDC0](v71, -1, -1);

        v59 = *v115;
        (*v115)(v128, v122);
        sub_1CEFCCC44(v132, &qword_1EC4C0508, &unk_1CFA058E0);
        v46 = v125;
        v42 = v126;
        goto LABEL_17;
      }

      v138 = 0x284449656C6966;
      v139 = 0xE700000000000000;
      v134 = v131;
    }

    else
    {
      v138 = 0x284449636F64;
      v139 = 0xE600000000000000;
      LODWORD(v134) = v131;
    }

    v75 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v75);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v73 = v138;
    v74 = v139;
    goto LABEL_27;
  }

  v43 = *v35;
  v44 = v35[8];
  sub_1CF384EC8(*v35, v44, v25);
  v45 = (*(v29 + 48))(v25, 1, v28);
  sub_1CEFCCC44(v25, &unk_1EC4C0510, &unk_1CFA16940);
  if (v45 != 1)
  {
    v77 = v118;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v79 = v78;
    (*(v119 + 8))(v77, v120);
    v80 = v79 * 1000000000.0;
    if (COERCE__INT64(fabs(v79 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_48;
    }

    v46 = v125;
    if (v80 <= -9.22337204e18)
    {
      goto LABEL_50;
    }

    if (v80 < 9.22337204e18)
    {
      v81 = v80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
      v82 = swift_allocObject();
      *(v82 + 152) = v44;
      *(v82 + 16) = 0u;
      *(v82 + 32) = 0u;
      *(v82 + 48) = 1;
      *(v82 + 56) = 0u;
      *(v82 + 72) = 0u;
      *(v82 + 120) = 0x2000000000000000;
      *(v82 + 128) = v81;
      *(v82 + 136) = 2048;
      *(v82 + 144) = v43;
      *(v82 + 96) = 0;
      *(v82 + 104) = 0;
      *(v82 + 88) = 0;
      *(v82 + 112) = 1;
      swift_beginAccess();

      sub_1CF7E3218(v83);
      swift_endAccess();

      goto LABEL_32;
    }

    goto LABEL_52;
  }
}

uint64_t sub_1CF3FD75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v72 = *(v70 - 8);
  v3 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v5 = &v69 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v69 - v8;
  v10 = type metadata accessor for VFSItem(0);
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v69 - v16;
  v71 = a1;
  sub_1CEFCCBDC(a1, v9, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1CEFCCC44(v71, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFCCC44(v9, &unk_1EC4BEC00, &unk_1CF9FCB60);
    return (*(v72 + 56))(v73, 1, 1, v70);
  }

  else
  {
    v19 = v17;
    sub_1CEFD9F8C(v9, v17, type metadata accessor for VFSItem);
    sub_1CEFDA214(v17, v15, type metadata accessor for VFSItem);
    v20 = v70;
    v21 = &v5[*(v70 + 52)];
    sub_1CEFE528C(v93);
    v22 = v93[13];
    *(v21 + 12) = v93[12];
    *(v21 + 13) = v22;
    *(v21 + 14) = v93[14];
    *(v21 + 30) = v94;
    v23 = v93[9];
    *(v21 + 8) = v93[8];
    *(v21 + 9) = v23;
    v24 = v93[11];
    *(v21 + 10) = v93[10];
    *(v21 + 11) = v24;
    v25 = v93[5];
    *(v21 + 4) = v93[4];
    *(v21 + 5) = v25;
    v26 = v93[7];
    *(v21 + 6) = v93[6];
    *(v21 + 7) = v26;
    v27 = v93[1];
    *v21 = v93[0];
    *(v21 + 1) = v27;
    v28 = v93[3];
    *(v21 + 2) = v93[2];
    *(v21 + 3) = v28;
    v29 = &v5[v20[14]];
    *v29 = 0u;
    *(v29 + 1) = 0u;
    v29[32] = 1;
    v30 = &v5[v20[15]];
    *v30 = 0;
    *(v30 + 1) = 0;
    v30[16] = 1;
    v31 = *v15;
    v32 = v15[8];
    *v5 = *v15;
    v5[8] = v32;
    v33 = *(v15 + 2);
    v34 = v15[24];
    if (v32 == 2 && v31 < 2)
    {
      v35 = 2;
    }

    else
    {
      v31 = *(v15 + 2);
      v35 = v15[24];
    }

    *(v5 + 2) = v31;
    v5[24] = v35;
    v36 = &v15[v10[9]];
    v37 = *v36;
    v38 = *(v36 + 2);
    v39 = *(v36 + 2);
    LOBYTE(v36) = v36[24];
    v40 = *(v15 + 4);
    v41 = *(v15 + 5);
    *(v5 + 4) = v37;
    *(v5 + 10) = v38;
    *(v5 + 6) = v39;
    v5[56] = v36;
    v5[80] = v34;
    *(v5 + 11) = v40;
    *(v5 + 12) = v41;
    *(v5 + 8) = 0;
    *(v5 + 9) = v33;
    *(v5 + 13) = 0;
    *(v5 + 14) = 0;
    *(v5 + 15) = 0;
    *(v5 + 16) = v40;
    *(v5 + 17) = v41;
    sub_1CEFDA214(&v15[v10[7]], &v5[v20[12]], type metadata accessor for ItemMetadata);
    v42 = &v15[v10[8]];
    v43 = *(v42 + 13);
    v87 = *(v42 + 12);
    v88 = v43;
    v89 = *(v42 + 14);
    v90 = *(v42 + 30);
    v44 = *(v42 + 9);
    v83 = *(v42 + 8);
    v84 = v44;
    v45 = *(v42 + 11);
    v85 = *(v42 + 10);
    v86 = v45;
    v46 = *(v42 + 5);
    v79 = *(v42 + 4);
    v80 = v46;
    v47 = *(v42 + 7);
    v81 = *(v42 + 6);
    v82 = v47;
    v48 = *(v42 + 3);
    v77 = *(v42 + 2);
    v78 = v48;
    v49 = *(v42 + 1);
    v75 = *v42;
    v76 = v49;
    v50 = *(v21 + 13);
    v91[12] = *(v21 + 12);
    v91[13] = v50;
    v91[14] = *(v21 + 14);
    v92 = *(v21 + 30);
    v51 = *(v21 + 9);
    v91[8] = *(v21 + 8);
    v91[9] = v51;
    v52 = *(v21 + 11);
    v91[10] = *(v21 + 10);
    v91[11] = v52;
    v53 = *(v21 + 5);
    v91[4] = *(v21 + 4);
    v91[5] = v53;
    v54 = *(v21 + 7);
    v91[6] = *(v21 + 6);
    v91[7] = v54;
    v55 = *(v21 + 1);
    v91[0] = *v21;
    v91[1] = v55;
    v56 = *(v21 + 3);
    v91[2] = *(v21 + 2);
    v91[3] = v56;
    swift_bridgeObjectRetain_n();
    sub_1CEFCCBDC(&v75, &v74, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    sub_1CEFCCC44(v91, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    v57 = v88;
    *(v21 + 12) = v87;
    *(v21 + 13) = v57;
    *(v21 + 14) = v89;
    *(v21 + 30) = v90;
    v58 = v84;
    *(v21 + 8) = v83;
    *(v21 + 9) = v58;
    v59 = v86;
    *(v21 + 10) = v85;
    *(v21 + 11) = v59;
    v60 = v80;
    *(v21 + 4) = v79;
    *(v21 + 5) = v60;
    v61 = v82;
    *(v21 + 6) = v81;
    *(v21 + 7) = v61;
    v62 = v76;
    *v21 = v75;
    *(v21 + 1) = v62;
    v63 = v78;
    *(v21 + 2) = v77;
    *(v21 + 3) = v63;
    *&v5[v20[16]] = 0;
    v64 = sub_1CF252CF4();
    v66 = v65;
    sub_1CEFD5278(v15, type metadata accessor for VFSItem);
    v67 = &v5[v20[17]];
    *v67 = v64;
    v67[1] = v66;
    v68 = v73;
    sub_1CEFE55D0(v5, v73, &unk_1EC4BE360, &qword_1CF9FE650);
    sub_1CEFCCC44(v71, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFD5278(v19, type metadata accessor for VFSItem);
    return (*(v72 + 56))(v68, 0, 1, v20);
  }
}

uint64_t sub_1CF3FDD38(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(a2 + 16) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v24 = *(a2 + 16);

  for (i = 0; v8; result = )
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = *(v24 + 56) + 24 * (v13 | (v12 << 6));
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    v25 = a1[3];
    v26 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v25);

    v18 = v15;
    v19 = v16;
    v20 = sub_1CF3FB4A8(v18, v16, v17);
    v22 = v21;

    sub_1CF4FB2BC(v20, v22, v25, v26);
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v8 = *(v4 + 8 * v12);
    ++i;
    if (v8)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF3FDEA0(void *a1, uint64_t a2)
{
  v26 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C8, &qword_1CFA058F0);
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v24 = &v23 - v5;
  v6 = *(a2 + 16);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << *(*(a2 + 16) + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v27 = *(a2 + 16);

  for (i = 0; v12; result = )
  {
    v16 = i;
LABEL_9:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = v24;
    sub_1CEFCCBDC(*(v27 + 56) + *(v25 + 72) * (v17 | (v16 << 6)), v24, &qword_1EC4BE1C8, &qword_1CFA058F0);
    v19 = v26[3];
    v28 = v26[4];
    __swift_project_boxed_opaque_existential_1(v26, v19);
    v20 = sub_1CF3FB654();
    v22 = v21;
    sub_1CEFCCC44(v18, &qword_1EC4BE1C8, &qword_1CFA058F0);
    sub_1CF4FB2BC(v20, v22, v19, v28);
  }

  while (1)
  {
    v16 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
    }

    v12 = *(v8 + 8 * v16);
    ++i;
    if (v12)
    {
      i = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF3FE08C(void *a1, uint64_t a2)
{
  v26 = a1;
  v3 = type metadata accessor for SyncState();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a2 + 24);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << *(*(a2 + 24) + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v27 = *(a2 + 24);

  for (i = 0; v12; result = )
  {
    v16 = i;
LABEL_9:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = v24;
    sub_1CEFDA214(*(v27 + 56) + *(v25 + 72) * (v17 | (v16 << 6)), v24, type metadata accessor for SyncState);
    v19 = v26[3];
    v28 = v26[4];
    __swift_project_boxed_opaque_existential_1(v26, v19);
    v20 = sub_1CF04CC80();
    v22 = v21;
    sub_1CEFD5278(v18, type metadata accessor for SyncState);
    sub_1CF4FB2BC(v20, v22, v19, v28);
  }

  while (1)
  {
    v16 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
    }

    v12 = *(v8 + 8 * v16);
    ++i;
    if (v12)
    {
      i = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

double sub_1CF3FE320@<D0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v9 = MEMORY[0x1E69E7CC0];
  v10 = a1(MEMORY[0x1E69E7CC0]);
  v11 = a2(v9);
  v12 = a3(v9);
  v13 = sub_1CF03AD00(v9);
  v14 = a4(v9);
  *a5 = v10;
  *(a5 + 8) = v11;
  *(a5 + 16) = v12;
  *(a5 + 24) = v13;
  *&result = 2;
  *(a5 + 32) = xmmword_1CF9FD950;
  *(a5 + 48) = 0;
  *(a5 + 56) = v14;
  *(a5 + 64) = 0;
  *(a5 + 66) = 0;
  *(a5 + 72) = v9;
  *(a5 + 80) = v9;
  *(a5 + 88) = 0;
  return result;
}

uint64_t sub_1CF3FE3E4(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_1CF3FE444(uint64_t a1)
{
  v2 = *(a1 + qword_1EDEBBCE8);
  swift_getObjectType();
  sub_1CF9E7448();
  sub_1CF9E7418();
  if ((*(a1 + 88) & 1) == 0)
  {
    v3 = *(a1 + 112);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7428();
    swift_unknownObjectRelease();
  }

  v4 = *(a1 + 112);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1CF9E7448();
  swift_unknownObjectRelease();
  v5 = *(a1 + 112);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1CF9E7418();
  return swift_unknownObjectRelease();
}

uint64_t sub_1CF3FE51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBF8, &unk_1CFA05340);
  sub_1CEFCCCEC(&unk_1EC4BFC00, &qword_1EC4BFBF8, &unk_1CFA05340);
  v8 = sub_1CF9E6EC8();

  return MEMORY[0x1EEE6DFA0](sub_1CF3FE5EC, v8, v7);
}

uint64_t sub_1CF3FE5EC()
{
  v1 = *(*(v0 + 64) + 16);
  *(v0 + 88) = sub_1CF39BA14();

  return MEMORY[0x1EEE6DFA0](sub_1CF3FE65C, 0, 0);
}

void sub_1CF3FE65C()
{
  v1 = *(v0[9] + 16);
  v0[12] = v1;
  if (v1)
  {
    v2 = 0;
    while (1)
    {
      if (v2 >= v1)
      {
        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }

      v3 = v0[9] + 32 * v2;
      v5 = *(v3 + 32);
      v4 = *(v3 + 40);
      v0[13] = v4;
      v6 = *(v3 + 48);
      v27 = *(v3 + 56);
      v25 = *(v3 + 57);
      v26 = *(v3 + 58);
      v7 = __OFADD__(v2++, 1);
      v0[14] = v2;
      if (v7)
      {
        goto LABEL_35;
      }

      v8 = *(v0[11] + 16);
      if (v8)
      {
        break;
      }

LABEL_4:
      if (v2 == v1)
      {
        goto LABEL_28;
      }
    }

    v24 = v2;
    v9 = 0;
    while (1)
    {
      v10 = v0[11] + v9;
      v11 = *(v10 + 48);
      v12 = *(v10 + 56);
      v13 = *(v10 + 57);
      v14 = *(v10 + 58);
      v15 = *(v10 + 32) == v5 && *(v10 + 40) == v4;
      if (v15 || (sub_1CF9E8048()) && v11 == v6)
      {
        v16 = v12 == 6 || v12 == v27;
        if (v16 && (v13 == 89 || v25 != 89 && qword_1CFA05BE8[v13] == qword_1CFA05BE8[v25]) && (v14 == 2 || !((v26 == 2) | (v14 ^ v26) & 1)))
        {
          break;
        }
      }

      v9 += 32;
      if (!--v8)
      {
        v1 = v0[12];
        v2 = v24;
        goto LABEL_4;
      }
    }

    v19 = v0[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4730, &unk_1CFA16880);
    inited = swift_initStackObject();
    v0[15] = inited;
    *(inited + 16) = xmmword_1CF9FA450;
    *(inited + 32) = v19;
    *(inited + 40) = 256;

    v21 = v19;
    v22 = swift_task_alloc();
    v0[16] = v22;
    *v22 = v0;
    v22[1] = sub_1CF3FE934;
    v23 = v0[8];

    sub_1CF7F8760(inited, v5, v4, v6, v27 | (v25 << 8) | (v26 << 16) | 0x1000000);
  }

  else
  {
LABEL_28:
    v17 = v0[11];

    v18 = v0[1];

    v18();
  }
}

uint64_t sub_1CF3FE934()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 128);
  v5 = *v1;

  v6 = *(v2 + 120);
  v7 = *(v2 + 104);
  if (v0)
  {
    v8 = *(v3 + 88);

    swift_setDeallocating();
    sub_1CEFCCC44(v6 + 32, &unk_1EC4BFC10, &qword_1CF9FE510);
    v9 = *(v5 + 8);

    return v9();
  }

  else
  {

    swift_setDeallocating();
    sub_1CEFCCC44(v6 + 32, &unk_1EC4BFC10, &qword_1CF9FE510);

    return MEMORY[0x1EEE6DFA0](sub_1CF3FEAFC, 0, 0);
  }
}

uint64_t sub_1CF3FEAFC()
{
  v1 = v0[14];
  v2 = v0[12];
  if (v1 == v2)
  {
LABEL_6:
    v5 = v0[11];

    v6 = v0[1];

    return v6();
  }

  else
  {
    v3 = 32 * v1 + 40;
    while (v1 < v2)
    {
      v4 = v1 + 1;
      v0[13] = *(v0[9] + v3);
      v0[14] = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        goto LABEL_10;
      }

      ++v1;
      v3 += 32;
      if (v4 == v2)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF3FEBAC(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v316 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v2;
  v10 = sub_1CF9E6118();
  v297 = *(v10 - 8);
  v298 = v10;
  v11 = *(v297 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v299 = &v295 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v295 = &v295 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v296 = &v295 - v16;
  v302 = sub_1CF9E5CF8();
  v300 = *(v302 - 8);
  v17 = *(v300 + 64);
  MEMORY[0x1EEE9AC00](v302);
  v301 = &v295 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v307 = *(v19 - 8);
  v308 = v19;
  v20 = *(v307 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v304 = &v295 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v305 = *(v22 - 8);
  v306 = v22;
  v23 = *(v305 + 8);
  MEMORY[0x1EEE9AC00](v22);
  v303 = &v295 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v295 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v311 = &v295 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v310 = &v295 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v295 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v309 = (&v295 - v38);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = &v295 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v314 = &v295 - v42;
  v312 = v6;
  v325 = v6;
  v313 = v4;
  v326 = v4;
  v43 = objc_sync_enter(v8);
  if (v43)
  {
LABEL_246:
    MEMORY[0x1EEE9AC00](v43);
    v294 = v8;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v295 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v44 = *(v8 + qword_1EDEADAA8);
  v315 = v8;
  result = objc_sync_exit(v8);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v294 = v315;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v295 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if (v44)
  {
    if (*(v315 + qword_1EDEBBCB8))
    {
      v46 = *(v315 + qword_1EDEBBCB8);

      v47 = v316;
      sub_1CF4721F4(v9, v312, v313);
      v316 = v47;
      if (v47)
      {
      }
    }

    v48 = v314;
    sub_1CEFCCBDC(v9, v314, &qword_1EC4BE710, &qword_1CF9FE5A8);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 11)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_1CEFCCBDC(v48, v41, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320);
        v59 = *(v58 + 48);
        v60 = *&v41[*(v58 + 64)];
        v61 = v306;
        v62 = *(v305 + 6);
        if (v62(v41, 1, v306) == 1)
        {
          v63 = &qword_1EC4C1B40;
          v64 = &unk_1CF9FCB70;
          sub_1CEFCCC44(&v41[v59], &qword_1EC4C1B40, &unk_1CF9FCB70);
          v65 = v41;
LABEL_27:
          v71 = v63;
          v72 = v64;
LABEL_28:
          sub_1CEFCCC44(v65, v71, v72);
          v48 = v314;
          goto LABEL_72;
        }

        if (v62(&v41[v59], 1, v61) != 1)
        {
          sub_1CEFCCC44(v41, &unk_1EC4BE360, &qword_1CF9FE650);
          v71 = &qword_1EC4C1B40;
          v72 = &unk_1CF9FCB70;
          v65 = &v41[v59];
          goto LABEL_28;
        }

        v81 = v303;
        v82 = sub_1CEFE55D0(v41, v303, &unk_1EC4BE360, &qword_1CF9FE650);
        if ((v60 & 2) == 0)
        {
          v71 = &unk_1EC4BE360;
          v72 = &qword_1CF9FE650;
          v65 = v81;
          goto LABEL_28;
        }

        MEMORY[0x1EEE9AC00](v82);
        v131 = v315;
        *(&v295 - 4) = v315;
        *(&v295 - 3) = v81;
        v294 = &v325;
        sub_1CF4739B0(v131, 0, v312, v313, sub_1CF482C50);
        v120 = &unk_1EC4BE360;
        v121 = &qword_1CF9FE650;
        v122 = v81;
      }

      else
      {
        if (EnumCaseMultiPayload != 7)
        {
          if (EnumCaseMultiPayload == 11)
          {
            v50 = v310;
            v51 = sub_1CEFCCBDC(v48, v310, &qword_1EC4BE710, &qword_1CF9FE5A8);
            v52 = *(v50 + 27);
            if (*(v50 + 9))
            {
              if (v52 == 3)
              {
                v54 = *(v50 + 8);
                *&v324[0] = *v50;
                v53 = *&v324[0];
                MEMORY[0x1EEE9AC00](v51);
                v55 = v315;
                *(&v295 - 4) = v315;
                *(&v295 - 3) = v324;
                v294 = &v325;
                sub_1CF4739B0(v55, 0, v312, v313, sub_1CF482BCC);
                sub_1CEFD0994(v53, v54, 1);
                sub_1CF47FDFC(*(v50 + 16), *(v50 + 24));
                return sub_1CEFCCC44(v314, &qword_1EC4BE710, &qword_1CF9FE5A8);
              }

              sub_1CEFD0994(*v50, *(v50 + 8), 1);
            }

            else if (v52 == 2)
            {
              v107 = *(v50 + 8);
              *&v324[0] = *v50;
              BYTE8(v324[0]) = v107;
              MEMORY[0x1EEE9AC00](v51);
              v108 = v315;
              *(&v295 - 4) = v315;
              *(&v295 - 3) = v324;
              v294 = &v325;
              sub_1CF4739B0(v108, 0, v312, v313, sub_1CF482B78);
              sub_1CF47FDFC(*(v50 + 16), *(v50 + 24));
              return sub_1CEFCCC44(v314, &qword_1EC4BE710, &qword_1CF9FE5A8);
            }

            sub_1CF47FDFC(*(v50 + 16), *(v50 + 24));
          }

          goto LABEL_72;
        }

        v68 = v309;
        sub_1CEFCCBDC(v48, v309, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBC8, &qword_1CFA05308);
        v70 = *(v69 + 48);
        if ((*(v307 + 48))(v68, 1, v308) == 1)
        {
          v63 = &unk_1EC4BFBB0;
          v64 = &qword_1CF9FCB90;
          sub_1CEFCCC44(v68 + v70, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          v65 = v68;
          goto LABEL_27;
        }

        v112 = *(v68 + *(v69 + 64));
        v113 = v304;
        v114 = sub_1CEFE55D0(v68, v304, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        if ((v112 & 2) == 0)
        {
          sub_1CEFCCC44(v113, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          v71 = &unk_1EC4BFBB0;
          v72 = &qword_1CF9FCB90;
          v65 = v68 + v70;
          goto LABEL_28;
        }

        MEMORY[0x1EEE9AC00](v114);
        v119 = v315;
        *(&v295 - 4) = v315;
        *(&v295 - 3) = v113;
        v294 = &v325;
        sub_1CF4739B0(v119, 0, v312, v313, sub_1CF482C28);
        sub_1CEFCCC44(v113, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v120 = &unk_1EC4BFBB0;
        v121 = &qword_1CF9FCB90;
        v122 = v68 + v70;
      }

      sub_1CEFCCC44(v122, v120, v121);
      return sub_1CEFCCC44(v314, &qword_1EC4BE710, &qword_1CF9FE5A8);
    }

    if (EnumCaseMultiPayload != 12)
    {
      if (EnumCaseMultiPayload != 13)
      {
        if (EnumCaseMultiPayload == 18)
        {
          sub_1CEFCCBDC(v48, v36, &qword_1EC4BE710, &qword_1CF9FE5A8);
          v56 = *v36;
          v57 = v36[8];
          if ((v36[9] & 1) == 0)
          {
            *&v324[0] = *v36;
            BYTE8(v324[0]) = v57;
            *&v323[0] = v312;
            BYTE8(v323[0]) = v313;
            MEMORY[0x1EEE9AC00](v56);
            v109 = v315;
            *(&v295 - 4) = v315;
            *(&v295 - 3) = v324;
            v294 = v323;
            sub_1CF4739B0(v109, 0, v110, v111, sub_1CF485ADC);
            return sub_1CEFCCC44(v314, &qword_1EC4BE710, &qword_1CF9FE5A8);
          }

          sub_1CEFD0994(v56, v57, 1);
        }

        goto LABEL_72;
      }

      sub_1CEFCCBDC(v48, v29, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v73 = *(v29 + 2);
      v74 = v29[10];
      if (v29[9])
      {
        v75 = *v29;
        v76 = v29[8];
        if (v74 != 2)
        {
          v77 = v316;
          if (v74 == 6)
          {
            *&v323[0] = v73;
            v78 = v73;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
            if (swift_dynamicCast())
            {
              v79 = LOBYTE(v324[1]);
              sub_1CF3386E4(*&v324[0], *(&v324[0] + 1), v324[1]);
              if (v79 <= 0xFB)
              {

                sub_1CEFD0994(v75, v76, 1);
                goto LABEL_97;
              }
            }

            *v321 = v73;
            v80 = v73;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
            if (swift_dynamicCast())
            {
              nullsub_1(v324);
              v323[6] = v324[6];
              v323[7] = v324[7];
              LOBYTE(v323[8]) = v324[8];
              v323[2] = v324[2];
              v323[3] = v324[3];
              v323[5] = v324[5];
              v323[4] = v324[4];
              v323[1] = v324[1];
              v323[0] = v324[0];
              if (sub_1CF2B971C(v323) == 14)
              {
                sub_1CEFD0994(v75, v76, 1);

                v322[6] = v324[6];
                v322[7] = v324[7];
                LOBYTE(v322[8]) = v324[8];
                v322[2] = v324[2];
                v322[3] = v324[3];
                v322[5] = v324[5];
                v322[4] = v324[4];
                v322[1] = v324[1];
                v322[0] = v324[0];
                sub_1CEFCCC44(v322, &unk_1EC4BFE40, &unk_1CFA05530);
LABEL_97:
                v130 = v314;
                return sub_1CEFCCC44(v130, &qword_1EC4BE710, &qword_1CF9FE5A8);
              }

              v322[6] = v324[6];
              v322[7] = v324[7];
              LOBYTE(v322[8]) = v324[8];
              v322[2] = v324[2];
              v322[3] = v324[3];
              v322[5] = v324[5];
              v322[4] = v324[4];
              v322[1] = v324[1];
              v322[0] = v324[0];
              v137 = v322;
            }

            else
            {
              sub_1CF480600(v322);
              v324[6] = v322[6];
              v324[7] = v322[7];
              v324[2] = v322[2];
              v324[3] = v322[3];
              v324[5] = v322[5];
              v324[4] = v322[4];
              v324[1] = v322[1];
              v324[0] = v322[0];
              v323[6] = v322[6];
              v323[7] = v322[7];
              v323[2] = v322[2];
              v323[3] = v322[3];
              v323[5] = v322[5];
              v323[4] = v322[4];
              LOBYTE(v324[8]) = v322[8];
              LOBYTE(v323[8]) = v322[8];
              v323[1] = v322[1];
              v323[0] = v322[0];
              v137 = v323;
            }

            sub_1CEFCCC44(v137, &unk_1EC4BFE40, &unk_1CFA05530);
            v156 = *(v315 + 16);
            sub_1CF7F5EA8(v75, v312, v313, v324);
            if (v77)
            {
              sub_1CEFD0994(v75, v76, 1);
              v157 = v73;
LABEL_110:

              goto LABEL_111;
            }

            memcpy(v323, v324, 0x208uLL);
            if (sub_1CF08B99C(v323) == 1)
            {
              sub_1CEFD0994(v75, v76, 1);

              memcpy(v322, v324, 0x208uLL);
              sub_1CEFCCC44(v322, &unk_1EC4BFD80, &unk_1CFA0A2A0);
LABEL_141:
              v130 = v314;
              return sub_1CEFCCC44(v130, &qword_1EC4BE710, &qword_1CF9FE5A8);
            }

            LODWORD(v310) = v76;
            memcpy(v322, v324, 0x208uLL);
            v366 = v324[10];
            v367 = v324[11];
            v368 = v324[12];
            v362 = v324[6];
            v363 = v324[7];
            v365 = v324[9];
            v364 = v324[8];
            v358 = v324[2];
            v359 = v324[3];
            v361 = v324[5];
            v360 = v324[4];
            v357 = v324[1];
            v356 = v324[0];
            v158 = *&v322[13];
            v159 = BYTE8(v322[13]);
            v376 = *(&v324[18] + 9);
            v377 = *(&v324[19] + 9);
            v378 = *(&v324[20] + 9);
            v374 = *(&v324[16] + 9);
            v375 = *(&v324[17] + 9);
            v371 = *(&v324[13] + 9);
            v372 = *(&v324[14] + 9);
            v373 = *(&v324[15] + 9);
            v380 = *(&v324[21] + 10);
            v381 = *(&v324[22] + 10);
            v384 = *(&v324[25] + 10);
            v385 = *(&v324[26] + 10);
            v382 = *(&v324[23] + 10);
            v383 = *(&v324[24] + 10);
            *(v389 + 14) = *(&v324[31] + 8);
            v388 = *(&v324[29] + 10);
            v389[0] = *(&v324[30] + 10);
            v386 = *(&v324[27] + 10);
            v387 = *(&v324[28] + 10);
            v369 = *&v322[13];
            v370 = BYTE8(v322[13]);
            v379 = BYTE9(v322[21]);
            if (BYTE8(v322[13]) == 255)
            {

              sub_1CEFCCC44(v322, &unk_1EC4BFD80, &unk_1CFA0A2A0);
              sub_1CEFD0994(v75, v310, 1);
              goto LABEL_141;
            }

            if (BYTE9(v322[21]) == 4)
            {
              v311 = v73;
              v316 = 0;
              v160 = fpfs_current_or_default_log();
              v161 = v299;
              sub_1CF9E6128();
              v162 = v75;
              v163 = sub_1CF9E6108();
              v164 = v75;
              v165 = sub_1CF9E72A8();
              if (os_log_type_enabled(v163, v165))
              {
                v166 = swift_slowAlloc();
                v309 = swift_slowAlloc();
                *v321 = v309;
                *v166 = 136446210;
                v167 = NSFileProviderItemIdentifier.description.getter();
                v169 = v168;
                sub_1CEFD0994(v164, v310, 1);
                v170 = sub_1CEFD0DF0(v167, v169, v321);

                *(v166 + 4) = v170;
                _os_log_impl(&dword_1CEFC7000, v163, v165, "👽  enumerating %{public}s is throttled, unfaulting folder to allow user access", v166, 0xCu);
                v171 = v309;
                __swift_destroy_boxed_opaque_existential_1(v309);
                MEMORY[0x1D386CDC0](v171, -1, -1);
                MEMORY[0x1D386CDC0](v166, -1, -1);

                (*(v297 + 8))(v299, v298);
              }

              else
              {
                sub_1CEFD0994(v164, v310, 1);

                (*(v297 + 8))(v161, v298);
              }

              sub_1CF7F6024(v321);
              memcpy(v355, v321, sizeof(v355));
              sub_1CF475E04(v158, v159, v355, v315, v312, v313);

              memcpy(v320, v321, sizeof(v320));
              sub_1CEFCCC44(v320, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
              sub_1CEFCCC44(v322, &unk_1EC4BFD80, &unk_1CFA0A2A0);
              sub_1CEFD0994(v164, v310, 1);
              return sub_1CEFCCC44(v314, &qword_1EC4BE710, &qword_1CF9FE5A8);
            }

            sub_1CEFCCC44(v322, &unk_1EC4BFD80, &unk_1CFA0A2A0);
            v128 = v75;
            v129 = v310;
LABEL_84:
            sub_1CEFD0994(v128, v129, 1);
LABEL_111:
            v130 = v314;
            return sub_1CEFCCC44(v130, &qword_1EC4BE710, &qword_1CF9FE5A8);
          }

          sub_1CEFD0994(v75, v76, 1);
LABEL_71:

          goto LABEL_72;
        }

        *&v323[0] = *(v29 + 2);
        v311 = v73;
        v123 = v73;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        v124 = swift_dynamicCast();
        v125 = v316;
        if (v124)
        {
          v126 = LOBYTE(v324[1]);
          sub_1CF3386E4(*&v324[0], *(&v324[0] + 1), v324[1]);
          v127 = v315;
          if (v126 <= 0xFB)
          {

            v128 = v75;
            v129 = v76;
            goto LABEL_84;
          }
        }

        else
        {
          v127 = v315;
        }

        LOBYTE(v324[0]) = 1;
        v132 = v76;
        v133 = v76 | 0x100;
        v134 = v75;
        v135 = v311;
        v136 = sub_1CF43CBE4(v311, v75, v133 | 0x20000u, v127);
        if (v125)
        {

          sub_1CF480E54(v75, v133 | 0x20000u);
          v128 = v75;
          v129 = v132;
          goto LABEL_84;
        }

        v150 = v136;
        sub_1CF480E54(v75, v133 | 0x20000u);
        if ((v150 & 1) == 0)
        {
          sub_1CEFD0994(v75, v132, 1);
          v157 = v311;
          goto LABEL_110;
        }

        v151 = *(v127 + 16);
        sub_1CF7F5EA8(v134, v312, v313, v324);
        memcpy(v323, v324, 0x208uLL);
        v172 = sub_1CF08B99C(v323);
        v173 = v311;
        if (v172 == 1)
        {
          sub_1CEFD0994(v75, v132, 1);

          memcpy(v322, v324, 0x208uLL);
          sub_1CEFCCC44(v322, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          goto LABEL_111;
        }

        memcpy(v392, v324, sizeof(v392));
        sub_1CF7F6024(v321);
        memcpy(v322, v324, 0x208uLL);
        sub_1CEFCCC44(v322, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        if (v321[137] != 3)
        {

          sub_1CEFCCC44(v321, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
          v128 = v75;
          v129 = v132;
          goto LABEL_84;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DE0, &unk_1CFA05398);
        v8 = swift_allocObject();
        v208 = MEMORY[0x1E69E7CC0];
        *(v8 + 32) = MEMORY[0x1E69E7CC0];
        *(v8 + 16) = v208;
        *(v8 + 24) = v208;
        *(v8 + 40) = v208;
        *(v8 + 48) = 0;
        v317[0] = 1;
        *&v390 = v75;
        BYTE8(v390) = v132;
        BYTE9(v390) = 1;
        WORD5(v390) = 262;
        v391 = 15;
        swift_beginAccess();
        v209 = v134;
        sub_1CF7E2EB0(&v390);
        swift_endAccess();
        v210 = v301;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v212 = v211;
        v43 = (*(v300 + 8))(v210, v302);
        v213 = v212 * 1000000000.0;
        if (COERCE__INT64(fabs(v212 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v213 > -9.22337204e18)
        {
          if (v213 < 9.22337204e18)
          {
            sub_1CF7F6588(v8, v213, v312, v313);
            swift_setDeallocating();
            v214 = *(v8 + 32);

            swift_deallocClassInstance();

            sub_1CEFCCC44(v321, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
            v128 = v75;
            v129 = v132;
            goto LABEL_84;
          }

          goto LABEL_239;
        }

        __break(1u);
LABEL_239:
        __break(1u);
        goto LABEL_240;
      }

      v115 = *v29;
      v116 = v29[8];
      v318 = *v29;
      v319 = v116;
      if ((v74 - 24) < 0x41)
      {
        goto LABEL_71;
      }

      v117 = 0;
      v8 = 1;
      if (v74 > 6)
      {
        if (((1 << v74) & 0x7FEF80) != 0)
        {
          goto LABEL_71;
        }

        v118 = 0;
        if (v74 != 12)
        {
LABEL_101:
          LODWORD(v310) = v118;
          v152 = v116;
          *&v323[0] = v73;
          v153 = v73;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
          if (swift_dynamicCast())
          {
            v154 = LOBYTE(v324[1]);
            sub_1CF3386E4(*&v324[0], *(&v324[0] + 1), v324[1]);
            v155 = v152;
            if (v154 <= 0xFB)
            {
LABEL_147:

              return sub_1CEFCCC44(v314, &qword_1EC4BE710, &qword_1CF9FE5A8);
            }
          }

          else
          {
            v155 = v152;
          }

          LOBYTE(v324[0]) = 0;
          v190 = v155 | (v74 << 16);
          v191 = v316;
          v192 = sub_1CF43CBE4(v73, v115, v190, v315);
          v193 = v73;
          v176 = v191;
          if (v191)
          {

            sub_1CF480E54(v115, v190);
            return sub_1CEFCCC44(v314, &qword_1EC4BE710, &qword_1CF9FE5A8);
          }

          v311 = v193;
          sub_1CF480E54(v115, v190);
          if (v192)
          {
            if (v8)
            {
              v201 = *(v315 + 16);
              sub_1CF7EB934(v115, v152, v312, v313, v324);
              memcpy(v323, v324, 0x208uLL);
              if (sub_1CF08B99C(v323) != 1)
              {
                memcpy(v329, v324, sizeof(v329));
                v225 = *(&v324[29] + 1);
                v226 = *&v324[30];
                v316 = (&v324[30] + 8);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DE0, &unk_1CFA05398);
                v227 = swift_allocObject();
                v228 = MEMORY[0x1E69E7CC0];
                *(v227 + 16) = MEMORY[0x1E69E7CC0];
                *(v227 + 24) = v228;
                *(v227 + 32) = v228;
                *(v227 + 40) = v228;
                *(v227 + 48) = 0;
                LOBYTE(v320[0]) = 0;
                *&v330 = v115;
                WORD4(v330) = v152;
                v331 = 0x80000000000;
                v332 = v225;
                v333 = v226;
                v334 = 2560;
                swift_beginAccess();
                sub_1CF7E2EB0(&v330);
                swift_endAccess();
                memcpy(v322, v324, 0x1D8uLL);
                *(&v322[29] + 1) = v225;
                *&v322[30] = v226;
                v229 = v316[1];
                *(&v322[30] + 8) = *v316;
                *(&v322[31] + 8) = v229;
                sub_1CEFCCBDC(v322, v321, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
                sub_1CF436B64(v115, v152, v329, v225, v226, 0x10000, v315, v227, v312, v313);
                v8 = 0;
                sub_1CEFCCC44(v329, &unk_1EC4BFC20, &unk_1CFA0A290);
                v243 = v301;
                sub_1CF9E5CE8();
                sub_1CF9E5C98();
                v245 = v244;
                v43 = (*(v300 + 8))(v243, v302);
                v246 = v245 * 1000000000.0;
                if (COERCE__INT64(fabs(v245 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
                {
                  goto LABEL_243;
                }

                if (v246 <= -9.22337204e18)
                {
LABEL_244:
                  __break(1u);
                  goto LABEL_245;
                }

                if (v246 >= 9.22337204e18)
                {
LABEL_245:
                  __break(1u);
                  goto LABEL_246;
                }

                sub_1CF7F6588(v227, v246, v312, v313);
                sub_1CEFCCC44(v329, &unk_1EC4BFC20, &unk_1CFA0A290);
                swift_setDeallocating();
                v273 = *(v227 + 16);

                v274 = *(v227 + 24);

                v275 = *(v227 + 32);

                v276 = *(v227 + 40);

                v200 = swift_deallocClassInstance();
                if (!v117)
                {
                  goto LABEL_181;
                }

                goto LABEL_154;
              }

              memcpy(v322, v324, 0x208uLL);
              v200 = sub_1CEFCCC44(v322, &unk_1EC4BFC20, &unk_1CFA0A290);
            }

            if (!v117)
            {
              goto LABEL_181;
            }

LABEL_154:
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DE0, &unk_1CFA05398);
            v202 = swift_allocObject();
            v203 = MEMORY[0x1E69E7CC0];
            v202[2] = MEMORY[0x1E69E7CC0];
            v202[3] = v203;
            v202[4] = v203;
            v202[5] = v203;
            v202[6] = 0;
            LOBYTE(v323[0]) = 0;
            *&v327 = v318;
            WORD4(v327) = v319;
            WORD5(v327) = 262;
            v328 = 15;
            swift_beginAccess();
            sub_1CF7E2EB0(&v327);
            swift_endAccess();
            v204 = v301;
            sub_1CF9E5CE8();
            sub_1CF9E5C98();
            v206 = v205;
            v43 = (*(v300 + 8))(v204, v302);
            v207 = v206 * 1000000000.0;
            if (COERCE__INT64(fabs(v206 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
            {
LABEL_240:
              __break(1u);
              goto LABEL_241;
            }

            if (v207 <= -9.22337204e18)
            {
LABEL_241:
              __break(1u);
              goto LABEL_242;
            }

            if (v207 >= 9.22337204e18)
            {
LABEL_242:
              __break(1u);
LABEL_243:
              __break(1u);
              goto LABEL_244;
            }

            sub_1CF7F6588(v202, v207, v312, v313);
            swift_setDeallocating();
            v221 = v202[4];

            v200 = swift_deallocClassInstance();
LABEL_181:
            *&v324[0] = v318;
            BYTE8(v324[0]) = v319;
            *&v323[0] = v312;
            BYTE8(v323[0]) = v313;
            MEMORY[0x1EEE9AC00](v200);
            v222 = v315;
            *(&v295 - 4) = v315;
            *(&v295 - 3) = v324;
            v294 = v323;
            sub_1CF4739B0(v222, 0, v223, v224, sub_1CF482B60);

            return sub_1CEFCCC44(v314, &qword_1EC4BE710, &qword_1CF9FE5A8);
          }

          (*(**(v315 + 32) + 288))(v324, &v318, &v325, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          LOBYTE(v180) = BYTE8(v324[0]);
          if (BYTE8(v324[0]) == 255)
          {

            return sub_1CEFCCC44(v314, &qword_1EC4BE710, &qword_1CF9FE5A8);
          }

          v85 = *&v324[0];
          v218 = *(v315 + 16);
          sub_1CF7EB934(*&v324[0], BYTE8(v324[0]), v312, v313, v324);
          memcpy(v323, v324, 0x208uLL);
          if (sub_1CF08B99C(v323) == 1)
          {

            memcpy(v322, v324, 0x208uLL);
LABEL_208:
            v272 = v322;
LABEL_209:
            sub_1CEFCCC44(v272, &unk_1EC4BFC20, &unk_1CFA0A290);
            return sub_1CEFCCC44(v314, &qword_1EC4BE710, &qword_1CF9FE5A8);
          }

          memcpy(v322, v324, 0x208uLL);
          v336[6] = v324[6];
          *v337 = v324[7];
          *&v337[9] = *(&v324[7] + 9);
          v336[2] = v324[2];
          v336[3] = v324[3];
          v336[5] = v324[5];
          v336[4] = v324[4];
          v336[1] = v324[1];
          v336[0] = v324[0];
          memcpy(v339, &v324[8] + 10, sizeof(v339));
          v338 = BYTE9(v322[8]);
          if (BYTE9(v322[8]) != 3)
          {
LABEL_207:

            goto LABEL_208;
          }

          goto LABEL_202;
        }

        LODWORD(v8) = 0;
        v117 = 1;
LABEL_100:
        v118 = v8;
        v8 = 0;
        goto LABEL_101;
      }

      if ((v74 - 1) < 5)
      {
        goto LABEL_71;
      }

      if (!v74)
      {
        goto LABEL_100;
      }

      LODWORD(v310) = v116;
      *&v323[0] = v73;
      v194 = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      if (swift_dynamicCast())
      {
        v195 = LOBYTE(v324[1]);
        sub_1CF3386E4(*&v324[0], *(&v324[0] + 1), v324[1]);
        if (v195 <= 0xFB)
        {
          goto LABEL_147;
        }
      }

      *v321 = v73;
      v196 = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      if (swift_dynamicCast())
      {
        nullsub_1(v324);
        v323[6] = v324[6];
        v323[7] = v324[7];
        LOBYTE(v323[8]) = v324[8];
        v323[2] = v324[2];
        v323[3] = v324[3];
        v323[5] = v324[5];
        v323[4] = v324[4];
        v323[1] = v324[1];
        v323[0] = v324[0];
        if (sub_1CF2B971C(v323) == 14)
        {

          v322[6] = v324[6];
          v322[7] = v324[7];
          LOBYTE(v322[8]) = v324[8];
          v322[2] = v324[2];
          v322[3] = v324[3];
          v322[5] = v324[5];
          v322[4] = v324[4];
          v322[1] = v324[1];
          v322[0] = v324[0];
          v197 = &unk_1EC4BFE40;
          v198 = &unk_1CFA05530;
          v199 = v322;
LABEL_220:
          sub_1CEFCCC44(v199, v197, v198);
          return sub_1CEFCCC44(v314, &qword_1EC4BE710, &qword_1CF9FE5A8);
        }

        v322[6] = v324[6];
        v322[7] = v324[7];
        LOBYTE(v322[8]) = v324[8];
        v322[2] = v324[2];
        v322[3] = v324[3];
        v322[5] = v324[5];
        v322[4] = v324[4];
        v322[1] = v324[1];
        v322[0] = v324[0];
        v215 = v322;
      }

      else
      {
        sub_1CF480600(v322);
        v324[6] = v322[6];
        v324[7] = v322[7];
        v324[2] = v322[2];
        v324[3] = v322[3];
        v324[5] = v322[5];
        v324[4] = v322[4];
        v324[1] = v322[1];
        v324[0] = v322[0];
        v323[6] = v322[6];
        v323[7] = v322[7];
        v323[2] = v322[2];
        v323[3] = v322[3];
        v323[5] = v322[5];
        v323[4] = v322[4];
        LOBYTE(v324[8]) = v322[8];
        LOBYTE(v323[8]) = v322[8];
        v323[1] = v322[1];
        v323[0] = v322[0];
        v215 = v323;
      }

      sub_1CEFCCC44(v215, &unk_1EC4BFE40, &unk_1CFA05530);
      v216 = v316;
      v217 = *(v315 + 16);
      v309 = v115;
      sub_1CF7EB934(v115, v310, v312, v313, v324);
      if (v216)
      {

        return sub_1CEFCCC44(v314, &qword_1EC4BE710, &qword_1CF9FE5A8);
      }

      v311 = v73;
      v316 = 0;
      memcpy(v323, v324, 0x208uLL);
      if (sub_1CF08B99C(v323) == 1)
      {

        memcpy(v322, v324, 0x208uLL);
        v197 = &unk_1EC4BFC20;
        v198 = &unk_1CFA0A290;
        v199 = v322;
        goto LABEL_220;
      }

      memcpy(v343, v324, sizeof(v343));
      v347[6] = v324[6];
      *v348 = v324[7];
      *&v348[9] = *(&v324[7] + 9);
      v347[2] = v324[2];
      v347[3] = v324[3];
      v347[5] = v324[5];
      v347[4] = v324[4];
      v347[1] = v324[1];
      v347[0] = v324[0];
      memcpy(v350, &v324[8] + 11, sizeof(v350));
      v305 = &v324[30] + 8;
      v306 = *&v324[30];
      v353 = *(&v324[30] + 8);
      v354 = *(&v324[31] + 8);
      v349 = *(&v324[8] + 9);
      LODWORD(v308) = BYTE10(v324[8]);
      v307 = *(&v324[29] + 1);
      v351 = *(&v324[29] + 1);
      v352 = *&v324[30];
      if (BYTE9(v324[8]) != 3)
      {
        goto LABEL_218;
      }

      LOBYTE(v322[0]) = 0;
      v219 = v316;
      v220 = sub_1CF43CBE4(v311, v309, v310 | 0x60000, v315);
      v316 = v219;
      if (v219)
      {

        sub_1CF480E54(v309, v310 | 0x60000);
LABEL_219:
        v197 = &unk_1EC4BFC20;
        v198 = &unk_1CFA0A290;
        v199 = v343;
        goto LABEL_220;
      }

      v230 = v220;
      sub_1CF480E54(v309, v310 | 0x60000);
      if ((v230 & 1) == 0)
      {
        if ((v308 & 1) == 0)
        {
          v247 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v248 = sub_1CF9E6108();
          v249 = sub_1CF9E72A8();
          if (os_log_type_enabled(v248, v249))
          {
            v250 = swift_slowAlloc();
            v251 = swift_slowAlloc();
            *v321 = v251;
            *v250 = 136446210;
            *&v322[0] = v309;
            BYTE8(v322[0]) = v310;
            v253 = VFSItemID.description.getter(v251, v252);
            v255 = sub_1CEFD0DF0(v253, v254, v321);

            *(v250 + 4) = v255;
            _os_log_impl(&dword_1CEFC7000, v248, v249, "👽  enumerating %{public}s is throttled, unfaulting folder to allow user access", v250, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v251);
            MEMORY[0x1D386CDC0](v251, -1, -1);
            MEMORY[0x1D386CDC0](v250, -1, -1);
          }

          (*(v297 + 8))(v295, v298);
          v256 = v316;
          sub_1CF475E04(v309, v310, v347, v315, v312, v313);
          v316 = v256;
        }

        goto LABEL_218;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DE0, &unk_1CFA05398);
      v231 = swift_allocObject();
      v232 = MEMORY[0x1E69E7CC0];
      *(v231 + 16) = MEMORY[0x1E69E7CC0];
      *(v231 + 24) = v232;
      *(v231 + 32) = v232;
      *(v231 + 40) = v232;
      v304 = v231 + 40;
      *(v231 + 48) = 0;
      v233 = v309;
      *v317 = v309;
      v234 = v310;
      *&v317[8] = v310;
      v317[16] = 0;
      v317[82] = 10;
      v344[2] = *&v317[32];
      v344[3] = *&v317[48];
      v345[0] = *&v317[64];
      *(v345 + 15) = *&v317[79];
      v344[0] = *v317;
      v344[1] = *&v317[16];
      v346 = 9;
      swift_beginAccess();
      sub_1CEFCCBDC(v317, v321, &unk_1EC4BFCF0, &unk_1CFA05410);
      sub_1CF7E2EB0(v344);
      swift_endAccess();
      sub_1CEFCCC44(v317, &unk_1EC4BFCF0, &unk_1CFA05410);
      v322[6] = v324[6];
      v322[7] = v324[7];
      *(&v322[7] + 9) = *(&v324[7] + 9);
      v322[2] = v324[2];
      v322[3] = v324[3];
      v322[5] = v324[5];
      v322[4] = v324[4];
      v322[1] = v324[1];
      v322[0] = v324[0];
      BYTE9(v322[8]) = 3;
      BYTE10(v322[8]) = v308;
      memcpy(&v322[8] + 11, &v324[8] + 11, 0x14DuLL);
      v235 = v306;
      v236 = v307;
      *(&v322[29] + 1) = v307;
      *&v322[30] = v306;
      v237 = *(v305 + 1);
      *(&v322[30] + 8) = *v305;
      *(&v322[31] + 8) = v237;
      sub_1CEFCCBDC(v322, v321, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      v238 = v316;
      sub_1CF436B64(v233, v234, v343, v236, v235, 0x10000, v315, v231, v312, v313);
      if (v238)
      {
        swift_setDeallocating();
        v239 = *(v231 + 16);

        v240 = *(v231 + 24);

        v241 = *(v231 + 32);

        v242 = *(v231 + 40);

        swift_deallocClassInstance();
        sub_1CEFCCC44(v343, &unk_1EC4BFC20, &unk_1CFA0A290);
        sub_1CEFCCC44(v343, &unk_1EC4BFC20, &unk_1CFA0A290);
        return sub_1CEFCCC44(v314, &qword_1EC4BE710, &qword_1CF9FE5A8);
      }

      sub_1CEFCCC44(v343, &unk_1EC4BFC20, &unk_1CFA0A290);
      if ((v308 & 1) == 0)
      {
        v277 = v309;
        *v321 = v309;
        v278 = v310;
        *&v321[8] = v310;
        *&v321[16] = 5;
        v279 = v306;
        *&v321[24] = v307;
        *&v321[32] = v306;
        v321[114] = 12;
        v340[4] = *&v321[64];
        v340[5] = *&v321[80];
        *v341 = *&v321[96];
        *&v341[15] = *&v321[111];
        v340[0] = *v321;
        v340[1] = *&v321[16];
        v340[3] = *&v321[48];
        v340[2] = *&v321[32];
        v342 = 10;
        swift_beginAccess();
        sub_1CEFCCBDC(v321, v320, &unk_1EC4BFD00, &unk_1CFA05420);
        sub_1CF7E2EB0(v340);
        swift_endAccess();
        sub_1CEFCCC44(v321, &unk_1EC4BFD00, &unk_1CFA05420);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA50, &unk_1CFA05480);
        v280 = swift_allocObject();
        *(v280 + 152) = v278;
        *(v280 + 16) = 0u;
        *(v280 + 32) = 0u;
        *(v280 + 48) = 1;
        *(v280 + 56) = 0u;
        *(v280 + 72) = 0u;
        *(v280 + 88) = 0;
        *(v280 + 120) = v307;
        *(v280 + 128) = v279;
        *(v280 + 136) = 1;
        *(v280 + 144) = v277;
        *(v280 + 96) = xmmword_1CFA04EA0;
        *(v280 + 112) = 0;
        swift_beginAccess();

        sub_1CF7E3218(v281);
        swift_endAccess();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCB0, &unk_1CF9FAE60);
      v282 = swift_allocObject();
      *(v282 + 152) = v310;
      *(v282 + 16) = 0u;
      *(v282 + 32) = 0u;
      *(v282 + 48) = 1;
      *(v282 + 56) = 0u;
      *(v282 + 72) = 0u;
      *(v282 + 88) = 0;
      v283 = v306;
      *(v282 + 120) = v307;
      *(v282 + 128) = v283;
      v284 = v309;
      *(v282 + 136) = 0x400000;
      *(v282 + 144) = v284;
      *(v282 + 96) = xmmword_1CFA04E20;
      *(v282 + 112) = 0;
      swift_beginAccess();

      sub_1CF7E3218(v285);
      swift_endAccess();

      v286 = v301;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v288 = v287;
      result = (*(v300 + 8))(v286, v302);
      v289 = v288 * 1000000000.0;
      if (COERCE__INT64(fabs(v288 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v289 > -9.22337204e18)
      {
        if (v289 < 9.22337204e18)
        {
          sub_1CF7F6588(v231, v289, v312, v313);
          v316 = 0;
          swift_setDeallocating();
          v290 = *(v231 + 16);

          v291 = *(v231 + 24);

          v292 = *(v231 + 32);

          v293 = *(v231 + 40);

          swift_deallocClassInstance();
LABEL_218:

          goto LABEL_219;
        }

LABEL_250:
        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_250;
    }

    v66 = v311;
    v67 = sub_1CEFCCBDC(v48, v311, &qword_1EC4BE710, &qword_1CF9FE5A8);
    if (*(v66 + 9))
    {
      sub_1CF47FDFC(v66[2], *(v66 + 12));
      sub_1CEFD0994(*v66, *(v66 + 8), *(v66 + 9));
LABEL_72:
      v130 = v48;
      return sub_1CEFCCC44(v130, &qword_1EC4BE710, &qword_1CF9FE5A8);
    }

    v83 = *(v66 + 26);
    v84 = *(v66 + 27);
    v85 = *v66;
    v86 = *(v66 + 8);
    *&v324[0] = *v66;
    BYTE8(v324[0]) = v86;
    v87 = v316;
    if (v84 != 2)
    {
      v88 = v315;
      if (v84 == 3)
      {
        MEMORY[0x1EEE9AC00](v67);
        *(&v295 - 4) = v88;
        *(&v295 - 3) = v324;
        v294 = &v325;
        v105 = sub_1CF485AF4;
        v106 = v88;
        v103 = v312;
        v104 = v313;
LABEL_75:
        v67 = sub_1CF4739B0(v106, 0, v103, v104, v105);
        if (!v87)
        {
          goto LABEL_118;
        }

LABEL_80:
        sub_1CF47FDFC(v66[2], *(v66 + 12));
        return sub_1CEFCCC44(v314, &qword_1EC4BE710, &qword_1CF9FE5A8);
      }

      if (v84 != 6)
      {
        goto LABEL_119;
      }

      v89 = (*(**(v315 + 16) + 232))(&v325, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      if (v87)
      {
        goto LABEL_80;
      }

      if (v89)
      {
LABEL_52:
        *&v323[0] = v85;
        BYTE8(v323[0]) = v86;
        *&v322[0] = v312;
        BYTE8(v322[0]) = v313;
        MEMORY[0x1EEE9AC00](v89);
        *(&v295 - 4) = v88;
        *(&v295 - 3) = v323;
        v294 = v322;
        v105 = sub_1CF485ADC;
        v106 = v88;
        goto LABEL_75;
      }

      (*(**(*(v88 + 4) + 16) + 96))(v323);
      v90 = v301;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v92 = v91;
      v93 = *(v300 + 8);
      v93(v90, v302);
      v94 = v92 * 1000000000.0;
      if (COERCE__INT64(fabs(v92 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v94 > -9.22337204e18)
        {
          if (v94 < 9.22337204e18)
          {
            v95 = v94;
            v96 = *&v323[0];
            v97 = BYTE8(v323[0]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA28, &unk_1CFA05660);
            v98 = swift_allocObject();
            *(v98 + 152) = v97;
            *(v98 + 16) = 0u;
            *(v98 + 32) = 0u;
            *(v98 + 48) = 1;
            *(v98 + 56) = 0u;
            *(v98 + 72) = 0u;
            *(v98 + 88) = 0;
            *(v98 + 96) = xmmword_1CF9FEC30;
            *(v98 + 112) = 0;
            *(v98 + 120) = 0x2000000000000000;
            *(v98 + 128) = v95;
            *(v98 + 136) = 0x20000;
            *(v98 + 144) = v96;
            v99 = v301;
            sub_1CF9E5CE8();
            sub_1CF9E5C98();
            v101 = v100;
            v93(v99, v302);
            v102 = v101 * 1000000000.0;
            if (COERCE__INT64(fabs(v101 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v88 = v315;
              v66 = v311;
              if (v102 > -9.22337204e18)
              {
                if (v102 < 9.22337204e18)
                {
                  sub_1CF902E70(v98, v102, v312, v313);

                  v85 = *&v324[0];
                  v86 = BYTE8(v324[0]);
                  goto LABEL_52;
                }

LABEL_233:
                __break(1u);
                goto LABEL_234;
              }

              goto LABEL_231;
            }

            goto LABEL_229;
          }

          goto LABEL_227;
        }

        goto LABEL_225;
      }

      goto LABEL_223;
    }

    v88 = v315;
    v67 = (*(**(v315 + 16) + 240))(&v325, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    if (v87)
    {
      goto LABEL_80;
    }

    if ((v67 & 1) == 0)
    {
      (*(**(*(v88 + 4) + 16) + 96))(v323);
      v138 = v301;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v140 = v139;
      v141 = *(v300 + 8);
      v141(v138, v302);
      v142 = v140 * 1000000000.0;
      if (COERCE__INT64(fabs(v140 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_223:
        __break(1u);
        goto LABEL_224;
      }

      if (v142 <= -9.22337204e18)
      {
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
        goto LABEL_226;
      }

      if (v142 >= 9.22337204e18)
      {
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
        goto LABEL_228;
      }

      v143 = v142;
      v144 = *&v323[0];
      v145 = BYTE8(v323[0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA28, &unk_1CFA05660);
      v85 = swift_allocObject();
      *(v85 + 152) = v145;
      *(v85 + 16) = 0u;
      *(v85 + 32) = 0u;
      *(v85 + 48) = 1;
      *(v85 + 56) = 0u;
      *(v85 + 72) = 0u;
      *(v85 + 88) = 0;
      *(v85 + 96) = xmmword_1CF9FEC30;
      *(v85 + 112) = 0;
      *(v85 + 120) = 0x2000000000000000;
      *(v85 + 128) = v143;
      *(v85 + 136) = 0x20000;
      *(v85 + 144) = v144;
      v146 = v301;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v148 = v147;
      v141(v146, v302);
      v149 = v148 * 1000000000.0;
      if (COERCE__INT64(fabs(v148 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
        goto LABEL_230;
      }

      v88 = v315;
      v66 = v311;
      if (v149 <= -9.22337204e18)
      {
LABEL_230:
        __break(1u);
LABEL_231:
        __break(1u);
        goto LABEL_232;
      }

      if (v149 >= 9.22337204e18)
      {
LABEL_232:
        __break(1u);
        goto LABEL_233;
      }

      sub_1CF902E70(v85, v149, v312, v313);
    }

LABEL_118:
    v48 = v314;
LABEL_119:
    if (v83 != 3)
    {
      if (v83)
      {
        goto LABEL_135;
      }

      *&v323[0] = *&v324[0];
      BYTE8(v323[0]) = BYTE8(v324[0]);
      *&v322[0] = v312;
      BYTE8(v322[0]) = v313;
      MEMORY[0x1EEE9AC00](v67);
      *(&v295 - 4) = v88;
      *(&v295 - 3) = v323;
      v294 = v322;
      sub_1CF4739B0(v88, 1, v174, v175, sub_1CF485ADC);
      if (!v87)
      {
LABEL_134:
        v48 = v314;
LABEL_135:
        sub_1CF47FDFC(v66[2], *(v66 + 12));
        v189 = v48;
        return sub_1CEFCCC44(v189, &qword_1EC4BE710, &qword_1CF9FE5A8);
      }

      goto LABEL_131;
    }

    v176 = v87;
    (*(**(*(v88 + 4) + 16) + 96))(v323, v67);
    v177 = v301;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v179 = v178;
    v180 = *(v300 + 8);
    v180(v177, v302);
    v181 = v179 * 1000000000.0;
    if (COERCE__INT64(fabs(v179 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v181 > -9.22337204e18)
    {
      if (v181 < 9.22337204e18)
      {
        v182 = v181;
        v183 = *&v323[0];
        v184 = BYTE8(v323[0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA28, &unk_1CFA05660);
        v85 = swift_allocObject();
        *(v85 + 152) = v184;
        *(v85 + 16) = 0u;
        *(v85 + 32) = 0u;
        *(v85 + 48) = 1;
        *(v85 + 56) = 0u;
        *(v85 + 72) = 0u;
        *(v85 + 88) = 0;
        *(v85 + 96) = xmmword_1CF9FEC30;
        *(v85 + 112) = 0;
        *(v85 + 120) = 0x2000000000000000;
        *(v85 + 128) = v182;
        *(v85 + 136) = 0x20000;
        *(v85 + 144) = v183;
        v185 = v301;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v187 = v186;
        v180(v185, v302);
        v188 = v187 * 1000000000.0;
        if (COERCE__INT64(fabs(v187 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v66 = v311;
          if (v188 > -9.22337204e18)
          {
            if (v188 < 9.22337204e18)
            {
              sub_1CF902E70(v85, v188, v312, v313);
              if (!v87)
              {

                goto LABEL_134;
              }

LABEL_131:
              sub_1CF47FDFC(v66[2], *(v66 + 12));
              v189 = v314;
              return sub_1CEFCCC44(v189, &qword_1EC4BE710, &qword_1CF9FE5A8);
            }

LABEL_201:
            __break(1u);
LABEL_202:
            v257 = fpfs_current_or_default_log();
            sub_1CF9E6128();
            v258 = v318;
            LODWORD(v309) = v319;
            v259 = sub_1CF9E6108();
            LODWORD(v316) = sub_1CF9E72A8();
            if (os_log_type_enabled(v259, v316))
            {
              v260 = swift_slowAlloc();
              v261 = swift_slowAlloc();
              v308 = v261;
              v320[0] = v261;
              *v260 = 136446466;
              *v321 = v258;
              v321[8] = v309;
              v263 = VFSItemID.description.getter(v261, v262);
              v265 = sub_1CEFD0DF0(v263, v264, v320);

              *(v260 + 4) = v265;
              *(v260 + 12) = 2082;
              *v321 = v85;
              v321[8] = v180;
              v268 = VFSItemID.description.getter(v266, v267);
              v270 = sub_1CEFD0DF0(v268, v269, v320);

              *(v260 + 14) = v270;
              _os_log_impl(&dword_1CEFC7000, v259, v316, "👽  import of %{public}s within %{public}s is throttled, unfaulting folder to allow user access", v260, 0x16u);
              v271 = v308;
              swift_arrayDestroy();
              MEMORY[0x1D386CDC0](v271, -1, -1);
              MEMORY[0x1D386CDC0](v260, -1, -1);
            }

            (*(v297 + 8))(v296, v298);
            sub_1CF475E04(v85, v180, v336, v315, v312, v313);
            if (v176 || (v310 & 1) == 0)
            {
              goto LABEL_207;
            }

            sub_1CF7EB934(v318, v319, v312, v313, v321);
LABEL_234:
            memcpy(v320, v321, sizeof(v320));
            if (sub_1CF08B99C(v320) == 1)
            {

              sub_1CEFCCC44(v322, &unk_1EC4BFC20, &unk_1CFA0A290);
              memcpy(v317, v321, sizeof(v317));
              v272 = v317;
            }

            else
            {
              memcpy(v317, v321, sizeof(v317));
              memcpy(v335, v321, sizeof(v335));
              sub_1CF475E04(v318, v319, v335, v315, v312, v313);

              sub_1CEFCCC44(v317, &unk_1EC4BFC20, &unk_1CFA0A290);
              v272 = v322;
            }

            goto LABEL_209;
          }

LABEL_200:
          __break(1u);
          goto LABEL_201;
        }

LABEL_199:
        __break(1u);
        goto LABEL_200;
      }

LABEL_198:
      __break(1u);
      goto LABEL_199;
    }

    __break(1u);
    goto LABEL_198;
  }

  return result;
}

uint64_t sub_1CF40212C(uint64_t a1, char a2, int a3, void *a4, unsigned int (**a5)(uint64_t, uint64_t, uint64_t), int a6)
{
  LODWORD(v330) = a6;
  v329 = a5;
  v302 = a4;
  LODWORD(v303) = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DD0, &unk_1CF9FCB30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v299 = v295 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20);
  v332 = *(v12 - 8);
  v13 = *(v332 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v311 = v295 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v316 = v295 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v324 = (v295 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  *&v325 = v295 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v300 = v295 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v306 = v295 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v327 = (v295 - v26);
  v27 = MEMORY[0x1EEE9AC00](v25);
  *&v320 = v295 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v321 = v295 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v326 = (v295 - v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C0, &unk_1CFA058B0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v310 = v295 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v319 = v295 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v313 = v295 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  *&v331 = v295 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v309 = (v295 - v43);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v304 = v295 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v323 = v295 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  *&v318 = v295 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v312 = v295 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v307 = (v295 - v53);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v328 = v295 - v55;
  MEMORY[0x1EEE9AC00](v54);
  v315 = v295 - v56;
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10);
  v308 = *(v305 - 8);
  v57 = *(v308 + 64);
  v58 = MEMORY[0x1EEE9AC00](v305);
  v296 = v295 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1EEE9AC00](v58);
  v301 = v295 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v297 = v295 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v65 = v295 - v64;
  MEMORY[0x1EEE9AC00](v63);
  v314 = (v295 - v66);
  v67 = a1;
  v355 = a1;
  v68 = a2;
  v356 = a2;
  v353 = v329;
  v354 = v330;
  v69 = qword_1EDEBBC70;
  result = swift_beginAccess();
  v317 = v6;
  v298 = v69;
  v71 = *&v6[v69];
  if (!*(v71 + 16))
  {
    return result;
  }

  result = sub_1CF7BF2C0(v67, v68);
  if ((v72 & 1) == 0)
  {
    return result;
  }

  v295[1] = v13;
  v73 = v303;
  v74 = &qword_1CFA07B10;
  sub_1CEFCCBDC(*(v71 + 56) + *(v308 + 72) * result, v65, &unk_1EC4C04C0, &qword_1CFA07B10);
  v75 = v314;
  sub_1CEFE55D0(v65, v314, &unk_1EC4C04C0, &qword_1CFA07B10);
  v333 = v12;
  if (v73 != 5)
  {
    if (v73 == 4)
    {
      if (v302)
      {
        v76 = v75;
        return sub_1CEFCCC44(v76, &unk_1EC4C04C0, &qword_1CFA07B10);
      }

      v139 = *(v75 + *(v305 + 56));
      v140 = *(v139 + 8);
      v309 = v139 + 64;
      v141 = 1 << v139[32];
      v142 = -1;
      if (v141 < 64)
      {
        v142 = ~(-1 << v141);
      }

      v143 = v142 & v140;
      v319 = v320 + 8;
      v304 = (v141 + 63) >> 6;
      v329 = (v332 + 48);
      v330 = (v332 + 56);

      v323 = v139;

      v144 = 0;
      v145 = v321;
LABEL_42:
      v146 = v331;
      while (v143)
      {
        v147 = v144;
LABEL_54:
        v150 = __clz(__rbit64(v143));
        v143 &= v143 - 1;
        sub_1CEFCCBDC(*(v323 + 7) + *(v332 + 72) * (v150 | (v147 << 6)), v146, &unk_1EC4C04B0, &unk_1CF9FCB20);
        v151 = 0;
LABEL_55:
        v152 = *v330;
        v153 = 1;
        (*v330)(v146, v151, 1, v12);
        v154 = *v329;
        if ((*v329)(v146, 1, v12) != 1)
        {
          *&v325 = v152;
          v155 = *(v12 + 80);
          v311 = *(v12 + 96);
          v318 = *v146;
          v316 = *(v146 + 16);
          v156 = sub_1CF9E6448();
          v310 = *(*(v156 - 8) + 32);
          v157 = v326;
          (v310)(v326 + v155, v331 + v155, v156);
          v158 = swift_allocObject();
          v324 = v154;
          v159 = v158;
          *(v158 + 16) = *(v331 + v311);
          v160 = *(v333 + 80);
          v161 = v328;
          v162 = &v328[*(v333 + 96)];
          *v328 = v318;
          *(v161 + 2) = v316;
          v163 = v157 + v155;
          v152 = v325;
          (v310)(&v161[v160], v163, v156);
          v12 = v333;
          v153 = 0;
          *v162 = sub_1CF485B60;
          *(v162 + 1) = v159;
          v145 = v321;
          v154 = v324;
        }

        v164 = v328;
        v152(v328, v153, 1, v12);
        v165 = v315;
        sub_1CEFE55D0(v164, v315, &qword_1EC4BE1C0, &unk_1CFA058B0);
        if (v154(v165, 1, v12) == 1)
        {
          v324 = v154;
          *&v325 = v152;
          v182 = v323;

          v183 = v355;
          v184 = v356;
          v185 = v299;
          (*(v308 + 56))(v299, 1, 1, v305);
          swift_beginAccess();
          sub_1CF1CA348(v185, v183, v184);
          swift_endAccess();
          v186 = 1 << v182[32];
          v187 = -1;
          if (v186 < 64)
          {
            v187 = ~(-1 << v186);
          }

          v188 = v187 & *(v182 + 8);
          v315 = v306 + 8;
          v310 = ((v186 + 63) >> 6);
          v311 = (v326 + 1);

          v189 = 0;
          v190 = v313;
          while (v188)
          {
            v192 = v189;
            v194 = v324;
            v193 = v325;
LABEL_78:
            v197 = __clz(__rbit64(v188));
            v188 &= v188 - 1;
            sub_1CEFCCBDC(*(v323 + 7) + *(v332 + 72) * (v197 | (v192 << 6)), v190, &unk_1EC4C04B0, &unk_1CF9FCB20);
            v198 = 0;
LABEL_79:
            v199 = 1;
            v193(v190, v198, 1, v12);
            if (v194(v190, 1, v12) != 1)
            {
              v200 = *(v12 + 80);
              v321 = *(v333 + 96);
              v201 = v313;
              v331 = *v313;
              v328 = *(v313 + 2);
              v202 = sub_1CF9E6448();
              *&v320 = *(*(v202 - 8) + 32);
              v203 = v326;
              (v320)(v326 + v200, &v201[v200], v202);
              v204 = swift_allocObject();
              *(v204 + 16) = *&v201[v321];
              v205 = *(v333 + 80);
              v206 = v312;
              v207 = &v312[*(v333 + 96)];
              *v312 = v331;
              *(v206 + 2) = v328;
              (v320)(&v206[v205], v203 + v200, v202);
              v199 = 0;
              *v207 = sub_1CF485B60;
              *(v207 + 1) = v204;
              v194 = v324;
              v193 = v325;
              v12 = v333;
            }

            v208 = v312;
            v193(v312, v199, 1, v12);
            v209 = v307;
            sub_1CEFE55D0(v208, v307, &qword_1EC4BE1C0, &unk_1CFA058B0);
            if (v194(v209, 1, v12) == 1)
            {

              v75 = v314;
              goto LABEL_91;
            }

            v210 = *v209;
            v211 = v209[1];
            v212 = v209[2];
            v213 = *(v12 + 80);
            v214 = *(v12 + 96);
            v215 = *(v209 + v214 + 8);
            *&v331 = *(v209 + v214);
            v216 = v327;
            v217 = (v327 + v214);
            *v327 = v210;
            *(v216 + 1) = v211;
            *(v216 + 2) = v212;
            v218 = sub_1CF9E6448();
            v321 = *(v218 - 8);
            v219 = *(v321 + 32);
            v220 = v216 + v213;
            v221 = v209 + v213;
            v222 = v215;
            v223 = v331;
            v328 = v218;
            v219(v220, v221);
            *v217 = v223;
            v217[1] = v222;
            if (v211)
            {
              v224 = v322;
              (*(**(v317 + 2) + 160))(&v347, &v355, &v353, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
              v322 = v224;
              if (v224)
              {

                sub_1CEFCCC44(v327, &unk_1EC4C04B0, &unk_1CF9FCB20);
                goto LABEL_128;
              }

              v225 = v347;
              v226 = v327;
              if (!v347)
              {
                sub_1CF40B8D0(v223, v222, 0, v317);

                sub_1CEFCCC44(v226, &unk_1EC4C04B0, &unk_1CF9FCB20);
                v76 = v314;
                return sub_1CEFCCC44(v76, &unk_1EC4C04C0, &qword_1CFA07B10);
              }

              v227 = v306;
              sub_1CEFCCBDC(v327, v306, &unk_1EC4C04B0, &unk_1CF9FCB20);
              v228 = *v227;

              v229 = v333;
              v230 = *(v315 + *(v333 + 96));

              *&v320 = v225;
              if (((v228 >> 58) & 0x3C | (v228 >> 1) & 3) == 0x1E)
              {
                *&v331 = *((v228 & 0xFFFFFFFFFFFFFF9) + 0x10);
                sub_1CEFD09A0(v331);
                sub_1CEFD0A98(v228);
              }

              else
              {
                v231 = swift_allocObject();
                *(v231 + 16) = v228;
                *&v331 = v231 | 0x7000000000000004;
              }

              v232 = v300;
              v319 = *(v229 + 80);
              v233 = v326;
              sub_1CEFCCBDC(v226, v326, &unk_1EC4C04B0, &unk_1CF9FCB20);
              v234 = v233;
              v235 = *v233;

              *&v318 = *(v229 + 80);
              v236 = *(v311 + *(v229 + 96));

              sub_1CF9042A4(v235);
              v316 = v237;
              sub_1CEFD0A98(v235);
              sub_1CEFCCBDC(v226, v232, &unk_1EC4C04B0, &unk_1CF9FCB20);
              v238 = (*(v332 + 80) + 32) & ~*(v332 + 80);
              v239 = swift_allocObject();
              v240 = v317;
              *(v239 + 16) = sub_1CF481110;
              *(v239 + 24) = v240;
              sub_1CEFE55D0(v232, v239 + v238, &unk_1EC4C04B0, &unk_1CF9FCB20);

              v241 = v320;
              v242 = v331;
              sub_1CF907AAC(v320, v331, v316, sub_1CF4812B0, v239);

              sub_1CEFD0A98(v242);

              v243 = *(v321 + 8);
              v244 = v328;
              v243(v326 + v318, v328);
              v243((v306 + v319), v244);
              v191 = v327;
              v190 = v313;
            }

            else
            {
              sub_1CF40B8D0(v223, v222, 0, v317);
              v191 = v327;
              v190 = v313;
            }

            result = sub_1CEFCCC44(v191, &unk_1EC4C04B0, &unk_1CF9FCB20);
            v12 = v333;
          }

          if (v310 <= v189 + 1)
          {
            v195 = (v189 + 1);
          }

          else
          {
            v195 = v310;
          }

          v196 = v195 - 1;
          v194 = v324;
          v193 = v325;
          while (1)
          {
            v192 = v189 + 1;
            if (__OFADD__(v189, 1))
            {
              break;
            }

            if (v192 >= v310)
            {
              v188 = 0;
              v198 = 1;
              v189 = v196;
              goto LABEL_79;
            }

            v188 = *(v309 + v192);
            ++v189;
            if (v188)
            {
              v189 = v192;
              goto LABEL_78;
            }
          }

          __break(1u);
          goto LABEL_137;
        }

        v166 = *(v165 + 16);
        v167 = *(v12 + 80);
        v168 = *(v333 + 96);
        *v145 = *v165;
        *(v145 + 16) = v166;
        v169 = sub_1CF9E6448();
        v170 = *(v169 - 8);
        v171 = *(v170 + 32);
        v172 = v165;
        v173 = v170 + 32;
        v325 = *(v172 + v168);
        v171(v145 + v167, v172 + v167, v169);
        *(v145 + v168) = v325;
        v174 = v333;
        v175 = v320;
        sub_1CEFCCBDC(v145, v320, &unk_1EC4C04B0, &unk_1CF9FCB20);
        v176 = *v175;

        *&v325 = *(v174 + 80);
        v177 = *(v319 + *(v174 + 96));

        v178 = sub_1CF90C94C(v176);
        sub_1CEFD0A98(v176);
        v179 = (v173 - 24);
        if (v178)
        {
          (*v179)(v175 + v325, v169);
          if (([v178 selectedForMaterialization] & 1) == 0)
          {
            v145 = v321;
            v74 = &unk_1EC4C04B0;
            sub_1CEFCCC44(v321, &unk_1EC4C04B0, &unk_1CF9FCB20);

            v12 = v333;
            goto LABEL_42;
          }

          v180 = [v178 requestedExtent];

          v145 = v321;
          v98 = sub_1CEFCCC44(v321, &unk_1EC4C04B0, &unk_1CF9FCB20);
          v181 = v180 + 1 == 0;
          v74 = v314;
          v12 = v333;
          v146 = v331;
          if (!v181)
          {

            v76 = v74;
            return sub_1CEFCCC44(v76, &unk_1EC4C04C0, &qword_1CFA07B10);
          }
        }

        else
        {
          v74 = &unk_1EC4C04B0;
          sub_1CEFCCC44(v145, &unk_1EC4C04B0, &unk_1CF9FCB20);
          v98 = (*v179)(v175 + v325, v169);
          v12 = v333;
          v146 = v331;
        }
      }

      if (v304 <= v144 + 1)
      {
        v148 = v144 + 1;
      }

      else
      {
        v148 = v304;
      }

      v149 = v148 - 1;
      while (1)
      {
        v147 = v144 + 1;
        if (__OFADD__(v144, 1))
        {
          goto LABEL_134;
        }

        if (v147 >= v304)
        {
          v143 = 0;
          v151 = 1;
          v144 = v149;
          goto LABEL_55;
        }

        v143 = *(v309 + v147);
        ++v144;
        if (v143)
        {
          v144 = v147;
          goto LABEL_54;
        }
      }
    }

    if (*v75 != v73)
    {
LABEL_91:
      v76 = v75;
      return sub_1CEFCCC44(v76, &unk_1EC4C04C0, &qword_1CFA07B10);
    }
  }

  v77 = v355;
  v78 = v308 + 56;
  v79 = v356;
  v80 = v299;
  (*(v308 + 56))(v299, 1, 1, v305);
  v81 = v317;
  swift_beginAccess();

  sub_1CF1CA348(v80, v77, v79);
  swift_endAccess();
  v82 = v297;
  sub_1CEFCCBDC(v75, v297, &unk_1EC4C04C0, &qword_1CFA07B10);
  v83 = v301;
  sub_1CEFCCBDC(v82, v301, &unk_1EC4C04C0, &qword_1CFA07B10);
  v84 = *(v78 + 24);
  v85 = (v84 + 16) & ~v84;
  v86 = (v57 + 7);
  v87 = (v57 + 7 + v85) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  v89 = v88 + v85;
  v90 = v88;
  sub_1CEFE55D0(v82, v89, &unk_1EC4C04C0, &qword_1CFA07B10);
  *(v90 + v87) = v81;
  v91 = v302;
  if (v302)
  {

    sub_1CF40BD4C(v91, v83, v81);

    sub_1CEFCCC44(v83, &unk_1EC4C04C0, &qword_1CFA07B10);
    v76 = v75;
    return sub_1CEFCCC44(v76, &unk_1EC4C04C0, &qword_1CFA07B10);
  }

  v302 = v86;
  v303 = v90;
  v300 = ~v84;
  v92 = *(v75 + *(v305 + 56));
  v93 = *(v92 + 64);
  v308 = v92 + 64;
  v94 = 1 << *(v92 + 32);
  v95 = -1;
  if (v94 < 64)
  {
    v95 = ~(-1 << v94);
  }

  v96 = v95 & v93;
  v97 = v324;
  v313 = v324 + 8;
  v306 = (v94 + 63) >> 6;
  v329 = (v332 + 48);
  v330 = (v332 + 56);

  v315 = v92;

  v99 = 0;
  v100 = v333;
  v305 = v84;
  v74 = v97;
  v101 = v319;
  do
  {
    while (1)
    {
      while (1)
      {
        if (v96)
        {
          v103 = v99;
          goto LABEL_25;
        }

        v104 = v306 <= v99 + 1 ? v99 + 1 : v306;
        v105 = v104 - 1;
        do
        {
          v103 = v99 + 1;
          if (__OFADD__(v99, 1))
          {
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            v337 = v343;
            v338 = v344;
            v339 = v345;
            v340 = v346;
            v335 = v341;
            v336 = v342;
            v293 = v98;
            sub_1CEFCCC44(&v335, &unk_1EC4BECD0, &unk_1CF9FEF80);
            type metadata accessor for NSFileProviderError(0);
            v334 = -1005;
            sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
            sub_1CF042F54(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
            sub_1CF9E57D8();
            v294 = v357;
            sub_1CF40BD4C(v357, v293, v317);

            sub_1CEFCCC44(v293, &unk_1EC4C04C0, &qword_1CFA07B10);
            return sub_1CEFCCC44(v74, &unk_1EC4C04C0, &qword_1CFA07B10);
          }

          if (v103 >= v306)
          {
            v96 = 0;
            v107 = 1;
            v99 = v105;
            goto LABEL_26;
          }

          v96 = *(v308 + 8 * v103);
          ++v99;
        }

        while (!v96);
        v99 = v103;
LABEL_25:
        v106 = __clz(__rbit64(v96));
        v96 &= v96 - 1;
        sub_1CEFCCBDC(*(v315 + 56) + *(v332 + 72) * (v106 | (v103 << 6)), v101, &unk_1EC4C04B0, &unk_1CF9FCB20);
        v107 = 0;
LABEL_26:
        v108 = 1;
        v328 = *v330;
        (v328)(v101, v107, 1, v100);
        v327 = *v329;
        if (v327(v101, 1, v100) != 1)
        {
          v109 = *(v333 + 80);
          *&v320 = *(v333 + 96);
          v331 = *v101;
          v321 = *(v101 + 16);
          v110 = sub_1CF9E6448();
          v312 = *(*(v110 - 8) + 32);
          v111 = v326;
          (v312)(v326 + v109, v101 + v109, v110);
          v112 = swift_allocObject();
          *(v112 + 16) = *(v101 + v320);
          v113 = *(v333 + 80);
          v114 = v323;
          v115 = &v323[*(v333 + 96)];
          *v323 = v331;
          *(v114 + 2) = v321;
          v116 = v111 + v109;
          v117 = v324;
          v100 = v333;
          (v312)(&v114[v113], v116, v110);
          v108 = 0;
          *v115 = sub_1CF485B60;
          *(v115 + 1) = v112;
          v74 = v117;
        }

        v118 = v323;
        (v328)(v323, v108, 1, v100);
        v119 = v318;
        sub_1CEFE55D0(v118, v318, &qword_1EC4BE1C0, &unk_1CFA058B0);
        if (v327(v119, 1, v100) == 1)
        {

          v138 = v301;
          sub_1CF40BD4C(0, v301, v317);

          sub_1CEFCCC44(v138, &unk_1EC4C04C0, &qword_1CFA07B10);
          v76 = v314;
          return sub_1CEFCCC44(v76, &unk_1EC4C04C0, &qword_1CFA07B10);
        }

        v120 = *(v119 + 16);
        v121 = v74;
        v321 = *(v100 + 80);
        v122 = v325;
        v123 = *(v100 + 96);
        *v325 = *v119;
        *(v122 + 16) = v120;
        v124 = sub_1CF9E6448();
        v125 = *(v124 - 8);
        v126 = *(v125 + 32);
        v127 = v125 + 32;
        v320 = *(v119 + v123);
        v128 = v122 + v321;
        v129 = v119 + v321;
        *&v331 = v124;
        v321 = v126;
        v126(v128, v129);
        *(v122 + v123) = v320;
        sub_1CEFCCBDC(v122, v121, &unk_1EC4C04B0, &unk_1CF9FCB20);
        v130 = *v121;

        v131 = *(v100 + 80);
        v132 = *&v313[*(v100 + 96)];

        v133 = sub_1CF90C94C(v130);
        sub_1CEFD0A98(v130);
        *&v320 = v127;
        v134 = (v127 - 24);
        if (v133)
        {
          break;
        }

        sub_1CEFCCC44(v122, &unk_1EC4C04B0, &unk_1CF9FCB20);
        v102 = v324;
        v98 = (*v134)(v324 + v131, v331);
        v101 = v319;
        v100 = v333;
        v74 = v102;
      }

      v135 = *v134;
      v136 = v324;
      (*v134)(v324 + v131, v331);
      v74 = v136;
      if ([v133 selectedForMaterialization])
      {
        break;
      }

      sub_1CEFCCC44(v325, &unk_1EC4C04B0, &unk_1CF9FCB20);

      v101 = v319;
      v100 = v333;
    }

    v307 = v135;
    v312 = v134;
    v137 = [v133 requestedExtent];

    v98 = sub_1CEFCCC44(v325, &unk_1EC4C04B0, &unk_1CF9FCB20);
    v101 = v319;
    v100 = v333;
  }

  while (v137 == -1);
  v245 = v315;

  v246 = 1 << *(v245 + 32);
  v247 = -1;
  if (v246 < 64)
  {
    v248 = ~(-1 << v246);
  }

  else
  {
    v248 = -1;
  }

  v249 = v248 & *(v245 + 64);
  v324 = (v311 + 8);
  v306 = (v246 + 63) >> 6;

  v250 = 0;
  v251 = -1;
  v252 = v308;
LABEL_96:
  v313 = v251;
  *&v318 = v247;
  while (1)
  {
    if (!v249)
    {
      if (v306 <= v250 + 1)
      {
        v257 = v250 + 1;
      }

      else
      {
        v257 = v306;
      }

      v258 = v257 - 1;
      v254 = v310;
      v255 = v311;
      v256 = v316;
      while (1)
      {
        v253 = v250 + 1;
        if (__OFADD__(v250, 1))
        {
          break;
        }

        if (v253 >= v306)
        {
          v249 = 0;
          v260 = 1;
          v250 = v258;
          goto LABEL_109;
        }

        v249 = *(v252 + 8 * v253);
        ++v250;
        if (v249)
        {
          v250 = v253;
          goto LABEL_108;
        }
      }

LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      return result;
    }

    v253 = v250;
    v254 = v310;
    v255 = v311;
    v256 = v316;
LABEL_108:
    v259 = __clz(__rbit64(v249));
    v249 &= v249 - 1;
    sub_1CEFCCBDC(*(v315 + 56) + *(v332 + 72) * (v259 | (v253 << 6)), v254, &unk_1EC4C04B0, &unk_1CF9FCB20);
    v260 = 0;
LABEL_109:
    v261 = 1;
    (v328)(v254, v260, 1, v100);
    if (v327(v254, 1, v100) != 1)
    {
      v262 = *(v100 + 80);
      v319 = *(v100 + 96);
      v263 = v310;
      v325 = *v310;
      v323 = *(v310 + 2);
      v264 = v321;
      (v321)(v326 + v262, &v310[v262], v331);
      v265 = swift_allocObject();
      *(v265 + 16) = *&v263[v319];
      v266 = *(v100 + 80);
      v267 = v309;
      v268 = (v309 + *(v100 + 96));
      *v309 = v325;
      *(v267 + 2) = v323;
      v264(v267 + v266, v326 + v262, v331);
      v261 = 0;
      *v268 = sub_1CF4812A8;
      v268[1] = v265;
      v256 = v316;
      v255 = v311;
      v100 = v333;
    }

    v269 = v309;
    (v328)(v309, v261, 1, v100);
    v270 = v304;
    sub_1CEFE55D0(v269, v304, &qword_1EC4BE1C0, &unk_1CFA058B0);
    if (v327(v270, 1, v100) == 1)
    {
      break;
    }

    v271 = *(v270 + 16);
    v272 = *(v100 + 80);
    v273 = *(v100 + 96);
    *v256 = *v270;
    *(v256 + 16) = v271;
    v325 = *(v270 + v273);
    (v321)(v256 + v272, v270 + v272, v331);
    *(v256 + v273) = v325;
    sub_1CEFCCBDC(v256, v255, &unk_1EC4C04B0, &unk_1CF9FCB20);
    v274 = *v255;

    *&v325 = *(v100 + 80);
    v275 = *(v324 + *(v100 + 96));

    v276 = sub_1CF90C94C(v274);
    sub_1CEFD0A98(v274);
    if (v276)
    {
      v277 = [v276 requestedExtent];
      v279 = v278;

      sub_1CEFCCC44(v316, &unk_1EC4C04B0, &unk_1CF9FCB20);
      result = (v307)(v255 + v325, v331);
      v252 = v308;
      v247 = v318;
      if (v279 != -1)
      {
        if (__OFADD__(v277, v279))
        {
          goto LABEL_138;
        }

        if (v277 >= v313)
        {
          v251 = v313;
        }

        else
        {
          v251 = v277;
        }

        if (v313 == -1)
        {
          v251 = v277;
        }

        if (&v277[v279] > v318)
        {
          v247 = &v277[v279];
        }

        goto LABEL_96;
      }
    }

    else
    {
      sub_1CEFCCC44(v316, &unk_1EC4C04B0, &unk_1CF9FCB20);
      result = (v307)(v255 + v325, v331);
      v252 = v308;
    }
  }

  v280 = *(v317 + 4);
  v281 = v322;
  (*(*v280 + 656))(&v341, &v355, &v353, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (!v281)
  {
    v74 = v314;
    v98 = v301;
    if (!v345)
    {
      goto LABEL_135;
    }

    v322 = 0;
    result = sub_1CEFCCC44(v301, &unk_1EC4C04C0, &qword_1CFA07B10);
    v349 = v343;
    v350 = v344;
    v351 = v345;
    v352 = v346;
    v347 = v341;
    v348 = v342;
    if (v318 >= v313)
    {
      v282 = v280[2];
      v283 = v296;
      sub_1CEFCCBDC(v74, v296, &unk_1EC4C04C0, &qword_1CFA07B10);
      v333 = v355;
      LODWORD(v332) = v356;
      v284 = (v305 + 40) & v300;
      v285 = (v302 + v284) & 0xFFFFFFFFFFFFFFF8;
      v286 = (v285 + 23) & 0xFFFFFFFFFFFFFFF8;
      v287 = swift_allocObject();
      v288 = v317;
      v287[2] = v317;
      v287[3] = sub_1CF481118;
      v287[4] = v303;
      sub_1CEFE55D0(v283, v287 + v284, &unk_1EC4C04C0, &qword_1CFA07B10);
      v289 = (v287 + v285);
      v75 = v314;
      *v289 = sub_1CF481110;
      v289[1] = v288;
      *(v287 + v286) = 0;
      v290 = v287 + ((v286 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v290 = v333;
      v290[8] = v332;
      v291 = *(*v282 + 800);
      swift_retain_n();

      v292 = 0;
      v291(&v355, &v347, v313, v318, sub_1CF4811C0, v287);

      v337 = v349;
      v338 = v350;
      v339 = v351;
      v340 = v352;
      v335 = v347;
      v336 = v348;
      sub_1CEFCCC44(&v335, &unk_1EC4BE330, &unk_1CF9FF010);
      goto LABEL_91;
    }

    goto LABEL_139;
  }

  sub_1CEFCCC44(v301, &unk_1EC4C04C0, &qword_1CFA07B10);

LABEL_128:
  v76 = v314;
  return sub_1CEFCCC44(v76, &unk_1EC4C04C0, &qword_1CFA07B10);
}

void sub_1CF40423C(void *a1, int a2, unint64_t a3, void *a4, int a5)
{
  v6 = v5;
  LODWORD(v266) = a5;
  v265 = a4;
  v259 = a2;
  v255 = a1;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5230, &unk_1CF9FE4C0);
  v256 = *(v281 - 8);
  v8 = *(v256 + 64);
  v9 = MEMORY[0x1EEE9AC00](v281);
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v257 = (&v231 - v10);
  v11 = MEMORY[0x1EEE9AC00](v9);
  *&v275 = &v231 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v268 = &v231 - v10;
  v267 = sub_1CF9E6118();
  v258 = *(v267 - 8);
  v12 = *(v258 + 64);
  v13 = MEMORY[0x1EEE9AC00](v267);
  v269 = &v231 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v271 = &v231 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v277 = (&v231 - v10);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v276 = &v231 - v10;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v278 = (&v231 - v10);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v261 = (&v231 - v10);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v270 = (&v231 - v10);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v264 = &v231 - v10;
  MEMORY[0x1EEE9AC00](v22);
  v23 = &v231 - v10;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04D0, &unk_1CFA12B00);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v280 = (&v231 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x1EEE9AC00](v26);
  *&v273 = &v231 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v279 = &v231 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v272 = &v231 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v263 = &v231 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v37 = (&v231 - v36);
  v38 = sub_1CF9E64A8();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v42 = (&v231 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = *(v6 + 64);
  *v42 = v43;
  (*(v39 + 104))(v42, *MEMORY[0x1E69E8020], v38);
  v44 = v43;
  v45 = sub_1CF9E64D8();
  v47 = *(v39 + 8);
  v46 = (v39 + 8);
  v47(v42, v38);
  if ((v45 & 1) == 0)
  {
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    v237 = sub_1CF772388(v237);
LABEL_51:
    v37 = v237[2];
    v122 = (*(v256 + 80) + 32) & ~*(v256 + 80);
    v233 = v122;
    if (!v37)
    {
      v215 = v249;
      *(v249 + 16) = v237;
      v134 = 0;
      v216 = *(v215 + 16);
      v217 = v216[2];
      v37 = v260;
      goto LABEL_113;
    }

    v123 = 0;
    v124 = v237 + v122;
    v125 = *(v256 + 72);
    v234 = -v125;
    v235 = a3;
    v238 = v45;
    v250 = v124;
    v248 = v125;
LABEL_53:
    v126 = v125 * v123;
    v127 = v125 + v125 * (v123 - v37);
    *&v253 = v37;
    while (1)
    {
      v251 = v123;
      v244 = v126;
      v128 = v268;
      sub_1CEFCCBDC(&v124[v126], v268, &unk_1EC4C5230, &unk_1CF9FE4C0);
      v129 = v281;
      v130 = *(v281 + 64);
      v131 = *(v281 + 80);
      v133 = *v128;
      v132 = v128[1];
      v134 = v276;
      *v276 = *v128;
      *(v134 + 1) = v132;
      a3 = v132;
      v135 = sub_1CF9E6448();
      v136 = *(v135 - 8);
      v246 = *(v136 + 32);
      v247 = v135;
      v245 = v136 + 32;
      v246(&v134[v130], v128 + v130);
      v137 = &v134[*(v129 + 80)];
      v138 = swift_allocObject();
      *(v138 + 16) = *(v128 + v131);
      *v137 = sub_1CF485B44;
      v137[1] = v138;
      if (((v133 >> 58) & 0x3C | (v133 >> 1) & 3) == 0x2A)
      {
        v139 = v240;
        if (v239)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v139 = v242;
        if (v241)
        {
LABEL_61:
          sub_1CEFCCC44(v276, &unk_1EC4C5230, &unk_1CF9FE4C0);
          v23 = v274;
          v6 = v254;
          v45 = v238;
          v46 = v262;
          v37 = v253;
          v141 = v244;
LABEL_62:
          v142 = &v37[-1].isa + 7;
          v143 = v250;
          v123 = v251;
          if (v251 >= (&v37[-1].isa + 7))
          {
            goto LABEL_110;
          }

          v232 = &v250[v141];
          v134 = (v234 * v37);
          v37 = (v37 - 1);
          v144 = v248 * v142;
          while (2)
          {
            *&v253 = v37;
            v145 = v275;
            sub_1CEFCCBDC(&v143[v144], v275, &unk_1EC4C5230, &unk_1CF9FE4C0);
            v146 = v281;
            v147 = *(v281 + 64);
            v148 = *(v281 + 80);
            a3 = *v145;
            v149 = v145[1];
            v150 = v277;
            *v277 = *v145;
            v150[1] = v149;
            v243 = v149;
            (v246)(v150 + v147, v145 + v147, v247);
            v151 = (v150 + *(v146 + 80));
            v152 = swift_allocObject();
            *(v152 + 16) = *(v145 + v148);
            *v151 = sub_1CF485B44;
            v151[1] = v152;
            if (((a3 >> 58) & 0x3C | (a3 >> 1) & 3) == 0x2A)
            {
              v153 = v240;
              if ((v239 & 1) == 0)
              {
                goto LABEL_70;
              }

LABEL_64:
              sub_1CEFCCC44(v277, &unk_1EC4C5230, &unk_1CF9FE4C0);
              v46 = v262;
              v6 = v254;
              v37 = v253;
            }

            else
            {
              v153 = v242;
              if (v241)
              {
                goto LABEL_64;
              }

LABEL_70:
              sub_1CEFCCC44(v277, &unk_1EC4C5230, &unk_1CF9FE4C0);
              v140 = v243 < v153;
              v46 = v262;
              v6 = v254;
              v37 = v253;
              if (!v140)
              {
                v154 = v251;
                v23 = v274;
                if (v251 != v253)
                {
                  a3 = v232;
                  sub_1CEFE55D0(v232, v257, &unk_1EC4C5230, &unk_1CF9FE4C0);
                  v155 = v250;
                  if (v244 < v144 || a3 >= v250 - v134)
                  {
                    swift_arrayInitWithTakeFrontToBack();
LABEL_77:
                    v155 = v250;
                  }

                  else if (v127)
                  {
                    swift_arrayInitWithTakeBackToFront();
                    goto LABEL_77;
                  }

                  sub_1CEFE55D0(v257, &v155[v144], &unk_1EC4C5230, &unk_1CF9FE4C0);
                  v154 = v251;
                }

                v123 = v154 + 1;
                v45 = v238;
                v124 = v250;
                v125 = v248;
                if (v123 < v37)
                {
                  goto LABEL_53;
                }

LABEL_110:
                v218 = v249;
                *(v249 + 16) = v237;
                if (v123 < 0)
                {
                  __break(1u);
                }

                else
                {
                  v216 = *(v218 + 16);
                  v217 = v216[2];
                  v37 = v260;
                  a3 = v235;
                  if (v217 >= v123)
                  {
                    v134 = v123;
LABEL_113:
                    v277 = v216;
                    swift_unknownObjectRetain();
                    v251 = v134;
                    if (v217 == v134)
                    {
LABEL_114:
                      swift_beginAccess();
                      v219 = *(v6 + v45);
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v282[0] = *(v6 + v45);
                      *(v6 + v45) = 0x8000000000000000;
                      sub_1CF1D35F8(v277, v255, v259, isUniquelyReferenced_nonNull_native);
                      *(v6 + v45) = v282[0];
                      swift_endAccess();
                      v221 = *(v249 + 16);
                      v222 = *(v221 + 16);
                      v223 = v251;
                      if (v222 < v251)
                      {
                        __break(1u);
                      }

                      else
                      {
                        v224 = *(v249 + 16);
                        swift_unknownObjectRetain();
                        if (!v223)
                        {
                          goto LABEL_116;
                        }
                      }

                      sub_1CF4773B0(v221, v221 + v233, v223, (2 * v222) | 1);
                      v230 = v229;

                      v221 = v230;
LABEL_116:
                      v225 = v249;
                      v226 = *(v249 + 16);
                      *(v249 + 16) = v221;

                      v55 = *(v225 + 16);
LABEL_13:
                      v56 = *(v55 + 16);
                      v57 = *(a3 + 16);

                      if (v56 == v57)
                      {
                        swift_beginAccess();
                        sub_1CF1C9948(0, v255, v259);
                        swift_endAccess();
                      }

                      if (v46)
                      {
                        swift_getErrorValue();
                        v268 = Error.prettyDescription.getter(v284[66]);
                        goto LABEL_21;
                      }

                      sub_1CEFD57E0(0, &unk_1EDEA3410, 0x1E696AEC0);
                      v268 = sub_1CF9E7598();
                      if ((*(v6 + 82) & 0x20) == 0)
                      {
LABEL_21:
                        v45 = v281;
                        v59 = *(v249 + 16);
                        v254 = v23 + 8;
                        v277 = (v256 + 48);
                        v278 = (v256 + 56);
                        v261 = (v258 + 8);
                        if (v255)
                        {
                          v60 = 0x6873617274;
                        }

                        else
                        {
                          v60 = 1953460082;
                        }

                        v61 = 0xE500000000000000;
                        if (!v255)
                        {
                          v61 = 0xE400000000000000;
                        }

                        v250 = v61;
                        v251 = v60;
                        v269 = v59;

                        v62 = 0;
                        *&v63 = 136315650;
                        v253 = v63;
                        v64 = v264;
                        while (2)
                        {
                          v69 = *(v269 + 2);
                          v70 = v273;
                          if (v62 == v69)
                          {
                            v276 = v62;
                            v71 = 1;
                          }

                          else
                          {
                            if (v62 >= v69)
                            {
                              __break(1u);
                              goto LABEL_118;
                            }

                            sub_1CEFCCBDC(&v269[((*(v256 + 80) + 32) & ~*(v256 + 80)) + *(v256 + 72) * v62], v273, &unk_1EC4C5230, &unk_1CF9FE4C0);
                            v71 = 0;
                            v276 = (v62 + 1);
                          }

                          v72 = *v278;
                          v73 = 1;
                          (*v278)(v70, v71, 1, v45);
                          v74 = *v277;
                          if ((*v277)(v70, 1, v45) != 1)
                          {
                            v75 = *(v281 + 64);
                            v260 = *(v281 + 80);
                            v280 = v74;
                            v76 = v273;
                            v77 = *(v273 + 8);
                            v279 = *v273;
                            *&v275 = v77;
                            v78 = sub_1CF9E6448();
                            v79 = *(*(v78 - 8) + 32);
                            v80 = v274;
                            v79(v274 + v75, v76 + v75, v78);
                            v81 = swift_allocObject();
                            *(v81 + 16) = *(&v260->isa + v76);
                            v82 = *(v281 + 64);
                            v83 = v272;
                            v84 = &v272[*(v281 + 80)];
                            v85 = v275;
                            *v272 = v279;
                            *(v83 + 1) = v85;
                            v86 = v80 + v75;
                            v64 = v264;
                            v45 = v281;
                            v79(&v83[v82], v86, v78);
                            v73 = 0;
                            *v84 = sub_1CF481788;
                            v84[1] = v81;
                            v74 = v280;
                          }

                          v87 = v272;
                          v72(v272, v73, 1, v45);
                          v88 = v87;
                          v89 = v263;
                          sub_1CEFE55D0(v88, v263, &unk_1EC4C04D0, &unk_1CFA12B00);
                          if ((v74)(v89, 1, v45) == 1)
                          {

                            goto LABEL_44;
                          }

                          v90 = *(v45 + 64);
                          v91 = *(v45 + 80);
                          *v64 = *v89;
                          v92 = sub_1CF9E6448();
                          v279 = *(v92 - 8);
                          v93 = *(v279 + 4);
                          v275 = *&v89[v91];
                          v93(&v64[v90], &v89[v90], v92);
                          *&v64[v91] = v275;
                          v94 = fpfs_current_or_default_log();
                          v95 = v271;
                          sub_1CF9E6128();
                          v96 = v270;
                          sub_1CEFCCBDC(v64, v270, &unk_1EC4C5230, &unk_1CF9FE4C0);
                          v97 = v268;
                          v98 = sub_1CF9E6108();
                          v99 = sub_1CF9E7288();

                          LODWORD(v275) = v99;
                          v100 = os_log_type_enabled(v98, v99);
                          v280 = v92;
                          if (v100)
                          {
                            v260 = v98;
                            v101 = swift_slowAlloc();
                            v102 = swift_slowAlloc();
                            v103 = swift_slowAlloc();
                            v282[0] = v103;
                            *v101 = v253;
                            v257 = v102;
                            v258 = v103;
                            if (v259)
                            {
                              v105 = v250;
                              v104 = v251;
                              if (v259 == 1)
                              {
                                v284[0] = 0x284449656C6966;
                                v284[1] = 0xE700000000000000;
                                v285 = v255;
                                goto LABEL_41;
                              }
                            }

                            else
                            {
                              v284[0] = 0x284449636F64;
                              v284[1] = 0xE600000000000000;
                              LODWORD(v285) = v255;
LABEL_41:
                              v106 = sub_1CF9E7F98();
                              MEMORY[0x1D3868CC0](v106);

                              MEMORY[0x1D3868CC0](41, 0xE100000000000000);
                              v104 = v284[0];
                              v105 = v284[1];
                            }

                            v107 = sub_1CEFD0DF0(v104, v105, v282);

                            *(v101 + 4) = v107;
                            *(v101 + 12) = 2080;
                            v108 = v270;
                            v65 = v274;
                            sub_1CEFCCBDC(v270, v274, &unk_1EC4C5230, &unk_1CF9FE4C0);
                            v109 = *v65;
                            v110 = *(v281 + 64);
                            v111 = *&v254[*(v281 + 80)];

                            (*(v279 + 1))(v65 + v110, v280);
                            sub_1CEFCCC44(v108, &unk_1EC4C5230, &unk_1CF9FE4C0);
                            v112 = sub_1CEFD11AC(v109);
                            v114 = v113;
                            sub_1CEFD0A98(v109);
                            v115 = sub_1CEFD0DF0(v112, v114, v282);

                            *(v101 + 14) = v115;
                            *(v101 + 22) = 2112;
                            *(v101 + 24) = v97;
                            v116 = v257;
                            *v257 = v268;
                            v117 = v97;
                            v118 = v260;
                            _os_log_impl(&dword_1CEFC7000, v260, v275, "propagation <fs:%s reason:%s> completed: %@", v101, 0x20u);
                            sub_1CEFCCC44(v116, &qword_1EC4BE350, &unk_1CF9FC3B0);
                            MEMORY[0x1D386CDC0](v116, -1, -1);
                            v119 = v258;
                            swift_arrayDestroy();
                            MEMORY[0x1D386CDC0](v119, -1, -1);
                            MEMORY[0x1D386CDC0](v101, -1, -1);

                            (*v261)(v271, v267);
                            v23 = v262;
                            v6 = v264;
                          }

                          else
                          {
                            sub_1CEFCCC44(v96, &unk_1EC4C5230, &unk_1CF9FE4C0);

                            (*v261)(v95, v267);
                            v65 = v274;
                            v6 = v64;
                            v23 = v262;
                          }

                          sub_1CEFCCBDC(v6, v65, &unk_1EC4C5230, &unk_1CF9FE4C0);
                          sub_1CEFD0A98(*v65);
                          a3 = &unk_1EC4C5230;
                          v45 = v281;
                          *&v275 = *(v281 + 64);
                          v66 = v65 + *(v281 + 80);
                          v46 = *v66;
                          v67 = *(v66 + 1);
                          v284[3] = &type metadata for SQLDatabaseReadWriteAccessor;
                          v284[4] = &off_1F4C17938;
                          v284[0] = v265;
                          LOBYTE(v284[1]) = v266;
                          v68 = v265;
                          v46(v284, v23);

                          sub_1CEFCCC44(v6, &unk_1EC4C5230, &unk_1CF9FE4C0);
                          sub_1CEFCCC44(v284, &unk_1EC4C1B30, &qword_1CFA05300);
                          (*(v279 + 1))(v65 + v275, v280);
                          v64 = v6;
                          v62 = v276;
                          continue;
                        }
                      }

                      v260 = v37;
                      v156 = *(v249 + 16);
                      v263 = v23 + 8;
                      v276 = (v256 + 48);
                      v277 = (v256 + 56);
                      v270 = (v258 + 8);
                      if (v255)
                      {
                        v157 = 0x6873617274;
                      }

                      else
                      {
                        v157 = 1953460082;
                      }

                      v158 = 0xE500000000000000;
                      if (!v255)
                      {
                        v158 = 0xE400000000000000;
                      }

                      v257 = v158;
                      v258 = v157;
                      v272 = v156;

                      v159 = 0;
                      v46 = &unk_1EC4C5230;
                      *&v160 = 136315394;
                      v262 = v160;
                      v161 = v269;
                      v45 = v261;
                      v23 = v280;
                      v6 = v281;
                      while (1)
                      {
LABEL_88:
                        v162 = *(v272 + 2);
                        if (v159 == v162)
                        {
                          *&v275 = v159;
                          v163 = 1;
                        }

                        else
                        {
                          if (v159 >= v162)
                          {
                            goto LABEL_119;
                          }

                          sub_1CEFCCBDC(&v272[((*(v256 + 80) + 32) & ~*(v256 + 80)) + *(v256 + 72) * v159], v23, &unk_1EC4C5230, &unk_1CF9FE4C0);
                          v163 = 0;
                          *&v275 = v159 + 1;
                        }

                        v164 = *v277;
                        v165 = 1;
                        (*v277)(v23, v163, 1, v6);
                        v166 = *v276;
                        if ((*v276)(v23, 1, v6) != 1)
                        {
                          v167 = *(v281 + 64);
                          v168 = *(v281 + 80);
                          v271 = *v280;
                          v266 = v280[1];
                          v169 = sub_1CF9E6448();
                          v170 = *(*(v169 - 8) + 32);
                          *&v273 = v166;
                          v171 = v274;
                          v170(v274 + v167, v280 + v167, v169);
                          v172 = swift_allocObject();
                          v173 = v281;
                          *(v172 + 16) = *(v280 + v168);
                          v174 = *(v173 + 64);
                          v175 = v279;
                          v176 = &v279[*(v281 + 80)];
                          v177 = v266;
                          *v279 = v271;
                          *(v175 + 1) = v177;
                          v178 = (v171 + v167);
                          v161 = v269;
                          v179 = v281;
                          v170(&v175[v174], v178, v169);
                          v166 = v273;
                          v6 = v179;
                          v165 = 0;
                          *v176 = sub_1CF485B44;
                          v176[1] = v172;
                          v23 = v280;
                          v45 = v261;
                        }

                        v180 = v279;
                        v164(v279, v165, 1, v6);
                        v181 = v260;
                        sub_1CEFE55D0(v180, v260, &unk_1EC4C04D0, &unk_1CFA12B00);
                        if (v166(v181, 1, v6) == 1)
                        {

                          v208 = swift_allocObject();
                          v210 = v254;
                          v209 = v255;
                          v211 = v249;
                          *(v208 + 16) = v249;
                          *(v208 + 24) = v209;
                          *(v208 + 32) = v259;
                          *(v208 + 40) = 0;
                          v212 = *(*v210 + 456);

                          v213 = 0;

                          v212("itemDidPropagate(id:error:with:)", 32, 2, 0, 0, 0, sub_1CF4817C0, v211, sub_1CF481818, v208);

LABEL_44:

                          return;
                        }

                        v182 = *(v6 + 64);
                        v183 = *(v6 + 80);
                        *v45 = *&v181->isa;
                        v184 = sub_1CF9E6448();
                        v185 = *(v184 - 8);
                        v186 = *(v185 + 4);
                        v273 = *(&v181->isa + v183);
                        v271 = v184;
                        v186(v45 + v182, v181 + v182);
                        *(v45 + v183) = v273;
                        v187 = fpfs_current_or_default_log();
                        sub_1CF9E6128();
                        v188 = v278;
                        v46 = &unk_1EC4C5230;
                        a3 = &unk_1CF9FE4C0;
                        sub_1CEFCCBDC(v45, v278, &unk_1EC4C5230, &unk_1CF9FE4C0);
                        v189 = sub_1CF9E6108();
                        LODWORD(v273) = sub_1CF9E7288();
                        if (os_log_type_enabled(v189, v273))
                        {
                          break;
                        }

                        sub_1CEFCCC44(v188, &unk_1EC4C5230, &unk_1CF9FE4C0);

                        (*v270)(v161, v267);
                        sub_1CEFCCC44(v45, &unk_1EC4C5230, &unk_1CF9FE4C0);
                        v6 = v281;
                        v159 = v275;
                      }

                      v266 = v189;
                      v190 = swift_slowAlloc();
                      v191 = swift_slowAlloc();
                      v264 = v185;
                      v265 = v191;
                      v282[0] = v191;
                      *v190 = v262;
                      if (v259)
                      {
                        v193 = v257;
                        v192 = v258;
                        if (v259 == 1)
                        {
                          v284[0] = 0x284449656C6966;
                          v284[1] = 0xE700000000000000;
                          v285 = v255;
                          goto LABEL_100;
                        }
                      }

                      else
                      {
                        v284[0] = 0x284449636F64;
                        v284[1] = 0xE600000000000000;
                        LODWORD(v285) = v255;
LABEL_100:
                        v194 = sub_1CF9E7F98();
                        MEMORY[0x1D3868CC0](v194);

                        MEMORY[0x1D3868CC0](41, 0xE100000000000000);
                        v192 = v284[0];
                        v193 = v284[1];
                      }

                      v195 = sub_1CEFD0DF0(v192, v193, v282);

                      *(v190 + 4) = v195;
                      *(v190 + 12) = 2080;
                      v196 = v278;
                      v197 = v274;
                      sub_1CEFCCBDC(v278, v274, &unk_1EC4C5230, &unk_1CF9FE4C0);
                      v198 = *v197;
                      v199 = v281;
                      v200 = *(v281 + 64);
                      v201 = *&v263[*(v281 + 80)];

                      (*(v264 + 1))(v197 + v200, v271);
                      sub_1CEFCCC44(v196, &unk_1EC4C5230, &unk_1CF9FE4C0);
                      v202 = sub_1CEFD11AC(v198);
                      a3 = v203;
                      sub_1CEFD0A98(v198);
                      v204 = sub_1CEFD0DF0(v202, a3, v282);

                      *(v190 + 14) = v204;
                      v6 = v199;
                      v205 = v266;
                      _os_log_impl(&dword_1CEFC7000, v266, v273, "propagation <fs:%s reason:%s> completed, waiting for flush", v190, 0x16u);
                      v206 = v265;
                      swift_arrayDestroy();
                      MEMORY[0x1D386CDC0](v206, -1, -1);
                      v207 = v190;
                      v46 = &unk_1EC4C5230;
                      MEMORY[0x1D386CDC0](v207, -1, -1);

                      v161 = v269;
                      (*v270)(v269, v267);
                      v45 = v261;
                      sub_1CEFCCC44(v261, &unk_1EC4C5230, &unk_1CF9FE4C0);
                      v23 = v280;
                      v159 = v275;
                      goto LABEL_88;
                    }

LABEL_123:
                    sub_1CF4773B0(v277, v277 + v233, 0, (2 * v134) | 1);
                    v228 = v227;

                    v277 = v228;
                    goto LABEL_114;
                  }
                }

                __break(1u);
                goto LABEL_123;
              }
            }

            v37 = (v37 - 1);
            v127 += v248;
            v144 -= v248;
            v134 += v248;
            v143 = v250;
            v123 = v251;
            if (v251 >= v37)
            {
              v23 = v274;
              v45 = v238;
              goto LABEL_110;
            }

            continue;
          }
        }
      }

      sub_1CEFCCC44(v276, &unk_1EC4C5230, &unk_1CF9FE4C0);
      v140 = a3 < v139;
      v23 = v274;
      v6 = v254;
      v45 = v238;
      v46 = v262;
      v37 = v253;
      v141 = v244;
      if (v140)
      {
        goto LABEL_62;
      }

      v124 = v250;
      v123 = v251 + 1;
      v126 = v244 + v248;
      v127 += v248;
      if (v251 + 1 >= v253)
      {
        goto LABEL_110;
      }
    }
  }

  v46 = a3;
  if (!a3)
  {
    goto LABEL_9;
  }

  v283[0] = a3;
  v48 = a3;
  v49 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
  if (!swift_dynamicCast())
  {
LABEL_8:

    goto LABEL_9;
  }

  if ((v284[4] & 1) == 0)
  {
    sub_1CF48183C(v284[0], v284[1], v284[2], v284[3], 0);
    goto LABEL_8;
  }

  sub_1CF48183C(v284[0], v284[1], v284[2], v284[3], 1);
  v50 = *(v6 + 16);
  v51 = v252;
  sub_1CF7EB934(v255, v259, v265, v266, v284);
  if (v51)
  {

    return;
  }

  memcpy(v283, v284, sizeof(v283));
  v120 = sub_1CF08B99C(v283) == 1;
  v252 = 0;
  if (v120)
  {
    memcpy(v282, v284, sizeof(v282));
    sub_1CEFCCC44(v282, &unk_1EC4BFC20, &unk_1CFA0A290);
    goto LABEL_9;
  }

  memcpy(v282, v284, sizeof(v282));
  if (LOBYTE(v282[20]))
  {
    sub_1CEFCCC44(v282, &unk_1EC4BFC20, &unk_1CFA0A290);
    return;
  }

  v214 = v282[18];
  sub_1CEFCCC44(v282, &unk_1EC4BFC20, &unk_1CFA0A290);
  if ((v214 & 0x100) != 0)
  {
LABEL_9:
    v45 = qword_1EC4EBD78;
    swift_beginAccess();
    v52 = *(v6 + v45);
    if (!*(v52 + 16))
    {
      return;
    }

    v53 = sub_1CF7BF2C0(v255, v259);
    if ((v54 & 1) == 0)
    {
      return;
    }

    a3 = *(*(v52 + 56) + 8 * v53);
    v249 = swift_allocObject();
    *(v249 + 16) = a3;
    swift_bridgeObjectRetain_n();
    v274 = v23;
    *&v262 = v46;
    v254 = v6;
    if (v46)
    {
      v55 = a3;
      goto LABEL_13;
    }

    v58 = v252;
    sub_1CF408EF0(v255, v259, v6, v265, v266, v284);
    if (v58)
    {

      return;
    }

    v252 = 0;
    if ((v284[0] & 1) == 0)
    {

      return;
    }

    v236 = &v231;
    v242 = v284[1];
    v241 = LOBYTE(v284[2]);
    v240 = v284[3];
    v239 = LOBYTE(v284[4]);
    v237 = *(v249 + 16);
    v121 = swift_isUniquelyReferenced_nonNull_native();
    v260 = v37;
    if (v121)
    {
      goto LABEL_51;
    }

    goto LABEL_120;
  }
}

void sub_1CF405DEC(void *a1, void *a2, char *a3, int a4)
{
  v5 = v4;
  LODWORD(v260) = a4;
  v259 = a3;
  v272 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE670, &qword_1CF9FE4D0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v262 = &v232 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v267 = (&v232 - v11);
  v261 = sub_1CF9E6118();
  *&v266 = *(v261 - 8);
  v12 = *(v266 + 64);
  v13 = MEMORY[0x1EEE9AC00](v261);
  v268 = &v232 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v264 = &v232 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v255 = (&v232 - v11);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v274 = &v232 - v11;
  v19 = MEMORY[0x1EEE9AC00](v18);
  *&v257 = &v232 - v11;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v271 = (&v232 - v11);
  MEMORY[0x1EEE9AC00](v20);
  v270 = (&v232 - v11);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04F0, &qword_1CFA12B10);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v275 = &v232 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v273 = (&v232 - v26);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v269 = (&v232 - v28);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v265 = (&v232 - v30);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v258 = (&v232 - v32);
  MEMORY[0x1EEE9AC00](v31);
  v263 = &v232 - v33;
  v34 = sub_1CF9E64A8();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v38 = (&v232 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = v5[8];
  *v38 = v39;
  (*(v35 + 104))(v38, *MEMORY[0x1E69E8020], v34);
  v40 = v39;
  v41 = sub_1CF9E64D8();
  (*(v35 + 8))(v38, v34);
  if ((v41 & 1) == 0)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v42 = a2;
  if (!a2)
  {
    goto LABEL_9;
  }

  v278[0] = a2;
  v43 = a2;
  v44 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  if (!swift_dynamicCast())
  {
LABEL_8:

    goto LABEL_9;
  }

  if (LOBYTE(v279[3]) != 1)
  {
    sub_1CF481874(v279[0], v279[1], v279[2], 0);
    goto LABEL_8;
  }

  v45 = v5[2];
  v46 = v249;
  sub_1CF7F5EA8(v272, v259, v260, v279);
  if (v46)
  {

    return;
  }

  memcpy(v278, v279, sizeof(v278));
  v123 = sub_1CF08B99C(v278) == 1;
  v249 = 0;
  if (v123)
  {
    memcpy(v277, v279, sizeof(v277));
    sub_1CEFCCC44(v277, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    goto LABEL_9;
  }

  memcpy(v277, v279, sizeof(v277));
  if (LOBYTE(v277[15]))
  {
    sub_1CEFCCC44(v277, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    return;
  }

  v181 = v277[13];
  sub_1CEFCCC44(v277, &unk_1EC4BFD80, &unk_1CFA0A2A0);
  if ((v181 & 0x100) != 0)
  {
LABEL_9:
    v252 = v8;
    v276 = v7;
    v7 = qword_1EC4EBD70;
    swift_beginAccess();
    v47 = *(v5 + v7);
    if (!*(v47 + 16))
    {
      return;
    }

    v48 = *(v5 + v7);

    v41 = v272;
    v49 = sub_1CEFE863C(v272);
    if ((v50 & 1) == 0)
    {

      return;
    }

    v51 = *(*(v47 + 56) + 8 * v49);

    v52 = swift_allocObject();
    v248 = v52;
    *(v52 + 16) = v51;
    v53 = (v52 + 16);

    v256 = v42;
    v253 = v5;
    if (v42)
    {
LABEL_12:
      v54 = *(*v53 + 16);
      v55 = *(v51 + 16);

      if (v54 == v55)
      {
        swift_beginAccess();
        sub_1CF1C9844(0, v41);
        swift_endAccess();
      }

      v56 = v255;
      if (v42)
      {
        swift_getErrorValue();
        v262 = Error.prettyDescription.getter(v279[66]);
        v7 = v276;
      }

      else
      {
        sub_1CEFD57E0(0, &unk_1EDEA3410, 0x1E696AEC0);
        v59 = sub_1CF9E7598();
        v60 = *(v5 + 82);
        v7 = v276;
        v262 = v59;
        if ((v60 & 0x20) != 0)
        {
          swift_beginAccess();
          v126 = *(v248 + 16);
          v258 = v270 + 1;
          v273 = (v252 + 56);
          v271 = (v252 + 48);
          v260 = (v266 + 8);

          v265 = v126;

          v34 = 0;
          *&v127 = 136315394;
          v257 = v127;
          while (1)
          {
            v128 = v265[2];
            v41 = v275;
            if (v34 == v128)
            {
              v267 = v34;
              v129 = 1;
              v5 = v272;
            }

            else
            {
              v5 = v272;
              if (v34 >= v128)
              {
                goto LABEL_86;
              }

              sub_1CEFCCBDC(v265 + ((*(v252 + 80) + 32) & ~*(v252 + 80)) + *(v252 + 72) * v34, v275, &qword_1EC4BE670, &qword_1CF9FE4D0);
              v129 = 0;
              v267 = (v34 + 1);
            }

            v130 = *v273;
            v131 = 1;
            (*v273)(v41, v129, 1, v7);
            v132 = *v271;
            if ((*v271)(v41, 1, v7) != 1)
            {
              v133 = *(v7 + 64);
              *&v266 = v132;
              v134 = *(v276 + 80);
              v135 = *(v41 + 8);
              v264 = *v41;
              v259 = v135;
              v136 = sub_1CF9E6448();
              v137 = *(*(v136 - 8) + 32);
              v138 = v270;
              v137(v270 + v133, &v275[v133], v136);
              v139 = swift_allocObject();
              v140 = v276;
              *(v139 + 16) = *&v275[v134];
              v141 = *(v140 + 64);
              v142 = v269;
              v143 = (v269 + *(v276 + 80));
              v144 = v259;
              *v269 = v264;
              v142[1] = v144;
              v137(v142 + v141, v138 + v133, v136);
              v5 = v272;
              v131 = 0;
              *v143 = sub_1CF485B44;
              v143[1] = v139;
              v132 = v266;
              v56 = v255;
              v7 = v276;
            }

            v145 = v269;
            v130(v269, v131, 1, v7);
            v146 = v263;
            sub_1CEFE55D0(v145, v263, &unk_1EC4C04F0, &qword_1CFA12B10);
            if (v132(v146, 1, v7) == 1)
            {
              break;
            }

            v147 = *(v7 + 64);
            v148 = *(v7 + 80);
            v149 = v274;
            *v274 = *v146;
            v150 = sub_1CF9E6448();
            v151 = v56;
            v152 = *(v150 - 8);
            v153 = *(v152 + 32);
            v266 = *(v146 + v148);
            v264 = v150;
            v153(v149 + v147, v146 + v147);
            *(v149 + v148) = v266;
            v154 = v268;
            v155 = fpfs_current_or_default_log();
            sub_1CF9E6128();
            sub_1CEFCCBDC(v149, v151, &qword_1EC4BE670, &qword_1CF9FE4D0);
            v156 = v5;
            v157 = sub_1CF9E6108();
            v158 = sub_1CF9E7288();
            if (os_log_type_enabled(v157, v158))
            {
              v159 = swift_slowAlloc();
              *&v266 = swift_slowAlloc();
              v277[0] = v266;
              *v159 = v257;
              v160 = v151;
              v161 = NSFileProviderItemIdentifier.description.getter();
              LODWORD(v259) = v158;
              v163 = v162;

              v164 = sub_1CEFD0DF0(v161, v163, v277);

              *(v159 + 4) = v164;
              *(v159 + 12) = 2080;
              v165 = v270;
              sub_1CEFCCBDC(v160, v270, &qword_1EC4BE670, &qword_1CF9FE4D0);
              v166 = *v165;
              v167 = *(v276 + 64);
              v168 = *(v258 + *(v276 + 80));

              (*(v152 + 8))(v165 + v167, v264);
              v169 = v160;
              sub_1CEFCCC44(v160, &qword_1EC4BE670, &qword_1CF9FE4D0);
              v170 = sub_1CF913458(v166);
              v172 = v171;
              sub_1CEFD0A98(v166);
              v7 = v276;
              v173 = sub_1CEFD0DF0(v170, v172, v277);

              *(v159 + 14) = v173;
              _os_log_impl(&dword_1CEFC7000, v157, v259, "propagation <fp:%s reason:%s> completed, waiting for flush", v159, 0x16u);
              v174 = v266;
              swift_arrayDestroy();
              MEMORY[0x1D386CDC0](v174, -1, -1);
              MEMORY[0x1D386CDC0](v159, -1, -1);

              (*v260)(v268, v261);
              sub_1CEFCCC44(v274, &qword_1EC4BE670, &qword_1CF9FE4D0);
              v56 = v169;
            }

            else
            {
              sub_1CEFCCC44(v151, &qword_1EC4BE670, &qword_1CF9FE4D0);

              (*v260)(v154, v261);
              sub_1CEFCCC44(v274, &qword_1EC4BE670, &qword_1CF9FE4D0);
              v56 = v151;
            }

            v34 = v267;
          }

          v175 = swift_allocObject();
          v176 = v253;
          v177 = v248;
          v175[2] = v248;
          v175[3] = v5;
          v175[4] = 0;
          v178 = *(*v176 + 456);
          v179 = 0;
          v180 = v5;

          v178("itemDidPropagate(id:error:with:)", 32, 2, 1, 0, 0, sub_1CF48184C, v177, sub_1CF481854, v175);

LABEL_33:

          return;
        }
      }

      v61 = *v53;
      v251 = (v270 + 1);
      v268 = (v252 + 48);
      v269 = (v252 + 56);
      v255 = (v266 + 8);
      v263 = v61;

      v34 = 0;
      v5 = &qword_1EC4BE670;
      *&v62 = 136315650;
      v250 = v62;
      v63 = v273;
      while (1)
      {
        v91 = *(v263 + 16);
        if (v34 == v91)
        {
          v267 = v34;
          v92 = 1;
        }

        else
        {
          if (v34 >= v91)
          {
            __break(1u);
            goto LABEL_85;
          }

          sub_1CEFCCBDC(v263 + ((*(v252 + 80) + 32) & ~*(v252 + 80)) + *(v252 + 72) * v34, v63, v5, &qword_1CF9FE4D0);
          v92 = 0;
          v267 = (v34 + 1);
        }

        v93 = *v269;
        v94 = 1;
        (*v269)(v63, v92, 1, v7);
        v95 = *v268;
        if ((*v268)(v63, 1, v7) != 1)
        {
          v96 = *(v7 + 64);
          v275 = v95;
          v97 = *(v276 + 80);
          v98 = v63[1];
          v274 = *v63;
          *&v266 = v98;
          v99 = sub_1CF9E6448();
          v100 = *(*(v99 - 8) + 32);
          v101 = v270;
          v100(v270 + v96, v273 + v96, v99);
          v102 = swift_allocObject();
          *(v102 + 16) = *(v273 + v97);
          v103 = *(v276 + 64);
          v104 = v265;
          v105 = (v265 + *(v276 + 80));
          v106 = v266;
          *v265 = v274;
          v104[1] = v106;
          v100(v104 + v103, v101 + v96, v99);
          v5 = &qword_1EC4BE670;
          v41 = v272;
          v94 = 0;
          *v105 = sub_1CF485B44;
          v105[1] = v102;
          v95 = v275;
          v7 = v276;
        }

        v107 = v265;
        v93(v265, v94, 1, v7);
        v108 = v258;
        sub_1CEFE55D0(v107, v258, &unk_1EC4C04F0, &qword_1CFA12B10);
        if ((v95)(v108, 1, v7) == 1)
        {

          goto LABEL_33;
        }

        v109 = *(v7 + 64);
        v110 = *(v7 + 80);
        v111 = *v108;
        v112 = v108;
        v113 = v271;
        *v271 = v111;
        v114 = sub_1CF9E6448();
        v274 = *(v114 - 8);
        v275 = v114;
        v115 = *(v274 + 32);
        v266 = *(v112 + v110);
        v115(v113 + v109, v112 + v109);
        *(v113 + v110) = v266;
        v116 = fpfs_current_or_default_log();
        v117 = v264;
        sub_1CF9E6128();
        v118 = v257;
        sub_1CEFCCBDC(v113, v257, v5, &qword_1CF9FE4D0);
        v119 = v41;
        v120 = v262;
        v121 = sub_1CF9E6108();
        v122 = sub_1CF9E7288();

        if (os_log_type_enabled(v121, v122))
        {
          v64 = swift_slowAlloc();
          v254 = swift_slowAlloc();
          *&v266 = swift_slowAlloc();
          v279[0] = v266;
          *v64 = v250;
          v65 = NSFileProviderItemIdentifier.description.getter();
          LODWORD(v253) = v122;
          v66 = v5;
          v67 = v65;
          v69 = v68;

          v70 = sub_1CEFD0DF0(v67, v69, v279);

          *(v64 + 4) = v70;
          *(v64 + 12) = 2080;
          v71 = v118;
          v72 = v118;
          v73 = v120;
          v74 = v270;
          sub_1CEFCCBDC(v71, v270, v66, &qword_1CF9FE4D0);
          v75 = *v74;
          v76 = *(v276 + 64);
          v77 = *(v251 + *(v276 + 80));

          (*(v274 + 8))(v74 + v76, v275);
          sub_1CEFCCC44(v72, v66, &qword_1CF9FE4D0);
          v78 = sub_1CF913458(v75);
          v80 = v79;
          sub_1CEFD0A98(v75);
          v81 = sub_1CEFD0DF0(v78, v80, v279);

          *(v64 + 14) = v81;
          *(v64 + 22) = 2112;
          *(v64 + 24) = v73;
          v82 = v254;
          *v254 = v262;
          v83 = v73;
          _os_log_impl(&dword_1CEFC7000, v121, v253, "propagation <fp:%s reason:%s> completed: %@", v64, 0x20u);
          sub_1CEFCCC44(v82, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v82, -1, -1);
          v84 = v266;
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v84, -1, -1);
          MEMORY[0x1D386CDC0](v64, -1, -1);

          (*v255)(v264, v261);
        }

        else
        {
          sub_1CEFCCC44(v118, v5, &qword_1CF9FE4D0);

          (*v255)(v117, v261);
          v74 = v270;
          v66 = v5;
        }

        v85 = v271;
        sub_1CEFCCBDC(v271, v74, v66, &qword_1CF9FE4D0);
        sub_1CEFD0A98(*v74);
        v5 = v66;
        v7 = v276;
        v86 = *(v276 + 64);
        v87 = v74 + *(v276 + 80);
        v89 = *v87;
        v88 = *(v87 + 1);
        v279[3] = &type metadata for SQLDatabaseReadWriteAccessor;
        v279[4] = &off_1F4C17938;
        v279[0] = v259;
        LOBYTE(v279[1]) = v260;
        v90 = v259;
        v89(v279, v256);

        sub_1CEFCCC44(v85, v5, &qword_1CF9FE4D0);
        sub_1CEFCCC44(v279, &unk_1EC4C1B30, &qword_1CFA05300);
        (*(v274 + 8))(v74 + v86, v275);
        v41 = v272;
        v63 = v273;
        v34 = v267;
      }
    }

    v57 = sub_1CF033A74();
    v58 = v249;
    sub_1CF408200(v41, v57, v259, v260, v279);
    v249 = v58;
    if (v58)
    {

LABEL_56:

      return;
    }

    v242 = v51;
    v239 = v53;
    v124 = v279[0];
    v246 = v279[1];
    v125 = v279[2];

    if ((v124 & 1) == 0)
    {

      goto LABEL_56;
    }

    if (v125)
    {
      v42 = v256;
      v53 = v239;
LABEL_83:
      v51 = v242;
      goto LABEL_12;
    }

    v34 = &v232;
    v238 = *v239;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_61:
      v182 = v238[2];
      v183 = (*(v252 + 80) + 32) & ~*(v252 + 80);
      v237 = v183;
      if (v182)
      {
        v235 = v7;
        v236 = v34;
        v184 = 0;
        v185 = v238 + v183;
        v186 = *(v252 + 72);
        v234 = v238 + v183 + v186;
        v243 = v238 + v183;
        v245 = v186;
        do
        {
          v187 = v182;
          v188 = v186 * v184;
          v244 = v187;
          v189 = v186 * (v184 - v187);
          while (1)
          {
            v251 = v189;
            v254 = v184;
            v190 = &v185[v188];
            v191 = &v185[v188];
            v192 = v267;
            sub_1CEFCCBDC(v191, v267, &qword_1EC4BE670, &qword_1CF9FE4D0);
            v193 = v276;
            v194 = *(v276 + 64);
            v247 = *(v276 + 80);
            v195 = *v192;
            *&v250 = v192[1];
            v196 = v250;
            *v270 = v195;
            v270[1] = v196;
            v197 = sub_1CF9E6448();
            v198 = *(v197 - 8);
            v199 = *(v198 + 32);
            v200 = v198 + 32;
            v199(v270 + v194, v192 + v194, v197);
            v201 = *(v193 + 80);
            v202 = v270;
            v203 = (v270 + v201);
            v204 = swift_allocObject();
            *(v204 + 16) = *(v192 + v247);
            *v203 = sub_1CF485B44;
            v203[1] = v204;
            sub_1CEFCCC44(v202, &qword_1EC4BE670, &qword_1CF9FE4D0);
            if (v250 < v246)
            {
              break;
            }

            v184 = v254 + 1;
            v188 += v245;
            v189 = v251 + v245;
            v185 = v243;
            if (v254 + 1 >= v244)
            {
              goto LABEL_79;
            }
          }

          v247 = v200;
          *&v250 = v199;
          v232 = v190;
          v233 = v188;
          v205 = 0;
          v182 = v244;
          v240 = v197;
          v241 = &v243[v245 * (v244 - 1)];
          v206 = v251;
          do
          {
            if (v254 >= --v182)
            {
              v184 = v254;
              goto LABEL_79;
            }

            v207 = v267;
            sub_1CEFCCBDC(&v241[v205], v267, &qword_1EC4BE670, &qword_1CF9FE4D0);
            v208 = v276;
            v209 = *(v276 + 64);
            v251 = *(v276 + 80);
            v210 = v207[1];
            v211 = v270;
            *v270 = *v207;
            v211[1] = v210;
            (v250)(v211 + v209, v207 + v209, v240);
            v212 = (v211 + *(v208 + 80));
            v213 = swift_allocObject();
            *(v213 + 16) = *(v207 + v251);
            *v212 = sub_1CF485B44;
            v212[1] = v213;
            v186 = v245;
            sub_1CEFCCC44(v211, &qword_1EC4BE670, &qword_1CF9FE4D0);
            v206 = (v206 + v186);
            v205 -= v186;
          }

          while (v210 < v246);
          v214 = v232;
          sub_1CEFE55D0(v232, v262, &qword_1EC4BE670, &qword_1CF9FE4D0);
          v215 = v186 * v244 + v205;
          if (v233 < v215 || v214 >= &v234[v205 + v186 * v244])
          {
            v185 = v243;
            swift_arrayInitWithTakeFrontToBack();
          }

          else
          {
            v185 = v243;
            if (v206)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          sub_1CEFE55D0(v262, &v185[v215], &qword_1EC4BE670, &qword_1CF9FE4D0);
          v184 = v254 + 1;
        }

        while (v254 + 1 < v182);
LABEL_79:
        v53 = v239;
        *v239 = v238;
        if ((v184 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v217 = *v53;
          v41 = v272;
          v5 = v253;
          v7 = v235;
          if (*(*v53 + 16) >= v184)
          {
LABEL_81:
            v254 = v184;
            v218 = (2 * v184) | 1;
            v219 = v41;

            v221 = v237;
            v222 = sub_1CF477AC4(v220, v217 + v237, 0, v218);
            swift_beginAccess();
            v223 = *(v5 + v7);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v277[0] = *(v5 + v7);
            *(v5 + v7) = 0x8000000000000000;
            v225 = v222;
            v226 = v254;
            sub_1CF1D348C(v225, v219, isUniquelyReferenced_nonNull_native);

            *(v5 + v7) = v277[0];
            swift_endAccess();
            v227 = *(*v53 + 16);
            if (v227 >= v226)
            {
              v228 = (2 * v227) | 1;

              v230 = sub_1CF477AC4(v229, v229 + v221, v226, v228);
              v231 = *v53;
              *v53 = v230;

              v42 = v256;
              goto LABEL_83;
            }

LABEL_90:
            __break(1u);
            return;
          }
        }

        __break(1u);
        goto LABEL_90;
      }

      v216 = v238;
      v53 = v239;
      *v239 = v238;
      v184 = 0;
      v217 = v216;
      goto LABEL_81;
    }

LABEL_87:
    v238 = sub_1CF772374(v238);
    goto LABEL_61;
  }
}

uint64_t sub_1CF4076E0(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5, void *a6, unsigned int a7)
{
  v9 = v7;
  v103 = a6;
  v104 = a5;
  LOBYTE(v12) = a3;
  v102 = sub_1CF9E6118();
  v107 = *(v102 - 8);
  v15 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v96 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_1EC4EBD80;
  result = swift_beginAccess();
  v19 = *(&v17->isa + v7);
  if (*(v19 + 16))
  {
    result = sub_1CF7BF2C0(a1, a2);
    if (v20)
    {
      v91 = a1;
      v95 = a2;
      v94 = a7;
      v88 = v8;
      v21 = *(*(v19 + 56) + 8 * result);
      swift_bridgeObjectRetain_n();
      v22 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_30;
      }

      for (i = v21[2]; i; i = v22[2])
      {
        v24 = 0;
        v25 = qword_1CFA05BE8[v12];
        v26 = v22 + 7;
        while (1)
        {
          v27 = &v26[5 * v24];
          v28 = v24;
LABEL_7:
          v29 = *(v27 - 1);
          v30 = qword_1CFA05BE8[*(v27 - 16)];
          if (v30 != v25 || v29 <= a4)
          {
            break;
          }

          v32 = *(v27 - 16);
          v33 = &v26[5 * i];
          do
          {
            if (v28 >= --i)
            {
              goto LABEL_27;
            }

            v34 = *(v33 - 6);
            v35 = qword_1CFA05BE8[*(v33 - 56)];
            v33 -= 5;
          }

          while (v35 == v30 && v34 > a4);
          if (v28 != i)
          {
            v37 = *(v27 - 3);
            v38 = *v27;
            v40 = *(v33 - 3);
            v39 = *(v33 - 1);
            v27[1] = v33[1];
            *(v27 - 3) = v40;
            *(v27 - 1) = v39;
            *(v33 - 3) = v37;
            *(v33 - 16) = v32;
            *(v33 - 1) = v29;
            *v33 = v38;
          }

          v24 = v28 + 1;
          if (v28 + 1 >= i)
          {
            ++v28;
            goto LABEL_27;
          }
        }

        ++v28;
        v27 += 5;
        if (v28 < i)
        {
          goto LABEL_7;
        }

        if (i <= v24 + 1)
        {
          v28 = v24 + 1;
        }

        else
        {
          v28 = i;
        }

LABEL_27:
        if (v28 < 0)
        {
          goto LABEL_64;
        }

        v41 = v22[2];
        if (v41 >= v28)
        {
          goto LABEL_32;
        }

        __break(1u);
LABEL_30:
        v22 = sub_1CF772360(v21);
      }

      v28 = 0;
      v41 = v22[2];
LABEL_32:
      swift_unknownObjectRetain();
      v42 = v22;
      if (v41 != v28)
      {
        goto LABEL_65;
      }

LABEL_33:
      swift_beginAccess();
      v43 = *(&v17->isa + v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v114 = *(&v17->isa + v9);
      *(&v17->isa + v9) = 0x8000000000000000;
      sub_1CF1D4984(v42, v91, v95, isUniquelyReferenced_nonNull_native);
      *(&v17->isa + v9) = v114;
      swift_endAccess();
      v45 = v22[2];
      v46 = v94;
      if (v45 < v28)
      {
        __break(1u);
      }

      else
      {
        swift_unknownObjectRetain();
        v47 = v22;
        if (!v28)
        {
LABEL_35:

          v48 = v47[2];
          v49 = v21[2];

          v50 = v48 == v49;
          v28 = v104;
          if (v50)
          {
            swift_beginAccess();
            v51 = *(&v17->isa + v9);
            v52 = sub_1CF7BF2C0(v91, v95);
            if (v53)
            {
              v54 = v52;
              v55 = *(&v17->isa + v9);
              v56 = swift_isUniquelyReferenced_nonNull_native();
              v57 = *(&v17->isa + v9);
              v114 = v57;
              if ((v56 & 1) == 0)
              {
                sub_1CF7D4C40();
                v57 = v114;
              }

              v58 = *(*(v57 + 56) + 8 * v54);
              sub_1CF1D5A10(v54, v57);

              *(&v17->isa + v9) = v57;
              v28 = v104;
            }

            swift_endAccess();
          }

          v59 = sub_1CF19F384(v12);
          v93 = (*(v59 + 176))();
          v101 = v60;
          if (v28)
          {
            swift_getErrorValue();
            v61 = Error.prettyDescription.getter(v108);
          }

          else
          {
            sub_1CEFD57E0(0, &unk_1EDEA3410, 0x1E696AEC0);
            v61 = sub_1CF9E7598();
          }

          v105 = v61;
          v12 = v96;
          v63 = v47[2];
          if (!v63)
          {
LABEL_61:
          }

          v9 = 0;
          v99 = (v107 + 8);
          v64 = 1953460082;
          if (v91)
          {
            v64 = 0x6873617274;
          }

          v90 = v64;
          v65 = 0xE500000000000000;
          if (!v91)
          {
            v65 = 0xE400000000000000;
          }

          v89 = v65;
          v21 = v47 + 8;
          *&v62 = 136315906;
          v92 = v62;
          v100 = v47;
          while (1)
          {
            if (v9 >= v63)
            {
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              sub_1CF4772B4(v22, (v22 + 4), 0, (2 * v28) | 1);
              v42 = v86;

              goto LABEL_33;
            }

            v67 = v46;
            v22 = *(v21 - 4);
            v68 = *v21;
            v106 = *(v21 - 1);
            v107 = v68;
            swift_retain_n();
            sub_1CEFD09A0(v22);
            v69 = fpfs_current_or_default_log();
            sub_1CF9E6128();
            sub_1CEFD09A0(v22);
            sub_1CEFD09A0(v22);
            v70 = v101;

            v71 = v105;
            v72 = v12;
            v17 = sub_1CF9E6108();
            v73 = sub_1CF9E7298();

            if (os_log_type_enabled(v17, v73))
            {
              break;
            }

            sub_1CEFD0A98(v22);
            sub_1CEFD0A98(v22);

            (*v99)(v72, v102);
            v12 = v72;
            v46 = v67;
LABEL_52:
            ++v9;
            v112 = &type metadata for SQLDatabaseReadWriteAccessor;
            v113 = &off_1F4C17938;
            v28 = v104;
            v110 = v103;
            LOBYTE(v111) = v46;
            v114 = v104;
            v66 = v103;
            v106(&v110, &v114);
            sub_1CEFD0A98(v22);

            sub_1CEFCCC44(&v110, &unk_1EC4C1B30, &qword_1CFA05300);
            v63 = v100[2];
            v21 += 5;
            if (v9 == v63)
            {
              goto LABEL_61;
            }
          }

          v74 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v114 = v98;
          *v74 = v92;
          *(v74 + 4) = sub_1CEFD0DF0(v93, v70, &v114);
          *(v74 + 12) = 2080;
          if (v95)
          {
            v75 = v90;
            v76 = v89;
            if (v95 != 1)
            {
LABEL_60:
              v78 = sub_1CEFD0DF0(v75, v76, &v114);

              *(v74 + 14) = v78;
              *(v74 + 22) = 2080;
              v79 = sub_1CEFD11AC(v22);
              v81 = v80;
              sub_1CEFD0A98(v22);
              sub_1CEFD0A98(v22);
              v82 = sub_1CEFD0DF0(v79, v81, &v114);

              *(v74 + 24) = v82;
              *(v74 + 32) = 2112;
              *(v74 + 34) = v71;
              v83 = v97;
              *v97 = v105;
              v84 = v71;
              _os_log_impl(&dword_1CEFC7000, v17, v73, "%s <fs:%s reason:%s> completed: %@", v74, 0x2Au);
              sub_1CEFCCC44(v83, &qword_1EC4BE350, &unk_1CF9FC3B0);
              MEMORY[0x1D386CDC0](v83, -1, -1);
              v85 = v98;
              swift_arrayDestroy();
              MEMORY[0x1D386CDC0](v85, -1, -1);
              MEMORY[0x1D386CDC0](v74, -1, -1);

              v12 = v96;
              (*v99)(v96, v102);
              v46 = v94;
              goto LABEL_52;
            }

            v110 = 0x284449656C6966;
            v111 = 0xE700000000000000;
            v109 = v91;
          }

          else
          {
            v110 = 0x284449636F64;
            v111 = 0xE600000000000000;
            LODWORD(v109) = v91;
          }

          v77 = sub_1CF9E7F98();
          MEMORY[0x1D3868CC0](v77);

          MEMORY[0x1D3868CC0](41, 0xE100000000000000);
          v75 = v110;
          v76 = v111;
          goto LABEL_60;
        }
      }

      sub_1CF4772B4(v22, (v22 + 4), v28, (2 * v45) | 1);
      v47 = v87;

      goto LABEL_35;
    }
  }

  return result;
}

uint64_t sub_1CF407FF8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v19 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v19 - v16;
  sub_1CEFCCBDC(v3, &v19 - v16, &unk_1EC4BF650, &unk_1CF9FCB40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CEFE55D0(v17, v9, &unk_1EC4BFD70, &qword_1CFA12AC0);
    sub_1CF46AEEC(a1 & 1, a2);
    sub_1CEFCCC44(v9, &unk_1EC4BFD70, &qword_1CFA12AC0);
  }

  else
  {
    sub_1CEFE55D0(v17, v13, &unk_1EC4BFCC0, &unk_1CF9FCB50);
    sub_1CF46A9E4(a1 & 1, a2);
    sub_1CEFCCC44(v13, &unk_1EC4BFCC0, &unk_1CF9FCB50);
  }

  return swift_storeEnumTagMultiPayload();
}

void sub_1CF408200(void *a1@<X0>, int64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v114 = a5;
  v9 = sub_1CF9E6118();
  *&v113 = *(v9 - 8);
  v10 = *(v113 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v109 - v14;
  v122[0] = a1;
  v120 = a3;
  v121 = a4;
  v16 = *(a2 + 16);
  v17 = v154;
  sub_1CF7EBA74(a1, a3, a4, v119);
  if (v17)
  {
    return;
  }

  v112 = v9;
  v154 = 0;
  memcpy(v118, v119, sizeof(v118));
  if (sub_1CF08B99C(v118) != 1)
  {
    memcpy(v117, v119, sizeof(v117));
    LOBYTE(v24) = v117[1];
    v125 = *&v119[7];
    v126 = *&v119[9];
    v127 = *&v119[11];
    v128 = *&v119[13];
    v123 = *&v119[3];
    v124 = *&v119[5];
    v131 = *(&v119[17] + 1);
    v132 = *(&v119[19] + 1);
    *v133 = *(&v119[21] + 1);
    *&v133[15] = *&v119[23];
    v130 = *(&v119[15] + 1);
    v146 = *(&v119[51] + 1);
    *v147 = *(&v119[53] + 1);
    v144 = *(&v119[47] + 1);
    v145 = *(&v119[49] + 1);
    v142 = *(&v119[43] + 1);
    v143 = *(&v119[45] + 1);
    v140 = *(&v119[39] + 1);
    v141 = *(&v119[41] + 1);
    v138 = *(&v119[35] + 1);
    v139 = *(&v119[37] + 1);
    v137 = *(&v119[33] + 1);
    v134 = *(&v119[27] + 1);
    v135 = *(&v119[29] + 1);
    v136 = *(&v119[31] + 1);
    v149 = *&v119[57];
    v33 = v117[56];
    v27 = v117[60];
    v152 = *&v119[61];
    v153 = *&v119[63];
    v122[1] = v117[0];
    v122[2] = v117[1];
    v122[3] = v117[2];
    v129 = v117[15];
    v34 = *&v117[25];
    *&v133[31] = *&v117[25];
    v133[47] = v117[27];
    *&v147[15] = v119[55];
    v148 = v117[56];
    v150 = v119[59];
    v151 = v117[60];
    if (LOBYTE(v117[15]) == 2)
    {
      v35 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v36 = a1;
      v37 = sub_1CF9E6108();
      v38 = sub_1CF9E7298();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = v15;
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v116[0] = v41;
        *v40 = 136315138;
        v42 = NSFileProviderItemIdentifier.description.getter();
        v44 = v43;

        v45 = sub_1CEFD0DF0(v42, v44, v116);

        *(v40 + 4) = v45;
        _os_log_impl(&dword_1CEFC7000, v37, v38, "%s did not propagate: propagating is still in progress", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v41);
        MEMORY[0x1D386CDC0](v41, -1, -1);
        MEMORY[0x1D386CDC0](v40, -1, -1);

        (*(v113 + 8))(v39, v112);
      }

      else
      {

        (*(v113 + 8))(v15, v112);
      }
    }

    else
    {
      if (v117[1] && (!v117[0] || LOBYTE(v117[27]) == 255))
      {
        sub_1CEFCCC44(v117, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        v67 = 0;
        v68 = 0;
        v69 = 1;
        v70 = 1;
        v71 = 1;
        v72 = v114;
        goto LABEL_40;
      }

      if (v117[0] && LOBYTE(v117[27]) != 255)
      {
        v46 = v117[2];
        if (qword_1EDEABDE0 != -1)
        {
          goto LABEL_83;
        }

        goto LABEL_15;
      }

      v50 = fpfs_current_or_default_log();
      v51 = v13;
      sub_1CF9E6128();
      v52 = a1;
      v53 = sub_1CF9E6108();
      v54 = sub_1CF9E7298();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v116[0] = v56;
        *v55 = 136315138;
        v57 = NSFileProviderItemIdentifier.description.getter();
        v59 = v58;

        v60 = sub_1CEFD0DF0(v57, v59, v116);

        *(v55 + 4) = v60;
        _os_log_impl(&dword_1CEFC7000, v53, v54, "%s did not propagate: item is not bound", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v56);
        MEMORY[0x1D386CDC0](v56, -1, -1);
        MEMORY[0x1D386CDC0](v55, -1, -1);
      }

      else
      {
      }

      (*(v113 + 8))(v51, v112);
    }

    sub_1CEFCCC44(v117, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    v72 = v114;
    v69 = 0;
    v67 = 0;
    v68 = 0;
    v70 = 1;
    v71 = 1;
    goto LABEL_40;
  }

  memcpy(v117, v119, sizeof(v117));
  sub_1CEFCCC44(v117, &unk_1EC4BFD80, &unk_1CFA0A2A0);
  v18 = 0;
  LODWORD(v112) = 1;
  while (1)
  {
    v19 = *(a2 + 24);
    v20 = sub_1CF8DCAC4();
    v21 = *(v20 + 52);
    v22 = (*(v20 + 48) + 7) & 0x1FFFFFFF8;
    v23 = swift_allocObject();
    v113 = xmmword_1CF9FA450;
    *(v23 + 16) = xmmword_1CF9FA450;
    *(v23 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF80, &qword_1CF9FB478);
    v24 = *v19 + 312;
    v25 = *v24;
    v26 = v154;
    v27 = (*v24)(v122, v23, &v120, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

    if (v26)
    {
      return;
    }

    v110 = v18;
    v28 = sub_1CF8DCAC4();
    v29 = *(v28 + 52);
    v30 = (*(v28 + 48) + 7) & 0x1FFFFFFF8;
    v31 = swift_allocObject();
    *(v31 + 16) = v113;
    *(v31 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF20, &unk_1CFA05470);
    v32 = v25(v122, v31, &v120, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v154 = 0;
    v61 = v32;

    if (v27 >> 62)
    {
      v46 = sub_1CF9E7818();
    }

    else
    {
      v46 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *&v113 = v61;
    v62 = MEMORY[0x1E69E7CC0];
    if (!v46)
    {

      v73 = v61;
      v33 = MEMORY[0x1E69E7CC0];
LABEL_45:
      v74 = *(v33 + 16);
      if (!v74)
      {
        v67 = 0;
        goto LABEL_69;
      }

      v67 = *(v33 + 32);
      v75 = v74 - 1;
      if (v74 == 1)
      {
        goto LABEL_69;
      }

      if (v74 >= 5)
      {
        v76 = v75 & 0xFFFFFFFFFFFFFFFCLL | 1;
        v78 = vdupq_n_s64(v67);
        v79 = (v33 + 56);
        v80 = v75 & 0xFFFFFFFFFFFFFFFCLL;
        v81 = v78;
        do
        {
          v78 = vbslq_s8(vcgtq_s64(v78, v79[-1]), v79[-1], v78);
          v81 = vbslq_s8(vcgtq_s64(v81, *v79), *v79, v81);
          v79 += 2;
          v80 -= 4;
        }

        while (v80);
        v82 = vbslq_s8(vcgtq_s64(v81, v78), v78, v81);
        v83 = vextq_s8(v82, v82, 8uLL).u64[0];
        v67 = vbsl_s8(vcgtd_s64(v83, v82.i64[0]), *v82.i8, v83);
        if (v75 == (v75 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_69;
        }
      }

      else
      {
        v76 = 1;
      }

      v84 = v74 - v76;
      v85 = (v33 + 8 * v76 + 32);
      do
      {
        v87 = *v85++;
        v86 = v87;
        if (v87 < v67)
        {
          v67 = v86;
        }

        --v84;
      }

      while (v84);
LABEL_69:
      v109 = *(v33 + 16);

      if (v73 >> 62)
      {
        v27 = sub_1CF9E7818();
        if (v27)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v27 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v27)
        {
LABEL_71:
          v117[0] = v62;
          sub_1CF681008(0, v27 & ~(v27 >> 63), 0);
          if (v27 < 0)
          {
            goto LABEL_121;
          }

          v46 = 0;
          v33 = v117[0];
          v88 = v73;
          v89 = v73 & 0xC000000000000001;
          v111 = v88 & 0xFFFFFFFFFFFFFF8;
          do
          {
            if (v89)
            {
              v90 = MEMORY[0x1D3869C30](v46);
            }

            else
            {
              if (v46 >= *(v111 + 16))
              {
                goto LABEL_82;
              }

              v91 = *(v88 + 8 * v46 + 32);
            }

            v92 = *(v90 + 128);

            v117[0] = v33;
            a2 = *(v33 + 16);
            v93 = *(v33 + 24);
            v24 = a2 + 1;
            if (a2 >= v93 >> 1)
            {
              sub_1CF681008((v93 > 1), a2 + 1, 1);
              v33 = v117[0];
            }

            ++v46;
            *(v33 + 16) = v24;
            *(v33 + 8 * a2 + 32) = v92;
            v88 = v113;
          }

          while (v27 != v46);

LABEL_87:
          v94 = *(v33 + 16);
          v71 = v94 == 0;
          if (!v94)
          {
            v68 = 0;
            goto LABEL_99;
          }

          v68 = *(v33 + 32);
          v95 = v94 - 1;
          if (v94 == 1)
          {
            goto LABEL_99;
          }

          if (v94 >= 5)
          {
            v96 = v95 & 0xFFFFFFFFFFFFFFFCLL | 1;
            v97 = vdupq_n_s64(v68);
            v98 = (v33 + 56);
            v99 = v95 & 0xFFFFFFFFFFFFFFFCLL;
            v100 = v97;
            do
            {
              v97 = vbslq_s8(vcgtq_s64(v97, v98[-1]), v98[-1], v97);
              v100 = vbslq_s8(vcgtq_s64(v100, *v98), *v98, v100);
              v98 += 2;
              v99 -= 4;
            }

            while (v99);
            v101 = vbslq_s8(vcgtq_s64(v100, v97), v97, v100);
            v102 = vextq_s8(v101, v101, 8uLL).u64[0];
            v68 = vbsl_s8(vcgtd_s64(v102, v101.i64[0]), *v101.i8, v102);
            if (v95 == (v95 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_99;
            }
          }

          else
          {
            v96 = 1;
          }

          v103 = v94 - v96;
          v104 = (v33 + 8 * v96 + 32);
          do
          {
            v106 = *v104++;
            v105 = v106;
            if (v106 < v68)
            {
              v68 = v105;
            }

            --v103;
          }

          while (v103);
LABEL_99:

          if (v112)
          {
            if (!v109)
            {
              v67 = 0;
              v69 = 1;
              v70 = 1;
              v72 = v114;
              goto LABEL_40;
            }

            if (v94)
            {
              v107 = v67;
              goto LABEL_115;
            }

            v70 = 0;
            v71 = 0;
            v69 = 1;
            v68 = v67;
            v72 = v114;
          }

          else
          {
            if (v109)
            {
              v70 = 0;
              v71 = 0;
              if (v67 >= v110)
              {
                v67 = v110;
              }

              if (v68 >= v67)
              {
                v108 = v67;
              }

              else
              {
                v108 = v68;
              }

              if (v94)
              {
                v68 = v108;
              }

              else
              {
                v68 = v67;
              }

              goto LABEL_117;
            }

            if (v94)
            {
              v107 = v110;
              v67 = v110;
LABEL_115:
              v70 = 0;
              v71 = 0;
              if (v68 >= v107)
              {
                v68 = v107;
              }

LABEL_117:
              v69 = 1;
              v72 = v114;
              goto LABEL_40;
            }

            v70 = 0;
            v71 = 0;
            v69 = 1;
            v68 = v110;
            v67 = v110;
            v72 = v114;
          }

LABEL_40:
          *v72 = v69;
          *(v72 + 8) = v67;
          *(v72 + 16) = v70;
          *(v72 + 24) = v68;
          *(v72 + 32) = v71;
          return;
        }
      }

      v33 = MEMORY[0x1E69E7CC0];
      goto LABEL_87;
    }

    v117[0] = MEMORY[0x1E69E7CC0];
    sub_1CF681008(0, v46 & ~(v46 >> 63), 0);
    if (v46 < 0)
    {
      break;
    }

    v24 = 0;
    v33 = v117[0];
    v111 = v27 & 0xFFFFFFFFFFFFFF8;
    while ((v27 & 0xC000000000000001) != 0)
    {
      v63 = MEMORY[0x1D3869C30](v24, v27);
LABEL_32:
      v65 = *(v63 + 128);

      v117[0] = v33;
      a2 = *(v33 + 16);
      v66 = *(v33 + 24);
      if (a2 >= v66 >> 1)
      {
        sub_1CF681008((v66 > 1), a2 + 1, 1);
        v33 = v117[0];
      }

      ++v24;
      *(v33 + 16) = a2 + 1;
      *(v33 + 8 * a2 + 32) = v65;
      if (v46 == v24)
      {

        v73 = v113;
        v62 = MEMORY[0x1E69E7CC0];
        goto LABEL_45;
      }
    }

    if (v24 < *(v111 + 16))
    {
      v64 = *(v27 + 8 * v24 + 32);

      goto LABEL_32;
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    v113 = v34;
    swift_once();
    LOBYTE(v34) = v113;
LABEL_15:
    v47 = qword_1EDEABDE8;
    if (*(*(a2 + 32) + 32))
    {
      v48 = qword_1EDEABDE8 & 0xFFFFFFFFFFFEFFEFLL | 0x10;
    }

    else
    {
      v48 = qword_1EDEABDE8 | 0x10;
    }

    if (*(*(a2 + 32) + 32))
    {
      v49 = (v33 >> 2) & 1;
    }

    else
    {
      LODWORD(v49) = (v34 & 4) != 0 && (v34 & 0x30) == 0;
    }

    sub_1CF7F6024(v116);
    if (LOBYTE(v116[1]) == 255 || !v116[31] || v116[24] >> 60 == 11)
    {
      memcpy(v115, v116, sizeof(v115));
      sub_1CEFCCC44(v115, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      sub_1CEFCCC44(v117, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      goto LABEL_55;
    }

    v77 = LOBYTE(v116[43]);
    memcpy(v115, v116, sizeof(v115));
    sub_1CEFCCC44(v115, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    sub_1CEFCCC44(v117, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    if (v77)
    {
LABEL_55:
      if (v49)
      {
        goto LABEL_56;
      }
    }

    else
    {
LABEL_56:
      v48 &= v47 & 0xFF9BD6FFFFFE36E7 | 0x6409000000C000;
    }

    LODWORD(v112) = (v48 & v46 | v24 & 0x51) == 0;
    if (v48 & v46 | v24 & 0x51)
    {
      v18 = v27;
    }

    else
    {
      v18 = 0;
    }
  }

  __break(1u);
LABEL_121:
  __break(1u);
}

void sub_1CF408EF0(void *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v119 = a6;
  v11 = sub_1CF9E6118();
  *&v121 = *(v11 - 8);
  v12 = *(v121 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v115 - v16;
  v129 = a1;
  v130 = a2;
  v127 = a4;
  v128 = a5;
  v120 = a3;
  v18 = *(a3 + 16);
  v19 = v169;
  sub_1CF7EB934(a1, a2, a4, a5, v126);
  if (v19)
  {
    return;
  }

  v20 = v17;
  v117 = v15;
  v118 = v11;
  v22 = v120;
  v21 = v121;
  v169 = 0;
  memcpy(v125, v126, sizeof(v125));
  if (sub_1CF08B99C(v125) != 1)
  {
    memcpy(v124, v126, sizeof(v124));
    v140 = *&v126[96];
    v141 = *&v126[112];
    v142 = *&v126[128];
    v143 = *&v126[144];
    v136 = *&v126[32];
    v137 = *&v126[48];
    v138 = *&v126[64];
    v139 = *&v126[80];
    v146 = *&v126[177];
    v147 = *&v126[193];
    *v148 = *&v126[209];
    *&v148[15] = *&v126[224];
    v145 = *&v126[161];
    v153 = *&v126[288];
    v154 = *&v126[304];
    v151 = *&v126[256];
    v152 = *&v126[272];
    v157 = *&v126[352];
    v158 = *&v126[368];
    v155 = *&v126[320];
    v156 = *&v126[336];
    v161 = *&v126[416];
    v162 = *&v126[432];
    *v133 = *&v126[9];
    *&v133[3] = *&v126[12];
    LOBYTE(v37) = v124[2];
    LOBYTE(a4) = v124[30];
    v159 = *&v126[384];
    v160 = *&v126[400];
    v164 = *&v126[456];
    v38 = v124[56];
    v23 = v124[60];
    v167 = *&v126[488];
    v168 = *&v126[504];
    v131 = v124[0];
    v132 = v124[1];
    v134 = v124[2];
    v135 = v124[3];
    v144 = v124[20];
    v149 = v124[30];
    v150 = v124[31];
    v165 = *&v126[472];
    v163 = v124[56];
    v166 = v124[60];
    if (LOBYTE(v124[20]) == 2)
    {
      v39 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v40 = v129;
      v41 = v130;
      v42 = sub_1CF9E6108();
      v43 = sub_1CF9E7298();
      v44 = v21;
      if (os_log_type_enabled(v42, v43))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v120 = v20;
        v47 = v41;
        v48 = v46;
        v122[0] = v46;
        *v45 = 136315138;
        v123[0] = v40;
        LOBYTE(v123[1]) = v47;
        v50 = VFSItemID.description.getter(v46, v49);
        v52 = sub_1CEFD0DF0(v50, v51, v122);

        *(v45 + 4) = v52;
        _os_log_impl(&dword_1CEFC7000, v42, v43, "%s did not propagate: propagating is still in progress", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v48);
        MEMORY[0x1D386CDC0](v48, -1, -1);
        MEMORY[0x1D386CDC0](v45, -1, -1);

        (*(v44 + 8))(v120, v118);
      }

      else
      {

        (*(v21 + 8))(v20, v118);
      }
    }

    else
    {
      v53 = v118;
      if (v124[2] && (LOBYTE(v124[1]) == 255 || !v124[31]))
      {
        sub_1CEFCCC44(v124, &unk_1EC4BFC20, &unk_1CFA0A290);
        v29 = 0;
        v57 = 0;
        v56 = 1;
        v58 = 1;
        v59 = 1;
        v55 = v119;
        goto LABEL_22;
      }

      if (LOBYTE(v124[1]) != 255 && v124[31])
      {
        v29 = v124[3];
        if (qword_1EDEABDE0 != -1)
        {
          goto LABEL_82;
        }

        goto LABEL_15;
      }

      v60 = fpfs_current_or_default_log();
      v61 = v117;
      sub_1CF9E6128();
      v62 = v129;
      v63 = v130;
      v64 = sub_1CF9E6108();
      v65 = sub_1CF9E7298();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v68 = v63;
        v69 = v67;
        v122[0] = v67;
        *v66 = 136315138;
        v123[0] = v62;
        LOBYTE(v123[1]) = v68;
        v71 = VFSItemID.description.getter(v67, v70);
        v73 = sub_1CEFD0DF0(v71, v72, v122);

        *(v66 + 4) = v73;
        _os_log_impl(&dword_1CEFC7000, v64, v65, "%s did not propagate: item is not bound", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v69);
        MEMORY[0x1D386CDC0](v69, -1, -1);
        MEMORY[0x1D386CDC0](v66, -1, -1);

        (*(v121 + 8))(v61, v118);
      }

      else
      {

        (*(v21 + 8))(v61, v53);
      }
    }

    sub_1CEFCCC44(v124, &unk_1EC4BFC20, &unk_1CFA0A290);
    v55 = v119;
    v56 = 0;
    v29 = 0;
    v57 = 0;
    v58 = 1;
    v59 = 1;
LABEL_22:
    *v55 = v56;
    *(v55 + 8) = v29;
    *(v55 + 16) = v58;
    *(v55 + 24) = v57;
    *(v55 + 32) = v59;
    return;
  }

  memcpy(v124, v126, sizeof(v124));
  sub_1CEFCCC44(v124, &unk_1EC4BFC20, &unk_1CFA0A290);
  v23 = 0;
  LODWORD(v118) = 1;
  while (1)
  {
    v24 = v22[3];
    v25 = sub_1CF8DCAA0();
    v26 = *(v25 + 52);
    v27 = (*(v25 + 48) + 7) & 0x1FFFFFFF8;
    v28 = swift_allocObject();
    v121 = xmmword_1CF9FA450;
    *(v28 + 16) = xmmword_1CF9FA450;
    *(v28 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
    v22 = (*v24 + 312);
    v29 = *v22;
    v30 = v169;
    v31 = (*v22)(&v129, v28, &v127, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

    if (v30)
    {
      return;
    }

    v117 = v23;
    v32 = sub_1CF8DCAA0();
    v33 = *(v32 + 52);
    v34 = (*(v32 + 48) + 7) & 0x1FFFFFFF8;
    v35 = swift_allocObject();
    *(v35 + 16) = v121;
    *(v35 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA10, &qword_1CF9FADD8);
    v36 = (v29)(&v129, v35, &v127, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v169 = 0;
    v74 = v36;

    if (v31 >> 62)
    {
      v23 = sub_1CF9E7818();
    }

    else
    {
      v23 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *&v121 = v74;
    v38 = MEMORY[0x1E69E7CC0];
    if (!v23)
    {

      v79 = v74;
      v75 = MEMORY[0x1E69E7CC0];
LABEL_44:
      v80 = v75[2];
      if (!v80)
      {
        v29 = 0;
        goto LABEL_68;
      }

      v29 = v75[4];
      v81 = v80 - 1;
      if (v80 == 1)
      {
        goto LABEL_68;
      }

      if (v80 >= 5)
      {
        v82 = v81 & 0xFFFFFFFFFFFFFFFCLL | 1;
        v84 = vdupq_n_s64(v29);
        v85 = (v75 + 7);
        v86 = v81 & 0xFFFFFFFFFFFFFFFCLL;
        v87 = v84;
        do
        {
          v84 = vbslq_s8(vcgtq_s64(v84, v85[-1]), v85[-1], v84);
          v87 = vbslq_s8(vcgtq_s64(v87, *v85), *v85, v87);
          v85 += 2;
          v86 -= 4;
        }

        while (v86);
        v88 = vbslq_s8(vcgtq_s64(v87, v84), v84, v87);
        v89 = vextq_s8(v88, v88, 8uLL).u64[0];
        v29 = vbsl_s8(vcgtd_s64(v89, v88.i64[0]), *v88.i8, v89);
        if (v81 == (v81 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_68;
        }
      }

      else
      {
        v82 = 1;
      }

      v90 = v80 - v82;
      v91 = &v75[v82 + 4];
      do
      {
        v93 = *v91++;
        v92 = v93;
        if (v93 < v29)
        {
          v29 = v92;
        }

        --v90;
      }

      while (v90);
LABEL_68:
      v116 = v75[2];

      if (v79 >> 62)
      {
        v94 = sub_1CF9E7818();
        if (v94)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v94 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v94)
        {
LABEL_70:
          v124[0] = v38;
          sub_1CF681008(0, v94 & ~(v94 >> 63), 0);
          if (v94 < 0)
          {
            goto LABEL_120;
          }

          v23 = 0;
          v95 = v124[0];
          v96 = v79;
          v37 = v79 & 0xC000000000000001;
          v120 = v96 & 0xFFFFFFFFFFFFFF8;
          do
          {
            if (v37)
            {
              v97 = MEMORY[0x1D3869C30](v23);
            }

            else
            {
              if (v23 >= *(v120 + 16))
              {
                goto LABEL_81;
              }

              v98 = *(v96 + 8 * v23 + 32);
            }

            v38 = *(v97 + 128);

            v124[0] = v95;
            a4 = v95[2];
            v99 = v95[3];
            v22 = (a4 + 1);
            if (a4 >= v99 >> 1)
            {
              sub_1CF681008((v99 > 1), a4 + 1, 1);
              v95 = v124[0];
            }

            ++v23;
            v95[2] = v22;
            v95[a4 + 4] = v38;
            v96 = v121;
          }

          while (v94 != v23);

LABEL_86:
          v100 = v95[2];
          v59 = v100 == 0;
          if (!v100)
          {
            v57 = 0;
            goto LABEL_98;
          }

          v57 = v95[4];
          v101 = v100 - 1;
          if (v100 == 1)
          {
            goto LABEL_98;
          }

          if (v100 >= 5)
          {
            v102 = v101 & 0xFFFFFFFFFFFFFFFCLL | 1;
            v103 = vdupq_n_s64(v57);
            v104 = (v95 + 7);
            v105 = v101 & 0xFFFFFFFFFFFFFFFCLL;
            v106 = v103;
            do
            {
              v103 = vbslq_s8(vcgtq_s64(v103, v104[-1]), v104[-1], v103);
              v106 = vbslq_s8(vcgtq_s64(v106, *v104), *v104, v106);
              v104 += 2;
              v105 -= 4;
            }

            while (v105);
            v107 = vbslq_s8(vcgtq_s64(v106, v103), v103, v106);
            v108 = vextq_s8(v107, v107, 8uLL).u64[0];
            v57 = vbsl_s8(vcgtd_s64(v108, v107.i64[0]), *v107.i8, v108);
            if (v101 == (v101 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_98;
            }
          }

          else
          {
            v102 = 1;
          }

          v109 = v100 - v102;
          v110 = &v95[v102 + 4];
          do
          {
            v112 = *v110++;
            v111 = v112;
            if (v112 < v57)
            {
              v57 = v111;
            }

            --v109;
          }

          while (v109);
LABEL_98:

          if (v118)
          {
            if (!v116)
            {
              v29 = 0;
              v56 = 1;
              v58 = 1;
              v55 = v119;
              goto LABEL_22;
            }

            if (v100)
            {
              v113 = v29;
              goto LABEL_114;
            }

            v58 = 0;
            v59 = 0;
            v56 = 1;
            v57 = v29;
            v55 = v119;
          }

          else
          {
            if (v116)
            {
              v58 = 0;
              v59 = 0;
              if (v29 >= v117)
              {
                v29 = v117;
              }

              if (v57 >= v29)
              {
                v114 = v29;
              }

              else
              {
                v114 = v57;
              }

              if (v100)
              {
                v57 = v114;
              }

              else
              {
                v57 = v29;
              }

              goto LABEL_116;
            }

            if (v100)
            {
              v113 = v117;
              v29 = v117;
LABEL_114:
              v58 = 0;
              v59 = 0;
              if (v57 >= v113)
              {
                v57 = v113;
              }

LABEL_116:
              v56 = 1;
              v55 = v119;
              goto LABEL_22;
            }

            v58 = 0;
            v59 = 0;
            v56 = 1;
            v57 = v117;
            v29 = v117;
            v55 = v119;
          }

          goto LABEL_22;
        }
      }

      v95 = MEMORY[0x1E69E7CC0];
      goto LABEL_86;
    }

    v124[0] = MEMORY[0x1E69E7CC0];
    sub_1CF681008(0, v23 & ~(v23 >> 63), 0);
    if (v23 < 0)
    {
      break;
    }

    v22 = 0;
    v75 = v124[0];
    v37 = v31 & 0xC000000000000001;
    v120 = v31 & 0xFFFFFFFFFFFFFF8;
    while (v37)
    {
      v76 = MEMORY[0x1D3869C30](v22, v31);
LABEL_35:
      v38 = *(v76 + 128);

      v124[0] = v75;
      a4 = v75[2];
      v78 = v75[3];
      v29 = a4 + 1;
      if (a4 >= v78 >> 1)
      {
        sub_1CF681008((v78 > 1), a4 + 1, 1);
        v75 = v124[0];
      }

      v22 = (v22 + 1);
      v75[2] = v29;
      v75[a4 + 4] = v38;
      if (v23 == v22)
      {

        v79 = v121;
        v38 = MEMORY[0x1E69E7CC0];
        goto LABEL_44;
      }
    }

    if (v22 < *(v120 + 16))
    {
      v77 = *(v31 + 8 * v22 + 32);

      goto LABEL_35;
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    swift_once();
LABEL_15:
    *&v121 = qword_1EDEABDE8;
    if (*(v22[4] + 32))
    {
      v54 = qword_1EDEABDE8 & 0xFFFFFFFFFFFEFFEFLL | 0x10;
    }

    else
    {
      v54 = qword_1EDEABDE8 | 0x10;
    }

    if (*(v22[4] + 32))
    {
      a4 = (v38 >> 2) & 1;
    }

    else
    {
      LODWORD(a4) = (a4 & 4) != 0 && (a4 & 0x30) == 0;
    }

    sub_1CF7F62D0(v123);
    if (!v123[0] || LOBYTE(v123[27]) == 255 || v123[19] >> 60 == 11)
    {
      memcpy(v122, v123, sizeof(v122));
      sub_1CEFCCC44(v122, &unk_1EC4BFC90, &unk_1CFA053E0);
      sub_1CEFCCC44(v124, &unk_1EC4BFC20, &unk_1CFA0A290);
      goto LABEL_54;
    }

    v83 = LOBYTE(v123[43]);
    memcpy(v122, v123, sizeof(v122));
    sub_1CEFCCC44(v122, &unk_1EC4BFC90, &unk_1CFA053E0);
    sub_1CEFCCC44(v124, &unk_1EC4BFC20, &unk_1CFA0A290);
    if (v83)
    {
LABEL_54:
      if (a4)
      {
        goto LABEL_55;
      }
    }

    else
    {
LABEL_55:
      v54 &= v121 & 0xFF9BD6FFFFFE36E7 | 0x6409000000C000;
    }

    LODWORD(v118) = (v54 & v29 | v37 & 0x51) == 0;
    if (!(v54 & v29 | v37 & 0x51))
    {
      v23 = 0;
    }
  }

  __break(1u);
LABEL_120:
  __break(1u);
}