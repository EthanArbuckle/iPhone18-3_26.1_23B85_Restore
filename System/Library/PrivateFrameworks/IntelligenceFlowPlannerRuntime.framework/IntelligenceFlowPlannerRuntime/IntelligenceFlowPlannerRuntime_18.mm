uint64_t sub_22C4EB06C(uint64_t a1)
{
  v3 = sub_22C90654C();
  v4 = sub_22C369824(v3);
  v97 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v53 - v12;
  v14 = sub_22C9070DC();
  v15 = sub_22C369824(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369ABC();
  v22 = (v20 - v21);
  MEMORY[0x28223BE20](v23);
  v25 = v53 - v24;
  v102 = v1;

  v26 = v98;
  result = sub_22C47B650(sub_22C4ED5E0, v100, a1);
  if (v26)
  {
    return result;
  }

  v28 = v97;
  v83 = v22;
  if (!*(result + 16))
  {
    v53[1] = 0;

    v29 = v17;
    v30 = 0;
    v94 = *MEMORY[0x277D1DAA8];
    v93 = *MEMORY[0x277D1D9F8];
    v92 = *MEMORY[0x277D1DAC0];
    v91 = *MEMORY[0x277D1DAA0];
    v90 = *MEMORY[0x277D1DA98];
    v84 = *MEMORY[0x277D1DA50];
    v82 = *MEMORY[0x277D1DA78];
    v81 = *MEMORY[0x277D1DA30];
    v80 = *MEMORY[0x277D1DA08];
    v79 = *MEMORY[0x277D1DA10];
    v77 = *MEMORY[0x277D1DA70];
    v76 = *MEMORY[0x277D1DA88];
    v75 = *MEMORY[0x277D1DAD8];
    v74 = *MEMORY[0x277D1DAD0];
    v73 = *MEMORY[0x277D1DA48];
    v72 = *MEMORY[0x277D1DAE8];
    v71 = *MEMORY[0x277D1D9F0];
    v70 = *MEMORY[0x277D1DA90];
    v69 = *MEMORY[0x277D1DAC8];
    v68 = *MEMORY[0x277D1DAB0];
    v67 = *MEMORY[0x277D1DA80];
    v66 = *MEMORY[0x277D1DAE0];
    v65 = *MEMORY[0x277D1DAB8];
    v62 = *MEMORY[0x277D1DA18];
    v61 = *MEMORY[0x277D1DA00];
    v60 = *MEMORY[0x277D1DA58];
    v59 = *MEMORY[0x277D1DA28];
    v58 = *MEMORY[0x277D1DA40];
    v57 = *MEMORY[0x277D1DA20];
    v56 = *MEMORY[0x277D1DA38];
    v55 = *MEMORY[0x277D1DAF0];
    v54 = *MEMORY[0x277D1DA68];
    v88 = (v28 + 88);
    v89 = (v28 + 16);
    v31 = (v28 + 8);
    v32 = *(a1 + 16);
    v95 = v29;
    v96 = v32;
    v78 = (v29 + 32);
    v86 = (v29 + 8);
    v87 = v29 + 16;
    v85 = MEMORY[0x277D84F90];
    v64 = a1;
    v63 = v10;
    v99 = v14;
    while (1)
    {
      if (v96 == v30)
      {
        return v85;
      }

      v98 = (*(v95 + 80) + 32) & ~*(v95 + 80);
      v97 = *(v95 + 72);
      (*(v95 + 16))(v25, a1 + v98 + v97 * v30, v14);
      sub_22C90702C();
      (*v89)(v10, v13, v3);
      v33 = (*v88)(v10, v3);
      v34 = v33 == v94 || v33 == v93;
      if (v34 || v33 == v92 || v33 == v91 || v33 == v90)
      {
LABEL_40:
        (*v31)(v10, v3);
        goto LABEL_41;
      }

      if (v33 == v84)
      {
        break;
      }

      if (v33 == v82)
      {
        break;
      }

      if (v33 == v81)
      {
        break;
      }

      if (v33 == v80)
      {
        break;
      }

      if (v33 == v79)
      {
        break;
      }

      sub_22C369908(&v112 + 4);
      if (v34)
      {
        break;
      }

      sub_22C369908(&v112);
      if (v34)
      {
        break;
      }

      sub_22C369908(&v111 + 4);
      if (v34)
      {
        break;
      }

      sub_22C369908(&v111);
      if (v34)
      {
        break;
      }

      sub_22C369908(&v110 + 4);
      if (v34)
      {
        break;
      }

      sub_22C369908(&v110);
      if (v34)
      {
        break;
      }

      sub_22C369908(&v109 + 4);
      if (v34)
      {
        break;
      }

      sub_22C369908(&v109);
      if (v34)
      {
        break;
      }

      sub_22C369908(&v108 + 4);
      if (v34)
      {
        break;
      }

      sub_22C369908(&v108);
      if (v34)
      {
        break;
      }

      sub_22C369908(&v107 + 4);
      if (v34)
      {
        break;
      }

      sub_22C369908(&v107);
      if (v34 || v38 == v65)
      {
        goto LABEL_40;
      }

      sub_22C369908(&v105 + 4);
      if (v40)
      {
        break;
      }

      sub_22C369908(&v105);
      if (v34)
      {
        break;
      }

      sub_22C369908(v104);
      if (v34)
      {
        break;
      }

      sub_22C369908(v103);
      if (v34)
      {
        break;
      }

      sub_22C369908(&v102 + 4);
      if (v34)
      {
        goto LABEL_41;
      }

      sub_22C369908(&v102);
      if (v34 || v41 == v56)
      {
        (*v31)(v13, v3);
LABEL_57:
        v46 = *v78;
        (*v78)(v83, v25, v99);
        v47 = v85;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v49 = v47;
        v106 = v47;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v50 = *(v47 + 16);
          sub_22C377BA0();
          sub_22C3B6D88();
          v49 = v106;
        }

        v52 = *(v49 + 16);
        v51 = *(v49 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_22C369AB0(v51);
          sub_22C3B6D88();
          v49 = v106;
        }

        ++v30;
        *(v49 + 16) = v52 + 1;
        v85 = v49;
        v14 = v99;
        v46(v49 + v98 + v52 * v97, v83, v99);
        a1 = v64;
        v10 = v63;
      }

      else
      {
        sub_22C369908(v101);
        if (!v34 && v43 != v54)
        {
          result = sub_22C90B4EC();
          __break(1u);
          return result;
        }

LABEL_41:
        (*v31)(v13, v3);
        v14 = v99;
        (*v86)(v25, v99);
        ++v30;
      }
    }

    v45 = *v31;
    (*v31)(v10, v3);
    v45(v13, v3);
    goto LABEL_57;
  }

  return result;
}

uint64_t sub_22C4EB82C(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a5;
  v11 = sub_22C901FAC();
  v55 = sub_22C369824(v11);
  v56 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v55);
  sub_22C369ABC();
  v49 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  v20 = a3[8];
  v21 = a3[9];
  sub_22C374168(a3 + 5, v20);
  v52 = a2;
  sub_22C9068FC();
  v50 = a4;
  v22 = sub_22C90887C();
  v48 = a1;
  v23 = *a1;
  v51 = a6;
  v24 = v54;
  v25 = (*(v21 + 8))(v19, v22, v53, v23, *(a6 + 32), v20, v21);
  if (v24)
  {
    (*(v56 + 8))(v19, v55);
  }

  else
  {
    v27 = v49;
    v28 = *(v56 + 8);
    v29 = v25;
    v56 += 8;
    v54 = v28;
    v28(v19, v55);

    v30 = sub_22C90887C();
    v31 = sub_22C4EA6B0(v30);
    v32 = sub_22C4EAAD4(v31);

    v33 = a3[3];
    v34 = a3[4];
    sub_22C374168(a3, v33);
    v35 = (*(v34 + 8))(v52, v29, v32, v51, v33, v34);

    v36 = v27;
    sub_22C9068FC();
    type metadata accessor for PromptTreeIdentifier.Label(0);
    v37 = v35;
    v53 = swift_allocBox();
    v39 = v38;
    v40 = v55;
    v41 = swift_allocBox();
    sub_22C9068FC();
    *v39 = v41;
    v42 = *MEMORY[0x277D1D798];
    v43 = sub_22C902D0C();
    sub_22C36985C(v43);
    (*(v44 + 104))(v39, v42);
    swift_storeEnumTagMultiPayload();
    v45 = v48;
    v46 = *v48;
    swift_isUniquelyReferenced_nonNull_native();
    v57 = *v45;
    sub_22C62D218();
    *v45 = v57;
    v54(v36, v40);
    sub_22C3CD5B8(v37);
  }
}

BOOL sub_22C4EBB54(uint64_t a1, void *a2)
{
  v3 = a2[13];
  v4 = a2[14];
  sub_22C374168(a2 + 10, v3);
  return (*(v4 + 8))(a1, v3, v4) == 0;
}

char *sub_22C4EBBC4(uint64_t a1, uint64_t a2)
{
  v214 = a2;
  v213 = sub_22C90941C();
  v3 = sub_22C369824(v213);
  v192 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v209 = v8 - v7;
  sub_22C36BA0C();
  v200 = sub_22C90981C();
  v9 = sub_22C369824(v200);
  v210 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v13);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v14);
  v191 = &v190 - v15;
  sub_22C36BA0C();
  v16 = sub_22C908EAC();
  v17 = sub_22C369824(v16);
  v202 = v18;
  v203 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v201 = v22 - v21;
  v23 = sub_22C36BA0C();
  v211 = type metadata accessor for PromptTreeIdentifier(v23);
  v24 = sub_22C36985C(v211);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22C369ABC();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v198 = &v190 - v31;
  sub_22C36BA0C();
  v196 = sub_22C90077C();
  v32 = sub_22C369824(v196);
  v194 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C369838();
  v38 = v37 - v36;
  v39 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  sub_22C369ABC();
  v199 = v41 - v42;
  MEMORY[0x28223BE20](v43);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v44);
  v204 = &v190 - v45;
  sub_22C36BA0C();
  v46 = sub_22C90769C();
  v47 = sub_22C369824(v46);
  v205 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22C369ABC();
  v53 = (v51 - v52);
  MEMORY[0x28223BE20](v54);
  v56 = &v190 - v55;
  v57 = sub_22C906ACC();
  v58 = sub_22C369824(v57);
  v206 = v59;
  v207 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22C369838();
  v208 = v63 - v62;
  sub_22C36BA0C();
  v64 = sub_22C90654C();
  v65 = sub_22C369824(v64);
  v67 = v66;
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v65);
  sub_22C369838();
  v72 = (v71 - v70);
  v212 = a1;
  sub_22C90702C();
  v73 = (*(v67 + 88))(v72, v64);
  if (v73 == *MEMORY[0x277D1DAA8] || v73 == *MEMORY[0x277D1D9F8] || v73 == *MEMORY[0x277D1DAC0] || v73 == *MEMORY[0x277D1DAA0] || v73 == *MEMORY[0x277D1DA98])
  {
    goto LABEL_15;
  }

  if (v73 == *MEMORY[0x277D1DA50])
  {
LABEL_19:
    v95 = sub_22C38B9EC();
    v96(v95);
LABEL_20:
    sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_22C90F800;
    v97 = v214;
    *(v94 + 32) = 1;
    *(v94 + 40) = v97 | 2;

    return v94;
  }

  if (v73 == *MEMORY[0x277D1DA78])
  {
    (*(v67 + 96))(v72, v64);
    (*(v206 + 32))(v208, v72, v207);
    sub_22C906ABC();
    v98 = sub_22C90768C();
    v100 = v99;
    v72 = *(v205 + 8);
    v72(v56, v46);
    if (v98 == 0x6570735F69726973 && v100 == 0xEA00000000006B61)
    {
    }

    else
    {
      v102 = sub_22C90B4FC();

      v103 = v215;
      if ((v102 & 1) == 0)
      {
        v104 = sub_22C906ABC();
        MEMORY[0x2318B5FE0](v104);
        sub_22C908AFC();
        v64 = v103;
        if (v103)
        {

          v64 = 0;
          v105 = 1;
LABEL_82:
          v122 = v198;
          (*(v194 + 8))(v38, v196);
          v72(v53, v46);
          v124 = v203;
          v123 = v204;
          sub_22C36C640(v204, v105, 1, v203);
          v125 = v195;
          sub_22C4ED600(v123, v195);
          if (sub_22C370B74(v125, 1, v124) == 1)
          {
            v126 = sub_22C36DD28(v125, &qword_27D9BC1E8, &qword_22C9123B0);
            v127 = MEMORY[0x277D84F90];
          }

          else
          {
            v127 = sub_22C908DCC();
            v126 = (*(v202 + 8))(v125, v124);
          }

          MEMORY[0x28223BE20](v126);
          *(&v190 - 2) = v212;
          v128 = v64;
          v129 = sub_22C3B3F9C(sub_22C4ED670, (&v190 - 4), v127);

          v130 = sub_22C902D0C();
          sub_22C36C640(v122, 1, 3, v130);
          type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
          swift_storeEnumTagMultiPayload();
          sub_22C901FAC();
          v131 = swift_allocBox();
          sub_22C9068FC();
          v132 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
          *(v122 + v132) = v131;
          (*(*(v130 - 8) + 104))(v122 + v132, *MEMORY[0x277D1D798], v130);
          swift_storeEnumTagMultiPayload();
          v133 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
          v134 = swift_allocBox();
          v83 = v135;
          sub_22C45769C(v122, v135);
          type metadata accessor for PromptTreeIdentifier.Label(0);
          v136 = swift_allocBox();
          sub_22C486784();
          v137 = sub_22C4ED034(v136 | 0x2000000000000000, v214, v129);
          v138 = v122;
          v90 = v128;
          if (v128)
          {
            while (1)
            {

              sub_22C457700(v83);
LABEL_111:
              swift_deallocBox();
              __break(1u);
            }
          }

          v139 = *(v133 + 48);
          sub_22C457700(v138);

          sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
          v140 = swift_allocObject();
          *(v140 + 16) = v137;
          *(v83 + v139) = v140;
          v205 = v134;

          sub_22C591F6C();
          v142 = v141;
          v144 = *(v141 + 2);
          v143 = *(v141 + 3);
          v145 = (v144 + 1);
          if (v144 >= v143 >> 1)
          {
LABEL_109:
            sub_22C369AB0(v143);
            sub_22C591F6C();
            v142 = v188;
          }

          v146 = v213;
          v147 = v199;
          v148 = v200;
          v149 = v204;
          v150 = v205;
          *(v142 + 2) = v145;
          v198 = v142;
          v151 = &v142[16 * v144];
          *(v151 + 4) = 1;
          *(v151 + 5) = v150 | 0x4000000000000002;
          sub_22C4ED600(v149, v147);
          v152 = v203;
          if (sub_22C370B74(v147, 1, v203) == 1)
          {

            sub_22C36DD28(v149, &qword_27D9BC1E8, &qword_22C9123B0);
            v153 = sub_22C37185C();
            v154(v153);
            sub_22C36DD28(v147, &qword_27D9BC1E8, &qword_22C9123B0);
            return v198;
          }

          else
          {
            v215 = v90;
            (*(v202 + 32))(v201, v147, v152);
            v155 = sub_22C908DCC();
            v90 = 0;
            v212 = v155[2];
            v144 = v210 + 16;
            v197 = (v210 + 32);
            v156 = (v210 + 8);
            v199 = MEMORY[0x277D84F90];
            v145 = v191;
            v214 = v210 + 16;
            v211 = v155;
LABEL_90:
            v157 = v209;
            while (v212 != v90)
            {
              v143 = v155[2];
              if (v90 >= v143)
              {
                __break(1u);
                goto LABEL_109;
              }

              v158 = (*(v210 + 80) + 32) & ~*(v210 + 80);
              v159 = *(v210 + 72);
              (*(v210 + 16))(v145, v155 + v158 + v159 * v90, v148);
              v217[0] = sub_22C9097DC();
              v217[1] = v160;
              MEMORY[0x28223BE20](v217[0]);
              *(&v190 - 2) = v217;
              v161 = v215;
              v162 = sub_22C5EC08C(sub_22C3AC11C, (&v190 - 4), &unk_283FAEBB0);
              v215 = v161;

              if (!v162)
              {
                v163 = *v197;
                (*v197)(v193, v145, v148);
                v164 = v199;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v218 = v164;
                v196 = v163;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v166 = *(v164 + 16);
                  sub_22C377BA0();
                  sub_22C3B6FA0();
                  v164 = v218;
                }

                v144 = v214;
                v167 = v90;
                v169 = *(v164 + 16);
                v168 = *(v164 + 24);
                v170 = v164;
                if (v169 >= v168 >> 1)
                {
                  sub_22C369AB0(v168);
                  sub_22C3B6FA0();
                  v167 = v90;
                  v144 = v214;
                  v170 = v218;
                }

                v90 = v167 + 1;
                *(v170 + 16) = v169 + 1;
                v199 = v170;
                v148 = v200;
                v196(v170 + v158 + v169 * v159, v193, v200);
                v146 = v213;
                v155 = v211;
                goto LABEL_90;
              }

              (*v156)(v145, v148);
              ++v90;
              v146 = v213;
              v144 = v214;
              v157 = v209;
              v155 = v211;
            }

            v216 = MEMORY[0x277D84F90];
            v171 = *(v199 + 16);
            if (v171)
            {
              v172 = v199 + ((*(v210 + 80) + 32) & ~*(v210 + 80));
              v173 = *(v210 + 72);
              v211 = *(v210 + 16);
              v212 = v173;
              v174 = v157;
              v175 = (v192 + 8);
              v176 = v190;
              do
              {
                v177 = (v211)(v176, v172, v148);
                MEMORY[0x2318B6CE0](v177);
                sub_22C9093DC();
                (*v175)(v174, v213);
                (*v156)(v176, v148);
                sub_22C3CD230();
                v172 += v212;
                --v171;
              }

              while (v171);

              v146 = v213;
              v157 = v174;
            }

            else
            {
            }

            v179 = v204;
            MEMORY[0x2318B6290](v178);
            sub_22C9093DC();
            (*(v192 + 8))(v157, v146);
            sub_22C3CD230();
            sub_22C3AD9E8();
            v181 = v180;
            v94 = v198;
            v183 = *(v198 + 2);
            v182 = *(v198 + 3);
            v184 = v203;
            if (v183 >= v182 >> 1)
            {
              sub_22C369AB0(v182);
              sub_22C591F6C();
              v94 = v189;
            }

            (*(v202 + 8))(v201, v184);
            sub_22C36DD28(v179, &qword_27D9BC1E8, &qword_22C9123B0);
            v185 = sub_22C37185C();
            v186(v185);
            *(v94 + 16) = v183 + 1;
            v187 = v94 + 16 * v183;
            *(v187 + 32) = v181;
            *(v187 + 40) = 4;
          }

          return v94;
        }

LABEL_81:
        v105 = 0;
        goto LABEL_82;
      }
    }

    v110 = sub_22C37185C();
    v111(v110);
    return MEMORY[0x277D84F90];
  }

  if (v73 == *MEMORY[0x277D1DA30] || v73 == *MEMORY[0x277D1DA08] || v73 == *MEMORY[0x277D1DA10])
  {
    goto LABEL_19;
  }

  if (v73 == *MEMORY[0x277D1DA70])
  {
    v108 = sub_22C38B9EC();
    v109(v108);
    return MEMORY[0x277D84F90];
  }

  if (v73 == *MEMORY[0x277D1DA88] || v73 == *MEMORY[0x277D1DAD8])
  {
    goto LABEL_19;
  }

  if (v73 == *MEMORY[0x277D1DAD0] || v73 == *MEMORY[0x277D1DA48])
  {
    goto LABEL_15;
  }

  if (v73 == *MEMORY[0x277D1DAE8] || v73 == *MEMORY[0x277D1D9F0])
  {
    goto LABEL_19;
  }

  if (v73 == *MEMORY[0x277D1DA90])
  {
    goto LABEL_15;
  }

  if (v73 == *MEMORY[0x277D1DAC8] || v73 == *MEMORY[0x277D1DAB0])
  {
    goto LABEL_19;
  }

  v117 = v73 == *MEMORY[0x277D1DA80] || v73 == *MEMORY[0x277D1DAE0];
  if (v117 || v73 == *MEMORY[0x277D1DAB8])
  {
    goto LABEL_15;
  }

  if (v73 == *MEMORY[0x277D1DA18] || v73 == *MEMORY[0x277D1DA00] || v73 == *MEMORY[0x277D1DA58])
  {
    goto LABEL_19;
  }

  if (v73 == *MEMORY[0x277D1DA28])
  {
LABEL_15:
    v78 = sub_22C38B9EC();
    v79(v78);
  }

  else if (v73 != *MEMORY[0x277D1DA40])
  {
    if (v73 == *MEMORY[0x277D1DA20] || v73 == *MEMORY[0x277D1DA38])
    {
      goto LABEL_20;
    }

    if (v73 != *MEMORY[0x277D1DAF0] && v73 != *MEMORY[0x277D1DA68])
    {
      sub_22C90B4EC();
      __break(1u);
      goto LABEL_81;
    }
  }

  v80 = sub_22C902D0C();
  sub_22C36C640(v29, 1, 3, v80);
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  swift_storeEnumTagMultiPayload();
  sub_22C901FAC();
  v81 = swift_allocBox();
  sub_22C9068FC();
  v82 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
  *(v29 + v82) = v81;
  (*(*(v80 - 8) + 104))(v29 + v82, *MEMORY[0x277D1D798], v80);
  swift_storeEnumTagMultiPayload();
  v83 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  v84 = swift_allocBox();
  v86 = v85;
  sub_22C45769C(v29, v85);
  type metadata accessor for PromptTreeIdentifier.Label(0);
  v87 = swift_allocBox();
  sub_22C486784();
  v88 = v215;
  v89 = sub_22C4ED364(v87 | 0x2000000000000000, v214);
  v90 = v88;
  if (v88)
  {

    sub_22C457700(v86);
    goto LABEL_111;
  }

  v91 = v89;
  v92 = *(v83 + 48);
  sub_22C457700(v29);

  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  v93 = swift_allocObject();
  *(v93 + 16) = v91;
  *(v86 + v92) = v93;
  sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_22C90F800;
  *(v94 + 32) = 1;
  *(v94 + 40) = v84 | 0x4000000000000002;
  return v94;
}

uint64_t sub_22C4ECDD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v26[1] = a1;
  v28 = a2;
  v27 = type metadata accessor for PromptTreeIdentifier(0);
  v2 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v4 = (v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22C9097DC();
  v5 = sub_22C90A2CC();
  v7 = v6;

  *v4 = v5;
  v4[1] = v7;
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  swift_storeEnumTagMultiPayload();
  v8 = sub_22C3A5908(&qword_27D9BC1F0, &qword_22C9123B8);
  v9 = swift_allocBox();
  v11 = v10;
  v12 = (v10 + *(v8 + 48));
  sub_22C901FAC();
  v13 = swift_allocBox();
  sub_22C9068FC();
  *v11 = v13;
  v14 = *MEMORY[0x277D1D798];
  v15 = sub_22C902D0C();
  v16 = *(*(v15 - 8) + 104);
  v16(v11, v14, v15);
  *v12 = sub_22C9097DC();
  v12[1] = v17;
  v18 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
  *(v4 + v18) = v9;
  v16((v4 + v18), *MEMORY[0x277D1D7B8], v15);
  swift_storeEnumTagMultiPayload();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0xE000000000000000;
  v20 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  v21 = swift_allocBox();
  v23 = v22;
  v24 = *(v20 + 48);
  sub_22C4ED690(v4, v22);
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  result = swift_allocObject();
  *(result + 16) = v19;
  *(v23 + v24) = result;
  *v28 = v21 | 0x4000000000000000;
  return result;
}

uint64_t sub_22C4ED034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F870;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0xE000000000000000;
  sub_22C591324();
  v9 = v8;
  v10 = *(v8 + 16);
  v11 = *(v8 + 24) >> 1;
  v12 = v10 + 1;
  if (v11 <= v10)
  {
    sub_22C591324();
    v9 = v30;
    v11 = *(v30 + 24) >> 1;
  }

  *(v9 + 16) = v12;
  *(v9 + 8 * v10 + 32) = v7;
  v13 = v10 + 2;
  if (v11 < (v10 + 2))
  {
    sub_22C591324();
    v9 = v31;
  }

  *(v9 + 16) = v13;
  *(v9 + 8 * v12 + 32) = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = 2112800;
  *(v14 + 24) = 0xE300000000000000;
  v15 = *(v9 + 24);
  v16 = v10 + 3;

  if ((v10 + 3) > (v15 >> 1))
  {
    sub_22C591324();
    v9 = v32;
  }

  *(v9 + 16) = v16;
  *(v9 + 8 * v13 + 32) = v14;
  v17 = v10 + 4;
  if ((v10 + 4) > *(v9 + 24) >> 1)
  {
    sub_22C591324();
    v9 = v33;
  }

  *(v9 + 16) = v17;
  *(v9 + 8 * v16 + 32) = a2;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0xE000000000000000;
  v19 = *(v9 + 24);

  if ((v10 + 5) > (v19 >> 1))
  {
    sub_22C591324();
    v9 = v34;
  }

  *(v9 + 16) = v10 + 5;
  *(v9 + 8 * v17 + 32) = v18;
  v20 = sub_22C3DB9B0(v9);

  v21 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v21 + 16) = v22;
  *(inited + 32) = v21 | 0x6000000000000000;
  v23 = sub_22C3DB9B0(a3);
  v24 = swift_allocObject();
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v24 + 16) = v25;
  *(inited + 40) = v24 | 0x6000000000000000;
  v26 = sub_22C3DB9B0(inited);
  swift_setDeallocating();
  sub_22C58FFB0();
  v27 = swift_allocObject();
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v27 + 16) = v28;
  return v27 | 0x6000000000000000;
}

uint64_t sub_22C4ED364(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0xE000000000000000;
  sub_22C591324();
  v6 = v5;
  v7 = *(v5 + 16);
  v8 = *(v5 + 24) >> 1;
  v9 = v7 + 1;
  if (v8 <= v7)
  {
    sub_22C591324();
    v6 = v21;
    v8 = *(v21 + 24) >> 1;
  }

  *(v6 + 16) = v9;
  *(v6 + 8 * v7 + 32) = v4;
  v10 = v7 + 2;
  if (v8 < (v7 + 2))
  {
    sub_22C591324();
    v6 = v22;
  }

  *(v6 + 16) = v10;
  *(v6 + 8 * v9 + 32) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = 2112800;
  *(v11 + 24) = 0xE300000000000000;
  v12 = *(v6 + 24);
  v13 = v7 + 3;

  if ((v7 + 3) > (v12 >> 1))
  {
    sub_22C591324();
    v6 = v23;
  }

  *(v6 + 16) = v13;
  *(v6 + 8 * v10 + 32) = v11;
  v14 = v7 + 4;
  if ((v7 + 4) > *(v6 + 24) >> 1)
  {
    sub_22C591324();
    v6 = v24;
  }

  *(v6 + 16) = v14;
  *(v6 + 8 * v13 + 32) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0xE000000000000000;
  v16 = *(v6 + 24);

  if ((v7 + 5) > (v16 >> 1))
  {
    sub_22C591324();
    v6 = v25;
  }

  *(v6 + 16) = v7 + 5;
  *(v6 + 8 * v14 + 32) = v15;
  v17 = sub_22C3DB9B0(v6);

  v18 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v18 + 16) = v19;
  return v18 | 0x6000000000000000;
}

