double sub_226AB64EC@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a3;
  v67 = sub_226D6E14C();
  v66 = *(v67 - 8);
  v5 = *(v66 + 64);
  MEMORY[0x28223BE20](v67);
  v65 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v62 - v8;
  v11 = a2[2];
  v10 = a2[3];
  v68 = a2[4];
  v12 = type metadata accessor for FinanceXPCPeerHandler.ReceivedMessage();
  v70 = *(v12 - 8);
  v13 = *(v70 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v62 - v15;
  v72 = *(v11 - 8);
  v17 = *(v72 + 64);
  v18 = MEMORY[0x28223BE20](v14);
  v20 = v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v62 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v62 - v24;
  v69 = v10;
  v71 = a1;
  sub_226D6E12C();
  v63 = v9;
  v62[1] = v5;
  v64 = v12;
  v26 = v72;
  v27 = *(v72 + 32);
  v27(v25, v23, v11);
  (*(v26 + 16))(v20, v25, v11);
  v28 = sub_226D6E10C();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v27(v16, v20, v11);
  v35 = v64;
  v36 = &v16[*(v64 + 44)];
  *v36 = v28;
  v36[1] = v30;
  v36[2] = v32;
  v36[3] = v34;
  v37 = *(v73 + 2);
  (*(v73 + 1))(v80, v16);
  v38 = type metadata accessor for FinanceXPCPeerHandler.ReplyDecision();
  v39 = *(v38 - 8);
  (*(v39 + 16))(v78, v80, v38);
  v40 = v16;
  if (v79)
  {
    v69 = v11;
    v68 = v25;
    v41 = v78[0];
    if (sub_226D6E13C())
    {
      Strong = swift_weakLoadStrong();
      v43 = v72;
      if (Strong)
      {
        sub_226D6E08C();
      }

      v58 = v74;
      v59 = v70;
      v60 = v68;
      v61 = v69;
      (*(v39 + 8))(v80, v38);
      (*(v59 + 8))(v40, v35);
      (*(v43 + 8))(v60, v61);
      *(v58 + 32) = 0;
      result = 0.0;
      *v58 = 0u;
      *(v58 + 16) = 0u;
    }

    else
    {
      v50 = sub_226D6E79C();
      (*(*(v50 - 8) + 56))(v63, 1, 1, v50);
      v51 = v66;
      v52 = *(v66 + 16);
      v73 = v16;
      v53 = v65;
      v54 = v67;
      v52(v65, v71, v67);
      v55 = (*(v51 + 80) + 48) & ~*(v51 + 80);
      v56 = swift_allocObject();
      *(v56 + 16) = 0;
      *(v56 + 24) = 0;
      *(v56 + 32) = v41;
      (*(v51 + 32))(v56 + v55, v53, v54);

      sub_226B60364(0, 0, v63, &unk_226D734F0, v56);

      (*(v39 + 8))(v80, v38);
      (*(v70 + 8))(v73, v35);
      (*(v72 + 8))(v68, v69);
      v57 = v74;
      *(v74 + 32) = 0;
      result = 0.0;
      *v57 = 0u;
      v57[1] = 0u;
    }
  }

  else
  {
    sub_226AC4834(v78, &v75);
    v44 = v76;
    v45 = v77;
    v46 = __swift_project_boxed_opaque_existential_1(&v75, v76);
    v47 = v74;
    *(v74 + 24) = v44;
    v47[4] = v45;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
    (*(*(v44 - 8) + 16))(boxed_opaque_existential_1, v46, v44);
    (*(v39 + 8))(v80, v38);
    (*(v70 + 8))(v40, v35);
    (*(v72 + 8))(v25, v11);
    __swift_destroy_boxed_opaque_existential_0Tm(&v75);
  }

  return result;
}

