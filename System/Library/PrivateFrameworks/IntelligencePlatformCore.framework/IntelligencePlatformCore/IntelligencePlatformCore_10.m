void sub_1C44CB508()
{
  sub_1C43FBD3C();
  sub_1C447F980(v4);
  v5 = sub_1C4EFEEF8();
  v6 = sub_1C440AC0C(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C441FB94();
  sub_1C4419828();
  sub_1C4403D94(v9, v10);
  sub_1C442F1F0();
  sub_1C4406FA8();
  while (1)
  {
    sub_1C44004BC(v11);
    if (v12)
    {
      sub_1C448053C();
      v16 = sub_1C441322C();
      v17(v16);
      v18 = sub_1C44172C0();
      sub_1C44CB678(v18, v19, v20);
      v21 = sub_1C43FD854();
      v22(v21);
      goto LABEL_7;
    }

    v13 = sub_1C442CB30();
    v3(v13);
    sub_1C4419828();
    sub_1C4403D94(&qword_1EDDFCCB0, v14);
    sub_1C442234C();
    sub_1C4475AE4();
    v15 = sub_1C4425BF4();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v2 + 1;
  }

  v23 = sub_1C440230C();
  v1(v23);
  v24 = sub_1C440E350();
  v3(v24);
LABEL_7:
  sub_1C43FE9F0();
}

uint64_t sub_1C44CB678(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_1C4EFEEF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C483F3C0(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1C484C438(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_1C4403D94(&qword_1EDDFCCB8, MEMORY[0x1E69A9748]);
      v15 = sub_1C4F00FD8();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1C4403D94(&qword_1EDDFCCB0, MEMORY[0x1E69A9748]);
        v17 = sub_1C4F010B8();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_1C484A478();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_1C44CB92C()
{
  v1 = [v0 identifier];
  sub_1C4F01138();

  if (qword_1EDDF7890 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SourceIdPrefix();
  v3 = sub_1C442B738(v2, qword_1EDDF7898);
  v6 = *v3;
  v7 = v3[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](58, 0xE100000000000000);
  v4 = sub_1C4404C28();
  MEMORY[0x1C6940010](v4);

  return v6;
}

uint64_t type metadata accessor for SourceIdPrefix()
{
  result = qword_1EDDFBC88;
  if (!qword_1EDDFBC88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C44CBA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v193 = v20;
  v25 = v24;
  v203 = v26;
  v28 = v27;
  v29 = sub_1C4F00DD8();
  v30 = sub_1C43FCDF8(v29);
  v194 = v31;
  v195 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FD2D8();
  v191 = v34;
  sub_1C43FBE44();
  v35 = sub_1C4F00DC8();
  v36 = sub_1C43FCDF8(v35);
  v196 = v37;
  v197 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBFDC();
  v190 = v40;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FD230();
  v192 = v42;
  sub_1C43FBE44();
  v43 = sub_1C4F01188();
  v44 = sub_1C43FCDF8(v43);
  v200 = v45;
  v201 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FD2D8();
  v199 = v48;
  sub_1C43FBE44();
  a10 = sub_1C4EFD548();
  v49 = sub_1C43FCDF8(a10);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBFDC();
  v186 = v54;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v55);
  v56 = sub_1C4D871FC();
  v57 = sub_1C43FCDF8(v56);
  v187 = v58;
  v188 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBFDC();
  v185 = v61;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v62);
  sub_1C43FD230();
  v64 = sub_1C43FD2C8(v63);
  v65 = type metadata accessor for CNContactStructs.Person(v64);
  v66 = v28 + v65[5];
  v67 = sub_1C4EFEEF8();
  v189 = v66;
  sub_1C43FCF64();
  sub_1C440BAA8(v68, v69, v70, v67);
  v71 = v65[6];
  sub_1C4EFD4C8();
  v72 = (v28 + v65[7]);
  if (qword_1EDDFED28 != -1)
  {
    sub_1C44133AC();
    swift_once();
  }

  v73 = type metadata accessor for Source();
  sub_1C442B738(v73, &unk_1EDDFD088);
  sub_1C4408374();
  sub_1C44CC80C(v74, v72, v75);
  v183 = v28 + v65[8];
  sub_1C4EFEE68();
  sub_1C4401738(v65[9]);
  v182 = v28 + v65[10];
  sub_1C4EFE5D8();
  sub_1C4401738(v65[11]);
  v181 = v28 + v65[12];
  sub_1C4EFE338();
  sub_1C4401738(v65[13]);
  v180 = v28 + v65[14];
  sub_1C4EFE328();
  sub_1C4401738(v65[15]);
  v179 = v28 + v65[16];
  sub_1C4EFE2C8();
  sub_1C4401738(v65[17]);
  v178 = v28 + v65[18];
  sub_1C4EFE348();
  sub_1C4401738(v65[19]);
  v177 = v28 + v65[20];
  sub_1C4EFE3A8();
  sub_1C4401738(v65[21]);
  v176 = v28 + v65[22];
  sub_1C4EFEBD8();
  sub_1C4401738(v65[23]);
  v175 = v28 + v65[24];
  sub_1C4EFE3D8();
  sub_1C4401738(v65[25]);
  v174 = v28 + v65[26];
  sub_1C4EFE908();
  sub_1C4401738(v65[27]);
  v173 = v28 + v65[28];
  sub_1C4EFE3B8();
  *(v28 + v65[29]) = 0;
  v172 = v28 + v65[30];
  sub_1C4EFE8F8();
  *(v28 + v65[31]) = 0;
  v171 = v28 + v65[32];
  sub_1C4EFE9D8();
  sub_1C4401738(v65[33]);
  v170 = v28 + v65[34];
  sub_1C4EFEB18();
  sub_1C4401738(v65[35]);
  v169 = v28 + v65[36];
  sub_1C4EFEC28();
  *(v28 + v65[37]) = 0;
  v168 = v28 + v65[38];
  sub_1C4EFE358();
  sub_1C4401738(v65[39]);
  v167 = v28 + v65[40];
  sub_1C4EFEE38();
  sub_1C4401738(v65[41]);
  v166 = v28 + v65[42];
  sub_1C4EFE948();
  sub_1C4401738(v65[43]);
  v165 = v28 + v65[44];
  sub_1C4EFE778();
  sub_1C4401738(v65[45]);
  v164 = v28 + v65[46];
  sub_1C4EFE588();
  sub_1C4401738(v65[47]);
  v163 = v28 + v65[48];
  sub_1C4EFE318();
  sub_1C4401738(v65[49]);
  v162 = v28 + v65[50];
  sub_1C4EFEBF8();
  sub_1C4401738(v65[51]);
  v161 = v28 + v65[52];
  sub_1C4EFE858();
  sub_1C4401738(v65[53]);
  v160 = v28 + v65[54];
  sub_1C4EFE938();
  sub_1C4401738(v65[55]);
  v159 = v28 + v65[56];
  sub_1C4EFE928();
  sub_1C4401738(v65[57]);
  *(v28 + v65[58]) = 0;
  v76 = v28 + v65[59];
  type metadata accessor for CNContactStructs.EmploymentRelationshipType(0);
  v158 = v76;
  sub_1C43FCF64();
  sub_1C440BAA8(v77, v78, v79, v80);
  v81 = v28 + v65[60];
  type metadata accessor for CNContactStructs.VisualIdentifierRelationshipType(0);
  v157 = v81;
  sub_1C43FCF64();
  sub_1C440BAA8(v82, v83, v84, v85);
  *(v28 + v65[61]) = 0;
  *(v28 + v65[62]) = 0;
  *(v28 + v65[63]) = 0;
  *(v28 + v65[64]) = 0;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v86 = sub_1C4F00978();
  sub_1C442B738(v86, qword_1EDE2DE10);
  v156 = *(v51 + 16);
  v156(v21, v28 + v71, a10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v87 = sub_1C4F00968();
  v88 = sub_1C4F01CB8();

  v202 = v71;
  v198 = v51;
  if (os_log_type_enabled(v87, v88))
  {
    swift_slowAlloc();
    v204 = sub_1C441D7BC();
    *v71 = 136381187;
    v89 = sub_1C441D828(v203, v25, &v204);
    sub_1C44587AC(v89);
    sub_1C4432F18();
    sub_1C44CD358(v90, v91);
    v154 = v88;
    v155 = v67;
    v92 = v25;
    v93 = v72;
    v94 = a10;
    v95 = sub_1C4F02858();
    v96 = v94;
    v98 = v97;
    v99 = *(v51 + 8);
    (v99)(v21, v96);
    v100 = sub_1C441D828(v95, v98, &v204);
    v72 = v93;
    v25 = v92;
    v67 = v155;

    *(v71 + 14) = v100;
    sub_1C44A18E0();
    _os_log_impl(&dword_1C43F8000, v87, v154, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v71, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v99 = *(v51 + 8);
    (v99)(v21, a10);
  }

  v101 = *v72;
  v102 = v72[1];
  v204 = v203;
  v205 = v25;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v101, v102);

  v104 = v204;
  v103 = v205;
  sub_1C4F01178();
  sub_1C4F01148();
  v106 = v105;
  v107 = sub_1C44018C0();
  v108(v107);
  if (v106 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v109 = sub_1C4F00968();
    v110 = sub_1C4F01CD8();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v203 = v99;
      v204 = swift_slowAlloc();
      v112 = v72;
      v113 = v204;
      *v111 = 136380675;
      v114 = sub_1C441D828(v104, v103, &v204);

      *(v111 + 4) = v114;
      _os_log_impl(&dword_1C43F8000, v109, v110, "Source: failed to encode identifier as UTF8 data: %{private}s", v111, 0xCu);
      sub_1C440962C(v113);
      v72 = v112;
      v99 = v203;
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    sub_1C45CF650();
    sub_1C43FFB2C();
    sub_1C43FE7A8(v126, 5);
    sub_1C4420C3C(v189, &qword_1EC0B9A08, &unk_1C4F107B0);
    (v99)(v28 + v202, a10);
    sub_1C440636C();
    sub_1C44D474C(v72, v127);
    v128 = *(*(v67 - 8) + 8);
    v129 = sub_1C44587A0(&a17);
    v128(v129);
    v130 = sub_1C44587A0(&a16);
    v128(v130);
    v131 = sub_1C44587A0(&a15);
    v128(v131);
    v132 = sub_1C44587A0(&a14);
    v128(v132);
    v133 = sub_1C44587A0(&a13);
    v128(v133);
    v134 = sub_1C44587A0(&a12);
    v128(v134);
    v135 = sub_1C44587A0(&a11);
    v128(v135);
    v136 = sub_1C44587A0(&a10);
    v128(v136);
    v137 = sub_1C44587A0(&a9);
    v128(v137);
    v138 = sub_1C44587A0(&v206);
    v128(v138);
    v139 = sub_1C44587A0(&v205);
    v128(v139);
    v140 = sub_1C44587A0(&v204);
    v128(v140);
    v141 = sub_1C44587A0(&v203);
    v128(v141);
    v142 = sub_1C44587A0(&v202);
    v128(v142);
    v143 = sub_1C44587A0(&v201);
    v128(v143);
    v144 = sub_1C44587A0(&v200);
    v128(v144);
    v145 = sub_1C44587A0(&v199);
    v128(v145);
    v146 = sub_1C44587A0(&v198);
    v128(v146);
    v147 = sub_1C44587A0(&v197);
    v128(v147);
    v148 = sub_1C44587A0(&v196);
    v128(v148);
    v149 = sub_1C44587A0(&v195);
    v128(v149);
    v150 = sub_1C44587A0(&v194);
    v128(v150);
    v151 = sub_1C44587A0(&v193);
    v128(v151);
    v152 = sub_1C44587A0(&v192);
    v128(v152);
    v153 = sub_1C44587A0(&v191);
    v128(v153);
    sub_1C4420C3C(v158, &qword_1EC0BAD38, &unk_1C4F70B40);
    sub_1C4420C3C(v157, &qword_1EC0C6C38, &qword_1C4F70B38);
  }

  else
  {

    sub_1C442A594();
    sub_1C44CD358(v115, v116);
    sub_1C4F00DB8();
    v117 = sub_1C4410CBC();
    sub_1C44344B8(v117, v118);
    v119 = sub_1C4410CBC();
    sub_1C4498FD8(v119, v120);
    v203 = v193;
    v121 = sub_1C4410CBC();
    sub_1C441DFEC(v121, v122);
    sub_1C4F00DA8();
    (*(v194 + 8))(v191, v195);
    v156(v186, v28 + v202, a10);
    (*(v196 + 16))(v190, v192, v197);
    sub_1C4EFF028();
    v123 = sub_1C4410CBC();
    sub_1C441DFEC(v123, v124);
    (*(v196 + 8))(v192, v197);
    v125 = *(v187 + 32);
    v125(v184, v185, v188);
    v125(v28, v184, v188);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C44CC80C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FCE50(v4);
  v6 = *(v5 + 16);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

void sub_1C44CC898(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v6);
  if (*(v7 + 84) == a3)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v8 = sub_1C4EFD548();
    sub_1C43FCF8C(v8);
    if (*(v9 + 84) == a3)
    {
      sub_1C4418160();
    }

    else
    {
      v10 = type metadata accessor for Source();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == a3)
      {
        sub_1C4416C20();
      }

      else
      {
        v12 = sub_1C4EFEEF8();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == a3)
        {
          sub_1C441D7B0();
        }

        else
        {
          if (a3 == 2147483646)
          {
            sub_1C441864C(*(a4 + 32));
            return;
          }

          v14 = sub_1C43FE99C();
          sub_1C456902C(v14, v15);
          v16 = *(a4 + 36);
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v17, v18, v19, v20);
}

uint64_t sub_1C44CCA78(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v9 = sub_1C43FCF8C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_1C4EFD548();
    v14 = sub_1C43FCF8C(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = type metadata accessor for Source();
      v18 = sub_1C43FCF8C(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v20 = sub_1C4EFEEF8();
        result = sub_1C43FCF8C(v20);
        if (*(v22 + 84) != a3)
        {
          *(a1 + a4[8] + 8) = a2;
          return result;
        }

        v11 = result;
        v16 = a4[7];
      }
    }

    v12 = a1 + v16;
  }

  return sub_1C440BAA8(v12, a2, a2, v11);
}

void sub_1C44CCBF0()
{
  sub_1C43FF404();
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v5 = sub_1C43FCF8C(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = sub_1C4EFD548();
    v10 = sub_1C43FCF8C(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = v2[5];
    }

    else
    {
      v13 = type metadata accessor for Source();
      v14 = sub_1C43FCF8C(v13);
      if (*(v15 + 84) == v3)
      {
        v7 = v14;
        v12 = v2[6];
      }

      else
      {
        v16 = sub_1C4EFEEF8();
        v17 = sub_1C43FCF8C(v16);
        if (*(v18 + 84) != v3)
        {
          sub_1C441864C(v2[8]);
          return;
        }

        v7 = v17;
        v12 = v2[7];
      }
    }

    v8 = v1 + v12;
  }

  sub_1C440BAA8(v8, v0, v0, v7);
}

void sub_1C44CCD54()
{
  sub_1C4E93A3C();
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C4EFD548();
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = type metadata accessor for Source();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = sub_1C4EFEEF8();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          if (v1 == 2147483646)
          {
            sub_1C4EDD7A4();
            return;
          }

          v10 = sub_1C43FE99C();
          sub_1C456902C(v10, v11);
          v12 = *(v0 + 44);
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v13, v14, v15, v16);
}

uint64_t sub_1C44CCECC()
{
  sub_1C43FF404();
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v4);
  if (*(v5 + 84) == v3)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v6 = sub_1C4EFD548();
    sub_1C43FCF8C(v6);
    if (*(v7 + 84) == v3)
    {
      sub_1C4418160();
    }

    else
    {
      v8 = type metadata accessor for Source();
      sub_1C43FCF8C(v8);
      if (*(v9 + 84) == v3)
      {
        sub_1C4416C20();
      }

      else
      {
        v10 = sub_1C4EFEEF8();
        result = sub_1C43FCF8C(v10);
        if (*(v12 + 84) != v3)
        {
          *(v1 + *(v2 + 32) + 8) = v0;
          return result;
        }

        sub_1C441D7B0();
      }
    }
  }

  sub_1C43FE688();

  return sub_1C440BAA8(v13, v14, v15, v16);
}

uint64_t sub_1C44CD024()
{
  v2 = *(v0 + 32);

  return sub_1C4EFD548();
}

uint64_t sub_1C44CD064()
{

  return sub_1C44DDE2C();
}

uint64_t sub_1C44CD080()
{

  return sub_1C4EFB438();
}

uint64_t sub_1C44CD0A0()
{

  return swift_slowAlloc();
}

uint64_t sub_1C44CD0F4()
{

  return sub_1C448D610(v1, v0, v2);
}

void sub_1C44CD14C()
{
  v2 = *(v0 + 376);
  v3 = *(v0 + 360);

  sub_1C4CDF41C(v2);
}

uint64_t sub_1C44CD164()
{
  v2 = *(v0 - 96);

  return sub_1C4F02BC8();
}

uint64_t sub_1C44CD19C()
{
  result = v1 + v0;
  v4 = *(v2 - 72);
  return result;
}

uint64_t sub_1C44CD1A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C44CD1F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C44CD238(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C44CD280(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C44CD2C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C44CD310(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C44CD358(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C44CD3A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C44CD3E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C44CD430(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C44CD478(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C44CD4C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C44CD508(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C44CD550(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C44CD598(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C44CD5DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C44CD624(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SimpleBlockingFunction.blockValue(_:)(uint64_t a1, uint64_t a2)
{
  v24[4] = a1;
  v24[5] = a2;
  v25 = sub_1C4F00FF8();
  v26 = v4;
  v24[6] = 32;
  v24[7] = 0xE100000000000000;
  sub_1C4415EA8();
  v5 = sub_1C4F01FC8();

  v6 = 0;
  v7 = *(v5 + 16);
  v8 = v5 + 40;
  v9 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v10 = (v8 + 16 * v6);
  while (v7 != v6)
  {
    if (v6 >= *(v5 + 16))
    {
      __break(1u);
LABEL_21:
      v21 = *(v9 + 16);
      sub_1C443D664();
      v9 = v22;
      goto LABEL_16;
    }

    ++v6;
    v2 = *(v10 - 1);
    v11 = *v10;
    v10 += 2;
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v25 = v9;
      v27 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = *(v9 + 16);
        sub_1C44CD9C0();
        v9 = v25;
      }

      v3 = *(v9 + 16);
      if (v3 >= *(v9 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v9 = v25;
      }

      *(v9 + 16) = v3 + 1;
      v14 = v9 + 16 * v3;
      *(v14 + 32) = v2;
      *(v14 + 40) = v11;
      v8 = v27;
      goto LABEL_2;
    }
  }

  if (!*(v9 + 16))
  {
    return v9;
  }

  v25 = sub_1C4F00FF8();
  v26 = v15;
  MEMORY[0x1EEE9AC00](v25);
  v24[2] = &v25;
  v16 = sub_1C44CE068(sub_1C44CE790, v24, v9);

  if (v16)
  {
    return v9;
  }

  v2 = sub_1C4F00FF8();
  v3 = v17;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  v18 = *(v9 + 16);
  if (v18 >= *(v9 + 24) >> 1)
  {
    sub_1C443D664();
    v9 = v23;
  }

  *(v9 + 16) = v18 + 1;
  v19 = v9 + 16 * v18;
  *(v19 + 32) = v2;
  *(v19 + 40) = v3;
  return v9;
}

uint64_t sub_1C44CD8FC()
{

  return sub_1C4851984();
}

uint64_t sub_1C44CD920(uint64_t a1)
{
  v5 = *(v3 + *(a1 + 24));
  v6 = *(v1 + v2);

  return swift_task_alloc();
}

BOOL sub_1C44CD940()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t sub_1C44CD974()
{
  result = v0 + *(v1 - 120);
  v3 = *(v1 - 208);
  v4 = *(v1 - 192);
  return result;
}

uint64_t sub_1C44CD98C@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *(v2 + a1) = a2;
  *(v2 + *(v3 + 48)) = *(v4 - 148);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C44CD9C0()
{
  v1 = *v0;
  sub_1C44CDF38();
  *v0 = v2;
}

uint64_t sub_1C44CD9E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1C43FBCA4(a1, a2, a3, a4);
  sub_1C43FBCE0(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_1C44CDA30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1C43FBCA4(a1, a2, a3, a4);
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 32);
  v8 = sub_1C43FBC98();
  v9(v8);
  return v4;
}

uint64_t sub_1C44CDA7C()
{
  sub_1C4404078();
  v3 = sub_1C456902C(v1, v2);
  sub_1C43FBCE0(v3);
  v5 = *(v4 + 32);
  v6 = sub_1C43FBC98();
  v7(v6);
  return v0;
}

uint64_t sub_1C44CDAD4()
{
  v0 = sub_1C4EF9648();
  v1 = sub_1C43FCDF8(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v4 = sub_1C4EF9378();
  v5 = sub_1C43FBD18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = sub_1C4EF93D8();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1C4EF93C8();
  sub_1C4EF9358();
  sub_1C4EF9388();
  sub_1C44CE010();
  v11 = sub_1C4EF93B8();
  v13 = v12;
  v14 = sub_1C44CE108(v11, v12);
  if (v15)
  {
    goto LABEL_8;
  }

  v28 = v11;
  v29 = v13;
  v16 = sub_1C43FD018();
  sub_1C44344B8(v16, v17);
  sub_1C456902C(&qword_1EC0C61A0, &qword_1C4F1E400);
  if (!swift_dynamicCast())
  {
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    sub_1C4423A0C(v26, &qword_1EC0BB218, &qword_1C4F2DA00);
LABEL_7:
    v21 = sub_1C43FD018();
    v14 = sub_1C47DC7B8(v21, v22);
LABEL_8:
    v20 = v14;

    v23 = sub_1C43FD018();
    sub_1C4434000(v23, v24);
    return v20;
  }

  sub_1C441D670(v26, v30);
  sub_1C4409678(v30, v31);
  if ((sub_1C4F02588() & 1) == 0)
  {
    sub_1C440962C(v30);
    goto LABEL_7;
  }

  v18 = sub_1C43FD018();
  sub_1C4434000(v18, v19);
  sub_1C4409678(v30, v31);
  sub_1C4F02578();

  v20 = *&v26[0];
  sub_1C440962C(v30);
  return v20;
}

void sub_1C44CDF38()
{
  sub_1C441581C();
  if (v5)
  {
    sub_1C441172C();
    if (v7 != v8)
    {
      sub_1C442B904();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1C440A4D4();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1C442DD18(v6);
  if (v3)
  {
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    v9 = sub_1C44182F4();
    sub_1C4424F4C(v9);
    v9[2] = v2;
    v9[3] = 2 * (v10 / 16);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = sub_1C441D138();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

unint64_t sub_1C44CE010()
{
  result = qword_1EDDFA400;
  if (!qword_1EDDFA400)
  {
    sub_1C4EF9648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA400);
  }

  return result;
}

BOOL sub_1C44CE068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C43FD6BC(a1, a2, a3);
  v6 = (v5 + 40);
  v8 = v7 + 1;
  do
  {
    if (!--v8)
    {
      break;
    }

    v21 = *(v6 - 1);
    v22 = *v6;
    v9 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = sub_1C4411C74(v9, v10, v11, v12, v13, v14, v15, v16, v21);
    v18 = v4(v17);
    if (v3)
    {

      return v8 != 0;
    }

    v19 = v18;
    v6 += 2;
  }

  while ((v19 & 1) == 0);
  return v8 != 0;
}

uint64_t sub_1C44CE108(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
      }

      v4 = a1;
      if (sub_1C4EF9538() && __OFSUB__(v4, sub_1C4EF9568()))
      {
        goto LABEL_14;
      }

LABEL_9:
      sub_1C4EF9558();
LABEL_10:
      result = sub_1C4F01258();
      v6 = *MEMORY[0x1E69E9840];
      return result;
    case 2uLL:
      v2 = *(a1 + 16);
      v3 = *(a1 + 24);
      if (sub_1C4EF9538() && __OFSUB__(v2, sub_1C4EF9568()))
      {
        goto LABEL_13;
      }

      if (!__OFSUB__(v3, v2))
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    default:
      goto LABEL_10;
  }
}

uint64_t sub_1C44CE310()
{
  v0 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v1 = sub_1C43FBD18(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v52 = &v44 - v4;
  v53 = sub_1C4EF9CD8();
  v5 = sub_1C43FCDF8(v53);
  v46 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v45 = v10 - v9;
  v11 = sub_1C456902C(&unk_1EC0B9830, qword_1C4F0FC20);
  v12 = sub_1C43FBD18(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = sub_1C456902C(&unk_1EC0BA0F0, &unk_1C4F1D8A0);
  v16 = sub_1C43FBD18(v15);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = sub_1C4EF9648();
  v23 = sub_1C43FCDF8(v22);
  v50 = v24;
  v51 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBCC4();
  v29 = v28 - v27;
  sub_1C4EF9628();
  sub_1C4EF9638();
  v49 = sub_1C4EF95D8();
  v47 = v30;
  v31 = sub_1C4EF95E8();
  if (v32)
  {
    v33 = 1;
  }

  else
  {
    v33 = v31;
  }

  v48 = v33;
  sub_1C4EF95A8();
  sub_1C4EF95C8();
  sub_1C4EF95F8();
  sub_1C4EF9608();
  v34 = v29;
  sub_1C4EF9618();
  sub_1C4EF9628();
  v35 = sub_1C4EF9F88();
  if (sub_1C44157D4(v21, 1, v35) == 1)
  {
    (*(v50 + 8))(v34, v51);
    sub_1C4423A0C(v21, &unk_1EC0BA0F0, &unk_1C4F1D8A0);
    v36 = v52;
    sub_1C440BAA8(v52, 1, 1, v53);
  }

  else
  {
    v38 = v50;
    v37 = v51;
    v36 = v52;
    sub_1C4EF9F08();
    (*(*(v35 - 8) + 8))(v21, v35);
    v39 = v53;
    if (sub_1C44157D4(v36, 1, v53) != 1)
    {
      v42 = v45;
      v41 = v46;
      (*(v46 + 32))(v45, v36, v39);
      sub_1C4EF9AD8();
      v40 = sub_1C4F019E8();
      (*(v41 + 8))(v42, v39);
      (*(v38 + 8))(v34, v37);
      return v40;
    }

    (*(v38 + 8))(v34, v37);
  }

  sub_1C4423A0C(v36, &unk_1EC0B84E0, qword_1C4F0D2D0);
  return 0;
}

uint64_t sub_1C44CE7B0(uint64_t a1, uint64_t a2, void *a3, void (**a4)(char *, uint64_t))
{
  v128 = a4;
  v124 = a3;
  v122 = a2;
  v145 = a1;
  v131 = sub_1C4EFCD08();
  v5 = sub_1C43FCDF8(v131);
  v136 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  v125 = v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  v134 = &v114 - v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  v126 = &v114 - v13;
  sub_1C43FBE44();
  v14 = sub_1C4EFCCC8();
  v15 = sub_1C43FCDF8(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBFDC();
  v144 = v20;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v114 - v22;
  v24 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v114 - v26;
  v28 = sub_1C4EF9D38();
  v29 = sub_1C43FCDF8(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBFDC();
  v130 = v34;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v114 - v36;
  v38 = v4;
  sub_1C44CF428(v27);
  if (sub_1C44157D4(v27, 1, v28) == 1)
  {
    sub_1C4420C3C(v27, &qword_1EC0B9DC8, &unk_1C4F124A0);
LABEL_15:
    v60 = 0;
    return v60 & 1;
  }

  (*(v31 + 32))(v37, v27, v28);
  v39 = *(v17 + 104);
  LODWORD(v135) = *MEMORY[0x1E69E0620];
  v142 = v39;
  v143 = v17 + 104;
  v39(v23);
  v40 = sub_1C4EFCCB8();
  v41 = *(v17 + 8);
  v137 = v17 + 8;
  v141 = v41;
  v41(v23, v14);
  v145 = v40;
  v140 = *(v40 + 16);
  if (!v140)
  {
    (*(v31 + 8))(v37, v28);

    goto LABEL_15;
  }

  v133 = v37;
  v129 = v28;
  v127 = v38;
  v123 = 0;
  v42 = 0;
  v138 = (v136 + 8);
  v139 = v136 + 16;
  v43 = v131;
  v44 = v134;
  v146 = v23;
  v121 = v31;
  v45 = v141;
  while (v140 != v42)
  {
    if (v42 >= *(v145 + 16))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      sub_1C4419274();
      swift_once();
LABEL_39:
      v108 = sub_1C4F00978();
      sub_1C442B738(v108, qword_1EDE2DE10);
      v109 = sub_1C4F00968();
      v110 = sub_1C4F01CD8();
      v111 = os_log_type_enabled(v109, v110);
      v112 = v123;
      if (v111)
      {
        v113 = swift_slowAlloc();
        *v113 = 0;
        _os_log_impl(&dword_1C43F8000, v109, v110, "PHPerson: Invalid call to VUGallery", v113, 2u);
        sub_1C43FBE2C();
      }

LABEL_36:
      v60 = v119;
      return v60 & 1;
    }

    v134 = ((*(v136 + 80) + 32) & ~*(v136 + 80));
    v46 = *(v136 + 9);
    v47 = *(v136 + 2);
    v47(v44, &v134[v145 + v46 * v42], v43);
    sub_1C4EFCCE8();
    v48 = v144;
    v142(v144, v135, v14);
    sub_1C4693DE4(&qword_1EDDEFFF0, MEMORY[0x1E69E0630]);
    sub_1C44087D0();
    sub_1C440F480();
    v45(v48, v14);
    v45(v146, v14);
    if (v147 == v148)
    {
      v49 = v134;
      v135 = v47;
      v132 = v46;
      v50 = v136 + 32;
      (*(v136 + 4))(v126, v44, v43);
      v51 = sub_1C4EFCCF8();
      v52 = *(v50 - 3);
      v53 = sub_1C43FD2BC();
      v136 = v54;
      v54(v53);
      if (v51)
      {
        v55 = 4;
      }

      else
      {
        v55 = 3;
      }

      v118 = v55;
      v56 = [v128 stringFromContact_];
      if (v56)
      {
        v58 = v56;
        v117 = sub_1C4F01138();
        v120 = v59;
      }

      else
      {
        v117 = 0;
        v120 = 0;
      }

      v61 = v125;
      v62 = v132;
      v63 = v135;
      v64 = v49;
      LODWORD(v119) = 0;
      v65 = 0;
      LODWORD(v134) = *MEMORY[0x1E69E0608];
      v128 = (v121 + 8);
      v66 = &v64[v145];
      *&v57 = 136315394;
      v114 = v57;
      v67 = v131;
      while (1)
      {
        if (v65 >= *(v145 + 16))
        {
          goto LABEL_43;
        }

        v63(v61, v66, v67);
        v68 = v67;
        sub_1C4EFCCE8();
        v69 = v144;
        v142(v144, v134, v14);
        sub_1C44087D0();
        sub_1C440F480();
        v70 = v69;
        v71 = v146;
        v72 = v141;
        v141(v70, v14);
        v72(v71, v14);
        if (v147 == v148)
        {
          sub_1C4461BB8(0, &qword_1EC0C2A80, 0x1E6978980);
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v74 = v130;
          sub_1C4EFCCD8();
          v67 = sub_1C4EF9CF8();
          v75 = v61;
          v77 = v76;
          v126 = *v128;
          (v126)(v74, v129);
          v78 = sub_1C4693D58(v67, v77, ObjCClassFromMetadata);
          if (!v79)
          {
            sub_1C440A888();
            v103();
            v61 = v75;
LABEL_33:
            v62 = v132;
            v105 = v133;
            goto LABEL_34;
          }

          v80 = v78;
          v81 = v79;
          v67 = v127;
          v82 = sub_1C46903EC(v78, v79, v124);
          v62 = v132;
          if (v82)
          {
            v83 = [v67 identifier];
            v84 = v81;
            v85 = sub_1C4F01138();
            v86 = v80;
            v88 = v87;

            LOBYTE(v147) = v118;
            v89.value._countAndFlagsBits = v85;
            v89.value._object = v88;
            v90.value._countAndFlagsBits = v117;
            v90.value._object = v120;
            v121 = v86;
            v91._countAndFlagsBits = v86;
            v91._object = v84;
            VisionKeyValueStore.store(entityIdentifier:name:relationship:visualIdentifier:association:confidence:)(v89, v90, 0, v91, &v147, 1.0);
            v123 = v92;
            if (v92)
            {

              (v136)(v125, v131);
              (v126)(v133, v129);
              if (qword_1EDDFD028 != -1)
              {
                goto LABEL_44;
              }

              goto LABEL_39;
            }

            if (qword_1EDDFD028 != -1)
            {
              sub_1C4419274();
              swift_once();
            }

            v93 = sub_1C4F00978();
            sub_1C442B738(v93, qword_1EDE2DE10);
            v94 = v127;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v67 = sub_1C4F00968();
            v95 = sub_1C4F01CC8();

            if (os_log_type_enabled(v67, v95))
            {
              v96 = swift_slowAlloc();
              v119 = v67;
              v67 = v96;
              v126 = swift_slowAlloc();
              v147 = v126;
              *v67 = v114;
              v97 = [v94 identifier];
              v115 = sub_1C4F01138();
              v116 = v95;
              v99 = v98;

              v100 = sub_1C441D828(v115, v99, &v147);

              *(v67 + 4) = v100;
              *(v67 + 6) = 2080;
              v101 = sub_1C441D828(v121, v84, &v147);

              *(v67 + 14) = v101;
              v102 = v119;
              _os_log_impl(&dword_1C43F8000, v119, v116, "CNContact: %s tagged with %s", v67, 0x16u);
              swift_arrayDestroy();
              sub_1C43FBE2C();
              sub_1C43FBE2C();
            }

            else
            {
            }

            v61 = v125;
            sub_1C440A888();
            v106();
            LODWORD(v119) = 1;
            goto LABEL_33;
          }

          v61 = v125;
          sub_1C440A888();
          v104();
        }

        else
        {
          (v136)(v61, v68);
          v67 = v68;
        }

        v105 = v133;
LABEL_34:
        ++v65;
        v66 += v62;
        v63 = v135;
        if (v140 == v65)
        {

          (*v128)(v105, v129);
          goto LABEL_36;
        }
      }
    }

    ++v42;
    (*v138)(v44, v43);
  }

  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

uint64_t sub_1C44CF3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1C4F02938() & 1;
  }
}

uint64_t sub_1C44CF428@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C43FED8C();
  sub_1C4F01138();

  v4 = sub_1C43FED8C();
  sub_1C4F01138();

  v5 = sub_1C4F012A8();

  if (v5 > 36)
  {

    v6 = sub_1C43FED8C();
    sub_1C4F01138();

    v7 = sub_1C44CF75C(36);
    MEMORY[0x1C693FEF0](v7);

LABEL_11:
    sub_1C4EF9CE8();
  }

  v8 = sub_1C43FED8C();
  sub_1C4F01138();

  v9 = sub_1C4F012A8();

  if (v9 >= 36)
  {
    goto LABEL_11;
  }

  if (qword_1EDDFD028 != -1)
  {
    sub_1C4419274();
    swift_once();
  }

  v10 = sub_1C4F00978();
  sub_1C442B738(v10, qword_1EDE2DE10);
  v11 = v1;
  v12 = sub_1C4F00968();
  v13 = sub_1C4F01CD8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315138;
    v16 = [v11 identifier];
    v17 = sub_1C4F01138();
    v19 = v18;

    v20 = sub_1C441D828(v17, v19, &v23);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_1C43F8000, v12, v13, "%s is a malformed identifier and cannot be converted into a UUID.", v14, 0xCu);
    sub_1C440962C(v15);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v21 = sub_1C4EF9D38();

  return sub_1C440BAA8(a1, 1, 1, v21);
}

uint64_t sub_1C44CF75C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1C4F012D8();
    sub_1C4F01448();
    sub_1C44025B0();
    return sub_1C4460468();
  }

  return result;
}

uint64_t ContactHandleBlockingFunction.blockValue(_:)()
{
  if (String.normalizedContactHandle()().value._object)
  {
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    v0 = swift_allocObject();
    *(v0 + 16) = xmmword_1C4F0D130;
    v1 = sub_1C4F00FF8();
    v3 = v2;

    *(v0 + 32) = v1;
    *(v0 + 40) = v3;
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v4 = sub_1C4F00978();
    sub_1C442B738(v4, qword_1EDE2DE10);
    v5 = sub_1C4F00968();
    v6 = sub_1C4F01CB8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1C43F8000, v5, v6, "ContactHandleBlockingFunction: Passed a handle that was not a handle", v7, 2u);
      MEMORY[0x1C6942830](v7, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return v0;
}

uint64_t sub_1C44CF9EC()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 32);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

Swift::String_optional __swiftcall String.normalizedContactHandle()()
{
  v0 = sub_1C4EF9488();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E6996728]) init];
  sub_1C4402120();
  v6 = sub_1C4F01108();
  v7 = [v5 typeOfHandleString_];

  if (v7 == 1)
  {
    v8 = objc_autoreleasePoolPush();
    sub_1C4402120();
    v25[0] = sub_1C4F00FF8();
    v25[1] = v9;
    sub_1C4EF9448();
    sub_1C4415EA8();
    v10 = sub_1C4F01FF8();
    v12 = v11;
    (*(v1 + 8))(v4, v0);

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    sub_1C442040C();
    if (v13)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      sub_1C440F228();
      sub_1C4F012B8();
      sub_1C440F228();
      v17 = sub_1C44DBF14(v14, v15, v16);
      MEMORY[0x1C693FEF0](v17);
    }

    sub_1C4461BB8(0, &qword_1EDDFA538, 0x1E695CF50);
    sub_1C4402120();
    v18 = sub_1C44D0148();
    v19 = [v18 unformattedInternationalStringValue];
    if (v19)
    {
      v20 = v19;
      v10 = sub_1C4F01138();
      v12 = v21;
    }

    else
    {

      v10 = 0;
      v12 = 0;
    }
  }

  v22 = v10;
  v23 = v12;
  result.value._object = v23;
  result.value._countAndFlagsBits = v22;
  return result;
}

uint64_t sub_1C44CFC70()
{
  v1 = [v0 phoneNumbers];
  sub_1C456902C(&qword_1EC0BAD60, &qword_1C4F175B0);
  sub_1C4F01678();

  sub_1C44CFE98();
  v3 = v2;

  v4 = [v0 emailAddresses];
  sub_1C4F01678();

  sub_1C44CFE98();
  v6 = v5;

  sub_1C44D1BBC(v6);
  return v3;
}

unint64_t sub_1C44CFDB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; ; i = sub_1C4F012B8())
  {
    if (i >> 14 == v7)
    {
      return 0;
    }

    if (sub_1C4F01428() == a1 && v9 == a2)
    {
      break;
    }

    v11 = sub_1C4F02938();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

void sub_1C44CFEC4()
{
  sub_1C43FE96C();
  v7 = v6;
  sub_1C4425280(v8);
  v9 = sub_1C456902C(&unk_1EC0BADC0, &qword_1C4F402C0);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FE94C();
  v39 = type metadata accessor for CNContactStructs.AddressRelationshipType(0);
  v13 = sub_1C43FCDF8(v39);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  v38 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD230();
  v36 = v18;
  v7(v1);
  sub_1C44044E4();
  v19 = MEMORY[0x1E69E7CC0];
  v37 = v1;
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_18;
    }

    if (v40)
    {
      v20 = MEMORY[0x1C6940F90](v4, v1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_20;
      }

      v20 = *(v1 + 8 * v4 + 32);
    }

    v21 = v20;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v22 = sub_1C442E11C();
    v23(v22);
    if (v0)
    {

LABEL_18:
      sub_1C4402144();
      sub_1C43FBC80();
      return;
    }

    v24 = sub_1C441B908();
    if (sub_1C44157D4(v24, v25, v39) == 1)
    {
      sub_1C4420C3C(v3, &unk_1EC0BADC0, &qword_1C4F402C0);
    }

    else
    {
      sub_1C44D0C04(v3, v36, type metadata accessor for CNContactStructs.AddressRelationshipType);
      sub_1C44D0C04(v36, v38, type metadata accessor for CNContactStructs.AddressRelationshipType);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = *(v19 + 16);
        v31 = sub_1C43FCEC0();
        sub_1C44D0D14(v31, v32, v33, v19);
        v19 = v34;
      }

      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1C44D0D14(v26 > 1, v27 + 1, 1, v19);
        v19 = v35;
      }

      *(v19 + 16) = v27 + 1;
      sub_1C43FBF6C();
      sub_1C44D0C04(v38, v19 + v28 + *(v29 + 72) * v27, type metadata accessor for CNContactStructs.AddressRelationshipType);
      v1 = v37;
    }

    ++v4;
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

id sub_1C44D0148()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1C4F01108();

  v2 = [v0 initWithStringValue_];

  return v2;
}

uint64_t VisionKeyValueStore.fetchVisualIdentifiers(for:)()
{
  v1 = *(v0 + 16);
  result = sub_1C44D01BC();
  if (!result)
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void sub_1C44D029C(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for CNContactStructs.AddressRelationshipType(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = sub_1C44D06D0([*a1 value]);
  if (v17)
  {
    v60 = v17;
    v61 = v16;
    v59 = a4;
    v63 = v14;
    v64 = a5;
    v65 = v11;
    v66 = v5;
    v18 = a2[3];
    v19 = a2[4];
    sub_1C4409678(a2, v18);
    v20 = *MEMORY[0x1E695C330];
    v21 = sub_1C4F01138();
    v23 = v22;
    v62 = v15;
    v24 = [v15 identifier];
    v25 = sub_1C4F01138();
    v27 = v26;

    v28 = (*(v19 + 8))(a3, v21, v23, v25, v27, 0, 0, 0, 0, v18, v19);

    v67 = sub_1C4428DA0(v28);
    v29 = 0;
    v30 = MEMORY[0x1E69E7CC0];
    while (v67 != v29)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x1C6940F90](v29, v28);
      }

      else
      {
        if (v29 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v31 = *(v28 + 8 * v29 + 32);
      }

      v32 = v31;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        return;
      }

      v33 = [v31 actionType];
      v34 = sub_1C4F01138();
      v36 = v35;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = *(v30 + 16);
        sub_1C443D664();
        v30 = v40;
      }

      v37 = *(v30 + 16);
      if (v37 >= *(v30 + 24) >> 1)
      {
        sub_1C443D664();
        v30 = v41;
      }

      *(v30 + 16) = v37 + 1;
      v38 = v30 + 16 * v37;
      *(v38 + 32) = v34;
      *(v38 + 40) = v36;
      ++v29;
    }

    v42 = v63;
    sub_1C44D092C(v63);
    v43 = v65;
    v44 = (v42 + v65[12]);
    v45 = v44[1];

    v46 = v60;
    *v44 = v61;
    v44[1] = v46;
    v47 = [v62 label];
    if (v47)
    {
      v48 = v47;
      v49 = sub_1C4F01138();
      v51 = v50;
    }

    else
    {
      v49 = 0;
      v51 = 0;
    }

    v52 = v64;
    v53 = (v42 + v43[10]);
    v54 = v53[1];

    *v53 = v49;
    v53[1] = v51;
    if (v67)
    {
      v55 = v42 + v43[14];
      v56 = *(v55 + 8);

      *v55 = xmmword_1C4F17530;
      v57 = v43[16];
      v58 = *(v42 + v57);

      *(v42 + v57) = v30;
      *v59 = 1;
    }

    else
    {
    }

    sub_1C448CA30();
    sub_1C440BAA8(v52, 0, 1, v43);
    sub_1C44C45FC(v42, type metadata accessor for CNContactStructs.AddressRelationshipType);
  }

  else
  {
    sub_1C440BAA8(a5, 1, 1, v11);
  }
}

