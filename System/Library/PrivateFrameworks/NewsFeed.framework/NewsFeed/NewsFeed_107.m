uint64_t sub_1D65293A0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x696669746E656469;
    v6 = 0x726F7463656C6573;
    if (a1 != 2)
    {
      v6 = 0x6168706C61;
    }

    if (a1)
    {
      v5 = 0x7373616C63;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x776F64616873;
    v2 = 0xD000000000000018;
    if (a1 != 7)
    {
      v2 = 1885433183;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x73726564726F62;
    if (a1 != 4)
    {
      v3 = 0x615272656E726F63;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D65294C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66A5658(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65294F8(uint64_t a1)
{
  v2 = sub_1D66A4A7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6529534(uint64_t a1)
{
  v2 = sub_1D66A4A7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatMicaNodeStyle.Selector.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v41 = a2;
  sub_1D66A4CA4();
  v6 = v5;
  v58 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66A4D38();
  sub_1D5B58B84(&qword_1EC886EF8, sub_1D66A4D38);
  sub_1D7264B0C();
  if (v2)
  {
    v10 = a1;
LABEL_11:
    sub_1D61E4FBC(v10, v3);
    swift_willThrow();

    v35 = v10;
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v11 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v12 = sub_1D7264AFC();
  LOBYTE(v11) = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v13 = v58;
  v14 = v9;
  if (v11)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_8;
        }
      }

      v20 = *(v17 - 2);
      v19 = *(v17 - 1);

      v21 = sub_1D661FCD0();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v14, v6);
      v10 = v40;
      goto LABEL_11;
    }

LABEL_8:
  }

  sub_1D5C36978();
  v52 = 0uLL;
  LOBYTE(v53) = 0;
  sub_1D726431C();
  v18 = v44;
  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  v52 = xmmword_1D728CF30;
  LOBYTE(v53) = 0;
  sub_1D5C35368();
  sub_1D726427C();
  v39 = v18;
  v23 = v44;
  sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
  v52 = xmmword_1D7297410;
  LOBYTE(v53) = 0;
  sub_1D5C34DD4();
  sub_1D726427C();
  v24 = v44;
  v44 = xmmword_1D72BAA60;
  LOBYTE(v45) = 0;
  sub_1D5C8C780();
  sub_1D726427C();
  v37 = v52;
  v38 = v53;
  v50 = xmmword_1D72BAA70;
  v51 = 0;
  sub_1D5C34EC4();
  sub_1D726427C();
  v36 = v24;
  v47 = v55;
  v48 = v56;
  v44 = v52;
  v49 = v57;
  v45 = v53;
  v46 = v54;
  *&v42[11] = xmmword_1D72BAA80;
  v43 = 0;
  v26 = sub_1D726423C();
  (*(v13 + 8))(v14, v6);
  *(&v42[2] + 7) = v45;
  *(v42 + 7) = v44;
  *(&v42[6] + 7) = v47;
  *(&v42[4] + 7) = v46;
  *(&v42[8] + 7) = v48;
  HIBYTE(v42[10]) = v49;
  v27 = v41;
  *v41 = v39;
  v27[1] = *(&v18 + 1);
  v28 = v36;
  v29 = v37;
  v27[2] = v23;
  v27[3] = v28;
  v30 = *(&v37 + 1);
  v27[4] = v29;
  v27[5] = v30;
  *(v27 + 48) = v38;
  v31 = *v42;
  *(v27 + 65) = *&v42[2];
  *(v27 + 49) = v31;
  v32 = *&v42[4];
  v33 = *&v42[6];
  v34 = *&v42[8];
  *(v27 + 129) = v42[10];
  *(v27 + 113) = v34;
  *(v27 + 97) = v33;
  *(v27 + 81) = v32;
  *(v27 + 137) = v26;
  v35 = v40;
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t FormatMicaNodeStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v171 = &v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v175 = &v169 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v176 = &v169 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v177 = &v169 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v187 = (&v169 - v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v169 - v20;
  sub_1D66A4EB8();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v169 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v1 + 8);
  *&v191 = *v1;
  v28 = *(v1 + 16);
  v178 = *(v1 + 24);
  v179 = v28;
  v29 = *(v1 + 32);
  v172 = *(v1 + 40);
  v173 = v29;
  v174 = *(v1 + 48);
  v30 = *(v1 + 104);
  v214 = *(v1 + 88);
  v215 = v30;
  v216 = *(v1 + 120);
  v217 = *(v1 + 136);
  v31 = *(v1 + 72);
  v212 = *(v1 + 56);
  v213 = v31;
  v170 = *(v1 + 137);
  v32 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1D66A4D38();
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EC886EF8, sub_1D66A4D38);
  sub_1D5D2EE70(&type metadata for FormatMicaNodeStyle.Selector, v35, v37, v32, &type metadata for FormatMicaNodeStyle.Selector, v35, &type metadata for FormatVersions.AzdenB, v33, v26, v36, &off_1F51F6AD8);
  if (qword_1EDF31EF8 != -1)
  {
    swift_once();
  }

  v38 = sub_1D725BD1C();
  v39 = __swift_project_value_buffer(v38, qword_1EDFFCDC8);
  v40 = *(v38 - 8);
  v41 = *(v40 + 16);
  v186 = v39;
  v181 = v38;
  v182 = v40 + 16;
  v183 = v41;
  (v41)(v21);
  v185 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v193 = v191;
  *(&v193 + 1) = v27;
  v199 = 0uLL;
  LOBYTE(v200) = 0;
  v42 = &v26[*(v23 + 44)];
  v44 = *v42;
  v43 = *(v42 + 1);
  LOBYTE(v210) = 0;
  v45 = swift_allocObject();
  *&v191 = &v169;
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  *(v45 + 32) = v210;
  *(v45 + 40) = v44;
  *(v45 + 48) = v43;
  MEMORY[0x1EEE9AC00](v45, v46);
  v190 = &v169 - 6;
  *(&v169 - 4) = sub_1D5B4AA6C;
  *(&v169 - 3) = 0;
  v167 = sub_1D6708AE4;
  v168 = v47;
  LOBYTE(v210) = 0;
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  *(v48 + 32) = v210;
  v184 = v44;
  *(v48 + 40) = v44;
  *(v48 + 48) = v43;
  sub_1D66A4F4C();
  v50 = v49;
  v51 = sub_1D5B58B84(&qword_1EC886F10, sub_1D66A4F4C);
  v180 = v43;
  swift_retain_n();
  v188 = v50;
  v189 = v51;
  v52 = sub_1D72647CC();
  LOBYTE(v210) = 0;
  v53 = swift_allocObject();
  *(v53 + 24) = 0;
  *(v53 + 32) = 0;
  *(v53 + 16) = v52;
  *(v53 + 40) = v210;
  v54 = *(v23 + 36);
  v55 = v21;
  v218 = v26;
  v56 = &v26[v54];
  v57 = __swift_project_boxed_opaque_existential_1(&v26[v54], *&v26[v54 + 24]);
  MEMORY[0x1EEE9AC00](v57, v58);
  MEMORY[0x1EEE9AC00](v59, v60);
  v61 = v190;
  *(&v169 - 4) = sub_1D615B4A4;
  *(&v169 - 3) = v61;
  v167 = sub_1D6708AE4;
  v168 = v48;
  v62 = v192;
  sub_1D5D2BC70(v55, sub_1D615B49C, v63, sub_1D615B4A4, (&v169 - 6));
  if (!v62)
  {
    v192 = v56;

    sub_1D5D3E60C();
    sub_1D72647EC();
    sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);

    v66 = v181;
    v67 = v183;
    v183(v187, v186, v181);
    swift_storeEnumTagMultiPayload();
    v191 = xmmword_1D728CF30;
    v199 = xmmword_1D728CF30;
    LOBYTE(v200) = 0;
    LOBYTE(v193) = 0;
    v68 = swift_allocObject();
    v70 = v68;
    *(v68 + 16) = v191;
    *(v68 + 32) = v193;
    v71 = v184;
    v73 = v179;
    v72 = v180;
    *(v68 + 40) = v184;
    *(v68 + 48) = v72;
    if (v73)
    {
      v190 = &v169;
      *&v193 = v73;
      MEMORY[0x1EEE9AC00](v68, v69);
      v169 = &v169 - 6;
      *(&v169 - 4) = sub_1D5B4AA6C;
      *(&v169 - 3) = 0;
      v167 = sub_1D6708AE4;
      v168 = v70;
      LOBYTE(v210) = 0;
      v74 = swift_allocObject();
      *(v74 + 16) = v191;
      *(v74 + 32) = v210;
      *(v74 + 40) = v71;
      *(v74 + 48) = v72;
      swift_retain_n();

      v75 = sub_1D72647CC();
      LOBYTE(v210) = 0;
      v76 = swift_allocObject();
      *(v76 + 16) = v75;
      *(v76 + 24) = v191;
      *(v76 + 40) = v210;
      v77 = __swift_project_boxed_opaque_existential_1(v192, *(v192 + 3));
      MEMORY[0x1EEE9AC00](v77, v78);
      MEMORY[0x1EEE9AC00](v79, v80);
      v81 = v169;
      *(&v169 - 4) = sub_1D615B4A4;
      *(&v169 - 3) = v81;
      v167 = sub_1D6708AE4;
      v168 = v74;
      v82 = v187;
      v84 = sub_1D5D2F7A4(v187, sub_1D615B49C, v83, sub_1D615B4A4, (&v169 - 6));
      v88 = v84;

      if (v88)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        v89 = v218;
        sub_1D72647EC();
        v87 = v181;
        v67 = v183;
        v190 = 0;

        sub_1D5D2CFE8(v187, type metadata accessor for FormatVersionRequirement);
        v85 = v180;
        v86 = v89;
      }

      else
      {
        v190 = 0;

        sub_1D5D2CFE8(v82, type metadata accessor for FormatVersionRequirement);
        v86 = v218;
        v85 = v180;
        v87 = v181;
        v67 = v183;
      }
    }

    else
    {
      v190 = 0;

      sub_1D5D2CFE8(v187, type metadata accessor for FormatVersionRequirement);

      v85 = v72;
      v86 = v218;
      v87 = v66;
    }

    v90 = v177;
    v67(v177, v186, v87);
    swift_storeEnumTagMultiPayload();
    v191 = xmmword_1D7297410;
    v199 = xmmword_1D7297410;
    LOBYTE(v200) = 0;
    LOBYTE(v193) = 0;
    v91 = swift_allocObject();
    v93 = v91;
    *(v91 + 16) = v191;
    *(v91 + 32) = v193;
    v94 = v184;
    *(v91 + 40) = v184;
    *(v91 + 48) = v85;
    if (v178)
    {
      v187 = &v169;
      *&v193 = v178;
      MEMORY[0x1EEE9AC00](v91, v92);
      *(&v169 - 4) = sub_1D5B4AA6C;
      *(&v169 - 3) = 0;
      v167 = sub_1D6708AE4;
      v168 = v93;
      LOBYTE(v210) = 0;
      v95 = swift_allocObject();
      *(v95 + 16) = v191;
      *(v95 + 32) = v210;
      *(v95 + 40) = v94;
      *(v95 + 48) = v85;
      swift_retain_n();

      v96 = sub_1D72647CC();
      LOBYTE(v210) = 0;
      v97 = swift_allocObject();
      *(v97 + 16) = v96;
      *(v97 + 24) = v191;
      *(v97 + 40) = v210;
      v98 = __swift_project_boxed_opaque_existential_1(v192, *(v192 + 3));
      MEMORY[0x1EEE9AC00](v98, v99);
      MEMORY[0x1EEE9AC00](v100, v101);
      *(&v169 - 4) = sub_1D615B4A4;
      *(&v169 - 3) = &v169 - 6;
      v167 = sub_1D6708AE4;
      v168 = v95;
      v102 = v190;
      v104 = sub_1D5D2F7A4(v90, sub_1D615B49C, v103, sub_1D615B4A4, (&v169 - 6));
      v105 = v90;
      if (v102)
      {

        v86 = v218;
LABEL_32:
        v139 = v105;
LABEL_33:
        sub_1D5D2CFE8(v139, type metadata accessor for FormatVersionRequirement);
        goto LABEL_34;
      }

      v106 = v104;

      if (v106)
      {
        sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
        sub_1D66612AC();
        sub_1D72647EC();
        v87 = v181;
        v190 = 0;

        sub_1D5D2CFE8(v177, type metadata accessor for FormatVersionRequirement);
        v85 = v180;
        v94 = v184;
        v86 = v218;
      }

      else
      {
        v190 = 0;

        sub_1D5D2CFE8(v90, type metadata accessor for FormatVersionRequirement);
        v86 = v218;
        v85 = v180;
        v87 = v181;
        v94 = v184;
      }
    }

    else
    {

      sub_1D5D2CFE8(v90, type metadata accessor for FormatVersionRequirement);
    }

    v107 = v176;
    v108 = v183;
    v183(v176, v186, v87);
    swift_storeEnumTagMultiPayload();
    v191 = xmmword_1D72BAA60;
    v210 = xmmword_1D72BAA60;
    v211 = 0;
    LOBYTE(v199) = 0;
    v109 = swift_allocObject();
    v111 = v109;
    *(v109 + 16) = v191;
    *(v109 + 32) = v199;
    *(v109 + 40) = v94;
    *(v109 + 48) = v85;
    if (v174 <= 0xFD)
    {
      v187 = &v169;
      v124 = v172;
      v125 = v173;
      v207 = v173;
      v208 = v172;
      v209 = v174;
      MEMORY[0x1EEE9AC00](v109, v110);
      v179 = &v169 - 6;
      *(&v169 - 4) = sub_1D5B4AA6C;
      *(&v169 - 3) = 0;
      v167 = sub_1D6708AE4;
      v168 = v111;
      LOBYTE(v199) = 0;
      v127 = v126;
      v128 = swift_allocObject();
      *(v128 + 16) = v191;
      *(v128 + 32) = v199;
      *(v128 + 40) = v94;
      *(v128 + 48) = v85;
      swift_retain_n();
      sub_1D5ED34B0(v125, v124, v127);
      v129 = sub_1D72647CC();
      LOBYTE(v199) = 0;
      v130 = swift_allocObject();
      *(v130 + 16) = v129;
      *(v130 + 24) = v191;
      *(v130 + 40) = v199;
      v131 = __swift_project_boxed_opaque_existential_1(v192, *(v192 + 3));
      MEMORY[0x1EEE9AC00](v131, v132);
      MEMORY[0x1EEE9AC00](v133, v134);
      v135 = v179;
      *(&v169 - 4) = sub_1D615B4A4;
      *(&v169 - 3) = v135;
      v167 = sub_1D6708AE4;
      v168 = v128;
      v105 = v176;
      v136 = v190;
      v138 = sub_1D5D2F7A4(v176, sub_1D615B49C, v137, sub_1D615B4A4, (&v169 - 6));
      if (v136)
      {

        v86 = v218;
        sub_1D5ED34A0(v207, v208, v209);
        goto LABEL_32;
      }

      v163 = v138;

      if (v163)
      {
        sub_1D6661258();
        sub_1D72647EC();
        v87 = v181;
        v108 = v183;
        v190 = 0;

        sub_1D5ED34A0(v207, v208, v209);
        sub_1D5D2CFE8(v176, type metadata accessor for FormatVersionRequirement);
        v85 = v180;
        v94 = v184;
        v86 = v218;
      }

      else
      {
        v190 = 0;

        sub_1D5ED34A0(v207, v208, v209);
        sub_1D5D2CFE8(v105, type metadata accessor for FormatVersionRequirement);
        v86 = v218;
        v85 = v180;
        v87 = v181;
        v108 = v183;
        v94 = v184;
      }
    }

    else
    {

      sub_1D5D2CFE8(v107, type metadata accessor for FormatVersionRequirement);
    }

    v112 = v175;
    v108(v175, v186, v87);
    swift_storeEnumTagMultiPayload();
    v191 = xmmword_1D72BAA70;
    v205 = xmmword_1D72BAA70;
    v206 = 0;
    LOBYTE(v199) = 0;
    v113 = swift_allocObject();
    v115 = v113;
    *(v113 + 16) = v191;
    *(v113 + 32) = v199;
    *(v113 + 40) = v94;
    *(v113 + 48) = v85;
    if (v217 == 254)
    {

      v116 = v190;
      v117 = v181;
    }

    else
    {
      v187 = &v169;
      v201 = v214;
      v202 = v215;
      v203 = v216;
      v204 = v217;
      v199 = v212;
      v200 = v213;
      MEMORY[0x1EEE9AC00](v113, v114);
      *(&v169 - 4) = sub_1D5B4AA6C;
      *(&v169 - 3) = 0;
      v167 = sub_1D6708AE4;
      v168 = v115;
      LOBYTE(v193) = 0;
      v140 = swift_allocObject();
      *(v140 + 16) = v191;
      *(v140 + 32) = v193;
      *(v140 + 40) = v94;
      *(v140 + 48) = v85;
      swift_retain_n();
      sub_1D5D355B8(&v212, &v193, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
      v141 = sub_1D72647CC();
      LOBYTE(v193) = 0;
      v142 = swift_allocObject();
      *(v142 + 16) = v141;
      *(v142 + 24) = v191;
      *(v142 + 40) = v193;
      v143 = __swift_project_boxed_opaque_existential_1(v192, *(v192 + 3));
      MEMORY[0x1EEE9AC00](v143, v144);
      MEMORY[0x1EEE9AC00](v145, v146);
      *(&v169 - 4) = sub_1D615B4A4;
      *(&v169 - 3) = &v169 - 6;
      v167 = sub_1D6708AE4;
      v168 = v140;
      v147 = v190;
      v149 = sub_1D5D2F7A4(v175, sub_1D615B49C, v148, sub_1D615B4A4, (&v169 - 6));
      v116 = v147;
      if (v147)
      {

        v195 = v201;
        v196 = v202;
        v197 = v203;
        v198 = v204;
        v193 = v199;
        v194 = v200;
        sub_1D601144C(&v193);
        v86 = v218;
        v139 = v175;
        goto LABEL_33;
      }

      v164 = v149;

      if (v164)
      {
        sub_1D6661204();
        sub_1D72647EC();
        v112 = v175;
        v117 = v181;

        v195 = v201;
        v196 = v202;
        v197 = v203;
        v198 = v204;
        v193 = v199;
        v194 = v200;
        sub_1D601144C(&v193);
        v85 = v180;
        v86 = v218;
      }

      else
      {

        v195 = v201;
        v196 = v202;
        v197 = v203;
        v198 = v204;
        v193 = v199;
        v194 = v200;
        sub_1D601144C(&v193);
        v86 = v218;
        v112 = v175;
        v85 = v180;
        v117 = v181;
      }
    }

    sub_1D5D2CFE8(v112, type metadata accessor for FormatVersionRequirement);
    v118 = v171;
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v119 = __swift_project_value_buffer(v117, qword_1EDFFCDE0);
    v183(v118, v119, v117);
    swift_storeEnumTagMultiPayload();
    v191 = xmmword_1D72BAA80;
    v199 = xmmword_1D72BAA80;
    LOBYTE(v200) = 0;
    LOBYTE(v193) = 0;
    v120 = swift_allocObject();
    v122 = v120;
    *(v120 + 16) = v191;
    *(v120 + 32) = v193;
    v123 = v184;
    *(v120 + 40) = v184;
    *(v120 + 48) = v85;
    if (v170 == 2)
    {
    }

    else
    {
      v190 = &v169;
      LOBYTE(v193) = v170 & 1;
      MEMORY[0x1EEE9AC00](v120, v121);
      v187 = &v169 - 6;
      *(&v169 - 4) = sub_1D5B4AA6C;
      *(&v169 - 3) = 0;
      v167 = sub_1D6708AE4;
      v168 = v122;
      LOBYTE(v205) = 0;
      v150 = swift_allocObject();
      v151 = v85;
      v152 = v118;
      v153 = v150;
      *(v150 + 16) = v191;
      *(v150 + 32) = v205;
      *(v150 + 40) = v123;
      *(v150 + 48) = v151;
      swift_retain_n();
      v154 = sub_1D72647CC();
      LOBYTE(v205) = 0;
      v155 = swift_allocObject();
      *(v155 + 16) = v154;
      *(v155 + 24) = v191;
      *(v155 + 40) = v205;
      v156 = __swift_project_boxed_opaque_existential_1(v192, *(v192 + 3));
      MEMORY[0x1EEE9AC00](v156, v157);
      MEMORY[0x1EEE9AC00](v158, v159);
      v160 = v187;
      *(&v169 - 4) = sub_1D615B4A4;
      *(&v169 - 3) = v160;
      v167 = sub_1D66A4FE0;
      v168 = v153;
      v162 = sub_1D5D2F7A4(v152, sub_1D615B49C, v161, sub_1D615B4A4, (&v169 - 6));
      if (v116)
      {
        sub_1D5D2CFE8(v152, type metadata accessor for FormatVersionRequirement);

        goto LABEL_5;
      }

      v165 = v162;

      if (v165)
      {
        v166 = v218;
        sub_1D72647EC();
        v118 = v171;
        v86 = v166;
      }

      else
      {
        v86 = v218;
        v118 = v171;
      }
    }

    sub_1D5D2CFE8(v118, type metadata accessor for FormatVersionRequirement);

LABEL_34:
    v64 = v86;
    return sub_1D5D2CFE8(v64, sub_1D66A4EB8);
  }

  sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);

LABEL_5:
  v64 = v218;
  return sub_1D5D2CFE8(v64, sub_1D66A4EB8);
}

unint64_t sub_1D652B5B0()
{
  v1 = *v0;
  v2 = 0x726F7463656C6573;
  v3 = 0xD000000000000018;
  if (v1 != 5)
  {
    v3 = 1885433183;
  }

  v4 = 0x615272656E726F63;
  if (v1 != 3)
  {
    v4 = 0x776F64616873;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6168706C61;
  if (v1 != 1)
  {
    v5 = 0x73726564726F62;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_1D652B688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66A5948(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D652B6C0(uint64_t a1)
{
  v2 = sub_1D66A4E10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D652B6FC(uint64_t a1)
{
  v2 = sub_1D66A4E10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatMotion.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v29 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (!v2)
  {
    v11 = a1[3];
    v30 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v11);
    v12 = sub_1D7264AFC();
    LOBYTE(v11) = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v13 = v35;
    v14 = v9;
    if (v11)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v10 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F5116138;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v13 + 8))(v14, v6);
          a1 = v30;
          goto LABEL_9;
        }
      }
    }

    sub_1D66A505C();
    v32 = 0uLL;
    sub_1D726431C();
    v24 = v31;
    if (v31 > 2u)
    {
      if (v31 != 3)
      {
        if (v31 != 4)
        {
          v28 = a2;
          v31 = xmmword_1D7279980;
          sub_1D66A50B0();
          sub_1D726431C();
          (*(v13 + 8))(v14, v6);
          v26 = v32;
          v27 = v33;
          v25 = v34;
          goto LABEL_24;
        }

        sub_1D66A5104(0, &qword_1EC886F28, type metadata accessor for FormatRange);
        v31 = xmmword_1D7279980;
        sub_1D66A5184(&qword_1EC886F30, &qword_1EC886F28, type metadata accessor for FormatRange);
        sub_1D726431C();
        (*(v13 + 8))(v14, v6);
        goto LABEL_18;
      }

      sub_1D66A5104(0, &qword_1EC886F38, type metadata accessor for FormatTranslate);
      v31 = xmmword_1D7279980;
      sub_1D66A5184(&qword_1EC886F40, &qword_1EC886F38, type metadata accessor for FormatTranslate);
      sub_1D726431C();
      (*(v13 + 8))(v14, v6);
    }

    else
    {
      if (!v31)
      {
        v28 = a2;
        sub_1D5C34074(0, &qword_1EC886F48, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for FormatValue);
        v32 = xmmword_1D7279980;
        sub_1D66A51C8();
        sub_1D726431C();
        (*(v13 + 8))(v14, v6);
        v25 = 0;
        *&v26 = v31;
        v27 = 0uLL;
        goto LABEL_24;
      }

      if (v31 == 1)
      {
        sub_1D66A5104(0, &qword_1EC886F28, type metadata accessor for FormatRange);
        v31 = xmmword_1D7279980;
        sub_1D66A5184(&qword_1EC886F30, &qword_1EC886F28, type metadata accessor for FormatRange);
        sub_1D726431C();
        (*(v35 + 8))(v14, v6);
LABEL_18:
        v25 = 0;
        v26 = v32;
        v27 = 0uLL;
        v28 = a2;
LABEL_24:
        v22 = v30;
        *v28 = v26;
        *(v28 + 16) = v27;
        *(v28 + 32) = v25;
        *(v28 + 40) = v24;
        return __swift_destroy_boxed_opaque_existential_1(v22);
      }

      sub_1D66A5104(0, &qword_1EC886F38, type metadata accessor for FormatTranslate);
      v31 = xmmword_1D7279980;
      sub_1D66A5184(&qword_1EC886F40, &qword_1EC886F38, type metadata accessor for FormatTranslate);
      sub_1D726431C();
      (*(v35 + 8))(v14, v6);
    }

    v25 = 0;
    v26 = v32;
    v27 = v33;
    v28 = a2;
    goto LABEL_24;
  }