uint64_t sub_226AB6C70()
{
  v1 = sub_226D6E14C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226AB6DA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v1135 = a1;
  v1142 = a2;
  v1073 = sub_226D6925C();
  v1072 = *(v1073 - 8);
  v4 = *(v1072 + 64);
  v5 = MEMORY[0x28223BE20](v1073);
  v1071 = &v1006 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1068 = v6;
  MEMORY[0x28223BE20](v5);
  v1063 = &v1006 - v7;
  v1069 = sub_226D6AEEC();
  v1067 = *(v1069 - 8);
  v8 = *(v1067 + 64);
  v9 = MEMORY[0x28223BE20](v1069);
  v1066 = &v1006 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1060 = v10;
  MEMORY[0x28223BE20](v9);
  v1056 = &v1006 - v11;
  v1061 = sub_226D6AEDC();
  v1059 = *(v1061 - 8);
  v12 = *(v1059 + 64);
  v13 = MEMORY[0x28223BE20](v1061);
  v1057 = &v1006 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1055 = v14;
  MEMORY[0x28223BE20](v13);
  v1053 = &v1006 - v15;
  v1075 = sub_226D66F5C();
  v1074 = *(v1075 - 8);
  v16 = *(v1074 + 64);
  v17 = MEMORY[0x28223BE20](v1075);
  v1070 = &v1006 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v1058 = &v1006 - v19;
  v1065 = sub_226D6B9BC();
  v1064 = *(v1065 - 8);
  v20 = *(v1064 + 64);
  MEMORY[0x28223BE20](v1065);
  v1062 = &v1006 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1049 = sub_226D690CC();
  v1047 = *(v1049 - 8);
  v22 = *(v1047 + 64);
  v23 = MEMORY[0x28223BE20](v1049);
  v1044 = &v1006 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1035 = v24;
  MEMORY[0x28223BE20](v23);
  v1030 = &v1006 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  v1037 = *(v26 - 8);
  v27 = *(v1037 + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v1051 = &v1006 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1040 = v29;
  MEMORY[0x28223BE20](v28);
  v1027 = &v1006 - v30;
  v1048 = sub_226D66F0C();
  v1046 = *(v1048 - 8);
  v31 = *(v1046 + 64);
  v32 = MEMORY[0x28223BE20](v1048);
  v1042 = &v1006 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1031 = v33;
  MEMORY[0x28223BE20](v32);
  v1023 = &v1006 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DA0, &qword_226D7B570);
  v1038 = *(v35 - 8);
  v36 = *(v1038 + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v1052 = &v1006 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1041 = v38;
  MEMORY[0x28223BE20](v37);
  v1025 = &v1006 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DA8, &unk_226D7D230);
  v1020 = *(v40 - 8);
  v41 = *(v1020 + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v1024 = &v1006 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1021 = v43;
  MEMORY[0x28223BE20](v42);
  v1015 = &v1006 - v44;
  v1036 = sub_226D6777C();
  v1034 = *(v1036 - 8);
  v45 = *(v1034 + 64);
  MEMORY[0x28223BE20](v1036);
  v1033 = &v1006 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1045 = sub_226D67A2C();
  v1043 = *(v1045 - 8);
  v47 = *(v1043 + 64);
  v48 = MEMORY[0x28223BE20](v1045);
  v1039 = &v1006 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1022 = v49;
  MEMORY[0x28223BE20](v48);
  v1016 = &v1006 - v50;
  v1019 = sub_226D6D5DC();
  v1018 = *(v1019 - 8);
  v51 = *(v1018 + 64);
  MEMORY[0x28223BE20](v1019);
  v1017 = &v1006 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1079 = sub_226D6D52C();
  v1080 = *(v1079 - 8);
  v53 = *(v1080 + 64);
  v54 = MEMORY[0x28223BE20](v1079);
  v1054 = &v1006 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v54);
  v1028 = &v1006 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v1032 = &v1006 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v1029 = &v1006 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v1026 = &v1006 - v63;
  v1050 = v64;
  MEMORY[0x28223BE20](v62);
  v1081 = &v1006 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68B0, qword_226D72098);
  v67 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66 - 8);
  v1085 = &v1006 - v68;
  v1083 = sub_226D6708C();
  v1082 = *(v1083 - 8);
  v69 = *(v1082 + 64);
  MEMORY[0x28223BE20](v1083);
  v1089 = &v1006 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1124 = sub_226D6D4AC();
  v1123 = *(v1124 - 8);
  v71 = *(v1123 + 64);
  v72 = MEMORY[0x28223BE20](v1124);
  v1014 = &v1006 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = MEMORY[0x28223BE20](v72);
  v1076 = &v1006 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v1077 = &v1006 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v1078 = &v1006 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v1088 = &v1006 - v81;
  v1087 = v82;
  MEMORY[0x28223BE20](v80);
  v1086 = &v1006 - v83;
  v1107 = sub_226D6712C();
  v1105 = *(v1107 - 8);
  v84 = *(v1105 + 64);
  MEMORY[0x28223BE20](v1107);
  v1104 = &v1006 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1110 = sub_226D6ACCC();
  v1106 = *(v1110 - 8);
  v86 = *(v1106 + 64);
  MEMORY[0x28223BE20](v1110);
  v1108 = &v1006 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1112 = sub_226D6799C();
  v1111 = *(v1112 - 8);
  v88 = *(v1111 + 64);
  v89 = MEMORY[0x28223BE20](v1112);
  v1102 = &v1006 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = MEMORY[0x28223BE20](v89);
  v1092 = &v1006 - v92;
  v1093 = v93;
  MEMORY[0x28223BE20](v91);
  v1109 = &v1006 - v94;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7180, &qword_226D74600);
  v96 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95 - 8);
  v1113 = &v1006 - v97;
  v1119 = sub_226D67F1C();
  v1114 = *(v1119 - 8);
  v98 = *(v1114 + 64);
  v99 = MEMORY[0x28223BE20](v1119);
  v1011 = &v1006 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = MEMORY[0x28223BE20](v99);
  v1013 = &v1006 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v1012 = &v1006 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v1010 = &v1006 - v106;
  v107 = MEMORY[0x28223BE20](v105);
  v1008 = &v1006 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v1009 = &v1006 - v110;
  MEMORY[0x28223BE20](v109);
  v1118 = &v1006 - v111;
  v1126 = sub_226D66E9C();
  v1125 = *(v1126 - 8);
  v112 = *(v1125 + 64);
  v113 = MEMORY[0x28223BE20](v1126);
  v1103 = &v1006 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v113);
  v1122 = &v1006 - v115;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v117 = *(*(v116 - 8) + 64);
  v118 = MEMORY[0x28223BE20](v116 - 8);
  v1007 = &v1006 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = MEMORY[0x28223BE20](v118);
  v1084 = &v1006 - v121;
  v122 = MEMORY[0x28223BE20](v120);
  v1091 = &v1006 - v123;
  MEMORY[0x28223BE20](v122);
  v1127 = &v1006 - v124;
  v1132 = sub_226D6B49C();
  v1131 = *(v1132 - 8);
  v125 = *(v1131 + 64);
  v126 = MEMORY[0x28223BE20](v1132);
  v1090 = &v1006 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = MEMORY[0x28223BE20](v126);
  v1117 = &v1006 - v129;
  v130 = MEMORY[0x28223BE20](v128);
  v1115 = &v1006 - v131;
  v1116 = v132;
  MEMORY[0x28223BE20](v130);
  v1130 = &v1006 - v133;
  v1139 = sub_226D66FDC();
  v1129 = *(v1139 - 1);
  v134 = *(v1129 + 64);
  MEMORY[0x28223BE20](v1139);
  v1128 = &v1006 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1138 = sub_226D66FCC();
  v1137 = *(v1138 - 1);
  v136 = v1137[8];
  MEMORY[0x28223BE20](v1138);
  v1136 = (&v1006 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1140 = sub_226D67E0C();
  v1141 = *(v1140 - 8);
  v138 = *(v1141 + 64);
  v139 = MEMORY[0x28223BE20](v1140);
  v1121 = &v1006 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1120 = v140;
  MEMORY[0x28223BE20](v139);
  v1143 = &v1006 - v141;
  sub_226AC40E8((v2 + 6), &v1153, &qword_27D7A70E0, &qword_226D741B0);
  v142 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DB0, &qword_226D7B578) + 44));
  v144 = *v142;
  v143 = v142[1];
  v145 = v142[2];
  v146 = v142[3];
  v147 = v142[4];
  v148 = v142[5];
  v150 = v142[6];
  v149 = v142[7];
  v151 = v2[4];
  v1134 = v2[5];
  v1133 = v2;
  __swift_project_boxed_opaque_existential_1(v2 + 1, v151);
  v1095 = v143;
  v1094 = v144;
  v152 = v144 | (v143 << 32);
  v1097 = v146;
  v1096 = v145;
  v1099 = v148;
  v1098 = v147;
  v153 = v147 | (v148 << 32);
  v1101 = v149;
  v1100 = v150;
  v154 = v150 | (v149 << 32);
  v155 = v1136;
  v156 = v145 | (v146 << 32);
  sub_226D6A02C();
  v157 = v1138;
  v158 = v1137;
  (v1137[2])(v155);
  v159 = (v158[11])(v155, v157);
  if (v159 == *MEMORY[0x277CC6808])
  {
    (v158[12])(v155, v157);
    v160 = v1129;
    v161 = v1128;
    v162 = v1139;
    (*(v1129 + 32))(v1128, v155, v1139);
    v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7430, &qword_226D74E50);
    v164 = v1142;
    v1142[3] = v163;
    v164[4] = sub_226AC4194(&qword_281062BF8, &qword_27D7A7430, &qword_226D74E50);
    v164[5] = sub_226AC4194(&qword_281062C00, &qword_27D7A7430, &qword_226D74E50);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v164);
    *boxed_opaque_existential_1 = sub_226D457C8(*(*v1133 + 504), *(*v1133 + 512), v161) & 1;
    (*(*(v163 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CC67C0], v163);
    v209 = v1143;
    (*(v160 + 8))(v161, v162);
    (*(v1141 + 8))(v209, v1140);
    result = sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    *(v164 + 48) = 0;
    return result;
  }

  v166 = v1139;
  if (v159 == *MEMORY[0x277CC67E8])
  {
    (v158[12])(v155, v157);
    v167 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8F98, &qword_226D7B9B8) + 48);
    (*(v1131 + 32))(v1130, v155, v1132);
    v168 = v1127;
    sub_226AFD80C(v155 + v167, v1127, &qword_27D7A8BE0, &unk_226D718F0);
    v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8FA0, &qword_226D7B9C0);
    v170 = v1142;
    v1142[3] = v169;
    v170[4] = sub_226AC4194(&qword_27D7A8FA8, &qword_27D7A8FA0, &qword_226D7B9C0);
    v170[5] = sub_226AC4194(&qword_27D7A8FB0, &qword_27D7A8FA0, &qword_226D7B9C0);
    v171 = __swift_allocate_boxed_opaque_existential_1(v170);
    v172 = (*(v1123 + 48))(v168, 1, v1124);
    v173 = v1125;
    v174 = MEMORY[0x277CC6588];
    if (v172 != 1)
    {
      v174 = MEMORY[0x277CC6590];
    }

    v175 = v1122;
    v176 = v1126;
    (*(v1125 + 104))(v1122, *v174, v1126);
    v177 = v1143;
    sub_226CD0988(v175, &v1153);
    (*(v173 + 8))(v175, v176);
    if (sub_226D67D8C())
    {
      v178 = *v1133;
      v179 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
      v180 = [v179 aa_primaryAppleAccount];
      if (v180)
      {
        v181 = v180;
        v182 = [v180 aa_isManagedAppleID];

        if (v182)
        {
          v183 = sub_226D66EDC();
          sub_226CD740C();
          v184 = swift_allocError();
          v186 = v185;
          (*(v1129 + 104))(v185, *MEMORY[0x277CC6A50], v166);
          (*(*(v183 - 8) + 104))(v186, *MEMORY[0x277CC65D0], v183);
          swift_willThrow();
LABEL_32:
          __swift_deallocate_boxed_opaque_existential_2(v170);
          v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
          v170[3] = v265;
          v170[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418);
          v170[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418);
          v266 = __swift_allocate_boxed_opaque_existential_1(v170);
          v267 = v184;
          sub_226D66FBC();
          (*(*(v265 - 8) + 104))(v266, *MEMORY[0x277CC67B0], v265);

LABEL_34:
          (*(v1141 + 8))(v177, v1140);
          sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
          *(v170 + 48) = 0;
          sub_226AC47B0(v168, &qword_27D7A8BE0, &unk_226D718F0);
          v268 = *(v1131 + 8);
          v269 = v1130;
LABEL_35:
          v270 = &v1154 + 8;
          return v268(v269, *(v270 - 32));
        }
      }

      else
      {
      }

      v252 = *(v178 + 56);
      v253 = sub_226D676AC();
      v254 = MEMORY[0x28223BE20](v253);
      *(&v1006 - 4) = v1130;
      *(&v1006 - 3) = v254;
      v1004 = v178;
      v1005 = v168;
      sub_226D66FAC();
      sub_226D6EB8C();
    }

    else
    {
      v211 = v1113;
      sub_226D67DFC();
      v212 = v1114;
      v213 = v1119;
      v214 = (*(v1114 + 48))(v211, 1, v1119);
      v215 = v1133;
      if (v214 == 1)
      {
        sub_226AC47B0(v211, &qword_27D7A7180, &qword_226D74600);
        if (qword_28105F6E0 != -1)
        {
          swift_once();
        }

        v216 = sub_226D6E07C();
        __swift_project_value_buffer(v216, qword_28105F6E8);
        v217 = sub_226D6E05C();
        v218 = sub_226D6E9CC();
        v219 = os_log_type_enabled(v217, v218);
        v168 = v1127;
        if (v219)
        {
          v220 = swift_slowAlloc();
          *v220 = 0;
          _os_log_impl(&dword_226AB4000, v217, v218, "Connecting process has no bundle identifier", v220, 2u);
          MEMORY[0x22AA8BEE0](v220, -1, -1);
        }

        v221 = *MEMORY[0x277CC6700];
        v222 = sub_226D66FAC();
        (*(*(v222 - 8) + 104))(v171, v221, v222);
      }

      else
      {
        (*(v212 + 32))(v1118, v211, v213);
        v238 = *v215;
        v239 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
        v240 = [v239 aa_primaryAppleAccount];
        if (v240)
        {
          v241 = v240;
          v242 = [v240 aa_isManagedAppleID];

          if (v242)
          {
            v243 = sub_226D66EDC();
            sub_226CD740C();
            v184 = swift_allocError();
            v245 = v244;
            (*(v1129 + 104))(v244, *MEMORY[0x277CC6A50], v166);
            (*(*(v243 - 8) + 104))(v245, *MEMORY[0x277CC65D0], v243);
            swift_willThrow();
            (*(v212 + 8))(v1118, v1119);
            v168 = v1127;
            goto LABEL_32;
          }
        }

        else
        {
        }

        v261 = *(v238 + 56);
        v262 = sub_226D676AC();
        v1139 = &v1006;
        v263 = MEMORY[0x28223BE20](v262);
        *(&v1006 - 6) = v1130;
        *(&v1006 - 5) = v263;
        v264 = v1118;
        *(&v1006 - 4) = v1118;
        *(&v1006 - 3) = v238;
        v1004 = v1127;
        sub_226D66FAC();
        sub_226D6EB8C();

        (*(v212 + 8))(v264, v1119);
        v168 = v1127;
      }
    }

    (*(*(v169 - 8) + 104))(v171, *MEMORY[0x277CC67C0], v169);
    goto LABEL_34;
  }

  v187 = v153;
  v188 = v152;
  if (v159 == *MEMORY[0x277CC67D8])
  {
    (v158[12])(v155, v157);
    v190 = v1131 + 32;
    v189 = *(v1131 + 32);
    v191 = v1115;
    v192 = v1132;
    v189(v1115, v155, v1132);
    v193 = v189;
    v1139 = v189;
    v194 = v1141 + 32;
    v1141 = *(v1141 + 32);
    v195 = v1121;
    v196 = v1140;
    (v1141)(v1121, v1143, v1140);
    v1144 = v1153;
    v1145 = v1154;
    v1146 = v1155;
    sub_226CD56EC(v1133, &v1147);
    v197 = v1117;
    v193(v1117, v191, v192);
    v198 = (*(v194 + 48) + 16) & ~*(v194 + 48);
    v199 = (v1120 + v198 + 7) & 0xFFFFFFFFFFFFFFF8;
    v200 = (v199 + 47) & 0xFFFFFFFFFFFFFFF8;
    v201 = (*(v190 + 48) + v200 + 88) & ~*(v190 + 48);
    v202 = swift_allocObject();
    (v1141)(v202 + v198, v195, v196);
    v203 = v202 + v199;
    v204 = v1145;
    *v203 = v1144;
    *(v203 + 16) = v204;
    *(v203 + 32) = v1146;
    v205 = v202 + v200;
    v206 = v1150;
    *(v205 + 32) = v1149;
    *(v205 + 48) = v206;
    *(v205 + 64) = v1151;
    *(v205 + 80) = v1152;
    v207 = v1148;
    *v205 = v1147;
    *(v205 + 16) = v207;
    (v1139)(v202 + v201, v197, v1132);
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B9A8;
    *(result + 24) = v202;
    v208 = &unk_226D7B9B0;
LABEL_20:
    v237 = v1142;
    *v1142 = v208;
    v237[1] = result;
    *(v237 + 48) = 1;
    return result;
  }

  if (v159 == *MEMORY[0x277CC68E8])
  {
    (v158[12])(v155, v157);
    v223 = *v155;
    v225 = v1141 + 32;
    v224 = *(v1141 + 32);
    v226 = v1121;
    v227 = v1140;
    v224(v1121, v1143, v1140);
    v1144 = v1153;
    v1145 = v1154;
    v1146 = v1155;
    sub_226CD56EC(v1133, &v1147);
    v228 = (*(v225 + 48) + 16) & ~*(v225 + 48);
    v229 = (v1120 + v228 + 7) & 0xFFFFFFFFFFFFFFF8;
    v230 = (v229 + 47) & 0xFFFFFFFFFFFFFFF8;
    v231 = swift_allocObject();
    v224(v231 + v228, v226, v227);
    v232 = v231 + v229;
    v233 = v1145;
    *v232 = v1144;
    *(v232 + 16) = v233;
    *(v232 + 32) = v1146;
    v234 = v231 + v230;
    v235 = v1150;
    *(v234 + 32) = v1149;
    *(v234 + 48) = v235;
    *(v234 + 64) = v1151;
    *(v234 + 80) = v1152;
    v236 = v1148;
    *v234 = v1147;
    *(v234 + 16) = v236;
    *(v231 + ((v230 + 89) & 0xFFFFFFFFFFFFFFF8)) = v223;
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B990;
    *(result + 24) = v231;
    v208 = &unk_226D7B998;
    goto LABEL_20;
  }

  if (v159 == *MEMORY[0x277CC6828])
  {
    (v158[12])(v155, v157);
    v246 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8F78, &qword_226D7B978) + 48);
    (*(v1111 + 32))(v1109, v155, v1112);
    v247 = v1106;
    (*(v1106 + 32))(v1108, v155 + v246, v1110);
    v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8F80, &qword_226D7B980);
    v249 = v1142;
    v1142[3] = v248;
    v249[4] = sub_226AC4194(&qword_27D7A8F88, &qword_27D7A8F80, &qword_226D7B980);
    v249[5] = sub_226AC4194(&qword_27D7A8F90, &qword_27D7A8F80, &qword_226D7B980);
    v250 = __swift_allocate_boxed_opaque_existential_1(v249);
    swift_getKeyPath();
    v251 = v1143;
    sub_226D67DEC();

    v290 = v1125;
    v291 = v1103;
    v292 = v1126;
    (*(v1125 + 104))(v1103, *MEMORY[0x277CC65A0], v1126);
    sub_226CD0988(v291, &v1153);
    (*(v290 + 8))(v291, v292);
    v293 = sub_226D6798C();
    v295 = v294;
    v296 = *v1133;
    sub_226CDAE0C();
    sub_226B11B98(v293, v295);
    (*(*(v248 - 8) + 104))(v250, *MEMORY[0x277CC67C0], v248);
    v297 = v1109;
    (*(v247 + 8))(v1108, v1110);
    (*(v1111 + 8))(v297, v1112);
    (*(v1141 + 8))(v251, v1140);
    result = sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    *(v249 + 48) = 0;
    return result;
  }

  if (v159 == *MEMORY[0x277CC68D8])
  {
    (v158[12])(v155, v157);
    v255 = v1105;
    v256 = v1104;
    (*(v1105 + 32))(v1104, v155, v1107);
    v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8F68, &qword_226D7B968);
    v258 = v1142;
    v1142[3] = v257;
    v258[4] = sub_226AC4194(&qword_281062C18, &qword_27D7A8F68, &qword_226D7B968);
    v258[5] = sub_226AC4194(&qword_281062C20, &qword_27D7A8F68, &qword_226D7B968);
    v259 = __swift_allocate_boxed_opaque_existential_1(v258);
    swift_getKeyPath();
    v260 = v1143;
    sub_226D67DEC();

    v317 = *v1133;
    MEMORY[0x28223BE20](v316);
    v1004 = v318;
    v1005 = v256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8F70, &qword_226D7B970);
    sub_226D66E6C();
    *v259 = v1147;
    (*(*(v257 - 8) + 104))(v259, *MEMORY[0x277CC67C0], v257);
    (*(v1141 + 8))(v260, v1140);
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    *(v258 + 48) = 0;
    return (*(v255 + 8))(v256, v1107);
  }

  if (v159 == *MEMORY[0x277CC67E0])
  {
    (v158[12])(v155, v157);
    v272 = v1131 + 32;
    v271 = *(v1131 + 32);
    v273 = v1115;
    v274 = v1132;
    v271(v1115, v155, v1132);
    v275 = v271;
    v1139 = v271;
    v276 = v1141 + 32;
    v1141 = *(v1141 + 32);
    v277 = v1121;
    v278 = v1140;
    (v1141)(v1121, v1143, v1140);
    v1144 = v1153;
    v1145 = v1154;
    v1146 = v1155;
    sub_226CD56EC(v1133, &v1147);
    v279 = v1117;
    v275(v1117, v273, v274);
    v280 = (*(v276 + 48) + 16) & ~*(v276 + 48);
    v281 = (v1120 + v280 + 7) & 0xFFFFFFFFFFFFFFF8;
    v282 = (v281 + 47) & 0xFFFFFFFFFFFFFFF8;
    v283 = (*(v272 + 48) + v282 + 88) & ~*(v272 + 48);
    v284 = swift_allocObject();
    (v1141)(v284 + v280, v277, v278);
    v285 = v284 + v281;
    v286 = v1145;
    *v285 = v1144;
    *(v285 + 16) = v286;
    *(v285 + 32) = v1146;
    v287 = v284 + v282;
    v288 = v1150;
    *(v287 + 32) = v1149;
    *(v287 + 48) = v288;
    *(v287 + 64) = v1151;
    *(v287 + 80) = v1152;
    v289 = v1148;
    *v287 = v1147;
    *(v287 + 16) = v289;
    (v1139)(v284 + v283, v279, v1132);
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B958;
    *(result + 24) = v284;
    v208 = &unk_226D7B960;
    goto LABEL_20;
  }

  if (v159 == *MEMORY[0x277CC6A38])
  {
    (v158[12])(v155, v157);
    v298 = v1111 + 32;
    v299 = *(v1111 + 32);
    v300 = v1092;
    v301 = v1112;
    (v299)(v1092, v155, v1112);
    v1139 = v299;
    v1144 = v1153;
    v1145 = v1154;
    v1146 = v1155;
    v302 = v1141 + 32;
    v1141 = *(v1141 + 32);
    v303 = v1121;
    v304 = v1140;
    (v1141)(v1121, v1143, v1140);
    (v299)(v1102, v300, v301);
    sub_226CD56EC(v1133, &v1147);
    v305 = (*(v302 + 48) + 56) & ~*(v302 + 48);
    v306 = (v1120 + *(v298 + 48) + v305) & ~*(v298 + 48);
    v307 = (v1093 + v306 + 7) & 0xFFFFFFFFFFFFFFF8;
    v308 = swift_allocObject();
    v309 = v1145;
    *(v308 + 16) = v1144;
    *(v308 + 32) = v309;
    *(v308 + 48) = v1146;
    (v1141)(v308 + v305, v303, v304);
    (v1139)(v308 + v306, v1102, v301);
    v310 = v308 + v307;
    v311 = v1150;
    *(v310 + 32) = v1149;
    *(v310 + 48) = v311;
    *(v310 + 64) = v1151;
    *(v310 + 80) = v1152;
    v312 = v1148;
    *v310 = v1147;
    *(v310 + 16) = v312;
    v313 = (v308 + ((v307 + 91) & 0xFFFFFFFFFFFFFFF8));
    v314 = v1095;
    *v313 = v1094;
    v313[1] = v314;
    v315 = v1097;
    v313[2] = v1096;
    v313[3] = v315;
    v313[4] = v1098;
    v313[5] = v1099;
    v313[6] = v1100;
    v313[7] = v1101;
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B940;
    *(result + 24) = v308;
    v208 = &unk_226D7B948;
    goto LABEL_20;
  }

  if (v159 == *MEMORY[0x277CC6898])
  {
    (v158[12])(v155, v157);
    v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8F60, &qword_226D7B930);
    v320 = *(v155 + *(v319 + 48));
    v321 = *(v319 + 64);
    v322 = v1090;
    (*(v1131 + 32))(v1090, v155, v1132);
    v323 = v1091;
    sub_226AFD80C(v155 + v321, v1091, &qword_27D7A8BE0, &unk_226D718F0);
    swift_getKeyPath();
    v324 = v1143;
    sub_226D67DEC();

    v363 = v1125;
    v364 = v1103;
    v365 = v1126;
    (*(v1125 + 104))(v1103, *MEMORY[0x277CC65A8], v1126);
    sub_226CD0988(v364, &v1153);
    (*(v363 + 8))(v364, v365);
    v366 = *v1133;
    v367 = *(*v1133 + 56);
    v368 = sub_226D676AC();
    v369 = MEMORY[0x28223BE20](v368);
    *(&v1006 - 6) = v366;
    *(&v1006 - 5) = v322;
    *(&v1006 - 32) = v320;
    *(&v1006 - 3) = v323;
    v1004 = v369;
    sub_226D6EB7C();
    v370 = v1142;

    v378 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v370[3] = v378;
    v370[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418);
    v370[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418);
    v379 = __swift_allocate_boxed_opaque_existential_1(v370);
    (*(*(v378 - 8) + 104))(v379, *MEMORY[0x277CC67B8], v378);
    (*(v1141 + 8))(v324, v1140);
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    *(v370 + 48) = 0;
    sub_226AC47B0(v323, &qword_27D7A8BE0, &unk_226D718F0);
    v268 = *(v1131 + 8);
    v269 = v322;
    goto LABEL_35;
  }

  if (v159 == *MEMORY[0x277CC6910])
  {
    (v158[12])(v155, v157);
    LODWORD(v1139) = *(v155 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8F58, &qword_226D7B910) + 48));
    v326 = v1131 + 32;
    v325 = *(v1131 + 32);
    v327 = v1115;
    v328 = v1132;
    v325(v1115, v155, v1132);
    v329 = v325;
    v1138 = v325;
    v330 = v1141 + 32;
    v1141 = *(v1141 + 32);
    v331 = v1121;
    v332 = v1140;
    (v1141)(v1121, v1143, v1140);
    v1144 = v1153;
    v1145 = v1154;
    v1146 = v1155;
    sub_226CD56EC(v1133, &v1147);
    v333 = v1117;
    v329(v1117, v327, v328);
    v334 = (*(v330 + 48) + 16) & ~*(v330 + 48);
    v335 = (v1120 + v334 + 7) & 0xFFFFFFFFFFFFFFF8;
    v336 = (v335 + 47) & 0xFFFFFFFFFFFFFFF8;
    v337 = (*(v326 + 48) + v336 + 89) & ~*(v326 + 48);
    v338 = swift_allocObject();
    (v1141)(v338 + v334, v331, v332);
    v339 = v338 + v335;
    v340 = v1145;
    *v339 = v1144;
    *(v339 + 16) = v340;
    *(v339 + 32) = v1146;
    v341 = v338 + v336;
    v342 = v1150;
    *(v341 + 32) = v1149;
    *(v341 + 48) = v342;
    *(v341 + 64) = v1151;
    *(v341 + 80) = v1152;
    v343 = v1148;
    *v341 = v1147;
    *(v341 + 16) = v343;
    *(v341 + 88) = v1139;
    (v1138)(v338 + v337, v333, v1132);
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B920;
    *(result + 24) = v338;
    v208 = &unk_226D7B928;
    goto LABEL_20;
  }

  if (v159 == *MEMORY[0x277CC6980])
  {
    (v158[12])(v155, v157);
    v345 = v1123 + 32;
    v344 = *(v1123 + 32);
    v346 = v1086;
    v347 = v1124;
    v344(v1086, v155, v1124);
    v348 = v344;
    v1139 = v344;
    v349 = v1141 + 32;
    v1141 = *(v1141 + 32);
    v350 = v1121;
    v351 = v1140;
    (v1141)(v1121, v1143, v1140);
    v1144 = v1153;
    v1145 = v1154;
    v1146 = v1155;
    sub_226CD56EC(v1133, &v1147);
    v352 = v1088;
    v348(v1088, v346, v347);
    v353 = (*(v349 + 48) + 16) & ~*(v349 + 48);
    v354 = (v1120 + v353 + 7) & 0xFFFFFFFFFFFFFFF8;
    v355 = (v354 + 47) & 0xFFFFFFFFFFFFFFF8;
    v356 = (*(v345 + 48) + v355 + 88) & ~*(v345 + 48);
    v357 = swift_allocObject();
    (v1141)(v357 + v353, v350, v351);
    v358 = v357 + v354;
    v359 = v1145;
    *v358 = v1144;
    *(v358 + 16) = v359;
    *(v358 + 32) = v1146;
    v360 = v357 + v355;
    v361 = v1150;
    *(v360 + 32) = v1149;
    *(v360 + 48) = v361;
    *(v360 + 64) = v1151;
    *(v360 + 80) = v1152;
    v362 = v1148;
    *v360 = v1147;
    *(v360 + 16) = v362;
    (v1139)(v357 + v356, v352, v1124);
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B900;
    *(result + 24) = v357;
    v208 = &unk_226D7B908;
    goto LABEL_20;
  }

  if (v159 == *MEMORY[0x277CC68A8])
  {
    (v158[12])(v155, v157);
    v371 = v1082;
    v372 = v155;
    v373 = v1083;
    (*(v1082 + 32))(v1089, v372, v1083);
    v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8F28, &qword_226D7B8E8);
    v375 = v1142;
    v1142[3] = v374;
    v375[4] = sub_226AC4194(&qword_27D7A8F30, &qword_27D7A8F28, &qword_226D7B8E8);
    v375[5] = sub_226AC4194(&qword_27D7A8F38, &qword_27D7A8F28, &qword_226D7B8E8);
    v376 = __swift_allocate_boxed_opaque_existential_1(v375);
    swift_getKeyPath();
    v377 = v1143;
    sub_226D67DEC();

    v395 = *v1133;
    v396 = *(*v1133 + 56);
    v397 = sub_226D676AC();
    v398 = *(v395 + 408);
    v399 = MEMORY[0x28223BE20](v397);
    *(&v1006 - 4) = v400;
    *(&v1006 - 3) = v1089;
    v1004 = v399;
    sub_226D670CC();
    sub_226D6EB8C();

    (*(*(v374 - 8) + 104))(v376, *MEMORY[0x277CC67C0], v374);
    (*(v1141 + 8))(v377, v1140);
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    *(v375 + 48) = 0;
    return (*(v371 + 8))(v1089, v373);
  }

  if (v159 == *MEMORY[0x277CC6920])
  {
    (v158[12])(v155, v157);
    v1139 = *v155;
    LODWORD(v1138) = *(v155 + 8);
    v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8F00, &qword_226D7B8D0);
    v381 = v380[12];
    v382 = v380[16];
    v383 = (v155 + v380[20]);
    v384 = v383[1];
    v1137 = *v383;
    v385 = (v155 + v380[24]);
    v386 = v385[1];
    v1135 = *v385;
    v387 = (v155 + v380[28]);
    v389 = *v387;
    v388 = v387[1];
    v390 = (v155 + v380[32]);
    v392 = *v390;
    v391 = v390[1];
    sub_226AFD80C(v155 + v381, v1085, &qword_27D7A68B0, qword_226D72098);
    sub_226AFD80C(v155 + v382, v1084, &qword_27D7A8BE0, &unk_226D718F0);
    v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8F08, &qword_226D7B8D8);
    v394 = v1142;
    v1142[3] = v393;
    v394[4] = sub_226AC4194(&qword_27D7A8F10, &qword_27D7A8F08, &qword_226D7B8D8);
    v394[5] = sub_226AC4194(&qword_27D7A8F18, &qword_27D7A8F08, &qword_226D7B8D8);
    v1136 = __swift_allocate_boxed_opaque_existential_1(v394);
    swift_getKeyPath();
    sub_226D67DEC();

    v409 = *(*v1133 + 56);
    v410 = sub_226D676AC();
    v1134 = &v1006;
    v411 = MEMORY[0x28223BE20](v410);
    v412 = v1085;
    *(&v1006 - 14) = v411;
    *(&v1006 - 13) = v412;
    *(&v1006 - 12) = v1084;
    *&v413 = v1137;
    *(&v413 + 1) = v384;
    *&v414 = v1135;
    *(&v414 + 1) = v386;
    *(&v1006 - 9) = v414;
    *(&v1006 - 11) = v413;
    *&v413 = v389;
    *(&v413 + 1) = v388;
    *&v414 = v392;
    *(&v414 + 1) = v391;
    *(&v1006 - 5) = v414;
    *(&v1006 - 7) = v413;
    *(&v1006 - 3) = v1139;
    LOBYTE(v1004) = v1138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8F20, &qword_226D7B8E0);
    sub_226D6EB8C();

    *v1136 = v1147;
    v422 = *MEMORY[0x277CC67C0];
    (*(*(v393 - 8) + 104))();
    v423 = v1142;
    (*(v1141 + 8))(v1143, v1140);
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    *(v423 + 48) = 0;
    sub_226AC47B0(v1084, &qword_27D7A8BE0, &unk_226D718F0);
    return sub_226AC47B0(v1085, &qword_27D7A68B0, qword_226D72098);
  }

  if (v159 == *MEMORY[0x277CC6918])
  {
    (v158[12])(v155, v157);
    (*(v1080 + 32))(v1081, v155, v1079);
    swift_getKeyPath();
    sub_226D67DEC();

    v419 = *(*v1133 + 56);
    v420 = sub_226D676AC();
    v1004 = MEMORY[0x28223BE20](v420);
    v1005 = v1081;
    sub_226D6EB7C();

    v429 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v430 = v1142;
    v1142[3] = v429;
    v430[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418);
    v430[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418);
    v431 = __swift_allocate_boxed_opaque_existential_1(v430);
    (*(*(v429 - 8) + 104))(v431, *MEMORY[0x277CC67B8], v429);
    (*(v1141 + 8))(v1143, v1140);
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    *(v430 + 48) = 0;
    v268 = *(v1080 + 8);
    v421 = &v1113;
LABEL_57:
    v269 = *(v421 - 32);
    v270 = &v1111;
    return v268(v269, *(v270 - 32));
  }

  if (v159 == *MEMORY[0x277CC6950])
  {
    v401 = v155;
    (v158[12])(v155, v157);
    v403 = *v155;
    v402 = *(v155 + 8);
    v404 = *(v155 + 16);
    v405 = *(v401 + 24);
    v406 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7400, &qword_226D74E28);
    v407 = v1142;
    v1142[3] = v406;
    v407[4] = sub_226AC4194(&qword_27D7A7408, &qword_27D7A7400, &qword_226D74E28);
    v407[5] = sub_226AC4194(&qword_27D7A7410, &qword_27D7A7400, &qword_226D74E28);
    v408 = __swift_allocate_boxed_opaque_existential_1(v407);
    swift_getKeyPath();
    sub_226D67DEC();

    v426 = *(*v1133 + 56);
    v427 = sub_226D676AC();
    v428 = MEMORY[0x28223BE20](v427);
    *(&v1006 - 6) = v403;
    *(&v1006 - 5) = v402;
    *(&v1006 - 4) = v404;
    *(&v1006 - 3) = v405;
    v1004 = v428;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
    sub_226D6EB8C();