uint64_t sub_22C4ED600(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C4ED690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptTreeIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C4ED704()
{
  v0 = sub_22C90654C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C90704C();
  if (v5 != 2 && (v5 & 1) != 0)
  {
    return 2;
  }

  v7 = sub_22C9070CC();
  if (v7 == 2)
  {
    sub_22C90702C();
    v8 = sub_22C441C04();
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    v8 = v7;
  }

  return (v8 & 1) == 0;
}

uint64_t sub_22C4ED860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = a2;
  v85 = a3;
  v4 = sub_22C9063DC();
  v5 = sub_22C369824(v4);
  v89 = v6;
  v90 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C3698E4();
  v86 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v81 - v11;
  v13 = sub_22C906C3C();
  v14 = sub_22C369824(v13);
  v81 = v15;
  v82 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v20 = v19 - v18;
  v21 = sub_22C906B9C();
  v22 = sub_22C369824(v21);
  v87 = v23;
  v88 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22C369838();
  v28 = v27 - v26;
  v29 = sub_22C906B6C();
  v30 = sub_22C369824(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22C369838();
  v37 = v36 - v35;
  v38 = sub_22C906C4C();
  v39 = sub_22C369824(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22C369838();
  v46 = v45 - v44;
  (*(v41 + 16))(v45 - v44, a1, v38);
  v47 = (*(v41 + 88))(v46, v38);
  if (v47 == *MEMORY[0x277D1DDC8])
  {
    sub_22C903F7C();
    v48 = sub_22C9063CC();
    v49 = sub_22C90AAFC();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = sub_22C36D240();
      *v50 = 0;
      _os_log_impl(&dword_22C366000, v48, v49, "[RequestParser_v1_0] Got stop request", v50, 2u);
      sub_22C3699EC();
    }

    (*(v89 + 8))(v12, v90);
  }

  else
  {
    if (v47 == *MEMORY[0x277D1DDD0])
    {
      v52 = sub_22C4F0858();
      v53(v52);
      (*(v32 + 32))(v37, v46, v29);
      sub_22C906B5C();
      v54 = sub_22C90A2BC();
      v56 = v55;

      sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_22C90F800;
      sub_22C36A83C();
      v57 = swift_allocObject();
      *(v57 + 16) = v54;
      *(v57 + 24) = v56;
      sub_22C36D2A8();
      v58 = swift_allocObject();
      sub_22C37F780(v58);
      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v59 = swift_allocObject();
      sub_22C377464(v59);
      (*(v32 + 8))(v37, v29);
      return v51;
    }

    if (v47 == *MEMORY[0x277D1DDD8])
    {
      v60 = sub_22C4F0858();
      v61(v60);
      v63 = v87;
      v62 = v88;
      (*(v87 + 32))(v28, v46, v88);
      sub_22C906B5C();
      v64 = sub_22C90A2BC();
      v66 = v65;

      sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_22C90F800;
      sub_22C36A83C();
      v67 = swift_allocObject();
      *(v67 + 16) = v64;
      *(v67 + 24) = v66;
      sub_22C36D2A8();
      v68 = swift_allocObject();
      sub_22C37F780(v68);
      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v69 = swift_allocObject();
      sub_22C377464(v69);
      (*(v63 + 8))(v28, v62);
      return v51;
    }

    if (v47 == *MEMORY[0x277D1DD78])
    {
      v70 = sub_22C4F0858();
      v71(v70);
      v73 = v81;
      v72 = v82;
      (*(v81 + 32))(v20, v46, v82);
      v74 = v83[3];
      v75 = v83[4];
      sub_22C374168(v83, v74);
      v51 = (*(v75 + 8))(v20, v84, v85, v74, v75);
      (*(v73 + 8))(v20, v72);
      return v51;
    }

    v77 = v86;
    sub_22C903F7C();
    v78 = sub_22C9063CC();
    v79 = sub_22C90AADC();
    if (sub_22C369E90(v79))
    {
      v80 = sub_22C36D240();
      *v80 = 0;
      _os_log_impl(&dword_22C366000, v78, v77, "[RequestParser_v1_0] Unsupported RequestContent type", v80, 2u);
      sub_22C3699EC();
    }

    (*(v89 + 8))(v77, v90);
  }

  (*(v41 + 8))(v46, v38);
  return MEMORY[0x277D84F90];
}

uint64_t sub_22C4EDEA8(void (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v350 = a2;
  v340 = sub_22C906C3C();
  v3 = sub_22C369824(v340);
  v343 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v7);
  sub_22C36BA64();
  sub_22C3698F8(v8);
  v345 = sub_22C9063DC();
  v9 = sub_22C369824(v345);
  v346 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v13);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v15);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v16);
  sub_22C36BA64();
  sub_22C3698F8(v17);
  v339 = sub_22C90759C();
  v18 = sub_22C369824(v339);
  v338 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v22);
  sub_22C36BA64();
  sub_22C3698F8(v23);
  v349 = sub_22C90069C();
  v24 = sub_22C369824(v349);
  v348 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22C369838();
  v347 = v29 - v28;
  v30 = sub_22C3A5908(&qword_27D9BD7C8, &unk_22C922F50);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v32);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v33);
  sub_22C36BA64();
  sub_22C3698F8(v34);
  v355 = sub_22C902B3C();
  v35 = sub_22C369824(v355);
  v351 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v39);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v40);
  sub_22C36BA64();
  sub_22C3698F8(v41);
  v354 = sub_22C901FAC();
  v42 = sub_22C369824(v354);
  v352 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v46);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v47);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v48);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v49);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v50);
  sub_22C36BA64();
  sub_22C3698F8(v51);
  v359 = sub_22C906BEC();
  v52 = sub_22C369824(v359);
  v358 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v56);
  sub_22C36BA64();
  sub_22C3698F8(v57);
  v58 = sub_22C906B6C();
  v59 = sub_22C369824(v58);
  v61 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v59);
  sub_22C369838();
  v66 = v65 - v64;
  v67 = sub_22C906B9C();
  v68 = sub_22C369824(v67);
  v70 = v69;
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v68);
  sub_22C369838();
  v75 = v74 - v73;
  v76 = sub_22C906BCC();
  v77 = sub_22C369824(v76);
  v79 = v78;
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v77);
  sub_22C369838();
  v84 = v83 - v82;
  v356 = a1;
  sub_22C906C2C();
  v85 = v79[11];
  v86 = sub_22C36FCCC();
  v88 = v87(v86);
  if (v88 == *MEMORY[0x277D1DD80])
  {
    v90 = v79[12];
    v89 = (v79 + 12);
    v91 = sub_22C36FCCC();
    v92(v91);
    (*(v61 + 32))(v66, v84, v58);
    sub_22C906B5C();
    v94 = v93;
    v95 = sub_22C90A2BC();
    v97 = v96;

    sub_22C36A83C();
    v98 = swift_allocObject();
    *(v98 + 16) = v95;
    *(v98 + 24) = v97;
    sub_22C36D2A8();
    v99 = swift_allocObject();
    sub_22C3701C8(v99);
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v100 = swift_allocObject();
    *(v100 + 16) = v98;
    *(v94 + 32) = v100;
    sub_22C374C14();
    sub_22C591F6C();
    v102 = v101;
    v75 = *(v101 + 16);
    if (v75 >= *(v101 + 24) >> 1)
    {
      sub_22C4F0810();
      v102 = v313;
    }

    v103 = v357;
    (*(v61 + 8))(v66, v58);
    *(v102 + 16) = v75 + 1;
    v104 = v102 + 16 * v75;
    *(v104 + 32) = 4;
    *(v104 + 40) = v94 | 0xA000000000000002;
    sub_22C3804B4();
  }

  else
  {
    if (v88 == *MEMORY[0x277D1DD88])
    {
      v105 = v79[12];
      v106 = sub_22C36FCCC();
      v107(v106);
      (*(v70 + 32))(v75, v84, v67);
      sub_22C906B5C();
      v109 = v108;
      v110 = sub_22C90A2BC();
      v112 = v111;

      sub_22C36A83C();
      v113 = swift_allocObject();
      *(v113 + 16) = v110;
      *(v113 + 24) = v112;
      sub_22C36D2A8();
      v114 = swift_allocObject();
      sub_22C3701C8(v114);
      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v115 = swift_allocObject();
      *(v115 + 16) = v113;
      *(v109 + 32) = v115;
      sub_22C374C14();
      sub_22C591F6C();
      v89 = *(v116 + 16);
      v102 = v116;
      v66 = v359;
      if (v89 >= *(v116 + 24) >> 1)
      {
        sub_22C4F0810();
        v102 = v314;
      }

      v58 = v358;
      (*(v70 + 8))(v75, v67);
      *(v102 + 16) = v89 + 1;
      v117 = v102 + 16 * v89;
      *(v117 + 32) = 4;
      *(v117 + 40) = v109 | 0xA000000000000002;
    }

    else
    {
      v118 = v79[1];
      v89 = (v79 + 1);
      v119 = sub_22C36FCCC();
      v120(v119);
      v102 = MEMORY[0x277D84F90];
      sub_22C3804B4();
    }

    v103 = v357;
  }

  sub_22C906BFC();
  v121 = v58[11];
  v122 = sub_22C36D7F0();
  v124 = v123(v122);
  if (v124 == *MEMORY[0x277D1DD98])
  {
    v125 = v58[12];
    v126 = sub_22C36D7F0();
    v127(v126);
    v128 = *v360;
    sub_22C37BA44(v369);
    sub_22C906C1C();
    sub_22C37205C(v364);
    sub_22C4EFABC(v75, v129);
    sub_22C36FB04(v370);
    v130(v75, v349);
    v131 = v355;
    if (sub_22C370B74(v89, 1, v355) == 1)
    {

      sub_22C3770B0(v89, &qword_27D9BD7C8, &unk_22C922F50);
      v132 = &v363;
LABEL_14:
      sub_22C37205C(v132);
      sub_22C903F7C();
      v133 = sub_22C9063CC();
      v134 = sub_22C90AADC();
      if (sub_22C369E90(v134))
      {
        *sub_22C36D240() = 0;
        sub_22C3706C8();
        _os_log_impl(v135, v136, v137, v138, v139, 2u);
        sub_22C372FB0();
      }

      sub_22C38B9FC();
      sub_22C379910();
      v140();
      return MEMORY[0x277D84F90];
    }

    v359 = v102;
    sub_22C3766B4();
    v158(v344, v89, v355);
    sub_22C37205C(v365);
    sub_22C902AEC();
    sub_22C37BA44(v366);
    sub_22C902AFC();
    sub_22C38616C();
    if (!v128)
    {
      v131 = v89;
    }

    v159 = sub_22C4F0868();
    v161 = *(v160 - 256);
    v162(v159);
    v163 = sub_22C90758C();
    v165 = v164;
    (*(v103 + 8))(v344, v161);
    v166 = *(v352 + 16);
    v166(v353, v131, v354);
    sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90FB40;
    sub_22C36A83C();
    v168 = swift_allocObject();
    *(v168 + 16) = 0;
    *(v168 + 24) = 0xE000000000000000;
    sub_22C374C14();
    sub_22C591324();
    sub_22C381688(v169);
    if (v170)
    {
      sub_22C37F204();
      v131 = v315;
    }

    *(v131 + 16) = v161;
    *(v131 + 8 * v102 + 32) = v168;
    sub_22C36A83C();
    v171 = swift_allocObject();
    v171[2] = v163;
    v171[3] = v165;
    v172 = *(v131 + 24);

    if (v102 + 2 > (v172 >> 1))
    {
      sub_22C36BDEC();
      v131 = v316;
    }

    sub_22C37A054();
    *(v173 + 32) = v171;

    sub_22C36A83C();
    v174 = swift_allocObject();
    *(v174 + 16) = 40;
    *(v174 + 24) = 0xE100000000000000;
    if (*(v131 + 16) >= *(v131 + 24) >> 1)
    {
      sub_22C36BDEC();
      v131 = v317;
    }

    sub_22C37A054();
    *(v175 + 32) = v174;
    sub_22C3DB9B0(v131);

    sub_22C369AEC();
    v176 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    sub_22C369AEC();
    v177 = swift_allocObject();
    sub_22C375924(v177);
    swift_allocBox();
    v178 = sub_22C4F0834();
    v166(v179, v353, v172);
    *v171 = v178;
    v180 = *MEMORY[0x277D1D798];
    v181 = sub_22C902D0C();
    sub_22C369A9C(v181);
    (*(v182 + 104))(v171, v180);
    swift_storeEnumTagMultiPayload();
    *(inited + 40) = v176 | 0x2000000000000000;
    sub_22C36A83C();
    v183 = swift_allocObject();
    v367 = 41;
    v368 = 0xE100000000000000;
    *(v183 + 16) = sub_22C90A49C();
    *(v183 + 24) = v184;
    *(inited + 48) = v183;
    v185 = sub_22C3DB9B0(inited);
    swift_setDeallocating();
    sub_22C58FFB0();
    sub_22C369AEC();
    v186 = swift_allocObject();
    sub_22C369AEC();
    v187 = swift_allocObject();
    *(v187 + 16) = v185;
    *(v186 + 16) = v187;
    v102 = v359;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C37285C();
      v102 = v318;
    }

    sub_22C388FB0();
    if (v170)
    {
      sub_22C4F0810();
      v102 = v319;
    }

    sub_22C3706B4();
    v189 = *(*(v188 - 256) + 8);
    v189(v353, v354);
    v189(v342, v354);
    v189(v341, v354);
    sub_22C36FB04(v371);
    v191 = &v367;
    goto LABEL_34;
  }

  v141 = v343;
  if (v124 == *MEMORY[0x277D1DDB0])
  {
    goto LABEL_19;
  }

  if (v124 == *MEMORY[0x277D1DDA0])
  {
    v192 = v58[12];
    v193 = sub_22C36D7F0();
    v194(v193);
    v195 = *v360;
    sub_22C37BA44(v369);
    sub_22C906C1C();
    sub_22C37205C(v361);
    sub_22C4EFABC(v75, v196);
    sub_22C36FB04(v370);
    v197(v75, v349);
    if (sub_22C370B74(v89, 1, v355) == 1)
    {

      sub_22C3770B0(v89, &qword_27D9BD7C8, &unk_22C922F50);
      v132 = &v360;
      goto LABEL_14;
    }

    v207 = v102;
    sub_22C3766B4();
    v208(v335, v89, v355);
    sub_22C902AFC();
    v209 = *(v338 + 104);
    v210 = sub_22C4F0868();
    v212 = *(v211 - 256);
    v213(v210);
    v214 = sub_22C90758C();
    v216 = v215;
    v217 = v338 + 8;
    (*(v338 + 8))(v335, v212);
    sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
    v218 = swift_initStackObject();
    *(v218 + 16) = xmmword_22C90FB40;
    sub_22C36A83C();
    v219 = swift_allocObject();
    *(v219 + 16) = 0;
    *(v219 + 24) = 0xE000000000000000;
    sub_22C374C14();
    sub_22C591324();
    sub_22C381688(v220);
    if (v170)
    {
      sub_22C37F204();
      v212 = v322;
    }

    *(v212 + 16) = v217;
    *(v212 + 8 * v102 + 32) = v219;
    sub_22C36A83C();
    v221 = swift_allocObject();
    v221[2] = v214;
    v221[3] = v216;
    v222 = *(v212 + 24);

    if (v102 + 2 > (v222 >> 1))
    {
      sub_22C36BDEC();
      v212 = v323;
    }

    sub_22C37A054();
    *(v223 + 32) = v221;

    sub_22C36A83C();
    v224 = swift_allocObject();
    sub_22C38A928(v224);
    if (v170)
    {
      sub_22C36BDEC();
      v212 = v324;
    }

    sub_22C37A054();
    *(v225 + 32) = v224;
    sub_22C3DB9B0(v212);

    sub_22C369AEC();
    v226 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    sub_22C369AEC();
    v227 = swift_allocObject();
    sub_22C375924(v227);
    swift_allocBox();
    v228 = sub_22C4F0834();
    v230 = sub_22C372220(v228, v229);
    v231(v230, v336, v66);
    *v221 = v102;
    v232 = *MEMORY[0x277D1D798];
    v233 = sub_22C902D0C();
    sub_22C369A9C(v233);
    (*(v234 + 104))(v221, v232);
    swift_storeEnumTagMultiPayload();
    *(v218 + 40) = v226 | 0x2000000000000000;
    sub_22C36A83C();
    v235 = swift_allocObject();
    v367 = 41;
    v368 = v222;
    *(v235 + 16) = sub_22C90A49C();
    *(v235 + 24) = v236;
    *(v218 + 48) = v235;
    v237 = sub_22C3DB9B0(v218);
    swift_setDeallocating();
    sub_22C58FFB0();
    sub_22C369AEC();
    v238 = swift_allocObject();
    sub_22C369AEC();
    v239 = swift_allocObject();
    *(v239 + 16) = v237;
    *(v238 + 16) = v239;
    v102 = v207;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C37285C();
      v102 = v325;
    }

    sub_22C388FB0();
    if (v170)
    {
      sub_22C4F0810();
      v102 = v326;
    }

    sub_22C3706B4();
    sub_22C36FB04(v240);
    v241(v336, v354);
    sub_22C36FB04(v371);
    v191 = &v362;
LABEL_34:
    v190(*(v191 - 32), v355);
    sub_22C381A2C();
    return v102;
  }

  if (v124 == *MEMORY[0x277D1DDB8])
  {
    v200 = v58[12];
    v201 = sub_22C36D7F0();
    v202(v201);
    v203 = *v360;
    sub_22C37BA44(&v359);
    sub_22C906C0C();
    v204 = sub_22C45CA3C(v75, v203, 0);
    sub_22C36FB04(v372);
    v205(v75, v354);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C37285C();
      v102 = v320;
    }

    sub_22C388FB0();
    if (v170)
    {
      sub_22C4F0810();
      v102 = v321;
    }

    *(v102 + 16) = v356;
    v206 = v102 + 16 * v75;
    *(v206 + 32) = 1;
    *(v206 + 40) = v204 | 2;
  }

  else
  {
    if (v124 == *MEMORY[0x277D1DDA8])
    {
LABEL_19:
      v359 = v102;
      v142 = v58[1];
      v143 = sub_22C36D7F0();
      v142(v143);
      sub_22C903F7C();
      v144 = v337;
      (*(v343 + 16))(v337, v356, v340);
      v145 = sub_22C9063CC();
      v146 = sub_22C90AACC();
      if (os_log_type_enabled(v145, v146))
      {
        v358 = v142;
        v147 = swift_slowAlloc();
        v360 = swift_slowAlloc();
        v367 = v360;
        *v147 = 136315394;
        *(v147 + 4) = sub_22C37B618("handle(systemPromptResolution:transcript:parsingState:)");
        *(v147 + 12) = 2080;
        sub_22C37BDF4();
        v148 = sub_22C906BDC();
        v149 = v144;
        v151 = v150;
        (v358)(v66, v66);
        (*(v141 + 8))(v149, v340);
        v152 = sub_22C36F9F4(v148, v151, &v367);

        *(v147 + 14) = v152;
        sub_22C3706C8();
        _os_log_impl(v153, v154, v155, v156, v157, 0x16u);
        swift_arrayDestroy();
        sub_22C3699EC();
        sub_22C372FB0();

        sub_22C38B9FC();
      }

      else
      {

        (*(v343 + 8))(v337, v340);
        sub_22C38B9FC();
      }

      sub_22C379910();
      v198();
      return v359;
    }

    if (v124 != *MEMORY[0x277D1DD90])
    {
      v359 = v102;
      sub_22C903F7C();
      v256 = v340;
      (*(v343 + 16))(v103, v356, v340);
      v257 = v343;
      v258 = sub_22C9063CC();
      v259 = sub_22C90AADC();
      if (os_log_type_enabled(v258, v259))
      {
        LODWORD(v357) = v259;
        v260 = swift_slowAlloc();
        v358 = swift_slowAlloc();
        v367 = v358;
        *v260 = 136315394;
        *(v260 + 4) = sub_22C37B618("handle(systemPromptResolution:transcript:parsingState:)");
        *(v260 + 12) = 2080;
        sub_22C37BDF4();
        v261 = sub_22C906BDC();
        v262 = v103;
        v264 = v263;
        v356 = v58[1];
        v356(v66, v66);
        (*(v257 + 8))(v262, v256);
        v265 = sub_22C36F9F4(v261, v264, &v367);

        *(v260 + 14) = v265;
        sub_22C3706C8();
        _os_log_impl(v266, v267, v268, v269, v270, 0x16u);
        swift_arrayDestroy();
        sub_22C3699EC();
        sub_22C372FB0();

        sub_22C38B9FC();
        sub_22C379910();
        v271();
      }

      else
      {

        (*(v343 + 8))(v103, v340);
        sub_22C38B9FC();
        sub_22C379910();
        v309();
        v310 = v58[1];
      }

      v311 = sub_22C36D7F0();
      v312(v311);
      return v359;
    }

    sub_22C906C1C();
    sub_22C37BA44(&v355);
    sub_22C4EFABC(v347, v242);
    sub_22C36FB04(v370);
    v243(v347, v349);
    v244 = v355;
    if (sub_22C370B74(v75, 1, v355) == 1)
    {

      sub_22C3770B0(v75, &qword_27D9BD7C8, &unk_22C922F50);
      sub_22C37205C(&v353);
      sub_22C903F7C();
      v245 = sub_22C9063CC();
      v246 = sub_22C90AADC();
      if (sub_22C369E90(v246))
      {
        *sub_22C36D240() = 0;
        sub_22C3706C8();
        _os_log_impl(v247, v248, v249, v250, v251, 2u);
        sub_22C372FB0();
      }

      sub_22C38B9FC();
      sub_22C379910();
      v252();
      v253 = v58[1];
      v254 = sub_22C36D7F0();
      v255(v254);
      return MEMORY[0x277D84F90];
    }

    sub_22C3766B4();
    v272(v333, v75, v244);
    sub_22C902AEC();
    sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
    v273 = swift_initStackObject();
    *(v273 + 16) = xmmword_22C90FB40;
    sub_22C36A83C();
    v274 = swift_allocObject();
    *(v274 + 16) = 0;
    *(v274 + 24) = 0xE000000000000000;
    sub_22C374C14();
    sub_22C591324();
    v276 = v275;
    v277 = v102;
    if (*(v275 + 16) >= *(v275 + 24) >> 1)
    {
      sub_22C36BDEC();
      v276 = v327;
    }

    sub_22C37A054();
    *(v278 + 32) = v274;
    v279 = *MEMORY[0x277D1E0E8];
    sub_22C38616C();
    v280();
    v281 = sub_22C90758C();
    v283 = v282;
    (*(v103 + 8))(v332, v339);
    sub_22C36A83C();
    v284 = swift_allocObject();
    *(v284 + 16) = v281;
    *(v284 + 24) = v283;
    v285 = *(v276 + 16);
    v286 = *(v276 + 24);

    if (v285 >= v286 >> 1)
    {
      sub_22C37F204();
      v276 = v328;
    }

    *(v276 + 16) = v285 + 1;
    *(v276 + 8 * v285 + 32) = v284;

    sub_22C36A83C();
    v287 = swift_allocObject();
    sub_22C38A928(v287);
    if (v170)
    {
      sub_22C36BDEC();
      v276 = v329;
    }

    sub_22C37A054();
    *(v288 + 32) = v287;
    v289 = sub_22C3DB9B0(v276);

    sub_22C369AEC();
    v290 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    sub_22C369AEC();
    v291 = swift_allocObject();
    *(v291 + 16) = v289;
    *(v290 + 16) = v291;
    *(v273 + 32) = v290 | 0x6000000000000000;
    type metadata accessor for PromptTreeIdentifier.Label(0);
    swift_allocBox();
    v292 = sub_22C4F0834();
    v294 = sub_22C372220(v292, v293);
    v295(v294, v334, v66);
    *v285 = v286;
    v296 = *MEMORY[0x277D1D798];
    v297 = sub_22C902D0C();
    sub_22C369A9C(v297);
    (*(v298 + 104))(v285, v296);
    swift_storeEnumTagMultiPayload();
    *(v273 + 40) = v290 | 0x2000000000000000;
    sub_22C36A83C();
    v299 = swift_allocObject();
    v367 = 41;
    v368 = v58;
    *(v299 + 16) = sub_22C90A49C();
    *(v299 + 24) = v300;
    *(v273 + 48) = v299;
    v301 = sub_22C3DB9B0(v273);
    swift_setDeallocating();
    sub_22C58FFB0();
    sub_22C369AEC();
    v302 = swift_allocObject();
    sub_22C369AEC();
    v303 = swift_allocObject();
    *(v303 + 16) = v301;
    *(v302 + 16) = v303;
    v102 = v277;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C37285C();
      v102 = v330;
    }

    v304 = v359;
    v305 = v358;
    sub_22C388FB0();
    if (v170)
    {
      sub_22C4F0810();
      v102 = v331;
    }

    sub_22C3706B4();
    sub_22C36FB04(v306);
    v307(v334, v354);
    sub_22C36FB04(v371);
    v308(v333, v355);
    sub_22C381A2C();
    (v305[1])(v360, v304);
  }

  return v102;
}

uint64_t sub_22C4EFABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a1;
  v83 = a2;
  v93 = sub_22C9026BC();
  v81 = *(v93 - 8);
  v2 = *(v81 + 64);
  MEMORY[0x28223BE20](v93);
  v92 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_22C902B3C();
  v94 = *(v87 - 8);
  v4 = *(v94 + 64);
  v5 = MEMORY[0x28223BE20](v87);
  v82 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v86 = &v78 - v7;
  v91 = sub_22C9089DC();
  v8 = *(v91 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v91);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C90069C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v78 - v19);
  MEMORY[0x28223BE20](v18);
  v22 = &v78 - v21;
  v23 = sub_22C3A5908(&qword_27D9BD7D0, &qword_22C919290);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v84 = (&v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x28223BE20](v25);
  v80 = &v78 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v89 = (&v78 - v30);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v78 - v32;
  MEMORY[0x28223BE20](v31);
  v88 = &v78 - v34;
  v35 = sub_22C9087DC();
  v37 = *(v13 + 16);
  v36 = v13 + 16;
  v85 = v22;
  v38 = v22;
  v39 = v97;
  v37(v38, v97, v12);
  v95 = v20;
  v96 = v12;
  v37(v20, v39, v12);
  v40 = 0;
  v97 = v35;
  v41 = *(v35 + 16);
  v42 = (v36 - 8);
  v43 = (v8 + 88);
  v90 = *MEMORY[0x277D1E820];
  v79 = v8;
  v44 = (v8 + 8);
  while (1)
  {
    if (v41 == v40)
    {
      v40 = v41;
      goto LABEL_9;
    }

    v45 = *(sub_22C908A0C() - 8);
    v46 = v97 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v40;
    sub_22C9087FC();
    v36 = sub_22C90067C();
    (*v42)(v17, v96);
    if (v36)
    {
      break;
    }

LABEL_6:
    v48 = sub_22C9025AC();
    sub_22C36C640(v33, 1, 1, v48);
    sub_22C3770B0(v33, &qword_27D9BD7D0, &qword_22C919290);
    ++v40;
  }

  sub_22C9089EC();
  v36 = v91;
  v47 = (*v43)(v11, v91);
  if (v47 != v90)
  {
    (*v44)(v11, v36);
    goto LABEL_6;
  }

  (*(v79 + 96))(v11, v36);
  v36 = sub_22C9025AC();
  (*(*(v36 - 8) + 32))(v33, v11, v36);
  sub_22C36C640(v33, 0, 1, v36);
  sub_22C3770B0(v33, &qword_27D9BD7D0, &qword_22C919290);
LABEL_9:
  v49 = *(v97 + 16);
  v50 = v86;
  v51 = v88;
  v52 = v89;
  if (v40 == v49)
  {
    v36 = *v42;
    v40 = v96;
    (*v42)(v85, v96);
    v53 = sub_22C9025AC();
    sub_22C36C640(v51, 1, 1, v53);
LABEL_14:

    (v36)(v95, v40);
    v59 = v84;
    sub_22C4F07A0(v51, v84);
    sub_22C9025AC();
    if (sub_22C370B74(v59, 1, v53) == 1)
    {
      sub_22C3770B0(v51, &qword_27D9BD7D0, &qword_22C919290);
      sub_22C3770B0(v59, &qword_27D9BD7D0, &qword_22C919290);
      v60 = v83;
      v61 = v87;
      return sub_22C36C640(v60, 1, 1, v61);
    }

    else
    {
      v36 = sub_22C90259C();
      (*(*(v53 - 8) + 8))(v59, v53);
      v62 = 0;
      v63 = *(v36 + 16);
      v96 = v94 + 16;
      v97 = v63;
      v95 = (v81 + 88);
      LODWORD(v91) = *MEMORY[0x277D1CBA8];
      v90 = *MEMORY[0x277D1CBD0];
      v64 = (v81 + 8);
      v89 = (v94 + 8);
      v84 = (v94 + 32);
      v85 = MEMORY[0x277D84F90];
      v61 = v87;
      while (v97 != v62)
      {
        if (v62 >= *(v36 + 16))
        {
          __break(1u);
          goto LABEL_35;
        }

        v65 = (*(v94 + 80) + 32) & ~*(v94 + 80);
        v66 = v36;
        v40 = *(v94 + 72);
        (*(v94 + 16))(v50, v36 + v65 + v40 * v62, v61);
        v67 = v92;
        sub_22C902B2C();
        v68 = v50;
        v69 = v93;
        v70 = (*v95)(v67, v93);
        (*v64)(v67, v69);
        if (v70 == v91 || v70 == v90)
        {
          v86 = *v84;
          (v86)(v82, v68, v61);
          v72 = v85;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v98 = v72;
          v50 = v68;
          if (isUniquelyReferenced_nonNull_native)
          {
            v74 = v72;
          }

          else
          {
            sub_22C3B6A1C(0, *(v72 + 16) + 1, 1);
            v61 = v87;
            v74 = v98;
          }

          v36 = v66;
          v76 = *(v74 + 16);
          v75 = *(v74 + 24);
          if (v76 >= v75 >> 1)
          {
            sub_22C3B6A1C(v75 > 1, v76 + 1, 1);
            v61 = v87;
            v74 = v98;
          }

          ++v62;
          *(v74 + 16) = v76 + 1;
          v85 = v74;
          (v86)(v74 + v65 + v76 * v40, v82, v61);
        }

        else
        {
          (*v89)(v68, v61);
          ++v62;
          v50 = v68;
          v36 = v66;
        }
      }

      if (*(v85 + 2) > 1uLL)
      {
        sub_22C3770B0(v88, &qword_27D9BD7D0, &qword_22C919290);

        v60 = v83;
        return sub_22C36C640(v60, 1, 1, v61);
      }

      sub_22C58B0B0(v85, v83);

      return sub_22C3770B0(v88, &qword_27D9BD7D0, &qword_22C919290);
    }
  }

  else
  {
    if (v40 >= v49)
    {
LABEL_35:
      __break(1u);
    }

    else
    {
      v54 = *(sub_22C908A0C() - 8);
      v55 = v97 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
      v56 = *(v54 + 72);
      v57 = v85;
      sub_22C4F0554(v52);
      v36 = *v42;
      v40 = v96;
      (*v42)(v57, v96);
      v58 = v80;
      sub_22C4F07A0(v52, v80);
      v53 = sub_22C9025AC();
      if (sub_22C370B74(v58, 1, v53) != 1)
      {
        (*(*(v53 - 8) + 32))(v51, v58, v53);
        sub_22C3770B0(v52, &qword_27D9BD7D0, &qword_22C919290);
        sub_22C36C640(v51, 0, 1, v53);
        goto LABEL_14;
      }
    }

    result = (v36)(v95, v40);
    __break(1u);
  }

  return result;
}

uint64_t sub_22C4F0554@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22C9089DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C90069C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9087FC();
  v12 = sub_22C90067C();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_22C9089EC();
  if ((*(v3 + 88))(v6, v2) != *MEMORY[0x277D1E820])
  {
    (*(v3 + 8))(v6, v2);
LABEL_5:
    v16 = sub_22C9025AC();
    v14 = a1;
    v15 = 1;
    return sub_22C36C640(v14, v15, 1, v16);
  }

  (*(v3 + 96))(v6, v2);
  v13 = sub_22C9025AC();
  (*(*(v13 - 8) + 32))(a1, v6, v13);
  v14 = a1;
  v15 = 0;
  v16 = v13;
  return sub_22C36C640(v14, v15, 1, v16);
}

uint64_t sub_22C4F07A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BD7D0, &qword_22C919290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22C4F0810()
{

  sub_22C591F6C();
}

uint64_t sub_22C4F0834()
{
  v2 = *(v0 - 328);

  return swift_allocBox();
}

uint64_t type metadata accessor for StatementResultParser_v1_0()
{
  result = qword_281431CB8;
  if (!qword_281431CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C4F08F4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 232) = a4;
  *(v5 + 240) = v4;
  *(v5 + 672) = a2;
  *(v5 + 216) = a1;
  *(v5 + 224) = a3;
  v6 = sub_22C906ECC();
  *(v5 + 248) = v6;
  sub_22C3699B8(v6);
  *(v5 + 256) = v7;
  v9 = *(v8 + 64);
  *(v5 + 264) = sub_22C36D0D4();
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = swift_task_alloc();
  v10 = sub_22C9028FC();
  *(v5 + 288) = v10;
  sub_22C3699B8(v10);
  *(v5 + 296) = v11;
  v13 = *(v12 + 64);
  *(v5 + 304) = sub_22C3699D4();
  v14 = sub_22C90281C();
  *(v5 + 312) = v14;
  sub_22C3699B8(v14);
  *(v5 + 320) = v15;
  v17 = *(v16 + 64);
  *(v5 + 328) = sub_22C3699D4();
  v18 = sub_22C902A4C();
  *(v5 + 336) = v18;
  sub_22C3699B8(v18);
  *(v5 + 344) = v19;
  v21 = *(v20 + 64);
  *(v5 + 352) = sub_22C3699D4();
  v22 = sub_22C90286C();
  *(v5 + 360) = v22;
  sub_22C3699B8(v22);
  *(v5 + 368) = v23;
  v25 = *(v24 + 64);
  *(v5 + 376) = sub_22C3699D4();
  v26 = sub_22C9029AC();
  *(v5 + 384) = v26;
  sub_22C3699B8(v26);
  *(v5 + 392) = v27;
  v29 = *(v28 + 64);
  *(v5 + 400) = sub_22C3699D4();
  v30 = sub_22C902D0C();
  *(v5 + 408) = v30;
  sub_22C3699B8(v30);
  *(v5 + 416) = v31;
  v33 = *(v32 + 64);
  *(v5 + 424) = sub_22C3699D4();
  v34 = type metadata accessor for DirectionalTypedValue();
  *(v5 + 432) = v34;
  sub_22C369914(v34);
  v36 = *(v35 + 64);
  *(v5 + 440) = sub_22C3699D4();
  v37 = type metadata accessor for PromptTreeIdentifier(0);
  *(v5 + 448) = v37;
  sub_22C369914(v37);
  v39 = *(v38 + 64);
  *(v5 + 456) = sub_22C36D0D4();
  *(v5 + 464) = swift_task_alloc();
  *(v5 + 472) = swift_task_alloc();
  *(v5 + 480) = swift_task_alloc();
  *(v5 + 488) = swift_task_alloc();
  v40 = sub_22C9020CC();
  *(v5 + 496) = v40;
  sub_22C3699B8(v40);
  *(v5 + 504) = v41;
  v43 = *(v42 + 64);
  *(v5 + 512) = sub_22C3699D4();
  v44 = sub_22C9063DC();
  *(v5 + 520) = v44;
  sub_22C3699B8(v44);
  *(v5 + 528) = v45;
  v47 = *(v46 + 64);
  *(v5 + 536) = sub_22C36D0D4();
  *(v5 + 544) = swift_task_alloc();
  *(v5 + 552) = swift_task_alloc();
  *(v5 + 560) = swift_task_alloc();
  v48 = sub_22C9026BC();
  *(v5 + 568) = v48;
  sub_22C3699B8(v48);
  *(v5 + 576) = v49;
  v51 = *(v50 + 64);
  *(v5 + 584) = sub_22C36D0D4();
  *(v5 + 592) = swift_task_alloc();
  v52 = sub_22C907DEC();
  *(v5 + 600) = v52;
  sub_22C3699B8(v52);
  *(v5 + 608) = v53;
  v55 = *(v54 + 64);
  *(v5 + 616) = sub_22C36D0D4();
  *(v5 + 624) = swift_task_alloc();
  v56 = sub_22C901FAC();
  *(v5 + 632) = v56;
  sub_22C3699B8(v56);
  *(v5 + 640) = v57;
  v59 = *(v58 + 64);
  *(v5 + 648) = sub_22C36D0D4();
  *(v5 + 656) = swift_task_alloc();
  *(v5 + 664) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C4F0DD4, 0, 0);
}