uint64_t VisualIdentifierBlockingFunction.blockValue(_:)()
{
  v1 = *(v0 + 16);
  v2 = VisionKeyValueStore.fetchVisualIdentifiers(for:)();
  sub_1C4D3F510(v2);
  v4 = v3;

  return v4;
}

uint64_t sub_1C44D06D0(void *a1)
{
  v2 = [a1 unformattedInternationalStringValue];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C44D07B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v11 = a5;
  if (a3)
  {
    v13 = sub_1C4F01108();
    if (!v11)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13 = 0;
  if (a5)
  {
LABEL_3:
    v11 = sub_1C4F01108();
  }

LABEL_4:
  if (a7)
  {
    a7 = sub_1C4F01108();
  }

  if (a9)
  {
    v14 = sub_1C4F01108();
  }

  else
  {
    v14 = 0;
  }

  v15 = [v9 entriesForContact:a1 propertyKey:v13 labeledValueIdentifier:v11 actionType:a7 bundleIdentifier:v14];

  sub_1C4461BB8(0, &qword_1EDDF0468, 0x1E695CE98);
  v16 = sub_1C4F01678();

  return v16;
}

void sub_1C44D092C(uint64_t a1@<X8>)
{
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v2, v3, v4, v5);
  v6 = type metadata accessor for CNContactStructs.AddressRelationshipType(0);
  v7 = a1 + v6[5];
  sub_1C4EFD1D8();
  v8 = v6[6];
  if (qword_1EDDFED28 != -1)
  {
    sub_1C44133AC();
    swift_once();
  }

  v9 = type metadata accessor for Source();
  sub_1C442B738(v9, &unk_1EDDFD088);
  sub_1C4408374();
  sub_1C44CC80C(v10, a1 + v8, v11);
  v12 = a1 + v6[7];
  sub_1C4EFE518();
  sub_1C4401738(v6[8]);
  v13 = a1 + v6[9];
  sub_1C4EFE4E8();
  sub_1C4401738(v6[10]);
  v14 = a1 + v6[11];
  sub_1C4EFE478();
  sub_1C4401738(v6[12]);
  v15 = a1 + v6[13];
  sub_1C4EFE318();
  sub_1C4401738(v6[14]);
  v16 = a1 + v6[15];
  sub_1C4EFEB08();
  *(a1 + v6[16]) = 0;
  v17 = a1 + v6[17];
  sub_1C4EFE5A8();
  sub_1C4401738(v6[18]);
  v18 = a1 + v6[19];
  sub_1C4EFE4B8();
  sub_1C4401738(v6[20]);
  v19 = a1 + v6[21];
  sub_1C4EFEDE8();
  sub_1C4401738(v6[22]);
  v20 = a1 + v6[23];
  sub_1C4EFEA58();
  sub_1C4401738(v6[24]);
  v21 = a1 + v6[25];
  sub_1C4EFE8D8();
  sub_1C4401738(v6[26]);
  v22 = a1 + v6[27];
  sub_1C4EFE378();
  sub_1C4401738(v6[28]);
  v23 = a1 + v6[29];
  sub_1C4EFECD8();
  sub_1C4401738(v6[30]);
  v24 = a1 + v6[31];
  sub_1C4EFE688();
  sub_1C4401738(v6[32]);
}

uint64_t sub_1C44D0AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1C44D08D8(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1C44D0B30()
{
}

uint64_t sub_1C44D0B54()
{
  *(v0 - 360) = *(v0 + 16);
}

uint64_t sub_1C44D0B74()
{
  v4 = v1;
  v5 = *(v2 - 120);

  return sub_1C44BCC4C(v4, v0);
}

uint64_t sub_1C44D0B9C(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 296);
  return result;
}

uint64_t sub_1C44D0BC0()
{
  result = *(v0 - 192);
  v2 = *(v0 - 208);
  return result;
}

uint64_t sub_1C44D0C04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C44D0C64@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  if (v7)
  {
    sub_1C448CCC8(a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), a4, a3);
  }

  v9 = sub_1C442FDE8();

  return sub_1C440BAA8(v9, v10, v11, v12);
}

void sub_1C44D0D54()
{
  sub_1C43FE96C();
  v2 = v1;
  v3 = sub_1C4EFB768();
  v4 = sub_1C4403200(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C4F13950;
  v13 = *v1;
  v14 = v1[1];
  v15 = MEMORY[0x1E69E6158];
  v16 = MEMORY[0x1E69A0138];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = v16;
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;
  v17 = type metadata accessor for EntityBlock(0);
  v18 = v17[5];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v19 = sub_1C4EFD3D8();
  *(v12 + 96) = v15;
  *(v12 + 104) = v16;
  *(v12 + 72) = v19;
  *(v12 + 80) = v20;
  v21 = (v2 + v17[6]);
  v23 = *v21;
  v22 = v21[1];
  *(v12 + 136) = v15;
  *(v12 + 144) = v16;
  *(v12 + 112) = v23;
  *(v12 + 120) = v22;
  v24 = *(v2 + v17[7]);
  v25 = MEMORY[0x1E69A0168];
  *(v12 + 176) = MEMORY[0x1E69E63B0];
  *(v12 + 184) = v25;
  *(v12 + 152) = v24;
  v26 = 0xE700000000000000;
  v27 = 0x6E776F6E6B6E75;
  switch(*(v2 + v17[8]))
  {
    case 1:
      v26 = 0xE400000000000000;
      v27 = 1819047270;
      break;
    case 2:
      v26 = 0xE500000000000000;
      v27 = 0x61746C6564;
      break;
    case 3:
      v26 = 0xEA0000000000676ELL;
      v27 = 0x69686374614D6F74;
      break;
    default:
      break;
  }

  *(v12 + 216) = v15;
  *(v12 + 224) = v16;
  *(v12 + 192) = v27;
  *(v12 + 200) = v26;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFB728();
  sub_1C4EFBFF8();
  (*(v6 + 8))(v11, v0);
  sub_1C43FBC80();
}

uint64_t sub_1C44D0FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDF92E8, type metadata accessor for EntityBlock);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

void sub_1C44D108C(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  v68 = a3;
  v10 = type metadata accessor for CNContactStructs.AddressRelationshipType(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &object - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *a1;
  v13 = [v67 value];
  sub_1C4F01138();

  v14 = String.normalizedContactHandle()();

  if (!v14.value._object)
  {
    goto LABEL_16;
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E6996728]) init];
  countAndFlagsBits = v14.value._countAndFlagsBits;
  v16 = sub_1C4F01108();
  v17 = [v15 typeOfHandleString_];

  if (v17 != 1)
  {

LABEL_16:
    sub_1C440BAA8(a5, 1, 1, v10);
    return;
  }

  object = v14.value._object;
  v61 = a4;
  v62 = a5;
  v63 = v10;
  v64 = v5;
  v18 = a2[3];
  v19 = a2[4];
  sub_1C4409678(a2, v18);
  v20 = *MEMORY[0x1E695C208];
  v21 = sub_1C4F01138();
  v23 = v22;
  v24 = [v67 identifier];
  v25 = sub_1C4F01138();
  v27 = v26;

  v28 = (*(v19 + 8))(v68, v21, v23, v25, v27, 0, 0, 0, 0, v18, v19);

  v68 = sub_1C4428DA0(v28);
  v29 = 0;
  v30 = MEMORY[0x1E69E7CC0];
  while (v68 != v29)
  {
    if ((v28 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1C6940F90](v29, v28);
    }

    else
    {
      if (v29 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v31 = *(v28 + 8 * v29 + 32);
    }

    v32 = v31;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

    v33 = [v31 actionType];
    v34 = sub_1C4F01138();
    v36 = v35;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = *(v30 + 16);
      sub_1C443D664();
      v30 = v40;
    }

    v37 = *(v30 + 16);
    if (v37 >= *(v30 + 24) >> 1)
    {
      sub_1C443D664();
      v30 = v41;
    }

    *(v30 + 16) = v37 + 1;
    v38 = v30 + 16 * v37;
    *(v38 + 32) = v34;
    *(v38 + 40) = v36;
    ++v29;
  }

  v42 = v66;
  sub_1C44D092C(v66);
  v43 = v63;
  v44 = (v42 + v63[8]);
  v45 = v44[1];

  v46 = object;
  *v44 = countAndFlagsBits;
  v44[1] = v46;
  v47 = [v67 label];
  v48 = v61;
  if (v47)
  {
    v49 = v47;
    v50 = sub_1C4F01138();
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0;
  }

  v53 = v62;
  v54 = (v42 + v43[10]);
  v55 = v54[1];

  *v54 = v50;
  v54[1] = v52;
  if (v68)
  {
    v56 = v42 + v43[14];
    v57 = *(v56 + 8);

    *v56 = xmmword_1C4F17530;
    v58 = v43[16];
    v59 = *(v42 + v58);

    *(v42 + v58) = v30;
    *v48 = 1;
  }

  else
  {
  }

  sub_1C448CA30();
  sub_1C440BAA8(v53, 0, 1, v43);
  sub_1C44C45FC(v42, type metadata accessor for CNContactStructs.AddressRelationshipType);
}

