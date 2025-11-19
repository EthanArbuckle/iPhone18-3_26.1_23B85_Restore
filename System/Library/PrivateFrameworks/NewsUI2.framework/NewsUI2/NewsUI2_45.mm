void sub_218BD799C()
{
  if (!qword_27CC0EC70)
  {
    sub_219BF33A4();
    sub_219BF13A4();
    sub_218BD31D8(&qword_280E90190, 255, MEMORY[0x277D33DA8]);
    sub_218BD31D8(&unk_280E908E0, 255, MEMORY[0x277D33320]);
    v0 = sub_219BE8F34();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0EC70);
    }
  }
}

void sub_218BD7A90()
{
  if (!qword_280EE35D0)
  {
    sub_219BF33A4();
    sub_219BF13A4();
    sub_218BD31D8(&qword_280E90190, 255, MEMORY[0x277D33DA8]);
    sub_218BD31D8(&unk_280E908E0, 255, MEMORY[0x277D33320]);
    v0 = sub_219BEB334();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE35D0);
    }
  }
}

void sub_218BD7B84()
{
  if (!qword_27CC0EC78)
  {
    sub_218B58FCC(255);
    sub_218BD31D8(&qword_27CC0EC88, 255, sub_218B58FCC);
    v0 = sub_219BF7494();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0EC78);
    }
  }
}

