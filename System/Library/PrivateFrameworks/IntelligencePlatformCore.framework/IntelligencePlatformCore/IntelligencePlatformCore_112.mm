uint64_t sub_1C4DDBD9C(uint64_t a1)
{
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C44042B0();
  v9 = *(type metadata accessor for IPEntityTaggingPersonInferenceStructs.Person(v8) + 40);
  sub_1C4DDBEC8(a1, v2 + v9);
  v10 = type metadata accessor for IPEntityTaggingPersonInferenceStructs.AgentAffiliationRelationshipType(0);
  if (sub_1C44157D4(v2 + v9, 1, v10))
  {
    return sub_1C4420C3C(a1, &qword_1EC0C0890, &qword_1C4F3F420);
  }

  sub_1C4EFE638();
  sub_1C4420C3C(a1, &qword_1EC0C0890, &qword_1C4F3F420);
  v12 = sub_1C4EFEEF8();
  sub_1C440BAA8(v1, 0, 1, v12);
  return sub_1C44D3D38();
}

uint64_t sub_1C4DDBEC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C0890, &qword_1C4F3F420);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4DDBF58(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = v4;
  v102 = a1;
  v8 = sub_1C456902C(&qword_1EC0C0890, &qword_1C4F3F420);
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v94 - v12;
  v98 = type metadata accessor for IPEntityTaggingPersonInferenceStructs.AgentAffiliationRelationshipType(0);
  v14 = sub_1C43FBCE0(v98);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v99 = v18 - v17;
  v19 = sub_1C43FBE44();
  v20 = type metadata accessor for EntityTriple(v19);
  v21 = sub_1C43FCDF8(v20);
  v97 = v22;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v21);
  v27 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v94 - v28;
  v100 = *a3;
  v30 = MEMORY[0x1E69E7CC0];
  v105 = MEMORY[0x1E69E7CC0];
  v103 = type metadata accessor for IPEntityTaggingPersonInferenceStructs.Person(0);
  v31 = v103[9];
  v101 = v3;
  v32 = (v3 + v31);
  v33 = v32[1];
  if (!v33)
  {
    goto LABEL_8;
  }

  v34 = *v32;
  v35 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v35 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {
    v94 = v27;
    v95 = v34;
    v96 = v4;
    v36 = sub_1C4EFF0C8();
    sub_1C43FCE50(v36);
    v38 = v101;
    (*(v37 + 16))(v29, v101);
    v39 = a2;
    v40 = v103;
    v41 = v103[8];
    v42 = v20[5];
    v43 = sub_1C4EFEEF8();
    sub_1C43FCE50(v43);
    (*(v44 + 16))(&v29[v42], v38 + v41);
    v45 = v40[7];
    v46 = v20[9];
    sub_1C441ACB8();
    sub_1C448D4C0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    v48 = v47;
    v49 = &v29[v20[6]];
    sub_1C4EFF888();
    v50 = &v29[v20[7]];
    sub_1C4EFEC38();
    v51 = &v29[v20[8]];
    *v51 = v95;
    *(v51 + 1) = v33;
    v52 = &v29[v20[10]];
    *v52 = v102;
    *(v52 + 1) = v39;
    *&v29[v20[11]] = v48;
    v29[v20[12]] = v100;
    v95 = v39;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44C9240(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v30 = v53;
    v55 = *(v53 + 16);
    v54 = *(v53 + 24);
    if (v55 >= v54 >> 1)
    {
      sub_1C44C9240(v54 > 1, v55 + 1, 1, v53);
      v30 = v93;
    }

    v56 = v99;
    *(v30 + 16) = v55 + 1;
    v57 = *(v97 + 80);
    sub_1C43FF9D4();
    v59 = *(v58 + 72);
    sub_1C4408404();
    sub_1C44DDA64();
    v105 = v30;
    a2 = v95;
    v5 = v96;
    v27 = v94;
  }

  else
  {
LABEL_8:
    v56 = v99;
  }

  v60 = v103[10];
  v61 = v101;
  sub_1C45D1C78();
  v62 = sub_1C44157D4(v13, 1, v98);
  v63 = v102;
  if (v62 == 1)
  {
    sub_1C4420C3C(v13, &qword_1EC0C0890, &qword_1C4F3F420);
    v64 = v100;
  }

  else
  {
    sub_1C44DDA64();
    v64 = v100;
    v104 = v100;
    sub_1C4DDC4A8();
    if (v5)
    {
      sub_1C440155C();
      sub_1C4DDEF24(v56, v66);

      return v30;
    }

    sub_1C49D3614(v65);
    sub_1C440155C();
    sub_1C4DDEF24(v56, v67);
    v30 = v105;
    v63 = v102;
  }

  if (*(v30 + 16))
  {
    v96 = v5;
    v68 = sub_1C4EFF0C8();
    sub_1C43FCE50(v68);
    (*(v69 + 16))(v27, v61);
    v70 = &v27[v20[5]];
    sub_1C4EFEBB8();
    v71 = v103;
    v72 = v61 + v103[6];
    v73 = a2;
    v74 = sub_1C4EFD2F8();
    v76 = v75;
    v77 = v71[7];
    v78 = v20[9];
    sub_1C441ACB8();
    sub_1C448D4C0();
    sub_1C4EF9AE8();
    v80 = v79;
    v81 = &v27[v20[6]];
    sub_1C4EFF888();
    v82 = &v27[v20[7]];
    sub_1C4EFEC38();
    v83 = &v27[v20[8]];
    *v83 = v74;
    v83[1] = v76;
    v84 = &v27[v20[10]];
    *v84 = v63;
    *(v84 + 1) = v73;
    *&v27[v20[11]] = v80;
    v27[v20[12]] = v64;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C440EC00();
      v30 = v91;
    }

    sub_1C441C66C();
    if (v86)
    {
      sub_1C4417CC8(v85);
      v30 = v92;
    }

    *(v30 + 16) = v74;
    v87 = *(v97 + 80);
    sub_1C43FF9D4();
    v89 = *(v88 + 72);
    sub_1C4408404();
    sub_1C44DDA64();
  }

  return v30;
}

void sub_1C4DDC4A8()
{
  sub_1C43FE96C();
  v3 = v2;
  v182 = v5;
  v183 = v4;
  v184 = v6;
  v175 = type metadata accessor for EntityTriple(0);
  v7 = sub_1C43FCDF8(v175);
  v185 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  v174 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBF38();
  v172 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD230();
  v171 = v18;
  sub_1C43FBE44();
  v190 = sub_1C4EFD548();
  v19 = sub_1C43FCDF8(v190);
  v186 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  v173 = v24 - v23;
  sub_1C43FBE44();
  v25 = sub_1C4EFF8A8();
  v26 = sub_1C43FCDF8(v25);
  v188 = v27;
  v189 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBCC4();
  v32 = v31 - v30;
  v33 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v33);
  v35 = *(v34 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C44042B0();
  v37 = sub_1C4EFEEF8();
  v38 = sub_1C43FCDF8(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBCC4();
  v45 = v44 - v43;
  v180 = *v3;
  sub_1C45D1C78();
  if (sub_1C44157D4(v0, 1, v37) == 1)
  {
    sub_1C4420C3C(v0, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    swift_allocError();
    *v46 = 2;
    swift_willThrow();
  }

  else
  {
    v178 = v40;
    v181 = v45;
    v47 = v37;
    (*(v40 + 32))(v45, v0, v37);
    v48 = type metadata accessor for IPEntityTaggingPersonInferenceStructs.AgentAffiliationRelationshipType(0);
    (*(v186 + 16))(v173, &v1[v48[5]], v190);
    v179 = v32;
    sub_1C4EFF838();
    v191 = v48;
    v187 = v1;
    v49 = &v1[v48[8]];
    v50 = v49[1];
    if (v50)
    {
      sub_1C4404978(v49);
      v51 = v175;
      if (v52)
      {
        v53 = sub_1C4EFF0C8();
        sub_1C43FCE50(v53);
        (*(v54 + 16))(v171, v182);
        v55 = *(v178 + 16);
        v55(v171 + v175[5], v45, v37);
        (*(v188 + 16))(v171 + v175[6], v32, v189);
        v55(v171 + v175[7], &v187[v48[7]], v37);
        v56 = v48[6];
        v57 = v175[9];
        sub_1C441ACB8();
        v51 = v175;
        sub_1C448D4C0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v58 = (v171 + v175[8]);
        *v58 = v48;
        v58[1] = v50;
        v59 = (v171 + v175[10]);
        *v59 = v183;
        v59[1] = v184;
        *(v171 + v175[11]) = v60;
        *(v171 + v175[12]) = v180;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C44C9240(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v62 = v61;
        v50 = *(v61 + 16);
        v63 = *(v61 + 24);
        v48 = (v50 + 1);
        if (v50 >= v63 >> 1)
        {
          sub_1C4417CC8(v63);
          v62 = v162;
        }

        v64 = v185;
        *(v62 + 16) = v48;
        v65 = *(v185 + 80);
        sub_1C43FF9D4();
        v66 = *(v185 + 72);
        sub_1C4408404();
        sub_1C44DDA64();
      }

      else
      {
        v62 = MEMORY[0x1E69E7CC0];
        v64 = v185;
      }
    }

    else
    {
      v62 = MEMORY[0x1E69E7CC0];
      v64 = v185;
      v51 = v175;
    }

    v67 = v187;
    sub_1C441406C(v191[10]);
    v177 = v47;
    if (v50)
    {
      v69 = *v68;
      v70 = HIBYTE(v50) & 0xF;
      if ((v50 & 0x2000000000000000) == 0)
      {
        v70 = v69 & 0xFFFFFFFFFFFFLL;
      }

      if (v70)
      {
        v176 = v69;
        v71 = sub_1C4EFF0C8();
        sub_1C43FCE50(v71);
        v73 = *(v72 + 16);
        v74 = sub_1C443F470();
        v75(v74);
        v76 = sub_1C440C8E4();
        (v187)(v76);
        v77 = sub_1C44094B0();
        v78(v77);
        v48 = v191;
        v79 = sub_1C441BF68(v191[9]);
        (v187)(v79);
        v67 = v187;
        v80 = v191[6];
        v81 = v51[9];
        sub_1C441ACB8();
        sub_1C441D564();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4418DA4();
        *v82 = v176;
        v82[1] = v50;
        sub_1C43FCC6C(v83);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C440EC00();
          v62 = v163;
        }

        sub_1C441C66C();
        if (v85)
        {
          sub_1C4417CC8(v84);
          v62 = v164;
        }

        *(v62 + 16) = v191;
        v86 = *(v64 + 80);
        sub_1C43FF9D4();
        v87 = *(v64 + 72);
        sub_1C4408404();
        sub_1C44DDA64();
      }
    }

    sub_1C441406C(v191[12]);
    if (v50)
    {
      sub_1C4404978(v88);
      if (v89)
      {
        v90 = sub_1C4EFF0C8();
        sub_1C43FCE50(v90);
        v92 = *(v91 + 16);
        v93 = sub_1C443F470();
        v94(v93);
        v95 = sub_1C440C8E4();
        v67(v95);
        v96 = sub_1C44094B0();
        v97(v96);
        v98 = sub_1C441BF68(v191[11]);
        v67(v98);
        v67 = v187;
        v99 = v191[6];
        v100 = v51[9];
        sub_1C441ACB8();
        sub_1C441D564();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4418DA4();
        *v101 = v48;
        v101[1] = v50;
        sub_1C43FCC6C(v102);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C440EC00();
          v62 = v165;
        }

        sub_1C441C66C();
        if (v85)
        {
          sub_1C4417CC8(v103);
          v62 = v166;
        }

        *(v62 + 16) = v48;
        v104 = *(v185 + 80);
        sub_1C43FF9D4();
        v105 = *(v185 + 72);
        sub_1C4408404();
        sub_1C44DDA64();
      }
    }

    sub_1C441406C(v191[14]);
    if (v50)
    {
      sub_1C4404978(v106);
      if (v107)
      {
        v108 = sub_1C4EFF0C8();
        sub_1C43FCE50(v108);
        v110 = *(v109 + 16);
        v111 = sub_1C443F470();
        v112(v111);
        v113 = sub_1C440C8E4();
        v67(v113);
        v114 = sub_1C44094B0();
        v115(v114);
        v116 = sub_1C441BF68(v191[13]);
        v67(v116);
        v117 = v191[6];
        v118 = v51[9];
        sub_1C441ACB8();
        sub_1C441D564();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4418DA4();
        *v119 = v48;
        v119[1] = v50;
        sub_1C43FCC6C(v120);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C440EC00();
          v62 = v167;
        }

        sub_1C441C66C();
        if (v85)
        {
          sub_1C4417CC8(v121);
          v62 = v168;
        }

        *(v62 + 16) = v48;
        v122 = *(v185 + 80);
        sub_1C43FF9D4();
        v123 = *(v185 + 72);
        sub_1C4408404();
        sub_1C44DDA64();
      }
    }

    sub_1C441406C(v191[16]);
    if (v50 && (sub_1C4404978(v124), v125))
    {
      v126 = sub_1C4EFF0C8();
      sub_1C43FCE50(v126);
      v128 = *(v127 + 16);
      v129 = sub_1C443F470();
      v130(v129);
      v131 = *(v178 + 16);
      v131(v172 + v51[5], v181, v47);
      v132 = sub_1C44094B0();
      v133(v132);
      v134 = sub_1C441BF68(v191[15]);
      (v131)(v134);
      v135 = v191[6];
      v136 = v51[9];
      sub_1C441ACB8();
      sub_1C441D564();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4418DA4();
      *v137 = v48;
      v137[1] = v50;
      sub_1C43FCC6C(v138);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C440EC00();
        v62 = v169;
      }

      sub_1C441C66C();
      v140 = v178;
      v141 = v179;
      if (v85)
      {
        sub_1C4417CC8(v139);
        v62 = v170;
      }

      *(v62 + 16) = v48;
      v142 = *(v185 + 80);
      sub_1C43FF9D4();
      v144 = *(v143 + 72);
      sub_1C4408404();
      sub_1C44DDA64();
    }

    else
    {
      v140 = v178;
      v141 = v179;
    }

    if (*(v62 + 16))
    {
      v145 = sub_1C4EFF0C8();
      sub_1C43FCE50(v145);
      (*(v146 + 16))(v174, v182);
      (*(v140 + 16))(v174 + v51[5], v181, v177);
      (*(v188 + 16))(v174 + v51[6], v141, v189);
      v147 = v174 + v51[7];
      sub_1C4EFEBB8();
      v148 = sub_1C4EFD2F8();
      v150 = v149;
      v151 = v191[6];
      v152 = v51[9];
      sub_1C441ACB8();
      sub_1C448D4C0();
      sub_1C4EF9AE8();
      v153 = (v174 + v51[8]);
      *v153 = v148;
      v153[1] = v150;
      v154 = (v174 + v51[10]);
      *v154 = v183;
      v154[1] = v184;
      *(v174 + v51[11]) = v155;
      *(v174 + v51[12]) = v180;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C440EC00();
        v62 = v160;
      }

      sub_1C441C66C();
      if (v85)
      {
        sub_1C4417CC8(v156);
        v62 = v161;
      }

      (*(v188 + 8))(v141, v189);
      (*(v140 + 8))(v181, v177);
      *(v62 + 16) = v148;
      v157 = *(v185 + 80);
      sub_1C43FF9D4();
      v159 = *(v158 + 72);
      sub_1C4408404();
      sub_1C44DDA64();
    }

    else
    {
      (*(v188 + 8))(v141, v189);
      (*(v140 + 8))(v181, v177);
    }
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DDCFF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001ALL && 0x80000001C4FC7E30 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001C4FC7E50 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001BLL && 0x80000001C4FC7E70 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x80000001C4FC7E90 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000014 && 0x80000001C4FC7F00 == a2;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000025 && 0x80000001C4FC8D80 == a2;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD00000000000001BLL && 0x80000001C4FC8DB0 == a2;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000026 && 0x80000001C4FC7EB0 == a2;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0xD00000000000001CLL && 0x80000001C4FC7EE0 == a2)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1C4F02938();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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