LABEL_64:
    (*(*(v406 - 8) + 104))(v408, *MEMORY[0x277CC67C0], v406);
LABEL_62:
    (*(v1141 + 8))(v1143, v1140);
    result = sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
LABEL_63:
    *(v1142 + 48) = 0;
    return result;
  }

  if (v159 == *MEMORY[0x277CC6838])
  {
    (v158[12])(v155, v157);
    v416 = *v155;
    v415 = *(v155 + 8);
    v418 = *(v155 + 16);
    v417 = *(v155 + 24);
    swift_getKeyPath();
    sub_226D67DEC();

    v437 = *v1133;
    v438 = *(*v1133 + 56);
    v439 = sub_226D676AC();
    v440 = *(v437 + 408);
    v441 = MEMORY[0x28223BE20](v439);
    *(&v1006 - 8) = v416;
    *(&v1006 - 7) = v415;
    *(&v1006 - 6) = v418;
    *(&v1006 - 5) = v417;
    *(&v1006 - 4) = v441;
    *(&v1006 - 3) = v437;
    v1004 = v442;
    sub_226D6EB7C();

LABEL_68:
    v462 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v463 = v1142;
    v1142[3] = v462;
    v463[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418);
    v463[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418);
    v464 = __swift_allocate_boxed_opaque_existential_1(v463);
    v465 = *MEMORY[0x277CC67B8];
    v466 = *(*(v462 - 8) + 104);
    v467 = v462;
LABEL_69:
    v466(v464, v465, v467);
    goto LABEL_62;
  }

  if (v159 == *MEMORY[0x277CC69D8])
  {
    (v158[12])(v155, v157);
    v424 = *v155;
    v425 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8EF8, &qword_226D7B8C8);
    (*(v1123 + 32))(v1078, v155 + *(v425 + 48), v1124);
    swift_getKeyPath();
    sub_226D67DEC();

    v455 = *v1133;
    v456 = *(*v1133 + 56);
    v457 = sub_226D676AC();
    v458 = *(v455 + 408);
    v459 = MEMORY[0x28223BE20](v457);
    *(&v1006 - 6) = v455;
    *(&v1006 - 40) = v424;
    *(&v1006 - 4) = v1078;
    *(&v1006 - 3) = v460;
    v1004 = v459;
    sub_226D6EB8C();

    v484 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v485 = v1142;
    v1142[3] = v484;
    v485[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418);
    v485[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418);
    v486 = __swift_allocate_boxed_opaque_existential_1(v485);
    (*(*(v484 - 8) + 104))(v486, *MEMORY[0x277CC67B8], v484);
    (*(v1141 + 8))(v1143, v1140);
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    *(v1142 + 48) = 0;
    v268 = *(v1123 + 8);
    v461 = &v1110;
LABEL_67:
    v269 = *(v461 - 32);
    v270 = &v1150;
    return v268(v269, *(v270 - 32));
  }

  if (v159 == *MEMORY[0x277CC6830])
  {
    (v158[12])(v155, v157);
    v433 = *v155;
    v432 = *(v155 + 8);
    v434 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8EC0, &qword_226D7B8B0);
    v435 = v1142;
    v1142[3] = v434;
    v435[4] = sub_226AC4194(&qword_27D7A8EC8, &qword_27D7A8EC0, &qword_226D7B8B0);
    v435[5] = sub_226AC4194(&qword_27D7A8ED0, &qword_27D7A8EC0, &qword_226D7B8B0);
    v436 = __swift_allocate_boxed_opaque_existential_1(v435);
    swift_getKeyPath();
    sub_226D67DEC();

    v481 = *(*v1133 + 56);
    v482 = sub_226D676AC();
    v483 = MEMORY[0x28223BE20](v482);
    *(&v1006 - 4) = v433;
    *(&v1006 - 3) = v432;
    v1004 = v483;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8ED8, &qword_226D7B8B8);
    sub_226D6EB8C();

    *v436 = v1147;
LABEL_74:
    (*(*(v434 - 8) + 104))(v436, *MEMORY[0x277CC67C0], v434);
    goto LABEL_62;
  }

  if (v159 == *MEMORY[0x277CC6930])
  {
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    (v158[12])(v155, v157);
    v443 = *(v155 + 8);
    v1139 = *v155;
    v445 = v1141 + 32;
    v444 = *(v1141 + 32);
    v446 = v1121;
    v447 = v1140;
    v444(v1121, v1143, v1140);
    sub_226CD56EC(v1133, &v1147);
    v448 = (*(v445 + 48) + 16) & ~*(v445 + 48);
    v449 = (v1120 + v448 + 7) & 0xFFFFFFFFFFFFFFF8;
    v450 = (v449 + 95) & 0xFFFFFFFFFFFFFFF8;
    v451 = swift_allocObject();
    v444(v451 + v448, v446, v447);
    v452 = v451 + v449;
    v453 = v1150;
    *(v452 + 32) = v1149;
    *(v452 + 48) = v453;
    *(v452 + 64) = v1151;
    *(v452 + 80) = v1152;
    v454 = v1148;
    *v452 = v1147;
    *(v452 + 16) = v454;
    *(v451 + v450) = v1139;
    *(v451 + ((v450 + 15) & 0xFFFFFFFFFFFFFFF8)) = v443;
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B8A0;
    *(result + 24) = v451;
    v208 = &unk_226D7B8A8;
    goto LABEL_20;
  }

  if (v159 == *MEMORY[0x277CC68C8])
  {
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    (v158[12])(v155, v157);
    v468 = *v155;
    v469 = *(v155 + 8);
    v471 = v1141 + 32;
    v470 = *(v1141 + 32);
    v472 = v1121;
    v473 = v1140;
    v470(v1121, v1143, v1140);
    sub_226CD56EC(v1133, &v1147);
    v474 = (*(v471 + 48) + 16) & ~*(v471 + 48);
    v475 = (v1120 + v474 + 7) & 0xFFFFFFFFFFFFFFF8;
    v476 = swift_allocObject();
    v470(v476 + v474, v472, v473);
    v477 = v476 + v475;
    v478 = v1150;
    *(v477 + 32) = v1149;
    *(v477 + 48) = v478;
    *(v477 + 64) = v1151;
    *(v477 + 80) = v1152;
    v479 = v1148;
    *v477 = v1147;
    *(v477 + 16) = v479;
    v480 = (v476 + ((v475 + 95) & 0xFFFFFFFFFFFFFFF8));
    *v480 = v468;
    v480[1] = v469;
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B888;
    *(result + 24) = v476;
    v208 = &unk_226D7B890;
    goto LABEL_20;
  }

  if (v159 == *MEMORY[0x277CC6840])
  {
    (v158[12])(v155, v157);
    v488 = *v155;
    v487 = *(v155 + 8);
    v489 = *(v155 + 16);
    swift_getKeyPath();
    sub_226D67DEC();

    v498 = *v1133;
    sub_226CDCEA8();

    goto LABEL_68;
  }

  if (v159 == *MEMORY[0x277CC69E0])
  {
    (v158[12])(v155, v157);
    v491 = *v155;
    v490 = *(v155 + 8);
    v492 = *(v155 + 16);
    v493 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8EB8, &qword_226D7B878);
    (*(v1123 + 32))(v1077, v155 + *(v493 + 64), v1124);
    swift_getKeyPath();
    sub_226D67DEC();

    v500 = *v1133;
    v501 = *(*v1133 + 56);
    v502 = sub_226D676AC();
    v503 = *(v500 + 408);
    *(&v1006 - 6) = MEMORY[0x28223BE20](v502);
    *(&v1006 - 5) = v491;
    *(&v1006 - 4) = v490;
    *(&v1006 - 24) = v492;
    v1004 = v1077;
    v1005 = v504;
    sub_226D6EB7C();

    v511 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v512 = v1142;
    v1142[3] = v511;
    v512[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418);
    v512[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418);
    v513 = __swift_allocate_boxed_opaque_existential_1(v512);
    (*(*(v511 - 8) + 104))(v513, *MEMORY[0x277CC67B8], v511);
    (*(v1141 + 8))(v1143, v1140);
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    *(v1142 + 48) = 0;
    v268 = *(v1123 + 8);
    v461 = &v1109;
    goto LABEL_67;
  }

  if (v159 == *MEMORY[0x277CC6A10])
  {
    (v158[12])(v155, v157);
    v495 = *v155;
    v494 = *(v155 + 8);
    v496 = *(v155 + 16);
    v497 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8EB8, &qword_226D7B878);
    (*(v1123 + 32))(v1076, v155 + *(v497 + 64), v1124);
    swift_getKeyPath();
    sub_226D67DEC();

    v509 = *(*v1133 + 56);
    v510 = sub_226D676AC();
    *(&v1006 - 6) = MEMORY[0x28223BE20](v510);
    *(&v1006 - 5) = v495;
    *(&v1006 - 4) = v494;
    *(&v1006 - 24) = v496;
    v1004 = v1076;
    sub_226D6EB7C();

    v522 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v523 = v1142;
    v1142[3] = v522;
    v523[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418);
    v523[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418);
    v524 = __swift_allocate_boxed_opaque_existential_1(v523);
    (*(*(v522 - 8) + 104))(v524, *MEMORY[0x277CC67B8], v522);
    (*(v1141 + 8))(v1143, v1140);
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    *(v1142 + 48) = 0;
    v268 = *(v1123 + 8);
    v461 = &v1108;
    goto LABEL_67;
  }

  if (v159 == *MEMORY[0x277CC6A08])
  {
    (v158[12])(v155, v157);
    v499 = *v155;
    swift_getKeyPath();
    sub_226D67DEC();

    v518 = *(*v1133 + 224);
    v519 = *(*v1133 + 232);
    v520 = __swift_project_boxed_opaque_existential_1((*v1133 + 200), v518);
    *(&v1148 + 1) = v518;
    *&v1149 = *(v519 + 8);
    v521 = __swift_allocate_boxed_opaque_existential_1(&v1147);
    (*(*(v518 - 8) + 16))(v521, v520, v518);
    sub_226B5A910(v499);
LABEL_86:
    sub_226AFD7B8(&v1147);
    goto LABEL_68;
  }

  if (v159 == *MEMORY[0x277CC69C0])
  {
    (v158[12])(v155, v157);
    v506 = *v155;
    v505 = *(v155 + 8);
    v406 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8EB0, &qword_226D7B870);
    v507 = v1142;
    v1142[3] = v406;
    v507[4] = sub_226AC4194(&qword_281062C28, &qword_27D7A8EB0, &qword_226D7B870);
    v507[5] = sub_226AC4194(&qword_281062C30, &qword_27D7A8EB0, &qword_226D7B870);
    v408 = __swift_allocate_boxed_opaque_existential_1(v507);
    swift_getKeyPath();
    sub_226D67DEC();

    v508 = *v1133;
    sub_226CDCFB0(v506, v505, v408);
