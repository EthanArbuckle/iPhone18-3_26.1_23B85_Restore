uint64_t *sub_25A9429B0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v174 = a8;
  v173 = a7;
  v172 = a6;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA048B8, &unk_25A9FBD80);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v163 - v21;
  v180 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_25A9988D8();
  if (v13)
  {
    return a4;
  }

  v168 = a4;
  v169 = a5;
  v170 = v22;
  v171 = v18;
  sub_25A872F24(v178, v176);
  __swift_project_boxed_opaque_existential_1(v178, v179);
  if ((sub_25A998998() & 1) == 0)
  {
    v167 = a13;
    v24 = (v19 + 8);
    a4 = MEMORY[0x277D84F90];
    v166 = a12;
    v165 = a11;
    v164 = a10;
    v163 = a9;
    v25 = v171;
    v26 = v170;
    while (1)
    {
      __swift_project_boxed_opaque_existential_1(v176, v177);
      if (sub_25A998998())
      {
        goto LABEL_4;
      }

      __swift_mutable_project_boxed_opaque_existential_1(v176, v177);
      sub_25A896DA0();
      sub_25A998978();
      LOBYTE(v175) = 0;
      v28 = sub_25A9988F8();
      v29 = v27;
      v30 = v28 == 0x656D6E6769737341 && v27 == 0xEA0000000000746ELL;
      if (v30 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Assignment();
        __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
        sub_25A94BF58(&qword_27FA05140, 255, type metadata accessor for Assignment);
        sub_25A998988();
        v31 = v175;
        v32 = v180;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v180 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v32 = sub_25A966E00(0, v32[2] + 1, 1, v32);
          v180 = v32;
        }

        v35 = v32[2];
        v34 = v32[3];
        v36 = v35 + 1;
        if (v35 >= v34 >> 1)
        {
          v180 = sub_25A966E00((v34 > 1), v35 + 1, 1, v32);
        }

        (*v24)(v26, v25);
        v37 = type metadata accessor for Assignment;
        v38 = &unk_27FA05148;
      }

      else if (v28 == 0x7069726373627553 && v29 == 0xE900000000000074 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Subscript();
        __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
        sub_25A94BF58(&qword_27FA05130, 255, type metadata accessor for Subscript);
        sub_25A998988();
        v31 = v175;
        v41 = v180;
        v42 = swift_isUniquelyReferenced_nonNull_native();
        v180 = v41;
        if ((v42 & 1) == 0)
        {
          v41 = sub_25A966E00(0, v41[2] + 1, 1, v41);
          v180 = v41;
        }

        v35 = v41[2];
        v43 = v41[3];
        v36 = v35 + 1;
        if (v35 >= v43 >> 1)
        {
          v180 = sub_25A966E00((v43 > 1), v35 + 1, 1, v41);
        }

        (*v24)(v26, v25);
        v37 = type metadata accessor for Subscript;
        v38 = &unk_27FA05138;
      }

      else if (v28 == 0x6563696F6843 && v29 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Choice();
        __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
        sub_25A94BF58(&qword_27FA05120, 255, type metadata accessor for Choice);
        sub_25A998988();
        v31 = v175;
        v44 = v180;
        v45 = swift_isUniquelyReferenced_nonNull_native();
        v180 = v44;
        if ((v45 & 1) == 0)
        {
          v44 = sub_25A966E00(0, v44[2] + 1, 1, v44);
          v180 = v44;
        }

        v35 = v44[2];
        v46 = v44[3];
        v36 = v35 + 1;
        if (v35 >= v46 >> 1)
        {
          v180 = sub_25A966E00((v46 > 1), v35 + 1, 1, v44);
        }

        (*v24)(v26, v25);
        v37 = type metadata accessor for Choice;
        v38 = &unk_27FA05128;
      }

      else if (v28 == 0x746E6174736E6F43 && v29 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Constant();
        __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
        sub_25A94BF58(&qword_27FA05110, 255, type metadata accessor for Constant);
        sub_25A998988();
        v31 = v175;
        v47 = v180;
        v48 = swift_isUniquelyReferenced_nonNull_native();
        v180 = v47;
        if ((v48 & 1) == 0)
        {
          v47 = sub_25A966E00(0, v47[2] + 1, 1, v47);
          v180 = v47;
        }

        v35 = v47[2];
        v49 = v47[3];
        v36 = v35 + 1;
        if (v35 >= v49 >> 1)
        {
          v180 = sub_25A966E00((v49 > 1), v35 + 1, 1, v47);
        }

        (*v24)(v26, v25);
        v37 = type metadata accessor for Constant;
        v38 = &unk_27FA05118;
      }

      else if (v28 == 1751343429 && v29 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Each();
        __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
        sub_25A94BF58(&qword_27FA05100, 255, type metadata accessor for Each);
        sub_25A998988();
        v31 = v175;
        v50 = v180;
        v51 = swift_isUniquelyReferenced_nonNull_native();
        v180 = v50;
        if ((v51 & 1) == 0)
        {
          v50 = sub_25A966E00(0, v50[2] + 1, 1, v50);
          v180 = v50;
        }

        v35 = v50[2];
        v52 = v50[3];
        v36 = v35 + 1;
        if (v35 >= v52 >> 1)
        {
          v180 = sub_25A966E00((v52 > 1), v35 + 1, 1, v50);
        }

        (*v24)(v26, v25);
        v37 = type metadata accessor for Each;
        v38 = &unk_27FA05108;
      }

      else if (v28 == 0x426C61636978654CLL && v29 == 0xEC0000006B636F6CLL || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for LexicalBlock();
        __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
        sub_25A94BF58(&qword_27FA04A18, 255, type metadata accessor for LexicalBlock);
        sub_25A998988();
        v31 = v175;
        v53 = v180;
        v54 = swift_isUniquelyReferenced_nonNull_native();
        v180 = v53;
        if ((v54 & 1) == 0)
        {
          v53 = sub_25A966E00(0, v53[2] + 1, 1, v53);
          v180 = v53;
        }

        v35 = v53[2];
        v55 = v53[3];
        v36 = v35 + 1;
        if (v35 >= v55 >> 1)
        {
          v180 = sub_25A966E00((v55 > 1), v35 + 1, 1, v53);
        }

        (*v24)(v26, v25);
        v37 = type metadata accessor for LexicalBlock;
        v38 = &unk_27FA050F8;
      }

      else if (v28 == 0x6E7275746552 && v29 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Return();
        __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
        sub_25A94BF58(&qword_27FA050E8, 255, type metadata accessor for Return);
        sub_25A998988();
        v31 = v175;
        v56 = v180;
        v57 = swift_isUniquelyReferenced_nonNull_native();
        v180 = v56;
        if ((v57 & 1) == 0)
        {
          v56 = sub_25A966E00(0, v56[2] + 1, 1, v56);
          v180 = v56;
        }

        v35 = v56[2];
        v58 = v56[3];
        v36 = v35 + 1;
        if (v35 >= v58 >> 1)
        {
          v180 = sub_25A966E00((v58 > 1), v35 + 1, 1, v56);
        }

        (*v24)(v26, v25);
        v37 = type metadata accessor for Return;
        v38 = &unk_27FA050F0;
      }

      else if (v28 == 0x73697261706D6F43 && v29 == 0xEA00000000006E6FLL || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Comparison();
        __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
        sub_25A94BF58(&qword_27FA050D8, 255, type metadata accessor for Comparison);
        sub_25A998988();
        v31 = v175;
        v59 = v180;
        v60 = swift_isUniquelyReferenced_nonNull_native();
        v180 = v59;
        if ((v60 & 1) == 0)
        {
          v59 = sub_25A966E00(0, v59[2] + 1, 1, v59);
          v180 = v59;
        }

        v35 = v59[2];
        v61 = v59[3];
        v36 = v35 + 1;
        if (v35 >= v61 >> 1)
        {
          v180 = sub_25A966E00((v61 > 1), v35 + 1, 1, v59);
        }

        v26 = v170;
        v25 = v171;
        (*v24)(v170, v171);
        v37 = type metadata accessor for Comparison;
        v38 = &unk_27FA050E0;
      }

      else if (v28 == 0x704F6E6942 && v29 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for BinOp();
        __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
        sub_25A94BF58(&qword_27FA050C8, 255, type metadata accessor for BinOp);
        sub_25A998988();
        v31 = v175;
        v62 = v180;
        v63 = swift_isUniquelyReferenced_nonNull_native();
        v180 = v62;
        if ((v63 & 1) == 0)
        {
          v62 = sub_25A966E00(0, v62[2] + 1, 1, v62);
          v180 = v62;
        }

        v35 = v62[2];
        v64 = v62[3];
        v36 = v35 + 1;
        if (v35 >= v64 >> 1)
        {
          v180 = sub_25A966E00((v64 > 1), v35 + 1, 1, v62);
        }

        v26 = v170;
        v25 = v171;
        (*v24)(v170, v171);
        v37 = type metadata accessor for BinOp;
        v38 = &unk_27FA050D0;
      }

      else if (v28 == 1819042115 && v29 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Call();
        __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
        sub_25A94BF58(&qword_27FA050B8, 255, type metadata accessor for Call);
        sub_25A998988();
        v31 = v175;
        v65 = v180;
        v66 = swift_isUniquelyReferenced_nonNull_native();
        v180 = v65;
        if ((v66 & 1) == 0)
        {
          v65 = sub_25A966E00(0, v65[2] + 1, 1, v65);
          v180 = v65;
        }

        v35 = v65[2];
        v67 = v65[3];
        v36 = v35 + 1;
        if (v35 >= v67 >> 1)
        {
          v180 = sub_25A966E00((v67 > 1), v35 + 1, 1, v65);
        }

        v26 = v170;
        v25 = v171;
        (*v24)(v170, v171);
        v37 = type metadata accessor for Call;
        v38 = &unk_27FA050C0;
      }

      else if (v28 == 1701667150 && v29 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Name();
        __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
        sub_25A94BF58(&qword_27FA050A8, 255, type metadata accessor for Name);
        sub_25A998988();
        v31 = v175;
        v68 = v180;
        v69 = swift_isUniquelyReferenced_nonNull_native();
        v180 = v68;
        if ((v69 & 1) == 0)
        {
          v68 = sub_25A966E00(0, v68[2] + 1, 1, v68);
          v180 = v68;
        }

        v35 = v68[2];
        v70 = v68[3];
        v36 = v35 + 1;
        if (v35 >= v70 >> 1)
        {
          v180 = sub_25A966E00((v70 > 1), v35 + 1, 1, v68);
        }

        v26 = v170;
        v25 = v171;
        (*v24)(v170, v171);
        v37 = type metadata accessor for Name;
        v38 = &unk_27FA050B0;
      }

      else if (v28 == 0x7475626972747441 && v29 == 0xE900000000000065 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Attribute();
        __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
        sub_25A94BF58(&qword_27FA05098, 255, type metadata accessor for Attribute);
        sub_25A998988();
        v31 = v175;
        v71 = v180;
        v72 = swift_isUniquelyReferenced_nonNull_native();
        v180 = v71;
        if ((v72 & 1) == 0)
        {
          v71 = sub_25A966E00(0, v71[2] + 1, 1, v71);
          v180 = v71;
        }

        v35 = v71[2];
        v73 = v71[3];
        v36 = v35 + 1;
        if (v35 >= v73 >> 1)
        {
          v180 = sub_25A966E00((v73 > 1), v35 + 1, 1, v71);
        }

        v26 = v170;
        v25 = v171;
        (*v24)(v170, v171);
        v37 = type metadata accessor for Attribute;
        v38 = &unk_27FA050A0;
      }

      else if (v28 == 0x64726F7779654BLL && v29 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Keyword();
        __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
        sub_25A94BF58(&qword_27FA05088, 255, type metadata accessor for Keyword);
        sub_25A998988();
        v31 = v175;
        v74 = v180;
        v75 = swift_isUniquelyReferenced_nonNull_native();
        v180 = v74;
        if ((v75 & 1) == 0)
        {
          v74 = sub_25A966E00(0, v74[2] + 1, 1, v74);
          v180 = v74;
        }

        v35 = v74[2];
        v76 = v74[3];
        v36 = v35 + 1;
        if (v35 >= v76 >> 1)
        {
          v180 = sub_25A966E00((v76 > 1), v35 + 1, 1, v74);
        }

        v26 = v170;
        v25 = v171;
        (*v24)(v170, v171);
        v37 = type metadata accessor for Keyword;
        v38 = &unk_27FA05090;
      }

      else if (v28 == 0x7375656870726F4DLL && v29 == 0xED00007961727241 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for MorpheusArray();
        __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
        sub_25A94BF58(&qword_27FA05078, 255, type metadata accessor for MorpheusArray);
        sub_25A998988();
        v31 = v175;
        v77 = v180;
        v78 = swift_isUniquelyReferenced_nonNull_native();
        v180 = v77;
        if ((v78 & 1) == 0)
        {
          v77 = sub_25A966E00(0, v77[2] + 1, 1, v77);
          v180 = v77;
        }

        v35 = v77[2];
        v79 = v77[3];
        v36 = v35 + 1;
        if (v35 >= v79 >> 1)
        {
          v180 = sub_25A966E00((v79 > 1), v35 + 1, 1, v77);
        }

        v26 = v170;
        v25 = v171;
        (*v24)(v170, v171);
        v37 = type metadata accessor for MorpheusArray;
        v38 = &unk_27FA05080;
      }

      else
      {
        if (v28 == 0x7375656870726F4DLL && v29 == 0xED0000656C707554 || (sub_25A9989E8() & 1) != 0)
        {

          type metadata accessor for MorpheusTuple();
          __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
          sub_25A94BF58(&qword_27FA05068, v80, type metadata accessor for MorpheusTuple);
          sub_25A998988();
          v81 = v175;
          v82 = v180;
          v83 = swift_isUniquelyReferenced_nonNull_native();
          v180 = v82;
          if ((v83 & 1) == 0)
          {
            v82 = sub_25A966E00(0, v82[2] + 1, 1, v82);
            v180 = v82;
          }

          v85 = v82[2];
          v84 = v82[3];
          if (v85 >= v84 >> 1)
          {
            v180 = sub_25A966E00((v84 > 1), v85 + 1, 1, v82);
          }

          v26 = v170;
          v25 = v171;
          (*v24)(v170, v171);
          v39 = sub_25A94BF58(&qword_27FA05070, v86, type metadata accessor for MorpheusTuple);
          a4 = v180;
          v180[2] = v85 + 1;
          v40 = &a4[2 * v85];
          v40[4] = v81;
          goto LABEL_19;
        }

        if (v28 == 0x7375656870726F4DLL && v29 == 0xEC00000074636944 || (sub_25A9989E8() & 1) != 0)
        {

          type metadata accessor for MorpheusDict();
          __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
          sub_25A94BF58(&qword_27FA05058, 255, type metadata accessor for MorpheusDict);
          sub_25A998988();
          v31 = v175;
          v87 = v180;
          v88 = swift_isUniquelyReferenced_nonNull_native();
          v180 = v87;
          if ((v88 & 1) == 0)
          {
            v87 = sub_25A966E00(0, v87[2] + 1, 1, v87);
            v180 = v87;
          }

          v35 = v87[2];
          v89 = v87[3];
          v36 = v35 + 1;
          if (v35 >= v89 >> 1)
          {
            v180 = sub_25A966E00((v89 > 1), v35 + 1, 1, v87);
          }

          v26 = v170;
          v25 = v171;
          (*v24)(v170, v171);
          v37 = type metadata accessor for MorpheusDict;
          v38 = &unk_27FA05060;
        }

        else if (v28 == 0x7375656870726F4DLL && v29 == 0xED00006563696C53 || (sub_25A9989E8() & 1) != 0)
        {

          type metadata accessor for MorpheusSlice();
          __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
          sub_25A94BF58(&qword_27FA05048, 255, type metadata accessor for MorpheusSlice);
          sub_25A998988();
          v31 = v175;
          v90 = v180;
          v91 = swift_isUniquelyReferenced_nonNull_native();
          v180 = v90;
          if ((v91 & 1) == 0)
          {
            v90 = sub_25A966E00(0, v90[2] + 1, 1, v90);
            v180 = v90;
          }

          v35 = v90[2];
          v92 = v90[3];
          v36 = v35 + 1;
          if (v35 >= v92 >> 1)
          {
            v180 = sub_25A966E00((v92 > 1), v35 + 1, 1, v90);
          }

          v26 = v170;
          v25 = v171;
          (*v24)(v170, v171);
          v37 = type metadata accessor for MorpheusSlice;
          v38 = &unk_27FA05050;
        }

        else if (v28 == 0x6E6F6974636E7546 && v29 == 0xEB00000000666544 || (sub_25A9989E8() & 1) != 0)
        {

          type metadata accessor for FunctionDef();
          __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
          sub_25A94BF58(&qword_27FA05038, 255, type metadata accessor for FunctionDef);
          sub_25A998988();
          v31 = v175;
          v93 = v180;
          v94 = swift_isUniquelyReferenced_nonNull_native();
          v180 = v93;
          if ((v94 & 1) == 0)
          {
            v93 = sub_25A966E00(0, v93[2] + 1, 1, v93);
            v180 = v93;
          }

          v35 = v93[2];
          v95 = v93[3];
          v36 = v35 + 1;
          if (v35 >= v95 >> 1)
          {
            v180 = sub_25A966E00((v95 > 1), v35 + 1, 1, v93);
          }

          v26 = v170;
          v25 = v171;
          (*v24)(v170, v171);
          v37 = type metadata accessor for FunctionDef;
          v38 = &unk_27FA05040;
        }

        else if (v28 == 0x6665447373616C43 && v29 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
        {

          type metadata accessor for ClassDef();
          __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
          sub_25A94BF58(&qword_27FA05028, 255, type metadata accessor for ClassDef);
          sub_25A998988();
          v31 = v175;
          v96 = v180;
          v97 = swift_isUniquelyReferenced_nonNull_native();
          v180 = v96;
          if ((v97 & 1) == 0)
          {
            v96 = sub_25A966E00(0, v96[2] + 1, 1, v96);
            v180 = v96;
          }

          v35 = v96[2];
          v98 = v96[3];
          v36 = v35 + 1;
          if (v35 >= v98 >> 1)
          {
            v180 = sub_25A966E00((v98 > 1), v35 + 1, 1, v96);
          }

          v26 = v170;
          v25 = v171;
          (*v24)(v170, v171);
          v37 = type metadata accessor for ClassDef;
          v38 = &unk_27FA05030;
        }

        else if (v28 == 0x7972616E55 && v29 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
        {

          type metadata accessor for Unary();
          __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
          sub_25A94BF58(&qword_27FA05018, 255, type metadata accessor for Unary);
          sub_25A998988();
          v31 = v175;
          v99 = v180;
          v100 = swift_isUniquelyReferenced_nonNull_native();
          v180 = v99;
          if ((v100 & 1) == 0)
          {
            v99 = sub_25A966E00(0, v99[2] + 1, 1, v99);
            v180 = v99;
          }

          v35 = v99[2];
          v101 = v99[3];
          v36 = v35 + 1;
          if (v35 >= v101 >> 1)
          {
            v180 = sub_25A966E00((v101 > 1), v35 + 1, 1, v99);
          }

          v26 = v170;
          v25 = v171;
          (*v24)(v170, v171);
          v37 = type metadata accessor for Unary;
          v38 = &unk_27FA05020;
        }

        else
        {
          if ((v28 != 0x6573696152 || v29 != 0xE500000000000000) && (sub_25A9989E8() & 1) == 0)
          {
            if (v28 == 0x745364656E696F4ALL && v29 == 0xE900000000000072 || (sub_25A9989E8() & 1) != 0)
            {

              type metadata accessor for JoinedStr();
              __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
              sub_25A94BF58(&qword_27FA04FF8, 255, type metadata accessor for JoinedStr);
              sub_25A998988();
              v105 = v175;
              v106 = v180;
              v107 = swift_isUniquelyReferenced_nonNull_native();
              v180 = v106;
              if ((v107 & 1) == 0)
              {
                v106 = sub_25A966E00(0, v106[2] + 1, 1, v106);
                v180 = v106;
              }

              v109 = v106[2];
              v108 = v106[3];
              v110 = v109 + 1;
              if (v109 >= v108 >> 1)
              {
                v180 = sub_25A966E00((v108 > 1), v109 + 1, 1, v106);
              }

              v26 = v170;
              v25 = v171;
              (*v24)(v170, v171);
              v111 = type metadata accessor for JoinedStr;
              v112 = &unk_27FA05000;
              goto LABEL_190;
            }

            if (v28 == 0x657474616D726F46 && v29 == 0xEE0065756C615664 || (sub_25A9989E8() & 1) != 0)
            {

              type metadata accessor for FormattedValue();
              __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
              sub_25A94BF58(&qword_27FA04FE8, 255, type metadata accessor for FormattedValue);
              sub_25A998988();
              v105 = v175;
              v116 = v180;
              v117 = swift_isUniquelyReferenced_nonNull_native();
              v180 = v116;
              if ((v117 & 1) == 0)
              {
                v116 = sub_25A966E00(0, v116[2] + 1, 1, v116);
                v180 = v116;
              }

              v109 = v116[2];
              v118 = v116[3];
              v110 = v109 + 1;
              if (v109 >= v118 >> 1)
              {
                v180 = sub_25A966E00((v118 > 1), v109 + 1, 1, v116);
              }

              v26 = v170;
              v25 = v171;
              (*v24)(v170, v171);
              v111 = type metadata accessor for FormattedValue;
              v112 = &unk_27FA04FF0;
              goto LABEL_190;
            }

            if (v28 == 0x704F6C6F6F42 && v29 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
            {

              type metadata accessor for BoolOp();
              __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
              sub_25A94BF58(&qword_27FA04FD8, 255, type metadata accessor for BoolOp);
              sub_25A998988();
              v105 = v175;
              v119 = v180;
              v120 = swift_isUniquelyReferenced_nonNull_native();
              v180 = v119;
              if ((v120 & 1) == 0)
              {
                v119 = sub_25A966E00(0, v119[2] + 1, 1, v119);
                v180 = v119;
              }

              v109 = v119[2];
              v121 = v119[3];
              v110 = v109 + 1;
              if (v109 >= v121 >> 1)
              {
                v180 = sub_25A966E00((v121 > 1), v109 + 1, 1, v119);
              }

              v26 = v170;
              v25 = v171;
              (*v24)(v170, v171);
              v111 = type metadata accessor for BoolOp;
              v112 = &unk_27FA04FE0;
              goto LABEL_190;
            }

            if (v28 == 0x65756E69746E6F43 && v29 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
            {

              type metadata accessor for Continue();
              __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
              sub_25A94BF58(&qword_27FA04FC8, 255, type metadata accessor for Continue);
              sub_25A998988();
              v105 = v175;
              v122 = v180;
              v123 = swift_isUniquelyReferenced_nonNull_native();
              v180 = v122;
              if ((v123 & 1) == 0)
              {
                v122 = sub_25A966E00(0, v122[2] + 1, 1, v122);
                v180 = v122;
              }

              v109 = v122[2];
              v124 = v122[3];
              v110 = v109 + 1;
              if (v109 >= v124 >> 1)
              {
                v180 = sub_25A966E00((v124 > 1), v109 + 1, 1, v122);
              }

              v26 = v170;
              v25 = v171;
              (*v24)(v170, v171);
              v111 = type metadata accessor for Continue;
              v112 = &unk_27FA04FD0;
              goto LABEL_190;
            }

            if (v28 == 0x6B61657242 && v29 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
            {

              type metadata accessor for Break();
              __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
              sub_25A94BF58(&qword_27FA04FB8, 255, type metadata accessor for Break);
              sub_25A998988();
              v105 = v175;
              v125 = v180;
              v126 = swift_isUniquelyReferenced_nonNull_native();
              v180 = v125;
              if ((v126 & 1) == 0)
              {
                v125 = sub_25A966E00(0, v125[2] + 1, 1, v125);
                v180 = v125;
              }

              v109 = v125[2];
              v127 = v125[3];
              v110 = v109 + 1;
              if (v109 >= v127 >> 1)
              {
                v180 = sub_25A966E00((v127 > 1), v109 + 1, 1, v125);
              }

              v26 = v170;
              v25 = v171;
              (*v24)(v170, v171);
              v111 = type metadata accessor for Break;
              v112 = &unk_27FA04FC0;
              goto LABEL_190;
            }

            if (v28 == 0x65686572706D6F43 && v29 == 0xED00006E6F69736ELL || (sub_25A9989E8() & 1) != 0)
            {

              type metadata accessor for Comprehension();
              __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
              sub_25A94BF58(&qword_27FA04FA8, 255, type metadata accessor for Comprehension);
              sub_25A998988();
              v105 = v175;
              v128 = v180;
              v129 = swift_isUniquelyReferenced_nonNull_native();
              v180 = v128;
              if ((v129 & 1) == 0)
              {
                v128 = sub_25A966E00(0, v128[2] + 1, 1, v128);
                v180 = v128;
              }

              v109 = v128[2];
              v130 = v128[3];
              v110 = v109 + 1;
              if (v109 >= v130 >> 1)
              {
                v180 = sub_25A966E00((v130 > 1), v109 + 1, 1, v128);
              }

              v26 = v170;
              v25 = v171;
              (*v24)(v170, v171);
              v111 = type metadata accessor for Comprehension;
              v112 = &unk_27FA04FB0;
              goto LABEL_190;
            }

            if (v28 == 0x706D6F437473694CLL && v29 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
            {

              type metadata accessor for ListComp();
              __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
              sub_25A94BF58(&qword_27FA04F98, 255, type metadata accessor for ListComp);
              sub_25A998988();
              v105 = v175;
              v131 = v180;
              v132 = swift_isUniquelyReferenced_nonNull_native();
              v180 = v131;
              if ((v132 & 1) == 0)
              {
                v131 = sub_25A966E00(0, v131[2] + 1, 1, v131);
                v180 = v131;
              }

              v109 = v131[2];
              v133 = v131[3];
              v110 = v109 + 1;
              if (v109 >= v133 >> 1)
              {
                v180 = sub_25A966E00((v133 > 1), v109 + 1, 1, v131);
              }

              v26 = v170;
              v25 = v171;
              (*v24)(v170, v171);
              v111 = type metadata accessor for ListComp;
              v112 = &unk_27FA04FA0;
              goto LABEL_190;
            }

            if (v28 == 0x706D6F43746553 && v29 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
            {

              type metadata accessor for SetComp();
              __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
              sub_25A94BF58(&qword_27FA04F88, 255, type metadata accessor for SetComp);
              sub_25A998988();
              v105 = v175;
              v134 = v180;
              v135 = swift_isUniquelyReferenced_nonNull_native();
              v180 = v134;
              if ((v135 & 1) == 0)
              {
                v134 = sub_25A966E00(0, v134[2] + 1, 1, v134);
                v180 = v134;
              }

              v109 = v134[2];
              v136 = v134[3];
              v110 = v109 + 1;
              if (v109 >= v136 >> 1)
              {
                v180 = sub_25A966E00((v136 > 1), v109 + 1, 1, v134);
              }

              v26 = v170;
              v25 = v171;
              (*v24)(v170, v171);
              v111 = type metadata accessor for SetComp;
              v112 = &unk_27FA04F90;
LABEL_190:
              v113 = sub_25A94BF58(v112, 255, v111);
              v114 = v180;
              v180[2] = v110;
              v115 = &v114[2 * v109];
              v115[4] = v105;
            }

            else
            {
              if (v28 == 0x706D6F4374636944 && v29 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
              {

                type metadata accessor for DictComp();
                __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
                sub_25A94BF58(&qword_27FA04F78, 255, type metadata accessor for DictComp);
                sub_25A998988();
                v137 = v175;
                sub_25A94BE58();
                v139 = v180[2];
                v138 = v180[3];
                v140 = v139 + 1;
                if (v139 >= v138 >> 1)
                {
                  v180 = sub_25A966E00((v138 > 1), v139 + 1, 1, v180);
                }

                v26 = v170;
                v25 = v171;
                (*v24)(v170, v171);
                v141 = type metadata accessor for DictComp;
                v142 = &unk_27FA04F80;
              }

              else if (v28 == 0x64657272617453 && v29 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
              {

                type metadata accessor for Starred();
                __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
                sub_25A94BF58(&qword_27FA04F68, 255, type metadata accessor for Starred);
                sub_25A998988();
                v137 = v175;
                sub_25A94BE58();
                v139 = v180[2];
                v143 = v180[3];
                v140 = v139 + 1;
                if (v139 >= v143 >> 1)
                {
                  v180 = sub_25A966E00((v143 > 1), v139 + 1, 1, v180);
                }

                v26 = v170;
                v25 = v171;
                (*v24)(v170, v171);
                v141 = type metadata accessor for Starred;
                v142 = &unk_27FA04F70;
              }

              else if (v28 == 0x656C696857 && v29 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
              {

                type metadata accessor for While();
                __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
                sub_25A94BF58(&qword_27FA04F58, 255, type metadata accessor for While);
                sub_25A998988();
                v137 = v175;
                sub_25A94BE58();
                v139 = v180[2];
                v144 = v180[3];
                v140 = v139 + 1;
                if (v139 >= v144 >> 1)
                {
                  v180 = sub_25A966E00((v144 > 1), v139 + 1, 1, v180);
                }

                v26 = v170;
                v25 = v171;
                (*v24)(v170, v171);
                v141 = type metadata accessor for While;
                v142 = &unk_27FA04F60;
              }

              else if (v28 == 0x6769737341677541 && v29 == 0xE90000000000006ELL || (sub_25A9989E8() & 1) != 0)
              {

                type metadata accessor for AugAssign();
                __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
                sub_25A94BF58(&qword_27FA04F48, 255, type metadata accessor for AugAssign);
                sub_25A998988();
                v137 = v175;
                sub_25A94BE58();
                v139 = v180[2];
                v145 = v180[3];
                v140 = v139 + 1;
                if (v139 >= v145 >> 1)
                {
                  v180 = sub_25A966E00((v145 > 1), v139 + 1, 1, v180);
                }

                v26 = v170;
                v25 = v171;
                (*v24)(v170, v171);
                v141 = type metadata accessor for AugAssign;
                v142 = &unk_27FA04F50;
              }

              else if (v28 == 0x74726F706D49 && v29 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
              {

                type metadata accessor for Import();
                __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
                sub_25A94BF58(&qword_27FA04F38, 255, type metadata accessor for Import);
                sub_25A998988();
                v137 = v175;
                sub_25A94BE58();
                v139 = v180[2];
                v146 = v180[3];
                v140 = v139 + 1;
                if (v139 >= v146 >> 1)
                {
                  v180 = sub_25A966E00((v146 > 1), v139 + 1, 1, v180);
                }

                v26 = v170;
                v25 = v171;
                (*v24)(v170, v171);
                v141 = type metadata accessor for Import;
                v142 = &unk_27FA04F40;
              }

              else if (v28 == 0x724674726F706D49 && v29 == 0xEA00000000006D6FLL || (sub_25A9989E8() & 1) != 0)
              {

                type metadata accessor for ImportFrom();
                __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
                sub_25A94BF58(&qword_27FA04F28, 255, type metadata accessor for ImportFrom);
                sub_25A998988();
                v137 = v175;
                sub_25A94BE58();
                v139 = v180[2];
                v147 = v180[3];
                v140 = v139 + 1;
                if (v139 >= v147 >> 1)
                {
                  v180 = sub_25A966E00((v147 > 1), v139 + 1, 1, v180);
                }

                v26 = v170;
                v25 = v171;
                (*v24)(v170, v171);
                v141 = type metadata accessor for ImportFrom;
                v142 = &unk_27FA04F30;
              }

              else if (v28 == 0x656C75646F4DLL && v29 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
              {

                type metadata accessor for ModuleOp();
                __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
                sub_25A94BF58(&qword_27FA04BE8, 255, type metadata accessor for ModuleOp);
                sub_25A998988();
                v137 = v175;
                sub_25A94BE58();
                v139 = v180[2];
                v148 = v180[3];
                v140 = v139 + 1;
                if (v139 >= v148 >> 1)
                {
                  v180 = sub_25A966E00((v148 > 1), v139 + 1, 1, v180);
                }

                v26 = v170;
                v25 = v171;
                (*v24)(v170, v171);
                v141 = type metadata accessor for ModuleOp;
                v142 = &unk_27FA04F20;
              }

              else if (v28 == 1936941392 && v29 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
              {

                type metadata accessor for Pass();
                __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
                sub_25A94BF58(&qword_27FA04F10, 255, type metadata accessor for Pass);
                sub_25A998988();
                v137 = v175;
                sub_25A94BE58();
                v139 = v180[2];
                v149 = v180[3];
                v140 = v139 + 1;
                if (v139 >= v149 >> 1)
                {
                  v180 = sub_25A966E00((v149 > 1), v139 + 1, 1, v180);
                }

                v26 = v170;
                v25 = v171;
                (*v24)(v170, v171);
                v141 = type metadata accessor for Pass;
                v142 = &unk_27FA04F18;
              }

              else
              {
                if ((v28 != 0x696F706B61657242 || v29 != 0xEA0000000000746ELL) && (sub_25A9989E8() & 1) == 0)
                {

                  if (qword_27FA043C0 != -1)
                  {
                    swift_once();
                  }

                  v152 = sub_25A997BD8();
                  __swift_project_value_buffer(v152, qword_27FA0FCE8);
                  v153 = swift_allocObject();
                  *(v153 + 16) = v28;
                  *(v153 + 24) = v29;

                  v154 = sub_25A997BB8();
                  v155 = sub_25A9983A8();
                  v156 = swift_allocObject();
                  *(v156 + 16) = 32;
                  v157 = swift_allocObject();
                  *(v157 + 16) = 8;
                  v158 = swift_allocObject();
                  *(v158 + 16) = v174;
                  *(v158 + 24) = v153;
                  a4 = swift_allocObject();
                  a4[2] = v164;
                  a4[3] = v158;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05538, &qword_25A9FE130);
                  inited = swift_initStackObject();
                  *(inited + 16) = xmmword_25A9F8DB0;
                  *(inited + 32) = v165;
                  *(inited + 40) = v156;
                  *(inited + 48) = v166;
                  *(inited + 56) = v157;
                  *(inited + 64) = v167;
                  *(inited + 72) = a4;

                  if (os_log_type_enabled(v154, v155))
                  {
                    v160 = swift_slowAlloc();
                    a4 = swift_slowAlloc();
                    v175 = a4;
                    *v160 = 136315138;
                    v161 = sub_25A98CC90(v28, v29, &v175);

                    *(v160 + 4) = v161;
                    _os_log_impl(&dword_25A232000, v154, v155, "Operation %s not supported yet", v160, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0Tm(a4);
                    MEMORY[0x25F852800](a4, -1, -1);
                    MEMORY[0x25F852800](v160, -1, -1);
                  }

                  else
                  {
                  }

                  sub_25A874F54();
                  swift_allocError();
                  *v162 = 43;
                  swift_willThrow();
                  (*v24)(v170, v171);
                  __swift_destroy_boxed_opaque_existential_0Tm(v176);
                  __swift_destroy_boxed_opaque_existential_0Tm(v178);
                  return a4;
                }

                type metadata accessor for Breakpoint();
                __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
                sub_25A94BF58(&qword_27FA04F00, 255, type metadata accessor for Breakpoint);
                sub_25A998988();
                v137 = v175;
                sub_25A94BE58();
                v139 = v180[2];
                v150 = v180[3];
                v140 = v139 + 1;
                if (v139 >= v150 >> 1)
                {
                  v180 = sub_25A966E00((v150 > 1), v139 + 1, 1, v180);
                }

                v26 = v170;
                v25 = v171;
                (*v24)(v170, v171);
                v141 = type metadata accessor for Breakpoint;
                v142 = &unk_27FA04F08;
              }

              v113 = sub_25A94BF58(v142, 255, v141);
              v151 = v180;
              v180[2] = v140;
              v115 = &v151[2 * v139];
              v115[4] = v137;
            }

            v115[5] = v113;
            a4 = v180;
            goto LABEL_20;
          }

          type metadata accessor for Raise();
          __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
          sub_25A94BF58(&qword_27FA05008, 255, type metadata accessor for Raise);
          sub_25A998988();
          v31 = v175;
          v102 = v180;
          v103 = swift_isUniquelyReferenced_nonNull_native();
          v180 = v102;
          if ((v103 & 1) == 0)
          {
            v102 = sub_25A966E00(0, v102[2] + 1, 1, v102);
            v180 = v102;
          }

          v35 = v102[2];
          v104 = v102[3];
          v36 = v35 + 1;
          if (v35 >= v104 >> 1)
          {
            v180 = sub_25A966E00((v104 > 1), v35 + 1, 1, v102);
          }

          v26 = v170;
          v25 = v171;
          (*v24)(v170, v171);
          v37 = type metadata accessor for Raise;
          v38 = &unk_27FA05010;
        }
      }

      v39 = sub_25A94BF58(v38, 255, v37);
      a4 = v180;
      v180[2] = v36;
      v40 = &a4[2 * v35];
      v40[4] = v31;
LABEL_19:
      v40[5] = v39;
      v180 = a4;
LABEL_20:
      __swift_project_boxed_opaque_existential_1(v178, v179);
      if (sub_25A998998())
      {
        goto LABEL_4;
      }
    }
  }

  a4 = MEMORY[0x277D84F90];
LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v176);
  __swift_destroy_boxed_opaque_existential_0Tm(v178);
  return a4;
}

void *sub_25A946D90(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v175 = a8;
  v174 = a7;
  v173 = a6;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA048B8, &unk_25A9FBD80);
  v20 = *(v19 - 8);
  v21 = v20[8];
  MEMORY[0x28223BE20](v19);
  v23 = &v163 - v22;
  v182 = a2;
  v181 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_25A9988D8();
  if (v14)
  {
    return v20;
  }

  v170 = a5;
  v171 = v23;
  v172 = v19;
  sub_25A872F24(v179, v177);
  __swift_project_boxed_opaque_existential_1(v179, v180);
  if ((sub_25A998998() & 1) == 0)
  {
    v25 = (v20 + 1);
    v20 = MEMORY[0x277D84F90];
    v169 = a14;
    v168 = a13;
    v167 = a12;
    v166 = a11;
    v165 = a10;
    v164 = a9;
    v26 = v172;
    v27 = v171;
    while (1)
    {
      __swift_project_boxed_opaque_existential_1(v177, v178);
      if (sub_25A998998())
      {
        goto LABEL_4;
      }

      __swift_mutable_project_boxed_opaque_existential_1(v177, v178);
      sub_25A896DA0();
      sub_25A998978();
      LOBYTE(v176) = 0;
      v29 = sub_25A9988F8();
      v30 = v28;
      v31 = v29 == 0x656D6E6769737341 && v28 == 0xEA0000000000746ELL;
      if (v31 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Assignment();
        __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
        sub_25A94BF58(&qword_27FA05140, 255, type metadata accessor for Assignment);
        sub_25A998988();
        v32 = v176;
        v33 = v181;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v181 = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = sub_25A966E00(0, v33[2] + 1, 1, v33);
          v181 = v33;
        }

        v36 = v33[2];
        v35 = v33[3];
        v37 = v36 + 1;
        if (v36 >= v35 >> 1)
        {
          v181 = sub_25A966E00((v35 > 1), v36 + 1, 1, v33);
        }

        (*v25)(v27, v26);
        v38 = type metadata accessor for Assignment;
        v39 = &unk_27FA05148;
      }

      else if (v29 == 0x7069726373627553 && v30 == 0xE900000000000074 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Subscript();
        __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
        sub_25A94BF58(&qword_27FA05130, 255, type metadata accessor for Subscript);
        sub_25A998988();
        v32 = v176;
        v42 = v181;
        v43 = swift_isUniquelyReferenced_nonNull_native();
        v181 = v42;
        if ((v43 & 1) == 0)
        {
          v42 = sub_25A966E00(0, v42[2] + 1, 1, v42);
          v181 = v42;
        }

        v36 = v42[2];
        v44 = v42[3];
        v37 = v36 + 1;
        if (v36 >= v44 >> 1)
        {
          v181 = sub_25A966E00((v44 > 1), v36 + 1, 1, v42);
        }

        (*v25)(v27, v26);
        v38 = type metadata accessor for Subscript;
        v39 = &unk_27FA05138;
      }

      else if (v29 == 0x6563696F6843 && v30 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Choice();
        __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
        sub_25A94BF58(&qword_27FA05120, 255, type metadata accessor for Choice);
        sub_25A998988();
        v32 = v176;
        v45 = v181;
        v46 = swift_isUniquelyReferenced_nonNull_native();
        v181 = v45;
        if ((v46 & 1) == 0)
        {
          v45 = sub_25A966E00(0, v45[2] + 1, 1, v45);
          v181 = v45;
        }

        v36 = v45[2];
        v47 = v45[3];
        v37 = v36 + 1;
        if (v36 >= v47 >> 1)
        {
          v181 = sub_25A966E00((v47 > 1), v36 + 1, 1, v45);
        }

        (*v25)(v27, v26);
        v38 = type metadata accessor for Choice;
        v39 = &unk_27FA05128;
      }

      else if (v29 == 0x746E6174736E6F43 && v30 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Constant();
        __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
        sub_25A94BF58(&qword_27FA05110, 255, type metadata accessor for Constant);
        sub_25A998988();
        v32 = v176;
        v48 = v181;
        v49 = swift_isUniquelyReferenced_nonNull_native();
        v181 = v48;
        if ((v49 & 1) == 0)
        {
          v48 = sub_25A966E00(0, v48[2] + 1, 1, v48);
          v181 = v48;
        }

        v36 = v48[2];
        v50 = v48[3];
        v37 = v36 + 1;
        if (v36 >= v50 >> 1)
        {
          v181 = sub_25A966E00((v50 > 1), v36 + 1, 1, v48);
        }

        (*v25)(v27, v26);
        v38 = type metadata accessor for Constant;
        v39 = &unk_27FA05118;
      }

      else if (v29 == 1751343429 && v30 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Each();
        __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
        sub_25A94BF58(&qword_27FA05100, 255, type metadata accessor for Each);
        sub_25A998988();
        v32 = v176;
        v51 = v181;
        v52 = swift_isUniquelyReferenced_nonNull_native();
        v181 = v51;
        if ((v52 & 1) == 0)
        {
          v51 = sub_25A966E00(0, v51[2] + 1, 1, v51);
          v181 = v51;
        }

        v36 = v51[2];
        v53 = v51[3];
        v37 = v36 + 1;
        if (v36 >= v53 >> 1)
        {
          v181 = sub_25A966E00((v53 > 1), v36 + 1, 1, v51);
        }

        (*v25)(v27, v26);
        v38 = type metadata accessor for Each;
        v39 = &unk_27FA05108;
      }

      else if (v29 == 0x426C61636978654CLL && v30 == 0xEC0000006B636F6CLL || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for LexicalBlock();
        __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
        sub_25A94BF58(&qword_27FA04A18, 255, type metadata accessor for LexicalBlock);
        sub_25A998988();
        v32 = v176;
        v54 = v181;
        v55 = swift_isUniquelyReferenced_nonNull_native();
        v181 = v54;
        if ((v55 & 1) == 0)
        {
          v54 = sub_25A966E00(0, v54[2] + 1, 1, v54);
          v181 = v54;
        }

        v36 = v54[2];
        v56 = v54[3];
        v37 = v36 + 1;
        if (v36 >= v56 >> 1)
        {
          v181 = sub_25A966E00((v56 > 1), v36 + 1, 1, v54);
        }

        (*v25)(v27, v26);
        v38 = type metadata accessor for LexicalBlock;
        v39 = &unk_27FA050F8;
      }

      else if (v29 == 0x6E7275746552 && v30 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Return();
        __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
        sub_25A94BF58(&qword_27FA050E8, 255, type metadata accessor for Return);
        sub_25A998988();
        v32 = v176;
        v57 = v181;
        v58 = swift_isUniquelyReferenced_nonNull_native();
        v181 = v57;
        if ((v58 & 1) == 0)
        {
          v57 = sub_25A966E00(0, v57[2] + 1, 1, v57);
          v181 = v57;
        }

        v36 = v57[2];
        v59 = v57[3];
        v37 = v36 + 1;
        if (v36 >= v59 >> 1)
        {
          v181 = sub_25A966E00((v59 > 1), v36 + 1, 1, v57);
        }

        (*v25)(v27, v26);
        v38 = type metadata accessor for Return;
        v39 = &unk_27FA050F0;
      }

      else if (v29 == 0x73697261706D6F43 && v30 == 0xEA00000000006E6FLL || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Comparison();
        __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
        sub_25A94BF58(&qword_27FA050D8, 255, type metadata accessor for Comparison);
        sub_25A998988();
        v32 = v176;
        v60 = v181;
        v61 = swift_isUniquelyReferenced_nonNull_native();
        v181 = v60;
        if ((v61 & 1) == 0)
        {
          v60 = sub_25A966E00(0, v60[2] + 1, 1, v60);
          v181 = v60;
        }

        v36 = v60[2];
        v62 = v60[3];
        v37 = v36 + 1;
        if (v36 >= v62 >> 1)
        {
          v181 = sub_25A966E00((v62 > 1), v36 + 1, 1, v60);
        }

        v27 = v171;
        v26 = v172;
        (*v25)(v171, v172);
        v38 = type metadata accessor for Comparison;
        v39 = &unk_27FA050E0;
      }

      else if (v29 == 0x704F6E6942 && v30 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for BinOp();
        __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
        sub_25A94BF58(&qword_27FA050C8, 255, type metadata accessor for BinOp);
        sub_25A998988();
        v32 = v176;
        v63 = v181;
        v64 = swift_isUniquelyReferenced_nonNull_native();
        v181 = v63;
        if ((v64 & 1) == 0)
        {
          v63 = sub_25A966E00(0, v63[2] + 1, 1, v63);
          v181 = v63;
        }

        v36 = v63[2];
        v65 = v63[3];
        v37 = v36 + 1;
        if (v36 >= v65 >> 1)
        {
          v181 = sub_25A966E00((v65 > 1), v36 + 1, 1, v63);
        }

        v27 = v171;
        v26 = v172;
        (*v25)(v171, v172);
        v38 = type metadata accessor for BinOp;
        v39 = &unk_27FA050D0;
      }

      else if (v29 == 1819042115 && v30 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Call();
        __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
        sub_25A94BF58(&qword_27FA050B8, 255, type metadata accessor for Call);
        sub_25A998988();
        v32 = v176;
        v66 = v181;
        v67 = swift_isUniquelyReferenced_nonNull_native();
        v181 = v66;
        if ((v67 & 1) == 0)
        {
          v66 = sub_25A966E00(0, v66[2] + 1, 1, v66);
          v181 = v66;
        }

        v36 = v66[2];
        v68 = v66[3];
        v37 = v36 + 1;
        if (v36 >= v68 >> 1)
        {
          v181 = sub_25A966E00((v68 > 1), v36 + 1, 1, v66);
        }

        v27 = v171;
        v26 = v172;
        (*v25)(v171, v172);
        v38 = type metadata accessor for Call;
        v39 = &unk_27FA050C0;
      }

      else if (v29 == 1701667150 && v30 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Name();
        __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
        sub_25A94BF58(&qword_27FA050A8, 255, type metadata accessor for Name);
        sub_25A998988();
        v32 = v176;
        v69 = v181;
        v70 = swift_isUniquelyReferenced_nonNull_native();
        v181 = v69;
        if ((v70 & 1) == 0)
        {
          v69 = sub_25A966E00(0, v69[2] + 1, 1, v69);
          v181 = v69;
        }

        v36 = v69[2];
        v71 = v69[3];
        v37 = v36 + 1;
        if (v36 >= v71 >> 1)
        {
          v181 = sub_25A966E00((v71 > 1), v36 + 1, 1, v69);
        }

        v27 = v171;
        v26 = v172;
        (*v25)(v171, v172);
        v38 = type metadata accessor for Name;
        v39 = &unk_27FA050B0;
      }

      else if (v29 == 0x7475626972747441 && v30 == 0xE900000000000065 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Attribute();
        __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
        sub_25A94BF58(&qword_27FA05098, 255, type metadata accessor for Attribute);
        sub_25A998988();
        v32 = v176;
        v72 = v181;
        v73 = swift_isUniquelyReferenced_nonNull_native();
        v181 = v72;
        if ((v73 & 1) == 0)
        {
          v72 = sub_25A966E00(0, v72[2] + 1, 1, v72);
          v181 = v72;
        }

        v36 = v72[2];
        v74 = v72[3];
        v37 = v36 + 1;
        if (v36 >= v74 >> 1)
        {
          v181 = sub_25A966E00((v74 > 1), v36 + 1, 1, v72);
        }

        v27 = v171;
        v26 = v172;
        (*v25)(v171, v172);
        v38 = type metadata accessor for Attribute;
        v39 = &unk_27FA050A0;
      }

      else if (v29 == 0x64726F7779654BLL && v30 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Keyword();
        __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
        sub_25A94BF58(&qword_27FA05088, 255, type metadata accessor for Keyword);
        sub_25A998988();
        v32 = v176;
        v75 = v181;
        v76 = swift_isUniquelyReferenced_nonNull_native();
        v181 = v75;
        if ((v76 & 1) == 0)
        {
          v75 = sub_25A966E00(0, v75[2] + 1, 1, v75);
          v181 = v75;
        }

        v36 = v75[2];
        v77 = v75[3];
        v37 = v36 + 1;
        if (v36 >= v77 >> 1)
        {
          v181 = sub_25A966E00((v77 > 1), v36 + 1, 1, v75);
        }

        v27 = v171;
        v26 = v172;
        (*v25)(v171, v172);
        v38 = type metadata accessor for Keyword;
        v39 = &unk_27FA05090;
      }

      else if (v29 == 0x7375656870726F4DLL && v30 == 0xED00007961727241 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for MorpheusArray();
        __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
        sub_25A94BF58(&qword_27FA05078, 255, type metadata accessor for MorpheusArray);
        sub_25A998988();
        v32 = v176;
        v78 = v181;
        v79 = swift_isUniquelyReferenced_nonNull_native();
        v181 = v78;
        if ((v79 & 1) == 0)
        {
          v78 = sub_25A966E00(0, v78[2] + 1, 1, v78);
          v181 = v78;
        }

        v36 = v78[2];
        v80 = v78[3];
        v37 = v36 + 1;
        if (v36 >= v80 >> 1)
        {
          v181 = sub_25A966E00((v80 > 1), v36 + 1, 1, v78);
        }

        v27 = v171;
        v26 = v172;
        (*v25)(v171, v172);
        v38 = type metadata accessor for MorpheusArray;
        v39 = &unk_27FA05080;
      }

      else
      {
        if (v29 == 0x7375656870726F4DLL && v30 == 0xED0000656C707554 || (sub_25A9989E8() & 1) != 0)
        {

          type metadata accessor for MorpheusTuple();
          __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
          sub_25A94BF58(&qword_27FA05068, v81, type metadata accessor for MorpheusTuple);
          sub_25A998988();
          v163 = v176;
          v82 = v181;
          v83 = swift_isUniquelyReferenced_nonNull_native();
          v181 = v82;
          if ((v83 & 1) == 0)
          {
            v82 = sub_25A966E00(0, v82[2] + 1, 1, v82);
            v181 = v82;
          }

          v85 = v82[2];
          v84 = v82[3];
          if (v85 >= v84 >> 1)
          {
            v181 = sub_25A966E00((v84 > 1), v85 + 1, 1, v82);
          }

          v27 = v171;
          v26 = v172;
          (*v25)(v171, v172);
          v40 = sub_25A94BF58(&qword_27FA05070, v86, type metadata accessor for MorpheusTuple);
          v20 = v181;
          v181[2] = v85 + 1;
          v41 = &v20[2 * v85];
          v41[4] = v163;
          goto LABEL_19;
        }

        if (v29 == 0x7375656870726F4DLL && v30 == 0xEC00000074636944 || (sub_25A9989E8() & 1) != 0)
        {

          type metadata accessor for MorpheusDict();
          __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
          sub_25A94BF58(&qword_27FA05058, 255, type metadata accessor for MorpheusDict);
          sub_25A998988();
          v32 = v176;
          v87 = v181;
          v88 = swift_isUniquelyReferenced_nonNull_native();
          v181 = v87;
          if ((v88 & 1) == 0)
          {
            v87 = sub_25A966E00(0, v87[2] + 1, 1, v87);
            v181 = v87;
          }

          v36 = v87[2];
          v89 = v87[3];
          v37 = v36 + 1;
          if (v36 >= v89 >> 1)
          {
            v181 = sub_25A966E00((v89 > 1), v36 + 1, 1, v87);
          }

          v27 = v171;
          v26 = v172;
          (*v25)(v171, v172);
          v38 = type metadata accessor for MorpheusDict;
          v39 = &unk_27FA05060;
        }

        else if (v29 == 0x7375656870726F4DLL && v30 == 0xED00006563696C53 || (sub_25A9989E8() & 1) != 0)
        {

          type metadata accessor for MorpheusSlice();
          __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
          sub_25A94BF58(&qword_27FA05048, 255, type metadata accessor for MorpheusSlice);
          sub_25A998988();
          v32 = v176;
          v90 = v181;
          v91 = swift_isUniquelyReferenced_nonNull_native();
          v181 = v90;
          if ((v91 & 1) == 0)
          {
            v90 = sub_25A966E00(0, v90[2] + 1, 1, v90);
            v181 = v90;
          }

          v36 = v90[2];
          v92 = v90[3];
          v37 = v36 + 1;
          if (v36 >= v92 >> 1)
          {
            v181 = sub_25A966E00((v92 > 1), v36 + 1, 1, v90);
          }

          v27 = v171;
          v26 = v172;
          (*v25)(v171, v172);
          v38 = type metadata accessor for MorpheusSlice;
          v39 = &unk_27FA05050;
        }

        else if (v29 == 0x6E6F6974636E7546 && v30 == 0xEB00000000666544 || (sub_25A9989E8() & 1) != 0)
        {

          type metadata accessor for FunctionDef();
          __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
          sub_25A94BF58(&qword_27FA05038, 255, type metadata accessor for FunctionDef);
          sub_25A998988();
          v32 = v176;
          v93 = v181;
          v94 = swift_isUniquelyReferenced_nonNull_native();
          v181 = v93;
          if ((v94 & 1) == 0)
          {
            v93 = sub_25A966E00(0, v93[2] + 1, 1, v93);
            v181 = v93;
          }

          v36 = v93[2];
          v95 = v93[3];
          v37 = v36 + 1;
          if (v36 >= v95 >> 1)
          {
            v181 = sub_25A966E00((v95 > 1), v36 + 1, 1, v93);
          }

          v27 = v171;
          v26 = v172;
          (*v25)(v171, v172);
          v38 = type metadata accessor for FunctionDef;
          v39 = &unk_27FA05040;
        }

        else if (v29 == 0x6665447373616C43 && v30 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
        {

          type metadata accessor for ClassDef();
          __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
          sub_25A94BF58(&qword_27FA05028, 255, type metadata accessor for ClassDef);
          sub_25A998988();
          v32 = v176;
          v96 = v181;
          v97 = swift_isUniquelyReferenced_nonNull_native();
          v181 = v96;
          if ((v97 & 1) == 0)
          {
            v96 = sub_25A966E00(0, v96[2] + 1, 1, v96);
            v181 = v96;
          }

          v36 = v96[2];
          v98 = v96[3];
          v37 = v36 + 1;
          if (v36 >= v98 >> 1)
          {
            v181 = sub_25A966E00((v98 > 1), v36 + 1, 1, v96);
          }

          v27 = v171;
          v26 = v172;
          (*v25)(v171, v172);
          v38 = type metadata accessor for ClassDef;
          v39 = &unk_27FA05030;
        }

        else if (v29 == 0x7972616E55 && v30 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
        {

          type metadata accessor for Unary();
          __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
          sub_25A94BF58(&qword_27FA05018, 255, type metadata accessor for Unary);
          sub_25A998988();
          v32 = v176;
          v99 = v181;
          v100 = swift_isUniquelyReferenced_nonNull_native();
          v181 = v99;
          if ((v100 & 1) == 0)
          {
            v99 = sub_25A966E00(0, v99[2] + 1, 1, v99);
            v181 = v99;
          }

          v36 = v99[2];
          v101 = v99[3];
          v37 = v36 + 1;
          if (v36 >= v101 >> 1)
          {
            v181 = sub_25A966E00((v101 > 1), v36 + 1, 1, v99);
          }

          v27 = v171;
          v26 = v172;
          (*v25)(v171, v172);
          v38 = type metadata accessor for Unary;
          v39 = &unk_27FA05020;
        }

        else
        {
          if ((v29 != 0x6573696152 || v30 != 0xE500000000000000) && (sub_25A9989E8() & 1) == 0)
          {
            if (v29 == 0x745364656E696F4ALL && v30 == 0xE900000000000072 || (sub_25A9989E8() & 1) != 0)
            {

              type metadata accessor for JoinedStr();
              __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
              sub_25A94BF58(&qword_27FA04FF8, 255, type metadata accessor for JoinedStr);
              sub_25A998988();
              v105 = v176;
              v106 = v181;
              v107 = swift_isUniquelyReferenced_nonNull_native();
              v181 = v106;
              if ((v107 & 1) == 0)
              {
                v106 = sub_25A966E00(0, v106[2] + 1, 1, v106);
                v181 = v106;
              }

              v109 = v106[2];
              v108 = v106[3];
              v110 = v109 + 1;
              if (v109 >= v108 >> 1)
              {
                v181 = sub_25A966E00((v108 > 1), v109 + 1, 1, v106);
              }

              v27 = v171;
              v26 = v172;
              (*v25)(v171, v172);
              v111 = type metadata accessor for JoinedStr;
              v112 = &unk_27FA05000;
              goto LABEL_190;
            }

            if (v29 == 0x657474616D726F46 && v30 == 0xEE0065756C615664 || (sub_25A9989E8() & 1) != 0)
            {

              type metadata accessor for FormattedValue();
              __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
              sub_25A94BF58(&qword_27FA04FE8, 255, type metadata accessor for FormattedValue);
              sub_25A998988();
              v105 = v176;
              v116 = v181;
              v117 = swift_isUniquelyReferenced_nonNull_native();
              v181 = v116;
              if ((v117 & 1) == 0)
              {
                v116 = sub_25A966E00(0, v116[2] + 1, 1, v116);
                v181 = v116;
              }

              v109 = v116[2];
              v118 = v116[3];
              v110 = v109 + 1;
              if (v109 >= v118 >> 1)
              {
                v181 = sub_25A966E00((v118 > 1), v109 + 1, 1, v116);
              }

              v27 = v171;
              v26 = v172;
              (*v25)(v171, v172);
              v111 = type metadata accessor for FormattedValue;
              v112 = &unk_27FA04FF0;
              goto LABEL_190;
            }

            if (v29 == 0x704F6C6F6F42 && v30 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
            {

              type metadata accessor for BoolOp();
              __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
              sub_25A94BF58(&qword_27FA04FD8, 255, type metadata accessor for BoolOp);
              sub_25A998988();
              v105 = v176;
              v119 = v181;
              v120 = swift_isUniquelyReferenced_nonNull_native();
              v181 = v119;
              if ((v120 & 1) == 0)
              {
                v119 = sub_25A966E00(0, v119[2] + 1, 1, v119);
                v181 = v119;
              }

              v109 = v119[2];
              v121 = v119[3];
              v110 = v109 + 1;
              if (v109 >= v121 >> 1)
              {
                v181 = sub_25A966E00((v121 > 1), v109 + 1, 1, v119);
              }

              v27 = v171;
              v26 = v172;
              (*v25)(v171, v172);
              v111 = type metadata accessor for BoolOp;
              v112 = &unk_27FA04FE0;
              goto LABEL_190;
            }

            if (v29 == 0x65756E69746E6F43 && v30 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
            {

              type metadata accessor for Continue();
              __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
              sub_25A94BF58(&qword_27FA04FC8, 255, type metadata accessor for Continue);
              sub_25A998988();
              v105 = v176;
              v122 = v181;
              v123 = swift_isUniquelyReferenced_nonNull_native();
              v181 = v122;
              if ((v123 & 1) == 0)
              {
                v122 = sub_25A966E00(0, v122[2] + 1, 1, v122);
                v181 = v122;
              }

              v109 = v122[2];
              v124 = v122[3];
              v110 = v109 + 1;
              if (v109 >= v124 >> 1)
              {
                v181 = sub_25A966E00((v124 > 1), v109 + 1, 1, v122);
              }

              v27 = v171;
              v26 = v172;
              (*v25)(v171, v172);
              v111 = type metadata accessor for Continue;
              v112 = &unk_27FA04FD0;
              goto LABEL_190;
            }

            if (v29 == 0x6B61657242 && v30 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
            {

              type metadata accessor for Break();
              __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
              sub_25A94BF58(&qword_27FA04FB8, 255, type metadata accessor for Break);
              sub_25A998988();
              v105 = v176;
              v125 = v181;
              v126 = swift_isUniquelyReferenced_nonNull_native();
              v181 = v125;
              if ((v126 & 1) == 0)
              {
                v125 = sub_25A966E00(0, v125[2] + 1, 1, v125);
                v181 = v125;
              }

              v109 = v125[2];
              v127 = v125[3];
              v110 = v109 + 1;
              if (v109 >= v127 >> 1)
              {
                v181 = sub_25A966E00((v127 > 1), v109 + 1, 1, v125);
              }

              v27 = v171;
              v26 = v172;
              (*v25)(v171, v172);
              v111 = type metadata accessor for Break;
              v112 = &unk_27FA04FC0;
              goto LABEL_190;
            }

            if (v29 == 0x65686572706D6F43 && v30 == 0xED00006E6F69736ELL || (sub_25A9989E8() & 1) != 0)
            {

              type metadata accessor for Comprehension();
              __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
              sub_25A94BF58(&qword_27FA04FA8, 255, type metadata accessor for Comprehension);
              sub_25A998988();
              v105 = v176;
              v128 = v181;
              v129 = swift_isUniquelyReferenced_nonNull_native();
              v181 = v128;
              if ((v129 & 1) == 0)
              {
                v128 = sub_25A966E00(0, v128[2] + 1, 1, v128);
                v181 = v128;
              }

              v109 = v128[2];
              v130 = v128[3];
              v110 = v109 + 1;
              if (v109 >= v130 >> 1)
              {
                v181 = sub_25A966E00((v130 > 1), v109 + 1, 1, v128);
              }

              v27 = v171;
              v26 = v172;
              (*v25)(v171, v172);
              v111 = type metadata accessor for Comprehension;
              v112 = &unk_27FA04FB0;
              goto LABEL_190;
            }

            if (v29 == 0x706D6F437473694CLL && v30 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
            {

              type metadata accessor for ListComp();
              __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
              sub_25A94BF58(&qword_27FA04F98, 255, type metadata accessor for ListComp);
              sub_25A998988();
              v105 = v176;
              v131 = v181;
              v132 = swift_isUniquelyReferenced_nonNull_native();
              v181 = v131;
              if ((v132 & 1) == 0)
              {
                v131 = sub_25A966E00(0, v131[2] + 1, 1, v131);
                v181 = v131;
              }

              v109 = v131[2];
              v133 = v131[3];
              v110 = v109 + 1;
              if (v109 >= v133 >> 1)
              {
                v181 = sub_25A966E00((v133 > 1), v109 + 1, 1, v131);
              }

              v27 = v171;
              v26 = v172;
              (*v25)(v171, v172);
              v111 = type metadata accessor for ListComp;
              v112 = &unk_27FA04FA0;
              goto LABEL_190;
            }

            if (v29 == 0x706D6F43746553 && v30 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
            {

              type metadata accessor for SetComp();
              __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
              sub_25A94BF58(&qword_27FA04F88, 255, type metadata accessor for SetComp);
              sub_25A998988();
              v105 = v176;
              v134 = v181;
              v135 = swift_isUniquelyReferenced_nonNull_native();
              v181 = v134;
              if ((v135 & 1) == 0)
              {
                v134 = sub_25A966E00(0, v134[2] + 1, 1, v134);
                v181 = v134;
              }

              v109 = v134[2];
              v136 = v134[3];
              v110 = v109 + 1;
              if (v109 >= v136 >> 1)
              {
                v181 = sub_25A966E00((v136 > 1), v109 + 1, 1, v134);
              }

              v27 = v171;
              v26 = v172;
              (*v25)(v171, v172);
              v111 = type metadata accessor for SetComp;
              v112 = &unk_27FA04F90;
LABEL_190:
              v113 = sub_25A94BF58(v112, 255, v111);
              v114 = v181;
              v181[2] = v110;
              v115 = &v114[2 * v109];
              v115[4] = v105;
            }

            else
            {
              if (v29 == 0x706D6F4374636944 && v30 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
              {

                type metadata accessor for DictComp();
                __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
                sub_25A94BF58(&qword_27FA04F78, 255, type metadata accessor for DictComp);
                sub_25A998988();
                v137 = v176;
                sub_25A94BE58();
                v139 = v181[2];
                v138 = v181[3];
                v140 = v139 + 1;
                if (v139 >= v138 >> 1)
                {
                  v181 = sub_25A966E00((v138 > 1), v139 + 1, 1, v181);
                }

                v27 = v171;
                v26 = v172;
                (*v25)(v171, v172);
                v141 = type metadata accessor for DictComp;
                v142 = &unk_27FA04F80;
              }

              else if (v29 == 0x64657272617453 && v30 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
              {

                type metadata accessor for Starred();
                __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
                sub_25A94BF58(&qword_27FA04F68, 255, type metadata accessor for Starred);
                sub_25A998988();
                v137 = v176;
                sub_25A94BE58();
                v139 = v181[2];
                v143 = v181[3];
                v140 = v139 + 1;
                if (v139 >= v143 >> 1)
                {
                  v181 = sub_25A966E00((v143 > 1), v139 + 1, 1, v181);
                }

                v27 = v171;
                v26 = v172;
                (*v25)(v171, v172);
                v141 = type metadata accessor for Starred;
                v142 = &unk_27FA04F70;
              }

              else if (v29 == 0x656C696857 && v30 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
              {

                type metadata accessor for While();
                __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
                sub_25A94BF58(&qword_27FA04F58, 255, type metadata accessor for While);
                sub_25A998988();
                v137 = v176;
                sub_25A94BE58();
                v139 = v181[2];
                v144 = v181[3];
                v140 = v139 + 1;
                if (v139 >= v144 >> 1)
                {
                  v181 = sub_25A966E00((v144 > 1), v139 + 1, 1, v181);
                }

                v27 = v171;
                v26 = v172;
                (*v25)(v171, v172);
                v141 = type metadata accessor for While;
                v142 = &unk_27FA04F60;
              }

              else if (v29 == 0x6769737341677541 && v30 == 0xE90000000000006ELL || (sub_25A9989E8() & 1) != 0)
              {

                type metadata accessor for AugAssign();
                __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
                sub_25A94BF58(&qword_27FA04F48, 255, type metadata accessor for AugAssign);
                sub_25A998988();
                v137 = v176;
                sub_25A94BE58();
                v139 = v181[2];
                v145 = v181[3];
                v140 = v139 + 1;
                if (v139 >= v145 >> 1)
                {
                  v181 = sub_25A966E00((v145 > 1), v139 + 1, 1, v181);
                }

                v27 = v171;
                v26 = v172;
                (*v25)(v171, v172);
                v141 = type metadata accessor for AugAssign;
                v142 = &unk_27FA04F50;
              }

              else if (v29 == 0x74726F706D49 && v30 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
              {

                type metadata accessor for Import();
                __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
                sub_25A94BF58(&qword_27FA04F38, 255, type metadata accessor for Import);
                sub_25A998988();
                v137 = v176;
                sub_25A94BE58();
                v139 = v181[2];
                v146 = v181[3];
                v140 = v139 + 1;
                if (v139 >= v146 >> 1)
                {
                  v181 = sub_25A966E00((v146 > 1), v139 + 1, 1, v181);
                }

                v27 = v171;
                v26 = v172;
                (*v25)(v171, v172);
                v141 = type metadata accessor for Import;
                v142 = &unk_27FA04F40;
              }

              else if (v29 == 0x724674726F706D49 && v30 == 0xEA00000000006D6FLL || (sub_25A9989E8() & 1) != 0)
              {

                type metadata accessor for ImportFrom();
                __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
                sub_25A94BF58(&qword_27FA04F28, 255, type metadata accessor for ImportFrom);
                sub_25A998988();
                v137 = v176;
                sub_25A94BE58();
                v139 = v181[2];
                v147 = v181[3];
                v140 = v139 + 1;
                if (v139 >= v147 >> 1)
                {
                  v181 = sub_25A966E00((v147 > 1), v139 + 1, 1, v181);
                }

                v27 = v171;
                v26 = v172;
                (*v25)(v171, v172);
                v141 = type metadata accessor for ImportFrom;
                v142 = &unk_27FA04F30;
              }

              else if (v29 == 0x656C75646F4DLL && v30 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
              {

                type metadata accessor for ModuleOp();
                __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
                sub_25A94BF58(&qword_27FA04BE8, 255, type metadata accessor for ModuleOp);
                sub_25A998988();
                v137 = v176;
                sub_25A94BE58();
                v139 = v181[2];
                v148 = v181[3];
                v140 = v139 + 1;
                if (v139 >= v148 >> 1)
                {
                  v181 = sub_25A966E00((v148 > 1), v139 + 1, 1, v181);
                }

                v27 = v171;
                v26 = v172;
                (*v25)(v171, v172);
                v141 = type metadata accessor for ModuleOp;
                v142 = &unk_27FA04F20;
              }

              else if (v29 == 1936941392 && v30 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
              {

                type metadata accessor for Pass();
                __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
                sub_25A94BF58(&qword_27FA04F10, 255, type metadata accessor for Pass);
                sub_25A998988();
                v137 = v176;
                sub_25A94BE58();
                v139 = v181[2];
                v149 = v181[3];
                v140 = v139 + 1;
                if (v139 >= v149 >> 1)
                {
                  v181 = sub_25A966E00((v149 > 1), v139 + 1, 1, v181);
                }

                v27 = v171;
                v26 = v172;
                (*v25)(v171, v172);
                v141 = type metadata accessor for Pass;
                v142 = &unk_27FA04F18;
              }

              else
              {
                if ((v29 != 0x696F706B61657242 || v30 != 0xEA0000000000746ELL) && (sub_25A9989E8() & 1) == 0)
                {

                  if (qword_27FA043C0 != -1)
                  {
                    swift_once();
                  }

                  v152 = sub_25A997BD8();
                  __swift_project_value_buffer(v152, qword_27FA0FCE8);
                  v153 = swift_allocObject();
                  *(v153 + 16) = v29;
                  *(v153 + 24) = v30;

                  v154 = sub_25A997BB8();
                  v155 = sub_25A9983A8();
                  v156 = swift_allocObject();
                  *(v156 + 16) = 32;
                  v157 = swift_allocObject();
                  *(v157 + 16) = 8;
                  v20 = swift_allocObject();
                  v20[2] = v164;
                  v20[3] = v153;
                  v158 = swift_allocObject();
                  *(v158 + 16) = v166;
                  *(v158 + 24) = v20;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05538, &qword_25A9FE130);
                  inited = swift_initStackObject();
                  *(inited + 16) = xmmword_25A9F8DB0;
                  *(inited + 32) = v167;
                  *(inited + 40) = v156;
                  *(inited + 48) = v168;
                  *(inited + 56) = v157;
                  *(inited + 64) = v169;
                  *(inited + 72) = v158;

                  if (os_log_type_enabled(v154, v155))
                  {
                    v20 = swift_slowAlloc();
                    v160 = swift_slowAlloc();
                    v176 = v160;
                    *v20 = 136315138;
                    v161 = sub_25A98CC90(v29, v30, &v176);

                    *(v20 + 4) = v161;
                    _os_log_impl(&dword_25A232000, v154, v155, "Operation %s not supported yet", v20, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0Tm(v160);
                    MEMORY[0x25F852800](v160, -1, -1);
                    MEMORY[0x25F852800](v20, -1, -1);
                  }

                  else
                  {
                  }

                  sub_25A874F54();
                  swift_allocError();
                  *v162 = 43;
                  swift_willThrow();
                  (*v25)(v171, v172);
                  __swift_destroy_boxed_opaque_existential_0Tm(v177);
                  __swift_destroy_boxed_opaque_existential_0Tm(v179);
                  return v20;
                }

                type metadata accessor for Breakpoint();
                __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
                sub_25A94BF58(&qword_27FA04F00, 255, type metadata accessor for Breakpoint);
                sub_25A998988();
                v137 = v176;
                sub_25A94BE58();
                v139 = v181[2];
                v150 = v181[3];
                v140 = v139 + 1;
                if (v139 >= v150 >> 1)
                {
                  v181 = sub_25A966E00((v150 > 1), v139 + 1, 1, v181);
                }

                v27 = v171;
                v26 = v172;
                (*v25)(v171, v172);
                v141 = type metadata accessor for Breakpoint;
                v142 = &unk_27FA04F08;
              }

              v113 = sub_25A94BF58(v142, 255, v141);
              v151 = v181;
              v181[2] = v140;
              v115 = &v151[2 * v139];
              v115[4] = v137;
            }

            v115[5] = v113;
            v20 = v181;
            goto LABEL_20;
          }

          type metadata accessor for Raise();
          __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
          sub_25A94BF58(&qword_27FA05008, 255, type metadata accessor for Raise);
          sub_25A998988();
          v32 = v176;
          v102 = v181;
          v103 = swift_isUniquelyReferenced_nonNull_native();
          v181 = v102;
          if ((v103 & 1) == 0)
          {
            v102 = sub_25A966E00(0, v102[2] + 1, 1, v102);
            v181 = v102;
          }

          v36 = v102[2];
          v104 = v102[3];
          v37 = v36 + 1;
          if (v36 >= v104 >> 1)
          {
            v181 = sub_25A966E00((v104 > 1), v36 + 1, 1, v102);
          }

          v27 = v171;
          v26 = v172;
          (*v25)(v171, v172);
          v38 = type metadata accessor for Raise;
          v39 = &unk_27FA05010;
        }
      }

      v40 = sub_25A94BF58(v39, 255, v38);
      v20 = v181;
      v181[2] = v37;
      v41 = &v20[2 * v36];
      v41[4] = v32;
LABEL_19:
      v41[5] = v40;
      v181 = v20;
LABEL_20:
      __swift_project_boxed_opaque_existential_1(v179, v180);
      if (sub_25A998998())
      {
        goto LABEL_4;
      }
    }
  }

  v20 = MEMORY[0x277D84F90];
LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v177);
  __swift_destroy_boxed_opaque_existential_0Tm(v179);
  return v20;
}

uint64_t sub_25A94B464(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 7894115;
  }

  else
  {
    v4 = 1937009765;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 7894115;
  }

  else
  {
    v6 = 1937009765;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25A9989E8();
  }

  return v9 & 1;
}

uint64_t sub_25A94B4FC()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A94B570()
{
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A94B5D0()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A94B640@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25A9988C8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_25A94B6A0(uint64_t *a1@<X8>)
{
  v2 = 1937009765;
  if (*v1)
  {
    v2 = 7894115;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25A94B6D0()
{
  if (*v0)
  {
    result = 7894115;
  }

  else
  {
    result = 1937009765;
  }

  *v0;
  return result;
}

uint64_t sub_25A94B6FC@<X0>(char *a1@<X8>)
{
  v2 = sub_25A9988C8();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_25A94B760(uint64_t a1)
{
  v2 = sub_25A94BEE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A94B79C(uint64_t a1)
{
  v2 = sub_25A94BEE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A94B824(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05528, &qword_25A9FE128);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A94BEE4();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for MorpheusTuple();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 40) = sub_25A93E684(v9, 0, &qword_27FA05528, &qword_25A9FE128, &unk_286C120B8, &unk_286C120E0, &unk_286C12108, &unk_286C12130, sub_25A94BF38, &unk_286C12158, sub_25A94BF48, sub_25A94BF40, sub_25A94C250, sub_25A94BF50);
    v14 = 1;
    sub_25A872ED0();
    sub_25A998938();
    *(v1 + 48) = v13[0];
    sub_25A872F24(a1, v13);
    v3 = sub_25A8963D8(v13);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A94BAF8@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v5 = a1;
  v6 = *(v1 + 40);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v38 = MEMORY[0x277D84F90];

    sub_25A937550(0, v7, 0);
    v8 = v38;
    result = swift_beginAccess();
    v10 = 0;
    v11 = (v6 + 40);
    v26 = v7;
    v27 = v4;
    while (v10 < *(v6 + 16))
    {
      v28 = v11;
      v29 = v10;
      v12 = v6;
      v13 = *(v11 - 1);
      v14 = *v11;
      ObjectType = swift_getObjectType();
      Strong = swift_unknownObjectWeakLoadStrong();
      v17 = *(v4 + 32);
      v18 = v3;
      v19 = *(v14 + 48);
      swift_unknownObjectRetain();
      v19(Strong, v17, ObjectType, v14);
      (*(v14 + 64))(v35, ObjectType, v14);
      v3 = v18;
      if (v18)
      {

        swift_unknownObjectRelease();
      }

      sub_25A872C84(v35, &v30);
      v6 = v12;
      if (v32)
      {
        sub_25A872CE0(&v30);
        sub_25A872C84(v35, &v30);
        v20 = v26;
        v4 = v27;
        if (v32 == 1)
        {
          v33 = v30;
          v34 = v31;
          sub_25A92DE50(&v33, v36);
          sub_25A872D84(&v33);
        }

        else
        {
          sub_25A872CE0(&v30);
          v36[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
          v21 = swift_allocObject();
          v36[0] = v21;
          *(v21 + 16) = 0u;
          *(v21 + 32) = 0u;
        }

        sub_25A872CE0(v35);
      }

      else
      {
        v33 = v30;
        v34 = v31;
        sub_25A92DE50(&v33, v36);
        sub_25A872D84(&v33);
        sub_25A872CE0(v35);
        v20 = v26;
        v4 = v27;
      }

      sub_25A92D814(v36, v37);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      v38 = v8;
      v23 = *(v8 + 16);
      v22 = *(v8 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_25A937550((v22 > 1), v23 + 1, 1);
        v8 = v38;
      }

      v10 = v29 + 1;
      *(v8 + 16) = v23 + 1;
      result = sub_25A872D74(v37, (v8 + 32 * v23 + 32));
      v11 = v28 + 2;
      if (v20 == v29 + 1)
      {

        v5 = a1;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    if (*(v4 + 48))
    {
      if (*(v4 + 48) == 1)
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
        *(v5 + 24) = result;
        *v5 = v8;
      }

      else
      {

        *v5 = 0u;
        *(v5 + 16) = 0u;
      }
    }

    else
    {
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04788, &unk_25A9FDA20);
      result = swift_allocObject();
      *(result + 16) = v8;
      *(v5 + 24) = v24;
      *v5 = result;
    }

    *(v5 + 32) = 0;
  }

  return result;
}

void *sub_25A94BE58()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_25A966E00(result, v1[2] + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

uint64_t sub_25A94BEA4()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_25A94BEE4()
{
  result = qword_27FA05530;
  if (!qword_27FA05530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05530);
  }

  return result;
}

uint64_t sub_25A94BF58(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25A94BFA0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25A94BFD8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_25A94C034()
{
  result = qword_27FA05540;
  if (!qword_27FA05540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05540);
  }

  return result;
}

unint64_t sub_25A94C08C()
{
  result = qword_27FA05548;
  if (!qword_27FA05548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05548);
  }

  return result;
}

unint64_t sub_25A94C0E4()
{
  result = qword_27FA05550;
  if (!qword_27FA05550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05550);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PyLogLevel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PyLogLevel(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25A94C3A8()
{
  result = qword_27FA05558;
  if (!qword_27FA05558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA05560, qword_25A9FE298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05558);
  }

  return result;
}

uint64_t sub_25A94C40C()
{
  v1 = *v0;
  sub_25A998B18();
  MEMORY[0x25F850E50](10 * v1);
  return sub_25A998B38();
}

uint64_t sub_25A94C48C()
{
  v1 = *v0;
  sub_25A998B18();
  MEMORY[0x25F850E50](10 * v1);
  return sub_25A998B38();
}

uint64_t sub_25A94C4D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25A94C828(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_25A94C514()
{
  v1 = *v0;
  v2 = 0x4755424544;
  v3 = 0x474E494E524157;
  v4 = 0x524F525245;
  if (v1 != 4)
  {
    v4 = 0x4C41434954495243;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 1330007625;
  }

  if (!*v0)
  {
    v2 = 0x544553544F4ELL;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_25A94C5CC()
{
  result = qword_27FA05568;
  if (!qword_27FA05568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05568);
  }

  return result;
}

uint64_t sub_25A94C624()
{
  v1 = sub_25A997EC8();
  v2 = v0;
  if (v1 == 0x6775626564 && v0 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    return 1;
  }

  else if (v1 == 1868983913 && v2 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    return 2;
  }

  else if (v1 == 0x676E696E726177 && v2 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    return 3;
  }

  else if (v1 == 0x726F727265 && v2 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    return 4;
  }

  else if (v1 == 0x746573746F6ELL && v2 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x6C61636974697263 && v2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v4 = sub_25A9989E8();

    if (v4)
    {
      return 5;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25A94C828(uint64_t result)
{
  if (result > 29)
  {
    switch(result)
    {
      case 30:
        return 3;
      case 40:
        return 4;
      case 50:
        return 5;
    }
  }

  else
  {
    switch(result)
    {
      case 0:
        return result;
      case 10:
        return 1;
      case 20:
        return 2;
    }
  }

  return 6;
}

uint64_t sub_25A94C890@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v4, v13), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04788, &unk_25A9FDA20), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v13[5];
    swift_beginAccess();
    v7 = *(v6 + 16);

    v9 = sub_25A93019C(v8);

    v10 = *(v9 + 16);

    a2[3] = MEMORY[0x277D83B88];

    *a2 = v10;
  }

  else
  {
    sub_25A874F54();
    swift_allocError();
    *v12 = -127;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25A94C9C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) == 0) || (sub_25A87500C(*(a1 + 56) + 32 * v4, v57), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04788, &unk_25A9FDA20), (swift_dynamicCast() & 1) == 0))
  {
    sub_25A874F54();
    swift_allocError();
    *v20 = -127;
    return swift_willThrow();
  }

  v6 = v54;
  if (!*(a1 + 16) || (v7 = sub_25A8F3600(7955819, 0xE300000000000000), (v8 & 1) == 0))
  {
    v54 = 0u;
    v55 = 0u;
    v56 = 0;
    goto LABEL_16;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v7, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    goto LABEL_16;
  }

  if (!*(&v55 + 1))
  {
LABEL_16:
    sub_25A878194(&v54, &qword_27FA047C8, &qword_25A9F8E88);
    sub_25A874F54();
    swift_allocError();
    *v21 = -119;
    swift_willThrow();
  }

  sub_25A87817C(&v54, v57);
  v9 = v58;
  v10 = v59;
  v11 = __swift_project_boxed_opaque_existential_1(v57, v58);
  v12 = v50;
  v13 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v15;
  (*(v15 + 16))(v14);
  if ((sub_25A9984D8() & 1) != 0 && sub_25A9984C8() > 64)
  {
    *&v54 = 0x8000000000000000;
    if (sub_25A9984D8())
    {
      v16 = sub_25A9984C8();
      if (v16 >= 64)
      {
        v51 = v50;
        MEMORY[0x28223BE20](v16);
        v52 = v50;
        sub_25A895280();
        sub_25A9984A8();
        v17 = *(*(v10 + 32) + 8);
        v18 = sub_25A997D88();
        v12 = v52;
        result = (*(v60 + 8))(v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
        if (v18)
        {
          goto LABEL_44;
        }

        goto LABEL_26;
      }

      goto LABEL_23;
    }

    v52 = v50;
    v22 = sub_25A9984D8();
    v23 = sub_25A9984C8();
    if (v22)
    {
      if (v23 <= 64)
      {
        v51 = *(*(v10 + 24) + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v50[3] = v50;
        v27 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        v50[1] = v50 - v28;
        swift_getAssociatedConformanceWitness();
        v29 = sub_25A998A78();
        v50[2] = v50;
        MEMORY[0x28223BE20](v29);
        sub_25A9989C8();
        v30 = *(*(v10 + 32) + 8);
        v31 = sub_25A997D88();
        result = (*(v60 + 8))(v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
        if (v31)
        {
          goto LABEL_44;
        }

        sub_25A9984B8();
        v12 = v52;
      }

      else
      {
        v51 = v50;
        MEMORY[0x28223BE20](v23);
        sub_25A895280();
        sub_25A9984A8();
        v24 = *(*(v10 + 32) + 8);
        v25 = sub_25A997D88();
        result = (*(v60 + 8))(v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
        v12 = v52;
        if (v25)
        {
          goto LABEL_44;
        }
      }

      goto LABEL_26;
    }

    v12 = v52;
    if (v23 < 64)
    {
LABEL_23:
      sub_25A9984B8();
    }
  }

LABEL_26:
  if (sub_25A9984C8() <= 64)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v52 = v12;
    *&v54 = 0x7FFFFFFFFFFFFFFFLL;
    v32 = sub_25A9984D8();
    v33 = sub_25A9984C8();
    if ((v32 & 1) == 0)
    {
      break;
    }

    if (v33 < 65)
    {
      goto LABEL_35;
    }

LABEL_29:
    MEMORY[0x28223BE20](v33);
    v13 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25A895280();
    sub_25A9984A8();
    v34 = *(*(v10 + 32) + 8);
    v35 = sub_25A997D88();
    (*(v60 + 8))(v13, v9);
    v12 = v52;
    if (v35)
    {
      __break(1u);
LABEL_31:
      if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_36;
  }

  if (v33 >= 64)
  {
    goto LABEL_29;
  }

LABEL_35:
  sub_25A9984B8();
LABEL_36:
  v36 = sub_25A9984B8();
  (*(v60 + 8))(v14, v9);
  swift_beginAccess();
  v37 = *(v6 + 16);

  v39 = sub_25A93019C(v38);

  v40 = *(v39 + 16);

  v41 = (v40 & (v36 >> 63)) + v36;
  v42 = *(v6 + 16);

  v44 = sub_25A93019C(v43);

  v45 = *(v44 + 16);

  if (v41 >= v45)
  {
    sub_25A874F54();
    swift_allocError();
    *v49 = 124;
    swift_willThrow();
LABEL_41:

    return __swift_destroy_boxed_opaque_existential_0Tm(v57);
  }

  else
  {
    v46 = *(v6 + 16);

    v48 = sub_25A93019C(v47);

    if (v41 < 0)
    {
      __break(1u);
    }

    else if (v41 < *(v48 + 16))
    {
      sub_25A87500C(v48 + 32 * v41 + 32, a2);

      goto LABEL_41;
    }

    __break(1u);
LABEL_44:
    __break(1u);
  }

  return result;
}

uint64_t sub_25A94D200@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v4, v13), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04788, &unk_25A9FDA20), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v13[5];
    swift_beginAccess();
    v7 = *(v6 + 16);

    v9 = sub_25A93019C(v8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05520, &qword_25A9FDF90);
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04CC0, &qword_25A9FAA38);

    *a2 = v10;
  }

  else
  {
    sub_25A874F54();
    swift_allocError();
    *v12 = -127;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25A94D35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) == 0) || (sub_25A87500C(*(a1 + 56) + 32 * v4, v39), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04788, &unk_25A9FDA20), v6 = MEMORY[0x277D84F70], (swift_dynamicCast() & 1) == 0))
  {
    sub_25A874F54();
    swift_allocError();
    *v18 = -127;
    return swift_willThrow();
  }

  v7 = v36;
  if (!*(a1 + 16) || (v8 = sub_25A8F3600(1835365481, 0xE400000000000000), (v9 & 1) == 0))
  {
    sub_25A874F54();
    swift_allocError();
    *v30 = 4;
    swift_willThrow();
  }

  sub_25A87500C(*(a1 + 56) + 32 * v8, v39);
  sub_25A872D74(v39, v41);
  sub_25A87500C(v41, &v31);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05570, &unk_25A9FE400);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    sub_25A878194(&v36, &qword_27FA05578, &qword_25AA00A00);
LABEL_25:
    *(a2 + 24) = MEMORY[0x277D839B0];

    *a2 = 0;
    return __swift_destroy_boxed_opaque_existential_0Tm(v41);
  }

  sub_25A87817C(&v36, v39);
  swift_beginAccess();
  v11 = *(v7 + 16);

  v13 = sub_25A93019C(v12);

  v15 = *(v13 + 16);
  if (!v15)
  {
LABEL_24:

    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    goto LABEL_25;
  }

  v16 = 0;
  v17 = v13 + 32;
  v42 = v13;
  while (v16 < *(v13 + 16))
  {
    sub_25A87500C(v17, v34);
    if (swift_dynamicCast())
    {
      v19 = v10;
      v20 = v6;
      sub_25A87817C(&v31, &v36);
      v21 = v40;
      v22 = __swift_project_boxed_opaque_existential_1(v39, v40);
      *(&v32 + 1) = v21;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v31);
      (*(*(v21 - 8) + 16))(boxed_opaque_existential_0, v22, v21);
      v24 = *(&v37 + 1);
      v25 = __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
      v35 = v24;
      v26 = __swift_allocate_boxed_opaque_existential_0(v34);
      (*(*(v24 - 8) + 16))(v26, v25, v24);
      LOBYTE(v24) = static MorpheusUtils.isNil(_:)(&v31);
      v27 = static MorpheusUtils.isNil(_:)(v34);
      v28 = v27;
      if (v24)
      {
LABEL_15:
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        __swift_destroy_boxed_opaque_existential_0Tm(&v31);
        if (v28)
        {

          *(a2 + 24) = MEMORY[0x277D839B0];

          *a2 = 1;
          __swift_destroy_boxed_opaque_existential_0Tm(v41);
          __swift_destroy_boxed_opaque_existential_0Tm(&v36);
          return __swift_destroy_boxed_opaque_existential_0Tm(v39);
        }
      }

      else
      {
        if ((v27 & 1) == 0)
        {
          __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
          DynamicType = swift_getDynamicType();
          __swift_project_boxed_opaque_existential_1(v34, v35);
          if (DynamicType == swift_getDynamicType())
          {
            __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
            v28 = sub_25A9390C4(&v31, v34);
            goto LABEL_15;
          }
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        __swift_destroy_boxed_opaque_existential_0Tm(&v31);
      }

      result = __swift_destroy_boxed_opaque_existential_0Tm(&v36);
      v6 = v20;
      v10 = v19;
      v13 = v42;
      goto LABEL_11;
    }

    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    result = sub_25A878194(&v31, &qword_27FA05578, &qword_25AA00A00);
LABEL_11:
    ++v16;
    v17 += 32;
    if (v15 == v16)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25A94D7EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(1718379891, 0xE400000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, v19);
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04788, &unk_25A9FDA20);
      if (swift_dynamicCast())
      {
        if (*(a1 + 16))
        {
          v7 = sub_25A8F3600(0x726568746FLL, 0xE500000000000000);
          if (v8)
          {
            sub_25A87500C(*(a1 + 56) + 32 * v7, v19);
            if (swift_dynamicCast())
            {
              swift_beginAccess();
              v9 = *(v18 + 16);

              v11 = sub_25A93019C(v10);

              swift_beginAccess();
              v12 = *(v18 + 16);

              v14 = sub_25A93019C(v13);

              sub_25A933208(v14);
              v15 = swift_allocObject();
              *(v15 + 16) = v11;
              a2[3] = v6;

              *a2 = v15;
              return result;
            }
          }
        }
      }
    }
  }

  sub_25A874F54();
  swift_allocError();
  *v17 = -127;
  return swift_willThrow();
}

char *sub_25A94D9D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) == 0) || (sub_25A87500C(*(a1 + 56) + 32 * v4, v62), v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04788, &unk_25A9FDA20), (swift_dynamicCast() & 1) == 0))
  {
    sub_25A874F54();
    swift_allocError();
    *v17 = -127;
    return swift_willThrow();
  }

  v7 = v59;
  if (!*(a1 + 16) || (v8 = sub_25A8F3600(0x726568746FLL, 0xE500000000000000), (v9 & 1) == 0))
  {
    v59 = 0u;
    v60 = 0u;
    v61 = 0;
    goto LABEL_15;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v8, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    goto LABEL_15;
  }

  if (!*(&v60 + 1))
  {
LABEL_15:
    sub_25A878194(&v59, &qword_27FA047C8, &qword_25A9F8E88);
    sub_25A874F54();
    swift_allocError();
    *v19 = -119;
    swift_willThrow();
  }

  v54 = v6;
  v55 = a2;
  v56 = v7;
  sub_25A87817C(&v59, v62);
  v10 = v63;
  v11 = v64;
  v12 = __swift_project_boxed_opaque_existential_1(v62, v63);
  v13 = v53;
  v14 = *(v10 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  (*(v14 + 16))(v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_25A9984D8() & 1) != 0 && sub_25A9984C8() > 64)
  {
    *&v59 = 0x8000000000000000;
    if (sub_25A9984D8())
    {
      v16 = sub_25A9984C8();
      if (v16 >= 64)
      {
        v57 = v53;
        goto LABEL_19;
      }

LABEL_22:
      sub_25A9984B8();
      goto LABEL_25;
    }

    v20 = sub_25A9984D8();
    v16 = sub_25A9984C8();
    if ((v20 & 1) == 0)
    {
      if (v16 >= 64)
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    }

    v57 = v53;
    if (v16 > 64)
    {
LABEL_19:
      MEMORY[0x28223BE20](v16);
      sub_25A895280();
      sub_25A9984A8();
      v21 = *(*(v11 + 32) + 8);
      v22 = sub_25A997D88();
      result = (*(v14 + 8))(v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
      v13 = v57;
      if (v22)
      {
        goto LABEL_64;
      }

      goto LABEL_25;
    }

    v53[1] = *(*(v11 + 24) + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v53[3] = v53;
    v24 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    v25 = sub_25A998A78();
    v53[2] = v53;
    MEMORY[0x28223BE20](v25);
    sub_25A9989C8();
    v26 = *(*(v11 + 32) + 8);
    v27 = sub_25A997D88();
    result = (*(v14 + 8))(v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    if (v27)
    {
      goto LABEL_64;
    }

    sub_25A9984B8();
    v13 = v57;
  }

LABEL_25:
  if (sub_25A9984C8() <= 64)
  {
    goto LABEL_30;
  }

  while (1)
  {
    *&v59 = 0x7FFFFFFFFFFFFFFFLL;
    v28 = sub_25A9984D8();
    v29 = sub_25A9984C8();
    if ((v28 & 1) == 0)
    {
      break;
    }

    if (v29 < 65)
    {
      goto LABEL_34;
    }

LABEL_28:
    v57 = v13;
    MEMORY[0x28223BE20](v29);
    sub_25A895280();
    sub_25A9984A8();
    v30 = *(*(v11 + 32) + 8);
    v31 = sub_25A997D88();
    (*(v14 + 8))(v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    v13 = v57;
    if (v31)
    {
      __break(1u);
LABEL_30:
      if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_35;
  }

  if (v29 >= 64)
  {
    goto LABEL_28;
  }

LABEL_34:
  sub_25A9984B8();
LABEL_35:
  v32 = sub_25A9984B8();
  (*(v14 + 8))(v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v33 = MEMORY[0x277D84F90];
  v57 = v32;
  if (v32 < 1)
  {
    v36 = MEMORY[0x277D84F90];
LABEL_59:
    v50 = v54;
    v51 = swift_allocObject();
    *(v51 + 16) = v36;
    v52 = v55;
    v55[3] = v50;

    *v52 = v51;
    return __swift_destroy_boxed_opaque_existential_0Tm(v62);
  }

  else
  {
    v34 = v56;
    result = swift_beginAccess();
    v35 = 0;
    v36 = v33;
    while (1)
    {
      v37 = *(v34 + 16);
      v38 = *(v37 + 16);
      if (v38)
      {
        v65 = v33;

        sub_25A937550(0, v38, 0);
        v39 = v65;
        v40 = v37 + 32;
        do
        {
          sub_25A87500C(v40, &v59);
          v65 = v39;
          v42 = *(v39 + 2);
          v41 = *(v39 + 3);
          if (v42 >= v41 >> 1)
          {
            sub_25A937550((v41 > 1), v42 + 1, 1);
            v39 = v65;
          }

          *(v39 + 2) = v42 + 1;
          sub_25A872D74(&v59, &v39[32 * v42 + 32]);
          v40 += 32;
          --v38;
        }

        while (v38);

        v34 = v56;
      }

      else
      {
        v39 = v33;
      }

      v43 = *(v39 + 2);
      v44 = *(v36 + 2);
      v45 = v44 + v43;
      if (__OFADD__(v44, v43))
      {
        break;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v45 > *(v36 + 3) >> 1)
      {
        if (v44 <= v45)
        {
          v46 = v44 + v43;
        }

        else
        {
          v46 = v44;
        }

        result = sub_25A967488(result, v46, 1, v36);
        v36 = result;
      }

      v33 = MEMORY[0x277D84F90];
      if (*(v39 + 2))
      {
        if ((*(v36 + 3) >> 1) - *(v36 + 2) < v43)
        {
          goto LABEL_62;
        }

        swift_arrayInitWithCopy();

        if (v43)
        {
          v47 = *(v36 + 2);
          v48 = __OFADD__(v47, v43);
          v49 = v47 + v43;
          if (v48)
          {
            goto LABEL_63;
          }

          *(v36 + 2) = v49;
        }
      }

      else
      {

        if (v43)
        {
          goto LABEL_61;
        }
      }

      if (++v35 == v57)
      {
        goto LABEL_59;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
  }

  return result;
}

uint64_t sub_25A94E334@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_25A936F00(a1);
  sub_25A94D9D4(v3, a2);
}

uint64_t sub_25A94E3B0(uint64_t a1, void (*a2)(void))
{
  sub_25A936F00(a1);
  a2();
}

unint64_t sub_25A94E408()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04798, &qword_25A9F8E60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25A9FE3F0;
  *(inited + 32) = 0x6574697465675F5FLL;
  *(inited + 40) = 0xEB000000005F5F6DLL;
  *(inited + 48) = sub_25A907E7C(0x6574697465675F5FLL, 0xEB000000005F5F6DLL, &unk_286C0AA78, sub_25A94E26C);
  *(inited + 56) = 0x5F5F6E656C5F5FLL;
  *(inited + 64) = 0xE700000000000000;
  *(inited + 72) = sub_25A907E7C(0x5F5F6E656C5F5FLL, 0xE700000000000000, &unk_286C0AAB8, sub_25A94E298);
  *(inited + 80) = 0x5F5F726574695F5FLL;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_25A907E7C(0x5F5F726574695F5FLL, 0xE800000000000000, &unk_286C0AAE8, sub_25A94E2C4);
  *(inited + 104) = 0x5F5F6464615F5FLL;
  *(inited + 112) = 0xE700000000000000;
  *(inited + 120) = sub_25A907E7C(0x5F5F6464615F5FLL, 0xE700000000000000, &unk_286C0AB18, sub_25A94E2F0);
  *(inited + 128) = 0x5F5F6C756D5F5FLL;
  *(inited + 136) = 0xE700000000000000;
  *(inited + 144) = sub_25A907E7C(0x5F5F6C756D5F5FLL, 0xE700000000000000, &unk_286C0AB58, sub_25A94E69C);
  *(inited + 152) = 0x5F5F6C756D725F5FLL;
  *(inited + 160) = 0xE800000000000000;
  *(inited + 168) = sub_25A907E7C(0x5F5F6C756D725F5FLL, 0xE800000000000000, &unk_286C0AB98, sub_25A94E69C);
  strcpy((inited + 176), "__contains__");
  *(inited + 189) = 0;
  *(inited + 190) = -5120;
  *(inited + 192) = sub_25A907E7C(0x6961746E6F635F5FLL, 0xEC0000005F5F736ELL, &unk_286C0ABD8, sub_25A94E384);
  *(inited + 200) = 0x5F5F71655F5FLL;
  *(inited + 208) = 0xE600000000000000;
  *(inited + 216) = sub_25A97EC80();
  v1 = sub_25A98E67C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047A0, &qword_25A9F8E68);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_25A94E6B4()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t *PyClassBoundMethod.__allocating_init(cls:function:)(uint64_t *a1, uint64_t *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = a2[3];
  v9 = a2[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a2, v8);
  v11 = sub_25A94EC80(v7, v10, v2, v5, v8, v6, v9);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v11;
}

uint64_t *PyClassBoundMethod.init(cls:function:)(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v7 = a1[3];
  v6 = a1[4];
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = a2[3];
  v14 = a2[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  v16 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = sub_25A94EBC0(v11, v18, v3, v7, v13, v6, v14);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v20;
}

uint64_t sub_25A94E98C(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = v2[5];
  v7 = __swift_project_boxed_opaque_existential_1(v3 + 2, v6);
  v16 = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v7, v6);
  sub_25A872D74(v15, v14);
  v9 = *(a1 + 2);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = a1;
  if (!isUniquelyReferenced_nonNull_native || v9 >= *(a1 + 3) >> 1)
  {
    a1 = sub_25A967488(isUniquelyReferenced_nonNull_native, v9 + 1, 1, a1);
    v17 = a1;
  }

  sub_25A96AFC0(0, 0, 1, v14);
  v11 = v3[10];
  v12 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v11);
  (*(v12 + 16))(a1, a2, v11, v12);
}

uint64_t PyClassBoundMethod.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  return v0;
}

uint64_t PyClassBoundMethod.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_25A94EB44()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  __swift_project_boxed_opaque_existential_1((*v0 + 56), v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t *sub_25A94EBC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a3[5] = a4;
  a3[6] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3 + 2);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a1, a4);
  a3[10] = a5;
  a3[11] = a7;
  v14 = __swift_allocate_boxed_opaque_existential_0(a3 + 7);
  (*(*(a5 - 8) + 32))(v14, a2, a5);
  return a3;
}

uint64_t *sub_25A94EC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v12 = *(a5 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v14);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PyClassBoundMethod();
  v22 = swift_allocObject();
  (*(v18 + 16))(v21, a1, a4);
  (*(v12 + 16))(v16, a2, a5);
  return sub_25A94EBC0(v21, v16, v22, a4, a5, a6, v25);
}

void sub_25A94EEF0(uint64_t a1, uint64_t *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (qword_27FA043D8 != -1)
  {
    swift_once();
  }

  sub_25A998C58();
  v7[0] = mlx_array_new();
  swift_beginAccess();
  v5 = *(a1 + 16);
  swift_beginAccess();
  mlx_equal(v7, v5, a2[2], *(v6 + 16));
}

void sub_25A94F024(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A94F02CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A94F038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = PySpecialFunction.rawValue.getter();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  v9 = MEMORY[0x277D84F90];
  v10 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  type metadata accessor for Function();
  v11 = swift_allocObject();
  *(v11 + 32) = v9;
  *(v11 + 40) = v9;
  *(v11 + 48) = v9;
  *(v11 + 56) = v9;
  *(v11 + 64) = v9;
  *(v11 + 72) = 0u;
  *(v11 + 88) = 0u;
  *(v11 + 104) = sub_25A92BDB4(v9);
  *(v11 + 16) = v5;
  *(v11 + 24) = v7;
  v12 = *(v11 + 80);
  v16[2] = *(v11 + 64);
  v16[3] = v12;
  v17 = *(v11 + 96);
  v13 = *(v11 + 48);
  v16[0] = *(v11 + 32);
  v16[1] = v13;
  *(v11 + 32) = &unk_286C0A878;
  *(v11 + 40) = v9;
  *(v11 + 48) = v9;
  *(v11 + 56) = v9;
  *(v11 + 64) = v9;
  *(v11 + 72) = 0u;
  *(v11 + 88) = 0u;
  sub_25A892B80(v16);
  swift_beginAccess();
  *(v11 + 104) = v10;

  v14 = swift_allocObject();
  *(v14 + 16) = sub_25A950EFC;
  *(v14 + 24) = v8;
  *(v11 + 112) = sub_25A8F1830;
  *(v11 + 120) = v14;
  return v11;
}

uint64_t sub_25A94F1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = PySpecialFunction.rawValue.getter();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  v9 = MEMORY[0x277D84F90];
  v10 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  type metadata accessor for Function();
  v11 = swift_allocObject();
  *(v11 + 32) = v9;
  *(v11 + 40) = v9;
  *(v11 + 48) = v9;
  *(v11 + 56) = v9;
  *(v11 + 64) = v9;
  *(v11 + 72) = 0u;
  *(v11 + 88) = 0u;
  *(v11 + 104) = sub_25A92BDB4(v9);
  *(v11 + 16) = v5;
  *(v11 + 24) = v7;
  v12 = *(v11 + 80);
  v16[2] = *(v11 + 64);
  v16[3] = v12;
  v17 = *(v11 + 96);
  v13 = *(v11 + 48);
  v16[0] = *(v11 + 32);
  v16[1] = v13;
  *(v11 + 32) = &unk_286C0A8B8;
  *(v11 + 40) = v9;
  *(v11 + 48) = v9;
  *(v11 + 56) = v9;
  *(v11 + 64) = v9;
  *(v11 + 72) = 0u;
  *(v11 + 88) = 0u;
  sub_25A892B80(v16);
  swift_beginAccess();
  *(v11 + 104) = v10;

  v14 = swift_allocObject();
  *(v14 + 16) = sub_25A950F34;
  *(v14 + 24) = v8;
  *(v11 + 112) = sub_25A8F1D14;
  *(v11 + 120) = v14;
  return v11;
}

uint64_t sub_25A94F328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = PySpecialFunction.rawValue.getter();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  v9 = MEMORY[0x277D84F90];
  v10 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  type metadata accessor for Function();
  v11 = swift_allocObject();
  *(v11 + 32) = v9;
  *(v11 + 40) = v9;
  *(v11 + 48) = v9;
  *(v11 + 56) = v9;
  *(v11 + 64) = v9;
  *(v11 + 72) = 0u;
  *(v11 + 88) = 0u;
  *(v11 + 104) = sub_25A92BDB4(v9);
  *(v11 + 16) = v5;
  *(v11 + 24) = v7;
  v12 = *(v11 + 80);
  v16[2] = *(v11 + 64);
  v16[3] = v12;
  v17 = *(v11 + 96);
  v13 = *(v11 + 48);
  v16[0] = *(v11 + 32);
  v16[1] = v13;
  *(v11 + 32) = &unk_286C0A928;
  *(v11 + 40) = v9;
  *(v11 + 48) = v9;
  *(v11 + 56) = v9;
  *(v11 + 64) = v9;
  *(v11 + 72) = 0u;
  *(v11 + 88) = 0u;
  sub_25A892B80(v16);
  swift_beginAccess();
  *(v11 + 104) = v10;

  v14 = swift_allocObject();
  *(v14 + 16) = sub_25A950F18;
  *(v14 + 24) = v8;
  *(v11 + 112) = sub_25A8F1D14;
  *(v11 + 120) = v14;
  return v11;
}

void sub_25A94F4A0(uint64_t a1, uint64_t *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (qword_27FA043D8 != -1)
  {
    swift_once();
  }

  sub_25A998C58();
  v7[0] = mlx_array_new();
  swift_beginAccess();
  v5 = *(a1 + 16);
  swift_beginAccess();
  mlx_not_equal(v7, v5, a2[2], *(v6 + 16));
}

void sub_25A94F5D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A94F5DCLL);
  }

  _Unwind_Resume(a1);
}

void sub_25A94F5E8(uint64_t a1, uint64_t *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (qword_27FA043D8 != -1)
  {
    swift_once();
  }

  sub_25A998C58();
  v7[0] = mlx_array_new();
  swift_beginAccess();
  v5 = *(a1 + 16);
  swift_beginAccess();
  mlx_less(v7, v5, a2[2], *(v6 + 16));
}

void sub_25A94F71C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A94F724);
  }

  _Unwind_Resume(a1);
}

void sub_25A94F730(uint64_t a1, uint64_t *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (qword_27FA043D8 != -1)
  {
    swift_once();
  }

  sub_25A998C58();
  v7[0] = mlx_array_new();
  swift_beginAccess();
  v5 = *(a1 + 16);
  swift_beginAccess();
  mlx_less_equal(v7, v5, a2[2], *(v6 + 16));
}

void sub_25A94F864(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A94F86CLL);
  }

  _Unwind_Resume(a1);
}

void sub_25A94F878(uint64_t a1, uint64_t *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (qword_27FA043D8 != -1)
  {
    swift_once();
  }

  sub_25A998C58();
  v7[0] = mlx_array_new();
  swift_beginAccess();
  v5 = *(a1 + 16);
  swift_beginAccess();
  mlx_greater(v7, v5, a2[2], *(v6 + 16));
}

void sub_25A94F9AC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A94F9B4);
  }

  _Unwind_Resume(a1);
}

void sub_25A94F9C0(uint64_t a1, uint64_t *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (qword_27FA043D8 != -1)
  {
    swift_once();
  }

  sub_25A998C58();
  v7[0] = mlx_array_new();
  swift_beginAccess();
  v5 = *(a1 + 16);
  swift_beginAccess();
  mlx_greater_equal(v7, v5, a2[2], *(v6 + 16));
}

void sub_25A94FAF4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A94FAFCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A94FB08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v4, v10), v6 = MEMORY[0x277D839B0], result = swift_dynamicCast(), (result & 1) != 0))
  {
    v8 = v10[47];
    *(a2 + 24) = v6;
    *a2 = v8;
  }

  else
  {
    sub_25A874F54();
    swift_allocError();
    *v9 = 29;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25A94FBDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v4, v11), result = swift_dynamicCast(), result))
  {
    v7 = v11[47];
    a2[3] = MEMORY[0x277D837D0];
    if (v7)
    {
      v8 = 1702195796;
      v9 = 0xE400000000000000;
    }

    else
    {
      v8 = 0x65736C6146;
      v9 = 0xE500000000000000;
    }

    *a2 = v8;
    a2[1] = v9;
  }

  else
  {
    sub_25A874F54();
    swift_allocError();
    *v10 = 29;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25A94FCD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v4, v9), result = swift_dynamicCast(), result))
  {
    v7 = v9[47];
    a2[3] = MEMORY[0x277D83B88];
    *a2 = (v7 & 1) != 0;
  }

  else
  {
    sub_25A874F54();
    swift_allocError();
    *v8 = 29;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25A94FDC0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16) && (v6 = sub_25A8F3600(1718379891, 0xE400000000000000), (v7 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v6, v31);
  }

  else
  {
    memset(v31, 0, 32);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
  v8 = MEMORY[0x277D839B0];
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v9 = v28;
  if (v28 == 2)
  {
    goto LABEL_17;
  }

  if (!*(a1 + 16) || (v10 = sub_25A8F3600(0x726568746FLL, 0xE500000000000000), (v11 & 1) == 0))
  {
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
    goto LABEL_16;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v10, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FA05588, &qword_25A9FE498);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    goto LABEL_16;
  }

  if (!*(&v29 + 1))
  {
LABEL_16:
    sub_25A878194(&v28, &qword_27FA05580, &qword_25A9FE490);
LABEL_17:
    sub_25A874F54();
    swift_allocError();
    *v21 = -95;
    result = swift_willThrow();
    goto LABEL_18;
  }

  sub_25A87817C(&v28, v31);
  sub_25A872F24(v31, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04810, &qword_25A9F8E98);
  if (swift_dynamicCast())
  {
    sub_25A87817C(v25, &v28);
    v12 = sub_25A8BA9DC(v9 & 1, 0);
    v13 = *(&v29 + 1);
    v14 = v30;
    __swift_project_boxed_opaque_existential_1(&v28, *(&v29 + 1));
    v15 = (*(v14 + 8))(13, v13, v14);
    v16 = a2(v12, v15);
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v17 = v27[0];
    *&v25[0] = mlx_array_new();
    swift_beginAccess();
    mlx_all(v25, *(v16 + 16), 0, *(v17 + 16));

    v18 = *&v25[0];
    type metadata accessor for MLXArray();
    *(swift_allocObject() + 16) = v18;
    *(a3 + 24) = v8;
    v19 = sub_25A8EDD5C();

    *a3 = v19 & 1;
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    v20 = &v28;
  }

  else
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_25A878194(v25, &qword_27FA04808, &qword_25A9FDC40);
    sub_25A874F54();
    swift_allocError();
    *v24 = -95;
    swift_willThrow();
    v20 = v31;
  }

  result = __swift_destroy_boxed_opaque_existential_0Tm(v20);
LABEL_18:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A950190(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A950198);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A9501A4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v39[5] = *MEMORY[0x277D85DE8];
  if (*(a1 + 16) && (v6 = sub_25A8F3600(1718379891, 0xE400000000000000), (v7 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v6, &v34);
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (swift_dynamicCast())
  {
    sub_25A87817C(v37, v39);
    if (*(a1 + 16) && (v8 = sub_25A8F3600(0x726568746FLL, 0xE500000000000000), (v9 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v8, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FA05588, &qword_25A9FE498);
      if (swift_dynamicCast())
      {
        if (*(&v35 + 1))
        {
          sub_25A87817C(&v34, v37);
          sub_25A872F24(v39, v31);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04810, &qword_25A9F8E98);
          if (swift_dynamicCast())
          {
            sub_25A87817C(v29, &v34);
            sub_25A872F24(v37, v29);
            if (swift_dynamicCast())
            {
              sub_25A87817C(v27, v31);
              v10 = *(&v35 + 1);
              v11 = v36;
              __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
              v12 = (*(v11 + 8))(13, v10, v11);
              v13 = v32;
              v14 = v33;
              __swift_project_boxed_opaque_existential_1(v31, v32);
              v15 = (*(v14 + 8))(13, v13, v14);
              v16 = a2(v12, v15);
              if (qword_27FA043D8 != -1)
              {
                swift_once();
              }

              sub_25A998C58();
              v17 = *&v29[0];
              *&v27[0] = mlx_array_new();
              swift_beginAccess();
              mlx_all(v27, *(v16 + 16), 0, *(v17 + 16));

              v18 = *&v27[0];
              type metadata accessor for MLXArray();
              *(swift_allocObject() + 16) = v18;
              *(a3 + 24) = MEMORY[0x277D839B0];
              LOBYTE(v18) = sub_25A8EDD5C();

              *a3 = v18 & 1;
              __swift_destroy_boxed_opaque_existential_0Tm(v37);
              __swift_destroy_boxed_opaque_existential_0Tm(v39);
              __swift_destroy_boxed_opaque_existential_0Tm(v31);
              v19 = &v34;
              goto LABEL_25;
            }

            v28 = 0;
            memset(v27, 0, sizeof(v27));
            sub_25A878194(v27, &qword_27FA04808, &qword_25A9FDC40);
            __swift_destroy_boxed_opaque_existential_0Tm(&v34);
          }

          else
          {
            v30 = 0;
            memset(v29, 0, sizeof(v29));
            sub_25A878194(v29, &qword_27FA04808, &qword_25A9FDC40);
          }

          sub_25A874F54();
          swift_allocError();
          *v26 = -95;
          swift_willThrow();
          __swift_destroy_boxed_opaque_existential_0Tm(v37);
          v19 = v39;
LABEL_25:
          result = __swift_destroy_boxed_opaque_existential_0Tm(v19);
          goto LABEL_21;
        }
      }

      else
      {
        v36 = 0;
        v34 = 0u;
        v35 = 0u;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v39);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      v34 = 0u;
      v35 = 0u;
      v36 = 0;
    }

    v20 = &qword_27FA05580;
    v21 = &qword_25A9FE490;
    v22 = &v34;
  }

  else
  {
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    v20 = &qword_27FA047C8;
    v21 = &qword_25A9F8E88;
    v22 = v37;
  }

  sub_25A878194(v22, v20, v21);
  sub_25A874F54();
  swift_allocError();
  *v23 = -95;
  result = swift_willThrow();
LABEL_21:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A95066C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A950674);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A950680@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v39[5] = *MEMORY[0x277D85DE8];
  if (*(a1 + 16) && (v6 = sub_25A8F3600(1718379891, 0xE400000000000000), (v7 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v6, &v34);
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04948, &qword_25A9F9590);
  if (swift_dynamicCast())
  {
    sub_25A87817C(v37, v39);
    if (*(a1 + 16) && (v8 = sub_25A8F3600(0x726568746FLL, 0xE500000000000000), (v9 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v8, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FA05588, &qword_25A9FE498);
      if (swift_dynamicCast())
      {
        if (*(&v35 + 1))
        {
          sub_25A87817C(&v34, v37);
          sub_25A872F24(v39, v31);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04810, &qword_25A9F8E98);
          if (swift_dynamicCast())
          {
            sub_25A87817C(v29, &v34);
            sub_25A872F24(v37, v29);
            if (swift_dynamicCast())
            {
              sub_25A87817C(v27, v31);
              v10 = *(&v35 + 1);
              v11 = v36;
              __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
              v12 = (*(v11 + 8))(13, v10, v11);
              v13 = v32;
              v14 = v33;
              __swift_project_boxed_opaque_existential_1(v31, v32);
              v15 = (*(v14 + 8))(13, v13, v14);
              v16 = a2(v12, v15);
              if (qword_27FA043D8 != -1)
              {
                swift_once();
              }

              sub_25A998C58();
              v17 = *&v29[0];
              *&v27[0] = mlx_array_new();
              swift_beginAccess();
              mlx_all(v27, *(v16 + 16), 0, *(v17 + 16));

              v18 = *&v27[0];
              type metadata accessor for MLXArray();
              *(swift_allocObject() + 16) = v18;
              *(a3 + 24) = MEMORY[0x277D839B0];
              LOBYTE(v18) = sub_25A8EDD5C();

              *a3 = v18 & 1;
              __swift_destroy_boxed_opaque_existential_0Tm(v37);
              __swift_destroy_boxed_opaque_existential_0Tm(v39);
              __swift_destroy_boxed_opaque_existential_0Tm(v31);
              v19 = &v34;
              goto LABEL_25;
            }

            v28 = 0;
            memset(v27, 0, sizeof(v27));
            sub_25A878194(v27, &qword_27FA04808, &qword_25A9FDC40);
            __swift_destroy_boxed_opaque_existential_0Tm(&v34);
          }

          else
          {
            v30 = 0;
            memset(v29, 0, sizeof(v29));
            sub_25A878194(v29, &qword_27FA04808, &qword_25A9FDC40);
          }

          sub_25A874F54();
          swift_allocError();
          *v26 = -95;
          swift_willThrow();
          __swift_destroy_boxed_opaque_existential_0Tm(v37);
          v19 = v39;
LABEL_25:
          result = __swift_destroy_boxed_opaque_existential_0Tm(v19);
          goto LABEL_21;
        }
      }

      else
      {
        v36 = 0;
        v34 = 0u;
        v35 = 0u;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v39);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      v34 = 0u;
      v35 = 0u;
      v36 = 0;
    }

    v20 = &unk_27FA05580;
    v21 = &unk_25A9FE490;
    v22 = &v34;
  }

  else
  {
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    v20 = &unk_27FA04950;
    v21 = &unk_25A9F9598;
    v22 = v37;
  }

  sub_25A878194(v22, v20, v21);
  sub_25A874F54();
  swift_allocError();
  *v23 = -95;
  result = swift_willThrow();
LABEL_21:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A950B48(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A950B50);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A950BE0(uint64_t a1, void (*a2)(void))
{
  sub_25A936F00(a1);
  a2();
}

unint64_t sub_25A950C38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04798, &qword_25A9F8E60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25A9FE480;
  *(inited + 32) = 0x5F5F6C6F6F625F5FLL;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = sub_25A907E7C(0x5F5F6C6F6F625F5FLL, 0xE800000000000000, &unk_286C0A7E8, sub_25A950B5C);
  *(inited + 56) = 0x5F5F727065725F5FLL;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = sub_25A907E7C(0x5F5F727065725F5FLL, 0xE800000000000000, &unk_286C0A818, sub_25A950B88);
  *(inited + 80) = 0x5F5F746E695F5FLL;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = sub_25A907E7C(0x5F5F746E695F5FLL, 0xE700000000000000, &unk_286C0A848, sub_25A950BB4);
  *(inited + 104) = 0x5F5F71655F5FLL;
  *(inited + 112) = 0xE600000000000000;
  *(inited + 120) = sub_25A94F038(16, sub_25A94EEF0, 0);
  *(inited + 128) = 0x5F5F656E5F5FLL;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = sub_25A94F038(17, sub_25A94F4A0, 0);
  *(inited + 152) = 0x5F5F746C5F5FLL;
  *(inited + 160) = 0xE600000000000000;
  *(inited + 168) = sub_25A94F038(18, sub_25A94F5E8, 0);
  *(inited + 176) = 0x5F5F656C5F5FLL;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = sub_25A94F038(19, sub_25A94F730, 0);
  *(inited + 200) = 0x5F5F74675F5FLL;
  *(inited + 208) = 0xE600000000000000;
  *(inited + 216) = sub_25A94F038(20, sub_25A94F878, 0);
  *(inited + 224) = 0x5F5F65675F5FLL;
  *(inited + 232) = 0xE600000000000000;
  *(inited + 240) = sub_25A94F038(21, sub_25A94F9C0, 0);
  v1 = sub_25A98E67C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047A0, &qword_25A9F8E68);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_25A950EC4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *PyFunction.__allocating_init(name:arguments:attrs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D84F90];
  v12[4] = MEMORY[0x277D84F90];
  v12[5] = v13;
  v12[6] = v13;
  v12[7] = v13;

  v12[8] = v13;

  v12[9] = 0;
  v12[10] = 0;

  v12[11] = 0;
  v12[12] = 0;

  v12[13] = sub_25A92BDB4(v13);
  v12[2] = a1;
  v12[3] = a2;
  v14 = *(v12 + 5);
  v22[2] = *(v12 + 4);
  v22[3] = v14;
  v23 = v12[12];
  v15 = *(v12 + 3);
  v22[0] = *(v12 + 2);
  v22[1] = v15;
  v16 = *(a3 + 16);
  *(v12 + 2) = *a3;
  *(v12 + 3) = v16;
  v17 = *(a3 + 48);
  *(v12 + 4) = *(a3 + 32);
  *(v12 + 5) = v17;
  v12[12] = *(a3 + 64);
  sub_25A892B80(v22);
  swift_beginAccess();
  v18 = v12[13];
  v12[13] = a4;

  if (a5)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = a6;
    v12[14] = sub_25A8F1830;
    v12[15] = v19;
  }

  else
  {
    v20 = swift_allocObject();
    swift_weakInit();
    v12[14] = sub_25A8DF24C;
    v12[15] = v20;
    swift_beginAccess();
    swift_weakAssign();
  }

  return v12;
}

uint64_t PyFunction.init(name:arguments:attrs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = MEMORY[0x277D84F90];
  *(v6 + 56) = MEMORY[0x277D84F90];
  *(v6 + 64) = v13;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 32) = v13;
  *(v6 + 40) = v13;
  *(v6 + 48) = v13;

  v14 = *(v6 + 56);
  *(v6 + 56) = v13;

  v15 = *(v6 + 64);
  *(v6 + 64) = v13;

  v16 = *(v6 + 80);
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;

  v17 = *(v6 + 96);
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;

  *(v6 + 104) = sub_25A92BDB4(v13);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v18 = *(v6 + 80);
  v26[2] = *(v6 + 64);
  v26[3] = v18;
  v27 = *(v6 + 96);
  v19 = *(v6 + 48);
  v26[0] = *(v6 + 32);
  v26[1] = v19;
  v20 = *(a3 + 16);
  *(v6 + 32) = *a3;
  *(v6 + 48) = v20;
  v21 = *(a3 + 48);
  *(v6 + 64) = *(a3 + 32);
  *(v6 + 80) = v21;
  *(v6 + 96) = *(a3 + 64);
  sub_25A892B80(v26);
  swift_beginAccess();
  v22 = *(v6 + 104);
  *(v6 + 104) = a4;

  if (a5)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = a5;
    *(v23 + 24) = a6;
    *(v6 + 112) = sub_25A8F1D14;
    *(v6 + 120) = v23;
  }

  else
  {
    v24 = swift_allocObject();
    swift_weakInit();
    *(v6 + 112) = sub_25A9514C8;
    *(v6 + 120) = v24;
    swift_beginAccess();
    swift_weakAssign();
  }

  return v6;
}

void *PyFunction.deinit()
{
  v1 = v0[3];

  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[10];
  v8 = v0[12];

  v9 = v0[13];

  v10 = v0[15];

  return v0;
}

uint64_t PyFunction.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[10];
  v8 = v0[12];

  v9 = v0[13];

  v10 = v0[15];

  return swift_deallocClassInstance();
}

uint64_t sub_25A9513F8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25A951430()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _sSi8MorpheusE9__class__AA7PyClass_pvg_0@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27FA04360 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA0FC78;
  a1[3] = type metadata accessor for PyBuiltInClass();
  a1[4] = sub_25A892BD4();
  *a1 = v2;
}

uint64_t Float.__class__.getter@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27FA04340 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA0FC58;
  a1[3] = type metadata accessor for PyBuiltInClass();
  a1[4] = sub_25A892BD4();
  *a1 = v2;
}

uint64_t sub_25A951648@<X0>(void *a1@<X2>, void *a2@<X3>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;
  a3[3] = type metadata accessor for PyBuiltInClass();
  a3[4] = sub_25A892BD4();
  *a3 = v4;
}

uint64_t Double.__class__.getter@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27FA04340 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA0FC58;
  a1[3] = type metadata accessor for PyBuiltInClass();
  a1[4] = sub_25A892BD4();
  *a1 = v2;
}

uint64_t String.__class__.getter@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27FA04348 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA0FC60;
  a1[3] = type metadata accessor for PyBuiltInClass();
  a1[4] = sub_25A892BD4();
  *a1 = v2;
}

uint64_t Bool.__class__.getter@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27FA04350 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA0FC68;
  a1[3] = type metadata accessor for PyBuiltInClass();
  a1[4] = sub_25A892BD4();
  *a1 = v2;
}

uint64_t Data.__class__.getter@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27FA04358 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA0FC70;
  a1[3] = type metadata accessor for PyBuiltInClass();
  a1[4] = sub_25A892BD4();
  *a1 = v2;
}

uint64_t SliceStruct.__class__.getter@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27FA04378 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA0FC90;
  a1[3] = type metadata accessor for PyBuiltInClass();
  a1[4] = sub_25A892BD4();
  *a1 = v2;
}

uint64_t sub_25A951A04@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27FA04378 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA0FC90;
  a1[3] = type metadata accessor for PyBuiltInClass();
  a1[4] = sub_25A892BD4();
  *a1 = v2;
}

uint64_t Array.__class__.getter@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27FA04388 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA0FCA0;
  a1[3] = type metadata accessor for PyBuiltInClass();
  a1[4] = sub_25A892BD4();
  *a1 = v2;
}

uint64_t Dictionary.__class__.getter@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27FA04380 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA0FC98;
  a1[3] = type metadata accessor for PyBuiltInClass();
  a1[4] = sub_25A892BD4();
  *a1 = v2;
}

uint64_t sub_25A951C94@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;
  a3[3] = type metadata accessor for PyBuiltInClass();
  a3[4] = sub_25A892BD4();
  *a3 = v4;
}

uint64_t SharedImmutableTuple.__allocating_init(array:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_25A951DD0()
{
  v1 = *v0;
  swift_beginAccess();
  v4 = v0[2];
  v2 = *(v1 + 80);
  sub_25A9981A8();
  swift_getWitnessTable();
  return sub_25A9982A8();
}

uint64_t sub_25A951E60()
{
  sub_25A9533D4();
}

uint64_t sub_25A951E88(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_25A951EF4(uint64_t a1)
{
  swift_beginAccess();
  result = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25A951F88(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v1[2];
  v5 = *(v3 + 80);

  v7 = a1(v6, v5);

  return v7;
}

uint64_t sub_25A95200C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[2];
  v3 = *(v1 + 80);

  sub_25A9981D8();
}

void (*sub_25A9520F8())()
{
  if (MEMORY[0x277D84FD8])
  {
    swift_coroFrameAlloc();
  }

  else
  {
    malloc(*(*(*(*v0 + 80) - 8) + 64));
  }

  sub_25A95200C();
  return sub_25A95209C;
}

uint64_t SharedImmutableTuple.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SharedImmutableTuple.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_25A9521EC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_25A951F3C();
  *a1 = 0;
  return result;
}

uint64_t sub_25A952218@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_25A951F70();
  *a1 = result;
  return result;
}

void (*sub_25A952244(void *a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  v6 = *a2;
  v7 = *v2;
  v5[4] = sub_25A952308(v5);
  return sub_25A9522C0;
}

void sub_25A9522C0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_25A952308(void *a1))(void *a1)
{
  v3 = *(*v1 + 80);
  *a1 = v3;
  v4 = *(v3 - 8);
  a1[1] = v4;
  v5 = *(v4 + 64);
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  a1[2] = v6;
  sub_25A95200C();
  return sub_25A9523D8;
}

void sub_25A9523D8(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_25A952424(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 80);
  type metadata accessor for SharedImmutableTuple();

  return sub_25A998318();
}

uint64_t sub_25A952480(uint64_t a1)
{
  v1 = *(a1 + 80);
  type metadata accessor for SharedImmutableTuple();

  return sub_25A998308();
}

void sub_25A9524E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 80);
  type metadata accessor for SharedImmutableTuple();

  JUMPOUT(0x25F850600);
}

uint64_t sub_25A95254C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 80);
  type metadata accessor for SharedImmutableTuple();

  return sub_25A9982C8();
}

uint64_t sub_25A9525C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 80);
  type metadata accessor for SharedImmutableTuple();

  return sub_25A9982F8();
}

void sub_25A95261C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 80);
  type metadata accessor for SharedImmutableTuple();

  JUMPOUT(0x25F8505E0);
}

uint64_t sub_25A952678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 80);
  type metadata accessor for SharedImmutableTuple();

  return sub_25A9713D4();
}

uint64_t sub_25A9526D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 80);
  type metadata accessor for SharedImmutableTuple();

  return sub_25A9714A4();
}

uint64_t sub_25A952730@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  result = sub_25A951EF4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_25A952760(uint64_t *a1)
{
  v3 = *v1;
  result = sub_25A951EF4(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_25A952790@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_25A953408();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  return result;
}

uint64_t sub_25A9527FC(uint64_t a1)
{
  v2 = *(a1 + 80);
  type metadata accessor for SharedImmutableTuple();
  swift_getWitnessTable();
  v3 = sub_25A9714A0();
  v4 = *v1;

  return v3;
}

void sub_25A952864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 80);
  type metadata accessor for SharedImmutableTuple();

  JUMPOUT(0x25F8503B0);
}

uint64_t sub_25A9528D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 80);
  type metadata accessor for SharedImmutableTuple();
  return sub_25A998098();
}

uint64_t SharedImmutableTuple<A>.description.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  v3 = MEMORY[0x25F850440](v2, MEMORY[0x277D84F70] + 8);

  return v3;
}

uint64_t sub_25A9529B4()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  v4 = MEMORY[0x25F850440](v3, MEMORY[0x277D84F70] + 8);

  return v4;
}

uint64_t SharedImmutableTuple<A>.get(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  sub_25A87500C(a1, &v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (!swift_dynamicCast())
  {
    v65 = 0;
    v63 = 0u;
    v64 = 0u;
    sub_25A917A78(&v63);
    sub_25A87500C(a1, &v71);
    if (!swift_dynamicCast())
    {
LABEL_17:
      sub_25A874F54();
      swift_allocError();
      *v25 = 122;
      return swift_willThrow();
    }

    v74 = a2;
    LODWORD(v66) = v63;
    BYTE4(v66) = BYTE4(v63);
    v67 = DWORD2(v63);
    v68 = BYTE12(v63);
    v69 = v64;
    v70 = BYTE4(v64);
    swift_beginAccess();
    v18 = sub_25A8FF4EC(*(*(v5 + 16) + 16));
    v19 = v16;
    v20 = v17;
    v21 = 0;
    v22 = v18;
    while (1)
    {
      v23 = v16 >= v22;
      if (v17 > 0)
      {
        v23 = v22 >= v16;
      }

      if (v23)
      {
        break;
      }

      v24 = __OFADD__(v22, v17);
      v22 += v17;
      if (v24)
      {
        v22 = (v22 >> 63) ^ 0x8000000000000000;
      }

      v24 = __OFADD__(v21++, 1);
      if (v24)
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v61 = v3;
    v66 = MEMORY[0x277D84F90];
    result = sub_25A937550(0, v21, 0);
    v27 = v66;
    if (v21)
    {
      while (1)
      {
        v28 = v19 >= v18;
        if (v20 > 0)
        {
          v28 = v18 >= v19;
        }

        if (v28)
        {
          break;
        }

        if (__OFADD__(v18, v20))
        {
          v29 = ((v18 + v20) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v29 = v18 + v20;
        }

        if (v18 < 0)
        {
          goto LABEL_72;
        }

        v30 = *(v5 + 16);
        if (v18 >= *(v30 + 16))
        {
          goto LABEL_73;
        }

        sub_25A87500C(v30 + 32 * v18 + 32, &v71);
        v66 = v27;
        v32 = *(v27 + 16);
        v31 = *(v27 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_25A937550((v31 > 1), v32 + 1, 1);
          v27 = v66;
        }

        *(v27 + 16) = v32 + 1;
        result = sub_25A872D74(&v71, (v27 + 32 * v32 + 32));
        v18 = v29;
        if (!--v21)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
    }

    else
    {
      v29 = v18;
LABEL_32:
      v33 = v19 >= v29;
      if (v20 > 0)
      {
        v33 = v29 >= v19;
      }

      if (v33)
      {
LABEL_35:
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04788, &unk_25A9FDA20);
        result = swift_allocObject();
        *(result + 16) = v27;
        v35 = v74;
        v74[3] = v34;
        *v35 = result;
        return result;
      }

      while (1)
      {
        v36 = __OFADD__(v29, v20) ? ((v29 + v20) >> 63) ^ 0x8000000000000000 : v29 + v20;
        if (v29 < 0)
        {
          break;
        }

        v37 = *(v5 + 16);
        if (v29 >= *(v37 + 16))
        {
          goto LABEL_75;
        }

        sub_25A87500C(v37 + 32 * v29 + 32, &v71);
        v66 = v27;
        v39 = *(v27 + 16);
        v38 = *(v27 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_25A937550((v38 > 1), v39 + 1, 1);
          v27 = v66;
        }

        *(v27 + 16) = v39 + 1;
        result = sub_25A872D74(&v71, (v27 + 32 * v39 + 32));
        v40 = v19 >= v36;
        if (v20 > 0)
        {
          v40 = v36 >= v19;
        }

        v29 = v36;
        if (v40)
        {
          goto LABEL_35;
        }
      }
    }

    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v74 = a2;
  sub_25A87817C(&v63, &v71);
  v8 = v72;
  v9 = v73;
  v10 = __swift_project_boxed_opaque_existential_1(&v71, v72);
  v11 = v59;
  v12 = *(v8 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14);
  if ((sub_25A9984D8() & 1) != 0 && sub_25A9984C8() > 64)
  {
    *&v63 = 0x8000000000000000;
    if (sub_25A9984D8())
    {
      v15 = sub_25A9984C8();
      if (v15 >= 64)
      {
        v61 = v59;
        MEMORY[0x28223BE20](v15);
        v62 = v59;
        sub_25A895280();
        sub_25A9984A8();
        v45 = *(*(v9 + 32) + 8);
        v46 = sub_25A997D88();
        v4 = v3;
        v11 = v62;
        result = (*(v12 + 8))(v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
        if (v46)
        {
          goto LABEL_78;
        }
      }

      else
      {
        sub_25A9984B8();
      }
    }

    else
    {
      v61 = v3;
      v62 = v59;
      v41 = sub_25A9984D8();
      v42 = sub_25A9984C8();
      if (v41)
      {
        if (v42 > 64)
        {
          v60 = v59;
          MEMORY[0x28223BE20](v42);
          sub_25A895280();
          sub_25A9984A8();
          v43 = *(*(v9 + 32) + 8);
          v44 = sub_25A997D88();
          result = (*(v12 + 8))(v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
          v4 = v61;
          v11 = v62;
          if (v44)
          {
            goto LABEL_78;
          }

          goto LABEL_58;
        }

        v59[1] = *(*(v9 + 24) + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v60 = v59;
        v48 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        swift_getAssociatedConformanceWitness();
        v49 = sub_25A998A78();
        v59[2] = v59;
        MEMORY[0x28223BE20](v49);
        sub_25A9989C8();
        v50 = *(*(v9 + 32) + 8);
        v51 = sub_25A997D88();
        result = (*(v12 + 8))(v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
        if (v51)
        {
          goto LABEL_78;
        }

        sub_25A9984B8();
        v4 = v61;
      }

      else
      {
        v4 = v61;
        if (v42 < 64)
        {
          sub_25A9984B8();
        }
      }

      v11 = v62;
    }
  }

LABEL_58:
  if (sub_25A9984C8() <= 64)
  {
    goto LABEL_63;
  }

  while (1)
  {
    v62 = v11;
    v52 = v4;
    *&v63 = 0x7FFFFFFFFFFFFFFFLL;
    v53 = sub_25A9984D8();
    v54 = sub_25A9984C8();
    if ((v53 & 1) == 0)
    {
      break;
    }

    if (v54 < 65)
    {
      goto LABEL_67;
    }

LABEL_61:
    MEMORY[0x28223BE20](v54);
    v13 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25A895280();
    sub_25A9984A8();
    v55 = *(*(v9 + 32) + 8);
    v56 = sub_25A997D88();
    (*(v12 + 8))(v13, v8);
    v4 = v52;
    v11 = v62;
    if (v56)
    {
      __break(1u);
LABEL_63:
      if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_68;
  }

  if (v54 >= 64)
  {
    goto LABEL_61;
  }

LABEL_67:
  sub_25A9984B8();
LABEL_68:
  v57 = sub_25A9984B8();
  (*(v12 + 8))(v14, v8);
  result = swift_beginAccess();
  if ((v57 & 0x8000000000000000) != 0)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v58 = *(v5 + 16);
  if (v57 < *(v58 + 16))
  {
    sub_25A87500C(v58 + 32 * v57 + 32, v74);
    return __swift_destroy_boxed_opaque_existential_0Tm(&v71);
  }

LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
  return result;
}

uint64_t sub_25A9534BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  *a2 = sub_25A9533D4();
}

uint64_t sub_25A9534F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_25A951E88(v4);
}

uint64_t sub_25A95353C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_25A95200C();
}

void sub_25A9537FC(void *a1@<X8>)
{
  if (__OFSUB__(0, *v1))
  {
    __break(1u);
  }

  else
  {
    *a1 = -*v1;
  }
}

float sub_25A953814@<S0>(float *a1@<X8>)
{
  result = -*v1;
  *a1 = result;
  return result;
}

double sub_25A953824@<D0>(double *a1@<X8>)
{
  result = -*v1;
  *a1 = result;
  return result;
}

void sub_25A953834(_DWORD *a1@<X8>)
{
  if (__OFSUB__(0, *v1))
  {
    __break(1u);
  }

  else
  {
    *a1 = -*v1;
  }
}

uint64_t sub_25A953884()
{
  v1 = OBJC_IVAR____TtC8Morpheus22FunctionExporterSingle_url;
  v2 = sub_25A997AC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC8Morpheus22FunctionExporterSingle_f + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FunctionExporterSingle()
{
  result = qword_27FA05610;
  if (!qword_27FA05610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25A953988()
{
  result = sub_25A997AC8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25A953A30()
{
  mlx_function_exporter_free(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_25A953A90()
{
  mlx_imported_function_free(*(v0 + 16));

  return swift_deallocClassInstance();
}

void sub_25A953AF0(uint64_t a1, char a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v16[0] = mlx_array_new();
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v14 = a3;
    v15 = MEMORY[0x277D84F90];
    sub_25A93A530(0, v6, 0);
    v7 = v15;
    v8 = (a1 + 32);
    v9 = v6;
    do
    {
      v11 = *v8++;
      v10 = v11;
      if (v11 < 0xFFFFFFFF80000000)
      {
        __break(1u);
LABEL_11:
        __break(1u);
      }

      if (v10 > 0x7FFFFFFF)
      {
        goto LABEL_11;
      }

      v13 = *(v15 + 16);
      v12 = *(v15 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_25A93A530(v12 > 1, v13 + 1, 1);
      }

      *(v15 + 16) = v13 + 1;
      *(v15 + 4 * v13 + 32) = v10;
      --v9;
    }

    while (v9);
    a3 = v14;
  }

  mlx_zeros(v16, v7 + 32, v6, dword_25A9FE944[a2], *(a3 + 16));
}

void sub_25A953C68(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A953C70);
  }

  _Unwind_Resume(a1);
}

void sub_25A953C7C(uint64_t a1, char a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v16[0] = mlx_array_new();
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v14 = a3;
    v15 = MEMORY[0x277D84F90];
    sub_25A93A530(0, v6, 0);
    v7 = v15;
    v8 = (a1 + 32);
    v9 = v6;
    do
    {
      v11 = *v8++;
      v10 = v11;
      if (v11 < 0xFFFFFFFF80000000)
      {
        __break(1u);
LABEL_11:
        __break(1u);
      }

      if (v10 > 0x7FFFFFFF)
      {
        goto LABEL_11;
      }

      v13 = *(v15 + 16);
      v12 = *(v15 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_25A93A530(v12 > 1, v13 + 1, 1);
      }

      *(v15 + 16) = v13 + 1;
      *(v15 + 4 * v13 + 32) = v10;
      --v9;
    }

    while (v9);
    a3 = v14;
  }

  mlx_ones(v16, v7 + 32, v6, dword_25A9FE944[a2], *(a3 + 16));
}

void sub_25A953DF4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A953DFCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t PySuperInstance.__allocating_init(pyClass:instance:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_25A87817C(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t PySuperInstance.init(pyClass:instance:)(__int128 *a1, uint64_t a2)
{
  sub_25A87817C(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t sub_25A953EA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_25A87500C(a1, v11);
  v5 = type metadata accessor for PyFunction();
  if (!swift_dynamicCast())
  {
    return sub_25A87500C(a1, a2);
  }

  v6 = *(v2 + 56);
  v7 = type metadata accessor for PyInstanceBoundMethod();
  v8 = swift_allocObject();
  v8[6] = v5;
  v8[7] = &protocol witness table for Function;
  v8[2] = v6;
  v8[3] = v10;
  a2[3] = v7;
  *a2 = v8;
}

double sub_25A953F64@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = v4[5];
  v9 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v8);
  (*(*(v9 + 8) + 8))(&v11, a1, a2, v8);
  if (v12)
  {
    sub_25A872D74(&v11, v13);
    sub_25A953EA0(v13, a3);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  else
  {
    sub_25A872D84(&v11);
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_25A954028(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return (*(*(v6 + 8) + 16))(a1, a2, v5) & 1;
}

uint64_t PySuperInstance.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t PySuperInstance.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_25A954148(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((*v2 + 16), v5);
  return (*(*(v6 + 8) + 16))(a1, a2, v5) & 1;
}

uint64_t sub_25A9542C4()
{
  if (*(v0 + 24))
  {
    __break(1u);
  }

  else
  {
    mlx_detail_compile_erase(*(v0 + 16));

    v1 = *(v0 + 48);

    v2 = *(v0 + 56);

    v3 = *(v0 + 64);

    return swift_deallocClassInstance();
  }

  return result;
}

unint64_t sub_25A954350()
{
  v1 = v0;
  v2 = sub_25A997AC8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  SaveError = type metadata accessor for LoadSaveError();
  v8 = *(*(SaveError - 8) + 64);
  MEMORY[0x28223BE20](SaveError);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25A954694(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    v12 = v10[1];
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_25A9985F8();

    v19 = 0xD000000000000012;
    v20 = 0x800000025AA697B0;
    MEMORY[0x25F850290](v11, v12);

    return v19;
  }

  else
  {
    v14 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05628, &qword_25A9FEAE0) + 48));
    v15 = *v14;
    v16 = v14[1];
    (*(v3 + 32))(v6, v10, v2);
    v19 = v15;
    v20 = v16;
    MEMORY[0x25F850290](32, 0xE100000000000000);
    sub_25A9546F8(&qword_27FA05630, MEMORY[0x277CC9260]);
    v17 = sub_25A998968();
    MEMORY[0x25F850290](v17);

    v13 = v19;
    (*(v3 + 8))(v6, v2);
  }

  return v13;
}

uint64_t sub_25A9545A4()
{
  sub_25A8F1C54(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LoadSaveError()
{
  result = qword_27FA05638;
  if (!qword_27FA05638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25A954694(uint64_t a1, uint64_t a2)
{
  SaveError = type metadata accessor for LoadSaveError();
  (*(*(SaveError - 8) + 16))(a2, a1, SaveError);
  return a2;
}

uint64_t sub_25A9546F8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_25A954790()
{
  sub_25A9547F8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_25A9547F8()
{
  if (!qword_27FA05648)
  {
    sub_25A997AC8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FA05648);
    }
  }
}

void sub_25A954860(unint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1 >> 62)
  {
    v2 = sub_25A998848();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v15 = MEMORY[0x277D84F90];
    sub_25A9375C0(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
    }

    v3 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        v5 = MEMORY[0x25F8509C0](i, a1);
        swift_beginAccess();
        v6 = *(v5 + 16);
        swift_unknownObjectRelease();
        v15 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_25A9375C0((v7 > 1), v8 + 1, 1);
          v3 = v15;
        }

        *(v3 + 16) = v8 + 1;
        *(v3 + 8 * v8 + 32) = v6;
      }
    }

    else
    {
      v9 = (a1 + 32);
      v10 = v2;
      do
      {
        v11 = *v9;
        swift_beginAccess();
        v12 = *(v11 + 16);
        v15 = v3;
        v14 = *(v3 + 16);
        v13 = *(v3 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_25A9375C0((v13 > 1), v14 + 1, 1);
          v3 = v15;
        }

        *(v3 + 16) = v14 + 1;
        *(v3 + 8 * v14 + 32) = v12;
        ++v9;
        --v10;
      }

      while (v10);
    }
  }

  mlx_vector_array_new_data();
}

void sub_25A954AB4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A954ABCLL);
  }

  _Unwind_Resume(a1);
}

void sub_25A954AD8(unint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1 >> 62)
  {
    v2 = sub_25A998848();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v15 = MEMORY[0x277D84F90];
    sub_25A9375C0(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
    }

    v3 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        v5 = MEMORY[0x25F8509C0](i, a1);
        swift_beginAccess();
        v6 = *(v5 + 16);
        swift_unknownObjectRelease();
        v15 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_25A9375C0((v7 > 1), v8 + 1, 1);
          v3 = v15;
        }

        *(v3 + 16) = v8 + 1;
        *(v3 + 8 * v8 + 32) = v6;
      }
    }

    else
    {
      v9 = (a1 + 32);
      v10 = v2;
      do
      {
        v11 = *v9;
        swift_beginAccess();
        v12 = *(v11 + 16);
        v15 = v3;
        v14 = *(v3 + 16);
        v13 = *(v3 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_25A9375C0((v13 > 1), v14 + 1, 1);
          v3 = v15;
        }

        *(v3 + 16) = v14 + 1;
        *(v3 + 8 * v14 + 32) = v12;
        ++v9;
        --v10;
      }

      while (v10);
    }
  }

  mlx_vector_array_new_data();
}

void sub_25A954D2C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A954D34);
  }

  _Unwind_Resume(a1);
}

void sub_25A954D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = mlx_array_new();
  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = Array<A>.asInt32.getter(&unk_286C0DD38);
  v8 = *(a3 + 16);
  mlx_reshape(v11, v6, v7 + 32, 1uLL, v8);

  v9 = v11[0];
  v10 = mlx_array_new();
  swift_beginAccess();
  mlx_take_along_axis(&v10, v9, *(a2 + 16), 0, v8);
}

void sub_25A954E64(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A954E6CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A954E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v16[0] = mlx_array_new();
  if (!a3)
  {
    swift_beginAccess();
    if (a2 >= 0xFFFFFFFF80000000)
    {
      if (a2 <= 0x7FFFFFFF)
      {
        v10 = *(a1 + 16);
        v15 = a2;
        mlx_roll(v16, v10, &v15, 1uLL, *(a4 + 16));
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_beginAccess();
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = *(a1 + 16);
  v14 = a2;
  v9 = Array<A>.asInt32.getter(a3);
  mlx_roll_axes(v16, v8, &v14, 1uLL, v9 + 32, *(a3 + 16), *(a4 + 16));

LABEL_8:
  v11 = v16[0];
  type metadata accessor for MLXArray();
  result = swift_allocObject();
  *(result + 16) = v11;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A954FE0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A954FE8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A955000@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t *a4@<X8>)
{
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_25A9F8D90;
    *(v7 + 32) = _sSa8MorpheusE3lenSiyF_0();
  }

  result = sub_25A997E08();
  if (result)
  {
    v9 = result;
    v10 = Array<A>.asInt32.getter(v7);
    v11 = *(v7 + 16);

    if (!(v11 >> 31))
    {
      v12 = (*(a3 + 16))(a2, a3);
      v13 = mlx_array_new_data(v9, (v10 + 32), v11, dword_25A9FEB2C[v12]);

      *a4 = v13;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25A955144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_25A95524C(v13, v16, v17, v18, v19, v20, v21, v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a6);
  }

  return result;
}

uint64_t sub_25A95520C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_25A955A60(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_25A95524C(uint64_t (*a1)(char *, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a7;
  v29 = a8;
  v30 = a1;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - v18;
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
  {
    v26 = v31;
    result = sub_25A95549C(v30, a2, a3, a4, a5, a6, v28, v19);
    v17 = v19;
    if (v26)
    {
      return (*(v13 + 32))(v29, v17, a6);
    }
  }

  else
  {
    if (_swift_isClassOrObjCExistentialType())
    {
      v20 = (((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80)) + (a3 & 0xFFFFFFFFFFFFFF8));
    }

    else
    {
      v20 = (a3 + ((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80)));
    }

    if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
    {
      v23 = sub_25A998848();
    }

    else
    {
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v22 = a3 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v22 = a3;
      }

      v23 = *(v22 + 16);
    }

    v24 = v31;
    result = v30(v20, v23, v17);
    if (v24)
    {
      return (*(v13 + 32))(v29, v17, a6);
    }
  }

  return result;
}

uint64_t sub_25A95549C(uint64_t (*a1)(char *, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a8;
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25A9555F4(v15);
  v17 = (*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80);
  v18 = *(v16 + 2);

  v19 = v23;
  result = a1(&v16[v17], v18, v14);
  if (v19)
  {
    return (*(v11 + 32))(v22, v14, a6);
  }

  return result;
}

void *sub_25A9555F4(uint64_t a1)
{
  if (a1 < 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v1, MEMORY[0x277D84F90]);
  if (AssociatedObject)
  {
  }

  else
  {
    objc_sync_enter(v1);
    AssociatedObject = objc_getAssociatedObject(v1, MEMORY[0x277D84F90]);
    if (AssociatedObject)
    {
      swift_retain_n();
    }

    else
    {
      sub_25A9986B8();
      swift_getWitnessTable();
      AssociatedObject = sub_25A998A68();

      objc_setAssociatedObject(v1, MEMORY[0x277D84F90], AssociatedObject, 1);
    }

    objc_sync_exit(v1);
  }

  return AssociatedObject;
}

uint64_t sub_25A955710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = _sSa8MorpheusE3lenSiyF_0();
  if (!a2)
  {
    goto LABEL_7;
  }

  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = (a2 + 32);
    v11 = 1;
    while (1)
    {
      v12 = *v10++;
      v13 = v11 * v12;
      if ((v11 * v12) >> 64 != (v11 * v12) >> 63)
      {
        goto LABEL_10;
      }

      v11 = v13;
      if (!--v9)
      {
        if (v13 != result)
        {
          goto LABEL_9;
        }

        goto LABEL_7;
      }
    }
  }

  if (result == 1)
  {
LABEL_7:
    MEMORY[0x28223BE20](result);
    v17[2] = a3;
    v17[3] = a4;
    v17[4] = a2;
    v17[5] = a1;
    type metadata accessor for mlx_array_(0);
    sub_25A955144(sub_25A955AD0, v17, a1, a3, v14, MEMORY[0x277D84A98], MEMORY[0x277D84AC0], v15);
    v16 = v17[7];
    result = swift_allocObject();
    *(result + 16) = v16;
    return result;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_25A955844(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = *(result + 16);
  if (a2)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = (a2 + 32);
      v6 = 1;
      while (1)
      {
        v7 = *v5++;
        v8 = v6 * v7;
        if ((v6 * v7) >> 64 != (v6 * v7) >> 63)
        {
          goto LABEL_28;
        }

        v6 = v8;
        if (!--v4)
        {
          if (v8 != v3)
          {
            goto LABEL_24;
          }

          goto LABEL_7;
        }
      }
    }

    if (v3 != 1)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }
  }

LABEL_7:
  if (v3)
  {
    v9 = 0;
    while (*(result + 8 * v9 + 32) == *(result + 8 * v9 + 32))
    {
      if (v3 == ++v9)
      {
        v19 = result;
        v20 = MEMORY[0x277D84F90];
        sub_25A93A530(0, v3, 0);
        result = v19;
        v10 = v20;
        v11 = 32;
        v12 = v3;
        while (1)
        {
          v13 = *(result + v11);
          if (v13 < 0xFFFFFFFF80000000)
          {
            goto LABEL_26;
          }

          if (v13 > 0x7FFFFFFF)
          {
            goto LABEL_27;
          }

          v15 = *(v20 + 16);
          v14 = *(v20 + 24);
          if (v15 >= v14 >> 1)
          {
            sub_25A93A530(v14 > 1, v15 + 1, 1);
            result = v19;
          }

          *(v20 + 16) = v15 + 1;
          *(v20 + 4 * v15 + 32) = v13;
          v11 += 8;
          if (!--v12)
          {

            if (v2)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }
    }

    goto LABEL_25;
  }

  v10 = MEMORY[0x277D84F90];
  if (!v2)
  {
LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_25A9F8D90;
    *(v2 + 32) = v3;
  }

LABEL_19:
  v16 = Array<A>.asInt32.getter(v2);
  v17 = *(v2 + 16);

  if (!(v17 >> 31))
  {
    v18 = mlx_array_new_data(v10 + 32, (v16 + 32), v17, 7);

    type metadata accessor for MLXArray();
    result = swift_allocObject();
    *(result + 16) = v18;
    return result;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_25A955A60(uint64_t result)
{
  if (*(result + 16) >> 31)
  {
    __break(1u);
  }

  else
  {
    *v2 = *(result + 16);
    v1 = mlx_array_new_data(result + 32, v2, 1, 7);
    type metadata accessor for MLXArray();
    result = swift_allocObject();
    *(result + 16) = v1;
  }

  return result;
}

uint64_t sub_25A955AFC()
{
  v1 = v0;
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 24);
  [v2 lock];
  v3 = *(v0 + 16);
  v4 = qword_27FA043D8;
  v5 = *(v1 + 16);

  if (v4 != -1)
  {
    swift_once();
  }

  sub_25A998C58();
  v15[0] = mlx_array_new();
  v14 = mlx_array_new();
  swift_beginAccess();
  mlx_random_split(v15, &v14, *(v3 + 16), *(v13 + 16));
  v6 = v15[0];
  type metadata accessor for MLXArray();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = v14;

  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = *(v1 + 16);
  *(v1 + 16) = v7;

  [v2 unlock];
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_25A955C74(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A955C7CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A955CA4()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_25A955D2C()
{
  v2[1] = *MEMORY[0x277D85DE8];
  _s11RandomStateCMa();
  v0 = swift_allocObject();
  *(v0 + 24) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v1 = mach_approximate_time();
  v2[0] = mlx_array_new();
  mlx_random_key(v2, v1);
}

void sub_25A955DF0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A955DF8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A955E14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05658, qword_25A9FEBE0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_25A998C48();
  qword_27FA05650 = result;
  return result;
}

uint64_t sub_25A955E70(uint64_t a1)
{
  sub_25A955F94(a1, v5);
  v1 = v6;
  if (v6)
  {
    v2 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v3 = (*(v2 + 8))(v1, v2);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  else
  {
    sub_25A956004(v5);
    if (qword_27FA043D0 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    if (v5[0])
    {
      v3 = sub_25A955AFC();
    }

    else
    {
      if (qword_27FA043C8 != -1)
      {
        swift_once();
      }

      return sub_25A955AFC();
    }
  }

  return v3;
}

uint64_t sub_25A955F94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04930, &qword_25A9F9580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25A956004(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04930, &qword_25A9F9580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25A9560A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_25A872F24(a1, v8);
  v5 = sub_25A998B98();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v7 = sub_25A956420(v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v7;
  return result;
}

uint64_t sub_25A95611C(unsigned __int8 a1)
{
  v2 = *v1;
  if (a1 == 13)
  {
    v3 = 0;
  }

  else
  {
    v3 = a1;
  }

  return sub_25A8BA9DC(*v1, v3);
}

uint64_t sub_25A95613C(unsigned __int8 a1)
{
  v2 = *v1;
  if (a1)
  {
    v3 = a1 == 13;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 7;
  }

  else
  {
    v4 = a1;
  }

  return sub_25A8BFCB4(*v1, v4);
}

uint64_t sub_25A956160(unsigned __int8 a1)
{
  if (a1)
  {
    v2 = a1 == 13;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v3 = 5;
  }

  else
  {
    v3 = a1;
  }

  return sub_25A8C58A0(*v1, v3);
}

uint64_t sub_25A956180(unsigned __int8 a1)
{
  if (a1)
  {
    v2 = a1 == 13;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v3 = 6;
  }

  else
  {
    v3 = a1;
  }

  return sub_25A8C8084(*v1, v3);
}

uint64_t sub_25A9561A0(unsigned __int8 a1)
{
  v2 = *v1;
  if (a1)
  {
    v3 = a1 == 13;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 7;
  }

  else
  {
    v4 = a1;
  }

  return sub_25A8CA9E4(*v1, v4);
}

uint64_t sub_25A9561BC(unsigned __int8 a1)
{
  v2 = *v1;
  if (a1)
  {
    v3 = a1 == 13;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 8;
  }

  else
  {
    v4 = a1;
  }

  return sub_25A8CD4DC(*v1, v4);
}

uint64_t sub_25A9561D8(char a1)
{
  if ((a1 & 0xFE) != 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = 1;
  }

  if (a1 == 13)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  return sub_25A8D0220(*v1, v3);
}

uint64_t sub_25A9561F4(unsigned __int8 a1)
{
  if (a1)
  {
    v2 = a1 == 13;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = a1;
  }

  return sub_25A8D2B74(*v1, v3);
}

uint64_t sub_25A956214(unsigned __int8 a1)
{
  v2 = *v1;
  if (a1)
  {
    v3 = a1 == 13;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v4 = a1;
  }

  return sub_25A8D5648(*v1, v4);
}

uint64_t sub_25A956238(unsigned __int8 a1)
{
  v2 = *v1;
  if (a1)
  {
    v3 = a1 == 13;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 4;
  }

  else
  {
    v4 = a1;
  }

  return sub_25A8D829C(*v1, v4);
}

uint64_t sub_25A956254(unsigned __int8 a1)
{
  v2 = *v1;
  if (a1)
  {
    v3 = a1 == 13;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 4;
  }

  else
  {
    v4 = a1;
  }

  return sub_25A8C29E0(*v1, v4);
}

uint64_t sub_25A956278(unsigned __int8 a1, __n128 a2)
{
  if (a1 - 9 >= 4)
  {
    a1 = 9;
  }

  a2.n128_u16[0] = *v2;
  return sub_25A8DB15C(a1, a2);
}

uint64_t sub_25A9562A4(uint64_t a1, __n128 a2)
{
  if (a1 - 9 >= 4)
  {
    a1 = 10;
  }

  a2.n128_u32[0] = *v2;
  return sub_25A8BF14C(a1, a2);
}

uint64_t sub_25A9562D0(unsigned __int8 a1)
{
  if (a1 - 9 >= 4)
  {
    a1 = 10;
  }

  return sub_25A8BE5C4(a1, *v1);
}

uint64_t *sub_25A9562F4(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = a1;
  type metadata accessor for MLXArray();

  sub_25A955710(v8, 0, a3, a4);

  if (v7 == 13)
  {
    v6 = (*(a4 + 16))(a3, a4);
  }

  if (qword_27FA043D8 != -1)
  {
    swift_once();
  }

  sub_25A998C58();
  v9 = sub_25A961880(v6, v11);

  return v9;
}

uint64_t sub_25A956420(unsigned int a1)
{
  if (a1 < 0xD)
  {
    return byte_25A9FEF30[a1];
  }

  sub_25A9985F8();
  MEMORY[0x25F850290](0xD000000000000013, 0x800000025AA68D80);
  type metadata accessor for mlx_dtype_(0);
  sub_25A9987C8();
  result = sub_25A998818();
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for DType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25A956644()
{
  result = qword_27FA05660;
  if (!qword_27FA05660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA05668, qword_25A9FEE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05660);
  }

  return result;
}

unint64_t sub_25A9566AC()
{
  result = qword_27FA05670;
  if (!qword_27FA05670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05670);
  }

  return result;
}

uint64_t sub_25A956700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_25A9989E8();
  }
}

uint64_t sub_25A956720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 0;
  }

  else
  {
    return (sub_25A9989E8() ^ 1) & 1;
  }
}

uint64_t sub_25A956760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 0;
  }

  else
  {
    return sub_25A9989E8();
  }
}

uint64_t sub_25A956780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == a1 && a4 == a2)
  {
    return 1;
  }

  else
  {
    return (sub_25A9989E8() ^ 1) & 1;
  }
}

uint64_t sub_25A9567DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == a1 && a4 == a2)
  {
    return 0;
  }

  else
  {
    return sub_25A9989E8();
  }
}

uint64_t sub_25A956814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return (sub_25A9989E8() ^ 1) & 1;
  }
}

uint64_t sub_25A956858@<X0>(uint64_t a1@<X0>, uint64_t (*a2)()@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 16))
  {
    v6 = sub_25A8F3600(1718379891, 0xE400000000000000);
    if (v7)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v6, v13);
      if (swift_dynamicCast())
      {
        if (*(a1 + 16))
        {
          v8 = sub_25A8F3600(0x726568746FLL, 0xE500000000000000);
          if (v9)
          {
            sub_25A87500C(*(a1 + 56) + 32 * v8, v13);
            if (swift_dynamicCast())
            {
              v10 = a2();

              *(a3 + 24) = MEMORY[0x277D839B0];
              *a3 = v10 & 1;
              return result;
            }
          }
        }
      }
    }
  }

  sub_25A874F54();
  swift_allocError();
  *v12 = -95;
  return swift_willThrow();
}

uint64_t sub_25A9569D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(1718379891, 0xE400000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v15);
      if (swift_dynamicCast())
      {
        if (*(a1 + 16))
        {
          v6 = sub_25A8F3600(0x726568746FLL, 0xE500000000000000);
          if (v7)
          {
            sub_25A87500C(*(a1 + 56) + 32 * v6, &v15);
            v8 = MEMORY[0x277D837D0];
            if (swift_dynamicCast())
            {
              v15 = v13;
              v16 = v14;

              MEMORY[0x25F850290]();

              v10 = v15;
              v11 = v16;
              a2[3] = v8;
              *a2 = v10;
              a2[1] = v11;
              return result;
            }
          }
        }
      }
    }
  }

  sub_25A874F54();
  swift_allocError();
  *v12 = -95;
  return swift_willThrow();
}

uint64_t sub_25A956B4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v4, v9), (swift_dynamicCast() & 1) != 0))
  {
    v6 = _sSS8MorpheusE3lenSiyF_0();

    a2[3] = MEMORY[0x277D83B88];
    *a2 = v6;
  }

  else
  {
    sub_25A874F54();
    swift_allocError();
    *v8 = -95;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25A956C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(1718379891, 0xE400000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, v13);
      if (swift_dynamicCast())
      {
        if (*(a1 + 16))
        {
          v6 = sub_25A8F3600(0x726568746FLL, 0xE500000000000000);
          if (v7)
          {
            sub_25A87500C(*(a1 + 56) + 32 * v6, v13);
            if (swift_dynamicCast())
            {
              v13[0] = v11;
              v13[1] = v12;
              sub_25A8F84C4();
              v8 = sub_25A998498();

              *(a2 + 24) = MEMORY[0x277D839B0];
              *a2 = v8 & 1;
              return result;
            }
          }
        }
      }
    }
  }

  sub_25A874F54();
  swift_allocError();
  *v10 = -95;
  return swift_willThrow();
}

uint64_t sub_25A956DBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  v4 = sub_25A8F3600(1718379891, 0xE400000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, v61);
  v6 = MEMORY[0x277D837D0];
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  if (!*(a1 + 16) || (v7 = v58, v8 = sub_25A8F3600(7955819, 0xE300000000000000), (v9 & 1) == 0))
  {

    v58 = 0u;
    v59 = 0u;
    v60 = 0;
LABEL_17:
    sub_25A878194(&v58, &qword_27FA047C8, &qword_25A9F8E88);
LABEL_18:
    sub_25A874F54();
    swift_allocError();
    *v25 = -95;
    return swift_willThrow();
  }

  sub_25A87500C(*(a1 + 56) + 32 * v8, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    goto LABEL_16;
  }

  if (!*(&v59 + 1))
  {
LABEL_16:

    goto LABEL_17;
  }

  v56 = v7;
  sub_25A87817C(&v58, v61);
  v10 = v62;
  v11 = v63;
  v12 = __swift_project_boxed_opaque_existential_1(v61, v62);
  v13 = v52;
  v14 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v54 = v15;
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v17;
  (*(v17 + 16))(v16);
  if ((sub_25A9984D8() & 1) != 0 && sub_25A9984C8() > 64)
  {
    *&v58 = 0x8000000000000000;
    if (sub_25A9984D8())
    {
      v18 = sub_25A9984C8();
      if (v18 >= 64)
      {
        v53 = v52;
        MEMORY[0x28223BE20](v18);
        v55 = v52;
        v20 = v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_25A895280();
        sub_25A9984A8();
        v21 = *(*(v11 + 32) + 8);
        v22 = sub_25A997D88();
        v23 = v20;
        v13 = v55;
        result = (*(v64 + 8))(v23, v10);
        if (v22)
        {
          goto LABEL_45;
        }

        goto LABEL_27;
      }

      goto LABEL_24;
    }

    v55 = v52;
    v26 = sub_25A9984D8();
    v27 = sub_25A9984C8();
    if (v26)
    {
      if (v27 <= 64)
      {
        v53 = *(*(v11 + 24) + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v52[3] = v52;
        v33 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        v52[1] = v52 - v34;
        swift_getAssociatedConformanceWitness();
        v35 = sub_25A998A78();
        v52[2] = v52;
        MEMORY[0x28223BE20](v35);
        v37 = v52 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_25A9989C8();
        v38 = *(*(v11 + 32) + 8);
        v39 = sub_25A997D88();
        result = (*(v64 + 8))(v37, v10);
        if (v39)
        {
          goto LABEL_45;
        }

        sub_25A9984B8();
        v13 = v55;
      }

      else
      {
        v53 = v52;
        MEMORY[0x28223BE20](v27);
        v29 = v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_25A895280();
        sub_25A9984A8();
        v30 = *(*(v11 + 32) + 8);
        v31 = sub_25A997D88();
        result = (*(v64 + 8))(v29, v10);
        v13 = v55;
        if (v31)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_27;
    }

    v13 = v55;
    if (v27 < 64)
    {
LABEL_24:
      sub_25A9984B8();
    }
  }

LABEL_27:
  if (sub_25A9984C8() <= 64)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v55 = v13;
    *&v58 = 0x7FFFFFFFFFFFFFFFLL;
    v40 = sub_25A9984D8();
    v41 = sub_25A9984C8();
    if ((v40 & 1) == 0)
    {
      break;
    }

    if (v41 < 65)
    {
      goto LABEL_36;
    }

LABEL_30:
    v53 = v52;
    MEMORY[0x28223BE20](v41);
    v43 = v52 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25A895280();
    sub_25A9984A8();
    v44 = *(*(v11 + 32) + 8);
    v45 = sub_25A997D88();
    (*(v64 + 8))(v43, v10);
    v13 = v55;
    if (v45)
    {
      __break(1u);
LABEL_32:
      if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_37;
  }

  if (v41 >= 64)
  {
    goto LABEL_30;
  }

LABEL_36:
  sub_25A9984B8();
LABEL_37:
  v46 = sub_25A9984B8();
  (*(v64 + 8))(v16, v10);
  result = _sSS8MorpheusE3lenSiyF_0();
  if (v46 < 0)
  {
    v47 = __OFADD__(result, v46);
    v46 += result;
    if (!v47)
    {
      if ((v46 & 0x8000000000000000) == 0)
      {
        goto LABEL_40;
      }

LABEL_42:

      sub_25A874F54();
      swift_allocError();
      *v51 = 124;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0Tm(v61);
    }

    __break(1u);
LABEL_45:
    __break(1u);
  }

  else
  {
LABEL_40:
    if (v46 >= result)
    {
      goto LABEL_42;
    }

    sub_25A997F58();
    v48 = sub_25A998028();
    v50 = v49;

    a2[3] = v6;
    *a2 = v48;
    a2[1] = v50;
    return __swift_destroy_boxed_opaque_existential_0Tm(v61);
  }

  return result;
}

uint64_t sub_25A957598@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v4, v11), v6 = MEMORY[0x277D837D0], result = swift_dynamicCast(), (result & 1) != 0))
  {
    a2[3] = v6;
    *a2 = v9;
    a2[1] = v10;
  }

  else
  {
    sub_25A874F54();
    swift_allocError();
    *v8 = -95;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25A95766C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v4, &v11), v6 = MEMORY[0x277D837D0], (swift_dynamicCast() & 1) != 0))
  {
    v11 = 34;
    v12 = 0xE100000000000000;
    MEMORY[0x25F850290]();

    result = MEMORY[0x25F850290](34, 0xE100000000000000);
    v8 = v11;
    v9 = v12;
    a2[3] = v6;
    *a2 = v8;
    a2[1] = v9;
  }

  else
  {
    sub_25A874F54();
    swift_allocError();
    *v10 = -95;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25A95777C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + 16);
  if ((a2 & 1) == 0)
  {
    if (!v5)
    {
      goto LABEL_17;
    }

    v11 = sub_25A8F3600(1718379891, 0xE400000000000000);
    if ((v12 & 1) == 0)
    {
      goto LABEL_17;
    }

    v8 = (a1 + 56);
    sub_25A87500C(*(a1 + 56) + 32 * v11, &v18);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_19;
    }

    if (*(a1 + 16))
    {
      v9 = sub_25A8F3600(0x726568746FLL, 0xE500000000000000);
      if (v13)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_16;
  }

  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = sub_25A8F3600(0x726568746FLL, 0xE500000000000000);
  if ((v7 & 1) == 0)
  {
    goto LABEL_17;
  }

  v8 = (a1 + 56);
  sub_25A87500C(*(a1 + 56) + 32 * v6, &v18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  if (!*(a1 + 16))
  {
LABEL_16:

LABEL_17:
    v18 = 0u;
    v19 = 0u;
    goto LABEL_18;
  }

  v9 = sub_25A8F3600(1718379891, 0xE400000000000000);
  if ((v10 & 1) == 0)
  {
    v18 = 0u;
    v19 = 0u;

LABEL_18:
    sub_25A878194(&v18, &qword_27FA04458, &unk_25A9F7FB0);
    goto LABEL_19;
  }

LABEL_13:
  sub_25A87500C(*v8 + 32 * v9, &v18);
  if ((swift_dynamicCast() & 1) != 0 && (v17 & 0x8000000000000000) == 0)
  {
    result = sub_25A998008();
    a3[3] = MEMORY[0x277D837D0];
    *a3 = result;
    a3[1] = v15;
    return result;
  }

LABEL_19:
  sub_25A874F54();
  swift_allocError();
  *v16 = -95;
  return swift_willThrow();
}

uint64_t sub_25A957AA0(uint64_t a1, void (*a2)(void))
{
  sub_25A936F00(a1);
  a2();
}

uint64_t sub_25A957AF8(char *a1, uint64_t a2, uint64_t a3)
{
  v16 = *a1;
  v5 = PySpecialFunction.rawValue.getter();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  v9 = MEMORY[0x277D84F90];
  v10 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  type metadata accessor for Function();
  v11 = swift_allocObject();
  *(v11 + 32) = v9;
  *(v11 + 40) = v9;
  *(v11 + 48) = v9;
  *(v11 + 56) = v9;
  *(v11 + 64) = v9;
  *(v11 + 72) = 0u;
  *(v11 + 88) = 0u;
  *(v11 + 104) = sub_25A92BDB4(v9);
  *(v11 + 16) = v5;
  *(v11 + 24) = v7;
  v12 = *(v11 + 80);
  v17[2] = *(v11 + 64);
  v17[3] = v12;
  v18 = *(v11 + 96);
  v13 = *(v11 + 48);
  v17[0] = *(v11 + 32);
  v17[1] = v13;
  *(v11 + 32) = &unk_286C0A618;
  *(v11 + 40) = v9;
  *(v11 + 48) = v9;
  *(v11 + 56) = v9;
  *(v11 + 64) = v9;
  *(v11 + 72) = 0u;
  *(v11 + 88) = 0u;
  sub_25A892B80(v17);
  swift_beginAccess();
  *(v11 + 104) = v10;

  v14 = swift_allocObject();
  *(v14 + 16) = sub_25A958234;
  *(v14 + 24) = v8;
  *(v11 + 112) = sub_25A8F1D14;
  *(v11 + 120) = v14;
  return v11;
}

uint64_t sub_25A957C74(char a1)
{
  if (a1)
  {
    v2 = 0x5F5F6C756D725F5FLL;
  }

  else
  {
    v2 = 0x5F5F6C756D5F5FLL;
  }

  if (a1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = MEMORY[0x277D84F90];
  v6 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  type metadata accessor for Function();
  v7 = swift_allocObject();
  *(v7 + 32) = v5;
  *(v7 + 40) = v5;
  *(v7 + 48) = v5;
  *(v7 + 56) = v5;
  *(v7 + 64) = v5;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = sub_25A92BDB4(v5);
  *(v7 + 16) = v2;
  *(v7 + 24) = v3;
  v8 = *(v7 + 80);
  v12[2] = *(v7 + 64);
  v12[3] = v8;
  v13 = *(v7 + 96);
  v9 = *(v7 + 48);
  v12[0] = *(v7 + 32);
  v12[1] = v9;
  *(v7 + 32) = &unk_286C0A7A8;
  *(v7 + 40) = v5;
  *(v7 + 48) = v5;
  *(v7 + 56) = v5;
  *(v7 + 64) = v5;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  sub_25A892B80(v12);
  swift_beginAccess();
  *(v7 + 104) = v6;

  v10 = swift_allocObject();
  *(v10 + 16) = sub_25A9581E0;
  *(v10 + 24) = v4;
  *(v7 + 112) = sub_25A8F1830;
  *(v7 + 120) = v10;
  return v7;
}

unint64_t sub_25A957E00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04798, &qword_25A9F8E60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25A9FEF40;
  *(inited + 32) = 0x5F5F71655F5FLL;
  *(inited + 40) = 0xE600000000000000;
  v3 = 16;
  *(inited + 48) = sub_25A957AF8(&v3, sub_25A956700, 0);
  *(inited + 56) = 0x5F5F656E5F5FLL;
  *(inited + 64) = 0xE600000000000000;
  v3 = 17;
  *(inited + 72) = sub_25A957AF8(&v3, sub_25A956720, 0);
  *(inited + 80) = 0x5F5F746C5F5FLL;
  *(inited + 88) = 0xE600000000000000;
  v3 = 18;
  *(inited + 96) = sub_25A957AF8(&v3, sub_25A956760, 0);
  *(inited + 104) = 0x5F5F656C5F5FLL;
  *(inited + 112) = 0xE600000000000000;
  v3 = 19;
  *(inited + 120) = sub_25A957AF8(&v3, sub_25A956780, 0);
  *(inited + 128) = 0x5F5F74675F5FLL;
  *(inited + 136) = 0xE600000000000000;
  v3 = 20;
  *(inited + 144) = sub_25A957AF8(&v3, sub_25A9567DC, 0);
  *(inited + 152) = 0x5F5F65675F5FLL;
  *(inited + 160) = 0xE600000000000000;
  v3 = 21;
  *(inited + 168) = sub_25A957AF8(&v3, sub_25A956814, 0);
  *(inited + 176) = 0x5F5F6464615F5FLL;
  *(inited + 184) = 0xE700000000000000;
  *(inited + 192) = sub_25A907E7C(0x5F5F6464615F5FLL, 0xE700000000000000, &unk_286C0A658, sub_25A957998);
  *(inited + 200) = 0x5F5F6E656C5F5FLL;
  *(inited + 208) = 0xE700000000000000;
  *(inited + 216) = sub_25A907E7C(0x5F5F6E656C5F5FLL, 0xE700000000000000, &unk_286C0A698, sub_25A9579C4);
  strcpy((inited + 224), "__contains__");
  *(inited + 237) = 0;
  *(inited + 238) = -5120;
  *(inited + 240) = sub_25A907E7C(0x6961746E6F635F5FLL, 0xEC0000005F5F736ELL, &unk_286C0A6C8, sub_25A9579F0);
  *(inited + 248) = 0x6574697465675F5FLL;
  *(inited + 256) = 0xEB000000005F5F6DLL;
  *(inited + 264) = sub_25A907E7C(0x6574697465675F5FLL, 0xEB000000005F5F6DLL, &unk_286C0A708, sub_25A957A1C);
  *(inited + 272) = 0x5F5F7274735F5FLL;
  *(inited + 280) = 0xE700000000000000;
  *(inited + 288) = sub_25A907E7C(0x5F5F7274735F5FLL, 0xE700000000000000, &unk_286C0A748, sub_25A957A48);
  *(inited + 296) = 0x5F5F727065725F5FLL;
  *(inited + 304) = 0xE800000000000000;
  *(inited + 312) = sub_25A907E7C(0x5F5F727065725F5FLL, 0xE800000000000000, &unk_286C0A778, sub_25A957A74);
  *(inited + 320) = 0x5F5F6C756D5F5FLL;
  *(inited + 328) = 0xE700000000000000;
  *(inited + 336) = sub_25A957C74(0);
  *(inited + 344) = 0x5F5F6C756D725F5FLL;
  *(inited + 352) = 0xE800000000000000;
  *(inited + 360) = sub_25A957C74(1);
  v1 = sub_25A98E67C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047A0, &qword_25A9F8E68);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_25A9581FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t PyClassMethod.__allocating_init(function:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t PyClassMethod.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PyClassMethod.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_25A9583C8()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = sub_25A997E98();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v8[0] = mlx_string_new();
  mlx_stream_tostring(v8, *(v0 + 16));
  if (!mlx_string_data(v8[0]))
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  sub_25A997E78();
  v3 = sub_25A997E68();
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v3;
  mlx_string_free(v8[0]);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_25A9584B8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A9584C0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A9584DC()
{
  v8[1] = *MEMORY[0x277D85DE8];
  type metadata accessor for Stream();
  v0 = swift_allocObject();
  if (qword_27FA043F0 != -1)
  {
    swift_once();
  }

  v1 = qword_27FA0FD38;
  [qword_27FA0FD38 lock];
  if (qword_27FA043F8 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA0FD40;

  [v1 unlock];
  v8[0] = mlx_stream_new();
  mlx_get_default_stream(v8, *(v2 + 16));

  *(v0 + 16) = v8[0];
  v8[0] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05678, &qword_25A9FF010);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_25A998C48();
  qword_27FA0FD20 = result;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A958640(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A958648);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A958664()
{
  if (qword_27FA043E0 != -1)
  {
    swift_once();
  }

  v1 = qword_27FA0FD28;
  [qword_27FA0FD28 lock];
  mlx_stream_free(*(v0 + 16));
  [v1 unlock];

  return swift_deallocClassInstance();
}

void *PyException.__allocating_init(pyClass:args:)(uint64_t *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = sub_25A958AEC(v7, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

void *PyException.init(pyClass:args:)(uint64_t *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_25A9589A0(v10, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v12;
}

uint64_t *PyException.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return v0;
}

uint64_t PyException.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return swift_deallocClassInstance();
}

void *sub_25A9589A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  (*(v9 + 32))(&v18 - v14);
  a3[8] = a2;
  (*(v9 + 16))(v13, v15, a4);
  v16 = sub_25A96D688(v13, a3, a4, a5);
  (*(v9 + 8))(v15, a4);
  return v16;
}

void *sub_25A958AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PyException();
  v13 = swift_allocObject();
  (*(v9 + 16))(v12, a1, a4);
  return sub_25A9589A0(v12, a2, v13, a4, a5);
}

uint64_t sub_25A958C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v27 = MEMORY[0x277D84F90];
    sub_25A937610(0, v4, 0);
    v5 = v27;
    v6 = a2 + 32;
    do
    {
      sub_25A872F24(v6, v24);
      v7 = v25;
      v8 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      v9 = (*(v8 + 8))(v7, v8);
      v11 = v10;
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      v27 = v5;
      v15 = *(v5 + 16);
      v14 = *(v5 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_25A937610((v14 > 1), v15 + 1, 1);
        v5 = v27;
      }

      *(v5 + 16) = v15 + 1;
      v16 = v5 + 24 * v15;
      *(v16 + 32) = v9;
      *(v16 + 40) = v11;
      *(v16 + 52) = BYTE4(v13);
      *(v16 + 48) = v13;
      v6 += 40;
      --v4;
    }

    while (v4);

    v17 = a3;
    v18 = a1;
  }

  else
  {

    v18 = a1;
    v17 = a3;
    v5 = MEMORY[0x277D84F90];
  }

  return sub_25A9596C0(v18, v5, v17);
}

unint64_t sub_25A958DC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *(a1 + 16);
  if (v5)
  {
    v28 = MEMORY[0x277D84F90];
    sub_25A937610(0, v5, 0);
    v7 = v28;
    v8 = a1 + 32;
    do
    {
      sub_25A872F24(v8, v25);
      v9 = v26;
      v10 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      v11 = (*(v10 + 8))(v9, v10);
      v13 = v12;
      v15 = v14;
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      v28 = v7;
      v17 = *(v7 + 16);
      v16 = *(v7 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        sub_25A937610((v16 > 1), v17 + 1, 1);
        v7 = v28;
      }

      *(v7 + 16) = v18;
      v19 = v7 + 24 * v17;
      *(v19 + 32) = v11;
      *(v19 + 40) = v13;
      *(v19 + 52) = BYTE4(v15);
      *(v19 + 48) = v15;
      v8 += 40;
      --v5;
    }

    while (v5);
    v4 = a2;
    v3 = v2;
    if (v18)
    {
      goto LABEL_7;
    }

LABEL_10:

    return v3;
  }

  v7 = MEMORY[0x277D84F90];
  v18 = *(MEMORY[0x277D84F90] + 16);
  if (!v18)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (v18 == 1)
  {
    v20 = *(v7 + 32);
    v21 = *(v7 + 40);
    v22 = *(v7 + 48) | (*(v7 + 52) << 32);
    sub_25A961328(v20, v21, v22);

    v3 = sub_25A959B04(v3, v20, v21, v22, v4);
    sub_25A960974(v20, v21, v22);
  }

  else
  {
    v3 = sub_25A959F3C(v3, v7, v4);
  }

  return v3;
}

uint64_t sub_25A958FA0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
LABEL_15:
    LODWORD(v5) = a4;
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (a4 <= SHIDWORD(a4))
    {
      v4 = HIDWORD(a4);
    }

    else
    {
      v4 = a4;
    }

    if (a4 != HIDWORD(a4))
    {
      v5 = 0;
      v6 = (v4 - a4);
      while (SHIDWORD(a4) >= a4)
      {
        if (v6 == v5)
        {
          goto LABEL_19;
        }

        *(a2 + 4 * v5) = a4 + v5;
        if (a3 - 1 == v5)
        {
          LODWORD(v5) = a4 + v5 + 1;
          goto LABEL_16;
        }

        if (!(a4 - HIDWORD(a4) + ++v5))
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_13:
    v5 = HIDWORD(a4);
    a3 = (HIDWORD(a4) - a4);
LABEL_16:
    *result = a4;
    *(result + 8) = v5;
    return a3;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t *sub_25A959040(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall resolve(axis:ndim:)(Swift::Int axis, Swift::Int ndim)
{
  if (axis < 0)
  {
    v2 = __OFADD__(axis, ndim);
    axis += ndim;
    if (v2)
    {
      __break(1u);
    }
  }

  return axis;
}

unint64_t sub_25A9590F0()
{
  v3 = *v0 + 1;
  if (__OFADD__(*v0, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  *v0 = v3;
  if (v3 < v0[1])
  {
    v4 = v0[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04938, &unk_25A9FF210);
    inited = swift_initStackObject();
    *(inited + 32) = v3;
    v2 = (inited + 32);
    v5 = MEMORY[0x277D83B88];
    *(inited + 16) = xmmword_25A9F8D90;
    *(inited + 56) = v5;
    *(inited + 64) = &off_286C13520;
    if (qword_27FA043D8 == -1)
    {
LABEL_4:
      sub_25A998C58();
      v6 = sub_25A958DC0(inited, v8);

      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_0Tm(v2);
      return v6;
    }

LABEL_7:
    swift_once();
    goto LABEL_4;
  }

  return 0;
}

unint64_t sub_25A95920C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25A9590F0();
  *a1 = result;
  return result;
}

uint64_t sub_25A959234@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  mlx_array_ndim(v4);
  result = mlx_array_dim(v4, 0);
  *a1 = -1;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

uint64_t sub_25A9592B4()
{
  v1 = sub_25A9735B0(*v0);

  return v1;
}

uint64_t sub_25A959334(uint64_t a1)
{
  v2 = v1;
  v18 = *MEMORY[0x277D85DE8];
  v4 = *v1;
  v5 = sub_25A9616CC();
  v6 = Array<A>.asInt32.getter(v5);

  v15[0] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05680, &qword_25A9FF208);
  sub_25A96133C();
  sub_25A998278();
  if ((v17 & 1) == 0)
  {
    goto LABEL_2;
  }

  sub_25A998A48();
  swift_unknownObjectRetain_n();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);

  if (__OFSUB__(v17 >> 1, v16))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v10 != (v17 >> 1) - v16)
  {
LABEL_17:
    swift_unknownObjectRelease_n();
LABEL_2:
    sub_25A937260(v15[1], v15[2], v16, v17);
    v8 = v7;
    goto LABEL_9;
  }

  v8 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (v8)
  {
    goto LABEL_10;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_9:
  swift_unknownObjectRelease();
LABEL_10:
  v11 = sub_25A930BC0(v6, v8);

  if (v11)
  {
  }

  else
  {
    if (!v8[2])
    {

      v8 = &unk_286C0B820;
    }

    v15[0] = mlx_array_new();
    swift_beginAccess();
    mlx_reshape(v15, *(v2 + 16), (v8 + 4), v8[2], *(a1 + 16));
    v12 = v15[0];

    v2 = swift_allocObject();
    *(v2 + 16) = v12;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_25A959598(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A9595A0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A9595BC(int a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v3;
  if ((a1 & 0x80000000) == 0)
  {
    mlx_array_new_int();
  }

  swift_beginAccess();
  v7 = v3[2];
  result = mlx_array_ndim(v7);
  v9 = a2;
  if ((a2 & 0x8000000000000000) == 0)
  {
    goto LABEL_6;
  }

  v9 = a2 + result;
  if (!__OFADD__(a2, result))
  {
    if (v9 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_10;
    }

LABEL_6:
    if (v9 <= 0x7FFFFFFF)
    {
      v10 = mlx_array_dim(v7, v9);
      v11 = __OFADD__(a1, v10);
      result = (a1 + v10);
      if (!v11)
      {
        mlx_array_new_int();
      }

      goto LABEL_11;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25A9596C0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = *MEMORY[0x277D85DE8];
  if (qword_27FA043D8 != -1)
  {
    swift_once();
  }

  sub_25A998C58();
  v7 = sub_25A95AF90(v3, a2, a1, v30);

  if (!v7)
  {
    v9 = sub_25A95BAC0(v4, a2, a1, a3);
    v27 = v10;
    v11 = v9;

    if (v11 >> 62)
    {
      if (sub_25A998848())
      {
        v12 = sub_25A998848();
        if (!v12)
        {
          goto LABEL_21;
        }

        goto LABEL_7;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
LABEL_7:
        v29 = MEMORY[0x277D84F90];
        sub_25A9375C0(0, v12 & ~(v12 >> 63), 0);
        if (v12 < 0)
        {
          __break(1u);
        }

        if ((v11 & 0xC000000000000001) != 0)
        {
          for (i = 0; i != v12; ++i)
          {
            v14 = MEMORY[0x25F8509C0](i, v11);
            swift_beginAccess();
            v15 = *(v14 + 16);
            swift_unknownObjectRelease();
            v17 = *(v29 + 16);
            v16 = *(v29 + 24);
            if (v17 >= v16 >> 1)
            {
              sub_25A9375C0((v16 > 1), v17 + 1, 1);
            }

            *(v29 + 16) = v17 + 1;
            *(v29 + 8 * v17 + 32) = v15;
          }
        }

        else
        {
          v18 = (v11 + 32);
          v19 = v12;
          do
          {
            v20 = *v18;
            swift_beginAccess();
            v21 = *(v20 + 16);
            v23 = *(v29 + 16);
            v22 = *(v29 + 24);
            if (v23 >= v22 >> 1)
            {
              sub_25A9375C0((v22 > 1), v23 + 1, 1);
            }

            *(v29 + 16) = v23 + 1;
            *(v29 + 8 * v23 + 32) = v21;
            ++v18;
            --v19;
          }

          while (v19);
        }

LABEL_21:
        mlx_vector_array_new_data();
      }
    }

    swift_beginAccess();
    v24 = *(v27 + 16);
    swift_beginAccess();
    mlx_array_set((v4 + 16), v24);
    swift_endAccess();
    goto LABEL_23;
  }

  swift_beginAccess();
  v8 = *(v7 + 16);
  swift_beginAccess();
  mlx_array_set((v4 + 16), v8);
  swift_endAccess();
LABEL_23:

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A959AC0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A959AC8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A959B04(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = a2;
  v36[1] = *MEMORY[0x277D85DE8];
  v11 = a4 & 0xFFFFFFFFFFLL;
  v12 = (a4 >> 38) & 3;
  if (((a4 >> 38) & 3) <= 1)
  {
    if (!v12)
    {
      v13 = sub_25A9595BC(a2, 0);
      v36[0] = mlx_array_new();
      swift_beginAccess();
      v14 = *(a1 + 16);
      swift_beginAccess();
      mlx_take_axis(v36, v14, *(v13 + 16), 0, *(a5 + 16));
    }

    v16 = a4;
    swift_beginAccess();
    v17 = mlx_array_ndim(*(a1 + 16));
    v18 = v17;
    if (v17 < 0)
    {
      __break(1u);
      goto LABEL_45;
    }

    __len = 4 * v17;
    if (v17)
    {
      v34 = sub_25A998158();
      *(v34 + 16) = v18;
      bzero((v34 + 32), __len);
    }

    else
    {
      v34 = MEMORY[0x277D84F90];
    }

    v19 = sub_25A9616CC();
    v5 = Array<A>.asInt32.getter(v19);

    if (v18)
    {
      v6 = sub_25A998158();
      *(v6 + 16) = v18;
      memset_pattern16((v6 + 32), &unk_25A9E0B60, __len);
      v21 = *(v5 + 16);
      if (v21)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
      v21 = *(v5 + 16);
      if (v21)
      {
LABEL_16:
        LODWORD(v21) = *(v5 + 32);
        if ((v9 & 0x100000000) != 0)
        {
          v20 = 0;
        }

        else
        {
          v20 = v9;
        }

        if ((v9 & 0x100000000) != 0)
        {
          v9 = v34;
          if ((v11 & 0x100000000) == 0)
          {
            if (v16 < 0)
            {
              v20 = v21 - 1;
              if (__OFSUB__(v21, 1))
              {
LABEL_49:
                __break(1u);
                goto LABEL_50;
              }
            }

            else
            {
              v20 = 0;
            }
          }

LABEL_27:
          if (*(v9 + 16))
          {
            *(v9 + 32) = v20;
            v9 += 32;
            if ((a3 & 0x100000000) != 0)
            {
              LODWORD(v18) = v21;
            }

            else
            {
              LODWORD(v18) = a3;
            }

            if ((a3 & 0x100000000) != 0 && (v11 & 0x100000000) == 0)
            {
              LODWORD(v18) = v21;
              if (v16 < 0)
              {
                v22 = __OFSUB__(0, v21);
                v23 = -v21;
                if (v22)
                {
LABEL_50:
                  __break(1u);
LABEL_51:
                  __break(1u);
                }

                LODWORD(v18) = v23 - 1;
                if (__OFSUB__(v23, 1))
                {
                  goto LABEL_51;
                }
              }
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              if (*(v5 + 16))
              {
                goto LABEL_38;
              }

              goto LABEL_47;
            }

LABEL_46:
            v5 = sub_25A8F7988(v5);
            if (*(v5 + 16))
            {
LABEL_38:
              *(v5 + 32) = v18;
              if (*(v6 + 16))
              {
                if ((v11 & 0x100000000) != 0)
                {
                  v24 = 1;
                }

                else
                {
                  v24 = v16;
                }

                *(v6 + 32) = v24;
                v35[0] = mlx_array_new();
                v25 = *(a1 + 16);
                v26 = *(v34 + 16);
                v27 = *(v5 + 16);
                v28 = *(v6 + 16);
                v29 = *(a5 + 16);

                mlx_slice(v35, v25, v9, v26, v5 + 32, v27, v6 + 32, v28, v29);

                v30 = v35[0];

                type metadata accessor for MLXArray();
                a1 = swift_allocObject();
                *(a1 + 16) = v30;
                goto LABEL_43;
              }

              goto LABEL_48;
            }

LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

LABEL_25:
        v9 = v34;
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v12 == 2)
  {
    v36[0] = mlx_array_new();
    swift_beginAccess();
    v15 = *(a1 + 16);
    swift_beginAccess();
    mlx_take_axis(v36, v15, *(v9 + 16), 0, *(a5 + 16));
  }

  if (a3 | a2 || v11 != 0xC000000000)
  {
    v35[0] = mlx_array_new();
    swift_beginAccess();
    mlx_expand_dims(v35, *(a1 + 16), 0, *(a5 + 16));
  }

LABEL_43:
  v31 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_25A959EF0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A959EF8);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_25A959F3C(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v119 = *MEMORY[0x277D85DE8];
  v10 = sub_25A9616CC();
  v11 = Array<A>.asInt32.getter(v10);

  isUniquelyReferenced_nonNull_native = sub_25A95D1F0(v11, a2);
  v13 = isUniquelyReferenced_nonNull_native;
  v14 = *(isUniquelyReferenced_nonNull_native + 16);
  if (!v14)
  {
LABEL_21:
    v20 = 0;
    goto LABEL_22;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_171;
    }

    if (((*(isUniquelyReferenced_nonNull_native + 48 + 24 * v15) | (*(isUniquelyReferenced_nonNull_native + 48 + 24 * v15 + 4) << 32)) & 0x4000000000) != 0)
    {
      if (v18 == v14)
      {
        goto LABEL_21;
      }

      if (v18 >= v14)
      {
LABEL_169:
        __break(1u);
        goto LABEL_170;
      }

      v19 = (isUniquelyReferenced_nonNull_native + 72 + 24 * v15);
      while (1)
      {
        v15 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_171;
        }

        if (((*v19 | (*(v19 + 4) << 32)) & 0x4000000000) == 0)
        {
          break;
        }

        if (v15 == v14)
        {
          goto LABEL_21;
        }

        ++v18;
        v19 += 6;
        if (v15 >= v14)
        {
          goto LABEL_169;
        }
      }

      v16 |= v17;
      if ((v17 & 1) == 0)
      {
LABEL_3:
        if (v15 == v14)
        {
          goto LABEL_21;
        }

        goto LABEL_4;
      }
    }

    else
    {
      ++v15;
      if ((v17 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    if (v16)
    {
      break;
    }

    v16 = 0;
    v20 = 0;
    if (v15 == v14)
    {
      goto LABEL_22;
    }

LABEL_4:
    v17 = 1;
    if (v15 >= v14)
    {
      goto LABEL_169;
    }
  }

  v20 = 1;
LABEL_22:
  v105 = a3;
  a2 = MEMORY[0x277D84F90];
  if (v14)
  {
    v21 = 0;
    v6 = (isUniquelyReferenced_nonNull_native + 48);
    v22 = 48;
    while (((*(isUniquelyReferenced_nonNull_native + v22 + 4) << 32) & 0xC000000000) != 0x8000000000)
    {
      ++v21;
      v22 += 24;
      if (v14 == v21)
      {
        goto LABEL_26;
      }
    }

    v24 = 1;
    while (1)
    {
      v25 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_172;
      }

      if (v25 == v14)
      {
        break;
      }

      if (v25 >= v14)
      {
        goto LABEL_173;
      }

      ++v21;
      if (((LOBYTE(v6[6 * v25 + 1]) << 32) & 0xC000000000) == 0x8000000000)
      {
        v21 = v25;
        v26 = __OFADD__(v24++, 1);
        if (v26)
        {
          __break(1u);
          break;
        }
      }
    }

    v113 = a2;
    if (v24 > 0)
    {
      v108 = a1;
      v3 = v14 + 1;
      v27 = 24 * v14 + 24;
      do
      {
        if (!--v3)
        {
          goto LABEL_174;
        }

        v28 = *(isUniquelyReferenced_nonNull_native + v27) | (*(isUniquelyReferenced_nonNull_native + v27 + 4) << 32);
        v27 -= 24;
      }

      while ((v28 & 0x4000000000) != 0);
      v110.i32[0] = v20;
      v111 = isUniquelyReferenced_nonNull_native;

      v29 = 0;
      a1 = MEMORY[0x277D84F90];
      v10 = 0xC000000000;
      while (1)
      {
        if (v29 <= v3)
        {
          v30 = v3;
        }

        else
        {
          v30 = v29;
        }

        v31 = v30 + 1;
        v32 = 24 * v29;
        do
        {
          if (v3 == v29)
          {
            goto LABEL_160;
          }

          v4 = v29++;
          if (v31 == v29)
          {
            goto LABEL_175;
          }

          v33 = v111 + v32;
          v32 += 24;
          a3 = *(v33 + 32);
          v5 = *(v33 + 40);
          a2 = *(v33 + 48) | (*(v33 + 52) << 32);
        }

        while (*(v33 + 52) >> 6 >= 3uLL && a3 == 1 && v5 == 0 && a2 == 0xC000000000);
        sub_25A961328(a3, v5, a2);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v118 = a1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_25A937610(0, *(a1 + 16) + 1, 1);
          a1 = v118;
        }

        v13 = *(a1 + 16);
        v37 = *(a1 + 24);
        v38 = v13 + 1;
        if (v13 >= v37 >> 1)
        {
          *&v109 = v13 + 1;
          isUniquelyReferenced_nonNull_native = sub_25A937610((v37 > 1), v38, 1);
          a1 = v118;
          v38 = v13 + 1;
        }

        v29 = v4 + 1;
        *(a1 + 16) = v38;
        v39 = a1 + 24 * v13;
        *(v39 + 32) = a3;
        *(v39 + 40) = v5;
        *(v39 + 52) = BYTE4(a2);
        *(v39 + 48) = a2;
      }
    }
  }

  else
  {
LABEL_26:
    v113 = MEMORY[0x277D84F90];
  }

  v23 = *(a2 + 16);

  if (!v23)
  {

    v104 = 0;
    goto LABEL_65;
  }

  v104 = 0;
LABEL_29:

  v13 = a2;
LABEL_65:
  swift_beginAccess();
  v40 = mlx_array_ndim(*(a1 + 16));
  a2 = v40;
  if (v40 < 0)
  {
    __break(1u);
LABEL_238:
    isUniquelyReferenced_nonNull_native = sub_25A8F7988(a1);
    a1 = isUniquelyReferenced_nonNull_native;
    goto LABEL_72;
  }

  v111 = v13;
  v13 = 4 * v40;
  if (v40)
  {
    v41 = sub_25A998158();
    *(v41 + 16) = a2;
    bzero((v41 + 32), 4 * a2);
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  v108 = a1;
  a3 = sub_25A9616CC();
  a1 = Array<A>.asInt32.getter(a3);

  v4 = MEMORY[0x277D84F90];
  if (a2)
  {
    v4 = sub_25A998158();
    *(v4 + 16) = a2;
    memset_pattern16((v4 + 32), &unk_25A9E0B60, 4 * a2);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v107 = v41;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_238;
  }

LABEL_72:
  LODWORD(v109) = 0;
  v14 = 0;
  v10 = 0;
  v110.i64[0] = (v107 + 4);
  v106 = a1 + 32;
  v42 = v111 + 48;
  v5 = -*(v111 + 16);
  v3 = 0xC000000000;
  while (2)
  {
    v43 = (v42 + 24 * v10++);
    while (1)
    {
      if (v5 + v10 == 1)
      {
        goto LABEL_124;
      }

      if (v10 - 1 >= *(v111 + 16))
      {
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        v4 = isUniquelyReferenced_nonNull_native;
LABEL_182:
        v70 = sub_25A960974(v13, a3, v5);
        v80 = 0x4100000000;
        for (i = v110; ; i = v109)
        {
          ++v10;
          *(v4 + 16) = a2;
          v82 = v4 + 24 * a1;
          *(v82 + 32) = i;
          *(v82 + 52) = BYTE4(v80);
          *(v82 + 48) = v80;
          v113 = v4;
          v6 += 6;
          v79 = v111;
          if (v14 == v10)
          {
            break;
          }

LABEL_184:
          if (v10 >= *(v79 + 16))
          {
            goto LABEL_207;
          }

          v83 = *(v6 + 4);
          if (((v83 >> 6) & 1) == 0)
          {
            break;
          }

          v13 = *(v6 - 2);
          a3 = *(v6 - 1);
          v5 = *v6 | (*(v6 + 4) << 32);
          if (v83 >> 6 != 3 || v13 != 1 || a3 != 0 || v5 != 0xC000000000)
          {
            sub_25A961328(*(v6 - 2), *(v6 - 1), v5);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_25A967258(0, *(v4 + 16) + 1, 1, v4);
            }

            a1 = *(v4 + 16);
            v87 = *(v4 + 24);
            a2 = a1 + 1;
            if (a1 >= v87 >> 1)
            {
              isUniquelyReferenced_nonNull_native = sub_25A967258((v87 > 1), a1 + 1, 1, v4);
              goto LABEL_181;
            }

            goto LABEL_182;
          }

          v70 = swift_isUniquelyReferenced_nonNull_native();
          if ((v70 & 1) == 0)
          {
            v70 = sub_25A967258(0, *(v4 + 16) + 1, 1, v4);
            v4 = v70;
          }

          a1 = *(v4 + 16);
          v88 = *(v4 + 24);
          a2 = a1 + 1;
          if (a1 >= v88 >> 1)
          {
            v70 = sub_25A967258((v88 > 1), a1 + 1, 1, v4);
            v4 = v70;
          }

          v80 = 0xC000000000;
        }

        v89 = sub_25A96109C(0x100000000, 0x100000000, 0x4100000000uLL, v107);
        a1 = &v113;
        v70 = sub_25A932D2C(v89);
        v10 = v111;
        if (*(v111 + 16) < v14)
        {
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          v90 = v70;
LABEL_209:
          *(v90 + 2) = a1;
          v91 = &v90[v4 * v10];
          v91[2] = v110;
          v91[3].i8[4] = v13;
LABEL_210:
          v91[3].i32[0] = 0;
          v113 = v90;
          while (1)
          {
            v6 += 6;
            if (!--v5)
            {
              break;
            }

LABEL_212:
            v92 = *(v6 - 2);
            v93 = *(v6 - 1);
            v94 = *v6 | (*(v6 + 4) << 32);
            v95 = *(v6 + 4) >> 6;
            if (v95 == 1)
            {
              v90 = v113;
              sub_25A961328(v92, v93, v94);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v90 = sub_25A967258(0, *(v90 + 2) + 1, 1, v90);
              }

              v4 = *(v90 + 2);
              v100 = *(v90 + 3);
              a1 = v4 + 1;
              if (v4 >= v100 >> 1)
              {
                v70 = sub_25A967258((v100 > 1), v4 + 1, 1, v90);
                goto LABEL_208;
              }

              goto LABEL_209;
            }

            if (v95 == 3 && v92 == 1 && v93 == 0 && v94 == a3)
            {
              v90 = v113;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v90 = sub_25A967258(0, *(v90 + 2) + 1, 1, v90);
              }

              v4 = *(v90 + 2);
              v99 = *(v90 + 3);
              if (v4 >= v99 >> 1)
              {
                v90 = sub_25A967258((v99 > 1), v4 + 1, 1, v90);
              }

              *(v90 + 2) = v4 + 1;
              v91 = &v90[v4 * v10];
              v91[2] = v109;
              v91[3].i8[4] = -64;
              goto LABEL_210;
            }
          }

          v10 = v111;

          if (*(v111 + 16) < v14)
          {
            goto LABEL_255;
          }
        }

        sub_25A939C94(v101, v10 + 32, v3, (2 * v14) | 1);

        a2 = v113;
        if (!*(v113 + 16))
        {

          v13 = v108;
          goto LABEL_166;
        }

        v104 = 1;
        a1 = v108;
        goto LABEL_29;
      }

      a3 = *(v43 - 2);
      a2 = *(v43 - 1);
      v13 = *v43 | (*(v43 + 4) << 32);
      v44 = *(v43 + 4) >> 6;
      if (v44 != 3)
      {
        break;
      }

      ++v10;
      v43 += 6;
      if (a3 != 1 || a2 != 0 || v13 != 0xC000000000)
      {
        goto LABEL_254;
      }
    }

    if (v44)
    {
      if (v44 != 1)
      {
        goto LABEL_254;
      }

      v103 = v42;
      v6 = *(v108 + 16);
      mlx_array_ndim(v6);
      if (v14 > 0x7FFFFFFF)
      {
        __break(1u);
LABEL_240:
        __break(1u);
LABEL_241:
        __break(1u);
LABEL_242:
        __break(1u);
        goto LABEL_243;
      }

      isUniquelyReferenced_nonNull_native = mlx_array_dim(v6, v14);
      if ((a3 & 0x100000000) != 0)
      {
        v47 = 0;
      }

      else
      {
        v47 = a3;
      }

      if ((a3 & 0x100000000) != 0 && (v13 & 0x100000000) == 0)
      {
        if ((v13 & 0x80000000) == 0)
        {
          v47 = 0;
          goto LABEL_105;
        }

        v47 = isUniquelyReferenced_nonNull_native - 1;
        if (__OFSUB__(isUniquelyReferenced_nonNull_native, 1))
        {
          goto LABEL_251;
        }
      }

LABEL_105:
      if (v14 >= v107[2])
      {
        goto LABEL_240;
      }

      *(v110.i64[0] + 4 * v14) = v47;
      if ((a2 & 0x100000000) != 0)
      {
        v51 = isUniquelyReferenced_nonNull_native;
      }

      else
      {
        v51 = a2;
      }

      if ((a2 & 0x100000000) != 0 && (v13 & 0x100000000) == 0)
      {
        v51 = isUniquelyReferenced_nonNull_native;
        if ((v13 & 0x80000000) != 0)
        {
          v52 = -isUniquelyReferenced_nonNull_native;
          if (!__OFSUB__(0, isUniquelyReferenced_nonNull_native))
          {
            v26 = __OFSUB__(v52, 1);
            v51 = v52 - 1;
            if (!v26)
            {
              goto LABEL_114;
            }

LABEL_253:
            __break(1u);
LABEL_254:
            v114 = 0;
            v115 = 0xE000000000000000;
            sub_25A961328(a3, a2, v13);
            sub_25A9985F8();

            v114 = 0xD000000000000025;
            v115 = 0x800000025AA699A0;
            v102 = sub_25A95F294(a3, a2, v13);
            MEMORY[0x25F850290](v102);

            sub_25A998818();
            __break(1u);
LABEL_255:
            __break(1u);
          }

          goto LABEL_252;
        }
      }

LABEL_114:
      if (v14 >= *(a1 + 16))
      {
        goto LABEL_241;
      }

      *(v106 + 4 * v14) = v51;
      if (v14 >= *(v4 + 16))
      {
        goto LABEL_242;
      }

      if ((v13 & 0x100000000) != 0)
      {
        v49 = 1;
      }

      else
      {
        v49 = v13;
      }

      v50 = v4;
      v42 = v103;
      goto LABEL_120;
    }

    if ((v104 & 1) == 0)
    {
      if ((a3 & 0x80000000) != 0)
      {
        v13 = a1;
        v48 = v42;
        a2 = *(v108 + 16);
        mlx_array_ndim(a2);
        if (v14 > 0x7FFFFFFF)
        {
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
          goto LABEL_253;
        }

        isUniquelyReferenced_nonNull_native = mlx_array_dim(a2, v14);
        v26 = __OFADD__(a3, isUniquelyReferenced_nonNull_native);
        a3 = (a3 + isUniquelyReferenced_nonNull_native);
        if (v26)
        {
          goto LABEL_250;
        }

        v42 = v48;
        a1 = v13;
      }

      if (v14 >= v107[2])
      {
        goto LABEL_245;
      }

      *(v110.i64[0] + 4 * v14) = a3;
      v49 = a3 + 1;
      if (__OFADD__(a3, 1))
      {
LABEL_246:
        __break(1u);
LABEL_247:
        __break(1u);
LABEL_248:
        swift_once();
LABEL_161:
        sub_25A998C58();
        a1 = a2;
        v107 = sub_25A95D624(v108, a2, v110.i8[0], v118);
        v108 = v69;

        if (v110.i8[0])
        {
          v71 = sub_25A96109C(0x100000000, 0x100000000, 0x4100000000uLL, v107);
          sub_25A932D2C(v71);

          v10 = 24;
          v110 = vdupq_n_s64(0x100000000uLL);
          LOBYTE(v13) = 65;
          a3 = 0xC000000000;
          v109 = xmmword_25A9FF090;
          v5 = v3;
          goto LABEL_212;
        }

        v10 = 0;
        v4 = MEMORY[0x277D84F90];
        v110 = vdupq_n_s64(0x100000000uLL);
        v109 = xmmword_25A9FF090;
        v79 = v111;
        goto LABEL_184;
      }

      if (v14 >= *(a1 + 16))
      {
        goto LABEL_247;
      }

      LODWORD(v109) = 1;
      v50 = a1;
LABEL_120:
      *(v50 + 4 * v14 + 32) = v49;
    }

    v26 = __OFADD__(v14++, 1);
    if (!v26)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_124:

  v117 = mlx_array_new();
  v14 = v107;
  v53 = *(v108 + 16);
  v54 = v107[2];
  v55 = *(a1 + 16);
  v56 = *(v4 + 16);
  v57 = *(v105 + 16);

  mlx_slice(&v117, v53, v110.i64[0], v54, v106, v55, v4 + 32, v56, v57);
  v5 = v111;

  v58 = v117;
  type metadata accessor for MLXArray();
  v13 = swift_allocObject();
  *(v13 + 16) = v58;
  v59 = *(v111 + 16);
  v110.i64[0] = v58;
  v60 = mlx_array_ndim(v58);

  if ((v60 < v59) | v109 & 1)
  {
    v107 = (v13 + 16);
    v112 = MEMORY[0x277D84F90];
    a3 = *(v111 + 16);
    v108 = v13;
    if (!a3)
    {
      v67 = sub_25A9616CC();
      v3 = 0;
      v68 = *(v67 + 16);
      goto LABEL_164;
    }

    v3 = 0;
    v10 = v111 + 48;
    a1 = MEMORY[0x277D84F90];
    while (1)
    {
      v4 = *(v10 - 16);
      v6 = *(v10 - 8);
      a2 = *v10 | (*(v10 + 4) << 32);
      v61 = *(v10 + 4) >> 6;
      if (v61 == 3)
      {
        if (v4 != 1 || v6 != 0 || a2 != 0xC000000000)
        {
LABEL_145:
          sub_25A961328(*(v10 - 16), *(v10 - 8), *v10 | (*(v10 + 4) << 32));
          isUniquelyReferenced_nonNull_native = mlx_array_ndim(v110.i64[0]);
          v65 = v3;
          if (v3 < 0)
          {
            v65 = v3 + isUniquelyReferenced_nonNull_native;
            if (__OFADD__(v3, isUniquelyReferenced_nonNull_native))
            {
              goto LABEL_180;
            }

            if (v65 < 0xFFFFFFFF80000000)
            {
              goto LABEL_176;
            }
          }

          if (v65 > 0x7FFFFFFF)
          {
            goto LABEL_177;
          }

          v14 = mlx_array_dim(v110.i64[0], v65);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a1 = sub_25A967040(0, *(a1 + 16) + 1, 1, a1);
          }

          v5 = *(a1 + 16);
          v66 = *(a1 + 24);
          v13 = v5 + 1;
          if (v5 >= v66 >> 1)
          {
            a1 = sub_25A967040((v66 > 1), v5 + 1, 1, a1);
          }

          isUniquelyReferenced_nonNull_native = sub_25A960974(v4, v6, a2);
          *(a1 + 16) = v13;
          *(a1 + 8 * v5 + 32) = v14;
          v112 = a1;
          v26 = __OFADD__(v3++, 1);
          if (v26)
          {
            goto LABEL_178;
          }

          goto LABEL_128;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_25A967040(0, *(a1 + 16) + 1, 1, a1);
          a1 = isUniquelyReferenced_nonNull_native;
        }

        v13 = *(a1 + 16);
        v64 = *(a1 + 24);
        a2 = v13 + 1;
        if (v13 >= v64 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_25A967040((v64 > 1), v13 + 1, 1, a1);
          a1 = isUniquelyReferenced_nonNull_native;
        }

        *(a1 + 16) = a2;
        *(a1 + 8 * v13 + 32) = 1;
        v112 = a1;
      }

      else
      {
        if (v61 != 0 || (v109 & 1) == 0)
        {
          goto LABEL_145;
        }

        v26 = __OFADD__(v3++, 1);
        if (v26)
        {
          goto LABEL_179;
        }

        isUniquelyReferenced_nonNull_native = sub_25A961328(*(v10 - 16), *(v10 - 8), *v10 | (*(v10 + 4) << 32));
      }

LABEL_128:
      v10 += 24;
      if (!--a3)
      {
        a1 = v108;
        v67 = sub_25A9616CC();
        v68 = *(v67 + 16);
        if (v68 >= v3)
        {
          if (v3 < 0)
          {
            __break(1u);
LABEL_160:
            a2 = a1;

            if (qword_27FA043D8 == -1)
            {
              goto LABEL_161;
            }

            goto LABEL_248;
          }

LABEL_164:
          sub_25A932E24(v67, v67 + 32, v3, (2 * v68) | 1);
          a2 = v112;
          if (qword_27FA043D8 == -1)
          {
LABEL_165:
            sub_25A998C58();
            v72 = v114;
            v116 = mlx_array_new();
            swift_beginAccess();
            v73 = *v107;
            v74 = Array<A>.asInt32.getter(a2);
            v75 = *(a2 + 16);

            mlx_reshape(&v116, v73, v74 + 32, v75, *(v72 + 16));

            v76 = v116;

            v13 = swift_allocObject();
            *(v13 + 16) = v76;
            goto LABEL_166;
          }

LABEL_243:
          swift_once();
          goto LABEL_165;
        }

        __break(1u);
LABEL_245:
        __break(1u);
        goto LABEL_246;
      }
    }
  }

LABEL_166:
  v77 = *MEMORY[0x277D85DE8];
  return v13;
}

void sub_25A95AF2C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A95AF34);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A95AF90(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v84 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v79 = a1;
  v9 = mlx_array_ndim(*(a1 + 16));
  if (!v9 || (v10 = *(a2 + 16)) == 0)
  {
LABEL_6:
    result = 0;
    goto LABEL_7;
  }

  v11 = v10 + 1;
  v12 = 48;
  while (--v11)
  {
    v13 = a2 + v12;
    v12 += 24;
    if (((*(v13 + 4) << 32) & 0xC000000000) == 0x8000000000)
    {
      goto LABEL_6;
    }
  }

  v16 = sub_25A959334(a4);
  if (v9 < 0)
  {
    goto LABEL_152;
  }

  v17 = v16;
  v18 = sub_25A998158();
  *(v18 + 16) = v9;
  v77 = (v18 + 32);
  bzero((v18 + 32), 4 * v9);
  v19 = sub_25A9616CC();
  v78 = Array<A>.asInt32.getter(v19);

  v72 = sub_25A998158();
  *(v72 + 16) = v9;
  v71 = (v72 + 32);
  memset_pattern16((v72 + 32), &unk_25A9E0B60, 4 * v9);
  if (v10 == 1)
  {
    v10 = *(a2 + 52);
    if (v10 >> 6 == 1)
    {
      v20 = *(a2 + 48);
      v22 = *(a2 + 32);
      v21 = *(a2 + 40);
      v23 = *(v79 + 16);
      mlx_array_ndim(v23);
      LODWORD(v24) = mlx_array_dim(v23, 0);
      v25 = v20 & 0xFFFFFF00FFFFFFFFLL | (v10 << 32);
      if ((v22 & 0x100000000) != 0)
      {
        LODWORD(v26) = 0;
      }

      else
      {
        LODWORD(v26) = v22;
      }

      if ((v25 & 0x100000000) != 0)
      {
        goto LABEL_107;
      }

      v27 = v78;
      if ((v22 & 0x100000000) != 0)
      {
        if ((v25 & 0x80000000) == 0)
        {
          LODWORD(v26) = 0;
          goto LABEL_109;
        }

        LODWORD(v26) = v24 - 1;
        if (__OFSUB__(v24, 1))
        {
          goto LABEL_162;
        }
      }

LABEL_109:
      if (*(v18 + 16))
      {
        *v77 = v26;
        v63 = v21 & 0x100000000;
        if ((v21 & 0x100000000) != 0)
        {
          LODWORD(v21) = v24;
        }

        if ((v25 & 0x100000000) == 0)
        {
          if (v63)
          {
            LODWORD(v21) = v24;
            if ((v25 & 0x80000000) != 0)
            {
              v64 = -v24;
              if (__OFSUB__(0, v24))
              {
LABEL_163:
                __break(1u);
LABEL_164:
                __break(1u);
              }

              LODWORD(v21) = v64 - 1;
              if (__OFSUB__(v64, 1))
              {
                goto LABEL_164;
              }
            }
          }
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (*(v27 + 2))
          {
            goto LABEL_119;
          }

          goto LABEL_160;
        }
      }

      else
      {
        __break(1u);
      }

      v27 = sub_25A8F7988(v27);
      if (*(v27 + 2))
      {
LABEL_119:
        *(v27 + 8) = v21;
        if (*(v72 + 16))
        {
          if ((v25 & 0x100000000) != 0)
          {
            v65 = 1;
          }

          else
          {
            v65 = v25;
          }

          *v71 = v65;
          v81 = mlx_array_new();
          v66 = *(v79 + 16);
          swift_beginAccess();
          mlx_slice_update(&v81, v66, *(v17 + 16), v77, *(v18 + 16), (v27 + 32), *(v27 + 2), v71, *(v72 + 16), *(a4 + 16));

LABEL_124:

          v62 = v81;
          goto LABEL_125;
        }

        goto LABEL_161;
      }

LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
      goto LABEL_163;
    }
  }

  v28 = sub_25A9616CC();
  v29 = Array<A>.asInt32.getter(v28);

  v30 = sub_25A95D1F0(v29, a2);

  a2 = sub_25A960810(v31);

  if (!a2)
  {

    v34 = sub_25A9616CC();
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v81 = mlx_array_new();
    swift_beginAccess();
    v35 = *(v17 + 16);
    v36 = Array<A>.asInt32.getter(v34);
    v37 = *(v34 + 16);

    mlx_broadcast_to(&v81, v35, v36 + 32, v37, *(v83 + 16));

    goto LABEL_124;
  }

  v32 = mlx_array_ndim(*(v79 + 16));
  v21 = v32;
  if (v32 < 0)
  {
    goto LABEL_154;
  }

  if (v32)
  {
    v10 = sub_25A998158();
    *(v10 + 16) = v21;
    bzero((v10 + 32), 8 * v21);
    v33 = v10;
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  v5 = mlx_array_ndim(*(v79 + 16));
  v4 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  swift_beginAccess();
  v38 = mlx_array_ndim(*(v17 + 16));
  v21 = v38 - 1;
  if (__OFSUB__(v38, 1))
  {
LABEL_156:
    __break(1u);
    goto LABEL_157;
  }

  v75 = v18;
  v76 = v30;
  v10 = v33;
  if (v4 < a2)
  {
    goto LABEL_41;
  }

  v39 = v33 + 24;
  while (1)
  {
    v4 = v5 - 1;
    if ((v21 & 0x8000000000000000) != 0)
    {
      break;
    }

    v40 = *(v17 + 16);
    mlx_array_ndim(v40);
    if (v21 >> 31)
    {
      goto LABEL_141;
    }

    v41 = mlx_array_dim(v40, v21);
    if ((v4 & 0x8000000000000000) != 0)
    {
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    if (v4 >= *(v10 + 16))
    {
      goto LABEL_143;
    }

    *(v39 + 8 * v5) = v41;
    --v21;
LABEL_31:
    --v5;
    if (v4 <= a2)
    {
      goto LABEL_40;
    }
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_148;
  }

  if (v4 < *(v10 + 16))
  {
    *(v39 + 8 * v5) = 1;
    goto LABEL_31;
  }

  __break(1u);
LABEL_40:
  --v4;
  v30 = v76;
LABEL_41:
  v69 = a4;
  a2 = *(v30 + 16);
  LODWORD(v24) = swift_isUniquelyReferenced_nonNull_native();
  v70 = v17;
  if ((v24 & 1) == 0)
  {
LABEL_157:
    v24 = sub_25A8F7988(v78);
    v78 = v24;
  }

  if (a2)
  {
    v73 = v10 + 32;
    v74 = v78 + 32;
    v25 = v76 + 24;
    v18 = 0xC000000000;
LABEL_47:
    v26 = *(v76 + 16);
    v42 = a2 - 1;
    v17 = 1 - a2;
    v43 = (v25 + 24 * a2);
    while (v42 < v26)
    {
      a2 = *(v43 - 2);
      v5 = *(v43 - 1);
      a4 = *v43 | (*(v43 + 4) << 32);
      v44 = *(v43 + 4) >> 6;
      if (v44 != 3)
      {
        if (v44)
        {
          if (v44 != 1)
          {
            goto LABEL_153;
          }

          v46 = *(v79 + 16);
          v47 = mlx_array_ndim(v46);
          v48 = v4;
          if ((v4 & 0x8000000000000000) == 0)
          {
            goto LABEL_61;
          }

          v48 = v4 + v47;
          if (__OFADD__(v4, v47))
          {
            goto LABEL_144;
          }

          if (v48 < 0xFFFFFFFF80000000)
          {
            goto LABEL_127;
          }

LABEL_61:
          if (v48 > 0x7FFFFFFF)
          {
            goto LABEL_129;
          }

          LODWORD(v24) = mlx_array_dim(v46, v48);
          if ((a2 & 0x100000000) != 0)
          {
            v49 = 0;
          }

          else
          {
            v49 = a2;
          }

          if ((a2 & 0x100000000) == 0)
          {
            v50 = v71;
            goto LABEL_84;
          }

          v50 = v71;
          if ((a4 & 0x100000000) != 0)
          {
            goto LABEL_84;
          }

          if ((a4 & 0x80000000) == 0)
          {
            v49 = 0;
            goto LABEL_84;
          }

          v49 = v24 - 1;
          if (__OFSUB__(v24, 1))
          {
            goto LABEL_149;
          }

LABEL_84:
          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_130;
          }

          if (v4 >= *(v75 + 16))
          {
            goto LABEL_132;
          }

          v77[v4] = v49;
          if ((v5 & 0x100000000) != 0)
          {
            v54 = v24;
          }

          else
          {
            v54 = v5;
          }

          if ((v5 & 0x100000000) != 0 && (a4 & 0x100000000) == 0)
          {
            v54 = v24;
            if ((a4 & 0x80000000) != 0)
            {
              v55 = -v24;
              if (!__OFSUB__(0, v24))
              {
                v53 = __OFSUB__(v55, 1);
                v54 = v55 - 1;
                if (!v53)
                {
                  goto LABEL_94;
                }

LABEL_151:
                __break(1u);
LABEL_152:
                __break(1u);
LABEL_153:
                v21 = &v81;
                v81 = 0;
                v82 = 0xE000000000000000;
                sub_25A961328(a2, v5, a4);
                sub_25A9985F8();

                v81 = 0xD000000000000010;
                v82 = 0x800000025AA69980;
                v67 = sub_25A95F294(a2, v5, a4);
                a2 = v68;
                MEMORY[0x25F850290](v67);

                MEMORY[0x25F850290](0x61647075206E6920, 0xEF6563696C536574);
                sub_25A998818();
                __break(1u);
LABEL_154:
                __break(1u);
                goto LABEL_155;
              }

LABEL_150:
              __break(1u);
              goto LABEL_151;
            }
          }

LABEL_94:
          if (v4 >= *(v78 + 16))
          {
            goto LABEL_135;
          }

          *(v74 + 4 * v4) = v54;
          if (v4 >= *(v72 + 16))
          {
            goto LABEL_137;
          }

          if ((a4 & 0x100000000) != 0)
          {
            v56 = 1;
          }

          else
          {
            v56 = a4;
          }

          v50[v4] = v56;
          if ((v21 & 0x8000000000000000) != 0)
          {
            if (v4 < *(v10 + 16))
            {
              *(v73 + 8 * v4) = 1;
              goto LABEL_46;
            }

            goto LABEL_147;
          }

          a2 = *(v70 + 16);
          mlx_array_ndim(a2);
          if (v21 >> 31)
          {
            goto LABEL_139;
          }

          LODWORD(v24) = mlx_array_dim(a2, v21);
          if (v4 >= *(v10 + 16))
          {
            goto LABEL_140;
          }

          *(v73 + 8 * v4) = v24;
          --v21;
LABEL_46:
          a2 = -v17;
          --v4;
          if (!v17)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v5 = *(v79 + 16);
          v51 = mlx_array_ndim(v5);
          v52 = v4;
          if ((v4 & 0x8000000000000000) != 0)
          {
            v52 = v4 + v51;
            if (__OFADD__(v4, v51))
            {
              goto LABEL_145;
            }

            if (v52 < 0xFFFFFFFF80000000)
            {
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
LABEL_135:
              __break(1u);
LABEL_136:
              __break(1u);
LABEL_137:
              __break(1u);
LABEL_138:
              __break(1u);
LABEL_139:
              __break(1u);
LABEL_140:
              __break(1u);
LABEL_141:
              __break(1u);
              goto LABEL_142;
            }
          }

          if (v52 > 0x7FFFFFFF)
          {
            goto LABEL_128;
          }

          LODWORD(v24) = mlx_array_dim(v5, v52);
          if ((a2 & 0x80000000) != 0)
          {
            v53 = __OFADD__(a2, v24);
            a2 = (a2 + v24);
            if (v53)
            {
              goto LABEL_146;
            }
          }

          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_131;
          }

          if (v4 >= *(v75 + 16))
          {
            goto LABEL_133;
          }

          v77[v4] = a2;
          if (__OFADD__(a2, 1))
          {
            goto LABEL_134;
          }

          if (v4 >= *(v78 + 16))
          {
            goto LABEL_136;
          }

          *(v74 + 4 * v4) = a2 + 1;
          if (v4 >= *(v10 + 16))
          {
            goto LABEL_138;
          }

          a2 = -v17;
          *(v73 + 8 * v4--) = 1;
          if (!v17)
          {
            goto LABEL_103;
          }
        }

        goto LABEL_47;
      }

      if (v5 | a2)
      {
        v45 = 0;
      }

      else
      {
        v45 = a4 == 0xC000000000;
      }

      if (v45)
      {
        goto LABEL_153;
      }

      ++v17;
      v43 -= 6;
      if (v17 == 1)
      {
        goto LABEL_103;
      }
    }

    __break(1u);
LABEL_107:
    v27 = v78;
    goto LABEL_109;
  }

LABEL_103:

  if (qword_27FA043D8 != -1)
  {
    swift_once();
  }

  sub_25A998C58();
  v57 = v81;
  v81 = mlx_array_new();
  v58 = *(v70 + 16);
  v59 = Array<A>.asInt32.getter(v10);
  v60 = *(v10 + 16);

  mlx_reshape(&v81, v58, v59 + 32, v60, *(v57 + 16));

  v61 = v81;
  v80 = mlx_array_new();
  mlx_slice_update(&v80, *(v79 + 16), v61, v77, *(v75 + 16), v78 + 32, *(v78 + 16), v71, *(v72 + 16), *(v69 + 16));
  mlx_array_free(v61);

  v62 = v80;
LABEL_125:
  type metadata accessor for MLXArray();
  result = swift_allocObject();
  *(result + 16) = v62;
LABEL_7:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A95BA04(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A95BA0CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A95BAC0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v160 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16) == 1)
  {
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    v9 = *(a2 + 48) | (*(a2 + 52) << 32);
    v10 = *(a2 + 52) >> 6;
    if (v10 <= 1)
    {
      if (v10)
      {
        v159 = BYTE4(v7) & 1;
        LOBYTE(v158[0]) = BYTE4(v8) & 1;
        v157 = BYTE4(v9) & 1;
        v11 = sub_25A95EAC0(a1, v7 | ((HIDWORD(v7) & 1) << 32), v8 | ((HIDWORD(v8) & 1) << 32), v9 | ((HIDWORD(v9) & 1) << 32), a3, a4);
      }

      else
      {
        v11 = sub_25A95E91C(a1, *(a2 + 32), a3, a4);
      }

      goto LABEL_171;
    }

    if (v10 == 2)
    {
      v117 = *(a2 + 32);

      v11 = sub_25A95EFD0(a1, v7, a3, a4);
      sub_25A960974(v7, v8, v9);
LABEL_171:
      v128 = *MEMORY[0x277D85DE8];
      return v11;
    }

    if (v8 | v7)
    {
      v119 = 0;
    }

    else
    {
      v119 = v9 == 0xC000000000;
    }

    if (v119)
    {
      goto LABEL_223;
    }

    v120 = sub_25A9616CC();
    v121 = Array<A>.asInt32.getter(v120);

    v158[0] = mlx_array_new();
    swift_beginAccess();
    mlx_broadcast_to(v158, *(a3 + 16), v121 + 32, *(v121 + 16), *(a4 + 16));
    v118 = v158[0];
LABEL_165:

    type metadata accessor for MLXArray();
    *(swift_allocObject() + 16) = v118;
    v11 = MEMORY[0x277D84F90];
    goto LABEL_171;
  }

  v13 = sub_25A9616CC();
  v14 = Array<A>.asInt32.getter(v13);

  v15 = sub_25A95D1F0(v14, a2);
  v16 = sub_25A959334(a4);

  v18 = sub_25A960810(v17);

  if (!v18)
  {

    v158[0] = mlx_array_new();
    swift_beginAccess();
    mlx_broadcast_to(v158, *(v16 + 16), v14 + 32, *(v14 + 16), *(a4 + 16));
    v118 = v158[0];

    goto LABEL_165;
  }

  v143 = v18;
  v144 = a1;
  v137 = 0;
  v138 = a4;
  v142 = 0;
  v147 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v145 = 0;
  v23 = 0;
  v24 = *(v15 + 16);
  v25 = 0;
  v151 = v15;
  do
  {
    v26 = 0;
    v27 = 0;
LABEL_8:
    v28 = v22;
    v29 = 0;
    while (1)
    {
      v30 = 24 * v23;
      do
      {
        if (v24 == v23)
        {
          goto LABEL_34;
        }

        if (v23 >= *(v151 + 16))
        {
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
          goto LABEL_180;
        }

        ++v23;
        v31 = v30 + 24;
        v32 = v151 + v30;
        v33 = *(v151 + v30 + 52);
        v34 = v33 >> 6;
        v30 += 24;
      }

      while (!(v33 >> 6));
      if (v34 == 1)
      {
        v36 = __OFADD__(v25, 1);
        v25 = (v25 + 1);
        if (v36)
        {
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
          __break(1u);
LABEL_202:
          __break(1u);
          __break(1u);
LABEL_203:
          __break(1u);
          __break(1u);
LABEL_204:
          __break(1u);
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
          __break(1u);
LABEL_210:
          __break(1u);
          goto LABEL_211;
        }

        if (((v33 << 32) & 0x100000000) != 0 || *(v32 + 48) == 1)
        {
          v36 = __OFADD__(v27++, 1);
          if (v36)
          {
            goto LABEL_200;
          }
        }

        else
        {
          v36 = __OFADD__(v137++, 1);
          if (v36)
          {
            goto LABEL_199;
          }

          v27 = 0;
        }

        ++v26;
        v19 = v20;
        goto LABEL_8;
      }

      if (v34 == 2)
      {
        break;
      }

      if (*(v151 + v31 + 8) == 0 && (*(v32 + 48) | (v33 << 32)) == 0xC000000000)
      {
        sub_25A9985F8();

        v158[0] = 0xD000000000000011;
        v158[1] = 0x800000025AA698E0;
        MEMORY[0x25F850290](0x697370696C6C652ELL, 0xE900000000000073);

        MEMORY[0x25F850290](0xD000000000000014, 0x800000025AA69900);
        sub_25A998818();
        goto LABEL_222;
      }

      ++v29;
      v19 = 1;
      v36 = __OFADD__(v22++, 1);
      if (v36)
      {
        goto LABEL_187;
      }
    }

    v37 = *(v151 + v31 + 8);
    swift_beginAccess();
    v38 = mlx_array_ndim(*(v37 + 16));
    v147 |= v19;
    v39 = v145;
    if (v145 <= v38)
    {
      v39 = v38;
    }

    v145 = v39;
    v20 = 1;
    v21 = v25;
    v36 = __OFADD__(v142++, 1);
  }

  while (!v36);
  __break(1u);
LABEL_34:
  v40 = v145 + v22;
  if (__OFADD__(v145, v22))
  {
LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  v36 = __OFADD__(v40, v25);
  v41 = v25 + v40;
  if (v36)
  {
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  v36 = __OFSUB__(v41, v27);
  v42 = &v41[-v27];
  if (v36)
  {
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    swift_once();
LABEL_146:
    sub_25A998C58();
    if (v25 >> 62)
    {
      v111 = sub_25A998848();
    }

    else
    {
      v111 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v111)
    {
      v154 = MEMORY[0x277D84F90];
      sub_25A9375C0(0, v111 & ~(v111 >> 63), 0);
      if (v111 < 0)
      {
        goto LABEL_198;
      }

      if ((v25 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v111; ++i)
        {
          v113 = MEMORY[0x25F8509C0](i, v25);
          swift_beginAccess();
          v114 = *(v113 + 16);
          swift_unknownObjectRelease();
          v116 = *(v154 + 16);
          v115 = *(v154 + 24);
          if (v116 >= v115 >> 1)
          {
            sub_25A9375C0((v115 > 1), v116 + 1, 1);
          }

          *(v154 + 16) = v116 + 1;
          *(v154 + 8 * v116 + 32) = v114;
        }
      }

      else
      {
        v122 = v25 + 4;
        v123 = v111;
        do
        {
          v124 = *v122;
          swift_beginAccess();
          v125 = *(v124 + 16);
          v127 = *(v154 + 16);
          v126 = *(v154 + 24);
          if (v127 >= v126 >> 1)
          {
            sub_25A9375C0((v126 > 1), v127 + 1, 1);
          }

          *(v154 + 16) = v127 + 1;
          *(v154 + 8 * v127 + 32) = v125;
          ++v122;
          --v123;
        }

        while (v123);
      }
    }

    mlx_vector_array_new_data();
  }

  if (v42 <= 1)
  {
    v42 = 1;
  }

  v140 = v42;
  v152 = MEMORY[0x277D84F90];
  if (v143 < 0)
  {
    goto LABEL_183;
  }

  v146 = sub_25A998158();
  *(v146 + 16) = v143;
  v136 = v146 + 32;
  memset_pattern16((v146 + 32), &unk_25A9E0B90, 8 * v143);
  swift_beginAccess();
  v43 = 0;
  v150 = 0;
  v135 = 0;
  v44 = 0;
  if (v147)
  {
    v45 = v145;
  }

  else
  {
    v45 = 0;
  }

  v131 = v45;
  v46 = v28 + v26;
  v47 = 0;
  v48 = v21 + v145 + v46 - v27 + v29;
  if (v48 <= 1)
  {
    v48 = 1;
  }

  __len = 8 * v48;
  v49 = v151;
  v141 = -v24;
  v133 = v145;
  v25 = MEMORY[0x277D84F90];
  while (1)
  {
    v148 = v43;
    v50 = 0;
    v51 = (v151 + 48 + 24 * v44);
    v52 = v47;
    while (1)
    {
      if (!(v141 + v44 + v50))
      {

        if (qword_27FA043D8 == -1)
        {
          goto LABEL_146;
        }

        goto LABEL_184;
      }

      if ((v44 + v50) >= *(v49 + 16))
      {
        goto LABEL_173;
      }

      v53 = *(v51 - 2);
      v54 = *v51 | (*(v51 + 4) << 32);
      v55 = *(v51 + 4) >> 6;
      if (v55 != 3)
      {
        break;
      }

      v56 = *(v51 - 1) == 0 && v54 == 0xC000000000;
      v49 = v151;
      if (v56)
      {
        goto LABEL_220;
      }

      ++v52;
      ++v50;
      v51 += 6;
      v150 = v52;
      if (!(v47 + 0x8000000000000000 + v50))
      {
        goto LABEL_174;
      }
    }

    if (!v55)
    {
      break;
    }

    v134 = v44;
    v139 = *(v51 - 1);
    if (v55 == 1)
    {
      v61 = *(v144 + 16);
      v62 = mlx_array_ndim(v61);
      v63 = v43;
      if (v43 < 0)
      {
        v63 = v43 + v62;
        if (__OFADD__(v43, v62))
        {
          goto LABEL_210;
        }

        if (v63 < 0xFFFFFFFF80000000)
        {
          goto LABEL_189;
        }
      }

      if (v63 > 0x7FFFFFFF)
      {
        goto LABEL_191;
      }

      v64 = mlx_array_dim(v61, v63);
      if ((v53 & 0x100000000) != 0)
      {
        v65 = 0;
      }

      else
      {
        v65 = v53;
      }

      if ((v53 & 0x100000000) != 0 && (v54 & 0x100000000) == 0)
      {
        if ((v54 & 0x80000000) == 0)
        {
          v65 = 0;
          goto LABEL_114;
        }

        v65 = v64 - 1;
        if (__OFSUB__(v64, 1))
        {
          goto LABEL_216;
        }
      }

      if ((v65 & 0x80000000) != 0)
      {
        v36 = __OFADD__(v65, v64);
        v65 += v64;
        if (v36)
        {
          goto LABEL_215;
        }
      }

LABEL_114:
      if ((v139 & 0x100000000) != 0)
      {
        v92 = v64;
      }

      else
      {
        v92 = v139;
      }

      if ((v139 & 0x100000000) != 0 && (v54 & 0x100000000) == 0)
      {
        v92 = v64;
        if ((v54 & 0x80000000) != 0)
        {
          v93 = -v64;
          if (__OFSUB__(0, v64))
          {
            goto LABEL_217;
          }

          v92 = (v93 - 1);
          if (__OFSUB__(v93, 1))
          {
            goto LABEL_218;
          }
        }
      }

      if ((v92 & 0x80000000) != 0)
      {
        v36 = __OFADD__(v92, v64);
        v92 = (v92 + v64);
        if (v36)
        {
          goto LABEL_214;
        }
      }

      if ((v54 & 0x100000000) != 0)
      {
        v94 = 1;
      }

      else
      {
        v94 = v54;
      }

      if ((v140 & 0x8000000000000000) != 0)
      {
        goto LABEL_194;
      }

      v95 = sub_25A998158();
      v96 = v47 + v50;
      *(v95 + 16) = v140;
      memset_pattern16((v95 + 32), &unk_25A9E0B90, __len);
      if (v135 >= v142 && v137 <= 0 && v94 == 1)
      {
        mlx_array_new_int();
      }

      if (!v94)
      {
        goto LABEL_201;
      }

      v97 = sub_25A973258(v65 | (v92 << 32), v94);
      v98 = v97;
      v99 = *(v97 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25A9F8D90;
      *(inited + 32) = v99;
      v101 = Array<A>.asInt32.getter(inited);

      v102 = mlx_array_new_data(v98 + 32, (v101 + 32), 1, 7);

      type metadata accessor for MLXArray();
      *(swift_initStackObject() + 16) = v102;
      v103 = v133;
      if (v147)
      {
        v103 = v145;
      }

      v133 = v103;
      v104 = v96 + v131;
      if (__OFADD__(v96, v131))
      {
        goto LABEL_202;
      }

      v105 = mlx_array_size(v102);
      if ((v104 & 0x8000000000000000) != 0)
      {
        goto LABEL_203;
      }

      if (v104 >= *(v95 + 16))
      {
        goto LABEL_204;
      }

      *(v95 + 32 + 8 * v104) = v105;
      v155 = mlx_array_new();
      v106 = Array<A>.asInt32.getter(v95);
      v107 = *(v95 + 16);

      mlx_reshape(&v155, v102, v106 + 32, v107, *(v138 + 16));

      v108 = v155;
      *(swift_allocObject() + 16) = v108;
      MEMORY[0x25F850420]();
      if (*((v152 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v152 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v110 = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_25A998128();
      }

      sub_25A998178();
      v150 = v96 + 1;
      if (__OFADD__(v96, 1))
      {
        goto LABEL_205;
      }

      v36 = __OFSUB__(v137--, 1);
      if (v36)
      {
        goto LABEL_206;
      }

      v25 = v152;

      sub_25A960974(v53, v139, v54);
      if ((v148 & 0x8000000000000000) != 0)
      {
        goto LABEL_207;
      }

      v49 = v151;
      if (v148 >= *(v146 + 16))
      {
        goto LABEL_208;
      }

      v47 = v96 + 1;
      v44 = v134 + v50 + 1;
      *(v136 + 8 * v148) = 1;
      v43 = v148 + 1;
    }

    else
    {
      v66 = v47 + v50;
      if (v147)
      {
        v67 = 0;
      }

      else
      {
        v67 = v66;
      }

      v68 = v150;
      if ((v147 & 1) == 0)
      {
        v68 = v66;
      }

      v150 = v68;
      v69 = v67 + v133;
      if (__OFADD__(v67, v133))
      {
        goto LABEL_188;
      }

      swift_beginAccess();
      v70 = *(v53 + 16);

      v71 = mlx_array_ndim(v70);
      v72 = v69 - v71;
      if (__OFSUB__(v69, v71))
      {
        goto LABEL_190;
      }

      if ((v140 & 0x8000000000000000) != 0)
      {
        goto LABEL_192;
      }

      v130 = v66;
      v73 = sub_25A998158();
      *(v73 + 16) = v140;
      v149 = v73;
      v25 = (v73 + 32);
      memset_pattern16((v73 + 32), &unk_25A9E0B90, __len);
      v74 = mlx_array_ndim(*(v53 + 16));
      v75 = v74;
      if (v74 < 0)
      {
        goto LABEL_193;
      }

      if (v74)
      {
        v76 = 0;
        v77 = v72;
        v78 = 0x80000000;
        do
        {
          v79 = *(v53 + 16);
          mlx_array_ndim(v79);
          if (!v78)
          {
            goto LABEL_175;
          }

          v80 = mlx_array_dim(v79, v76);
          if ((v72 & 0x8000000000000000) != 0)
          {
            goto LABEL_176;
          }

          if (v77 >= *(v149 + 16))
          {
            goto LABEL_177;
          }

          ++v76;
          v25[v77] = v80;
          --v78;
          ++v77;
        }

        while (v75 != v76);
      }

      v155 = mlx_array_new();
      v81 = *(v53 + 16);
      v82 = *(v149 + 16);
      if (v82)
      {
        v153 = MEMORY[0x277D84F90];
        sub_25A93A530(0, v82, 0);
        v83 = v149;
        v84 = v153;
        do
        {
          v86 = *v25++;
          v85 = v86;
          if (v86 < 0xFFFFFFFF80000000)
          {
            goto LABEL_178;
          }

          if (v85 > 0x7FFFFFFF)
          {
            goto LABEL_179;
          }

          v88 = *(v153 + 16);
          v87 = *(v153 + 24);
          if (v88 >= v87 >> 1)
          {
            sub_25A93A530(v87 > 1, v88 + 1, 1);
            v83 = v149;
          }

          *(v153 + 16) = v88 + 1;
          *(v153 + 4 * v88 + 32) = v85;
          --v82;
        }

        while (v82);
        v89 = *(v83 + 16);
      }

      else
      {
        v89 = 0;
        v84 = MEMORY[0x277D84F90];
      }

      mlx_reshape(&v155, v81, v84 + 32, v89, *(v138 + 16));

      v90 = v155;
      type metadata accessor for MLXArray();
      *(swift_allocObject() + 16) = v90;
      MEMORY[0x25F850420]();
      if (*((v152 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v152 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v109 = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_25A998128();
      }

      sub_25A998178();
      if (__OFADD__(v135, 1))
      {
        goto LABEL_195;
      }

      v25 = v152;
      if (v147 & 1 | (v135 + 1 != v142))
      {
        v91 = v134;
        v47 = v130;
      }

      else
      {
        v91 = v134;
        v47 = v150 + v133;
        if (__OFADD__(v150, v133))
        {
          goto LABEL_209;
        }

        v150 += v133;
      }

      sub_25A960974(v53, v139, v54);
      if ((v148 & 0x8000000000000000) != 0)
      {
        goto LABEL_196;
      }

      if (v148 >= *(v146 + 16))
      {
        goto LABEL_197;
      }

      ++v135;
      v44 = v91 + v50 + 1;
      *(v136 + 8 * v148) = 1;
      v43 = v148 + 1;
      v49 = v151;
    }
  }

  if ((v53 & 0x80000000) == 0)
  {
    v57 = *(v51 - 2);
    mlx_array_new_int();
  }

  v58 = *(v144 + 16);
  v59 = mlx_array_ndim(v58);
  v60 = v43;
  if ((v43 & 0x8000000000000000) == 0)
  {
LABEL_62:
    if (v60 > 0x7FFFFFFF)
    {
      goto LABEL_212;
    }

    if (!__OFADD__(v53, mlx_array_dim(v58, v60)))
    {
      mlx_array_new_int();
    }

LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
    goto LABEL_219;
  }

  v60 = v43 + v59;
  if (!__OFADD__(v43, v59))
  {
    if (v60 >= 0xFFFFFFFF80000000)
    {
      goto LABEL_62;
    }

LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
    goto LABEL_213;
  }

LABEL_219:
  __break(1u);
LABEL_220:
  v155 = 0;
  v156 = 0xE000000000000000;
  sub_25A9985F8();

  v155 = 0xD000000000000011;
  v156 = 0x800000025AA698E0;
  MEMORY[0x25F850290](0x697370696C6C652ELL, 0xE900000000000073);

  MEMORY[0x25F850290](0xD000000000000014, 0x800000025AA69900);
  sub_25A998818();
LABEL_222:
  __break(1u);
LABEL_223:
  result = sub_25A998818();
  __break(1u);
  return result;
}

void sub_25A95D0D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A95D0DCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A95D1F0(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = a2 + 32;
    v6 = (a2 + 48);
    while (*(v6 + 4) >> 6 < 3uLL || (*v6 | (*(v6 + 4) << 32)) != 0xC000000000 || *(v6 - 1) != 0)
    {
      ++v4;
      v6 += 6;
      if (v3 == v4)
      {
        goto LABEL_34;
      }
    }

    v8 = 0;
LABEL_11:
    v9 = __OFADD__(v8++, 1);
    if (v9)
    {
LABEL_66:
      __break(1u);
    }

    else if (v4 != v3)
    {
      while (1)
      {
        v9 = __OFADD__(v4++, 1);
        if (v9)
        {
          goto LABEL_61;
        }

        if (v4 == v3)
        {
          break;
        }

        if (v4 >= v3)
        {
          goto LABEL_62;
        }

        v10 = v5 + 24 * v4;
        if (*(v10 + 20) >> 6 >= 3uLL)
        {
          v11 = *(v10 + 16) | (*(v10 + 20) << 32);
          v12 = *v10 | *(v10 + 8);
          if (v11 == 0xC000000000 && v12 == 0)
          {
            goto LABEL_11;
          }
        }
      }

      if (!v8)
      {
        goto LABEL_34;
      }

      if (v8 > 1)
      {
        goto LABEL_75;
      }

      v14 = 0;
      v15 = (a2 + 48);
      while (*(v15 + 4) >> 6 < 3uLL || (*v15 | (*(v15 + 4) << 32)) != 0xC000000000 || *(v15 - 1) != 0)
      {
        ++v14;
        v15 += 6;
        if (v3 == v14)
        {
          v14 = *(a2 + 16);
          break;
        }
      }

      v18 = v14 + 1;
      if (!__OFADD__(v14, 1))
      {
        if (v3 < v18)
        {
          goto LABEL_69;
        }

        if ((v18 & 0x8000000000000000) == 0)
        {
          v19 = (2 * v3) | 1;
          swift_bridgeObjectRetain_n();
          v20 = sub_25A9609F0(v2 + 32, 0, (2 * v14) | 1);
          v21 = *(a1 + 16);
          v22 = sub_25A9609F0(v2 + 32, v14 + 1, v19);
          v23 = v21 - v22;
          if (__OFSUB__(v21, v22))
          {
            goto LABEL_71;
          }

          v24 = v23 - v20;
          if (v23 >= v20)
          {
            if (__OFSUB__(v23, v20))
            {
              goto LABEL_73;
            }

            if (v24)
            {
              v25 = v22;
              v40 = v2 + 32;
              v41 = v2;
              v43 = MEMORY[0x277D84F90];
              sub_25A937610(0, v24 & ~(v24 >> 63), 0);
              if (v24 < 0)
              {
                goto LABEL_74;
              }

              if (v21 >= v20)
              {
                v26 = v21 - v20;
              }

              else
              {
                v26 = 0;
              }

              v27 = v20 - 0x7FFFFFFFFFFFFFFFLL;
              v28 = v25 + v20 - v21;
              v29 = v43;
              v30 = (a1 + 4 * v20 + 32);
              while (v26)
              {
                v31 = *v30;
                v2 = *(v43 + 16);
                v32 = *(v43 + 24);
                v33 = v2 + 1;
                if (v2 >= v32 >> 1)
                {
                  sub_25A937610((v32 > 1), v2 + 1, 1);
                }

                *(v43 + 16) = v33;
                v34 = v43 + 24 * v2;
                *(v34 + 32) = 0;
                *(v34 + 40) = v31;
                *(v34 + 52) = 64;
                *(v34 + 48) = 1;
                if (!v28)
                {
                  goto LABEL_64;
                }

                if (!v27)
                {
                  goto LABEL_65;
                }

                ++v27;
                --v26;
                ++v30;
                if (__CFADD__(v28++, 1))
                {
                  v5 = v40;
                  v2 = v41;
                  v18 = v14 + 1;
                  v36 = v33 + v14;
                  if (__OFADD__(v33, v14))
                  {
                    goto LABEL_60;
                  }

                  goto LABEL_57;
                }
              }
            }

            else
            {
              v29 = MEMORY[0x277D84F90];
              v38 = *(MEMORY[0x277D84F90] + 16);
              v36 = v38 + v14;
              if (!__OFADD__(v38, v14))
              {
LABEL_57:
                v44 = sub_25A967258(0, v36 & ~(v36 >> 63), 0, MEMORY[0x277D84F90]);

                sub_25A939C94(v37, v5, 0, (2 * v14) | 1);

                sub_25A932D2C(v29);
                sub_25A939C94(v2, v5, v18, v19);
                swift_bridgeObjectRelease_n();
                return v44;
              }

LABEL_60:
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
            }

            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          goto LABEL_72;
        }

LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        sub_25A9985F8();

        v39 = MEMORY[0x25F850440](v2, &type metadata for MLXArrayIndexOperation);
        MEMORY[0x25F850290](v39);

        result = sub_25A998818();
        __break(1u);
        return result;
      }

LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    __break(1u);
    goto LABEL_68;
  }

LABEL_34:

  return v2;
}

uint64_t sub_25A95D624(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v127 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = sub_25A998158();
    *(v10 + 16) = v8;
    bzero((v10 + 32), v8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v111 = v10;
  v122 = v9;
  v11 = a1;
  v12 = sub_25A9616CC();
  v13 = Array<A>.asInt32.getter(v12);

  swift_beginAccess();
  v114 = v10 + 32;
  v121 = v8;
  v101 = v13;
  if (v8)
  {
    v9 = 0;
    v117 = 0;
    v102 = 0;
    v8 = v13 + 32;
    v4 = a2 + 48;
    v5 = 0x7FFFFFFFLL;
    while (1)
    {
      v14 = (v4 + 24 * v9);
      v13 = v9;
      if (v9 >= v121)
      {
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
        goto LABEL_168;
      }

      ++v9;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_167;
      }

      v10 = *(v14 - 2);
      v15 = *(v14 + 4) >> 6;
      if (!v15)
      {
        if ((v10 & 0x80000000) == 0)
        {
          v16 = *(v14 - 2);
          mlx_array_new_int();
        }

        v17 = *(a1 + 16);
        mlx_array_ndim(v17);
        if (v13 <= 0x7FFFFFFF)
        {
          if (!__OFADD__(v10, mlx_array_dim(v17, v13)))
          {
            mlx_array_new_int();
          }

          goto LABEL_169;
        }

LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
        while (2)
        {
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          v59 = sub_25A998848();
          v9 = v5;
LABEL_117:
          if (!v59)
          {
            goto LABEL_161;
          }

          v123 = MEMORY[0x277D84F90];
          v11 = &v123;
          sub_25A9375C0(0, v59 & ~(v59 >> 63), 0);
          if ((v59 & 0x8000000000000000) == 0)
          {
            v60 = v123;
            v61 = v5;
            if ((v5 & 0xC000000000000001) != 0)
            {
              v62 = 0;
              do
              {
                v63 = MEMORY[0x25F8509C0](v62, v61);
                swift_beginAccess();
                v64 = *(v63 + 16);
                swift_unknownObjectRelease();
                v123 = v60;
                v66 = *(v60 + 16);
                v65 = *(v60 + 24);
                if (v66 >= v65 >> 1)
                {
                  sub_25A9375C0((v65 > 1), v66 + 1, 1);
                  v60 = v123;
                }

                ++v62;
                *(v60 + 16) = v66 + 1;
                *(v60 + 8 * v66 + 32) = v64;
                v61 = v5;
              }

              while (v59 != v62);
            }

            else
            {
              v83 = (v5 + 32);
              v84 = v59;
              do
              {
                v85 = *v83;
                swift_beginAccess();
                v86 = *(v85 + 16);
                v123 = v60;
                v88 = *(v60 + 16);
                v87 = *(v60 + 24);
                if (v88 >= v87 >> 1)
                {
                  sub_25A9375C0((v87 > 1), v88 + 1, 1);
                  v60 = v123;
                }

                *(v60 + 16) = v88 + 1;
                *(v60 + 8 * v88 + 32) = v86;
                ++v83;
                --v84;
              }

              while (v84);
            }

LABEL_161:
            mlx_vector_array_new_data();
          }

LABEL_184:
          __break(1u);
          __break(1u);
          v101 = sub_25A8F7988(v101);
          v52 = *(v101 + 2);
          if (v121 <= v52)
          {
            memset_pattern16(v101 + 32, &unk_25A9E0B60, 4 * v121);
            v125 = mlx_array_new();
            swift_beginAccess();
            mlx_gather(&v125, *(a1 + 16), v10, (v11 + 4), v11[2], (v101 + 32), *(v101 + 2), *(a4 + 16));
          }

          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          if ((v9 & 0x8000000000000000) != 0)
          {
            v11 = v9;
          }

          else
          {
            v11 = v52;
          }

          v95 = sub_25A998848();
          result = sub_25A998848();
          if (result < 0)
          {
            __break(1u);
            return result;
          }

          if (v95 >= v117)
          {
            v97 = v117;
          }

          else
          {
            v97 = v95;
          }

          if (v95 < 0)
          {
            v97 = v117;
          }

          if (v117)
          {
            v10 = v97;
          }

          else
          {
            v10 = 0;
          }

          v9 = v120;
          if (sub_25A998848() < v10)
          {
            goto LABEL_200;
          }

LABEL_104:
          if ((v9 & 0xC000000000000001) != 0 && v10)
          {
            type metadata accessor for MLXArray();

            for (i = 0; i != v10; ++i)
            {
              sub_25A998678();
              v9 = v120;
            }

            if (!v8)
            {
              goto LABEL_109;
            }

LABEL_113:

            sub_25A998858();
            __len = v56;
            v10 = v57 >> 1;
            v9 = v120;
            v8 = v58;
            if (v58 != v57 >> 1)
            {
LABEL_125:
              v67 = 0;
              v68 = v102 + v117;
              v69 = __OFADD__(v102, v117);
              v106 = v69;
              v100 = 8 * v68;
              if (v10 <= v8)
              {
                v70 = v8;
              }

              else
              {
                v70 = v10;
              }

              v108 = v70 - v8;
              v13 = 0xFFFFFFFF80000000;
              v5 = 0x7FFFFFFFLL;
              v104 = v10;
              while (v67 != v108)
              {
                if (v106)
                {
                  goto LABEL_175;
                }

                if (v68 < 0)
                {
                  goto LABEL_176;
                }

                v115 = v8;
                v119 = *(__len + 8 * v8);

                if (v68)
                {
                  v71 = sub_25A998158();
                  *(v71 + 16) = v102 + v117;
                  memset_pattern16((v71 + 32), &unk_25A9E0B90, v100);
                }

                else
                {
                  v71 = MEMORY[0x277D84F90];
                }

                swift_beginAccess();
                v72 = *(v119 + 16);
                mlx_array_ndim(v72);
                v73 = mlx_array_dim(v72, 0);
                if (v67 >= *(v71 + 16))
                {
                  goto LABEL_177;
                }

                v120 = v9;
                v74 = (v71 + 32);
                v113 = v67;
                *(v71 + 32 + 8 * v67) = v73;
                if (qword_27FA043D8 != -1)
                {
                  swift_once();
                }

                sub_25A998C58();
                v4 = v123;
                v123 = mlx_array_new();
                v10 = *(v119 + 16);
                v8 = *(v71 + 16);
                if (v8)
                {
                  v110 = *(v119 + 16);
                  v126 = MEMORY[0x277D84F90];
                  sub_25A93A530(0, v8, 0);
                  v75 = v126;
                  while (1)
                  {
                    v77 = *v74++;
                    v76 = v77;
                    if (v77 < 0xFFFFFFFF80000000)
                    {
                      break;
                    }

                    if (v76 > 0x7FFFFFFF)
                    {
                      goto LABEL_165;
                    }

                    v126 = v75;
                    v10 = *(v75 + 16);
                    v78 = *(v75 + 24);
                    if (v10 >= v78 >> 1)
                    {
                      sub_25A93A530(v78 > 1, v10 + 1, 1);
                      v75 = v126;
                    }

                    *(v75 + 16) = v10 + 1;
                    *(v75 + 4 * v10 + 32) = v76;
                    if (!--v8)
                    {
                      v79 = *(v71 + 16);
                      v10 = v110;
                      goto LABEL_150;
                    }
                  }

                  __break(1u);
LABEL_165:
                  __break(1u);
                  goto LABEL_166;
                }

                v79 = 0;
                v75 = MEMORY[0x277D84F90];
LABEL_150:

                mlx_reshape(&v123, v10, v75 + 32, v79, *(v4 + 16));
                v9 = v120;

                v80 = v123;
                type metadata accessor for MLXArray();
                v81 = swift_allocObject();
                *(v81 + 16) = v80;
                if ((swift_isUniquelyReferenced_nonNull_bridgeObject() & 1) == 0 || (v120 & 0x8000000000000000) != 0 || (v120 & 0x4000000000000000) != 0)
                {
                  v9 = sub_25A8F799C(v120);
                }

                v8 = v115;
                v10 = v104;
                if (v113 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_178;
                }

                v8 = v115 + 1;
                v82 = *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v113 + 0x20);
                *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v113 + 0x20) = v81;

                v67 = v113 + 1;
                v68 = v102 + v117;
                if (v115 + 1 == v104)
                {
                  goto LABEL_114;
                }
              }

              continue;
            }
          }

          else
          {

            if (v8)
            {
              goto LABEL_113;
            }

LABEL_109:
            __len = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
            if (v8 != v10)
            {
              goto LABEL_125;
            }
          }

          break;
        }

LABEL_114:
        swift_unknownObjectRelease();
LABEL_115:
        v5 = v9;
        if (v9 >> 62)
        {
          goto LABEL_179;
        }

        v59 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_117;
      }

      v18 = *v14 | (*(v14 + 4) << 32);
      v19 = *(v14 - 1);
      if (v15 == 1)
      {
        break;
      }

      if (v15 != 2)
      {
        goto LABEL_211;
      }

      swift_beginAccess();
      v20 = *(v10 + 16);

      v21 = mlx_array_ndim(v20);
      v22 = v102;
      if (v102 <= v21)
      {
        v22 = v21;
      }

      v102 = v22;

      MEMORY[0x25F850420](v23);
      if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_25A998128();
      }

      v11 = &v122;
      sub_25A998178();
      sub_25A960974(v10, v19, v18);
LABEL_51:
      if (v9 == v121)
      {
        v9 = v122;
        v120 = v122;
        if (a3)
        {
          goto LABEL_53;
        }

        goto LABEL_95;
      }
    }

    v24 = __OFADD__(v117++, 1);
    if (v24)
    {
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
      goto LABEL_184;
    }

    if (v13 >= *(v111 + 16))
    {
      goto LABEL_181;
    }

    *(v114 + v13) = 1;
    if (v13 >= *(v101 + 2))
    {
      goto LABEL_182;
    }

    v25 = *(v8 + 4 * v13);
    if ((v10 & 0x100000000) != 0)
    {
      v26 = 0;
    }

    else
    {
      v26 = v10;
    }

    if ((v10 & 0x100000000) != 0 && (v18 & 0x100000000) == 0)
    {
      if ((v18 & 0x80000000) == 0)
      {
        v26 = 0;
LABEL_34:
        if ((v19 & 0x100000000) != 0)
        {
          v27 = v25;
        }

        else
        {
          v27 = v19;
        }

        if ((v19 & 0x100000000) != 0 && (v18 & 0x100000000) == 0)
        {
          v27 = *(v8 + 4 * v13);
          if ((v18 & 0x80000000) != 0)
          {
            v28 = -v25;
            if (__OFSUB__(0, v25))
            {
              goto LABEL_209;
            }

            v24 = __OFSUB__(v28, 1);
            v27 = (v28 - 1);
            if (v24)
            {
              goto LABEL_210;
            }
          }
        }

        if ((v27 & 0x80000000) != 0)
        {
          v24 = __OFADD__(v27, v25);
          v27 = v27 + v25;
          if (v24)
          {
            __break(1u);
LABEL_203:
            __break(1u);
            goto LABEL_204;
          }
        }

        if ((v18 & 0x100000000) != 0)
        {
          v29 = 1;
        }

        else
        {
          v29 = v18;
        }

        if (!v29)
        {
          goto LABEL_183;
        }

        v30 = sub_25A973258(v26 | (v27 << 32), v29);
        sub_25A9396F4(v30, 0);

        MEMORY[0x25F850420](v31);
        if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v10 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_25A998128();
        }

        v11 = &v122;
        sub_25A998178();
        goto LABEL_51;
      }

      v26 = v25 - 1;
      if (__OFSUB__(v25, 1))
      {
        goto LABEL_208;
      }
    }

    if ((v26 & 0x80000000) != 0)
    {
      v24 = __OFADD__(v26, v25);
      v26 += v25;
      if (v24)
      {
        goto LABEL_207;
      }
    }

    goto LABEL_34;
  }

  v117 = 0;
  v102 = 0;
  v120 = v9;
  if (a3)
  {
LABEL_53:
    if (v117 < 1)
    {
      goto LABEL_115;
    }

    v112 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v9 >> 62)
    {
      v19 = sub_25A998848();
      v9 = v120;
    }

    else
    {
      v19 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v102 + v117;
    v32 = __OFADD__(v102, v117);
    v105 = v32;

    v18 = v9;
    if (!v19)
    {
LABEL_111:

      v9 = v18;
      goto LABEL_115;
    }

    v33 = 0;
    v18 = v120;
    v107 = 0;
    v103 = 8 * v10;
    while (1)
    {
      while (1)
      {
        v118 = v18;
        if ((v120 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x25F8509C0](v33, v120);
          v5 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            goto LABEL_170;
          }
        }

        else
        {
          if (v33 >= *(v112 + 16))
          {
            goto LABEL_171;
          }

          v13 = *(v120 + 32 + 8 * v33);

          v5 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            goto LABEL_170;
          }
        }

        if (v33 >= *(v111 + 16))
        {
          goto LABEL_172;
        }

        if (*(v114 + v33) == 1)
        {
          break;
        }

        v34 = sub_25A9616CC();
        v35 = sub_25A998158();
        *(v35 + 16) = v117;
        v36 = v35;
        memset_pattern16((v35 + 32), &unk_25A9E0B90, 8 * v117);
        v123 = v34;
        sub_25A932C40(v36);
        v8 = v123;
        if (qword_27FA043D8 != -1)
        {
          swift_once();
        }

        sub_25A998C58();
        v37 = v123;
        v123 = mlx_array_new();
        swift_beginAccess();
        v38 = *(v13 + 16);
        v4 = Array<A>.asInt32.getter(v8);
        v39 = v10;
        v40 = v19;
        v41 = *(v8 + 16);

        mlx_reshape(&v123, v38, v4 + 32, v41, *(v37 + 16));

        v42 = v123;
        type metadata accessor for MLXArray();
        v43 = swift_allocObject();
        *(v43 + 16) = v42;
        v18 = v118;
        v19 = v40;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v118 & 0x8000000000000000) != 0 || (v118 & 0x4000000000000000) != 0)
        {
          v18 = sub_25A8F799C(v118);
          v10 = v39;
        }

        else
        {

          v10 = v39;
        }

        if (v33 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_173;
        }

        v44 = *((v18 & 0xFFFFFFFFFFFFFF8) + 8 * v33 + 0x20);
        *((v18 & 0xFFFFFFFFFFFFFF8) + 8 * v33 + 0x20) = v43;

        ++v33;
        if (v5 == v19)
        {
          goto LABEL_111;
        }
      }

      if (v105)
      {
        goto LABEL_203;
      }

      if (v10 < 0)
      {
        break;
      }

      v45 = v5;
      if (v10)
      {
        v4 = sub_25A998158();
        *(v4 + 16) = v10;
        memset_pattern16((v4 + 32), &unk_25A9E0B90, v103);
      }

      else
      {
        v4 = MEMORY[0x277D84F90];
      }

      swift_beginAccess();
      v18 = *(v13 + 16);
      mlx_array_ndim(v18);
      v46 = mlx_array_dim(v18, 0);
      if ((v102 + v107) >= *(v4 + 16))
      {
        goto LABEL_205;
      }

      *(v4 + 8 * (v102 + v107) + 32) = v46;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v47 = v123;
      v123 = mlx_array_new();
      v48 = *(v13 + 16);
      v8 = Array<A>.asInt32.getter(v4);
      v5 = *(v4 + 16);

      mlx_reshape(&v123, v48, v8 + 32, v5, *(v47 + 16));

      v49 = v123;
      type metadata accessor for MLXArray();
      v50 = swift_allocObject();
      *(v50 + 16) = v49;
      v18 = v118;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v118 & 0x8000000000000000) != 0 || (v118 & 0x4000000000000000) != 0)
      {
        v18 = sub_25A8F799C(v118);
      }

      if (v33 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_206;
      }

      v51 = *((v18 & 0xFFFFFFFFFFFFFF8) + 8 * v33 + 0x20);
      *((v18 & 0xFFFFFFFFFFFFFF8) + 8 * v33 + 0x20) = v50;

      ++v107;
      v33 = v45;
      if (v45 == v19)
      {
        goto LABEL_111;
      }
    }

LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    v123 = 0;
    v124 = 0xE000000000000000;
    sub_25A9985F8();

    v123 = 0xD000000000000011;
    v124 = 0x800000025AA698E0;
    v98 = sub_25A95F294(v10, v19, v18);
    MEMORY[0x25F850290](v98);

    MEMORY[0x25F850290](0x68746167206E6920, 0xEC000000444E7265);
    sub_25A998818();
    __break(1u);
  }

LABEL_95:
  v52 = v117;
  if (v117 < 0)
  {
    goto LABEL_186;
  }

  v52 = v9 & 0xFFFFFFFFFFFFFF8;
  v8 = v9 >> 62;
  if (v9 >> 62)
  {
    goto LABEL_187;
  }

  v53 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v53 >= v117)
  {
    v54 = v117;
  }

  else
  {
    v54 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v117)
  {
    v10 = v54;
  }

  else
  {
    v10 = 0;
  }

  if (v53 >= v10)
  {
    goto LABEL_104;
  }

LABEL_200:
  __break(1u);
  __break(1u);
  swift_unknownObjectRelease_n();
  sub_25A93718C(v11, v8, v4, v5);
  v90 = v89;
  swift_unknownObjectRelease();
  v123 = mlx_array_new();
  v91 = Array<A>.asInt32.getter(v90);
  v92 = *(v90 + 16);

  mlx_reshape(&v123, v13, v91 + 32, v92, v120);
  swift_setDeallocating();
  mlx_array_free(v13);

  v93 = v123;
  *(swift_allocObject() + 16) = v93;
  mlx_vector_array_free(v10);

  v94 = *MEMORY[0x277D85DE8];
  return v102;
}

void sub_25A95E868(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A95E870);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A95E91C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = sub_25A959334(a4);
  v7 = sub_25A9616CC();
  v8 = Array<A>.asInt32.getter(v7);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_25A8F7988(v8);
    if (*(v8 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    __break(1u);
  }

  if (!*(v8 + 16))
  {
    goto LABEL_5;
  }

LABEL_3:
  *(v8 + 32) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA049E0, &qword_25A9F95A0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25A9FF0A0;
  *(v9 + 32) = sub_25A9595BC(a2, 0);
  v13[0] = mlx_array_new();
  swift_beginAccess();
  mlx_broadcast_to(v13, *(v6 + 16), v8 + 32, *(v8 + 16), *(a4 + 16));
  v10 = v13[0];

  type metadata accessor for MLXArray();
  *(swift_allocObject() + 16) = v10;

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_25A95EAAC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A95EAB4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A95EAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  v43[9] = *MEMORY[0x277D85DE8];
  if ((a4 & 0x100000000) != 0 || a4 == 1)
  {
    v16 = a2 && (a2 & 0x100000000) == 0;
    if (!v16 && (a3 & 0x100000000) != 0)
    {
      v17 = sub_25A959334(a6);
      v18 = sub_25A9616CC();
      v19 = Array<A>.asInt32.getter(v18);

      v42[0] = mlx_array_new();
      swift_beginAccess();
      mlx_broadcast_to(v42, *(v17 + 16), v19 + 32, *(v19 + 16), *(a6 + 16));

      v20 = v42[0];

      type metadata accessor for MLXArray();
      *(swift_allocObject() + 16) = v20;
      v21 = MEMORY[0x277D84F90];
      goto LABEL_30;
    }
  }

  swift_beginAccess();
  v12 = *(a1 + 16);
  mlx_array_ndim(v12);
  v13 = mlx_array_dim(v12, 0);
  v14 = v13;
  v15 = v10 & 0x100000000;
  if ((v10 & 0x100000000) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = v10;
  }

  if ((a4 & 0x100000000) == 0 && v15)
  {
    if ((a4 & 0x80000000) != 0)
    {
      v10 = (v13 - 1);
      if (__OFSUB__(v13, 1))
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
      }
    }

    else
    {
      v10 = 0;
    }
  }

  if ((a3 & 0x100000000) == 0)
  {
    goto LABEL_24;
  }

  if ((a4 & 0x100000000) != 0)
  {
    goto LABEL_26;
  }

  if ((a4 & 0x80000000) != 0)
  {
    v22 = -v13;
    if (__OFSUB__(0, v13))
    {
      goto LABEL_34;
    }

    v14 = (v22 - 1);
    if (!__OFSUB__(v22, 1))
    {
      goto LABEL_28;
    }

    __break(1u);
LABEL_24:
    v14 = a3;
    if ((a4 & 0x100000000) != 0)
    {
      goto LABEL_26;
    }
  }

  if (a4 != 1)
  {
LABEL_28:
    if (a4 << 32)
    {
      v33 = sub_25A973258(v10 | (v14 << 32), a4);
      v34 = v33;
      v35 = *(v33 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25A9F8D90;
      *(inited + 32) = v35;
      v37 = Array<A>.asInt32.getter(inited);

      v38 = mlx_array_new_data(v34 + 32, (v37 + 32), 1, 7);

      type metadata accessor for MLXArray();
      v39 = swift_allocObject();
      *(v39 + 16) = v38;

      v21 = sub_25A95EFD0(a1, v39, a5, a6);

      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_26:
  v23 = sub_25A959334(a6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA053B0, &qword_25A9FDC20);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_25A9F8D80;
  *(v24 + 32) = 1;
  if (!__OFSUB__(v14, v10))
  {
    v25 = v24;
    *(v24 + 36) = v14 - v10;

    v26 = sub_25A9616CC();
    v27 = sub_25A961168(v26 + 32, *(v26 + 16) != 0, (2 * *(v26 + 16)) | 1);

    v42[0] = v25;
    sub_25A933028(v27);
    v43[0] = mlx_array_new();
    swift_beginAccess();
    mlx_broadcast_to(v43, *(v23 + 16), v25 + 32, *(v25 + 16), *(a6 + 16));

    v28 = v43[0];

    type metadata accessor for MLXArray();
    *(swift_allocObject() + 16) = v28;
    mlx_array_new_int();
  }

  __break(1u);
  swift_once();
  sub_25A998C58();
  v29 = v43[0];
  v43[0] = mlx_array_new();
  v30 = Array<A>.asInt32.getter(&unk_286C0B898);
  mlx_reshape(v43, v10, v30 + 32, 1uLL, *(v29 + 16));
  mlx_array_free(v10);

  v31 = v43[0];
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA049E0, &qword_25A9F95A0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_25A9FF0A0;
  *(v21 + 32) = v32;

LABEL_30:
  v40 = *MEMORY[0x277D85DE8];
  return v21;
}

void sub_25A95EF74(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A95EF7CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A95EFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = sub_25A959334(a4);

  v7 = sub_25A9616CC();
  v8 = sub_25A9616CC();
  v9 = *(v8 + 16);
  v21[4] = v7;
  sub_25A932E24(v8, v8 + 32, v9 != 0, (2 * v9) | 1);
  v10 = Array<A>.asInt32.getter(v7);

  v22[0] = mlx_array_new();
  swift_beginAccess();
  mlx_broadcast_to(v22, *(v6 + 16), v10 + 32, *(v10 + 16), *(a4 + 16));

  v11 = v22[0];

  swift_beginAccess();
  v12 = mlx_array_ndim(*(a2 + 16));
  v13 = v12;
  v14 = *(v10 + 16);
  if (v14 < v12)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v12 < 0)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_7;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v14 >= *(v10 + 24) >> 1)
  {
    v10 = sub_25A966F38(isUniquelyReferenced_nonNull_native, v14 + 1, 1, v10);
  }

  sub_25A96AF00(v13, v13, 1, 1);
  if (qword_27FA043D8 != -1)
  {
    goto LABEL_10;
  }

LABEL_7:
  sub_25A998C58();
  v16 = v21[0];
  v21[0] = mlx_array_new();
  mlx_reshape(v21, v11, v10 + 32, *(v10 + 16), *(v16 + 16));
  mlx_array_free(v11);

  v17 = v21[0];

  type metadata accessor for MLXArray();
  *(swift_allocObject() + 16) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA049E0, &qword_25A9F95A0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_25A9FF0A0;
  *(v18 + 32) = a2;

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

void sub_25A95F260(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A95F268);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A95F294(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3 & 0xFFFFFFFFFFLL;
  v4 = (a3 >> 38) & 3;
  if (((a3 >> 38) & 3) > 1)
  {
    if (v4 == 2)
    {
      sub_25A9616CC();
      v7 = MEMORY[0x25F850440]();
      v9 = v8;

      MEMORY[0x25F850290](v7, v9);

      MEMORY[0x25F850290](40, 0xE100000000000000);
      swift_beginAccess();
      v10 = mlx_array_dtype(*(a1 + 16));
      sub_25A956420(v10);
      sub_25A9987C8();
      MEMORY[0x25F850290](41, 0xE100000000000000);
      return 0;
    }

    else if ((a2 | a1) == 0 && v3 == 0xC000000000)
    {
      return 0x697370696C6C652ELL;
    }

    else
    {
      return 0x7369784177656E2ELL;
    }
  }

  else if (v4)
  {
    return sub_25A95F494(a1 | ((HIDWORD(a1) & 1) << 32), a2 | ((HIDWORD(a2) & 1) << 32), a3 | ((HIDWORD(v3) & 1) << 32));
  }

  else
  {
    return sub_25A998968();
  }
}

uint64_t sub_25A95F494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x100000000) != 0 || a3 == 1)
  {
    v7 = 0xE000000000000000;
    if ((a1 & 0x100000000) != 0)
    {
      v8 = 0;
    }

    else
    {
      sub_25A8DF954();
      v8 = sub_25A9984E8();
      v7 = v9;
    }

    MEMORY[0x25F850290](v8, v7);

    MEMORY[0x25F850290](0x203C2E2E20, 0xE500000000000000);
    if ((a2 & 0x100000000) != 0)
    {
      v10 = 0;
      v12 = 0xE000000000000000;
    }

    else
    {
      sub_25A8DF954();
      v10 = sub_25A9984E8();
      v12 = v11;
    }

    v13 = v12;
  }

  else
  {
    v4 = 0xE000000000000000;
    if ((a1 & 0x100000000) != 0)
    {
      v5 = 0;
    }

    else
    {
      sub_25A8DF954();
      v5 = sub_25A9984E8();
      v4 = v6;
    }

    MEMORY[0x25F850290](v5, v4);

    MEMORY[0x25F850290](0x203C2E2E20, 0xE500000000000000);
    if ((a2 & 0x100000000) != 0)
    {
      v14 = 0;
      v16 = 0xE000000000000000;
    }

    else
    {
      sub_25A8DF954();
      v14 = sub_25A9984E8();
      v16 = v15;
    }

    MEMORY[0x25F850290](v14, v16);

    MEMORY[0x25F850290](2112032, 0xE300000000000000);
    v10 = sub_25A998968();
  }

  MEMORY[0x25F850290](v10, v13);

  return 0;
}

uint64_t sub_25A95F72C()
{
  v1 = 0x100000000;
  if (*(v0 + 4))
  {
    v2 = 0x100000000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v0 + 12))
  {
    v3 = 0x100000000;
  }

  else
  {
    v3 = 0;
  }

  if (!*(v0 + 20))
  {
    v1 = 0;
  }

  result = v2 | *v0;
  v5 = v3 | v0[2];
  v6 = v1 | v0[4] | 0x4000000000;
  return result;
}

uint64_t sub_25A95F774()
{
  v1 = *v0;
  if (*v0 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = v0[1];
  if (v1 < 0xFFFFFFFF80000000 || v2 < 0xFFFFFFFF80000000)
  {
    goto LABEL_9;
  }

  if (v2 <= 0x7FFFFFFF)
  {
    return v1;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_25A95F7C0()
{
  v1 = *v0;
  if (*v0 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v2 = v0[1];
  if (v1 < 0xFFFFFFFF80000000 || v2 < 0xFFFFFFFF80000000)
  {
    goto LABEL_10;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!__OFADD__(v2, 1))
  {
    return v1;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_25A95F814()
{
  if (*v0 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (*v0 <= 0x7FFFFFFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_25A95F848()
{
  v1 = *v0;
  if (*v0 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 > 0x7FFFFFFF)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!__OFADD__(v1, 1))
  {
    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_25A95F884()
{
  v1 = *v0;
  if (*v0 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v1 <= 0x7FFFFFFF)
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_25A95F8D4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v4 + 16);

  v10 = v8 + 56;
  v11 = -1 << *(v8 + 32);
  if (-v11 < 64)
  {
    v12 = ~(-1 << -v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v8 + 56);
  if (!a2)
  {
LABEL_18:
    v14 = 0;
    a3 = 0;
LABEL_24:
    *a1 = v8;
    a1[1] = v10;
    a1[2] = ~v11;
    a1[3] = v14;
    a1[4] = v13;
    return a3;
  }

  if (!a3)
  {
    v14 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    result = 0;
    v14 = 0;
    v15 = (63 - v11) >> 6;
    v16 = 1;
    while (v13)
    {
LABEL_14:
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      sub_25A874FB0(*(v8 + 48) + 40 * (v19 | (v14 << 6)), v24);
      v20 = v25;
      v21 = v24[1];
      *a2 = v24[0];
      *(a2 + 16) = v21;
      *(a2 + 32) = v20;
      if (v16 == a3)
      {
        goto LABEL_24;
      }

      a2 += 40;
      result = v16;
      if (__OFADD__(v16++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v17 = v14;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v18 >= v15)
      {
        break;
      }

      v13 = *(v10 + 8 * v18);
      ++v17;
      if (v13)
      {
        v14 = v18;
        goto LABEL_14;
      }
    }

    v13 = 0;
    if (v15 <= (v14 + 1))
    {
      v23 = v14 + 1;
    }

    else
    {
      v23 = (63 - v11) >> 6;
    }

    v14 = v23 - 1;
    a3 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_25A95FA60(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v7 = *(v3 + 16);
  mlx_array_ndim(v7);
  result = mlx_array_dim(v7, 0);
  v33 = result;
  v30 = a1;
  if (!a2)
  {
    result = 0;
    v9 = -1;
LABEL_22:
    *v30 = v9;
    v30[1] = v33;
    v30[2] = v4;
    return result;
  }

  if (!a3)
  {
    result = 0;
    v9 = -1;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (result < 1)
    {
      v9 = 0;
      result = result & ~(result >> 63);
    }

    else
    {
      v28 = result & ~(result >> 63);
      v29 = a3;
      v9 = 0;
      v31 = a3 - 1;
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04938, &unk_25A9FF210);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_25A9F8D90;
        *(inited + 32) = v9;
        v11 = inited + 32;
        *(inited + 56) = MEMORY[0x277D83B88];
        *(inited + 64) = &off_286C13520;
        if (qword_27FA043D8 != -1)
        {
          swift_once();
        }

        sub_25A998C58();
        v12 = v34[0];
        v37 = MEMORY[0x277D84F90];
        sub_25A937610(0, 1, 0);
        v13 = v37;
        sub_25A872F24(v11, v34);

        v14 = v35;
        v15 = v36;
        __swift_project_boxed_opaque_existential_1(v34, v35);
        v16 = (*(v15 + 8))(v14, v15);
        v18 = v17;
        v20 = v19;
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        v22 = *(v13 + 16);
        v21 = *(v13 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_25A937610((v21 > 1), v22 + 1, 1);
          v13 = v37;
        }

        *(v13 + 16) = v22 + 1;
        v23 = v13 + 24 * v22;
        *(v23 + 32) = v16;
        *(v23 + 40) = v18;
        *(v23 + 52) = BYTE4(v20);
        *(v23 + 48) = v20;
        if (v22)
        {
          if (v22 == -1)
          {

            v24 = v4;
          }

          else
          {
            v24 = sub_25A959F3C(v4, v13, v12);
          }
        }

        else
        {
          v25 = *(v13 + 32);
          v26 = *(v13 + 40);
          v27 = *(v13 + 48) | (*(v13 + 52) << 32);
          sub_25A961328(v25, v26, v27);

          v24 = sub_25A959B04(v4, v25, v26, v27, v12);

          sub_25A960974(v25, v26, v27);
        }

        *(a2 + 8 * v9) = v24;
        if (v31 == v9)
        {
          break;
        }

        if (v33 == ++v9)
        {
          result = v28;
          goto LABEL_22;
        }
      }

      result = v29;
    }

    goto LABEL_22;
  }

  __break(1u);
  return result;
}

void *sub_25A95FD9C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_25A874FB0(*(a4 + 48) + 40 * (v17 | (v12 << 6)), v22);
      v18 = v23;
      v19 = v22[1];
      *v11 = v22[0];
      *(v11 + 16) = v19;
      *(v11 + 32) = v18;
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_25A95FF04(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_25A87500C(*(a4 + 56) + ((v12 << 11) | (32 * v17)), v20);
      sub_25A872D74(v20, v21);
      sub_25A872D74(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 2;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_25A960070(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  sub_25A998A48();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);
  if (v8 + 8 * v6 + 8 * v7 != v9 + 8 * v10 + 32)
  {

    goto LABEL_9;
  }

  v11 = *(v9 + 24);

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_25A9373B8(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = result + 32;
        result = memcpy((result + 32), (v1[1] + 8 * v14), 8 * (v4 - v14));
        if (!__OFSUB__(0, v14))
        {
          v16 = *(v5 + 16);
          v13 = __OFADD__(v14, v16);
          v17 = v14 + v16;
          if (!v13)
          {
            if (v17 >= v14)
            {
              if ((v17 & 0x8000000000000000) == 0)
              {
                v18 = (2 * v17) | 1;
                v19 = *v1;
                result = swift_unknownObjectRelease();
                v1[1] = v15 - 8 * v14;
                v1[2] = v14;
                v1[3] = v18;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_25A9601E8(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = v4[2];
  v7 = v4[3] >> 1;
  result = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    __break(1u);
    goto LABEL_32;
  }

  v10 = *a1;
  v11 = *(*a1 + 16);
  v30 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v30)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v14 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v15 = result - a2;
  if (__OFSUB__(result, a2))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v30 = __OFSUB__(v15, v14);
  v16 = v15 - v14;
  if (v30)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v39 = v16;
  v18 = (v10 + 32);
  v19 = v10 + 32 + 8 * a2;
  v37 = v10;
  v38 = (v19 + 8 * a3);
  result = sub_25A9606B0(result);
  if (result)
  {
    v20 = result;
    v36 = a4;
    v21 = v4[2];
    v22 = (v4[1] + 8 * v21);
    v23 = &v22[8 * a2];
    if (v18 != v22 || v18 >= v23)
    {
      memmove(v18, v22, 8 * a2);
    }

    v36(v19, a3);
    v24 = &v23[8 * v39];
    if (v38 != v24 || v38 >= &v24[8 * v14])
    {
      memmove(v38, v24, 8 * v14);
    }

    *(v20 + 16) = 0;
  }

  else
  {
    v21 = v4[2];
    v26 = v21 + a2;
    if (__OFADD__(v21, a2))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v26 < v21)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v26, v21))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v27 = v4[1];
    memcpy(v18, (v27 + 8 * v21), 8 * a2);
    result = (a4)(&v18[8 * a2], a3);
    v28 = v26 + v39;
    if (__OFADD__(v26, v39))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v29 = v4[3] >> 1;
    v30 = __OFSUB__(v29, v28);
    v31 = v29 < v28;
    v32 = v29 - v28;
    if (v31)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v30)
    {
LABEL_45:
      __break(1u);
      return result;
    }

    memcpy(v38, (v27 + 8 * v28), 8 * v32);
  }

  v33 = *v4;
  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v21))
  {
    goto LABEL_36;
  }

  result = v37;
  v34 = *(v37 + 16);
  v30 = __OFADD__(v21, v34);
  v35 = v21 + v34;
  if (v30)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v35 < v21)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v35 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *v4 = v37;
  v4[1] = &v18[-8 * v21];
  v4[2] = v21;
  v4[3] = (2 * v35) | 1;
}

uint64_t sub_25A96041C(uint64_t result)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  v8 = *v1;
  sub_25A998A48();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x277D84F90];
  }

  v9 = *(result + 16);
  v5 = __OFADD__(v9, v7);
  v10 = v9 + v7;
  if (v5)
  {
    goto LABEL_13;
  }

  *(result + 16) = v10;

  v11 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v11 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v1[3] = v3 & 1 | (2 * v11);
  return result;
}

void *sub_25A9604D4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_25A998A48();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(v11 + 16);
  v13 = a4 + 8 * a5 + 8 * v8;
  if (v13 == v11 + 8 * v12 + 32)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x277D84F90];
    }

    v18 = *(v17 + 16);
    if (v13 == v17 + 8 * v18 + 32)
    {
      v20 = *(v17 + 24);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x277D84F90];
  }

  v19 = *(v17 + 16);
  if (v13 == v17 + 8 * v19 + 32)
  {
    v23 = *(v17 + 24);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_25A9373B8(v6, v25);
}

uint64_t sub_25A9606B0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v7 = v1[2];
  v6 = v1[3];
  v8 = (v6 >> 1) - v7;
  if (__OFSUB__(v6 >> 1, v7))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *v1;
  v10 = v1[1] + 8 * v7;
  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_25A998A48();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(v11 + 16);
  if (v10 + 8 * v8 != v11 + 8 * v12 + 32)
  {

LABEL_8:
    v13 = v8;
    goto LABEL_10;
  }

  v14 = *(v11 + 24);

  v15 = (v14 >> 1) - v12;
  v16 = __OFADD__(v8, v15);
  v13 = v8 + v15;
  if (v16)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v13 < a1)
  {
    return 0;
  }

  sub_25A998A48();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x277D84F90];
  }

  v17 = v10 - result - 25;
  if (v10 - result - 32 >= 0)
  {
    v17 = v10 - result - 32;
  }

  v16 = __OFADD__(v8, v17 >> 3);
  v6 = v8 + (v17 >> 3);
  if (v16)
  {
    goto LABEL_20;
  }

  v5 = *(result + 16);
  if (v6 < v5)
  {
LABEL_21:
    v18 = result;
    sub_25A96B6C8(v6, v5, 0);
    return v18;
  }

  return result;
}

uint64_t sub_25A960810(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 48;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = v3 + 24 * v1;
  while (1)
  {
    if (v2 == v1)
    {
      v18 = *(v4 + 16);

      return v18;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_23;
    }

    v7 = *(v5 - 16);
    v8 = *(v5 - 8);
    v9 = *(v5 + 4);
    v10 = *v5;
    v5 += 24;
    v11 = v10 | (v9 << 32);
    ++v1;
    if (((v11 >> 38) & 3) != 3 || v7 != 1 || v8 != 0 || (v11 & 0xFFFFFFFFFFLL) != 0xC000000000)
    {
      sub_25A961328(v7, v8, v11);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_25A937610(0, *(v4 + 16) + 1, 1);
      }

      v16 = *(v4 + 16);
      v15 = *(v4 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_25A937610((v15 > 1), v16 + 1, 1);
      }

      *(v4 + 16) = v16 + 1;
      v17 = v4 + 24 * v16;
      *(v17 + 32) = v7;
      *(v17 + 40) = v8;
      *(v17 + 52) = BYTE4(v11);
      *(v17 + 48) = v11;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_25A960974(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (((a3 >> 38) & 3) == 2)
  {
  }

  return result;
}

uint64_t sub_25A960988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 0x100000000) != 0)
  {
    if ((a4 & 0x100000000) == 0)
    {
      return 0;
    }

    goto LABEL_6;
  }

  v6 = a1;
  result = 0;
  if ((a4 & 0x100000000) == 0 && v6 == a4)
  {
LABEL_6:
    if ((a2 & 0x100000000) == 0)
    {
      result = 0;
      if ((a5 & 0x100000000) != 0 || a2 != a5)
      {
        return result;
      }

      goto LABEL_11;
    }

    if ((a5 & 0x100000000) != 0)
    {
LABEL_11:
      if ((a3 & 0x100000000) != 0)
      {
        if ((a6 & 0x100000000) != 0)
        {
          return 1;
        }
      }

      else if ((a6 & 0x100000000) == 0 && a3 == a6)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_25A9609F0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  v5 = result + 16;
  v6 = MEMORY[0x277D84F90];
  v7 = a2;
  v8 = a2;
  v22 = result + 16;
LABEL_2:
  v9 = v5 + 24 * v7;
  while (1)
  {
    if (v4 == v8)
    {
      v21 = *(v6 + 16);

      return v21;
    }

    if (v7 < a2 || v8 >= v4)
    {
      break;
    }

    v10 = *(v9 - 16);
    v11 = *(v9 - 8);
    v12 = *(v9 + 4);
    v13 = *v9;
    v9 += 24;
    v14 = v13 | (v12 << 32);
    ++v8;
    if (v12 >> 6 < 3uLL || v10 != 1 || v11 != 0 || v14 != 0xC000000000)
    {
      sub_25A961328(v10, v11, v14);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_25A937610(0, *(v6 + 16) + 1, 1);
      }

      v19 = *(v6 + 16);
      v18 = *(v6 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_25A937610((v18 > 1), v19 + 1, 1);
      }

      *(v6 + 16) = v19 + 1;
      v20 = v6 + 24 * v19;
      *(v20 + 32) = v10;
      *(v20 + 40) = v11;
      *(v20 + 52) = BYTE4(v14);
      *(v20 + 48) = v14;
      v7 = v8;
      v5 = v22;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void *sub_25A960B50(void *result)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    goto LABEL_49;
  }

  v5 = result[4];
  v36 = result[3] >> 1;
  if (v5 == v36)
  {
    return result;
  }

  v31 = result[2];
  if (v5 < v31 || v5 >= v36)
  {
    goto LABEL_50;
  }

  v7 = v1;
  v8 = v5 + 1;
  v9 = *(result[1] + 8 * v5);
  v30 = result[1];
  while (!__OFADD__(v4, 1))
  {
    v37 = sub_25A9604D4(v4, v4 + 1, *v7, v7[1], v3, v2);
    v11 = sub_25A960694();
    v12 = v7;
    sub_25A9601E8(&v37, v4, 0, v11);

    v3 = v7[2];
    v2 = v7[3];
    v13 = (v2 >> 1) - v3;
    if (__OFSUB__(v2 >> 1, v3))
    {
      goto LABEL_44;
    }

    v33 = v2 >> 1;
    v32 = v7[1];
    v14 = v32 + 8 * v3;
    v34 = *v7;
    if (v2)
    {
      v35 = v7[3];
      sub_25A998A48();
      swift_unknownObjectRetain();
      v15 = swift_dynamicCastClass();
      if (!v15)
      {
        swift_unknownObjectRelease();
        v15 = MEMORY[0x277D84F90];
      }

      v16 = *(v15 + 16);
      if (v14 + 8 * v13 == v15 + 8 * v16 + 32)
      {
        v18 = *(v15 + 24);

        v19 = (v18 >> 1) - v16;
        v20 = __OFADD__(v13, v19);
        v17 = v13 + v19;
        if (v20)
        {
          goto LABEL_48;
        }

        v7 = v12;
      }

      else
      {

        v17 = v13;
      }

      v2 = v35;
      if (v4 >= v17)
      {
LABEL_33:
        v10 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      v17 = (v2 >> 1) - v3;
      if (v4 >= v13)
      {
        goto LABEL_33;
      }
    }

    *(v14 + 8 * v4) = v9;
    v21 = v4 + 1;
    if (v8 != v36)
    {
      v22 = 0;
      while (1)
      {
        if (v8 < v31)
        {
          goto LABEL_42;
        }

        v23 = v22;
        if (v8 + v22 >= v36)
        {
          goto LABEL_42;
        }

        v9 = *(v30 + 8 * v8 + 8 * v22);
        if (!(v21 - v17 + v22))
        {
          break;
        }

        *(v32 + 8 * v4 + 8 * v3 + 8 + 8 * v22++) = v9;
        if (!(v8 - v36 + v23 + 1))
        {
          v9 = 0;
          v4 = v21 + v22;
          v8 = v36;
LABEL_31:
          v10 = v21 + v23 < v17;
          goto LABEL_34;
        }
      }

      v8 += v22 + 1;
      v4 = v17;
      goto LABEL_31;
    }

    v9 = 0;
    v10 = 1;
    v8 = v36;
    ++v4;
LABEL_34:
    v24 = v4 - v13;
    if (__OFSUB__(v4, v13))
    {
      goto LABEL_45;
    }

    if (v24)
    {
      v25 = v10;
      v26 = v2;
      sub_25A998A48();
      swift_unknownObjectRetain();
      result = swift_dynamicCastClass();
      if (!result)
      {
        swift_unknownObjectRelease();
        result = MEMORY[0x277D84F90];
      }

      v27 = result[2];
      v20 = __OFADD__(v27, v24);
      v28 = v27 + v24;
      if (v20)
      {
        goto LABEL_46;
      }

      result[2] = v28;

      v29 = v33 + v24;
      if (__OFADD__(v33, v24))
      {
        goto LABEL_47;
      }

      if ((v29 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_42:
        __break(1u);
        break;
      }

      v2 = v26 & 1 | (2 * v29);
      v7[3] = v2;
      v10 = v25;
    }

    if (v10)
    {
      return result;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
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
  return result;
}

void *sub_25A960E60(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v32 = result;
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = v4[2];
  v7 = v4[3];
  v9 = (v7 >> 1) - v8;
  if (__OFSUB__(v7 >> 1, v8))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v16 = v9;
    goto LABEL_10;
  }

  v13 = *v4;
  v12 = v4[1];
  sub_25A998A48();
  swift_unknownObjectRetain();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
    v14 = MEMORY[0x277D84F90];
  }

  v15 = *(v14 + 16);
  if (v12 + 8 * v8 + 8 * v9 != v14 + 8 * v15 + 32)
  {

    goto LABEL_8;
  }

  v17 = *(v14 + 24);

  v18 = (v17 >> 1) - v15;
  v19 = __OFADD__(v9, v18);
  v16 = v9 + v18;
  if (v19)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_10:
  result = (v9 + v6);
  if (__OFADD__(v9, v6))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v16 < result)
  {
    if (v16 + 0x4000000000000000 < 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v20 = 2 * v16;
    if (v20 > result)
    {
      result = v20;
    }
  }

  result = sub_25A960070(result);
  v22 = v4[2];
  v21 = v4[3];
  v23 = (v21 >> 1) - v22;
  if (__OFSUB__(v21 >> 1, v22))
  {
    goto LABEL_37;
  }

  v24 = (v4[1] + 8 * v22 + 8 * v23);
  if ((v21 & 1) == 0)
  {
LABEL_21:
    v28 = v23;
    goto LABEL_23;
  }

  v25 = *v4;
  sub_25A998A48();
  swift_unknownObjectRetain();
  v26 = swift_dynamicCastClass();
  if (!v26)
  {
    swift_unknownObjectRelease();
    v26 = MEMORY[0x277D84F90];
  }

  v27 = *(v26 + 16);
  if (v24 != (v26 + 8 * v27 + 32))
  {

    goto LABEL_21;
  }

  v29 = *(v26 + 24);

  v30 = (v29 >> 1) - v27;
  v19 = __OFADD__(v23, v30);
  v28 = v23 + v30;
  if (v19)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_23:
  v31 = v28 - v23;
  if (__OFSUB__(v28, v23))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      v6 = 0;
      v5 = a3;
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  if (v31 < v6)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  result = memcpy(v24, (a2 + 8 * a3), 8 * v6);
  if (v6 > 0)
  {
    result = (v23 + v6);
    if (__OFADD__(v23, v6))
    {
LABEL_44:
      __break(1u);
      return result;
    }

    result = sub_25A96041C(result);
  }

LABEL_31:
  if (v6 == v31)
  {
    v34[0] = v32;
    v34[1] = a2;
    v34[2] = a3;
    v34[3] = a4;
    v34[4] = v5;
    return sub_25A960B50(v34);
  }

  return result;
}

uint64_t sub_25A96109C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      return MEMORY[0x277D84F90];
    }

    v6 = result;
    v8 = sub_25A998158();
    v9 = v8;
    *(v8 + 16) = a4;
    *(v8 + 32) = v6;
    *(v8 + 40) = a2;
    *(v8 + 48) = a3;
    *(v8 + 52) = BYTE4(a3);
    v10 = a4 - 1;
    if (v10)
    {
      v11 = v8 + 72;
      do
      {
        sub_25A961328(v6, a2, a3);
        *(v11 - 16) = v6;
        *(v11 - 8) = a2;
        *v11 = a3;
        *(v11 + 4) = BYTE4(a3);
        v11 += 24;
        --v10;
      }

      while (v10);
    }

    sub_25A961328(v6, a2, a3);
    return v9;
  }

  return result;
}

uint64_t sub_25A961168(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  v4 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v6 = result;
  v19 = MEMORY[0x277D84F90];
  result = sub_25A93A530(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  result = v19;
  v18 = a2;
  if (v4)
  {
    if (a2 <= v3)
    {
      v7 = v3;
    }

    else
    {
      v7 = a2;
    }

    v8 = a2;
    while (v3 != v8)
    {
      if (v7 == v8)
      {
        goto LABEL_28;
      }

      v9 = *(v6 + 8 * v8);
      if (v9 < 0xFFFFFFFF80000000)
      {
        goto LABEL_29;
      }

      if (v9 > 0x7FFFFFFF)
      {
        goto LABEL_30;
      }

      v20 = result;
      v11 = *(result + 16);
      v10 = *(result + 24);
      if (v11 >= v10 >> 1)
      {
        sub_25A93A530(v10 > 1, v11 + 1, 1);
        result = v20;
      }

      ++v8;
      *(result + 16) = v11 + 1;
      *(result + 4 * v11 + 32) = v9;
      if (v3 == v8)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v8 = a2;
LABEL_17:
  v12 = v3 - v8;
  if (v3 != v8)
  {
    if (v3 <= v8)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v8 < v18)
    {
LABEL_36:
      __break(1u);
      return result;
    }

    v13 = (v6 + 8 * v8);
    while (1)
    {
      v15 = *v13++;
      v14 = v15;
      if (v15 < 0xFFFFFFFF80000000)
      {
        goto LABEL_31;
      }

      if (v14 > 0x7FFFFFFF)
      {
        goto LABEL_32;
      }

      v21 = result;
      v17 = *(result + 16);
      v16 = *(result + 24);
      if (v17 >= v16 >> 1)
      {
        sub_25A93A530(v16 > 1, v17 + 1, 1);
        result = v21;
      }

      *(result + 16) = v17 + 1;
      *(result + 4 * v17 + 32) = v14;
      if (!--v12)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_25A961328(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (((a3 >> 38) & 3) == 2)
  {
  }

  return result;
}

unint64_t sub_25A96133C()
{
  result = qword_27FA05688;
  if (!qword_27FA05688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA05680, &qword_25A9FF208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05688);
  }

  return result;
}

uint64_t sub_25A9613A0(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
    v4 = sub_25A998158();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8Morpheus22MLXArrayIndexOperationO(uint64_t a1)
{
  v1 = *(a1 + 20) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_25A96146C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 21))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 8) >> 29) & 0xFFFFFFF0 | (*a1 >> 60);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_25A9614C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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
      *result = -a2 << 60;
      *(result + 8) = (-a2 << 29) & 0x1FFFFFFE00000000;
      *(result + 20) = 0;
      *(result + 16) = 0;
      return result;
    }

    *(result + 21) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25A961520(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = a1 + 16;
  v3 = v2 | (*(result + 4) << 32);
  *result = v2;
  *(result + 4) = BYTE4(v3) & 0x3F;
  return result;
}

int8x16_t sub_25A96153C(int8x16_t *a1, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = a1[1].i32[0];
    v3 = (a2 << 38) | ((a1[1].i8[4] & 1) << 32);
    result = vandq_s8(*a1, xmmword_25A9FF0B0);
    *a1 = result;
    a1[1].i32[0] = v2;
    a1[1].i8[4] = BYTE4(v3);
  }

  else
  {
    a1->i64[0] = (a2 - 3);
    a1->i64[1] = 0;
    a1[1].i32[0] = 0;
    a1[1].i8[4] = -64;
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

uint64_t sub_25A9615C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25A96160C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_25A961670()
{
  result = qword_27FA05690;
  if (!qword_27FA05690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05690);
  }

  return result;
}

uint64_t sub_25A9616CC()
{
  swift_beginAccess();
  v1 = mlx_array_ndim(*(v0 + 16));
  v2 = MEMORY[0x277D84F90];
  if (v1 < 1)
  {
    return v2;
  }

  result = mlx_array_shape(*(v0 + 16));
  v4 = result;
  if (result)
  {
    sub_25A937570(0, v1, 0);
    v5 = *(v2 + 16);
    do
    {
      v7 = *v4++;
      v6 = v7;
      v8 = *(v2 + 24);
      if (v5 >= v8 >> 1)
      {
        sub_25A937570((v8 > 1), v5 + 1, 1);
      }

      *(v2 + 16) = v5 + 1;
      *(v2 + 8 * v5++ + 32) = v6;
      --v1;
    }

    while (v1);
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_25A9617F0()
{
  v1 = *v0;
  swift_beginAccess();
  return mlx_array_ndim(*(v1 + 16));
}

uint64_t sub_25A961838()
{
  v1 = *v0;
  swift_beginAccess();
  return mlx_array_size(*(v1 + 16));
}

uint64_t *sub_25A961880(unsigned __int8 a1, uint64_t a2)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v5 = *v2;
  swift_beginAccess();
  v6 = mlx_array_dtype(v2[2]);
  if (sub_25A956420(v6) == a1)
  {
  }

  else
  {
    v10[0] = mlx_array_new();
    mlx_astype(v10, v2[2], dword_25A9FF448[a1], *(a2 + 16));
    v7 = v10[0];
    v2 = swift_allocObject();
    v2[2] = v7;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_25A961988(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A961990);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A9619A8()
{
  swift_beginAccess();
  mlx_array_free(*(v0 + 16));
  return swift_deallocClassInstance();
}

uint64_t sub_25A961A18()
{
  swift_beginAccess();
  v1 = mlx_array_ndim(*(v0 + 16));
  v2 = MEMORY[0x277D84F90];
  if (v1 < 1)
  {
    return v2;
  }

  result = mlx_array_strides(*(v0 + 16));
  v4 = result;
  if (result)
  {
    sub_25A937570(0, v1, 0);
    v5 = *(v2 + 16);
    do
    {
      v7 = *v4++;
      v6 = v7;
      v8 = *(v2 + 24);
      if (v5 >= v8 >> 1)
      {
        sub_25A937570((v8 > 1), v5 + 1, 1);
      }

      *(v2 + 16) = v5 + 1;
      *(v2 + 8 * v5++ + 32) = v6;
      --v1;
    }

    while (v1);
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_25A961B18()
{
  v7[5] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  if (mlx_array_size(*(v0 + 16)) == 1)
  {
    if (qword_27FA043E0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v1 = qword_27FA0FD28;
  [qword_27FA0FD28 lock];
  mlx_array_eval(*(v0 + 16));
  [v1 unlock];
  v2 = mlx_array_dtype(*(v0 + 16));
  v3 = sub_25A956420(v2);
  if (v3 <= 3)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        LOWORD(v7[0]) = 0;
        mlx_array_item_uint16(v7, *(v0 + 16));
        result = LOWORD(v7[0]);
      }

      else
      {
        LODWORD(v7[0]) = 0;
        mlx_array_item_uint32(v7, *(v0 + 16));
        result = LODWORD(v7[0]);
      }
    }

    else
    {
      LOBYTE(v7[0]) = 0;
      if (v3)
      {
        mlx_array_item_uint8(v7, *(v0 + 16));
      }

      else
      {
        mlx_array_item_BOOL(v7, *(v0 + 16));
      }

      result = LOBYTE(v7[0]);
    }

    goto LABEL_23;
  }

  if (v3 <= 5)
  {
    if (v3 != 4)
    {
      LOBYTE(v7[0]) = 0;
      mlx_array_item_int8(v7, *(v0 + 16));
      result = SLOBYTE(v7[0]);
      goto LABEL_23;
    }

    v7[0] = 0;
    mlx_array_item_uint64(v7, *(v0 + 16));
    result = v7[0];
    if ((v7[0] & 0x8000000000000000) == 0)
    {
      goto LABEL_23;
    }

    __break(1u);
LABEL_21:
    LOWORD(v7[0]) = 0;
    mlx_array_item_int16(v7, *(v0 + 16));
    result = SLOWORD(v7[0]);
    goto LABEL_23;
  }

  switch(v3)
  {
    case 6:
      goto LABEL_21;
    case 7:
      LODWORD(v7[0]) = 0;
      mlx_array_item_int32(v7, *(v0 + 16));
      result = SLODWORD(v7[0]);
      goto LABEL_23;
    case 8:
      v7[0] = 0;
      mlx_array_item_int64(v7, *(v0 + 16));
      result = v7[0];
LABEL_23:
      v5 = *MEMORY[0x277D85DE8];
      return result;
  }

  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  sub_25A9985F8();
  MEMORY[0x25F850290](0xD000000000000023, 0x800000025AA69A80);
  v6 = mlx_array_dtype(*(v0 + 16));
  sub_25A956420(v6);
  sub_25A9987C8();
  result = sub_25A998818();
  __break(1u);
  return result;
}

void sub_25A961DEC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A961DF4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A961E68()
{
  v7[5] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  if (mlx_array_size(*(v0 + 16)) == 1)
  {
    if (qword_27FA043E0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v1 = qword_27FA0FD28;
  [qword_27FA0FD28 lock];
  mlx_array_eval(*(v0 + 16));
  [v1 unlock];
  v2 = mlx_array_dtype(*(v0 + 16));
  v3 = sub_25A956420(v2);
  if (v3 <= 3)
  {
    goto LABEL_10;
  }

  if (v3 <= 5)
  {
    if (v3 == 4)
    {
      v7[0] = 0;
      mlx_array_item_uint64(v7, *(v0 + 16));
      result = v7[0];
      goto LABEL_27;
    }

    LOBYTE(v7[0]) = 0;
    mlx_array_item_int8(v7, *(v0 + 16));
    result = SLOBYTE(v7[0]);
    if ((SLOBYTE(v7[0]) & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_20;
    }

LABEL_27:
    v5 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (v3 == 6)
  {
    LOWORD(v7[0]) = 0;
    mlx_array_item_int16(v7, *(v0 + 16));
    result = SLOWORD(v7[0]);
    if ((SLOWORD(v7[0]) & 0x8000000000000000) == 0)
    {
      goto LABEL_27;
    }

    __break(1u);
LABEL_26:
    LODWORD(v7[0]) = 0;
    mlx_array_item_int32(v7, *(v0 + 16));
    result = LODWORD(v7[0]);
    if ((v7[0] & 0x80000000) != 0)
    {
      __break(1u);
    }

    goto LABEL_27;
  }

  if (v3 == 7)
  {
    goto LABEL_26;
  }

  if (v3 != 8)
  {
    goto LABEL_31;
  }

  v7[0] = 0;
  mlx_array_item_int64(v7, *(v0 + 16));
  result = v7[0];
  if ((v7[0] & 0x8000000000000000) == 0)
  {
    goto LABEL_27;
  }

  __break(1u);
LABEL_10:
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      LOWORD(v7[0]) = 0;
      mlx_array_item_uint16(v7, *(v0 + 16));
      result = LOWORD(v7[0]);
      goto LABEL_27;
    }

    if (v3 != 3)
    {
      goto LABEL_31;
    }

    LODWORD(v7[0]) = 0;
    mlx_array_item_uint32(v7, *(v0 + 16));
    result = LODWORD(v7[0]);
    goto LABEL_27;
  }

  if (!v3)
  {
LABEL_20:
    LOBYTE(v7[0]) = 0;
    mlx_array_item_BOOL(v7, *(v0 + 16));
    goto LABEL_21;
  }

  if (v3 == 1)
  {
    LOBYTE(v7[0]) = 0;
    mlx_array_item_uint8(v7, *(v0 + 16));
LABEL_21:
    result = LOBYTE(v7[0]);
    goto LABEL_27;
  }

LABEL_31:
  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  sub_25A9985F8();
  MEMORY[0x25F850290](0xD000000000000024, 0x800000025AA69A50);
  v6 = mlx_array_dtype(*(v0 + 16));
  sub_25A956420(v6);
  sub_25A9987C8();
  result = sub_25A998818();
  __break(1u);
  return result;
}

void sub_25A96214C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A962154);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A9621C8()
{
  v13[5] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  if (mlx_array_size(*(v0 + 16)) == 1)
  {
    if (qword_27FA043E0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v1 = qword_27FA0FD28;
  [qword_27FA0FD28 lock];
  mlx_array_eval(*(v0 + 16));
  [v1 unlock];
  v2 = mlx_array_dtype(*(v0 + 16));
  v3 = sub_25A956420(v2);
  switch(v3)
  {
    case 12:
      v13[0] = 0.0;
      result = mlx_array_item_float64(v13, *(v0 + 16));
      goto LABEL_9;
    case 10:
      LODWORD(v13[0]) = 0;
      result = mlx_array_item_float32(v13, *(v0 + 16));
      goto LABEL_9;
    case 9:
      LOWORD(v13[0]) = 0;
      result = mlx_array_item_float16(v13, *(v0 + 16));
      _H0 = LOWORD(v13[0]);
      __asm { FCVT            S0, H0 }

LABEL_9:
      v11 = *MEMORY[0x277D85DE8];
      return result;
  }

  v13[0] = 0.0;
  v13[1] = -2.68156159e154;
  sub_25A9985F8();
  MEMORY[0x25F850290](0xD00000000000002BLL, 0x800000025AA69A20);
  v12 = mlx_array_dtype(*(v0 + 16));
  sub_25A956420(v12);
  sub_25A9987C8();
  result = sub_25A998818();
  __break(1u);
  return result;
}

void sub_25A9623D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A9623DCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A962420()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = sub_25A997E98();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v8[0] = mlx_string_new();
  swift_beginAccess();
  mlx_array_tostring(v8, *(v0 + 16));
  if (!mlx_string_data(v8[0]))
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  sub_25A997E78();
  v3 = sub_25A997E68();
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v3;
  mlx_string_free(v8[0]);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_25A962524(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A96252CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A96256C()
{
  mlx_fast_metal_kernel_free(*(v0 + 16));
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t Int.int32.getter(uint64_t result)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t Array<A>.asInt32.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    sub_25A93A530(0, v2, 0);
    result = v9;
    v4 = (a1 + 32);
    while (1)
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 < 0xFFFFFFFF80000000)
      {
        break;
      }

      if (v5 > 0x7FFFFFFF)
      {
        goto LABEL_10;
      }

      v10 = result;
      v8 = *(result + 16);
      v7 = *(result + 24);
      if (v8 >= v7 >> 1)
      {
        sub_25A93A530(v7 > 1, v8 + 1, 1);
        result = v10;
      }

      *(result + 16) = v8 + 1;
      *(result + 4 * v8 + 32) = v5;
      if (!--v2)
      {
        return result;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t Array<A>.asInt64.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    sub_25A93A534(0, v2, 0);
    result = v9;
    v4 = (a1 + 32);
    v5 = *(v9 + 16);
    do
    {
      v7 = *v4++;
      v6 = v7;
      v10 = result;
      v8 = *(result + 24);
      if (v5 >= v8 >> 1)
      {
        sub_25A93A534(v8 > 1, v5 + 1, 1);
        result = v10;
      }

      *(result + 16) = v5 + 1;
      *(result + 8 * v5++ + 32) = v6;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t *sub_25A9627FC@<X0>(uint64_t *result@<X0>, _DWORD *a2@<X8>)
{
  v2 = *result;
  if (*result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v2 <= 0x7FFFFFFF)
  {
    *a2 = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_25A96289C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t PyClass.__class__.getter@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27FA042E0 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA046B0;
  a1[3] = type metadata accessor for PyBuiltInClass();
  a1[4] = sub_25A892BD4();
  *a1 = v2;
}

uint64_t PyClass.baseClassForName(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = (*(a4 + 64))(a3, a4);
  v9 = result;
  v10 = *(result + 16);
  if (v10)
  {
    v11 = 0;
    v12 = result + 32;
    while (v11 < *(v9 + 16))
    {
      sub_25A872F24(v12, v18);
      v13 = v19;
      v14 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      if ((*(v14 + 56))(v13, v14) == a1 && v15 == a2)
      {

LABEL_12:

        sub_25A872F24(v18, a5);
        return __swift_destroy_boxed_opaque_existential_0Tm(v18);
      }

      v17 = sub_25A9989E8();

      if (v17)
      {
        goto LABEL_12;
      }

      ++v11;
      result = __swift_destroy_boxed_opaque_existential_0Tm(v18);
      v12 += 40;
      if (v10 == v11)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

uint64_t sub_25A962B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  sub_25A87500C(a1, v14);
  type metadata accessor for PyClassMethod();
  if (!swift_dynamicCast())
  {
    return sub_25A87500C(a1, a4);
  }

  v9 = type metadata accessor for PyClassBoundMethod();
  v14[0] = *(v13 + 16);
  v10 = type metadata accessor for Function();
  v11 = sub_25A94EC80(v4, v14, v9, a2, v10, a3, &protocol witness table for Function);
  a4[3] = v9;

  *a4 = v11;
  return result;
}

uint64_t PyClass.attribute(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v38 = a1;
  *(&v38 + 1) = a2;
  v33 = &v38;
  v10 = sub_25A96289C(sub_25A9638E0, v32, &unk_286C0BA68);
  swift_arrayDestroy();
  if ((v10 & 1) == 0)
  {
    goto LABEL_20;
  }

  if (a1 == 0x5F5F6F726D5F5FLL && a2 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    v11 = (*(a4 + 72))(a3, a4);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04870, &qword_25A9F8EE8);
    *(a5 + 24) = result;
    *a5 = v11;
    return result;
  }

  if (a1 == 0x5F7373616C635F5FLL && a2 == 0xE90000000000005FLL || (sub_25A9989E8() & 1) != 0)
  {
    (*(*(a4 + 24) + 8))(&v38, a3);
LABEL_10:
    v13 = v39;
    v14 = __swift_project_boxed_opaque_existential_1(&v38, v39);
    *(a5 + 24) = v13;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a5);
    (*(*(v13 - 8) + 16))(boxed_opaque_existential_0, v14, v13);
    return __swift_destroy_boxed_opaque_existential_0Tm(&v38);
  }

  if (a1 == 0x5F73657361625F5FLL && a2 == 0xE90000000000005FLL || (sub_25A9989E8() & 1) != 0)
  {
    v16 = (*(a4 + 64))(a3, a4);
    v17 = sub_25A930088(v16);

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04788, &unk_25A9FDA20);
    result = swift_allocObject();
    *(result + 16) = v17;
    *(a5 + 24) = v18;
    *a5 = result;
    return result;
  }

  if (a1 == 0x5F5F657361625F5FLL && a2 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    v19 = (*(a4 + 64))(a3, a4);
    if (*(v19 + 16))
    {
      sub_25A872F24(v19 + 32, &v38);

      goto LABEL_10;
    }

    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  else
  {
LABEL_20:
    (*(a4 + 80))(a3, a4);
    v21 = v20;
    ObjectType = swift_getObjectType();
    (*(v21 + 8))(ObjectType, v21);
    swift_unknownObjectRelease();
    LexicalContext.attribute(for:)(a1, a2, &v36);

    if (v37)
    {
      sub_25A872D74(&v36, &v38);
      sub_25A962B3C(&v38, a3, a4, a5);
      return __swift_destroy_boxed_opaque_existential_0Tm(&v38);
    }

    v31 = a5;
    sub_25A878194(&v36, &qword_27FA04458, &unk_25A9F7FB0);
    v23 = a3;
    result = (*(a4 + 72))(a3, a4);
    v24 = *(result + 16);
    if (v24 >= 2)
    {
      v25 = (result + 56);
      v26 = 1;
      while (v26 < v24)
      {
        v27 = *(v25 - 1);
        v28 = *v25;

        PyClass.baseClassForName(_:)(v27, v28, v23, a4, &v36);

        if (v37)
        {
          sub_25A87817C(&v36, &v38);
          v29 = v39;
          v30 = v40;
          __swift_project_boxed_opaque_existential_1(&v38, v39);
          (*(*(v30 + 8) + 8))(&v34, a1, a2, v29);
          if (v35)
          {

            sub_25A872D74(&v34, &v36);
            sub_25A872D74(&v36, v31);
            return __swift_destroy_boxed_opaque_existential_0Tm(&v38);
          }

          sub_25A878194(&v34, &qword_27FA04458, &unk_25A9F7FB0);
          result = __swift_destroy_boxed_opaque_existential_0Tm(&v38);
        }

        else
        {
          result = sub_25A878194(&v36, &qword_27FA047F8, L"D\a\t");
        }

        ++v26;
        v25 += 2;
        if (v24 == v26)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_24:

      *v31 = 0u;
      v31[1] = 0u;
    }
  }

  return result;
}

Swift::Bool __swiftcall PyClass.has(attribute:)(Swift::String attribute)
{
  v3 = v2;
  v4 = v1;
  object = attribute._object;
  countAndFlagsBits = attribute._countAndFlagsBits;
  v29 = attribute;
  v26 = &v29;
  v7 = sub_25A96289C(sub_25A9639E0, v25, &unk_286C0BA68);
  swift_arrayDestroy();
  if (v7)
  {
    goto LABEL_3;
  }

  (*(v3 + 80))(v4, v3);
  v9 = v8;
  ObjectType = swift_getObjectType();
  (*(v9 + 8))(ObjectType, v9);
  swift_unknownObjectRelease();
  v11._countAndFlagsBits = countAndFlagsBits;
  v11._object = object;
  v12 = LexicalContext.has(attribute:)(v11);

  if (v12)
  {
LABEL_3:
    LOBYTE(v13) = 1;
  }

  else
  {
    v13 = (*(v3 + 72))(v4, v3);
    v14 = *(v13 + 16);
    if (v14 < 2)
    {
LABEL_12:

      LOBYTE(v13) = 0;
    }

    else
    {
      v24 = countAndFlagsBits;
      v15 = (v13 + 56);
      v16 = 1;
      while (v16 < v14)
      {
        v17 = *(v15 - 1);
        v18 = *v15;

        PyClass.baseClassForName(_:)(v17, v18, v4, v3, &v27);

        if (v28)
        {
          sub_25A87817C(&v27, &v29);
          v19 = object;
          v21 = v30;
          v20 = v31;
          __swift_project_boxed_opaque_existential_1(&v29, v30);
          v22 = *(v20 + 8);
          object = v19;
          if ((*(v22 + 16))(v24, v19, v21))
          {

            __swift_destroy_boxed_opaque_existential_0Tm(&v29._countAndFlagsBits);
            LOBYTE(v13) = 1;
            return v13;
          }

          LOBYTE(v13) = __swift_destroy_boxed_opaque_existential_0Tm(&v29._countAndFlagsBits);
        }

        else
        {
          LOBYTE(v13) = sub_25A878194(&v27, &qword_27FA047F8, L"D\a\t");
        }

        ++v16;
        v15 += 2;
        if (v14 == v16)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }

  return v13;
}

uint64_t PyClass.store(key:obj:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 80))(a3, a4);
  v7 = v6;
  ObjectType = swift_getObjectType();
  (*(v7 + 8))(ObjectType, v7);
  swift_unknownObjectRelease();
  LexicalContext.store(key:obj:)(a1, a2);
}

uint64_t static PyClass.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 56);
  v7 = v6(a3, a4);
  v9 = v8;
  if (v7 == v6(a3, a4) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_25A9989E8();
  }

  return v12 & 1;
}

uint64_t sub_25A963510(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return PyClass.name.getter(a1, WitnessTable);
}

uint64_t sub_25A9635A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return PyClass.attribute(for:)(a1, a2, a3, WitnessTable, a4);
}

uint64_t sub_25A9636F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return PyClass.name.getter(a1, WitnessTable);
}

uint64_t sub_25A963790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return PyClass.attribute(for:)(a1, a2, a3, WitnessTable, a4);
}

uint64_t sub_25A9638FC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_25A9989E8() & 1;
  }
}

void sub_25A963A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = mlx_array_new();
  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = Array<A>.asInt32.getter(&unk_286C0DCE8);
  v8 = *(a3 + 16);
  mlx_reshape(v11, v6, v7 + 32, 1uLL, v8);

  v9 = v11[0];
  v10 = mlx_array_new();
  swift_beginAccess();
  mlx_take(&v10, v9, *(a2 + 16), v8);
}

void sub_25A963B1C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A963B24);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A963B4C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 56); ; i += 32)
    {
      v7 = *i;
      v9 = *(i - 2);
      v8 = *(i - 1);
      v10[0] = *(i - 3);
      v10[1] = v9;
      v10[2] = v8;
      v11 = v7;

      v5(v10);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_25A963BF0()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_25A963C20@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t sub_25A963C34()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_25A963C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_25A998968();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_25A963C9C(uint64_t a1)
{
  v2 = sub_25A964F9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A963CD8(uint64_t a1)
{
  v2 = sub_25A964F9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A963D14@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA056A0, &qword_25A9FF5C8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA056A8, &qword_25A9FF5D0);
  Description = v8[-1].Description;
  v10 = Description[8];
  MEMORY[0x28223BE20](v8);
  v12 = v24 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A964F9C();
  sub_25A998BF8();
  if (v2)
  {

    (Description[7])(v7, 1, 1, v8);
    sub_25A878194(v7, &qword_27FA056A0, &qword_25A9FF5C8);
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_25A998BC8();
    sub_25A87817C(&v25, v26);
    v8 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v17 = sub_25A998998();
    v16 = MEMORY[0x277D84F90];
    if ((v17 & 1) == 0)
    {
      v8 = &type metadata for AnyDecodable;
      do
      {
        __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
        sub_25A964EA4();
        sub_25A998988();
        sub_25A872D74(&v25, v24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_25A967488(0, *(v16 + 16) + 1, 1, v16);
        }

        v21 = *(v16 + 16);
        v20 = *(v16 + 24);
        if (v21 >= v20 >> 1)
        {
          v16 = sub_25A967488((v20 > 1), v21 + 1, 1, v16);
        }

        *(v16 + 16) = v21 + 1;
        sub_25A872D74(v24, (v16 + 32 * v21 + 32));
        __swift_project_boxed_opaque_existential_1(v26, v27);
      }

      while ((sub_25A998998() & 1) == 0);
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
    v19 = v16 & 0xFFFFFFFFFFFFFF00;
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  else
  {
    (Description[7])(v7, 0, 1, v8);
    (Description[4])(v12, v7, v8);
    v26[0] = MEMORY[0x277D84F98];
    v15 = sub_25A998948();
    MEMORY[0x28223BE20](v15);
    *&v24[-1] = v26;
    *(&v24[-1] + 1) = v12;
    sub_25A963B4C(sub_25A965030, &v24[-2], v15);

    v16 = v26[0];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA048F0, "2K\a");
    v19 = v16 & 0xFFFFFFFFFFFFFF00;
    (Description[1])(v12, v8);
  }

  v22 = v29;
  *v29 = v19 | v16;
  v22[1] = v8;
  v22[3] = v18;
  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_25A9644AC(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA056A8, &qword_25A9FF5D0);
  sub_25A964EA4();
  sub_25A998938();
  if (v1)
  {
  }

  sub_25A872D74(&v7, v8);
  return sub_25A8F2ED0(v8, v3, v2);
}

uint64_t sub_25A96459C()
{
  v1 = MEMORY[0x277D837D0];
  v2 = *(v0 + 32);
  *(&v22 + 1) = MEMORY[0x277D837D0];
  *&v21 = 0x7364616F6CLL;
  *(&v21 + 1) = 0xE500000000000000;
  v3 = MEMORY[0x277D84F90];
  v4 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v5 = type metadata accessor for Function();
  v6 = swift_allocObject();
  v6[4] = v3;
  v6[5] = v3;
  v6[6] = v3;

  v6[7] = v3;

  v6[8] = v3;

  v6[9] = 0;
  v6[10] = 0;

  v6[11] = 0;
  v6[12] = 0;

  v6[13] = sub_25A92BDB4(v3);
  v6[2] = 0x7364616F6CLL;
  v6[3] = 0xE500000000000000;
  v7 = *(v6 + 5);
  v19[2] = *(v6 + 4);
  v19[3] = v7;
  v20 = v6[12];
  v8 = *(v6 + 3);
  v19[0] = *(v6 + 2);
  v19[1] = v8;
  v6[4] = &unk_286C0D288;
  v6[5] = v3;
  v6[6] = v3;
  v6[7] = v3;
  v6[8] = v3;
  *(v6 + 9) = 0u;
  *(v6 + 11) = 0u;
  sub_25A892B80(v19);
  swift_beginAccess();
  v9 = v6[13];
  v6[13] = v4;

  v6[14] = sub_25A964DF4;
  v6[15] = 0;
  v18 = v5;
  v17[0] = v6;
  LexicalContext.store(key:obj:)(&v21, v17);
  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  __swift_destroy_boxed_opaque_existential_0Tm(&v21);
  v18 = v1;
  v17[0] = 0x73706D7564;
  v17[1] = 0xE500000000000000;
  v10 = sub_25A92BDB4(v3);
  v11 = swift_allocObject();
  v11[4] = v3;
  v11[5] = v3;
  v11[6] = v3;

  v11[7] = v3;

  v11[8] = v3;

  v11[9] = 0;
  v11[10] = 0;

  v11[11] = 0;
  v11[12] = 0;

  v11[13] = sub_25A92BDB4(v3);
  v11[2] = 0x73706D7564;
  v11[3] = 0xE500000000000000;
  v12 = *(v11 + 5);
  v23 = *(v11 + 4);
  v24 = v12;
  v25 = v11[12];
  v13 = *(v11 + 3);
  v21 = *(v11 + 2);
  v22 = v13;
  v11[4] = &unk_286C0D2B8;
  v11[5] = v3;
  v11[6] = v3;
  v11[7] = v3;
  v11[8] = v3;
  *(v11 + 9) = 0u;
  *(v11 + 11) = 0u;
  sub_25A892B80(&v21);
  swift_beginAccess();
  v14 = v11[13];
  v11[13] = v10;

  v11[14] = sub_25A964E20;
  v11[15] = 0;
  v16[3] = v5;
  v16[0] = v11;
  LexicalContext.store(key:obj:)(v17, v16);
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  return __swift_destroy_boxed_opaque_existential_0Tm(v17);
}

_OWORD *sub_25A964848@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_25A997E98();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v10 = sub_25A8F3600(115, 0xE100000000000000), (v11 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v10, v21), (swift_dynamicCast() & 1) != 0) && (sub_25A997E78(), v12 = sub_25A997E38(), v14 = v13, , (*(v6 + 8))(v9, v5), v14 >> 60 != 15))
  {
    v17 = sub_25A997998();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    sub_25A997988();
    sub_25A964EA4();
    sub_25A997968();
    sub_25A8F7E3C(v12, v14);

    if (!v2)
    {
      return sub_25A872D74(v21, a2);
    }
  }

  else
  {
    sub_25A874F54();
    swift_allocError();
    *v15 = -108;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25A964A60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = sub_25A997E98();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  if (*(a1 + 16) && (v6 = sub_25A8F3600(6972015, 0xE300000000000000), (v7 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v6, &v24);
    sub_25A872D74(&v24, v26);
    static MorpheusUtils.unwrapMorpheusResult(result:)(v26, &v24);
    v8 = objc_opt_self();
    __swift_project_boxed_opaque_existential_1(&v24, v25);
    v23 = 0;
    v9 = [v8 dataWithJSONObject:sub_25A9989D8() options:0 error:&v23];
    swift_unknownObjectRelease();
    v10 = v23;
    if (v9)
    {
      v11 = sub_25A997B58();
      v13 = v12;

      sub_25A997E78();
      v14 = sub_25A997E48();
      v16 = v15;
      if (v15)
      {
        v17 = v14;
        sub_25A8F1C54(v11, v13);
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        result = __swift_destroy_boxed_opaque_existential_0Tm(&v24);
        v19 = MEMORY[0x277D837D0];
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        sub_25A8F1C54(v11, v13);
        result = __swift_destroy_boxed_opaque_existential_0Tm(&v24);
        v17 = 0;
        v19 = 0;
        a2[2] = 0;
      }

      *a2 = v17;
      a2[1] = v16;
      a2[3] = v19;
    }

    else
    {
      v21 = v10;
      sub_25A997AA8();

      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      result = __swift_destroy_boxed_opaque_existential_0Tm(&v24);
    }
  }

  else
  {
    sub_25A874F54();
    swift_allocError();
    *v20 = -107;
    result = swift_willThrow();
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A964CB4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

void *sub_25A964CE4()
{
  v0[2] = 1852797802;
  v0[3] = 0xE400000000000000;
  type metadata accessor for LexicalContext();
  v1 = swift_allocObject();
  v1[2] = 0x6E776F6E6B6E55;
  v1[3] = 0xE700000000000000;
  v2 = MEMORY[0x277D84F90];
  v3 = sub_25A98E540(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04620, &unk_25A9FDA10);
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F98];
  swift_beginAccess();
  *(v4 + 16) = v3;
  v1[4] = v4;
  v1[5] = sub_25A98E67C(v2);
  v0[4] = v1;
  return v0;
}

uint64_t sub_25A964E4C(uint64_t a1, void (*a2)(void))
{
  sub_25A936F00(a1);
  a2();
}

unint64_t sub_25A964EA4()
{
  result = qword_27FA05698;
  if (!qword_27FA05698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05698);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25A964F04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25A964F4C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_25A964F9C()
{
  result = qword_27FA056B0;
  if (!qword_27FA056B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA056B0);
  }

  return result;
}

uint64_t sub_25A964FF0()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25A965030(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_25A9644AC(a1);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_25A965060(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_25A9650A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25A965100()
{
  result = qword_27FA056C8;
  if (!qword_27FA056C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA056C8);
  }

  return result;
}

unint64_t sub_25A965158()
{
  result = qword_27FA056D0;
  if (!qword_27FA056D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA056D0);
  }

  return result;
}

void *sub_25A9651AC()
{
  v0[2] = 0x7365707974;
  v0[3] = 0xE500000000000000;
  type metadata accessor for LexicalContext();
  v1 = swift_allocObject();
  v1[2] = 0x6E776F6E6B6E55;
  v1[3] = 0xE700000000000000;
  v2 = MEMORY[0x277D84F90];
  v3 = sub_25A98E540(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04620, &unk_25A9FDA10);
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F98];
  swift_beginAccess();
  *(v4 + 16) = v3;
  v1[4] = v4;
  v1[5] = sub_25A98E67C(v2);
  v0[4] = v1;
  return v0;
}

uint64_t sub_25A96529C()
{
  v1 = v0;
  v2 = *(v0 + 32);
  v3 = MEMORY[0x277D837D0];
  v17 = MEMORY[0x277D837D0];
  strcpy(v16, "FunctionType");
  BYTE5(v16[1]) = 0;
  HIWORD(v16[1]) = -5120;
  v4 = qword_27FA04308;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_27FA046D8;
  v6 = type metadata accessor for PyBuiltInClass();
  v15 = v6;
  v14[0] = v5;

  LexicalContext.store(key:obj:)(v16, v14);

  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  v7 = *(v1 + 32);
  v17 = v3;
  strcpy(v16, "MethodType");
  BYTE3(v16[1]) = 0;
  HIDWORD(v16[1]) = -369098752;
  v8 = qword_27FA04300;

  if (v8 != -1)
  {
    swift_once();
  }

  v15 = v6;
  v14[0] = qword_27FA046D0;

  LexicalContext.store(key:obj:)(v16, v14);

  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  v9 = *(v1 + 32);
  v17 = v3;
  v16[0] = 0xD000000000000013;
  v16[1] = 0x800000025AA69B90;
  v10 = qword_27FA042F0;

  if (v10 != -1)
  {
    swift_once();
  }

  v15 = v6;
  v14[0] = qword_27FA046C0;

  LexicalContext.store(key:obj:)(v16, v14);

  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  v11 = *(v1 + 32);
  v17 = v3;
  strcpy(v16, "ModuleType");
  BYTE3(v16[1]) = 0;
  HIDWORD(v16[1]) = -369098752;
  v12 = qword_27FA042E8;

  if (v12 != -1)
  {
    swift_once();
  }

  v15 = v6;
  v14[0] = qword_27FA046B8;

  LexicalContext.store(key:obj:)(v16, v14);

  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  return __swift_destroy_boxed_opaque_existential_0Tm(v16);
}

void *PyBuiltInFunctionOrMethod.__allocating_init(name:arguments:attrs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D84F90];
  v12[4] = MEMORY[0x277D84F90];
  v12[5] = v13;
  v12[6] = v13;
  v12[7] = v13;

  v12[8] = v13;

  v12[9] = 0;
  v12[10] = 0;

  v12[11] = 0;
  v12[12] = 0;

  v12[13] = sub_25A92BDB4(v13);
  v12[2] = a1;
  v12[3] = a2;
  v14 = *(v12 + 5);
  v22[2] = *(v12 + 4);
  v22[3] = v14;
  v23 = v12[12];
  v15 = *(v12 + 3);
  v22[0] = *(v12 + 2);
  v22[1] = v15;
  v16 = *(a3 + 16);
  *(v12 + 2) = *a3;
  *(v12 + 3) = v16;
  v17 = *(a3 + 48);
  *(v12 + 4) = *(a3 + 32);
  *(v12 + 5) = v17;
  v12[12] = *(a3 + 64);
  sub_25A892B80(v22);
  swift_beginAccess();
  v18 = v12[13];
  v12[13] = a4;

  if (a5)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = a6;
    v12[14] = sub_25A8F1830;
    v12[15] = v19;
  }

  else
  {
    v20 = swift_allocObject();
    swift_weakInit();
    v12[14] = sub_25A8DF24C;
    v12[15] = v20;
    swift_beginAccess();
    swift_weakAssign();
  }

  return v12;
}

uint64_t sub_25A965734@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27FA042F0 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA046C0;
  a1[3] = type metadata accessor for PyBuiltInClass();
  a1[4] = sub_25A892BD4();
  *a1 = v2;
}

uint64_t PyBuiltInFunctionOrMethod.init(name:arguments:attrs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = MEMORY[0x277D84F90];
  *(v6 + 56) = MEMORY[0x277D84F90];
  *(v6 + 64) = v13;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 32) = v13;
  *(v6 + 40) = v13;
  *(v6 + 48) = v13;

  v14 = *(v6 + 56);
  *(v6 + 56) = v13;

  v15 = *(v6 + 64);
  *(v6 + 64) = v13;

  v16 = *(v6 + 80);
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;

  v17 = *(v6 + 96);
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;

  *(v6 + 104) = sub_25A92BDB4(v13);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v18 = *(v6 + 80);
  v26[2] = *(v6 + 64);
  v26[3] = v18;
  v27 = *(v6 + 96);
  v19 = *(v6 + 48);
  v26[0] = *(v6 + 32);
  v26[1] = v19;
  v20 = *(a3 + 16);
  *(v6 + 32) = *a3;
  *(v6 + 48) = v20;
  v21 = *(a3 + 48);
  *(v6 + 64) = *(a3 + 32);
  *(v6 + 80) = v21;
  *(v6 + 96) = *(a3 + 64);
  sub_25A892B80(v26);
  swift_beginAccess();
  v22 = *(v6 + 104);
  *(v6 + 104) = a4;

  if (a5)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = a5;
    *(v23 + 24) = a6;
    *(v6 + 112) = sub_25A8F1D14;
    *(v6 + 120) = v23;
  }

  else
  {
    v24 = swift_allocObject();
    swift_weakInit();
    *(v6 + 112) = sub_25A9514C8;
    *(v6 + 120) = v24;
    swift_beginAccess();
    swift_weakAssign();
  }

  return v6;
}

void *PyBuiltInFunctionOrMethod.deinit()
{
  v1 = v0[3];

  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[10];
  v8 = v0[12];

  v9 = v0[13];

  v10 = v0[15];

  return v0;
}

uint64_t PyBuiltInFunctionOrMethod.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[10];
  v8 = v0[12];

  v9 = v0[13];

  v10 = v0[15];

  return swift_deallocClassInstance();
}

uint64_t sub_25A965AA8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25A965AE0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t PyBuiltInClass.__allocating_init(name:bases:mro:constructor:specialFunctions:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[10] = a5;
  v13 = *(a4 + 2);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = a4;
  if (!isUniquelyReferenced_nonNull_native || v13 >= *(a4 + 3) >> 1)
  {
    a4 = sub_25A967378(isUniquelyReferenced_nonNull_native, v13 + 1, 1, a4);
    v65 = a4;
  }

  sub_25A96B0BC(0, 0, 1, a1, a2);

  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  v12[7] = a4;
  type metadata accessor for InlineBlock();
  swift_allocObject();

  v15 = 0;
  v56 = sub_25A936284();
  v12[8] = v56;
  v12[9] = &off_286C11D08;
  v53 = v12;
  v16 = a6 + 64;
  v17 = 1 << *(a6 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a6 + 64);
  v20 = (v17 + 63) >> 6;
  v55 = a6;
  while (v19)
  {
LABEL_14:
    v22 = __clz(__rbit64(v19)) | (v15 << 6);
    v23 = *(a6 + 56);
    v24 = (*(a6 + 48) + 16 * v22);
    v25 = *v24;
    v26 = v24[1];
    v27 = *(v23 + 8 * v22);
    v64[3] = type metadata accessor for Function();
    v64[0] = v27;
    v28 = v56[2];
    v63[3] = MEMORY[0x277D837D0];
    v63[0] = v25;
    v63[1] = v26;
    sub_25A87500C(v63, v62);
    swift_retain_n();
    swift_bridgeObjectRetain_n();

    if (swift_dynamicCast())
    {
      v29 = *(v28 + 32);

      sub_25A998578();
      sub_25A87500C(v64, v61);
      sub_25A874FB0(v62, &v60);
      sub_25A8780B8(v61, &v58);
      swift_beginAccess();
      if (v59)
      {
        sub_25A872D74(&v58, v57);
        v30 = *(v29 + 16);
        v31 = swift_isUniquelyReferenced_nonNull_native();
        v54 = v29;
        v32 = *(v29 + 16);
        v34 = sub_25A8F35BC(&v60);
        v35 = v32[2];
        v36 = (v33 & 1) == 0;
        v37 = v35 + v36;
        if (__OFADD__(v35, v36))
        {
          goto LABEL_36;
        }

        v38 = v33;
        if (v32[3] >= v37)
        {
          if ((v31 & 1) == 0)
          {
            sub_25A968DB8();
          }
        }

        else
        {
          sub_25A9679D0(v37, v31);
          v39 = sub_25A8F35BC(&v60);
          if ((v38 & 1) != (v40 & 1))
          {
            goto LABEL_38;
          }

          v34 = v39;
        }

        a6 = v55;
        if (v38)
        {
          v48 = (v32[7] + 32 * v34);
          __swift_destroy_boxed_opaque_existential_0Tm(v48);
          sub_25A872D74(v57, v48);
        }

        else
        {
          v32[(v34 >> 6) + 8] |= 1 << v34;
          sub_25A874FB0(&v60, v32[6] + 40 * v34);
          sub_25A872D74(v57, (v32[7] + 32 * v34));
          v49 = v32[2];
          v50 = __OFADD__(v49, 1);
          v51 = v49 + 1;
          if (v50)
          {
            goto LABEL_37;
          }

          v32[2] = v51;
        }

        sub_25A8795A0(&v60);
        *(v54 + 16) = v32;
      }

      else
      {
        sub_25A878194(&v58, &qword_27FA04458, &unk_25A9F7FB0);
        v41 = *(v29 + 16);
        v42 = sub_25A8F35BC(&v60);
        a6 = v55;
        if (v43)
        {
          v44 = v42;
          v45 = *(v29 + 16);
          v46 = swift_isUniquelyReferenced_nonNull_native();
          v47 = *(v29 + 16);
          if ((v46 & 1) == 0)
          {
            sub_25A968DB8();
          }

          sub_25A8795A0(*(v47 + 48) + 40 * v44);
          sub_25A872D74((*(v47 + 56) + 32 * v44), v57);
          sub_25A969C84(v44, v47);
          *(v29 + 16) = v47;
        }

        else
        {
          memset(v57, 0, sizeof(v57));
        }

        sub_25A8795A0(&v60);
        sub_25A878194(v57, &qword_27FA04458, &unk_25A9F7FB0);
      }

      swift_endAccess();

      sub_25A878194(v61, &qword_27FA04458, &unk_25A9F7FB0);
      sub_25A8795A0(v62);
    }

    else
    {

      a6 = v55;
    }

    v19 &= v19 - 1;
    __swift_destroy_boxed_opaque_existential_0Tm(v63);

    __swift_destroy_boxed_opaque_existential_0Tm(v64);
  }

  while (1)
  {
    v21 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return v53;
    }

    v19 = *(v16 + 8 * v21);
    ++v15;
    if (v19)
    {
      v15 = v21;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_25A998AA8();
  __break(1u);
  return result;
}

uint64_t sub_25A9660BC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_25A96611C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_25A966168(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_25A96620C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 40);
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t sub_25A96626C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_25A9662B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_25A96635C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

uint64_t sub_25A9663BC()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t sub_25A9663F4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t sub_25A96648C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
}

uint64_t sub_25A9664EC()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t sub_25A966524(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t sub_25A9665BC(_OWORD *a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *(v3 + 64) = *a1;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_25A966620()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  return swift_unknownObjectRetain();
}

uint64_t sub_25A966664(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return swift_unknownObjectRelease();
}

uint64_t PyBuiltInClass.init(name:bases:mro:constructor:specialFunctions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a4;
  *(v6 + 80) = a5;
  v11 = *(a4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = v7;
  if (!isUniquelyReferenced_nonNull_native || v11 >= *(v7 + 3) >> 1)
  {
    v7 = sub_25A967378(isUniquelyReferenced_nonNull_native, v11 + 1, 1, v7);
    v33 = v7;
  }

  sub_25A96B0BC(0, 0, 1, a1, a2);

  v29[2] = a1;
  v29[3] = a2;
  v29[4] = a1;
  v29[5] = a2;
  v29[6] = a3;
  v29[7] = v7;
  type metadata accessor for InlineBlock();
  swift_allocObject();

  v29[8] = sub_25A936284();
  v29[9] = &off_286C11D08;
  v13 = 1 << *(a6 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a6 + 64);
  result = swift_beginAccess();
  v17 = 0;
  for (i = (v13 + 63) >> 6; v15; result = __swift_destroy_boxed_opaque_existential_0Tm(v32))
  {
    v19 = v17;
LABEL_12:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = v20 | (v19 << 6);
    v22 = (*(a6 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(*(a6 + 56) + 8 * v21);
    v26 = v29[8];
    v27 = v29[9];
    ObjectType = swift_getObjectType();
    v32[3] = type metadata accessor for Function();
    v32[0] = v25;
    v30 = *(v27 + 64);
    swift_retain_n();

    swift_unknownObjectRetain();
    v30(v23, v24, v32, ObjectType, v27);

    swift_unknownObjectRelease();
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= i)
    {

      return v29;
    }

    v15 = *(a6 + 64 + 8 * v19);
    ++v17;
    if (v15)
    {
      v17 = v19;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

double sub_25A966970@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_25A966980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  ObjectType = swift_getObjectType();
  v12[3] = type metadata accessor for Function();
  v12[0] = a3;
  v10 = *(v8 + 64);
  swift_unknownObjectRetain();

  v10(a1, a2, v12, ObjectType, v8);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0Tm(v12);
}

uint64_t sub_25A966A50@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(v3 + 80))
  {

    sub_25A98B0FC(a1, a2, a3);
  }

  else
  {
    sub_25A874F54();
    swift_allocError();
    *v8 = 123;
    return swift_willThrow();
  }
}

void *PyBuiltInClass.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];
  swift_unknownObjectRelease();
  v6 = v0[10];

  return v0;
}

uint64_t PyBuiltInClass.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];
  swift_unknownObjectRelease();
  v6 = v0[10];

  return swift_deallocClassInstance();
}

uint64_t sub_25A966B8C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t sub_25A966BDC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  return v2;
}

uint64_t sub_25A966C2C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 48);
}

uint64_t sub_25A966C70()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 56);
}

uint64_t sub_25A966CB4()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  return swift_unknownObjectRetain();
}

uint64_t sub_25A966CFC@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(*v3 + 80))
  {

    sub_25A98B0FC(a1, a2, a3);
  }

  else
  {
    sub_25A874F54();
    swift_allocError();
    *v8 = 123;
    return swift_willThrow();
  }
}

uint64_t sub_25A966D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static PyClass.== infix(_:_:)(a1, a2, a3, WitnessTable);
}

void *sub_25A966E00(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA056F8, &qword_25A9FF860);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04450, "lT\a");
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25A966F38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA053B0, &qword_25A9FDC20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_25A967040(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_25A967148(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA056E8, &qword_25A9FF850);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25A967258(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA053B8, &qword_25A9FDC28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25A967378(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25A967488(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25A9675E4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_25A967778(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_25A9678B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA056E0, &qword_25A9FF848);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

uint64_t sub_25A9679D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05358, &qword_25A9FDA38);
  result = sub_25A998878();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_25A872D74((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_25A874FB0(v24, &v38);
        sub_25A87500C(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_25A998558();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_25A872D74(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_25A967C88(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04CC8, &unk_25A9FDC30);
  v36 = a2;
  result = sub_25A998878();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_25A872D74(v25, v37);
      }

      else
      {
        sub_25A87500C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_25A998B18();
      sub_25A997D58();
      result = sub_25A998B38();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_25A872D74(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_25A967F40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05710, &qword_25A9FF878);
  v39 = a2;
  result = sub_25A998878();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + 32 * v23);
      if (v39)
      {
        v28 = v27[1];
        v40 = *v27;
        v41 = v28;
      }

      else
      {
        sub_25A8780B8(v27, &v40);
      }

      v29 = *(v8 + 40);
      sub_25A998B18();
      sub_25A997D58();
      result = sub_25A998B38();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v25;
      v17[1] = v26;
      v18 = (*(v8 + 56) + 32 * v16);
      v19 = v41;
      *v18 = v40;
      v18[1] = v19;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_25A9681F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05728, &qword_25A9FF890);
  v36 = a2;
  result = sub_25A998878();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_25A87817C(v25, v37);
      }

      else
      {
        sub_25A872F24(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_25A998B18();
      sub_25A997D58();
      result = sub_25A998B38();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_25A87817C(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_25A9684D0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_25A9987E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05730, &qword_25A9FF898);
  v43 = a2;
  result = sub_25A998878();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v42 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v45 = *(v7 + 72);
      v28 = v27 + v45 * v26;
      if (v43)
      {
        (*v44)(v46, v28, v47);
        sub_25A872D74((*(v11 + 56) + 32 * v26), v48);
      }

      else
      {
        (*v40)(v46, v28, v47);
        sub_25A87500C(*(v11 + 56) + 32 * v26, v48);
      }

      v29 = *(v14 + 40);
      result = sub_25A997D48();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v41;
        v11 = v42;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v41;
      v11 = v42;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v44)((*(v14 + 48) + v45 * v22), v46, v47);
      result = sub_25A872D74(v48, (*(v14 + 56) + 32 * v22));
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_25A968870(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_25A998878();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_25A998B18();
      sub_25A997D58();
      result = sub_25A998B38();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_25A968B10(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05720, &qword_25A9FF888);
  v38 = a2;
  result = sub_25A998878();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_25A998B18();
      sub_25A997D58();
      result = sub_25A998B38();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_25A968DB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05358, &qword_25A9FDA38);
  v2 = *v0;
  v3 = sub_25A998868();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_25A874FB0(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_25A87500C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_25A872D74(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25A968F5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04CC8, &unk_25A9FDC30);
  v2 = *v0;
  v3 = sub_25A998868();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_25A87500C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_25A872D74(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_25A969100()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05710, &qword_25A9FF878);
  v2 = *v0;
  v3 = sub_25A998868();
  v4 = v3;
  if (*(v2 + 16))
  {
    v26 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_25A8780B8(*(v2 + 56) + 32 * v17, v27);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = (*(v4 + 56) + v22);
        v25 = v27[1];
        *v24 = v27[0];
        v24[1] = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v26;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_25A9692A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05728, &qword_25A9FF890);
  v2 = *v0;
  v3 = sub_25A998868();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_25A872F24(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_25A87817C(v25, *(v4 + 56) + v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_25A969460()
{
  v1 = v0;
  v27 = sub_25A9987E8();
  v29 = *(v27 - 8);
  v2 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  v26 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05730, &qword_25A9FF898);
  v4 = *v0;
  v5 = sub_25A998868();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v25[1] = v29 + 32;
    v25[2] = v29 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v30 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v29;
        v21 = *(v29 + 72) * v19;
        v22 = v26;
        v23 = v27;
        (*(v29 + 16))(v26, *(v4 + 48) + v21, v27);
        v19 *= 32;
        sub_25A87500C(*(v4 + 56) + v19, v31);
        v24 = v28;
        (*(v20 + 32))(*(v28 + 48) + v21, v22, v23);
        result = sub_25A872D74(v31, (*(v24 + 56) + v19));
        v14 = v30;
      }

      while (v30);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v25[0];
        v6 = v28;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v30 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_25A9696E4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_25A998868();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_25A969844()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05720, &qword_25A9FF888);
  v2 = *v0;
  v3 = sub_25A998868();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

double sub_25A9699B4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_25A8F35BC(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25A968DB8();
      v11 = v13;
    }

    sub_25A8795A0(*(v11 + 48) + 40 * v8);
    sub_25A872D74((*(v11 + 56) + 32 * v8), a2);
    sub_25A969C84(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_25A969A58@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_25A8F3600(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25A968F5C();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_25A872D74((*(v12 + 56) + 32 * v9), a3);
    sub_25A969E28(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_25A969AFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_25A8F3600(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25A9692A4();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_25A87817C((*(v12 + 56) + 40 * v9), a3);
    sub_25A969FD8(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_25A969BA8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_25A8F36B4(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25A969460();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = sub_25A9987E8();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_25A872D74((*(v11 + 56) + 32 * v8), a2);
    sub_25A96A194(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_25A969C84(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25A998518() + 1) & ~v5;
    do
    {
      sub_25A874FB0(*(a2 + 48) + 40 * v6, v26);
      v10 = *(a2 + 40);
      v11 = sub_25A998558();
      result = sub_25A8795A0(v26);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v3;
          v17 = (v15 + 40 * v6);
          if (v3 != v6 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 32 * v3);
          v22 = (v20 + 32 * v6);
          if (v3 != v6 || v21 >= v22 + 2)
          {
            v9 = v22[1];
            *v21 = *v22;
            v21[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25A969E28(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25A998518() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_25A998B18();

      sub_25A997D58();
      v14 = sub_25A998B38();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25A969FD8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25A998518() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_25A998B18();

      sub_25A997D58();
      v15 = sub_25A998B38();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25A96A194(int64_t a1, uint64_t a2)
{
  v4 = sub_25A9987E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_25A998518();
    v15 = v13;
    v40 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v41 = *(v16 + 56);
    v38 = (v16 - 8);
    v39 = v17;
    do
    {
      v18 = v10;
      v19 = v41 * v12;
      v20 = v15;
      v21 = v16;
      v39(v9, *(a2 + 48) + v41 * v12, v4);
      v22 = *(a2 + 40);
      v23 = sub_25A997D48();
      result = (*v38)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v40)
      {
        if (v24 >= v40 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v41 * a1;
          v28 = v27 + v19 + v41;
          v29 = v41 * a1 < v19 || result >= v28;
          v16 = v21;
          if (v29)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v30 = v41 * a1 == v19;
            v10 = v18;
            if (!v30)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 32 * a1);
          v33 = (v31 + 32 * v12);
          if (a1 != v12 || v32 >= v33 + 2)
          {
            v34 = v33[1];
            *v32 = *v33;
            v32[1] = v34;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v40 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_25A96A448(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_25A8F35BC(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_25A968DB8();
      goto LABEL_7;
    }

    sub_25A9679D0(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_25A8F35BC(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_25A874FB0(a2, v22);
      return sub_25A96AD58(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_25A998AA8();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v17);

  return sub_25A872D74(a1, v17);
}

_OWORD *sub_25A96A594(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25A8F3600(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_25A968F5C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_25A967C88(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_25A8F3600(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_25A998AA8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);

    return sub_25A872D74(a1, v23);
  }

  else
  {
    sub_25A96ADD4(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_25A96A6E4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25A8F3600(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_25A967F40(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_25A8F3600(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_25A998AA8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_25A969100();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 32 * v11;

    return sub_25A96B8F4(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = (v22[7] + 32 * v11);
  v27 = a1[1];
  *v26 = *a1;
  v26[1] = v27;
  v28 = v22[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v29;
}

_OWORD *sub_25A96A864(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25A9987E8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_25A8F36B4(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_25A969460();
      goto LABEL_7;
    }

    sub_25A9684D0(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_25A8F36B4(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_25A96AE40(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_25A998AA8();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 32 * v15);
  __swift_destroy_boxed_opaque_existential_0Tm(v22);

  return sub_25A872D74(a1, v22);
}

uint64_t sub_25A96AA3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25A8F3600(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_25A968870(v16, a4 & 1, &qword_27FA056F0, &qword_25A9FF858);
      v20 = *v5;
      v11 = sub_25A8F3600(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_25A998AA8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_25A9696E4(&qword_27FA056F0, &qword_25A9FF858);
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_25A96ABDC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25A8F3600(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_25A968B10(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_25A8F3600(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_25A998AA8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_25A969844();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

_OWORD *sub_25A96AD58(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_25A872D74(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_25A96ADD4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_25A872D74(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_25A96AE40(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25A9987E8();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_25A872D74(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_25A96AF00(unint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = (v7 + 32 + 4 * result);
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + 4 * a2);
      if (result != v12 || result >= v12 + 4 * v11)
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, 4 * v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_25A96AFC0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v4;
  v10 = v9 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 32 * a3;
      v15 = (v9 + 32 + 32 * a2);
      if (result != v15 || result >= v15 + 32 * v14)
      {
        result = memmove(result, v15, 32 * v14);
      }

      v17 = *(v9 + 16);
      v11 = __OFADD__(v17, v12);
      v18 = v17 + v12;
      if (!v11)
      {
        *(v9 + 16) = v18;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 < 1)
  {
    return sub_25A878194(a4, &qword_27FA05718, &qword_25A9FF880);
  }

  result = sub_25A87500C(a4, v10);
  if (a3 == 1)
  {
    return sub_25A878194(a4, &qword_27FA05718, &qword_25A9FF880);
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_25A96B0BC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_25A96B1A0(uint64_t a1)
{
  result = sub_25A96B1C8();
  *(a1 + 40) = result;
  return result;
}

unint64_t sub_25A96B1C8()
{
  result = qword_27FA056D8;
  if (!qword_27FA056D8)
  {
    type metadata accessor for PyBuiltInClass();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA056D8);
  }

  return result;
}

uint64_t sub_25A96B240@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_25A96B290@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_25A96B2E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_25A96B330@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_25A96B380@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
  return swift_unknownObjectRetain();
}

unint64_t sub_25A96B6C8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_25A96B770(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_25A96B834(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_25A96B8F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_25A96B968(uint64_t a1, uint64_t *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  sub_25A94EEF0(a1, a2);
}

void sub_25A96B9C0(uint64_t a1, uint64_t *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  sub_25A94F4A0(a1, a2);
}

void sub_25A96BA18(uint64_t a1, uint64_t *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  sub_25A94F5E8(a1, a2);
}

void sub_25A96BA70(uint64_t a1, uint64_t *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  sub_25A94F730(a1, a2);
}

void sub_25A96BAC8(uint64_t a1, uint64_t *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  sub_25A94F878(a1, a2);
}

void sub_25A96BB20(uint64_t a1, uint64_t *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  sub_25A94F9C0(a1, a2);
}

uint64_t sub_25A96BB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v4, &v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05740, &qword_25A9FF8B8);
    if (swift_dynamicCast())
    {
      if (*(&v11 + 1))
      {
        sub_25A87817C(&v10, v13);
        *&v10 = 0;
        *(&v10 + 1) = 0xE000000000000000;
        __swift_project_boxed_opaque_existential_1(v13, v13[3]);
        sub_25A9989B8();
        v6 = v10;
        *(a2 + 24) = MEMORY[0x277D837D0];
        *a2 = v6;
        return __swift_destroy_boxed_opaque_existential_0Tm(v13);
      }
    }

    else
    {
      v12 = 0;
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
  }

  sub_25A96C204(&v10);
  sub_25A874F54();
  swift_allocError();
  *v8 = -95;
  return swift_willThrow();
}

uint64_t sub_25A96BCD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_25A936F00(a1);
  sub_25A96BB78(v3, a2);
}

uint64_t sub_25A96BD20()
{
  v0 = MEMORY[0x277D84F90];
  v1 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  type metadata accessor for Function();
  v2 = swift_allocObject();
  *(v2 + 32) = v0;
  *(v2 + 40) = v0;
  *(v2 + 48) = v0;
  *(v2 + 56) = v0;
  *(v2 + 64) = v0;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = sub_25A92BDB4(v0);
  *(v2 + 16) = 7500915;
  *(v2 + 24) = 0xE300000000000000;
  v3 = *(v2 + 80);
  v6[2] = *(v2 + 64);
  v6[3] = v3;
  v7 = *(v2 + 96);
  v4 = *(v2 + 48);
  v6[0] = *(v2 + 32);
  v6[1] = v4;
  *(v2 + 32) = &unk_286C0A8F8;
  *(v2 + 40) = v0;
  *(v2 + 48) = v0;
  *(v2 + 56) = v0;
  *(v2 + 64) = v0;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  sub_25A892B80(v6);
  swift_beginAccess();
  *(v2 + 104) = v1;

  *(v2 + 112) = sub_25A96BCD0;
  *(v2 + 120) = 0;
  return v2;
}

unint64_t sub_25A96BE34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04798, &qword_25A9F8E60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25A9FF8A0;
  *(inited + 32) = 0x5F5F71655F5FLL;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = sub_25A94F1B0(16, sub_25A96C26C, 0);
  *(inited + 56) = 0x5F5F656E5F5FLL;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = sub_25A94F1B0(17, sub_25A96C2C4, 0);
  *(inited + 80) = 0x5F5F746C5F5FLL;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = sub_25A94F1B0(18, sub_25A96C31C, 0);
  *(inited + 104) = 0x5F5F656C5F5FLL;
  *(inited + 112) = 0xE600000000000000;
  *(inited + 120) = sub_25A94F1B0(19, sub_25A96C374, 0);
  *(inited + 128) = 0x5F5F74675F5FLL;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = sub_25A94F1B0(20, sub_25A96C3CC, 0);
  *(inited + 152) = 0x5F5F65675F5FLL;
  *(inited + 160) = 0xE600000000000000;
  *(inited + 168) = sub_25A94F1B0(21, sub_25A96C424, 0);
  *(inited + 176) = 0x5F5F7274735F5FLL;
  *(inited + 184) = 0xE700000000000000;
  *(inited + 192) = sub_25A96BD20();
  v1 = sub_25A98E67C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047A0, &qword_25A9F8E68);
  swift_arrayDestroy();
  return v1;
}

unint64_t sub_25A96C01C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04798, &qword_25A9F8E60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25A9FF8A0;
  *(inited + 32) = 0x5F5F71655F5FLL;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = sub_25A94F328(16, sub_25A96C26C, 0);
  *(inited + 56) = 0x5F5F656E5F5FLL;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = sub_25A94F328(17, sub_25A96C2C4, 0);
  *(inited + 80) = 0x5F5F746C5F5FLL;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = sub_25A94F328(18, sub_25A96C31C, 0);
  *(inited + 104) = 0x5F5F656C5F5FLL;
  *(inited + 112) = 0xE600000000000000;
  *(inited + 120) = sub_25A94F328(19, sub_25A96C374, 0);
  *(inited + 128) = 0x5F5F74675F5FLL;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = sub_25A94F328(20, sub_25A96C3CC, 0);
  *(inited + 152) = 0x5F5F65675F5FLL;
  *(inited + 160) = 0xE600000000000000;
  *(inited + 168) = sub_25A94F328(21, sub_25A96C424, 0);
  *(inited + 176) = 0x5F5F7274735F5FLL;
  *(inited + 184) = 0xE700000000000000;
  *(inited + 192) = sub_25A96BD20();
  v1 = sub_25A98E67C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047A0, &qword_25A9F8E68);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_25A96C204(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05738, &qword_25A9FF8B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25A96C26C(uint64_t a1, uint64_t *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  sub_25A96B968(a1, a2);
}

void sub_25A96C2C4(uint64_t a1, uint64_t *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  sub_25A96B9C0(a1, a2);
}

void sub_25A96C31C(uint64_t a1, uint64_t *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  sub_25A96BA18(a1, a2);
}

void sub_25A96C374(uint64_t a1, uint64_t *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  sub_25A96BA70(a1, a2);
}

void sub_25A96C3CC(uint64_t a1, uint64_t *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  sub_25A96BAC8(a1, a2);
}

void sub_25A96C424(uint64_t a1, uint64_t *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  sub_25A96BB20(a1, a2);
}

uint64_t sub_25A96C47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) == 0))
  {
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    goto LABEL_13;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, &v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04800, &qword_25A9F8E90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    goto LABEL_13;
  }

  if (!*(&v24 + 1))
  {
LABEL_13:
    sub_25A878194(&v23, &qword_27FA047F8, L"D\a\t");
LABEL_14:
    sub_25A874F54();
    swift_allocError();
    *v17 = -95;
    return swift_willThrow();
  }

  sub_25A87817C(&v23, v26);
  if (!*(a1 + 16) || (v6 = sub_25A8F3600(0x726568746FLL, 0xE500000000000000), (v7 & 1) == 0))
  {
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
    goto LABEL_17;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v6, &v19);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    goto LABEL_17;
  }

  if (!*(&v21 + 1))
  {
LABEL_17:
    sub_25A878194(&v20, &qword_27FA047F8, L"D\a\t");
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    goto LABEL_14;
  }

  sub_25A87817C(&v20, &v23);
  v8 = v27;
  v9 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v10 = (*(v9 + 56))(v8, v9);
  v12 = v11;
  v13 = *(&v24 + 1);
  v14 = v25;
  __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
  if (v10 == (*(v14 + 56))(v13, v14) && v12 == v15)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_25A9989E8();
  }

  *(a2 + 24) = MEMORY[0x277D839B0];
  *a2 = v16 & 1;
  __swift_destroy_boxed_opaque_existential_0Tm(&v23);
  return __swift_destroy_boxed_opaque_existential_0Tm(v26);
}

uint64_t sub_25A96C720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v4, &v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04800, &qword_25A9F8E90);
    if (swift_dynamicCast())
    {
      if (*(&v14 + 1))
      {
        sub_25A87817C(&v13, v16);
        *&v13 = 0x27207373616C633CLL;
        *(&v13 + 1) = 0xE800000000000000;
        v6 = v17;
        v7 = v18;
        __swift_project_boxed_opaque_existential_1(v16, v17);
        v8 = (*(v7 + 56))(v6, v7);
        MEMORY[0x25F850290](v8);

        MEMORY[0x25F850290](15911, 0xE200000000000000);
        v9 = v13;
        *(a2 + 24) = MEMORY[0x277D837D0];
        *a2 = v9;
        return __swift_destroy_boxed_opaque_existential_0Tm(v16);
      }
    }

    else
    {
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
    }
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
  }

  sub_25A878194(&v13, &qword_27FA047F8, L"D\a\t");
  sub_25A874F54();
  swift_allocError();
  *v11 = -95;
  return swift_willThrow();
}

uint64_t sub_25A96C8CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v4, &v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04800, &qword_25A9F8E90);
    if (swift_dynamicCast())
    {
      if (*(&v14 + 1))
      {
        sub_25A87817C(&v13, v16);
        v6 = v17;
        v7 = v18;
        __swift_project_boxed_opaque_existential_1(v16, v17);
        v8 = (*(v7 + 56))(v6, v7);
        a2[3] = MEMORY[0x277D837D0];
        *a2 = v8;
        a2[1] = v9;
        return __swift_destroy_boxed_opaque_existential_0Tm(v16);
      }
    }

    else
    {
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
    }
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
  }

  sub_25A878194(&v13, &qword_27FA047F8, L"D\a\t");
  sub_25A874F54();
  swift_allocError();
  *v11 = -95;
  return swift_willThrow();
}

uint64_t sub_25A96CA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) == 0))
  {
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
    goto LABEL_11;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, &v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04800, &qword_25A9F8E90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    goto LABEL_11;
  }

  if (!*(&v22 + 1))
  {
LABEL_11:
    sub_25A878194(&v21, &qword_27FA047F8, L"D\a\t");
    goto LABEL_12;
  }

  sub_25A87817C(&v21, v24);
  if (*(a1 + 16) && (v6 = sub_25A8F3600(0x65636E6174736E69, 0xE800000000000000), (v7 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v6, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04758, &unk_25A9F9B90);
    if (swift_dynamicCast())
    {
      if (*(&v19 + 1))
      {
        sub_25A87817C(&v18, &v21);
        v8 = *(&v22 + 1);
        v9 = v23;
        __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
        (*(v9 + 8))(&v18, v8, v9);
        v10 = *(&v19 + 1);
        v11 = v20;
        __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
        v12 = (*(v11 + 72))(v10, v11);
        MEMORY[0x28223BE20](v12);
        v16[2] = v24;
        v13 = sub_25A96289C(sub_25A895358, v16, v12);

        __swift_destroy_boxed_opaque_existential_0Tm(&v18);
        *(a2 + 24) = MEMORY[0x277D839B0];
        *a2 = v13 & 1;
        __swift_destroy_boxed_opaque_existential_0Tm(&v21);
        return __swift_destroy_boxed_opaque_existential_0Tm(v24);
      }
    }

    else
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
    }
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
  }

  sub_25A878194(&v18, &qword_27FA04750, "jN\a");
  __swift_destroy_boxed_opaque_existential_0Tm(v24);
LABEL_12:
  sub_25A874F54();
  swift_allocError();
  *v15 = -95;
  return swift_willThrow();
}

uint64_t sub_25A96CDB8(uint64_t a1, void (*a2)(void))
{
  sub_25A936F00(a1);
  a2();
}

uint64_t sub_25A96CE10()
{
  v0 = MEMORY[0x277D84F90];
  v1 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  type metadata accessor for Function();
  v2 = swift_allocObject();
  *(v2 + 32) = v0;
  *(v2 + 40) = v0;
  *(v2 + 48) = v0;
  *(v2 + 56) = v0;
  *(v2 + 64) = v0;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = sub_25A92BDB4(v0);
  *(v2 + 16) = 0xD000000000000011;
  *(v2 + 24) = 0x800000025AA68840;
  v3 = *(v2 + 80);
  v6[2] = *(v2 + 64);
  v6[3] = v3;
  v7 = *(v2 + 96);
  v4 = *(v2 + 48);
  v6[0] = *(v2 + 32);
  v6[1] = v4;
  *(v2 + 32) = &unk_286C0A5D8;
  *(v2 + 40) = v0;
  *(v2 + 48) = v0;
  *(v2 + 56) = v0;
  *(v2 + 64) = v0;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  sub_25A892B80(v6);
  swift_beginAccess();
  *(v2 + 104) = v1;

  *(v2 + 112) = sub_25A96CD8C;
  *(v2 + 120) = 0;
  return v2;
}

unint64_t sub_25A96CF30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04798, &qword_25A9F8E60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25A9F9500;
  *(inited + 32) = 0x5F5F71655F5FLL;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = sub_25A907E7C(0x5F5F71655F5FLL, 0xE600000000000000, &unk_286C0A538, sub_25A96CD08);
  *(inited + 56) = 0x5F5F727065725F5FLL;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = sub_25A907E7C(0x5F5F727065725F5FLL, 0xE800000000000000, &unk_286C0A578, sub_25A96CD34);
  *(inited + 80) = 0x5F5F7274735F5FLL;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = sub_25A907E7C(0x5F5F7274735F5FLL, 0xE700000000000000, &unk_286C0A5A8, sub_25A96CD60);
  *(inited + 104) = 0xD000000000000011;
  *(inited + 112) = 0x800000025AA68840;
  *(inited + 120) = sub_25A96CE10();
  v1 = sub_25A98E67C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047A0, &qword_25A9F8E68);
  swift_arrayDestroy();
  return v1;
}

void *PyInstance.init(pyClass:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_25A96D688(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v10;
}

uint64_t PyInstance.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t sub_25A96D1C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_25A87500C(a1, v10);
  v5 = type metadata accessor for PyFunction();
  if (!swift_dynamicCast())
  {
    return sub_25A87500C(a1, a2);
  }

  v6 = type metadata accessor for PyInstanceBoundMethod();
  v7 = swift_allocObject();
  v7[6] = v5;
  v7[7] = &protocol witness table for Function;
  v7[2] = v2;
  v7[3] = v9;
  a2[3] = v6;
  *a2 = v7;
}

double sub_25A96D288@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = v3[7];
  LexicalContext.attribute(for:)(a1, a2, &v12);
  if (v13)
  {
    sub_25A872D74(&v12, &v14);
  }

  else
  {
    v9 = v4[5];
    v10 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v9);
    (*(*(v10 + 8) + 8))(&v14, a1, a2, v9);
    if (v13)
    {
      sub_25A872D84(&v12);
    }
  }

  if (v15)
  {
    sub_25A872D74(&v14, v16);
    sub_25A96D1C8(v16, a3);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    sub_25A872D84(&v14);
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_25A96D40C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 56);
  sub_25A87500C(a1, v10);
  result = swift_dynamicCast();
  if (result)
  {
    v6 = *(v4 + 32);

    sub_25A998578();
    sub_25A87500C(a2, v9);
    sub_25A874FB0(v10, &v8);
    sub_25A8780B8(v9, v7);
    swift_beginAccess();
    sub_25A8F2E14(v7, &v8);
    swift_endAccess();

    sub_25A872D84(v9);
    return sub_25A8795A0(v10);
  }

  return result;
}

void *PyInstance.__allocating_init(pyClass:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_25A96D804(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v6;
}

uint64_t PyInstance.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

void *sub_25A96D688(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19[3] = a3;
  v19[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  sub_25A872F24(v19, (a2 + 2));
  type metadata accessor for LexicalContext();
  v8 = swift_allocObject();
  v8[2] = 0x6E776F6E6B6E55;
  v8[3] = 0xE700000000000000;
  v9 = MEMORY[0x277D84F90];
  v10 = sub_25A98E540(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04620, &unk_25A9FDA10);
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x277D84F98];
  swift_beginAccess();
  *(v11 + 16) = v10;
  v8[4] = v11;
  v8[5] = sub_25A98E67C(v9);
  a2[7] = v8;
  v12 = a2[5];
  v13 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v12);
  v14 = (*(v13 + 56))(v12, v13);
  v16 = v15;
  __swift_destroy_boxed_opaque_existential_0Tm(v19);
  v17 = v8[3];
  v8[2] = v14;
  v8[3] = v16;

  return a2;
}

void *sub_25A96D804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PyInstance();
  v11 = swift_allocObject();
  (*(v7 + 16))(v10, a1, a3);
  return sub_25A96D688(v10, v11, a3, a4);
}

void *sub_25A96D9C0()
{
  v1 = v0;
  type metadata accessor for LexicalContext();
  v2 = swift_allocObject();
  v2[2] = 0x6E776F6E6B6E55;
  v2[3] = 0xE700000000000000;
  v3 = MEMORY[0x277D84F90];
  v4 = sub_25A98E540(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04620, &unk_25A9FDA10);
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x277D84F98];
  swift_beginAccess();
  *(v5 + 16) = v4;
  v2[4] = v5;
  v2[5] = sub_25A98E67C(v3);
  v1[2] = v2;
  v1[3] = sub_25A98EF10(v3);
  type metadata accessor for PyLogger();
  v6 = swift_allocObject();
  swift_weakInit();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0xE000000000000000;
  v1[4] = v6;
  *(v6 + 40) = 3;
  swift_beginAccess();

  v7 = v1[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = v1[3];
  v1[3] = 0x8000000000000000;
  sub_25A96AA3C(v6, 0, 0xE000000000000000, isUniquelyReferenced_nonNull_native);
  v1[3] = v10;
  swift_endAccess();
  return v1;
}

uint64_t sub_25A96DB44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (!*(v6 + 16))
  {
    goto LABEL_5;
  }

  v7 = sub_25A8F3600(a1, a2);
  if ((v8 & 1) == 0)
  {

LABEL_5:
    type metadata accessor for PyLogger();
    v9 = swift_allocObject();
    swift_weakInit();
    *(v9 + 40) = 0;
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    swift_beginAccess();
    swift_bridgeObjectRetain_n();

    v10 = *(v3 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v3 + 24);
    *(v3 + 24) = 0x8000000000000000;
    sub_25A96AA3C(v9, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v3 + 24) = v13;
    swift_endAccess();
    sub_25A96DC88();
    return v9;
  }

  v9 = *(*(v6 + 56) + 8 * v7);

  return v9;
}

uint64_t sub_25A96DC88()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = *(v0 + 24);

  v10 = 0;
  v33 = v2;
  while (v6)
  {
LABEL_9:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v10 << 6);
    v14 = (*(v2 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v34 = *(*(v2 + 56) + 8 * v13);
    if (v15 || v16 != 0xE000000000000000)
    {
      result = sub_25A9989E8();
      if ((result & 1) == 0)
      {
        v35[0] = 46;
        v35[1] = 0xE100000000000000;
        MEMORY[0x28223BE20](result);
        v32[2] = v35;

        v18 = sub_25A96F490(0x7FFFFFFFFFFFFFFFLL, 1, sub_25A9638FC, v32, v15, v16, v17);
        while (*(v18 + 16))
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            v21 = *(v18 + 16);
            if (!v21)
            {
              goto LABEL_30;
            }
          }

          else
          {
            result = sub_25A8F7A78(v18);
            v18 = result;
            v21 = *(result + 16);
            if (!v21)
            {
              goto LABEL_30;
            }
          }

          v22 = *(v18 + 32 * v21 + 24);
          *(v18 + 16) = v21 - 1;

          v35[0] = v18;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05748, &qword_25A9FF998);
          sub_25A96F994();
          sub_25A96F9F8();
          v19 = sub_25A9980C8();
          v20 = v23;

          if (*(*(v1 + 24) + 16))
          {
            v24 = *(v1 + 24);

            sub_25A8F3600(v19, v20);
            if (v25)
            {

              goto LABEL_23;
            }
          }
        }

        v19 = 0;
        v20 = 0xE000000000000000;
LABEL_23:

        v26 = *(v1 + 24);
        if (*(v26 + 16) && (v27 = *(v1 + 24), , v28 = sub_25A8F3600(v19, v20), v30 = v29, , (v30 & 1) != 0))
        {
          v31 = *(*(v26 + 56) + 8 * v28);
        }

        else
        {
        }

        v2 = v33;
        swift_weakAssign();
      }
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_25A96DFC8()
{
  v1 = v0;
  v2 = 0;
  v3 = MEMORY[0x277D837D0];
  v4 = &type metadata for PyLogLevel;
  v5 = MEMORY[0x277D84F70];
  while (1)
  {
    v6 = byte_286C0D358[v2 + 32];
    if (v6 > 2)
    {
      if (v6 == 3)
      {
        v7 = 0xE700000000000000;
        v8 = 0x474E494E524157;
      }

      else if (v6 == 4)
      {
        v7 = 0xE500000000000000;
        v8 = 0x524F525245;
      }

      else
      {
        v7 = 0xE800000000000000;
        v8 = 0x4C41434954495243;
      }
    }

    else if (byte_286C0D358[v2 + 32])
    {
      if (v6 == 1)
      {
        v7 = 0xE500000000000000;
        v8 = 0x4755424544;
      }

      else
      {
        v7 = 0xE400000000000000;
        v8 = 1330007625;
      }
    }

    else
    {
      v7 = 0xE600000000000000;
      v8 = 0x544553544F4ELL;
    }

    v9 = *(v1 + 16);
    *(&v71 + 1) = v3;
    *&v70 = v8;
    *(&v70 + 1) = v7;
    v83 = v4;
    LOBYTE(v82[0]) = v6;
    sub_25A87500C(&v70, v80);

    if (swift_dynamicCast())
    {
      break;
    }

LABEL_3:
    ++v2;
    __swift_destroy_boxed_opaque_existential_0Tm(v82);
    __swift_destroy_boxed_opaque_existential_0Tm(&v70);
    if (v2 == 6)
    {
      v40 = *(v1 + 16);
      *(&v76 + 1) = v3;
      *&v75 = 0x6567676F4C746567;
      *(&v75 + 1) = 0xE900000000000072;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04790, &qword_25A9F8E58);
      v41 = swift_allocObject();
      v41[1] = xmmword_25A9F8D90;
      v41[2] = 0u;
      v41[3] = 0u;

      v42 = MEMORY[0x277D84F90];
      v43 = sub_25A92BDB4(MEMORY[0x277D84F90]);
      v44 = type metadata accessor for Function();
      v45 = swift_allocObject();
      v45[4] = v42;
      v45[5] = v42;
      v45[6] = v42;

      v45[7] = v42;

      v45[8] = v42;

      v45[9] = 0;
      v45[10] = 0;

      v45[11] = 0;
      v45[12] = 0;

      v45[13] = sub_25A92BDB4(v42);
      v45[2] = 0x6567676F4C746567;
      v45[3] = 0xE900000000000072;
      v46 = *(v45 + 5);
      v80[2] = *(v45 + 4);
      v80[3] = v46;
      v81 = v45[12];
      v47 = *(v45 + 3);
      v80[0] = *(v45 + 2);
      v80[1] = v47;
      v45[4] = &unk_286C0D380;
      v45[5] = v42;
      v45[6] = v42;
      v45[7] = v42;
      v45[8] = v41;
      *(v45 + 9) = 0u;
      *(v45 + 11) = 0u;
      sub_25A892B80(v80);
      swift_beginAccess();
      v48 = v45[13];
      v45[13] = v43;

      v49 = swift_allocObject();
      *(v49 + 16) = sub_25A96F850;
      *(v49 + 24) = v1;
      v45[14] = sub_25A8F1830;
      v45[15] = v49;
      *(&v71 + 1) = v44;
      *&v70 = v45;
      LexicalContext.store(key:obj:)(&v75, &v70);

      __swift_destroy_boxed_opaque_existential_0Tm(&v70);
      __swift_destroy_boxed_opaque_existential_0Tm(&v75);
      v75 = xmmword_286C0D3D0;

      v50 = v84;
      sub_25A96EAB0(&v75, v1);

      v75 = xmmword_286C0D3E0;

      sub_25A96EAB0(&v75, v1);

      v75 = xmmword_286C0D3F0;

      sub_25A96EAB0(&v75, v1);

      v75 = xmmword_286C0D400;

      sub_25A96EAB0(&v75, v1);

      v75 = xmmword_286C0D410;

      sub_25A96EAB0(&v75, v1);
      v84 = v50;

      swift_arrayDestroy();
      v51 = *(v1 + 16);
      *(&v76 + 1) = v3;
      *&v75 = 6778732;
      *(&v75 + 1) = 0xE300000000000000;

      v52 = sub_25A92BDB4(v42);
      v53 = swift_allocObject();
      v53[4] = v42;
      v53[5] = v42;
      v53[6] = v42;

      v53[7] = v42;

      v53[8] = v42;

      v53[9] = 0;
      v53[10] = 0;

      v53[11] = 0;
      v53[12] = 0;

      v53[13] = sub_25A92BDB4(v42);
      v53[2] = 6778732;
      v53[3] = 0xE300000000000000;
      v54 = *(v53 + 5);
      v72 = *(v53 + 4);
      v73 = v54;
      v74 = v53[12];
      v55 = *(v53 + 3);
      v70 = *(v53 + 2);
      v71 = v55;
      v53[4] = &unk_286C0D420;
      v53[5] = v42;
      v53[6] = v42;
      v53[7] = v42;
      v53[8] = v42;
      *(v53 + 9) = xmmword_25A9F8DA0;
      *(v53 + 11) = xmmword_25A9F8DD0;
      sub_25A892B80(&v70);
      swift_beginAccess();
      v56 = v53[13];
      v53[13] = v52;

      v57 = swift_allocObject();
      *(v57 + 16) = sub_25A96F8FC;
      *(v57 + 24) = v1;
      v53[14] = sub_25A8F1D14;
      v53[15] = v57;
      v83 = v44;
      v82[0] = v53;
      LexicalContext.store(key:obj:)(&v75, v82);

      __swift_destroy_boxed_opaque_existential_0Tm(v82);
      __swift_destroy_boxed_opaque_existential_0Tm(&v75);
      v58 = *(v1 + 16);
      v83 = v3;
      v82[0] = 0x6E6F436369736162;
      v82[1] = 0xEB00000000676966;

      v59 = sub_25A92BDB4(v42);
      v60 = swift_allocObject();
      v60[4] = v42;
      v60[5] = v42;
      v60[6] = v42;

      v60[7] = v42;

      v60[8] = v42;

      v60[9] = 0;
      v60[10] = 0;

      v60[11] = 0;
      v60[12] = 0;

      v60[13] = sub_25A92BDB4(v42);
      v60[2] = 0x6E6F436369736162;
      v60[3] = 0xEB00000000676966;
      v61 = *(v60 + 5);
      v77 = *(v60 + 4);
      v78 = v61;
      v79 = v60[12];
      v62 = *(v60 + 3);
      v75 = *(v60 + 2);
      v76 = v62;
      v60[4] = v42;
      v60[5] = v42;
      v60[6] = v42;
      v60[7] = v42;
      v60[8] = v42;
      v60[9] = 0;
      v60[10] = 0;
      *(v60 + 11) = xmmword_25A9F8DD0;
      sub_25A892B80(&v75);
      swift_beginAccess();
      v63 = v60[13];
      v60[13] = v59;

      v64 = swift_allocObject();
      *(v64 + 16) = sub_25A96F918;
      *(v64 + 24) = v1;
      v60[14] = sub_25A8F1D14;
      v60[15] = v64;
      v69[3] = v44;
      v69[0] = v60;
      LexicalContext.store(key:obj:)(v82, v69);

      __swift_destroy_boxed_opaque_existential_0Tm(v69);
      return __swift_destroy_boxed_opaque_existential_0Tm(v82);
    }
  }

  v10 = *(v9 + 32);

  sub_25A998578();
  sub_25A87500C(v82, v69);
  sub_25A874FB0(v80, &v75);
  sub_25A8780B8(v69, &v67);
  swift_beginAccess();
  if (!v68)
  {
    sub_25A872D84(&v67);
    v25 = *(v10 + 16);
    v26 = sub_25A8F35BC(&v75);
    if (v27)
    {
      v28 = v26;
      v29 = *(v10 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *(v10 + 16);
      *(v10 + 16) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_25A968DB8();
      }

      sub_25A8795A0(*(v31 + 48) + 40 * v28);
      sub_25A872D74((*(v31 + 56) + 32 * v28), v66);
      sub_25A969C84(v28, v31);
      sub_25A8795A0(&v75);
      v32 = *(v10 + 16);
      *(v10 + 16) = v31;
    }

    else
    {
      sub_25A8795A0(&v75);
      memset(v66, 0, sizeof(v66));
    }

    sub_25A872D84(v66);
    goto LABEL_34;
  }

  v11 = v1;
  v12 = v5;
  v13 = v4;
  sub_25A872D74(&v67, v66);
  v14 = *(v10 + 16);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v10 + 16);
  *(v10 + 16) = 0x8000000000000000;
  v17 = sub_25A8F35BC(&v75);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (!v21)
  {
    v23 = v18;
    if (v16[3] >= v22)
    {
      if ((v15 & 1) == 0)
      {
        v35 = v17;
        sub_25A968DB8();
        v17 = v35;
        v33 = v16;
        if (v23)
        {
          goto LABEL_27;
        }

        goto LABEL_31;
      }
    }

    else
    {
      sub_25A9679D0(v22, v15);
      v17 = sub_25A8F35BC(&v75);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_38;
      }
    }

    v33 = v16;
    if (v23)
    {
LABEL_27:
      v34 = (v33[7] + 32 * v17);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      sub_25A872D74(v66, v34);
      sub_25A8795A0(&v75);
LABEL_33:
      v39 = *(v10 + 16);
      *(v10 + 16) = v33;

      v4 = v13;
      v5 = v12;
      v1 = v11;
      v3 = MEMORY[0x277D837D0];
LABEL_34:
      swift_endAccess();

      sub_25A872D84(v69);
      sub_25A8795A0(v80);
      goto LABEL_3;
    }

LABEL_31:
    v33[(v17 >> 6) + 8] |= 1 << v17;
    v36 = v17;
    sub_25A874FB0(&v75, v33[6] + 40 * v17);
    sub_25A872D74(v66, (v33[7] + 32 * v36));
    sub_25A8795A0(&v75);
    v37 = v33[2];
    v21 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v21)
    {
      goto LABEL_37;
    }

    v33[2] = v38;
    goto LABEL_33;
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_25A998AA8();
  __break(1u);
  return result;
}

uint64_t sub_25A96E9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a1 + 16) && (v6 = sub_25A8F3600(1701667182, 0xE400000000000000), (v7 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v6, v13), (swift_dynamicCast() & 1) != 0))
  {
    v8 = sub_25A96DB44(v11, v12);

    result = type metadata accessor for PyLogger();
    a3[3] = result;
    *a3 = v8;
  }

  else
  {
    v10 = *(a2 + 32);
    a3[3] = type metadata accessor for PyLogger();
    *a3 = v10;
  }

  return result;
}

uint64_t sub_25A96EAB0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a2 + 16);
  v17[3] = MEMORY[0x277D837D0];
  v17[0] = v3;
  v17[1] = v4;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = v3;
  v6[4] = v4;
  swift_bridgeObjectRetain_n();

  v7 = MEMORY[0x277D84F90];
  v8 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v9 = type metadata accessor for Function();
  v10 = swift_allocObject();
  v10[4] = v7;
  v10[5] = v7;
  v10[6] = v7;

  v10[7] = v7;

  v10[8] = v7;

  v10[9] = 0;
  v10[10] = 0;

  v10[11] = 0;
  v10[12] = 0;

  v10[13] = sub_25A92BDB4(v7);
  v10[2] = v3;
  v10[3] = v4;
  v11 = *(v10 + 5);
  v18[2] = *(v10 + 4);
  v18[3] = v11;
  v19 = v10[12];
  v12 = *(v10 + 3);
  v18[0] = *(v10 + 2);
  v18[1] = v12;
  v10[4] = &unk_286C0D328;
  v10[5] = v7;
  v10[6] = v7;
  v10[7] = v7;
  v10[8] = v7;
  *(v10 + 9) = xmmword_25A9F8DA0;
  *(v10 + 11) = xmmword_25A9F8DD0;
  sub_25A892B80(v18);
  swift_beginAccess();
  v13 = v10[13];
  v10[13] = v8;

  v14 = swift_allocObject();
  *(v14 + 16) = sub_25A96F974;
  *(v14 + 24) = v6;
  v10[14] = sub_25A8F1D14;
  v10[15] = v14;
  v16[3] = v9;
  v16[0] = v10;
  LexicalContext.store(key:obj:)(v17, v16);

  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  return __swift_destroy_boxed_opaque_existential_0Tm(v17);
}

uint64_t sub_25A96ECAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_12;
  }

  v7 = sub_25A8F3600(6779757, 0xE300000000000000);
  if ((v8 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v7, v20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!*(a1 + 16) || (v9 = sub_25A8F3600(1936159329, 0xE400000000000000), (v10 & 1) == 0) || (sub_25A87500C(*(a1 + 56) + 32 * v9, v20), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30), (swift_dynamicCast() & 1) == 0))
  {

LABEL_12:
    sub_25A874F54();
    swift_allocError();
    *v14 = -112;
    return swift_willThrow();
  }

  v21 = v18;
  if (*(a1 + 16) && (v11 = sub_25A8F3600(0x73677261776BLL, 0xE600000000000000), (v12 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v11, v20), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA048F0, "2K\a"), (swift_dynamicCast() & 1) != 0))
  {
    v13 = v18;
  }

  else
  {
    v13 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  }

  v16 = *(a2 + 32);
  v17 = sub_25A94C624();
  sub_25A985E74(v17, v18, v19, v21, v13);

  if (!v3)
  {
    *(a3 + 24) = MEMORY[0x277D84F78] + 8;
  }

  return result;
}

uint64_t sub_25A96EEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_15;
  }

  v7 = sub_25A8F3600(0x6C6576656CLL, 0xE500000000000000);
  if ((v8 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v7, v21);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_15;
  }

  v9 = sub_25A8F3600(6779757, 0xE300000000000000);
  if ((v10 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v9, v21);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (!*(a1 + 16) || (v11 = sub_25A8F3600(1936159329, 0xE400000000000000), (v12 & 1) == 0) || (sub_25A87500C(*(a1 + 56) + 32 * v11, v21), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30), (swift_dynamicCast() & 1) == 0))
  {

LABEL_15:
    sub_25A874F54();
    swift_allocError();
    *v16 = -112;
    return swift_willThrow();
  }

  if (*(a1 + 16) && (v13 = sub_25A8F3600(0x73677261776BLL, 0xE600000000000000), (v14 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v13, v21), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA048F0, "2K\a"), (swift_dynamicCast() & 1) != 0))
  {
    v15 = v19;
  }

  else
  {
    v15 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  }

  v18 = *(a2 + 32);
  sub_25A985E74(v19, v19, v20, v19, v15);

  if (!v3)
  {
    *(a3 + 24) = MEMORY[0x277D84F78] + 8;
  }

  return result;
}

uint64_t sub_25A96F148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 16) && (v6 = sub_25A8F3600(0x73677261776BLL, 0xE600000000000000), (v7 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v6, v21), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA048F0, "2K\a"), (swift_dynamicCast() & 1) != 0))
  {
    v8 = v20;
  }

  else
  {
    v8 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  }

  v23 = v8;
  sub_25A969A58(0x6C6576656CLL, 0xE500000000000000, v21);
  if (v22)
  {
    if (swift_dynamicCast())
    {
      v9 = sub_25A94C624();

      *(*(a2 + 32) + 40) = v9;
    }
  }

  else
  {
    sub_25A872D84(v21);
  }

  if (*(v23 + 16) >= 2uLL)
  {
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v10 = sub_25A997BD8();
    __swift_project_value_buffer(v10, qword_27FA0FCE8);
    v11 = sub_25A997BB8();
    v12 = sub_25A9983A8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21[0] = v14;
      *v13 = 136315138;

      v15 = sub_25A997C58();
      v17 = v16;

      v18 = sub_25A98CC90(v15, v17, v21);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_25A232000, v11, v12, "Unsupported arguments to basicConfig: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x25F852800](v14, -1, -1);
      MEMORY[0x25F852800](v13, -1, -1);
    }
  }

  *(a3 + 24) = MEMORY[0x277D84F78] + 8;
}

uint64_t sub_25A96F400()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

unint64_t sub_25A96F490@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_25A998058();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_25A967148(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_25A967148((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_25A998028();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_25A997F28();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_25A997F28();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_25A998058();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_25A967148(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_25A998058();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_25A967148(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_25A967148((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_25A997F28();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25A96F86C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25A9989E8() & 1;
  }
}

uint64_t sub_25A96F8C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25A96F934()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25A96F974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_25A96ECAC(a1, v2[2], a2);
}

unint64_t sub_25A96F994()
{
  result = qword_27FA05750;
  if (!qword_27FA05750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA05748, &qword_25A9FF998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05750);
  }

  return result;
}

unint64_t sub_25A96F9F8()
{
  result = qword_27FA05758[0];
  if (!qword_27FA05758[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FA05758);
  }

  return result;
}

id sub_25A96FA58()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  qword_27FA0FD28 = result;
  return result;
}

uint64_t sub_25A96FAB4(uint64_t a1, uint64_t a2)
{
  sub_25A87500C(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05860, &qword_25A9FFCE0);
  if (swift_dynamicCast())
  {
    sub_25A87817C(v8, v11);
    v4 = v12;
    v5 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v6 = (*(v5 + 16))(a2, v4, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    return v6;
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_25A9717F0(v8);
    sub_25A87500C(a1, v11);
    return sub_25A997EA8();
  }
}

uint64_t sub_25A96FBB0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25A998008();
  v16 = v15;
  v17 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v17 != 2)
    {

      return 1701736302;
    }

    v23 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v53 = 2651;
    v54 = 0xE200000000000000;
    v24 = v14;
    v52 = v14;

    MEMORY[0x25F850290](v24, v16);

    MEMORY[0x25F850290](8224, 0xE200000000000000);

    v49 = &v49;
    v50 = v54;
    v51 = v53;
    v53 = v23;
    MEMORY[0x28223BE20](v25);
    *(&v49 - 4) = a3;
    *(&v49 - 3) = a4;
    *(&v49 - 2) = a5;
    type metadata accessor for NestedItem();
    sub_25A997CE8();
    swift_getWitnessTable();
    v26 = sub_25A9980A8();

    v49 = &v49;
    v53 = v26;
    MEMORY[0x28223BE20](v27);
    *(&v49 - 4) = a3;
    *(&v49 - 3) = a4;
    *(&v49 - 2) = a5;
    *(&v49 - 1) = a1;
    swift_getTupleTypeMetadata2();
    v28 = sub_25A9981A8();
    WitnessTable = swift_getWitnessTable();
    v31 = sub_25A93B96C(sub_25A9717A8, (&v49 - 6), v28, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v30);

    v56 = v31;
    v53 = 2604;
    v54 = 0xE200000000000000;
    v32 = v52;
    MEMORY[0x25F850290](v52, v16);
    MEMORY[0x25F850290](8224, 0xE200000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04870, &qword_25A9F8EE8);
    sub_25A8953BC();
    v33 = sub_25A997D68();
    v35 = v34;

    v53 = v51;
    v54 = v50;

    MEMORY[0x25F850290](v33, v35);

    MEMORY[0x25F850290](10, 0xE100000000000000);

    v36 = v32;
LABEL_8:
    MEMORY[0x25F850290](v36, v16);

    MEMORY[0x25F850290](93, 0xE100000000000000);

    return v53;
  }

  if (v17)
  {
    v37 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v53 = 2651;
    v54 = 0xE200000000000000;
    v38 = v14;
    v52 = v14;

    MEMORY[0x25F850290](v38, v16);

    MEMORY[0x25F850290](8224, 0xE200000000000000);

    v40 = v54;
    v51 = v53;
    v53 = v37;
    MEMORY[0x28223BE20](v39);
    *(&v49 - 4) = a3;
    *(&v49 - 3) = a4;
    *(&v49 - 2) = a5;
    *(&v49 - 1) = a1;
    type metadata accessor for NestedItem();
    v41 = sub_25A9981A8();
    v42 = swift_getWitnessTable();
    v44 = sub_25A93B96C(sub_25A9717CC, (&v49 - 6), v41, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v42, MEMORY[0x277D84AC0], v43);

    v56 = v44;
    v53 = 2604;
    v54 = 0xE200000000000000;
    v45 = v52;
    MEMORY[0x25F850290](v52, v16);
    MEMORY[0x25F850290](8224, 0xE200000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04870, &qword_25A9F8EE8);
    sub_25A8953BC();
    v46 = sub_25A997D68();
    v48 = v47;

    v53 = v51;
    v54 = v40;

    MEMORY[0x25F850290](v46, v48);

    MEMORY[0x25F850290](10, 0xE100000000000000);

    v36 = v45;
    goto LABEL_8;
  }

  v18 = swift_projectBox();
  v19 = *(v10 + 16);
  v19(v13, v18, a4);
  v55 = a4;
  v20 = __swift_allocate_boxed_opaque_existential_0(&v53);
  result = (v19)(v20, v13, a4);
  if (__OFADD__(a1, 2))
  {
    __break(1u);
  }

  else
  {
    v22 = sub_25A96FAB4(&v53, a1 + 2);
    (*(v10 + 8))(v13, a4);
    __swift_destroy_boxed_opaque_existential_0Tm(&v53);
    return v22;
  }

  return result;
}

uint64_t sub_25A97026C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  result = type metadata accessor for NestedItem();
  v10[3] = result;
  v10[0] = v5;
  if (__OFADD__(a2, 2))
  {
    __break(1u);
  }

  else
  {

    v7 = sub_25A96FAB4(v10, a2 + 2);
    v9 = v8;
    result = __swift_destroy_boxed_opaque_existential_0Tm(v10);
    *a3 = v7;
    a3[1] = v9;
  }

  return result;
}

uint64_t sub_25A9702FC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NestedItem();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = *(TupleTypeMetadata2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v8 = v19 - v7;
  v9 = *(v5 + 16);
  v9(v19 - v7, a1, TupleTypeMetadata2);
  v10 = *&v8[*(TupleTypeMetadata2 + 48)];

  v11 = sub_25A997EA8();
  v13 = v12;
  v9(v8, a2, TupleTypeMetadata2);
  v14 = *&v8[*(TupleTypeMetadata2 + 48)];

  if (v11 == sub_25A997EA8() && v13 == v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_25A9989E8();
  }

  return v17 & 1;
}

uint64_t sub_25A9704A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for NestedItem();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v13 = v20 - v12;
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_25A9989A8();
  MEMORY[0x25F850290](8250, 0xE200000000000000);
  result = (*(v10 + 16))(v13, a1, TupleTypeMetadata2);
  v15 = *&v13[*(TupleTypeMetadata2 + 48)];
  v20[3] = v8;
  v20[0] = v15;
  if (__OFADD__(a2, 2))
  {
    __break(1u);
  }

  else
  {
    v16 = sub_25A96FAB4(v20, a2 + 2);
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    (*(*(a3 - 8) + 8))(v13, a3);
    MEMORY[0x25F850290](v16, v18);

    v19 = v22;
    *a4 = v21;
    a4[1] = v19;
  }

  return result;
}

uint64_t sub_25A970664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](a1);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v16 = v29 - v15;
  v17 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v17 != 2)
    {
      if (v14 == 0xC000000000000000)
      {
        v21 = 1;
        return v21 & 1;
      }

LABEL_13:
      v21 = 0;
      return v21 & 1;
    }

    if (v14 >> 62 != 2)
    {
      goto LABEL_13;
    }

    v23 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v24 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    type metadata accessor for NestedItem();
    v29[1] = a6;

    swift_getWitnessTable();
    v25 = sub_25A997CF8();
LABEL_10:
    v21 = v25;

    return v21 & 1;
  }

  if (v17)
  {
    if (v14 >> 62 != 1)
    {
      goto LABEL_13;
    }

    v26 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v27 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    type metadata accessor for NestedItem();
    v29[0] = a6;

    swift_getWitnessTable();
    v25 = sub_25A9981B8();
    goto LABEL_10;
  }

  if (v14 >> 62)
  {
    goto LABEL_13;
  }

  v18 = swift_projectBox();
  v19 = swift_projectBox();
  v20 = v8[2];
  v20(v16, v18, a4);
  v20(v12, v19, a4);
  v21 = sub_25A997DF8();
  v22 = v8[1];
  v22(v12, a4);
  v22(v16, a4);
  return v21 & 1;
}

uint64_t sub_25A970930(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_25A96FA90(a1, WitnessTable);
}

void sub_25A97099C()
{
  type metadata accessor for NestedItem();

  JUMPOUT(0x25F84FFE0);
}

uint64_t sub_25A9709F4()
{
  type metadata accessor for NestedItem();

  return _sSD8MorpheusE3lenSiyF_0();
}

uint64_t sub_25A970A4C(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;

  v1 = type metadata accessor for NestedItem();
  WitnessTable = swift_getWitnessTable();
  v3 = (*(WitnessTable + 16))(0, v1, WitnessTable);

  return v3;
}

uint64_t sub_25A970B2C()
{
  type metadata accessor for NestedItem();
  swift_getWitnessTable();
  return sub_25A997CF8() & 1;
}

uint64_t sub_25A970BD0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_25A970A4C(*v1);
}

uint64_t sub_25A970D24@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a3@<X8>)
{
  result = sub_25A970C20(*v3, a1[2], a1[3], a1[4], a2);
  *a3 = result;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7 & 1;
  return result;
}

void (*sub_25A970D68(uint64_t *a1, uint64_t *a2, void *a3))(uint64_t *a1, uint64_t a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  v10 = a3[2];
  v11 = a3[3];
  v12 = a3[4];
  type metadata accessor for NestedItem();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9[4] = TupleTypeMetadata2;
  v14 = *(TupleTypeMetadata2 - 8);
  v9[5] = v14;
  if (v7)
  {
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v15 = malloc(*(v14 + 64));
  }

  v16 = v15;
  v9[6] = v15;
  v17 = *a2;
  v18 = a2[1];
  v19 = *(a2 + 16);
  v20 = *v3;
  v21 = sub_25A970F78(v9);
  v23 = v22;
  v9[7] = v21;
  (*(*(v10 - 8) + 16))(v16);
  *(v16 + *(TupleTypeMetadata2 + 48)) = v23;

  return sub_25A970F00;
}

void sub_25A970F00(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*sub_25A970F78(void *a1))(void *a1)
{
  type metadata accessor for NestedItem();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  a1[1] = TupleTypeMetadata2;
  v3 = *(TupleTypeMetadata2 - 8);
  a1[2] = v3;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  v5 = v4;
  a1[3] = v4;
  v6 = *(TupleTypeMetadata2 + 48);
  type metadata accessor for NestedItem();
  sub_25A997D28();
  *(v5 + v6) = *a1;
  return sub_25A9710E0;
}

void sub_25A9710E0(void *a1)
{
  v1 = a1[3];
  (*(a1[2] + 8))(v1, a1[1]);

  free(v1);
}

void sub_25A971134(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  sub_25A97099C();
}

uint64_t sub_25A971148(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  return sub_25A9709F4();
}

uint64_t sub_25A971174@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  v8 = *v3;
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  result = sub_25A970C78();
  *a3 = result;
  *(a3 + 8) = v13;
  *(a3 + 16) = v14 & 1;
  return result;
}

uint64_t sub_25A9711C0(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *v2;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = sub_25A970C78();
  v13 = v12;
  v15 = v14;
  result = sub_25A92C648(v4, v5, v6);
  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15 & 1;
  return result;
}

uint64_t sub_25A971244@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *v2;
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];

  v8 = sub_25A970C20(v7, v4, v5, v6, MEMORY[0x277D83470]);
  v10 = v9;
  LOBYTE(v6) = v11;

  *(a2 + 8) = v8;
  *(a2 + 16) = v10;
  *(a2 + 24) = v6 & 1;
  return result;
}

uint64_t sub_25A9712D0()
{
  swift_getWitnessTable();

  return sub_25A9982A8();
}

uint64_t sub_25A971324()
{
  swift_getWitnessTable();
  v1 = sub_25A9714A0();
  v2 = *v0;

  return v1;
}

uint64_t sub_25A9713D4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_25A997DA8();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(sub_25A997DE8() + 36);
  result = sub_25A997DA8();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_25A9714A4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_25A997DA8();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(sub_25A998358() + 36);
  result = sub_25A997DA8();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_25A971570()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25A9715D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_8Morpheus10NestedItemOyxq_G(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_25A971628(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25A971684(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_25A9716E4(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  return result;
}

uint64_t sub_25A971710(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25A97174C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25A971784(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_25A9702FC(a1, a2) & 1;
}

uint64_t sub_25A9717A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_25A9704A8(a1, v2[5], v2[2], a2);
}

uint64_t sub_25A9717CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_25A97026C(a1, v2[5], a2);
}

uint64_t sub_25A9717F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05868, &qword_25A9FFCE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25A971858()
{
  mlx_device_free(*(v0 + 16));

  return swift_deallocClassInstance();
}

void sub_25A9718B8()
{
  type metadata accessor for Device();
  swift_allocObject();
  mlx_device_new_type(0);
}

id sub_25A971904()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  qword_27FA0FD38 = result;
  return result;
}

uint64_t sub_25A97193C()
{
  if (qword_27FA043E8 != -1)
  {
    swift_once();
  }

  qword_27FA0FD40 = qword_27FA0FD30;
}

void sub_25A9719A0()
{
  if (qword_27FA043E8 != -1)
  {
    swift_once();
  }

  v0 = qword_27FA0FD30;
  type metadata accessor for Stream();
  swift_allocObject();
  v1 = qword_27FA043E0;

  if (v1 != -1)
  {
    swift_once();
  }

  [qword_27FA0FD28 lock];
  mlx_stream_new_device(*(v0 + 16));
}

BOOL sub_25A971AA0(uint64_t *a1, uint64_t *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  v6[0] = 0;
  mlx_device_get_type(v6 + 1, *(v2 + 16));
  mlx_device_get_type(v6, *(v3 + 16));
  result = HIDWORD(v6[0]) == LODWORD(v6[0]);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A971B20(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A971B28);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A971B34()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = sub_25A997E98();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v8[0] = mlx_string_new();
  mlx_device_tostring(v8, *(v0 + 16));
  if (!mlx_string_data(v8[0]))
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  sub_25A997E78();
  v3 = sub_25A997E68();
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v3;
  mlx_string_free(v8[0]);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_25A971C24(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A971C2CLL);
  }

  _Unwind_Resume(a1);
}

void sub_25A971C6C(uint64_t a1)
{
  if (qword_27FA043F0 != -1)
  {
    swift_once();
  }

  [qword_27FA0FD38 lock];
  v2 = *(a1 + 16);
  mlx_set_default_device(v2);
  if (qword_27FA043F8 != -1)
  {
    swift_once();
  }

  qword_27FA0FD40 = a1;

  if (qword_27FA04400 != -1)
  {
    swift_once();
  }

  type metadata accessor for Stream();
  swift_allocObject();
  if (qword_27FA043E0 != -1)
  {
    swift_once();
  }

  [qword_27FA0FD28 lock];
  mlx_stream_new_device(v2);
}

uint64_t sub_25A971E1C(void *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = mlx_vector_array_size(a1);
  if (v2 < 0)
  {
    __break(1u);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v8 = MEMORY[0x277D84F90];
    sub_25A998748();
    for (i = 0; i != v2; ++i)
    {
      v9[0] = mlx_array_new();
      mlx_vector_array_get(v9, a1, i);
      v5 = v9[0];
      type metadata accessor for MLXArray();
      *(swift_allocObject() + 16) = v5;
      sub_25A998718();
      v6 = *(v8 + 16);
      sub_25A998758();
      sub_25A998768();
      sub_25A998728();
    }

    result = v8;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A971F2C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A971F34);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A971F48()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_25A971FA4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_25A972008()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25A97206C()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 40);
    if (v1)
    {
      v1();
    }
  }

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_25A9720FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25A972144(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25A972198(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 32 * v2;
  for (i = 32; ; i += 32)
  {
    if (v3 == v5)
    {
      goto LABEL_5;
    }

    v8 = *(v1 + 2);
    if (v3 >= v8)
    {
      break;
    }

    result = sub_25A87500C(&v1[i], v10);
    if (v5 >= v8)
    {
      goto LABEL_14;
    }

    sub_25A87500C(&v1[v6], v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_25A8F7A14(v1);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v1[i]);
    result = sub_25A872D74(v9, &v1[i]);
    if (v5 >= *(v1 + 2))
    {
      goto LABEL_15;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v1[v6]);
    result = sub_25A872D74(v10, &v1[v6]);
LABEL_5:
    ++v3;
    --v5;
    v6 -= 32;
    if (v4 == v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_25A9722AC(uint64_t a1, uint64_t a2)
{
  v2 = sub_25A973C6C(a1, a2);

  v4 = *(v2 + 16);
  if (v4 < 2)
  {
    return v2;
  }

  v5 = 0;
  v6 = 0;
  v7 = v4 >> 1;
  v8 = v4 - 1;
  for (i = 24 * v4 + 24; ; i -= 24)
  {
    if (v6 == v8)
    {
      goto LABEL_5;
    }

    v12 = *(v2 + 16);
    if (v6 >= v12)
    {
      break;
    }

    if (v8 >= v12)
    {
      goto LABEL_12;
    }

    v17 = *(v2 + v5 + 32);
    v13 = *(v2 + v5 + 48);
    v14 = *(v2 + i - 16);
    v15 = *(v2 + i - 8);
    v16 = *(v2 + i);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25A8F7A64(v2);
      v2 = result;
    }

    v10 = (v2 + v5);
    v10[4] = v14;
    v10[5] = v15;
    v10[6] = v16;
    v11 = (v2 + i);
    *(v11 - 1) = v17;
    *v11 = v13;
LABEL_5:
    ++v6;
    --v8;
    v5 += 24;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

int64_t sub_25A9723D0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_25A997AF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FA043E0 != -1)
  {
    swift_once();
  }

  v11 = qword_27FA0FD28;
  [qword_27FA0FD28 lock];
  swift_beginAccess();
  mlx_array_eval(*(v3 + 16));
  [v11 unlock];
  if (!a1)
  {
    goto LABEL_6;
  }

  if (a1 != 1)
  {
    result = mlx_array_data_uint8(*(v3 + 16));
    v17 = result;
    if (!result)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v18 = mlx_array_nbytes(*(v3 + 16));
    (*(v7 + 104))(v10, *MEMORY[0x277CC92A8], v6);
    v15 = sub_25A974090(v17, v18, v10);
    v16 = v19;
    if (mlx_array_ndim(*(v3 + 16)))
    {
      result = mlx_array_strides(*(v3 + 16));
      v20 = result;
      if (!result)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      result = mlx_array_ndim(*(v3 + 16));
      v21 = result;
      if (result < 0)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v13 = MEMORY[0x277D84F90];
      if (result)
      {
        v33 = v15;
        v34[0] = MEMORY[0x277D84F90];
        sub_25A937570(0, result, 0);
        v13 = v34[0];
        v22 = *(v34[0] + 16);
        do
        {
          v24 = *v20++;
          v23 = v24;
          v34[0] = v13;
          v25 = *(v13 + 3);
          if (v22 >= v25 >> 1)
          {
            sub_25A937570((v25 > 1), v22 + 1, 1);
            v13 = v34[0];
          }

          *(v13 + 2) = v22 + 1;
          *&v13[8 * v22++ + 32] = v23;
          --v21;
        }

        while (v21);
        v15 = v33;
      }
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    v14 = sub_25A9616CC();
    v31 = mlx_array_dtype(*(v3 + 16));
    goto LABEL_22;
  }

  if (sub_25A972768())
  {
LABEL_6:
    sub_25A972B28(v34);
    result = v35;
    v14 = v34[2];
    v13 = v34[3];
    v15 = v34[0];
    v16 = v34[1];
LABEL_23:
    *a2 = v15;
    *(a2 + 8) = v16;
    *(a2 + 16) = v14;
    *(a2 + 24) = v13;
    *(a2 + 32) = result;
    return result;
  }

  result = mlx_array_data_uint8(*(v3 + 16));
  v26 = result;
  if (result)
  {
    v27 = mlx_array_size(*(v3 + 16));
    result = mlx_array_itemsize(*(v3 + 16));
    v28 = v27 * result;
    if ((v27 * result) >> 64 == (v27 * result) >> 63)
    {
      (*(v7 + 104))(v10, *MEMORY[0x277CC92A8], v6);
      v15 = sub_25A974090(v26, v28, v10);
      v16 = v29;
      v14 = sub_25A9616CC();
      v30 = sub_25A9616CC();
      v13 = sub_25A972CA4(v30);

      v31 = mlx_array_dtype(*(v3 + 16));
LABEL_22:
      result = sub_25A956420(v31);
      goto LABEL_23;
    }

    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_25A972768()
{
  v0 = sub_25A9616CC();
  v1 = sub_25A961A18();
  v2 = sub_25A9722AC(v0, v1);
  v3 = (v2 + 48);
  v4 = *(v2 + 16) + 1;
  v5 = 1;
  while (1)
  {
    if (!--v4)
    {
      goto LABEL_6;
    }

    if (*v3 != v5)
    {
      break;
    }

    v6 = *(v3 - 1);
    v3 += 3;
    v7 = (v5 * v6) >> 64;
    v5 *= v6;
    if (v7 != v5 >> 63)
    {
      __break(1u);
LABEL_6:

      return 0;
    }
  }

  v9 = *(v3 - 2);

  result = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
  }

  return result;
}

void sub_25A9727FC(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_25A972768();
  v7 = sub_25A9616CC();
  v8 = sub_25A961A18();
  if (!v6)
  {
    goto LABEL_5;
  }

  v33 = a1;
  swift_beginAccess();
  v9 = mlx_array_itemsize(*(v3 + 16));
  v10 = 8 * v6;
  if (v6 != mlx_array_ndim(*(v3 + 16)))
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
LABEL_52:
      __break(1u);
    }

    else if (v6 < *(v8 + 16))
    {
      if (v6 < *(v7 + 16))
      {
        v12 = *(v8 + v10 + 32);
        v13 = *(v7 + v10 + 32);
        v14 = v12 * v13;
        if ((v12 * v13) >> 64 == (v12 * v13) >> 63)
        {
          v11 = v14 * v9;
          if ((v14 * v9) >> 64 == (v14 * v9) >> 63)
          {
            goto LABEL_11;
          }

LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    __break(1u);
    goto LABEL_54;
  }

  v11 = v9;
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:

    sub_25A972AD4();
    sub_25A9979D8();
    return;
  }

LABEL_11:
  v15 = sub_25A998158();
  *(v15 + 16) = v6;
  v16 = v15 + 32;
  bzero((v15 + 32), 8 * v6);
  if (!a3)
  {
LABEL_58:
    __break(1u);
    return;
  }

  v17 = v6 - 1;
LABEL_13:
  v18 = 0;
  v19 = 4;
  while (v19 - v6 != 4)
  {
    v20 = *(v8 + 16);
    if (v19 - 4 == v20)
    {
      break;
    }

    if (v19 - 4 >= v20)
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v21 = *(v15 + 8 * v19);
    v22 = *(v8 + 8 * v19);
    v23 = v21 * v22;
    if ((v21 * v22) >> 64 != (v21 * v22) >> 63)
    {
      goto LABEL_44;
    }

    ++v19;
    v24 = __OFADD__(v18, v23);
    v18 += v23;
    if (v24)
    {
      goto LABEL_45;
    }
  }

  if (!v33)
  {
    goto LABEL_57;
  }

  if ((v18 * v9) >> 64 != (v18 * v9) >> 63)
  {
    goto LABEL_49;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  memmove(a3, (v33 + v18 * v9), v11);
  v25 = 0;
  a3 += v11;
  v26 = v17;
  v27 = v17 == 0;
  if (v17 > 0)
  {
LABEL_25:
    v28 = v26 - 1;
    goto LABEL_31;
  }

  while (1)
  {
    v29 = !v27;
    if ((v29 | v25))
    {
      goto LABEL_40;
    }

    v28 = 0;
    v25 = 1;
LABEL_31:
    if (v26 >= *(v15 + 16))
    {
      goto LABEL_46;
    }

    if (v26 >= *(v7 + 16))
    {
      goto LABEL_47;
    }

    v30 = *(v7 + 32 + 8 * v26);
    v31 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
      goto LABEL_48;
    }

    v32 = *(v16 + 8 * v26);
    if (v32 != v31)
    {
      if (__OFADD__(v32, 1))
      {
        goto LABEL_51;
      }

      *(v16 + 8 * v26) = v32 + 1;
LABEL_40:
      v6 = *(v15 + 16);
      goto LABEL_13;
    }

    if (!v26)
    {
      break;
    }

    *(v16 + 8 * v26) = 0;
    v26 = v28;
    v27 = v28 == 0;
    if (v28 > 0)
    {
      goto LABEL_25;
    }
  }
}

unint64_t sub_25A972AD4()
{
  result = qword_27FA05870;
  if (!qword_27FA05870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05870);
  }

  return result;
}

uint64_t sub_25A972B28@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = mlx_array_data_uint8(*(v1 + 16));
  v4 = sub_25A9616CC();
  v5 = sub_25A961A18();
  v6 = sub_25A8ECDF0(v4, v5);

  v7 = sub_25A8EF920(v6);
  v9 = v8;

  if (v9)
  {
    v7 = mlx_array_size(*(v1 + 16));
  }

  result = mlx_array_itemsize(*(v1 + 16));
  v11 = v7 * result;
  if ((v7 * result) >> 64 == (v7 * result) >> 63)
  {
    v12 = mlx_array_nbytes(*(v1 + 16));
    if (v3)
    {
      v13 = v3 + v11;
    }

    else
    {
      v13 = 0;
    }

    v22 = sub_25A973F0C(v12);
    v23 = v14;

    sub_25A972E5C(&v22, v1, v3, v13);
    v15 = v22;
    v16 = v23;
    sub_25A8F192C(v22, v23);
    v17 = sub_25A9616CC();
    v18 = sub_25A9616CC();
    v19 = sub_25A972CA4(v18);

    v20 = mlx_array_dtype(*(v1 + 16));
    v21 = sub_25A956420(v20);
    result = sub_25A8F1C54(v15, v16);
    *a1 = v15;
    *(a1 + 8) = v16;
    *(a1 + 16) = v17;
    *(a1 + 24) = v19;
    *(a1 + 32) = v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_25A972CA4(uint64_t a1)
{
  v9 = MEMORY[0x277D84F90];
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 24;
    v3 = MEMORY[0x277D84F90];
    v4 = 1;
    while (1)
    {
      v5 = *(v2 + 8 * v1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_25A967040(0, *(v3 + 2) + 1, 1, v3);
      }

      v7 = *(v3 + 2);
      v6 = *(v3 + 3);
      if (v7 >= v6 >> 1)
      {
        v3 = sub_25A967040((v6 > 1), v7 + 1, 1, v3);
      }

      *(v3 + 2) = v7 + 1;
      *&v3[8 * v7 + 32] = v4;
      if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
      {
        break;
      }

      v4 *= v5;
      if (!--v1)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_11:
    v9 = v3;
  }

  sub_25A972DA4();
  return v9;
}

void sub_25A972DA4()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (v2)
  {
    v3 = v2 == 1;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = *v0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_16:
      v1 = sub_25A8F7A00(v1);
    }

    v5 = 0;
    v6 = v2 + 3;
    do
    {
      if (v5 != v6 - 4)
      {
        v8 = *(v1 + 2);
        if (v5 >= v8)
        {
          __break(1u);
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

        if (v6 - 4 >= v8)
        {
          goto LABEL_15;
        }

        v9 = &v1[8 * v5];
        v10 = *(v9 + 4);
        *(v9 + 4) = *&v1[8 * v6];
        *&v1[8 * v6] = v10;
      }

      ++v5;
      v7 = v6 - 5;
      --v6;
    }

    while (v5 < v7);
    *v0 = v1;
  }
}

uint64_t sub_25A972E5C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v7 = a1[1];
  v9 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (v9)
    {

      sub_25A8F192C(v8, v7);
      sub_25A8F1C54(v8, v7);
      *&v26 = v8;
      *(&v26 + 1) = v7 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_25A9F8DC0;
      sub_25A8F1C54(0, 0xC000000000000000);
      sub_25A97317C(&v26, a2, a3, a4);

      v20 = *(&v26 + 1) | 0x4000000000000000;
      *a1 = v26;
      a1[1] = v20;
    }

    else
    {

      sub_25A8F1C54(v8, v7);
      *&v26 = v8;
      WORD4(v26) = v7;
      BYTE10(v26) = BYTE2(v7);
      BYTE11(v26) = BYTE3(v7);
      BYTE12(v26) = BYTE4(v7);
      BYTE13(v26) = BYTE5(v7);
      BYTE14(v26) = BYTE6(v7);
      sub_25A9727FC(a3, a4, &v26);
      v10 = v26;
      v11 = DWORD2(v26) | ((WORD6(v26) | (BYTE14(v26) << 16)) << 32);

      *a1 = v10;
      a1[1] = v11;
    }

    goto LABEL_11;
  }

  if (v9 != 2)
  {
    *(&v26 + 7) = 0;
    *&v26 = 0;
    sub_25A9727FC(a3, a4, &v26);

    goto LABEL_11;
  }

  sub_25A8F1C54(v8, v7);
  *&v26 = v8;
  *(&v26 + 1) = v7 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_25A9F8DC0;
  sub_25A8F1C54(0, 0xC000000000000000);
  sub_25A997AD8();
  v13 = *(&v26 + 1);
  v14 = *(v26 + 16);
  v15 = *(v26 + 24);
  v16 = sub_25A997A08();
  if (v16)
  {
    v17 = v16;
    v18 = sub_25A997A38();
    v19 = v14 - v18;
    if (__OFSUB__(v14, v18))
    {
      __break(1u);
    }

    else if (!__OFSUB__(v15, v14))
    {
      sub_25A997A28();
      sub_25A9727FC(a3, a4, (v17 + v19));

      *a1 = v26;
      a1[1] = v13 | 0x8000000000000000;
LABEL_11:
      v21 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25A97317C(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_25A997B08();
  v8 = *a1;
  if (a1[1] < v8)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v12 = a3;
  v9 = *(a1 + 1);

  result = sub_25A997A08();
  if (result)
  {
    v10 = result;
    result = sub_25A997A38();
    v11 = v8 - result;
    if (!__OFSUB__(v8, result))
    {
      sub_25A997A28();
      sub_25A9727FC(v12, a4, (v10 + v11));
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_25A973258(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = sub_25A973E44(a1, a2);
  v5 = v4;
  if (v4)
  {
    if (v4 <= 0)
    {
      v6 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA053B0, &qword_25A9FDC20);
      v6 = swift_allocObject();
      v7 = _swift_stdlib_malloc_size(v6);
      v8 = v7 - 32;
      if (v7 < 32)
      {
        v8 = v7 - 29;
      }

      v6[2] = v5;
      v6[3] = 2 * (v8 >> 2);
    }
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v9 = v6[3];

  if (v5 < 0)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v11 = HIDWORD(v3);
  v12 = v6 + 4;
  v13 = v9 >> 1;
  v14 = a2 >> 63;
  if (!v5)
  {
    goto LABEL_27;
  }

  v13 -= v5;
  while (1)
  {
    v15 = v3 <= v11;
    if (a2 > 0)
    {
      v15 = v3 >= v11;
    }

    if (v15)
    {
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
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v16 = v3;
    if (a2 < 0 != v3 >= 0)
    {
      if (a2 < 0xFFFFFFFF80000000)
      {
        goto LABEL_70;
      }

      if (a2 > 0x7FFFFFFF)
      {
        goto LABEL_71;
      }

      if (__OFADD__(v3, a2))
      {
        LODWORD(v3) = v14 ^ 0x7FFFFFFF;
      }

      else
      {
        LODWORD(v3) = v3 + a2;
      }

      goto LABEL_15;
    }

    v3 = a2 + v3;
    if (__OFADD__(a2, v16))
    {
      goto LABEL_69;
    }

    if (v3 < 0xFFFFFFFF80000000)
    {
      goto LABEL_72;
    }

    if (v3 > 0x7FFFFFFF)
    {
      break;
    }

LABEL_15:
    *v12++ = v16;
    if (!--v5)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_27:
  v17 = v3 <= v11;
  if (a2 > 0)
  {
    v17 = v3 >= v11;
  }

  if (!v17)
  {
    v35 = v14 ^ 0x7FFFFFFF;
    while (a2 < 0 != v3 >= 0)
    {
      if (a2 < 0xFFFFFFFF80000000)
      {
        goto LABEL_74;
      }

      if (a2 > 0x7FFFFFFF)
      {
        goto LABEL_75;
      }

      LODWORD(v19) = v3 + a2;
      if (!__OFADD__(v3, a2))
      {
        goto LABEL_44;
      }

      LODWORD(v19) = v35;
      if (v13)
      {
        v18 = v6;
        LODWORD(v19) = v35;
        v20 = __OFSUB__(v13--, 1);
        if (v20)
        {
          goto LABEL_68;
        }

        goto LABEL_60;
      }

LABEL_48:
      v21 = v6[3];
      if (((v21 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_78;
      }

      v22 = v21 & 0xFFFFFFFFFFFFFFFELL;
      if (v22 <= 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = v22;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA053B0, &qword_25A9FDC20);
      v18 = swift_allocObject();
      v24 = _swift_stdlib_malloc_size(v18);
      v25 = v24 - 32;
      if (v24 < 32)
      {
        v25 = v24 - 29;
      }

      v26 = v25 >> 2;
      v18[2] = v23;
      v18[3] = 2 * (v25 >> 2);
      v27 = (v18 + 4);
      v28 = v6[3] >> 1;
      if (v6[2])
      {
        v29 = v6 + 4;
        if (v18 != v6 || v27 >= v29 + 4 * v28)
        {
          memmove(v18 + 4, v29, 4 * v28);
        }

        v6[2] = 0;
      }

      v12 = (v27 + 4 * v28);
      v30 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v28;

      v20 = __OFSUB__(v30, 1);
      v13 = v30 - 1;
      if (v20)
      {
        goto LABEL_68;
      }

LABEL_60:
      *v12++ = v3;
      v31 = v19 <= v11;
      if (a2 > 0)
      {
        v31 = v19 >= v11;
      }

      LODWORD(v3) = v19;
      v6 = v18;
      if (v31)
      {
        goto LABEL_63;
      }
    }

    v19 = a2 + v3;
    if (__OFADD__(a2, v3))
    {
      goto LABEL_73;
    }

    if (v19 < 0xFFFFFFFF80000000)
    {
      goto LABEL_76;
    }

    if (v19 > 0x7FFFFFFF)
    {
      goto LABEL_77;
    }

LABEL_44:
    if (v13)
    {
      v18 = v6;
      v20 = __OFSUB__(v13--, 1);
      if (v20)
      {
        goto LABEL_68;
      }

      goto LABEL_60;
    }

    goto LABEL_48;
  }

  v18 = v6;
LABEL_63:
  v32 = v18[3];
  if (v32 < 2)
  {
    return v18;
  }

  v33 = v32 >> 1;
  v20 = __OFSUB__(v33, v13);
  v34 = v33 - v13;
  if (!v20)
  {
    v18[2] = v34;
    return v18;
  }

LABEL_80:
  __break(1u);
  return result;
}

uint64_t sub_25A9735B0(unint64_t a1)
{
  swift_beginAccess();
  v42 = a1;
  v2 = *(a1 + 16);
  mlx_array_ndim(v2);
  result = mlx_array_dim(v2, 0);
  v4 = MEMORY[0x277D84F90];
  if (result >= 1)
  {
    v5 = 0;
    v6 = 0;
    v41 = result & ~(result >> 31);
    v7 = (MEMORY[0x277D84F90] + 32);
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v44 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04938, &unk_25A9FF210);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25A9F8D90;
      *(inited + 32) = v6;
      v10 = inited + 32;
      *(inited + 56) = MEMORY[0x277D83B88];
      *(inited + 64) = &off_286C13520;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v43 = v45[0];
      v48 = v4;
      sub_25A937610(0, 1, 0);
      v11 = v48;
      sub_25A872F24(v10, v45);

      v12 = v46;
      v13 = v47;
      __swift_project_boxed_opaque_existential_1(v45, v46);
      v14 = (*(v13 + 8))(v12, v13);
      v16 = v15;
      v18 = v17;
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      v20 = *(v11 + 16);
      v19 = *(v11 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_25A937610((v19 > 1), v20 + 1, 1);
        v11 = v48;
      }

      *(v11 + 16) = v20 + 1;
      v21 = v11 + 24 * v20;
      *(v21 + 32) = v14;
      *(v21 + 40) = v16;
      *(v21 + 52) = BYTE4(v18);
      *(v21 + 48) = v18;
      if (v20)
      {
        if (v20 == -1)
        {

          v22 = v42;

          v4 = MEMORY[0x277D84F90];
          if (v5)
          {
            v22 = v42;
            v23 = v44;
            v24 = __OFSUB__(v5--, 1);
            if (v24)
            {
              goto LABEL_38;
            }

            goto LABEL_31;
          }

          goto LABEL_19;
        }

        v22 = sub_25A959F3C(v42, v11, v43);
      }

      else
      {
        v25 = *(v11 + 32);
        v26 = *(v11 + 40);
        v27 = *(v11 + 48) | (*(v11 + 52) << 32);
        sub_25A961328(v25, v26, v27);

        v22 = sub_25A959B04(v42, v25, v26, v27, v43);

        result = sub_25A960974(v25, v26, v27);
      }

      v4 = MEMORY[0x277D84F90];
      if (v5)
      {
        v23 = v44;
        v24 = __OFSUB__(v5--, 1);
        if (v24)
        {
          goto LABEL_38;
        }

        goto LABEL_31;
      }

LABEL_19:
      v28 = v44[3];
      if (((v28 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_39;
      }

      v29 = v28 & 0xFFFFFFFFFFFFFFFELL;
      if (v29 <= 1)
      {
        v30 = 1;
      }

      else
      {
        v30 = v29;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA049E0, &qword_25A9F95A0);
      v23 = swift_allocObject();
      v31 = _swift_stdlib_malloc_size(v23);
      v32 = v31 - 32;
      if (v31 < 32)
      {
        v32 = v31 - 25;
      }

      v33 = v32 >> 3;
      v23[2] = v30;
      v23[3] = (2 * (v32 >> 3)) | 1;
      v34 = (v23 + 4);
      v35 = v44[3] >> 1;
      if (v44[2])
      {
        v36 = v44 + 4;
        if (v23 != v44 || v34 >= v36 + 8 * v35)
        {
          memmove(v23 + 4, v36, 8 * v35);
        }

        v44[2] = 0;
      }

      v7 = (v34 + 8 * v35);
      v37 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v35;

      v24 = __OFSUB__(v37, 1);
      v5 = v37 - 1;
      if (v24)
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        return result;
      }

LABEL_31:
      *v7++ = v22;
      ++v6;
      v8 = v23;
      if (v41 == v6)
      {
        goto LABEL_34;
      }
    }
  }

  v5 = 0;
  v23 = MEMORY[0x277D84F90];
LABEL_34:
  v38 = v23[3];
  if (v38 >= 2)
  {
    v39 = v38 >> 1;
    v24 = __OFSUB__(v39, v5);
    v40 = v39 - v5;
    if (v24)
    {
      goto LABEL_40;
    }

    v23[2] = v40;
  }

  return v23;
}

uint64_t sub_25A9739B4(int64_t a1, int64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v6 = 0;
  v7 = 32;
  v8 = a1;
  while (1)
  {
    v9 = v8 <= a2;
    if (a3 > 0)
    {
      v9 = v8 >= a2;
    }

    if (v9)
    {
      break;
    }

    v10 = __OFADD__(v8, a3);
    v8 += a3;
    if (v10)
    {
      v8 = (v8 >> 63) ^ 0x8000000000000000;
    }

    v7 += 8;
    v10 = __OFADD__(v6++, 1);
    if (v10)
    {
      __break(1u);
      break;
    }
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    v11 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v11);
    v13 = result - 32;
    if (result < 32)
    {
      v13 = result - 25;
    }

    v14 = v13 >> 3;
    v11[2] = v6;
    v11[3] = 2 * v14;
    v15 = v11 + 4;
    v16 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v6;
    while (1)
    {
      v17 = v5 <= v4;
      if (a3 > 0)
      {
        v17 = v5 >= v4;
      }

      if (v17)
      {
        break;
      }

      v18 = v5 + a3;
      if (__OFADD__(v5, a3))
      {
        v18 = ((v5 + a3) >> 63) ^ 0x8000000000000000;
      }

      *v15++ = v5;
      v5 = v18;
      if (!--v6)
      {
        v5 = v18;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v11 = MEMORY[0x277D84F90];
  v19 = *(MEMORY[0x277D84F90] + 24);

  v15 = v11 + 4;
  v16 = v19 >> 1;
LABEL_22:
  v20 = v5 <= v4;
  if (a3 > 0)
  {
    v20 = v5 >= v4;
  }

  if (!v20)
  {
    v22 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
    v38 = v4;
    while (1)
    {
      v23 = v5 + a3;
      if (__OFADD__(v5, a3))
      {
        v23 = v22;
        if (!v16)
        {
          goto LABEL_33;
        }

        v21 = v11;
        v23 = v22;
      }

      else
      {
        if (!v16)
        {
LABEL_33:
          v24 = v11[3];
          if (((v24 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_55;
          }

          v25 = v22;
          v26 = v24 & 0xFFFFFFFFFFFFFFFELL;
          if (v26 <= 1)
          {
            v27 = 1;
          }

          else
          {
            v27 = v26;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
          v21 = swift_allocObject();
          v28 = _swift_stdlib_malloc_size(v21);
          v29 = v28 - 32;
          if (v28 < 32)
          {
            v29 = v28 - 25;
          }

          v30 = v29 >> 3;
          v21[2] = v27;
          v21[3] = 2 * (v29 >> 3);
          v31 = (v21 + 4);
          v32 = v11[3] >> 1;
          if (v11[2])
          {
            v33 = v11 + 4;
            if (v21 != v11 || v31 >= v33 + 8 * v32)
            {
              memmove(v21 + 4, v33, 8 * v32);
            }

            v11[2] = 0;
          }

          v15 = (v31 + 8 * v32);
          v16 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v32;

          v22 = v25;
          v4 = v38;
          goto LABEL_45;
        }

        v21 = v11;
      }

LABEL_45:
      v10 = __OFSUB__(v16--, 1);
      if (v10)
      {
        goto LABEL_54;
      }

      *v15++ = v5;
      v34 = v23 <= v4;
      if (a3 > 0)
      {
        v34 = v23 >= v4;
      }

      v5 = v23;
      v11 = v21;
      if (v34)
      {
        goto LABEL_49;
      }
    }
  }

  v21 = v11;
LABEL_49:
  v35 = v21[3];
  if (v35 < 2)
  {
    return v21;
  }

  v36 = v35 >> 1;
  v10 = __OFSUB__(v36, v16);
  v37 = v36 - v16;
  if (!v10)
  {
    v21[2] = v37;
    return v21;
  }

LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_25A973C6C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = 0;
    v6 = 0;
    v7 = result + 32;
    v8 = (MEMORY[0x277D84F90] + 32);
    v9 = a2 + 32;
    v28 = *(result + 16);
    v10 = MEMORY[0x277D84F90];
    v26 = a2 + 32;
    v27 = result + 32;
    while (1)
    {
      v11 = *(a2 + 16);
      if (v5 == v11)
      {
        v3 = v10;
        goto LABEL_26;
      }

      if (v5 >= v11)
      {
        break;
      }

      v12 = *(v7 + 8 * v5);
      v13 = *(v9 + 8 * v5);
      if (v6)
      {
        v3 = v10;
        v14 = __OFSUB__(v6--, 1);
        if (v14)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v15 = v10[3];
        if (((v15 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_32;
        }

        v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA056E0, &qword_25A9FF848);
        v3 = swift_allocObject();
        v18 = (_swift_stdlib_malloc_size(v3) - 32) / 24;
        v3[2] = v17;
        v3[3] = 2 * v18;
        v19 = (v3 + 4);
        v20 = v10[3] >> 1;
        if (v10[2])
        {
          if (v3 != v10 || v19 >= &v10[3 * v20 + 4])
          {
            memmove(v3 + 4, v10 + 4, 24 * v20);
          }

          v10[2] = 0;
        }

        v8 = (v19 + 24 * v20);
        v22 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v7 = v27;
        v2 = v28;
        v9 = v26;
        v14 = __OFSUB__(v22, 1);
        v6 = v22 - 1;
        if (v14)
        {
          goto LABEL_31;
        }
      }

      *v8 = v5;
      v8[1] = v12;
      v8[2] = v13;
      v8 += 3;
      ++v5;
      v10 = v3;
      if (v2 == v5)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v6 = 0;
LABEL_26:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v14 = __OFSUB__(v24, v6);
  v25 = v24 - v6;
  if (!v14)
  {
    v3[2] = v25;
    return v3;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_25A973E44(uint64_t a1, uint64_t a2)
{
  result = 0;
  v4 = HIDWORD(a1);
  while (1)
  {
    v6 = a1 <= v4;
    if (a2 > 0)
    {
      v6 = a1 >= v4;
    }

    if (v6)
    {
      return result;
    }

    if (a2 < 0 == a1 >= 0)
    {
      v5 = __OFADD__(a2, a1);
      a1 = a2 + a1;
      if (v5)
      {
        goto LABEL_18;
      }

      if (a1 < 0xFFFFFFFF80000000)
      {
        goto LABEL_21;
      }

      if (a1 > 0x7FFFFFFF)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      if (a2 < 0xFFFFFFFF80000000)
      {
        goto LABEL_19;
      }

      if (a2 > 0x7FFFFFFF)
      {
        goto LABEL_20;
      }

      v5 = __OFADD__(a1, a2);
      LODWORD(a1) = a1 + a2;
      if (v5)
      {
        LODWORD(a1) = (a2 >> 63) ^ 0x7FFFFFFF;
      }
    }

    v5 = __OFADD__(result++, 1);
    if (v5)
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }
  }
}

unint64_t sub_25A973EEC(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_25A973F0C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_25A997A58();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_25A997A18();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_25A997B28();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_25A973FAC(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_25A997B28();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_25A997A08();
  if (v3)
  {
    result = sub_25A997A38();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_25A997A28();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_25A91CAD4(v3, v7);

  return v8;
}

uint64_t sub_25A974090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25A997AF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25A997AE8();
  if (a2)
  {
    v11 = sub_25A997A58();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();

    v14 = sub_25A9979E8();
    (*(v7 + 16))(v10, a3, v6);
    if ((*(v7 + 88))(v10, v6) == *MEMORY[0x277CC92A8])
    {
      v15 = sub_25A997A48();
      *v16 |= 0x8000000000000000;
      v15(v20, 0);
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }

    v18 = sub_25A973FAC(v14, a2);
  }

  else
  {
    v17 = sub_25A997AE8();
    v17(a1, 0);

    v18 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v18;
}

uint64_t sub_25A9742C8(uint64_t result, unint64_t a2)
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
        result = sub_25A998708();
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

  v6 = sub_25A979124(result, a2, 10);
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

uint64_t sub_25A9745C8(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_25A997F38();
  return sub_25A998028();
}

uint64_t sub_25A974648(uint64_t a1, unint64_t a2)
{
  v4 = sub_25A9979C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  v9 = sub_25A93A428(1uLL, a1, a2);
  v11 = v10;

  result = sub_25A998428();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  result = sub_25A998408();
  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = result;
  }

  if (v14 >> 14 < v9 >> 14)
  {
    goto LABEL_16;
  }

  v15 = sub_25A998438();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = MEMORY[0x25F850210](v15, v17, v19, v21);
  v24 = v23;

  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    v34 = v22;
    v35 = v24;
    v33[0] = 58;
    v33[1] = 0xE100000000000000;
    sub_25A8F84C4();
    v26 = sub_25A998468();

    if (v26[2] < 2uLL)
    {

      v32 = 0;
      v31 = 0xE000000000000000;
    }

    else
    {
      v28 = v26[6];
      v27 = v26[7];

      v34 = v28;
      v35 = v27;
      sub_25A9979A8();
      v29 = sub_25A998478();
      v31 = v30;
      (*(v5 + 8))(v8, v4);

      v32 = v29;
    }

    sub_25A9748F4(v32, v31);
  }
}

void sub_25A9748F4(uint64_t a1, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    if (sub_25A997FF8() & 1) == 0 || a1 == 37 && a2 == 0xE100000000000000 || (sub_25A9989E8())
    {
      v6 = sub_25A9745C8(a1, a2);
      v8 = v7;
      v9 = sub_25A91CF70(&unk_286C0F138);
      swift_arrayDestroy();
      if (!v8 || (v10 = sub_25A9199A0(v6, v8, v9), , (v10 & 1) == 0))
      {
LABEL_17:

LABEL_18:
        sub_25A874F54();
        swift_allocError();
        *v24 = -98;
        swift_willThrow();
        return;
      }

      v11 = sub_25A979CB0(1);
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v18 = MEMORY[0x25F850210](v11, v13, v15, v17);
      v20 = v19;

      if (v6 == 102 && v8 == 0xE100000000000000 || ((v25 = sub_25A9989E8(), v6 == 70) ? (v26 = v8 == 0xE100000000000000) : (v26 = 0), !v26 ? (v27 = 0) : (v27 = 1), (v25 & 1) != 0 || (v27 & 1) != 0 || (sub_25A9989E8() & 1) != 0))
      {

        v21 = HIBYTE(v20) & 0xF;
        if ((v20 & 0x2000000000000000) == 0)
        {
          v21 = v18 & 0xFFFFFFFFFFFFLL;
        }

        if (v21)
        {
          v22 = objc_allocWithZone(MEMORY[0x277CCAC68]);
          v23 = sub_25A978FC8(0x292B645C2E5C285ELL, 0xEA0000000000243FLL, 0);
          if (!v2)
          {
LABEL_42:
            v32 = v23;
            v43 = sub_25A997E18();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05878, &qword_25A9FFEE0);
            sub_25A92C3B4(&qword_27FA05880, &qword_27FA05878, &qword_25A9FFEE0);
            sub_25A8F84C4();
            v44 = sub_25A9983E8();
            v46 = [v32 firstMatchInString:v43 options:0 range:{v44, v45}];

            if (v46)
            {

              return;
            }

            sub_25A874F54();
            swift_allocError();
            v48 = -98;
            goto LABEL_46;
          }
        }

LABEL_16:

        return;
      }

      if (v6 == 101 && v8 == 0xE100000000000000)
      {
        goto LABEL_31;
      }

      v49 = sub_25A9989E8();
      v50 = v6 == 69 && v8 == 0xE100000000000000;
      v51 = v50;
      if (v49 & 1) != 0 || v51 || ((v52 = sub_25A9989E8(), v6 == 103) ? (v53 = v8 == 0xE100000000000000) : (v53 = 0), !v53 ? (v54 = 0) : (v54 = 1), (v52 & 1) != 0 || (v54 & 1) != 0 || ((v55 = sub_25A9989E8(), v6 == 71) ? (v56 = v8 == 0xE100000000000000) : (v56 = 0), !v56 ? (v57 = 0) : (v57 = 1), (v55 & 1) != 0 || (v57 & 1) != 0 || (sub_25A9989E8())))
      {
LABEL_31:

        v28 = HIBYTE(v20) & 0xF;
        if ((v20 & 0x2000000000000000) == 0)
        {
          v28 = v18 & 0xFFFFFFFFFFFFLL;
        }

        if (v28)
        {
          v29 = objc_allocWithZone(MEMORY[0x277CCAC68]);
          v23 = sub_25A978FC8(0x292B645C2E5C285ELL, 0xEA0000000000243FLL, 0);
          if (!v2)
          {
            goto LABEL_42;
          }
        }

        goto LABEL_16;
      }

      if (v6 != 100 || v8 != 0xE100000000000000)
      {
        v61 = sub_25A9989E8();
        v62 = v6 == 105 && v8 == 0xE100000000000000;
        v63 = v62;
        if ((v61 & 1) == 0 && !v63)
        {
          v64 = sub_25A9989E8();
          v65 = v6 == 98 && v8 == 0xE100000000000000;
          v66 = v65;
          if ((v64 & 1) == 0 && !v66)
          {
            v67 = sub_25A9989E8();
            v68 = v6 == 111 && v8 == 0xE100000000000000;
            v69 = v68;
            if ((v67 & 1) == 0 && !v69)
            {
              v70 = sub_25A9989E8();
              v71 = v6 == 120 && v8 == 0xE100000000000000;
              v72 = v71;
              if ((v70 & 1) == 0 && !v72)
              {
                v73 = sub_25A9989E8();
                v74 = v6 == 88 && v8 == 0xE100000000000000;
                v75 = v74;
                if ((v73 & 1) == 0 && !v75)
                {
                  v76 = sub_25A9989E8();
                  v77 = v6 == 110 && v8 == 0xE100000000000000;
                  v78 = v77;
                  if ((v76 & 1) == 0 && !v78)
                  {
                    v79 = sub_25A9989E8();
                    v80 = v6 == 99 && v8 == 0xE100000000000000;
                    v81 = v80;
                    if ((v79 & 1) == 0 && !v81 && (sub_25A9989E8() & 1) == 0 && (v6 != 115 || v8 != 0xE100000000000000) && (sub_25A9989E8() & 1) == 0)
                    {
                      if (v6 == 37 && v8 == 0xE100000000000000)
                      {

                        goto LABEL_145;
                      }

                      v82 = sub_25A9989E8();

                      if (v82)
                      {
LABEL_145:
                        v83 = HIBYTE(v20) & 0xF;
                        if ((v20 & 0x2000000000000000) == 0)
                        {
                          v83 = v18 & 0xFFFFFFFFFFFFLL;
                        }

                        if (v83)
                        {
                          v84 = objc_allocWithZone(MEMORY[0x277CCAC68]);
                          v23 = sub_25A978FC8(0x292B645C2E5C285ELL, 0xEA0000000000243FLL, 0);
                          if (!v2)
                          {
                            goto LABEL_42;
                          }
                        }

                        goto LABEL_16;
                      }

                      goto LABEL_17;
                    }
                  }
                }
              }
            }
          }
        }
      }

      v58 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v58 = v18 & 0xFFFFFFFFFFFFLL;
      }

      if (v58)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v30 = objc_allocWithZone(MEMORY[0x277CCAC68]);
      v31 = sub_25A978FC8(0xD000000000000019, 0x800000025AA69E50, 0);
      if (!v2)
      {
        v32 = v31;
        v33 = sub_25A997E18();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05878, &qword_25A9FFEE0);
        sub_25A92C3B4(&qword_27FA05880, &qword_27FA05878, &qword_25A9FFEE0);
        sub_25A8F84C4();
        v34 = sub_25A9983E8();
        v36 = [v32 firstMatchInString:v33 options:0 range:{v34, v35}];

        if (!v36)
        {
          sub_25A874F54();
          swift_allocError();
          v48 = -99;
LABEL_46:
          *v47 = v48;
          swift_willThrow();

          return;
        }

        v37 = v36;
        [v37 range];
        sub_25A998348();
        if (v38)
        {
          __break(1u);
        }

        else
        {
          v39 = sub_25A998058();
          v40 = MEMORY[0x25F850210](v39);
          v42 = v41;

          if (v40 == a1 && v42 == a2)
          {

            goto LABEL_16;
          }

          v59 = sub_25A9989E8();

          if ((v59 & 1) == 0)
          {
            sub_25A874F54();
            swift_allocError();
            *v60 = -99;
            swift_willThrow();
          }
        }
      }
    }
  }
}

uint64_t sub_25A975350(uint64_t a1, uint64_t a2)
{
  v4 = sub_25A8F84C4();
  v5 = MEMORY[0x277D837D0];
  *&v105[0] = sub_25A998488();
  *(&v105[0] + 1) = v6;
  *&v104[0] = 32125;
  *(&v104[0] + 1) = 0xE200000000000000;
  *&v106 = 2;
  *(&v106 + 1) = 0xE100000000000000;
  v90 = v5;
  v7 = sub_25A998488();
  v9 = v8;

  v10 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v96 = sub_25A978FC8(0x5C2A5D7D5E5B7B5CLL, 0xE90000000000007DLL, 0);
  if (v2)
  {

    return v10;
  }

  v94 = a1;
  v11 = sub_25A997E18();
  *&v104[0] = 15;
  v102 = v7;
  v103 = v9;
  *&v105[0] = v7;
  *(&v105[0] + 1) = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05878, &qword_25A9FFEE0);
  sub_25A92C3B4(&qword_27FA05880, &qword_27FA05878, &qword_25A9FFEE0);
  v12 = sub_25A9983E8();
  v14 = [v96 matchesInString:v11 options:0 range:{v12, v13, v90, v4, v4, v4}];

  sub_25A8E6ABC(0, &qword_27FA05888, 0x277CCACC0);
  v15 = sub_25A998108();

  v16 = v15;
  if (v15 >> 62)
  {
    goto LABEL_15;
  }

  v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v19 = v7;
  for (i = v9; v17; i = v103)
  {
    v20 = 0;
    v21 = v16 & 0xC000000000000001;
    v98 = v16 & 0xFFFFFFFFFFFFFF8;
    v100 = v16;
    while (1)
    {
      if (v21)
      {
        v22 = MEMORY[0x25F8509C0](v20, v16);
      }

      else
      {
        if (v20 >= *(v98 + 16))
        {
          goto LABEL_14;
        }

        v22 = *(v16 + 8 * v20 + 32);
      }

      v23 = v22;
      v24 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      [v22 range];
      sub_25A998348();
      if ((v25 & 1) == 0)
      {
        v26 = sub_25A998058();
        v27 = MEMORY[0x25F850210](v26);
        v29 = v28;

        sub_25A974648(v27, v29);

        v19 = v102;
        i = v103;
        v16 = v100;
      }

      ++v20;
      if (v24 == v17)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v17 = sub_25A998848();
    v19 = v102;
  }

LABEL_16:

  objc_allocWithZone(MEMORY[0x277CCAC68]);
  v31 = sub_25A978FC8(0x2A5D7D5E5B287B5CLL, 0xEC0000007D5C293FLL, 0);
  v32 = sub_25A997E18();
  *&v104[0] = 15;
  *&v105[0] = v19;
  *(&v105[0] + 1) = i;

  v33 = sub_25A9983E8();
  v35 = [v31 matchesInString:v32 options:0 range:{v33, v34}];

  v36 = sub_25A998108();
  *&v106 = 0;
  *(&v106 + 1) = 0xE000000000000000;
  v107 = 0;
  v37 = a2;
  if (v36 >> 62)
  {
LABEL_49:
    v38 = sub_25A998848();
  }

  else
  {
    v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v91 = v31;
  v39 = v103;
  if (!v38)
  {
LABEL_44:
    v44 = 15;
LABEL_45:

    v76 = sub_25A9763A4(v44, v102, v39);
    v78 = v77;
    v80 = v79;
    v82 = v81;

    v83 = MEMORY[0x25F850210](v76, v78, v80, v82);
    v85 = v84;

    MEMORY[0x25F850290](v83, v85);

    v105[0] = v106;
    *&v104[0] = 1;
    *(&v104[0] + 1) = 0xE100000000000000;
    v86 = sub_25A998488();
    v88 = v87;

    *&v105[0] = v86;
    *(&v105[0] + 1) = v88;
    *&v104[0] = 2;
    *(&v104[0] + 1) = 0xE100000000000000;
    v10 = sub_25A998488();

    return v10;
  }

  v31 = 0;
  v97 = (v36 & 0xC000000000000001);
  v92 = v38;
  v93 = v36 & 0xFFFFFFFFFFFFFF8;
  v10 = 15;
  while (1)
  {
    if (v97)
    {
      v45 = MEMORY[0x25F8509C0](v31, v36);
      v46 = (v31 + 1);
      if (__OFADD__(v31, 1))
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }
    }

    else
    {
      if (v31 >= *(v93 + 16))
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v45 = *(v36 + 8 * v31 + 32);
      v46 = (v31 + 1);
      if (__OFADD__(v31, 1))
      {
        goto LABEL_43;
      }
    }

    [v45 range];
    v47 = sub_25A998348();
    if (v49)
    {

      sub_25A874F54();
      swift_allocError();
      *v89 = 23;
      swift_willThrow();

      return v10;
    }

    if (v47 >> 14 < v10 >> 14)
    {
      goto LABEL_48;
    }

    v50 = v36;
    v51 = v31;
    v52 = v37;
    v99 = v48;
    v101 = v46;
    v53 = v50;
    v54 = sub_25A998058();
    v55 = v45;
    v56 = MEMORY[0x25F850210](v54);
    v58 = v57;

    v59 = v56;
    v60 = v55;
    MEMORY[0x25F850290](v59, v58);

    [v55 rangeAtIndex_];
    result = sub_25A998348();
    if (v61)
    {
      break;
    }

    v62 = sub_25A998058();
    v63 = MEMORY[0x25F850210](v62);
    v65 = v64;

    sub_25A975CF0(v104, v63, v65, v94, v52, &v107);
    v67 = v66;
    v69 = v68;
    v70 = v51;

    sub_25A872D74(v104, v105);
    v71 = HIBYTE(v69) & 0xF;
    if ((v69 & 0x2000000000000000) == 0)
    {
      v71 = v67 & 0xFFFFFFFFFFFFLL;
    }

    v36 = v53;
    if (v71)
    {
      v39 = v103;
      v43 = v92;
      if (sub_25A997FF8() & 1) == 0 || v67 == 37 && v69 == 0xE100000000000000 || (sub_25A9989E8())
      {
        v72 = v67;
        v73 = v69;
        v74 = 0;
      }

      else
      {
        v72 = v67;
        v73 = v69;
        v74 = 1;
      }

      v40 = sub_25A9763F0(v72, v73, v105, v74);
      v42 = v75;
    }

    else
    {
      sub_25A87500C(v105, v104);
      v40 = sub_25A997EA8();
      v42 = v41;

      v39 = v103;
      v43 = v92;
    }

    MEMORY[0x25F850290](v40, v42);

    __swift_destroy_boxed_opaque_existential_0Tm(v105);
    v31 = v70 + 1;
    v44 = v99;
    v10 = v99;
    v37 = a2;
    if (v101 == v43)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_25A975CF0(_OWORD *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = sub_25A9979C8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v18 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    v25 = *a6;
    if (*a6 >= *(a4 + 16))
    {
      sub_25A874F54();
      swift_allocError();
      v42 = 2;
      goto LABEL_91;
    }

    if ((v25 & 0x8000000000000000) == 0)
    {
      sub_25A87500C(a4 + 32 * v25 + 32, a1);
      v12 = 0;
      *a6 = v25 + 1;
      return v12;
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v63 = a6;
  v64 = a4;
  v62 = a1;
  *&v65[0] = a2;
  *(&v65[0] + 1) = a3;
  v66 = 58;
  v67 = 0xE100000000000000;
  sub_25A8F84C4();
  v19 = sub_25A998468();
  v20 = v19;
  v21 = v19[2];
  v61 = a5;
  if (!v21)
  {
    v12 = 0;
    v21 = 0xE000000000000000;
    goto LABEL_11;
  }

  v22 = v19[5];
  *&v65[0] = v19[4];
  *(&v65[0] + 1) = v22;

  sub_25A9979A8();
  v59 = sub_25A998478();
  v60 = v23;
  v24 = *(v13 + 8);
  v24(v17, v12);

  if (v21 == 1)
  {
    v12 = v59;
    v21 = v60;
LABEL_11:

    goto LABEL_14;
  }

  if (v20[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_94;
  }

  v27 = v20[6];
  v26 = v20[7];

  *&v65[0] = v27;
  *(&v65[0] + 1) = v26;
  sub_25A9979A8();
  sub_25A998478();
  v24(v17, v12);

  v12 = v59;
  v21 = v60;
LABEL_14:
  v28 = v63;
  v29 = HIBYTE(v21) & 0xF;
  v30 = v12 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v31 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v31 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {

    v37 = *v28;
    if (*v28 >= *(v64 + 16))
    {
      goto LABEL_90;
    }

    if ((v37 & 0x8000000000000000) == 0)
    {
      sub_25A87500C(v64 + 32 * v37 + 32, v62);
      v12 = 0;
      *v28 = v37 + 1;
      return v12;
    }

    goto LABEL_96;
  }

  if ((v21 & 0x1000000000000000) != 0)
  {
    LOBYTE(v66) = 0;

    v33 = sub_25A979124(v12, v21, 10);
    v58 = v57;

    if (v58)
    {
LABEL_81:
      v54 = v61;
      if (*(v61 + 16))
      {
        v55 = sub_25A8F3600(v12, v21);
        if (v56)
        {
          sub_25A87500C(*(v54 + 56) + 32 * v55, v65);
          sub_25A872D74(v65, v62);
          return v12;
        }
      }

      sub_25A874F54();
      swift_allocError();
      v42 = 125;
LABEL_91:
      *v41 = v42;
      swift_willThrow();
      return v12;
    }

    goto LABEL_86;
  }

  if ((v21 & 0x2000000000000000) == 0)
  {
    if ((v12 & 0x1000000000000000) != 0)
    {
      result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      goto LABEL_22;
    }

LABEL_94:
    result = sub_25A998708();
LABEL_22:
    v32 = *result;
    if (v32 == 43)
    {
      if (v30 < 1)
      {
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      v29 = v30 - 1;
      if (v30 == 1)
      {
        goto LABEL_79;
      }

      v33 = 0;
      if (result)
      {
        v43 = result + 1;
        while (1)
        {
          v44 = *v43 - 48;
          if (v44 > 9)
          {
            goto LABEL_79;
          }

          v45 = 10 * v33;
          if ((v33 * 10) >> 64 != (10 * v33) >> 63)
          {
            goto LABEL_79;
          }

          v33 = v45 + v44;
          if (__OFADD__(v45, v44))
          {
            goto LABEL_79;
          }

          ++v43;
          if (!--v29)
          {
            goto LABEL_80;
          }
        }
      }
    }

    else if (v32 == 45)
    {
      if (v30 < 1)
      {
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      v29 = v30 - 1;
      if (v30 == 1)
      {
        goto LABEL_79;
      }

      v33 = 0;
      if (result)
      {
        v34 = result + 1;
        while (1)
        {
          v35 = *v34 - 48;
          if (v35 > 9)
          {
            goto LABEL_79;
          }

          v36 = 10 * v33;
          if ((v33 * 10) >> 64 != (10 * v33) >> 63)
          {
            goto LABEL_79;
          }

          v33 = v36 - v35;
          if (__OFSUB__(v36, v35))
          {
            goto LABEL_79;
          }

          ++v34;
          if (!--v29)
          {
            goto LABEL_80;
          }
        }
      }
    }

    else
    {
      if (!v30)
      {
LABEL_79:
        v33 = 0;
        LOBYTE(v29) = 1;
LABEL_80:
        LOBYTE(v66) = v29;
        if (v29)
        {
          goto LABEL_81;
        }

LABEL_86:
        if (v33 < *(v64 + 16))
        {
          if ((v33 & 0x8000000000000000) == 0)
          {
            sub_25A87500C(v64 + 32 * v33 + 32, v62);
            return v12;
          }

          goto LABEL_97;
        }

LABEL_90:

        sub_25A874F54();
        swift_allocError();
        v42 = 124;
        goto LABEL_91;
      }

      v33 = 0;
      if (result)
      {
        do
        {
          v49 = *result - 48;
          if (v49 > 9)
          {
            goto LABEL_79;
          }

          v50 = 10 * v33;
          if ((v33 * 10) >> 64 != (10 * v33) >> 63)
          {
            goto LABEL_79;
          }

          v33 = v50 + v49;
          if (__OFADD__(v50, v49))
          {
            goto LABEL_79;
          }

          ++result;
        }

        while (--v30);
      }
    }

    LOBYTE(v29) = 0;
    goto LABEL_80;
  }

  *&v65[0] = v12;
  *(&v65[0] + 1) = v21 & 0xFFFFFFFFFFFFFFLL;
  if (v12 != 43)
  {
    if (v12 == 45)
    {
      if (!v29)
      {
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

      if (--v29)
      {
        v33 = 0;
        v38 = v65 + 1;
        while (1)
        {
          v39 = *v38 - 48;
          if (v39 > 9)
          {
            break;
          }

          v40 = 10 * v33;
          if ((v33 * 10) >> 64 != (10 * v33) >> 63)
          {
            break;
          }

          v33 = v40 - v39;
          if (__OFSUB__(v40, v39))
          {
            break;
          }

          ++v38;
          if (!--v29)
          {
            goto LABEL_80;
          }
        }
      }
    }

    else if (v29)
    {
      v33 = 0;
      v51 = v65;
      while (1)
      {
        v52 = *v51 - 48;
        if (v52 > 9)
        {
          break;
        }

        v53 = 10 * v33;
        if ((v33 * 10) >> 64 != (10 * v33) >> 63)
        {
          break;
        }

        v33 = v53 + v52;
        if (__OFADD__(v53, v52))
        {
          break;
        }

        ++v51;
        if (!--v29)
        {
          goto LABEL_80;
        }
      }
    }

    goto LABEL_79;
  }

  if (v29)
  {
    if (--v29)
    {
      v33 = 0;
      v46 = v65 + 1;
      while (1)
      {
        v47 = *v46 - 48;
        if (v47 > 9)
        {
          break;
        }

        v48 = 10 * v33;
        if ((v33 * 10) >> 64 != (10 * v33) >> 63)
        {
          break;
        }

        v33 = v48 + v47;
        if (__OFADD__(v48, v47))
        {
          break;
        }

        ++v46;
        if (!--v29)
        {
          goto LABEL_80;
        }
      }
    }

    goto LABEL_79;
  }

LABEL_101:
  __break(1u);
  return result;
}

unint64_t sub_25A9763A4(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_25A998058();
  }

  __break(1u);
  return result;
}

uint64_t sub_25A9763F0(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  result = sub_25A9771F4(a1, a2, a4);
  if (!v4)
  {
    v11 = result;
    v12 = v8;
    sub_25A9775A0(v9, v10);

    v14 = sub_25A997EC8();
    v15 = v13;
    if (v14 == 115 && v13 == 0xE100000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      sub_25A87500C(a3, &v56);
      return sub_25A997EA8();
    }

    if (v14 == 100 && v15 == 0xE100000000000000 || (sub_25A9989E8() & 1) != 0 || v14 == 105 && v15 == 0xE100000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      sub_25A87500C(a3, &v56);
      sub_25A8E6ABC(0, &qword_27FA044A8, 0x277CCABB0);
      if (swift_dynamicCast())
      {
LABEL_14:
        v16 = [v55 integerValue];

        v56 = v16;
        return sub_25A998968();
      }

      goto LABEL_50;
    }

    if (v14 == 102 && v15 == 0xE100000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      sub_25A87500C(a3, &v56);
      sub_25A8E6ABC(0, &qword_27FA044A8, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        [v55 doubleValue];
        v18 = v17;

        if (v11 == 70 && v12 == 0xE100000000000000)
        {
        }

        else
        {
          v20 = sub_25A9989E8();

          if ((v20 & 1) == 0)
          {
            v56 = 11813;
            v57 = 0xE200000000000000;
            v23 = sub_25A998968();
            MEMORY[0x25F850290](v23);

            v22 = 102;
            goto LABEL_56;
          }
        }

        v56 = 11813;
        v57 = 0xE200000000000000;
        v21 = sub_25A998968();
        MEMORY[0x25F850290](v21);

        v22 = 70;
LABEL_56:
        MEMORY[0x25F850290](v22, 0xE100000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05890, &qword_25A9FFEE8);
        v35 = swift_allocObject();
        v36 = MEMORY[0x277D839F8];
        *(v35 + 16) = xmmword_25A9F8D90;
        v37 = MEMORY[0x277D83A80];
        *(v35 + 56) = v36;
        *(v35 + 64) = v37;
        *(v35 + 32) = v18;
        v38 = sub_25A997E58();

        return v38;
      }

      goto LABEL_49;
    }

    if (v14 == 101 && v15 == 0xE100000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      sub_25A87500C(a3, &v56);
      sub_25A8E6ABC(0, &qword_27FA044A8, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        [v55 doubleValue];
        v18 = v19;

        if (v11 == 69 && v12 == 0xE100000000000000)
        {
        }

        else
        {
          v25 = sub_25A9989E8();

          if ((v25 & 1) == 0)
          {
            v56 = 11813;
            v57 = 0xE200000000000000;
            v27 = sub_25A998968();
            MEMORY[0x25F850290](v27);

            v22 = 101;
            goto LABEL_56;
          }
        }

        v56 = 11813;
        v57 = 0xE200000000000000;
        v26 = sub_25A998968();
        MEMORY[0x25F850290](v26);

        v22 = 69;
        goto LABEL_56;
      }

      goto LABEL_49;
    }

    if (v14 == 103 && v15 == 0xE100000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      sub_25A87500C(a3, &v56);
      sub_25A8E6ABC(0, &qword_27FA044A8, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        [v55 doubleValue];
        v18 = v24;

        if (v11 == 71 && v12 == 0xE100000000000000)
        {
        }

        else
        {
          v32 = sub_25A9989E8();

          if ((v32 & 1) == 0)
          {
            v56 = 11813;
            v57 = 0xE200000000000000;
            v34 = sub_25A998968();
            MEMORY[0x25F850290](v34);

            v22 = 103;
            goto LABEL_56;
          }
        }

        v56 = 11813;
        v57 = 0xE200000000000000;
        v33 = sub_25A998968();
        MEMORY[0x25F850290](v33);

        v22 = 71;
        goto LABEL_56;
      }

      goto LABEL_49;
    }

    if (v14 == 120 && v15 == 0xE100000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      sub_25A87500C(a3, &v56);
      sub_25A8E6ABC(0, &qword_27FA044A8, 0x277CCABB0);
      if (!swift_dynamicCast())
      {
LABEL_49:

LABEL_50:
        sub_25A874F54();
        swift_allocError();
        v31 = -97;
LABEL_51:
        *v30 = v31;
        return swift_willThrow();
      }

      v28 = [v55 integerValue];

      v56 = v28;
      sub_25A895280();
      v29 = sub_25A998018();
      if (v11 == 88 && v12 == 0xE100000000000000)
      {
      }

      else
      {
        v40 = sub_25A9989E8();

        if ((v40 & 1) == 0)
        {
          return v29;
        }
      }

      v41 = sub_25A997ED8();
LABEL_64:
      v42 = v41;

      return v42;
    }

    if (v14 == 111 && v15 == 0xE100000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      sub_25A87500C(a3, &v56);
      sub_25A8E6ABC(0, &qword_27FA044A8, 0x277CCABB0);
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

LABEL_61:
      v39 = [v55 integerValue];

      v56 = v39;
      sub_25A895280();
      return sub_25A998018();
    }

    if (v14 == 98 && v15 == 0xE100000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      if ((a4 & 1) == 0)
      {
        sub_25A87500C(a3, &v56);
        sub_25A8E6ABC(0, &qword_27FA044A8, 0x277CCABB0);
        if (!swift_dynamicCast())
        {
          goto LABEL_50;
        }

        goto LABEL_61;
      }

LABEL_70:
      sub_25A874F54();
      swift_allocError();
      v31 = -99;
      goto LABEL_51;
    }

    if ((v14 != 99 || v15 != 0xE100000000000000) && (sub_25A9989E8() & 1) == 0)
    {
      if (v14 == 110 && v15 == 0xE100000000000000 || (sub_25A9989E8() & 1) != 0)
      {

        if ((a4 & 1) == 0)
        {
          sub_25A87500C(a3, &v56);
          sub_25A8E6ABC(0, &qword_27FA044A8, 0x277CCABB0);
          if (swift_dynamicCast())
          {
            goto LABEL_14;
          }

          goto LABEL_50;
        }
      }

      else
      {
        if (v14 == 37 && v15 == 0xE100000000000000)
        {
        }

        else
        {
          v45 = sub_25A9989E8();

          if ((v45 & 1) == 0)
          {
            if (a4)
            {
              v51 = -99;
            }

            else
            {
              v51 = -98;
            }

            sub_25A874F54();
            swift_allocError();
            *v52 = v51;
            return swift_willThrow();
          }
        }

        if ((a4 & 1) == 0)
        {
          sub_25A87500C(a3, &v56);
          sub_25A8E6ABC(0, &qword_27FA044A8, 0x277CCABB0);
          if (!swift_dynamicCast())
          {
            goto LABEL_50;
          }

          [v55 doubleValue];
          v47 = v46;

          v56 = 11813;
          v57 = 0xE200000000000000;
          v48 = sub_25A998968();
          MEMORY[0x25F850290](v48);

          MEMORY[0x25F850290](2434406, 0xE300000000000000);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05890, &qword_25A9FFEE8);
          v49 = swift_allocObject();
          *(v49 + 16) = xmmword_25A9F8D90;
          v50 = MEMORY[0x277D83A80];
          *(v49 + 56) = MEMORY[0x277D839F8];
          *(v49 + 64) = v50;
          *(v49 + 32) = v47 * 100.0;
          v41 = sub_25A997E58();
          goto LABEL_64;
        }
      }

      goto LABEL_70;
    }

    sub_25A87500C(a3, &v56);
    sub_25A8E6ABC(0, &qword_27FA044A8, 0x277CCABB0);
    if (!swift_dynamicCast())
    {
      goto LABEL_50;
    }

    v43 = [v55 integerValue];

    if (HIDWORD(v43) || v43 >> 16 > 0x10 || (v43 & 0xFFFFF800) == 0xD800)
    {
      goto LABEL_50;
    }

    if (v43 > 0x7F)
    {
      v53 = (v43 & 0x3F) << 8;
      if (v43 >= 0x800)
      {
        v54 = (v53 | (v43 >> 6) & 0x3F) << 8;
        if (v43 >> 16)
        {
          v44 = (v43 >> 18) + ((v54 | (v43 >> 12) & 0x3F) << 8) - 2122219023;
        }

        else
        {
          v44 = (v43 >> 12) + v54 + 8487393;
        }
      }

      else
      {
        v44 = (v43 >> 6) + v53 + 33217;
      }
    }

    else
    {
      v44 = v43 + 1;
    }

    v56 = (v44 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v44) >> 3))));
    return sub_25A997EF8();
  }

  return result;
}

uint64_t sub_25A9771F4(uint64_t a1, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v18 = sub_25A997FF8();

    if (v18)
    {
      v19 = sub_25A93A428(1uLL, a1, a2);
      v21 = v20;
      v4 = v22;
      v24 = v23;

      a1 = MEMORY[0x25F850210](v19, v21, v4, v24);
      a2 = v25;
    }

    v26 = sub_25A9745C8(a1, a2);
    if (v27)
    {
      v4 = v26;
      v28 = sub_25A979CB0(1);
      v30 = v29;
      v32 = v31;
      v34 = v33;

      v35 = MEMORY[0x25F850210](v28, v30, v32, v34);
      v37 = v36;

      v38 = HIBYTE(v37) & 0xF;
      if ((v37 & 0x2000000000000000) == 0)
      {
        v38 = v35 & 0xFFFFFFFFFFFFLL;
      }

      if (!v38)
      {
      }
    }

    else
    {

      sub_25A874F54();
      swift_allocError();
      *v39 = -98;
      swift_willThrow();
    }

    return v4;
  }

  v4 = "obalData";
  v7 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v8 = sub_25A978FC8(0xD000000000000019, 0x800000025AA69E50, 0);
  if (v3)
  {
    return v4;
  }

  v9 = v8;
  v4 = sub_25A997E18();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05878, &qword_25A9FFEE0);
  sub_25A92C3B4(&qword_27FA05880, &qword_27FA05878, &qword_25A9FFEE0);
  sub_25A8F84C4();
  v10 = sub_25A9983E8();
  v12 = [v9 firstMatchInString:v4 options:0 range:{v10, v11, a1, a2}];

  if (!v12)
  {
    sub_25A874F54();
    swift_allocError();
    *v40 = -99;
    swift_willThrow();

    return v4;
  }

  [v12 rangeAtIndex_];
  result = sub_25A998348();
  if ((v14 & 1) == 0)
  {
    v15 = sub_25A998058();
    v4 = MEMORY[0x25F850210](v15);

    v16 = [v12 rangeAtIndex_];
    if (v16 == sub_25A997958() || (sub_25A998348(), (v17 & 1) != 0))
    {
    }

    else
    {
      v41 = sub_25A998058();
      MEMORY[0x25F850210](v41);
    }

    return v4;
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_25A9775A0(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((sub_25A997FF8() & 1) == 0)
  {
    return sub_25A9742C8(a1, a2);
  }

  v4 = sub_25A93A428(1uLL, a1, a2);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = MEMORY[0x25F850210](v4, v6, v8, v10);
  v13 = v12;

  v15 = HIBYTE(v13) & 0xF;
  v16 = v11 & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v17 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {

    return 0;
  }

  if ((v13 & 0x1000000000000000) == 0)
  {
    if ((v13 & 0x2000000000000000) != 0)
    {
      v39[0] = v11;
      v39[1] = v13 & 0xFFFFFFFFFFFFFFLL;
      if (v11 == 43)
      {
        if (v15)
        {
          if (--v15)
          {
            v19 = 0;
            v29 = v39 + 1;
            while (1)
            {
              v30 = *v29 - 48;
              if (v30 > 9)
              {
                break;
              }

              v31 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                break;
              }

              v19 = v31 + v30;
              if (__OFADD__(v31, v30))
              {
                break;
              }

              ++v29;
              if (!--v15)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_64;
        }

LABEL_76:
        __break(1u);
        return result;
      }

      if (v11 != 45)
      {
        if (v15)
        {
          v19 = 0;
          v34 = v39;
          while (1)
          {
            v35 = *v34 - 48;
            if (v35 > 9)
            {
              break;
            }

            v36 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              break;
            }

            v19 = v36 + v35;
            if (__OFADD__(v36, v35))
            {
              break;
            }

            ++v34;
            if (!--v15)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

      if (v15)
      {
        if (--v15)
        {
          v19 = 0;
          v23 = v39 + 1;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              break;
            }

            v25 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              break;
            }

            v19 = v25 - v24;
            if (__OFSUB__(v25, v24))
            {
              break;
            }

            ++v23;
            if (!--v15)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }
    }

    else
    {
      if ((v11 & 0x1000000000000000) != 0)
      {
        result = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_25A998708();
      }

      v18 = *result;
      if (v18 == 43)
      {
        if (v16 >= 1)
        {
          v15 = v16 - 1;
          if (v16 != 1)
          {
            v19 = 0;
            if (result)
            {
              v26 = result + 1;
              while (1)
              {
                v27 = *v26 - 48;
                if (v27 > 9)
                {
                  goto LABEL_64;
                }

                v28 = 10 * v19;
                if ((v19 * 10) >> 64 != (10 * v19) >> 63)
                {
                  goto LABEL_64;
                }

                v19 = v28 + v27;
                if (__OFADD__(v28, v27))
                {
                  goto LABEL_64;
                }

                ++v26;
                if (!--v15)
                {
                  goto LABEL_65;
                }
              }
            }

            goto LABEL_56;
          }

          goto LABEL_64;
        }

        goto LABEL_75;
      }

      if (v18 != 45)
      {
        if (v16)
        {
          v19 = 0;
          if (result)
          {
            while (1)
            {
              v32 = *result - 48;
              if (v32 > 9)
              {
                goto LABEL_64;
              }

              v33 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                goto LABEL_64;
              }

              v19 = v33 + v32;
              if (__OFADD__(v33, v32))
              {
                goto LABEL_64;
              }

              ++result;
              if (!--v16)
              {
                goto LABEL_56;
              }
            }
          }

          goto LABEL_56;
        }

LABEL_64:
        v19 = 0;
        LOBYTE(v15) = 1;
        goto LABEL_65;
      }

      if (v16 >= 1)
      {
        v15 = v16 - 1;
        if (v16 != 1)
        {
          v19 = 0;
          if (result)
          {
            v20 = result + 1;
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                goto LABEL_64;
              }

              v22 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                goto LABEL_64;
              }

              v19 = v22 - v21;
              if (__OFSUB__(v22, v21))
              {
                goto LABEL_64;
              }

              ++v20;
              if (!--v15)
              {
                goto LABEL_65;
              }
            }
          }

LABEL_56:
          LOBYTE(v15) = 0;
LABEL_65:
          v40 = v15;
          v37 = v15;
          goto LABEL_66;
        }

        goto LABEL_64;
      }

      __break(1u);
    }

    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v40 = 0;
  v19 = sub_25A979124(v11, v13, 10);
  v37 = v38;
LABEL_66:

  if (v37)
  {
    return 0;
  }

  else
  {
    return v19;
  }
}

double String.attribute(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_25A8738BC(a1, a2, a3, a4, &v51);
  if (v52)
  {
    sub_25A872D74(&v51, &v46);
    sub_25A872D74(&v46, a5);
    return result;
  }

  sub_25A878194(&v51, &qword_27FA04458, &unk_25A9F7FB0);
  if (a1 == 0x6563616C706572 && a2 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = a4;

    v12 = MEMORY[0x277D84F90];
    v13 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v14 = type metadata accessor for Function();
    v15 = swift_allocObject();
    *(v15 + 32) = v12;
    *(v15 + 40) = v12;
    *(v15 + 48) = v12;

    *(v15 + 56) = v12;

    *(v15 + 64) = v12;

    *(v15 + 72) = 0;
    *(v15 + 80) = 0;

    *(v15 + 88) = 0;
    *(v15 + 96) = 0;

    *(v15 + 104) = sub_25A92BDB4(v12);
    strcpy((v15 + 16), "String.replace");
    *(v15 + 31) = -18;
    v16 = *(v15 + 80);
    v48 = *(v15 + 64);
    v49 = v16;
    v50 = *(v15 + 96);
    v17 = *(v15 + 48);
    v46 = *(v15 + 32);
    v47 = v17;
    *(v15 + 32) = &unk_286C0BC58;
    *(v15 + 40) = v12;
    *(v15 + 48) = v12;
    *(v15 + 56) = v12;
    *(v15 + 64) = v12;
    *(v15 + 72) = 0u;
    *(v15 + 88) = 0u;
    sub_25A892B80(&v46);
    swift_beginAccess();
    v18 = *(v15 + 104);
    *(v15 + 104) = v13;

    v19 = swift_allocObject();
    *(v19 + 16) = sub_25A979BB0;
    *(v19 + 24) = v11;
    v20 = sub_25A8F1D14;
  }

  else if (a1 == 0x7069727473 && a2 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    *(v21 + 24) = a4;

    v22 = MEMORY[0x277D84F90];
    v23 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v14 = type metadata accessor for Function();
    v15 = swift_allocObject();
    *(v15 + 32) = v22;
    *(v15 + 40) = v22;
    *(v15 + 48) = v22;

    *(v15 + 56) = v22;

    *(v15 + 64) = v22;

    *(v15 + 72) = 0;
    *(v15 + 80) = 0;

    *(v15 + 88) = 0;
    *(v15 + 96) = 0;

    *(v15 + 104) = sub_25A92BDB4(v22);
    strcpy((v15 + 16), "String.strip");
    *(v15 + 29) = 0;
    *(v15 + 30) = -5120;
    v24 = *(v15 + 80);
    v48 = *(v15 + 64);
    v49 = v24;
    v50 = *(v15 + 96);
    v25 = *(v15 + 48);
    v46 = *(v15 + 32);
    v47 = v25;
    *(v15 + 32) = v22;
    *(v15 + 40) = v22;
    *(v15 + 48) = v22;
    *(v15 + 56) = v22;
    *(v15 + 64) = v22;
    *(v15 + 72) = 0u;
    *(v15 + 88) = 0u;
    sub_25A892B80(&v46);
    swift_beginAccess();
    v26 = *(v15 + 104);
    *(v15 + 104) = v23;

    v19 = swift_allocObject();
    *(v19 + 16) = sub_25A979B94;
    *(v19 + 24) = v21;
    v20 = sub_25A8F1D14;
  }

  else if (a1 == 0x74696C7073 && a2 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04790, &qword_25A9F8E58);
    v27 = swift_allocObject();
    v27[1] = xmmword_25A9F8D90;
    v27[2] = 0u;
    v27[3] = 0u;
    v28 = swift_allocObject();
    *(v28 + 16) = a3;
    *(v28 + 24) = a4;

    v29 = MEMORY[0x277D84F90];
    v30 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v14 = type metadata accessor for Function();
    v15 = swift_allocObject();
    *(v15 + 32) = v29;
    *(v15 + 40) = v29;
    *(v15 + 48) = v29;

    *(v15 + 56) = v29;

    *(v15 + 64) = v29;

    *(v15 + 72) = 0;
    *(v15 + 80) = 0;

    *(v15 + 88) = 0;
    *(v15 + 96) = 0;

    *(v15 + 104) = sub_25A92BDB4(v29);
    strcpy((v15 + 16), "String.split");
    *(v15 + 29) = 0;
    *(v15 + 30) = -5120;
    v31 = *(v15 + 80);
    v48 = *(v15 + 64);
    v49 = v31;
    v50 = *(v15 + 96);
    v32 = *(v15 + 48);
    v46 = *(v15 + 32);
    v47 = v32;
    *(v15 + 32) = &unk_286C0BC98;
    *(v15 + 40) = v29;
    *(v15 + 48) = v29;
    *(v15 + 56) = v29;
    *(v15 + 64) = v27;
    *(v15 + 72) = 0u;
    *(v15 + 88) = 0u;
    sub_25A892B80(&v46);
    swift_beginAccess();
    v33 = *(v15 + 104);
    *(v15 + 104) = v30;

    v19 = swift_allocObject();
    *(v19 + 16) = sub_25A979B40;
    *(v19 + 24) = v28;
    v20 = sub_25A8F1D14;
  }

  else if (a1 == 1852403562 && a2 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    v34 = swift_allocObject();
    *(v34 + 16) = a3;
    *(v34 + 24) = a4;

    v35 = MEMORY[0x277D84F90];
    v36 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v14 = type metadata accessor for Function();
    v15 = swift_allocObject();
    *(v15 + 32) = v35;
    *(v15 + 40) = v35;
    *(v15 + 48) = v35;

    *(v15 + 56) = v35;

    *(v15 + 64) = v35;

    *(v15 + 72) = 0;
    *(v15 + 80) = 0;

    *(v15 + 88) = 0;
    *(v15 + 96) = 0;

    *(v15 + 104) = sub_25A92BDB4(v35);
    *(v15 + 16) = 0x6A2E676E69727453;
    *(v15 + 24) = 0xEB000000006E696FLL;
    v37 = *(v15 + 80);
    v48 = *(v15 + 64);
    v49 = v37;
    v50 = *(v15 + 96);
    v38 = *(v15 + 48);
    v46 = *(v15 + 32);
    v47 = v38;
    *(v15 + 32) = v35;
    *(v15 + 40) = &unk_286C0BCC8;
    *(v15 + 48) = v35;
    *(v15 + 56) = v35;
    *(v15 + 64) = v35;
    *(v15 + 72) = 0u;
    *(v15 + 88) = 0u;
    sub_25A892B80(&v46);
    swift_beginAccess();
    v39 = *(v15 + 104);
    *(v15 + 104) = v36;

    v19 = swift_allocObject();
    *(v19 + 16) = sub_25A979B24;
    *(v19 + 24) = v34;
    v20 = sub_25A8F1D14;
  }

  else
  {
    if ((a1 != 0x74616D726F66 || a2 != 0xE600000000000000) && (sub_25A9989E8() & 1) == 0)
    {
      return sub_25A8738BC(a1, a2, a3, a4, a5);
    }

    v40 = swift_allocObject();
    *(v40 + 16) = a3;
    *(v40 + 24) = a4;

    v41 = MEMORY[0x277D84F90];
    v42 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v14 = type metadata accessor for Function();
    v15 = swift_allocObject();
    *(v15 + 32) = v41;
    *(v15 + 40) = v41;
    *(v15 + 48) = v41;

    *(v15 + 56) = v41;

    *(v15 + 64) = v41;

    *(v15 + 72) = 0;
    *(v15 + 80) = 0;

    *(v15 + 88) = 0;
    *(v15 + 96) = 0;

    *(v15 + 104) = sub_25A92BDB4(v41);
    strcpy((v15 + 16), "String.format");
    *(v15 + 30) = -4864;
    v43 = *(v15 + 80);
    v48 = *(v15 + 64);
    v49 = v43;
    v50 = *(v15 + 96);
    v44 = *(v15 + 48);
    v46 = *(v15 + 32);
    v47 = v44;
    *(v15 + 32) = v41;
    *(v15 + 40) = v41;
    *(v15 + 48) = v41;
    *(v15 + 56) = v41;
    *(v15 + 64) = v41;
    *(v15 + 72) = xmmword_25A9F8DA0;
    *(v15 + 88) = xmmword_25A9F8DD0;
    sub_25A892B80(&v46);
    swift_beginAccess();
    v45 = *(v15 + 104);
    *(v15 + 104) = v42;

    v19 = swift_allocObject();
    *(v19 + 16) = sub_25A978F9C;
    *(v19 + 24) = v40;
    v20 = sub_25A8F1830;
  }

  *(v15 + 112) = v20;
  *(v15 + 120) = v19;
  *(a5 + 24) = v14;
  *a5 = v15;
  return result;
}

uint64_t sub_25A97822C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 16))
  {
    v8 = sub_25A8F3600(6581359, 0xE300000000000000);
    if (v9)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v8, v15);
      if (swift_dynamicCast())
      {
        if (*(a1 + 16))
        {
          v10 = sub_25A8F3600(7824750, 0xE300000000000000);
          if (v11)
          {
            sub_25A87500C(*(a1 + 56) + 32 * v10, v15);
            v12 = MEMORY[0x277D837D0];
            if (swift_dynamicCast())
            {
              v15[0] = a2;
              v15[1] = a3;
              *(a4 + 24) = v12;
              sub_25A979D7C();
              sub_25A979DD0();
              sub_25A998338();
            }
          }
        }
      }
    }
  }

  sub_25A874F54();
  swift_allocError();
  *v14 = 53;
  return swift_willThrow();
}

uint64_t sub_25A9783D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_25A9979C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = a1;
  v16[1] = a2;
  sub_25A9979B8();
  sub_25A8F84C4();
  v11 = MEMORY[0x277D837D0];
  v12 = sub_25A998478();
  v14 = v13;
  result = (*(v7 + 8))(v10, v6);
  a3[3] = v11;
  *a3 = v12;
  a3[1] = v14;
  return result;
}

uint64_t sub_25A9784F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_25A9979C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v13 = sub_25A8F3600(7366003, 0xE300000000000000), (v14 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v13, &v18), (swift_dynamicCast() & 1) != 0))
  {
    v18 = a2;
    v19 = a3;
    sub_25A8F84C4();
    v15 = sub_25A998468();
  }

  else
  {
    v18 = a2;
    v19 = a3;
    sub_25A9979B8();
    sub_25A8F84C4();
    v15 = sub_25A998458();
    (*(v9 + 8))(v12, v8);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04870, &qword_25A9F8EE8);
  a4[3] = result;
  *a4 = v15;
  return result;
}

uint64_t sub_25A9786B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_25A8F3600(0x656C626172657469, 0xE800000000000000), (v5 & 1) == 0))
  {
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
    goto LABEL_14;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    goto LABEL_14;
  }

  if (!*(&v30 + 1))
  {
LABEL_14:
    sub_25A878194(&v29, &qword_27FA04728, &unk_25A9FD740);
    sub_25A874F54();
    swift_allocError();
    *v18 = 54;
    return swift_willThrow();
  }

  sub_25A895470(&v29, v32);
  v6 = v33;
  v7 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v8 = (*(v7 + 8))(v6, v7);
  v9 = *(v8 + 16);
  if (v9)
  {
    v25 = a2;
    v35 = MEMORY[0x277D84F90];
    result = sub_25A9375A0(0, v9, 0);
    v11 = 0;
    v12 = v35;
    v13 = v8 + 32;
    while (v11 < *(v8 + 16))
    {
      v14 = v12;
      sub_25A87500C(v13, &v29);
      sub_25A87500C(&v29, v28);
      if (!swift_dynamicCast())
      {

        sub_25A874F54();
        swift_allocError();
        *v19 = 54;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_0Tm(&v29);

        return __swift_destroy_boxed_opaque_existential_0Tm(v32);
      }

      result = __swift_destroy_boxed_opaque_existential_0Tm(&v29);
      v12 = v14;
      v35 = v14;
      v15 = *(v14 + 16);
      v16 = *(v12 + 24);
      if (v15 >= v16 >> 1)
      {
        result = sub_25A9375A0((v16 > 1), v15 + 1, 1);
        v12 = v35;
      }

      ++v11;
      *(v12 + 16) = v15 + 1;
      v17 = v12 + 16 * v15;
      *(v17 + 32) = v26;
      *(v17 + 40) = v27;
      v13 += 32;
      if (v9 == v11)
      {
        v20 = v12;

        a2 = v25;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
LABEL_18:
    v21 = MEMORY[0x277D837D0];
    *&v29 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04870, &qword_25A9F8EE8);
    sub_25A92C3B4(&qword_27FA04878, &qword_27FA04870, &qword_25A9F8EE8);
    v22 = sub_25A997D68();
    v24 = v23;

    a2[3] = v21;
    *a2 = v22;
    a2[1] = v24;
    return __swift_destroy_boxed_opaque_existential_0Tm(v32);
  }

  return result;
}

uint64_t sub_25A978A44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_25A8F3600(1936159329, 0xE400000000000000), (v5 & 1) == 0))
  {
    v53 = 0u;
    v54 = 0u;
    v55 = 0;
    goto LABEL_7;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v55 = 0;
    v53 = 0u;
    v54 = 0u;
    goto LABEL_7;
  }

  v6 = *(&v54 + 1);
  if (!*(&v54 + 1))
  {
LABEL_7:
    sub_25A878194(&v53, &qword_27FA04728, &unk_25A9FD740);
    v45 = MEMORY[0x277D84F90];
    goto LABEL_8;
  }

  v7 = v55;
  __swift_project_boxed_opaque_existential_1(&v53, *(&v54 + 1));
  v45 = (*(v7 + 8))(v6, v7);
  __swift_destroy_boxed_opaque_existential_0Tm(&v53);
LABEL_8:
  v46 = v2;
  if (!*(a1 + 16) || (v8 = sub_25A8F3600(0x73677261776BLL, 0xE600000000000000), (v9 & 1) == 0))
  {
    v53 = 0u;
    v54 = 0u;
    v55 = 0;
    goto LABEL_14;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v8, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04740, "bN\a");
  if ((swift_dynamicCast() & 1) == 0)
  {
    v55 = 0;
    v53 = 0u;
    v54 = 0u;
    goto LABEL_14;
  }

  v10 = *(&v54 + 1);
  if (!*(&v54 + 1))
  {
LABEL_14:
    sub_25A878194(&v53, &qword_27FA04730, "\\N\a");
    v12 = sub_25A98E540(MEMORY[0x277D84F90]);
    goto LABEL_15;
  }

  v11 = v55;
  __swift_project_boxed_opaque_existential_1(&v53, *(&v54 + 1));
  v12 = (*(v11 + 8))(v10, v11);
  __swift_destroy_boxed_opaque_existential_0Tm(&v53);
LABEL_15:
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;

  v18 = 0;
  v19 = MEMORY[0x277D84F98];
  v47 = v17;
  v48 = v12 + 64;
  v49 = v12;
  while (v16)
  {
LABEL_25:
    v22 = __clz(__rbit64(v16)) | (v18 << 6);
    sub_25A874FB0(*(v12 + 48) + 40 * v22, &v53);
    sub_25A87500C(*(v12 + 56) + 32 * v22, &v56);
    sub_25A979E24(&v53, v51);
    v23 = sub_25A998548();
    v25 = v24;
    sub_25A8795A0(v51);
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    sub_25A979E24(&v53, v51);
    sub_25A872D74(v52, v50);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v19;
    v28 = sub_25A8F3600(v23, v25);
    v29 = v19[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      result = sub_25A998AA8();
      __break(1u);
      return result;
    }

    v32 = v27;
    if (v19[3] >= v31)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v27)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_25A968F5C();
        if (v32)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      sub_25A967C88(v31, isUniquelyReferenced_nonNull_native);
      v33 = sub_25A8F3600(v23, v25);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_45;
      }

      v28 = v33;
      if (v32)
      {
LABEL_18:

        v19 = v57;
        v20 = (v57[7] + 32 * v28);
        __swift_destroy_boxed_opaque_existential_0Tm(v20);
        sub_25A872D74(v50, v20);
        sub_25A878194(&v53, &qword_27FA04E50, &qword_25AA00630);
        goto LABEL_19;
      }
    }

    v19 = v57;
    v57[(v28 >> 6) + 8] |= 1 << v28;
    v35 = (v19[6] + 16 * v28);
    *v35 = v23;
    v35[1] = v25;
    sub_25A872D74(v50, (v19[7] + 32 * v28));
    sub_25A878194(&v53, &qword_27FA04E50, &qword_25AA00630);
    v36 = v19[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_44;
    }

    v19[2] = v38;
LABEL_19:
    v16 &= v16 - 1;
    sub_25A8795A0(v51);
    v13 = v48;
    v12 = v49;
    v17 = v47;
  }

  while (1)
  {
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v21 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v21);
    ++v18;
    if (v16)
    {
      v18 = v21;
      goto LABEL_25;
    }
  }

  v39 = sub_25A975350(v45, v19);
  if (v46)
  {
  }

  else
  {
    v42 = v39;
    v43 = v40;

    a2[3] = MEMORY[0x277D837D0];
    *a2 = v42;
    a2[1] = v43;
  }

  return result;
}

uint64_t sub_25A978F64()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25A978F9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_25A978A44(a1, a2);
}

id sub_25A978FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_25A997E18();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_25A997AA8();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_25A9790A4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

void *sub_25A9790B0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA053E0, &qword_25A9FDC98);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unsigned __int8 *sub_25A979124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_25A998048();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_25A9796B0();
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
      result = sub_25A998708();
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

uint64_t sub_25A9796B0()
{
  v0 = sub_25A998058();
  v4 = sub_25A979730(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_25A979730(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_25A997EF8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_25A998418();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_25A9790B0(v9, 0);
  v12 = sub_25A979888(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_25A997EF8();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_25A998708();
LABEL_4:

  return sub_25A997EF8();
}

unint64_t sub_25A979888(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_25A979AA8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_25A997FD8();
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
          result = sub_25A998708();
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

    result = sub_25A979AA8(v12, a6, a7);
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

    result = sub_25A997FB8();
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

uint64_t sub_25A979AA8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_25A997FE8();
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
    v5 = MEMORY[0x25F8502F0](15, a1 >> 16);
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

uint64_t sub_25A979B24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_25A9786B4(a1, a2);
}

uint64_t sub_25A979B5C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _sSS8MorpheusE3has9attributeSbSS_tF_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25A91CC94(&unk_286C0D8B8);
  swift_arrayDestroy();
  v5 = sub_25A9198A8(a1, a2, v4);

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = sub_25A91BC08();
    swift_beginAccess();
    v8 = *(v7 + 16);

    if (*(v8 + 16))
    {
      sub_25A8F3600(a1, a2);
      v6 = v9;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

uint64_t sub_25A979CB0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = result;
  result = _sSS8MorpheusE3lenSiyF_0();
  if (__OFSUB__(result, v1))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_25A997F48();

  return sub_25A998058();
}

unint64_t sub_25A979D7C()
{
  result = qword_27FA05898;
  if (!qword_27FA05898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05898);
  }

  return result;
}

unint64_t sub_25A979DD0()
{
  result = qword_27FA058A0[0];
  if (!qword_27FA058A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FA058A0);
  }

  return result;
}

uint64_t sub_25A979E24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04E50, &qword_25AA00630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SharedMutableSet.anySet.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_25A979EEC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
}

uint64_t Set.anySet.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  v9[2] = a2;
  v9[3] = a3;
  v4 = sub_25A998248();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_25A93B96C(sub_25A97A04C, v9, v4, a2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v6);
  sub_25A9981A8();
  swift_getWitnessTable();
  sub_25A998258();
  v7 = sub_25A998538();

  return v7;
}

uint64_t SharedMutableDict.anyDict.getter()
{
  v1 = *v0;
  sub_25A9533D4();
  v2 = *(v1 + 80);

  v3 = sub_25A998828();

  return v3;
}

uint64_t sub_25A97A194(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  return Dictionary.anyDict.getter();
}

uint64_t SharedMutableArray.__allocating_init(array:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_25A97A1FC(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    swift_beginAccess();
    v7 = *(v2 + 16);
    v8 = *(v7 + 16) + a1;
    if (v8 >= 0)
    {
      v6 = v7 + 32 * v8;
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_13;
  }

  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16) > a1)
  {
    v6 = v5 + 32 * a1;
LABEL_11:
    sub_25A87500C(v6 + 32, a2);
    return;
  }

  if (qword_27FA043C0 != -1)
  {
LABEL_13:
    swift_once();
  }

  v9 = sub_25A997BD8();
  __swift_project_value_buffer(v9, qword_27FA0FCE8);
  v10 = v2;

  v11 = sub_25A997BB8();
  v12 = sub_25A9983A8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134218240;
    *(v13 + 4) = a1;
    *(v13 + 12) = 2048;
    v14 = v10;
    *(v13 + 14) = *(*(v10 + 16) + 16);

    _os_log_impl(&dword_25A232000, v11, v12, "SharedMutableArray> Index out of range %ld >= %ld", v13, 0x16u);
    MEMORY[0x25F852800](v13, -1, -1);
  }

  else
  {

    v14 = v10;
  }

  v6 = *(v14 + 16);
  if (*(v6 + 16))
  {
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_25A97A3B8(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = v1 + 2;
  v5 = *v1;
  if (a1 < 0)
  {
    swift_beginAccess();
    v2 = *v4;
    v15 = *(v5 + 80);

    v16 = _sSa8MorpheusE3lenSiyF_0();

    v17 = __OFADD__(v16, v3);
    v3 += v16;
    if (!v17)
    {
      goto LABEL_9;
    }

    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_4;
  }

  swift_beginAccess();
  v6 = *v4;
  v7 = *(v5 + 80);

  v8 = _sSa8MorpheusE3lenSiyF_0();

  if (v8 > v3)
  {
    goto LABEL_9;
  }

  if (qword_27FA043C0 != -1)
  {
    goto LABEL_11;
  }

LABEL_4:
  v9 = sub_25A997BD8();
  __swift_project_value_buffer(v9, qword_27FA0FCE8);

  v10 = sub_25A997BB8();
  v11 = sub_25A9983A8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134218240;
    *(v12 + 4) = v3;
    *(v12 + 12) = 2048;
    swift_beginAccess();
    v13 = v2[2];

    v14 = _sSa8MorpheusE3lenSiyF_0();

    *(v12 + 14) = v14;

    _os_log_impl(&dword_25A232000, v10, v11, "SharedMutableArray> Index out of range %ld >= %ld", v12, 0x16u);
    MEMORY[0x25F852800](v12, -1, -1);
  }

  else
  {
  }

LABEL_9:
  swift_beginAccess();
  v18 = *v4;

  sub_25A9981D8();
}

uint64_t sub_25A97A644(uint64_t *a1, unint64_t a2)
{
  v3 = a2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 2) > v3)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_19;
    }

    while (1)
    {
      if (*(v5 + 2) > v3)
      {
LABEL_9:
        __swift_assign_boxed_opaque_existential_0(&v5[32 * v3 + 32], a1);
        *(v2 + 16) = v5;
        swift_endAccess();
        return __swift_destroy_boxed_opaque_existential_0Tm(a1);
      }

      __break(1u);
LABEL_6:
      swift_beginAccess();
      v5 = *(v2 + 16);
      v3 += *(v5 + 2);
      swift_beginAccess();
      v7 = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 16) = v5;
      if (v7)
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v5 = sub_25A8F7A14(v5);
        *(v2 + 16) = v5;
        if ((v3 & 0x8000000000000000) != 0)
        {
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }
      }

      if (v3 < *(v5 + 2))
      {
        goto LABEL_9;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      v5 = sub_25A8F7A14(v5);
      *(v2 + 16) = v5;
    }
  }

  if (qword_27FA043C0 != -1)
  {
    swift_once();
  }

  v9 = sub_25A997BD8();
  __swift_project_value_buffer(v9, qword_27FA0FCE8);
  v10 = v2;

  v11 = sub_25A997BB8();
  v12 = sub_25A9983A8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134218240;
    *(v13 + 4) = v3;
    *(v13 + 12) = 2048;
    *(v13 + 14) = *(*(v10 + 16) + 16);

    _os_log_impl(&dword_25A232000, v11, v12, "SharedMutableArray> Index out of range %ld >= %ld", v13, 0x16u);
    MEMORY[0x25F852800](v13, -1, -1);
  }

  else
  {
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_25A97A880(uint64_t a1, int64_t a2)
{
  v4 = *v2;
  sub_25A97BFD4(a1, a2);
  v5 = *(*(*(v4 + 80) - 8) + 8);

  return v5(a1);
}

void (*sub_25A97A8FC(void *a1, uint64_t a2))(int64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*v2 + 80);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  sub_25A97A3B8(a2);
  return sub_25A97AA18;
}

void sub_25A97AA18(int64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_25A97BFD4(v3, v8);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_25A97BFD4((*a1)[5], v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t SharedMutableArray.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SharedMutableArray.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void (*sub_25A97AB5C(void *a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  v6 = *v2;
  v5[4] = sub_25A97ABD8(v5, *a2);
  return sub_25A9522C0;
}

void (*sub_25A97ABD8(void *a1, uint64_t a2))(void *a1)
{
  v5 = *(*v2 + 80);
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  v7 = *(v6 + 64);
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  a1[2] = v8;
  sub_25A97A3B8(a2);
  return sub_25A9523D8;
}

uint64_t sub_25A97ACA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 80);
  type metadata accessor for SharedMutableArray();

  return sub_25A998318();
}

uint64_t sub_25A97AD04(uint64_t a1)
{
  v1 = *(a1 + 80);
  type metadata accessor for SharedMutableArray();

  return sub_25A998308();
}

void sub_25A97AD54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 80);
  type metadata accessor for SharedMutableArray();

  JUMPOUT(0x25F850600);
}

uint64_t sub_25A97ADC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 80);
  type metadata accessor for SharedMutableArray();

  return sub_25A9982C8();
}

uint64_t sub_25A97AE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 80);
  type metadata accessor for SharedMutableArray();

  return sub_25A9982F8();
}

void sub_25A97AE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 80);
  type metadata accessor for SharedMutableArray();

  JUMPOUT(0x25F8505E0);
}

uint64_t sub_25A97AEEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 80);
  type metadata accessor for SharedMutableArray();

  return sub_25A9713D4();
}

uint64_t sub_25A97AF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 80);
  type metadata accessor for SharedMutableArray();

  return sub_25A9714A4();
}

uint64_t sub_25A97AFA4(uint64_t a1)
{
  v2 = *(a1 + 80);
  type metadata accessor for SharedMutableArray();
  swift_getWitnessTable();
  v3 = sub_25A9714A0();
  v4 = *v1;

  return v3;
}

void sub_25A97B00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 80);
  type metadata accessor for SharedMutableArray();

  JUMPOUT(0x25F8503B0);
}

uint64_t sub_25A97B078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 80);
  type metadata accessor for SharedMutableArray();
  return sub_25A998098();
}

uint64_t SharedMutableArray<A>.store(key:obj:)(uint64_t a1, uint64_t a2)
{
  sub_25A87500C(a1, v5);
  result = swift_dynamicCast();
  if (result)
  {
    sub_25A87500C(a2, v5);
    return sub_25A97A644(v5, v4);
  }

  return result;
}

uint64_t sub_25A97B164(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_25A87500C(a1, v7);
  result = swift_dynamicCast();
  if (result)
  {
    sub_25A87500C(a2, v7);
    return sub_25A97A644(v7, v6);
  }

  return result;
}

uint64_t SharedMutableArray<A>.description.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  v3 = MEMORY[0x25F850440](v2, MEMORY[0x277D84F70] + 8);

  return v3;
}

int64_t SharedMutableArray<A>.get(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  sub_25A87500C(a1, &v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (!swift_dynamicCast())
  {
    v55 = 0;
    v53 = 0u;
    v54 = 0u;
    sub_25A878194(&v53, &qword_27FA047C8, &qword_25A9F8E88);
    sub_25A87500C(a1, &v61);
    if (!swift_dynamicCast())
    {
LABEL_17:
      sub_25A874F54();
      swift_allocError();
      *v23 = 101;
      return swift_willThrow();
    }

    LODWORD(v56) = v53;
    BYTE4(v56) = BYTE4(v53);
    v57 = DWORD2(v53);
    v58 = BYTE12(v53);
    v59 = v54;
    v60 = BYTE4(v54);
    swift_beginAccess();
    v14 = sub_25A8FF4EC(*(*(v4 + 16) + 16));
    v17 = v15;
    v18 = v16;
    v19 = 0;
    v20 = v14;
    while (1)
    {
      v21 = v15 >= v20;
      if (v16 > 0)
      {
        v21 = v20 >= v15;
      }

      if (v21)
      {
        break;
      }

      v22 = __OFADD__(v20, v16);
      v20 += v16;
      if (v22)
      {
        v20 = (v20 >> 63) ^ 0x8000000000000000;
      }

      v22 = __OFADD__(v19++, 1);
      if (v22)
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v52 = a2;
    v64 = v3;
    v25 = v14;
    v56 = MEMORY[0x277D84F90];
    sub_25A937550(0, v19, 0);
    v26 = v56;
    if (!v19)
    {
LABEL_29:
      v30 = v17 >= v25;
      if (v18 > 0)
      {
        v30 = v25 >= v17;
      }

      if (!v30)
      {
        do
        {
          if (__OFADD__(v25, v18))
          {
            v33 = ((v25 + v18) >> 63) ^ 0x8000000000000000;
          }

          else
          {
            v33 = v25 + v18;
          }

          sub_25A97A1FC(v25, &v61);
          v56 = v26;
          v35 = *(v26 + 16);
          v34 = *(v26 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_25A937550((v34 > 1), v35 + 1, 1);
            v26 = v56;
          }

          *(v26 + 16) = v35 + 1;
          sub_25A872D74(&v61, (v26 + 32 * v35 + 32));
          v36 = v17 >= v33;
          if (v18 > 0)
          {
            v36 = v33 >= v17;
          }

          v25 = v33;
        }

        while (!v36);
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
      result = swift_allocObject();
      *(result + 16) = v26;
      v32 = v52;
      v52[3] = v31;
      *v32 = result;
      return result;
    }

    result = v25;
    while (1)
    {
      v27 = v17 >= result;
      if (v18 > 0)
      {
        v27 = result >= v17;
      }

      if (v27)
      {
        break;
      }

      if (__OFADD__(result, v18))
      {
        v25 = ((result + v18) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v25 = result + v18;
      }

      sub_25A97A1FC(result, &v61);
      v56 = v26;
      v29 = *(v26 + 16);
      v28 = *(v26 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_25A937550((v28 > 1), v29 + 1, 1);
        v26 = v56;
      }

      *(v26 + 16) = v29 + 1;
      sub_25A872D74(&v61, (v26 + 32 * v29 + 32));
      result = v25;
      if (!--v19)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
    goto LABEL_62;
  }

  v52 = a2;
  v64 = v3;
  sub_25A87817C(&v53, &v61);
  v7 = v62;
  v8 = v63;
  v9 = __swift_project_boxed_opaque_existential_1(&v61, v62);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12);
  if ((sub_25A9984D8() & 1) != 0 && sub_25A9984C8() > 64)
  {
    *&v53 = 0x8000000000000000;
    if (sub_25A9984D8())
    {
      v13 = sub_25A9984C8();
      if (v13 >= 64)
      {
        v51 = v50;
        goto LABEL_44;
      }

      goto LABEL_49;
    }

    v37 = sub_25A9984D8();
    v13 = sub_25A9984C8();
    if ((v37 & 1) == 0)
    {
      if (v13 >= 64)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

    v51 = v50;
    if (v13 > 64)
    {
LABEL_44:
      MEMORY[0x28223BE20](v13);
      sub_25A895280();
      sub_25A9984A8();
      v38 = *(*(v8 + 32) + 8);
      v39 = sub_25A997D88();
      result = (*(v10 + 8))(v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      if (v39)
      {
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    v50[1] = *(*(v8 + 24) + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v50[3] = v50;
    v41 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    v42 = sub_25A998A78();
    v50[2] = v50;
    MEMORY[0x28223BE20](v42);
    sub_25A9989C8();
    v43 = *(*(v8 + 32) + 8);
    v44 = sub_25A997D88();
    result = (*(v10 + 8))(v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    if ((v44 & 1) == 0)
    {
LABEL_49:
      sub_25A9984B8();
      goto LABEL_50;
    }

LABEL_62:
    __break(1u);
    return result;
  }

LABEL_50:
  if (sub_25A9984C8() <= 64)
  {
    goto LABEL_55;
  }

  while (1)
  {
    *&v53 = 0x7FFFFFFFFFFFFFFFLL;
    v45 = sub_25A9984D8();
    v46 = sub_25A9984C8();
    if ((v45 & 1) == 0)
    {
      break;
    }

    if (v46 < 65)
    {
      goto LABEL_59;
    }

LABEL_53:
    MEMORY[0x28223BE20](v46);
    v11 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25A895280();
    sub_25A9984A8();
    v47 = *(*(v8 + 32) + 8);
    v48 = sub_25A997D88();
    (*(v10 + 8))(v11, v7);
    if (v48)
    {
      __break(1u);
LABEL_55:
      if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_60;
  }

  if (v46 >= 64)
  {
    goto LABEL_53;
  }

LABEL_59:
  sub_25A9984B8();
LABEL_60:
  v49 = sub_25A9984B8();
  (*(v10 + 8))(v12, v7);
  sub_25A97A1FC(v49, v52);
  return __swift_destroy_boxed_opaque_existential_0Tm(&v61);
}

double SharedMutableArray<A>.attribute(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_25A87388C(a1, a2, v3, &v18);
  if (v19)
  {
    sub_25A872D74(&v18, v16);
    sub_25A872D74(v16, a3);
  }

  else
  {
    sub_25A878194(&v18, &qword_27FA04458, &unk_25A9F7FB0);
    if (a1 == 0x646E65707061 && a2 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      v8 = MEMORY[0x277D84F90];
      v9 = sub_25A92BDB4(MEMORY[0x277D84F90]);
      v10 = type metadata accessor for Function();
      v11 = swift_allocObject();
      v11[4] = v8;
      v11[5] = v8;
      v11[6] = v8;

      v11[7] = v8;

      v11[8] = v8;

      v11[9] = 0;
      v11[10] = 0;

      v11[11] = 0;
      v11[12] = 0;

      v11[13] = sub_25A92BDB4(v8);
      v11[2] = 0xD00000000000001CLL;
      v11[3] = 0x800000025AA69E70;
      v12 = *(v11 + 5);
      v16[2] = *(v11 + 4);
      v16[3] = v12;
      v17 = v11[12];
      v13 = *(v11 + 3);
      v16[0] = *(v11 + 2);
      v16[1] = v13;
      v11[4] = v8;
      v11[5] = &unk_286C0BB58;
      v11[6] = v8;
      v11[7] = v8;
      v11[8] = v8;
      *(v11 + 9) = 0u;
      *(v11 + 11) = 0u;
      sub_25A892B80(v16);
      swift_beginAccess();
      v14 = v11[13];
      v11[13] = v9;

      v15 = swift_allocObject();
      *(v15 + 16) = sub_25A97C340;
      *(v15 + 24) = v3;
      v11[14] = sub_25A8F1830;
      v11[15] = v15;
      *(a3 + 24) = v10;
      *a3 = v11;
    }

    else
    {
      return sub_25A87388C(a1, a2, v3, a3);
    }
  }

  return result;
}

uint64_t sub_25A97BD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 16) && (v6 = sub_25A8F3600(0x7463656A626FLL, 0xE600000000000000), (v7 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v6, v14);
    sub_25A872D74(v14, v15);
    *(a3 + 24) = MEMORY[0x277D84F78] + 8;
    sub_25A92D814(v15, v14);
    swift_beginAccess();
    v8 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_25A967488(0, *(v8 + 2) + 1, 1, v8);
      *(a2 + 16) = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_25A967488((v10 > 1), v11 + 1, 1, v8);
    }

    *(v8 + 2) = v11 + 1;
    sub_25A872D74(v14, &v8[32 * v11 + 32]);
    *(a2 + 16) = v8;
    swift_endAccess();
    return __swift_destroy_boxed_opaque_existential_0Tm(v15);
  }

  else
  {
    sub_25A874F54();
    swift_allocError();
    *v13 = 55;
    return swift_willThrow();
  }
}

uint64_t sub_25A97BEA8(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t _s8Morpheus18SharedMutableArrayCAAypRszlE3has9attributeSbSS_tF_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25A91CC94(&unk_286C0D6C8);
  sub_25A873BC0(&unk_286C0D6E8);
  v5 = sub_25A9198A8(a1, a2, v4);

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = sub_25A91B854();
    swift_beginAccess();
    v8 = *(v7 + 16);

    if (*(v8 + 16))
    {
      sub_25A8F3600(a1, a2);
      v6 = v9;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

void sub_25A97BFD4(uint64_t a1, int64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = v2 + 2;
  v7 = *v2;
  if (a2 < 0)
  {
    swift_beginAccess();
    v3 = *v6;
    v9 = *(v7 + 80);

    v14 = _sSa8MorpheusE3lenSiyF_0();

    v15 = __OFADD__(v14, v4);
    v4 += v14;
    if (!v15)
    {
      swift_beginAccess();
      sub_25A9981A8();
      sub_25A998138();
      v16 = *v6;
      sub_25A97BEA8(v4, v16);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v13 = v16 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v13 = v16;
      }

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_15;
  }

  swift_beginAccess();
  v8 = *v6;
  v9 = *(v7 + 80);

  v10 = _sSa8MorpheusE3lenSiyF_0();

  if (v10 > v4)
  {
    swift_beginAccess();
    sub_25A9981A8();
    sub_25A998138();
    v11 = *v6;
    sub_25A97BEA8(v4, v11);
    v12 = _swift_isClassOrObjCExistentialType();
    v13 = v11 & 0xFFFFFFFFFFFFFF8;
    if ((v12 & 1) == 0)
    {
      v13 = v11;
    }

LABEL_5:
    (*(*(v9 - 8) + 24))(v13 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80)) + *(*(v9 - 8) + 72) * v4, a1, v9);
    swift_endAccess();
    return;
  }

  if (qword_27FA043C0 != -1)
  {
LABEL_15:
    swift_once();
  }

  v18 = sub_25A997BD8();
  __swift_project_value_buffer(v18, qword_27FA0FCE8);

  v19 = sub_25A997BB8();
  v20 = sub_25A9983A8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134218240;
    *(v21 + 4) = v4;
    *(v21 + 12) = 2048;
    swift_beginAccess();
    v22 = v3[2];

    v23 = _sSa8MorpheusE3lenSiyF_0();

    *(v21 + 14) = v23;

    _os_log_impl(&dword_25A232000, v19, v20, "SharedMutableArray> Index out of range %ld >= %ld", v21, 0x16u);
    MEMORY[0x25F852800](v21, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_25A97C35C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25A97C3B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  *a2 = sub_25A9533D4();
}

uint64_t sub_25A97C3EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_25A951E88(v4);
}

uint64_t *__swift_assign_boxed_opaque_existential_0(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

uint64_t sub_25A97C854@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v4, &v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
    if (swift_dynamicCast())
    {
      if (*(&v13 + 1))
      {
        sub_25A87817C(&v12, v15);
        v6 = v16;
        v7 = v17;
        __swift_project_boxed_opaque_existential_1(v15, v16);
        v8 = *((*(v7 + 8))(v6, v7) + 16);

        a2[3] = MEMORY[0x277D83B88];
        *a2 = v8;
        return __swift_destroy_boxed_opaque_existential_0Tm(v15);
      }
    }

    else
    {
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
    }
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
  }

  sub_25A878194(&v12, &qword_27FA04728, &unk_25A9FD740);
  sub_25A874F54();
  swift_allocError();
  *v10 = 0x80;
  return swift_willThrow();
}

uint64_t sub_25A97C9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) == 0))
  {
    v52 = 0u;
    v53 = 0u;
    v54 = 0;
    goto LABEL_16;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, &v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    goto LABEL_16;
  }

  if (!*(&v53 + 1))
  {
LABEL_16:
    sub_25A878194(&v52, &qword_27FA04728, &unk_25A9FD740);
    sub_25A874F54();
    swift_allocError();
    *v19 = 0x80;
    return swift_willThrow();
  }

  sub_25A87817C(&v52, v55);
  if (!*(a1 + 16) || (v6 = sub_25A8F3600(7955819, 0xE300000000000000), (v7 & 1) == 0))
  {
    v49 = 0u;
    v50 = 0u;
    v51 = 0;
    goto LABEL_19;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v6, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    goto LABEL_19;
  }

  if (!*(&v50 + 1))
  {
LABEL_19:
    sub_25A878194(&v49, &qword_27FA047C8, &qword_25A9F8E88);
    sub_25A874F54();
    swift_allocError();
    *v20 = -119;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0Tm(v55);
  }

  sub_25A87817C(&v49, &v52);
  v8 = *(&v53 + 1);
  v9 = v54;
  v10 = __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
  v11 = v46;
  v12 = *(v8 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14);
  if ((sub_25A9984D8() & 1) != 0 && sub_25A9984C8() > 64)
  {
    *&v49 = 0x8000000000000000;
    if (sub_25A9984D8())
    {
      v15 = sub_25A9984C8();
      if (v15 >= 64)
      {
        v47 = v46;
        MEMORY[0x28223BE20](v15);
        v58 = v46;
        sub_25A895280();
        sub_25A9984A8();
        v16 = *(*(v9 + 32) + 8);
        v17 = sub_25A997D88();
        v11 = v58;
        result = (*(v12 + 8))(v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
        if (v17)
        {
          goto LABEL_48;
        }

        goto LABEL_30;
      }

      goto LABEL_27;
    }

    v58 = v46;
    v21 = sub_25A9984D8();
    v22 = sub_25A9984C8();
    if (v21)
    {
      if (v22 <= 64)
      {
        v47 = *(*(v9 + 24) + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v46[2] = v46;
        v26 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        v46[0] = v46 - v27;
        swift_getAssociatedConformanceWitness();
        v28 = sub_25A998A78();
        v46[1] = v46;
        MEMORY[0x28223BE20](v28);
        sub_25A9989C8();
        v29 = *(*(v9 + 32) + 8);
        v30 = sub_25A997D88();
        result = (*(v12 + 8))(v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
        if (v30)
        {
          goto LABEL_48;
        }

        sub_25A9984B8();
        v11 = v58;
      }

      else
      {
        v47 = v46;
        MEMORY[0x28223BE20](v22);
        sub_25A895280();
        sub_25A9984A8();
        v23 = *(*(v9 + 32) + 8);
        v24 = sub_25A997D88();
        result = (*(v12 + 8))(v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
        v11 = v58;
        if (v24)
        {
          goto LABEL_48;
        }
      }

      goto LABEL_30;
    }

    v11 = v58;
    if (v22 < 64)
    {
LABEL_27:
      sub_25A9984B8();
    }
  }

LABEL_30:
  if (sub_25A9984C8() <= 64)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v58 = v11;
    *&v49 = 0x7FFFFFFFFFFFFFFFLL;
    v31 = sub_25A9984D8();
    v32 = sub_25A9984C8();
    if ((v31 & 1) == 0)
    {
      break;
    }

    if (v32 < 65)
    {
      goto LABEL_39;
    }

LABEL_33:
    MEMORY[0x28223BE20](v32);
    v13 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25A895280();
    sub_25A9984A8();
    v33 = *(*(v9 + 32) + 8);
    v34 = sub_25A997D88();
    (*(v12 + 8))(v13, v8);
    v11 = v58;
    if (v34)
    {
      __break(1u);
LABEL_35:
      if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_40;
  }

  if (v32 >= 64)
  {
    goto LABEL_33;
  }

LABEL_39:
  sub_25A9984B8();
LABEL_40:
  v35 = sub_25A9984B8();
  (*(v12 + 8))(v14, v8);
  v36 = v56;
  v37 = v57;
  __swift_project_boxed_opaque_existential_1(v55, v56);
  v38 = *((*(v37 + 8))(v36, v37) + 16);

  v39 = (v38 & (v35 >> 63)) + v35;
  v40 = v56;
  v41 = v57;
  __swift_project_boxed_opaque_existential_1(v55, v56);
  v42 = *((*(v41 + 8))(v40, v41) + 16);

  if (v39 >= v42)
  {
    sub_25A874F54();
    swift_allocError();
    *v45 = 124;
    swift_willThrow();
LABEL_45:
    __swift_destroy_boxed_opaque_existential_0Tm(&v52);
    return __swift_destroy_boxed_opaque_existential_0Tm(v55);
  }

  v43 = v56;
  v44 = v57;
  __swift_project_boxed_opaque_existential_1(v55, v56);
  result = (*(v44 + 8))(v43, v44);
  if (v39 < 0)
  {
    __break(1u);
  }

  else if (v39 < *(result + 16))
  {
    sub_25A87500C(result + 32 * v39 + 32, a2);

    goto LABEL_45;
  }

  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_25A97D294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) == 0))
  {
    v40 = 0u;
    v41 = 0u;
    v42 = 0;
    goto LABEL_11;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, &v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  v6 = MEMORY[0x277D84F70];
  if ((swift_dynamicCast() & 1) == 0)
  {
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    goto LABEL_11;
  }

  if (!*(&v41 + 1))
  {
LABEL_11:
    sub_25A878194(&v40, &qword_27FA04728, &unk_25A9FD740);
    sub_25A874F54();
    swift_allocError();
    *v17 = 0x80;
    return swift_willThrow();
  }

  sub_25A87817C(&v40, v43);
  if (!*(a1 + 16) || (v7 = sub_25A8F3600(1835365481, 0xE400000000000000), (v8 & 1) == 0))
  {
    sub_25A874F54();
    swift_allocError();
    *v29 = 4;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0Tm(v43);
  }

  sub_25A87500C(*(a1 + 56) + 32 * v7, &v40);
  sub_25A872D74(&v40, v39);
  sub_25A87500C(v39, &v31);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05570, &unk_25A9FE400);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    sub_25A878194(&v36, &qword_27FA05578, &qword_25AA00A00);
    goto LABEL_28;
  }

  sub_25A87817C(&v36, &v40);
  v10 = v44;
  v11 = v45;
  __swift_project_boxed_opaque_existential_1(v43, v44);
  result = (*(v11 + 8))(v10, v11);
  v13 = result;
  v14 = *(result + 16);
  if (!v14)
  {
LABEL_27:

    __swift_destroy_boxed_opaque_existential_0Tm(&v40);
LABEL_28:
    *(a2 + 24) = MEMORY[0x277D839B0];
    *a2 = 0;
    v30 = v39;
LABEL_29:
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    return __swift_destroy_boxed_opaque_existential_0Tm(v43);
  }

  v15 = 0;
  v16 = result + 32;
  v46 = result;
  while (v15 < *(v13 + 16))
  {
    sub_25A87500C(v16, v34);
    if (swift_dynamicCast())
    {
      v18 = v6;
      v19 = v9;
      sub_25A87817C(&v31, &v36);
      v20 = *(&v41 + 1);
      v21 = __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
      *(&v32 + 1) = v20;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v31);
      (*(*(v20 - 8) + 16))(boxed_opaque_existential_0, v21, v20);
      v23 = *(&v37 + 1);
      v24 = __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
      v35 = v23;
      v25 = __swift_allocate_boxed_opaque_existential_0(v34);
      (*(*(v23 - 8) + 16))(v25, v24, v23);
      LOBYTE(v24) = static MorpheusUtils.isNil(_:)(&v31);
      v26 = static MorpheusUtils.isNil(_:)(v34);
      v27 = v26;
      if (v24)
      {
LABEL_18:
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        __swift_destroy_boxed_opaque_existential_0Tm(&v31);
        v6 = v18;
        if (v27)
        {

          *(a2 + 24) = MEMORY[0x277D839B0];
          *a2 = 1;
          __swift_destroy_boxed_opaque_existential_0Tm(v39);
          __swift_destroy_boxed_opaque_existential_0Tm(&v36);
          v30 = &v40;
          goto LABEL_29;
        }
      }

      else
      {
        if ((v26 & 1) == 0)
        {
          __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
          DynamicType = swift_getDynamicType();
          __swift_project_boxed_opaque_existential_1(v34, v35);
          if (DynamicType == swift_getDynamicType())
          {
            __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
            v27 = sub_25A9390C4(&v31, v34);
            goto LABEL_18;
          }
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        __swift_destroy_boxed_opaque_existential_0Tm(&v31);
        v6 = v18;
      }

      result = __swift_destroy_boxed_opaque_existential_0Tm(&v36);
      v9 = v19;
      v13 = v46;
      goto LABEL_14;
    }

    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    result = sub_25A878194(&v31, &qword_27FA05578, &qword_25AA00A00);
LABEL_14:
    ++v15;
    v16 += 32;
    if (v14 == v15)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25A97D748@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v4, &v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
    if (swift_dynamicCast())
    {
      if (*(&v14 + 1))
      {
        sub_25A87817C(&v13, v16);
        v6 = v17;
        v7 = v18;
        __swift_project_boxed_opaque_existential_1(v16, v17);
        v8 = (*(v7 + 8))(v6, v7);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05520, &qword_25A9FDF90);
        v9 = swift_allocObject();
        *(v9 + 16) = v8;
        *(v9 + 24) = 0;
        a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04CC0, &qword_25A9FAA38);
        *a2 = v9;
        return __swift_destroy_boxed_opaque_existential_0Tm(v16);
      }
    }

    else
    {
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
    }
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
  }

  sub_25A878194(&v13, &qword_27FA04728, &unk_25A9FD740);
  sub_25A874F54();
  swift_allocError();
  *v11 = 0x80;
  return swift_willThrow();
}

uint64_t sub_25A97D8EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v4, &v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
    if (swift_dynamicCast())
    {
      if (*(&v16 + 1))
      {
        sub_25A87817C(&v15, v18);
        v6 = v19;
        v7 = v20;
        __swift_project_boxed_opaque_existential_1(v18, v19);
        v8 = (*(v7 + 8))(v6, v7);
        v9 = sub_25A972198(v8);
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
        v11 = swift_allocObject();
        *(v11 + 16) = v9;
        a2[3] = v10;
        *a2 = v11;
        return __swift_destroy_boxed_opaque_existential_0Tm(v18);
      }
    }

    else
    {
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
    }
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
  }

  sub_25A878194(&v15, &qword_27FA04728, &unk_25A9FD740);
  sub_25A874F54();
  swift_allocError();
  *v13 = 0x80;
  return swift_willThrow();
}

uint64_t sub_25A97DA80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) == 0))
  {
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    goto LABEL_11;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, &v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    goto LABEL_11;
  }

  if (!*(&v24 + 1))
  {
LABEL_11:
    sub_25A878194(&v23, &qword_27FA04728, &unk_25A9FD740);
    goto LABEL_12;
  }

  sub_25A87817C(&v23, v26);
  if (*(a1 + 16) && (v6 = sub_25A8F3600(0x726568746FLL, 0xE500000000000000), (v7 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v6, &v19);
    if (swift_dynamicCast())
    {
      if (*(&v21 + 1))
      {
        sub_25A87817C(&v20, &v23);
        v8 = v27;
        v9 = v28;
        __swift_project_boxed_opaque_existential_1(v26, v27);
        v10 = (*(v9 + 8))(v8, v9);
        v11 = *(&v24 + 1);
        v12 = v25;
        __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
        v13 = (*(v12 + 8))(v11, v12);
        *&v20 = v10;
        sub_25A933208(v13);
        v14 = v20;
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
        v16 = swift_allocObject();
        *(v16 + 16) = v14;
        a2[3] = v15;
        *a2 = v16;
        __swift_destroy_boxed_opaque_existential_0Tm(&v23);
        return __swift_destroy_boxed_opaque_existential_0Tm(v26);
      }
    }

    else
    {
      v22 = 0;
      v20 = 0u;
      v21 = 0u;
    }
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
  }

  sub_25A878194(&v20, &qword_27FA04728, &unk_25A9FD740);
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
LABEL_12:
  sub_25A874F54();
  swift_allocError();
  *v18 = 0x80;
  return swift_willThrow();
}

uint64_t sub_25A97DCFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) == 0))
  {
    v56 = 0u;
    v57 = 0u;
    v58 = 0;
    goto LABEL_16;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, &v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v58 = 0;
    v56 = 0u;
    v57 = 0u;
    goto LABEL_16;
  }

  if (!*(&v57 + 1))
  {
LABEL_16:
    sub_25A878194(&v56, &qword_27FA04728, &unk_25A9FD740);
    sub_25A874F54();
    swift_allocError();
    *v19 = 0x80;
    return swift_willThrow();
  }

  sub_25A87817C(&v56, v59);
  if (!*(a1 + 16) || (v6 = sub_25A8F3600(0x73656D6974, 0xE500000000000000), (v7 & 1) == 0))
  {
    v53 = 0u;
    v54 = 0u;
    v55 = 0;
    goto LABEL_19;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v6, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v55 = 0;
    v53 = 0u;
    v54 = 0u;
    goto LABEL_19;
  }

  if (!*(&v54 + 1))
  {
LABEL_19:
    sub_25A878194(&v53, &qword_27FA047C8, &qword_25A9F8E88);
    sub_25A874F54();
    swift_allocError();
    *v20 = -119;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0Tm(v59);
  }

  sub_25A87817C(&v53, &v56);
  v8 = *(&v57 + 1);
  v9 = v58;
  v10 = __swift_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
  v11 = v49;
  v12 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v14;
  (*(v14 + 16))(v13);
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
  {
    goto LABEL_30;
  }

  *&v53 = 0x8000000000000000;
  if (sub_25A9984D8())
  {
    v15 = sub_25A9984C8();
    if (v15 >= 64)
    {
      v50 = v49;
      MEMORY[0x28223BE20](v15);
      v51 = v49;
      sub_25A895280();
      sub_25A9984A8();
      v16 = *(*(v9 + 32) + 8);
      v17 = sub_25A997D88();
      v11 = v51;
      result = (*(v62 + 8))(v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
      if (v17)
      {
        goto LABEL_61;
      }

      goto LABEL_30;
    }

LABEL_27:
    sub_25A9984B8();
    goto LABEL_30;
  }

  v51 = v49;
  v21 = sub_25A9984D8();
  v22 = sub_25A9984C8();
  if ((v21 & 1) == 0)
  {
    v11 = v51;
    if (v22 >= 64)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v22 <= 64)
  {
    v50 = *(*(v9 + 24) + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v49[3] = v49;
    v26 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    v49[1] = v49 - v27;
    swift_getAssociatedConformanceWitness();
    v28 = sub_25A998A78();
    v49[2] = v49;
    MEMORY[0x28223BE20](v28);
    sub_25A9989C8();
    v29 = *(*(v9 + 32) + 8);
    v30 = sub_25A997D88();
    result = (*(v62 + 8))(v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    if (v30)
    {
      goto LABEL_61;
    }

    sub_25A9984B8();
    v11 = v51;
  }

  else
  {
    v50 = v49;
    MEMORY[0x28223BE20](v22);
    sub_25A895280();
    sub_25A9984A8();
    v23 = *(*(v9 + 32) + 8);
    v24 = sub_25A997D88();
    result = (*(v62 + 8))(v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v11 = v51;
    if (v24)
    {
      goto LABEL_61;
    }
  }

LABEL_30:
  if (sub_25A9984C8() <= 64)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v51 = v11;
    *&v53 = 0x7FFFFFFFFFFFFFFFLL;
    v31 = sub_25A9984D8();
    v32 = sub_25A9984C8();
    if ((v31 & 1) == 0)
    {
      break;
    }

    if (v32 < 65)
    {
      goto LABEL_39;
    }

LABEL_33:
    MEMORY[0x28223BE20](v32);
    v12 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25A895280();
    sub_25A9984A8();
    v33 = *(*(v9 + 32) + 8);
    v34 = sub_25A997D88();
    (*(v62 + 8))(v12, v8);
    v11 = v51;
    if (v34)
    {
      __break(1u);
LABEL_35:
      if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_40;
  }

  if (v32 >= 64)
  {
    goto LABEL_33;
  }

LABEL_39:
  sub_25A9984B8();
LABEL_40:
  v35 = sub_25A9984B8();
  (*(v62 + 8))(v13, v8);
  v36 = MEMORY[0x277D84F90];
  if (v35 < 1)
  {
LABEL_41:
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
    v38 = swift_allocObject();
    *(v38 + 16) = v36;
    a2[3] = v37;
    *a2 = v38;
    __swift_destroy_boxed_opaque_existential_0Tm(&v56);
    return __swift_destroy_boxed_opaque_existential_0Tm(v59);
  }

  while (2)
  {
    v39 = v60;
    v40 = v61;
    __swift_project_boxed_opaque_existential_1(v59, v60);
    result = (*(v40 + 8))(v39, v40);
    v41 = *(result + 16);
    v42 = *(v36 + 16);
    v43 = v42 + v41;
    if (!__OFADD__(v42, v41))
    {
      v44 = result;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v43 <= *(v36 + 24) >> 1)
      {
        if (!*(v44 + 16))
        {
LABEL_42:

          if (v41)
          {
            goto LABEL_58;
          }

          goto LABEL_43;
        }
      }

      else
      {
        if (v42 <= v43)
        {
          v45 = v42 + v41;
        }

        else
        {
          v45 = v42;
        }

        result = sub_25A967488(result, v45, 1, v36);
        v36 = result;
        if (!*(v44 + 16))
        {
          goto LABEL_42;
        }
      }

      if ((*(v36 + 24) >> 1) - *(v36 + 16) < v41)
      {
        goto LABEL_59;
      }

      swift_arrayInitWithCopy();

      if (v41)
      {
        v46 = *(v36 + 16);
        v47 = __OFADD__(v46, v41);
        v48 = v46 + v41;
        if (v47)
        {
          goto LABEL_60;
        }

        *(v36 + 16) = v48;
      }

LABEL_43:
      if (!--v35)
      {
        goto LABEL_41;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_25A97E618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

  v5 = sub_25A8F3600(1718379891, 0xE400000000000000);
  if ((v6 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v5, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  v7 = MEMORY[0x277D84F70];
  if ((swift_dynamicCast() & 1) == 0)
  {
    v39[0] = 0;
    v37 = 0u;
    v38 = 0u;
    goto LABEL_24;
  }

  v8 = *(&v38 + 1);
  if (!*(&v38 + 1))
  {
LABEL_24:
    sub_25A878194(&v37, &qword_27FA04728, &unk_25A9FD740);
    sub_25A874F54();
    swift_allocError();
    *v28 = 0x80;
    return swift_willThrow();
  }

  v9 = v39[0];
  __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
  v10 = (*(v9 + 8))(v8, v9);
  __swift_destroy_boxed_opaque_existential_0Tm(&v37);
  if (!*(a1 + 16) || (v11 = sub_25A8F3600(0x726568746FLL, 0xE500000000000000), (v12 & 1) == 0))
  {

LABEL_23:
    v37 = 0u;
    v38 = 0u;
    v39[0] = 0;
    goto LABEL_24;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v11, v34);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v39[0] = 0;
    v37 = 0u;
    v38 = 0u;
    goto LABEL_26;
  }

  v13 = *(&v38 + 1);
  if (!*(&v38 + 1))
  {
LABEL_26:

    goto LABEL_24;
  }

  v14 = v39[0];
  __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
  v15 = (*(v14 + 8))(v13, v14);
  result = __swift_destroy_boxed_opaque_existential_0Tm(&v37);
  v17 = *(v10 + 16);
  if (v17 == *(v15 + 16))
  {
    if (v17)
    {
      v18 = 0;
      v40 = 32;
      while (v18 < *(v10 + 16))
      {
        v19 = v40;
        result = sub_25A87500C(v10 + v40, v34);
        v20 = *(v15 + 16);
        if (v18 == v20)
        {

          result = __swift_destroy_boxed_opaque_existential_0Tm(v34);
          v27 = 1;
          goto LABEL_33;
        }

        v29 = v18;
        if (v18 >= v20)
        {
          goto LABEL_35;
        }

        sub_25A872D74(v34, &v37);
        sub_25A87500C(v15 + v19, v39);
        type metadata accessor for Comparison();
        sub_25A8E2098(&v37, 0, v39, v30);
        if (v2)
        {

          v31 = 0u;
          v32 = 0u;
          v33 = 0;
LABEL_31:
          sub_25A878194(&v31, &qword_27FA047E8, &unk_25A9FBF80);
LABEL_32:
          sub_25A878194(&v37, &qword_27FA05928, &qword_25AA00188);

          v27 = 0;
          goto LABEL_33;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v33 = 0;
          v31 = 0u;
          v32 = 0u;
          goto LABEL_31;
        }

        if (!*(&v32 + 1))
        {
          goto LABEL_31;
        }

        v21 = v10;
        v22 = v15;
        v23 = v7;
        sub_25A87817C(&v31, v34);
        v24 = v35;
        v25 = v36;
        __swift_project_boxed_opaque_existential_1(v34, v35);
        v26 = (*(v25 + 8))(v24, v25);
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        if ((v26 & 1) == 0)
        {
          goto LABEL_32;
        }

        v18 = v29 + 1;
        result = sub_25A878194(&v37, &qword_27FA05928, &qword_25AA00188);
        v40 += 32;
        v7 = v23;
        v15 = v22;
        v10 = v21;
        if (v17 == v29 + 1)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
    }

    else
    {
LABEL_20:

      v27 = 1;
LABEL_33:
      *(a2 + 24) = MEMORY[0x277D839B0];
      *a2 = v27;
    }
  }

  else
  {

    *(a2 + 24) = MEMORY[0x277D839B0];
    *a2 = 0;
  }

  return result;
}

uint64_t sub_25A97EBC0(uint64_t a1, void (*a2)(void))
{
  sub_25A936F00(a1);
  a2();
}

uint64_t sub_25A97EC30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_25A936F00(a1);
  sub_25A97DCFC(v3, a2);
}

unint64_t sub_25A97ECB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04798, &qword_25A9F8E60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25A9FE480;
  strcpy((inited + 32), "__contains__");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = sub_25A907E7C(0x6961746E6F635F5FLL, 0xEC0000005F5F736ELL, &unk_286C0ADA8, sub_25A97EAB8);
  *(inited + 56) = 0x6574697465675F5FLL;
  *(inited + 64) = 0xEB000000005F5F6DLL;
  *(inited + 72) = sub_25A907E7C(0x6574697465675F5FLL, 0xEB000000005F5F6DLL, &unk_286C0ADE8, sub_25A97EAE4);
  *(inited + 80) = 0x5F5F6E656C5F5FLL;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = sub_25A907E7C(0x5F5F6E656C5F5FLL, 0xE700000000000000, &unk_286C0AE28, sub_25A97EB10);
  *(inited + 104) = 0x5F5F726574695F5FLL;
  *(inited + 112) = 0xE800000000000000;
  *(inited + 120) = sub_25A907E7C(0x5F5F726574695F5FLL, 0xE800000000000000, &unk_286C0AE58, sub_25A97EB3C);
  strcpy((inited + 128), "__reversed__");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = sub_25A907E7C(0x7372657665725F5FLL, 0xEC0000005F5F6465, &unk_286C0AE88, sub_25A97EB68);
  *(inited + 152) = 0x5F5F6464615F5FLL;
  *(inited + 160) = 0xE700000000000000;
  *(inited + 168) = sub_25A907E7C(0x5F5F6464615F5FLL, 0xE700000000000000, &unk_286C0AEB8, sub_25A97EB94);
  *(inited + 176) = 0x5F5F6C756D5F5FLL;
  *(inited + 184) = 0xE700000000000000;
  *(inited + 192) = sub_25A907E7C(0x5F5F6C756D5F5FLL, 0xE700000000000000, &unk_286C0AEF8, sub_25A97EFAC);
  *(inited + 200) = 0x5F5F6C756D725F5FLL;
  *(inited + 208) = 0xE800000000000000;
  *(inited + 216) = sub_25A907E7C(0x5F5F6C756D725F5FLL, 0xE800000000000000, &unk_286C0AF38, sub_25A97EFAC);
  *(inited + 224) = 0x5F5F71655F5FLL;
  *(inited + 232) = 0xE600000000000000;
  *(inited + 240) = sub_25A907E7C(0x5F5F71655F5FLL, 0xE600000000000000, &unk_286C0AC18, sub_25A97EA8C);
  v1 = sub_25A98E67C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047A0, &qword_25A9F8E68);
  swift_arrayDestroy();
  return v1;
}

BOOL Truthiness<>.isTruthy.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 8);
  sub_25A998838();
  v8 = *(v7 + 8);
  v9 = sub_25A997DF8();
  (*(v2 + 8))(v5, a1);
  return (v9 & 1) == 0;
}

BOOL AnyArrayContainer.isTruthy.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 8))() + 16);

  return v2 != 0;
}

BOOL AnyDictContainer.isTruthy.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 8))() + 16);

  return v2 != 0;
}

uint64_t Optional.isTruthy.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v18 - v8;
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  if ((*(v2 + 48))(v12, 1, v1) == 1)
  {
    v14 = 0;
  }

  else
  {
    (*(v2 + 32))(v9, v12, v1);
    (*(v2 + 16))(v6, v9, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
    if (swift_dynamicCast())
    {
      sub_25A895470(v18, v20);
      v15 = v21;
      v16 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v14 = (*(v16 + 8))(v15, v16);
      (*(v2 + 8))(v9, v1);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
    }

    else
    {
      v19 = 0;
      memset(v18, 0, sizeof(v18));
      (*(v2 + 8))(v9, v1);
      sub_25A8F4B04(v18);
      v14 = 1;
    }
  }

  return v14 & 1;
}

double static Attributable.customAttribute(for:_:)@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, _OWORD *a3@<X8>)
{
  v5 = sub_25A97F89C(a2);
  swift_beginAccess();
  v6 = v5[2];

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA04458, &unk_25A9F7FB0);
  swift_getFunctionTypeMetadata1();
  sub_25A997D08();

  if (v8)
  {
    v8(a1);
    sub_25A980EBC(v8);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

BOOL static Attributable.hasCustomAttributes(attribute:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_25A97F89C(a3);
  swift_beginAccess();
  v4 = v3[2];

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA04458, &unk_25A9F7FB0);
  swift_getFunctionTypeMetadata1();
  sub_25A997D08();

  if (v6)
  {
    sub_25A980EBC(v6);
  }

  return v6 != 0;
}

void *sub_25A97F66C()
{
  result = sub_25A92BDB4(MEMORY[0x277D84F90]);
  off_27FA05930 = result;
  return result;
}

uint64_t sub_25A97F694()
{
  v1 = *v0;
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA04458, &unk_25A9F7FB0);
  v2 = *(v1 + 80);
  swift_getFunctionTypeMetadata1();
  sub_25A997CE8();
  sub_25A997D18();
  return swift_endAccess();
}

uint64_t sub_25A97F774()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t *sub_25A97F7E0()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA04458, &unk_25A9F7FB0);
  v2 = *(v1 + 80);
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  v4 = MEMORY[0x277D837D0];
  swift_getTupleTypeMetadata2();
  v5 = sub_25A998148();
  v6 = sub_25A980BD0(v5, v4, FunctionTypeMetadata1, MEMORY[0x277D837E0]);

  v0[2] = v6;
  return v0;
}

uint64_t *sub_25A97F89C(uint64_t a1)
{
  *&v11 = a1;
  swift_getMetatypeMetadata();
  v1 = sub_25A997EA8();
  v3 = v2;
  if (qword_27FA04408 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_27FA05930;
  if (*(off_27FA05930 + 2) && (v5 = sub_25A8F3600(v1, v3), (v6 & 1) != 0))
  {
    sub_25A87500C(v4[7] + 32 * v5, &v11);
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  swift_endAccess();
  if (!*(&v12 + 1))
  {
    sub_25A872D84(&v11);
    goto LABEL_11;
  }

  type metadata accessor for AttributableRegistry();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v8 = type metadata accessor for AttributableRegistry();
    swift_allocObject();
    v7 = sub_25A97F7E0();
    *(&v12 + 1) = v8;
    *&v11 = v7;
    swift_beginAccess();

    sub_25A8F2ED0(&v11, v1, v3);
    swift_endAccess();
    return v7;
  }

  return v10;
}

uint64_t static Attributable.register(attribute:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_25A97F89C(a5);
  sub_25A97F694();
}

_OWORD *Dictionary.attribute(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v58 = a7;
  v13 = sub_25A9983F8();
  v53 = *(v13 - 8);
  v54 = v13;
  v14 = *(v53 + 64);
  MEMORY[0x28223BE20](v13);
  v56 = &v53 - v15;
  v16 = sub_25A9983F8();
  v55 = *(v16 - 8);
  v17 = *(v55 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v53 - v19;
  v57 = *(a4 - 8);
  v21 = *(v57 + 64);
  MEMORY[0x28223BE20](v18);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1937335659 && a2 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    *&v59 = nullsub_1(a3, a4, a5, a6);
    sub_25A997C78();

    swift_getWitnessTable();
    v24 = sub_25A9981C8();
  }

  else
  {
    if ((a1 != 0x7365756C6176 || a2 != 0xE600000000000000) && (sub_25A9989E8() & 1) == 0)
    {
      if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
      {
        v27 = swift_allocObject();
        v27[2] = a4;
        v27[3] = a5;
        v27[4] = a6;
        v27[5] = a3;

        v28 = MEMORY[0x277D84F90];
        v29 = sub_25A92BDB4(MEMORY[0x277D84F90]);
        v30 = type metadata accessor for Function();
        v31 = swift_allocObject();
        v31[4] = v28;
        v31[5] = v28;
        v31[6] = v28;

        v31[7] = v28;

        v31[8] = v28;

        v31[9] = 0;
        v31[10] = 0;

        v31[11] = 0;
        v31[12] = 0;

        v31[13] = sub_25A92BDB4(v28);
        v31[2] = 0x736D657469;
        v31[3] = 0xE500000000000000;
        v32 = *(v31 + 5);
        v61 = *(v31 + 4);
        v62 = v32;
        v63 = v31[12];
        v33 = *(v31 + 3);
        v59 = *(v31 + 2);
        v60 = v33;
        v31[4] = v28;
        v31[5] = v28;
        v31[6] = v28;
        v31[7] = v28;
        v31[8] = v28;
        *(v31 + 9) = 0u;
        *(v31 + 11) = 0u;
        sub_25A892B80(&v59);
        swift_beginAccess();
        v34 = v31[13];
        v31[13] = v29;

        result = swift_allocObject();
        *(result + 2) = sub_25A980F04;
        *(result + 3) = v27;
        v31[14] = sub_25A8F1830;
        v31[15] = result;
        v35 = v58;
        *(v58 + 3) = v30;
        *v35 = v31;
        return result;
      }

      if (a1 == 0x7261656C63 && a2 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
      {
        v36 = MEMORY[0x277D84F90];
        v37 = sub_25A92BDB4(MEMORY[0x277D84F90]);
        v38 = type metadata accessor for Function();
        v39 = swift_allocObject();
        v39[4] = v36;
        v39[5] = v36;
        v39[6] = v36;

        v39[7] = v36;

        v39[8] = v36;

        v39[9] = 0;
        v39[10] = 0;

        v39[11] = 0;
        v39[12] = 0;

        v39[13] = sub_25A92BDB4(v36);
        v39[2] = 0x7261656C63;
        v39[3] = 0xE500000000000000;
        v40 = *(v39 + 5);
        v61 = *(v39 + 4);
        v62 = v40;
        v63 = v39[12];
        v41 = *(v39 + 3);
        v59 = *(v39 + 2);
        v60 = v41;
        v39[4] = v36;
        v39[5] = v36;
        v39[6] = v36;
        v39[7] = v36;
        v39[8] = v36;
        *(v39 + 9) = 0u;
        *(v39 + 11) = 0u;
        sub_25A892B80(&v59);
        swift_beginAccess();
        v42 = v39[13];
        v39[13] = v37;

        v39[14] = sub_25A98098C;
        v39[15] = 0;
        v43 = v58;
        *(v58 + 3) = v38;
        *v43 = v39;
        return result;
      }

      v44 = sub_25A997CE8();
      v64 = a3;
      static Attributable.customAttribute(for:_:)(&v64, v44, &v65);
      if (v66)
      {
        sub_25A872D74(&v65, &v59);
        return sub_25A872D74(&v59, v58);
      }

      sub_25A872D84(&v65);
      *&v59 = a1;
      *(&v59 + 1) = a2;

      v45 = swift_dynamicCast();
      v46 = v57;
      v47 = *(v57 + 56);
      if (v45)
      {
        v47(v20, 0, 1, a4);
        (*(v46 + 32))(v23, v20, a4);
        v48 = v56;
        sub_25A997D08();
        v49 = *(a5 - 8);
        if ((*(v49 + 48))(v48, 1, a5) != 1)
        {
          v51 = v58;
          *(v58 + 3) = a5;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v51);
          (*(v49 + 32))(boxed_opaque_existential_0, v48, a5);
          return (*(v46 + 8))(v23, a4);
        }

        (*(v46 + 8))(v23, a4);
        result = (*(v53 + 8))(v48, v54);
      }

      else
      {
        v47(v20, 1, 1, a4);
        result = (*(v55 + 8))(v20, v16);
      }

      v50 = v58;
      *v58 = 0u;
      v50[1] = 0u;
      return result;
    }

    *&v59 = a3;
    sub_25A997CA8();

    swift_getWitnessTable();
    v24 = sub_25A9981C8();
  }

  result = sub_25A9981A8();
  v26 = v58;
  *(v58 + 3) = result;
  *v26 = v24;
  return result;
}

uint64_t sub_25A9802A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v12[7] = a1;
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v6 = sub_25A997CE8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
  WitnessTable = swift_getWitnessTable();
  v10 = sub_25A93B96C(sub_25A980FE4, v12, v6, v7, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04828, &qword_25A9F8EB0);
  a5[3] = result;
  *a5 = v10;
  return result;
}

uint64_t sub_25A98039C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v24 = a1;
  v26 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_25A9F8D80;
  v16 = *(v8 + 16);
  v16(v14, a1, TupleTypeMetadata2);
  v25 = *(TupleTypeMetadata2 + 48);
  *(v15 + 56) = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v15 + 32));
  v18 = *(a2 - 8);
  (*(v18 + 32))(boxed_opaque_existential_0, v14, a2);
  v16(v12, v24, TupleTypeMetadata2);
  v19 = *(TupleTypeMetadata2 + 48);
  *(v15 + 88) = a3;
  v20 = __swift_allocate_boxed_opaque_existential_0((v15 + 64));
  v21 = *(a3 - 8);
  (*(v21 + 32))(v20, &v12[v19], a3);
  (*(v18 + 8))(v12, a2);
  result = (*(v21 + 8))(&v14[v25], a3);
  *v26 = v15;
  return result;
}

Swift::Bool __swiftcall Dictionary.has(attribute:)(Swift::String attribute)
{
  v4 = v3;
  v5 = v2;
  v29 = v1;
  object = attribute._object;
  countAndFlagsBits = attribute._countAndFlagsBits;
  v8 = sub_25A9983F8();
  v31 = *(v8 - 8);
  v32 = v8;
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v8);
  v30 = &v28 - v10;
  v11 = sub_25A9983F8();
  v28 = *(v11 - 8);
  v12 = *(v28 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v33 = *(v5 - 8);
  v16 = *(v33 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25A98E844(&unk_286C0D858);
  swift_arrayDestroy();
  v20 = sub_25A9198A8(countAndFlagsBits, object, v19);

  if (v20)
  {
    return 1;
  }

  v21 = sub_25A997CE8();
  if (static Attributable.hasCustomAttributes(attribute:)(countAndFlagsBits, object, v21))
  {
    return 1;
  }

  v34 = countAndFlagsBits;
  v35 = object;

  v23 = swift_dynamicCast();
  v24 = v33;
  v25 = *(v33 + 56);
  if (v23)
  {
    v25(v15, 0, 1, v5);
    (*(v24 + 32))(v18, v15, v5);
    v26 = v30;
    sub_25A997D08();
    (*(v24 + 8))(v18, v5);
    v27 = (*(*(v4 - 8) + 48))(v26, 1, v4) != 1;
    (*(v31 + 8))(v26, v32);
    return v27;
  }

  else
  {
    v25(v15, 1, 1, v5);
    (*(v28 + 8))(v15, v11);
    return 0;
  }
}

BOOL sub_25A980978(Swift::String attribute, void *a2)
{
  v3 = *v2;
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  return Dictionary.has(attribute:)(attribute);
}

uint64_t sub_25A98098C(uint64_t a1)
{
  sub_25A936F00(a1);
  sub_25A874F54();
  swift_allocError();
  *v1 = 91;
  swift_willThrow();
}

unint64_t sub_25A9809EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_25A997D48();

  return sub_25A980A48(a1, v9, a2, a3);
}

unint64_t sub_25A980A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_25A997DF8();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_25A980BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (_sSa8MorpheusE3lenSiyF_0())
  {
    sub_25A998898();
    v13 = sub_25A998888();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = _sSa8MorpheusE3lenSiyF_0();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_25A998168())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_25A998688();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_25A9809EC(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_25A980EBC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25A980ECC()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25A980F24()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t Int.floorDivide(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (!swift_dynamicCast())
  {
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    sub_25A917A78(v34);
    if (a2 == a2)
    {
      mlx_array_new_int();
    }

    __break(1u);
    goto LABEL_32;
  }

  v32 = a3;
  sub_25A87817C(v34, v37);
  v6 = v38;
  v3 = v39;
  v7 = __swift_project_boxed_opaque_existential_1(v37, v38);
  v33 = v30;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  (*(v8 + 16))(v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
  {
    goto LABEL_17;
  }

  *&v34[0] = 0x8000000000000000;
  if (sub_25A9984D8())
  {
    v10 = sub_25A9984C8();
    if (v10 < 64)
    {
LABEL_16:
      sub_25A9984B8();
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v13 = sub_25A9984D8();
  v10 = sub_25A9984C8();
  if (v13)
  {
    if (v10 <= 64)
    {
      v31 = *(*(v3 + 24) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v30[1] = v30;
      v17 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v19 = v30 - v18;
      swift_getAssociatedConformanceWitness();
      v30[2] = v19;
      v20 = sub_25A998A78();
      v30[0] = v30;
      MEMORY[0x28223BE20](v20);
      sub_25A9989C8();
      v21 = *(*(v3 + 32) + 8);
      LOBYTE(v19) = sub_25A997D88();
      (*(v8 + 8))(v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if (v19)
      {
        goto LABEL_35;
      }

      goto LABEL_16;
    }

LABEL_11:
    v31 = v30;
    MEMORY[0x28223BE20](v10);
    sub_25A895280();
    sub_25A9984A8();
    v14 = *(*(v3 + 32) + 8);
    v15 = sub_25A997D88();
    (*(v8 + 8))(v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    if (v15)
    {
      goto LABEL_35;
    }

    goto LABEL_17;
  }

  if (v10 < 64)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (sub_25A9984C8() > 64 || sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
  {
    *&v34[0] = 0x7FFFFFFFFFFFFFFFLL;
    v22 = sub_25A9984D8();
    v23 = sub_25A9984C8();
    if (v22)
    {
      if (v23 >= 65)
      {
        goto LABEL_26;
      }
    }

    else if (v23 >= 64)
    {
LABEL_26:
      MEMORY[0x28223BE20](v23);
      sub_25A895280();
      sub_25A9984A8();
      v24 = *(*(v3 + 32) + 8);
      v25 = sub_25A997D88();
      (*(v8 + 8))(v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if ((v25 & 1) == 0)
      {
        goto LABEL_27;
      }

      __break(1u);
LABEL_35:
      __break(1u);
    }

    sub_25A9984B8();
  }

LABEL_27:
  v26 = sub_25A9984B8();
  (*(v8 + 8))(v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  if (!v26)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a2 == 0x8000000000000000 && v26 == -1)
  {
LABEL_33:
    __break(1u);
    swift_once();
    sub_25A998C58();
    v11 = v37[0];
    v12 = mlx_array_dtype(a2);
    sub_25A956420(v12);
    v37[0] = mlx_array_new();
    swift_beginAccess();
    mlx_floor_divide(v37, a2, *(v3 + 16), *(v11 + 16));
  }

  v27 = v32;
  v32[3] = MEMORY[0x277D83B88];
  *v27 = a2 / v26;
  result = __swift_destroy_boxed_opaque_existential_0Tm(v37);
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A981844(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A98184CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t Int64.floorDivide(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v35 = a3;
  v42 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (swift_dynamicCast())
  {
    sub_25A87817C(v36, v39);
    v6 = v40;
    v7 = v41;
    v8 = __swift_project_boxed_opaque_existential_1(v39, v40);
    v34 = v32;
    v9 = *(v6 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8);
    (*(v9 + 16))(v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
    {
      goto LABEL_19;
    }

    *&v36[0] = 0x8000000000000000;
    if (sub_25A9984D8())
    {
      v11 = sub_25A9984C8();
      if (v11 < 64)
      {
LABEL_18:
        sub_25A9984B8();
        goto LABEL_19;
      }
    }

    else
    {
      v16 = sub_25A9984D8();
      v11 = sub_25A9984C8();
      if ((v16 & 1) == 0)
      {
        if (v11 < 64)
        {
          goto LABEL_18;
        }

LABEL_19:
        if (sub_25A9984C8() <= 64 && (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0))
        {
          goto LABEL_29;
        }

        *&v36[0] = 0x7FFFFFFFFFFFFFFFLL;
        v25 = sub_25A9984D8();
        v26 = sub_25A9984C8();
        if (v25)
        {
          if (v26 >= 65)
          {
            goto LABEL_28;
          }
        }

        else if (v26 >= 64)
        {
LABEL_28:
          MEMORY[0x28223BE20](v26);
          sub_25A8DF900();
          sub_25A9984A8();
          v27 = *(v7[4] + 8);
          v28 = sub_25A997D88();
          (*(v9 + 8))(v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
          if ((v28 & 1) == 0)
          {
            goto LABEL_29;
          }

          __break(1u);
LABEL_38:
          __break(1u);
        }

        sub_25A9984B8();
LABEL_29:
        v29 = sub_25A9984B8();
        (*(v9 + 8))(v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        if (v29)
        {
          if (a2 != 0x8000000000000000 || v29 != -1)
          {
            v30 = v35;
            v35[3] = MEMORY[0x277D84A28];
            *v30 = a2 / v29;
            result = __swift_destroy_boxed_opaque_existential_0Tm(v39);
            goto LABEL_33;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_36:
        swift_once();
LABEL_10:
        sub_25A998C58();
        v14 = v39[0];
        v15 = mlx_array_dtype(a2);
        sub_25A956420(v15);
        v39[0] = mlx_array_new();
        swift_beginAccess();
        mlx_floor_divide(v39, a2, v7[2], *(v14 + 16));
      }

      if (v11 <= 64)
      {
        v33 = *(v7[3] + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v32[1] = v32;
        v20 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        v22 = v32 - v21;
        swift_getAssociatedConformanceWitness();
        v32[2] = v22;
        v23 = sub_25A998A78();
        v32[0] = v32;
        MEMORY[0x28223BE20](v23);
        sub_25A9989C8();
        v24 = *(v7[4] + 8);
        LOBYTE(v22) = sub_25A997D88();
        (*(v9 + 8))(v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        if (v22)
        {
          goto LABEL_38;
        }

        goto LABEL_18;
      }
    }

    v33 = v32;
    MEMORY[0x28223BE20](v11);
    sub_25A8DF900();
    sub_25A9984A8();
    v17 = *(v7[4] + 8);
    v18 = sub_25A997D88();
    (*(v9 + 8))(v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    if (v18)
    {
      goto LABEL_38;
    }

    goto LABEL_19;
  }

  v37 = 0;
  memset(v36, 0, sizeof(v36));
  sub_25A917A78(v36);
  v39[0] = a2;
  a2 = mlx_array_new_data(v39, (MEMORY[0x277D84F90] + 32), 0, 8);
  v12 = sub_25A8F0FA0(a1, 13);
  if (!v3)
  {
    v7 = v12;
    if (qword_27FA043D8 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

  result = mlx_array_free(a2);
LABEL_33:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A9820E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A9820ECLL);
  }

  _Unwind_Resume(a1);
}

uint64_t Int32.floorDivide(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v39 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (!swift_dynamicCast())
  {
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    sub_25A917A78(v33);
    mlx_array_new_int();
  }

  sub_25A87817C(v33, v36);
  v4 = v37;
  v5 = v38;
  v6 = __swift_project_boxed_opaque_existential_1(v36, v37);
  v31 = v29;
  v7 = *(v4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 32)
  {
    goto LABEL_16;
  }

  LODWORD(v33[0]) = 0x80000000;
  if (sub_25A9984D8())
  {
    v9 = sub_25A9984C8();
    if (v9 < 32)
    {
LABEL_15:
      sub_25A9984B8();
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v12 = sub_25A9984D8();
  v9 = sub_25A9984C8();
  if (v12)
  {
    if (v9 <= 32)
    {
      v30 = *(*(v5 + 24) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v29[1] = v29;
      v16 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v18 = v29 - v17;
      swift_getAssociatedConformanceWitness();
      v29[2] = v18;
      v19 = sub_25A998A78();
      v29[0] = v29;
      MEMORY[0x28223BE20](v19);
      sub_25A9989C8();
      v20 = *(*(v5 + 32) + 8);
      LOBYTE(v18) = sub_25A997D88();
      (*(v7 + 8))(v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      if (v18)
      {
        goto LABEL_33;
      }

      goto LABEL_15;
    }

LABEL_10:
    v30 = v29;
    MEMORY[0x28223BE20](v9);
    sub_25A8DF954();
    sub_25A9984A8();
    v13 = *(*(v5 + 32) + 8);
    v14 = sub_25A997D88();
    (*(v7 + 8))(v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    if (v14)
    {
      goto LABEL_33;
    }

    goto LABEL_16;
  }

  if (v9 < 32)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (sub_25A9984C8() > 32 || sub_25A9984C8() == 32 && (sub_25A9984D8() & 1) == 0)
  {
    LODWORD(v33[0]) = 0x7FFFFFFF;
    v21 = sub_25A9984D8();
    v22 = sub_25A9984C8();
    if (v21)
    {
      if (v22 >= 33)
      {
        goto LABEL_25;
      }
    }

    else if (v22 >= 32)
    {
LABEL_25:
      MEMORY[0x28223BE20](v22);
      sub_25A8DF954();
      sub_25A9984A8();
      v23 = *(*(v5 + 32) + 8);
      v24 = sub_25A997D88();
      (*(v7 + 8))(v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      if ((v24 & 1) == 0)
      {
        goto LABEL_26;
      }

      __break(1u);
LABEL_33:
      __break(1u);
    }

    sub_25A9984B8();
  }

LABEL_26:
  v25 = sub_25A9984B8();
  (*(v7 + 8))(v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  if (!v25)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (a2 == 0x80000000 && v25 == -1)
  {
LABEL_31:
    __break(1u);
    swift_once();
    sub_25A998C58();
    v10 = v36[0];
    v11 = mlx_array_dtype(a2);
    sub_25A956420(v11);
    v36[0] = mlx_array_new();
    swift_beginAccess();
    mlx_floor_divide(v36, a2, *(v5 + 16), *(v10 + 16));
  }

  v26 = v32;
  *(v32 + 24) = MEMORY[0x277D849A8];
  *v26 = a2 / v25;
  result = __swift_destroy_boxed_opaque_existential_0Tm(v36);
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A98296C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A982974);
  }

  _Unwind_Resume(a1);
}

uint64_t UInt32.floorDivide(_:)@<X0>(uint64_t a1@<X0>, mlx::core::array *a2@<X1>, uint64_t *a3@<X8>)
{
  v35 = a3;
  v42 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (swift_dynamicCast())
  {
    sub_25A87817C(v36, v39);
    v6 = v40;
    v7 = v41;
    v8 = __swift_project_boxed_opaque_existential_1(v39, v40);
    v34 = v32;
    v9 = *(v6 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8);
    (*(v9 + 16))(v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
    {
      goto LABEL_19;
    }

    *&v36[0] = 0x8000000000000000;
    if (sub_25A9984D8())
    {
      v11 = sub_25A9984C8();
      if (v11 < 64)
      {
LABEL_18:
        sub_25A9984B8();
        goto LABEL_19;
      }
    }

    else
    {
      v16 = sub_25A9984D8();
      v11 = sub_25A9984C8();
      if ((v16 & 1) == 0)
      {
        if (v11 < 64)
        {
          goto LABEL_18;
        }

LABEL_19:
        if (sub_25A9984C8() <= 64 && (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0))
        {
          goto LABEL_29;
        }

        *&v36[0] = 0x7FFFFFFFFFFFFFFFLL;
        v25 = sub_25A9984D8();
        v26 = sub_25A9984C8();
        if (v25)
        {
          if (v26 >= 65)
          {
            goto LABEL_28;
          }
        }

        else if (v26 >= 64)
        {
LABEL_28:
          MEMORY[0x28223BE20](v26);
          sub_25A8DF900();
          sub_25A9984A8();
          v27 = *(v7[4] + 8);
          v28 = sub_25A997D88();
          (*(v9 + 8))(v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
          if ((v28 & 1) == 0)
          {
            goto LABEL_29;
          }

          __break(1u);
LABEL_35:
          __break(1u);
        }

        sub_25A9984B8();
LABEL_29:
        v29 = sub_25A9984B8();
        (*(v9 + 8))(v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        if (v29)
        {
          v30 = v35;
          v35[3] = MEMORY[0x277D84A28];
          *v30 = a2 / v29;
          result = __swift_destroy_boxed_opaque_existential_0Tm(v39);
          goto LABEL_31;
        }

        __break(1u);
LABEL_33:
        swift_once();
LABEL_10:
        sub_25A998C58();
        v14 = v39[0];
        v15 = mlx_array_dtype(a2);
        sub_25A956420(v15);
        v39[0] = mlx_array_new();
        swift_beginAccess();
        mlx_floor_divide(v39, a2, v7[2], *(v14 + 16));
      }

      if (v11 <= 64)
      {
        v33 = *(v7[3] + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v32[1] = v32;
        v20 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        v22 = v32 - v21;
        swift_getAssociatedConformanceWitness();
        v32[2] = v22;
        v23 = sub_25A998A78();
        v32[0] = v32;
        MEMORY[0x28223BE20](v23);
        sub_25A9989C8();
        v24 = *(v7[4] + 8);
        LOBYTE(v22) = sub_25A997D88();
        (*(v9 + 8))(v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        if (v22)
        {
          goto LABEL_35;
        }

        goto LABEL_18;
      }
    }

    v33 = v32;
    MEMORY[0x28223BE20](v11);
    sub_25A8DF900();
    sub_25A9984A8();
    v17 = *(v7[4] + 8);
    v18 = sub_25A997D88();
    (*(v9 + 8))(v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    if (v18)
    {
      goto LABEL_35;
    }

    goto LABEL_19;
  }

  v37 = 0;
  memset(v36, 0, sizeof(v36));
  sub_25A917A78(v36);
  LODWORD(v39[0]) = a2;
  a2 = mlx_array_new_data(v39, (MEMORY[0x277D84F90] + 32), 0, 3);
  v12 = sub_25A8F0FA0(a1, 13);
  if (!v3)
  {
    v7 = v12;
    if (qword_27FA043D8 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

  result = mlx_array_free(a2);
LABEL_31:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A9831F8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A983200);
  }

  _Unwind_Resume(a1);
}

uint64_t Float.floorDivide(_:)(uint64_t a1, __n128 a2)
{
  v11[10] = *MEMORY[0x277D85DE8];
  v4 = mlx_array_new_float(a1, a2);
  type metadata accessor for MLXArray();
  *(swift_initStackObject() + 16) = v4;
  v5 = sub_25A8F0FA0(a1, 13);
  if (!v2)
  {
    v7 = v5;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8 = v11[0];
    v9 = mlx_array_dtype(v4);
    sub_25A956420(v9);
    v11[0] = mlx_array_new();
    swift_beginAccess();
    mlx_floor_divide(v11, v4, v7[2], *(v8 + 16));
  }

  swift_setDeallocating();
  result = mlx_array_free(v4);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A983434(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A98343CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t Double.floorDivide(_:)(uint64_t a1, __n128 a2)
{
  v11[10] = *MEMORY[0x277D85DE8];
  a2.n128_f32[0] = a2.n128_f64[0];
  v4 = mlx_array_new_float(a1, a2);
  type metadata accessor for MLXArray();
  *(swift_initStackObject() + 16) = v4;
  v5 = sub_25A8F0FA0(a1, 13);
  if (!v2)
  {
    v7 = v5;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8 = v11[0];
    v9 = mlx_array_dtype(v4);
    sub_25A956420(v9);
    v11[0] = mlx_array_new();
    swift_beginAccess();
    mlx_floor_divide(v11, v4, v7[2], *(v8 + 16));
  }

  swift_setDeallocating();
  result = mlx_array_free(v4);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A983664(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A98366CLL);
  }

  _Unwind_Resume(a1);
}

void *sub_25A9836AC(uint64_t a1)
{
  v3 = *v1;
  result = sub_25A8F0FA0(a1, 13);
  if (!v2)
  {
    v5[3] = v3;
    v5[0] = result;

    sub_25A9836AC(v5);

    return __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  return result;
}

uint64_t sub_25A9837D0@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27FA042D0 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA046A0;
  a1[3] = type metadata accessor for PyBuiltInClass();
  a1[4] = sub_25A892BD4();
  *a1 = v2;
}

uint64_t sub_25A983854@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  v6 = sub_25A8F3600(1718379891, 0xE400000000000000);
  if ((v7 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v6, v29);
  v8 = type metadata accessor for MLXArray();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v9 = v26;
  if (!*(a1 + 16) || (v10 = sub_25A8F3600(0x726568746FLL, 0xE500000000000000), (v11 & 1) == 0))
  {

    v26 = 0u;
    v27 = 0u;
    v28 = 0;
LABEL_17:
    sub_25A983FBC(&v26);
LABEL_18:
    sub_25A874F54();
    swift_allocError();
    *v19 = 111;
    result = swift_willThrow();
    goto LABEL_19;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v10, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04810, &qword_25A9F8E98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    goto LABEL_16;
  }

  if (!*(&v27 + 1))
  {
LABEL_16:

    goto LABEL_17;
  }

  sub_25A895470(&v26, v29);
  v12 = v30;
  v13 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v14 = (*(v13 + 8))(13, v12, v13);
  v15 = a2(v9, v14);
  swift_beginAccess();
  if (mlx_array_size(*(v9 + 16)) == 1 && (v16 = *(sub_25A9616CC() + 16), , !v16) && (swift_beginAccess(), mlx_array_size(*(v14 + 16)) == 1) && (v17 = *(sub_25A9616CC() + 16), , !v17))
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v24 = mlx_array_new();
    swift_beginAccess();
    mlx_all(&v24, *(v15 + 16), 0, *(v23 + 16));

    v21 = v24;
    *(swift_allocObject() + 16) = v21;
    *(a3 + 24) = MEMORY[0x277D839B0];
    v22 = sub_25A8EDD5C();

    *a3 = v22 & 1;
  }

  else
  {
    *(a3 + 24) = v8;

    *a3 = v15;
  }

  result = __swift_destroy_boxed_opaque_existential_0Tm(v29);
LABEL_19:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A983BD0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A983BD8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A983BF4(char *a1, uint64_t a2, uint64_t a3)
{
  v16 = *a1;
  v5 = PySpecialFunction.rawValue.getter();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  v9 = MEMORY[0x277D84F90];
  v10 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  type metadata accessor for Function();
  v11 = swift_allocObject();
  *(v11 + 32) = v9;
  *(v11 + 40) = v9;
  *(v11 + 48) = v9;
  *(v11 + 56) = v9;
  *(v11 + 64) = v9;
  *(v11 + 72) = 0u;
  *(v11 + 88) = 0u;
  *(v11 + 104) = sub_25A92BDB4(v9);
  *(v11 + 16) = v5;
  *(v11 + 24) = v7;
  v12 = *(v11 + 80);
  v17[2] = *(v11 + 64);
  v17[3] = v12;
  v18 = *(v11 + 96);
  v13 = *(v11 + 48);
  v17[0] = *(v11 + 32);
  v17[1] = v13;
  *(v11 + 32) = &unk_286C0BA28;
  *(v11 + 40) = v9;
  *(v11 + 48) = v9;
  *(v11 + 56) = v9;
  *(v11 + 64) = v9;
  *(v11 + 72) = 0u;
  *(v11 + 88) = 0u;
  sub_25A892B80(v17);
  swift_beginAccess();
  *(v11 + 104) = v10;

  v14 = swift_allocObject();
  *(v14 + 16) = sub_25A983FA0;
  *(v14 + 24) = v8;
  *(v11 + 112) = sub_25A8F1830;
  *(v11 + 120) = v14;
  return v11;
}

unint64_t sub_25A983D70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04798, &qword_25A9F8E60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25AA003A0;
  *(inited + 32) = 0x5F5F71655F5FLL;
  *(inited + 40) = 0xE600000000000000;
  v3 = 16;
  *(inited + 48) = sub_25A983BF4(&v3, sub_25A94EEF0, 0);
  *(inited + 56) = 0x5F5F656E5F5FLL;
  *(inited + 64) = 0xE600000000000000;
  v3 = 17;
  *(inited + 72) = sub_25A983BF4(&v3, sub_25A94F4A0, 0);
  *(inited + 80) = 0x5F5F746C5F5FLL;
  *(inited + 88) = 0xE600000000000000;
  v3 = 18;
  *(inited + 96) = sub_25A983BF4(&v3, sub_25A94F5E8, 0);
  *(inited + 104) = 0x5F5F656C5F5FLL;
  *(inited + 112) = 0xE600000000000000;
  v3 = 19;
  *(inited + 120) = sub_25A983BF4(&v3, sub_25A94F730, 0);
  *(inited + 128) = 0x5F5F74675F5FLL;
  *(inited + 136) = 0xE600000000000000;
  v3 = 20;
  *(inited + 144) = sub_25A983BF4(&v3, sub_25A94F878, 0);
  *(inited + 152) = 0x5F5F65675F5FLL;
  *(inited + 160) = 0xE600000000000000;
  v3 = 21;
  *(inited + 168) = sub_25A983BF4(&v3, sub_25A94F9C0, 0);
  v1 = sub_25A98E67C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047A0, &qword_25A9F8E68);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_25A983F68()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25A983FBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04808, &qword_25A9FDC40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25A984028(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x277D84F90];
  sub_25A9378E0(0, v1, 0);
  v2 = v28;
  v4 = -1 << *(a1 + 32);
  v25 = a1 + 64;
  result = sub_25A998508();
  v6 = result;
  v7 = 0;
  v24 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v25 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    result = sub_25A874FB0(*(a1 + 48) + 40 * v6, v26);
    v28 = v2;
    v13 = *(v2 + 16);
    v12 = *(v2 + 24);
    if (v13 >= v12 >> 1)
    {
      result = sub_25A9378E0((v12 > 1), v13 + 1, 1);
      v2 = v28;
    }

    *(v2 + 16) = v13 + 1;
    v14 = v2 + 40 * v13;
    v15 = v26[0];
    v16 = v26[1];
    *(v14 + 64) = v27;
    *(v14 + 32) = v15;
    *(v14 + 48) = v16;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v17 = *(v25 + 8 * v10);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v24;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v9 = v24;
      v21 = (a1 + 72 + 8 * v10);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_25A92C648(v6, v11, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_25A92C648(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return v2;
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

_OWORD *sub_25A984268@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) == 0))
  {
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
    goto LABEL_13;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, &v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04740, "bN\a");
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    goto LABEL_13;
  }

  v6 = *(&v22 + 1);
  if (!*(&v22 + 1))
  {
LABEL_13:
    sub_25A878194(&v21, &qword_27FA04730, "\\N\a");
    sub_25A874F54();
    swift_allocError();
    v15 = 127;
LABEL_14:
    *v14 = v15;
    return swift_willThrow();
  }

  v7 = v23;
  __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
  v8 = (*(v7 + 8))(v6, v7);
  __swift_destroy_boxed_opaque_existential_0Tm(&v21);
  if (!*(a1 + 16) || (v9 = sub_25A8F3600(7955819, 0xE300000000000000), (v10 & 1) == 0))
  {

    v18 = 0u;
    v19 = 0u;
    v20 = 0;
LABEL_19:
    sub_25A878194(&v18, &qword_27FA04610, &qword_25A9FDA50);
    sub_25A874F54();
    swift_allocError();
    v15 = -122;
    goto LABEL_14;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v9, &v17);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    goto LABEL_18;
  }

  if (!*(&v19 + 1))
  {
LABEL_18:

    goto LABEL_19;
  }

  v21 = v18;
  v22 = v19;
  v23 = v20;
  if (*(v8 + 16) && (v11 = sub_25A8F35BC(&v21), (v12 & 1) != 0))
  {
    sub_25A87500C(*(v8 + 56) + 32 * v11, &v18);

    sub_25A8795A0(&v21);
    return sub_25A872D74(&v18, a2);
  }

  else
  {

    sub_25A874F54();
    swift_allocError();
    *v16 = 125;
    swift_willThrow();
    return sub_25A8795A0(&v21);
  }
}

uint64_t sub_25A984524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) == 0))
  {
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
    goto LABEL_12;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, &v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04740, "bN\a");
  if ((swift_dynamicCast() & 1) == 0)
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    goto LABEL_12;
  }

  v6 = *(&v21 + 1);
  if (!*(&v21 + 1))
  {
LABEL_12:
    sub_25A878194(&v20, &qword_27FA04730, "\\N\a");
    v13 = 126;
LABEL_13:
    sub_25A874F54();
    swift_allocError();
    *v14 = v13;
    return swift_willThrow();
  }

  v7 = v22;
  __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
  v8 = (*(v7 + 8))(v6, v7);
  __swift_destroy_boxed_opaque_existential_0Tm(&v20);
  if (!*(a1 + 16) || (v9 = sub_25A8F3600(1835365481, 0xE400000000000000), (v10 & 1) == 0))
  {

    v17 = 0u;
    v18 = 0u;
    v19 = 0;
LABEL_18:
    sub_25A878194(&v17, &qword_27FA04610, &qword_25A9FDA50);
    v13 = -122;
    goto LABEL_13;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v9, &v16);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    goto LABEL_17;
  }

  if (!*(&v18 + 1))
  {
LABEL_17:

    goto LABEL_18;
  }

  v20 = v17;
  v21 = v18;
  v22 = v19;
  if (*(v8 + 16))
  {
    sub_25A8F35BC(&v20);
    v12 = v11;
  }

  else
  {

    v12 = 0;
  }

  *(a2 + 24) = MEMORY[0x277D839B0];
  *a2 = v12 & 1;
  return sub_25A8795A0(&v20);
}

uint64_t sub_25A984784@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v4, &v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04740, "bN\a");
    if (swift_dynamicCast())
    {
      v6 = *(&v14 + 1);
      if (*(&v14 + 1))
      {
        v7 = v15;
        __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
        v8 = (*(v7 + 8))(v6, v7);
        __swift_destroy_boxed_opaque_existential_0Tm(&v13);
        v9 = *(v8 + 16);

        a2[3] = MEMORY[0x277D83B88];
        *a2 = v9;
        return result;
      }
    }

    else
    {
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
    }
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
  }

  sub_25A878194(&v13, &qword_27FA04730, "\\N\a");
  sub_25A874F54();
  swift_allocError();
  *v11 = 126;
  return swift_willThrow();
}

uint64_t sub_25A9848F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v4, &v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04740, "bN\a");
    if (swift_dynamicCast())
    {
      v6 = *(&v16 + 1);
      if (*(&v16 + 1))
      {
        v7 = v17;
        __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
        v8 = (*(v7 + 8))(v6, v7);
        __swift_destroy_boxed_opaque_existential_0Tm(&v15);
        v9 = sub_25A936C50(v8);

        v10 = sub_25A984028(v9);

        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FA059B8, &qword_25AA003B0);
        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        *(v11 + 24) = 0;
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04E98, &qword_25A9FBA58);
        a2[3] = result;
        *a2 = v11;
        return result;
      }
    }

    else
    {
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
    }
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
  }

  sub_25A878194(&v15, &qword_27FA04730, "\\N\a");
  sub_25A874F54();
  swift_allocError();
  *v13 = 126;
  return swift_willThrow();
}

uint64_t sub_25A984ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_33;
  }

  v5 = sub_25A8F3600(1718379891, 0xE400000000000000);
  if ((v6 & 1) == 0)
  {
    goto LABEL_33;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v5, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04740, "bN\a");
  if ((swift_dynamicCast() & 1) == 0)
  {
    v47 = 0;
    v45 = 0u;
    v46 = 0u;
    goto LABEL_34;
  }

  v7 = *(&v46 + 1);
  if (!*(&v46 + 1))
  {
LABEL_34:
    sub_25A878194(&v45, &qword_27FA04730, "\\N\a");
    sub_25A874F54();
    swift_allocError();
    *v33 = -95;
    return swift_willThrow();
  }

  v8 = v47;
  __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
  v9 = (*(v8 + 8))(v7, v8);
  __swift_destroy_boxed_opaque_existential_0Tm(&v45);
  if (!*(a1 + 16) || (v10 = sub_25A8F3600(0x726568746FLL, 0xE500000000000000), (v11 & 1) == 0))
  {

LABEL_33:
    v45 = 0u;
    v46 = 0u;
    v47 = 0;
    goto LABEL_34;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v10, v42);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v47 = 0;
    v45 = 0u;
    v46 = 0u;
    goto LABEL_36;
  }

  v12 = *(&v46 + 1);
  if (!*(&v46 + 1))
  {
LABEL_36:

    goto LABEL_34;
  }

  v13 = v47;
  __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
  v14 = (*(v13 + 8))(v12, v13);
  __swift_destroy_boxed_opaque_existential_0Tm(&v45);

  v15 = sub_25A985054(v9, v14);

  if (v15)
  {
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 64);
    v35 = (v16 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v20 = 0;
    v48 = v14;
    while (v18)
    {
LABEL_18:
      sub_25A874FB0(*(v9 + 48) + 40 * (__clz(__rbit64(v18)) | (v20 << 6)), &v45);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
      v37[3] = v22;
      v23 = swift_allocObject();
      v37[0] = v23;
      if (*(v9 + 16) && (v24 = sub_25A8F35BC(&v45), (v25 & 1) != 0))
      {
        sub_25A87500C(*(v9 + 56) + 32 * v24, v23 + 16);
      }

      else
      {
        *(v23 + 16) = 0u;
        *(v23 + 32) = 0u;
      }

      v36[3] = v22;
      v26 = swift_allocObject();
      v36[0] = v26;
      v27 = v48;
      if (*(v48 + 16) && (v28 = sub_25A8F35BC(&v45), (v29 & 1) != 0))
      {
        sub_25A87500C(*(v27 + 56) + 32 * v28, v26 + 16);
      }

      else
      {
        *(v26 + 16) = 0u;
        *(v26 + 32) = 0u;
      }

      type metadata accessor for Comparison();
      sub_25A8E2098(v37, 0, v36, v38);
      if (v2)
      {

        sub_25A8795A0(&v45);
        __swift_destroy_boxed_opaque_existential_0Tm(v36);
        __swift_destroy_boxed_opaque_existential_0Tm(v37);
        v39 = 0u;
        v40 = 0u;
        v41 = 0;
LABEL_42:
        sub_25A878194(&v39, &qword_27FA047E8, &unk_25A9FBF80);

LABEL_43:
        v34 = 0;
LABEL_44:
        *(a2 + 24) = MEMORY[0x277D839B0];
        *a2 = v34;
        return result;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v41 = 0;
        v39 = 0u;
        v40 = 0u;
LABEL_41:

        sub_25A8795A0(&v45);
        goto LABEL_42;
      }

      if (!*(&v40 + 1))
      {
        goto LABEL_41;
      }

      v18 &= v18 - 1;
      sub_25A895470(&v39, v42);
      v30 = v43;
      v31 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v32 = (*(v31 + 8))(v30, v31);
      sub_25A8795A0(&v45);
      result = __swift_destroy_boxed_opaque_existential_0Tm(v42);
      if ((v32 & 1) == 0)
      {

        result = swift_bridgeObjectRelease_n();
        goto LABEL_43;
      }
    }

    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v35)
      {

        result = swift_bridgeObjectRelease_n();
        v34 = 1;
        goto LABEL_44;
      }

      v18 = *(v9 + 64 + 8 * v21);
      ++v20;
      if (v18)
      {
        v20 = v21;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {

    *(a2 + 24) = MEMORY[0x277D839B0];
    *a2 = 0;
  }

  return result;
}

uint64_t sub_25A985054(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
LABEL_9:
    while (1)
    {
      sub_25A874FB0(*(a1 + 48) + 40 * (__clz(__rbit64(v6)) | (v9 << 6)), v15);
      v13[0] = v15[0];
      v13[1] = v15[1];
      v14 = v16;
      if (!*(a2 + 16))
      {
        break;
      }

      sub_25A8F35BC(v13);
      v11 = v10;
      result = sub_25A8795A0(v13);
      if ((v11 & 1) == 0)
      {
        goto LABEL_19;
      }

      v6 &= v6 - 1;
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    sub_25A8795A0(v13);
LABEL_19:

    return 0;
  }

  else
  {
LABEL_14:
    while (1)
    {
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v12 >= v7)
      {

        return 1;
      }

      v6 = *(a1 + 64 + 8 * v12);
      ++v9;
      if (v6)
      {
        v9 = v12;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25A98528C(uint64_t a1, void (*a2)(void))
{
  sub_25A936F00(a1);
  a2();
}

unint64_t sub_25A9852E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04798, &qword_25A9F8E60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25A9F9510;
  *(inited + 32) = 0x6574697465675F5FLL;
  *(inited + 40) = 0xEB000000005F5F6DLL;
  *(inited + 48) = sub_25A907E7C(0x6574697465675F5FLL, 0xEB000000005F5F6DLL, &unk_286C0AC88, sub_25A9851B0);
  strcpy((inited + 56), "__contains__");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = sub_25A907E7C(0x6961746E6F635F5FLL, 0xEC0000005F5F736ELL, &unk_286C0ACC8, sub_25A9851DC);
  *(inited + 80) = 0x5F5F6E656C5F5FLL;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = sub_25A907E7C(0x5F5F6E656C5F5FLL, 0xE700000000000000, &unk_286C0AD08, sub_25A985208);
  *(inited + 104) = 0x5F5F726574695F5FLL;
  *(inited + 112) = 0xE800000000000000;
  *(inited + 120) = sub_25A907E7C(0x5F5F726574695F5FLL, 0xE800000000000000, &unk_286C0AD38, sub_25A985234);
  *(inited + 128) = 0x5F5F71655F5FLL;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = sub_25A907E7C(0x5F5F71655F5FLL, 0xE600000000000000, &unk_286C0AD68, sub_25A985260);
  v1 = sub_25A98E67C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047A0, &qword_25A9F8E68);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_25A9854D4()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25A985514(uint64_t a1, unint64_t a2)
{

  v5 = sub_25A9856C4(0x7FFFFFFFFFFFFFFFuLL, 1, a1, a2, v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v18 = MEMORY[0x277D84F90];
    sub_25A9375A0(0, v6, 0);
    v7 = (v5 + 56);
    do
    {
      v8 = *(v7 - 3);
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;

      v12 = MEMORY[0x25F850210](v8, v9, v10, v11);
      MEMORY[0x25F850290](v12);

      v14 = *(v18 + 16);
      v13 = *(v18 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_25A9375A0((v13 > 1), v14 + 1, 1);
      }

      *(v18 + 16) = v14 + 1;
      v15 = v18 + 16 * v14;
      *(v15 + 32) = 9;
      *(v15 + 40) = 0xE100000000000000;
      v7 += 4;
      --v6;
    }

    while (v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04870, &qword_25A9F8EE8);
  sub_25A8953BC();
  v16 = sub_25A997D68();

  return v16;
}

unint64_t sub_25A9856C4@<X0>(unint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_44:
    result = sub_25A967148((a5 > 1), v6, 1, result);
LABEL_36:
    *(result + 16) = v6;
    v32 = (result + 32 * v5);
    v32[4] = v7;
    v32[5] = v8;
    v32[6] = v9;
    v32[7] = v10;
    return result;
  }

  v11 = a3;
  v12 = HIBYTE(a4) & 0xF;
  if (!result || ((a4 & 0x2000000000000000) != 0 ? (v13 = HIBYTE(a4) & 0xF) : (v13 = a3 & 0xFFFFFFFFFFFFLL), !v13))
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      v12 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_25A998058();
    v8 = v29;
    v9 = v30;
    v10 = v31;

    result = sub_25A967148(0, 1, 1, MEMORY[0x277D84F90]);
    v5 = *(result + 16);
    a5 = *(result + 24);
    v6 = v5 + 1;
    if (v5 < a5 >> 1)
    {
      goto LABEL_36;
    }

    goto LABEL_44;
  }

  v14 = 4 * v13;
  v43 = MEMORY[0x277D84F90];
  v15 = 15;
  v16 = 4294959064;
  v42 = result;
  do
  {
    v17 = v15 >> 14;
    if (v15 >> 14 == v14)
    {
      break;
    }

    while (2)
    {
      v10 = v15;
      while (1)
      {
        v18 = sub_25A998028();
        v9 = v19;
        result = sub_25A985AAC(v18, v19);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_48;
        }

        v20 = result;

        if ((v20 - 14) > 0xFFFFFFFB || (v20 - 8232) < 2 || v20 == 133)
        {
          break;
        }

        v10 = sub_25A997F28();
        v17 = v10 >> 14;
        if (v10 >> 14 == v14)
        {
          goto LABEL_32;
        }
      }

      if (v15 >> 14 == v17 && (a2 & 1) != 0)
      {
        v15 = sub_25A997F28();
        v17 = v15 >> 14;
        if (v15 >> 14 != v14)
        {
          continue;
        }

        goto LABEL_32;
      }

      break;
    }

    if (v17 < v15 >> 14)
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return result;
    }

    v21 = sub_25A998058();
    v39 = v23;
    v40 = v22;
    v24 = v43;
    v41 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_25A967148(0, *(v43 + 2) + 1, 1, v43);
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    v43 = v24;
    if (v27 >= v26 >> 1)
    {
      v43 = sub_25A967148((v26 > 1), v27 + 1, 1, v24);
    }

    v9 = v43;
    *(v43 + 2) = v27 + 1;
    v28 = &v43[32 * v27];
    *(v28 + 4) = v21;
    *(v28 + 5) = v41;
    *(v28 + 6) = v40;
    *(v28 + 7) = v39;
    v15 = sub_25A997F28();
  }

  while (*(v43 + 2) != v42);
LABEL_32:
  if (v15 >> 14 == v14 && (a2 & 1) != 0)
  {

    return v43;
  }

  if (v14 < v15 >> 14)
  {
    __break(1u);
    goto LABEL_46;
  }

  v11 = sub_25A998058();
  v16 = v33;
  v9 = v34;
  v10 = v35;

  v14 = v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_46:
    result = sub_25A967148(0, *(v14 + 16) + 1, 1, v14);
    goto LABEL_40;
  }

  result = v43;
LABEL_40:
  v37 = *(result + 16);
  v36 = *(result + 24);
  if (v37 >= v36 >> 1)
  {
    result = sub_25A967148((v36 > 1), v37 + 1, 1, result);
  }

  *(result + 16) = v37 + 1;
  v38 = (result + 32 * v37);
  v38[4] = v11;
  v38[5] = v16;
  v38[6] = v9;
  v38[7] = v10;
  return result;
}

unint64_t sub_25A985AAC(unint64_t a1, unint64_t a2)
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
    v5 = sub_25A985BFC(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_25A9985E8();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_25A998708() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_25A985BFC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_25A985C94(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_25A985D08(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_25A985C94(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_25A979AA8(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_25A985D08(unint64_t result, uint64_t a2, unint64_t a3)
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
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_25A998708();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_25A985E2C()
{
  result = *(v0 + 40);
  if (!*(v0 + 40))
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v2 = sub_25A985E2C();

      return v2;
    }
  }

  return result;
}

void sub_25A985E74(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_25A985E2C() > a1)
  {
    return;
  }

  v66 = a1;
  sub_25A9873F0();
  if (v6)
  {
    return;
  }

  v10 = MEMORY[0x277D84F90];
  v11 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v12 = sub_25A975350(a4, v11);
  v64 = v13;
  v65 = v12;

  v15 = *(v5 + 16);
  v14 = *(v5 + 24);
  v16 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v16 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
  }

  else
  {
    v17 = 0xE400000000000000;
    v15 = 1953460082;
  }

  v18 = *(a5 + 16);
  v19 = 0xE000000000000000;
  if (v18)
  {
    v63 = v17;
    v75 = 0x6172747865207C20;
    v76 = 0xEB000000007B203ALL;
    v77 = v10;
    sub_25A9375A0(0, v18, 0);
    v20 = v10;
    v21 = a5 + 64;
    v22 = -1 << *(a5 + 32);
    v23 = sub_25A998508();
    v24 = 0;
    v68 = *(a5 + 36);
    v25 = *(a5 + 32);
    v67 = v18;
    while ((v23 & 0x8000000000000000) == 0 && v23 < 1 << v25)
    {
      v28 = v23 >> 6;
      v10 = 1 << v23;
      if ((*(v21 + 8 * (v23 >> 6)) & (1 << v23)) == 0)
      {
        goto LABEL_59;
      }

      v69 = v24;
      v29 = (*(a5 + 48) + 16 * v23);
      v30 = *v29;
      v31 = v29[1];
      sub_25A87500C(*(a5 + 56) + 32 * v23, v74);
      v70[0] = v30;
      v70[1] = v31;
      sub_25A872D74(v74, &v71);

      MEMORY[0x25F850290](v30, v31);
      MEMORY[0x25F850290](61, 0xE100000000000000);
      sub_25A9987C8();
      sub_25A98788C(v70);
      v77 = v20;
      v33 = *(v20 + 16);
      v32 = *(v20 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_25A9375A0((v32 > 1), v33 + 1, 1);
        v20 = v77;
      }

      *(v20 + 16) = v33 + 1;
      v34 = v20 + 16 * v33;
      *(v34 + 32) = 0;
      *(v34 + 40) = 0xE000000000000000;
      v25 = *(a5 + 32);
      v26 = 1 << v25;
      if (v23 >= 1 << v25)
      {
        goto LABEL_60;
      }

      v21 = a5 + 64;
      v35 = *(a5 + 64 + 8 * v28);
      if ((v35 & v10) == 0)
      {
        goto LABEL_61;
      }

      if (v68 != *(a5 + 36))
      {
        goto LABEL_62;
      }

      v36 = v35 & (-2 << (v23 & 0x3F));
      if (v36)
      {
        v26 = __clz(__rbit64(v36)) | v23 & 0x7FFFFFFFFFFFFFC0;
        v27 = v67;
      }

      else
      {
        v37 = v28 << 6;
        v38 = v28 + 1;
        v39 = (a5 + 72 + 8 * v28);
        v27 = v67;
        while (v38 < (v26 + 63) >> 6)
        {
          v41 = *v39++;
          v40 = v41;
          v37 += 64;
          ++v38;
          if (v41)
          {
            v26 = __clz(__rbit64(v40)) + v37;
            break;
          }
        }
      }

      v23 = v26;
      v24 = v69 + 1;
      if (v69 + 1 == v27)
      {
        v72 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04870, &qword_25A9F8EE8);
        sub_25A8953BC();
        v42 = sub_25A997D68();
        v44 = v43;

        MEMORY[0x25F850290](v42, v44);

        MEMORY[0x25F850290](125, 0xE100000000000000);
        v45 = v75;
        v19 = v76;
        v17 = v63;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  else
  {
    v45 = 0;
LABEL_27:
    v72 = v15;
    v73 = v17;
    MEMORY[0x25F850290](8250, 0xE200000000000000);
    MEMORY[0x25F850290](v65, v64);

    MEMORY[0x25F850290](v45, v19);

    v23 = v72;
    v10 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_25A9F8D90;
    v47 = 0xE500000000000000;
    v48 = 0x4755424544;
    v72 = 91;
    v73 = 0xE100000000000000;
    v49 = 0x474E494E524157;
    v50 = 0xE500000000000000;
    v51 = 0x524F525245;
    if (v66 != 4)
    {
      v51 = 0x4C41434954495243;
      v50 = 0xE800000000000000;
    }

    if (v66 == 3)
    {
      v50 = 0xE700000000000000;
    }

    else
    {
      v49 = v51;
    }

    if (v66 != 1)
    {
      v48 = 1330007625;
      v47 = 0xE400000000000000;
    }

    if (!v66)
    {
      v48 = 0x544553544F4ELL;
      v47 = 0xE600000000000000;
    }

    if (v66 <= 2u)
    {
      v52 = v48;
    }

    else
    {
      v52 = v49;
    }

    if (v66 <= 2u)
    {
      v53 = v47;
    }

    else
    {
      v53 = v50;
    }

    MEMORY[0x25F850290](v52, v53);

    MEMORY[0x25F850290](8285, 0xE200000000000000);
    MEMORY[0x25F850290](v23, v10);
    v54 = v72;
    v55 = v73;
    *(v46 + 56) = MEMORY[0x277D837D0];
    *(v46 + 32) = v54;
    *(v46 + 40) = v55;
    sub_25A998B08();

    if (qword_27FA043C0 == -1)
    {
      goto LABEL_43;
    }
  }

  swift_once();
LABEL_43:
  v56 = sub_25A997BD8();
  __swift_project_value_buffer(v56, qword_27FA0FCE8);
  if (v66 > 2u)
  {
    if (v66 == 3 || v66 == 4)
    {
      v57 = sub_25A9983A8();
    }

    else
    {
      v57 = sub_25A9983B8();
    }
  }

  else if (v66)
  {
    if (v66 == 1)
    {
      v57 = sub_25A998398();
    }

    else
    {
      v57 = sub_25A998388();
    }
  }

  else
  {
    v57 = sub_25A9983C8();
  }

  v58 = v57;

  v59 = sub_25A997BB8();

  if (os_log_type_enabled(v59, v58))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v72 = v61;
    *v60 = 136315138;
    v62 = sub_25A98CC90(v23, v10, &v72);

    *(v60 + 4) = v62;
    _os_log_impl(&dword_25A232000, v59, v58, "%s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v61);
    MEMORY[0x25F852800](v61, -1, -1);
    MEMORY[0x25F852800](v60, -1, -1);
  }

  else
  {
  }
}

double sub_25A986598@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (!v5 && (sub_25A9989E8() & 1) == 0)
  {
    if (a1 == 0x6C6576656CLL && a2 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
    {
      v11 = *(v3 + 40);
      *(a3 + 24) = &type metadata for PyLogLevel;
      *a3 = v11;
      return result;
    }

    if (a1 == 6778732 && a2 == 0xE300000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      v12 = MEMORY[0x277D84F90];
      v13 = sub_25A92BDB4(MEMORY[0x277D84F90]);
      v14 = type metadata accessor for Function();
      v15 = swift_allocObject();
      v15[4] = v12;
      v15[5] = v12;
      v15[6] = v12;

      v15[7] = v12;

      v15[8] = v12;

      v15[9] = 0;
      v15[10] = 0;

      v15[11] = 0;
      v15[12] = 0;

      v15[13] = sub_25A92BDB4(v12);
      v15[2] = 6778732;
      v15[3] = 0xE300000000000000;
      v16 = *(v15 + 5);
      v43 = *(v15 + 4);
      v44 = v16;
      v45 = v15[12];
      v17 = *(v15 + 3);
      v41 = *(v15 + 2);
      v42 = v17;
      v15[4] = &unk_286C0BBB8;
      v15[5] = v12;
      v15[6] = v12;
      v15[7] = v12;
      v15[8] = v12;
      *(v15 + 9) = xmmword_25A9F8DA0;
      *(v15 + 11) = xmmword_25A9F8DD0;
      sub_25A892B80(&v41);
      swift_beginAccess();
      v18 = v15[13];
      v15[13] = v13;

      v19 = swift_allocObject();
      *(v19 + 16) = sub_25A9873D4;
      *(v19 + 24) = v3;
      v20 = sub_25A8F1D14;
    }

    else
    {
      if (a1 == 0x6775626564 && a2 == 0xE500000000000000 || ((v30 = sub_25A9989E8(), a1 == 1868983913) ? (v31 = a2 == 0xE400000000000000) : (v31 = 0), !v31 ? (v32 = 0) : (v32 = 1), (v30 & 1) != 0 || (v32 & 1) != 0 || (sub_25A9989E8() & 1) != 0 || a1 == 0x676E696E726177 && a2 == 0xE700000000000000 || ((v33 = sub_25A9989E8(), a1 == 0x726F727265) ? (v34 = a2 == 0xE500000000000000) : (v34 = 0), !v34 ? (v35 = 0) : (v35 = 1), (v33 & 1) != 0 || (v35 & 1) != 0 || (sub_25A9989E8() & 1) != 0)))
      {
        v21 = swift_allocObject();
        v21[2] = v3;
        v21[3] = a1;
        v21[4] = a2;

        v22 = MEMORY[0x277D84F90];
        v23 = sub_25A92BDB4(MEMORY[0x277D84F90]);
        v24 = type metadata accessor for Function();
        v25 = swift_allocObject();
        v25[4] = v22;
        v25[5] = v22;
        v25[6] = v22;

        v25[7] = v22;

        v25[8] = v22;

        v25[9] = 0;
        v25[10] = 0;

        v25[11] = 0;
        v25[12] = 0;

        v25[13] = sub_25A92BDB4(v22);
        v25[2] = a1;
        v25[3] = a2;
        v26 = *(v25 + 5);
        v43 = *(v25 + 4);
        v44 = v26;
        v45 = v25[12];
        v27 = *(v25 + 3);
        v41 = *(v25 + 2);
        v42 = v27;
        v25[4] = &unk_286C0BBF8;
        v25[5] = v22;
        v25[6] = v22;
        v25[7] = v22;
        v25[8] = v22;
        *(v25 + 9) = xmmword_25A9F8DA0;
        *(v25 + 11) = xmmword_25A9F8DD0;

        sub_25A892B80(&v41);
        swift_beginAccess();
        v28 = v25[13];
        v25[13] = v23;

        v29 = swift_allocObject();
        *(v29 + 16) = sub_25A9873B4;
        *(v29 + 24) = v21;
        v25[14] = sub_25A8F1D14;
        v25[15] = v29;
        *(a3 + 24) = v24;
        *a3 = v25;
        return result;
      }

      if ((a1 != 0x6C6576654C746573 || a2 != 0xE800000000000000) && (sub_25A9989E8() & 1) == 0)
      {
        result = 0.0;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        return result;
      }

      v36 = MEMORY[0x277D84F90];
      v37 = sub_25A92BDB4(MEMORY[0x277D84F90]);
      v14 = type metadata accessor for Function();
      v15 = swift_allocObject();
      v15[4] = v36;
      v15[5] = v36;
      v15[6] = v36;

      v15[7] = v36;

      v15[8] = v36;

      v15[9] = 0;
      v15[10] = 0;

      v15[11] = 0;
      v15[12] = 0;

      v15[13] = sub_25A92BDB4(v36);
      v15[2] = 0x6C6576654C746573;
      v15[3] = 0xE800000000000000;
      v38 = *(v15 + 5);
      v43 = *(v15 + 4);
      v44 = v38;
      v45 = v15[12];
      v39 = *(v15 + 3);
      v41 = *(v15 + 2);
      v42 = v39;
      v15[4] = &unk_286C0BC28;
      v15[5] = v36;
      v15[6] = v36;
      v15[7] = v36;
      v15[8] = v36;
      *(v15 + 9) = 0u;
      *(v15 + 11) = 0u;
      sub_25A892B80(&v41);
      swift_beginAccess();
      v40 = v15[13];
      v15[13] = v37;

      v19 = swift_allocObject();
      *(v19 + 16) = sub_25A987320;
      *(v19 + 24) = v3;
      v20 = sub_25A8F1830;
    }

    v15[14] = v20;
    v15[15] = v19;
    *(a3 + 24) = v14;
    *a3 = v15;
    return result;
  }

  v10 = *(v3 + 16);
  v9 = *(v3 + 24);
  *(a3 + 24) = MEMORY[0x277D837D0];
  *a3 = v10;
  *(a3 + 8) = v9;

  return result;
}

uint64_t sub_25A986C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_15;
  }

  v5 = sub_25A8F3600(0x6C6576656CLL, 0xE500000000000000);
  if ((v6 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v5, v18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_15;
  }

  v7 = sub_25A8F3600(6779757, 0xE300000000000000);
  if ((v8 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v7, v18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (!*(a1 + 16) || (v9 = sub_25A8F3600(1936159329, 0xE400000000000000), (v10 & 1) == 0) || (sub_25A87500C(*(a1 + 56) + 32 * v9, v18), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30), (swift_dynamicCast() & 1) == 0))
  {

LABEL_15:
    sub_25A874F54();
    swift_allocError();
    *v14 = -112;
    return swift_willThrow();
  }

  if (*(a1 + 16) && (v11 = sub_25A8F3600(0x73677261776BLL, 0xE600000000000000), (v12 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v11, v18), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA048F0, "2K\a"), (swift_dynamicCast() & 1) != 0))
  {
    v13 = v16;
  }

  else
  {
    v13 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  }

  sub_25A985E74(v16, v16, v17, v16, v13);

  if (!v2)
  {
    *(a2 + 24) = MEMORY[0x277D84F78] + 8;
  }

  return result;
}

uint64_t sub_25A986E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 16) && (v6 = sub_25A8F3600(0x6C6576656CLL, 0xE500000000000000), (v7 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v6, v11), result = swift_dynamicCast(), (result & 1) != 0))
  {
    *(a2 + 40) = v10;
    *(a3 + 24) = MEMORY[0x277D84F78] + 8;
  }

  else
  {
    sub_25A874F54();
    swift_allocError();
    *v9 = -112;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25A986F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_12;
  }

  v5 = sub_25A8F3600(6779757, 0xE300000000000000);
  if ((v6 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v5, v17);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!*(a1 + 16) || (v7 = sub_25A8F3600(1936159329, 0xE400000000000000), (v8 & 1) == 0) || (sub_25A87500C(*(a1 + 56) + 32 * v7, v17), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30), (swift_dynamicCast() & 1) == 0))
  {

LABEL_12:
    sub_25A874F54();
    swift_allocError();
    *v12 = -112;
    return swift_willThrow();
  }

  v18 = v15;
  if (*(a1 + 16) && (v9 = sub_25A8F3600(0x73677261776BLL, 0xE600000000000000), (v10 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v9, v17), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA048F0, "2K\a"), (swift_dynamicCast() & 1) != 0))
  {
    v11 = v15;
  }

  else
  {
    v11 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  }

  v14 = sub_25A94C624();
  sub_25A985E74(v14, v15, v16, v18, v11);

  if (!v2)
  {
    *(a2 + 24) = MEMORY[0x277D84F78] + 8;
  }

  return result;
}

uint64_t sub_25A987184()
{
  v1 = *(v0 + 24);

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_25A987210(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_25A9989E8();
  }
}

uint64_t sub_25A98723C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25A91CC94(&unk_286C0D7B8);
  swift_arrayDestroy();
  v5 = sub_25A9198A8(a1, a2, v4);

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = sub_25A91C184();
    swift_beginAccess();
    v8 = *(v7 + 16);

    if (*(v8 + 16))
    {
      sub_25A8F3600(a1, a2);
      v6 = v9;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

uint64_t sub_25A98733C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25A987374()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25A9873B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_25A986F54(a1, a2);
}

uint64_t sub_25A9873F0()
{
  v1 = v0;
  v2 = sub_25A8F84C4();
  v35 = MEMORY[0x277D837D0];
  sub_25A998488();
  objc_allocWithZone(MEMORY[0x277CCAC68]);
  v3 = sub_25A978FC8(0xD00000000000001ALL, 0x800000025AA69F00, 0);
  if (v0)
  {
  }

  else
  {
    v5 = v3;
    v6 = sub_25A997E18();
    v7 = sub_25A997E18();
    v38 = v6;
    v36 = v5;
    v8 = [v5 matchesInString:v7 options:0 range:{0, objc_msgSend(v6, sel_length, v35, v2, v2, v2)}];

    sub_25A9878F4();
    v9 = sub_25A998108();

    v37 = v9;
    if (v9 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25A998848())
    {
      v11 = off_279921000;
      while (!__OFSUB__(i--, 1))
      {
        if ((v37 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x25F8509C0](i, v37);
        }

        else
        {
          if ((i & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          if (i >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v13 = *(v37 + 32 + 8 * i);
        }

        v14 = v13;
        v15 = [v13 v11[392]];
        if (v15 == sub_25A997958())
        {
          v16 = 0;
          v17 = 0xE000000000000000;
        }

        else
        {
          v18 = [v14 v11[392]];
          v20 = [v38 substringWithRange_];
          v16 = sub_25A997E28();
          v17 = v21;
        }

        v22 = [v14 v11[392]];
        v24 = [v38 substringWithRange_];
        v25 = sub_25A997E28();
        v27 = v26;

        v28 = HIBYTE(v17) & 0xF;
        if ((v17 & 0x2000000000000000) == 0)
        {
          v28 = v16 & 0xFFFFFFFFFFFFLL;
        }

        if (v28)
        {
          MEMORY[0x25F850290](v16, v17);
        }

        MEMORY[0x25F850290](125, 0xE100000000000000);

        MEMORY[0x25F850290](v25, v27);

        v29 = sub_25A997E18();

        v30 = [v14 range];
        v32 = v31;
        v33 = sub_25A997E18();

        v34 = [v29 stringByReplacingCharactersInRange:v30 withString:{v32, v33}];

        sub_25A997E28();
        v11 = off_279921000;
        if (!i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

LABEL_21:

    v1 = sub_25A998488();
  }

  return v1;
}

uint64_t sub_25A98788C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04E48, &qword_25A9FB8F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25A9878F4()
{
  result = qword_27FA05888;
  if (!qword_27FA05888)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA05888);
  }

  return result;
}

uint64_t SharedMutableDict.__allocating_init(dict:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SharedMutableDict.init(dict:)(a1);
  return v2;
}

void *SharedMutableDict.init(dict:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v1[2] = sub_25A997C28();
  swift_beginAccess();
  v1[2] = a1;

  return v1;
}

double sub_25A987A34@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_25A989E30(&v9);
  v12[0] = v9;
  v12[1] = v10;
  v13 = v11;
  v4 = *(v3 + 80);
  v5 = sub_25A997CC8();
  (*(*(v5 - 8) + 16))(&v8, v12, v5);
  result = *&v9;
  v7 = v10;
  *a1 = v9;
  *(a1 + 16) = v7;
  *(a1 + 32) = v11;
  return result;
}

uint64_t sub_25A987AF8()
{
  v1 = *v0;
  swift_beginAccess();
  v4 = v0[2];
  v2 = *(v1 + 80);
  sub_25A997CE8();
  swift_getWitnessTable();
  return sub_25A9982A8();
}

uint64_t _s8Morpheus17SharedMutableDictC3lenSiyF_0()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[2];
  v3 = *(v1 + 80);

  v4 = _sSD8MorpheusE3lenSiyF_0();

  return v4;
}

uint64_t sub_25A987C24()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[2];
  v3 = *(v1 + 80);

  v4 = sub_25A997C98();

  return v4;
}

uint64_t sub_25A987D14(uint64_t (*a1)(uint64_t, void, uint64_t, void))
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v1[2];
  v5 = *(v3 + 80);

  v7 = a1(v6, MEMORY[0x277D84030], v5, MEMORY[0x277D84038]);

  return v7;
}

uint64_t sub_25A987DB8()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[2];
  v3 = *(v1 + 80);

  sub_25A997D28();
}

uint64_t sub_25A987E7C()
{
  v1 = *v0;
  swift_beginAccess();
  nullsub_1(v0[2], MEMORY[0x277D84030], *(v1 + 80), MEMORY[0x277D84038]);
  sub_25A997C78();
  swift_getWitnessTable();
  return sub_25A9980B8() & 1;
}

uint64_t sub_25A987F54()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 80);
  sub_25A997CE8();
  sub_25A997CD8();
  return swift_endAccess();
}

uint64_t sub_25A987FE0()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[2];
  v3 = *(v1 + 80);

  sub_25A997D08();
}

uint64_t sub_25A988080(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_25A989EA4(a1, a2);
  v5 = *(v4 + 80);
  v6 = sub_25A9983F8();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

void (*sub_25A988108(uint64_t *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  *(v6 + 40) = v2;
  v8 = *(*v2 + 80);
  v9 = sub_25A9983F8();
  v7[6] = v9;
  v10 = *(v9 - 8);
  v7[7] = v10;
  v11 = *(v10 + 64);
  if (v5)
  {
    v7[8] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[8] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v7[9] = v12;
  sub_25A874FB0(a2, v7);
  sub_25A987FE0();
  return sub_25A988238;
}

void sub_25A988238(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  v7 = *(*a1 + 40);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 64), v4, v5);
    v8 = v2[1];
    v10[0] = *v2;
    v10[1] = v8;
    v11 = *(v2 + 4);
    sub_25A989EA4(v3, v10);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_25A989EA4(*(*a1 + 72), v2);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t SharedMutableDict.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SharedMutableDict.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_25A9883BC@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  result = a1();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  return result;
}

void (*sub_25A9883F4(uint64_t *a1, uint64_t *a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  v10 = *(a3 + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9[4] = TupleTypeMetadata2;
  v12 = *(TupleTypeMetadata2 - 8);
  v9[5] = v12;
  if (v7)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  v14 = v13;
  v9[6] = v13;
  v15 = *a2;
  v16 = a2[1];
  v17 = *(a2 + 16);
  v18 = *v3;
  v19 = sub_25A9885DC(v9);
  v21 = v20;
  v9[7] = v19;
  sub_25A874FB0(v22, v14);
  (*(*(v10 - 8) + 16))(v14 + *(TupleTypeMetadata2 + 48), v21, v10);
  return sub_25A988564;
}

void sub_25A988564(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*sub_25A9885DC(uint64_t *a1))(void *a1)
{
  v3 = *(*v1 + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v5 = *(TupleTypeMetadata2 - 8);
  a1[1] = v5;
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v5 + 64));
  }

  a1[2] = v6;
  v7 = *(TupleTypeMetadata2 + 48);
  sub_25A987DB8();
  return sub_25A9523D8;
}

uint64_t sub_25A9886F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 80);
  type metadata accessor for SharedMutableDict();

  return sub_25A998318();
}

uint64_t sub_25A988754(uint64_t a1)
{
  v1 = *(a1 + 80);
  type metadata accessor for SharedMutableDict();

  return sub_25A998308();
}

void sub_25A9887A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 80);
  type metadata accessor for SharedMutableDict();

  JUMPOUT(0x25F850600);
}

uint64_t sub_25A988810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 80);
  type metadata accessor for SharedMutableDict();

  return sub_25A9982C8();
}

uint64_t sub_25A988884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 80);
  type metadata accessor for SharedMutableDict();

  return sub_25A9982F8();
}

void sub_25A9888E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 80);
  type metadata accessor for SharedMutableDict();

  JUMPOUT(0x25F8505E0);
}

uint64_t sub_25A98893C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 80);
  type metadata accessor for SharedMutableDict();

  return sub_25A9713D4();
}

uint64_t sub_25A988998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 80);
  type metadata accessor for SharedMutableDict();

  return sub_25A9714A4();
}

uint64_t sub_25A9889F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 16);
  v7 = *v2;
  result = sub_25A987C24();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  return result;
}

uint64_t sub_25A988A34(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *v1;
  v7 = sub_25A987C24();
  v9 = v8;
  v11 = v10;
  result = sub_25A92C648(v3, v4, v5);
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  return result;
}

double sub_25A988AB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  sub_25A989E30(&v11);
  v14[0] = v11;
  v14[1] = v12;
  v15 = v13;
  v6 = *(a1 + 80);
  v7 = sub_25A997CC8();
  (*(*(v7 - 8) + 16))(&v10, v14, v7);

  result = *&v11;
  v9 = v12;
  *a2 = v11;
  *(a2 + 16) = v9;
  *(a2 + 32) = v13;
  return result;
}

uint64_t sub_25A988B94(uint64_t a1)
{
  v2 = *(a1 + 80);
  type metadata accessor for SharedMutableDict();
  swift_getWitnessTable();
  v3 = sub_25A9714A0();
  v4 = *v1;

  return v3;
}

void sub_25A988BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 80);
  type metadata accessor for SharedMutableDict();

  JUMPOUT(0x25F8503B0);
}

uint64_t sub_25A988C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 80);
  type metadata accessor for SharedMutableDict();
  return sub_25A998098();
}

_OWORD *SharedMutableDict<A>.attribute(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 1937335659 && a2 == 0xE400000000000000;
  if (v5 || (sub_25A9989E8() & 1) != 0)
  {

    v8 = MEMORY[0x277D84F90];
    v9 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v10 = type metadata accessor for Function();
    v11 = swift_allocObject();
    v11[4] = v8;
    v11[5] = v8;
    v11[6] = v8;

    v11[7] = v8;

    v11[8] = v8;

    v11[9] = 0;
    v11[10] = 0;

    v11[11] = 0;
    v11[12] = 0;

    v11[13] = sub_25A92BDB4(v8);
    v11[2] = 0x7261656C63;
    v11[3] = 0xE500000000000000;
    v12 = *(v11 + 5);
    v37 = *(v11 + 4);
    v38 = v12;
    v39 = v11[12];
    v13 = *(v11 + 3);
    v35 = *(v11 + 2);
    v36 = v13;
    v11[4] = v8;
    v11[5] = v8;
    v11[6] = v8;
    v11[7] = v8;
    v11[8] = v8;
    *(v11 + 9) = 0u;
    *(v11 + 11) = 0u;
    sub_25A892B80(&v35);
    swift_beginAccess();
    v14 = v11[13];
    v11[13] = v9;

    result = swift_allocObject();
    *(result + 2) = sub_25A98A100;
    *(result + 3) = v3;
    v16 = sub_25A8F1D14;
LABEL_7:
    v11[14] = v16;
    v11[15] = result;
    *(a3 + 24) = v10;
    *a3 = v11;
    return result;
  }

  if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    v17 = MEMORY[0x277D84F90];
    v18 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v10 = type metadata accessor for Function();
    v11 = swift_allocObject();
    v11[4] = v17;
    v11[5] = v17;
    v11[6] = v17;

    v11[7] = v17;

    v11[8] = v17;

    v11[9] = 0;
    v11[10] = 0;

    v11[11] = 0;
    v11[12] = 0;

    v11[13] = sub_25A92BDB4(v17);
    v11[2] = 0x7261656C63;
    v11[3] = 0xE500000000000000;
    v19 = *(v11 + 5);
    v37 = *(v11 + 4);
    v38 = v19;
    v39 = v11[12];
    v20 = *(v11 + 3);
    v35 = *(v11 + 2);
    v36 = v20;
    v11[4] = v17;
    v11[5] = v17;
    v11[6] = v17;
    v11[7] = v17;
    v11[8] = v17;
    *(v11 + 9) = 0u;
    *(v11 + 11) = 0u;
    sub_25A892B80(&v35);
    swift_beginAccess();
    v21 = v11[13];
    v11[13] = v18;

    result = swift_allocObject();
    *(result + 2) = sub_25A98A0AC;
    *(result + 3) = v3;
    v16 = sub_25A8F1D14;
    goto LABEL_7;
  }

  if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    v22 = MEMORY[0x277D84F90];
    v23 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v10 = type metadata accessor for Function();
    v11 = swift_allocObject();
    v11[4] = v22;
    v11[5] = v22;
    v11[6] = v22;

    v11[7] = v22;

    v11[8] = v22;

    v11[9] = 0;
    v11[10] = 0;

    v11[11] = 0;
    v11[12] = 0;

    v11[13] = sub_25A92BDB4(v22);
    v11[2] = 0x736D657469;
    v11[3] = 0xE500000000000000;
    v24 = *(v11 + 5);
    v37 = *(v11 + 4);
    v38 = v24;
    v39 = v11[12];
    v25 = *(v11 + 3);
    v35 = *(v11 + 2);
    v36 = v25;
    v11[4] = v22;
    v11[5] = v22;
    v11[6] = v22;
    v11[7] = v22;
    v11[8] = v22;
    *(v11 + 9) = 0u;
    *(v11 + 11) = 0u;
    sub_25A892B80(&v35);
    swift_beginAccess();
    v26 = v11[13];
    v11[13] = v23;

    result = swift_allocObject();
    *(result + 2) = sub_25A98A090;
    *(result + 3) = v3;
    v16 = sub_25A8F1D14;
    goto LABEL_7;
  }

  if (a1 == 0x7261656C63 && a2 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    v27 = MEMORY[0x277D84F90];
    v28 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v10 = type metadata accessor for Function();
    v11 = swift_allocObject();
    v11[4] = v27;
    v11[5] = v27;
    v11[6] = v27;

    v11[7] = v27;

    v11[8] = v27;

    v11[9] = 0;
    v11[10] = 0;

    v11[11] = 0;
    v11[12] = 0;

    v11[13] = sub_25A92BDB4(v27);
    v11[2] = 0x7261656C63;
    v11[3] = 0xE500000000000000;
    v29 = *(v11 + 5);
    v37 = *(v11 + 4);
    v38 = v29;
    v39 = v11[12];
    v30 = *(v11 + 3);
    v35 = *(v11 + 2);
    v36 = v30;
    v11[4] = v27;
    v11[5] = v27;
    v11[6] = v27;
    v11[7] = v27;
    v11[8] = v27;
    *(v11 + 9) = 0u;
    *(v11 + 11) = 0u;
    sub_25A892B80(&v35);
    swift_beginAccess();
    v31 = v11[13];
    v11[13] = v28;

    result = swift_allocObject();
    *(result + 2) = sub_25A989FF4;
    *(result + 3) = v3;
    v16 = sub_25A8F1830;
    goto LABEL_7;
  }

  sub_25A873874(a1, a2, v3, &v42);
  if (v43)
  {
    return sub_25A872D74(&v42, a3);
  }

  v40 = a1;
  v41 = a2;

  sub_25A998578();
  swift_beginAccess();
  v32 = *(v3 + 16);
  if (*(v32 + 16))
  {

    v33 = sub_25A8F35BC(&v35);
    if (v34)
    {
      sub_25A87500C(*(v32 + 56) + 32 * v33, a3);
      sub_25A8795A0(&v35);

      goto LABEL_28;
    }
  }

  result = sub_25A8795A0(&v35);
  *a3 = 0u;
  *(a3 + 16) = 0u;
LABEL_28:
  if (v43)
  {
    return sub_25A878194(&v42, &qword_27FA04458, &unk_25A9F7FB0);
  }

  return result;
}

uint64_t sub_25A9893A0@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(uint64_t, void)@<X2>, uint64_t (*a3)(void *, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t *a4@<X4>, uint64_t *a5@<X5>, uint64_t *a6@<X8>)
{
  swift_beginAccess();
  v13 = *(a1 + 16);
  v14 = *(v13 + 16);
  if (!v14)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_5:
    result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    a6[3] = result;
    *a6 = v15;
    return result;
  }

  v18[9] = v6;
  v15 = a2(v14, 0);
  v16 = a3(v18, v15 + 32, v14, v13);

  result = sub_25A874FA8();
  if (v16 == v14)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_25A9894BC@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(*(a1 + 16) + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v30 = a2;
    v43 = MEMORY[0x277D84F90];
    sub_25A937980(0, v4, 0);
    v5 = v43;
    v6 = *(a1 + 16);
    v7 = -1 << *(v6 + 32);

    v8 = sub_25A998508();
    v9 = *(v6 + 36);

    v11 = 0;
    v31 = v4;
    v44 = v9;
    while ((v8 & 0x8000000000000000) == 0)
    {
      v14 = *(a1 + 16);
      if (v8 >= 1 << *(v14 + 32))
      {
        break;
      }

      v15 = v8 >> 6;
      if ((*(v14 + 8 * (v8 >> 6) + 64) & (1 << v8)) == 0)
      {
        goto LABEL_23;
      }

      if (v9 != *(v14 + 36))
      {
        goto LABEL_24;
      }

      v16 = a1;
      sub_25A874FB0(*(v14 + 48) + 40 * v8, v40);
      sub_25A87500C(*(v14 + 56) + 32 * v8, v42);
      v37[0] = v40[0];
      v37[1] = v40[1];
      v38 = v41;
      sub_25A872D74(v42, &v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_25A9F8D80;
      sub_25A8952F0(v37, v34, &qword_27FA04E50, &qword_25AA00630);
      *(v17 + 56) = MEMORY[0x277D84030];
      v18 = swift_allocObject();
      *(v17 + 32) = v18;
      v19 = v34[1];
      *(v18 + 16) = v34[0];
      *(v18 + 32) = v19;
      *(v18 + 48) = v35;
      sub_25A8952F0(v37, v32, &qword_27FA04E50, &qword_25AA00630);
      sub_25A872D74(&v33, (v17 + 64));
      sub_25A878194(v37, &qword_27FA04E50, &qword_25AA00630);
      sub_25A8795A0(v32);
      result = __swift_destroy_boxed_opaque_existential_0Tm(v36);
      v43 = v5;
      v21 = *(v5 + 16);
      v20 = *(v5 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_25A937980((v20 > 1), v21 + 1, 1);
        v5 = v43;
      }

      *(v5 + 16) = v21 + 1;
      *(v5 + 8 * v21 + 32) = v17;
      v22 = *(v16 + 16);
      v12 = 1 << *(v22 + 32);
      if (v8 >= v12)
      {
        goto LABEL_25;
      }

      v23 = *(v22 + 64 + 8 * v15);
      if ((v23 & (1 << v8)) == 0)
      {
        goto LABEL_26;
      }

      LODWORD(v9) = v44;
      if (v44 != *(v22 + 36))
      {
        goto LABEL_27;
      }

      a1 = v16;
      v24 = v23 & (-2 << (v8 & 0x3F));
      if (v24)
      {
        v12 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v13 = v31;
      }

      else
      {
        v25 = v15 << 6;
        v26 = v15 + 1;
        v27 = (v22 + 8 * v15 + 72);
        v13 = v31;
        while (v26 < (v12 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_25A92C648(v8, v44, 0);
            v12 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_25A92C648(v8, v44, 0);
      }

LABEL_4:
      ++v11;
      v8 = v12;
      if (v11 == v13)
      {
        a2 = v30;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04828, &qword_25A9F8EB0);
    a2[3] = result;
    *a2 = v5;
  }

  return result;
}

uint64_t SharedMutableDict<A>.has(attribute:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_25A98E844(&unk_286C0D668);
  swift_arrayDestroy();
  v6 = sub_25A9198A8(a1, a2, v5);

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    *&v15[0] = a1;
    *(&v15[0] + 1) = a2;

    sub_25A998578();
    swift_beginAccess();
    v8 = *(v2 + 16);
    if (*(v8 + 16))
    {

      v9 = sub_25A8F35BC(v16);
      if (v10)
      {
        sub_25A87500C(*(v8 + 56) + 32 * v9, v15);
        sub_25A8795A0(v16);

        sub_25A878194(v15, &qword_27FA04458, &unk_25A9F7FB0);
        v7 = 1;
        return v7 & 1;
      }
    }

    sub_25A8795A0(v16);
    memset(v15, 0, sizeof(v15));
    sub_25A878194(v15, &qword_27FA04458, &unk_25A9F7FB0);
    v11 = sub_25A91B674();
    swift_beginAccess();
    v12 = *(v11 + 16);

    if (*(v12 + 16))
    {
      sub_25A8F3600(a1, a2);
      v7 = v13;
    }

    else
    {

      v7 = 0;
    }
  }

  return v7 & 1;
}

uint64_t SharedMutableDict<A>.store(key:obj:)(uint64_t a1, uint64_t a2)
{
  sub_25A87500C(a1, v5);
  if (swift_dynamicCast())
  {
    v10[0] = v7;
    v10[1] = v8;
    v11 = v9;
    sub_25A874FB0(v10, &v7);
    sub_25A87500C(a2, v6);
    sub_25A874FB0(&v7, v5);
    sub_25A8952F0(v6, v4, &qword_27FA04458, &unk_25A9F7FB0);
    swift_beginAccess();
    sub_25A8F2E14(v4, v5);
    swift_endAccess();
    sub_25A878194(v6, &qword_27FA04458, &unk_25A9F7FB0);
    sub_25A8795A0(&v7);
    return sub_25A8795A0(v10);
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    return sub_25A878194(&v7, &qword_27FA04610, &qword_25A9FDA50);
  }
}

uint64_t SharedMutableDict<A>.description.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  v2 = sub_25A997C58();

  return v2;
}

uint64_t sub_25A989C44()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  v3 = sub_25A997C58();

  return v3;
}

uint64_t SharedMutableDict<A>.get(_:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_25A87500C(a1, v12);
  if (swift_dynamicCast())
  {
    v13[0] = v9;
    v13[1] = v10;
    v14 = v11;
    swift_beginAccess();
    v4 = *(v2 + 16);
    if (*(v4 + 16))
    {

      v5 = sub_25A8F35BC(v13);
      if (v6)
      {
        sub_25A87500C(*(v4 + 56) + 32 * v5, a2);
        sub_25A8795A0(v13);
      }
    }

    result = sub_25A8795A0(v13);
    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    sub_25A878194(&v9, &qword_27FA04610, &qword_25A9FDA50);
    sub_25A874F54();
    swift_allocError();
    *v8 = 102;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25A989E30@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = -1 << *(v4 + 32);
  v6 = ~v5;
  *a1 = v4;
  v9 = *(v4 + 64);
  v7 = v4 + 64;
  v8 = v9;
  v10 = -v5;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  a1[1] = v7;
  a1[2] = v6;
  a1[3] = 0;
  a1[4] = v11 & v8;
  return result;
}

uint64_t sub_25A989EA4(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v6 = sub_25A9983F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12[-v9];
  sub_25A874FB0(a2, v13);
  (*(v7 + 16))(v10, a1, v6);
  swift_beginAccess();
  sub_25A997CE8();
  sub_25A997D18();
  swift_endAccess();
  return sub_25A8795A0(a2);
}

uint64_t sub_25A989FF4@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = MEMORY[0x277D84F78] + 8;
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = MEMORY[0x277D84F98];
}

uint64_t sub_25A98A058()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25A98A18C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  *a2 = sub_25A9533D4();
}

uint64_t sub_25A98A1C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_25A951E88(v4);
}

uint64_t sub_25A98A234(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_25A874FB0(a3, v7);
  v5 = *a2;
  return sub_25A989EA4(a1, v7);
}

uint64_t sub_25A98A510()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25A98A55C(uint64_t result, uint64_t a2, uint64_t *a3, void *a4)
{
  v4 = *(result + 16);
  if (v4)
  {
    v38 = result + 32;
    v6 = *(a2 + 16);
    do
    {
      if (!v6)
      {
        return result;
      }

      --v4;
      v7 = (v38 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v48[0] = *v7;
      v48[1] = v8;
      sub_25A8952F0(a2 + 32 * v6, &v49, &qword_27FA04458, &unk_25A9F7FB0);
      v10 = *a3;
      if (*(*a3 + 16))
      {
        v11 = *(v10 + 40);
        sub_25A998B18();

        sub_25A997D58();
        v12 = sub_25A998B38();
        v13 = -1 << *(v10 + 32);
        v14 = v12 & ~v13;
        if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
        {
          v15 = ~v13;
          while (1)
          {
            v16 = (*(v10 + 48) + 16 * v14);
            v17 = *v16 == v9 && v16[1] == v8;
            if (v17 || (sub_25A9989E8() & 1) != 0)
            {
              break;
            }

            v14 = (v14 + 1) & v15;
            if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          goto LABEL_5;
        }

LABEL_16:
      }

      else
      {
      }

      sub_25A8952F0(v48, v46, &qword_27FA053F0, &qword_25A9FDCA8);
      v19 = v46[0];
      v18 = v46[1];
      sub_25A8952F0(v48, v43, &qword_27FA053F0, &qword_25A9FDCA8);

      v41 = v44;
      v42 = v45;
      v20 = *a4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = *a4;
      v22 = v50;
      v24 = sub_25A8F3600(v19, v18);
      v25 = v22[2];
      v26 = (v23 & 1) == 0;
      v27 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        result = sub_25A998AA8();
        __break(1u);
        return result;
      }

      v28 = v23;
      if (v22[3] >= v27)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v31 = v50;
          if ((v23 & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else
        {
          sub_25A969100();
          v31 = v50;
          if ((v28 & 1) == 0)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
        sub_25A967F40(v27, isUniquelyReferenced_nonNull_native);
        v29 = sub_25A8F3600(v19, v18);
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_33;
        }

        v24 = v29;
        v31 = v50;
        if ((v28 & 1) == 0)
        {
LABEL_25:
          v31[(v24 >> 6) + 8] |= 1 << v24;
          v32 = (v31[6] + 16 * v24);
          *v32 = v19;
          v32[1] = v18;
          v33 = (v31[7] + 32 * v24);
          v34 = v42;
          *v33 = v41;
          v33[1] = v34;
          v35 = v31[2];
          v36 = __OFADD__(v35, 1);
          v37 = v35 + 1;
          if (v36)
          {
            goto LABEL_32;
          }

          v31[2] = v37;
          goto LABEL_4;
        }
      }

      sub_25A96B8F4(&v41, v31[7] + 32 * v24);

LABEL_4:
      *a4 = v31;
      sub_25A878194(&v47, &qword_27FA04458, &unk_25A9F7FB0);
LABEL_5:
      --v6;
      result = sub_25A878194(v48, &qword_27FA053F0, &qword_25A9FDCA8);
    }

    while (v4);
  }

  return result;
}

uint64_t sub_25A98A890(uint64_t result, uint64_t a2, uint64_t *a3, void *a4)
{
  v39 = *(result + 16);
  if (v39)
  {
    v5 = 0;
    v38 = result + 32;
    do
    {
      v6 = *(a2 + 16);
      if (v5 == v6)
      {
        return result;
      }

      if (v5 >= v6)
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        result = sub_25A998AA8();
        __break(1u);
        return result;
      }

      v7 = (v38 + 16 * v5);
      v9 = *v7;
      v8 = v7[1];
      v49[0] = *v7;
      v49[1] = v8;
      sub_25A8952F0(a2 + 32 + 32 * v5, &v50, &qword_27FA04458, &unk_25A9F7FB0);
      v10 = *a3;
      if (*(*a3 + 16))
      {
        v11 = *(v10 + 40);
        sub_25A998B18();

        sub_25A997D58();
        v12 = sub_25A998B38();
        v13 = -1 << *(v10 + 32);
        v14 = v12 & ~v13;
        if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
        {
          v15 = ~v13;
          while (1)
          {
            v16 = (*(v10 + 48) + 16 * v14);
            v17 = *v16 == v9 && v16[1] == v8;
            if (v17 || (sub_25A9989E8() & 1) != 0)
            {
              break;
            }

            v14 = (v14 + 1) & v15;
            if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          goto LABEL_5;
        }

LABEL_17:
      }

      else
      {
      }

      sub_25A8952F0(v49, v47, &qword_27FA053F0, &qword_25A9FDCA8);
      v19 = v47[0];
      v18 = v47[1];
      sub_25A8952F0(v49, v44, &qword_27FA053F0, &qword_25A9FDCA8);

      v42 = v45;
      v43 = v46;
      v20 = *a4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = *a4;
      v22 = v51;
      v24 = sub_25A8F3600(v19, v18);
      v25 = v22[2];
      v26 = (v23 & 1) == 0;
      v27 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        goto LABEL_33;
      }

      v28 = v23;
      if (v22[3] >= v27)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v31 = v51;
          if ((v23 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          sub_25A969100();
          v31 = v51;
          if ((v28 & 1) == 0)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        sub_25A967F40(v27, isUniquelyReferenced_nonNull_native);
        v29 = sub_25A8F3600(v19, v18);
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_35;
        }

        v24 = v29;
        v31 = v51;
        if ((v28 & 1) == 0)
        {
LABEL_26:
          v31[(v24 >> 6) + 8] |= 1 << v24;
          v32 = (v31[6] + 16 * v24);
          *v32 = v19;
          v32[1] = v18;
          v33 = (v31[7] + 32 * v24);
          v34 = v43;
          *v33 = v42;
          v33[1] = v34;
          v35 = v31[2];
          v36 = __OFADD__(v35, 1);
          v37 = v35 + 1;
          if (v36)
          {
            goto LABEL_34;
          }

          v31[2] = v37;
          goto LABEL_4;
        }
      }

      sub_25A96B8F4(&v42, v31[7] + 32 * v24);

LABEL_4:
      *a4 = v31;
      sub_25A878194(&v48, &qword_27FA04458, &unk_25A9F7FB0);
LABEL_5:
      ++v5;
      result = sub_25A878194(v49, &qword_27FA053F0, &qword_25A9FDCA8);
    }

    while (v5 != v39);
  }

  return result;
}

void *Function.__allocating_init(name:arguments:attrs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D84F90];
  v12[4] = MEMORY[0x277D84F90];
  v12[5] = v13;
  v12[6] = v13;
  v12[7] = v13;

  v12[8] = v13;

  v12[9] = 0;
  v12[10] = 0;

  v12[11] = 0;
  v12[12] = 0;

  v12[13] = sub_25A92BDB4(v13);
  v12[2] = a1;
  v12[3] = a2;
  v14 = *(v12 + 5);
  v22[2] = *(v12 + 4);
  v22[3] = v14;
  v23 = v12[12];
  v15 = *(v12 + 3);
  v22[0] = *(v12 + 2);
  v22[1] = v15;
  v16 = *(a3 + 16);
  *(v12 + 2) = *a3;
  *(v12 + 3) = v16;
  v17 = *(a3 + 48);
  *(v12 + 4) = *(a3 + 32);
  *(v12 + 5) = v17;
  v12[12] = *(a3 + 64);
  sub_25A892B80(v22);
  swift_beginAccess();
  v18 = v12[13];
  v12[13] = a4;

  if (a5)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = a6;
    v12[14] = sub_25A98E714;
    v12[15] = v19;
  }

  else
  {
    v20 = swift_allocObject();
    swift_weakInit();
    v12[14] = sub_25A8DF24C;
    v12[15] = v20;
    swift_beginAccess();
    swift_weakAssign();
  }

  return v12;
}

uint64_t sub_25A98ADA0(uint64_t a1)
{
  result = MEMORY[0x25F850560](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_25A98D1D8(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t Function.init(name:arguments:attrs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = MEMORY[0x277D84F90];
  *(v6 + 56) = MEMORY[0x277D84F90];
  *(v6 + 64) = v13;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 32) = v13;
  *(v6 + 40) = v13;
  *(v6 + 48) = v13;

  v14 = *(v6 + 56);
  *(v6 + 56) = v13;

  v15 = *(v6 + 64);
  *(v6 + 64) = v13;

  v16 = *(v6 + 80);
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;

  v17 = *(v6 + 96);
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;

  *(v6 + 104) = sub_25A92BDB4(v13);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v18 = *(v6 + 80);
  v26[2] = *(v6 + 64);
  v26[3] = v18;
  v27 = *(v6 + 96);
  v19 = *(v6 + 48);
  v26[0] = *(v6 + 32);
  v26[1] = v19;
  v20 = *(a3 + 16);
  *(v6 + 32) = *a3;
  *(v6 + 48) = v20;
  v21 = *(a3 + 48);
  *(v6 + 64) = *(a3 + 32);
  *(v6 + 80) = v21;
  *(v6 + 96) = *(a3 + 64);
  sub_25A892B80(v26);
  swift_beginAccess();
  v22 = *(v6 + 104);
  *(v6 + 104) = a4;

  if (a5)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = a5;
    *(v23 + 24) = a6;
    *(v6 + 112) = sub_25A98F0D0;
    *(v6 + 120) = v23;
  }

  else
  {
    v24 = swift_allocObject();
    swift_weakInit();
    *(v6 + 112) = sub_25A9514C8;
    *(v6 + 120) = v24;
    swift_beginAccess();
    swift_weakAssign();
  }

  return v6;
}

void *Function.deinit()
{
  v1 = v0[3];

  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[10];
  v8 = v0[12];

  v9 = v0[13];

  v10 = v0[15];

  return v0;
}

uint64_t sub_25A98B0FC@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  v6 = *(v4 + 16);

  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = 0;
    v9 = v5 + 32;
    v10 = (v4 + 40);
    v214 = v4;
    v215 = v5;
    while (v8 < *(v4 + 16))
    {
      v11 = *(v5 + 16);
      if (v8 == v11)
      {
        goto LABEL_14;
      }

      if (v8 >= v11)
      {
        goto LABEL_147;
      }

      v217 = v7;
      v12 = *v10;
      *&v224 = *(v10 - 1);
      *(&v224 + 1) = v12;
      sub_25A8952F0(v9, &v225, &qword_27FA04458, &unk_25A9F7FB0);
      v230 = v224;
      v231 = v225;
      v232 = v226;
      sub_25A8952F0(&v230, &v224, &qword_27FA053F0, &qword_25A9FDCA8);

      *(&v220 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
      v13 = swift_allocObject();
      *&v219 = v13;
      v14 = v226;
      *(v13 + 16) = v225;
      *(v13 + 32) = v14;
      LOBYTE(v12) = static MorpheusUtils.isNil(_:)(&v219);
      __swift_destroy_boxed_opaque_existential_0Tm(&v219);
      if (v12)
      {
        v224 = v230;
        v225 = v231;
        v226 = v232;
        v7 = v217;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v222 = v217;
        v4 = v214;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25A937840(0, v217[2] + 1, 1);
          v7 = v222;
        }

        v17 = v7[2];
        v16 = v7[3];
        if (v17 >= v16 >> 1)
        {
          sub_25A937840((v16 > 1), v17 + 1, 1);
          v7 = v222;
        }

        v7[2] = v17 + 1;
        v18 = &v7[6 * v17];
        v19 = v224;
        v20 = v226;
        v18[3] = v225;
        v18[4] = v20;
        v18[2] = v19;
      }

      else
      {
        sub_25A878194(&v230, &qword_27FA053F0, &qword_25A9FDCA8);
        v4 = v214;
        v7 = v217;
      }

      v5 = v215;
      ++v8;
      v10 += 2;
      v9 += 32;
      if (v6 == v8)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

LABEL_14:

  v21 = v7[2];
  if (v21)
  {
    *&v219 = MEMORY[0x277D84F90];
    sub_25A9375A0(0, v21, 0);
    v22 = (v7 + 4);
    v4 = v219;
    do
    {
      sub_25A8952F0(v22, &v230, &qword_27FA053F0, &qword_25A9FDCA8);
      v224 = v230;
      v225 = v231;
      v226 = v232;
      v23 = v230;
      sub_25A878194(&v225, &qword_27FA04458, &unk_25A9F7FB0);
      *&v219 = v4;
      v25 = *(v4 + 16);
      v24 = *(v4 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_25A9375A0((v24 > 1), v25 + 1, 1);
        v4 = v219;
      }

      *(v4 + 16) = v25 + 1;
      *(v4 + 16 * v25 + 32) = v23;
      v22 += 48;
      --v21;
    }

    while (v21);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v27 = sub_25A98ADA0(v26);

  v29 = sub_25A98E844(v28);

  v30 = sub_25A98E364(v27, v29);

  if (v30)
  {

    v237[0] = sub_25A98ADA0(v31);
    v32 = sub_25A98E8DC(MEMORY[0x277D84F90]);
    v33 = v213[5];
    v34 = *(v33 + 16);

    if (v34)
    {
      v4 = 0;
      v35 = (a1 + 32);
      v36 = (v33 + 40);
      while (v4 < *(v33 + 16))
      {
        v37 = *(a1 + 2);
        if (v4 == v37)
        {
          goto LABEL_28;
        }

        if (v4 >= v37)
        {
          goto LABEL_150;
        }

        v39 = *v36;
        ++v4;
        *&v230 = *(v36 - 1);
        v38 = v230;
        *(&v230 + 1) = v39;
        sub_25A87500C(v35, &v231);
        sub_25A87500C(&v231, &v224);
        v219 = v224;
        v220 = v225;
        swift_bridgeObjectRetain_n();
        v40 = swift_isUniquelyReferenced_nonNull_native();
        v222 = v32;
        sub_25A96A6E4(&v219, v38, v39, v40);

        v32 = v222;

        sub_25A98D1D8(&v224, v38, v39);

        sub_25A878194(&v230, &qword_27FA048E8, &unk_25A9FD760);
        v36 += 2;
        v35 += 32;
        if (v34 == v4)
        {
          goto LABEL_28;
        }
      }

LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

LABEL_28:
    v236 = v32;

    v41 = a2;
    v42 = *(a1 + 2);
    if (v42 >= *(v213[5] + 16))
    {
      v43 = *(v213[5] + 16);
    }

    else
    {
      v43 = *(a1 + 2);
    }

    if (v43)
    {
      v44 = v42 - v43;
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v238 = a1;
      if (!v45 || v44 > *(a1 + 3) >> 1)
      {
        if (v42 <= v44)
        {
          v46 = v42 - v43;
        }

        else
        {
          v46 = v42;
        }

        a1 = sub_25A967488(v45, v46, 1, a1);
        v238 = a1;
      }

      sub_25A96B770(0, v43, 0);
    }

    v47 = v213[6];
    *&v230 = v213[4];

    sub_25A933114(v48);
    v49 = v230;
    v50 = *(v230 + 16);
    if (v50)
    {
      v4 = 0;
      v51 = (v230 + 40);
      v218 = *(v230 + 16);
      while (1)
      {
        if (v4 >= *(v49 + 16))
        {
          goto LABEL_148;
        }

        v53 = *(v51 - 1);
        v52 = *v51;
        v54 = v41[2];

        if (v54)
        {
          v55 = sub_25A8F3600(v53, v52);
          if (v56)
          {
            break;
          }
        }

LABEL_57:
        v76 = sub_25A8F3600(v53, v52);
        v78 = v77;

        if (v78)
        {
          v79 = swift_isUniquelyReferenced_nonNull_native();
          *&v224 = v41;
          if (!v79)
          {
            sub_25A968F5C();
            v41 = v224;
          }

          v80 = *(v41[6] + 16 * v76 + 8);

          sub_25A872D74((v41[7] + 32 * v76), &v230);
          sub_25A969E28(v76, v41);
        }

        else
        {
          v230 = 0u;
          v231 = 0u;
        }

        ++v4;
        sub_25A878194(&v230, &qword_27FA04458, &unk_25A9F7FB0);
        v51 += 2;
        if (v50 == v4)
        {
          goto LABEL_64;
        }
      }

      v57 = v49;
      v58 = v41;
      sub_25A87500C(v41[7] + 32 * v55, &v230);
      sub_25A87500C(&v230, &v224);
      v219 = v224;
      v220 = v225;
      v59 = v236;
      v60 = swift_isUniquelyReferenced_nonNull_native();
      v222 = v59;
      v61 = sub_25A8F3600(v53, v52);
      v63 = v59[2];
      v64 = (v62 & 1) == 0;
      v65 = __OFADD__(v63, v64);
      v66 = v63 + v64;
      if (v65)
      {
        goto LABEL_153;
      }

      v67 = v62;
      if (v59[3] >= v66)
      {
        if ((v60 & 1) == 0)
        {
          v70 = v61;
          sub_25A969100();
          v61 = v70;
          v69 = v222;
          if (v67)
          {
            goto LABEL_52;
          }

          goto LABEL_54;
        }
      }

      else
      {
        sub_25A967F40(v66, v60);
        v61 = sub_25A8F3600(v53, v52);
        if ((v67 & 1) != (v68 & 1))
        {
          result = sub_25A998AA8();
          __break(1u);
          return result;
        }
      }

      v69 = v222;
      if (v67)
      {
LABEL_52:
        sub_25A96B8F4(&v219, v69[7] + 32 * v61);
        __swift_destroy_boxed_opaque_existential_0Tm(&v230);
LABEL_56:
        v236 = v69;
        v41 = v58;
        v49 = v57;
        v32 = v69;
        v50 = v218;
        goto LABEL_57;
      }

LABEL_54:
      v69[(v61 >> 6) + 8] |= 1 << v61;
      v71 = (v69[6] + 16 * v61);
      *v71 = v53;
      v71[1] = v52;
      v72 = v220;
      v73 = (v69[7] + 32 * v61);
      *v73 = v219;
      v73[1] = v72;

      __swift_destroy_boxed_opaque_existential_0Tm(&v230);
      v74 = v69[2];
      v65 = __OFADD__(v74, 1);
      v75 = v74 + 1;
      if (v65)
      {
        goto LABEL_154;
      }

      v69[2] = v75;
      goto LABEL_56;
    }

LABEL_64:

    if (v41[2])
    {
      v96 = v213;
      v97 = v213[12];
      if (!v97)
      {

        if (qword_27FA043C0 != -1)
        {
          swift_once();
        }

        v130 = sub_25A997BD8();
        __swift_project_value_buffer(v130, qword_27FA0FCE8);

        v131 = sub_25A997BB8();
        v132 = sub_25A9983A8();

        if (os_log_type_enabled(v131, v132))
        {
          v133 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          *&v224 = v134;
          *v133 = 136315138;
          swift_beginAccess();
          v135 = v213[2];
          v136 = v213[3];

          v137 = sub_25A98CC90(v135, v136, &v224);

          *(v133 + 4) = v137;
          _os_log_impl(&dword_25A232000, v131, v132, "Function> More keyword args passed for function %s", v133, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v134);
          MEMORY[0x25F852800](v134, -1, -1);
          MEMORY[0x25F852800](v133, -1, -1);
        }

        sub_25A874F54();
        swift_allocError();
        *v138 = 3;
        swift_willThrow();

        goto LABEL_144;
      }

      v98 = v213[11];
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA048F0, "2K\a");
      *&v230 = v41;
      *(&v231 + 1) = v99;

      v100 = v236;
      v101 = swift_isUniquelyReferenced_nonNull_native();
      *&v224 = v100;
      sub_25A96A6E4(&v230, v98, v97, v101);

      v32 = v224;
      v236 = v224;
    }

    else
    {
      v96 = v213;
    }

    v103 = v96[4];
    v105 = (v103 + 16);
    v104 = *(v103 + 2);

    if (v104)
    {
      v106 = 0;
      v107 = 0;
      while (1)
      {
        if (*(v32 + 16))
        {
          v109 = *&v103[v106 + 32];
          v108 = *&v103[v106 + 40];

          sub_25A8F3600(v109, v108);
          v111 = v110;

          if (v111)
          {
            break;
          }
        }

        ++v107;
        v106 += 16;
        if (v104 == v107)
        {
          goto LABEL_91;
        }
      }

      v4 = v107 + 1;
      if (__OFADD__(v107, 1))
      {
        __break(1u);
        goto LABEL_166;
      }

      v112 = *v105;
      while (v4 != v112)
      {
        if (v4 >= v112)
        {
          goto LABEL_155;
        }

        v113 = &v103[v106];
        if (!*(v32 + 16))
        {
          goto LABEL_83;
        }

        v115 = *(v113 + 6);
        v114 = *(v113 + 7);

        sub_25A8F3600(v115, v114);
        v117 = v116;

        if ((v117 & 1) == 0)
        {
LABEL_83:
          if (v4 != v107)
          {
            if (v107 < 0)
            {
              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
              goto LABEL_161;
            }

            if (v107 >= *v105)
            {
              goto LABEL_158;
            }

            if (v4 >= *v105)
            {
              goto LABEL_159;
            }

            v118 = &v103[16 * v107 + 32];
            v120 = *v118;
            v119 = *(v118 + 1);
            v121 = v103;
            v123 = *(v113 + 6);
            v122 = *(v113 + 7);

            v124 = v121;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v124 = sub_25A8F7A28(v121);
            }

            v125 = &v124[16 * v107];
            v126 = *(v125 + 5);
            *(v125 + 4) = v123;
            *(v125 + 5) = v122;
            v103 = v124;

            if (v4 >= *(v124 + 2))
            {
              goto LABEL_160;
            }

            v127 = &v124[v106];
            v128 = *&v124[v106 + 56];
            *(v127 + 6) = v120;
            *(v127 + 7) = v119;
          }

          ++v107;
        }

        ++v4;
        v105 = (v103 + 16);
        v112 = *(v103 + 2);
        v106 += 16;
      }

      if (v4 < v107)
      {
        goto LABEL_162;
      }

      v129 = a1;
      if (v107 < 0)
      {
LABEL_163:
        __break(1u);
        goto LABEL_164;
      }
    }

    else
    {
LABEL_91:
      v4 = *v105;
      v107 = *v105;
      v129 = a1;
    }

    if (!__OFADD__(v4, v107 - v4))
    {
      v139 = swift_isUniquelyReferenced_nonNull_native();
      v235 = v103;
      if (!v139 || v107 > *(v103 + 3) >> 1)
      {
        if (v4 <= v107)
        {
          v140 = v107;
        }

        else
        {
          v140 = v4;
        }

        v103 = sub_25A967378(v139, v140, 1, v103);
        v235 = v103;
      }

      sub_25A96B834(v107, v4, 0);
      v141 = *(v103 + 2);

      if (v141)
      {
        v142 = 0;
        v143 = (v129 + 32);
        v4 = v103;
        v144 = (v103 + 40);
        while (v142 < *(v4 + 16))
        {
          v145 = *(v129 + 2);
          if (v142 == v145)
          {
            goto LABEL_114;
          }

          if (v142 >= v145)
          {
            goto LABEL_152;
          }

          v147 = *v144;
          ++v142;
          *&v230 = *(v144 - 1);
          v146 = v230;
          *(&v230 + 1) = v147;
          sub_25A87500C(v143, &v231);
          sub_25A87500C(&v231, &v224);
          v219 = v224;
          v220 = v225;
          swift_bridgeObjectRetain_n();
          v148 = v236;
          v149 = swift_isUniquelyReferenced_nonNull_native();
          v222 = v148;
          sub_25A96A6E4(&v219, v146, v147, v149);

          v236 = v222;

          v150 = v146;
          v129 = a1;
          sub_25A98D1D8(&v224, v150, v147);

          sub_25A878194(&v230, &qword_27FA048E8, &unk_25A9FD760);
          v144 += 2;
          v143 += 32;
          if (v141 == v142)
          {
            goto LABEL_114;
          }
        }

LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
        goto LABEL_156;
      }

      v4 = v103;
LABEL_114:

      v151 = *(v129 + 2);
      if (v151 >= *(v4 + 16))
      {
        v152 = *(v4 + 16);
      }

      else
      {
        v152 = *(v129 + 2);
      }

      v4 = v213;
      if (v152)
      {
        v153 = v151 - v152;
        v154 = swift_isUniquelyReferenced_nonNull_native();
        v238 = v129;
        if (!v154 || v153 > *(v129 + 3) >> 1)
        {
          if (v151 <= v153)
          {
            v155 = v151 - v152;
          }

          else
          {
            v155 = v151;
          }

          v129 = sub_25A967488(v154, v155, 1, v129);
          v238 = v129;
        }

        sub_25A96B770(0, v152, 0);
        v151 = *(v129 + 2);
      }

      v156 = v213[10];
      if (!v151)
      {
        if (!v156)
        {
          goto LABEL_131;
        }

        v157 = v213[9];
        v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
        *&v230 = MEMORY[0x277D84F90];
        *(&v231 + 1) = v160;
LABEL_130:

        v161 = v236;
        v162 = swift_isUniquelyReferenced_nonNull_native();
        *&v224 = v161;
        sub_25A96A6E4(&v230, v157, v156, v162);

        v236 = v224;
LABEL_131:
        v163 = v213[4];
        *&v224 = v213[5];

        sub_25A933114(v163);
        v164 = v224;
        v165 = v213[8];

        sub_25A98A55C(v164, v165, v237, &v236);

        v166 = v213[6];
        v167 = v213[7];

        sub_25A98A890(v166, v167, v237, &v236);

        v168 = v236;

        v170 = sub_25A98ADA0(v169);
        v171 = *(v213 + 3);
        v230 = *(v213 + 2);
        v231 = v171;
        v172 = *(v213 + 5);
        v232 = *(v213 + 4);
        v233 = v172;
        v234 = v213[12];
        v173 = v230;
        v174 = v231;
        v229 = *(&v230 + 1);
        sub_25A93E3F4(&v230, &v224);

        sub_25A933114(v173);
        sub_25A933114(v174);
        sub_25A892B80(&v230);
        v175 = sub_25A98E844(v229);

        LOBYTE(v166) = sub_25A98E364(v170, v175);

        if (v166)
        {
          v177 = v213[14];
          v176 = v213[15];

          v177(&v224, v168);
          if (v211)
          {

            swift_bridgeObjectRelease_n();
          }

          sub_25A92DE50(&v224, a3);
          sub_25A878194(&v224, &qword_27FA04458, &unk_25A9F7FB0);
          goto LABEL_143;
        }

        if (qword_27FA043C0 == -1)
        {
LABEL_135:
          v178 = sub_25A997BD8();
          __swift_project_value_buffer(v178, qword_27FA0FCE8);

          v179 = sub_25A997BB8();
          v180 = sub_25A9983A8();

          if (os_log_type_enabled(v179, v180))
          {
            v181 = swift_slowAlloc();
            v182 = swift_slowAlloc();
            v223 = v182;
            *v181 = 136315650;
            swift_beginAccess();
            v184 = v213[2];
            v183 = v213[3];

            v185 = sub_25A98CC90(v184, v183, &v223);

            *(v181 + 4) = v185;
            *(v181 + 12) = 2080;
            v186 = *(v213 + 3);
            v224 = *(v213 + 2);
            v225 = v186;
            v187 = *(v213 + 5);
            v226 = *(v213 + 4);
            v227 = v187;
            v228 = v213[12];
            v188 = v224;
            v189 = v225;
            v221 = *(&v224 + 1);
            sub_25A93E3F4(&v224, &v219);

            sub_25A933114(v188);
            sub_25A933114(v189);
            sub_25A892B80(&v224);
            v190 = MEMORY[0x25F850440](v221, MEMORY[0x277D837D0]);
            v192 = v191;

            v193 = sub_25A98CC90(v190, v192, &v223);

            *(v181 + 14) = v193;
            *(v181 + 22) = 2080;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
            v194 = sub_25A997C68();
            v196 = v195;

            v197 = sub_25A98CC90(v194, v196, &v223);

            *(v181 + 24) = v197;
            _os_log_impl(&dword_25A232000, v179, v180, "Function> Missing required args for function %s, required: %s, provided: %s", v181, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x25F852800](v182, -1, -1);
            MEMORY[0x25F852800](v181, -1, -1);
          }

          sub_25A874F54();
          swift_allocError();
          *v198 = 4;
          swift_willThrow();
LABEL_143:

LABEL_144:
        }

LABEL_164:
        swift_once();
        goto LABEL_135;
      }

      if (v156)
      {
        v157 = v213[9];
        v158 = v213[10];
        swift_bridgeObjectRetain_n();
        sub_25A98D1D8(&v230, v157, v156);

        v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
        *&v230 = v129;
        *(&v231 + 1) = v159;
        goto LABEL_130;
      }

      if (qword_27FA043C0 == -1)
      {
LABEL_139:
        v199 = sub_25A997BD8();
        __swift_project_value_buffer(v199, qword_27FA0FCE8);

        v200 = sub_25A997BB8();
        v201 = sub_25A9983A8();

        if (os_log_type_enabled(v200, v201))
        {
          v202 = swift_slowAlloc();
          v203 = v4;
          v204 = swift_slowAlloc();
          *&v224 = v204;
          *v202 = 136315138;
          swift_beginAccess();
          v205 = *(v203 + 16);
          v206 = *(v203 + 24);

          v207 = sub_25A98CC90(v205, v206, &v224);

          *(v202 + 4) = v207;
          _os_log_impl(&dword_25A232000, v200, v201, "Function> More positional args passed for function %s", v202, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v204);
          MEMORY[0x25F852800](v204, -1, -1);
          MEMORY[0x25F852800](v202, -1, -1);
        }

        sub_25A874F54();
        swift_allocError();
        *v208 = 2;
        swift_willThrow();

        goto LABEL_144;
      }

LABEL_166:
      swift_once();
      goto LABEL_139;
    }

LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  if (qword_27FA043C0 != -1)
  {
LABEL_156:
    swift_once();
  }

  v81 = sub_25A997BD8();
  __swift_project_value_buffer(v81, qword_27FA0FCE8);

  v82 = sub_25A997BB8();
  v83 = sub_25A9983A8();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *&v224 = v85;
    *v84 = 136315650;
    swift_beginAccess();
    v86 = v213[2];
    v87 = v213[3];

    v88 = sub_25A98CC90(v86, v87, &v224);

    *(v84 + 4) = v88;
    *(v84 + 12) = 2080;
    v89 = MEMORY[0x25F850440](v4, MEMORY[0x277D837D0]);
    v91 = v90;

    v92 = sub_25A98CC90(v89, v91, &v224);

    *(v84 + 14) = v92;
    *(v84 + 22) = 2080;
    v93 = sub_25A997C68();
    v95 = sub_25A98CC90(v93, v94, &v224);

    *(v84 + 24) = v95;
    _os_log_impl(&dword_25A232000, v82, v83, "Function> Missing required keyword args for function %s, required: %s, provided: %s", v84, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F852800](v85, -1, -1);
    MEMORY[0x25F852800](v84, -1, -1);
  }

  else
  {
  }

  sub_25A874F54();
  swift_allocError();
  *v102 = 1;
  return swift_willThrow();
}

double sub_25A98C7F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  swift_beginAccess();
  v7 = *(v3 + 104);
  if (*(v7 + 16))
  {

    v8 = sub_25A8F3600(a1, a2);
    if (v9)
    {
      sub_25A87500C(*(v7 + 56) + 32 * v8, a3);

      return result;
    }
  }

  result = 0.0;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

uint64_t sub_25A98C894(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 104);
  if (!*(v5 + 16))
  {
    goto LABEL_5;
  }

  v6 = sub_25A8F3600(a1, a2);
  if ((v7 & 1) == 0)
  {

LABEL_5:
    v8 = 0;
    memset(v10, 0, sizeof(v10));
    goto LABEL_6;
  }

  sub_25A87500C(*(v5 + 56) + 32 * v6, v10);

  v8 = 1;
LABEL_6:
  sub_25A878194(v10, &qword_27FA04458, &unk_25A9F7FB0);
  return v8;
}

uint64_t sub_25A98C950(uint64_t a1, uint64_t a2)
{
  sub_25A87500C(a1, v6);
  result = swift_dynamicCast();
  if (result)
  {
    sub_25A87500C(a2, v6);
    swift_beginAccess();
    sub_25A8F2ED0(v6, v4, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_25A98C9F0(uint64_t a1, void (*a2)(void))
{
  sub_25A936F00(a1);
  a2();
}

uint64_t sub_25A98CA54@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  sub_25A92E494(Strong, a1);
}

uint64_t Function.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[10];
  v8 = v0[12];

  v9 = v0[13];

  v10 = v0[15];

  return swift_deallocClassInstance();
}

uint64_t sub_25A98CC34(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_25A98CC90(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_25A98CC90(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25A98CD5C(v11, 0, 0, 1, a1, a2);
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
    sub_25A87500C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_25A98CD5C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25A98CE68(a5, a6);
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
    result = sub_25A998708();
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

uint64_t sub_25A98CE68(uint64_t a1, unint64_t a2)
{
  v4 = sub_25A98CEB4(a1, a2);
  sub_25A98CFE4(&unk_286C0A510);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25A98CEB4(uint64_t a1, unint64_t a2)
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

  v6 = sub_25A9790B0(v5, 0);
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

  result = sub_25A998708();
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
        v10 = sub_25A997FA8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25A9790B0(v10, 0);
        result = sub_25A9985B8();
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

uint64_t sub_25A98CFE4(uint64_t result)
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

  result = sub_25A98D0D0(result, v12, 1, v3);
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

char *sub_25A98D0D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA053E0, &qword_25A9FDC98);
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

_BYTE **sub_25A98D1C8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_25A98D1D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_25A998B18();
  sub_25A997D58();
  v9 = sub_25A998B38();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_25A9989E8() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_25A98D934(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_25A98D328(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  v8 = sub_25A998558();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      sub_25A874FB0(*(v6 + 48) + 40 * v10, v18);
      v12 = MEMORY[0x25F850890](v18, a2);
      sub_25A8795A0(v18);
      if (v12)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_25A8795A0(a2);
    sub_25A874FB0(*(v6 + 48) + 40 * v10, a1);
    return 0;
  }

  else
  {
LABEL_5:
    v13 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_25A874FB0(a2, v18);
    v17 = *v3;
    sub_25A98DAB4(v18, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v17;
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_25A98D474(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05298, &qword_25A9FD1B8);
  result = sub_25A998598();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_25A998B18();
      sub_25A997D58();
      result = sub_25A998B38();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_25A98D6D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05310, &unk_25A9FD750);
  result = sub_25A998598();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v30 = *v19;
      v31 = *(v19 + 16);
      v32 = *(v19 + 32);
      v20 = *(v6 + 40);
      result = sub_25A998558();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *v15 = v30;
      *(v15 + 16) = v31;
      *(v15 + 32) = v32;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_25A98D934(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_25A98D474(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_25A98DC2C();
      goto LABEL_16;
    }

    sub_25A98DF00(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_25A998B18();
  sub_25A997D58();
  result = sub_25A998B38();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_25A9989E8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_25A998A98();
  __break(1u);
  return result;
}

uint64_t sub_25A98DAB4(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25A98D6D4(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_25A98DD88();
      goto LABEL_12;
    }

    sub_25A98E138(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  result = sub_25A998558();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      sub_25A874FB0(*(v9 + 48) + 40 * a2, v20);
      v13 = MEMORY[0x25F850890](v20, v6);
      result = sub_25A8795A0(v20);
      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = *(v14 + 48) + 40 * a2;
  v16 = *(v6 + 16);
  *v15 = *v6;
  *(v15 + 16) = v16;
  *(v15 + 32) = *(v6 + 32);
  v17 = *(v14 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v14 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25A998A98();
  __break(1u);
  return result;
}

void *sub_25A98DC2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05298, &qword_25A9FD1B8);
  v2 = *v0;
  v3 = sub_25A998588();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25A98DD88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05310, &unk_25A9FD750);
  v2 = *v0;
  v3 = sub_25A998588();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_25A874FB0(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_25A98DF00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05298, &qword_25A9FD1B8);
  result = sub_25A998598();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_25A998B18();

      sub_25A997D58();
      result = sub_25A998B38();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_25A98E138(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05310, &unk_25A9FD750);
  result = sub_25A998598();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      sub_25A874FB0(*(v3 + 48) + 40 * (v17 | (v7 << 6)), v29);
      v20 = *(v6 + 40);
      result = sub_25A998558();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 40 * v13;
      v15 = v29[0];
      v16 = v29[1];
      *(v14 + 32) = v30;
      *v14 = v15;
      *(v14 + 16) = v16;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v28;
        goto LABEL_28;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_25A98E364(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v22 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v22 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v22);
          ++v11;
        }

        while (!v7);
        v11 = v22;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a1 + 40);
      sub_25A998B18();

      sub_25A997D58();
      v16 = sub_25A998B38();
      v17 = -1 << *(a1 + 32);
      v18 = v16 & ~v17;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v19 = ~v17;
      while (1)
      {
        v20 = (*(a1 + 48) + 16 * v18);
        v21 = *v20 == v14 && v20[1] == v13;
        if (v21 || (sub_25A9989E8() & 1) != 0)
        {
          break;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

unint64_t sub_25A98E540(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05358, &qword_25A9FDA38);
    v3 = sub_25A998888();
    v4 = a1 + 32;

    while (1)
    {
      sub_25A8952F0(v4, v13, &qword_27FA05A80, &qword_25AA00748);
      result = sub_25A8F35BC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_25A872D74(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_25A98E6A4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25A98E6DC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25A98E72C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  sub_25A936F00(a1);
  v3();
}

uint64_t sub_25A98E78C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25A98E844(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x25F850560](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_25A98D1D8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_25A98E8DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05710, &qword_25A9FF878);
    v3 = sub_25A998888();
    v4 = a1 + 32;

    while (1)
    {
      sub_25A8952F0(v4, &v15, &qword_27FA053F0, &qword_25A9FDCA8);
      v5 = v15;
      v6 = v16;
      result = sub_25A8F3600(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_25A98EA0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_25A98EA5C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_25A98EAA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25A98ECC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_25A998888();

    for (i = (a1 + 48); ; i += 2)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v15 = *i;

      result = sub_25A8F3600(v7, v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v5[6] + 16 * result);
      *v11 = v7;
      v11[1] = v8;
      *(v5[7] + 16 * result) = v15;
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25A98EDDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05728, &qword_25A9FF890);
    v3 = sub_25A998888();
    v4 = a1 + 32;

    while (1)
    {
      sub_25A8952F0(v4, &v13, &qword_27FA05A88, &qword_25AA00750);
      v5 = v13;
      v6 = v14;
      result = sub_25A8F3600(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25A87817C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25A98EF38(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_25A998888();

    for (i = (a1 + 48); ; i += 3)
    {
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      result = a4(v9, v10);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v7[6] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
      *(v7[7] + 8 * result) = v11;
      v15 = v7[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v7[2] = v17;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_25A98F044(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x25F850560](v2, MEMORY[0x277D84030], MEMORY[0x277D84038]);
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_25A874FB0(v4, v5);
      sub_25A98D328(v6, v5);
      sub_25A8795A0(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_25A98F0EC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v55 = 46;
  *(&v55 + 1) = 0xE100000000000000;
  v48 = &v55;

  v43 = a1;
  v44 = a2;
  v7 = sub_25A96F490(0x7FFFFFFFFFFFFFFFLL, 1, sub_25A98FD98, v47, a1, a2, v6);
  v45 = v3;
  v8 = *(v7 + 16);
  if (v8)
  {
    *&v55 = MEMORY[0x277D84F90];
    sub_25A9375A0(0, v8, 0);
    v9 = v55;
    v10 = (v7 + 56);
    do
    {
      v12 = *(v10 - 3);
      v11 = *(v10 - 2);
      v13 = *(v10 - 1);
      v14 = *v10;

      v15 = MEMORY[0x25F850210](v12, v11, v13, v14);
      v17 = v16;

      *&v55 = v9;
      v19 = *(v9 + 16);
      v18 = *(v9 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_25A9375A0((v18 > 1), v19 + 1, 1);
        v9 = v55;
      }

      *(v9 + 16) = v19 + 1;
      v20 = v9 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      v10 += 4;
      --v8;
    }

    while (v8);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v22 = *(v9 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    *&v54[0] = MEMORY[0x277D84F90];

    result = sub_25A9375A0(0, v22, 0);
    v24 = 0;
    v23 = *&v54[0];
    v58 = *(v9 + 16);
    v25 = 5;
    while (v58 != v24)
    {
      if (v24 >= *(v9 + 16))
      {
        goto LABEL_29;
      }

      v26 = *(v9 + 8 * v25);
      *&v55 = v9;
      *(&v55 + 1) = v9 + 32;
      *&v56 = 0;
      *(&v56 + 1) = v25 - 2;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA054E8, &qword_25A9FDDA8);
      sub_25A93B3E4();
      v27 = sub_25A997D68();
      v29 = v28;

      *&v54[0] = v23;
      v31 = *(v23 + 16);
      v30 = *(v23 + 24);
      if (v31 >= v30 >> 1)
      {
        result = sub_25A9375A0((v30 > 1), v31 + 1, 1);
        v23 = *&v54[0];
      }

      ++v24;
      *(v23 + 16) = v31 + 1;
      v32 = v23 + 16 * v31;
      *(v32 + 32) = v27;
      *(v32 + 40) = v29;
      v25 += 2;
      if (v22 == v24)
      {

        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_16:
    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    v58 = *(v23 + 16);
    if (!v58)
    {
LABEL_26:

      sub_25A878194(&v55, &qword_27FA04B98, &qword_25A9FA170);
      return sub_25A98F570(v43, v44, a3);
    }

    v33 = 0;
    v34 = 0;
    v46 = v23;
    while (v34 < *(v23 + 16))
    {
      v37 = *(v9 + 16);
      if (v34 == v37)
      {
        goto LABEL_26;
      }

      if (v34 >= v37)
      {
        goto LABEL_31;
      }

      v38 = *(v23 + v33 + 32);
      v39 = *(v23 + v33 + 40);
      v41 = *(v9 + v33 + 32);
      v40 = *(v9 + v33 + 40);

      sub_25A98F570(v38, v39, v54);
      if (v45)
      {

        return sub_25A878194(&v55, &qword_27FA04B98, &qword_25A9FA170);
      }

      v45 = 0;
      v49[0] = v55;
      v49[1] = v56;
      v50 = v57;
      if (*(&v56 + 1))
      {
        sub_25A87817C(v49, v51);
        v36 = v52;
        v35 = v53;
        __swift_project_boxed_opaque_existential_1(v51, v52);
        (*(v35 + 56))(v41, v40, v54, v36, v35);

        __swift_destroy_boxed_opaque_existential_0Tm(v51);
      }

      else
      {

        sub_25A878194(v49, &qword_27FA04B98, &qword_25A9FA170);
      }

      v23 = v46;
      ++v34;
      result = sub_25A87817C(v54, &v55);
      v33 += 16;
      if (v58 == v34)
      {
        goto LABEL_26;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_25A98F570@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  swift_beginAccess();
  v9 = *(v3 + 24);
  if (*(v9 + 16))
  {

    v10 = sub_25A8F3600(a1, a2);
    if (v11)
    {
      sub_25A872F24(*(v9 + 56) + 40 * v10, a3);
    }
  }

  swift_beginAccess();
  sub_25A969AFC(a1, a2, &v28);
  swift_endAccess();
  if (v29)
  {
    sub_25A87817C(&v28, &v30);
    v13 = v31;
    v14 = v32;
    __swift_project_boxed_opaque_existential_1(&v30, v31);
    result = *(v5 + 32);
    if (result)
    {
      (*(v14 + 48))(result, *(v5 + 40), v13, v14);
      sub_25A872F24(&v30, &v28);
      swift_beginAccess();

      sub_25A8F2FA0(&v28, a1, a2);
      swift_endAccess();
      v15 = v31;
      v16 = v32;
      __swift_project_boxed_opaque_existential_1(&v30, v31);
      (*(v16 + 64))(v15, v16);
      if (v4)
      {
        return __swift_destroy_boxed_opaque_existential_0Tm(&v30);
      }

      else
      {
        if (qword_27FA043C0 != -1)
        {
          swift_once();
        }

        v23 = sub_25A997BD8();
        __swift_project_value_buffer(v23, qword_27FA0FCE8);

        v24 = sub_25A997BB8();
        v25 = sub_25A998398();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          *&v28 = v27;
          *v26 = 136315138;
          *(v26 + 4) = sub_25A98CC90(a1, a2, &v28);
          _os_log_impl(&dword_25A232000, v24, v25, "Loaded module %s", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v27);
          MEMORY[0x25F852800](v27, -1, -1);
          MEMORY[0x25F852800](v26, -1, -1);
        }

        return sub_25A87817C(&v30, a3);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_25A878194(&v28, &qword_27FA04B98, &qword_25A9FA170);
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v17 = sub_25A997BD8();
    __swift_project_value_buffer(v17, qword_27FA0FCE8);
    v18 = sub_25A9983A8();

    v19 = sub_25A997BB8();

    if (os_log_type_enabled(v19, v18))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v30 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_25A98CC90(a1, a2, &v30);
      _os_log_impl(&dword_25A232000, v19, v18, "Module %s not found.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x25F852800](v21, -1, -1);
      MEMORY[0x25F852800](v20, -1, -1);
    }

    sub_25A874F54();
    swift_allocError();
    *v22 = 115;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25A98F9A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v41[0] = 46;
  v41[1] = 0xE100000000000000;
  v35 = v41;

  v7 = sub_25A96F490(0x7FFFFFFFFFFFFFFFLL, 1, sub_25A93B3C4, v34, a1, a2, v6);
  v8 = *(v7 + 16);
  if (v8)
  {
    v32 = v3;
    v41[0] = MEMORY[0x277D84F90];
    result = sub_25A9375A0(0, v8, 0);
    v10 = 0;
    v11 = v41[0];
    v12 = (v7 + 56);
    do
    {
      if (v10 >= *(v7 + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

      v13 = *(v12 - 3);
      v14 = *(v12 - 2);
      v15 = *(v12 - 1);
      v16 = *v12;

      v17 = MEMORY[0x25F850210](v13, v14, v15, v16);
      v19 = v18;

      v41[0] = v11;
      v21 = *(v11 + 16);
      v20 = *(v11 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_25A9375A0((v20 > 1), v21 + 1, 1);
        v11 = v41[0];
      }

      ++v10;
      *(v11 + 16) = v21 + 1;
      v22 = v11 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      v12 += 4;
    }

    while (v8 != v10);

    v3 = v32;
    v23 = *(v11 + 16);
    if (v23)
    {
LABEL_8:
      swift_beginAccess();
      v24 = *(v3 + 24);
      *(&v45 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05A98, &qword_25AA00788);
      *&v44 = v24;

      v25 = 0;
      for (i = (v11 + 40); ; i += 2)
      {
        if (v25 >= *(v11 + 16))
        {
          goto LABEL_22;
        }

        v27 = *(i - 1);
        v28 = *i;
        sub_25A8780B8(&v44, v36);
        if (!v37)
        {
          break;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA045D8, &unk_25A9FBFC0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v40 = 0;
          v38 = 0u;
          v39 = 0u;
LABEL_19:

LABEL_20:
          sub_25A878194(&v38, &qword_27FA045E0, &qword_25A9F8790);
          *a3 = 0u;
          a3[1] = 0u;
          return sub_25A878194(&v44, &qword_27FA04458, &unk_25A9F7FB0);
        }

        if (!*(&v39 + 1))
        {
          goto LABEL_19;
        }

        ++v25;
        sub_25A87817C(&v38, v41);
        v29 = v42;
        v30 = v43;
        __swift_project_boxed_opaque_existential_1(v41, v42);
        (*(v30 + 8))(&v38, v27, v28, v29, v30);

        sub_25A96B8F4(&v38, &v44);
        result = __swift_destroy_boxed_opaque_existential_0Tm(v41);
        if (v23 == v25)
        {

          v31 = v45;
          *a3 = v44;
          a3[1] = v31;
          return result;
        }
      }

      sub_25A878194(v36, &qword_27FA04458, &unk_25A9F7FB0);
      v38 = 0u;
      v39 = 0u;
      v40 = 0;
      goto LABEL_20;
    }
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
    v23 = *(MEMORY[0x277D84F90] + 16);
    if (v23)
    {
      goto LABEL_8;
    }
  }

  *a3 = 0u;
  a3[1] = 0u;
}

uint64_t sub_25A98FD2C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_25A98FDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = v4;
  v6 = v3;
  v7 = type metadata accessor for PyInstance();
  v8 = swift_allocObject();

  v50 = sub_25A9907F4(v9, v8);
  swift_beginAccess();
  v10 = v3[8];
  v11 = v6[9];
  ObjectType = swift_getObjectType();
  v13 = *(v11 + 8);
  swift_unknownObjectRetain();
  v13(ObjectType, v11);
  swift_unknownObjectRelease();
  LexicalContext.attribute(for:)(0x5F5F74696E695F5FLL, 0xE800000000000000, &v56);

  v14 = MEMORY[0x277D84F70];
  if (*(&v57 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
    if (swift_dynamicCast())
    {
      if (*(&v60 + 1))
      {
        sub_25A87817C(&v59, v62);
        *(&v60 + 1) = v7;
        v15 = v50;
        *&v59 = v50;
        sub_25A872D74(&v59, &v56);
        v16 = a1;
        v17 = *(a1 + 16);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v54 = a1;
        if (!isUniquelyReferenced_nonNull_native || v17 >= *(a1 + 24) >> 1)
        {
          v16 = sub_25A967488(isUniquelyReferenced_nonNull_native, v17 + 1, 1, a1);
          *&v54 = v16;
        }

        sub_25A96AFC0(0, 0, 1, &v56);
        v19 = v63;
        v20 = v64;
        __swift_project_boxed_opaque_existential_1(v62, v63);
        (*(v20 + 16))(&v59, v16, a2, v19, v20);
        if (v5)
        {
LABEL_18:

          return __swift_destroy_boxed_opaque_existential_0Tm(v62);
        }

        __swift_destroy_boxed_opaque_existential_0Tm(&v59);
        goto LABEL_44;
      }
    }

    else
    {
      v61 = 0;
      v59 = 0u;
      v60 = 0u;
    }
  }

  else
  {
    sub_25A878194(&v56, &qword_27FA04458, &unk_25A9F7FB0);
    v59 = 0u;
    v60 = 0u;
    v61 = 0;
  }

  v46 = v7;
  v47 = v5;
  sub_25A878194(&v59, &qword_27FA04760, &unk_25A9F9BB0);
  swift_beginAccess();
  v21 = *(v6[7] + 16);

  if (v21 >= 2)
  {
    v29 = (v22 + 56);
    v30 = v21 - 1;
    v65 = MEMORY[0x277D84F90];
    v31 = &qword_27FA04458;
    v32 = &unk_25A9F7FB0;
    v51 = v6;
    while (1)
    {
      v33 = *(v29 - 1);
      v34 = *v29;
      v35 = v6[10];

      sub_25A98F9A4(v33, v34, &v52);
      if (!v53)
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04800, &qword_25A9F8E90);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
LABEL_33:

        goto LABEL_34;
      }

      v36 = *(&v60 + 1);
      if (!*(&v60 + 1))
      {
        goto LABEL_33;
      }

      v37 = v32;
      v38 = v31;
      v39 = v14;
      v40 = v61;
      __swift_project_boxed_opaque_existential_1(&v59, *(&v60 + 1));
      v41 = *(v40 + 8);
      v14 = v39;
      v31 = v38;
      v32 = v37;
      v6 = v51;
      (*(v41 + 8))(&v54, 0x5F5F74696E695F5FLL, 0xE800000000000000, v36);

      __swift_destroy_boxed_opaque_existential_0Tm(&v59);
      if (!*(&v55 + 1))
      {
        goto LABEL_35;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
      if (swift_dynamicCast())
      {
        if (*(&v57 + 1))
        {
          sub_25A87817C(&v56, &v59);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v42 = v65;
          }

          else
          {
            v42 = sub_25A9675C0(0, v65[2] + 1, 1, v65);
          }

          v44 = v42[2];
          v43 = v42[3];
          if (v44 >= v43 >> 1)
          {
            v42 = sub_25A9675C0((v43 > 1), v44 + 1, 1, v42);
          }

          v42[2] = v44 + 1;
          v65 = v42;
          sub_25A87817C(&v59, &v42[5 * v44 + 4]);
          goto LABEL_37;
        }
      }

      else
      {
        v58 = 0;
        v56 = 0u;
        v57 = 0u;
      }

LABEL_36:
      sub_25A878194(&v56, &qword_27FA04760, &unk_25A9F9BB0);
LABEL_37:
      v29 += 2;
      if (!--v30)
      {
        goto LABEL_13;
      }
    }

    sub_25A878194(&v52, v31, v32);
    v59 = 0u;
    v60 = 0u;
    v61 = 0;
LABEL_34:
    sub_25A878194(&v59, &qword_27FA047F8, L"D\a\t");
    v54 = 0u;
    v55 = 0u;
LABEL_35:
    sub_25A878194(&v54, v31, v32);
    v56 = 0u;
    v57 = 0u;
    v58 = 0;
    goto LABEL_36;
  }

  v65 = MEMORY[0x277D84F90];
LABEL_13:

  if (v65[2])
  {
    sub_25A872F24((v65 + 4), &v59);

    sub_25A87817C(&v59, v62);
    v7 = v46;
    *(&v60 + 1) = v46;
    v15 = v50;
    *&v59 = v50;
    sub_25A872D74(&v59, &v56);
    v23 = a1;
    v24 = *(a1 + 16);

    v25 = swift_isUniquelyReferenced_nonNull_native();
    *&v54 = a1;
    if (!v25 || v24 >= *(a1 + 24) >> 1)
    {
      v23 = sub_25A967488(v25, v24 + 1, 1, a1);
      *&v54 = v23;
    }

    sub_25A96AFC0(0, 0, 1, &v56);
    v26 = v63;
    v27 = v64;
    __swift_project_boxed_opaque_existential_1(v62, v63);
    (*(v27 + 16))(&v59, v23, a2, v26, v27);
    if (v47)
    {
      goto LABEL_18;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v59);
LABEL_44:

    result = __swift_destroy_boxed_opaque_existential_0Tm(v62);
    goto LABEL_45;
  }

  v7 = v46;
  v15 = v50;
LABEL_45:
  a3[3] = v7;
  *a3 = v15;
  return result;
}

uint64_t sub_25A990440@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a2;
  swift_beginAccess();
  v5 = *(v3 + 56);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = *(v7 + 56);

  v9 = v8(v6, v7);
  v11 = v10;
  v12 = *(v5 + 16);
  if (!v12)
  {
LABEL_9:

LABEL_21:
    sub_25A874F54();
    swift_allocError();
    *v24 = -125;
    return swift_willThrow();
  }

  v13 = v9;
  v14 = 0;
  v15 = (v5 + 40);
  while (1)
  {
    v16 = *(v15 - 1) == v13 && *v15 == v11;
    if (v16 || (sub_25A9989E8() & 1) != 0)
    {
      break;
    }

    ++v14;
    v15 += 2;
    if (v12 == v14)
    {
      goto LABEL_9;
    }
  }

  v18 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    __break(1u);
  }

  else
  {
    if (v18 >= *(v5 + 16))
    {
      v23 = v30;
      *(v30 + 32) = 0;
      *v23 = 0u;
      v23[1] = 0u;
    }

    if ((v18 & 0x8000000000000000) == 0)
    {
      v19 = (v5 + 32 + 16 * v18);
      v21 = *v19;
      v20 = v19[1];

      v22 = *(v3 + 80);
      sub_25A98F9A4(v21, v20, &v25);

      if (v26)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04800, &qword_25A9F8E90);
        if (swift_dynamicCast())
        {
          if (*(&v28 + 1))
          {
            return sub_25A87817C(&v27, v30);
          }
        }

        else
        {
          v29 = 0;
          v27 = 0u;
          v28 = 0u;
        }
      }

      else
      {
        sub_25A878194(&v25, &qword_27FA04458, &unk_25A9F7FB0);
        v27 = 0u;
        v28 = 0u;
        v29 = 0;
      }

      sub_25A878194(&v27, &qword_27FA047F8, L"D\a\t");
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

void *PyCustomClass.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];
  swift_unknownObjectRelease();
  v6 = v0[10];

  return v0;
}

uint64_t PyCustomClass.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];
  swift_unknownObjectRelease();
  v6 = v0[10];

  return swift_deallocClassInstance();
}

uint64_t sub_25A990788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static PyClass.== infix(_:_:)(a1, a2, a3, WitnessTable);
}

void *sub_25A9907F4(uint64_t a1, void *a2)
{
  v16[3] = type metadata accessor for PyCustomClass();
  v16[4] = sub_25A990FC0(&qword_27FA05AA8, v4, type metadata accessor for PyCustomClass);
  v16[0] = a1;
  sub_25A872F24(v16, (a2 + 2));
  type metadata accessor for LexicalContext();
  v5 = swift_allocObject();
  v5[2] = 0x6E776F6E6B6E55;
  v5[3] = 0xE700000000000000;
  v6 = MEMORY[0x277D84F90];
  v7 = sub_25A98E540(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04620, &unk_25A9FDA10);
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x277D84F98];
  swift_beginAccess();
  *(v8 + 16) = v7;
  v5[4] = v8;
  v5[5] = sub_25A98E67C(v6);
  a2[7] = v5;
  v9 = a2[5];
  v10 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v9);
  v11 = (*(v10 + 56))(v9, v10);
  v13 = v12;
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  v14 = v5[3];
  v5[2] = v11;
  v5[3] = v13;

  return a2;
}

uint64_t sub_25A990974(uint64_t a1, uint64_t a2)
{
  result = sub_25A990FC0(&qword_27FA05AA0, a2, type metadata accessor for PyCustomClass);
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_25A9909F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_25A990A40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_25A990A90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_25A990AE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_25A990B30@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
  return swift_unknownObjectRetain();
}

void *sub_25A990E38(uint64_t a1, void *a2)
{
  v15[3] = type metadata accessor for PyBuiltInClass();
  v15[4] = sub_25A990FC0(&qword_27FA04718, 255, type metadata accessor for PyBuiltInClass);
  v15[0] = a1;
  sub_25A872F24(v15, (a2 + 2));
  type metadata accessor for LexicalContext();
  v4 = swift_allocObject();
  v4[2] = 0x6E776F6E6B6E55;
  v4[3] = 0xE700000000000000;
  v5 = MEMORY[0x277D84F90];
  v6 = sub_25A98E540(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04620, &unk_25A9FDA10);
  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x277D84F98];
  swift_beginAccess();
  *(v7 + 16) = v6;
  v4[4] = v7;
  v4[5] = sub_25A98E67C(v5);
  a2[7] = v4;
  v8 = a2[5];
  v9 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v8);
  v10 = (*(v9 + 56))(v8, v9);
  v12 = v11;
  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  v13 = v4[3];
  v4[2] = v10;
  v4[3] = v12;

  return a2;
}

uint64_t sub_25A990FC0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25A991048(void (*a1)(void))
{
  v2 = *v1;
  a1();
  v3 = *(v2 + 80);

  v4 = sub_25A9987B8();

  return v4;
}

uint64_t String.anyArray.getter(uint64_t a1, unint64_t a2)
{
  v4 = _sSS8MorpheusE3lenSiyF_0();
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    v7 = MEMORY[0x277D84F90];
    v10 = *(MEMORY[0x277D84F90] + 16);
    if (v10)
    {
LABEL_4:
      sub_25A937550(0, v10, 0);
      v11 = v5;
      v12 = v7 + 5;
      v13 = MEMORY[0x277D837D0];
      do
      {
        v15 = *(v12 - 1);
        v14 = *v12;
        v19 = v13;
        *&v18 = v15;
        *(&v18 + 1) = v14;
        v16 = *(v11 + 16);
        v17 = *(v11 + 24);

        if (v16 >= v17 >> 1)
        {
          sub_25A937550((v17 > 1), v16 + 1, 1);
        }

        *(v11 + 16) = v16 + 1;
        sub_25A872D74(&v18, (v11 + 32 * v16 + 32));
        v12 += 2;
        --v10;
      }

      while (v10);

      return v11;
    }

LABEL_10:

    return MEMORY[0x277D84F90];
  }

  v6 = v4;
  v7 = sub_25A991340(v4, 0);

  v8 = sub_25A991278(&v18, v7 + 4, v6, a1, a2);

  if (v8 == v6)
  {
    v10 = v7[2];
    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_25A99123C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  return Array.anyArray.getter();
}

uint64_t sub_25A991278(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  *&v16 = 0;
  *(&v16 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_25A997F98();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_25A991340(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05408, &qword_25A9FDCD0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v6 = v5 - 32;
  if (v5 < 32)
  {
    v6 = v5 - 17;
  }

  v4[2] = a1;
  v4[3] = 2 * (v6 >> 4);
  return v4;
}

void Int.pow(_:)(uint64_t a1, uint64_t a2)
{
  v5[10] = *MEMORY[0x277D85DE8];
  if (a2 == a2)
  {
    mlx_array_new_int();
  }

  __break(1u);
  swift_once();
  sub_25A998C58();
  v4 = v5[0];
  v5[0] = mlx_array_new();
  swift_beginAccess();
  mlx_power(v5, v3, *(v2 + 16), *(v4 + 16));
}

void sub_25A9915C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A9915C8);
  }

  _Unwind_Resume(a1);
}

void sub_25A9917DC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A9917E4);
  }

  _Unwind_Resume(a1);
}

uint64_t UInt32.pow(_:)(uint64_t a1, int a2)
{
  v10[10] = *MEMORY[0x277D85DE8];
  LODWORD(v10[0]) = a2;
  v4 = mlx_array_new_data(v10, (MEMORY[0x277D84F90] + 32), 0, 3);
  type metadata accessor for MLXArray();
  *(swift_initStackObject() + 16) = v4;
  v5 = sub_25A8F0FA0(a1, 13);
  if (!v2)
  {
    v7 = v5;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8 = v10[0];
    v10[0] = mlx_array_new();
    swift_beginAccess();
    mlx_power(v10, v4, v7[2], *(v8 + 16));
  }

  swift_setDeallocating();
  result = mlx_array_free(v4);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A991A10(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A991A18);
  }

  _Unwind_Resume(a1);
}

uint64_t Float.pow(_:)(uint64_t a1, __n128 a2)
{
  v10[10] = *MEMORY[0x277D85DE8];
  v4 = mlx_array_new_float(a1, a2);
  type metadata accessor for MLXArray();
  *(swift_initStackObject() + 16) = v4;
  v5 = sub_25A8F0FA0(a1, 13);
  if (!v2)
  {
    v7 = v5;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8 = v10[0];
    v10[0] = mlx_array_new();
    swift_beginAccess();
    mlx_power(v10, v4, v7[2], *(v8 + 16));
  }

  swift_setDeallocating();
  result = mlx_array_free(v4);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A991C28(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A991C30);
  }

  _Unwind_Resume(a1);
}

uint64_t Double.pow(_:)(uint64_t a1, __n128 a2)
{
  v10[10] = *MEMORY[0x277D85DE8];
  a2.n128_f32[0] = a2.n128_f64[0];
  v4 = mlx_array_new_float(a1, a2);
  type metadata accessor for MLXArray();
  *(swift_initStackObject() + 16) = v4;
  v5 = sub_25A8F0FA0(a1, 13);
  if (!v2)
  {
    v7 = v5;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8 = v10[0];
    v10[0] = mlx_array_new();
    swift_beginAccess();
    mlx_power(v10, v4, v7[2], *(v8 + 16));
  }

  swift_setDeallocating();
  result = mlx_array_free(v4);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A991E44(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A991E4CLL);
  }

  _Unwind_Resume(a1);
}

void *sub_25A991E84(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *v1;
  result = sub_25A8F0FA0(a1, 13);
  if (!v2)
  {
    v5 = result;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v9[0] = mlx_array_new();
    swift_beginAccess();
    v6 = v1[2];
    swift_beginAccess();
    mlx_power(v9, v6, v5[2], *(v8 + 16));
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A991FEC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A991FF4);
  }

  _Unwind_Resume(a1);
}

uint64_t _s8Morpheus18SharedMutableArrayCAAypRszlE4isIn5valueSbyp_tF_0(uint64_t a1)
{
  sub_25A87500C(a1, &v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05570, &unk_25A9FE400);
  if (swift_dynamicCast())
  {
    sub_25A895470(&v23, v26);
    swift_beginAccess();
    v2 = *(v1 + 16);

    v4 = sub_25A93019C(v3);

    v6 = *(v4 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = v4 + 32;
      while (1)
      {
        if (v7 >= *(v4 + 16))
        {
          __break(1u);
          return result;
        }

        sub_25A87500C(v8, v21);
        if (swift_dynamicCast())
        {
          break;
        }

        v20 = 0;
        v18 = 0u;
        v19 = 0u;
        result = sub_25A878194(&v18, &qword_27FA05578, &qword_25AA00A00);
LABEL_5:
        ++v7;
        v8 += 32;
        if (v6 == v7)
        {
          goto LABEL_17;
        }
      }

      sub_25A895470(&v18, &v23);
      v9 = v27;
      v10 = __swift_project_boxed_opaque_existential_1(v26, v27);
      *(&v19 + 1) = v9;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v18);
      (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, v10, v9);
      v12 = *(&v24 + 1);
      v13 = __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
      v22 = v12;
      v14 = __swift_allocate_boxed_opaque_existential_0(v21);
      (*(*(v12 - 8) + 16))(v14, v13, v12);
      LOBYTE(v13) = static MorpheusUtils.isNil(_:)(&v18);
      v15 = static MorpheusUtils.isNil(_:)(v21);
      v16 = v15;
      if ((v13 & 1) == 0)
      {
        if ((v15 & 1) != 0 || (__swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1)), DynamicType = swift_getDynamicType(), __swift_project_boxed_opaque_existential_1(v21, v22), DynamicType != swift_getDynamicType()))
        {
          __swift_destroy_boxed_opaque_existential_0Tm(v21);
          __swift_destroy_boxed_opaque_existential_0Tm(&v18);
LABEL_14:
          result = __swift_destroy_boxed_opaque_existential_0Tm(&v23);
          goto LABEL_5;
        }

        __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
        v16 = sub_25A9390C4(&v18, v21);
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      __swift_destroy_boxed_opaque_existential_0Tm(&v18);
      if (v16)
      {

        __swift_destroy_boxed_opaque_existential_0Tm(&v23);
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        return 1;
      }

      goto LABEL_14;
    }

LABEL_17:

    __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  else
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    sub_25A878194(&v23, &qword_27FA05578, &qword_25AA00A00);
  }

  return 0;
}

uint64_t sub_25A992394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25A87500C(a1, &v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05570, &unk_25A9FE400);
  if (swift_dynamicCast())
  {
    sub_25A895470(&v24, v27);
    result = (*(a3 + 8))(a2, a3);
    v6 = result;
    v7 = *(result + 16);
    if (v7)
    {
      v8 = 0;
      v9 = result + 32;
      while (1)
      {
        if (v8 >= *(v6 + 16))
        {
          __break(1u);
          return result;
        }

        sub_25A87500C(v9, v22);
        if (swift_dynamicCast())
        {
          break;
        }

        v21 = 0;
        v19 = 0u;
        v20 = 0u;
        result = sub_25A878194(&v19, &qword_27FA05578, &qword_25AA00A00);
LABEL_5:
        ++v8;
        v9 += 32;
        if (v7 == v8)
        {
          goto LABEL_17;
        }
      }

      sub_25A895470(&v19, &v24);
      v10 = v28;
      v11 = __swift_project_boxed_opaque_existential_1(v27, v28);
      *(&v20 + 1) = v10;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v19);
      (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, v11, v10);
      v13 = *(&v25 + 1);
      v14 = __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
      v23 = v13;
      v15 = __swift_allocate_boxed_opaque_existential_0(v22);
      (*(*(v13 - 8) + 16))(v15, v14, v13);
      LOBYTE(v14) = static MorpheusUtils.isNil(_:)(&v19);
      v16 = static MorpheusUtils.isNil(_:)(v22);
      v17 = v16;
      if ((v14 & 1) == 0)
      {
        if ((v16 & 1) != 0 || (__swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1)), DynamicType = swift_getDynamicType(), __swift_project_boxed_opaque_existential_1(v22, v23), DynamicType != swift_getDynamicType()))
        {
          __swift_destroy_boxed_opaque_existential_0Tm(v22);
          __swift_destroy_boxed_opaque_existential_0Tm(&v19);
LABEL_14:
          result = __swift_destroy_boxed_opaque_existential_0Tm(&v24);
          goto LABEL_5;
        }

        __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
        v17 = sub_25A9390C4(&v19, v22);
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      __swift_destroy_boxed_opaque_existential_0Tm(&v19);
      if (v17)
      {

        __swift_destroy_boxed_opaque_existential_0Tm(&v24);
        __swift_destroy_boxed_opaque_existential_0Tm(v27);
        return 1;
      }

      goto LABEL_14;
    }

LABEL_17:

    __swift_destroy_boxed_opaque_existential_0Tm(v27);
  }

  else
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    sub_25A878194(&v24, &qword_27FA05578, &qword_25AA00A00);
  }

  return 0;
}

uint64_t sub_25A992720(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  return Array.isIn(value:)(a1);
}

uint64_t String.isIn(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25A87500C(a1, v7);
  if (swift_dynamicCast())
  {
    v7[0] = a2;
    v7[1] = a3;
    sub_25A8F84C4();
    v5 = sub_25A998498();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_25A9927D4(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  sub_25A87500C(a1, v6);
  if (swift_dynamicCast())
  {
    v6[0] = v3;
    v6[1] = v2;
    sub_25A8F84C4();
    v4 = sub_25A998498();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_25A992878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25A87500C(a1, v11);
  if (swift_dynamicCast())
  {
    v12[0] = v8;
    v12[1] = v9;
    v13 = v10;
    if (*((*(a3 + 8))(a2, a3) + 16))
    {
      sub_25A8F35BC(v12);
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    sub_25A8795A0(v12);
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    sub_25A878194(&v8, &qword_27FA04610, &qword_25A9FDA50);
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t SharedMutableDict<A>.isIn(value:)(uint64_t a1)
{
  sub_25A87500C(a1, v11);
  if (swift_dynamicCast())
  {
    v12[0] = v8;
    v12[1] = v9;
    v13 = v10;
    swift_beginAccess();
    v2 = *(v1 + 16);

    v4 = sub_25A936C50(v3);

    if (*(v4 + 16))
    {
      sub_25A8F35BC(v12);
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    sub_25A8795A0(v12);
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    sub_25A878194(&v8, &qword_27FA04610, &qword_25A9FDA50);
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_25A992ADC(uint64_t a1, void *a2)
{
  v3 = *v2;
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  return Dictionary.isIn(value:)(a1);
}

uint64_t sub_25A992AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25A87500C(a1, v11);
  if (swift_dynamicCast())
  {
    v12[0] = v8;
    v12[1] = v9;
    v13 = v10;
    v5 = (*(a3 + 8))(a2, a3);
    v6 = sub_25A9197D0(v12, v5);

    sub_25A8795A0(v12);
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    sub_25A878194(&v8, &qword_27FA04610, &qword_25A9FDA50);
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t SharedMutableSet.isIn(value:)(uint64_t a1)
{
  sub_25A87500C(a1, v8);
  if (swift_dynamicCast())
  {
    v9[0] = v5;
    v9[1] = v6;
    v10 = v7;
    swift_beginAccess();
    v2 = *(v1 + 16);

    v3 = sub_25A9197D0(v9, v2);

    sub_25A8795A0(v9);
  }

  else
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    sub_25A878194(&v5, &qword_27FA04610, &qword_25A9FDA50);
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_25A992D28(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  return Set.isIn(value:)(a1);
}

float __divsc3(float a1, float a2, float a3, float a4)
{
  v4 = fmaxf(fabsf(a3), fabsf(a4));
  v5 = LODWORD(v4) >> 23;
  v6 = -INFINITY;
  v7 = __clz(LODWORD(v4));
  v8 = ((LODWORD(v4) << (v7 - 8) >> 23) - v7 - 119);
  if (LODWORD(v4) >= 0x800000)
  {
    v8 = (v5 - 127);
  }

  if (v4 != 0.0)
  {
    v6 = v8;
  }

  if (v5 == 255)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if ((LODWORD(v9) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v10 = v9;
  v24 = -v9;
  if (a3 == 0.0 || (v25 = (LODWORD(a3) >> 23), v25 == 255))
  {
LABEL_32:
    if (a4 == 0.0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

  v26 = LODWORD(a3) & 0x7FFFFF;
  if (!(LODWORD(a3) >> 23))
  {
    v27 = __clz(v26);
    v28 = v26 << (v27 - 8);
    v25 = 9 - v27;
    v26 = v28 & 0xFF7FFFFF;
  }

  v21 = __OFADD__(v25, v24);
  v29 = v25 - v9;
  if (v21)
  {
    v29 = (v29 >> 31) ^ 0x80000000;
  }

  v30 = LODWORD(a3) & 0x80000000;
  if (v29 < 255)
  {
    if (v29 <= 0)
    {
      v40 = v26 | v30 | 0x800000;
      if (v29 <= -125)
      {
        v41 = -125;
      }

      else
      {
        v41 = v29;
      }

      a3 = *&v40 * COERCE_FLOAT((v41 << 23) + 1056964608);
      if (a4 == 0.0)
      {
        goto LABEL_10;
      }

      goto LABEL_33;
    }

    LODWORD(a3) = v30 | (v29 << 23) | v26;
    goto LABEL_32;
  }

  a3 = COERCE_FLOAT(v30 | 0x7F000000) + COERCE_FLOAT(v30 | 0x7F000000);
  if (a4 == 0.0)
  {
    goto LABEL_10;
  }

LABEL_33:
  v31 = (LODWORD(a4) >> 23);
  if (v31 != 255)
  {
    v32 = LODWORD(a4) & 0x7FFFFF;
    if (!(LODWORD(a4) >> 23))
    {
      v33 = __clz(v32);
      v34 = v32 << (v33 - 8);
      v31 = 9 - v33;
      v32 = v34 & 0xFF7FFFFF;
    }

    v21 = __OFADD__(v31, v24);
    v35 = v31 - v9;
    if (v21)
    {
      v35 = (v35 >> 31) ^ 0x80000000;
    }

    v36 = LODWORD(a4) & 0x80000000;
    if (v35 < 255)
    {
      if (v35 <= 0)
      {
        if (v35 <= -125)
        {
          v35 = -125;
        }

        a4 = COERCE_FLOAT(v32 | v36 | 0x800000) * COERCE_FLOAT((v35 << 23) + 1056964608);
      }

      else
      {
        LODWORD(a4) = v36 | (v35 << 23) | v32;
      }
    }

    else
    {
      a4 = COERCE_FLOAT(v36 | 0x7F000000) + COERCE_FLOAT(v36 | 0x7F000000);
    }
  }

LABEL_10:
  v11 = (a4 * a4) + (a3 * a3);
  *&v12 = ((a4 * a2) + (a1 * a3)) / v11;
  v13 = -v10;
  if (*&v12 != 0.0)
  {
    v14 = ((a4 * a2) + (a1 * a3)) / v11;
    v15 = (v12 >> 23);
    if (v15 != 255)
    {
      v16 = LODWORD(v14) & 0x7FFFFF;
      v17 = __clz(LODWORD(v14) & 0x7FFFFF);
      v18 = (LODWORD(v14) & 0x7FFFFF) << (v17 - 8);
      v19 = 9 - v17;
      v20 = v18 & 0xFF7FFFFF;
      if (!(v12 >> 23))
      {
        v16 = v20;
        v15 = v19;
      }

      v21 = __OFADD__(v15, v13);
      v22 = v15 + v13;
      if (v21)
      {
        v22 = (v22 >> 31) ^ 0x80000000;
      }

      v23 = v12 & 0x80000000;
      if (v22 < 255)
      {
        if (v22 <= 0)
        {
          v37 = v16 | v23 | 0x800000;
          if (v22 <= -125)
          {
            v38 = -125;
          }

          else
          {
            v38 = v22;
          }

          *&v12 = *&v37 * COERCE_FLOAT((v38 << 23) + 1056964608);
        }

        else
        {
          v12 = v23 | (v22 << 23) | v16;
        }
      }

      else
      {
        *&v12 = COERCE_FLOAT(v23 | 0x7F000000) + COERCE_FLOAT(v23 | 0x7F000000);
      }
    }
  }

  return *&v12;
}

void mlx::core::detail::InTracing::trace_stack()
{
  if (__cxa_guard_acquire(&_MergedGlobals))
  {
    __cxa_atexit(std::vector<std::pair<char,char>>::~vector[abi:ne200100], &qword_27FA05C08, &dword_25A232000);

    __cxa_guard_release(&_MergedGlobals);
  }
}

void mlx::core::array::ArrayDesc::ArrayDesc(uint64_t a1, void **a2, void *a3)
{
  v6 = *(a1 + 112);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *a2;
  if (*a2)
  {
    *(a1 + 32) = v8;
    operator delete(v8);
  }

  v9 = *a1;
  if (*a1)
  {
    *a3 = v9;
    operator delete(v9);
  }
}

void mlx::core::array::ArrayDesc::ArrayDesc(uint64_t a1, std::__shared_weak_count **a2, void **a3, void *a4)
{
  v8 = *(a1 + 112);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (*a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*a2);
  }

  v9 = *a3;
  if (*a3)
  {
    *(a1 + 32) = v9;
    operator delete(v9);
  }

  v10 = *a1;
  if (*a1)
  {
    *a4 = v10;
    operator delete(v10);
  }
}

uint64_t nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get(int64x2_t *this)
{
  this[2] = vaddq_s64(this[2], vdupq_n_s64(1uLL));
  if (this[1].i8[8] == 1)
  {
    this[1].i8[8] = 0;
    result = this[1].u32[1];
  }

  else
  {
    result = nlohmann::json_abi_v3_11_3::detail::input_stream_adapter::get_character(this);
    this[1].i32[1] = result;
  }

  if (result != -1)
  {
    v4 = result;
    std::vector<char>::push_back[abi:ne200100](&this[3].i64[1], &v4);
    result = this[1].u32[1];
    if (result == 10)
    {
      v3 = this[3].i64[0] + 1;
      this[2].i64[1] = 0;
      this[3].i64[0] = v3;
    }
  }

  return result;
}

void nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::operator*()
{
  __assert_rtn("operator*", "json.hpp", 13162, "m_it.array_iterator != m_object->m_data.m_value.array->end()");
}

{
  __assert_rtn("operator*", "json.hpp", 13156, "m_it.object_iterator != m_object->m_data.m_value.object->end()");
}

{
  __assert_rtn("operator*", "json.hpp", 13150, "m_object != nullptr");
}

void nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan_string()
{
  __assert_rtn("scan_string", "json.hpp", 7632, "current == '\\'");
}

{
  __assert_rtn("scan_string", "json.hpp", 7752, "0x00 <= codepoint && codepoint <= 0x10FFFF");
}

void nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan_number()
{
  __assert_rtn("scan_number", "json.hpp", 8644, "endptr == token_buffer.data() + token_buffer.size()");
}

{
  __assert_rtn("scan_number", "json.hpp", 8628, "endptr == token_buffer.data() + token_buffer.size()");
}

{
  __assert_rtn("scan_number", "json.hpp", 8661, "endptr == token_buffer.data() + token_buffer.size()");
}

{
  __assert_rtn("scan_number", "json.hpp", 8381, "false");
}

uint64_t nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get_codepoint(int64x2_t *this, int *a2, unsigned int *a3)
{
  v6 = 0;
  v7 = 0;
  v14 = *MEMORY[0x277D85DE8];
  v13 = xmmword_25A9A7F30;
  do
  {
    v8 = *(&v13 + v7);
    result = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get(this);
    v10 = *a2;
    v11 = *a2 - 48;
    if (v11 > 9)
    {
      if ((v10 - 65) > 5)
      {
        if ((v10 - 97) > 5)
        {
          v6 = -1;
          goto LABEL_9;
        }

        v11 = v10 - 87;
      }

      else
      {
        v11 = v10 - 55;
      }
    }

    v6 += v11 << v8;
    v7 += 4;
  }

  while (v7 != 16);
  if (v6 >= 0x10000)
  {
    __assert_rtn("get_codepoint", "json.hpp", 7570, "0x0000 <= codepoint && codepoint <= 0xFFFF");
  }

LABEL_9:
  *a3 = v6;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::next_byte_in_range(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  std::string::push_back((a3 + 80), *(a3 + 20));
  v9 = &a1[a4];
  while (1)
  {
    nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get(a3);
    v10 = *(a3 + 20);
    if (*a1 > v10 || v10 > a1[1])
    {
      break;
    }

    std::string::push_back((a3 + 80), v10);
    a1 += 2;
    if (a1 == v9)
    {
      v11 = 1;
      goto LABEL_6;
    }
  }

  v11 = 0;
  *(a3 + 104) = "invalid string: ill-formed UTF-8 byte";
LABEL_6:
  *a5 = v11;
}

void nlohmann::json_abi_v3_11_3::detail::parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::sax_parse_internal<nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>(std::runtime_error *a1, uint64_t a2, uint64_t a3)
{
  nlohmann::json_abi_v3_11_3::detail::parse_error::~parse_error(a1);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }
}

void nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::end_object()
{
  __assert_rtn("end_object", "json.hpp", 7101, "!keep_stack.empty()");
}

{
  __assert_rtn("end_object", "json.hpp", 7100, "!ref_stack.empty()");
}

void nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::end_array()
{
  __assert_rtn("end_array", "json.hpp", 7157, "!keep_stack.empty()");
}

{
  __assert_rtn("end_array", "json.hpp", 7156, "!ref_stack.empty()");
}

void nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::operator->()
{
  __assert_rtn("operator->", "json.hpp", 13206, "m_it.array_iterator != m_object->m_data.m_value.array->end()");
}

{
  __assert_rtn("operator->", "json.hpp", 13200, "m_it.object_iterator != m_object->m_data.m_value.object->end()");
}

{
  __assert_rtn("operator->", "json.hpp", 13194, "m_object != nullptr");
}

void nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::end_object()
{
  __assert_rtn("end_object", "json.hpp", 6891, "ref_stack.back()->is_object()");
}

{
  __assert_rtn("end_object", "json.hpp", 6890, "!ref_stack.empty()");
}

void nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::key()
{
  __assert_rtn("key", "json.hpp", 6881, "ref_stack.back()->is_object()");
}

{
  __assert_rtn("key", "json.hpp", 6880, "!ref_stack.empty()");
}

void nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::end_array()
{
  __assert_rtn("end_array", "json.hpp", 6913, "ref_stack.back()->is_array()");
}

{
  __assert_rtn("end_array", "json.hpp", 6912, "!ref_stack.empty()");
}

void nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_3::detail::value_t>()
{
  __assert_rtn("handle_value", "json.hpp", 6964, "object_element");
}

{
  __assert_rtn("handle_value", "json.hpp", 6955, "ref_stack.back()->is_array() || ref_stack.back()->is_object()");
}

atomic_ullong *std::future<BOOL>::get(atomic_ullong *result)
{
  if (!atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    return (*(*result + 16))();
  }

  return result;
}

void mlx::core::distributed::recv_like(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }
}

void mlx::core::distributed::init()
{
  if (__cxa_guard_acquire(&_MergedGlobals_0))
  {
    unk_27FA05DC8 = 0u;
    xmmword_27FA05DB8 = 0u;
    dword_27FA05DD8 = 1065353216;
    __cxa_atexit(std::unordered_map<std::string,std::shared_ptr<mlx::core::distributed::detail::GroupImpl>>::~unordered_map[abi:ne200100], &xmmword_27FA05DB8, &dword_25A232000);

    __cxa_guard_release(&_MergedGlobals_0);
  }
}

void mlx::core::Abs::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 167, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 168, "argnums.size() == 1");
}

void mlx::core::Abs::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 175, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 176, "axes.size() == 1");
}

void mlx::core::anonymous namespace::vmap_binary_op()
{
  __assert_rtn("vmap_binary_op", "primitives.cpp", 28, "inputs.size() == 2");
}

{
  __assert_rtn("vmap_binary_op", "primitives.cpp", 29, "axes.size() == 2");
}

void mlx::core::ArcCos::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 320, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 321, "argnums.size() == 1");
}

void mlx::core::ArcCos::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 331, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 332, "axes.size() == 1");
}

void mlx::core::ArcCosh::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 348, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 349, "argnums.size() == 1");
}

void mlx::core::ArcCosh::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 358, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 359, "axes.size() == 1");
}

void mlx::core::ArcSin::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 375, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 376, "argnums.size() == 1");
}

void mlx::core::ArcSin::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 385, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 386, "axes.size() == 1");
}

void mlx::core::ArcSinh::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 402, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 403, "argnums.size() == 1");
}

void mlx::core::ArcSinh::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 412, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 413, "axes.size() == 1");
}

void mlx::core::ArcTan::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 429, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 430, "argnums.size() == 1");
}

void mlx::core::ArcTan::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 439, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 440, "axes.size() == 1");
}

void mlx::core::ArcTan2::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 456, "primals.size() == 2");
}

{
  __assert_rtn("jvp", "primitives.cpp", 457, "argnums.size() == 2");
}

void mlx::core::ArcTan2::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 468, "inputs.size() == 2");
}

{
  __assert_rtn("vmap", "primitives.cpp", 469, "axes.size() == 2");
}

void mlx::core::ArcTanh::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 486, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 487, "argnums.size() == 1");
}

void mlx::core::ArcTanh::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 496, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 497, "axes.size() == 1");
}

void mlx::core::ArgPartition::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 504, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 505, "axes.size() == 1");
}

void mlx::core::ArgSort::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 568, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 569, "axes.size() == 1");
}

void mlx::core::Ceil::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 857, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 858, "argnums.size() == 1");
}

void mlx::core::Ceil::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 865, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 866, "axes.size() == 1");
}

void mlx::core::Eigh::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 881, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 882, "axes.size() == 1");
}

void mlx::core::Conjugate::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 1022, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 1023, "axes.size() == 1");
}

void mlx::core::Copy::vjp()
{
  __assert_rtn("vjp", "primitives.cpp", 1347, "primals.size() == 1");
}

{
  __assert_rtn("vjp", "primitives.cpp", 1348, "argnums.size() == 1");
}

void mlx::core::Copy::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 1356, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 1357, "argnums.size() == 1");
}

void mlx::core::Copy::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 1364, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 1365, "axes.size() == 1");
}

void mlx::core::Cos::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 1381, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 1382, "argnums.size() == 1");
}

void mlx::core::Cos::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 1390, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 1391, "axes.size() == 1");
}

void mlx::core::Cosh::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 1407, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 1408, "argnums.size() == 1");
}

void mlx::core::Cosh::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 1415, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 1416, "axes.size() == 1");
}

void mlx::core::Erf::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 1645, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 1646, "argnums.size() == 1");
}

void mlx::core::Erf::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 1658, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 1659, "axes.size() == 1");
}

void mlx::core::ErfInv::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 1679, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 1680, "argnums.size() == 1");
}

void mlx::core::ErfInv::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 1692, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 1693, "axes.size() == 1");
}

void mlx::core::Exp::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 1709, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 1710, "argnums.size() == 1");
}

void mlx::core::Exp::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 1717, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 1718, "axes.size() == 1");
}

void mlx::core::Expm1::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 1737, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 1738, "argnums.size() == 1");
}

void mlx::core::Expm1::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 1745, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 1746, "axes.size() == 1");
}

void mlx::core::FFT::vjp()
{
  __assert_rtn("vjp", "primitives.cpp", 1945, "primals.size() == 1");
}

{
  __assert_rtn("vjp", "primitives.cpp", 1946, "argnums.size() == 1");
}

void mlx::core::FFT::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 1980, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 1981, "argnums.size() == 1");
}

void mlx::core::Floor::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 2006, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 2007, "argnums.size() == 1");
}

void mlx::core::Floor::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 2014, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 2015, "axes.size() == 1");
}

void mlx::core::Full::vjp()
{
  __assert_rtn("vjp", "primitives.cpp", 2024, "primals.size() == 1");
}

{
  __assert_rtn("vjp", "primitives.cpp", 2025, "argnums.size() == 1");
}

void mlx::core::Full::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 2033, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 2034, "argnums.size() == 1");
}

void mlx::core::Full::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 2041, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 2042, "axes.size() == 1");
}

void mlx::core::Imag::vjp()
{
  __assert_rtn("vjp", "primitives.cpp", 2288, "primals.size() == 1");
}

{
  __assert_rtn("vjp", "primitives.cpp", 2289, "argnums.size() == 1");
}

void mlx::core::Imag::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 2300, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 2301, "argnums.size() == 1");
}

void mlx::core::Imag::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 2308, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 2309, "axes.size() == 1");
}

void mlx::core::Log::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 2379, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 2380, "argnums.size() == 1");
}

void mlx::core::Log::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 2392, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 2393, "axes.size() == 1");
}

void mlx::core::Log1p::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 2416, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 2417, "argnums.size() == 1");
}

void mlx::core::Log1p::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 2426, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 2427, "axes.size() == 1");
}

void mlx::core::LogicalNot::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 2443, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 2444, "argnums.size() == 1");
}

void mlx::core::LogicalNot::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 2451, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 2452, "axes.size() == 1");
}

void mlx::core::LogicalAnd::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 2473, "primals.size() == 2");
}

{
  __assert_rtn("jvp", "primitives.cpp", 2474, "argnums.size() <= 2");
}

void mlx::core::LogicalAnd::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 2481, "inputs.size() == 2");
}

{
  __assert_rtn("vmap", "primitives.cpp", 2482, "axes.size() == 2");
}

void mlx::core::LogicalOr::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 2505, "primals.size() == 2");
}

{
  __assert_rtn("jvp", "primitives.cpp", 2506, "argnums.size() <= 2");
}

void mlx::core::LogicalOr::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 2514, "inputs.size() == 2");
}

{
  __assert_rtn("vmap", "primitives.cpp", 2515, "axes.size() == 2");
}

void mlx::core::LogSumExp::vjp()
{
  __assert_rtn("vjp", "primitives.cpp", 2584, "primals.size() == 1");
}

{
  __assert_rtn("vjp", "primitives.cpp", 2585, "cotangents.size() == 1");
}

void mlx::core::LogSumExp::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 2596, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 2597, "tangents.size() == 1");
}

void mlx::core::Select::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 2791, "primals.size() == 3");
}

{
  __assert_rtn("jvp", "primitives.cpp", 2792, "tangents.size() == 3");
}

void mlx::core::Select::vjp()
{
  __assert_rtn("vjp", "primitives.cpp", 2825, "primals.size() == 3");
}

{
  __assert_rtn("vjp", "primitives.cpp", 2826, "cotangents.size() == 1");
}

void mlx::core::Select::vmap()
{
  __assert_rtn("vmap_ternary_op", "primitives.cpp", 64, "inputs.size() == 3");
}

{
  __assert_rtn("vmap_ternary_op", "primitives.cpp", 65, "axes.size() == 3");
}

void mlx::core::Negative::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 2869, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 2870, "argnums.size() == 1");
}

void mlx::core::Negative::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 2877, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 2878, "axes.size() == 1");
}

void mlx::core::Partition::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 2977, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 2978, "tangents.size() == 1");
}

void mlx::core::Partition::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 2987, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 2988, "axes.size() == 1");
}

void mlx::core::RandomBits::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 3199, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 3200, "axes.size() == 1");
}

void mlx::core::Real::vjp()
{
  __assert_rtn("vjp", "primitives.cpp", 3247, "primals.size() == 1");
}

{
  __assert_rtn("vjp", "primitives.cpp", 3248, "argnums.size() == 1");
}

void mlx::core::Real::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 3256, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 3257, "argnums.size() == 1");
}

void mlx::core::Real::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 3264, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 3265, "axes.size() == 1");
}

void mlx::core::Reshape::vjp()
{
  __assert_rtn("vjp", "primitives.cpp", 3295, "primals.size() == 1");
}

{
  __assert_rtn("vjp", "primitives.cpp", 3296, "argnums.size() == 1");
}

{
  __assert_rtn("vjp", "primitives.cpp", 3297, "argnums[0] == 0");
}

void mlx::core::Reshape::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 3305, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 3306, "argnums.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 3307, "argnums[0] == 0");
}

void mlx::core::Round::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 3499, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 3500, "argnums.size() == 1");
}

void mlx::core::Round::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 3507, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 3508, "axes.size() == 1");
}

void mlx::core::Scan::vjp()
{
  __assert_rtn("vjp", "primitives.cpp", 3534, "primals.size() == 1");
}

{
  __assert_rtn("vjp", "primitives.cpp", 3535, "argnums[0] == 0");
}

void mlx::core::Scan::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 3635, "tangents.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 3636, "argnums[0] == 0");
}

void mlx::core::Scatter::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 3761, "inputs_.size() == vmap_axes.size()");
}

{
  __assert_rtn("vmap", "primitives.cpp", 3760, "inputs_.size() >= 2");
}

void mlx::core::Sigmoid::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 3954, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 3955, "argnums.size() == 1");
}

void mlx::core::Sigmoid::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 3965, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 3966, "axes.size() == 1");
}

void mlx::core::Sign::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 3982, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 3983, "argnums.size() == 1");
}

void mlx::core::Sign::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 3990, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 3991, "axes.size() == 1");
}

void mlx::core::Sin::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 4007, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 4008, "argnums.size() == 1");
}

void mlx::core::Sin::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 4015, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 4016, "axes.size() == 1");
}

void mlx::core::Sinh::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 4032, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 4033, "argnums.size() == 1");
}

void mlx::core::Sinh::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 4040, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 4041, "axes.size() == 1");
}

void mlx::core::SliceUpdate::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 4092, "inputs.size() == 2");
}

{
  __assert_rtn("vmap", "primitives.cpp", 4093, "axes.size() == 2");
}

void mlx::core::Softmax::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 4337, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 4338, "axes.size() == 1");
}

void mlx::core::Softmax::vjp()
{
  __assert_rtn("vjp", "primitives.cpp", 4357, "primals.size() == 1");
}

{
  __assert_rtn("vjp", "primitives.cpp", 4358, "cotangents.size() == 1");
}

void mlx::core::Softmax::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 4370, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 4371, "tangents.size() == 1");
}

void mlx::core::Sort::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 4387, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 4388, "axes.size() == 1");
}

void mlx::core::Sort::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 4406, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 4407, "tangents.size() == 1");
}

void mlx::core::Square::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 4459, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 4460, "tangents.size() == 1");
}

void mlx::core::Square::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 4470, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 4471, "axes.size() == 1");
}

void mlx::core::Sqrt::vjp()
{
  __assert_rtn("vjp", "primitives.cpp", 4480, "primals.size() == 1");
}

{
  __assert_rtn("vjp", "primitives.cpp", 4481, "cotangents.size() == 1");
}

void mlx::core::Sqrt::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 4511, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 4512, "axes.size() == 1");
}

void mlx::core::Tan::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 4631, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 4632, "argnums.size() == 1");
}

void mlx::core::Tan::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 4640, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 4641, "axes.size() == 1");
}

void mlx::core::Tanh::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 4657, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 4658, "argnums.size() == 1");
}

void mlx::core::Tanh::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 4666, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 4667, "axes.size() == 1");
}

void mlx::core::BitwiseInvert::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 4674, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 4675, "axes.size() == 1");
}

void mlx::core::Transpose::vjp()
{
  __assert_rtn("vjp", "primitives.cpp", 5014, "primals.size() == 1");
}

{
  __assert_rtn("vjp", "primitives.cpp", 5015, "argnums.size() == 1");
}

void mlx::core::Transpose::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 5027, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 5028, "tangents.size() == 1");
}

void mlx::core::Transpose::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 5035, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 5036, "axes.size() == 1");
}

void mlx::core::NumberOfElements::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 5066, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 5067, "axes.size() == 1");
}

void mlx::core::View::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 5114, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 5115, "axes.size() == 1");
}

void mlx::core::Hadamard::vmap()
{
  __assert_rtn("vmap", "primitives.cpp", 5131, "inputs.size() == 1");
}

{
  __assert_rtn("vmap", "primitives.cpp", 5132, "axes.size() == 1");
}

void mlx::core::Hadamard::vjp()
{
  __assert_rtn("vjp", "primitives.cpp", 5147, "primals.size() == 1");
}

{
  __assert_rtn("vjp", "primitives.cpp", 5148, "argnums.size() == 1");
}

void mlx::core::Hadamard::jvp()
{
  __assert_rtn("jvp", "primitives.cpp", 5156, "primals.size() == 1");
}

{
  __assert_rtn("jvp", "primitives.cpp", 5157, "argnums.size() == 1");
}

void mlx::core::detail::compile_mode()
{
  if (__cxa_guard_acquire(&qword_27FA05E30))
  {
    if (getenv("MLX_DISABLE_COMPILE"))
    {
      v0 = 0;
    }

    else
    {
      v0 = 3;
    }

    _MergedGlobals_1 = v0;

    __cxa_guard_release(&qword_27FA05E30);
  }
}

void mlx::core::fast::RMSNorm::vjp()
{
  __assert_rtn("vjp", "fast.cpp", 130, "primals.size() == 2");
}

{
  __assert_rtn("vjp", "fast.cpp", 131, "outputs.size() == 1");
}

{
  __assert_rtn("vjp", "fast.cpp", 132, "cotangents.size() == 1");
}

void mlx::core::fast::LayerNorm::vjp()
{
  __assert_rtn("vjp", "fast.cpp", 274, "primals.size() == 3");
}

{
  __assert_rtn("vjp", "fast.cpp", 275, "outputs.size() == 1");
}

{
  __assert_rtn("vjp", "fast.cpp", 276, "cotangents.size() == 1");
}

void mlx::core::slice(void **a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  if (v4)
  {
    *a3 = v4;
    operator delete(v4);
  }

  v5 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v5;
    operator delete(v5);
  }
}

void mlx::core::cpu::get_command_encoder()
{
  if (__cxa_guard_acquire(&_MergedGlobals_2))
  {
    unk_27FA06018 = 0u;
    xmmword_27FA06008 = 0u;
    dword_27FA06028 = 1065353216;
    __cxa_atexit(std::unordered_map<int,mlx::core::cpu::CommandEncoder>::~unordered_map[abi:ne200100], &xmmword_27FA06008, &dword_25A232000);

    __cxa_guard_release(&_MergedGlobals_2);
  }
}

void mlx::core::Full::eval_cpu()
{
  __assert_rtn("eval_cpu", "primitives.cpp", 227, "inputs.size() == 1");
}

{
  __assert_rtn("eval_cpu", "primitives.cpp", 229, "in.dtype() == out.dtype()");
}

void mlx::core::Pad::eval_cpu()
{
  __assert_rtn("eval_cpu", "primitives.cpp", 243, "inputs.size() == 2");
}

{
  __assert_rtn("eval_cpu", "primitives.cpp", 248, "val.size() == 1");
}

{
  __assert_rtn("eval_cpu", "primitives.cpp", 251, "val.dtype() == in.dtype() && in.dtype() == out.dtype()");
}

void pocketfft::detail::threading::max_threads()
{
  if (__cxa_guard_acquire(&qword_27FA06038))
  {
    v0 = std::thread::hardware_concurrency();
    if (v0 <= 1)
    {
      v1 = 1;
    }

    else
    {
      v1 = v0;
    }

    _MergedGlobals_3 = v1;

    __cxa_guard_release(&qword_27FA06038);
  }
}

void pocketfft::detail::threading::thread_map<void pocketfft::detail::general_nd<pocketfft::detail::pocketfft_c<float>,pocketfft::detail::cmplx<float>,float,pocketfft::detail::ExecC2C>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,std::vector<unsigned long> const&,float,unsigned long,pocketfft::detail::ExecC2C const&,BOOL)::{lambda(void)#1}>(unsigned long,void pocketfft::detail::general_nd<pocketfft::detail::pocketfft_c<float>,pocketfft::detail::cmplx<float>,float,pocketfft::detail::ExecC2C>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,std::vector<unsigned long> const&,float,unsigned long,pocketfft::detail::ExecC2C const&,BOOL)::{lambda(void)#1})::{lambda(void)#1}::operator()()
{
  OUTLINED_FUNCTION_0();
  std::exception_ptr::operator=(*(v1 + 16), &v2);
  std::exception_ptr::~exception_ptr(&v2);
  std::mutex::unlock(v0);
  __cxa_end_catch();
}

void mlx::core::distributed::AllReduce::eval_cpu()
{
  __assert_rtn("eval_cpu", "distributed.cpp", 25, "inputs.size() == 1");
}

{
  __assert_rtn("eval_cpu", "distributed.cpp", 26, "outputs.size() == 1");
}

void mlx::core::distributed::AllGather::eval_cpu()
{
  __assert_rtn("eval_cpu", "distributed.cpp", 64, "inputs.size() == 1");
}

{
  __assert_rtn("eval_cpu", "distributed.cpp", 65, "outputs.size() == 1");
}

void mlx::core::distributed::Send::eval_cpu()
{
  __assert_rtn("eval_cpu", "distributed.cpp", 79, "inputs.size() == 1");
}

{
  __assert_rtn("eval_cpu", "distributed.cpp", 80, "outputs.size() == 1");
}

void mlx::core::distributed::Recv::eval_cpu()
{
  __assert_rtn("eval_cpu", "distributed.cpp", 94, "inputs.size() == 0");
}

{
  __assert_rtn("eval_cpu", "distributed.cpp", 95, "outputs.size() == 1");
}

void mlx::core::Limits<mlx::core::_MLX_BFloat16>::min()
{
  {
    mlx::core::Limits<mlx::core::_MLX_BFloat16>::min(void)::val = -128;
  }
}

void mlx::core::Limits<mlx::core::_MLX_BFloat16>::max()
{
  {
    mlx::core::Limits<mlx::core::_MLX_BFloat16>::max(void)::val = 32640;
  }
}

void mlx::core::Limits<mlx::core::complex64_t>::min()
{
  {
    mlx::core::Limits<mlx::core::complex64_t>::min(void)::val = 4286578688;
  }
}

void mlx::core::Limits<mlx::core::complex64_t>::max()
{
  {
    mlx::core::Limits<mlx::core::complex64_t>::max(void)::val = 2139095040;
  }
}

void get_error_handler_data()
{
  if (__cxa_guard_acquire(_MergedGlobals_4))
  {
    __cxa_atexit(std::shared_ptr<void>::~shared_ptr[abi:ne200100], &qword_27FA06050, &dword_25A232000);

    __cxa_guard_release(_MergedGlobals_4);
  }
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73E8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F7400](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x2821F7518](this, a2);
}

{
  return MEMORY[0x2821F7530](this, a2);
}

void std::runtime_error::~runtime_error(std::runtime_error *this)
{
  MEMORY[0x2821F7548](this);
}

{
  MEMORY[0x2821F7550](this);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E0]();
}

{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7920]();
}

{
  return MEMORY[0x2821F7928]();
}

{
  return MEMORY[0x2821F7930]();
}

{
  return MEMORY[0x2821F7938]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

lldiv_t div(uint64_t __x, uint64_t __y)
{
  v2 = MEMORY[0x2822026A8](__x, __y);
  result.rem = v3;
  result.quot = v2;
  return result;
}

ldiv_t ldiv(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x282202960](a1, a2);
  result.rem = v3;
  result.quot = v2;
  return result;
}