LABEL_9:
  sub_1D61E4FBC(a1, v10);
  swift_willThrow();

  v22 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t FormatMotion.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v93 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v92 = &v88 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v91 = &v88 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v90 = &v88 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v89 = &v88 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v88 = &v88 - v20;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v1;
  v25 = *(v1 + 8);
  v28 = *(v1 + 16);
  v27 = *(v1 + 24);
  v29 = *(v1 + 32);
  v30 = *(v1 + 40);
  v32 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  v33 = sub_1D5C30408();
  v98 = v24;
  sub_1D5D2EE70(&type metadata for FormatMotion, &type metadata for FormatCodingKeys, v34, v32, &type metadata for FormatMotion, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v31, v24, v33, &off_1F51F6C78);
  if (v30 > 2)
  {
    if (v30 == 3)
    {
      v61 = v26;
      v62 = v25;
      v63 = v28;
      v64 = v27;
      sub_1D5B58478();
      v66 = *(v65 + 48);
      v39 = v91;
      v67 = &v91[*(v65 + 64)];
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v68 = sub_1D725BD1C();
      v69 = __swift_project_value_buffer(v68, qword_1EDFFCD30);
      v70 = *(*(v68 - 8) + 16);
      v70(v39, v69, v68);
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v71 = __swift_project_value_buffer(v68, qword_1EDFFCE68);
      v70(v39 + v66, v71, v68);
      type metadata accessor for FormatVersionRequirement.Value(0);
      *v67 = 0;
      *(v67 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v72 = 3;
      goto LABEL_32;
    }

    if (v30 == 4)
    {
      v35 = v26;
      v36 = v25;
      sub_1D5B58478();
      v47 = *(v46 + 48);
      v39 = v92;
      v48 = &v92[*(v46 + 64)];
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v49 = sub_1D725BD1C();
      v50 = __swift_project_value_buffer(v49, qword_1EDFFCD30);
      v51 = *(*(v49 - 8) + 16);
      v51(v39, v50, v49);
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v52 = __swift_project_value_buffer(v49, qword_1EDFFCE68);
      v51(v39 + v47, v52, v49);
      type metadata accessor for FormatVersionRequirement.Value(0);
      *v48 = 0;
      *(v48 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v45 = 4;
      goto LABEL_16;
    }

    *&v94 = v26;
    *(&v94 + 1) = v25;
    v95 = v28;
    v96 = v27;
    v97 = v29;
    sub_1D5B58478();
    v81 = *(v80 + 48);
    v39 = v93;
    v82 = &v93[*(v80 + 64)];
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v83 = sub_1D725BD1C();
    v84 = __swift_project_value_buffer(v83, qword_1EDFFCD30);
    v85 = *(*(v83 - 8) + 16);
    v85(v39, v84, v83);
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v86 = __swift_project_value_buffer(v83, qword_1EDFFCE68);
    v85(v39 + v81, v86, v83);
    type metadata accessor for FormatVersionRequirement.Value(0);
    *v82 = 0;
    *(v82 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    v53 = v98;
    sub_1D63BC7A4(5, &v94, v39);
  }

  else
  {
    if (v30)
    {
      if (v30 == 1)
      {
        v35 = v26;
        v36 = v25;
        sub_1D5B58478();
        v38 = *(v37 + 48);
        v39 = v89;
        v40 = &v89[*(v37 + 64)];
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v41 = sub_1D725BD1C();
        v42 = __swift_project_value_buffer(v41, qword_1EDFFCD30);
        v43 = *(*(v41 - 8) + 16);
        v43(v39, v42, v41);
        if (qword_1EDF31F48 != -1)
        {
          swift_once();
        }

        v44 = __swift_project_value_buffer(v41, qword_1EDFFCE68);
        v43(v39 + v38, v44, v41);
        type metadata accessor for FormatVersionRequirement.Value(0);
        *v40 = 0;
        *(v40 + 1) = 0;
        swift_storeEnumTagMultiPayload();
        v45 = 1;
LABEL_16:
        v53 = v98;
        sub_1D63BC3C8(v45, v39, v35, v36);
        goto LABEL_38;
      }

      v61 = v26;
      v62 = v25;
      v63 = v28;
      v64 = v27;
      sub_1D5B58478();
      v74 = *(v73 + 48);
      v39 = v90;
      v75 = &v90[*(v73 + 64)];
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v76 = sub_1D725BD1C();
      v77 = __swift_project_value_buffer(v76, qword_1EDFFCD30);
      v78 = *(*(v76 - 8) + 16);
      v78(v39, v77, v76);
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v79 = __swift_project_value_buffer(v76, qword_1EDFFCE68);
      v78(v39 + v74, v79, v76);
      type metadata accessor for FormatVersionRequirement.Value(0);
      *v75 = 0;
      *(v75 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v72 = 2;
LABEL_32:
      v53 = v98;
      sub_1D63BC5B4(v72, v39, v61, v62, v63, v64);
      goto LABEL_38;
    }

    sub_1D5B58478();
    v55 = *(v54 + 48);
    v39 = v88;
    v56 = &v88[*(v54 + 64)];
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v57 = sub_1D725BD1C();
    v58 = __swift_project_value_buffer(v57, qword_1EDFFCD30);
    v59 = *(*(v57 - 8) + 16);
    v59(v39, v58, v57);
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v60 = __swift_project_value_buffer(v57, qword_1EDFFCE68);
    v59(v39 + v55, v60, v57);
    type metadata accessor for FormatVersionRequirement.Value(0);
    *v56 = 0;
    *(v56 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    v53 = v98;
    sub_1D63BC200(0, v39, v26);
  }

LABEL_38:
  sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v53, sub_1D5D30DC4);
}

uint64_t sub_1D652C7D8()
{
  sub_1D72621EC();
}

uint64_t sub_1D652C8F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6663628();
  *a1 = result;
  return result;
}

void sub_1D652C920(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656C616373;
  v5 = 0xE900000000000065;
  v6 = 0x74616C736E617274;
  v7 = 0xEE0065676E615265;
  v8 = 0x74616C736E617274;
  if (v2 != 4)
  {
    v8 = 0xD000000000000012;
    v7 = 0x80000001D73B8CD0;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006567;
  v10 = 0x6E6152656C616373;
  if (v2 != 1)
  {
    v10 = 0x617254656C616373;
    v9 = 0xEE006574616C736ELL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t FormatMotion.TranslateWithScale.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  sub_1D66A524C();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66A52E0();
  sub_1D5B58B84(&qword_1EC886F80, sub_1D66A52E0);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v14 = v28;
  if (v13)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v17 - 2);
      v18 = *(v17 - 1);

      v20 = sub_1D6627E68(0x74616C736E617274, 0xE900000000000065, 0x656C616373, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v11 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D66A5104(0, &qword_1EC886F38, type metadata accessor for FormatTranslate);
  sub_1D66A5184(&qword_1EC886F40, &qword_1EC886F38, type metadata accessor for FormatTranslate);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  sub_1D726431C();
  v26 = v33;
  v27 = v32;
  v32 = xmmword_1D728CF30;
  LOBYTE(v33) = 0;
  sub_1D72642DC();
  v24 = v23;
  (*(v11 + 8))(v10, v6);
  v25 = v26;
  *v14 = v27;
  *(v14 + 16) = v25;
  *(v14 + 32) = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatMotion.TranslateWithScale.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v86 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v75 - v8;
  sub_1D66A5460();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v89 = *(v1 + 16);
  v90 = v15;
  v16 = *(v1 + 32);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D66A52E0();
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EC886F80, sub_1D66A52E0);
  sub_1D5D2EE70(&type metadata for FormatMotion.TranslateWithScale, v20, v22, v17, &type metadata for FormatMotion.TranslateWithScale, v20, &type metadata for FormatVersions.JazzkonC, v18, v14, v21, &off_1F51F6C78);
  sub_1D5B58478();
  v24 = *(v23 + 48);
  v85 = v23;
  v25 = &v9[*(v23 + 64)];
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCD30);
  v28 = *(v26 - 8);
  v29 = *(v28 + 16);
  v30 = v28 + 16;
  v81 = v27;
  v29(v9);
  if (qword_1EDF31F48 != -1)
  {
    swift_once();
  }

  v80 = __swift_project_value_buffer(v26, qword_1EDFFCE68);
  v29(&v9[v24]);
  v31 = type metadata accessor for FormatVersionRequirement.Value(0);
  *v25 = 0;
  *(v25 + 1) = 0;
  v79 = v31;
  swift_storeEnumTagMultiPayload();
  v96 = v90;
  v97 = v89;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v32 = &v14[*(v11 + 44)];
  *&v89 = v9;
  v33 = *v32;
  v34 = *(v32 + 1);
  v92 = 0;
  v35 = swift_allocObject();
  v78 = v26;
  *&v90 = &v75;
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v92;
  *(v35 + 40) = v33;
  *(v35 + 48) = v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v83 = v29;
  *(&v75 - 4) = sub_1D5B4AA6C;
  *(&v75 - 3) = 0;
  v73 = sub_1D6708AE8;
  v74 = v37;
  v92 = 0;
  v38 = swift_allocObject();
  v82 = v30;
  v39 = v14;
  v40 = v38;
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = v92;
  v84 = v33;
  *(v38 + 40) = v33;
  *(v38 + 48) = v34;
  sub_1D66A54F4();
  v42 = v41;
  v43 = sub_1D5B58B84(&qword_1EC886F98, sub_1D66A54F4);
  swift_retain_n();
  v87 = v43;
  v88 = v42;
  v44 = sub_1D72647CC();
  v92 = 0;
  v45 = swift_allocObject();
  *(v45 + 24) = 0;
  *(v45 + 32) = 0;
  *(v45 + 16) = v44;
  *(v45 + 40) = v92;
  v46 = (v39 + *(v11 + 36));
  v47 = __swift_project_boxed_opaque_existential_1(v46, v46[3]);
  MEMORY[0x1EEE9AC00](v47, v48);
  MEMORY[0x1EEE9AC00](v49, v50);
  *(&v75 - 4) = sub_1D615B4A4;
  *(&v75 - 3) = (&v75 - 6);
  v51 = v89;
  v73 = sub_1D66A5588;
  v74 = v40;
  v52 = v91;
  sub_1D5D2BC70(v89, sub_1D615B49C, v53, sub_1D615B4A4, (&v75 - 6));
  if (v52)
  {
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v76 = v46;
    v77 = v34;

    sub_1D66A5104(0, &qword_1EC886F38, type metadata accessor for FormatTranslate);
    sub_1D66A5184(&qword_1EC886FA0, &qword_1EC886F38, type metadata accessor for FormatTranslate);
    sub_1D72647EC();
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);

    v55 = v86;
    v56 = *(v85 + 48);
    v57 = &v86[*(v85 + 64)];
    v58 = v78;
    v59 = v83;
    (v83)(v86, v81, v78);
    v59(v55 + v56, v80, v58);
    *v57 = 0;
    *(v57 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    v93 = v16;
    v91 = xmmword_1D728CF30;
    v96 = xmmword_1D728CF30;
    LOBYTE(v97) = 0;
    v92 = 0;
    v60 = swift_allocObject();
    *&v90 = &v75;
    *(v60 + 16) = v91;
    *(v60 + 32) = v92;
    v61 = v84;
    v62 = v77;
    *(v60 + 40) = v84;
    *(v60 + 48) = v62;
    MEMORY[0x1EEE9AC00](v60, v63);
    *(&v75 - 4) = sub_1D5B4AA6C;
    *(&v75 - 3) = 0;
    v73 = sub_1D6708AE8;
    v74 = v64;
    v92 = 0;
    v65 = swift_allocObject();
    *(v65 + 16) = v91;
    *(v65 + 32) = v92;
    *(v65 + 40) = v61;
    *(v65 + 48) = v62;
    swift_retain_n();
    v66 = sub_1D72647CC();
    v92 = 0;
    v67 = swift_allocObject();
    *(v67 + 16) = v66;
    *(v67 + 24) = v91;
    *(v67 + 40) = v92;
    v68 = __swift_project_boxed_opaque_existential_1(v76, v76[3]);
    MEMORY[0x1EEE9AC00](v68, v69);
    MEMORY[0x1EEE9AC00](v70, v71);
    *(&v75 - 4) = sub_1D615B4A4;
    *(&v75 - 3) = (&v75 - 6);
    v73 = sub_1D6708AE8;
    v74 = v65;
    sub_1D5D2BC70(v55, sub_1D615B49C, v72, sub_1D615B4A4, (&v75 - 6));

    sub_1D72647EC();
    sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v39, sub_1D66A5460);
}

uint64_t sub_1D652D7BC()
{
  v1 = 0x656C616373;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74616C736E617274;
  }
}

uint64_t sub_1D652D810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66A5B94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D652D848(uint64_t a1)
{
  v2 = sub_1D66A53B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D652D884(uint64_t a1)
{
  v2 = sub_1D66A53B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatNode.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v348 = &v312 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v347 = &v312 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v346 = &v312 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v349 = &v312 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v345 = &v312 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v344 = &v312 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v343 = &v312 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v342 = &v312 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v341 = &v312 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v339 = &v312 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v337 = &v312 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v336 = &v312 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v340 = &v312 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v335 = &v312 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v334 = &v312 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v333 = &v312 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v332 = &v312 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v331 = &v312 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v330 = &v312 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v329 = &v312 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v328 = &v312 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v327 = &v312 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v326 = &v312 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v325 = &v312 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v324 = &v312 - v77;
  MEMORY[0x1EEE9AC00](v78, v79);
  v323 = &v312 - v80;
  MEMORY[0x1EEE9AC00](v81, v82);
  v322 = &v312 - v83;
  MEMORY[0x1EEE9AC00](v84, v85);
  v321 = &v312 - v86;
  MEMORY[0x1EEE9AC00](v87, v88);
  v320 = &v312 - v89;
  MEMORY[0x1EEE9AC00](v90, v91);
  v319 = &v312 - v92;
  MEMORY[0x1EEE9AC00](v93, v94);
  v318 = &v312 - v95;
  MEMORY[0x1EEE9AC00](v96, v97);
  v317 = &v312 - v98;
  MEMORY[0x1EEE9AC00](v99, v100);
  v316 = &v312 - v101;
  MEMORY[0x1EEE9AC00](v102, v103);
  v315 = &v312 - v104;
  MEMORY[0x1EEE9AC00](v105, v106);
  v314 = &v312 - v107;
  MEMORY[0x1EEE9AC00](v108, v109);
  v313 = &v312 - v110;
  MEMORY[0x1EEE9AC00](v111, v112);
  v312 = &v312 - v113;
  MEMORY[0x1EEE9AC00](v114, v115);
  v117 = &v312 - v116;
  MEMORY[0x1EEE9AC00](v118, v119);
  v121 = &v312 - v120;
  MEMORY[0x1EEE9AC00](v122, v123);
  v125 = &v312 - v124;
  MEMORY[0x1EEE9AC00](v126, v127);
  v338 = &v312 - v128;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v129 - 8, v130);
  v132 = &v312 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = *v1;
  v134 = a1;
  v135 = a1[3];
  v136 = v134[4];
  __swift_project_boxed_opaque_existential_1(v134, v135);
  v137 = sub_1D5C30408();
  v353 = v132;
  sub_1D5D2EE70(&type metadata for FormatNode, &type metadata for FormatCodingKeys, v138, v135, &type metadata for FormatNode, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v136, v132, v137, &off_1F51F6C78);
  switch((v133 >> 58) & 0x3C | (v133 >> 1) & 3)
  {
    case 1uLL:
      v226 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v227 = qword_1EDF31EB0;

      if (v227 != -1)
      {
        swift_once();
      }

      v228 = sub_1D725BD1C();
      v229 = __swift_project_value_buffer(v228, qword_1EDFFCD30);
      (*(*(v228 - 8) + 16))(v125, v229, v228);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63BF550(1, v226, v125);

      v117 = v125;
      goto LABEL_128;
    case 2uLL:
      v210 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v211 = qword_1EDF31EB0;

      if (v211 != -1)
      {
        swift_once();
      }

      v212 = sub_1D725BD1C();
      v213 = __swift_project_value_buffer(v212, qword_1EDFFCD30);
      (*(*(v212 - 8) + 16))(v121, v213, v212);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63BF71C(2, v210, v121);

      v117 = v121;
      goto LABEL_128;
    case 3uLL:
      v218 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v219 = qword_1EDF31EB0;

      if (v219 != -1)
      {
        swift_once();
      }

      v220 = sub_1D725BD1C();
      v221 = __swift_project_value_buffer(v220, qword_1EDFFCD30);
      (*(*(v220 - 8) + 16))(v117, v221, v220);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63BF8E8(3, v218, v117);
      goto LABEL_127;
    case 4uLL:
      v186 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v187 = qword_1EDF31EB0;

      if (v187 != -1)
      {
        swift_once();
      }

      v188 = sub_1D725BD1C();
      v189 = __swift_project_value_buffer(v188, qword_1EDFFCD30);
      v117 = v312;
      (*(*(v188 - 8) + 16))(v312, v189, v188);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63BFAB4(4, v186, v117);
      goto LABEL_127;
    case 5uLL:
      v242 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v243 = qword_1EDF31EB0;

      if (v243 != -1)
      {
        swift_once();
      }

      v244 = sub_1D725BD1C();
      v245 = __swift_project_value_buffer(v244, qword_1EDFFCD30);
      v117 = v313;
      (*(*(v244 - 8) + 16))(v313, v245, v244);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63BFC80(5, v242, v117);
      goto LABEL_127;
    case 6uLL:
      v254 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v255 = qword_1EDF31EB0;

      if (v255 != -1)
      {
        swift_once();
      }

      v256 = sub_1D725BD1C();
      v257 = __swift_project_value_buffer(v256, qword_1EDFFCD30);
      v117 = v314;
      (*(*(v256 - 8) + 16))(v314, v257, v256);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63BFE4C(6, v254, v117);
      goto LABEL_127;
    case 7uLL:
      v222 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v223 = qword_1EDF31EB0;

      if (v223 != -1)
      {
        swift_once();
      }

      v224 = sub_1D725BD1C();
      v225 = __swift_project_value_buffer(v224, qword_1EDFFCD30);
      v117 = v315;
      (*(*(v224 - 8) + 16))(v315, v225, v224);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C0018(7, v222, v117);
      goto LABEL_127;
    case 8uLL:
      v266 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v267 = qword_1EDF31EB0;

      if (v267 != -1)
      {
        swift_once();
      }

      v268 = sub_1D725BD1C();
      v269 = __swift_project_value_buffer(v268, qword_1EDFFCD30);
      v117 = v316;
      (*(*(v268 - 8) + 16))(v316, v269, v268);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C01E4(8, v266, v117);
      goto LABEL_127;
    case 9uLL:
      v198 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v199 = qword_1EDF31EB0;

      if (v199 != -1)
      {
        swift_once();
      }

      v200 = sub_1D725BD1C();
      v201 = __swift_project_value_buffer(v200, qword_1EDFFCD30);
      v117 = v317;
      (*(*(v200 - 8) + 16))(v317, v201, v200);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C03B0(9, v198, v117);
      goto LABEL_127;
    case 0xAuLL:
      v262 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v263 = qword_1EDF31EB0;

      if (v263 != -1)
      {
        swift_once();
      }

      v264 = sub_1D725BD1C();
      v265 = __swift_project_value_buffer(v264, qword_1EDFFCD30);
      v117 = v318;
      (*(*(v264 - 8) + 16))(v318, v265, v264);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C057C(10, v262, v117);
      goto LABEL_127;
    case 0xBuLL:
      v182 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v183 = qword_1EDF31EB0;

      if (v183 != -1)
      {
        swift_once();
      }

      v184 = sub_1D725BD1C();
      v185 = __swift_project_value_buffer(v184, qword_1EDFFCD30);
      v117 = v319;
      (*(*(v184 - 8) + 16))(v319, v185, v184);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C0748(11, v182, v117);
      goto LABEL_127;
    case 0xCuLL:
      v194 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v195 = qword_1EDF31EB0;

      if (v195 != -1)
      {
        swift_once();
      }

      v196 = sub_1D725BD1C();
      v197 = __swift_project_value_buffer(v196, qword_1EDFFCD30);
      v117 = v320;
      (*(*(v196 - 8) + 16))(v320, v197, v196);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C0914(12, v194, v117);
      goto LABEL_127;
    case 0xDuLL:
      v250 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v251 = qword_1EDF31EB0;

      if (v251 != -1)
      {
        swift_once();
      }

      v252 = sub_1D725BD1C();
      v253 = __swift_project_value_buffer(v252, qword_1EDFFCD30);
      v117 = v321;
      (*(*(v252 - 8) + 16))(v321, v253, v252);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C0AE0(13, v250, v117);
      goto LABEL_127;
    case 0xEuLL:
      v174 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v175 = qword_1EDF31EB0;

      if (v175 != -1)
      {
        swift_once();
      }

      v176 = sub_1D725BD1C();
      v177 = __swift_project_value_buffer(v176, qword_1EDFFCD30);
      v117 = v322;
      (*(*(v176 - 8) + 16))(v322, v177, v176);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C0CAC(14, v174, v117);
      goto LABEL_127;
    case 0xFuLL:
      v214 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v215 = qword_1EDF31EE8;

      if (v215 != -1)
      {
        swift_once();
      }

      v216 = sub_1D725BD1C();
      v217 = __swift_project_value_buffer(v216, qword_1EDFFCD98);
      v117 = v323;
      (*(*(v216 - 8) + 16))(v323, v217, v216);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C0E78(15, v214, v117);
      goto LABEL_127;
    case 0x10uLL:
      v170 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v171 = qword_1EDF31EB0;

      if (v171 != -1)
      {
        swift_once();
      }

      v172 = sub_1D725BD1C();
      v173 = __swift_project_value_buffer(v172, qword_1EDFFCD30);
      v117 = v324;
      (*(*(v172 - 8) + 16))(v324, v173, v172);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C1044(16, v170, v117);
      goto LABEL_127;
    case 0x11uLL:
      v234 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v235 = qword_1EDF31EB0;

      if (v235 != -1)
      {
        swift_once();
      }

      v236 = sub_1D725BD1C();
      v237 = __swift_project_value_buffer(v236, qword_1EDFFCD30);
      v117 = v325;
      (*(*(v236 - 8) + 16))(v325, v237, v236);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C1210(17, v234, v117);
      goto LABEL_127;
    case 0x12uLL:
      v258 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v259 = qword_1EDF31EA8;

      if (v259 != -1)
      {
        swift_once();
      }

      v260 = sub_1D725BD1C();
      v261 = __swift_project_value_buffer(v260, qword_1EDFFCD18);
      v117 = v326;
      (*(*(v260 - 8) + 16))(v326, v261, v260);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C13DC(18, v258, v117);
      goto LABEL_127;
    case 0x13uLL:
      v286 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v287 = qword_1EDF31EA8;

      if (v287 != -1)
      {
        swift_once();
      }

      v288 = sub_1D725BD1C();
      v289 = __swift_project_value_buffer(v288, qword_1EDFFCD18);
      v117 = v327;
      (*(*(v288 - 8) + 16))(v327, v289, v288);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C15A8(19, v286, v117);
      goto LABEL_127;
    case 0x14uLL:
      v238 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v239 = qword_1EDF31EA8;

      if (v239 != -1)
      {
        swift_once();
      }

      v240 = sub_1D725BD1C();
      v241 = __swift_project_value_buffer(v240, qword_1EDFFCD18);
      v117 = v328;
      (*(*(v240 - 8) + 16))(v328, v241, v240);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C1774(20, v238, v117);
      goto LABEL_127;
    case 0x15uLL:
      v246 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v247 = qword_1EDF31EA8;

      if (v247 != -1)
      {
        swift_once();
      }

      v248 = sub_1D725BD1C();
      v249 = __swift_project_value_buffer(v248, qword_1EDFFCD18);
      v117 = v329;
      (*(*(v248 - 8) + 16))(v329, v249, v248);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C1940(21, v246, v117);
      goto LABEL_127;
    case 0x16uLL:
      v278 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v279 = qword_1EDF31F10;

      if (v279 != -1)
      {
        swift_once();
      }

      v280 = sub_1D725BD1C();
      v281 = __swift_project_value_buffer(v280, qword_1EDFFCDF8);
      v117 = v330;
      (*(*(v280 - 8) + 16))(v330, v281, v280);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C1B0C(22, v278, v117);
      goto LABEL_127;
    case 0x17uLL:
      v290 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v291 = qword_1EDF31F10;

      if (v291 != -1)
      {
        swift_once();
      }

      v292 = sub_1D725BD1C();
      v293 = __swift_project_value_buffer(v292, qword_1EDFFCDF8);
      v117 = v331;
      (*(*(v292 - 8) + 16))(v331, v293, v292);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C1CD8(23, v290, v117);
      goto LABEL_127;
    case 0x18uLL:
      v206 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v207 = qword_1EDF31EF8;

      if (v207 != -1)
      {
        swift_once();
      }

      v208 = sub_1D725BD1C();
      v209 = __swift_project_value_buffer(v208, qword_1EDFFCDC8);
      v117 = v332;
      (*(*(v208 - 8) + 16))(v332, v209, v208);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C1EA4(24, v206, v117);
      goto LABEL_127;
    case 0x19uLL:
      v202 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v203 = qword_1EDF31EF0;

      if (v203 != -1)
      {
        swift_once();
      }

      v204 = sub_1D725BD1C();
      v205 = __swift_project_value_buffer(v204, qword_1EDFFCDB0);
      v117 = v333;
      (*(*(v204 - 8) + 16))(v333, v205, v204);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C2070(25, v202, v117);
      goto LABEL_127;
    case 0x1AuLL:
      v307 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v308 = qword_1EDF31EE8;

      if (v308 != -1)
      {
        swift_once();
      }

      v309 = sub_1D725BD1C();
      v310 = __swift_project_value_buffer(v309, qword_1EDFFCD98);
      v117 = v334;
      (*(*(v309 - 8) + 16))(v334, v310, v309);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C223C(26, v307, v117);
      goto LABEL_127;
    case 0x1BuLL:
      v162 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v163 = qword_1EDF31ED0;

      if (v163 != -1)
      {
        swift_once();
      }

      v164 = sub_1D725BD1C();
      v165 = __swift_project_value_buffer(v164, qword_1EDFFCD50);
      v117 = v335;
      (*(*(v164 - 8) + 16))(v335, v165, v164);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C2408(27, v162, v117);
      goto LABEL_127;
    case 0x1CuLL:
      v294 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x70);
      v351[5] = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x60);
      v351[6] = v294;
      v351[7] = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x80);
      v352 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x90);
      v295 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v351[1] = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v351[2] = v295;
      v296 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x50);
      v351[3] = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v351[4] = v296;
      v351[0] = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      sub_1D62B60B4(v351, &v350);
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v297 = sub_1D725BD1C();
      v298 = __swift_project_value_buffer(v297, qword_1EDFFCD50);
      v117 = v340;
      (*(*(v297 - 8) + 16))(v340, v298, v297);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C25D4(28, v351, v117);
      sub_1D62B6110(v351);
      goto LABEL_128;
    case 0x1DuLL:
      v299 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v300 = qword_1EDF31ED0;

      if (v300 != -1)
      {
        swift_once();
      }

      v301 = sub_1D725BD1C();
      v302 = __swift_project_value_buffer(v301, qword_1EDFFCD50);
      v117 = v336;
      (*(*(v301 - 8) + 16))(v336, v302, v301);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C278C(29, v299, v117);
      goto LABEL_127;
    case 0x1EuLL:
      v270 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v271 = qword_1EDF31ED0;

      if (v271 != -1)
      {
        swift_once();
      }

      v272 = sub_1D725BD1C();
      v273 = __swift_project_value_buffer(v272, qword_1EDFFCD50);
      v117 = v337;
      (*(*(v272 - 8) + 16))(v337, v273, v272);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C2958(30, v270, v117);
      goto LABEL_127;
    case 0x1FuLL:
      v230 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v231 = qword_1EDF31E98;

      if (v231 != -1)
      {
        swift_once();
      }

      v232 = sub_1D725BD1C();
      v233 = __swift_project_value_buffer(v232, qword_1EDFFCD00);
      v117 = v339;
      (*(*(v232 - 8) + 16))(v339, v233, v232);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C2B24(31, v230, v117);
      goto LABEL_127;
    case 0x20uLL:
      v274 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v275 = qword_1EDF31E98;

      if (v275 != -1)
      {
        swift_once();
      }

      v276 = sub_1D725BD1C();
      v277 = __swift_project_value_buffer(v276, qword_1EDFFCD00);
      v117 = v341;
      (*(*(v276 - 8) + 16))(v341, v277, v276);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C2CF0(32, v274, v117);
      goto LABEL_127;
    case 0x21uLL:
      v178 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v179 = qword_1EDF31F08;

      if (v179 != -1)
      {
        swift_once();
      }

      v180 = sub_1D725BD1C();
      v181 = __swift_project_value_buffer(v180, qword_1EDFFCDE0);
      v117 = v342;
      (*(*(v180 - 8) + 16))(v342, v181, v180);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C2EBC(33, v178, v117);
      goto LABEL_127;
    case 0x22uLL:
      v166 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v167 = qword_1EDF31ED8;

      if (v167 != -1)
      {
        swift_once();
      }

      v168 = sub_1D725BD1C();
      v169 = __swift_project_value_buffer(v168, qword_1EDFFCD68);
      v117 = v343;
      (*(*(v168 - 8) + 16))(v343, v169, v168);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C3088(34, v166, v117);
      goto LABEL_127;
    case 0x23uLL:
      v154 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v155 = qword_1EDF31ED8;

      if (v155 != -1)
      {
        swift_once();
      }

      v156 = sub_1D725BD1C();
      v157 = __swift_project_value_buffer(v156, qword_1EDFFCD68);
      v117 = v344;
      (*(*(v156 - 8) + 16))(v344, v157, v156);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C3254(35, v154, v117);
      goto LABEL_127;
    case 0x24uLL:
      v158 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v159 = qword_1EDF31ED8;

      if (v159 != -1)
      {
        swift_once();
      }

      v160 = sub_1D725BD1C();
      v161 = __swift_project_value_buffer(v160, qword_1EDFFCD68);
      v117 = v345;
      (*(*(v160 - 8) + 16))(v345, v161, v160);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C3420(36, v158, v117);
      goto LABEL_127;
    case 0x25uLL:
      v144 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      sub_1D5B58478();
      v146 = *(v145 + 48);
      v147 = v349;
      v148 = &v349[*(v145 + 64)];
      v149 = qword_1EDF31E80;

      if (v149 != -1)
      {
        swift_once();
      }

      v150 = sub_1D725BD1C();
      v151 = __swift_project_value_buffer(v150, qword_1EDFFCCA8);
      v152 = *(*(v150 - 8) + 16);
      v152(v147, v151, v150);
      v143 = v353;
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v153 = __swift_project_value_buffer(v150, qword_1EDFFCE80);
      v152(v147 + v146, v153, v150);
      type metadata accessor for FormatVersionRequirement.Value(0);
      *v148 = 0;
      *(v148 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      sub_1D63C35EC(37, v144, v147);

      v117 = v147;
      goto LABEL_128;
    case 0x26uLL:
      v303 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v304 = qword_1EDF31F58[0];

      if (v304 != -1)
      {
        swift_once();
      }

      v305 = sub_1D725BD1C();
      v306 = __swift_project_value_buffer(v305, qword_1EDFFCE98);
      v117 = v346;
      (*(*(v305 - 8) + 16))(v346, v306, v305);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C37B8(38, v303, v117);
      goto LABEL_127;
    case 0x27uLL:
      v282 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v283 = qword_1EDF31F50;

      if (v283 != -1)
      {
        swift_once();
      }

      v284 = sub_1D725BD1C();
      v285 = __swift_project_value_buffer(v284, qword_1EDFFCE80);
      v117 = v347;
      (*(*(v284 - 8) + 16))(v347, v285, v284);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C3984(39, v282, v117);
      goto LABEL_127;
    case 0x28uLL:
      v190 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v191 = qword_1EDF31F38;

      if (v191 != -1)
      {
        swift_once();
      }

      v192 = sub_1D725BD1C();
      v193 = __swift_project_value_buffer(v192, qword_1EDFFCE38);
      v117 = v348;
      (*(*(v192 - 8) + 16))(v348, v193, v192);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C3B50(40, v190, v117);
      goto LABEL_127;
    default:
      v139 = *(v133 + 16);
      v140 = qword_1EDF31EB0;

      if (v140 != -1)
      {
        swift_once();
      }

      v141 = sub_1D725BD1C();
      v142 = __swift_project_value_buffer(v141, qword_1EDFFCD30);
      v117 = v338;
      (*(*(v141 - 8) + 16))(v338, v142, v141);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63BF384(0, v139, v117);
LABEL_127:

LABEL_128:
      sub_1D5D2CFE8(v117, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v143, sub_1D5D30DC4);
  }
}