LABEL_85:

    goto LABEL_64;
  }

  if (v159 == *MEMORY[0x277CC69F8])
  {
    (v158[12])(v155, v157);
    v515 = *v155;
    v514 = *(v155 + 8);
    v406 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8EB0, &qword_226D7B870);
    v516 = v1142;
    v1142[3] = v406;
    v516[4] = sub_226AC4194(&qword_281062C28, &qword_27D7A8EB0, &qword_226D7B870);
    v516[5] = sub_226AC4194(&qword_281062C30, &qword_27D7A8EB0, &qword_226D7B870);
    v408 = __swift_allocate_boxed_opaque_existential_1(v516);
    swift_getKeyPath();
    sub_226D67DEC();

    v517 = *v1133;
    sub_226CDCFDC(v515, v514, v408);
    goto LABEL_85;
  }

  if (v159 == *MEMORY[0x277CC6890])
  {
    (v158[12])(v155, v157);
    (*(v1018 + 32))(v1017, v155, v1019);
    v525 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7430, &qword_226D74E50);
    v526 = v1142;
    v1142[3] = v525;
    v526[4] = sub_226AC4194(&qword_281062BF8, &qword_27D7A7430, &qword_226D74E50);
    v526[5] = sub_226AC4194(&qword_281062C00, &qword_27D7A7430, &qword_226D74E50);
    v527 = __swift_allocate_boxed_opaque_existential_1(v526);
    swift_getKeyPath();
    sub_226D67DEC();

    v569 = *v1133;
    *v527 = sub_226CDD218(v1017, 0, 0) & 1;
    (*(*(v525 - 8) + 104))(v527, *MEMORY[0x277CC67C0], v525);
    (*(v1018 + 8))(v1017, v1019);
    goto LABEL_62;
  }

  if (v159 == *MEMORY[0x277CC69A8])
  {
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    (v158[12])(v155, v157);
    v528 = *(v155 + 8);
    v1137 = *v155;
    v1135 = v528;
    v529 = *(v155 + 24);
    v1139 = *(v155 + 16);
    v1138 = v529;
    v530 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8EA8, &qword_226D7B850);
    v532 = v1043 + 32;
    v531 = *(v1043 + 32);
    v533 = v1016;
    v534 = v1045;
    (v531)(v1016, v155 + *(v530 + 64), v1045);
    v1134 = v531;
    v535 = v1141 + 32;
    v1141 = *(v1141 + 32);
    v536 = v1121;
    v537 = v1140;
    (v1141)(v1121, v1143, v1140);
    sub_226CD56EC(v1133, &v1147);
    (v531)(v1039, v533, v534);
    v538 = (*(v535 + 48) + 16) & ~*(v535 + 48);
    v539 = (v1120 + v538 + 7) & 0xFFFFFFFFFFFFFFF8;
    v540 = (v539 + 95) & 0xFFFFFFFFFFFFFFF8;
    v541 = (v540 + 23) & 0xFFFFFFFFFFFFFFF8;
    v542 = (*(v532 + 48) + v541 + 16) & ~*(v532 + 48);
    v543 = swift_allocObject();
    (v1141)(v543 + v538, v536, v537);
    v544 = v543 + v539;
    v545 = v1150;
    *(v544 + 32) = v1149;
    *(v544 + 48) = v545;
    *(v544 + 64) = v1151;
    *(v544 + 80) = v1152;
    v546 = v1148;
    *v544 = v1147;
    *(v544 + 16) = v546;
    v547 = (v543 + v540);
    v548 = v1135;
    *v547 = v1137;
    v547[1] = v548;
    v549 = (v543 + v541);
    v550 = v1138;
    *v549 = v1139;
    v549[1] = v550;
    (v1134)(v543 + v542, v1039, v1045);
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B860;
    *(result + 24) = v543;
    v208 = &unk_226D7B868;
    goto LABEL_20;
  }

  if (v159 == *MEMORY[0x277CC69C8])
  {
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    (v158[12])(v155, v157);
    v1139 = *v155;
    v551 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8EA0, &qword_226D7B830);
    v553 = v1043 + 32;
    v552 = *(v1043 + 32);
    v554 = v1016;
    v555 = v1045;
    v552(v1016, v155 + *(v551 + 48), v1045);
    v556 = v552;
    v1138 = v552;
    v558 = v1141 + 32;
    v557 = *(v1141 + 32);
    v559 = v1121;
    v560 = v1140;
    v557(v1121, v1143, v1140);
    sub_226CD56EC(v1133, &v1147);
    v556(v1039, v554, v555);
    v561 = (*(v558 + 48) + 16) & ~*(v558 + 48);
    v562 = (v1120 + v561 + 7) & 0xFFFFFFFFFFFFFFF8;
    v563 = (v562 + 95) & 0xFFFFFFFFFFFFFFF8;
    v564 = (*(v553 + 48) + v563 + 8) & ~*(v553 + 48);
    v565 = swift_allocObject();
    v557(v565 + v561, v559, v560);
    v566 = v565 + v562;
    v567 = v1150;
    *(v566 + 32) = v1149;
    *(v566 + 48) = v567;
    *(v566 + 64) = v1151;
    *(v566 + 80) = v1152;
    v568 = v1148;
    *v566 = v1147;
    *(v566 + 16) = v568;
    *(v565 + v563) = v1139;
    (v1138)(v565 + v564, v1039, v1045);
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B840;
    *(result + 24) = v565;
    v208 = &unk_226D7B848;
    goto LABEL_20;
  }

  if (v159 == *MEMORY[0x277CC6870])
  {
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    (v158[12])(v155, v157);
    v1139 = *v155;
    v570 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8E98, &qword_226D7B810);
    v572 = v1043 + 32;
    v571 = *(v1043 + 32);
    v573 = v1016;
    v574 = v1045;
    v571(v1016, v155 + *(v570 + 48), v1045);
    v575 = v571;
    v1138 = v571;
    v577 = v1141 + 32;
    v576 = *(v1141 + 32);
    v578 = v1121;
    v579 = v1140;
    v576(v1121, v1143, v1140);
    sub_226CD56EC(v1133, &v1147);
    v575(v1039, v573, v574);
    v580 = (*(v577 + 48) + 16) & ~*(v577 + 48);
    v581 = (v1120 + v580 + 7) & 0xFFFFFFFFFFFFFFF8;
    v582 = (v581 + 95) & 0xFFFFFFFFFFFFFFF8;
    v583 = (*(v572 + 48) + v582 + 8) & ~*(v572 + 48);
    v584 = swift_allocObject();
    v576(v584 + v580, v578, v579);
    v585 = v584 + v581;
    v586 = v1150;
    *(v585 + 32) = v1149;
    *(v585 + 48) = v586;
    *(v585 + 64) = v1151;
    *(v585 + 80) = v1152;
    v587 = v1148;
    *v585 = v1147;
    *(v585 + 16) = v587;
    *(v584 + v582) = v1139;
    (v1138)(v584 + v583, v1039, v1045);
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B820;
    *(result + 24) = v584;
    v208 = &unk_226D7B828;
    goto LABEL_20;
  }

  if (v159 == *MEMORY[0x277CC68F8])
  {
    (v158[12])(v155, v157);
    v589 = *v155;
    v588 = *(v155 + 8);
    v406 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8E90, &qword_226D7B808);
    v590 = v1142;
    v1142[3] = v406;
    v590[4] = sub_226AC4194(&qword_281062BE8, &qword_27D7A8E90, &qword_226D7B808);
    v590[5] = sub_226AC4194(&qword_281062BF0, &qword_27D7A8E90, &qword_226D7B808);
    v408 = __swift_allocate_boxed_opaque_existential_1(v590);
    swift_getKeyPath();
    sub_226D67DEC();

    v591 = *v1133;
    sub_226CDD570(v589, v588);
    v593 = v592;

    *v408 = v593;
    goto LABEL_64;
  }

  if (v159 == *MEMORY[0x277CC69F0])
  {
    (v158[12])(v155, v157);
    v595 = *v155;
    v594 = *(v155 + 8);
    v596 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8E70, &qword_226D7B7F8);
    (*(v1123 + 32))(v1014, v155 + *(v596 + 48), v1124);
    v597 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8E78, &qword_226D7B800);
    v598 = v1142;
    v1142[3] = v597;
    v598[4] = sub_226AC4194(&qword_27D7A8E80, &qword_27D7A8E78, &qword_226D7B800);
    v598[5] = sub_226AC4194(&qword_27D7A8E88, &qword_27D7A8E78, &qword_226D7B800);
    v599 = __swift_allocate_boxed_opaque_existential_1(v598);
    swift_getKeyPath();
    sub_226D67DEC();

    v604 = *v1133;
    sub_226CDD758(v595, v594, v1014, v599);

    (*(*(v597 - 8) + 104))(v599, *MEMORY[0x277CC67C0], v597);
    (*(v1123 + 8))(v1014, v1124);
    goto LABEL_62;
  }

  if (v159 == *MEMORY[0x277CC6908])
  {
    (v158[12])(v155, v157);
    (*(v1034 + 32))(v1033, v155, v1036);
    swift_getKeyPath();
    sub_226D67DEC();

    v629 = *v1133;
    v630 = *(*v1133 + 56);
    v631 = sub_226D676AC();
    v632 = MEMORY[0x28223BE20](v631);
    v633 = v1033;
    *(&v1006 - 4) = v629;
    *(&v1006 - 3) = v633;
    v1004 = v632;
    sub_226D6EB7C();

    v665 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v666 = v1142;
    v1142[3] = v665;
    v666[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418);
    v666[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418);
    v667 = __swift_allocate_boxed_opaque_existential_1(v666);
    (*(*(v665 - 8) + 104))(v667, *MEMORY[0x277CC67B8], v665);
    (*(v1141 + 8))(v1143, v1140);
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    *(v1142 + 48) = 0;
    return (*(v1034 + 8))(v1033, v1036);
  }

  if (v159 == *MEMORY[0x277CC6858])
  {
    (v158[12])(v155, v157);
    v600 = *v155;
    v434 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8E40, &qword_226D7B7E8);
    v601 = v1142;
    v1142[3] = v434;
    v601[4] = sub_226AC4194(&qword_27D7A8E48, &qword_27D7A8E40, &qword_226D7B7E8);
    v601[5] = sub_226AC4194(&qword_27D7A8E50, &qword_27D7A8E40, &qword_226D7B7E8);
    v436 = __swift_allocate_boxed_opaque_existential_1(v601);
    swift_getKeyPath();
    sub_226D67DEC();

    v602 = *(*v1133 + 56);
    v603 = sub_226D676AC();
    v1004 = v600;
    v1005 = MEMORY[0x28223BE20](v603);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6060, &qword_226D70A78);
    sub_226D6EB7C();

    *v436 = v1147;
    goto LABEL_74;
  }

  if (v159 == *MEMORY[0x277CC68C0])
  {
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    (v158[12])(v155, v157);
    v605 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8E38, &qword_226D7B780);
    v606 = (v155 + *(v605 + 48));
    v608 = *v606;
    v607 = v606[1];
    v1139 = v608;
    v1138 = v607;
    v609 = *(v605 + 64);
    v610 = v1015;
    sub_226AFD80C(v155, v1015, &qword_27D7A8DA8, &unk_226D7D230);
    v611 = v1025;
    sub_226AFD80C(v155 + v609, v1025, &qword_27D7A8DA0, &qword_226D7B570);
    v612 = v1141 + 32;
    v1141 = *(v1141 + 32);
    v613 = v1121;
    v614 = v1140;
    (v1141)(v1121, v1143, v1140);
    sub_226AFD80C(v611, v1052, &qword_27D7A8DA0, &qword_226D7B570);
    sub_226CD56EC(v1133, &v1147);
    sub_226AFD80C(v610, v1024, &qword_27D7A8DA8, &unk_226D7D230);
    v615 = (*(v612 + 48) + 16) & ~*(v612 + 48);
    v616 = (v1120 + *(v1038 + 80) + v615) & ~*(v1038 + 80);
    v617 = (v1041 + v616 + 7) & 0xFFFFFFFFFFFFFFF8;
    v618 = (v617 + 91) & 0xFFFFFFFFFFFFFFF8;
    v619 = (*(v1020 + 80) + v618 + 32) & ~*(v1020 + 80);
    v620 = (v1021 + v619 + 7) & 0xFFFFFFFFFFFFFFF8;
    v621 = swift_allocObject();
    (v1141)(v621 + v615, v613, v614);
    sub_226AFD80C(v1052, v621 + v616, &qword_27D7A8DA0, &qword_226D7B570);
    v622 = v621 + v617;
    v623 = v1150;
    *(v622 + 32) = v1149;
    *(v622 + 48) = v623;
    *(v622 + 64) = v1151;
    *(v622 + 80) = v1152;
    v624 = v1148;
    *v622 = v1147;
    *(v622 + 16) = v624;
    v625 = (v621 + v618);
    v626 = v1095;
    *v625 = v1094;
    v625[1] = v626;
    v627 = v1097;
    v625[2] = v1096;
    v625[3] = v627;
    v625[4] = v1098;
    v625[5] = v1099;
    v625[6] = v1100;
    v625[7] = v1101;
    sub_226AFD80C(v1024, v621 + v619, &qword_27D7A8DA8, &unk_226D7D230);
    v628 = (v621 + v620);
    *v628 = v1139;
    v628[1] = v1138;
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B790;
    *(result + 24) = v621;
    v208 = &unk_226D7B798;
    goto LABEL_20;
  }

  if (v159 == *MEMORY[0x277CC6868])
  {
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    v634 = v155;
    (v158[12])(v155, v157);
    v635 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8E30, &qword_226D7B760);
    v636 = (v155 + v635[12]);
    v638 = *v636;
    v637 = v636[1];
    v1139 = v638;
    v1138 = v637;
    v639 = v635[16];
    v640 = v635[20];
    v642 = v1046 + 32;
    v641 = *(v1046 + 32);
    v643 = v1023;
    v644 = v1048;
    v641(v1023, v634, v1048);
    v645 = v641;
    v1137 = v641;
    v646 = v1027;
    sub_226AFD80C(v634 + v639, v1027, &qword_27D7A6D68, &qword_226D75210);
    v647 = v634 + v640;
    v648 = v1025;
    sub_226AFD80C(v647, v1025, &qword_27D7A8DA0, &qword_226D7B570);
    v649 = v1141 + 32;
    v1141 = *(v1141 + 32);
    (v1141)(v1121, v1143, v1140);
    sub_226AFD80C(v648, v1052, &qword_27D7A8DA0, &qword_226D7B570);
    sub_226CD56EC(v1133, &v1147);
    v645(v1042, v643, v644);
    sub_226AFD80C(v646, v1051, &qword_27D7A6D68, &qword_226D75210);
    v650 = (*(v649 + 48) + 16) & ~*(v649 + 48);
    v651 = (v1120 + *(v1038 + 80) + v650) & ~*(v1038 + 80);
    v652 = (v1041 + v651 + 7) & 0xFFFFFFFFFFFFFFF8;
    v653 = (v652 + 91) & 0xFFFFFFFFFFFFFFF8;
    v654 = (*(v642 + 48) + v653 + 32) & ~*(v642 + 48);
    v655 = (v1031 + v654 + 7) & 0xFFFFFFFFFFFFFFF8;
    v656 = (*(v1037 + 80) + v655 + 16) & ~*(v1037 + 80);
    v657 = swift_allocObject();
    (v1141)(v657 + v650, v1121, v1140);
    sub_226AFD80C(v1052, v657 + v651, &qword_27D7A8DA0, &qword_226D7B570);
    v658 = v657 + v652;
    v659 = v1150;
    *(v658 + 32) = v1149;
    *(v658 + 48) = v659;
    *(v658 + 64) = v1151;
    *(v658 + 80) = v1152;
    v660 = v1148;
    *v658 = v1147;
    *(v658 + 16) = v660;
    v661 = (v657 + v653);
    v662 = v1095;
    *v661 = v1094;
    v661[1] = v662;
    v663 = v1097;
    v661[2] = v1096;
    v661[3] = v663;
    v661[4] = v1098;
    v661[5] = v1099;
    v661[6] = v1100;
    v661[7] = v1101;
    (v1137)(v657 + v654, v1042, v1048);
    v664 = (v657 + v655);
    *v664 = v1139;
    v664[1] = v1138;
    sub_226AFD80C(v1051, v657 + v656, &qword_27D7A6D68, &qword_226D75210);
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B770;
    *(result + 24) = v657;
    v208 = &unk_226D7B778;
    goto LABEL_20;
  }

  if (v159 == *MEMORY[0x277CC6970])
  {
    (*(v1141 + 8))(v1143, v1140);
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    (v158[12])(v155, v157);
    v668 = *v155;
    sub_226CD56EC(v1133, &v1147);
    v669 = swift_allocObject();
    v670 = v1150;
    *(v669 + 48) = v1149;
    *(v669 + 64) = v670;
    *(v669 + 80) = v1151;
    v671 = v1152;
    v672 = v1148;
    *(v669 + 16) = v1147;
    *(v669 + 32) = v672;
    *(v669 + 96) = v671;
    *(v669 + 104) = v668;
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B750;
    *(result + 24) = v669;
    v208 = &unk_226D7B758;
    goto LABEL_20;
  }

  if (v159 == *MEMORY[0x277CC6878])
  {
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    (v158[12])(v155, v157);
    v1139 = *(v155 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8E28, &qword_226D7B728) + 48));
    v674 = v1047 + 32;
    v673 = *(v1047 + 32);
    v675 = v1030;
    v676 = v1049;
    v673(v1030, v155, v1049);
    v677 = v673;
    v1138 = v673;
    v678 = v1141 + 32;
    v1141 = *(v1141 + 32);
    v679 = v1121;
    v680 = v1140;
    (v1141)(v1121, v1143, v1140);
    sub_226CD56EC(v1133, &v1147);
    v677(v1044, v675, v676);
    v681 = (*(v678 + 48) + 16) & ~*(v678 + 48);
    v682 = (v1120 + v681 + 7) & 0xFFFFFFFFFFFFFFF8;
    v683 = (*(v674 + 48) + v682 + 88) & ~*(v674 + 48);
    v684 = (v1035 + v683 + 7) & 0xFFFFFFFFFFFFFFF8;
    v685 = swift_allocObject();
    (v1141)(v685 + v681, v679, v680);
    v686 = v685 + v682;
    v687 = v1150;
    *(v686 + 32) = v1149;
    *(v686 + 48) = v687;
    *(v686 + 64) = v1151;
    *(v686 + 80) = v1152;
    v688 = v1148;
    *v686 = v1147;
    *(v686 + 16) = v688;
    (v1138)(v685 + v683, v1044, v676);
    *(v685 + v684) = v1139;
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B738;
    *(result + 24) = v685;
    v208 = &unk_226D7B740;
    goto LABEL_20;
  }

  if (v159 == *MEMORY[0x277CC69E8])
  {
    (v158[12])(v155, v157);
    v689 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8E20, &qword_226D7B720);
    v690 = *(v155 + *(v689 + 48));
    v691 = *(v155 + *(v689 + 64));
    (*(v1114 + 32))(v1009, v155, v1119);
    swift_getKeyPath();
    sub_226D67DEC();

    v695 = *v1133;
    v696 = *(*v1133 + 56);
    v697 = sub_226D676AC();
    v698 = MEMORY[0x28223BE20](v697);
    v699 = v1009;
    *(&v1006 - 6) = v695;
    *(&v1006 - 5) = v699;
    *(&v1006 - 4) = v690;
    *(&v1006 - 24) = v691;
    v1004 = v698;
    sub_226D6EB8C();

    v709 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v710 = v1142;
    v1142[3] = v709;
    v710[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418);
    v710[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418);
    v711 = __swift_allocate_boxed_opaque_existential_1(v710);
    (*(*(v709 - 8) + 104))(v711, *MEMORY[0x277CC67B8], v709);
    (*(v1141 + 8))(v1143, v1140);
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    *(v1142 + 48) = 0;
    v268 = *(v1114 + 8);
    v700 = &v1041;
