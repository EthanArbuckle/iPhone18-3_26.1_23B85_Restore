uint64_t sub_2192A4AB4(uint64_t a1)
{
  sub_21880B928();
  v64 = *(v2 - 8);
  v65 = v2;
  MEMORY[0x28223BE20](v2);
  v62 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218747BDC(0);
  MEMORY[0x28223BE20](v4 - 8);
  v63 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDC104();
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x28223BE20](v6);
  v61 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF0574();
  v72 = *(v8 - 8);
  v73 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v71 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v70 = &v61 - v11;
  v12 = sub_219BF0F34();
  v68 = *(v12 - 8);
  v69 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88();
  v76 = *(v15 - 8);
  v77 = v15;
  MEMORY[0x28223BE20](v15);
  v75 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TodayModel(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218853400();
  v21 = v20;
  v22 = *(v20 - 8);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v61 - v26;
  sub_218729624(0, &qword_280EE47B0, MEMORY[0x277D6E1E0]);
  v29 = v28;
  v74 = a1;
  sub_219BE8BA4();
  sub_219BE5FC4();
  v30 = *(v22 + 8);
  v30(v27, v21);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2186EAA78(0, &qword_280ED7560, type metadata accessor for TodayGapLocation, MEMORY[0x277D333C8]);
      v54 = *(v53 + 48);
      v55 = sub_219BF1584();
      (*(*(v55 - 8) + 8))(&v19[v54], v55);
      v31 = type metadata accessor for TodayGapLocation;
      goto LABEL_3;
    case 2u:
      (*(v76 + 32))(v75, v19, v77);
      sub_219BF07D4();
      v35 = v70;
      sub_219BF0E64();
      (*(v68 + 8))(v14, v69);
      v36 = v71;
      v37 = v72;
      v38 = v73;
      (*(v72 + 104))(v71, *MEMORY[0x277D32D80], v73);
      LODWORD(v69) = sub_219BF04F4();
      v39 = *(v37 + 8);
      v39(v36, v38);
      v39(v35, v38);
      if ((v69 & 1) == 0)
      {
        return (*(v76 + 8))(v75, v77);
      }

      v40 = v77;
      v41 = v62;
      MEMORY[0x21CEBF950](v29);
      sub_219BE8BA4();
      v42 = v63;
      v43 = v65;
      sub_219BEB2F4();
      v30(v25, v21);
      (*(v64 + 8))(v41, v43);
      v45 = v66;
      v44 = v67;
      if ((*(v66 + 48))(v42, 1, v67) == 1)
      {
        (*(v76 + 8))(v75, v40);
        v32 = sub_218747BDC;
        v33 = v42;
        return sub_2192CF630(v33, v32);
      }

      else
      {
        v56 = v61;
        (*(v45 + 32))(v61, v42, v44);
        Strong = swift_unknownObjectWeakLoadStrong();
        v59 = v75;
        v58 = v76;
        if (Strong)
        {
          v60 = Strong;
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_2192DB494(v60);
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
        }

        (*(v45 + 8))(v56, v44);
        return (*(v58 + 8))(v59, v40);
      }

    case 3u:
    case 4u:
    case 5u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
      v31 = type metadata accessor for TodayModel;
LABEL_3:
      v32 = v31;
      v33 = v19;
      return sub_2192CF630(v33, v32);
    case 6u:
      sub_2186EAA78(0, &qword_280E90E70, sub_2186EAD48, sub_2186EAB88);
      (*(v76 + 8))(&v19[*(v46 + 48)], v77);
      sub_2186EAD48();
      return (*(*(v47 - 8) + 8))(v19, v47);
    default:

      sub_2186EA920();
      v49 = *(v48 + 48);
      sub_219BE8BA4();
      v50 = sub_219BE5F84();
      v52 = v51;
      v30(v25, v21);
      sub_2192A5354(v50, v52);

      v32 = type metadata accessor for TodayGapLocation;
      v33 = &v19[v49];
      return sub_2192CF630(v33, v32);
  }
}

uint64_t sub_2192A5354(uint64_t a1, uint64_t a2)
{
  v32 = sub_219BDBD34();
  v29 = *(v32 - 8);
  v5 = MEMORY[0x28223BE20](v32);
  v30 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  sub_21880B928();
  v31 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v35 = *(v2 + 40);
  sub_2187DD900();
  sub_2187DD9B8(&qword_280EE5530, 255, sub_2187DD900);
  v34 = v14;
  sub_219BE7B94();
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_2192DD5C0(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_219C09BA0;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_2186FC3BC();
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;

  sub_219BF6214();
  sub_219BE5314();

  sub_219BDBD24();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = v29;
  v18 = v30;
  v19 = v32;
  (*(v29 + 16))(v30, v8, v32);
  v20 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v31;
  (*(v10 + 16))(v20, v34, v31);
  v22 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v23 = *(v10 + 80);
  v24 = &v33[v23 + v22];
  v33 = v8;
  v25 = v24 & ~v23;
  v26 = swift_allocObject();
  *(v26 + 16) = v16;
  (*(v17 + 32))(v26 + v22, v18, v19);
  (*(v10 + 32))(v26 + v25, v20, v21);

  sub_219BE3494();

  (*(v17 + 8))(v33, v19);
  (*(v10 + 8))(v34, v21);
}

uint64_t sub_2192A5788(uint64_t a1)
{
  sub_2192CF5FC(0);
  MEMORY[0x28223BE20](v2 - 8);
  v72 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D8C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v75 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v6 - 8);
  v78 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE16D4();
  v79 = *(v8 - 8);
  v80 = v8;
  MEMORY[0x28223BE20](v8);
  v73 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928();
  v83 = *(v10 - 8);
  v84 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v82 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v70 = &v68 - v14;
  MEMORY[0x28223BE20](v13);
  v71 = &v68 - v15;
  sub_218D3BC60(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v20 = v19;
  v21 = *(v19 - 8);
  v22 = MEMORY[0x28223BE20](v19);
  v76 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v68 - v24;
  v26 = type metadata accessor for TodayFeedGroup();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v68 - v31;
  sub_218729624(0, &qword_280EE4288, MEMORY[0x277D6E7A0]);
  v34 = v33;
  v81 = a1;
  sub_219BE9904();
  sub_219BE6934();
  v35 = *(v21 + 8);
  v36 = v25;
  v37 = v20;
  v77 = v21 + 8;
  v74 = v35;
  v35(v36, v20);
  sub_2193B5F80(v86[0], v18);

  if ((*(v27 + 48))(v18, 1, v26) == 1)
  {
    v38 = sub_218D3BC60;
    v39 = v18;
LABEL_5:
    sub_2192CF630(v39, v38);
    v41 = v84;
    v42 = v76;
    goto LABEL_10;
  }

  sub_2192DCD38(v18, v32, type metadata accessor for TodayFeedGroup);
  sub_2192DC084(v32, v30, type metadata accessor for TodayFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_2192CF630(v30, type metadata accessor for TodayFeedGroup);
  if (EnumCaseMultiPayload == 12)
  {
    v38 = type metadata accessor for TodayFeedGroup;
    v39 = v32;
    goto LABEL_5;
  }

  v69 = v20;
  v43 = v71;
  MEMORY[0x21CEC06B0](v34);
  v44 = sub_218827310();
  v45 = v84;
  v46 = *(v83 + 8);
  v46(v43, v84);
  v42 = v76;
  if ((~v44 & 0xF000000000000007) != 0)
  {
    type metadata accessor for TodayFeedServiceConfig();
    v68 = v44;
    sub_2187DD9B8(&qword_280EC6590, 255, type metadata accessor for TodayFeedServiceConfig);
    sub_219BEE834();
    v47 = v70;
    MEMORY[0x21CEC06B0](v34);
    sub_219BEB1B4();
    v46(v47, v45);
    sub_219BEE364();

    sub_21885AB78(v68);
  }

  else
  {
    MEMORY[0x21CEB8D80]("No cursor in the Today blueprint! Missed analytics event for a Today feed group!", 80, 2, MEMORY[0x277D84F90]);
  }

  sub_2192CF630(v32, type metadata accessor for TodayFeedGroup);
  v37 = v69;
  v41 = v45;
LABEL_10:
  sub_219BE9904();
  v48 = v82;
  MEMORY[0x21CEC06B0](v34);
  sub_219BE6934();
  v49 = v75;
  sub_21968BE24(v86[0], v75);

  v50 = sub_219BE16E4();
  v51 = (*(*(v50 - 8) + 48))(v49, 1, v50);
  v52 = v85;
  if (v51 == 1)
  {
    (*(v83 + 8))(v48, v41);
    v74(v42, v37);
    sub_2192CF630(v49, sub_218B58D8C);
LABEL_14:
    v54 = v78;
    v55 = v79;
    v56 = v80;
    (*(v79 + 56))(v78, 1, 1, v80);
    goto LABEL_18;
  }

  sub_2192CF630(v49, sub_218B58D8C);
  sub_218718690((v52 + 15), v86);
  __swift_project_boxed_opaque_existential_1(v86, v86[3]);
  sub_219BE6944();
  type metadata accessor for TodayModel(0);
  sub_2186EB3E8();
  sub_2187DD9B8(&qword_280EDF9E0, 255, type metadata accessor for TodayModel);
  v53 = sub_219BF00E4();

  __swift_destroy_boxed_opaque_existential_1(v86);
  if (v53 == sub_219BDAF14())
  {
    (*(v83 + 8))(v48, v84);
    v74(v42, v37);
    goto LABEL_14;
  }

  v69 = v37;
  v57 = sub_219BE6944();
  v59 = v58;
  v60 = sub_218827310();
  v55 = v79;
  if ((~v60 & 0xF000000000000007) != 0)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2187DD9B8(&qword_280EC6590, 255, type metadata accessor for TodayFeedServiceConfig);
    v61 = sub_219BEE774();
    sub_21885AB78(v60);
    v60 = v61;
  }

  v62 = v84;
  v63 = v72;
  sub_2192CE75C(v57, v59, v60, v72);
  sub_21885AB78(v60);

  v54 = v78;
  sub_219689464(v53, v63, 1, v78);
  sub_2192CF630(v63, sub_2192CF5FC);
  (*(v83 + 8))(v82, v62);
  v74(v42, v69);
  v56 = v80;
LABEL_18:
  if ((*(v55 + 48))(v54, 1, v56) == 1)
  {
    return sub_2192CF630(v54, sub_218B58D58);
  }

  v65 = v73;
  (*(v55 + 32))(v73, v54, v56);
  v66 = v85[24];
  v67 = v85[25];
  __swift_project_boxed_opaque_existential_1(v85 + 21, v66);
  (*(v67 + 16))(v65, v66, v67);
  return (*(v55 + 8))(v65, v56);
}

uint64_t sub_2192A6298(uint64_t a1)
{
  v3 = sub_219BE8F74();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  *(v1 + 290) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  v10[1] = v6 | 0x4000000000000002;

  sub_219BE7864();

  (*(v4 + 16))(v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_219BDD154();
}

uint64_t sub_2192A6444(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_219BDBD34();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_219BE1574();
  v6 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE9C04();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = sub_219BDF244();
  v32 = *(v16 - 8);
  v33 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE17A4();
  sub_2187DD9B8(&qword_280EE7F30, 255, MEMORY[0x277D2F910]);
  memset(v37, 0, sizeof(v37));
  v36 = a1;
  sub_219BDCCE4();
  sub_218806FD0(v37);
  sub_219BE8F44();
  (*(v10 + 32))(v13, v15, v9);
  v19 = (*(v10 + 88))(v13, v9);
  if (v19 == *MEMORY[0x277D6E830])
  {
    (*(v6 + 104))(v8, *MEMORY[0x277D2F428], v30);
  }

  else
  {
    v20 = *(v6 + 104);
    if (v19 == *MEMORY[0x277D6E840] || v19 == *MEMORY[0x277D6E848] || v19 == *MEMORY[0x277D6E838])
    {
      v20(v8, *MEMORY[0x277D2F420], v30);
    }

    else
    {
      v20(v8, *MEMORY[0x277D2F430], v30);
      (*(v10 + 8))(v13, v9);
    }
  }

  sub_219BDF234();
  sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v21 = sub_219BDCD44();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_219C09BA0;
  (*(v22 + 104))(v24 + v23, *MEMORY[0x277CEAD18], v21);
  sub_2187DD9B8(&qword_280EE8810, 255, MEMORY[0x277D2D9A8]);
  v25 = v33;
  sub_219BDCCC4();

  (*(v32 + 8))(v18, v25);
  sub_219BDF524();
  sub_219BE8F64();
  sub_2187DD9B8(&qword_280EE8760, 255, MEMORY[0x277D2DB18]);
  sub_219BDCC64();
  v26 = v35;
  v27 = *(v34 + 8);
  v27(v5, v35);
  sub_219BE8F54();
  sub_219BDCC74();
  return (v27)(v5, v26);
}

uint64_t sub_2192A6A64(uint64_t a1)
{
  v2 = sub_219BF0B74();
  v169 = *(v2 - 8);
  v170 = v2;
  MEMORY[0x28223BE20](v2);
  v166 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308();
  v167 = *(v4 - 8);
  v168 = v4;
  MEMORY[0x28223BE20](v4);
  v165 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEDB94();
  v163 = *(v6 - 8);
  v164 = v6;
  MEMORY[0x28223BE20](v6);
  v162 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB140();
  v160 = *(v8 - 8);
  v161 = v8;
  MEMORY[0x28223BE20](v8);
  v159 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF0AC4();
  v157 = *(v10 - 8);
  v158 = v10;
  MEMORY[0x28223BE20](v10);
  v156 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EFC0C();
  v154 = *(v12 - 8);
  v155 = v12;
  MEMORY[0x28223BE20](v12);
  v153 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_219BF04A4();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v148 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018();
  v150 = v15;
  v149 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v147 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_219BF07A4();
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v144 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAF38();
  v143 = v18;
  v142 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v141 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_219BEEC14();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v136 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_219BEDAE4();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v135 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAE28();
  v134 = v22;
  v133 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v131 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_219BDBD34();
  v130 = *(v132 - 8);
  v24 = MEMORY[0x28223BE20](v132);
  v127 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v126 = &v106 - v26;
  v129 = sub_219BDB184();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v125 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_219BEBF14();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_219BEC504();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v120 = &v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAD48();
  v122 = v30;
  v121 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v119 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_219BF1094();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v116 = &v106 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAC68();
  v115 = v33;
  v114 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v113 = &v106 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_219BF0F34();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = &v106 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88();
  v171 = *(v36 - 8);
  v172 = v36;
  MEMORY[0x28223BE20](v36);
  v38 = &v106 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for TodayModel(0);
  MEMORY[0x28223BE20](v39);
  v41 = &v106 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218853400();
  v43 = v42;
  v44 = *(v42 - 8);
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v106 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v49 = &v106 - v48;
  sub_2187E2B78(0);
  v173 = a1;
  sub_219BE7564();
  sub_219BE5FC4();
  v50 = *(v44 + 8);
  v50(v49, v43);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2186EAA78(0, &qword_280ED7560, type metadata accessor for TodayGapLocation, MEMORY[0x277D333C8]);
      v89 = *(v88 + 48);
      v90 = sub_219BF1584();
      (*(*(v90 - 8) + 8))(&v41[v89], v90);
      v51 = type metadata accessor for TodayGapLocation;
      goto LABEL_3;
    case 2u:
      v71 = v171;
      v70 = v172;
      (*(v171 + 32))(v38, v41, v172);
      v72 = v110;
      sub_219BF07D4();
      v73 = sub_219BF0F14();
      (*(v111 + 8))(v72, v112);
      sub_2192A7FC0(v173, v73);
      swift_unknownObjectRelease();
      return (*(v71 + 8))(v38, v70);
    case 3u:
      v55 = v114;
      v56 = v113;
      v57 = v115;
      (*(v114 + 32))(v113, v41, v115);
      v78 = v116;
      sub_219BF07D4();
      sub_2192A8EB0(v173, v78, MEMORY[0x277D330F8], MEMORY[0x277D330F0], &unk_282A67CE0, sub_2192DD624);
      v62 = *(v117 + 8);
      v63 = v78;
      v64 = &v150;
      goto LABEL_13;
    case 4u:
    case 5u:
    case 8u:
    case 0xEu:
      v51 = type metadata accessor for TodayModel;
LABEL_3:
      v52 = v51;
      v53 = v41;
      goto LABEL_4;
    case 6u:
      v94 = v121;
      v95 = v119;
      v96 = v122;
      (*(v121 + 32))(v119, v41, v122);
      v97 = v120;
      sub_219BF07D4();
      v98 = v123;
      v99 = v124;
      if ((*(v123 + 88))(v97, v124) == *MEMORY[0x277D2D6A8])
      {
        (*(v98 + 96))(v97, v99);
        v100 = v108;
        v101 = v107;
        v102 = v109;
        (*(v108 + 32))(v107, v97, v109);
        sub_2192A8780(v173, v101);
        (*(v100 + 8))(v101, v102);
        (*(v94 + 8))(v95, v96);
      }

      else
      {
        (*(v94 + 8))(v95, v96);
        (*(v98 + 8))(v97, v99);
      }

      v104 = v171;
      v103 = v172;
      sub_2186EAA78(0, &qword_280E90E70, sub_2186EAD48, sub_2186EAB88);
      return (*(v104 + 8))(&v41[*(v105 + 48)], v103);
    case 7u:
      v55 = v133;
      v56 = v131;
      v57 = v134;
      (*(v133 + 32))(v131, v41, v134);
      v69 = v135;
      sub_219BF07D4();
      sub_2192A8EB0(v173, v69, MEMORY[0x277D31D50], MEMORY[0x277D31D48], &unk_282A67D30, sub_2192DDCB4);
      v62 = *(v137 + 8);
      v63 = v69;
      v64 = &v170;
      goto LABEL_13;
    case 9u:
      v91 = v139;
      v92 = v136;
      v93 = v140;
      (*(v139 + 32))(v136, v41, v140);
      sub_2192A9CB8(v173);
      return (*(v91 + 8))(v92, v93);
    case 0xAu:
      v55 = v142;
      v56 = v141;
      v57 = v143;
      (*(v142 + 32))(v141, v41, v143);
      v61 = v144;
      sub_219BF07D4();
      sub_2192AA09C(v173, v61);
      v62 = *(v145 + 8);
      v63 = v61;
      v64 = &v174;
LABEL_13:
      v59 = *(v64 - 32);
      goto LABEL_18;
    case 0xBu:
      v65 = v149;
      v66 = v147;
      v57 = v150;
      (*(v149 + 32))(v147, v41, v150);
      v67 = v148;
      sub_219BF07D4();
      v68 = sub_219BF0404();
      (*(v151 + 8))(v67, v152);
      sub_2192AADA0(v173, v68);
      swift_unknownObjectRelease();
      goto LABEL_11;
    case 0xCu:
      v55 = v154;
      v57 = v155;
      v56 = v153;
      (*(v154 + 32))(v153, v41, v155);
      v58 = v156;
      sub_219BF07D4();
      sub_2192AB994(v173, v58);
      v60 = v157;
      v59 = v158;
      goto LABEL_17;
    case 0xDu:
      v56 = v159;
      v55 = v160;
      v57 = v161;
      (*(v160 + 32))(v159, v41, v161);
      v58 = v162;
      sub_219BF07D4();
      sub_219BEDB74();
      swift_unknownObjectRelease();
      v60 = v163;
      v59 = v164;
LABEL_17:
      v62 = *(v60 + 8);
      v63 = v58;
LABEL_18:
      v62(v63, v59);
      v76 = *(v55 + 8);
      v77 = v56;
      goto LABEL_19;
    case 0xFu:
      v65 = v167;
      v57 = v168;
      v66 = v165;
      (*(v167 + 32))(v165, v41, v168);
      v74 = v166;
      sub_219BF07D4();
      v75 = sub_219BF0B44();
      (*(v169 + 8))(v74, v170);
      sub_2192AC854(v173, v75);

LABEL_11:
      v76 = *(v65 + 8);
      v77 = v66;
LABEL_19:
      result = v76(v77, v57);
      break;
    default:

      sub_2186EA920();
      v172 = *(v79 + 48);
      sub_219BE7564();
      v80 = sub_219BE5F84();
      v82 = v81;
      v50(v47, v43);
      v83 = v126;
      sub_219BE75A4();
      v84 = v127;
      sub_219BE7574();
      v85 = v125;
      sub_219BDB104();
      v86 = *(v130 + 8);
      v87 = v132;
      v86(v84, v132);
      v86(v83, v87);
      sub_2192A8C14(v80, v82, v85, 0);

      (*(v128 + 8))(v85, v129);
      v52 = type metadata accessor for TodayGapLocation;
      v53 = &v41[v172];
LABEL_4:
      result = sub_2192CF630(v53, v52);
      break;
  }

  return result;
}

uint64_t sub_2192A7FC0(uint64_t a1, uint64_t a2)
{
  v79 = a2;
  sub_2187E2B78(0);
  v4 = v3;
  v76 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v71 = v5;
  v75 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDBD34();
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v68 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v67 = &v60 - v9;
  v10 = sub_219BDB184();
  v73 = *(v10 - 8);
  v74 = v10;
  MEMORY[0x28223BE20](v10);
  v80 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D8C(0);
  MEMORY[0x28223BE20](v12 - 8);
  v81 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218853400();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928();
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188118D4(0);
  v64 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v66 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v60 - v28;
  v65 = v30;
  MEMORY[0x28223BE20](v27);
  v32 = &v60 - v31;
  sub_219BE7594();
  v77 = v4;
  v72 = a1;
  sub_219BE7564();
  sub_219BE5F84();
  (*(v16 + 8))(v18, v15);
  sub_219BEB244();

  (*(v21 + 8))(v23, v20);
  sub_2192DC084(v32, v29, sub_2188118D4);
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v34 = v33;
  v35 = *(v33 - 8);
  if ((*(v35 + 48))(v29, 1, v33) == 1)
  {
    sub_2192CF630(v29, sub_2188118D4);
    v36 = sub_219BE16E4();
    (*(*(v36 - 8) + 56))(v81, 1, 1, v36);
  }

  else
  {
    sub_219BE6934();
    sub_21968BE24(v82, v81);

    (*(v35 + 8))(v29, v34);
  }

  v37 = v78;
  v38 = v78[25];
  v63 = v78[24];
  v60 = v38;
  v62 = __swift_project_boxed_opaque_existential_1(v78 + 21, v63);
  v39 = v67;
  v40 = v77;
  v41 = v72;
  sub_219BE75A4();
  v42 = v68;
  sub_219BE7574();
  sub_219BDB104();
  v43 = *(v69 + 8);
  v44 = v42;
  v45 = v70;
  v43(v44, v70);
  v43(v39, v45);
  v46 = v32;
  v61 = v32;
  v47 = v66;
  sub_2192DC084(v46, v66, sub_2188118D4);
  v49 = v75;
  v48 = v76;
  (*(v76 + 16))(v75, v41, v40);
  v50 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v51 = (v65 + *(v48 + 80) + v50) & ~*(v48 + 80);
  v52 = (v71 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  sub_2192DCD38(v47, v53 + v50, sub_2188118D4);
  (*(v48 + 32))(v53 + v51, v49, v40);
  *(v53 + v52) = v37;
  v54 = v79;
  *(v53 + ((v52 + 15) & 0xFFFFFFFFFFFFFFF8)) = v79;
  v55 = v60;
  v56 = *(v60 + 32);

  swift_unknownObjectRetain();
  v58 = v80;
  v57 = v81;
  v56(v80, v81, v54, sub_2192DD4B4, v53, v63, v55);

  (*(v73 + 8))(v58, v74);
  sub_2192CF630(v57, sub_218B58D8C);
  return sub_2192CF630(v61, sub_2188118D4);
}

uint64_t sub_2192A8780(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v46 = a1;
  sub_2187E2B78(0);
  v47 = v3;
  v42 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v40 = v4;
  v41 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_219BEBF14();
  v39 = *(v45 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218853400();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DD650(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DD684(0);
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v14);
  v37 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v43 = &v34 - v19;
  result = sub_2192A357C();
  if (result)
  {
    sub_219BE7564();
    sub_2192C7978(v10, v13);
    (*(v8 + 8))(v10, v7);
    v21 = v16;
    if ((*(v16 + 48))(v13, 1, v15) == 1)
    {
      v22 = sub_2192DD650;
      v23 = v13;
    }

    else
    {
      v35 = sub_2192DD684;
      v24 = v43;
      sub_2192DCD38(v13, v43, sub_2192DD684);
      v36 = *(v2 + 32);
      v25 = v39;
      (*(v39 + 16))(v44, v38, v45);
      v26 = v37;
      sub_2192DC084(v24, v37, sub_2192DD684);
      v28 = v41;
      v27 = v42;
      v29 = v47;
      (*(v42 + 16))(v41, v46, v47);
      v30 = (*(v25 + 80) + 16) & ~*(v25 + 80);
      v31 = (v5 + *(v21 + 80) + v30) & ~*(v21 + 80);
      v32 = (v17 + *(v27 + 80) + v31) & ~*(v27 + 80);
      v33 = swift_allocObject();
      (*(v25 + 32))(v33 + v30, v44, v45);
      sub_2192DCD38(v26, v33 + v31, v35);
      (*(v27 + 32))(v33 + v32, v28, v29);
      sub_219BDD154();

      v22 = sub_2192DD684;
      v23 = v43;
    }

    return sub_2192CF630(v23, v22);
  }

  return result;
}

void sub_2192A8C14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v23 = a3;
  v9 = sub_219BDB184();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_2192DD5C0(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09EC0;
  v13 = sub_2186FC3BC();
  v14 = a4 & 1;
  v15 = 0x6465646E65;
  if (v14)
  {
    v15 = 0x656C6C65636E6163;
  }

  v16 = 0xE500000000000000;
  if (v14)
  {
    v16 = 0xE900000000000064;
  }

  v17 = MEMORY[0x277D837D0];
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = v13;
  *(v12 + 32) = v15;
  *(v12 + 40) = v16;
  *(v12 + 96) = v17;
  *(v12 + 104) = v13;
  *(v12 + 72) = a1;
  *(v12 + 80) = a2;

  sub_219BF6214();
  sub_219BE5314();

  if (!v14)
  {
    (*(v10 + 16))(&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v9);
    v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v19 = swift_allocObject();
    (*(v10 + 32))(v19 + v18, &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    sub_219BDD154();
  }

  v20 = *(v5 + 400);
  if (v20)
  {
    [v20 invalidate];
    v21 = *(v5 + 400);
  }

  else
  {
    v21 = 0;
  }

  *(v5 + 400) = 0;
}

uint64_t sub_2192A8EB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v116 = a5;
  v117 = a6;
  v107 = a4;
  v111 = a2;
  sub_2187E2B78(0);
  v127 = v8;
  v115 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v112 = v9;
  v126 = v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3(0);
  v113 = *(v10 - 8);
  v114 = v10;
  v110 = *(v113 + 64);
  MEMORY[0x28223BE20](v10);
  v123 = v93 - v11;
  sub_218B59134(0);
  v108 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v124 = v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = v14;
  MEMORY[0x28223BE20](v13);
  v125 = v93 - v15;
  sub_2192CF5FC(0);
  MEMORY[0x28223BE20](v16 - 8);
  v96 = v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D8C(0);
  MEMORY[0x28223BE20](v18 - 8);
  v98 = v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  v122 = v20;
  MEMORY[0x28223BE20](v20);
  v101 = v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v103 = v22;
  v118 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v97 = v93 - v23;
  sub_218853400();
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v28 = v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928();
  v30 = v29;
  v31 = *(v29 - 8);
  v32 = MEMORY[0x28223BE20](v29);
  v102 = v93 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = v93 - v34;
  sub_2188118D4(0);
  v104 = *(v36 - 8);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v121 = v93 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = v93 - v40;
  v105 = v42;
  MEMORY[0x28223BE20](v39);
  v44 = v93 - v43;
  sub_219BE7594();
  v120 = a1;
  sub_219BE7564();
  sub_219BE5F84();
  v45 = v28;
  v46 = v118;
  (*(v26 + 8))(v45, v25);
  sub_219BEB244();

  v47 = *(v31 + 8);
  v100 = v30;
  v99 = v31 + 8;
  v47(v35, v30);
  v106 = swift_allocBox();
  v49 = v48;
  v50 = sub_219BE16D4();
  v51 = *(v50 - 8);
  v52 = *(v51 + 56);
  v53 = v51 + 56;
  v52(v49, 1, 1, v50);
  v122 = v44;
  v54 = v44;
  v55 = v103;
  sub_2192DC084(v54, v41, sub_2188118D4);
  if ((*(v46 + 48))(v41, 1, v55) == 1)
  {
    sub_2192CF630(v41, sub_2188118D4);
  }

  else
  {
    v93[1] = v53;
    v94 = v52;
    v95 = v47;
    v56 = v97;
    (*(v46 + 32))(v97, v41, v55);
    v57 = v102;
    sub_219BE7594();
    sub_219BE6934();
    v58 = v98;
    sub_21968BE24(v128[0], v98);

    v59 = sub_219BE16E4();
    if ((*(*(v59 - 8) + 48))(v58, 1, v59) == 1)
    {
      v95(v57, v100);
      (*(v46 + 8))(v56, v55);
      sub_2192CF630(v58, sub_218B58D8C);
      v60 = v101;
      v94(v101, 1, 1, v50);
    }

    else
    {
      v93[0] = v49;
      sub_2192CF630(v58, sub_218B58D8C);
      sub_218718690(v119 + 120, v128);
      __swift_project_boxed_opaque_existential_1(v128, v128[3]);
      sub_219BE6944();
      type metadata accessor for TodayModel(0);
      sub_2186EB3E8();
      sub_2187DD9B8(&qword_280EDF9E0, 255, type metadata accessor for TodayModel);
      v61 = v102;
      v62 = sub_219BF00E4();

      __swift_destroy_boxed_opaque_existential_1(v128);
      if (v62 == sub_219BDAF14())
      {
        v95(v61, v100);
        (*(v118 + 8))(v56, v55);
        v60 = v101;
        v94(v101, 1, 1, v50);
      }

      else
      {
        v63 = v56;
        v64 = sub_219BE6944();
        v66 = v65;
        v67 = sub_218827310();
        v68 = v55;
        if ((~v67 & 0xF000000000000007) != 0)
        {
          type metadata accessor for TodayFeedServiceConfig();
          sub_2187DD9B8(&qword_280EC6590, 255, type metadata accessor for TodayFeedServiceConfig);
          v69 = sub_219BEE774();
          sub_21885AB78(v67);
          v67 = v69;
        }

        v60 = v101;
        v70 = v96;
        sub_2192CE75C(v64, v66, v67, v96);
        sub_21885AB78(v67);

        sub_219689464(v62, v70, 0, v60);
        sub_2192CF630(v70, sub_2192CF5FC);
        v95(v102, v100);
        (*(v118 + 8))(v63, v68);
      }

      v49 = v93[0];
    }

    sub_218B58ECC(v60, v49);
  }

  v71 = v119;
  v72 = *(v119 + 528);
  v73 = __swift_project_boxed_opaque_existential_1((v119 + 504), v72);
  v74 = v111;
  v75 = v107();
  v77 = v76;
  MEMORY[0x28223BE20](v75);
  v79 = v93 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v80 + 16))(v79, v73, v72);
  v81 = v125;
  sub_218A75968(v75, v77, v79, v72, v125);
  v119 = *(v71 + 32);
  v83 = v113;
  v82 = v114;
  (*(v113 + 16))(v123, v74, v114);
  v84 = v115;
  v85 = v127;
  (*(v115 + 16))(v126, v120, v127);
  sub_2192DC084(v122, v121, sub_2188118D4);
  sub_2192DC084(v81, v124, sub_218B59134);
  v86 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v87 = (v110 + *(v84 + 80) + v86) & ~*(v84 + 80);
  v88 = (v112 + *(v104 + 80) + v87) & ~*(v104 + 80);
  v89 = (v105 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
  v90 = (*(v108 + 80) + v89 + 8) & ~*(v108 + 80);
  v91 = swift_allocObject();
  (*(v83 + 32))(v91 + v86, v123, v82);
  (*(v84 + 32))(v91 + v87, v126, v85);
  sub_2192DCD38(v121, v91 + v88, sub_2188118D4);
  *(v91 + v89) = v106;
  sub_2192DCD38(v124, v91 + v90, sub_218B59134);

  sub_219BDD154();

  sub_2192CF630(v125, sub_218B59134);
  sub_2192CF630(v122, sub_2188118D4);
}

uint64_t sub_2192A9CB8(uint64_t a1)
{
  v42 = a1;
  sub_2187E2B78(0);
  v48 = v1;
  v45 = *(v1 - 8);
  v43 = *(v45 + 64);
  MEMORY[0x28223BE20](v1);
  v46 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_219BE3514();
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v44);
  v33 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v8 = sub_219BE35B4();
  v34 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v35 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  sub_219BEEBC4();
  v14 = sub_219BE3554();
  v38 = v15;
  v39 = v14;
  v41 = v7;
  sub_219BE35A4();
  v16 = sub_219BE3594();
  v36 = v17;
  v37 = v16;
  v40 = *(v47 + 32);
  v18 = v44;
  (*(v3 + 16))(&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v44);
  (*(v9 + 16))(&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v8);
  v19 = v45;
  (*(v45 + 16))(v46, v42, v48);
  v20 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v21 = (v4 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v9 + 80) + v21 + 16) & ~*(v9 + 80);
  v23 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v19 + 80) + v23 + 8) & ~*(v19 + 80);
  v25 = swift_allocObject();
  v26 = v38;
  *(v25 + 16) = v39;
  *(v25 + 24) = v26;
  (*(v3 + 32))(v25 + v20, v33, v18);
  v27 = (v25 + v21);
  v28 = v36;
  *v27 = v37;
  v27[1] = v28;
  v29 = v25 + v22;
  v30 = v34;
  (*(v9 + 32))(v29, v35, v34);
  v31 = v46;
  *(v25 + v23) = v47;
  (*(v45 + 32))(v25 + v24, v31, v48);

  sub_219BDD154();

  (*(v3 + 8))(v41, v44);
  return (*(v9 + 8))(v13, v30);
}

