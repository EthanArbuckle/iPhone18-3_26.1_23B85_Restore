uint64_t sub_1D657F1F0(uint64_t a1)
{
  v2 = sub_1D5CD7674();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D657F22C(uint64_t a1)
{
  v2 = sub_1D5CD7674();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatShareAttributionNode.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  sub_1D5C8CD38();
  v4 = *(v3 - 8);
  v70 = v3;
  *&v71 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v68 = &v59[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5C2E60C(0, &qword_1EDF3BD38, sub_1D5C62464, sub_1D5C624B8);
  v8 = v7;
  v69 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v59[-v10];
  sub_1D66B61F4();
  v13 = v12;
  v72 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v59[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1A0C4();
  sub_1D5B58B84(&qword_1EDF24FB8, sub_1D5E1A0C4);
  v17 = v73;
  sub_1D7264B0C();
  v18 = v17;
  if (v17)
  {
    v19 = a1;
LABEL_15:
    sub_1D61E4FBC(v19, v18);
    swift_willThrow();

    v36 = v19;
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v20 = v11;
  *&v73 = v8;
  v21 = v72;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = sub_1D7264AFC();
  v23 = Dictionary<>.errorOnUnknownKeys.getter(v22);

  v24 = v16;
  v19 = a1;
  if (v23)
  {
    v25 = sub_1D726433C();
    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = (v25 + 48);
      while (*v27 != 1)
      {
        v27 += 24;
        if (!--v26)
        {
          goto LABEL_8;
        }
      }

      v31 = *(v27 - 2);
      v30 = *(v27 - 1);

      v32 = sub_1D662291C();
      sub_1D5E2D970();
      v33 = swift_allocError();
      *v34 = v31;
      *(v34 + 8) = v30;
      *(v34 + 16) = v32;
      v18 = v33;
      *(v34 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v21 + 8))(v24, v13);
      goto LABEL_15;
    }

LABEL_8:
  }

  v28 = sub_1D5C31D18(v24, 0, 0, 0, sub_1D66B61F4);
  v66 = v29;
  v77 = xmmword_1D728CF30;
  LOBYTE(v78) = 0;
  sub_1D62E3758();
  sub_1D726431C();
  v65 = xmmword_1D7297410;
  v77 = xmmword_1D7297410;
  LOBYTE(v78) = 0;
  if (sub_1D726434C())
  {
    v75 = v65;
    v76 = 0;
    sub_1D5C62940();
    sub_1D726431C();
    v35 = v74;
    sub_1D5C82CD8(v74);
    sub_1D5C92A8C(v35);
  }

  else
  {
    v35 = 0xB000000000000008;
  }

  v77 = xmmword_1D72BAA60;
  LOBYTE(v78) = 0;
  sub_1D5C6411C();
  sub_1D726427C();
  *&v65 = v75;
  v64 = xmmword_1D72BAA70;
  v77 = xmmword_1D72BAA70;
  LOBYTE(v78) = 0;
  if (sub_1D726434C())
  {
    v75 = v64;
    v76 = 0;
    sub_1D5C9EEC4();
    v61 = v20;
    v38 = v73;
    sub_1D726431C();
    v62 = v28;
    *&v64 = v35;
    v39 = v19;
    v40 = v61;
    v63 = sub_1D725A74C();
    (*(v69 + 8))(v40, v38);
  }

  else
  {
    v62 = v28;
    *&v64 = v35;
    v39 = v19;
    v63 = MEMORY[0x1E69E7CC0];
  }

  v73 = xmmword_1D72BAA80;
  v77 = xmmword_1D72BAA80;
  LOBYTE(v78) = 0;
  v41 = sub_1D726434C();
  v42 = v70;
  if (v41)
  {
    v75 = v73;
    v76 = 0;
    sub_1D726431C();
    v43 = v71;
    v69 = v74;
  }

  else
  {
    v69 = 0;
    v43 = v71;
  }

  v73 = xmmword_1D72BAA90;
  v77 = xmmword_1D72BAA90;
  LOBYTE(v78) = 0;
  if (sub_1D726434C())
  {
    v75 = v73;
    v76 = 0;
    sub_1D5DF6A0C();
    sub_1D726431C();
    v44 = v24;
    v45 = v74;
    sub_1D5EB1500(v74);
    sub_1D5EB15C4(v45);
  }

  else
  {
    v44 = v24;
    v45 = 0x8000000000000000;
  }

  v73 = xmmword_1D72BAAA0;
  v77 = xmmword_1D72BAAA0;
  LOBYTE(v78) = 0;
  if (sub_1D726434C())
  {
    v75 = v73;
    v76 = 0;
    sub_1D726431C();
    v46 = v74;
  }

  else
  {
    v46 = 1;
  }

  LODWORD(v73) = v46;
  v77 = xmmword_1D72BAAB0;
  LOBYTE(v78) = 0;
  sub_1D5C6F27C();
  sub_1D726427C();
  v61 = v75;
  v60 = BYTE8(v75);
  v71 = xmmword_1D72BAAC0;
  v77 = xmmword_1D72BAAC0;
  LOBYTE(v78) = 0;
  if (sub_1D726434C())
  {
    v75 = v71;
    v76 = 0;
    sub_1D5B58B84(&qword_1EDF3BE00, sub_1D5C8CD38);
    sub_1D726431C();
    v47 = v42;
    v48 = v44;
    v49 = v68;
    v50 = sub_1D725A74C();
    v51 = v47;
    v52 = v50;
    (*(v43 + 8))(v49, v51);
  }

  else
  {
    v48 = v44;
    v52 = MEMORY[0x1E69E7CD0];
  }

  v75 = xmmword_1D72BAAD0;
  v76 = 0;
  sub_1D5C5C5C0();
  sub_1D726427C();
  (*(v21 + 8))(v48, v13);
  v53 = v78;
  v54 = v52;
  v55 = v67;
  *(v67 + 88) = v77;
  v56 = v66;
  *v55 = v62;
  *(v55 + 8) = v56;
  v57 = v65;
  *(v55 + 16) = v64;
  *(v55 + 24) = v57;
  v58 = v69;
  *(v55 + 32) = v63;
  *(v55 + 40) = v58;
  *(v55 + 48) = v45;
  *(v55 + 56) = v73;
  *(v55 + 57) = v74;
  *(v55 + 60) = *(&v74 + 3);
  *(v55 + 64) = v61;
  *(v55 + 72) = v60;
  *(v55 + 73) = *v80;
  *(v55 + 76) = *&v80[3];
  *(v55 + 80) = v54;
  *(v55 + 104) = v53;
  *(v55 + 120) = v79;
  v36 = v39;
  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t FormatShareAttributionNode.encode(to:)(void *a1)
{
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v249 - v5;
  v7 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v262 = &v249 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v263 = &v249 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v265 = &v249 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v266 = &v249 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v273 = &v249 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v269 = &v249 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v271 = &v249 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v275 = &v249 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v274 = &v249 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v284 = (&v249 - v36);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v249 - v39;
  sub_1D66B6288();
  *&v285 = v41;
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v249 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *v1;
  v45 = v1[1];
  v47 = v1[3];
  v276 = v1[2];
  v272 = v47;
  v48 = v1[5];
  v270 = v1[4];
  v268 = v48;
  v267 = v1[6];
  v297 = *(v1 + 56);
  v260 = v1[8];
  v264 = *(v1 + 72);
  v49 = v1[11];
  v261 = v1[10];
  v258 = v49;
  v50 = v1[13];
  v257 = v1[12];
  v256 = v50;
  v51 = v1[15];
  v255 = v1[14];
  v254 = v51;
  v259 = v1[16];
  v52 = a1[3];
  v53 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v52);
  sub_1D5E1A0C4();
  v55 = v54;
  v56 = sub_1D5B58B84(&qword_1EDF24FB8, sub_1D5E1A0C4);
  sub_1D5D2EE70(&type metadata for FormatShareAttributionNode, v55, v57, v52, &type metadata for FormatShareAttributionNode, v55, &type metadata for FormatVersions.StarSky, v53, v44, v56, &off_1F51F6CD8);
  v58 = qword_1EDF31ED0;

  if (v58 != -1)
  {
    swift_once();
  }

  v59 = sub_1D725BD1C();
  v60 = __swift_project_value_buffer(v59, qword_1EDFFCD50);
  v61 = *(v59 - 8);
  v62 = *(v61 + 16);
  v63 = v61 + 16;
  v283 = v60;
  v62(v40);
  v64 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v287 = v46;
  sub_1D725892C();
  v65 = sub_1D725895C();
  v66 = (*(*(v65 - 8) + 48))(v6, 1, v65);
  v280 = v59;
  v279 = v62;
  v281 = v63;
  v282 = v64;
  v286 = v44;
  if (v66 == 1)
  {
    sub_1D5D35558(v6, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v67 = v285;
    v68 = &v44[*(v285 + 44)];
    v70 = *v68;
    v69 = *(v68 + 1);
    LOBYTE(v289) = 0;
    v71 = swift_allocObject();
    *(v71 + 16) = 0;
    *(v71 + 24) = 0;
    *(v71 + 32) = v289;
    *(v71 + 40) = v70;
    *(v71 + 48) = v69;
    sub_1D5E1A088(0);
    sub_1D5B58B84(&qword_1EDF02F38, sub_1D5E1A088);

    v72 = sub_1D72647CC();
    LOBYTE(v289) = 0;
    v73 = swift_allocObject();
    *(v73 + 24) = 0;
    *(v73 + 32) = 0;
    *(v73 + 16) = v72;
    *(v73 + 40) = v289;
    v74 = __swift_project_boxed_opaque_existential_1(&v44[*(v67 + 36)], *&v44[*(v67 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v74, v75);
    MEMORY[0x1EEE9AC00](v76, v77);
    *(&v249 - 4) = sub_1D5B4AA6C;
    *(&v249 - 3) = 0;
    v247 = sub_1D66B631C;
    v248 = v71;
    v78 = v288;
    v80 = sub_1D5D2F7A4(v40, sub_1D615B49C, v79, sub_1D615B4A4, (&v249 - 6));
    *&v288 = v78;
    if (v78)
    {
      sub_1D5D2CFE8(v40, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v286, sub_1D66B6288);
    }

    v105 = v80;
    v44 = v286;

    if (v105)
    {
      v289 = 0uLL;
      LOBYTE(v290) = 0;
      *&v294 = v287;
      *(&v294 + 1) = v45;
      v106 = v288;
      sub_1D72647EC();

      sub_1D5D2CFE8(v40, type metadata accessor for FormatVersionRequirement);
      v59 = v280;
      v62 = v279;
      if (v106)
      {
        v104 = v44;
        return sub_1D5D2CFE8(v104, sub_1D66B6288);
      }

      *&v288 = 0;
    }

    else
    {
      sub_1D5D2CFE8(v40, type metadata accessor for FormatVersionRequirement);

      v59 = v280;
      v62 = v279;
    }
  }

  else
  {
    sub_1D5D2CFE8(v40, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v6, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v82 = v284;
  (v62)(v284, v283, v59);
  swift_storeEnumTagMultiPayload();
  v287 = xmmword_1D728CF30;
  v289 = xmmword_1D728CF30;
  LOBYTE(v290) = 0;
  v83 = v285;
  v84 = &v44[*(v285 + 44)];
  v86 = *v84;
  v85 = *(v84 + 1);
  LOBYTE(v294) = 0;
  v87 = swift_allocObject();
  v278 = &v249;
  *(v87 + 16) = v287;
  *(v87 + 32) = v294;
  *(v87 + 40) = v86;
  *(v87 + 48) = v85;
  MEMORY[0x1EEE9AC00](v87, v88);
  v277 = &v249 - 6;
  *(&v249 - 4) = sub_1D5B4AA6C;
  *(&v249 - 3) = 0;
  v247 = sub_1D6708B64;
  v248 = v89;
  LOBYTE(v294) = 0;
  v90 = swift_allocObject();
  *(v90 + 16) = v287;
  *(v90 + 32) = v294;
  v251 = v86;
  *(v90 + 40) = v86;
  *(v90 + 48) = v85;
  sub_1D5E1A088(0);
  v92 = v91;
  v93 = sub_1D5B58B84(&qword_1EDF02F38, sub_1D5E1A088);
  v250 = v85;
  swift_retain_n();
  v253 = v92;
  v252 = v93;
  v94 = sub_1D72647CC();
  LOBYTE(v294) = 0;
  v95 = swift_allocObject();
  *(v95 + 16) = v94;
  *(v95 + 24) = v287;
  *(v95 + 40) = v294;
  v96 = &v44[*(v83 + 36)];
  v97 = __swift_project_boxed_opaque_existential_1(v96, *(v96 + 3));
  MEMORY[0x1EEE9AC00](v97, v98);
  MEMORY[0x1EEE9AC00](v99, v100);
  v101 = v277;
  *(&v249 - 4) = sub_1D615B4A4;
  *(&v249 - 3) = v101;
  v247 = sub_1D6708B64;
  v248 = v90;
  v102 = v288;
  sub_1D5D2BC70(v82, sub_1D615B49C, v103, sub_1D615B4A4, (&v249 - 6));
  if (v102)
  {
    sub_1D5D2CFE8(v82, type metadata accessor for FormatVersionRequirement);

LABEL_10:
    v104 = v286;
    return sub_1D5D2CFE8(v104, sub_1D66B6288);
  }

  *&v287 = v96;

  sub_1D62E37AC();
  sub_1D72647EC();
  sub_1D5D2CFE8(v284, type metadata accessor for FormatVersionRequirement);

  v107 = v274;
  v108 = v283;
  v109 = v280;
  v110 = v279;
  (v279)(v274, v283, v280);
  swift_storeEnumTagMultiPayload();
  v111 = v276;
  if (((v111 >> 59) & 0x1E | (v111 >> 2) & 1) == 0x16 && v276 == 0xB000000000000008)
  {
    sub_1D5C82CD8(0xB000000000000008);
    sub_1D5D2CFE8(v107, type metadata accessor for FormatVersionRequirement);
    v112 = v250;
    v113 = v273;
  }

  else
  {
    LOBYTE(v289) = 0;
    v130 = swift_allocObject();
    v288 = xmmword_1D7297410;
    *(v130 + 16) = xmmword_1D7297410;
    *(v130 + 32) = v289;
    *(v130 + 40) = v251;
    *(v130 + 48) = v250;

    sub_1D5C82CD8(v111);
    v131 = v107;
    v132 = sub_1D72647CC();
    LOBYTE(v289) = 0;
    v133 = swift_allocObject();
    *(v133 + 16) = v132;
    *(v133 + 24) = v288;
    *(v133 + 40) = v289;
    v134 = __swift_project_boxed_opaque_existential_1(v287, *(v287 + 24));
    MEMORY[0x1EEE9AC00](v134, v135);
    MEMORY[0x1EEE9AC00](v136, v137);
    *(&v249 - 4) = sub_1D5B4AA6C;
    *(&v249 - 3) = 0;
    v247 = sub_1D6708B64;
    v248 = v130;
    v139 = sub_1D5D2F7A4(v131, sub_1D615B49C, v138, sub_1D615B4A4, (&v249 - 6));
    v142 = v139;

    v113 = v273;
    if (v142)
    {
      v289 = v288;
      LOBYTE(v290) = 0;
      *&v294 = v276;
      sub_1D5CA1E90();
      sub_1D72647EC();
      v110 = v279;
      v109 = v280;
      sub_1D5C92A8C(v294);
      sub_1D5D2CFE8(v274, type metadata accessor for FormatVersionRequirement);
      v108 = v283;
      v112 = v250;
    }

    else
    {
      sub_1D5C92A8C(v276);
      sub_1D5D2CFE8(v274, type metadata accessor for FormatVersionRequirement);
      v110 = v279;
      v108 = v283;
      v112 = v250;
      v109 = v280;
    }
  }

  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v114 = __swift_project_value_buffer(v109, qword_1EDFFCD68);
  v115 = v275;
  v110(v275, v114, v109);
  swift_storeEnumTagMultiPayload();
  v285 = xmmword_1D72BAA60;
  v289 = xmmword_1D72BAA60;
  LOBYTE(v290) = 0;
  LOBYTE(v294) = 0;
  v116 = swift_allocObject();
  v118 = v116;
  *(v116 + 16) = v285;
  *(v116 + 32) = v294;
  v119 = v251;
  *(v116 + 40) = v251;
  *(v116 + 48) = v112;
  if (!v272)
  {

    v140 = v113;
    v141 = v271;
    goto LABEL_34;
  }

  v284 = &v249;
  *&v294 = v272;
  MEMORY[0x1EEE9AC00](v116, v117);
  *&v288 = 0;
  *(&v249 - 4) = sub_1D5B4AA6C;
  *(&v249 - 3) = 0;
  v247 = sub_1D6708B64;
  v248 = v118;
  v296 = 0;
  v120 = swift_allocObject();
  *(v120 + 16) = v285;
  *(v120 + 32) = v296;
  *(v120 + 40) = v119;
  *(v120 + 48) = v112;
  swift_retain_n();

  v121 = sub_1D72647CC();
  v296 = 0;
  v122 = swift_allocObject();
  *(v122 + 16) = v121;
  *(v122 + 24) = v285;
  *(v122 + 40) = v296;
  v123 = __swift_project_boxed_opaque_existential_1(v287, *(v287 + 24));
  MEMORY[0x1EEE9AC00](v123, v124);
  MEMORY[0x1EEE9AC00](v125, v126);
  *(&v249 - 4) = sub_1D615B4A4;
  *(&v249 - 3) = (&v249 - 6);
  v247 = sub_1D6708B64;
  v248 = v120;
  v127 = v288;
  v129 = sub_1D5D2F7A4(v115, sub_1D615B49C, v128, sub_1D615B4A4, (&v249 - 6));
  if (!v127)
  {
    v143 = v129;

    v140 = v273;
    v141 = v271;
    if (v143)
    {
      sub_1D6659D24();
      sub_1D72647EC();
      v109 = v280;
      v110 = v279;
      v108 = v283;
    }

    else
    {

      v109 = v280;
      v110 = v279;
      v108 = v283;
    }

    v112 = v250;
LABEL_34:
    sub_1D5D2CFE8(v275, type metadata accessor for FormatVersionRequirement);
    v110(v141, v108, v109);
    swift_storeEnumTagMultiPayload();
    if (*(v270 + 16))
    {
      LOBYTE(v289) = 0;
      v144 = swift_allocObject();
      v288 = xmmword_1D72BAA70;
      *(v144 + 16) = xmmword_1D72BAA70;
      *(v144 + 32) = v289;
      *(v144 + 40) = v251;
      *(v144 + 48) = v112;

      v145 = sub_1D72647CC();
      LOBYTE(v289) = 0;
      v146 = swift_allocObject();
      *(v146 + 16) = v145;
      *(v146 + 24) = v288;
      *(v146 + 40) = v289;
      v147 = __swift_project_boxed_opaque_existential_1(v287, *(v287 + 24));
      MEMORY[0x1EEE9AC00](v147, v148);
      MEMORY[0x1EEE9AC00](v149, v150);
      *(&v249 - 4) = sub_1D5B4AA6C;
      *(&v249 - 3) = 0;
      v247 = sub_1D6708B64;
      v248 = v144;
      v152 = sub_1D5D2F7A4(v141, sub_1D615B49C, v151, sub_1D615B4A4, (&v249 - 6));
      v155 = v152;

      if (v155)
      {
        v289 = v288;
        LOBYTE(v290) = 0;
        *&v294 = v270;
        sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
        sub_1D6659C88();
        sub_1D72647EC();
        v110 = v279;
        v108 = v283;
        v109 = v280;

        sub_1D5D2CFE8(v271, type metadata accessor for FormatVersionRequirement);
        v112 = v250;
        v154 = v273;
      }

      else
      {
        sub_1D5D2CFE8(v271, type metadata accessor for FormatVersionRequirement);

        v110 = v279;
        v108 = v283;
        v112 = v250;
        v154 = v273;
        v109 = v280;
      }
    }

    else
    {
      v153 = v141;
      v154 = v140;
      sub_1D5D2CFE8(v153, type metadata accessor for FormatVersionRequirement);
    }

    v156 = v269;
    v110(v269, v108, v109);
    swift_storeEnumTagMultiPayload();
    if (v268)
    {
      LOBYTE(v289) = 0;
      v157 = swift_allocObject();
      v288 = xmmword_1D72BAA80;
      *(v157 + 16) = xmmword_1D72BAA80;
      *(v157 + 32) = v289;
      *(v157 + 40) = v251;
      *(v157 + 48) = v112;

      v158 = sub_1D72647CC();
      LOBYTE(v289) = 0;
      v159 = swift_allocObject();
      *(v159 + 16) = v158;
      *(v159 + 24) = v288;
      *(v159 + 40) = v289;
      v160 = __swift_project_boxed_opaque_existential_1(v287, *(v287 + 24));
      MEMORY[0x1EEE9AC00](v160, v161);
      MEMORY[0x1EEE9AC00](v162, v163);
      *(&v249 - 4) = sub_1D5B4AA6C;
      *(&v249 - 3) = 0;
      v247 = sub_1D6708B64;
      v248 = v157;
      LOBYTE(v158) = sub_1D5D2F7A4(v156, sub_1D615B49C, v164, sub_1D615B4A4, (&v249 - 6));

      v165 = v273;
      if (v158)
      {
        v289 = v288;
        LOBYTE(v290) = 0;
        *&v294 = v268;
        sub_1D72647EC();
        v110 = v279;
        v109 = v280;
        sub_1D5D2CFE8(v269, type metadata accessor for FormatVersionRequirement);
        v108 = v283;
        v112 = v250;
        v110(v165, v283, v109);
      }

      else
      {
        sub_1D5D2CFE8(v269, type metadata accessor for FormatVersionRequirement);
        v110 = v279;
        v108 = v283;
        v112 = v250;
        v109 = v280;
        (v279)(v165, v283, v280);
      }
    }

    else
    {
      sub_1D5D2CFE8(v156, type metadata accessor for FormatVersionRequirement);
      v165 = v154;
      v110(v154, v108, v109);
    }

    swift_storeEnumTagMultiPayload();
    if (v267 == 0x8000000000000000)
    {
      sub_1D5EB1500(0x8000000000000000);
      sub_1D5D2CFE8(v165, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      LOBYTE(v289) = 0;
      v168 = v267;
      v169 = swift_allocObject();
      v288 = xmmword_1D72BAA90;
      *(v169 + 16) = xmmword_1D72BAA90;
      *(v169 + 32) = v289;
      *(v169 + 40) = v251;
      *(v169 + 48) = v112;

      sub_1D5EB1500(v168);
      v170 = sub_1D72647CC();
      LOBYTE(v289) = 0;
      v171 = swift_allocObject();
      *(v171 + 16) = v170;
      *(v171 + 24) = v288;
      *(v171 + 40) = v289;
      v172 = __swift_project_boxed_opaque_existential_1(v287, *(v287 + 24));
      MEMORY[0x1EEE9AC00](v172, v173);
      MEMORY[0x1EEE9AC00](v174, v175);
      *(&v249 - 4) = sub_1D5B4AA6C;
      *(&v249 - 3) = 0;
      v247 = sub_1D6708B64;
      v248 = v169;
      v177 = sub_1D5D2F7A4(v165, sub_1D615B49C, v176, sub_1D615B4A4, (&v249 - 6));
      v187 = v177;

      if (v187)
      {
        v289 = v288;
        LOBYTE(v290) = 0;
        *&v294 = v267;
        sub_1D5DF6A60();
        sub_1D72647EC();
        v110 = v279;
        v188 = v273;
        v109 = v280;
        sub_1D5EB15C4(v294);
        sub_1D5D2CFE8(v188, type metadata accessor for FormatVersionRequirement);
        v108 = v283;
        v112 = v250;
      }

      else
      {
        sub_1D5EB15C4(v267);
        sub_1D5D2CFE8(v273, type metadata accessor for FormatVersionRequirement);
        v110 = v279;
        v108 = v283;
        v112 = v250;
        v109 = v280;
      }
    }

    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v166 = __swift_project_value_buffer(v109, qword_1EDFFCD00);
    v167 = v266;
    v110(v266, v166, v109);
    swift_storeEnumTagMultiPayload();
    if (v297)
    {
      *&v288 = 0;
      sub_1D5D2CFE8(v167, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      LOBYTE(v289) = 0;
      v178 = swift_allocObject();
      v288 = xmmword_1D72BAAA0;
      *(v178 + 16) = xmmword_1D72BAAA0;
      *(v178 + 32) = v289;
      *(v178 + 40) = v251;
      *(v178 + 48) = v112;

      v179 = sub_1D72647CC();
      LOBYTE(v289) = 0;
      v180 = swift_allocObject();
      *(v180 + 16) = v179;
      *(v180 + 24) = v288;
      *(v180 + 40) = v289;
      v181 = __swift_project_boxed_opaque_existential_1(v287, *(v287 + 24));
      MEMORY[0x1EEE9AC00](v181, v182);
      MEMORY[0x1EEE9AC00](v183, v184);
      *(&v249 - 4) = sub_1D5B4AA6C;
      *(&v249 - 3) = 0;
      v247 = sub_1D6708B64;
      v248 = v178;
      v186 = sub_1D5D2F7A4(v167, sub_1D615B49C, v185, sub_1D615B4A4, (&v249 - 6));
      v189 = v186;

      if (v189)
      {
        v289 = v288;
        LOBYTE(v290) = 0;
        LOBYTE(v294) = 0;
        sub_1D72647EC();
        v110 = v279;
        *&v288 = 0;
        sub_1D5D2CFE8(v167, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        *&v288 = 0;
        sub_1D5D2CFE8(v167, type metadata accessor for FormatVersionRequirement);
        v110 = v279;
      }

      v108 = v283;
      v112 = v250;
    }

    v190 = v265;
    v110(v265, v108, v280);
    swift_storeEnumTagMultiPayload();
    v285 = xmmword_1D72BAAB0;
    v289 = xmmword_1D72BAAB0;
    LOBYTE(v290) = 0;
    LOBYTE(v294) = 0;
    v191 = swift_allocObject();
    v193 = v191;
    *(v191 + 16) = v285;
    *(v191 + 32) = v294;
    v194 = v251;
    *(v191 + 40) = v251;
    *(v191 + 48) = v112;
    if (v264 <= 0xFD)
    {
      *&v294 = v260;
      BYTE8(v294) = v264;
      MEMORY[0x1EEE9AC00](v191, v192);
      *(&v249 - 4) = sub_1D5B4AA6C;
      *(&v249 - 3) = 0;
      v247 = sub_1D6708B64;
      v248 = v193;
      v296 = 0;
      v209 = swift_allocObject();
      *(v209 + 16) = v285;
      *(v209 + 32) = v296;
      *(v209 + 40) = v194;
      *(v209 + 48) = v112;
      swift_retain_n();
      v210 = sub_1D72647CC();
      v296 = 0;
      v211 = swift_allocObject();
      *(v211 + 16) = v210;
      *(v211 + 24) = v285;
      *(v211 + 40) = v296;
      v212 = __swift_project_boxed_opaque_existential_1(v287, *(v287 + 24));
      MEMORY[0x1EEE9AC00](v212, v213);
      MEMORY[0x1EEE9AC00](v214, v215);
      *(&v249 - 4) = sub_1D615B4A4;
      *(&v249 - 3) = (&v249 - 6);
      v247 = sub_1D6708B64;
      v248 = v209;
      v216 = v288;
      v218 = sub_1D5D2F7A4(v190, sub_1D615B49C, v217, sub_1D615B4A4, (&v249 - 6));
      if (v216)
      {
        sub_1D5D2CFE8(v190, type metadata accessor for FormatVersionRequirement);

        goto LABEL_10;
      }

      v220 = v218;

      if (v220)
      {
        sub_1D5F8F434();
        sub_1D72647EC();
        v195 = 0;
        v196 = v263;
        v197 = v261;
        v110 = v279;
        v198 = v265;
        v112 = v250;
      }

      else
      {
        v196 = v263;
        v197 = v261;
        v110 = v279;
        v198 = v265;
        v112 = v250;
        v195 = 0;
      }
    }

    else
    {

      v195 = v288;
      v196 = v263;
      v197 = v261;
      v198 = v190;
    }

    sub_1D5D2CFE8(v198, type metadata accessor for FormatVersionRequirement);

    v110(v196, v283, v280);
    swift_storeEnumTagMultiPayload();
    v199 = v251;
    if (*(v197 + 16))
    {
      LOBYTE(v289) = 0;
      v200 = swift_allocObject();
      v288 = xmmword_1D72BAAC0;
      *(v200 + 16) = xmmword_1D72BAAC0;
      *(v200 + 32) = v289;
      *(v200 + 40) = v199;
      *(v200 + 48) = v112;

      v201 = sub_1D72647CC();
      LOBYTE(v289) = 0;
      v202 = swift_allocObject();
      *(v202 + 16) = v201;
      *(v202 + 24) = v288;
      *(v202 + 40) = v289;
      v203 = __swift_project_boxed_opaque_existential_1(v287, *(v287 + 24));
      MEMORY[0x1EEE9AC00](v203, v204);
      MEMORY[0x1EEE9AC00](v205, v206);
      *(&v249 - 4) = sub_1D5B4AA6C;
      *(&v249 - 3) = 0;
      v247 = sub_1D6708B64;
      v248 = v200;
      v208 = sub_1D5D2F7A4(v196, sub_1D615B49C, v207, sub_1D615B4A4, (&v249 - 6));
      if (v195)
      {

        sub_1D5D2CFE8(v196, type metadata accessor for FormatVersionRequirement);
        goto LABEL_10;
      }

      v221 = v208;

      if (v221)
      {
        sub_1D5E06CC8(v197, v286, 9, 0, 0);
      }

      v219 = v262;
      v110 = v279;
    }

    else
    {
      v219 = v262;
    }

    v222 = v258;
    sub_1D5D2CFE8(v263, type metadata accessor for FormatVersionRequirement);
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v223 = v280;
    v224 = __swift_project_value_buffer(v280, qword_1EDFFCE38);
    v110(v219, v224, v223);
    swift_storeEnumTagMultiPayload();
    v285 = xmmword_1D72BAAD0;
    v294 = xmmword_1D72BAAD0;
    v295 = 0;
    LOBYTE(v289) = 0;
    v225 = swift_allocObject();
    v227 = v225;
    *(v225 + 16) = v285;
    *(v225 + 32) = v289;
    v228 = v250;
    *(v225 + 40) = v251;
    *(v225 + 48) = v228;
    if (v222)
    {
      v284 = &v249;
      v229 = v257;
      *&v289 = v222;
      *(&v289 + 1) = v257;
      *&v288 = v195;
      v230 = v256;
      v231 = v255;
      v290 = v256;
      v291 = v255;
      v232 = v254;
      v292 = v254;
      v293 = v259;
      MEMORY[0x1EEE9AC00](v225, v226);
      v283 = &v249 - 6;
      *(&v249 - 4) = sub_1D5B4AA6C;
      *(&v249 - 3) = 0;
      v247 = sub_1D6708B64;
      v248 = v227;
      v296 = 0;
      v233 = swift_allocObject();
      *(v233 + 16) = v285;
      *(v233 + 32) = v296;
      *(v233 + 40) = v251;
      *(v233 + 48) = v228;
      swift_retain_n();
      sub_1D5EB1D80(v222, v229, v230, v231, v232);
      v234 = v286;
      v235 = sub_1D72647CC();
      v296 = 0;
      v236 = swift_allocObject();
      *(v236 + 16) = v235;
      *(v236 + 24) = v285;
      *(v236 + 40) = v296;
      v237 = __swift_project_boxed_opaque_existential_1(v287, *(v287 + 24));
      MEMORY[0x1EEE9AC00](v237, v238);
      MEMORY[0x1EEE9AC00](v239, v240);
      v241 = v283;
      *(&v249 - 4) = sub_1D615B4A4;
      *(&v249 - 3) = v241;
      v247 = sub_1D6708B64;
      v248 = v233;
      v242 = v288;
      v244 = sub_1D5D2F7A4(v262, sub_1D615B49C, v243, sub_1D615B4A4, (&v249 - 6));
      if (v242)
      {
      }

      else
      {
        v245 = v244;

        if (v245)
        {
          sub_1D6659A24();
          sub_1D72647EC();
        }
      }

      v246 = v292;

      sub_1D5CBF568(v246);

      sub_1D5D2CFE8(v262, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v219, type metadata accessor for FormatVersionRequirement);

      v234 = v286;
    }

    v104 = v234;
    return sub_1D5D2CFE8(v104, sub_1D66B6288);
  }

  sub_1D5D2CFE8(v275, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v286, sub_1D66B6288);
}

uint64_t sub_1D6582AA4(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x726F7463656C6573;
    v7 = 2019912806;
    if (a1 != 10)
    {
      v7 = 1885433183;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x696C696269736976;
    v9 = 0xD000000000000018;
    if (a1 != 7)
    {
      v9 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x696669746E656469;
    v2 = 0x657A69736572;
    v3 = 0x656D7473756A6461;
    if (a1 != 4)
    {
      v3 = 0x7865646E497ALL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x746E65746E6F63;
    if (a1 != 1)
    {
      v4 = 1702521203;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D6582C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66B8158(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6582C5C(uint64_t a1)
{
  v2 = sub_1D5E1A19C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6582C98(uint64_t a1)
{
  v2 = sub_1D5E1A19C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatShareAttributionNodeBinding.init(from:)(void *a1)
{
  v2 = v1;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v1)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v2);
    swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v10 = sub_1D7264AFC();
    v11 = Dictionary<>.errorOnUnknownKeys.getter(v10);

    if (v11)
    {
      v12 = sub_1D726433C();
      v13 = (v12 + 40);
      v14 = *(v12 + 16) + 1;
      while (--v14)
      {
        v15 = v13 + 2;
        v16 = *v13;
        v13 += 2;
        if (v16 >= 4)
        {
          v17 = *(v15 - 3);

          sub_1D5E2D970();
          v2 = swift_allocError();
          *v18 = v17;
          *(v18 + 8) = v16;
          *(v18 + 16) = &unk_1F5117158;
          *(v18 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v6 + 8))(v9, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B63AC();
    v20 = 0uLL;
    sub_1D726431C();
    v20 = xmmword_1D7279980;
    sub_1D66B6400();
    sub_1D726431C();
    (*(v6 + 8))(v9, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatShareAttributionNodeBinding.encode(to:)(void *a1)
{
  v2 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatShareAttributionNodeBinding, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatShareAttributionNodeBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v11, v9, v12, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCD50);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D6386EE8(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t sub_1D6583354()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6583448()
{
  sub_1D72621EC();
}

uint64_t sub_1D6583528()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t FormatShineAlphaProcessor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v26 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (!v2)
  {
    v11 = v6;
    v12 = v27;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    v15 = v9;
    if (v14)
    {
      v16 = sub_1D726433C();
      v17 = (v16 + 40);
      v18 = *(v16 + 16) + 1;
      while (--v18)
      {
        v19 = v17 + 2;
        v20 = *v17;
        v17 += 2;
        if (v20 >= 4)
        {
          v21 = *(v19 - 3);

          sub_1D5E2D970();
          v10 = swift_allocError();
          *v22 = v21;
          *(v22 + 8) = v20;
          *(v22 + 16) = &unk_1F51171F8;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B6454();
    v28 = 0uLL;
    sub_1D726431C();
    if (v29)
    {
      if (v29 == 1)
      {
        sub_1D5C30060(0, &qword_1EDF127B8, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatValue);
        v28 = xmmword_1D7279980;
        sub_1D665B74C();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v24 = 0;
        v25 = v29;
LABEL_17:
        *v12 = v25;
        *(v12 + 8) = v24;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      (*(v11 + 8))(v15, v5);
      v25 = 1;
    }

    else
    {
      (*(v11 + 8))(v15, v5);
      v25 = 0;
    }

    v24 = 1;
    goto LABEL_17;
  }

LABEL_9:
  sub_1D61E4FBC(a1, v10);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatShineAlphaProcessor.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v45 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v45 - v13;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = *(v1 + 8);
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v23 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatShineAlphaProcessor, &type metadata for FormatCodingKeys, v24, v21, &type metadata for FormatShineAlphaProcessor, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v22, v18, v23, &off_1F51F6C78);
  sub_1D5B58478();
  v26 = *(v25 + 48);
  if (v20 == 1)
  {
    v27 = *(v25 + 64);
    if (v19 == 0.0)
    {
      v39 = &v14[v27];
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v40 = sub_1D725BD1C();
      v41 = __swift_project_value_buffer(v40, qword_1EDFFCD30);
      v42 = *(*(v40 - 8) + 16);
      v42(v14, v41, v40);
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v43 = __swift_project_value_buffer(v40, qword_1EDFFCE68);
      v42(&v14[v26], v43, v40);
      type metadata accessor for FormatVersionRequirement.Value(0);
      *v39 = 0;
      *(v39 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      sub_1D641B404(0, v14);
      v33 = v14;
    }

    else
    {
      v28 = &v6[v27];
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v29 = sub_1D725BD1C();
      v30 = __swift_project_value_buffer(v29, qword_1EDFFCD30);
      v31 = *(*(v29 - 8) + 16);
      v31(v6, v30, v29);
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v32 = __swift_project_value_buffer(v29, qword_1EDFFCE68);
      v31(&v6[v26], v32, v29);
      type metadata accessor for FormatVersionRequirement.Value(0);
      *v28 = 0;
      *(v28 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      sub_1D641B404(2, v6);
      v33 = v6;
    }
  }

  else
  {
    v34 = &v10[*(v25 + 64)];
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v35 = sub_1D725BD1C();
    v36 = __swift_project_value_buffer(v35, qword_1EDFFCD30);
    v37 = *(*(v35 - 8) + 16);
    v37(v10, v36, v35);
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v35, qword_1EDFFCE68);
    v37(&v10[v26], v38, v35);
    type metadata accessor for FormatVersionRequirement.Value(0);
    *v34 = 0;
    *(v34 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    sub_1D638FFE0(1, v10, v19);
    v33 = v10;
  }

  sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D6583EFC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6465786966;
  if (v2 != 1)
  {
    v4 = 0x636E616E696D756CLL;
    v3 = 0xE900000000000065;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6465786966;
  if (*a2 != 1)
  {
    v8 = 0x636E616E696D756CLL;
    v7 = 0xE900000000000065;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
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

uint64_t sub_1D6583FF8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6584094()
{
  sub_1D72621EC();
}

uint64_t sub_1D658411C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65841B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6664468();
  *a1 = result;
  return result;
}

void sub_1D65841E4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6465786966;
  if (v2 != 1)
  {
    v5 = 0x636E616E696D756CLL;
    v4 = 0xE900000000000065;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D65842EC()
{
  v1 = 0x726F6C6F63;
  v2 = 0x6F72506168706C61;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x646F4D646E656C62;
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

uint64_t sub_1D658436C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66B8530(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65843A4(uint64_t a1)
{
  v2 = sub_1D666717C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65843E0(uint64_t a1)
{
  v2 = sub_1D666717C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatShineColor.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v38 - v10;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v2;
  v17 = *(v2 + 64);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatShineColor, &type metadata for FormatCodingKeys, v21, v18, &type metadata for FormatShineColor, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v19, v15, v20, &off_1F51F6C78);
  if (v17)
  {
    v38 = v16;
    v39 = *(v2 + 8);
    v40 = *(v2 + 24);
    v41 = *(v2 + 40);
    v42 = *(v2 + 56);
    sub_1D5B58478();
    v23 = *(v22 + 48);
    v24 = &v7[*(v22 + 64)];
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v25 = sub_1D725BD1C();
    v26 = __swift_project_value_buffer(v25, qword_1EDFFCD30);
    v27 = *(*(v25 - 8) + 16);
    v27(v7, v26, v25);
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v25, qword_1EDFFCE68);
    v27(&v7[v23], v28, v25);
    type metadata accessor for FormatVersionRequirement.Value(0);
    *v24 = 0;
    *(v24 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    sub_1D63B4A10(1, &v38, v7);
    v29 = v7;
  }

  else
  {
    sub_1D5B58478();
    v31 = *(v30 + 48);
    v32 = &v11[*(v30 + 64)];
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCD30);
    v35 = *(*(v33 - 8) + 16);
    v35(v11, v34, v33);
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v36 = __swift_project_value_buffer(v33, qword_1EDFFCE68);
    v35(&v11[v31], v36, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    *v32 = 0;
    *(v32 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    sub_1D63B487C(0, v16, v11);
    v29 = v11;
  }

  sub_1D5D2CFE8(v29, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v15, sub_1D5D30DC4);
}

uint64_t sub_1D6584870(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746E656964617267;
  }

  else
  {
    v3 = 0x64696C6F73;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x746E656964617267;
  }

  else
  {
    v5 = 0x64696C6F73;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
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

uint64_t sub_1D6584914()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6584994()
{
  sub_1D72621EC();
}

uint64_t sub_1D6584A00()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6584A88(uint64_t *a1@<X8>)
{
  v2 = 0x64696C6F73;
  if (*v1)
  {
    v2 = 0x746E656964617267;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatShineOptions.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  sub_1D66B64FC();
  v7 = v6;
  v43 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66B6590();
  sub_1D5B58B84(&qword_1EC8871F0, sub_1D66B6590);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v42 = a2;
  v11 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v14 = v43;
  v15 = v10;
  if (v13)
  {
    v16 = sub_1D726433C();
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (v16 + 48);
      while (*v18 != 1)
      {
        v18 += 24;
        if (!--v17)
        {
          goto LABEL_7;
        }
      }

      v23 = *(v18 - 2);
      v22 = *(v18 - 1);

      v24 = sub_1D6622BD0();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v25 = v23;
      *(v25 + 8) = v22;
      *(v25 + 16) = v24;
      *(v25 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v14 + 8))(v10, v7);
      a1 = v11;
      goto LABEL_10;
    }

LABEL_7:
  }

  v48 = 0uLL;
  LOBYTE(v49) = 0;
  v19 = sub_1D72642BC();
  v21 = v20;
  v48 = xmmword_1D728CF30;
  LOBYTE(v49) = 0;
  sub_1D5B570F8();
  sub_1D726431C();
  v27 = v46;
  v48 = xmmword_1D7297410;
  LOBYTE(v49) = 0;
  sub_1D61817B8();
  sub_1D726431C();
  v41 = v27;
  LODWORD(v27) = v46;
  v48 = xmmword_1D72BAA60;
  LOBYTE(v49) = 0;
  sub_1D72642DC();
  v40 = v27;
  v29 = v28;
  v46 = xmmword_1D72BAA70;
  v47 = 0;
  sub_1D5CD77CC();
  sub_1D726431C();
  v38 = v49;
  v39 = v48;
  v37 = v50;
  LODWORD(v27) = v51;
  sub_1D5C34D84(0, &qword_1EC8871F8, &type metadata for FormatShineBlend, MEMORY[0x1E69E62F8]);
  v48 = xmmword_1D72BAA80;
  LOBYTE(v49) = 0;
  sub_1D66B6710();
  sub_1D726431C();
  v35 = v27;
  v36 = v46;
  v48 = xmmword_1D72BAA90;
  LOBYTE(v49) = 0;
  sub_1D5B57870();
  sub_1D726431C();
  (*(v14 + 8))(v15, v7);
  v30 = v46;
  v31 = v41;
  v32 = v42;
  *v42 = v19;
  v32[1] = v21;
  v32[2] = v31;
  *(v32 + 24) = v40;
  *(v32 + 25) = *v45;
  *(v32 + 7) = *&v45[3];
  v32[4] = v29;
  v33 = v39;
  *(v32 + 7) = v38;
  *(v32 + 5) = v33;
  v32[9] = v37;
  *(v32 + 80) = v35;
  *(v32 + 81) = *v44;
  *(v32 + 21) = *&v44[3];
  v32[11] = v36;
  v32[12] = v30;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatShineOptions.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v193 = &v190 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v195 = &v190 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v190 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v201 = &v190 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v202 = &v190 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v204 = &v190 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v190 - v24;
  sub_1D66B67AC();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v190 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v1 + 8);
  v215 = *v1;
  v203 = *(v1 + 16);
  v225 = *(v1 + 24);
  v32 = *(v1 + 32);
  v198 = *(v1 + 56);
  v199 = *(v1 + 40);
  v197 = *(v1 + 72);
  v196 = *(v1 + 80);
  v194 = *(v1 + 88);
  v33 = *(v1 + 96);
  v34 = a1[3];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v34);
  sub_1D66B6590();
  v37 = v36;
  v38 = sub_1D5B58B84(&qword_1EC8871F0, sub_1D66B6590);
  v217 = v30;
  sub_1D5D2EE70(&type metadata for FormatShineOptions, v37, v39, v34, &type metadata for FormatShineOptions, v37, &type metadata for FormatVersions.JazzkonC, v35, v30, v38, &off_1F51F6C78);
  sub_1D5B58478();
  v41 = *(v40 + 48);
  v42 = &v25[*(v40 + 64)];
  if (qword_1EDF31EB0 != -1)
  {
    v151 = v40;
    swift_once();
    v40 = v151;
  }

  v200 = v12;
  v212 = v40;
  v43 = sub_1D725BD1C();
  v44 = __swift_project_value_buffer(v43, qword_1EDFFCD30);
  v45 = *(v43 - 8);
  v46 = *(v45 + 16);
  v47 = v45 + 16;
  v207 = v44;
  v46(v25);
  if (qword_1EDF31F48 != -1)
  {
    swift_once();
  }

  v206 = __swift_project_value_buffer(v43, qword_1EDFFCE68);
  v46(&v25[v41]);
  v48 = type metadata accessor for FormatVersionRequirement.Value(0);
  *v42 = 0;
  *(v42 + 1) = 0;
  v205 = v48;
  swift_storeEnumTagMultiPayload();
  *&v218 = v215;
  *(&v218 + 1) = v31;
  v220 = 0uLL;
  LOBYTE(v221) = 0;
  v49 = *(v27 + 44);
  v209 = v46;
  v50 = v27;
  v51 = v217;
  v52 = &v217[v49];
  v53 = *v52;
  v54 = *(v52 + 1);
  v224 = 0;
  v55 = swift_allocObject();
  v208 = v47;
  v215 = &v190;
  *(v55 + 16) = 0;
  *(v55 + 24) = 0;
  *(v55 + 32) = v224;
  *(v55 + 40) = v53;
  *(v55 + 48) = v54;
  MEMORY[0x1EEE9AC00](v55, v56);
  *(&v190 - 4) = sub_1D5B4AA6C;
  *(&v190 - 3) = 0;
  v188 = sub_1D6708B68;
  v189 = v57;
  v224 = 0;
  v58 = swift_allocObject();
  v211 = v43;
  v59 = v58;
  *(v58 + 16) = 0;
  *(v58 + 24) = 0;
  *(v58 + 32) = v224;
  v210 = v53;
  *(v58 + 40) = v53;
  *(v58 + 48) = v54;
  sub_1D66B6840();
  v61 = v60;
  v62 = sub_1D5B58B84(&qword_1EC887218, sub_1D66B6840);
  swift_retain_n();
  v213 = v62;
  v214 = v61;
  v63 = sub_1D72647CC();
  v224 = 0;
  v64 = swift_allocObject();
  *(v64 + 24) = 0;
  *(v64 + 32) = 0;
  *(v64 + 16) = v63;
  *(v64 + 40) = v224;
  v65 = *(v50 + 36);
  v66 = v25;
  v67 = &v51[v65];
  v68 = __swift_project_boxed_opaque_existential_1(&v51[v65], *&v51[v65 + 24]);
  MEMORY[0x1EEE9AC00](v68, v69);
  MEMORY[0x1EEE9AC00](v70, v71);
  *(&v190 - 4) = sub_1D615B4A4;
  *(&v190 - 3) = (&v190 - 6);
  v188 = sub_1D66B68D4;
  v189 = v59;
  v72 = v216;
  sub_1D5D2BC70(v66, sub_1D615B49C, v73, sub_1D615B4A4, (&v190 - 6));
  if (v72)
  {
    sub_1D5D2CFE8(v66, type metadata accessor for FormatVersionRequirement);

    v75 = v217;
  }

  else
  {
    v191 = v67;
    v192 = v54;

    v74 = v217;
    sub_1D72647EC();
    sub_1D5D2CFE8(v66, type metadata accessor for FormatVersionRequirement);

    v215 = 0;
    v77 = v74;
    v78 = *(v212 + 48);
    v79 = v204;
    v80 = &v204[*(v212 + 64)];
    v81 = v211;
    v82 = v209;
    (v209)(v204, v207, v211);
    v82(v79 + v78, v206, v81);
    *v80 = 0;
    *(v80 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    *&v218 = v203;
    v216 = xmmword_1D728CF30;
    v220 = xmmword_1D728CF30;
    LOBYTE(v221) = 0;
    v224 = 0;
    v83 = swift_allocObject();
    v203 = &v190;
    *(v83 + 16) = v216;
    *(v83 + 32) = v224;
    v84 = v210;
    v85 = v192;
    *(v83 + 40) = v210;
    *(v83 + 48) = v85;
    MEMORY[0x1EEE9AC00](v83, v86);
    *(&v190 - 4) = sub_1D5B4AA6C;
    *(&v190 - 3) = 0;
    v188 = sub_1D6708B68;
    v189 = v87;
    v224 = 0;
    v88 = swift_allocObject();
    *(v88 + 16) = v216;
    *(v88 + 32) = v224;
    *(v88 + 40) = v84;
    *(v88 + 48) = v85;
    swift_retain_n();
    v89 = sub_1D72647CC();
    v224 = 0;
    v90 = swift_allocObject();
    *(v90 + 16) = v89;
    *(v90 + 24) = v216;
    *(v90 + 40) = v224;
    v91 = __swift_project_boxed_opaque_existential_1(v191, *(v191 + 3));
    MEMORY[0x1EEE9AC00](v91, v92);
    MEMORY[0x1EEE9AC00](v93, v94);
    *(&v190 - 4) = sub_1D615B4A4;
    *(&v190 - 3) = (&v190 - 6);
    v188 = sub_1D6708B68;
    v189 = v88;
    v95 = v215;
    sub_1D5D2BC70(v79, sub_1D615B49C, v96, sub_1D615B4A4, (&v190 - 6));
    if (v95)
    {
      sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);

      v75 = v77;
    }

    else
    {

      sub_1D5B55CBC();
      sub_1D72647EC();
      sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);

      v97 = *(v212 + 48);
      v98 = v202;
      v99 = &v202[*(v212 + 64)];
      v100 = v211;
      v101 = v209;
      (v209)(v202, v207, v211);
      v101(v98 + v97, v206, v100);
      *v99 = 0;
      *(v99 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      LOBYTE(v218) = v225;
      v216 = xmmword_1D7297410;
      v220 = xmmword_1D7297410;
      LOBYTE(v221) = 0;
      v224 = 0;
      v102 = swift_allocObject();
      v215 = &v190;
      *(v102 + 16) = v216;
      *(v102 + 32) = v224;
      v103 = v210;
      v104 = v192;
      *(v102 + 40) = v210;
      *(v102 + 48) = v104;
      MEMORY[0x1EEE9AC00](v102, v105);
      *(&v190 - 4) = sub_1D5B4AA6C;
      *(&v190 - 3) = 0;
      v188 = sub_1D6708B68;
      v189 = v106;
      v224 = 0;
      v107 = swift_allocObject();
      *(v107 + 16) = v216;
      *(v107 + 32) = v224;
      *(v107 + 40) = v103;
      *(v107 + 48) = v104;
      swift_retain_n();
      v108 = sub_1D72647CC();
      v224 = 0;
      v109 = swift_allocObject();
      *(v109 + 16) = v108;
      *(v109 + 24) = v216;
      *(v109 + 40) = v224;
      v110 = __swift_project_boxed_opaque_existential_1(v191, *(v191 + 3));
      MEMORY[0x1EEE9AC00](v110, v111);
      MEMORY[0x1EEE9AC00](v112, v113);
      *(&v190 - 4) = sub_1D615B4A4;
      *(&v190 - 3) = (&v190 - 6);
      v188 = sub_1D6708B68;
      v189 = v107;
      sub_1D5D2BC70(v98, sub_1D615B49C, v114, sub_1D615B4A4, (&v190 - 6));

      sub_1D618180C();
      sub_1D72647EC();
      sub_1D5D2CFE8(v98, type metadata accessor for FormatVersionRequirement);

      v115 = *(v212 + 48);
      v116 = v201;
      v117 = &v201[*(v212 + 64)];
      v118 = v211;
      v119 = v209;
      (v209)(v201, v207, v211);
      v119(v116 + v115, v206, v118);
      *v117 = 0;
      *(v117 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      *&v218 = v32;
      v216 = xmmword_1D72BAA60;
      v220 = xmmword_1D72BAA60;
      LOBYTE(v221) = 0;
      v224 = 0;
      v120 = swift_allocObject();
      v215 = &v190;
      *(v120 + 16) = v216;
      *(v120 + 32) = v224;
      v121 = v210;
      v122 = v192;
      *(v120 + 40) = v210;
      *(v120 + 48) = v122;
      MEMORY[0x1EEE9AC00](v120, v123);
      *(&v190 - 4) = sub_1D5B4AA6C;
      *(&v190 - 3) = 0;
      v188 = sub_1D6708B68;
      v189 = v124;
      v224 = 0;
      v125 = swift_allocObject();
      *(v125 + 16) = v216;
      *(v125 + 32) = v224;
      *(v125 + 40) = v121;
      *(v125 + 48) = v122;
      swift_retain_n();
      v126 = sub_1D72647CC();
      v224 = 0;
      v127 = swift_allocObject();
      *(v127 + 16) = v126;
      *(v127 + 24) = v216;
      *(v127 + 40) = v224;
      v128 = __swift_project_boxed_opaque_existential_1(v191, *(v191 + 3));
      MEMORY[0x1EEE9AC00](v128, v129);
      MEMORY[0x1EEE9AC00](v130, v131);
      *(&v190 - 4) = sub_1D615B4A4;
      *(&v190 - 3) = (&v190 - 6);
      v188 = sub_1D6708B68;
      v189 = v125;
      sub_1D5D2BC70(v116, sub_1D615B49C, v132, sub_1D615B4A4, (&v190 - 6));

      sub_1D72647EC();
      sub_1D5D2CFE8(v116, type metadata accessor for FormatVersionRequirement);

      v133 = *(v212 + 48);
      v134 = v200;
      v135 = &v200[*(v212 + 64)];
      v136 = v211;
      v137 = v209;
      (v209)(v200, v207, v211);
      v137(v134 + v133, v206, v136);
      *v135 = 0;
      *(v135 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v220 = v199;
      v221 = v198;
      v222 = v197;
      v223 = v196;
      v216 = xmmword_1D72BAA70;
      v218 = xmmword_1D72BAA70;
      v219 = 0;
      v224 = 0;
      v138 = swift_allocObject();
      v215 = &v190;
      *(v138 + 16) = v216;
      *(v138 + 32) = v224;
      v139 = v210;
      v140 = v192;
      *(v138 + 40) = v210;
      *(v138 + 48) = v140;
      MEMORY[0x1EEE9AC00](v138, v141);
      *(&v190 - 4) = sub_1D5B4AA6C;
      *(&v190 - 3) = 0;
      v188 = sub_1D6708B68;
      v189 = v142;
      v224 = 0;
      v143 = swift_allocObject();
      *(v143 + 16) = v216;
      *(v143 + 32) = v224;
      *(v143 + 40) = v139;
      *(v143 + 48) = v140;
      swift_retain_n();
      v144 = sub_1D72647CC();
      v224 = 0;
      v145 = swift_allocObject();
      *(v145 + 16) = v144;
      *(v145 + 24) = v216;
      *(v145 + 40) = v224;
      v146 = __swift_project_boxed_opaque_existential_1(v191, *(v191 + 3));
      MEMORY[0x1EEE9AC00](v146, v147);
      MEMORY[0x1EEE9AC00](v148, v149);
      *(&v190 - 4) = sub_1D615B4A4;
      *(&v190 - 3) = (&v190 - 6);
      v188 = sub_1D6708B68;
      v189 = v143;
      sub_1D5D2BC70(v134, sub_1D615B49C, v150, sub_1D615B4A4, (&v190 - 6));

      sub_1D66B5FA8();
      sub_1D72647EC();
      sub_1D5D2CFE8(v134, type metadata accessor for FormatVersionRequirement);

      v152 = *(v212 + 48);
      v153 = v195;
      v154 = (v195 + *(v212 + 64));
      v155 = v211;
      v156 = v209;
      (v209)(v195, v207, v211);
      v156(v153 + v152, v206, v155);
      *v154 = 0;
      v154[1] = 0;
      swift_storeEnumTagMultiPayload();
      *&v218 = v194;
      v216 = xmmword_1D72BAA80;
      v220 = xmmword_1D72BAA80;
      LOBYTE(v221) = 0;
      v224 = 0;
      v157 = swift_allocObject();
      *(v157 + 16) = v216;
      *(v157 + 32) = v224;
      v158 = v210;
      v159 = v192;
      *(v157 + 40) = v210;
      *(v157 + 48) = v159;
      MEMORY[0x1EEE9AC00](v157, v160);
      *(&v190 - 4) = sub_1D5B4AA6C;
      *(&v190 - 3) = 0;
      v188 = sub_1D6708B68;
      v189 = v161;
      v224 = 0;
      v162 = swift_allocObject();
      *(v162 + 16) = v216;
      *(v162 + 32) = v224;
      *(v162 + 40) = v158;
      *(v162 + 48) = v159;
      swift_retain_n();
      v163 = sub_1D72647CC();
      v224 = 0;
      v164 = swift_allocObject();
      *(v164 + 16) = v163;
      *(v164 + 24) = v216;
      *(v164 + 40) = v224;
      v165 = __swift_project_boxed_opaque_existential_1(v191, *(v191 + 3));
      MEMORY[0x1EEE9AC00](v165, v166);
      MEMORY[0x1EEE9AC00](v167, v168);
      *(&v190 - 4) = sub_1D615B4A4;
      *(&v190 - 3) = (&v190 - 6);
      v188 = sub_1D6708B68;
      v189 = v162;
      sub_1D5D2BC70(v153, sub_1D615B49C, v169, sub_1D615B4A4, (&v190 - 6));

      sub_1D5C34D84(0, &qword_1EC8871F8, &type metadata for FormatShineBlend, MEMORY[0x1E69E62F8]);
      sub_1D66B6964();
      sub_1D72647EC();
      sub_1D5D2CFE8(v195, type metadata accessor for FormatVersionRequirement);

      v170 = *(v212 + 48);
      v171 = v193;
      v172 = (v193 + *(v212 + 64));
      v173 = v211;
      v174 = v209;
      (v209)(v193, v207, v211);
      v174(v171 + v170, v206, v173);
      *v172 = 0;
      v172[1] = 0;
      swift_storeEnumTagMultiPayload();
      *&v218 = v33;
      v216 = xmmword_1D72BAA90;
      v220 = xmmword_1D72BAA90;
      LOBYTE(v221) = 0;
      v224 = 0;
      v175 = swift_allocObject();
      *(v175 + 16) = v216;
      *(v175 + 32) = v224;
      v176 = v210;
      v177 = v192;
      *(v175 + 40) = v210;
      *(v175 + 48) = v177;
      MEMORY[0x1EEE9AC00](v175, v178);
      *(&v190 - 4) = sub_1D5B4AA6C;
      *(&v190 - 3) = 0;
      v188 = sub_1D6708B68;
      v189 = v179;
      v224 = 0;
      v180 = swift_allocObject();
      *(v180 + 16) = v216;
      *(v180 + 32) = v224;
      *(v180 + 40) = v176;
      *(v180 + 48) = v177;
      swift_retain_n();
      v181 = sub_1D72647CC();
      v224 = 0;
      v182 = swift_allocObject();
      *(v182 + 16) = v181;
      *(v182 + 24) = v216;
      *(v182 + 40) = v224;
      v183 = __swift_project_boxed_opaque_existential_1(v191, *(v191 + 3));
      MEMORY[0x1EEE9AC00](v183, v184);
      MEMORY[0x1EEE9AC00](v185, v186);
      *(&v190 - 4) = sub_1D615B4A4;
      *(&v190 - 3) = (&v190 - 6);
      v188 = sub_1D6708B68;
      v189 = v180;
      sub_1D5D2BC70(v171, sub_1D615B49C, v187, sub_1D615B4A4, (&v190 - 6));

      sub_1D5B578C4();
      sub_1D72647EC();
      sub_1D5D2CFE8(v193, type metadata accessor for FormatVersionRequirement);

      v75 = v217;
    }
  }

  return sub_1D5D2CFE8(v75, sub_1D66B67AC);
}

uint64_t sub_1D6586CB8()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x656C616373;
  if (v1 != 6)
  {
    v3 = 1885433183;
  }

  v4 = 0x6E6F69746F6DLL;
  if (v1 != 4)
  {
    v4 = 0x73646E656C62;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x72657A6973;
  if (v1 != 2)
  {
    v5 = 0x6152657461746F72;
  }

  if (*v0)
  {
    v2 = 0x726F6C6F63;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D6586DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66B86A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6586DE0(uint64_t a1)
{
  v2 = sub_1D66B6668();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6586E1C(uint64_t a1)
{
  v2 = sub_1D66B6668();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSize.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v251 = &v225 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v252 = &v225 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v250 = &v225 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v249 = &v225 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v248 = &v225 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v232 = &v225 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v231 = &v225 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v230 = &v225 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v247 = &v225 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v246 = &v225 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v245 = &v225 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v229 = &v225 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v228 = &v225 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v227 = &v225 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v244 = &v225 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v242 = &v225 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v239 = &v225 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v240 = &v225 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v241 = &v225 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v238 = &v225 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v237 = &v225 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v236 = &v225 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v235 = &v225 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v234 = &v225 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v233 = &v225 - v77;
  MEMORY[0x1EEE9AC00](v78, v79);
  v226 = &v225 - v80;
  MEMORY[0x1EEE9AC00](v81, v82);
  v84 = &v225 - v83;
  MEMORY[0x1EEE9AC00](v85, v86);
  v243 = &v225 - v87;
  MEMORY[0x1EEE9AC00](v88, v89);
  v91 = &v225 - v90;
  MEMORY[0x1EEE9AC00](v92, v93);
  v95 = &v225 - v94;
  MEMORY[0x1EEE9AC00](v96, v97);
  v99 = &v225 - v98;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v100 - 8, v101);
  v103 = &v225 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = *v1;
  v105 = a1;
  v106 = a1[3];
  v107 = v105[4];
  __swift_project_boxed_opaque_existential_1(v105, v106);
  v108 = sub_1D5C30408();
  v253 = v103;
  sub_1D5D2EE70(&type metadata for FormatSize, &type metadata for FormatCodingKeys, v109, v106, &type metadata for FormatSize, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v107, v103, v108, &off_1F51F6C78);
  switch((v104 >> 59) & 0x1E | (v104 >> 2) & 1)
  {
    case 1uLL:
      v163 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v162 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

      sub_1D5C07390(v162);
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v164 = sub_1D725BD1C();
      v165 = __swift_project_value_buffer(v164, qword_1EDFFCD50);
      (*(*(v164 - 8) + 16))(v91, v165, v164);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v120 = v253;
      sub_1D63BDE34(2, v163, v162, v91);

      sub_1D5C08648(v162);
      v166 = v91;
      goto LABEL_79;
    case 2uLL:
      v146 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v145 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      sub_1D5D0A048(v146);
      sub_1D5D0A048(v145);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v147 = sub_1D725BD1C();
      v148 = __swift_project_value_buffer(v147, qword_1EDFFCD30);
      v99 = v243;
      (*(*(v147 - 8) + 16))(v243, v148, v147);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v120 = v253;
      sub_1D63BDFC8(3, v146, v145, v99);
      sub_1D5D09FB0(v146);
      sub_1D5D09FB0(v145);
      goto LABEL_78;
    case 3uLL:
      v130 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v153 = qword_1EDF31EB0;

      if (v153 != -1)
      {
        swift_once();
      }

      v154 = sub_1D725BD1C();
      v155 = __swift_project_value_buffer(v154, qword_1EDFFCD30);
      v99 = v233;
      (*(*(v154 - 8) + 16))(v233, v155, v154);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v134 = 6;
      goto LABEL_76;
    case 4uLL:
      v130 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v131 = qword_1EDF31EB0;

      if (v131 != -1)
      {
        swift_once();
      }

      v132 = sub_1D725BD1C();
      v133 = __swift_project_value_buffer(v132, qword_1EDFFCD30);
      v99 = v234;
      (*(*(v132 - 8) + 16))(v234, v133, v132);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v134 = 7;
      goto LABEL_76;
    case 5uLL:
      v130 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v175 = qword_1EDF31EB0;

      if (v175 != -1)
      {
        swift_once();
      }

      v176 = sub_1D725BD1C();
      v177 = __swift_project_value_buffer(v176, qword_1EDFFCD30);
      v99 = v235;
      (*(*(v176 - 8) + 16))(v235, v177, v176);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v134 = 8;
      goto LABEL_76;
    case 6uLL:
      v130 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v187 = qword_1EDF31EB0;

      if (v187 != -1)
      {
        swift_once();
      }

      v188 = sub_1D725BD1C();
      v189 = __swift_project_value_buffer(v188, qword_1EDFFCD30);
      v99 = v236;
      (*(*(v188 - 8) + 16))(v236, v189, v188);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v134 = 9;
      goto LABEL_76;
    case 7uLL:
      v156 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v157 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v158 = qword_1EDF31EE8;

      if (v158 != -1)
      {
        swift_once();
      }

      v159 = sub_1D725BD1C();
      v160 = __swift_project_value_buffer(v159, qword_1EDFFCD98);
      v99 = v237;
      (*(*(v159 - 8) + 16))(v237, v160, v159);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v161 = 10;
      goto LABEL_65;
    case 8uLL:
      v156 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v157 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v198 = qword_1EDF31EE8;

      if (v198 != -1)
      {
        swift_once();
      }

      v199 = sub_1D725BD1C();
      v200 = __swift_project_value_buffer(v199, qword_1EDFFCD98);
      v99 = v238;
      (*(*(v199 - 8) + 16))(v238, v200, v199);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v161 = 11;
LABEL_65:
      v120 = v253;
      sub_1D63BE15C(v161, v156, v157, v99);
      goto LABEL_77;
    case 9uLL:
      v140 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v141 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v142 = qword_1EDF31F48;

      if (v142 != -1)
      {
        swift_once();
      }

      v143 = sub_1D725BD1C();
      v144 = __swift_project_value_buffer(v143, qword_1EDFFCE68);
      v99 = v241;
      (*(*(v143 - 8) + 16))(v241, v144, v143);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v120 = v253;
      sub_1D63BE2F4(12, v140, v141, v99);

      goto LABEL_78;
    case 0xAuLL:
      v193 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v194 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v195 = qword_1EDF31EB0;

      if (v195 != -1)
      {
        swift_once();
      }

      v196 = sub_1D725BD1C();
      v197 = __swift_project_value_buffer(v196, qword_1EDFFCD30);
      v99 = v240;
      (*(*(v196 - 8) + 16))(v240, v197, v196);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v120 = v253;
      sub_1D63BE488(13, v193, v194, v99);
      goto LABEL_77;
    case 0xBuLL:
      v126 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v127 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v128 = sub_1D725BD1C();
      v129 = __swift_project_value_buffer(v128, qword_1EDFFCD30);
      v99 = v239;
      (*(*(v128 - 8) + 16))(v239, v129, v128);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v120 = v253;
      sub_1D63BE620(14, v126, v127, v99);
      goto LABEL_78;
    case 0xCuLL:
      v135 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v136 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v137 = qword_1EDF31EB0;

      if (v137 != -1)
      {
        swift_once();
      }

      v138 = sub_1D725BD1C();
      v139 = __swift_project_value_buffer(v138, qword_1EDFFCD30);
      v99 = v242;
      (*(*(v138 - 8) + 16))(v242, v139, v138);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v120 = v253;
      sub_1D63BE7EC(15, v135, v136, v99);
      goto LABEL_77;
    case 0xDuLL:
      v182 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v181 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v183 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v184 = qword_1EDF31EB0;

      if (v184 != -1)
      {
        swift_once();
      }

      v185 = sub_1D725BD1C();
      v186 = __swift_project_value_buffer(v185, qword_1EDFFCD30);
      v99 = v244;
      (*(*(v185 - 8) + 16))(v244, v186, v185);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v120 = v253;
      sub_1D63BE9BC(16, v182, v181, v183, v99);
      goto LABEL_77;
    case 0xEuLL:
      v121 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v122 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v123 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      sub_1D5DEA234(v122);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v124 = sub_1D725BD1C();
      v125 = __swift_project_value_buffer(v124, qword_1EDFFCD30);
      v99 = v245;
      (*(*(v124 - 8) + 16))(v245, v125, v124);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v120 = v253;
      sub_1D63BEB54(20, v121, v122, v123, v99);
      sub_1D5CBF568(v122);
      goto LABEL_78;
    case 0xFuLL:
      v150 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v149 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      sub_1D5C82CD8(v150);
      sub_1D62B48BC(v149);
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v151 = sub_1D725BD1C();
      v152 = __swift_project_value_buffer(v151, qword_1EDFFCE80);
      v99 = v246;
      (*(*(v151 - 8) + 16))(v246, v152, v151);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v120 = v253;
      sub_1D63BECF0(21, v150, v149, v99);
      sub_1D5C92A8C(v150);
      sub_1D62B48D0(v149);
      goto LABEL_78;
    case 0x10uLL:
      v117 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v116 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

      sub_1D5C82CD8(v116);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v118 = sub_1D725BD1C();
      v119 = __swift_project_value_buffer(v118, qword_1EDFFCD30);
      v99 = v247;
      (*(*(v118 - 8) + 16))(v247, v119, v118);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v120 = v253;
      sub_1D63BEE84(22, v117, v116, v99);

      sub_1D5C92A8C(v116);
      goto LABEL_78;
    case 0x11uLL:
      v130 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v167 = qword_1EDF31EA8;

      if (v167 != -1)
      {
        swift_once();
      }

      v168 = sub_1D725BD1C();
      v169 = __swift_project_value_buffer(v168, qword_1EDFFCD18);
      v99 = v248;
      (*(*(v168 - 8) + 16))(v248, v169, v168);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v134 = 26;
      goto LABEL_76;
    case 0x12uLL:
      v130 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v190 = qword_1EDF31EA8;

      if (v190 != -1)
      {
        swift_once();
      }

      v191 = sub_1D725BD1C();
      v192 = __swift_project_value_buffer(v191, qword_1EDFFCD18);
      v99 = v249;
      (*(*(v191 - 8) + 16))(v249, v192, v191);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v134 = 27;
      goto LABEL_76;
    case 0x13uLL:
      v130 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v205 = qword_1EDF31EA8;

      if (v205 != -1)
      {
        swift_once();
      }

      v206 = sub_1D725BD1C();
      v207 = __swift_project_value_buffer(v206, qword_1EDFFCD18);
      v99 = v250;
      (*(*(v206 - 8) + 16))(v250, v207, v206);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v134 = 28;
LABEL_76:
      v120 = v253;
      sub_1D63BDC68(v134, v130, v99);
      goto LABEL_77;
    case 0x14uLL:
      v170 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v171 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v172 = qword_1EDF31EA8;

      if (v172 != -1)
      {
        swift_once();
      }

      v173 = sub_1D725BD1C();
      v174 = __swift_project_value_buffer(v173, qword_1EDFFCD18);
      v99 = v252;
      (*(*(v173 - 8) + 16))(v252, v174, v173);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v120 = v253;
      sub_1D63BF058(29, v170, v171, v99);

LABEL_77:

      goto LABEL_78;
    case 0x15uLL:
      v178 = *((v104 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      if (qword_1EDF31EF0 != -1)
      {
        swift_once();
      }

      v179 = sub_1D725BD1C();
      v180 = __swift_project_value_buffer(v179, qword_1EDFFCDB0);
      v99 = v251;
      (*(*(v179 - 8) + 16))(v251, v180, v179);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v120 = v253;
      sub_1D63BF1EC(30, v178, v99);
      goto LABEL_78;
    case 0x16uLL:
      v201 = __ROR8__(v104 + 0x5000000000000000, 3);
      if (v201 > 3)
      {
        if (v201 <= 5)
        {
          v120 = v253;
          if (v201 == 4)
          {
            if (qword_1EDF31EB0 != -1)
            {
              swift_once();
            }

            v213 = sub_1D725BD1C();
            v214 = __swift_project_value_buffer(v213, qword_1EDFFCD30);
            v99 = v228;
            (*(*(v213 - 8) + 16))(v228, v214, v213);
            type metadata accessor for FormatVersionRequirement.Value(0);
            swift_storeEnumTagMultiPayload();
            v204 = 18;
          }

          else
          {
            if (qword_1EDF31EB0 != -1)
            {
              swift_once();
            }

            v223 = sub_1D725BD1C();
            v224 = __swift_project_value_buffer(v223, qword_1EDFFCD30);
            v99 = v229;
            (*(*(v223 - 8) + 16))(v229, v224, v223);
            type metadata accessor for FormatVersionRequirement.Value(0);
            swift_storeEnumTagMultiPayload();
            v204 = 19;
          }
        }

        else
        {
          v120 = v253;
          if (v201 == 6)
          {
            if (qword_1EDF31F10 != -1)
            {
              swift_once();
            }

            v215 = sub_1D725BD1C();
            v216 = __swift_project_value_buffer(v215, qword_1EDFFCDF8);
            v99 = v230;
            (*(*(v215 - 8) + 16))(v230, v216, v215);
            type metadata accessor for FormatVersionRequirement.Value(0);
            swift_storeEnumTagMultiPayload();
            v204 = 23;
          }

          else if (v201 == 7)
          {
            if (qword_1EDF31F30 != -1)
            {
              swift_once();
            }

            v202 = sub_1D725BD1C();
            v203 = __swift_project_value_buffer(v202, qword_1EDFFCE20);
            v99 = v231;
            (*(*(v202 - 8) + 16))(v231, v203, v202);
            type metadata accessor for FormatVersionRequirement.Value(0);
            swift_storeEnumTagMultiPayload();
            v204 = 24;
          }

          else
          {
            if (qword_1EDF31EA8 != -1)
            {
              swift_once();
            }

            v221 = sub_1D725BD1C();
            v222 = __swift_project_value_buffer(v221, qword_1EDFFCD18);
            v99 = v232;
            (*(*(v221 - 8) + 16))(v232, v222, v221);
            type metadata accessor for FormatVersionRequirement.Value(0);
            swift_storeEnumTagMultiPayload();
            v204 = 25;
          }
        }

LABEL_109:
        sub_1D6424650(v204, v99);
        goto LABEL_78;
      }

      if (v201 > 1)
      {
        v120 = v253;
        if (v201 == 2)
        {
          if (qword_1EDF31F50 != -1)
          {
            swift_once();
          }

          v211 = sub_1D725BD1C();
          v212 = __swift_project_value_buffer(v211, qword_1EDFFCE80);
          v99 = v226;
          (*(*(v211 - 8) + 16))(v226, v212, v211);
          type metadata accessor for FormatVersionRequirement.Value(0);
          swift_storeEnumTagMultiPayload();
          v204 = 5;
        }

        else
        {
          if (qword_1EDF31EB0 != -1)
          {
            swift_once();
          }

          v219 = sub_1D725BD1C();
          v220 = __swift_project_value_buffer(v219, qword_1EDFFCD30);
          v99 = v227;
          (*(*(v219 - 8) + 16))(v227, v220, v219);
          type metadata accessor for FormatVersionRequirement.Value(0);
          swift_storeEnumTagMultiPayload();
          v204 = 17;
        }

        goto LABEL_109;
      }

      v120 = v253;
      if (!v201)
      {
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v209 = sub_1D725BD1C();
        v210 = __swift_project_value_buffer(v209, qword_1EDFFCD30);
        (*(*(v209 - 8) + 16))(v99, v210, v209);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v204 = 0;
        goto LABEL_109;
      }

      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v217 = sub_1D725BD1C();
      v218 = __swift_project_value_buffer(v217, qword_1EDFFCD30);
      (*(*(v217 - 8) + 16))(v84, v218, v217);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6424650(4, v84);
      v99 = v84;
LABEL_78:
      v166 = v99;
LABEL_79:
      sub_1D5D2CFE8(v166, type metadata accessor for FormatVersionRequirement);
      v115 = v120;
      return sub_1D5D2CFE8(v115, sub_1D5D30DC4);
    default:
      v110 = *(v104 + 16);
      v111 = qword_1EDF31EB0;

      if (v111 != -1)
      {
        swift_once();
      }

      v112 = sub_1D725BD1C();
      v113 = __swift_project_value_buffer(v112, qword_1EDFFCD30);
      (*(*(v112 - 8) + 16))(v95, v113, v112);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v114 = v253;
      sub_1D63BDC68(1, v110, v95);

      sub_1D5D2CFE8(v95, type metadata accessor for FormatVersionRequirement);
      v115 = v114;
      return sub_1D5D2CFE8(v115, sub_1D5D30DC4);
  }
}

unint64_t sub_1D6588C98(char a1)
{
  result = 1819044198;
  switch(a1)
  {
    case 1:
      result = 0x746E6563726570;
      break;
    case 2:
      result = 0x46746E6563726570;
      break;
    case 3:
      result = 0x6F69736E656D6964;
      break;
    case 4:
      result = 0x69466F54657A6973;
      break;
    case 5:
    case 27:
    case 30:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6874646977;
      break;
    case 7:
      result = 0x746867696568;
      break;
    case 8:
      result = 0x695764656C616373;
      break;
    case 9:
      result = 0x654864656C616373;
      break;
    case 10:
      result = 0x7274654D746E6F66;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x664F7265626D756ELL;
      break;
    case 13:
      result = 0x6F69746172;
      break;
    case 14:
      result = 0x736E6D756C6F63;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0x6F526E6D756C6F63;
      break;
    case 17:
      result = 0x676E696361705376;
      break;
    case 18:
      result = 0x676E696361705368;
      break;
    case 19:
      result = 1869768058;
      break;
    case 20:
      result = 0x656873696C627570;
      break;
    case 21:
      result = 0x65726F736E6F7073;
      break;
    case 22:
      result = 0x686374697773;
      break;
    case 23:
      result = 0x6361766972506461;
      break;
    case 24:
      result = 0x63697274654D6461;
      break;
    case 25:
    case 29:
      result = 0x656C626978656C66;
      break;
    case 26:
      result = 0xD000000000000012;
      break;
    case 28:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D658904C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D6588C98(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatSizeColumn.encode(to:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v37 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v35 - v9;
  v11 = *(a2 + 16);
  v38 = *(a2 + 24);
  v39 = v11;
  v12 = _s10CodingKeysOMa_69();
  WitnessTable = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  *&v43 = v12;
  *(&v43 + 1) = WitnessTable;
  v44 = v14;
  v45 = v15;
  v16 = type metadata accessor for FormatCodingKeysContainer();
  v17 = swift_getWitnessTable();
  sub_1D726446C();
  swift_getWitnessTable();
  v18 = type metadata accessor for VersionedKeyedEncodingContainer();
  v41 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v35 - v20;
  v23 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  v36 = a2;
  sub_1D5D2EE70(a2, v16, v24, v23, a2, v16, &type metadata for FormatVersions.JazzkonC, v22, v21, v17, &off_1F51F6C78);
  v43 = 0uLL;
  LOBYTE(v44) = 0;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725BD1C();
  v26 = __swift_project_value_buffer(v25, qword_1EDFFCD30);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v29 = v27 + 16;
  v28(v10, v26, v25);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v30 = v40;
  sub_1D5D38930(v42, &v43, v10, sub_1D5B4AA6C, 0, v18, v39, *(v38 + 16));
  if (v30)
  {
    v31 = v10;
  }

  else
  {
    v39 = v29;
    v40 = v28;
    sub_1D5D2CFE8(v10, type metadata accessor for FormatVersionRequirement);
    v46 = FormatSizeColumn.alignOrigin.getter(v36) & 1;
    v43 = xmmword_1D728CF30;
    LOBYTE(v44) = 0;
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v25, qword_1EDFFCDE0);
    v33 = v37;
    v40(v37, v32, v25);
    swift_storeEnumTagMultiPayload();
    sub_1D71B5F54(&v46, &type metadata for FormatCodingTrueStrategy, &v43, v33, sub_1D5B4AA6C, 0, v18, &type metadata for FormatCodingTrueStrategy, &protocol witness table for FormatCodingTrueStrategy);
    v31 = v33;
  }

  sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
  return (*(v41 + 8))(v21, v18);
}

uint64_t sub_1D658956C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69724F6E67696C61 && a2 == 0xEB000000006E6967 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D6589684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D658956C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65896B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D65DA43C(*(a1 + 16), *(a1 + 24), _s10CodingKeysOMa_69);
  *a2 = result;
  return result;
}

uint64_t sub_1D65896F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D658974C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D65897A0()
{
  v1 = 0x746867696568;
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
    return 0x6874646977;
  }
}

uint64_t sub_1D65897EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66B8930(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6589824(uint64_t a1)
{
  v2 = sub_1D666CB60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6589860(uint64_t a1)
{
  v2 = sub_1D666CB60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSlotDefinition.encode(to:)(void *a1)
{
  v2 = v1;
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v178 = v174 - v6;
  v180 = sub_1D725B76C();
  v179 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180, v7);
  v177 = v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v181 = v174 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v182 = v174 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v183 = v174 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v184 = v174 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v185 = v174 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v193 = v174 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = v174 - v29;
  sub_1D66B6AFC();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = v174 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1[3];
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v36);
  v38 = type metadata accessor for FormatSlotDefinition();
  sub_1D5CAB770();
  v40 = v39;
  v41 = sub_1D5B58B84(&qword_1EDF25378, sub_1D5CAB770);
  v176 = v38;
  sub_1D5D2EE70(v38, v40, v42, v36, v38, v40, &type metadata for FormatVersions.JazzkonC, v37, v35, v41, &off_1F51F6C78);
  v43 = *v2;
  v44 = v2[1];
  v190 = v2;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v45 = sub_1D725BD1C();
  v46 = __swift_project_value_buffer(v45, qword_1EDFFCD30);
  v47 = *(v45 - 8);
  v48 = *(v47 + 16);
  v186 = v46;
  v188 = v48;
  v189 = v45;
  v187 = v47 + 16;
  (v48)(v30);
  v192 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v202 = v43;
  v203 = v44;
  v200 = 0uLL;
  v201 = 0;
  v49 = &v35[*(v32 + 44)];
  v51 = *v49;
  v50 = *(v49 + 1);
  v204 = 0;
  v52 = swift_allocObject();
  *&v197 = v174;
  *(v52 + 16) = 0;
  *(v52 + 24) = 0;
  *(v52 + 32) = v204;
  *(v52 + 40) = v51;
  *(v52 + 48) = v50;
  MEMORY[0x1EEE9AC00](v52, v53);
  v196 = &v174[-6];
  v174[-4] = sub_1D5B4AA6C;
  v174[-3] = 0;
  v172 = sub_1D6708B6C;
  v173 = v54;
  v204 = 0;
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  *(v55 + 24) = 0;
  *(v55 + 32) = v204;
  v191 = v51;
  *(v55 + 40) = v51;
  *(v55 + 48) = v50;
  sub_1D66B6B90();
  v57 = v56;
  v58 = sub_1D5B58B84(&qword_1EDF033A8, sub_1D66B6B90);
  swift_retain_n();
  v194 = v58;
  v195 = v57;
  v59 = sub_1D72647CC();
  v204 = 0;
  v60 = swift_allocObject();
  *(v60 + 24) = 0;
  *(v60 + 32) = 0;
  *(v60 + 16) = v59;
  *(v60 + 40) = v204;
  v61 = *(v32 + 36);
  v62 = v30;
  v199 = v35;
  v63 = &v35[v61];
  v64 = __swift_project_boxed_opaque_existential_1(&v35[v61], *&v35[v61 + 24]);
  MEMORY[0x1EEE9AC00](v64, v65);
  MEMORY[0x1EEE9AC00](v66, v67);
  v68 = v196;
  v174[-4] = sub_1D615B4A4;
  v174[-3] = v68;
  v172 = sub_1D6708B6C;
  v173 = v55;
  v69 = v198;
  sub_1D5D2BC70(v62, sub_1D615B49C, v70, sub_1D615B4A4, &v174[-6]);
  if (v69)
  {
    sub_1D5D2CFE8(v62, type metadata accessor for FormatVersionRequirement);

    v71 = v199;
LABEL_7:
    v89 = v71;
    return sub_1D5D2CFE8(v89, sub_1D66B6AFC);
  }

  v175 = v63;
  v196 = v50;

  v71 = v199;
  sub_1D72647EC();
  sub_1D5D2CFE8(v62, type metadata accessor for FormatVersionRequirement);

  v72 = v190[2];
  v73 = v190[3];
  v188(v193, v186, v189);
  swift_storeEnumTagMultiPayload();
  v202 = v72;
  v203 = v73;
  v198 = xmmword_1D728CF30;
  v200 = xmmword_1D728CF30;
  v201 = 0;
  v204 = 0;
  v74 = swift_allocObject();
  v174[1] = v174;
  *(v74 + 16) = v198;
  *(v74 + 32) = v204;
  *&v197 = 0;
  v75 = v191;
  v76 = v196;
  *(v74 + 40) = v191;
  *(v74 + 48) = v76;
  MEMORY[0x1EEE9AC00](v74, v77);
  v174[-4] = sub_1D5B4AA6C;
  v174[-3] = 0;
  v172 = sub_1D6708B6C;
  v173 = v78;
  v204 = 0;
  v79 = swift_allocObject();
  *(v79 + 16) = v198;
  *(v79 + 32) = v204;
  *(v79 + 40) = v75;
  *(v79 + 48) = v76;
  swift_retain_n();
  v80 = sub_1D72647CC();
  v204 = 0;
  v81 = swift_allocObject();
  *(v81 + 16) = v80;
  *(v81 + 24) = v198;
  *(v81 + 40) = v204;
  v82 = __swift_project_boxed_opaque_existential_1(v175, *(v175 + 3));
  MEMORY[0x1EEE9AC00](v82, v83);
  MEMORY[0x1EEE9AC00](v84, v85);
  v174[-4] = sub_1D615B4A4;
  v174[-3] = &v174[-6];
  v86 = v193;
  v172 = sub_1D6708B6C;
  v173 = v79;
  v87 = v197;
  sub_1D5D2BC70(v193, sub_1D615B49C, v88, sub_1D615B4A4, &v174[-6]);
  if (v87)
  {
    sub_1D5D2CFE8(v86, type metadata accessor for FormatVersionRequirement);

    goto LABEL_7;
  }

  sub_1D72647EC();
  sub_1D5D2CFE8(v86, type metadata accessor for FormatVersionRequirement);

  v91 = v190[4];
  v92 = v190[5];
  v188(v185, v186, v189);
  swift_storeEnumTagMultiPayload();
  v202 = v91;
  v203 = v92;
  v198 = xmmword_1D7297410;
  v200 = xmmword_1D7297410;
  v201 = 0;
  v204 = 0;
  v93 = swift_allocObject();
  *&v197 = v174;
  *(v93 + 16) = v198;
  *(v93 + 32) = v204;
  v94 = v191;
  v95 = v196;
  *(v93 + 40) = v191;
  *(v93 + 48) = v95;
  MEMORY[0x1EEE9AC00](v93, v96);
  v174[-4] = sub_1D5B4AA6C;
  v174[-3] = 0;
  v172 = sub_1D6708B6C;
  v173 = v97;
  v204 = 0;
  v98 = swift_allocObject();
  *(v98 + 16) = v198;
  *(v98 + 32) = v204;
  *(v98 + 40) = v94;
  *(v98 + 48) = v95;
  swift_retain_n();
  v99 = sub_1D72647CC();
  v204 = 0;
  v100 = swift_allocObject();
  *(v100 + 16) = v99;
  *(v100 + 24) = v198;
  *(v100 + 40) = v204;
  v101 = __swift_project_boxed_opaque_existential_1(v175, *(v175 + 3));
  MEMORY[0x1EEE9AC00](v101, v102);
  MEMORY[0x1EEE9AC00](v103, v104);
  v174[-4] = sub_1D615B4A4;
  v174[-3] = &v174[-6];
  v105 = v185;
  v172 = sub_1D6708B6C;
  v173 = v98;
  sub_1D5D2BC70(v185, sub_1D615B49C, v106, sub_1D615B4A4, &v174[-6]);

  sub_1D72647EC();
  sub_1D5D2CFE8(v105, type metadata accessor for FormatVersionRequirement);

  v107 = v190[6];
  v188(v184, v186, v189);
  swift_storeEnumTagMultiPayload();
  v202 = v107;
  v198 = xmmword_1D72BAA60;
  v200 = xmmword_1D72BAA60;
  v201 = 0;
  v204 = 0;
  v108 = swift_allocObject();
  v193 = v174;
  *(v108 + 16) = v198;
  *(v108 + 32) = v204;
  *&v197 = 0;
  v109 = v191;
  v110 = v196;
  *(v108 + 40) = v191;
  *(v108 + 48) = v110;
  MEMORY[0x1EEE9AC00](v108, v111);
  v174[-4] = sub_1D5B4AA6C;
  v174[-3] = 0;
  v172 = sub_1D6708B6C;
  v173 = v112;
  v204 = 0;
  v113 = swift_allocObject();
  *(v113 + 16) = v198;
  *(v113 + 32) = v204;
  *(v113 + 40) = v109;
  *(v113 + 48) = v110;
  swift_retain_n();
  v114 = sub_1D72647CC();
  v204 = 0;
  v115 = swift_allocObject();
  *(v115 + 16) = v114;
  *(v115 + 24) = v198;
  *(v115 + 40) = v204;
  v116 = __swift_project_boxed_opaque_existential_1(v175, *(v175 + 3));
  MEMORY[0x1EEE9AC00](v116, v117);
  MEMORY[0x1EEE9AC00](v118, v119);
  v174[-4] = sub_1D615B4A4;
  v174[-3] = &v174[-6];
  v120 = v184;
  v172 = sub_1D6708B6C;
  v173 = v113;
  v121 = v197;
  sub_1D5D2BC70(v184, sub_1D615B49C, v122, sub_1D615B4A4, &v174[-6]);
  if (v121)
  {
    sub_1D5D2CFE8(v120, type metadata accessor for FormatVersionRequirement);

    v89 = v71;
    return sub_1D5D2CFE8(v89, sub_1D66B6AFC);
  }

  sub_1D5B5BF78(0, &qword_1EDF43BA8, type metadata accessor for FormatSlotDefinitionItemSet, MEMORY[0x1E69E62F8]);
  sub_1D66B6C24();
  sub_1D72647EC();
  sub_1D5D2CFE8(v184, type metadata accessor for FormatVersionRequirement);

  v123 = v190;
  v124 = v190[7];
  v125 = qword_1EDF31ED0;

  if (v125 != -1)
  {
    swift_once();
  }

  v126 = v189;
  v127 = __swift_project_value_buffer(v189, qword_1EDFFCD50);
  v128 = v183;
  v129 = v188;
  v188(v183, v127, v126);
  swift_storeEnumTagMultiPayload();
  *&v198 = v124;
  if (*(v124 + 16))
  {
    LOBYTE(v200) = 0;
    v130 = swift_allocObject();
    v197 = xmmword_1D72BAA70;
    *(v130 + 16) = xmmword_1D72BAA70;
    *(v130 + 32) = v200;
    *(v130 + 40) = v191;
    *(v130 + 48) = v196;

    v131 = sub_1D72647CC();
    LOBYTE(v200) = 0;
    v132 = swift_allocObject();
    *(v132 + 16) = v131;
    *(v132 + 24) = v197;
    *(v132 + 40) = v200;
    v133 = __swift_project_boxed_opaque_existential_1(v175, *(v175 + 3));
    MEMORY[0x1EEE9AC00](v133, v134);
    MEMORY[0x1EEE9AC00](v135, v136);
    v174[-4] = sub_1D5B4AA6C;
    v174[-3] = 0;
    v172 = sub_1D66B6CFC;
    v173 = v130;
    v138 = sub_1D5D2F7A4(v128, sub_1D615B49C, v137, sub_1D615B4A4, &v174[-6]);
    v139 = v138;

    if (v139)
    {
      v200 = v197;
      v201 = 0;
      v202 = v198;
      sub_1D5C34D84(0, &qword_1EDF3C8E0, &type metadata for FormatSlotTransform, MEMORY[0x1E69E62F8]);
      sub_1D6661AAC();
      sub_1D72647EC();

      sub_1D5D2CFE8(v128, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v128, type metadata accessor for FormatVersionRequirement);
    }

    v126 = v189;
    v123 = v190;
    v129 = v188;
  }

  else
  {
    sub_1D5D2CFE8(v128, type metadata accessor for FormatVersionRequirement);
  }

  v140 = v123[8];
  v141 = v182;
  v129(v182, v186, v126);
  swift_storeEnumTagMultiPayload();
  v202 = v140;
  v198 = xmmword_1D72BAA80;
  v200 = xmmword_1D72BAA80;
  v201 = 0;
  v204 = 0;
  v142 = swift_allocObject();
  *&v197 = v174;
  *(v142 + 16) = v198;
  *(v142 + 32) = v204;
  v143 = v191;
  v144 = v196;
  *(v142 + 40) = v191;
  *(v142 + 48) = v144;
  MEMORY[0x1EEE9AC00](v142, v145);
  v174[-4] = sub_1D5B4AA6C;
  v174[-3] = 0;
  v172 = sub_1D6708B6C;
  v173 = v146;
  v204 = 0;
  v147 = swift_allocObject();
  *(v147 + 16) = v198;
  *(v147 + 32) = v204;
  *(v147 + 40) = v143;
  *(v147 + 48) = v144;
  swift_retain_n();
  v148 = sub_1D72647CC();
  v204 = 0;
  v149 = swift_allocObject();
  *(v149 + 16) = v148;
  *(v149 + 24) = v198;
  *(v149 + 40) = v204;
  v150 = __swift_project_boxed_opaque_existential_1(v175, *(v175 + 3));
  MEMORY[0x1EEE9AC00](v150, v151);
  MEMORY[0x1EEE9AC00](v152, v153);
  v174[-4] = sub_1D615B4A4;
  v174[-3] = &v174[-6];
  v172 = sub_1D6708B6C;
  v173 = v147;
  sub_1D5D2BC70(v141, sub_1D615B49C, v154, sub_1D615B4A4, &v174[-6]);

  sub_1D5B5BF78(0, &unk_1EDF43BB0, type metadata accessor for FormatPropertyDefinition, MEMORY[0x1E69E62F8]);
  sub_1D66856D0();
  sub_1D72647EC();
  sub_1D5D2CFE8(v141, type metadata accessor for FormatVersionRequirement);

  v155 = *(v176 + 40);
  if (qword_1EDF31EE0 != -1)
  {
    swift_once();
  }

  v156 = v189;
  v157 = __swift_project_value_buffer(v189, qword_1EDFFCD80);
  v188(v181, v157, v156);
  swift_storeEnumTagMultiPayload();
  v198 = xmmword_1D72BAA90;
  v200 = xmmword_1D72BAA90;
  v201 = 0;
  LOBYTE(v202) = 0;
  v158 = swift_allocObject();
  *(v158 + 16) = v198;
  *(v158 + 32) = v202;
  v159 = v196;
  *(v158 + 40) = v191;
  *(v158 + 48) = v159;
  v160 = v190 + v155;
  v161 = v178;
  sub_1D5CDE2EC(v160, v178, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  if ((*(v179 + 48))(v161, 1, v180) != 1)
  {
    v162 = (*(v179 + 32))(v177, v178, v180);
    MEMORY[0x1EEE9AC00](v162, v163);
    v174[-4] = sub_1D5B4AA6C;
    v174[-3] = 0;
    v172 = sub_1D6708B6C;
    v173 = v158;
    LOBYTE(v202) = 0;
    v164 = swift_allocObject();
    *(v164 + 16) = v198;
    *(v164 + 32) = v202;
    *(v164 + 40) = v191;
    *(v164 + 48) = v196;
    swift_retain_n();
    v165 = sub_1D72647CC();
    LOBYTE(v202) = 0;
    v166 = swift_allocObject();
    *(v166 + 16) = v165;
    *(v166 + 24) = v198;
    *(v166 + 40) = v202;
    v167 = __swift_project_boxed_opaque_existential_1(v175, *(v175 + 3));
    MEMORY[0x1EEE9AC00](v167, v168);
    MEMORY[0x1EEE9AC00](v169, v170);
    v174[-4] = sub_1D615B4A4;
    v174[-3] = &v174[-6];
    v172 = sub_1D6708B6C;
    v173 = v164;
    LOBYTE(v165) = sub_1D5D2F7A4(v181, sub_1D615B49C, v171, sub_1D615B4A4, &v174[-6]);

    if (v165)
    {
      sub_1D5B58B84(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58]);
      sub_1D72647EC();
    }

    (*(v179 + 8))(v177, v180);
    sub_1D5D2CFE8(v181, type metadata accessor for FormatVersionRequirement);
    v89 = v199;
    return sub_1D5D2CFE8(v89, sub_1D66B6AFC);
  }

  sub_1D5D2CFE8(v181, type metadata accessor for FormatVersionRequirement);

  sub_1D5D2CFE8(v199, sub_1D66B6AFC);
  return sub_1D5D35558(v178, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
}

uint64_t sub_1D658B4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66B8A40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D658B518(uint64_t a1)
{
  v2 = sub_1D5CAB8DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D658B554(uint64_t a1)
{
  v2 = sub_1D5CAB8DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSlotDefinitionItemSetAuxiliary.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  sub_1D66B6D8C();
  v33 = v5;
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66B6E58();
  v10 = v9;
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66B6EEC();
  sub_1D5B58B84(&qword_1EDF24D68, sub_1D66B6EEC);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_2:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_1D7264AFC();
  v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

  v17 = v10;
  v18 = v33;
  if (v16)
  {
    v19 = sub_1D726433C();
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = (v19 + 48);
      while (*v21 != 1)
      {
        v21 += 24;
        if (!--v20)
        {
          goto LABEL_9;
        }
      }

      v23 = v17;
      v25 = *(v21 - 2);
      v24 = *(v21 - 1);

      v26 = sub_1D6627E68(0x69747265706F7270, 0xEA00000000007365, 0x736D657469, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v27 = v25;
      *(v27 + 8) = v24;
      *(v27 + 16) = v26;
      *(v27 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v39 + 8))(v13, v23);
      goto LABEL_2;
    }

LABEL_9:
  }

  v37 = 0uLL;
  v38 = 0;
  if (sub_1D726434C())
  {
    sub_1D5B58B84(&qword_1EDF3BC48, sub_1D66B6D8C);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    sub_1D726431C();
    v22 = v39;
    v28 = sub_1D725A74C();
    (*(v31 + 8))(v8, v18);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
    v22 = v39;
  }

  sub_1D5B5BF78(0, &qword_1EDF43BA8, type metadata accessor for FormatSlotDefinitionItemSet, MEMORY[0x1E69E62F8]);
  v37 = xmmword_1D728CF30;
  v38 = 0;
  sub_1D5CABB2C();
  sub_1D726431C();
  (*(v22 + 8))(v13, v17);
  v29 = v34;
  v30 = v32;
  *v32 = v28;
  v30[1] = v29;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSlotDefinitionItemSetAuxiliary.encode(to:)(void *a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v79 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v70 - v10;
  sub_1D66B706C();
  *&v80 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v1;
  v78 = v1[1];
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D66B6EEC();
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF24D68, sub_1D66B6EEC);
  sub_1D5D2EE70(&type metadata for FormatSlotDefinitionItemSetAuxiliary, v20, v22, v17, &type metadata for FormatSlotDefinitionItemSetAuxiliary, v20, &type metadata for FormatVersions.SydroF, v18, v15, v21, &off_1F51F6C58);
  v23 = qword_1EDF31ED8;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD68);
  v26 = *(v24 - 8);
  v27 = *(v26 + 16);
  v28 = v26 + 16;
  v27(v11, v25, v24);
  v77 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  if (!v16[2])
  {
    v74 = v3;
    sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);

    v48 = v79;
    v47 = v80;
LABEL_10:
    v27(v48, v25, v24);
    goto LABEL_11;
  }

  v76 = v16;
  v72 = v25;
  v73 = v28;
  v71 = v27;
  v29 = v80;
  v30 = &v15[*(v80 + 44)];
  v32 = *v30;
  v31 = *(v30 + 1);
  LOBYTE(v82) = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v82;
  *(v33 + 40) = v32;
  *(v33 + 48) = v31;
  sub_1D66B7100();
  v34 = v15;
  v75 = v15;
  v35 = v3;
  v37 = v36;
  sub_1D5B58B84(&qword_1EDF02C48, sub_1D66B7100);

  v70 = v37;
  v38 = sub_1D72647CC();
  LOBYTE(v82) = 0;
  v39 = swift_allocObject();
  *(v39 + 24) = 0;
  *(v39 + 32) = 0;
  *(v39 + 16) = v38;
  *(v39 + 40) = v82;
  v40 = __swift_project_boxed_opaque_existential_1(&v34[*(v29 + 36)], *&v34[*(v29 + 36) + 24]);
  v74 = &v70;
  MEMORY[0x1EEE9AC00](v40, v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  *(&v70 - 4) = sub_1D5B4AA6C;
  *(&v70 - 3) = 0;
  v68 = sub_1D66B7194;
  v69 = v33;
  v45 = sub_1D5D2F7A4(v11, sub_1D615B49C, v44, sub_1D615B4A4, (&v70 - 6));
  if (v35)
  {
    sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);

    v46 = v75;
    return sub_1D5D2CFE8(v46, sub_1D66B706C);
  }

  v49 = v45;
  v15 = v75;

  if ((v49 & 1) == 0)
  {
    v74 = 0;
    sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);

    v48 = v79;
    v47 = v80;
    v27 = v71;
    v25 = v72;
    goto LABEL_10;
  }

  v82 = 0uLL;
  v83 = 0;
  v84 = v76;
  sub_1D5B5BF78(0, &unk_1EDF43BB0, type metadata accessor for FormatPropertyDefinition, MEMORY[0x1E69E62F8]);
  sub_1D66856D0();
  sub_1D72647EC();

  sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);
  v48 = v79;
  v47 = v80;
  v74 = 0;
  v71(v79, v72, v24);
LABEL_11:
  swift_storeEnumTagMultiPayload();
  v84 = v78;
  v80 = xmmword_1D728CF30;
  v82 = xmmword_1D728CF30;
  v83 = 0;
  v50 = &v15[*(v47 + 44)];
  v52 = *v50;
  v51 = *(v50 + 1);
  v81 = 0;
  v53 = swift_allocObject();
  v78 = &v70;
  *(v53 + 16) = v80;
  *(v53 + 32) = v81;
  *(v53 + 40) = v52;
  *(v53 + 48) = v51;
  MEMORY[0x1EEE9AC00](v53, v54);
  *(&v70 - 4) = sub_1D5B4AA6C;
  *(&v70 - 3) = 0;
  v68 = sub_1D6708B70;
  v69 = v55;
  v81 = 0;
  v56 = swift_allocObject();
  *(v56 + 16) = v80;
  *(v56 + 32) = v81;
  *(v56 + 40) = v52;
  *(v56 + 48) = v51;
  sub_1D66B7100();
  v58 = v57;
  sub_1D5B58B84(&qword_1EDF02C48, sub_1D66B7100);
  swift_retain_n();
  v77 = v58;
  v59 = sub_1D72647CC();
  v81 = 0;
  v60 = swift_allocObject();
  *(v60 + 16) = v59;
  *(v60 + 24) = v80;
  *(v60 + 40) = v81;
  v61 = __swift_project_boxed_opaque_existential_1(&v15[*(v47 + 36)], *&v15[*(v47 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v61, v62);
  MEMORY[0x1EEE9AC00](v63, v64);
  *(&v70 - 4) = sub_1D615B4A4;
  *(&v70 - 3) = (&v70 - 6);
  v68 = sub_1D6708B70;
  v69 = v56;
  v65 = v74;
  sub_1D5D2BC70(v48, sub_1D615B49C, v66, sub_1D615B4A4, (&v70 - 6));
  if (v65)
  {
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5B5BF78(0, &qword_1EDF43BA8, type metadata accessor for FormatSlotDefinitionItemSet, MEMORY[0x1E69E62F8]);
    sub_1D66B6C24();
    sub_1D72647EC();
    sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);
  }

  v46 = v15;
  return sub_1D5D2CFE8(v46, sub_1D66B706C);
}

uint64_t sub_1D658C360()
{
  v1 = 0x736D657469;
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
    return 0x69747265706F7270;
  }
}

uint64_t sub_1D658C3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66B8CE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D658C3EC(uint64_t a1)
{
  v2 = sub_1D66B6FC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D658C428(uint64_t a1)
{
  v2 = sub_1D66B6FC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSlotExpireContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
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

    v13 = v25;
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
          *(v20 + 16) = &unk_1F51172E8;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B7210();
    v26 = 0uLL;
    sub_1D726431C();
    v22 = v27;
    if (v27)
    {
      sub_1D5C34074(0, &qword_1EC886F48, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for FormatValue);
      v26 = xmmword_1D7279980;
      sub_1D66A51C8();
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v23 = v27;
    }

    else
    {
      (*(v7 + 8))(v10, v6);
      v23 = 0;
    }

    *v13 = v23;
    *(v13 + 8) = v22 ^ 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSlotExpireContent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v27 - v9;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 8);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v19 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSlotExpireContent, &type metadata for FormatCodingKeys, v20, v17, &type metadata for FormatSlotExpireContent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Sydro, v18, v14, v19, &off_1F51F6C38);
  if (v16)
  {
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v21 = sub_1D725BD1C();
    v22 = __swift_project_value_buffer(v21, qword_1EDFFCDE0);
    (*(*(v21 - 8) + 16))(v10, v22, v21);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641C3E4(0, v10);
    v23 = v10;
  }

  else
  {
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v24 = sub_1D725BD1C();
    v25 = __swift_project_value_buffer(v24, qword_1EDFFCDE0);
    (*(*(v24 - 8) + 16))(v6, v25, v24);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63939B0(1, v6, v15);
    v23 = v6;
  }

  sub_1D5D2CFE8(v23, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D658CADC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x74657366666FLL;
  }

  else
  {
    v3 = 0x73626F6E6BLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x74657366666FLL;
  }

  else
  {
    v5 = 0x73626F6E6BLL;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
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

uint64_t sub_1D658CB7C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D658CBF8()
{
  sub_1D72621EC();
}

uint64_t sub_1D658CC60()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D658CCE4(uint64_t *a1@<X8>)
{
  v2 = 0x73626F6E6BLL;
  if (*v1)
  {
    v2 = 0x74657366666FLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatSlotItemCountLimit.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  v39 = type metadata accessor for FormatSlotDefinition();
  MEMORY[0x1EEE9AC00](v39, v5);
  v33 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v32 - v9;
  v11 = type metadata accessor for FormatSlotItemCountLimit();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v32[0] = v14;
    v32[1] = v11;
    v15 = v35;
    v16 = a1;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v17 = sub_1D7264AFC();
    v18 = Dictionary<>.errorOnUnknownKeys.getter(v17);

    v19 = v36;
    v20 = v10;
    if (v18)
    {
      v21 = sub_1D726433C();
      v22 = (v21 + 40);
      v23 = *(v21 + 16) + 1;
      while (--v23)
      {
        v24 = v22 + 2;
        v25 = *v22;
        v22 += 2;
        if (v25 >= 4)
        {
          v26 = *(v24 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v27 = v26;
          *(v27 + 8) = v25;
          *(v27 + 16) = &unk_1F5117338;
          *(v27 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v15 + 8))(v10, v19);
          a1 = v16;
          goto LABEL_9;
        }
      }
    }

    sub_1D66B7264();
    v38 = 0uLL;
    sub_1D726431C();
    a1 = v16;
    if (v37)
    {
      if (v37 == 1)
      {
        v37 = xmmword_1D7279980;
        sub_1D66B72B8();
        sub_1D726431C();
        v31 = v34;
        (*(v15 + 8))(v20, v19);
        v30 = v32[0];
        *v32[0] = v38;
      }

      else
      {
        v38 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF2AB28, type metadata accessor for FormatSlotDefinition);
        v29 = v33;
        sub_1D726431C();
        (*(v15 + 8))(v10, v19);
        v30 = v32[0];
        sub_1D5C8F76C(v29, v32[0], type metadata accessor for FormatSlotDefinition);
        v31 = v34;
      }
    }

    else
    {
      (*(v15 + 8))(v10, v19);
      v31 = v34;
      v30 = v32[0];
    }

    swift_storeEnumTagMultiPayload();
    sub_1D5C8F76C(v30, v31, type metadata accessor for FormatSlotItemCountLimit);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSlotItemCountLimit.encode(to:)(void *a1)
{
  v2 = type metadata accessor for FormatSlotDefinition();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v42[0] = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v42 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v42 - v15;
  v17 = type metadata accessor for FormatSlotItemCountLimit();
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v27 = sub_1D5C30408();
  sub_1D5D2EE70(v17, &type metadata for FormatCodingKeys, v28, v25, v17, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v26, v24, v27, &off_1F51F6CD8);
  sub_1D6706BB4(v42[1], v20, type metadata accessor for FormatSlotItemCountLimit);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v30 = v42[0];
      sub_1D5C8F76C(v20, v42[0], type metadata accessor for FormatSlotDefinition);
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCDE0);
      (*(*(v31 - 8) + 16))(v8, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6392BE8(2, v30, v8);
      sub_1D5D2CFE8(v8, type metadata accessor for FormatVersionRequirement);
      v33 = type metadata accessor for FormatSlotDefinition;
      v34 = v30;
    }

    else
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v39 = sub_1D725BD1C();
      v40 = __swift_project_value_buffer(v39, qword_1EDFFCD50);
      (*(*(v39 - 8) + 16))(v16, v40, v39);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641BD40(0, v16);
      v33 = type metadata accessor for FormatVersionRequirement;
      v34 = v16;
    }
  }

  else
  {
    v35 = *v20;
    v36 = v20[1];
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v37 = sub_1D725BD1C();
    v38 = __swift_project_value_buffer(v37, qword_1EDFFCD50);
    (*(*(v37 - 8) + 16))(v12, v38, v37);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6392A54(1, v35, v36, v12);
    v33 = type metadata accessor for FormatVersionRequirement;
    v34 = v12;
  }

  sub_1D5D2CFE8(v34, v33);
  return sub_1D5D2CFE8(v24, sub_1D5D30DC4);
}

uint64_t sub_1D658D7C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x746E756F63;
  if (v2 != 1)
  {
    v5 = 1953459315;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x73626F6E6BLL;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x746E756F63;
  if (*a2 != 1)
  {
    v8 = 1953459315;
    v3 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x73626F6E6BLL;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D658D8A8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D658D93C()
{
  sub_1D72621EC();
}

uint64_t sub_1D658D9BC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D658DA4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6664384();
  *a1 = result;
  return result;
}

void sub_1D658DA7C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x746E756F63;
  if (v2 != 1)
  {
    v5 = 1953459315;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x73626F6E6BLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D658DC38(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "smallestToGreatest";
  }

  else
  {
    v2 = "tems";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "smallestToGreatest";
  }

  else
  {
    v4 = "tems";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

uint64_t sub_1D658DCDC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D658DD54()
{
  sub_1D72621EC();
}

uint64_t sub_1D658DDB8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D658DE38(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "smallestToGreatest";
  }

  else
  {
    v2 = "tems";
  }

  *a1 = 0xD000000000000012;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t FormatSlotItemPuzzleStatisticTransform.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
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
    v12 = v25;
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
          *(v21 + 16) = &unk_1F5117388;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B730C();
    v26 = 0uLL;
    sub_1D726431C();
    if (v27)
    {
      (*(v11 + 8))(v10, v6);
      v23 = 2;
    }

    else
    {
      v26 = xmmword_1D7279980;
      sub_1D5F2B7AC();
      sub_1D726431C();
      (*(v11 + 8))(v10, v6);
      v23 = v27;
    }

    *v12 = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSlotItemPuzzleStatisticTransform.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatSlotItemPuzzleStatisticTransform, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatSlotItemPuzzleStatisticTransform, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.DawnburstF, v17, v14, v18, &off_1F51F6BD8);
  if (v15 == 2)
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCE80);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6418DB0(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCE80);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63863B8(0, v15 & 1, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D658E55C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7974706D456E6F6ELL;
  }

  else
  {
    v3 = 0x726564726FLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x7974706D456E6F6ELL;
  }

  else
  {
    v5 = 0x726564726FLL;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
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

uint64_t sub_1D658E600()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D658E680()
{
  sub_1D72621EC();
}

uint64_t sub_1D658E6EC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D658E774(uint64_t *a1@<X8>)
{
  v2 = 0x726564726FLL;
  if (*v1)
  {
    v2 = 0x7974706D456E6F6ELL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatSlotItemSort.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v26 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();
  }

  else
  {
    v11 = v6;
    v12 = v27;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    v15 = v9;
    if (v14)
    {
      v16 = sub_1D726433C();
      v17 = (v16 + 40);
      v18 = *(v16 + 16) + 1;
      while (--v18)
      {
        v19 = v17 + 2;
        v20 = *v17;
        v17 += 2;
        if (v20 >= 4)
        {
          v21 = *(v19 - 3);

          sub_1D5E2D970();
          v10 = swift_allocError();
          *v22 = v21;
          *(v22 + 8) = v20;
          *(v22 + 16) = &unk_1F51173D8;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B7360();
    v28 = 0uLL;
    sub_1D726431C();
    if (v29)
    {
      (*(v11 + 8))(v15, v5);
      v24 = 0;
    }

    else
    {
      sub_1D66B73B4(0, &qword_1EC887238, &qword_1EDF3A6A0, MEMORY[0x1E69E6530], &protocol witness table for Int);
      v28 = xmmword_1D7279980;
      sub_1D66B7424(&qword_1EC887240, sub_1D66B74B0);
      sub_1D726431C();
      (*(v11 + 8))(v15, v5);
      v25 = v29;
      v24 = swift_allocObject();
      *(v24 + 16) = v25;
    }

    *v12 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSlotItemSort.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v28 - v9;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSlotItemSort, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatSlotItemSort, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowC, v17, v14, v18, &off_1F51F6AF8);
  if (v15)
  {
    v20 = *(v15 + 16);
    v21 = qword_1EDF31F40;

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = sub_1D725BD1C();
    v23 = __swift_project_value_buffer(v22, qword_1EDFFCE50);
    (*(*(v22 - 8) + 16))(v10, v23, v22);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63A7CA4(0, v20, v10);

    v24 = v10;
  }

  else
  {
    if (qword_1EDF31E78 != -1)
    {
      swift_once();
    }

    v25 = sub_1D725BD1C();
    v26 = __swift_project_value_buffer(v25, qword_1EDFFCC90);
    (*(*(v25 - 8) + 16))(v6, v26, v25);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6421C30(1, v6);
    v24 = v6;
  }

  sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D658EF1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746174536E656573;
  }

  else
  {
    v3 = 0x726F7463656C6573;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v5 = 0x746174536E656573;
  }

  else
  {
    v5 = 0x726F7463656C6573;
  }

  if (*a2)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v6 = 0xE800000000000000;
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

uint64_t sub_1D658EFC8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D658F050()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t FormatSlotItemTagFilter.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
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
          *(v20 + 16) = &unk_1F5117428;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v13, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B7534();
    v26 = 0uLL;
    sub_1D726431C();
    v26 = xmmword_1D7279980;
    if (v27)
    {
      sub_1D5F34364();
      sub_1D726431C();
      v22 = v25;
      (*(v7 + 8))(v13, v6);
      v23 = v27 | 0x2000000000000000;
    }

    else
    {
      sub_1D5F34364();
      sub_1D726431C();
      v22 = v25;
      (*(v7 + 8))(v13, v6);
      v23 = v27;
    }

    *v22 = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSlotItemTagFilter.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatSlotItemTagFilter, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatSlotItemTagFilter, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.DawnburstC, v17, v14, v18, &off_1F51F6B98);
  if ((v15 & 0x2000000000000000) != 0)
  {
    if (qword_1EDF31F58[0] != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCE98);
    (*(*(v23 - 8) + 16))(v6, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D639381C(1, v15 & 0xDFFFFFFFFFFFFFFFLL, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31F58[0] != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCE98);
    (*(*(v20 - 8) + 16))(v10, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D639381C(0, v15, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D658F810(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6564756C637865;
  }

  else
  {
    v2 = 0x6564756C636E69;
  }

  if (*a2)
  {
    v3 = 0x6564756C637865;
  }

  else
  {
    v3 = 0x6564756C636E69;
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

uint64_t sub_1D658F88C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D658F8F8()
{
  sub_1D72621EC();
}

uint64_t sub_1D658F948()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D658F9BC(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0x6564756C637865;
  }

  else
  {
    v2 = 0x6564756C636E69;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t FormatSlotItemTagFilterAndCondition.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D66B7588();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66B761C();
  sub_1D5B58B84(&qword_1EC887270, sub_1D66B761C);
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

  v13 = v25;
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

      v20 = sub_1D6627E68(0x69646E6F4373686CLL, 0xEC0000006E6F6974, 0x69646E6F43736872, 0xEC0000006E6F6974);
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

  sub_1D5F34364();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSlotItemTagFilterAndCondition.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v73 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v66 - v8;
  sub_1D66B779C();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v72 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D66B761C();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EC887270, sub_1D66B761C);
  sub_1D5D2EE70(&type metadata for FormatSlotItemTagFilterAndCondition, v19, v21, v16, &type metadata for FormatSlotItemTagFilterAndCondition, v19, &type metadata for FormatVersions.DawnburstC, v17, v14, v20, &off_1F51F6B98);
  if (qword_1EDF31F58[0] != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCE98);
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
  v64 = sub_1D6708B74;
  v65 = v31;
  v81 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v81;
  v71 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D66B7830();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EC887288, sub_1D66B7830);
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
  v64 = sub_1D6708B74;
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

    v48 = sub_1D5F343B8();
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
    v64 = sub_1D6708B74;
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
    v64 = sub_1D6708B74;
    v65 = v56;
    sub_1D5D2BC70(v50, sub_1D615B49C, v63, sub_1D615B4A4, (&v66 - 6));

    sub_1D72647EC();
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D66B779C);
}

uint64_t sub_1D6590660(uint64_t a1)
{
  v2 = sub_1D66B76F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D659069C(uint64_t a1)
{
  v2 = sub_1D66B76F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65906F0()
{
  sub_1D72621EC();
}

uint64_t sub_1D65907F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6664800();
  *a1 = result;
  return result;
}

void sub_1D6590820(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x67615464656566;
  v5 = 0xE200000000000000;
  v6 = 29295;
  if (v2 != 5)
  {
    v6 = 7630702;
    v5 = 0xE300000000000000;
  }

  v7 = 0xEA00000000006465;
  v8 = 0x776F6C6C6F666E75;
  if (v2 != 3)
  {
    v8 = 6581857;
    v7 = 0xE300000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x67615470756F7267;
  if (v2 != 1)
  {
    v9 = 0x6465776F6C6C6F66;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_1D6590998()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x6F697469646E6F63;
  }
}

uint64_t sub_1D65909D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL;
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

uint64_t sub_1D6590AC4(uint64_t a1)
{
  v2 = sub_1D6667ABC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6590B00(uint64_t a1)
{
  v2 = sub_1D6667ABC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSlotItemTagFilterOrCondition.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D66B7928();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66B79BC();
  sub_1D5B58B84(&qword_1EC8872B8, sub_1D66B79BC);
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

  v13 = v25;
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

      v20 = sub_1D6627E68(0x69646E6F4373686CLL, 0xEC0000006E6F6974, 0x69646E6F43736872, 0xEC0000006E6F6974);
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

  sub_1D5F34364();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSlotItemTagFilterOrCondition.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v73 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v66 - v8;
  sub_1D66B7B3C();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v72 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D66B79BC();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EC8872B8, sub_1D66B79BC);
  sub_1D5D2EE70(&type metadata for FormatSlotItemTagFilterOrCondition, v19, v21, v16, &type metadata for FormatSlotItemTagFilterOrCondition, v19, &type metadata for FormatVersions.DawnburstC, v17, v14, v20, &off_1F51F6B98);
  if (qword_1EDF31F58[0] != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCE98);
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
  v64 = sub_1D6708B74;
  v65 = v31;
  v81 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v81;
  v71 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D66B7BD0();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EC8872D0, sub_1D66B7BD0);
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
  v64 = sub_1D66B7C64;
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

    v48 = sub_1D5F343B8();
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
    v64 = sub_1D6708B74;
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
    v64 = sub_1D6708B74;
    v65 = v56;
    sub_1D5D2BC70(v50, sub_1D615B49C, v63, sub_1D615B4A4, (&v66 - 6));

    sub_1D72647EC();
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D66B7B3C);
}

uint64_t sub_1D6591704(uint64_t a1)
{
  v2 = sub_1D66B7A94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6591740(uint64_t a1)
{
  v2 = sub_1D66B7A94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSlotItemValidate.encode(to:)(void *a1)
{
  v2 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSlotItemValidate, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatSlotItemValidate, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.LuckCheer, v11, v9, v12, &off_1F51F6AB8);
  if (qword_1EDF31E78 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCC90);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D641D7B0(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatSlotNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v127 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v128 = &v124 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v129 = &v124 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v131 = &v124 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v124 - v19;
  sub_1D66B8F1C();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1D5C548F0();
  v29 = v28;
  v30 = sub_1D5B58B84(&qword_1EDF24C08, sub_1D5C548F0);
  sub_1D5D2EE70(v4, v29, v31, v26, v4, v29, &type metadata for FormatVersions.JazzkonC, v27, v25, v30, &off_1F51F6C78);
  swift_beginAccess();
  v32 = v2[2];
  v33 = v2[3];
  v132 = v2;
  v34 = qword_1EDF31EB0;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = sub_1D725BD1C();
  v36 = __swift_project_value_buffer(v35, qword_1EDFFCD30);
  v37 = *(v35 - 8);
  v38 = *(v37 + 16);
  v130 = v36;
  v134 = v35;
  v135 = v38;
  v137 = v37 + 16;
  (v38)(v20);
  v136 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v149 = v32;
  *(&v149 + 1) = v33;
  *&v142 = v33;
  v151 = 0;
  v152 = 0;
  v153 = 0;
  v39 = &v25[*(v22 + 44)];
  v140 = v20;
  v40 = *v39;
  v41 = *(v39 + 1);
  LOBYTE(v147) = 0;
  v42 = swift_allocObject();
  v141 = &v124;
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  *(v42 + 32) = v147;
  *(v42 + 40) = v40;
  *(v42 + 48) = v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  *(&v124 - 4) = sub_1D5B4AA6C;
  *(&v124 - 3) = 0;
  v122 = sub_1D6708B78;
  v123 = v44;
  LOBYTE(v147) = 0;
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  *(v45 + 32) = v147;
  v133 = v40;
  *(v45 + 40) = v40;
  *(v45 + 48) = v41;
  sub_1D5E1A018(0);
  v47 = v46;
  v48 = sub_1D5B58B84(&qword_1EDF02AC8, sub_1D5E1A018);
  swift_retain_n();
  v139 = v47;
  v138 = v48;
  v49 = sub_1D72647CC();
  LOBYTE(v147) = 0;
  v50 = swift_allocObject();
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = v147;
  v51 = &v25[*(v22 + 36)];
  v52 = __swift_project_boxed_opaque_existential_1(v51, *(v51 + 3));
  MEMORY[0x1EEE9AC00](v52, v53);
  MEMORY[0x1EEE9AC00](v54, v55);
  *(&v124 - 4) = sub_1D615B4A4;
  *(&v124 - 3) = (&v124 - 6);
  v56 = v140;
  v122 = sub_1D6708B78;
  v123 = v45;
  v57 = v143;
  sub_1D5D2BC70(v140, sub_1D615B49C, v58, sub_1D615B4A4, (&v124 - 6));
  if (v57)
  {
    sub_1D5D2CFE8(v56, type metadata accessor for FormatVersionRequirement);

    sub_1D5D2CFE8(v25, sub_1D66B8F1C);
  }

  v126 = v51;
  v143 = v41;

  sub_1D72647EC();
  sub_1D5D2CFE8(v56, type metadata accessor for FormatVersionRequirement);

  v60 = v132;
  swift_beginAccess();
  v61 = *(v60 + 32);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v62 = v134;
  v63 = __swift_project_value_buffer(v134, qword_1EDFFCD50);
  v64 = v131;
  v65 = v135;
  v135(v131, v63, v62);
  swift_storeEnumTagMultiPayload();
  v66 = v133;
  if (v61)
  {
    LOBYTE(v149) = 0;
    v67 = v64;
    v68 = swift_allocObject();
    v142 = xmmword_1D728CF30;
    *(v68 + 16) = xmmword_1D728CF30;
    *(v68 + 32) = v149;
    *(v68 + 40) = v66;
    *(v68 + 48) = v143;

    v69 = sub_1D72647CC();
    LOBYTE(v149) = 0;
    v70 = swift_allocObject();
    *(v70 + 16) = v69;
    *(v70 + 24) = v142;
    *(v70 + 40) = v149;
    v71 = __swift_project_boxed_opaque_existential_1(v126, *(v126 + 3));
    MEMORY[0x1EEE9AC00](v71, v72);
    MEMORY[0x1EEE9AC00](v73, v74);
    *(&v124 - 4) = sub_1D5B4AA6C;
    *(&v124 - 3) = 0;
    v122 = sub_1D6708B78;
    v123 = v68;
    v76 = sub_1D5D2F7A4(v67, sub_1D615B49C, v75, sub_1D615B4A4, (&v124 - 6));
    v93 = v76;

    if (v93)
    {
      v149 = v142;
      v150 = 0;
      LOBYTE(v147) = 1;
      sub_1D72647EC();
      sub_1D5D2CFE8(v131, type metadata accessor for FormatVersionRequirement);
      v77 = v143;
      v65 = v135;
      v62 = v134;
      v66 = v133;
    }

    else
    {
      sub_1D5D2CFE8(v131, type metadata accessor for FormatVersionRequirement);
      v62 = v134;
      v77 = v143;
      v66 = v133;
      v65 = v135;
    }
  }

  else
  {
    sub_1D5D2CFE8(v64, type metadata accessor for FormatVersionRequirement);
    v77 = v143;
  }

  v125 = v25;
  swift_beginAccess();
  v78 = v60[5];
  v79 = v129;
  v65(v129, v130, v62);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v147) = 0;
  v80 = swift_allocObject();
  v142 = xmmword_1D7297410;
  *(v80 + 16) = xmmword_1D7297410;
  *(v80 + 32) = v147;
  *(v80 + 40) = v66;
  *(v80 + 48) = v77;

  v81 = sub_1D72647CC();
  LOBYTE(v147) = 0;
  v82 = swift_allocObject();
  *(v82 + 16) = v81;
  *(v82 + 24) = v142;
  *(v82 + 40) = v147;
  v83 = __swift_project_boxed_opaque_existential_1(v126, *(v126 + 3));
  MEMORY[0x1EEE9AC00](v83, v84);
  MEMORY[0x1EEE9AC00](v85, v86);
  *(&v124 - 4) = sub_1D5B4AA6C;
  *(&v124 - 3) = 0;
  v122 = sub_1D66B8FB0;
  v123 = v80;
  LOBYTE(v81) = sub_1D5D2F7A4(v79, sub_1D615B49C, v87, sub_1D615B4A4, (&v124 - 6));

  if (v81)
  {
    v147 = v142;
    v148 = 0;
    v146 = v78;
    sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
    sub_1D66594A0();
    v88 = v125;
    sub_1D72647EC();
    v89 = v128;
    v90 = v134;
    v91 = v133;
    v92 = v130;

    sub_1D5D2CFE8(v129, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    sub_1D5D2CFE8(v129, type metadata accessor for FormatVersionRequirement);

    v88 = v125;
    v89 = v128;
    v90 = v134;
    v91 = v133;
    v92 = v130;
  }

  v94 = v132;
  swift_beginAccess();
  v95 = v94[6];
  v135(v89, v92, v90);
  swift_storeEnumTagMultiPayload();
  if (*(v95 + 16))
  {
    LOBYTE(v146) = 0;
    v96 = swift_allocObject();
    v142 = xmmword_1D72BAA60;
    *(v96 + 16) = xmmword_1D72BAA60;
    *(v96 + 32) = v146;
    *(v96 + 40) = v91;
    *(v96 + 48) = v143;

    v97 = sub_1D72647CC();
    LOBYTE(v146) = 0;
    v98 = swift_allocObject();
    *(v98 + 16) = v97;
    *(v98 + 24) = v142;
    *(v98 + 40) = v146;
    v99 = __swift_project_boxed_opaque_existential_1(v126, *(v126 + 3));
    MEMORY[0x1EEE9AC00](v99, v100);
    MEMORY[0x1EEE9AC00](v101, v102);
    *(&v124 - 4) = sub_1D5B4AA6C;
    *(&v124 - 3) = 0;
    v122 = sub_1D6708B78;
    v123 = v96;
    v104 = sub_1D5D2F7A4(v89, sub_1D615B49C, v103, sub_1D615B4A4, (&v124 - 6));
    v106 = v104;

    if (v106)
    {
      v88 = v125;
      sub_1D5E08DAC(v95, v125, 3, 0, 0);
    }

    else
    {
      v88 = v125;
    }

    v105 = v127;
    v89 = v128;

    v90 = v134;
    v91 = v133;
    v92 = v130;
  }

  else
  {
    v105 = v127;
  }

  sub_1D5D2CFE8(v89, type metadata accessor for FormatVersionRequirement);
  v107 = v132;
  swift_beginAccess();
  v108 = v107[7];
  v135(v105, v92, v90);
  swift_storeEnumTagMultiPayload();
  if (*(v108 + 16))
  {
    LOBYTE(v144) = 0;
    v109 = swift_allocObject();
    v142 = xmmword_1D72BAA70;
    *(v109 + 16) = xmmword_1D72BAA70;
    *(v109 + 32) = v144;
    *(v109 + 40) = v91;
    *(v109 + 48) = v143;

    v110 = sub_1D72647CC();
    LOBYTE(v144) = 0;
    v111 = v105;
    v112 = swift_allocObject();
    *(v112 + 16) = v110;
    *(v112 + 24) = v142;
    *(v112 + 40) = v144;
    v113 = __swift_project_boxed_opaque_existential_1(v126, *(v126 + 3));
    v143 = &v124;
    MEMORY[0x1EEE9AC00](v113, v114);
    MEMORY[0x1EEE9AC00](v115, v116);
    *(&v124 - 4) = sub_1D5B4AA6C;
    *(&v124 - 3) = 0;
    v122 = sub_1D6708B78;
    v123 = v109;
    v118 = sub_1D5D2F7A4(v111, sub_1D615B49C, v117, sub_1D615B4A4, (&v124 - 6));
    v121 = v118;

    if ((v121 & 1) == 0)
    {
      sub_1D5D2CFE8(v127, type metadata accessor for FormatVersionRequirement);

      v120 = v125;
      return sub_1D5D2CFE8(v120, sub_1D66B8F1C);
    }

    v144 = v142;
    v145 = 0;
    v154 = v108;
    sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
    sub_1D60AD304();
    v88 = v125;
    sub_1D72647EC();

    v119 = v127;
  }

  else
  {
    v119 = v105;
  }

  sub_1D5D2CFE8(v119, type metadata accessor for FormatVersionRequirement);
  v120 = v88;
  return sub_1D5D2CFE8(v120, sub_1D66B8F1C);
}

uint64_t sub_1D6592F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66B9534(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6592FB8(uint64_t a1)
{
  v2 = sub_1D5C54A5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6592FF4(uint64_t a1)
{
  v2 = sub_1D5C54A5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSlotTransform.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v47 = a2;
  v3 = type metadata accessor for FormatSlotItemCountLimit();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v48 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v47 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  v12 = v51;
  sub_1D7264B0C();
  v13 = v12;
  if (v12)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v13);
    swift_willThrow();
  }

  else
  {
    v51 = v6;
    v14 = v47;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = sub_1D7264AFC();
    v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

    v17 = v11;
    if (v16)
    {
      v18 = sub_1D726433C();
      v19 = (v18 + 40);
      v20 = *(v18 + 16) + 1;
      while (--v20)
      {
        v21 = v19 + 2;
        v22 = *v19;
        v19 += 2;
        if (v22 >= 4)
        {
          v23 = *(v21 - 3);

          sub_1D5E2D970();
          v13 = swift_allocError();
          *v24 = v23;
          *(v24 + 8) = v22;
          *(v24 + 16) = &unk_1F51174F0;
          *(v24 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v48 + 8))(v11, v8);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B902C();
    v50 = 0uLL;
    sub_1D726431C();
    v26 = v51;
    switch(v49)
    {
      case 1:
        v50 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF3F1F8, type metadata accessor for FormatSlotItemCountLimit);
        sub_1D726431C();
        (*(v48 + 8))(v17, v8);
        v27 = swift_allocBox();
        sub_1D5C8F76C(v26, v36, type metadata accessor for FormatSlotItemCountLimit);
        break;
      case 2:
        v27 = 0xA000000000000008;
        (*(v48 + 8))(v17, v8);
        break;
      case 3:
        sub_1D66B9324();
        v50 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF126F8, sub_1D66B9324);
        sub_1D726431C();
        (*(v48 + 8))(v17, v8);
        v32 = v49;
        v33 = swift_allocObject();
        *(v33 + 16) = v32;
        v27 = v33 | 0x1000000000000000;
        break;
      case 4:
        v50 = xmmword_1D7279980;
        sub_1D5B57DEC();
        sub_1D726431C();
        (*(v48 + 8))(v17, v8);
        v28 = v49;
        v29 = swift_allocObject();
        *(v29 + 16) = v28;
        v27 = v29 | 0x2000000000000000;
        break;
      case 5:
        v50 = xmmword_1D7279980;
        sub_1D66B92D0();
        sub_1D726427C();
        if (BYTE9(v49))
        {
          v37 = 0;
        }

        else
        {
          v37 = v49;
        }

        v38 = BYTE8(v49) & ~BYTE9(v49);
        (*(v48 + 8))(v17, v8);
        v39 = swift_allocObject();
        *(v39 + 16) = v37;
        *(v39 + 24) = v38 & 1;
        v27 = v39 | 0x3000000000000000;
        break;
      case 6:
        v50 = xmmword_1D7279980;
        sub_1D66B9260();
        sub_1D726431C();
        (*(v48 + 8))(v17, v8);
        v40 = v49;
        v41 = swift_allocObject();
        *(v41 + 16) = v40;
        v27 = v41 | 0x4000000000000000;
        break;
      case 7:
        v50 = xmmword_1D7279980;
        sub_1D66B920C();
        sub_1D726431C();
        (*(v48 + 8))(v17, v8);
        v34 = v49;
        v35 = swift_allocObject();
        *(v35 + 16) = v34;
        v27 = v35 | 0x5000000000000000;
        break;
      case 8:
        sub_1D5C30060(0, &qword_1EC8872F0, sub_1D66B9128, &type metadata for FormatSlotTransform, type metadata accessor for FormatSelectorValue);
        v49 = xmmword_1D7279980;
        sub_1D66B917C();
        sub_1D726431C();
        (*(v48 + 8))(v17, v8);
        v45 = *(&v50 + 1);
        v44 = v50;
        v46 = swift_allocObject();
        *(v46 + 16) = v44;
        *(v46 + 24) = v45;
        v27 = v46 | 0x6000000000000000;
        break;
      case 9:
        v50 = xmmword_1D7279980;
        sub_1D61FE0FC();
        sub_1D726431C();
        (*(v48 + 8))(v17, v8);
        v30 = v49;
        v31 = swift_allocObject();
        *(v31 + 16) = v30;
        v27 = v31 | 0x7000000000000000;
        break;
      case 10:
        v50 = xmmword_1D7279980;
        sub_1D66B90D4();
        sub_1D726431C();
        (*(v48 + 8))(v17, v8);
        v42 = v49;
        v43 = swift_allocObject();
        *(v43 + 16) = v42;
        v27 = v43 | 0x8000000000000000;
        break;
      case 11:
        v50 = xmmword_1D7279980;
        sub_1D66B9080();
        sub_1D726431C();
        (*(v48 + 8))(v17, v8);
        v27 = swift_allocEmptyBox() | 0x9000000000000000;
        break;
      case 12:
        (*(v48 + 8))(v17, v8);
        v27 = 0xA000000000000010;
        break;
      default:
        (*(v48 + 8))(v17, v8);
        v27 = 0xA000000000000000;
        break;
    }

    *v14 = v27;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSlotTransform.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatSlotItemCountLimit();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v124 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v117 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v119 = &v114 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v121 = &v114 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v120 = &v114 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v122 = &v114 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v118 = &v114 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v123 = &v114 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v114 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v114 - v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v114 - v38;
  MEMORY[0x1EEE9AC00](v40, v41);
  v115 = &v114 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v114 - v45;
  MEMORY[0x1EEE9AC00](v47, v48);
  v116 = &v114 - v49;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v50 - 8, v51);
  v53 = &v114 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *v2;
  v55 = a1[3];
  v56 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v55);
  v57 = sub_1D5C30408();
  v125 = v53;
  sub_1D5D2EE70(&type metadata for FormatSlotTransform, &type metadata for FormatCodingKeys, v58, v55, &type metadata for FormatSlotTransform, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v56, v53, v57, &off_1F51F6CD8);
  v59 = v54 >> 60;
  if ((v54 >> 60) > 4)
  {
    if (v59 > 7)
    {
      if (v59 != 8)
      {
        if (v59 == 9)
        {
          if (qword_1EDF31E78 != -1)
          {
            swift_once();
          }

          v75 = sub_1D725BD1C();
          v76 = __swift_project_value_buffer(v75, qword_1EDFFCC90);
          v65 = v119;
          (*(*(v75 - 8) + 16))(v119, v76, v75);
          type metadata accessor for FormatVersionRequirement.Value(0);
          swift_storeEnumTagMultiPayload();
          v66 = v125;
          sub_1D63A5EF8(11, v65);
        }

        else
        {
          if (v54 == 0xA000000000000000)
          {
            if (qword_1EDF31ED0 != -1)
            {
              swift_once();
            }

            v108 = sub_1D725BD1C();
            v109 = __swift_project_value_buffer(v108, qword_1EDFFCD50);
            v65 = v116;
            (*(*(v108 - 8) + 16))(v116, v109, v108);
            type metadata accessor for FormatVersionRequirement.Value(0);
            swift_storeEnumTagMultiPayload();
            v107 = 0;
            v110 = v65;
            v66 = v125;
          }

          else
          {
            if (v54 == 0xA000000000000008)
            {
              v66 = v125;
              if (qword_1EDF31ED0 != -1)
              {
                swift_once();
              }

              v105 = sub_1D725BD1C();
              v106 = __swift_project_value_buffer(v105, qword_1EDFFCD50);
              v65 = v115;
              (*(*(v105 - 8) + 16))(v115, v106, v105);
              type metadata accessor for FormatVersionRequirement.Value(0);
              swift_storeEnumTagMultiPayload();
              v107 = 2;
            }

            else
            {
              v66 = v125;
              if (qword_1EDF31F40 != -1)
              {
                swift_once();
              }

              v111 = sub_1D725BD1C();
              v112 = __swift_project_value_buffer(v111, qword_1EDFFCE50);
              v65 = v117;
              (*(*(v111 - 8) + 16))(v117, v112, v111);
              type metadata accessor for FormatVersionRequirement.Value(0);
              swift_storeEnumTagMultiPayload();
              v107 = 12;
            }

            v110 = v65;
          }

          sub_1D6420710(v107, v110);
        }

        goto LABEL_56;
      }

      v90 = *((v54 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v91 = qword_1EDF31F40;

      if (v91 != -1)
      {
        swift_once();
      }

      v92 = sub_1D725BD1C();
      v93 = __swift_project_value_buffer(v92, qword_1EDFFCE50);
      v65 = v121;
      (*(*(v92 - 8) + 16))(v121, v93, v92);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v66 = v125;
      sub_1D63A5D64(10, v90, v65);
    }

    else
    {
      if (v59 == 5)
      {
        v87 = *((v54 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        if (qword_1EDF31F50 != -1)
        {
          swift_once();
        }

        v88 = sub_1D725BD1C();
        v89 = __swift_project_value_buffer(v88, qword_1EDFFCE80);
        v65 = v118;
        (*(*(v88 - 8) + 16))(v118, v89, v88);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v66 = v125;
        sub_1D63A5868(7, v87, v65);
        goto LABEL_56;
      }

      if (v59 == 6)
      {
        v61 = *((v54 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v60 = *((v54 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        sub_1D5FBABE0(v61);
        v62 = qword_1EDF31F40;

        if (v62 != -1)
        {
          swift_once();
        }

        v63 = sub_1D725BD1C();
        v64 = __swift_project_value_buffer(v63, qword_1EDFFCE50);
        v65 = v122;
        (*(*(v63 - 8) + 16))(v122, v64, v63);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v66 = v125;
        sub_1D63A59FC(8, v61, v60, v65);
        sub_1D5FBAC60(v61);

        goto LABEL_56;
      }

      v101 = *((v54 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v102 = qword_1EDF31F40;

      if (v102 != -1)
      {
        swift_once();
      }

      v103 = sub_1D725BD1C();
      v104 = __swift_project_value_buffer(v103, qword_1EDFFCE50);
      v65 = v120;
      (*(*(v103 - 8) + 16))(v120, v104, v103);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v66 = v125;
      sub_1D63A5BD0(9, v101, v65);
    }

LABEL_56:
    sub_1D5D2CFE8(v65, type metadata accessor for FormatVersionRequirement);
    v81 = v66;
    return sub_1D5D2CFE8(v81, sub_1D5D30DC4);
  }

  v67 = v39;
  v68 = v35;
  v65 = v31;
  v69 = v123;
  v70 = v124;
  if (v59 > 1)
  {
    if (v59 != 2)
    {
      if (v59 == 3)
      {
        v71 = *((v54 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v72 = *((v54 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        if (qword_1EDF31F08 != -1)
        {
          swift_once();
        }

        v73 = sub_1D725BD1C();
        v74 = __swift_project_value_buffer(v73, qword_1EDFFCDE0);
        (*(*(v73 - 8) + 16))(v65, v74, v73);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v66 = v125;
        sub_1D63A5538(5, v71, v72, v65);
      }

      else
      {
        v94 = *((v54 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        sub_1D66B9518(v94);
        if (qword_1EDF31F58[0] != -1)
        {
          swift_once();
        }

        v95 = sub_1D725BD1C();
        v96 = __swift_project_value_buffer(v95, qword_1EDFFCE98);
        v65 = v69;
        (*(*(v95 - 8) + 16))(v69, v96, v95);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v66 = v125;
        sub_1D63A56D4(6, v94, v69);
        sub_1D66B92B4(v94);
      }

      goto LABEL_56;
    }

    v82 = *((v54 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    sub_1D5FBABE0(v82);
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v83 = sub_1D725BD1C();
    v84 = __swift_project_value_buffer(v83, qword_1EDFFCD50);
    (*(*(v83 - 8) + 16))(v68, v84, v83);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v85 = v125;
    sub_1D63A53A4(4, v82, v68);
    sub_1D5FBAC60(v82);
    v86 = v68;
    goto LABEL_38;
  }

  if (v59)
  {
    v97 = *((v54 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v98 = qword_1EDF31ED0;

    if (v98 != -1)
    {
      swift_once();
    }

    v99 = sub_1D725BD1C();
    v100 = __swift_project_value_buffer(v99, qword_1EDFFCD50);
    (*(*(v99 - 8) + 16))(v67, v100, v99);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v85 = v125;
    sub_1D63A51D8(3, v97, v67);

    v86 = v67;
LABEL_38:
    sub_1D5D2CFE8(v86, type metadata accessor for FormatVersionRequirement);
    v81 = v85;
    return sub_1D5D2CFE8(v81, sub_1D5D30DC4);
  }

  v77 = swift_projectBox();
  sub_1D6706BB4(v77, v70, type metadata accessor for FormatSlotItemCountLimit);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v78 = sub_1D725BD1C();
  v79 = __swift_project_value_buffer(v78, qword_1EDFFCD50);
  (*(*(v78 - 8) + 16))(v46, v79, v78);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v80 = v125;
  sub_1D63A5004(1, v70, v46);
  sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);
  sub_1D5D2CFE8(v70, type metadata accessor for FormatSlotItemCountLimit);
  v81 = v80;
  return sub_1D5D2CFE8(v81, sub_1D5D30DC4);
}

uint64_t sub_1D65947F0(char a1)
{
  result = 0x657571696E75;
  switch(a1)
  {
    case 1:
      result = 0x74696D696CLL;
      break;
    case 2:
      result = 0x6C616E6F73726570;
      break;
    case 3:
      result = 0x65726975716572;
      break;
    case 4:
      result = 0x7963696C6F70;
      break;
    case 5:
      result = 0x6F43657269707865;
      break;
    case 6:
      result = 6775156;
      break;
    case 7:
      result = 0x7453656C7A7A7570;
      break;
    case 8:
      result = 0x726F7463656C6573;
      break;
    case 9:
      result = 0x7265746C6966;
      break;
    case 10:
      result = 1953656691;
      break;
    case 11:
      result = 0x65746164696C6176;
      break;
    case 12:
      result = 0x7974706D65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D65949A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6663CFC();
  *a1 = result;
  return result;
}

uint64_t sub_1D65949D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D65947F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D6594AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66B9740(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6594AE4(uint64_t a1)
{
  v2 = sub_1D5C5F448();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6594B20(uint64_t a1)
{
  v2 = sub_1D5C5F448();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSnippetNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v141 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v146 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v147 = &v141 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v149 = &v141 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v148 = &v141 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v159 = &v141 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v141 - v26;
  sub_1D66B99E4();
  v162 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v141 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1D5C5BFA0();
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF25608, sub_1D5C5BFA0);
  v163 = v31;
  sub_1D5D2EE70(v4, v35, v37, v32, v4, v35, &type metadata for FormatVersions.JazzkonC, v33, v31, v36, &off_1F51F6C78);
  swift_beginAccess();
  v156 = v2;
  v38 = v2[2];
  v39 = v2[3];
  v40 = qword_1EDF31EB0;

  if (v40 != -1)
  {
    swift_once();
  }

  v41 = sub_1D725BD1C();
  v42 = __swift_project_value_buffer(v41, qword_1EDFFCD30);
  v43 = *(v41 - 8);
  v44 = *(v43 + 16);
  v45 = v43 + 16;
  v157 = v41;
  v44(v27, v42, v41);
  v158 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v46 = sub_1D725895C();
  v47 = (*(*(v46 - 8) + 48))(v8, 1, v46);
  v153 = v44;
  v154 = v45;
  if (v47 == 1)
  {
    v152 = v38;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v49 = v162;
    v48 = v163;
    v50 = &v163[*(v162 + 11)];
    v52 = *v50;
    v51 = *(v50 + 1);
    LOBYTE(v172) = 0;
    v53 = swift_allocObject();
    *(v53 + 16) = 0;
    *(v53 + 24) = 0;
    *(v53 + 32) = v172;
    *(v53 + 40) = v52;
    *(v53 + 48) = v51;
    sub_1D5E19FA8(0);
    v55 = v54;
    sub_1D5B58B84(&qword_1EDF03668, sub_1D5E19FA8);

    v155 = v55;
    v56 = sub_1D72647CC();
    LOBYTE(v172) = 0;
    v57 = swift_allocObject();
    *(v57 + 24) = 0;
    *(v57 + 32) = 0;
    *(v57 + 16) = v56;
    *(v57 + 40) = v172;
    v58 = __swift_project_boxed_opaque_existential_1((v48 + *(v49 + 9)), *(v48 + *(v49 + 9) + 24));
    *&v161 = &v141;
    MEMORY[0x1EEE9AC00](v58, v59);
    MEMORY[0x1EEE9AC00](v60, v61);
    *(&v141 - 4) = sub_1D5B4AA6C;
    *(&v141 - 3) = 0;
    v139 = sub_1D66B9A78;
    v140 = v53;
    v62 = v160;
    v64 = sub_1D5D2F7A4(v27, sub_1D615B49C, v63, sub_1D615B4A4, (&v141 - 6));
    if (v62)
    {
      sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

      v65 = v48;
      return sub_1D5D2CFE8(v65, sub_1D66B99E4);
    }

    v92 = v64;

    if (v92)
    {
      v172 = 0;
      v173 = 0;
      v174 = 0;
      *&v170 = v152;
      *(&v170 + 1) = v39;
      v67 = v163;
      sub_1D72647EC();

      sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
      v44 = v153;
      v155 = v42;
      v160 = 0;
    }

    else
    {
      v155 = v42;
      v160 = 0;
      sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

      v67 = v163;
      v44 = v153;
    }
  }

  else
  {
    v155 = v42;
    sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v67 = v163;
  }

  v68 = v156;
  swift_beginAccess();
  v69 = v68[4];
  v70 = v68[5];
  v71 = v159;
  v44(v159, v155, v157);
  swift_storeEnumTagMultiPayload();
  v168 = v69;
  v169 = v70;
  v161 = xmmword_1D728CF30;
  v170 = xmmword_1D728CF30;
  v171 = 0;
  v72 = (v67 + *(v162 + 11));
  v74 = *v72;
  v73 = v72[1];
  LOBYTE(v166) = 0;
  v75 = swift_allocObject();
  v151 = &v141;
  *(v75 + 16) = v161;
  *(v75 + 32) = v166;
  *(v75 + 40) = v74;
  *(v75 + 48) = v73;
  MEMORY[0x1EEE9AC00](v75, v76);
  v150 = &v141 - 6;
  *(&v141 - 4) = sub_1D5B4AA6C;
  *(&v141 - 3) = 0;
  v139 = sub_1D6708B7C;
  v140 = v77;
  LOBYTE(v166) = 0;
  v78 = swift_allocObject();
  *(v78 + 16) = v161;
  *(v78 + 32) = v166;
  v143 = v74;
  *(v78 + 40) = v74;
  *(v78 + 48) = v73;
  sub_1D5E19FA8(0);
  v80 = v79;
  v81 = sub_1D5B58B84(&qword_1EDF03668, sub_1D5E19FA8);
  v142 = v73;
  swift_retain_n();
  v152 = v70;

  v145 = v80;
  v144 = v81;
  v82 = sub_1D72647CC();
  LOBYTE(v166) = 0;
  v83 = swift_allocObject();
  *(v83 + 16) = v82;
  *(v83 + 24) = v161;
  *(v83 + 40) = v166;
  v84 = (v67 + *(v162 + 9));
  v85 = __swift_project_boxed_opaque_existential_1(v84, v84[3]);
  MEMORY[0x1EEE9AC00](v85, v86);
  MEMORY[0x1EEE9AC00](v87, v88);
  v89 = v150;
  *(&v141 - 4) = sub_1D615B4A4;
  *(&v141 - 3) = v89;
  v139 = sub_1D6708B7C;
  v140 = v78;
  v90 = v160;
  sub_1D5D2BC70(v71, sub_1D615B49C, v91, sub_1D615B4A4, (&v141 - 6));
  if (!v90)
  {
    v162 = v84;

    sub_1D72647EC();
    sub_1D5D2CFE8(v159, type metadata accessor for FormatVersionRequirement);

    v93 = v148;
    v94 = v155;
    v95 = v157;
    v96 = v153;
    v153(v148, v155, v157);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v93, type metadata accessor for FormatVersionRequirement);
    v96(v93, v94, v95);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v93, type metadata accessor for FormatVersionRequirement);
    v97 = v156;
    swift_beginAccess();
    v98 = v97[10];
    v99 = v149;
    v96(v149, v94, v95);
    swift_storeEnumTagMultiPayload();
    if (*(v98 + 16))
    {
      LOBYTE(v168) = 0;
      v100 = swift_allocObject();
      v161 = xmmword_1D72BAA70;
      *(v100 + 16) = xmmword_1D72BAA70;
      *(v100 + 32) = v168;
      v101 = v142;
      *(v100 + 40) = v143;
      *(v100 + 48) = v101;

      v102 = sub_1D72647CC();
      LOBYTE(v168) = 0;
      v103 = swift_allocObject();
      *(v103 + 16) = v102;
      *(v103 + 24) = v161;
      *(v103 + 40) = v168;
      v104 = __swift_project_boxed_opaque_existential_1(v162, v162[3]);
      *&v161 = &v141;
      MEMORY[0x1EEE9AC00](v104, v105);
      MEMORY[0x1EEE9AC00](v106, v107);
      *(&v141 - 4) = sub_1D5B4AA6C;
      *(&v141 - 3) = 0;
      v139 = sub_1D6708B7C;
      v140 = v100;
      v109 = sub_1D5D2F7A4(v99, sub_1D615B49C, v108, sub_1D615B4A4, (&v141 - 6));
      v113 = v109;

      v112 = v163;
      if (v113)
      {
        sub_1D5E07BF8(v98, v163, 4, 0, 0);
        v111 = v101;
        v114 = v153;
      }

      else
      {
        v114 = v153;
        v111 = v101;
      }

      v110 = v147;
      v97 = v156;
      v96 = v114;
    }

    else
    {
      v110 = v147;
      v111 = v142;
      v112 = v163;
    }

    sub_1D5D2CFE8(v149, type metadata accessor for FormatVersionRequirement);
    swift_beginAccess();
    v115 = v97[11];
    v96(v110, v155, v157);
    swift_storeEnumTagMultiPayload();
    if (*(v115 + 16))
    {
      LOBYTE(v166) = 0;
      v116 = swift_allocObject();
      v161 = xmmword_1D72BAA80;
      *(v116 + 16) = xmmword_1D72BAA80;
      *(v116 + 32) = v166;
      *(v116 + 40) = v143;
      *(v116 + 48) = v111;

      v117 = sub_1D72647CC();
      LOBYTE(v166) = 0;
      v118 = swift_allocObject();
      *(v118 + 16) = v117;
      *(v118 + 24) = v161;
      *(v118 + 40) = v166;
      v119 = __swift_project_boxed_opaque_existential_1(v162, v162[3]);
      MEMORY[0x1EEE9AC00](v119, v120);
      MEMORY[0x1EEE9AC00](v121, v122);
      *(&v141 - 4) = sub_1D5B4AA6C;
      *(&v141 - 3) = 0;
      v139 = sub_1D6708B7C;
      v140 = v116;
      v124 = sub_1D5D2F7A4(v110, sub_1D615B49C, v123, sub_1D615B4A4, (&v141 - 6));
      v125 = v124;

      if (v125)
      {
        v166 = v161;
        v167 = 0;
        *&v164 = v115;
        sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
        sub_1D60AD304();
        v112 = v163;
        sub_1D72647EC();
        v97 = v156;
        v96 = v153;
        v111 = v142;

        sub_1D5D2CFE8(v147, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v147, type metadata accessor for FormatVersionRequirement);

        v112 = v163;
        v97 = v156;
        v96 = v153;
        v111 = v142;
      }
    }

    else
    {
      sub_1D5D2CFE8(v110, type metadata accessor for FormatVersionRequirement);
    }

    swift_beginAccess();
    v126 = v97[12];
    v127 = qword_1EDF31ED0;

    if (v127 != -1)
    {
      swift_once();
    }

    v128 = v157;
    v129 = __swift_project_value_buffer(v157, qword_1EDFFCD50);
    v96(v146, v129, v128);
    swift_storeEnumTagMultiPayload();
    if (v126 >> 62)
    {
      if (sub_1D7263BFC())
      {
LABEL_31:
        LOBYTE(v164) = 0;
        v130 = swift_allocObject();
        v161 = xmmword_1D72BAA90;
        *(v130 + 16) = xmmword_1D72BAA90;
        *(v130 + 32) = v164;
        *(v130 + 40) = v143;
        *(v130 + 48) = v111;

        v131 = sub_1D72647CC();
        LOBYTE(v164) = 0;
        v132 = swift_allocObject();
        *(v132 + 16) = v131;
        *(v132 + 24) = v161;
        *(v132 + 40) = v164;
        v133 = __swift_project_boxed_opaque_existential_1(v162, v162[3]);
        MEMORY[0x1EEE9AC00](v133, v134);
        MEMORY[0x1EEE9AC00](v135, v136);
        *(&v141 - 4) = sub_1D5B4AA6C;
        *(&v141 - 3) = 0;
        v139 = sub_1D6708B7C;
        v140 = v130;
        LOBYTE(v131) = sub_1D5D2F7A4(v146, sub_1D615B49C, v137, sub_1D615B4A4, (&v141 - 6));

        if (v131)
        {
          v164 = v161;
          v165 = 0;
          v175 = v126;
          sub_1D5B5BF78(0, &qword_1EDF1B428, type metadata accessor for FormatBlock, MEMORY[0x1E69E62F8]);
          sub_1D666E5D0();
          v138 = v163;
          sub_1D72647EC();

          sub_1D5D2CFE8(v146, type metadata accessor for FormatVersionRequirement);
          v65 = v138;
        }

        else
        {
          sub_1D5D2CFE8(v146, type metadata accessor for FormatVersionRequirement);

          v65 = v163;
        }

        return sub_1D5D2CFE8(v65, sub_1D66B99E4);
      }
    }

    else if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    sub_1D5D2CFE8(v146, type metadata accessor for FormatVersionRequirement);

    v65 = v112;
    return sub_1D5D2CFE8(v65, sub_1D66B99E4);
  }

  sub_1D5D2CFE8(v71, type metadata accessor for FormatVersionRequirement);

  sub_1D5D2CFE8(v163, sub_1D66B99E4);
}

uint64_t sub_1D6596300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66BAE90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6596338(uint64_t a1)
{
  v2 = sub_1D5C5C078();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6596374(uint64_t a1)
{
  v2 = sub_1D5C5C078();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65963B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66BB13C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65963E8(uint64_t a1)
{
  v2 = sub_1D5C32FD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6596424(uint64_t a1)
{
  v2 = sub_1D5C32FD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSourceItem.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v32 - v9;
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

    v13 = v37;
    v14 = v10;
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
          *(v21 + 16) = &unk_1F5117540;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v13 + 8))(v14, v7);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B9B84();
    v32 = 0;
    v33 = 0;
    sub_1D726431C();
    if (v36)
    {
      sub_1D5C30060(0, &qword_1EDF29130, sub_1D66B9BD8, &type metadata for FormatSourceItem, type metadata accessor for FormatSwitchListValue);
      v36 = xmmword_1D7279980;
      sub_1D66B9C2C();
      sub_1D726431C();
      v23 = a2;
      (*(v13 + 8))(v14, v7);
      v24 = v32;
      v25 = v33;
      v26 = swift_allocObject();
      *(v26 + 16) = v24;
      *(v26 + 24) = v25;
      v27 = v26 | 0x8000000000000000;
    }

    else
    {
      v36 = xmmword_1D7279980;
      sub_1D66B9D10();
      sub_1D726431C();
      v23 = a2;
      (*(v13 + 8))(v14, v7);
      v28 = v32;
      v29 = v33;
      v30 = v34;
      v31 = v35;
      v27 = swift_allocObject();
      *(v27 + 16) = v28;
      *(v27 + 24) = v29;
      *(v27 + 32) = v30;
      *(v27 + 40) = v31;
    }

    *v23 = v27;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSourceItem.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v33 - v9;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSourceItem, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatSourceItem, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlow, v17, v14, v18, &off_1F51F6B38);
  if (v15 < 0)
  {
    v27 = *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v28 = *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v29 = qword_1EDF31F40;

    if (v29 != -1)
    {
      swift_once();
    }

    v30 = sub_1D725BD1C();
    v31 = __swift_project_value_buffer(v30, qword_1EDFFCE50);
    (*(*(v30 - 8) + 16))(v6, v31, v30);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63B46A8(1, v27, v28, v6);

    v26 = v6;
  }

  else
  {
    v20 = *(v15 + 16);
    v21 = *(v15 + 24);
    v22 = *(v15 + 32);
    v23 = *(v15 + 40);
    sub_1D5F586D0(v21, v22, v23);
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v24 = sub_1D725BD1C();
    v25 = __swift_project_value_buffer(v24, qword_1EDFFCE68);
    (*(*(v24 - 8) + 16))(v10, v25, v24);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63B4508(0, v20, v21, v22, v23, v10);
    sub_1D5F5870C(v21, v22, v23);
    v26 = v10;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D6596BC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x686374697773;
  }

  else
  {
    v3 = 7367028;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x686374697773;
  }

  else
  {
    v5 = 7367028;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
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

uint64_t sub_1D6596C64()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6596CDC()
{
  sub_1D72621EC();
}

uint64_t sub_1D6596D40()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6596DC0(uint64_t *a1@<X8>)
{
  v2 = 7367028;
  if (*v1)
  {
    v2 = 0x686374697773;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatSourceItemTip.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  sub_1D66B9D64();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66B9DF8();
  sub_1D5B58B84(&qword_1EDF25488, sub_1D66B9DF8);
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_11:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v34;
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

      v22 = *(v16 - 2);
      v21 = *(v16 - 1);

      v23 = sub_1D6627E68(7367028, 0xE300000000000000, 0x737469617274, 0xE600000000000000);
      sub_1D5E2D970();
      v10 = swift_allocError();
      *v24 = v22;
      *(v24 + 8) = v21;
      *(v24 + 16) = v23;
      *(v24 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v6 + 8))(v9, v5);
      goto LABEL_11;
    }

LABEL_7:
  }

  sub_1D66B9F78();
  v32 = 0uLL;
  v33 = 0;
  sub_1D726431C();
  v17 = v30;
  v26 = xmmword_1D728CF30;
  v32 = xmmword_1D728CF30;
  v33 = 0;
  if (sub_1D726434C())
  {
    v30 = v26;
    v31 = 0;
    sub_1D66B9FCC();
    sub_1D726431C();
    (*(v6 + 8))(v9, v5);
    v19 = v27;
    v18 = v28;
    v20 = v29;
    sub_1D5F586D0(v27, v28, v29);
    sub_1D5F5870C(v19, v18, v20);
  }

  else
  {
    (*(v6 + 8))(v9, v5);
    v18 = 0;
    v20 = 0;
    v19 = MEMORY[0x1E69E7CC0];
  }

  *v13 = v17;
  *(v13 + 8) = v19;
  *(v13 + 16) = v18;
  *(v13 + 24) = v20;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSourceItemTip.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v71 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v64 - v8;
  sub_1D66BA020();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 2);
  *&v72 = *(v1 + 1);
  *(&v72 + 1) = v16;
  v84 = v1[24];
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D66B9DF8();
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF25488, sub_1D66B9DF8);
  sub_1D5D2EE70(&type metadata for FormatSourceItemTip, v20, v22, v17, &type metadata for FormatSourceItemTip, v20, &type metadata for FormatVersions.CrystalGlow, v18, v14, v21, &off_1F51F6B38);
  if (qword_1EDF31F48 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCE68);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v73 = v24;
  v69 = v26;
  v70 = v23;
  v68 = v25 + 16;
  (v26)(v9);
  v67 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v79) = v15;
  v81 = 0uLL;
  v82 = 0;
  v27 = &v14[*(v11 + 44)];
  v28 = *v27;
  v29 = *(v27 + 1);
  v83 = 0;
  v30 = swift_allocObject();
  *&v77 = &v64;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v83;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  *(&v64 - 4) = sub_1D5B4AA6C;
  *(&v64 - 3) = 0;
  v62 = sub_1D6708B84;
  v63 = v32;
  v83 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v83;
  v66 = v28;
  *(v33 + 40) = v28;
  *(v33 + 48) = v29;
  sub_1D66BA0B4();
  v76 = v9;
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF034C8, sub_1D66BA0B4);
  swift_retain_n();
  v74 = v35;
  v75 = v36;
  v37 = sub_1D72647CC();
  v83 = 0;
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  *(v38 + 32) = 0;
  *(v38 + 16) = v37;
  *(v38 + 40) = v83;
  v39 = &v14[*(v11 + 36)];
  v40 = __swift_project_boxed_opaque_existential_1(v39, *(v39 + 3));
  MEMORY[0x1EEE9AC00](v40, v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  *(&v64 - 4) = sub_1D615B4A4;
  *(&v64 - 3) = (&v64 - 6);
  v44 = v76;
  v62 = sub_1D6708B84;
  v63 = v33;
  v45 = v78;
  sub_1D5D2BC70(v76, sub_1D615B49C, v46, sub_1D615B4A4, (&v64 - 6));
  if (v45)
  {
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);

    v47 = v14;
  }

  else
  {
    v65 = v39;
    v48 = v44;
    v49 = v73;
    v78 = v29;

    sub_1D66BA148();
    sub_1D72647EC();
    v47 = v14;
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

    v50 = v71;
    v69(v71, v49, v70);
    swift_storeEnumTagMultiPayload();
    v81 = v72;
    v51 = v84;
    v82 = v84;
    v79 = MEMORY[0x1E69E7CC0];
    v80 = 0;
    sub_1D5F586D0(v72, *(&v72 + 1), v84);
    v52 = _s8NewsFeed25FormatSourceItemTipTraitsO2eeoiySbAC_ACtFZ_0(&v81, &v79);
    sub_1D5F5870C(v79, *(&v79 + 1), v80);
    if ((v52 & 1) != 0 || (LOBYTE(v81) = 0, v53 = swift_allocObject(), v77 = xmmword_1D728CF30, *(v53 + 16) = xmmword_1D728CF30, *(v53 + 32) = v81, *(v53 + 40) = v66, *(v53 + 48) = v78, , v54 = sub_1D72647CC(), LOBYTE(v81) = 0, v55 = swift_allocObject(), *(v55 + 16) = v54, *(v55 + 24) = v77, *(v55 + 40) = v81, v56 = __swift_project_boxed_opaque_existential_1(v65, *(v65 + 3)), MEMORY[0x1EEE9AC00](v56, v57), MEMORY[0x1EEE9AC00](v58, v59), *(&v64 - 4) = sub_1D5B4AA6C, *(&v64 - 3) = 0, v62 = sub_1D66BA19C, v63 = v53, LOBYTE(v54) = sub_1D5D2F7A4(v50, sub_1D615B49C, v60, sub_1D615B4A4, (&v64 - 6)), , , (v54 & 1) == 0))
    {
      sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
      sub_1D5F5870C(v72, *(&v72 + 1), v51);
    }

    else
    {
      v81 = v77;
      v82 = 0;
      v79 = v72;
      v80 = v51;
      sub_1D66BA218();
      sub_1D72647EC();
      sub_1D5F5870C(v79, *(&v79 + 1), v80);
      sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v47, sub_1D66BA020);
}

uint64_t sub_1D6597AD8()
{
  v1 = 0x737469617274;
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
    return 7367028;
  }
}

uint64_t sub_1D6597B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66BB264(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6597B58(uint64_t a1)
{
  v2 = sub_1D66B9ED0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6597B94(uint64_t a1)
{
  v2 = sub_1D66B9ED0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSourceItemTipBinding.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
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
          *(v21 + 16) = &unk_1F5117590;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v12;
          goto LABEL_9;
        }
      }
    }

    sub_1D66BA26C();
    v27 = 0uLL;
    sub_1D726431C();
    a1 = v12;
    if (v28 > 1u)
    {
      v23 = v26;
      v27 = xmmword_1D7279980;
      if (v28 == 2)
      {
        sub_1D668F874();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v28 | 0x10;
      }

      else
      {
        sub_1D668F820();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = 24;
      }
    }

    else
    {
      v23 = v26;
      v27 = xmmword_1D7279980;
      if (v28)
      {
        sub_1D668F8C8();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v28 | 8;
      }

      else
      {
        sub_1D66BA2C0();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v28;
      }
    }

    *v23 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSourceItemTipBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v39 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v39 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v39 - v17;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v1;
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSourceItemTipBinding, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatSourceItemTipBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlow, v25, v22, v26, &off_1F51F6B38);
  v28 = (v23 >> 3) & 3;
  if (v28 > 1)
  {
    if (v28 == 2)
    {
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v32 = sub_1D725BD1C();
      v33 = __swift_project_value_buffer(v32, qword_1EDFFCE68);
      (*(*(v32 - 8) + 16))(v10, v33, v32);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D638CDC4(2, v23 & 1, v10);
      v31 = v10;
    }

    else
    {
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v36 = sub_1D725BD1C();
      v37 = __swift_project_value_buffer(v36, qword_1EDFFCE68);
      (*(*(v36 - 8) + 16))(v6, v37, v36);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D638CF5C(3, v6);
      v31 = v6;
    }
  }

  else if (v28)
  {
    if (qword_1EDF31F40 != -1)
    {
      swift_once();
    }

    v34 = sub_1D725BD1C();
    v35 = __swift_project_value_buffer(v34, qword_1EDFFCE50);
    (*(*(v34 - 8) + 16))(v14, v35, v34);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638CC2C(1, v23 & 1, v14);
    v31 = v14;
  }

  else
  {
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v29 = sub_1D725BD1C();
    v30 = __swift_project_value_buffer(v29, qword_1EDFFCE68);
    (*(*(v29 - 8) + 16))(v18, v30, v29);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638CA98(0, v23, v18);
    v31 = v18;
  }

  sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t sub_1D6598520()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65985D4()
{
  sub_1D72621EC();
}

uint64_t sub_1D6598674()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6598724@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D666454C();
  *a1 = result;
  return result;
}

void sub_1D6598754(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x70756F7267;
  v4 = 0xE300000000000000;
  v5 = 6775156;
  if (*v1 != 2)
  {
    v5 = 0x6465626D45626577;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x656E696C64616568;
    v2 = 0xE800000000000000;
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

uint64_t FormatSourceItemTipObject.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
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
          *(v21 + 16) = &unk_1F51175E0;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66BA314();
    v25 = 0uLL;
    sub_1D726431C();
    v25 = xmmword_1D7279980;
    sub_1D66BA368();
    sub_1D726431C();
    (*(v11 + 8))(v10, v6);
    *v14 = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSourceItemTipObject.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatSourceItemTipObject, &type metadata for FormatCodingKeys, v15, v12, &type metadata for FormatSourceItemTipObject, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlow, v13, v10, v14, &off_1F51F6B38);
  if (qword_1EDF31F48 != -1)
  {
    swift_once();
  }

  v16 = sub_1D725BD1C();
  v17 = __swift_project_value_buffer(v16, qword_1EDFFCE68);
  (*(*(v16 - 8) + 16))(v6, v17, v16);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D638FE5C(v11, v6);
  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v10, sub_1D5D30DC4);
}

uint64_t FormatSourceItemTipTrait.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatSourceItemTipTrait, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatSourceItemTipTrait, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlow, v21, v18, v22, &off_1F51F6B38);
  if (v19)
  {
    if (v19 == 1)
    {
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v24 = sub_1D725BD1C();
      v25 = __swift_project_value_buffer(v24, qword_1EDFFCE68);
      (*(*(v24 - 8) + 16))(v10, v25, v24);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641BBEC(1, v10);
      v26 = v10;
    }

    else
    {
      if (qword_1EDF31F40 != -1)
      {
        swift_once();
      }

      v29 = sub_1D725BD1C();
      v30 = __swift_project_value_buffer(v29, qword_1EDFFCE50);
      (*(*(v29 - 8) + 16))(v6, v30, v29);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641BBEC(2, v6);
      v26 = v6;
    }
  }

  else
  {
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCE68);
    (*(*(v27 - 8) + 16))(v14, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641BBEC(0, v14);
    v26 = v14;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D6599288(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEF6C6C6F7263536ELL;
  v3 = 0x4F7373696D736964;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0xD00000000000001CLL;
  }

  else
  {
    v5 = 0x4F7373696D736964;
  }

  if (v4 == 1)
  {
    v6 = 0x80000001D73BBC10;
  }

  else
  {
    v6 = 0xEF6C6C6F7263536ELL;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000019;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000001D73BBBF0;
  }

  if (*a2 == 1)
  {
    v3 = 0xD00000000000001CLL;
    v2 = 0x80000001D73BBC10;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000019;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000001D73BBBF0;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6599370()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6599424()
{
  sub_1D72621EC();
}

uint64_t sub_1D65994C4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6599574@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D66643D0();
  *a1 = result;
  return result;
}

void sub_1D65995A4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF6C6C6F7263536ELL;
  v4 = 0x4F7373696D736964;
  if (v2 == 1)
  {
    v4 = 0xD00000000000001CLL;
    v3 = 0x80000001D73BBC10;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000019;
  }

  if (v5)
  {
    v3 = 0x80000001D73BBBF0;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t FormatSourceItemTipTraits.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
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

    v13 = v27;
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
          *(v20 + 16) = &unk_1F5117680;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66BA410();
    v26 = 0uLL;
    sub_1D726431C();
    v22 = v25;
    if (v25)
    {
      sub_1D66BA464();
      v25 = xmmword_1D7279980;
      sub_1D5B58B84(&qword_1EC887320, sub_1D66BA464);
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v24 = *(&v26 + 1);
      v23 = v26;
    }

    else
    {
      sub_1D5C34D84(0, &qword_1EDF1B018, &type metadata for FormatSourceItemTipTrait, MEMORY[0x1E69E62F8]);
      v26 = xmmword_1D7279980;
      sub_1D66BA5DC();
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v24 = 0;
      v23 = v25;
    }

    *v13 = v23;
    *(v13 + 8) = v24;
    *(v13 + 16) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSourceItemTipTraits.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v28 - v9;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 8);
  v17 = *(v1 + 16);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSourceItemTipTraits, &type metadata for FormatCodingKeys, v21, v18, &type metadata for FormatSourceItemTipTraits, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlow, v19, v14, v20, &off_1F51F6B38);
  if (v17)
  {
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v22 = sub_1D725BD1C();
    v23 = __swift_project_value_buffer(v22, qword_1EDFFCE68);
    (*(*(v22 - 8) + 16))(v6, v23, v22);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638FC90(1, v15, v16, v6);
    v24 = v6;
  }

  else
  {
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v25 = sub_1D725BD1C();
    v26 = __swift_project_value_buffer(v25, qword_1EDFFCE68);
    (*(*(v25 - 8) + 16))(v10, v26, v25);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638FAD0(0, v15, v10);
    v24 = v10;
  }

  sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D6599DC0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726F7463656C6573;
  }

  else
  {
    v3 = 0x656E696C6E69;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x726F7463656C6573;
  }

  else
  {
    v5 = 0x656E696C6E69;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
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

uint64_t sub_1D6599E64()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6599EE4()
{
  sub_1D72621EC();
}

uint64_t sub_1D6599F50()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6599FD8(uint64_t *a1@<X8>)
{
  v2 = 0x656E696C6E69;
  if (*v1)
  {
    v2 = 0x726F7463656C6573;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatSourceMap.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  sub_1D66BA6CC();
  v7 = v6;
  v33 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66BA760();
  sub_1D5B58B84(&qword_1EC887350, sub_1D66BA760);
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

      v22 = sub_1D6623414();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v10, v7);
      goto LABEL_10;
    }

LABEL_7:
  }

  v31 = 0uLL;
  v32 = 0;
  v17 = sub_1D72642BC();
  v19 = v18;
  v30 = v17;
  v31 = xmmword_1D728CF30;
  v32 = 0;
  v25 = v7;
  v26 = v13;
  v27 = sub_1D72642FC();
  v31 = xmmword_1D7297410;
  v32 = 0;
  v28 = sub_1D72642FC();
  (*(v26 + 8))(v10, v25);
  *a2 = v30;
  a2[1] = v19;
  a2[2] = v27;
  a2[3] = v28;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSourceMap.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v85 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v93 = &v83 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v83 - v11;
  sub_1D66BA8E0();
  v98 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v1;
  v18 = v1[1];
  v19 = v1[3];
  v86 = v1[2];
  v84 = v19;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D66BA760();
  v23 = v22;
  v24 = sub_1D5B58B84(&qword_1EC887350, sub_1D66BA760);
  sub_1D5D2EE70(&type metadata for FormatSourceMap, v23, v25, v20, &type metadata for FormatSourceMap, v23, &type metadata for FormatVersions.JazzkonC, v21, v16, v24, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCD30);
  v28 = *(v26 - 8);
  v29 = *(v28 + 16);
  v90 = v27;
  v91 = v26;
  v88 = v28 + 16;
  v89 = v29;
  (v29)(v12);
  v87 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v102 = v17;
  v103 = v18;
  v100 = 0uLL;
  v101 = 0;
  v30 = v98;
  v31 = &v16[*(v98 + 11)];
  v96 = v12;
  v32 = *v31;
  v33 = *(v31 + 1);
  v104 = 0;
  v34 = swift_allocObject();
  v97 = &v83;
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v104;
  *(v34 + 40) = v32;
  *(v34 + 48) = v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  *(&v83 - 4) = sub_1D5B4AA6C;
  *(&v83 - 3) = 0;
  v81 = sub_1D6708B88;
  v82 = v36;
  v104 = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v104;
  v92 = v32;
  *(v37 + 40) = v32;
  *(v37 + 48) = v33;
  sub_1D66BA974();
  v39 = v38;
  v40 = sub_1D5B58B84(&qword_1EC887368, sub_1D66BA974);
  swift_retain_n();
  v94 = v40;
  v95 = v39;
  v41 = sub_1D72647CC();
  v104 = 0;
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 16) = v41;
  *(v42 + 40) = v104;
  v43 = *(v30 + 9);
  v44 = v96;
  v45 = &v16[v43];
  v98 = v16;
  v46 = __swift_project_boxed_opaque_existential_1(&v16[v43], *&v16[v43 + 24]);
  MEMORY[0x1EEE9AC00](v46, v47);
  MEMORY[0x1EEE9AC00](v48, v49);
  *(&v83 - 4) = sub_1D615B4A4;
  *(&v83 - 3) = (&v83 - 6);
  v81 = sub_1D66BAA08;
  v82 = v37;
  v50 = v99;
  sub_1D5D2BC70(v44, sub_1D615B49C, v51, sub_1D615B4A4, (&v83 - 6));
  if (v50)
  {
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);

    v52 = v98;
  }

  else
  {
    v83 = v45;

    v52 = v98;
    sub_1D72647EC();
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);

    v54 = v93;
    v89(v93, v90, v91);
    swift_storeEnumTagMultiPayload();
    v102 = v86;
    v99 = xmmword_1D728CF30;
    v100 = xmmword_1D728CF30;
    v101 = 0;
    v104 = 0;
    v55 = swift_allocObject();
    v97 = &v83;
    *(v55 + 16) = v99;
    *(v55 + 32) = v104;
    v56 = v92;
    *(v55 + 40) = v92;
    *(v55 + 48) = v33;
    MEMORY[0x1EEE9AC00](v55, v57);
    v96 = 0;
    *(&v83 - 4) = sub_1D5B4AA6C;
    *(&v83 - 3) = 0;
    v81 = sub_1D6708B88;
    v82 = v58;
    v104 = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = v99;
    *(v59 + 32) = v104;
    *(v59 + 40) = v56;
    *(v59 + 48) = v33;
    swift_retain_n();
    v60 = sub_1D72647CC();
    v104 = 0;
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = v99;
    *(v61 + 40) = v104;
    v62 = __swift_project_boxed_opaque_existential_1(v83, *(v83 + 3));
    MEMORY[0x1EEE9AC00](v62, v63);
    MEMORY[0x1EEE9AC00](v64, v65);
    *(&v83 - 4) = sub_1D615B4A4;
    *(&v83 - 3) = (&v83 - 6);
    v81 = sub_1D6708B88;
    v82 = v59;
    v66 = v96;
    sub_1D5D2BC70(v54, sub_1D615B49C, v67, sub_1D615B4A4, (&v83 - 6));
    if (v66)
    {
      sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D72647EC();
      sub_1D5D2CFE8(v93, type metadata accessor for FormatVersionRequirement);

      v68 = v85;
      v89(v85, v90, v91);
      swift_storeEnumTagMultiPayload();
      v102 = v84;
      v99 = xmmword_1D7297410;
      v100 = xmmword_1D7297410;
      v101 = 0;
      v104 = 0;
      v69 = swift_allocObject();
      v97 = &v83;
      *(v69 + 16) = v99;
      *(v69 + 32) = v104;
      v70 = v92;
      *(v69 + 40) = v92;
      *(v69 + 48) = v33;
      MEMORY[0x1EEE9AC00](v69, v71);
      *(&v83 - 4) = sub_1D5B4AA6C;
      *(&v83 - 3) = 0;
      v81 = sub_1D6708B88;
      v82 = v72;
      v104 = 0;
      v73 = swift_allocObject();
      *(v73 + 16) = v99;
      *(v73 + 32) = v104;
      *(v73 + 40) = v70;
      *(v73 + 48) = v33;
      swift_retain_n();
      v74 = sub_1D72647CC();
      v104 = 0;
      v75 = swift_allocObject();
      *(v75 + 16) = v74;
      *(v75 + 24) = v99;
      *(v75 + 40) = v104;
      v76 = __swift_project_boxed_opaque_existential_1(v83, *(v83 + 3));
      MEMORY[0x1EEE9AC00](v76, v77);
      MEMORY[0x1EEE9AC00](v78, v79);
      *(&v83 - 4) = sub_1D615B4A4;
      *(&v83 - 3) = (&v83 - 6);
      v81 = sub_1D6708B88;
      v82 = v73;
      sub_1D5D2BC70(v68, sub_1D615B49C, v80, sub_1D615B4A4, (&v83 - 6));

      sub_1D72647EC();
      sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v52, sub_1D66BA8E0);
}

uint64_t sub_1D659AF48()
{
  v1 = 0x68746150656C6966;
  v2 = 0x6E6D756C6F63;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 1701734764;
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

uint64_t sub_1D659AFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66BB378(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D659AFE4(uint64_t a1)
{
  v2 = sub_1D66BA838();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D659B020(uint64_t a1)
{
  v2 = sub_1D66BA838();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D659B06C(uint64_t a1)
{
  v2 = sub_1D5C9EB24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D659B0A8(uint64_t a1)
{
  v2 = sub_1D5C9EB24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D659B0E4()
{
  v1 = *v0;
  v2 = 0x737465736E4978;
  v3 = 0x656469537466656CLL;
  v4 = 0x6469537468676972;
  if (v1 != 4)
  {
    v4 = 1885433183;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x726F68636E4178;
  if (v1 != 1)
  {
    v5 = 0x73656572676564;
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

uint64_t sub_1D659B19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66BB694(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D659B1D4(uint64_t a1)
{
  v2 = sub_1D6666AC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D659B210(uint64_t a1)
{
  v2 = sub_1D6666AC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSplitBackgroundInsets.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D66BAA84();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66BAB18();
  sub_1D5B58B84(&qword_1EDF0C450, sub_1D66BAB18);
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

  v13 = v25;
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

      v20 = sub_1D6627E68(1952867692, 0xE400000000000000, 0x7468676972, 0xE500000000000000);
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

  sub_1D660C130(sub_1D66BAA84, &v26, 0.0);
  v17 = v26;
  sub_1D660C130(sub_1D66BAA84, &v26, 0.0);
  (*(v7 + 8))(v10, v6);
  v23 = v26;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSplitBackgroundInsets.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v82 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v71 - v8;
  sub_1D66BAC98();
  v83 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v14 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D66BAB18();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF0C450, sub_1D66BAB18);
  sub_1D5D2EE70(&type metadata for FormatSplitBackgroundInsets, v19, v21, v16, &type metadata for FormatSplitBackgroundInsets, v19, &type metadata for FormatVersions.LuckCheer, v17, v13, v20, &off_1F51F6AB8);
  v22 = qword_1EDF31E78;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCC90);
  v25 = *(v23 - 8);
  *&v81 = *(v25 + 16);
  v80 = v25 + 16;
  (v81)(v9, v24, v23);
  v79 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  sub_1D5F3FE24();
  v78 = v27;
  inited = swift_initStackObject();
  v77 = xmmword_1D7273AE0;
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = v26;
  *(inited + 40) = 0;
  LOBYTE(v26) = sub_1D633A310(v15, inited);
  swift_setDeallocating();
  sub_1D5C30060(0, qword_1EDF2C898, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquationToken);
  v76 = v29;
  swift_arrayDestroy();
  if (v26)
  {
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v74 = v15;
    v72 = v24;
    v75 = v14;
    v30 = v83;
    v31 = &v13[*(v83 + 44)];
    v33 = *v31;
    v32 = *(v31 + 1);
    LOBYTE(v85) = 0;
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    *(v34 + 32) = v85;
    *(v34 + 40) = v33;
    *(v34 + 48) = v32;
    sub_1D66BAD2C();
    v36 = v35;
    v37 = sub_1D5B58B84(&qword_1EC887380, sub_1D66BAD2C);

    v73 = v36;
    v38 = sub_1D72647CC();
    LOBYTE(v85) = 0;
    v39 = swift_allocObject();
    *(v39 + 24) = 0;
    *(v39 + 32) = 0;
    *(v39 + 16) = v38;
    *(v39 + 40) = v85;
    v40 = __swift_project_boxed_opaque_existential_1(&v13[*(v30 + 36)], *&v13[*(v30 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v40, v41);
    MEMORY[0x1EEE9AC00](v42, v43);
    *(&v71 - 4) = sub_1D5B4AA6C;
    *(&v71 - 3) = 0;
    v69 = sub_1D66BADC0;
    v70 = v34;
    v44 = v84;
    v46 = sub_1D5D2F7A4(v9, sub_1D615B49C, v45, sub_1D615B4A4, (&v71 - 6));
    if (v44)
    {
      sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

      sub_1D5D2CFE8(v13, sub_1D66BAC98);
    }

    v47 = v46;
    v84 = v37;

    if (v47)
    {
      v85 = 0uLL;
      v86 = 0;
      v87 = v74;
      sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
      sub_1D66582DC();

      sub_1D72647EC();
      v14 = v75;
      v84 = 0;

      sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v84 = 0;
      sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

      v14 = v75;
    }

    v24 = v72;
  }

  v48 = v82;
  (v81)(v82, v24, v23);
  swift_storeEnumTagMultiPayload();
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  v50 = swift_initStackObject();
  *(v50 + 16) = v77;
  *(v50 + 32) = v49;
  *(v50 + 40) = 0;

  LOBYTE(v49) = sub_1D633A310(v51, v50);
  swift_setDeallocating();
  swift_arrayDestroy();
  v52 = v83;
  if (v49)
  {
    goto LABEL_12;
  }

  v75 = v14;
  v55 = &v13[*(v83 + 44)];
  v56 = *v55;
  v57 = *(v55 + 1);
  LOBYTE(v85) = 0;
  v58 = swift_allocObject();
  v81 = xmmword_1D728CF30;
  *(v58 + 16) = xmmword_1D728CF30;
  *(v58 + 32) = v85;
  *(v58 + 40) = v56;
  *(v58 + 48) = v57;
  sub_1D66BAD2C();
  sub_1D5B58B84(&qword_1EC887380, sub_1D66BAD2C);

  v59 = sub_1D72647CC();
  LOBYTE(v85) = 0;
  v60 = swift_allocObject();
  *(v60 + 16) = v59;
  *(v60 + 24) = v81;
  *(v60 + 40) = v85;
  v61 = __swift_project_boxed_opaque_existential_1(&v13[*(v52 + 36)], *&v13[*(v52 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v61, v62);
  MEMORY[0x1EEE9AC00](v63, v64);
  *(&v71 - 4) = sub_1D5B4AA6C;
  *(&v71 - 3) = 0;
  v69 = sub_1D6708B8C;
  v70 = v58;
  v65 = v84;
  v67 = sub_1D5D2F7A4(v48, sub_1D615B49C, v66, sub_1D615B4A4, (&v71 - 6));
  if (!v65)
  {
    v68 = v67;

    if (v68)
    {
      v85 = v81;
      v86 = 0;
      v87 = v75;
      sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
      sub_1D66582DC();

      sub_1D72647EC();

      v53 = v82;
      goto LABEL_13;
    }

    v48 = v82;
LABEL_12:
    v53 = v48;
LABEL_13:
    sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);
    sub_1D5D2CFE8(v13, sub_1D66BAC98);
  }

  sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

  sub_1D5D2CFE8(v13, sub_1D66BAC98);
}

uint64_t sub_1D659C06C()
{
  v1 = 0x7468676972;
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
    return 1952867692;
  }
}

uint64_t sub_1D659C0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66BB898(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D659C0EC(uint64_t a1)
{
  v2 = sub_1D66BABF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D659C128(uint64_t a1)
{
  v2 = sub_1D66BABF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D659C1A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32[1] = a4;
  v32[0] = a3;
  v34 = a2;
  v6 = v5;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v33 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v32 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v5)
  {
LABEL_11:
    sub_1D61E4FBC(a1, v6);
    swift_willThrow();
  }

  else
  {
    v14 = v34;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = sub_1D7264AFC();
    v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

    v18 = v33;
    v19 = v13;
    if (v16)
    {
      v20 = sub_1D726433C();
      v21 = (v20 + 40);
      v22 = *(v20 + 16) + 1;
      while (--v22)
      {
        v23 = v21 + 2;
        v24 = *v21;
        v21 += 2;
        if (v24 >= 4)
        {
          v25 = *(v23 - 3);

          sub_1D5E2D970();
          v6 = swift_allocError();
          *v26 = v25;
          *(v26 + 8) = v24;
          *(v26 + 16) = v14;
          *(v26 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v18 + 8))(v19, v10);
          goto LABEL_11;
        }
      }
    }

    (v32[0])(v17);
    v40[9] = 0;
    v40[10] = 0;
    sub_1D726431C();
    v27 = (v18 + 8);
    if (v42)
    {
      v39 = xmmword_1D7279980;
      sub_1D5C4C9E8();
      sub_1D726431C();
      (*v27)(v19, v10);
      v28 = v40[0];
      v35 = *&v40[1];
      v36 = *&v40[3];
      v37 = *&v40[5];
      v38 = v40[7];
      v29 = 1;
      v41 = 1;
    }

    else
    {
      *v40 = xmmword_1D7279980;
      sub_1D5B570F8();
      sub_1D726431C();
      (*v27)(v19, v10);
      v29 = 0;
      v28 = v39;
      v41 = 0;
    }

    *a5 = v28;
    v31 = v36;
    *(a5 + 8) = v35;
    *(a5 + 24) = v31;
    *(a5 + 40) = v37;
    *(a5 + 56) = v38;
    *(a5 + 64) = v29;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}