LABEL_122:
    v269 = *(v700 - 32);
    v270 = &v1147 + 8;
    return v268(v269, *(v270 - 32));
  }

  if (v159 == *MEMORY[0x277CC69B0])
  {
    (v158[12])(v155, v157);
    (*(v1114 + 32))(v1008, v155, v1119);
    swift_getKeyPath();
    sub_226D67DEC();

    v704 = *v1133;
    v705 = *(*v1133 + 56);
    v706 = sub_226D676AC();
    v707 = MEMORY[0x28223BE20](v706);
    v708 = v1008;
    *(&v1006 - 4) = v704;
    *(&v1006 - 3) = v708;
    v1004 = v707;
    sub_226D6EB8C();

    v719 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v720 = v1142;
    v1142[3] = v719;
    v720[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418);
    v720[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418);
    v721 = __swift_allocate_boxed_opaque_existential_1(v720);
    (*(*(v719 - 8) + 104))(v721, *MEMORY[0x277CC67B8], v719);
    (*(v1141 + 8))(v1143, v1140);
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    *(v1142 + 48) = 0;
    v268 = *(v1114 + 8);
    v700 = &v1040;
    goto LABEL_122;
  }

  if (v159 == *MEMORY[0x277CC69D0])
  {
    (v158[12])(v155, v157);
    v692 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8E18, &qword_226D7B718);
    v693 = *(v155 + *(v692 + 48));
    v694 = *(v155 + *(v692 + 64));
    (*(v1114 + 32))(v1010, v155, v1119);
    swift_getKeyPath();
    sub_226D67DEC();

    v714 = *v1133;
    v715 = *(*v1133 + 56);
    v716 = sub_226D676AC();
    v717 = MEMORY[0x28223BE20](v716);
    v718 = v1010;
    *(&v1006 - 6) = v714;
    *(&v1006 - 5) = v718;
    *(&v1006 - 4) = v693;
    *(&v1006 - 24) = v694;
    v1004 = v717;
    sub_226D6EB8C();

    v726 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v727 = v1142;
    v1142[3] = v726;
    v727[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418);
    v727[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418);
    v728 = __swift_allocate_boxed_opaque_existential_1(v727);
    (*(*(v726 - 8) + 104))(v728, *MEMORY[0x277CC67B8], v726);
    (*(v1141 + 8))(v1143, v1140);
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    *(v1142 + 48) = 0;
    v268 = *(v1114 + 8);
    v700 = &v1042;
    goto LABEL_122;
  }

  if (v159 == *MEMORY[0x277CC6818])
  {
    (v158[12])(v155, v157);
    (*(v1064 + 32))(v1062, v155, v1065);
    v701 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8E00, &qword_226D7B710);
    v702 = v1142;
    v1142[3] = v701;
    v702[4] = sub_226AC4194(&qword_27D7A8E08, &qword_27D7A8E00, &qword_226D7B710);
    v702[5] = sub_226AC4194(&qword_27D7A8E10, &qword_27D7A8E00, &qword_226D7B710);
    v703 = __swift_allocate_boxed_opaque_existential_1(v702);
    swift_getKeyPath();
    sub_226D67DEC();

    v725 = *(*(*(*v1133 + 320) + 16) + OBJC_IVAR____TtC13FinanceDaemonP33_23B5A450C6466867A8B5BE41FBDE409720PersistedPermissions_permissionsLock);
    MEMORY[0x28223BE20](v724);
    v1004 = v1062;
    os_unfair_lock_lock((v725 + 24));
    sub_226CD66DC((v725 + 16), v703);
    os_unfair_lock_unlock((v725 + 24));
    (*(*(v701 - 8) + 104))(v703, *MEMORY[0x277CC67C0], v701);
    (*(v1141 + 8))(v1143, v1140);
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    result = (*(v1064 + 8))(v1062, v1065);
    goto LABEL_63;
  }

  if (v159 == *MEMORY[0x277CC6A30])
  {
    (v158[12])(v155, v157);
    v712 = *v155;
    v713 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DF8, &qword_226D7B708);
    (*(v1080 + 32))(v1026, v155 + *(v713 + 48), v1079);
    swift_getKeyPath();
    sub_226D67DEC();

    v731 = *(*v1133 + 56);
    v732 = sub_226D676AC();
    v733 = MEMORY[0x28223BE20](v732);
    v734 = v1026;
    *(&v1006 - 4) = v733;
    *(&v1006 - 3) = v734;
    LOBYTE(v1004) = v712;
    sub_226D6EB7C();

    v755 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v756 = v1142;
    v1142[3] = v755;
    v756[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418);
    v756[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418);
    v757 = __swift_allocate_boxed_opaque_existential_1(v756);
    (*(*(v755 - 8) + 104))(v757, *MEMORY[0x277CC67B8], v755);
    (*(v1141 + 8))(v1143, v1140);
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    *(v1142 + 48) = 0;
    v268 = *(v1080 + 8);
    v421 = &v1058;
    goto LABEL_57;
  }

  if (v159 == *MEMORY[0x277CC6948])
  {
    (v158[12])(v155, v157);
    v722 = *v155;
    v723 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DF0, &qword_226D7B700);
    (*(v1080 + 32))(v1029, v155 + *(v723 + 48), v1079);
    swift_getKeyPath();
    sub_226D67DEC();

    v751 = *(*v1133 + 56);
    v752 = sub_226D676AC();
    v753 = MEMORY[0x28223BE20](v752);
    v754 = v1029;
    *(&v1006 - 4) = v753;
    *(&v1006 - 3) = v754;
    LOBYTE(v1004) = v722;
    sub_226D6EB7C();

    v765 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v766 = v1142;
    v1142[3] = v765;
    v766[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418);
    v766[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418);
    v767 = __swift_allocate_boxed_opaque_existential_1(v766);
    (*(*(v765 - 8) + 104))(v767, *MEMORY[0x277CC67B8], v765);
    (*(v1141 + 8))(v1143, v1140);
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    *(v1142 + 48) = 0;
    v268 = *(v1080 + 8);
    v421 = &v1061;
    goto LABEL_57;
  }

  if (v159 == *MEMORY[0x277CC6A18])
  {
    (v158[12])(v155, v157);
    v729 = *v155;
    v730 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DE8, &qword_226D7B6C8);
    (*(v1080 + 32))(v1032, v155 + *(v730 + 48), v1079);
    swift_getKeyPath();
    sub_226D67DEC();

    v761 = *(*v1133 + 56);
    v762 = sub_226D676AC();
    v763 = MEMORY[0x28223BE20](v762);
    v764 = v1032;
    *(&v1006 - 4) = v763;
    *(&v1006 - 3) = v764;
    LOBYTE(v1004) = v729;
    sub_226D6EB7C();

    v768 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v769 = v1142;
    v1142[3] = v768;
    v769[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418);
    v769[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418);
    v770 = __swift_allocate_boxed_opaque_existential_1(v769);
    (*(*(v768 - 8) + 104))(v770, *MEMORY[0x277CC67B8], v768);
    (*(v1141 + 8))(v1143, v1140);
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    *(v1142 + 48) = 0;
    v268 = *(v1080 + 8);
    v421 = &v1064;
    goto LABEL_57;
  }

  if (v159 == *MEMORY[0x277CC6880])
  {
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    (v158[12])(v155, v157);
    v735 = v1080 + 32;
    v736 = *(v1080 + 32);
    v737 = v1028;
    v738 = v1079;
    v736(v1028, v155, v1079);
    v739 = v736;
    v1139 = v736;
    v740 = v1141 + 32;
    v1141 = *(v1141 + 32);
    v741 = v1121;
    v742 = v1140;
    (v1141)(v1121, v1143, v1140);
    sub_226CD56EC(v1133, &v1147);
    v743 = v1054;
    v739(v1054, v737, v738);
    v744 = (*(v740 + 48) + 16) & ~*(v740 + 48);
    v745 = (v1120 + v744 + 7) & 0xFFFFFFFFFFFFFFF8;
    v746 = (*(v735 + 48) + v745 + 88) & ~*(v735 + 48);
    v747 = swift_allocObject();
    (v1141)(v747 + v744, v741, v742);
    v748 = v747 + v745;
    v749 = v1150;
    *(v748 + 32) = v1149;
    *(v748 + 48) = v749;
    *(v748 + 64) = v1151;
    *(v748 + 80) = v1152;
    v750 = v1148;
    *v748 = v1147;
    *(v748 + 16) = v750;
    (v1139)(v747 + v746, v743, v738);
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B6B8;
    *(result + 24) = v747;
    v208 = &unk_226D7B6C0;
    goto LABEL_20;
  }

  if (v159 == *MEMORY[0x277CC6888])
  {
    (v158[12])(v155, v157);
    v758 = *v155;
    v759 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DE0, &qword_226D7B6A8);
    v760 = v1058;
    (*(v1074 + 32))(v1058, v155 + *(v759 + 48), v1075);
    sub_226CD45F0(v1143, v1133, v758, v760);

    v774 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v775 = v1142;
    v1142[3] = v774;
    v775[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418);
    v775[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418);
    v776 = __swift_allocate_boxed_opaque_existential_1(v775);
    (*(*(v774 - 8) + 104))(v776, *MEMORY[0x277CC67B8], v774);
    v777 = *(v1074 + 8);
    v778 = &v1090;
LABEL_139:
    v782 = *(v778 - 32);
    v783 = &v1107;
LABEL_93:
    v777(v782, *(v783 - 32));
    goto LABEL_62;
  }

  if (v159 == *MEMORY[0x277CC68A0])
  {
    (v158[12])(v155, v157);
    sub_226CD4860(v1143, v1133, *v155);

    goto LABEL_68;
  }

  if (v159 == *MEMORY[0x277CC6958])
  {
    (v158[12])(v155, v157);
    v771 = *v155;
    v772 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DD8, &qword_226D7B6A0);
    v773 = *(v772 + 64);
    (*(v1074 + 32))(v1070, v155 + *(v772 + 48), v1075);
    (*(v1114 + 32))(v1012, v155 + v773, v1119);
    swift_getKeyPath();
    sub_226D67DEC();

    v781 = *v1133;
    sub_226CCFEE0(v771, v1070, v1012);

    v802 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v803 = v1142;
    v1142[3] = v802;
    v803[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418);
    v803[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418);
    v804 = __swift_allocate_boxed_opaque_existential_1(v803);
    (*(*(v802 - 8) + 104))(v804, *MEMORY[0x277CC67B8], v802);
    (*(v1114 + 8))(v1012, v1119);
    v777 = *(v1074 + 8);
    v778 = &v1102;
    goto LABEL_139;
  }

  if (v159 == *MEMORY[0x277CC6968])
  {
    (v158[12])(v155, v157);
    v779 = *v155;
    v780 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DD0, &qword_226D7B698);
    (*(v1114 + 32))(v1013, v155 + *(v780 + 48), v1119);
    swift_getKeyPath();
    sub_226D67DEC();

    v800 = *v1133;
    sub_226CD0360(v779, v1013);

    v825 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v826 = v1142;
    v1142[3] = v825;
    v826[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418);
    v826[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418);
    v827 = __swift_allocate_boxed_opaque_existential_1(v826);
    (*(*(v825 - 8) + 104))(v827, *MEMORY[0x277CC67B8], v825);
    v777 = *(v1114 + 8);
    v801 = &v1045;
