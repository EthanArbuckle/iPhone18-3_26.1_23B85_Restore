uint64_t sub_24B022ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Friend();
  v7 = MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D84F90];
  v12 = *(a1 + 16);
  if (v12)
  {
    v26 = v3;
    v27 = a2;
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v7 + 24);
    v29 = *(v7 + 20);
    v15 = *(v8 + 72);
    v28 = xmmword_24B2DE430;
    do
    {
      sub_24B0394EC(v13, v10, type metadata accessor for Friend);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7980);
      v16 = sub_24B2D1704();
      v17 = *(v16 - 8);
      v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = v28;
      v20 = (*(v17 + 16))(v19 + v18, &v10[v29], v16);
      v21 = *&v10[v14];
      MEMORY[0x28223BE20](v20);
      *(&v26 - 2) = v10;

      v22 = sub_24B00DCB0(sub_24AFF2290, (&v26 - 4), v21);
      v30 = v19;
      v23 = MEMORY[0x277D08BF8];
      sub_24B0333C8(v22, sub_24B006728, MEMORY[0x277D08BF8]);
      v24 = v30;
      sub_24B0395BC(v10, type metadata accessor for Friend);
      sub_24B0333C8(v24, sub_24B006728, v23);
      v13 += v15;
      --v12;
    }

    while (v12);
    v11 = v31;
    a2 = v27;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();

  sub_24B0231F4(v11, v31, a2);
}

uint64_t sub_24B0231F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v188 = a1;
  v153 = a3;
  v4 = sub_24B2D24A4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v144 = &v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v149 = &v144 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v156 = &v144 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v160 = &v144 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v155 = &v144 - v15;
  MEMORY[0x28223BE20](v14);
  v159 = &v144 - v16;
  v179 = sub_24B2D1704();
  v17 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v19 = &v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8448);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v177 = &v144 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v189 = &v144 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v148 = &v144 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v152 = &v144 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v150 = &v144 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v151 = &v144 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v180 = &v144 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v166 = &v144 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v165 = &v144 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v158 = &v144 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v164 = &v144 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v163 = &v144 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v185 = &v144 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v184 = &v144 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v51 = &v144 - v50;
  v52 = MEMORY[0x28223BE20](v49);
  v54 = &v144 - v53;
  MEMORY[0x28223BE20](v52);
  v56 = &v144 - v55;
  v57 = *(v5 + 56);
  v57(&v144 - v55, 1, 1, v4);
  v57(v54, 1, 1, v4);
  v168 = v5 + 56;
  v167 = v57;
  v57(v51, 1, 1, v4);
  v58 = *(v188 + 16);
  if (!v58)
  {
    sub_24AFF8258(v54, &qword_27EFC8450);
    sub_24AFF8258(v56, &qword_27EFC8450);
    sub_24AFF8258(v51, &qword_27EFC8450);
    v133 = v153;
    goto LABEL_57;
  }

  v182 = v56;
  v145 = 0;
  v146 = 0;
  v147 = 0;
  v161 = 0;
  v59 = 0;
  v186 = (v5 + 48);
  v173 = *(v17 + 16);
  v174 = v17 + 16;
  v60 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v178 = *(v17 + 72);
  v172 = (v17 + 8);
  v162 = (v5 + 32);
  v157 = (v5 + 8);
  v171 = -v58;
  v154 = v188 + v60;
  v61 = &qword_27EFC8450;
  v175 = v51;
  v176 = a2;
  v62 = v179;
  v183 = v19;
  v181 = v54;
  while (2)
  {
    v65 = v154 + v178 * v59;
    v66 = v59 + 1;
    while (1)
    {
      v187 = v65;
      v173(v19);
      v68 = *(a2 + 16);
      v188 = v66;
      if (v68)
      {
        v69 = v4;
        v70 = sub_24B181150(v19);
        v71 = v182;
        if (v72)
        {
          v73 = v70;
          v74 = *(a2 + 56);
          v75 = type metadata accessor for SessionFollowerState(0);
          v76 = *(v75 - 8);
          v77 = v74 + *(v76 + 72) * v73;
          v78 = v189;
          sub_24B0394EC(v77, v189, type metadata accessor for SessionFollowerState);
          (*v172)(v183, v62);
          (*(v76 + 56))(v78, 0, 1, v75);
          v19 = v183;
        }

        else
        {
          (*v172)(v19, v62);
          v75 = type metadata accessor for SessionFollowerState(0);
          v78 = v189;
          (*(*(v75 - 8) + 56))(v189, 1, 1, v75);
        }

        v4 = v69;
      }

      else
      {
        (*v172)(v19, v62);
        v75 = type metadata accessor for SessionFollowerState(0);
        v78 = v189;
        (*(*(v75 - 8) + 56))(v189, 1, 1, v75);
        v71 = v182;
      }

      v79 = v177;
      sub_24B008890(v78, v177, &qword_27EFC8448);
      type metadata accessor for SessionFollowerState(0);
      v80 = *(v75 - 8);
      v81 = (*(v80 + 48))(v79, 1, v75);
      v169 = v80;
      v170 = v75;
      if (v81 == 1)
      {
        sub_24AFF8258(v78, &qword_27EFC8448);
        v63 = v175;
        a2 = v176;
        v62 = v179;
        v64 = v181;
        v59 = v188;
        goto LABEL_4;
      }

      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        break;
      }

      v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458) + 48);
      v84 = v184;
      sub_24B0391CC(v79, v184, v61);
      sub_24B0391CC(v79 + v83, v185, v61);
      v85 = v164;
      sub_24B008890(v71, v164, v61);
      v86 = *v186;
      if ((*v186)(v85, 1, v4) == 1)
      {
        sub_24AFF8258(v71, v61);
        sub_24AFF8258(v85, v61);
        v87 = v163;
        sub_24B008890(v84, v163, v61);
        v88 = v180;
      }

      else
      {
        v89 = *v162;
        v90 = v159;
        (*v162)(v159, v85, v4);
        v91 = v158;
        sub_24B008890(v84, v158, v61);
        if (v86(v91, 1, v4) == 1)
        {
          v92 = v182;
          sub_24AFF8258(v182, v61);
          sub_24AFF8258(v91, v61);
          v93 = v163;
          v89(v163, v90, v4);
          v87 = v93;
          v167(v93, 0, 1, v4);
          v88 = v180;
          v71 = v92;
        }

        else
        {
          v94 = v91;
          v95 = v155;
          v89(v155, v94, v4);
          sub_24B034188(&qword_27EFC8460, MEMORY[0x277CC9578]);
          v96 = sub_24B2D5284();
          v97 = v182;
          sub_24AFF8258(v182, v61);
          if (v96)
          {
            v98 = v90;
          }

          else
          {
            v98 = v95;
          }

          if (v96)
          {
            v99 = v95;
          }

          else
          {
            v99 = v90;
          }

          (*v157)(v98, v4);
          v100 = v163;
          v89(v163, v99, v4);
          v87 = v100;
          v167(v100, 0, 1, v4);
          v88 = v180;
          v71 = v97;
        }
      }

      sub_24B0391CC(v87, v71, v61);
      v64 = v181;
      v101 = v166;
      sub_24B008890(v181, v166, v61);
      if (v86(v101, 1, v4) == 1)
      {
        sub_24AFF8258(v184, v61);
        sub_24AFF8258(v189, &qword_27EFC8448);
        sub_24AFF8258(v64, v61);
        sub_24AFF8258(v101, v61);
        v67 = v165;
        sub_24B0391CC(v185, v165, v61);
        a2 = v176;
        v62 = v179;
        v19 = v183;
      }

      else
      {
        v102 = v101;
        v103 = *v162;
        v104 = v160;
        (*v162)(v160, v102, v4);
        v105 = v185;
        sub_24B008890(v185, v88, v61);
        if (v86(v88, 1, v4) == 1)
        {
          sub_24AFF8258(v105, v61);
          sub_24AFF8258(v184, v61);
          sub_24AFF8258(v189, &qword_27EFC8448);
          v64 = v181;
          sub_24AFF8258(v181, v61);
          sub_24AFF8258(v88, v61);
          v67 = v165;
          v106 = v165;
          v107 = v104;
        }

        else
        {
          v108 = v156;
          v103(v156, v180, v4);
          sub_24B034188(&qword_27EFC8460, MEMORY[0x277CC9578]);
          v109 = sub_24B2D5284();
          sub_24AFF8258(v105, v61);
          sub_24AFF8258(v184, v61);
          sub_24AFF8258(v189, &qword_27EFC8448);
          v64 = v181;
          sub_24AFF8258(v181, v61);
          if (v109)
          {
            v110 = v104;
          }

          else
          {
            v110 = v108;
          }

          if (v109)
          {
            v111 = v108;
          }

          else
          {
            v111 = v104;
          }

          (*v157)(v110, v4);
          v67 = v165;
          v106 = v165;
          v107 = v111;
        }

        v103(v106, v107, v4);
        v167(v67, 0, 1, v4);
        a2 = v176;
        v62 = v179;
        v19 = v183;
      }

      sub_24B0391CC(v67, v64, v61);
      v66 = v188 + 1;
      v65 = v187 + v178;
      v161 = 1;
      v63 = v175;
      if (v171 + v188 + 1 == 1)
      {
        goto LABEL_59;
      }
    }

    a2 = v176;
    v62 = v179;
    if (EnumCaseMultiPayload == 1)
    {
      v113 = v79;
      v114 = v151;
      sub_24B0391CC(v113, v151, v61);
      v115 = v175;
      v116 = v152;
      sub_24B008890(v175, v152, v61);
      v117 = v4;
      v118 = *v186;
      if ((*v186)(v116, 1, v117) == 1)
      {
        sub_24AFF8258(v189, &qword_27EFC8448);
        sub_24AFF8258(v115, v61);
        sub_24AFF8258(v116, v61);
        v119 = v114;
        v120 = v150;
        sub_24B0391CC(v119, v150, v61);
        v4 = v117;
      }

      else
      {
        v121 = *v162;
        v122 = v61;
        v123 = v149;
        v124 = v116;
        v125 = v122;
        (*v162)(v149, v124, v117);
        v126 = v114;
        v127 = v114;
        v128 = v148;
        sub_24B008890(v126, v148, v125);
        if (v118(v128, 1, v117) == 1)
        {
          sub_24AFF8258(v127, v125);
          sub_24AFF8258(v189, &qword_27EFC8448);
          v115 = v175;
          sub_24AFF8258(v175, v125);
          sub_24AFF8258(v128, v125);
        }

        else
        {
          v129 = v144;
          v121(v144, v128, v117);
          sub_24B034188(&qword_27EFC8460, MEMORY[0x277CC9578]);
          v130 = v123;
          v131 = sub_24B2D5284();
          sub_24AFF8258(v127, v125);
          sub_24AFF8258(v189, &qword_27EFC8448);
          v115 = v175;
          sub_24AFF8258(v175, v125);
          if (v131)
          {
            v132 = v130;
          }

          else
          {
            v132 = v129;
          }

          if (v131)
          {
            v123 = v129;
          }

          else
          {
            v123 = v130;
          }

          (*v157)(v132, v117);
        }

        v120 = v150;
        v121(v150, v123, v117);
        v167(v120, 0, 1, v117);
        a2 = v176;
        v4 = v117;
        v62 = v179;
        v61 = v125;
      }

      v59 = v188;
      sub_24B0391CC(v120, v115, v61);
      v147 = 1;
      v19 = v183;
      v63 = v115;
      v64 = v181;
    }

    else
    {
      v59 = v188;
      if (EnumCaseMultiPayload == 2)
      {
        sub_24AFF8258(v189, &qword_27EFC8448);
        v112 = (&v178 + 4);
      }

      else
      {
        sub_24AFF8258(v189, &qword_27EFC8448);
        v112 = &v179;
      }

      *(v112 - 64) = 1;
      v63 = v175;
      v64 = v181;
    }

LABEL_4:
    if (v171 + v59)
    {
      continue;
    }

    break;
  }

  if (v161)
  {
LABEL_59:
    sub_24AFF8258(v63, &qword_27EFC8450);
    v136 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458) + 48);
    v137 = v153;
    sub_24B0391CC(v182, v153, &qword_27EFC8450);
    sub_24B0391CC(v64, v137 + v136, &qword_27EFC8450);
    v138 = v170;
    swift_storeEnumTagMultiPayload();
    v139 = *(v169 + 56);
    v140 = v137;
    return v139(v140, 0, 1, v138);
  }

  v141 = v63;
  sub_24AFF8258(v64, &qword_27EFC8450);
  sub_24AFF8258(v182, &qword_27EFC8450);
  if ((v147 & 1) == 0)
  {
    sub_24AFF8258(v141, &qword_27EFC8450);
    v133 = v153;
    if (v146)
    {
      v138 = v170;
LABEL_67:
      swift_storeEnumTagMultiPayload();
      v139 = *(v169 + 56);
      v140 = v133;
      return v139(v140, 0, 1, v138);
    }

    v138 = v170;
    if (v145)
    {
      goto LABEL_67;
    }

LABEL_57:
    v134 = type metadata accessor for SessionFollowerState(0);
    return (*(*(v134 - 8) + 56))(v133, 1, 1, v134);
  }

  v142 = v153;
  sub_24B0391CC(v141, v153, &qword_27EFC8450);
  v143 = v170;
  swift_storeEnumTagMultiPayload();
  return (*(v169 + 56))(v142, 0, 1, v143);
}

uint64_t sub_24B02466C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v3 = sub_24B2D24A4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v98 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v118 = &v91 - v7;
  v122 = sub_24B2D1704();
  v8 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v10 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8480);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v117 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v116 = &v91 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v100 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v119 = &v91 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v104 = &v91 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v115 = &v91 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v91 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v95 = &v91 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v91 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v91 - v32;
  v34 = *(v4 + 56);
  v34(&v91 - v32, 1, 1, v3);
  v120 = v3;
  v102 = v4 + 56;
  v101 = v34;
  result = (v34)(v31, 1, 1, v3);
  v36 = *(a1 + 16);
  if (v36)
  {
    v91 = v26;
    v94 = v33;
    v113 = v10;
    v92 = 0;
    v93 = 0;
    LODWORD(v107) = 0;
    v37 = 0;
    v112 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v114 = v8;
    v110 = (v8 + 8);
    v111 = v8 + 16;
    v99 = (v4 + 32);
    v97 = (v4 + 8);
    v38 = &qword_27EFC8450;
    v39 = &unk_24B2DE7A0;
    v40 = v117;
    v103 = v31;
    v41 = v104;
    v108 = v36;
    v106 = (v4 + 48);
    while (1)
    {
      while (1)
      {
        if (v37 >= v36)
        {
          __break(1u);
LABEL_44:
          __break(1u);
          return result;
        }

        if (__OFADD__(v37, 1))
        {
          goto LABEL_44;
        }

        v42 = v39;
        v121 = v37 + 1;
        v43 = v113;
        (*(v114 + 16))(v113, v112 + *(v114 + 72) * v37, v122);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_24B2D3214();

        v44 = v123;
        if (*(v123 + 16) && (v45 = sub_24B181150(v43), (v46 & 1) != 0))
        {
          v47 = v45;
          v48 = v38;
          v49 = *(v44 + 56);
          v50 = type metadata accessor for SessionFollowingState(0);
          v51 = *(v50 - 8);
          v52 = v49 + *(v51 + 72) * v47;
          v38 = v48;
          v53 = v116;
          v54 = v117;
          sub_24B0394EC(v52, v116, type metadata accessor for SessionFollowingState);
          v31 = v103;
          (*v110)(v43, v122);
          v55 = v53;
          v56 = v50;
          v40 = v54;

          (*(v51 + 56))(v55, 0, 1, v56);
          v41 = v104;
        }

        else
        {

          (*v110)(v43, v122);
          v56 = type metadata accessor for SessionFollowingState(0);
          v55 = v116;
          (*(*(v56 - 8) + 56))(v116, 1, 1, v56);
        }

        sub_24B008890(v55, v40, &qword_27EFC8480);
        type metadata accessor for SessionFollowingState(0);
        v109 = *(v56 - 8);
        v57 = (*(v109 + 48))(v40, 1, v56);
        v58 = v115;
        if (v57 != 1)
        {
          break;
        }

        v36 = v108;
        v39 = v42;
LABEL_30:
        result = sub_24AFF8258(v55, &qword_27EFC8480);
        v37 = v121;
        if (v121 == v36)
        {
          v105 = v56;
          sub_24AFF8258(v94, &qword_27EFC8450);
          if (v107)
          {
            goto LABEL_38;
          }

          sub_24AFF8258(v31, &qword_27EFC8450);
          if (v93)
          {
            v79 = v96;
            v80 = v105;
            goto LABEL_39;
          }

          v81 = v96;
          if (v92)
          {
            v90 = v105;
            swift_storeEnumTagMultiPayload();
            return (*(v109 + 56))(v81, 0, 1, v90);
          }

          goto LABEL_35;
        }
      }

      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v39 = v42;
      if (EnumCaseMultiPayload != 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v83 = v40;
          v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458);
          v85 = v95;
          sub_24B0391CC(v83 + *(v84 + 48), v95, &qword_27EFC8450);
          v86 = v91;
          v87 = v94;
          sub_24B017398(v94, v85, v91);
          sub_24AFF8258(v85, &qword_27EFC8450);
          sub_24AFF8258(v55, &qword_27EFC8480);
          sub_24AFF8258(v31, &qword_27EFC8450);
          sub_24AFF8258(v87, &qword_27EFC8450);
          sub_24B0391CC(v86, v87, &qword_27EFC8450);
          sub_24AFF8258(v83, &qword_27EFC8450);
          v88 = *(v84 + 48);
          v89 = v96;
          v101(v96, 1, 1, v120);
          sub_24B0391CC(v87, v89 + v88, &qword_27EFC8450);
          swift_storeEnumTagMultiPayload();
          return (*(v109 + 56))(v89, 0, 1, v56);
        }

        if (EnumCaseMultiPayload == 2)
        {
          v78 = &v124;
        }

        else
        {
          v78 = &v125;
        }

        *(v78 - 64) = 1;
        v36 = v108;
        goto LABEL_30;
      }

      v105 = v56;
      sub_24B0391CC(v40, v58, v38);
      v60 = v119;
      sub_24B008890(v31, v119, v38);
      v61 = v38;
      v62 = *v106;
      if ((*v106)(v60, 1, v120) == 1)
      {
        sub_24AFF8258(v55, &qword_27EFC8480);
        sub_24AFF8258(v31, v38);
        sub_24AFF8258(v119, v38);
        sub_24B0391CC(v58, v41, v38);
      }

      else
      {
        v63 = v120;
        v107 = *v99;
        v107(v118, v119, v120);
        v64 = v100;
        sub_24B008890(v58, v100, v38);
        if (v62(v64, 1, v63) == 1)
        {
          sub_24AFF8258(v58, v38);
          sub_24AFF8258(v55, &qword_27EFC8480);
          v65 = v103;
          sub_24AFF8258(v103, v38);
          sub_24AFF8258(v64, v38);
          v41 = v104;
          v66 = v120;
          v107(v104, v118, v120);
          v31 = v65;
          v67 = v41;
          v68 = v66;
        }

        else
        {
          v69 = v98;
          v70 = v64;
          v71 = v120;
          v72 = v107;
          v107(v98, v70, v120);
          sub_24B034188(&qword_27EFC8460, MEMORY[0x277CC9578]);
          v73 = sub_24B2D5284();
          sub_24AFF8258(v58, v61);
          sub_24AFF8258(v116, &qword_27EFC8480);
          v74 = v103;
          sub_24AFF8258(v103, v61);
          if (v73)
          {
            v75 = v118;
          }

          else
          {
            v75 = v69;
          }

          if (v73)
          {
            v76 = v69;
          }

          else
          {
            v76 = v118;
          }

          (*v97)(v75, v71);
          v77 = v104;
          v72(v104, v76, v71);
          v31 = v74;
          v67 = v77;
          v68 = v71;
          v41 = v77;
        }

        v101(v67, 0, 1, v68);
      }

      v38 = v61;
      result = sub_24B0391CC(v41, v31, v61);
      ++v37;
      LODWORD(v107) = 1;
      v36 = v108;
      v40 = v117;
      if (v121 == v108)
      {
        sub_24AFF8258(v94, &qword_27EFC8450);
LABEL_38:
        v79 = v96;
        sub_24B0391CC(v31, v96, &qword_27EFC8450);
        v80 = v105;
LABEL_39:
        swift_storeEnumTagMultiPayload();
        return (*(v109 + 56))(v79, 0, 1, v80);
      }
    }
  }

  sub_24AFF8258(v33, &qword_27EFC8450);
  sub_24AFF8258(v31, &qword_27EFC8450);
  v81 = v96;
LABEL_35:
  v82 = type metadata accessor for SessionFollowingState(0);
  return (*(*(v82 - 8) + 56))(v81, 1, 1, v82);
}