unint64_t sub_1C4DDD3D4(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD00000000000001BLL;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x6E656469666E6F63;
      break;
    case 9:
      result = 0xD000000000000025;
      break;
    case 10:
      result = 0xD00000000000001BLL;
      break;
    case 11:
      result = 0xD000000000000026;
      break;
    case 12:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4DDD574()
{
  sub_1C43FE96C();
  v2 = v1;
  v3 = sub_1C456902C(&qword_1EC0C7BF0, &qword_1C4F76078);
  sub_1C43FCDF8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = v2[4];
  sub_1C4409678(v2, v2[3]);
  sub_1C4DDF3E0();
  sub_1C440F61C();
  sub_1C4EFEEF8();
  sub_1C440B974();
  sub_1C44CD4C0(v12, v13);
  sub_1C43FF9BC();
  sub_1C4F02778();
  if (!v0)
  {
    v25 = type metadata accessor for IPEntityTaggingPersonInferenceStructs.AgentAffiliationRelationshipType(0);
    v14 = v25[5];
    sub_1C4EFD548();
    sub_1C43FE300();
    sub_1C44CD4C0(v15, v16);
    sub_1C43FC428();
    sub_1C4F027E8();
    v17 = v25[6];
    type metadata accessor for Source();
    sub_1C44049CC();
    sub_1C44CD4C0(v18, v19);
    sub_1C43FC428();
    sub_1C4F027E8();
    v20 = v25[7];
    sub_1C43FF9BC();
    sub_1C4F027E8();
    sub_1C4401774(v25[8]);
    sub_1C43FBF44();
    sub_1C4F02738();
    v21 = v25[9];
    sub_1C43FF9BC();
    sub_1C4F027E8();
    sub_1C4401774(v25[10]);
    sub_1C43FBF44();
    sub_1C4F02738();
    v22 = v25[11];
    sub_1C43FF9BC();
    sub_1C4F027E8();
    sub_1C4401774(v25[12]);
    v30 = 8;
    sub_1C43FBF44();
    sub_1C4F02738();
    v23 = v25[13];
    v29 = 9;
    sub_1C43FF9BC();
    sub_1C4F027E8();
    sub_1C4401774(v25[14]);
    v28 = 10;
    sub_1C43FBF44();
    sub_1C4F02738();
    v24 = v25[15];
    v27 = 11;
    sub_1C43FF9BC();
    sub_1C4F027E8();
    sub_1C4401774(v25[16]);
    v26 = 12;
    sub_1C43FBF44();
    sub_1C4F02738();
  }

  (*(v5 + 8))(v10, v3);
  sub_1C43FBC80();
}

void sub_1C4DDD920()
{
  sub_1C43FE96C();
  v2 = v1;
  v3 = sub_1C4EFEEF8();
  v4 = sub_1C43FCDF8(v3);
  v66 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBFDC();
  v60 = v8;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBF38();
  v64 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD230();
  v67 = v14;
  v15 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v15);
  v17 = *(v16 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBC74();
  v69 = sub_1C456902C(&qword_1EC0C7BE0, &qword_1C4F76070);
  sub_1C43FCDF8(v69);
  v20 = *(v19 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBC74();
  v71 = v22;
  v23 = sub_1C43FBE44();
  v24 = type metadata accessor for IPEntityTaggingPersonInferenceStructs.AgentAffiliationRelationshipType(v23);
  v25 = sub_1C43FBCE0(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBCC4();
  v30 = v29 - v28;
  sub_1C43FCF64();
  v68 = v3;
  sub_1C440BAA8(v31, v32, v33, v3);
  v34 = v30 + v24[5];
  sub_1C4EFD318();
  v35 = v24[6];
  if (qword_1EDDFD178 != -1)
  {
    sub_1C4410038();
  }

  v36 = type metadata accessor for Source();
  sub_1C442B738(v36, &qword_1EDDFD180);
  sub_1C441ACB8();
  sub_1C448D4C0();
  v65 = v24[7];
  sub_1C4EFE808();
  v37 = (v30 + v24[8]);
  *v37 = 0;
  v37[1] = 0;
  v63 = v24[9];
  sub_1C4EFE878();
  v38 = (v30 + v24[10]);
  *v38 = 0;
  v38[1] = 0;
  v62 = v24[11];
  sub_1C4EFE2A8();
  v39 = (v30 + v24[12]);
  *v39 = 0;
  v39[1] = 0;
  v61 = v24[13];
  sub_1C4EFEB28();
  v40 = (v30 + v24[14]);
  *v40 = 0;
  v40[1] = 0;
  v41 = v24[15];
  sub_1C4EFEB48();
  v70 = v30;
  v42 = (v30 + v24[16]);
  *v42 = 0;
  v42[1] = 0;
  v43 = v2[4];
  sub_1C4409678(v2, v2[3]);
  sub_1C4DDF3E0();
  sub_1C4F02BC8();
  if (!v0)
  {
    v59 = v39;
    v58 = v42;
    sub_1C440B974();
    sub_1C44CD4C0(v44, v45);
    sub_1C4F02658();
    sub_1C44D3D38();
    sub_1C44151E8();
    sub_1C4F026C8();
    v47 = *(v66 + 40);
    v47(v70 + v65, v67, v68);
    *v37 = sub_1C440CE84();
    v37[1] = v48;
    sub_1C44151E8();
    sub_1C4F026C8();
    v47(v70 + v63, v64, v68);
    *v38 = sub_1C440CE84();
    v38[1] = v49;
    sub_1C44151E8();
    sub_1C4F026C8();
    v50 = sub_1C444B484(v62);
    (v47)(v50);
    *v59 = sub_1C440CE84();
    v59[1] = v51;
    sub_1C44151E8();
    sub_1C4F026C8();
    v52 = sub_1C444B484(v61);
    (v47)(v52);
    *v40 = sub_1C440CE84();
    v40[1] = v53;
    sub_1C44151E8();
    sub_1C4F026C8();
    v47(v70 + v41, v60, v68);
    v54 = sub_1C4F02618();
    v56 = v55;
    sub_1C441BF7C();
    v57(v71, v69);
    *v58 = v54;
    v58[1] = v56;
    sub_1C448D4C0();
  }

  sub_1C440962C(v2);
  sub_1C440155C();
  sub_1C4DDEF24(v70, v46);
  sub_1C43FBC80();
}

uint64_t sub_1C4DDDFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DDCFF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DDE024(uint64_t a1)
{
  v2 = sub_1C4DDF3E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DDE060(uint64_t a1)
{
  v2 = sub_1C4DDF3E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DDE0E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x80000001C4FC81D0 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E65727275437369 && a2 == 0xED00007265735574;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x636F737341736168 && a2 == 0xEE006E6F69746169)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C4F02938();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4DDE338(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x6E65727275437369;
      break;
    case 6:
      result = 0x636F737341736168;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1C4DDE430()
{
  sub_1C43FE96C();
  v2 = v0;
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0C7BD8, &qword_1C4F76068);
  sub_1C43FCDF8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v13 = v4[4];
  sub_1C4409678(v4, v4[3]);
  sub_1C4DDF38C();
  sub_1C440F61C();
  sub_1C4EFF0C8();
  sub_1C4415258();
  sub_1C44CD4C0(v14, v15);
  sub_1C43FC428();
  sub_1C4F027E8();
  if (!v1)
  {
    v16 = type metadata accessor for IPEntityTaggingPersonInferenceStructs.Person(0);
    v17 = *(v16 + 20);
    sub_1C4EFEEF8();
    sub_1C440B974();
    sub_1C44CD4C0(v18, v19);
    sub_1C43FC888();
    sub_1C4F02778();
    v35 = v16;
    v20 = *(v16 + 24);
    sub_1C4EFD548();
    sub_1C43FE300();
    sub_1C44CD4C0(v21, v22);
    sub_1C43FC428();
    sub_1C4F027E8();
    v23 = *(v35 + 28);
    type metadata accessor for Source();
    sub_1C44049CC();
    sub_1C44CD4C0(v24, v25);
    sub_1C43FC428();
    sub_1C4F027E8();
    v26 = v35;
    v27 = *(v35 + 32);
    sub_1C43FC888();
    sub_1C4F027E8();
    v28 = (v2 + *(v26 + 36));
    v29 = *v28;
    v30 = v28[1];
    sub_1C4F02738();
    v31 = *(v26 + 40);
    type metadata accessor for IPEntityTaggingPersonInferenceStructs.AgentAffiliationRelationshipType(0);
    sub_1C440568C();
    sub_1C44CD4C0(v32, v33);
    sub_1C43FC428();
    sub_1C4F02778();
  }

  (*(v7 + 8))(v12, v5);
  sub_1C43FBC80();
}

void sub_1C4DDE74C()
{
  sub_1C43FE96C();
  v2 = v1;
  v3 = sub_1C456902C(&qword_1EC0C0890, &qword_1C4F3F420);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBC74();
  sub_1C43FBE44();
  v7 = sub_1C4EFEEF8();
  v8 = sub_1C43FCDF8(v7);
  v69 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v63 = v13 - v12;
  v14 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBC74();
  sub_1C43FBE44();
  v65 = sub_1C4EFF0C8();
  v18 = sub_1C43FCDF8(v65);
  v64 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v24 = v23 - v22;
  v25 = sub_1C456902C(&qword_1EC0C7BC8, &qword_1C4F76060);
  sub_1C43FCDF8(v25);
  v27 = *(v26 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  v29 = type metadata accessor for IPEntityTaggingPersonInferenceStructs.Person(0);
  v30 = sub_1C43FBCE0(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBCC4();
  v35 = v34 - v33;
  v71 = *(v36 + 20);
  sub_1C43FCF64();
  v37 = v7;
  sub_1C440BAA8(v38, v39, v40, v7);
  v66 = v29[6];
  sub_1C4EFD4C8();
  v41 = v29[7];
  if (qword_1EDDFD178 != -1)
  {
    sub_1C4410038();
  }

  v42 = type metadata accessor for Source();
  sub_1C442B738(v42, &qword_1EDDFD180);
  sub_1C441ACB8();
  v67 = v41;
  sub_1C448D4C0();
  v70 = v29[8];
  sub_1C4EFE5D8();
  v43 = v29[10];
  v44 = type metadata accessor for IPEntityTaggingPersonInferenceStructs.AgentAffiliationRelationshipType(0);
  v68 = v43;
  sub_1C43FCF64();
  sub_1C440BAA8(v45, v46, v47, v44);
  v48 = v2[4];
  sub_1C4409678(v2, v2[3]);
  sub_1C4DDF38C();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v2);
    sub_1C4420C3C(v35 + v71, &qword_1EC0B9A08, &unk_1C4F107B0);
    v51 = sub_1C4EFD548();
    sub_1C43FBCE0(v51);
    (*(v52 + 8))(v35 + v66);
    sub_1C441F244();
    sub_1C4DDEF24(v35 + v67, v53);
    (*(v69 + 8))(v35 + v70, v37);

    sub_1C4420C3C(v35 + v68, &qword_1EC0C0890, &qword_1C4F3F420);
  }

  else
  {
    sub_1C4415258();
    sub_1C44CD4C0(v49, v50);
    sub_1C4F026C8();
    (*(v64 + 32))(v35, v24, v65);
    sub_1C440B974();
    sub_1C44CD4C0(v54, v55);
    sub_1C4440204();
    sub_1C4F02658();
    sub_1C44D3D38();
    sub_1C4440204();
    sub_1C4F026C8();
    (*(v69 + 40))(v35 + v70, v63, v37);
    v56 = sub_1C4F02618();
    v57 = (v35 + v29[9]);
    *v57 = v56;
    v57[1] = v58;
    sub_1C440568C();
    sub_1C44CD4C0(v59, v60);
    sub_1C4F02658();
    v61 = sub_1C43FCCB0();
    v62(v61);
    sub_1C44D3D38();
    sub_1C448D4C0();
    sub_1C440962C(v2);
    sub_1C4DDEF24(v35, type metadata accessor for IPEntityTaggingPersonInferenceStructs.Person);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DDEDE8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4DDEE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DDE0E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DDEE64(uint64_t a1)
{
  v2 = sub_1C4DDF38C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DDEEA0(uint64_t a1)
{
  v2 = sub_1C4DDF38C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DDEF24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1C4DDEFA4()
{
  sub_1C4EFF0C8();
  if (v0 <= 0x3F)
  {
    sub_1C4DDF0D8(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
    if (v1 <= 0x3F)
    {
      sub_1C4EFD548();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Source();
        if (v3 <= 0x3F)
        {
          sub_1C4EFEEF8();
          if (v4 <= 0x3F)
          {
            sub_1C4700EB8();
            if (v5 <= 0x3F)
            {
              sub_1C4DDF0D8(319, &qword_1EC0C7B90, type metadata accessor for IPEntityTaggingPersonInferenceStructs.AgentAffiliationRelationshipType);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C4DDF0D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C4F01F48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C4DDF164()
{
  sub_1C4DDF0D8(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v1 = type metadata accessor for Source();
      if (v4 <= 0x3F)
      {
        v1 = sub_1C4EFEEF8();
        if (v5 <= 0x3F)
        {
          sub_1C4700EB8();
          if (v7 > 0x3F)
          {
            return v6;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1C4DDF284(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD4C0(&qword_1EC0C7BA8, type metadata accessor for IPEntityTaggingPersonInferenceStructs.AgentAffiliationRelationshipType);
  result = sub_1C44CD4C0(&qword_1EC0C7BB0, type metadata accessor for IPEntityTaggingPersonInferenceStructs.AgentAffiliationRelationshipType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DDF308(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD4C0(&qword_1EC0C7BB8, type metadata accessor for IPEntityTaggingPersonInferenceStructs.Person);
  result = sub_1C44CD4C0(&qword_1EC0C7BC0, type metadata accessor for IPEntityTaggingPersonInferenceStructs.Person);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4DDF38C()
{
  result = qword_1EC0C7BD0;
  if (!qword_1EC0C7BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7BD0);
  }

  return result;
}

unint64_t sub_1C4DDF3E0()
{
  result = qword_1EC0C7BE8;
  if (!qword_1EC0C7BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7BE8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IPEntityTaggingPersonInferenceStructs.AgentAffiliationRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IPEntityTaggingPersonInferenceStructs.Person.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4DDF5F0()
{
  result = qword_1EC0C7BF8;
  if (!qword_1EC0C7BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7BF8);
  }

  return result;
}

unint64_t sub_1C4DDF648()
{
  result = qword_1EC0C7C00;
  if (!qword_1EC0C7C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7C00);
  }

  return result;
}

unint64_t sub_1C4DDF6A0()
{
  result = qword_1EC0C7C08;
  if (!qword_1EC0C7C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7C08);
  }

  return result;
}

unint64_t sub_1C4DDF6F8()
{
  result = qword_1EC0C7C10;
  if (!qword_1EC0C7C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7C10);
  }

  return result;
}

unint64_t sub_1C4DDF750()
{
  result = qword_1EC0C7C18;
  if (!qword_1EC0C7C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7C18);
  }

  return result;
}

unint64_t sub_1C4DDF7A8()
{
  result = qword_1EC0C7C20;
  if (!qword_1EC0C7C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7C20);
  }

  return result;
}

uint64_t sub_1C4DDF84C(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t *a4)
{
  v8 = *(v4 + *a2);
  *(v4 + *a2) = a1;

  sub_1C4E249EC(a2, a3, a4);
}

void sub_1C4DE04CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  v13 = v12;
  v436 = v14;
  v439 = type metadata accessor for EntityTriple(0);
  v15 = sub_1C43FCDF8(v439);
  v429 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBFDC();
  v427 = v19;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBF38();
  v426 = v21;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  v425 = v23;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBF38();
  v424 = v25;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBF38();
  v423 = v27;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBF38();
  v422 = v29;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  v421 = v31;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  v420 = v33;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBF38();
  v419 = v35;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBF38();
  v418 = v37;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  v417 = v39;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBF38();
  v416 = v41;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBF38();
  v415 = v43;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FD230();
  v414 = v45;
  sub_1C43FBE44();
  v46 = sub_1C4EFD548();
  v47 = sub_1C44348EC(v46);
  v434 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FD2D8();
  v432 = v51;
  sub_1C43FBE44();
  v52 = sub_1C4EFF8A8();
  v53 = sub_1C43FCDF8(v52);
  v437 = v54;
  v438 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBCC4();
  v59 = v58 - v57;
  v60 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v60);
  v62 = *(v61 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v63);
  sub_1C4402A68();
  v64 = sub_1C4EFEEF8();
  v65 = sub_1C43FCDF8(v64);
  v67 = v66;
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v65);
  sub_1C43FBCC4();
  v72 = v71 - v70;
  v430 = *v13;
  v73 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_predicate;
  sub_1C44169A0();
  sub_1C47CBF50(v10 + v73, v11);
  sub_1C440175C(v11, 1, v64);
  if (v74)
  {
    sub_1C446F170(v11, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v75 = sub_1C43FFB2C();
    sub_1C4414040(v75, v76);
  }

  else
  {
    v431 = v67;
    v428 = v72;
    (*(v67 + 32))(v72, v11, v64);
    v77 = v432;
    (*(v434 + 16))(v432, v10 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_entityClass, a10);
    v435 = v59;
    sub_1C4EFF838();
    v78 = *(v10 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_thoroughfare + 8);
    v79 = v10;
    v440 = v10;
    v433 = v64;
    if (v78)
    {
      sub_1C44181E4((v10 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_thoroughfare));
      v80 = v439;
      if (v81)
      {
        v82 = sub_1C4EFF0C8();
        sub_1C43FCE50(v82);
        (*(v83 + 16))(v414, v436);
        v10 = v64;
        v84 = *(v431 + 16);
        v84(v414 + *(v439 + 20), v428, v64);
        v85 = sub_1C448879C(*(v439 + 24));
        v86(v85, v435);
        v87 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_thoroughfare_predicate;
        sub_1C4E2D808();
        sub_1C440D164();
        v88 = v440 + v87;
        v79 = v440;
        v84(v414 + *(v439 + 28), v88, v64);
        sub_1C449ED64(v440 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_source, v414 + *(v439 + 36));
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v89 = (v414 + *(v439 + 32));
        *v89 = v77;
        v89[1] = v78;
        sub_1C4E2CAE4((v414 + *(v439 + 40)));
        sub_1C4E2E9E4(v90, v91);
        *(v414 + v92) = v430;
        v93 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4401EC4(v93, v94, v95, MEMORY[0x1E69E7CC0]);
        v98 = *(v96 + 16);
        v97 = *(v96 + 24);
        v99 = v96;
        v77 = v98 + 1;
        if (v98 >= v97 >> 1)
        {
          v301 = sub_1C4405AF4(v97);
          sub_1C44C9240(v301, v302, v303, v304);
          v99 = v305;
        }

        *(v99 + 16) = v77;
        v100 = *(v429 + 80);
        sub_1C43FC354();
        v103 = v101 + v102 + *(v429 + 72) * v98;
        v104 = v101;
        sub_1C4A948D8(v414, v103);
      }

      else
      {
        v104 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v104 = MEMORY[0x1E69E7CC0];
      v80 = v439;
    }

    v105 = v428;
    v106 = *(v79 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_subThoroughfare + 8);
    if (v106)
    {
      sub_1C442632C((v79 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_subThoroughfare));
      if (v107)
      {
        v108 = sub_1C4EFF0C8();
        sub_1C43FCE50(v108);
        v110 = *(v109 + 16);
        v111 = sub_1C4E2D7FC();
        v112(v111);
        v439 = v104;
        v10 = v433;
        v113 = *(v431 + 16);
        v113(v415 + v80[5], v428, v433);
        v114 = sub_1C4495360();
        v115(v114);
        v116 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_subThoroughfare_predicate;
        sub_1C440D164();
        v113(v415 + v80[7], v440 + v116, v433);
        v79 = v440;
        sub_1C4E2D5E0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_source);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v117 = (v415 + v80[8]);
        *v117 = v77;
        v117[1] = v106;
        sub_1C4E2CAE4((v415 + v80[10]));
        *(v415 + v118) = v119;
        *(v415 + v80[12]) = v430;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v306 = *(v104 + 16);
          v307 = sub_1C43FCEC0();
          sub_1C44C9240(v307, v308, v309, v104);
          v104 = v310;
        }

        v121 = *(v104 + 16);
        v120 = *(v104 + 24);
        v105 = v428;
        if (v121 >= v120 >> 1)
        {
          v311 = sub_1C4405AF4(v120);
          sub_1C44C9240(v311, v312, v313, v104);
          v104 = v314;
        }

        *(v104 + 16) = v121 + 1;
        v122 = *(v429 + 80);
        sub_1C43FE7E4();
        sub_1C4A948D8(v415, v123 + *(v429 + 72) * v121);
      }
    }

    sub_1C44A1E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_subLocality);
    if (v10)
    {
      sub_1C44026DC(v124);
      if (v125)
      {
        v126 = sub_1C4EFF0C8();
        sub_1C43FCE50(v126);
        v128 = *(v127 + 16);
        v129 = sub_1C4E2D7FC();
        v130(v129);
        v131 = sub_1C4416650();
        (v104)(v131);
        v132 = sub_1C4495360();
        v133(v132);
        v79 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_subLocality_predicate;
        sub_1C4E2D808();
        sub_1C440D164();
        v134 = sub_1C448F2CC();
        (v104)(v134);
        v104 = v439;
        sub_1C4E2D5E0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_source);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4460550(v135);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v315 = *(v439 + 16);
          v316 = sub_1C43FCEC0();
          sub_1C44C9240(v316, v317, v318, v439);
          v104 = v319;
        }

        sub_1C4E2C928();
        v105 = v428;
        if (v137)
        {
          v320 = sub_1C43FFD98(v136);
          sub_1C44C9240(v320, v321, v322, v104);
          v104 = v323;
        }

        sub_1C4433F7C();
        sub_1C4A948D8(v416, v138);
      }
    }

    sub_1C44A1E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_locality);
    if (v10)
    {
      sub_1C44026DC(v139);
      if (v140)
      {
        v141 = sub_1C4EFF0C8();
        sub_1C43FCE50(v141);
        v143 = *(v142 + 16);
        v144 = sub_1C4E2D7FC();
        v145(v144);
        v146 = sub_1C4416650();
        (v104)(v146);
        v147 = sub_1C4495360();
        v148(v147);
        v79 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_locality_predicate;
        sub_1C4E2D808();
        sub_1C440D164();
        v149 = sub_1C448F2CC();
        (v104)(v149);
        v104 = v439;
        sub_1C4E2D5E0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_source);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4460550(v150);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v324 = *(v439 + 16);
          v325 = sub_1C43FCEC0();
          sub_1C44C9240(v325, v326, v327, v439);
          v104 = v328;
        }

        sub_1C4E2C928();
        v105 = v428;
        if (v137)
        {
          v329 = sub_1C43FFD98(v151);
          sub_1C44C9240(v329, v330, v331, v104);
          v104 = v332;
        }

        sub_1C4433F7C();
        sub_1C4A948D8(v417, v152);
      }
    }

    sub_1C44A1E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_subAdministrativeArea);
    if (v10)
    {
      sub_1C44026DC(v153);
      if (v154)
      {
        v155 = sub_1C4EFF0C8();
        sub_1C43FCE50(v155);
        v157 = *(v156 + 16);
        v158 = sub_1C4E2D7FC();
        v159(v158);
        v160 = sub_1C4416650();
        (v104)(v160);
        v161 = sub_1C4495360();
        v162(v161);
        v79 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_subAdministrativeArea_predicate;
        sub_1C4E2D808();
        sub_1C440D164();
        v163 = sub_1C448F2CC();
        (v104)(v163);
        v104 = v439;
        sub_1C4E2D5E0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_source);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4460550(v164);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v333 = *(v439 + 16);
          v334 = sub_1C43FCEC0();
          sub_1C44C9240(v334, v335, v336, v439);
          v104 = v337;
        }

        sub_1C4E2C928();
        v105 = v428;
        if (v137)
        {
          v338 = sub_1C43FFD98(v165);
          sub_1C44C9240(v338, v339, v340, v104);
          v104 = v341;
        }

        sub_1C4433F7C();
        sub_1C4A948D8(v418, v166);
      }
    }

    sub_1C44A1E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_administrativeArea);
    if (v10)
    {
      sub_1C44026DC(v167);
      if (v168)
      {
        v169 = sub_1C4EFF0C8();
        sub_1C43FCE50(v169);
        v171 = *(v170 + 16);
        v172 = sub_1C4E2D7FC();
        v173(v172);
        v174 = sub_1C4416650();
        (v104)(v174);
        v175 = sub_1C4495360();
        v176(v175);
        v79 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_administrativeArea_predicate;
        sub_1C4E2D808();
        sub_1C440D164();
        v177 = sub_1C448F2CC();
        (v104)(v177);
        v104 = v439;
        sub_1C4E2D5E0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_source);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4460550(v178);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v342 = *(v439 + 16);
          v343 = sub_1C43FCEC0();
          sub_1C44C9240(v343, v344, v345, v439);
          v104 = v346;
        }

        sub_1C4E2C928();
        v105 = v428;
        if (v137)
        {
          v347 = sub_1C43FFD98(v179);
          sub_1C44C9240(v347, v348, v349, v104);
          v104 = v350;
        }

        sub_1C4433F7C();
        sub_1C4A948D8(v419, v180);
      }
    }

    sub_1C44A1E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_postalCode);
    if (v10)
    {
      sub_1C44026DC(v181);
      if (v182)
      {
        v183 = sub_1C4EFF0C8();
        sub_1C43FCE50(v183);
        v185 = *(v184 + 16);
        v186 = sub_1C4E2D7FC();
        v187(v186);
        v188 = sub_1C4416650();
        (v104)(v188);
        v189 = sub_1C4495360();
        v190(v189);
        v79 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_postalCode_predicate;
        sub_1C4E2D808();
        sub_1C440D164();
        v191 = sub_1C448F2CC();
        (v104)(v191);
        v104 = v439;
        sub_1C4E2D5E0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_source);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4460550(v192);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v351 = *(v439 + 16);
          v352 = sub_1C43FCEC0();
          sub_1C44C9240(v352, v353, v354, v439);
          v104 = v355;
        }

        sub_1C4E2C928();
        v105 = v428;
        if (v137)
        {
          v356 = sub_1C43FFD98(v193);
          sub_1C44C9240(v356, v357, v358, v104);
          v104 = v359;
        }

        sub_1C4433F7C();
        sub_1C4A948D8(v420, v194);
      }
    }

    sub_1C44A1E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_country);
    if (v10)
    {
      sub_1C44026DC(v195);
      if (v196)
      {
        v197 = sub_1C4EFF0C8();
        sub_1C43FCE50(v197);
        v199 = *(v198 + 16);
        v200 = sub_1C4E2D7FC();
        v201(v200);
        v202 = sub_1C4416650();
        (v104)(v202);
        v203 = sub_1C4495360();
        v204(v203);
        v79 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_country_predicate;
        sub_1C4E2D808();
        sub_1C440D164();
        v205 = sub_1C448F2CC();
        (v104)(v205);
        v104 = v439;
        sub_1C4E2D5E0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_source);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4460550(v206);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v360 = *(v439 + 16);
          v361 = sub_1C43FCEC0();
          sub_1C44C9240(v361, v362, v363, v439);
          v104 = v364;
        }

        sub_1C4E2C928();
        v105 = v428;
        if (v137)
        {
          v365 = sub_1C43FFD98(v207);
          sub_1C44C9240(v365, v366, v367, v104);
          v104 = v368;
        }

        sub_1C4433F7C();
        sub_1C4A948D8(v421, v208);
      }
    }

    sub_1C44A1E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_isoCountryCode);
    if (v10)
    {
      sub_1C44026DC(v209);
      if (v210)
      {
        v211 = sub_1C4EFF0C8();
        sub_1C43FCE50(v211);
        v213 = *(v212 + 16);
        v214 = sub_1C4E2D7FC();
        v215(v214);
        v216 = sub_1C4416650();
        (v104)(v216);
        v217 = sub_1C4495360();
        v218(v217);
        v79 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_isoCountryCode_predicate;
        sub_1C4E2D808();
        sub_1C440D164();
        v219 = sub_1C448F2CC();
        (v104)(v219);
        v104 = v439;
        sub_1C4E2D5E0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_source);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4460550(v220);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v369 = *(v439 + 16);
          v370 = sub_1C43FCEC0();
          sub_1C44C9240(v370, v371, v372, v439);
          v104 = v373;
        }

        sub_1C4E2C928();
        v105 = v428;
        if (v137)
        {
          v374 = sub_1C43FFD98(v221);
          sub_1C44C9240(v374, v375, v376, v104);
          v104 = v377;
        }

        sub_1C4433F7C();
        sub_1C4A948D8(v422, v222);
      }
    }

    sub_1C44A1E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_name);
    if (v10)
    {
      sub_1C44026DC(v223);
      if (v224)
      {
        v225 = sub_1C4EFF0C8();
        sub_1C43FCE50(v225);
        v227 = *(v226 + 16);
        v228 = sub_1C4E2D7FC();
        v229(v228);
        v230 = sub_1C4416650();
        (v104)(v230);
        v231 = sub_1C4495360();
        v232(v231);
        v79 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_name_predicate;
        sub_1C4E2D808();
        sub_1C440D164();
        v233 = sub_1C448F2CC();
        (v104)(v233);
        v104 = v439;
        sub_1C4E2D5E0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_source);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4460550(v234);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v378 = *(v439 + 16);
          v379 = sub_1C43FCEC0();
          sub_1C44C9240(v379, v380, v381, v439);
          v104 = v382;
        }

        sub_1C4E2C928();
        v105 = v428;
        if (v137)
        {
          v383 = sub_1C43FFD98(v235);
          sub_1C44C9240(v383, v384, v385, v104);
          v104 = v386;
        }

        sub_1C4433F7C();
        sub_1C4A948D8(v423, v236);
      }
    }

    sub_1C44A1E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_emailAddress);
    if (v10)
    {
      sub_1C44026DC(v237);
      if (v238)
      {
        v239 = sub_1C4EFF0C8();
        sub_1C43FCE50(v239);
        v241 = *(v240 + 16);
        v242 = sub_1C4E2D7FC();
        v243(v242);
        v244 = sub_1C4416650();
        (v104)(v244);
        v245 = sub_1C4495360();
        v246(v245);
        v79 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_emailAddress_predicate;
        sub_1C4E2D808();
        sub_1C4429150();
        v247 = sub_1C448F2CC();
        (v104)(v247);
        v104 = v439;
        sub_1C4E2D5E0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_source);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4460550(v248);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v387 = *(v439 + 16);
          v388 = sub_1C43FCEC0();
          sub_1C44C9240(v388, v389, v390, v439);
          v104 = v391;
        }

        sub_1C4E2C928();
        v105 = v428;
        if (v137)
        {
          v392 = sub_1C43FFD98(v249);
          sub_1C44C9240(v392, v393, v394, v104);
          v104 = v395;
        }

        sub_1C4433F7C();
        sub_1C4A948D8(v424, v250);
      }
    }

    sub_1C44A1E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_phoneNumber);
    if (v10)
    {
      sub_1C44026DC(v251);
      if (v252)
      {
        v253 = sub_1C4EFF0C8();
        sub_1C43FCE50(v253);
        v255 = *(v254 + 16);
        v256 = sub_1C4E2D7FC();
        v257(v256);
        v258 = sub_1C4416650();
        (v104)(v258);
        v259 = sub_1C4495360();
        v260(v259);
        v79 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_phoneNumber_predicate;
        sub_1C4E2D808();
        sub_1C4488504();
        v261 = sub_1C448F2CC();
        (v104)(v261);
        v104 = v439;
        sub_1C4E2D5E0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_source);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4460550(v262);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v396 = *(v439 + 16);
          v397 = sub_1C43FCEC0();
          sub_1C44C9240(v397, v398, v399, v439);
          v104 = v400;
        }

        sub_1C4E2C928();
        v105 = v428;
        if (v137)
        {
          v401 = sub_1C43FFD98(v263);
          sub_1C44C9240(v401, v402, v403, v104);
          v104 = v404;
        }

        sub_1C4433F7C();
        sub_1C4A948D8(v425, v264);
      }
    }

    sub_1C44A1E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_inferredSemanticLabel);
    if (v10)
    {
      sub_1C44026DC(v265);
      if (v266)
      {
        v267 = sub_1C4EFF0C8();
        sub_1C43FCE50(v267);
        v269 = *(v268 + 16);
        v270 = sub_1C4E2D7FC();
        v271(v270);
        v272 = sub_1C4416650();
        (v104)(v272);
        v273 = sub_1C4495360();
        v274(v273);
        v79 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_inferredSemanticLabel_predicate;
        sub_1C4E2D808();
        sub_1C4460954();
        v275 = sub_1C448F2CC();
        (v104)(v275);
        v104 = v439;
        sub_1C4E2D5E0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_source);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4460550(v276);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v405 = *(v439 + 16);
          v406 = sub_1C43FCEC0();
          sub_1C44C9240(v406, v407, v408, v439);
          v104 = v409;
        }

        sub_1C4E2C928();
        v105 = v428;
        if (v137)
        {
          v410 = sub_1C43FFD98(v277);
          sub_1C44C9240(v410, v411, v412, v104);
          v104 = v413;
        }

        sub_1C4433F7C();
        sub_1C4A948D8(v426, v278);
      }
    }

    if (*(v104 + 16))
    {
      v279 = sub_1C4EFF0C8();
      sub_1C43FCE50(v279);
      (*(v280 + 16))(v427, v436);
      v281 = sub_1C448879C(v80[5]);
      v282(v281, v105);
      v283 = sub_1C448879C(v80[6]);
      v284(v283, v435);
      sub_1C4E2E9FC();
      sub_1C4EFEBB8();
      sub_1C4EFD2F8();
      sub_1C43FC1CC();
      sub_1C449ED64(v79 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_source, v427 + v80[9]);
      sub_1C4EF9AE8();
      sub_1C4E2E4D4();
      sub_1C4E2CAE4(v285);
      sub_1C4E2E9E4(v286, v287);
      *(v427 + v288) = v430;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v293 = *(v104 + 16);
        v294 = sub_1C43FCEC0();
        sub_1C44C9240(v294, v295, v296, v104);
        v104 = v297;
      }

      sub_1C4E2C928();
      if (v137)
      {
        v298 = sub_1C43FFD98(v289);
        sub_1C44C9240(v298, v299, v300, v104);
      }

      v290 = sub_1C43FE5EC();
      v291(v290);
      (*(v431 + 8))(v105, v433);
      sub_1C4433F7C();
      sub_1C4A948D8(v427, v292);
    }

    else
    {
      (*(v437 + 8))(v435, v438);
      (*(v431 + 8))(v105, v433);
    }
  }

  sub_1C440431C();
  sub_1C43FBC80();
}