uint64_t sub_1D6530188(char a1)
{
  result = 2020557416;
  switch(a1)
  {
    case 1:
      result = 2020557430;
      break;
    case 2:
      result = 0x79616C7265764F68;
      break;
    case 3:
      result = 0x79616C7265764F76;
      break;
    case 4:
      result = 2003134838;
      break;
    case 5:
      result = 1954047348;
      break;
    case 6:
      result = 0x6567616D69;
      break;
    case 7:
      result = 1835365481;
      break;
    case 8:
      result = 0x6563617073;
      break;
    case 9:
      result = 0x74657070696E73;
      break;
    case 10:
      result = 0x656D656C70707573;
      break;
    case 11:
      result = 0x686374697773;
      break;
    case 12:
      result = 1953459315;
      break;
    case 13:
      result = 0x6269737365636361;
      break;
    case 14:
      result = 0x6E6F74747562;
      break;
    case 15:
      result = 0x70756F7267;
      break;
    case 16:
      result = 0x6465626D45626577;
      break;
    case 17:
      result = 0x656D617266;
      break;
    case 18:
      result = 0x746165706572;
      break;
    case 19:
      result = 0x736E6F6974706FLL;
      break;
    case 20:
      result = 0x6569566574617473;
      break;
    case 21:
      result = 0x6D6F74737563;
      break;
    case 22:
      result = 0x746E697270;
      break;
    case 23:
      result = 0x63697274654D6461;
      break;
    case 24:
      result = 1633905005;
      break;
    case 25:
      result = 0x4D6465726579616CLL;
      break;
    case 26:
      result = 0x6F65646976;
      break;
    case 27:
      result = 0x766F436575737369;
      break;
    case 28:
      result = 0x6572616873;
      break;
    case 29:
      result = 0x6B636F6C62;
      break;
    case 30:
      result = 0x797274656D6F6567;
      break;
    case 31:
      result = 0x616C506F65646976;
      break;
    case 32:
      result = 0x73736572676F7270;
      break;
    case 33:
      result = 0x646E69426D657469;
      break;
    case 34:
      result = 0x7261696C69787561;
      break;
    case 35:
      result = 0x7465736572;
      break;
    case 36:
      result = 0x656C626169726176;
      break;
    case 37:
      result = 0x696F706B61657262;
      break;
    case 38:
      result = 0x6D45656C7A7A7570;
      break;
    case 39:
      result = 0x65726F736E6F7073;
      break;
    case 40:
      result = 0x786F4278656C66;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D65305CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6530188(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D6530654()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6530724()
{
  sub_1D72621EC();
}

uint64_t sub_1D65307E0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D65308AC(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x746E656D656C65;
  v4 = 0xE600000000000000;
  v5 = 0x6E6564646968;
  if (*v1 != 2)
  {
    v5 = 0x74756F6B61657262;
    v4 = 0xEF746E656D656C45;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x80000001D73BB7B0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1D6530988()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x6E6F697469736F70;
  }
}

uint64_t sub_1D65309BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

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

uint64_t sub_1D6530AA8(uint64_t a1)
{
  v2 = sub_1D6670184();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6530AE4(uint64_t a1)
{
  v2 = sub_1D6670184();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatNotExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66A5D04();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D5C79054();
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EDF254B8, sub_1D5C79054);
  sub_1D5D2EE70(&type metadata for FormatNotExpression, v16, v18, v13, &type metadata for FormatNotExpression, v16, &type metadata for FormatVersions.JazzkonC, v14, v11, v17, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCD30);
  (*(*(v19 - 8) + 16))(v6, v20, v19);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v46 = v12;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v21 = &v11[*(v8 + 44)];
  v23 = *v21;
  v22 = *(v21 + 1);
  v42 = 0;
  v24 = swift_allocObject();
  v41[2] = v41;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v42;
  *(v24 + 40) = v23;
  *(v24 + 48) = v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v41[-4] = sub_1D5B4AA6C;
  v41[-3] = 0;
  v39 = sub_1D67089D8;
  v40 = v26;
  v42 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v42;
  *(v27 + 40) = v23;
  *(v27 + 48) = v22;
  sub_1D66A5D98();
  v29 = v28;
  sub_1D5B58B84(&qword_1EDF034F8, sub_1D66A5D98);
  swift_retain_n();
  v41[1] = v29;
  v30 = sub_1D72647CC();
  v42 = 0;
  v31 = swift_allocObject();
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  *(v31 + 16) = v30;
  *(v31 + 40) = v42;
  v32 = __swift_project_boxed_opaque_existential_1(&v11[*(v8 + 36)], *&v11[*(v8 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v32, v33);
  MEMORY[0x1EEE9AC00](v34, v35);
  v41[-4] = sub_1D615B4A4;
  v41[-3] = &v41[-6];
  v39 = sub_1D66A5E2C;
  v40 = v27;
  v36 = v41[3];
  sub_1D5D2BC70(v6, sub_1D615B49C, v37, sub_1D615B4A4, &v41[-6]);
  if (v36)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D66596F4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D66A5D04);
}

uint64_t sub_1D6531024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6973736572707865 && a2 == 0xEA00000000006E6FLL;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

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

uint64_t sub_1D6531118(uint64_t a1)
{
  v2 = sub_1D5C996D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6531154(uint64_t a1)
{
  v2 = sub_1D5C996D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatNotificationsAction.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatNotificationsAction, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatNotificationsAction, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowC, v17, v14, v18, &off_1F51F6AF8);
  if (v15)
  {
    if (qword_1EDF31F40 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCE50);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641B6AC(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31F40 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCE50);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641B6AC(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D65314BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x62616E456F747561;
  }

  else
  {
    v3 = 0x735574706D6F7270;
  }

  if (v2)
  {
    v4 = 0xEA00000000007265;
  }

  else
  {
    v4 = 0xEA0000000000656CLL;
  }

  if (*a2)
  {
    v5 = 0x62616E456F747561;
  }

  else
  {
    v5 = 0x735574706D6F7270;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000656CLL;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6531568()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65315F0()
{
  sub_1D72621EC();
}

uint64_t sub_1D6531664()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D65316F4(uint64_t *a1@<X8>)
{
  v2 = 0x735574706D6F7270;
  if (*v1)
  {
    v2 = 0x62616E456F747561;
  }

  v3 = 0xEA0000000000656CLL;
  if (!*v1)
  {
    v3 = 0xEA00000000007265;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatNumber.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v28;
    v14 = v7;
    if (v12)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F51162C8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v14 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66A5EFC();
    v29 = 0uLL;
    sub_1D726431C();
    v23 = v30;
    if (v30)
    {
      if (v30 != 1)
      {
        v29 = xmmword_1D7279980;
        sub_1D66A5F50();
        sub_1D726431C();
        (*(v14 + 8))(v10, v6);
        v26 = v30;
        goto LABEL_17;
      }

      sub_1D5C5A334();
      v29 = xmmword_1D7279980;
      v24 = &qword_1EDF33F20;
      v25 = sub_1D5C5A334;
    }

    else
    {
      sub_1D5C71DC8();
      v29 = xmmword_1D7279980;
      v24 = &qword_1EDF33F30;
      v25 = sub_1D5C71DC8;
    }

    sub_1D5B58B84(v24, v25);
    sub_1D726431C();
    (*(v14 + 8))(v10, v6);
    v26 = v30;
LABEL_17:
    *v13 = v26;
    *(v13 + 8) = v23;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

LABEL_9:
  sub_1D61E4FBC(a1, v3);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatNumber.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v33 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v33 - v13;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = *(v1 + 8);
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v23 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatNumber, &type metadata for FormatCodingKeys, v24, v21, &type metadata for FormatNumber, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v22, v18, v23, &off_1F51F6BF8);
  if (v20)
  {
    if (v20 == 1)
    {
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v25 = sub_1D725BD1C();
      v26 = __swift_project_value_buffer(v25, qword_1EDFFCD18);
      (*(*(v25 - 8) + 16))(v10, v26, v25);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63BBEA0(1, v19, v10);
      v27 = v10;
    }

    else
    {
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v30 = sub_1D725BD1C();
      v31 = __swift_project_value_buffer(v30, qword_1EDFFCCE8);
      (*(*(v30 - 8) + 16))(v6, v31, v30);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63BC06C(2, v19, v6);
      v27 = v6;
    }
  }

  else
  {
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCD18);
    (*(*(v28 - 8) + 16))(v14, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63BBCD4(0, v19, v14);
    v27 = v14;
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D6531FDC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x72656765746E69;
  if (v2 != 1)
  {
    v3 = 0x676E69646E6962;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x74616F6C66;
  }

  if (v2)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 0x72656765746E69;
  if (*a2 != 1)
  {
    v6 = 0x676E69646E6962;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x74616F6C66;
  }

  if (*a2)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();
  }

  return v9 & 1;
}

uint64_t sub_1D65320DC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D653217C()
{
  sub_1D72621EC();
}

uint64_t sub_1D6532208()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65322A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6663674();
  *a1 = result;
  return result;
}

void sub_1D65322D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x72656765746E69;
  if (v2 != 1)
  {
    v4 = 0x676E69646E6962;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x74616F6C66;
  }

  if (!v5)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t FormatNumberBinding.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v24 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v24;
    if (v13)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F5116318;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66A5FA4();
    v25 = 0uLL;
    sub_1D726431C();
    v25 = xmmword_1D7279980;
    sub_1D6677FFC();
    sub_1D726431C();
    (*(v11 + 8))(v10, v6);
    *v14 = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatNumberBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatNumberBinding, &type metadata for FormatCodingKeys, v15, v12, &type metadata for FormatNumberBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyE, v13, v10, v14, &off_1F51F6CB8);
  if (qword_1EDF31E90 != -1)
  {
    swift_once();
  }

  v16 = sub_1D725BD1C();
  v17 = __swift_project_value_buffer(v16, qword_1EDFFCCE8);
  (*(*(v16 - 8) + 16))(v6, v17, v16);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63A621C(v11, v6);
  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v10, sub_1D5D30DC4);
}

uint64_t sub_1D6532A18(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x696C7069746C756DLL;
    if (a1 != 8)
    {
      v5 = 1885433183;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000018;
    }

    v6 = 0xD000000000000015;
    if (a1 != 5)
    {
      v6 = 0xD000000000000018;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x656C797473;
    v2 = 0xD000000000000014;
    v3 = 0xD000000000000014;
    if (a1 != 3)
    {
      v3 = 0xD000000000000015;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x676E69646E756F72;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D6532B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66A6A70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6532BA0(uint64_t a1)
{
  v2 = sub_1D666C644();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6532BDC(uint64_t a1)
{
  v2 = sub_1D666C644();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatNumberFormatRoundingMode.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v47 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v46 = &v39 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v45 = &v39 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v44 = &v39 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v43 = &v39 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v42 = &v39 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v41 = &v39 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v39 - v26;
  v48 = *v1;
  v28 = a1[3];
  v29 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v30 = sub_1D725BD1C();
  v31 = __swift_project_value_buffer(v30, qword_1EDFFCD18);
  v32 = *(*(v30 - 8) + 16);
  v32(v27, v31, v30);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v33 = v52;
  sub_1D5D2BEC4(v27, sub_1D5B4AA6C, 0, v28, v29);
  if (v33)
  {
    return sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  v35 = v49;
  v36 = v49[3];
  v40 = v49[4];
  v52 = __swift_project_boxed_opaque_existential_1(v49, v36);
  if (v48 <= 2)
  {
    if (!v48)
    {
      v38 = v41;
      v32(v41, v31, v30);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v38, sub_1D5B4AA6C, 0, v36, v40);
      sub_1D5D2CFE8(v38, type metadata accessor for FormatVersionRequirement);
      goto LABEL_19;
    }

    if (v48 == 1)
    {
      v37 = v42;
      v32(v42, v31, v30);
    }

    else
    {
      v37 = v43;
      v32(v43, v31, v30);
    }
  }

  else if (v48 > 4)
  {
    if (v48 == 5)
    {
      v37 = v46;
      v32(v46, v31, v30);
    }

    else
    {
      v37 = v47;
      v32(v47, v31, v30);
    }
  }

  else if (v48 == 3)
  {
    v37 = v44;
    v32(v44, v31, v30);
  }

  else
  {
    v37 = v45;
    v32(v45, v31, v30);
  }

  swift_storeEnumTagMultiPayload();
  sub_1D5D2BEC4(v37, sub_1D5B4AA6C, 0, v36, v40);
  sub_1D5D2CFE8(v37, type metadata accessor for FormatVersionRequirement);
LABEL_19:
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v50);
}

uint64_t FormatNumberFormatStyle.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v58 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v57 = v49 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v56 = v49 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v55 = v49 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v54 = v49 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v53 = v49 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v52 = v49 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v51 = v49 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v50 = v49 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = v49 - v32;
  v59 = *v1;
  v34 = a1[3];
  v35 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v34);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v36 = sub_1D725BD1C();
  v37 = __swift_project_value_buffer(v36, qword_1EDFFCD18);
  v38 = *(*(v36 - 8) + 16);
  v38(v33, v37, v36);
  v39 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v40 = v63;
  sub_1D5D2BEC4(v33, sub_1D5B4AA6C, 0, v34, v35);
  if (v40)
  {
    return sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);
  }

  v49[1] = v39;
  sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);
  v42 = v60;
  v43 = v60[3];
  v63 = v60[4];
  __swift_project_boxed_opaque_existential_1(v60, v43);
  if (v59 <= 3)
  {
    if (v59 > 1)
    {
      v46 = v52;
      v38(v52, v37, v36);
    }

    else
    {
      v46 = v50;
      v38(v50, v37, v36);
    }

    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v46, sub_1D5B4AA6C, 0, v43, v63);
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v42, v42[3]);
    sub_1D7264B3C();
  }

  else if (v59 <= 5)
  {
    v47 = v37;
    v48 = v54;
    v38(v54, v47, v36);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v48, sub_1D5B4AA6C, 0, v43, v63);
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v42, v42[3]);
    sub_1D7264B3C();
  }

  else
  {
    v44 = v37;
    if (v59 == 6)
    {
      v45 = v56;
      v38(v56, v44, v36);
    }

    else
    {
      v45 = v57;
      v38(v57, v44, v36);
    }

    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v45, sub_1D5B4AA6C, 0, v43, v63);
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v42, v42[3]);
    sub_1D7264B3C();
  }

  __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v61);
}