uint64_t sub_24B025370(uint64_t a1)
{
  v2 = type metadata accessor for SessionFollowingState(0);
  v56 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v58 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v57 = &v51 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8480);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v51 - v7;
  v9 = sub_24B2D1704();
  v10 = *(v9 - 8);
  v11 = v10;
  v12 = MEMORY[0x28223BE20](v9);
  v54 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v65 = &v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7880);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v52 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v53 = &v51 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7980);
  v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v61 = *(v10 + 72);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_24B2DE430;
  v21 = type metadata accessor for Friend();
  v22 = *(v21 + 20);
  v55 = v11;
  v62 = *(v11 + 16);
  v63 = v11 + 16;
  v62(v20 + v19, a1 + v22, v9);
  v23 = *(a1 + *(v21 + 24));
  v67 = a1;

  v24 = sub_24B00DCB0(sub_24AFF2290, v66, v23);
  v68 = v20;
  v25 = v2;
  result = sub_24B0333C8(v24, sub_24B006728, MEMORY[0x277D08BF8]);
  v64 = v68;
  v60 = *(v68 + 16);
  if (v60)
  {
    v27 = 0;
    v28 = v64 + v19;
    v59 = (v56 + 56);
    v29 = (v56 + 48);
    v30 = (v55 + 8);
    while (v27 < *(v64 + 16))
    {
      v62(v65, v28, v9);
      sub_24B2D5694();
      sub_24B2D5684();
      sub_24B2D5604();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_24B2D3214();

      v31 = v68;
      if (*(v68 + 16) && (v32 = sub_24B181150(v65), (v33 & 1) != 0))
      {
        sub_24B0394EC(*(v31 + 56) + *(v56 + 72) * v32, v8, type metadata accessor for SessionFollowingState);
        v34 = 0;
      }

      else
      {
        v34 = 1;
      }

      (*v59)(v8, v34, 1, v25);
      if ((*v29)(v8, 1, v25))
      {
        sub_24AFF8258(v8, &qword_27EFC8480);
      }

      else
      {
        v35 = v57;
        sub_24B0394EC(v8, v57, type metadata accessor for SessionFollowingState);
        sub_24AFF8258(v8, &qword_27EFC8480);
        v36 = v35;
        v37 = v58;
        sub_24B039554(v36, v58, type metadata accessor for SessionFollowingState);
        if (!swift_getEnumCaseMultiPayload())
        {
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458);
          sub_24AFF8258(v37 + *(v50 + 48), &qword_27EFC8450);
          sub_24AFF8258(v37, &qword_27EFC8450);

          v39 = v55;
          v40 = v53;
          (*(v55 + 32))(v53, v65, v9);
          v38 = 0;
          goto LABEL_16;
        }

        sub_24B0395BC(v37, type metadata accessor for SessionFollowingState);
      }

      ++v27;

      result = (*v30)(v65, v9);
      v28 += v61;
      if (v60 == v27)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    v38 = 1;
    v39 = v55;
    v40 = v53;
LABEL_16:
    (*(v39 + 56))(v40, v38, 1, v9);
    v41 = v52;
    sub_24B008890(v40, v52, &qword_27EFC7880);
    v42 = (*(v39 + 48))(v41, 1, v9);
    v43 = v54;
    if (v42 == 1)
    {
      sub_24AFF8258(v40, &qword_27EFC7880);
      v44 = v41;
    }

    else
    {
      (*(v39 + 32))(v54, v41, v9);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24B2D3214();

      v45 = v68;
      if (*(v68 + 16))
      {
        v46 = sub_24B181150(v43);
        if (v47)
        {
          v48 = *(v45 + 56) + 32 * v46;
          v49 = *v48;
          sub_24B034224(*v48, *(v48 + 8), *(v48 + 16));
          (*(v39 + 8))(v43, v9);
          sub_24AFF8258(v40, &qword_27EFC7880);

          return v49;
        }
      }

      (*(v39 + 8))(v43, v9);
      v44 = v40;
    }

    sub_24AFF8258(v44, &qword_27EFC7880);
    return 0;
  }

  return result;
}

uint64_t sub_24B025BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a2;
  v61 = a3;
  v4 = type metadata accessor for DirectionsState();
  v74 = *(v4 - 8);
  v75 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v62 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v69 = &v59 - v8;
  MEMORY[0x28223BE20](v7);
  v68 = &v59 - v9;
  v10 = sub_24B2D1704();
  v11 = *(v10 - 8);
  v12 = v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8488);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v67 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v72 = &v59 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v59 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v59 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7980);
  v25 = (v12[80] + 32) & ~v12[80];
  v71 = *(v11 + 9);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_24B2DE430;
  v27 = type metadata accessor for Friend();
  v28 = *(v27 + 20);
  v78 = v12;
  v29 = *(v12 + 2);
  v73 = v10;
  v70 = v12 + 16;
  v77 = v29;
  v29((v26 + v25), a1 + v28, v10);
  v30 = *(a1 + *(v27 + 24));
  v80 = a1;

  v31 = sub_24B00DCB0(sub_24AFF2290, v79, v30);
  v81 = v26;
  sub_24B0333C8(v31, sub_24B006728, MEMORY[0x277D08BF8]);
  v32 = v74;
  v33 = v81;
  v65 = *(v74 + 56);
  v66 = v74 + 56;
  v65(v24, 1, 1, v75);
  v60 = v24;
  sub_24B008890(v24, v22, &qword_27EFC8488);
  v34 = *(v33 + 16);
  if (v34)
  {
    v59 = v33;
    v35 = v33 + v25;
    v64 = v32 + 48;
    v76 = (v78 + 8);
    v36 = v63;
    v37 = v72;
    v38 = v73;
    v39 = v71;
    v78 = v14;
    do
    {
      v77(v14, v35, v38);
      if (*(v36 + 16) && (v41 = sub_24B181150(v14), (v42 & 1) != 0))
      {
        v43 = v74;
        v44 = v69;
        sub_24B0394EC(*(v36 + 56) + *(v74 + 72) * v41, v69, type metadata accessor for DirectionsState);
        v45 = v44;
        v46 = v68;
        sub_24B039554(v45, v68, type metadata accessor for DirectionsState);
        v47 = v67;
        v40 = v22;
        sub_24B008890(v22, v67, &qword_27EFC8488);
        v48 = *(v43 + 48);
        v49 = v75;
        if (v48(v47, 1, v75) == 1)
        {
          (*v76)(v78, v38);
          sub_24AFF8258(v22, &qword_27EFC8488);
          sub_24AFF8258(v47, &qword_27EFC8488);
          v50 = v49;
          v37 = v72;
          sub_24B039554(v46, v72, type metadata accessor for DirectionsState);
          v51 = v37;
          v52 = v50;
        }

        else
        {
          v53 = v62;
          sub_24B039554(v47, v62, type metadata accessor for DirectionsState);
          v54 = sub_24B2D23C4();
          (*v76)(v78, v73);
          sub_24AFF8258(v22, &qword_27EFC8488);
          v55 = (v54 & 1) == 0;
          v38 = v73;
          if (v55)
          {
            v56 = v46;
          }

          else
          {
            v56 = v53;
          }

          if (v55)
          {
            v46 = v53;
          }

          sub_24B0395BC(v56, type metadata accessor for DirectionsState);
          v36 = v63;
          v37 = v72;
          sub_24B039554(v46, v72, type metadata accessor for DirectionsState);
          v51 = v37;
          v52 = v75;
        }

        v65(v51, 0, 1, v52);
        v39 = v71;
      }

      else
      {
        (*v76)(v14, v38);
        v40 = v22;
        sub_24B0391CC(v22, v37, &qword_27EFC8488);
      }

      sub_24B0391CC(v37, v40, &qword_27EFC8488);
      v35 += v39;
      --v34;
      v22 = v40;
      v14 = v78;
    }

    while (v34);
  }

  v57 = v61;
  sub_24AFF8258(v60, &qword_27EFC8488);
  return sub_24B0391CC(v22, v57, &qword_27EFC8488);
}

BOOL sub_24B026274(uint64_t a1)
{
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v2 = sub_24B2D3184();
  __swift_project_value_buffer(v2, qword_27EFE4418);
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5934();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v30 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_24AFF321C(0xD000000000000017, 0x800000024B2D8430, &v30);
    _os_log_impl(&dword_24AFD2000, v3, v4, "Repository: willCall %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C23D530](v6, -1, -1);
    MEMORY[0x24C23D530](v5, -1, -1);
  }

  if ((sub_24B0266F0() & 1) == 0)
  {
    v10 = sub_24B2D3164();
    v11 = sub_24B2D5934();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "CompositeAppViewModel: Don't show FindMy button";
LABEL_14:
      _os_log_impl(&dword_24AFD2000, v10, v11, v13, v12, 2u);
      MEMORY[0x24C23D530](v12, -1, -1);
    }

LABEL_15:

    return 0;
  }

  v7 = sub_24B025370(a1);
  if (v9 < 2)
  {
    sub_24B0341D0(v7, v8, v9);
    goto LABEL_12;
  }

  if (v9 == 2)
  {
LABEL_12:
    v10 = sub_24B2D3164();
    v11 = sub_24B2D5934();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "CompositeAppViewModel: No location for friend";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v15 = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();

  v16 = v30;
  if (!v30)
  {
    v27 = sub_24B2D3164();
    v28 = sub_24B2D5914();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_24AFD2000, v27, v28, "CompositeAppViewModel: No thisDeviceLastLocation at the moment", v29, 2u);
      MEMORY[0x24C23D530](v29, -1, -1);
    }

    return 0;
  }

  [v30 distanceFromLocation_];
  v18 = v17;
  [v16 horizontalAccuracy];
  v20 = v19;
  [v15 horizontalAccuracy];
  v22 = v18 / sqrt(v20 * v20 + v21 * v21 + 3600.0);
  v23 = sub_24B2D3164();
  v24 = sub_24B2D5934();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v30 = v26;
    *v25 = 136315394;
    *(v25 + 4) = sub_24AFF321C(0xD000000000000017, 0x800000024B2D8430, &v30);
    *(v25 + 12) = 1024;
    *(v25 + 14) = v22 < 1.5;
    _os_log_impl(&dword_24AFD2000, v23, v24, "CompositeAppViewModel: %s - isNearby: %{BOOL}d", v25, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x24C23D530](v26, -1, -1);
    MEMORY[0x24C23D530](v25, -1, -1);
  }

  return v22 < 1.5;
}

uint64_t sub_24B0266F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8490);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20[-v2];
  v4 = sub_24B2D1414();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24B2D1264();
  v21 = v9;
  sub_24B2D1404();
  sub_24B2D13D4();
  sub_24B2D13F4();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  v10 = v22;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v11 = sub_24B2D3184();
  __swift_project_value_buffer(v11, qword_27EFE4418);
  v12 = sub_24B2D3164();
  v13 = sub_24B2D5934();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_24AFF321C(0xD000000000000017, 0x800000024B2D8430, &v24);
    *(v14 + 12) = 2080;
    v22 = v8;
    v23 = v21 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC8498);
    v16 = sub_24B2D53C4();
    v18 = sub_24AFF321C(v16, v17, &v24);

    *(v14 + 14) = v18;
    *(v14 + 22) = 1024;
    *(v14 + 24) = v10;
    _os_log_impl(&dword_24AFD2000, v12, v13, "CompositeAppViewModel: %s - Show Find My button arrowChipID: %s forceEnable: %{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v15, -1, -1);
    MEMORY[0x24C23D530](v14, -1, -1);
  }

  if (v10)
  {
    return 1;
  }

  else
  {
    return (v8 == 8228) & ~v21;
  }
}

void sub_24B026A64(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8590);
    sub_24B2D5624();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8590);
    sub_24B2D5634();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24B026B14(uint64_t a1)
{
  v48 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  MEMORY[0x28223BE20](v1 - 8);
  v47 = &v44 - v2;
  v3 = sub_24B2D24A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v46 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CompositeAppViewState.TranscriptInfo(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CompositeAppViewState(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v12 = sub_24B2D3184();
  v13 = __swift_project_value_buffer(v12, qword_27EFE4418);
  v14 = sub_24B2D3164();
  v15 = sub_24B2D5934();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v44 = v13;
    v45 = v3;
    v17 = v16;
    v18 = v4;
    v19 = swift_slowAlloc();
    v49 = v19;
    *v17 = 136315138;
    *(v17 + 4) = sub_24AFF321C(0xD000000000000017, 0x800000024B2D8840, &v49);
    _os_log_impl(&dword_24AFD2000, v14, v15, "Repository: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    v20 = v19;
    v4 = v18;
    MEMORY[0x24C23D530](v20, -1, -1);
    v3 = v45;
    MEMORY[0x24C23D530](v17, -1, -1);
  }

  v21 = type metadata accessor for CompositeAppViewInitialInfo();
  sub_24B0394EC(v48 + *(v21 + 28), v11, type metadata accessor for CompositeAppViewState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v23 = type metadata accessor for CompositeAppViewState;
    v24 = v11;
    return sub_24B0395BC(v24, v23);
  }

  sub_24B039554(v11, v8, type metadata accessor for CompositeAppViewState.TranscriptInfo);
  v22 = v47;
  sub_24B008890(&v8[v6[11]], v47, &qword_27EFC8450);
  if ((*(v4 + 48))(v22, 1, v3) == 1)
  {
    sub_24AFF8258(v22, &qword_27EFC8450);
LABEL_12:
    v26 = sub_24B2D3164();
    v27 = sub_24B2D5934();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v49 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_24AFF321C(0xD000000000000017, 0x800000024B2D8840, &v49);
      _os_log_impl(&dword_24AFD2000, v26, v27, "Repository: %s - NO TIMESTAMP", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x24C23D530](v29, -1, -1);
      MEMORY[0x24C23D530](v28, -1, -1);
    }

    goto LABEL_16;
  }

  v25 = v46;
  (*(v4 + 32))(v46, v22, v3);
  if (*&v8[v6[10] + 8] != 2 && (*&v8[v6[10] + 8] & 0x100) != 0)
  {
    (*(v4 + 8))(v25, v3);
    goto LABEL_12;
  }

  v30 = sub_24AFF2D64();
  v32 = v31;
  v33 = v4;
  v34 = [objc_opt_self() standardUserDefaults];
  sub_24B0271AC(v25, v30, v32, v34);

  (*(v33 + 8))(v25, v3);
LABEL_16:
  v35 = *&v8[v6[12]];
  if (v35)
  {
    v36 = v6[6];
    v37 = v36 + *(type metadata accessor for Friend() + 20);
    v38 = v35;
    sub_24B020124(0, 0, v38, 4, &v8[v37]);
  }

  else
  {
    v39 = sub_24B2D3164();
    v40 = sub_24B2D5934();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v49 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_24AFF321C(0xD000000000000017, 0x800000024B2D8840, &v49);
      _os_log_impl(&dword_24AFD2000, v39, v40, "Repository: %s - NO INITIAL INFO", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x24C23D530](v42, -1, -1);
      MEMORY[0x24C23D530](v41, -1, -1);
    }
  }

  v23 = type metadata accessor for CompositeAppViewState.TranscriptInfo;
  v24 = v8;
  return sub_24B0395BC(v24, v23);
}

void sub_24B0271AC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v52 = a4;
  v53 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v50 = &v46 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - v12;
  v14 = sub_24B2D24A4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v49 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v46 - v19;
  MEMORY[0x28223BE20](v18);
  v51 = &v46 - v21;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();

  v22 = a3;

  v23 = v55;
  if (*(v55 + 16) && (v24 = sub_24B054238(a2, a3), (v25 & 1) != 0))
  {
    v47 = a2;
    v48 = a3;
    v26 = *(v15 + 16);
    v26(v20, *(v23 + 56) + *(v15 + 72) * v24, v14);

    v27 = v51;
    v28 = v20;
    v29 = *(v15 + 32);
    v29(v51, v28, v14);
    v30 = v53;
    if (sub_24B2D23D4())
    {
      v26(v13, v30, v14);
      (*(v15 + 56))(v13, 0, 1, v14);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24B2D3214();

      if ((*(v15 + 48))(v13, 1, v14) == 1)
      {
        sub_24AFF8258(v13, &qword_27EFC8450);
        v31 = v50;
        sub_24B23C634(v47, v48, v50);
        sub_24AFF8258(v31, &qword_27EFC8450);
        v32 = v55;
      }

      else
      {
        v40 = v49;
        v29(v49, v13, v14);
        v41 = v55;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54 = v41;
        sub_24B1C9B60(v40, v47, v48, isUniquelyReferenced_nonNull_native);
        v32 = v54;
      }

      v43 = v52;
      swift_getKeyPath();
      swift_getKeyPath();
      v54 = v32;

      sub_24B2D3224();
      sub_24B00EFBC();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24B2D3214();

      v44 = sub_24B2D51D4();

      v45 = sub_24B2D5374();
      [v43 setObject:v44 forKey:v45];

      (*(v15 + 8))(v51, v14);
    }

    else
    {
      (*(v15 + 8))(v27, v14);
    }
  }

  else
  {

    (*(v15 + 16))(v9, v53, v14);
    (*(v15 + 56))(v9, 0, 1, v14);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24B2D3214();

    if ((*(v15 + 48))(v9, 1, v14) == 1)
    {
      sub_24AFF8258(v9, &qword_27EFC8450);
      v33 = v50;
      sub_24B23C634(a2, a3, v50);
      sub_24AFF8258(v33, &qword_27EFC8450);
      v34 = v55;
    }

    else
    {
      v35 = v49;
      (*(v15 + 32))(v49, v9, v14);
      v36 = v55;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v54 = v36;
      sub_24B1C9B60(v35, a2, v22, v37);
      v34 = v54;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v54 = v34;

    sub_24B2D3224();
    sub_24B00EFBC();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24B2D3214();

    v38 = sub_24B2D51D4();

    v39 = sub_24B2D5374();
    [v52 setObject:v38 forKey:v39];
  }
}

void sub_24B0278E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = &v43 - v3;
  v44 = sub_24B2D25F4();
  v4 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B2D2604();
  v8 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86A8);
  v45 = *(v11 - 8);
  v12 = *(v45 + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v46 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v49 = (&v43 - v14);
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v15 = sub_24B2D3184();
  v48 = __swift_project_value_buffer(v15, qword_27EFE4418);
  v16 = sub_24B2D3164();
  v17 = sub_24B2D5934();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v43 = v7;
    v19 = v18;
    v20 = v8;
    v21 = v1;
    v22 = swift_slowAlloc();
    v50 = v22;
    *v19 = 136315138;
    *(v19 + 4) = sub_24AFF321C(0xD000000000000022, 0x800000024B2D8740, &v50);
    _os_log_impl(&dword_24AFD2000, v16, v17, "Repository: willCall %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v23 = v22;
    v1 = v21;
    v8 = v20;
    MEMORY[0x24C23D530](v23, -1, -1);
    v7 = v43;
    MEMORY[0x24C23D530](v19, -1, -1);
  }

  sub_24B01A4B0();
  v24 = *(v1 + OBJC_IVAR____TtC12FindMyUICore10Repository_locationManager);
  if (v24)
  {
    v25 = v44;
    (*(v4 + 104))(v6, *MEMORY[0x277D850A0], v44);
    v43 = v24;
    sub_24B2D5964();
    (*(v4 + 8))(v6, v25);
    sub_24B034188(&qword_27EFCE570, MEMORY[0x277D850B8]);
    v26 = v49;
    sub_24B2D57D4();
    (*(v8 + 8))(v10, v7);
    v27 = sub_24B2D56D4();
    v28 = v47;
    (*(*(v27 - 8) + 56))(v47, 1, 1, v27);
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = v46;
    sub_24B008890(v26, v46, &qword_27EFC86A8);
    sub_24B2D5694();

    v31 = sub_24B2D5684();
    v32 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v33 = swift_allocObject();
    v34 = MEMORY[0x277D85700];
    *(v33 + 16) = v31;
    *(v33 + 24) = v34;
    sub_24B0391CC(v30, v33 + v32, &qword_27EFC86A8);
    *(v33 + ((v12 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;

    *(v1 + OBJC_IVAR____TtC12FindMyUICore10Repository_thisDeviceCurrentLocationTask) = sub_24B00A9A4(0, 0, v28, &unk_24B2E0BA8, v33);

    v35 = sub_24B2D3164();
    v36 = sub_24B2D5934();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v50 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_24AFF321C(0xD000000000000022, 0x800000024B2D8740, &v50);
      _os_log_impl(&dword_24AFD2000, v35, v36, "Repository: didReceive %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x24C23D530](v38, -1, -1);
      MEMORY[0x24C23D530](v37, -1, -1);
    }

    sub_24AFF8258(v49, &qword_27EFC86A8);
  }

  else
  {
    v49 = sub_24B2D3164();
    v39 = sub_24B2D5914();
    if (os_log_type_enabled(v49, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v50 = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_24AFF321C(0xD000000000000022, 0x800000024B2D8740, &v50);
      _os_log_impl(&dword_24AFD2000, v49, v39, "Repository: %s - No Location Manager", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x24C23D530](v41, -1, -1);
      MEMORY[0x24C23D530](v40, -1, -1);
    }

    else
    {
      v42 = v49;
    }
  }
}

uint64_t sub_24B02805C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = sub_24B2D2624();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86B0);
  v5[12] = swift_task_alloc();
  v5[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86B8);
  v5[14] = swift_task_alloc();
  v5[15] = sub_24B2D5694();
  v5[16] = sub_24B2D5684();
  v8 = sub_24B2D5604();
  v5[17] = v8;
  v5[18] = v7;

  return MEMORY[0x2822009F8](sub_24B0281C8, v8, v7);
}

uint64_t sub_24B0281C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86A8);
  sub_24B2D30A4();
  swift_beginAccess();
  v0[19] = sub_24B2D5684();
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_24B0282B0;
  v2 = v0[13];
  v3 = v0[12];

  return MEMORY[0x282141BE0](v3, v2);
}

uint64_t sub_24B0282B0()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_24B2D5604();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_24B028B84;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_24B2D5604();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_24B028448;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_24B028448()
{

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return MEMORY[0x2822009F8](sub_24B0284AC, v1, v2);
}