uint64_t sub_22C4F0DD4()
{
  v424 = v0;
  v1 = *(v0 + 664);
  v2 = *(v0 + 624);
  v3 = *(v0 + 608);
  v4 = *(v0 + 600);
  v5 = *(v0 + 592);
  v6 = *(v0 + 576);
  v7 = *(v0 + 568);
  v8 = *(v0 + 216);
  sub_22C906DFC();
  sub_22C906EBC();
  sub_22C907DAC();
  v9 = *(v3 + 8);
  v402 = v3 + 8;
  v9(v2, v4);
  v10 = v6 + 88;
  v11 = *(v6 + 88);
  LODWORD(v8) = v11(v5, v7);
  v12 = *MEMORY[0x277D1CBF0];
  v13 = *(v6 + 8);
  v13(v5, v7);
  v410 = v12;
  v283 = v8 == v12;
  v14 = v0;
  if (v283)
  {
    v15 = *(v0 + 664);
    sub_22C4F290C(*(v0 + 224), *(v0 + 240));
    if ((v16 & 1) == 0)
    {
      v54 = *(v0 + 664);
      v55 = *(v0 + 656);
      v56 = *(v0 + 640);
      v57 = v14[79];
      v58 = v14[70];
      sub_22C903F7C();
      (*(v56 + 16))(v55, v54, v57);
      v59 = sub_22C9063CC();
      v60 = sub_22C90AADC();
      v61 = os_log_type_enabled(v59, v60);
      v62 = v14[82];
      v63 = v14[80];
      v64 = v14[79];
      v65 = v14[70];
      v66 = v14[66];
      v67 = v14[65];
      if (v61)
      {
        v411 = v14[65];
        v68 = swift_slowAlloc();
        v396 = swift_slowAlloc();
        v422[0] = v396;
        *v68 = 136315138;
        sub_22C4E9D34(&qword_27D9BAA48);
        v419 = v14;
        v69 = sub_22C90B47C();
        v403 = v65;
        v71 = v70;
        v72 = sub_22C4F6018();
        v60(v72);
        v73 = v69;
        v14 = v419;
        v74 = sub_22C36F9F4(v73, v71, v422);

        *(v68 + 4) = v74;
        _os_log_impl(&dword_22C366000, v59, v60, "Skipping rendering statement result pertaining to statement ID %s", v68, 0xCu);
        sub_22C36FF94(v396);
        sub_22C3699EC();
        sub_22C3699EC();

        (*(v66 + 8))(v403, v411);
      }

      else
      {

        v138 = sub_22C4F6018();
        v60(v138);
        (*(v66 + 8))(v65, v67);
      }

      (v60)(v14[83], v14[79]);
      goto LABEL_23;
    }
  }

  v377 = v13;
  v395 = v11;
  v17 = *(v0 + 632);
  v18 = *(v0 + 616);
  v19 = *(v0 + 584);
  v389 = *(v0 + 568);
  v20 = *(v0 + 416);
  v383 = *(v0 + 408);
  v385 = *(v0 + 600);
  v21 = *(v0 + 216);
  type metadata accessor for PromptTreeIdentifier.Label(0);
  v22 = swift_allocBox();
  v418 = v0;
  v24 = v23;
  v25 = swift_allocBox();
  sub_22C906DFC();
  *v24 = v25;
  v27 = *(v20 + 104);
  v26 = v20 + 104;
  v375 = *MEMORY[0x277D1D798];
  v380 = v27;
  v27(v24);
  swift_storeEnumTagMultiPayload();
  v28 = v22 | 0x2000000000000000;
  sub_22C906EBC();
  v29 = v18;
  sub_22C907DAC();
  v9(v18, v385);
  v30 = v395(v19, v389);
  if (v30 != v410)
  {
    if (v30 == *MEMORY[0x277D1CB98])
    {
      v14 = v0;
LABEL_11:
      v48 = v14[83];
      v49 = v14[80];
      v50 = v14[79];
      v51 = v14[73];
      v52 = v14[72];
      v53 = v14[71];

      (*(v49 + 8))(v48, v50);
      v377(v51, v53);
LABEL_23:
      v412 = MEMORY[0x277D84F90];
      goto LABEL_24;
    }

    v14 = v0;
    if (v30 == *MEMORY[0x277D1CBA8])
    {
      v75 = *(v0 + 632);
      v76 = *(v0 + 472);
      v77 = *(v0 + 448);
      v78 = *(v0 + 408);
      v79 = *(v0 + 216);
      sub_22C37F224();
      sub_22C38C380(v80, v81, v82, v78);
      swift_storeEnumTagMultiPayload();
      swift_allocBox();
      sub_22C37991C();
      sub_22C906E1C();
      v83 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
      v84 = sub_22C37BE14(*(v83 + 20));
      v380(v84);
      swift_storeEnumTagMultiPayload();
      v85 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v86 = swift_allocBox();
      v88 = v87;
      sub_22C45769C(v76, v87);
      swift_allocBox();
      sub_22C37991C();
      sub_22C486784();
      v89 = sub_22C37F798();
      v91 = sub_22C4F40CC(v89, v90);
      if (v76)
      {
        goto LABEL_6;
      }

      v92 = v91;
      v93 = *(v0 + 664);
      v94 = *(v0 + 640);
      v95 = *(v418 + 632);
      v404 = *(v418 + 584);
      v96 = *(v418 + 576);
      v97 = *(v418 + 568);
      v98 = *(v418 + 472);
      v99 = *(v85 + 48);
      sub_22C36AAE0();
      sub_22C4F5EE4(v100, v101);

      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v102 = swift_allocObject();
      *(v102 + 16) = v92;
      *(v88 + v99) = v102;
      sub_22C4F60C8();
      v104 = v86 | v103;
      sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
      v105 = swift_allocObject();
      v106 = sub_22C37B63C(v105, xmmword_22C90F800);
      v106[2].n128_u64[0] = v107;
      v106[2].n128_u64[1] = v104;
      v412 = v106;

      (*(v94 + 8))(v93, v95);
      v14 = v418;
      v377(v404, v97);
LABEL_24:
      v139 = v14[83];
      v140 = v14;
      v141 = v14[82];
      v142 = v140[81];
      v143 = v140[78];
      v144 = v140[77];
      v145 = v140[74];
      v146 = v140[73];
      v147 = v140[70];
      v148 = v140[69];
      v149 = v140[68];
      v365 = v140[67];
      v366 = v140[64];
      v367 = v140[61];
      v369 = v140[60];
      v371 = v140[59];
      v372 = v140[58];
      v374 = v140[57];
      v376 = v140[55];
      v379 = v140[53];
      v381 = v140[50];
      v382 = v140[47];
      v384 = v140[44];
      v387 = v140[41];
      v392 = v140[38];
      v399 = v140[35];
      v406 = v140[34];
      v420 = v140[33];

      v150 = v140[1];

      return v150(v412);
    }

    if (v30 == *MEMORY[0x277D1CBB0])
    {
      sub_22C372238();
      v152 = *(v0 + 320);
      v151 = *(v418 + 328);
      v153 = *(v418 + 312);
      v414 = *(v418 + 232);
      (*(v154 + 96))(v18);
      (*(v152 + 32))(v151, v18, v153);
      sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22C90F870;
      *(inited + 32) = v28;
      sub_22C36A83C();
      v156 = swift_allocObject();
      *(v418 + 184) = 1886413102;
      *(v418 + 192) = 0xE400000000000000;

      *(v156 + 16) = sub_22C90A49C();
      *(v156 + 24) = v157;
      *(inited + 40) = v156;
      v158 = sub_22C3DB9B0(inited);
      swift_setDeallocating();
      sub_22C58FFB0();
      sub_22C369AEC();
      v159 = swift_allocObject();
      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      sub_22C369AEC();
      v160 = swift_allocObject();
      *(v160 + 16) = v158;
      v407 = v159;
      *(v159 + 16) = v160;
      MEMORY[0x2318AFCE0]();
      *(swift_task_alloc() + 16) = vextq_s8(v414, v414, 8uLL);
      sub_22C4F6030();
      sub_22C3B2D98();
      sub_22C4F60A8();

      v161 = *(v151 + 16);
      if (v161)
      {
        v422[0] = MEMORY[0x277D84F90];
        sub_22C3B63D4();
        v162 = v422[0];
        v163 = (v151 + 40);
        do
        {
          v164 = *(v163 - 1);
          v165 = *v163;
          sub_22C36A83C();
          v166 = swift_allocObject();
          *(v166 + 16) = v164;
          *(v166 + 24) = v165;
          v422[0] = v162;
          v168 = *(v162 + 16);
          v167 = *(v162 + 24);

          if (v168 >= v167 >> 1)
          {
            sub_22C3B63D4();
            v162 = v422[0];
          }

          *(v162 + 16) = v168 + 1;
          *(v162 + 8 * v168 + 32) = v166;
          v163 += 2;
          --v161;
        }

        while (v161);

        v14 = v418;
      }

      else
      {

        v162 = MEMORY[0x277D84F90];
      }

      v246 = v14[83];
      v247 = v14[81];
      v248 = v14[80];
      v249 = v14[79];
      v250 = v14[40];
      v251 = v14[41];
      v252 = v14[39];
      v253 = v14[27];
      sub_22C906E1C();
      v412 = sub_22C4F4A10(v407 | 0x6000000000000000, v162, v247);

      v254 = *(v248 + 8);
      v255 = sub_22C36CA88();
      v254(v255);
      (*(v250 + 8))(v251, v252);
      v256 = v246;
      v257 = v249;
      goto LABEL_53;
    }

    if (v30 == *MEMORY[0x277D1CBB8])
    {
      sub_22C4F5FB4();
      v212 = *(v211 + 376);
      v213 = *(v0 + 368);
      v214 = *(v0 + 360);
      v216 = sub_22C4F6060(v215);
      v217(v216);
      v218 = sub_22C3826E0();
      v219(v218, v0, v214);
      sub_22C37F224();
      sub_22C38C380(v220, v221, v222, v26);
      swift_storeEnumTagMultiPayload();
      v14 = swift_allocBox();
      sub_22C906E1C();
      v223 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
      v224 = sub_22C383030(v223);
      v225(v224);
      swift_storeEnumTagMultiPayload();
      v226 = swift_task_alloc();
      *(v226 + 16) = v212;
      *(v226 + 24) = v28;
LABEL_50:
      sub_22C4F6030();
      sub_22C529BDC(v240, v241);
      sub_22C4F60A8();

      sub_22C36AAE0();
      sub_22C4F5EE4(v22, v242);
      sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
      v243 = swift_allocObject();
      v244 = sub_22C37B63C(v243, xmmword_22C90F800);
      v244[2].n128_u64[0] = v245;
      v244[2].n128_u64[1] = v10 | 2;
      v412 = v244;

      (*(v395 + 1))(v402, v389);
      (*(v213 + 8))(v212, v214);
      goto LABEL_24;
    }

    if (v30 == *MEMORY[0x277D1CBD0])
    {
      sub_22C4F5FB4();
      v212 = *(v227 + 400);
      v213 = *(v0 + 392);
      v214 = *(v0 + 384);
      v229 = sub_22C4F6060(v228);
      v230(v229);
      v231 = sub_22C3826E0();
      v232(v231, v0, v214);
      sub_22C37F224();
      sub_22C38C380(v233, v234, v235, v26);
      swift_storeEnumTagMultiPayload();
      v14 = swift_allocBox();
      sub_22C906E1C();
      v236 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
      v237 = sub_22C383030(v236);
      v238(v237);
      swift_storeEnumTagMultiPayload();
      v239 = swift_task_alloc();
      *(v239 + 16) = v212;
      *(v239 + 24) = v28;
      goto LABEL_50;
    }

    if (v30 == *MEMORY[0x277D1CBD8])
    {
      v258 = *(v0 + 664);
      v259 = *(v0 + 648);
      v260 = *(v0 + 640);
      v261 = *(v418 + 632);
      sub_22C372238();
      v262 = *(v418 + 344);
      v263 = *(v418 + 352);
      v264 = *(v418 + 336);
      v393 = v264;
      v400 = v265;
      v408 = v266;
      v415 = *(v418 + 216);
      v388 = *(v418 + 232);
      (*(v267 + 96))(v29);
      v268 = sub_22C3826E0();
      v269(v268, v29, v264);
      sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
      v270 = swift_initStackObject();
      *(v270 + 16) = xmmword_22C90FB40;
      *(v270 + 32) = v28;
      sub_22C36A83C();
      v271 = swift_allocObject();
      *(v418 + 200) = 46;
      *(v418 + 208) = 0xE100000000000000;

      *(v271 + 16) = sub_22C90A49C();
      *(v271 + 24) = v272;
      *(v270 + 40) = v271;
      sub_22C36A83C();
      v273 = swift_allocObject();
      sub_22C902A0C();
      v274 = sub_22C90A2CC();
      v276 = v275;

      *(v273 + 16) = v274;
      *(v273 + 24) = v276;
      *(v270 + 48) = v273;
      v277 = sub_22C3DB9B0(v270);
      swift_setDeallocating();
      sub_22C58FFB0();
      sub_22C369AEC();
      v278 = swift_allocObject();
      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      sub_22C369AEC();
      v279 = swift_allocObject();
      *(v279 + 16) = v277;
      *(v278 + 16) = v279;
      sub_22C902A3C();
      *(swift_task_alloc() + 16) = vextq_s8(v388, v388, 8uLL);
      sub_22C37A060();
      sub_22C3B2D6C(v280, v281, v282);
      sub_22C4F60A8();

      sub_22C906E1C();
      v412 = sub_22C4F4A10(v278 | 0x6000000000000000, 0, v259);
      v14 = v418;

      v254 = *(v260 + 8);
      (v254)(v259, v400);
      (*(v262 + 8))(v263, v393);
      v256 = v408;
      v257 = v400;
LABEL_53:
      (v254)(v256, v257);
      goto LABEL_24;
    }

    v283 = v30 == *MEMORY[0x277D1CBC0] || v30 == *MEMORY[0x277D1CBE0];
    if (!v283)
    {
      if (v30 == *MEMORY[0x277D1CBA0])
      {
        v299 = *(v0 + 544);
        v300 = *(v0 + 280);
        v301 = *(v0 + 248);
        v302 = *(v0 + 256);
        v303 = *(v0 + 216);
        sub_22C903F7C();
        v304 = *(v302 + 16);
        v304(v300, v303, v301);
        v305 = sub_22C9063CC();
        v306 = sub_22C90AACC();
        v307 = os_log_type_enabled(v305, v306);
        v308 = *(v0 + 544);
        v309 = *(v0 + 528);
        v416 = *(v418 + 520);
        v310 = *(v418 + 280);
        if (!v307)
        {
          v346 = *(v418 + 248);
          v345 = *(v418 + 256);

          (*(v345 + 8))(v310, v346);
          v318 = *(v309 + 8);
          v319 = v308;
          goto LABEL_71;
        }

        v311 = *(v418 + 272);
        sub_22C4F603C();
        v422[0] = sub_22C37EBE8();
        *v308 = 136315395;
        *(v308 + 4) = sub_22C3804C8("handle(statementResult:detailLevel:transcript:parsingState:)");
        *(v308 + 12) = 2085;
        v304(v311, v310, v418);
        sub_22C90A1AC();
        v14 = v418;
        (*(v300 + 8))(v310, v418);
        v312 = sub_22C4F6088();
        v315 = sub_22C36F9F4(v312, v313, v314);

        *(v308 + 14) = v315;
        v316 = "[%s] Unsupported StatementOutcome - (safely) skipping: %{sensitive}s";
        v317 = v306;
LABEL_66:
        _os_log_impl(&dword_22C366000, v305, v317, v316, v308, 0x16u);
        swift_arrayDestroy();
        sub_22C3699EC();
        sub_22C3699EC();

        v318 = *(v309 + 8);
        v319 = v402;
LABEL_71:
        v318(v319, v416);
        goto LABEL_11;
      }

      if (v30 == *MEMORY[0x277D1CBC8])
      {
        v409 = *(v0 + 664);
        v417 = v22 | 0x2000000000000000;
        v320 = *(v0 + 648);
        v321 = *(v0 + 640);
        v322 = *(v418 + 632);
        sub_22C372238();
        v323 = *(v418 + 296);
        v324 = *(v418 + 304);
        v325 = *(v418 + 288);
        v326 = *(v418 + 216);
        v401 = *(v418 + 232);
        (*(v327 + 96))(v29);
        (*(v323 + 32))(v324, v29, v325);
        sub_22C9028EC();
        *(swift_task_alloc() + 16) = vextq_s8(v401, v401, 8uLL);
        sub_22C4F6030();
        sub_22C3B2D6C(v328, v329, v330);
        sub_22C4F60A8();

        v14 = v418;

        sub_22C906E1C();
        v412 = sub_22C4F4A10(v417, v10, v320);

        v254 = *(v321 + 8);
        (v254)(v320, v322);
        (*(v323 + 8))(v324, v325);
        v256 = v409;
        v257 = v322;
        goto LABEL_53;
      }

      if (v30 != *MEMORY[0x277D1CBE8])
      {
        v347 = *(v0 + 536);
        v349 = *(v0 + 256);
        v348 = *(v0 + 264);
        v350 = *(v0 + 248);
        v351 = *(v0 + 216);
        sub_22C903F7C();
        v352 = *(v349 + 16);
        v352(v348, v351, v350);
        v305 = sub_22C9063CC();
        v353 = sub_22C90AADC();
        v354 = os_log_type_enabled(v305, v353);
        v308 = *(v0 + 536);
        v309 = *(v0 + 528);
        v355 = *(v418 + 520);
        if (!v354)
        {
          v362 = *(v418 + 256);
          v363 = *(v418 + 264);
          v364 = *(v418 + 248);

          (*(v362 + 8))(v363, v364);
          (*(v309 + 8))(v308, v355);
          goto LABEL_11;
        }

        v416 = *(v418 + 520);
        v356 = *(v418 + 264);
        v357 = *(v418 + 272);
        v394 = v353;
        sub_22C4F603C();
        v422[0] = sub_22C37EBE8();
        *v308 = 136315395;
        *(v308 + 4) = sub_22C3804C8("handle(statementResult:detailLevel:transcript:parsingState:)");
        *(v308 + 12) = 2085;
        v352(v357, v356, v418);
        v358 = sub_22C90A1AC();
        v360 = v359;
        v14 = v418;
        (*(v348 + 8))(v356, v418);
        v361 = sub_22C36F9F4(v358, v360, v422);

        *(v308 + 14) = v361;
        v316 = "[%s] ❗️ Unsupported StatementOutcome. Please file a radar on Full Planner Runtime: %{sensitive}s";
        v317 = v394;
        goto LABEL_66;
      }
    }

    v284 = *(v0 + 448);
    v285 = *(v0 + 456);
    v76 = *(v0 + 408);
    v286 = *(v0 + 576) + 8;
    v377(*(v0 + 584), *(v0 + 568));
    sub_22C37F224();
    sub_22C38C380(v287, v288, v289, v76);
    swift_storeEnumTagMultiPayload();
    v290 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
    sub_22C48A0B0((v285 + *(v290 + 20)));
    swift_storeEnumTagMultiPayload();
    v291 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
    v292 = swift_allocBox();
    v88 = v293;
    sub_22C45769C(v285, v293);
    swift_allocBox();
    sub_22C37991C();
    sub_22C486784();
    v294 = sub_22C37F798();
    v298 = sub_22C4F59C4(v294, v295, v296, v297, 41, 0xE100000000000000);
    if (v76)
    {
      goto LABEL_6;
    }

    v331 = v298;
    v332 = *(v0 + 664);
    v333 = *(v0 + 640);
    v334 = *(v418 + 632);
    v335 = *(v418 + 456);
    v336 = *(v291 + 48);
    sub_22C36AAE0();
    sub_22C4F5EE4(v337, v338);

    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v339 = swift_allocObject();
    *(v339 + 16) = v331;
    *(v88 + v336) = v339;
    sub_22C4F60C8();
    v341 = v292 | v340;
    sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
    v342 = swift_allocObject();
    v343 = sub_22C37B63C(v342, xmmword_22C90F800);
    v343[2].n128_u64[0] = v344;
    v343[2].n128_u64[1] = v341;
    v412 = v343;

    (*(v333 + 8))(v332, v334);
    goto LABEL_24;
  }

  v31 = *(v0 + 584);
  v33 = *(v0 + 504);
  v32 = *(v418 + 512);
  v34 = *(v418 + 488);
  v35 = *(v418 + 496);
  v36 = *(v418 + 448);
  v37 = *(v418 + 408);
  (*(*(v418 + 576) + 96))(*(v418 + 584), *(v418 + 568));
  (*(v33 + 32))(v32, v31, v35);
  sub_22C37F224();
  sub_22C38C380(v38, v39, v40, v37);
  swift_storeEnumTagMultiPayload();
  v41 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  sub_22C48A0B0((v34 + *(v41 + 20)));
  swift_storeEnumTagMultiPayload();
  v42 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  v43 = swift_allocBox();
  v45 = v44;
  sub_22C45769C(v34, v44);
  swift_allocBox();
  sub_22C37991C();
  sub_22C486784();
  v108 = sub_22C4F59C4(v36 | 0x2000000000000000, v28, 0x6563637573203D20, 0xEB00000000287373, 41, 0xE100000000000000);
  v368 = v41;
  v405 = v43;
  v109 = *(v418 + 512);
  v110 = *(v418 + 488);
  v111 = *(v418 + 440);
  v112 = *(v418 + 416);
  v113 = *(v418 + 424);
  v114 = *(v418 + 408);
  v115 = *(v418 + 240);
  v390 = *(v418 + 232);
  v397 = *(v418 + 432);
  v413 = *(v418 + 672);
  v370 = v42;
  v116 = *(v42 + 48);
  sub_22C36AAE0();
  sub_22C4F5EE4(v117, v118);

  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  sub_22C369AEC();
  v119 = swift_allocObject();
  *(v119 + 16) = v108;
  *(v45 + v116) = v119;
  v120 = v115 + *(type metadata accessor for StatementResultParser_v1_0() + 20);
  v121 = *(v120 + 160);
  v122 = *(v120 + 168);
  ObjectType = swift_getObjectType();
  sub_22C90207C();
  swift_storeEnumTagMultiPayload();
  v124 = *(v390 + 32);
  (v380)(v113, *MEMORY[0x277D1D7F8], v114);
  (*(v122 + 8))(v422, v111, v413 & 1, v124, v113, ObjectType, v122);
  (*(v112 + 8))(v113, v114);
  sub_22C3706D4();
  sub_22C4F5EE4(v111, v125);
  v126 = v422[0];
  v391 = v422[2];
  v398 = v422[1];
  v386 = v422[3];
  v378 = v422[4];
  v373 = v423;
  if (v423)
  {
    v14 = v418;
    v127 = *(v418 + 552);
    sub_22C903F7C();
    v128 = sub_22C9063CC();
    v129 = sub_22C90AACC();
    v130 = os_log_type_enabled(v128, v129);
    v131 = *(v418 + 552);
    v132 = *(v418 + 528);
    v133 = *(v418 + 520);
    if (v130)
    {
      v134 = swift_slowAlloc();
      *v134 = 0;
      _os_log_impl(&dword_22C366000, v128, v129, "[StatementResult] Unable to find a prompt reference for success.returnValue", v134, 2u);
      sub_22C3699EC();
    }

    (*(v132 + 8))(v131, v133);
    v135 = 0;
    v136 = 0x1000000000000007;
    sub_22C4F60C8();
LABEL_36:
    v188 = v405 | v137;
    sub_22C3A5908(&qword_27D9BD7F0, &qword_22C919308);
    v189 = swift_initStackObject();
    v190 = sub_22C37B63C(v189, xmmword_22C90F870);
    v190[2].n128_u64[0] = v191;
    v190[2].n128_u64[1] = v188;
    v192 = &v190[2].n128_i8[8];
    v190[3].n128_u64[0] = v135;
    v190[3].n128_u64[1] = v136;

    v421 = v135;
    sub_22C4F5F3C(v135, v136);
    v193 = 0;
    v412 = MEMORY[0x277D84F90];
LABEL_37:
    v194 = &v192[16 * v193];
    while (++v193 != 3)
    {
      v195 = v194 + 2;
      v196 = *v194;
      v194 += 2;
      if ((~v196 & 0x1000000000000007) != 0)
      {
        v197 = *(v195 - 3);
        sub_22C45C81C(v197, v196);
        v198 = v126;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v201 = *(v412 + 16);
          sub_22C591F6C();
          v412 = v202;
        }

        v199 = *(v412 + 16);
        if (v199 >= *(v412 + 24) >> 1)
        {
          sub_22C591F6C();
          v412 = v203;
        }

        *(v412 + 16) = v199 + 1;
        v200 = v412 + 16 * v199;
        *(v200 + 32) = v197;
        *(v200 + 40) = v196;
        v126 = v198;
        goto LABEL_37;
      }
    }

    v204 = v14[83];
    v205 = v14[80];
    v206 = v14[79];
    v207 = v126;
    v209 = v14[63];
    v208 = v14[64];
    v210 = v14[62];
    swift_setDeallocating();
    sub_22C590068();
    sub_22C4F5F54(v421, v136);

    sub_22C456CE4(v207, v398, v391, v386, v378, v373);

    (*(v209 + 8))(v208, v210);
    (*(v205 + 8))(v204, v206);
    goto LABEL_24;
  }

  v14 = v418;
  v169 = *(v418 + 632);
  v76 = *(v418 + 480);
  v170 = *(v418 + 448);
  v171 = *(v418 + 408);
  v172 = *(v418 + 216);
  sub_22C37F224();
  sub_22C36C640(v173, v174, v175, v171);
  swift_storeEnumTagMultiPayload();
  swift_allocBox();

  sub_22C906E1C();
  v176 = sub_22C37BE14(*(v368 + 20));
  v380(v176);
  swift_storeEnumTagMultiPayload();
  v177 = swift_allocBox();
  v88 = v178;
  sub_22C45769C(v76, v178);
  swift_allocBox();
  sub_22C37991C();
  sub_22C486784();
  v179 = sub_22C37F798();
  v181 = sub_22C375948(v179, v180);
  if (!v76)
  {
    v182 = v181;
    v183 = *(v418 + 480);
    v184 = *(v370 + 48);
    sub_22C36AAE0();
    sub_22C4F5EE4(v185, v186);

    sub_22C369AEC();
    v187 = swift_allocObject();
    *(v187 + 16) = v182;
    *(v88 + v184) = v187;
    sub_22C4F60C8();
    v136 = v177 | v137;
    v135 = 5;
    goto LABEL_36;
  }

LABEL_6:

  sub_22C36AAE0();
  sub_22C4F5EE4(v88, v46);

  return swift_deallocBox();
}

void sub_22C4F290C(uint64_t a1, void *a2)
{
  v3 = v2;
  v322 = a2;
  v286 = sub_22C3A5908(&qword_27D9BD7D8, &qword_22C9192E8);
  v5 = sub_22C36985C(v286);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v288 = v278 - v8;
  v9 = sub_22C3A5908(&qword_27D9BD7E0, &qword_22C9192F0);
  v10 = sub_22C369914(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v13);
  sub_22C36BA64();
  sub_22C3698F8(v14);
  v15 = sub_22C9094EC();
  v16 = sub_22C36A7A4(v15, v335);
  v318 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v20);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v21);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v22);
  sub_22C36BA64();
  v305 = v23;
  v24 = sub_22C3A5908(&qword_27D9BD7E8, &qword_22C923170);
  v25 = sub_22C369914(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v28);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v29);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v30);
  sub_22C36BA64();
  sub_22C3698F8(v31);
  v32 = sub_22C907D6C();
  v33 = sub_22C36A7A4(v32, &v336);
  v306 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v37);
  sub_22C36BA64();
  sub_22C3698F8(v38);
  v39 = sub_22C901FAC();
  v40 = sub_22C36A7A4(v39, &v337);
  v297 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v44);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v45);
  v47 = v278 - v46;
  v48 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v49 = sub_22C369914(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v52);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v53);
  sub_22C36BA64();
  sub_22C3698F8(v54);
  v55 = sub_22C908AEC();
  v56 = sub_22C36A7A4(v55, &v325);
  v291 = v57;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v56);
  sub_22C369838();
  sub_22C3698F8(v61 - v60);
  v62 = sub_22C90880C();
  v63 = sub_22C36A7A4(v62, &v323);
  v289 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v63);
  sub_22C369838();
  sub_22C3698F8(v68 - v67);
  v69 = sub_22C9088CC();
  v70 = sub_22C36A7A4(v69, v328);
  v294 = v71;
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v70);
  sub_22C369838();
  sub_22C3698F8(v75 - v74);
  v76 = sub_22C908A0C();
  v77 = sub_22C369824(v76);
  v323 = v78;
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v77);
  sub_22C369838();
  v83 = v82 - v81;
  v84 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v85 = sub_22C369914(v84);
  v87 = *(v86 + 64);
  MEMORY[0x28223BE20](v85);
  sub_22C369ABC();
  v90 = v88 - v89;
  MEMORY[0x28223BE20](v91);
  v93 = v278 - v92;
  v94 = sub_22C3A5908(&qword_27D9BBAB0, &qword_22C910D10);
  v95 = sub_22C369914(v94);
  v97 = *(v96 + 64);
  MEMORY[0x28223BE20](v95);
  sub_22C369ABC();
  v100 = v98 - v99;
  MEMORY[0x28223BE20](v101);
  v103 = v278 - v102;
  v321 = a1;
  sub_22C9087DC();
  v287 = v3;
  v328[3] = v3;
  sub_22C4F6030();
  sub_22C6B089C();

  sub_22C3E8FB4(v93, v90, &qword_27D9BA808, &qword_22C90C6E0);
  v104 = 1;
  sub_22C36D0A8(v90, 1, v76);
  if (!v150)
  {
    v105 = v323;
    (*(v323 + 32))(v83, v90, v76);
    sub_22C9089EC();
    (*(v105 + 8))(v83, v76);
    v104 = 0;
  }

  sub_22C36DD28(v93, &qword_27D9BA808, &qword_22C90C6E0);
  v106 = sub_22C9089DC();
  sub_22C36C640(v103, v104, 1, v106);
  sub_22C3E8FB4(v103, v100, &qword_27D9BBAB0, &qword_22C910D10);
  sub_22C36D0A8(v100, 1, v106);
  v107 = v103;
  if (v150)
  {
    sub_22C37A060();
    sub_22C36DD28(v108, v109, v110);
    sub_22C37A060();
    goto LABEL_6;
  }

  v114 = *(v106 - 8);
  v115 = v114[11];
  v116 = sub_22C4F6088();
  v118 = v117(v116);
  if (v118 != *MEMORY[0x277D1E6F8])
  {
    sub_22C36DD28(v107, &qword_27D9BBAB0, &qword_22C910D10);
    v171 = v114[1];
    v172 = sub_22C4F6088();
    v173(v172);
    return;
  }

  v278[0] = v107;
  v119 = v114[12];
  v120 = sub_22C4F6088();
  v121(v120);
  (*(v294 + 32))(v293, v100, v295);
  v122 = sub_22C90887C();
  (*(v289 + 16))(v327, v321, v290);
  (*(v291 + 16))(v328[0], v322, v292);
  v313 = v122;
  v310 = *(v122 + 16);
  v123 = 0;
  v317 = v306 + 32;
  v302 = (v318 + 4);
  v301 = (v318 + 11);
  v300 = *MEMORY[0x277D72CB8];
  v299 = *MEMORY[0x277D72C70];
  v298 = *MEMORY[0x277D72CA8];
  v281 = *MEMORY[0x277D72D00];
  v280 = *MEMORY[0x277D72CD8];
  v278[1] = (v318 + 1);
  v318 = (v306 + 8);
  v321 = v297 + 8;
  v279 = *MEMORY[0x277D72C98];
  v124 = v324;
  v125 = v307;
  v126 = v316;
  v306 = v47;
  while (1)
  {
    if (v310 == v123)
    {
      v139 = v310;
LABEL_39:
      v174 = v320;
      goto LABEL_46;
    }

    v127 = sub_22C9070DC();
    sub_22C3699B8(v127);
    v129 = v128;
    v131 = v130;
    v132 = v313 + ((*(v129 + 80) + 32) & ~*(v129 + 80));
    v133 = *(v131 + 72);
    v323 = v123;
    sub_22C9068FC();
    sub_22C3A9BB4(v47, v328[0], v125);
    if (v3)
    {

      v3 = 0;
      v174 = v320;
LABEL_41:
      v139 = v323;
      goto LABEL_45;
    }

    v134 = v315;
    sub_22C3E8FB4(v125, v315, &qword_27D9BD7E8, &qword_22C923170);
    sub_22C36D0A8(v134, 1, v124);
    if (v150)
    {
      sub_22C36DD28(v134, &qword_27D9BD7E8, &qword_22C923170);
      sub_22C4F60D4();
      sub_22C36DD28(v125, &qword_27D9BD7E8, &qword_22C923170);
      v334 = v330[0];
      sub_22C4F5DF8(&v334);
      v333 = *(&v330[1] + 8);
      sub_22C4F5DF8(&v333);
      v174 = v320;
      v139 = v323;
      goto LABEL_45;
    }

    v322 = 0;
    v3 = v125;
    sub_22C36DD28(v125, &qword_27D9BD7E8, &qword_22C923170);
    sub_22C36BA4C(&v334);
    v135(v126, v134, v124);
    sub_22C70F1D0();
    v137 = v136;
    sub_22C70F408();
    v139 = v138;
    sub_22C70F644();
    v141 = v140;
    v142 = v314;
    sub_22C710384();
    v143 = v320;
    sub_22C36D0A8(v142, 1, v320);
    if (v150)
    {
      sub_22C36DD28(v142, &qword_27D9BD7E0, &qword_22C9192F0);
      v144 = v137 | v139 | v141;
      v124 = v324;
      v125 = v3;
      if (v144)
      {
        goto LABEL_43;
      }

LABEL_35:
      sub_22C36BA4C(&v334 + 8);
      v167 = sub_22C4F6094();
      v168(v167);
      sub_22C4F5FA4();
      v47 = v306;
      v169 = sub_22C385620();
      v170(v169);
      sub_22C4F6074();
      goto LABEL_36;
    }

    v303 = v137;
    v3 = v302;
    v145 = *v302;
    v146 = v305;
    (*v302)(v305, v142, v143);
    v147 = sub_22C710DF4(v47);
    v148 = v311;
    v145(v311, v146, v143);
    sub_22C36BA4C(v330);
    v149(v148, v143);
    sub_22C369908(v329);
    v152 = v150 || v151 == v299;
    if (!v152 && v151 != v298)
    {
      break;
    }

    sub_22C4F6008();
    v155 = v154 | v141;
    v124 = v324;
    v125 = v307;
    if (v155)
    {
      goto LABEL_43;
    }

    sub_22C36BA4C(&v334 + 8);
    v156 = sub_22C4F6094();
    v157(v156);
    sub_22C4F5FA4();
    v47 = v306;
    v158 = sub_22C385620();
    v159(v158);
    sub_22C4F6074();
    if (v147)
    {
      goto LABEL_39;
    }

LABEL_36:
    v123 = v139 + 1;
  }

  sub_22C369908(&v314 + 4);
  if (v160)
  {
    v162 = 1;
  }

  else
  {
    v162 = v161 == v280;
  }

  v163 = v162 || v161 == v279;
  v124 = v324;
  if (!v163)
  {
    sub_22C36BA4C(&v312);
    v164(v311, v320);
    sub_22C4F6008();
    v166 = v165 | v141;
    v125 = v307;
    if (v166)
    {
LABEL_43:
      v175 = *v318;
      v174 = v320;
      goto LABEL_44;
    }

    goto LABEL_35;
  }

  sub_22C4F6008();
  v274 = v273 | v141;
  v175 = *v318;
  v174 = v320;
  if ((v274 & 1) == 0)
  {
    v175(v316, v124);
    v3 = v322;
    goto LABEL_41;
  }