uint64_t sub_1C4DE186C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001C4FC7FF0 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6867756F726F6874 && a2 == 0xEC00000065726166;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000019 && 0x80000001C4FC8B30 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F726F6854627573 && a2 == 0xEF65726166686775;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000015 && 0x80000001C4FC8010 == a2;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6C61636F4C627573 && a2 == 0xEB00000000797469;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000012 && 0x80000001C4FC8030 == a2;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x7974696C61636F6CLL && a2 == 0xE800000000000000;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001FLL && 0x80000001C4FC8050 == a2;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000015 && 0x80000001C4FB0B70 == a2;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD00000000000001CLL && 0x80000001C4FC8070 == a2;
                            if (v18 || (sub_1C4F02938() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000012 && 0x80000001C4FB0B50 == a2;
                              if (v19 || (sub_1C4F02938() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000014 && 0x80000001C4FC8090 == a2;
                                if (v20 || (sub_1C4F02938() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6F436C6174736F70 && a2 == 0xEA00000000006564;
                                  if (v21 || (sub_1C4F02938() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000011 && 0x80000001C4FC80B0 == a2;
                                    if (v22 || (sub_1C4F02938() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
                                      if (v23 || (sub_1C4F02938() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000018 && 0x80000001C4FC80D0 == a2;
                                        if (v24 || (sub_1C4F02938() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x746E756F436F7369 && a2 == 0xEE0065646F437972;
                                          if (v25 || (sub_1C4F02938() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
                                            if (v26 || (sub_1C4F02938() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 1701667182 && a2 == 0xE400000000000000;
                                              if (v27 || (sub_1C4F02938() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0xD000000000000016 && 0x80000001C4FC7F20 == a2;
                                                if (v28 || (sub_1C4F02938() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572;
                                                  if (v29 || (sub_1C4F02938() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD000000000000015 && 0x80000001C4FC7F60 == a2;
                                                    if (v30 || (sub_1C4F02938() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
                                                      if (v31 || (sub_1C4F02938() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD00000000000001FLL && 0x80000001C4FC8EC0 == a2;
                                                        if (v32 || (sub_1C4F02938() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else if (a1 == 0xD000000000000015 && 0x80000001C4FC8EE0 == a2)
                                                        {

                                                          return 28;
                                                        }

                                                        else
                                                        {
                                                          v34 = sub_1C4F02938();

                                                          if (v34)
                                                          {
                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            return 29;
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
    }
  }
}

unint64_t sub_1C4DE2104(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
    case 23:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x6867756F726F6874;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0x6F726F6854627573;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x6C61636F4C627573;
      break;
    case 9:
    case 14:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x7974696C61636F6CLL;
      break;
    case 11:
    case 27:
      result = 0xD00000000000001FLL;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0xD00000000000001CLL;
      break;
    case 15:
      result = 0xD000000000000014;
      break;
    case 16:
      result = 0x6F436C6174736F70;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0x7972746E756F63;
      break;
    case 19:
      result = 0xD000000000000018;
      break;
    case 20:
      result = 0x746E756F436F7369;
      break;
    case 21:
      result = 0x6572705F656D616ELL;
      break;
    case 22:
      result = 1701667182;
      break;
    case 24:
      result = 0x6464416C69616D65;
      break;
    case 25:
      result = 0xD000000000000015;
      break;
    case 26:
      result = 0x6D754E656E6F6870;
      break;
    case 28:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4DE2460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DE186C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DE2488(uint64_t a1)
{
  v2 = sub_1C4E28800();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DE24C4(uint64_t a1)
{
  v2 = sub_1C4E28800();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DE2500()
{
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_entityClass;
  v2 = sub_1C4EFD548();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C448D818(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_source);
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_thoroughfare_predicate;
  v5 = sub_1C4EFEEF8();
  sub_1C4424878(v5);
  v7 = *(v6 + 8);
  v7(v0 + v4, v1);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_thoroughfare);
  v8 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_subThoroughfare_predicate);
  (v7)(v8);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_subThoroughfare);
  v9 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_subLocality_predicate);
  (v7)(v9);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_subLocality);
  v10 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_locality_predicate);
  (v7)(v10);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_locality);
  v11 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_subAdministrativeArea_predicate);
  (v7)(v11);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_subAdministrativeArea);
  v12 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_administrativeArea_predicate);
  (v7)(v12);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_administrativeArea);
  v13 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_postalCode_predicate);
  (v7)(v13);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_postalCode);
  v14 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_country_predicate);
  (v7)(v14);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_country);
  v15 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_isoCountryCode_predicate);
  (v7)(v15);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_isoCountryCode);
  v16 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_name_predicate);
  (v7)(v16);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_name);
  v17 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_emailAddress_predicate);
  (v7)(v17);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_emailAddress);
  v18 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_phoneNumber_predicate);
  (v7)(v18);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_phoneNumber);
  v19 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_inferredSemanticLabel_predicate);
  (v7)(v19);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_inferredSemanticLabel);
  return v0;
}

void sub_1C4DE27C8()
{
  sub_1C4D889F8();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = type metadata accessor for Source();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_1C4EFEEF8();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1C4DE2940()
{
  sub_1C43FE96C();
  v5 = v0;
  v87 = sub_1C447E4C8();
  v6 = sub_1C43FCDF8(v87);
  v86 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBF38();
  v83 = v20;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBF38();
  v84 = v22;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FD230();
  v85 = v24;
  v25 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v25);
  v27 = *(v26 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBD64();
  v29 = sub_1C456902C(&qword_1EC0C83D8, &qword_1C4F77468);
  sub_1C4412DFC(v29);
  v31 = v30;
  v33 = *(v32 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C4401780();
  v36 = *(v0 + 24);
  v35 = *(v0 + 32);
  sub_1C4E2C908();
  sub_1C4E28800();
  sub_1C4475644();
  sub_1C4F02BF8();
  v37 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_predicate;
  sub_1C44169A0();
  sub_1C47CBF50(v5 + v37, v3);
  sub_1C441ACD0();
  sub_1C4E276B4(v38, v39);
  sub_1C4F02778();
  sub_1C446F170(v3, &qword_1EC0B9A08, &unk_1C4F107B0);
  if (v1)
  {
    (*(v31 + 8))(v2, v4);
  }

  else
  {
    sub_1C446257C(1);
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v40, v41);
    sub_1C4E2E924();
    sub_1C4E2E0F4();
    sub_1C4F027E8();
    sub_1C441483C();
    type metadata accessor for Source();
    sub_1C4413E34();
    sub_1C4E276B4(v42, v43);
    sub_1C4E2E924();
    sub_1C4E2E0F4();
    sub_1C4F027E8();
    v44 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_thoroughfare_predicate;
    sub_1C4460954();
    (*(v86 + 16))(v85, v5 + v44, v87);
    sub_1C4E2E2E0();
    sub_1C4E2D448();
    sub_1C4F027E8();
    v45 = *(v86 + 8);
    v46 = sub_1C43FD2BC();
    v45(v46);
    sub_1C4E2CB60(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_thoroughfare);
    sub_1C4E2E90C();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C43FBEF8();
    sub_1C4F02738();

    sub_1C4488504();
    v48 = sub_1C4E2E370();
    v49(v48);
    sub_1C447E2B8();
    sub_1C4E2D448();
    sub_1C4F027E8();
    (v45)(v84, v87);
    sub_1C4E2CB60(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_subThoroughfare);
    sub_1C4455A00();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C43FBEF8();
    sub_1C4F02738();

    sub_1C4429150();
    v50 = sub_1C4E2E370();
    v51(v50);
    sub_1C4E2D448();
    sub_1C4F027E8();
    (v45)(v83, v87);
    sub_1C4E2CB60(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_subLocality);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C43FBEF8();
    sub_1C4E2D50C();
    sub_1C4F02738();

    sub_1C4E2DA48();
    sub_1C440D164();
    v52 = sub_1C4E2E370();
    v53(v52);
    sub_1C4E2D448();
    sub_1C4E2D50C();
    sub_1C4F027E8();
    v54 = sub_1C43FD2BC();
    v45(v54);
    sub_1C4E2CB60(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_locality);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C43FBEF8();
    sub_1C4E2D50C();
    sub_1C4F02738();

    sub_1C4E2DA48();
    sub_1C440D164();
    v55 = sub_1C4486050();
    v56(v55);
    sub_1C4488AB8();
    sub_1C4E2DA3C();
    v57();
    sub_1C4E2CB60(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_subAdministrativeArea);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4E2CCB4();

    sub_1C4E2DA48();
    sub_1C440D164();
    v58 = sub_1C4486050();
    v59(v58);
    sub_1C4488AB8();
    sub_1C4E2DA3C();
    v60();
    sub_1C4E2CB60(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_administrativeArea);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4E2CCB4();

    sub_1C4E2DA48();
    sub_1C440D164();
    v61 = sub_1C4486050();
    v62(v61);
    sub_1C4488AB8();
    sub_1C4E2DA3C();
    v63();
    sub_1C4E2CB60(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_postalCode);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4E2CCB4();

    sub_1C4E2DA48();
    sub_1C440D164();
    v64 = sub_1C4486050();
    v65(v64);
    sub_1C4488AB8();
    sub_1C4E2DA3C();
    v66();
    sub_1C4E2CB60(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_country);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4E2CCB4();

    sub_1C4E2DA48();
    sub_1C440D164();
    v67 = sub_1C4486050();
    v68(v67);
    sub_1C4488AB8();
    sub_1C4E2DA3C();
    v69();
    sub_1C4E2CB60(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_isoCountryCode);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4E2CCB4();

    sub_1C4E2DA48();
    sub_1C440D164();
    v70 = sub_1C4486050();
    v71(v70);
    sub_1C4488AB8();
    sub_1C4E2DA3C();
    v72();
    sub_1C4E2CB60(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_name);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4E2CCB4();

    sub_1C4E2DA48();
    sub_1C440D164();
    v73 = sub_1C4486050();
    v74(v73);
    sub_1C4488AB8();
    sub_1C4E2DA3C();
    v75();
    sub_1C4E2CB60(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_emailAddress);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4E2CCB4();

    sub_1C4E2DA48();
    sub_1C440D164();
    v76 = sub_1C4486050();
    v77(v76);
    sub_1C4488AB8();
    sub_1C4E2DA3C();
    v78();
    sub_1C4E2CB60(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_phoneNumber);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4E2CCB4();

    sub_1C4E2DA48();
    sub_1C440D164();
    v79 = sub_1C4486050();
    v80(v79);
    sub_1C441599C(27);
    sub_1C4488AB8();
    sub_1C4E2DA3C();
    v81();
    sub_1C4E2CB60(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_inferredSemanticLabel);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C43FBEF8();
    sub_1C4E2D50C();
    sub_1C4F02738();
    v82 = sub_1C4E2E2D0();
    v47(v82, v4);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4DE3634()
{
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v1, v2, v3, v4);
  sub_1C4EFD1D8();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v5 = type metadata accessor for Source();
  sub_1C4E2EB4C(v5, qword_1EDDFED10);
  sub_1C4EFE5A8();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_thoroughfare);
  sub_1C4EFE748();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_subThoroughfare);
  sub_1C4EFE4B8();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_subLocality);
  sub_1C4EFEDE8();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_locality);
  sub_1C4EFEA58();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_subAdministrativeArea);
  sub_1C4EFE8D8();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_administrativeArea);
  sub_1C4EFE378();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_postalCode);
  sub_1C4EFECD8();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_country);
  sub_1C4EFE688();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_isoCountryCode);
  sub_1C4EFEBF8();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_name);
  sub_1C4EFE518();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_emailAddress);
  sub_1C4EFE478();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_phoneNumber);
  sub_1C4EFEA48();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_inferredSemanticLabel);
  return v0;
}

void sub_1C4DE385C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = sub_1C4EFEEF8();
  v27 = sub_1C43FCDF8(v26);
  v105 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C4458614();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C445C308();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C44588C8();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C44EB944();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FD230();
  v107 = v43;
  v44 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v44);
  v46 = *(v45 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBC74();
  v108 = v48;
  v111 = sub_1C456902C(&qword_1EC0C8748, &qword_1C4F77698);
  sub_1C43FCDF8(v111);
  v109 = v49;
  v51 = *(v50 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBC74();
  a10 = v53;
  v106 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_predicate;
  sub_1C43FCF64();
  v110 = v26;
  sub_1C440BAA8(v54, v55, v56, v26);
  sub_1C4EFD1D8();
  v57 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v58 = type metadata accessor for Source();
  v59 = sub_1C442B738(v58, qword_1EDDFED10);
  sub_1C449ED64(v59, v20 + v57);
  v104 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_thoroughfare_predicate;
  sub_1C4EFE5A8();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_thoroughfare);
  v103[1] = v60;
  v103[0] = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_subThoroughfare_predicate;
  sub_1C4EFE748();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_subThoroughfare);
  v101 = v61;
  sub_1C4EFE4B8();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_subLocality);
  sub_1C4E2DA10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_locality_predicate);
  sub_1C4EFEDE8();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_locality);
  sub_1C4E2DA10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_subAdministrativeArea_predicate);
  sub_1C4EFEA58();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_subAdministrativeArea);
  sub_1C4E2DA10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_administrativeArea_predicate);
  sub_1C4EFE8D8();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_administrativeArea);
  sub_1C4E2DA10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_postalCode_predicate);
  sub_1C4EFE378();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_postalCode);
  sub_1C4E2DA10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_country_predicate);
  sub_1C4EFECD8();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_country);
  sub_1C4E2DA10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_isoCountryCode_predicate);
  sub_1C4EFE688();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_isoCountryCode);
  sub_1C4E2DA10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_name_predicate);
  sub_1C4EFEBF8();
  v62 = (v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_name);
  *v62 = 0;
  v62[1] = 0;
  sub_1C4E2DA10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_emailAddress_predicate);
  sub_1C4EFE518();
  v63 = (v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_emailAddress);
  *v63 = 0;
  v63[1] = 0;
  sub_1C4E2DA10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_phoneNumber_predicate);
  sub_1C4EFE478();
  v64 = (v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_phoneNumber);
  *v64 = 0;
  v64[1] = 0;
  v65 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_inferredSemanticLabel_predicate;
  sub_1C4EFEA48();
  v66 = (v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_inferredSemanticLabel);
  *v66 = 0;
  v66[1] = 0;
  v67 = v25;
  v69 = v25[3];
  v68 = v25[4];
  v113 = v67;
  sub_1C4417F50(v67, v69);
  sub_1C4E28800();
  sub_1C4F02BC8();
  if (v21)
  {

    sub_1C440962C(v113);
  }

  else
  {
    v112 = v20;
    v114[0] = 0;
    sub_1C441ACD0();
    v72 = sub_1C4E276B4(v70, v71);
    sub_1C4E2CCF4();
    sub_1C4F02658();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C449A970(v108, v20 + v106);
    swift_endAccess();
    sub_1C4402064(3);
    sub_1C4E2CCF4();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    v73 = *(v105 + 40);
    (v73)(v20 + v104, v107, v110);
    swift_endAccess();
    sub_1C442F858(4);
    v74 = sub_1C4E2EBEC();
    v105 += 40;
    sub_1C4425188(v74, v75);
    sub_1C4402064(5);
    sub_1C4E2E414();
    sub_1C4E2CCF4();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C4E2E2B0();
    v73();
    swift_endAccess();
    sub_1C442F858(6);
    v76 = sub_1C4E2EBEC();
    sub_1C4425188(v76, v77);
    sub_1C4402064(7);
    sub_1C4E2CCF4();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C4E2E2B0();
    v73();
    swift_endAccess();
    sub_1C442F858(8);
    v78 = sub_1C4E2EBEC();
    sub_1C4425188(v78, v79);
    sub_1C4402064(9);
    sub_1C4E2CCF4();
    sub_1C4F026C8();
    sub_1C4E2D468();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C4E2E2B0();
    v73();
    swift_endAccess();
    sub_1C442F858(10);
    v80 = sub_1C4E2EBEC();
    sub_1C4418DB0(v80, v81, &a16);
    sub_1C4402064(11);
    sub_1C440E3C8();
    sub_1C4E2CCF4();
    sub_1C4F026C8();
    sub_1C4E2DE08();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C450B3C0(&a17);
    v73();
    swift_endAccess();
    v82 = sub_1C4E2CBB4(12);
    sub_1C4418DB0(v82, v83, &a13);
    sub_1C4402064(13);
    sub_1C4E2CA5C(&a14);
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C450B3C0(&a14);
    v73();
    swift_endAccess();
    v84 = sub_1C4E2CBB4(14);
    sub_1C4418DB0(v84, v85, &a10);
    sub_1C4402064(15);
    sub_1C4E2CA5C(&a11);
    sub_1C44BBF0C();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C450B3C0(&a11);
    v73();
    swift_endAccess();
    v86 = sub_1C4E2CBB4(16);
    sub_1C4418DB0(v86, v87, &v116);
    sub_1C4402064(17);
    sub_1C4E2CA5C(&v117);
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C450B3C0(&v117);
    v73();
    swift_endAccess();
    v88 = sub_1C4E2CBB4(18);
    sub_1C4418DB0(v88, v89, &v105);
    sub_1C4402064(19);
    sub_1C4E2CA5C(&v111);
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C450B3C0(&v111);
    v73();
    swift_endAccess();
    v90 = sub_1C4E2CBB4(20);
    sub_1C4418DB0(v90, v91, &v107);
    sub_1C4402064(21);
    sub_1C4E2CA5C(&v112);
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C450B3C0(&v112);
    v73();
    swift_endAccess();
    v92 = sub_1C4E2CBB4(22);
    sub_1C4418DB0(v92, v93, &v101);
    sub_1C4402064(23);
    sub_1C4E2CA5C(&v113);
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C450B3C0(&v113);
    v73();
    swift_endAccess();
    v94 = sub_1C4E2CBB4(24);
    sub_1C4418DB0(v94, v95, &v102);
    sub_1C4402064(25);
    sub_1C4E2CA5C(v114);
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C450B3C0(v114);
    v73();
    swift_endAccess();
    v96 = sub_1C4E2CBB4(26);
    sub_1C4418DB0(v96, v97, v103);
    sub_1C4402064(27);
    sub_1C4E2CA5C(&v115);
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C450B3C0(&v115);
    v73();
    swift_endAccess();
    sub_1C4E2CBB4(28);
    sub_1C43FC1CC();
    v98 = sub_1C4417840();
    v99(v98, v111);
    v100 = v66[1];
    *v66 = v65;
    v66[1] = v72;

    sub_1C440962C(v113);
  }

  sub_1C4507BC8();
  sub_1C43FBC80();
}