uint64_t FormatOption.encode(to:)(void *a1)
{
  v2 = v1;
  sub_1D5B5BF78(0, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v138 = &v135 - v6;
  v141 = type metadata accessor for FormatVersionRequirement(0);
  v137 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141, v7);
  v139 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v140 = &v135 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v142 = &v135 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v144 = &v135 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v135 - v20;
  sub_1D66A6008();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v135 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = type metadata accessor for FormatOption();
  sub_1D5C4DE50();
  v31 = v30;
  v32 = sub_1D5B58B84(&qword_1EDF24C98, sub_1D5C4DE50);
  v136 = v29;
  sub_1D5D2EE70(v29, v31, v33, v27, v29, v31, &type metadata for FormatVersions.JazzkonC, v28, v26, v32, &off_1F51F6C78);
  v34 = *v2;
  v35 = v2[1];
  v146 = v2;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v36 = sub_1D725BD1C();
  v37 = __swift_project_value_buffer(v36, qword_1EDFFCD30);
  v38 = *(v36 - 8);
  v39 = *(v38 + 16);
  v143 = v37;
  v145 = v36;
  v148 = v38 + 16;
  v149 = v39;
  (v39)(v21);
  v147 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v158 = v34;
  v159 = v35;
  v156 = 0uLL;
  v157 = 0;
  v40 = &v26[*(v23 + 44)];
  v41 = v23;
  v42 = *v40;
  v43 = *(v40 + 1);
  v160 = 0;
  v44 = swift_allocObject();
  v154 = &v135;
  *(v44 + 16) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = v160;
  *(v44 + 40) = v42;
  *(v44 + 48) = v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v153 = &v135 - 6;
  *(&v135 - 4) = sub_1D5B4AA6C;
  *(&v135 - 3) = 0;
  v133 = sub_1D6708AEC;
  v134 = v46;
  v160 = 0;
  v47 = v26;
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  *(v48 + 32) = v160;
  v150 = v42;
  *(v48 + 40) = v42;
  *(v48 + 48) = v43;
  sub_1D66A609C();
  v50 = v49;
  v51 = sub_1D5B58B84(&qword_1EDF02B78, sub_1D66A609C);
  swift_retain_n();
  v151 = v51;
  v152 = v50;
  v52 = sub_1D72647CC();
  v160 = 0;
  v53 = swift_allocObject();
  *(v53 + 24) = 0;
  *(v53 + 32) = 0;
  *(v53 + 16) = v52;
  *(v53 + 40) = v160;
  v54 = v21;
  v55 = &v47[*(v41 + 36)];
  v56 = __swift_project_boxed_opaque_existential_1(v55, *(v55 + 3));
  MEMORY[0x1EEE9AC00](v56, v57);
  MEMORY[0x1EEE9AC00](v58, v59);
  v60 = v153;
  *(&v135 - 4) = sub_1D615B4A4;
  *(&v135 - 3) = v60;
  v133 = sub_1D6708AEC;
  v134 = v48;
  v61 = v155;
  sub_1D5D2BC70(v54, sub_1D615B49C, v62, sub_1D615B4A4, (&v135 - 6));
  if (v61)
  {
    sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);

    v64 = v47;
    return sub_1D5D2CFE8(v64, sub_1D66A6008);
  }

  v135 = v55;
  v153 = v43;

  v63 = v47;
  sub_1D72647EC();
  sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);

  v66 = v146[2];
  v67 = v144;
  v149(v144, v143, v145);
  swift_storeEnumTagMultiPayload();
  v158 = v66;
  v155 = xmmword_1D728CF30;
  v156 = xmmword_1D728CF30;
  v157 = 0;
  v160 = 0;
  v68 = swift_allocObject();
  v143 = &v135;
  *(v68 + 16) = v155;
  *(v68 + 32) = v160;
  v69 = v150;
  v70 = v153;
  *(v68 + 40) = v150;
  *(v68 + 48) = v70;
  MEMORY[0x1EEE9AC00](v68, v71);
  v154 = 0;
  *(&v135 - 4) = sub_1D5B4AA6C;
  *(&v135 - 3) = 0;
  v133 = sub_1D6708AEC;
  v134 = v72;
  v160 = 0;
  v73 = swift_allocObject();
  *(v73 + 16) = v155;
  *(v73 + 32) = v160;
  *(v73 + 40) = v69;
  *(v73 + 48) = v70;
  v74 = v67;
  v75 = v63;
  swift_retain_n();
  v76 = sub_1D72647CC();
  v160 = 0;
  v77 = swift_allocObject();
  *(v77 + 16) = v76;
  *(v77 + 24) = v155;
  *(v77 + 40) = v160;
  v78 = __swift_project_boxed_opaque_existential_1(v135, *(v135 + 3));
  MEMORY[0x1EEE9AC00](v78, v79);
  MEMORY[0x1EEE9AC00](v80, v81);
  *(&v135 - 4) = sub_1D615B4A4;
  *(&v135 - 3) = (&v135 - 6);
  v133 = sub_1D6708AEC;
  v134 = v73;
  v82 = v154;
  sub_1D5D2BC70(v74, sub_1D615B49C, v83, sub_1D615B4A4, (&v135 - 6));
  if (v82)
  {
    sub_1D5D2CFE8(v74, type metadata accessor for FormatVersionRequirement);

    v64 = v75;
    return sub_1D5D2CFE8(v64, sub_1D66A6008);
  }

  sub_1D66A6130();
  sub_1D72647EC();
  v154 = 0;
  v143 = v75;
  sub_1D5D2CFE8(v74, type metadata accessor for FormatVersionRequirement);

  v84 = v146;
  v85 = v146[3];
  if (qword_1EDF31E80 != -1)
  {
    swift_once();
  }

  v86 = v145;
  v87 = __swift_project_value_buffer(v145, qword_1EDFFCCA8);
  v88 = v142;
  v149(v142, v87, v86);
  swift_storeEnumTagMultiPayload();
  v155 = xmmword_1D7297410;
  v156 = xmmword_1D7297410;
  v157 = 0;
  LOBYTE(v158) = 0;
  v89 = swift_allocObject();
  v91 = v89;
  *(v89 + 16) = v155;
  *(v89 + 32) = v158;
  v92 = v150;
  v93 = v153;
  *(v89 + 40) = v150;
  *(v89 + 48) = v93;
  if (v85 != 1)
  {
    v158 = v85;
    MEMORY[0x1EEE9AC00](v89, v90);
    *(&v135 - 4) = sub_1D5B4AA6C;
    *(&v135 - 3) = 0;
    v133 = sub_1D6708AEC;
    v134 = v91;
    v160 = 0;
    v104 = swift_allocObject();
    *(v104 + 16) = v155;
    *(v104 + 32) = v160;
    *(v104 + 40) = v92;
    *(v104 + 48) = v93;
    swift_retain_n();
    sub_1D5B71354(v85);
    v105 = sub_1D72647CC();
    v160 = 0;
    v106 = swift_allocObject();
    *(v106 + 16) = v105;
    *(v106 + 24) = v155;
    *(v106 + 40) = v160;
    v107 = __swift_project_boxed_opaque_existential_1(v135, *(v135 + 3));
    MEMORY[0x1EEE9AC00](v107, v108);
    MEMORY[0x1EEE9AC00](v109, v110);
    *(&v135 - 4) = sub_1D615B4A4;
    *(&v135 - 3) = (&v135 - 6);
    v111 = v142;
    v133 = sub_1D6708AEC;
    v134 = v104;
    v112 = v154;
    v114 = sub_1D5D2F7A4(v142, sub_1D615B49C, v113, sub_1D615B4A4, (&v135 - 6));
    v154 = v112;
    if (v112)
    {

      sub_1D66A5FF8(v85);
      v94 = v143;
    }

    else
    {
      v129 = v114;

      v95 = v140;
      if ((v129 & 1) == 0)
      {

        sub_1D66A5FF8(v85);
        sub_1D5D2CFE8(v142, type metadata accessor for FormatVersionRequirement);
        v94 = v143;
        v86 = v145;
        v84 = v146;
        v93 = v153;
        goto LABEL_13;
      }

      sub_1D66A6200();
      v94 = v143;
      v130 = v154;
      sub_1D72647EC();
      v154 = v130;
      v86 = v145;
      v84 = v146;
      v93 = v153;
      if (!v130)
      {

        sub_1D66A5FF8(v85);
        sub_1D5D2CFE8(v142, type metadata accessor for FormatVersionRequirement);
        goto LABEL_13;
      }

      sub_1D66A5FF8(v85);
      v111 = v142;
    }

    sub_1D5D2CFE8(v111, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v94, sub_1D66A6008);
  }

  sub_1D5D2CFE8(v88, type metadata accessor for FormatVersionRequirement);

  v94 = v143;
  v95 = v140;
LABEL_13:
  v96 = *(v136 + 28);
  v97 = v149;
  if (qword_1EDF31F48 != -1)
  {
    swift_once();
  }

  v98 = __swift_project_value_buffer(v86, qword_1EDFFCE68);
  v97(v95, v98, v86);
  swift_storeEnumTagMultiPayload();
  v155 = xmmword_1D72BAA60;
  v156 = xmmword_1D72BAA60;
  v157 = 0;
  LOBYTE(v158) = 0;
  v99 = v95;
  v100 = swift_allocObject();
  *(v100 + 16) = v155;
  *(v100 + 32) = v158;
  v101 = v150;
  *(v100 + 40) = v150;
  *(v100 + 48) = v93;
  v102 = v84 + v96;
  v103 = v138;
  sub_1D5CDE2EC(v102, v138, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
  if ((*(v137 + 48))(v103, 1, v141) != 1)
  {
    v115 = sub_1D5C8F76C(v103, v139, type metadata accessor for FormatVersionRequirement);
    MEMORY[0x1EEE9AC00](v115, v116);
    *(&v135 - 4) = sub_1D5B4AA6C;
    *(&v135 - 3) = 0;
    v133 = sub_1D6708AEC;
    v134 = v100;
    LOBYTE(v158) = 0;
    v117 = swift_allocObject();
    *(v117 + 16) = v155;
    *(v117 + 32) = v158;
    *(v117 + 40) = v101;
    *(v117 + 48) = v93;
    swift_retain_n();
    v118 = sub_1D72647CC();
    LOBYTE(v158) = 0;
    v119 = swift_allocObject();
    *(v119 + 16) = v118;
    *(v119 + 24) = v155;
    *(v119 + 40) = v158;
    v120 = __swift_project_boxed_opaque_existential_1(v135, *(v135 + 3));
    MEMORY[0x1EEE9AC00](v120, v121);
    MEMORY[0x1EEE9AC00](v122, v123);
    *(&v135 - 4) = sub_1D615B4A4;
    *(&v135 - 3) = (&v135 - 6);
    v133 = sub_1D66A6184;
    v134 = v117;
    v124 = v154;
    v126 = sub_1D5D2F7A4(v99, sub_1D615B49C, v125, sub_1D615B4A4, (&v135 - 6));
    if (v124)
    {

      v127 = v143;
      v128 = v139;
    }

    else
    {
      v131 = v126;

      if ((v131 & 1) == 0)
      {

        sub_1D5D2CFE8(v139, type metadata accessor for FormatVersionRequirement);
        sub_1D5D2CFE8(v99, type metadata accessor for FormatVersionRequirement);
        v64 = v143;
        return sub_1D5D2CFE8(v64, sub_1D66A6008);
      }

      sub_1D5B58B84(&qword_1EC8825B8, type metadata accessor for FormatVersionRequirement);
      v132 = v139;
      v127 = v143;
      sub_1D72647EC();

      v128 = v132;
    }

    sub_1D5D2CFE8(v128, type metadata accessor for FormatVersionRequirement);
    sub_1D5D2CFE8(v99, type metadata accessor for FormatVersionRequirement);
    v64 = v127;
    return sub_1D5D2CFE8(v64, sub_1D66A6008);
  }

  sub_1D5D2CFE8(v99, type metadata accessor for FormatVersionRequirement);

  sub_1D5D2CFE8(v94, sub_1D66A6008);
  return sub_1D5D35558(v103, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement, MEMORY[0x1E69E6720], sub_1D5B5BF78);
}

uint64_t sub_1D6535114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66A6DAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D653514C(uint64_t a1)
{
  v2 = sub_1D5C8DE10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6535188(uint64_t a1)
{
  v2 = sub_1D5C8DE10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatOptionBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v74 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v68 - v8;
  sub_1D66A6254();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v75 = v1[2];
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D5C6A774();
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF254A8, sub_1D5C6A774);
  sub_1D5D2EE70(&type metadata for FormatOptionBinding, v20, v22, v17, &type metadata for FormatOptionBinding, v20, &type metadata for FormatVersions.JazzkonC, v18, v14, v21, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v70 = v23;
  v72 = v25 + 16;
  v73 = v26;
  v26(v9, v24, v23);
  v71 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v83 = v15;
  v84 = v16;
  v81 = 0uLL;
  v82 = 0;
  v27 = &v14[*(v11 + 44)];
  v28 = *v27;
  v29 = *(v27 + 1);
  v85 = 0;
  v30 = swift_allocObject();
  *&v78 = &v68;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v85;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  *(&v68 - 4) = sub_1D5B4AA6C;
  *(&v68 - 3) = 0;
  v66 = sub_1D6708AF0;
  v67 = v32;
  v85 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v85;
  v68 = v28;
  *(v33 + 40) = v28;
  *(v33 + 48) = v29;
  sub_1D66A62E8();
  v34 = v9;
  v36 = v35;
  v37 = sub_1D5B58B84(&qword_1EDF034E8, sub_1D66A62E8);
  v69 = v29;
  swift_retain_n();
  v76 = v37;
  v77 = v36;
  v38 = sub_1D72647CC();
  v85 = 0;
  v39 = swift_allocObject();
  *(v39 + 24) = 0;
  *(v39 + 32) = 0;
  *(v39 + 16) = v38;
  *(v39 + 40) = v85;
  v40 = *(v11 + 36);
  v80 = v14;
  v41 = &v14[v40];
  v42 = __swift_project_boxed_opaque_existential_1(&v14[v40], *&v14[v40 + 24]);
  MEMORY[0x1EEE9AC00](v42, v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  *(&v68 - 4) = sub_1D615B4A4;
  *(&v68 - 3) = (&v68 - 6);
  v66 = sub_1D6708AF0;
  v67 = v33;
  v46 = v79;
  sub_1D5D2BC70(v34, sub_1D615B49C, v47, sub_1D615B4A4, (&v68 - 6));
  if (v46)
  {
    v48 = v80;
    sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);

    v50 = v48;
  }

  else
  {
    v79 = v41;

    v49 = v80;
    sub_1D72647EC();
    sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);

    v52 = qword_1EDF31EA8;
    v53 = v75;

    if (v52 != -1)
    {
      swift_once();
    }

    v54 = v70;
    v55 = __swift_project_value_buffer(v70, qword_1EDFFCD18);
    v56 = v74;
    v73(v74, v55, v54);
    swift_storeEnumTagMultiPayload();
    v57 = v49;
    if (*(v53 + 16) && (LOBYTE(v81) = 0, v58 = swift_allocObject(), v78 = xmmword_1D728CF30, *(v58 + 16) = xmmword_1D728CF30, *(v58 + 32) = v81, *(v58 + 40) = v68, *(v58 + 48) = v69, , v59 = sub_1D72647CC(), LOBYTE(v81) = 0, v60 = swift_allocObject(), *(v60 + 16) = v59, *(v60 + 24) = v78, *(v60 + 40) = v81, v61 = __swift_project_boxed_opaque_existential_1(v79, *(v79 + 3)), MEMORY[0x1EEE9AC00](v61, v62), MEMORY[0x1EEE9AC00](v63, v64), *(&v68 - 4) = sub_1D5B4AA6C, *(&v68 - 3) = 0, v66 = sub_1D66A637C, v67 = v58, LOBYTE(v59) = sub_1D5D2F7A4(v56, sub_1D615B49C, v65, sub_1D615B4A4, (&v68 - 6)), v57 = v80, , , (v59 & 1) != 0))
    {
      v81 = v78;
      v82 = 0;
      v83 = v75;
      sub_1D5C34D84(0, &qword_1EDF1AFE8, &type metadata for FormatOptionBindingModifier, MEMORY[0x1E69E62F8]);
      sub_1D66A63F8();
      sub_1D72647EC();

      sub_1D5D2CFE8(v56, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v56, type metadata accessor for FormatVersionRequirement);
    }

    v50 = v57;
  }

  return sub_1D5D2CFE8(v50, sub_1D66A6254);
}

uint64_t sub_1D6535AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66A6F6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6535AD8(uint64_t a1)
{
  v2 = sub_1D5C6A8E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6535B14(uint64_t a1)
{
  v2 = sub_1D5C6A8E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6535B50(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7470697263736564;
  }

  else
  {
    v3 = 0x6574656D61726170;
  }

  if (v2)
  {
    v4 = 0xEA00000000007372;
  }

  else
  {
    v4 = 0xEB000000006E6F69;
  }

  if (*a2)
  {
    v5 = 0x7470697263736564;
  }

  else
  {
    v5 = 0x6574656D61726170;
  }

  if (*a2)
  {
    v6 = 0xEB000000006E6F69;
  }

  else
  {
    v6 = 0xEA00000000007372;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6535C04()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6535C94()
{
  sub_1D72621EC();
}

uint64_t sub_1D6535D10()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6535D9C(uint64_t *a1@<X8>)
{
  v2 = 0x6574656D61726170;
  if (*v1)
  {
    v2 = 0x7470697263736564;
  }

  v3 = 0xEA00000000007372;
  if (*v1)
  {
    v3 = 0xEB000000006E6F69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D6535E38(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v26 - v10;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatOptionDependency, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatOptionDependency, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v17, v15, v18, &off_1F51F6CF8);
  if (a2)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCCA8);
    (*(*(v20 - 8) + 16))(v11, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6399400(0, a2, v11);
    v22 = v11;
  }

  else
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCCA8);
    (*(*(v23 - 8) + 16))(v7, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641DB9C(1, v7);
    v22 = v7;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v15, sub_1D5D30DC4);
}

uint64_t sub_1D6536130(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x676E69646E6962;
  }

  else
  {
    v2 = 0x736E6F6974706FLL;
  }

  if (*a2)
  {
    v3 = 0x676E69646E6962;
  }

  else
  {
    v3 = 0x736E6F6974706FLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D65361B8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6536230()
{
  sub_1D72621EC();
}

uint64_t sub_1D653628C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D653630C(uint64_t *a1@<X8>)
{
  v2 = 0x736E6F6974706FLL;
  if (*v1)
  {
    v2 = 0x676E69646E6962;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t FormatOptionEnum.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v93 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v102 = &v90 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v90 - v11);
  sub_1D66A6494();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v19 = v1[1];
  v20 = v1[2];
  v95 = v1[3];
  v96 = v20;
  v92 = v1[4];
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D5CC72EC();
  v24 = v23;
  v25 = sub_1D5B58B84(qword_1EDF3ED78, sub_1D5CC72EC);
  sub_1D5D2EE70(&type metadata for FormatOptionEnum, v24, v26, v21, &type metadata for FormatOptionEnum, v24, &type metadata for FormatVersions.JazzkonC, v22, v17, v25, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v27 = sub_1D725BD1C();
  v28 = __swift_project_value_buffer(v27, qword_1EDFFCD30);
  v29 = *(v27 - 8);
  v30 = *(v29 + 16);
  v94 = v28;
  v101 = v27;
  v98 = v29 + 16;
  v99 = v30;
  (v30)(v12);
  v97 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v111 = v18;
  v112 = v19;
  v109 = 0uLL;
  v110 = 0;
  v31 = &v17[*(v14 + 44)];
  v106 = v12;
  v33 = *v31;
  v32 = *(v31 + 1);
  v113 = 0;
  v34 = swift_allocObject();
  v107 = &v90;
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v113;
  *(v34 + 40) = v33;
  *(v34 + 48) = v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  *(&v90 - 4) = sub_1D5B4AA6C;
  *(&v90 - 3) = 0;
  v88 = sub_1D6708AF4;
  v89 = v36;
  v113 = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v113;
  v100 = v33;
  *(v37 + 40) = v33;
  *(v37 + 48) = v32;
  sub_1D66A6528();
  v39 = v38;
  v40 = sub_1D5B58B84(&qword_1EDF03758, sub_1D66A6528);
  swift_retain_n();
  v103 = v39;
  v104 = v40;
  v41 = sub_1D72647CC();
  v113 = 0;
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 16) = v41;
  *(v42 + 40) = v113;
  v43 = &v17[*(v14 + 36)];
  v44 = *(v43 + 3);
  v105 = v17;
  v45 = __swift_project_boxed_opaque_existential_1(v43, v44);
  MEMORY[0x1EEE9AC00](v45, v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  *(&v90 - 4) = sub_1D615B4A4;
  *(&v90 - 3) = (&v90 - 6);
  v88 = sub_1D6708AF4;
  v89 = v37;
  v49 = v106;
  v50 = v108;
  sub_1D5D2BC70(v106, sub_1D615B49C, v51, sub_1D615B4A4, (&v90 - 6));
  if (v50)
  {
    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);

    v52 = v105;
  }

  else
  {
    v90 = v43;
    v91 = v32;

    v52 = v105;
    sub_1D72647EC();
    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);

    v53 = v102;
    v99(v102, v94, v101);
    swift_storeEnumTagMultiPayload();
    v111 = v96;
    v112 = v95;
    v108 = xmmword_1D728CF30;
    v109 = xmmword_1D728CF30;
    v110 = 0;
    v113 = 0;
    v54 = swift_allocObject();
    v106 = &v90;
    *(v54 + 16) = v108;
    *(v54 + 32) = v113;
    v55 = v100;
    v56 = v91;
    *(v54 + 40) = v100;
    *(v54 + 48) = v56;
    MEMORY[0x1EEE9AC00](v54, v57);
    v107 = 0;
    *(&v90 - 4) = sub_1D5B4AA6C;
    *(&v90 - 3) = 0;
    v88 = sub_1D6708AF4;
    v89 = v58;
    v113 = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = v108;
    *(v59 + 32) = v113;
    *(v59 + 40) = v55;
    *(v59 + 48) = v56;
    swift_retain_n();
    v60 = sub_1D72647CC();
    v113 = 0;
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = v108;
    *(v61 + 40) = v113;
    v62 = __swift_project_boxed_opaque_existential_1(v90, *(v90 + 3));
    MEMORY[0x1EEE9AC00](v62, v63);
    MEMORY[0x1EEE9AC00](v64, v65);
    *(&v90 - 4) = sub_1D615B4A4;
    *(&v90 - 3) = (&v90 - 6);
    v88 = sub_1D6708AF4;
    v89 = v59;
    v66 = v107;
    sub_1D5D2BC70(v53, sub_1D615B49C, v67, sub_1D615B4A4, (&v90 - 6));
    if (v66)
    {
      sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D72647EC();
      v107 = 0;
      sub_1D5D2CFE8(v102, type metadata accessor for FormatVersionRequirement);

      v68 = qword_1EDF31F10;
      v69 = v92;

      if (v68 != -1)
      {
        swift_once();
      }

      v70 = v101;
      v71 = __swift_project_value_buffer(v101, qword_1EDFFCDF8);
      v72 = v93;
      v99(v93, v71, v70);
      swift_storeEnumTagMultiPayload();
      v73 = v91;
      v74 = v100;
      v75 = v90;
      if (!*(v69 + 16))
      {
        goto LABEL_15;
      }

      LOBYTE(v109) = 0;
      v76 = swift_allocObject();
      v108 = xmmword_1D7297410;
      *(v76 + 16) = xmmword_1D7297410;
      *(v76 + 32) = v109;
      *(v76 + 40) = v74;
      *(v76 + 48) = v73;

      v77 = sub_1D72647CC();
      LOBYTE(v109) = 0;
      v78 = swift_allocObject();
      *(v78 + 16) = v77;
      *(v78 + 24) = v108;
      *(v78 + 40) = v109;
      v79 = __swift_project_boxed_opaque_existential_1(v75, *(v75 + 3));
      MEMORY[0x1EEE9AC00](v79, v80);
      MEMORY[0x1EEE9AC00](v81, v82);
      *(&v90 - 4) = sub_1D5B4AA6C;
      *(&v90 - 3) = 0;
      v88 = sub_1D66A65BC;
      v89 = v76;
      v83 = v107;
      v85 = sub_1D5D2F7A4(v72, sub_1D615B49C, v84, sub_1D615B4A4, (&v90 - 6));
      if (v83)
      {
        sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);

        return sub_1D5D2CFE8(v52, sub_1D66A6494);
      }

      v87 = v85;

      if (v87)
      {
        v109 = v108;
        v110 = 0;
        v111 = v69;
        sub_1D66B73B4(0, &qword_1EDF1B548, &qword_1EDF43710, MEMORY[0x1E69E6158], &protocol witness table for String);
        sub_1D66A6638();
        sub_1D72647EC();

        sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
LABEL_15:
        sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);
      }
    }
  }

  return sub_1D5D2CFE8(v52, sub_1D66A6494);
}