LABEL_44:
  v3 = v322;
  v139 = v323;
  v175(v316, v124);
LABEL_45:
  sub_22C4F5FA4();
  v176 = sub_22C385620();
  v177(v176);
LABEL_46:
  v178 = *(v313 + 16);
  v179 = v312;
  if (v139 == v178)
  {
    v180 = 1;
    v181 = v325;
    v182 = v285;
LABEL_85:
    sub_22C36C640(v182, v180, 1, v181);
    v234 = v284;
    (*(v297 + 16))(v284, v287, v181);
    sub_22C36C640(v234, 0, 1, v181);
    v235 = *(v286 + 48);
    v236 = v288;
    sub_22C3E8FB4(v182, v288, &qword_27D9BC030, &unk_22C911CC0);
    sub_22C3E8FB4(v234, v236 + v235, &qword_27D9BC030, &unk_22C911CC0);
    sub_22C36D0A8(v236, 1, v181);
    if (!v150)
    {
      v249 = v283;
      sub_22C3E8FB4(v236, v283, &qword_27D9BC030, &unk_22C911CC0);
      sub_22C36D0A8(v236 + v235, 1, v181);
      if (!v250)
      {
        v264 = v297 + 32;
        v265 = v282;
        (*(v297 + 32))(v282, v236 + v235, v181);
        sub_22C4E9D34(&qword_27D9BAA28);
        sub_22C90A0BC();

        v266 = sub_22C3886C0();
        v267(v266);
        v268 = sub_22C372880();
        v269(v268);
        v270 = *(v264 - 24);
        v270(v265, v181);
        sub_22C36DD28(v234, &qword_27D9BC030, &unk_22C911CC0);
        sub_22C36DD28(v182, &qword_27D9BC030, &unk_22C911CC0);
        v271 = sub_22C4F5F84();
        v272(v271);
        sub_22C36DD28(v278[0], &qword_27D9BBAB0, &qword_22C910D10);
        v270(v249, v181);
        sub_22C36DD28(v236, &qword_27D9BC030, &unk_22C911CC0);
        return;
      }

      v251 = sub_22C3886C0();
      v252(v251);
      v253 = sub_22C372880();
      v254(v253);
      sub_22C37A060();
      sub_22C36DD28(v255, v256, v257);
      sub_22C37A060();
      sub_22C36DD28(v258, v259, v260);
      v261 = sub_22C4F5F84();
      v262(v261);
      sub_22C36DD28(v278[0], &qword_27D9BBAB0, &qword_22C910D10);
      sub_22C4F5FA4();
      v263(v249, v181);
      goto LABEL_93;
    }

    v237 = sub_22C3886C0();
    v238(v237);
    v239 = sub_22C372880();
    v240(v239);
    sub_22C37A060();
    sub_22C36DD28(v241, v242, v243);
    sub_22C37A060();
    sub_22C36DD28(v244, v245, v246);
    v247 = sub_22C4F5F84();
    v248(v247);
    sub_22C36DD28(v278[0], &qword_27D9BBAB0, &qword_22C910D10);
    sub_22C36D0A8(v236 + v235, 1, v181);
    if (!v150)
    {
LABEL_93:
      sub_22C36DD28(v236, &qword_27D9BD7D8, &qword_22C9192E8);
      return;
    }

    v112 = &qword_27D9BC030;
    v113 = &unk_22C911CC0;
    v111 = v236;
LABEL_6:
    sub_22C36DD28(v111, v112, v113);
    return;
  }

  if (!v178)
  {
    goto LABEL_99;
  }

  v183 = sub_22C9070DC();
  sub_22C369914(v183);
  v322 = v184;
  v320 = v313 + ((*(v184 + 80) + 32) & ~*(v184 + 80));
  v185 = v178 - 1;
  v315 = v178;
  while (2)
  {
    if (v185 < v178)
    {
      v186 = v322[9];
      v323 = v185;
      v187 = v326;
      v316 = v320 + v186 * v185;
      sub_22C9068FC();
      sub_22C3A9BB4(v187, v328[0], v179);
      if (v3)
      {

LABEL_80:
        v228 = v326;
        v229 = v325;
        goto LABEL_83;
      }

      v188 = v174;
      v189 = v309;
      sub_22C3E8FB4(v179, v309, &qword_27D9BD7E8, &qword_22C923170);
      sub_22C36D0A8(v189, 1, v124);
      if (v150)
      {
        sub_22C36DD28(v189, &qword_27D9BD7E8, &qword_22C923170);
        sub_22C4F60D4();
        sub_22C36DD28(v179, &qword_27D9BD7E8, &qword_22C923170);
        v332 = *(&v330[2] + 8);
        sub_22C4F5DF8(&v332);
        v331 = v330[4];
        sub_22C4F5DF8(&v331);
        goto LABEL_80;
      }

      sub_22C36DD28(v179, &qword_27D9BD7E8, &qword_22C923170);
      sub_22C36BA4C(&v334);
      v190 = v319;
      v191(v319, v189, v124);
      v178 = v326;
      sub_22C70F1D0();
      v193 = v192;
      sub_22C36CA88();
      sub_22C70F408();
      v195 = v194;
      sub_22C36CA88();
      sub_22C70F644();
      v197 = v196;
      v124 = v308;
      sub_22C36CA88();
      sub_22C710384();
      sub_22C36D0A8(v124, 1, v174);
      if (!v150)
      {
        LODWORD(v310) = v197;
        LODWORD(v311) = v195;
        LODWORD(v314) = v193;
        v199 = v124;
        v124 = *v302;
        v200 = v296;
        (*v302)(v296, v199, v174);
        v201 = sub_22C36CA88();
        v202 = sub_22C710DF4(v201);
        v203 = v304;
        v124(v304, v200, v188);
        sub_22C36BA4C(v330);
        v204(v203, v188);
        sub_22C369908(v329);
        if (v205)
        {
          v207 = 1;
        }

        else
        {
          v207 = v206 == v299;
        }

        v208 = v207 || v206 == v298;
        v174 = v188;
        if (v208)
        {
          v179 = v312;
          sub_22C3766C4();
          if (v209)
          {
            goto LABEL_81;
          }

          v210 = *v190;
          v211 = sub_22C37FDB4();
          v212(v211);
          sub_22C4F5FA4();
          v213 = sub_22C4F60B4();
          v214(v213);
          if (v202)
          {
            goto LABEL_84;
          }
        }

        else
        {
          sub_22C369908(&v314 + 4);
          if (v215)
          {
            v217 = 1;
          }

          else
          {
            v217 = v216 == v280;
          }

          v218 = v217 || v216 == v279;
          v124 = v324;
          v190 = v318;
          v178 = v315;
          v219 = v314;
          v220 = v311;
          v221 = v310;
          if (v218)
          {
            v275 = *v318;
            if (((v314 | v311 | v310) & 1) == 0)
            {
              v276 = sub_22C37FDB4();
              v277(v276);
              v229 = v325;
              v228 = v326;
              goto LABEL_83;
            }

LABEL_82:
            v229 = v325;
            v228 = v326;
            v231 = sub_22C37FDB4();
            v232(v231);
LABEL_83:
            sub_22C4F5FA4();
            v233(v228, v229);
LABEL_84:
            v182 = v285;
            sub_22C9068FC();
            v180 = 0;
            v181 = v325;
            goto LABEL_85;
          }

          sub_22C36BA4C(&v312);
          v222(v304, v174);
          v198 = v219 | v220 | v221;
LABEL_75:
          v179 = v312;
          if (v198)
          {
LABEL_81:
            v230 = *v190;
            goto LABEL_82;
          }

          v223 = *v190;
          v224 = sub_22C37FDB4();
          v225(v224);
          sub_22C4F5FA4();
          v226 = sub_22C4F60B4();
          v227(v226);
        }

        v185 = v323 - 1;
        continue;
      }

      sub_22C36DD28(v124, &qword_27D9BD7E0, &qword_22C9192F0);
      sub_22C3766C4();
      goto LABEL_75;
    }

    break;
  }

  __break(1u);
LABEL_99:
  __break(1u);
}

uint64_t sub_22C4F40CC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0xE000000000000000;
  sub_22C591324();
  v6 = v5;
  v7 = *(v5 + 16);
  v8 = *(v5 + 24) >> 1;
  v9 = v7 + 1;
  if (v8 <= v7)
  {
    sub_22C591324();
    v6 = v21;
    v8 = *(v21 + 24) >> 1;
  }

  *(v6 + 16) = v9;
  *(v6 + 8 * v7 + 32) = v4;
  v10 = v7 + 2;
  if (v8 < (v7 + 2))
  {
    sub_22C591324();
    v6 = v22;
  }

  *(v6 + 16) = v10;
  *(v6 + 8 * v9 + 32) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = 0xD000000000000016;
  *(v11 + 24) = 0x800000022C931C10;
  v12 = *(v6 + 24);
  v13 = v7 + 3;

  if ((v7 + 3) > (v12 >> 1))
  {
    sub_22C591324();
    v6 = v23;
  }

  *(v6 + 16) = v13;
  *(v6 + 8 * v10 + 32) = v11;
  v14 = v7 + 4;
  if ((v7 + 4) > *(v6 + 24) >> 1)
  {
    sub_22C591324();
    v6 = v24;
  }

  *(v6 + 16) = v14;
  *(v6 + 8 * v13 + 32) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = 41;
  *(v15 + 24) = 0xE100000000000000;
  v16 = *(v6 + 24);

  if ((v7 + 5) > (v16 >> 1))
  {
    sub_22C591324();
    v6 = v25;
  }

  *(v6 + 16) = v7 + 5;
  *(v6 + 8 * v14 + 32) = v15;
  v17 = sub_22C3DB9B0(v6);

  v18 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v18 + 16) = v19;
  return v18 | 0x6000000000000000;
}

uint64_t sub_22C4F4340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C90283C();
  v5 = sub_22C90A2CC();
  v7 = v6;

  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0xE000000000000000;
  sub_22C591324();
  v10 = v9;
  v11 = *(v9 + 16);
  v12 = *(v9 + 24) >> 1;
  v13 = v11 + 1;
  if (v12 <= v11)
  {
    sub_22C591324();
    v10 = v30;
    v12 = *(v30 + 24) >> 1;
  }

  *(v10 + 16) = v13;
  *(v10 + 8 * v11 + 32) = v8;
  v14 = v11 + 2;
  if (v12 < (v11 + 2))
  {
    sub_22C591324();
    v10 = v31;
  }

  *(v10 + 16) = v14;
  *(v10 + 8 * v13 + 32) = a1;
  v15 = swift_allocObject();
  *(v15 + 16) = 0xD000000000000016;
  *(v15 + 24) = 0x800000022C931C10;
  v16 = *(v10 + 24);
  v17 = v11 + 3;

  if ((v11 + 3) > (v16 >> 1))
  {
    sub_22C591324();
    v10 = v32;
  }

  *(v10 + 16) = v17;
  *(v10 + 8 * v14 + 32) = v15;
  v18 = v11 + 4;
  if ((v11 + 4) > *(v10 + 24) >> 1)
  {
    sub_22C591324();
    v10 = v33;
  }

  *(v10 + 16) = v18;
  *(v10 + 8 * v17 + 32) = a3;
  v19 = swift_allocObject();
  *(v19 + 16) = 46;
  *(v19 + 24) = 0xE100000000000000;
  v20 = *(v10 + 24);
  v21 = v11 + 5;

  if ((v11 + 5) > (v20 >> 1))
  {
    sub_22C591324();
    v10 = v34;
  }

  *(v10 + 16) = v21;
  *(v10 + 8 * v18 + 32) = v19;
  v22 = swift_allocObject();
  *(v22 + 16) = v5;
  *(v22 + 24) = v7;
  v23 = *(v10 + 24);

  if ((v11 + 6) > (v23 >> 1))
  {
    sub_22C591324();
    v10 = v35;
  }

  *(v10 + 16) = v11 + 6;
  *(v10 + 8 * v21 + 32) = v22;

  v24 = swift_allocObject();
  *(v24 + 16) = 41;
  *(v24 + 24) = 0xE100000000000000;
  v25 = *(v10 + 16);
  if (v25 >= *(v10 + 24) >> 1)
  {
    sub_22C591324();
    v10 = v36;
  }

  *(v10 + 16) = v25 + 1;
  *(v10 + 8 * v25 + 32) = v24;
  v26 = sub_22C3DB9B0(v10);

  v27 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v27 + 16) = v28;
  return v27 | 0x6000000000000000;
}

uint64_t sub_22C4F46A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C90283C();
  v5 = sub_22C90A2CC();
  v7 = v6;

  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0xE000000000000000;
  sub_22C591324();
  v10 = v9;
  v11 = *(v9 + 16);
  v12 = *(v9 + 24) >> 1;
  v13 = v11 + 1;
  if (v12 <= v11)
  {
    sub_22C591324();
    v10 = v30;
    v12 = *(v30 + 24) >> 1;
  }

  *(v10 + 16) = v13;
  *(v10 + 8 * v11 + 32) = v8;
  v14 = v11 + 2;
  if (v12 < (v11 + 2))
  {
    sub_22C591324();
    v10 = v31;
  }

  *(v10 + 16) = v14;
  *(v10 + 8 * v13 + 32) = a1;
  v15 = swift_allocObject();
  *(v15 + 16) = 0x736465656E203D20;
  *(v15 + 24) = 0xEF2865756C61765FLL;
  v16 = *(v10 + 24);
  v17 = v11 + 3;

  if ((v11 + 3) > (v16 >> 1))
  {
    sub_22C591324();
    v10 = v32;
  }

  *(v10 + 16) = v17;
  *(v10 + 8 * v14 + 32) = v15;
  v18 = v11 + 4;
  if ((v11 + 4) > *(v10 + 24) >> 1)
  {
    sub_22C591324();
    v10 = v33;
  }

  *(v10 + 16) = v18;
  *(v10 + 8 * v17 + 32) = a3;
  v19 = swift_allocObject();
  *(v19 + 16) = 46;
  *(v19 + 24) = 0xE100000000000000;
  v20 = *(v10 + 24);
  v21 = v11 + 5;

  if ((v11 + 5) > (v20 >> 1))
  {
    sub_22C591324();
    v10 = v34;
  }

  *(v10 + 16) = v21;
  *(v10 + 8 * v18 + 32) = v19;
  v22 = swift_allocObject();
  *(v22 + 16) = v5;
  *(v22 + 24) = v7;
  v23 = *(v10 + 24);

  if ((v11 + 6) > (v23 >> 1))
  {
    sub_22C591324();
    v10 = v35;
  }

  *(v10 + 16) = v11 + 6;
  *(v10 + 8 * v21 + 32) = v22;

  v24 = swift_allocObject();
  *(v24 + 16) = 41;
  *(v24 + 24) = 0xE100000000000000;
  v25 = *(v10 + 16);
  if (v25 >= *(v10 + 24) >> 1)
  {
    sub_22C591324();
    v10 = v36;
  }

  *(v10 + 16) = v25 + 1;
  *(v10 + 8 * v25 + 32) = v24;
  v26 = sub_22C3DB9B0(v10);

  v27 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v27 + 16) = v28;
  return v27 | 0x6000000000000000;
}

uint64_t sub_22C4F4A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PromptTreeIdentifier(0);
  v7 = sub_22C36985C(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369ABC();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v79 - v14;
  sub_22C902D0C();
  sub_22C37F224();
  v81 = v16;
  v79[2] = sub_22C38C380(v17, v18, v19, v16);
  swift_storeEnumTagMultiPayload();
  v80 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  sub_22C48A0B0(&v15[*(v80 + 20)]);
  swift_storeEnumTagMultiPayload();
  v20 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  v83 = swift_allocBox();
  v22 = v21;
  sub_22C45769C(v15, v21);
  v79[3] = type metadata accessor for PromptTreeIdentifier.Label(0);
  v23 = swift_allocBox();
  sub_22C486784();
  v24 = a1;
  v25 = 0;
  v26 = sub_22C4F5448(v23 | 0x2000000000000000, v24);
  v82 = v20;
  v27 = *(v20 + 48);
  sub_22C36AAE0();
  sub_22C4F5EE4(v15, v28);

  v84 = sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  sub_22C369AEC();
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  *(v22 + v27) = v29;
  sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90FB40;
  sub_22C36A83C();
  v31 = swift_allocObject();
  v85 = 2683;
  v86 = 0xE200000000000000;
  *(v31 + 16) = sub_22C90A49C();
  *(v31 + 24) = v32;
  *(inited + 32) = v31;
  v33 = *(a2 + 16);
  v34 = MEMORY[0x277D84F90];
  if (v33)
  {
    v79[0] = 0;
    v79[1] = v6;
    v35 = v12;
    v85 = MEMORY[0x277D84F90];
    sub_22C3B63D4();
    v36 = 0;
    v34 = v85;
    v37 = a2 + 32;
    do
    {
      v38 = *(v37 + 8 * v36);

      v39 = sub_22C4F56BC(v36, v38, a3);

      v85 = v34;
      v40 = *(v34 + 16);
      if (v40 >= *(v34 + 24) >> 1)
      {
        sub_22C3B63D4();
        v34 = v85;
      }

      ++v36;
      *(v34 + 16) = v40 + 1;
      *(v34 + 8 * v40 + 32) = v39;
    }

    while (v33 != v36);
    v12 = v35;
    v25 = v79[0];
  }

  v41 = sub_22C3DB9B0(v34);

  sub_22C36D2A8();
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_22C9192A0;
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v43 = swift_allocObject();
  *(v43 + 16) = v41;
  *(v42 + 32) = v43;
  v44 = v42 | 0x8000000000000000;
  sub_22C369AEC();
  v45 = swift_allocObject();
  sub_22C369AEC();
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  *(v45 + 16) = v46;
  v47 = v45 | 0x6000000000000000;
  sub_22C36D2A8();
  v48 = swift_allocObject();
  *(v48 + 16) = 1;
  *(v48 + 24) = 1;
  sub_22C369AEC();
  v49 = swift_allocObject();
  *(v49 + 16) = v47;
  *(v48 + 32) = v49;
  *(inited + 40) = v48 | 0xA000000000000000;
  sub_22C36A83C();
  v50 = swift_allocObject();
  v85 = 32010;
  v86 = 0xE200000000000000;
  *(v50 + 16) = sub_22C90A49C();
  *(v50 + 24) = v51;
  *(inited + 48) = v50;
  v52 = sub_22C3DB9B0(inited);
  swift_setDeallocating();
  sub_22C58FFB0();
  sub_22C369AEC();
  v53 = swift_allocObject();
  sub_22C369AEC();
  v54 = swift_allocObject();
  *(v54 + 16) = v52;
  *(v53 + 16) = v54;
  sub_22C37F224();
  v55 = v81;
  sub_22C36C640(v56, v57, v58, v81);
  swift_storeEnumTagMultiPayload();
  v59 = sub_22C901FAC();
  v60 = swift_allocBox();
  (*(*(v59 - 8) + 16))(v61, a3, v59);
  v62 = *(v80 + 20);
  *(v12 + v62) = v60;
  (*(*(v55 - 8) + 104))(v12 + v62, *MEMORY[0x277D1D798], v55);
  swift_storeEnumTagMultiPayload();
  v63 = v82;
  v64 = swift_allocBox();
  v66 = v65;
  sub_22C45769C(v12, v65);
  v67 = swift_allocBox();
  sub_22C486784();
  v68 = sub_22C375948(v67 | 0x2000000000000000, v53 | 0x6000000000000000);
  if (v25)
  {

    sub_22C36AAE0();
    sub_22C4F5EE4(v66, v78);
    result = swift_deallocBox();
    __break(1u);
  }

  else
  {
    v69 = v68;
    v70 = v83 | 0x4000000000000002;
    v71 = *(v63 + 48);
    sub_22C36AAE0();
    sub_22C4F5EE4(v12, v72);

    sub_22C369AEC();
    v73 = swift_allocObject();
    *(v73 + 16) = v69;
    *(v66 + v71) = v73;
    sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
    v74 = swift_allocObject();
    v75 = sub_22C37B63C(v74, xmmword_22C90F870);
    v75[2].n128_u64[0] = v76;
    v75[2].n128_u64[1] = v70;
    v75[3].n128_u64[0] = v76;
    v75[3].n128_u64[1] = v64 | 0x4000000000000002;

    return v74;
  }

  return result;
}

uint64_t sub_22C4F5020@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  v6 = sub_22C90977C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for StatementResultParser_v1_0();
  sub_22C374168((a1 + *(v11 + 20)), *(a1 + *(v11 + 20) + 24));
  v12 = *(a2 + 32);
  sub_22C47FCDC();
  v13 = sub_22C9096FC();
  v21 = v10;
  sub_22C4FB170(v13, v14, sub_22C436434, v20, v12);

  (*(v7 + 8))(v10, v6);
  v22 = 0xD000000000000012;
  v23 = 0x800000022C931C30;
  v15 = sub_22C90A2AC();
  v17 = v16;

  MEMORY[0x2318B7850](v15, v17);

  result = MEMORY[0x2318B7850](41, 0xE100000000000000);
  v19 = v23;
  *a3 = v22;
  a3[1] = v19;
  return result;
}

void sub_22C4F51E0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = sub_22C902D0C();
  v7 = sub_22C369824(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v14 = v13 - v12;
  v15 = type metadata accessor for DirectionalTypedValue();
  v16 = sub_22C36985C(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v21 = v20 - v19;
  v22 = a2 + *(type metadata accessor for StatementResultParser_v1_0() + 20);
  v24 = *(v22 + 160);
  v23 = *(v22 + 168);
  ObjectType = swift_getObjectType();
  v26 = sub_22C9093BC();
  sub_22C36985C(v26);
  (*(v27 + 16))(v21, a1);
  swift_storeEnumTagMultiPayload();
  v28 = *(a3 + 32);
  (*(v9 + 104))(v14, *MEMORY[0x277D1D7F8], v6);
  (*(v23 + 8))(&v38, v21, 0, v28, v14, ObjectType, v23);
  (*(v9 + 8))(v14, v6);
  sub_22C3706D4();
  sub_22C4F5EE4(v21, v29);
  if (v43)
  {
    sub_22C36A83C();
    v30 = swift_allocObject();
    v38 = 0;
    v39 = 0xE000000000000000;
    *(v30 + 16) = sub_22C90A49C();
    *(v30 + 24) = v31;
  }

  else
  {
    v32 = v41;
    v33 = v42;
    v35 = v39;
    v34 = v40;
    v30 = v38;

    sub_22C456CE4(v30, v35, v34, v32, v33, 0);
  }

  *a4 = v30;
}

uint64_t sub_22C4F5448(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0xE000000000000000;
  sub_22C591324();
  v6 = v5;
  v7 = *(v5 + 16);
  v8 = *(v5 + 24) >> 1;
  v9 = v7 + 1;
  if (v8 <= v7)
  {
    sub_22C591324();
    v6 = v21;
    v8 = *(v21 + 24) >> 1;
  }

  *(v6 + 16) = v9;
  *(v6 + 8 * v7 + 32) = v4;
  v10 = v7 + 2;
  if (v8 < (v7 + 2))
  {
    sub_22C591324();
    v6 = v22;
  }

  *(v6 + 16) = v10;
  *(v6 + 8 * v9 + 32) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = 0xD000000000000010;
  *(v11 + 24) = 0x800000022C931C50;
  v12 = *(v6 + 24);
  v13 = v7 + 3;

  if ((v7 + 3) > (v12 >> 1))
  {
    sub_22C591324();
    v6 = v23;
  }

  *(v6 + 16) = v13;
  *(v6 + 8 * v10 + 32) = v11;
  v14 = v7 + 4;
  if ((v7 + 4) > *(v6 + 24) >> 1)
  {
    sub_22C591324();
    v6 = v24;
  }

  *(v6 + 16) = v14;
  *(v6 + 8 * v13 + 32) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = 41;
  *(v15 + 24) = 0xE100000000000000;
  v16 = *(v6 + 24);

  if ((v7 + 5) > (v16 >> 1))
  {
    sub_22C591324();
    v6 = v25;
  }

  *(v6 + 16) = v7 + 5;
  *(v6 + 8 * v14 + 32) = v15;
  v17 = sub_22C3DB9B0(v6);

  v18 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v18 + 16) = v19;
  return v18 | 0x6000000000000000;
}

uint64_t sub_22C4F56BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v5 = type metadata accessor for PromptTreeIdentifier(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  swift_storeEnumTagMultiPayload();
  v9 = sub_22C3A5908(&qword_27D9BC208, &unk_22C912400);
  v10 = swift_allocBox();
  v12 = v11;
  v13 = *(v9 + 48);
  v14 = sub_22C901FAC();
  v15 = swift_allocBox();
  (*(*(v14 - 8) + 16))(v16, a3, v14);
  *v12 = v15;
  v17 = *MEMORY[0x277D1D798];
  v18 = sub_22C902D0C();
  v19 = *(*(v18 - 8) + 104);
  v19(v12, v17, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = 0;
  *(v20 + 32) = 1;
  *(v12 + v13) = v20;
  v19((v12 + v13), *MEMORY[0x277D1D7E8], v18);
  v21 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
  *&v8[v21] = v10;
  v19(&v8[v21], *MEMORY[0x277D1D7D0], v18);
  swift_storeEnumTagMultiPayload();
  v22 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  v23 = swift_allocBox();
  v25 = v24;
  sub_22C45769C(v8, v24);
  type metadata accessor for PromptTreeIdentifier.Label(0);
  v26 = swift_allocBox();
  sub_22C486784();
  v27 = sub_22C4F59C4(v26 | 0x2000000000000000, v31, 8250, 0xE200000000000000, 0, 0xE000000000000000);
  v28 = *(v22 + 48);
  sub_22C4F5EE4(v8, type metadata accessor for PromptTreeIdentifier);

  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v25 + v28) = v29;
  return v23 | 0x4000000000000000;
}

uint64_t sub_22C4F59C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_22C36A83C();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0xE000000000000000;
  sub_22C591324();
  v12 = v11;
  v13 = *(v11 + 16);
  v14 = *(v11 + 24) >> 1;
  v15 = v13 + 1;
  if (v14 <= v13)
  {
    sub_22C386180();
    v12 = v27;
    v14 = *(v27 + 24) >> 1;
  }

  *(v12 + 16) = v15;
  *(v12 + 8 * v13 + 32) = v10;
  v16 = v13 + 2;
  if (v14 < (v13 + 2))
  {
    sub_22C386180();
    v12 = v28;
  }

  *(v12 + 16) = v16;
  *(v12 + 8 * v15 + 32) = a1;
  sub_22C36A83C();
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  v18 = *(v12 + 24);
  v19 = v13 + 3;

  if ((v13 + 3) > (v18 >> 1))
  {
    sub_22C386180();
    v12 = v29;
  }

  *(v12 + 16) = v19;
  *(v12 + 8 * v16 + 32) = v17;
  v20 = v13 + 4;
  if ((v13 + 4) > *(v12 + 24) >> 1)
  {
    sub_22C386180();
    v12 = v30;
  }

  *(v12 + 16) = v20;
  *(v12 + 8 * v19 + 32) = a2;
  sub_22C36A83C();
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  *(v21 + 24) = a6;
  v22 = *(v12 + 24);

  if ((v13 + 5) > (v22 >> 1))
  {
    sub_22C386180();
    v12 = v31;
  }

  *(v12 + 16) = v13 + 5;
  *(v12 + 8 * v20 + 32) = v21;
  v23 = sub_22C3DB9B0(v12);

  sub_22C369AEC();
  v24 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v24 + 16) = v25;
  return v24 | 0x6000000000000000;
}

uint64_t sub_22C4F5BF8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22C3B0268;

  return sub_22C4F08F4(a1, a2 & 1, a3, a4);
}

BOOL sub_22C4F5CB4(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C9089DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22C9089EC();
  v8 = sub_22C9089AC();
  (*(v4 + 8))(v7, v3);
  v12 = a2;
  v9 = sub_22C5EC13C(sub_22C4F5E4C, v11, v8);

  return v9;
}

uint64_t sub_22C4F5EE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C4F5F3C(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0x1000000000000007) != 0)
  {
    return sub_22C45C81C(a1, a2);
  }

  return a1;
}

uint64_t sub_22C4F5F54(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0x1000000000000007) != 0)
  {
    return sub_22C45C7CC(a1, a2);
  }

  return a1;
}

uint64_t sub_22C4F5F84()
{
  v1 = *(*(v0 - 544) + 8);
  result = *(v0 - 552);
  v3 = *(v0 - 536);
  return result;
}

void sub_22C4F5FB4()
{
  v10 = v0[83];
  v2 = v0[79];
  v9 = v0[80];
  v3 = *(*(v1 - 144) + 584);
  v4 = *(*(v1 - 144) + 576);
  v5 = *(*(v1 - 144) + 568);
  v6 = *(*(v1 - 144) + 464);
  v11 = *(*(v1 - 144) + 448);
  v7 = *(*(v1 - 144) + 408);
  v8 = *(v1 - 144);
}