uint64_t sub_24B0284AC()
{
  v41 = v0;
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_24AFF8258(v0[14], &qword_27EFC86B8);

    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v4 = sub_24B2D3184();
    __swift_project_value_buffer(v4, qword_27EFE4418);
    v5 = sub_24B2D3164();
    v6 = sub_24B2D5934();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v40 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_24AFF321C(0xD000000000000022, 0x800000024B2D8740, &v40);
      _os_log_impl(&dword_24AFD2000, v5, v6, "Repository: %s - locationUpdateStream ended", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x24C23D530](v8, -1, -1);
      MEMORY[0x24C23D530](v7, -1, -1);
    }

    goto LABEL_23;
  }

  (*(v3 + 32))(v0[11], v1, v2);
  if (sub_24B2D5784())
  {

    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v9 = sub_24B2D3184();
    __swift_project_value_buffer(v9, qword_27EFE4418);
    v10 = sub_24B2D3164();
    v11 = sub_24B2D5934();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[14];
    v15 = v0[10];
    v14 = v0[11];
    v16 = v0[9];
    if (!v12)
    {
      goto LABEL_22;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v40 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_24AFF321C(0xD000000000000022, 0x800000024B2D8740, &v40);
    v19 = "Repository: %s - Task was cancelled";
LABEL_21:
    _os_log_impl(&dword_24AFD2000, v10, v11, v19, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x24C23D530](v18, -1, -1);
    MEMORY[0x24C23D530](v17, -1, -1);
LABEL_22:

    (*(v15 + 8))(v14, v16);
    sub_24AFF8258(v13, &qword_27EFC86B8);
LABEL_23:

    v27 = v0[1];

    return v27();
  }

  Strong = swift_weakLoadStrong();
  v0[22] = Strong;
  if (!Strong)
  {

    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v25 = sub_24B2D3184();
    __swift_project_value_buffer(v25, qword_27EFE4418);
    v10 = sub_24B2D3164();
    v11 = sub_24B2D5914();
    v26 = os_log_type_enabled(v10, v11);
    v13 = v0[14];
    v15 = v0[10];
    v14 = v0[11];
    v16 = v0[9];
    if (!v26)
    {
      goto LABEL_22;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v40 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_24AFF321C(0xD000000000000022, 0x800000024B2D8740, &v40);
    v19 = "Repository: %s - No Self";
    goto LABEL_21;
  }

  v21 = sub_24B2D2614();
  v0[23] = v21;
  if (v21)
  {
    v22 = v21;
    v23 = swift_task_alloc();
    v0[24] = v23;
    *v23 = v0;
    v23[1] = sub_24B028E5C;

    return sub_24B053714(v22);
  }

  else
  {
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v28 = sub_24B2D3184();
    __swift_project_value_buffer(v28, qword_27EFE4418);
    v29 = sub_24B2D3164();
    v30 = sub_24B2D5934();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[11];
    v33 = v0[9];
    v34 = (v0[10] + 8);
    if (v31)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v40 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_24AFF321C(0xD000000000000022, 0x800000024B2D8740, &v40);
      _os_log_impl(&dword_24AFD2000, v29, v30, "Repository: %s - Update without location, waiting next...", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x24C23D530](v36, -1, -1);
      MEMORY[0x24C23D530](v35, -1, -1);
    }

    else
    {
    }

    (*v34)(v32, v33);
    v0[19] = sub_24B2D5684();
    v37 = swift_task_alloc();
    v0[20] = v37;
    *v37 = v0;
    v37[1] = sub_24B0282B0;
    v38 = v0[13];
    v39 = v0[12];

    return MEMORY[0x282141BE0](v39, v38);
  }
}

uint64_t sub_24B028B84()
{
  v0[5] = v0[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0);
  swift_willThrowTypedImpl();

  v1 = v0[17];
  v2 = v0[18];

  return MEMORY[0x2822009F8](sub_24B028C20, v1, v2);
}

uint64_t sub_24B028C20()
{
  v14 = v0;

  v1 = v0[21];
  sub_24AFF8258(v0[14], &qword_27EFC86B8);
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v2 = sub_24B2D3184();
  __swift_project_value_buffer(v2, qword_27EFE4418);
  v3 = v1;
  v4 = sub_24B2D3164();
  v5 = sub_24B2D5914();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_24AFF321C(0xD000000000000022, 0x800000024B2D8740, &v13);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_24AFD2000, v4, v5, "Repository: %s - Error: %@", v6, 0x16u);
    sub_24AFF8258(v7, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C23D530](v8, -1, -1);
    MEMORY[0x24C23D530](v6, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_24B028E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  *(*v4 + 200) = v3;

  if (v3)
  {
    v8 = v7[17];
    v9 = v7[18];
    v10 = sub_24B0290E4;
  }

  else
  {
    v7[26] = a3;
    v7[27] = a2;
    v8 = v7[17];
    v9 = v7[18];
    v10 = sub_24B028F90;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_24B028F90()
{
  v1 = v0[26];
  v2 = v0[23];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[6] = v1;

  v6 = v1;
  sub_24B2D3224();
  sub_24B00E490();

  (*(v4 + 8))(v3, v5);
  v0[19] = sub_24B2D5684();
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_24B0282B0;
  v8 = v0[13];
  v9 = v0[12];

  return MEMORY[0x282141BE0](v9, v8);
}

uint64_t sub_24B0290E4()
{
  v18 = v0;
  v1 = v0[23];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];

  (*(v3 + 8))(v2, v4);
  v5 = v0[25];
  sub_24AFF8258(v0[14], &qword_27EFC86B8);
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v6 = sub_24B2D3184();
  __swift_project_value_buffer(v6, qword_27EFE4418);
  v7 = v5;
  v8 = sub_24B2D3164();
  v9 = sub_24B2D5914();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_24AFF321C(0xD000000000000022, 0x800000024B2D8740, &v17);
    *(v10 + 12) = 2112;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_24AFD2000, v8, v9, "Repository: %s - Error: %@", v10, 0x16u);
    sub_24AFF8258(v11, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v10, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

void sub_24B029350()
{
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0xD000000000000021, 0x800000024B2D8680, &v12);
    _os_log_impl(&dword_24AFD2000, v2, v3, "Repository: willCall %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v6 = OBJC_IVAR____TtC12FindMyUICore10Repository_thisDeviceCurrentLocationTask;
  if (*(v0 + OBJC_IVAR____TtC12FindMyUICore10Repository_thisDeviceCurrentLocationTask))
  {

    sub_24B2D5764();
  }

  *(v0 + v6) = 0;

  v7 = *(v0 + OBJC_IVAR____TtC12FindMyUICore10Repository_effectiveBundleAssertion);
  *(v0 + OBJC_IVAR____TtC12FindMyUICore10Repository_effectiveBundleAssertion) = 0;

  oslog = sub_24B2D3164();
  v8 = sub_24B2D5934();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_24AFF321C(0xD000000000000021, 0x800000024B2D8680, &v12);
    _os_log_impl(&dword_24AFD2000, oslog, v8, "Repository: didReceive %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C23D530](v10, -1, -1);
    MEMORY[0x24C23D530](v9, -1, -1);
  }
}

uint64_t sub_24B0295CC()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  v1[3] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86C0);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v1[6] = *(v3 + 64);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = sub_24B2D5694();
  v1[10] = sub_24B2D5684();
  v5 = sub_24B2D5604();
  v1[11] = v5;
  v1[12] = v4;

  return MEMORY[0x2822009F8](sub_24B02971C, v5, v4);
}

uint64_t sub_24B02971C()
{
  v10 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  v0[13] = __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0xD000000000000020, 0x800000024B2D8770, &v9);
    _os_log_impl(&dword_24AFD2000, v2, v3, "Repository: willCall %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_24B0298E0;
  v7 = v0[8];

  return sub_24B044320(v7);
}

uint64_t sub_24B0298E0()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_24B029C14;
  }

  else
  {
    v5 = sub_24B029A1C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B029A1C()
{
  v2 = v0[7];
  v1 = v0[8];
  v16 = v1;
  v3 = v0[5];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  v7 = sub_24B2D56D4();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(v2, v1, v4);

  v9 = sub_24B2D5684();
  v10 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 2) = v9;
  *(v11 + 3) = v12;
  *(v11 + 4) = v8;
  (*(v3 + 32))(&v11[v10], v2, v4);

  v13 = sub_24B00A9A4(0, 0, v5, &unk_24B2E0BD8, v11);
  (*(v3 + 8))(v16, v4);
  *(v6 + OBJC_IVAR____TtC12FindMyUICore10Repository_preferenceChangesTask) = v13;

  v14 = v0[1];

  return v14();
}

uint64_t sub_24B029C14()
{
  v15 = v0;
  v1 = *(v0 + 120);

  v2 = v1;
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5914();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 120);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_24AFF321C(0xD000000000000020, 0x800000024B2D8770, &v14);
    *(v7 + 12) = 2112;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_24AFD2000, v3, v4, "Repository: %s - Error: %@", v7, 0x16u);
    sub_24AFF8258(v8, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v7, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24B029DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[38] = a4;
  v5[39] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86C8);
  v5[40] = v6;
  v5[41] = *(v6 - 8);
  v5[42] = swift_task_alloc();
  v5[43] = sub_24B2D5694();
  v5[44] = sub_24B2D5684();
  v8 = sub_24B2D5604();
  v5[45] = v8;
  v5[46] = v7;

  return MEMORY[0x2822009F8](sub_24B029EFC, v8, v7);
}

uint64_t sub_24B029EFC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(v0 + 376) = *(Strong + OBJC_IVAR____TtC12FindMyUICore10Repository_session);
    swift_unknownObjectRetain();

    v2 = swift_task_alloc();
    *(v0 + 384) = v2;
    *v2 = v0;
    v2[1] = sub_24B02A258;

    return sub_24B043620(v0 + 184);
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 208) = 0;
      *(v0 + 216) = 0;
      *(v0 + 224) = 0;

      sub_24B2D3224();
      sub_24B00EAF4();
    }

    else
    {
    }

    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    if (v4)
    {
      *(v0 + 392) = *(v4 + OBJC_IVAR____TtC12FindMyUICore10Repository_session);
      swift_unknownObjectRetain();

      v5 = swift_task_alloc();
      *(v0 + 400) = v5;
      *v5 = v0;
      v5[1] = sub_24B02A910;

      return sub_24B043EB0();
    }

    else
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 155) = 1;

        sub_24B2D3224();
        sub_24B00ED5C();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86C0);
      sub_24B2D5724();
      swift_beginAccess();
      v6 = sub_24B2D5684();
      *(v0 + 408) = v6;
      v7 = swift_task_alloc();
      *(v0 + 416) = v7;
      *v7 = v0;
      v7[1] = sub_24B02AD60;
      v8 = *(v0 + 320);
      v9 = MEMORY[0x277D85700];

      return MEMORY[0x2822003E8](v0 + 136, v6, v9, v8);
    }
  }
}

uint64_t sub_24B02A258()
{
  v2 = *v1;

  if (v0)
  {

    swift_unknownObjectRelease();
    v3 = *(v2 + 360);
    v4 = *(v2 + 368);
    v5 = sub_24B02A668;
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v2 + 360);
    v4 = *(v2 + 368);
    v5 = sub_24B02A39C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24B02A39C()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 200);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 208) = v2;
    *(v0 + 216) = v1;
    *(v0 + 224) = v3;

    sub_24B2D3224();
    sub_24B00EAF4();
  }

  else
  {
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(v0 + 392) = *(Strong + OBJC_IVAR____TtC12FindMyUICore10Repository_session);
    swift_unknownObjectRetain();

    v5 = swift_task_alloc();
    *(v0 + 400) = v5;
    *v5 = v0;
    v5[1] = sub_24B02A910;

    return sub_24B043EB0();
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 155) = 1;

      sub_24B2D3224();
      sub_24B00ED5C();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86C0);
    sub_24B2D5724();
    swift_beginAccess();
    v7 = sub_24B2D5684();
    *(v0 + 408) = v7;
    v8 = swift_task_alloc();
    *(v0 + 416) = v8;
    *v8 = v0;
    v8[1] = sub_24B02AD60;
    v9 = *(v0 + 320);
    v10 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v0 + 136, v7, v10, v9);
  }
}

uint64_t sub_24B02A668()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 208) = 0;
    *(v0 + 216) = 0;
    *(v0 + 224) = 0;

    sub_24B2D3224();
    sub_24B00EAF4();
  }

  else
  {
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(v0 + 392) = *(Strong + OBJC_IVAR____TtC12FindMyUICore10Repository_session);
    swift_unknownObjectRetain();

    v2 = swift_task_alloc();
    *(v0 + 400) = v2;
    *v2 = v0;
    v2[1] = sub_24B02A910;

    return sub_24B043EB0();
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 155) = 1;

      sub_24B2D3224();
      sub_24B00ED5C();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86C0);
    sub_24B2D5724();
    swift_beginAccess();
    v4 = sub_24B2D5684();
    *(v0 + 408) = v4;
    v5 = swift_task_alloc();
    *(v0 + 416) = v5;
    *v5 = v0;
    v5[1] = sub_24B02AD60;
    v6 = *(v0 + 320);
    v7 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v0 + 136, v4, v7, v6);
  }
}

uint64_t sub_24B02A910(char a1)
{
  v4 = *v2;

  if (v1)
  {

    swift_unknownObjectRelease();
    v5 = *(v4 + 360);
    v6 = *(v4 + 368);
    v7 = sub_24B02ABE8;
  }

  else
  {
    swift_unknownObjectRelease();
    *(v4 + 158) = a1 & 1;
    v5 = *(v4 + 360);
    v6 = *(v4 + 368);
    v7 = sub_24B02AA68;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24B02AA68()
{
  v1 = *(v0 + 158);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 155) = v1;

    sub_24B2D3224();
    sub_24B00ED5C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86C0);
  sub_24B2D5724();
  swift_beginAccess();
  v2 = sub_24B2D5684();
  *(v0 + 408) = v2;
  v3 = swift_task_alloc();
  *(v0 + 416) = v3;
  *v3 = v0;
  v3[1] = sub_24B02AD60;
  v4 = *(v0 + 320);
  v5 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 136, v2, v5, v4);
}

uint64_t sub_24B02ABE8()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 155) = 1;

    sub_24B2D3224();
    sub_24B00ED5C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86C0);
  sub_24B2D5724();
  swift_beginAccess();
  v1 = sub_24B2D5684();
  *(v0 + 408) = v1;
  v2 = swift_task_alloc();
  *(v0 + 416) = v2;
  *v2 = v0;
  v2[1] = sub_24B02AD60;
  v3 = *(v0 + 320);
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 136, v1, v4, v3);
}

uint64_t sub_24B02AD60()
{
  v1 = *v0;

  v2 = *(v1 + 368);
  v3 = *(v1 + 360);

  return MEMORY[0x2822009F8](sub_24B02AEA4, v3, v2);
}

uint64_t sub_24B02AEA4()
{
  v37 = v0;
  v1 = v0 + 136;
  v2 = *(v0 + 136);
  if (*(v0 + 154) == 255)
  {
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));

LABEL_21:

    v21 = *(v0 + 8);

    return v21();
  }

  v3 = *(v0 + 144);
  v4 = *(v0 + 152) | (*(v0 + 154) << 16);
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v5 = WORD1(v4);
  v6 = sub_24B2D3184();
  __swift_project_value_buffer(v6, qword_27EFE4418);
  sub_24B038F10(v2, v3, v4, SBYTE2(v4));
  v7 = sub_24B2D3164();
  v8 = sub_24B2D5934();
  sub_24B038F24(v2, v3, v4);
  v35 = v2;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v36 = v10;
    *v9 = 136315394;
    v1 = v0 + 136;
    *(v9 + 4) = sub_24AFF321C(0xD000000000000020, 0x800000024B2D8770, &v36);
    *(v9 + 12) = 2080;
    *(v0 + 160) = v2;
    *(v0 + 168) = v3;
    *(v0 + 176) = v4;
    *(v0 + 178) = BYTE2(v4);
    sub_24B038F10(v2, v3, v4, SBYTE2(v4));
    v11 = sub_24B2D53C4();
    v13 = sub_24AFF321C(v11, v12, &v36);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_24AFD2000, v7, v8, "Repository: %s - %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v10, -1, -1);
    MEMORY[0x24C23D530](v9, -1, -1);
  }

  if (!swift_weakLoadStrong())
  {
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));

    sub_24B038F24(v35, v3, v4);
    goto LABEL_21;
  }

  if (v5)
  {
    if (v5 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *(v1 + 20) = v35 & 1;

      sub_24B2D3224();

      v14 = sub_24B2D3164();
      v15 = sub_24B2D5934();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v36 = v17;
        *v16 = 136315138;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_24B2D3214();

        if (*(v1 + 21))
        {
          v18 = 1702195828;
        }

        else
        {
          v18 = 0x65736C6166;
        }

        if (*(v1 + 21))
        {
          v19 = 0xE400000000000000;
        }

        else
        {
          v19 = 0xE500000000000000;
        }

        v20 = sub_24AFF321C(v18, v19, &v36);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_24AFD2000, v14, v15, "Repository: friendRequestsAllowed - %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x24C23D530](v17, -1, -1);
        MEMORY[0x24C23D530](v16, -1, -1);
      }
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 232) = v35;
    *(v0 + 240) = v3;
    *(v0 + 248) = v4;
    sub_24B038F4C(v35, v3, v4);

    sub_24B2D3224();

    v23 = sub_24B2D3164();
    v24 = sub_24B2D5934();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v36 = v34;
      *v25 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24B2D3214();

      v26 = *(v0 + 272);
      *(v1 + 144) = *(v0 + 256);
      *(v0 + 296) = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC83B8);
      v27 = sub_24B2D53C4();
      v29 = sub_24AFF321C(v27, v28, &v36);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_24AFD2000, v23, v24, "Repository: activeLocationSharingDevice - %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x24C23D530](v34, -1, -1);
      MEMORY[0x24C23D530](v25, -1, -1);
    }

    sub_24B038F24(v35, v3, v4);
  }

  v30 = sub_24B2D5684();
  *(v0 + 408) = v30;
  v31 = swift_task_alloc();
  *(v0 + 416) = v31;
  *v31 = v0;
  v31[1] = sub_24B02AD60;
  v32 = *(v0 + 320);
  v33 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v1, v30, v33, v32);
}

void sub_24B02B584()
{
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0xD00000000000001FLL, 0x800000024B2D86B0, &v11);
    _os_log_impl(&dword_24AFD2000, v2, v3, "Repository: willCall %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v6 = OBJC_IVAR____TtC12FindMyUICore10Repository_preferenceChangesTask;
  if (*(v0 + OBJC_IVAR____TtC12FindMyUICore10Repository_preferenceChangesTask))
  {

    sub_24B2D5764();
  }

  *(v0 + v6) = 0;

  oslog = sub_24B2D3164();
  v7 = sub_24B2D5934();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_24AFF321C(0xD00000000000001FLL, 0x800000024B2D86B0, &v11);
    _os_log_impl(&dword_24AFD2000, oslog, v7, "Repository: didReceive %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v8, -1, -1);
  }
}

uint64_t sub_24B02B7EC()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  v1[3] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86D0);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v1[6] = *(v3 + 64);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = sub_24B2D5694();
  v1[10] = sub_24B2D5684();
  v5 = sub_24B2D5604();
  v1[11] = v5;
  v1[12] = v4;

  return MEMORY[0x2822009F8](sub_24B02B93C, v5, v4);
}

uint64_t sub_24B02B93C()
{
  v10 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  v0[13] = __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0xD00000000000001BLL, 0x800000024B2D87A0, &v9);
    _os_log_impl(&dword_24AFD2000, v2, v3, "Repository: willCall %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_24B02BB00;
  v7 = v0[8];

  return sub_24B049B5C(v7);
}

uint64_t sub_24B02BB00()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_24B02BF18;
  }

  else
  {
    v5 = sub_24B02BC3C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B02BC3C()
{
  v25 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v23 = v5;
  v7 = v0[2];

  v8 = sub_24B2D56D4();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(v1, v2, v6);

  v10 = sub_24B2D5684();
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  (*(v4 + 32))(v12 + v11, v1, v6);
  *(v12 + ((v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;

  *(v7 + OBJC_IVAR____TtC12FindMyUICore10Repository_friendshipStreamTask) = sub_24B00A9A4(0, 0, v23, &unk_24B2E0BF8, v12);

  v14 = sub_24B2D3164();
  v15 = sub_24B2D5934();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_24AFF321C(0xD00000000000001BLL, 0x800000024B2D87A0, &v24);
    _os_log_impl(&dword_24AFD2000, v14, v15, "Repository: didReceive %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x24C23D530](v17, -1, -1);
    MEMORY[0x24C23D530](v16, -1, -1);
  }

  v18 = v0[8];
  v19 = v0[4];
  v20 = v0[5];
  sub_24B012FF8();
  (*(v20 + 8))(v18, v19);

  v21 = v0[1];

  return v21();
}

uint64_t sub_24B02BF18()
{
  v15 = v0;
  v1 = *(v0 + 120);

  v2 = v1;
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5914();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 120);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_24AFF321C(0xD00000000000001BLL, 0x800000024B2D87A0, &v14);
    *(v7 + 12) = 2112;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_24AFD2000, v3, v4, "Repository: %s - Error: %@", v7, 0x16u);
    sub_24AFF8258(v8, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v7, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24B02C0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  v5[7] = swift_task_alloc();
  v6 = type metadata accessor for SessionFriend(0);
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v5[10] = *(v7 + 64);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v8 = type metadata accessor for SessionFriendStreamChange(0);
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86D8);
  v5[22] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86E0);
  v5[23] = v9;
  v5[24] = *(v9 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = sub_24B2D5694();
  v5[27] = sub_24B2D5684();
  v11 = sub_24B2D5604();
  v5[28] = v11;
  v5[29] = v10;

  return MEMORY[0x2822009F8](sub_24B02C384, v11, v10);
}

uint64_t sub_24B02C384()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86D0);
  sub_24B2D5724();
  swift_beginAccess();
  v1 = sub_24B2D5684();
  v0[30] = v1;
  v2 = swift_task_alloc();
  v0[31] = v2;
  *v2 = v0;
  v2[1] = sub_24B02C47C;
  v3 = v0[22];
  v4 = v0[23];
  v5 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v3, v1, v5, v4);
}

uint64_t sub_24B02C47C()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return MEMORY[0x2822009F8](sub_24B02C5C0, v3, v2);
}