uint64_t sub_2192AA09C(uint64_t a1, uint64_t a2)
{
  v93 = a2;
  v103 = sub_219BF07A4();
  v96 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v94 = v3;
  v102 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187E2B78(0);
  v5 = v4;
  v95 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v92 = v6;
  v101 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192CF5FC(0);
  MEMORY[0x28223BE20](v7 - 8);
  v79 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D8C(0);
  MEMORY[0x28223BE20](v9 - 8);
  v87 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  v100 = v11;
  MEMORY[0x28223BE20](v11);
  v84 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v86 = v13;
  v97 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v81 = &v75 - v14;
  v80 = type metadata accessor for TodayModel(0);
  MEMORY[0x28223BE20](v80);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218853400();
  v88 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928();
  v22 = v21;
  v23 = *(v21 - 8);
  v24 = MEMORY[0x28223BE20](v21);
  v85 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v75 - v26;
  sub_2188118D4(0);
  v89 = *(v28 - 8);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v91 = &v75 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v75 - v32;
  v90 = v34;
  MEMORY[0x28223BE20](v31);
  v36 = &v75 - v35;
  sub_219BE7594();
  v104 = v5;
  v99 = a1;
  sub_219BE7564();
  v37 = v88;
  sub_219BE5FC4();
  (*(v18 + 8))(v20, v37);
  sub_2188578D8();
  sub_2192CF630(v16, type metadata accessor for TodayModel);
  sub_219BEB244();
  v38 = v97;

  v39 = *(v23 + 8);
  v83 = v22;
  v82 = v23 + 8;
  v39(v27, v22);
  v88 = swift_allocBox();
  v41 = v40;
  v42 = sub_219BE16D4();
  v43 = *(*(v42 - 8) + 56);
  v43(v41, 1, 1, v42);
  v100 = v36;
  v44 = v36;
  v45 = v86;
  sub_2192DC084(v44, v33, sub_2188118D4);
  if ((*(v38 + 48))(v33, 1, v45) == 1)
  {
    sub_2192CF630(v33, sub_2188118D4);
    v46 = v104;
  }

  else
  {
    v76 = v43;
    v77 = v39;
    v78 = v41;
    v47 = v81;
    (*(v38 + 32))(v81, v33, v45);
    v48 = v85;
    v46 = v104;
    sub_219BE7594();
    sub_219BE6934();
    v49 = v87;
    sub_21968BE24(v105[0], v87);

    v50 = sub_219BE16E4();
    if ((*(*(v50 - 8) + 48))(v49, 1, v50) == 1)
    {
      v77(v48, v83);
      (*(v38 + 8))(v47, v45);
      sub_2192CF630(v87, sub_218B58D8C);
      v51 = v84;
      v76(v84, 1, 1, v42);
    }

    else
    {
      sub_2192CF630(v87, sub_218B58D8C);
      sub_218718690(v98 + 120, v105);
      v87 = __swift_project_boxed_opaque_existential_1(v105, v105[3]);
      sub_219BE6944();
      sub_2186EB3E8();
      sub_2187DD9B8(&qword_280EDF9E0, 255, type metadata accessor for TodayModel);
      v52 = sub_219BF00E4();

      __swift_destroy_boxed_opaque_existential_1(v105);
      if (v52 == sub_219BDAF14())
      {
        v77(v48, v83);
        (*(v97 + 8))(v47, v45);
        v51 = v84;
        v76(v84, 1, 1, v42);
        v46 = v104;
      }

      else
      {
        v53 = sub_219BE6944();
        v55 = v54;
        v56 = sub_218827310();
        v57 = v45;
        if ((~v56 & 0xF000000000000007) != 0)
        {
          type metadata accessor for TodayFeedServiceConfig();
          sub_2187DD9B8(&qword_280EC6590, 255, type metadata accessor for TodayFeedServiceConfig);
          v58 = sub_219BEE774();
          sub_21885AB78(v56);
          v56 = v58;
        }

        v46 = v104;
        v59 = v79;
        sub_2192CE75C(v53, v55, v56, v79);
        sub_21885AB78(v56);

        v51 = v84;
        sub_219689464(v52, v59, 0, v84);
        sub_2192CF630(v59, sub_2192CF5FC);
        v77(v85, v83);
        (*(v97 + 8))(v47, v57);
      }
    }

    sub_218B58ECC(v51, v78);
  }

  v60 = v98;
  __swift_project_boxed_opaque_existential_1((v98 + 464), *(v98 + 488));
  v61 = v93;
  v62 = sub_219BF06B4();
  v63 = [v62 identifier];

  sub_219BF5414();
  LODWORD(v87) = sub_219BF4774();

  v97 = *(v60 + 32);
  v64 = v91;
  sub_2192DC084(v100, v91, sub_2188118D4);
  v65 = v95;
  (*(v95 + 16))(v101, v99, v46);
  v66 = v96;
  (*(v96 + 16))(v102, v61, v103);
  v67 = (*(v89 + 80) + 16) & ~*(v89 + 80);
  v68 = (v90 + *(v65 + 80) + v67) & ~*(v65 + 80);
  v69 = (v92 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = (*(v66 + 80) + v69 + 8) & ~*(v66 + 80);
  v71 = (v94 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  sub_2192DCD38(v64, v72 + v67, sub_2188118D4);
  (*(v65 + 32))(v72 + v68, v101, v104);
  *(v72 + v69) = v88;
  (*(v66 + 32))(v72 + v70, v102, v103);
  v73 = v72 + v71;
  *v73 = v60;
  *(v73 + 8) = v87 & 1;

  sub_219BDD154();

  sub_2192CF630(v100, sub_2188118D4);
}

uint64_t sub_2192AADA0(uint64_t a1, void *a2)
{
  v100 = a2;
  sub_2187E2B78(0);
  v4 = v3;
  v93 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v92 = v5;
  v99 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  v89 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v97 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v8;
  MEMORY[0x28223BE20](v7);
  v98 = &v77 - v9;
  sub_2192CF5FC(0);
  MEMORY[0x28223BE20](v10 - 8);
  v83 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D8C(0);
  MEMORY[0x28223BE20](v12 - 8);
  v84 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218853400();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928();
  v20 = v19;
  v21 = *(v19 - 8);
  v22 = MEMORY[0x28223BE20](v19);
  v94 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v77 - v24;
  sub_2188118D4(0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v30 = v29;
  v102 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v87 = v32;
  v88 = &v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v95 = &v77 - v33;
  sub_219BE7594();
  v101 = v4;
  v96 = a1;
  sub_219BE7564();
  sub_219BE5F84();
  (*(v16 + 8))(v18, v15);
  sub_219BEB244();
  v34 = v102;

  v35 = *(v21 + 8);
  v86 = v20;
  v85 = v21 + 8;
  v35(v25, v20);
  if ((*(v34 + 48))(v28, 1, v30) == 1)
  {
    return sub_2192CF630(v28, sub_2188118D4);
  }

  v37 = *(v34 + 32);
  v38 = v95;
  v81 = v34 + 32;
  v80 = v37;
  v37(v95, v28, v30);
  sub_218B58D58(0);
  v82 = swift_allocBox();
  v40 = v39;
  v41 = v94;
  sub_219BE7594();
  sub_219BE6934();
  v42 = v84;
  sub_21968BE24(v103[0], v84);

  v43 = sub_219BE16E4();
  if ((*(*(v43 - 8) + 48))(v42, 1, v43) == 1)
  {
    v35(v41, v86);
    sub_2192CF630(v42, sub_218B58D8C);
    v44 = sub_219BE16D4();
    (*(*(v44 - 8) + 56))(v40, 1, 1, v44);
    v45 = v91;
  }

  else
  {
    v78 = v40;
    v79 = v35;
    sub_2192CF630(v42, sub_218B58D8C);
    v45 = v91;
    sub_218718690(v91 + 120, v103);
    __swift_project_boxed_opaque_existential_1(v103, v104);
    sub_219BE6944();
    type metadata accessor for TodayModel(0);
    sub_2186EB3E8();
    sub_2187DD9B8(&qword_280EDF9E0, 255, type metadata accessor for TodayModel);
    v46 = v94;
    v47 = sub_219BF00E4();

    __swift_destroy_boxed_opaque_existential_1(v103);
    if (v47 == sub_219BDAF14())
    {
      v79(v46, v86);
      v48 = sub_219BE16D4();
      (*(*(v48 - 8) + 56))(v78, 1, 1, v48);
    }

    else
    {
      v49 = v30;
      v50 = v38;
      v51 = sub_219BE6944();
      v53 = v52;
      v54 = sub_218827310();
      if ((~v54 & 0xF000000000000007) != 0)
      {
        type metadata accessor for TodayFeedServiceConfig();
        sub_2187DD9B8(&qword_280EC6590, 255, type metadata accessor for TodayFeedServiceConfig);
        v55 = sub_219BEE774();
        sub_21885AB78(v54);
        v54 = v55;
      }

      v56 = v83;
      sub_2192CE75C(v51, v53, v54, v83);
      sub_21885AB78(v54);

      v38 = v50;
      sub_219689464(v47, v56, 1, v78);
      sub_2192CF630(v56, sub_2192CF5FC);
      v79(v94, v86);
      v30 = v49;
    }
  }

  sub_218718690(v45 + 504, v103);
  v57 = v104;
  v58 = __swift_project_boxed_opaque_existential_1(v103, v104);
  v59 = [v100 dismissingIdentifier];
  if (v59)
  {
    v60 = v59;
    v61 = sub_219BF5414();
    v63 = v62;
  }

  else
  {
    v61 = 0;
    v63 = 0;
  }

  MEMORY[0x28223BE20](v59);
  v65 = &v77 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v66 + 16))(v65, v58, v57);
  v67 = v98;
  sub_218A75968(v61, v63, v65, v57, v98);
  __swift_destroy_boxed_opaque_existential_1(v103);
  v94 = *(v45 + 32);
  v68 = v102;
  v69 = v88;
  (*(v102 + 16))(v88, v38, v30);
  sub_2192DC084(v67, v97, sub_218B59134);
  v70 = v93;
  (*(v93 + 16))(v99, v96, v101);
  v71 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v72 = (v87 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = (*(v89 + 80) + v72 + 8) & ~*(v89 + 80);
  v74 = (v90 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = (*(v70 + 80) + v74 + 8) & ~*(v70 + 80);
  v76 = swift_allocObject();
  v80(v76 + v71, v69, v30);
  *(v76 + v72) = v100;
  sub_2192DCD38(v97, v76 + v73, sub_218B59134);
  *(v76 + v74) = v82;
  (*(v70 + 32))(v76 + v75, v99, v101);
  swift_unknownObjectRetain();

  sub_219BDD154();

  sub_2192CF630(v98, sub_218B59134);
  (*(v68 + 8))(v95, v30);
}

uint64_t sub_2192AB994(uint64_t a1, uint64_t a2)
{
  v105 = a2;
  sub_2187E2B78(0);
  v121 = v3;
  v109 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v108 = v4;
  v120 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_219BF0AC4();
  v107 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v104 = v5;
  v116 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  v102 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v114 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v8;
  MEMORY[0x28223BE20](v7);
  v118 = &v88 - v9;
  v117 = sub_219BDEF94();
  v106 = *(v117 - 8);
  v10 = MEMORY[0x28223BE20](v117);
  v113 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v11;
  MEMORY[0x28223BE20](v10);
  v115 = &v88 - v12;
  sub_2192CF5FC(0);
  MEMORY[0x28223BE20](v13 - 8);
  v90 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D8C(0);
  MEMORY[0x28223BE20](v15 - 8);
  v95 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v17);
  v97 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218853400();
  v99 = v19;
  v20 = *(v19 - 1);
  MEMORY[0x28223BE20](v19);
  v22 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928();
  v24 = v23;
  v25 = *(v23 - 1);
  v26 = MEMORY[0x28223BE20](v23);
  v94 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v88 - v28;
  sub_2188118D4(0);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v34 = v33;
  v110 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v98 = &v88 - v35;
  v100 = swift_allocBox();
  v37 = v36;
  v38 = sub_219BE16D4();
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v96 = v37;
  v93 = v38;
  v92 = v40;
  v91 = v39 + 56;
  (v40)(v37, 1, 1);
  sub_219BE7594();
  v112 = a1;
  sub_219BE7564();
  v41 = v99;
  sub_219BE5F84();
  (*(v20 + 8))(v22, v41);
  sub_219BEB244();
  v42 = v34;

  v43 = *(v25 + 8);
  v44 = v29;
  v45 = v110;
  v99 = v24;
  v43(v44, v24);
  if ((*(v45 + 48))(v32, 1, v34) != 1)
  {
    v46 = v98;
    (*(v45 + 32))(v98, v32, v34);
    v47 = v94;
    sub_219BE7594();
    sub_219BE6934();
    v48 = v95;
    sub_21968BE24(v122[0], v95);

    v49 = sub_219BE16E4();
    if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
    {
      v43(v47, v99);
      (*(v45 + 8))(v46, v34);
      sub_2192CF630(v48, sub_218B58D8C);
    }

    else
    {
      v89 = v43;
      sub_2192CF630(v48, sub_218B58D8C);
      sub_218718690((v111 + 15), v122);
      __swift_project_boxed_opaque_existential_1(v122, v122[3]);
      sub_219BE6944();
      type metadata accessor for TodayModel(0);
      sub_2186EB3E8();
      v50 = v34;
      sub_2187DD9B8(&qword_280EDF9E0, 255, type metadata accessor for TodayModel);
      v51 = sub_219BF00E4();

      __swift_destroy_boxed_opaque_existential_1(v122);
      if (v51 != sub_219BDAF14())
      {
        v53 = v98;
        v54 = sub_219BE6944();
        v56 = v55;
        v57 = sub_218827310();
        v95 = v50;
        if ((~v57 & 0xF000000000000007) != 0)
        {
          type metadata accessor for TodayFeedServiceConfig();
          sub_2187DD9B8(&qword_280EC6590, 255, type metadata accessor for TodayFeedServiceConfig);
          v58 = sub_219BEE774();
          sub_21885AB78(v57);
          v57 = v58;
        }

        v59 = v90;
        sub_2192CE75C(v54, v56, v57, v90);
        sub_21885AB78(v57);

        v52 = v97;
        sub_219689464(v51, v59, 0, v97);
        sub_2192CF630(v59, sub_2192CF5FC);
        v89(v47, v99);
        (*(v110 + 8))(v53, v95);
        goto LABEL_11;
      }

      v89(v47, v99);
      (*(v110 + 8))(v98, v42);
    }

    v52 = v97;
    v92(v97, 1, 1, v93);
LABEL_11:
    sub_218B58ECC(v52, v96);
    goto LABEL_12;
  }

  sub_2192CF630(v32, sub_2188118D4);
LABEL_12:
  v60 = v111;
  __swift_project_boxed_opaque_existential_1(v111 + 58, v111[61]);
  v61 = v105;
  sub_219BF0A04();
  LODWORD(v110) = sub_219BF4774();

  __swift_project_boxed_opaque_existential_1(v60 + 43, v60[46]);
  v62 = [sub_219BF0AA4() identifier];
  swift_unknownObjectRelease();
  sub_219BF5414();

  v63 = sub_219BF3424();
  v99 = v63;

  v64 = v61;
  sub_219BF0AA4();
  swift_getObjectType();
  v65 = v115;
  sub_2194CA7FC(v63, v115);
  swift_unknownObjectRelease();
  v66 = v60[66];
  v67 = __swift_project_boxed_opaque_existential_1(v60 + 63, v66);
  v68 = sub_219BF0A64();
  v70 = v69;
  MEMORY[0x28223BE20](v68);
  v72 = &v88 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v73 + 16))(v72, v67, v66);
  v74 = v118;
  sub_218A75968(v68, v70, v72, v66, v118);
  v111 = v60[4];
  v75 = v106;
  (*(v106 + 16))(v113, v65, v117);
  v76 = v107;
  (*(v107 + 16))(v116, v64, v119);
  sub_2192DC084(v74, v114, sub_218B59134);
  v77 = v109;
  (*(v109 + 16))(v120, v112, v121);
  v78 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v79 = v78 + v101;
  v80 = (*(v76 + 80) + v78 + v101 + 1) & ~*(v76 + 80);
  v81 = (v104 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v82 = (*(v102 + 80) + v81 + 8) & ~*(v102 + 80);
  v83 = (v103 + *(v77 + 80) + v82) & ~*(v77 + 80);
  v84 = swift_allocObject();
  v85 = v84 + v78;
  v86 = v117;
  (*(v75 + 32))(v85, v113, v117);
  *(v84 + v79) = v110 & 1;
  (*(v76 + 32))(v84 + v80, v116, v119);
  *(v84 + v81) = v100;
  sub_2192DCD38(v114, v84 + v82, sub_218B59134);
  (*(v77 + 32))(v84 + v83, v120, v121);

  sub_219BDD154();

  sub_2192CF630(v118, sub_218B59134);
  (*(v75 + 8))(v115, v86);
}

uint64_t sub_2192AC854(uint64_t a1, void *a2)
{
  v85 = a2;
  sub_2187E2B78(0);
  v4 = v3;
  v84 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v82 = v5;
  v83 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192CF5FC(0);
  MEMORY[0x28223BE20](v6 - 8);
  v72 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D8C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v79 = (&v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218B58D58(0);
  v81 = v10;
  MEMORY[0x28223BE20](v10);
  v77 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v78 = v12;
  v86 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v74 = &v68 - v13;
  sub_218853400();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928();
  v20 = v19;
  v21 = *(v19 - 8);
  v22 = MEMORY[0x28223BE20](v19);
  v73 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v68 - v24;
  sub_2188118D4(0);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v29 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v68 - v30;
  sub_219BE7594();
  v88 = a1;
  v89 = v4;
  sub_219BE7564();
  sub_219BE5F84();
  (*(v16 + 8))(v18, v15);
  v32 = v86;
  sub_219BEB244();

  v33 = *(v21 + 8);
  v75 = v21 + 8;
  v76 = v20;
  v33(v25, v20);
  v80 = swift_allocBox();
  v35 = v34;
  v36 = sub_219BE16D4();
  v37 = *(*(v36 - 8) + 56);
  v37(v35, 1, 1, v36);
  v81 = v31;
  v38 = v31;
  v39 = v78;
  sub_2192DC084(v38, v29, sub_2188118D4);
  if ((*(v32 + 48))(v29, 1, v39) == 1)
  {
    sub_2192CF630(v29, sub_2188118D4);
  }

  else
  {
    v70 = v37;
    v71 = v33;
    v40 = v74;
    (*(v32 + 32))(v74, v29, v39);
    v41 = v73;
    sub_219BE7594();
    sub_219BE6934();
    v42 = v79;
    sub_21968BE24(v90[0], v79);

    v43 = sub_219BE16E4();
    if ((*(*(v43 - 8) + 48))(v42, 1, v43) == 1)
    {
      v71(v41, v76);
      (*(v32 + 8))(v40, v39);
      sub_2192CF630(v79, sub_218B58D8C);
      v44 = v77;
      v70(v77, 1, 1, v36);
    }

    else
    {
      v69 = v35;
      sub_2192CF630(v79, sub_218B58D8C);
      sub_218718690(v87 + 120, v90);
      v68 = v90[4];
      v79 = __swift_project_boxed_opaque_existential_1(v90, v90[3]);
      sub_219BE6944();
      type metadata accessor for TodayModel(0);
      sub_2186EB3E8();
      sub_2187DD9B8(&qword_280EDF9E0, 255, type metadata accessor for TodayModel);
      v45 = sub_219BF00E4();

      __swift_destroy_boxed_opaque_existential_1(v90);
      if (v45 == sub_219BDAF14())
      {
        v71(v41, v76);
        (*(v86 + 8))(v40, v39);
        v44 = v77;
        v70(v77, 1, 1, v36);
      }

      else
      {
        v46 = v41;
        v47 = v40;
        v48 = sub_219BE6944();
        v50 = v49;
        v51 = v46;
        v52 = sub_218827310();
        if ((~v52 & 0xF000000000000007) != 0)
        {
          type metadata accessor for TodayFeedServiceConfig();
          sub_2187DD9B8(&qword_280EC6590, 255, type metadata accessor for TodayFeedServiceConfig);
          v53 = sub_219BEE774();
          sub_21885AB78(v52);
          v52 = v53;
        }

        v54 = v72;
        sub_2192CE75C(v48, v50, v52, v72);
        sub_21885AB78(v52);

        v44 = v77;
        sub_219689464(v45, v54, 0, v77);
        sub_2192CF630(v54, sub_2192CF5FC);
        v71(v51, v76);
        (*(v86 + 8))(v47, v39);
      }

      v35 = v69;
    }

    sub_218B58ECC(v44, v35);
  }

  v56 = v87;
  v55 = v88;
  __swift_project_boxed_opaque_existential_1((v87 + 464), *(v87 + 488));
  v57 = v85;
  v58 = [v85 identifier];
  sub_219BF5414();

  LODWORD(v86) = sub_219BF4774();

  v88 = *(v56 + 32);
  v59 = v83;
  v60 = v84;
  v61 = v89;
  (*(v84 + 16))(v83, v55, v89);
  v62 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v63 = (v82 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v60 + 32))(v64 + v62, v59, v61);
  *(v64 + v63) = v57;
  v65 = v64 + ((v63 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v65 = v56;
  *(v65 + 8) = v86 & 1;
  *(v64 + ((v63 + 31) & 0xFFFFFFFFFFFFFFF8)) = v80;
  v66 = v57;

  sub_219BDD154();

  sub_2192CF630(v81, sub_2188118D4);
}

uint64_t sub_2192AD2D0()
{
  v0 = sub_219BDBD34();
  v33 = *(v0 - 8);
  v34 = v0;
  v1 = MEMORY[0x28223BE20](v0);
  v30 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v29 = &v28 - v3;
  v4 = sub_219BDB184();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4);
  v28 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TodayModel(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218853400();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  sub_2187E2B78(0);
  sub_219BE7564();
  sub_219BE5FC4();
  v17 = *(v11 + 8);
  v17(v16, v10);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_2192CF630(v8, type metadata accessor for TodayModel);
  }

  sub_2186EA920();
  sub_2192CF630(&v8[*(v19 + 48)], type metadata accessor for TodayGapLocation);
  sub_219BE7564();
  v20 = sub_219BE5F84();
  v22 = v21;
  v17(v14, v10);
  v23 = v29;
  sub_219BE75A4();
  v24 = v30;
  sub_219BE7574();
  v25 = v28;
  sub_219BDB104();
  v26 = v34;
  v27 = *(v33 + 8);
  v27(v24, v34);
  v27(v23, v26);
  sub_2192A8C14(v20, v22, v25, 1);

  return (*(v31 + 8))(v25, v32);
}

uint64_t sub_2192AD68C(uint64_t a1)
{
  sub_218729624(0, &qword_280EE45D8, MEMORY[0x277D6E3A0]);
  v3 = v2;
  v72 = *(v2 - 8);
  v69 = *(v72 + 64);
  MEMORY[0x28223BE20](v2);
  v71 = &v61 - v4;
  v5 = sub_219BE16E4();
  v83 = *(v5 - 8);
  v84 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v76 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v75 = &v61 - v8;
  sub_2192CF5FC(0);
  MEMORY[0x28223BE20](v9 - 8);
  v66 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D8C(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928();
  v78 = v14;
  v80 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v18 = v17;
  v79 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v61 - v19;
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BE16D4();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v68 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v27;
  MEMORY[0x28223BE20](v26);
  v77 = &v61 - v28;
  sub_219BE8EF4();
  v82 = v16;
  v73 = v3;
  sub_219BE8F04();
  sub_219BE6934();
  sub_21968BE24(v85[0], v13);

  v29 = (*(v83 + 48))(v13, 1, v84);
  v70 = a1;
  if (v29 == 1)
  {
    (*(v80 + 8))(v82, v78);
    (*(v79 + 8))(v20, v18);
    sub_2192CF630(v13, sub_218B58D8C);
    (*(v25 + 56))(v23, 1, 1, v24);
  }

  else
  {
    v64 = v23;
    v65 = v25;
    v74 = v24;
    sub_2192CF630(v13, sub_218B58D8C);
    sub_218718690((v81 + 15), v85);
    __swift_project_boxed_opaque_existential_1(v85, v85[3]);
    sub_219BE6944();
    type metadata accessor for TodayModel(0);
    sub_2186EB3E8();
    sub_2187DD9B8(&qword_280EDF9E0, 255, type metadata accessor for TodayModel);
    v30 = v82;
    v31 = sub_219BF00E4();

    __swift_destroy_boxed_opaque_existential_1(v85);
    if (v31 == sub_219BDAF14())
    {
      (*(v80 + 8))(v30, v78);
      (*(v79 + 8))(v20, v18);
      v25 = v65;
      v23 = v64;
      v24 = v74;
      (*(v65 + 56))(v64, 1, 1, v74);
    }

    else
    {
      v63 = v18;
      v62 = sub_219BE6944();
      v33 = v32;
      v34 = sub_218827310();
      v23 = v64;
      if ((~v34 & 0xF000000000000007) != 0)
      {
        type metadata accessor for TodayFeedServiceConfig();
        sub_2187DD9B8(&qword_280EC6590, 255, type metadata accessor for TodayFeedServiceConfig);
        v35 = sub_219BEE774();
        sub_21885AB78(v34);
        v34 = v35;
      }

      v36 = v66;
      sub_2192CE75C(v62, v33, v34, v66);
      sub_21885AB78(v34);

      sub_219689464(v31, v36, 1, v23);
      sub_2192CF630(v36, sub_2192CF5FC);
      (*(v80 + 8))(v82, v78);
      (*(v79 + 8))(v20, v63);
      v24 = v74;
      v25 = v65;
    }
  }

  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    return sub_2192CF630(v23, sub_218B58D58);
  }

  v38 = v25;
  v39 = v77;
  v82 = *(v25 + 32);
  v82(v77, v23, v24);
  v40 = v75;
  v41 = v24;
  v42 = v39;
  sub_219BE16B4();
  v43 = v83;
  v44 = v84;
  v45 = v76;
  (*(v83 + 104))(v76, *MEMORY[0x277D2F818], v84);
  sub_2187DD9B8(&unk_280EE7F80, 255, MEMORY[0x277D2F870]);
  LOBYTE(v39) = sub_219BF53A4();
  v46 = *(v43 + 8);
  v46(v45, v44);
  v46(v40, v44);
  if (v39)
  {
    return (*(v38 + 8))(v42, v41);
  }

  v47 = v81;
  v84 = v81[4];
  v48 = v71;
  v49 = v72;
  v50 = *(v72 + 16);
  v51 = v41;
  v74 = v41;
  v52 = v73;
  v50(v71, v70, v73);
  v53 = v68;
  (*(v38 + 16))(v68, v42, v51);
  v54 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v55 = (v69 + *(v38 + 80) + v54) & ~*(v38 + 80);
  v56 = swift_allocObject();
  (*(v49 + 32))(v56 + v54, v48, v52);
  v57 = v74;
  v82(v56 + v55, v53, v74);
  sub_219BDD154();

  v58 = v47[24];
  v59 = v47[25];
  __swift_project_boxed_opaque_existential_1(v47 + 21, v58);
  v60 = v77;
  (*(v59 + 24))(v77, v58, v59);
  return (*(v38 + 8))(v60, v57);
}

char *sub_2192AE100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v460 = a3;
  v465 = a1;
  v4 = sub_219BDBD34();
  v463 = *(v4 - 8);
  v464 = v4;
  MEMORY[0x28223BE20](v4);
  v461 = &v404 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FoodTodayFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v447 = (&v404 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ChannelPickerTodayFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v446 = (&v404 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for SavedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v445 = (&v404 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for ChannelTodayFeedGroup();
  MEMORY[0x28223BE20](v12 - 8);
  v444 = (&v404 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for ShortcutsTodayFeedGroup();
  MEMORY[0x28223BE20](v14 - 8);
  *&v443 = &v404 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v426 = type metadata accessor for MyMagazinesMagazineFeedGroup();
  MEMORY[0x28223BE20](v426);
  *&v442 = &v404 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v425 = type metadata accessor for NewIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v425);
  v441 = (&v404 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for TrendingMagazineFeedGroup();
  MEMORY[0x28223BE20](v18 - 8);
  v440 = (&v404 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for BestOfBundleMagazineFeedGroup();
  MEMORY[0x28223BE20](v20 - 8);
  v439 = (&v404 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for FeaturedIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v22 - 8);
  v438 = (&v404 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v424 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v424);
  v437 = (&v404 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v423 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v423);
  v436 = (&v404 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for IntroToSportsTodayFeedGroup();
  MEMORY[0x28223BE20](v26 - 8);
  v435 = (&v404 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for MySportsTodayFeedGroup();
  MEMORY[0x28223BE20](v28 - 8);
  v434 = (&v404 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v422 = type metadata accessor for SharedWithYouTodayFeedGroup();
  MEMORY[0x28223BE20](v422);
  v433 = (&v404 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = type metadata accessor for SuggestionTodayFeedGroup();
  MEMORY[0x28223BE20](v31 - 8);
  v432 = (&v404 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = type metadata accessor for SubscriptionTodayFeedGroup();
  MEMORY[0x28223BE20](v33 - 8);
  v453 = (&v404 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = type metadata accessor for SpotlightTodayFeedGroup();
  MEMORY[0x28223BE20](v35 - 8);
  v431 = (&v404 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = type metadata accessor for NewFollowTodayFeedGroup();
  MEMORY[0x28223BE20](v37 - 8);
  v430 = (&v404 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = type metadata accessor for TopicTodayFeedGroup();
  MEMORY[0x28223BE20](v39 - 8);
  v429 = (&v404 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = type metadata accessor for TrendingTodayFeedGroup();
  MEMORY[0x28223BE20](v41 - 8);
  v428 = (&v404 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v421 = type metadata accessor for LocalNewsTodayFeedGroup();
  MEMORY[0x28223BE20](v421);
  v452 = &v404 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_219BDFD04();
  v449 = *(v44 - 8);
  v450 = v44;
  MEMORY[0x28223BE20](v44);
  v448 = &v404 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v420 = type metadata accessor for NewspaperTodayFeedGroup();
  MEMORY[0x28223BE20](v420);
  v451 = &v404 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_219BE1444();
  v48 = *(v47 - 8);
  v455 = v47;
  v456 = v48;
  MEMORY[0x28223BE20](v47);
  v454 = &v404 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_219BF1904();
  v51 = *(v50 - 8);
  v457 = v50;
  v458 = v51;
  v52 = MEMORY[0x28223BE20](v50);
  v419 = &v404 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v418 = &v404 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v417 = &v404 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v416 = &v404 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v415 = &v404 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v414 = &v404 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v413 = &v404 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v412 = &v404 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v411 = &v404 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v410 = &v404 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v409 = &v404 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v408 = &v404 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v407 = &v404 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v406 = &v404 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v405 = &v404 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v84 = &v404 - v83;
  v85 = MEMORY[0x28223BE20](v82);
  v87 = &v404 - v86;
  v88 = MEMORY[0x28223BE20](v85);
  v90 = &v404 - v89;
  v91 = MEMORY[0x28223BE20](v88);
  v93 = &v404 - v92;
  v94 = MEMORY[0x28223BE20](v91);
  v96 = &v404 - v95;
  MEMORY[0x28223BE20](v94);
  v98 = &v404 - v97;
  v99 = type metadata accessor for CuratedTodayFeedGroup();
  MEMORY[0x28223BE20](v99 - 8);
  v427 = (&v404 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v102 = v101;
  v103 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v105 = &v404 - v104;
  sub_218729624(0, &qword_280EE45D8, MEMORY[0x277D6E3A0]);
  v459 = v106;
  v462 = a2;
  sub_219BE8EF4();
  sub_219BE6934();
  (*(v103 + 8))(v105, v102);
  v107 = v467;
  v108 = &unk_219C09000;
  v109 = MEMORY[0x277CEAD18];
  switch((v107 >> 58) & 0x3C | (v107 >> 1) & 3)
  {
    case 1uLL:
      v453 = v467;
      v110 = swift_projectBox();
      v111 = v427;
      sub_2192DC084(v110, v427, type metadata accessor for CuratedTodayFeedGroup);
      sub_219BED874();
      v112 = sub_219BF1844();
      (*(v458 + 8))(v98, v457);
      if (v112)
      {
        v113 = [v112 identifier];
        sub_219BF5414();

        v114 = v454;
        sub_219BE1424();
        sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v115 = sub_219BDCD44();
        v116 = *(v115 - 8);
        v117 = (*(v116 + 80) + 32) & ~*(v116 + 80);
        v118 = swift_allocObject();
        *(v118 + 16) = xmmword_219C09BA0;
        (*(v116 + 104))(v118 + v117, *v109, v115);
        sub_2187DD9B8(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
        v119 = v455;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v456 + 1))(v114, v119);
        v120 = type metadata accessor for CuratedTodayFeedGroup;
        v121 = v427;
        goto LABEL_95;
      }

      v395 = type metadata accessor for CuratedTodayFeedGroup;
      goto LABEL_94;
    case 2uLL:
      v453 = v467;
      v221 = swift_projectBox();
      v222 = v451;
      sub_2192DC084(v221, v451, type metadata accessor for NewspaperTodayFeedGroup);
      v223 = v420;
      v224 = [*(v222 + *(v420 + 20)) identifier];
      sub_219BF5414();

      v225 = v454;
      sub_219BE1424();
      sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v227 = v226;
      v228 = sub_219BDCD44();
      v229 = *(v228 - 8);
      v230 = *(v229 + 80);
      v231 = (v230 + 32) & ~v230;
      v446 = *(v229 + 72);
      v445 = v230;
      v457 = v227;
      v232 = swift_allocObject();
      v442 = xmmword_219C09BA0;
      *(v232 + 16) = xmmword_219C09BA0;
      v233 = *v109;
      v234 = *(v229 + 104);
      v447 = v231;
      LODWORD(v444) = v233;
      v458 = v228;
      v452 = v229 + 104;
      *&v443 = v234;
      v234(v232 + v231);
      sub_2187DD9B8(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
      v235 = v455;
      sub_219BDCCC4();

      (*(v456 + 1))(v225, v235);
      v236 = *(v222 + *(v223 + 24));
      v237 = v109;
      if (v236 >> 62)
      {
        v238 = sub_219BF7214();
      }

      else
      {
        v238 = *((v236 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v238)
      {
        goto LABEL_70;
      }

      v456 = "gapOnscreenTimer";
      v466 = MEMORY[0x277D84F90];
      result = sub_21870B65C(0, v238 & ~(v238 >> 63), 0);
      if ((v238 & 0x8000000000000000) == 0)
      {
        v240 = 0;
        v241 = v466;
        do
        {
          if ((v236 & 0xC000000000000001) != 0)
          {
            v242 = MEMORY[0x21CECE0F0](v240, v236);
          }

          else
          {
            v242 = *(v236 + 8 * v240 + 32);
            swift_unknownObjectRetain();
          }

          v243 = [v242 identifier];
          v244 = sub_219BF5414();
          v246 = v245;
          swift_unknownObjectRelease();

          v466 = v241;
          v248 = *(v241 + 16);
          v247 = *(v241 + 24);
          if (v248 >= v247 >> 1)
          {
            sub_21870B65C((v247 > 1), v248 + 1, 1);
            v241 = v466;
          }

          ++v240;
          *(v241 + 16) = v248 + 1;
          v249 = v241 + 16 * v248;
          *(v249 + 32) = v244;
          *(v249 + 40) = v246;
        }

        while (v238 != v240);
LABEL_70:
        v387 = v448;
        sub_219BDFCF4();
        v388 = v447;
        v389 = swift_allocObject();
        *(v389 + 16) = v442;
        (v443)(v389 + v388, v444, v458);
        sub_2187DD9B8(&unk_280EE8580, 255, MEMORY[0x277D2E068]);
        v390 = v450;
        sub_219BDCCC4();

        (*(v449 + 8))(v387, v390);
        sub_2192CF630(v451, type metadata accessor for NewspaperTodayFeedGroup);
        v108 = &unk_219C09000;
        v109 = v237;
        goto LABEL_96;
      }

      __break(1u);
LABEL_100:
      __break(1u);
      return result;
    case 3uLL:
      v453 = v467;
      v250 = swift_projectBox();
      v251 = v452;
      sub_2192DC084(v250, v452, type metadata accessor for LocalNewsTodayFeedGroup);
      v252 = v421;
      v253 = [*(v251 + *(v421 + 20)) identifier];
      sub_219BF5414();

      v254 = v454;
      sub_219BE1424();
      sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v256 = v255;
      v257 = sub_219BDCD44();
      v258 = *(v257 - 8);
      v259 = *(v258 + 80);
      v260 = (v259 + 32) & ~v259;
      v447 = *(v258 + 72);
      v446 = v259;
      v458 = v256;
      v261 = swift_allocObject();
      v443 = xmmword_219C09BA0;
      *(v261 + 16) = xmmword_219C09BA0;
      v262 = *v109;
      v263 = *(v258 + 104);
      v451 = v260;
      LODWORD(v445) = v262;
      v457 = v258 + 104;
      v444 = v263;
      v263(v261 + v260);
      sub_2187DD9B8(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
      v264 = v455;
      sub_219BDCCC4();

      (*(v456 + 1))(v254, v264);
      v265 = *(v251 + *(v252 + 24));
      v266 = v109;
      if (v265 >> 62)
      {
        v267 = sub_219BF7214();
      }

      else
      {
        v267 = *((v265 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v267)
      {
        goto LABEL_71;
      }

      v455 = "gapOnscreenTimer";
      v456 = v257;
      v466 = MEMORY[0x277D84F90];
      result = sub_21870B65C(0, v267 & ~(v267 >> 63), 0);
      if (v267 < 0)
      {
        goto LABEL_100;
      }

      v268 = 0;
      v269 = v466;
      do
      {
        if ((v265 & 0xC000000000000001) != 0)
        {
          v270 = MEMORY[0x21CECE0F0](v268, v265);
        }

        else
        {
          v270 = *(v265 + 8 * v268 + 32);
          swift_unknownObjectRetain();
        }

        v271 = [v270 identifier];
        v272 = sub_219BF5414();
        v274 = v273;
        swift_unknownObjectRelease();

        v466 = v269;
        v276 = *(v269 + 16);
        v275 = *(v269 + 24);
        if (v276 >= v275 >> 1)
        {
          sub_21870B65C((v275 > 1), v276 + 1, 1);
          v269 = v466;
        }

        ++v268;
        *(v269 + 16) = v276 + 1;
        v277 = v269 + 16 * v276;
        *(v277 + 32) = v272;
        *(v277 + 40) = v274;
      }

      while (v267 != v268);
      v257 = v456;
LABEL_71:
      v391 = v448;
      sub_219BDFCF4();
      v392 = v451;
      v393 = swift_allocObject();
      *(v393 + 16) = v443;
      (v444)(v393 + v392, v445, v257);
      sub_2187DD9B8(&unk_280EE8580, 255, MEMORY[0x277D2E068]);
      v394 = v450;
      sub_219BDCCC4();

      (*(v449 + 8))(v391, v394);
      sub_2192CF630(v452, type metadata accessor for LocalNewsTodayFeedGroup);
      v108 = &unk_219C09000;
      v109 = v266;
      goto LABEL_96;
    case 4uLL:
      v453 = v467;
      v307 = swift_projectBox();
      v308 = v428;
      sub_2192DC084(v307, v428, type metadata accessor for TrendingTodayFeedGroup);
      sub_219BED874();
      v309 = sub_219BF1844();
      (*(v458 + 8))(v96, v457);
      if (v309)
      {
        v310 = [v309 identifier];
        sub_219BF5414();

        v311 = v454;
        sub_219BE1424();
        sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v312 = sub_219BDCD44();
        v313 = *(v312 - 8);
        v314 = (*(v313 + 80) + 32) & ~*(v313 + 80);
        v315 = swift_allocObject();
        *(v315 + 16) = xmmword_219C09BA0;
        (*(v313 + 104))(v315 + v314, *v109, v312);
        sub_2187DD9B8(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
        v316 = v455;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v456 + 1))(v311, v316);
        v120 = type metadata accessor for TrendingTodayFeedGroup;
        v121 = v428;
      }

      else
      {
        v120 = type metadata accessor for TrendingTodayFeedGroup;
        v121 = v308;
      }

      goto LABEL_95;
    case 9uLL:
      v453 = v467;
      v191 = swift_projectBox();
      v192 = v429;
      sub_2192DC084(v191, v429, type metadata accessor for TopicTodayFeedGroup);
      sub_219BED874();
      v193 = sub_219BF1844();
      (*(v458 + 8))(v93, v457);
      if (v193)
      {
        v194 = [v193 identifier];
        sub_219BF5414();

        v195 = v454;
        sub_219BE1424();
        sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v196 = sub_219BDCD44();
        v197 = *(v196 - 8);
        v198 = (*(v197 + 80) + 32) & ~*(v197 + 80);
        v199 = swift_allocObject();
        *(v199 + 16) = xmmword_219C09BA0;
        (*(v197 + 104))(v199 + v198, *v109, v196);
        sub_2187DD9B8(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
        v200 = v455;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v456 + 1))(v195, v200);
        v120 = type metadata accessor for TopicTodayFeedGroup;
        v121 = v429;
      }

      else
      {
        v120 = type metadata accessor for TopicTodayFeedGroup;
        v121 = v192;
      }

      goto LABEL_95;
    case 0xBuLL:
      v453 = v467;
      v278 = swift_projectBox();
      v111 = v430;
      sub_2192DC084(v278, v430, type metadata accessor for NewFollowTodayFeedGroup);
      sub_219BED874();
      v279 = sub_219BF1844();
      (*(v458 + 8))(v90, v457);
      if (v279)
      {
        v280 = [v279 identifier];
        sub_219BF5414();

        v281 = v454;
        sub_219BE1424();
        sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v282 = sub_219BDCD44();
        v283 = *(v282 - 8);
        v284 = (*(v283 + 80) + 32) & ~*(v283 + 80);
        v285 = swift_allocObject();
        *(v285 + 16) = xmmword_219C09BA0;
        (*(v283 + 104))(v285 + v284, *v109, v282);
        sub_2187DD9B8(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
        v286 = v455;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v456 + 1))(v281, v286);
        v120 = type metadata accessor for NewFollowTodayFeedGroup;
        v121 = v430;
        goto LABEL_95;
      }

      v395 = type metadata accessor for NewFollowTodayFeedGroup;
      goto LABEL_94;
    case 0xCuLL:
      v171 = swift_projectBox();
      v172 = v453;
      sub_2192DC084(v171, v453, type metadata accessor for SubscriptionTodayFeedGroup);
      sub_219BED874();
      v173 = sub_219BF1844();
      (*(v458 + 8))(v84, v457);
      if (v173)
      {
        v174 = [v173 identifier];
        sub_219BF5414();

        v175 = v454;
        sub_219BE1424();
        sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v176 = sub_219BDCD44();
        v177 = *(v176 - 8);
        v178 = (*(v177 + 80) + 32) & ~*(v177 + 80);
        v179 = swift_allocObject();
        *(v179 + 16) = xmmword_219C09BA0;
        (*(v177 + 104))(v179 + v178, *v109, v176);
        sub_2187DD9B8(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
        v180 = v455;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v456 + 1))(v175, v180);
        v120 = type metadata accessor for SubscriptionTodayFeedGroup;
        v121 = v453;
      }

      else
      {
        v120 = type metadata accessor for SubscriptionTodayFeedGroup;
        v121 = v172;
      }

      goto LABEL_95;
    case 0xEuLL:
      v453 = v467;
      v152 = swift_projectBox();
      v111 = v431;
      sub_2192DC084(v152, v431, type metadata accessor for SpotlightTodayFeedGroup);
      sub_219BED874();
      v153 = sub_219BF1844();
      (*(v458 + 8))(v87, v457);
      if (v153)
      {
        v154 = [v153 identifier];
        sub_219BF5414();

        v155 = v454;
        sub_219BE1424();
        sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v156 = sub_219BDCD44();
        v157 = *(v156 - 8);
        v158 = (*(v157 + 80) + 32) & ~*(v157 + 80);
        v159 = swift_allocObject();
        *(v159 + 16) = xmmword_219C09BA0;
        (*(v157 + 104))(v159 + v158, *v109, v156);
        sub_2187DD9B8(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
        v160 = v455;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v456 + 1))(v155, v160);
        v120 = type metadata accessor for SpotlightTodayFeedGroup;
        v121 = v431;
        goto LABEL_95;
      }

      v395 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_94;
    case 0xFuLL:
      v453 = v467;
      v201 = swift_projectBox();
      v111 = v432;
      sub_2192DC084(v201, v432, type metadata accessor for SuggestionTodayFeedGroup);
      v202 = v405;
      sub_219BED874();
      v203 = sub_219BF1844();
      (*(v458 + 8))(v202, v457);
      if (v203)
      {
        v204 = [v203 identifier];
        sub_219BF5414();

        v205 = v454;
        sub_219BE1424();
        sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v206 = sub_219BDCD44();
        v207 = *(v206 - 8);
        v208 = (*(v207 + 80) + 32) & ~*(v207 + 80);
        v209 = swift_allocObject();
        *(v209 + 16) = xmmword_219C09BA0;
        (*(v207 + 104))(v209 + v208, *v109, v206);
        sub_2187DD9B8(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
        v210 = v455;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v456 + 1))(v205, v210);
        v120 = type metadata accessor for SuggestionTodayFeedGroup;
        v121 = v432;
        goto LABEL_95;
      }

      v395 = type metadata accessor for SuggestionTodayFeedGroup;
      goto LABEL_94;
    case 0x12uLL:
      v453 = v467;
      v347 = swift_projectBox();
      v111 = v433;
      sub_2192DC084(v347, v433, type metadata accessor for SharedWithYouTodayFeedGroup);
      v348 = v406;
      sub_219BED874();
      v349 = sub_219BF1844();
      (*(v458 + 8))(v348, v457);
      if (v349)
      {
        v350 = [v349 identifier];
        sub_219BF5414();

        v351 = v454;
        sub_219BE1424();
        sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v352 = sub_219BDCD44();
        v353 = *(v352 - 8);
        v354 = (*(v353 + 80) + 32) & ~*(v353 + 80);
        v355 = swift_allocObject();
        *(v355 + 16) = xmmword_219C09BA0;
        (*(v353 + 104))(v355 + v354, *v109, v352);
        sub_2187DD9B8(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
        v356 = v455;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v456 + 1))(v351, v356);
        v120 = type metadata accessor for SharedWithYouTodayFeedGroup;
        v121 = v433;
        goto LABEL_95;
      }

      v395 = type metadata accessor for SharedWithYouTodayFeedGroup;
      goto LABEL_94;
    case 0x14uLL:
      v453 = v467;
      v357 = swift_projectBox();
      v111 = v434;
      sub_2192DC084(v357, v434, type metadata accessor for MySportsTodayFeedGroup);
      v358 = v407;
      sub_219BED874();
      v359 = sub_219BF1844();
      (*(v458 + 8))(v358, v457);
      if (v359)
      {
        v360 = [v359 identifier];
        sub_219BF5414();

        v361 = v454;
        sub_219BE1424();
        sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v362 = sub_219BDCD44();
        v363 = *(v362 - 8);
        v364 = (*(v363 + 80) + 32) & ~*(v363 + 80);
        v365 = swift_allocObject();
        *(v365 + 16) = xmmword_219C09BA0;
        (*(v363 + 104))(v365 + v364, *v109, v362);
        sub_2187DD9B8(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
        v366 = v455;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v456 + 1))(v361, v366);
        v120 = type metadata accessor for MySportsTodayFeedGroup;
        v121 = v434;
        goto LABEL_95;
      }

      v395 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_94;
    case 0x15uLL:
      v453 = v467;
      v132 = swift_projectBox();
      v111 = v435;
      sub_2192DC084(v132, v435, type metadata accessor for IntroToSportsTodayFeedGroup);
      v133 = v408;
      sub_219BED874();
      v134 = sub_219BF1844();
      (*(v458 + 8))(v133, v457);
      if (v134)
      {
        v135 = [v134 identifier];
        sub_219BF5414();

        v136 = v454;
        sub_219BE1424();
        sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v137 = sub_219BDCD44();
        v138 = *(v137 - 8);
        v139 = (*(v138 + 80) + 32) & ~*(v138 + 80);
        v140 = swift_allocObject();
        *(v140 + 16) = xmmword_219C09BA0;
        (*(v138 + 104))(v140 + v139, *v109, v137);
        sub_2187DD9B8(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
        v141 = v455;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v456 + 1))(v136, v141);
        v120 = type metadata accessor for IntroToSportsTodayFeedGroup;
        v121 = v435;
        goto LABEL_95;
      }

      v395 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_94;
    case 0x16uLL:
      v453 = v467;
      v142 = swift_projectBox();
      v111 = v443;
      sub_2192DC084(v142, v443, type metadata accessor for ShortcutsTodayFeedGroup);
      v143 = v415;
      sub_219BED874();
      v144 = sub_219BF1844();
      (*(v458 + 8))(v143, v457);
      if (v144)
      {
        v145 = [v144 identifier];
        sub_219BF5414();

        v146 = v454;
        sub_219BE1424();
        sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v147 = sub_219BDCD44();
        v148 = *(v147 - 8);
        v149 = (*(v148 + 80) + 32) & ~*(v148 + 80);
        v150 = swift_allocObject();
        *(v150 + 16) = xmmword_219C09BA0;
        (*(v148 + 104))(v150 + v149, *v109, v147);
        sub_2187DD9B8(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
        v151 = v455;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v456 + 1))(v146, v151);
        v120 = type metadata accessor for ShortcutsTodayFeedGroup;
        v121 = v443;
        goto LABEL_95;
      }

      v395 = type metadata accessor for ShortcutsTodayFeedGroup;
      goto LABEL_94;
    case 0x17uLL:
      v453 = v467;
      v297 = swift_projectBox();
      v111 = v444;
      sub_2192DC084(v297, v444, type metadata accessor for ChannelTodayFeedGroup);
      v298 = v416;
      sub_219BED874();
      v299 = sub_219BF1844();
      (*(v458 + 8))(v298, v457);
      if (v299)
      {
        v300 = [v299 identifier];
        sub_219BF5414();

        v301 = v454;
        sub_219BE1424();
        sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v302 = sub_219BDCD44();
        v303 = *(v302 - 8);
        v304 = (*(v303 + 80) + 32) & ~*(v303 + 80);
        v305 = swift_allocObject();
        *(v305 + 16) = xmmword_219C09BA0;
        (*(v303 + 104))(v305 + v304, *v109, v302);
        sub_2187DD9B8(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
        v306 = v455;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v456 + 1))(v301, v306);
        v120 = type metadata accessor for ChannelTodayFeedGroup;
        v121 = v444;
        goto LABEL_95;
      }

      v395 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_94;
    case 0x18uLL:
      v453 = v467;
      v287 = swift_projectBox();
      v111 = v445;
      sub_2192DC084(v287, v445, type metadata accessor for SavedStoriesTodayFeedGroup);
      v288 = v417;
      sub_219BED874();
      v289 = sub_219BF1844();
      (*(v458 + 8))(v288, v457);
      if (v289)
      {
        v290 = [v289 identifier];
        sub_219BF5414();

        v291 = v454;
        sub_219BE1424();
        sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v292 = sub_219BDCD44();
        v293 = *(v292 - 8);
        v294 = (*(v293 + 80) + 32) & ~*(v293 + 80);
        v295 = swift_allocObject();
        *(v295 + 16) = xmmword_219C09BA0;
        (*(v293 + 104))(v295 + v294, *v109, v292);
        sub_2187DD9B8(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
        v296 = v455;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v456 + 1))(v291, v296);
        v120 = type metadata accessor for SavedStoriesTodayFeedGroup;
        v121 = v445;
        goto LABEL_95;
      }

      v395 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_94;
    case 0x19uLL:
      v453 = v467;
      v122 = swift_projectBox();
      v111 = v446;
      sub_2192DC084(v122, v446, type metadata accessor for ChannelPickerTodayFeedGroup);
      v123 = v418;
      sub_219BED874();
      v124 = sub_219BF1844();
      (*(v458 + 8))(v123, v457);
      if (v124)
      {
        v125 = [v124 identifier];
        sub_219BF5414();

        v126 = v454;
        sub_219BE1424();
        sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v127 = sub_219BDCD44();
        v128 = *(v127 - 8);
        v129 = (*(v128 + 80) + 32) & ~*(v128 + 80);
        v130 = swift_allocObject();
        *(v130 + 16) = xmmword_219C09BA0;
        (*(v128 + 104))(v130 + v129, *v109, v127);
        sub_2187DD9B8(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
        v131 = v455;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v456 + 1))(v126, v131);
        v120 = type metadata accessor for ChannelPickerTodayFeedGroup;
        v121 = v446;
        goto LABEL_95;
      }

      v395 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_94;
    case 0x1AuLL:
      v453 = v467;
      v161 = swift_projectBox();
      v111 = v447;
      sub_2192DC084(v161, v447, type metadata accessor for FoodTodayFeedGroup);
      v162 = v419;
      sub_219BED874();
      v163 = sub_219BF1844();
      (*(v458 + 8))(v162, v457);
      if (v163)
      {
        v164 = [v163 identifier];
        sub_219BF5414();

        v165 = v454;
        sub_219BE1424();
        sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v166 = sub_219BDCD44();
        v167 = *(v166 - 8);
        v168 = (*(v167 + 80) + 32) & ~*(v167 + 80);
        v169 = swift_allocObject();
        *(v169 + 16) = xmmword_219C09BA0;
        (*(v167 + 104))(v169 + v168, *v109, v166);
        sub_2187DD9B8(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
        v170 = v455;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v456 + 1))(v165, v170);
        v120 = type metadata accessor for FoodTodayFeedGroup;
        v121 = v447;
        goto LABEL_95;
      }

      v395 = type metadata accessor for FoodTodayFeedGroup;
      goto LABEL_94;
    case 0x1BuLL:
      v453 = v467;
      v367 = swift_projectBox();
      v111 = v436;
      sub_2192DC084(v367, v436, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      v368 = v409;
      sub_219BED874();
      v369 = sub_219BF1844();
      (*(v458 + 8))(v368, v457);
      if (v369)
      {
        v370 = [v369 identifier];
        sub_219BF5414();

        v371 = v454;
        sub_219BE1424();
        sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v372 = sub_219BDCD44();
        v373 = *(v372 - 8);
        v374 = (*(v373 + 80) + 32) & ~*(v373 + 80);
        v375 = swift_allocObject();
        *(v375 + 16) = xmmword_219C09BA0;
        (*(v373 + 104))(v375 + v374, *v109, v372);
        sub_2187DD9B8(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
        v376 = v455;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v456 + 1))(v371, v376);
        v120 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
        v121 = v436;
        goto LABEL_95;
      }

      v395 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
      goto LABEL_94;
    case 0x1CuLL:
      v453 = v467;
      v377 = swift_projectBox();
      v111 = v437;
      sub_2192DC084(v377, v437, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      v378 = v410;
      sub_219BED874();
      v379 = sub_219BF1844();
      (*(v458 + 8))(v378, v457);
      if (v379)
      {
        v380 = [v379 identifier];
        sub_219BF5414();

        v381 = v454;
        sub_219BE1424();
        sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v382 = sub_219BDCD44();
        v383 = *(v382 - 8);
        v384 = (*(v383 + 80) + 32) & ~*(v383 + 80);
        v385 = swift_allocObject();
        *(v385 + 16) = xmmword_219C09BA0;
        (*(v383 + 104))(v385 + v384, *v109, v382);
        sub_2187DD9B8(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
        v386 = v455;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v456 + 1))(v381, v386);
        v120 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
        v121 = v437;
        goto LABEL_95;
      }

      v395 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      goto LABEL_94;
    case 0x1DuLL:
      v453 = v467;
      v327 = swift_projectBox();
      v111 = v438;
      sub_2192DC084(v327, v438, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      v328 = v411;
      sub_219BED874();
      v329 = sub_219BF1844();
      (*(v458 + 8))(v328, v457);
      if (v329)
      {
        v330 = [v329 identifier];
        sub_219BF5414();

        v331 = v454;
        sub_219BE1424();
        sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v332 = sub_219BDCD44();
        v333 = *(v332 - 8);
        v334 = (*(v333 + 80) + 32) & ~*(v333 + 80);
        v335 = swift_allocObject();
        *(v335 + 16) = xmmword_219C09BA0;
        (*(v333 + 104))(v335 + v334, *v109, v332);
        sub_2187DD9B8(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
        v336 = v455;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v456 + 1))(v331, v336);
        v120 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
        v121 = v438;
        goto LABEL_95;
      }

      v395 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      goto LABEL_94;
    case 0x1EuLL:
      v453 = v467;
      v317 = swift_projectBox();
      v111 = v439;
      sub_2192DC084(v317, v439, type metadata accessor for BestOfBundleMagazineFeedGroup);
      v318 = v412;
      sub_219BED874();
      v319 = sub_219BF1844();
      (*(v458 + 8))(v318, v457);
      if (v319)
      {
        v320 = [v319 identifier];
        sub_219BF5414();

        v321 = v454;
        sub_219BE1424();
        sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v322 = sub_219BDCD44();
        v323 = *(v322 - 8);
        v324 = (*(v323 + 80) + 32) & ~*(v323 + 80);
        v325 = swift_allocObject();
        *(v325 + 16) = xmmword_219C09BA0;
        (*(v323 + 104))(v325 + v324, *v109, v322);
        sub_2187DD9B8(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
        v326 = v455;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v456 + 1))(v321, v326);
        v120 = type metadata accessor for BestOfBundleMagazineFeedGroup;
        v121 = v439;
        goto LABEL_95;
      }

      v395 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      goto LABEL_94;
    case 0x1FuLL:
      v453 = v467;
      v337 = swift_projectBox();
      v111 = v440;
      sub_2192DC084(v337, v440, type metadata accessor for TrendingMagazineFeedGroup);
      v338 = v413;
      sub_219BED874();
      v339 = sub_219BF1844();
      (*(v458 + 8))(v338, v457);
      if (v339)
      {
        v340 = [v339 identifier];
        sub_219BF5414();

        v341 = v454;
        sub_219BE1424();
        sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v342 = sub_219BDCD44();
        v343 = *(v342 - 8);
        v344 = (*(v343 + 80) + 32) & ~*(v343 + 80);
        v345 = swift_allocObject();
        *(v345 + 16) = xmmword_219C09BA0;
        (*(v343 + 104))(v345 + v344, *v109, v342);
        sub_2187DD9B8(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
        v346 = v455;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v456 + 1))(v341, v346);
        v120 = type metadata accessor for TrendingMagazineFeedGroup;
        v121 = v440;
        goto LABEL_95;
      }

      v395 = type metadata accessor for TrendingMagazineFeedGroup;
      goto LABEL_94;
    case 0x20uLL:
      v453 = v467;
      v211 = swift_projectBox();
      v111 = v441;
      sub_2192DC084(v211, v441, type metadata accessor for NewIssueMagazineFeedGroup);
      v212 = v414;
      sub_219BED874();
      v213 = sub_219BF1844();
      (*(v458 + 8))(v212, v457);
      if (v213)
      {
        v214 = [v213 identifier];
        sub_219BF5414();

        v215 = v454;
        sub_219BE1424();
        sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v216 = sub_219BDCD44();
        v217 = *(v216 - 8);
        v218 = (*(v217 + 80) + 32) & ~*(v217 + 80);
        v219 = swift_allocObject();
        *(v219 + 16) = xmmword_219C09BA0;
        (*(v217 + 104))(v219 + v218, *v109, v216);
        sub_2187DD9B8(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
        v220 = v455;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v456 + 1))(v215, v220);
        v120 = type metadata accessor for NewIssueMagazineFeedGroup;
        v121 = v441;
      }

      else
      {
        v395 = type metadata accessor for NewIssueMagazineFeedGroup;
LABEL_94:
        v120 = v395;
        v121 = v111;
      }

LABEL_95:
      sub_2192CF630(v121, v120);
      v108 = &unk_219C09000;
LABEL_96:
      v396 = v108;

      sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v397 = sub_219BDCD44();
      v398 = *(v397 - 8);
      v399 = (*(v398 + 80) + 32) & ~*(v398 + 80);
      v400 = swift_allocObject();
      *(v400 + 16) = v396[186];
      (*(v398 + 104))(v400 + v399, *v109, v397);
      sub_219BE16D4();
      sub_2187DD9B8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
      sub_219BDCCC4();

      sub_219BE0254();
      v401 = v461;
      sub_219BE8F14();
      sub_2187DD9B8(&qword_280EE8470, 255, MEMORY[0x277D2E3F8]);
      sub_219BDCC64();
      v402 = v464;
      v403 = *(v463 + 8);
      v403(v401, v464);
      sub_219BE8EE4();
      sub_219BDCC74();
      return (v403)(v401, v402);
    case 0x21uLL:
      sub_2186EBC7C();
      v181 = swift_projectBox();
      v182 = v442;
      sub_2192DC084(v181, v442, type metadata accessor for MyMagazinesMagazineFeedGroup);
      if (*&v182[*(v426 + 56)])
      {
        v183 = [swift_unknownObjectRetain() identifier];
        v453 = v107;
        v184 = v183;
        sub_219BF5414();

        v185 = v454;
        sub_219BE1424();
        sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v186 = sub_219BDCD44();
        v187 = *(v186 - 8);
        v188 = (*(v187 + 80) + 32) & ~*(v187 + 80);
        v189 = swift_allocObject();
        *(v189 + 16) = xmmword_219C09BA0;
        (*(v187 + 104))(v189 + v188, *v109, v186);
        sub_2187DD9B8(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
        v190 = v455;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v456 + 1))(v185, v190);
        v120 = type metadata accessor for MyMagazinesMagazineFeedGroup;
        v121 = v442;
      }

      else
      {
        v120 = type metadata accessor for MyMagazinesMagazineFeedGroup;
        v121 = v182;
      }

      goto LABEL_95;
    default:
      goto LABEL_96;
  }
}

uint64_t sub_2192B2CB0(uint64_t a1, uint64_t a2)
{
  v70 = a2;
  v3 = sub_219BF0AC4();
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x28223BE20](v3);
  v64 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EFC0C();
  v68 = v5;
  v63 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v67 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A127E0(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF1094();
  v60 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAC68();
  v61 = *(v13 - 8);
  v62 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TodayRouteModel();
  MEMORY[0x28223BE20](v16);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_219BDD0A4();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v20 = (&v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for TodayModel(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218853400();
  v69 = a1;
  sub_219BE5FC4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2186EAA78(0, &qword_280ED7560, type metadata accessor for TodayGapLocation, MEMORY[0x277D333C8]);
      v45 = *(v44 + 48);
      v46 = sub_219BF1584();
      (*(*(v46 - 8) + 8))(&v23[v45], v46);
      v47 = type metadata accessor for TodayGapLocation;
      goto LABEL_20;
    case 2u:
      sub_2192CF630(v23, type metadata accessor for TodayModel);
      goto LABEL_9;
    case 3u:
      v37 = v61;
      v38 = v23;
      v39 = v62;
      (*(v61 + 32))(v15, v38, v62);
      sub_219BF07D4();
      sub_219BF1074();
      (*(v60 + 8))(v12, v10);
      v40 = sub_219BF0F34();
      v41 = (*(*(v40 - 8) + 48))(v9, 1, v40);
      sub_2192CF630(v9, sub_218A127E0);
      if (v41 != 1)
      {
        v42 = v71;
        *v20 = 0x656E696C64616568;
        v20[1] = 0xE800000000000000;
        v43 = v72;
        (*(v42 + 104))(v20, *MEMORY[0x277CEAE48], v72);
        sub_219BDD204();
        (*(v42 + 8))(v20, v43);
      }

      return (*(v37 + 8))(v15, v39);
    case 4u:
    case 5u:
    case 8u:
    case 9u:
    case 0xEu:
      goto LABEL_19;
    case 6u:
      sub_2186EAA78(0, &qword_280E90E70, sub_2186EAD48, sub_2186EAB88);
      v30 = *(v29 + 48);
      sub_2186EAB88();
      (*(*(v31 - 8) + 8))(&v23[v30], v31);
      sub_2186EAD48();
      (*(*(v32 - 8) + 8))(v23, v32);
LABEL_9:
      v33 = v71;
      *v20 = 0x656E696C64616568;
      v20[1] = 0xE800000000000000;
      v34 = v72;
      (*(v33 + 104))(v20, *MEMORY[0x277CEAE48], v72);
      sub_219BDD204();
      (*(v33 + 8))(v20, v34);
      sub_2192DC084(v70, v18, type metadata accessor for TodayRouteModel);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      result = sub_2192CF630(v18, type metadata accessor for TodayRouteModel);
      if (EnumCaseMultiPayload == 3)
      {
        return sub_2192B365C();
      }

      return result;
    case 7u:
      v27 = 0x74496D6F74737563;
      v28 = 0xEA00000000006D65;
      goto LABEL_18;
    case 0xAu:
      v27 = 0x6575737369;
      v28 = 0xE500000000000000;
      goto LABEL_18;
    case 0xBu:
      v27 = 6775156;
      v28 = 0xE300000000000000;
      goto LABEL_18;
    case 0xCu:
      v48 = v63 + 32;
      v50 = v67;
      v49 = v68;
      (*(v63 + 32))(v67, v23, v68);
      v51 = v64;
      sub_219BF07D4();
      v52 = sub_219BF0A34();
      (*(v65 + 8))(v51, v66);
      v53 = (v71 + 104);
      v54 = (v71 + 8);
      if (v52)
      {
        v55 = 0x6554656C7A7A7570;
        v56 = 0xEC00000072657361;
      }

      else
      {
        v55 = 0x656C7A7A7570;
        v56 = 0xE600000000000000;
      }

      *v20 = v55;
      v20[1] = v56;
      v59 = v72;
      (*v53)(v20, *MEMORY[0x277CEAE48], v72);
      sub_219BDD204();
      (*v54)(v20, v59);
      return (*(v48 - 24))(v50, v49);
    case 0xDu:
      v27 = 0x7954656C7A7A7570;
      v28 = 0xEA00000000006570;
      goto LABEL_18;
    case 0xFu:
      v27 = 0x657069636572;
      v28 = 0xE600000000000000;
LABEL_18:
      *v20 = v27;
      v20[1] = v28;
      v57 = v71;
      v58 = v72;
      (*(v71 + 104))(v20, *MEMORY[0x277CEAE48], v72);
      sub_219BDD204();
      (*(v57 + 8))(v20, v58);
LABEL_19:
      v47 = type metadata accessor for TodayModel;
LABEL_20:
      v25 = v47;
      v26 = v23;
      break;
    default:

      sub_2186EA920();
      v25 = type metadata accessor for TodayGapLocation;
      v26 = &v23[*(v24 + 48)];
      break;
  }

  return sub_2192CF630(v26, v25);
}

uint64_t sub_2192B365C()
{
  sub_2192CF5FC(0);
  MEMORY[0x28223BE20](v1 - 8);
  v55 = v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D8C(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v6 - 8);
  v57 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE16D4();
  v9 = *(v8 - 8);
  v58 = v8;
  v59 = v9;
  MEMORY[0x28223BE20](v8);
  v54 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188118D4(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = v52 - v17;
  sub_21880B928();
  v20 = v19;
  v61 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v0;
  v62[0] = v0[5];
  sub_2187DD900();
  sub_2187DD9B8(&qword_280EE5530, 255, sub_2187DD900);
  v23 = v20;
  sub_219BE7B94();
  sub_218853400();
  sub_219BE5F84();
  sub_219BEB244();

  v60 = v16;
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    (*(v61 + 8))(v22, v20);
    v24 = sub_2188118D4;
    v25 = v13;
  }

  else
  {
    (*(v60 + 32))(v18, v13, v15);
    sub_219BE6934();
    sub_21968BE24(v62[0], v5);

    v26 = sub_219BE16E4();
    v27 = (*(*(v26 - 8) + 48))(v5, 1, v26);
    sub_2192CF630(v5, sub_218B58D8C);
    v28 = v18;
    if (v27 == 1 || (v29 = v56, sub_218718690((v56 + 15), v62), v52[1] = v62[4], v53 = __swift_project_boxed_opaque_existential_1(v62, v62[3]), sub_219BE6944(), type metadata accessor for TodayModel(0), sub_2186EB3E8(), v30 = v18, sub_2187DD9B8(&qword_280EDF9E0, 255, type metadata accessor for TodayModel), v31 = sub_219BF00E4(), , __swift_destroy_boxed_opaque_existential_1(v62), v31 == sub_219BDAF14()))
    {
      v32 = v57;
      (*(v59 + 56))(v57, 1, 1, v58);
    }

    else
    {
      v53 = sub_219BE6944();
      v35 = v34;
      v36 = sub_218827310();
      if ((~v36 & 0xF000000000000007) != 0)
      {
        type metadata accessor for TodayFeedServiceConfig();
        sub_2187DD9B8(&qword_280EC6590, 255, type metadata accessor for TodayFeedServiceConfig);
        v37 = sub_219BEE774();
        sub_21885AB78(v36);
        v36 = v37;
      }

      v38 = v55;
      sub_2192CE75C(v53, v35, v36, v55);
      sub_21885AB78(v36);

      v32 = v57;
      v28 = v30;
      sub_219689464(v31, v38, 0, v57);
      sub_2192CF630(v38, sub_2192CF5FC);
      v40 = v58;
      v39 = v59;
      if ((*(v59 + 48))(v32, 1, v58) != 1)
      {
        v41 = v54;
        (*(v39 + 32))(v54, v32, v40);
        v42 = v29[4];
        sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v43 = sub_219BDCD44();
        v57 = v28;
        v44 = v43;
        v45 = *(v43 - 8);
        v46 = *(v45 + 80);
        v55 = v23;
        v47 = v29;
        v48 = (v46 + 32) & ~v46;
        v49 = swift_allocObject();
        *(v49 + 16) = xmmword_219C09BA0;
        (*(v45 + 104))(v49 + v48, *MEMORY[0x277CEAD18], v44);
        sub_2187DD9B8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
        sub_219BDD1F4();

        v50 = v47[34];
        v51 = v47[35];
        __swift_project_boxed_opaque_existential_1(v47 + 31, v50);
        (*(v51 + 8))(v42, v50, v51);
        (*(v59 + 8))(v41, v40);
        (*(v60 + 8))(v57, v15);
        return (*(v61 + 8))(v22, v55);
      }
    }

    (*(v60 + 8))(v28, v15);
    (*(v61 + 8))(v22, v23);
    v24 = sub_218B58D58;
    v25 = v32;
  }

  return sub_2192CF630(v25, v24);
}

uint64_t sub_2192B3F88()
{
  v0 = sub_219BDBD34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDF6C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DAE5F8(v7);
  sub_2187DD9B8(&unk_280EE86D0, 255, MEMORY[0x277D2DCB8]);
  sub_219BDCCC4();
  (*(v5 + 8))(v7, v4);
  sub_219BDF4E4();
  sub_219BDB134();
  sub_2187DD9B8(&unk_280EE8770, 255, MEMORY[0x277D2DAF8]);
  sub_219BDCC74();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2192B41DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_2192DCF20(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    if (qword_280EE38E8 != -1)
    {
      swift_once();
    }

    v11 = sub_219BDB184();
    (*(*(v11 - 8) + 16))(v9, a2, v11);
    v12 = type metadata accessor for FeedPerformanceCommandContext();
    v13 = v12[5];
    sub_21880B928();
    (*(*(v14 - 8) + 16))(&v9[v13], a3, v14);
    v15 = v12[6];
    v16 = type metadata accessor for TodayFeedGroup();
    (*(*(v16 - 8) + 56))(&v9[v15], 1, 1, v16);
    v9[v12[7]] = a4 & 1;
    (*(*(v12 - 1) + 56))(v9, 0, 1, v12);
    sub_219BE7094();
    sub_2192CF630(v9, sub_2192DCF20);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2192B445C()
{
  v0 = sub_219BE1594();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getErrorValue();
  sub_219BF7A14();
  sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v4 = sub_219BDCD44();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  (*(v5 + 104))(v7 + v6, *MEMORY[0x277CEAD18], v4);
  sub_2187DD9B8(&qword_280EE7FC0, 255, MEMORY[0x277D2F440]);
  sub_219BDCCC4();

  (*(v1 + 8))(v3, v0);
  sub_219BE0654();
  sub_2187DD9B8(&qword_280EE8390, 255, MEMORY[0x277D2E688]);
  return sub_219BDCC34();
}

uint64_t sub_2192B470C()
{
  v0 = sub_219BDBD34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDF6D4();
  sub_219BDBD24();
  sub_2187DD9B8(&qword_27CC18750, 255, MEMORY[0x277D2DCC8]);
  sub_219BDCC34();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2192B4834(uint64_t a1)
{
  v65 = a1;
  v66 = sub_219BDBD34();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v50 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_219BEFE54();
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x28223BE20](v2);
  v52 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE10F4();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v59 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE0EF4();
  v61 = *(v6 - 8);
  v62 = v6;
  MEMORY[0x28223BE20](v6);
  v60 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_219BEF2F4();
  v55 = *(v71 - 8);
  v8 = MEMORY[0x28223BE20](v71);
  v51 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - v10;
  v12 = sub_219BEDFF4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192CF5FC(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DCF54(0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v56 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v50 - v22;
  v72 = sub_21960B75C();
  v25 = v24;
  sub_219BF6F84();
  v26 = sub_219BEDFD4();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v18, 1, v26) == 1)
  {
    sub_2192CF630(v18, sub_2192CF5FC);
    (*(v13 + 56))(v23, 1, 1, v12);
    v28 = v23;
    v29 = v66;
    v30 = v12;
LABEL_14:
    v41 = v64;
    v42 = v59;
    if (v25)
    {
LABEL_18:

      v43 = MEMORY[0x277D2EF20];
    }

    else
    {
      v43 = MEMORY[0x277D2EF28];
    }

    (*(v57 + 104))(v42, *v43, v58);
    v44 = v56;
    sub_2192DC084(v28, v56, sub_2192DCF54);
    if ((*(v13 + 48))(v44, 1, v30) == 1)
    {
      sub_2192CF630(v44, sub_2192DCF54);
    }

    else
    {
      v45 = v51;
      sub_219BEDFE4();
      (*(v13 + 8))(v44, v30);
      v46 = v52;
      sub_219BEF2E4();
      (*(v55 + 8))(v45, v71);
      sub_219BEFE44();
      (*(v53 + 8))(v46, v54);
    }

    v47 = v60;
    sub_219BE0EE4();
    sub_2187DD9B8(&qword_27CC18760, 255, MEMORY[0x277D2EDC8]);
    v48 = v62;
    sub_219BDCCC4();
    (*(v61 + 8))(v47, v48);
    sub_219BE0FF4();
    v49 = v63;
    sub_219BDBD24();
    sub_2187DD9B8(&qword_27CC18768, 255, MEMORY[0x277D2EE48]);
    sub_219BDCC34();
    (*(v41 + 8))(v49, v29);
    return sub_2192CF630(v28, sub_2192DCF54);
  }

  v70 = v13;
  v50 = v23;
  v31 = sub_219BEDFC4();
  result = (*(v27 + 8))(v18, v26);
  v30 = v12;
  v69 = *(v31 + 16);
  if (!v69)
  {
LABEL_13:

    v13 = v70;
    v28 = v50;
    (*(v70 + 56))(v50, 1, 1, v30);
    v29 = v66;
    goto LABEL_14;
  }

  v33 = 0;
  v68 = v31 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
  v67 = v70 + 16;
  v34 = (v55 + 8);
  v35 = (v70 + 8);
  while (v33 < *(v31 + 16))
  {
    v36 = v30;
    (*(v70 + 16))(v15, v68 + *(v70 + 72) * v33, v30);
    sub_219BEDFE4();
    v37 = sub_219BEF2D4();
    v39 = v38;
    (*v34)(v11, v71);
    if (v25)
    {
      if (v37 == v72 && v25 == v39)
      {

LABEL_17:

        v30 = v36;
        v13 = v70;
        v28 = v50;
        (*(v70 + 32))(v50, v15, v36);
        (*(v13 + 56))(v28, 0, 1, v36);
        v29 = v66;
        v41 = v64;
        v42 = v59;
        goto LABEL_18;
      }

      v40 = sub_219BF78F4();

      if (v40)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    ++v33;
    v30 = v36;
    result = (*v35)(v15, v36);
    if (v69 == v33)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2192B518C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = a3;
  v93 = a2;
  v101 = a1;
  v4 = type metadata accessor for TodayFeedGroup();
  v86 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v78 = v5;
  v87 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDB184();
  v7 = *(v6 - 8);
  v95 = v6;
  v96 = v7;
  MEMORY[0x28223BE20](v6);
  v92 = v8;
  v94 = v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192CF5FC(0);
  v82 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v90 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v11;
  MEMORY[0x28223BE20](v10);
  v88 = v75 - v12;
  sub_218B58D8C(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v16 - 8);
  v97 = v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BE16D4();
  v99 = *(v18 - 8);
  v100 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v89 = v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v20;
  MEMORY[0x28223BE20](v19);
  v91 = v75 - v21;
  sub_2188118D4(0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v26 = v25;
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v29 = v75 - v28;
  sub_21880B928();
  v31 = v30;
  v32 = *(v30 - 8);
  v33 = MEMORY[0x28223BE20](v30);
  v81 = v75 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v34;
  MEMORY[0x28223BE20](v33);
  v36 = v75 - v35;
  v98 = v3;
  v102[0] = *(v3 + 40);
  sub_2187DD900();
  sub_2187DD9B8(&qword_280EE5530, 255, sub_2187DD900);
  sub_219BE7B94();
  sub_218829720();
  sub_219BEB354();
  v37 = v27;

  if ((*(v27 + 48))(v24, 1, v26) == 1)
  {
    (*(v32 + 8))(v36, v31);
    v38 = sub_2188118D4;
    v39 = v24;
  }

  else
  {
    v85 = v32;
    v77 = v31;
    (*(v27 + 32))(v29, v24, v26);
    sub_219BE6934();
    sub_21968BE24(v102[0], v15);

    v40 = sub_219BE16E4();
    v41 = (*(*(v40 - 8) + 48))(v15, 1, v40);
    sub_2192CF630(v15, sub_218B58D8C);
    v42 = v26;
    v43 = v29;
    if (v41 == 1 || (sub_218718690(v98 + 120, v102), v76 = __swift_project_boxed_opaque_existential_1(v102, v102[3]), sub_219BE6944(), type metadata accessor for TodayModel(0), sub_2186EB3E8(), sub_2187DD9B8(&qword_280EDF9E0, 255, type metadata accessor for TodayModel), v37 = v27, v44 = sub_219BF00E4(), , __swift_destroy_boxed_opaque_existential_1(v102), v44 == sub_219BDAF14()))
    {
      v45 = v97;
      (*(v99 + 56))(v97, 1, 1, v100);
      v46 = v85;
    }

    else
    {
      v48 = sub_219BE6944();
      v76 = v49;
      v50 = sub_218827310();
      if ((~v50 & 0xF000000000000007) != 0)
      {
        type metadata accessor for TodayFeedServiceConfig();
        sub_2187DD9B8(&qword_280EC6590, 255, type metadata accessor for TodayFeedServiceConfig);
        v51 = sub_219BEE774();
        sub_21885AB78(v50);
        v50 = v51;
      }

      v46 = v85;
      v52 = v88;
      sub_2192CE75C(v48, v76, v50, v88);
      sub_21885AB78(v50);

      v45 = v97;
      sub_219689464(v44, v52, 0, v97);
      sub_2192CF630(v52, sub_2192CF5FC);
      v54 = v99;
      v53 = v100;
      if ((*(v99 + 48))(v45, 1, v100) != 1)
      {
        v75[0] = *(v54 + 32);
        v55 = v91;
        (v75[0])(v91, v45, v53);
        v75[1] = *(v98 + 32);
        (*(v54 + 16))(v89, v55, v53);
        sub_2192DC084(v84, v90, sub_2192CF5FC);
        v88 = v37;
        v56 = v96;
        v76 = *(v96 + 16);
        v76(v94, v93, v95);
        v57 = (*(v54 + 80) + 16) & ~*(v54 + 80);
        v58 = (v79 + *(v82 + 80) + v57) & ~*(v82 + 80);
        v59 = *(v56 + 80);
        v60 = (v83 + v59 + v58) & ~v59;
        v61 = swift_allocObject();
        v97 = v36;
        v84 = v43;
        v62 = v61;
        (v75[0])(v61 + v57, v89, v53);
        sub_2192DCD38(v90, v62 + v58, sub_2192CF5FC);
        v63 = v95;
        v64 = *(v96 + 32);
        v96 += 32;
        v89 = v64;
        v90 = v42;
        v65 = v94;
        (v64)(v62 + v60, v94, v95);
        sub_219BDD264();

        v66 = swift_allocObject();
        *(v66 + 24) = *(v98 + 392);
        swift_unknownObjectWeakInit();
        v76(v65, v93, v63);
        v67 = v85;
        v68 = v81;
        v69 = v77;
        (*(v85 + 16))(v81, v97, v77);
        v70 = v87;
        sub_2192DC084(v101, v87, type metadata accessor for TodayFeedGroup);
        v71 = (v59 + 24) & ~v59;
        v72 = (v71 + v92 + *(v67 + 80)) & ~*(v67 + 80);
        v73 = (v80 + *(v86 + 80) + v72) & ~*(v86 + 80);
        v74 = swift_allocObject();
        *(v74 + 16) = v66;
        (v89)(v74 + v71, v94, v95);
        (*(v67 + 32))(v74 + v72, v68, v69);
        sub_2192DCD38(v70, v74 + v73, type metadata accessor for TodayFeedGroup);

        sub_219BE3494();

        (*(v99 + 8))(v91, v100);
        (*(v88 + 8))(v84, v90);
        (*(v67 + 8))(v97, v69);
      }
    }

    (*(v37 + 8))(v43, v42);
    (*(v46 + 8))(v36, v77);
    v38 = sub_218B58D58;
    v39 = v45;
  }

  return sub_2192CF630(v39, v38);
}

uint64_t sub_2192B5E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a4;
  v43 = a2;
  v44 = a3;
  v48 = a1;
  v47 = sub_219BDBD34();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE0644();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x28223BE20](v6);
  v39 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192CF5FC(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BEDFD4();
  v42 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v38 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v14 = v13;
  v15 = sub_219BDCD44();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v35 = *(v16 + 72);
  v37 = v14;
  v18 = swift_allocObject();
  v34 = xmmword_219C09BA0;
  *(v18 + 16) = xmmword_219C09BA0;
  v19 = *(v16 + 104);
  v33 = *MEMORY[0x277CEAD18];
  v32 = v19;
  v19(v18 + v17);
  sub_219BE16D4();
  sub_2187DD9B8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
  v36 = "gapOnscreenTimer";
  sub_219BDCCC4();

  sub_2192DC084(v44, v10, sub_2192CF5FC);
  v20 = v42;
  v21 = v11;
  if ((*(v42 + 48))(v10, 1, v11) == 1)
  {
    sub_2192CF630(v10, sub_2192CF5FC);
  }

  else
  {
    v22 = *(v20 + 32);
    v23 = v38;
    v31 = v21;
    v22(v38, v10, v21);
    v24 = v39;
    sub_219BEDFB4();
    v25 = swift_allocObject();
    *(v25 + 16) = v34;
    v32(v25 + v17, v33, v15);
    sub_2187DD9B8(&qword_280EE8398, 255, MEMORY[0x277D2E678]);
    v26 = v41;
    sub_219BDCCC4();

    (*(v40 + 8))(v24, v26);
    (*(v20 + 8))(v23, v31);
  }

  sub_219BE07B4();
  sub_219BDB164();
  sub_2187DD9B8(&qword_280EE82F0, 255, MEMORY[0x277D2E810]);
  sub_219BDCC64();
  v27 = *(v45 + 8);
  v28 = v47;
  v27(v5, v47);
  sub_219BDB134();
  sub_219BDCC74();
  return (v27)(v5, v28);
}

uint64_t sub_2192B63F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2192DCF20(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    if (qword_280EE38D0 != -1)
    {
      swift_once();
    }

    v11 = sub_219BDB184();
    (*(*(v11 - 8) + 16))(v9, a2, v11);
    v12 = type metadata accessor for FeedPerformanceCommandContext();
    v13 = v12[5];
    sub_21880B928();
    (*(*(v14 - 8) + 16))(&v9[v13], a3, v14);
    v15 = v12[6];
    sub_2192DC084(a4, &v9[v15], type metadata accessor for TodayFeedGroup);
    v16 = type metadata accessor for TodayFeedGroup();
    (*(*(v16 - 8) + 56))(&v9[v15], 0, 1, v16);
    v9[v12[7]] = 0;
    (*(*(v12 - 1) + 56))(v9, 0, 1, v12);
    sub_219BE7094();
    sub_2192CF630(v9, sub_2192DCF20);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2192B6694(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3)
{
  v54 = a2;
  v63 = a3;
  sub_2192CF5FC(0);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D8C(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v8 - 8);
  v56 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE16D4();
  v58 = *(v10 - 8);
  v59 = v10;
  v11 = *(v58 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v52 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v53 = v45 - v13;
  v60 = sub_219BDBD34();
  v57 = *(v60 - 8);
  v14 = *(v57 + 64);
  v15 = MEMORY[0x28223BE20](v60);
  v51 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v62 = v45 - v16;
  v17 = sub_219BEE024();
  v61 = *(v17 - 8);
  v18 = *(v61 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v49 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v45 - v20;
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  sub_219BE6934();
  v22 = (v64[0] >> 58) & 0x3C | (LODWORD(v64[0]) >> 1) & 3;

  if (v22 > 0x13 || ((1 << v22) & 0x82001) == 0)
  {
    v24 = v61;
    v25 = *(v61 + 16);
    v48 = v61 + 16;
    v47 = v25;
    v25(v21, v63, v17);
    result = (*(v24 + 88))(v21, v17);
    if (result != *MEMORY[0x277D31F20] && result != *MEMORY[0x277D31F18])
    {
      if (result == *MEMORY[0x277D31F28])
      {
        return result;
      }

      sub_219BF7514();
      __break(1u);
    }

    sub_219BDBD24();
    sub_219BE6934();
    sub_21968BE24(v64[0], v7);

    v26 = sub_219BE16E4();
    v27 = (*(*(v26 - 8) + 48))(v7, 1, v26);
    sub_2192CF630(v7, sub_218B58D8C);
    if (v27 == 1 || (sub_218718690(v55 + 120, v64), v46 = v64[4], __swift_project_boxed_opaque_existential_1(v64, v64[3]), v45[1] = sub_219BE6944(), v45[0] = type metadata accessor for TodayModel(0), sub_2186EB3E8(), sub_2187DD9B8(&qword_280EDF9E0, 255, type metadata accessor for TodayModel), v28 = sub_219BF00E4(), , __swift_destroy_boxed_opaque_existential_1(v64), v28 == sub_219BDAF14()))
    {
      v29 = v56;
      (*(v58 + 56))(v56, 1, 1, v59);
    }

    else
    {
      v46 = sub_219BE6944();
      v31 = v30;
      v32 = sub_218827310();
      if ((~v32 & 0xF000000000000007) != 0)
      {
        type metadata accessor for TodayFeedServiceConfig();
        sub_2187DD9B8(&qword_280EC6590, 255, type metadata accessor for TodayFeedServiceConfig);
        v33 = sub_219BEE774();
        sub_21885AB78(v32);
        v32 = v33;
      }

      v34 = v50;
      sub_2192CE75C(v46, v31, v32, v50);
      sub_21885AB78(v32);

      v29 = v56;
      sub_219689464(v28, v34, 0, v56);
      sub_2192CF630(v34, sub_2192CF5FC);
      v35 = v58;
      v36 = v59;
      if ((*(v58 + 48))(v29, 1, v59) != 1)
      {
        v54 = *(v35 + 32);
        v37 = v53;
        v54(v53, v29, v36);
        v56 = *(v55 + 32);
        (*(v35 + 16))(v52, v37, v36);
        v47(v49, v63, v17);
        v38 = v57;
        (*(v57 + 16))(v51, v62, v60);
        v39 = (*(v35 + 80) + 16) & ~*(v35 + 80);
        v40 = v61;
        v41 = (v11 + *(v61 + 80) + v39) & ~*(v61 + 80);
        v42 = (v18 + *(v38 + 80) + v41) & ~*(v38 + 80);
        v43 = swift_allocObject();
        v54((v43 + v39), v52, v36);
        (*(v40 + 32))(v43 + v41, v49, v17);
        v44 = v60;
        (*(v38 + 32))(v43 + v42, v51, v60);
        sub_219BDD264();

        (*(v35 + 8))(v53, v36);
        return (*(v38 + 8))(v62, v44);
      }
    }

    (*(v57 + 8))(v62, v60);
    return sub_2192CF630(v29, sub_218B58D58);
  }

  return result;
}

uint64_t sub_2192B6F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v36 = a2;
  v37 = a3;
  v5 = sub_219BDBD34();
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v39 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v35 = &v27 - v8;
  v9 = sub_219BDD2D4();
  v10 = *(v9 - 8);
  v43 = v9;
  v44 = v10;
  MEMORY[0x28223BE20](v9);
  v38 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE0424();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_219BE0414();
  v34 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v33 = v16;
  v30 = sub_219BDCD44();
  v17 = *(v30 - 8);
  v32 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v31 = xmmword_219C09BA0;
  *(v19 + 16) = xmmword_219C09BA0;
  v29 = *MEMORY[0x277CEAD18];
  v28 = *(v17 + 104);
  v28(v19 + v18);
  sub_219BE16D4();
  sub_2187DD9B8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
  v27 = a1;
  sub_219BDCCC4();

  sub_219BEE014();
  sub_219BE0404();
  sub_2187DD9B8(&unk_280EE8410, 255, MEMORY[0x277D2E520]);
  sub_219BDCCC4();
  (*(v34 + 8))(v15, v13);
  v20 = v41;
  v21 = *(v40 + 16);
  v22 = v42;
  v21(v35, v42, v41);
  v21(v39, v22, v20);
  v23 = v38;
  sub_219BDD2B4();
  v24 = swift_allocObject();
  *(v24 + 16) = v31;
  (v28)(v24 + v18, v29, v30);
  sub_2187DD9B8(&unk_280EE8ED0, 255, MEMORY[0x277CEAED0]);
  v25 = v43;
  sub_219BDCCC4();

  (*(v44 + 8))(v23, v25);
  sub_219BE07C4();
  sub_2187DD9B8(&qword_280EE82E8, 255, MEMORY[0x277D2E820]);
  return sub_219BDCC74();
}

uint64_t sub_2192B7548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v103 = a3;
  v116 = a1;
  v78 = sub_219BDF3D4();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v108 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_219BDF3C4();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21922CB44();
  MEMORY[0x28223BE20](v6 - 8);
  v106 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE3C04();
  v109 = *(v8 - 8);
  v110 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v76 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v107 = &v72 - v11;
  v75 = sub_219BE1314();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DC364(0);
  MEMORY[0x28223BE20](v13 - 8);
  v96 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_219BE1324();
  v86 = *(v87 - 8);
  v15 = MEMORY[0x28223BE20](v87);
  v72 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v102 = &v72 - v17;
  v93 = sub_219BDBD34();
  v92 = *(v93 - 8);
  v18 = MEMORY[0x28223BE20](v93);
  v90 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v89 = &v72 - v20;
  v94 = sub_219BDD2D4();
  v95 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v88 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BDF134();
  MEMORY[0x28223BE20](v22 - 8);
  v101 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_219BDF824();
  v85 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_219BE06D4();
  v100 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v91 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for EngagementPresentation();
  v27 = *(v26 + 20);
  v111 = v26;
  v115 = a2;
  v28 = (a2 + v27);
  v29 = *v28;
  v30 = v28[1];

  sub_219BE34F4();

  v104 = v30;
  v105 = v29;
  sub_219BE06C4();
  sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v114 = v31;
  v32 = sub_219BDCD44();
  v33 = *(v32 - 8);
  v113 = *(v33 + 72);
  v34 = *(v33 + 80);
  v35 = (v34 + 32) & ~v34;
  v36 = swift_allocObject();
  v112 = xmmword_219C09BA0;
  *(v36 + 16) = xmmword_219C09BA0;
  v37 = *MEMORY[0x277CEAD18];
  v38 = *(v33 + 104);
  v38(v36 + v35, v37, v32);
  v82 = "gapOnscreenTimer";
  sub_2187DD9B8(&unk_280EE8350, 255, MEMORY[0x277D2E6F8]);
  v39 = v91;
  v40 = v99;
  sub_219BDCCC4();

  (*(v100 + 8))(v39, v40);
  sub_219756890(v101);
  v41 = v83;
  sub_219BDF814();
  v99 = v34;
  v42 = swift_allocObject();
  *(v42 + 16) = v112;
  v100 = v35;
  v98 = v37;
  v101 = v32;
  v91 = (v33 + 104);
  v97 = v38;
  v38(v42 + v35, v37, v32);
  sub_2187DD9B8(&unk_280EE8650, 255, MEMORY[0x277D2DD98]);
  v43 = v84;
  sub_219BDCCC4();

  (*(v85 + 8))(v41, v43);
  v44 = *(v92 + 16);
  v45 = v103;
  v46 = v93;
  v44(v89, v103, v93);
  v44(v90, v45, v46);
  v47 = v96;
  v48 = v88;
  sub_219BDD2B4();
  sub_2187DD9B8(&unk_280EE8ED0, 255, MEMORY[0x277CEAED0]);
  v49 = v94;
  sub_219BDCCC4();
  (*(v95 + 8))(v48, v49);
  sub_21926F2DC(v47);
  v50 = v86;
  v51 = v87;
  if ((*(v86 + 48))(v47, 1) == 1)
  {
    sub_2192CF630(v47, sub_2192DC364);
  }

  else
  {
    v52 = v102;
    (*(v50 + 32))(v102, v47, v51);
    (*(v50 + 16))(v72, v52, v51);
    v53 = v73;
    sub_219BE1304();
    v54 = v100;
    v55 = swift_allocObject();
    *(v55 + 16) = v112;
    v97(v55 + v54, v98, v101);
    sub_2187DD9B8(&qword_280EE8078, 255, MEMORY[0x277D2F150]);
    v56 = v75;
    sub_219BDCCC4();

    (*(v74 + 8))(v53, v56);
    (*(v50 + 8))(v102, v51);
  }

  v57 = v106;
  sub_2192DC084(v115 + *(v111 + 32), v106, sub_21922CB44);
  v59 = v109;
  v58 = v110;
  v60 = (*(v109 + 48))(v57, 1, v110);
  v61 = v108;
  if (v60 == 1)
  {
    sub_2192CF630(v57, sub_21922CB44);
  }

  else
  {
    v62 = v107;
    (*(v59 + 32))(v107, v57, v58);
    v63 = v76;
    (*(v59 + 16))(v76, v62, v58);
    v64 = (*(v59 + 88))(v63, v58);
    if (v64 == *MEMORY[0x277D318F0])
    {
      (*(v77 + 104))(v61, *MEMORY[0x277D2DA48], v78);
      v65 = v101;
      v66 = v100;
    }

    else
    {
      v65 = v101;
      v66 = v100;
      if (v64 == *MEMORY[0x277D318E8])
      {
        (*(v77 + 104))(v61, *MEMORY[0x277D2DA50], v78);
      }

      else
      {
        v67 = *(v77 + 104);
        if (v64 == *MEMORY[0x277D318E0])
        {
          v67(v61, *MEMORY[0x277D2DA70], v78);
        }

        else
        {
          v67(v61, *MEMORY[0x277D2DA58], v78);
          (*(v59 + 8))(v63, v58);
        }
      }
    }

    v68 = v79;
    sub_219BDF3B4();
    v69 = swift_allocObject();
    *(v69 + 16) = v112;
    v97(v69 + v66, v98, v65);
    sub_2187DD9B8(&qword_280EE87E0, 255, MEMORY[0x277D2DA30]);
    v70 = v81;
    sub_219BDCCC4();

    (*(v80 + 8))(v68, v70);
    (*(v59 + 8))(v107, v58);
  }

  sub_2192DB7AC(v116, v105, v104);
  sub_219BE0F44();
  sub_2187DD9B8(&unk_280EE8140, 255, MEMORY[0x277D2EE08]);
  memset(v117, 0, sizeof(v117));
  sub_219BDCCE4();
  return sub_218806FD0(v117);
}

uint64_t sub_2192B854C(uint64_t a1, uint64_t a2)
{
  v99 = a1;
  v69 = sub_219BDF3D4();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v70 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_219BDF3C4();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21922CB44();
  MEMORY[0x28223BE20](v5 - 8);
  v86 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_219BE3C04();
  v91 = *(v88 - 8);
  v7 = MEMORY[0x28223BE20](v88);
  v67 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v87 = &v61 - v9;
  v66 = sub_219BE1314();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DC364(0);
  MEMORY[0x28223BE20](v11 - 8);
  v81 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_219BE1324();
  v82 = *(v83 - 8);
  v13 = MEMORY[0x28223BE20](v83);
  v62 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v63 = &v61 - v15;
  v16 = sub_219BDF134();
  MEMORY[0x28223BE20](v16 - 8);
  v85 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_219BDF824();
  v80 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v78 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_219BE1464();
  v84 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v76 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_219BE06D4();
  v75 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for EngagementAction();
  v96 = a2;

  sub_219BE34F4();

  sub_219BE06C4();
  sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v23 = v22;
  v98 = sub_219BDCD44();
  v24 = *(v98 - 8);
  v93 = *(v24 + 72);
  v25 = *(v24 + 80);
  v26 = (v25 + 32) & ~v25;
  v90 = v23;
  v27 = swift_allocObject();
  v97 = xmmword_219C09BA0;
  *(v27 + 16) = xmmword_219C09BA0;
  v94 = *MEMORY[0x277CEAD18];
  v28 = *(v24 + 104);
  v28(v27 + v26);
  v92 = "gapOnscreenTimer";
  sub_2187DD9B8(&unk_280EE8350, 255, MEMORY[0x277D2E6F8]);
  v29 = v74;
  sub_219BDCCC4();

  (*(v75 + 8))(v21, v29);
  v89 = v28;
  sub_219BDB804();
  v30 = v76;
  sub_219BE1454();
  v31 = swift_allocObject();
  *(v31 + 16) = v97;
  (v28)(v31 + v26, v94, v98);
  sub_2187DD9B8(&qword_280EE8020, 255, MEMORY[0x277D2F270]);
  v32 = v77;
  sub_219BDCCC4();

  (*(v84 + 8))(v30, v32);
  sub_219756890(v85);
  v33 = v78;
  sub_219BDF814();
  v84 = v25;
  v34 = swift_allocObject();
  *(v34 + 16) = v97;
  v77 = v26;
  v35 = v34 + v26;
  v36 = v94;
  v37 = v89;
  v85 = v24 + 104;
  v89(v35);
  sub_2187DD9B8(&unk_280EE8650, 255, MEMORY[0x277D2DD98]);
  v38 = v79;
  sub_219BDCCC4();
  v39 = v81;

  (*(v80 + 8))(v33, v38);
  sub_21926F2DC(v39);
  v40 = v82;
  v41 = v83;
  if ((*(v82 + 48))(v39, 1) == 1)
  {
    sub_2192CF630(v39, sub_2192DC364);
    v42 = v77;
  }

  else
  {
    v43 = v63;
    (*(v40 + 32))(v63, v39, v41);
    (*(v40 + 16))(v62, v43, v41);
    v44 = v64;
    sub_219BE1304();
    v45 = v77;
    v46 = swift_allocObject();
    *(v46 + 16) = v97;
    v37(v46 + v45, v36, v98);
    sub_2187DD9B8(&qword_280EE8078, 255, MEMORY[0x277D2F150]);
    v47 = v66;
    sub_219BDCCC4();

    (*(v65 + 8))(v44, v47);
    (*(v40 + 8))(v43, v41);
    v42 = v45;
  }

  v48 = v86;
  sub_2192DC084(v96 + *(v95 + 36), v86, sub_21922CB44);
  v49 = v91;
  v50 = v88;
  if ((*(v91 + 48))(v48, 1, v88) == 1)
  {
    sub_2192CF630(v48, sub_21922CB44);
  }

  else
  {
    v51 = v87;
    (*(v49 + 32))(v87, v48, v50);
    v52 = v67;
    (*(v49 + 16))(v67, v51, v50);
    v53 = (*(v49 + 88))(v52, v50);
    if (v53 == *MEMORY[0x277D318F0])
    {
      (*(v68 + 104))(v70, *MEMORY[0x277D2DA48], v69);
      v54 = v98;
      v55 = v94;
    }

    else
    {
      v54 = v98;
      v55 = v94;
      if (v53 == *MEMORY[0x277D318E8])
      {
        (*(v68 + 104))(v70, *MEMORY[0x277D2DA50], v69);
      }

      else
      {
        v56 = *(v68 + 104);
        if (v53 == *MEMORY[0x277D318E0])
        {
          v56(v70, *MEMORY[0x277D2DA70], v69);
        }

        else
        {
          v56(v70, *MEMORY[0x277D2DA58], v69);
          (*(v49 + 8))(v52, v50);
        }
      }
    }

    v57 = v71;
    sub_219BDF3B4();
    v58 = swift_allocObject();
    *(v58 + 16) = v97;
    (v89)(v58 + v42, v55, v54);
    sub_2187DD9B8(&qword_280EE87E0, 255, MEMORY[0x277D2DA30]);
    v59 = v73;
    sub_219BDCCC4();

    (*(v72 + 8))(v57, v59);
    (*(v91 + 8))(v87, v50);
  }

  sub_219BE0D84();
  sub_2187DD9B8(&unk_27CC18740, 255, MEMORY[0x277D2ECD0]);
  memset(v100, 0, sizeof(v100));
  sub_219BDCCE4();
  return sub_218806FD0(v100);
}

uint64_t sub_2192B9480(uint64_t a1, uint64_t a2)
{
  v92 = a1;
  v65 = sub_219BDF3D4();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v84 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_219BDF3C4();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21922CB44();
  MEMORY[0x28223BE20](v5 - 8);
  v82 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE3C04();
  v85 = *(v7 - 8);
  v86 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v63 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v83 = &v59 - v10;
  v62 = sub_219BE1314();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DC364(0);
  MEMORY[0x28223BE20](v12 - 8);
  v76 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_219BE1324();
  v74 = *(v75 - 8);
  v14 = MEMORY[0x28223BE20](v75);
  v59 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v77 = &v59 - v16;
  v17 = sub_219BDF134();
  MEMORY[0x28223BE20](v17 - 8);
  v81 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_219BDF824();
  v72 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BE06D4();
  v21 = *(v20 - 8);
  v79 = v20;
  v80 = v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for EngagementDismissal();
  v90 = a2;

  sub_219BE34F4();

  sub_219BE06C4();
  sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v91 = v24;
  v25 = sub_219BDCD44();
  v26 = *(v25 - 8);
  v27 = *(v26 + 72);
  v28 = *(v26 + 80);
  v29 = (v28 + 32) & ~v28;
  v30 = swift_allocObject();
  v89 = xmmword_219C09BA0;
  *(v30 + 16) = xmmword_219C09BA0;
  v31 = *MEMORY[0x277CEAD18];
  v88 = *(v26 + 104);
  v88(v30 + v29, v31, v25);
  v69 = "gapOnscreenTimer";
  sub_2187DD9B8(&unk_280EE8350, 255, MEMORY[0x277D2E6F8]);
  v32 = v79;
  sub_219BDCCC4();

  (*(v80 + 8))(v23, v32);
  sub_219756890(v81);
  v33 = v70;
  sub_219BDF814();
  v79 = v28;
  v80 = v27;
  v34 = swift_allocObject();
  *(v34 + 16) = v89;
  v81 = v29;
  v78 = v31;
  v73 = v25;
  v88(v34 + v29, v31, v25);
  sub_2187DD9B8(&unk_280EE8650, 255, MEMORY[0x277D2DD98]);
  v35 = v71;
  sub_219BDCCC4();

  (*(v72 + 8))(v33, v35);
  v36 = v76;
  sub_21926F2DC(v76);
  v37 = v74;
  v38 = v75;
  if ((*(v74 + 48))(v36, 1) == 1)
  {
    sub_2192CF630(v36, sub_2192DC364);
    v39 = v73;
  }

  else
  {
    v40 = v77;
    (*(v37 + 32))(v77, v36, v38);
    (*(v37 + 16))(v59, v40, v38);
    v41 = v60;
    sub_219BE1304();
    v42 = v81;
    v43 = swift_allocObject();
    *(v43 + 16) = v89;
    v39 = v73;
    v88(v43 + v42, v78, v73);
    sub_2187DD9B8(&qword_280EE8078, 255, MEMORY[0x277D2F150]);
    v44 = v62;
    sub_219BDCCC4();

    (*(v61 + 8))(v41, v44);
    (*(v37 + 8))(v77, v38);
  }

  v45 = v82;
  sub_2192DC084(v90 + *(v87 + 32), v82, sub_21922CB44);
  v47 = v85;
  v46 = v86;
  v48 = (*(v85 + 48))(v45, 1, v86);
  v49 = v84;
  if (v48 == 1)
  {
    sub_2192CF630(v45, sub_21922CB44);
  }

  else
  {
    v50 = v83;
    (*(v47 + 32))(v83, v45, v46);
    v51 = v63;
    (*(v47 + 16))(v63, v50, v46);
    v52 = (*(v47 + 88))(v51, v46);
    if (v52 == *MEMORY[0x277D318F0])
    {
      (*(v64 + 104))(v49, *MEMORY[0x277D2DA48], v65);
      v53 = v81;
    }

    else
    {
      v53 = v81;
      if (v52 == *MEMORY[0x277D318E8])
      {
        (*(v64 + 104))(v49, *MEMORY[0x277D2DA50], v65);
      }

      else
      {
        v54 = *(v64 + 104);
        if (v52 == *MEMORY[0x277D318E0])
        {
          v54(v49, *MEMORY[0x277D2DA70], v65);
        }

        else
        {
          v54(v49, *MEMORY[0x277D2DA58], v65);
          (*(v47 + 8))(v51, v46);
        }
      }
    }

    v55 = v66;
    sub_219BDF3B4();
    v56 = swift_allocObject();
    *(v56 + 16) = v89;
    v88(v56 + v53, v78, v39);
    sub_2187DD9B8(&qword_280EE87E0, 255, MEMORY[0x277D2DA30]);
    v57 = v68;
    sub_219BDCCC4();

    (*(v67 + 8))(v55, v57);
    (*(v47 + 8))(v83, v46);
  }

  sub_219BE1054();
  sub_2187DD9B8(&qword_280EE8120, 255, MEMORY[0x277D2EEA0]);
  memset(v93, 0, sizeof(v93));
  sub_219BDCCE4();
  return sub_218806FD0(v93);
}

uint64_t sub_2192BA1E0(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v44 = a1;
  v2 = sub_219BE06D4();
  v3 = *(v2 - 8);
  v37 = v2;
  v38 = v3;
  MEMORY[0x28223BE20](v2);
  v36 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BE1334();
  MEMORY[0x28223BE20](v5 - 8);
  v33 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE1254();
  v8 = *(v7 - 8);
  v34 = v7;
  v35 = v8;
  MEMORY[0x28223BE20](v7);
  v32 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDF134();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDF824();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219756890(v12);
  sub_219BDF814();
  sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v42 = v17;
  v18 = sub_219BDCD44();
  v19 = *(v18 - 8);
  v45 = *(v19 + 72);
  v39 = *(v19 + 80);
  v20 = (v39 + 32) & ~v39;
  v21 = swift_allocObject();
  v43 = xmmword_219C09BA0;
  *(v21 + 16) = xmmword_219C09BA0;
  v41 = *MEMORY[0x277CEAD18];
  v40 = *(v19 + 104);
  v30 = v18;
  v40(v21 + v20);
  sub_2187DD9B8(&unk_280EE8650, 255, MEMORY[0x277D2DD98]);
  sub_219BDCCC4();

  (*(v14 + 8))(v16, v13);
  sub_218AFE138(v33);
  sub_218AFE5C0();
  v22 = v32;
  sub_219BE1244();
  v23 = swift_allocObject();
  *(v23 + 16) = v43;
  (v40)(v23 + v20, v41, v18);
  sub_2187DD9B8(&qword_280EE80C0, 255, MEMORY[0x277D2F0A8]);
  v24 = v34;
  sub_219BDCCC4();

  (*(v35 + 8))(v22, v24);
  type metadata accessor for EngagementPresentationFailure();

  sub_219BE34F4();

  v25 = v36;
  sub_219BE06C4();
  v26 = swift_allocObject();
  *(v26 + 16) = v43;
  (v40)(v26 + v20, v41, v30);
  sub_2187DD9B8(&unk_280EE8350, 255, MEMORY[0x277D2E6F8]);
  v27 = v37;
  sub_219BDCCC4();

  (*(v38 + 8))(v25, v27);
  sub_219BE0D74();
  sub_2187DD9B8(&qword_280EE8180, 255, MEMORY[0x277D2ECC0]);
  memset(v46, 0, 32);
  sub_219BDCCE4();
  return sub_218806FD0(v46);
}

uint64_t sub_2192BA860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v103 = a3;
  v116 = a1;
  v78 = sub_219BDF3D4();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v108 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_219BDF3C4();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21922CB44();
  MEMORY[0x28223BE20](v6 - 8);
  v106 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE3C04();
  v109 = *(v8 - 8);
  v110 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v76 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v107 = &v72 - v11;
  v75 = sub_219BE1314();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DC364(0);
  MEMORY[0x28223BE20](v13 - 8);
  v96 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_219BE1324();
  v86 = *(v87 - 8);
  v15 = MEMORY[0x28223BE20](v87);
  v72 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v102 = &v72 - v17;
  v93 = sub_219BDBD34();
  v92 = *(v93 - 8);
  v18 = MEMORY[0x28223BE20](v93);
  v90 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v89 = &v72 - v20;
  v94 = sub_219BDD2D4();
  v95 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v88 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BDF134();
  MEMORY[0x28223BE20](v22 - 8);
  v101 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_219BDF824();
  v85 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_219BE06D4();
  v100 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v91 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for EngagementPresentation();
  v27 = *(v26 + 20);
  v111 = v26;
  v115 = a2;
  v28 = (a2 + v27);
  v29 = *v28;
  v30 = v28[1];

  sub_219BE34F4();

  v104 = v30;
  v105 = v29;
  sub_219BE06C4();
  sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v114 = v31;
  v32 = sub_219BDCD44();
  v33 = *(v32 - 8);
  v113 = *(v33 + 72);
  v34 = *(v33 + 80);
  v35 = (v34 + 32) & ~v34;
  v36 = swift_allocObject();
  v112 = xmmword_219C09BA0;
  *(v36 + 16) = xmmword_219C09BA0;
  v37 = *MEMORY[0x277CEAD18];
  v38 = *(v33 + 104);
  v38(v36 + v35, v37, v32);
  v82 = "gapOnscreenTimer";
  sub_2187DD9B8(&unk_280EE8350, 255, MEMORY[0x277D2E6F8]);
  v39 = v91;
  v40 = v99;
  sub_219BDCCC4();

  (*(v100 + 8))(v39, v40);
  sub_219756890(v101);
  v41 = v83;
  sub_219BDF814();
  v99 = v34;
  v42 = swift_allocObject();
  *(v42 + 16) = v112;
  v100 = v35;
  v98 = v37;
  v101 = v32;
  v91 = (v33 + 104);
  v97 = v38;
  v38(v42 + v35, v37, v32);
  sub_2187DD9B8(&unk_280EE8650, 255, MEMORY[0x277D2DD98]);
  v43 = v84;
  sub_219BDCCC4();

  (*(v85 + 8))(v41, v43);
  v44 = *(v92 + 16);
  v45 = v103;
  v46 = v93;
  v44(v89, v103, v93);
  v44(v90, v45, v46);
  v47 = v96;
  v48 = v88;
  sub_219BDD2B4();
  sub_2187DD9B8(&unk_280EE8ED0, 255, MEMORY[0x277CEAED0]);
  v49 = v94;
  sub_219BDCCC4();
  (*(v95 + 8))(v48, v49);
  sub_21926F2DC(v47);
  v50 = v86;
  v51 = v87;
  if ((*(v86 + 48))(v47, 1) == 1)
  {
    sub_2192CF630(v47, sub_2192DC364);
  }

  else
  {
    v52 = v102;
    (*(v50 + 32))(v102, v47, v51);
    (*(v50 + 16))(v72, v52, v51);
    v53 = v73;
    sub_219BE1304();
    v54 = v100;
    v55 = swift_allocObject();
    *(v55 + 16) = v112;
    v97(v55 + v54, v98, v101);
    sub_2187DD9B8(&qword_280EE8078, 255, MEMORY[0x277D2F150]);
    v56 = v75;
    sub_219BDCCC4();

    (*(v74 + 8))(v53, v56);
    (*(v50 + 8))(v102, v51);
  }

  v57 = v106;
  sub_2192DC084(v115 + *(v111 + 32), v106, sub_21922CB44);
  v59 = v109;
  v58 = v110;
  v60 = (*(v109 + 48))(v57, 1, v110);
  v61 = v108;
  if (v60 == 1)
  {
    sub_2192CF630(v57, sub_21922CB44);
  }

  else
  {
    v62 = v107;
    (*(v59 + 32))(v107, v57, v58);
    v63 = v76;
    (*(v59 + 16))(v76, v62, v58);
    v64 = (*(v59 + 88))(v63, v58);
    if (v64 == *MEMORY[0x277D318F0])
    {
      (*(v77 + 104))(v61, *MEMORY[0x277D2DA48], v78);
      v65 = v101;
      v66 = v100;
    }

    else
    {
      v65 = v101;
      v66 = v100;
      if (v64 == *MEMORY[0x277D318E8])
      {
        (*(v77 + 104))(v61, *MEMORY[0x277D2DA50], v78);
      }

      else
      {
        v67 = *(v77 + 104);
        if (v64 == *MEMORY[0x277D318E0])
        {
          v67(v61, *MEMORY[0x277D2DA70], v78);
        }

        else
        {
          v67(v61, *MEMORY[0x277D2DA58], v78);
          (*(v59 + 8))(v63, v58);
        }
      }
    }

    v68 = v79;
    sub_219BDF3B4();
    v69 = swift_allocObject();
    *(v69 + 16) = v112;
    v97(v69 + v66, v98, v65);
    sub_2187DD9B8(&qword_280EE87E0, 255, MEMORY[0x277D2DA30]);
    v70 = v81;
    sub_219BDCCC4();

    (*(v80 + 8))(v68, v70);
    (*(v59 + 8))(v107, v58);
  }

  sub_2192DB7AC(v116, v105, v104);
  sub_219BE11F4();
  sub_2187DD9B8(&unk_280EE80D0, 255, MEMORY[0x277D2F058]);
  memset(v117, 0, sizeof(v117));
  sub_219BDCCE4();
  return sub_218806FD0(v117);
}

uint64_t sub_2192BB864(uint64_t a1)
{
  v79 = a1;
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v2 - 8);
  v78 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DD5C0(0, &unk_280EE8380, MEMORY[0x277D2E6C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v80 = &v74 - v5;
  v84 = sub_219BE16E4();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v85 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_219BDF584();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v86 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_219BE16D4();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DCACC(0);
  MEMORY[0x28223BE20](v9 - 8);
  v93 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for TodayModel(0);
  MEMORY[0x28223BE20](v89);
  v88 = (&v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186EBC7C();
  MEMORY[0x28223BE20](v12 - 8);
  v90 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v15 = v14;
  v97 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v95 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v100 = &v74 - v19;
  MEMORY[0x28223BE20](v18);
  v99 = &v74 - v20;
  sub_218A1AC00();
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188118D4(0);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v92 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v96 = &v74 - v28;
  sub_21880B928();
  v30 = v29;
  v31 = *(v29 - 1);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v74 - v35;
  v87 = v1;
  v101[0] = *(v1 + 40);
  sub_2187DD900();
  sub_2187DD9B8(&qword_280EE5530, 255, sub_2187DD900);
  sub_219BE7B94();
  v91 = v31;
  v37 = *(v31 + 16);
  v94 = v36;
  v37(v34, v36, v30);
  sub_2187DD9B8(&qword_280EE3738, 255, sub_21880B928);
  sub_219BF56A4();
  v38 = *(v22 + 44);
  sub_2187DD9B8(&qword_280EE3730, 255, sub_21880B928);
  sub_219BF5E84();
  if (*&v24[v38] == v101[0])
  {
LABEL_5:
    sub_2192CF630(v24, sub_218A1AC00);
    v45 = 1;
    v46 = v96;
  }

  else
  {
    v39 = (v97 + 16);
    v98 = (v97 + 32);
    v40 = (v97 + 8);
    while (1)
    {
      v41 = sub_219BF5EC4();
      v42 = v99;
      (*v39)(v99);
      v41(v101, 0);
      sub_219BF5E94();
      v43 = v30;
      v44 = *v98;
      (*v98)(v100, v42, v15);
      sub_219BE6934();
      if (((v101[0] >> 58) & 0x3C | (LODWORD(v101[0]) >> 1) & 3) == 0x21)
      {
        break;
      }

      (*v40)(v100, v15);
      sub_219BF5E84();
      v30 = v43;
      if (*&v24[v38] == v101[0])
      {
        goto LABEL_5;
      }
    }

    v47 = swift_projectBox();
    v48 = v90;
    sub_2192DC084(v47, v90, sub_2186EBC7C);
    sub_2192CF630(v48, type metadata accessor for MyMagazinesMagazineFeedGroup);

    sub_2192CF630(v24, sub_218A1AC00);
    v46 = v96;
    v44(v96, v100, v15);
    v45 = 0;
    v30 = v43;
  }

  v49 = v97;
  (*(v97 + 56))(v46, v45, 1, v15);
  v50 = v92;
  sub_2192DC084(v46, v92, sub_2188118D4);
  v51 = (*(v49 + 48))(v50, 1, v15);
  v52 = v95;
  v53 = v93;
  if (v51 == 1)
  {
    sub_2192CF630(v46, sub_2188118D4);
    (*(v91 + 8))(v94, v30);
    return sub_2192CF630(v50, sub_2188118D4);
  }

  v100 = v30;
  (*(v49 + 32))(v95, v50, v15);
  sub_218C8750C(v53);
  sub_218853400();
  v56 = v55;
  v57 = *(v55 - 8);
  if ((*(v57 + 48))(v53, 1, v55) == 1)
  {
    (*(v49 + 8))(v52, v15);
    sub_2192CF630(v46, sub_2188118D4);
    (*(v91 + 8))(v94, v100);
    return sub_2192CF630(v53, sub_2192DCACC);
  }

  v58 = v88;
  sub_219BE5FC4();
  (*(v57 + 8))(v53, v56);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    (*(v49 + 8))(v52, v15);
    sub_2192CF630(v46, sub_2188118D4);
    (*(v91 + 8))(v94, v100);
    return sub_2192CF630(v58, type metadata accessor for TodayModel);
  }

  v99 = *v58;
  sub_218718690(v87 + 120, v101);
  __swift_project_boxed_opaque_existential_1(v101, v101[3]);
  sub_219BE6944();
  sub_2186EB3E8();
  sub_2187DD9B8(&qword_280EDF9E0, 255, type metadata accessor for TodayModel);
  v59 = v94;
  v60 = sub_219BF00E4();

  __swift_destroy_boxed_opaque_existential_1(v101);
  if (v60 == sub_219BDAF14())
  {

    (*(v49 + 8))(v52, v15);
    sub_2192CF630(v96, sub_2188118D4);
    return (*(v91 + 8))(v59, v100);
  }

  v61 = sub_219BE5B64();
  swift_getObjectType();
  v101[0] = v61;
  v62 = sub_219BEB4B4();

  v63 = sub_219BE5B64();
  swift_getObjectType();
  v101[0] = v63;
  sub_219BEB4D4();

  (*(v81 + 104))(v86, *MEMORY[0x277D2DB58], v82);
  (*(v83 + 104))(v85, *MEMORY[0x277D2F5E8], v84);
  v64 = v15;
  result = sub_219BE6944();
  if (v62 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v66 = v80;
  if (v60 < 0xFFFFFFFF80000000 || v62 < 0xFFFFFFFF80000000)
  {
    goto LABEL_23;
  }

  v93 = v65;
  v98 = result;
  if (v60 > 0x7FFFFFFF)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  sub_219BE6934();
  sub_2193B6C2C(v101[0], v66);

  v67 = sub_219BE0674();
  (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
  sub_219BE6934();
  v68 = sub_2193B4730();

  if (v68)
  {
    v69 = [v68 identifier];
    swift_unknownObjectRelease();
    sub_219BF5414();
  }

  v70 = v94;
  v71 = sub_219BDF474();
  (*(*(v71 - 8) + 56))(v78, 1, 1, v71);
  v72 = v75;
  sub_219BE15E4();
  sub_2187DD9B8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
  v73 = v77;
  sub_219BDD1F4();

  (*(v76 + 8))(v72, v73);
  (*(v97 + 8))(v95, v64);
  sub_2192CF630(v96, sub_2188118D4);
  return (*(v91 + 8))(v70, v100);
}

uint64_t sub_2192BC848(uint64_t a1, uint64_t a2, char *a3)
{
  v139 = a2;
  v140 = a3;
  v111 = sub_219BF0B74();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_219BF0AC4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_219BF1094();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DC118(0, &qword_280EE35D0, MEMORY[0x277D6EC60]);
  v131 = v7;
  v129 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v128 = &v105 - v8;
  sub_218747BDC(0);
  MEMORY[0x28223BE20](v9 - 8);
  v130 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_219BDC104();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v124 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_219BF0574();
  v136 = *(v137 - 8);
  v12 = MEMORY[0x28223BE20](v137);
  v135 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v134 = &v105 - v14;
  v15 = sub_219BF0F34();
  v141 = *(v15 - 8);
  v142 = v15;
  MEMORY[0x28223BE20](v15);
  v138 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BDBD34();
  v148 = *(v17 - 8);
  v149 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v145 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v143 = &v105 - v20;
  v21 = sub_219BDB184();
  v146 = *(v21 - 8);
  v147 = v21;
  MEMORY[0x28223BE20](v21);
  v144 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_219BF04A4();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v118 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_219BF07A4();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v121 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_219BEEC14();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v112 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_219BEDAE4();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v115 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BF0614();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58CA4();
  v32 = v31;
  v33 = *(v31 - 8);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v105 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = &v105 - v37;
  sub_218B58D38(0);
  v39 = a1;
  sub_219BE7564();
  sub_219BE5FD4();
  v42 = *(v33 + 8);
  v41 = v33 + 8;
  v40 = v42;
  v42(v38, v32);
  result = (*(v28 + 88))(v30, v27);
  if (result == *MEMORY[0x277D32DB8])
  {
    v142 = v27;
    sub_219BE7564();
    v141 = sub_219BE5F84();
    v45 = v44;
    v40(v36, v32);
    v46 = v143;
    sub_219BE75A4();
    v47 = v145;
    sub_219BE7574();
    v48 = v144;
    sub_219BDB104();
    v49 = v149;
    v50 = *(v148 + 1);
    v50(v47, v149);
    v50(v46, v49);
    sub_2192A8C14(v141, v45, v48, 0);

    (*(v146 + 8))(v48, v147);
    return (*(v28 + 8))(v30, v142);
  }

  v51 = v28;
  v52 = v30;
  if (result == *MEMORY[0x277D32D10])
  {
    return (*(v51 + 8))(v52, v27);
  }

  if (result == *MEMORY[0x277D32E00])
  {
    return (*(v28 + 8))(v30, v27);
  }

  v53 = v39;
  if (result == *MEMORY[0x277D32E10])
  {
    v148 = v40;
    v149 = v41;
    v54 = v52;
    (*(v28 + 96))(v52, v27);
    v55 = v138;
    (*(v141 + 32))(v138, v54, v142);
    v56 = sub_219BF0F14();
    v147 = v53;
    sub_2192BFAA4(v53, v56, v139, v140);
    swift_unknownObjectRelease();
    v57 = v134;
    sub_219BF0E64();
    v58 = v136;
    v59 = v135;
    v60 = v137;
    (*(v136 + 104))(v135, *MEMORY[0x277D32D80], v137);
    LOBYTE(v54) = sub_219BF04F4();
    v61 = *(v58 + 8);
    v61(v59, v60);
    v61(v57, v60);
    if ((v54 & 1) == 0)
    {
      return (*(v141 + 8))(v55, v142);
    }

    v62 = v142;
    v63 = v128;
    sub_219BE7594();
    sub_219BE7564();
    v64 = v130;
    v65 = v131;
    sub_219BEB2F4();
    v148(v36, v32);
    (*(v129 + 8))(v63, v65);
    v66 = v132;
    v67 = v133;
    if ((*(v132 + 48))(v64, 1, v133) == 1)
    {
      (*(v141 + 8))(v138, v62);
      return sub_2192CF630(v64, sub_218747BDC);
    }

    else
    {
      v88 = v124;
      (*(v66 + 32))(v124, v64, v67);
      Strong = swift_unknownObjectWeakLoadStrong();
      v90 = v141;
      v91 = v138;
      if (Strong)
      {
        v92 = Strong;
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_2192DB494(v92);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      (*(v66 + 8))(v88, v67);
      return (*(v90 + 8))(v91, v62);
    }
  }

  v68 = v39;
  if (result == *MEMORY[0x277D32E18])
  {
    v69 = v52;
    (*(v51 + 96))(v52, v27);
    v70 = v126;
    v71 = v125;
    v72 = v69;
    v73 = v127;
    (*(v126 + 32))(v125, v72, v127);
    sub_2192C077C(v39, v71, v139, v140);
    return (*(v70 + 8))(v71, v73);
  }

  v74 = v52;
  if (result != *MEMORY[0x277D32DD8])
  {
    if (result != *MEMORY[0x277D32CF8])
    {
      if (result == *MEMORY[0x277D32DC0])
      {
        (*(v51 + 96))(v52, v27);
        v93 = v119;
        v94 = v118;
        v95 = v120;
        (*(v119 + 32))(v118, v74, v120);
        v96 = sub_219BF0404();
        sub_2192BF008(v53, v96, v139, v140);
        swift_unknownObjectRelease();
        return (*(v93 + 8))(v94, v95);
      }

      if (result == *MEMORY[0x277D32CF0])
      {
        (*(v51 + 96))(v52, v27);
        v70 = v116;
        v71 = v115;
        v97 = v74;
        v73 = v117;
        (*(v116 + 32))(v115, v97, v117);
        sub_2192BDB80(v39, v71, v139, v140);
        return (*(v70 + 8))(v71, v73);
      }

      if (result != *MEMORY[0x277D32E08])
      {
        if (result == *MEMORY[0x277D32DB0])
        {
          (*(v51 + 96))(v52, v27);
          v70 = v113;
          v71 = v112;
          v98 = v74;
          v73 = v114;
          (*(v113 + 32))(v112, v98, v114);
          sub_2192DBCC0(v39);
          return (*(v70 + 8))(v71, v73);
        }

        if (result != *MEMORY[0x277D32DE0])
        {
          if (result == *MEMORY[0x277D32DF0])
          {
            (*(v51 + 96))(v52, v27);
            v99 = v110;
            v100 = v109;
            v101 = v111;
            (*(v110 + 32))(v109, v74, v111);
            v102 = sub_219BF0B44();
            sub_2192C2084(v68, v102, v139, v140);

            return (*(v99 + 8))(v100, v101);
          }

          if (result != *MEMORY[0x277D32D38])
          {
            if (result == *MEMORY[0x277D32DE8])
            {
              v103 = v52;
              (*(v51 + 96))(v52, v27);
              v70 = v107;
              v71 = v106;
              v104 = v103;
              v73 = v108;
              (*(v107 + 32))(v106, v104, v108);
              sub_2192C12C8(v39, v71, v139, v140);
              return (*(v70 + 8))(v71, v73);
            }

            if (result != *MEMORY[0x277D32D18] && result != *MEMORY[0x277D32DA8] && result != *MEMORY[0x277D32DF8] && result == *MEMORY[0x277D32DD0])
            {
              return result;
            }
          }
        }
      }
    }

    return (*(v51 + 8))(v52, v27);
  }

  (*(v51 + 96))(v52, v27);
  v75 = v122;
  v76 = v121;
  v77 = v123;
  (*(v122 + 32))(v121, v74, v123);
  __swift_project_boxed_opaque_existential_1((v150 + 80), *(v150 + 104));
  v78 = sub_219BF06B4();
  sub_2186DEF40(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_219C146A0;
  *(v79 + 32) = v78;
  v80 = v78;
  v81 = sub_21945CCB8(v79);

  if (*(v81 + 16))
  {
    *v152 = *(v81 + 32);
    *&v152[9] = *(v81 + 41);
    sub_218950CAC(v152, v151);

    v82 = 256;
    if (!v152[9])
    {
      v82 = 0;
    }

    v83 = v82 | v152[8];
    v84 = 0x10000;
    if (!v152[10])
    {
      v84 = 0;
    }

    v85 = 0x1000000;
    if (!v152[11])
    {
      v85 = 0;
    }

    v86 = v83 | v84 | v85;
    v87 = 0x100000000;
    if (!v152[12])
    {
      v87 = 0;
    }

    sub_2192BE6E0(v39, *v152, v86 | v87, *&v152[16], v152[24], v139, v140);
    sub_218950D08(v152);
    return (*(v75 + 8))(v76, v77);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2192BDB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = a4;
  v75 = a3;
  v83 = a2;
  v84 = a1;
  sub_218B58D38(0);
  v89 = *(v5 - 8);
  v90 = v5;
  MEMORY[0x28223BE20](v5);
  v87 = v6;
  v88 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEDAE4();
  v85 = *(v7 - 8);
  v86 = v7;
  MEMORY[0x28223BE20](v7);
  v82 = v8;
  v94 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  v80 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v93 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v11;
  MEMORY[0x28223BE20](v10);
  v92 = &v69 - v12;
  sub_2192CF5FC(0);
  MEMORY[0x28223BE20](v13 - 8);
  v70 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D8C(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v18);
  v74 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188118D4(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v24 = v23;
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v27 = &v69 - v26;
  sub_21880B928();
  v29 = v28;
  v78 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = swift_allocBox();
  v33 = v32;
  v34 = sub_219BE16D4();
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v73 = v33;
  v72 = v36;
  v71 = v35 + 56;
  v36(v33, 1, 1, v34);
  v91 = v4;
  v95[0] = *(v4 + 40);
  sub_2187DD900();
  sub_2187DD9B8(&qword_280EE5530, 255, sub_2187DD900);
  sub_219BE7B94();
  v79 = v29;
  sub_219BEB244();
  v37 = (*(v25 + 48))(v22, 1, v24);
  v77 = v31;
  if (v37 != 1)
  {
    (*(v25 + 32))(v27, v22, v24);
    sub_219BE6934();
    sub_21968BE24(v95[0], v17);

    v39 = sub_219BE16E4();
    if ((*(*(v39 - 8) + 48))(v17, 1, v39) == 1)
    {
      (*(v25 + 8))(v27, v24);
      sub_2192CF630(v17, sub_218B58D8C);
    }

    else
    {
      v75 = v25;
      sub_2192CF630(v17, sub_218B58D8C);
      sub_218718690(v91 + 120, v95);
      v69 = v95[4];
      __swift_project_boxed_opaque_existential_1(v95, v95[3]);
      sub_219BE6944();
      type metadata accessor for TodayModel(0);
      sub_2186EB3E8();
      sub_2187DD9B8(&qword_280EDF9E0, 255, type metadata accessor for TodayModel);
      v40 = sub_219BF00E4();

      __swift_destroy_boxed_opaque_existential_1(v95);
      if (v40 != sub_219BDAF14())
      {
        v72 = sub_219BE6944();
        v43 = v42;
        v44 = sub_218827310();
        v41 = v74;
        if ((~v44 & 0xF000000000000007) != 0)
        {
          type metadata accessor for TodayFeedServiceConfig();
          sub_2187DD9B8(&qword_280EC6590, 255, type metadata accessor for TodayFeedServiceConfig);
          v45 = sub_219BEE774();
          sub_21885AB78(v44);
          v44 = v45;
        }

        v38 = v91;
        v46 = v70;
        sub_2192CE75C(v72, v43, v44, v70);
        sub_21885AB78(v44);

        sub_219689464(v40, v46, 0, v41);
        sub_2192CF630(v46, sub_2192CF5FC);
        (*(v75 + 8))(v27, v24);
        goto LABEL_11;
      }

      (*(v75 + 8))(v27, v24);
    }

    v41 = v74;
    v72(v74, 1, 1, v34);
    v38 = v91;
LABEL_11:
    sub_218B58ECC(v41, v73);
    goto LABEL_12;
  }

  sub_2192CF630(v22, sub_2188118D4);
  v38 = v91;
LABEL_12:
  v47 = v38;
  v48 = *(v38 + 528);
  v49 = __swift_project_boxed_opaque_existential_1((v47 + 504), v48);
  v50 = v83;
  v51 = sub_219BEDAB4();
  v53 = v52;
  MEMORY[0x28223BE20](v51);
  v55 = &v69 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v56 + 16))(v55, v49, v48);
  v57 = v92;
  sub_218A75968(v51, v53, v55, v48, v92);
  v91 = *(v47 + 32);
  v59 = v85;
  v58 = v86;
  (*(v85 + 16))(v94, v50, v86);
  v60 = v88;
  v61 = v89;
  v62 = v90;
  (*(v89 + 16))(v88, v84, v90);
  sub_2192DC084(v57, v93, sub_218B59134);
  v63 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v64 = (v82 + *(v61 + 80) + v63) & ~*(v61 + 80);
  v65 = (v87 + *(v80 + 80) + v64) & ~*(v80 + 80);
  v66 = (v81 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = swift_allocObject();
  (*(v59 + 32))(v67 + v63, v94, v58);
  (*(v61 + 32))(v67 + v64, v60, v62);
  sub_2192DCD38(v93, v67 + v65, sub_218B59134);
  *(v67 + v66) = v76;

  sub_219BDD154();

  sub_2192CF630(v92, sub_218B59134);
  (*(v78 + 8))(v77, v79);
}

uint64_t sub_2192BE6E0(uint64_t a1, void *a2, unint64_t a3, void *a4, int a5, uint64_t a6, char *a7)
{
  v76 = a4;
  v77 = a7;
  v67 = a6;
  v74 = a5;
  v71 = a3;
  v75 = a2;
  v69 = a1;
  sub_218B58D38(0);
  v72 = *(v8 - 8);
  v73 = v8;
  MEMORY[0x28223BE20](v8);
  v68 = v9;
  v70 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192CF5FC(0);
  MEMORY[0x28223BE20](v10 - 8);
  v61 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D8C(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v15);
  v64 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188118D4(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v24 = v60 - v23;
  sub_21880B928();
  v26 = v25;
  v66 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v7 + 40);
  v78 = v7;
  v79[0] = v29;
  sub_2187DD900();
  sub_2187DD9B8(&qword_280EE5530, 255, sub_2187DD900);
  sub_219BE7B94();
  v65 = swift_allocBox();
  v31 = v30;
  v32 = sub_219BE16D4();
  v33 = *(*(v32 - 8) + 56);
  v63 = v31;
  v62 = v33;
  v33(v31, 1, 1, v32);
  v67 = v26;
  v77 = v28;
  sub_219BEB244();
  if ((*(v22 + 48))(v19, 1, v21) != 1)
  {
    (*(v22 + 32))(v24, v19, v21);
    sub_219BE6934();
    sub_21968BE24(v79[0], v14);

    v34 = sub_219BE16E4();
    if ((*(*(v34 - 8) + 48))(v14, 1, v34) == 1)
    {
      (*(v22 + 8))(v24, v21);
      sub_2192CF630(v14, sub_218B58D8C);
    }

    else
    {
      sub_2192CF630(v14, sub_218B58D8C);
      sub_218718690(v78 + 120, v79);
      __swift_project_boxed_opaque_existential_1(v79, v79[3]);
      v60[1] = sub_219BE6944();
      v60[0] = type metadata accessor for TodayModel(0);
      sub_2186EB3E8();
      sub_2187DD9B8(&qword_280EDF9E0, 255, type metadata accessor for TodayModel);
      v35 = sub_219BF00E4();

      __swift_destroy_boxed_opaque_existential_1(v79);
      if (v35 != sub_219BDAF14())
      {
        v37 = sub_219BE6944();
        v39 = v38;
        v40 = sub_218827310();
        if ((~v40 & 0xF000000000000007) != 0)
        {
          type metadata accessor for TodayFeedServiceConfig();
          sub_2187DD9B8(&qword_280EC6590, 255, type metadata accessor for TodayFeedServiceConfig);
          v41 = sub_219BEE774();
          sub_21885AB78(v40);
          v40 = v41;
        }

        v36 = v64;
        v42 = v61;
        sub_2192CE75C(v37, v39, v40, v61);
        sub_21885AB78(v40);

        sub_219689464(v35, v42, 0, v36);
        sub_2192CF630(v42, sub_2192CF5FC);
        (*(v22 + 8))(v24, v21);
        goto LABEL_11;
      }

      (*(v22 + 8))(v24, v21);
    }

    v36 = v64;
    v62(v64, 1, 1, v32);
LABEL_11:
    sub_218B58ECC(v36, v63);
    goto LABEL_12;
  }

  sub_2192CF630(v19, sub_2188118D4);
LABEL_12:
  v43 = v78;
  __swift_project_boxed_opaque_existential_1((v78 + 464), *(v78 + 488));
  v44 = v75;
  v45 = [v75 identifier];
  sub_219BF5414();

  LODWORD(v63) = sub_219BF4774();

  v64 = *(v43 + 32);
  v46 = v72;
  v47 = v73;
  v48 = v70;
  (*(v72 + 16))(v70, v69, v73);
  v49 = (*(v46 + 80) + 41) & ~*(v46 + 80);
  v50 = (v49 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = (v49 + v68 + 23) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 16) = v44;
  v53 = v44;
  v54 = vdupq_n_s64(v71);
  *(v52 + 24) = v71 & 1;
  *v54.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v54, xmmword_219C40920), vshlq_u64(v54, xmmword_219C40910))), 0x1000100010001);
  *(v52 + 25) = vuzp1_s8(*v54.i8, *v54.i8).u32[0];
  v55 = v76;
  *(v52 + 32) = v76;
  *(v52 + 40) = v74 & 1;
  (*(v46 + 32))(v52 + v49, v48, v47);
  v56 = v52 + v50;
  *v56 = v43;
  *(v56 + 8) = v63 & 1;
  *(v52 + v51) = v65;
  v57 = v53;
  v58 = v55;

  sub_219BDD154();

  (*(v66 + 8))(v77, v67);
}

uint64_t sub_2192BF008(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v75 = a4;
  v72 = a3;
  v87 = a2;
  v78 = a1;
  sub_218B58D38(0);
  v82 = *(v5 - 8);
  v83 = v5;
  MEMORY[0x28223BE20](v5);
  v79 = v6;
  v81 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  v76 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v80 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v9;
  MEMORY[0x28223BE20](v8);
  v86 = &v66 - v10;
  sub_2192CF5FC(0);
  MEMORY[0x28223BE20](v11 - 8);
  v67 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D8C(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v16);
  v71 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188118D4(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = &v66 - v24;
  sub_21880B928();
  v27 = v26;
  v74 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = swift_allocBox();
  v31 = v30;
  v32 = sub_219BE16D4();
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v70 = v31;
  v69 = v34;
  v68 = v33 + 56;
  v34(v31, 1, 1, v32);
  v85 = v4;
  v88[0] = *(v4 + 40);
  sub_2187DD900();
  sub_2187DD9B8(&qword_280EE5530, 255, sub_2187DD900);
  sub_219BE7B94();
  v75 = v27;
  v84 = v29;
  sub_219BEB244();
  if ((*(v23 + 48))(v20, 1, v22) == 1)
  {
    sub_2192CF630(v20, sub_2188118D4);
    v35 = v87;
    v36 = v85;
    goto LABEL_12;
  }

  (*(v23 + 32))(v25, v20, v22);
  sub_219BE6934();
  sub_21968BE24(v88[0], v15);

  v37 = sub_219BE16E4();
  if ((*(*(v37 - 8) + 48))(v15, 1, v37) == 1)
  {
    (*(v23 + 8))(v25, v22);
    sub_2192CF630(v15, sub_218B58D8C);
  }

  else
  {
    sub_2192CF630(v15, sub_218B58D8C);
    sub_218718690(v85 + 120, v88);
    v72 = __swift_project_boxed_opaque_existential_1(v88, v89);
    sub_219BE6944();
    type metadata accessor for TodayModel(0);
    sub_2186EB3E8();
    sub_2187DD9B8(&qword_280EDF9E0, 255, type metadata accessor for TodayModel);
    v38 = sub_219BF00E4();

    __swift_destroy_boxed_opaque_existential_1(v88);
    if (v38 != sub_219BDAF14())
    {
      v72 = sub_219BE6944();
      v41 = v40;
      v42 = sub_218827310();
      if ((~v42 & 0xF000000000000007) != 0)
      {
        type metadata accessor for TodayFeedServiceConfig();
        sub_2187DD9B8(&qword_280EC6590, 255, type metadata accessor for TodayFeedServiceConfig);
        v43 = sub_219BEE774();
        sub_21885AB78(v42);
        v42 = v43;
      }

      v36 = v85;
      v39 = v71;
      v44 = v67;
      sub_2192CE75C(v72, v41, v42, v67);
      sub_21885AB78(v42);

      sub_219689464(v38, v44, 0, v39);
      sub_2192CF630(v44, sub_2192CF5FC);
      (*(v23 + 8))(v25, v22);
      v35 = v87;
      goto LABEL_11;
    }

    (*(v23 + 8))(v25, v22);
  }

  v39 = v71;
  v69(v71, 1, 1, v32);
  v35 = v87;
  v36 = v85;
LABEL_11:
  sub_218B58ECC(v39, v70);
LABEL_12:
  sub_218718690(v36 + 504, v88);
  v45 = v89;
  v46 = __swift_project_boxed_opaque_existential_1(v88, v89);
  v47 = [v35 dismissingIdentifier];
  if (v47)
  {
    v48 = v47;
    v49 = sub_219BF5414();
    v51 = v50;
  }

  else
  {
    v49 = 0;
    v51 = 0;
  }

  MEMORY[0x28223BE20](v47);
  v53 = &v66 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v54 + 16))(v53, v46, v45);
  v55 = v86;
  sub_218A75968(v49, v51, v53, v45, v86);
  __swift_destroy_boxed_opaque_existential_1(v88);
  v56 = v81;
  v57 = v82;
  v58 = v83;
  (*(v82 + 16))(v81, v78, v83);
  v59 = v80;
  sub_2192DC084(v55, v80, sub_218B59134);
  v60 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v61 = (v79 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = (*(v76 + 80) + v61 + 8) & ~*(v76 + 80);
  v63 = (v77 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v57 + 32))(v64 + v60, v56, v58);
  *(v64 + v61) = v87;
  sub_2192DCD38(v59, v64 + v62, sub_218B59134);
  *(v64 + v63) = v73;
  swift_unknownObjectRetain();

  sub_219BDD154();

  sub_2192CF630(v86, sub_218B59134);
  (*(v74 + 8))(v84, v75);
}

uint64_t sub_2192BFAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v112 = a4;
  v100 = a3;
  v110 = a2;
  v105 = a1;
  sub_218B58D38(0);
  v114 = v5;
  v109 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v104 = v6;
  v106 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDBD34();
  v101 = *(v7 - 8);
  v102 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v97 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v95 = &v82 - v10;
  v11 = sub_219BDB184();
  v107 = *(v11 - 8);
  v108 = v11;
  MEMORY[0x28223BE20](v11);
  v113 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192CF5FC(0);
  MEMORY[0x28223BE20](v13 - 8);
  v86 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D8C(0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v103 = (&v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v88 = &v82 - v18;
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v19);
  v90 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = &v82 - v24;
  sub_2188118D4(0);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v94 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v82 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v82 - v32;
  sub_21880B928();
  v35 = v34;
  v99 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v82 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v4;
  v116 = *(v4 + 40);
  sub_2187DD900();
  sub_2187DD9B8(&qword_280EE5530, 255, sub_2187DD900);
  sub_219BE7B94();
  v96 = swift_allocBox();
  v39 = v38;
  v40 = sub_219BE16D4();
  v41 = *(*(v40 - 8) + 56);
  v89 = v39;
  v87 = v41;
  v41(v39, 1, 1, v40);
  v100 = v35;
  v42 = v22;
  sub_219BEB244();
  v112 = v33;
  v43 = v33;
  v44 = v23;
  sub_2192DC084(v43, v31, sub_2188118D4);
  v45 = *(v23 + 48);
  v93 = v23 + 48;
  v92 = v45;
  v46 = v45(v31, 1, v22);
  v98 = v37;
  v91 = v23;
  if (v46 == 1)
  {
    v47 = v22;
    sub_2192CF630(v31, sub_2188118D4);
    v48 = v111;
    goto LABEL_12;
  }

  (*(v23 + 32))(v25, v31, v22);
  sub_219BE6934();
  v49 = v88;
  sub_21968BE24(v116, v88);

  v50 = sub_219BE16E4();
  v51 = v25;
  if ((*(*(v50 - 8) + 48))(v49, 1, v50) == 1)
  {
    (*(v44 + 8))(v25, v42);
    sub_2192CF630(v49, sub_218B58D8C);
    v52 = v90;
  }

  else
  {
    sub_2192CF630(v49, sub_218B58D8C);
    sub_218718690(v111 + 120, &v116);
    v88 = v118;
    __swift_project_boxed_opaque_existential_1(&v116, v117);
    v85 = sub_219BE6944();
    v84 = type metadata accessor for TodayModel(0);
    sub_2186EB3E8();
    sub_2187DD9B8(&qword_280EDF9E0, 255, type metadata accessor for TodayModel);
    v53 = sub_219BF00E4();

    __swift_destroy_boxed_opaque_existential_1(&v116);
    v54 = sub_219BDAF14();
    v52 = v90;
    if (v53 != v54)
    {
      v88 = sub_219BE6944();
      v56 = v55;
      v57 = sub_218827310();
      v83 = v51;
      if ((~v57 & 0xF000000000000007) != 0)
      {
        type metadata accessor for TodayFeedServiceConfig();
        sub_2187DD9B8(&qword_280EC6590, 255, type metadata accessor for TodayFeedServiceConfig);
        v58 = sub_219BEE774();
        sub_21885AB78(v57);
        v57 = v58;
      }

      v48 = v111;
      v59 = v86;
      sub_2192CE75C(v88, v56, v57, v86);
      sub_21885AB78(v57);

      v60 = v83;
      sub_219689464(v53, v59, 0, v52);
      sub_2192CF630(v59, sub_2192CF5FC);
      (*(v44 + 8))(v60, v42);
      goto LABEL_11;
    }

    (*(v44 + 8))(v25, v42);
  }

  v87(v52, 1, 1, v40);
  v48 = v111;
LABEL_11:
  v47 = v42;
  sub_218B58ECC(v52, v89);
LABEL_12:
  v61 = v105;
  v62 = v103;
  sub_218718690(v48 + 168, &v116);
  v105 = v118;
  v111 = v117;
  v103 = __swift_project_boxed_opaque_existential_1(&v116, v117);
  v63 = v95;
  sub_219BE75A4();
  v64 = v97;
  sub_219BE7574();
  sub_219BDB104();
  v65 = v102;
  v66 = *(v101 + 8);
  v66(v64, v102);
  v66(v63, v65);
  v67 = v94;
  sub_2192DC084(v112, v94, sub_2188118D4);
  if (v92(v67, 1, v47) == 1)
  {
    sub_2192CF630(v67, sub_2188118D4);
    v68 = sub_219BE16E4();
    (*(*(v68 - 8) + 56))(v62, 1, 1, v68);
  }

  else
  {
    sub_219BE6934();
    sub_21968BE24(v115, v62);

    (*(v91 + 8))(v67, v47);
  }

  v69 = v62;
  v70 = v109;
  v71 = v106;
  v72 = v114;
  (*(v109 + 16))(v106, v61, v114);
  v73 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v74 = (v104 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  (*(v70 + 32))(v76 + v73, v71, v72);
  v77 = v110;
  *(v76 + v74) = v110;
  *(v76 + v75) = v96;
  *(v76 + ((v75 + 15) & 0xFFFFFFFFFFFFFFF8)) = v48;
  v78 = v105;
  v79 = *(v105 + 32);
  swift_unknownObjectRetain();

  v80 = v113;
  v79(v113, v69, v77, sub_2192DC5F0, v76, v111, v78);

  sub_2192CF630(v69, sub_218B58D8C);
  (*(v107 + 8))(v80, v108);
  sub_2192CF630(v112, sub_2188118D4);
  (*(v99 + 8))(v98, v100);
  __swift_destroy_boxed_opaque_existential_1(&v116);
}

uint64_t sub_2192C077C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v87 = a4;
  v75 = a3;
  v79 = a2;
  v80 = a1;
  sub_218B58D38(0);
  v85 = *(v5 - 8);
  v86 = v5;
  MEMORY[0x28223BE20](v5);
  v82 = v6;
  v84 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_219BF1094();
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v78 = v7;
  v90 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  v76 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v89 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v10;
  MEMORY[0x28223BE20](v9);
  v91 = v67 - v11;
  sub_2192CF5FC(0);
  MEMORY[0x28223BE20](v12 - 8);
  v69 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D8C(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v17);
  v72 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188118D4(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v26 = v67 - v25;
  sub_21880B928();
  v28 = v27;
  v74 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v4;
  v92[0] = *(v4 + 40);
  sub_2187DD900();
  sub_2187DD9B8(&qword_280EE5530, 255, sub_2187DD900);
  sub_219BE7B94();
  v73 = swift_allocBox();
  v32 = v31;
  v33 = sub_219BE16D4();
  v34 = *(*(v33 - 8) + 56);
  v71 = v32;
  v70 = v34;
  v34(v32, 1, 1, v33);
  v75 = v28;
  v87 = v30;
  sub_219BEB244();
  if ((*(v24 + 48))(v21, 1, v23) != 1)
  {
    (*(v24 + 32))(v26, v21, v23);
    sub_219BE6934();
    sub_21968BE24(v92[0], v16);

    v36 = sub_219BE16E4();
    if ((*(*(v36 - 8) + 48))(v16, 1, v36) == 1)
    {
      (*(v24 + 8))(v26, v23);
      sub_2192CF630(v16, sub_218B58D8C);
    }

    else
    {
      v68 = v24;
      sub_2192CF630(v16, sub_218B58D8C);
      sub_218718690(v88 + 120, v92);
      __swift_project_boxed_opaque_existential_1(v92, v92[3]);
      v67[1] = sub_219BE6944();
      type metadata accessor for TodayModel(0);
      sub_2186EB3E8();
      sub_2187DD9B8(&qword_280EDF9E0, 255, type metadata accessor for TodayModel);
      v37 = sub_219BF00E4();

      __swift_destroy_boxed_opaque_existential_1(v92);
      if (v37 != sub_219BDAF14())
      {
        v39 = sub_219BE6944();
        v41 = v40;
        v42 = sub_218827310();
        if ((~v42 & 0xF000000000000007) != 0)
        {
          type metadata accessor for TodayFeedServiceConfig();
          sub_2187DD9B8(&qword_280EC6590, 255, type metadata accessor for TodayFeedServiceConfig);
          v43 = sub_219BEE774();
          sub_21885AB78(v42);
          v42 = v43;
        }

        v35 = v88;
        v44 = v69;
        sub_2192CE75C(v39, v41, v42, v69);
        sub_21885AB78(v42);

        v38 = v72;
        sub_219689464(v37, v44, 0, v72);
        sub_2192CF630(v44, sub_2192CF5FC);
        (*(v68 + 8))(v26, v23);
        goto LABEL_11;
      }

      (*(v68 + 8))(v26, v23);
    }

    v38 = v72;
    v70(v72, 1, 1, v33);
    v35 = v88;
LABEL_11:
    sub_218B58ECC(v38, v71);
    goto LABEL_12;
  }

  sub_2192CF630(v21, sub_2188118D4);
  v35 = v88;
LABEL_12:
  v45 = v35;
  v46 = *(v35 + 528);
  v47 = __swift_project_boxed_opaque_existential_1((v45 + 504), v46);
  v48 = v79;
  v49 = sub_219BF1024();
  v51 = v50;
  MEMORY[0x28223BE20](v49);
  v53 = v67 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v54 + 16))(v53, v47, v46);
  v55 = v91;
  sub_218A75968(v49, v51, v53, v46, v91);
  v88 = *(v45 + 32);
  v56 = v81;
  v57 = v83;
  (*(v81 + 16))(v90, v48, v83);
  v58 = v84;
  v59 = v85;
  v60 = v86;
  (*(v85 + 16))(v84, v80, v86);
  sub_2192DC084(v55, v89, sub_218B59134);
  v61 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v62 = (v78 + *(v59 + 80) + v61) & ~*(v59 + 80);
  v63 = (v82 + *(v76 + 80) + v62) & ~*(v76 + 80);
  v64 = (v77 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  (*(v56 + 32))(v65 + v61, v90, v57);
  (*(v59 + 32))(v65 + v62, v58, v60);
  sub_2192DCD38(v89, v65 + v63, sub_218B59134);
  *(v65 + v64) = v73;

  sub_219BDD154();

  sub_2192CF630(v91, sub_218B59134);
  (*(v74 + 8))(v87, v75);
}

uint64_t sub_2192C12C8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v88 = a4;
  v77 = a3;
  v82 = a2;
  v83 = a1;
  sub_218B58D38(0);
  v96 = v5;
  v87 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v86 = v6;
  v95 = v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_219BF0AC4();
  v85 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v81 = v7;
  v92 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  v79 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v91 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v10;
  MEMORY[0x28223BE20](v9);
  v93 = v70 - v11;
  v98 = sub_219BDEF94();
  v84 = *(v98 - 8);
  v12 = MEMORY[0x28223BE20](v98);
  v90 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v13;
  MEMORY[0x28223BE20](v12);
  v97 = v70 - v14;
  sub_2192CF5FC(0);
  MEMORY[0x28223BE20](v15 - 8);
  v71 = v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D8C(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v20);
  v74 = v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188118D4(0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v26 = v25;
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v29 = v70 - v28;
  sub_21880B928();
  v31 = v30;
  v76 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v4;
  v99[0] = v4[5];
  sub_2187DD900();
  sub_2187DD9B8(&qword_280EE5530, 255, sub_2187DD900);
  sub_219BE7B94();
  v75 = swift_allocBox();
  v35 = v34;
  v36 = sub_219BE16D4();
  v37 = *(v36 - 8);
  v73 = *(v37 + 56);
  v72 = v37 + 56;
  (v73)(v35, 1, 1, v36);
  v77 = v31;
  v88 = v33;
  sub_219BEB244();
  if ((*(v27 + 48))(v24, 1, v26) == 1)
  {
    sub_2192CF630(v24, sub_2188118D4);
  }

  else
  {
    (*(v27 + 32))(v29, v24, v26);
    sub_219BE6934();
    sub_21968BE24(v99[0], v19);

    v38 = sub_219BE16E4();
    if ((*(*(v38 - 8) + 48))(v19, 1, v38) == 1)
    {
      (*(v27 + 8))(v29, v26);
      sub_2192CF630(v19, sub_218B58D8C);
      v39 = v74;
      (v73)(v74, 1, 1, v36);
    }

    else
    {
      sub_2192CF630(v19, sub_218B58D8C);
      sub_218718690((v89 + 15), v99);
      v70[1] = __swift_project_boxed_opaque_existential_1(v99, v99[3]);
      v70[0] = sub_219BE6944();
      type metadata accessor for TodayModel(0);
      sub_2186EB3E8();
      sub_2187DD9B8(&qword_280EDF9E0, 255, type metadata accessor for TodayModel);
      v40 = sub_219BF00E4();

      __swift_destroy_boxed_opaque_existential_1(v99);
      if (v40 == sub_219BDAF14())
      {
        (*(v27 + 8))(v29, v26);
        v39 = v74;
        (v73)(v74, 1, 1, v36);
      }

      else
      {
        v73 = sub_219BE6944();
        v42 = v41;
        v43 = sub_218827310();
        if ((~v43 & 0xF000000000000007) != 0)
        {
          type metadata accessor for TodayFeedServiceConfig();
          sub_2187DD9B8(&qword_280EC6590, 255, type metadata accessor for TodayFeedServiceConfig);
          v44 = sub_219BEE774();
          sub_21885AB78(v43);
          v43 = v44;
        }

        v45 = v71;
        sub_2192CE75C(v73, v42, v43, v71);
        sub_21885AB78(v43);

        v39 = v74;
        sub_219689464(v40, v45, 0, v74);
        sub_2192CF630(v45, sub_2192CF5FC);
        (*(v27 + 8))(v29, v26);
      }
    }

    sub_218B58ECC(v39, v35);
  }

  v46 = v89;
  __swift_project_boxed_opaque_existential_1(v89 + 43, v89[46]);
  v47 = v82;
  v48 = [sub_219BF0AA4() identifier];
  swift_unknownObjectRelease();
  sub_219BF5414();

  v49 = sub_219BF3424();
  v74 = v49;

  sub_219BF0AA4();
  swift_getObjectType();
  sub_2194CA7FC(v49, v97);
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v46 + 58, v46[61]);
  sub_219BF0A04();
  LODWORD(v73) = sub_219BF4774();

  v50 = v46[66];
  v51 = __swift_project_boxed_opaque_existential_1(v46 + 63, v50);
  v52 = sub_219BF0A64();
  v54 = v53;
  MEMORY[0x28223BE20](v52);
  v56 = v70 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v57 + 16))(v56, v51, v50);
  v58 = v93;
  sub_218A75968(v52, v54, v56, v50, v93);
  v89 = v46[4];
  v59 = v84;
  (*(v84 + 16))(v90, v97, v98);
  v60 = v85;
  (*(v85 + 16))(v92, v47, v94);
  sub_2192DC084(v58, v91, sub_218B59134);
  v61 = v87;
  (*(v87 + 16))(v95, v83, v96);
  v62 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v63 = v62 + v78;
  v64 = (*(v60 + 80) + v62 + v78 + 1) & ~*(v60 + 80);
  v65 = (v81 + *(v79 + 80) + v64) & ~*(v79 + 80);
  v66 = (v80 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = (*(v61 + 80) + v66 + 8) & ~*(v61 + 80);
  v68 = swift_allocObject();
  (*(v59 + 32))(v68 + v62, v90, v98);
  *(v68 + v63) = v73 & 1;
  (*(v60 + 32))(v68 + v64, v92, v94);
  sub_2192DCD38(v91, v68 + v65, sub_218B59134);
  *(v68 + v66) = v75;
  (*(v61 + 32))(v68 + v67, v95, v96);

  sub_219BDD154();

  sub_2192CF630(v93, sub_218B59134);
  (*(v59 + 8))(v97, v98);
  (*(v76 + 8))(v88, v77);
}

uint64_t sub_2192C2084(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v66 = a2;
  v67 = a4;
  v61 = a3;
  v63 = a1;
  sub_218B58D38(0);
  v65 = v5;
  v60 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v62 = v6;
  v64 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192CF5FC(0);
  MEMORY[0x28223BE20](v7 - 8);
  v54 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D8C(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v12);
  v57 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188118D4(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = v53 - v20;
  sub_21880B928();
  v23 = v22;
  v59 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v4 + 40);
  v68 = v4;
  v69[0] = v26;
  sub_2187DD900();
  sub_2187DD9B8(&qword_280EE5530, 255, sub_2187DD900);
  sub_219BE7B94();
  v58 = swift_allocBox();
  v28 = v27;
  v29 = sub_219BE16D4();
  v55 = *(*(v29 - 8) + 56);
  v56 = v28;
  v55(v28, 1, 1, v29);
  v61 = v23;
  v30 = v19;
  v67 = v25;
  sub_219BEB244();
  if ((*(v19 + 48))(v16, 1, v18) != 1)
  {
    (*(v19 + 32))(v21, v16, v18);
    sub_219BE6934();
    sub_21968BE24(v69[0], v11);

    v31 = sub_219BE16E4();
    if ((*(*(v31 - 8) + 48))(v11, 1, v31) == 1)
    {
      (*(v19 + 8))(v21, v18);
      sub_2192CF630(v11, sub_218B58D8C);
    }

    else
    {
      sub_2192CF630(v11, sub_218B58D8C);
      sub_218718690(v68 + 120, v69);
      v53[2] = __swift_project_boxed_opaque_existential_1(v69, v69[3]);
      v53[1] = sub_219BE6944();
      type metadata accessor for TodayModel(0);
      sub_2186EB3E8();
      sub_2187DD9B8(&qword_280EDF9E0, 255, type metadata accessor for TodayModel);
      v32 = sub_219BF00E4();

      __swift_destroy_boxed_opaque_existential_1(v69);
      if (v32 != sub_219BDAF14())
      {
        v34 = sub_219BE6944();
        v36 = v35;
        v37 = sub_218827310();
        v38 = v30;
        if ((~v37 & 0xF000000000000007) != 0)
        {
          type metadata accessor for TodayFeedServiceConfig();
          sub_2187DD9B8(&qword_280EC6590, 255, type metadata accessor for TodayFeedServiceConfig);
          v39 = sub_219BEE774();
          sub_21885AB78(v37);
          v37 = v39;
        }

        v33 = v57;
        v40 = v54;
        sub_2192CE75C(v34, v36, v37, v54);
        sub_21885AB78(v37);

        sub_219689464(v32, v40, 0, v33);
        sub_2192CF630(v40, sub_2192CF5FC);
        (*(v38 + 8))(v21, v18);
        goto LABEL_11;
      }

      (*(v19 + 8))(v21, v18);
    }

    v33 = v57;
    v55(v57, 1, 1, v29);
LABEL_11:
    sub_218B58ECC(v33, v56);
    goto LABEL_12;
  }

  sub_2192CF630(v16, sub_2188118D4);
LABEL_12:
  v41 = v68;
  __swift_project_boxed_opaque_existential_1((v68 + 464), *(v68 + 488));
  v42 = v66;
  v43 = [v66 identifier];
  sub_219BF5414();

  LODWORD(v56) = sub_219BF4774();

  v57 = *(v41 + 32);
  v44 = v60;
  v45 = v64;
  v46 = v65;
  (*(v60 + 16))(v64, v63, v65);
  v47 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v48 = (v62 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  (*(v44 + 32))(v49 + v47, v45, v46);
  *(v49 + v48) = v42;
  v50 = v49 + ((v48 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v50 = v41;
  *(v50 + 8) = v56 & 1;
  *(v49 + ((v48 + 31) & 0xFFFFFFFFFFFFFFF8)) = v58;
  v51 = v42;

  sub_219BDD154();

  (*(v59 + 8))(v67, v61);
}

uint64_t sub_2192C293C(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  sub_2192CF5FC(0);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D8C(0);
  MEMORY[0x28223BE20](v5 - 8);
  v55 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v7 - 8);
  v58 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE16D4();
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x28223BE20](v9);
  v52 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928();
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11);
  v61 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v48 - v16;
  sub_2188118D4(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = &v48 - v24;
  v51 = v2;
  v53 = *(v2 + 40);
  v63[0] = v53;
  sub_2187DD900();
  v27 = v26;
  sub_2187DD9B8(&qword_280EE5530, 255, sub_2187DD900);
  v54 = v27;
  sub_219BE7B94();
  sub_219BF4B14();
  sub_219BEB244();
  v28 = v23;

  v29 = *(v13 + 8);
  v56 = v13 + 8;
  v57 = v12;
  v29(v17, v12);
  if ((*(v28 + 48))(v20, 1, v22) == 1)
  {
    v30 = sub_2188118D4;
    v31 = v20;
    return sub_2192CF630(v31, v30);
  }

  v49 = v28;
  (*(v28 + 32))(v25, v20, v22);
  v63[5] = v53;
  v32 = v61;
  sub_219BE7B94();
  sub_219BE6934();
  v33 = v55;
  sub_21968BE24(v63[0], v55);

  v34 = sub_219BE16E4();
  if ((*(*(v34 - 8) + 48))(v33, 1, v34) == 1)
  {
    v29(v32, v57);
    sub_2192CF630(v33, sub_218B58D8C);
LABEL_7:
    v37 = v58;
    v38 = v59;
    v39 = v60;
    (*(v59 + 56))(v58, 1, 1, v60);
    goto LABEL_11;
  }

  v54 = v29;
  sub_2192CF630(v33, sub_218B58D8C);
  sub_218718690(v51 + 120, v63);
  __swift_project_boxed_opaque_existential_1(v63, v63[3]);
  sub_219BE6944();
  type metadata accessor for TodayModel(0);
  sub_2186EB3E8();
  sub_2187DD9B8(&qword_280EDF9E0, 255, type metadata accessor for TodayModel);
  v35 = v61;
  v36 = sub_219BF00E4();

  __swift_destroy_boxed_opaque_existential_1(v63);
  if (v36 == sub_219BDAF14())
  {
    v54(v35, v57);
    goto LABEL_7;
  }

  v40 = sub_219BE6944();
  v42 = v41;
  v43 = sub_218827310();
  if ((~v43 & 0xF000000000000007) != 0)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2187DD9B8(&qword_280EC6590, 255, type metadata accessor for TodayFeedServiceConfig);
    v44 = sub_219BEE774();
    sub_21885AB78(v43);
    v43 = v44;
  }

  v37 = v58;
  v45 = v50;
  sub_2192CE75C(v40, v42, v43, v50);
  sub_21885AB78(v43);

  sub_219689464(v36, v45, 0, v37);
  sub_2192CF630(v45, sub_2192CF5FC);
  v54(v61, v57);
  v38 = v59;
  v39 = v60;
LABEL_11:
  if ((*(v38 + 48))(v37, 1, v39) == 1)
  {
    (*(v49 + 8))(v25, v22);
    v30 = sub_218B58D58;
    v31 = v37;
    return sub_2192CF630(v31, v30);
  }

  v47 = v52;
  (*(v38 + 32))(v52, v37, v39);
  sub_219BF4B54();
  sub_2187DD9B8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
  sub_219BDD1F4();

  (*(v38 + 8))(v47, v39);
  return (*(v49 + 8))(v25, v22);
}

uint64_t sub_2192C31B8(void (*a1)(char *, char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v178 = a2;
  v179 = a5;
  v181 = a4;
  v182 = a3;
  v180 = a1;
  v157 = sub_219BE09E4();
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v155 = &v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_219BDF104();
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v152 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FEC(0);
  MEMORY[0x28223BE20](v7 - 8);
  v169 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_219BE0724();
  v177 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v143 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_219BE1774();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_219BEFBD4();
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v163 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_219BDF1A4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v166 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_219BDFCE4();
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v160 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE0D44();
  v175 = *(v14 - 8);
  v176 = v14;
  MEMORY[0x28223BE20](v14);
  v174 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BDF0E4();
  v172 = *(v16 - 8);
  v173 = v16;
  MEMORY[0x28223BE20](v16);
  v171 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D3BC60(0);
  MEMORY[0x28223BE20](v18 - 8);
  v149 = &v130 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5A830(0);
  MEMORY[0x28223BE20](v20 - 8);
  v139 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v22 - 8);
  v159 = &v130 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_219BDF474();
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v132 = &v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_219BDF094();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v136 = &v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192CF5FC(0);
  MEMORY[0x28223BE20](v26 - 8);
  v133 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D8C(0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v130 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928();
  v145 = v31;
  v144 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v130 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v34 - 8);
  v147 = &v130 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_219BE16D4();
  v146 = *(v148 - 8);
  v36 = MEMORY[0x28223BE20](v148);
  v134 = &v130 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v135 = &v130 - v38;
  v39 = sub_219BE0444();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = &v130 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DCACC(0);
  MEMORY[0x28223BE20](v43 - 8);
  v45 = &v130 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188118D4(0);
  MEMORY[0x28223BE20](v46 - 8);
  v48 = &v130 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v50 = v49;
  v51 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v53 = &v130 - v52;
  sub_2192DC084(v178, v48, sub_2188118D4);
  if ((*(v51 + 48))(v48, 1, v50) == 1)
  {
    sub_2192CF630(v48, sub_2188118D4);
    goto LABEL_22;
  }

  v131 = v51;
  (*(v51 + 32))(v53, v48, v50);
  sub_2187E2B78(0);
  sub_219BE7564();
  sub_218853400();
  (*(*(v54 - 8) + 56))(v45, 0, 1, v54);
  sub_2187DD9B8(&qword_280EDF9E8, 255, type metadata accessor for TodayModel);
  v158 = v50;
  v178 = v53;
  v55 = sub_219BE6A34();
  result = sub_2192CF630(v45, sub_2192DCACC);
  if (v55 < 0xFFFFFFFF80000000)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v55 > 0x7FFFFFFF)
  {
LABEL_39:
    __break(1u);
    return result;
  }

  sub_219BE0434();
  v184 = v39;
  v185 = sub_2187DD9B8(&unk_280EE8400, 255, MEMORY[0x277D2E530]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v183);
  (*(v40 + 16))(boxed_opaque_existential_1, v42, v39);
  swift_beginAccess();
  sub_2199D5C50(&v183, 0xD000000000000013, 0x8000000219CE8F20);
  swift_endAccess();
  (*(v40 + 8))(v42, v39);
  sub_219BE7594();
  v58 = v178;
  sub_219BE6934();
  sub_21968BE24(v183, v30);

  v59 = sub_219BE16E4();
  if ((*(*(v59 - 8) + 48))(v30, 1, v59) == 1)
  {
    (*(v144 + 8))(v33, v145);
    sub_2192CF630(v30, sub_218B58D8C);
    v60 = v146;
    v61 = v147;
    v62 = v148;
    (*(v146 + 56))(v147, 1, 1, v148);
    v63 = v149;
  }

  else
  {
    sub_2192CF630(v30, sub_218B58D8C);
    sub_218718690(v181 + 120, &v183);
    __swift_project_boxed_opaque_existential_1(&v183, v184);
    sub_219BE6944();
    type metadata accessor for TodayModel(0);
    sub_2186EB3E8();
    sub_2187DD9B8(&qword_280EDF9E0, 255, type metadata accessor for TodayModel);
    v64 = sub_219BF00E4();

    __swift_destroy_boxed_opaque_existential_1(&v183);
    if (v64 == sub_219BDAF14())
    {
      (*(v144 + 8))(v33, v145);
      v60 = v146;
      v61 = v147;
      v62 = v148;
      (*(v146 + 56))(v147, 1, 1, v148);
      v63 = v149;
    }

    else
    {
      v65 = sub_219BE6944();
      v67 = v66;
      v68 = sub_218827310();
      v63 = v149;
      if ((~v68 & 0xF000000000000007) != 0)
      {
        type metadata accessor for TodayFeedServiceConfig();
        sub_2187DD9B8(&qword_280EC6590, 255, type metadata accessor for TodayFeedServiceConfig);
        v69 = sub_219BEE774();
        sub_21885AB78(v68);
        v68 = v69;
      }

      v70 = v133;
      sub_2192CE75C(v65, v67, v68, v133);
      sub_21885AB78(v68);

      v61 = v147;
      v58 = v178;
      sub_219689464(v64, v70, 0, v147);
      sub_2192CF630(v70, sub_2192CF5FC);
      (*(v144 + 8))(v33, v145);
      v62 = v148;
      v60 = v146;
    }
  }

  if ((*(v60 + 48))(v61, 1, v62) == 1)
  {
    sub_2192CF630(v61, sub_218B58D58);
  }

  else
  {
    v71 = v135;
    (*(v60 + 32))(v135, v61, v62);
    v180 = *(v60 + 16);
    v180(v134, v71, v62);
    v72 = v136;
    sub_219BDF084();
    v73 = v138;
    v184 = v138;
    v185 = sub_2187DD9B8(&unk_280EE88C0, 255, MEMORY[0x277D2D888]);
    v74 = __swift_allocate_boxed_opaque_existential_1(&v183);
    v75 = v137;
    (*(v137 + 16))(v74, v72, v73);
    swift_beginAccess();
    sub_2199D5C50(&v183, 0x4470756F72476441, 0xEB00000000617461);
    swift_endAccess();
    (*(v75 + 8))(v72, v73);
    v58 = v178;
    v184 = v62;
    v185 = sub_2187DD9B8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
    v76 = __swift_allocate_boxed_opaque_existential_1(&v183);
    v180(v76, v71, v62);
    swift_beginAccess();
    sub_2199D5C50(&v183, 0x74614470756F7247, 0xE900000000000061);
    swift_endAccess();
    (*(v60 + 8))(v71, v62);
  }

  v77 = v159;
  v78 = v158;
  sub_219BE6934();
  sub_2193B5F80(v183, v63);

  v79 = type metadata accessor for TodayFeedGroup();
  if ((*(*(v79 - 8) + 48))(v63, 1, v79) == 1)
  {
    sub_2192CF630(v63, sub_218D3BC60);
    v80 = v131;
LABEL_19:
    (*(v150 + 56))(v77, 1, 1, v151);
    goto LABEL_20;
  }

  v81 = v139;
  sub_21882D12C(v139);
  sub_2192CF630(v63, type metadata accessor for TodayFeedGroup);
  v82 = sub_219BF1904();
  v83 = *(v82 - 8);
  if ((*(v83 + 48))(v81, 1, v82) == 1)
  {
    sub_2192CF630(v81, sub_218B5A830);
    v80 = v131;
    v78 = v158;
    goto LABEL_19;
  }

  v123 = [v179 identifier];
  sub_219BF5414();

  v77 = v159;
  sub_219BF17B4();
  v58 = v178;

  (*(v83 + 8))(v81, v82);
  v124 = v150;
  v125 = v151;
  v126 = (*(v150 + 48))(v77, 1, v151);
  v80 = v131;
  v78 = v158;
  if (v126 != 1)
  {
    v127 = v132;
    (*(v124 + 32))(v132, v77, v125);
    v184 = v125;
    v185 = sub_2187DD9B8(&unk_280EE87B0, 255, MEMORY[0x277D2DAB8]);
    v128 = __swift_allocate_boxed_opaque_existential_1(&v183);
    (*(v124 + 16))(v128, v127, v125);
    swift_beginAccess();
    sub_2199D5C50(&v183, 0x7261696C69787541, 0xED00006174614479);
    swift_endAccess();
    v129 = v127;
    v58 = v178;
    (*(v124 + 8))(v129, v125);
    goto LABEL_21;
  }

LABEL_20:
  sub_2192CF630(v77, sub_218B58F30);
LABEL_21:
  (*(v80 + 8))(v58, v78);
LABEL_22:
  v84 = v179;
  swift_getObjectType();
  v85 = v171;
  sub_219BF67F4();
  v86 = v173;
  v184 = v173;
  v185 = sub_2187DD9B8(&qword_280EE88B0, 255, MEMORY[0x277D2D8A8]);
  v87 = __swift_allocate_boxed_opaque_existential_1(&v183);
  v88 = v172;
  (*(v172 + 16))(v87, v85, v86);
  swift_beginAccess();
  sub_2199D5C50(&v183, 0x44656C6369747241, 0xEB00000000617461);
  swift_endAccess();
  (*(v88 + 8))(v85, v86);
  v89 = v174;
  sub_219BF6834();
  v90 = v176;
  v184 = v176;
  v185 = sub_2187DD9B8(&qword_280EE8190, 255, MEMORY[0x277D2ECA0]);
  v91 = __swift_allocate_boxed_opaque_existential_1(&v183);
  v92 = v175;
  (*(v175 + 16))(v91, v89, v90);
  swift_beginAccess();
  sub_2199D5C50(&v183, 0xD00000000000001ALL, 0x8000000219CE8EE0);
  swift_endAccess();
  (*(v92 + 8))(v89, v90);
  sub_2187E2B78(0);
  sub_2187DD9B8(&qword_280EDF9E8, 255, type metadata accessor for TodayModel);
  result = sub_219BE75B4();
  v93 = v177;
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v94 = v160;
  sub_219BDFCD4();
  v95 = v162;
  v184 = v162;
  v185 = sub_2187DD9B8(&unk_280EE8590, 255, MEMORY[0x277D2E058]);
  v96 = __swift_allocate_boxed_opaque_existential_1(&v183);
  v97 = v161;
  (*(v161 + 16))(v96, v94, v95);
  swift_beginAccess();
  sub_2199D5C50(&v183, 0xD000000000000010, 0x8000000219CE8F00);
  swift_endAccess();
  (*(v97 + 8))(v94, v95);
  v98 = v164;
  v99 = v163;
  v100 = v165;
  (*(v164 + 104))(v163, *MEMORY[0x277D329E0], v165);
  v101 = v166;
  sub_219BE02C4();
  (*(v98 + 8))(v99, v100);
  v102 = v168;
  v184 = v168;
  v185 = sub_2187DD9B8(&unk_280EE8850, 255, MEMORY[0x277D2D950]);
  v103 = __swift_allocate_boxed_opaque_existential_1(&v183);
  v104 = v167;
  (*(v167 + 16))(v103, v101, v102);
  swift_beginAccess();
  sub_2199D5C50(&v183, 0x4465636E65696353, 0xEB00000000617461);
  swift_endAccess();
  (*(v104 + 8))(v101, v102);
  v105 = [v84 scoreProfile];
  if (v105)
  {
    v106 = v105;
    if ([v105 hasShadowScores])
    {
      [v106 shadowTabiScore];
      [v106 shadowAgedPersonalizationScore];
      v107 = v140;
      sub_219BE1764();
      v108 = v142;
      v184 = v142;
      v185 = sub_2187DD9B8(&unk_280EE7F40, 255, MEMORY[0x277D2F8F0]);
      v109 = __swift_allocate_boxed_opaque_existential_1(&v183);
      v110 = v141;
      (*(v141 + 16))(v109, v107, v108);
      swift_beginAccess();
      sub_2199D5C50(&v183, 0x74614465726F6353, 0xE900000000000061);
      swift_endAccess();

      (*(v110 + 8))(v107, v108);
    }

    else
    {
    }
  }

  v111 = v169;
  sub_219BF6824();
  v112 = v170;
  if ((*(v93 + 48))(v111, 1, v170) == 1)
  {
    sub_2192CF630(v111, sub_218B58FEC);
  }

  else
  {
    v113 = v143;
    (*(v93 + 32))(v143, v111, v112);
    v184 = v112;
    v185 = sub_2187DD9B8(&unk_27CC0DC50, 255, MEMORY[0x277D2E738]);
    v114 = __swift_allocate_boxed_opaque_existential_1(&v183);
    (*(v93 + 16))(v114, v113, v112);
    swift_beginAccess();
    sub_2199D5C50(&v183, 0xD000000000000014, 0x8000000219CE8F60);
    swift_endAccess();
    (*(v93 + 8))(v113, v112);
  }

  result = [v84 sourceChannel];
  if (result)
  {
    v115 = v152;
    sub_219BE01F4();
    v116 = v154;
    v184 = v154;
    v185 = sub_2187DD9B8(&unk_280EE8890, 255, MEMORY[0x277D2D8B8]);
    v117 = __swift_allocate_boxed_opaque_existential_1(&v183);
    v118 = v153;
    (*(v153 + 16))(v117, v115, v116);
    swift_beginAccess();
    sub_2199D5C50(&v183, 0x446C656E6E616843, 0xEB00000000617461);
    swift_endAccess();
    (*(v118 + 8))(v115, v116);
    v119 = v155;
    sub_219BE01E4();
    v120 = v157;
    v184 = v157;
    v185 = sub_2187DD9B8(&qword_280EE8270, 255, MEMORY[0x277D2E9C0]);
    v121 = __swift_allocate_boxed_opaque_existential_1(&v183);
    v122 = v156;
    (*(v156 + 16))(v121, v119, v120);
    swift_beginAccess();
    sub_2199D5C50(&v183, 0xD000000000000016, 0x8000000219CE8F40);
    swift_endAccess();
    swift_unknownObjectRelease();
    return (*(v122 + 8))(v119, v120);
  }

  return result;
}

uint64_t sub_2192C51A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v117 = a6;
  v121 = a4;
  v134 = a3;
  v125 = a1;
  v114 = sub_219BDBD34();
  v119 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v118 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v8 - 8);
  v116 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_219BDF4A4();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v102 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v11 - 8);
  v100 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_219BE16D4();
  v105 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v93 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D3BC60(0);
  MEMORY[0x28223BE20](v14 - 8);
  v99 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5A830(0);
  MEMORY[0x28223BE20](v16 - 8);
  v92 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v18 - 8);
  v94 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_219BDF474();
  v106 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v91 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_219BE0444();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DCACC(0);
  MEMORY[0x28223BE20](v22 - 8);
  v103 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188118D4(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v122 = v27;
  v124 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v115 = &v90 - v28;
  v120 = sub_219BDFCE4();
  v29 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v31 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_219BDB954();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v90 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_219BDF464();
  v110 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v38 = &v90 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = swift_projectBox();
  v90 = a2;
  sub_219BF1044();
  sub_219BDB804();
  (*(v33 + 8))(v35, v32);
  sub_219BDF454();
  sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v40 = v39;
  v41 = sub_219BDCD44();
  v42 = *(v41 - 8);
  v43 = *(v42 + 72);
  v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v129 = *(v42 + 80);
  v130 = v43;
  v45 = swift_allocObject();
  v126 = xmmword_219C09BA0;
  *(v45 + 16) = xmmword_219C09BA0;
  v46 = *(v42 + 104);
  v128 = *MEMORY[0x277CEAD18];
  v132 = v42 + 104;
  v133 = v41;
  v127 = v46;
  v46(v45 + v44);
  sub_2187DD9B8(&qword_280EE87C0, 255, MEMORY[0x277D2DAA8]);
  v131 = "gapOnscreenTimer";
  v109 = v38;
  v111 = v36;
  sub_219BDCCC4();

  sub_2187E2B78(0);
  v48 = v47;
  sub_2187DD9B8(&qword_280EDF9E8, 255, type metadata accessor for TodayModel);
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_219BDFCD4();
  v123 = v40;
  v50 = swift_allocObject();
  *(v50 + 16) = v126;
  v127(v50 + v44, v128, v133);
  sub_2187DD9B8(&unk_280EE8590, 255, MEMORY[0x277D2E058]);
  v51 = v120;
  sub_219BDCCC4();

  (*(v29 + 8))(v31, v51);
  sub_2192DC084(v121, v26, sub_2188118D4);
  v52 = v124;
  v53 = v122;
  v54 = (*(v124 + 48))(v26, 1, v122);
  v108 = v48;
  v107 = v44;
  if (v54 == 1)
  {
    sub_2192CF630(v26, sub_2188118D4);
    v56 = v118;
    v55 = v119;
    v57 = v113;
    v58 = v112;
    goto LABEL_16;
  }

  (*(v52 + 32))(v115, v26, v53);
  v59 = v103;
  sub_219BE7564();
  sub_218853400();
  (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
  v61 = sub_219BE6A34();
  result = sub_2192CF630(v59, sub_2192DCACC);
  if (v61 < 0xFFFFFFFF80000000)
  {
    goto LABEL_24;
  }

  if (v61 > 0x7FFFFFFF)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v62 = v95;
  sub_219BE0434();
  v63 = swift_allocObject();
  *(v63 + 16) = v126;
  v127(v63 + v44, v128, v133);
  sub_2187DD9B8(&unk_280EE8400, 255, MEMORY[0x277D2E530]);
  v64 = v97;
  sub_219BDCCC4();

  (*(v96 + 8))(v62, v64);
  sub_219BE6934();
  v65 = v99;
  sub_2193B5F80(v135, v99);

  v66 = type metadata accessor for TodayFeedGroup();
  if ((*(*(v66 - 8) + 48))(v65, 1, v66) == 1)
  {
    sub_2192CF630(v65, sub_218D3BC60);
    v56 = v118;
    v55 = v119;
    v67 = v101;
    v68 = v100;
LABEL_11:
    v73 = v94;
    (*(v106 + 56))(v94, 1, 1, v104);
    v57 = v113;
    v58 = v112;
    v74 = v105;
LABEL_12:
    sub_2192CF630(v73, sub_218B58F30);
    goto LABEL_13;
  }

  v69 = v92;
  sub_21882D12C(v92);
  sub_2192CF630(v65, type metadata accessor for TodayFeedGroup);
  v70 = sub_219BF1904();
  v71 = *(v70 - 8);
  v72 = (*(v71 + 48))(v69, 1, v70);
  v56 = v118;
  v55 = v119;
  v67 = v101;
  v68 = v100;
  if (v72 == 1)
  {
    sub_2192CF630(v69, sub_218B5A830);
    goto LABEL_11;
  }

  sub_219BF1004();
  v73 = v94;
  sub_219BF17B4();

  (*(v71 + 8))(v69, v70);
  v86 = v104;
  v87 = (*(v106 + 48))(v73, 1, v104);
  v57 = v113;
  v58 = v112;
  v74 = v105;
  if (v87 == 1)
  {
    goto LABEL_12;
  }

  (*(v106 + 32))(v91, v73, v86);
  v88 = v107;
  v89 = swift_allocObject();
  *(v89 + 16) = v126;
  v127(v89 + v88, v128, v133);
  sub_2187DD9B8(&unk_280EE87B0, 255, MEMORY[0x277D2DAB8]);
  sub_219BDCCC4();
  v74 = v105;

  (*(v106 + 8))(v91, v104);
LABEL_13:
  v75 = v98;
  swift_beginAccess();
  sub_2192DC084(v75, v68, sub_218B58D58);
  v76 = v67;
  if ((*(v74 + 48))(v68, 1, v67) == 1)
  {
    (*(v124 + 8))(v115, v53);
    sub_2192CF630(v68, sub_218B58D58);
  }

  else
  {
    v77 = v93;
    (*(v74 + 32))(v93, v68, v67);
    v78 = v107;
    v79 = swift_allocObject();
    *(v79 + 16) = v126;
    v127(v79 + v78, v128, v133);
    sub_2187DD9B8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
    sub_219BDCCC4();

    (*(v74 + 8))(v77, v76);
    (*(v124 + 8))(v115, v122);
  }

LABEL_16:
  v80 = v116;
  sub_2192DC084(v117, v116, sub_218B59134);
  if ((*(v58 + 48))(v80, 1, v57) == 1)
  {
    sub_2192CF630(v80, sub_218B59134);
  }

  else
  {
    v81 = v102;
    (*(v58 + 32))(v102, v80, v57);
    v82 = v107;
    v83 = swift_allocObject();
    *(v83 + 16) = v126;
    v127(v83 + v82, v128, v133);
    sub_2187DD9B8(&unk_280EE8790, 255, MEMORY[0x277D2DAD8]);
    sub_219BDCCC4();

    (*(v58 + 8))(v81, v57);
  }

  sub_219BE08D4();
  sub_219BE75A4();
  sub_2187DD9B8(&qword_280EE82B0, 255, MEMORY[0x277D2E8B8]);
  sub_219BDCC64();
  v84 = *(v55 + 8);
  v85 = v114;
  v84(v56, v114);
  sub_219BE7574();
  sub_219BDCC74();
  v84(v56, v85);
  return (*(v110 + 8))(v109, v111);
}

uint64_t sub_2192C65C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v107 = a6;
  v113 = a4;
  v126 = a3;
  v127 = a1;
  v105 = sub_219BDBD34();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v103 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v8 - 8);
  v106 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_219BDF4A4();
  v108 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v100 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v11 - 8);
  v102 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_219BE16D4();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v89 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D3BC60(0);
  MEMORY[0x28223BE20](v14 - 8);
  v94 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5A830(0);
  MEMORY[0x28223BE20](v16 - 8);
  v88 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v18 - 8);
  v95 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_219BDF474();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v87 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_219BE0444();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DCACC(0);
  MEMORY[0x28223BE20](v22 - 8);
  v101 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188118D4(0);
  MEMORY[0x28223BE20](v24 - 8);
  v112 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v116 = *(v26 - 8);
  v117 = v26;
  MEMORY[0x28223BE20](v26);
  v115 = &v86 - v27;
  v111 = sub_219BDFCE4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_219BF1DF4();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_219BDF674();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v86 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = swift_projectBox();
  sub_219BEDA84();
  sub_219BF1DB4();
  (*(v30 + 8))(v32, v29);
  v86 = a2;
  sub_219BEDAC4();
  sub_219BDF664();
  sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v38 = v37;
  v39 = sub_219BDCD44();
  v40 = *(v39 - 8);
  v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v123 = *(v40 + 72);
  v124 = v38;
  v42 = swift_allocObject();
  v120 = xmmword_219C09BA0;
  *(v42 + 16) = xmmword_219C09BA0;
  v43 = *(v40 + 104);
  v122 = *MEMORY[0x277CEAD18];
  v125 = v39;
  v121 = v43;
  v43(v42 + v41);
  sub_2187DD9B8(&unk_280EE86E0, 255, MEMORY[0x277D2DC98]);
  v119 = "gapOnscreenTimer";
  sub_219BDCCC4();

  (*(v34 + 8))(v36, v33);
  sub_2187E2B78(0);
  v45 = v44;
  sub_2187DD9B8(&qword_280EDF9E8, 255, type metadata accessor for TodayModel);
  v118 = v45;
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v47 = v109;
  sub_219BDFCD4();
  v48 = swift_allocObject();
  *(v48 + 16) = v120;
  v121(v48 + v41, v122, v125);
  sub_2187DD9B8(&unk_280EE8590, 255, MEMORY[0x277D2E058]);
  v49 = v111;
  sub_219BDCCC4();

  (*(v110 + 8))(v47, v49);
  v50 = v112;
  sub_2192DC084(v113, v112, sub_2188118D4);
  v51 = v116;
  v52 = v117;
  if ((*(v116 + 48))(v50, 1, v117) == 1)
  {
    sub_2192CF630(v50, sub_2188118D4);
    v53 = v114;
LABEL_16:
    v72 = v108;
    v73 = v107;
    v74 = v106;
    goto LABEL_17;
  }

  (*(v51 + 32))(v115, v50, v52);
  v54 = v101;
  sub_219BE7564();
  sub_218853400();
  (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
  v56 = sub_219BE6A34();
  result = sub_2192CF630(v54, sub_2192DCACC);
  v53 = v114;
  if (v56 < 0xFFFFFFFF80000000)
  {
    goto LABEL_25;
  }

  if (v56 > 0x7FFFFFFF)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v57 = v90;
  sub_219BE0434();
  v58 = swift_allocObject();
  *(v58 + 16) = v120;
  v121(v58 + v41, v122, v125);
  sub_2187DD9B8(&unk_280EE8400, 255, MEMORY[0x277D2E530]);
  v59 = v92;
  sub_219BDCCC4();

  (*(v91 + 8))(v57, v59);
  sub_219BE6934();
  v60 = v94;
  sub_2193B5F80(v128, v94);

  v61 = type metadata accessor for TodayFeedGroup();
  if ((*(*(v61 - 8) + 48))(v60, 1, v61) == 1)
  {
    sub_2192CF630(v60, sub_218D3BC60);
    v62 = v98;
    v63 = v97;
LABEL_11:
    v68 = v95;
    (*(v96 + 56))(v95, 1, 1, v63);
    v69 = v99;
    v70 = v102;
LABEL_12:
    sub_2192CF630(v68, sub_218B58F30);
    goto LABEL_13;
  }

  v64 = v88;
  sub_21882D12C(v88);
  sub_2192CF630(v60, type metadata accessor for TodayFeedGroup);
  v65 = sub_219BF1904();
  v66 = *(v65 - 8);
  v67 = (*(v66 + 48))(v64, 1, v65);
  v62 = v98;
  v63 = v97;
  if (v67 == 1)
  {
    sub_2192CF630(v64, sub_218B5A830);
    goto LABEL_11;
  }

  sub_219BEDA94();
  v82 = v64;
  v68 = v95;
  sub_219BF17B4();
  v53 = v114;

  (*(v66 + 8))(v82, v65);
  v83 = v96;
  v84 = (*(v96 + 48))(v68, 1, v63);
  v69 = v99;
  v70 = v102;
  if (v84 == 1)
  {
    goto LABEL_12;
  }

  (*(v83 + 32))(v87, v68, v63);
  v85 = swift_allocObject();
  *(v85 + 16) = v120;
  v121(v85 + v41, v122, v125);
  sub_2187DD9B8(&unk_280EE87B0, 255, MEMORY[0x277D2DAB8]);
  sub_219BDCCC4();
  v70 = v102;

  (*(v83 + 8))(v87, v63);
LABEL_13:
  v71 = v93;
  swift_beginAccess();
  sub_2192DC084(v71, v70, sub_218B58D58);
  if ((*(v62 + 48))(v70, 1, v69) != 1)
  {
    v75 = v89;
    (*(v62 + 32))(v89, v70, v69);
    v76 = swift_allocObject();
    *(v76 + 16) = v120;
    v121(v76 + v41, v122, v125);
    sub_2187DD9B8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
    sub_219BDCCC4();

    (*(v62 + 8))(v75, v69);
    (*(v116 + 8))(v115, v117);
    goto LABEL_16;
  }

  (*(v116 + 8))(v115, v117);
  sub_2192CF630(v70, sub_218B58D58);
  v72 = v108;
  v73 = v107;
  v74 = v106;
LABEL_17:
  sub_2192DC084(v73, v74, sub_218B59134);
  if ((*(v72 + 48))(v74, 1, v53) == 1)
  {
    sub_2192CF630(v74, sub_218B59134);
  }

  else
  {
    v77 = v100;
    (*(v72 + 32))(v100, v74, v53);
    v78 = swift_allocObject();
    *(v78 + 16) = v120;
    v121(v78 + v41, v122, v125);
    sub_2187DD9B8(&unk_280EE8790, 255, MEMORY[0x277D2DAD8]);
    sub_219BDCCC4();

    (*(v72 + 8))(v77, v53);
  }

  sub_219BE0A64();
  v79 = v103;
  sub_219BE75A4();
  sub_2187DD9B8(&qword_280EE8230, 255, MEMORY[0x277D2EA20]);
  sub_219BDCC64();
  v80 = *(v104 + 8);
  v81 = v105;
  v80(v79, v105);
  sub_219BE7574();
  sub_219BDCC74();
  return (v80)(v79, v81);
}

void sub_2192C7978(char *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v59 = a1;
  v3 = sub_219BE8164();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v50 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BE8BE4();
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x28223BE20](v5);
  v53 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DD874(0, &qword_280EE5A30, MEMORY[0x277D6D618]);
  v56 = v7;
  v60 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - v8;
  sub_21880B928();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218747BDC(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BDC104();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v2;
  v61 = *(v2 + 40);
  sub_2187DD900();
  sub_2187DD9B8(&qword_280EE5530, 255, sub_2187DD900);
  v22 = v18;
  v23 = v19;
  sub_219BE7B94();
  sub_219BEB2F4();
  (*(v12 + 8))(v14, v11);
  if ((*(v19 + 48))(v17, 1, v22) == 1)
  {
    sub_2192CF630(v17, sub_218747BDC);
LABEL_17:
    sub_2192DD684(0);
    (*(*(v46 - 8) + 56))(v58, 1, 1, v46);
    return;
  }

  (*(v19 + 32))(v21, v17, v22);
  v24 = v57;
  v49 = *(v57 + 48);
  v61 = v49;
  sub_2187DDE2C(0);
  sub_2187DD9B8(&qword_280EE4C10, 255, sub_2187DDE2C);
  v25 = v9;
  sub_219BE91E4();
  v26 = v56;
  v27 = sub_219BE6554();
  v28 = *(v60 + 8);
  v59 = v25;
  v60 += 8;
  v28(v25, v26);
  if ((v27 & 1) == 0)
  {
    (*(v23 + 8))(v21, v22);
    goto LABEL_17;
  }

  v48 = v22;
  v29 = v53;
  sub_219BE9C34();
  v30 = sub_219BE8BD4();
  (*(v54 + 8))(v29, v55);
  if (!v30)
  {
    (*(v23 + 8))(v21, v48);
    goto LABEL_17;
  }

  sub_2192CF690(v24, v21, v30);
  x = v62.origin.x;
  y = v62.origin.y;
  width = v62.size.width;
  height = v62.size.height;
  MinY = CGRectGetMinY(v62);
  v61 = v49;
  v36 = v59;
  sub_219BE91E4();
  v37 = v50;
  sub_219BE6524();
  v28(v36, v26);
  sub_219BE8154();
  v39 = v38;
  (*(v51 + 8))(v37, v52);
  v40 = round(MinY / v39);
  if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  v41 = v58;
  if (v40 <= -2147483650.0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v40 >= 2147483650.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_2192DD684(0);
  v43 = v42;
  sub_219BDF614();
  v63.origin.x = x;
  v63.origin.y = y;
  v63.size.width = width;
  v63.size.height = height;
  v44 = CGRectGetWidth(v63);
  if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v44 <= -2147483650.0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v44 >= 2147483650.0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v64.origin.x = x;
  v64.origin.y = y;
  v64.size.width = width;
  v64.size.height = height;
  v45 = CGRectGetHeight(v64);
  if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v45 > -2147483650.0)
  {
    if (v45 < 2147483650.0)
    {
      sub_219BDEEE4();

      (*(v23 + 8))(v21, v48);
      (*(*(v43 - 8) + 56))(v41, 0, 1, v43);
      return;
    }

    goto LABEL_26;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_2192C80FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v17 = sub_219BDBD34();
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDF7C4();
  v20 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEBEF4();
  v16 = v7;
  sub_219BDF7B4();
  sub_219BDF624();
  sub_2187DD9B8(&unk_280EE8708, 255, MEMORY[0x277D2DC78]);
  sub_219BDCCC4();
  sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v8 = sub_219BDCD44();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09BA0;
  (*(v9 + 104))(v11 + v10, *MEMORY[0x277CEAD18], v8);
  sub_2187DD9B8(&qword_280EE8680, 255, MEMORY[0x277D2DD68]);
  sub_219BDCCC4();

  sub_219BE0A94();
  sub_2187E2B78(0);
  sub_219BE75A4();
  sub_2187DD9B8(&qword_280EE8228, 255, MEMORY[0x277D2EA68]);
  sub_219BDCC64();
  v12 = *(v19 + 8);
  v13 = v17;
  v12(v5, v17);
  sub_219BE7574();
  sub_219BDCC74();
  v12(v5, v13);
  return (*(v20 + 8))(v16, v15);
}

uint64_t sub_2192C8510(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v97 = a7;
  v94 = a4;
  v114 = a1;
  v105 = a9;
  v11 = sub_219BDBD34();
  v106 = *(v11 - 8);
  v107 = v11;
  MEMORY[0x28223BE20](v11);
  v104 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_219BDF3D4();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v81 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_219BDF3C4();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21922CB44();
  MEMORY[0x28223BE20](v15 - 8);
  v98 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BE3C04();
  v100 = *(v17 - 8);
  v101 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v78 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v99 = &v71 - v20;
  v77 = sub_219BE1314();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DC364(0);
  MEMORY[0x28223BE20](v22 - 8);
  v92 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_219BE3794();
  v91 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v88 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_219BE1324();
  v89 = *(v90 - 8);
  v25 = MEMORY[0x28223BE20](v90);
  v72 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v73 = &v71 - v27;
  v28 = sub_219BDF134();
  MEMORY[0x28223BE20](v28 - 8);
  v96 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_219BDF824();
  v87 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v85 = &v71 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_219BE06D4();
  v95 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v71 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_219BE34F4();

  v102 = a2;
  v103 = a3;
  sub_219BE06C4();
  sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v109 = v34;
  v35 = sub_219BDCD44();
  v36 = *(v35 - 8);
  v113 = *(v36 + 72);
  v37 = *(v36 + 80);
  v108 = (v37 + 32) & ~v37;
  v38 = swift_allocObject();
  v111 = xmmword_219C09BA0;
  *(v38 + 16) = xmmword_219C09BA0;
  v112 = *MEMORY[0x277CEAD18];
  v39 = *(v36 + 104);
  v39(v38 + ((v37 + 32) & ~v37));
  v110 = "gapOnscreenTimer";
  sub_2187DD9B8(&unk_280EE8350, 255, MEMORY[0x277D2E6F8]);
  sub_219BDCCC4();

  (*(v95 + 8))(v33, v31);
  v40 = v36 + 104;
  sub_219756890(v96);
  v41 = v85;
  v42 = v39;
  sub_219BDF814();
  v94 = v37;
  v43 = v108;
  v44 = swift_allocObject();
  *(v44 + 16) = v111;
  v95 = v35;
  v96 = v40;
  (v39)(v44 + v43, v112, v35);
  sub_2187DD9B8(&unk_280EE8650, 255, MEMORY[0x277D2DD98]);
  v45 = v86;
  sub_219BDCCC4();

  (*(v87 + 8))(v41, v45);
  v46 = v88;
  sub_219BE3584();
  v47 = v92;
  sub_21926F2DC(v92);
  (*(v91 + 8))(v46, v93);
  v48 = v89;
  v49 = v90;
  v50 = (*(v89 + 48))(v47, 1);
  v74 = v39;
  if (v50 == 1)
  {
    sub_2192CF630(v47, sub_2192DC364);
  }

  else
  {
    v51 = v73;
    (*(v48 + 32))(v73, v47, v49);
    (*(v48 + 16))(v72, v51, v49);
    v52 = v42;
    v53 = v75;
    sub_219BE1304();
    v54 = swift_allocObject();
    *(v54 + 16) = v111;
    (v52)(v54 + v43, v112, v95);
    sub_2187DD9B8(&qword_280EE8078, 255, MEMORY[0x277D2F150]);
    v55 = v77;
    sub_219BDCCC4();

    (*(v76 + 8))(v53, v55);
    (*(v48 + 8))(v51, v49);
  }

  v56 = v98;
  sub_219BE3564();
  v58 = v100;
  v57 = v101;
  if ((*(v100 + 48))(v56, 1, v101) == 1)
  {
    sub_2192CF630(v56, sub_21922CB44);
  }

  else
  {
    v59 = v99;
    (*(v58 + 32))(v99, v56, v57);
    v60 = v78;
    (*(v58 + 16))(v78, v59, v57);
    v61 = (*(v58 + 88))(v60, v57);
    if (v61 == *MEMORY[0x277D318F0])
    {
      (*(v79 + 104))(v81, *MEMORY[0x277D2DA48], v80);
      v62 = v108;
    }

    else
    {
      v62 = v108;
      if (v61 == *MEMORY[0x277D318E8])
      {
        (*(v79 + 104))(v81, *MEMORY[0x277D2DA50], v80);
      }

      else
      {
        v63 = *(v79 + 104);
        if (v61 == *MEMORY[0x277D318E0])
        {
          v63(v81, *MEMORY[0x277D2DA70], v80);
        }

        else
        {
          v63(v81, *MEMORY[0x277D2DA58], v80);
          (*(v58 + 8))(v60, v57);
        }
      }
    }

    v64 = v82;
    sub_219BDF3B4();
    v65 = swift_allocObject();
    *(v65 + 16) = v111;
    (v74)(v65 + v62, v112, v95);
    sub_2187DD9B8(&qword_280EE87E0, 255, MEMORY[0x277D2DA30]);
    v66 = v84;
    sub_219BDCCC4();

    (*(v83 + 8))(v64, v66);
    (*(v58 + 8))(v99, v57);
  }

  sub_2192DB7AC(v114, v102, v103);
  sub_219BE0F44();
  sub_2187E2B78(0);
  v67 = v104;
  sub_219BE75A4();
  sub_2187DD9B8(&unk_280EE8140, 255, MEMORY[0x277D2EE08]);
  sub_219BDCC64();
  v68 = v107;
  v69 = *(v106 + 8);
  v69(v67, v107);
  sub_219BE7574();
  sub_219BDCC74();
  return (v69)(v67, v68);
}

uint64_t sub_2192C9414(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v167 = a7;
  v185 = a6;
  v186 = a3;
  v191 = a5;
  v195 = a4;
  *&v196 = a2;
  v193 = a1;
  v174 = sub_219BF07A4();
  v173 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v171 = v7;
  v172 = &v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_219BDBD34();
  v169 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v168 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_219BDF8A4();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v164 = &v137 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_219BE09E4();
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v161 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_219BDF104();
  v159 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v158 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_219BDF1A4();
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v155 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_219BDFCE4();
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v152 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_219BDBD64();
  v179 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v15 = &v137 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_219BDFFB4();
  v181 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v180 = &v137 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BE1714();
  v176 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v175 = &v137 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D3BC60(0);
  MEMORY[0x28223BE20](v19 - 8);
  v149 = &v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5A830(0);
  MEMORY[0x28223BE20](v21 - 8);
  v150 = &v137 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v23 - 8);
  v151 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BDF474();
  v183 = *(v25 - 8);
  v184 = v25;
  MEMORY[0x28223BE20](v25);
  v146 = &v137 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v137 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_219BE16D4();
  v190 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v147 = &v137 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_219BE0444();
  v188 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v137 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DCACC(0);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v137 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188118D4(0);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = &v137 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v41 = v40;
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v44 = &v137 - v43;
  v187 = swift_projectBox();
  sub_2192DC084(v196, v39, sub_2188118D4);
  v45 = (*(v42 + 48))(v39, 1, v41);
  v178 = v15;
  v177 = v17;
  if (v45 == 1)
  {
    sub_2192CF630(v39, sub_2188118D4);
    v46 = *MEMORY[0x277CEAD18];
    v47 = 0x8000000219D165A0;
LABEL_15:
    v195 = v47;
    v77 = sub_219BF06B4();
    v78 = v175;
    sub_21934C4BC();

    sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v192 = v79;
    v80 = sub_219BDCD44();
    v81 = *(v80 - 8);
    v82 = *(v81 + 80);
    v83 = (v82 + 32) & ~v82;
    v190 = v83 + *(v81 + 72);
    v84 = swift_allocObject();
    v196 = xmmword_219C09BA0;
    *(v84 + 16) = xmmword_219C09BA0;
    v85 = *(v81 + 104);
    v85(v84 + v83, v46, v80);
    sub_2187DD9B8(&unk_280EE7F60, 255, MEMORY[0x277D2F890]);
    v86 = v177;
    sub_219BDCCC4();

    (*(v176 + 8))(v78, v86);
    v87 = v178;
    sub_219BDBD54();
    sub_219BDBD44();
    (*(v179 + 8))(v87, v189);
    v88 = v180;
    sub_219BDFFA4();
    v188 = v82;
    v89 = swift_allocObject();
    *(v89 + 16) = v196;
    v189 = v83;
    v90 = v89 + v83;
    v194 = v46;
    v91 = v80;
    v92 = v80;
    v93 = v85;
    v187 = v81 + 104;
    v85(v90, v46, v92);
    sub_2187DD9B8(&unk_280EE84F0, 255, MEMORY[0x277D2E290]);
    v94 = v182;
    sub_219BDCCC4();

    (*(v181 + 8))(v88, v94);
    sub_2187E2B78(0);
    v96 = v95;
    sub_2187DD9B8(&qword_280EDF9E8, 255, type metadata accessor for TodayModel);
    result = sub_219BE75B4();
    if (result < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (result <= 0x7FFFFFFF)
    {
      v182 = v96;
      v97 = v152;
      sub_219BDFCD4();
      v98 = swift_allocObject();
      *(v98 + 16) = v196;
      v183 = v91;
      v93(v98 + v189, v194, v91);
      v184 = v93;
      sub_2187DD9B8(&unk_280EE8590, 255, MEMORY[0x277D2E058]);
      v99 = v154;
      sub_219BDCCC4();

      (*(v153 + 8))(v97, v99);
      v100 = sub_219BF0674();
      v101 = v155;
      sub_219BF6AC4();

      v102 = swift_allocObject();
      *(v102 + 16) = v196;
      v93(v102 + v189, v194, v183);
      sub_2187DD9B8(&unk_280EE8850, 255, MEMORY[0x277D2D950]);
      v103 = v157;
      sub_219BDCCC4();

      (*(v156 + 8))(v101, v103);
      v181 = *(v185 + 72);
      v104 = sub_219BF06B4();
      v105 = [v104 sourceChannel];

      v106 = v158;
      sub_219BE01F4();
      swift_unknownObjectRelease();
      v107 = swift_allocObject();
      *(v107 + 16) = v196;
      v108 = v189;
      v109 = v194;
      v110 = v183;
      v184(v107 + v189, v194, v183);
      sub_2187DD9B8(&unk_280EE8890, 255, MEMORY[0x277D2D8B8]);
      v111 = v160;
      sub_219BDCCC4();

      (*(v159 + 8))(v106, v111);
      v112 = sub_219BF06B4();
      v113 = [v112 sourceChannel];

      v114 = v161;
      sub_219BE01E4();
      swift_unknownObjectRelease();
      v115 = swift_allocObject();
      *(v115 + 16) = v196;
      v116 = v110;
      v117 = v110;
      v118 = v184;
      v184(v115 + v108, v109, v117);
      sub_2187DD9B8(&qword_280EE8270, 255, MEMORY[0x277D2E9C0]);
      v119 = v163;
      sub_219BDCCC4();

      (*(v162 + 8))(v114, v119);
      v120 = v164;
      sub_219BDF894();
      v121 = swift_allocObject();
      *(v121 + 16) = v196;
      v118(v121 + v108, v194, v116);
      sub_2187DD9B8(&qword_280EE8640, 255, MEMORY[0x277D2DE40]);
      v122 = v166;
      sub_219BDCCC4();

      (*(v165 + 8))(v120, v122);
      sub_219BE0274();
      v123 = v168;
      sub_219BE75A4();
      sub_2187DD9B8(&unk_280EE8460, 255, MEMORY[0x277D2E418]);
      sub_219BDCC64();
      v124 = *(v169 + 8);
      v125 = v170;
      v124(v123, v170);
      sub_219BE7574();
      sub_219BDCC74();
      v124(v123, v125);
      v126 = v173;
      v127 = v172;
      v128 = v174;
      (*(v173 + 16))(v172, v191, v174);
      v129 = (*(v126 + 80) + 24) & ~*(v126 + 80);
      v130 = swift_allocObject();
      *(v130 + 16) = v185;
      (*(v126 + 32))(v130 + v129, v127, v128);

      sub_219BE3494();
    }

    __break(1u);
    goto LABEL_22;
  }

  v145 = v42;
  (*(v42 + 32))(v44, v39, v41);
  sub_2187E2B78(0);
  sub_219BE7564();
  sub_218853400();
  (*(*(v48 - 8) + 56))(v36, 0, 1, v48);
  sub_2187DD9B8(&qword_280EDF9E8, 255, type metadata accessor for TodayModel);
  *&v196 = v44;
  v49 = sub_219BE6A34();
  result = sub_2192CF630(v36, sub_2192DCACC);
  if (v49 < 0xFFFFFFFF80000000)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v49 <= 0x7FFFFFFF)
  {
    v148 = v41;
    sub_219BE0434();
    sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v52 = v51;
    v53 = sub_219BDCD44();
    v54 = *(v53 - 8);
    v55 = *(v54 + 80);
    v142 = *(v54 + 72);
    v144 = v52;
    v56 = swift_allocObject();
    v141 = xmmword_219C09BA0;
    *(v56 + 16) = xmmword_219C09BA0;
    v57 = *MEMORY[0x277CEAD18];
    v58 = *(v54 + 104);
    v143 = (v55 + 32) & ~v55;
    v194 = v57;
    v58(v56 + v143);
    sub_2187DD9B8(&unk_280EE8400, 255, MEMORY[0x277D2E530]);
    v195 = 0x8000000219D165A0;
    sub_219BDCCC4();

    (*(v188 + 8))(v33, v31);
    v59 = v187;
    swift_beginAccess();
    sub_2192DC084(v59, v29, sub_218B58D58);
    v60 = v190;
    v61 = v192;
    v62 = (*(v190 + 48))(v29, 1, v192);
    v140 = v53;
    v139 = v55;
    v138 = v58;
    if (v62 == 1)
    {
      sub_2192CF630(v29, sub_218B58D58);
      v63 = v194;
    }

    else
    {
      v67 = v147;
      (*(v60 + 32))(v147, v29, v61);
      v68 = v143;
      v69 = swift_allocObject();
      *(v69 + 16) = v141;
      v70 = v194;
      (v58)(v69 + v68, v194, v53);
      sub_2187DD9B8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
      sub_219BDCCC4();

      (*(v60 + 8))(v67, v61);
      v63 = v70;
    }

    v64 = v151;
    v65 = v150;
    v66 = v149;
    sub_219BE6934();
    sub_2193B5F80(v197, v66);

    v71 = type metadata accessor for TodayFeedGroup();
    if ((*(*(v71 - 8) + 48))(v66, 1, v71) == 1)
    {
      v72 = sub_218D3BC60;
      v73 = v66;
    }

    else
    {
      sub_21882D12C(v65);
      sub_2192CF630(v66, type metadata accessor for TodayFeedGroup);
      v74 = sub_219BF1904();
      v75 = *(v74 - 8);
      if ((*(v75 + 48))(v65, 1, v74) != 1)
      {
        sub_219BF0664();
        sub_219BF17B4();

        (*(v75 + 8))(v65, v74);
        v132 = v183;
        v131 = v184;
        v133 = (*(v183 + 48))(v64, 1, v184);
        v76 = v145;
        if (v133 != 1)
        {
          v134 = v146;
          (*(v132 + 32))(v146, v64, v131);
          v135 = v143;
          v136 = swift_allocObject();
          *(v136 + 16) = v141;
          v46 = v63;
          v138(v136 + v135, v63, v140);
          sub_2187DD9B8(&unk_280EE87B0, 255, MEMORY[0x277D2DAB8]);
          sub_219BDCCC4();
          v76 = v145;

          (*(v132 + 8))(v134, v131);
          goto LABEL_14;
        }

LABEL_13:
        v46 = v63;
        sub_2192CF630(v64, sub_218B58F30);
LABEL_14:
        (*(v76 + 8))(v196, v148);
        v47 = v195;
        goto LABEL_15;
      }

      v72 = sub_218B5A830;
      v73 = v65;
    }

    sub_2192CF630(v73, v72);
    (*(v183 + 56))(v64, 1, 1, v184);
    v76 = v145;
    goto LABEL_13;
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_2192CAFC4(uint64_t a1)
{
  v1 = *(a1 + 296);
  v2 = sub_219BF06B4();
  v3 = [v2 identifier];

  if (!v3)
  {
    sub_219BF5414();
    v3 = sub_219BF53D4();
  }

  [v1 markIssueAsSeenWithID_];
}

uint64_t sub_2192CB05C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v127 = a6;
  v123 = a3;
  v129 = a1;
  v113 = sub_219BDBD34();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_219BDF1E4();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218853400();
  v104 = v10;
  v102 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v126 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928();
  v122 = v12;
  v101 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v125 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_219BDFCE4();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v103 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE1444();
  v120 = *(v15 - 8);
  v121 = v15;
  MEMORY[0x28223BE20](v15);
  v119 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v17 - 8);
  v128 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v124 = sub_219BE16D4();
  v19 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v99 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v21 - 8);
  v115 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_219BDF4A4();
  v116 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v24 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D3BC60(0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5A830(0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_219BDF474();
  v114 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v98 = &v96 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = swift_projectBox();
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v100 = v37;
  v107 = a2;
  sub_219BE6934();
  sub_2193B5F80(v130, v27);

  v38 = type metadata accessor for TodayFeedGroup();
  v39 = (*(*(v38 - 8) + 48))(v27, 1, v38);
  v117 = v19;
  if (v39 == 1)
  {
    sub_2192CF630(v27, sub_218D3BC60);
LABEL_5:
    v114[7](v33, 1, 1, v34);
LABEL_6:
    sub_2192CF630(v33, sub_218B58F30);
    goto LABEL_7;
  }

  v97 = a4;
  sub_21882D12C(v30);
  sub_2192CF630(v27, type metadata accessor for TodayFeedGroup);
  v40 = sub_219BF1904();
  v41 = *(v40 - 8);
  if ((*(v41 + 48))(v30, 1, v40) == 1)
  {
    sub_2192CF630(v30, sub_218B5A830);
    a4 = v97;
    goto LABEL_5;
  }

  v86 = [v123 identifier];
  sub_219BF5414();
  v96 = v34;

  sub_219BF17B4();
  v87 = v96;

  (*(v41 + 8))(v30, v40);
  v88 = v114;
  v89 = (v114[6])(v33, 1, v87);
  a4 = v97;
  if (v89 == 1)
  {
    goto LABEL_6;
  }

  (v88[4])(v98, v33, v87);
  sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v90 = v88;
  v91 = sub_219BDCD44();
  v92 = *(v91 - 8);
  v93 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_219C09BA0;
  (*(v92 + 104))(v94 + v93, *MEMORY[0x277CEAD18], v91);
  sub_2187DD9B8(&unk_280EE87B0, 255, MEMORY[0x277D2DAB8]);
  v95 = v98;
  sub_219BDCCC4();

  (v90[1])(v95, v87);
LABEL_7:
  v42 = v115;
  sub_2192DC084(a4, v115, sub_218B59134);
  v43 = v116;
  v44 = v118;
  if ((*(v116 + 48))(v42, 1, v118) == 1)
  {
    v45 = &unk_219C09000;
    sub_2192CF630(v42, sub_218B59134);
  }

  else
  {
    (*(v43 + 32))(v24, v42, v44);
    sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v115 = v36;
    v46 = sub_219BDCD44();
    v47 = *(v46 - 8);
    v48 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v49 = swift_allocObject();
    v45 = &unk_219C09000;
    *(v49 + 16) = xmmword_219C09BA0;
    (*(v47 + 104))(v49 + v48, *MEMORY[0x277CEAD18], v46);
    sub_2187DD9B8(&unk_280EE8790, 255, MEMORY[0x277D2DAD8]);
    sub_219BDCCC4();
    v36 = v115;

    (*(v43 + 8))(v24, v44);
  }

  swift_beginAccess();
  v50 = v128;
  sub_2192DC084(v36, v128, sub_218B58D58);
  v51 = v117;
  if ((*(v117 + 48))(v50, 1, v124) == 1)
  {
    sub_2192CF630(v128, sub_218B58D58);
    v52 = *MEMORY[0x277CEAD18];
  }

  else
  {
    v53 = v99;
    v54 = v124;
    (*(v51 + 32))(v99, v128, v124);
    sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v55 = sub_219BDCD44();
    v56 = *(v55 - 8);
    v57 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = v45[186];
    v52 = *MEMORY[0x277CEAD18];
    (*(v56 + 104))(v58 + v57, v52, v55);
    sub_2187DD9B8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
    sub_219BDCCC4();

    (*(v51 + 8))(v53, v54);
  }

  v59 = [v123 identifier];
  sub_219BF5414();

  v60 = v119;
  sub_219BE1424();
  sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v62 = v61;
  v63 = sub_219BDCD44();
  v64 = *(v63 - 8);
  v65 = *(v64 + 72);
  v66 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v115 = *(v64 + 80);
  v116 = v65;
  v118 = v62;
  v67 = swift_allocObject();
  v124 = v45[186];
  *(v67 + 16) = v124;
  v70 = *(v64 + 104);
  v69 = (v64 + 104);
  v68 = v70;
  LODWORD(v128) = v52;
  v117 = v63;
  (v70)(v67 + v66, v52, v63);
  sub_2187DD9B8(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
  v123 = 0x8000000219D165A0;
  v71 = v121;
  sub_219BDCCC4();

  (*(v120 + 8))(v60, v71);
  sub_2187E2B78(0);
  v73 = v72;
  sub_219BE7594();
  sub_219BE7564();
  sub_2187DD9B8(&qword_280EDF9E8, 255, type metadata accessor for TodayModel);
  v74 = v122;
  result = sub_219BEB304();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    v76 = v103;
    sub_219BDFCD4();
    (*(v102 + 8))(v126, v104);
    (*(v101 + 8))(v125, v74);
    v99 = v69;
    v114 = v68;
    v77 = swift_allocObject();
    v126 = v73;
    *(v77 + 16) = v124;
    v78 = v117;
    (v68)(v77 + v66, v128, v117);
    sub_2187DD9B8(&unk_280EE8590, 255, MEMORY[0x277D2E058]);
    v79 = v106;
    sub_219BDCCC4();

    (*(v105 + 8))(v76, v79);
    sub_219BE6944();
    v80 = v108;
    sub_219BDF1C4();
    v81 = swift_allocObject();
    *(v81 + 16) = v124;
    (v114)(v81 + v66, v128, v78);
    sub_2187DD9B8(&unk_280EE8840, 255, MEMORY[0x277D2D970]);
    v82 = v110;
    sub_219BDCCC4();

    (*(v109 + 8))(v80, v82);
    sub_219BDFEC4();
    v83 = v111;
    sub_219BE75A4();
    sub_2187DD9B8(&unk_280EE8520, 255, MEMORY[0x277D2E1D0]);
    sub_219BDCC64();
    v84 = *(v112 + 8);
    v85 = v113;
    v84(v83, v113);
    sub_219BE7574();
    sub_219BDCC74();
    return (v84)(v83, v85);
  }

  __break(1u);
  return result;
}

uint64_t sub_2192CC474(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v74 = a7;
  v69 = a6;
  v64 = a4;
  LODWORD(v79) = a3;
  v78 = a2;
  v82 = a1;
  v75 = sub_219BDBD34();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v72 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDF4A4();
  v70 = *(v10 - 8);
  v71 = v10;
  MEMORY[0x28223BE20](v10);
  v59 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v12 - 8);
  v65 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE16D4();
  v66 = *(v14 - 8);
  v67 = v14;
  MEMORY[0x28223BE20](v14);
  v58 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_219BDF3E4();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_219BDFDE4();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_219BDF8A4();
  v62 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = swift_projectBox();
  sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v81 = v20;
  v21 = sub_219BDCD44();
  v60 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 80);
  v24 = (v23 + 32) & ~v23;
  v25 = swift_allocObject();
  v80 = xmmword_219C09BA0;
  *(v25 + 16) = xmmword_219C09BA0;
  v26 = *MEMORY[0x277CEAD18];
  v27 = *(v22 + 104);
  v27(v25 + v24, v26, v21);
  sub_219BDEF94();
  sub_2187DD9B8(&qword_280EE8910, 255, MEMORY[0x277D2D788]);
  sub_219BDCCC4();

  sub_219BDF894();
  v78 = v23;
  v28 = swift_allocObject();
  *(v28 + 16) = v80;
  v77 = v26;
  v29 = v26;
  v30 = v60;
  v76 = v27;
  v27(v28 + v24, v29, v60);
  sub_2187DD9B8(&qword_280EE8640, 255, MEMORY[0x277D2DE40]);
  v79 = "gapOnscreenTimer";
  v31 = v30;
  v32 = v61;
  sub_219BDCCC4();

  (*(v62 + 8))(v19, v32);
  if (sub_219BF0A34())
  {
    (*(v53 + 104))(v52, *MEMORY[0x277D2DA78], v54);
    v33 = v55;
    sub_219BDFDD4();
    v34 = swift_allocObject();
    *(v34 + 16) = v80;
    v76(v34 + v24, v77, v31);
    sub_2187DD9B8(&unk_27CC18730, 255, MEMORY[0x277D2E148]);
    v35 = v57;
    sub_219BDCCC4();

    (*(v56 + 8))(v33, v35);
  }

  v36 = v63;
  swift_beginAccess();
  v37 = v36;
  v38 = v65;
  sub_2192DC084(v37, v65, sub_218B58D58);
  v40 = v66;
  v39 = v67;
  if ((*(v66 + 48))(v38, 1, v67) == 1)
  {
    sub_2192CF630(v38, sub_218B58D58);
  }

  else
  {
    v41 = v58;
    (*(v40 + 32))(v58, v38, v39);
    v42 = swift_allocObject();
    *(v42 + 16) = v80;
    v76(v42 + v24, v77, v31);
    sub_2187DD9B8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
    sub_219BDCCC4();

    (*(v40 + 8))(v41, v39);
  }

  v43 = v70;
  v44 = v68;
  sub_2192DC084(v69, v68, sub_218B59134);
  v45 = v71;
  if ((*(v43 + 48))(v44, 1, v71) == 1)
  {
    sub_2192CF630(v44, sub_218B59134);
  }

  else
  {
    v46 = v59;
    (*(v43 + 32))(v59, v44, v45);
    v47 = swift_allocObject();
    *(v47 + 16) = v80;
    v76(v47 + v24, v77, v31);
    sub_2187DD9B8(&unk_280EE8790, 255, MEMORY[0x277D2DAD8]);
    sub_219BDCCC4();

    (*(v43 + 8))(v46, v45);
  }

  sub_219BE0494();
  sub_2187E2B78(0);
  v48 = v72;
  sub_219BE75A4();
  sub_2187DD9B8(&unk_280EE83E0, 255, MEMORY[0x277D2E560]);
  sub_219BDCC64();
  v49 = *(v73 + 8);
  v50 = v75;
  v49(v48, v75);
  sub_219BE7574();
  sub_219BDCC74();
  return (v49)(v48, v50);
}

uint64_t sub_2192CCFBC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v105 = a5;
  v110 = a4;
  v114 = a3;
  v7 = sub_219BDBD34();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v11 - 8);
  v106 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE16D4();
  v107 = *(v13 - 8);
  v108 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_219BDF8A4();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v101 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_219BE09E4();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_219BDF104();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v94 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_219BEF9C4();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_219BDFFE4();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_219BDEFE4();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BDFCE4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = swift_projectBox();
  sub_2187E2B78(0);
  v27 = v26;
  sub_2187DD9B8(&qword_280EDF9E8, 255, type metadata accessor for TodayModel);
  v102 = v27;
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v80 = v15;
  v81 = v10;
  v82 = a2;
  v83 = v8;
  v84 = v7;
  sub_219BDFCD4();
  sub_2192DD5C0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v111 = v29;
  v30 = sub_219BDCD44();
  v31 = *(v30 - 8);
  v32 = *(v31 + 72);
  v118 = *(v31 + 80);
  v119 = v32;
  v33 = v31;
  v34 = (v118 + 32) & ~v118;
  v35 = swift_allocObject();
  v121 = xmmword_219C09BA0;
  *(v35 + 16) = xmmword_219C09BA0;
  v117 = *MEMORY[0x277CEAD18];
  v36 = *(v33 + 104);
  v115 = v30;
  v116 = v36;
  v113 = v33 + 104;
  v36(v35 + v34);
  v120 = "gapOnscreenTimer";
  sub_2187DD9B8(&unk_280EE8590, 255, MEMORY[0x277D2E058]);
  sub_219BDCCC4();

  (*(v23 + 8))(v25, v22);
  v37 = v114;
  v38 = [v114 identifier];
  sub_219BF5414();

  [v37 isPaid];
  v39 = [v37 totalTime];
  sub_219BF5414();

  v40 = v85;
  v112 = a1;
  sub_219BDEFB4();
  v109 = v34;
  v41 = swift_allocObject();
  *(v41 + 16) = v121;
  v42 = v117;
  v116(v41 + v34, v117, v30);
  sub_2187DD9B8(&qword_280EE8900, 255, MEMORY[0x277D2D798]);
  v43 = v87;
  sub_219BDCCC4();

  (*(v86 + 8))(v40, v43);
  v44 = v89;
  v45 = v88;
  v46 = v90;
  (*(v89 + 104))(v88, *MEMORY[0x277D32840], v90);
  v47 = v91;
  v48 = v114;
  sub_219BE02B4();
  (*(v44 + 8))(v45, v46);
  v49 = v109;
  v50 = swift_allocObject();
  *(v50 + 16) = v121;
  v51 = v116;
  v116(v50 + v49, v42, v115);
  sub_2187DD9B8(&unk_280EE84E0, 255, MEMORY[0x277D2E2C0]);
  v52 = v93;
  sub_219BDCCC4();

  (*(v92 + 8))(v47, v52);
  v110 = *(v110 + 72);
  v53 = [v48 sourceChannel];
  v54 = v94;
  sub_219BE01F4();
  swift_unknownObjectRelease();
  v55 = v109;
  v56 = swift_allocObject();
  *(v56 + 16) = v121;
  v57 = v115;
  v51(v56 + v55, v117, v115);
  sub_2187DD9B8(&unk_280EE8890, 255, MEMORY[0x277D2D8B8]);
  v58 = v96;
  sub_219BDCCC4();

  (*(v95 + 8))(v54, v58);
  v59 = [v114 sourceChannel];
  v60 = v98;
  sub_219BE01E4();
  swift_unknownObjectRelease();
  v61 = swift_allocObject();
  *(v61 + 16) = v121;
  v62 = v117;
  v63 = v116;
  v116(v61 + v55, v117, v57);
  sub_2187DD9B8(&qword_280EE8270, 255, MEMORY[0x277D2E9C0]);
  v64 = v100;
  sub_219BDCCC4();

  (*(v99 + 8))(v60, v64);
  v65 = v101;
  sub_219BDF894();
  v66 = swift_allocObject();
  *(v66 + 16) = v121;
  v63(v66 + v55, v62, v115);
  sub_2187DD9B8(&qword_280EE8640, 255, MEMORY[0x277D2DE40]);
  v67 = v104;
  sub_219BDCCC4();

  (*(v103 + 8))(v65, v67);
  v68 = v97;
  swift_beginAccess();
  v69 = v68;
  v70 = v106;
  sub_2192DC084(v69, v106, sub_218B58D58);
  v72 = v107;
  v71 = v108;
  if ((*(v107 + 48))(v70, 1, v108) == 1)
  {
    sub_2192CF630(v70, sub_218B58D58);
  }

  else
  {
    v73 = v80;
    (*(v72 + 32))(v80, v70, v71);
    v74 = swift_allocObject();
    *(v74 + 16) = v121;
    v116(v74 + v55, v117, v115);
    sub_2187DD9B8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
    sub_219BDCCC4();

    (*(v72 + 8))(v73, v71);
  }

  v75 = v83;
  sub_219BE04C4();
  v76 = v81;
  sub_219BE75A4();
  sub_2187DD9B8(&unk_280EE83D0, 255, MEMORY[0x277D2E570]);
  sub_219BDCC64();
  v77 = *(v75 + 8);
  v78 = v84;
  v77(v76, v84);
  sub_219BE7574();
  sub_219BDCC74();
  return (v77)(v76, v78);
}