uint64_t sub_22C4F603C()
{
  v3 = *(v0 + 256);
  v4 = *(*(v1 - 144) + 248);

  return swift_slowAlloc();
}

uint64_t sub_22C4F6060@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v2 - 144) + 216);
  v4 = *(a1 + 96);
  return v1;
}

uint64_t sub_22C4F60B4()
{
  result = *(v0 - 296);
  v2 = *(v0 - 304);
  return result;
}

uint64_t sub_22C4F60D4()
{

  return sub_22C90735C();
}

uint64_t sub_22C4F60F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v36 = sub_22C3A5908(&qword_27D9BB100, &qword_22C90D9A0);
  v7 = *(*(v36 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v36);
  v34 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v33 = (&v28 - v10);
  v35 = sub_22C3A5908(&qword_27D9BD910, &unk_22C91A410);
  v11 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v13 = (&v28 - v12);
  v14 = *(a3 + 16);
  v38 = MEMORY[0x277D84F90];
  sub_22C3B63D4();
  v15 = v38;
  v32 = v14;
  if (!v14)
  {
    return v15;
  }

  v30 = a2 + 32;
  v16 = 0;
  v17 = *(sub_22C3A5908(&qword_27D9BB0F0, &qword_22C90D990) - 8);
  v28 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v29 = v17;
  v31 = *(a2 + 16);
  while (v31 != v16)
  {
    v18 = v36;
    v19 = *(v36 + 48);
    v20 = v29;
    *v33 = *(v30 + 8 * v16);
    v21 = *(v20 + 72);
    sub_22C3A7214();
    v22 = v34;
    sub_22C407C2C();
    v23 = *(v18 + 48);
    v24 = *(v35 + 48);
    *v13 = *v22;
    sub_22C407C2C();

    sub_22C50045C(v13, &v37);
    if (v4)
    {
      goto LABEL_10;
    }

    v4 = 0;
    sub_22C36DD28(v13, &qword_27D9BD910, &unk_22C91A410);
    v25 = v37;
    v38 = v15;
    v26 = *(v15 + 16);
    if (v26 >= *(v15 + 24) >> 1)
    {
      sub_22C3B63D4();
      v15 = v38;
    }

    ++v16;
    *(v15 + 16) = v26 + 1;
    *(v15 + 8 * v26 + 32) = v25;
    if (v32 == v16)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_10:

  result = sub_22C36DD28(v13, &qword_27D9BD910, &unk_22C91A410);
  __break(1u);
  return result;
}

void sub_22C4F6400()
{
  sub_22C36BA7C();
  v3 = sub_22C3A5908(&qword_27D9BD8B8, &qword_22C919AB0);
  sub_22C369914(v3);
  v5 = *(v4 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  v56 = &v53 - v7;
  sub_22C36BA0C();
  v58 = sub_22C90077C();
  v8 = sub_22C369824(v58);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  sub_22C50B438();
  v57 = sub_22C908A8C();
  v13 = sub_22C369824(v57);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v18 = sub_22C3A5908(&qword_27D9BC3B0, &unk_22C912AF0);
  sub_22C369914(v18);
  v20 = *(v19 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v21);
  sub_22C36D0FC();
  v22 = sub_22C90947C();
  v23 = sub_22C369824(v22);
  v54 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22C369ABC();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v31 = sub_22C908B2C();
  MEMORY[0x2318B6010](v31);
  v55 = v0;
  sub_22C908B1C();
  (*(v10 + 8))(v1, v58);
  v32 = *(v15 + 8);
  v33 = sub_22C50B554();
  v34(v33);
  sub_22C36C640(v2, 0, 1, v22);
  v35 = v54;
  v36 = *(v54 + 32);
  v37 = sub_22C36FC08();
  v36(v37);
  v38 = sub_22C371530();
  v36(v38);
  v39 = (*(v35 + 88))(v29, v22);
  LODWORD(v10) = *MEMORY[0x277D72B48];
  (*(v35 + 8))(v29, v22);
  if (v39 != v10)
  {
    sub_22C908A4C();
    v40 = v60;
    v41 = v61;
    sub_22C374168(v59, v60);
    v42 = v56;
    sub_22C57D7C4(v40, v41, v56);
    v43 = sub_22C909A7C();
    sub_22C369A54(v42);
    if (v44)
    {
      sub_22C36DD28(v42, &qword_27D9BD8B8, &qword_22C919AB0);
    }

    else
    {
      v45 = *(v43 - 8);
      v46 = *(v45 + 88);
      v47 = sub_22C377B94();
      v48(v47);
      v49 = *MEMORY[0x277D733C8];
      v50 = *(v45 + 8);
      v51 = sub_22C377B94();
      v52(v51);
    }

    sub_22C36FF94(v59);
  }

  sub_22C36CC48();
}

uint64_t sub_22C4F6864(uint64_t a1, uint64_t a2)
{
  sub_22C50870C();
  if (v3)
  {
    return 0;
  }

  if (sub_22C5085D8(a2))
  {
    return 1;
  }

  sub_22C5089A0();
  if (v5)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

void sub_22C4F68C8()
{
  sub_22C370030();
  v105 = v5;
  v106 = v6;
  v7 = sub_22C9099FC();
  v8 = sub_22C369824(v7);
  v99 = v9;
  v101 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  sub_22C36D0FC();
  v107 = sub_22C9037DC();
  v12 = sub_22C369824(v107);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C3698E4();
  v98 = v17;
  sub_22C369930();
  MEMORY[0x28223BE20](v18);
  sub_22C387B64();
  v108 = sub_22C908EAC();
  v19 = sub_22C369824(v108);
  v104 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C3698E4();
  v97 = v23;
  sub_22C369930();
  MEMORY[0x28223BE20](v24);
  sub_22C50B40C();
  v25 = type metadata accessor for RenderableTool();
  v26 = sub_22C36985C(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C369838();
  v31 = v30 - v29;
  sub_22C50B358();
  sub_22C50A6A4();
  sub_22C50B478();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22C50B340();
    sub_22C50A6FC();
LABEL_3:
    type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
    v32 = sub_22C909F0C();
    sub_22C50B450(v32);
LABEL_18:
    sub_22C36FB20();
    return;
  }

  v96 = v14;
  v95 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
  v33 = sub_22C9036EC();
  sub_22C3699C8(v33);
  v35 = v34;
  v36 = *(v34 + 88);
  v37 = sub_22C36D7F0();
  v39 = v38(v37);
  if (v39 == *MEMORY[0x277D1ECE0])
  {
    v40 = *(v35 + 96);
    v41 = sub_22C36D7F0();
    v42(v41);
    v43 = *(v104 + 32);
    v44 = sub_22C36FBFC();
    v45(v44);
    v100 = v0[3];
    v102 = v0[4];
    sub_22C374168(v0, v100);
    sub_22C50B518();
    sub_22C50B328();
    sub_22C50B0D4(v46, v47);
    v48 = sub_22C38644C();
    sub_22C3A5908(v48, v49);
    sub_22C388F5C();
    sub_22C50B118(v50, &qword_27D9BB828, &unk_22C912AE0);
    sub_22C90AE4C();
    sub_22C481D88(v2, v105, v109, v106, v3, v100, v102);
    if (!v1)
    {
      v66 = *(v96 + 8);
      v67 = sub_22C3726C4();
      v66(v67);
      (*(v104 + 8))(v2, v108);
      v68 = sub_22C50B508();
      v66(v68);
      goto LABEL_18;
    }

    v51 = *(v96 + 8);
    v52 = sub_22C3726C4();
    v51(v52);
    (*(v104 + 8))(v2, v108);
    goto LABEL_10;
  }

  if (v39 == *MEMORY[0x277D1ECE8])
  {
    v53 = *(v35 + 96);
    v54 = sub_22C36D7F0();
    v55(v54);
    (*(v99 + 32))(v4, v31, v101);
    v56 = v0[8];
    v57 = v0[9];
    sub_22C374168(v0 + 5, v56);
    (*(v57 + 8))(v4, v105, v106, v56, v57);
    if (!v1)
    {
      v79 = sub_22C50B61C();
      v80(v79, v101);
      v81 = sub_22C50B4F8();
      v82(v81, v107);
      goto LABEL_18;
    }

    v58 = sub_22C50B61C();
    v59(v58, v101);
    v51 = *(v96 + 8);
    goto LABEL_10;
  }

  if (v39 == *MEMORY[0x277D1ECD8])
  {
    v61 = *(v35 + 8);
    v62 = sub_22C36D7F0();
    v63(v62);
    v64 = sub_22C50B4F8();
    v65(v64, v107);
    goto LABEL_3;
  }

  if (v39 == *MEMORY[0x277D1ECD0])
  {
    v69 = *(v35 + 96);
    v70 = sub_22C36D7F0();
    v71(v70);
    (*(v104 + 32))(v97, v31, v108);
    v72 = v0[4];
    v103 = v0[3];
    sub_22C374168(v0, v103);
    sub_22C50B518();
    sub_22C50B328();
    sub_22C50B0D4(v73, v74);
    v75 = sub_22C36EC8C();
    sub_22C3A5908(v75, v76);
    sub_22C388F5C();
    sub_22C50B118(v77, &qword_27D9BB828, &unk_22C912AE0);
    sub_22C90AE4C();
    (*(v72 + 16))(v97, v105, 1, v109, v106, v98, v103, v72, v95);
    if (!v1)
    {
      v89 = *(v96 + 8);
      v90 = sub_22C3726C4();
      v89(v90);
      v91 = *(v104 + 8);
      v92 = sub_22C50B554();
      v93(v92);
      v94 = sub_22C50B508();
      v89(v94);
      goto LABEL_18;
    }

    v51 = *(v96 + 8);
    v78 = sub_22C3726C4();
    v51(v78);
    (*(v104 + 8))(v97, v108);
LABEL_10:
    v60 = sub_22C50B508();
    v51(v60);
    goto LABEL_18;
  }

  if (v39 == *MEMORY[0x277D1ECF8])
  {
    v83 = *(v35 + 8);
    v84 = sub_22C36D7F0();
    v85(v84);
    type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
    v86 = sub_22C909F0C();
    sub_22C50B450(v86);
    v87 = sub_22C50B4F8();
    v88(v87, v107);
    goto LABEL_18;
  }

  sub_22C90B4EC();
  __break(1u);
}

void sub_22C4F7064()
{
  sub_22C370030();
  v92 = v3;
  v93 = v0;
  v96 = v4;
  v5 = sub_22C90384C();
  v6 = sub_22C369824(v5);
  v88 = v7;
  v89 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C3698A8();
  v87 = v10;
  sub_22C36BA0C();
  v11 = sub_22C9099FC();
  v12 = sub_22C369824(v11);
  v90 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C377D60();
  v91 = sub_22C908EAC();
  v16 = sub_22C369824(v91);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C369ABC();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  sub_22C36CAC0();
  v25 = type metadata accessor for RenderableTool();
  v26 = sub_22C36985C(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C369838();
  v31 = v30 - v29;
  sub_22C50B358();
  sub_22C50A6A4();
  sub_22C441720();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22C50B340();
    sub_22C50A6FC();
LABEL_3:
    type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
    v32 = MEMORY[0x277D84F90];
    v33 = sub_22C909F0C();
    *v96 = 0u;
    *(v96 + 16) = 0u;
    *(v96 + 32) = 0;
    *(v96 + 40) = 1;
    *(v96 + 48) = v33;
    *(v96 + 56) = v32;
LABEL_10:
    sub_22C36FB20();
    return;
  }

  v86 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
  v34 = sub_22C9036EC();
  sub_22C3699C8(v34);
  v36 = v35;
  v37 = *(v35 + 88);
  v38 = sub_22C36EC6C();
  v40 = v39(v38);
  if (v40 == *MEMORY[0x277D1ECE0])
  {
    v41 = *(v36 + 96);
    v42 = sub_22C36EC6C();
    v43(v42);
    v44 = *(v18 + 32);
    v45 = sub_22C36D384();
    v46(v45);
    v47 = v93[3];
    v48 = v93[4];
    sub_22C374168(v93, v47);
    (*(v48 + 32))(v1, v92, v47, v48);
    (*(v18 + 8))(v1, v91);
    goto LABEL_9;
  }

  if (v40 == *MEMORY[0x277D1ECE8])
  {
    v49 = *(v36 + 96);
    v50 = sub_22C36EC6C();
    v51(v50);
    (*(v90 + 32))(v2, v31, v11);
    v52 = v93[8];
    v53 = v93[9];
    sub_22C374168(v93 + 5, v52);
    (*(v53 + 24))(v2, v52, v53);
    v54 = *(v90 + 8);
    v55 = sub_22C36BE34();
    v56(v55);
LABEL_9:
    v57 = sub_22C9037DC();
    sub_22C36985C(v57);
    (*(v58 + 8))(v31 + v86);
    goto LABEL_10;
  }

  if (v40 == *MEMORY[0x277D1ECD8])
  {
    v59 = *(v36 + 8);
    v60 = sub_22C36EC6C();
    v61(v60);
    v62 = sub_22C9037DC();
    sub_22C36985C(v62);
    (*(v63 + 8))(v31 + v86);
    goto LABEL_3;
  }

  if (v40 == *MEMORY[0x277D1ECD0])
  {
    v64 = *(v36 + 96);
    v65 = sub_22C36EC6C();
    v66(v65);
    (*(v18 + 32))(v23, v31, v91);
    v67 = v93[3];
    v68 = v93[4];
    sub_22C374168(v93, v67);
    (*(v68 + 40))(v23, 1, v92, v67, v68);
    (*(v18 + 8))(v23, v91);
    goto LABEL_9;
  }

  if (v40 == *MEMORY[0x277D1ECF8])
  {
    v69 = *(v36 + 96);
    v70 = sub_22C36EC6C();
    v71(v70);
    (*(v88 + 32))(v87, v31, v89);
    v72 = sub_22C374168(v93 + 15, v93[18]);
    v73 = v72[3];
    v74 = v72[4];
    sub_22C374168(v72, v73);
    (*(v74 + 24))(v94, v87, v92, v73, v74);
    v75 = v94[1];
    v76 = v95;
    if (v95)
    {

      v77 = 2;
    }

    else
    {
      v78 = v94[0];
      sub_22C36A83C();
      v77 = swift_allocObject();
      *(v77 + 16) = v78;
      *(v77 + 24) = v75;
    }

    type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
    v79 = MEMORY[0x277D84F90];
    v80 = sub_22C909F0C();
    v81 = sub_22C50B61C();
    v82(v81, v89);
    *v96 = v77;
    sub_22C386CA8(v96);
    *(v83 + 40) = v76;
    *(v83 + 48) = v80;
    *(v83 + 56) = v79;
    v84 = sub_22C9037DC();
    sub_22C36985C(v84);
    (*(v85 + 8))(v31 + v86);
    goto LABEL_10;
  }

  sub_22C90B4EC();
  __break(1u);
}

__n128 sub_22C4F7738@<Q0>(uint64_t a1@<X8>)
{
  v4 = v1;
  sub_22C36A83C();
  v6 = swift_allocObject();
  sub_22C9099DC();
  sub_22C90A2CC();
  sub_22C50B42C();

  *(v6 + 16) = v2;
  *(v6 + 24) = v3;
  type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
  v7 = MEMORY[0x277D84F90];
  sub_22C379FC8();
  sub_22C909F0C();
  v8 = sub_22C36D7FC();
  sub_22C456C30(v8, v9, v10, v11, v12, v13);
  v14 = sub_22C36D7FC();
  sub_22C456CE4(v14, v15, v16, v17, v18, v19);

  v41 = v6;
  v42 = 0u;
  v43 = 0u;
  v20 = sub_22C36D7FC();
  sub_22C456C30(v20, v21, v22, v23, v24, v25);
  sub_22C4F7934(&v41, v4, v39);
  v26 = v40;
  v37 = v39[1];
  v38 = v39[0];

  v27 = sub_22C36FBFC();
  sub_22C456D48(v27, v28);
  v29 = sub_22C36D7FC();
  sub_22C456CE4(v29, v30, v31, v32, v33, v34);
  sub_22C379FC8();
  v35 = sub_22C909F0C();
  result = v38;
  *a1 = v38;
  *(a1 + 16) = v37;
  *(a1 + 32) = v26;
  *(a1 + 40) = 0;
  *(a1 + 48) = v35;
  *(a1 + 56) = v7;
  return result;
}

void sub_22C4F7894(uint64_t a1@<X8>)
{
  sub_22C36A83C();
  v4 = swift_allocObject();
  sub_22C9099DC();
  sub_22C90A2CC();
  sub_22C388CA0();

  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
  v5 = MEMORY[0x277D84F90];
  sub_22C909F0C();
  *a1 = v4;
  sub_22C37274C();
  *(a1 + 40) = 0;
  *(a1 + 48) = v6;
  *(a1 + 56) = v5;
}

uint64_t sub_22C4F7934@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v60 = *a1;
  sub_22C374168((a2 + 40), *(a2 + 64));
  sub_22C4FA220();
  v58 = v4;
  v6 = v5;
  sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90FB40;
  v8 = swift_allocObject();
  v62[0] = 0x6F636F746F727040;
  v62[1] = 0xE90000000000006CLL;
  *(v8 + 16) = sub_22C90A49C();
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = 543581540;
  *(v10 + 24) = 0xE400000000000000;
  sub_22C591324();
  v12 = v11;
  v13 = *(v11 + 16);
  v14 = *(v11 + 24) >> 1;
  v15 = v13 + 1;
  if (v14 <= v13)
  {
    sub_22C591324();
    v12 = v52;
    v14 = *(v52 + 24) >> 1;
  }

  *(v12 + 16) = v15;
  *(v12 + 8 * v13 + 32) = v10;
  v16 = v13 + 2;
  if (v14 < (v13 + 2))
  {
    sub_22C591324();
    v12 = v53;
  }

  *(v12 + 16) = v16;
  *(v12 + 8 * v15 + 32) = v60;
  v17 = swift_allocObject();
  *(v17 + 16) = 0x6F4E203E2D202928;
  *(v17 + 24) = 0xEB000000003A656ELL;
  v18 = *(v12 + 24);

  if ((v13 + 3) > (v18 >> 1))
  {
    sub_22C591324();
    v12 = v54;
  }

  *(v12 + 16) = v13 + 3;
  *(v12 + 8 * v16 + 32) = v17;
  v19 = sub_22C3DB9B0(v12);

  v20 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v20 + 16) = v21;
  *(inited + 40) = v20 | 0x6000000000000000;
  v22 = swift_allocObject();
  *(v22 + 16) = 2236962;
  *(v22 + 24) = 0xE300000000000000;
  sub_22C591324();
  v24 = v23;
  v25 = *(v23 + 16);
  v26 = v25 + 1;
  v27 = a2;
  if (v25 >= *(v23 + 24) >> 1)
  {
    sub_22C591324();
    v24 = v55;
  }

  *(v24 + 16) = v26;
  *(v24 + 8 * v25 + 32) = v22;
  v28 = swift_allocObject();
  *(v28 + 16) = v58;
  *(v28 + 24) = v6;
  v29 = *(v24 + 24);
  v30 = v25 + 2;

  if (v30 > (v29 >> 1))
  {
    sub_22C591324();
    v24 = v56;
  }

  v31 = v27;
  *(v24 + 16) = v30;
  *(v24 + 8 * v26 + 32) = v28;

  v32 = swift_allocObject();
  *(v32 + 16) = 2236962;
  *(v32 + 24) = 0xE300000000000000;
  v33 = *(v24 + 16);
  if (v33 >= *(v24 + 24) >> 1)
  {
    sub_22C591324();
    v24 = v57;
  }

  *(v24 + 16) = v33 + 1;
  *(v24 + 8 * v33 + 32) = v32;
  v34 = sub_22C3DB9B0(v24);

  v35 = swift_allocObject();
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v35 + 16) = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 1;
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  v38 = swift_allocObject();
  *(v38 + 16) = v35 | 0x6000000000000000;
  *(v37 + 32) = v38;
  *(inited + 48) = v37 | 0xA000000000000000;
  v39 = sub_22C3DB9B0(inited);
  swift_setDeallocating();
  sub_22C58FFB0();
  v40 = sub_22C529D00(10, 0xE100000000000000, v39);

  v41 = swift_allocObject();
  v42 = swift_allocObject();
  *(v42 + 16) = v40;
  *(v41 + 16) = v42;
  v43 = type metadata accessor for AssistantSchemaIdentifierRenderer_v1_0(0);
  v44 = sub_22C49FB90(v60, v31 + *(v43 + 24));
  v46 = v45;

  sub_22C3A7214();
  if (v63)
  {
    sub_22C374168(v62, v63);
    sub_22C534758(v44, v46, v61);

    v47 = v61[0];
    v48 = v61[1];
    v49 = v61[2];
    v50 = v61[3];
    result = sub_22C36FF94(v62);
  }

  else
  {

    result = sub_22C36DD28(v62, &qword_27D9BD908, &unk_22C919AF8);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
  }

  *a3 = v41 | 0x6000000000000000;
  a3[1] = v47;
  a3[2] = v48;
  a3[3] = v49;
  a3[4] = v50;
  return result;
}

void sub_22C4F7F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v23;
  a20 = v24;
  v233 = v20;
  v214 = v25;
  v228 = v26;
  v28 = v27;
  HIDWORD(v213) = v29;
  v231 = v30;
  v32 = v31;
  v225 = v33;
  v34 = sub_22C90963C();
  v35 = sub_22C36A7A4(v34, &v251);
  v226 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C3698A8();
  sub_22C3698F8(v39);
  v40 = sub_22C90941C();
  v41 = sub_22C36A7A4(v40, v250);
  v222 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22C3698A8();
  sub_22C3698F8(v45);
  v240 = sub_22C9097AC();
  v46 = sub_22C369824(v240);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22C3698E4();
  v239 = v51;
  sub_22C369930();
  MEMORY[0x28223BE20](v52);
  sub_22C36BA64();
  v238 = v53;
  sub_22C36BA0C();
  v54 = type metadata accessor for PromptToolsHelper.RenderableParameter();
  v55 = sub_22C36A7A4(v54, &a16);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  sub_22C3698E4();
  sub_22C3698D4();
  v59 = MEMORY[0x28223BE20](v58);
  MEMORY[0x28223BE20](v59);
  sub_22C50B40C();
  v60 = *(v28 + 8);
  v215 = *v28;
  v216 = v60;
  v61 = *(v28 + 24);
  v217 = *(v28 + 16);
  v218 = v61;
  v219 = *(v28 + 32);
  LODWORD(v229) = *(v28 + 40);
  v62 = sub_22C908DCC();
  v230 = v32;
  v242[2] = v32;
  v63 = sub_22C47B690(sub_22C50AF00, v242, v62);
  v64 = v21;
  v65 = *(v63 + 16);
  if (v65)
  {
    v234 = v21;
    v220 = v48;
    v245 = MEMORY[0x277D84F90];
    sub_22C3B6F58();
    v66 = v245;
    v237 = sub_22C90981C();
    sub_22C36985C(v237);
    v68 = *(v67 + 16);
    v67 += 16;
    v241 = v68;
    v69 = (*(v67 + 64) + 32) & ~*(v67 + 64);
    v212 = v63;
    v70 = v63 + v69;
    v236 = *(v67 + 56);
    v71 = v235;
    do
    {
      v72 = sub_22C371530();
      v241(v72);
      v73 = (v22 + *(v71 + 20));
      *v73 = 0;
      v73[1] = 0;
      v245 = v66;
      v75 = *(v66 + 16);
      v74 = *(v66 + 24);
      if (v75 >= v74 >> 1)
      {
        sub_22C369AB0(v74);
        sub_22C375CCC();
        sub_22C3B6F58();
        v71 = v235;
        v66 = v245;
      }

      *(v66 + 16) = v75 + 1;
      sub_22C50B654();
      v77 = *(v76 + 72);
      sub_22C3706EC();
      sub_22C50B07C();
      v70 += v236;
      --v65;
    }

    while (v65);

    v48 = v220;
    v64 = v234;
  }

  else
  {

    v66 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v78);
  v210 = v233;
  v245 = v66;

  sub_22C563F04(sub_22C50AF20, &v208);
  v79 = &v246;
  v220 = v64;
  if (v64)
  {
LABEL_35:

    __break(1u);
    return;
  }

  v80 = v245;
  v81 = 0;
  v241 = v245[2];
  v236 = v48 + 8;
  v234 = MEMORY[0x277D84F90];
  v237 = v245;
  while (v241 != v81)
  {
    v79 = *(v80 + 16);
    if (v81 >= v79)
    {
      __break(1u);
      goto LABEL_35;
    }

    sub_22C50B654();
    v83 = *(v82 + 72);
    v235 = v84;
    sub_22C50A6A4();
    sub_22C9097FC();
    sub_22C908FAC();
    sub_22C50B0D4(&qword_27D9BD8C8, MEMORY[0x277D73128]);
    v85 = sub_22C90AE0C();
    v86 = *v236;
    v87 = sub_22C50B578();
    v86(v87);
    v88 = sub_22C3726C4();
    v86(v88);
    if (v85)
    {
      sub_22C50A6FC();
      v81 = (v81 + 1);
    }

    else
    {
      sub_22C3706EC();
      sub_22C50B07C();
      v89 = v234;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v91 = v89;
      v245 = v89;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v92 = *(v89 + 16);
        sub_22C373310();
        sub_22C3B6F58();
        v91 = v245;
      }

      v94 = *(v91 + 16);
      v93 = *(v91 + 24);
      if (v94 >= v93 >> 1)
      {
        sub_22C369AB0(v93);
        sub_22C3B6F58();
        v91 = v245;
      }

      v81 = (v81 + 1);
      *(v91 + 16) = v94 + 1;
      v234 = v91;
      sub_22C3706EC();
      sub_22C50B07C();
    }

    v80 = v237;
  }

  v95 = v233;
  v96 = *(v233 + 24);
  v97 = *(v233 + 32);
  v98 = sub_22C379ED8();
  sub_22C374168(v98, v99);
  v245 = v234;
  v100 = sub_22C36ECB4();
  sub_22C3A5908(v100, v101);
  sub_22C388F5C();
  sub_22C50B118(v102, &qword_27D9BD8D0, &unk_22C919AC0);
  v103 = v228;
  v232 = sub_22C577748();
  v238 = v105;
  v239 = v104;

  v106 = v229;
  if (v229 == 255)
  {
    sub_22C4F92C4(v230, BYTE4(v213) & 1, v103, &v245);
    v116 = v245;
    v114 = v246;
    v112 = v247;
    v110 = v248;
    v108 = v249;
    v118 = v250[0];
    v119 = sub_22C50B648();
    sub_22C456C30(v119, v120, v112, v110, v108, v118);
    sub_22C3E022C(&v245);
    v106 = v229;
    v107 = v219;
    v109 = v218;
    v111 = v217;
    v113 = v216;
    v115 = v215;
    if (v118)
    {
      goto LABEL_22;
    }

LABEL_24:
    v245 = v116;
    v246 = v114;
    v247 = v112;
    v248 = v110;
    v249 = v108;
    sub_22C50AF40(v115, v113, v111, v109, v107, v106);
    v252 = v116;
    v234 = v114;
    v240 = v112;
    v241 = v110;
    v235 = v108;
    sub_22C50B46C();
    sub_22C456C30(v121, v122, v123, v124, v125, v126);
    sub_22C4F940C(&v245, v95, v239, v238, v243);
    v219 = v243[0];
    v218 = v243[1];
    v237 = v243[2];
    v236 = v244;

    v127 = sub_22C36BA00();
    sub_22C456D48(v127, v128);
    v117 = 0;
    goto LABEL_25;
  }

  v107 = v219;
  v108 = v219;
  v109 = v218;
  v110 = v218;
  v111 = v217;
  v112 = v217;
  v113 = v216;
  v114 = v216;
  v115 = v215;
  v116 = v215;
  if ((v229 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_22:
  v234 = v114;
  v240 = v112;
  v241 = v110;
  v235 = v108;
  v252 = v116;
  v219 = v116;
  sub_22C50AF40(v115, v113, v111, v109, v107, v106);
  v218 = 0;
  v237 = 0;
  v236 = 0;
  v117 = 1;
LABEL_25:
  v129 = v227;
  v130 = v95[3];
  v131 = v95[4];
  v132 = sub_22C379ED8();
  sub_22C374168(v132, v133);
  (*(v131 + 8))(v243, v130, v131);
  sub_22C374168(v243, v244);
  v134 = v221;
  MEMORY[0x2318B6290]();
  v135 = v226;
  v136 = v223;
  (*(v226 + 104))(v223, *MEMORY[0x277D72E10], v129);
  sub_22C50B648();
  sub_22C4FCF6C();
  (*(v135 + 8))(v136, v129);
  sub_22C36FB04(&v248);
  v137(v134, v224);
  v138 = v245;
  v139 = v246;
  v141 = v247;
  v140 = v248;
  v142 = v249;
  LODWORD(v135) = v250[0];
  v143 = sub_22C36FF94(v243);
  LODWORD(v224) = v135;
  v231 = v139;
  v228 = v141;
  LODWORD(v223) = v117 | v135;
  LODWORD(v217) = v117;
  v229 = v138;
  v227 = v140;
  v226 = v142;
  if ((v117 | v135))
  {
    v144 = v252;
    if (!v117)
    {
      v144 = v138;
    }

    v145 = v144;
    v146 = v220;
    v147 = v232;
  }

  else
  {
    v216 = v95[3];
    v221 = v95[4];
    v222 = sub_22C374168(v95, v216);
    v215 = sub_22C374168(v95 + 15, v95[18]);
    v148 = v234;
    v149 = v240;
    sub_22C456C30(v252, v234, v240, v241, v235, 0);
    v150 = sub_22C50B478();
    sub_22C456C30(v150, v151, v141, v140, v142, 0);

    sub_22C456C94(v148, v149);

    v152 = sub_22C36BE34();
    sub_22C456C94(v152, v153);
    sub_22C4F9DCC();
    v154 = v138;
    v156 = v155;
    sub_22C36FC2C();
    v157 = sub_22C909F0C();
    sub_22C90981C();
    sub_22C36FC2C();
    v158 = sub_22C909F0C();
    v159 = v216;
    v160 = v221;
    v161 = _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
    sub_22C36FBFC();
    v162 = sub_22C55DE44();
    v209 = v159;
    v210 = v160;
    v208 = v162;
    BYTE1(v207) = 1;
    v163 = v161 & 1;
    v95 = v233;
    LOBYTE(v207) = v163;
    v206 = v214;
    v205 = v222;
    v164 = sub_22C36FC08();
    v147 = v232;
    sub_22C5777F4(v164, v165, v156, v232, v239, v238, v157, v158, v205, v154, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, SBYTE1(v219), v220, v221, v222);
    v230 = v166;

    v167 = v228;

    v168 = v234;
    sub_22C456D48(v234, v240);

    sub_22C456D48(v231, v167);

    sub_22C456D48(v168, v240);
    v145 = v230;

    v143 = sub_22C456D48(v231, v167);
    v146 = v220;
  }

  v169 = v237;
  v170 = v236;
  MEMORY[0x28223BE20](v143);
  v210 = v95;
  sub_22C6047A0(MEMORY[0x277D84F98], sub_22C50AF58, &v208, v147, v171, v172, v173, v174, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223);
  v230 = v175;
  v233 = v146;
  v176 = v223;
  v236 = v170;
  v237 = v169;
  if (v223)
  {
    v177 = 0;
    v178 = 0;
    v179 = 0;
    v180 = v145;
    v181 = v219;
    v182 = v218;
  }

  else
  {
    sub_22C50AF90(v145, 0);
    v179 = v219;
    v182 = v218;
    sub_22C50B4D8();
    sub_22C50AFA0(v183, v184, v185, v186, 0);
    sub_22C50B4D8();
    sub_22C50AFA0(v187, v188, v189, v190, 0);
    sub_22C50AF90(v145, 0);

    sub_22C50B4D8();
    sub_22C456D48(v191, v192);
    v177 = v170;
    v178 = v182;
    v181 = v179;
    v180 = v145;
  }

  v193 = v176 & 1;
  v194 = sub_22C36EC8C();
  v196 = v195;
  sub_22C456C30(v194, v197, v178, v195, v177, v193);

  sub_22C50AF74(v145, v193);
  v198 = sub_22C37EFC0();
  sub_22C456CE4(v198, v231, v228, v227, v226, v199);
  v200 = v181;
  v201 = v217;
  sub_22C50AF84(v200, v182, v237, v236, v217);
  sub_22C456CE4(v252, v234, v240, v241, v235, v201);
  v202 = sub_22C36EC8C();
  sub_22C456CE4(v202, v203, v178, v196, v177, v193);
  v204 = v225;
  *v225 = v180;
  v204[1] = v179;
  v204[2] = v178;
  v204[3] = v196;
  v204[4] = v177;
  *(v204 + 40) = v193;
  v204[6] = v230;
  v204[7] = MEMORY[0x277D84F90];
  sub_22C36FB20();
}

uint64_t sub_22C4F8F04()
{
  v0 = sub_22C9063DC();
  v20 = *(v0 - 8);
  v1 = *(v20 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_22C908D6C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_22C908DEC();
  (*(v5 + 104))(v8, *MEMORY[0x277D72170], v4);
  v19 = v8;
  v10 = sub_22C5EC62C(sub_22C50AFAC, v18, v9);

  (*(v5 + 8))(v8, v4);
  if (!v10)
  {
    return 1;
  }

  if (sub_22C9097DC() == 7368801 && v11 == 0xE300000000000000)
  {
  }

  else
  {
    v13 = sub_22C90B4FC();

    if ((v13 & 1) == 0)
    {
      return 1;
    }
  }

  sub_22C903F7C();
  v15 = sub_22C9063CC();
  v16 = sub_22C90AAFC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_22C366000, v15, v16, "Skipping app parameter for system framework intent", v17, 2u);
    MEMORY[0x2318B9880](v17, -1, -1);
  }

  (*(v20 + 8))(v3, v0);
  return 0;
}