uint64_t sub_1C4DE4498@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4DE3830(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4DE44E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  v15 = v14;
  v160 = v16;
  v161 = v17;
  v155 = type metadata accessor for EntityTriple(0);
  v18 = sub_1C43FCDF8(v155);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBFDC();
  v157 = v21;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C44AE144(v24, v25, v26, v27, v28, v29, v30, v31, v147);
  v152 = sub_1C4EFD548();
  v32 = sub_1C43FCDF8(v152);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBCC4();
  v39 = v38 - v37;
  v40 = sub_1C4EFF8A8();
  v41 = sub_1C44348EC(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C442599C();
  v44 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v44);
  v46 = *(v45 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C4401780();
  v48 = sub_1C4EFEEF8();
  v49 = sub_1C43FCDF8(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBCC4();
  sub_1C444BFE4();
  v158 = *v15;
  v54 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_predicate;
  sub_1C44169A0();
  sub_1C47CBF50(v11 + v54, v13);
  sub_1C4410BC4(v13);
  if (v55)
  {
    sub_1C446F170(v13, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v56 = sub_1C43FFB2C();
    sub_1C4414040(v56, v57);
  }

  else
  {
    v150 = v51;
    v159 = v10;
    v151 = v48;
    (*(v51 + 32))(v10, v13, v48);
    v58 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_entityClass;
    v60 = *(v34 + 16);
    v59 = v34 + 16;
    v60(v39, v11 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_entityClass, v152);
    sub_1C4EFF838();
    v61 = *(v11 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierId + 8);
    v62 = v12;
    v63 = v11;
    if (v61)
    {
      v64 = *(v11 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierId);
      v65 = HIBYTE(v61) & 0xF;
      if ((v61 & 0x2000000000000000) == 0)
      {
        v65 = v64 & 0xFFFFFFFFFFFFLL;
      }

      v66 = v155;
      if (v65)
      {
        v67 = sub_1C4EFF0C8();
        sub_1C43FCE50(v67);
        (*(v68 + 16))(v148, v160);
        v69 = *(v150 + 16);
        v59 = v63;
        v69(v148 + v155[5], v159, v151);
        sub_1C448E184();
        v153 = v12;
        v71(v148 + v70, v12, a10);
        v72 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierId_predicate;
        sub_1C4488504();
        v69(v148 + v155[7], v63 + v72, v151);
        sub_1C449ED64(v63 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_source, v148 + v155[9]);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v73 = (v148 + v155[8]);
        *v73 = v64;
        v73[1] = v61;
        sub_1C4E2D5C8(v161, (v148 + v155[10]));
        *(v148 + v74) = v75;
        *(v148 + v155[12]) = v158;
        v76 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4401EC4(v76, v77, v78, MEMORY[0x1E69E7CC0]);
        v80 = v79;
        v82 = *(v79 + 16);
        v81 = *(v79 + 24);
        if (v82 >= v81 >> 1)
        {
          v134 = sub_1C4413F5C(v81);
          sub_1C44C9240(v134, v135, v136, v80);
          v80 = v137;
        }

        *(v80 + 16) = v82 + 1;
        sub_1C43FCC40();
        v83 = sub_1C43FFF1C();
        sub_1C4A948D8(v83, v84);
        v85 = v151;
        v62 = v153;
        sub_1C4458608();
      }

      else
      {
        v80 = MEMORY[0x1E69E7CC0];
        v85 = v151;
        sub_1C4458608();
      }
    }

    else
    {
      v80 = MEMORY[0x1E69E7CC0];
      v85 = v151;
      sub_1C4458608();
      v66 = v155;
    }

    v86 = *(v63 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierType + 8);
    if (v86 && (v87 = *(v63 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierType), sub_1C4E2D5D4(), v89))
    {
      v156 = v88;
      v90 = sub_1C4EFF0C8();
      sub_1C43FCE50(v90);
      (*(v91 + 16))(v149, v160);
      v92 = *(v59 + 16);
      v92(v149 + v66[5], v159, v85);
      sub_1C448E184();
      v154 = v62;
      v94(v149 + v93, v62, a10);
      v95 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierType_predicate;
      sub_1C4460954();
      v92(v149 + v66[7], v63 + v95, v85);
      sub_1C449ED64(v63 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_source, v149 + v66[9]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v96 = (v149 + v66[8]);
      *v96 = v156;
      v96[1] = v86;
      sub_1C4E2D5C8(v161, (v149 + v66[10]));
      *(v149 + v97) = v98;
      *(v149 + v66[12]) = v158;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v138 = *(v80 + 16);
        v139 = sub_1C43FCEC0();
        sub_1C44C9240(v139, v140, v141, v80);
        v80 = v142;
      }

      v100 = *(v80 + 16);
      v99 = *(v80 + 24);
      v101 = v157;
      v62 = v154;
      v59 = v150;
      if (v100 >= v99 >> 1)
      {
        v143 = sub_1C4413F5C(v99);
        sub_1C44C9240(v143, v144, v145, v80);
        v80 = v146;
      }

      v85 = v151;
      *(v80 + 16) = v100 + 1;
      sub_1C43FCC40();
      sub_1C4A948D8(v149, v102 + v103 * v100);
    }

    else
    {
      v101 = v157;
    }

    if (*(v80 + 16))
    {
      v104 = sub_1C4EFF0C8();
      sub_1C43FCE50(v104);
      (*(v105 + 16))(v101, v160);
      (*(v59 + 16))(v101 + v66[5], v159, v85);
      sub_1C448E184();
      v107(v101 + v106, v62, a10);
      v108 = v101 + v66[7];
      sub_1C4EFEBB8();
      v109 = v63 + v58;
      sub_1C4EFD2F8();
      sub_1C44106D4();
      sub_1C449ED64(v63 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_source, v101 + v66[9]);
      sub_1C4EF9AE8();
      v110 = (v101 + v66[8]);
      *v110 = v63 + v58;
      v110[1] = v58;
      sub_1C4E2D5C8(v161, (v101 + v66[10]));
      *(v101 + v111) = v112;
      *(v101 + v66[12]) = v158;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v125 = *(v80 + 16);
        v126 = sub_1C43FCEC0();
        sub_1C44C9240(v126, v127, v128, v80);
        v80 = v129;
      }

      v114 = *(v80 + 16);
      v113 = *(v80 + 24);
      sub_1C4E2E824();
      if (v116)
      {
        v130 = sub_1C43FFD98(v115);
        sub_1C44C9240(v130, v131, v132, v80);
        v80 = v133;
      }

      v117 = sub_1C4E2E850();
      v118(v117);
      (*(v59 + 8))(v159, v85);
      *(v80 + 16) = v109;
      sub_1C43FCC40();
      sub_1C4A948D8(v101, v119 + v120 * v114);
    }

    else
    {
      v121 = sub_1C4E2E850();
      v122(v121);
      v123 = sub_1C4E2D45C();
      v124(v123, v85);
    }
  }

  sub_1C440431C();
  sub_1C43FBC80();
}

unint64_t sub_1C4DE4CFC(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
    case 6:
      result = 0x696669746E656469;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4DE4DE8(uint64_t a1)
{
  v2 = sub_1C4E28854();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DE4E24(uint64_t a1)
{
  v2 = sub_1C4E28854();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DE4E60()
{
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_entityClass;
  v2 = sub_1C4EFD548();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C448D818(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_source);
  v4 = sub_1C4EFEEF8();
  sub_1C4424878(v4);
  v6 = *(v5 + 8);
  v7 = sub_1C4460780();
  v6(v7);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierId);
  v8 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierType_predicate);
  v6(v8);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierType);
  return v0;
}

void sub_1C4DE4F98()
{
  sub_1C4D889F8();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = type metadata accessor for Source();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_1C4EFEEF8();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1C4DE50E4()
{
  sub_1C43FE96C();
  v6 = sub_1C4E2D990();
  v7 = sub_1C4425688(v6);
  v45 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD230();
  v44 = v12;
  v13 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBD64();
  v17 = sub_1C456902C(&qword_1EC0C83E8, &qword_1C4F77470);
  sub_1C43FCDF8(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C440A474();
  v24 = *(v0 + 24);
  v23 = *(v0 + 32);
  sub_1C4E2C908();
  sub_1C4E28854();
  sub_1C4475B58();
  sub_1C4F02BF8();
  v25 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_predicate;
  sub_1C4433D44();
  sub_1C47CBF50(v3 + v25, v5);
  sub_1C441ACD0();
  sub_1C4E276B4(v26, v27);
  sub_1C44CD968();
  sub_1C4F02778();
  sub_1C446F170(v5, &qword_1EC0B9A08, &unk_1C4F107B0);
  if (v1)
  {
    (*(v19 + 8))(v4, v17);
  }

  else
  {
    sub_1C44019B0(1);
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v28, v29);
    sub_1C4416C08();
    sub_1C4F027E8();
    sub_1C44343BC();
    type metadata accessor for Source();
    sub_1C4413E34();
    sub_1C4E276B4(v30, v31);
    sub_1C4F027E8();
    v32 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierId_predicate;
    sub_1C4418194();
    v43 = *(v45 + 16);
    v43(v44, v3 + v32, v2);
    sub_1C4E2DAF0();
    sub_1C44CD968();
    sub_1C4F027E8();
    v33 = *(v45 + 8);
    v33(v44, v2);
    v34 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierId);
    v35 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierId + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F02738();

    sub_1C4E2D16C();
    v36 = sub_1C4E2E528();
    (v43)(v36);
    sub_1C441599C(5);
    sub_1C44CD968();
    sub_1C4F027E8();
    v37 = sub_1C440BB4C();
    (v33)(v37);
    v38 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierType);
    v39 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierType + 8);
    sub_1C4E2E5E8(6);
    sub_1C44D71EC();
    sub_1C4F02738();
    v40 = *(v19 + 8);
    v41 = sub_1C4409A28();
    v42(v41);
  }

  sub_1C440E3AC();
  sub_1C43FBC80();
}

uint64_t sub_1C4DE55DC()
{
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v1, v2, v3, v4);
  sub_1C4EFD258();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v5 = type metadata accessor for Source();
  sub_1C4E2EB4C(v5, qword_1EDDFED10);
  sub_1C4EFE558();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierId);
  sub_1C4EFE658();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierType);
  return v0;
}

uint64_t sub_1C4DE56D0(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  a2(a1);
  return v7;
}

void sub_1C4DE5728()
{
  sub_1C43FE96C();
  v4 = v3;
  v5 = sub_1C4EFEEF8();
  v6 = sub_1C4425688(v5);
  v45 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  v44 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD230();
  v47 = v12;
  v13 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBC74();
  v48 = v17;
  v18 = sub_1C456902C(&qword_1EC0C8740, &qword_1C4F77690);
  v50 = sub_1C43FCDF8(v18);
  v20 = *(v19 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C444BFE4();
  v46 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_predicate;
  sub_1C43FCF64();
  sub_1C4D9A130(v22, v23, v24);
  sub_1C4EFD258();
  v25 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v26 = type metadata accessor for Source();
  v27 = sub_1C442B738(v26, qword_1EDDFED10);
  sub_1C449ED64(v27, v1 + v25);
  v28 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierId_predicate;
  sub_1C4EFE558();
  v29 = (v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierId);
  *v29 = 0;
  v29[1] = 0;
  v30 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierType_predicate;
  sub_1C4EFE658();
  v31 = (v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierType);
  *v31 = 0;
  v31[1] = 0;
  v32 = v4;
  v33 = v4[3];
  v34 = v4[4];
  v51 = v32;
  sub_1C4417F50(v32, v33);
  sub_1C4E28854();
  sub_1C4475550();
  sub_1C4F02BC8();
  if (v2)
  {
  }

  else
  {
    sub_1C441ACD0();
    sub_1C4E276B4(v35, v36);
    sub_1C44107C0();
    sub_1C4F02658();
    sub_1C4E2EB2C();
    sub_1C449A970(v48, v1 + v46);
    swift_endAccess();
    sub_1C44107C0();
    sub_1C4F026C8();
    v37 = v0;
    sub_1C4E2EB2C();
    v38 = *(v45 + 40);
    v38(v1 + v28, v47);
    swift_endAccess();
    sub_1C4E2DD70(4);
    v39 = sub_1C4F02618();
    sub_1C4425188(v39, v40);
    sub_1C4F026C8();
    sub_1C44D7E3C();
    v38(v1 + v30, v44);
    swift_endAccess();
    sub_1C4E2DD70(6);
    sub_1C4F02618();
    sub_1C4408DEC();
    v41 = sub_1C4401D04();
    v42(v41, v50);
    v43 = v31[1];
    *v31 = v37;
    v31[1] = v49;
  }

  sub_1C440962C(v51);
  sub_1C43FBC80();
}

uint64_t sub_1C4DE5C20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4DE56A4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4DE5C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE628();
  a19 = v26;
  a20 = v27;
  v252 = v21;
  v29 = v28;
  v257 = v30;
  v258 = v31;
  v262 = v32;
  v260 = sub_1C4EFF0C8();
  v33 = sub_1C43FCDF8(v260);
  v259 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FD2D8();
  v38 = sub_1C43FD2C8(v37);
  v39 = type metadata accessor for EntityTriple(v38);
  v40 = sub_1C43FFAE0(v39, &a12);
  v254 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FD230();
  sub_1C43FD2C8(v48);
  v49 = sub_1C4EFD548();
  v50 = sub_1C43FFAE0(v49, &a9);
  v52 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v50);
  sub_1C442599C();
  v55 = sub_1C4EFF8A8();
  v56 = sub_1C43FCDF8(v55);
  v263 = v57;
  v264 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C447F150();
  v61 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v62 = sub_1C43FBD18(v61);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v65);
  v67 = (v237 - v66);
  v68 = sub_1C4EFEEF8();
  v69 = sub_1C4412DFC(v68);
  v71 = v70;
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v69);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v74);
  sub_1C44144E4();
  v261 = *v29;
  v75 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_predicate;
  sub_1C44169A0();
  sub_1C47CBF50(v20 + v75, v67);
  sub_1C440175C(v67, 1, v25);
  if (v76)
  {
    sub_1C446F170(v67, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v77 = sub_1C43FFB2C();
    sub_1C4414040(v77, v78);
LABEL_42:
    sub_1C4507BC8();
    sub_1C44109F8();
    return;
  }

  v79 = *(v71 + 32);
  v255 = v23;
  v256 = v25;
  v239 = v71 + 32;
  v238 = v79;
  v79(v23, v67, v25);
  v80 = *(v52 + 16);
  v240 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_entityClass;
  v80(v22, v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_entityClass, v250);
  sub_1C4EFF838();
  v81 = MEMORY[0x1E69E7CC0];
  v266 = MEMORY[0x1E69E7CC0];
  v82 = *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_locationLabel + 8);
  v83 = v71;
  v250 = v71;
  v251 = v24;
  if (v82 && (sub_1C4416C2C((v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_locationLabel)), v84))
  {
    sub_1C440C668();
    v86 = *(v85 + 16);
    v87 = v247;
    sub_1C4E2E340();
    v237[1] = v88;
    v89();
    v90 = v253;
    v91 = v253[5];
    v92 = *(v83 + 16);
    sub_1C44588DC();
    v92();
    v93 = sub_1C448879C(v90[6]);
    v94(v93, v24);
    v95 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_locationLabel_predicate;
    v96 = v20;
    sub_1C440D164();
    (v92)(v87 + v90[7], v20 + v95, v83);
    sub_1C449ED64(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_source, v87 + v90[9]);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    sub_1C4E2EA14((v87 + v90[8]));
    v97 = (v87 + v90[10]);
    v67 = v258;
    *v97 = v262;
    v97[1] = v67;
    *(v87 + v90[11]) = v98;
    v99 = v261;
    *(v87 + v90[12]) = v261;
    v100 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4401EC4(v100, v101, v102, MEMORY[0x1E69E7CC0]);
    v81 = v103;
    v105 = *(v103 + 16);
    v104 = *(v103 + 24);
    if (v105 >= v104 >> 1)
    {
      v197 = sub_1C4405AF4(v104);
      sub_1C44C9240(v197, v198, v199, v81);
      v81 = v200;
    }

    *(v81 + 16) = v105 + 1;
    sub_1C4409B30(&a13);
    sub_1C4E2D66C(v106);
    sub_1C4E2E780(v107, v108);
    v266 = v81;
    v83 = v250;
  }

  else
  {
    sub_1C44755F0();
    v96 = v20;
    v99 = v261;
  }

  if (*(v96 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_latitude + 8))
  {
    sub_1C4416C2C((v96 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_latitude));
    if (v109)
    {
      sub_1C440C668();
      v111 = *(v110 + 16);
      sub_1C4E2E340();
      v247 = v112;
      v113();
      sub_1C4E2DC98(&a12);
      v114 = v83 + 16;
      v67 = *(v83 + 16);
      sub_1C44588DC();
      v67();
      sub_1C4486044(*(v99 + 24));
      sub_1C4E2E884();
      v115();
      sub_1C440D164();
      v116 = sub_1C4E2E504();
      (v67)(v116);
      sub_1C44755F0();
      sub_1C4E2EB0C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_source);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4E2DD40();
      sub_1C4E2EA14(v117);
      sub_1C4E2DC5C();
      sub_1C4E2E6C4(v118, v119);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v201 = *(v81 + 16);
        v202 = sub_1C43FCEC0();
        sub_1C44C9240(v202, v203, v204, v81);
        v81 = v205;
      }

      v121 = *(v81 + 16);
      v120 = *(v81 + 24);
      v83 = v250;
      v96 = v114;
      if (v121 >= v120 >> 1)
      {
        v206 = sub_1C4405AF4(v120);
        sub_1C44C9240(v206, v207, v208, v81);
        v81 = v209;
      }

      *(v81 + 16) = v121 + 1;
      sub_1C4409B30(&a13);
      sub_1C4E2D66C(v122);
      v123 = sub_1C443F1AC();
      sub_1C4A948D8(v123, v124);
      v266 = v81;
    }
  }

  if (*(v96 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_longitude + 8))
  {
    sub_1C4416C2C((v96 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_longitude));
    if (v125)
    {
      sub_1C440C668();
      v127 = *(v126 + 16);
      sub_1C4E2E340();
      v248 = v128;
      v129();
      sub_1C4E2DC98(&a12);
      v130 = v83 + 16;
      v67 = *(v83 + 16);
      sub_1C44588DC();
      v67();
      sub_1C4486044(*(v99 + 24));
      sub_1C4E2E884();
      v131();
      sub_1C440D164();
      v132 = sub_1C4E2E504();
      (v67)(v132);
      sub_1C44755F0();
      sub_1C4E2EB0C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_source);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4E2DD40();
      sub_1C4E2EA14(v133);
      sub_1C4E2DC5C();
      sub_1C4E2E6C4(v134, v135);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v210 = *(v81 + 16);
        v211 = sub_1C43FCEC0();
        sub_1C44C9240(v211, v212, v213, v81);
        v81 = v214;
      }

      v137 = *(v81 + 16);
      v136 = *(v81 + 24);
      v83 = v250;
      v96 = v130;
      if (v137 >= v136 >> 1)
      {
        v215 = sub_1C4405AF4(v136);
        sub_1C44C9240(v215, v216, v217, v81);
        v81 = v218;
      }

      *(v81 + 16) = v137 + 1;
      sub_1C4409B30(&a13);
      sub_1C4E2D66C(v138);
      sub_1C4A948D8(v249, v139);
      v266 = v81;
    }
  }

  v140 = *(v96 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_hasLocation);
  if (!v140)
  {
LABEL_35:
    v173 = v246;
    if (*(v81 + 16))
    {
      sub_1C4E2E8C0();
      v175 = *(v174 + 16);
      sub_1C446C204();
      v176();
      sub_1C4E2DFD0();
      v177 = sub_1C448879C(*(v83 + 20));
      v178(v177, v255, v256);
      sub_1C448879C(*(v83 + 24));
      sub_1C4E2E884();
      v179();
      sub_1C4E2E9FC();
      sub_1C4EFEBB8();
      v180 = v96 + v240;
      sub_1C4EFD2F8();
      sub_1C43FC1CC();
      v181 = sub_1C4E2DD28(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_source);
      sub_1C449ED64(v181, v173 + v182);
      sub_1C4EF9AE8();
      sub_1C4E2E4D4();
      *v183 = v262;
      v183[1] = v67;
      sub_1C4E2E9E4(*(v83 + 44), v184);
      *(v173 + v185) = v99;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v219 = *(v81 + 16);
        v220 = sub_1C43FCEC0();
        sub_1C44C9240(v220, v221, v222, v81);
        v81 = v223;
      }

      v187 = *(v81 + 16);
      v186 = *(v81 + 24);
      sub_1C44019A4();
      v189 = v250;
      v190 = v255;
      if (v170)
      {
        v224 = sub_1C43FFD98(v188);
        sub_1C44C9240(v224, v225, v226, v81);
        v81 = v227;
      }

      v191 = sub_1C4417840();
      v192(v191);
      (*(v189 + 8))(v190, v256);
      *(v81 + 16) = v180;
      sub_1C4409B30(&a13);
      sub_1C4E2D154(v81 + v193);
      sub_1C4A948D8(v173, v194);
    }

    else
    {
      (*(v263 + 8))(v251, v264);
      v195 = sub_1C4E2E498();
      v196(v195);
    }

    goto LABEL_42;
  }

  v265 = v99;

  sub_1C442FEF4();
  sub_1C4DE69B4();
  if (v21)
  {

    (*(v263 + 8))(v251, v264);
    v142 = sub_1C4E2E498();
    v143(v142);

    goto LABEL_42;
  }

  sub_1C4E2DB68(v141);
  if (!v144)
  {

    goto LABEL_35;
  }

  v252 = 0;
  v145 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3614(v145);
  sub_1C440C668();
  v147 = *(v146 + 16);
  sub_1C446C204();
  v148();
  v149 = *(v83 + 16);
  sub_1C442F834();
  v150 = v256;
  v151();
  (*(v263 + 16))(v244, v251, v264);
  v152 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_predicate;
  sub_1C440D164();
  v153 = v140 + v152;
  v154 = v243;
  sub_1C47CBF50(v153, v243);
  sub_1C43FD490(v154);
  if (!v76)
  {

    v258 = sub_1C4EFF048();
    v249 = v155;
    v156 = v253;
    v99 = v241;
    sub_1C449ED64(v96 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_source, v241 + v253[9]);
    sub_1C4EF9AE8();
    v158 = v157;
    sub_1C440C668();
    (*(v159 + 32))(v99, v245, v260);
    v160 = v150;
    v161 = v239;
    v162 = v150;
    v163 = v238;
    v238(v99 + v156[5], v242, v160);
    (*(v263 + 32))(v99 + v156[6], v244, v264);
    v163(v99 + v156[7], v243, v162);
    v164 = (v99 + v156[8]);
    v165 = v249;
    *v164 = v258;
    v164[1] = v165;
    v166 = (v99 + v156[10]);
    *v166 = v262;
    v166[1] = v67;
    *(v99 + v156[11]) = v158;
    LOBYTE(v165) = v261;
    *(v99 + v156[12]) = v261;
    LOBYTE(v99) = v165;
    v81 = v266;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v228 = *(v81 + 16);
      v229 = sub_1C43FCEC0();
      sub_1C44C9240(v229, v230, v231, v81);
      v81 = v232;
    }

    v168 = *(v81 + 16);
    v167 = *(v81 + 24);
    sub_1C44019A4();
    if (v170)
    {
      v233 = sub_1C43FFD98(v169);
      sub_1C44C9240(v233, v234, v235, v81);
      v81 = v236;
    }

    *(v81 + 16) = v161;
    sub_1C4409B30(&a13);
    sub_1C4E2D154(v81 + v171);
    sub_1C4A948D8(v241, v172);
    goto LABEL_35;
  }

  __break(1u);
}

void sub_1C4DE69B4()
{
  sub_1C43FE628();
  v4 = v1;
  v5 = v0;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for EntityTriple(0);
  v13 = sub_1C4412DFC(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  v19 = *v7;
  v72 = MEMORY[0x1E69E7CC0];
  v64 = v20;
  if (*(v5 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_hasAddress))
  {
    v21 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_entityIdentifier;
    v69 = v19;

    sub_1C4DE04CC(v11, v9, v5 + v21, &v69, v22, v23, v24, v25, v60, v61);
    if (v4)
    {

      goto LABEL_22;
    }

    sub_1C49D3614(v26);
  }

  v68 = v5;
  v27 = *(v5 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_identifier);
  if (v27)
  {
    v62 = v2;
    v63 = v18;
    v66 = v11;
    v28 = sub_1C4428DA0();
    v65 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_entityIdentifier;
    v18 = v27 & 0xC000000000000001;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    for (i = 0; ; ++i)
    {
      if (v28 == i)
      {
        v36 = v19;

        v2 = v62;
        v18 = v63;
        v11 = v66;
        goto LABEL_17;
      }

      if (v18)
      {
        MEMORY[0x1C6940F90](i, v27);
      }

      else
      {
        if (i >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v30 = *(v27 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      v70 = v19;
      sub_1C4DE44E8(v66, v9, v68 + v65, &v70, v31, v32, v33, v34, v60, v62);
      if (v4)
      {

        goto LABEL_21;
      }

      sub_1C49D3614(v35);
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v51 = *(v27 + 16);
    v52 = sub_1C43FCEC0();
    sub_1C44C9240(v52, v53, v54, v27);
    v27 = v55;
LABEL_26:
    sub_1C4414030();
    if (v48)
    {
      v56 = sub_1C43FFD98(v47);
      sub_1C44C9240(v56, v57, v58, v27);
      v27 = v59;
    }

    *(v27 + 16) = v19;
    v49 = *(v64 + 80);
    sub_1C43FF9D4();
    sub_1C4A948D8(v18, v50 + *(v64 + 72) * v28);
    goto LABEL_22;
  }

  v36 = v19;
LABEL_17:
  if (!*(v68 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_hasLatLong))
  {
LABEL_24:
    v27 = v72;
    if (!*(v72 + 16))
    {
      goto LABEL_22;
    }

    v39 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_entityIdentifier;
    v40 = sub_1C4EFF0C8();
    sub_1C43FCE50(v40);
    v28 = v68;
    (*(v41 + 16))(v18, v68 + v39);
    v42 = v18 + v2[5];
    sub_1C4EFEBB8();
    v19 = sub_1C4EFD2F8();
    v67 = v43;
    sub_1C449ED64(v68 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_source, v18 + v2[9]);
    sub_1C4EF9AE8();
    sub_1C4429130();
    sub_1C4EFF888();
    v44 = v18 + v2[7];
    sub_1C4EFEC38();
    v45 = (v18 + v2[8]);
    *v45 = v19;
    v45[1] = v67;
    v46 = (v18 + v2[10]);
    *v46 = v11;
    v46[1] = v9;
    *(v18 + v2[11]) = v3;
    *(v18 + v2[12]) = v36;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_26;
    }

    goto LABEL_31;
  }

  v37 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_entityIdentifier;
  v71 = v36;

  v38 = sub_1C4DE5C70(v11, v9, v68 + v37, &v71);
  if (!v4)
  {
    sub_1C49D3614(v38);

    goto LABEL_24;
  }

LABEL_21:

LABEL_22:
  sub_1C4402144();
  sub_1C44109F8();
}

uint64_t sub_1C4DE6D90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000017 && 0x80000001C4FC80F0 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F697461636F6CLL && a2 == 0xED00006C6562614CLL;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000012 && 0x80000001C4FC8890 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000013 && 0x80000001C4FC88B0 == a2;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x7461636F4C736168 && a2 == 0xEB000000006E6F69)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1C4F02938();

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

unint64_t sub_1C4DE70BC(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x656475746974616CLL;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0x64757469676E6F6CLL;
      break;
    case 9:
      result = 0x7461636F4C736168;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4DE7208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DE6D90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DE7230(uint64_t a1)
{
  v2 = sub_1C4E288A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DE726C(uint64_t a1)
{
  v2 = sub_1C4E288A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DE72A8()
{
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_entityClass;
  v2 = sub_1C4EFD548();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C448D818(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_source);
  v4 = sub_1C4EFEEF8();
  sub_1C4424878(v4);
  v6 = *(v5 + 8);
  v7 = sub_1C4460780();
  v6(v7);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_locationLabel);
  v8 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_latitude_predicate);
  v6(v8);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_latitude);
  v9 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_longitude_predicate);
  v6(v9);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_longitude);
  v10 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_hasLocation);

  return v0;
}