LABEL_142:
    v782 = *(v801 - 32);
    v783 = &v1147 + 1;
    goto LABEL_93;
  }

  if (v159 == *MEMORY[0x277CC69B8])
  {
    (v158[12])(v155, v157);
    (*(v1114 + 32))(v1011, v155, v1119);
    swift_getKeyPath();
    sub_226D67DEC();

    v821 = *v1133;
    sub_226CD0684(v1011);
    v822 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v823 = v1142;
    v1142[3] = v822;
    v823[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418);
    v823[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418);
    v824 = __swift_allocate_boxed_opaque_existential_1(v823);
    (*(*(v822 - 8) + 104))(v824, *MEMORY[0x277CC67B8], v822);
    v777 = *(v1114 + 8);
    v801 = &v1043;
    goto LABEL_142;
  }

  if (v159 == *MEMORY[0x277CC6998])
  {
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    (v158[12])(v155, v157);
    v1139 = *(v155 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DC8, &qword_226D7B648) + 48));
    v785 = v1059 + 32;
    v784 = *(v1059 + 32);
    v786 = v1053;
    v787 = v1061;
    v784(v1053, v155, v1061);
    v788 = v784;
    v1138 = v784;
    v789 = v1141 + 32;
    v1141 = *(v1141 + 32);
    v790 = v1121;
    v791 = v1140;
    (v1141)(v1121, v1143, v1140);
    sub_226CD56EC(v1133, &v1147);
    v788(v1057, v786, v787);
    v792 = (*(v789 + 48) + 16) & ~*(v789 + 48);
    v793 = (v1120 + v792 + 7) & 0xFFFFFFFFFFFFFFF8;
    v794 = (*(v785 + 48) + v793 + 88) & ~*(v785 + 48);
    v795 = (v1055 + v794 + 7) & 0xFFFFFFFFFFFFFFF8;
    v796 = swift_allocObject();
    (v1141)(v796 + v792, v790, v791);
    v797 = v796 + v793;
    v798 = v1150;
    *(v797 + 32) = v1149;
    *(v797 + 48) = v798;
    *(v797 + 64) = v1151;
    *(v797 + 80) = v1152;
    v799 = v1148;
    *v797 = v1147;
    *(v797 + 16) = v799;
    (v1138)(v796 + v794, v1057, v787);
    *(v796 + v795) = v1139;
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B658;
    *(result + 24) = v796;
    v208 = &unk_226D7B660;
    goto LABEL_20;
  }

  if (v159 == *MEMORY[0x277CC68B0])
  {
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    (v158[12])(v155, v157);
    v805 = v1080 + 32;
    v806 = *(v1080 + 32);
    v807 = v1028;
    v808 = v1079;
    v806(v1028, v155, v1079);
    v809 = v806;
    v1139 = v806;
    v810 = v1141 + 32;
    v1141 = *(v1141 + 32);
    v811 = v1121;
    v812 = v1140;
    (v1141)(v1121, v1143, v1140);
    sub_226CD56EC(v1133, &v1147);
    v813 = v1054;
    v809(v1054, v807, v808);
    v814 = (*(v810 + 48) + 16) & ~*(v810 + 48);
    v815 = (v1120 + v814 + 7) & 0xFFFFFFFFFFFFFFF8;
    v816 = (*(v805 + 48) + v815 + 88) & ~*(v805 + 48);
    v817 = swift_allocObject();
    (v1141)(v817 + v814, v811, v812);
    v818 = v817 + v815;
    v819 = v1150;
    *(v818 + 32) = v1149;
    *(v818 + 48) = v819;
    *(v818 + 64) = v1151;
    *(v818 + 80) = v1152;
    v820 = v1148;
    *v818 = v1147;
    *(v818 + 16) = v820;
    (v1139)(v817 + v816, v813, v808);
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B638;
    *(result + 24) = v817;
    v208 = &unk_226D7B640;
    goto LABEL_20;
  }

  if (v159 == *MEMORY[0x277CC6A00])
  {
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    (v158[12])(v155, v157);
    v1139 = *(v155 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DC0, &qword_226D7B5F8) + 48));
    v829 = v1067 + 32;
    v828 = *(v1067 + 32);
    v830 = v1056;
    v831 = v1069;
    v828(v1056, v155, v1069);
    v832 = v828;
    v1138 = v828;
    v833 = v1141 + 32;
    v1141 = *(v1141 + 32);
    v834 = v1121;
    v835 = v1140;
    (v1141)(v1121, v1143, v1140);
    sub_226CD56EC(v1133, &v1147);
    v832(v1066, v830, v831);
    v836 = (*(v833 + 48) + 16) & ~*(v833 + 48);
    v837 = (v1120 + v836 + 7) & 0xFFFFFFFFFFFFFFF8;
    v838 = (*(v829 + 48) + v837 + 88) & ~*(v829 + 48);
    v839 = (v1060 + v838 + 7) & 0xFFFFFFFFFFFFFFF8;
    v840 = swift_allocObject();
    (v1141)(v840 + v836, v834, v835);
    v841 = v840 + v837;
    v842 = v1150;
    *(v841 + 32) = v1149;
    *(v841 + 48) = v842;
    *(v841 + 64) = v1151;
    *(v841 + 80) = v1152;
    v843 = v1148;
    *v841 = v1147;
    *(v841 + 16) = v843;
    (v1138)(v840 + v838, v1066, v831);
    *(v840 + v839) = v1139;
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B608;
    *(result + 24) = v840;
    v208 = &unk_226D7B610;
    goto LABEL_20;
  }

  if (v159 == *MEMORY[0x277CC68E0])
  {
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    (v158[12])(v155, v157);
    v844 = v1080 + 32;
    v845 = *(v1080 + 32);
    v846 = v1028;
    v847 = v1079;
    v845(v1028, v155, v1079);
    v848 = v845;
    v1139 = v845;
    v849 = v1141 + 32;
    v1141 = *(v1141 + 32);
    v850 = v1121;
    v851 = v1140;
    (v1141)(v1121, v1143, v1140);
    sub_226CD56EC(v1133, &v1147);
    v852 = v1054;
    v848(v1054, v846, v847);
    v853 = (*(v849 + 48) + 16) & ~*(v849 + 48);
    v854 = (v1120 + v853 + 7) & 0xFFFFFFFFFFFFFFF8;
    v855 = (*(v844 + 48) + v854 + 88) & ~*(v844 + 48);
    v856 = swift_allocObject();
    (v1141)(v856 + v853, v850, v851);
    v857 = v856 + v854;
    v858 = v1150;
    *(v857 + 32) = v1149;
    *(v857 + 48) = v858;
    *(v857 + 64) = v1151;
    *(v857 + 80) = v1152;
    v859 = v1148;
    *v857 = v1147;
    *(v857 + 16) = v859;
    (v1139)(v856 + v855, v852, v847);
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B5E8;
    *(result + 24) = v856;
    v208 = &unk_226D7B5F0;
    goto LABEL_20;
  }

  if (v159 == *MEMORY[0x277CC69A0])
  {
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    (v158[12])(v155, v157);
    v1139 = *(v155 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DB8, &qword_226D7B5A8) + 48));
    v861 = v1072 + 32;
    v860 = *(v1072 + 32);
    v862 = v1063;
    v863 = v1073;
    v860(v1063, v155, v1073);
    v864 = v860;
    v1138 = v860;
    v865 = v1141 + 32;
    v1141 = *(v1141 + 32);
    v866 = v1121;
    v867 = v1140;
    (v1141)(v1121, v1143, v1140);
    sub_226CD56EC(v1133, &v1147);
    v864(v1071, v862, v863);
    v868 = (*(v865 + 48) + 16) & ~*(v865 + 48);
    v869 = (v1120 + v868 + 7) & 0xFFFFFFFFFFFFFFF8;
    v870 = (*(v861 + 48) + v869 + 88) & ~*(v861 + 48);
    v871 = (v1068 + v870 + 7) & 0xFFFFFFFFFFFFFFF8;
    v872 = swift_allocObject();
    (v1141)(v872 + v868, v866, v867);
    v873 = v872 + v869;
    v874 = v1150;
    *(v873 + 32) = v1149;
    *(v873 + 48) = v874;
    *(v873 + 64) = v1151;
    *(v873 + 80) = v1152;
    v875 = v1148;
    *v873 = v1147;
    *(v873 + 16) = v875;
    (v1138)(v872 + v870, v1071, v863);
    *(v872 + v871) = v1139;
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B5B8;
    *(result + 24) = v872;
    v208 = &unk_226D7B5C0;
    goto LABEL_20;
  }

  if (v159 == *MEMORY[0x277CC68B8])
  {
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    (v158[12])(v155, v157);
    v876 = v1080 + 32;
    v877 = *(v1080 + 32);
    v878 = v1028;
    v879 = v1079;
    v877(v1028, v155, v1079);
    v880 = v877;
    v1139 = v877;
    v881 = v1141 + 32;
    v1141 = *(v1141 + 32);
    v882 = v1121;
    v883 = v1140;
    (v1141)(v1121, v1143, v1140);
    sub_226CD56EC(v1133, &v1147);
    v884 = v1054;
    v880(v1054, v878, v879);
    v885 = (*(v881 + 48) + 16) & ~*(v881 + 48);
    v886 = (v1120 + v885 + 7) & 0xFFFFFFFFFFFFFFF8;
    v887 = (*(v876 + 48) + v886 + 88) & ~*(v876 + 48);
    v888 = swift_allocObject();
    (v1141)(v888 + v885, v882, v883);
    v889 = v888 + v886;
    v890 = v1150;
    *(v889 + 32) = v1149;
    *(v889 + 48) = v890;
    *(v889 + 64) = v1151;
    *(v889 + 80) = v1152;
    v891 = v1148;
    *v889 = v1147;
    *(v889 + 16) = v891;
    (v1139)(v888 + v887, v884, v879);
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B598;
    *(result + 24) = v888;
    v208 = &unk_226D7B5A0;
    goto LABEL_20;
  }

  if (v159 == *MEMORY[0x277CC6810])
  {
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    v892 = *v1133;
    v894 = v1141 + 32;
    v893 = *(v1141 + 32);
    v895 = v1121;
    v896 = v1140;
    v893(v1121, v1143, v1140);
    v897 = (*(v894 + 48) + 16) & ~*(v894 + 48);
    v898 = (v1120 + v897 + 7) & 0xFFFFFFFFFFFFFFF8;
    v899 = swift_allocObject();
    v893(v899 + v897, v895, v896);
    *(v899 + v898) = v892;
    v900 = swift_allocObject();
    *(v900 + 16) = &unk_226D7B9D0;
    *(v900 + 24) = v899;
    v901 = v1142;
    *v1142 = &unk_226D7B9D8;
    v901[1] = v900;
    *(v901 + 48) = 1;
  }

  if (v159 == *MEMORY[0x277CC6938])
  {
    v902 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7430, &qword_226D74E50);
    v903 = v1142;
    v1142[3] = v902;
    v903[4] = sub_226AC4194(&qword_281062BF8, &qword_27D7A7430, &qword_226D74E50);
    v903[5] = sub_226AC4194(&qword_281062C00, &qword_27D7A7430, &qword_226D74E50);
    v904 = __swift_allocate_boxed_opaque_existential_1(v903);
    v905 = *(*v1133 + 504);
    v906 = (*(*(*v1133 + 512) + 16))();
LABEL_163:
    *v904 = v906 & 1;
    (*(*(v902 - 8) + 104))(v904, *MEMORY[0x277CC67C0], v902);
    (*(v1141 + 8))(v1143, v1140);
    result = sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    *(v903 + 48) = 0;
    return result;
  }

  if (v159 == *MEMORY[0x277CC6800])
  {
    v902 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7430, &qword_226D74E50);
    v903 = v1142;
    v1142[3] = v902;
    v903[4] = sub_226AC4194(&qword_281062BF8, &qword_27D7A7430, &qword_226D74E50);
    v903[5] = sub_226AC4194(&qword_281062C00, &qword_27D7A7430, &qword_226D74E50);
    v904 = __swift_allocate_boxed_opaque_existential_1(v903);
    v907 = *(*v1133 + 504);
    v906 = (*(*(*v1133 + 512) + 8))();
    goto LABEL_163;
  }

  if (v159 == *MEMORY[0x277CC6860])
  {
    v902 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7430, &qword_226D74E50);
    v903 = v1142;
    v1142[3] = v902;
    v903[4] = sub_226AC4194(&qword_281062BF8, &qword_27D7A7430, &qword_226D74E50);
    v903[5] = sub_226AC4194(&qword_281062C00, &qword_27D7A7430, &qword_226D74E50);
    v904 = __swift_allocate_boxed_opaque_existential_1(v903);
    v908 = *(*v1133 + 504);
    v906 = (*(*(*v1133 + 512) + 32))();
    goto LABEL_163;
  }

  if (v159 == *MEMORY[0x277CC67F8])
  {
    v902 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7430, &qword_226D74E50);
    v903 = v1142;
    v1142[3] = v902;
    v903[4] = sub_226AC4194(&qword_281062BF8, &qword_27D7A7430, &qword_226D74E50);
    v903[5] = sub_226AC4194(&qword_281062C00, &qword_27D7A7430, &qword_226D74E50);
    v904 = __swift_allocate_boxed_opaque_existential_1(v903);
    v909 = *(*v1133 + 504);
    v906 = (*(*(*v1133 + 512) + 24))();
    goto LABEL_163;
  }

  if (v159 == *MEMORY[0x277CC6848])
  {
    v910 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8F40, &qword_226D7B8F0);
    v911 = v1142;
    v1142[3] = v910;
    v911[4] = sub_226AC4194(&qword_27D7A8F48, &qword_27D7A8F40, &qword_226D7B8F0);
    v911[5] = sub_226AC4194(&qword_27D7A8F50, &qword_27D7A8F40, &qword_226D7B8F0);
    v912 = __swift_allocate_boxed_opaque_existential_1(v911);
    swift_getKeyPath();
    sub_226D67DEC();

    v913 = v1125;
    v914 = v1103;
    v915 = v1126;
    (*(v1125 + 104))(v1103, *MEMORY[0x277CC65B0], v1126);
    sub_226CD0988(v914, &v1153);
    (*(v913 + 8))(v914, v915);
    v916 = *v1133;
    v917 = sub_226D6704C();
    sub_226CDC96C(v917);
    *v912 = v918;
LABEL_189:
    v465 = *MEMORY[0x277CC67C0];
    v466 = *(*(v910 - 8) + 104);
    v464 = v912;
    goto LABEL_190;
  }

  if (v159 == *MEMORY[0x277CC68D0])
  {
    swift_getKeyPath();
    sub_226D67DEC();

    v919 = *v1133;
    sub_226CDCBD0();
    goto LABEL_68;
  }

  if (v159 == *MEMORY[0x277CC6900])
  {
    swift_getKeyPath();
    sub_226D67DEC();

    v920 = *v1133;
    sub_226CDCD3C();
    goto LABEL_68;
  }

  if (v159 == *MEMORY[0x277CC6978])
  {
    v910 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7430, &qword_226D74E50);
    v921 = v1142;
    v1142[3] = v910;
    v921[4] = sub_226AC4194(&qword_281062BF8, &qword_27D7A7430, &qword_226D74E50);
    v921[5] = sub_226AC4194(&qword_281062C00, &qword_27D7A7430, &qword_226D74E50);
    v912 = __swift_allocate_boxed_opaque_existential_1(v921);
    swift_getKeyPath();
    sub_226D67DEC();

    v922 = *(*v1133 + 224);
    v923 = *(*v1133 + 232);
    v924 = __swift_project_boxed_opaque_existential_1((*v1133 + 200), v922);
    *(&v1148 + 1) = v922;
    *&v1149 = *(v923 + 8);
    v925 = __swift_allocate_boxed_opaque_existential_1(&v1147);
    (*(*(v922 - 8) + 16))(v925, v924, v922);
    v926 = v1007;
    v927 = sub_226B5A79C(v1007);
    sub_226AC47B0(v926, &qword_27D7A8BE0, &unk_226D718F0);
LABEL_176:
    sub_226AFD7B8(&v1147);
    *v912 = v927 & 1;
    goto LABEL_189;
  }

  if (v159 == *MEMORY[0x277CC6A20])
  {
    v910 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8EE0, &qword_226D7B8C0);
    v928 = v1142;
    v1142[3] = v910;
    v928[4] = sub_226AC4194(&qword_27D7A8EE8, &qword_27D7A8EE0, &qword_226D7B8C0);
    v928[5] = sub_226AC4194(&qword_27D7A8EF0, &qword_27D7A8EE0, &qword_226D7B8C0);
    v912 = __swift_allocate_boxed_opaque_existential_1(v928);
    swift_getKeyPath();
    sub_226D67DEC();

    v929 = *(*v1133 + 56);
    v930 = sub_226D676AC();
    v1004 = MEMORY[0x28223BE20](v930);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FC0, &unk_226D75DC0);
    sub_226D6EB8C();

    *v912 = v1147;
    goto LABEL_189;
  }

  if (v159 == *MEMORY[0x277CC6988])
  {
    v910 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7430, &qword_226D74E50);
    v931 = v1142;
    v1142[3] = v910;
    v931[4] = sub_226AC4194(&qword_281062BF8, &qword_27D7A7430, &qword_226D74E50);
    v931[5] = sub_226AC4194(&qword_281062C00, &qword_27D7A7430, &qword_226D74E50);
    v912 = __swift_allocate_boxed_opaque_existential_1(v931);
    swift_getKeyPath();
    sub_226D67DEC();

    v932 = *(*v1133 + 224);
    v933 = *(*v1133 + 232);
    v934 = __swift_project_boxed_opaque_existential_1((*v1133 + 200), v932);
    *(&v1148 + 1) = v932;
    *&v1149 = *(v933 + 8);
    v935 = __swift_allocate_boxed_opaque_existential_1(&v1147);
    (*(*(v932 - 8) + 16))(v935, v934, v932);
    __swift_project_boxed_opaque_existential_1(&v1147, *(&v1148 + 1));
    v927 = sub_226D69A3C();
    goto LABEL_176;
  }

  if (v159 == *MEMORY[0x277CC6990])
  {
    v910 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7430, &qword_226D74E50);
    v936 = v1142;
    v1142[3] = v910;
    v936[4] = sub_226AC4194(&qword_281062BF8, &qword_27D7A7430, &qword_226D74E50);
    v936[5] = sub_226AC4194(&qword_281062C00, &qword_27D7A7430, &qword_226D74E50);
    v937 = __swift_allocate_boxed_opaque_existential_1(v936);
    sub_226CD226C(v1133, v937);
    v465 = *MEMORY[0x277CC67C0];
    v466 = *(*(v910 - 8) + 104);
    v464 = v937;