uint64_t sub_22C4F91C0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[3];
  v7 = a3[4];
  sub_22C374168(a3, v6);
  v8 = (*(v7 + 32))(a1, v6, v7);
  v10 = v9;
  v11 = a3[3];
  v12 = a3[4];
  sub_22C374168(a3, v11);
  if (v8 == (*(v12 + 32))(a2, v11, v12) && v10 == v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_22C90B4FC();
  }

  return v15 & 1;
}

void sub_22C4F92C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = v4[8];
  v10 = v4[9];
  sub_22C3766E0(v4 + 5, v9);
  (*(v10 + 8))(v21, a1, a2, a3, v9, v10);
  v11 = v21[0];
  v12 = v21[1];
  v13 = v21[2];
  v14 = v21[3];
  v15 = v22;
  sub_22C36A83C();
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  *(v16 + 24) = v12;
  type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
  v17 = MEMORY[0x277D84F90];
  if (v15 == 1)
  {

    v18 = sub_22C909F0C();
    v19 = sub_22C37335C();
    sub_22C43627C(v19, v20, v13, v14, 1);
  }

  else
  {
    v18 = sub_22C909F0C();
  }

  *a4 = v16;
  sub_22C37274C();
  *(a4 + 40) = 0;
  *(a4 + 48) = v18;
  *(a4 + 56) = v17;
}

void sub_22C4F940C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X8>)
{
  v91 = sub_22C3A5908(&qword_27D9BD8E0, &qword_22C91B410);
  v10 = *(*(v91 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v91);
  v90 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v89 = &v71 - v13;
  v92 = sub_22C3A5908(&qword_27D9BD8E8, &unk_22C919AD0);
  v14 = *(*(v92 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v92);
  v88 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v87 = &v71 - v18;
  MEMORY[0x28223BE20](v17);
  v101 = &v71 - v19;
  v20 = *a1;
  v78 = a2;
  sub_22C3A7214();
  if (!v108)
  {
    sub_22C36DD28(&v106, &qword_27D9BD658, &qword_22C9186E0);
    v59 = 0;
    v60 = 0;
    v61 = 0;
    goto LABEL_15;
  }

  v75 = sub_22C374168(&v106, v108);
  v74 = sub_22C908E7C();
  v76 = v21;
  v86 = *(a4 + 16);
  v77 = a5;
  if (!v86)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_17:
    v62 = type metadata accessor for ToolDefinitionRenderer_v1_0(0);
    v63 = *v75;
    v64 = sub_22C49FB90(v20, v78 + *(v62 + 32));
    v66 = v65;

    sub_22C532604(v64, v66, v25, v63, &v102);

    v61 = v102;
    v67 = v103;
    v60 = v104;
    v59 = v105;
    sub_22C36FF94(&v106);
    if (v67)
    {
      v102 = v61;
      v103 = v67;
      v104 = v60;
      v105 = v59;
      sub_22C474C14(&v106);

      v68 = v107;
      v69 = v108;
      v70 = v77;
      *v77 = v106;
      *(v70 + 2) = v68;
      *(v70 + 3) = v69;
      return;
    }

    a5 = v77;
LABEL_15:
    *a5 = v61;
    a5[1] = 0;
    a5[2] = v60;
    a5[3] = v59;
    return;
  }

  v72 = v20;
  v84 = (v101 + *(v92 + 48));
  v83 = sub_22C90981C();
  v22 = *(v83 - 8);
  v81 = a3 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
  v85 = *(a3 + 16);
  v80 = v22 + 16;
  v82 = v22;
  v79 = v22 + 32;

  v23 = 0;
  v73 = a4;
  v24 = (a4 + 64);
  v25 = MEMORY[0x277D84F90];
  while (v85 != v23)
  {
    v100 = v25;
    v26 = v91;
    v27 = &v89[*(v91 + 48)];
    v28 = v82;
    v29 = *(v82 + 72);
    v99 = v23;
    v30 = v83;
    (*(v82 + 16))(v89, v81 + v29 * v23, v83);
    v32 = *(v24 - 4);
    v31 = *(v24 - 3);
    v34 = *(v24 - 1);
    v96 = *(v24 - 2);
    v33 = v96;
    v97 = v31;
    v95 = v34;
    v98 = v24;
    v35 = *v24;
    v93 = v32;
    v94 = v35;
    *v27 = v32;
    *(v27 + 1) = v31;
    *(v27 + 2) = v33;
    *(v27 + 3) = v34;
    *(v27 + 4) = v35;
    v36 = v90;
    sub_22C407C2C();
    v37 = &v36[*(v26 + 48)];
    v38 = *(v28 + 32);
    v38(v101, v36, v30);
    v39 = *(v37 + 4);
    v40 = *(v37 + 1);
    v41 = v84;
    *v84 = *v37;
    v41[1] = v40;
    *(v41 + 4) = v39;
    v42 = v87;
    sub_22C3A7214();
    v43 = *(v92 + 48);
    v45 = *&v42[v43];
    v44 = *&v42[v43 + 8];
    v46 = *&v42[v43 + 16];
    v47 = *&v42[v43 + 32];
    v48 = v88;
    v49 = &v88[v43];
    v50 = v42;
    v51 = *&v42[v43 + 24];
    v38(v88, v50, v30);
    *v49 = v45;
    *(v49 + 1) = v44;
    *(v49 + 2) = v46;
    *(v49 + 3) = v51;
    *(v49 + 4) = v47;

    sub_22C456C94(v97, v96);
    sub_22C456C94(v44, v46);
    sub_22C36DD28(v48, &qword_27D9BD8E8, &unk_22C919AD0);
    sub_22C36DD28(v101, &qword_27D9BD8E8, &unk_22C919AD0);
    if (v46)
    {
      v25 = v100;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = *(v25 + 16);
        sub_22C591018();
        v25 = v57;
      }

      v53 = v98;
      v52 = v99;
      v54 = *(v25 + 16);
      if (v54 >= *(v25 + 24) >> 1)
      {
        sub_22C591018();
        v25 = v58;
      }

      *(v25 + 16) = v54 + 1;
      v55 = (v25 + 32 * v54);
      v55[4] = v44;
      v55[5] = v46;
      v55[6] = v51;
      v55[7] = v47;
    }

    else
    {
      v52 = v99;
      v25 = v100;
      v53 = v98;
    }

    v23 = v52 + 1;
    v24 = v53 + 5;
    if (v86 == v23)
    {

      v20 = v72;
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_22C4F9AC8(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = a1;
  v4 = sub_22C3A5908(&qword_27D9BD8F0, &unk_22C919AE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - v6;
  v8 = sub_22C3A5908(&qword_27D9BD8E8, &unk_22C919AD0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = sub_22C90981C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C3A7214();
  v18 = &v12[*(v9 + 56)];
  v20 = *v18;
  v19 = *(v18 + 1);
  v21 = *(v18 + 3);
  v27 = *(v18 + 2);
  v28 = v19;
  v26 = *(v18 + 4);
  (*(v14 + 32))(v17, v12, v13);
  v23 = a3[3];
  v22 = a3[4];
  sub_22C374168(a3, v23);
  (*(v22 + 32))(v17, v23, v22);
  (*(v14 + 16))(v7, v17, v13);
  v24 = type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
  *&v7[*(v24 + 20)] = v20;
  sub_22C36C640(v7, 0, 1, v24);

  sub_22C6036EC();

  sub_22C456D48(v28, v27);
  return (*(v14 + 8))(v17, v13);
}

void sub_22C4F9DCC()
{
  sub_22C36BA7C();
  v2 = sub_22C908EAC();
  v3 = sub_22C369824(v2);
  v64 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  sub_22C36BE24();
  v7 = sub_22C9063DC();
  v8 = sub_22C369824(v7);
  v65 = v9;
  v66 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - v13;
  v15 = sub_22C36FC08();
  v17 = sub_22C3A5908(v15, v16);
  sub_22C369914(v17);
  v19 = *(v18 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v20);
  sub_22C50B438();
  v21 = sub_22C3A5908(&qword_27D9BD8C0, &qword_22C919AB8);
  sub_22C369914(v21);
  v23 = *(v22 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v24);
  sub_22C50B41C();
  sub_22C379FC8();
  sub_22C3A7214();
  v25 = sub_22C906A5C();
  v26 = sub_22C369A54(v0);
  if (v35)
  {
    v27 = &qword_27D9BB730;
    v28 = &unk_22C90FE30;
    v29 = v0;
  }

  else
  {
    v30 = MEMORY[0x2318B3F20](v26);
    sub_22C36BBA8(v25);
    v32 = *(v31 + 8);
    v33 = sub_22C379ED8();
    v34(v33);
    sub_22C908E7C();
    sub_22C6055E8(v30, v1);

    v25 = sub_22C90810C();
    sub_22C369A54(v1);
    if (!v35)
    {
      sub_22C9080FC();
      sub_22C50B4BC();
      sub_22C36BBA8(v25);
      (*(v42 + 8))(v1, v25);
      sub_22C903F7C();
      v43 = v64;
      v44 = *(v64 + 16);
      v45 = sub_22C36ECB4();
      v46(v45);
      v47 = sub_22C9063CC();
      v48 = sub_22C90AACC();
      if (os_log_type_enabled(v47, v48))
      {
        v50 = sub_22C36FB44();
        v63 = sub_22C370060();
        v67 = v63;
        *v50 = 136315138;
        v51 = sub_22C908E7C();
        v52 = v43;
        v54 = v53;
        v55 = *(v52 + 8);
        v56 = sub_22C36EBF0();
        v57(v56);
        v58 = sub_22C36F9F4(v51, v54, &v67);

        *(v50 + 4) = v58;
        _os_log_impl(&dword_22C366000, v47, v48, "Using an overriden description for %s", v50, 0xCu);
        sub_22C36FF94(v63);
        sub_22C3699EC();
        sub_22C370510();
      }

      else
      {

        v59 = *(v43 + 8);
        v60 = sub_22C36EBF0();
        v61(v60);
      }

      (*(v65 + 8))(v14, v66);
      goto LABEL_16;
    }

    v27 = &qword_27D9BD8C0;
    v28 = &qword_22C919AB8;
    v29 = v1;
  }

  sub_22C36DD28(v29, v27, v28);
  sub_22C908E2C();
  if (v36)
  {
    sub_22C50B4BC();
  }

  else
  {
    sub_22C903F7C();
    v37 = sub_22C9063CC();
    v38 = sub_22C90AACC();
    if (sub_22C37B204(v38))
    {
      v39 = sub_22C36D240();
      *v39 = 0;
      sub_22C3699EC();
    }

    v40 = sub_22C50B584();
    v41(v40);
  }

LABEL_16:
  sub_22C3726C4();
  sub_22C36CC48();
}

void sub_22C4FA220()
{
  sub_22C36BA7C();
  v4 = v3;
  v5 = sub_22C9099FC();
  v6 = sub_22C369824(v5);
  v60 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369ABC();
  sub_22C3804A4();
  MEMORY[0x28223BE20](v10);
  sub_22C382E94();
  v11 = sub_22C9063DC();
  v12 = sub_22C369824(v11);
  v61 = v13;
  v62 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  sub_22C50B530();
  v16 = sub_22C36FC08();
  v18 = sub_22C3A5908(v16, v17);
  sub_22C369914(v18);
  v20 = *(v19 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v21);
  sub_22C50B438();
  v22 = sub_22C3A5908(&qword_27D9BD8C0, &qword_22C919AB8);
  sub_22C369914(v22);
  v24 = *(v23 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v25);
  sub_22C50B41C();
  sub_22C379FC8();
  sub_22C3A7214();
  v26 = sub_22C906A5C();
  v27 = sub_22C369A54(v1);
  if (v37)
  {
    v28 = &qword_27D9BB730;
    v29 = &unk_22C90FE30;
    v30 = v1;
LABEL_7:
    sub_22C36DD28(v30, v28, v29);
    sub_22C9099DC();
    sub_22C90A2CC();
    sub_22C385D88();

    v63[0] = v4;
    v63[1] = v0;
    sub_22C50B5B8();
    sub_22C37162C();
    sub_22C50B4BC();

    goto LABEL_12;
  }

  v31 = MEMORY[0x2318B3F20](v27);
  sub_22C36BBA8(v26);
  v33 = *(v32 + 8);
  v34 = sub_22C379ED8();
  v35(v34);
  sub_22C9099DC();
  sub_22C6055E8(v31, v2);

  v36 = sub_22C90810C();
  sub_22C369A54(v2);
  if (v37)
  {
    v28 = &qword_27D9BD8C0;
    v29 = &qword_22C919AB8;
    v30 = v2;
    goto LABEL_7;
  }

  sub_22C9080FC();
  sub_22C50B4BC();
  sub_22C36BBA8(v36);
  (*(v38 + 8))(v2, v36);
  sub_22C903F7C();
  v39 = *(v60 + 16);
  v40 = sub_22C50B478();
  v59 = v41;
  v41(v40);
  v42 = sub_22C9063CC();
  v43 = sub_22C90AACC();
  if (sub_22C370048(v43))
  {
    v58 = v43;
    v45 = sub_22C36FB44();
    v57 = sub_22C370060();
    v63[0] = v57;
    *v45 = 136315138;
    v46 = sub_22C3806B8();
    v59(v46);
    sub_22C36D384();
    v47 = sub_22C90A1AC();
    v49 = v48;
    v50 = *(v60 + 8);
    v51 = sub_22C36EBF0();
    v52(v51);
    v53 = sub_22C36F9F4(v47, v49, v63);

    *(v45 + 4) = v53;
    _os_log_impl(&dword_22C366000, v42, v58, "Using an overriden description for %s", v45, 0xCu);
    sub_22C36FF94(v57);
    sub_22C3699EC();
    sub_22C370510();
  }

  else
  {

    v54 = *(v60 + 8);
    v55 = sub_22C36EBF0();
    v56(v55);
  }

  (*(v61 + 8))(v0, v62);
LABEL_12:
  sub_22C3726C4();
  sub_22C36CC48();
}

void sub_22C4FA634()
{
  sub_22C36BA7C();
  v2 = v1;
  v3 = sub_22C908DAC();
  v4 = sub_22C369824(v3);
  v106 = v5;
  v107 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C3698E4();
  v110 = v8;
  sub_22C369930();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22C9063DC();
  v11 = sub_22C369824(v10);
  v108 = v12;
  v109 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C3698E4();
  v111 = v15;
  sub_22C369930();
  MEMORY[0x28223BE20](v16);
  sub_22C36BA64();
  v105 = v17;
  sub_22C36BA0C();
  v18 = sub_22C9099FC();
  v19 = sub_22C369824(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C3698E4();
  v112 = v24;
  sub_22C369930();
  MEMORY[0x28223BE20](v25);
  v27 = &v103 - v26;
  v28 = sub_22C36ECB4();
  v30 = sub_22C3A5908(v28, v29);
  sub_22C369914(v30);
  v32 = *(v31 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v33);
  sub_22C50B530();
  v34 = sub_22C3A5908(&qword_27D9BD8C0, &qword_22C919AB8);
  sub_22C369914(v34);
  v36 = *(v35 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v37);
  v39 = &v103 - v38;
  sub_22C37170C();
  sub_22C3A7214();
  v40 = sub_22C906A5C();
  v41 = sub_22C36D0A8(v0, 1, v40);
  v104 = v21;
  if (v50)
  {
    v42 = v2;
    v43 = &qword_27D9BB730;
    v44 = &unk_22C90FE30;
    v45 = v0;
  }

  else
  {
    v46 = MEMORY[0x2318B3F20](v41);
    sub_22C36BBA8(v40);
    (*(v47 + 8))(v0, v40);
    sub_22C908D7C();
    sub_22C9099DC();
    sub_22C385D88();
    (*(v21 + 8))(v27, v18);
    sub_22C37170C();
    sub_22C6055E8(v46, v48);

    v49 = sub_22C90810C();
    sub_22C36D0A8(v39, 1, v49);
    if (!v50)
    {
      sub_22C9080FC();
      sub_22C50B5FC();
      sub_22C36BBA8(v49);
      v69 = *(v68 + 8);
      v70 = sub_22C36FBFC();
      v71(v70);
      v72 = v105;
      sub_22C903F7C();
      v73 = v106;
      v74 = *(v106 + 16);
      v75 = sub_22C37BD80();
      v76(v75);
      v77 = sub_22C9063CC();
      v78 = sub_22C90AACC();
      if (os_log_type_enabled(v77, v78))
      {
        v80 = sub_22C36FB44();
        v110 = v80;
        v111 = sub_22C370060();
        v113[0] = v111;
        *v80 = 136315138;
        sub_22C908D7C();
        sub_22C90A1AC();
        v81 = *(v73 + 8);
        v82 = sub_22C37BD80();
        v83(v82);
        v84 = sub_22C372164();
        v87 = sub_22C36F9F4(v84, v85, v86);

        v88 = v110;
        *(v110 + 1) = v87;
        _os_log_impl(&dword_22C366000, v77, v78, "Using an overriden description for %s", v88, 0xCu);
        sub_22C36FF94(v111);
        sub_22C3699EC();
        sub_22C37E124();

        sub_22C3701E0();
        v90 = v105;
      }

      else
      {

        v100 = *(v73 + 8);
        v101 = sub_22C37BD80();
        v102(v101);
        sub_22C3701E0();
        v90 = v72;
      }

      v89(v90, v109);
      goto LABEL_17;
    }

    v42 = v2;
    v43 = &qword_27D9BD8C0;
    v44 = &qword_22C919AB8;
    v45 = v39;
  }

  sub_22C36DD28(v45, v43, v44);
  sub_22C908D9C();
  v51 = v111;
  v52 = v110;
  if (v53)
  {
    sub_22C50B5FC();
  }

  else
  {
    sub_22C903F7C();
    v54 = v106;
    (*(v106 + 16))(v52, v42, v107);
    v55 = sub_22C9063CC();
    v56 = sub_22C90AACC();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = v54;
      v58 = sub_22C36FB44();
      v105 = sub_22C370060();
      v113[0] = v105;
      *v58 = 136315138;
      sub_22C908D7C();
      sub_22C50B478();
      v59 = sub_22C90A1AC();
      v61 = v60;
      v62 = *(v57 + 8);
      v63 = sub_22C36EC8C();
      v64(v63);
      v65 = sub_22C36F9F4(v59, v61, v113);

      *(v58 + 4) = v65;
      sub_22C36FF94(v105);
      sub_22C37E124();
      sub_22C3699EC();

      sub_22C3701E0();
      v67 = v111;
    }

    else
    {

      v91 = *(v54 + 8);
      v92 = sub_22C3726C4();
      v93(v92);
      sub_22C3701E0();
      v67 = v51;
    }

    v66(v67, v109);
    sub_22C908D7C();
    sub_22C9099DC();
    v94 = *(v104 + 8);
    v95 = sub_22C50B478();
    v96(v95);
    sub_22C36BA00();
    v97 = sub_22C90A2CC();
    v99 = v98;

    v113[0] = v97;
    v113[1] = v99;
    sub_22C50B5B8();
    sub_22C37162C();
    sub_22C50B5FC();
  }

LABEL_17:
  sub_22C36BAFC();
  sub_22C36CC48();
}

void sub_22C4FACE8()
{
  sub_22C36BA7C();
  v4 = v3;
  v6 = v5;
  sub_22C3727F4();
  v7 = sub_22C90977C();
  v8 = sub_22C369824(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C377D60();
  sub_22C374168(v1, v1[3]);
  sub_22C47FCDC();
  v13 = sub_22C9096FC();
  v33 = v2;
  v15 = sub_22C4FB170(v13, v14, sub_22C5099C8, &v32, v4);
  v17 = v16;

  (*(v10 + 8))(v2, v7);
  if (v6)
  {
    goto LABEL_6;
  }

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
LABEL_6:

    sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_22C90F800;
    *(v19 + 32) = sub_22C908E8C();
    *(v19 + 40) = v22;
    v21 = 1;
  }

  else
  {
    sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_22C90F870;
    *(v19 + 32) = v15;
    *(v19 + 40) = v17;
    *(v19 + 48) = sub_22C908E8C();
    *(v19 + 56) = v20;
    v21 = 2;
  }

  v34 = MEMORY[0x277D84F90];
  sub_22C3B5E2C();
  v23 = v34;
  v24 = (v19 + 40);
  do
  {
    v25 = *(v24 - 1);
    v26 = *v24;

    sub_22C379FC8();
    sub_22C90A2CC();
    sub_22C50B42C();

    v34 = v23;
    v28 = *(v23 + 16);
    v27 = *(v23 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_22C369AB0(v27);
      sub_22C3B5E2C();
      v23 = v34;
    }

    *(v23 + 16) = v28 + 1;
    v29 = v23 + 16 * v28;
    *(v29 + 32) = v15;
    *(v29 + 40) = v2;
    v24 += 2;
    --v21;
  }

  while (v21);

  v34 = v23;
  v30 = sub_22C37B9B0();
  sub_22C3A5908(v30, v31);
  sub_22C50B388(&qword_28142F9F0);
  sub_22C90A04C();
  sub_22C385630();

  *v0 = &v34;
  *(v0 + 8) = &unk_22C9112A0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  sub_22C36CC48();
}

void sub_22C4FAF9C()
{
  sub_22C9099DC();
  sub_22C90A2CC();
  sub_22C370704();
  sub_22C374C24();
}

void sub_22C4FAFDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C374168(v2, v2[3]);
  v12 = sub_22C90381C();
  v13 = v5;
  v14 = a2;
  v15 = v4;
  sub_22C4FB170(v12, v5, sub_22C5099BC, &v11, a2);
  sub_22C385630();

  v16 = v4;
  v17 = a2;

  MEMORY[0x2318B7850](32, 0xE100000000000000);

  v7 = v16;
  v6 = v17;
  v8 = sub_22C90382C();
  v10 = v9;
  v16 = v7;
  v17 = v6;

  MEMORY[0x2318B7850](v8, v10);

  sub_22C90A2CC();
  sub_22C370704();
  sub_22C374C24();
}

double sub_22C4FB0E8@<D0>(uint64_t a1@<X8>)
{
  sub_22C4FACE8();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_22C4FB170(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v6 = v5;
  swift_beginAccess();
  v11 = *(a5 + 16);
  if (*(v11 + 16) && (v12 = sub_22C371530(), v14 = sub_22C36E2BC(v12, v13), (v15 & 1) != 0))
  {
    v16 = (*(v11 + 56) + 16 * v14);
    v17 = *v16;
    v18 = v16[1];
    swift_endAccess();
  }

  else
  {
    v19 = swift_endAccess();
    a3(v19);
    sub_22C50B42C();
    v20 = v6 + *(type metadata accessor for AppNameRenderer_v1_0(0) + 20);
    v21 = *(type metadata accessor for FullPlannerPreferences() + 100);
    sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
    sub_22C901EDC();
    v22 = sub_22C8124CC(v35[2]);
    v23 = MEMORY[0x2318B76D0](v22);
    v25 = v24;

    swift_beginAccess();

    sub_22C6A4514(v35, v23, v25, v26, v27, v28, v29, v30, v34, v35[0]);
    swift_endAccess();

    swift_beginAccess();

    v31 = sub_22C36ECB4();
    sub_22C5097BC(v31, v32, a1, a2);
    swift_endAccess();
  }

  return sub_22C36ECB4();
}

void *sub_22C4FB318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22C57FE4C(a1, a2);
  v5 = v4;
  if (v4)
  {
    [v4 developerType];
  }

  swift_beginAccess();
  if (v5)
  {
    v6 = *(a3 + 32);
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *(a3 + 32);
    sub_22C62DE00();
    *(a3 + 32) = v13;
  }

  else
  {
    sub_22C62B990();
  }

  swift_endAccess();
  if (v5)
  {
    sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_22C90F800;
    *(v7 + 32) = sub_22C9006BC();
    *(v7 + 40) = v8;
    v9 = v5;
    v10 = sub_22C90A5DC();

    v11 = [v9 localizedNameWithPreferredLocalizations_];

    v5 = sub_22C90A11C();
  }

  return v5;
}

double sub_22C4FB4A4@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 1;
  return result;
}

void sub_22C4FB4BC()
{
  sub_22C36BA7C();
  v51 = v3;
  v52 = v4;
  v6 = v5;
  v7 = sub_22C90963C();
  v8 = sub_22C369824(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C377D60();
  v13 = sub_22C90941C();
  v14 = sub_22C369824(v13);
  v53 = v15;
  v54 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  sub_22C50B438();
  v56 = sub_22C9097DC();
  v57 = v18;
  v55[2] = &v56;
  v19 = sub_22C5EC08C(sub_22C3AC11C, v55, &unk_283FAEBB0);

  if (v19)
  {
    *v6 = 1;
    *(v6 + 8) = 0u;
    *(v6 + 24) = 0u;
    *(v6 + 40) = 1;
  }

  else
  {
    v20 = sub_22C374168(v0, v0[3]);
    MEMORY[0x2318B6CE0](v20);
    (*(v10 + 104))(v1, *MEMORY[0x277D72E10], v7);
    sub_22C4FCF6C();
    v21 = *(v10 + 8);
    v22 = sub_22C36BE34();
    v23(v22);
    v24 = (*(v53 + 8))(v2, v54);
    v26 = v56;
    v25 = v57;
    v27 = v58;
    v28 = v59;
    v29 = v60;
    v30 = v61;
    if ((v61 & 1) == 0)
    {
      v31 = sub_22C372248();
      sub_22C456C30(v31, v32, v33, v34, v35, v36);
      sub_22C456C94(v25, v27);
      v37 = sub_22C4FB780(v26, v51, v52);
      v38 = sub_22C372248();
      sub_22C456CE4(v38, v39, v40, v41, v42, v43);
      v44 = sub_22C372248();
      sub_22C456CE4(v44, v45, v46, v47, v48, v49);
      v26 = v37;
    }

    v56 = v26;
    v57 = v25;
    v58 = v27;
    v59 = v28;
    v60 = v29;
    v61 = v30;
    MEMORY[0x28223BE20](v24);
    sub_22C54DBA0(sub_22C50B068, v50);
    sub_22C36DD28(&v56, &qword_27D9BAB08, &qword_22C91A110);
  }

  sub_22C36CC48();
}

uint64_t sub_22C4FB780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0xE000000000000000;
  sub_22C591324();
  v8 = v7;
  v9 = *(v7 + 16);
  v10 = v9 + 1;
  if (v9 >= *(v7 + 24) >> 1)
  {
    sub_22C591324();
    v8 = v23;
  }

  *(v8 + 16) = v10;
  *(v8 + 8 * v9 + 32) = v6;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = *(v8 + 24);
  v13 = v9 + 2;

  if ((v9 + 2) > (v12 >> 1))
  {
    sub_22C591324();
    v8 = v24;
  }

  *(v8 + 16) = v13;
  *(v8 + 8 * v10 + 32) = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0xE000000000000000;
  v15 = v9 + 3;
  if ((v9 + 3) > *(v8 + 24) >> 1)
  {
    sub_22C591324();
    v8 = v25;
  }

  *(v8 + 16) = v15;
  *(v8 + 8 * v13 + 32) = v14;
  v16 = v9 + 4;
  if ((v9 + 4) > *(v8 + 24) >> 1)
  {
    sub_22C591324();
    v8 = v26;
  }

  *(v8 + 16) = v16;
  *(v8 + 8 * v15 + 32) = a1;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0xE000000000000000;
  v18 = *(v8 + 24);

  if ((v9 + 5) > (v18 >> 1))
  {
    sub_22C591324();
    v8 = v27;
  }

  *(v8 + 16) = v9 + 5;
  *(v8 + 8 * v16 + 32) = v17;
  v19 = sub_22C3DB9B0(v8);

  v20 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v20 + 16) = v21;
  return v20 | 0x6000000000000000;
}

uint64_t sub_22C4FB9F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  sub_22C456C94(v4, v6);
  v8 = sub_22C4FBAFC(v3);
  if (v6)
  {
    v12[0] = v4;
    v12[1] = v6;
    v12[2] = v5;
    v12[3] = v7;

    sub_22C4FBDE0(v12, v13);

    result = sub_22C456D48(v4, v6);
    v10 = v13[1];
    v11 = v13[0];
  }

  else
  {
    result = sub_22C456D48(v4, 0);
    v11 = v4;
    *&v10 = v5;
    *(&v10 + 1) = v7;
  }

  *a2 = v8;
  *(a2 + 8) = v11;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_22C4FBAFC(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0xE000000000000000;
  sub_22C591324();
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5 >= *(v3 + 24) >> 1)
  {
    sub_22C591324();
    v4 = v24;
  }

  *(v4 + 16) = v5 + 1;
  *(v4 + 8 * v5 + 32) = v2;
  sub_22C9097DC();
  v6 = sub_22C90A2CC();
  v8 = v7;

  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);

  if (v11 >= v10 >> 1)
  {
    sub_22C591324();
    v4 = v25;
  }

  *(v4 + 16) = v11 + 1;
  *(v4 + 8 * v11 + 32) = v9;

  v12 = swift_allocObject();
  *(v12 + 16) = 8250;
  *(v12 + 24) = 0xE200000000000000;
  v13 = *(v4 + 16);
  v14 = *(v4 + 24) >> 1;
  v15 = v13 + 1;
  if (v14 <= v13)
  {
    sub_22C591324();
    v4 = v26;
    v14 = *(v26 + 24) >> 1;
  }

  *(v4 + 16) = v15;
  *(v4 + 8 * v13 + 32) = v12;
  v16 = v13 + 2;
  if (v14 < (v13 + 2))
  {
    sub_22C591324();
    v4 = v27;
  }

  *(v4 + 16) = v16;
  *(v4 + 8 * v15 + 32) = a1;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0xE000000000000000;
  v18 = *(v4 + 24);
  v19 = v13 + 3;

  if (v19 > (v18 >> 1))
  {
    sub_22C591324();
    v4 = v28;
  }

  *(v4 + 16) = v19;
  *(v4 + 8 * v16 + 32) = v17;
  v20 = sub_22C3DB9B0(v4);

  v21 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v21 + 16) = v22;
  return v21 | 0x6000000000000000;
}

uint64_t sub_22C4FBD9C()
{
  sub_22C9097DC();
  sub_22C90A2CC();
  sub_22C385D88();

  return sub_22C37170C();
}