uint64_t sub_24B02C5C0()
{
  v49 = v0;
  v1 = v0[22];
  if ((*(v0[15] + 48))(v1, 1, v0[14]) == 1)
  {
    (*(v0[24] + 8))(v0[25], v0[23]);

LABEL_13:

    v28 = v0[1];

    return v28();
  }

  sub_24B039554(v1, v0[21], type metadata accessor for SessionFriendStreamChange);
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v2 = v0[20];
  v3 = v0[21];
  v4 = sub_24B2D3184();
  __swift_project_value_buffer(v4, qword_27EFE4418);
  sub_24B0394EC(v3, v2, type metadata accessor for SessionFriendStreamChange);
  v5 = sub_24B2D3164();
  v6 = sub_24B2D5934();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[20];
  if (v7)
  {
    v9 = v0[19];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v48 = v11;
    *v10 = 136315138;
    sub_24B0394EC(v8, v9, type metadata accessor for SessionFriendStreamChange);
    v12 = sub_24B2D53C4();
    v14 = v13;
    sub_24B0395BC(v8, type metadata accessor for SessionFriendStreamChange);
    v15 = sub_24AFF321C(v12, v14, &v48);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_24AFD2000, v5, v6, "Repository: friendshipStreamChange - %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C23D530](v11, -1, -1);
    MEMORY[0x24C23D530](v10, -1, -1);
  }

  else
  {

    sub_24B0395BC(v8, type metadata accessor for SessionFriendStreamChange);
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v25 = v0[24];
    v24 = v0[25];
    v26 = v0[23];
    v27 = v0[21];

    sub_24B0395BC(v27, type metadata accessor for SessionFriendStreamChange);
    (*(v25 + 8))(v24, v26);
    goto LABEL_13;
  }

  v17 = Strong;
  sub_24B0394EC(v0[21], v0[18], type metadata accessor for SessionFriendStreamChange);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = v0[18];
  v20 = v0[8];
  if (EnumCaseMultiPayload == 1)
  {
    v22 = v0 + 11;
    v21 = v0[11];
    v23 = v0[16];
    sub_24B0394EC(v19, v23, type metadata accessor for SessionFriendStreamChange);
    sub_24B039554(v23, v21, type metadata accessor for SessionFriend);
    if (*(v21 + *(v20 + 20)) == 1)
    {
      sub_24B021278(0, 0, 0, 0, *v22);
    }
  }

  else
  {
    v22 = v0 + 13;
    v30 = v0[13];
    v31 = v0[17];
    sub_24B0394EC(v19, v31, type metadata accessor for SessionFriendStreamChange);
    sub_24B039554(v31, v30, type metadata accessor for SessionFriend);
    if (*(v30 + *(v20 + 20)) == 1)
    {
      v32 = v0[12];
      v33 = v0[13];
      v34 = v0[9];
      v35 = v0[7];
      v36 = sub_24B2D56D4();
      (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
      sub_24B0394EC(v33, v32, type metadata accessor for SessionFriend);

      v37 = sub_24B2D5684();
      v38 = (*(v34 + 80) + 40) & ~*(v34 + 80);
      v39 = swift_allocObject();
      v40 = MEMORY[0x277D85700];
      v39[2] = v37;
      v39[3] = v40;
      v39[4] = v17;
      sub_24B039554(v32, v39 + v38, type metadata accessor for SessionFriend);
      sub_24B00A9A4(0, 0, v35, &unk_24B2E0C18, v39);
    }
  }

  v41 = v0[21];
  v42 = v0[18];
  sub_24B0395BC(*v22, type metadata accessor for SessionFriend);
  sub_24B0395BC(v42, type metadata accessor for SessionFriendStreamChange);
  sub_24B012FF8();

  sub_24B0395BC(v41, type metadata accessor for SessionFriendStreamChange);
  v43 = sub_24B2D5684();
  v0[30] = v43;
  v44 = swift_task_alloc();
  v0[31] = v44;
  *v44 = v0;
  v44[1] = sub_24B02C47C;
  v45 = v0[22];
  v46 = v0[23];
  v47 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v45, v43, v47, v46);
}

uint64_t sub_24B02CC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_24B2D5694();
  v5[3] = sub_24B2D5684();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_24B02CD04;

  return sub_24B012094(a5);
}

uint64_t sub_24B02CD04()
{

  v1 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B02CE40, v1, v0);
}

uint64_t sub_24B02CE40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B02CEA0()
{
  v1[2] = v0;
  sub_24B2D5694();
  v1[3] = sub_24B2D5684();
  v3 = sub_24B2D5604();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_24B02CF38, v3, v2);
}

uint64_t sub_24B02CF38()
{
  v9 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  *(v0 + 48) = __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0xD00000000000001ALL, 0x800000024B2D86F0, &v8);
    _os_log_impl(&dword_24AFD2000, v2, v3, "Repository: willCall %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_24B02D0F4;

  return sub_24B04B8D4();
}

uint64_t sub_24B02D0F4()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_24B039890;
  }

  else
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_24B02D218;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24B02D218()
{
  v10 = v0;
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC12FindMyUICore10Repository_friendshipStreamTask;
  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore10Repository_friendshipStreamTask))
  {

    sub_24B2D5764();
  }

  *(v1 + v2) = 0;

  v3 = sub_24B2D3164();
  v4 = sub_24B2D5934();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_24AFF321C(0xD00000000000001ALL, 0x800000024B2D86F0, &v9);
    _os_log_impl(&dword_24AFD2000, v3, v4, "Repository: didReceive %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C23D530](v6, -1, -1);
    MEMORY[0x24C23D530](v5, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24B02D3A4()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  v1[3] = swift_task_alloc();
  v1[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86E8);
  v1[5] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86F0);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86F8) - 8);
  v1[9] = v3;
  v1[10] = *(v3 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = sub_24B2D5694();
  v1[14] = sub_24B2D5684();
  v5 = sub_24B2D5604();
  v1[15] = v5;
  v1[16] = v4;

  return MEMORY[0x2822009F8](sub_24B02D594, v5, v4);
}

uint64_t sub_24B02D594()
{
  v10 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  v0[17] = __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0xD000000000000019, 0x800000024B2D8800, &v9);
    _os_log_impl(&dword_24AFD2000, v2, v3, "Repository: willCall %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_24B02D758;
  v7 = v0[8];

  return sub_24B047444(v7);
}

uint64_t sub_24B02D758()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_24B02DCF0;
  }

  else
  {
    v5 = sub_24B02D894;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B02D894()
{
  v27 = v0;
  v1 = v0[12];
  v25 = v0[10];
  v2 = v0[8];
  v24 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v21 = v0[3];
  v22 = v0[2];
  v23 = v0[11];

  sub_24B2D6084();
  *(v6 + *(v5 + 36)) = xmmword_24B2E0680;
  v7 = v6 + *(v5 + 40);
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8700);
  sub_24B2D5D64();
  sub_24B039184(&qword_27EFC8708, &qword_27EFC86F0);
  sub_24B034188(&qword_27EFC8640, MEMORY[0x277D85928]);
  sub_24B039184(&qword_27EFC8710, &qword_27EFC8700);
  sub_24B2D57C4();
  sub_24AFF8258(v6, &qword_27EFC86E8);
  (*(v3 + 8))(v2, v4);
  v8 = sub_24B2D56D4();
  (*(*(v8 - 8) + 56))(v21, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  sub_24B008890(v1, v23, &qword_27EFC86F8);

  v10 = sub_24B2D5684();
  v11 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_24B0391CC(v23, v12 + v11, &qword_27EFC86F8);
  *(v12 + ((v25 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;

  *(v22 + OBJC_IVAR____TtC12FindMyUICore10Repository_locationsStreamTask) = sub_24B00A9A4(0, 0, v21, &unk_24B2E0C50, v12);

  v14 = sub_24B2D3164();
  v15 = sub_24B2D5934();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_24AFF321C(0xD000000000000019, 0x800000024B2D8800, &v26);
    _os_log_impl(&dword_24AFD2000, v14, v15, "Repository: didReceive %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x24C23D530](v17, -1, -1);
    MEMORY[0x24C23D530](v16, -1, -1);
  }

  v18 = v0[12];
  sub_24B012FF8();
  sub_24AFF8258(v18, &qword_27EFC86F8);

  v19 = v0[1];

  return v19();
}

uint64_t sub_24B02DCF0()
{
  v15 = v0;
  v1 = *(v0 + 152);

  v2 = v1;
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5914();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 152);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_24AFF321C(0xD000000000000019, 0x800000024B2D8800, &v14);
    *(v7 + 12) = 2112;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_24AFD2000, v3, v4, "Repository: %s - Error: %@", v7, 0x16u);
    sub_24AFF8258(v8, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v7, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24B02DEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v6 = sub_24B2D1704();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8718);
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = sub_24B2D5694();
  v5[26] = sub_24B2D5684();
  v9 = sub_24B2D5604();
  v5[27] = v9;
  v5[28] = v8;

  return MEMORY[0x2822009F8](sub_24B02E064, v9, v8);
}

uint64_t sub_24B02E064()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86F8);
  v1 = sub_24B2D3104();
  *(v0 + 232) = v2;
  *(v0 + 16) = v1;
  *(v0 + 24) = v4;
  *(v0 + 32) = v2;
  *(v0 + 40) = v3 & 1;
  *(v0 + 240) = sub_24B2D5684();
  v5 = swift_task_alloc();
  *(v0 + 248) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8720);
  *v5 = v0;
  v5[1] = sub_24B02E168;

  return MEMORY[0x282141C70](v0 + 104, v6);
}