uint64_t sub_1D6537004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66A7428(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D653703C(uint64_t a1)
{
  v2 = sub_1D5CC7458();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6537078(uint64_t a1)
{
  v2 = sub_1D5CC7458();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65370B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66A7590(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65370EC(uint64_t a1)
{
  v2 = sub_1D5C60F98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6537128(uint64_t a1)
{
  v2 = sub_1D5C60F98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatOptionId.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D66A66D0();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66A6764();
  sub_1D5B58B84(&qword_1EDF24C18, sub_1D66A6764);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v27;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v21 = *(v16 - 2);
      v20 = *(v16 - 1);

      v22 = sub_1D6628490(0x696669746E656469, 0xEA00000000007265);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  v25[1] = 0;
  v25[2] = 0;
  v26 = 0;
  v17 = sub_1D72642BC();
  v19 = v18;
  (*(v7 + 8))(v10, v6);
  *v13 = v17;
  v13[1] = v19;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatOptionId.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66A68E4();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = v1[1];
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D66A6764();
  v17 = v16;
  v18 = sub_1D5B58B84(&qword_1EDF24C18, sub_1D66A6764);
  sub_1D5D2EE70(&type metadata for FormatOptionId, v17, v19, v14, &type metadata for FormatOptionId, v17, &type metadata for FormatVersions.Sydro, v15, v11, v18, &off_1F51F6C38);
  if (qword_1EDF31F08 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCDE0);
  (*(*(v20 - 8) + 16))(v6, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v44 = v12;
  v45 = v13;
  v42[3] = 0;
  v42[4] = 0;
  v43 = 0;
  v22 = &v11[*(v8 + 44)];
  v24 = *v22;
  v23 = *(v22 + 1);
  v46 = 0;
  v25 = swift_allocObject();
  v42[1] = v42;
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v46;
  *(v25 + 40) = v24;
  *(v25 + 48) = v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v42[-4] = sub_1D5B4AA6C;
  v42[-3] = 0;
  v40 = sub_1D67088B4;
  v41 = v27;
  v46 = 0;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v46;
  *(v28 + 40) = v24;
  *(v28 + 48) = v23;
  sub_1D66A6978();
  v30 = v29;
  sub_1D5B58B84(&qword_1EDF02AD8, sub_1D66A6978);
  swift_retain_n();
  v42[0] = v30;
  v31 = sub_1D72647CC();
  v46 = 0;
  v32 = swift_allocObject();
  *(v32 + 24) = 0;
  *(v32 + 32) = 0;
  *(v32 + 16) = v31;
  *(v32 + 40) = v46;
  v33 = __swift_project_boxed_opaque_existential_1(&v11[*(v8 + 36)], *&v11[*(v8 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v33, v34);
  MEMORY[0x1EEE9AC00](v35, v36);
  v42[-4] = sub_1D615B4A4;
  v42[-3] = &v42[-6];
  v40 = sub_1D67088B4;
  v41 = v28;
  v37 = v42[2];
  sub_1D5D2BC70(v6, sub_1D615B49C, v38, sub_1D615B4A4, &v42[-6]);
  if (v37)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D66A68E4);
}

uint64_t sub_1D653794C(uint64_t a1)
{
  v2 = sub_1D66A683C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6537988(uint64_t a1)
{
  v2 = sub_1D66A683C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatOptionType.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v81 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v80 = &v68 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v79 = &v68 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v78 = &v68 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v77 = &v68 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v76 = &v68 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v75 = &v68 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v74 = &v68 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v73 = &v68 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v72 = &v68 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v71 = &v68 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v70 = &v68 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v68 - v41;
  v86 = *v1;
  v43 = a1[3];
  v44 = a1[4];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v43);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v45 = sub_1D725BD1C();
  v46 = __swift_project_value_buffer(v45, qword_1EDFFCD30);
  v47 = *(*(v45 - 8) + 16);
  (v47)(v42, v46, v45);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v48 = v83;
  sub_1D5D2BEC4(v42, sub_1D5B4AA6C, 0, v43, v44);
  if (v48)
  {
    return sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);
  v50 = v82;
  v51 = v82[3];
  v83 = v82[4];
  v69 = v51;
  v52 = __swift_project_boxed_opaque_existential_1(v82, v51);
  v53 = v86;
  if (v86 > 5)
  {
    if (v86 > 8)
    {
      if (v86 == 9)
      {
        v68 = v52;
        if (qword_1EDF31EE8 != -1)
        {
          swift_once();
        }

        v63 = __swift_project_value_buffer(v45, qword_1EDFFCD98);
        v57 = v79;
        (v47)(v79, v63, v45);
        swift_storeEnumTagMultiPayload();
        v58 = v57;
        v59 = v69;
      }

      else
      {
        if (v86 != 10)
        {
          v68 = v52;
          if (qword_1EDF31E98 != -1)
          {
            swift_once();
          }

          v65 = __swift_project_value_buffer(v45, qword_1EDFFCD00);
          v66 = v81;
          (v47)(v81, v65, v45);
          swift_storeEnumTagMultiPayload();
          v55 = v66;
          v60 = v66;
          goto LABEL_41;
        }

        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v56 = __swift_project_value_buffer(v45, qword_1EDFFCD50);
        v57 = v80;
        (v47)(v80, v56, v45);
        swift_storeEnumTagMultiPayload();
        v58 = v57;
        v59 = v69;
      }

      sub_1D5D2BEC4(v58, sub_1D5B4AA6C, 0, v59, v83);
      v67 = v57;
LABEL_43:
      sub_1D5D2CFE8(v67, type metadata accessor for FormatVersionRequirement);
      goto LABEL_44;
    }

    if (v86 == 6)
    {
      v55 = v76;
      v47();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      if (v86 != 7)
      {
        v68 = v52;
        if (qword_1EDF31EE8 != -1)
        {
          swift_once();
        }

        v64 = __swift_project_value_buffer(v45, qword_1EDFFCD98);
        v55 = v78;
        (v47)(v78, v64, v45);
        swift_storeEnumTagMultiPayload();
        goto LABEL_37;
      }

      v55 = v77;
      v47();
      swift_storeEnumTagMultiPayload();
    }

    v60 = v55;
    v61 = v69;
    v62 = v83;
LABEL_42:
    sub_1D5D2BEC4(v60, sub_1D5B4AA6C, 0, v61, v62);
    v67 = v55;
    goto LABEL_43;
  }

  v68 = v52;
  if (v86 <= 2)
  {
    if (v86)
    {
      if (v86 == 1)
      {
        v54 = v71;
        (v47)(v71, v46, v45);
      }

      else
      {
        v54 = v72;
        (v47)(v72, v46, v45);
      }

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v54 = v70;
      (v47)(v70, v46, v45);
      swift_storeEnumTagMultiPayload();
    }

    goto LABEL_32;
  }

  if (v86 == 3)
  {
    v54 = v73;
    (v47)(v73, v46, v45);
    swift_storeEnumTagMultiPayload();
    goto LABEL_32;
  }

  if (v86 != 4)
  {
    v55 = v75;
    (v47)(v75);
    swift_storeEnumTagMultiPayload();
LABEL_37:
    v60 = v55;
LABEL_41:
    v61 = v69;
    v62 = v83;
    goto LABEL_42;
  }

  v54 = v74;
  (v47)(v74, v46, v45);
  swift_storeEnumTagMultiPayload();
LABEL_32:
  sub_1D5D2BEC4(v54, sub_1D5B4AA6C, 0, v69, v83);
  sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
LABEL_44:
  __swift_project_boxed_opaque_existential_1(v50, v50[3]);
  sub_1D7264B3C();
  v87 = v53;
  FormatOptionType.rawValue.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v84);
}

uint64_t sub_1D6538360(char a1)
{
  result = 0x6E61656C6F6F62;
  switch(a1)
  {
    case 1:
      result = 1836412517;
      break;
    case 2:
      result = 1702125924;
      break;
    case 3:
      result = 0x74616F6C66;
      break;
    case 4:
      result = 0x72656765746E69;
      break;
    case 5:
      result = 0x676E69727473;
      break;
    case 6:
      result = 7107189;
      break;
    case 7:
      result = 0x726F6C6F63;
      break;
    case 8:
      result = 0x646E756F626E75;
      break;
    case 9:
      result = 0x6567616D69;
      break;
    case 10:
      result = 0x6F65646976;
      break;
    case 11:
      result = 0x7463617274736261;
      break;
    case 12:
      result = 1953394534;
      break;
    case 13:
      result = 0x616C506F65646976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D6538500@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6538360(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatOptionsNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *&v155 = &v139 - v7;
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v143 = &v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v144 = &v139 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v152 = &v139 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v139 - v19;
  sub_1D66A76FC();
  v154 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v139 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1D5C589E0();
  v28 = v27;
  v29 = sub_1D5B58B84(&qword_1EDF25618, sub_1D5C589E0);
  v153 = v24;
  v30 = v26;
  v31 = v2;
  sub_1D5D2EE70(v4, v28, v32, v25, v4, v28, &type metadata for FormatVersions.JazzkonG, v30, v24, v29, &off_1F51F6BF8);
  swift_beginAccess();
  v34 = v2[2];
  v33 = v2[3];
  v35 = qword_1EDF31EA8;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = sub_1D725BD1C();
  v37 = __swift_project_value_buffer(v36, qword_1EDFFCD18);
  v38 = *(v36 - 8);
  v39 = *(v38 + 16);
  v40 = v38 + 16;
  v151 = v37;
  v39(v20);
  v41 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v42 = v155;
  sub_1D725892C();
  v43 = sub_1D725895C();
  v44 = (*(*(v43 - 8) + 48))(v42, 1, v43);
  v45 = v20;
  v147 = v31;
  v146 = v36;
  v149 = v39;
  v148 = v40;
  v150 = v41;
  if (v44 != 1)
  {
    sub_1D5D2CFE8(v20, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v155, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v64 = v153;
LABEL_7:
    v65 = v151;
    goto LABEL_8;
  }

  v145 = v34;
  sub_1D5D35558(v155, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v46 = v154;
  v47 = v153;
  v48 = &v153[*(v154 + 11)];
  v50 = *v48;
  v49 = *(v48 + 1);
  LOBYTE(v157) = 0;
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  *(v51 + 32) = v157;
  *(v51 + 40) = v50;
  *(v51 + 48) = v49;
  sub_1D66A7790();
  v53 = v52;
  sub_1D5B58B84(&qword_1EDF03688, sub_1D66A7790);

  *&v155 = v53;
  v54 = sub_1D72647CC();
  LOBYTE(v157) = 0;
  v55 = swift_allocObject();
  *(v55 + 24) = 0;
  *(v55 + 32) = 0;
  *(v55 + 16) = v54;
  *(v55 + 40) = v157;
  v56 = __swift_project_boxed_opaque_existential_1((v47 + *(v46 + 9)), *(v47 + *(v46 + 9) + 24));
  MEMORY[0x1EEE9AC00](v56, v57);
  MEMORY[0x1EEE9AC00](v58, v59);
  *(&v139 - 4) = sub_1D5B4AA6C;
  *(&v139 - 3) = 0;
  v137 = sub_1D66A7824;
  v138 = v51;
  v60 = v156;
  v62 = sub_1D5D2F7A4(v45, sub_1D615B49C, v61, sub_1D615B4A4, (&v139 - 6));
  v156 = v60;
  if (v60)
  {
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v47, sub_1D66A76FC);
  }

  v91 = v62;

  if ((v91 & 1) == 0)
  {
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);

    v64 = v153;
    v31 = v147;
    v36 = v146;
    v39 = v149;
    goto LABEL_7;
  }

  v157 = 0uLL;
  LOBYTE(v158) = 0;
  v165 = v145;
  v166 = v33;
  v64 = v153;
  v92 = v156;
  sub_1D72647EC();

  sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);
  v39 = v149;
  v65 = v151;
  if (!v92)
  {
    v156 = 0;
    v31 = v147;
    v36 = v146;
LABEL_8:
    swift_beginAccess();
    v66 = v31[4];
    v67 = v152;
    (v39)(v152, v65, v36);
    swift_storeEnumTagMultiPayload();
    v68 = (v64 + *(v154 + 11));
    v69 = *v68;
    v70 = v68[1];
    LOBYTE(v157) = 0;
    v71 = swift_allocObject();
    v155 = xmmword_1D728CF30;
    *(v71 + 16) = xmmword_1D728CF30;
    *(v71 + 32) = v157;
    v139 = v69;
    *(v71 + 40) = v69;
    *(v71 + 48) = v70;
    sub_1D66A7790();
    v73 = v72;
    v74 = sub_1D5B58B84(&qword_1EDF03688, sub_1D66A7790);
    v145 = v66;

    v140 = v70;

    v142 = v73;
    v141 = v74;
    v75 = sub_1D72647CC();
    LOBYTE(v157) = 0;
    v76 = swift_allocObject();
    *(v76 + 16) = v75;
    *(v76 + 24) = v155;
    *(v76 + 40) = v157;
    v77 = (v64 + *(v154 + 9));
    v78 = __swift_project_boxed_opaque_existential_1(v77, v77[3]);
    MEMORY[0x1EEE9AC00](v78, v79);
    MEMORY[0x1EEE9AC00](v80, v81);
    *(&v139 - 4) = sub_1D5B4AA6C;
    *(&v139 - 3) = 0;
    v137 = sub_1D6708AF8;
    v138 = v71;
    v82 = v156;
    v84 = sub_1D5D2F7A4(v67, sub_1D615B49C, v83, sub_1D615B4A4, (&v139 - 6));
    if (v82)
    {
      sub_1D5D2CFE8(v67, type metadata accessor for FormatVersionRequirement);

      v85 = v64;
    }

    else
    {
      v86 = v84;
      v87 = v145;
      v154 = v77;

      if (v86)
      {
        v157 = v155;
        LOBYTE(v158) = 0;
        v164 = v87;
        sub_1D5C34D84(0, &qword_1EDF04C88, &type metadata for FormatOptionsNodeStatement, MEMORY[0x1E69E62F8]);
        sub_1D665A5A4();
        v88 = v153;
        sub_1D72647EC();
        v89 = v149;
        v90 = v152;
        v156 = 0;
        v93 = v144;

        sub_1D5D2CFE8(v90, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        v156 = 0;
        sub_1D5D2CFE8(v152, type metadata accessor for FormatVersionRequirement);

        v88 = v153;
        v93 = v144;
        v89 = v149;
      }

      v94 = v147;
      swift_beginAccess();
      v95 = v94[5];
      v89(v93, v151, v146);
      swift_storeEnumTagMultiPayload();
      LOBYTE(v157) = 0;
      v96 = swift_allocObject();
      v155 = xmmword_1D7297410;
      *(v96 + 16) = xmmword_1D7297410;
      *(v96 + 32) = v157;
      *(v96 + 40) = v139;
      *(v96 + 48) = v140;

      v97 = sub_1D72647CC();
      LOBYTE(v157) = 0;
      v98 = swift_allocObject();
      *(v98 + 16) = v97;
      *(v98 + 24) = v155;
      *(v98 + 40) = v157;
      v99 = __swift_project_boxed_opaque_existential_1(v154, v154[3]);
      MEMORY[0x1EEE9AC00](v99, v100);
      MEMORY[0x1EEE9AC00](v101, v102);
      *(&v139 - 4) = sub_1D5B4AA6C;
      *(&v139 - 3) = 0;
      v137 = sub_1D6708AF8;
      v138 = v96;
      v103 = v156;
      v105 = sub_1D5D2F7A4(v93, sub_1D615B49C, v104, sub_1D615B4A4, (&v139 - 6));
      if (v103)
      {
        sub_1D5D2CFE8(v93, type metadata accessor for FormatVersionRequirement);

        v85 = v88;
      }

      else
      {
        v106 = v105;

        if (v106)
        {
          v157 = v155;
          LOBYTE(v158) = 0;
          *&v162 = v95;
          sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
          sub_1D66594A0();
          sub_1D72647EC();
          v156 = 0;

          sub_1D5D2CFE8(v93, type metadata accessor for FormatVersionRequirement);
        }

        else
        {
          v156 = 0;
          sub_1D5D2CFE8(v93, type metadata accessor for FormatVersionRequirement);
        }

        v107 = v147[6];
        v108 = v147[7];
        v109 = v147[9];
        v152 = v147[8];
        v111 = v147[10];
        v110 = v147[11];
        v112 = v146;
        v113 = v140;
        if (qword_1EDF31F38 != -1)
        {
          swift_once();
        }

        v114 = __swift_project_value_buffer(v112, qword_1EDFFCE38);
        v115 = v143;
        (v149)(v143, v114, v112);
        swift_storeEnumTagMultiPayload();
        v155 = xmmword_1D72BAA60;
        v162 = xmmword_1D72BAA60;
        v163 = 0;
        LOBYTE(v157) = 0;
        v116 = swift_allocObject();
        v118 = v116;
        *(v116 + 16) = v155;
        *(v116 + 32) = v157;
        *(v116 + 40) = v139;
        *(v116 + 48) = v113;
        if (v107)
        {
          v151 = &v139;
          v144 = v107;
          *&v157 = v107;
          *(&v157 + 1) = v108;
          v119 = v152;
          v158 = v152;
          v159 = v109;
          v145 = v109;
          v120 = v111;
          v160 = v111;
          v161 = v110;
          MEMORY[0x1EEE9AC00](v116, v117);
          v122 = v121;
          v150 = &v139 - 6;
          *(&v139 - 4) = sub_1D5B4AA6C;
          *(&v139 - 3) = 0;
          v137 = sub_1D6708AF8;
          v138 = v118;
          v167 = 0;
          v123 = swift_allocObject();
          *(v123 + 16) = v155;
          *(v123 + 32) = v167;
          *(v123 + 40) = v122;
          *(v123 + 48) = v113;
          swift_retain_n();
          sub_1D5EB1D80(v144, v108, v119, v145, v120);
          v124 = v153;
          v125 = sub_1D72647CC();
          v167 = 0;
          v126 = swift_allocObject();
          *(v126 + 16) = v125;
          *(v126 + 24) = v155;
          *(v126 + 40) = v167;
          v127 = __swift_project_boxed_opaque_existential_1(v154, v154[3]);
          MEMORY[0x1EEE9AC00](v127, v128);
          MEMORY[0x1EEE9AC00](v129, v130);
          v131 = v150;
          *(&v139 - 4) = sub_1D615B4A4;
          *(&v139 - 3) = v131;
          v137 = sub_1D6708AF8;
          v138 = v123;
          v132 = v156;
          v134 = sub_1D5D2F7A4(v115, sub_1D615B49C, v133, sub_1D615B4A4, (&v139 - 6));
          if (v132)
          {
          }

          else
          {
            v135 = v134;

            if (v135)
            {
              sub_1D6659A24();
              sub_1D72647EC();
            }
          }

          v136 = v160;

          sub_1D5CBF568(v136);

          sub_1D5D2CFE8(v115, type metadata accessor for FormatVersionRequirement);
        }

        else
        {

          sub_1D5D2CFE8(v115, type metadata accessor for FormatVersionRequirement);

          v124 = v153;
        }

        v85 = v124;
      }
    }

    return sub_1D5D2CFE8(v85, sub_1D66A76FC);
  }

  v85 = v64;
  return sub_1D5D2CFE8(v85, sub_1D66A76FC);
}

uint64_t sub_1D6539994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66A9ED4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65399CC(uint64_t a1)
{
  v2 = sub_1D5C58AB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6539A08(uint64_t a1)
{
  v2 = sub_1D5C58AB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatOptionsNodeStatement.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v95 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v101 = &v93 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  *&v107 = &v93 - v11;
  sub_1D66A7930();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v1;
  v18 = v1[1];
  v19 = *(v1 + 2);
  v114 = *(v1 + 1);
  v115 = v19;
  *v116 = *(v1 + 3);
  *&v116[15] = *(v1 + 63);
  v94 = v1[9];
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D5C593CC();
  v23 = v22;
  v24 = sub_1D5B58B84(&qword_1EDF24FD8, sub_1D5C593CC);
  sub_1D5D2EE70(&type metadata for FormatOptionsNodeStatement, v23, v25, v20, &type metadata for FormatOptionsNodeStatement, v23, &type metadata for FormatVersions.JazzkonG, v21, v16, v24, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCD18);
  v28 = *(v26 - 8);
  v29 = *(v28 + 16);
  v30 = v107;
  v102 = v27;
  v100 = v26;
  v98 = v29;
  v97 = v28 + 16;
  (v29)(v107);
  v96 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v108 = v17;
  *(&v108 + 1) = v18;
  v110 = 0uLL;
  LOBYTE(v111) = 0;
  v31 = &v16[*(v13 + 44)];
  v33 = *v31;
  v32 = *(v31 + 1);
  v113 = 0;
  v34 = swift_allocObject();
  v106 = &v93;
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v113;
  *(v34 + 40) = v33;
  *(v34 + 48) = v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  *(&v93 - 4) = sub_1D5B4AA6C;
  *(&v93 - 3) = 0;
  v91 = sub_1D6708AFC;
  v92 = v36;
  v113 = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v113;
  v99 = v33;
  *(v37 + 40) = v33;
  *(v37 + 48) = v32;
  sub_1D66A79C4();
  v39 = v38;
  v40 = sub_1D5B58B84(&qword_1EDF02F58, sub_1D66A79C4);
  swift_retain_n();
  v103 = v39;
  v104 = v40;
  v41 = sub_1D72647CC();
  v113 = 0;
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 16) = v41;
  *(v42 + 40) = v113;
  v43 = &v16[*(v13 + 36)];
  v105 = v16;
  v44 = __swift_project_boxed_opaque_existential_1(v43, *(v43 + 3));
  MEMORY[0x1EEE9AC00](v44, v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  *(&v93 - 4) = sub_1D615B4A4;
  *(&v93 - 3) = (&v93 - 6);
  v91 = sub_1D6708AFC;
  v92 = v37;
  v48 = v117;
  sub_1D5D2BC70(v30, sub_1D615B49C, v49, sub_1D615B4A4, (&v93 - 6));
  if (v48)
  {
    sub_1D5D2CFE8(v107, type metadata accessor for FormatVersionRequirement);

    v53 = v105;
    return sub_1D5D2CFE8(v53, sub_1D66A7930);
  }

  v50 = v102;
  v51 = v107;
  v93 = v43;
  v117 = v32;

  v52 = v105;
  sub_1D72647EC();
  sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);

  v55 = v101;
  v98(v101, v50, v100);
  swift_storeEnumTagMultiPayload();
  v110 = v114;
  v111 = v115;
  *v112 = *v116;
  *&v112[15] = *&v116[15];
  v107 = xmmword_1D728CF30;
  v108 = xmmword_1D728CF30;
  v109 = 0;
  v113 = 0;
  v56 = swift_allocObject();
  v102 = &v93;
  *(v56 + 16) = v107;
  *(v56 + 32) = v113;
  v57 = v99;
  v58 = v117;
  *(v56 + 40) = v99;
  *(v56 + 48) = v58;
  MEMORY[0x1EEE9AC00](v56, v59);
  v106 = 0;
  *(&v93 - 4) = sub_1D5B4AA6C;
  *(&v93 - 3) = 0;
  v91 = sub_1D6708AFC;
  v92 = v60;
  v113 = 0;
  v61 = v52;
  v62 = swift_allocObject();
  *(v62 + 16) = v107;
  *(v62 + 32) = v113;
  *(v62 + 40) = v57;
  *(v62 + 48) = v58;
  swift_retain_n();
  v63 = sub_1D72647CC();
  v113 = 0;
  v64 = swift_allocObject();
  *(v64 + 16) = v63;
  *(v64 + 24) = v107;
  *(v64 + 40) = v113;
  v65 = __swift_project_boxed_opaque_existential_1(v93, *(v93 + 3));
  MEMORY[0x1EEE9AC00](v65, v66);
  MEMORY[0x1EEE9AC00](v67, v68);
  *(&v93 - 4) = sub_1D615B4A4;
  *(&v93 - 3) = (&v93 - 6);
  v91 = sub_1D6708AFC;
  v92 = v62;
  v69 = v106;
  sub_1D5D2BC70(v55, sub_1D615B49C, v70, sub_1D615B4A4, (&v93 - 6));
  if (v69)
  {
    sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);

    v71 = v61;
LABEL_18:
    v53 = v71;
    return sub_1D5D2CFE8(v53, sub_1D66A7930);
  }

  sub_1D66A7A58();
  sub_1D72647EC();
  v71 = v61;
  v106 = 0;
  sub_1D5D2CFE8(v101, type metadata accessor for FormatVersionRequirement);

  v72 = qword_1EDF31E80;
  v73 = v94;

  if (v72 != -1)
  {
    swift_once();
  }

  v74 = v100;
  v75 = __swift_project_value_buffer(v100, qword_1EDFFCCA8);
  v76 = v95;
  v98(v95, v75, v74);
  swift_storeEnumTagMultiPayload();
  v77 = v117;
  v78 = v99;
  v79 = v93;
  if (!*(v73 + 16))
  {
LABEL_17:
    sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);

    goto LABEL_18;
  }

  LOBYTE(v110) = 0;
  v80 = swift_allocObject();
  v107 = xmmword_1D7297410;
  *(v80 + 16) = xmmword_1D7297410;
  *(v80 + 32) = v110;
  *(v80 + 40) = v78;
  *(v80 + 48) = v77;

  v81 = sub_1D72647CC();
  LOBYTE(v110) = 0;
  v82 = swift_allocObject();
  *(v82 + 16) = v81;
  *(v82 + 24) = v107;
  *(v82 + 40) = v110;
  v83 = __swift_project_boxed_opaque_existential_1(v79, *(v79 + 3));
  MEMORY[0x1EEE9AC00](v83, v84);
  MEMORY[0x1EEE9AC00](v85, v86);
  *(&v93 - 4) = sub_1D5B4AA6C;
  *(&v93 - 3) = 0;
  v91 = sub_1D66A7AAC;
  v92 = v80;
  v87 = v106;
  v89 = sub_1D5D2F7A4(v76, sub_1D615B49C, v88, sub_1D615B4A4, (&v93 - 6));
  if (!v87)
  {
    v90 = v89;

    if (v90)
    {
      v110 = v107;
      LOBYTE(v111) = 0;
      *&v108 = v73;
      sub_1D5C34D84(0, &qword_1EDF04AE8, &type metadata for FormatOptionsNodeStatementModifier, MEMORY[0x1E69E62F8]);
      sub_1D66A7B28();
      sub_1D72647EC();

      sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v71, sub_1D66A7930);
}

uint64_t sub_1D653A7A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66AA090(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D653A7D8(uint64_t a1)
{
  v2 = sub_1D5C594A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D653A814(uint64_t a1)
{
  v2 = sub_1D5C594A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatOptionsNodeStatementBinding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v29[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    v12 = a1;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    if (v14)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F51163B8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v12;
          goto LABEL_9;
        }
      }
    }

    sub_1D66A7BC4();
    *v29 = 0uLL;
    sub_1D726431C();
    if (v33 <= 1u)
    {
      v23 = v34;
      a1 = v12;
      *v29 = xmmword_1D7279980;
      if (v33)
      {
        sub_1D6677FFC();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v28 = 0;
        v24 = v33;
        v25 = 0uLL;
        v27 = 0x2000;
        v26 = 0uLL;
      }

      else
      {
        sub_1D5C98388();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v28 = 0;
        v27 = 0;
        v24 = v33;
        v26 = 0uLL;
        v25 = WORD4(v33);
      }
    }

    else
    {
      v23 = v34;
      a1 = v12;
      if (v33 == 2)
      {
        v33 = xmmword_1D7279980;
        sub_1D5C77160();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = *v29;
        v25 = *&v29[8];
        v28 = v30;
        v26 = v31;
        v27 = v32 & 0x7FF | 0x4000;
      }

      else
      {
        if (v33 == 3)
        {
          v33 = xmmword_1D7279980;
          sub_1D5CA38E4();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = *v29;
          v25 = *&v29[8];
          v26 = 0uLL;
          v27 = 24576;
        }

        else
        {
          v33 = xmmword_1D7279980;
          sub_1D6661B9C();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = *v29;
          v25 = *&v29[8];
          v26 = 0uLL;
          v27 = 0x8000;
        }

        v28 = v30;
      }
    }

    *v23 = v24;
    *(v23 + 8) = v25;
    *(v23 + 24) = v28;
    *(v23 + 32) = v26;
    *(v23 + 48) = v27;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatOptionsNodeStatementBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v50 = &v48 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v49 = &v48 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v48 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v48 - v18;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v1;
  v54 = *(v1 + 8);
  v55 = v24;
  v25 = *(v1 + 24);
  v52 = *(v1 + 16);
  v53 = v25;
  v26 = *(v1 + 32);
  v27 = *(v1 + 40);
  v28 = *(v1 + 48);
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  v31 = sub_1D5C30408();
  v62 = v23;
  sub_1D5D2EE70(&type metadata for FormatOptionsNodeStatementBinding, &type metadata for FormatCodingKeys, v32, v29, &type metadata for FormatOptionsNodeStatementBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Sydro, v30, v23, v31, &off_1F51F6C38);
  v33 = v28 >> 13;
  if (v28 >> 13 <= 1)
  {
    if (v33)
    {
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v45 = sub_1D725BD1C();
      v46 = __swift_project_value_buffer(v45, qword_1EDFFCDE0);
      (*(*(v45 - 8) + 16))(v15, v46, v45);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v37 = v62;
      sub_1D63871FC(1, v55, v15);
      v40 = v15;
    }

    else
    {
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v38 = sub_1D725BD1C();
      v39 = __swift_project_value_buffer(v38, qword_1EDFFCDE0);
      (*(*(v38 - 8) + 16))(v19, v39, v38);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v37 = v62;
      sub_1D6387064(0, v55, v54, v19);
      v40 = v19;
    }
  }

  else
  {
    if (v33 == 2)
    {
      *&v56 = v55;
      *(&v56 + 1) = v54;
      v57 = v52;
      v58 = v53;
      v59 = v26;
      v60 = v27;
      v61 = v28 & 0x1FFF;
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v41 = sub_1D725BD1C();
      v42 = __swift_project_value_buffer(v41, qword_1EDFFCDE0);
      v36 = v49;
      (*(*(v41 - 8) + 16))(v49, v42, v41);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v37 = v62;
      sub_1D6387390(2, &v56, v36);
    }

    else if (v33 == 3)
    {
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v34 = sub_1D725BD1C();
      v35 = __swift_project_value_buffer(v34, qword_1EDFFCE68);
      v36 = v50;
      (*(*(v34 - 8) + 16))(v50, v35, v34);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v37 = v62;
      sub_1D6387538(3, v55, v54, v52, v53, v36);
    }

    else
    {
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v43 = sub_1D725BD1C();
      v44 = __swift_project_value_buffer(v43, qword_1EDFFCE68);
      v36 = v51;
      (*(*(v43 - 8) + 16))(v51, v44, v43);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v37 = v62;
      sub_1D63876D4(4, v55, v54, v52, v53, v36);
    }

    v40 = v36;
  }

  sub_1D5D2CFE8(v40, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v37, sub_1D5D30DC4);
}

uint64_t sub_1D653B3A4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D653B46C()
{
  sub_1D72621EC();
}

uint64_t sub_1D653B520()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D653B5E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D66648E4();
  *a1 = result;
  return result;
}

uint64_t sub_1D653B6C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1954047348;
  if (v2 != 1)
  {
    v4 = 0x72656765746E69;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x74616F6C66;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1954047348;
  if (*a2 != 1)
  {
    v8 = 0x72656765746E69;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x74616F6C66;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D653B7B4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D653B84C()
{
  sub_1D72621EC();
}

uint64_t sub_1D653B8D0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D653B964@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6664930();
  *a1 = result;
  return result;
}

void sub_1D653B994(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1954047348;
  if (v2 != 1)
  {
    v5 = 0x72656765746E69;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74616F6C66;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatOptionsNodeStatementModifier.Float.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v102 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v101 = &v92 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v100 = &v92 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v99 = &v92 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v98 = &v92 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v97 = &v92 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v96 = &v92 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v95 = &v92 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v94 = &v92 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v92 - v33;
  MEMORY[0x1EEE9AC00](v35, v36);
  v93 = &v92 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v92 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v92 - v44;
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v92 - v48;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v50 - 8, v51);
  v53 = &v92 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *v2;
  v56 = a1[3];
  v55 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v56);
  v57 = sub_1D5C30408();
  v103 = v53;
  sub_1D5D2EE70(&type metadata for FormatOptionsNodeStatementModifier.Float, &type metadata for FormatCodingKeys, v58, v56, &type metadata for FormatOptionsNodeStatementModifier.Float, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v55, v53, v57, &off_1F51F6CF8);
  switch(v54)
  {
    case 1:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v79 = sub_1D725BD1C();
      v80 = __swift_project_value_buffer(v79, qword_1EDFFCCA8);
      (*(*(v79 - 8) + 16))(v45, v80, v79);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v61 = v103;
      sub_1D641919C(1, v45);
      v62 = v45;
      break;
    case 2:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v72 = sub_1D725BD1C();
      v73 = __swift_project_value_buffer(v72, qword_1EDFFCCA8);
      (*(*(v72 - 8) + 16))(v41, v73, v72);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v61 = v103;
      sub_1D641919C(2, v41);
      v62 = v41;
      break;
    case 3:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v74 = sub_1D725BD1C();
      v75 = __swift_project_value_buffer(v74, qword_1EDFFCCA8);
      v76 = v93;
      (*(*(v74 - 8) + 16))(v93, v75, v74);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v61 = v103;
      sub_1D641919C(3, v76);
      v62 = v76;
      break;
    case 4:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v66 = sub_1D725BD1C();
      v67 = __swift_project_value_buffer(v66, qword_1EDFFCCA8);
      (*(*(v66 - 8) + 16))(v34, v67, v66);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = 4;
      goto LABEL_44;
    case 5:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v81 = sub_1D725BD1C();
      v82 = __swift_project_value_buffer(v81, qword_1EDFFCCA8);
      v34 = v94;
      (*(*(v81 - 8) + 16))(v94, v82, v81);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = 5;
      goto LABEL_44;
    case 6:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v85 = sub_1D725BD1C();
      v86 = __swift_project_value_buffer(v85, qword_1EDFFCCA8);
      v34 = v95;
      (*(*(v85 - 8) + 16))(v95, v86, v85);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = 6;
      goto LABEL_44;
    case 7:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v77 = sub_1D725BD1C();
      v78 = __swift_project_value_buffer(v77, qword_1EDFFCCA8);
      v34 = v96;
      (*(*(v77 - 8) + 16))(v96, v78, v77);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = 7;
      goto LABEL_44;
    case 8:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v89 = sub_1D725BD1C();
      v90 = __swift_project_value_buffer(v89, qword_1EDFFCCA8);
      v34 = v97;
      (*(*(v89 - 8) + 16))(v97, v90, v89);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = 8;
      goto LABEL_44;
    case 9:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v70 = sub_1D725BD1C();
      v71 = __swift_project_value_buffer(v70, qword_1EDFFCCA8);
      v34 = v98;
      (*(*(v70 - 8) + 16))(v98, v71, v70);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = 9;
      goto LABEL_44;
    case 10:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v87 = sub_1D725BD1C();
      v88 = __swift_project_value_buffer(v87, qword_1EDFFCCA8);
      v34 = v99;
      (*(*(v87 - 8) + 16))(v99, v88, v87);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = 10;
      goto LABEL_44;
    case 11:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v63 = sub_1D725BD1C();
      v64 = __swift_project_value_buffer(v63, qword_1EDFFCCA8);
      v34 = v100;
      (*(*(v63 - 8) + 16))(v100, v64, v63);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = 11;
      goto LABEL_44;
    case 12:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v68 = sub_1D725BD1C();
      v69 = __swift_project_value_buffer(v68, qword_1EDFFCCA8);
      v34 = v101;
      (*(*(v68 - 8) + 16))(v101, v69, v68);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = 12;
      goto LABEL_44;
    case 13:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v83 = sub_1D725BD1C();
      v84 = __swift_project_value_buffer(v83, qword_1EDFFCCA8);
      v34 = v102;
      (*(*(v83 - 8) + 16))(v102, v84, v83);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = 13;
LABEL_44:
      v61 = v103;
      sub_1D641919C(v65, v34);
      v62 = v34;
      break;
    default:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v59 = sub_1D725BD1C();
      v60 = __swift_project_value_buffer(v59, qword_1EDFFCCA8);
      (*(*(v59 - 8) + 16))(v49, v60, v59);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v61 = v103;
      sub_1D641919C(0, v49);
      v62 = v49;
      break;
  }

  sub_1D5D2CFE8(v62, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v61, sub_1D5D30DC4);
}

unint64_t sub_1D653C73C(char a1)
{
  result = 0x7055646E756F72;
  switch(a1)
  {
    case 1:
      result = 0x776F44646E756F72;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x776F54646E756F72;
      break;
    case 6:
      result = 0x7470697263736564;
      break;
    case 7:
      result = 0x6F72655A7369;
      break;
    case 8:
      result = 0x6574696E69467369;
      break;
    case 9:
      result = 0x696E69666E497369;
      break;
    case 10:
      result = 0x4E614E7369;
      break;
    case 11:
      result = 0x6C616E6769537369;
      break;
    case 12:
      result = 0x6C616D726F4E7369;
      break;
    case 13:
      result = 0x726F6E6275537369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D653C94C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D666497C();
  *a1 = result;
  return result;
}

unint64_t sub_1D653C97C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D653C73C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatOptionsNodeStatementModifier.Text.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatOptionsNodeStatementModifier.Text, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatOptionsNodeStatementModifier.Text, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v17, v14, v18, &off_1F51F6CF8);
  if (v15)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCCA8);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D64192F0(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCCA8);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D64192F0(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D653CEC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7974706D457369;
  }

  else
  {
    v3 = 0x6874676E656CLL;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x7974706D457369;
  }

  else
  {
    v5 = 0x6874676E656CLL;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D653CF68()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D653CFE8()
{
  sub_1D72621EC();
}

uint64_t sub_1D653D054()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D653D0DC(uint64_t *a1@<X8>)
{
  v2 = 0x6874676E656CLL;
  if (*v1)
  {
    v2 = 0x7974706D457369;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D653D1C8()
{
  v1 = 0x73776F726874;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1D653D21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66AA200(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D653D254(uint64_t a1)
{
  v2 = sub_1D6662F40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D653D290(uint64_t a1)
{
  v2 = sub_1D6662F40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatOrExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v73 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v66 - v8;
  sub_1D66A7CC0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v72 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D5C5C6B4();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF25588, sub_1D5C5C6B4);
  sub_1D5D2EE70(&type metadata for FormatOrExpression, v19, v21, v16, &type metadata for FormatOrExpression, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v74 = v23;
  v75 = v22;
  v69 = v24 + 16;
  v70 = v25;
  (v25)(v9);
  v68 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v84 = v15;
  v82 = 0uLL;
  v83 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v81 = 0;
  v29 = swift_allocObject();
  v78 = &v66;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v81;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v80 = v9;
  *(&v66 - 4) = sub_1D5B4AA6C;
  *(&v66 - 3) = 0;
  v64 = sub_1D6708868;
  v65 = v31;
  v81 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v81;
  v71 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D66A7D54();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF035E8, sub_1D66A7D54);
  swift_retain_n();
  v76 = v35;
  v77 = v34;
  v36 = sub_1D72647CC();
  v81 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v81;
  v38 = &v14[*(v11 + 36)];
  v39 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
  MEMORY[0x1EEE9AC00](v39, v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  *(&v66 - 4) = sub_1D615B4A4;
  *(&v66 - 3) = (&v66 - 6);
  v43 = v79;
  v44 = v80;
  v64 = sub_1D66A7DE8;
  v65 = v32;
  sub_1D5D2BC70(v80, sub_1D615B49C, v45, sub_1D615B4A4, (&v66 - 6));
  if (v43)
  {
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v67 = v38;
    v47 = v74;
    v46 = v75;
    v79 = v28;

    v48 = sub_1D66596F4();
    sub_1D72647EC();
    v66 = v48;
    sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);

    v50 = v73;
    v70(v73, v47, v46);
    swift_storeEnumTagMultiPayload();
    v84 = v72;
    v80 = xmmword_1D728CF30;
    v82 = xmmword_1D728CF30;
    v83 = 0;
    v81 = 0;
    v51 = swift_allocObject();
    v78 = &v66;
    *(v51 + 16) = v80;
    *(v51 + 32) = v81;
    v52 = v71;
    v53 = v79;
    *(v51 + 40) = v71;
    *(v51 + 48) = v53;
    MEMORY[0x1EEE9AC00](v51, v54);
    *(&v66 - 4) = sub_1D5B4AA6C;
    *(&v66 - 3) = 0;
    v64 = sub_1D6708868;
    v65 = v55;
    v81 = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v80;
    *(v56 + 32) = v81;
    *(v56 + 40) = v52;
    *(v56 + 48) = v53;
    swift_retain_n();
    v57 = sub_1D72647CC();
    v81 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    *(v58 + 24) = v80;
    *(v58 + 40) = v81;
    v59 = __swift_project_boxed_opaque_existential_1(v67, *(v67 + 3));
    MEMORY[0x1EEE9AC00](v59, v60);
    MEMORY[0x1EEE9AC00](v61, v62);
    *(&v66 - 4) = sub_1D615B4A4;
    *(&v66 - 3) = (&v66 - 6);
    v64 = sub_1D6708868;
    v65 = v56;
    sub_1D5D2BC70(v50, sub_1D615B49C, v63, sub_1D615B4A4, (&v66 - 6));

    sub_1D72647EC();
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D66A7CC0);
}

uint64_t sub_1D653DB44(uint64_t a1)
{
  v2 = sub_1D5C5CB88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D653DB80(uint64_t a1)
{
  v2 = sub_1D5C5CB88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatOsloSheetPurchaseDataModel.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D66A7E64();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66A7EF8();
  sub_1D5B58B84(&qword_1EC886FF0, sub_1D66A7EF8);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v29;
  v14 = v7;
  if (v12)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v23 = *(v17 - 2);
      v22 = *(v17 - 1);

      v24 = sub_1D66205A8();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v25 = v23;
      *(v25 + 8) = v22;
      *(v25 + 16) = v24;
      *(v25 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  v30 = 0uLL;
  v31 = 0;
  v18 = sub_1D72642BC();
  v20 = v19;
  v21 = v18;
  v30 = xmmword_1D728CF30;
  v31 = 0;
  sub_1D66678A8();
  sub_1D726427C();
  (*(v14 + 8))(v10, v6);
  v27 = v32;
  *v13 = v21;
  v13[1] = v20;
  v13[2] = v27;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatOsloSheetPurchaseDataModel.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v75 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v67 - v8;
  sub_1D66A8078();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v74 = v1[2];
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D66A7EF8();
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EC886FF0, sub_1D66A7EF8);
  sub_1D5D2EE70(&type metadata for FormatOsloSheetPurchaseDataModel, v20, v22, v17, &type metadata for FormatOsloSheetPurchaseDataModel, v20, &type metadata for FormatVersions.DawnburstF, v18, v14, v21, &off_1F51F6BD8);
  if (qword_1EDF31F50 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCE80);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v77 = v24;
  v71 = v26;
  v72 = v23;
  v70 = v25 + 16;
  (v26)(v9);
  v69 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v84 = v15;
  v85 = v16;
  v82 = 0uLL;
  v83 = 0;
  v27 = &v14[*(v11 + 44)];
  v28 = *v27;
  v29 = *(v27 + 1);
  v86 = 0;
  v30 = swift_allocObject();
  *&v79 = &v67;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v86;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  *(&v67 - 4) = sub_1D5B4AA6C;
  *(&v67 - 3) = 0;
  v65 = sub_1D6708B00;
  v66 = v32;
  v86 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v86;
  v73 = v28;
  *(v33 + 40) = v28;
  *(v33 + 48) = v29;
  sub_1D66A810C();
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EC887008, sub_1D66A810C);
  swift_retain_n();
  v76 = v35;
  v78 = v36;
  v37 = sub_1D72647CC();
  v86 = 0;
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  *(v38 + 32) = 0;
  *(v38 + 16) = v37;
  *(v38 + 40) = v86;
  v39 = *(v11 + 36);
  v81 = v14;
  v40 = &v14[v39];
  v41 = __swift_project_boxed_opaque_existential_1(&v14[v39], *&v14[v39 + 24]);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  *(&v67 - 4) = sub_1D615B4A4;
  *(&v67 - 3) = (&v67 - 6);
  v65 = sub_1D6708B00;
  v66 = v33;
  v45 = v80;
  sub_1D5D2BC70(v9, sub_1D615B49C, v46, sub_1D615B4A4, (&v67 - 6));
  if (v45)
  {
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v47 = v81;
  }

  else
  {
    v68 = v40;
    v48 = v77;
    v80 = v29;

    v47 = v81;
    sub_1D72647EC();
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v49 = v75;
    v71(v75, v48, v72);
    swift_storeEnumTagMultiPayload();
    v79 = xmmword_1D728CF30;
    v82 = xmmword_1D728CF30;
    v83 = 0;
    LOBYTE(v84) = 0;
    v50 = swift_allocObject();
    v52 = v50;
    *(v50 + 16) = v79;
    *(v50 + 32) = v84;
    v54 = v73;
    v53 = v74;
    v55 = v80;
    *(v50 + 40) = v73;
    *(v50 + 48) = v55;
    if ((v53 & 0xF000000000000007) == 0x7000000000000007)
    {
    }

    else
    {
      v77 = &v67;
      v84 = v53;
      MEMORY[0x1EEE9AC00](v50, v51);
      *(&v67 - 4) = sub_1D5B4AA6C;
      *(&v67 - 3) = 0;
      v65 = sub_1D6708B00;
      v66 = v52;
      v86 = 0;
      v56 = swift_allocObject();
      *(v56 + 16) = v79;
      *(v56 + 32) = v86;
      *(v56 + 40) = v54;
      *(v56 + 48) = v55;
      swift_retain_n();
      sub_1D614F63C(v53);
      v57 = sub_1D72647CC();
      v86 = 0;
      v58 = swift_allocObject();
      *(v58 + 16) = v57;
      *(v58 + 24) = v79;
      *(v58 + 40) = v86;
      v59 = __swift_project_boxed_opaque_existential_1(v68, *(v68 + 3));
      MEMORY[0x1EEE9AC00](v59, v60);
      MEMORY[0x1EEE9AC00](v61, v62);
      *(&v67 - 4) = sub_1D615B4A4;
      *(&v67 - 3) = (&v67 - 6);
      v49 = v75;
      v65 = sub_1D66A81A0;
      v66 = v56;
      LOBYTE(v57) = sub_1D5D2F7A4(v75, sub_1D615B49C, v63, sub_1D615B4A4, (&v67 - 6));

      if (v57)
      {
        sub_1D66A821C();
        v47 = v81;
        sub_1D72647EC();

        sub_1D614F69C(v84);
      }

      else
      {

        sub_1D614F69C(v84);
        v47 = v81;
      }
    }

    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v47, sub_1D66A8078);
}

unint64_t sub_1D653E778()
{
  v1 = 1885433183;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_1D653E7D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66AA43C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D653E810(uint64_t a1)
{
  v2 = sub_1D66A7FD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D653E84C(uint64_t a1)
{
  v2 = sub_1D66A7FD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPackageDirectionHorizontal.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v25 = a2;
  sub_1D66A8270();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66A8304();
  sub_1D5B58B84(&qword_1EDF0C410, sub_1D66A8304);
  sub_1D7264B0C();
  if (v2)
  {
    v10 = v2;
LABEL_3:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  v12 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1D7264AFC();
  v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

  if (v14)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_9;
        }
      }

      v19 = *(v17 - 2);
      v18 = *(v17 - 1);

      v20 = sub_1D6628490(0x6C6C6F726373, 0xE600000000000000);
      sub_1D5E2D970();
      v10 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v11 + 8))(v9, v5);
      goto LABEL_3;
    }

LABEL_9:
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  if (sub_1D726434C())
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    sub_1D611EA90();
    sub_1D726431C();
    (*(v11 + 8))(v9, v5);
    v22 = v32;
  }

  else
  {
    (*(v11 + 8))(v9, v5);
    v22 = 2;
  }

  *v12 = v22;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPackageDirectionHorizontal.encode(to:)(void *a1)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66A8484();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D66A8304();
  v17 = v16;
  v18 = sub_1D5B58B84(&qword_1EDF0C410, sub_1D66A8304);
  sub_1D5D2EE70(&type metadata for FormatPackageDirectionHorizontal, v17, v19, v14, &type metadata for FormatPackageDirectionHorizontal, v17, &type metadata for FormatVersions.CrystalGlow, v15, v12, v18, &off_1F51F6B38);
  if (qword_1EDF31F48 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCE68);
  (*(*(v20 - 8) + 16))(v7, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  if (v13 == 2)
  {
    goto LABEL_4;
  }

  v44 = v13;
  v23 = &v12[*(v9 + 44)];
  v25 = *v23;
  v24 = *(v23 + 1);
  LOBYTE(v41) = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 32) = v41;
  *(v26 + 40) = v25;
  *(v26 + 48) = v24;
  sub_1D66A8518();
  v28 = v27;
  sub_1D5B58B84(&qword_1EDF02D58, sub_1D66A8518);

  v40 = v28;
  v29 = sub_1D72647CC();
  LOBYTE(v41) = 0;
  v30 = swift_allocObject();
  *(v30 + 24) = 0;
  *(v30 + 32) = 0;
  *(v30 + 16) = v29;
  *(v30 + 40) = v41;
  v31 = __swift_project_boxed_opaque_existential_1(&v12[*(v9 + 36)], *&v12[*(v9 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v31, v32);
  MEMORY[0x1EEE9AC00](v33, v34);
  *(&v40 - 4) = sub_1D5B4AA6C;
  *(&v40 - 3) = 0;
  v38 = sub_1D66A85AC;
  v39 = v26;
  v36 = sub_1D5D2F7A4(v7, sub_1D615B49C, v35, sub_1D615B4A4, (&v40 - 6));
  if (!v2)
  {
    v37 = v36;

    if (v37)
    {
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v45 = v44;
      sub_1D611EAE4();
      sub_1D72647EC();
    }

LABEL_4:
    sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v12, sub_1D66A8484);
  }

  sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v12, sub_1D66A8484);
}

uint64_t sub_1D653F06C()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x6C6C6F726373;
  }
}

uint64_t sub_1D653F09C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6C6F726373 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

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

uint64_t sub_1D653F184(uint64_t a1)
{
  v2 = sub_1D66A83DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D653F1C0(uint64_t a1)
{
  v2 = sub_1D66A83DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPackageList.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D66A8628();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66A86BC();
  sub_1D5B58B84(&qword_1EC887040, sub_1D66A86BC);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v29;
  v14 = v7;
  if (v12)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v23 = *(v17 - 2);
      v22 = *(v17 - 1);

      v24 = sub_1D6627E68(0x696669746E656469, 0xEA00000000007265, 0x736567616B636170, 0xE800000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v25 = v23;
      *(v25 + 8) = v22;
      *(v25 + 16) = v24;
      *(v25 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  v30 = 0uLL;
  v31 = 0;
  v18 = sub_1D72642BC();
  v20 = v19;
  v21 = v18;
  sub_1D5B5BF78(0, &qword_1EC887048, type metadata accessor for FormatPackage, MEMORY[0x1E69E62F8]);
  v30 = xmmword_1D728CF30;
  v31 = 0;
  sub_1D66A883C();
  sub_1D726431C();
  (*(v14 + 8))(v10, v6);
  v27 = v32;
  *v13 = v21;
  v13[1] = v20;
  v13[2] = v27;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPackageList.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v73 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v65 - v8;
  sub_1D66A8914();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v72 = v1[2];
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D66A86BC();
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EC887040, sub_1D66A86BC);
  sub_1D5D2EE70(&type metadata for FormatPackageList, v20, v22, v17, &type metadata for FormatPackageList, v20, &type metadata for FormatVersions.JazzkonC, v18, v14, v21, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
  v25 = *(v23 - 8);
  v69 = *(v25 + 16);
  v70 = v24;
  v74 = v23;
  v68 = v25 + 16;
  v69(v9);
  v67 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v82 = v15;
  v83 = v16;
  v80 = 0uLL;
  v81 = 0;
  v26 = &v14[*(v11 + 44)];
  v77 = v9;
  v27 = *v26;
  v28 = *(v26 + 1);
  v84 = 0;
  v29 = swift_allocObject();
  v78 = &v65;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v84;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *(&v65 - 4) = sub_1D5B4AA6C;
  *(&v65 - 3) = 0;
  v63 = sub_1D6708B04;
  v64 = v31;
  v84 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v84;
  v71 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D66A89A8();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EC887068, sub_1D66A89A8);
  swift_retain_n();
  v75 = v35;
  v76 = v34;
  v36 = sub_1D72647CC();
  v84 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v84;
  v38 = &v14[*(v11 + 36)];
  v39 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
  MEMORY[0x1EEE9AC00](v39, v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  *(&v65 - 4) = sub_1D615B4A4;
  *(&v65 - 3) = (&v65 - 6);
  v43 = v77;
  v63 = sub_1D66A8A3C;
  v64 = v32;
  v44 = v79;
  sub_1D5D2BC70(v77, sub_1D615B49C, v45, sub_1D615B4A4, (&v65 - 6));
  if (v44)
  {
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

    v47 = v14;
  }

  else
  {
    v66 = v38;
    v46 = v74;

    sub_1D72647EC();
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

    v49 = v73;
    (v69)(v73, v70, v46);
    swift_storeEnumTagMultiPayload();
    v82 = v72;
    v79 = xmmword_1D728CF30;
    v80 = xmmword_1D728CF30;
    v81 = 0;
    v84 = 0;
    v50 = swift_allocObject();
    v77 = &v65;
    *(v50 + 16) = v79;
    *(v50 + 32) = v84;
    v51 = v71;
    *(v50 + 40) = v71;
    *(v50 + 48) = v28;
    MEMORY[0x1EEE9AC00](v50, v52);
    *(&v65 - 4) = sub_1D5B4AA6C;
    *(&v65 - 3) = 0;
    v63 = sub_1D6708B04;
    v64 = v53;
    v84 = 0;
    v54 = swift_allocObject();
    *(v54 + 16) = v79;
    *(v54 + 32) = v84;
    *(v54 + 40) = v51;
    *(v54 + 48) = v28;
    swift_retain_n();
    v78 = v14;
    v55 = sub_1D72647CC();
    v84 = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v55;
    *(v56 + 24) = v79;
    *(v56 + 40) = v84;
    v57 = __swift_project_boxed_opaque_existential_1(v66, *(v66 + 3));
    MEMORY[0x1EEE9AC00](v57, v58);
    MEMORY[0x1EEE9AC00](v59, v60);
    *(&v65 - 4) = sub_1D615B4A4;
    *(&v65 - 3) = (&v65 - 6);
    v63 = sub_1D6708B04;
    v64 = v54;
    sub_1D5D2BC70(v49, sub_1D615B49C, v61, sub_1D615B4A4, (&v65 - 6));

    sub_1D5B5BF78(0, &qword_1EC887048, type metadata accessor for FormatPackage, MEMORY[0x1E69E62F8]);
    sub_1D66A8AB8();
    v62 = v78;
    sub_1D72647EC();
    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);

    v47 = v62;
  }

  return sub_1D5D2CFE8(v47, sub_1D66A8914);
}

uint64_t sub_1D653FE14()
{
  v1 = 0x736567616B636170;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1D653FE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66AA564(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D653FEA4(uint64_t a1)
{
  v2 = sub_1D66A8794();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D653FEE0(uint64_t a1)
{
  v2 = sub_1D66A8794();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D653FF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66AA684(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D653FF54(uint64_t a1)
{
  v2 = sub_1D5CAA444();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D653FF90(uint64_t a1)
{
  v2 = sub_1D5CAA444();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPattern.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  sub_1D66A8B90();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66A8C24();
  sub_1D5B58B84(&qword_1EDF0C3C0, sub_1D66A8C24);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v33;
  v14 = v7;
  if (v12)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v21 = *(v17 - 2);
      v20 = *(v17 - 1);

      v22 = sub_1D66206EC();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D62DC278();
  v30 = 0uLL;
  LOBYTE(v31) = 0;
  sub_1D726431C();
  v18 = v28;
  v30 = xmmword_1D728CF30;
  LOBYTE(v31) = 0;
  sub_1D66A8DA4();
  sub_1D726431C();
  v19 = v28;
  v28 = xmmword_1D7297410;
  v29 = 0;
  sub_1D66A8DF8();
  sub_1D726427C();
  (*(v14 + 8))(v10, v6);
  v25 = v31;
  v26 = v32;
  v27 = v30;
  *v13 = v18;
  *(v13 + 8) = v19;
  *(v13 + 16) = v27;
  *(v13 + 32) = v25;
  *(v13 + 40) = v26;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPattern.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v90 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v98 = &v85 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v85 - v11;
  sub_1D66A8E4C();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v91 = *(v1 + 1);
  v89 = v1[16];
  v19 = *(v1 + 4);
  v88 = *(v1 + 3);
  v87 = v19;
  v110 = v1[40];
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D66A8C24();
  v23 = v22;
  v24 = sub_1D5B58B84(&qword_1EDF0C3C0, sub_1D66A8C24);
  sub_1D5D2EE70(&type metadata for FormatPattern, v23, v25, v20, &type metadata for FormatPattern, v23, &type metadata for FormatVersions.JazzkonC, v21, v17, v24, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCD30);
  v28 = *(v26 - 8);
  v29 = *(v28 + 16);
  v95 = v27;
  v96 = v26;
  v93 = v28 + 16;
  v94 = v29;
  (v29)(v12);
  v92 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v107) = v18;
  v104 = 0uLL;
  LOBYTE(v105) = 0;
  v30 = &v17[*(v14 + 44)];
  v31 = *v30;
  v32 = *(v30 + 1);
  v109 = 0;
  v33 = swift_allocObject();
  v101 = &v85;
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v109;
  *(v33 + 40) = v31;
  *(v33 + 48) = v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  *&v103 = v12;
  *(&v85 - 4) = sub_1D5B4AA6C;
  *(&v85 - 3) = 0;
  v83 = sub_1D6708B08;
  v84 = v35;
  v109 = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = v109;
  v97 = v31;
  *(v36 + 40) = v31;
  *(v36 + 48) = v32;
  sub_1D66A8EE0();
  v38 = v37;
  v39 = sub_1D5B58B84(&qword_1EDF02B48, sub_1D66A8EE0);
  swift_retain_n();
  v99 = v38;
  v100 = v39;
  v40 = sub_1D72647CC();
  v109 = 0;
  v41 = swift_allocObject();
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 16) = v40;
  *(v41 + 40) = v109;
  v42 = &v17[*(v14 + 36)];
  v43 = __swift_project_boxed_opaque_existential_1(v42, *(v42 + 3));
  MEMORY[0x1EEE9AC00](v43, v44);
  MEMORY[0x1EEE9AC00](v45, v46);
  *(&v85 - 4) = sub_1D615B4A4;
  *(&v85 - 3) = (&v85 - 6);
  v47 = v102;
  v48 = v103;
  v83 = sub_1D6708B08;
  v84 = v36;
  sub_1D5D2BC70(v103, sub_1D615B49C, v49, sub_1D615B4A4, (&v85 - 6));
  if (v47)
  {
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

    v50 = v17;
  }

  else
  {
    v86 = v42;
    v102 = v32;

    sub_1D62DC2CC();
    sub_1D72647EC();
    v50 = v17;
    sub_1D5D2CFE8(v103, type metadata accessor for FormatVersionRequirement);

    v94(v98, v95, v96);
    swift_storeEnumTagMultiPayload();
    *&v107 = v91;
    v103 = xmmword_1D728CF30;
    v104 = xmmword_1D728CF30;
    LOBYTE(v105) = 0;
    v109 = 0;
    v51 = swift_allocObject();
    v101 = &v85;
    *(v51 + 16) = v103;
    *(v51 + 32) = v109;
    v52 = v97;
    v53 = v102;
    *(v51 + 40) = v97;
    *(v51 + 48) = v53;
    MEMORY[0x1EEE9AC00](v51, v54);
    *(&v85 - 4) = sub_1D5B4AA6C;
    *(&v85 - 3) = 0;
    v83 = sub_1D6708B08;
    v84 = v55;
    v109 = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v103;
    *(v56 + 32) = v109;
    *(v56 + 40) = v52;
    *(v56 + 48) = v53;
    swift_retain_n();
    v57 = sub_1D72647CC();
    v91 = 0;
    v58 = v57;
    v109 = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = v58;
    *(v59 + 24) = v103;
    *(v59 + 40) = v109;
    v60 = __swift_project_boxed_opaque_existential_1(v86, *(v86 + 3));
    MEMORY[0x1EEE9AC00](v60, v61);
    MEMORY[0x1EEE9AC00](v62, v63);
    *(&v85 - 4) = sub_1D615B4A4;
    *(&v85 - 3) = (&v85 - 6);
    v64 = v98;
    v83 = sub_1D6708B08;
    v84 = v56;
    v65 = v91;
    sub_1D5D2BC70(v98, sub_1D615B49C, v66, sub_1D615B4A4, (&v85 - 6));
    if (v65)
    {
      sub_1D5D2CFE8(v64, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D66A8F74();
      sub_1D72647EC();
      sub_1D5D2CFE8(v64, type metadata accessor for FormatVersionRequirement);

      v68 = v90;
      v94(v90, v95, v96);
      swift_storeEnumTagMultiPayload();
      v103 = xmmword_1D7297410;
      v107 = xmmword_1D7297410;
      v108 = 0;
      LOBYTE(v104) = 0;
      v69 = swift_allocObject();
      v71 = v69;
      *(v69 + 16) = v103;
      *(v69 + 32) = v104;
      v72 = v97;
      v73 = v102;
      *(v69 + 40) = v97;
      *(v69 + 48) = v73;
      if (v89 == 4)
      {
      }

      else
      {
        v101 = &v85;
        LOBYTE(v104) = v89;
        *(&v104 + 1) = v88;
        v105 = v87;
        v106 = v110 & 1;
        MEMORY[0x1EEE9AC00](v69, v70);
        *(&v85 - 4) = sub_1D5B4AA6C;
        *(&v85 - 3) = 0;
        v83 = sub_1D6708B08;
        v84 = v71;
        v109 = 0;
        v74 = swift_allocObject();
        *(v74 + 16) = v103;
        *(v74 + 32) = v109;
        *(v74 + 40) = v72;
        *(v74 + 48) = v73;
        swift_retain_n();
        v75 = sub_1D72647CC();
        v109 = 0;
        v76 = swift_allocObject();
        *(v76 + 16) = v75;
        *(v76 + 24) = v103;
        *(v76 + 40) = v109;
        v77 = __swift_project_boxed_opaque_existential_1(v86, *(v86 + 3));
        MEMORY[0x1EEE9AC00](v77, v78);
        MEMORY[0x1EEE9AC00](v79, v80);
        *(&v85 - 4) = sub_1D615B4A4;
        *(&v85 - 3) = (&v85 - 6);
        v68 = v90;
        v83 = sub_1D66A8FC8;
        v84 = v74;
        v82 = sub_1D5D2F7A4(v90, sub_1D615B49C, v81, sub_1D615B4A4, (&v85 - 6));

        if (v82)
        {
          sub_1D66A9044();
          sub_1D72647EC();
        }
      }

      sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v50, sub_1D66A8E4C);
}

uint64_t sub_1D6540F2C()
{
  v1 = 1701080941;
  v2 = 0x6E6F697469736F70;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x746E65746E6F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D6540F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66AABE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6540FD0(uint64_t a1)
{
  v2 = sub_1D66A8CFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D654100C(uint64_t a1)
{
  v2 = sub_1D66A8CFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPatternContent.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v39 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v29 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v10;
    if (v12)
    {
      v14 = sub_1D726433C();
      v15 = (v14 + 40);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v17 = v15 + 2;
        v18 = *v15;
        v15 += 2;
        if (v18 >= 4)
        {
          v19 = *(v17 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v20 = v19;
          *(v20 + 8) = v18;
          *(v20 + 16) = &unk_1F51164A8;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v13, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66A9098();
    v30 = 0uLL;
    sub_1D726431C();
    if (v38)
    {
      sub_1D5C30060(0, &qword_1EDF0CE68, sub_1D66A90EC, &type metadata for FormatPatternContent, type metadata accessor for FormatUserInterfaceValue);
      v38 = xmmword_1D7279980;
      sub_1D66A9140();
      sub_1D726431C();
      v22 = v39;
      (*(v7 + 8))(v13, v6);
      v23 = v30;
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      v25 = v24 | 0x8000000000000000;
    }

    else
    {
      v38 = xmmword_1D7279980;
      sub_1D5CA1FC8();
      sub_1D726431C();
      v22 = v39;
      (*(v7 + 8))(v13, v6);
      v25 = swift_allocObject();
      v26 = v35;
      *(v25 + 80) = v34;
      *(v25 + 96) = v26;
      *(v25 + 112) = v36;
      *(v25 + 128) = v37;
      v27 = v31;
      *(v25 + 16) = v30;
      *(v25 + 32) = v27;
      v28 = v33;
      *(v25 + 48) = v32;
      *(v25 + 64) = v28;
    }

    *v22 = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPatternContent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v34[-v9 - 8];
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v34[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatPatternContent, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatPatternContent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v17, v14, v18, &off_1F51F6C78);
  if (v15 < 0)
  {
    v27 = *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v28 = *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v29 = qword_1EDF31EB0;

    if (v29 != -1)
    {
      swift_once();
    }

    v30 = sub_1D725BD1C();
    v31 = __swift_project_value_buffer(v30, qword_1EDFFCD30);
    (*(*(v30 - 8) + 16))(v6, v31, v30);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63A2570(1, v27, v28, v6);

    v26 = v6;
  }

  else
  {
    v20 = *(v15 + 96);
    v35[4] = *(v15 + 80);
    v35[5] = v20;
    v35[6] = *(v15 + 112);
    v36 = *(v15 + 128);
    v21 = *(v15 + 32);
    v35[0] = *(v15 + 16);
    v22 = *(v15 + 48);
    v23 = *(v15 + 64);
    v35[1] = v21;
    v35[2] = v22;
    v35[3] = v23;
    sub_1D5D093E8(v35, v34);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v24 = sub_1D725BD1C();
    v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
    (*(*(v24 - 8) + 16))(v10, v25, v24);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63A23B8(0, v35, v10);
    sub_1D5D09904(v35);
    v26 = v10;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D6541808(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65746E4972657375;
  }

  else
  {
    v3 = 0x65746F6D6572;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xED00006563616672;
  }

  if (*a2)
  {
    v5 = 0x65746E4972657375;
  }

  else
  {
    v5 = 0x65746F6D6572;
  }

  if (*a2)
  {
    v6 = 0xED00006563616672;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D65418B8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6541944()
{
  sub_1D72621EC();
}

uint64_t sub_1D65419BC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6541A50(uint64_t *a1@<X8>)
{
  v2 = 0x65746F6D6572;
  if (*v1)
  {
    v2 = 0x65746E4972657375;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xED00006563616672;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D6541B48(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x746165706572;
  }

  else
  {
    v2 = 0x726F68636E61;
  }

  if (*a2)
  {
    v3 = 0x746165706572;
  }

  else
  {
    v3 = 0x726F68636E61;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D6541BC8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6541C38()
{
  sub_1D72621EC();
}

uint64_t sub_1D6541C8C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6541D04(uint64_t *a1@<X8>)
{
  v2 = 0x726F68636E61;
  if (*v1)
  {
    v2 = 0x746165706572;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t FormatPatternPosition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D66A91D0();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66A9264();
  sub_1D5B58B84(&qword_1EC887098, sub_1D66A9264);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v29;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6627E68(0x65766974616C6572, 0xE800000000000000, 0x656D7473756A6461, 0xEA0000000000746ELL);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D66A93E4();
  v27 = 0uLL;
  v28 = 0;
  sub_1D726431C();
  v17 = v25;
  v25 = xmmword_1D728CF30;
  v26 = 0;
  sub_1D66A9438();
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  v24 = v27;
  *v13 = v17;
  *(v13 + 8) = v24;
  *(v13 + 24) = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPatternPosition.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v71 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v65 - v8;
  sub_1D66A948C();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 1);
  v17 = *(v1 + 2);
  LODWORD(v70) = v1[24];
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D66A9264();
  v21 = v20;
  v22 = sub_1D5B58B84(&qword_1EC887098, sub_1D66A9264);
  sub_1D5D2EE70(&type metadata for FormatPatternPosition, v21, v23, v18, &type metadata for FormatPatternPosition, v21, &type metadata for FormatVersions.JazzkonC, v19, v14, v22, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
  v26 = *(v24 - 8);
  v27 = *(v26 + 16);
  v67 = v25;
  v68 = v24;
  v65[1] = v26 + 16;
  v66 = v27;
  (v27)(v9);
  v65[0] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v77) = v15;
  v79 = 0uLL;
  v80 = 0;
  v28 = &v14[*(v11 + 44)];
  v29 = *v28;
  v30 = *(v28 + 1);
  v81 = 0;
  v31 = swift_allocObject();
  v74 = v65;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v81;
  *(v31 + 40) = v29;
  *(v31 + 48) = v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  *&v76 = v9;
  v65[-4] = sub_1D5B4AA6C;
  v65[-3] = 0;
  v63 = sub_1D6708B0C;
  v64 = v33;
  v81 = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v81;
  v69 = v29;
  *(v34 + 40) = v29;
  *(v34 + 48) = v30;
  sub_1D66A9520();
  v36 = v35;
  v37 = sub_1D5B58B84(&qword_1EC8870B0, sub_1D66A9520);
  swift_retain_n();
  v72 = v37;
  v73 = v36;
  v38 = sub_1D72647CC();
  v81 = 0;
  v39 = swift_allocObject();
  *(v39 + 24) = 0;
  *(v39 + 32) = 0;
  *(v39 + 16) = v38;
  *(v39 + 40) = v81;
  v40 = &v14[*(v11 + 36)];
  v41 = __swift_project_boxed_opaque_existential_1(v40, *(v40 + 3));
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  v65[-4] = sub_1D615B4A4;
  v65[-3] = &v65[-6];
  v45 = v75;
  v46 = v76;
  v63 = sub_1D6708B0C;
  v64 = v34;
  sub_1D5D2BC70(v76, sub_1D615B49C, v47, sub_1D615B4A4, &v65[-6]);
  if (v45)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v48 = v14;
  }

  else
  {
    v75 = v40;

    sub_1D66A95B4();
    v48 = v14;
    sub_1D72647EC();
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v49 = v71;
    v66(v71, v67, v68);
    swift_storeEnumTagMultiPayload();
    v76 = xmmword_1D728CF30;
    v79 = xmmword_1D728CF30;
    v80 = 0;
    LOBYTE(v77) = 0;
    v50 = swift_allocObject();
    v52 = v50;
    *(v50 + 16) = v76;
    *(v50 + 32) = v77;
    v53 = v69;
    *(v50 + 40) = v69;
    *(v50 + 48) = v30;
    if (v70)
    {
    }

    else
    {
      v70 = v65;
      v77 = v16;
      v78 = v17;
      MEMORY[0x1EEE9AC00](v50, v51);
      v65[-4] = sub_1D5B4AA6C;
      v65[-3] = 0;
      v63 = sub_1D6708B0C;
      v64 = v52;
      v81 = 0;
      v55 = swift_allocObject();
      *(v55 + 16) = v76;
      *(v55 + 32) = v81;
      *(v55 + 40) = v53;
      *(v55 + 48) = v30;
      swift_retain_n();
      v74 = v48;
      v56 = sub_1D72647CC();
      v81 = 0;
      v57 = swift_allocObject();
      *(v57 + 16) = v56;
      *(v57 + 24) = v76;
      *(v57 + 40) = v81;
      v58 = __swift_project_boxed_opaque_existential_1(v75, *(v75 + 3));
      MEMORY[0x1EEE9AC00](v58, v59);
      MEMORY[0x1EEE9AC00](v60, v61);
      v65[-4] = sub_1D615B4A4;
      v65[-3] = &v65[-6];
      v49 = v71;
      v63 = sub_1D66A9608;
      v64 = v55;
      LOBYTE(v56) = sub_1D5D2F7A4(v71, sub_1D615B49C, v62, sub_1D615B4A4, &v65[-6]);

      if (v56)
      {
        sub_1D66A9684();
        v48 = v74;
        sub_1D72647EC();
      }

      else
      {
        v48 = v74;
      }
    }

    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v48, sub_1D66A948C);
}

uint64_t sub_1D654299C()
{
  v1 = 0x656D7473756A6461;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65766974616C6572;
  }
}

uint64_t sub_1D65429F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66AAD48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6542A2C(uint64_t a1)
{
  v2 = sub_1D66A933C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6542A68(uint64_t a1)
{
  v2 = sub_1D66A933C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPatternPositionAdjustment.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v25;
    if (v13)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F51164F8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66A96D8();
    v24 = 0uLL;
    sub_1D726431C();
    v23 = xmmword_1D7279980;
    sub_1D5C7B870();
    sub_1D726431C();
    (*(v11 + 8))(v10, v6);
    *v14 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPatternPositionAdjustment.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = v1[1];
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatPatternPositionAdjustment, &type metadata for FormatCodingKeys, v16, v13, &type metadata for FormatPatternPositionAdjustment, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v14, v10, v15, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v17 = sub_1D725BD1C();
  v18 = __swift_project_value_buffer(v17, qword_1EDFFCD30);
  (*(*(v17 - 8) + 16))(v6, v18, v17);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63892B0(v6, v11, v12);
  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v10, sub_1D5D30DC4);
}

uint64_t FormatPatternPositionRelative.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v42 = &v40 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v43 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v41 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v40 - v17;
  LODWORD(v45) = *v1;
  v19 = a1[3];
  v20 = a1[4];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v21 = sub_1D725BD1C();
  v22 = __swift_project_value_buffer(v21, qword_1EDFFCD30);
  v23 = *(*(v21 - 8) + 16);
  v23(v18, v22, v21);
  v24 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v25 = v49;
  sub_1D5D2BEC4(v18, sub_1D5B4AA6C, 0, v19, v20);
  result = sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);
  if (!v25)
  {
    v49 = v24;
    v27 = v46;
    v29 = v46[3];
    v28 = v46[4];
    v30 = __swift_project_boxed_opaque_existential_1(v46, v29);
    if (v45 > 1)
    {
      if (v45 == 2)
      {
        v45 = v30;
        v32 = v28;
        v33 = v42;
        v23(v42, v22, v21);
        swift_storeEnumTagMultiPayload();
        sub_1D5D2BEC4(v33, sub_1D5B4AA6C, 0, v29, v32);
        sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);
        __swift_project_boxed_opaque_existential_1(v27, v27[3]);
        sub_1D7264B3C();
      }

      else
      {
        v37 = v28;
        if (qword_1EDF31E98 != -1)
        {
          swift_once();
        }

        v38 = __swift_project_value_buffer(v21, qword_1EDFFCD00);
        v39 = v44;
        v23(v44, v38, v21);
        swift_storeEnumTagMultiPayload();
        sub_1D5D2BEC4(v39, sub_1D5B4AA6C, 0, v29, v37);
        sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);
        __swift_project_boxed_opaque_existential_1(v27, v27[3]);
        sub_1D7264B3C();
      }
    }

    else if (v45)
    {
      v34 = v28;
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v35 = __swift_project_value_buffer(v21, qword_1EDFFCD00);
      v36 = v43;
      v23(v43, v35, v21);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v36, sub_1D5B4AA6C, 0, v29, v34);
      sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
      __swift_project_boxed_opaque_existential_1(v27, v27[3]);
      sub_1D7264B3C();
    }

    else
    {
      v45 = v29;
      v31 = v41;
      v23(v41, v22, v21);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v31, sub_1D5B4AA6C, 0, v45, v28);
      sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
      __swift_project_boxed_opaque_existential_1(v27, v27[3]);
      sub_1D7264B3C();
    }

    __swift_mutable_project_boxed_opaque_existential_1(v47, v48);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v47);
  }

  return result;
}

uint64_t FormatPaywallBinding.Bool.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v32 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v32 - v13;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatPaywallBinding.Bool, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatPaywallBinding.Bool, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenE, v21, v18, v22, &off_1F51F6C18);
  if (v19)
  {
    if (v19 == 1)
    {
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v24 = sub_1D725BD1C();
      v25 = __swift_project_value_buffer(v24, qword_1EDFFCD98);
      (*(*(v24 - 8) + 16))(v10, v25, v24);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D642006C(1, v10);
      v26 = v10;
    }

    else
    {
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v29 = sub_1D725BD1C();
      v30 = __swift_project_value_buffer(v29, qword_1EDFFCD98);
      (*(*(v29 - 8) + 16))(v6, v30, v29);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D642006C(2, v6);
      v26 = v6;
    }
  }

  else
  {
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCD98);
    (*(*(v27 - 8) + 16))(v14, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D642006C(0, v14);
    v26 = v14;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t FormatPaywallBinding.Text.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v81 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v80 = &v75 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v79 = &v75 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v78 = &v75 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v75 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v77 = &v75 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v76 = &v75 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v75 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v75 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v75 - v36;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v41 = &v75 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *v2;
  v43 = a1[3];
  v44 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v43);
  v45 = sub_1D5C30408();
  v82 = v41;
  sub_1D5D2EE70(&type metadata for FormatPaywallBinding.Text, &type metadata for FormatCodingKeys, v46, v43, &type metadata for FormatPaywallBinding.Text, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenE, v44, v41, v45, &off_1F51F6C18);
  if (v42 > 4)
  {
    if (v42 <= 6)
    {
      if (v42 == 5)
      {
        v47 = v82;
        if (qword_1EDF31EE8 != -1)
        {
          swift_once();
        }

        v58 = sub_1D725BD1C();
        v59 = __swift_project_value_buffer(v58, qword_1EDFFCD98);
        (*(*(v58 - 8) + 16))(v19, v59, v58);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v54 = 5;
      }

      else
      {
        v47 = v82;
        if (qword_1EDF31EE0 != -1)
        {
          swift_once();
        }

        v73 = sub_1D725BD1C();
        v74 = __swift_project_value_buffer(v73, qword_1EDFFCD80);
        v19 = v78;
        (*(*(v73 - 8) + 16))(v78, v74, v73);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v54 = 6;
      }
    }

    else
    {
      if (v42 == 7)
      {
        if (qword_1EDF31EE0 != -1)
        {
          swift_once();
        }

        v64 = sub_1D725BD1C();
        v65 = __swift_project_value_buffer(v64, qword_1EDFFCD80);
        v19 = v79;
        (*(*(v64 - 8) + 16))(v79, v65, v64);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v54 = 7;
        v66 = v19;
        v47 = v82;
        goto LABEL_42;
      }

      if (v42 == 8)
      {
        v47 = v82;
        if (qword_1EDF31E80 != -1)
        {
          swift_once();
        }

        v52 = sub_1D725BD1C();
        v53 = __swift_project_value_buffer(v52, qword_1EDFFCCA8);
        v19 = v80;
        (*(*(v52 - 8) + 16))(v80, v53, v52);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v54 = 8;
      }

      else
      {
        v47 = v82;
        if (qword_1EDF31F48 != -1)
        {
          swift_once();
        }

        v69 = sub_1D725BD1C();
        v70 = __swift_project_value_buffer(v69, qword_1EDFFCE68);
        v19 = v81;
        (*(*(v69 - 8) + 16))(v81, v70, v69);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v54 = 9;
      }
    }

    v66 = v19;
LABEL_42:
    sub_1D641FF18(v54, v66);
    v57 = v19;
LABEL_43:
    sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v47, sub_1D5D30DC4);
  }

  if (v42 <= 1)
  {
    if (v42)
    {
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v71 = sub_1D725BD1C();
      v72 = __swift_project_value_buffer(v71, qword_1EDFFCD98);
      (*(*(v71 - 8) + 16))(v33, v72, v71);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v47 = v82;
      sub_1D641FF18(1, v33);
      v57 = v33;
    }

    else
    {
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v55 = sub_1D725BD1C();
      v56 = __swift_project_value_buffer(v55, qword_1EDFFCD80);
      (*(*(v55 - 8) + 16))(v37, v56, v55);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v47 = v82;
      sub_1D641FF18(0, v37);
      v57 = v37;
    }

    goto LABEL_43;
  }

  if (v42 != 2)
  {
    if (v42 == 3)
    {
      v47 = v82;
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v48 = sub_1D725BD1C();
      v49 = __swift_project_value_buffer(v48, qword_1EDFFCD98);
      v50 = v76;
      (*(*(v48 - 8) + 16))(v76, v49, v48);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v51 = 3;
    }

    else
    {
      v47 = v82;
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v67 = sub_1D725BD1C();
      v68 = __swift_project_value_buffer(v67, qword_1EDFFCD98);
      v50 = v77;
      (*(*(v67 - 8) + 16))(v77, v68, v67);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v51 = 4;
    }

    sub_1D641FF18(v51, v50);
    v57 = v50;
    goto LABEL_43;
  }

  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v60 = sub_1D725BD1C();
  v61 = __swift_project_value_buffer(v60, qword_1EDFFCD98);
  (*(*(v60 - 8) + 16))(v29, v61, v60);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v62 = v82;
  sub_1D641FF18(2, v29);
  sub_1D5D2CFE8(v29, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v62, sub_1D5D30DC4);
}

uint64_t sub_1D6544588()
{
  v1 = 0x676E6963617073;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x61746E6563726570;
  }
}

uint64_t sub_1D65445E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66AAE68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6544618(uint64_t a1)
{
  v2 = sub_1D6658090();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6544654(uint64_t a1)
{
  v2 = sub_1D6658090();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6544690@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6664338();
  *a1 = result;
  return result;
}

uint64_t FormatPercentage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v24[0] = a2;
  sub_1D66A97D4();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66A9868();
  sub_1D5B58B84(&qword_1EDF0C5E0, sub_1D66A9868);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v24[0];
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v20 = *(v16 - 2);
      v19 = *(v16 - 1);

      v21 = sub_1D6628490(0x61746E6563726570, 0xEA00000000006567);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  v24[1] = 0;
  v24[2] = 0;
  v25 = 0;
  sub_1D72642EC();
  v18 = v17;
  (*(v7 + 8))(v10, v6);
  *v13 = v18;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPercentage.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66A99E8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D66A9868();
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EDF0C5E0, sub_1D66A9868);
  sub_1D5D2EE70(&type metadata for FormatPercentage, v16, v18, v13, &type metadata for FormatPercentage, v16, &type metadata for FormatVersions.AzdenB, v14, v11, v17, &off_1F51F6AD8);
  if (qword_1EDF31EF8 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCDC8);
  (*(*(v19 - 8) + 16))(v6, v20, v19);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v46 = v12;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v21 = &v11[*(v8 + 44)];
  v23 = *v21;
  v22 = *(v21 + 1);
  v42 = 0;
  v24 = swift_allocObject();
  v41[2] = v41;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v42;
  *(v24 + 40) = v23;
  *(v24 + 48) = v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v41[-4] = sub_1D5B4AA6C;
  v41[-3] = 0;
  v39 = sub_1D6708B10;
  v40 = v26;
  v42 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v42;
  *(v27 + 40) = v23;
  *(v27 + 48) = v22;
  sub_1D66A9A7C();
  v29 = v28;
  sub_1D5B58B84(&qword_1EDF03748, sub_1D66A9A7C);
  swift_retain_n();
  v41[1] = v29;
  v30 = sub_1D72647CC();
  v42 = 0;
  v31 = swift_allocObject();
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  *(v31 + 16) = v30;
  *(v31 + 40) = v42;
  v32 = __swift_project_boxed_opaque_existential_1(&v11[*(v8 + 36)], *&v11[*(v8 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v32, v33);
  MEMORY[0x1EEE9AC00](v34, v35);
  v41[-4] = sub_1D615B4A4;
  v41[-3] = &v41[-6];
  v39 = sub_1D66A9B10;
  v40 = v27;
  v36 = v41[3];
  sub_1D5D2BC70(v6, sub_1D615B49C, v37, sub_1D615B4A4, &v41[-6]);
  if (v36)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D66A99E8);
}

uint64_t sub_1D6544F54()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x61746E6563726570;
  }
}

uint64_t sub_1D6544F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x61746E6563726570 && a2 == 0xEA00000000006567;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

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

uint64_t sub_1D6545080(uint64_t a1)
{
  v2 = sub_1D66A9940();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65450BC(uint64_t a1)
{
  v2 = sub_1D66A9940();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPlatform.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v26 = &v25 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v25 = &v25 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v25 - v14;
  v28 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  if (qword_1EDF31E90 != -1)
  {
    swift_once();
  }

  v18 = sub_1D725BD1C();
  v19 = __swift_project_value_buffer(v18, qword_1EDFFCCE8);
  v20 = *(*(v18 - 8) + 16);
  v20(v15, v19, v18);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v21 = v32;
  sub_1D5D2BEC4(v15, sub_1D5B4AA6C, 0, v16, v17);
  result = sub_1D5D2CFE8(v15, type metadata accessor for FormatVersionRequirement);
  if (!v21)
  {
    v23 = v29[3];
    v32 = v29[4];
    __swift_project_boxed_opaque_existential_1(v29, v23);
    if (v28)
    {
      v24 = v26;
      v20(v26, v19, v18);
    }

    else
    {
      v24 = v25;
      v20(v25, v19, v18);
    }

    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v24, sub_1D5B4AA6C, 0, v23, v32);
    sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  return result;
}

uint64_t sub_1D654554C(uint64_t a1)
{
  v2 = sub_1D5C8DB48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6545588(uint64_t a1)
{
  v2 = sub_1D5C8DB48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPointEquation.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v78 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v69 - v8;
  sub_1D66A9B8C();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v77 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D5CA7284();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF25498, sub_1D5CA7284);
  sub_1D5D2EE70(&type metadata for FormatPointEquation, v19, v21, v16, &type metadata for FormatPointEquation, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v74 = *(v24 + 16);
  v75 = v23;
  v73 = v24 + 16;
  v74(v9);
  v72 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v88 = v15;
  v86 = 0uLL;
  v87 = 0;
  v25 = &v14[*(v11 + 44)];
  v26 = *v25;
  v27 = *(v25 + 1);
  v85 = 0;
  v28 = swift_allocObject();
  v81 = v69;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v85;
  *(v28 + 40) = v26;
  *(v28 + 48) = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v83 = v9;
  v69[-4] = sub_1D5B4AA6C;
  v69[-3] = 0;
  v67 = sub_1D670888C;
  v68 = v30;
  v85 = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v85;
  v76 = v26;
  *(v31 + 40) = v26;
  *(v31 + 48) = v27;
  sub_1D66A9C20();
  v33 = v32;
  v34 = sub_1D5B58B84(&qword_1EDF034D8, sub_1D66A9C20);
  swift_retain_n();
  v79 = v34;
  v80 = v33;
  v35 = sub_1D72647CC();
  v85 = 0;
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  *(v36 + 32) = 0;
  *(v36 + 16) = v35;
  *(v36 + 40) = v85;
  v37 = *(v11 + 36);
  v82 = v14;
  v38 = &v14[v37];
  v39 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
  MEMORY[0x1EEE9AC00](v39, v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  v69[-4] = sub_1D615B4A4;
  v69[-3] = &v69[-6];
  v44 = v83;
  v43 = v84;
  v67 = sub_1D66A9CB4;
  v68 = v31;
  sub_1D5D2BC70(v83, sub_1D615B49C, v45, sub_1D615B4A4, &v69[-6]);
  if (v43)
  {
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);

    v51 = v82;
  }

  else
  {
    v70 = v38;
    v71 = v27;

    sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    v47 = v46;
    v48 = sub_1D66582DC();
    v49 = v82;
    sub_1D72647EC();
    v50 = v49;
    v69[1] = v48;
    v81 = v47;
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);

    v53 = v78;
    (v74)(v78, v75, v22);
    swift_storeEnumTagMultiPayload();
    v88 = v77;
    v84 = xmmword_1D728CF30;
    v86 = xmmword_1D728CF30;
    v87 = 0;
    v85 = 0;
    v54 = swift_allocObject();
    v83 = v69;
    *(v54 + 16) = v84;
    *(v54 + 32) = v85;
    v55 = v76;
    v56 = v71;
    *(v54 + 40) = v76;
    *(v54 + 48) = v56;
    MEMORY[0x1EEE9AC00](v54, v57);
    v69[-4] = sub_1D5B4AA6C;
    v69[-3] = 0;
    v67 = sub_1D670888C;
    v68 = v58;
    v85 = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = v84;
    *(v59 + 32) = v85;
    *(v59 + 40) = v55;
    *(v59 + 48) = v56;
    swift_retain_n();
    v60 = sub_1D72647CC();
    v85 = 0;
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = v84;
    *(v61 + 40) = v85;
    v62 = __swift_project_boxed_opaque_existential_1(v70, *(v70 + 3));
    MEMORY[0x1EEE9AC00](v62, v63);
    MEMORY[0x1EEE9AC00](v64, v65);
    v69[-4] = sub_1D615B4A4;
    v69[-3] = &v69[-6];
    v67 = sub_1D670888C;
    v68 = v59;
    sub_1D5D2BC70(v53, sub_1D615B49C, v66, sub_1D615B4A4, &v69[-6]);

    sub_1D72647EC();
    sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);

    v51 = v50;
  }

  return sub_1D5D2CFE8(v51, sub_1D66A9B8C);
}