void sub_1C4DE7414()
{
  sub_1C4D889F8();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = type metadata accessor for Source();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_1C4EFEEF8();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1C4DE7570()
{
  sub_1C43FE96C();
  v3 = v0;
  v4 = sub_1C447E4C8();
  v5 = sub_1C4425688(v4);
  v57 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD230();
  sub_1C445BEF4(v11);
  v12 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v12);
  v14 = *(v13 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4440AD4();
  v16 = sub_1C456902C(&qword_1EC0C83F8, &qword_1C4F77478);
  sub_1C43FCDF8(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C4401780();
  v23 = *(v0 + 24);
  v22 = *(v0 + 32);
  sub_1C4E2C908();
  sub_1C4E288A8();
  sub_1C4475644();
  sub_1C4F02BF8();
  v24 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_predicate;
  sub_1C44169A0();
  v58 = v3;
  sub_1C47CBF50(v3 + v24, v2);
  sub_1C441ACD0();
  sub_1C4E276B4(v25, v26);
  sub_1C44CD968();
  sub_1C4F02778();
  if (v1)
  {
    sub_1C446F170(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
  }

  else
  {
    sub_1C446F170(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C446257C(1);
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v30, v31);
    sub_1C4E2D1E4();
    sub_1C4F027E8();
    sub_1C441483C();
    type metadata accessor for Source();
    sub_1C4413E34();
    sub_1C4E276B4(v32, v33);
    sub_1C4E2D1E4();
    sub_1C4F027E8();
    sub_1C4460954();
    v34 = *(v57 + 16);
    v35 = sub_1C4E2D188();
    v56 = v36;
    v36(v35);
    sub_1C4E2E2E0();
    sub_1C4434510();
    sub_1C4F027E8();
    v37 = *(v57 + 8);
    v38 = sub_1C440D510();
    v39(v38);
    v40 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_locationLabel);
    v41 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_locationLabel + 8);
    sub_1C4E2E90C();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4E2D1E4();
    sub_1C4F02738();
    if (v40)
    {
      v42 = sub_1C44018C0();
      v43(v42, v16);

      goto LABEL_5;
    }

    sub_1C4488504();
    v44 = sub_1C4434510();
    v56(v44);
    sub_1C447E2B8();
    sub_1C4E2E75C();
    sub_1C43FD024();
    sub_1C4E2E8C0();
    v45();
    v46 = *(v58 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_latitude);
    v47 = *(v58 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_latitude + 8);
    sub_1C4455A00();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F02738();

    sub_1C4429150();
    v48 = sub_1C4434510();
    v49(v48);
    sub_1C43FE79C(7);
    sub_1C4E2E75C();
    sub_1C43FD024();
    sub_1C440C668();
    v50();
    v51 = *(v58 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_longitude);
    v52 = *(v58 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_longitude + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C442A65C();
    sub_1C4F02738();

    sub_1C4495E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_hasLocation);
    v53 = sub_1C4E2DE4C(9);
    type metadata accessor for LifeEventStructs.Place(v53);
    sub_1C4401574();
    sub_1C4E276B4(v54, v55);
    sub_1C4414374();
    sub_1C4E2D1E4();
    sub_1C4F02778();
  }

  v27 = *(v18 + 8);
  v28 = sub_1C4402120();
  v29(v28);
LABEL_5:
  sub_1C44103B4();
  sub_1C43FBC80();
}

uint64_t sub_1C4DE7B74()
{
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v1, v2, v3, v4);
  sub_1C4EFD1F8();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v5 = type metadata accessor for Source();
  sub_1C4E2EB4C(v5, qword_1EDDFED10);
  sub_1C4EFE5E8();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_locationLabel);
  sub_1C4EFEDD8();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_latitude);
  sub_1C4EFEEB8();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_longitude);
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_hasLocation) = 0;
  return v0;
}

void sub_1C4DE7C90()
{
  sub_1C43FE96C();
  v3 = v2;
  v4 = sub_1C4EFEEF8();
  v5 = sub_1C43FCDF8(v4);
  v55 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  v52 = v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF38();
  v54 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD230();
  v57 = v13;
  v14 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBC74();
  v59 = v18;
  v19 = sub_1C456902C(&qword_1EC0C8738, &qword_1C4F77688);
  v61 = sub_1C43FCDF8(v19);
  v21 = *(v20 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FCBE0(v23, v50);
  v56 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_predicate;
  sub_1C43FCF64();
  v60 = v4;
  sub_1C440BAA8(v24, v25, v26, v4);
  sub_1C4EFD1F8();
  v27 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v28 = type metadata accessor for Source();
  v29 = sub_1C442B738(v28, qword_1EDDFED10);
  sub_1C449ED64(v29, v0 + v27);
  v58 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_locationLabel_predicate;
  sub_1C4EFE5E8();
  v30 = (v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_locationLabel);
  *v30 = 0;
  v30[1] = 0;
  v53 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_latitude_predicate;
  sub_1C4EFEDD8();
  v31 = (v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_latitude);
  *v31 = 0;
  v31[1] = 0;
  v32 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_longitude_predicate;
  sub_1C4EFEEB8();
  v33 = (v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_longitude);
  *v33 = 0;
  v33[1] = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_hasLocation) = 0;
  v34 = v3;
  v36 = v3[3];
  v35 = v3[4];
  v62 = v34;
  sub_1C4417F50(v34, v36);
  sub_1C4E288A8();
  sub_1C4E2D530();
  sub_1C4F02BC8();
  if (!v1)
  {
    v51 = v32;
    LOBYTE(v63) = 0;
    sub_1C441ACD0();
    sub_1C4E276B4(v37, v38);
    sub_1C4F02658();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C449A970(v59, v0 + v56);
    swift_endAccess();
    sub_1C4402064(3);
    sub_1C4E2DAF0();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    v39 = *(v55 + 40);
    v39(v0 + v58, v57, v60);
    swift_endAccess();
    sub_1C442F858(4);
    sub_1C441C410();
    v40 = sub_1C4F02618();
    sub_1C4425188(v40, v41);
    sub_1C4402064(5);
    sub_1C4E2DAF0();
    sub_1C441C410();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    v39(v0 + v53, v54, v60);
    swift_endAccess();
    sub_1C442F858(6);
    sub_1C441C410();
    v42 = sub_1C4F02618();
    sub_1C4425188(v42, v43);
    sub_1C4402064(7);
    sub_1C4E2DAF0();
    sub_1C441C410();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    v39(v0 + v51, v52, v60);
    swift_endAccess();
    sub_1C442F858(8);
    sub_1C441C410();
    v44 = sub_1C4F02618();
    sub_1C4425188(v44, v45);
    type metadata accessor for LifeEventStructs.Place(0);
    sub_1C4401574();
    sub_1C4E276B4(v46, v47);
    sub_1C441481C();
    sub_1C441C410();
    sub_1C4F02658();
    v48 = sub_1C4417840();
    v49(v48, v61);
    sub_1C4488620(v63);
  }

  sub_1C440962C(v62);
  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4DE827C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4DE7C64(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4DE8308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v143 = v26;
  v137 = v27;
  v132 = *v20;
  v28 = sub_1C4F00DD8();
  v29 = sub_1C43FFAE0(v28, &a16);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v32);
  v33 = sub_1C4F00DC8();
  v34 = sub_1C43FFAE0(v33, &a18);
  v128 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C4410058(v38, v124);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FD230();
  sub_1C4460940(v40);
  v41 = sub_1C4F01188();
  v42 = sub_1C43FCDF8(v41);
  v135 = v43;
  v136 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  sub_1C441BFD4(v46, v125);
  v47 = sub_1C4EFD548();
  v48 = sub_1C4425688(v47);
  v146 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  sub_1C4441388(v52, v126);
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBF38();
  v133 = v54;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C44144E4();
  v56 = type metadata accessor for Source();
  v57 = sub_1C440F834(v56);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBCC4();
  v62 = (v61 - v60);
  v63 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v63);
  v65 = *(v64 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v66);
  sub_1C43FBC74();
  v141 = v67;
  sub_1C43FBE44();
  v68 = sub_1C4EFF0C8();
  v69 = sub_1C43FCDF8(v68);
  v131 = v70;
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v69);
  sub_1C43FD2D8();
  sub_1C4E2E038(v73);
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v74, v75, v76, v77);
  v78 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_entityClass;
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  v79 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v140 = v68;
  v80 = sub_1C442B738(v20, qword_1EDDFED10);
  sub_1C449ED64(v80, v20 + v79);
  *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_hasAddress) = 0;
  *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_identifier) = 0;
  *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_hasLatLong) = 0;
  v139 = v79;
  sub_1C449ED64(v20 + v79, v62);
  v81 = *(v146 + 16);
  v130 = v78;
  v81(v22, v20 + v78, v21);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v82 = sub_1C4F00978();
  sub_1C442B738(v82, qword_1EDE2DE10);
  v83 = v133;
  v138 = v22;
  v81(v133, v22, v21);
  v84 = v143;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v85 = sub_1C4F00968();
  v86 = sub_1C4F01CB8();

  v142 = v21;
  v144 = v62;
  if (os_log_type_enabled(v85, v86))
  {
    v87 = sub_1C4495448();
    v88 = swift_slowAlloc();
    sub_1C44255B4(v88);
    *v87 = 136381187;
    v89 = v137;
    *(v87 + 4) = sub_1C441D828(v137, v143, v145);
    *(v87 + 12) = 2080;
    sub_1C442DB9C();
    sub_1C4E276B4(v90, v91);
    sub_1C4F02858();
    sub_1C4408DEC();
    v134 = *(v146 + 8);
    v134(v83, v21);
    v92 = sub_1C4409A28();
    sub_1C441D828(v92, v93, v94);
    sub_1C43FEF2C();
    v84 = v143;

    *(v87 + 14) = v83;
    *(v87 + 22) = 1024;
    *(v87 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v85, v86, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v87, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    v62 = v144;
    sub_1C43FBE2C();
  }

  else
  {

    v134 = *(v146 + 8);
    v134(v83, v21);
    v89 = v137;
  }

  v95 = *v62;
  v96 = v62[1];
  v145[0] = v89;
  v145[1] = v84;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v97 = sub_1C43FBEF8();
  MEMORY[0x1C6940010](v97);

  sub_1C4E2E618();
  sub_1C442F9C8();
  v98 = sub_1C4F01148();
  v100 = v99;
  (*(v135 + 8))(v89, v136);
  if (v100 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4E2D490();
    v101 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C43FD000();
    if (sub_1C442FAFC())
    {
      sub_1C43FD084();
      v102 = sub_1C4415B1C();
      sub_1C44255B4(v102);
      sub_1C4495428(4.845e-34);
      sub_1C4406248();
      *(v84 + 4) = v86;
      sub_1C447CEB4(&dword_1C43F8000, v103, v104, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C440962C(v25);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    v111 = v21;
    v112 = v134;
    v134(v138, v21);
    v113 = 1;
    v110 = v141;
  }

  else
  {

    sub_1C4432FC0();
    sub_1C4E276B4(v105, v106);
    sub_1C4E2C974();
    sub_1C44344B8(v98, v100);
    sub_1C4498FD8(v98, v100);
    sub_1C441DFEC(v98, v100);
    sub_1C4E2DDF0();
    sub_1C440BB4C();
    sub_1C4F00DA8();
    v107 = sub_1C445BE84(&a15);
    v108(v107);
    sub_1C442C004();
    sub_1C4E2CEF4();
    v109();
    (*(v128 + 16))(v127, v20);
    v110 = v141;
    sub_1C4402120();
    sub_1C4EFF028();
    sub_1C441DFEC(v98, v100);
    v111 = v142;
    (*(v128 + 8))(v20);
    v112 = v134;
    v134(v138, v142);
    v113 = 0;
  }

  sub_1C440BAA8(v110, v113, 1, v140);
  sub_1C448D818(v144);
  sub_1C440175C(v110, 1, v140);
  if (v114)
  {
    sub_1C446F170(v110, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C45CF650();
    sub_1C43FFB2C();
    *v115 = 5;
    v116 = swift_willThrow();
    sub_1C4E2DEC4(v116, &qword_1EC0B9A08, &unk_1C4F107B0);
    v112(v25 + v130, v111);
    sub_1C448D818(v25 + v139);
    v117 = *(v25 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_hasAddress);

    v118 = *(v25 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_identifier);

    v119 = *(v25 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_hasLatLong);

    sub_1C44417C4();
    v121 = *(v120 + 48);
    v122 = *(v120 + 52);
    sub_1C4E2E010();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v123 = *(v131 + 32);
    v123(v129, v110, v140);
    v123(v25 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_entityIdentifier, v129, v140);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DE8CA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572646441736168 && a2 == 0xEA00000000007373;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6F4C74614C736168 && a2 == 0xEA0000000000676ELL)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C4F02938();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4DE8EE8(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x6572646441736168;
      break;
    case 5:
      result = 0x696669746E656469;
      break;
    case 6:
      result = 0x6F4C74614C736168;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4DE8FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DE8CA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DE9004(uint64_t a1)
{
  v2 = sub_1C4E288FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DE9040(uint64_t a1)
{
  v2 = sub_1C4E288FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DE907C()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_entityIdentifier;
  v2 = sub_1C4EFF0C8();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_entityClass;
  v5 = sub_1C4EFD548();
  sub_1C43FD3F8(v5);
  (*(v6 + 8))(v0 + v4);
  sub_1C448D818(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_source);
  v7 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_hasAddress);

  v8 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_identifier);

  v9 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_hasLatLong);

  return v0;
}

void sub_1C4DE91A4()
{
  v0 = sub_1C4EFF0C8();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_1C4D889F8();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = sub_1C4EFD548();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = type metadata accessor for Source();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1C4DE92F0()
{
  sub_1C43FE96C();
  v3 = v0;
  v5 = v4;
  v6 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBD64();
  v10 = sub_1C456902C(&qword_1EC0C8408, &qword_1C4F77480);
  sub_1C43FCDF8(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4402A68();
  v16 = v5[4];
  sub_1C4417F50(v5, v5[3]);
  sub_1C4E288FC();
  sub_1C4F02BF8();
  sub_1C4E2DDCC();
  sub_1C4420B30();
  sub_1C4E276B4(v17, v18);
  sub_1C43FEF68();
  sub_1C4F027E8();
  if (!v1)
  {
    v19 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_predicate;
    sub_1C4433D44();
    sub_1C47CBF50(v3 + v19, v2);
    sub_1C443E4C4(1);
    sub_1C4EFEEF8();
    sub_1C441ACD0();
    sub_1C4E276B4(v20, v21);
    sub_1C43FEF68();
    sub_1C4F02778();
    sub_1C446F170(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C443E4C4(2);
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v22, v23);
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C443E4C4(3);
    type metadata accessor for Source();
    sub_1C4413E34();
    sub_1C4E276B4(v24, v25);
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C442E728(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_hasAddress);
    type metadata accessor for LifeEventStructs.AddressRelationshipType(0);
    sub_1C44F1A24();
    sub_1C4E276B4(v26, v27);
    sub_1C44F0D70();
    sub_1C4F02778();
    sub_1C442E728(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_identifier);
    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C4E28950();
    sub_1C44F0D70();
    sub_1C4F02778();
    sub_1C442E728(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_hasLatLong);
    type metadata accessor for LifeEventStructs.LocationRelationshipType(0);
    sub_1C4E2D888();
    sub_1C4E276B4(v28, v29);
    sub_1C44F0D70();
    sub_1C4F02778();
  }

  v30 = *(v12 + 8);
  v31 = sub_1C43FD024();
  v32(v31);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4DE96C4()
{
  sub_1C43FE96C();
  sub_1C445CD30();
  v3 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBC74();
  v52 = v7;
  sub_1C43FBE44();
  v53 = sub_1C4EFF0C8();
  v8 = sub_1C43FCDF8(v53);
  v51 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD2D8();
  sub_1C4E2E438(v12);
  v13 = sub_1C456902C(&qword_1EC0C8730, &qword_1C4F77680);
  v54 = sub_1C43FCDF8(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBD64();
  v17 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_predicate;
  sub_1C4EFEEF8();
  v56 = v17;
  sub_1C43FCF64();
  sub_1C440BAA8(v18, v19, v20, v21);
  v55 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_entityClass;
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  v22 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v23 = type metadata accessor for Source();
  v24 = sub_1C442B738(v23, qword_1EDDFED10);
  sub_1C449ED64(v24, v0 + v22);
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_hasAddress) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_identifier) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_hasLatLong) = 0;
  v26 = v1[3];
  v25 = v1[4];
  v27 = sub_1C442A90C();
  sub_1C4417F50(v27, v28);
  sub_1C4E288FC();
  v29 = sub_1C4F02BC8();
  if (v2)
  {
    sub_1C4E2E7C8(v29, &qword_1EC0B9A08, &unk_1C4F107B0);
    v32 = sub_1C4EFD548();
    sub_1C43FD3F8(v32);
    (*(v33 + 8))(v0 + v55);
    sub_1C448D818(v0 + v22);
    v34 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_hasAddress);

    v35 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_identifier);

    v36 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_hasLatLong);

    sub_1C44417C4();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v57) = 0;
    sub_1C4420B30();
    sub_1C4E276B4(v30, v31);
    sub_1C4E2DBEC();
    sub_1C440BCD8();
    sub_1C4F026C8();
    v40 = *(v51 + 32);
    v41 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_entityIdentifier);
    v42(v41);
    sub_1C4480434();
    sub_1C441ACD0();
    sub_1C4E276B4(v43, v44);
    sub_1C4E2DBEC();
    sub_1C440BCD8();
    sub_1C4F02658();
    sub_1C44D7E3C();
    sub_1C449A970(v52, v0 + v56);
    swift_endAccess();
    type metadata accessor for LifeEventStructs.AddressRelationshipType(0);
    sub_1C44F1A24();
    sub_1C4E276B4(v45, v46);
    sub_1C445FC54();
    sub_1C4E2D6CC();
    sub_1C440BCD8();
    sub_1C4F02658();
    sub_1C4488620(v57);

    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C4E295F8();
    sub_1C445FC54();
    sub_1C4E2D6CC();
    sub_1C440BCD8();
    sub_1C4F02658();
    sub_1C4488620(v57);

    type metadata accessor for LifeEventStructs.LocationRelationshipType(0);
    sub_1C4E2DC4C();
    sub_1C4E2D888();
    sub_1C4E276B4(v47, v48);
    sub_1C445FC54();
    sub_1C4E2D6CC();
    sub_1C440BCD8();
    sub_1C4F02658();
    v49 = sub_1C4485C30();
    v50(v49, v54);
    sub_1C4488620(v57);
  }

  sub_1C440962C(v1);
  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4DE9C40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4DE9698(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4DE9C90()
{
  sub_1C43FE628();
  v90 = v1;
  v91 = v4;
  v5 = v0;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for EntityTriple(0);
  v11 = sub_1C43FCDF8(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBD08();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4E2D104();
  v18 = *v7;
  v93 = MEMORY[0x1E69E7CC0];
  sub_1C4E2E444(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_name);
  v20 = &qword_1EC151FF8[1];
  if (v2)
  {
    v21 = *v19;
    v22 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v22 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      v89 = v16;
      v23 = v9;
      v24 = sub_1C4EFF0C8();
      sub_1C43FCE50(v24);
      v26 = *(v25 + 16);
      v27 = sub_1C4E2E084();
      v28(v27);
      v29 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_name_predicate;
      sub_1C440D164();
      v30 = v10[5];
      v31 = sub_1C4EFEEF8();
      sub_1C43FCE50(v31);
      (*(v32 + 16))(v0 + v30, v0 + v29);
      v33 = sub_1C4E2D7E4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_source);
      sub_1C449ED64(v33, v0 + v34);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4416C58();
      sub_1C4EFF888();
      sub_1C4E2E5D0();
      v35 = (v0 + v10[8]);
      *v35 = v21;
      v35[1] = v2;
      v36 = (v0 + v10[10]);
      *v36 = v91;
      v36[1] = v23;
      *(v0 + v10[11]) = v3;
      HIDWORD(v88) = v18;
      *(v0 + v10[12]) = v18;
      v37 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v37, v38, v39, MEMORY[0x1E69E7CC0]);
      v41 = v40;
      v43 = *(v40 + 16);
      v42 = *(v40 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1C44C9240(v42 > 1, v43 + 1, 1, v40);
        v41 = v78;
      }

      *(v41 + 16) = v43 + 1;
      sub_1C43FBF6C();
      sub_1C44F0CA0();
      sub_1C4A948D8(v0, v44 + v45 * v43);
      v93 = v41;
      v9 = v23;
      v16 = v89;
      v20 = qword_1EC151FF8 + 8;
    }
  }

  if (*(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_hasContactInformation))
  {
    v46 = v20[427];
    v92 = v18;
    v47 = v20;

    sub_1C4DE04CC(v91, v9, v0 + v46, &v92, v48, v49, v50, v51, v88, v89);
    if (v90)
    {

      goto LABEL_22;
    }

    v90 = 0;
    sub_1C49D3614(v52);

    v20 = v47;
  }

  if (*(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_identifier))
  {
    v53 = v20[427];
    v92 = v18;
    v54 = v20;

    v55 = sub_1C4409A28();
    sub_1C4DE44E8(v55, v56, v57, v58, v59, v60, v61, v62, v88, v89);
    if (v90)
    {

      goto LABEL_22;
    }

    sub_1C49D3614(v63);

    v20 = v54;
  }

  v64 = v93;
  if (*(v93 + 16))
  {
    v65 = v20[427];
    v66 = sub_1C4EFF0C8();
    sub_1C43FCE50(v66);
    (*(v67 + 16))(v16, v5 + v65);
    v68 = v16 + v10[5];
    sub_1C4EFEBB8();
    v69 = v5 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_entityClass;
    sub_1C4EFD2F8();
    sub_1C43FC1CC();
    v70 = sub_1C4E2D7E4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_source);
    sub_1C449ED64(v70, v16 + v71);
    sub_1C4EF9AE8();
    sub_1C4416C58();
    sub_1C4EFF888();
    v72 = v16 + v10[7];
    sub_1C4EFEC38();
    sub_1C4E2E988((v16 + v10[8]));
    v74 = (v16 + v73);
    *v74 = v91;
    v74[1] = v9;
    *(v16 + v10[11]) = v3;
    *(v16 + v10[12]) = v18;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v79 = *(v64 + 16);
      v80 = sub_1C43FCEC0();
      sub_1C44C9240(v80, v81, v82, v64);
      v64 = v83;
    }

    sub_1C4414030();
    if (v76)
    {
      v84 = sub_1C43FFD98(v75);
      sub_1C44C9240(v84, v85, v86, v64);
      v64 = v87;
    }

    *(v64 + 16) = v69;
    sub_1C4415270();
    sub_1C4A948D8(v16, v77);
  }

LABEL_22:
  sub_1C440431C();
  sub_1C44109F8();
}