uint64_t sub_22C4FBDE0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23[-1] - v7;
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  sub_22C3A7214();
  if (v26)
  {
    sub_22C374168(v25, v26);
    sub_22C9097DC();
    v22 = sub_22C90A2CC();
    v27 = v2;
    v14 = v13;

    v23[0] = v9;
    v23[1] = v10;
    v23[2] = v11;
    v23[3] = v12;
    MEMORY[0x2318B6CE0](v15);
    v16 = sub_22C90941C();
    sub_22C36C640(v8, 0, 1, v16);
    sub_22C532128(v22, v14, v23, v8, v24);

    sub_22C36DD28(v8, &qword_27D9BC028, &unk_22C9134B0);
    v17 = v24[0];
    v18 = v24[1];
    v19 = v24[2];
    v20 = v24[3];
    result = sub_22C36FF94(v25);
  }

  else
  {
    result = sub_22C36DD28(v25, &qword_27D9BD900, &qword_22C919AF0);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  *a2 = v17;
  a2[1] = v18;
  a2[2] = v19;
  a2[3] = v20;
  return result;
}

unint64_t sub_22C4FBF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    a3 = a1;
    sub_22C9097BC();
    if (!v6)
    {
      return 0xF000000000000007;
    }

    sub_22C385D88();
  }

  sub_22C36A83C();
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;

  return v7;
}

void sub_22C4FC044()
{
  sub_22C36BA7C();
  v44 = v2;
  v45 = v3;
  v5 = v4;
  v6 = sub_22C90941C();
  v7 = sub_22C369824(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369ABC();
  sub_22C3804A4();
  MEMORY[0x28223BE20](v12);
  sub_22C36BA64();
  v43 = v13;
  sub_22C36BA0C();
  v14 = sub_22C90952C();
  v15 = sub_22C369824(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v22 = v21 - v20;
  v23 = *(v9 + 16);
  v23(v1, v5, v6);
  v24 = *(v9 + 88);
  v25 = sub_22C3806B8();
  v27 = v26(v25);
  if (v27 == *MEMORY[0x277D72AD0])
  {
    goto LABEL_2;
  }

  if (v27 == *MEMORY[0x277D72AB0] || v27 == *MEMORY[0x277D72AE8])
  {
LABEL_8:
    v38 = *(v9 + 96);
    v39 = sub_22C3806B8();
    v40(v39);
    v41 = *v1;
    v42 = swift_projectBox();
    v23(v43, v42, v6);

    sub_22C4FC044(v43, v44, v45);
    (*(v9 + 8))(v43, v6);
    goto LABEL_9;
  }

  if (v27 != *MEMORY[0x277D72AB8])
  {
    if (v27 != *MEMORY[0x277D72AE0])
    {
      sub_22C50B300();
      (*(v9 + 8))(v1, v6);
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_2:
  v28 = *(v9 + 96);
  v29 = sub_22C3806B8();
  v30(v29);
  v31 = *v1;
  v32 = swift_projectBox();
  (*(v17 + 16))(v22, v32, v14);

  v33 = *(v0 + 24);
  v34 = *(v0 + 32);
  v35 = sub_22C372164();
  sub_22C3766E0(v35, v36);
  (*(v34 + 8))(v22, v44, v45, v33, v34);
  (*(v17 + 8))(v22, v14);
LABEL_9:
  sub_22C36CC48();
}

void sub_22C4FC314()
{
  sub_22C36BA7C();
  v102 = v3;
  v104 = v4;
  v6 = v5;
  v105 = v7;
  v8 = sub_22C9063DC();
  v9 = sub_22C369824(v8);
  v99 = v10;
  v100 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C3698A8();
  v101 = v13;
  sub_22C36BA0C();
  v14 = sub_22C90952C();
  v15 = sub_22C369824(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  sub_22C50B3FC();
  v20 = sub_22C90941C();
  v21 = sub_22C369824(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22C3698E4();
  v98 = v26;
  sub_22C369930();
  MEMORY[0x28223BE20](v27);
  sub_22C36BA58();
  v97 = v28;
  sub_22C369930();
  MEMORY[0x28223BE20](v29);
  sub_22C36BA58();
  sub_22C369930();
  MEMORY[0x28223BE20](v30);
  sub_22C36CAC0();
  v31 = v23[2];
  v31(v2, v6, v20);
  v32 = v23[11];
  v33 = sub_22C372FCC();
  v35 = v34(v33);
  if (v35 == *MEMORY[0x277D72AD0])
  {
    v36 = v23[12];
    v37 = sub_22C372FCC();
    v38(v37);
    v39 = *v2;
    swift_projectBox();
    v40 = sub_22C383BD4(v17);
    v41(v40);
    v42 = v0[3];
    v43 = v0[4];
    v44 = sub_22C37170C();
    sub_22C3766E0(v44, v45);
    sub_22C50B688();
    v47 = v104;
    v48 = v1;
    v49 = v102;
LABEL_3:
    v46(v48, v49, v47, v42, v43);
    v50 = *(v17 + 8);
    v51 = sub_22C37B988();
    v52(v51);
LABEL_9:

    goto LABEL_10;
  }

  if (v35 == *MEMORY[0x277D72AB0])
  {
    v53 = v23[12];
    v54 = sub_22C372FCC();
    v55(v54);
    v56 = *v2;
    swift_projectBox();
    v57 = sub_22C50B628();
    (v31)(v57);
    v58 = sub_22C4FC314(v2, v102, v104);
    MEMORY[0x28223BE20](v58);
    sub_22C54DBA0(sub_22C50AED8, v105);
    sub_22C36DD28(v106, &qword_27D9BAB08, &qword_22C91A110);
LABEL_8:
    v64 = v23[1];
    v65 = sub_22C372FCC();
    v66(v65);
    goto LABEL_9;
  }

  if (v35 == *MEMORY[0x277D72AE8])
  {
    goto LABEL_7;
  }

  if (v35 == *MEMORY[0x277D72AD8])
  {
    v67 = v23[1];
    v68 = sub_22C372FCC();
    v69(v68);
    sub_22C36A83C();
    v70 = swift_allocObject();
    v106[0] = 1701736270;
    v106[1] = 0xE400000000000000;
    *(v70 + 16) = sub_22C90A49C();
    *(v70 + 24) = v71;
    *v105 = v70;
    sub_22C386CA8(v105);
    *(v72 + 40) = 0;
    goto LABEL_10;
  }

  if (v35 == *MEMORY[0x277D72AB8])
  {
    v73 = v23[12];
    v74 = sub_22C372FCC();
    v75(v74);
    v76 = *v2;
    swift_projectBox();
    v77 = sub_22C383BD4(v17);
    v78(v77);
    v42 = v0[3];
    v43 = v0[4];
    sub_22C3766E0(v0, v42);
    sub_22C50B688();
    v48 = v1;
    v49 = v102;
    v47 = v104;
    goto LABEL_3;
  }

  if (v35 == *MEMORY[0x277D72AE0])
  {
LABEL_7:
    v59 = v23[12];
    v60 = sub_22C372FCC();
    v61(v60);
    v62 = *v2;
    swift_projectBox();
    v63 = sub_22C50B628();
    (v31)(v63);
    sub_22C4FC314(v2, v102, v104);
    goto LABEL_8;
  }

  sub_22C903F7C();
  v31(v97, v6, v20);
  v31(v98, v6, v20);
  v79 = sub_22C9063CC();
  v80 = sub_22C90AACC();
  if (sub_22C370048(v80))
  {
    v81 = sub_22C383050();
    v106[0] = swift_slowAlloc();
    *v81 = 136315394;
    v103 = v79;
    v82 = sub_22C37B9B0();
    (v31)(v82);
    sub_22C37170C();
    sub_22C90A1AC();
    v83 = v23[1];
    v83(v97, v20);
    v84 = sub_22C36EC8C();
    v87 = sub_22C36F9F4(v84, v85, v86);

    *(v81 + 4) = v87;
    *(v81 + 12) = 2080;
    sub_22C9093EC();
    v88 = sub_22C36BC58();
    (v83)(v88);
    v89 = sub_22C372164();
    v92 = sub_22C36F9F4(v89, v90, v91);

    *(v81 + 14) = v92;
    _os_log_impl(&dword_22C366000, v103, v80, "%s: Unsupported type in action: %s", v81, 0x16u);
    swift_arrayDestroy();
    sub_22C37E124();
    sub_22C370510();

    (*(v99 + 8))(v101, v100);
  }

  else
  {

    v83 = v23[1];
    v83(v98, v20);
    v93 = sub_22C36BC58();
    (v83)(v93);
    v94 = sub_22C50B584();
    v95(v94, v100);
  }

  v96 = sub_22C372FCC();
  (v83)(v96);
  sub_22C37D980();
LABEL_10:
  sub_22C36CC48();
}

uint64_t sub_22C4FC9DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  sub_22C456C94(v3, v6);
  v8 = sub_22C4FCB48(v4);
  if (v6)
  {
    sub_22C3A7214();
    v14 = v8;
    if (v18)
    {
      sub_22C374168(v17, v18);
      v15[0] = v3;
      v15[1] = v6;
      v15[2] = v5;
      v15[3] = v7;

      sub_22C533804(v15, v16);
      v10 = v16[0];
      v9 = v16[1];
      v12 = v16[2];
      v11 = v16[3];
      sub_22C36FF94(v17);
    }

    else
    {

      sub_22C36DD28(v17, &qword_27D9BD8A8, &qword_22C919AA0);
      v10 = 0;
      v9 = 0;
      v12 = 0;
      v11 = 0;
    }

    result = sub_22C456D48(v3, v6);
    v3 = v10;
    v5 = v12;
    v7 = v11;
    v8 = v14;
  }

  else
  {
    result = sub_22C456D48(v3, 0);
    v9 = 0;
  }

  *a2 = v8;
  a2[1] = v3;
  a2[2] = v9;
  a2[3] = v5;
  a2[4] = v7;
  return result;
}

uint64_t sub_22C4FCB48(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0x5B7473696CLL;
  *(v2 + 24) = 0xE500000000000000;
  sub_22C591324();
  v4 = v3;
  v5 = *(v3 + 16);
  v6 = *(v3 + 24) >> 1;
  v7 = v5 + 1;
  if (v6 <= v5)
  {
    sub_22C591324();
    v4 = v16;
    v6 = *(v16 + 24) >> 1;
  }

  *(v4 + 16) = v7;
  *(v4 + 8 * v5 + 32) = v2;
  v8 = v5 + 2;
  if (v6 < (v5 + 2))
  {
    sub_22C591324();
    v4 = v17;
  }

  *(v4 + 16) = v8;
  *(v4 + 8 * v7 + 32) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = 93;
  *(v9 + 24) = 0xE100000000000000;
  v10 = *(v4 + 24);
  v11 = v5 + 3;

  if (v11 > (v10 >> 1))
  {
    sub_22C591324();
    v4 = v18;
  }

  *(v4 + 16) = v11;
  *(v4 + 8 * v8 + 32) = v9;
  v12 = sub_22C3DB9B0(v4);

  v13 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 16) = v14;
  return v13 | 0x6000000000000000;
}

void sub_22C4FCD10()
{
  sub_22C36BA7C();
  v3 = sub_22C37E140();
  v4 = sub_22C369824(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C377D60();
  v7 = sub_22C3A5908(&qword_27D9BD8B0, &qword_22C919AA8);
  sub_22C369914(v7);
  v9 = *(v8 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  sub_22C50B41C();
  v11 = type metadata accessor for DynamicEnumeration(0);
  v12 = v11;
  v13 = sub_22C36985C(v11);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  sub_22C50B438();
  sub_22C50870C();
  if (v16)
  {
    goto LABEL_7;
  }

  if ((sub_22C5085D8(v1) & 1) == 0)
  {
    sub_22C5089A0();
    goto LABEL_7;
  }

  sub_22C36EC8C();
  sub_22C4BB014(v17, v18);
  sub_22C369A54(v2);
  if (v19)
  {
    sub_22C36DD28(v2, &qword_27D9BD8B0, &qword_22C919AA8);
LABEL_7:
    v20 = (v0 + *(type metadata accessor for TypeInstanceRenderer_v1_0(0) + 20));
    v21 = v20[4];
    sub_22C374168(v20, v20[3]);
    sub_22C50B590();
    sub_22C37B9B0();
    sub_22C50B608();
    v22();
    goto LABEL_8;
  }

  sub_22C37BD80();
  sub_22C50B07C();
  sub_22C903F7C();
  v23 = sub_22C9063CC();
  v24 = sub_22C90AACC();
  if (sub_22C37B204(v24))
  {
    *sub_22C36D240() = 0;
    sub_22C3699EC();
  }

  v27 = sub_22C50B584();
  v28(v27);
  v29 = (v0 + *(type metadata accessor for TypeInstanceRenderer_v1_0(0) + 24));
  v30 = v29[4];
  sub_22C3766E0(v29, v29[3]);
  sub_22C50B590();
  v31 = sub_22C50B560();
  v32(v31);
  sub_22C3886E0();
  sub_22C50A6FC();
LABEL_8:
  sub_22C36CC48();
}

void sub_22C4FCF6C()
{
  sub_22C36BA7C();
  v3 = sub_22C37E140();
  v4 = sub_22C369824(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C377D60();
  v7 = sub_22C3A5908(&qword_27D9BD8B0, &qword_22C919AA8);
  sub_22C369914(v7);
  v9 = *(v8 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  sub_22C50B41C();
  v11 = type metadata accessor for DynamicEnumeration(0);
  v12 = v11;
  v13 = sub_22C36985C(v11);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  sub_22C50B438();
  sub_22C50870C();
  if (v16)
  {
    goto LABEL_7;
  }

  if ((sub_22C5085D8(v1) & 1) == 0)
  {
    sub_22C5089A0();
    goto LABEL_7;
  }

  sub_22C36EC8C();
  sub_22C4BB014(v17, v18);
  sub_22C369A54(v2);
  if (v19)
  {
    sub_22C36DD28(v2, &qword_27D9BD8B0, &qword_22C919AA8);
LABEL_7:
    v20 = (v0 + *(type metadata accessor for TypeInstanceRenderer_v1_0(0) + 20));
    v21 = v20[4];
    sub_22C374168(v20, v20[3]);
    sub_22C50B688();
    sub_22C37B9B0();
    sub_22C50B608();
    v22();
    goto LABEL_8;
  }

  sub_22C37BD80();
  sub_22C50B07C();
  sub_22C903F7C();
  v23 = sub_22C9063CC();
  v24 = sub_22C90AACC();
  if (sub_22C37B204(v24))
  {
    *sub_22C36D240() = 0;
    sub_22C3699EC();
  }

  v27 = sub_22C50B584();
  v28(v27);
  v29 = (v0 + *(type metadata accessor for TypeInstanceRenderer_v1_0(0) + 24));
  v30 = v29[4];
  sub_22C3766E0(v29, v29[3]);
  v31 = *(v30 + 16);
  v32 = sub_22C50B560();
  v33(v32);
  sub_22C3886E0();
  sub_22C50A6FC();
LABEL_8:
  sub_22C36CC48();
}

void sub_22C4FD1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v23;
  a20 = v24;
  v160 = v25;
  v174 = v27;
  v175 = v26;
  v28 = type metadata accessor for TypeIdentifierRenderer_v1_0(0);
  v29 = sub_22C36985C(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22C3698E4();
  v167 = v32;
  sub_22C369930();
  MEMORY[0x28223BE20](v33);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v34);
  sub_22C36BA64();
  v158[4] = v35;
  sub_22C36BA0C();
  v36 = sub_22C9063DC();
  v37 = sub_22C369824(v36);
  v161 = v38;
  v162 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22C3698E4();
  v171 = v41;
  sub_22C369930();
  MEMORY[0x28223BE20](v42);
  sub_22C36BA64();
  v159 = v43;
  sub_22C36BA0C();
  v44 = sub_22C90952C();
  v45 = sub_22C369824(v44);
  v169 = v46;
  v170 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22C3698A8();
  v168 = v49;
  sub_22C36BA0C();
  v50 = sub_22C90998C();
  v51 = sub_22C36A7A4(v50, &a18);
  v164 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22C3698A8();
  v163 = v55;
  sub_22C36BA0C();
  v173 = sub_22C90077C();
  v56 = sub_22C369824(v173);
  v58 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v56);
  sub_22C369838();
  sub_22C37FDDC();
  v172 = sub_22C908A8C();
  v61 = sub_22C369824(v172);
  v63 = v62;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v61);
  sub_22C369838();
  v66 = sub_22C3A5908(&qword_27D9BC3B0, &unk_22C912AF0);
  sub_22C369914(v66);
  v68 = *(v67 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v69);
  sub_22C38B184();
  v70 = sub_22C90947C();
  v71 = sub_22C369824(v70);
  v165 = v72;
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v71);
  sub_22C369ABC();
  sub_22C50B4C8();
  MEMORY[0x28223BE20](v75);
  sub_22C50B40C();
  v158[2] = v28;
  v76 = *(v28 + 28);
  v77 = sub_22C908B2C();
  MEMORY[0x2318B6010](v77);
  v166 = v21;
  sub_22C908B1C();
  (*(v58 + 8))(v22, v173);
  v79 = *(v63 + 8);
  v78 = v63 + 8;
  v80 = sub_22C50B554();
  v81(v80);
  sub_22C36C640(v20, 0, 1, v70);
  v82 = v165[4];
  v83 = sub_22C371530();
  v84(v83);
  v85 = v165[2];
  v86 = sub_22C50B4E8();
  v87(v86);
  v88 = v165[11];
  v89 = sub_22C3726C4();
  if (v90(v89) == *MEMORY[0x277D72B48])
  {
    v91 = v165[12];
    v92 = sub_22C3726C4();
    v93(v92);
    v94 = *(v164 + 32);
    sub_22C379FC8();
    sub_22C50B63C();
    v95();
    v96 = v166[4];
    sub_22C3766E0(v166, v166[3]);
    v97 = *(v96 + 8);
    v98 = sub_22C37E858();
    v99(v98);
    v100 = sub_22C37186C();
    v101(v100);
    v102 = v165[1];
    v103 = sub_22C441720();
    v104(v103);
    goto LABEL_13;
  }

  v105 = v165[1];
  v106 = sub_22C441720();
  v105(v106);
  v107 = sub_22C3726C4();
  v105(v107);
  TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v168);
  v108 = *(v169 + 88);
  v109 = sub_22C37BD80();
  v111 = v110(v109);
  if (v111 == *MEMORY[0x277D72D50])
  {
    v112 = sub_22C3728B8();
    v113(v112);
LABEL_12:
    sub_22C50B300();
    goto LABEL_13;
  }

  if (v111 == *MEMORY[0x277D72D30])
  {
    v114 = sub_22C3728B8();
    v115(v114);
    v116 = v159;
    sub_22C903F7C();
    sub_22C3728A0();
    sub_22C50A6A4();
    v117 = sub_22C9063CC();
    v118 = sub_22C90AACC();
    if (sub_22C50B484(v118))
    {
      v119 = sub_22C36FB44();
      v176 = sub_22C370060();
      sub_22C38BA0C(4.8149e-34);
      sub_22C50A6A4();
      sub_22C90A1AC();
      sub_22C50B42C();
      sub_22C50A6FC();
      v120 = sub_22C36CA88();
      sub_22C36F9F4(v120, v121, v122);
      sub_22C50B6EC();
      *(v119 + 4) = v78;
      sub_22C37441C(&dword_22C366000, v123, v124, "%s .builtin: Unsupported type in action");
      sub_22C38652C();
      sub_22C37E124();
    }

    else
    {

      sub_22C36BE0C();
      sub_22C50A6FC();
    }

    (*(v161 + 8))(v116, v162);
    goto LABEL_12;
  }

  if (v111 == *MEMORY[0x277D72D28])
  {
    v125 = *(v169 + 96);
    v126 = sub_22C37BD80();
    v127(v126);
    v128 = *(*v168 + 16);
    v129 = *(*v168 + 24);
    v130 = *(*v168 + 32);
    v131 = *(*v168 + 40);
    v132 = sub_22C374168(v166 + 10, v166[13]);
    v133 = MEMORY[0x28223BE20](v132);
    v158[-4] = v128;
    v158[-3] = v129;
    v158[-2] = v160;
    v158[-1] = v133;
    v134 = sub_22C372164();
    sub_22C4FB170(v134, v135, v136, v137, v138);
    v139 = sub_22C90A28C();
    v141 = v140;

    v176 = v139;
    v177 = v141;

    v142 = sub_22C37335C();
    MEMORY[0x2318B7850](v142);

    v143 = v176;
    v144 = v177;
    sub_22C36A83C();
    v145 = swift_allocObject();
    *(v145 + 16) = v143;
    *(v145 + 24) = v144;

    v146 = v174;
    *v174 = v145;
    sub_22C386CA8(v146);
    *(v147 + 40) = 0;
  }

  else
  {
    sub_22C903F7C();
    sub_22C3728A0();
    sub_22C50A6A4();
    v148 = sub_22C9063CC();
    v149 = sub_22C90AACC();
    if (sub_22C50B484(v149))
    {
      v150 = sub_22C36FB44();
      v175 = sub_22C370060();
      v176 = v175;
      sub_22C38BA0C(4.8149e-34);
      sub_22C50A6A4();
      sub_22C90A1AC();
      sub_22C50B42C();
      sub_22C36FBFC();
      sub_22C50A6FC();
      v151 = sub_22C36CA88();
      sub_22C36F9F4(v151, v152, v153);
      sub_22C50B6EC();
      *(v150 + 4) = v78;
      sub_22C37441C(&dword_22C366000, v154, v155, "%s unknown: Unsupported type in action");
      sub_22C36FF94(v175);
      sub_22C3699EC();
      sub_22C37E124();
    }

    else
    {

      sub_22C36BE0C();
      sub_22C50A6FC();
    }

    (*(v161 + 8))(v171, v162);
    sub_22C50B300();
    v156 = sub_22C3728B8();
    v157(v156);
  }

LABEL_13:
  sub_22C36CC48();
}

void sub_22C4FDAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v23;
  a20 = v24;
  v188 = v25;
  v202 = v27;
  v203 = v26;
  v28 = type metadata accessor for TypeIdentifierRenderer_v1_0(0);
  v29 = sub_22C36985C(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22C3698E4();
  v199 = v32;
  sub_22C369930();
  MEMORY[0x28223BE20](v33);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v34);
  sub_22C36BA64();
  sub_22C3698F8(v35);
  v36 = sub_22C9063DC();
  v37 = sub_22C369824(v36);
  v186 = v38;
  v187 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22C3698E4();
  v200 = v41;
  sub_22C369930();
  MEMORY[0x28223BE20](v42);
  sub_22C36BA64();
  sub_22C3698F8(v43);
  v44 = sub_22C9094EC();
  v45 = sub_22C369824(v44);
  v190 = v46;
  v191 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22C3698A8();
  v189 = v49;
  sub_22C36BA0C();
  v50 = sub_22C90952C();
  v195 = sub_22C369824(v50);
  v196 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v195);
  sub_22C3698A8();
  v197 = v54;
  sub_22C36BA0C();
  v55 = sub_22C90998C();
  v56 = sub_22C36A7A4(v55, &a18);
  v185[6] = v57;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v56);
  sub_22C3698A8();
  sub_22C3698F8(v60);
  v61 = sub_22C90947C();
  v62 = sub_22C369824(v61);
  v194 = v63;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  sub_22C3698E4();
  v192 = v66;
  sub_22C369930();
  MEMORY[0x28223BE20](v67);
  sub_22C36BA64();
  v193 = v68;
  sub_22C36BA0C();
  v198 = sub_22C90077C();
  v69 = sub_22C369824(v198);
  v71 = v70;
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v69);
  sub_22C369838();
  sub_22C50B3FC();
  v74 = sub_22C908A8C();
  v75 = sub_22C369824(v74);
  v77 = v76;
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v75);
  sub_22C377D60();
  v80 = sub_22C3A5908(&qword_27D9BC3B0, &unk_22C912AF0);
  v81 = sub_22C369914(v80);
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v81);
  sub_22C369ABC();
  sub_22C3804A4();
  MEMORY[0x28223BE20](v84);
  v86 = v185 - v85;
  v185[2] = v28;
  v87 = *(v28 + 28);
  v88 = sub_22C908B2C();
  MEMORY[0x2318B6010](v88);
  v201 = v20;
  v89 = v86;
  sub_22C908B1C();
  (*(v71 + 8))(v21, v198);
  v91 = *(v77 + 8);
  v90 = v77 + 8;
  v92 = sub_22C36BE34();
  v93(v92);
  sub_22C36C640(v86, 0, 1, v61);
  sub_22C36FC74();
  sub_22C3A7214();
  sub_22C36D0A8(v22, 1, v61);
  if (v94)
  {
    sub_22C36DD28(v22, &qword_27D9BC3B0, &unk_22C912AF0);
    v95 = v200;
  }

  else
  {
    v97 = v193;
    v96 = v194;
    v98 = v194[4];
    v99 = sub_22C36D29C();
    v100(v99);
    v101 = v96[2];
    v102 = sub_22C36BC58();
    v103(v102);
    v104 = v96[11];
    v105 = sub_22C36EC6C();
    v107 = v106(v105);
    v108 = v199;
    v95 = v200;
    if (v107 == *MEMORY[0x277D72B48])
    {
      v109 = v96[12];
      v110 = sub_22C36EC6C();
      v111(v110);
      sub_22C38169C(&a17);
      v112 = sub_22C50B3B4();
      v113 = v185[7];
      v114(v112);
      v115 = v201[4];
      sub_22C374168(v201, v201[3]);
      v116 = *(v115 + 16);
      v117 = sub_22C37E858();
      v118(v117);
      (*(v90 + 8))(v108, v113);
      v119 = v96[1];
      v120 = sub_22C37BD80();
      v121(v120);
      sub_22C36DD28(v89, &qword_27D9BC3B0, &unk_22C912AF0);
      goto LABEL_20;
    }

    v122 = v96[1];
    v122(v97, v61);
    v123 = sub_22C36EC6C();
    (v122)(v123);
  }

  v124 = v197;
  TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v197);
  v126 = v195;
  v125 = v196;
  v127 = *(v196 + 88);
  v128 = sub_22C383CCC();
  v130 = v129(v128);
  if (v130 == *MEMORY[0x277D72D50])
  {
    v131 = *(v125 + 96);
    v132 = sub_22C383CCC();
    v133(v132);
    v134 = sub_22C50B6D4();
    v135 = v189;
    (*(v190 + 16))(v189, v134, v191);
    v136 = v201[8];
    v137 = v201[9];
    sub_22C3766E0(v201 + 5, v136);
    (*(v137 + 8))(v135, v136, v137);
    v138 = sub_22C37186C();
    v139(v138);
    sub_22C36DD28(v89, &qword_27D9BC3B0, &unk_22C912AF0);
  }

  else if (v130 == *MEMORY[0x277D72D30])
  {
    v140 = *(v125 + 8);
    v141 = sub_22C383CCC();
    v142(v141);
    sub_22C37443C(&a15);
    sub_22C903F7C();
    sub_22C3728A0();
    sub_22C50A6A4();
    v143 = sub_22C9063CC();
    v144 = sub_22C90AACC();
    if (sub_22C50B484(v144))
    {
      v145 = sub_22C36FB44();
      v204 = sub_22C370060();
      sub_22C38BA0C(4.8149e-34);
      sub_22C50A6A4();
      sub_22C90A1AC();
      sub_22C50B42C();
      sub_22C50A6FC();
      v146 = sub_22C36CA88();
      sub_22C36F9F4(v146, v147, v148);
      sub_22C50B6EC();
      *(v145 + 4) = v90;
      sub_22C37441C(&dword_22C366000, v149, v150, "%s .builtin: Unsupported type in action");
      sub_22C38652C();
      sub_22C37E124();
    }

    else
    {

      sub_22C36BE0C();
      sub_22C50A6FC();
    }

    (*(v186 + 8))(v126, v187);
    sub_22C36DD28(v89, &qword_27D9BC3B0, &unk_22C912AF0);
    sub_22C50B300();
  }

  else if (v130 == *MEMORY[0x277D72D28])
  {
    v151 = *(v125 + 96);
    v152 = sub_22C383CCC();
    v153(v152);
    v154 = *v124;
    v155 = v154[2];
    v156 = v154[3];
    v157 = v154[4];
    v158 = v154[5];
    v159 = sub_22C374168(v201 + 10, v201[13]);
    v160 = MEMORY[0x28223BE20](v159);
    v185[-4] = v155;
    v185[-3] = v156;
    v185[-2] = v188;
    v185[-1] = v160;
    v161 = sub_22C37170C();
    sub_22C4FB170(v161, v162, v163, v164, v165);
    v166 = sub_22C90A28C();
    v168 = v167;

    sub_22C36FBFC();
    sub_22C90A28C();
    sub_22C388CA0();
    v204 = v166;
    v205 = v168;

    v169 = sub_22C36FBFC();
    MEMORY[0x2318B7850](v169);

    v170 = v204;
    v171 = v205;
    sub_22C36DD28(v89, &qword_27D9BC3B0, &unk_22C912AF0);
    sub_22C36A83C();
    v172 = swift_allocObject();
    *(v172 + 16) = v170;
    *(v172 + 24) = v171;

    v173 = v202;
    *v202 = v172;
    sub_22C386CA8(v173);
    *(v174 + 40) = 0;
  }

  else
  {
    sub_22C903F7C();
    sub_22C3728A0();
    sub_22C50A6A4();
    v175 = sub_22C9063CC();
    v176 = sub_22C90AACC();
    if (sub_22C50B484(v176))
    {
      v177 = sub_22C36FB44();
      v204 = sub_22C370060();
      sub_22C38BA0C(4.8149e-34);
      sub_22C50A6A4();
      v178 = sub_22C90A1AC();
      v180 = v179;
      sub_22C50A6FC();
      v181 = v178;
      v125 = v196;
      sub_22C36F9F4(v181, v180, &v204);
      sub_22C50B6EC();
      *(v177 + 4) = v90;
      sub_22C37441C(&dword_22C366000, v182, v183, "%s unknown: Unsupported type in action");
      sub_22C38652C();
      sub_22C37E124();
    }

    else
    {

      sub_22C36BE0C();
      sub_22C50A6FC();
    }

    (*(v186 + 8))(v95, v187);
    sub_22C36DD28(v89, &qword_27D9BC3B0, &unk_22C912AF0);
    v184 = sub_22C50B300();
    (*(v125 + 8))(v197, v126, v184);
  }

LABEL_20:
  sub_22C36CC48();
}