uint64_t sub_24B02E168()
{
  v2 = *v1;
  v2[32] = v0;

  v3 = v2[30];
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_24B2D5604();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_24B02E924;
  }

  else
  {
    v2[33] = v2[13];
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_24B2D5604();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_24B02E308;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_24B02E308()
{

  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  return MEMORY[0x2822009F8](sub_24B02E36C, v1, v2);
}

uint64_t sub_24B02E36C()
{
  v57 = v0;
  v50 = *(v0 + 264);
  if (v50)
  {
    v49 = *(v50 + 16);
    if (v49)
    {
      v48 = *(v0 + 192);
      v46 = v50 + ((*(*(v0 + 184) + 80) + 32) & ~*(*(v0 + 184) + 80));
      v47 = *(*(v0 + 176) + 48);
      v1 = swift_beginAccess();
      v3 = 0;
      while (v3 < *(v50 + 16))
      {
        v4 = *(v0 + 192);
        v5 = *(v0 + 168);
        v6 = *(v0 + 136);
        v7 = *(v0 + 144);
        v55 = v3;
        sub_24B008890(v46 + *(*(v0 + 184) + 72) * v3, v4, &qword_27EFC8718);
        v8 = *v4;
        v9 = *(v4 + 8);
        v10 = *(v4 + 16);
        v11 = *(v4 + 24);
        (*(v7 + 32))(v5, v48 + v47, v6);
        if (qword_27EFC75E8 != -1)
        {
          swift_once();
        }

        v12 = *(v0 + 160);
        v13 = *(v0 + 168);
        v14 = *(v0 + 136);
        v15 = *(v0 + 144);
        v16 = sub_24B2D3184();
        __swift_project_value_buffer(v16, qword_27EFE4418);
        v52 = *(v15 + 16);
        v52(v12, v13, v14);
        sub_24B039360(v8, v9, v10);
        v17 = sub_24B2D3164();
        v18 = sub_24B2D5934();
        sub_24B0393A4(v8, v9, v10);
        v19 = os_log_type_enabled(v17, v18);
        v20 = *(v0 + 160);
        v51 = v10;
        v54 = v9;
        if (v19)
        {
          v21 = v9;
          v45 = v18;
          v23 = *(v0 + 144);
          v22 = *(v0 + 152);
          v24 = *(v0 + 136);
          log = v17;
          v25 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v56 = v44;
          *v25 = 141558531;
          *(v25 + 4) = 1752392040;
          *(v25 + 12) = 2081;
          v52(v22, v20, v24);
          v26 = sub_24B2D53C4();
          v28 = v27;
          v53 = *(v23 + 8);
          v53(v20, v24);
          v29 = sub_24AFF321C(v26, v28, &v56);

          *(v25 + 14) = v29;
          *(v25 + 22) = 2081;
          *(v0 + 48) = v8;
          *(v0 + 56) = v21;
          *(v0 + 64) = v51;
          *(v0 + 72) = v11;
          v30 = v8;
          sub_24B039360(v8, v21, v51);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8728);
          v31 = sub_24B2D53C4();
          v33 = sub_24AFF321C(v31, v32, &v56);

          *(v25 + 24) = v33;
          _os_log_impl(&dword_24AFD2000, log, v45, "Repository: locationsStream - %{private,mask.hash}s - %{private}s", v25, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C23D530](v44, -1, -1);
          MEMORY[0x24C23D530](v25, -1, -1);
        }

        else
        {
          v30 = v8;
          v34 = *(v0 + 136);
          v35 = *(v0 + 144);

          v53 = *(v35 + 8);
          v53(v20, v34);
        }

        if (!swift_weakLoadStrong())
        {
          v39 = *(v0 + 168);
          v40 = *(v0 + 136);

          sub_24B0393A4(v30, v54, v51);
          v53(v39, v40);
          goto LABEL_17;
        }

        v3 = v55 + 1;
        v36 = *(v0 + 168);
        v37 = *(v0 + 136);
        sub_24B021278(v30, v54, v51, v11, v36);

        sub_24B0393A4(v30, v54, v51);
        v1 = (v53)(v36, v37);
        if (v49 == v55 + 1)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_12:

      *(v0 + 240) = sub_24B2D5684();
      v38 = swift_task_alloc();
      *(v0 + 248) = v38;
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8720);
      *v38 = v0;
      v38[1] = sub_24B02E168;
      v1 = v0 + 104;
    }

    return MEMORY[0x282141C70](v1, v2);
  }

  else
  {

LABEL_17:

    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_24B02E924()
{
  *(v0 + 112) = *(v0 + 256);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_24B02E9B0()
{
  v1[2] = v0;
  sub_24B2D5694();
  v1[3] = sub_24B2D5684();
  v3 = sub_24B2D5604();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_24B02EA48, v3, v2);
}

uint64_t sub_24B02EA48()
{
  v9 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  *(v0 + 48) = __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0xD000000000000018, 0x800000024B2D86D0, &v8);
    _os_log_impl(&dword_24AFD2000, v2, v3, "Repository: willCall %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_24B02EC04;

  return sub_24B04949C();
}

uint64_t sub_24B02EC04()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_24B039894;
  }

  else
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_24B02ED28;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24B02ED28()
{
  v10 = v0;
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC12FindMyUICore10Repository_locationsStreamTask;
  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore10Repository_locationsStreamTask))
  {

    sub_24B2D5764();
  }

  *(v1 + v2) = 0;

  v3 = sub_24B2D3164();
  v4 = sub_24B2D5934();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_24AFF321C(0xD000000000000018, 0x800000024B2D86D0, &v9);
    _os_log_impl(&dword_24AFD2000, v3, v4, "Repository: didReceive %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C23D530](v6, -1, -1);
    MEMORY[0x24C23D530](v5, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24B02EEB4()
{
  v1 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v2 = sub_24B2D3184();
  __swift_project_value_buffer(v2, qword_27EFE4418);
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5934();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v72[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_24AFF321C(0xD000000000000019, 0x800000024B2D8660, v72);
    _os_log_impl(&dword_24AFD2000, v3, v4, "Repository: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C23D530](v6, -1, -1);
    MEMORY[0x24C23D530](v5, -1, -1);
  }

  v7 = OBJC_IVAR____TtC12FindMyUICore10Repository_subscriptionsByKind;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (*(v8 + 16) && (v9 = sub_24B1810E4(2u), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();
    if (*(v11 + 16))
    {

      v12 = sub_24B2D3164();
      v13 = sub_24B2D5934();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v72[0] = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_24AFF321C(0xD000000000000019, 0x800000024B2D8660, v72);
        _os_log_impl(&dword_24AFD2000, v12, v13, "Repository: %s - Filtering - Friendships", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x24C23D530](v15, -1, -1);
        MEMORY[0x24C23D530](v14, -1, -1);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_24B2D3214();

      v16 = v72[0];

      v17 = sub_24B037DB4(v16, v11, sub_24B1F18A8, 919, 0);

      swift_getKeyPath();
      swift_getKeyPath();
      v72[0] = v17;

      sub_24B2D3224();
      sub_24B00E7E4(&unk_24B2E07E0, &unk_24B2E0808, type metadata accessor for SessionFollowingState, "Repository: followingStateByHandle - %s");
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24B2D3214();

      v18 = v72[0];

      v19 = sub_24B037DB4(v18, v11, sub_24B1F1414, 922, 0);

      swift_bridgeObjectRelease_n();
      swift_getKeyPath();
      swift_getKeyPath();
      v72[0] = v19;

      sub_24B2D3224();
      goto LABEL_15;
    }
  }

  else
  {
    swift_endAccess();
  }

  v20 = sub_24B2D3164();
  v21 = sub_24B2D5934();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v72[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_24AFF321C(0xD000000000000019, 0x800000024B2D8660, v72);
    _os_log_impl(&dword_24AFD2000, v20, v21, "Repository: %s - Clear all - Friendships", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x24C23D530](v23, -1, -1);
    MEMORY[0x24C23D530](v22, -1, -1);
  }

  v24 = MEMORY[0x277D84F90];
  v25 = sub_24B192470(MEMORY[0x277D84F90]);
  swift_getKeyPath();
  swift_getKeyPath();
  v72[0] = v25;

  sub_24B2D3224();
  sub_24B00E7E4(&unk_24B2E07E0, &unk_24B2E0808, type metadata accessor for SessionFollowingState, "Repository: followingStateByHandle - %s");
  v26 = sub_24B19268C(v24);
  swift_getKeyPath();
  swift_getKeyPath();
  v72[0] = v26;

  sub_24B2D3224();
LABEL_15:
  sub_24B00E7E4(&unk_24B2E0780, &unk_24B2E07A8, type metadata accessor for SessionFollowerState, "Repository: followerStateByHandle - %s");
  swift_beginAccess();
  v27 = *(v1 + v7);
  if (*(v27 + 16) && (v28 = sub_24B1810E4(4u), (v29 & 1) != 0))
  {
    v30 = *(*(v27 + 56) + 8 * v28);
    swift_endAccess();
    if (*(v30 + 16))
    {

      v31 = sub_24B2D3164();
      v32 = sub_24B2D5934();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v72[0] = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_24AFF321C(0xD000000000000019, 0x800000024B2D8660, v72);
        _os_log_impl(&dword_24AFD2000, v31, v32, "Repository: %s - Filtering - Locations", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x24C23D530](v34, -1, -1);
        MEMORY[0x24C23D530](v33, -1, -1);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_24B2D3214();

      v36 = v72[0];
      MEMORY[0x28223BE20](v35);
      v71[2] = v30;
      v37 = sub_24B036AF8(v36, sub_24B0386B4, v71);

      swift_getKeyPath();
      swift_getKeyPath();
      v72[0] = v37;

      sub_24B2D3224();
      sub_24B00DF80();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24B2D3214();

      v38 = v72[0];

      v39 = sub_24B037088(v38, v30);

      swift_bridgeObjectRelease_n();
      swift_getKeyPath();
      swift_getKeyPath();
      v72[0] = v39;

      goto LABEL_25;
    }
  }

  else
  {
    swift_endAccess();
  }

  v40 = sub_24B2D3164();
  v41 = sub_24B2D5934();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v72[0] = v43;
    *v42 = 136315138;
    *(v42 + 4) = sub_24AFF321C(0xD000000000000019, 0x800000024B2D8660, v72);
    _os_log_impl(&dword_24AFD2000, v40, v41, "Repository: %s - Clear all - Locations", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x24C23D530](v43, -1, -1);
    MEMORY[0x24C23D530](v42, -1, -1);
  }

  v44 = MEMORY[0x277D84F90];
  v45 = sub_24B1928A8(MEMORY[0x277D84F90]);
  swift_getKeyPath();
  swift_getKeyPath();
  v72[0] = v45;

  sub_24B2D3224();
  sub_24B00DF80();
  v46 = sub_24B192AA8(v44);
  swift_getKeyPath();
  swift_getKeyPath();
  v72[0] = v46;

LABEL_25:
  sub_24B2D3224();
  sub_24B00E244();
  swift_beginAccess();
  v47 = *(v1 + v7);
  if (*(v47 + 16) && (v48 = sub_24B1810E4(3u), (v49 & 1) != 0))
  {
    v50 = *(*(v47 + 56) + 8 * v48);
    swift_endAccess();
    if (*(v50 + 16))
    {

      v51 = sub_24B2D3164();
      v52 = sub_24B2D5934();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v72[0] = v54;
        *v53 = 136315138;
        *(v53 + 4) = sub_24AFF321C(0xD000000000000019, 0x800000024B2D8660, v72);
        _os_log_impl(&dword_24AFD2000, v51, v52, "Repository: %s - Filtering - Directions", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v54);
        MEMORY[0x24C23D530](v54, -1, -1);
        MEMORY[0x24C23D530](v53, -1, -1);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_24B2D3214();

      v55 = v72[0];

      v56 = sub_24B037DB4(v55, v50, sub_24B1F0FE8, 955, 1);

      swift_bridgeObjectRelease_n();
      swift_getKeyPath();
      swift_getKeyPath();
      v72[0] = v56;

      goto LABEL_35;
    }
  }

  else
  {
    swift_endAccess();
  }

  v57 = sub_24B2D3164();
  v58 = sub_24B2D5934();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v72[0] = v60;
    *v59 = 136315138;
    *(v59 + 4) = sub_24AFF321C(0xD000000000000019, 0x800000024B2D8660, v72);
    _os_log_impl(&dword_24AFD2000, v57, v58, "Repository: %s - Clear all - Directions", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x24C23D530](v60, -1, -1);
    MEMORY[0x24C23D530](v59, -1, -1);
  }

  v61 = sub_24B192AA8(MEMORY[0x277D84F90]);
  swift_getKeyPath();
  swift_getKeyPath();
  v72[0] = v61;

LABEL_35:
  sub_24B2D3224();
  sub_24B00E244();
  swift_beginAccess();
  v62 = *(v1 + v7);
  if (*(v62 + 16) && (v63 = sub_24B1810E4(0), (v64 & 1) != 0))
  {
    v65 = *(*(v62 + 56) + 8 * v63);
    result = swift_endAccess();
    if (*(v65 + 16))
    {
      return result;
    }
  }

  else
  {
    swift_endAccess();
  }

  v67 = sub_24B2D3164();
  v68 = sub_24B2D5934();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v72[0] = v70;
    *v69 = 136315138;
    *(v69 + 4) = sub_24AFF321C(0xD000000000000019, 0x800000024B2D8660, v72);
    _os_log_impl(&dword_24AFD2000, v67, v68, "Repository: %s - Clear My Location", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v70);
    MEMORY[0x24C23D530](v70, -1, -1);
    MEMORY[0x24C23D530](v69, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v72[0] = 0;

  sub_24B2D3224();
  return sub_24B00E490();
}

BOOL sub_24B02FD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8660);
  v7 = *(_s14descr285E46659O16SubscriptionDataOMa(0) - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24B2DEAD0;
  v11 = v10 + v9;
  v12 = sub_24B2D1704();
  v13 = *(*(v12 - 8) + 16);
  v13(v11, a1, v12);
  v14 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  *(v11 + *(v14 + 20)) = 0;
  swift_storeEnumTagMultiPayload();
  v15 = v11 + v8;
  v13(v15, a1, v12);
  *(v15 + *(v14 + 20)) = 1;
  swift_storeEnumTagMultiPayload();
  v16 = sub_24B1333A8(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  v17 = sub_24B0344E4(v16, a6);

  v18 = *(v17 + 16);

  return v18 != 0;
}

id sub_24B030004()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24B030060@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B2D31B4();
  *a1 = result;
  return result;
}

void sub_24B030120(void *a1)
{
  v66 = type metadata accessor for ContactsProvider.Subscription(0);
  v4 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC84B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v63 = &v51 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  v14 = a1[2];
  v15 = *v1;
  v16 = *(*v1 + 16);
  v17 = v16 + v14;
  if (__OFADD__(v16, v14))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v8;
  if (!isUniquelyReferenced_nonNull_native || (v19 = v15[3] >> 1, v19 < v17))
  {
    if (v16 <= v17)
    {
      v20 = v16 + v14;
    }

    else
    {
      v20 = v16;
    }

    v15 = sub_24B0068BC(isUniquelyReferenced_nonNull_native, v20, 1, v15);
    v19 = v15[3] >> 1;
  }

  v21 = v15[2];
  v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v22 = v19 - v21;
  sub_24B036178(&v67, v15 + v16 + v17 * v21, v19 - v21, a1, type metadata accessor for ContactsProvider.Subscription, type metadata accessor for ContactsProvider.Subscription, type metadata accessor for ContactsProvider.Subscription);
  if (v23 < v14)
  {
    goto LABEL_16;
  }

  if (v23)
  {
    v25 = v15[2];
    v26 = __OFADD__(v25, v23);
    v27 = v25 + v23;
    if (v26)
    {
      __break(1u);
      goto LABEL_20;
    }

    v15[2] = v27;
  }

  if (v23 != v22)
  {
    sub_24B0363BC();
LABEL_14:
    *v1 = v15;
    return;
  }

LABEL_17:
  v62 = v15[2];
  v24 = v68;
  v54 = v68;
  v55 = v67;
  v27 = v70;
  v52 = v69;
  v28 = v71;
  if (v71)
  {
    v29 = v70;
LABEL_27:
    v61 = (v28 - 1) & v28;
    sub_24B0394EC(*(v55 + 48) + (__clz(__rbit64(v28)) | (v29 << 6)) * v17, v13, type metadata accessor for ContactsProvider.Subscription);
    v33 = v66;
    v57 = *(v2 + 56);
    v57(v13, 0, 1, v66);
    v32 = v29;
    while (1)
    {
      v34 = v63;
      sub_24B008890(v13, v63, &qword_27EFC84B0);
      v35 = *(v2 + 48);
      v2 += 48;
      v60 = v35;
      if (v35(v34, 1, v33) == 1)
      {
        break;
      }

      v53 = (v52 + 64) >> 6;
      v56 = v4 + 56;
      v36 = v62;
      while (1)
      {
        sub_24AFF8258(v34, &qword_27EFC84B0);
        v39 = v15[3];
        v40 = v39 >> 1;
        v62 = v36;
        if ((v39 >> 1) < v36 + 1)
        {
          v15 = sub_24B0068BC(v39 > 1, v36 + 1, 1, v15);
          v40 = v15[3] >> 1;
        }

        v41 = v65;
        sub_24B008890(v13, v65, &qword_27EFC84B0);
        if (v60(v41, 1, v66) != 1)
        {
          break;
        }

        v42 = v32;
        v43 = v65;
LABEL_37:
        sub_24AFF8258(v43, &qword_27EFC84B0);
        v37 = v62;
        v32 = v42;
LABEL_32:
        v15[2] = v37;
        v34 = v63;
        sub_24B008890(v13, v63, &qword_27EFC84B0);
        v38 = v60(v34, 1, v66);
        v36 = v62;
        if (v38 == 1)
        {
          goto LABEL_29;
        }
      }

      v58 = v15 + v16;
      v44 = v62;
      if (v62 <= v40)
      {
        v44 = v40;
      }

      v59 = v44;
      v43 = v65;
      while (1)
      {
        v47 = v64;
        sub_24B039554(v43, v64, type metadata accessor for ContactsProvider.Subscription);
        if (v62 == v59)
        {
          sub_24B0395BC(v47, type metadata accessor for ContactsProvider.Subscription);
          v37 = v59;
          v62 = v59;
          goto LABEL_32;
        }

        v4 = v62;
        sub_24AFF8258(v13, &qword_27EFC84B0);
        sub_24B039554(v47, &v58[v4 * v17], type metadata accessor for ContactsProvider.Subscription);
        v48 = v61;
        if (!v61)
        {
          break;
        }

        v49 = v32;
LABEL_53:
        v61 = (v48 - 1) & v48;
        sub_24B0394EC(*(v55 + 48) + (__clz(__rbit64(v48)) | (v49 << 6)) * v17, v13, type metadata accessor for ContactsProvider.Subscription);
        v45 = 0;
        v42 = v49;
LABEL_42:
        v62 = v4 + 1;
        v46 = v66;
        v57(v13, v45, 1, v66);
        v43 = v65;
        sub_24B008890(v13, v65, &qword_27EFC84B0);
        v32 = v42;
        if (v60(v43, 1, v46) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v53 <= (v32 + 1))
      {
        v50 = v32 + 1;
      }

      else
      {
        v50 = v53;
      }

      v42 = v50 - 1;
      while (1)
      {
        v49 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v49 >= v53)
        {
          v61 = 0;
          v45 = 1;
          goto LABEL_42;
        }

        v48 = *(v54 + 8 * v49);
        ++v32;
        if (v48)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_55:
      v33 = v66;
      v57 = *(v2 + 56);
      v57(v13, 1, 1, v66);
      v61 = 0;
    }

LABEL_29:
    sub_24AFF8258(v13, &qword_27EFC84B0);
    sub_24B0363BC();
    sub_24AFF8258(v34, &qword_27EFC84B0);
    goto LABEL_14;
  }

LABEL_20:
  v30 = (v52 + 64) >> 6;
  if (v30 <= v27 + 1)
  {
    v31 = v27 + 1;
  }

  else
  {
    v31 = (v52 + 64) >> 6;
  }

  v32 = v31 - 1;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v30)
    {
      goto LABEL_55;
    }

    v28 = *(v24 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

void sub_24B030820(void *a1)
{
  v66 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v4 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC84A8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v63 = &v51 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  v14 = a1[2];
  v15 = *v1;
  v16 = *(*v1 + 16);
  v17 = v16 + v14;
  if (__OFADD__(v16, v14))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v8;
  if (!isUniquelyReferenced_nonNull_native || (v19 = v15[3] >> 1, v19 < v17))
  {
    if (v16 <= v17)
    {
      v20 = v16 + v14;
    }

    else
    {
      v20 = v16;
    }

    v15 = sub_24B0068E4(isUniquelyReferenced_nonNull_native, v20, 1, v15);
    v19 = v15[3] >> 1;
  }

  v21 = v15[2];
  v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v22 = v19 - v21;
  sub_24B036178(&v67, v15 + v16 + v17 * v21, v19 - v21, a1, type metadata accessor for PeopleLocationsProvider.Subscription, type metadata accessor for PeopleLocationsProvider.Subscription, type metadata accessor for PeopleLocationsProvider.Subscription);
  if (v23 < v14)
  {
    goto LABEL_16;
  }

  if (v23)
  {
    v25 = v15[2];
    v26 = __OFADD__(v25, v23);
    v27 = v25 + v23;
    if (v26)
    {
      __break(1u);
      goto LABEL_20;
    }

    v15[2] = v27;
  }

  if (v23 != v22)
  {
    sub_24B0363BC();
LABEL_14:
    *v1 = v15;
    return;
  }

LABEL_17:
  v62 = v15[2];
  v24 = v68;
  v54 = v68;
  v55 = v67;
  v27 = v70;
  v52 = v69;
  v28 = v71;
  if (v71)
  {
    v29 = v70;
LABEL_27:
    v61 = (v28 - 1) & v28;
    sub_24B0394EC(*(v55 + 48) + (__clz(__rbit64(v28)) | (v29 << 6)) * v17, v13, type metadata accessor for PeopleLocationsProvider.Subscription);
    v33 = v66;
    v57 = *(v2 + 56);
    v57(v13, 0, 1, v66);
    v32 = v29;
    while (1)
    {
      v34 = v63;
      sub_24B008890(v13, v63, &qword_27EFC84A8);
      v35 = *(v2 + 48);
      v2 += 48;
      v60 = v35;
      if (v35(v34, 1, v33) == 1)
      {
        break;
      }

      v53 = (v52 + 64) >> 6;
      v56 = v4 + 56;
      v36 = v62;
      while (1)
      {
        sub_24AFF8258(v34, &qword_27EFC84A8);
        v39 = v15[3];
        v40 = v39 >> 1;
        v62 = v36;
        if ((v39 >> 1) < v36 + 1)
        {
          v15 = sub_24B0068E4(v39 > 1, v36 + 1, 1, v15);
          v40 = v15[3] >> 1;
        }

        v41 = v65;
        sub_24B008890(v13, v65, &qword_27EFC84A8);
        if (v60(v41, 1, v66) != 1)
        {
          break;
        }

        v42 = v32;
        v43 = v65;
LABEL_37:
        sub_24AFF8258(v43, &qword_27EFC84A8);
        v37 = v62;
        v32 = v42;
LABEL_32:
        v15[2] = v37;
        v34 = v63;
        sub_24B008890(v13, v63, &qword_27EFC84A8);
        v38 = v60(v34, 1, v66);
        v36 = v62;
        if (v38 == 1)
        {
          goto LABEL_29;
        }
      }

      v58 = v15 + v16;
      v44 = v62;
      if (v62 <= v40)
      {
        v44 = v40;
      }

      v59 = v44;
      v43 = v65;
      while (1)
      {
        v47 = v64;
        sub_24B039554(v43, v64, type metadata accessor for PeopleLocationsProvider.Subscription);
        if (v62 == v59)
        {
          sub_24B0395BC(v47, type metadata accessor for PeopleLocationsProvider.Subscription);
          v37 = v59;
          v62 = v59;
          goto LABEL_32;
        }

        v4 = v62;
        sub_24AFF8258(v13, &qword_27EFC84A8);
        sub_24B039554(v47, &v58[v4 * v17], type metadata accessor for PeopleLocationsProvider.Subscription);
        v48 = v61;
        if (!v61)
        {
          break;
        }

        v49 = v32;
LABEL_53:
        v61 = (v48 - 1) & v48;
        sub_24B0394EC(*(v55 + 48) + (__clz(__rbit64(v48)) | (v49 << 6)) * v17, v13, type metadata accessor for PeopleLocationsProvider.Subscription);
        v45 = 0;
        v42 = v49;
LABEL_42:
        v62 = v4 + 1;
        v46 = v66;
        v57(v13, v45, 1, v66);
        v43 = v65;
        sub_24B008890(v13, v65, &qword_27EFC84A8);
        v32 = v42;
        if (v60(v43, 1, v46) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v53 <= (v32 + 1))
      {
        v50 = v32 + 1;
      }

      else
      {
        v50 = v53;
      }

      v42 = v50 - 1;
      while (1)
      {
        v49 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v49 >= v53)
        {
          v61 = 0;
          v45 = 1;
          goto LABEL_42;
        }

        v48 = *(v54 + 8 * v49);
        ++v32;
        if (v48)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_55:
      v33 = v66;
      v57 = *(v2 + 56);
      v57(v13, 1, 1, v66);
      v61 = 0;
    }

LABEL_29:
    sub_24AFF8258(v13, &qword_27EFC84A8);
    sub_24B0363BC();
    sub_24AFF8258(v34, &qword_27EFC84A8);
    goto LABEL_14;
  }

LABEL_20:
  v30 = (v52 + 64) >> 6;
  if (v30 <= v27 + 1)
  {
    v31 = v27 + 1;
  }

  else
  {
    v31 = (v52 + 64) >> 6;
  }

  v32 = v31 - 1;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v30)
    {
      goto LABEL_55;
    }

    v28 = *(v24 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

void sub_24B030F20(void *a1)
{
  v66 = type metadata accessor for PeopleProvider.Subscription(0);
  v4 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85C8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v63 = &v51 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  v14 = a1[2];
  v15 = *v1;
  v16 = *(*v1 + 16);
  v17 = v16 + v14;
  if (__OFADD__(v16, v14))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v8;
  if (!isUniquelyReferenced_nonNull_native || (v19 = v15[3] >> 1, v19 < v17))
  {
    if (v16 <= v17)
    {
      v20 = v16 + v14;
    }

    else
    {
      v20 = v16;
    }

    v15 = sub_24B00690C(isUniquelyReferenced_nonNull_native, v20, 1, v15);
    v19 = v15[3] >> 1;
  }

  v21 = v15[2];
  v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v22 = v19 - v21;
  sub_24B036178(&v67, v15 + v16 + v17 * v21, v19 - v21, a1, type metadata accessor for PeopleProvider.Subscription, type metadata accessor for PeopleProvider.Subscription, type metadata accessor for PeopleProvider.Subscription);
  if (v23 < v14)
  {
    goto LABEL_16;
  }

  if (v23)
  {
    v25 = v15[2];
    v26 = __OFADD__(v25, v23);
    v27 = v25 + v23;
    if (v26)
    {
      __break(1u);
      goto LABEL_20;
    }

    v15[2] = v27;
  }

  if (v23 != v22)
  {
    sub_24B0363BC();
LABEL_14:
    *v1 = v15;
    return;
  }

LABEL_17:
  v62 = v15[2];
  v24 = v68;
  v54 = v68;
  v55 = v67;
  v27 = v70;
  v52 = v69;
  v28 = v71;
  if (v71)
  {
    v29 = v70;
LABEL_27:
    v61 = (v28 - 1) & v28;
    sub_24B0394EC(*(v55 + 48) + (__clz(__rbit64(v28)) | (v29 << 6)) * v17, v13, type metadata accessor for PeopleProvider.Subscription);
    v33 = v66;
    v57 = *(v2 + 56);
    v57(v13, 0, 1, v66);
    v32 = v29;
    while (1)
    {
      v34 = v63;
      sub_24B008890(v13, v63, &qword_27EFC85C8);
      v35 = *(v2 + 48);
      v2 += 48;
      v60 = v35;
      if (v35(v34, 1, v33) == 1)
      {
        break;
      }

      v53 = (v52 + 64) >> 6;
      v56 = v4 + 56;
      v36 = v62;
      while (1)
      {
        sub_24AFF8258(v34, &qword_27EFC85C8);
        v39 = v15[3];
        v40 = v39 >> 1;
        v62 = v36;
        if ((v39 >> 1) < v36 + 1)
        {
          v15 = sub_24B00690C(v39 > 1, v36 + 1, 1, v15);
          v40 = v15[3] >> 1;
        }

        v41 = v65;
        sub_24B008890(v13, v65, &qword_27EFC85C8);
        if (v60(v41, 1, v66) != 1)
        {
          break;
        }

        v42 = v32;
        v43 = v65;
LABEL_37:
        sub_24AFF8258(v43, &qword_27EFC85C8);
        v37 = v62;
        v32 = v42;
LABEL_32:
        v15[2] = v37;
        v34 = v63;
        sub_24B008890(v13, v63, &qword_27EFC85C8);
        v38 = v60(v34, 1, v66);
        v36 = v62;
        if (v38 == 1)
        {
          goto LABEL_29;
        }
      }

      v58 = v15 + v16;
      v44 = v62;
      if (v62 <= v40)
      {
        v44 = v40;
      }

      v59 = v44;
      v43 = v65;
      while (1)
      {
        v47 = v64;
        sub_24B039554(v43, v64, type metadata accessor for PeopleProvider.Subscription);
        if (v62 == v59)
        {
          sub_24B0395BC(v47, type metadata accessor for PeopleProvider.Subscription);
          v37 = v59;
          v62 = v59;
          goto LABEL_32;
        }

        v4 = v62;
        sub_24AFF8258(v13, &qword_27EFC85C8);
        sub_24B039554(v47, &v58[v4 * v17], type metadata accessor for PeopleProvider.Subscription);
        v48 = v61;
        if (!v61)
        {
          break;
        }

        v49 = v32;
LABEL_53:
        v61 = (v48 - 1) & v48;
        sub_24B0394EC(*(v55 + 48) + (__clz(__rbit64(v48)) | (v49 << 6)) * v17, v13, type metadata accessor for PeopleProvider.Subscription);
        v45 = 0;
        v42 = v49;
LABEL_42:
        v62 = v4 + 1;
        v46 = v66;
        v57(v13, v45, 1, v66);
        v43 = v65;
        sub_24B008890(v13, v65, &qword_27EFC85C8);
        v32 = v42;
        if (v60(v43, 1, v46) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v53 <= (v32 + 1))
      {
        v50 = v32 + 1;
      }

      else
      {
        v50 = v53;
      }

      v42 = v50 - 1;
      while (1)
      {
        v49 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v49 >= v53)
        {
          v61 = 0;
          v45 = 1;
          goto LABEL_42;
        }

        v48 = *(v54 + 8 * v49);
        ++v32;
        if (v48)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_55:
      v33 = v66;
      v57 = *(v2 + 56);
      v57(v13, 1, 1, v66);
      v61 = 0;
    }

LABEL_29:
    sub_24AFF8258(v13, &qword_27EFC85C8);
    sub_24B0363BC();
    sub_24AFF8258(v34, &qword_27EFC85C8);
    goto LABEL_14;
  }

LABEL_20:
  v30 = (v52 + 64) >> 6;
  if (v30 <= v27 + 1)
  {
    v31 = v27 + 1;
  }

  else
  {
    v31 = (v52 + 64) >> 6;
  }

  v32 = v31 - 1;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v30)
    {
      goto LABEL_55;
    }

    v28 = *(v24 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

uint64_t sub_24B03164C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_24B2D5DA4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_24B2D5DA4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_24B0340E8(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_24B035FC4(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_24B03173C(void *a1)
{
  v66 = type metadata accessor for ItemsLocationsProvider.Subscription(0);
  v4 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v63 = &v51 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  v14 = a1[2];
  v15 = *v1;
  v16 = *(*v1 + 16);
  v17 = v16 + v14;
  if (__OFADD__(v16, v14))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v8;
  if (!isUniquelyReferenced_nonNull_native || (v19 = v15[3] >> 1, v19 < v17))
  {
    if (v16 <= v17)
    {
      v20 = v16 + v14;
    }

    else
    {
      v20 = v16;
    }

    v15 = sub_24B006C2C(isUniquelyReferenced_nonNull_native, v20, 1, v15);
    v19 = v15[3] >> 1;
  }

  v21 = v15[2];
  v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v22 = v19 - v21;
  sub_24B036178(&v67, v15 + v16 + v17 * v21, v19 - v21, a1, type metadata accessor for ItemsLocationsProvider.Subscription, type metadata accessor for ItemsLocationsProvider.Subscription, type metadata accessor for ItemsLocationsProvider.Subscription);
  if (v23 < v14)
  {
    goto LABEL_16;
  }

  if (v23)
  {
    v25 = v15[2];
    v26 = __OFADD__(v25, v23);
    v27 = v25 + v23;
    if (v26)
    {
      __break(1u);
      goto LABEL_20;
    }

    v15[2] = v27;
  }

  if (v23 != v22)
  {
    sub_24B0363BC();
LABEL_14:
    *v1 = v15;
    return;
  }

LABEL_17:
  v62 = v15[2];
  v24 = v68;
  v54 = v68;
  v55 = v67;
  v27 = v70;
  v52 = v69;
  v28 = v71;
  if (v71)
  {
    v29 = v70;
LABEL_27:
    v61 = (v28 - 1) & v28;
    sub_24B0394EC(*(v55 + 48) + (__clz(__rbit64(v28)) | (v29 << 6)) * v17, v13, type metadata accessor for ItemsLocationsProvider.Subscription);
    v33 = v66;
    v57 = *(v2 + 56);
    v57(v13, 0, 1, v66);
    v32 = v29;
    while (1)
    {
      v34 = v63;
      sub_24B008890(v13, v63, &qword_27EFC85D0);
      v35 = *(v2 + 48);
      v2 += 48;
      v60 = v35;
      if (v35(v34, 1, v33) == 1)
      {
        break;
      }

      v53 = (v52 + 64) >> 6;
      v56 = v4 + 56;
      v36 = v62;
      while (1)
      {
        sub_24AFF8258(v34, &qword_27EFC85D0);
        v39 = v15[3];
        v40 = v39 >> 1;
        v62 = v36;
        if ((v39 >> 1) < v36 + 1)
        {
          v15 = sub_24B006C2C(v39 > 1, v36 + 1, 1, v15);
          v40 = v15[3] >> 1;
        }

        v41 = v65;
        sub_24B008890(v13, v65, &qword_27EFC85D0);
        if (v60(v41, 1, v66) != 1)
        {
          break;
        }

        v42 = v32;
        v43 = v65;
LABEL_37:
        sub_24AFF8258(v43, &qword_27EFC85D0);
        v37 = v62;
        v32 = v42;
LABEL_32:
        v15[2] = v37;
        v34 = v63;
        sub_24B008890(v13, v63, &qword_27EFC85D0);
        v38 = v60(v34, 1, v66);
        v36 = v62;
        if (v38 == 1)
        {
          goto LABEL_29;
        }
      }

      v58 = v15 + v16;
      v44 = v62;
      if (v62 <= v40)
      {
        v44 = v40;
      }

      v59 = v44;
      v43 = v65;
      while (1)
      {
        v47 = v64;
        sub_24B039554(v43, v64, type metadata accessor for ItemsLocationsProvider.Subscription);
        if (v62 == v59)
        {
          sub_24B0395BC(v47, type metadata accessor for ItemsLocationsProvider.Subscription);
          v37 = v59;
          v62 = v59;
          goto LABEL_32;
        }

        v4 = v62;
        sub_24AFF8258(v13, &qword_27EFC85D0);
        sub_24B039554(v47, &v58[v4 * v17], type metadata accessor for ItemsLocationsProvider.Subscription);
        v48 = v61;
        if (!v61)
        {
          break;
        }

        v49 = v32;
LABEL_53:
        v61 = (v48 - 1) & v48;
        sub_24B0394EC(*(v55 + 48) + (__clz(__rbit64(v48)) | (v49 << 6)) * v17, v13, type metadata accessor for ItemsLocationsProvider.Subscription);
        v45 = 0;
        v42 = v49;
LABEL_42:
        v62 = v4 + 1;
        v46 = v66;
        v57(v13, v45, 1, v66);
        v43 = v65;
        sub_24B008890(v13, v65, &qword_27EFC85D0);
        v32 = v42;
        if (v60(v43, 1, v46) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v53 <= (v32 + 1))
      {
        v50 = v32 + 1;
      }

      else
      {
        v50 = v53;
      }

      v42 = v50 - 1;
      while (1)
      {
        v49 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v49 >= v53)
        {
          v61 = 0;
          v45 = 1;
          goto LABEL_42;
        }

        v48 = *(v54 + 8 * v49);
        ++v32;
        if (v48)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_55:
      v33 = v66;
      v57 = *(v2 + 56);
      v57(v13, 1, 1, v66);
      v61 = 0;
    }

LABEL_29:
    sub_24AFF8258(v13, &qword_27EFC85D0);
    sub_24B0363BC();
    sub_24AFF8258(v34, &qword_27EFC85D0);
    goto LABEL_14;
  }

LABEL_20:
  v30 = (v52 + 64) >> 6;
  if (v30 <= v27 + 1)
  {
    v31 = v27 + 1;
  }

  else
  {
    v31 = (v52 + 64) >> 6;
  }

  v32 = v31 - 1;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v30)
    {
      goto LABEL_55;
    }

    v28 = *(v24 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

void sub_24B031E3C(void *a1)
{
  v66 = type metadata accessor for ItemsProvider.Subscription(0);
  v4 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v63 = &v51 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  v14 = a1[2];
  v15 = *v1;
  v16 = *(*v1 + 16);
  v17 = v16 + v14;
  if (__OFADD__(v16, v14))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v8;
  if (!isUniquelyReferenced_nonNull_native || (v19 = v15[3] >> 1, v19 < v17))
  {
    if (v16 <= v17)
    {
      v20 = v16 + v14;
    }

    else
    {
      v20 = v16;
    }

    v15 = sub_24B006C54(isUniquelyReferenced_nonNull_native, v20, 1, v15);
    v19 = v15[3] >> 1;
  }

  v21 = v15[2];
  v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v22 = v19 - v21;
  sub_24B036178(&v67, v15 + v16 + v17 * v21, v19 - v21, a1, type metadata accessor for ItemsProvider.Subscription, type metadata accessor for ItemsProvider.Subscription, type metadata accessor for ItemsProvider.Subscription);
  if (v23 < v14)
  {
    goto LABEL_16;
  }

  if (v23)
  {
    v25 = v15[2];
    v26 = __OFADD__(v25, v23);
    v27 = v25 + v23;
    if (v26)
    {
      __break(1u);
      goto LABEL_20;
    }

    v15[2] = v27;
  }

  if (v23 != v22)
  {
    sub_24B0363BC();
LABEL_14:
    *v1 = v15;
    return;
  }

LABEL_17:
  v62 = v15[2];
  v24 = v68;
  v54 = v68;
  v55 = v67;
  v27 = v70;
  v52 = v69;
  v28 = v71;
  if (v71)
  {
    v29 = v70;
LABEL_27:
    v61 = (v28 - 1) & v28;
    sub_24B0394EC(*(v55 + 48) + (__clz(__rbit64(v28)) | (v29 << 6)) * v17, v13, type metadata accessor for ItemsProvider.Subscription);
    v33 = v66;
    v57 = *(v2 + 56);
    v57(v13, 0, 1, v66);
    v32 = v29;
    while (1)
    {
      v34 = v63;
      sub_24B008890(v13, v63, &qword_27EFC85E0);
      v35 = *(v2 + 48);
      v2 += 48;
      v60 = v35;
      if (v35(v34, 1, v33) == 1)
      {
        break;
      }

      v53 = (v52 + 64) >> 6;
      v56 = v4 + 56;
      v36 = v62;
      while (1)
      {
        sub_24AFF8258(v34, &qword_27EFC85E0);
        v39 = v15[3];
        v40 = v39 >> 1;
        v62 = v36;
        if ((v39 >> 1) < v36 + 1)
        {
          v15 = sub_24B006C54(v39 > 1, v36 + 1, 1, v15);
          v40 = v15[3] >> 1;
        }

        v41 = v65;
        sub_24B008890(v13, v65, &qword_27EFC85E0);
        if (v60(v41, 1, v66) != 1)
        {
          break;
        }

        v42 = v32;
        v43 = v65;
LABEL_37:
        sub_24AFF8258(v43, &qword_27EFC85E0);
        v37 = v62;
        v32 = v42;
LABEL_32:
        v15[2] = v37;
        v34 = v63;
        sub_24B008890(v13, v63, &qword_27EFC85E0);
        v38 = v60(v34, 1, v66);
        v36 = v62;
        if (v38 == 1)
        {
          goto LABEL_29;
        }
      }

      v58 = v15 + v16;
      v44 = v62;
      if (v62 <= v40)
      {
        v44 = v40;
      }

      v59 = v44;
      v43 = v65;
      while (1)
      {
        v47 = v64;
        sub_24B039554(v43, v64, type metadata accessor for ItemsProvider.Subscription);
        if (v62 == v59)
        {
          sub_24B0395BC(v47, type metadata accessor for ItemsProvider.Subscription);
          v37 = v59;
          v62 = v59;
          goto LABEL_32;
        }

        v4 = v62;
        sub_24AFF8258(v13, &qword_27EFC85E0);
        sub_24B039554(v47, &v58[v4 * v17], type metadata accessor for ItemsProvider.Subscription);
        v48 = v61;
        if (!v61)
        {
          break;
        }

        v49 = v32;
LABEL_53:
        v61 = (v48 - 1) & v48;
        sub_24B0394EC(*(v55 + 48) + (__clz(__rbit64(v48)) | (v49 << 6)) * v17, v13, type metadata accessor for ItemsProvider.Subscription);
        v45 = 0;
        v42 = v49;
LABEL_42:
        v62 = v4 + 1;
        v46 = v66;
        v57(v13, v45, 1, v66);
        v43 = v65;
        sub_24B008890(v13, v65, &qword_27EFC85E0);
        v32 = v42;
        if (v60(v43, 1, v46) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v53 <= (v32 + 1))
      {
        v50 = v32 + 1;
      }

      else
      {
        v50 = v53;
      }

      v42 = v50 - 1;
      while (1)
      {
        v49 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v49 >= v53)
        {
          v61 = 0;
          v45 = 1;
          goto LABEL_42;
        }

        v48 = *(v54 + 8 * v49);
        ++v32;
        if (v48)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_55:
      v33 = v66;
      v57 = *(v2 + 56);
      v57(v13, 1, 1, v66);
      v61 = 0;
    }

LABEL_29:
    sub_24AFF8258(v13, &qword_27EFC85E0);
    sub_24B0363BC();
    sub_24AFF8258(v34, &qword_27EFC85E0);
    goto LABEL_14;
  }

LABEL_20:
  v30 = (v52 + 64) >> 6;
  if (v30 <= v27 + 1)
  {
    v31 = v27 + 1;
  }

  else
  {
    v31 = (v52 + 64) >> 6;
  }

  v32 = v31 - 1;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v30)
    {
      goto LABEL_55;
    }

    v28 = *(v24 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

void sub_24B03253C(uint64_t a1)
{
  v78 = sub_24B2D1DA4();
  v4 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v79 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85D8);
  MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v60 - v8;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v60 - v13;
  v15 = *(a1 + 16);
  v16 = *v1;
  v17 = *(*v1 + 2);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v77 = v11;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76 = v9;
  if (!isUniquelyReferenced_nonNull_native || (v20 = *(v16 + 3) >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_24B006C7C(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = *(v16 + 3) >> 1;
  }

  v22 = *(v16 + 2);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  v24 = sub_24B0363F4(&v80, &v16[v18 + v17 * v22], v20 - v22, a1, MEMORY[0x277D08E20]);
  if (v24 < v15)
  {
    goto LABEL_16;
  }

  if (v24)
  {
    v27 = *(v16 + 2);
    v28 = __OFADD__(v27, v24);
    v29 = v27 + v24;
    if (v28)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v16 + 2) = v29;
  }

  if (v24 != v23)
  {
    sub_24B0363BC();
LABEL_14:
    *v1 = v16;
    return;
  }

LABEL_17:
  v75 = *(v16 + 2);
  v26 = v81;
  v66 = v80;
  v29 = v83;
  v25 = &v85;
  v61 = v82;
  v30 = v84;
  v64 = v81;
  if (v84)
  {
    v31 = v83;
LABEL_27:
    v73 = (v30 - 1) & v30;
    v35 = v78;
    (*(v2 + 16))(v14, *(v66 + 48) + (__clz(__rbit64(v30)) | (v31 << 6)) * v17, v78, v12);
    v68 = *(v2 + 56);
    v68(v14, 0, 1, v35);
    v34 = v31;
    while (1)
    {
      v36 = v76;
      sub_24B008890(v14, v76, &qword_27EFC85D8);
      v37 = *(v2 + 48);
      v2 += 48;
      v72 = v37;
      if (v37(v36, 1, v35) == 1)
      {
        break;
      }

      v39 = (v4 + 32);
      v63 = (v61 + 64) >> 6;
      v67 = v4 + 56;
      v65 = (v4 + 16);
      v62 = (v4 + 8);
      v38 = v76;
      v74 = v39;
      while (1)
      {
        sub_24AFF8258(v38, &qword_27EFC85D8);
        v40 = *(v16 + 3);
        v41 = v40 >> 1;
        if ((v40 >> 1) < v75 + 1)
        {
          v16 = sub_24B006C7C(v40 > 1, v75 + 1, 1, v16);
          v41 = *(v16 + 3) >> 1;
        }

        v42 = v77;
        sub_24B008890(v14, v77, &qword_27EFC85D8);
        if (v72(v42, 1, v78) != 1)
        {
          break;
        }

        v43 = v34;
        v44 = v77;
        v4 = v75;
LABEL_38:
        v34 = v43;
        sub_24AFF8258(v44, &qword_27EFC85D8);
        v75 = v4;
LABEL_33:
        *(v16 + 2) = v4;
        v38 = v76;
        sub_24B008890(v14, v76, &qword_27EFC85D8);
        if (v72(v38, 1, v78) == 1)
        {
          goto LABEL_30;
        }
      }

      v70 = &v16[v18];
      v4 = v75;
      v45 = *v74;
      if (v75 <= v41)
      {
        v46 = v41;
      }

      else
      {
        v46 = v75;
      }

      v71 = v46;
      v44 = v77;
      v47 = v78;
      v48 = v79;
      v69 = v45;
      while (1)
      {
        v52 = v48;
        v53 = v44;
        v54 = v47;
        v55 = v45;
        v45(v52, v53, v47);
        if (v4 == v71)
        {
          (*v62)(v79, v54);
          v4 = v71;
          v75 = v71;
          goto LABEL_33;
        }

        sub_24AFF8258(v14, &qword_27EFC85D8);
        v75 = v4;
        v55(&v70[v4 * v17], v79, v54);
        v56 = v73;
        if (!v73)
        {
          break;
        }

        v57 = v34;
LABEL_55:
        v73 = (v56 - 1) & v56;
        v50 = v78;
        (*v65)(v14, *(v66 + 48) + (__clz(__rbit64(v56)) | (v57 << 6)) * v17, v78);
        v49 = 0;
        v59 = v57;
LABEL_44:
        v4 = v75 + 1;
        v68(v14, v49, 1, v50);
        v44 = v77;
        sub_24B008890(v14, v77, &qword_27EFC85D8);
        v51 = v72(v44, 1, v50);
        v47 = v50;
        v34 = v59;
        v43 = v59;
        v48 = v79;
        v45 = v69;
        if (v51 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v63 <= v34 + 1)
      {
        v58 = v34 + 1;
      }

      else
      {
        v58 = v63;
      }

      v59 = v58 - 1;
      while (1)
      {
        v57 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v57 >= v63)
        {
          v73 = 0;
          v49 = 1;
          v50 = v78;
          goto LABEL_44;
        }

        v56 = *(v64 + 8 * v57);
        ++v34;
        if (v56)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v35 = v78;
      v68 = *(v2 + 56);
      v68(v14, 1, 1, v78);
      v73 = 0;
    }

    v38 = v76;
LABEL_30:
    sub_24AFF8258(v14, &qword_27EFC85D8);
    sub_24B0363BC();
    sub_24AFF8258(v38, &qword_27EFC85D8);
    goto LABEL_14;
  }

LABEL_20:
  v32 = (*(v25 - 32) + 64) >> 6;
  if (v32 <= v29 + 1)
  {
    v33 = v29 + 1;
  }

  else
  {
    v33 = v32;
  }

  v34 = v33 - 1;
  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v32)
    {
      goto LABEL_57;
    }

    v30 = *(v26 + 8 * v31);
    ++v29;
    if (v30)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

void sub_24B032C9C(void *a1)
{
  v66 = type metadata accessor for SettingsContactsProvider.Subscription();
  v4 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v63 = &v51 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  v14 = a1[2];
  v15 = *v1;
  v16 = *(*v1 + 16);
  v17 = v16 + v14;
  if (__OFADD__(v16, v14))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v8;
  if (!isUniquelyReferenced_nonNull_native || (v19 = v15[3] >> 1, v19 < v17))
  {
    if (v16 <= v17)
    {
      v20 = v16 + v14;
    }

    else
    {
      v20 = v16;
    }

    v15 = sub_24B006EAC(isUniquelyReferenced_nonNull_native, v20, 1, v15);
    v19 = v15[3] >> 1;
  }

  v21 = v15[2];
  v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v22 = v19 - v21;
  sub_24B036178(&v67, v15 + v16 + v17 * v21, v19 - v21, a1, type metadata accessor for SettingsContactsProvider.Subscription, type metadata accessor for SettingsContactsProvider.Subscription, type metadata accessor for SettingsContactsProvider.Subscription);
  if (v23 < v14)
  {
    goto LABEL_16;
  }

  if (v23)
  {
    v25 = v15[2];
    v26 = __OFADD__(v25, v23);
    v27 = v25 + v23;
    if (v26)
    {
      __break(1u);
      goto LABEL_20;
    }

    v15[2] = v27;
  }

  if (v23 != v22)
  {
    sub_24B0363BC();
LABEL_14:
    *v1 = v15;
    return;
  }

LABEL_17:
  v62 = v15[2];
  v24 = v68;
  v54 = v68;
  v55 = v67;
  v27 = v70;
  v52 = v69;
  v28 = v71;
  if (v71)
  {
    v29 = v70;
LABEL_27:
    v61 = (v28 - 1) & v28;
    sub_24B0394EC(*(v55 + 48) + (__clz(__rbit64(v28)) | (v29 << 6)) * v17, v13, type metadata accessor for SettingsContactsProvider.Subscription);
    v33 = v66;
    v57 = *(v2 + 56);
    v57(v13, 0, 1, v66);
    v32 = v29;
    while (1)
    {
      v34 = v63;
      sub_24B008890(v13, v63, &qword_27EFC85B8);
      v35 = *(v2 + 48);
      v2 += 48;
      v60 = v35;
      if (v35(v34, 1, v33) == 1)
      {
        break;
      }

      v53 = (v52 + 64) >> 6;
      v56 = v4 + 56;
      v36 = v62;
      while (1)
      {
        sub_24AFF8258(v34, &qword_27EFC85B8);
        v39 = v15[3];
        v40 = v39 >> 1;
        v62 = v36;
        if ((v39 >> 1) < v36 + 1)
        {
          v15 = sub_24B006EAC(v39 > 1, v36 + 1, 1, v15);
          v40 = v15[3] >> 1;
        }

        v41 = v65;
        sub_24B008890(v13, v65, &qword_27EFC85B8);
        if (v60(v41, 1, v66) != 1)
        {
          break;
        }

        v42 = v32;
        v43 = v65;
LABEL_37:
        sub_24AFF8258(v43, &qword_27EFC85B8);
        v37 = v62;
        v32 = v42;
LABEL_32:
        v15[2] = v37;
        v34 = v63;
        sub_24B008890(v13, v63, &qword_27EFC85B8);
        v38 = v60(v34, 1, v66);
        v36 = v62;
        if (v38 == 1)
        {
          goto LABEL_29;
        }
      }

      v58 = v15 + v16;
      v44 = v62;
      if (v62 <= v40)
      {
        v44 = v40;
      }

      v59 = v44;
      v43 = v65;
      while (1)
      {
        v47 = v64;
        sub_24B039554(v43, v64, type metadata accessor for SettingsContactsProvider.Subscription);
        if (v62 == v59)
        {
          sub_24B0395BC(v47, type metadata accessor for SettingsContactsProvider.Subscription);
          v37 = v59;
          v62 = v59;
          goto LABEL_32;
        }

        v4 = v62;
        sub_24AFF8258(v13, &qword_27EFC85B8);
        sub_24B039554(v47, &v58[v4 * v17], type metadata accessor for SettingsContactsProvider.Subscription);
        v48 = v61;
        if (!v61)
        {
          break;
        }

        v49 = v32;
LABEL_53:
        v61 = (v48 - 1) & v48;
        sub_24B0394EC(*(v55 + 48) + (__clz(__rbit64(v48)) | (v49 << 6)) * v17, v13, type metadata accessor for SettingsContactsProvider.Subscription);
        v45 = 0;
        v42 = v49;
LABEL_42:
        v62 = v4 + 1;
        v46 = v66;
        v57(v13, v45, 1, v66);
        v43 = v65;
        sub_24B008890(v13, v65, &qword_27EFC85B8);
        v32 = v42;
        if (v60(v43, 1, v46) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v53 <= (v32 + 1))
      {
        v50 = v32 + 1;
      }

      else
      {
        v50 = v53;
      }

      v42 = v50 - 1;
      while (1)
      {
        v49 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v49 >= v53)
        {
          v61 = 0;
          v45 = 1;
          goto LABEL_42;
        }

        v48 = *(v54 + 8 * v49);
        ++v32;
        if (v48)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_55:
      v33 = v66;
      v57 = *(v2 + 56);
      v57(v13, 1, 1, v66);
      v61 = 0;
    }

LABEL_29:
    sub_24AFF8258(v13, &qword_27EFC85B8);
    sub_24B0363BC();
    sub_24AFF8258(v34, &qword_27EFC85B8);
    goto LABEL_14;
  }

LABEL_20:
  v30 = (v52 + 64) >> 6;
  if (v30 <= v27 + 1)
  {
    v31 = v27 + 1;
  }

  else
  {
    v31 = (v52 + 64) >> 6;
  }

  v32 = v31 - 1;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v30)
    {
      goto LABEL_55;
    }

    v28 = *(v24 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

uint64_t sub_24B0333C8(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_24B03350C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 3) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = sub_24B006ED4(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    v8 = *(v3 + 3) >> 1;
  }

  v10 = *(v3 + 2);
  v11 = v8 - v10;
  result = sub_24B03669C(v38, &v3[v10 + 32], v8 - v10, v6);
  if (result < v2)
  {
    goto LABEL_15;
  }

  if (result)
  {
    v16 = *(v3 + 2);
    v17 = __OFADD__(v16, result);
    v18 = v16 + result;
    if (v17)
    {
      __break(1u);
LABEL_19:
      while (1)
      {
        v20 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_39;
        }

        if (v20 >= ((v14 + 64) >> 6))
        {
          goto LABEL_13;
        }

        v19 = *(v13 + 8 * v20);
        ++v15;
        if (v19)
        {
          goto LABEL_22;
        }
      }
    }

    *(v3 + 2) = v18;
  }

  if (result != v11)
  {
LABEL_13:
    result = sub_24B0363BC();
    *v1 = v3;
    return result;
  }

LABEL_16:
  v6 = *(v3 + 2);
  result = v38[0];
  v13 = v38[1];
  v14 = v38[2];
  v15 = v39;
  v19 = v40;
  if (!v40)
  {
    goto LABEL_19;
  }

  v20 = v39;
LABEL_22:
  v21 = (v19 - 1) & v19;
  v22 = *(*(result + 48) + (__clz(__rbit64(v19)) | (v20 << 6)));
  v23 = (v14 + 64) >> 6;
  v24 = v20;
  while (1)
  {
    v25 = *(v3 + 3);
    v26 = v25 >> 1;
    if ((v25 >> 1) < v6 + 1)
    {
      v36 = v22;
      v37 = result;
      v35 = v13;
      v30 = v14;
      v31 = v24;
      v32 = v3;
      v33 = v21;
      v34 = sub_24B006ED4((v25 > 1), v6 + 1, 1, v32);
      v22 = v36;
      v21 = v33;
      v24 = v31;
      v14 = v30;
      v13 = v35;
      v3 = v34;
      result = v37;
      v26 = *(v3 + 3) >> 1;
    }

    if (v6 < v26)
    {
      break;
    }

LABEL_23:
    *(v3 + 2) = v6;
    if (v22 == 2)
    {
      goto LABEL_13;
    }
  }

  while (1)
  {
    v3[v6++ + 32] = v22 & 1;
    if (!v21)
    {
      break;
    }

    v27 = v24;
LABEL_34:
    v29 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v22 = *(*(result + 48) + (v29 | (v27 << 6)));
    if (v6 >= v26)
    {
      goto LABEL_23;
    }
  }

  v28 = v24;
  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v23)
    {
      *(v3 + 2) = v6;
      goto LABEL_13;
    }

    v21 = *(v13 + 8 * v27);
    ++v28;
    if (v21)
    {
      v24 = v27;
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

void sub_24B033790(void *a1)
{
  v66 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
  v4 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v63 = &v51 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  v14 = a1[2];
  v15 = *v1;
  v16 = *(*v1 + 16);
  v17 = v16 + v14;
  if (__OFADD__(v16, v14))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v8;
  if (!isUniquelyReferenced_nonNull_native || (v19 = v15[3] >> 1, v19 < v17))
  {
    if (v16 <= v17)
    {
      v20 = v16 + v14;
    }

    else
    {
      v20 = v16;
    }

    v15 = sub_24B006FC8(isUniquelyReferenced_nonNull_native, v20, 1, v15);
    v19 = v15[3] >> 1;
  }

  v21 = v15[2];
  v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v22 = v19 - v21;
  sub_24B036178(&v67, v15 + v16 + v17 * v21, v19 - v21, a1, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  if (v23 < v14)
  {
    goto LABEL_16;
  }

  if (v23)
  {
    v25 = v15[2];
    v26 = __OFADD__(v25, v23);
    v27 = v25 + v23;
    if (v26)
    {
      __break(1u);
      goto LABEL_20;
    }

    v15[2] = v27;
  }

  if (v23 != v22)
  {
    sub_24B0363BC();
LABEL_14:
    *v1 = v15;
    return;
  }

LABEL_17:
  v62 = v15[2];
  v24 = v68;
  v54 = v68;
  v55 = v67;
  v27 = v70;
  v52 = v69;
  v28 = v71;
  if (v71)
  {
    v29 = v70;
LABEL_27:
    v61 = (v28 - 1) & v28;
    sub_24B0394EC(*(v55 + 48) + (__clz(__rbit64(v28)) | (v29 << 6)) * v17, v13, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    v33 = v66;
    v57 = *(v2 + 56);
    v57(v13, 0, 1, v66);
    v32 = v29;
    while (1)
    {
      v34 = v63;
      sub_24B008890(v13, v63, &qword_27EFC85C0);
      v35 = *(v2 + 48);
      v2 += 48;
      v60 = v35;
      if (v35(v34, 1, v33) == 1)
      {
        break;
      }

      v53 = (v52 + 64) >> 6;
      v56 = v4 + 56;
      v36 = v62;
      while (1)
      {
        sub_24AFF8258(v34, &qword_27EFC85C0);
        v39 = v15[3];
        v40 = v39 >> 1;
        v62 = v36;
        if ((v39 >> 1) < v36 + 1)
        {
          v15 = sub_24B006FC8(v39 > 1, v36 + 1, 1, v15);
          v40 = v15[3] >> 1;
        }

        v41 = v65;
        sub_24B008890(v13, v65, &qword_27EFC85C0);
        if (v60(v41, 1, v66) != 1)
        {
          break;
        }

        v42 = v32;
        v43 = v65;
LABEL_37:
        sub_24AFF8258(v43, &qword_27EFC85C0);
        v37 = v62;
        v32 = v42;
LABEL_32:
        v15[2] = v37;
        v34 = v63;
        sub_24B008890(v13, v63, &qword_27EFC85C0);
        v38 = v60(v34, 1, v66);
        v36 = v62;
        if (v38 == 1)
        {
          goto LABEL_29;
        }
      }

      v58 = v15 + v16;
      v44 = v62;
      if (v62 <= v40)
      {
        v44 = v40;
      }

      v59 = v44;
      v43 = v65;
      while (1)
      {
        v47 = v64;
        sub_24B039554(v43, v64, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        if (v62 == v59)
        {
          sub_24B0395BC(v47, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
          v37 = v59;
          v62 = v59;
          goto LABEL_32;
        }

        v4 = v62;
        sub_24AFF8258(v13, &qword_27EFC85C0);
        sub_24B039554(v47, &v58[v4 * v17], type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        v48 = v61;
        if (!v61)
        {
          break;
        }

        v49 = v32;
LABEL_53:
        v61 = (v48 - 1) & v48;
        sub_24B0394EC(*(v55 + 48) + (__clz(__rbit64(v48)) | (v49 << 6)) * v17, v13, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        v45 = 0;
        v42 = v49;
LABEL_42:
        v62 = v4 + 1;
        v46 = v66;
        v57(v13, v45, 1, v66);
        v43 = v65;
        sub_24B008890(v13, v65, &qword_27EFC85C0);
        v32 = v42;
        if (v60(v43, 1, v46) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v53 <= (v32 + 1))
      {
        v50 = v32 + 1;
      }

      else
      {
        v50 = v53;
      }

      v42 = v50 - 1;
      while (1)
      {
        v49 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v49 >= v53)
        {
          v61 = 0;
          v45 = 1;
          goto LABEL_42;
        }

        v48 = *(v54 + 8 * v49);
        ++v32;
        if (v48)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_55:
      v33 = v66;
      v57 = *(v2 + 56);
      v57(v13, 1, 1, v66);
      v61 = 0;
    }

LABEL_29:
    sub_24AFF8258(v13, &qword_27EFC85C0);
    sub_24B0363BC();
    sub_24AFF8258(v34, &qword_27EFC85C0);
    goto LABEL_14;
  }

LABEL_20:
  v30 = (v52 + 64) >> 6;
  if (v30 <= v27 + 1)
  {
    v31 = v27 + 1;
  }

  else
  {
    v31 = (v52 + 64) >> 6;
  }

  v32 = v31 - 1;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v30)
    {
      goto LABEL_55;
    }

    v28 = *(v24 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

uint64_t sub_24B033EA8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a1 + 16);
  v5 = *v2;
  v6 = *(*v2 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = a2;
  v7 = a1;
  if (!swift_isUniquelyReferenced_nonNull_native() || (v8 = *(v5 + 24) >> 1, v8 < v6 + v4))
  {
    v5 = v3();
    v8 = *(v5 + 24) >> 1;
  }

  v9 = *(v5 + 16);
  v10 = v8 - v9;
  result = sub_24B036798(v33, v5 + v9 + 32, v8 - v9, v7);
  if (result < v4)
  {
    goto LABEL_12;
  }

  if (result)
  {
    v15 = *(v5 + 16);
    v16 = __OFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      __break(1u);
LABEL_16:
      while (1)
      {
        v19 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_34;
        }

        if (v19 >= ((v13 + 64) >> 6))
        {
          goto LABEL_10;
        }

        v18 = *(v12 + 8 * v19);
        ++v14;
        if (v18)
        {
          goto LABEL_19;
        }
      }
    }

    *(v5 + 16) = v17;
  }

  if (result != v10)
  {
LABEL_10:
    result = sub_24B0363BC();
    *v2 = v5;
    return result;
  }

LABEL_13:
  v7 = *(v5 + 16);
  result = v33[0];
  v12 = v33[1];
  v13 = v33[2];
  v14 = v34;
  v18 = v35;
  if (!v35)
  {
    goto LABEL_16;
  }

  v19 = v34;
LABEL_19:
  v20 = (v18 - 1) & v18;
  v21 = (v13 + 64) >> 6;
  v22 = *(v5 + 24);
LABEL_21:
  v23 = v22 >> 1;
  if ((v22 >> 1) < v7 + 1)
  {
    v31 = v21;
    v32 = result;
    v24 = v12;
    v25 = v13;
    v26 = v5;
    v27 = v20;
    v28 = (v3)(v22 > 1, v7 + 1, 1, v26);
    v20 = v27;
    v13 = v25;
    v12 = v24;
    v5 = v28;
    v21 = v31;
    result = v32;
    v22 = *(v5 + 24);
    v23 = v22 >> 1;
  }

  while (1)
  {
    if (v7 >= v23)
    {
      *(v5 + 16) = v7;
      goto LABEL_21;
    }

    ++v7;
    if (!v20)
    {
      break;
    }

LABEL_23:
    v20 &= v20 - 1;
  }

  v29 = v19;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v21)
    {
      *(v5 + 16) = v7;
      goto LABEL_10;
    }

    v20 = *(v12 + 8 * v30);
    ++v29;
    if (v20)
    {
      v19 = v30;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_24B0340E8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_24B2D5DA4();
LABEL_9:
  result = sub_24B2D5C84();
  *v1 = result;
  return result;
}

uint64_t sub_24B034188(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B0341D0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3 != 2)
  {
    return sub_24B0341E0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_24B0341E0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3 >= 2)
  {
  }

  return result;
}

void sub_24B034224(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3 >= 2)
  {

    v4 = a3;
  }
}

unint64_t *sub_24B03426C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_24B036C78(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_24B034308(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t, void *, uint64_t), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_24B03687C(result, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

void *sub_24B034398(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6, int a7)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v14 = sub_24B037248(v13, a2, a3, a4, a5, a6, a7);
    swift_bridgeObjectRelease_n();

    return v14;
  }

  return result;
}

void *sub_24B034454(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_24B0346A8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_24B0344E4(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_24B0346A8((v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_24B034454(v11, v6, a2, a1);

    MEMORY[0x24C23D530](v11, -1, -1);
  }

  return v9;
}

uint64_t sub_24B0346A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v134 = a2;
  v137 = a1;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC8650);
  v6 = MEMORY[0x28223BE20](v156);
  v8 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v129 - v9;
  v145 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  v11 = MEMORY[0x28223BE20](v145);
  v143 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v130 = &v129 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v141 = &v129 - v16;
  MEMORY[0x28223BE20](v15);
  v131 = &v129 - v17;
  v18 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa(0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v139 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v140 = &v129 - v22;
  MEMORY[0x28223BE20](v21);
  v133 = &v129 - v23;
  v24 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa(0);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v135 = &v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v136 = &v129 - v28;
  MEMORY[0x28223BE20](v27);
  v132 = &v129 - v29;
  v158 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v146 = *(v158 - 8);
  v30 = MEMORY[0x28223BE20](v158);
  v152 = &v129 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v129 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v129 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v147 = &v129 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v129 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v148 = &v129 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v47 = MEMORY[0x28223BE20](v46);
  v149 = &v129 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v157 = &v129 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v144 = &v129 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v153 = &v129 - v54;
  result = MEMORY[0x28223BE20](v53);
  v138 = &v129 - v58;
  v59 = *(a4 + 16) >= *(a3 + 16);
  v154 = a4;
  v155 = a3;
  v60 = &v159;
  if (v59)
  {
    goto LABEL_54;
  }

  v142 = 0;
  v38 = 0;
  v61 = *(a4 + 56);
  v135 = a4 + 56;
  v62 = 1 << *(a4 + 32);
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  else
  {
    v63 = -1;
  }

  v64 = v63 & v61;
  v65 = (v62 + 63) >> 6;
  v151 = a3 + 56;
  v34 = v148;
  v147 = v57;
  v139 = v65;
  while (2)
  {
    while (2)
    {
      if (v64)
      {
        v66 = __clz(__rbit64(v64));
        v143 = (v64 - 1) & v64;
      }

      else
      {
        v67 = v38;
        do
        {
          v38 = v67 + 1;
          if (__OFADD__(v67, 1))
          {
            __break(1u);
            goto LABEL_108;
          }

          if (v38 >= v65)
          {
LABEL_106:

            return sub_24B2A0C50(v137, v134, v142, a3);
          }

          v68 = *(v135 + 8 * v38);
          ++v67;
        }

        while (!v68);
        v66 = __clz(__rbit64(v68));
        v143 = (v68 - 1) & v68;
      }

      v69 = *(a4 + 48);
      v152 = *(v146 + 72);
      v70 = v138;
      sub_24B0394EC(v69 + v152 * (v66 | (v38 << 6)), v138, _s14descr285E46659O16SubscriptionDataOMa);
      v71 = v70;
      v72 = v153;
      sub_24B039554(v71, v153, _s14descr285E46659O16SubscriptionDataOMa);
      sub_24B2D60E4();
      sub_24B0394EC(v72, v144, _s14descr285E46659O16SubscriptionDataOMa);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v74 = v133;
          sub_24B039554(v144, v133, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
          MEMORY[0x24C23C8D0](3);
          sub_24B2D1704();
          sub_24B034188(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
          sub_24B2D5254();
          v75 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
        }

        else
        {
          v74 = v132;
          sub_24B039554(v144, v132, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
          MEMORY[0x24C23C8D0](2);
          sub_24B2D1704();
          sub_24B034188(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
          sub_24B2D5254();
          v75 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
        }
      }

      else
      {
        if (EnumCaseMultiPayload != 2)
        {
          if (EnumCaseMultiPayload == 3)
          {
            MEMORY[0x24C23C8D0](0);
          }

          else
          {
            MEMORY[0x24C23C8D0](1);
          }

          goto LABEL_24;
        }

        v74 = v131;
        sub_24B039554(v144, v131, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        MEMORY[0x24C23C8D0](4);
        sub_24B2D1704();
        sub_24B034188(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
        sub_24B2D5254();
        sub_24B2D6104();
        v75 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa;
      }

      sub_24B0395BC(v74, v75);
LABEL_24:
      v76 = sub_24B2D6124();
      v77 = -1 << *(a3 + 32);
      v78 = v76 & ~v77;
      v43 = v78 >> 6;
      v79 = 1 << v78;
      if (((1 << v78) & *(v151 + 8 * (v78 >> 6))) == 0)
      {
LABEL_6:
        result = sub_24B0395BC(v153, _s14descr285E46659O16SubscriptionDataOMa);
        a4 = v154;
        a3 = v155;
        v65 = v139;
        v64 = v143;
        continue;
      }

      break;
    }

    v150 = ~v77;
    while (1)
    {
      v80 = v157;
      sub_24B0394EC(*(v155 + 48) + v78 * v152, v157, _s14descr285E46659O16SubscriptionDataOMa);
      v8 = *(v156 + 48);
      sub_24B0394EC(v80, v10, _s14descr285E46659O16SubscriptionDataOMa);
      sub_24B0394EC(v153, &v10[v8], _s14descr285E46659O16SubscriptionDataOMa);
      v81 = swift_getEnumCaseMultiPayload();
      if (v81 > 1)
      {
        break;
      }

      if (v81)
      {
        v88 = v147;
        sub_24B0394EC(v10, v147, _s14descr285E46659O16SubscriptionDataOMa);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v89 = v140;
          sub_24B039554(&v10[v8], v140, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
          sub_24B2D1704();
          sub_24B034188(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
          v90 = sub_24B2D52A4();
          v91 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
LABEL_46:
          v8 = v91;
          v92 = v89;
          v34 = v148;
          sub_24B0395BC(v92, v91);
          sub_24B0395BC(v157, _s14descr285E46659O16SubscriptionDataOMa);
          sub_24B0395BC(v88, v8);
          if (v90)
          {
            goto LABEL_51;
          }

LABEL_50:
          sub_24B0395BC(v10, _s14descr285E46659O16SubscriptionDataOMa);
          goto LABEL_28;
        }

        sub_24B0395BC(v157, _s14descr285E46659O16SubscriptionDataOMa);
        sub_24B0395BC(v88, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
      }

      else
      {
        sub_24B0394EC(v10, v149, _s14descr285E46659O16SubscriptionDataOMa);
        if (!swift_getEnumCaseMultiPayload())
        {
          v89 = v136;
          sub_24B039554(&v10[v8], v136, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
          sub_24B2D1704();
          sub_24B034188(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
          v88 = v149;
          v90 = sub_24B2D52A4();
          v91 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
          goto LABEL_46;
        }

        sub_24B0395BC(v157, _s14descr285E46659O16SubscriptionDataOMa);
        sub_24B0395BC(v149, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
      }

LABEL_27:
      sub_24AFF8258(v10, &unk_27EFC8650);
LABEL_28:
      v78 = (v78 + 1) & v150;
      v43 = v78 >> 6;
      v79 = 1 << v78;
      if ((*(v151 + 8 * (v78 >> 6)) & (1 << v78)) == 0)
      {
        goto LABEL_6;
      }
    }

    if (v81 != 2)
    {
      if (v81 == 3)
      {
        sub_24B0395BC(v157, _s14descr285E46659O16SubscriptionDataOMa);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          goto LABEL_51;
        }
      }

      else
      {
        sub_24B0395BC(v157, _s14descr285E46659O16SubscriptionDataOMa);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_27;
    }

    sub_24B0394EC(v10, v34, _s14descr285E46659O16SubscriptionDataOMa);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_24B0395BC(v157, _s14descr285E46659O16SubscriptionDataOMa);
      sub_24B0395BC(v34, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      goto LABEL_27;
    }

    v82 = &v10[v8];
    v83 = v141;
    sub_24B039554(v82, v141, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    sub_24B2D1704();
    sub_24B034188(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
    v84 = sub_24B2D52A4();
    sub_24B0395BC(v157, _s14descr285E46659O16SubscriptionDataOMa);
    if ((v84 & 1) == 0)
    {
      sub_24B0395BC(v83, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      goto LABEL_49;
    }

    v85 = *(v145 + 20);
    v86 = v34[v85];
    v87 = v83;
    v8 = *(v83 + v85);
    sub_24B0395BC(v87, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    if (v86 != v8)
    {
LABEL_49:
      sub_24B0395BC(v34, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      goto LABEL_50;
    }

    sub_24B0395BC(v34, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
LABEL_51:
    sub_24B0395BC(v10, _s14descr285E46659O16SubscriptionDataOMa);
    result = sub_24B0395BC(v153, _s14descr285E46659O16SubscriptionDataOMa);
    v137[v43] |= v79;
    v93 = __OFADD__(v142++, 1);
    a4 = v154;
    a3 = v155;
    v65 = v139;
    v60 = &v160;
    v64 = v143;
    if (!v93)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_54:
  *(v60 - 32) = 0;
  v94 = 0;
  v95 = *(a3 + 56);
  v140 = a3 + 56;
  v96 = 1 << *(a3 + 32);
  if (v96 < 64)
  {
    v97 = ~(-1 << v96);
  }

  else
  {
    v97 = -1;
  }

  v98 = v97 & v95;
  v99 = (v96 + 63) >> 6;
  v153 = a4 + 56;
  v149 = v56;
  v150 = v34;
  v151 = v43;
  v141 = v99;
LABEL_59:
  while (2)
  {
    if (v98)
    {
      v100 = __clz(__rbit64(v98));
      v148 = ((v98 - 1) & v98);
LABEL_66:
      v103 = v100 | (v94 << 6);
      v104 = *(a3 + 48);
      v105 = *(v146 + 72);
      v144 = v103;
      v157 = v105;
      sub_24B0394EC(v104 + v105 * v103, v43, _s14descr285E46659O16SubscriptionDataOMa);
      sub_24B2D60E4();
      sub_24B0394EC(v43, v147, _s14descr285E46659O16SubscriptionDataOMa);
      v106 = swift_getEnumCaseMultiPayload();
      if (v106 <= 1)
      {
        if (v106)
        {
          v107 = v133;
          sub_24B039554(v147, v133, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
          MEMORY[0x24C23C8D0](3);
          sub_24B2D1704();
          sub_24B034188(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
          sub_24B2D5254();
          v108 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
        }

        else
        {
          v107 = v132;
          sub_24B039554(v147, v132, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
          MEMORY[0x24C23C8D0](2);
          sub_24B2D1704();
          sub_24B034188(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
          sub_24B2D5254();
          v108 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
        }
      }

      else
      {
        if (v106 != 2)
        {
          if (v106 == 3)
          {
            MEMORY[0x24C23C8D0](0);
          }

          else
          {
            MEMORY[0x24C23C8D0](1);
          }

LABEL_76:
          v109 = sub_24B2D6124();
          v110 = -1 << *(a4 + 32);
          v111 = v109 & ~v110;
          if (((*(v153 + ((v111 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v111) & 1) == 0)
          {
LABEL_58:
            result = sub_24B0395BC(v43, _s14descr285E46659O16SubscriptionDataOMa);
            a4 = v154;
            a3 = v155;
            v99 = v141;
            v98 = v148;
            continue;
          }

          v112 = ~v110;
          while (2)
          {
            sub_24B0394EC(*(v154 + 48) + v111 * v157, v38, _s14descr285E46659O16SubscriptionDataOMa);
            v113 = *(v156 + 48);
            sub_24B0394EC(v38, v8, _s14descr285E46659O16SubscriptionDataOMa);
            sub_24B0394EC(v43, v8 + v113, _s14descr285E46659O16SubscriptionDataOMa);
            v114 = swift_getEnumCaseMultiPayload();
            if (v114 <= 1)
            {
              if (v114)
              {
                sub_24B0394EC(v8, v34, _s14descr285E46659O16SubscriptionDataOMa);
                if (swift_getEnumCaseMultiPayload() != 1)
                {
                  sub_24B0395BC(v38, _s14descr285E46659O16SubscriptionDataOMa);
                  sub_24B0395BC(v34, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
                  goto LABEL_79;
                }

                v123 = v139;
                sub_24B039554(v8 + v113, v139, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
                sub_24B2D1704();
                sub_24B034188(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
                v124 = sub_24B2D52A4();
                v125 = v123;
                v34 = v150;
                v43 = v151;
                sub_24B0395BC(v125, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
                sub_24B0395BC(v38, _s14descr285E46659O16SubscriptionDataOMa);
                sub_24B0395BC(v34, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
                if (v124)
                {
                  goto LABEL_103;
                }
              }

              else
              {
                v115 = v149;
                sub_24B0394EC(v8, v149, _s14descr285E46659O16SubscriptionDataOMa);
                if (swift_getEnumCaseMultiPayload())
                {
                  sub_24B0395BC(v38, _s14descr285E46659O16SubscriptionDataOMa);
                  sub_24B0395BC(v115, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
                  v43 = v151;
                  goto LABEL_79;
                }

                v126 = v135;
                sub_24B039554(v8 + v113, v135, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
                sub_24B2D1704();
                sub_24B034188(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
                v127 = sub_24B2D52A4();
                v128 = v126;
                v34 = v150;
                sub_24B0395BC(v128, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
                sub_24B0395BC(v38, _s14descr285E46659O16SubscriptionDataOMa);
                sub_24B0395BC(v115, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
                v43 = v151;
                if (v127)
                {
                  goto LABEL_103;
                }
              }
            }

            else
            {
              if (v114 != 2)
              {
                if (v114 == 3)
                {
                  sub_24B0395BC(v38, _s14descr285E46659O16SubscriptionDataOMa);
                  if (swift_getEnumCaseMultiPayload() == 3)
                  {
                    goto LABEL_103;
                  }
                }

                else
                {
                  sub_24B0395BC(v38, _s14descr285E46659O16SubscriptionDataOMa);
                  if (swift_getEnumCaseMultiPayload() == 4)
                  {
                    goto LABEL_103;
                  }
                }

LABEL_79:
                sub_24AFF8258(v8, &unk_27EFC8650);
LABEL_80:
                v111 = (v111 + 1) & v112;
                if (((*(v153 + ((v111 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v111) & 1) == 0)
                {
                  goto LABEL_58;
                }

                continue;
              }

              sub_24B0394EC(v8, v152, _s14descr285E46659O16SubscriptionDataOMa);
              if (swift_getEnumCaseMultiPayload() != 2)
              {
                sub_24B0395BC(v38, _s14descr285E46659O16SubscriptionDataOMa);
                sub_24B0395BC(v152, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
                goto LABEL_79;
              }

              v116 = v8 + v113;
              v117 = v143;
              sub_24B039554(v116, v143, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
              sub_24B2D1704();
              sub_24B034188(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
              v118 = sub_24B2D52A4();
              sub_24B0395BC(v38, _s14descr285E46659O16SubscriptionDataOMa);
              if (v118)
              {
                v119 = *(v145 + 20);
                v120 = *(v152 + v119);
                v121 = v117;
                v122 = *(v117 + v119);
                sub_24B0395BC(v121, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
                if (v120 == v122)
                {
                  sub_24B0395BC(v152, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
LABEL_103:
                  sub_24B0395BC(v8, _s14descr285E46659O16SubscriptionDataOMa);
                  result = sub_24B0395BC(v43, _s14descr285E46659O16SubscriptionDataOMa);
                  *(v137 + ((v144 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v144;
                  v93 = __OFADD__(v142++, 1);
                  a4 = v154;
                  a3 = v155;
                  v99 = v141;
                  v98 = v148;
                  if (v93)
                  {
                    __break(1u);
                    goto LABEL_106;
                  }

                  goto LABEL_59;
                }
              }

              else
              {
                sub_24B0395BC(v117, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
              }

              sub_24B0395BC(v152, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
            }

            break;
          }

          sub_24B0395BC(v8, _s14descr285E46659O16SubscriptionDataOMa);
          goto LABEL_80;
        }

        v107 = v130;
        sub_24B039554(v147, v130, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        MEMORY[0x24C23C8D0](4);
        sub_24B2D1704();
        sub_24B034188(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
        sub_24B2D5254();
        sub_24B2D6104();
        v108 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa;
      }

      sub_24B0395BC(v107, v108);
      goto LABEL_76;
    }

    break;
  }

  v101 = v94;
  while (1)
  {
    v94 = v101 + 1;
    if (__OFADD__(v101, 1))
    {
      break;
    }

    if (v94 >= v99)
    {
      goto LABEL_106;
    }

    v102 = *(v140 + 8 * v94);
    ++v101;
    if (v102)
    {
      v100 = __clz(__rbit64(v102));
      v148 = ((v102 - 1) & v102);
      goto LABEL_66;
    }
  }

LABEL_108:
  __break(1u);
  return result;
}

void (*sub_24B035F3C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C23C450](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_24B035FBC;
  }

  __break(1u);
  return result;
}

uint64_t sub_24B035FC4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24B2D5DA4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24B2D5DA4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24B039184(&qword_27EFC84C8, &qword_27EFC84C0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC84C0);
            v9 = sub_24B035F3C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_24B038248(0, &qword_27EFC84B8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_24B036178(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v39 = a6;
  v40 = a7;
  v11 = a5(0);
  v38 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v37 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v16 = a4 + 7;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & a4[7];
  if (!a2)
  {
LABEL_18:
    v20 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v20;
    a1[4] = v19;
    return;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = a1;
    v36 = a3;
    v20 = 0;
    v34 = v17;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      a1 = a4;
      v26 = a4[6];
      v27 = v37;
      v28 = *(v38 + 72);
      sub_24B0394EC(v26 + v28 * (v25 | (v20 << 6)), v37, v39);
      v29 = v27;
      v30 = v40;
      sub_24B039554(v29, v15, v40);
      sub_24B039554(v15, a2, v30);
      if (v22 == v36)
      {
        a4 = a1;
        a1 = v35;
        goto LABEL_23;
      }

      a2 += v28;
      v31 = __OFADD__(v22++, 1);
      a4 = a1;
      if (v31)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = v16[v24];
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v32 = v20 + 1;
    }

    else
    {
      v32 = v21;
    }

    v20 = v32 - 1;
    a1 = v35;
LABEL_23:
    v17 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_24B0363F4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  v9 = (MEMORY[0x28223BE20])();
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_24B03669C(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_24B036798(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_21:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    while (1)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (!v7)
      {
        break;
      }

LABEL_7:
      v7 &= v7 - 1;
      ++v8;
      if (v11 == a3)
      {
        goto LABEL_21;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_7;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v14 = v9 + 1;
    }

    else
    {
      v14 = (63 - v6) >> 6;
    }

    v9 = v14 - 1;
    a3 = v8;
    goto LABEL_21;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_24B03687C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t, void *, uint64_t), uint64_t a5)
{
  v29 = a2;
  v36 = a5;
  v39 = a4;
  v30 = a1;
  v42 = sub_24B2D1704();
  result = MEMORY[0x28223BE20](v42);
  v37 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v7;
  v9 = 0;
  v40 = a3;
  v10 = *(a3 + 64);
  v31 = 0;
  v32 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v34 = v7 + 8;
  v35 = v7 + 16;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v41 = (v13 - 1) & v13;
LABEL_11:
    v18 = v15 | (v9 << 6);
    v19 = v40;
    v21 = v37;
    v20 = v38;
    (*(v38 + 16))(v37, v40[6] + *(v38 + 72) * v18, v42);
    v22 = v19[7];
    v33 = v18;
    v23 = v22 + 32 * v18;
    v24 = *v23;
    v25 = *(v23 + 8);
    v26 = *(v23 + 16);
    v27 = *(v23 + 24);
    sub_24B034224(*v23, v25, v26);
    LOBYTE(v18) = v39(v21, v24, v25, v26, v27);
    sub_24B0341E0(v24, v25, v26);
    result = (*(v20 + 8))(v21, v42);
    v13 = v41;
    if (v18)
    {
      *(v30 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
        return sub_24B1F1024(v30, v29, v31, v40);
      }
    }
  }

  v16 = v9;
  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      return sub_24B1F1024(v30, v29, v31, v40);
    }

    v17 = *(v32 + 8 * v9);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v41 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B036AF8(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t, void *, uint64_t), uint64_t a3)
{
  v6 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v10 = v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_24B03687C(v10, v8, v6, a2, a3);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_24B034308(v12, v8, v6, a2, a3);
  result = MEMORY[0x24C23D530](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

uint64_t sub_24B036C78(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a2;
  v44 = a4;
  v36 = a1;
  v49 = sub_24B2D1704();
  result = MEMORY[0x28223BE20](v49);
  v51 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v45 = a3;
  v9 = *(a3 + 64);
  v39 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v9;
  v37 = 0;
  v38 = (v10 + 63) >> 6;
  v50 = v6 + 16;
  v42 = (v6 + 8);
  v43 = v6;
  v41 = xmmword_24B2DEAD0;
  while (v12)
  {
    v27 = __clz(__rbit64(v12));
    v48 = (v12 - 1) & v12;
LABEL_12:
    v30 = v27 | (v8 << 6);
    v31 = v45[6];
    v32 = *(v43 + 72);
    v40 = v30;
    v46 = *(v43 + 16);
    v46(v51, v31 + v32 * v30, v49);
    sub_24B2D5694();
    v47 = sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8660);
    v13 = *(_s14descr285E46659O16SubscriptionDataOMa(0) - 8);
    v14 = *(v13 + 72);
    v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v41;
    v17 = v16 + v15;
    v18 = v51;
    v19 = v49;
    v20 = v46;
    v46((v16 + v15), v51, v49);
    v21 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
    *(v17 + *(v21 + 20)) = 0;
    swift_storeEnumTagMultiPayload();
    v22 = v17 + v14;
    v20(v22, v18, v19);
    *(v22 + *(v21 + 20)) = 1;
    swift_storeEnumTagMultiPayload();
    v23 = sub_24B1333A8(v16);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v24 = v44;

    v25 = sub_24B0344E4(v23, v24);

    v26 = *(v25 + 16);

    result = (*v42)(v51, v19);
    v12 = v48;
    if (v26)
    {
      *(v36 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
      if (__OFADD__(v37++, 1))
      {
        __break(1u);
        return sub_24B1F0FE8(v36, v35, v37, v45);
      }
    }
  }

  v28 = v8;
  while (1)
  {
    v8 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v8 >= v38)
    {
      return sub_24B1F0FE8(v36, v35, v37, v45);
    }

    v29 = *(v39 + 8 * v8);
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v48 = (v29 - 1) & v29;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B037088(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_24B03426C(v12, v7, a1, a2);
      MEMORY[0x24C23D530](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_24B036C78((v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_24B037248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6, int a7)
{
  v88 = a7;
  v78 = a6;
  v73 = a5;
  v72 = a2;
  v74 = a1;
  v75 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  MEMORY[0x28223BE20](v75);
  v82 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa(0);
  MEMORY[0x28223BE20](v10 - 8);
  v81 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa(0);
  MEMORY[0x28223BE20](v12 - 8);
  v80 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC8650);
  MEMORY[0x28223BE20](v98);
  v15 = &v71 - v14;
  v16 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v76 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v90 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v71 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v95 = &v71 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v71 - v25;
  MEMORY[0x28223BE20](v24);
  v94 = &v71 - v27;
  v97 = sub_24B2D1704();
  result = MEMORY[0x28223BE20](v97);
  v31 = &v71 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = 0;
  v32 = 0;
  v89 = a3;
  v33 = *(a3 + 64);
  v77 = a3 + 64;
  v34 = 1 << *(a3 + 32);
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  else
  {
    v35 = -1;
  }

  v36 = v35 & v33;
  v37 = (v34 + 63) >> 6;
  v93 = v29 + 16;
  v102 = a4;
  v101 = a4 + 56;
  v87 = v29;
  v84 = (v29 + 8);
  v96 = v21;
  v85 = v37;
  v86 = v31;
  while (v36)
  {
    v38 = __clz(__rbit64(v36));
    v92 = (v36 - 1) & v36;
LABEL_13:
    v41 = v38 | (v32 << 6);
    v42 = *(v89 + 48);
    v43 = *(v87 + 72);
    v83 = v41;
    v44 = *(v87 + 16);
    v44(v31, v42 + v43 * v41, v97);
    sub_24B2D5694();
    v91 = sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v45 = v94;
    v44(v94, v31, v97);
    v46 = v45;
    swift_storeEnumTagMultiPayload();
    if (!*(v102 + 16) || (v47 = v102, sub_24B2D60E4(), sub_24B03ABC8(), v48 = sub_24B2D6124(), v49 = *(v47 + 32), v46 = v94, v50 = -1 << v49, v51 = v48 & ~v50, ((*(v101 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0))
    {
LABEL_5:
      sub_24B0395BC(v46, _s14descr285E46659O16SubscriptionDataOMa);

      v31 = v86;
      result = (*v84)(v86, v97);
      v37 = v85;
      v36 = v92;
      continue;
    }

    v99 = ~v50;
    v100 = *(v76 + 72);
    while (1)
    {
      sub_24B0394EC(*(v102 + 48) + v100 * v51, v26, _s14descr285E46659O16SubscriptionDataOMa);
      v52 = *(v98 + 48);
      sub_24B0394EC(v26, v15, _s14descr285E46659O16SubscriptionDataOMa);
      sub_24B0394EC(v46, &v15[v52], _s14descr285E46659O16SubscriptionDataOMa);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        break;
      }

      v54 = v95;
      if (EnumCaseMultiPayload)
      {
        sub_24B0394EC(v15, v21, _s14descr285E46659O16SubscriptionDataOMa);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_24B0395BC(v21, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
          goto LABEL_19;
        }

        v62 = v81;
        sub_24B039554(&v15[v52], v81, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
        sub_24B034188(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
        v63 = sub_24B2D52A4();
        v64 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
        v65 = v62;
        v21 = v96;
        sub_24B0395BC(v65, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
        v66 = v21;
      }

      else
      {
        sub_24B0394EC(v15, v95, _s14descr285E46659O16SubscriptionDataOMa);
        if (swift_getEnumCaseMultiPayload())
        {
          sub_24B0395BC(v54, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
LABEL_19:
          sub_24AFF8258(v15, &unk_27EFC8650);
          goto LABEL_20;
        }

        v67 = v80;
        sub_24B039554(&v15[v52], v80, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
        sub_24B034188(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
        v68 = v54;
        v63 = sub_24B2D52A4();
        v64 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
        v69 = v67;
        v21 = v96;
        sub_24B0395BC(v69, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
        v66 = v68;
        v46 = v94;
      }

      sub_24B0395BC(v66, v64);
      if (v63)
      {
        goto LABEL_42;
      }

      sub_24B0395BC(v15, _s14descr285E46659O16SubscriptionDataOMa);
LABEL_20:
      sub_24B0395BC(v26, _s14descr285E46659O16SubscriptionDataOMa);
      v51 = (v51 + 1) & v99;
      if (((*(v101 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          goto LABEL_42;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_42;
      }

      goto LABEL_19;
    }

    v55 = v90;
    sub_24B0394EC(v15, v90, _s14descr285E46659O16SubscriptionDataOMa);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_24B0395BC(v55, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      v21 = v96;
      goto LABEL_19;
    }

    v56 = &v15[v52];
    v57 = v82;
    sub_24B039554(v56, v82, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    sub_24B034188(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
    if ((sub_24B2D52A4() & 1) == 0)
    {
      sub_24B0395BC(v57, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
LABEL_41:
      sub_24B0395BC(v55, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      sub_24B0395BC(v15, _s14descr285E46659O16SubscriptionDataOMa);
      v21 = v96;
      goto LABEL_20;
    }

    v58 = *(v75 + 20);
    v59 = *(v55 + v58);
    v60 = v57;
    v61 = *(v57 + v58);
    sub_24B0395BC(v60, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    if (v59 != v61)
    {
      goto LABEL_41;
    }

    sub_24B0395BC(v55, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    v21 = v96;
LABEL_42:
    sub_24B0395BC(v15, _s14descr285E46659O16SubscriptionDataOMa);
    sub_24B0395BC(v26, _s14descr285E46659O16SubscriptionDataOMa);
    sub_24B0395BC(v46, _s14descr285E46659O16SubscriptionDataOMa);

    v31 = v86;
    result = (*v84)(v86, v97);
    *(v74 + ((v83 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v83;
    v70 = __OFADD__(v79++, 1);
    v37 = v85;
    v36 = v92;
    if (v70)
    {
      __break(1u);
      return v73(v74, v72, v79, v89);
    }
  }

  v39 = v32;
  while (1)
  {
    v32 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v32 >= v37)
    {
      return v73(v74, v72, v79, v89);
    }

    v40 = *(v77 + 8 * v32);
    ++v39;
    if (v40)
    {
      v38 = __clz(__rbit64(v40));
      v92 = (v40 - 1) & v40;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B037DB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, int a5)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 32);
  v12 = v11 & 0x3F;
  v13 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v13;
  v15 = swift_bridgeObjectRetain_n();
  if (v12 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v18 = swift_slowAlloc();

      v16 = sub_24B034398(v18, v13, a1, a2, a3, a4, a5);
      MEMORY[0x24C23D530](v18, -1, -1);
      swift_bridgeObjectRelease_n();
      return v16;
    }
  }

  v19[0] = v19;
  MEMORY[0x28223BE20](v15);
  bzero(v19 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0), v14);

  v16 = sub_24B037248(v19 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0), v13, a1, a2, a3, a4, a5);

  if (v5)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v16;
}

unint64_t sub_24B037FA8()
{
  result = qword_27EFC8550;
  if (!qword_27EFC8550)
  {
    sub_24B038248(255, &qword_27EFC8540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8550);
  }

  return result;
}

uint64_t sub_24B038020(uint64_t a1)
{
  v3 = *(sub_24B2D24A4() - 8);
  v4 = (*(v3 + 80) + 57) & ~*(v3 + 80);
  _s14descr285E46659O16SubscriptionDataO10DirectionsVMa(0);
  v11 = *(v1 + 24);
  v12 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFD370;

  return sub_24B018128(a1, v12, v11, v5, v6, v7, v8, v1 + v4);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_24B038248(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_24B0382A8()
{
  result = qword_27EFC85E8;
  if (!qword_27EFC85E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC85E8);
  }

  return result;
}

uint64_t sub_24B0382FC(uint64_t a1)
{
  v4 = *(sub_24B2D24A4() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = (*(v4 + 64) + v5 + v6) & ~v5;
  v8 = *(v1 + 16);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFD370;

  return sub_24B01CA40(a1, v8, v1 + v6, v1 + v7);
}

uint64_t sub_24B038414(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B0384BC;

  return sub_24B01DFE0(a1, v5, v4);
}

uint64_t sub_24B0384BC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_24B0385B8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8630) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFDE44;

  return sub_24B01D488(a1, v6, v7, v1 + v5);
}

uint64_t sub_24B0386BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFDE44;

  return sub_24B013B30(a1, v4, v5, v7, v6);
}

uint64_t sub_24B03877C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24B0384BC;

  return sub_24B016E18(v2, v3, v4);
}

uint64_t sub_24B038824(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AFFDE44;

  return sub_24B016FE4(a1, v4);
}

uint64_t objectdestroy_94Tm()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_24B03891C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24B03988C;

  return sub_24B0171E0(v2, v3, v4);
}

uint64_t sub_24B0389C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AFFDE44;

  return sub_24B0172AC(a1, v4);
}

uint64_t sub_24B038A7C(uint64_t a1)
{
  v4 = *(sub_24B2D24A4() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AFFDE44;

  return sub_24B0176C0(v9, a1, v7, v8, v1 + v5, v10);
}

uint64_t sub_24B038BB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B038C24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_24B038C8C()
{
  result = qword_27EFC86A0;
  if (!qword_27EFC86A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC86A0);
  }

  return result;
}

uint64_t sub_24B038CE0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86A8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFDE44;

  return sub_24B02805C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_24B038E0C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86C0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFDE44;

  return sub_24B029DF8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24B038F10(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
  }

  return result;
}

uint64_t sub_24B038F24(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (BYTE2(a3) != 255)
  {
    return sub_24B038F38(result, a2, a3, SBYTE2(a3));
  }

  return result;
}

uint64_t sub_24B038F38(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
  }

  return result;
}

uint64_t sub_24B038F4C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (BYTE2(a3) != 255)
  {
    return sub_24B038F10(result, a2, a3, SBYTE2(a3));
  }

  return result;
}

uint64_t sub_24B038F60(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86D0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFDE44;

  return sub_24B02C0FC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_24B03908C(uint64_t a1)
{
  v4 = *(type metadata accessor for SessionFriend(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFDE44;

  return sub_24B02CC48(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24B039184(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B0391CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B039234(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86F8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFDE44;

  return sub_24B02DEEC(a1, v6, v7, v1 + v5, v8);
}

void sub_24B039360(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {

    v3 = a3;
  }
}

uint64_t sub_24B0393A4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t objectdestroy_90Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24B03942C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFDE44;

  return sub_24B01F578(a1, v4, v5, v7, v6);
}

uint64_t sub_24B0394EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B039554(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B0395BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B03961C(uint64_t a1)
{
  sub_24B2D1704();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AFFDE44;

  return sub_24B020D04(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_163Tm()
{
  v1 = sub_24B2D1704();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 65) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

unint64_t sub_24B039834()
{
  result = qword_27EFC8730;
  if (!qword_27EFC8730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8730);
  }

  return result;
}

uint64_t sub_24B0398CC()
{
  result = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa(319);
  if (v1 <= 0x3F)
  {
    result = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa(319);
    if (v2 <= 0x3F)
    {
      result = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1704();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1704();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24B039AE0()
{
  result = sub_24B2D1704();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24B039B74()
{
  result = sub_24B2D1704();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24B039BE8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v44 = a3;
  v45 = a4;
  v6 = a2(0);
  v43 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = &v34 - v7;
  v8 = sub_24B2D1704();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
    return v13;
  }

  v40 = v11;
  v34 = v4;
  v48 = MEMORY[0x277D84F90];
  sub_24B0076F4(0, v12, 0);
  v13 = v48;
  v14 = a1 + 56;
  result = sub_24B2D5B54();
  v16 = result;
  v17 = 0;
  v41 = v9;
  v38 = v9 + 32;
  v39 = (v9 + 16);
  v35 = a1 + 64;
  v36 = v12;
  v37 = a1 + 56;
  while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(a1 + 32))
  {
    v19 = v16 >> 6;
    if ((*(v14 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
    {
      goto LABEL_21;
    }

    v20 = *(a1 + 36);
    v46 = v17;
    v47 = v20;
    v21 = v42;
    sub_24B0407D0(*(a1 + 48) + *(v43 + 72) * v16, v42, v44);
    v22 = a1;
    v23 = v40;
    (*v39)(v40, v21, v8);
    sub_24B03B174(v21, v45);
    v48 = v13;
    v24 = v8;
    v26 = *(v13 + 16);
    v25 = *(v13 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_24B0076F4(v25 > 1, v26 + 1, 1);
      v13 = v48;
    }

    *(v13 + 16) = v26 + 1;
    result = (*(v41 + 32))(v13 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v26, v23, v24);
    v18 = 1 << *(v22 + 32);
    if (v16 >= v18)
    {
      goto LABEL_22;
    }

    a1 = v22;
    v14 = v37;
    v27 = *(v37 + 8 * v19);
    if ((v27 & (1 << v16)) == 0)
    {
      goto LABEL_23;
    }

    if (v47 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v8 = v24;
    v28 = v27 & (-2 << (v16 & 0x3F));
    if (v28)
    {
      v18 = __clz(__rbit64(v28)) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = v19 << 6;
      v30 = v19 + 1;
      v31 = (v35 + 8 * v19);
      while (v30 < (v18 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          result = sub_24B040A60(v16, v47, 0);
          v18 = __clz(__rbit64(v32)) + v29;
          goto LABEL_4;
        }
      }

      result = sub_24B040A60(v16, v47, 0);
    }

LABEL_4:
    v17 = v46 + 1;
    v16 = v18;
    if (v46 + 1 == v36)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_24B039FE4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void), void (*a5)(char *, char *))
{
  v26 = a3;
  v27 = a5;
  v7 = a2(0);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v24 - v12;
  result = MEMORY[0x28223BE20](v11);
  v16 = &v24 - v15;
  v17 = 0;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 56);
  for (i = (v18 + 63) >> 6; v20; result = sub_24B03B174(v13, a4))
  {
    v22 = v17;
LABEL_9:
    v23 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    sub_24B0407D0(*(a1 + 48) + *(v25 + 72) * (v23 | (v22 << 6)), v16, v26);
    sub_24B03B10C(v16, v10, a4);
    v27(v13, v10);
  }

  while (1)
  {
    v22 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v22 >= i)
    {
    }

    v20 = *(a1 + 56 + 8 * v22);
    ++v17;
    if (v20)
    {
      v17 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}