void sub_1C4DEA0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  sub_1C44D4078(v26);
  v27 = sub_1C4F00DD8();
  v28 = sub_1C43FFAE0(v27, &a16);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v31);
  v32 = sub_1C4F00DC8();
  v33 = sub_1C43FFAE0(v32, &a18);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C4410058(v36, v132);
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FD230();
  sub_1C4460940(v38);
  v39 = sub_1C4F01188();
  v40 = sub_1C43FCDF8(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FD2D8();
  sub_1C43FBE44();
  v43 = sub_1C4EFD548();
  v44 = sub_1C44348EC(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  sub_1C4441388(v47, v133);
  MEMORY[0x1EEE9AC00](v48);
  sub_1C4E2D074();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C440D100();
  v50 = type metadata accessor for Source();
  v51 = sub_1C440F834(v50);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  sub_1C4406BA0();
  v54 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v54);
  v56 = *(v55 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FE938(v58, v134);
  v59 = sub_1C4EFF0C8();
  v60 = sub_1C4425688(v59);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FD2D8();
  sub_1C4E2E038(v63);
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v64, v65, v66, v67);
  v68 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_entityClass;
  v69 = sub_1C4EFD4C8();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    v69 = swift_once();
  }

  sub_1C4E2E994(v69, qword_1EDDFED10);
  sub_1C4EFEBF8();
  v70 = (v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_name);
  *v70 = 0;
  v70[1] = 0;
  *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_hasContactInformation) = 0;
  sub_1C4E2EA6C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_identifier);
  v71 = sub_1C4E2E480();
  (v21)(v71);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v72 = sub_1C4F00978();
  v73 = sub_1C442B738(v72, qword_1EDE2DE10);
  sub_1C447D06C();
  sub_1C4E2D69C();
  *(v74 - 256) = v21;
  v21();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v75 = sub_1C4F00968();
  sub_1C4F01CB8();
  sub_1C4E2E7E0();
  os_log_type_enabled(v75, v73);
  sub_1C4E2E970();
  if (v76)
  {
    sub_1C4495448();
    v77 = sub_1C4488A10();
    sub_1C4E2DB74(v77);
    sub_1C4E2D4A8(4.8453e-34);
    v79 = sub_1C441D828(v140, v139, v78);
    sub_1C4485F78(v79);
    sub_1C442DB9C();
    sub_1C4E276B4(v80, v81);
    sub_1C4E2DA78();
    sub_1C4434430();
    v82 = sub_1C4E2E8CC();
    v135 = v83;
    v83(v82);
    v84 = sub_1C4409A28();
    sub_1C441D828(v84, v85, v86);
    sub_1C43FEF2C();

    sub_1C4414088();
    sub_1C4E2D264(&dword_1C43F8000, v87, v73, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C4E2E0D8();
    sub_1C4E2D9E4();
    sub_1C4E2D23C();
  }

  else
  {

    v88 = sub_1C4E2D3F8();
    v135 = v89;
    v89(v88);
  }

  v90 = *v22;
  v91 = v22[1];
  sub_1C4E2E01C();
  v92 = sub_1C4404084();
  MEMORY[0x1C6940010](v92);

  sub_1C4F01178();
  sub_1C442F9C8();
  sub_1C4F01148();
  v93 = sub_1C4E2D0A4();
  v94(v93);
  sub_1C4E2D49C();
  if (!v96 & v95)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4E2D490();
    v97 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C43FD000();
    if (sub_1C442FAFC())
    {
      sub_1C43FD084();
      v98 = sub_1C4415B1C();
      sub_1C44255B4(v98);
      sub_1C4495428(4.845e-34);
      sub_1C4406248();
      *(v25 + 4) = v142;
      sub_1C447CEB4(&dword_1C43F8000, v99, v100, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C447E810();
      sub_1C44A156C();

      v101 = sub_1C44E7750();
    }

    else
    {

      v101 = sub_1C44BBD58();
    }

    v116 = v135;
    v117 = (v135)(v101);
    v118 = 1;
  }

  else
  {

    sub_1C4432FC0();
    sub_1C4E276B4(v102, v103);
    sub_1C4E2C974();
    v104 = sub_1C4409D98();
    sub_1C44344B8(v104, v105);
    sub_1C4E2CBF8();
    v106 = sub_1C4409D98();
    sub_1C441DFEC(v106, v107);
    sub_1C445BBB0(&a14);
    v108 = sub_1C445BE84(&a15);
    v109(v108);
    sub_1C4E2E3F0();
    sub_1C442913C();
    sub_1C4E2CEF4();
    v110();
    v111 = sub_1C4E2C834();
    v112(v111);
    sub_1C4E2DA1C();
    v113 = sub_1C447CD1C(v68);
    v114(v113);
    v115 = sub_1C43FE7D0();
    v116 = v135;
    v117 = (v135)(v115);
    v118 = 0;
  }

  sub_1C445886C(v117, v118);
  sub_1C4482D7C();
  if (v96)
  {
    sub_1C446F170(v141, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C45CF650();
    v119 = sub_1C43FFB2C();
    v121 = sub_1C4428F60(v119, v120);
    sub_1C4E2EBA4(v121, &qword_1EC0B9A08, &unk_1C4F107B0);
    v122 = sub_1C4495DFC();
    v116(v122);
    sub_1C448D818(v136 + v137);
    sub_1C441B884();
    (*(v123 + 8))(v136 + v124);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_name);
    v125 = *(v136 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_hasContactInformation);

    v126 = *(v136 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_identifier);

    sub_1C44417C4();
    v128 = *(v127 + 48);
    v129 = *(v127 + 52);
    sub_1C4E2E010();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v130 = sub_1C4440EB0();
    v138(v130);
    v131 = sub_1C44A1CC0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_entityIdentifier);
    v138(v131);
  }

  sub_1C447F8BC();
  sub_1C43FBC80();
}

uint64_t sub_1C4DEA8C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000015 && 0x80000001C4FC85C0 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C4F02938();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4DEAB5C(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x6572705F656D616ELL;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x696669746E656469;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4DEAC68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DEA8C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DEAC90(uint64_t a1)
{
  v2 = sub_1C4E28A04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DEACCC(uint64_t a1)
{
  v2 = sub_1C4E28A04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DEAD08()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_entityIdentifier;
  v2 = sub_1C4EFF0C8();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_entityClass;
  v5 = sub_1C4EFD548();
  sub_1C43FD3F8(v5);
  (*(v6 + 8))(v0 + v4);
  sub_1C448D818(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_source);
  v7 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_name_predicate;
  v8 = sub_1C4EFEEF8();
  sub_1C43FD3F8(v8);
  (*(v9 + 8))(v0 + v7);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_name);
  v10 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_hasContactInformation);

  v11 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_identifier);

  return v0;
}

void sub_1C4DEAE60()
{
  v0 = sub_1C4EFF0C8();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_1C4D889F8();
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      v4 = sub_1C4EFD548();
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        v6 = type metadata accessor for Source();
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          v8 = sub_1C4EFEEF8();
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1C4DEAFF0()
{
  sub_1C43FE96C();
  v6 = sub_1C447E4C8();
  v7 = sub_1C43FCDF8(v6);
  v43 = v8;
  v44 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v11 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C4440AD4();
  v15 = sub_1C456902C(&qword_1EC0C8428, &qword_1C4F77490);
  sub_1C4425688(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C440A474();
  v22 = *(v0 + 24);
  v21 = *(v0 + 32);
  sub_1C4E2C908();
  sub_1C4E28A04();
  sub_1C4475B58();
  sub_1C4F02BF8();
  sub_1C4E2DDCC();
  sub_1C4420B30();
  sub_1C4E276B4(v23, v24);
  sub_1C4E2E100();
  sub_1C4F027E8();
  if (v1)
  {
    v25 = *(v17 + 8);
    v26 = v4;
    v27 = v2;
  }

  else
  {
    v45 = v17;
    v28 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_predicate;
    sub_1C4433D44();
    sub_1C47CBF50(v0 + v28, v5);
    sub_1C4E2D30C();
    sub_1C441ACD0();
    sub_1C4E276B4(v29, v30);
    sub_1C4475550();
    sub_1C4F02778();
    sub_1C446F170(v5, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C44343BC();
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v31, v32);
    sub_1C4E2E100();
    sub_1C4E2D6AC();
    sub_1C4F027E8();
    sub_1C44019B0(3);
    type metadata accessor for Source();
    sub_1C4413E34();
    sub_1C4E276B4(v33, v34);
    sub_1C4E2E100();
    sub_1C4F027E8();
    v35 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_name_predicate;
    sub_1C4418194();
    (*(v43 + 16))(v3, v0 + v35, v44);
    sub_1C43FE79C(4);
    sub_1C4475550();
    sub_1C4F027E8();
    (*(v43 + 8))(v3, v44);
    sub_1C4E2EA4C((v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_name));
    sub_1C442A65C();
    sub_1C4F02738();

    v36 = sub_1C4E2DB84(*(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_hasContactInformation));
    type metadata accessor for LifeEventStructs.AddressRelationshipType(v36);
    sub_1C44F1A24();
    sub_1C4E276B4(v37, v38);
    sub_1C4414374();
    sub_1C4E2E93C();
    sub_1C4F02778();
    sub_1C4E2E004(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_identifier);
    v39 = sub_1C4E2DE14(7);
    type metadata accessor for LifeEventStructs.IdentifierRelationshipType(v39);
    sub_1C4499604();
    sub_1C4E276B4(v40, v41);
    sub_1C4414374();
    sub_1C4F02778();
    v42 = *(v45 + 8);
    v26 = sub_1C442A90C();
  }

  v25(v26, v27);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4DEB50C()
{
  sub_1C43FE96C();
  sub_1C445CD30();
  v4 = sub_1C4EFEEF8();
  v5 = sub_1C4425688(v4);
  v58 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  v52 = v9;
  v10 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBC74();
  sub_1C43FBE44();
  v55 = sub_1C4EFF0C8();
  v14 = sub_1C43FCDF8(v55);
  v53 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD2D8();
  v54 = v18;
  v19 = sub_1C456902C(&qword_1EC0C8728, &qword_1C4F77678);
  v56 = sub_1C43FCDF8(v19);
  v21 = *(v20 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C4401780();
  v59 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_predicate;
  v23 = sub_1C44F0C90(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_predicate);
  v60 = v3;
  sub_1C440BAA8(v23, v24, v25, v3);
  v57 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_entityClass;
  sub_1C4EFD4C8();
  v26 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v27 = type metadata accessor for Source();
  v28 = sub_1C442B738(v27, qword_1EDDFED10);
  sub_1C449ED64(v28, v0 + v26);
  sub_1C4EFEBF8();
  v29 = (v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_name);
  *v29 = 0;
  v29[1] = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_hasContactInformation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_identifier) = 0;
  v30 = v1[4];
  sub_1C4417F50(v1, v1[3]);
  sub_1C4E28A04();
  sub_1C4475644();
  sub_1C4F02BC8();
  if (v2)
  {
    sub_1C446F170(v0 + v59, &qword_1EC0B9A08, &unk_1C4F107B0);
    v33 = sub_1C4EFD548();
    sub_1C43FD3F8(v33);
    (*(v34 + 8))(v0 + v57);
    sub_1C448D818(v0 + v26);
    (*(v58 + 8))(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_name_predicate, v60);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_name);
    v35 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_hasContactInformation);

    v36 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_identifier);

    sub_1C44417C4();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v61) = 0;
    sub_1C4420B30();
    sub_1C4E276B4(v31, v32);
    sub_1C4E2D518();
    sub_1C441BD40();
    sub_1C4F026C8();
    (*(v53 + 32))(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_entityIdentifier, v54, v55);
    sub_1C4E2D524();
    sub_1C441ACD0();
    sub_1C4E276B4(v40, v41);
    sub_1C4E2D160();
    sub_1C441BD40();
    sub_1C4F02658();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C4E2DEAC();
    swift_endAccess();
    sub_1C4E2C964();
    sub_1C4E2D160();
    sub_1C441BD40();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    v42 = sub_1C4E2DCE4();
    v43(v42, v52, v60);
    swift_endAccess();
    sub_1C447E2A8();
    sub_1C441BD40();
    v44 = sub_1C4F02618();
    sub_1C4425188(v44, v45);
    type metadata accessor for LifeEventStructs.AddressRelationshipType(0);
    sub_1C4E2DC4C();
    sub_1C44F1A24();
    sub_1C4E276B4(v46, v47);
    sub_1C441481C();
    sub_1C4E2D6CC();
    sub_1C441BD40();
    sub_1C4F02658();
    sub_1C4488620(v61);

    type metadata accessor for LifeEventStructs.IdentifierRelationshipType(0);
    sub_1C4499604();
    sub_1C4E276B4(v48, v49);
    sub_1C441481C();
    sub_1C4E2D6CC();
    sub_1C441BD40();
    sub_1C4F02658();
    v50 = sub_1C43FE5EC();
    v51(v50, v56);
    sub_1C4488620(v61);
  }

  sub_1C440962C(v1);
  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4DEBB64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4DEB4E0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4DEBBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE628();
  a19 = v27;
  a20 = v28;
  v29 = v20;
  v31 = v30;
  v148 = v32;
  v33 = sub_1C4EFF0C8();
  v34 = sub_1C43FCDF8(v33);
  v152 = v35;
  v153 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FD2D8();
  v39 = sub_1C43FD2C8(v38);
  v40 = type metadata accessor for EntityTriple(v39);
  v41 = sub_1C43FFAE0(v40, &a18);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBFDC();
  v149 = v44;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FD230();
  sub_1C43FD2C8(v46);
  v157 = sub_1C4EFD548();
  v47 = sub_1C43FCDF8(v157);
  v150 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v51 = sub_1C4EFF8A8();
  v155 = sub_1C43FCDF8(v51);
  v156 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v155);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C44144E4();
  v56 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v57 = sub_1C43FBD18(v56);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C447F150();
  v61 = sub_1C4EFEEF8();
  v62 = sub_1C4412DFC(v61);
  v64 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v62);
  sub_1C44094C8(v67, v132);
  MEMORY[0x1EEE9AC00](v68);
  sub_1C4402CA8();
  v158 = *v31;
  v69 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29ParticipationRelationshipType_predicate;
  sub_1C44169A0();
  sub_1C47CBF50(v29 + v69, v25);
  sub_1C440175C(v25, 1, v26);
  if (v70)
  {
    sub_1C446F170(v25, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v71 = sub_1C43FFB2C();
    sub_1C4414040(v71, v72);
LABEL_29:
    sub_1C4402144();
    sub_1C44109F8();
    return;
  }

  v73 = *(v64 + 32);
  v140 = v22;
  v74 = sub_1C440D510();
  v154 = v26;
  v137 = v75;
  (v75)(v74);
  v76 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29ParticipationRelationshipType_entityClass;
  (*(v150 + 16))(v23, v29 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29ParticipationRelationshipType_entityClass, v157);
  v151 = v24;
  sub_1C4EFF838();
  v161 = MEMORY[0x1E69E7CC0];
  v77 = *(v29 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29ParticipationRelationshipType_attendeeIdentifier);
  v78 = &unk_1EDDF5000;
  sub_1C4E2D69C();
  *(v79 - 256) = v76;
  if (!v77)
  {
    v146 = v80;
LABEL_23:
    v78 = v155;
    v24 = v139;
    v81 = v140;
    if (*(v146 + 16))
    {
      (*(v152 + 16))(v149, v148, v153);
      sub_1C4E2D5FC();
      (*(v139 + 16))(v149 + *(v146 + 20), v140, v154);
      (*(v156 + 16))(v149 + *(v146 + 24), v151, v155);
      v112 = v149 + *(v146 + 28);
      sub_1C4EFEBB8();
      v64 = v29 + v138;
      sub_1C4EFD2F8();
      sub_1C43FC1CC();
      sub_1C449ED64(v29 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29ParticipationRelationshipType_source, v149 + *(v146 + 36));
      sub_1C4EF9AE8();
      sub_1C4E2E988((v149 + *(v146 + 32)));
      sub_1C4E2E864((v149 + v113));
      *(v149 + *(v146 + 44)) = v114;
      v83 = v146;
      *(v149 + *(v146 + 48)) = v158;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_33:
        v123 = *(v83 + 16);
        v124 = sub_1C43FCEC0();
        sub_1C44C9240(v124, v125, v126, v83);
        v83 = v127;
      }

      v116 = *(v83 + 16);
      v115 = *(v83 + 24);
      sub_1C44019A4();
      if (v118)
      {
        v128 = sub_1C43FFD98(v117);
        sub_1C44C9240(v128, v129, v130, v83);
        v83 = v131;
      }

      (*(v156 + 8))(v151, v78);
      (*(v24 + 8))(v81, v154);
      *(v83 + 16) = v64;
      sub_1C43FBF6C();
      sub_1C4E2D154(v83 + v119);
      sub_1C4A948D8(v149, v120);
    }

    else
    {
      v121 = sub_1C44018C0();
      v122(v121, v155);
      (*(v139 + 8))(v140, v154);
    }

    goto LABEL_29;
  }

  v136 = v29;
  v81 = sub_1C4428DA0();
  v135 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29ParticipationRelationshipType_source;
  v82 = v77 & 0xFFFFFFFFFFFFFF8;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v83 = 0;
  sub_1C442BC14(MEMORY[0x1E69E7CC0]);
  while (1)
  {
    while (1)
    {
      if (v81 == v83)
      {

        v29 = v136;
        goto LABEL_23;
      }

      if ((v77 & 0xC000000000000001) != 0)
      {
        v69 = MEMORY[0x1C6940F90](v83, v77);
      }

      else
      {
        if (v83 >= *(v82 + 16))
        {
          goto LABEL_32;
        }

        sub_1C4E2E298(v77 + 8 * v83);
      }

      v78 = (v83 + 1);
      if (__OFADD__(v83, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v160[7] = v158;
      sub_1C4402EB0();
      sub_1C4DE9C90();
      if (v21)
      {

        (*(v156 + 8))(v151, v155);
        (*(v139 + 8))(v140, v154);

        goto LABEL_29;
      }

      sub_1C4E2DD4C(v84);
      if (v85)
      {
        break;
      }

      ++v83;
    }

    v146 = v82;
    v86 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C49D3614(v86);
    sub_1C4402C08(&v162);
    v87(v145, v148, v153);
    sub_1C4402C08(&v161);
    v88(v142, v140, v154);
    sub_1C4402C08(v160);
    v89(v144, v151, v155);
    v90 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_predicate;
    sub_1C4E2D16C();
    sub_1C47CBF50(v69 + v90, v143);
    sub_1C440175C(v143, 1, v154);
    if (v70)
    {
      break;
    }

    v134 = sub_1C4EFF048();
    v133 = v91;
    sub_1C449ED64(v136 + v135, v141 + v147[9]);
    sub_1C4EF9AE8();
    v93 = v92;
    sub_1C4402C08(&v159);
    sub_1C446C204();
    v94();
    v95 = v147[5];
    sub_1C4E2DDFC();
    v82 = v137;
    v137();
    (*(v156 + 32))(v141 + v147[6], v144, v155);
    (v137)(v141 + v147[7], v143, v154);
    v96 = (v141 + v147[8]);
    *v96 = v134;
    v96[1] = v133;
    sub_1C4E2E864((v141 + v147[10]));
    *(v141 + v147[11]) = v93;
    *(v141 + v147[12]) = v158;
    v97 = v161;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v103 = *(v97 + 16);
      v104 = sub_1C43FCEC0();
      sub_1C44C9240(v104, v105, v106, v97);
      v97 = v107;
    }

    sub_1C44755F0();
    v24 = *(v97 + 16);
    v98 = *(v97 + 24);
    v64 = v24 + 1;
    if (v24 >= v98 >> 1)
    {
      v108 = sub_1C43FFD98(v98);
      sub_1C44C9240(v108, v109, v110, v97);
      v97 = v111;
    }

    *(v97 + 16) = v64;
    sub_1C43FBF6C();
    v100 = *(v99 + 72);
    v101 = sub_1C44302FC();
    sub_1C4A948D8(v101, v102);
    sub_1C4E2E8A8();
    v161 = v97;
    v83 = v78;
  }

  __break(1u);
}