void sub_22C4FE564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v27 = v26;
  v124 = v28;
  v128 = sub_22C909A3C();
  v29 = sub_22C369824(v128);
  v130 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22C3698A8();
  v127 = v33;
  sub_22C36BA0C();
  v34 = sub_22C909A5C();
  v35 = sub_22C36A7A4(v34, &a9);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C3698A8();
  sub_22C3698F8(v38);
  v39 = sub_22C90998C();
  v40 = sub_22C369824(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22C3698A8();
  sub_22C3698F8(v45);
  v46 = sub_22C9063DC();
  v47 = sub_22C36A7A4(v46, &a16);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22C3698A8();
  v126 = v50;
  v51 = sub_22C3A5908(&qword_27D9BC558, &qword_22C9139B8);
  v52 = sub_22C369914(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  sub_22C369ABC();
  sub_22C50B4C8();
  MEMORY[0x28223BE20](v55);
  sub_22C50B40C();
  v56 = *(v20 + 72);
  sub_22C374168((v25 + 40), *(v25 + 64));
  v57 = *(v56 + 8);
  v58 = sub_22C36BA00();
  v117 = v59(v58);
  v122 = v60;
  sub_22C4FEDA0(v27, v21);
  v61 = v20 + *(type metadata accessor for EnumerationDefinitionPromptRenderer_v1_0(0) + 32);
  v62 = *(type metadata accessor for FullPlannerPreferences() + 60);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C901EDC();
  v123 = v21;
  sub_22C36EC6C();
  sub_22C3A7214();
  v63 = sub_22C36D0A8(v22, 1, v39);
  if (v64)
  {
    v67 = v42;
    v65 = sub_22C36DD28(v22, &qword_27D9BC558, &qword_22C9139B8);
    v66 = MEMORY[0x2318B6E50](v65);
  }

  else
  {
    v66 = MEMORY[0x2318B6E50](v63);
    v67 = v42;
    (*(v42 + 8))(v22, v39);
  }

  v68 = sub_22C812574(*&v131[0], v66);
  v129 = v69;
  v71 = v70;
  v73 = v72;
  v74 = *(MEMORY[0x2318B6E50]() + 16);

  v75 = v73 >> 1;
  v125 = v73;
  if (*&v131[0] < v74)
  {
    sub_22C903F7C();
    v76 = v67;
    (*(v67 + 16))(v120, v27, v39);
    swift_unknownObjectRetain_n();
    v77 = sub_22C9063CC();
    v78 = sub_22C90AACC();
    if (os_log_type_enabled(v77, v78))
    {
      v114 = v77;
      v79 = sub_22C383050();
      v113 = sub_22C370060();
      *&v131[0] = v113;
      *v79 = 136315394;
      sub_22C90996C();
      v115 = sub_22C909A4C();
      v81 = v80;
      sub_22C36FB04(&v138);
      v82();
      v83 = *(v76 + 8);
      v84 = sub_22C38644C();
      v85(v84);
      v86 = sub_22C36F9F4(v115, v81, v131);

      *(v79 + 4) = v86;
      *(v79 + 12) = 2048;
      swift_unknownObjectRelease();
      if (__OFSUB__(v75, v71))
      {
LABEL_26:
        __break(1u);
        return;
      }

      *(v79 + 14) = v75 - v71;
      swift_unknownObjectRelease();
      _os_log_impl(&dword_22C366000, v114, v78, "Enum cases for %s truncated to first %ld cases", v79, 0x16u);
      sub_22C36FF94(v113);
      sub_22C3699EC();
      sub_22C3699EC();

      sub_22C36FB04(&a13);
      v88 = v126;
    }

    else
    {

      swift_unknownObjectRelease_n();
      (*(v76 + 8))(v120, v39);
      sub_22C36FB04(&a13);
      v88 = v126;
    }

    v87(v88);
    v73 = v125;
  }

  sub_22C378AB0(v25, v135);
  v89 = v75 - v71;
  if (__OFSUB__(v75, v71))
  {
    goto LABEL_24;
  }

  v90 = MEMORY[0x277D84F90];
  if (v89)
  {
    v134 = MEMORY[0x277D84F90];
    sub_22C50B694();
    if (v89 < 0)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v121 = v68;
    v90 = v134;
    v119 = v71;
    while (v71 < v75)
    {
      (*(v130 + 16))(v127, v129 + *(v130 + 72) * v71, v128);
      v91 = v136;
      v92 = v137;
      sub_22C3766E0(v135, v136);
      (*(v92 + 16))(v131, v127, v91, v92);
      (*(v130 + 8))(v127, v128);
      v93 = v131[0];
      v94 = v131[1];
      v95 = v132;
      v96 = v133;
      v134 = v90;
      v98 = *(v90 + 16);
      v97 = *(v90 + 24);
      if (v98 >= v97 >> 1)
      {
        v100 = sub_22C369AB0(v97);
        v118 = v101;
        v116 = v102;
        sub_22C3B68D4(v100, v98 + 1, 1);
        v94 = v116;
        v93 = v118;
        v90 = v134;
      }

      *(v90 + 16) = v98 + 1;
      v99 = v90 + 48 * v98;
      *(v99 + 32) = v93;
      *(v99 + 48) = v94;
      *(v99 + 64) = v95;
      *(v99 + 72) = v96;
      if (v75 == ++v71)
      {
        v68 = v121;
        v73 = v125;
        v71 = v119;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:
  sub_22C36FF94(v135);
  v103 = sub_22C47F410(v90);
  v105 = v104;

  if (v105)
  {
    sub_22C36DD28(v123, &qword_27D9BC558, &qword_22C9139B8);
    swift_unknownObjectRelease();

    v106 = v103;
  }

  else
  {
    v135[0] = v103;
    v107 = sub_22C50B444();
    sub_22C50B070(v107, v108);
    sub_22C4FF6CC(v135, v68, v129, v71, v73, v131);
    v109 = sub_22C50B444();
    sub_22C396BF8(v109, v110);
    v111 = sub_22C50B444();
    sub_22C396BF8(v111, v112);

    sub_22C500184(v131, v117, v122, v135);

    v106 = v135[0];

    swift_unknownObjectRelease();

    sub_22C36DD28(v123, &qword_27D9BC558, &qword_22C9139B8);
  }

  *v124 = v106;
  *(v124 + 8) = 0;
  *(v124 + 24) = 0;
  *(v124 + 32) = 0;
  *(v124 + 16) = 0;
  *(v124 + 40) = v105 & 1;
  sub_22C36CC48();
}

uint64_t sub_22C4FEDA0@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v73 = a1;
  v81 = a2;
  v2 = sub_22C9063DC();
  v79 = *(v2 - 8);
  v80 = v2;
  v3 = *(v79 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v78 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v67 = &v63 - v6;
  v74 = sub_22C908A8C();
  v72 = *(v74 - 8);
  v7 = *(v72 + 64);
  MEMORY[0x28223BE20](v74);
  v69 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C90952C();
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = *(v70 + 64);
  MEMORY[0x28223BE20](v9);
  v68 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C3A5908(&qword_27D9BC3B0, &unk_22C912AF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v77 = &v63 - v14;
  v82 = sub_22C90998C();
  v66 = *(v82 - 8);
  v15 = *(v66 + 64);
  MEMORY[0x28223BE20](v82);
  v65 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22C3A5908(&qword_27D9BD820, &unk_22C9195C0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v63 - v19;
  v21 = sub_22C90077C();
  v75 = *(v21 - 8);
  v22 = *(v75 + 64);
  MEMORY[0x28223BE20](v21);
  v76 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22C3A5908(&qword_27D9BD818, &qword_22C9195B8);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v63 - v26;
  v28 = sub_22C908AEC();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for EnumerationDefinitionPromptRenderer_v1_0(0);
  v34 = *(v33 + 24);
  sub_22C3A7214();
  if (sub_22C370B74(v27, 1, v28) == 1)
  {
    v35 = &qword_27D9BD818;
    v36 = &qword_22C9195B8;
    v37 = v27;
LABEL_6:
    sub_22C36DD28(v37, v35, v36);
LABEL_7:
    v46 = v82;
    v47 = v78;
    sub_22C903F7C();
    v48 = sub_22C9063CC();
    v49 = sub_22C90AADC();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_22C366000, v48, v49, "No localized enum definition", v50, 2u);
      MEMORY[0x2318B9880](v50, -1, -1);
    }

    (*(v79 + 8))(v47, v80);
    v51 = 1;
    v52 = v81;
    return sub_22C36C640(v52, v51, 1, v46);
  }

  (*(v29 + 32))(v32, v27, v28);
  v38 = *(v33 + 28);
  sub_22C3A7214();
  v39 = v32;
  if (sub_22C370B74(v20, 1, v21) == 1)
  {
    (*(v29 + 8))(v32, v28);
    v35 = &qword_27D9BD820;
    v36 = &unk_22C9195C0;
    v37 = v20;
    goto LABEL_6;
  }

  v64 = v29;
  v40 = v75;
  v41 = v21;
  (*(v75 + 32))(v76, v20, v21);
  v42 = v68;
  sub_22C90994C();
  v43 = v72;
  v44 = v69;
  v45 = v74;
  (*(v72 + 104))(v69, *MEMORY[0x277D1E8C0], v74);
  v73 = v39;
  sub_22C908B1C();
  (*(v43 + 8))(v44, v45);
  (*(v70 + 8))(v42, v71);
  v54 = sub_22C90947C();
  v55 = v77;
  sub_22C36C640(v77, 0, 1, v54);
  v56 = *(v54 - 8);
  if ((*(v56 + 88))(v55, v54) != *MEMORY[0x277D72B48])
  {
    (*(v40 + 8))(v76, v41);
    (*(v64 + 8))(v73, v28);
    (*(v56 + 8))(v55, v54);
    goto LABEL_7;
  }

  v78 = v41;
  (*(v56 + 96))(v55, v54);
  v57 = v65;
  v58 = *(v66 + 32);
  v58(v65, v55, v82);
  v59 = v67;
  sub_22C903F7C();
  v60 = sub_22C9063CC();
  v61 = sub_22C90AACC();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_22C366000, v60, v61, "Returning localized enum definition", v62, 2u);
    MEMORY[0x2318B9880](v62, -1, -1);
  }

  (*(v79 + 8))(v59, v80);
  (*(v75 + 8))(v76, v78);
  (*(v64 + 8))(v73, v28);
  v52 = v81;
  v46 = v82;
  v58(v81, v57, v82);
  v51 = 0;
  return sub_22C36C640(v52, v51, 1, v46);
}

uint64_t sub_22C4FF6CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v70 = a3;
  v63 = a6;
  v10 = sub_22C3A5908(&qword_27D9BD918, &unk_22C919B08);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = (v59 - v12);
  v76 = sub_22C3A5908(&qword_27D9BB6D0, &qword_22C90FAE0);
  v60 = *(v76 - 8);
  v14 = *(v60 + 64);
  v15 = MEMORY[0x28223BE20](v76);
  v61 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v59[1] = v59 - v17;
  v78 = sub_22C909A3C();
  v18 = *(v78 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v78);
  v21 = v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_22C3A5908(&qword_27D9BD920, &qword_22C919B18);
  v22 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v75 = v59 - v23;
  v24 = *a1;
  v25 = *a1 + 64;
  v26 = a5 >> 1;
  v77 = v18 + 16;
  v71 = v18;
  v68 = (v18 + 32);
  v62 = a2;
  swift_unknownObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v27 = 0;
  v28 = 40;
  v64 = MEMORY[0x277D84F90];
  v66 = v24;
  v67 = v21;
  v59[0] = v25;
  v65 = a5 >> 1;
LABEL_2:
  v29 = (v25 + 40 * v27);
  while (1)
  {
    if (v26 == a4)
    {

      swift_unknownObjectRelease();
LABEL_16:

      swift_unknownObjectRelease();
      sub_22C8D5674();

      v79 = 0;
      *&v80 = MEMORY[0x277D84F90];
      *(&v80 + 1) = MEMORY[0x277D84F90];

      sub_22C50A750(v55, sub_22C52DE20, 0, &v79);

      v57 = v80;
      v58 = v63;
      *v63 = v79;
      *(v58 + 1) = v57;
      return result;
    }

    if (a4 >= v26)
    {
      break;
    }

    v30 = *(v71 + 16);
    v30(v21, v70 + *(v71 + 72) * a4, v78);
    v31 = *(v24 + 16);
    if (v27 == v31)
    {

      swift_unknownObjectRelease();
      (*(v71 + 8))(v21, v78);
      goto LABEL_16;
    }

    if (v27 >= v31)
    {
      goto LABEL_18;
    }

    v73 = v27;
    v74 = a4;
    v33 = *(v29 - 1);
    v72 = *v29;
    v32 = v72;
    v34 = *(v29 - 3);
    v35 = *(v29 - 2);
    v28 = *(v29 - 4);
    v36 = &v75[*(v69 + 48)];
    v37 = v78;
    (*v68)();
    *v36 = v28;
    v36[1] = v34;
    v36[2] = v35;
    v36[3] = v33;
    v36[4] = v32;
    v38 = v13 + *(v76 + 48);
    *v13 = v28;
    v39 = v13;
    v40 = &v38[*(sub_22C3A5908(&qword_27D9BB0F0, &qword_22C90D990) + 48)];
    v41 = v38;
    v42 = v75;
    v30(v41, v75, v37);
    *v40 = v34;
    v40[1] = v35;
    v43 = v72;
    v40[2] = v33;
    v40[3] = v43;
    v13 = v39;
    v44 = v39;
    v45 = v76;
    sub_22C36C640(v44, 0, 1, v76);

    sub_22C456C94(v34, v35);

    sub_22C456C94(v34, v35);
    sub_22C36DD28(v42, &qword_27D9BD920, &qword_22C919B18);
    if (sub_22C370B74(v13, 1, v45) != 1)
    {
      sub_22C407C2C();
      sub_22C407C2C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v74;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v52 = *(v64 + 16);
        sub_22C59322C();
        v64 = v53;
      }

      v24 = v66;
      v21 = v67;
      v48 = *(v64 + 16);
      v49 = v73;
      v28 = 40;
      if (v48 >= *(v64 + 24) >> 1)
      {
        sub_22C59322C();
        v64 = v54;
      }

      v27 = v49 + 1;
      a4 = v47 + 1;
      v50 = v64;
      *(v64 + 16) = v48 + 1;
      v51 = v50 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v48;
      sub_22C407C2C();
      v25 = v59[0];
      v26 = v65;
      goto LABEL_2;
    }

    sub_22C36DD28(v13, &qword_27D9BD918, &unk_22C919B08);
    v29 += 5;
    v27 = v73 + 1;
    a4 = v74 + 1;
    v24 = v66;
    v21 = v67;
    v26 = v65;
  }

  __break(1u);
LABEL_18:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22C4FFD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v58 = sub_22C3A5908(&qword_27D9BB0F0, &qword_22C90D990);
  v3 = *(*(v58 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v58);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v49 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v49 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  v15 = sub_22C9063DC();
  v60 = *(v15 - 8);
  v61 = v15;
  v16 = *(v60 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C903F7C();
  v62 = a1;
  sub_22C3A7214();
  sub_22C3A7214();
  v59 = v18;
  v19 = sub_22C9063CC();
  v20 = sub_22C90AADC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v56 = v20;
    v22 = v21;
    v54 = v21;
    v57 = swift_slowAlloc();
    v64 = v57;
    *v22 = 136315394;
    sub_22C3A7214();
    v55 = v19;
    v23 = v58;
    v24 = *(v58 + 48);
    v25 = &v9[v24];
    v26 = &v6[v24];
    v27 = sub_22C909A3C();
    v28 = *(v27 - 8);
    v29 = *(v28 + 32);
    v51 = v12;
    v52 = v29;
    v53 = v28 + 32;
    v30 = *v25;
    v49 = *(v25 + 1);
    v50 = v30;
    v29(v6, v9, v27);
    v31 = v49;
    *v26 = v50;
    *(v26 + 1) = v31;
    v32 = sub_22C90A1AC();
    v34 = v33;
    sub_22C36DD28(v14, &qword_27D9BB0F0, &qword_22C90D990);
    v35 = sub_22C36F9F4(v32, v34, &v64);

    v36 = v54;
    *(v54 + 4) = v35;
    *(v36 + 12) = 2080;
    v37 = v51;
    sub_22C3A7214();
    v38 = *(v23 + 48);
    v39 = &v6[v38];
    v40 = *&v9[v38];
    v49 = *&v9[v38 + 16];
    v50 = v40;
    v52(v6, v9, v27);
    v41 = v49;
    *v39 = v50;
    *(v39 + 1) = v41;
    v42 = sub_22C90A1AC();
    v44 = v43;
    sub_22C36DD28(v37, &qword_27D9BB0F0, &qword_22C90D990);
    v45 = sub_22C36F9F4(v42, v44, &v64);

    *(v36 + 14) = v45;
    v46 = v55;
    _os_log_impl(&dword_22C366000, v55, v56, "❗️ Folding enum cases, but identifier has already been seen.\nTaking old value: %s\nover new value: %s", v36, 0x16u);
    v47 = v57;
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v47, -1, -1);
    MEMORY[0x2318B9880](v36, -1, -1);
  }

  else
  {

    sub_22C36DD28(v12, &qword_27D9BB0F0, &qword_22C90D990);
    sub_22C36DD28(v14, &qword_27D9BB0F0, &qword_22C90D990);
  }

  (*(v60 + 8))(v59, v61);
  return sub_22C3A7214();
}

uint64_t sub_22C500184@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = sub_22C4F60F4(*a1, a1[1], a1[2]);
  v8 = sub_22C47D738(10, 0xE100000000000000, v7);

  v9 = swift_allocObject();
  *(v9 + 16) = 0x207373616C63;
  *(v9 + 24) = 0xE600000000000000;
  sub_22C591324();
  v11 = v10;
  v12 = *(v10 + 16);
  v13 = v12 + 1;
  if (v12 >= *(v10 + 24) >> 1)
  {
    sub_22C591324();
    v11 = v25;
  }

  *(v11 + 16) = v13;
  *(v11 + 8 * v12 + 32) = v9;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v15 = *(v11 + 24);
  v16 = v12 + 2;

  if ((v12 + 2) > (v15 >> 1))
  {
    sub_22C591324();
    v11 = v26;
  }

  *(v11 + 16) = v16;
  *(v11 + 8 * v13 + 32) = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = 0xA3A296D756E4528;
  *(v17 + 24) = 0xE800000000000000;
  v18 = v12 + 3;
  if ((v12 + 3) > *(v11 + 24) >> 1)
  {
    sub_22C591324();
    v11 = v27;
  }

  *(v11 + 16) = v18;
  *(v11 + 8 * v16 + 32) = v17;
  v19 = v12 + 4;
  if ((v12 + 4) > *(v11 + 24) >> 1)
  {
    sub_22C591324();
    v11 = v28;
  }

  *(v11 + 16) = v19;
  *(v11 + 8 * v18 + 32) = v8;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0xE000000000000000;
  v21 = *(v11 + 24);

  if ((v12 + 5) > (v21 >> 1))
  {
    sub_22C591324();
    v11 = v29;
  }

  *(v11 + 16) = v12 + 5;
  *(v11 + 8 * v19 + 32) = v20;
  v22 = sub_22C3DB9B0(v11);

  v23 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  result = swift_allocObject();
  *(result + 16) = v22;
  *(v23 + 16) = result;
  *a4 = v23 | 0x6000000000000000;
  return result;
}

uint64_t sub_22C50045C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_22C3A5908(&qword_27D9BD910, &unk_22C91A410);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v41 - v6);
  v8 = swift_allocObject();
  *(v8 + 16) = 538976288;
  *(v8 + 24) = 0xE400000000000000;
  sub_22C591324();
  v10 = v9;
  v11 = *(v9 + 16);
  v12 = *(v9 + 24) >> 1;
  v13 = v11 + 1;
  if (v12 <= v11)
  {
    sub_22C591324();
    v10 = v36;
    v12 = *(v36 + 24) >> 1;
  }

  *(v10 + 16) = v13;
  *(v10 + 8 * v11 + 32) = v8;
  v14 = *a1;
  v15 = v11 + 2;
  if (v12 < (v11 + 2))
  {
    sub_22C591324();
    v10 = v37;
  }

  *(v10 + 16) = v15;
  *(v10 + 8 * v13 + 32) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = 2112800;
  *(v16 + 24) = 0xE300000000000000;
  v17 = *(v10 + 24);
  v18 = v11 + 3;

  if (v18 > (v17 >> 1))
  {
    sub_22C591324();
    v10 = v38;
  }

  *(v10 + 16) = v18;
  *(v10 + 8 * v15 + 32) = v16;
  sub_22C3A7214();
  v19 = *v7;

  v20 = v7 + *(v4 + 48);
  v21 = &v20[*(sub_22C3A5908(&qword_27D9BB0F0, &qword_22C90D990) + 48)];
  v22 = v21[2];
  v23 = v21[3];
  sub_22C456D48(*v21, v21[1]);
  sub_22C909A0C();
  v24 = sub_22C909A3C();
  (*(*(v24 - 8) + 8))(v20, v24);
  v25 = sub_22C90A2AC();
  v27 = v26;

  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  *(v28 + 24) = v27;
  v29 = *(v10 + 16);
  v30 = *(v10 + 24);

  if (v29 >= v30 >> 1)
  {
    sub_22C591324();
    v10 = v39;
  }

  *(v10 + 16) = v29 + 1;
  *(v10 + 8 * v29 + 32) = v28;

  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0xE000000000000000;
  v32 = *(v10 + 16);
  if (v32 >= *(v10 + 24) >> 1)
  {
    sub_22C591324();
    v10 = v40;
  }

  *(v10 + 16) = v32 + 1;
  *(v10 + 8 * v32 + 32) = v31;
  v33 = sub_22C3DB9B0(v10);

  v34 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  result = swift_allocObject();
  *(result + 16) = v33;
  *(v34 + 16) = result;
  *a2 = v34 | 0x6000000000000000;
  return result;
}

void sub_22C500808(uint64_t a1@<X8>)
{
  v3 = v1[9];
  sub_22C3766E0(v1 + 5, v1[8]);
  v4 = *(v3 + 8);
  v5 = sub_22C36EBF0();
  v7 = v6(v5);
  v9 = v8;
  v10 = sub_22C36EBF0();
  sub_22C4FE564(v10, v11, v12, v13, v14, v15, v16, v17, v28, v29, v30, v31, v32, v33, v34, v36, v38, v40, v42, v44);
  v18 = v35;
  if (v45)
  {
  }

  else
  {
    sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F870;
    sub_22C36A83C();
    v20 = swift_allocObject();
    *(v20 + 16) = v7;
    *(v20 + 24) = v9;
    *(inited + 32) = v20;
    sub_22C36D2A8();
    v21 = swift_allocObject();
    sub_22C37B2A4(v21, 5);
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v22 = swift_allocObject();
    *(v22 + 16) = v35;
    *(v21 + 32) = v22;
    *(inited + 40) = v21 | 0xA000000000000000;
    v23 = sub_22C37335C();
    sub_22C456C94(v23, v24);

    v25 = sub_22C3DB9B0(inited);
    swift_setDeallocating();
    sub_22C58FFB0();
    sub_22C369AEC();
    v26 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    sub_22C369AEC();
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    *(v26 + 16) = v27;
    sub_22C456CE4(v35, v37, v39, v41, v43, 0);
    v18 = v26 | 0x6000000000000000;
  }

  *a1 = v18;
  *(a1 + 8) = v37;
  *(a1 + 16) = v39;
  *(a1 + 24) = v41;
  *(a1 + 32) = v43;
  *(a1 + 40) = v45;
}

void *sub_22C5009F4(uint64_t a1, uint64_t a2)
{
  sub_22C3704C4();
  v5 = sub_22C90952C();
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v11 = sub_22C374168(v3, v3[3]);
  sub_22C90994C();
  sub_22C9094BC();
  v12 = *(v8 + 8);
  v13 = sub_22C36EBF0();
  v14(v13);
  v15 = sub_22C38644C();
  sub_22C4FB170(v15, v16, v17, v18, a2);
  sub_22C385D88();

  sub_22C37170C();
  sub_22C90A28C();
  sub_22C385630();

  sub_22C500B78(v2);
  v19 = sub_22C90A28C();
  v21 = v20;

  MEMORY[0x2318B7850](v19, v21);

  return v11;
}

uint64_t sub_22C500B78(uint64_t a1)
{
  v2 = sub_22C9063DC();
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C9094AC();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C909A5C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C90952C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90994C();
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == *MEMORY[0x277D72D50] || v20 == *MEMORY[0x277D72D30])
  {
    (*(v16 + 8))(v19, v15);
    sub_22C90996C();
    v22 = sub_22C909A4C();
    (*(v11 + 8))(v14, v10);
  }

  else
  {
    v31 = a1;
    if (v20 == *MEMORY[0x277D72D28])
    {
      (*(v16 + 96))(v19, v15);
      v22 = *(*v19 + 32);
      v23 = *(*v19 + 40);

LABEL_11:

      return v22;
    }

    if (v20 == *MEMORY[0x277D72D18])
    {
      (*(v16 + 96))(v19, v15);
      v24 = *v19;
      v25 = swift_projectBox();
      v26 = v32;
      (*(v32 + 16))(v9, v25, v6);
      v22 = sub_22C90949C();
      (*(v26 + 8))(v9, v6);
      goto LABEL_11;
    }

    sub_22C903F7C();
    v27 = sub_22C9063CC();
    v28 = sub_22C90AADC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_22C366000, v27, v28, "Unsupported EnumerationDefinition.identifier type found", v29, 2u);
      MEMORY[0x2318B9880](v29, -1, -1);
    }

    (*(v33 + 8))(v5, v34);
    sub_22C90996C();
    v22 = sub_22C909A4C();
    (*(v11 + 8))(v14, v10);
    (*(v16 + 8))(v19, v15);
  }

  return v22;
}

double sub_22C500FEC()
{
  v2 = sub_22C3727F4();
  v3 = type metadata accessor for PromptTreeIdentifier(v2);
  v4 = sub_22C36985C(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  sub_22C50B530();
  sub_22C909A2C();
  sub_22C90A28C();
  sub_22C50B42C();

  sub_22C36CA88();
  sub_22C501204();
  v8 = v7;
  v10 = v9;

  sub_22C36A83C();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v10;
  *v1 = v11;
  v12 = *MEMORY[0x277D1D7C8];
  v13 = sub_22C902D0C();
  sub_22C36985C(v13);
  v15 = *(v14 + 104);
  v16 = v14 + 104;
  v15(v1, v12, v13);
  sub_22C36C640(v1, 0, 3, v13);
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  swift_storeEnumTagMultiPayload();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_22C909A2C();
  *(v17 + 24) = v18;
  *(v17 + 32) = 6;
  v19 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
  *(v1 + v19) = v17;
  v15((v1 + v19), *MEMORY[0x277D1D7E8], v13);
  sub_22C37335C();
  swift_storeEnumTagMultiPayload();
  sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  swift_allocBox();
  sub_22C381A40();
  sub_22C50A6A4();
  type metadata accessor for PromptTreeIdentifier.Label(0);
  v20 = swift_allocBox();
  sub_22C486784();
  sub_22C36D29C();
  sub_22C50A6FC();
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  sub_22C369AEC();
  v21 = swift_allocObject();
  *(v21 + 16) = v20 | 0x2000000000000000;
  *(v13 + v16) = v21;
  *v0 = v3 | 0x4000000000000000;
  *(v0 + 40) = 0;
  return sub_22C37274C();
}

void sub_22C501204()
{
  sub_22C36BA7C();
  v2 = v1;
  v4 = v3;
  v5 = sub_22C3A5908(&qword_27D9BC170, &unk_22C912180);
  sub_22C369824(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  sub_22C37FDDC();
  v11 = sub_22C3A5908(&qword_27D9BC160, &unk_22C912170);
  sub_22C369914(v11);
  v13 = *(v12 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v14);
  v16 = v18 - v15;

  sub_22C8124CC(1);
  sub_22C50B4BC();
  sub_22C90306C();
  sub_22C374C34();
  sub_22C437C60();

  (*(v7 + 8))(v0, v5);
  v17 = sub_22C3A5908(&qword_27D9BC178, &unk_22C914830);
  LODWORD(v5) = sub_22C370B74(v16, 1, v17);
  sub_22C36DD28(v16, &qword_27D9BC160, &unk_22C912170);
  if (v5 == 1)
  {
  }

  else
  {
    v18[0] = 95;
    v18[1] = 0xE100000000000000;
    MEMORY[0x2318B7850](v4, v2);
  }

  sub_22C36CC48();
}

void sub_22C5013EC()
{
  sub_22C36BA7C();
  v4 = v0;
  v97 = v5;
  v7 = v6;
  v8 = type metadata accessor for DynamicEnumeration.Case(0);
  v100 = *(v8 - 8);
  v9 = *(v100 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_22C369838();
  v10 = sub_22C36BE24();
  v11 = type metadata accessor for DynamicEnumeration(v10);
  v12 = sub_22C36985C(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  sub_22C50B438();
  v95 = sub_22C9063DC();
  v15 = sub_22C369824(v95);
  v93 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  sub_22C50B530();
  v19 = v0 + *(type metadata accessor for DynamicEnumerationRenderer_v1_0(0) + 24);
  v20 = *(type metadata accessor for FullPlannerPreferences() + 64);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C901EDC();
  v21 = v102;
  v91 = v11;
  v22 = *(v7 + *(v11 + 20));

  v23 = sub_22C36BA00();
  v99 = sub_22C8125A0(v23, v24);
  v101 = v25;
  v27 = v26;
  v92 = v28;
  v29 = v28 >> 1;
  v94 = v26;
  if (v102 >= *(v22 + 16))
  {
LABEL_7:
    v36 = v4[9];
    sub_22C3766E0(v4 + 5, v4[8]);
    v37 = *(v36 + 24);
    v38 = sub_22C36CA88();
    v39(v38);
    v90 = *(&v102 + 1);
    v40 = v103;
    v41 = v104;
    sub_22C378AB0(v4, v107);
    v42 = v29 - v27;
    if (__OFSUB__(v29, v27))
    {
      goto LABEL_26;
    }

    v98 = v105;
    v43 = MEMORY[0x277D84F90];
    v96 = v102;
    if (v42)
    {
      v106 = MEMORY[0x277D84F90];
      sub_22C50B694();
      if (v42 < 0)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v89 = v104;
      v43 = v106;
      while (v27 < v29)
      {
        v44 = *(v100 + 72);
        sub_22C50A6A4();
        v46 = v108;
        v45 = v109;
        sub_22C3766E0(v107, v108);
        (*(v45 + 8))(&v102, v2, v46, v45);
        sub_22C50A6FC();
        v47 = v102;
        v48 = v103;
        v49 = v104;
        v50 = v105;
        v106 = v43;
        v52 = *(v43 + 16);
        v51 = *(v43 + 24);
        if (v52 >= v51 >> 1)
        {
          v54 = sub_22C369AB0(v51);
          v88 = v55;
          v87 = v56;
          sub_22C3B68D4(v54, v52 + 1, 1);
          v48 = v87;
          v47 = v88;
          v43 = v106;
        }

        *(v43 + 16) = v52 + 1;
        v53 = v43 + 48 * v52;
        *(v53 + 32) = v47;
        *(v53 + 48) = v48;
        *(v53 + 64) = v49;
        *(v53 + 72) = v50;
        if (v29 == ++v27)
        {
          v57 = v97;
          v58 = v99;
          v41 = v89;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v57 = v97;
    v58 = v99;
LABEL_17:
    sub_22C36FF94(v107);
    v59 = sub_22C47F410(v43);
    v61 = v60;

    if (v61)
    {
      v59 = v59;
      if ((v98 & 1) == 0)
      {
        sub_22C456CE4(v96, v90, v40, *(&v40 + 1), v41, 0);
        swift_unknownObjectRelease();
LABEL_22:
        *v57 = v59;
        *(v57 + 8) = 0u;
        *(v57 + 24) = 0u;
        *(v57 + 40) = 1;
LABEL_24:
        sub_22C36CC48();
        return;
      }
    }

    else
    {
      *&v102 = v59;
      v62 = sub_22C50B444();
      sub_22C50B070(v62, v63);
      sub_22C501A48(&v102, v58, v101, v94, v92, v107);
      v64 = sub_22C50B444();
      sub_22C396BF8(v64, v65);
      v66 = sub_22C50B444();
      sub_22C396BF8(v66, v67);
      v59 = v107[0];
      if (!v98)
      {
        *&v102 = v96;
        *(&v102 + 1) = v90;
        v103 = v40;
        v104 = v41;
        v105 = v107[0];
        v68 = sub_22C50B4A0();
        sub_22C456C30(v68, v69, v70, v71, v72, v73);

        v74 = sub_22C36FC74();
        sub_22C456C94(v74, v75);

        v76 = sub_22C5024E4(&v102, v59);
        v77 = sub_22C50B4A0();
        sub_22C456CE4(v77, v78, v79, v80, v81, v82);

        v83 = sub_22C36FC74();
        sub_22C456D48(v83, v84);
        swift_unknownObjectRelease();

        v85 = sub_22C37170C();
        sub_22C456D48(v85, v86);

        *v57 = v76;
        *(v57 + 8) = 0u;
        *(v57 + 24) = 0u;
        *(v57 + 40) = 0;
        goto LABEL_24;
      }
    }

    sub_22C396BF8(v59, v61 & 1);
    swift_unknownObjectRelease();
    v59 = v96;
    goto LABEL_22;
  }

  sub_22C903F7C();
  sub_22C374C34();
  sub_22C50A6A4();
  swift_unknownObjectRetain();
  v30 = sub_22C9063CC();
  v31 = sub_22C90AACC();
  v32 = v3;
  if (!sub_22C37B204(v31))
  {
    sub_22C3886E0();
    sub_22C50A6FC();

    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v33 = sub_22C383050();
  *v33 = 134218240;
  if (!__OFSUB__(v29, v27))
  {
    v34 = v33;
    *(v33 + 4) = v29 - v27;
    swift_unknownObjectRelease();
    *(v34 + 12) = 2048;
    v35 = *(*(v32 + *(v91 + 20)) + 16);
    sub_22C3886E0();
    sub_22C50A6FC();
    *(v34 + 14) = v35;
    _os_log_impl(&dword_22C366000, v30, v21, "Enum cases for dynamic enumeration truncated to first %ld out of %ld cases", v34, 0x16u);
    sub_22C3699EC();

    v27 = v94;
LABEL_6:
    (*(v93 + 8))(v1, v95);
    goto LABEL_7;
  }

LABEL_28:
  __break(1u);
}