LABEL_190:
    v467 = v910;
    goto LABEL_69;
  }

  if (v159 == *MEMORY[0x277CC6940])
  {
    swift_getKeyPath();
    sub_226D67DEC();

    v938 = *(*v1133 + 224);
    v939 = *(*v1133 + 232);
    v940 = __swift_project_boxed_opaque_existential_1((*v1133 + 200), v938);
    *(&v1148 + 1) = v938;
    *&v1149 = *(v939 + 8);
    v941 = __swift_allocate_boxed_opaque_existential_1(&v1147);
    (*(*(v938 - 8) + 16))(v941, v940, v938);
    __swift_project_boxed_opaque_existential_1(&v1147, *(&v1148 + 1));
    sub_226D69A1C();
    __swift_project_boxed_opaque_existential_1(&v1147, *(&v1148 + 1));
    sub_226D69A1C();
    goto LABEL_86;
  }

  if (v159 == *MEMORY[0x277CC67F0])
  {
    v910 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8E58, &qword_226D7B7F0);
    v942 = v1142;
    v1142[3] = v910;
    v942[4] = sub_226AC4194(&qword_27D7A8E60, &qword_27D7A8E58, &qword_226D7B7F0);
    v942[5] = sub_226AC4194(&qword_27D7A8E68, &qword_27D7A8E58, &qword_226D7B7F0);
    v912 = __swift_allocate_boxed_opaque_existential_1(v942);
    swift_getKeyPath();
    sub_226D67DEC();

    v946 = *v1133;
    v947 = *(*v1133 + 56);
    v948 = sub_226D676AC();
    v1004 = MEMORY[0x28223BE20](v948);
    v1005 = v946;
    sub_226D679DC();
    sub_226D6EB8C();

    goto LABEL_189;
  }

  if (v159 == *MEMORY[0x277CC6820])
  {
    v943 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7438, &qword_226D74E60);
    v944 = v1142;
    v1138 = v943;
    v1142[3] = v943;
    v944[4] = sub_226AC4194(&qword_27D7A7440, &qword_27D7A7438, &qword_226D74E60);
    v944[5] = sub_226AC4194(&qword_27D7A7448, &qword_27D7A7438, &qword_226D74E60);
    v945 = __swift_allocate_boxed_opaque_existential_1(v944);
    swift_getKeyPath();
    sub_226D67DEC();

    v962 = *v1133;
    v963 = sub_226D320D4();
    if (v963)
    {
      v964 = sub_226D66EDC();
      sub_226CD740C();
      v965 = swift_allocError();
      v967 = v966;
      (*(v1129 + 104))(v966, *MEMORY[0x277CC6A40], v166);
      (*(*(v964 - 8) + 104))(v967, *MEMORY[0x277CC65D0], v964);
      swift_willThrow();
      v968 = v1142;
      __swift_deallocate_boxed_opaque_existential_2(v1142);
      v969 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
      v968[3] = v969;
      v968[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418);
      v968[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418);
      v970 = __swift_allocate_boxed_opaque_existential_1(v968);
      v971 = v965;
      sub_226D66FBC();
      (*(*(v969 - 8) + 104))(v970, *MEMORY[0x277CC67B0], v969);
    }

    else
    {
      v972 = v962[38];
      v973 = v962[39];
      __swift_project_boxed_opaque_existential_1(v962 + 35, v972);
      (*(v973 + 8))(v188, v156, v187, v154, v1143, v972, v973);
      (*(*(v1138 - 1) + 104))(v945, *MEMORY[0x277CC67C0], v1138);
    }

    goto LABEL_62;
  }

  if (v159 == *MEMORY[0x277CC6850])
  {
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    v950 = v1141 + 32;
    v949 = *(v1141 + 32);
    v951 = v1121;
    v952 = v1140;
    v949(v1121, v1143, v1140);
    sub_226CD56EC(v1133, &v1147);
    v953 = (*(v950 + 48) + 16) & ~*(v950 + 48);
    v954 = (v1120 + v953 + 7) & 0xFFFFFFFFFFFFFFF8;
    v955 = swift_allocObject();
    v949(v955 + v953, v951, v952);
    v956 = v955 + v954;
    v957 = v1150;
    *(v956 + 32) = v1149;
    *(v956 + 48) = v957;
    *(v956 + 64) = v1151;
    *(v956 + 80) = v1152;
    v958 = v1148;
    *v956 = v1147;
    *(v956 + 16) = v958;
    v959 = (v955 + ((v954 + 91) & 0xFFFFFFFFFFFFFFF8));
    v960 = v1095;
    *v959 = v1094;
    v959[1] = v960;
    v961 = v1097;
    v959[2] = v1096;
    v959[3] = v961;
    v959[4] = v1098;
    v959[5] = v1099;
    v959[6] = v1100;
    v959[7] = v1101;
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B7A8;
    *(result + 24) = v955;
    v208 = &unk_226D7B7B0;
    goto LABEL_20;
  }

  if (v159 == *MEMORY[0x277CC68F0])
  {
    sub_226CD4AC0(v1143, v1133);
    goto LABEL_68;
  }

  if (v159 == *MEMORY[0x277CC6928])
  {
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    v975 = v1141 + 32;
    v974 = *(v1141 + 32);
    v976 = v1121;
    v977 = v1140;
    v974(v1121, v1143, v1140);
    sub_226CD56EC(v1133, &v1147);
    v978 = (*(v975 + 48) + 16) & ~*(v975 + 48);
    v979 = (v1120 + v978 + 7) & 0xFFFFFFFFFFFFFFF8;
    v980 = swift_allocObject();
    v974(v980 + v978, v976, v977);
    v981 = v980 + v979;
    v982 = v1150;
    *(v981 + 32) = v1149;
    *(v981 + 48) = v982;
    *(v981 + 64) = v1151;
    *(v981 + 80) = v1152;
    v983 = v1148;
    *v981 = v1147;
    *(v981 + 16) = v983;
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B620;
    *(result + 24) = v980;
    v208 = &unk_226D7B628;
    goto LABEL_20;
  }

  if (v159 == *MEMORY[0x277CC6960])
  {
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    v985 = v1141 + 32;
    v984 = *(v1141 + 32);
    v986 = v1121;
    v987 = v1140;
    v984(v1121, v1143, v1140);
    sub_226CD56EC(v1133, &v1147);
    v988 = (*(v985 + 48) + 16) & ~*(v985 + 48);
    v989 = (v1120 + v988 + 7) & 0xFFFFFFFFFFFFFFF8;
    v990 = swift_allocObject();
    v984(v990 + v988, v986, v987);
    v991 = v990 + v989;
    v992 = v1150;
    *(v991 + 32) = v1149;
    *(v991 + 48) = v992;
    *(v991 + 64) = v1151;
    *(v991 + 80) = v1152;
    v993 = v1148;
    *v991 = v1147;
    *(v991 + 16) = v993;
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B5D0;
    *(result + 24) = v990;
    v208 = &unk_226D7B5D8;
    goto LABEL_20;
  }

  if (v159 == *MEMORY[0x277CC6A28])
  {
    sub_226AC47B0(&v1153, &qword_27D7A70E0, &qword_226D741B0);
    v995 = v1141 + 32;
    v994 = *(v1141 + 32);
    v996 = v1121;
    v997 = v1140;
    v994(v1121, v1143, v1140);
    sub_226CD56EC(v1133, &v1147);
    v998 = (*(v995 + 48) + 16) & ~*(v995 + 48);
    v999 = (v1120 + v998 + 7) & 0xFFFFFFFFFFFFFFF8;
    v1000 = swift_allocObject();
    v994(v1000 + v998, v996, v997);
    v1001 = v1000 + v999;
    v1002 = v1150;
    *(v1001 + 32) = v1149;
    *(v1001 + 48) = v1002;
    *(v1001 + 64) = v1151;
    *(v1001 + 80) = v1152;
    v1003 = v1148;
    *v1001 = v1147;
    *(v1001 + 16) = v1003;
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B588;
    *(result + 24) = v1000;
    v208 = &unk_226D749B8;
    goto LABEL_20;
  }

  *&v1147 = 0;
  *(&v1147 + 1) = 0xE000000000000000;
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD000000000000017, 0x8000000226D812F0);
  sub_226D6EFBC();
  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t sub_226AC2F44()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7098, &qword_226D740D8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_226AC2FC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_226D67DDC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_226AC2FF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_226D67D8C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_226AC3064()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  if (v0[11])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  }

  v2 = v0[13];

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_226AC30BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226AC30F4()
{
  v1 = sub_226D67E0C();
  v2 = *(v1 - 8);
  v25 = *(v2 + 80);
  v3 = (v25 + 16) & ~v25;
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DA0, &qword_226D7B570) - 8);
  v24 = *(v5 + 80);
  v6 = (v4 + v24) & ~v24;
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = sub_226D66F0C();
  v8 = *(v21 - 8);
  v23 = *(v8 + 80);
  v20 = (((v7 + 91) & 0xFFFFFFFFFFFFFFF8) + v23 + 32) & ~v23;
  v9 = (*(v8 + 64) + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210) - 8);
  v11 = *(v10 + 80);
  v22 = *(v10 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v12 = sub_226D6BA8C();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v6, 1, v12))
  {
    (*(v13 + 8))(v0 + v6, v12);
  }

  v14 = (v9 + v11 + 16) & ~v11;
  v15 = *(v0 + v7);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v7 + 8));
  if (*(v0 + v7 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + v7 + 48));
  }

  (*(v8 + 8))(v0 + v20, v21);
  v16 = *(v0 + v9 + 8);

  v17 = sub_226D6D52C();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v0 + v14, 1, v17))
  {
    (*(v18 + 8))(v0 + v14, v17);
  }

  return MEMORY[0x2821FE8E8](v0, v14 + v22, v25 | v24 | v23 | v11 | 7);
}

uint64_t sub_226AC3464()
{
  v1 = sub_226D67E0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DA0, &qword_226D7B570) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DA8, &unk_226D7D230) - 8);
  v11 = *(v10 + 80);
  v21 = *(v10 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v12 = sub_226D6BA8C();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v8, 1, v12))
  {
    (*(v13 + 8))(v0 + v8, v12);
  }

  v14 = (((v9 + 91) & 0xFFFFFFFFFFFFFFF8) + v11 + 32) & ~v11;
  v15 = *(v0 + v9);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v9 + 8));
  if (*(v0 + v9 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + v9 + 48));
  }

  v16 = sub_226D66F0C();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v0 + v14, 1, v16))
  {
    (*(v17 + 8))(v0 + v14, v16);
  }

  v18 = (v21 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v0 + v18 + 8);

  return MEMORY[0x2821FE8E8](v0, v18 + 16, v3 | v7 | v11 | 7);
}

uint64_t sub_226AC3758()
{
  v1 = sub_226D67E0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5 + 8));
  if (*(v0 + v5 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5 + 48));
  }

  return MEMORY[0x2821FE8E8](v0, ((v5 + 91) & 0xFFFFFFFFFFFFFFF8) + 32, v3 | 7);
}

uint64_t sub_226AC3818@<X0>(_BYTE *a1@<X8>)
{
  result = sub_226D67DCC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_226AC384C()
{
  v1 = sub_226D67E0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_226D67A2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = *(v0 + v5);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5 + 8));
  if (*(v0 + v5 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5 + 48));
  }

  v11 = v3 | v8;
  v12 = (v5 + 95) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v8 + v13 + 16) & ~v8;
  v15 = *(v0 + v12 + 8);

  v16 = *(v0 + v13 + 8);

  (*(v7 + 8))(v0 + v14, v6);

  return MEMORY[0x2821FE8E8](v0, v14 + v9, v11 | 7);
}

uint64_t sub_226AC39EC()
{
  v1 = sub_226D67E0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5 + 8));
  if (*(v0 + v5 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5 + 48));
  }

  v7 = (v5 + 95) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v3 | 7);
}

uint64_t sub_226AC3AB8()
{
  v1 = sub_226D67E0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5 + 8));
  if (*(v0 + v5 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5 + 48));
  }

  v7 = (v5 + 95) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v7);

  v10 = *(v0 + v8);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v3 | 7);
}

uint64_t sub_226AC3BA8()
{
  v1 = sub_226D67E0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_226D6B49C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v14 = *(v8 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5));
  }

  v10 = *(v0 + v6);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v6 + 8));
  if (*(v0 + v6 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + v6 + 48));
  }

  v11 = v3 | v9;
  v12 = (v6 + v9 + 89) & ~v9;
  (*(v8 + 8))(v0 + v12, v7);

  return MEMORY[0x2821FE8E8](v0, v12 + v14, v11 | 7);
}

uint64_t sub_226AC3D48()
{
  v1 = sub_226D67E0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_226D6799C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v11 = *(v0 + v10);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v10 + 8));
  if (*(v0 + v10 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + v10 + 48));
  }

  return MEMORY[0x2821FE8E8](v0, ((v10 + 91) & 0xFFFFFFFFFFFFFFF8) + 32, v3 | v8 | 7);
}

uint64_t sub_226AC3EF0()
{
  v1 = sub_226D67E0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5));
  }

  v7 = *(v0 + v6);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v6 + 8));
  if (*(v0 + v6 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + v6 + 48));
  }

  return MEMORY[0x2821FE8E8](v0, (v6 + 89) & 0xFFFFFFFFFFFFFFF8 | 4, v3 | 7);
}

uint64_t sub_226AC3FC8()
{
  v1 = sub_226D67E0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226AC40E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_226AC4194(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_226AC425C(uint64_t a1)
{
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F5E0);
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_226AB4000, v3, v4, "Fetching maps suggestions", v5, 2u);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }

  v6 = *(a1 + 64);
  MEMORY[0x28223BE20](v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8F70, &qword_226D7B970);
  return sub_226D6EA6C();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_226AC4410(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = sub_226D676AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8F70, &qword_226D7B970);
  sub_226D6EB8C();
}

uint64_t sub_226AC44A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226AC44E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226AC4530(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_226AC45FC(v11, 0, 0, 1, a1, a2);
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
    sub_226AC4708(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_226AC45FC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_226AE1984(a5, a6);
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
    result = sub_226D6EF4C();
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

uint64_t sub_226AC4708(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_226AC47B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_226AC4834(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_226AC484C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_226AC4864()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226AC48CC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_226D6E39C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_226AC48F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226AC4938()
{
  v1 = sub_226D684AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226AC4A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D68CBC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226AC4AC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226D68CBC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226AC4B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D67C0C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_226D68CBC();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_226AC4C7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_226D67C0C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_226D68CBC();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_226AC4D78()
{
  v1 = sub_226D67C0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for TransactionsMatchStrategy(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  v11 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v12 = sub_226D68CBC();
  (*(*(v12 - 8) + 8))(v0 + v8, v12);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v8 + v6[8]));

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_226AC4F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6D52C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_226D6D4AC();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_226AC502C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226D6D52C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_226D6D4AC();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_226AC5150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s8MetadataV9CloudItemV6ObjectVMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226AC520C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s8MetadataV9CloudItemV6ObjectVMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226AC5324(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_226D6D4AC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_226AC53D0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_226D6D4AC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226AC5474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6D52C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = _s8MetadataV15CloudItemStatusOMa(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = _s8MetadataV15LocalItemStatusOMa(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_226AC55B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_226D6D52C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = _s8MetadataV15CloudItemStatusOMa(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = _s8MetadataV15LocalItemStatusOMa(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_226AC5700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_226AC57C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_226AC5880(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_226AC58EC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_226AC596C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B90, &unk_226D71900);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_226AC5A28(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B90, &unk_226D71900);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226AC5B48()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226AC5B80()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226AC5BC8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226AC5C24()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226AC5C64()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226AC5CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_226AC5D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_226AC5DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6D52C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = sub_226D6D4AC();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 28);

  return v15(v16, a2, v14);
}

uint64_t sub_226AC5F24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_226D6D52C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
    goto LABEL_5;
  }

  v16 = sub_226D6D4AC();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 28);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_226AC607C(uint64_t a1)
{
  result = sub_226B2042C(&qword_27D7A6980, type metadata accessor for BankConnectNotificationEventsUnregisterTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226AC60E8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A6B48, &qword_226D72788);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_226AC61A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A6B48, &qword_226D72788);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226AC6254(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_226D6D4AC();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_226AC62F8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_226D6D4AC();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226AC6398()
{
  v1 = (type metadata accessor for ActivityRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v1[7];
  v7 = sub_226D6D4AC();
  (*(*(v7 - 8) + 8))(v6 + v3, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_226AC6490()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226AC64C8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_226AC6508()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226AC6544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226AC6600(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226AC6718(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_226D6D52C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_226AC682C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_226D6D52C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_226AC6944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C20, &qword_226D72BF8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C10, &unk_226D731E0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_226AC6A4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C20, &qword_226D72BF8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C10, &unk_226D731E0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_226AC6B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = _s8MetadataV15CloudItemStatusOMa_0(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = _s8MetadataV15LocalItemStatusOMa_0(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_226AC6C88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = _s8MetadataV15CloudItemStatusOMa_0(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = _s8MetadataV15LocalItemStatusOMa_0(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_226AC6DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_226D6A34C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_226D67F1C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_226AC6ED8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_226D6A34C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_226D67F1C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_226AC6FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6E07C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226AC70BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226D6E07C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226AC7178()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);
  v2 = v0[53];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);
  v3 = v0[59];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226AC7288()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit21WalletMessageUpdating_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_226AC72E0()
{
  v1 = sub_226D682FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for BankConnectPendingConsentProcessingTask() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  (*(v2 + 8))(v0 + v4, v1);
  v10 = *(v0 + v8 + 8);

  v11 = *(v0 + v8 + 24);

  v12 = v6[9];
  v13 = sub_226D6D4AC();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v8 + v12, 1, v13))
  {
    (*(v14 + 8))(v0 + v8 + v12, v13);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_226AC749C()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);
  v2 = v0[53];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);
  v3 = v0[59];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226AC75AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_226AC7668(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226AC7718(uint64_t a1)
{
  result = sub_226B4E6C8(&qword_27D7A6E68, type metadata accessor for BankConnectPendingConsentProcessingTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226AC7770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6ED0, &unk_226D73830);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_226AC7838(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6ED0, &unk_226D73830);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226AC78E8()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_226AC7938()
{
  v19 = sub_226D6B8CC();
  v1 = *(v19 - 8);
  v2 = *(v1 + 80);
  v17 = (v2 + 16) & ~v2;
  v16 = (*(v1 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = sub_226D6B82C();
  v3 = *(v18 - 8);
  v4 = *(v3 + 80);
  v5 = (v16 + v4 + 8) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_226D6C3CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v9 + 8) & ~v9;
  v15 = *(v8 + 64);
  v11 = v2 | v4 | v9;
  (*(v1 + 8))(v0 + v17, v19);
  v12 = *(v0 + v16);

  (*(v3 + 8))(v0 + v5, v18);
  v13 = *(v0 + v6);

  (*(v8 + 8))(v0 + v10, v7);

  return MEMORY[0x2821FE8E8](v0, v10 + v15, v11 | 7);
}

uint64_t sub_226AC7B44(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_226AC7B74()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_226AC7BF4()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);
  v2 = v0[53];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);
  v3 = v0[59];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226AC7D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_226D6B9BC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 28);

  return v15(v16, a2, v14);
}

uint64_t sub_226AC7E50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_226D6D4AC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_226D6B9BC();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 28);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_226AC7FA8(uint64_t a1)
{
  result = sub_226B5E018(&qword_27D7A6FD0, type metadata accessor for BankConnectTransactionsDataFetchTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226AC8000()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226AC8040()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226AC8080()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226AC80BC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_226AC810C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226AC8148()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226AC8180()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226AC81B8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226AC81F4()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  if (v0[11])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_226AC8284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6B9BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_226AC8380(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_226D6B9BC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_226AC8488()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);
  v2 = v0[53];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);
  v3 = v0[59];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226AC8598()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226AC85D0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226AC860C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_226AC864C()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);
  v2 = v0[53];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);
  v3 = v0[59];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226AC875C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6D52C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_226AC8858(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_226D6D52C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_226AC8960()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);
  v2 = v0[53];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);
  v3 = v0[59];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226AC8A70()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226AC8AB0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226AC8AE8()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);
  v2 = v0[53];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);
  v3 = v0[59];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226AC8BF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6D1AC();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_226AC8C64(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_226D6D1AC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_226AC8CE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B90, &unk_226D71900);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_226AC8D60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B90, &unk_226D71900);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_226AC8DF8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226AC8E38()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);
  v2 = v0[53];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);
  v3 = v0[59];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226AC8F48()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226AC8F88()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226AC8FC0()
{
  v1 = sub_226D6D4AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226AC909C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226AC90F4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226AC912C()
{
  v1 = sub_226D671FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_226D6C3CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 1) & 0xFFFFFFFFFFFFFFFELL;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5 + 8);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 2, v10 | 7);
}

uint64_t sub_226AC92A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7298, &qword_226D74990);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226AC9370()
{
  v1 = v0[2];

  sub_226B11B98(v0[3], v0[4]);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226AC93B8()
{
  v19 = sub_226D6B8CC();
  v1 = *(v19 - 8);
  v2 = *(v1 + 80);
  v17 = (v2 + 24) & ~v2;
  v3 = *(v1 + 64);
  v18 = sub_226D6B82C();
  v4 = *(v18 - 8);
  v5 = *(v4 + 80);
  v6 = (v17 + v3 + v5) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_226D6C3CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + 8) & ~v10;
  v16 = *(v9 + 64);
  v12 = v2 | v5 | v10;
  v13 = *(v0 + 16);

  (*(v1 + 8))(v0 + v17, v19);
  (*(v4 + 8))(v0 + v6, v18);
  v14 = *(v0 + v7);

  (*(v9 + 8))(v0 + v11, v8);

  return MEMORY[0x2821FE8E8](v0, v11 + v16, v12 | 7);
}

uint64_t sub_226AC95C8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A72A0, &unk_226D7C550) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_226D671FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 16);

  v10 = *(v0 + 32);

  v11 = sub_226D6B9BC();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v3, 1, v11))
  {
    (*(v12 + 8))(v0 + v3, v11);
  }

  v13 = (v3 + v4 + v7) & ~v7;
  v14 = v8 + v13;
  (*(v6 + 8))(v0 + v13, v5);

  return MEMORY[0x2821FE8E8](v0, v14 + 2, v2 | v7 | 7);
}