uint64_t sub_1C4DEC590(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000012 && 0x80000001C4FC8750 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C4F02938();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1C4DEC6F8(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4DEC790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DEC590(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DEC7B8(uint64_t a1)
{
  v2 = sub_1C4E28A58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DEC7F4(uint64_t a1)
{
  v2 = sub_1C4E28A58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DEC830()
{
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29ParticipationRelationshipType_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29ParticipationRelationshipType_entityClass;
  v2 = sub_1C4EFD548();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C448D818(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29ParticipationRelationshipType_source);
  v4 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29ParticipationRelationshipType_attendeeIdentifier);

  return v0;
}

void sub_1C4DEC904()
{
  sub_1C43FE96C();
  v3 = v2;
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4440AD4();
  v8 = sub_1C456902C(&qword_1EC0C8438, &qword_1C4F77498);
  sub_1C43FCDF8(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C4402A68();
  v15 = *(v3 + 24);
  v14 = *(v3 + 32);
  sub_1C4E2C908();
  sub_1C4E28A58();
  sub_1C4E2D814();
  sub_1C4F02BF8();
  sub_1C4433D44();
  sub_1C4E2E600();
  sub_1C4EFEEF8();
  sub_1C441ACD0();
  sub_1C4E276B4(v16, v17);
  sub_1C43FCB2C();
  sub_1C4F02778();
  sub_1C446F170(v1, &qword_1EC0B9A08, &unk_1C4F107B0);
  if (!v0)
  {
    sub_1C443E4C4(1);
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v18, v19);
    sub_1C4416C08();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C443E4C4(2);
    type metadata accessor for Source();
    sub_1C4413E34();
    sub_1C4E276B4(v20, v21);
    sub_1C4416C08();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C4E2E830(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29ParticipationRelationshipType_attendeeIdentifier);
    sub_1C456902C(&qword_1EC0C8448, &qword_1C4F774A0);
    sub_1C4E28AAC();
    sub_1C4414374();
    sub_1C43FCB2C();
    sub_1C4F02778();
  }

  v22 = *(v10 + 8);
  v23 = sub_1C43FD024();
  v24(v23);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

uint64_t sub_1C4DECB84()
{
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v1, v2, v3, v4);
  sub_1C4EFD2D8();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v5 = type metadata accessor for Source();
  sub_1C4E2EB4C(v5, qword_1EDDFED10);
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29ParticipationRelationshipType_attendeeIdentifier) = 0;
  return v0;
}

void sub_1C4DECC4C()
{
  sub_1C43FE96C();
  v2 = v0;
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FE938(v9, v27);
  v10 = sub_1C456902C(&qword_1EC0C8718, &qword_1C4F77670);
  sub_1C43FCDF8(v10);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C440A474();
  v14 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29ParticipationRelationshipType_predicate;
  v15 = sub_1C4EFEEF8();
  v28 = v14;
  sub_1C43FCF64();
  sub_1C440BAA8(v16, v17, v18, v15);
  sub_1C4EFD2D8();
  v19 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29ParticipationRelationshipType_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v20 = type metadata accessor for Source();
  v21 = sub_1C442B738(v20, qword_1EDDFED10);
  sub_1C449ED64(v21, v2 + v19);
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29ParticipationRelationshipType_attendeeIdentifier) = 0;
  v22 = v4[4];
  sub_1C4417F50(v4, v4[3]);
  sub_1C4E28A58();
  sub_1C4E2E5AC();
  if (v1)
  {
  }

  else
  {
    LOBYTE(v30) = 0;
    sub_1C441ACD0();
    sub_1C4E276B4(v23, v24);
    sub_1C4E2DBEC();
    sub_1C4E2D28C();
    sub_1C4F02658();
    sub_1C44D7E3C();
    sub_1C449A970(v29, v2 + v28);
    swift_endAccess();
    sub_1C456902C(&qword_1EC0C8448, &qword_1C4F774A0);
    sub_1C4E296AC();
    sub_1C445FC54();
    sub_1C4E2CBD8();
    sub_1C4F02658();
    v25 = sub_1C4E2D3D8();
    v26(v25);
    sub_1C4488620(v30);
  }

  sub_1C440962C(v4);
  sub_1C4E2D0D4();
  sub_1C43FBC80();
}

uint64_t sub_1C4DECF08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4DECC20(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4DECF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  v25 = v21;
  v27 = v26;
  v28 = type metadata accessor for EntityTriple(0);
  v29 = sub_1C43FFAE0(v28, &a12);
  v267 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FD230();
  sub_1C43FD2C8(v39);
  v40 = sub_1C4EFD548();
  v41 = sub_1C4440220(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBCC4();
  v48 = v47 - v46;
  v49 = sub_1C4EFF8A8();
  v50 = sub_1C44348EC(v49);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBCC4();
  v55 = v54 - v53;
  v56 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v56);
  v58 = *(v57 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C444BFE4();
  v60 = sub_1C4EFEEF8();
  v61 = sub_1C4412DFC(v60);
  v63 = v62;
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBCC4();
  v68 = v67 - v66;
  v268 = *v27;
  v69 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_predicate;
  sub_1C44169A0();
  sub_1C47CBF50(v25 + v69, v20);
  sub_1C440175C(v20, 1, v22);
  if (v70)
  {
    sub_1C446F170(v20, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v71 = sub_1C43FFB2C();
    sub_1C4414040(v71, v72);
  }

  else
  {
    v269 = v68;
    (*(v63 + 32))(v68, v20, v22);
    v74 = *(v43 + 16);
    v73 = v43 + 16;
    v257 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_entityClass;
    v74(v48, v25 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_entityClass);
    sub_1C4EFF838();
    sub_1C4D99FD8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_startTime);
    v266 = v55;
    v270 = v22;
    v76 = v63;
    v265 = v63;
    if (!v48)
    {
      goto LABEL_11;
    }

    v20 = *v75;
    v77 = HIBYTE(v48) & 0xF;
    if ((v48 & 0x2000000000000000) == 0)
    {
      v77 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (v77)
    {
      v78 = sub_1C4EFF0C8();
      sub_1C43FCE50(v78);
      v80 = *(v79 + 16);
      v63 = v258;
      sub_1C442F834();
      v81();
      sub_1C4E2DFD0();
      v82 = *(v76 + 20);
      v83 = v55;
      v84 = *(v76 + 16);
      sub_1C447F774();
      v84();
      v85 = *(v76 + 24);
      sub_1C4415E24();
      v87(v258 + v86, v83, a10);
      v88 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_startTime_predicate;
      sub_1C440D164();
      (v84)(v258 + *(v76 + 28), v25 + v88, v73);
      v89 = sub_1C4E2DD28(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_source);
      sub_1C449ED64(v89, v258 + v90);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4E2D714();
      sub_1C43FF9E4(v91);
      sub_1C4E2E9E4(*(v76 + 44), v92);
      *(v258 + v93) = v268;
      v94 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v94, v95, v96, MEMORY[0x1E69E7CC0]);
      v98 = v97;
      v48 = *(v97 + 16);
      v99 = *(v97 + 24);
      sub_1C4424824();
      if (v101)
      {
        v208 = sub_1C43FF640(v100);
        sub_1C44C9240(v208, v209, v210, v98);
        v98 = v211;
      }

      v102 = v267;
      sub_1C4432F30();
      sub_1C4A948D8(v258, v103);
      v55 = v266;
      v76 = v265;
    }

    else
    {
LABEL_11:
      v98 = MEMORY[0x1E69E7CC0];
      v102 = v267;
    }

    sub_1C4D99FD8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_imputedStartTime);
    if (v48)
    {
      sub_1C43FF988(v104);
      if (v105)
      {
        v106 = sub_1C4EFF0C8();
        sub_1C43FCE50(v106);
        v108 = *(v107 + 16);
        v109 = sub_1C4427000();
        v110(v109);
        sub_1C4E2DFD0();
        v111 = *(v76 + 20);
        v112 = v55;
        v63 = v76 + 16;
        v113 = *(v76 + 16);
        sub_1C447F774();
        v113();
        v114 = *(v76 + 24);
        sub_1C4415E24();
        v116(v20 + v115, v112, a10);
        v117 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_imputedStartTime_predicate;
        sub_1C440D164();
        (v113)(v20 + *(v76 + 28), v25 + v117, v73);
        v118 = sub_1C4E2DD28(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_source);
        sub_1C449ED64(v118, v20 + v119);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C44AE934((v20 + *(v76 + 32)));
        sub_1C43FF9E4((v20 + *(v76 + 40)));
        *(v20 + *(v76 + 44)) = v120;
        *(v20 + *(v76 + 48)) = v268;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v212 = *(v98 + 16);
          v213 = sub_1C43FCEC0();
          sub_1C44C9240(v213, v214, v215, v98);
          v98 = v216;
        }

        sub_1C4402054();
        v102 = v267;
        v55 = v266;
        v76 = v265;
        if (v101)
        {
          v217 = sub_1C43FF640(v121);
          sub_1C44C9240(v217, v218, v219, v98);
          v98 = v220;
        }

        sub_1C4432F30();
        sub_1C4A948D8(v259, v122);
      }
    }

    sub_1C4D99FD8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_endTime);
    if (v48)
    {
      sub_1C43FF988(v123);
      if (v124)
      {
        v125 = sub_1C4EFF0C8();
        sub_1C43FCE50(v125);
        v127 = *(v126 + 16);
        v128 = sub_1C4427000();
        v129(v128);
        v130 = sub_1C440EB74();
        (v63)(v130);
        v131 = sub_1C4406384();
        v132(v131);
        sub_1C440E3C8();
        sub_1C440D164();
        v133 = sub_1C44356B8();
        (v63)(v133);
        sub_1C44628C8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_source);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C44CD0D4();
        sub_1C44AE934(v134);
        sub_1C43FF9E4((v20 + *(v102 + 40)));
        sub_1C440C1A0(v135);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v221 = *(v98 + 16);
          v222 = sub_1C43FCEC0();
          sub_1C44C9240(v222, v223, v224, v98);
          v98 = v225;
        }

        sub_1C4402054();
        v55 = v266;
        v76 = v265;
        v102 = v267;
        if (v101)
        {
          v226 = sub_1C43FF640(v136);
          sub_1C44C9240(v226, v227, v228, v98);
          v98 = v229;
        }

        sub_1C4432F30();
        sub_1C4A948D8(v260, v137);
      }
    }

    sub_1C4D99FD8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_imputedEndTime);
    if (v48)
    {
      sub_1C43FF988(v138);
      if (v139)
      {
        v140 = sub_1C4EFF0C8();
        sub_1C43FCE50(v140);
        v142 = *(v141 + 16);
        v143 = sub_1C4427000();
        v144(v143);
        v145 = sub_1C440EB74();
        (v63)(v145);
        v146 = sub_1C4406384();
        v147(v146);
        sub_1C440E3C8();
        sub_1C4429150();
        v148 = sub_1C44356B8();
        (v63)(v148);
        sub_1C44628C8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_source);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C44CD0D4();
        sub_1C44AE934(v149);
        sub_1C43FF9E4((v20 + *(v102 + 40)));
        sub_1C440C1A0(v150);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v230 = *(v98 + 16);
          v231 = sub_1C43FCEC0();
          sub_1C44C9240(v231, v232, v233, v98);
          v98 = v234;
        }

        sub_1C4402054();
        v55 = v266;
        v76 = v265;
        v102 = v267;
        if (v101)
        {
          v235 = sub_1C43FF640(v151);
          sub_1C44C9240(v235, v236, v237, v98);
          v98 = v238;
        }

        sub_1C4432F30();
        sub_1C4A948D8(v261, v152);
      }
    }

    sub_1C4D99FD8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_occurrenceDate);
    if (v48)
    {
      sub_1C43FF988(v153);
      if (v154)
      {
        v155 = sub_1C4EFF0C8();
        sub_1C43FCE50(v155);
        v157 = *(v156 + 16);
        v158 = sub_1C4427000();
        v159(v158);
        v160 = sub_1C440EB74();
        (v63)(v160);
        v161 = sub_1C4406384();
        v162(v161);
        sub_1C440E3C8();
        sub_1C4488504();
        v163 = sub_1C44356B8();
        (v63)(v163);
        sub_1C44628C8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_source);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C44CD0D4();
        sub_1C44AE934(v164);
        sub_1C43FF9E4((v20 + *(v102 + 40)));
        sub_1C440C1A0(v165);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v239 = *(v98 + 16);
          v240 = sub_1C43FCEC0();
          sub_1C44C9240(v240, v241, v242, v98);
          v98 = v243;
        }

        sub_1C4402054();
        v55 = v266;
        v76 = v265;
        v102 = v267;
        if (v101)
        {
          v244 = sub_1C43FF640(v166);
          sub_1C44C9240(v244, v245, v246, v98);
          v98 = v247;
        }

        sub_1C4432F30();
        sub_1C4A948D8(v262, v167);
      }
    }

    sub_1C4D99FD8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_imputedOccurrenceDate);
    if (v48)
    {
      sub_1C43FF988(v168);
      if (v169)
      {
        v170 = sub_1C4EFF0C8();
        sub_1C43FCE50(v170);
        v172 = *(v171 + 16);
        v173 = sub_1C4427000();
        v174(v173);
        v175 = sub_1C440EB74();
        (v63)(v175);
        v176 = sub_1C4406384();
        v177(v176);
        sub_1C440E3C8();
        sub_1C4460954();
        v178 = sub_1C44356B8();
        (v63)(v178);
        sub_1C44628C8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_source);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C44CD0D4();
        sub_1C44AE934(v179);
        sub_1C43FF9E4((v20 + *(v102 + 40)));
        sub_1C440C1A0(v180);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v248 = *(v98 + 16);
          v249 = sub_1C43FCEC0();
          sub_1C44C9240(v249, v250, v251, v98);
          v98 = v252;
        }

        sub_1C4402054();
        v55 = v266;
        v76 = v265;
        if (v101)
        {
          v253 = sub_1C43FF640(v181);
          sub_1C44C9240(v253, v254, v255, v98);
          v98 = v256;
        }

        sub_1C4432F30();
        sub_1C4A948D8(v263, v182);
      }
    }

    if (*(v98 + 16))
    {
      v183 = sub_1C4EFF0C8();
      sub_1C43FCE50(v183);
      v185 = *(v184 + 16);
      sub_1C442F834();
      v186();
      sub_1C4405930();
      (*(v76 + 16))(v264 + *(v63 + 20), v269, v270);
      v187 = *(v63 + 24);
      sub_1C4415E24();
      v189(v264 + v188, v55, a10);
      v190 = v264 + *(v63 + 28);
      sub_1C4EFEBB8();
      sub_1C4EFD2F8();
      sub_1C440D158();
      sub_1C449ED64(v25 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_source, v264 + *(v63 + 36));
      sub_1C4EF9AE8();
      v191 = (v264 + *(v63 + 32));
      *v191 = v269;
      v191[1] = v25 + v257;
      sub_1C43FF9E4((v264 + *(v63 + 40)));
      *(v264 + *(v63 + 44)) = v192;
      *(v264 + *(v63 + 48)) = v268;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v200 = *(v98 + 16);
        v201 = sub_1C43FCEC0();
        sub_1C44C9240(v201, v202, v203, v98);
        v98 = v204;
      }

      sub_1C4402054();
      if (v101)
      {
        v205 = sub_1C43FF640(v193);
        sub_1C44C9240(v205, v206, v207, v98);
      }

      sub_1C4E2E8C0();
      v194 = sub_1C4485C30();
      v195(v194, a10);
      (*(v76 + 8))(v269, v270);
      sub_1C4432F30();
      sub_1C4E2E780(v196, v197);
    }

    else
    {
      sub_1C4E2E8C0();
      v198 = sub_1C4485C30();
      v199(v198, a10);
      (*(v76 + 8))(v269, v270);
    }
  }

  sub_1C4402144();
  sub_1C43FBC80();
}

unint64_t sub_1C4DEDCB4(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x6D69547472617473;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x656D6954646E65;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0x4564657475706D69;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0x6E6572727563636FLL;
      break;
    case 13:
      result = 0xD00000000000001FLL;
      break;
    case 14:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4DEDE94(uint64_t a1)
{
  v2 = sub_1C4E28B60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DEDED0(uint64_t a1)
{
  v2 = sub_1C4E28B60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DEDF0C()
{
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_entityClass;
  v2 = sub_1C4EFD548();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C448D818(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_source);
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_startTime_predicate;
  v5 = sub_1C4EFEEF8();
  sub_1C4424878(v5);
  v7 = *(v6 + 8);
  v7(v0 + v4, v1);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_startTime);
  v8 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_imputedStartTime_predicate);
  (v7)(v8);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_imputedStartTime);
  v9 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_endTime_predicate);
  (v7)(v9);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_endTime);
  v10 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_imputedEndTime_predicate);
  (v7)(v10);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_imputedEndTime);
  v11 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_occurrenceDate_predicate);
  (v7)(v11);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_occurrenceDate);
  v12 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_imputedOccurrenceDate_predicate);
  (v7)(v12);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_imputedOccurrenceDate);
  return v0;
}

void sub_1C4DEE0D8()
{
  sub_1C4D889F8();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = type metadata accessor for Source();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_1C4EFEEF8();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1C4DEE234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v24;
  a20 = v25;
  v26 = v20;
  v27 = sub_1C447E4C8();
  v28 = sub_1C43FCDF8(v27);
  v110 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C4485E4C();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C4458614();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C440273C();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C442EEDC();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD230();
  sub_1C4E2D298(v37);
  v38 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v38);
  v40 = *(v39 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C440A474();
  v42 = sub_1C456902C(&qword_1EC0C8458, &qword_1C4F774A8);
  sub_1C43FCDF8(v42);
  v44 = v43;
  v46 = *(v45 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FE95C();
  v49 = *(v20 + 24);
  v48 = *(v20 + 32);
  v50 = sub_1C442A90C();
  sub_1C4417F50(v50, v51);
  sub_1C4E28B60();
  sub_1C4F02BF8();
  v52 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_predicate;
  sub_1C44169A0();
  sub_1C47CBF50(v26 + v52, v22);
  sub_1C441ACD0();
  sub_1C4E276B4(v53, v54);
  sub_1C4E2E93C();
  sub_1C4F02778();
  if (v21)
  {
    sub_1C446F170(v22, &qword_1EC0B9A08, &unk_1C4F107B0);
    (*(v44 + 8))(v23, v42);
  }

  else
  {
    v108 = v27;
    sub_1C4E2E8A8();
    sub_1C446F170(v22, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C446257C(1);
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v55, v56);
    sub_1C4E2E924();
    sub_1C4E2D6CC();
    sub_1C441F1D8();
    sub_1C4F027E8();
    sub_1C441483C();
    type metadata accessor for Source();
    sub_1C4413E34();
    sub_1C4E276B4(v57, v58);
    sub_1C4E2E924();
    sub_1C4E2E93C();
    sub_1C4F027E8();
    v59 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_startTime_predicate;
    sub_1C4460954();
    v60 = *(v110 + 16);
    v60(v109, v26 + v59, v108);
    sub_1C4E2E2E0();
    sub_1C4F027E8();
    v107 = v60;
    v61 = *(v110 + 8);
    v61(v109, v108);
    v62 = *(v26 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_startTime);
    v63 = *(v26 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_startTime + 8);
    sub_1C4E2E90C();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C444B44C();
    v65 = *(v64 - 256);
    sub_1C441F1D8();
    sub_1C4F02738();
    if (v62)
    {
      goto LABEL_6;
    }

    sub_1C4488504();
    v69 = sub_1C4428A58(&a13);
    v107(v69);
    sub_1C447E2B8();
    sub_1C441D4FC();
    v71 = *(v70 - 256);
    sub_1C441F1D8();
    sub_1C4F027E8();
    sub_1C4459C44();
    v72();
    v73 = *(v26 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_imputedStartTime);
    v74 = *(v26 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_imputedStartTime + 8);
    sub_1C4455A00();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C444B44C();
    v76 = *(v75 - 256);
    sub_1C441F1D8();
    sub_1C4F02738();
    if (v73)
    {
LABEL_6:
      sub_1C4495248();
      v66 = *(v26 + 8);
      v67 = sub_1C4418180();
    }

    else
    {

      sub_1C4429150();
      v77 = sub_1C4428A58(&a12);
      v107(v77);
      sub_1C441D4FC();
      v79 = *(v78 - 256);
      sub_1C441F1D8();
      sub_1C4F027E8();
      v80 = sub_1C4402E08();
      (v61)(v80);
      sub_1C4E2D2E4();
      sub_1C4E2E918(v81);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C444B44C();
      v83 = *(v82 - 256);
      sub_1C441F1D8();
      sub_1C4F02738();

      sub_1C440D164();
      v84 = sub_1C4428A58(&a11);
      v107(v84);
      sub_1C441F1D8();
      sub_1C4F027E8();
      v85 = sub_1C4402E08();
      (v61)(v85);
      sub_1C4E2D2E4();
      sub_1C4E2E918(v86);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C444B44C();
      v88 = *(v87 - 256);
      sub_1C441F1D8();
      sub_1C4F02738();

      sub_1C4488AF0();
      sub_1C440D164();
      v89 = sub_1C4E2E128();
      v90(v89);
      sub_1C441D4FC();
      v92 = *(v91 - 256);
      sub_1C441F1D8();
      sub_1C4F027E8();
      v93 = sub_1C445020C(&a10);
      v94(v93);
      sub_1C4E2D2E4();
      sub_1C4E2E918(v95);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C444B44C();
      v97 = *(v96 - 256);
      sub_1C441F1D8();
      sub_1C4F02738();

      sub_1C4488AF0();
      sub_1C440D164();
      sub_1C44BBF0C();
      v98 = sub_1C4E2E128();
      v99(v98);
      sub_1C4414134();
      sub_1C441D4FC();
      v101 = *(v100 - 256);
      sub_1C441F1D8();
      sub_1C4F027E8();
      v102 = sub_1C445020C(&a9);
      v103(v102);
      sub_1C4E2D2E4();
      sub_1C4E2E918(v104);
      sub_1C444AC68();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C444B44C();
      v106 = *(v105 - 256);
      sub_1C441F1D8();
      sub_1C4F02738();
      sub_1C4495248();
      v67 = sub_1C4E2D45C();
    }

    v68(v67);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4DEEB28()
{
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v1, v2, v3, v4);
  sub_1C4EFD168();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v5 = type metadata accessor for Source();
  sub_1C4E2EB4C(v5, qword_1EDDFED10);
  sub_1C4EFEEE8();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_startTime);
  sub_1C4EFE7B8();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_imputedStartTime);
  sub_1C4EFECE8();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_endTime);
  sub_1C4EFE668();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_imputedEndTime);
  sub_1C4EFE698();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_occurrenceDate);
  sub_1C4EFEA38();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_imputedOccurrenceDate);
  return v0;
}

void sub_1C4DEEC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = sub_1C4EFEEF8();
  v27 = sub_1C43FCDF8(v26);
  v80 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C441B244();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  v79 = v33;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C44588C8();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C44EB944();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD230();
  v37 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v37);
  v39 = *(v38 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBC74();
  v82 = v41;
  v84 = sub_1C456902C(&qword_1EC0C8710, &qword_1C4F77668);
  sub_1C43FCDF8(v84);
  v43 = *(v42 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBC74();
  v86 = v45;
  v81 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_predicate;
  sub_1C43FCF64();
  v83 = v26;
  sub_1C440BAA8(v46, v47, v48, v26);
  sub_1C4EFD168();
  v49 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v50 = type metadata accessor for Source();
  v51 = sub_1C442B738(v50, qword_1EDDFED10);
  sub_1C449ED64(v51, v20 + v49);
  sub_1C4EFEEE8();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_startTime);
  sub_1C4EFE7B8();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_imputedStartTime);
  sub_1C4EFECE8();
  v52 = (v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_endTime);
  *v52 = 0;
  v52[1] = 0;
  sub_1C4EFE668();
  v53 = (v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_imputedEndTime);
  *v53 = 0;
  v53[1] = 0;
  sub_1C442BC14(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_occurrenceDate_predicate);
  sub_1C4EFE698();
  v54 = (v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_occurrenceDate);
  *v54 = 0;
  v54[1] = 0;
  v55 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_imputedOccurrenceDate_predicate;
  sub_1C4EFEA38();
  v56 = (v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_imputedOccurrenceDate);
  *v56 = 0;
  v56[1] = 0;
  v57 = v25;
  v59 = v25[3];
  v58 = v25[4];
  v85 = v57;
  sub_1C4417F50(v57, v59);
  sub_1C4E28B60();
  sub_1C4F02BC8();
  if (v21)
  {
  }

  else
  {
    sub_1C441ACD0();
    sub_1C4E276B4(v60, v61);
    sub_1C4E2D3EC();
    sub_1C442F9C8();
    sub_1C4F02658();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C449A970(v82, v20 + v81);
    swift_endAccess();
    sub_1C4402064(3);
    sub_1C4E2D3EC();
    sub_1C442F9C8();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    v62 = *(v80 + 40);
    sub_1C4417184();
    v62();
    swift_endAccess();
    sub_1C442F858(4);
    v63 = sub_1C4E2EB8C();
    sub_1C4425188(v63, v64);
    sub_1C4402064(5);
    sub_1C4E2D3EC();
    sub_1C4E2D784();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C4417184();
    v62();
    swift_endAccess();
    sub_1C442F858(6);
    v65 = sub_1C4E2EB8C();
    sub_1C4425188(v65, v66);
    sub_1C4402064(7);
    sub_1C4E2D3EC();
    sub_1C4E2D784();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C4417184();
    v62();
    swift_endAccess();
    sub_1C442F858(8);
    v67 = sub_1C4E2EB8C();
    sub_1C4418DB0(v67, v68, &a15);
    sub_1C4402064(9);
    sub_1C4E2D3EC();
    sub_1C4E2D784();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C4417184();
    v62();
    swift_endAccess();
    sub_1C442F858(10);
    v69 = sub_1C4E2EB8C();
    sub_1C4E2C87C(v69, v70);
    sub_1C4402064(11);
    sub_1C440C668();
    sub_1C4E2D784();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    (v62)(v20 + v77, v78, v83);
    swift_endAccess();
    sub_1C442F858(12);
    v71 = sub_1C4F02618();
    sub_1C4418DB0(v71, v72, &a13);
    sub_1C4402064(13);
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    (v62)(v20 + v55, v76, v83);
    swift_endAccess();
    sub_1C442F858(14);
    sub_1C4F02618();
    sub_1C44106D4();
    v73 = sub_1C4401D04();
    v74(v73, v84);
    v75 = v56[1];
    *v56 = v86;
    v56[1] = v79;
  }

  sub_1C440962C(v85);
  sub_1C4E2D0D4();
  sub_1C43FBC80();
}

uint64_t sub_1C4DEF4B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4DEEC60(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C4DEF504(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x80000001C4FC7F00 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7461636F4C646E65 && a2 == 0xEB000000006E6F69;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x80000001C4FC8B10 == a2;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000017 && 0x80000001C4FC85A0 == a2;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6E65747441736168 && a2 == 0xEB00000000656564;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == 0x65746144736168 && a2 == 0xE700000000000000)
                          {

                            return 13;
                          }

                          else
                          {
                            v19 = sub_1C4F02938();

                            if (v19)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
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

unint64_t sub_1C4DEF950(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x6572705F656D616ELL;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0x6E656469666E6F63;
      break;
    case 8:
      result = 0x7461636F4C646E65;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x696669746E656469;
      break;
    case 11:
      result = 0xD000000000000017;
      break;
    case 12:
      result = 0x6E65747441736168;
      break;
    case 13:
      result = 0x65746144736168;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4DEFB04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DEF504(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DEFB2C(uint64_t a1)
{
  v2 = sub_1C4E28BB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DEFB68(uint64_t a1)
{
  v2 = sub_1C4E28BB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DEFBA4()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_entityIdentifier;
  v2 = sub_1C4EFF0C8();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_entityClass;
  v5 = sub_1C4EFD548();
  sub_1C43FD3F8(v5);
  (*(v6 + 8))(v0 + v4);
  sub_1C448D818(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_source);
  v7 = sub_1C4EFEEF8();
  sub_1C4424878(v7);
  v9 = *(v8 + 8);
  v10 = sub_1C4460780();
  v9(v10);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_name);
  v11 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_confidence_predicate);
  v9(v11);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_confidence);
  v12 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_endLocation);

  v13 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_startingLocation);

  v14 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_identifier);

  v15 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_hasLocationRelationship);

  v16 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_hasAttendee);

  v17 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_hasDate);

  return v0;
}