uint64_t sub_218BD7C1C(uint64_t a1)
{
  v3 = *(sub_219BE16D4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  sub_218BD799C();
  v7 = v1 + ((v4 + v5 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80));

  return sub_218BD2724(a1, v1 + v4, v7);
}

uint64_t sub_218BD7CF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218BD7D58(uint64_t a1)
{
  sub_218B58D38(0);
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = *(sub_219BF0B74() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v1 + ((v7 + *(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_218BD149C(a1, v1 + v4, v1 + v7, v9, v10);
}

uint64_t sub_218BD7E6C(uint64_t a1)
{
  sub_218B58D38(0);
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = *(sub_219BF04A4() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  sub_218B59134(0);
  v10 = v1 + ((v7 + v8 + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80));

  return sub_218BD0140(a1, v1 + v4, v1 + v7, v10);
}

uint64_t sub_218BD7FD0(uint64_t a1)
{
  sub_218B58D38(0);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_218B59134(0);
  v7 = *(v1 + 16);
  v8 = *(v1 + v5);
  v9 = v1 + ((v5 + *(*(v6 - 8) + 80) + 8) & ~*(*(v6 - 8) + 80));

  return sub_218BCE2C4(a1, v7, v1 + v4, v8, v9);
}

uint64_t sub_218BD8110@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v167 = a2;
  v180 = type metadata accessor for SportsSearchFeedGroupKnobs();
  v172 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v166 = &v138 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for SavedRecipesSearchFeedGroupKnobs();
  v165 = *(v179 - 8);
  v4 = MEMORY[0x28223BE20](v179);
  v151 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v162 = &v138 - v6;
  v177 = type metadata accessor for RecipesSearchFeedGroupKnobs();
  v160 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v161 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = type metadata accessor for TopicsSearchFeedGroupKnobs();
  v158 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v159 = &v138 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for ChannelsSearchFeedGroupKnobs();
  v156 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v157 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FF4C0(0);
  v11 = *(v10 - 8);
  v186 = v10;
  v187 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v150 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v147 = &v138 - v14;
  sub_218BDA114(0, &qword_280E919F0, sub_2186FF4C0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v149 = &v138 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v163 = &v138 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v171 = &v138 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v146 = &v138 - v23;
  MEMORY[0x28223BE20](v22);
  v153 = &v138 - v24;
  v152 = type metadata accessor for ArticlesSearchFeedGroupKnobs();
  v174 = *(v152 - 8);
  v25 = MEMORY[0x28223BE20](v152);
  v148 = &v138 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v154 = &v138 - v27;
  v169 = type metadata accessor for SearchFeedGroupKnobs();
  MEMORY[0x28223BE20](v169);
  v188 = &v138 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BDA114(0, qword_280EBA020, type metadata accessor for SportsSearchFeedGroupKnobs);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v164 = &v138 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v173 = &v138 - v32;
  sub_218BDA114(0, qword_280EA4D70, type metadata accessor for SavedRecipesSearchFeedGroupKnobs);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v170 = &v138 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v185 = &v138 - v36;
  sub_218BDA114(0, qword_280EB74D0, type metadata accessor for RecipesSearchFeedGroupKnobs);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v155 = &v138 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v182 = &v138 - v40;
  sub_218BDA114(0, qword_280EB9948, type metadata accessor for TopicsSearchFeedGroupKnobs);
  v42 = MEMORY[0x28223BE20](v41 - 8);
  v44 = &v138 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v181 = &v138 - v45;
  sub_218BDA114(0, qword_280EB4DF8, type metadata accessor for ChannelsSearchFeedGroupKnobs);
  v47 = MEMORY[0x28223BE20](v46 - 8);
  v49 = &v138 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v184 = &v138 - v50;
  sub_218BDA114(0, qword_280EB57B0, type metadata accessor for ArticlesSearchFeedGroupKnobs);
  v52 = MEMORY[0x28223BE20](v51 - 8);
  v168 = &v138 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v178 = &v138 - v54;
  sub_218BDA2EC(0, &qword_280E8CEC8, MEMORY[0x277D844C8]);
  v56 = v55;
  v57 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v59 = &v138 - v58;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BDA168();
  v60 = v183;
  sub_219BF7B34();
  if (v60)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v140 = v49;
  v141 = v44;
  v142 = 0;
  v144 = v57;
  v62 = v186;
  v183 = a1;
  LOBYTE(v189) = 0;
  sub_218BDA350(&qword_280EB57F8, type metadata accessor for ArticlesSearchFeedGroupKnobs);
  v63 = v178;
  v64 = v152;
  sub_219BF7674();
  LOBYTE(v189) = 1;
  sub_218BDA350(&qword_280EB4E38, type metadata accessor for ChannelsSearchFeedGroupKnobs);
  sub_219BF7674();
  LOBYTE(v189) = 2;
  sub_218BDA350(&qword_280EB9988, type metadata accessor for TopicsSearchFeedGroupKnobs);
  v65 = v181;
  sub_219BF7674();
  LOBYTE(v189) = 3;
  sub_218BDA350(&qword_280EB7510, type metadata accessor for RecipesSearchFeedGroupKnobs);
  v66 = v182;
  sub_219BF7674();
  LOBYTE(v189) = 4;
  sub_218BDA350(&qword_280EA4DB8, type metadata accessor for SavedRecipesSearchFeedGroupKnobs);
  sub_219BF7674();
  LOBYTE(v189) = 5;
  sub_218BDA350(&qword_280EBA060, type metadata accessor for SportsSearchFeedGroupKnobs);
  sub_219BF7674();
  v67 = v168;
  sub_218BDA1BC(v63, v168, qword_280EB57B0, type metadata accessor for ArticlesSearchFeedGroupKnobs);
  v68 = v174 + 48;
  v139 = *(v174 + 48);
  v69 = v139(v67, 1, v64);
  v145 = v56;
  v143 = v59;
  if (v69 == 1)
  {
    v70 = v187;
    v71 = v153;
    v72 = v62;
    (*(v187 + 56))(v153, 1, 1, v62);
    v73 = v146;
    sub_218BDA1BC(v71, v146, &qword_280E919F0, sub_2186FF4C0);
    v74 = *(v70 + 48);
    v75 = v74(v73, 1, v72);
    v76 = v157;
    v174 = v68;
    if (v75 == 1)
    {
      type metadata accessor for SearchFeedServiceConfig();
      sub_218BDA350(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig);
      v77 = v147;
      sub_219BEE974();
      v78 = v74(v73, 1, v72);
      v79 = v184;
      v80 = v148;
      if (v78 != 1)
      {
        sub_218BDA228(v73, &qword_280E919F0, sub_2186FF4C0);
      }
    }

    else
    {
      v77 = v147;
      (*(v70 + 32))(v147, v73, v72);
      v79 = v184;
      v80 = v148;
    }

    (*(v187 + 32))(v80, v77, v72);
    v189 = 5;
    sub_2186F9548();
    swift_allocObject();
    v87 = v80;
    v88 = v64;
    *&v80[*(v64 + 20)] = sub_219BEF534();
    LOBYTE(v189) = 0;
    sub_2186F95C4();
    swift_allocObject();
    v89 = sub_219BEF534();
    sub_218BDA228(v153, &qword_280E919F0, sub_2186FF4C0);
    *(v87 + *(v64 + 24)) = v89;
    v83 = v154;
    sub_218BDA284(v87, v154, type metadata accessor for ArticlesSearchFeedGroupKnobs);
    v90 = v168;
    v91 = v139(v168, 1, v88);
    v84 = v171;
    v65 = v181;
    v81 = v182;
    v85 = v158;
    v86 = v156;
    if (v91 != 1)
    {
      sub_218BDA228(v90, qword_280EB57B0, type metadata accessor for ArticlesSearchFeedGroupKnobs);
    }
  }

  else
  {
    v81 = v66;
    v82 = v67;
    v83 = v154;
    sub_218BDA284(v82, v154, type metadata accessor for ArticlesSearchFeedGroupKnobs);
    v84 = v171;
    v79 = v184;
    v85 = v158;
    v76 = v157;
    v86 = v156;
  }

  sub_218BDA284(v83, v188, type metadata accessor for ArticlesSearchFeedGroupKnobs);
  v92 = v140;
  sub_218BDA1BC(v79, v140, qword_280EB4DF8, type metadata accessor for ChannelsSearchFeedGroupKnobs);
  v93 = *(v86 + 48);
  v94 = v175;
  if (v93(v92, 1, v175) == 1)
  {
    (*(v187 + 56))(v84, 1, 1, v186);
    sub_2198F9F3C(v84, 0, v76);
    v95 = v93(v92, 1, v94);
    v96 = v76;
    v97 = v160;
    if (v95 != 1)
    {
      sub_218BDA228(v92, qword_280EB4DF8, type metadata accessor for ChannelsSearchFeedGroupKnobs);
    }
  }

  else
  {
    v96 = v76;
    sub_218BDA284(v92, v76, type metadata accessor for ChannelsSearchFeedGroupKnobs);
    v97 = v160;
  }

  v98 = v169;
  sub_218BDA284(v96, v188 + *(v169 + 20), type metadata accessor for ChannelsSearchFeedGroupKnobs);
  v99 = v141;
  sub_218BDA1BC(v65, v141, qword_280EB9948, type metadata accessor for TopicsSearchFeedGroupKnobs);
  v100 = *(v85 + 48);
  v101 = v176;
  if (v100(v99, 1, v176) == 1)
  {
    (*(v187 + 56))(v84, 1, 1, v186);
    v102 = v101;
    v103 = v159;
    sub_21925AD70(v84, 0, v159);
    v104 = v100(v99, 1, v102);
    v105 = v180;
    if (v104 != 1)
    {
      sub_218BDA228(v99, qword_280EB9948, type metadata accessor for TopicsSearchFeedGroupKnobs);
    }
  }

  else
  {
    v103 = v159;
    sub_218BDA284(v99, v159, type metadata accessor for TopicsSearchFeedGroupKnobs);
    v105 = v180;
  }

  sub_218BDA284(v103, v188 + v98[6], type metadata accessor for TopicsSearchFeedGroupKnobs);
  v106 = v155;
  sub_218BDA1BC(v81, v155, qword_280EB74D0, type metadata accessor for RecipesSearchFeedGroupKnobs);
  v107 = *(v97 + 48);
  v108 = v177;
  if (v107(v106, 1, v177) == 1)
  {
    (*(v187 + 56))(v84, 1, 1, v186);
    v109 = v161;
    sub_2192F6D14(v84, 0, v161);
    v110 = v107(v106, 1, v108);
    v111 = v172;
    if (v110 != 1)
    {
      sub_218BDA228(v106, qword_280EB74D0, type metadata accessor for RecipesSearchFeedGroupKnobs);
    }
  }

  else
  {
    v109 = v161;
    sub_218BDA284(v106, v161, type metadata accessor for RecipesSearchFeedGroupKnobs);
    v111 = v172;
  }

  sub_218BDA284(v109, v188 + v98[7], type metadata accessor for RecipesSearchFeedGroupKnobs);
  v112 = v170;
  sub_218BDA1BC(v185, v170, qword_280EA4D70, type metadata accessor for SavedRecipesSearchFeedGroupKnobs);
  v113 = *(v165 + 48);
  if (v113(v112, 1, v179) == 1)
  {
    v114 = v173;
    v116 = v186;
    v115 = v187;
    v117 = v163;
    (*(v187 + 56))(v163, 1, 1, v186);
    v118 = v149;
    sub_218BDA1BC(v117, v149, &qword_280E919F0, sub_2186FF4C0);
    v119 = *(v115 + 48);
    if (v119(v118, 1, v116) == 1)
    {
      type metadata accessor for SearchFeedServiceConfig();
      sub_218BDA350(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig);
      v120 = v150;
      sub_219BEE974();
      v121 = v119(v118, 1, v116);
      v122 = v116;
      v123 = v151;
      if (v121 != 1)
      {
        v124 = v122;
        sub_218BDA228(v118, &qword_280E919F0, sub_2186FF4C0);
        v122 = v124;
      }
    }

    else
    {
      v120 = v150;
      (*(v115 + 32))(v150, v118, v116);
      v122 = v116;
      v123 = v151;
    }

    (*(v187 + 32))(v123, v120, v122);
    v189 = 6;
    sub_2186F9548();
    swift_allocObject();
    v127 = sub_219BEF534();
    v128 = v179;
    *(v123 + *(v179 + 20)) = v127;
    v189 = 1;
    swift_allocObject();
    v129 = sub_219BEF534();
    sub_218BDA228(v163, &qword_280E919F0, sub_2186FF4C0);
    *(v123 + *(v128 + 24)) = v129;
    v125 = v162;
    sub_218BDA284(v123, v162, type metadata accessor for SavedRecipesSearchFeedGroupKnobs);
    v130 = v170;
    v131 = v113(v170, 1, v128);
    v126 = v114;
    v98 = v169;
    v105 = v180;
    v84 = v171;
    v111 = v172;
    if (v131 != 1)
    {
      sub_218BDA228(v130, qword_280EA4D70, type metadata accessor for SavedRecipesSearchFeedGroupKnobs);
    }
  }

  else
  {
    v125 = v162;
    sub_218BDA284(v112, v162, type metadata accessor for SavedRecipesSearchFeedGroupKnobs);
    v126 = v173;
  }

  sub_218BDA284(v125, v188 + v98[8], type metadata accessor for SavedRecipesSearchFeedGroupKnobs);
  v132 = v164;
  sub_218BDA1BC(v126, v164, qword_280EBA020, type metadata accessor for SportsSearchFeedGroupKnobs);
  v133 = *(v111 + 48);
  v134 = v133(v132, 1, v105);
  v135 = v167;
  v136 = v166;
  if (v134 == 1)
  {
    (*(v187 + 56))(v84, 1, 1, v186);
    sub_219AFD2F8(v84, 0, v136);
    sub_218BDA228(v126, qword_280EBA020, type metadata accessor for SportsSearchFeedGroupKnobs);
    sub_218BDA228(v185, qword_280EA4D70, type metadata accessor for SavedRecipesSearchFeedGroupKnobs);
    sub_218BDA228(v182, qword_280EB74D0, type metadata accessor for RecipesSearchFeedGroupKnobs);
    sub_218BDA228(v181, qword_280EB9948, type metadata accessor for TopicsSearchFeedGroupKnobs);
    sub_218BDA228(v184, qword_280EB4DF8, type metadata accessor for ChannelsSearchFeedGroupKnobs);
    sub_218BDA228(v178, qword_280EB57B0, type metadata accessor for ArticlesSearchFeedGroupKnobs);
    if (v133(v132, 1, v105) != 1)
    {
      sub_218BDA228(v132, qword_280EBA020, type metadata accessor for SportsSearchFeedGroupKnobs);
    }
  }

  else
  {
    sub_218BDA228(v126, qword_280EBA020, type metadata accessor for SportsSearchFeedGroupKnobs);
    sub_218BDA228(v185, qword_280EA4D70, type metadata accessor for SavedRecipesSearchFeedGroupKnobs);
    sub_218BDA228(v182, qword_280EB74D0, type metadata accessor for RecipesSearchFeedGroupKnobs);
    sub_218BDA228(v181, qword_280EB9948, type metadata accessor for TopicsSearchFeedGroupKnobs);
    sub_218BDA228(v184, qword_280EB4DF8, type metadata accessor for ChannelsSearchFeedGroupKnobs);
    sub_218BDA228(v178, qword_280EB57B0, type metadata accessor for ArticlesSearchFeedGroupKnobs);
    sub_218BDA284(v132, v136, type metadata accessor for SportsSearchFeedGroupKnobs);
  }

  v137 = v188;
  sub_218BDA284(v136, v188 + v98[9], type metadata accessor for SportsSearchFeedGroupKnobs);
  sub_218BDA284(v137, v135, type metadata accessor for SearchFeedGroupKnobs);
  (*(v144 + 8))(v143, v145);
  return __swift_destroy_boxed_opaque_existential_1(v183);
}

uint64_t sub_218BD9B80(void *a1)
{
  sub_218BDA2EC(0, &qword_27CC0EC90, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BDA168();
  sub_219BF7B44();
  v9[15] = 0;
  type metadata accessor for ArticlesSearchFeedGroupKnobs();
  sub_218BDA350(&qword_27CC0EC98, type metadata accessor for ArticlesSearchFeedGroupKnobs);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for SearchFeedGroupKnobs();
    v9[14] = 1;
    type metadata accessor for ChannelsSearchFeedGroupKnobs();
    sub_218BDA350(&qword_27CC0ECA0, type metadata accessor for ChannelsSearchFeedGroupKnobs);
    sub_219BF7834();
    v9[13] = 2;
    type metadata accessor for TopicsSearchFeedGroupKnobs();
    sub_218BDA350(&qword_27CC0ECA8, type metadata accessor for TopicsSearchFeedGroupKnobs);
    sub_219BF7834();
    v9[12] = 3;
    type metadata accessor for RecipesSearchFeedGroupKnobs();
    sub_218BDA350(&qword_27CC0ECB0, type metadata accessor for RecipesSearchFeedGroupKnobs);
    sub_219BF7834();
    v9[11] = 4;
    type metadata accessor for SavedRecipesSearchFeedGroupKnobs();
    sub_218BDA350(&qword_27CC0ECB8, type metadata accessor for SavedRecipesSearchFeedGroupKnobs);
    sub_219BF7834();
    v9[10] = 5;
    type metadata accessor for SportsSearchFeedGroupKnobs();
    sub_218BDA350(&qword_27CC0E510, type metadata accessor for SportsSearchFeedGroupKnobs);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218BD9F64()
{
  v1 = *v0;
  v2 = 0x73656C6369747261;
  v3 = 0x4B73657069636572;
  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0x6E4B7374726F7073;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x736C656E6E616863;
  if (v1 != 1)
  {
    v5 = 0x6E4B736369706F74;
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

uint64_t sub_218BDA044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218BDA4B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218BDA06C(uint64_t a1)
{
  v2 = sub_218BDA168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218BDA0A8(uint64_t a1)
{
  v2 = sub_218BDA168();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_218BDA114(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_218BDA168()
{
  result = qword_280ECD450;
  if (!qword_280ECD450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECD450);
  }

  return result;
}

uint64_t sub_218BDA1BC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_218BDA114(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_218BDA228(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218BDA114(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218BDA284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_218BDA2EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218BDA168();
    v7 = a3(a1, &type metadata for SearchFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218BDA350(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218BDA3AC()
{
  result = qword_27CC0ECC0;
  if (!qword_27CC0ECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0ECC0);
  }

  return result;
}

unint64_t sub_218BDA404()
{
  result = qword_280ECD440;
  if (!qword_280ECD440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECD440);
  }

  return result;
}

unint64_t sub_218BDA45C()
{
  result = qword_280ECD448;
  if (!qword_280ECD448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECD448);
  }

  return result;
}

uint64_t sub_218BDA4B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C6369747261 && a2 == 0xED000073626F6E4BLL;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736C656E6E616863 && a2 == 0xED000073626F6E4BLL || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E4B736369706F74 && a2 == 0xEB0000000073626FLL || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4B73657069636572 && a2 == 0xEC00000073626F6ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219CEAE80 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E4B7374726F7073 && a2 == 0xEB0000000073626FLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void sub_218BDA714()
{
  sub_2186E548C(319, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2186E548C(319, &qword_280E8F140, type metadata accessor for MagazineCategoryConfig.Channel, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_218BDA878()
{
  sub_2186DEEA0(319, &qword_280E8F860);
  if (v0 <= 0x3F)
  {
    sub_2186E548C(319, qword_280EC7F40, type metadata accessor for MagazineCategoryConfig.Channel.Image, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_218BDA96C()
{
  result = sub_219BDB954();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_218BDAA40()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218BDAB24()
{
  sub_219BF5524();
}

uint64_t sub_218BDABF4()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218BDACD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218BDDD60();
  *a1 = result;
  return result;
}

void sub_218BDAD04(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xED00007478655479;
  v6 = 0x726F737365636361;
  v7 = 0xE800000000000000;
  v8 = 0x6C72557265766F63;
  if (v2 != 3)
  {
    v8 = 0x6152746365707361;
    v7 = 0xEB000000006F6974;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1701667182;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_218BDADA4()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x726F737365636361;
  v4 = 0x6C72557265766F63;
  if (v1 != 3)
  {
    v4 = 0x6152746365707361;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667182;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_218BDAE40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218BDDD60();
  *a1 = result;
  return result;
}

uint64_t sub_218BDAE68(uint64_t a1)
{
  v2 = sub_218BDD8C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218BDAEA4(uint64_t a1)
{
  v2 = sub_218BDD8C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218BDAEE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v32 = a2;
  v3 = sub_219BDBD64();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_2186E548C(0, qword_280EC7F40, type metadata accessor for MagazineCategoryConfig.Channel.Image, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v33 = &v27 - v7;
  sub_2186E548C(0, &unk_280EE9D00, MEMORY[0x277CC9260], v5);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  sub_218BDD9EC(0, &qword_280E8CE48, sub_218BDD8C4, &type metadata for MagazineCategoryConfig.Channel.Keys, MEMORY[0x277D844C8]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BDD8C4();
  v16 = v34;
  sub_219BF7B34();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v28 = v13;
    v18 = v31;
    sub_219BDB954();
    LOBYTE(v36) = 3;
    sub_218BDD750(&unk_280EE9D10, MEMORY[0x277CC9260]);
    sub_219BF7674();
    v34 = v10;
    sub_218BDB36C(v10, v33);
    LOBYTE(v35) = 0;
    sub_219BF7674();
    v19 = v37;
    if (v37)
    {
      v27 = v36;
    }

    else
    {
      sub_219BDBD54();
      v27 = sub_219BDBD44();
      v19 = v20;
      (*(v29 + 8))(v18, v30);
    }

    v21 = a1;
    LOBYTE(v35) = 1;
    sub_219BF7674();
    v22 = v36;
    v31 = v37;
    v38 = 2;
    sub_219BF7674();
    sub_2187BC448(v34, &unk_280EE9D00, MEMORY[0x277CC9260]);
    (*(v28 + 8))(v15, v12);
    v23 = v32;
    *v32 = v27;
    v23[1] = v19;
    v24 = v31;
    v23[2] = v22;
    v23[3] = v24;
    *(v23 + 2) = v35;
    v25 = type metadata accessor for MagazineCategoryConfig.Channel(0);
    sub_218BDD918(v33, v23 + *(v25 + 28), qword_280EC7F40, type metadata accessor for MagazineCategoryConfig.Channel.Image);
    v17 = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_218BDB36C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = MEMORY[0x277CC9260];
  sub_2186E548C(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20[-v6];
  v8 = sub_219BDB954();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v20[-v13];
  sub_218BDD5C4(a1, v7, &unk_280EE9D00, v4);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_2187BC448(v7, &unk_280EE9D00, MEMORY[0x277CC9260]);
    v15 = type metadata accessor for MagazineCategoryConfig.Channel.Image(0);
    return (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
  }

  else
  {
    v17 = *(v9 + 32);
    v17(v14, v7, v8);
    (*(v9 + 16))(v12, v14, v8);
    v20[15] = 4;
    sub_218BDD9EC(0, &qword_280E8CE48, sub_218BDD8C4, &type metadata for MagazineCategoryConfig.Channel.Keys, MEMORY[0x277D844C8]);
    sub_218BDD998();
    sub_219BF7674();
    (*(v9 + 8))(v14, v8);
    if (v22)
    {
      v18 = 0.75;
    }

    else
    {
      v18 = v21;
    }

    v17(a2, v12, v8);
    v19 = type metadata accessor for MagazineCategoryConfig.Channel.Image(0);
    *&a2[*(v19 + 20)] = v18;
    return (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
  }
}

uint64_t sub_218BDB6A4(void *a1)
{
  v2 = v1;
  sub_2186E548C(0, qword_280EC7F40, type metadata accessor for MagazineCategoryConfig.Channel.Image, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  sub_218BDD9EC(0, &qword_27CC0ECE8, sub_218BDD8C4, &type metadata for MagazineCategoryConfig.Channel.Keys, MEMORY[0x277D84538]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BDD8C4();
  sub_219BF7B44();
  LOBYTE(v21) = 0;
  v12 = v20;
  sub_219BF77F4();
  if (v12)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v20 = v9;
  v21 = *(v2 + 16);
  v22 = 1;
  sub_2186DEEA0(0, &qword_280E8F860);
  sub_21897A7C0();
  sub_219BF7834();
  v14 = v8;
  v21 = *(v2 + 32);
  v22 = 2;
  sub_219BF7834();
  v15 = type metadata accessor for MagazineCategoryConfig.Channel(0);
  sub_218BDD5C4(v2 + *(v15 + 28), v6, qword_280EC7F40, type metadata accessor for MagazineCategoryConfig.Channel.Image);
  v16 = type metadata accessor for MagazineCategoryConfig.Channel.Image(0);
  v17 = (*(*(v16 - 8) + 48))(v6, 1, v16);
  if (v17 == 1)
  {
    sub_2187BC448(v6, qword_280EC7F40, type metadata accessor for MagazineCategoryConfig.Channel.Image);
    v18 = 0;
  }

  else
  {
    v18 = *&v6[*(v16 + 20)];
    sub_218BDD6A0(v6);
  }

  *&v21 = v18;
  BYTE8(v21) = v17 == 1;
  v22 = 4;
  sub_2186DEEA0(0, &unk_280EE8EA8);
  sub_218BDDA54();
  sub_219BF7834();
  return (*(v20 + 8))(v11, v14);
}

uint64_t sub_218BDBAAC()
{
  sub_219BF5524();
}

uint64_t sub_218BDBBD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218BDDDAC();
  *a1 = result;
  return result;
}

void sub_218BDBC00(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656C746974;
  v5 = 0xEA00000000007344;
  v6 = 0x496C656E6E616863;
  if (v2 != 5)
  {
    v6 = 0x736C656E6E616863;
    v5 = 0xE800000000000000;
  }

  v7 = 0x326C72556E6F6369;
  if (v2 != 3)
  {
    v7 = 0x336C72556E6F6369;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE900000000000078;
  }

  v8 = 0x696669746E656469;
  v9 = 0xEA00000000007265;
  if (v2 != 1)
  {
    v8 = 0x316C72556E6F6369;
    v9 = 0xE900000000000078;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = v9;
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

uint64_t sub_218BDBCEC()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x496C656E6E616863;
  if (v1 != 5)
  {
    v3 = 0x736C656E6E616863;
  }

  v4 = 0x326C72556E6F6369;
  if (v1 != 3)
  {
    v4 = 0x336C72556E6F6369;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x696669746E656469;
  if (v1 != 1)
  {
    v5 = 0x316C72556E6F6369;
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

uint64_t sub_218BDBDD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218BDDDAC();
  *a1 = result;
  return result;
}

uint64_t sub_218BDBDFC(uint64_t a1)
{
  v2 = sub_218BDD6FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218BDBE38(uint64_t a1)
{
  v2 = sub_218BDD6FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218BDBE74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_219BDBD64();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for MagazineCategoryConfig(0);
  MEMORY[0x28223BE20](v46);
  v44 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186E548C(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v47 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  sub_218BDD9EC(0, &qword_280E8CE50, sub_218BDD6FC, &type metadata for MagazineCategoryConfig.Keys, MEMORY[0x277D844C8]);
  v15 = v14;
  v48 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BDD6FC();
  v18 = v49;
  sub_219BF7B34();
  if (v18)
  {
    v20 = a1;
  }

  else
  {
    v39 = v13;
    v40 = v11;
    v49 = a1;
    LOBYTE(v51) = 0;
    v36 = sub_219BF76F4();
    v38 = v19;
    LOBYTE(v53) = 1;
    sub_219BF7674();
    v35 = v51;
    v37 = v52;
    sub_219BDB954();
    LOBYTE(v53) = 2;
    sub_218BDD750(&unk_280EE9D10, MEMORY[0x277CC9260]);
    sub_219BF7674();
    LOBYTE(v53) = 3;
    sub_219BF7674();
    LOBYTE(v53) = 4;
    sub_219BF7674();
    sub_2186E548C(0, &qword_280E8F140, type metadata accessor for MagazineCategoryConfig.Channel, MEMORY[0x277D83940]);
    v50 = 6;
    sub_218BDD800(&qword_280E8F138, qword_280EC7EE0);
    sub_219BF76E4();
    v22 = v53;
    if (!v53)
    {
      v22 = MEMORY[0x277D84F90];
    }

    v34 = v22;
    v23 = v44;
    v24 = v35;
    v26 = v37;
    v25 = v38;
    *v44 = v36;
    v23[1] = v25;
    if (!v26)
    {
      v27 = v41;
      sub_219BDBD54();
      v24 = sub_219BDBD44();
      v26 = v28;
      (*(v42 + 8))(v27, v43);
    }

    (*(v48 + 8))(v17, v15);
    v29 = v45;
    v30 = v46;
    v31 = v49;
    v23[2] = v24;
    v23[3] = v26;
    v32 = MEMORY[0x277CC9260];
    sub_218BDD918(v39, v23 + v30[6], &unk_280EE9D00, MEMORY[0x277CC9260]);
    sub_218BDD918(v40, v23 + v30[7], &unk_280EE9D00, v32);
    sub_218BDD918(v47, v23 + v30[8], &unk_280EE9D00, v32);
    *(v23 + v30[9]) = v34;
    sub_218BDD798(v23, v29, type metadata accessor for MagazineCategoryConfig);
    v20 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_218BDC4C8(void *a1)
{
  v3 = v1;
  sub_218BDD9EC(0, &qword_27CC0ECD0, sub_218BDD6FC, &type metadata for MagazineCategoryConfig.Keys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BDD6FC();
  sub_219BF7B44();
  v18 = 0;
  sub_219BF77F4();
  if (!v2)
  {
    v17 = 1;
    sub_219BF77F4();
    v11 = type metadata accessor for MagazineCategoryConfig(0);
    v16 = 2;
    sub_2186E548C(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    sub_21897A840();
    sub_219BF7834();
    v15 = 3;
    sub_219BF7834();
    v14 = 4;
    sub_219BF7834();
    v12[1] = *(v3 + *(v11 + 36));
    v13 = 6;
    sub_2186E548C(0, &qword_280E8F140, type metadata accessor for MagazineCategoryConfig.Channel, MEMORY[0x277D83940]);
    sub_218BDD800(&qword_27CC0ECD8, &qword_27CC0ECE0);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

BOOL sub_218BDC824(void *a1, void *a2)
{
  v4 = type metadata accessor for MagazineCategoryConfig.Channel.Image(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E548C(0, qword_280EC7F40, type metadata accessor for MagazineCategoryConfig.Channel.Image, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  sub_218BDD54C(0, &qword_27CC0ECC8, qword_280EC7F40, type metadata accessor for MagazineCategoryConfig.Channel.Image);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - v13;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_219BF78F4() & 1) == 0)
  {
    return 0;
  }

  v15 = a1[3];
  v16 = a2[3];
  if (v15)
  {
    if (!v16 || (a1[2] != a2[2] || v15 != v16) && (sub_219BF78F4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v17 = a1[5];
  v18 = a2[5];
  if (v17)
  {
    if (!v18 || (a1[4] != a2[4] || v17 != v18) && (sub_219BF78F4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = *(type metadata accessor for MagazineCategoryConfig.Channel(0) + 28);
  v20 = a1 + v19;
  v21 = *(v12 + 48);
  sub_218BDD5C4(v20, v14, qword_280EC7F40, type metadata accessor for MagazineCategoryConfig.Channel.Image);
  sub_218BDD5C4(a2 + v19, &v14[v21], qword_280EC7F40, type metadata accessor for MagazineCategoryConfig.Channel.Image);
  v22 = *(v5 + 48);
  if (v22(v14, 1, v4) == 1)
  {
    if (v22(&v14[v21], 1, v4) == 1)
    {
      sub_2187BC448(v14, qword_280EC7F40, type metadata accessor for MagazineCategoryConfig.Channel.Image);
      return 1;
    }

    goto LABEL_23;
  }

  sub_218BDD5C4(v14, v10, qword_280EC7F40, type metadata accessor for MagazineCategoryConfig.Channel.Image);
  if (v22(&v14[v21], 1, v4) == 1)
  {
    sub_218BDD6A0(v10);
LABEL_23:
    sub_218BDD644(v14, &qword_27CC0ECC8, qword_280EC7F40, type metadata accessor for MagazineCategoryConfig.Channel.Image);
    return 0;
  }

  sub_218BDD798(&v14[v21], v7, type metadata accessor for MagazineCategoryConfig.Channel.Image);
  if ((sub_219BDB8A4() & 1) == 0)
  {
    sub_218BDD6A0(v7);
    sub_218BDD6A0(v10);
    sub_2187BC448(v14, qword_280EC7F40, type metadata accessor for MagazineCategoryConfig.Channel.Image);
    return 0;
  }

  v24 = *(v4 + 20);
  v25 = *&v10[v24];
  v26 = *&v7[v24];
  sub_218BDD6A0(v7);
  sub_218BDD6A0(v10);
  sub_2187BC448(v14, qword_280EC7F40, type metadata accessor for MagazineCategoryConfig.Channel.Image);
  return v25 == v26;
}

uint64_t sub_218BDCC58(void *a1, void *a2)
{
  v4 = sub_219BDB954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CC9260];
  sub_2186E548C(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v70 = &v63 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v63 - v15;
  sub_218BDD54C(0, &qword_280EE9CF0, &unk_280EE9D00, v8);
  v18 = v17;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v71 = &v63 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v63 - v24;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_219BF78F4() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_219BF78F4() & 1) == 0)
  {
    goto LABEL_28;
  }

  v66 = v12;
  v67 = v7;
  v26 = type metadata accessor for MagazineCategoryConfig(0);
  v68 = v18;
  v69 = v26;
  v27 = *(v26 + 24);
  v28 = *(v18 + 48);
  v72 = v5;
  v29 = MEMORY[0x277CC9260];
  sub_218BDD5C4(a1 + v27, v25, &unk_280EE9D00, MEMORY[0x277CC9260]);
  v30 = v29;
  v31 = v72;
  sub_218BDD5C4(a2 + v27, &v25[v28], &unk_280EE9D00, v30);
  v32 = *(v31 + 48);
  if (v32(v25, 1, v4) == 1)
  {
    if (v32(&v25[v28], 1, v4) == 1)
    {
      v65 = v32;
      sub_2187BC448(v25, &unk_280EE9D00, MEMORY[0x277CC9260]);
      goto LABEL_14;
    }

LABEL_12:
    v33 = MEMORY[0x277CC9260];
    v34 = v25;
LABEL_27:
    sub_218BDD644(v34, &qword_280EE9CF0, &unk_280EE9D00, v33);
    goto LABEL_28;
  }

  sub_218BDD5C4(v25, v16, &unk_280EE9D00, MEMORY[0x277CC9260]);
  if (v32(&v25[v28], 1, v4) == 1)
  {
    (*(v31 + 8))(v16, v4);
    goto LABEL_12;
  }

  v64 = v21;
  v65 = v32;
  v35 = v67;
  (*(v31 + 32))(v67, &v25[v28], v4);
  sub_218BDD750(&qword_280EE9D20, MEMORY[0x277CC9260]);
  v36 = v31;
  v37 = sub_219BF53A4();
  v38 = *(v36 + 8);
  v39 = v35;
  v21 = v64;
  v38(v39, v4);
  v38(v16, v4);
  sub_2187BC448(v25, &unk_280EE9D00, MEMORY[0x277CC9260]);
  if ((v37 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  v40 = *(v69 + 28);
  v41 = *(v68 + 48);
  v42 = MEMORY[0x277CC9260];
  v43 = v71;
  sub_218BDD5C4(a1 + v40, v71, &unk_280EE9D00, MEMORY[0x277CC9260]);
  sub_218BDD5C4(a2 + v40, v43 + v41, &unk_280EE9D00, v42);
  v44 = v65;
  if (v65(v43, 1, v4) != 1)
  {
    v45 = v70;
    sub_218BDD5C4(v43, v70, &unk_280EE9D00, MEMORY[0x277CC9260]);
    v46 = v44(v43 + v41, 1, v4);
    v47 = v72;
    if (v46 != 1)
    {
      v48 = v67;
      (*(v72 + 32))(v67, v43 + v41, v4);
      sub_218BDD750(&qword_280EE9D20, MEMORY[0x277CC9260]);
      LODWORD(v64) = sub_219BF53A4();
      v49 = *(v47 + 8);
      v49(v48, v4);
      v49(v45, v4);
      sub_2187BC448(v43, &unk_280EE9D00, MEMORY[0x277CC9260]);
      if ((v64 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    (*(v72 + 8))(v45, v4);
    goto LABEL_19;
  }

  if (v44(v43 + v41, 1, v4) != 1)
  {
LABEL_19:
    v33 = MEMORY[0x277CC9260];
    v34 = v43;
    goto LABEL_27;
  }

  sub_2187BC448(v43, &unk_280EE9D00, MEMORY[0x277CC9260]);
LABEL_21:
  v50 = v69;
  v51 = *(v69 + 32);
  v52 = *(v68 + 48);
  v53 = MEMORY[0x277CC9260];
  sub_218BDD5C4(a1 + v51, v21, &unk_280EE9D00, MEMORY[0x277CC9260]);
  sub_218BDD5C4(a2 + v51, &v21[v52], &unk_280EE9D00, v53);
  v54 = v65;
  if (v65(v21, 1, v4) == 1)
  {
    if (v54(&v21[v52], 1, v4) == 1)
    {
      sub_2187BC448(v21, &unk_280EE9D00, MEMORY[0x277CC9260]);
LABEL_31:
      v56 = sub_219419210(*(a1 + *(v50 + 36)), *(a2 + *(v50 + 36)));
      return v56 & 1;
    }

    goto LABEL_26;
  }

  v55 = v66;
  sub_218BDD5C4(v21, v66, &unk_280EE9D00, MEMORY[0x277CC9260]);
  if (v54(&v21[v52], 1, v4) == 1)
  {
    (*(v72 + 8))(v55, v4);
LABEL_26:
    v33 = MEMORY[0x277CC9260];
    v34 = v21;
    goto LABEL_27;
  }

  v58 = v72;
  v59 = &v21[v52];
  v60 = v67;
  (*(v72 + 32))(v67, v59, v4);
  sub_218BDD750(&qword_280EE9D20, MEMORY[0x277CC9260]);
  v61 = sub_219BF53A4();
  v62 = *(v58 + 8);
  v62(v60, v4);
  v62(v55, v4);
  sub_2187BC448(v21, &unk_280EE9D00, MEMORY[0x277CC9260]);
  v50 = v69;
  if (v61)
  {
    goto LABEL_31;
  }

LABEL_28:
  v56 = 0;
  return v56 & 1;
}

void sub_218BDD54C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2186E548C(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_218BDD5C4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2186E548C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_218BDD644(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_218BDD54C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_218BDD6A0(uint64_t a1)
{
  v2 = type metadata accessor for MagazineCategoryConfig.Channel.Image(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_218BDD6FC()
{
  result = qword_280EC7F98;
  if (!qword_280EC7F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC7F98);
  }

  return result;
}

uint64_t sub_218BDD750(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218BDD798(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218BDD800(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_2186E548C(255, &qword_280E8F140, type metadata accessor for MagazineCategoryConfig.Channel, MEMORY[0x277D83940]);
    sub_218BDD750(a2, type metadata accessor for MagazineCategoryConfig.Channel);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_218BDD8C4()
{
  result = qword_280EC7F80;
  if (!qword_280EC7F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC7F80);
  }

  return result;
}

uint64_t sub_218BDD918(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2186E548C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_218BDD998()
{
  result = qword_280EE8EC0;
  if (!qword_280EE8EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE8EC0);
  }

  return result;
}

void sub_218BDD9EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_218BDDA54()
{
  result = qword_27CC0ECF0;
  if (!qword_27CC0ECF0)
  {
    sub_2186DEEA0(255, &unk_280EE8EA8);
    sub_218BDDADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0ECF0);
  }

  return result;
}

unint64_t sub_218BDDADC()
{
  result = qword_27CC0ECF8;
  if (!qword_27CC0ECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0ECF8);
  }

  return result;
}

unint64_t sub_218BDDB54()
{
  result = qword_27CC0ED00;
  if (!qword_27CC0ED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0ED00);
  }

  return result;
}

unint64_t sub_218BDDBAC()
{
  result = qword_27CC0ED08;
  if (!qword_27CC0ED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0ED08);
  }

  return result;
}

unint64_t sub_218BDDC04()
{
  result = qword_280EC7F88;
  if (!qword_280EC7F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC7F88);
  }

  return result;
}

unint64_t sub_218BDDC5C()
{
  result = qword_280EC7F90;
  if (!qword_280EC7F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC7F90);
  }

  return result;
}

unint64_t sub_218BDDCB4()
{
  result = qword_280EC7FA0;
  if (!qword_280EC7FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC7FA0);
  }

  return result;
}

unint64_t sub_218BDDD0C()
{
  result = qword_280EC7FA8;
  if (!qword_280EC7FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC7FA8);
  }

  return result;
}

uint64_t sub_218BDDD60()
{
  v0 = sub_219BF7614();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_218BDDDAC()
{
  v0 = sub_219BF7614();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

void __swiftcall HistoryFeedModule.createViewController()(UIViewController *__return_ptr retstr)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for HistoryFeedViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v1;
  v2 = sub_219BE1E04();

  swift_unownedRelease();
  if (v2)
  {
    sub_219BED0C4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_218BDDEC8(void *a1, uint64_t a2)
{
  v4 = sub_219BEBC84();
  v5 = *(v4 - 8);
  v30 = v4;
  v31 = v5;
  MEMORY[0x28223BE20](v4);
  v29 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_219BE14C4();
  v7 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE14A4();
  v11 = *(v10 - 8);
  v27 = v10;
  v28 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE15B4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  v24 = a1[3];
  v25 = v18;
  v23 = __swift_project_boxed_opaque_existential_1(a1, v24);
  swift_unownedRetainStrong();
  (*(v15 + 104))(v17, *MEMORY[0x277D2F550], v14);
  sub_219BDD0F4();
  (*(v15 + 8))(v17, v14);
  (*(v7 + 104))(v9, *MEMORY[0x277D2F338], v26);
  sub_219BE1484();
  sub_218BDE568(&qword_280EE8010, MEMORY[0x277D2F280]);
  v19 = v27;
  sub_219BDD1F4();

  (*(v28 + 8))(v13, v19);
  sub_219BDD274();
  sub_219BE1B94();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();
  __swift_project_boxed_opaque_existential_1((a2 + 64), *(a2 + 88));
  sub_219BEC134();
  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  sub_219BF5414();
  v20 = v29;
  sub_219BEBC44();
  sub_218BDE568(&qword_280EE34B8, MEMORY[0x277D2D120]);
  v21 = v30;
  sub_219BEC144();

  (*(v31 + 8))(v20, v21);
  sub_218BDE5B0();
  sub_219BE1BA4();
  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t HistoryFeedModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  return v0;
}

uint64_t HistoryFeedModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_218BDE448()
{
  v1 = *v0;
  __swift_project_boxed_opaque_existential_1((*v0 + 16), *(*v0 + 40));
  type metadata accessor for HistoryFeedViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v1;
  v2 = sub_219BE1E04();

  result = swift_unownedRelease();
  if (v2)
  {
    sub_219BED0C4();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218BDE568(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218BDE5B0()
{
  result = qword_280EE33B0;
  if (!qword_280EE33B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EE33B0);
  }

  return result;
}

double sub_218BDE618(uint64_t a1, uint64_t a2)
{
  v51 = sub_219BF11F4();
  v58 = *(v51 - 8);
  v4 = MEMORY[0x28223BE20](v51);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v49 - v8;
  MEMORY[0x28223BE20](v7);
  v50 = &v49 - v10;
  v52 = a1;
  v11 = sub_219BF3FB4();
  if (v11 >> 62)
  {
    goto LABEL_43;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v56 = v6;
  v57 = v9;
  v59 = v11;
  if (v12)
  {
    v6 = 0;
    v60 = (v11 & 0xC000000000000001);
    v54 = (v11 + 32);
    v55 = v11 & 0xFFFFFFFFFFFFFF8;
    v13 = a2 + 56;
    v14 = MEMORY[0x277D84F90];
    v15 = 0.0;
    while (1)
    {
      if (v60)
      {
        v11 = MEMORY[0x21CECE0F0](v6, v59);
        v16 = v11;
        v17 = __OFADD__(v6++, 1);
        if (v17)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v6 >= *(v55 + 16))
        {
          goto LABEL_42;
        }

        v16 = v54[v6];
        v11 = swift_unknownObjectRetain();
        v17 = __OFADD__(v6++, 1);
        if (v17)
        {
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          v48 = v11;
          v12 = sub_219BF7214();
          v11 = v48;
          goto LABEL_3;
        }
      }

      v18 = [v16 identifier];
      v19 = sub_219BF5414();
      v21 = v20;

      if (*(a2 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v22 = sub_219BF7AE4(), v23 = -1 << *(a2 + 32), v24 = v22 & ~v23, ((*(v13 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0))
      {
        v25 = ~v23;
        while (1)
        {
          v26 = (*(a2 + 48) + 16 * v24);
          v27 = *v26 == v19 && v26[1] == v21;
          if (v27 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v24 = (v24 + 1) & v25;
          if (((*(v13 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        v15 = v15 + 1.0;
      }

      else
      {
LABEL_20:
      }

      v28 = [v16 identifier];
      v29 = sub_219BF5414();
      v31 = v30;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_218840D24(0, *(v14 + 2) + 1, 1, v14);
      }

      v9 = *(v14 + 2);
      v32 = *(v14 + 3);
      if (v9 >= v32 >> 1)
      {
        v14 = sub_218840D24((v32 > 1), v9 + 1, 1, v14);
      }

      v11 = swift_unknownObjectRelease();
      *(v14 + 2) = v9 + 1;
      v33 = &v14[16 * v9];
      *(v33 + 4) = v29;
      *(v33 + 5) = v31;
      if (v6 == v12)
      {
        goto LABEL_29;
      }
    }
  }

  v15 = 0.0;
LABEL_29:

  v6 = v53[6];
  __swift_project_boxed_opaque_existential_1(v53 + 2, v53[5]);
  v34 = sub_219BEFFF4();
  a2 = *(v34 + 16);
  if (a2)
  {
    v35 = *(v58 + 16);
    v59 = v34 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    v60 = v35;
    v36 = v51;
    v11 = (v35)(v57);
    if (a2 != 1)
    {
      v54 = (v58 + 32);
      v55 = v58 + 8;
      v42 = 1;
      while (v42 < *(v34 + 16))
      {
        v43 = v58;
        v6 = v56;
        v60(v56, v59 + *(v58 + 72) * v42, v36);
        v9 = v57;
        sub_219BF11D4();
        v45 = v44;
        sub_219BF11D4();
        v46 = *(v43 + 8);
        if (v47 >= v45)
        {
          v11 = v46(v6, v36);
        }

        else
        {
          v46(v9, v36);
          v11 = (*v54)(v9, v6, v36);
        }

        if (a2 == ++v42)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_41;
    }

LABEL_31:

    v37 = v58;
    v38 = v50;
    (*(v58 + 32))(v50, v57, v36);
    sub_219BF11D4();
    v40 = v39;
    (*(v37 + 8))(v38, v36);
  }

  else
  {

    v40 = 0.0;
  }

  return v15 + v40;
}

uint64_t sub_218BDEB88(char a1, char a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    v6 = sub_219BF7214();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v15 = MEMORY[0x277D84F90];
    result = sub_219BF73F4();
    if (v6 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v8 = 0;
        do
        {
          v9 = v8 + 1;
          v10 = MEMORY[0x21CECE0F0]();
          type metadata accessor for FollowingTagModel();
          v11 = swift_allocObject();
          *(v11 + 16) = a1;
          *(v11 + 24) = v10;
          *(v11 + 32) = a2 & 1;
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
          v8 = v9;
        }

        while (v6 != v9);
      }

      else
      {
        v12 = (a3 + 32);
        type metadata accessor for FollowingTagModel();
        do
        {
          v13 = *v12++;
          v14 = swift_allocObject();
          *(v14 + 16) = a1;
          *(v14 + 24) = v13;
          *(v14 + 32) = a2 & 1;

          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
          --v6;
        }

        while (v6);
      }

      return v15;
    }
  }

  return result;
}

uint64_t FollowingTagModel.identifier.getter()
{
  v1 = *(v0 + 24);
  BYTE8(v7) = 0;
  *&v7 = *(v0 + 16);
  sub_219BF7484();
  MEMORY[0x21CECC330](58, 0xE100000000000000);
  v2 = [*(v1 + 16) identifier];
  v3 = sub_219BF5414();
  v5 = v4;

  MEMORY[0x21CECC330](v3, v5);

  return *(&v7 + 1);
}

uint64_t sub_218BDEDE4()
{
  v1 = [*(*(v0 + 24) + 16) tagType];
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      return 0;
    }
  }

  else if (v1 == 1)
  {
    return 1;
  }

  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_218BDEED4(uint64_t a1)
{
  sub_219BF7484();
  MEMORY[0x21CECC330](58, 0xE100000000000000);
  v2 = [*(a1 + 16) identifier];
  v3 = sub_219BF5414();
  v5 = v4;

  MEMORY[0x21CECC330](v3, v5);

  return 0;
}

uint64_t sub_218BDEF98()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218BDF054()
{
  sub_219BF5524();
}

uint64_t sub_218BDF0FC()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218BDF1B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218BE1F9C();
  *a1 = result;
  return result;
}

void sub_218BDF1E4(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 6775156;
  v4 = 0xE500000000000000;
  v5 = 0x646574756DLL;
  if (*v1 != 2)
  {
    v5 = 0x74756374726F6873;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x6974736567677573;
    v2 = 0xEA00000000006E6FLL;
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

uint64_t FollowingTagModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

BOOL static FollowingTagModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  sub_219BF7484();
  MEMORY[0x21CECC330](58, 0xE100000000000000);
  v4 = [*(v3 + 16) identifier];
  v5 = sub_219BF5414();
  v7 = v6;

  MEMORY[0x21CECC330](v5, v7);

  v8 = *(a2 + 24);
  sub_219BF7484();
  MEMORY[0x21CECC330](58, 0xE100000000000000);
  v9 = [*(v8 + 16) identifier];
  v10 = sub_219BF5414();
  v12 = v11;

  MEMORY[0x21CECC330](v10, v12);

  return _s7NewsUI28TagModelC2eeoiySbAC_ACtFZ_0(v3, v8);
}

uint64_t FollowingTagModel.hashValue.getter()
{
  sub_219BF7AA4();
  sub_218BE1FE8(&qword_27CC0ED10, v0, type metadata accessor for FollowingTagModel);
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_218BDF528(uint64_t a1, uint64_t a2)
{
  v4 = sub_218BE1FE8(&qword_27CC0ED18, a2, type metadata accessor for FollowingTagModel);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_218BDF5A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_218BDEED4(*(*a1 + 24));
  v6 = v5;
  if (v4 == sub_218BDEED4(*(v3 + 24)) && v6 == v7)
  {
  }

  else
  {
    v9 = sub_219BF78F4();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for TagModel();
  return static TagModel.== infix(_:_:)(*(v2 + 24), *(v3 + 24)) & 1;
}

uint64_t FollowingTagModel.description.getter()
{
  BYTE8(v3) = 0;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000018, 0x8000000219CEAFD0);
  *&v3 = *(v0 + 16);
  sub_219BF7484();
  MEMORY[0x21CECC330](0x646F4D676174202CLL, 0xEB000000003D6C65);
  v1 = TagModel.description.getter();
  MEMORY[0x21CECC330](v1);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  return *(&v3 + 1);
}

BOOL FollowingTagModel.isMovable.getter()
{
  if (*(v0 + 32) != 1)
  {
    return 0;
  }

  return !*(v0 + 16) || *(v0 + 16) == 3;
}

BOOL sub_218BDF824()
{
  if (*(*v0 + 32) != 1)
  {
    return 0;
  }

  return !*(*v0 + 16) || *(*v0 + 16) == 3;
}

uint64_t sub_218BDF850()
{
  v1 = [*(*(*v0 + 24) + 16) displayName];
  v2 = sub_219BF5414();

  return v2;
}

uint64_t sub_218BDF8D8()
{
  v1 = *(*v0 + 24);
  sub_21943391C();
  if (v2)
  {

    return 0;
  }

  v4 = *(v1 + 27);
  if (v4 < 0 || (v4 & 1) == 0)
  {
    return 0;
  }

  sub_2186C6148(0, &qword_280E8DA80);
  return sub_219BF6CD4();
}

uint64_t sub_218BDF9D0()
{
  v1 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v1);
  v3 = (&v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(v0 + 24);
  v5 = [*(v4 + 16) tagType];
  if (v5 <= 1)
  {
    if (v5 == 1)
    {
      goto LABEL_5;
    }

    if (v5)
    {
      goto LABEL_7;
    }

LABEL_13:
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_219BF7314();
    MEMORY[0x21CECC330](0xD000000000000031, 0x8000000219CEB140);
    v10 = [*(v4 + 16) tagType];
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          v11 = 0xE700000000000000;
          v12 = 0x6E6F6974636573;
          goto LABEL_37;
        case 4:
          v11 = 0xE400000000000000;
          v12 = 1953720684;
          goto LABEL_37;
        case 5:
          v11 = 0xE500000000000000;
          v12 = 0x6575737369;
          goto LABEL_37;
      }
    }

    else
    {
      switch(v10)
      {
        case 0:
          v12 = 0x6E776F6E6B6E75;
          v11 = 0xE700000000000000;
          goto LABEL_37;
        case 1:
          v11 = 0xE500000000000000;
          v12 = 0x6369706F74;
          goto LABEL_37;
        case 2:
          v11 = 0xE700000000000000;
          v12 = 0x6C656E6E616863;
LABEL_37:
          MEMORY[0x21CECC330](v12, v11);

          MEMORY[0x21CECC330](0x3D4449676174202CLL, 0xE800000000000000);
          v17 = [*(v4 + 16) identifier];
          v18 = sub_219BF5414();
          v20 = v19;

          MEMORY[0x21CECC330](v18, v20);

          goto LABEL_38;
      }
    }

    v12 = 0x2D6E776F6E6B6E75;
    v11 = 0xEF746C7561666564;
    goto LABEL_37;
  }

  if (v5 == 2)
  {
LABEL_5:
    *v3 = v0;
    swift_storeEnumTagMultiPayload();
    sub_218BE1FE8(&qword_280EDC630, 255, type metadata accessor for FollowingModel);

    return sub_219BE5FB4();
  }

  if ((v5 - 3) < 3)
  {
    goto LABEL_13;
  }

LABEL_7:
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000063, 0x8000000219CEB0D0);
  v7 = [*(v4 + 16) tagType];
  if (v7 > 2)
  {
    switch(v7)
    {
      case 3:
        v8 = 0xE700000000000000;
        v9 = 0x6E6F6974636573;
        goto LABEL_33;
      case 4:
        v8 = 0xE400000000000000;
        v9 = 1953720684;
        goto LABEL_33;
      case 5:
        v8 = 0xE500000000000000;
        v9 = 0x6575737369;
        goto LABEL_33;
    }

LABEL_32:
    v9 = 0x2D6E776F6E6B6E75;
    v8 = 0xEF746C7561666564;
    goto LABEL_33;
  }

  if (!v7)
  {
    v9 = 0x6E776F6E6B6E75;
    v8 = 0xE700000000000000;
    goto LABEL_33;
  }

  if (v7 == 1)
  {
    v8 = 0xE500000000000000;
    v9 = 0x6369706F74;
    goto LABEL_33;
  }

  if (v7 != 2)
  {
    goto LABEL_32;
  }

  v8 = 0xE700000000000000;
  v9 = 0x6C656E6E616863;
LABEL_33:
  MEMORY[0x21CECC330](v9, v8);

  MEMORY[0x21CECC330](0x3D4449676174202CLL, 0xE800000000000000);
  v13 = [*(v4 + 16) identifier];
  v14 = sub_219BF5414();
  v16 = v15;

  MEMORY[0x21CECC330](v14, v16);

  MEMORY[0x21CECC330](46, 0xE100000000000000);
LABEL_38:
  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_218BDFE64(uint64_t a1, char a2)
{
  v4 = *(a1 + 16);
  v5 = *(*(v2 + 24) + 24);
  v6 = *(a1 + 25);
  v7 = *(a1 + 27);
  v8 = *(a1 + 32);
  type metadata accessor for TagModel();
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  *(v9 + 25) = v6;
  *(v9 + 27) = v7;
  *(v9 + 32) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = 1;
  *(v10 + 24) = v9;
  *(v10 + 32) = a2;

  swift_unknownObjectRetain();
  return v10;
}

size_t sub_218BDFF40(unint64_t a1)
{
  sub_218950B84();
  v16 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v6 = sub_219BF7214();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_218C34A38(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v7 = v17;
    v10 = a1;
    v15 = a1 & 0xC000000000000001;
    v11 = a1;
    do
    {
      if (v15)
      {
        MEMORY[0x21CECE0F0](v9, v10);
      }

      else
      {
      }

      sub_218BDF9D0();

      v17 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_218C34A38(v12 > 1, v13 + 1, 1);
        v7 = v17;
      }

      ++v9;
      *(v7 + 16) = v13 + 1;
      (*(v3 + 32))(v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, v5, v16);
      v10 = v11;
    }

    while (v6 != v9);
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_218BE0128(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if (a1 >> 62)
  {
    v4 = sub_219BF7214();
    if (v4 < 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 < 2)
    {
LABEL_16:

      return v3;
    }
  }

  v34 = MEMORY[0x277D84F90];
  sub_21870B65C(0, v4, 0);
  v5 = v34;
  if ((v3 & 0xC000000000000001) != 0)
  {
    v6 = 0;
    do
    {
      v7 = *(MEMORY[0x21CECE0F0](v6, v3) + 24);
      swift_beginAccess();
      v8 = *(v7 + 16);
      swift_unknownObjectRetain();
      v9 = [v8 identifier];
      v10 = sub_219BF5414();
      v12 = v11;
      swift_endAccess();
      swift_unknownObjectRelease_n();

      v34 = v5;
      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_21870B65C((v13 > 1), v14 + 1, 1);
        v5 = v34;
      }

      ++v6;
      *(v5 + 16) = v14 + 1;
      v15 = v5 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
    }

    while (v4 != v6);
  }

  else
  {
    v16 = v3 + 32;
    do
    {
      v17 = *(*v16 + 24);
      swift_beginAccess();
      v18 = *(v17 + 16);
      swift_retain_n();
      v19 = [v18 identifier];
      v20 = sub_219BF5414();
      v22 = v21;
      swift_endAccess();

      v34 = v5;
      v24 = *(v5 + 16);
      v23 = *(v5 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_21870B65C((v23 > 1), v24 + 1, 1);
        v5 = v34;
      }

      *(v5 + 16) = v24 + 1;
      v25 = v5 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
      v16 += 8;
      --v4;
    }

    while (v4);
  }

  v26 = sub_219BF5904();

  v27 = [v2 scoresForTagIDs_];

  if (!v27)
  {
    sub_219BF61F4();
    sub_2186C6148(0, &qword_280E8D790);
    v31 = sub_219BF6F44();
    sub_219BE5314();

    goto LABEL_16;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  v28 = sub_219BF5214();

  v29 = sub_218BE063C(v28);

  v33[0] = sub_219758FD4(v30);
  sub_218BE1EF0(v33, v29);

  return v33[0];
}

BOOL sub_218BE04B4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = qword_219C215D8[*(v4 + 24)];
  v6 = *a2;
  v7 = qword_219C215D8[*(*(*a2 + 24) + 24)];
  if (v5 != v7)
  {
    return v5 < v7;
  }

  v9 = [*(v4 + 16) identifier];
  v10 = sub_219BF5414();
  v12 = v11;

  if (*(a3 + 16))
  {
    v13 = sub_21870F700(v10, v12);
    v15 = v14;

    v16 = 0.0;
    if (v15)
    {
      v16 = *(*(a3 + 56) + 8 * v13);
    }
  }

  else
  {

    v16 = 0.0;
  }

  v18 = [*(*(v6 + 24) + 16) identifier];
  v19 = sub_219BF5414();
  v21 = v20;

  if (*(a3 + 16))
  {
    v22 = sub_21870F700(v19, v21);
    v24 = v23;

    if (v24)
    {
      v25 = *(*(a3 + 56) + 8 * v22);
      if (v16 != v25)
      {
        return v25 < v16;
      }

      return _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(*(v3 + 24), *(v6 + 24));
    }
  }

  else
  {
  }

  if (v16 == 0.0)
  {
    return _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(*(v3 + 24), *(v6 + 24));
  }

  v25 = 0.0;
  return v25 < v16;
}

void *sub_218BE063C(uint64_t a1)
{
  sub_218BE2030();
  result = sub_219BF7584();
  v3 = result;
  v4 = 0;
  v26 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v25 = (result + 8);
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v26 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(*(v26 + 56) + 8 * v15);

      result = [v19 doubleValue];
      *&v25[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
      v20 = (v3[6] + 16 * v15);
      *v20 = v18;
      v20[1] = v17;
      *(v3[7] + 8 * v15) = v21;
      v22 = v3[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      v3[2] = v24;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_218BE0900()
{
  result = qword_27CC0ED28;
  if (!qword_27CC0ED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0ED28);
  }

  return result;
}

uint64_t sub_218BE0954(char *__src, char *a2, char *a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != a2 || &a2[8 * v13] <= a4)
    {
      v43 = a2;
      memmove(a4, a2, 8 * v13);
      a2 = v43;
    }

    v44 = a2;
    v16 = &v6[8 * v13];
    if (v11 < 8 || a2 <= __src)
    {
      goto LABEL_70;
    }

    v45 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    v75 = v6;
    while (2)
    {
      __dst = v44;
      v46 = (v44 - 8);
      v47 = v7;
      v48 = v16;
      v76 = v44 - 8;
      while (1)
      {
        v50 = *(v48 - 1);
        v48 -= 8;
        v49 = v50;
        v51 = *(v50 + 24);
        v52 = qword_219C215D8[*(v51 + 24)];
        v53 = *v46;
        v54 = qword_219C215D8[*(*(*v46 + 24) + 24)];
        if (v52 == v54)
        {
          break;
        }

        v7 = v47 - 8;
        if (v52 < v54)
        {
          goto LABEL_63;
        }

LABEL_61:
        if (v16 != v47)
        {
          *v7 = *v48;
        }

        v16 = v48;
        v47 = v7;
        if (v48 <= v6)
        {
          v16 = v48;
          v44 = __dst;
          goto LABEL_70;
        }
      }

      v80 = v16;
      v55 = *(v51 + 16);

      v56 = [v55 v45[278]];
      v57 = sub_219BF5414();
      v59 = v58;

      if (*(a5 + 16))
      {
        v60 = sub_21870F700(v57, v59);
        v62 = v61;

        v63 = 0.0;
        if (v62)
        {
          v63 = *(*(a5 + 56) + 8 * v60);
        }
      }

      else
      {

        v63 = 0.0;
      }

      v64 = [*(*(v53 + 24) + 16) v45[278]];
      v65 = sub_219BF5414();
      v67 = v66;

      if (*(a5 + 16))
      {
        v68 = sub_21870F700(v65, v67);
        v70 = v69;

        v6 = v75;
        if (v70)
        {
          v71 = *(*(a5 + 56) + 8 * v68);
          if (v63 != v71)
          {
            goto LABEL_60;
          }

LABEL_57:
          v72 = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(*(v49 + 24), *(v53 + 24));

          v7 = v47 - 8;
          v16 = v80;
          v45 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
          v46 = v76;
          if (v72)
          {
            goto LABEL_63;
          }

          goto LABEL_61;
        }
      }

      else
      {

        v6 = v75;
      }

      if (v63 != 0.0)
      {
        v71 = 0.0;
LABEL_60:

        v7 = v47 - 8;
        v16 = v80;
        v45 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
        v46 = v76;
        if (v71 < v63)
        {
LABEL_63:
          if (v47 != __dst)
          {
            *v7 = *v46;
          }

          if (v16 <= v6 || (v44 = v46, v46 <= __src))
          {
            v44 = v46;
            goto LABEL_70;
          }

          continue;
        }

        goto LABEL_61;
      }

      goto LABEL_57;
    }
  }

  v14 = a2;
  v15 = __src;
  if (a4 != __src || &__src[8 * v10] <= a4)
  {
    memmove(a4, __src, 8 * v10);
  }

  v16 = &v6[8 * v10];
  if (v8 >= 8 && v14 < v7)
  {
    v79 = &v6[8 * v10];
    do
    {
      v17 = *v14;
      v18 = *(*v14 + 24);
      v19 = qword_219C215D8[*(v18 + 24)];
      v20 = *v6;
      v21 = qword_219C215D8[*(*(*v6 + 24) + 24)];
      if (v19 != v21)
      {
        if (v19 >= v21)
        {
          goto LABEL_28;
        }

        goto LABEL_17;
      }

      v77 = v15;
      v22 = v6;
      v23 = *(v18 + 16);

      v24 = [v23 identifier];
      v25 = sub_219BF5414();
      v27 = v26;

      if (*(a5 + 16))
      {
        v28 = sub_21870F700(v25, v27);
        v30 = v29;

        v31 = 0.0;
        if (v30)
        {
          v31 = *(*(a5 + 56) + 8 * v28);
        }
      }

      else
      {

        v31 = 0.0;
      }

      v34 = [*(*(v20 + 24) + 16) identifier];
      v35 = sub_219BF5414();
      v37 = v36;

      if (*(a5 + 16))
      {
        v38 = sub_21870F700(v35, v37);
        v40 = v39;

        if (v40)
        {
          v41 = *(*(a5 + 56) + 8 * v38);
          v6 = v22;
          if (v31 == v41)
          {
            goto LABEL_27;
          }

          goto LABEL_34;
        }
      }

      else
      {
      }

      v6 = v22;
      if (v31 == 0.0)
      {
LABEL_27:
        v42 = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(*(v17 + 24), *(v20 + 24));

        v15 = v77;
        v16 = v79;
        if (!v42)
        {
          goto LABEL_28;
        }

        goto LABEL_17;
      }

      v41 = 0.0;
LABEL_34:

      v15 = v77;
      v16 = v79;
      if (v41 >= v31)
      {
LABEL_28:
        v32 = v6;
        v33 = v15 == v6;
        v6 += 8;
        if (v33)
        {
          goto LABEL_30;
        }

LABEL_29:
        *v15 = *v32;
        goto LABEL_30;
      }

LABEL_17:
      v32 = v14;
      v33 = v15 == v14;
      v14 += 8;
      if (!v33)
      {
        goto LABEL_29;
      }

LABEL_30:
      v15 += 8;
    }

    while (v6 < v16 && v14 < v7);
  }

  v44 = v15;
LABEL_70:
  if (v44 != v6 || v44 >= &v6[(v16 - v6 + (v16 - v6 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v44, v6, 8 * ((v16 - v6) / 8));
  }

  return 1;
}

uint64_t sub_218BE0EE0(char **a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_218C81048(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v24[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __src = (v10 + 8 * *v12);
      v15 = (v10 + 8 * *v13);
      v16 = (v10 + 8 * v14);

      sub_218BE0954(__src, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_218BE1088(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  v173 = MEMORY[0x277D84F90];
  if (v6 >= 1)
  {
    swift_bridgeObjectRetain_n();
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v169 = a5;
LABEL_5:
    v159 = v8;
    if (v7 + 1 >= v6)
    {
      v38 = v7 + 1;
      goto LABEL_38;
    }

    v9 = *a3;
    v171 = *(*a3 + 8 * (v7 + 1));
    v170[0] = *(v9 + 8 * v7);

    v10 = sub_218BE04B4(&v171, v170, a5);
    if (v163)
    {

      goto LABEL_126;
    }

    v11 = v10;
    v161 = v6;

    v12 = v7 + 2;
    v152 = v7;
    v13 = 8 * v7;
    v14 = v9 + v13 + 16;
    v166 = v11;
    while (1)
    {
      if (v161 == v12)
      {
        v38 = v161;
        goto LABEL_28;
      }

      v17 = *(v14 - 8);
      v16 = *v14;
      v18 = *(*v14 + 24);
      v19 = qword_219C215D8[*(v18 + 24)];
      v20 = qword_219C215D8[*(*(v17 + 24) + 24)];
      if (v19 == v20)
      {
        break;
      }

      v15 = v19 < v20;
LABEL_9:
      v8 = v159;
      ++v12;
      v14 += 8;
      if ((v11 ^ v15))
      {
        v38 = v12 - 1;
LABEL_28:
        if (!v11)
        {
LABEL_36:
          v7 = v152;
          goto LABEL_38;
        }

        v39 = v152;
        if (v38 < v152)
        {
          goto LABEL_149;
        }

        if (v152 < v38)
        {
          v40 = 8 * v38 - 8;
          v41 = v38;
          while (1)
          {
            if (v39 != --v41)
            {
              v42 = *a3;
              if (!*a3)
              {
                goto LABEL_152;
              }

              v43 = *(v42 + v13);
              *(v42 + v13) = *(v42 + v40);
              *(v42 + v40) = v43;
            }

            ++v39;
            v40 -= 8;
            v13 += 8;
            if (v39 >= v41)
            {
              goto LABEL_36;
            }
          }
        }

        v7 = v152;
LABEL_38:
        v44 = a3[1];
        if (v38 >= v44)
        {
          goto LABEL_71;
        }

        if (__OFSUB__(v38, v7))
        {
          goto LABEL_146;
        }

        if (v38 - v7 >= a4)
        {
          goto LABEL_71;
        }

        if (__OFADD__(v7, a4))
        {
          goto LABEL_147;
        }

        if (v7 + a4 < v44)
        {
          v44 = v7 + a4;
        }

        if (v44 >= v7)
        {
          if (v38 == v44)
          {
            goto LABEL_71;
          }

          v155 = v44;
          v45 = *a3;
          v153 = v7;
          v46 = v7 - v38;
          v47 = (*a3 + 8 * v38 - 8);
          v164 = *a3;
          while (2)
          {
            v162 = v38;
            v48 = *(v45 + 8 * v38);
            v157 = v46;
            v158 = v47;
            while (2)
            {
              v49 = *(v48 + 24);
              v50 = qword_219C215D8[*(v49 + 24)];
              v51 = *v47;
              v52 = qword_219C215D8[*(*(*v47 + 24) + 24)];
              if (v50 != v52)
              {
                if (v50 >= v52)
                {
                  break;
                }

                goto LABEL_66;
              }

              v53 = *(v49 + 16);

              v54 = [v53 identifier];
              v55 = sub_219BF5414();
              v57 = v56;

              if (*(a5 + 16))
              {
                v58 = sub_21870F700(v55, v57);
                v60 = v59;

                v61 = 0.0;
                if (v60)
                {
                  v61 = *(*(a5 + 56) + 8 * v58);
                }
              }

              else
              {

                v61 = 0.0;
              }

              v62 = [*(*(v51 + 24) + 16) identifier];
              v63 = sub_219BF5414();
              v65 = v64;

              if (*(a5 + 16))
              {
                v66 = sub_21870F700(v63, v65);
                v68 = v67;

                if (v68)
                {
                  v69 = *(*(a5 + 56) + 8 * v66);
                  if (v61 != v69)
                  {
                    goto LABEL_65;
                  }

LABEL_62:
                  v70 = *(v51 + 24);
                  v71 = *(*(v48 + 24) + 16);
                  v72 = [v71 name];
                  sub_219BF5414();

                  v73 = sub_219BF54D4();
                  v75 = v74;

                  v171 = v73;
                  v172 = v75;
                  v76 = [v71 identifier];
                  v77 = sub_219BF5414();
                  v79 = v78;

                  MEMORY[0x21CECC330](v77, v79);

                  v80 = v172;
                  v167 = v171;
                  v81 = *(v70 + 16);
                  v82 = [v81 name];
                  sub_219BF5414();

                  v83 = sub_219BF54D4();
                  v85 = v84;

                  v171 = v83;
                  v172 = v85;
                  a5 = v169;
                  v86 = [v81 identifier];
                  v87 = sub_219BF5414();
                  v89 = v88;

                  MEMORY[0x21CECC330](v87, v89);

                  v90 = v171;
                  v91 = v172;
                  v171 = v167;
                  v172 = v80;
                  v170[0] = v90;
                  v170[1] = v91;
                  sub_2187F3BD4();
                  v92 = sub_219BF7054();

                  v45 = v164;
                  if (v92 != -1)
                  {
                    break;
                  }

                  goto LABEL_66;
                }
              }

              else
              {
              }

              if (v61 == 0.0)
              {
                goto LABEL_62;
              }

              v69 = 0.0;
LABEL_65:

              v45 = v164;
              if (v69 >= v61)
              {
                break;
              }

LABEL_66:
              if (!v45)
              {
                goto LABEL_150;
              }

              v93 = *v47;
              v48 = v47[1];
              *v47 = v48;
              v47[1] = v93;
              --v47;
              if (!__CFADD__(v46++, 1))
              {
                continue;
              }

              break;
            }

            v38 = v162 + 1;
            v47 = v158 + 1;
            v46 = v157 - 1;
            if (v162 + 1 != v155)
            {
              continue;
            }

            break;
          }

          v8 = v159;
          v7 = v153;
          v38 = v155;
LABEL_71:
          if (v38 < v7)
          {
            goto LABEL_145;
          }

          v156 = v38;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_2191F6B60(0, *(v8 + 2) + 1, 1, v8);
          }

          v96 = *(v8 + 2);
          v95 = *(v8 + 3);
          v97 = v96 + 1;
          if (v96 >= v95 >> 1)
          {
            v8 = sub_2191F6B60((v95 > 1), v96 + 1, 1, v8);
          }

          *(v8 + 2) = v97;
          v98 = v8 + 32;
          v99 = &v8[16 * v96 + 32];
          *v99 = v7;
          *(v99 + 1) = v156;
          v173 = v8;
          v168 = *a1;
          if (!*a1)
          {
            goto LABEL_153;
          }

          if (v96)
          {
            v165 = v8 + 32;
            while (1)
            {
              v100 = v97 - 1;
              if (v97 >= 4)
              {
                break;
              }

              if (v97 == 3)
              {
                v101 = *(v8 + 4);
                v102 = *(v8 + 5);
                v111 = __OFSUB__(v102, v101);
                v103 = v102 - v101;
                v104 = v111;
LABEL_92:
                if (v104)
                {
                  goto LABEL_136;
                }

                v117 = &v8[16 * v97];
                v119 = *v117;
                v118 = *(v117 + 1);
                v120 = __OFSUB__(v118, v119);
                v121 = v118 - v119;
                v122 = v120;
                if (v120)
                {
                  goto LABEL_139;
                }

                v123 = &v98[16 * v100];
                v125 = *v123;
                v124 = *(v123 + 1);
                v111 = __OFSUB__(v124, v125);
                v126 = v124 - v125;
                if (v111)
                {
                  goto LABEL_142;
                }

                if (__OFADD__(v121, v126))
                {
                  goto LABEL_143;
                }

                if (v121 + v126 >= v103)
                {
                  if (v103 < v126)
                  {
                    v100 = v97 - 2;
                  }

                  goto LABEL_113;
                }

                goto LABEL_106;
              }

              v127 = &v8[16 * v97];
              v129 = *v127;
              v128 = *(v127 + 1);
              v111 = __OFSUB__(v128, v129);
              v121 = v128 - v129;
              v122 = v111;
LABEL_106:
              if (v122)
              {
                goto LABEL_138;
              }

              v130 = &v98[16 * v100];
              v132 = *v130;
              v131 = *(v130 + 1);
              v111 = __OFSUB__(v131, v132);
              v133 = v131 - v132;
              if (v111)
              {
                goto LABEL_141;
              }

              if (v133 < v121)
              {
                goto LABEL_3;
              }

LABEL_113:
              if (v100 - 1 >= v97)
              {
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
                goto LABEL_148;
              }

              v138 = *a3;
              if (!*a3)
              {
                goto LABEL_151;
              }

              v139 = v8;
              v140 = &v98[16 * v100 - 16];
              v141 = *v140;
              v142 = v100;
              v143 = &v98[16 * v100];
              v144 = *(v143 + 1);
              v145 = (v138 + 8 * *v140);
              v146 = (v138 + 8 * *v143);
              v147 = (v138 + 8 * v144);

              sub_218BE0954(v145, v146, v147, v168, v169);
              if (v163)
              {

                v173 = v139;
                goto LABEL_126;
              }

              if (v144 < v141)
              {
                goto LABEL_131;
              }

              v148 = *(v139 + 2);
              if (v142 > v148)
              {
                goto LABEL_132;
              }

              *v140 = v141;
              *(v140 + 1) = v144;
              if (v142 >= v148)
              {
                goto LABEL_133;
              }

              v97 = v148 - 1;
              memmove(v143, v143 + 16, 16 * (v148 - 1 - v142));
              v8 = v139;
              *(v139 + 2) = v148 - 1;
              a5 = v169;
              v98 = v165;
              if (v148 <= 2)
              {
LABEL_3:
                v173 = v8;
                goto LABEL_4;
              }
            }

            v105 = &v98[16 * v97];
            v106 = *(v105 - 8);
            v107 = *(v105 - 7);
            v111 = __OFSUB__(v107, v106);
            v108 = v107 - v106;
            if (v111)
            {
              goto LABEL_134;
            }

            v110 = *(v105 - 6);
            v109 = *(v105 - 5);
            v111 = __OFSUB__(v109, v110);
            v103 = v109 - v110;
            v104 = v111;
            if (v111)
            {
              goto LABEL_135;
            }

            v112 = &v8[16 * v97];
            v114 = *v112;
            v113 = *(v112 + 1);
            v111 = __OFSUB__(v113, v114);
            v115 = v113 - v114;
            if (v111)
            {
              goto LABEL_137;
            }

            v111 = __OFADD__(v103, v115);
            v116 = v103 + v115;
            if (v111)
            {
              goto LABEL_140;
            }

            if (v116 >= v108)
            {
              v134 = &v98[16 * v100];
              v136 = *v134;
              v135 = *(v134 + 1);
              v111 = __OFSUB__(v135, v136);
              v137 = v135 - v136;
              if (v111)
              {
                goto LABEL_144;
              }

              if (v103 < v137)
              {
                v100 = v97 - 2;
              }

              goto LABEL_113;
            }

            goto LABEL_92;
          }

LABEL_4:
          v6 = a3[1];
          v7 = v156;
          if (v156 >= v6)
          {
            goto LABEL_123;
          }

          goto LABEL_5;
        }

LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_151:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_152:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_153:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_154:
        result = swift_bridgeObjectRelease_n();
        __break(1u);
        return result;
      }
    }

    v21 = *(v18 + 16);

    v22 = [v21 identifier];
    v23 = sub_219BF5414();
    v25 = v24;

    if (*(v169 + 16))
    {
      v26 = sub_21870F700(v23, v25);
      v28 = v27;

      v29 = 0.0;
      if (v28)
      {
        v29 = *(*(v169 + 56) + 8 * v26);
      }
    }

    else
    {

      v29 = 0.0;
    }

    v30 = [*(*(v17 + 24) + 16) identifier];
    v31 = sub_219BF5414();
    v33 = v32;

    if (*(v169 + 16))
    {
      v34 = sub_21870F700(v31, v33);
      v36 = v35;

      v11 = v166;
      if (v36)
      {
        a5 = v169;
        v37 = *(*(v169 + 56) + 8 * v34);
        if (v29 != v37)
        {
          goto LABEL_24;
        }

LABEL_22:
        v15 = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(*(v16 + 24), *(v17 + 24));

        goto LABEL_9;
      }
    }

    else
    {

      v11 = v166;
    }

    a5 = v169;
    if (v29 != 0.0)
    {
      v37 = 0.0;
LABEL_24:

      v15 = v37 < v29;
      goto LABEL_9;
    }

    goto LABEL_22;
  }

  swift_bridgeObjectRetain_n();
LABEL_123:
  v149 = *a1;
  if (!*a1)
  {
    goto LABEL_154;
  }

  sub_218BE0EE0(&v173, v149, a3, a5);
  if (v163)
  {

LABEL_126:
    swift_bridgeObjectRelease_n();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_218BE1B5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = (*a4 + 8 * a3 - 8);
    v8 = result - a3;
    v38 = *a4;
LABEL_5:
    v36 = v7;
    v37 = a3;
    v9 = *(v6 + 8 * a3);
    v35 = v8;
    while (1)
    {
      v10 = *(v9 + 24);
      v11 = qword_219C215D8[*(v10 + 24)];
      v12 = *v7;
      v13 = qword_219C215D8[*(*(*v7 + 24) + 24)];
      if (v11 != v13)
      {
        if (v11 >= v13)
        {
          goto LABEL_4;
        }

        goto LABEL_23;
      }

      v14 = *(v10 + 16);

      v15 = [v14 identifier];
      v16 = sub_219BF5414();
      v18 = v17;

      if (*(a5 + 16))
      {
        v19 = sub_21870F700(v16, v18);
        v21 = v20;

        v22 = 0.0;
        if (v21)
        {
          v22 = *(*(a5 + 56) + 8 * v19);
        }
      }

      else
      {

        v22 = 0.0;
      }

      v23 = [*(*(v12 + 24) + 16) identifier];
      v24 = sub_219BF5414();
      v26 = v25;

      if (*(a5 + 16))
      {
        v27 = sub_21870F700(v24, v26);
        v29 = v28;

        if (v29)
        {
          v30 = *(*(a5 + 56) + 8 * v27);
          if (v22 == v30)
          {
            goto LABEL_19;
          }

          goto LABEL_22;
        }
      }

      else
      {
      }

      if (v22 == 0.0)
      {
LABEL_19:
        v31 = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(*(v9 + 24), *(v12 + 24));

        v6 = v38;
        if (!v31)
        {
          goto LABEL_4;
        }

        goto LABEL_23;
      }

      v30 = 0.0;
LABEL_22:

      v6 = v38;
      if (v30 >= v22)
      {
        goto LABEL_4;
      }

LABEL_23:
      if (!v6)
      {
        __break(1u);
        return result;
      }

      v32 = *v7;
      v9 = v7[1];
      *v7 = v9;
      v7[1] = v32;
      --v7;
      if (__CFADD__(v8++, 1))
      {
LABEL_4:
        a3 = v37 + 1;
        v7 = v36 + 1;
        v8 = v35 - 1;
        if (v37 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_218BE1D98(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_219BF7884();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for FollowingTagModel();
        v8 = sub_219BF5A34();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v9[1] = v7;

      sub_218BE1088(v9, v10, a1, v6, a2);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_218BE1B5C(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_218BE1EF0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_218C82C04(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_218BE1D98(v8, a2);

  sub_219BF73E4();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_218BE1F9C()
{
  v0 = sub_219BF7614();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_218BE1FE8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_218BE2030()
{
  if (!qword_280E8D160)
  {
    v0 = sub_219BF75C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D160);
    }
  }
}

void sub_218BE20A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2189F3FBC(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v20 = a4;
  sub_218830064(0, &unk_280E8F530, MEMORY[0x277D6D310], MEMORY[0x277D83940]);
  sub_219BE3204();
  (*(v10 + 16))(&v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v9);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = swift_allocObject();
  (*(v10 + 32))(v13 + v12, &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v9);
  v14 = sub_219BE2E54();
  sub_219BE2F74();

  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;

  v16 = sub_219BE2E54();
  sub_219BE2F74();

  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;

  v18 = sub_219BE2E54();
  sub_219BE2FD4();
}

uint64_t sub_218BE2348(uint64_t a1, void (*a2)(char *))
{
  sub_218BE3850(0, &qword_280EE4B18, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  sub_218BE37DC();
  v10 = *(v9 + 48);
  sub_2189F3FBC(0);
  (*(*(v11 - 8) + 16))(v8, a1, v11);
  v12 = *MEMORY[0x277D6D850];
  v13 = sub_219BE6DF4();
  (*(*(v13 - 8) + 104))(&v8[v10], v12, v13);
  (*(v6 + 104))(v8, *MEMORY[0x277D6DF70], v5);
  a2(v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_218BE2500(void *a1, void (*a2)(char *))
{
  sub_218BE3850(0, &qword_280EE4B18, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  *(&v11 - v7) = a1;
  (*(v6 + 104))(&v11 - v7, *MEMORY[0x277D6DF68], v5);
  v9 = a1;
  a2(v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_218BE2624()
{
  sub_218830064(0, &qword_280EE7028, MEMORY[0x277D6D310], MEMORY[0x277D6CF30]);

  v0 = sub_219BE2E54();
  sub_21898C1B8();
  sub_218BE36D8(&qword_280E8FC68, sub_21898C1B8);
  v1 = sub_219BE2F34();

  return v1;
}

uint64_t sub_218BE2714@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69[4] = a3;
  v5 = type metadata accessor for AudioFeedModel(0);
  v6 = MEMORY[0x28223BE20](v5);
  v87 = (v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v91 = v69 - v8;
  sub_218AB7640();
  v90 = v9;
  v92 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v98 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v97 = v69 - v12;
  v80 = type metadata accessor for AudioFeedSectionDescriptor();
  MEMORY[0x28223BE20](v80);
  v75 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AB76D4();
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14);
  v74 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = v69 - v19;
  sub_218953904();
  v82 = v21;
  v78 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v84 = v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v73 = v69 - v24;
  sub_218BE3944();
  MEMORY[0x28223BE20](v25 - 8);
  v69[3] = v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = *a1;
  sub_218830064(0, &unk_280E8F530, MEMORY[0x277D6D310], MEMORY[0x277D83940]);
  sub_21882FF78();
  sub_218BE36D8(&unk_280EE5DD0, MEMORY[0x277D6D310]);
  v27 = sub_219BF56C4();
  sub_2189F3FBC(0);
  v29 = v28;
  v69[2] = sub_219BEB1B4();
  v69[1] = v30;
  v31 = sub_218BE36D8(&qword_280EE3698, sub_2189F3FBC);
  v32 = sub_219BF5E44();
  v81 = a2;
  v79 = v29;
  if (v32)
  {
    v89 = v27;
    v101 = MEMORY[0x277D84F90];
    v77 = v32;
    sub_218C34728(0, v32 & ~(v32 >> 63), 0);
    v85 = v101;
    v76 = v31;
    result = sub_219BF5DF4();
    if ((v77 & 0x8000000000000000) == 0)
    {
      v34 = 0;
      v72 = (v78 + 16);
      v35 = (v92 + 16);
      v86 = (v92 + 8);
      v96 = (v92 + 32);
      v71 = (v16 + 8);
      v70 = (v78 + 8);
      v69[6] = v78 + 32;
      v36 = v90;
      v93 = v20;
      v94 = v15;
      v88 = (v92 + 16);
      while (1)
      {
        v37 = __OFADD__(v34, 1);
        v38 = v34 + 1;
        if (v37)
        {
          __break(1u);
          goto LABEL_27;
        }

        v83 = v38;
        v39 = sub_219BF5EC4();
        (*v72)(v84);
        v39(&v100, 0);
        sub_219BE6974();
        v40 = sub_218BE36D8(&qword_280EE7550, sub_218AB76D4);
        v41 = sub_219BF5E44();
        if (v41)
        {
          break;
        }

        (*v71)(v20, v15);
        v44 = MEMORY[0x277D84F90];
LABEL_20:
        v57 = v82;
        v58 = v84;
        sub_219BE6934();
        v59 = sub_218BE36D8(&qword_280EE5CB8, sub_218AB7640);
        v60 = sub_218BE36D8(&unk_280EE5CC0, sub_218AB7640);
        MEMORY[0x21CEB9170](v44, v36, v59, v60);
        sub_218BE36D8(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor);
        sub_218BE36D8(&qword_280EDCBF0, type metadata accessor for AudioFeedModel);
        v61 = v73;
        sub_219BE6924();
        (*v70)(v58, v57);
        v62 = v85;
        v101 = v85;
        v64 = *(v85 + 16);
        v63 = *(v85 + 24);
        if (v64 >= v63 >> 1)
        {
          sub_218C34728(v63 > 1, v64 + 1, 1);
          v62 = v101;
        }

        *(v62 + 16) = v64 + 1;
        v65 = (*(v78 + 80) + 32) & ~*(v78 + 80);
        v85 = v62;
        (*(v78 + 32))(v62 + v65 + *(v78 + 72) * v64, v61, v57);
        result = sub_219BF5E94();
        v34 = v83;
        v20 = v93;
        v15 = v94;
        v35 = v88;
        if (v83 == v77)
        {

          v66 = v85;
          goto LABEL_25;
        }
      }

      v42 = v41;
      v99 = MEMORY[0x277D84F90];
      sub_218C34778(0, v41 & ~(v41 >> 63), 0);
      v43 = v40;
      v44 = v99;
      v95 = v43;
      result = sub_219BF5DF4();
      if ((v42 & 0x8000000000000000) == 0)
      {
        while (1)
        {
          v45 = sub_219BF5EC4();
          (*v35)(v98);
          v45(&v100, 0);
          v46 = v91;
          sub_219BE5FC4();
          if (swift_getEnumCaseMultiPayload() != 3)
          {
            break;
          }

          v47 = sub_219BE5B24();
          v49 = v89;
          if (!*(v89 + 16))
          {

            v36 = v90;
            goto LABEL_14;
          }

          v50 = sub_21870F700(v47, v48);
          v52 = v51;

          if ((v52 & 1) == 0)
          {

            v36 = v90;
            v35 = v88;
            goto LABEL_14;
          }

          *v87 = *(*(v49 + 56) + 8 * v50);
          swift_storeEnumTagMultiPayload();
          sub_218BE36D8(&qword_280EDCBF0, type metadata accessor for AudioFeedModel);
          swift_retain_n();
          sub_219BE5FB4();

          v36 = v90;
          (*v86)(v98, v90);
          v35 = v88;
LABEL_15:
          v99 = v44;
          v54 = *(v44 + 16);
          v53 = *(v44 + 24);
          if (v54 >= v53 >> 1)
          {
            sub_218C34778(v53 > 1, v54 + 1, 1);
            v44 = v99;
          }

          *(v44 + 16) = v54 + 1;
          (*(v92 + 32))(v44 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v54, v97, v36);
          v56 = v93;
          v55 = v94;
          sub_219BF5E94();
          if (!--v42)
          {
            (*v71)(v56, v55);
            goto LABEL_20;
          }
        }

        sub_218BE3A10(v46);
LABEL_14:
        (*v96)(v97, v98, v36);
        goto LABEL_15;
      }

LABEL_27:
      __break(1u);
    }

    __break(1u);
  }

  else
  {

    v66 = MEMORY[0x277D84F90];
    v57 = v82;
LABEL_25:
    v67 = sub_218BE36D8(&qword_280EE57F0, sub_218953904);
    v68 = sub_218BE36D8(&qword_280EE5800, sub_218953904);
    MEMORY[0x21CEB9170](v66, v57, v67, v68);
    sub_218BE36D8(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor);
    sub_218BE36D8(&qword_280EDCBF0, type metadata accessor for AudioFeedModel);
    sub_219BEB1A4();
    sub_219BEB2B4();
    return sub_219BEB2C4();
  }

  return result;
}

uint64_t sub_218BE33D0()
{
  sub_218830064(0, &qword_280E8BDD0, MEMORY[0x277D6DE60], MEMORY[0x277D84560]);
  v0 = sub_219BE81C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C0D560;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D6DE38], v0);
  v6(v5 + v2, *MEMORY[0x277D6DE48], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277D6DE50], v0);
  v6(v5 + 3 * v2, *MEMORY[0x277D6DE30], v0);
  v6(v5 + 4 * v2, *MEMORY[0x277D6DE58], v0);
  v7 = sub_218847E58(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v7;
}

uint64_t sub_218BE35B4(uint64_t a1)
{
  v2 = sub_218BE3A6C();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_218BE35F4()
{
  result = qword_280EA11C0;
  if (!qword_280EA11C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA11C0);
  }

  return result;
}

uint64_t sub_218BE36D8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218BE37DC()
{
  if (!qword_280EE36A0)
  {
    sub_2189F3FBC(255);
    sub_219BE6DF4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE36A0);
    }
  }
}

void sub_218BE3850(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioFeedSectionDescriptor();
    v8[1] = type metadata accessor for AudioFeedModel(255);
    v8[2] = sub_218BE36D8(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor);
    v8[3] = sub_218BE36D8(&qword_280EDCBF0, type metadata accessor for AudioFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218BE3944()
{
  if (!qword_280EE7490)
  {
    sub_218953904();
    sub_218BE36D8(&qword_280EE57F0, sub_218953904);
    sub_218BE36D8(&qword_280EE5800, sub_218953904);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7490);
    }
  }
}

uint64_t sub_218BE3A10(uint64_t a1)
{
  v2 = type metadata accessor for AudioFeedModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_218BE3A6C()
{
  result = qword_280EA11C8[0];
  if (!qword_280EA11C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA11C8);
  }

  return result;
}

uint64_t Date.offsetByDays(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_219BDBF74();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDBF94();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DCF58();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBF34();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9968], v2);
  sub_219BDBF04();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v13 = sub_219BDBD34();
  v14 = *(v13 - 8);
  result = (*(v14 + 48))(v12, 1, v13);
  if (result != 1)
  {
    return (*(v14 + 32))(a1, v12, v13);
  }

  __break(1u);
  return result;
}

uint64_t sub_218BE3D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v39 = a3;
  v38 = a2;
  v40 = a4;
  sub_218BE4958(0, &qword_280E91AA0, sub_21872F4C4);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = &v33 - v6;
  v37 = type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs();
  v7 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BE4958(0, &qword_280E9A040, type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  sub_218BE4958(0, &qword_280EBC360, type metadata accessor for AudioHistoryFeedGroupKnobs);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v33 - v16;
  v18 = type metadata accessor for AudioHistoryFeedGroupKnobs();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BE49AC(a1, v17, &qword_280EBC360, type metadata accessor for AudioHistoryFeedGroupKnobs);
  v22 = *(v19 + 48);
  if (v22(v17, 1, v18) == 1)
  {
    v34 = a1;
    v23 = v37;
    (*(v7 + 56))(v14, 1, 1, v37);
    sub_218BE49AC(v14, v12, &qword_280E9A040, type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs);
    v24 = *(v7 + 48);
    if (v24(v12, 1, v23) == 1)
    {
      sub_21872F4C4();
      v26 = *(*(v25 - 8) + 56);
      v33 = v22;
      v27 = v35;
      v26(v35, 1, 1, v25);
      v28 = v36;
      v29 = v27;
      v22 = v33;
      sub_2191B93B0(v29, v36);
      sub_218BE4A18(v14, &qword_280E9A040, type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs);
      if (v24(v12, 1, v37) != 1)
      {
        sub_218BE4A18(v12, &qword_280E9A040, type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs);
      }
    }

    else
    {
      sub_218BE4A18(v14, &qword_280E9A040, type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs);
      v28 = v36;
      sub_218BE4A74(v12, v36, type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs);
    }

    sub_218BE4A74(v28, v21, type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs);
    sub_218BE4A18(v34, &qword_280EBC360, type metadata accessor for AudioHistoryFeedGroupKnobs);
    if (v22(v17, 1, v18) != 1)
    {
      sub_218BE4A18(v17, &qword_280EBC360, type metadata accessor for AudioHistoryFeedGroupKnobs);
    }
  }

  else
  {
    sub_218BE4A18(a1, &qword_280EBC360, type metadata accessor for AudioHistoryFeedGroupKnobs);
    sub_218BE4A74(v17, v21, type metadata accessor for AudioHistoryFeedGroupKnobs);
  }

  v30 = v40;
  sub_218BE4A74(v21, v40, type metadata accessor for AudioHistoryFeedGroupKnobs);
  if (v39)
  {
    v31 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v31 = v38 & ~(v38 >> 63);
  }

  result = type metadata accessor for AudioHistoryFeedKnobsConfig();
  *(v30 + *(result + 20)) = v31;
  return result;
}

uint64_t sub_218BE42F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_218BE4958(0, &qword_280EBC360, type metadata accessor for AudioHistoryFeedGroupKnobs);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  sub_218BE4ADC();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BE4B38();
  sub_219BF7B34();
  if (!v2)
  {
    type metadata accessor for AudioHistoryFeedGroupKnobs();
    v18 = 0;
    sub_218700478(&qword_27CC0ED40, type metadata accessor for AudioHistoryFeedGroupKnobs);
    sub_219BF7674();
    v17 = 1;
    sub_219BF7674();
    sub_218BE3D88(v6, v15, v16, v14);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218BE4520(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x70756F724778616DLL;
  }

  else
  {
    v3 = 0x6F6E4B70756F7267;
  }

  if (v2)
  {
    v4 = 0xEA00000000007362;
  }

  else
  {
    v4 = 0xE900000000000073;
  }

  if (*a2)
  {
    v5 = 0x70756F724778616DLL;
  }

  else
  {
    v5 = 0x6F6E4B70756F7267;
  }

  if (*a2)
  {
    v6 = 0xE900000000000073;
  }

  else
  {
    v6 = 0xEA00000000007362;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_218BE45D0()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218BE465C()
{
  sub_219BF5524();
}

uint64_t sub_218BE46D4()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218BE475C@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

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

void sub_218BE47BC(uint64_t *a1@<X8>)
{
  v2 = 0x6F6E4B70756F7267;
  if (*v1)
  {
    v2 = 0x70756F724778616DLL;
  }

  v3 = 0xEA00000000007362;
  if (*v1)
  {
    v3 = 0xE900000000000073;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_218BE4804()
{
  if (*v0)
  {
    return 0x70756F724778616DLL;
  }

  else
  {
    return 0x6F6E4B70756F7267;
  }
}

uint64_t sub_218BE4848@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

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

uint64_t sub_218BE48AC(uint64_t a1)
{
  v2 = sub_218BE4B38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218BE48E8(uint64_t a1)
{
  v2 = sub_218BE4B38();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_218BE4958(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_218BE49AC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_218BE4958(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_218BE4A18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218BE4958(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218BE4A74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_218BE4ADC()
{
  if (!qword_27CC0ED30)
  {
    sub_218BE4B38();
    v0 = sub_219BF7774();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0ED30);
    }
  }
}

unint64_t sub_218BE4B38()
{
  result = qword_27CC0ED38;
  if (!qword_27CC0ED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0ED38);
  }

  return result;
}

uint64_t sub_218BE4B8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioHistoryFeedGroupKnobs();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_218BE4C04()
{
  result = qword_27CC0ED48;
  if (!qword_27CC0ED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0ED48);
  }

  return result;
}

unint64_t sub_218BE4C5C()
{
  result = qword_27CC0ED50;
  if (!qword_27CC0ED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0ED50);
  }

  return result;
}

unint64_t sub_218BE4CB4()
{
  result = qword_27CC0ED58;
  if (!qword_27CC0ED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0ED58);
  }

  return result;
}

uint64_t sub_218BE4D08(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (sub_219BF7214())
    {
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

  if (qword_280E8D808 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  sub_218BE55B8(0, &qword_280E8B5A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C146A0;
  v3 = sub_218BE52E4();
  result = v2;
  *(v2 + 32) = v3;
  return result;
}

char *sub_218BE4E38(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v12 = MEMORY[0x277D84F90];
  result = sub_218BE5004(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_218BE5024(i, a1);
        sub_218BE5554();
        swift_dynamicCast();
        v12 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_218BE5004((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v7 + 1;
        sub_218751558(v11, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = a1 + 32;
      sub_218BE5554();
      do
      {
        swift_unknownObjectRetain();
        swift_dynamicCast();
        v12 = v3;
        v10 = *(v3 + 16);
        v9 = *(v3 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_218BE5004((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v10 + 1;
        sub_218751558(v11, (v3 + 32 * v10 + 32));
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_218BE5004(char *a1, int64_t a2, char a3)
{
  result = sub_218BE51CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_218BE5024(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_219BF7574();
    if (swift_dynamicCastObjCProtocolConditional())
    {
      return v2;
    }

LABEL_10:
    sub_219BF7314();
    v3 = "CPListTemplateItem";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  if (swift_dynamicCastObjCProtocolConditional())
  {
    return v2;
  }

  sub_219BF7314();
  v3 = " feed items have been heard.";
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x21CECC330](v4, v3 | 0x8000000000000000);
  MEMORY[0x21CECC330](0xD000000000000012, 0x8000000219CEB340);
  MEMORY[0x21CECC330](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_219BF7C74();
  MEMORY[0x21CECC330](v6);

  result = sub_219BF7524();
  __break(1u);
  return result;
}

char *sub_218BE51CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_218BE55B8(0, &qword_280E8B590);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

id sub_218BE52E4()
{
  sub_218BE55B8(0, &qword_280E8B5A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C146A0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v5 = objc_allocWithZone(MEMORY[0x277CBB0D8]);
  v6 = sub_219BF53D4();

  v7 = sub_219BF53D4();

  v8 = [v5 initWithText:v6 detailText:{v7, 0x8000000219CEB2B0}];

  *(inited + 32) = v8;
  v9 = objc_allocWithZone(MEMORY[0x277CBB0E0]);
  sub_218BE4E38(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v10 = sub_219BF5904();

  v11 = [v9 initWithItems:v10 header:0 sectionIndexTitle:0];

  return v11;
}

unint64_t sub_218BE5554()
{
  result = qword_27CC0ED60;
  if (!qword_27CC0ED60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CC0ED60);
  }

  return result;
}

void sub_218BE55B8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_219BF78A4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

id sub_218BE5604()
{
  sub_218BE55B8(0, &qword_280E8B5A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C146A0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v3 = objc_allocWithZone(MEMORY[0x277CBB0D8]);
  v4 = sub_219BF53D4();

  v5 = [v3 initWithText:v4 detailText:{0, 0x8000000219CEB3D0}];

  *(inited + 32) = v5;
  v6 = objc_allocWithZone(MEMORY[0x277CBB0E0]);
  sub_218BE4E38(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v7 = sub_219BF5904();

  v8 = [v6 initWithItems:v7 header:0 sectionIndexTitle:0];

  return v8;
}

uint64_t type metadata accessor for SportsManagementSectionDescriptor()
{
  result = qword_27CC0ED68;
  if (!qword_27CC0ED68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218BE5814()
{
  sub_218A3A1C4();
  if (v0 <= 0x3F)
  {
    sub_218BE5890();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_218BE5890()
{
  if (!qword_27CC0ED78)
  {
    v0 = sub_219BF3AF4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0ED78);
    }
  }
}

uint64_t sub_218BE58D8()
{
  v1 = v0;
  v2 = sub_219BF3AF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SportsManagementSectionDescriptor();
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BE65F0(v1, v8);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v11 = sub_219BF3AE4();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_218BE6654(v8);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    v11 = sub_219BDB5E4();
  }

  return v11;
}

uint64_t sub_218BE5B74()
{
  v1 = v0;
  v2 = type metadata accessor for SportsManagementSectionDescriptor();
  MEMORY[0x28223BE20](v2);
  v4 = (&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218BE65F0(v1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_218BE6654(v4);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v11 = sub_219BF3AF4();
    (*(*(v11 - 8) + 8))(v4, v11);
    return 0;
  }

  v6 = v4[1];
  if (*v4 >> 62)
  {
    v12 = v4[1];
    v13 = sub_219BF7214();
    v6 = v12;
    if (v13)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  if (!*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:
    if (v6 >> 62)
    {
      v14 = sub_219BF7214();
    }

    else
    {
      v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v14)
    {
      return 0;
    }

    type metadata accessor for Localized();
    v15 = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
LABEL_7:
    v9 = sub_219BDB5E4();

    return v9;
  }

LABEL_5:

  return 0;
}

uint64_t sub_218BE5DFC()
{
  v1 = v0;
  v2 = sub_219BF3AF4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BE65F0(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_218BE6654(v8);
      return 0x6E656D6D6F636572;
    }

    else
    {
      (*(v3 + 32))(v6, v8, v2);
      v11 = sub_219BF3AD4();
      (*(v3 + 8))(v6, v2);
      return v11;
    }
  }

  else
  {
    sub_218BE6654(v8);
    return 0x657469726F766166;
  }
}

char *sub_218BE5FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF3AF4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v61 - v9;
  sub_218BE658C();
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = (&v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (v14 + *(v12 + 56));
  sub_218BE65F0(a1, v14);
  sub_218BE65F0(a2, v15);
  type metadata accessor for SportsManagementSectionDescriptor();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_218BE6654(v15);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_218BE6654(v14);
      v35 = sub_218BE5B74();
      v37 = v36;
      v38 = sub_218BE5B74();
      if (v37)
      {
        if (v39)
        {
          if (v35 != v38 || v37 != v39)
          {
            v40 = sub_219BF78F4();

            goto LABEL_47;
          }

          v40 = 1;
          return (v40 & 1);
        }
      }

      else if (!v39)
      {
        v40 = 1;
        return (v40 & 1);
      }

LABEL_31:
      v40 = 0;
      return (v40 & 1);
    }

LABEL_30:
    sub_218BE6654(v14);
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v41 = *(v5 + 32);
      v41(v10, v14, v4);
      v41(v8, v15, v4);
      v42 = sub_219BF3AD4();
      v44 = v43;
      if (v42 == sub_219BF3AD4() && v44 == v45)
      {
        v40 = 1;
      }

      else
      {
        v40 = sub_219BF78F4();
      }

      v58 = *(v5 + 8);
      v58(v8, v4);
      v58(v10, v4);
      return (v40 & 1);
    }

    (*(v5 + 8))(v15, v4);
    goto LABEL_30;
  }

  v17 = *v15;
  v18 = v15[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_30;
  }

  v19 = *v14;
  v61 = v14[1];
  v62 = v18;
  if (v19 >> 62)
  {
    v59 = v19;
    v60 = sub_219BF7214();
    v19 = v59;
    v20 = v60;
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = MEMORY[0x277D84F90];
  v63 = v19;
  if (v20)
  {
    v22 = v19;
    v64 = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, v20 & ~(v20 >> 63), 0);
    if (v20 < 0)
    {
      __break(1u);
      goto LABEL_57;
    }

    v24 = 0;
    v21 = v64;
    v25 = v22;
    v26 = v22 & 0xC000000000000001;
    do
    {
      if (v26)
      {
        v27 = MEMORY[0x21CECE0F0](v24, v25);
      }

      else
      {
        v27 = *(v25 + 8 * v24 + 32);
      }

      v28 = [*(v27 + 16) identifier];
      v29 = sub_219BF5414();
      v31 = v30;

      v64 = v21;
      v33 = *(v21 + 16);
      v32 = *(v21 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_21870B65C((v32 > 1), v33 + 1, 1);
        v21 = v64;
      }

      ++v24;
      *(v21 + 16) = v33 + 1;
      v34 = v21 + 16 * v33;
      *(v34 + 32) = v29;
      *(v34 + 40) = v31;
      v25 = v63;
    }

    while (v20 != v24);
  }

  if (v17 >> 62)
  {
    v47 = sub_219BF7214();
  }

  else
  {
    v47 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v48 = MEMORY[0x277D84F90];
  if (!v47)
  {
LABEL_46:
    v40 = sub_219417FCC(v21, v48);

LABEL_47:

    return (v40 & 1);
  }

  v64 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v47 & ~(v47 >> 63), 0);
  if ((v47 & 0x8000000000000000) == 0)
  {
    v49 = 0;
    v48 = v64;
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v50 = MEMORY[0x21CECE0F0](v49, v17);
      }

      else
      {
        v50 = *(v17 + 8 * v49 + 32);
      }

      v51 = [*(v50 + 16) identifier];
      v52 = sub_219BF5414();
      v54 = v53;

      v64 = v48;
      v56 = *(v48 + 16);
      v55 = *(v48 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_21870B65C((v55 > 1), v56 + 1, 1);
        v48 = v64;
      }

      ++v49;
      *(v48 + 16) = v56 + 1;
      v57 = v48 + 16 * v56;
      *(v57 + 32) = v52;
      *(v57 + 40) = v54;
    }

    while (v47 != v49);
    goto LABEL_46;
  }

LABEL_57:
  __break(1u);
  return result;
}

void sub_218BE658C()
{
  if (!qword_27CC0ED80)
  {
    type metadata accessor for SportsManagementSectionDescriptor();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0ED80);
    }
  }
}

uint64_t sub_218BE65F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsManagementSectionDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218BE6654(uint64_t a1)
{
  v2 = type metadata accessor for SportsManagementSectionDescriptor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218BE66B4()
{
  sub_2186FA2D8();
  v29 = *(v0 - 8);
  v30 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FA21C();
  v4 = v3;
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ED868();
  v8 = v7;
  v27 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ED79C();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AudioFeedGroupConfig();
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BE8934(v31, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v21 = v28;
      (*(v28 + 32))(v6, v18, v4);
      v20 = sub_219BEDCA4();
      (*(v21 + 8))(v6, v4);
    }

    else
    {
      v24 = v29;
      v23 = v30;
      (*(v29 + 32))(v2, v18, v30);
      v20 = sub_219BEDCA4();
      (*(v24 + 8))(v2, v23);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v22 = v27;
    (*(v27 + 32))(v10, v18, v8);
    v20 = sub_219BEDCA4();
    (*(v22 + 8))(v10, v8);
  }

  else
  {
    (*(v13 + 32))(v15, v18, v12);
    v20 = sub_219BEDCA4();
    (*(v13 + 8))(v15, v12);
  }

  return v20;
}

uint64_t sub_218BE6B24@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = a1;
  sub_2186FA2D8();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FA21C();
  v6 = v5;
  v30 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ED868();
  v10 = v9;
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ED79C();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AudioFeedGroupConfig();
  MEMORY[0x28223BE20](v18);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BE8934(v33, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v23 = v30;
      (*(v30 + 32))(v8, v20, v6);
      v35(v6);
      return (*(v23 + 8))(v8, v6);
    }

    else
    {
      v25 = v31;
      v26 = v20;
      v27 = v32;
      (*(v31 + 32))(v4, v26, v32);
      v35(v27);
      return (*(v25 + 8))(v4, v27);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v24 = v29;
    (*(v29 + 32))(v12, v20, v10);
    v35(v10);
    return (*(v24 + 8))(v12, v10);
  }

  else
  {
    (*(v15 + 32))(v17, v20, v14);
    v35(v14);
    return (*(v15 + 8))(v17, v14);
  }
}

uint64_t sub_218BE6F14(uint64_t (*a1)(uint64_t))
{
  v32 = a1;
  sub_2186FA2D8();
  v29 = *(v1 - 8);
  v30 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FA21C();
  v5 = v4;
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ED868();
  v9 = v8;
  v27 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ED79C();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AudioFeedGroupConfig();
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BE8934(v31, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v22 = v28;
      (*(v28 + 32))(v7, v19, v5);
      v21 = v32(v5);
      (*(v22 + 8))(v7, v5);
    }

    else
    {
      v25 = v29;
      v24 = v30;
      (*(v29 + 32))(v3, v19, v30);
      v21 = v32(v24);
      (*(v25 + 8))(v3, v24);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v23 = v27;
    (*(v27 + 32))(v11, v19, v9);
    v21 = v32(v9);
    (*(v23 + 8))(v11, v9);
  }

  else
  {
    (*(v14 + 32))(v16, v19, v13);
    v21 = v32(v13);
    (*(v14 + 8))(v16, v13);
  }

  return v21;
}

uint64_t sub_218BE738C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2186E6EA8(&qword_280ECF648, type metadata accessor for AudioFeedGroupConfig);

  return MEMORY[0x282190458](a1, a2, a3, v6);
}

uint64_t sub_218BE7530()
{
  v1 = v0;
  v2 = type metadata accessor for CuratedAudioFeedGroupConfigData();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FA2D8();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AudioFeedGroupConfig();
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BE8934(v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_218BE8998(v12, type metadata accessor for AudioFeedGroupConfig);
      return 3;
    }

    else
    {
      (*(v7 + 32))(v9, v12, v6);
      sub_219BEDD14();

      v15 = sub_219BF7614();

      sub_218BE8998(v4, type metadata accessor for CuratedAudioFeedGroupConfigData);
      (*(v7 + 8))(v9, v6);
      if (v15 == 1)
      {
        v16 = 5;
      }

      else
      {
        v16 = 4;
      }

      if (v15)
      {
        return v16;
      }

      else
      {
        return 0;
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_218BE8998(v12, type metadata accessor for AudioFeedGroupConfig);
    return 1;
  }

  else
  {
    sub_218BE8998(v12, type metadata accessor for AudioFeedGroupConfig);
    return 2;
  }
}

uint64_t sub_218BE77AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  sub_2186FA2D8();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FA21C();
  v40 = v5;
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v47 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ED868();
  v39 = v7;
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v43 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ED79C();
  v35 = *(v9 - 8);
  v36 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BE89F8();
  v13 = v12;
  v46 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AudioFeedGroupConfig();
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BE8A54();
  v19 = v48;
  sub_219BF7B34();
  if (!v19)
  {
    v33 = v11;
    v34 = v18;
    v21 = v46;
    v20 = v47;
    v48 = a1;
    sub_218BE8AA8();
    sub_219BF7734();
    v31 = v15;
    v32 = v13;
    v22 = v21;
    if (v49 > 1u)
    {
      if (v49 == 2)
      {
        v25 = v48;
        sub_218718690(v48, &v49);
        sub_2186FA284();
        sub_2186E6F84();
        sub_219BEDD24();
        v26 = v45;
        (*(v22 + 8))(v31, v32);
        v24 = v34;
        (*(v38 + 32))(v34, v20, v40);
LABEL_12:
        swift_storeEnumTagMultiPayload();
        sub_218BE8AFC(v24, v26);
        v29 = v25;
        return __swift_destroy_boxed_opaque_existential_1(v29);
      }

      v25 = v48;
      sub_218718690(v48, &v49);
      type metadata accessor for CuratedAudioFeedGroupConfigData();
      sub_2186E6EA8(&qword_280EA99C0, type metadata accessor for CuratedAudioFeedGroupConfigData);
      sub_2186E6EA8(&qword_280EA99C8, type metadata accessor for CuratedAudioFeedGroupConfigData);
      v28 = v44;
      sub_219BEDD24();
      (*(v22 + 8))(v31, v32);
      v24 = v34;
      (*(v41 + 32))(v34, v28, v42);
    }

    else if (v49)
    {
      v25 = v48;
      sub_218718690(v48, &v49);
      type metadata accessor for UpNextAudioFeedGroupConfigData();
      sub_2186E6EA8(&unk_280EA9FF0, type metadata accessor for UpNextAudioFeedGroupConfigData);
      sub_2186E6EA8(&qword_280EAA000, type metadata accessor for UpNextAudioFeedGroupConfigData);
      v27 = v43;
      sub_219BEDD24();
      (*(v22 + 8))(v31, v32);
      v24 = v34;
      (*(v37 + 32))(v34, v27, v39);
    }

    else
    {
      sub_218718690(v48, &v49);
      type metadata accessor for ForYouAudioFeedGroupConfigData();
      sub_2186E6EA8(&unk_280EACAF0, type metadata accessor for ForYouAudioFeedGroupConfigData);
      sub_2186E6EA8(&qword_280EACB00, type metadata accessor for ForYouAudioFeedGroupConfigData);
      v23 = v33;
      sub_219BEDD24();
      (*(v21 + 8))(v31, v32);
      v24 = v34;
      (*(v35 + 32))(v34, v23, v36);
      v25 = v48;
    }

    v26 = v45;
    goto LABEL_12;
  }

  v29 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t sub_218BE8070(uint64_t a1)
{
  v33 = a1;
  sub_2186FA2D8();
  v30 = *(v1 - 8);
  v31 = v1;
  MEMORY[0x28223BE20](v1);
  v29 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FA21C();
  v4 = v3;
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ED868();
  v8 = v7;
  v27 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ED79C();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AudioFeedGroupConfig();
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BE8934(v32, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v21 = v28;
      (*(v28 + 32))(v6, v18, v4);
      sub_219BEDD64();
      return (*(v21 + 8))(v6, v4);
    }

    else
    {
      v23 = v29;
      v24 = v30;
      v25 = v31;
      (*(v30 + 32))(v29, v18, v31);
      sub_219BEDD64();
      return (*(v24 + 8))(v23, v25);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v22 = v27;
    (*(v27 + 32))(v10, v18, v8);
    sub_219BEDD64();
    return (*(v22 + 8))(v10, v8);
  }

  else
  {
    (*(v13 + 32))(v15, v18, v12);
    sub_219BEDD64();
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_218BE8460@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_219BF7614();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_218BE84B4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_219BF7614();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_218BE850C(uint64_t a1)
{
  v2 = sub_218BE8A54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218BE8548(uint64_t a1)
{
  v2 = sub_218BE8A54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218BE8590()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218BE864C()
{
  sub_219BF5524();
}

uint64_t sub_218BE86F4()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218BE87AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218BE8D34();
  *a1 = result;
  return result;
}

void sub_218BE87DC(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x756F59726F66;
  v4 = 0x6C6C6177796170;
  if (*v1 != 2)
  {
    v4 = 0x64657461727563;
  }

  if (*v1)
  {
    v3 = 0x7478654E7075;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_218BE8934(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedGroupConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218BE8998(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218BE89F8()
{
  if (!qword_280E8CF00)
  {
    sub_218BE8A54();
    v0 = sub_219BF7774();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8CF00);
    }
  }
}

unint64_t sub_218BE8A54()
{
  result = qword_280ECF670[0];
  if (!qword_280ECF670[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ECF670);
  }

  return result;
}

unint64_t sub_218BE8AA8()
{
  result = qword_280ECF650;
  if (!qword_280ECF650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECF650);
  }

  return result;
}

uint64_t sub_218BE8AFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedGroupConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_218BE8B84()
{
  result = qword_27CC0ED88;
  if (!qword_27CC0ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0ED88);
  }

  return result;
}

unint64_t sub_218BE8BDC()
{
  result = qword_27CC0ED90[0];
  if (!qword_27CC0ED90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CC0ED90);
  }

  return result;
}

unint64_t sub_218BE8C34()
{
  result = qword_280ECF660;
  if (!qword_280ECF660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECF660);
  }

  return result;
}

unint64_t sub_218BE8C8C()
{
  result = qword_280ECF668;
  if (!qword_280ECF668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECF668);
  }

  return result;
}

unint64_t sub_218BE8CE0()
{
  result = qword_280ECF658;
  if (!qword_280ECF658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECF658);
  }

  return result;
}

uint64_t sub_218BE8D34()
{
  v0 = sub_219BF7614();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_218BE8D80()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_218BE8DBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_218BE8E04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_218BE8E5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BE9660(0, &qword_27CC0EE18, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for AffinityTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BE95A8();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_218BE96C4(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_218BE95FC(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218BE9108(uint64_t a1)
{
  v2 = sub_218BE95A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218BE9144(uint64_t a1)
{
  v2 = sub_218BE95A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218BE91C0(void *a1)
{
  sub_218BE9660(0, &qword_280E8C610, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BE95A8();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_218BE96C4(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218BE9420(uint64_t a1)
{
  result = sub_218BE96C4(&qword_280ECF7D8, type metadata accessor for AffinityTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218BE9478(void *a1)
{
  a1[1] = sub_218BE96C4(&qword_280ECF808, type metadata accessor for AffinityTagFeedGroup);
  a1[2] = sub_218BE96C4(&qword_280ECF7E0, type metadata accessor for AffinityTagFeedGroup);
  result = sub_218BE96C4(&qword_280ECF7F0, type metadata accessor for AffinityTagFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_218BE9524(uint64_t a1)
{
  v2 = sub_218BE96C4(&qword_280ECF808, type metadata accessor for AffinityTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_218BE95A8()
{
  result = qword_280ECF820;
  if (!qword_280ECF820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECF820);
  }

  return result;
}

uint64_t sub_218BE95FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AffinityTagFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218BE9660(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218BE95A8();
    v7 = a3(a1, &type metadata for AffinityTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218BE96C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218BE9720()
{
  result = qword_27CC0EE20;
  if (!qword_27CC0EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EE20);
  }

  return result;
}

unint64_t sub_218BE9778()
{
  result = qword_280ECF810;
  if (!qword_280ECF810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECF810);
  }

  return result;
}

unint64_t sub_218BE97D0()
{
  result = qword_280ECF818;
  if (!qword_280ECF818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECF818);
  }

  return result;
}

uint64_t type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs()
{
  result = qword_280EA1D48;
  if (!qword_280EA1D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218BE9898()
{
  sub_2189AD5C8();
  if (v0 <= 0x3F)
  {
    sub_2186F9548();
    if (v1 <= 0x3F)
    {
      sub_218BE9934();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_218BE9934()
{
  if (!qword_280E917B8)
  {
    sub_218BE99B8();
    sub_218BE9A0C();
    sub_218A80DA8();
    v0 = sub_219BEEE14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E917B8);
    }
  }
}

unint64_t sub_218BE99B8()
{
  result = qword_280E90550;
  if (!qword_280E90550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E90550);
  }

  return result;
}

unint64_t sub_218BE9A0C()
{
  result = qword_280E90568;
  if (!qword_280E90568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E90568);
  }

  return result;
}

uint64_t sub_218BE9A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a4;
  v28 = a3;
  sub_2189ADE0C();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE64(a1, v12);
  v18 = *(v15 + 48);
  if (v18(v12, 1, v14) == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    v26 = a6;
    sub_21877C678(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    a6 = v26;
    sub_219BEE974();
    if (v18(v12, 1, v14) != 1)
    {
      sub_2189ADEC8(v12);
    }
  }

  else
  {
    (*(v15 + 32))(v17, v12, v14);
  }

  (*(v15 + 32))(a6, v17, v14);
  v19 = v28;
  if (a2)
  {
    v20 = a2;
  }

  else
  {
    v29 = 0x7FFFFFFFFFFFFFFFLL;
    sub_2186F9548();
    swift_allocObject();
    v20 = sub_219BEF534();
  }

  v21 = type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs();
  *(a6 + v21[5]) = v20;
  if (v19)
  {

    v22 = v19;
  }

  else
  {
    v29 = 1;
    sub_2186F9548();
    swift_allocObject();

    v22 = sub_219BEF534();
  }

  *(a6 + v21[6]) = v22;
  v23 = v27;
  if (v27)
  {
  }

  else
  {

    v24 = sub_219BF1F54();
    sub_218C3DB88(v24);

    sub_218BE9934();
    swift_allocObject();
    v23 = sub_219BEEE04();
  }

  *(a6 + v21[7]) = v23;
  if (!a5)
  {
    sub_218BE9934();
    swift_allocObject();
    a5 = sub_219BEEE04();
  }

  result = sub_2189ADEC8(a1);
  *(a6 + v21[8]) = a5;
  return result;
}

uint64_t sub_218BE9E2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  sub_2189AD5C8();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE0C();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v56 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v55 = &v41 - v11;
  sub_218BEAB94(0, &qword_280E8C980, MEMORY[0x277D844C8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEAADC();
  v17 = v57;
  sub_219BF7B34();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v45 = 0;
  v46 = v14;
  v47 = v7;
  v48 = a1;
  v42 = v5;
  LOBYTE(v62) = 0;
  sub_21877C678(&qword_280E91A88, sub_2189AD5C8);
  v19 = v55;
  v20 = v52;
  sub_219BF7674();
  sub_2186F9548();
  LOBYTE(v61) = 1;
  sub_21877C678(&qword_280E913B8, sub_2186F9548);
  sub_219BF7674();
  v44 = v62;
  LOBYTE(v60) = 2;
  sub_219BF7674();
  v57 = v61;
  sub_218BE9934();
  LOBYTE(v59) = 3;
  sub_21877C678(&qword_280E917C0, sub_218BE9934);
  sub_219BF7674();
  v43 = v60;
  LOBYTE(v58) = 4;
  v49 = v13;
  sub_219BF7674();
  v50 = v59;
  v21 = v56;
  sub_2189ADE64(v19, v56);
  v22 = v51;
  v23 = *(v51 + 48);
  v24 = v23(v21, 1, v20);
  v25 = v22;
  if (v24 == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_21877C678(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v25 = v22;
    v26 = v53;
    sub_219BEE974();
    v27 = v23(v56, 1, v20);
    v28 = v42;
    v29 = v46;
    if (v27 != 1)
    {
      sub_2189ADEC8(v56);
    }
  }

  else
  {
    v30 = *(v22 + 32);
    v26 = v53;
    v30(v53, v56, v20);
    v28 = v42;
    v29 = v46;
  }

  v56 = v16;
  v31 = v47;
  (*(v25 + 32))(v47, v26, v20);
  if (v44)
  {
    v32 = v44;
  }

  else
  {
    v58 = 0x7FFFFFFFFFFFFFFFLL;
    swift_allocObject();
    v32 = sub_219BEF534();
  }

  v33 = v54;
  *(v31 + v28[5]) = v32;
  v34 = v57;
  v35 = v50;
  if (v57)
  {

    v36 = v34;
  }

  else
  {
    v58 = 1;
    swift_allocObject();

    v36 = sub_219BEF534();
    v35 = v50;
  }

  v37 = v49;
  *(v31 + v28[6]) = v36;
  v38 = v43;
  if (v43)
  {
  }

  else
  {

    v39 = sub_219BF1F54();
    sub_218C3DB88(v39);

    swift_allocObject();
    v37 = v49;
    v40 = sub_219BEEE04();
    v35 = v50;
    v38 = v40;
  }

  *(v31 + v28[7]) = v38;
  if (!v35)
  {
    swift_allocObject();
    v35 = sub_219BEEE04();
  }

  sub_2189ADEC8(v55);
  (*(v29 + 8))(v56, v37);
  *(v31 + v28[8]) = v35;
  sub_218BEAB30(v31, v33);
  return __swift_destroy_boxed_opaque_existential_1(v48);
}

uint64_t sub_218BEA544(void *a1)
{
  v3 = v1;
  sub_218BEAB94(0, &qword_27CC0EE28, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEAADC();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2189AD5C8();
  sub_21877C678(&qword_27CC0BEC8, sub_2189AD5C8);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs();
    v14 = *(v3 + v10[5]);
    v13 = 1;
    sub_2186F9548();
    sub_21877C678(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
    v14 = *(v3 + v10[6]);
    v13 = 2;
    sub_219BF7834();
    v14 = *(v3 + v10[7]);
    v13 = 3;
    sub_218BE9934();
    sub_21877C678(&qword_27CC0EE30, sub_218BE9934);
    sub_219BF7834();
    v14 = *(v3 + v10[8]);
    v13 = 4;
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_218BEA864()
{
  v1 = *v0;
  v2 = 0x73656C7572;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_218BEA908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218BEAD10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218BEA930(uint64_t a1)
{
  v2 = sub_218BEAADC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218BEA96C(uint64_t a1)
{
  v2 = sub_218BEAADC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218BEA9DC()
{
  type metadata accessor for TagFeedServiceConfig();
  sub_21877C678(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
  if (sub_219BEE9F4() & 1) != 0 && (sub_2186F9548(), type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs(), (sub_219BEF504()) && (sub_219BEF504() & 1) != 0 && (sub_218BE9934(), (sub_219BEEDE4()))
  {
    return sub_219BEEDE4() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_218BEAADC()
{
  result = qword_280EA1D78[0];
  if (!qword_280EA1D78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA1D78);
  }

  return result;
}

uint64_t sub_218BEAB30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218BEAB94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218BEAADC();
    v7 = a3(a1, &type metadata for SportsKeyPlayersTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218BEAC0C()
{
  result = qword_27CC0EE38;
  if (!qword_27CC0EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EE38);
  }

  return result;
}

unint64_t sub_218BEAC64()
{
  result = qword_280EA1D68;
  if (!qword_280EA1D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA1D68);
  }

  return result;
}

unint64_t sub_218BEACBC()
{
  result = qword_280EA1D70;
  if (!qword_280EA1D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA1D70);
  }

  return result;
}

uint64_t sub_218BEAD10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219CEB600 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219CEB620 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_218BEAEC4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for ChannelPickerDetailModule();
    v7 = swift_allocObject();
    result = sub_21875F93C(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for ChannelPickerDetailModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218BEAF74()
{
  type metadata accessor for ChannelPickerDetailViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC0EE40);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC0EE48);
  sub_219BE2914();
  type metadata accessor for ChannelPickerDetailRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC0EE50);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC0EE58);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC0EE60);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC0EE68);
  sub_219BE2914();

  sub_218BEF91C(0);
  sub_219BE2904();

  type metadata accessor for ChannelPickerDetailBlueprintModifierFactory();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC1C030);
  sub_219BE2914();

  sub_218BEF93C();
  sub_219BE2904();
  sub_219BE19D4();

  sub_218BF021C();
  sub_219BE2904();

  sub_219BE9C54();
  sub_219BE2904();

  sub_218BEFA28();
  sub_219BE2904();

  sub_218BF0358();
  sub_219BE2904();

  sub_218BEFE7C();
  sub_219BE2904();

  type metadata accessor for ChannelPickerDetailBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_218BF0444();
  sub_219BE2904();

  sub_2186C6148(0, &qword_280E8E4C0);
  sub_219BE2904();

  sub_218BEFB30();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_218BF0580();
  sub_219BE2904();
  sub_219BE19D4();

  sub_218BEFCAC();
  sub_219BE2904();
  sub_219BE19D4();

  sub_218BEFFB0();
  sub_219BE2904();
  sub_219BE19D4();

  sub_218BF0130();
  sub_219BE2904();

  type metadata accessor for ChannelPickerDetailBlueprintViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for ChannelPickerDetailBlueprintViewSupplementaryViewProvider();
  sub_219BE2904();

  sub_218BF06CC(0, &qword_27CC1C100, MEMORY[0x277D6E388]);
  sub_219BE2904();

  sub_219BE70E4();
  sub_219BE2904();

  sub_218BF05E0();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8A54();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE3C80);
  sub_219BE2914();
}

uint64_t sub_218BEB8D8(void *a1)
{
  sub_218BF0C34();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC0EE40);
  result = sub_219BE1E34();
  if (!v19)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC0EE50);
  result = sub_219BE1E34();
  v6 = v16;
  if (!v16)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v7 = v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BF0444();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = type metadata accessor for ChannelPickerElementModel();
  sub_219BE1E34();
  result = (*(*(v9 - 8) + 48))(v4, 1, v9);
  if (result != 1)
  {
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v10);
    v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = sub_218BF0D20(*v12, v6, v7, v8, v4);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v18);
    return v14;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_218BEBB80@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (v20)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    MEMORY[0x28223BE20](v4);
    v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for BaseStyler();
    v18[3] = v9;
    v10 = sub_218BEFF68(&qword_280EDFED0, type metadata accessor for BaseStyler);
    v18[4] = v10;
    v18[0] = v8;
    v11 = type metadata accessor for ChannelPickerDetailStyler();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v18, v9);
    MEMORY[0x28223BE20](v13);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v15;
    v12[5] = v9;
    v12[6] = v10;
    v12[2] = v17;
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v19);
    a2[3] = v11;
    a2[4] = &off_282A9A780;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218BEBDE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for ChannelPickerDetailRouter();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    result = sub_21875F93C(v8, v7 + 24);
    *(v7 + 64) = v5;
    a2[3] = v6;
    a2[4] = &off_282A94328;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_218BEBE9C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ChannelPickerDetailViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_218BEBF1C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC0EE58);
  result = sub_219BE1E34();
  v5 = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC0EE48);
  result = sub_219BE1E34();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC0EE60);
  result = sub_219BE1E34();
  if (v17)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v7);
    v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v10 + 16))(v9);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    MEMORY[0x28223BE20](v11);
    v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v14 + 16))(v13);
    v15 = sub_218BF1020(v5, v6, *v9, *v13);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v16);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    *a2 = v15;
    a2[1] = &off_282A6BD00;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218BEC1CC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC0EE68);
  result = sub_219BE1E34();
  if (!v10)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEF93C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ChannelPickerDetailBlueprintModifierFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_218BEFF68(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_219BE89E4();
    swift_allocObject();
    v7 = sub_219BE8994();
    sub_218BF0C8C();
    v8 = swift_allocObject();
    v8[3] = 0;
    swift_unknownObjectWeakInit();
    v8[6] = v10;
    v8[7] = v11;
    v8[4] = v5;
    v8[5] = v6;
    v8[8] = v7;
    *(v10 + 24) = &off_282A84618;
    result = swift_unknownObjectWeakAssign();
    *a2 = v8;
    a2[1] = &off_282A84628;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_218BEC434@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for ChannelPickerDetailTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282AA1DC8;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218BEC4BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_218BF0C34();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC30E0);
  result = sub_219BE1E34();
  v8 = v16;
  if (!v16)
  {
    __break(1u);
    goto LABEL_6;
  }

  v9 = v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  v10 = v15[0];
  if (!v15[0])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = v15[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = type metadata accessor for ChannelPickerElementModel();
  sub_219BE1E34();
  result = (*(*(v12 - 8) + 48))(v6, 1, v12);
  if (result != 1)
  {
    type metadata accessor for ChannelPickerDetailDataManager();
    v13 = swift_allocObject();
    v13[3] = 0;
    swift_unknownObjectWeakInit();
    v13[4] = v8;
    v13[5] = v9;
    v13[6] = v10;
    v13[7] = v11;
    sub_218980A74(v6, v13 + OBJC_IVAR____TtC7NewsUI230ChannelPickerDetailDataManager_model);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    sub_219274ED4(v14, v8);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    result = sub_2189DA478(v6);
    *a2 = v13;
    a2[1] = &off_282A44660;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218BEC724(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1C030);
  result = sub_219BE1E34();
  if (v21)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE9F20);
    result = sub_219BE1E34();
    v3 = v18;
    if (v18)
    {
      v4 = v19;
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      MEMORY[0x28223BE20](v5);
      v7 = (v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = *v7;
      v10 = type metadata accessor for ChannelPickerSectionFactory();
      v17[3] = v10;
      v17[4] = &off_282A654A0;
      v17[0] = v9;
      type metadata accessor for ChannelPickerDetailBlueprintModifierFactory();
      v11 = swift_allocObject();
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v10);
      MEMORY[0x28223BE20](v12);
      v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v15 + 16))(v14);
      v16 = *v14;
      v11[5] = v10;
      v11[6] = &off_282A654A0;
      v11[2] = v16;
      v11[7] = v3;
      v11[8] = v4;
      __swift_destroy_boxed_opaque_existential_1(v17);
      __swift_destroy_boxed_opaque_existential_1(v20);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218BEC99C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ChannelPickerSectionFactory();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_282A654A0;
  *a1 = result;
  return result;
}

uint64_t sub_218BEC9E4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEF91C(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218BEFA28();
    result = sub_219BE1E24();
    if (result)
    {
      sub_218BEF93C();
      swift_allocObject();
      return sub_219BE6EB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218BECAC4(uint64_t a1, void *a2)
{
  sub_218BF0B54(0);
  swift_allocObject();
  sub_219BE96E4();
  sub_218BF0B74(0, &unk_27CC1C170, MEMORY[0x277D6E3B8]);
  swift_allocObject();
  sub_218BEFF68(&qword_27CC0EF40, sub_218BF0B54);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218BF021C();
  result = sub_219BE1E24();
  if (result)
  {
    swift_allocObject();
    sub_218BEFF68(&qword_27CC0EF48, sub_218BF021C);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218BECC5C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEFE7C();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0);
  result = sub_219BE1DF4();
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ChannelPickerDetailBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BF0358();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    sub_218BF021C();
    swift_allocObject();
    return sub_219BEA484();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_218BECE64(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_218BECEA8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEFB30();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE39D0);
    result = sub_219BE1E34();
    if (v3)
    {
      sub_218BEFA28();
      swift_allocObject();
      return sub_219BE72C4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218BED000(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E99CF0);
  result = sub_219BE1E34();
  if (!v109)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E98568);
  result = sub_219BE1E34();
  if (!v107)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E950C0);
  result = sub_219BE1E34();
  if (!v105)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E94038);
  result = sub_219BE1E34();
  if (!v103)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E93180);
  result = sub_219BE1E34();
  if (!v101)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (v99)
  {
    v3 = __swift_mutable_project_boxed_opaque_existential_1(v108, v109);
    v81 = v66;
    MEMORY[0x28223BE20](v3);
    v5 = (v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5);
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v106, v107);
    v80 = v66;
    MEMORY[0x28223BE20](v7);
    v9 = (v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v104, v105);
    v79 = v66;
    MEMORY[0x28223BE20](v11);
    v13 = (v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v102, v103);
    v78 = v66;
    MEMORY[0x28223BE20](v15);
    v17 = (v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v100, v101);
    v77 = v66;
    MEMORY[0x28223BE20](v19);
    v21 = (v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21);
    v23 = __swift_mutable_project_boxed_opaque_existential_1(v98, v99);
    v76 = v66;
    MEMORY[0x28223BE20](v23);
    v25 = (v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v25);
    v27 = *v5;
    v28 = *v9;
    v29 = *v13;
    v30 = *v17;
    v31 = *v21;
    v32 = *v25;
    v33 = type metadata accessor for ChannelTagLayoutAttributesFactory();
    v97[3] = v33;
    v97[4] = &off_282A664E8;
    v97[0] = v27;
    v75 = type metadata accessor for ChannelCoinLayoutAttributesFactory();
    v95 = v75;
    v96 = &off_282A4EBC0;
    v94[0] = v28;
    v74 = type metadata accessor for ChannelCategoryLayoutAttributesFactory();
    v92 = v74;
    v93 = &off_282A8E198;
    v91[0] = v29;
    v73 = type metadata accessor for ChannelEngagementLayoutAttributesFactory();
    v89 = v73;
    v90 = &off_282A35A88;
    v88[0] = v30;
    v72 = type metadata accessor for ChannelPickerHeaderViewLayoutAttributesFactory();
    v86 = v72;
    v87 = &off_282A59FA0;
    v85[0] = v31;
    v71 = type metadata accessor for BaseStyler();
    v83 = v71;
    v69 = sub_218BEFF68(&qword_280EDFED0, type metadata accessor for BaseStyler);
    v84 = v69;
    v82[0] = v32;
    type metadata accessor for ChannelPickerDetailBlueprintLayoutBuilder();
    v34 = swift_allocObject();
    v35 = __swift_mutable_project_boxed_opaque_existential_1(v97, v33);
    v70 = v66;
    v67 = v33;
    MEMORY[0x28223BE20](v35);
    v37 = (v66 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v38 + 16))(v37);
    v39 = __swift_mutable_project_boxed_opaque_existential_1(v94, v95);
    v68 = v66;
    MEMORY[0x28223BE20](v39);
    v41 = (v66 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v42 + 16))(v41);
    v43 = __swift_mutable_project_boxed_opaque_existential_1(v91, v92);
    v66[3] = v66;
    MEMORY[0x28223BE20](v43);
    v45 = (v66 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v46 + 16))(v45);
    v47 = __swift_mutable_project_boxed_opaque_existential_1(v88, v89);
    v66[2] = v66;
    MEMORY[0x28223BE20](v47);
    v49 = (v66 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v50 + 16))(v49);
    v51 = __swift_mutable_project_boxed_opaque_existential_1(v85, v86);
    v66[1] = v66;
    MEMORY[0x28223BE20](v51);
    v53 = (v66 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v54 + 16))(v53);
    v55 = __swift_mutable_project_boxed_opaque_existential_1(v82, v83);
    MEMORY[0x28223BE20](v55);
    v57 = (v66 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v58 + 16))(v57);
    v59 = *v37;
    v60 = *v41;
    v61 = *v45;
    v62 = *v49;
    v63 = *v53;
    v64 = *v57;
    v34[5] = v67;
    v34[6] = &off_282A664E8;
    v34[2] = v59;
    v34[10] = v75;
    v34[11] = &off_282A4EBC0;
    v34[7] = v60;
    v34[20] = v74;
    v34[21] = &off_282A8E198;
    v34[17] = v61;
    v34[15] = v73;
    v34[16] = &off_282A35A88;
    v34[12] = v62;
    v34[25] = v72;
    v34[26] = &off_282A59FA0;
    v34[27] = v64;
    v34[22] = v63;
    v65 = v69;
    v34[30] = v71;
    v34[31] = v65;
    __swift_destroy_boxed_opaque_existential_1(v82);
    __swift_destroy_boxed_opaque_existential_1(v85);
    __swift_destroy_boxed_opaque_existential_1(v88);
    __swift_destroy_boxed_opaque_existential_1(v91);
    __swift_destroy_boxed_opaque_existential_1(v94);
    __swift_destroy_boxed_opaque_existential_1(v97);
    __swift_destroy_boxed_opaque_existential_1(v98);
    __swift_destroy_boxed_opaque_existential_1(v100);
    __swift_destroy_boxed_opaque_existential_1(v102);
    __swift_destroy_boxed_opaque_existential_1(v104);
    __swift_destroy_boxed_opaque_existential_1(v106);
    __swift_destroy_boxed_opaque_existential_1(v108);
    return v34;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_218BEDC0C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEF91C(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEFB30();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0);
  result = sub_219BE1DF4();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE39D0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BF06CC(0, &qword_27CC1C100, MEMORY[0x277D6E388]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE70E4();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_218BEFF68(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_218BF0444();
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_218BEDF28(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BF0580();
  result = sub_219BE1DE4();
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:result collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218BEDFD0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E4C0);
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEFCAC();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEFFB0();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BF0130();
  result = sub_219BE1E24();
  if (result)
  {
    sub_218BEFB30();
    swift_allocObject();
    return sub_219BE7BB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_218BEE13C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEFB30();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE95A4();
    swift_allocObject();
    result = sub_219BE9594();
    v4 = MEMORY[0x277D6E690];
    *a2 = result;
    a2[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218BEE1F4()
{
  v0 = sub_219BE80A4();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE0]);
  return sub_219BE9574();
}

uint64_t sub_218BEE2C4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    sub_218BF0580();
    v3 = objc_allocWithZone(v2);
    return sub_219BE9454();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218BEE38C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEF91C(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEFE7C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ChannelPickerDetailBlueprintViewCellProvider();
  sub_218718690(a1, v8);
  v4 = swift_allocObject();
  sub_21875F93C(v8, v4 + 16);
  v5 = sub_219BE1E04();

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ChannelPickerDetailBlueprintViewSupplementaryViewProvider();
  result = sub_219BE1E24();
  if (result)
  {
    *&v8[0] = v3;
    sub_218BEFCAC();
    v7 = objc_allocWithZone(v6);
    return sub_219BE9B64();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_218BEE528(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E4C0);
  v3 = sub_219BE1DE4();
  if (v3)
  {
    sub_2186C6148(0, &qword_280E8E790);
    sub_219BE1B74();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_218BEE638(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE3C80);
  result = sub_219BE1DF4();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    sub_219BEA274();
    sub_219BE9B74();

    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218BEE70C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEF91C(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEFE7C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BF06CC(0, &qword_27CC1C100, MEMORY[0x277D6E388]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_218BEFF68(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE4800);
  result = sub_219BE1E34();
  if (v5)
  {
    sub_218BEFFB0();
    v4 = objc_allocWithZone(v3);
    return sub_219BE9744();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_218BEE978(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE70E4();
  sub_219BE1DE4();
  sub_219BE9764();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218BF05E0();
  if (sub_219BE1E24())
  {
    sub_218BEFF68(&qword_27CC0EF30, sub_218BF05E0);
  }

  return sub_219BE9774();
}

uint64_t sub_218BEEA7C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEF91C(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218BEFE7C();
    result = sub_219BE1E24();
    if (result)
    {
      sub_218BF0130();
      v4 = objc_allocWithZone(v3);
      return sub_219BE9F24();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218BEEB3C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC8910);
  result = sub_219BE1E34();
  if (!v27)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC5938);
  result = sub_219BE1E34();
  if (!v25)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB9030);
  result = sub_219BE1E34();
  if (!v23)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB1258);
  result = sub_219BE1E34();
  if (v21)
  {
    v3 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    MEMORY[0x28223BE20](v3);
    v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v6 + 16))(v5);
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    MEMORY[0x28223BE20](v7);
    v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v10 + 16))(v9);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    MEMORY[0x28223BE20](v11);
    v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v14 + 16))(v13);
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    MEMORY[0x28223BE20](v15);
    v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v18 + 16))(v17);
    v19 = sub_218BF0768(*v5, *v9, *v13, *v17);
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v24);
    __swift_destroy_boxed_opaque_existential_1(v26);
    return v19;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_218BEEF7C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ChannelPickerDetailViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282A30840;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_218BEF010(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9E068);
  result = sub_219BE1E34();
  if (v16)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    MEMORY[0x28223BE20](v2);
    v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v7 = type metadata accessor for ChannelPickerHeaderViewRenderer();
    v14[3] = v7;
    v14[4] = &off_282A99498;
    v14[0] = v6;
    type metadata accessor for ChannelPickerDetailBlueprintViewSupplementaryViewProvider();
    v8 = swift_allocObject();
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v14, v7);
    MEMORY[0x28223BE20](v9);
    v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v8[5] = v7;
    v8[6] = &off_282A99498;
    v8[2] = v13;
    __swift_destroy_boxed_opaque_existential_1(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218BEF220(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_218BF06CC(0, &unk_27CC1C150, MEMORY[0x277D6E380]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEF91C(0);
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E378], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v14[1] = v13;
    sub_218BF06CC(0, &qword_27CC1C100, MEMORY[0x277D6E388]);
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218BEF4AC(void *a1)
{
  sub_2187F2110();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BF05E0();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = sub_218BEFF68(&qword_27CC0EF28, sub_218BF05E0);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BE8A54();
    result = sub_219BE1DE4();
    if (result)
    {
      v6 = MEMORY[0x277D6E168];
      *(v2 + 48) = result;
      *(v2 + 56) = v6;
      sub_219BE70E4();
      swift_allocObject();
      return sub_219BE70D4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218BEF5E8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEF91C(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218BEFB30();
    result = sub_219BE1E24();
    if (result)
    {
      sub_218BF05E0();
      swift_allocObject();
      return sub_219BE9094();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218BEF704(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEFB30();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE8A54();
    swift_allocObject();
    return sub_219BE8A44();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218BEF7C0(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218BF0444();
  v7 = sub_219BE1E24();
  if (v7)
  {
    v8 = v7;
    v9 = sub_218BEFF68(a3, sub_218BF0444);
    v7 = v8;
  }

  else
  {
    v9 = 0;
  }

  return a5(v7, v9);
}

uint64_t sub_218BEF874@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BF0444();
  v4 = v3;
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_218BEFF68(&qword_27CC0EF10, sub_218BF0444);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_218BEF93C()
{
  if (!qword_27CC0EE78)
  {
    sub_218BEF91C(255);
    sub_218BEFA28();
    sub_218BEFF68(&qword_27CC0EE98, sub_218BEF91C);
    sub_218BEFF68(&qword_27CC0EEE0, sub_218BEFA28);
    v0 = sub_219BE6F54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0EE78);
    }
  }
}

void sub_218BEFA28()
{
  if (!qword_27CC0EE80)
  {
    type metadata accessor for ChannelPickerElementModel();
    sub_218BEFB30();
    sub_218951A90();
    sub_218BEFF68(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel);
    sub_218BEFF68(&qword_27CC0EED8, sub_218BEFB30);
    v0 = sub_219BE72E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0EE80);
    }
  }
}

void sub_218BEFB30()
{
  if (!qword_27CC0EE88)
  {
    sub_2186C6148(255, &qword_280E8E4C0);
    sub_218BEFCAC();
    sub_218BEFFB0();
    sub_218BF0130();
    type metadata accessor for ChannelPickerDetailViewController();
    sub_218BEFF68(&qword_27CC0EEC0, sub_218BEFCAC);
    sub_218BEFF68(&qword_27CC0EEC8, sub_218BEFFB0);
    sub_218BEFF68(&qword_27CC0EED0, sub_218BF0130);
    v0 = sub_219BE7BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0EE88);
    }
  }
}

void sub_218BEFCAC()
{
  if (!qword_27CC0EE90)
  {
    sub_218BEF91C(255);
    sub_218BEFE7C();
    type metadata accessor for ChannelPickerDetailBlueprintViewCellProvider();
    type metadata accessor for ChannelPickerDetailBlueprintViewSupplementaryViewProvider();
    sub_218BEFF68(&qword_27CC0EE98, sub_218BEF91C);
    sub_218BEFF68(&qword_27CC1C070, sub_218BEFE7C);
    sub_218BEFF68(&qword_27CC0EEA0, type metadata accessor for ChannelPickerDetailBlueprintViewCellProvider);
    sub_218BEFF68(&qword_27CC0EEA8, type metadata accessor for ChannelPickerDetailBlueprintViewSupplementaryViewProvider);
    sub_218BEFF68(&qword_27CC0D178, type metadata accessor for ChannelPickerLayoutModel);
    v0 = sub_219BE9B94();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0EE90);
    }
  }
}

void sub_218BEFE7C()
{
  if (!qword_27CC1C060)
  {
    type metadata accessor for ChannelPickerLayoutSectionDescriptor();
    type metadata accessor for ChannelPickerLayoutModel();
    sub_218BEFF68(&unk_27CC0AEF0, type metadata accessor for ChannelPickerLayoutSectionDescriptor);
    sub_218BEFF68(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel);
    v0 = sub_219BE8564();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1C060);
    }
  }
}

uint64_t sub_218BEFF68(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218BEFFB0()
{
  if (!qword_27CC0EEB0)
  {
    sub_218BEF91C(255);
    sub_218BEFE7C();
    type metadata accessor for ChannelPickerDetailViewController();
    sub_218BEFF68(&qword_27CC0EE98, sub_218BEF91C);
    sub_218BEFF68(&qword_27CC1C070, sub_218BEFE7C);
    sub_218BEFF68(&qword_27CC0EEB8, type metadata accessor for ChannelPickerDetailViewController);
    sub_218BEFF68(&qword_27CC0D178, type metadata accessor for ChannelPickerLayoutModel);
    v0 = sub_219BE9794();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0EEB0);
    }
  }
}

void sub_218BF0130()
{
  if (!qword_27CC1C0A0)
  {
    sub_218BEF91C(255);
    sub_218BEFE7C();
    sub_218BEFF68(&qword_27CC0EE98, sub_218BEF91C);
    sub_218BEFF68(&qword_27CC1C070, sub_218BEFE7C);
    v0 = sub_219BE9F34();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1C0A0);
    }
  }
}

void sub_218BF021C()
{
  if (!qword_27CC0EEE8)
  {
    sub_218BEFE7C();
    type metadata accessor for ChannelPickerDetailBlueprintLayoutBuilder();
    sub_218BF0358();
    sub_218BEFF68(&qword_27CC1C070, sub_218BEFE7C);
    sub_218BEFF68(&qword_27CC0EEF8, type metadata accessor for ChannelPickerDetailBlueprintLayoutBuilder);
    sub_218BEFF68(&qword_27CC1C0F0, sub_218BF0358);
    v0 = sub_219BEA4A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0EEE8);
    }
  }
}

void sub_218BF0358()
{
  if (!qword_27CC0EEF0)
  {
    type metadata accessor for ChannelPickerLayoutSectionDescriptor();
    type metadata accessor for ChannelPickerLayoutModel();
    sub_218BEFF68(&qword_27CC1C0E0, type metadata accessor for ChannelPickerLayoutSectionDescriptor);
    sub_218BEFF68(&qword_27CC0D178, type metadata accessor for ChannelPickerLayoutModel);
    v0 = sub_219BE9974();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0EEF0);
    }
  }
}

void sub_218BF0444()
{
  if (!qword_27CC0EF00)
  {
    sub_218BEF91C(255);
    sub_218BEFB30();
    type metadata accessor for ChannelPickerDetailViewController();
    sub_218BEFF68(&qword_27CC0EE98, sub_218BEF91C);
    sub_218BEFF68(&qword_27CC0EED8, sub_218BEFB30);
    sub_218BEFF68(&qword_27CC0EEB8, type metadata accessor for ChannelPickerDetailViewController);
    v0 = sub_219BE8774();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0EF00);
    }
  }
}

void sub_218BF0580()
{
  if (!qword_280EE44C0)
  {
    sub_219BE9C54();
    v0 = sub_219BE9464();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE44C0);
    }
  }
}

void sub_218BF05E0()
{
  if (!qword_27CC0EF08)
  {
    sub_218BEF91C(255);
    sub_218BEFB30();
    sub_218BEFF68(&qword_27CC1C110, sub_218BEF91C);
    sub_218BEFF68(&qword_27CC0EED8, sub_218BEFB30);
    v0 = sub_219BE90A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0EF08);
    }
  }
}

void sub_218BF06CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_218BEF91C(255);
    v7 = v6;
    v8 = sub_218BEFF68(&qword_27CC0EE98, sub_218BEF91C);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void *sub_218BF0768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for ChannelTagRenderer();
  v44[3] = v9;
  v44[4] = &off_282A662E8;
  v44[0] = a1;
  v10 = type metadata accessor for ChannelCoinRenderer();
  v42 = v10;
  v43 = &off_282A91088;
  v41[0] = a2;
  v11 = type metadata accessor for ChannelCategoryRenderer();
  v39 = v11;
  v40 = &off_282A600C0;
  v38[0] = a3;
  v36 = v8;
  v37 = &off_282A69648;
  v35[0] = a4;
  type metadata accessor for ChannelPickerDetailBlueprintViewCellProvider();
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v44, v9);
  MEMORY[0x28223BE20](v13);
  v15 = (&v35[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
  MEMORY[0x28223BE20](v17);
  v19 = (&v35[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x28223BE20](v21);
  v23 = (&v35[-1] - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
  MEMORY[0x28223BE20](v25);
  v27 = (&v35[-1] - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v15;
  v30 = *v19;
  v31 = *v23;
  v32 = *v27;
  v12[7] = v9;
  v12[8] = &off_282A662E8;
  v12[12] = v10;
  v12[13] = &off_282A91088;
  v12[9] = v30;
  v12[17] = v11;
  v12[18] = &off_282A600C0;
  v12[14] = v31;
  v12[22] = v8;
  v12[23] = &off_282A69648;
  v12[19] = v32;
  v12[3] = 0;
  v12[4] = v29;
  swift_unknownObjectWeakInit();
  __swift_destroy_boxed_opaque_existential_1(v35);
  __swift_destroy_boxed_opaque_existential_1(v38);
  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v12;
}

void sub_218BF0B74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for ChannelPickerSectionDescriptor;
    v8[1] = type metadata accessor for ChannelPickerElementModel();
    v8[2] = sub_218951A90();
    v8[3] = sub_218BEFF68(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218BF0C34()
{
  if (!qword_27CC0EF50)
  {
    type metadata accessor for ChannelPickerElementModel();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0EF50);
    }
  }
}

void sub_218BF0C8C()
{
  if (!qword_27CC0EF58)
  {
    type metadata accessor for ChannelPickerDetailBlueprintModifierFactory();
    sub_218BEFF68(&qword_27CC0EF60, type metadata accessor for ChannelPickerDetailBlueprintModifierFactory);
    v0 = type metadata accessor for ChannelPickerDetailInteractor();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0EF58);
    }
  }
}

char *sub_218BF0D20(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = type metadata accessor for ChannelPickerDetailStyler();
  v27[3] = v10;
  v27[4] = &off_282A9A780;
  v27[0] = a1;
  v11 = type metadata accessor for ChannelPickerDetailViewController();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v27, v10);
  MEMORY[0x28223BE20](v13);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v26[3] = v10;
  v26[4] = &off_282A9A780;
  v26[0] = v17;
  sub_218718690(v26, &v12[OBJC_IVAR____TtC7NewsUI233ChannelPickerDetailViewController_styler]);
  v18 = &v12[OBJC_IVAR____TtC7NewsUI233ChannelPickerDetailViewController_eventHandler];
  *v18 = a2;
  *(v18 + 1) = a3;
  *&v12[OBJC_IVAR____TtC7NewsUI233ChannelPickerDetailViewController_blueprintViewController] = a4;
  sub_218980A74(a5, &v12[OBJC_IVAR____TtC7NewsUI233ChannelPickerDetailViewController_model]);
  v25.receiver = v12;
  v25.super_class = v11;
  swift_unknownObjectRetain();
  v19 = a4;
  v20 = objc_msgSendSuper2(&v25, sel_initWithNibName_bundle_, 0, 0);
  *(*&v20[OBJC_IVAR____TtC7NewsUI233ChannelPickerDetailViewController_eventHandler] + 24) = &off_282A30850;
  swift_unknownObjectWeakAssign();
  v21 = *&v20[OBJC_IVAR____TtC7NewsUI233ChannelPickerDetailViewController_blueprintViewController];
  v22 = v20;
  v23 = v21;
  sub_219BE8744();

  sub_2189DA478(a5);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v22;
}

void *sub_218BF0F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15[3] = type metadata accessor for ChannelPickerDetailRouter();
  v15[4] = &off_282A94328;
  v15[0] = a3;
  v14[3] = type metadata accessor for ChannelPickerDetailTracker();
  v14[4] = &off_282AA1DC8;
  v14[0] = a4;
  a5[3] = 0;
  swift_unknownObjectWeakInit();
  a5[4] = a1;
  a5[5] = a2;
  sub_218718690(v15, (a5 + 6));
  sub_218718690(v14, (a5 + 11));
  ObjectType = swift_getObjectType();
  v11 = *(a2 + 16);
  swift_unknownObjectRetain();

  v11(v12, &off_282A6BCE0, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return a5;
}

void *sub_218BF1020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v24 = type metadata accessor for ChannelPickerDetailRouter();
  v25 = &off_282A94328;
  v23[0] = a3;
  v21 = v8;
  v22 = &off_282AA1DC8;
  v20[0] = a4;
  type metadata accessor for ChannelPickerDetailEventHandler();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v10);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  MEMORY[0x28223BE20](v14);
  v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_218BF0F28(a1, a2, *v12, *v16, v9);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v18;
}

uint64_t sub_218BF122C(char *a1)
{
  v2 = v1;
  v48 = a1;
  v3 = MEMORY[0x277D83D88];
  v47 = MEMORY[0x277D83D88];
  sub_218747D2C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v45 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v46 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v6;
  MEMORY[0x28223BE20](v5);
  v51 = &v39 - v7;
  v8 = sub_219BDE294();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x277CC9260];
  sub_218747D2C(0, &unk_280EE9D00, MEMORY[0x277CC9260], v3);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v50 = sub_219BDD534();
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BDB954();
  v18 = *(*(v17 - 8) + 56);
  v18(v14, 1, 1, v17);

  sub_219BDD514();
  v42 = *(v2 + 64);
  type metadata accessor for NewsActivity2.Article(0);
  v19 = swift_allocBox();
  v21 = v20;
  sub_2187B2DA0();
  v40 = *(v22 + 48);
  v18(v14, 1, 1, v17);
  (*(v9 + 104))(v11, *MEMORY[0x277D2FF08], v8);
  v48 = v16;
  sub_219BDD894();
  (*(v9 + 8))(v11, v8);
  sub_218744CEC(v14, &unk_280EE9D00, v43, v47, sub_218747D2C);
  *(v21 + v40) = MEMORY[0x277D84F90];
  v47 = v19;
  v23 = v19 | 0x2000000000000000;
  v24 = *(v41 + 56);
  v25 = sub_219BDFA44();
  (*(*(v25 - 8) + 56))(v51, 1, 1, v25);
  v61 = 0;
  memset(v60, 0, sizeof(v60));
  v59 = 0;
  memset(v58, 0, sizeof(v58));
  v57 = v42;
  sub_2187B171C(v58, &v53, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (v54)
  {
    sub_21875F93C(&v53, v55);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v27 = qword_280ED32D8;
    v26 = qword_280ED32E0;
    v28 = qword_280ED32E8;

    sub_2188202A8(v26);
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  else
  {
    sub_2187B1CC0(&v53, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v27 = qword_280ED32D8;
    v26 = qword_280ED32E0;
    v28 = qword_280ED32E8;

    sub_2188202A8(v26);
  }

  v52 = v23;
  v54 = sub_219BDD274();
  *&v53 = v24;
  v29 = v46;
  sub_2189B4E2C(v51, v46);
  sub_2187B171C(v60, v55, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v30 = (*(v45 + 80) + 24) & ~*(v45 + 80);
  v31 = (v44 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 47) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 16) = v24;
  sub_218BF8160(v29, v33 + v30, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v34 = v33 + v31;
  v35 = v55[1];
  *v34 = v55[0];
  *(v34 + 16) = v35;
  *(v34 + 32) = v56;
  v36 = (v33 + v32);
  v37 = (v33 + ((v32 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v36 = 0;
  v36[1] = 0;
  *v37 = v27;
  v37[1] = v26;
  v37[2] = v28;
  swift_retain_n();

  sub_2188202A8(v26);
  sub_2186CF94C();
  sub_2186F7D68(&qword_280EE5A90, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v26);
  sub_2187B1CC0(v58, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_2187B1CC0(v60, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218744CEC(v51, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747D2C);
  (*(v49 + 8))(v48, v50);
  sub_218744CEC(&v53, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8368);
}

uint64_t sub_218BF1BEC(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  sub_218747D2C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8);
  v69 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v66 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v66 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v66 - v19;
  v21 = objc_opt_self();
  v22 = *(a1 + 16);
  if ([v21 isTagAllowedInContentStoreFront_])
  {
    v68 = v10;
    v23 = sub_218BF28EC(a4, a2, a3);
    v24 = *(v4 + 64);
    v25 = swift_allocObject();
    *(v25 + 16) = v22;
    *(v25 + 24) = v23;
    *(v25 + 32) = MEMORY[0x277D84F90];
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0u;
    *(v25 + 72) = 0u;
    *(v25 + 88) = 0;
    *(v25 + 96) = -1;
    v26 = *(v4 + 56);
    v27 = sub_219BDFA44();
    (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
    v82 = 0;
    v80 = 0u;
    v81 = 0u;
    v79 = 0;
    v77 = 0u;
    v78 = 0u;
    v76 = v24;
    sub_2187B171C(&v77, &v71, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    v67 = v23;
    if (*(&v72 + 1))
    {
      sub_21875F93C(&v71, &v73);
      v28 = qword_280ED32D0;
      swift_unknownObjectRetain();
      v29 = v23;
      if (v28 != -1)
      {
        swift_once();
      }

      v31 = qword_280ED32D8;
      v30 = qword_280ED32E0;
      v32 = qword_280ED32E8;

      v66 = v30;
      sub_2188202A8(v30);
      __swift_destroy_boxed_opaque_existential_1(&v73);
    }

    else
    {
      swift_unknownObjectRetain();
      v43 = v23;
      sub_2187B1CC0(&v71, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v31 = qword_280ED32D8;
      v44 = qword_280ED32E0;
      v32 = qword_280ED32E8;

      v66 = v44;
      sub_2188202A8(v44);
    }

    v70 = v25 | 0x2000000000000004;
    *(&v72 + 1) = sub_219BDD274();
    *&v71 = v26;
    v45 = v26;
    v46 = v69;
    sub_2189B4E2C(v15, v69);
    sub_2187B171C(&v80, &v73, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v47 = (v68[80] + 24) & ~v68[80];
    v48 = (v11 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v68 = v15;
    v49 = (v48 + 47) & 0xFFFFFFFFFFFFFFF8;
    v50 = swift_allocObject();
    *(v50 + 16) = v45;
    sub_218BF8160(v46, v50 + v47, &qword_280EE8610, MEMORY[0x277D2DED0]);
    v51 = v50 + v48;
    v52 = v74;
    *v51 = v73;
    *(v51 + 16) = v52;
    *(v51 + 32) = v75;
    v53 = (v50 + v49);
    v54 = (v50 + ((v49 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v53 = 0;
    v53[1] = 0;
    v55 = v66;
    *v54 = v31;
    v54[1] = v55;
    v54[2] = v32;
    swift_retain_n();

    sub_2188202A8(v55);
    sub_2186CF94C();
    sub_2186F7D68(&qword_280EE5A90, sub_2186CF94C);
    sub_219BEB464();

    sub_2187FABEC(v55);

    sub_2187B1CC0(&v77, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_2187B1CC0(&v80, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_218744CEC(v68, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747D2C);
    sub_218744CEC(&v71, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8368);
  }

  else
  {
    v33 = v10;
    v34 = *(v4 + 64);
    v35 = swift_allocObject();
    v36 = [v22 tagType];
    *(v35 + 40) = &type metadata for AlertFeedAccessDenied;
    *(v35 + 48) = sub_218BF7A98();
    *(v35 + 16) = v36;
    *(v35 + 56) = 1;
    v37 = sub_219BDFA44();
    (*(*(v37 - 8) + 56))(v20, 1, 1, v37);
    v82 = 0;
    v80 = 0u;
    v81 = 0u;
    v79 = 0;
    v77 = 0u;
    v78 = 0u;
    v76 = v34;
    sub_2187B171C(&v77, &v71, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    v38 = v20;
    if (*(&v72 + 1))
    {
      sub_21875F93C(&v71, &v73);
      v39 = v33;
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v41 = qword_280ED32D8;
      v40 = qword_280ED32E0;
      v42 = qword_280ED32E8;

      sub_2188202A8(v40);
      __swift_destroy_boxed_opaque_existential_1(&v73);
    }

    else
    {
      sub_2187B1CC0(&v71, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      v39 = v33;
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v41 = qword_280ED32D8;
      v40 = qword_280ED32E0;
      v42 = qword_280ED32E8;

      sub_2188202A8(v40);
    }

    v70 = v35;
    v72 = 0u;
    v71 = 0u;
    sub_2189B4E2C(v38, v18);
    sub_2187B171C(&v80, &v73, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v56 = *(v39 + 80);
    v69 = v38;
    v57 = (v56 + 24) & ~v56;
    v58 = (v11 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = (v58 + 47) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    *(v60 + 16) = 0;
    sub_218BF8160(v18, v60 + v57, &qword_280EE8610, MEMORY[0x277D2DED0]);
    v61 = v60 + v58;
    v62 = v74;
    *v61 = v73;
    *(v61 + 16) = v62;
    *(v61 + 32) = v75;
    v63 = (v60 + v59);
    v64 = (v60 + ((v59 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v63 = 0;
    v63[1] = 0;
    *v64 = v41;
    v64[1] = v40;
    v64[2] = v42;

    sub_2188202A8(v40);
    sub_2186CF94C();
    sub_2186F7D68(&qword_280EE5A90, sub_2186CF94C);
    sub_219BEB464();

    sub_2187FABEC(v40);
    sub_2187B1CC0(&v77, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_2187B1CC0(&v80, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_218744CEC(v69, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747D2C);
    sub_218744CEC(&v71, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8368);
  }
}