uint64_t sub_226AC9780()
{
  v19 = sub_226D6B8CC();
  v1 = *(v19 - 8);
  v2 = *(v1 + 80);
  v17 = (v2 + 16) & ~v2;
  v16 = (*(v1 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = sub_226D6B82C();
  v3 = *(v18 - 8);
  v4 = *(v3 + 80);
  v5 = (v16 + v4 + 8) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_226D6C3CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v9 + 8) & ~v9;
  v15 = *(v8 + 64);
  v11 = v2 | v4 | v9;
  (*(v1 + 8))(v0 + v17, v19);
  v12 = *(v0 + v16);

  (*(v3 + 8))(v0 + v5, v18);
  v13 = *(v0 + v6);

  (*(v8 + 8))(v0 + v10, v7);

  return MEMORY[0x2821FE8E8](v0, v10 + v15, v11 | 7);
}

uint64_t sub_226AC9A8C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226AC9ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_226AC9C00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226D6D4AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_226AC9D34(uint64_t a1)
{
  result = sub_226BA2164(&qword_27D7A7270, type metadata accessor for BankConnectInstitutionDataFetchTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226AC9D8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E98, &unk_226D73780);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_226AC9E04(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E98, &unk_226D73780);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_226AC9E90()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226AC9ED8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226AC9F18()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226AC9F60()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226AC9FA0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_226D6A58C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77B8, &qword_226D75588);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7798, &unk_226D75570);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_226ACA124(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_226D6A58C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77B8, &qword_226D75588);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7798, &unk_226D75570);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_226ACA2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D682FC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226ACA364(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226D682FC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226ACA41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6B9BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_226D6D52C();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_226ACA550(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226D6B9BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = sub_226D6D52C();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_226ACA678(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_226ACA734(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226ACA7E0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for ManagedCloudOrderEvent.TrackingStatus();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 28);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_226ACA91C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = type metadata accessor for ManagedCloudOrderEvent.TrackingStatus();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_226ACAA4C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226ACAA94()
{
  sub_226B11B98(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226ACAAE0()
{
  v1 = (type metadata accessor for PostInstallTaskEnvironment() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 25) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = v1[7];
  v7 = sub_226D6B5EC();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_226ACABD8()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);
  v2 = v0[53];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);
  v3 = v0[59];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226ACACE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6B9BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_226ACADE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_226D6B9BC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_226ACAEEC(uint64_t a1)
{
  result = sub_226BDB4C8(&qword_27D7A7290, type metadata accessor for BankConnectAccountDataFetchTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226ACAF44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_226ACAFBC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_226ACB054()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);
  v2 = v0[53];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);
  v3 = v0[59];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226ACB164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_226D6B5EC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_226ACB210(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_226D6B5EC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226ACB2B4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_226D6D52C();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_226ACB360(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_226D6D52C();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226ACB400(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6ED8, &qword_226D73848);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_226ACB478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6ED8, &qword_226D73848);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_226ACB530(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_226D6B5EC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_226ACB5DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_226D6B5EC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226ACB680()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);
  v2 = v0[53];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);
  v3 = v0[59];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226ACB790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6B9BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_226D6D4AC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 32);

  return v15(v16, a2, v14);
}

uint64_t sub_226ACB8DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_226D6B9BC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_226D6D4AC();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 32);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_226ACBA34(uint64_t a1)
{
  result = sub_226BF62E0(&qword_27D7A7280, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226ACBA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F50, &unk_226D77068);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226ACBB54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F50, &unk_226D77068);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226ACBC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F98, &qword_226D77100);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226ACBCE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F98, &qword_226D77100);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226ACBDA4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226ACBDE4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226ACBE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6CEAC();
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 20);

  return v7(v8, a2, v6);
}

uint64_t sub_226ACBEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_226D6CEAC();
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 20);

  return v8(v9, a2, a2, v7);
}

uint64_t sub_226ACBF24()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226ACBF64()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226ACBFA0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226ACBFD8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226ACC014()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226ACC064(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_226D6A58C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77B8, &qword_226D75588);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_226D6D4AC();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_226ACC1DC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_226D6A58C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77B8, &qword_226D75588);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_226D6D4AC();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_226ACC404(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_226D6D52C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_226D6D4AC();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_226ACC528(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_226D6D52C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_226D6D4AC();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_226ACC64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s8MetadataV9CloudItemV6ObjectVMa_1(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226ACC708(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s8MetadataV9CloudItemV6ObjectVMa_1(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226ACC820(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_226D6D4AC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_226ACC8CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_226D6D4AC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226ACC970(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_226D6B9BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = _s8MetadataV15CloudItemStatusOMa_1(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + a3[6];
    goto LABEL_3;
  }

  v15 = _s8MetadataV15LocalItemStatusOMa_1(0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[7];

  return v16(v17, a2, v15);
}

uint64_t sub_226ACCAF0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_226D6B9BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5]) = a2 + 1;
    return result;
  }

  v13 = _s8MetadataV15CloudItemStatusOMa_1(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = _s8MetadataV15LocalItemStatusOMa_1(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_226ACCC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D67F1C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_226D6D52C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_226ACCD60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_226D67F1C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_226D6D52C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_226ACCE5C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_226D67F1C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_226D6D52C();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_226D6B9BC();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_226D67E5C();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_226ACCFE4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_226D67F1C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_226D6D52C();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_226D6B9BC();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_226D67E5C();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_226ACD178(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_226ACD188()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226ACD1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_226D677FC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_226ACD2A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_226D677FC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226ACD344(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_226D6C69C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6678, &unk_226D71890);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6670, &qword_226D71888);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6680, &unk_226D74710);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[8];

  return v16(v17, a2, v15);
}

uint64_t sub_226ACD51C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_226D6C69C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6678, &unk_226D71890);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6670, &qword_226D71888);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6680, &unk_226D74710);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_226ACD724()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_226ACD774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6D1AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_226ACD8A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226D6D1AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_226ACD9DC(uint64_t a1)
{
  result = sub_226C645CC(&qword_27D7A86B8, type metadata accessor for OrderWebServiceFetchChangesTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226ACDA34()
{
  v1 = sub_226D682FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  Task = type metadata accessor for BankConnectNotificationEventsFetchTask();
  v7 = *(*(Task - 1) + 80);
  v17 = *(*(Task - 1) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v18 = (v4 + v5 + v7) & ~v7;
  v8 = v0 + v18;
  v9 = *(v0 + v18 + 8);

  v10 = Task[5];
  v11 = sub_226D6D4AC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  v13(v0 + v18 + v10, v11);
  v14 = Task[8];
  if (!(*(v12 + 48))(v0 + v18 + v14, 1, v11))
  {
    v13(v8 + v14, v11);
  }

  v15 = (v17 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13(v8 + Task[9], v11);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v15));

  return MEMORY[0x2821FE8E8](v0, v15 + 40, v3 | v7 | 7);
}

uint64_t sub_226ACDC3C()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);
  v2 = v0[53];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);
  v3 = v0[59];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226ACDD4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_226D6D4AC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_226ACDE7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_226D6D4AC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_226ACDFAC(uint64_t a1)
{
  result = sub_226C6BBAC(&qword_27D7A7238, type metadata accessor for BankConnectNotificationEventsFetchTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226ACE008(uint64_t a1)
{
  result = sub_226C77874(&qword_27D7A8740, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226ACE060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6D1AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_226ACE194(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226D6D1AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_226ACE2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6D1AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_226ACE3FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226D6D1AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_226ACE530(uint64_t a1)
{
  result = sub_226C7B948(&qword_27D7A87C0, type metadata accessor for OrderWebServiceFetchTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226ACE5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_226D6D6DC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_226ACE674(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_226D6D6DC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226ACE718()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4UUIDVSo11NSPredicateCIeghno_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_226ACE794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6D1AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_226ACE8C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226D6D1AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_226ACE9FC(uint64_t a1)
{
  result = sub_226C8FAB0(&qword_27D7A88C8, type metadata accessor for OrderWebServiceLogTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226ACEA54()
{
  v1 = (type metadata accessor for OrderWebServiceLogTask() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_226D6D1AC();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7] + 8);

  v7 = v1[9];
  v8 = sub_226D6D4AC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v0 + v3 + v7, v8);
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v10 + 8, v2 | 7);
}

uint64_t sub_226ACEBD4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226ACEC14()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226ACEC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6D1AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226ACED14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226D6D1AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226ACEDD0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226ACEE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_226D6D52C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_226D6CD7C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_226ACEF44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_226D6D52C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_226D6CD7C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_226ACF070()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = *(v0 + 6);
  v4 = (type metadata accessor for WebServicePerformPendingTasksActivity() - 8);
  v5 = *(*v4 + 80);
  v6 = (v5 + 64) & ~v5;
  v7 = *(v1 - 8);
  v8 = *(v7 + 80);
  v9 = (v6 + *(*v4 + 64) + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v5 | v8;
  v12 = *(v0 + 2);
  swift_unknownObjectRelease();
  v13 = &v0[v6];
  (*(*(v2 - 8) + 8))(v13, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(&v13[v4[11]]);
  v14 = v4[12];
  v15 = sub_226D6E07C();
  (*(*(v15 - 8) + 8))(&v13[v14], v15);
  (*(v7 + 8))(&v0[v9], v1);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_226ACF220()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226ACF258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_226D6D4AC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_226ACF2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_226D6D4AC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_226ACF34C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_226ACF390(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_226D6D3EC();
  [v2 setTransactionDate_];
}

uint64_t sub_226ACF434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TokenBucket.State();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_226ACF4E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TokenBucket.State();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226ACF584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6D1AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_226ACF6B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226D6D1AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_226ACF7EC(uint64_t a1)
{
  result = sub_226CAD0D4(&qword_27D7A8918, type metadata accessor for OrderWebServiceRegisterTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226ACF858()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226ACF890()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226ACF8DC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226ACF918()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226ACF950()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226ACF990()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226ACFA1C()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);
  v2 = v0[53];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);
  v3 = v0[59];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226ACFB2C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226ACFB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_226ACFC28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226ACFCD8(uint64_t a1)
{
  result = sub_226CC2874(&qword_27D7A8920, type metadata accessor for OrderWebServiceRequestTokenTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226ACFD30()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226ACFD80()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_226ACFDD4()
{
  v1 = sub_226D6B9BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226ACFE70()
{
  MEMORY[0x22AA8BFE0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226ACFEA8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226ACFEE8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_226ACFF40()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_226ACFF98()
{
  v1 = sub_226D6B49C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226AD0038()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);
  v2 = v0[53];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);
  v3 = v0[59];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226AD0148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6D1AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_226AD027C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226D6D1AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_226AD03B0(uint64_t a1)
{
  result = sub_226CF8CDC(&qword_27D7A8908, type metadata accessor for OrderWebServiceUnregisterTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226AD0408(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9198, &qword_226D7C678);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_226AD0480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9198, &qword_226D7C678);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_226AD05EC()
{
  v1 = sub_226D6B9BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226AD06C4()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);
  v2 = v0[53];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);
  v3 = v0[59];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226AD07D4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_226D6D52C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_226AD0904(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_226D6D52C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_226AD0A34()
{
  v1 = sub_226D682FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_226AD0B28()
{
  v1 = (type metadata accessor for ManagedConsentDeleter.Metadata(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = sub_226D682FC();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = *(v6 + v1[7]);

  v9 = *(v0 + v4 + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_226AD0C30()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226AD0C78()
{
  v1 = sub_226D671FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  v7 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_226AD0D24()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226AD0D5C()
{
  v1 = sub_226D6B9BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226AD0DF8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226AD0E38()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);
  v2 = v0[53];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);
  v3 = v0[59];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226AD0F48()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226AD0F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A92E8, &qword_226D7D138);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A71F0, &qword_226D74728);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_226AD10AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A92E8, &qword_226D7D138);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A71F0, &qword_226D74728);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_226AD11CC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_226D6C69C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6680, &unk_226D74710);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6678, &unk_226D71890);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6670, &qword_226D71888);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_226AD1378(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_226D6C69C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6680, &unk_226D74710);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6678, &unk_226D71890);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6670, &qword_226D71888);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_226AD1534()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);
  v2 = v0[53];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);
  v3 = v0[59];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226AD1648(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6A34C();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_226AD16B4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_226D6A34C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_226AD1734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6B9BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_226D6D4AC();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_226AD185C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226D6B9BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_226D6D4AC();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_226AD1984()
{
  v1 = type metadata accessor for BankConnectNotificationEventsRegisterTask();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = v1[6];
  v9 = sub_226D6BD9C();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v1[8];
  v11 = sub_226D6D4AC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v0 + v3 + v10, 1, v11);
  v14 = *(v12 + 8);
  if (!v13)
  {
    v14(v5 + v10, v11);
  }

  v14(v5 + v1[9], v11);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_226AD1B1C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_226D6BD9C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = sub_226D6D4AC();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_226AD1C94(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_226D6BD9C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = sub_226D6D4AC();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_226AD1E0C(uint64_t a1)
{
  result = sub_226D30C8C(&qword_27D7A7248, type metadata accessor for BankConnectNotificationEventsRegisterTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226AD1E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226AD1F20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226AD2038(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_226D6D4AC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_226AD2168(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_226D6D4AC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_226AD2298(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_226AD2354(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226AD2400(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_226D6D52C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_226AD2580(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_226D6D4AC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_226D6D52C();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_226AD2700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6B49C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = _s8MetadataV15CloudItemStatusOMa_2(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = _s8MetadataV15LocalItemStatusOMa_2(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_226AD2840(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_226D6B49C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = _s8MetadataV15CloudItemStatusOMa_2(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = _s8MetadataV15LocalItemStatusOMa_2(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_226AD29B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_226AD2A74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226AD2B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_226AD2BE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226AD2C90(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_226D6B49C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_226D6D1AC();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_226D6B03C();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 24);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_226AD2DE8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_226D6B49C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_226D6D1AC();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_226D6B03C();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 24) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_226AD2F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_226D6D4AC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_226AD2FE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_226D6D4AC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226AD308C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_226AD3110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_226AD3198()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);
  v2 = v0[53];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);
  v3 = v0[59];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226AD32A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226AD32E8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}