void EntityBlock.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12)
{
  sub_1C43FE96C();
  v16 = v15;
  v17 = sub_1C4EFD548();
  v18 = sub_1C43FCDF8(v17);
  v43 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v24 = v23 - v22;
  v44 = sub_1C456902C(&qword_1EC0BE0E0, &qword_1C4F32618);
  sub_1C43FCDF8(v44);
  v42 = v25;
  v27 = *(v26 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  v29 = sub_1C44017FC();
  v30 = type metadata accessor for EntityBlock(v29);
  v31 = sub_1C43FBCE0(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBCC4();
  sub_1C43FD1B4();
  v34 = v16[4];
  sub_1C4417F50(v16, v16[3]);
  sub_1C44D190C();
  sub_1C4F02BC8();
  if (v13)
  {
    sub_1C440962C(v16);
  }

  else
  {
    *v14 = sub_1C4F02678();
    v14[1] = v35;
    sub_1C4405BEC();
    sub_1C44004E0();
    sub_1C4490F60(v36, v37);
    sub_1C4F026C8();
    (*(v43 + 32))(v14 + v30[5], v24, v17);
    sub_1C4401670();
    v38 = sub_1C4F02678();
    v39 = (v14 + v30[6]);
    *v39 = v38;
    v39[1] = v40;
    sub_1C4495238();
    sub_1C4F02698();
    *(v14 + v30[7]) = v41;
    sub_1C44C8A04();
    sub_1C4F026C8();
    (*(v42 + 8))(v12, v44);
    *(v14 + v30[8]) = a12;
    sub_1C449EEE8();
    sub_1C440962C(v16);
    sub_1C449F22C();
  }

  sub_1C43FBC80();
}

unint64_t sub_1C44D190C()
{
  result = qword_1EDDF9330[0];
  if (!qword_1EDDF9330[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF9330);
  }

  return result;
}

uint64_t sub_1C44D1960(uint64_t a1)
{
  result = sub_1C49E1A90(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  v5(result, 1);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  v11 = *(result - 8);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v14 = *(v9 + 16);
  v7 = __OFADD__(v14, v1);
  v15 = v14 + v1;
  if (!v7)
  {
    *(v9 + 16) = v15;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1C44D1A88(char a1)
{
  result = 0x676E696B636F6C62;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x6449797469746E65;
      break;
    case 3:
      result = 0x6D617473656D6974;
      break;
    case 4:
      result = 0x656E696C65706970;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C44D1B5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

void sub_1C44D1BE8()
{
  sub_1C43FBD3C();
  v3 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C44042B0();
  v8 = type metadata accessor for CNContactStructs.AddressRelationshipType(v7);
  v9 = sub_1C43FCF7C(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBD08();
  sub_1C44D458C();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4402CA8();
  v13 = *(type metadata accessor for CNContactStructs.Person(0) + 256);
  v14 = *(v0 + v13);
  if (v14)
  {
    if (*(v14 + 16))
    {
      sub_1C4401968(v14);
      v15 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C44CC80C(v13, v2, type metadata accessor for CNContactStructs.AddressRelationshipType);
        sub_1C4EFEA18();
        v16 = sub_1C4EFEEF8();
        v17 = sub_1C444C460(v16);
        sub_1C444088C(v17, v18, &qword_1EC0B9A08, &unk_1C4F107B0);
        sub_1C4482EF0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = *(v15 + 16);
          v26 = sub_1C43FCEC0();
          sub_1C44D0D14(v26, v27, v28, v15);
          v15 = v29;
        }

        sub_1C4473DBC();
        if (v20)
        {
          v30 = sub_1C4440B38(v19);
          sub_1C44D0D14(v30, v31, v32, v33);
          v15 = v34;
        }

        sub_1C4456300();
        sub_1C4D86E50();
        sub_1C44D4624(v1, v21, v22);
        sub_1C44401A4();
        sub_1C44D474C(v2, v23);
        sub_1C4D870C4();
      }

      while (!v24);

      v13 = v35;
      v0 = v36;
    }

    else
    {

      v15 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + v13) = v15;
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C44D1DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, void *a8@<X8>)
{
  v234 = a7;
  v9 = v8;
  v233[1] = a6;
  v246 = a5;
  v268 = a4;
  v267 = a3;
  v238 = a8;
  v280 = type metadata accessor for EntityBlock(0);
  v12 = *(*(v280 - 8) + 64);
  MEMORY[0x1EEE9AC00](v280);
  v247 = (v233 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v266 = sub_1C4EF9CD8();
  v249 = *(v266 - 8);
  v14 = *(v249 + 64);
  v15 = MEMORY[0x1EEE9AC00](v266);
  v244 = v233 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v243 = v233 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v271 = v233 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v260 = (v233 - v21);
  v265 = type metadata accessor for EntityPair(0);
  v22 = *(*(v265 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v265);
  v242 = v233 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v241 = v233 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v254 = v233 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = v233 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v263 = (v233 - v33);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v258 = v233 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v259 = v233 - v36;
  v37 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = v233 - v39;
  v285 = sub_1C4EFF0C8();
  v251 = *(v285 - 1);
  v41 = *(v251 + 64);
  v42 = MEMORY[0x1EEE9AC00](v285);
  v250 = v233 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v240 = v233 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v253 = v233 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v239 = v233 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v256 = (v233 - v51);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v281 = v233 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v283 = v233 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v262 = v233 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v276 = (v233 - v59);
  v60 = MEMORY[0x1EEE9AC00](v58);
  v272 = v233 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v257 = v233 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v278 = v233 - v65;
  MEMORY[0x1EEE9AC00](v64);
  v261 = v233 - v66;
  v67 = sub_1C4EFD548();
  v284 = v67;
  v68 = *(v67 - 8);
  v69 = *(v68 + 64);
  v70 = MEMORY[0x1EEE9AC00](v67);
  v264 = (v233 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = MEMORY[0x1EEE9AC00](v70);
  v252 = v233 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v236 = v233 - v75;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v245 = v233 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v277 = (v233 - v79);
  v80 = MEMORY[0x1EEE9AC00](v78);
  v279 = v233 - v81;
  MEMORY[0x1EEE9AC00](v80);
  v83 = v233 - v82;
  v270 = type metadata accessor for PairGenerator();
  v84 = v270[6];
  _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
  v282 = a1;
  v275 = v84;
  LOBYTE(a1) = sub_1C4EFD378();
  *&v248 = v68;
  v273 = *(v68 + 8);
  v274 = v68 + 8;
  v273(v83, v67);
  if ((a1 & 1) == 0)
  {
    v115 = *(v280 + 24);
    v280 = a2;
    v116 = (a2 + v115);
    v117 = *v116;
    v289 = v116[1];
    v290 = MEMORY[0x1E69E7CD0];
    v286 = 44;
    v287 = 0xE100000000000000;
    v288 = v117;
    sub_1C4415EA8();
    v118 = sub_1C4F01FC8();
    v119 = sub_1C44D4100(MEMORY[0x1E69E7CC0], v118, &v290);

    v288 = v119;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44D46A4(&v288);
    if (v8)
    {
      while (1)
      {

        __break(1u);
      }
    }

    v120 = v288;
    v121 = *(v288 + 16);
    v269 = v288;
    v89 = v281;
    v122 = v264;
    if (v121 > 0xFA)
    {
      v89 = v288;
      if (qword_1EDDFFAF0 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_100;
    }

    if (!v121)
    {
      v280 = 0;
      goto LABEL_89;
    }

    v134 = 0;
    v280 = 0;
    v31 = (v288 + ((*(v251 + 80) + 32) & ~*(v251 + 80)));
    v279 = (v251 + 16);
    v263 = (v248 + 16);
    v249 += 8;
    v135 = (v251 + 8);
    v248 = xmmword_1C4F0CE60;
    v237 = 1;
    v136 = v283;
    v255 = v121;
    v271 = (v251 + 8);
    v247 = v31;
    while (1)
    {
      if (v134 >= *(v120 + 16))
      {
        goto LABEL_99;
      }

      v137 = v134++;
      v138 = *(v251 + 72);
      v278 = *(v251 + 16);
      (v278)(v136, &v31[v138 * v137], v285);
      v235 = objc_autoreleasePoolPush();
      if (v134 == v121)
      {
LABEL_68:
        if ((sub_1C4EFEFF8() & 1) == 0)
        {
          v201 = v285;
          (v278)(v250, v136, v285);
          v202 = v272;
          sub_1C44D56D0();
          v203 = v202;
          v136 = v283;
          v204 = v201;
          v121 = v255;
          (*v135)(v203, v204);
        }

        goto LABEL_70;
      }

      v139 = &v31[v138 * v237];
      v233[0] = v134;
      v140 = v134;
      v141 = v89;
      v89 = v140;
      v258 = v138;
      do
      {
        if (v89 >= v121)
        {
          goto LABEL_94;
        }

        if (v89 >= *(v269 + 16))
        {
          goto LABEL_95;
        }

        v277 = v139;
        (v278)(v141);
        LODWORD(v257) = sub_1C4EFEFF8();
        if ((sub_1C4EFEFF8() & 1) == 0 || (sub_1C4EFEFF8() & 1) == 0)
        {
          v276 = v89;
          v142 = v282 + v270[5];
          if (*(v142 + *(type metadata accessor for Source() + 28)) == 1)
          {
            v143 = v9;
            v144 = v245;
            _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
            sub_1C44D7248(&unk_1EDDFE830, MEMORY[0x1E69A92C8]);
            v145 = v284;
            sub_1C4F01578();
            sub_1C4F01578();
            if (v288 == v286 && v289 == v287)
            {
              v273(v144, v145);

              v9 = v143;
            }

            else
            {
              v147 = sub_1C4F02938();
              v148 = v144;
              v149 = v147;
              v273(v148, v145);

              v9 = v143;
              if ((v149 & 1) == 0)
              {
                v150 = v236;
                sub_1C4EFCF28();
                v151 = v284;
                sub_1C4F01578();
                sub_1C4F01578();
                if (v288 == v286 && v289 == v287)
                {
                  v273(v150, v151);
                }

                else
                {
                  v153 = sub_1C4F02938();
                  v154 = v151;
                  v155 = v153;
                  v273(v150, v154);

                  if ((v155 & 1) == 0)
                  {
LABEL_48:
                    v156 = objc_autoreleasePoolPush();
                    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
                    v157 = swift_allocObject();
                    *(v157 + 16) = v248;
                    v158 = v283;
                    *(v157 + 32) = sub_1C4EFF048();
                    *(v157 + 40) = v159;
                    *(v157 + 48) = sub_1C4EFF048();
                    *(v157 + 56) = v160;
                    v288 = v157;
                    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                    sub_1C44ECB2C(&v288);
                    v262 = 0;
                    v259 = v156;

                    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
                    sub_1C443D694();
                    sub_1C4F01048();

                    v161 = sub_1C4EFEFF8();
                    v162 = *v263;
                    v260 = *v263;
                    if (v161)
                    {
                      v163 = v282;
                      v164 = v252;
                      v165 = v284;
                      v162(v252, v282 + v275, v284);
                      v166 = v285;
                      v167 = v278;
                      (v278)(v256, v281, v285);
                      v31 = v239;
                      (v167)(v239, v158, v166);
                      v168 = v243;
                      sub_1C4EF9C88();
                      sub_1C4EF9AD8();
                      v170 = v169;
                      (*v249)(v168, v266);
                      LODWORD(v261) = *(v163 + v270[7]);
                      v171 = v241;
                      v260(v241, v164, v165);
                      v172 = v265;
                      (v167)(&v171[*(v265 + 20)], v256, v166);
                      (v167)(&v171[v172[6]], v31, v166);
                      v173 = v272;
                      sub_1C4EFF098();
                      LOBYTE(v168) = sub_1C4EFF088();
                      v174 = *v271;
                      (*v271)(v173, v166);
                      if (v168)
                      {
                        v175 = v285;
                        v174(v31, v285);
                        v174(v256, v175);
                        v273(v252, v284);
                        v171[v172[7]] = 1;
                      }

                      else
                      {
                        v187 = sub_1C4EFEFF8();
                        v188 = v285;
                        v174(v31, v285);
                        v174(v256, v188);
                        v273(v252, v284);
                        v171[v172[7]] = v187 & 1;
                      }

                      v189 = v171;
                      v122 = v264;
                    }

                    else
                    {
                      v176 = v282;
                      v177 = v284;
                      v162(v122, v282 + v275, v284);
                      v178 = v253;
                      v179 = v158;
                      v31 = v285;
                      v180 = v278;
                      (v278)(v253, v179, v285);
                      v181 = v240;
                      (v180)(v240, v281, v31);
                      v182 = v244;
                      sub_1C4EF9C88();
                      sub_1C4EF9AD8();
                      v170 = v183;
                      (*v249)(v182, v266);
                      LODWORD(v261) = *(v176 + v270[7]);
                      v184 = v242;
                      v260(v242, v122, v177);
                      v185 = v265;
                      (v180)(&v184[*(v265 + 20)], v178, v31);
                      (v180)(&v184[v185[6]], v181, v31);
                      v186 = v272;
                      sub_1C4EFF098();
                      LOBYTE(v182) = sub_1C4EFF088();
                      v174 = *v271;
                      (*v271)(v186, v31);
                      if (v182)
                      {
                        v174(v181, v31);
                        v174(v253, v31);
                        v122 = v264;
                        v273(v264, v284);
                        v184[v185[7]] = 1;
                      }

                      else
                      {
                        v190 = sub_1C4EFEFF8();
                        v174(v181, v31);
                        v174(v253, v31);
                        v122 = v264;
                        v273(v264, v284);
                        v184[v185[7]] = v190 & 1;
                      }

                      v189 = v184;
                      v172 = v185;
                    }

                    v89 = v276;
                    *(v189 + v172[8]) = v170;
                    *(v189 + v172[9]) = v261;
                    v191 = v254;
                    sub_1C447212C(v189, v254);
                    v192 = sub_1C4EFEFF8();
                    v136 = v283;
                    if (v192 & 1) != 0 || (sub_1C4EFEFF8())
                    {
                      v193 = v250;
                      v194 = v285;
                      v195 = v174;
                      v196 = v278;
                      (v278)(v250, v136, v285);
                      v197 = v272;
                      sub_1C44D56D0();
                      v31 = v271;
                      v195(v197, v194);
                      (v196)(v193, v281, v194);
                      v174 = v195;
                      v89 = v276;
                      sub_1C44D56D0();
                      v198 = v197;
                      v136 = v283;
                      v199 = v194;
                      v122 = v264;
                      v195(v198, v199);
                    }

                    v200 = v262;
                    v267(v191);
                    v9 = v200;
                    if (v200)
                    {
                      sub_1C4485564(v191, type metadata accessor for EntityPair);

                      objc_autoreleasePoolPop(v259);
                      v206 = v285;
                      v174(v281, v285);
                      objc_autoreleasePoolPop(v235);
                      v174(v136, v206);
                      *v234 = v200;
                    }

                    sub_1C4485564(v191, type metadata accessor for EntityPair);
                    v141 = v281;
                    v114 = __OFADD__(v280++, 1);
                    if (v114)
                    {
                      goto LABEL_96;
                    }

                    objc_autoreleasePoolPop(v259);
                    v121 = v255;
                    v135 = v271;
                    v31 = v247;
                    goto LABEL_64;
                  }
                }
              }
            }
          }

          if ((sub_1C4EFEFF8() & 1) == 0 && (sub_1C4EFEFF8() & 1) == 0)
          {
            v136 = v283;
            v121 = v255;
            v135 = v271;
            v89 = v276;
            goto LABEL_64;
          }

          goto LABEL_48;
        }

LABEL_64:
        ++v89;
        (*v135)(v141, v285);
        v139 = &v258[v277];
      }

      while (v121 != v89);
      v89 = v141;
      v134 = v233[0];
      if ((v257 & 1) == 0)
      {
        goto LABEL_68;
      }

LABEL_70:
      objc_autoreleasePoolPop(v235);
      (*v135)(v136, v285);
      ++v237;
      v120 = v269;
      if (v134 == v121)
      {
LABEL_89:

LABEL_90:

        goto LABEL_91;
      }
    }
  }

  v85 = (a2 + *(v280 + 24));
  v87 = *v85;
  v86 = v85[1];
  v288 = v87;
  v289 = v86;
  v286 = 44;
  v287 = 0xE100000000000000;
  sub_1C4415EA8();
  v88 = sub_1C4F01FC8();
  v89 = v88;
  v281 = *(v88 + 16);
  if (!v281)
  {

    v280 = 0;
LABEL_91:
    *v238 = v280;
    return result;
  }

  v280 = 0;
  v90 = 0;
  v276 = (v251 + 32);
  v262 = (v251 + 16);
  v256 = (v249 + 8);
  v277 = (v251 + 8);
  v91 = (v88 + 40);
  v92 = v282;
  v31 = v261;
  v93 = v279;
  v255 = v40;
  v264 = v88;
  v263 = (v248 + 16);
  while (1)
  {
    if (v90 >= *(v89 + 16))
    {
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v94 = *(v91 - 1);
    v95 = *v91;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFF0D8();
    if (sub_1C44157D4(v40, 1, v285) == 1)
    {
      sub_1C4420C3C(v40, &unk_1EC0BA0E0, &qword_1C4F105A0);
      goto LABEL_17;
    }

    (*v276)(v31, v40, v285);
    if (sub_1C4EFEFF8())
    {
      (*v277)(v31, v285);
      goto LABEL_17;
    }

    v283 = v9;
    v269 = *v263;
    (v269)(v93, v92 + v275, v284);
    v96 = *v262;
    (*v262)(v278, v31, v285);
    v97 = v257;
    if (qword_1EDDFA100 != -1)
    {
      swift_once();
    }

    v98 = v285;
    v99 = sub_1C442B738(v285, qword_1EDE2DC60);
    v96(v97, v99, v98);
    v100 = v260;
    sub_1C4EF9C88();
    sub_1C4EF9AD8();
    v102 = v101;
    (*v256)(v100, v266);
    LODWORD(v271) = *(v92 + v270[7]);
    v103 = v258;
    (v269)(v258, v279, v284);
    v104 = v265;
    v96((v103 + *(v265 + 20)), v278, v98);
    v96((v103 + v104[6]), v97, v98);
    v105 = v272;
    sub_1C4EFF098();
    LOBYTE(v100) = sub_1C4EFF088();
    v106 = *v277;
    (*v277)(v105, v98);
    if (v100)
    {
      v107 = v285;
      v106(v97, v285);
      v106(v278, v107);
      v273(v279, v284);
      v108 = v104[7];
      v109 = 1;
    }

    else
    {
      v110 = sub_1C4EFEFF8();
      v111 = v285;
      v106(v97, v285);
      v106(v278, v111);
      v273(v279, v284);
      v108 = v104[7];
      v109 = v110 & 1;
    }

    *(v103 + v108) = v109;
    v112 = v259;
    *(v103 + v104[8]) = v102;
    *(v103 + v104[9]) = v271;
    sub_1C447212C(v103, v112);
    v113 = v283;
    v267(v112);
    v9 = v113;
    v31 = v261;
    if (v113)
    {
      break;
    }

    sub_1C4485564(v112, type metadata accessor for EntityPair);
    v106(v31, v285);
    v114 = __OFADD__(v280++, 1);
    v89 = v264;
    if (v114)
    {
      while (1)
      {
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        swift_once();
LABEL_22:
        v123 = sub_1C4F00978();
        sub_1C442B738(v123, qword_1EDE2E088);
        v124 = v247;
        sub_1C4471A3C(v280, v247);

        v125 = sub_1C4F00968();
        v126 = sub_1C4F01CF8();
        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          v288 = v128;
          *v127 = 136315394;
          v129 = v124;
          v130 = *v124;
          v131 = v9;
          v132 = *(v129 + 8);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4485564(v129, type metadata accessor for EntityBlock);
          v133 = sub_1C441D828(v130, v132, &v288);

          *(v127 + 4) = v133;
          *(v127 + 12) = 2048;
          *(v127 + 14) = *(v89 + 16);

          _os_log_impl(&dword_1C43F8000, v125, v126, "PairGenerator: entityBlock with key %s has %ld entities, skipping pair generation!", v127, 0x16u);
          sub_1C440962C(v128);
          MEMORY[0x1C6942830](v128, -1, -1);
          MEMORY[0x1C6942830](v127, -1, -1);
        }

        else
        {
          v131 = v9;

          sub_1C4485564(v124, type metadata accessor for EntityBlock);
        }

        v9 = v284;
        v280 = *(v89 + 16);
        v207 = v277;
        if (!v280)
        {
          break;
        }

        v208 = 0;
        LODWORD(v279) = *(v282 + v270[7]);
        v278 = (v89 + ((*(v251 + 80) + 32) & ~*(v251 + 80)));
        v209 = (v248 + 16);
        v264 = (v249 + 8);
        v260 = (v248 + 16);
        v270 = (v251 + 16);
        v261 = (v251 + 8);
        while (v208 < *(v269 + 16))
        {
          v89 = v31;
          v283 = v131;
          v210 = v251;
          v211 = *(v251 + 72);
          v281 = v208;
          v212 = &v278[v211 * v208];
          v213 = *v209;
          (*v209)(v207, v282 + v275, v9);
          v214 = *(v210 + 16);
          v215 = v276;
          v214(v276, v212, v285);
          if (qword_1EDDFA100 != -1)
          {
            swift_once();
          }

          v216 = v285;
          v217 = sub_1C442B738(v285, qword_1EDE2DC60);
          v218 = v262;
          v214(v262, v217, v216);
          v219 = v271;
          sub_1C4EF9C88();
          sub_1C4EF9AD8();
          v221 = v220;
          (*v264)(v219, v266);
          v222 = v284;
          v213(v89, v277, v284);
          v223 = v265;
          v214((v89 + *(v265 + 20)), v215, v216);
          v214((v89 + v223[6]), v218, v216);
          v9 = v222;
          v224 = v272;
          sub_1C4EFF098();
          LOBYTE(v222) = sub_1C4EFF088();
          v225 = *v261;
          (*v261)(v224, v216);
          if (v222)
          {
            v226 = v285;
            v225(v218, v285);
            v225(v276, v226);
            v207 = v277;
            v273(v277, v9);
            v227 = v223[7];
            v228 = 1;
          }

          else
          {
            v229 = sub_1C4EFEFF8();
            v230 = v285;
            v225(v218, v285);
            v225(v276, v230);
            v207 = v277;
            v273(v277, v9);
            v227 = v223[7];
            v228 = v229 & 1;
          }

          *(v89 + v227) = v228;
          v31 = v89;
          *(v89 + v223[8]) = v221;
          *(v89 + v223[9]) = v279;
          v231 = v263;
          sub_1C447212C(v89, v263);
          v232 = v283;
          v267(v231);
          sub_1C4485564(v231, type metadata accessor for EntityPair);
          v131 = v232;
          if (v232)
          {

            *v234 = v232;
            return result;
          }

          v208 = v281 + 1;
          v209 = v260;
          if (v280 == v281 + 1)
          {
            goto LABEL_89;
          }
        }

LABEL_97:
        __break(1u);
      }

      v280 = 0;
      goto LABEL_89;
    }

    v92 = v282;
    v40 = v255;
    v93 = v279;
LABEL_17:
    ++v90;
    v91 += 2;
    if (v281 == v90)
    {
      goto LABEL_90;
    }
  }

  sub_1C4485564(v112, type metadata accessor for EntityPair);
  result = (v106)(v31, v285);
  *v234 = v113;
  return result;
}

uint64_t sub_1C44D3D38()
{
  sub_1C4404078();
  v3 = sub_1C456902C(v1, v2);
  sub_1C43FCE50(v3);
  v5 = *(v4 + 40);
  v6 = sub_1C43FBC98();
  v7(v6);
  return v0;
}

uint64_t sub_1C44D3D8C()
{
  sub_1C4404078();
  v4 = sub_1C4EDD784(v1, v2, v3);
  v6 = sub_1C456902C(v4, v5);
  sub_1C43FCE50(v6);
  v8 = *(v7 + 40);
  v9 = sub_1C43FBC98();
  v10(v9);
  return v0;
}

uint64_t sub_1C44D3DDC()
{
  v2 = *(v0 + 24);

  return sub_1C4EFD548();
}

uint64_t sub_1C44D3DF4()
{

  return swift_arrayInitWithCopy();
}

id sub_1C44D3E0C(uint64_t a1, const char *a2)
{
  v5 = *(v3 - 488);

  return [v5 a2];
}

void sub_1C44D3E4C()
{
  v4 = (v2 + *(v1 + 32));
  *v4 = *(v3 - 224);
  v4[1] = v0;
  v5 = v2 + *(v1 + 40);
  v6 = *(v3 - 112);
}

uint64_t sub_1C44D3E80()
{

  return sub_1C4F02738();
}

void sub_1C44D3EB0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = objc_autoreleasePoolPush();
  sub_1C44D1DE0(a4, a1, a2, a3, a5, a6, &v13, &v14);
  objc_autoreleasePoolPop(v12);
}

void sub_1C44D3F7C()
{
  v1 = *(v0 - 408);
  *(v0 - 136) = *(v1 + 20);
  v2 = *(*(v0 - 208) + *(v1 + 44));
}

uint64_t sub_1C44D3F9C()
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_1C44D3FBC()
{
  v4 = *(v2 - 128) + *(v1 + 24);

  return sub_1C448B210(v0, v4);
}

uint64_t sub_1C44D3FDC()
{
  v2 = *(v0 - 312);
}

uint64_t sub_1C44D3FFC()
{

  return sub_1C4EFBD48();
}

uint64_t sub_1C44D4028(uint64_t result, double a2)
{
  *(v2 + 192) = a2;
  *(v2 + 200) = result;
  v3 = *(result + 16);
  return result;
}

void sub_1C44D403C(uint64_t a1@<X8>)
{
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v3;
  *(a1 + 17) = v2;
  *(a1 + 18) = v1;
}

uint64_t sub_1C44D4078(uint64_t result)
{
  *(v2 - 136) = result;
  v3 = *v1;
  return result;
}

uint64_t sub_1C44D4094()
{
  *(v0 - 112) = 5;

  return sub_1C4F02618();
}

uint64_t sub_1C44D40BC()
{
  *(v1 - 97) = *(v0 + 180);
  result = *(v0 + 192);
  v3 = *(v0 + 168) + *(v0 + 200);
  v4 = *(v0 + 184);
  return result;
}

uint64_t sub_1C44D4100(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v36 - v8;
  v10 = sub_1C4EFF0C8();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v42 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v36 - v14;
  v15 = 0;
  v16 = a2 + 32;
  v17 = *(a2 + 16);
  v45 = (v18 + 32);
  v46 = v17;
  v39 = a3;
  v40 = (v18 + 8);
  v37 = (v18 + 16);
  v38 = v18;
  v41 = a2 + 32;
  while (v15 != v46)
  {
    v19 = (v16 + 16 * v15);
    v20 = *v19;
    v21 = v19[1];
    swift_bridgeObjectRetain_n();
    sub_1C4EFF0D8();
    if (sub_1C44157D4(v9, 1, v10) == 1)
    {
      sub_1C4420C3C(v9, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      v44 = *v45;
      v44(v48, v9, v10);
      v22 = *a3;
      if (*(*a3 + 16))
      {
        v43 = a1;
        v23 = *(v22 + 40);
        sub_1C4F02AF8();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F01298();
        v24 = sub_1C4F02B68();
        v25 = ~(-1 << *(v22 + 32));
        while (1)
        {
          v26 = v24 & v25;
          if (((*(v22 + 56 + (((v24 & v25) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v24 & v25)) & 1) == 0)
          {
            break;
          }

          v27 = (*(v22 + 48) + 16 * v26);
          if (*v27 != v20 || v27[1] != v21)
          {
            v29 = sub_1C4F02938();
            v24 = v26 + 1;
            if ((v29 & 1) == 0)
            {
              continue;
            }
          }

          (*v40)(v48, v10);
          a3 = v39;
          a1 = v43;
          goto LABEL_20;
        }

        a3 = v39;
        a1 = v43;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44869B4(v47, v20, v21);

      (*v37)(v42, v48, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C44D45E4(0, *(a1 + 16) + 1, 1, a1);
        a1 = v33;
      }

      v31 = *(a1 + 16);
      v30 = *(a1 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1C44D45E4(v30 > 1, v31 + 1, 1, a1);
        a1 = v34;
      }

      v32 = v38;
      (*(v38 + 8))(v48, v10);
      *(a1 + 16) = v31 + 1;
      v44((a1 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v31), v42, v10);
LABEL_20:
      v16 = v41;
    }

    ++v15;
  }

  return a1;
}

uint64_t sub_1C44D44D8@<X0>(uint64_t *a1@<X2>, unsigned __int16 a2@<W8>)
{

  return sub_1C4610B78(a2, 0, a1);
}

uint64_t sub_1C44D44F0()
{
}

uint64_t sub_1C44D4508()
{
  v2 = *v0;

  return sub_1C4F021C8();
}

uint64_t sub_1C44D4524@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 112) = a1;

  return type metadata accessor for Source();
}

id sub_1C44D4550(uint64_t a1, const char *a2)
{
  v5 = *(v3 - 384);

  return [v5 a2];
}

uint64_t sub_1C44D4570()
{
  v2 = v0[54];
  v3 = v0[52];
  v4 = v0[49];

  return sub_1C445B84C();
}

uint64_t sub_1C44D45AC()
{
  *(v0 - 112) = 7;

  return sub_1C4F02618();
}

uint64_t sub_1C44D45D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  *(v3 - 70) = 7;
  return result;
}

uint64_t sub_1C44D4624(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FCE50(v4);
  v6 = *(v5 + 32);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C44D46A4(uint64_t *a1)
{
  v2 = *(sub_1C4EFF0C8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C44D4848(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1C44D5260(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_1C44D474C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C44D47E0@<X0>(uint64_t a1@<X8>)
{
  *(v4 + a1) = v1;
  v6 = *(v3 + *(v2 + 28));
}

void sub_1C44D4860()
{
  v1 = *v0;
  sub_1C44D48B8();
  *v0 = v2;
}

void sub_1C44D48B8()
{
  sub_1C43FBD3C();
  v8 = v7;
  v10 = v9;
  v11 = v4;
  v12 = v1;
  if (v3)
  {
    sub_1C441172C();
    if (v14 != v15)
    {
      sub_1C442B904();
      if (v14)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_1C440A4D4();
    }
  }

  else
  {
    v13 = v2;
  }

  v16 = *(v11 + 16);
  if (v13 <= v16)
  {
    v17 = *(v11 + 16);
  }

  else
  {
    v17 = v13;
  }

  if (!v17)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  sub_1C4422208(v1, v2, v3, v4, v5, v6);
  v18 = *(*(v10(0) - 8) + 72);
  v19 = sub_1C44357B4();
  v20 = j__malloc_size(v19);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v20 - v0 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  sub_1C441B764((v20 - v0) / v18);
LABEL_18:
  v22 = *(v10(0) - 8);
  if (v12)
  {
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    sub_1C449ACF0(v11 + v23, v16, v19 + v23, v8);
    *(v11 + 16) = 0;
  }

  else
  {
    sub_1C4441894();
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C44D4A28@<X0>(id *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v133 = a3;
  v134 = a2;
  v4 = sub_1C456902C(&qword_1EC0BADB8, &unk_1C4F175D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v132 = &v128 - v6;
  v7 = sub_1C456902C(&unk_1EC0BADC0, &qword_1C4F402C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v129 = &v128 - v9;
  v131 = type metadata accessor for CNContactStructs.Place(0);
  v10 = *(*(v131 - 8) + 64);
  MEMORY[0x1EEE9AC00](v131);
  v12 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CNContactStructs.AddressRelationshipType(0);
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = [*a1 value];
  v19 = [v17 label];
  v139 = v12;
  if (v19)
  {
    v20 = v19;
    v130 = sub_1C4F01138();
    v137 = v21;
  }

  else
  {
    v130 = 0;
    v137 = 0xE000000000000000;
  }

  v135 = "r the contacts UUID query.";
  sub_1C456902C(&qword_1EC0B8400, &unk_1C4F175E0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1C4F0F830;
  v23 = [v18 street];
  v24 = sub_1C4F01138();
  v26 = v25;

  v27 = MEMORY[0x1E69E6158];
  *(v22 + 56) = MEMORY[0x1E69E6158];
  v28 = sub_1C44D5840();
  *(v22 + 64) = v28;
  *(v22 + 32) = v24;
  *(v22 + 40) = v26;
  v29 = [v18 subLocality];
  v30 = sub_1C4F01138();
  v32 = v31;

  *(v22 + 96) = v27;
  *(v22 + 104) = v28;
  *(v22 + 72) = v30;
  *(v22 + 80) = v32;
  v33 = [v18 city];
  v34 = sub_1C4F01138();
  v36 = v35;

  *(v22 + 136) = v27;
  *(v22 + 144) = v28;
  *(v22 + 112) = v34;
  *(v22 + 120) = v36;
  v37 = [v18 subAdministrativeArea];
  v38 = sub_1C4F01138();
  v40 = v39;

  *(v22 + 176) = v27;
  *(v22 + 184) = v28;
  *(v22 + 152) = v38;
  *(v22 + 160) = v40;
  v41 = [v18 state];
  v42 = sub_1C4F01138();
  v44 = v43;

  *(v22 + 216) = v27;
  *(v22 + 224) = v28;
  *(v22 + 192) = v42;
  *(v22 + 200) = v44;
  v45 = [v18 postalCode];
  v46 = sub_1C4F01138();
  v48 = v47;

  *(v22 + 256) = v27;
  *(v22 + 264) = v28;
  *(v22 + 232) = v46;
  *(v22 + 240) = v48;
  v49 = [v18 country];
  v50 = sub_1C4F01138();
  v52 = v51;

  *(v22 + 296) = v27;
  *(v22 + 304) = v28;
  *(v22 + 272) = v50;
  *(v22 + 280) = v52;
  sub_1C4F01168();
  if (qword_1EDDE9320 != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for SourceIdPrefix();
  sub_1C442B738(v53, qword_1EDDE9328);
  String.base64EncodedSHA(withPrefix:)();
  v55 = v54;
  v57 = v56;

  sub_1C44D092C(v16);
  v58 = [v18 postalCode];
  v59 = sub_1C4F01138();
  v61 = v60;

  v62 = &v16[v13[28]];
  v63 = v62[1];

  *v62 = v59;
  v62[1] = v61;
  v64 = [v18 country];
  v65 = sub_1C4F01138();
  v67 = v66;

  v68 = &v16[v13[30]];
  v69 = v68[1];

  *v68 = v65;
  v68[1] = v67;
  v70 = [v18 street];
  v71 = sub_1C4F01138();
  v73 = v72;

  v74 = &v16[v13[18]];
  v75 = v74[1];

  *v74 = v71;
  v74[1] = v73;
  v76 = [v18 subLocality];
  v77 = sub_1C4F01138();
  v79 = v78;

  v80 = &v16[v13[20]];
  v81 = v80[1];

  *v80 = v77;
  v80[1] = v79;
  v82 = [v18 city];
  v83 = sub_1C4F01138();
  v85 = v84;

  v86 = &v16[v13[22]];
  v87 = v86[1];

  *v86 = v83;
  v86[1] = v85;
  v88 = [v18 subAdministrativeArea];
  v89 = sub_1C4F01138();
  v91 = v90;

  v92 = &v16[v13[24]];
  v93 = v92[1];

  *v92 = v89;
  v92[1] = v91;
  v94 = [v18 state];
  v95 = sub_1C4F01138();
  v97 = v96;

  v98 = &v16[v13[26]];
  v99 = v98[1];

  *v98 = v95;
  v98[1] = v97;
  v100 = [v18 ISOCountryCode];
  v101 = sub_1C4F01138();
  v103 = v102;

  v104 = &v16[v13[32]];
  v105 = v104[1];

  *v104 = v101;
  v104[1] = v103;
  v106 = v139;
  v107 = v136;
  sub_1C44D69A8(v55, v57, v108, v109, v110, v111, v112, v113, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139);
  if (v107)
  {

    result = sub_1C44C45FC(v16, type metadata accessor for CNContactStructs.AddressRelationshipType);
    *v134 = v107;
  }

  else
  {
    v115 = v129;
    sub_1C448CA30();
    sub_1C440BAA8(v115, 0, 1, v13);
    sub_1C44D7428(v115);
    v116 = sub_1C4EFEEF8();
    v117 = v133;
    sub_1C440BAA8(v133, 1, 1, v116);
    v118 = type metadata accessor for CNContactStructs.LocationRelationshipType(0);
    v119 = v117 + v118[5];
    sub_1C4EFD1F8();
    v120 = v118[6];
    if (qword_1EDDFED28 != -1)
    {
      swift_once();
    }

    v121 = type metadata accessor for Source();
    sub_1C442B738(v121, &unk_1EDDFD088);
    sub_1C448CA30();
    v122 = v117 + v118[7];
    sub_1C4EFE5E8();
    v123 = (v117 + v118[8]);
    *v123 = 0;
    v123[1] = 0;
    v124 = v131;
    sub_1C440BAA8(v117 + v118[9], 1, 1, v131);
    v125 = v132;
    sub_1C448CA30();
    sub_1C440BAA8(v125, 0, 1, v124);
    sub_1C44D7A60(v125);

    sub_1C44C45FC(v106, type metadata accessor for CNContactStructs.Place);
    v126 = v123[1];

    v127 = v137;
    *v123 = v130;
    v123[1] = v127;
    return sub_1C44C45FC(v16, type metadata accessor for CNContactStructs.AddressRelationshipType);
  }

  return result;
}

uint64_t sub_1C44D5260(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_1C4F02828();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C4EFF0C8();
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1C4EFF0C8() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C4A7CBFC(v8, v9, a1, v4);
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
    return sub_1C44D53B0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C44D53B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1C4EFF0C8();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v41 - v16;
  v43 = a2;
  if (a3 != a2)
  {
    v18 = v15;
    v19 = *a4;
    v21 = *(v14 + 16);
    v20 = v14 + 16;
    v22 = *(v20 + 56);
    v52 = (v20 - 8);
    v53 = v21;
    v54 = v20;
    v49 = (v20 + 16);
    v50 = v19;
    v23 = v19 + v22 * (a3 - 1);
    v48 = -v22;
    v24 = a1 - a3;
    v42 = v22;
    v25 = v19 + v22 * a3;
    while (2)
    {
      v46 = v23;
      v47 = a3;
      v44 = v25;
      v45 = v24;
      v26 = v23;
      while (1)
      {
        v27 = v53;
        v53(v17, v25, v8);
        v27(v18, v26, v8);
        v28 = sub_1C4EFF048();
        v29 = v17;
        v30 = v18;
        v32 = v31;
        if (v28 == sub_1C4EFF048() && v32 == v33)
        {
          break;
        }

        v35 = sub_1C4F02938();

        v36 = *v52;
        (*v52)(v30, v8);
        result = (v36)(v29, v8);
        v18 = v30;
        v17 = v29;
        if (v35)
        {
          if (!v50)
          {
            __break(1u);
            return result;
          }

          v37 = *v49;
          v38 = v51;
          (*v49)(v51, v25, v8);
          swift_arrayInitWithTakeFrontToBack();
          result = (v37)(v26, v38, v8);
          v26 += v48;
          v25 += v48;
          if (!__CFADD__(v24++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v40 = *v52;
      (*v52)(v30, v8);
      result = (v40)(v29, v8);
      v18 = v30;
      v17 = v29;
LABEL_14:
      a3 = v47 + 1;
      v23 = v46 + v42;
      v24 = v45 - 1;
      v25 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C44D56D0()
{
  sub_1C43FBD3C();
  sub_1C447F980(v4);
  v5 = sub_1C4EFF0C8();
  v6 = sub_1C440AC0C(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C441FB94();
  sub_1C4408AF4();
  sub_1C4403D94(v9, v10);
  sub_1C442F1F0();
  sub_1C4406FA8();
  while (1)
  {
    sub_1C44004BC(v11);
    if (v12)
    {
      sub_1C448053C();
      v16 = sub_1C441322C();
      v17(v16);
      v18 = sub_1C44172C0();
      sub_1C44D5894(v18, v19, v20);
      v21 = sub_1C43FD854();
      v22(v21);
      goto LABEL_7;
    }

    v13 = sub_1C442CB30();
    v3(v13);
    sub_1C4408AF4();
    sub_1C4403D94(&qword_1EDDFCC98, v14);
    sub_1C442234C();
    sub_1C4475AE4();
    v15 = sub_1C4425BF4();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v2 + 1;
  }

  v23 = sub_1C440230C();
  v1(v23);
  v24 = sub_1C440E350();
  v3(v24);
LABEL_7:
  sub_1C43FE9F0();
}

unint64_t sub_1C44D5840()
{
  result = qword_1EC0BADD0;
  if (!qword_1EC0BADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BADD0);
  }

  return result;
}

uint64_t sub_1C44D5894(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_1C4EFF0C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C483E2E4(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1C44D60B4(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_1C4403D94(&qword_1EDDFE820, MEMORY[0x1E69A9810]);
      v15 = sub_1C4F00FD8();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1C4403D94(&qword_1EDDFCC98, MEMORY[0x1E69A9810]);
        v17 = sub_1C4F010B8();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_1C484A478();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

void String.base64EncodedSHA(withPrefix:)()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v56 = v4;
  v5 = sub_1C4F00DD8();
  v6 = sub_1C43FCDF8(v5);
  v57 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = sub_1C4F00DC8();
  v14 = sub_1C43FCDF8(v13);
  v58 = v15;
  v59 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v14);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v55 - v21;
  v23 = sub_1C4F01188();
  v24 = sub_1C43FCDF8(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  v31 = v30 - v29;
  sub_1C4F01178();
  v55 = v3;
  sub_1C4F01148();
  v33 = v32;
  (*(v26 + 8))(v31, v23);
  if (v33 >> 60 == 15)
  {
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v34 = sub_1C4F00978();
    sub_1C442B738(v34, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v35 = sub_1C4F00968();
    v36 = sub_1C4F01CE8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v60[0] = v38;
      *v37 = 136380675;
      *(v37 + 4) = sub_1C441D828(v55, v1, v60);
      _os_log_impl(&dword_1C43F8000, v35, v36, "Unable to encode identifier into UTF-8. Identifier was %{private}s", v37, 0xCu);
      sub_1C440962C(v38);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }
  }

  else
  {
    v55 = objc_autoreleasePoolPush();
    v39 = v56[1];
    v60[0] = *v56;
    v60[1] = v39;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C445E9B8();
    sub_1C44CD280(&qword_1EDDFEAD0, MEMORY[0x1E6966620]);
    sub_1C4F00DB8();
    v40 = sub_1C43FD258();
    sub_1C44344B8(v40, v41);
    v42 = sub_1C43FD258();
    sub_1C4498FD8(v42, v43);
    v44 = sub_1C43FD258();
    sub_1C441DFEC(v44, v45);
    sub_1C4F00DA8();
    (*(v57 + 8))(v12, v5);
    v46 = v58;
    v47 = v59;
    (*(v58 + 16))(v20, v22, v59);
    sub_1C44D5F88(v20);
    v48 = sub_1C4EF9A48();
    v50 = v49;
    v51 = sub_1C43FBC98();
    sub_1C4434000(v51, v52);
    (*(v46 + 8))(v22, v47);
    MEMORY[0x1C6940010](v48, v50);

    objc_autoreleasePoolPop(v55);
    v53 = sub_1C43FD258();
    sub_1C441DFEC(v53, v54);
  }

  sub_1C43FBC98();
  sub_1C43FE9F0();
}

uint64_t sub_1C44D5F88(uint64_t a1)
{
  v2 = sub_1C4F00DC8();
  v7 = v2;
  v8 = sub_1C44CD280(&qword_1EDDFEAD8, MEMORY[0x1E69663E0]);
  v3 = sub_1C4422F90(v6);
  v4 = *(v2 - 8);
  (*(v4 + 16))(v3, a1, v2);
  sub_1C4409678(v6, v7);
  sub_1C440D818();
  sub_1C4EF9688();
  sub_1C440962C(v6);
  (*(v4 + 8))(a1, v2);
  return sub_1C4410428();
}

uint64_t sub_1C44D60B4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1C4EFF0C8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDDE8, "(M\n");
  v10 = sub_1C4F021D8();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_1C4403D94(&qword_1EDDFE820, MEMORY[0x1E69A9810]);
        result = sub_1C4F00FD8();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1C44D63CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
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
    result = sub_1C4EF9908();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1C6938610]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1C6938650]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1C44D6444(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v45 = a1;
  v52 = type metadata accessor for EntityPair(0);
  v2 = *(v52 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v57 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1C4EF9CD8();
  v46 = *(v49 - 8);
  v5 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v44 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C4EFF0C8();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v47 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v43 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v43 - v14;
  v16 = sub_1C4EFD548();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0C24C0, &qword_1C4F4A8B0);
  v21 = *(v2 + 72);
  v50 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1C4F0D130;
  v22 = type metadata accessor for PairGenerator();
  v23 = *(v22 + 24);
  v51 = v17;
  v24 = *(v17 + 16);
  v53 = v20;
  v25 = v20;
  v26 = v43;
  v55 = v16;
  v24(v25, v56 + v23, v16);
  v27 = *(v26 + 16);
  v54 = v15;
  v27(v15, v45, v7);
  if (qword_1EDDFA100 != -1)
  {
    swift_once();
  }

  v28 = sub_1C442B738(v7, qword_1EDE2DC60);
  v27(v13, v28, v7);
  v29 = v44;
  sub_1C4EF9C88();
  sub_1C4EF9AD8();
  v31 = v30;
  (*(v46 + 8))(v29, v49);
  v32 = v57;
  v33 = *(v56 + *(v22 + 28));
  v24(v57, v53, v55);
  v34 = v52;
  v27(&v32[*(v52 + 20)], v54, v7);
  v27(&v32[v34[6]], v13, v7);
  v35 = v47;
  sub_1C4EFF098();
  LOBYTE(v32) = sub_1C4EFF088();
  v36 = *(v26 + 8);
  v36(v35, v7);
  if (v32)
  {
    v36(v13, v7);
    v36(v54, v7);
    (*(v51 + 8))(v53, v55);
    v37 = v34[7];
    v38 = 1;
  }

  else
  {
    v39 = sub_1C4EFEFF8();
    v36(v13, v7);
    v36(v54, v7);
    (*(v51 + 8))(v53, v55);
    v37 = v34[7];
    v38 = v39 & 1;
  }

  v40 = v57;
  v57[v37] = v38;
  *(v40 + v34[8]) = v31;
  *(v40 + v34[9]) = v33;
  v41 = v48;
  sub_1C447212C(v40, v48 + v50);
  return v41;
}

void sub_1C44D69A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v144 = v23;
  v141 = v24;
  v26 = v25;
  v27 = sub_1C4F00DD8();
  v28 = sub_1C43FCDF8(v27);
  v134 = v29;
  v135 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FD2D8();
  v132 = v32;
  sub_1C43FBE44();
  v33 = sub_1C4F00DC8();
  v34 = sub_1C43FCDF8(v33);
  v136 = v35;
  v137 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBFDC();
  v131 = v38;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FD230();
  v133 = v40;
  sub_1C43FBE44();
  v41 = sub_1C4F01188();
  v42 = sub_1C43FCDF8(v41);
  v139 = v43;
  v140 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FD2D8();
  v138 = v46;
  sub_1C43FBE44();
  v47 = sub_1C4EFD548();
  v48 = sub_1C43FCDF8(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v53);
  v54 = sub_1C4D871FC();
  v55 = sub_1C43FCDF8(v54);
  v129 = v56;
  v130 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FD230();
  v61 = sub_1C43FD2C8(v60);
  v62 = type metadata accessor for CNContactStructs.Place(v61);
  v63 = v62[5];
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v64, v65, v66, v67);
  v68 = v62[6];
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  v69 = v26 + v62[7];
  if (qword_1EDDFED28 != -1)
  {
    sub_1C44133AC();
    swift_once();
  }

  v70 = type metadata accessor for Source();
  sub_1C442B738(v70, &unk_1EDDFD088);
  sub_1C4408374();
  v147 = v69;
  sub_1C44CC80C(v71, v69, v72);
  v73 = v62[8];
  type metadata accessor for CNContactStructs.AddressRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v74, v75, v76, v77);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v78 = sub_1C4F00978();
  sub_1C442B738(v78, qword_1EDE2DE10);
  v79 = *(v50 + 16);
  v142 = v68;
  sub_1C4D871A8(v50 + 16);
  v80();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v81 = v144;
  v82 = sub_1C4F00968();
  v83 = sub_1C4F01CB8();

  v143 = v26;
  if (os_log_type_enabled(v82, v83))
  {
    swift_slowAlloc();
    v145 = sub_1C441D7BC();
    *v20 = 136381187;
    v84 = v141;
    v85 = sub_1C441D828(v141, v144, &v145);
    sub_1C44587AC(v85);
    sub_1C4432F18();
    sub_1C44CD358(v86, v87);
    v88 = sub_1C4F02858();
    v90 = v89;
    v91 = sub_1C44A1558();
    v92(v91);
    v93 = sub_1C441D828(v88, v90, &v145);

    *(v20 + 14) = v93;
    v81 = v144;
    sub_1C44A18E0();
    _os_log_impl(&dword_1C43F8000, v82, v83, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v20, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v94 = sub_1C44A1558();
    v95(v94);
    v84 = v141;
  }

  v97 = *v147;
  v96 = v147[1];
  v145 = v84;
  v146 = v81;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v97, v96);

  v98 = v145;
  v99 = v146;
  sub_1C4F01178();
  sub_1C4F01148();
  v101 = v100;
  (*(v139 + 8))(v138, v140);
  if (v101 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v102 = sub_1C4F00968();
    v103 = sub_1C4F01CD8();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v145 = v105;
      *v104 = 136380675;
      v106 = sub_1C441D828(v98, v99, &v145);

      *(v104 + 4) = v106;
      _os_log_impl(&dword_1C43F8000, v102, v103, "Source: failed to encode identifier as UTF8 data: %{private}s", v104, 0xCu);
      sub_1C440962C(v105);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    sub_1C45CF650();
    sub_1C43FFB2C();
    sub_1C43FE7A8(v120, 5);
    v121 = sub_1C4429108(&a17);
    sub_1C4420C3C(v121, v122, v123);
    v47(v143 + v142, v47);
    sub_1C440636C();
    sub_1C44D474C(v147, v124);
    v125 = sub_1C4429108(&a14);
    sub_1C4420C3C(v125, v126, v127);
  }

  else
  {

    sub_1C442A594();
    sub_1C44CD358(v107, v108);
    sub_1C4F00DB8();
    v109 = sub_1C4404044();
    sub_1C44344B8(v109, v110);
    v111 = sub_1C4404044();
    sub_1C4498FD8(v111, v112);
    v113 = sub_1C4404044();
    sub_1C441DFEC(v113, v114);
    sub_1C4F00DA8();
    (*(v134 + 8))(v132, v135);
    sub_1C4D87134();
    v115();
    (*(v136 + 16))(v131, v133, v137);
    sub_1C4EFF028();
    v116 = sub_1C4404044();
    sub_1C441DFEC(v116, v117);
    (*(v136 + 8))(v133, v137);
    v118 = *(v129 + 32);
    v119 = sub_1C4409F48();
    v118(v119);
    (v118)(v143, v128, v130);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C44D71D4()
{
  *(v1 - 248) = v0;

  return sub_1C4EFF0C8();
}

void sub_1C44D7200(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1C44D7248(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C44D7290@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDDFA128 != -1)
  {
    swift_once();
  }

  v2 = sub_1C4EFBAF8();
  v3 = sub_1C442B738(v2, qword_1EDE2DCC0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C44D7350()
{

  return sub_1C4F01148();
}

uint64_t sub_1C44D7370(double a1)
{
  *(v2 + *(v1 + 44)) = a1;
  *(v2 + *(v1 + 48)) = *(v3 - 140);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C44D7394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDFA0D0, type metadata accessor for EntityPair);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1C44D7428(uint64_t a1)
{
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C44042B0();
  v9 = *(type metadata accessor for CNContactStructs.Place(v8) + 32);
  sub_1C44D7768(a1, v2 + v9, &unk_1EC0BADC0, &qword_1C4F402C0);
  v10 = type metadata accessor for CNContactStructs.AddressRelationshipType(0);
  if (sub_1C44157D4(v2 + v9, 1, v10))
  {
    return sub_1C4420C3C(a1, &unk_1EC0BADC0, &qword_1C4F402C0);
  }

  sub_1C4EFE2D8();
  sub_1C4420C3C(a1, &unk_1EC0BADC0, &qword_1C4F402C0);
  v12 = sub_1C4EFEEF8();
  sub_1C440CBF4(v12);
  return sub_1C444088C(v1, v2 + v9, &qword_1EC0B9A08, &unk_1C4F107B0);
}

void sub_1C44D7534()
{
  sub_1C43FE96C();
  sub_1C440EDD4();
  v3 = sub_1C456902C(&qword_1EC0BE450, &qword_1C4F371C0);
  sub_1C4403200(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C44D77B0();
  sub_1C440F61C();
  sub_1C441D6E4();
  sub_1C4EFD548();
  sub_1C44004E0();
  sub_1C4490F60(v7, v8);
  sub_1C43FE6CC();
  sub_1C43FC428();
  sub_1C4F027E8();
  if (!v1)
  {
    v9 = type metadata accessor for EntityPair(0);
    sub_1C4404F64(v9);
    sub_1C4EFF0C8();
    sub_1C4419854();
    sub_1C4490F60(v10, v11);
    sub_1C44032B0();
    sub_1C4F027E8();
    v12 = v2[6];
    sub_1C44032B0();
    sub_1C4F027E8();
    v13 = *(v0 + v2[7]);
    sub_1C440D3E4();
    sub_1C4F027A8();
    v14 = *(v0 + v2[8]);
    sub_1C447F524();
    sub_1C4F027B8();
    v17 = *(v0 + v2[9]);
    sub_1C44C1190();
    sub_1C440D3E4();
    sub_1C4F027E8();
  }

  v15 = sub_1C440231C();
  v16(v15);
  sub_1C43FBC80();
}

uint64_t sub_1C44D7768(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1C43FBCA4(a1, a2, a3, a4);
  sub_1C43FCE50(v5);
  v7 = *(v6 + 24);
  v8 = sub_1C43FBC98();
  v9(v8);
  return v4;
}

unint64_t sub_1C44D77B0()
{
  result = qword_1EDDFA140;
  if (!qword_1EDDFA140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA140);
  }

  return result;
}

uint64_t sub_1C44D7818()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          sub_1C456902C(&unk_1EC0BADC0, &qword_1C4F402C0);
          v10 = *(v0 + 32);
        }
      }
    }
  }

  sub_1C43FE688();

  return sub_1C440BAA8(v11, v12, v13, v14);
}

uint64_t sub_1C44D7978(char a1)
{
  result = 0x6C43797469746E65;
  switch(a1)
  {
    case 1:
      v3 = 0x656372756F73;
      goto LABEL_5;
    case 2:
      v3 = 0x746567726174;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
      break;
    case 3:
      result = 0x7349746567726174;
      break;
    case 4:
      result = 0x6D617473656D6974;
      break;
    case 5:
      result = 0x656E696C65706970;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C44D7A60(uint64_t a1)
{
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C44042B0();
  v9 = v2 + *(type metadata accessor for CNContactStructs.LocationRelationshipType(v8) + 36);
  sub_1C44D7768(a1, v9, &qword_1EC0BADB8, &unk_1C4F175D0);
  v10 = type metadata accessor for CNContactStructs.Place(0);
  sub_1C44101EC();
  if (sub_1C44157D4(v11, v12, v13))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BADB8, &unk_1C4F175D0);
  }

  sub_1C4EFE418();
  sub_1C4420C3C(a1, &qword_1EC0BADB8, &unk_1C4F175D0);
  v15 = sub_1C4EFEEF8();
  sub_1C440CBF4(v15);
  return sub_1C444088C(v1, v9 + *(v10 + 20), &qword_1EC0B9A08, &unk_1C4F107B0);
}

uint64_t PeopleMatcher.pipelineType.getter()
{
  result = sub_1C4460AC8();
  *v0 = *(v1 + *(result + 32));
  return result;
}

void sub_1C44D7BA8()
{
  sub_1C43FBD3C();
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for CNContactStructs.LocationRelationshipType(v6);
  v8 = sub_1C43FCF7C(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  sub_1C44D458C();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4402CA8();
  v12 = *(type metadata accessor for CNContactStructs.Person(0) + 252);
  v13 = *(v0 + v12);
  if (v13)
  {
    if (*(v13 + 16))
    {
      sub_1C4401968(v13);
      v14 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C44CC80C(v12, v1, type metadata accessor for CNContactStructs.LocationRelationshipType);
        sub_1C4EFEAC8();
        v15 = sub_1C4EFEEF8();
        v16 = sub_1C444C460(v15);
        sub_1C444088C(v16, v17, &qword_1EC0B9A08, &unk_1C4F107B0);
        sub_1C4482EF0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = *(v14 + 16);
          v25 = sub_1C43FCEC0();
          sub_1C44D7D8C(v25, v26, v27, v14);
          v14 = v28;
        }

        sub_1C4473DBC();
        if (v19)
        {
          v29 = sub_1C4440B38(v18);
          sub_1C44D7D8C(v29, v30, v31, v32);
          v14 = v33;
        }

        sub_1C4456300();
        sub_1C4D8711C(v20, v21);
        sub_1C444AE90();
        sub_1C44D474C(v1, v22);
        sub_1C4D870C4();
      }

      while (!v23);

      v12 = v34;
      v0 = v35;
    }

    else
    {

      v14 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + v12) = v14;
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C44D7E3C()
{

  return swift_beginAccess();
}

id sub_1C44D7E5C()
{
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C4F0FCC0;
  v1 = *MEMORY[0x1E695C258];
  *(v0 + 32) = *MEMORY[0x1E695C258];
  v2 = v1;
  v3 = sub_1C44C9794();

  return v3;
}

uint64_t PeopleMatcher.entityClass.getter()
{
  v2 = *(sub_1C4460AC8() + 24);
  v3 = sub_1C4EFD548();
  v4 = sub_1C43FBCE0(v3);
  v6 = *(v5 + 16);

  return v6(v0, v1 + v2, v4);
}

unint64_t sub_1C44D7F40(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_65;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    v57 = v1;
    v51 = v1 + 32;
    v52 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = 0x1E695C000uLL;
    v50 = v1 & 0xC000000000000001;
    v48 = v2;
    while (1)
    {
      if (v5)
      {
        v7 = MEMORY[0x1C6940F90](v4, v57);
      }

      else
      {
        if (v4 >= *(v52 + 16))
        {
          goto LABEL_58;
        }

        v7 = *(v51 + 8 * v4);
      }

      v8 = v7;
      v9 = __OFADD__(v4++, 1);
      if (v9)
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        v2 = sub_1C4F02128();
        goto LABEL_3;
      }

      if (qword_1EC0B68D0 != -1)
      {
        swift_once();
      }

      v10 = off_1EC0BAD20;
      v11 = [v8 label];
      if (v11)
      {
        v12 = v11;
        sub_1C4F01138();
        v1 = v13;
      }

      else
      {
        v1 = 0xE000000000000000;
      }

      if (!v10[2])
      {

        goto LABEL_52;
      }

      v14 = sub_1C4404C28();
      v16 = sub_1C445FAA8(v14, v15);
      v18 = v17;

      if ((v18 & 1) == 0)
      {
        goto LABEL_52;
      }

      v58 = v4;
      v19 = *(v10[7] + 8 * v16);
      v20 = *(v19 + 16);
      v56 = v8;
      if (v20)
      {
        v59[0] = MEMORY[0x1E69E7CC0];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F02348();
        v21 = (v19 + 40);
        do
        {
          v22 = *(v21 - 1);
          v23 = *v21;
          swift_bridgeObjectRetain_n();
          v24 = [v8 value];
          v25 = objc_allocWithZone(*(v6 + 3808));
          sub_1C4693CB0(v22, v23, v24);

          sub_1C4F02318();
          v26 = *(v59[0] + 16);
          sub_1C4F02358();
          sub_1C4404C28();
          sub_1C4F02368();
          sub_1C4F02328();
          v21 += 2;
          --v20;
        }

        while (v20);

        v27 = v59[0];
      }

      else
      {
        v27 = MEMORY[0x1E69E7CC0];
      }

      v1 = v27 >> 62;
      v4 = v58;
      if (v27 >> 62)
      {
        v28 = sub_1C4F02128();
      }

      else
      {
        v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v29 = v3 >> 62;
      if (v3 >> 62)
      {
        v30 = sub_1C4F02128();
      }

      else
      {
        v30 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v31 = v30 + v28;
      if (__OFADD__(v30, v28))
      {
        goto LABEL_59;
      }

      v55 = v28;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v29)
      {
        goto LABEL_35;
      }

      v32 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v31 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_34;
      }

LABEL_37:
      v34 = *(v32 + 16);
      v35 = (*(v32 + 24) >> 1) - v34;
      v36 = v32 + 8 * v34;
      v53 = v32;
      if (v1)
      {
        v38 = sub_1C4F02128();
        if (v38)
        {
          v1 = v38;
          v39 = sub_1C4F02128();
          if (v35 < v39)
          {
            goto LABEL_62;
          }

          if (v1 < 1)
          {
            goto LABEL_64;
          }

          v49 = v39;
          v54 = v3;
          v40 = v36 + 32;
          sub_1C4401CBC(&qword_1EC0BADB0, &qword_1EC0C60E0, &qword_1C4F6A260);
          for (i = 0; i != v1; ++i)
          {
            sub_1C456902C(&qword_1EC0C60E0, &qword_1C4F6A260);
            v42 = sub_1C4CD79AC(v59, i, v27);
            v44 = *v43;
            v42(v59, 0);
            *(v40 + 8 * i) = v44;
          }

          v2 = v48;
          v37 = v49;
          v4 = v58;
          v6 = 0x1E695C000;
          v3 = v54;
          goto LABEL_47;
        }
      }

      else
      {
        v1 = v27 & 0xFFFFFFFFFFFFFF8;
        v37 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v37)
        {
          if (v35 < v37)
          {
            goto LABEL_63;
          }

          sub_1C456902C(&qword_1EC0BAD60, &qword_1C4F175B0);
          swift_arrayInitWithCopy();
LABEL_47:

          v8 = v56;
          v5 = v50;
          if (v37 < v55)
          {
            goto LABEL_60;
          }

          if (v37 > 0)
          {
            v45 = *(v53 + 16);
            v9 = __OFADD__(v45, v37);
            v46 = v45 + v37;
            if (v9)
            {
              goto LABEL_61;
            }

            *(v53 + 16) = v46;
          }

          goto LABEL_52;
        }
      }

      v8 = v56;
      v5 = v50;
      if (v55 > 0)
      {
        goto LABEL_60;
      }

LABEL_52:

      if (v4 == v2)
      {
        return v3;
      }
    }

    if (v29)
    {
LABEL_35:
      sub_1C4F02128();
    }

    else
    {
      v32 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_34:
      v33 = *(v32 + 16);
    }

    v3 = sub_1C4F022B8();
    v32 = v3 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_37;
  }

  return v3;
}

uint64_t PeopleMatcher.source.getter()
{
  v0 = *(sub_1C4460AC8() + 20);
  sub_1C44068F0();
  return sub_1C4471A98();
}

uint64_t PeopleMatcher.stageName.getter()
{
  result = sub_1C4460AC8();
  *v0 = *(v1 + *(result + 28));
  return result;
}

void sub_1C44D85F4()
{
  sub_1C43FE96C();
  sub_1C4425280(v6);
  v7 = sub_1C456902C(&qword_1EC0C0C50, &qword_1C4F402C8);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FE94C();
  v37 = type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType(0);
  v11 = sub_1C43FCDF8(v37);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  v36 = v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FD230();
  v34 = v16;
  sub_1C4428DA0(v1);
  sub_1C44044E4();
  v17 = MEMORY[0x1E69E7CC0];
  v35 = v1;
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_18;
    }

    if (v38)
    {
      v18 = MEMORY[0x1C6940F90](v4, v1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_20;
      }

      v18 = *(v1 + 8 * v4 + 32);
    }

    v19 = v18;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v20 = sub_1C442E11C();
    v21(v20);
    if (v0)
    {

LABEL_18:
      sub_1C4402144();
      sub_1C43FBC80();
      return;
    }

    v22 = sub_1C441B908();
    if (sub_1C44157D4(v22, v23, v37) == 1)
    {
      sub_1C4420C3C(v3, &qword_1EC0C0C50, &qword_1C4F402C8);
    }

    else
    {
      sub_1C44D0C04(v3, v34, type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType);
      sub_1C44D0C04(v34, v36, type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = *(v17 + 16);
        v29 = sub_1C43FCEC0();
        sub_1C458CC94(v29, v30, v31, v17);
        v17 = v32;
      }

      v25 = *(v17 + 16);
      v24 = *(v17 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1C458CC94(v24 > 1, v25 + 1, 1, v17);
        v17 = v33;
      }

      *(v17 + 16) = v25 + 1;
      sub_1C43FBF6C();
      sub_1C44D0C04(v36, v17 + v26 + *(v27 + 72) * v25, type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType);
      v1 = v35;
    }

    ++v4;
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_1C44D8894()
{
  sub_1C43FBD3C();
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType(v6);
  v8 = sub_1C43FCF7C(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  sub_1C44D458C();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4402CA8();
  v12 = *(type metadata accessor for CNContactStructs.Person(0) + 248);
  v13 = *(v0 + v12);
  if (v13)
  {
    if (*(v13 + 16))
    {
      sub_1C4401968(v13);
      v14 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C44CC80C(v12, v1, type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType);
        sub_1C4EFE638();
        v15 = sub_1C4EFEEF8();
        v16 = sub_1C444C460(v15);
        sub_1C444088C(v16, v17, &qword_1EC0B9A08, &unk_1C4F107B0);
        sub_1C4482EF0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = *(v14 + 16);
          v25 = sub_1C43FCEC0();
          sub_1C458CC94(v25, v26, v27, v14);
          v14 = v28;
        }

        sub_1C4473DBC();
        if (v19)
        {
          v29 = sub_1C4440B38(v18);
          sub_1C458CC94(v29, v30, v31, v32);
          v14 = v33;
        }

        sub_1C4456300();
        sub_1C4D8711C(v20, v21);
        sub_1C441D4E4();
        sub_1C44D474C(v1, v22);
        sub_1C4D870C4();
      }

      while (!v23);

      v12 = v34;
      v0 = v35;
    }

    else
    {

      v14 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + v12) = v14;
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C44D8B38()
{
  sub_1C44A1E40();
  v3 = type metadata accessor for Source();
  v4 = sub_1C43FBD18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C442599C();
  sub_1C4459AF0();
  sub_1C4416710();
  v7 = type metadata accessor for PeopleMatcher();
  sub_1C4471CA0(v7);
  sub_1C456902C(&qword_1EC0BA4F8, &qword_1C4F14228);
  v8 = sub_1C4485A60();
  MEMORY[0x1C6940010](v8);

  sub_1C441DC78();
  sub_1C44A1BE0(v1[7]);
  sub_1C4475BB0();

  sub_1C44364AC();
  v9 = v1[5];
  sub_1C441925C();
  sub_1C44F090C(v10);
  MEMORY[0x1C6940010](*v2, v2[1]);
  sub_1C4411930();
  sub_1C447E868(v2, v11);
  sub_1C44690B8();
  v12 = v0 + v1[6];
  sub_1C4EFD3D8();
  sub_1C4475BB0();

  sub_1C44AE8A4();
  sub_1C448D934(*(v0 + v1[8]));
  return sub_1C43FE658();
}

uint64_t sub_1C44D8C40(void *a1, int8x16_t *a2)
{
  v5 = *(v2 + *(type metadata accessor for Configuration() + 20));
  if (*a1 != -1)
  {
    v8 = v5;
    swift_once();
    v5 = v8;
  }

  sub_1C43FC158(*a2, v5);
  return v6 & 1;
}

uint64_t PeopleMatcher.execute()()
{
  sub_1C43FBCD4();
  *(v1 + 24) = v0;
  v2 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64) + 15;
  *(v1 + 32) = swift_task_alloc();
  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1C44D8D6C()
{
  sub_1C43FBD3C();
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for CNContactStructs.IdentifierRelationshipType(v6);
  v8 = sub_1C43FCF7C(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  sub_1C44D458C();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4402CA8();
  v12 = *(type metadata accessor for CNContactStructs.Person(0) + 232);
  v13 = *(v0 + v12);
  if (v13)
  {
    if (*(v13 + 16))
    {
      sub_1C4401968(v13);
      v14 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C44CC80C(v12, v1, type metadata accessor for CNContactStructs.IdentifierRelationshipType);
        sub_1C4EFE308();
        v15 = sub_1C4EFEEF8();
        v16 = sub_1C444C460(v15);
        sub_1C444088C(v16, v17, &qword_1EC0B9A08, &unk_1C4F107B0);
        sub_1C4482EF0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = *(v14 + 16);
          v25 = sub_1C43FCEC0();
          sub_1C44CF814(v25, v26, v27, v14);
          v14 = v28;
        }

        sub_1C4473DBC();
        if (v19)
        {
          v29 = sub_1C4440B38(v18);
          sub_1C44CF814(v29, v30, v31, v32);
          v14 = v33;
        }

        sub_1C4456300();
        sub_1C4D8711C(v20, v21);
        sub_1C442EE4C();
        sub_1C44D474C(v1, v22);
        sub_1C4D870C4();
      }

      while (!v23);

      v12 = v34;
      v0 = v35;
    }

    else
    {

      v14 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + v12) = v14;
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C44D8F4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44E2E7C;

  return PeopleMatcher.execute()();
}

uint64_t sub_1C44D8FD8()
{
  v44 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
  v4 = type metadata accessor for PeopleMatcher();
  v5 = *(v4 + 32);
  LOBYTE(v43[0]) = *(v2 + v5);
  v6 = *(v4 + 24);
  v7 = sub_1C4EFD548();
  sub_1C43FBCE0(v7);
  v9 = *(v8 + 16);
  v9(v1, v2 + v6, v7);
  sub_1C43FBD94();
  sub_1C440BAA8(v10, v11, v12, v7);
  sub_1C44ABA54(v43, v1);
  sub_1C4420C3C(v1, &qword_1EC0B8568, &unk_1C4F319B0);
  v13 = *(v2 + v5);
  switch(*(v2 + v5))
  {
    case 1:
    case 3:
      v42 = v9;
      v14 = v0[3];
      v15 = swift_task_alloc();
      *(v15 + 16) = v14;
      sub_1C43FD8E4();
      sub_1C44AC170(v16, v17, v18, v19, v20, v21);

      if (v14)
      {
        goto LABEL_10;
      }

      if (*(v13 + *(sub_1C43FF150() + 28)) != 1)
      {
        goto LABEL_11;
      }

      v22 = *(v2 + v5);
      v23 = swift_task_alloc();
      *(v23 + 16) = v15;
      v24 = sub_1C4A94694;
      goto LABEL_9;
    case 2:
      v42 = v9;
      v27 = v0[3];
      v28 = swift_task_alloc();
      *(v28 + 16) = v27;
      sub_1C43FD8E4();
      sub_1C46CE408(v29, v30, v31, v32, v33, v34);

      if (v1)
      {
LABEL_10:
        v35 = v0[4];

        sub_1C43FBDA0();
      }

      else
      {
        if (*(v27 + *(sub_1C43FF150() + 28)) == 1)
        {
          v22 = *(v2 + v5);
          v23 = swift_task_alloc();
          *(v23 + 16) = v28;
          v24 = sub_1C4A95930;
LABEL_9:
          sub_1C44C6BB4(v2 + v6, v22, 0, 1, v24, v23);
        }

LABEL_11:
        v37 = v0[3];
        v38 = v0[4];
        sub_1C4EF9AE8();
        sub_1C43FBD94();
        sub_1C44E254C();
        LOBYTE(v43[0]) = *(v2 + v5);
        v42(v38, v2 + v6, v7);
        sub_1C43FBD94();
        sub_1C440BAA8(v39, v40, v41, v7);
        sub_1C44A8814(v43, v38);
        sub_1C4420C3C(v38, &qword_1EC0B8568, &unk_1C4F319B0);

        sub_1C43FBDA0();
      }

      result = v36();
      break;
    default:
      v43[0] = 0;
      v43[1] = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0x676E6974726F6241, 0xE900000000000020);
      v0[2] = v4;
      sub_1C456902C(&qword_1EC0BA4F8, &qword_1C4F14228);
      v25 = sub_1C4F01198();
      MEMORY[0x1C6940010](v25);

      MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F8EC80);
      sub_1C448D934(*(v2 + v5));
      sub_1C448E088();
      result = sub_1C4F024A8();
      break;
  }

  return result;
}

void sub_1C44D93D0()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType(0);
  v7 = sub_1C43FCDF8(v6);
  v103 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v102 = v12 - v11;
  v13 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  sub_1C43FBD18(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v95 - v17;
  v19 = sub_1C4EFF1C8();
  v20 = sub_1C43FCDF8(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  v27 = v26 - v25;
  sub_1C44D9DFC(v3, v18);
  if (sub_1C44157D4(v18, 1, v19) == 1)
  {
    sub_1C4420C3C(v18, &qword_1EC0C2A90, &unk_1C4F16D30);
    if (qword_1EDDFD028 != -1)
    {
      goto LABEL_106;
    }

    goto LABEL_3;
  }

  v34 = *(v22 + 32);
  v106 = v27;
  v34(v27, v18, v19);
  v107 = MEMORY[0x1E69E7CC0];
  v35 = type metadata accessor for CNContactStructs.Person(0);
  v36 = (v5 + *(v35 + 44));
  v37 = v36[1];
  v97 = v35;
  if (v37)
  {
    v38 = *v36 == 1702195828 && v37 == 0xE400000000000000;
    if (v38 || (sub_1C4F02938() & 1) != 0)
    {
      v39 = *(*(v1 + *(type metadata accessor for PhaseStores() + 40)) + 24);

      sub_1C44D9F00();
      sub_1C4416A80();

      if (v18)
      {
        v40 = v18;
      }

      else
      {
        v40 = MEMORY[0x1E69E7CC0];
      }

      if (*(v40 + 16))
      {
        sub_1C44DB648();
        sub_1C4416A80();

        if (v18)
        {
          sub_1C4424F0C();
        }
      }

      else
      {

        if (qword_1EDDFD028 != -1)
        {
          sub_1C43FE9B4();
        }

        v41 = sub_1C4F00978();
        sub_1C43FCEE8(v41, qword_1EDE2DE10);
        v42 = sub_1C4F00968();
        v18 = sub_1C4F01CD8();
        if (os_log_type_enabled(v42, v18))
        {
          v43 = sub_1C43FCED0();
          *v43 = 0;
          _os_log_impl(&dword_1C43F8000, v42, v18, "No me aliases found in relationship store.", v43, 2u);
          MEMORY[0x1C6942830](v43, -1, -1);
        }
      }
    }

    v35 = v97;
  }

  v44 = *(v5 + *(v35 + 248));
  if (v44)
  {
    v45 = v44;
  }

  else
  {
    v45 = MEMORY[0x1E69E7CC0];
  }

  v101 = *(v45 + 16);
  v96 = v22;
  if (!v101)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    goto LABEL_55;
  }

  v95 = v19;
  v105 = v5;
  v46 = *(v6 + 56);
  v99 = v45 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
  v100 = v46;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v19 = 0;
  v98 = v45;
  while (1)
  {
    if (v19 >= *(v45 + 16))
    {
      goto LABEL_105;
    }

    v47 = v102;
    sub_1C44908D8(v99 + *(v103 + 72) * v19, v102, type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType);
    v48 = *(v47 + v100);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44DBCAC(v47, type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType);
    v49 = MEMORY[0x1E69E7CC0];
    if (v48)
    {
      v49 = v48;
    }

    v50 = *(v49 + 16);
    v104 = v49;
    if (v50)
    {
      break;
    }

LABEL_52:
    ++v19;

    v45 = v98;
    if (v19 == v101)
    {

      v5 = v105;
      v19 = v95;
LABEL_55:
      v68 = v97;
      v69 = (v5 + v97[9]);
      v70 = *v69;
      v71 = v69[1];
      if (v71)
      {
        v72 = HIBYTE(v71) & 0xF;
        if ((v71 & 0x2000000000000000) == 0)
        {
          v72 = v70 & 0xFFFFFFFFFFFFLL;
        }

        if (v72)
        {
          sub_1C4EFF168();
          v18 = v73;
          sub_1C4EFF198();
          sub_1C43FBD30();

          sub_1C442DD08();
          sub_1C4431E78();
          sub_1C44DB648();
          sub_1C4416A80();

          if (v18)
          {
            sub_1C4424F0C();
          }

          v68 = v97;
        }
      }

      v74 = (v5 + v68[15]);
      if (v74[1])
      {
        sub_1C44099DC(v74);
        if (v75)
        {
          sub_1C4EFF168();
          sub_1C4403FCC();
          sub_1C43FBD30();

          sub_1C4431E78();
          sub_1C44DB648();
          sub_1C4416A80();

          if (v18)
          {
            sub_1C4424F0C();
          }

          v68 = v97;
        }
      }

      v76 = (v5 + v68[17]);
      v77 = *v76;
      v78 = v76[1];
      if (v78)
      {
        v79 = HIBYTE(v78) & 0xF;
        if ((v78 & 0x2000000000000000) == 0)
        {
          v79 = v77 & 0xFFFFFFFFFFFFLL;
        }

        if (v79)
        {
          sub_1C4EFF168();
          v81 = v80;
          sub_1C4EFF198();
          sub_1C43FBD30();

          sub_1C4431E78();
          sub_1C44DB648();
          sub_1C4416A80();

          if (v81)
          {
            sub_1C4424F0C();
          }

          v68 = v97;
        }
      }

      v82 = (v5 + v68[51]);
      v83 = v82[1];
      if (!v83)
      {
        goto LABEL_91;
      }

      v18 = *v82;
      if (v71)
      {
        if (v18 == v70 && v83 == v71)
        {
          goto LABEL_91;
        }

        v85 = *v82;
        v86 = v82[1];
        v87 = sub_1C4F02938();
        v68 = v97;
        if (v87)
        {
          goto LABEL_91;
        }
      }

      if (v78)
      {
        if (v18 == v77 && v83 == v78)
        {
          goto LABEL_91;
        }

        v89 = sub_1C4F02938();
        v68 = v97;
        if (v89)
        {
          goto LABEL_91;
        }
      }

      v90 = HIBYTE(v83) & 0xF;
      if ((v83 & 0x2000000000000000) == 0)
      {
        v90 = v18 & 0xFFFFFFFFFFFFLL;
      }

      if (!v90)
      {
LABEL_91:
        v50 = v96;
        v56 = v106;
      }

      else
      {
        sub_1C4EFF168();
        v56 = v106;
        sub_1C4EFF198();
        v50 = v96;
LABEL_100:

        sub_1C442DD08();
        sub_1C4431E78();
        sub_1C44DB648();
        sub_1C4416A80();

        if (v18)
        {
          sub_1C4424F0C();
        }

        v68 = v97;
      }

      v91 = (v5 + v68[21]);
      if (v91[1])
      {
        sub_1C44099DC(v91);
        if (v92)
        {
          sub_1C4EFF168();
          sub_1C4403FCC();
          sub_1C43FBD30();

          sub_1C442DD08();
          sub_1C4431E78();
          sub_1C44DB648();
          v94 = v93;

          if (v94)
          {
            sub_1C44DBE44(v94);
          }
        }
      }

      (*(v50 + 8))(v56, v19);
      goto LABEL_97;
    }
  }

  v51 = (v49 + 40);
  while (1)
  {
    v52 = *(v51 - 1);
    v18 = *v51;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFF168();
    sub_1C4EFF198();

    sub_1C44DB648();
    v54 = v53;

    if (v54)
    {
      break;
    }

LABEL_51:
    v51 += 2;
    if (!--v50)
    {
      goto LABEL_52;
    }
  }

  v18 = *(v54 + 16);
  v55 = v107;
  v56 = *(v107 + 16);
  v5 = v56 + v18;
  if (__OFADD__(v56, v18))
  {
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v58 = *(v55 + 24) >> 1, v58 < v5))
  {
    if (v56 <= v5)
    {
      v59 = v56 + v18;
    }

    else
    {
      v59 = v56;
    }

    sub_1C44DBB10(isUniquelyReferenced_nonNull_native, v59, 1, v55);
    v55 = v60;
    v58 = *(v60 + 24) >> 1;
  }

  v56 = v106;
  if (!*(v54 + 16))
  {

    if (v18)
    {
      goto LABEL_99;
    }

    goto LABEL_50;
  }

  v61 = v58 - *(v55 + 16);
  v62 = *(type metadata accessor for CNContactStructs.EntityAliasRelationshipType(0) - 8);
  if (v61 >= v18)
  {
    v63 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v64 = *(v62 + 72);
    swift_arrayInitWithCopy();

    if (v18)
    {
      v65 = *(v55 + 16);
      v66 = __OFADD__(v65, v18);
      v67 = v65 + v18;
      if (v66)
      {
        goto LABEL_104;
      }

      *(v55 + 16) = v67;
    }

LABEL_50:
    v107 = v55;
    goto LABEL_51;
  }

  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  sub_1C43FE9B4();
LABEL_3:
  v28 = sub_1C4F00978();
  sub_1C43FCEE8(v28, qword_1EDE2DE10);
  v29 = sub_1C4F00968();
  v30 = sub_1C4F01CD8();
  if (sub_1C43FCEA4(v30))
  {
    v31 = sub_1C43FCED0();
    sub_1C43FBD24(v31);
    sub_1C440BAE8(&dword_1C43F8000, v32, v33, "Tokenizer was not intialized for current system locale. Not emitting aliases.");
    sub_1C43FE9D4();
  }

LABEL_97:
  sub_1C43FE9F0();
}

uint64_t sub_1C44D9DFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C44D9E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDFA0C8, type metadata accessor for EntityPair);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

void sub_1C44D9F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11)
{
  sub_1C43FE96C();
  sub_1C445C188(v15);
  v56 = sub_1C4EFF0C8();
  v16 = sub_1C43FCDF8(v56);
  v53 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBD08();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C441D6FC();
  v24 = sub_1C4EFD548();
  v25 = sub_1C43FCDF8(v24);
  v55 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBCC4();
  v31 = v30 - v29;
  v32 = sub_1C456902C(&qword_1EC0BE448, &qword_1C4F371B8);
  v33 = sub_1C43FCDF8(v32);
  v51 = v34;
  v52 = v33;
  v36 = *(v35 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v37);
  v38 = sub_1C4402274();
  v54 = type metadata accessor for EntityPair(v38);
  v39 = sub_1C43FBCE0(v54);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FD2D8();
  v43 = v42;
  v44 = v11[4];
  sub_1C4417F50(v11, v11[3]);
  sub_1C44D77B0();
  sub_1C44BBC60();
  sub_1C4F02BC8();
  if (v12)
  {
    sub_1C440962C(v11);
  }

  else
  {
    sub_1C44004E0();
    sub_1C4490F60(v45, v46);
    sub_1C43FE6CC();
    sub_1C442A70C();
    sub_1C441E078();
    sub_1C4F026C8();
    (*(v55 + 32))(v43, v31);
    sub_1C4405BEC();
    sub_1C4419854();
    sub_1C4490F60(v47, v48);
    sub_1C448856C();
    v50 = *(v53 + 32);
    v50(v43 + v54[5], v13, v56);
    sub_1C4401670();
    sub_1C448856C();
    v50(v43 + v54[6], v22, v56);
    sub_1C4495238();
    sub_1C441E078();
    *(v43 + v54[7]) = sub_1C4F02688() & 1;
    sub_1C447F524();
    sub_1C441E078();
    sub_1C4F02698();
    *(v43 + v54[8]) = v49;
    sub_1C44C8A04();
    sub_1C441E078();
    sub_1C4F026C8();
    (*(v51 + 8))(v14, v52);
    *(v43 + v54[9]) = a11;
    sub_1C449EEE8();
    sub_1C440962C(v11);
    sub_1C449F22C();
  }

  sub_1C43FBC80();
}

uint64_t sub_1C44DA4D4()
{
  v0 = sub_1C44059B8();
  v2 = *(v1(v0) + 20);
  v3 = sub_1C4EFEEF8();
  sub_1C43FBCE0(v3);
  v5 = *(v4 + 16);
  v6 = sub_1C448F13C();

  return v7(v6);
}

uint64_t sub_1C44DA548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1C44DA480(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

void sub_1C44DA574(unint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v4 = v2;
  v108 = a2;
  v6 = sub_1C4EFEEF8();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v124 = v107 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v125 = v107 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v138[0] = MEMORY[0x1E69E7CD0];
  v138[1] = MEMORY[0x1E69E7CD0];
  v138[2] = MEMORY[0x1E69E7CD0];
  v138[3] = MEMORY[0x1E69E7CD0];
  v139 = 0u;
  v140 = 0u;
  v17 = *(a1 + 16);
  if (v17)
  {
    v142 = v107 - v15;
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v107[2] = 0;
    v107[3] = 0;
    v18 = (a1 + 32);
    v19 = (v14 + 8);
    v119 = (v14 + 16);
    v120 = v16;
    sub_1C4451388();
    v122 = v19;
    v123 = v20;
    while (1)
    {
      sub_1C442E860(v18, v129);
      sub_1C4420040();
      sub_1C4416328();

      v21 = HIBYTE(v3) & 0xF;
      if ((v3 & 0x2000000000000000) == 0)
      {
        v21 = a1 & 0xFFFFFFFFFFFFLL;
      }

      if (!v21)
      {
        goto LABEL_20;
      }

      sub_1C44D8A74();
      if (v4)
      {

        sub_1C440962C(v129);
        v134 = sub_1C444AD6C();
        v135 = v106;
        v136 = v139;
        v137 = v140;
        sub_1C44DEEB4(&v134);
        return;
      }

      v128 = 0;
      sub_1C440D720();
      sub_1C440B0A0();
      sub_1C4EFF7C8();
      v22 = sub_1C4EFED18();
      v23 = *v19;
      v24 = sub_1C44000C4();
      v127 = v25;
      v25(v24);
      sub_1C440D720();
      sub_1C440B0A0();
      if (v22)
      {
        sub_1C4EFF7F8();
      }

      else
      {
        sub_1C4EFF7C8();
      }

      v126 = v18;
      sub_1C440D720();
      sub_1C440B0A0();
      sub_1C4EFF7F8();
      v19 = v123;
      sub_1C4EFEAA8();
      sub_1C441BBEC();
      sub_1C4487240(&off_1EDDFCCA8, v26);
      sub_1C4F01578();
      sub_1C4F01578();
      v3 = v134.n128_u64[1];
      a1 = v130.n128_u64[1];
      v27 = v134.n128_u64[0] == v130.n128_u64[0] && v134.n128_u64[1] == v130.n128_u64[1];
      if (v27)
      {
        break;
      }

      v28 = sub_1C4F02938();
      v29 = sub_1C448F180();
      v18(v29);
      v30 = sub_1C44000C4();
      v18(v30);

      if (v28)
      {
        goto LABEL_18;
      }

      v121 = v17;
      v31 = v120;
      v32 = v142;
      (*v119)(v120, v142, v6);
      v33 = v125;
      sub_1C4EFE558();
      sub_1C441BBEC();
      v3 = sub_1C4487240(&qword_1EDDFCCB0, v34);
      sub_1C44122BC();
      v35 = sub_1C4432814();
      v18(v35);
      if ((a1 & 1) == 0)
      {
        sub_1C4EFE5D8();
        sub_1C44122BC();
        v42 = sub_1C4432814();
        v18(v42);
        sub_1C4EFE9C8();
        sub_1C44122BC();
        v43 = sub_1C4432814();
        v18(v43);
        v17 = v121;
        sub_1C4EFE478();
        sub_1C44122BC();
        v44 = sub_1C4432814();
        v18(v44);
        v18 = v126;
        sub_1C4EFE518();
        sub_1C44122BC();
        v45 = sub_1C441361C();
        v46(v45);
        sub_1C4EFEBF8();
        sub_1C44122BC();
        v47 = sub_1C441361C();
        v48(v47);
        sub_1C4EFE3A8();
        sub_1C44122BC();
        v49 = sub_1C441361C();
        v50(v49);
        sub_1C4EFE2C8();
        sub_1C44122BC();
        v51 = sub_1C441361C();
        v52(v51);
        sub_1C4EFEE68();
        sub_1C44122BC();
        v58 = sub_1C441361C();
        v59(v58);
        if (a1)
        {
          v60 = sub_1C4415864();
          v127(v60);
          sub_1C4420040();
          sub_1C4416328();
          [objc_allocWithZone(MEMORY[0x1E6996728]) init];
          sub_1C444115C();
          sub_1C441D28C();

          v107[1] = sub_1C4458538(v61, sel_typeOfHandleString_);

          sub_1C443003C();
          sub_1C43FC764();
          if (v27)
          {
            sub_1C4401D48();
            String.normalizedContactHandle()();
            sub_1C4416328();

            sub_1C4461D2C();
            if (v27)
            {
              v3 = 0xE000000000000000;
            }

            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C44352A8();

            v62 = sub_1C443DF7C();
            sub_1C4A8F5B4(v62, v63, v64);
            a1 = (v33 + 24);
            sub_1C483CA44(&v130, v141);
            sub_1C4414668();
          }

          else
          {
            v67 = objc_allocWithZone(MEMORY[0x1E696AB60]);
            v75 = sub_1C442EC74();
            v128 = 0;
            sub_1C4401D48();
            v76 = sub_1C4F01108();
            v77 = sub_1C4401D48();
            v78 = MEMORY[0x1C69400B0](v77);
            v79 = sub_1C4426D1C(v78, sel_matchesInString_options_range_);

            sub_1C44DBED0();
            v3 = sub_1C44606DC();

            v80 = sub_1C4428DA0(v3);

            if (v80)
            {
              sub_1C4420040();
              a1 = v53;
              String.normalizedContactHandle()();
              sub_1C442F2F8();
              v54 = sub_1C443F6E4();
              sub_1C44869B4(v54, v55, v56);
            }

            else
            {

              sub_1C4420040();
              a1 = v68;
              v112 = sub_1C4F00FF8();
              v117 = v69;
            }
          }
        }

        else
        {
          sub_1C4EFE328();
          sub_1C44122BC();
          v65 = sub_1C441361C();
          v66(v65);
          sub_1C4EFE338();
          sub_1C44122BC();
          v70 = sub_1C441361C();
          v71(v70);
          sub_1C4EFE348();
          sub_1C44122BC();
          v72 = sub_1C4432814();
          v73 = v127;
          v127(v72);
          v74 = sub_1C4415864();
          v73(v74);
        }

        v57 = sub_1C445077C();
        v127(v57);
        v4 = v128;
        goto LABEL_20;
      }

      v36 = sub_1C4415864();
      v18(v36);
      v37 = sub_1C4420040();
      a1 = v138;
      sub_1C44869B4(&v134, v37, v38);

      (v18)(v32, v6);
      v4 = v128;
      v17 = v121;
LABEL_19:
      v18 = v126;
LABEL_20:
      sub_1C440962C(v129);
      v18 = (v18 + 40);
      if (!--v17)
      {
        goto LABEL_36;
      }
    }

    v39 = sub_1C448F180();
    v18(v39);
    v40 = sub_1C44000C4();
    v18(v40);

LABEL_18:
    v41 = sub_1C445077C();
    v18(v41);
    v4 = v128;
    goto LABEL_19;
  }

  v109 = 0;
  v110 = 0;
  v111 = 0;
  v112 = 0;
  sub_1C4451388();
LABEL_36:
  v128 = v4;
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  v81 = swift_allocObject();
  v82 = 0;
  *(v81 + 16) = xmmword_1C4F13950;
  *(v81 + 32) = v111;
  *(v81 + 40) = v116;
  v83 = v117;
  *(v81 + 48) = v112;
  *(v81 + 56) = v83;
  v84 = v115;
  *(v81 + 64) = v110;
  *(v81 + 72) = v84;
  v85 = v118;
  *(v81 + 80) = v113;
  *(v81 + 88) = v85;
  v86 = v114;
  *(v81 + 96) = v109;
  *(v81 + 104) = v86;
  v87 = MEMORY[0x1E69E7CC0];
LABEL_37:
  v88 = (v81 + 40 + 16 * v82);
  while (v82 != 5)
  {
    if (v82 > 4)
    {
      __break(1u);
      return;
    }

    ++v82;
    v90 = *(v88 - 1);
    v89 = *v88;
    v88 += 2;
    v91 = HIBYTE(v89) & 0xF;
    if ((v89 & 0x2000000000000000) == 0)
    {
      v91 = v90 & 0xFFFFFFFFFFFFLL;
    }

    if (v91)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v134.n128_u64[0] = v87;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v93 = *(v87 + 16);
        sub_1C44CD9C0();
        v87 = v134.n128_u64[0];
      }

      v94 = *(v87 + 16);
      if (v94 >= *(v87 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v87 = v134.n128_u64[0];
      }

      *(v87 + 16) = v94 + 1;
      v95 = v87 + 16 * v94;
      *(v95 + 32) = v90;
      *(v95 + 40) = v89;
      goto LABEL_37;
    }
  }

  swift_setDeallocating();
  sub_1C44DEE40();
  v134.n128_u64[0] = v87;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C43FDC98();
  sub_1C4401CBC(v96, v97, &unk_1C4F0E870);
  v98 = sub_1C4F01048();
  v100 = v99;

  v101 = HIBYTE(v100) & 0xF;
  if ((v100 & 0x2000000000000000) == 0)
  {
    v101 = v98 & 0xFFFFFFFFFFFFLL;
  }

  if (v101)
  {
    sub_1C44869B4(&v134, v98, v100);
  }

  v102 = v108;
  v130 = sub_1C444AD6C();
  v131 = v103;
  v132 = v139;
  v133 = v140;
  v134 = v130;
  v135 = v103;
  v136 = v139;
  v137 = v140;
  sub_1C44DEE7C(&v130, v129);
  sub_1C44DEEB4(&v134);
  v104 = v131;
  *v102 = v130;
  v102[1] = v104;
  v105 = v133;
  v102[2] = v132;
  v102[3] = v105;
}

uint64_t sub_1C44DB5D0(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  v3 = *v2;
  v4 = v2[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

void sub_1C44DB648()
{
  sub_1C43FBD3C();
  v65 = v1;
  v66 = v2;
  v4 = v3;
  v5 = type metadata accessor for CNContactStructs.EntityAliasRelationshipType(0);
  v6 = sub_1C43FCDF8(v5);
  v64 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C44116E8(v10, v61);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C44144E4();
  v12 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C43FBD18(v12);
  v14 = *(v13 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v61 - v16;
  sub_1C4EFF038();
  v18 = sub_1C4EFD548();
  if (sub_1C44157D4(v17, 1, v18) == 1)
  {
    sub_1C4420C3C(v17, &qword_1EC0B8568, &unk_1C4F319B0);
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4();
    }

    v19 = sub_1C4F00978();
    sub_1C43FCEE8(v19, qword_1EDE2DE10);
    v20 = sub_1C4F00968();
    v21 = sub_1C4F01CD8();
    if (sub_1C43FCEA4(v21))
    {
      v22 = sub_1C43FCED0();
      sub_1C43FBD24(v22);
      sub_1C440BAE8(&dword_1C43F8000, v23, v24, "Entity Identifier did not encode type. Not emitting entity alias.");
      sub_1C43FE9D4();
    }
  }

  else
  {
    v62 = sub_1C4EFD2F8();
    v63 = v25;
    (*(*(v18 - 8) + 8))(v17, v18);
    v26 = *(v4 + 16);
    if (v26)
    {
      v67 = sub_1C4EFEEF8();
      v27 = (v4 + 40);
      v28 = MEMORY[0x1E69E7CC0];
      v61 = xmmword_1C4F0D2B0;
      do
      {
        v30 = *(v27 - 1);
        v29 = *v27;
        v31 = sub_1C440571C();
        sub_1C440BAA8(v31, v32, v33, v67);
        v34 = v5[5];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EFD278();
        v35 = v5[6];
        if (qword_1EDDFED28 != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Source();
        sub_1C442B738(v36, &unk_1EDDFD088);
        sub_1C4406464();
        sub_1C44908D8(v37, v0 + v35, v38);
        v39 = v0 + v5[7];
        sub_1C4EFE3A8();
        v40 = (v0 + v5[8]);
        *v40 = 0;
        v40[1] = 0;
        v41 = v0 + v5[9];
        sub_1C4EFE4A8();
        v42 = (v0 + v5[10]);
        *v42 = 0;
        v42[1] = 0;
        v43 = v0 + v5[11];
        sub_1C4EFE658();
        sub_1C441B714();
        sub_1C4408540();
        if (v45)
        {
          *v40 = v30;
          v40[1] = v29;
          v46 = v66;
          *v42 = v65;
          v42[1] = v46;
          v47 = v63;
          *v34 = v62;
          v34[1] = v47;
          *v44 = v61;
          sub_1C44908D8(v0, v68, type metadata accessor for CNContactStructs.EntityAliasRelationshipType);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v51 = *(v28 + 16);
            v52 = sub_1C43FCEC0();
            sub_1C44DBB10(v52, v53, v54, v28);
            v28 = v55;
          }

          v49 = *(v28 + 16);
          v48 = *(v28 + 24);
          if (v49 >= v48 >> 1)
          {
            v56 = sub_1C4404AA4(v48);
            sub_1C44DBB10(v56, v57, v58, v59);
            v28 = v60;
          }

          *(v28 + 16) = v49 + 1;
          sub_1C442FA84();
          sub_1C44DBBD8(v68, v50, type metadata accessor for CNContactStructs.EntityAliasRelationshipType);
        }

        else
        {
        }

        sub_1C44DBCAC(v0, type metadata accessor for CNContactStructs.EntityAliasRelationshipType);
        v27 += 2;
        --v26;
      }

      while (v26);
    }
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C44DBA44(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_1C44DBE88(a4, a5);
  sub_1C4F01578();
  sub_1C4F01578();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FED70();
  }

  return v8 & 1;
}

uint64_t sub_1C44DBBD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C44DBC38()
{
  v0 = sub_1C44059B8();
  v2 = *(v1(v0) + 28);
  v3 = sub_1C4EFEEF8();
  sub_1C43FBCE0(v3);
  v5 = *(v4 + 16);
  v6 = sub_1C448F13C();

  return v7(v6);
}

uint64_t sub_1C44DBCAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C44DBD04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C44DBD5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C44DBDB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C44DBE88(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C44DBED0()
{
  result = qword_1EDDF03D0;
  if (!qword_1EDDF03D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDF03D0);
  }

  return result;
}

unint64_t sub_1C44DBF14(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1C4F01448();
  }

  __break(1u);
  return result;
}

uint64_t LocationMatcher.pipelineType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LocationMatcher();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t LocationMatcher.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LocationMatcher() + 20);
  sub_1C43FD90C();
  return sub_1C44719E4(v1 + v4, a1);
}

uint64_t LocationMatcher.stageName.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LocationMatcher();
  *a1 = *(v1 + *(result + 32));
  return result;
}

void sub_1C44DC0D4()
{
  sub_1C43FBD3C();
  sub_1C44A1E40();
  v2 = sub_1C4EFD548();
  v3 = sub_1C43FCDF8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4433190();
  v6 = type metadata accessor for Source();
  v7 = sub_1C43FBD18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4414930();
  sub_1C4440948();
  v10 = type metadata accessor for LocationMatcher();
  sub_1C4429020(v10);
  sub_1C456902C(&qword_1EC0BA518, &qword_1C4F41990);
  v11 = sub_1C445BBF0();
  MEMORY[0x1C6940010](v11);

  sub_1C441DC78();
  v12 = sub_1C44A3BBC(*(v0 + 32));
  MEMORY[0x1C6940010](v12);

  sub_1C44364AC();
  v13 = *(v0 + 20);
  sub_1C441925C();
  sub_1C447F6A4(v14);
  MEMORY[0x1C6940010](*v1, v1[1]);
  sub_1C4411930();
  sub_1C447E868(v1, v15);
  sub_1C446BE3C();
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C4EFD3D8();
  v16 = sub_1C441B798();
  v17(v16);
  sub_1C44A1748();

  sub_1C44AB234();
  sub_1C4656CA4();
  sub_1C44EB86C();
  sub_1C43FE9F0();
}

uint64_t sub_1C44DC248()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return LocationMatcher.execute()();
}

uint64_t LocationMatcher.execute()()
{
  v1[3] = v0;
  v2 = sub_1C4EFD548();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v5 = *(*(sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C44DC3F0, 0, 0);
}

uint64_t sub_1C44DC3F0()
{
  v68 = v0;
  v1 = v0[10];
  v3 = v0[3];
  v2 = v0[4];
  v4 = *(v3 + *(type metadata accessor for PhaseStores() + 24));
  v5 = type metadata accessor for LocationMatcher();
  v6 = *(v5 + 24);
  LOBYTE(v67[0]) = *(v3 + v6);
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C43FBD94();
  sub_1C440BAA8(v7, v8, v9, v2);
  sub_1C44ABA54(v67, v1);
  sub_1C4420C3C(v1, &qword_1EC0B8568, &unk_1C4F319B0);
  switch(*(v3 + v6))
  {
    case 1:
    case 3:
      v10 = v0[9];
      v12 = v0[4];
      v11 = v0[5];
      v13 = v0[3];
      _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
      v14 = *(v3 + v6);
      v15 = swift_task_alloc();
      *(v15 + 16) = v13;
      sub_1C43FC6AC();
      sub_1C44AC170(v16, v17, v18, v19, v20, v15);
      v21 = v6;
      v22 = *(v11 + 8);
      v23 = sub_1C43FFE24();
      v22(v23);

      v65 = v21;
      v24 = v0[3];
      v25 = v24 + *(v5 + 20);
      if (*(v25 + *(type metadata accessor for Source() + 28)) != 1)
      {
        goto LABEL_8;
      }

      v26 = v0[8];
      v27 = v0[4];
      _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
      v28 = *(v3 + v65);
      v29 = swift_task_alloc();
      *(v29 + 16) = v24;
      sub_1C43FC6AC();
      sub_1C44C6BB4(v30, v31, v32, v33, v34, v29);
      (v22)(v26, v27);
      goto LABEL_7;
    case 2:
      v37 = v0[7];
      v38 = v0[5];
      v66 = v0[4];
      v39 = v0[3];
      _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
      v40 = *(v3 + v6);
      v41 = swift_task_alloc();
      *(v41 + 16) = v39;
      sub_1C46CE408(v37, v40, 0, 1, sub_1C49F84CC, v41);
      v42 = *(v38 + 8);
      v42(v37, v66);

      v65 = v6;
      v43 = v0[3];
      v44 = v43 + *(v5 + 20);
      if (*(v44 + *(type metadata accessor for Source() + 28)) == 1)
      {
        v45 = v0[6];
        v46 = v0[4];
        _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
        v47 = *(v3 + v65);
        v48 = swift_task_alloc();
        *(v48 + 16) = v43;
        sub_1C43FC6AC();
        sub_1C44C6BB4(v49, v50, v51, v52, v53, v48);
        v42(v45, v46);
LABEL_7:
      }

LABEL_8:
      v55 = v0[9];
      v54 = v0[10];
      v57 = v0[7];
      v56 = v0[8];
      v58 = v0[6];
      v59 = v0[3];
      v60 = v0[4];
      sub_1C4EF9AE8();
      sub_1C43FBD94();
      sub_1C44DE4FC();
      LOBYTE(v67[0]) = *(v3 + v65);
      _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
      sub_1C43FBD94();
      sub_1C440BAA8(v61, v62, v63, v60);
      sub_1C44A8814(v67, v54);
      sub_1C4420C3C(v54, &qword_1EC0B8568, &unk_1C4F319B0);

      v64 = v0[1];

      result = v64();
      break;
    default:
      v67[0] = 0;
      v67[1] = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0x676E6974726F6241, 0xE900000000000020);
      v0[2] = v5;
      sub_1C456902C(&qword_1EC0BA518, &qword_1C4F41990);
      v35 = sub_1C4F01198();
      MEMORY[0x1C6940010](v35);

      MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F8EC80);
      sub_1C448D934(*(v3 + v6));
      result = sub_1C4F024A8();
      break;
  }

  return result;
}

uint64_t sub_1C44DC904(void (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v64 = a5;
  v61 = a6;
  v63 = a1;
  v62 = type metadata accessor for EntityMatch(0);
  v8 = sub_1C43FBCE0(v62);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  v13 = v11 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v57 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v57 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v57 - v21;
  v23 = sub_1C456902C(&qword_1EC0BB248, &qword_1C4F1E7C8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  sub_1C43FBD08();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v57 - v29;
  v31 = *a4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v32 = v65;
  v63(a3, v31, v64);

  if (!v32)
  {
    v65 = v22;
    sub_1C445FFF0(v30, v27, &qword_1EC0BB248, &qword_1C4F1E7C8);
    if (sub_1C44157D4(v27, 1, v62) == 1)
    {
      sub_1C4420C3C(v30, &qword_1EC0BB248, &qword_1C4F1E7C8);
      v34 = v27;
    }

    else
    {
      v64 = 0;
      v35 = v27;
      v36 = v65;
      sub_1C4471E9C(v35, v65);
      if (qword_1EDDFFAF0 != -1)
      {
        sub_1C4400128();
      }

      v37 = sub_1C4F00978();
      sub_1C442B738(v37, qword_1EDE2E088);
      sub_1C4430A14(v36, v20);
      sub_1C4430A14(v36, v17);
      v38 = v13;
      sub_1C4430A14(v36, v13);
      v39 = sub_1C4F00968();
      v40 = sub_1C4F01CB8();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v60 = v39;
        v42 = v41;
        v63 = swift_slowAlloc();
        v66 = v63;
        *v42 = 136315650;
        v59 = v40;
        v43 = *(v62 + 20);
        sub_1C4EFF0C8();
        sub_1C44AC538(&qword_1EDDFE810, MEMORY[0x1E69A9810]);
        sub_1C43FD2BC();
        v44 = sub_1C4F02858();
        v45 = v30;
        v47 = v46;
        v58 = v38;
        sub_1C44DBD04(v20, type metadata accessor for EntityMatch);
        v48 = sub_1C441D828(v44, v47, &v66);
        v30 = v45;

        *(v42 + 4) = v48;
        *(v42 + 12) = 2080;
        v49 = &v17[*(v62 + 24)];
        sub_1C43FD2BC();
        v36 = v65;
        v50 = sub_1C4F02858();
        v52 = v51;
        sub_1C44DBD04(v17, type metadata accessor for EntityMatch);
        v53 = sub_1C441D828(v50, v52, &v66);
        v54 = v62;

        *(v42 + 14) = v53;
        *(v42 + 22) = 2048;
        v55 = *(v58 + *(v54 + 28));
        sub_1C44DBD04(v58, type metadata accessor for EntityMatch);
        *(v42 + 24) = v55;
        v56 = v60;
        _os_log_impl(&dword_1C43F8000, v60, v59, "GraphStore: tripleMatchingMap: inserting match: %s <-> %s c:%f", v42, 0x20u);
        swift_arrayDestroy();
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      else
      {

        sub_1C44DBD04(v13, type metadata accessor for EntityMatch);
        sub_1C44DBD04(v17, type metadata accessor for EntityMatch);
        sub_1C44DBD04(v20, type metadata accessor for EntityMatch);
      }

      sub_1C44AC538(&qword_1EDDF91D0, type metadata accessor for EntityMatch);
      sub_1C4EFB6C8();
      sub_1C44DBD04(v36, type metadata accessor for EntityMatch);
      v34 = v30;
    }

    return sub_1C4420C3C(v34, &qword_1EC0BB248, &qword_1C4F1E7C8);
  }

  return result;
}

uint64_t sub_1C44DCE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5();
  if (!v5)
  {
    type metadata accessor for EntityMatch(0);
    sub_1C43FBD94();
    return sub_1C440BAA8(v7, v8, v9, v10);
  }

  return result;
}

uint64_t sub_1C44DCEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a3;
  v83 = a2;
  v85 = a1;
  v79 = a4;
  v78 = sub_1C4EF9CD8();
  v76 = *(v78 - 8);
  v5 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C4EFF0C8();
  v80 = *(v7 - 8);
  v81 = v7;
  v8 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v84 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v70 - v12;
  v14 = type metadata accessor for EntityTriple(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C456902C(&unk_1EC0BCAE0, &unk_1C4F142A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v70 - v20;
  v22 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v70 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v70 - v30;
  v32 = v86;
  result = sub_1C44DC054();
  if (!v32)
  {
    v74 = v17;
    v75 = v13;
    v71 = v26;
    v72 = v29;
    v34 = v81;
    v35 = v82;
    v86 = 0;
    v36 = v80;
    v73 = v4;
    if (v83)
    {
      v37 = v83;
      sub_1C486854C(v83, v21);
      v38 = type metadata accessor for ConstructionGraphTriple(0);
      v39 = v35;
      v40 = v14;
      if (sub_1C44157D4(v21, 1, v38) == 1)
      {
        sub_1C4420C3C(v21, &unk_1EC0BCAE0, &unk_1C4F142A0);
        v41 = 1;
      }

      else
      {
        (*(v36 + 16))(v31, v21, v34);
        sub_1C447EA28(v21, type metadata accessor for ConstructionGraphTriple);
        v41 = 0;
      }
    }

    else
    {
      v37 = 0;
      v41 = 1;
      v39 = v82;
      v40 = v14;
    }

    v42 = v31;
    sub_1C440BAA8(v31, v41, 1, v34);
    v43 = v75;
    sub_1C44D0BD8(v85, v75);
    v44 = sub_1C44157D4(v43, 1, v40);
    v45 = v84;
    if (v44 == 1)
    {
      sub_1C4420C3C(v43, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v46 = sub_1C4F00978();
      sub_1C442B738(v46, qword_1EDE2DE10);
      v47 = sub_1C4F00968();
      v48 = sub_1C4F01CD8();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_1C43F8000, v47, v48, "Location Matcher: skipping entityTriples are empty", v49, 2u);
        MEMORY[0x1C6942830](v49, -1, -1);
      }

      sub_1C46828B4();
      v50 = swift_allocError();
      *v51 = 0;
      v86 = v50;
      swift_willThrow();
      return sub_1C4420C3C(v42, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    v52 = v43;
    v53 = v74;
    sub_1C44DD7A8(v52, v74);
    if (v37)
    {
      v54 = v86;
      v55 = sub_1C49F6FB8(v85, v37, v39, sub_1C4812AF0, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple, sub_1C459DC78);
      v56 = v79;
      v86 = v54;
      v57 = v72;
      if (v54)
      {
        sub_1C447EA28(v53, type metadata accessor for EntityTriple);
        return sub_1C4420C3C(v42, &unk_1EC0BA0E0, &qword_1C4F105A0);
      }

      v59 = 1.0;
      v58 = &unk_1C4F41000;
      if (v55 > 0.88)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v56 = v79;
      v57 = v72;
      v58 = &unk_1C4F41000;
    }

    sub_1C4EFF008();
    sub_1C4420C3C(v42, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C440BAA8(v57, 0, 1, v34);
    sub_1C44DDDBC(v57, v42);
    v59 = v58[605];
LABEL_20:
    v60 = v71;
    sub_1C446C964(v42, v71, &unk_1EC0BA0E0, &qword_1C4F105A0);
    if (sub_1C44157D4(v60, 1, v34) == 1)
    {
      sub_1C4420C3C(v60, &unk_1EC0BA0E0, &qword_1C4F105A0);
      result = sub_1C4F024A8();
      __break(1u);
    }

    else
    {
      (*(v36 + 32))(v45, v60, v34);
      _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
      v61 = type metadata accessor for EntityMatch(0);
      v62 = v45;
      v63 = v34;
      v64 = *(v36 + 16);
      v65 = v74;
      v64(v56 + v61[5], v74, v63);
      v64(v56 + v61[6], v62, v63);
      v66 = v77;
      sub_1C4EF9C88();
      sub_1C4EF9AD8();
      v68 = v67;
      (*(v76 + 8))(v66, v78);
      (*(v36 + 8))(v62, v63);
      sub_1C447EA28(v65, type metadata accessor for EntityTriple);
      sub_1C4420C3C(v42, &unk_1EC0BA0E0, &qword_1C4F105A0);
      result = type metadata accessor for LocationMatcher();
      v69 = *(v73 + *(result + 24));
      *(v56 + v61[7]) = v59;
      *(v56 + v61[8]) = v68;
      *(v56 + v61[9]) = v69;
      *(v56 + v61[10]) = 0;
    }
  }

  return result;
}

uint64_t sub_1C44DD6F4()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FCE50(v2);
  v4 = *(v3 + 32);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

uint64_t sub_1C44DD748(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C44DD7A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 32);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C44DD800()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 32);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

uint64_t sub_1C44DD858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FCE50(v4);
  v6 = *(v5 + 32);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C44DD8B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FCE50(v4);
  v6 = *(v5 + 32);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C44DD908(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FCE50(v5);
  v7 = *(v6 + 32);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C44DD95C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FCE50(v4);
  v6 = *(v5 + 32);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C44DD9B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FCE50(v4);
  v6 = *(v5 + 32);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C44DDA0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FCE50(v4);
  v6 = *(v5 + 32);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C44DDA64()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FCE50(v2);
  v4 = *(v3 + 32);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

uint64_t sub_1C44DDAB8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FCE50(v5);
  v7 = *(v6 + 32);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C44DDB0C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FCE50(v5);
  v7 = *(v6 + 32);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C44DDB60()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FCE50(v2);
  v4 = *(v3 + 32);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

uint64_t sub_1C44DDBB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FCE50(v4);
  v6 = *(v5 + 32);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C44DDC0C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FCE50(v5);
  v7 = *(v6 + 32);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C44DDC60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FCE50(v4);
  v6 = *(v5 + 32);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C44DDCB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FCE50(v4);
  v6 = *(v5 + 32);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C44DDD10()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FCE50(v2);
  v4 = *(v3 + 32);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

uint64_t sub_1C44DDD64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FCE50(v4);
  v6 = *(v5 + 32);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C44DDDBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C44DDE2C()
{
  sub_1C4404078();
  v3 = sub_1C456902C(v1, v2);
  sub_1C43FBCE0(v3);
  v5 = *(v4 + 16);
  v6 = sub_1C43FBC98();
  v7(v6);
  return v0;
}

uint64_t sub_1C44DDE98()
{
  sub_1C43FC36C();
  v4 = sub_1C4EFD548();
  sub_1C43FCF8C(v4);
  if (*(v5 + 84) == v3)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v6 = sub_1C4EFF0C8();
    result = sub_1C43FCF8C(v6);
    if (*(v8 + 84) != v3)
    {
      *(v1 + *(v2 + 40)) = v0;
      return result;
    }

    sub_1C442F908();
  }

  sub_1C43FE688();

  return sub_1C440BAA8(v9, v10, v11, v12);
}

uint64_t sub_1C44DDF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C43FECE0();
  v6 = sub_1C4EFD548();
  sub_1C43FCF8C(v6);
  if (*(v7 + 84) == v3)
  {
    v8 = sub_1C4404F74();
LABEL_5:

    return sub_1C44157D4(v8, v3, v9);
  }

  v10 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v10);
  if (*(v11 + 84) == v3)
  {
    v8 = sub_1C442F908();
    goto LABEL_5;
  }

  v13 = *(v4 + *(a3 + 40));
  sub_1C448E060();
  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1C44DE080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDF91C0, type metadata accessor for EntityMatch);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

void EntityMatch.encode(to:)()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  v3 = sub_1C456902C(&qword_1EC0BE130, &unk_1C4F32660);
  sub_1C4403200(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C44DE3A4();
  sub_1C440F61C();
  sub_1C4EFD548();
  sub_1C44004E0();
  sub_1C4490F60(v7, v8);
  sub_1C44E76EC();
  sub_1C43FEF68();
  sub_1C4F027E8();
  if (!v0)
  {
    v9 = type metadata accessor for EntityMatch(0);
    sub_1C4404F64(v9);
    sub_1C4EFF0C8();
    sub_1C4419854();
    sub_1C4490F60(v10, v11);
    sub_1C441AED4();
    sub_1C44032B0();
    sub_1C4F027E8();
    v12 = v2[6];
    sub_1C44032B0();
    sub_1C4F027E8();
    v13 = *(v1 + v2[7]);
    sub_1C442FDD8();
    sub_1C4F027C8();
    v14 = *(v1 + v2[8]);
    sub_1C442FDD8();
    sub_1C4F027B8();
    v17 = *(v1 + v2[9]);
    sub_1C44C1190();
    sub_1C442DF84();
    sub_1C4F027E8();
    v18 = *(v1 + v2[10]);
    sub_1C456902C(qword_1EC0C0740, &qword_1C4F0D000);
    sub_1C4473454(&qword_1EDDFA5E0);
    sub_1C43FEF68();
    sub_1C4F02778();
  }

  v15 = sub_1C440231C();
  v16(v15);
  sub_1C44103B4();
  sub_1C43FBC80();
}

unint64_t sub_1C44DE3A4()
{
  result = qword_1EDDF9240[0];
  if (!qword_1EDDF9240[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF9240);
  }

  return result;
}

uint64_t sub_1C44DE400(char a1)
{
  result = 0x6C43797469746E65;
  switch(a1)
  {
    case 1:
      v3 = 0x656372756F73;
      goto LABEL_5;
    case 2:
      v3 = 0x746567726174;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
      break;
    case 3:
      result = 0x6E656469666E6F63;
      break;
    case 4:
      result = 0x6D617473656D6974;
      break;
    case 5:
      result = 0x656E696C65706970;
      break;
    case 6:
      result = 0x617461646174656DLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C44DE4FC()
{
  sub_1C43FBD3C();
  v75 = v0;
  v11 = sub_1C4423618(v8, v9, v10);
  v72 = sub_1C43FCDF8(v11);
  v73 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v72);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v18 = type metadata accessor for ProgressTokens(0);
  v19 = sub_1C4412DFC(v18);
  v74 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C4416DF8();
  v23 = type metadata accessor for LocationMatcher();
  v24 = sub_1C44101F8(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v69 - v28;
  if (v1)
  {
    sub_1C4424C80();
  }

  else
  {
    v70 = v17;
    v30 = sub_1C44607D4(objc_autoreleasePoolPush());
    sub_1C44099C4(v30);
    sub_1C4EF93C8();
    v31 = &qword_1EC0BA4A8;
    sub_1C4656BB0();
    sub_1C442C5A4();
    sub_1C4401CBC(v32, v33, &dword_1C4F141D0);
    v34 = sub_1C4656C04();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v71);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v36 = sub_1C4F00978();
        sub_1C43FCEE8(v36, qword_1EDE2DE10);
        sub_1C4430900(v75, v29);
        v37 = sub_1C4F00968();
        v38 = sub_1C4F01CD8();
        if (os_log_type_enabled(v37, v38))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v39 = swift_slowAlloc();
          sub_1C44305A4(v39);
          *v5 = 136315138;
          v40 = sub_1C44623A0();
          sub_1C4430900(v40, v3);
          sub_1C447E868(v29, type metadata accessor for LocationMatcher);
          sub_1C44DC0D4();
          v41 = sub_1C440CAFC();
          sub_1C447E868(v41, type metadata accessor for LocationMatcher);
          v42 = sub_1C447CB90();
          sub_1C441D828(v42, v4, v43);
          sub_1C44D44F0();
          *(v5 + 4) = v3;
          sub_1C4656C84(&dword_1C43F8000, v44, v45, "%s failed to update progress token");
          sub_1C440962C(v6);
          v46 = sub_1C4416E14();
          MEMORY[0x1C6942830](v46);
          v47 = sub_1C44068C0();
          MEMORY[0x1C6942830](v47);
        }

        else
        {
          sub_1C447E868(v29, type metadata accessor for LocationMatcher);
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    v2 = v34;
    v4 = v35;

    objc_autoreleasePoolPop(v71);
    v17 = v70;
    v3 = v2;
  }

  v29 = v75;
  v48 = v75;
  sub_1C44DE9F0(v77);
  v31 = v78;
  if (v78)
  {
    v49 = sub_1C440F3CC();
    v50(v49);
    sub_1C4456268();
  }

  else
  {
    sub_1C4420C3C(v77, &qword_1EC0BA490, &unk_1C4F53630);
    v48 = 0;
  }

  if ((v76 & 1) == 0 && __OFADD__(v48, 1))
  {
    __break(1u);
    goto LABEL_25;
  }

  switch(v29[*(v5 + 24)])
  {
    case 1:
      sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC();
      sub_1C44016DC();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
        sub_1C445AABC(*(v5 + 32));
        v51 = *(v5 + 20);
        sub_1C441925C();
        sub_1C44EC814(v52);
        *(v6 + *(v7 + 20)) = 0;
        sub_1C43FC08C();
        v54 = sub_1C4656C64(v53);
        sub_1C4460A18(v54);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v55 = sub_1C4424F7C();
        sub_1C4412DCC(v55, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v56 = sub_1C43FFEF0();
      }

      else
      {
        _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
        v58 = v29[*(v5 + 32)];
        v59 = *(v72 + 24);
        v60 = *(v5 + 20);
        sub_1C441925C();
        sub_1C4430900(&v29[v61], v17 + v62);
        v63 = sub_1C44433E8();
        sub_1C4460A18(v63);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v64 = sub_1C4405904();
        sub_1C44068A0(v64, xmmword_1C4F0D130);
        sub_1C4430900(v17, v65);
        v66 = sub_1C4415F88();
        sub_1C449498C(v66);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v56 = v17;
      }

      sub_1C447E868(v56, v57);
      v67 = sub_1C43FD2BC();
      sub_1C441DFEC(v67, v68);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

uint64_t sub_1C44DE9F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for LocationMatcher();
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDF6728, type metadata accessor for LocationMatcher);
        v22 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v22);
        sub_1C44FEF34(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v23 = &unk_1EC0BA4B8;
          v24 = &unk_1C4F16F60;
          v25 = v14;
LABEL_8:
          result = sub_1C4420C3C(v25, v23, v24);
          v30 = v35;
          *(v35 + 32) = 0;
          *v30 = 0u;
          v30[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v31 = v35;
        *(v35 + 24) = v15;
        v31[4] = &off_1F43EE918;
        v32 = sub_1C4422F90(v31);
        v33 = v18;
      }

      else
      {
        v26 = v10;
        v27 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDF6728, type metadata accessor for LocationMatcher);
        v28 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v28);
        sub_1C449D50C(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v23 = &unk_1EC0BAC20;
          v24 = &unk_1C4F141E0;
          v25 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v26);
        v34 = v35;
        *(v35 + 24) = v7;
        v34[4] = &off_1F43EE970;
        v32 = sub_1C4422F90(v34);
        v33 = v26;
      }

      return sub_1C449F338(v33, v32);
  }
}

uint64_t sub_1C44DEE40()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  sub_1C4406518();

  return swift_deallocClassInstance();
}

uint64_t sub_1C44DEEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, void (*a5)(void)@<X5>, uint64_t (*a6)(void)@<X6>, char *a7@<X7>, uint64_t a8@<X8>, uint64_t (*a9)(uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t (*a15)(void), uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v464 = a7;
  v467 = a5;
  v468 = a6;
  v478 = a2;
  v480 = a1;
  v473 = a8;
  v22 = sub_1C4EF9CD8();
  v23 = sub_1C43FCDF8(v22);
  v471 = v24;
  v472 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBCC4();
  v470 = v28 - v27;
  v29 = sub_1C4EFD548();
  v30 = sub_1C43FCDF8(v29);
  v482 = v31;
  v483 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBCC4();
  v476 = v35 - v34;
  v479 = sub_1C4EFF0C8();
  v36 = sub_1C43FCDF8(v479);
  v477 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBFDC();
  v475 = v40;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v41);
  v474 = &v437 - v42;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v43);
  v481 = &v437 - v44;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v45);
  v465 = &v437 - v46;
  v462 = a3;
  v463 = a4;
  v47 = sub_1C456902C(a3, a4);
  v48 = sub_1C43FBD18(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v466 = &v437 - v51;
  v52 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v53 = sub_1C43FBD18(v52);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBFDC();
  v469 = v56;
  sub_1C43FD1D0();
  v58 = MEMORY[0x1EEE9AC00](v57);
  v60 = &v437 - v59;
  v61 = MEMORY[0x1EEE9AC00](v58);
  v63 = &v437 - v62;
  MEMORY[0x1EEE9AC00](v61);
  v65 = &v437 - v64;
  v66 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v67 = sub_1C43FBD18(v66);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v71 = &v437 - v70;
  v72 = type metadata accessor for EntityTriple(0);
  v73 = sub_1C43FBCE0(v72);
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  sub_1C43FBCC4();
  v78 = v77 - v76;
  v79 = v522;
  result = sub_1C44D8A74();
  if (v79)
  {
    return result;
  }

  v522 = v63;
  v457 = v60;
  v458 = v65;
  v459 = v78;
  v460 = v19;
  sub_1C44D0BD8(v480, v71);
  if (sub_1C44157D4(v71, 1, v72) == 1)
  {
    sub_1C4420C3C(v71, &qword_1EC0BA590, &qword_1C4F1F430);
    if (qword_1EDDFD028 == -1)
    {
LABEL_4:
      v81 = sub_1C4F00978();
      sub_1C442B738(v81, qword_1EDE2DE10);
      v82 = sub_1C4F00968();
      v83 = sub_1C4F01CD8();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&dword_1C43F8000, v82, v83, "People Matcher: skipping entityTriples are empty", v84, 2u);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      sub_1C46828B4();
      swift_allocError();
      *v85 = 0;
      return swift_willThrow();
    }

LABEL_283:
    sub_1C4419274();
    swift_once();
    goto LABEL_4;
  }

  v86 = v72;
  v87 = v459;
  sub_1C4A948D8(v71, v459);
  v88 = *(v87 + *(v72 + 40) + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44F40EC();
  sub_1C44DA574(v89, &v508);
  v447 = v86;
  v452 = v88;
  v455 = 0;

  v91 = v508.n128_u64[1];
  v90 = v508.n128_u64[0];
  v93 = v509;
  v92 = v510;
  v94 = v512;
  v448 = v513;
  v449 = v511;
  v450 = v514;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v451 = v91;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v454 = v92;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v480 = v94;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v453 = v90;
  v95 = sub_1C44E1D98(v90);
  v96 = MEMORY[0x1E69E7CC8];
  v456 = v93;
  v461 = v95;
  if (v478)
  {
    v91 = v466;
    v467();
    v97 = v468(0);
    v98 = sub_1C44157D4(v91, 1, v97);
    v99 = v479;
    v101 = v482;
    v100 = v483;
    v102 = v481;
    v103 = v458;
    if (v98 != 1)
    {
      (*(v477 + 16))(v458, v91, v479);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C447EA28(v91, v464);
      sub_1C43FBD94();
      sub_1C440BAA8(v104, v105, v106, v99);
      v507 = v96;
      sub_1C442E4AC();
LABEL_14:
      v107 = v522;
      sub_1C44DDE2C();
      if (sub_1C44157D4(v107, 1, v99) == 1)
      {

        sub_1C4420C3C(v107, &unk_1EC0BA0E0, &qword_1C4F105A0);
        goto LABEL_16;
      }

      v150 = v477;
      v151 = v465;
      (*(v477 + 32))(v465, v107, v99);
      v152 = a9(v478);
      v153 = v455;
      sub_1C44DA574(v152, &v515);
      if (v153)
      {

        sub_1C44DEEB4(&v508);

        swift_bridgeObjectRelease_n();

        (*(v150 + 8))(v151, v99);
        sub_1C4420C3C(v458, &unk_1EC0BA0E0, &qword_1C4F105A0);

        sub_1C44035D8();
        return sub_1C447EA28(v459, v154);
      }

      v455 = 0;

      v181 = v515;
      v467 = v515.n128_u64[0];
      v183 = v516;
      v182 = v517;
      v184 = v519;
      v185 = v521;
      v463 = v518;
      v464 = v520;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v468 = v181.n128_u64[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v522 = v182;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DEEB4(&v515);
      v186 = sub_1C44E1D98(v181.n128_i64[0]);
      v478 = v183;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFF048();
      v442 = v187;
      sub_1C441DDD8();
      *&v502 = v188;
      sub_1C4415BB0();
      *(&v502 + 1) = v189;
      *&v503 = 1702195828;
      *(&v503 + 1) = 0xE400000000000000;
      v505 = 0;
      v504 = 0uLL;
      v506 = 1;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44E3634(&v502);
      v466 = v186;
      if (v480)
      {
        if (v449 == 1702195828 && v480 == 0xE400000000000000)
        {
          v191 = 1;
        }

        else
        {
          v191 = sub_1C443FEE0();
        }
      }

      else
      {
        v191 = 0;
      }

      v497.n128_u64[0] = 0xD000000000000014;
      v497.n128_u64[1] = 0x80000001C4F8BE80;
      v498.n128_u64[0] = 1702195828;
      v498.n128_u64[1] = 0xE400000000000000;
      v500 = 0;
      v499 = 0uLL;
      v501 = 1;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44E3634(&v497);
      if (v450)
      {
        if (v448 == 1702195828 && v450 == 0xE400000000000000)
        {
          LODWORD(v462) = 1;
        }

        else
        {
          LODWORD(v462) = sub_1C443FEE0();
        }
      }

      else
      {
        LODWORD(v462) = 0;
      }

      sub_1C441DDD8();
      v495[0] = v202;
      sub_1C4415BB0();
      v495[1] = v203;
      v495[2] = 1702195828;
      v495[3] = 0xE400000000000000;
      memset(&v495[4], 0, 24);
      v496 = 1;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44E3634(v495);
      if (v184)
      {
        if (v463 == 1702195828 && v184 == 0xE400000000000000)
        {
          v205 = 1;
        }

        else
        {
          v205 = sub_1C443FEE0();
        }
      }

      else
      {
        v205 = 0;
      }

      v493[0] = 0xD000000000000014;
      v493[1] = 0x80000001C4F8BE80;
      v493[2] = 1702195828;
      v493[3] = 0xE400000000000000;
      memset(&v493[4], 0, 24);
      v494 = 1;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44E3634(v493);
      v438 = 0xD000000000000014;
      if (v185)
      {
        v206 = v464 == 1702195828 && v185 == 0xE400000000000000;
        v100 = v483;
        if (!v206)
        {
          v207 = sub_1C443FEE0();

          v208 = v456;
          v209 = v478;
          if (v191)
          {
            v210 = v205 | ~v207;
            v211 = v458;
            if (v210)
            {
              LODWORD(v464) = v205;
              v212 = v205 ^ 1u;
LABEL_125:
              v462 = v212;
              goto LABEL_126;
            }

            goto LABEL_121;
          }

          if ((v205 & 1) == 0)
          {
            v213 = v462 & v207;
            v211 = v458;
            if ((v213 & 1) == 0)
            {
              goto LABEL_124;
            }

            goto LABEL_121;
          }

LABEL_120:
          v211 = v458;
          if ((v462 & 1) == 0)
          {
            goto LABEL_124;
          }

          goto LABEL_121;
        }

        v208 = v456;
        v209 = v478;
        if ((v191 & 1) == 0)
        {
          goto LABEL_120;
        }

        v211 = v458;
        if ((v205 & 1) == 0)
        {
LABEL_121:
          if (*(v208 + 16) && *(v209 + 16))
          {
            v214 = sub_1C4A935F4(v208, v209);
            sub_1C47023EC(v215, v216, v217);
            LODWORD(v464) = v214;
            v212 = v214 ^ 1u;
            goto LABEL_125;
          }

LABEL_124:
          LODWORD(v464) = 0;
          v212 = 1;
          goto LABEL_125;
        }

        v462 = 0;
        LODWORD(v464) = 1;
      }

      else
      {

        v100 = v483;
        v211 = v458;
        if ((v191 & 1) == 0)
        {
          v208 = v456;
          v209 = v478;
          if ((v205 & v462 & 1) == 0)
          {
            goto LABEL_124;
          }

          goto LABEL_121;
        }

        LODWORD(v464) = v205;
        v462 = (v205 ^ 1u);
      }

LABEL_126:
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v218 = v453;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v219 = v467;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      if (*(v218 + 16) && *(v219 + 16))
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v220 = v454;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v221 = v453;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        sub_1C4417658();
        v224 = sub_1C4A954A4(v219, v221, v222, v223);
        HIDWORD(v439) = v224[2] != 0;
        *&v489 = v224;
        v225 = sub_1C440A9B8();
        sub_1C456902C(v225, v226);
        sub_1C4405220();
        sub_1C4401CBC(v227, v228, &qword_1C4F11B50);
        sub_1C4415EA8();
        sub_1C4405FC4();
        v211 = v458;
        v463 = sub_1C4F01568();
        v441 = v229;

        v91 = v220;

        v230 = v451;

        v450 = 1;
      }

      else
      {

        v91 = v454;

        v231 = v451;

        v230 = v231;
        HIDWORD(v439) = 0;
        v450 = 0;
        v463 = 0;
        v441 = 1;
      }

      v462 = (v462 & 1);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v232 = v468;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v118 = v481;
      if (*(v230 + 16) && *(v232 + 16) || *(v91 + 16) && (v232 = v468, *(v522 + 2)))
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        sub_1C4417658();
        v235 = sub_1C4A954A4(v232, v230, v233, v234);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        v236 = sub_1C4A954A4(v522, v454, sub_1C4A6AD48, sub_1C4A6AD48);
        v237 = v455;
        sub_1C4A8ED7C(v236);
        v455 = v237;
        sub_1C4499940(v238, v239, v240, v241, v242, v243, v244, v245, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450);

        v246 = sub_1C4404084();
        sub_1C44999E0(v246, v247);
        *&v489 = v248;
        sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
        sub_1C4405220();
        v91 = sub_1C4401CBC(v249, v250, &qword_1C4F11B50);
        sub_1C4415EA8();
        sub_1C4405FC4();
        v443 = sub_1C4F01568();
        v444 = v251;

        v252 = v235[2];

        if (v252)
        {

          v253 = 1;
        }

        else
        {
          v258 = v236[2];

          v253 = v258 != 0;
        }

        v445 = v253;
        v100 = v483;
        sub_1C442E4AC();
        v255 = v478;
        v257 = v464;
        v446 = 2;
        v256 = v480;
        v118 = v481;
        v211 = v458;
        v254 = v461;
      }

      else
      {

        v445 = 0;
        v446 = 0;
        v443 = 0;
        v444 = 2;
        sub_1C442E4AC();
        v255 = v478;
        v256 = v480;
        v257 = v464;
      }

      v480 = sub_1C4A92C90(v254, v466);
      v260 = v259;
      v440 = v261;
      v448 = v262;
      v464 = v259;
      if (v256)
      {
        if (v257)
        {

          sub_1C4A95670(v445, v446, v443, v444);
          sub_1C47023EC(v450, v463, v441);
          sub_1C456902C(&qword_1EC0B8530, qword_1C4F0CF70);
          v263 = swift_allocObject();
          sub_1C466323C(v263, 1);
          sub_1C441DDD8();
          *v264 = v265;
          sub_1C4415BB0();
          v266[1] = v267;
          v266[2] = v449;
          v266[3] = v256;
          v268 = sub_1C4F00F28();
          v269 = 0;
          v270 = 0;
          v507 = v268;
          v101 = v482;
          v271 = v462;
          goto LABEL_157;
        }

        v274 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
        sub_1C47023EC(v274, v275, v462);
      }

      else
      {
        v272 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
        sub_1C47023EC(v272, v273, v462);
      }

      v270 = v463;
      if (HIDWORD(v439))
      {

        sub_1C4A95670(v445, v446, v443, v444);
        v271 = v441;
        v101 = v482;
LABEL_156:
        v269 = v450;
        goto LABEL_157;
      }

      sub_1C47023EC(v450, v463, v441);
      v276 = *(v456 + 16);

      if (v276)
      {
        v277 = *(v255 + 16);

        v101 = v482;
        if (v277)
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if (v448 == 2)
          {
            LODWORD(v463) = 0;
            v278 = v444;
            v279 = v444 != 2 && v445;
            v280 = v444 == 2 || v445;
          }

          else
          {
            v278 = v444;
            if (v480)
            {
              LODWORD(v463) = v444 != 2 && v445;
              v279 = 1;
              v280 = 1;
            }

            else
            {
              LODWORD(v463) = 0;
              v374 = v444 != 2;
              v279 = v374 && v445;
              v280 = v374 && v445;
            }
          }

          v375 = sub_1C4A933E4(v456);
          v270 = v377;
          if (v375 & 1) != 0 && (v280)
          {
            v271 = v378;
            v379 = v376;

            sub_1C4A95670(v445, v446, v443, v278);
            v269 = v379;
            v100 = v483;
            goto LABEL_157;
          }

          sub_1C47023EC(v376, v377, v378);
          v91 = v456;
          v380 = sub_1C4A935F4(v456, v478);
          v462 = v381;
          v383 = v382;

          if (v380 & v279)
          {
            *&v489 = sub_1C4B400F8(8);
            *(&v489 + 1) = v384;
            v100 = v483;
            v91 = 0xD00000000000001DLL;
            if (v383 < 2)
            {

              sub_1C44237B8();
            }

            v385 = v444;
            sub_1C4414294();

            v407 = sub_1C4405FC4();
            MEMORY[0x1C6940010](v407);
            if (v385 >= 3)
            {
              sub_1C4A9568C(v446, v443, v385);
            }

            else
            {

              sub_1C44237B8();
            }

            sub_1C4414294();

            v412 = sub_1C4405FC4();
            MEMORY[0x1C6940010](v412);
            if (v448 >= 3)
            {
              sub_1C4418B70();
              sub_1C4A9568C(v413, v414, v415);
            }

            else
            {

              sub_1C44237B8();
            }

            sub_1C4414294();

            sub_1C4A95670(v445, v446, v443, v385);
            v271 = *(&v489 + 1);
            v270 = v489;
            v269 = 9;
            goto LABEL_157;
          }

          sub_1C4418B70();
          sub_1C47023EC(v386, v387, v388);
          v100 = v483;
          sub_1C442E4AC();
          if (v463)
          {
            *&v489 = sub_1C4B400F8(5);
            *(&v489 + 1) = v389;
            v390 = v444;
            if (v444 >= 3)
            {
              sub_1C4A9568C(v446, v443, v444);
            }

            else
            {

              sub_1C44237B8();
            }

            sub_1C4414294();

            v416 = sub_1C4405FC4();
            MEMORY[0x1C6940010](v416);
            if (v448 >= 3)
            {
              sub_1C4418B70();
              sub_1C4A9568C(v417, v418, v419);
            }

            else
            {

              sub_1C44237B8();
            }

            sub_1C4414294();

            v420 = v489;
            v421 = sub_1C4F012A8();
            sub_1C4A95670(v445, v446, v443, v390);
            if (v421 < 2)
            {

              v271 = 0;
              v270 = 0;
              v269 = 5;
LABEL_158:
              v291 = v269;
              v469 = sub_1C4A8F4B4();
              sub_1C47023EC(v291, v270, v271);
              sub_1C4434670();
              *&v489 = v270;
              sub_1C44E737C();
              v507 = v489;
LABEL_159:
              v292 = (v460 + *(type metadata accessor for PeopleMatcher() + 20));
              if (qword_1EDDFD0A8 != -1)
              {
                sub_1C440FA20();
              }

              v293 = type metadata accessor for Source();
              v294 = sub_1C442B738(v293, qword_1EDDFD0B0);
              v295 = v294[1];
              v296 = *v292 == *v294 && v292[1] == v295;
              v297 = v480;
              v298 = v464;
              v463 = *v294;
              if (!v296 && (sub_1C4F02938() & 1) == 0 || !*(v461 + 16))
              {
LABEL_196:
                if (v448 == 2 || (sub_1C4A95670(v297, v298, v440, v448), (v297 & 1) == 0))
                {

                  swift_bridgeObjectRelease_n();
                  goto LABEL_202;
                }

                v469 = v295;
                v322 = sub_1C4A92FE0(v466, v461);

                if (!*(v322 + 16))
                {
                  v364 = sub_1C440FA0C();
                  v365(v364);

                  goto LABEL_304;
                }

                sub_1C45A323C(0, 1, v322);
                v323 = *(v322 + 48);
                v489 = *(v322 + 32);
                v324 = *(v322 + 64);
                v490 = v323;
                v491 = v324;
                v492 = *(v322 + 80);
                sub_1C461B90C(&v489, &v485);

                v325 = v492;
                v91 = *(&v489 + 1);
                v326 = v489;
                sub_1C4440A40();
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                sub_1C4434670();
                sub_1C4401E78();
                v480 = v326;
                sub_1C44000C4();
                sub_1C44E737C();
                v118 = "association:identifierNoMatch";
                switch(v325)
                {
                  case 1:
                    goto LABEL_254;
                  case 2:
                    v118 = "num_rejected_suggestions";
                    goto LABEL_254;
                  case 3:
                    v391 = "association:contactsInferred";
                    goto LABEL_253;
                  case 4:
                    v327 = "association:contactsConfirmed";
                    goto LABEL_251;
                  case 5:
                    v327 = "association:userTaggedHomeKit";
                    goto LABEL_251;
                  case 6:
                    v391 = "association:userTaggedPhotos";
LABEL_253:
                    v118 = v391 - 32;
                    goto LABEL_254;
                  default:
                    v327 = "association:identifierNoMatch";
LABEL_251:
                    v118 = v327 - 32;
LABEL_254:
                    v100 = "visualIdentifier";
                    swift_isUniquelyReferenced_nonNull_native();
                    sub_1C4401E78();
                    sub_1C44E737C();
                    v507 = v485.n128_u64[0];
                    v392 = v459 + *(v447 + 36);
                    v393 = *v392 == v463 && *(v392 + 8) == v469;
                    if (!v393 && (sub_1C4F02938() & 1) == 0)
                    {
                      v405 = sub_1C440FA0C();
                      v406(v405);

                      sub_1C4851A34(&v489);
                      sub_1C441809C();
                      goto LABEL_301;
                    }

                    v394 = *(_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0() + 16);

                    sub_1C441809C();
                    if (v394)
                    {
                    }

                    else
                    {

                      v395 = *(v478 + 16);

                      if (v395)
                      {
                        goto LABEL_295;
                      }

                      v396 = type metadata accessor for PhaseStores();
                      sub_1C44336AC(v396);
                      v397 = VisionKeyValueStore.fetchNameEntities(for:)();
                      v398 = sub_1C482FE08(v397);
                      sub_1C4A9594C(v398);
                      sub_1C4460338();

                      if (MEMORY[0x10])
                      {
                        sub_1C441D338();
                        while (1)
                        {
                          v400 = sub_1C443F30C();
                          v488 = v402;
                          v486 = v401;
                          v487 = v400;
                          v485 = v403;
                          v404 = HIBYTE(v401.n128_u64[1]) & 0xF;
                          if ((v401.n128_u64[1] & 0x2000000000000000) == 0)
                          {
                            v404 = v401.n128_u64[0] & 0xFFFFFFFFFFFFLL;
                          }

                          if (v404)
                          {
                            sub_1C44BBEA4();

                            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                            sub_1C4434670();
                            sub_1C444B230();
                            sub_1C4408EFC();
                            sub_1C44E737C();
                            sub_1C4851A34(&v485);
                            sub_1C444199C();
                            goto LABEL_294;
                          }

                          if (!v399)
                          {
                            break;
                          }

                          sub_1C440CD28();
                        }

LABEL_294:
                        v101 = v482;
                        v100 = v483;
                        v118 = v481;
                        goto LABEL_295;
                      }
                    }

LABEL_295:
                    v422 = type metadata accessor for PhaseStores();
                    sub_1C44336AC(v422);
                    v423 = VisionKeyValueStore.fetchRelationshipEntities(for:)();
                    sub_1C4851A34(&v489);
                    v424 = sub_1C482FE08(v423);
                    sub_1C4A9594C(v424);
                    sub_1C4460338();

                    if (*(v423 + 16))
                    {
                      sub_1C441D338();
                      sub_1C442E4AC();
                      while (1)
                      {
                        v425 = sub_1C440C674();
                        v486 = v426;
                        v487 = v427;
                        v488 = v428;
                        v485 = v425;
                        sub_1C442A498();
                        if (v430)
                        {
                          break;
                        }

                        if (!v429)
                        {
                          v433 = sub_1C440FA0C();
                          v434(v433);
LABEL_304:

LABEL_203:
                          v180 = 1.0;
                          goto LABEL_204;
                        }

                        sub_1C440CD28();
                      }

                      sub_1C44BBEA4();

                      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                      sub_1C4434670();
                      sub_1C444B230();
                      sub_1C44E737C();
                      v507 = v484;
                      sub_1C4F01A78();
                      sub_1C4851A34(&v485);
                      swift_isUniquelyReferenced_nonNull_native();
                      sub_1C444B230();
                      sub_1C4404BB0();
                      sub_1C44E737C();
                      sub_1C444199C();
LABEL_202:
                      v328 = sub_1C440FA0C();
                      v329(v328);
                      goto LABEL_203;
                    }

                    v431 = sub_1C440FA0C();
                    v432(v431);

LABEL_301:
                    sub_1C442E4AC();
                    goto LABEL_203;
                }
              }

              v469 = v295;
              v299 = v461;
              sub_1C45A323C(0, 1, v461);
              v301 = *(v299 + 32);
              v300 = *(v299 + 48);
              v492 = *(v299 + 80);
              v489 = v301;
              v302 = *(v299 + 64);
              v490 = v300;
              v491 = v302;
              v303 = v492;
              sub_1C461B90C(&v489, &v485);
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C4434670();
              sub_1C4401E78();
              sub_1C43FD2BC();
              sub_1C44E737C();
              if (v303 <= 1)
              {
                v100 = "association:identifierNoMatch";
                v91 = 0xD00000000000001BLL;
              }

              else
              {
                v100 = "num_rejected_suggestions";
                v91 = v438;
                switch(v303)
                {
                  case 3u:
                    v304 = "association:contactsInferred";
                    goto LABEL_178;
                  case 4u:
                    v310 = "association:contactsConfirmed";
                    goto LABEL_181;
                  case 5u:
                    v310 = "association:userTaggedHomeKit";
LABEL_181:
                    v100 = v310 - 32;
                    sub_1C442E4AC();
                    break;
                  case 6u:
                    v304 = "association:userTaggedPhotos";
LABEL_178:
                    v100 = v304 - 32;
                    v91 = 0xD00000000000001CLL;
                    break;
                  default:
                    break;
                }
              }

              v118 = "visualIdentifier";
              swift_isUniquelyReferenced_nonNull_native();
              sub_1C4401E78();
              sub_1C44E737C();
              v507 = v485.n128_u64[0];
              v311 = *(_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0() + 16);

              if (v311)
              {
                sub_1C441809C();
              }

              else
              {
                v312 = *(_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0() + 16);

                sub_1C441809C();
                sub_1C442E4AC();
                if (v312)
                {
                  goto LABEL_186;
                }

                v366 = type metadata accessor for PhaseStores();
                sub_1C44336AC(v366);
                sub_1C43FD2BC();
                v367 = VisionKeyValueStore.fetchNameEntities(for:)();
                v91 = sub_1C482FE08(v367);
                sub_1C4A8F1A4(v91);
                sub_1C4460338();

                if (MEMORY[0x10])
                {
                  sub_1C441D338();
                  while (1)
                  {
                    v369 = sub_1C443F30C();
                    v488 = v371;
                    v486 = v370;
                    v487 = v369;
                    v485 = v372;
                    v91 = v370.n128_u64[1];
                    v373 = HIBYTE(v370.n128_u64[1]) & 0xF;
                    if ((v370.n128_u64[1] & 0x2000000000000000) == 0)
                    {
                      v373 = v370.n128_u64[0] & 0xFFFFFFFFFFFFLL;
                    }

                    if (v373)
                    {
                      sub_1C44BBEA4();

                      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                      sub_1C4434670();
                      sub_1C444B230();
                      sub_1C4408EFC();
                      sub_1C44E737C();
                      sub_1C4851A34(&v485);
                      sub_1C444199C();
                      goto LABEL_273;
                    }

                    if (!v368)
                    {
                      break;
                    }

                    sub_1C440CD28();
                  }

LABEL_273:
                  v100 = v483;
                }

                else
                {
                }
              }

              sub_1C442E4AC();
LABEL_186:
              v313 = type metadata accessor for PhaseStores();
              sub_1C44336AC(v313);
              sub_1C43FD2BC();
              v314 = VisionKeyValueStore.fetchRelationshipEntities(for:)();
              sub_1C4851A34(&v489);
              v315 = sub_1C482FE08(v314);
              sub_1C4A8F1A4(v315);
              sub_1C4460338();

              if (*(v314 + 16))
              {
                sub_1C441D338();
                while (1)
                {
                  v317 = sub_1C440C674();
                  v486 = v319;
                  v487 = v318;
                  v488 = v320;
                  v485 = v317;
                  v321 = HIBYTE(v318.n128_u64[1]) & 0xF;
                  if ((v318.n128_u64[1] & 0x2000000000000000) == 0)
                  {
                    v321 = v318.n128_u64[0] & 0xFFFFFFFFFFFFLL;
                  }

                  if (v321)
                  {
                    break;
                  }

                  if (!v316)
                  {
                    goto LABEL_193;
                  }

                  sub_1C440CD28();
                }

                sub_1C44BBEA4();

                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                sub_1C4434670();
                sub_1C444B230();
                sub_1C44E737C();
                v507 = v484;
                v91 = "suggestedRelationship";
                sub_1C4F01A78();
                sub_1C4851A34(&v485);
                swift_isUniquelyReferenced_nonNull_native();
                sub_1C444B230();
                sub_1C442E4AC();
                sub_1C43FD2BC();
                sub_1C44E737C();
                sub_1C444199C();
              }

              else
              {
LABEL_193:
              }

              v297 = v480;
              v298 = v464;
              v295 = v469;
              goto LABEL_196;
            }

            v269 = 5;
            v271 = *(&v420 + 1);
            v270 = v420;
LABEL_157:
            if (v271 == 1)
            {
              goto LABEL_159;
            }

            goto LABEL_158;
          }

          sub_1C4A95670(v445, v446, v443, v444);
          v408 = sub_1C440A9B8();
          sub_1C4A95670(v408, v409, v440, v448);

          swift_bridgeObjectRelease_n();

          v410 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
          sub_1C47023EC(v410, v411, 1);
          v305 = v473;
          v211 = v458;
LABEL_172:
          v306 = v465;
          v307 = sub_1C4EFEFF8();
          (*(v477 + 8))(v306, v479);
          if ((v307 & 1) == 0)
          {
            sub_1C4420C3C(v211, &unk_1EC0BA0E0, &qword_1C4F105A0);
            sub_1C44DEEB4(&v508);

            swift_bridgeObjectRelease_n();

            sub_1C44035D8();
            sub_1C447EA28(v459, v308);
            v309 = type metadata accessor for EntityMatch(0);
            return sub_1C440BAA8(v305, 1, 1, v309);
          }

          v102 = v118;
          goto LABEL_16;
        }
      }

      else
      {

        v101 = v482;
      }

      v283 = v260;
      v284 = v445;
      v286 = v443;
      v285 = v444;
      sub_1C4A92E24(v480, v283, v440, v448, v445, v446, v443, v444);
      LODWORD(v449) = v287;
      v450 = v288;
      v462 = v290;
      v463 = v289;
      sub_1C4A95670(v284, v446, v286, v285);
      if (v449)
      {
        v271 = v462;
        v270 = v463;
        goto LABEL_156;
      }

      sub_1C4A95670(v480, v464, v440, v448);

      swift_bridgeObjectRelease_n();

      sub_1C47023EC(v450, v463, v462);
      v305 = v473;
      goto LABEL_172;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4420C3C(v91, v462, v463);
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v99 = v479;
    v101 = v482;
    v100 = v483;
    v102 = v481;
    v103 = v458;
  }

  sub_1C442E4AC();
  sub_1C440BAA8(v103, 1, 1, v99);
  v507 = v96;
  if (v478)
  {
    goto LABEL_14;
  }

LABEL_16:
  sub_1C4EFF008();
  sub_1C4418B70();
  sub_1C4420C3C(v108, v109, v110);
  sub_1C43FBD94();
  sub_1C440BAA8(v111, v112, v113, v479);
  sub_1C44CDA7C();
  v114 = (v460 + *(type metadata accessor for PeopleMatcher() + 20));
  if (qword_1EDDFD0A8 != -1)
  {
    sub_1C440FA20();
  }

  v115 = type metadata accessor for Source();
  v116 = sub_1C442B738(v115, qword_1EDDFD0B0);
  v117 = *v114 == *v116 && v114[1] == v116[1];
  v118 = v102;
  if (!v117 && (sub_1C4F02938() & 1) == 0)
  {
    goto LABEL_71;
  }

  v119 = v461;
  v120 = *(v461 + 16);
  if (!v120)
  {
    goto LABEL_58;
  }

  v467 = 0;
  v121 = 0;
  v122 = 0;
  v123 = v507;
  v522 = 0x80000001C4FAEDA0;
  v468 = (v120 - 1);
  v124 = 32;
  v465 = "association:identifierNoMatch";
  v466 = (v91 - 2);
  v464 = "association:userTaggedPhotos";
  v463 = "num_rejected_suggestions";
  v462 = "association:messages";
  v449 = "association:contactsInferred";
  v448 = "association:contactsConfirmed";
  v450 = "suggestedRelationshipConfidence";
  while (1)
  {
    if (v122 >= v120)
    {
      __break(1u);
LABEL_238:
      __break(1u);
LABEL_239:
      sub_1C446BFC8();
      v282 = v449;
LABEL_244:
      v465 = v282;
LABEL_245:
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C442F6FC();
      sub_1C44E737C();
      v507 = v495[0];
      goto LABEL_53;
    }

    v125 = *(v119 + v124);
    v126 = *(v119 + v124 + 16);
    v127 = *(v119 + v124 + 32);
    v505 = *(v119 + v124 + 48);
    v503 = v126;
    v504 = v127;
    v502 = v125;
    v128 = v505;
    if (v505 <= 6u && ((1 << v505) & 0x45) != 0)
    {
      v478 = v124;
      v480 = v122;
      v131 = *(&v502 + 1);
      v130 = v502;
      sub_1C461B90C(&v502, &v497);

      v469 = v131;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4851A34(&v502);
      v100 = v465;
      v118 = v466;
      v467 = v130;
      switch(v128)
      {
        case 1:
          break;
        case 2:
          v118 = (v91 - 9);
          v100 = v463;
          break;
        case 3:
          v118 = (v91 - 1);
          v100 = v462;
          break;
        case 4:
          sub_1C4440A40();
          v100 = v449;
          break;
        case 5:
          sub_1C4440A40();
          v100 = v448;
          break;
        case 6:
          v118 = (v91 - 1);
          v100 = v450;
          break;
        default:
          sub_1C4440A40();
          v100 = v464;
          break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v497.n128_u64[0] = v123;
      v133 = v91 - 12;
      v134 = sub_1C445FAA8(v91 - 12, v522);
      sub_1C441EAB4(v134, v135);
      if (v138)
      {
        goto LABEL_238;
      }

      v139 = v136;
      v91 = v137;
      sub_1C456902C(&qword_1EC0BA720, &qword_1C4F23540);
      if (sub_1C4F02458())
      {
        v140 = sub_1C445FAA8(v133, v522);
        v101 = v482;
        if ((v91 & 1) != (v141 & 1))
        {
          sub_1C4F029F8();
          __break(1u);
          goto LABEL_306;
        }

        v139 = v140;
      }

      else
      {
        v101 = v482;
      }

      v142 = v100 | 0x8000000000000000;
      v123 = v497.n128_u64[0];
      if (v91)
      {
        v143 = (*(v497.n128_u64[0] + 56) + 16 * v139);
        v144 = v143[1];
        *v143 = v118;
        v143[1] = v142;

        v100 = v483;
      }

      else
      {
        *(v497.n128_u64[0] + 8 * (v139 >> 6) + 64) |= 1 << v139;
        v145 = (v123[6] + 16 * v139);
        v146 = v522;
        *v145 = v133;
        v145[1] = v146;
        v147 = (v123[7] + 16 * v139);
        *v147 = v118;
        v147[1] = v142;
        v148 = v123[2];
        v138 = __OFADD__(v148, 1);
        v149 = v148 + 1;
        v100 = v483;
        if (v138)
        {
          __break(1u);
          goto LABEL_283;
        }

        v123[2] = v149;
      }

      v118 = v481;
      sub_1C442E4AC();
      v119 = v461;
      v124 = v478;
      v121 = v469;
    }

    if (v468 == v122)
    {
      break;
    }

    v120 = *(v119 + 16);
    v124 += 56;
    ++v122;
  }

  v507 = v123;
  if (!v121)
  {
LABEL_58:
    v522 = a19;
    v480 = a18;
    v478 = a17;
    v469 = a16;
    v468 = a15;
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v169 = sub_1C4F00978();
    sub_1C442B738(v169, qword_1EDE2DE10);
    v170 = swift_allocObject();
    v171 = v461;
    *(v170 + 16) = v461;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v172 = sub_1C4F00968();
    v173 = sub_1C4F01CE8();
    v174 = swift_allocObject();
    *(v174 + 16) = 0;
    v175 = swift_allocObject();
    *(v175 + 16) = 8;
    v176 = swift_allocObject();
    *(v176 + 16) = a14;
    *(v176 + 24) = v170;
    v91 = swift_allocObject();
    *(v91 + 16) = v469;
    *(v91 + 24) = v176;
    sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
    v177 = swift_allocObject();
    sub_1C466323C(v177, 3);
    *v178 = v478;
    v178[1] = v174;
    v178[2] = v480;
    v178[3] = v175;
    v178[4] = v522;
    v178[5] = v91;

    if (os_log_type_enabled(v172, v173))
    {
      v91 = swift_slowAlloc();
      *v91 = 134217984;
      v179 = *(v171 + 16);

      *(v91 + 4) = v179;

      _os_log_impl(&dword_1C43F8000, v172, v173, "Vision KVS should have vid-vid association as an entry. Source vision signals count: %ld", v91, 0xCu);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }

    v180 = 0.8;
    v101 = v482;
    v100 = v483;
    v118 = v481;
    sub_1C442E4AC();
    goto LABEL_204;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v155 = sub_1C4404BB0();
  sub_1C4C808A0(v155, v156, v157, v158);
  v159 = *(_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0() + 16);

  if (v159)
  {
    goto LABEL_53;
  }

  v192 = type metadata accessor for PhaseStores();
  sub_1C44336AC(v192);
  sub_1C4404BB0();
  v193 = VisionKeyValueStore.fetchNameEntities(for:)();
  v194 = sub_1C482FE08(v193);
  sub_1C4A9594C(v194);
  sub_1C4460338();

  if (MEMORY[0x10])
  {
    sub_1C441D338();
    while (1)
    {
      v196 = sub_1C443F30C();
      v500 = v198;
      v498 = v197;
      v499 = v196;
      v497 = v199;
      v91 = v197.n128_u64[1];
      v200 = HIBYTE(v197.n128_u64[1]) & 0xF;
      if ((v197.n128_u64[1] & 0x2000000000000000) == 0)
      {
        v200 = v197.n128_u64[0] & 0xFFFFFFFFFFFFLL;
      }

      if (v200)
      {
        break;
      }

      if (!v195)
      {

        v118 = v481;
        sub_1C442E4AC();
        goto LABEL_53;
      }

      sub_1C440CD28();
    }

    v281 = v500;
    sub_1C461B90C(&v497, v495);

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4434670();
    sub_1C442F6FC();
    sub_1C4408EFC();
    sub_1C4415864();
    sub_1C44E737C();
    sub_1C4851A34(&v497);
    v118 = v481;
    v91 = 0xD00000000000001DLL;
    switch(v281)
    {
      case 1:
        goto LABEL_245;
      case 2:
        v466 = 0xD000000000000014;
        v282 = v463;
        goto LABEL_244;
      case 3:
        v466 = 0xD00000000000001CLL;
        v282 = v462;
        goto LABEL_244;
      case 4:
        goto LABEL_239;
      case 5:
        sub_1C446BFC8();
        v282 = v448;
        goto LABEL_244;
      case 6:
        v466 = 0xD00000000000001CLL;
        v282 = v450;
        goto LABEL_244;
      default:
        sub_1C446BFC8();
        v282 = v464;
        goto LABEL_244;
    }

    goto LABEL_245;
  }

LABEL_53:
  v160 = type metadata accessor for PhaseStores();
  sub_1C44336AC(v160);
  v161 = VisionKeyValueStore.fetchRelationshipEntities(for:)();

  v162 = sub_1C482FE08(v161);
  sub_1C4A9594C(v162);
  sub_1C4460338();

  if (!*(v161 + 16))
  {
LABEL_71:

    goto LABEL_72;
  }

  sub_1C441D338();
  while (1)
  {
    v163 = sub_1C440C674();
    v498 = v164;
    v499 = v165;
    v500 = v166;
    v497 = v163;
    sub_1C442A498();
    if (v168)
    {
      break;
    }

    if (!v167)
    {
      goto LABEL_71;
    }

    sub_1C440CD28();
  }

  sub_1C461B90C(&v497, v495);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4434670();
  sub_1C442F6FC();
  sub_1C44E737C();
  v507 = v495[0];
  sub_1C4F01A78();
  sub_1C4851A34(&v497);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C442F6FC();
  sub_1C4404BB0();
  sub_1C44E737C();
  v507 = v495[0];
LABEL_72:
  v180 = 0.8;
LABEL_204:
  v330 = v507;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v331 = sub_1C44E24F8(v91 - 13, 0x80000001C4FAED80, v330);

  if (v331)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v332 = sub_1C44E24F8(v91 - 12, 0x80000001C4FAEDA0, v330);

    if ((v332 & 1) == 0)
    {
      goto LABEL_208;
    }
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v333 = sub_1C44E24F8(v91 - 13, 0x80000001C4FAED80, v330);

  if ((v333 & 1) == 0)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v334 = sub_1C44E24F8(v91 - 12, 0x80000001C4FAEDA0, v330);

    if (v334)
    {
LABEL_208:
      if (qword_1EDDFD028 != -1)
      {
        sub_1C4419274();
        swift_once();
      }

      v335 = sub_1C4F00978();
      sub_1C442B738(v335, qword_1EDE2DE10);
      v336 = sub_1C4F00968();
      v337 = sub_1C4F01CD8();
      if (os_log_type_enabled(v336, v337))
      {
        v338 = swift_slowAlloc();
        *v338 = 0;
        _os_log_impl(&dword_1C43F8000, v336, v337, "Metadata invalid. Visual identifier and association reason were not simultaneously set on metadata.", v338, 2u);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }
    }
  }

  v522 = v330;
  isUniquelyReferenced_nonNull_native = v457;
  sub_1C44DDE2C();
  v339 = v479;
  if (sub_1C44157D4(isUniquelyReferenced_nonNull_native, 1, v479) == 1)
  {
LABEL_306:
    sub_1C4420C3C(isUniquelyReferenced_nonNull_native, &unk_1EC0BA0E0, &qword_1C4F105A0);
    v436 = 0;
    v435 = 416;
    sub_1C448E088();
    sub_1C4F024A8();
    __break(1u);
    JUMPOUT(0x1C44E1CB8);
  }

  sub_1C44DEEB4(&v508);
  v340 = v477;
  v341 = *(v477 + 32);
  v342 = sub_1C4401D48();
  v481 = v343;
  (v343)(v342);
  v344 = v118;
  v345 = v339;
  v480 = type metadata accessor for PeopleMatcher();
  v346 = *(v101 + 16);
  v347 = v460;
  v346(v476, v460 + *(v480 + 24), v100);
  v348 = *(v340 + 16);
  v349 = v459;
  v348(v474, v459, v339);
  v348(v475, v344, v339);
  v350 = v470;
  sub_1C4EF9C88();
  sub_1C4EF9AD8();
  v352 = v351;
  (*(v471 + 8))(v350, v472);
  (*(v340 + 8))(v344, v345);
  sub_1C4420C3C(v458, &unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C44035D8();
  sub_1C447EA28(v349, v353);
  v354 = *(v347 + *(v480 + 32));
  v355 = v522;
  if (*(v522 + 2))
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v356 = v355;
  }

  else
  {
    v356 = 0;
  }

  v357 = v473;
  (*(v482 + 32))(v473, v476, v483);
  v358 = type metadata accessor for EntityMatch(0);
  v359 = v479;
  v360 = v481;
  (v481)(v357 + v358[5], v474, v479);
  (v360)(v357 + v358[6], v475, v359);
  *(v357 + v358[7]) = v180;
  *(v357 + v358[8]) = v352;
  *(v357 + v358[9]) = v354;
  *(v357 + v358[10]) = v356;
  sub_1C43FBD94();
  sub_1C440BAA8(v361, v362, v363, v358);
}