void sub_1C4DEFD70()
{
  sub_1C43FE96C();
  v3 = sub_1C4E2CC60();
  v4 = sub_1C43FCDF8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C441D0D8(v7, v39);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4402CA8();
  v9 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FE95C();
  v13 = sub_1C456902C(&qword_1EC0C8468, &qword_1C4F774B0);
  sub_1C4412DFC(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4401780();
  sub_1C447F680();
  sub_1C4E28BB4();
  sub_1C4E2CDB4();
  sub_1C4E2DDCC();
  sub_1C4420B30();
  sub_1C4E276B4(v17, v18);
  sub_1C4423E24();
  if (v1)
  {
    v19 = sub_1C4E2CA3C();
  }

  else
  {
    sub_1C4E2CA94();
    sub_1C44A3B20();
    sub_1C4E2DEDC();
    sub_1C4E2D30C();
    sub_1C441ACD0();
    sub_1C4E276B4(v21, v22);
    sub_1C446078C();
    sub_1C446F170(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C44343BC();
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v23, v24);
    sub_1C43FCD50();
    sub_1C4F027E8();
    sub_1C44019B0(3);
    type metadata accessor for Source();
    sub_1C4413E34();
    sub_1C4E276B4(v25, v26);
    sub_1C43FCD50();
    sub_1C4F027E8();
    sub_1C447CF8C();
    v27 = sub_1C43FFA70();
    v28(v27);
    sub_1C443F48C();
    sub_1C4E2D1E4();
    sub_1C4F027E8();
    v29 = sub_1C4428A8C();
    v0(v29);
    sub_1C4E2C80C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_name);
    sub_1C445CD44();

    sub_1C4E2CB70();
    v30 = sub_1C4414468();
    v31(v30);
    sub_1C441D57C();
    v32 = sub_1C4E2CAC4();
    v0(v32);
    sub_1C44882A4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_confidence);
    sub_1C44D3E80();
    sub_1C4E2D640();

    sub_1C442E7E0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_endLocation);
    sub_1C4401574();
    sub_1C4E276B4(v33, v34);
    sub_1C44BBFAC();
    sub_1C4403C30(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_startingLocation);
    sub_1C4F02778();
    sub_1C4402084(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_identifier);
    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C4E28950();
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C442F840(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_hasLocationRelationship);
    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C4E28C08();
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4461E18(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_hasAttendee);
    sub_1C4480640();
    sub_1C4412AAC();
    sub_1C4E276B4(v35, v36);
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4459C90(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_hasDate);
    sub_1C4E2C948();
    sub_1C440B98C();
    sub_1C4E276B4(v37, v38);
    sub_1C4411650();
    sub_1C4F02778();
    v19 = sub_1C4475668();
  }

  v20(v19);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4DF0308()
{
  sub_1C43FE96C();
  sub_1C4E2C9D0();
  v3 = sub_1C4EFEEF8();
  v4 = sub_1C4425688(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C440DC5C(v7, v72);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C446BD9C(v9, v10, v11, v12, v13, v14, v15, v16, v73);
  v17 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v17);
  v19 = *(v18 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  v77 = sub_1C44A3D38(v21, v74);
  v22 = sub_1C43FCDF8(v77);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C441BFD4(v25, v75);
  v78 = sub_1C456902C(&qword_1EC0C8708, &qword_1C4F77660);
  sub_1C43FCDF8(v78);
  v27 = *(v26 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FCBE0(v29, v76);
  v30 = sub_1C4473DCC(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_predicate);
  sub_1C4E2DF24(v30, v31, v32);
  sub_1C4E2DCCC(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_entityClass);
  sub_1C4EFD098();
  v33 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v34 = type metadata accessor for Source();
  sub_1C4E2DCF0(v34, qword_1EDDFED10);
  sub_1C4E2E3A8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_name_predicate);
  sub_1C4E2DD64(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_name);
  sub_1C442BC14(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_confidence_predicate);
  sub_1C4EFE2A8();
  sub_1C4E2DD58(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_confidence);
  sub_1C4E2CF28(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_endLocation);
  sub_1C4E2CF18(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_startingLocation);
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_identifier) = 0;
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_hasLocationRelationship) = 0;
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_hasAttendee) = 0;
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_hasDate) = 0;
  sub_1C4E2C7E8();
  sub_1C4E28BB4();
  v35 = sub_1C4E2CF78();
  if (v1)
  {
    sub_1C4E2DB4C(v35, &qword_1EC0B9A08, &unk_1C4F107B0);
    v38 = sub_1C4EFD548();
    sub_1C43FD3F8(v38);
    v40 = *(v39 + 8);
    v41 = sub_1C4E2D5B0();
    v42(v41);
    sub_1C4E2DE7C();
    v43 = sub_1C4E2CD60(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_name_predicate);
    (v0)(v43);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_name);
    v44 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_confidence_predicate);
    (v0)(v44);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_confidence);
    v45 = *(v33 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_endLocation);

    v46 = *(v33 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_startingLocation);

    v47 = *(v33 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_identifier);

    v48 = *(v33 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_hasLocationRelationship);

    v49 = *(v33 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_hasAttendee);

    v50 = *(v33 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_hasDate);

    sub_1C44417C4();
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    sub_1C4E2DE94();
  }

  else
  {
    sub_1C44049E4();
    sub_1C4420B30();
    sub_1C4E276B4(v36, v37);
    sub_1C440CF04();
    v54 = sub_1C4450244(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs17BicyclingActivity_entityIdentifier);
    v55(v54);
    sub_1C4E2D524();
    sub_1C441ACD0();
    sub_1C4E276B4(v56, v57);
    sub_1C442F568();
    sub_1C4E2D5BC();
    sub_1C4E2DA98();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C4E2DEAC();
    swift_endAccess();
    sub_1C441E9A8();
    sub_1C43FCCA0();
    swift_beginAccess();
    v58 = sub_1C4449480();
    v2(v58);
    swift_endAccess();
    v59 = sub_1C44D4094();
    sub_1C4425188(v59, v60);
    sub_1C44514A8();
    sub_1C44AB1FC();
    v61 = sub_1C4E2CF08();
    v2(v61);
    swift_endAccess();
    v62 = sub_1C44D45AC();
    sub_1C4E2C87C(v62, v63);
    sub_1C44A18F0();
    sub_1C4401574();
    sub_1C4E276B4(v64, v65);
    sub_1C4435DCC();
    sub_1C441E968(v79);

    sub_1C4422610();
    sub_1C443F058(v79);

    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C44CD958();
    sub_1C4E295F8();
    sub_1C4435710();
    sub_1C4E2D0BC();
    sub_1C4F02658();
    sub_1C444C4C0();

    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C4E2CA4C();
    sub_1C4E29544();
    sub_1C4435710();
    sub_1C4E2D0BC();
    sub_1C4F02658();
    sub_1C445EBBC();

    sub_1C4480640();
    sub_1C442A360();
    sub_1C4412AAC();
    sub_1C4E276B4(v66, v67);
    sub_1C44063D8();
    sub_1C442FEF4();
    sub_1C4F02658();
    sub_1C447F42C();

    sub_1C4E2C948();
    sub_1C4414134();
    sub_1C440B98C();
    sub_1C4E276B4(v68, v69);
    sub_1C443F8E4();
    v70 = sub_1C44625E0();
    v71(v70);
    sub_1C4436800();
  }

  sub_1C440962C(v0);
  sub_1C4507BC8();
  sub_1C43FBC80();
}

uint64_t sub_1C4DF0A94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4DF02DC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4DF0B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE628();
  a19 = v27;
  a20 = v28;
  sub_1C4E2C9B8(v29);
  v30 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v31 = sub_1C43FBD18(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C4410058(v34, v210);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FD230();
  sub_1C43FD2C8(v36);
  v37 = sub_1C4EFF0C8();
  v38 = sub_1C43FCDF8(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FD230();
  v43 = sub_1C43FD2C8(v42);
  v44 = type metadata accessor for EntityTriple(v43);
  v222 = sub_1C43FCDF8(v44);
  v223 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v222);
  sub_1C4441388(v48, v211);
  MEMORY[0x1EEE9AC00](v49);
  sub_1C445C308();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C4485B28();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C4E2C864();
  i = MEMORY[0x1E69E7CC0];
  v227[0] = MEMORY[0x1E69E7CC0];
  sub_1C4E2D2A4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_name);
  sub_1C4E2E350();
  if (!v24)
  {
    goto LABEL_6;
  }

  sub_1C44181E4(v54);
  if (!v55)
  {
    v22 = v225;
    goto LABEL_6;
  }

  v213 = v26;
  sub_1C44CD0E0();
  v56 = sub_1C4E2E198();
  v57(v56);
  i = v23;
  v23 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_name_predicate;
  sub_1C4E2D1F0();
  v58 = sub_1C4E2D930();
  sub_1C43FCE50(v58);
  v60 = *(v59 + 16);
  v61 = sub_1C4E2D2B4();
  v62(v61);
  v63 = sub_1C4E2D558(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_source);
  sub_1C449ED64(v63, v25 + v64);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  sub_1C4414830();
  sub_1C4EFF888();
  sub_1C4E2E3D8();
  v65 = sub_1C442A80C();
  sub_1C4401EC4(v65, v66, v67, MEMORY[0x1E69E7CC0]);
  sub_1C445FC80(v68);
  if (v70)
  {
    goto LABEL_77;
  }

  while (1)
  {
    *(i + 16) = v23;
    sub_1C44056A4();
    sub_1C4A948D8(v25, v71);
    sub_1C4E2D114();
LABEL_6:
    sub_1C4E2D790(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_confidence);
    if (v24)
    {
      sub_1C44181E4(v72);
      if (v73)
      {
        sub_1C44CD0E0();
        v74(v20);
        v23 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_confidence_predicate;
        sub_1C4E2D210();
        v75 = sub_1C4E2DAA4();
        sub_1C43FCE50(v75);
        v77 = *(v76 + 16);
        v78 = sub_1C4E2D318();
        v79(v78);
        v80 = sub_1C4E2D558(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_source);
        sub_1C449ED64(v80, v20 + v81);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4414830();
        sub_1C4EFF888();
        sub_1C4E2DF74();
        sub_1C4440EE4();
        sub_1C4E2E238(v82);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v174 = *(i + 16);
          v175 = sub_1C43FCEC0();
          sub_1C44C9240(v175, v176, v177, i);
          i = v178;
        }

        sub_1C4E2CE44();
        if (v70)
        {
          v179 = sub_1C4413F5C(v83);
          sub_1C44C9240(v179, v180, v181, i);
          i = v182;
        }

        sub_1C4E2D5FC();
        *(i + 16) = v23;
        sub_1C44056A4();
        sub_1C4A948D8(v20, v84);
        sub_1C4E2D344();
      }

      else
      {
        v22 = v225;
      }
    }

    v25 = *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_startingLocation);
    if (v25)
    {
      break;
    }

LABEL_24:
    sub_1C4E2E1CC(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_endLocation);
    if (v24)
    {
      sub_1C4E2D8F4();

      sub_1C4E2D038();
      v26 = v21;
      if (v21)
      {
LABEL_26:

        goto LABEL_65;
      }

      sub_1C4E2DD4C(v103);
      if (v105)
      {
        v106 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C49D3614(v106);
        sub_1C4E2CBE8();
        v107 = sub_1C4E2D7CC(&a15);
        v108(v107);
        sub_1C4E2CE74();
        sub_1C4405930();
        sub_1C47CBF50(v109, v23);
        sub_1C4EFEEF8();
        sub_1C4410BC4(v23);
        if (v91)
        {
          goto LABEL_79;
        }

        sub_1C4EFF048();
        sub_1C4408DEC();
        v110 = sub_1C4E2CAD4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_source);
        sub_1C4E2DE64(v110, &a14);
        sub_1C4EF9AE8();
        sub_1C4414830();
        sub_1C4EFF888();
        sub_1C4E2DDB4();
        sub_1C4E2D2D4();
        sub_1C4E2DD34();
        v111();
        sub_1C4443500();
        v113 = *(v112 + 32);
        v115 = sub_1C4E2CED0(v114);
        v116(v115);
        sub_1C4488888();
        v25 = v226;
        *v117 = v226;
        v117[1] = v224;
        sub_1C4423984();
        v20 = v227[0];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v192 = v20[2];
          v193 = sub_1C43FCEC0();
          sub_1C44C9240(v193, v194, v195, v20);
          v20 = v196;
        }

        v104 = qword_1EC151FF8 + 8;
        sub_1C4E2CE64();
        if (v70)
        {
          v197 = sub_1C4413F5C(v118);
          sub_1C44C9240(v197, v198, v199, v20);
          v20 = v200;
        }

        v20[2] = v23;
        sub_1C447E440();
        v119 = sub_1C442B9BC();
        sub_1C4A948D8(v119, v120);
        sub_1C4E2E1C0();
      }

      else
      {

        v104 = &qword_1EC151FF8[1];
        v25 = v226;
      }
    }

    else
    {
      v104 = qword_1EC151FF8 + 8;
    }

    v24 = *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_identifier);
    if (!v24)
    {
LABEL_47:
      v23 = *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_hasDate);
      if (!v23)
      {
        goto LABEL_50;
      }

      v21 = v104[440];
      sub_1C4E2D4C0();

      v131 = sub_1C441B67C();
      sub_1C4DECF58(v131, v132, v133, v134, v135, v136, v137, v138, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223);
      v26 = v21;
      if (v21)
      {
LABEL_64:
      }

      else
      {
        v20 = v227;
        sub_1C49D3614(v139);

LABEL_50:
        v24 = *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_hasLocationRelationship);
        if (v24)
        {
          sub_1C4E2D7D8();
          v25 = sub_1C4428DA0();
          v22 = v104[440];
          sub_1C4E2D328();
          for (i = 0; v25 != i; ++i)
          {
            if (v26)
            {
              sub_1C4E2DF5C();
              v23 = v149;
            }

            else
            {
              sub_1C4E2D79C();
              if (v70)
              {
                goto LABEL_76;
              }

              sub_1C4E2D53C();
            }

            if (__OFADD__(i, 1))
            {
              goto LABEL_75;
            }

            v140 = sub_1C441F25C();
            sub_1C4DE5C70(v140, v141, v142, v143, v144, v145, v146, v147, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223);
            if (v21)
            {
              goto LABEL_60;
            }

            v20 = v227;
            sub_1C49D3614(v148);
          }

          sub_1C4E2CD4C();
          v104 = &qword_1EC151FF8[1];
        }

        if (*(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_hasAttendee))
        {
          v150 = v104[440];
          sub_1C4E2D4C0();

          v151 = sub_1C441B67C();
          sub_1C4DEBBF0(v151, v152, v153, v154, v155, v156, v157, v158, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223);
          if (v150)
          {
            goto LABEL_64;
          }

          sub_1C49D3614(v159);
        }

        sub_1C4E2DA6C();
        if (v160)
        {
          v161 = v104[440];
          sub_1C4E2CD38();
          v162 = sub_1C4E2D188();
          v163(v162);
          sub_1C4E2DAC0();
          v164 = v25 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_entityClass;
          sub_1C4EFD2F8();
          sub_1C44106D4();
          sub_1C4E2D9C8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_source);
          sub_1C4EF9AE8();
          sub_1C4414830();
          sub_1C4EFF888();
          sub_1C4E2DDB4();
          sub_1C443E0A4();
          *v165 = v104;
          v165[1] = v224;
          sub_1C4423984();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v201 = *(v24 + 16);
            v202 = sub_1C43FCEC0();
            sub_1C44C9240(v202, v203, v204, v24);
            v24 = v205;
          }

          sub_1C4E2C928();
          if (v70)
          {
            v206 = sub_1C43FFD98(v166);
            sub_1C44C9240(v206, v207, v208, v24);
            v24 = v209;
          }

          *(v24 + 16) = v164;
          sub_1C449DBCC();
          sub_1C4E2CF9C(v167);
          v168 = sub_1C4E2DDE4();
          sub_1C4A948D8(v168, v169);
        }
      }

LABEL_65:
      sub_1C4E2D354();
      sub_1C44109F8();
      return;
    }

    sub_1C4E2D7D8();
    v25 = sub_1C4428DA0();
    v22 = v104[440];
    sub_1C4E2D328();
    for (i = 0; ; ++i)
    {
      if (v25 == i)
      {

        sub_1C4E2CD4C();
        v104 = &qword_1EC151FF8[1];
        goto LABEL_47;
      }

      if (v26)
      {
        sub_1C4E2DF5C();
        v23 = v130;
      }

      else
      {
        sub_1C4E2D79C();
        if (v70)
        {
          goto LABEL_74;
        }

        sub_1C4E2D53C();
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      v121 = sub_1C441F25C();
      sub_1C4DE44E8(v121, v122, v123, v124, v125, v126, v127, v128, v212, v213);
      if (v21)
      {
LABEL_60:

        goto LABEL_65;
      }

      v20 = v227;
      sub_1C49D3614(v129);
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    v170 = sub_1C4413F5C(v69);
    sub_1C44C9240(v170, v171, v172, i);
    i = v173;
  }

  sub_1C4E2D8F4();

  sub_1C4E2D014();
  v26 = v21;
  if (v21)
  {
    goto LABEL_26;
  }

  sub_1C4E2DE40(v85);
  if (!v86)
  {

    goto LABEL_24;
  }

  v87 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3614(v87);
  sub_1C4E2CBE8();
  v88 = sub_1C4E2D7CC(&a17);
  v89(v88);
  sub_1C4E2CB70();
  sub_1C4E2DF3C();
  v90 = sub_1C4EFEEF8();
  sub_1C4410BC4(v23);
  if (!v91)
  {

    v20 = (v25 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_entityIdentifier);
    sub_1C4EFF048();
    sub_1C4416328();
    v92 = sub_1C4E2CAD4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_source);
    sub_1C4E2DE64(v92, &a16);
    sub_1C4EF9AE8();
    sub_1C4414830();
    sub_1C4EFF888();
    sub_1C4E2DDB4();
    sub_1C4E2D2D4();
    sub_1C4E2DD34();
    v93();
    sub_1C4443500();
    v95 = *(v94 + 32);
    v97 = sub_1C4E2CED0(v96);
    v98(v97);
    sub_1C449F4C0();
    v23 = v224;
    *v99 = v226;
    v99[1] = v224;
    sub_1C4423984();
    sub_1C4E2E728();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v183 = *(v90 + 16);
      v184 = sub_1C43FCEC0();
      sub_1C44C9240(v184, v185, v186, v90);
      v90 = v187;
    }

    sub_1C4414030();
    if (v70)
    {
      v188 = sub_1C43FFD98(v100);
      sub_1C44C9240(v188, v189, v190, v90);
      v90 = v191;
    }

    *(v90 + 16) = v20;
    sub_1C44056A4();
    v101 = sub_1C43FFF1C();
    sub_1C4A948D8(v101, v102);
    sub_1C4E2D580();
    goto LABEL_24;
  }

  __break(1u);
LABEL_79:
  __break(1u);
}

void sub_1C4DF1510()
{
  sub_1C43FE96C();
  sub_1C444B498(v3);
  v4 = sub_1C4F00DD8();
  v5 = sub_1C4440220(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  sub_1C4460940(v8);
  v129 = sub_1C4F00DC8();
  v9 = sub_1C43FCDF8(v129);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C44094C8(v12, v122);
  v14 = MEMORY[0x1EEE9AC00](v13);
  sub_1C44107F0(v14, v15, v16, v17, v18, v19, v20, v21, v123);
  v22 = sub_1C4F01188();
  v23 = sub_1C43FCDF8(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C440A3EC(v26, v124);
  v27 = sub_1C4EFD548();
  v28 = sub_1C44348EC(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C4410058(v31, v125);
  v33 = MEMORY[0x1EEE9AC00](v32);
  sub_1C442A5DC(v33, v34, v35, v36, v37, v38, v39, v40, v126);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C440D100();
  v42 = type metadata accessor for Source();
  v43 = sub_1C440F834(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  sub_1C4406BA0();
  v46 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v46);
  v48 = *(v47 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FE938(v50, v127);
  v51 = sub_1C4EFF0C8();
  v52 = sub_1C4425688(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  sub_1C4415E5C(v55, v128);
  v56 = sub_1C4EFEEF8();
  sub_1C4E2C8A0(v56);
  v57 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_entityClass;
  v58 = sub_1C4EFD2B8();
  v59 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    v58 = swift_once();
  }

  sub_1C4E2D608(v58, qword_1EDDFED10);
  sub_1C4EFEBF8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_name);
  sub_1C4EFE2A8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_confidence);
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_startingLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_endLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_identifier) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_hasDate) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_hasLocationRelationship) = 0;
  sub_1C4E2CD94(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_hasAttendee);
  v60 = sub_1C44019BC();
  v1(v60);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v61 = sub_1C4F00978();
  sub_1C442B738(v61, qword_1EDE2DE10);
  v62 = sub_1C440EBA4();
  v1(v62);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v63 = sub_1C4E2D364();
  sub_1C4F01CB8();
  sub_1C43FE670();
  if (sub_1C4E2DF0C())
  {
    sub_1C4495448();
    v64 = sub_1C4488A10();
    sub_1C4E2CA84(v64);
    v65 = sub_1C4E2CD74(4.8453e-34);
    sub_1C4485F78(v65);
    sub_1C442DB9C();
    sub_1C4E276B4(v66, v67);
    sub_1C44804C0();
    v68 = sub_1C442638C();
    v69(v68);
    v70 = sub_1C4409A28();
    sub_1C441D828(v70, v71, v72);
    sub_1C4E2D380();
    sub_1C4414088();
    sub_1C44579E8(&dword_1C43F8000, v73, v74, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C44753CC();
    sub_1C4411B3C();
    sub_1C4E2D23C();
  }

  else
  {

    v75 = sub_1C4462134();
    v76(v75);
  }

  sub_1C4488B88();
  v77 = sub_1C4404084();
  MEMORY[0x1C6940010](v77);

  sub_1C4E2D2F0();
  sub_1C4E2CC80();
  v78 = sub_1C4416A00();
  v79(v78);
  sub_1C4E2D49C();
  if (!v81 & v80)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44BBF0C();
    v82 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C43FD000();
    if (sub_1C442FAFC())
    {
      sub_1C43FD084();
      v83 = sub_1C4415B1C();
      sub_1C44255B4(v83);
      sub_1C4495428(4.845e-34);
      sub_1C4406248();
      *(v2 + 4) = v59;
      sub_1C447CEB4(&dword_1C43F8000, v84, v85, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C447E810();
      sub_1C44A156C();

      v86 = sub_1C44E7750();
    }

    else
    {

      v86 = sub_1C44BBD58();
    }

    v59 = v130;
    v100 = v130(v86);
    v101 = 1;
  }

  else
  {

    sub_1C4432FC0();
    sub_1C4E276B4(v87, v88);
    sub_1C441DF80();
    v89 = sub_1C4409D98();
    sub_1C44344B8(v89, v90);
    sub_1C4E2CBF8();
    sub_1C441C6AC();
    sub_1C440BB4C();
    sub_1C4F00DA8();
    v91 = sub_1C442AABC();
    v92(v91);
    v93 = sub_1C43FE318();
    v94(v93);
    v95 = sub_1C4417C80();
    v96(v95);
    sub_1C4507BA8();
    v97 = sub_1C4422CA0();
    v98(v97);
    v99 = sub_1C4430818();
    v100 = v59(v99);
    v101 = 0;
  }

  sub_1C4424A80(v100, v101);
  sub_1C4482D7C();
  if (v81)
  {
    sub_1C446F170(v132, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C45CF650();
    v102 = sub_1C43FFB2C();
    v104 = sub_1C4428F60(v102, v103);
    sub_1C4E2DEC4(v104, &qword_1EC0B9A08, &unk_1C4F107B0);
    v105 = sub_1C4495DFC();
    v59(v105);
    sub_1C448D818(v0 + v131);
    sub_1C4425820();
    v107 = *(v106 + 8);
    v109 = sub_1C443E068(v108);
    v107(v109);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_name);
    v110 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_confidence_predicate);
    v107(v110);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_confidence);
    v111 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_startingLocation);

    v112 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_endLocation);

    v113 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_identifier);

    v114 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_hasDate);

    v115 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_hasLocationRelationship);

    v116 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_hasAttendee);

    sub_1C44417C4();
    v118 = *(v117 + 48);
    v119 = *(v117 + 52);
    sub_1C4E2DEF4();
  }

  else
  {
    v120 = sub_1C4440B80();
    v57(v120);
    v121 = sub_1C44A1CC0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_entityIdentifier);
    v57(v121);
  }

  sub_1C447F8BC();
  sub_1C43FBC80();
}

uint64_t sub_1C4DF1CC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x80000001C4FC7F00 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000010 && 0x80000001C4FC8B10 == a2;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7461636F4C646E65 && a2 == 0xEB000000006E6F69;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x65746144736168 && a2 == 0xE700000000000000;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000017 && 0x80000001C4FC85A0 == a2;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == 0x6E65747441736168 && a2 == 0xEB00000000656564)
                          {

                            return 13;
                          }

                          else
                          {
                            v19 = sub_1C4F02938();

                            if (v19)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
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